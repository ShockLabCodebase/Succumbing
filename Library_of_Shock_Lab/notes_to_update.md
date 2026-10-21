# Note updates to apply

Changes to existing notes that came out of other work (mainly `/research-question`), queued here instead of being made on the spot. `/add-paper` applies them in a batch when 10 or more notes are listed, or when the user asks ("apply the queued note updates"); `library.py check` prints the count. Delete a note's section once its changes are made.

One section per note, headed `## <note key>`. Each item is one bullet: `- (<source>, YYYY-MM-DD) <change>`, where the source is e.g. `rq <slug>`. Kinds of change: a cross-link to add (`related`, Relevance section), an agreement or contradiction with another note to record, a correction or inconsistency (say which number and why), or context the Relevance section lacks. Prefix items that need the PDF to confirm with `[PDF]`.

## raiola-2025-hilbert-pod
- (rq hpod-instantaneous-frequency-uncertainty, 2026-10-21) The paper is now published: Phys. Rev. Fluids (2026), "Hilbert proper orthogonal decomposition: A tool for educing advective wave packets from flow field data", doi 10.1103/bhlm-qwfh (Crossref, issued 2026-04-06). Update `venue`, `doi`, `bib` and `version`, or record it as the published version of this preprint.
- [PDF] (rq hpod-instantaneous-frequency-uncertainty, 2026-10-21) If the published PDF is obtained, check whether the eq. 2.14/2.19/2.26 sign and typo issues flagged in the note were corrected.

## huang-1998-empirical-mode-decomposition-hilbert-spectrum
- (rq hpod-instantaneous-frequency-uncertainty, 2026-10-21) Two-tone limitation (Key findings, p. 45–47): add that [Rilling & Flandrin 2008](rilling-2008-one-or-two-frequencies-emd-two-tones.md) explain it: EMD is a filter with relative cutoff f_c(n) ≈ [1 + (ln 2/n)^{1/4}]⁻¹, and the pair's frequency ratio 0.88 needs ≈ 2200 siftings for half separation, independent of record length. The Δf·T ≈ 2 point (two beats in 512 s) explains only the Fourier and wavelet marginal spectra failing. Add `rilling-2008-…`, `huang-2009-on-instantaneous-frequency` and `boashash-1992-instantaneous-frequency-fundamentals` to `related`.

## sieber-2016-spectral-proper-orthogonal-decomposition
- (rq hpod-instantaneous-frequency-uncertainty, 2026-10-21) Relevance section: state that N_f is the bandwidth that caps the instantaneous frequency's rate of change (p. 8–9), the same role as the reconstruction band before HPOD, and add `raiola-2025-hilbert-pod` to `related` if absent.
