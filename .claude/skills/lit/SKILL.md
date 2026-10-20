---
name: lit
description: Answer a research question from the reference library in References/, e.g. what the literature says about a topic, which papers used a given method, data type or flow condition, how a result compares with published ones, what is still unresolved, or which papers to cite. Works from the topic pages, frontmatter search, data tables and notes, and cites note and page. Use when the user runs /lit, asks "what does the literature say about…", "which papers…", "has anyone measured…", "how does this compare with…", or needs citations or BibTeX for writing.
argument-hint: "<question>"
---

# Answer from the literature

The library is described in `References/SCHEMA.md`. In short: `topics/*.md` hold the cross-paper synthesis, `notes/*.md` hold one paper each (frontmatter + body with page refs), `data/*.csv` hold numbers collected across papers, `references.bib` has BibTeX keyed by note slug, and `References/tools/library.py` searches the frontmatter.

Run the tool with `"$USERPROFILE/anaconda3/python.exe" References/tools/library.py …` from the repo root (Git Bash).

## 1. Work out what kind of question it is

| Question | Start here |
| --- | --- |
| A research thread ("what sets A1/A2 staging?", "is the guided jet mode needed for impingement tones?") | The topic page(s) in `References/topics/`, then the notes they cite |
| A filter ("TR schlieren of rectangular jets at NPR > 3", "papers using HPOD on PIV") | `library.py find`, e.g. `find --data schlieren-TR --flow rectangular-jet --param NPR --long`; `find --methods HPOD`; `find --topics screech --since 2020 --text staging` |
| Numbers ("published A2 St at M_j 1.15", "η for Falcon 9") | `References/data/*.csv` (columns in `data/README.md`), then the cited note and page |
| One paper | Its note (find the key with `find --author` / `--text`) |
| What cites what ("who built on Tam 1986?") | `grep -l '"tam-1986-bbsan-screech-relationship"' References/notes/*.md` matches both `cites` and `related`; the note's own `cites` shows its in-library references. `cites` is matched automatically from reference lists, so treat it as a strong hint, not proof |
| Citations for writing | `references.bib` (key = note slug); warn about entries carrying `UNVERIFIED` |

If no topic page fits, say so and fall back to `find` plus Grep over `References/notes/` (use `-n` and read only the matching sections).

## 2. Read only what you need

- Read the topic page first; it says which papers matter and where they disagree. Papers marked "(synthesis pending)" are not yet worked into the page: read their contributions in `References/topics/_queue/<topic>.md` too.
- For each paper, read the note's Summary and Key findings, and the sections the question needs (Setup / method for conditions, Key equations for models). Grep inside a note for specific terms rather than reading all of it.
- If answering needs more than about six notes in depth, give the question and the list of note paths to a `general-purpose` subagent and ask it for a cited synthesis (claims with note key + page, agreements, contradictions), so the full notes don't fill this session.
- Open a PDF (path from the note's `pdf` field; see SCHEMA for how keys map to files) only for exact wording, a figure, or a derivation the note doesn't have, using the page numbers in the note.

## 3. Answer

- Lead with the answer. Back each claim with a citation in the form [Author Year](References/notes/<key>.md), p. N.
- Cover modelling and simulation as fully as experiment (CLAUDE.md "Modelling matters too"). Keep the two apart where they disagree, and say how well the models match the data.
- State disagreements and open questions plainly, and say which view the stronger evidence supports.
- Say what the library does **not** cover. You may add papers you know of from outside it, but label them "not in the library" and, if they look worth having, add them to `References/Papers_to_get.md` or suggest adding them with `/add-paper`.
- Never present your own background knowledge as coming from a note. Flag details the notes mark as unverified or figure-read.
- For the user's own data or results, relate them to the published values (data tables, topic pages), and say what is new or at odds.

## 4. Write back

The topic pages should improve with use. If the answer produced synthesis the topic page lacks, such as a new cross-paper comparison, a contradiction, a sharper statement of an open question, or a correction, finish by offering to add it to `References/topics/<topic>.md` in one line. If the user agrees, edit the page in its existing structure (SCHEMA.md "Topic pages"), update its "Last updated" line, and run `library.py check`. Fix outright errors on a topic page (wrong number, broken link) without asking, and mention it.
