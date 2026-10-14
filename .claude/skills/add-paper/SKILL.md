---
name: add-paper
description: Read a paper PDF from References/Paper_PDFs once and turn it into a structured Markdown note plus an INDEX.md entry, so later sessions never need the PDF. Use when the user says "add this paper", drops a new PDF into References, or runs /add-paper <file>.
argument-hint: <pdf filename in References/Paper_PDFs, or "all new">
---

# Add a paper to the reference library

Goal: read the PDF **once**, carefully, and capture everything a later session would need, so the PDF only has to be reopened for exact wording or figures.

## Steps

1. **Find the PDF.** Use `$ARGUMENTS` relative to `References/Paper_PDFs/`. If it is "all new" or empty, list the PDFs that have no note linked from `References/INDEX.md` and process each one.
2. **Extract the text.** Try the Read tool with `pages` (max 20 per call). If it fails (some PDFs are reported as "password-protected" even when they aren't), run `pdftotext -layout <pdf> <scratchpad>/<name>.txt` and read that. Write to the scratchpad, never into the repo. Run `pdfinfo` first to get the page count. If the extracted text is empty, the PDF is scanned and needs OCR; tell the user.
3. **Read the entire paper**, including the tables and figure captions.
4. **Write the note** at `References/notes/<firstauthor>-<year>-<short-title-slug>.md` using the template below. Copy the structure of the existing notes in `References/notes/`.
5. **Add one row to `References/INDEX.md`**: the citation, a one-line takeaway with topics, and a link to the note.
6. **Commit** the note and the index together (`Add reference note: <short title>`). The PDF stays untracked because `.gitignore` excludes `*.pdf*`.

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
- Cross-link related notes and point out where a new paper agrees with or contradicts an existing one.
- Keep the INDEX entry to one line; it is loaded into every session.
