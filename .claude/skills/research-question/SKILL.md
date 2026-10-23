---
name: research-question
description: Give an in-depth, reasoned answer to a research question (not a literature summary), working deeply through the library's topic pages and notes, finding and fetching papers that would close gaps, proposing tests that would prove or disprove the hypotheses, and saving the answer with its sources in Library_of_Shock_Lab/Research_Questions/ for later reference. Uncertainties, unknowns and conflicts in the literature are stated explicitly. Use only when the user runs /research-question, or asks to continue or revisit a saved research question.
argument-hint: "<question>  |  continue <slug> [notes]  |  list"
effort: xhigh
---

# Research question

The user wants **thought**, not a summary: an argument built from the evidence, with the reasoning shown, the weak points named and a view on what is most likely true. A definitive answer is **not** expected. An honest "this is not settled, and here is why" is a good outcome, as long as the unknowns, uncertainties and conflicts are mapped carefully.

Answers are saved in `Library_of_Shock_Lab/Research_Questions/` (layout in `Library_of_Shock_Lab/Research_Questions/README.md`), so the user and later sessions can pick them up again.

Library layout, frontmatter and tag vocabulary: `Library_of_Shock_Lab/SCHEMA.md`. Search tool: `"$USERPROFILE/anaconda3/python.exe" Library_of_Shock_Lab/Tools/library.py …` from the repo root (Git Bash), called `library.py` below. The `/lit` skill (`.claude/skills/lit/SKILL.md`) has the lookup recipes (find by tag, data tables, who-cites-what); use them here, but go much deeper than `/lit` does.

## 0. Which mode

From `$ARGUMENTS`:
- **`list`**: print the table in `Library_of_Shock_Lab/Research_Questions/README.md` and stop.
- **`continue <slug> [notes]`** (or the user asks to continue a saved question): read `Library_of_Shock_Lab/Research_Questions/<slug>.md`, go to section 5.
- **Anything else** is a new question. Check the README table for an existing question that covers it; if there is one, say so and ask whether to continue it or start a new one. Otherwise pick a short kebab-case slug, and go to section 0a.

## 0a. Clarifying questions

An in-depth answer to the wrong question wastes the whole run, so settle what is being asked before any deep reading. A quick skim of the relevant topic page's scope and open questions is fine first, if it helps you ask sharper questions.

1. State your reading of the question in one or two sentences: what you think is being asked, and what a good answer would deliver.
2. Look for anything that would change the answer or where the effort goes, for example:
   - **scope and regime:** which flow, geometry, mode, NPR / M_j range, data type (TR schlieren, PIV, acoustics, LES);
   - **terms:** a word that could mean two things (e.g. "staging", "coupling", "resolution", "HPOD" in time or in space);
   - **the kind of answer wanted:** the underlying physics or theory, a practical recommendation for the lab's data or pipeline, a comparison with the user's own results, or material for a paper or proposal;
   - **the premise:** if the question assumes something the library disputes, say so and ask whether to answer the question as asked or the corrected one;
   - **depth and breadth:** whether to stay with the library or go out for new papers, and any papers or data the user already has in mind.
3. Ask the questions that matter (usually 1–4) with AskUserQuestion, each with concrete options and your recommended reading first, then wait for the answers. Don't ask about things you can settle yourself from the library or sensible defaults.
4. If nothing is genuinely unclear, say so, give your reading, and carry on without waiting.
5. Record the agreed reading and the answers in the question file under "The question, framed".

Skip this section on `continue`, unless the user's notes change the scope.

## 1. Frame the question

Before reading, write down (for yourself, and later in the file):
- the question restated precisely, with the regime it applies to (geometry, NPR / M_j, temperature ratio, mode, data type);
- the sub-questions it breaks into, and what evidence would settle each one (a measurement, a model prediction, a comparison between the two);
- the competing hypotheses or explanations you already know of.

This framing steers the reading, so you look for evidence that could tell the hypotheses apart rather than collecting everything on the topic.

## 2. Read deeply

- **Topic pages first.** Read every relevant page in `Library_of_Shock_Lab/Topics/` in full, including "Disagreements and open questions" and any queued contributions in `Topics/_queue/<topic>.md`. Note the papers each page leans on for the claims that matter.
- **Then the notes, in depth.** Use `library.py find` (by methods, data, flow, phenomena, parameters, topic, text) and Grep over `Library_of_Shock_Lab/Notes/` to find every paper bearing on each sub-question, including ones the topic pages don't cite. Follow `cites` / `related` both ways. Read the notes' Key findings, Setup / method and Key equations sections, not only the Summary: conditions, assumptions and numbers decide whether two papers really disagree.
- **Numbers:** pull comparable values from `Library_of_Shock_Lab/Data/*.csv` and line them up across papers. A small table often shows a trend or conflict the prose hides.
- **Delegate to keep the context clear.** When more than about six notes need reading in depth, split the sub-questions among `general-purpose` subagents (effort `xhigh`), in parallel in one message, each given its sub-question, the hypotheses, and the note paths. Ask each for claims with note key + page, the conditions each claim holds under, agreements, contradictions, and gaps. The main session does the synthesis and the judging.
- Open a PDF only for exact wording, a figure, or a derivation that decides a point, using the note's page numbers.
- Cover modelling and simulation as fully as experiment (CLAUDE.md "Modelling matters too"): what each model assumes, and how well it matches which data.

## 3. Think

This is the part the user values. Work through it properly before writing:
- **Weigh the evidence.** For each sub-question, how strong is it? Direct measurement vs inference, number of independent groups and facilities, range of conditions, whether models were validated against the data or tuned to it.
- **Explain the conflicts.** Where papers disagree, work out why: different conditions (NPR, nozzle lip thickness, temperature, Reynolds number, facility acoustics), different definitions, different methods, different reference frames, or a genuine contradiction. Say which explanation you find most plausible and why.
- **Test the hypotheses** against all the evidence, including evidence that cuts against the favoured one. Check whether any claim rests on a single study.
- **Reason past the literature** where it's sound to: scaling arguments, physical consistency checks, back-of-envelope estimates, what a model would predict for an untested case. Label these as your own reasoning, never as a paper's finding.
- **Classify each point** as established (several independent lines agree), supported (good evidence, limited range or groups), contested (credible evidence on both sides), speculative (plausible, little direct evidence) or unknown (no evidence found).

## 4. Find what's missing

Decide whether the library answers the question well enough. If a sub-question hinges on evidence the library lacks, look for **specific** papers that would supply it:
- Start from the reference lists and "related work" of the closest notes, papers you know of, and WebSearch (Crossref, arXiv, NTRS, Google Scholar results). Check every candidate exists and get its DOI before listing it; never list a paper you haven't confirmed.
- For each, say which sub-question it would settle and why, and rank by how much it would change the answer. Keep the list short and targeted (usually 2–8), not a reading list.
- **Open access** (arXiv, NTRS, author pages, open-access journals): list the candidates with file source and size, and ask the user once, for the whole list, whether to download them. On a yes, save each into `Library_of_Shock_Lab/Paper_PDFs/_Unprocessed/` and process them now with the `/add-paper` procedure (`.claude/skills/add-paper/SKILL.md`, all of it, including the fold-in and commit), then return to section 2 with the new notes. Downloads are only from the publisher, arXiv, NTRS or a similar known source; never a shadow library.
- **Paywalled or not found**: add each to `Library_of_Shock_Lab/Misc/Papers_to_get.md` under its subject heading, with DOI and a note "for research question `<slug>`", and list them in the question file under "Papers requested". The user fetches them (e.g. through the Monash library) into `Paper_PDFs/_Unprocessed/` and runs `/research-question continue <slug>`.
- If the papers would only refine an answer that already stands, still list them, but write the answer now rather than waiting.

## 4a. Propose tests

Papers close gaps only where someone has already done the work. For the rest, design the tests that would prove (or try to prove) the hypotheses from sections 1 and 3, including your own labelled ones. The aim is a test whose result **tells the hypotheses apart**, not one that just "looks at" the phenomenon.

1. **Pick the targets.** Take every point classed contested, speculative or unknown, and any supported point that rests on one study or a narrow range of conditions. Restate each one as a falsifiable hypothesis (H1, H2, …), with its competitors next to it.
2. **Derive what each hypothesis predicts.** For each target, find an observable where the competing hypotheses predict *different* outcomes: a frequency or its scaling with M_j, a mode shape or azimuthal order, a phase relation or convective velocity, a hysteresis loop, a switch rate or dwell-time distribution, a growth rate. Write the prediction under each hypothesis, quantitative where the notes, data tables or a scaling estimate allow (label your own estimates). If every hypothesis predicts the same thing, that test can't settle the point; look for another one.
3. **Check it hasn't been done.** Search the library (`library.py find`, Grep) for a paper that already ran the test. If one did, it is evidence for section 3, not a proposal; if it was run under other conditions, say what the new test adds.
4. **Design the cheapest decisive test**, in roughly this order of cost:
   - **re-analysis** of data the lab already has (SPOD, BMD, POD pairs, HPOD, the hybrid SPOD → reconstruction → HPOD pipeline), or of published numbers in `Data/*.csv`;
   - **synthetic benchmark** with a known ground truth (like `Codebase/HPOD_Switch_Benchmark/`), when the question is whether a method can see the effect at all;
   - **model calculation**: vortex-sheet or other linear stability, resolvent, shock-cell or feedback models, run at the conditions in question;
   - **simulation**: the PyFR staging LES (`Simulations/PyFR_Staging_Continuation/`), or a request for LES data from another group;
   - **new experiment** in a Shock Lab group facility (TR schlieren, acoustics, PIV, with the flows the lab runs).
5. **Specify each test** well enough that the user could plan it:
   - hypothesis tested and the competitor it rules out;
   - what is varied and what is held fixed (NPR / M_j range and step, geometry, lip thickness, temperature, reflector), and the controls that remove the obvious confounds (facility acoustics, hysteresis from the direction of the NPR sweep, convergence);
   - what is measured and how (diagnostic, sampling rate, record length, field of view, resolution), with a feasibility check: Nyquist and frequency resolution against the expected tones, enough blocks for converged SPOD / BMD, enough snapshots for POD, enough switch events for statistics. Take the lab's capabilities from the notes, `Topics/diagnostics-and-facilities.md` and `Library_of_Shock_Lab/Codebase_Notes/`; where they don't say, state the assumption rather than inventing a capability;
   - the analysis, naming the group's existing scripts where they fit;
   - the **decision rule**: which result supports which hypothesis, what result would be inconclusive, and the threshold (e.g. "a frequency jump larger than the SPOD bin width at the same NPR on up and down sweeps supports H2");
   - cost (re-analysis / days of compute / a test campaign) and the main risk to the test.
6. **Rank** the tests by how much they would change the answer per unit of cost; usually 2–6. A cheap test that splits two live hypotheses beats an expensive one that refines a supported point.

Propose only; don't run or build the tests here. The user may take one up as a follow-up (wrap_up can offer the top one).

## 5. Continue a saved question

- Read the question file in full, including the previous answer and its "Papers requested" list.
- Run `library.py unindexed` and process any new PDFs in `Paper_PDFs/_Unprocessed/` with the `/add-paper` procedure. Match them to the requested papers; say which requested ones are still missing (and keep them in `Library_of_Shock_Lab/Misc/Papers_to_get.md`). Remove processed ones from `Papers_to_get.md`.
- Also check for library notes added since the file's `updated` date that bear on the question (`library.py find --since`, Grep).
- Take any notes the user gave with the command into account (new data, a narrower scope, a pointer to a paper).
- Redo sections 2–4a as far as the new material needs, and rewrite the answer. Say explicitly what the new papers changed: which points moved between established / contested / unknown, whether the overall view changed, and which proposed tests are now answered by the literature, need redesigning, or are new. If the user reports a test's result, treat it as evidence in section 3 and mark the test done.
- An older file with a "What would settle it" section: rewrite it as "Proposed tests" in the new form.

## 6. Write and save

Write `Library_of_Shock_Lab/Research_Questions/<slug>.md` (overwrite on continue, keeping the log) with this structure:

```
---
question: "<the question as the user asked it>"
slug: <slug>
status: answered | partial | awaiting-papers
created: YYYY-MM-DD
updated: YYYY-MM-DD
topics: [<topic pages used>]
notes: [<every note key cited>]
papers_requested: [<DOI or short ref of papers asked for and not yet indexed>]
---
# <Question>

## Short answer
(One or two paragraphs: the best current view and how confident it is. No hedging beyond what the evidence warrants, and no false certainty.)

## The question, framed
(Precise restatement, regime, sub-questions, competing hypotheses.)

## Evidence and reasoning
(One subsection per sub-question: what the evidence says, its strength, how it was weighed. Experiments and models side by side. Comparison tables where they help. Own reasoning labelled as such.)

## Conflicts in the literature
(Each disagreement: who says what, under which conditions, the likely explanation, which side the stronger evidence supports.)

## Uncertainties and unknowns
(A table: point | status (established / supported / contested / speculative / unknown) | basis | what would resolve it (a test ID from "Proposed tests", or a requested paper).)

## Proposed tests
(From section 4a. First a ranked summary table: ID (T1, T2, …) | hypothesis tested (vs which) | test | type (re-analysis / synthetic / model / LES / experiment) | cost | status (proposed / running / done YYYY-MM-DD: result).
Then one subsection per test: hypotheses and their predictions, what is varied and held fixed, controls, measurement and feasibility check, analysis, decision rule, cost and risks.)

## Papers requested
(Paper | DOI | why it matters | status: requested / processed on YYYY-MM-DD.)

## Sources
(Every topic page and note cited, as links: [Author Year](../Library_of_Shock_Lab/Notes/<key>.md). Papers cited from outside the library are listed separately, labelled "not in the library".)

## Log
- YYYY-MM-DD: created / continued (what was added or changed).
```

Citation form in the body: [Author Year](../Notes/<key>.md), p. N (the `../` is because the file sits in `Library_of_Shock_Lab/Research_Questions/`). Never present background knowledge as coming from a note; flag anything a note marks as unverified or figure-read.

Then:
1. Add or update the question's row in the table in `Library_of_Shock_Lab/Research_Questions/README.md` (slug link, question, status, updated date).
2. **Queue what the library should learn** (section 6a). Don't edit topic pages or notes yourself.
3. Commit the question file, the README, the queue files and `Misc/Papers_to_get.md` (whichever changed), staged by name: `Research question: <slug>` (or `Research question: <slug> (continued)`).

## 6a. Queue updates to topic pages and notes

The answer usually produces knowledge the library lacks. Queue it, so `/add-paper` works it in during its next batch revision; this skill never revises topic pages or notes itself. Queue only what is new and backed by the notes, not a restatement of what the page already says, and nothing that rests only on your own reasoning unless it is labelled as such (e.g. a proposed explanation for a conflict). On `continue`, replace the question's earlier queue entries if they are still in the queue files, rather than adding a second set.

- **Topic pages:** for each topic page the answer adds to, append to `Library_of_Shock_Lab/Topics/_queue/<topic>.md` (create it if missing) a section headed `## research-question: <slug> (queued YYYY-MM-DD)`, holding 3–8 sentences: what to add or change (a cross-paper comparison, an explanation of a conflict, a sharper or new open question, a point that should move between consensus and dispute, an error on the page), which section of the page it belongs in, and the supporting notes with page refs (links relative to the queue file: `../../Notes/<key>.md`). End with a link to the question file: `../Research_Questions/<slug>.md`. These count toward the page's revision threshold like paper contributions.
- **Notes:** for each note that should change, add bullets under `## <note key>` in `Library_of_Shock_Lab/Misc/notes_to_update.md` (create the section if missing), in the format that file describes: `- (rq <slug>, YYYY-MM-DD) <change>`. Typical changes: a `related` link or cross-reference to a note it agrees or conflicts with, a number that is inconsistent with another note, a missing caveat on the conditions a finding holds under. Prefix with `[PDF]` anything that needs the PDF to confirm.
- List what was queued (topic pages and notes) under "## Log" in the question file, and in the reply.

## 7. Reply

In chat, give the short answer, the main uncertainties and conflicts (briefly), the top proposed tests (one line each: what it would decide and its cost), the papers requested and what the user needs to do to get them, the topic pages and notes with queued updates, and a link to the saved file. The file holds the full argument; don't paste it all into chat.
