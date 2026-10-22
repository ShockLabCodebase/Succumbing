# SPODViewer feature queue

Requests waiting for the next build. Add with `/queue <request>` (or by hand under *Queued*, in the same format); build them all at once with `/enact-queue`. Entries keep the request in the user's words; `Notes` are Claude's (likely files, open questions).

## Queued

<!-- Newest last. Format:
### Q-001 · Short title (added YYYY-MM-DD)
Request: what the user asked for, in their words.
Notes: where it probably lives; anything to settle before building ("Open: …").
-->

## Done

<!-- Moved here by /enact-queue: `- Q-001 · Short title → 0.5 (YYYY-MM-DD)`, plus a line if it was changed or dropped. -->
- Q-001 · Log/linear toggle for waterfall and k-spectrum colour scales → 0.5 (2026-10-21)
  Answers: the k-spectrum Σ_y line has its own log/linear toggle; the waterfall toggle applies to every colour option, starting log for λ and linear for the share. Also: the waterfall CSV notes whether values are log or linear.
- Q-002 · Log/linear St (frequency) axis on the waterfall → 0.5 (2026-10-21)
  Built as a *Log y-axis* checkbox on the waterfall only (no other axis was named); St ≤ 0 rows are dropped in log.
- Q-003 · Limit the y range of the wavenumber spectrum → 0.5 (2026-10-21)
  Answers: draggable blue band on the map plus y boxes and *Full y*; affects only the k-spectrum window (line, kept share, Zoom to energy, Add), not the main image; resets on a new file. Rows outside the band are greyed.
