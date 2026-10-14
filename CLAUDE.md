# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project status

This repository is at an early stage: it has no source code, build system or tests yet. Update this file once code is added. Remote: `https://github.com/ShockLabCodebase/Succumbing` (branch `main`).

## Domain

The work is MATLAB-based (see `.gitattributes`). The reference material is on jet screech.

## My Research Area

My research area is largely around analysing experimental data (time-resolved schlieren, acoustic measurements, particle image velocimetry) taken here in our lab (The Shock Lab). The types of flows we investigate range from subsonic jets (nozzles), to impinging supersonic jets, supersonic wind tunnels, and flow from non-axisymmetric nozzle geometries. The large focus is on resonance and feedback processes. We often supplement these analyses with reduced order models or high fidelity simulations, but those aren't currently my area of focus. 

**Lab naming:** "The Shock Lab" is the research group. Its physical lab spaces are the Shock Lab, Combustion Lab and TABLE Lab. When a paper's authors are from the group but the paper doesn't name the space, call it a "Shock Lab group facility", not a specific lab.

## Reference library

Papers are summarised once into `References/notes/*.md`. Use the notes instead of re-reading the PDFs, and open a PDF only for exact wording, figures or derivations, using the page numbers in the note. Run `/add-paper` to index every PDF in `References/Paper_PDFs/` that isn't yet in the index (`.claude/skills/add-paper/`). The index is below:

@References/INDEX.md

## Repository conventions

- `.gitattributes` marks MATLAB binaries (`.mat`, `.fig`, `.mlx`, `.slx`, etc.) as binary. Do not try to diff or hand-edit them. Simulink models use `merge=mlAutoMerge`.
- `.gitignore` excludes MATLAB autosaves (`*.asv`), logs (`*.log`), HPC job output (`*.o1*`, `*.e1*`) and **all PDFs** (`*.pdf*`). As a result, the papers in `References/` are local-only and not in Git. Exceptions exist for `spec/` and `psec/`; `psec/` may be a typo for `spec/`.

