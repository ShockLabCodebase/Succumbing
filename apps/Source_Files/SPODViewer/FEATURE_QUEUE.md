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

### Q-003 · Limit the y range of the wavenumber spectrum (added 2026-10-21)
Request: add the ability to limit the y-axis of the wavenumber spectra. This would alter the line plot below it slightly, so that you can better identify features of interest.
Notes: read as limiting the transverse position *y* of the k-spectrum map (`kspectrum.py`, map y range set to the full frame at ~l.212), with the Σ_y line below summing |P̂|² only over the chosen *y* rows (`E = P2.sum(axis=0)` ~l.196), so features confined to e.g. the shear layer stand out. The line's normalisation (/max), the "Kept: x%" label (`_update_overlay`, uses `_E_fft`), "Zoom to energy" and the Add-range default (`default_range`) all use E, so they would follow the limit unless kept on the full sum. Touches the same file as Q-001 (Σ_y line log/linear). Open: how to set the limit (draggable horizontal band on the map, y min/max boxes, or "sum over the visible y range" when zoomed)? Should the limit affect only this window's display, or also the k-range filtering in the main view (currently applied at every y)? Remember the limit per file or reset on each new file?

## Done

<!-- Moved here by /enact-queue: `- Q-001 · Short title → 0.5 (YYYY-MM-DD)`, plus a line if it was changed or dropped. -->
