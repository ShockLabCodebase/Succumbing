---
name: add-paper
description: Index every PDF in References/Paper_PDFs that isn't yet in References/INDEX.md. Each paper is read once and turned into a structured Markdown note plus an index row, so later sessions never need the PDF. Use when the user runs /add-paper, says "add/index the new papers", or drops PDFs into References.
argument-hint: "[optional: specific PDF filename(s) to (re)index]"
---

# Index new papers

Goal: read each PDF **once**, carefully, and capture everything a later session would need, so the PDF only has to be reopened for exact wording or figures.

## 1. Find unindexed PDFs

If `$ARGUMENTS` names specific files, process those, even if they are already indexed; in that case replace their existing note and index row. Otherwise, from the repo root, run:

```bash
cd References/Paper_PDFs && for f in *.pdf; do grep -qF "\`$f\`" ../INDEX.md || echo "$f"; done
```

A PDF counts as indexed when its exact filename appears in backticks in the INDEX.md **PDF** column. If nothing is printed, say every paper is already indexed and stop. Otherwise, list the files you are about to process.

## 2. Write one note per paper

- **One paper:** follow "Per-paper procedure" yourself.
- **Two or more papers:** launch one `general-purpose` subagent per paper, in parallel in a single message, so the full texts don't fill this session's context. Give each subagent:
  - the PDF path
  - the note path
  - the "Per-paper procedure", "Note template" and "Rules" sections below, copied out in full
  - the path of an existing note in `References/notes/`, to copy its style
  - an instruction **not** to edit INDEX.md and **not** to commit, and to return only the finished INDEX row plus any parts flagged for checking

## 3. Update the index and commit

Only the main session edits `References/INDEX.md`; subagents never do, so parallel edits can't collide. Add one row per paper, keeping the table sorted by first author. Then commit all new notes and the index together. Use `Add reference note: <short title>` for one paper, or `Add reference notes: <n> papers` for several. The PDFs stay untracked because `.gitignore` excludes `*.pdf*`.

Finish by listing each paper with its note link and the parts to check against the PDF.

## Per-paper procedure

1. Run `pdfinfo <pdf>` to get the page count and metadata.
2. **Extract the text.** Try the Read tool with `pages` (max 20 per call). If it fails (some PDFs are reported as "password-protected" even when they aren't), run `pdftotext -layout <pdf> <scratchpad>/<name>.txt` and read that. Write to the scratchpad, never into the repo. If the extracted text is empty, the PDF is scanned and needs OCR; report this instead of guessing.
3. Read the **entire** paper, including tables, figure captions and the conclusion.
4. Write the note at `References/notes/<firstauthor>-<year>-<short-title-slug>.md` (lowercase, hyphens).
5. Write the INDEX row:
   `| <Authors short> <year>, *<Title>* (<venue/DOI/arXiv>) | <one-line takeaway; topics> | [note](notes/<file>.md) | \`<exact PDF filename>\` |`

## Note template

```
# <Title>
- **Authors / Source / DOI or arXiv / PDF filename (page count) / Tags**
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
- **Note how each method depends on the data.** For every analysis technique (statistics, POD, SPOD, BMD, DMD, wavenumber filtering, phase-averaging, etc.), record whether it needs time-resolved data, its key parameters (snapshots, block size and overlap, windowing, filters) and its preprocessing. In the Relevance section, say which methods suit time-resolved data and which suit non-time-resolved data like PIV, as in the workflow in CLAUDE.md.
- **Facility attribution:** if the experiments come from the Shock Lab group (see "Lab naming" in CLAUDE.md), name the lab space (Shock Lab, Combustion Lab or TABLE Lab) only when the paper states it. Otherwise write "Shock Lab group facility".
- Cross-link related notes in `References/notes/` and point out where a paper agrees with or contradicts another.
- Keep each INDEX row to one line; the index is loaded into every session.
