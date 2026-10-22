# Setting up the PyFR staging runs on M3: what was done and what went wrong

A record of getting from the STEP file to PyFR running on MASSIVE M3 (October 2026): the steps, the problems hit along the way, and how each was fixed. The commands and file layout are in the [README](README.md); this explains the reasons behind them.

## Where things are

| What | Where |
|---|---|
| Working folder on M3 | `/fs04/scratch2/ty79/JWeightman/PyFR_Staging` (project ty79 scratch; in qk75 until 21 Oct 2026) |
| Environment | `source env.sh` in that folder |
| Production mesh | `mesh/jet.pyfrm` (2.82 M elements, 2-way partitioned), plus `mesh/jet.msh` |
| Pilot mesh | `mesh/pilot.pyfrm` (`--scale 3`, 140 k elements) |
| Timing tests | `timing/` (job scripts, case lists, `results_<jobid>.txt`) |
| Mesh script, config template, driver | this folder, in Git |
| CAD | `Simulations/CAD/16mm_Cutdown_for_Mesh.stp` (local only; a copy is in `mesh/` on M3) |

**Storage rules:** use only project ty79 (for storage and `--account`), write only inside `PyFR_Staging`, and stop if ty79 scratch goes over 99%. `bin/check_quota.sh` checks this, and every script calls it before writing. It also reports the size of the whole `JWeightman` folder and prints a FLAG line at 400 GB, a warning only. ty79 scratch is 6 TB (33% used when the folder moved).

**The move from qk75 (21 Oct 2026).** The folder was first in qk75, whose 10 TB scratch swung between 75% and 99% as other users' files came and went. After the move:
- The conda env in `env/` has its install path baked into about 2,900 files, including the `python3.12` binary, shared libraries, `.pyc` files and every script's `#!` line. Since `qk75` and `ty79` are the same length, the old path was replaced byte for byte in place (`perl -pi -e 's#scratch2/qk75/JWeightman#scratch2/ty79/JWeightman#g'`), which is safe even in binaries. A move to a path of a different length would need the env rebuilt instead.
- The job scripts, `env.sh` and `check_quota.sh` were switched to ty79.
- Jobs queued at the time had to be resubmitted, because SLURM keeps a copy of each job script at submission and these contained the old paths.
- Moved files keep the `qk75` group, but the quota follows the Lustre project ID (`lfs project -d`), which is ty79's.

## 1. Access

Claude connects to M3 over SSH with your key, which the Windows ssh-agent holds, so no prompts are needed. `~/.ssh/config` has `m3` (login node) and `m3f101` (a desktop node, through the login node). Any node where you have a running job can be reached the same way.

- **Issue:** the first attempts failed with "Permission denied" and then "connection closed". The key has a passphrase and no agent was running, and the repeated failures seem to have triggered a temporary block.
- **Fix:** load the key into the Windows ssh-agent (`ssh-add`), wait for the block to clear, and test once with `ssh m3 hostname`. Use the Windows OpenSSH client, since that is the one that talks to the Windows agent.

## 2. Python environment

| Component | Choice | Why |
|---|---|---|
| Python | 3.12, conda env from the `miniforge3` module | System Python is 3.9; PyFR 3.1 needs ≥ 3.11 |
| MPI | HPC-X 2.50 (Open MPI 5, CUDA-aware, UCX) | The site's CUDA-aware MPI with InfiniBand support |
| CUDA | `cuda/12.8` module | Supplies NVRTC, which PyFR compiles its kernels with |
| mpi4py | built from source against HPC-X | A binary wheel would bring its own MPI |
| PyFR, gmsh | pip | PyFR 3.1, gmsh 4.15 (with OpenCASCADE, so the mesh builds on M3 too) |

Problems and fixes:

- **Files outside the allowed folder.** The first attempt put the env in `~/pyfr` and left `~/.conda/environments.txt` and a log in `/tmp`. Now installers run with `HOME` pointed at `PyFR_Staging/home`, and `env.sh` points `TMPDIR`, the XDG caches (including PyFR's compiled-kernel cache) and pip's cache into the folder. The two leftovers are still there; delete them when convenient.
- **The HPC-X module didn't put `mpicc` on the path.** Something already loaded in the default login environment interferes with it. `module purge` first fixes it.
- **MPI fell back to a slow transport.** PyFR initialises MPI with `MPI_THREAD_MULTIPLE`, HPC-X's default UCX refuses that, and Open MPI then quietly drops UCX ("PML UCX could not be selected"). An mpi4py setting can't override it, because PyFR asks for the thread level explicitly. Fix: `env.sh` puts HPC-X's multithreaded UCX build (`ucx/mt`) first on the library path. Verified with a 2-rank test.
- **Open MPI warns that its session directory is on Lustre**, because `TMPDIR` is in scratch. It's harmless for single-GPU runs, but it may slow multi-GPU runs on one node, since MPI's shared-memory files live there. The usual fix, node-local `/tmp`, is outside the allowed folder, so this is a decision for later.

## 3. Mesh

Built by `mesh/make_mesh.py` from the STEP file: the (x, r) section is meshed with mostly structured quads around the lip and revolved into hexes. See the README for the design.

- **Negative Jacobians.** The first GPU run stopped with "Negative mesh Jacobians detected": 28 hexes forming one ring at the outer body. The cause was a 0.027 D CAD fillet at the step on the outer body. Gmsh gives every curved CAD curve at least two segments, and one quad took both segments of that arc. Once its edges were curved for the second-order geometry, its two wall edges met at exactly 180°, so the Jacobian went to zero or below. The elements were valid at first order, and `pyfr import` doesn't check, so it only showed up when the run started.
  - **Tried and failed:** Gmsh's high-order optimiser.
  - **Fixed:** fillets shorter than 0.05 D become straight chords, and the script now checks every element's Jacobian and fails if any is bad.
  - **Then:** you rebuilt the CAD without the fillets. That also removed the step, so the outer body is now a 65° face straight into an r = 5.3125 D cylinder. The config's `rob` was updated to match.
- **Result:** pilot and production meshes both valid. The production build takes 5 min (8.5 GB of memory) and the import 1 min.
- **Partitioning for multi-GPU runs** (`pyfr partition add`):
  - PyFR's default partitioner, KaHIP, isn't installed.
  - The system METIS rejects PyFR's input, probably a 32/64-bit integer mismatch.
  - The SCOTCH module works, but only with its error library preloaded.
  - `bin/pyfr-partition <mesh> <n>` wraps this. The production mesh's 2-way split is balanced to 0.4%.

## 4. PyFR configuration

- **Missing sections.** `base.example.ini` lacked sections PyFR requires: solution and flux point types for hexes, prisms, and quad and triangle faces, the Riemann solver, and `[soln-ics]` for a start from rest. They're added now.
- **Expression syntax.** Expressions in the config may not use comparisons or `?:`, so the absorbing layer's on/off switch behind the nozzle body is built from `fmin`/`fmax`.
- **Smoke test.** The pilot mesh at p = 3 ran on the L4 GPU with a quiescent start and NPR 2.1 at the inlet. The solution stayed finite and the inlet started the flow as expected.

## 5. Choosing the run conditions (open)

- **Reynolds number.** The experiment is at Re_D ≈ 5 × 10⁵ (cold jet, 16 mm nozzle, NPR 2.1–2.25). PyFR 3.1 has no wall model, and resolving a turbulent nozzle boundary layer at that Re would need wall cells 20–40× finer. Suggested: Re_D ≈ 10⁵, with a laminar exit boundary layer of realistic thickness, plus a check at 5 × 10⁴. The staging NPR depends more on the exit boundary layer than on Re itself. With Sutherland viscosity referenced to the jet temperature at NPR 2.1 (as in `base.example.ini`), `mu = 1.208 / Re_D`; it stays fixed as NPR changes.
- **GPUs.** ty79 (like qk75) can use the `gpu` partition (A100 80 GB, L40S, A40) and `m3h` (H100). The `shortq` QOS (30 min, ≤ 10 GPUs) suits short tests. A100 and H100 are fast in double precision. L40S, A40 and L4 are about 10× slower in double but fast in single, which PyFR supports and which is probably enough here. The timing tests below decide this.

## 6. Timing tests

Each case runs a 5-step warm-up (so kernel compilation is excluded) and then two lengths, so startup cancels out of the time per step. The script also records peak GPU memory. All jobs used the `shortq` QOS (30 min, each case capped at 10 min).

| Mesh | GPUs | Precision | s per step | Peak memory per GPU | Notes |
|---|---|---|---|---|---|
| Pilot (140 k) | 1 × L4 | double / single | 0.79 / 0.29 | | smoke test |
| Pilot | 1 × L40S | double / single | 0.246 / 0.098 | | |
| Pilot | 2 × L40S | single | 0.047 | 2.5 GB | 2.1× speed-up |
| Pilot | 2 × A100 | single | 0.029 | 2.5 GB | |
| Production (2.8 M) | 1 × L40S | single | — | | out of memory (48 GB card) |
| Production | 2 × L40S | single | ≈ 1.3 (rough) | 35 GB | startup ≈ 8.5 min |
| Production | 2 × A100 | double | — | 78 GB | out of memory |
| Production | 2 × A100 | single | — | 68 GB | startup over 10 min, so the case timed out |

Problems and fixes:

- **Arrays too large.** The production runs first stopped with "Allocation too large for normal backend memory-model". Some of PyFR's arrays are over 4 GB, which the default memory model refuses. Fix: `[backend] memory-model = large`, now in `base.example.ini`.
- **Kernel compilation distorted the first timings.** PyFR compiles its GPU kernels on the first steps, which made the short runs look slow. Fix: the warm-up run.
- **Later cases were skipped.** `mpirun`, inside the script's loop over cases, read the rest of the case list from standard input, so the loop ended after the first case. Fix: `< /dev/null` on every `mpirun` and `pyfr` call.
- **Memory.** The production mesh needs about 70 GB in single precision and about 140 GB in double. So single precision needs at least 2 × L40S or 1 × A100 80 GB (with little to spare), and double needs at least 2 × H100 or 3–4 × A100.
- **Startup is slow** (8.5 to over 10 minutes for the production mesh), mostly reading the mesh and setting up. This doesn't matter for long runs but doesn't fit a 30-minute test job.

**Cost.** At about 1.3 s per step on 2 × L40S and dt between 5 × 10⁻⁵ and 10⁻⁴, one jet time unit (D/U_j) takes 3.5–7 hours, so a converged staging point would take weeks to months of GPU time. Options: p = 2 instead of 3, a coarser wall spacing and axial cell size, or more GPUs.

## 7. Pilot physics run (NPR 2.1)

Pilot mesh, p = 3, single precision on 1 × L40S, dt = 1.6 × 10⁻⁴, 12 hours (t = 0 to 64 D/c∞, about 11 min per time unit). The run was stable: dt up to at least 3.2 × 10⁻⁴ was stable in short tests.

- **Issue: an impulsive start over-pressurised the plenum.** The first attempt started from ambient everywhere, with the inlet at NPR 2.1. The plenum is nearly closed (94:1 contraction), and the inlet condition only lets flow in, so the starting transient pushed plenum pressure to 2.4–3.0 and heated it (c_pT₀ up to 3.08 against 2.5). Draining that would take hundreds of time units.
- **Fix: reservoir-state start.** The initial condition now holds the plenum and nozzle at the reservoir state (p and ρ at NPR 2.1, at rest) and ambient outside, with a smooth step a short way inside the exit (x ≈ −0.25 D). The step follows the nozzle wall, taken from the CAD profile. A check on the t = 0 solution confirms the plenum and nozzle are at 2.100, outside is at 1.000, and the step lies only inside the nozzle.
- **Issue: `fmax` in the initial condition.** PyFR evaluates `[soln-ics]` with NumPy, which knows `max` but not `fmax` (the GPU kernels use `fmax`). Fix: `max` in the initial condition.
- **Issue: probe files locked.** PyFR keeps the sampler's HDF5 files open, so they can't be read during a run, and a run killed at the time limit leaves them flagged as open. `h5clear -s -i` on a copy recovers them.

Results:

- **The plenum holds NPR 2.1.** After t ≈ 15 it stays at 2.10 ± 0.03, with c_pT₀ = 2.50, so the plenum neither drains nor heats.
- **The jet is established.** The exit Mach number is about 1.1 (M_j = 1.09), and 6–8 shock cells about 0.5 D long are clearly visible (Pack's estimate is 0.56 D). The shear layer rolls up from about x = 0.5 D and the potential core breaks down around x = 5–6 D. The starting vortex left the near field by t ≈ 25.
- **No clear screech tone yet.** The lip-probe m = 0 spectrum has a broad bump at St ≈ 0.7, and the near-field probe at (0, 3D) peaks at St 0.71, which is where A1 should be. But the peak is only a few times above the broadband level, and the record (t = 25–64) is only about 25 A1 cycles. The pilot mesh is also coarse beyond x ≈ 6 D. A longer run, restarted from t = 64, would settle whether the tone locks in.

Figures (z = 0 slices of Mach number, numerical schlieren and pressure, plus probe histories and spectra) are made by `pilot_run/plot_pilot.py` on M3.

## 8. Numerics tests on the pilot (October 2026, in progress)

These tests check the changes adopted from the reference setup (HLLC, an 8-stage LSRK scheme, Sutherland viscosity) and how large dt can be. Everything restarts from the pilot's t = 60 solution, in `ab_tests/` on M3 (`make_ab.py` writes the configs).

**Stability ladders.** Each rung is 1000 steps (HLLC, single precision, 1 × L40S), with a NaN check every 10 steps. The ladders have no probes, so rungs need not divide the 0.02 probe interval.

| Scheme | Cost per step | Last stable | First NaN | Limit vs the pilot's dt (1.6 × 10⁻⁴) |
|---|---|---|---|---|
| rk45 (5 stages) | 0.124 s | 7.5 × 10⁻³ | 8.5 × 10⁻³ | about 50× |
| lsrk-o3s8-r0p1 (8 stages) | 0.195 s | 1.0 × 10⁻² | 1.25 × 10⁻² | about 65× |

- **The pilot dt was very cautious.** Unstable rungs fail within 20–75 steps, so the stable ones are genuinely stable.
- **LSRK is not cheaper.** Its limit is only 1.2–1.7× rk45's, while each step costs 1.57× more. At their limits that comes to about 16.5 s per time unit for rk45 and 19.5 s for LSRK. Any gain from LSRK would have to come from accuracy.
- The production mesh's cells are smaller, so its limit must be measured there, but similar headroom over the 2 × 10⁻⁵ used so far is likely.

**A/B arms.** Each runs t = 60 → 110, with tavg windows over 70–90 and 90–110. The difference between an arm's two windows is its sampling noise, the yardstick for every comparison. `compare_ab.py` compares:
- centreline p̄;
- lip-line u′_rms;
- momentum thickness;
- lip-ring A1 frequency and power;
- shear and far-field p_rms;
- cost.

| Arm | Flux | Scheme | dt | Precision | Tests |
|---|---|---|---|---|---|
| C0 | Rusanov | rk45 | 1.6 × 10⁻⁴ | single | baseline (old defaults) |
| N1 | HLLC | rk45 | 1.6 × 10⁻⁴ | single | flux |
| N2 | HLLC | rk45 | 0.8 × 10⁻⁴ | single | dt convergence |
| N4 | HLLC | rk45 | 1.6 × 10⁻⁴ | double (A100) | precision |
| N5 | HLLC | rk45 | 5 × 10⁻³ (0.63× limit) | single | large dt |
| N3 | HLLC | LSRK | 6.67 × 10⁻³ (0.6× limit) | single | LSRK at large dt |

**First results (21 Oct 2026; N2 and N4 still running).** From `tools/compare_ab.py`; figure `pilot_figures/ab_compare_C0_N1_N5_N3.png`.

| | C0 Rusanov | N1 HLLC | N5 rk45, 5 × 10⁻³ | N3 LSRK, 6.67 × 10⁻³ | Noise (window to window) |
|---|---|---|---|---|---|
| Cost (min per time unit) | 11.6 | 11.6 | 1.3 | 1.3 | |
| Lip-line u′_rms rmsd vs C0 (/U_j) | — | 0.004 | 0.116 | 0.048 | 0.004–0.013 |
| Centreline p̄/p∞ rmsd vs C0 | — | 0.004 | 0.035 | 0.032 | 0.002–0.005 |
| Shear-ring p_rms at x = 1 / 2 / 4 | 0.048 / 0.030 / 0.022 | 0.044 / 0.030 / 0.020 | 0.011 / 0.003 / 0.008 | 0.017 / 0.032 / 0.033 | |
| Momentum thickness at x = 2 / 4 / 8 | 0.070 / 0.114 / 0.133 | 0.068 / 0.113 / 0.136 | 0.049 / 0.066 / 0.103 | 0.054 / 0.116 / 0.144 | up to 0.028 |

- **HLLC vs Rusanov:** no difference beyond the noise, at the same cost. Keep HLLC.
- **Large dt is stable but wrong.** At about 0.6× the stability limit:
  - **N5 (rk45):** the shear layer stays almost laminar to x ≈ 3, with lip u′_rms about 0.01 against 0.16. The mean shock cells nearly vanish.
  - **N3 (LSRK):** transition is delayed to x ≈ 2–3, the shock cells are much weaker, and the peak in the A1 band moves to St 0.56.

  A steady shock-cell pattern shouldn't depend on dt, so the entropy filter acting hard at these steps is the likely cause. **So dt is set by accuracy, not stability**, and the LSRK scheme gives no saving.
- **No clear A1 tone in any arm.** The lip-ring m = 0 spectra are broadband, with at most a weak bump near St 0.72, which matches section 7.
- **Next tests.** HLLC rk45 arms at dt = 4 × 10⁻⁴, 1 × 10⁻³ and 2 × 10⁻³ (N6–N8; 2.5×, 6.25× and 12.5× C0) find the largest accurate step. N2 (half dt) checks that C0's step is itself converged.

**Full results (22 Oct 2026).** All arms use HLLC except C0. Figure: `pilot_figures/ab_compare_dt.png`.

| Arm | dt | Cost (min per unit) | p̄ rmsd vs C0 | u′_rms rmsd vs C0 | θ at x = 2 / 4 / 8 | Shear p_rms at x = 1 / 5 |
|---|---|---|---|---|---|---|
| C0 (Rusanov) | 1.6 × 10⁻⁴ | 11.6 | — | — | 0.070 / 0.114 / 0.133 | 0.048 / 0.018 |
| N1 | 1.6 × 10⁻⁴ | 11.6 | 0.004 | 0.004 | 0.068 / 0.113 / 0.136 | 0.044 / 0.019 |
| N2 | 0.8 × 10⁻⁴ | 22.3 | 0.005 | 0.006 | 0.068 / 0.112 / 0.131 | 0.043 / 0.017 |
| N4 (double) | 1.6 × 10⁻⁴ | 21.1 (A100) | 0.004 | 0.004 | 0.068 / 0.114 / 0.134 | 0.043 / 0.020 |
| N6 | 4 × 10⁻⁴ | 5.2 | 0.005 | 0.006 | 0.068 / 0.113 / 0.135 | 0.045 / 0.018 |
| N7 | 1 × 10⁻³ | 2.6 | 0.007 | 0.005 | 0.067 / 0.110 / 0.132 | 0.041 / 0.016 |
| N8 | 2 × 10⁻³ | 1.8 | 0.034 | 0.040 | 0.057 / 0.105 / 0.133 | 0.018 / 0.019 |

The window-to-window noise is 0.002–0.009 for p̄, 0.004–0.008 for u′_rms and up to 0.012 for θ.

- **dt is converged at 1.6 × 10⁻⁴** (N2 against N1).
- **Single precision is enough** (N4 against N1).
- **dt can rise to 4 × 10⁻⁴ with no visible change** (N6, 2.2× cheaper). At 1 × 10⁻³ (N7, 4.5× cheaper) the change is marginal: shear-layer p_rms is about 5–10% low and p̄ just above the noise. At 2 × 10⁻³ (N8) the results break: transition moves to x ≈ 1 and the shock cells shift.
- **Production dt = 2 × 10⁻⁴** (chosen 22 Oct 2026; set in `base.example.ini`, with every sampler's and the tavg's `nsteps` at 100). That is the pilot's safe range (4 × 10⁻⁴ to 1 × 10⁻³) scaled by its 3× larger cells, and about 1/12 of the production stability limit. It is 10× larger than the 2 × 10⁻⁵ used in the first check.
- **The A1 peak may be emerging.** The lip-ring m = 0 spectra of the better-resolved arms (N2, N6) show a clearer peak at St ≈ 0.72 than the first pilot record did. The spectral resolution is only ΔSt ≈ 0.05, so 0.665 and 0.716 are adjacent bins.

**Production timings (600 steps, every production output on):** 4 × A100 over two nodes runs at 0.31 s/step, against 1.08 for 2 × L40S. At dt = 2 × 10⁻⁴ that is 26 min per time unit on 4 × A100 and 90 min on 2 × L40S. The full table is below.

**Mesh-scale test (started 22 Oct 2026).** This decides which mesh scale the staging runs use.

| Mesh | Elements | Accurate dt |
|---|---|---|
| Pilot, `--scale 3` | 140 k | 4 × 10⁻⁴ to 1 × 10⁻³ |
| Scale 2 (`mesh/scale2.pyfrm`) | 398 k | — |
| Production, scale 1 | 2.82 M | 2 × 10⁻⁴ (chosen) |

- **Arm N9:** HLLC rk45 on the scale-2 mesh at dt = 2.5 × 10⁻⁴ (the pilot's safe 4 × 10⁻⁴ scaled by 2/3), 1 × L40S.
- **Start:** the pilot's t = 60 field, resampled with IDW (`ab_tests/scale2_ic/`).
- **Windows:** the run goes from t = 60 to 120, averaged over 80–100 and 100–120. The extra 10 units over the pilot arms let the finer turbulence develop after the resample.
- **Job and comparison:** it runs with `job_arm_mesh.sh` (any mesh and start), and `tools/compare_ab.py` reads each arm's own mesh (`mesh.txt`).
- **The test:** N9 is compared with N1 and N6 (pilot). If the two scales agree within the noise, the coarser meshes are close to converged.

**Production timings (600 steps, every output on):**

| GPUs | s/step | Per time unit at dt = 2 × 10⁻⁴ |
|---|---|---|
| 2 × L40S | 1.08 | 90 min |
| 4 × L40S (one node) | 0.55 | 46 min |
| 4 × A100 (two nodes) | 0.31 | 26 min |
| 2 × A100 (one node) | queued (job 61366937) | |

**H100 dropped (22 Oct 2026).** The 4 × H100 timing was cancelled after waiting more than 30 h in the queue. H100 runs only under the m3h QOS, which caps jobs at 2 days (normal allows 7), so a multi-day segment would queue again every 2 days. Queue waits seen for the 4-GPU timings were 14 h (4 × A100) and 18 h (4 × L40S), against about 1 h for 2-GPU jobs. Production will use 4 × A100, with 4 × L40S or 2 × A100 as fallbacks.

**Production stability limit (rk45, 2 × L40S).** Stable at 2.5 × 10⁻³, NaN at 3.33 × 10⁻³. That is about a third of the pilot's limit, as its 3× smaller cells suggest. The usable production step will be set by accuracy, as on the pilot. As a first guess, scale the pilot's accurate step by 1/3.

**Production-mesh tests** (in `prod_tests/` on M3, from the resampled field):
- **Partitioning.** A 4-way partitioning was added to `mesh/jet.pyfrm`. PyFR's METIS defaults fail on M3 with `METISErrorInput`: this METIS build rejects an explicit `ufactor`, and `minconn` with recursive bisection. What works is `pyfr partition add -p metis -e hex:3 -e pri:2 --popt ufactor:-1 --popt minconn:false`. KaHIP and SCOTCH are not installed. METIS needs explicit element weights for the hex/prism mix (`-e balanced` is not supported).
- **Stability ladder (rk45, 500 steps, 2 × L40S).** Round 1 was stable at every rung (dt = 1, 2, 4, 8 and 16 × 10⁻⁴), so the 2 × 10⁻⁵ of the first check was very cautious. Round 2 (2.5 × 10⁻³ to 1 × 10⁻²) is queued.
- **Speed.** 2 × L40S runs at 1.08 s/step.
- **Timings.** See the table above. The 4 × H100 timing was cancelled, and a 2 × A100 timing is queued.

## 9. Segment output: mean-flow planes (21 Oct 2026)

Decision: Re_D = 1 × 10⁵ (`mu = 1.208e-5`) with a laminar nozzle boundary layer. Each continuation segment keeps all probe data, plus one time average on five planes:
- xy at z = 0, for x < 25 and |y| < 10;
- yz at x = 0 (the exit), 1, 2.5 and 5, for r < 10.

Each average holds ρ, u, v, w, p, T and the second moments.

- **Why slabs.** PyFR's `tavg` can only store whole elements in a region. It takes an element if its centroid or any of its nodes lies in the region. So each plane is a thin slab, just thick enough to reach the nearest node of every element the plane cuts.
- **Radial bands.** A single thickness per cross-plane would have to suit the large outer cells, which needs ±0.1 D, and that sweeps up many thin layers near the jet. The cross-planes are therefore split into radial bands (r = 0–0.75, 0.75–1.5, 1.5–3, 3–6, 6–10), each with its own thickness.
- **The tool.** `tools/measure_planes.py MESH` fits the thicknesses for a mesh, checks that every cut element is caught, and prints the region and its size.
- **Size per average:**

| Mesh | Elements stored | Size per average | Full near-field tavg |
|---|---|---|---|
| Production | 201 k (7.1%) | 670 MB | 8 GB |
| Pilot | 27 k (19.7%) | 91 MB | 0.4 GB |

- **The xy slab is the largest part (479 MB on production).** Element faces lie on z = 0, so the nodes of the layers on both sides sit on the plane, and both layers are stored.
- **Checks:**
  - PyFR's own region code selects exactly the elements the tool counts.
  - A pilot run with a plane region wrote a 137 MB average, as predicted.
- Interpolating these slabs onto plane grids for analysis is still to be written.

## Still to decide or do

1. ~~Re_D and the exit boundary layer~~: decided on 21 Oct 2026, Re_D = 1 × 10⁵ with a laminar boundary layer (section 9).
2. GPU type, number of GPUs and precision. Single precision on 2 × L40S works, but the production mesh is expensive at about 1.3 s per step (section 6). The 1 × A100 production timing is still to come. It will need a longer job than `shortq` allows, because startup alone takes over 10 minutes.
3. Whether to make the production mesh cheaper (p = 2, coarser cells) before committing GPU time.
4. Whether to extend the pilot to check that A1 screech locks in.
5. Whether MPI's session directory can go on node-local `/tmp` for multi-GPU runs.
6. Converge A1 at NPR 2.10 and A2 at NPR 2.25. Then:
   - re-tune the driver's switching thresholds;
   - set `continuation.toml` (account ty79, partition, QOS, gres);
   - launch the up and down branches.
7. Delete the two leftovers from the first install: `~/.conda/environments.txt`, and `/tmp/jweightman-conda.log` on m3f101.
