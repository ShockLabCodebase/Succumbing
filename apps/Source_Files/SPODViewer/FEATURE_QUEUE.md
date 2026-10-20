# SPODViewer feature queue

Requests waiting for the next build. Add with `/queue <request>` (or by hand under *Queued*, in the same format); build them all at once with `/enact-queue`. Entries keep the request in the user's words; `Notes` are Claude's (likely files, open questions).

## Queued

<!-- Newest last. Format:
### Q-001 · Short title (added YYYY-MM-DD)
Request: what the user asked for, in their words.
Notes: where it probably lives; anything to settle before building ("Open: …").
-->

### Q-001 · Log/linear toggle for waterfall and k-spectrum colour scales (added 2026-10-21)
Request: both the waterfall and wavenumber colour scales should allow toggles between log and linear scales.
Notes: waterfall colour is always log₁₀ (`waterfall.py` colour options list ~l.23, log taken ~l.333); k-spectrum map is log₁₀ |P̂|²/max (`kspectrum.py` ~l.70, l.205), and its Σ_y line is also log-y (l.72). Linear needs its own colour-bar limits (e.g. 0 to max) since the current ones are in decades. Open: should the k-spectrum's Σ_y line plot follow the same toggle? For the waterfall's "share of energy" option (already linear-looking), keep the toggle or hide it?

### Q-002 · Log/linear St (frequency) axis on the waterfall (added 2026-10-21)
Request: similarly for St/frequency axes.
Notes: the main spectrum already has this (View → Log St axis, `act_logx` in `app.py` ~l.513), so this is the waterfall's y-axis (St, f or St_SRP), drawn as a mesh in `waterfall.py`. Log y needs the St = 0 bin dropped or clipped, and the click-to-open snapping and *max* box to work in log coordinates. Open: any other St/frequency axis meant (e.g. a shortcut or toolbar button for the existing spectrum toggle)?

## Done

<!-- Moved here by /enact-queue: `- Q-001 · Short title → 0.5 (YYYY-MM-DD)`, plus a line if it was changed or dropped. -->
