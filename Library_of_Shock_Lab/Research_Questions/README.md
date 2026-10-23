# Research questions

In-depth answers to research questions, written by the `/research-question` skill (`.claude/skills/research-question/SKILL.md`) from the reference library in `Library_of_Shock_Lab/`. Each answer reasons from the evidence and says plainly what is established, contested or unknown; none claims to be the final word.

- One file per question: `<slug>.md`, with frontmatter (`question`, `status`, `created`, `updated`, `topics`, `notes`, `papers_requested`) and sections for the short answer, framing, evidence, conflicts, uncertainties, proposed tests (ranked tests that would tell the competing hypotheses apart, each with its predictions, design, feasibility check and decision rule), papers requested, sources and a log.
- **Status:** `answered` (the library supports an answer, however uncertain), `partial` (an answer, but key papers are still missing), `awaiting-papers` (needs papers before a useful answer is possible).
- **Start:** `/research-question <question>`. **Continue** after fetching requested papers into `Library_of_Shock_Lab/Paper_PDFs/_Unprocessed/`: `/research-question continue <slug>`. **List:** `/research-question list`.
- What an answer adds to the library is queued, not applied: topic-page changes go to `Library_of_Shock_Lab/Topics/_queue/<topic>.md` (as `## research-question: <slug>`) and note changes to `Library_of_Shock_Lab/Misc/notes_to_update.md`. `/add-paper` works them in during its batch revisions.
- Papers the user needs to fetch are also listed in `Library_of_Shock_Lab/Misc/Papers_to_get.md`, tagged with the question's slug.

## Questions

| Question | Status | Updated |
| --- | --- | --- |
| [How does HPOD's instantaneous frequency appear to beat the time–frequency trade-off?](hpod-instantaneous-frequency-uncertainty.md) | answered (10 papers indexed for it; none outstanding; tests T1 and T8 done and worked in, T2–T7 proposed) | 2026-10-23 |
