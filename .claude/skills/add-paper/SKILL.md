---
name: add-paper
description: Index every PDF in a folder (default References/Paper_PDFs, or any folder the user names) that has no note yet. Each paper is read once, its PDF renamed to Authors_Year_Title.pdf, and turned into a structured Markdown note with frontmatter; the paper is then worked into the topic pages and data tables, and the index and BibTeX are rebuilt, so later sessions never need the PDF. Use when the user runs /add-paper, says "add/index the new papers", or points at a folder of papers.
argument-hint: "[optional: a folder to scan, or specific PDF file(s) to (re)index]"
---

# Index new papers

Goal: read each PDF **once**, carefully, and capture everything a later session would need, so the PDF only has to be reopened for exact wording or figures. Then fold the paper into the library's synthesis (topic pages, data tables), so the library keeps getting more useful rather than just longer.

The library layout, frontmatter fields, controlled vocabulary and topic-page structure are in `References/SCHEMA.md`. Read it first. The tool is `References/tools/library.py`; run it as `"$USERPROFILE/anaconda3/python.exe" References/tools/library.py <command>` from the repo root (Git Bash). Below, `library.py` means that.

## 1. Find unindexed PDFs

**Index key.** Each note's frontmatter `pdf` field holds its PDF's key, and that is how indexed papers are recognised:
- PDFs under `References/Paper_PDFs/`: the path relative to that folder (just the filename for top-level files).
- PDFs anywhere else: the absolute Windows path with forward slashes, e.g. `D:/Papers/Screech/Tam 1986.pdf`.

**What to process**, depending on `$ARGUMENTS`:
- **Empty or a folder:** run `library.py unindexed ["<folder>"]` (default `References/Paper_PDFs`, searched recursively; new papers normally sit in `References/Paper_PDFs/_Unprocessed/`). Each output line is `<index key><TAB><path to read>`. If the folder is outside the working directory and access is refused, ask the user to grant access to it (the app will prompt) rather than copying files.
- **Specific PDF file(s):** process those even if already indexed, replacing their note. Work out each key using the rule above.

If nothing is printed, say every paper in that folder is already indexed and stop. Otherwise, list the files you are about to process. Many files will have publisher names (`016105_1_online.pdf`, `annurev-fluid-…pdf`); read the first page to identify them.

**Duplicates:** the same paper can sit in two folders, or twice under different names, or as both a preprint and the journal version. Before writing a note, check for one already in the library: `library.py find --author <surname> --since <year-1> --until <year+1>`, and grep `References/notes/` for the DOI. If one exists, don't write a second note: report it to the user and ask whether to keep the existing key, switch the note's `pdf` to the new file, or delete the redundant copy (deleting is the user's call).

## 2. Write one note per paper

Name notes by paper, not by folder, so a note's path doesn't change if its PDF moves.

**Reasoning effort.** Papers are read once and every later session trusts the note, so spend compute generously here. Before launching subagents, skim each paper's abstract, section headings and equations (first pages or `pdftotext` output) and set the Agent tool's `effort` for it:
- **`xhigh`** for anything where the note depends on following an argument rather than recording results:
  - theory- or modelling-heavy papers: linear stability (local, Floquet, global), resolvent, PSE/OWNS, vortex-sheet or guided-jet-wave theory, acoustic analogies and source models, shock-cell models, resonance/phase-criterion models, numerical-method papers with derivations;
  - method papers whose algorithm the note must capture exactly (SPOD and variants, BMD, DMD, HPOD, EMD, wavelets, and similar);
  - reviews and theses (including each chapter subagent of a long document), since they feed the topic pages;
  - papers central to the user's threads (screech closure and staging, impinging-jet feedback, non-axisymmetric jets, SP-8072/SATURN-type rocket-noise models);
  - any PDF whose extraction garbles equations or tables, or that is scanned.
- **`high`** for every other paper, e.g. mainly experimental or measurement papers with light modelling. Never use less than `high` for writing a note.
- When unsure, use `xhigh`.

The main session's own effort is whatever the session runs at. If you would process a single paper yourself (below) and it falls in the `xhigh` list, or this session runs below `high`, give it to one subagent at the right effort instead. Likewise, in section 3 step 3, if the batch changes more than about two topic pages or this session runs below `high`, delegate each topic page's revision to its own subagent at `xhigh` (one per page, so edits can't collide), passing it the topic contributions for that page.

- **One paper:** follow "Per-paper procedure" yourself (see "Reasoning effort" for when to use a subagent instead).
- **Long documents** (theses, reports, books; roughly 80+ pages): map chapters to PDF pages from the contents, then give one subagent per chapter range (effort `xhigh`), in parallel. Each writes a draft section to the scratchpad, and the main session merges the drafts into **one** note. Cite printed page numbers and record the offset between printed and PDF pages in the note's header. If a thesis contains published papers, list them, and mark any that already have their own note.
- **Two or more papers:** launch one `general-purpose` subagent per paper, with `effort` set as above, in parallel in a single message. Run them in waves of about 4 (queue the rest), because larger waves at high effort have repeatedly hit the usage limit mid-batch. Separate subagents also keep the full texts out of this session's context. Give each subagent:
  - the PDF path (to read) and its index key
  - the note path
  - the "Per-paper procedure", "Note template", "Return to the main session" and "Rules" sections below, copied out in full, plus the path of `References/SCHEMA.md`
  - the path of an existing note in `References/notes/`, to copy its style
  - an instruction to rename the PDF (Per-paper procedure step 4) but **not** to edit topic pages, data tables, `SCHEMA.md`, `INDEX.md` or `references.bib`, and **not** to commit

## 3. Fold the papers into the library and commit

Only the main session edits topic pages, data tables, `SCHEMA.md` and the generated files, so parallel subagents can't collide. For the batch:

1. **Vocabulary:** if a subagent proposed a new vocabulary value, either add it to `SCHEMA.md` (with a one-line meaning) or change the note to an existing value.
2. **Citations:** `library.py cites --write <key> …` for the new notes. This fills their `cites` from their reference lists. Also run plain `library.py cites --write` (all notes) when several papers were added, since older preprints sometimes cite newer versions.
3. **Topic pages:** for each paper and each of its `topics`, work the subagent's topic contribution into `References/topics/<topic>.md`, following the structure in SCHEMA.md. Put it in the right thread section; don't just append. Revise "Current understanding" or "Disagreements and open questions" if the paper changes them (e.g. new evidence for one side, a contradiction with an existing note). Add the paper's line to "Papers", and update the "Last updated" line and paper count. If a topic page doesn't exist yet, create it from the SCHEMA template (and make sure the topic is in the vocabulary).
4. **Data tables:** append the subagent's data rows to `References/data/*.csv` (columns in `References/data/README.md`). Check that the header matches and the `note` key is right.
5. **File the PDFs:** `library.py file` moves each new PDF in `Paper_PDFs/` into `Paper_PDFs/<first topic>/` and updates the note's `pdf` field and PDF line. Order each note's `topics` most significant first before this.
6. `library.py build` (regenerates `INDEX.md` and `references.bib`), then `library.py check`. Fix every ERROR; fix WARNs about the new notes.
7. Commit the new notes, topic pages, data tables, `SCHEMA.md` (if changed), `INDEX.md` and `references.bib` together. Use `Add reference note: <short title>` for one paper, or `Add reference notes: <n> papers` for several. The PDFs stay untracked because `.gitignore` excludes `*.pdf*`, and PDFs outside the repo are never copied in.

Finish by listing each paper with its note link, its old → new PDF filename (and any rename that was skipped or failed), the topic pages it changed (and any change to the consensus or open questions), and the parts to check against the PDF.

## Per-paper procedure

1. Run `pdfinfo <pdf>` to get the page count and metadata.
2. **Extract the text.** Try the Read tool with `pages` (max 20 per call). If it fails (some PDFs are reported as "password-protected" even when they aren't), run `pdftotext -layout <pdf> <scratchpad>/<name>.txt` and read that. Write to the scratchpad, never into the repo. If the extracted text is empty, the PDF is scanned and needs OCR; report this instead of guessing.
3. Read the **entire** paper, including tables, figure captions and the conclusion.
4. **Rename the PDF** to `Authors_Year_Title.pdf`, using the authors, year and title from the paper itself (not the old filename or `pdfinfo` metadata, which are often wrong). Underscores separate the three fields only, so:
   - **Authors:** surnames joined by hyphens: one author `Tam`, two `Raiola-Kriegseis`, three or more `Nogueira-EtAl`. Keep multi-word surnames as one word (`EdgingtonMitchell`, `VonSaldern`).
   - **Year:** of publication (or the arXiv/thesis year).
   - **Title:** the full title, words joined by hyphens, first letter of each word capitalised as in the paper; drop punctuation; cut at a word boundary to keep the title part to about 80 characters.
   - Transliterate accents to plain ASCII (`Brès` → `Bres`) and never use `\ / : * ? " < > |`.
   - Example: `Raiola-Kriegseis_2025_Hilbert-POD-A-Tool-For-Educing-Advective-Wavepackets-From-Flow-Field-Data.pdf`.

   Rename in place in the same folder with `mv -n` (quote both paths; UNC paths like `//ad.monash.edu/...` work from Git Bash). Skip this if the file already has the right name. If a file with the target name already exists, don't overwrite it: it is probably a duplicate, so stop and report it. If the rename fails (e.g. the file is open elsewhere or the folder is read-only), keep the old name and report it. Then recompute the index key (section 1 rule) from the **new** path and use it as the note's `pdf` field. When re-indexing a paper that already has a note, the `pdf` field must change to the new name too.
5. Read the topic page(s) the paper belongs to (`References/topics/`), so the note's Relevance section and your topic contribution can say how the paper fits what is already known.
6. Write the note at `References/notes/<firstauthor>-<year>-<short-title-slug>.md` (lowercase, hyphens), starting with the frontmatter. Fill every field as SCHEMA.md describes, using its controlled vocabulary only; leave `cites` as `[]` (the main session fills it).

## Note template

```
---
(frontmatter: every field in SCHEMA.md, each value a JSON literal)
---
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

## Return to the main session

Return only:
- the note path, and the old → new PDF filename (or why the rename was skipped)
- **topic contributions:** for each topic in the note's `topics`, 3–8 sentences saying how the paper fits that thread: what it adds, with page refs and key numbers; which existing notes it agrees with or contradicts (by key); and whether it changes the current understanding or an open question on the topic page
- **data rows:** CSV lines for any table in `References/data/README.md` whose kind of value the paper reports (e.g. screech frequencies, shock spacing, impinging tones, rocket-noise parameters), with the exact column order of that table and the `how` column filled. Say "none" if there are none
- vocabulary values you needed but SCHEMA.md lacks (with the stand-in you used)
- the parts to check against the PDF

## Rules

- Paraphrase; quote only short phrases. Every claim and number gets a page reference.
- PDF extraction often garbles equations and tables. Rebuild them where you can and check them (for example, by recomputing sums), then add a `> ` note saying what to verify against the PDF. Never present a guess as exact.
- **Cover every part of the analysis equally.** Capture modelling and simulation (stability analyses, reduced-order models, LES/DNS, theory) in the same depth as the experiments: governing equations, assumptions, base flow, numerics, resolution, boundary conditions, and how well the model matches the experiment. The Relevance section should say how both sides could inform the user's work.
- **Note how each method depends on the data.** For every analysis technique (statistics, POD, SPOD, BMD, DMD, wavenumber filtering, phase-averaging, etc.), record whether it needs time-resolved data, its key parameters (snapshots, block size and overlap, windowing, filters) and its preprocessing. In the Relevance section, say which methods suit time-resolved data and which suit non-time-resolved data like PIV, as in the workflow in CLAUDE.md. Highlight anything about intermittency, mode switching, or how frequency and amplitude change over time, along with methods that resolve this (Hilbert POD, Hilbert transforms, wavelets, SPOD-based reconstruction or filtering). These feed the user's SPOD → reconstruction → Hilbert POD pipeline.
- **Facility attribution:** if the experiments come from the Shock Lab group (see "Lab naming" in CLAUDE.md), name the lab space (Shock Lab, Combustion Lab or TABLE Lab) only when the paper states it. Otherwise write "Shock Lab group facility".
- Cross-link related notes in `References/notes/` (and list them in `related`), and point out where a paper agrees with or contradicts another.
- **Citation details:** take DOI, volume, pages and year from the PDF. Anything you add from memory goes in `unverified`, so the BibTeX entry carries a warning.
- The `summary` field is one plain-text line of about 160 characters: it becomes the paper's line in `INDEX.md`.
