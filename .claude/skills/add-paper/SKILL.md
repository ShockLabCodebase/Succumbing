---
name: add-paper
description: Index every PDF in a folder (default References/Paper_PDFs, or any folder the user names) that isn't yet in References/INDEX.md. Each paper is read once and turned into a structured Markdown note plus an index row, so later sessions never need the PDF. Use when the user runs /add-paper, says "add/index the new papers", or points at a folder of papers.
argument-hint: "[optional: a folder to scan, or specific PDF file(s) to (re)index]"
---

# Index new papers

Goal: read each PDF **once**, carefully, and capture everything a later session would need, so the PDF only has to be reopened for exact wording or figures.

## 1. Find unindexed PDFs

**Index key.** The INDEX.md **PDF** column holds each paper's key in backticks, and that is how indexed papers are recognised:
- PDFs under `References/Paper_PDFs/`: the path relative to that folder (just the filename for top-level files).
- PDFs anywhere else: the absolute Windows path with forward slashes, e.g. `D:/Papers/Screech/Tam 1986.pdf`.

**What to process**, depending on `$ARGUMENTS`:
- **Empty or a folder:** from the repo root, run `bash .claude/skills/add-paper/find-unindexed.sh ["<folder>"]` (it defaults to `References/Paper_PDFs` and searches subfolders). Each output line is `<index key><TAB><path to read>`. If the folder is outside the working directory and access is refused, ask the user to grant access to it (the app will prompt) rather than copying files.
- **Specific PDF file(s):** process those even if already indexed, replacing their note and index row. Work out each key using the rule above.

If nothing is printed, say every paper in that folder is already indexed and stop. Otherwise, list the files you are about to process.

**Duplicates:** the same paper can sit in two folders under different keys. Before processing, check INDEX.md for a row with the same authors, year and title. If one exists, don't write a second note; report it to the user and ask whether to keep the existing key or switch the row to the new path.

## 2. Write one note per paper

Name notes by paper, not by folder, so a note's path doesn't change if its PDF moves.

- **One paper:** follow "Per-paper procedure" yourself.
- **Long documents** (theses, reports, books; roughly 80+ pages): map chapters to PDF pages from the contents, then give one subagent per chapter range, in parallel. Each writes a draft section to the scratchpad, and the main session merges the drafts into **one** note. Cite printed page numbers and record the offset between printed and PDF pages in the note's header. If a thesis contains published papers, list them, and mark any that already have their own note.
- **Two or more papers:** launch one `general-purpose` subagent per paper, in parallel in a single message, so the full texts don't fill this session's context. Give each subagent:
  - the PDF path (to read) and its index key (for the INDEX row)
  - the note path
  - the "Per-paper procedure", "Note template" and "Rules" sections below, copied out in full
  - the path of an existing note in `References/notes/`, to copy its style
  - an instruction **not** to edit INDEX.md and **not** to commit, and to return only the finished INDEX row plus any parts flagged for checking

## 3. Update the index and commit

Only the main session edits `References/INDEX.md`; subagents never do, so parallel edits can't collide. Add one row per paper, keeping the table sorted by first author. Then commit all new notes and the index together. Use `Add reference note: <short title>` for one paper, or `Add reference notes: <n> papers` for several. The PDFs stay untracked because `.gitignore` excludes `*.pdf*`, and PDFs outside the repo are never copied in.

Finish by listing each paper with its note link and the parts to check against the PDF.

## Per-paper procedure

1. Run `pdfinfo <pdf>` to get the page count and metadata.
2. **Extract the text.** Try the Read tool with `pages` (max 20 per call). If it fails (some PDFs are reported as "password-protected" even when they aren't), run `pdftotext -layout <pdf> <scratchpad>/<name>.txt` and read that. Write to the scratchpad, never into the repo. If the extracted text is empty, the PDF is scanned and needs OCR; report this instead of guessing.
3. Read the **entire** paper, including tables, figure captions and the conclusion.
4. Write the note at `References/notes/<firstauthor>-<year>-<short-title-slug>.md` (lowercase, hyphens).
5. Write the INDEX row:
   `| <Authors short> <year>, *<Title>* (<venue/DOI/arXiv>) | <one-line takeaway; topics> | [note](notes/<file>.md) | \`<index key>\` |`

## Note template

```
# <Title>
- **Authors / Source / DOI or arXiv / PDF (index key, page count) / Tags**
## Summary              (3–5 sentences, own words)
## Key findings         (bullets with numbers, each with page refs "(p. N)")
## Setup / method       (geometry, conditions table, diagnostics, numerics, key parameters)
## Key equations        (LaTeX, with eq. numbers, page refs and notation)
## Data tables          (only quantitative tables worth reusing)
## Figures worth remembering  (fig number, page, what it shows)
## Notation
## Relevance to this project  (link to the project scope in CLAUDE.md and to related notes)
```

## Rules

- Paraphrase; quote only short phrases. Every claim and number gets a page reference.
- PDF extraction often garbles equations and tables. Rebuild them where you can and check them (for example, by recomputing sums), then add a `> ` note saying what to verify against the PDF. Never present a guess as exact.
- **Cover every part of the analysis equally.** Capture modelling and simulation (stability analyses, reduced-order models, LES/DNS, theory) in the same depth as the experiments: governing equations, assumptions, base flow, numerics, resolution, boundary conditions, and how well the model matches the experiment. The Relevance section should say how both sides could inform the user's work.
- **Note how each method depends on the data.** For every analysis technique (statistics, POD, SPOD, BMD, DMD, wavenumber filtering, phase-averaging, etc.), record whether it needs time-resolved data, its key parameters (snapshots, block size and overlap, windowing, filters) and its preprocessing. In the Relevance section, say which methods suit time-resolved data and which suit non-time-resolved data like PIV, as in the workflow in CLAUDE.md. Highlight anything about intermittency, mode switching, or how frequency and amplitude change over time, along with methods that resolve this (Hilbert POD, Hilbert transforms, wavelets, SPOD-based reconstruction or filtering). These feed the user's SPOD → reconstruction → Hilbert POD pipeline.
- **Facility attribution:** if the experiments come from the Shock Lab group (see "Lab naming" in CLAUDE.md), name the lab space (Shock Lab, Combustion Lab or TABLE Lab) only when the paper states it. Otherwise write "Shock Lab group facility".
- Cross-link related notes in `References/notes/` and point out where a paper agrees with or contradicts another.
- Keep each INDEX row to one line; the index is loaded into every session.
