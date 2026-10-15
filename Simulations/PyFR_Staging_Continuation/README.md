# PyFR A1/A2 staging continuation

A driver that finds where the A1 and A2 screech modes stop existing in a PyFR LES of an axisymmetric converging-nozzle jet. It runs on MASSIVE M3 through SLURM.

## Why it works this way

Near staging, a jet stays in one mode for 1–4 s at a time (Mancinelli et al. 2019), which is about 10⁴–10⁵ D/U_j. An LES can't wait for a spontaneous switch, and it can't measure the fraction of time spent in each mode. What it *can* do is step NPR away from a converged state and see, within a modest number of cycles, whether that state survives. Repeating this traces each edge of the hysteresis loop:

- **up branch:** start in A1 and raise NPR until A1 can't survive;
- **down branch:** start in A2 and lower NPR until A2 can't survive.

The experimental staging point (50% of the time in each mode) should fall between the two edges. The forced switches produced along the way are the events to study with SPOD → HPOD and BMD.

## What the driver does

For each branch:

1. **march:** step NPR by `step` from the last state that kept its mode (the *anchor*) until a run switches;
2. **bisect:** halve the gap between the anchor and the nearest NPR that switched, until it is below `min_step`;
3. **fit:** if fewer than `fit_points` runs have switched, run extra NPRs beyond the bracket from the anchor, all at the same time. Then fit the switching rate 1/t_switch against NPR and extrapolate it to zero.

Each run at one NPR (a *visit*) starts from the anchor solution with the inlet total pressure changed. It ignores `transient` D/U_j, then runs `segment_cycles` cycles. The mode is tracked through r(t) = ln(A_in/A_out). A_out is the amplitude of the mode the run started in and A_in that of the other mode. Each is taken from the ring-averaged (m = 0) lip pressure, band-passed around the tone, with the amplitude from the analytic signal. A visit is then:

- **switched** if A_in/A_out > `switch_ratio` near the end of the record;
- **trending** if r is still rising, both in slope (`trend_threshold`) and overall (by `rise_ratio`). It is then extended by `extend_cycles`, up to `max_extensions` times, because close to the limit the switch slows down;
- **persisted** otherwise. Its final solution becomes the new anchor.

**The saddle-node fit.** For a saddle-node, the time to pass the bottleneck scales as (NPR − NPR_c)^(-1/2). So (1/t_switch)² is linear in NPR, and its zero gives NPR_c. This is an assumption about the bifurcation, not a result. Compare the fit with the bracket, and use `fit_model = "linear"` to see how much the choice matters. The fixed delay from the NPR step isn't removed, which biases the fit slightly towards the anchor side: by about 0.0002 in NPR in the synthetic test.

Every PyFR job calls the driver when it finishes. The driver analyses the segment and submits the next job, so a branch runs unattended. Concurrent fit jobs share the branch state through a lock directory.

## Layout

| Path | Contents |
|---|---|
| `continuation/analysis.py` | sampler HDF5 reader, band envelopes, classification, limit fit |
| `continuation/branch.py` | state machine (march, bisect, fit), state file, launching |
| `continuation/iniedit.py` | writes each segment's PyFR config from the base config |
| `continuation/slurm.py` | job script and `sbatch` submission |
| `continuation/__main__.py` | command line |
| `continuation.example.toml` | settings, with every option explained |
| `base.example.ini` | the parts of the PyFR config the driver depends on |
| `tests/` | synthetic tests, with a fake hysteretic jet standing in for PyFR |

## Use on M3

The PyFR venv already has numpy and h5py, and PyFR needs Python ≥ 3.11, which provides `tomllib`. So the driver needs nothing extra.

1. **Prepare the case directory** with `mesh.pyfrm`, `base.ini` (your production config; see `base.example.ini`) and `continuation.toml` (copied from the example). The base config must have:
   - a fixed `dt` with `controller = none`. The sampler records every `nsteps`, so an adaptive dt would give uneven sampling;
   - a `sub-in-ftpttang` inlet. The driver sets `pt = NPR × p_ambient`;
   - a sampler with a ring (or rings) of probes near the lip, sampling at least about 10 times per tone cycle;
   - a writer section. The driver sets it to write one solution at the end of each segment.
2. **Converge one A1 state and one A2 state** with ordinary PyFR runs, for example at NPR 2.10 and 2.25. Check each with the `analyse` command below, and set the `[modes]` St bands from their spectra.
3. **Start each branch:**
   ```bash
   export PYTHONPATH=/path/to/PyFR_Staging_Continuation:$PYTHONPATH
   python -m continuation --settings continuation.toml init --branch up --mode A1 --npr 2.10 --solution a1/soln-500.0000.pyfrs --t0 500.0
   python -m continuation --settings continuation.toml init --branch down --mode A2 --npr 2.25 --solution a2/soln-500.0000.pyfrs --t0 500.0
   python -m continuation --settings continuation.toml advance --branch up
   python -m continuation --settings continuation.toml advance --branch down
   ```
   The two branches are independent, so they run at the same time on separate GPUs.
4. **Check progress:**
   ```bash
   python -m continuation --settings continuation.toml status --branch up
   ```
   `runs/<branch>/state.json` holds everything, including a time-stamped log. When a branch finishes, `estimate` holds the bracket and the fit.

To check the setup without submitting anything, set `slurm.submit = false`. `advance` then writes `job.sh` and `segment.ini` for the next segment and stops there.

To analyse any sampler output directly, for example to set the bands or to inspect a forced switch:
```bash
python -m continuation --settings continuation.toml analyse runs/up/s004_npr2.1800/samples.h5 --npr 2.18 --mode A1 --csv s004.csv
```
The CSV holds t (D/U_j from the NPR change), A1, A2 and the smoothed ln(A_in/A_out), ready for MATLAB.

## Tests

```bash
python -m unittest discover -s tests -v
```
These cover:
- a synthetic ring of probes that persists, switches, or switches slowly;
- joining segments that overlap by one sample;
- the saddle-node fit;
- a full up branch against a fake jet with NPR_c = 2.163. The branch brackets the limit to [2.160, 2.165], and the fit gives 2.1628.

## Not yet checked against a real PyFR run

- **Sampler HDF5 layout.** The reader expects compound records `t` + `samples (npts, nvars)` with a `fields` attribute. This comes from the PyFR source (`develop` branch, October 2026), not from a run.
- **End-of-segment solution.** The driver relies on the writer, with `dt-out` equal to the segment length, writing a solution at `tend` after a restart. Check this on the first segment.
- **Inflow angles.** Check the `theta`/`phi` convention of `sub-in-ftpttang` against the jet axis of the mesh.
- **Chained submission.** The chain needs `sbatch` to work from inside a job on M3. If it doesn't, set `submit = false` and run `advance` by hand, or from a cron job.
- **Classification thresholds.** `switch_ratio`, `trend_threshold`, `rise_ratio` and `window_cycles` were tuned on synthetic signals. Re-tune them on the converged A1 and A2 runs: the noise in r for a run that stays in one mode sets how sensitive these can be.
