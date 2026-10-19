# Setting up the PyFR staging runs on M3: what was done and what went wrong

A record of getting from the STEP file to PyFR running on MASSIVE M3 (October 2026): the steps, the problems hit along the way, and how each was fixed. The commands and file layout are in the [README](README.md); this explains the reasons behind them.

## Where things are

| What | Where |
|---|---|
| Working folder on M3 | `/fs04/scratch2/qk75/JWeightman/PyFR_Staging` (project qk75 scratch) |
| Environment | `source env.sh` in that folder |
| Production mesh | `mesh/jet.pyfrm` (2.82 M elements, 2-way partitioned), plus `mesh/jet.msh` |
| Pilot mesh | `mesh/pilot.pyfrm` (`--scale 3`, 140 k elements) |
| Timing tests | `timing/` (job scripts, case lists, `results_<jobid>.txt`) |
| Mesh script, config template, driver | this folder, in Git |
| CAD | `Simulations/CAD/16mm_Cutdown_for_Mesh.stp` (local only; a copy is in `mesh/` on M3) |

**Storage rules:** use only project qk75, write only inside `PyFR_Staging`, and stop if qk75 scratch goes over 99%. `bin/check_quota.sh` checks this, and every script calls it before writing. qk75 scratch was at 92–93% of 10 TB, rising during the day from other users' files.

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

- **Reynolds number.** The experiment is at Re_D ≈ 5 × 10⁵ (cold jet, 16 mm nozzle, NPR 2.1–2.25). PyFR 3.1 has no wall model, and resolving a turbulent nozzle boundary layer at that Re would need wall cells 20–40× finer. Suggested: Re_D ≈ 10⁵, with a laminar exit boundary layer of realistic thickness, plus a check at 5 × 10⁴. The staging NPR depends more on the exit boundary layer than on Re itself. With constant viscosity, `mu = 1.215 / Re_D` at NPR 2.1; it stays fixed as NPR changes.
- **GPUs.** qk75 can use the `gpu` partition (A100 80 GB, L40S, A40) and `m3h` (H100). The `shortq` QOS (30 min, ≤ 10 GPUs) suits short tests. A100 and H100 are fast in double precision. L40S, A40 and L4 are about 10× slower in double but fast in single, which PyFR supports and which is probably enough here. The timing tests below decide this.

## 6. Timing tests (submitted, results pending)

Three `shortq` jobs:
- 1 × A100: pilot and production, double and single;
- 2 × A100: production, double and single;
- 1 × L40S: pilot in single and double, production in single.

Each case runs at two lengths, so startup cancels out of the time per step. The script also records peak GPU memory. The only figure so far is the L4: the pilot takes 0.79 s per step in double and 0.29 s in single, with about 30 s of startup.

*Results to be added here.*

## Still to decide or do

1. Re_D and the exit boundary-layer thickness. That sets `mu`, and possibly the wall cell sizes.
2. GPU type, number of GPUs and precision, from the timing results.
3. Whether MPI's session directory can go on node-local `/tmp` for multi-GPU runs.
4. Converge A1 at NPR 2.10 and A2 at NPR 2.25. Then:
   - re-tune the driver's switching thresholds;
   - set `continuation.toml` (account qk75, partition, QOS, gres);
   - launch the up and down branches.
5. Delete the two leftovers from the first install: `~/.conda/environments.txt`, and `/tmp/jweightman-conda.log` on m3f101.
