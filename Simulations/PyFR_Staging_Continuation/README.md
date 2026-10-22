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
| `base.example.ini` | the parts of the PyFR config the driver depends on, the boundaries and the absorbing layer |
| `mesh/make_mesh.py` | Gmsh mesh of the nozzle and jet from the STEP file |
| `tools/pyfr_lsrk.py`, `tools/lsrk_coeffs.json` | runs PyFR with extra low-storage Runge–Kutta schemes (`lsrk-o3s8-r0p1`), in place of the `pyfr` command |
| `tests/` | synthetic tests, with a fake hysteretic jet standing in for PyFR |
| `M3_SETUP.md` | record of the M3 setup: environment, mesh and config problems and their fixes, open decisions |

## Mesh

`mesh/make_mesh.py` builds the mesh from the nozzle's STEP file (`Simulations/CAD/16mm_Cutdown_for_Mesh.stp`: the 16 mm converging nozzle, a 94:1 contraction from a 155 mm plenum, 1 mm flat lip, a 30° outer cone, a 65° face and an outer cylinder of radius 5.3125 D back to 4.7 D upstream of the exit; STEP files are git-ignored, so it is local only). It slices the CAD solid through its axis, so the walls follow the CAD exactly. The one exception: any fillet shorter than 0.05 D becomes a straight chord. A fillet that small gets cells much smaller than their neighbours, and a quad wrapping two segments of one arc folds over once its edges are curved. The current CAD has no fillets; an earlier version had two small ones on the outer body, which caused exactly this. The script checks every element's Jacobian at the end and fails if any is ≤ 0. `pyfr import` doesn't check this, so without the check you would only find out when PyFR stops at the start of a run.

- **Units and axes:** D = 1, jet along +x, exit plane at x = 0. The plenum inlet is at x = −4.6875.
- **Domain:** to x = 40 and r = 15. The plane behind the nozzle body at x = −4.6875 is far field.
- **Topology:** the (x, r) section is meshed with quads and revolved through 360° (96 elements), so nearly all elements are hexahedra. A butterfly block fills r < 0.3 along the axis, so there are no degenerate elements there. Round the lip, the section is three structured blocks: inside the nozzle over the last 1 D (wall to r = 0.3), and either side of the lip line r = 0.5 out to x = 6. There, cells follow the wall and the shear layer, the lip face has 10 cells across, and the streamwise spacing grows geometrically from 0.004 D at the exit. The plenum and everything else are unstructured quads; a few leftover triangles become prisms.
- **Sizes** (set in `P` at the top of the script): 0.012 D at the lip; 0.015 D in the shear layer at the exit, growing downstream; 0.03 D in the shock-cell region; 0.2 D in the acoustic near field (r < 7, x < 20, including the whole contraction); coarse in the absorbing layer. The first cell off the inner wall is 0.002 D at the exit (0.01 D at x = −1).
- **Boundaries:** `inlet`, `wall`, `farfield` and `outlet`, matching `base.example.ini`, which also has the absorbing layer (`[solver-plugin-source]`).

```bash
pip install gmsh
python mesh/make_mesh.py ../CAD/16mm_Cutdown_for_Mesh.stp jet.msh            # 2.8M elements, ~6 min, 2.2 GB
python mesh/make_mesh.py ../CAD/16mm_Cutdown_for_Mesh.stp pilot.msh --scale 3  # 140k elements, seconds
pyfr import jet.msh jet.pyfrm
```

`--scale` multiplies every size, and divides the azimuthal count, so a pilot run can test the setup cheaply. `--order` sets the geometric order of the curved elements (default 2). PyFR runs only on Linux and macOS (it needs `fcntl`), so run `pyfr import` on M3.

**Things to decide before production:**
- **Reynolds number.** The wall-normal layers assume a thin boundary layer at the exit. Set `bl_first`, `bl_first_up` and `h_x0` from the chosen Re_D, and check the inlet boundary layer in a pilot run.
- **Cost.** At full size the mesh has 2.8 M elements (all hexes but ~200 prisms): 180 M solution points per variable at p = 3, 352 M at p = 4. Most of the cost is the fine streamwise spacing at the exit (`h_x0`), which the blocks carry across the jet and the axis block. The first wall layer (0.002 D) sets the explicit time step. Measure time per D/U_j in a pilot before sizing the GPU request; `n_theta`, `h_x0`, `x_block`, `h_near` and the shear-layer sizes are the main knobs.
- **Absorbing layer.** Moving `xsp` and `rsp` in the config should leave the A1 tone unchanged.
- **Inlet reflections.** The total-pressure inlet reflects sound travelling up the nozzle. The contraction weakens it, but it is worth checking in the plenum data, since that is a region of interest.

## Use on M3

The PyFR venv already has numpy and h5py, and PyFR needs Python ≥ 3.11, which provides `tomllib`. So the driver needs nothing extra.

**Environment** (set up in October 2026, in `/fs04/scratch2/ty79/JWeightman/PyFR_Staging`, moved from qk75 on 21 Oct 2026; `source env.sh` there):
- Python 3.12 from the `miniforge3` module, holding PyFR 3.1, gmsh and mpi4py. mpi4py is built from source against HPC-X's MPI: `MPICC=$(which mpicc) pip install --no-binary mpi4py mpi4py`.
- Modules: `module purge`, then `module load hpcx/2.50-redhat9-cuda12 cuda/12.8`. Without the purge, the HPC-X module doesn't put `mpicc` on the path.
- PyFR initialises MPI with `MPI_THREAD_MULTIPLE`. The default UCX in HPC-X refuses that, and Open MPI then falls back to a slower transport ("PML UCX could not be selected"). Putting HPC-X's multithreaded UCX (`ucx/mt/lib`) first on `LD_LIBRARY_PATH` fixes it.
- `env.sh` also points `TMPDIR`, `XDG_CACHE_HOME` (where PyFR caches its compiled kernels) and the pip cache into that folder.
- The pilot mesh ran 400 RK45 steps at p = 3 on a desktop-node L4 GPU in 0.79 s per step. The L4 is slow in double precision, so this checks only that things work, not the speed. Measure time per step on an A100 or H100 before sizing jobs.

1. **Prepare the case directory** with `mesh.pyfrm`, `base.ini` (your production config; see `base.example.ini`) and `continuation.toml` (copied from the example). The base config must have:
   - a fixed `dt` with `controller = none`. The sampler records every `nsteps`, so an adaptive dt would give uneven sampling;
   - a `sub-in-ftpttang` inlet. The driver sets `pt = NPR × p_ambient`;
   - a sampler with a ring (or rings) of probes near the lip, sampling at least about 10 times per tone cycle;
   - a writer section. The driver sets it to write one solution at the end of each segment.

   **What each segment writes**, all in its folder `runs/<branch>/<segment>/`:
   - one solution at the end;
   - every probe set (`samples.h5`, the lip ring the driver analyses, plus `samples_shear.h5`, `samples_farfield.h5`, `samples_nozzle.h5` and `samples_axis.h5` in `base.example.ini`). The driver rewrites each plugin's `file` into the segment folder, so the sets need distinct file names;
   - one time average (`tavg-<t>.pyfrs`): the mean flow and second moments from the end of the transient (or the start of an extension) to the end of the segment. It covers the five planes in `base.example.ini`: xy at z = 0, and yz at x = 0, 1, 2.5 and 5. The 13 fields are ρ, u, v, w, p, T and the second moments. PyFR stores whole elements, so the region is a thin slab round each plane, sized for the production mesh by `tools/measure_planes.py`. On the production mesh it is about 670 MB (the full near field would be 8 GB);
   - `residual.csv`.

   Set `case.sample_dt` in the settings to have the driver set every sampler's and the time average's `nsteps` to `sample_dt/dt`; it must be a whole number of steps.
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
- a synthetic ring of probes, in PyFR 3.1's sampler layout (checked against the pilot's files), that persists, switches, or switches slowly;
- joining segments that overlap by one sample;
- the saddle-node fit;
- the segment configs: every plugin's output goes to the segment folder, the time average starts after the transient, and `sample_dt` sets `nsteps` (or is refused when it isn't a whole number of steps);
- a full up branch against a fake jet with NPR_c = 2.163. The branch brackets the limit to [2.160, 2.165], and the fit gives 2.1628.

## Not yet checked against a real PyFR run

- **End-of-segment solution.** The driver relies on the writer, with `dt-out` equal to the segment length, writing a solution at `tend` after a restart. Check this on the first segment.
- **Chained submission.** The chain needs `sbatch` to work from inside a job on M3. If it doesn't, set `submit = false` and run `advance` by hand, or from a cron job.
- **Classification thresholds.** `switch_ratio`, `trend_threshold`, `rise_ratio` and `window_cycles` were tuned on synthetic signals. Re-tune them on the converged A1 and A2 runs: the noise in r for a run that stays in one mode sets how sensitive these can be.
