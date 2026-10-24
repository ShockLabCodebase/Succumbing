# Schlieren_Processing_Scripts: patched copy

A complete, runnable copy of the group's `Schlieren_Processing_Scripts` with the bugs found in the 2026-10-22 and 2026-10-23 reviews fixed. It was built from the local snapshot `Codebase/Codebase_Pre_AI/Schlieren_Processing_Scripts` at commit `024a470`.

- **To use it:** run the scripts from this folder as you would from the repo. `addpath(genpath("Functions"))` picks up everything they need; `Functions/` holds all of it, including `export_fig`.
- **To merge it into the repo:** copy the files over the repo's, file by file. Every changed file has a `PATCH 2026-10-2x` comment in its header or next to the change saying what was changed and why.
- **Reviews:**
  - [REVIEW_2026-10-22.md](../../../Library_of_Shock_Lab/Codebase_Notes/REVIEW_2026-10-22.md) covers the first round: test runs, numerical checks and workflow ideas.
  - Its §7 covers this round: the remaining fixes, the new raw-data cases, the 400k M3 test, and ideas for the aerospike x = 0 problem and the twin-jet half workflow.

## What is in here

| Kind | Files |
|---|---|
| Changed top-level scripts | All 24 top-level scripts. |
| Changed functions | `align_fields`, `CCA_POD_func`, `correct_phase_between_halves`, `get_background`, `get_filename_params`, `get_ideal_jet_velocity_diameter`, `get_parent_path`, `get_specs`, `get_symmetry`, `get_wavenumber`, `hilbert_POD_func`, `Read_mraw`, `Read_slow`, `savgol_diff`, `separate_flow_direction_function`, `simple_POD_func`, `SPOD_imposed_projection_func`, `undo_symmetry*`, `SPOD/spod`, `SPOD/spod_adapt`, `SPOD/tcoeffs`, `SPOD/invspod`, `BMD/bmd_modified`, `BMD/bmd_modified_Symmetry`, `Misc/load_mean_field_wavenumber` |
| Changed `Functions/Misc` scripts | `Generate_Twin_Half_Slices_POD_HPOD_Fields`, `Half_Slices_Hilbert_POD_Analysis` (rewritten), `Half_Slices_SPOD_Imposed_POD_Analysis`, `Schlieren_Hilbert_POD_Plots_Compare_Modes`, `Centreline_Comparison`, `Schlieren_Adjust_xy_Old_mat` |
| New functions | `find_nozzle_exit` (x = 0 without a background), `hpod_from_spod_tcoeffs` (HPOD of an SPOD-isolated band), `match_folders` (folder wildcards) |
| Unchanged copies | `CMRmap`, `pogmap`, `histweighted`, `export_fig/`, `BMD/LICENSE.txt` and `README.md` |
| Tests | `tests/` (below) |

The rest of `Functions/Misc` and `Functions/Wavelet_POD` are not copied; no main script uses them.

## Tests

Run any test from `tests/` in MATLAB (`run test_cca_pod`, etc.). Each prints its checks and `PASS`, or stops with `FAIL`.

| Test | Checks |
|---|---|
| `test_spod_hpod_scaling` | Parseval for `spod`; `invspod` amplitude; `tcoeffs` amplitude and phase direction; HPOD branches agree. |
| `test_align_fields` | Rotation angle and axis row recovered on synthetic fields. |
| `test_cca_pod` | The patched CCA (POD-subspace form) matches the original dense formulation, gives +f with `do_hilbert`, and handles ROI = 1. |
| `test_half_slices_phase` | A known phase lag between two halves is recovered as ψ by HPOD + `correct_phase_between_halves`, even when half 2's mode carries an arbitrary phase. |
| `test_hpod_tcoeffs` | HPOD of an SPOD band isolated with `tcoeffs` tracks a frequency-modulated tone (0.56 Hz rms against 2.80 Hz for HPOD of the raw data). |
| `test_spod_freq_batches` | `spod` with frequency batches (`opts.freq_batches` or `opts.max_memory_GB`) and int16 input gives the same L and P as the single-batch, single-precision run. |

## Behaviour changes to be aware of

- **`align_fields`:** with `auto_position = "none"` or `"axial"`, `y_0` is now kept as the axis. It was replaced by the frame centre. `y_0` must lie inside the frame, or the loader stops with a message.
- **`Read_slow`:** frames are now read from the right offset. The old reader started 810 bytes late on the test file, which shifted each image by a row and wrapped it 170 px sideways.
- **`tcoeffs`:**
  - Coefficients are no longer conjugated.
  - Their phase is now referenced to the time step itself, not to the start of its window.
  - |a| and the time–frequency maps are unchanged; the phases differ by a constant per bin.
- **`spod_adapt`:** modes now have unit norm, as in `spod`. They were 1/sqrt(nSamples).
- **`Hilbert_POD_Analysis`:** `use_reconstructed_data` is replaced by `data_source = "raw" | "reconstructed" | "spod_tcoeffs"`.
- **`SPOD_2D_Wavenumber_Spectrum_Analysis`:**
  - `set_own_y_D` defaults to 0, so the nozzle-based y_D is used.
  - There is one data file per peak.
- **`Empirical_Dispersion`:** overlap defaults to 50%.
- **`spod` / `SPOD_Analysis`:** new `max_memory_GB` (0 = no cap) splits the frequencies into batches to stay under that budget; data stay in their stored class (int16) until each block is used. `restrict_memory` (`savefft`) still works but is not recommended (§7.5 of the review).
- **Plot scripts:** each figure is closed once saved. Before, the BMD, Hilbert, POD, SPOD and time-frequency plot scripts left every figure open, and long runs piled up hundreds of windows.
- **`BMD_Plots_Symmetry_Enforced`:** figure names drop the `Symmetry_Imposed_` prefix (the folder already says it), keeping paths under the 260-character Windows limit.
