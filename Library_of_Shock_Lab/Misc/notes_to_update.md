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

## esfahani-2021-coupling-modes-twin-rectangular-jets
- (add-paper panda-1999-experimental-investigation-screech-noise-generation, 2026-10-21) `esfahani-2021-coupling-modes-twin-rectangular-jets` (line 99) says crest spacing grows with shock-cell length "unlike Panda's (1999) single converging round jet". In Panda's Table 1, L_p grows from 0.67D to 1.02D as L grows from 0.77D to 1.28D. Check what Esfahani meant (perhaps L_sw ≠ L) and reword.

## ho-1981-dynamics-impinging-jet-feedback-phenomenon
- (add-paper tam-1990-theoretical-model-discrete-tone-impinging-jets, 2026-10-21) `ho-1981-dynamics-impinging-jet-feedback-phenomenon` (line 197) says Tam & Ahuja is "not in the library; from memory" and attributes the M ≳ 0.6–0.7 onset to their "cut-on". It can now link the note. Tam & Ahuja's actual argument is a Strouhal mismatch: the least-dispersive (0, 1) St exceeds the KH band (0.7) below M_j ≈ 0.72 (p. 85). Line 246 (candidate list) can drop it.

## nogueira-2024-guided-jet-waves
- (add-paper tam-1990-theoretical-model-discrete-tone-impinging-jets, 2026-10-21) Notes that cite Tam & Ahuja as a candidate or by name can link the note: `edgington-mitchell-2025-...` (lines 43, 184), `nogueira-2024-guided-jet-waves` (lines 57, 65, 151, 176), `jordan-2018-jet-flap-interaction-tones` (line 169), `towne-2017-...` (line 240), `edgington-mitchell-2018-...` (line 193), `mancinelli-2019-...` (line 222) and `gojon-2019-...` (lines 58, 61, 342).

## gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets
- (add-paper tam-1990-theoretical-model-discrete-tone-impinging-jets, 2026-10-21) `gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets` (line 58): "Following Tam & Ahuja (1990), … a finite-thickness layer would lower the limits." Fig. 17 shows the (0, 1) branch moving ≤ 5% and the (0, 2) plateau lowered by up to about 10% with its hump removed, so the attribution holds only partly.

## weightman-2019-sound-production-impinging-supersonic-jets
- (add-paper tam-1990-theoretical-model-discrete-tone-impinging-jets, 2026-10-21) `weightman-2019-sound-production-impinging-supersonic-jets`: add a line that its NPR 3.4 helical and toroidal tones lie outside the cold vortex-sheet guided-mode bands at M_j 1.42 (this note, Relevance), which supports the thesis's external-closure conclusion.
