# Claude usage review, 15–23 October 2026

Written on 23 Oct 2026 from the transcripts of every Claude Code session in `J:\Succumbing` between 15 and 23 October. The aim is to find ways to get more research out of Claude. The numbers come from those transcripts; the method is at the end. Times are AEDT.

## In short

A lot got built in nine days:

- a 172-note library with 18 topic pages and four data tables;
- the `/research-question` workflow, with one question answered and two of its tests run;
- the HPOD switch benchmark and the A1/A2 isolation study on the 400k-frame record;
- a PyFR continuation pipeline running on M3;
- SPODViewer 0.2 to 0.5 and the weekly storage scans;
- patched schlieren scripts;
- 108 commits.

The five changes most likely to pay off:

1. **Use the library.** Building it took about 57% of all usage, but `/lit` has never been run. The library pays off only when you ask it questions: before an analysis, while writing, and when comparing your results with published ones.
2. **Check what it says.** Notes are read instead of the PDFs, yet all 94 items flagged in [notes_to_check.md](notes_to_check.md) are unchecked. Many DOIs and page ranges were written "from memory". A scripted DOI check and a short triage would remove most of that risk.
3. **Keep sessions short and single-purpose.** 62% of usage is Claude re-reading the conversation so far. The five longest sessions ran with median contexts of 200k–400k tokens and used 38% of everything.
4. **Plan around the 5-hour limit.** Work stopped on the limit in 43 separate hours, and 17 of your 297 prompts were "Try again" or "continue" after a stop. Run one heavy session at a time, and move mechanical work to a cheaper model.
5. **Keep the research loop you've started.** The most research-productive pattern in these transcripts is research question → proposed test → decision rule → run → results worked back into the answer (tests T1 and T8, and the BMD beat test). Make it the default for analysis work.

## 1. Where the usage went

| Area | Share of usage | What it produced |
| --- | --- | --- |
| Reference library: `/add-paper`, the restructure, topic pages, overnight runs | ~57% | 51 new notes; frontmatter, tags and citations for the 121 older notes; 18 topic pages; 4 data tables; `library.py` |
| Research: LES set-up and runs, HPOD benchmark and A1/A2 study, schlieren code review, research questions | ~38% | PyFR pipeline and M3 runs, `HPOD_Switch_Benchmark`, `HPOD_Investigation`, `Codebase_Patches`, the HPOD research question |
| Apps (SPODViewer) | ~4% | versions 0.2 to 0.5 |
| Admin: storage scans, schedules, settings, renames | ~2% | weekly scan, scheduled tasks, phone access |

The largest single sessions:

| Session | Share | Median context per turn |
| --- | --- | --- |
| Add paper (21–22 Oct, 28 paper agents) | 14.5% | 191k |
| Notes section design review, 19–20 Oct (restructure, 23 agents; its fork adds more) | 13.5% | 326k |
| Schlieren processing scripts testing (fork) | 13.4% | 399k (peak 877k) |
| LES nozzle jet setup (15–23 Oct, 797 turns, 6 compactions) | 10.9% | 214k |
| Research question skill setup | 7.7% | 374k |

By token type, 62% of the weighted usage was cache reads (Claude re-reading the context on every turn), 30% cache writes (new material entering the context) and 8% output. Writing is cheap. Carrying a long conversation is what costs.

Of the 36 scheduled runs, 27 stopped on the usage limit, most of them before doing anything. Those cost almost nothing, but they are runs that did no work.

## 2. What is working well

- **Durable instructions.** Skills, `CLAUDE.md`, memory, the READMEs and `M3_SETUP.md` mean a new session starts informed. The HPOD_Investigation README, with its decision rule and outputs, is a good model.
- **Precise scoping.** "Commit only these files, leave the reference notes out" and "check quota first" are clear boundaries, and they were followed.
- **Queues for expensive work.** The topic-page queue, the app feature queue and `notes_to_update.md` batch costly revisions instead of running them on every change.
- **Bulk work moved out of hours.** The overnight indexing, with its gate checks, lock and report, is a sound design (see 3.8 for its gaps).
- **The research loop.** `/research-question` proposes tests with predictions and decision rules. You then run them (T1, T8, the BMD test of whether A2−A1 is the shock-cell beat) and work the results back in. This is the step from "summarise the literature" to "find out something new", and it is where Claude adds the most capacity.
- **Asking Claude about its own set-up.** "What changes could better utilise you?" led to the library restructure.

## 3. Improvements

### 3.1 Put the library to work

**Evidence.** About 57% of usage went into the library, and `/lit` has not been run once. The library is used inside `/research-question`, but on one question so far. In the LES session you asked literature questions directly: what Reynolds number similar LES used, and whether OpenSBLI suits the case. A plain answer has no citations, while `/lit` answers from the notes with note and page references.

**Suggestions.**

- **Ask before you analyse.** For example: `/lit what A1/A2 staging NPRs and hysteresis have been reported for round convergent nozzles?` The data tables (`screech_tones.csv`, `shock_cell_spacing.csv`, `impinging_tones.csv`, `rocket_noise.csv`) exist so that you can compare your numbers with the literature in one step.
- **Use it while writing.** Ask for a related-work paragraph drawn from a topic page, with BibTeX keys from `references.bib`. Or paste a paragraph you wrote and ask `/lit which claims here does the library contradict or not support?`
- **Index on demand.** 41 PDFs are waiting. Each paper costs about 1.1 million input-token equivalents (one paper agent, median), and a 5-hour window covers roughly 4–8 papers, fewer when topic pages are revised. Index the papers your active questions need first; the rest can wait.
- **Read the topic pages yourself.** On 20 Oct you said you would read them when you got the chance. They are the synthesis everything else leans on. A critical read of [screech-staging-and-mode-switching](../Topics/screech-staging-and-mode-switching.md) is also the best single check of their quality.

### 3.2 Check the notes before relying on them

**Evidence.** [notes_to_check.md](notes_to_check.md) has 94 lines, and none is ticked off. Typical flags are "pages/DOI from memory", "figure readings", "equations rebuilt from garbled text" and "St definition" mismatches. Each overnight report adds more "check against the PDF" items. Meanwhile the `/add-paper` skill says, rightly, that later sessions trust the note instead of the PDF.

**Why it matters.** An invented DOI or page range goes into `references.bib` and from there into a manuscript. A value read off a figure goes into a data table and from there into a comparison with your own measurements.

**Suggestions.**

1. **Script the bibliographic check.** A `library.py verify` command could check each note's DOI, title, year and pages against Crossref. It uses no model tokens and clears the "from memory" items in one pass. This is a natural next job for Claude.
2. **Triage the rest by use.** Check an item only when its note feeds something you will publish or decide on: a data-table row, a research-question answer, a citation in a draft. The data tables already have a `how` column. Confirm the rows where `how` is `figure` first.
3. **Calibrate your trust once.** Read three notes on papers you know well:
   - [weightman-2018](../Notes/weightman-2018-signatures-shear-layer-unsteadiness-pod.md);
   - [weightman-2019 (nozzle geometry)](../Notes/weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet.md);
   - [mitchell-2012](../Notes/mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren.md).

   This tells you how far to trust the other 169 notes. It also gives the reference for the model and effort test in 3.4.

### 3.3 One task per session, with a hand-off file

**Evidence.**

- Every turn re-reads the whole context. A turn with 400k tokens of context costs about four times as much as one with 100k.
- The LES session ran from 15 to 23 Oct over 797 turns, with 6 compactions. It was also used for a SPODViewer icon and a fix to a library note.
- The schlieren fork ran 641 turns at a median context of 399k, peaking at 877k. The fork copied a context of about 750k, and the parent and the fork then ran side by side.
- You asked three times whether compacting would lose information. It does. Compaction replaces the history with a summary, and only what is in files survives in full.

Long contexts also make Claude less reliable at following instructions given early in the session.

**Suggestions.**

- **Start a new session for each new task,** even within the same project. When the app offers a new session for unrelated work, accept it.
- **End with a hand-off.** Before switching or stopping, ask for the project's README or STATUS file to be updated with where things stand, what is running and what is next. `HPOD_Investigation/README.md` and `M3_SETUP.md` already work this way. A new session that reads them carries on with about 100k tokens of context instead of 400k–800k.
- **Watch the context meter.** Past about 250k tokens, finish the current step, write the hand-off and start fresh, rather than compacting.
- **Fork only for genuinely separate work,** and stop the parent once you have forked.

### 3.4 Work with the 5-hour limit, not against it

**How the limit behaves, as observed here.** All sessions, scheduled runs and subagents share one window. It opens with the first request after the previous window ends and resets 5 hours later. Ask "what's my usage?" at any time to get the percentage used and the reset time.

**Evidence.**

- Work stopped on the limit in 43 separate hours over nine days: 20 in interactive sessions (15 different sessions) and the rest in scheduled runs.
- On 19 Oct the restructure ran 8–12 extra-high-effort Opus agents at once and hit the limit three times.
- On 23 Oct three heavy sessions ran at the same time (the schlieren fork, LES and HPOD/BMD). They stopped at 12:06 and again at 16:57.
- Cut-offs cause rework. At least four notes were written twice, and seven half-written notes were set aside in `.claude/overnight/stale_incoming/`.
- The 03:08 indexing run on 23 Oct used up a whole window in 28 minutes, and that window ran until about 08:08. So the 06:20 and 07:20 summary runs failed, and the morning summary came at 08:30.

**Suggestions.**

1. **Run one heavy session at a time during the day.** Queue the next one rather than running three in parallel.
2. **Match model and effort to the job.** Effort is set per session, next to the model picker.

   | Job | Effort | Model |
   | --- | --- | --- |
   | Admin, renames, commits, file moves | medium | Opus, or Sonnet 5.5 |
   | Code and data analysis | high | Opus |
   | Research questions, theory-heavy papers, topic pages | extra high, as now | Opus |
   | Subagents for frontmatter, tagging, data-table extraction or file moves | as the skill sets | Sonnet 5.5 |

   - The PDF-renaming session ran at high effort, where medium would have done.
   - Every subagent so far has run on Opus. Sonnet uses less of the limit for each token. The skills can set `model` for each subagent.
   - Paper notes could move to Sonnet too, but only if a side-by-side test on the three papers from 3.2 shows the notes are as good.
3. **Decide what the mornings are for.**
   - If you want a fresh window when you start at 9am, have the overnight indexing start nothing after about 02:00. The last window then resets before about 07:00, and the 06:20 summary opens the day's first window.
   - If overnight throughput matters more, keep the 04:00 cut-off, and expect the summary at about 08:30.
4. **Keep agent waves at 4 or fewer during the day,** as `/add-paper` now does.

### 3.5 Let Claude watch the jobs

**Evidence.** Sixteen prompts were status checks: "How did it go?", "Has the L40S job run?", "Is there an ETA for the M3 jobs?". PC restarts came up seven times, twice in the middle of work on 23 Oct.

**Suggestions.**

- **Email yourself from SLURM.** Add `#SBATCH --mail-type=END,FAIL` and your email to the job scripts. It costs nothing.
- **Or ask for a notification.** Say "watch job N and notify my phone when it ends". Claude can run a background watcher and send a push notification, and Remote Control is already on.
- **Keep long computations off the PC.** Run them on M3 so that a restart doesn't matter, and keep the list of jobs in flight in the project's STATUS file. At the moment that list is kept in Claude's memory.

### 3.6 Ask for a plan, a definition of done and a counter-argument

**Evidence.** Plan mode was never used. Your two largest tasks went straight into execution: the schlieren review (about 1,100 tool calls across the parent session and its fork) and the LES set-up. Most of your prompts are short follow-ups (median 90 characters), which is fine once a task is set up.

**Suggestions.**

- **For anything over about an hour, ask for the plan first:** "Plan this; don't start yet." Five minutes reading a plan is cheaper than finding a misunderstanding after 300 tool calls.
- **Say what done looks like and how it is checked.** For example: "done when the patched SPOD reproduces the reference result on the synthetic file to 1e-10".
- **Keep writing decision rules before seeing results,** as you did for the BMD test.
- **Get a counter-argument before you rely on a conclusion.** For anything you might publish, ask a fresh session to argue against it from the same evidence, for example "what else could produce the A2−A1 component in the BMD?". A session that is handed your hypothesis tends to confirm it. A fresh one that sees only the evidence is a fairer test.
- **Optionally, ask for the commit upfront.** 32 of your prompts were commit-and-push requests. Adding "commit and push when done" to the opening request saves the round trip, if you are happy to give up that checkpoint.

### 3.7 New ways to add research capacity

- **Literature watch.** A weekly scheduled task could search arXiv, JFM, JASA and AIAA for new papers on screech, impinging jets, HPOD and rocket noise, and add candidates to [Papers_to_get.md](Papers_to_get.md). It only searches and doesn't read the papers, so it is light on tokens.
- **Writing support.** Claude can draft sections from research-question answers and topic pages, with citations. It can also critique your drafts against the library, as a reviewer would, or draft responses to reviewers.
- **Experiment design.** Before a lab campaign, ask a research question about which run matrix would tell the hypotheses apart: NPR steps, hysteresis sweeps, or the record length needed for N switching events. It uses the same machinery as the proposed tests.
- **Like-for-like comparison of LES and experiment.** Once the PyFR runs produce fields, run your schlieren SPOD/HPOD pipeline on numerical schlieren from the LES. The model and the experiment then go through identical analysis.
- **Harden the group's code.** The schlieren patches, together with synthetic benchmarks such as `HPOD_Switch_Benchmark`, are the start of a test suite for the group repositories. They are worth proposing to the group.
- **Onboarding.** The library, the code notes and the skills are all in Git, so students in the group could work from the same set-up.

### 3.8 Housekeeping

- **Sidebar clutter.** 36 scheduled-run sessions sit unarchived in the sidebar. Setting "Archive inactive sessions" to 2 days would clear them.
- **Uncommitted library edits block the overnight runs.** The runs stop at their clean-tree check if the library has uncommitted edits; this blocked the weekend run at 18:08 today. Either commit library edits at the end of each task, or have the check ignore `Misc/` and `Codebase_Notes/`.
- **Gaps in the overnight reports.** The 23:06 commit on 22 Oct and the 03:08 run on 23 Oct have no report section, and the 03:08 run left its lock behind. A run writes its report only at the end, so a run that is cut off writes nothing. Writing the report section after each wave would close the gap.
- **Memory needs an occasional review.** Claude once saved a one-off request as a standing rule: it checked M3 at the start of every session until this was fixed today. Skim `MEMORY.md` now and then; the `consolidate-memory` skill can tidy it.
- **Prompt suggestions cost a request each.** The suggested next prompt under each reply is one more model request. If you don't use them, turn them off in Settings.

## 4. Useful to know

- **Scheduled tasks** run on this PC through the desktop app, so the app must be running and the PC awake (a locked screen is fine). Each run is a fresh session. A missed run fires when the app next opens, which is why your task prompts check the time first.
- **Effort** is set per session. Subagents get their effort from the skill that launches them, or from the session if the skill doesn't set one.
- **Compaction** keeps a summary and drops detail. Files on disk are the only lossless memory.
- **A fork** copies the whole conversation, cost included.
- **Subagents** start with only their brief, which keeps big reads out of the main session. Each still pays its own start-up cost and carries its own growing context, about 270k tokens at the peak for a paper note.
- **CLAUDE.md and memory.** `CLAUDE.md` holds the project instructions and is in Git. Memory is Claude's own notes and lives on this PC. Both load into every session, along with about 85k tokens of tool definitions and instructions, before your first message.
- **Remote Control** is on for new sessions, so you can continue them from your phone.

## 5. Checklist

| # | Action | Who | Effort |
| --- | --- | --- | --- |
| 1 | Ask your next literature question with `/lit` | you | now |
| 2 | Read the three notes listed in 3.2 critically | you | 30 min |
| 3 | Build `library.py verify` (Crossref check of DOIs, titles, years, pages) | Claude | one session |
| 4 | Make it a habit: one task per session, ending with a STATUS hand-off | you | habit |
| 5 | Index three known papers with Sonnet and with Opus, compare, then set models in the skills | Claude; you judge | one session |
| 6 | Set "Archive inactive sessions" to 2 days | Claude, with your approval | 1 min |
| 7 | Use SLURM email or a phone notification instead of status checks | either | 5 min |
| 8 | Ask for the plan first on tasks over an hour | you | habit |
| 9 | Pick the overnight cut-off (02:00 for fresh mornings, or 04:00 for more papers) | you | 1 min |

## Method

- **Sources:**
  - 62 session transcripts and 141 subagent transcripts in `~/.claude/projects/J--Succumbing/`, from 15 to 23 Oct. The session that wrote this review is excluded.
  - Session metadata from the app (model, effort, title).
  - The scheduled-task definitions.
  - `git log`, `.claude/overnight/report.md` and the overnight summary.
  - `Misc/notes_to_check.md`.
- **Usage shares:**
  - The token counts come from each API response, de-duplicated across forks.
  - They are weighted by Opus price ratios: input 1, cache write 1.25, cache read 0.1, output 5.
  - The plan limit isn't published in tokens, so the shares are relative, not absolute.
  - The areas were assigned by session title. Library work done inside research sessions counts as research, so the library share is, if anything, an underestimate.
- **Prompt counts:** keyword matching on your 297 prompts, with forks de-duplicated. They are approximate.
