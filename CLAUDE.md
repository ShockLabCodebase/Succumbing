# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project status

This repository is at an early stage. Remote: `https://github.com/ShockLabCodebase/Succumbing` (branch `main`).

- `apps/SPODPlayer/`: Python (PySide6 + pyqtgraph + h5py) viewer for SPOD result `.mat` files, packaged as a standalone exe with PyInstaller. See its README. Use the `spodplayer` conda env at `%USERPROFILE%\anaconda3\envs\spodplayer`. When calling it from Git Bash, put `$ENV`, `$ENV/Library/bin` and `$ENV/Scripts` on PATH, or SSL and DLLs fail. Build with `build.bat`, then verify with `dist\SPODPlayer\SPODPlayer.exe --selftest <file> <out>` and `tests/smoke_test.py`.
- `Test_Data/` holds local test files (`.mat` is git-ignored). `Test_Data/SPOD_Results/Data/` has a 5.7 GB older-format SPOD file (`D_eff`, `current_M`, 23 modes in L, 4 in P).

## Domain

The work is MATLAB-based (see `.gitattributes`). The reference material is on jet screech.

## My Research Area

My research area is largely around analysing experimental data (time-resolved schlieren, acoustic measurements, particle image velocimetry) taken here in our lab (The Shock Lab). The types of flows we investigate range from subsonic jets (nozzles), to impinging supersonic jets, supersonic wind tunnels, and flow from non-axisymmetric nozzle geometries. The large focus is on resonance and feedback processes. We often supplement these analyses with reduced order models or high fidelity simulations, but those aren't currently my area of focus. 

**Typical analysis workflow:**
1. Basic statistics first (e.g. mean and RMS fields, spectra).
2. Then modal decomposition, chosen by data type:
   - **Time-resolved data** (e.g. high-speed schlieren, acoustics): SPOD and BMD (bispectral mode decomposition).
   - **Non-time-resolved data** (e.g. PIV): POD, often using pairs of POD modes to recover the phase of the oscillation.
3. **Hilbert POD (HPOD)** is a more recent addition. It gives instantaneous frequency and amplitude of key processes, rather than the block-averaged view from SPOD and BMD. One hybrid pipeline:
   1. Run SPOD.
   2. Rebuild the data from a chosen subset of SPOD modes and frequencies.
   3. Run Hilbert POD on the rebuilt data to track how the selected dynamics change over time.

**Analysis code:** the group's MATLAB analysis codes are in separate GitHub repositories under `ShockLabCodebase`, one each for schlieren, acoustics, PIV and LES. The LES repo analyses LES data supplied by other research groups. They are cloned at `\\ad.monash.edu\home\User088\joellukw\Documents\Monash_Research_Fellow\Experiments\Shocklab_Codebases`.

- **Reference only:** read and search them freely when it helps (e.g. to match the group's conventions, reuse a function's interface, or check how an analysis is done). Use the Read/Grep/Glob tools for this, not shell commands, so no permission prompts are needed.
- **Never modify them:** no edits, new files, deletions, or git operations that change state (commit, checkout, pull, stash, etc.), including via shell commands. If a change there seems useful, describe it and let the user make it. Any new code goes in this repository.
- If you need to know where something is, ask the user rather than searching the filesystem.
- **Code notes:** summaries of these repos live in `Codebase_Notes/` (one file per repo, with the commit they were read at). Use them instead of re-reading the repos; open the source only for exact code, and update the note if the repo has moved on. Currently: [Schlieren_Processing_Scripts](Codebase_Notes/schlieren-processing-scripts.md).

**Modelling matters too:** experiments, modelling and simulation go hand in hand. When summarising papers or analysing data, cover the modelling and simulation side as thoroughly as the experiments: linear stability, resolvent analysis, reduced-order models and LES/DNS, including their assumptions, numerics and how they compare with experiment.

**Lab naming:** "The Shock Lab" is the research group. Its physical lab spaces are the Shock Lab, Combustion Lab and TABLE Lab. When a paper's authors are from the group but the paper doesn't name the space, call it a "Shock Lab group facility", not a specific lab.

## Reference library

Papers are summarised once into `References/notes/*.md`. Use the notes instead of re-reading the PDFs, and open a PDF only for exact wording, figures or derivations, using the page numbers in the note. Run `/add-paper` to index every PDF in `References/Paper_PDFs/` that isn't yet in the index, or `/add-paper <folder>` to index PDFs kept elsewhere; those stay where they are and are recorded by full path (`.claude/skills/add-paper/`). The index is below:

@References/INDEX.md

## Repository conventions

- `.gitattributes` marks MATLAB binaries (`.mat`, `.fig`, `.mlx`, `.slx`, etc.) as binary. Do not try to diff or hand-edit them. Simulink models use `merge=mlAutoMerge`.
- `.gitignore` excludes MATLAB autosaves (`*.asv`), logs (`*.log`), HPC job output (`*.o1*`, `*.e1*`) and **all PDFs** (`*.pdf*`). As a result, the papers in `References/` are local-only and not in Git. Exceptions exist for `spec/` and `psec/`; `psec/` may be a typo for `spec/`.

