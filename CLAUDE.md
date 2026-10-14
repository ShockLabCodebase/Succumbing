# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project status

This repository is at an early stage: it has no source code, build system or tests yet. Update this file once code is added. Remote: `https://github.com/ShockLabCodebase/Succumbing` (branch `main`).

## Domain

The work is MATLAB-based (see `.gitattributes`). The reference material is on jet screech.

## Reference library

Papers are summarised once into `References/notes/*.md`. Use the notes instead of re-reading the PDFs, and open a PDF only for exact wording, figures or derivations, using the page numbers in the note. Add new papers with `/add-paper <file>` (`.claude/skills/add-paper/`). The index is below:

@References/INDEX.md

## Repository conventions

- `.gitattributes` marks MATLAB binaries (`.mat`, `.fig`, `.mlx`, `.slx`, etc.) as binary. Do not try to diff or hand-edit them. Simulink models use `merge=mlAutoMerge`.
- `.gitignore` excludes MATLAB autosaves (`*.asv`), logs (`*.log`), HPC job output (`*.o1*`, `*.e1*`) and **all PDFs** (`*.pdf*`). As a result, the papers in `References/` are local-only and not in Git. Exceptions exist for `spec/` and `psec/`; `psec/` may be a typo for `spec/`.
