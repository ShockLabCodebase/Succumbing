# Note updates to apply

Changes to existing notes that came out of other work (mainly `/research-question`), queued here instead of being made on the spot. `/add-paper` applies them in a batch when 10 or more notes are listed, or when the user asks ("apply the queued note updates"); `library.py check` prints the count. Delete a note's section once its changes are made.

One section per note, headed `## <note key>`. Each item is one bullet: `- (<source>, YYYY-MM-DD) <change>`, where the source is e.g. `rq <slug>`. Kinds of change: a cross-link to add (`related`, Relevance section), an agreement or contradiction with another note to record, a correction or inconsistency (say which number and why), or context the Relevance section lacks. Prefix items that need the PDF to confirm with `[PDF]`.

## raiola-2025-hilbert-pod
- (rq hpod-instantaneous-frequency-uncertainty, 2026-10-21) The paper is now published: Phys. Rev. Fluids (2026), "Hilbert proper orthogonal decomposition: A tool for educing advective wave packets from flow field data", doi 10.1103/bhlm-qwfh (Crossref, issued 2026-04-06). Update `venue`, `doi`, `bib` and `version`, or record it as the published version of this preprint.
- [PDF] (rq hpod-instantaneous-frequency-uncertainty, 2026-10-21) If the published PDF is obtained, check whether the eq. 2.14/2.19/2.26 sign and typo issues flagged in the note were corrected.

## bell-2021-intermittent-modal-coupling-screeching-twin-jets
- [PDF] (add-paper seiner-1988-dynamic-pressure-loads-twin-supersonic-plume-resonance, 2026-10-24) Line 172: "Seiner et al. (1986): … NPR 1.89–7.8". The journal version of that work ([Seiner et al. 1988](seiner-1988-dynamic-pressure-loads-twin-supersonic-plume-resonance.md)) has data over M_j ≈ 1.01–1.88 only (isentropic NPR ≈ 1.93–6.4). Check whether "1.89–7.8" is in Bell 2021 itself, comes from the 1986 conference paper, or was read off figure axes (M_j 1.0–2.0), and reword.

## bell-2018-coupled-underexpanded-supersonic-twin-jets
- [PDF] (add-paper seiner-1988-dynamic-pressure-loads-twin-supersonic-plume-resonance, 2026-10-24) Line 47 says Seiner et al. (1986) reported shock cells and jets drawn towards each other at s/D 1.9. The journal version ([Seiner et al. 1988](seiner-1988-dynamic-pressure-loads-twin-supersonic-plume-resonance.md)) reports only "shock wave stretching", with coupled cells 10–15 % longer than a single jet's (p. 958–959), and no inward distortion. Check whether Bell 2018 attributes it to the conference paper, and qualify the line.

## tam-1995-supersonic-jet-noise
- [PDF] (add-paper seiner-1988-dynamic-pressure-loads-twin-supersonic-plume-resonance, 2026-10-24) Line 53: the flapping plane "rotated almost 90°" a month later is attributed to "Seiner et al (1986)" (Tam 1995, p. 36). Tam's reference list (garbled in the text extraction) seems to give Seiner, Manning & Ponton (1986), probably AIAA 86-1539, the conference version of [Seiner et al. 1988](seiner-1988-dynamic-pressure-loads-twin-supersonic-plume-resonance.md). The anecdote is not in the journal paper, which says only that an uncoupled jet's flapping plane has arbitrary orientation (p. 955–956). Confirm the reference in the PDF; if it is that paper, link the 1988 note as its journal version and say the anecdote is from the conference paper. I left the line unlinked.

## powis-2016-impingement-tones-shock-instabilities-plug-nozzle
- (add-paper norum-1983-screech-suppression-supersonic-jets, 2026-10-24) Line 135, "a thinner lip lowers η_d and screech intensity (Norum 1983)": Norum's thin lip cuts stages A and C by 6–14 dB but leaves B (p. 238–240). Add "for A and C, not B".

## suzuki-2003-shock-leakage-vortex-laden-mixing-layer-screech
- (add-paper norum-1983-screech-suppression-supersonic-jets, 2026-10-24) Line 74 groups Norum 1983 with devices whose streamwise vortices should cut shock noise. Norum attributes the large cuts from long slots and the bevel to breaking the axisymmetric shock train, not to streamwise vortices, and a thin lip leaves the first cells unchanged ([Norum 1983](norum-1983-screech-suppression-supersonic-jets.md), p. 239). Reword the attribution; it is Suzuki & Lele's reading, not Norum's.

## gee-2010-near-field-vector-intensity-solid-rocket-motor
- (add-paper tam-2008-sources-of-jet-noise-experimental-evidence, 2026-10-24) Line 46 cites [Tam et al. 2008](tam-2008-sources-of-jet-noise-experimental-evidence.md) for reading the sideline- and upstream-pointing intensity vectors *near the nozzle* as fine-scale turbulence noise. Tam et al.'s fine-scale source maps peak at or beyond the end of the potential core (x/D ≈ 6–17, Figs 32–35, p. 286–289), not near the nozzle. Add that caveat; the attribution supports the two-source split, not the source location.

## tam-1996-two-components-turbulent-mixing-noise-supersonic-jets
- [PDF] (add-paper tam-1984-sound-instability-waves-supersonic-axisymmetric-jets, 2026-10-24) Line 78, "the wavy-wall analogy of Tam & Burton (1984)": Tam 1996's ref. 4 covers both parts of Tam & Burton, and the indexed note is Part 2 (axisymmetric jets), which does not use a wavy-wall analogy. The analogy is probably Part 1 (two-dimensional mixing layers, JFM 138, 249–271). Check the citation in the PDF (p. 8–9) and say which part; link [Part 2](tam-1984-sound-instability-waves-supersonic-axisymmetric-jets.md) only if it is meant. Left unlinked.

## ranow-2021-acoustic-prediction-rocket-flame-deflector
- (add-paper nonomura-2011-supersonic-jet-impinging-inclined-plate-acoustic-waves, 2026-10-24) Line 41: the separation shock is "stronger at steeper plate angles per Nonomura et al. 2011, 2016". [Nonomura et al. 2011](nonomura-2011-supersonic-jet-impinging-inclined-plate-acoustic-waves.md) uses only a 45° plate and varies the nozzle–plate distance, not the angle, so the plate-angle trend can only come from the 2016 paper. Attribute it to 2016 and link 2011 for the small-distance separation only. Left unlinked.

## nekkanti-2021-spod-reconstruction-denoising-frequency-time
- (add-paper bres-2019-modelling-jet-noise-les-perspective, 2026-10-24) `facility` field (line 15) and source table (line 76) call the LES the "Brès & Lele (2019) database". [Brès & Lele 2019](bres-2019-modelling-jet-noise-les-perspective.md) is a review that documents no database of its own; the M 0.9 Charles LES comes from Brès et al. 2018 (JFM 851) and Schmidt et al. 2018. Say that the paper cites Brès & Lele 2019 for the LES, and name the actual source; then link the review. Left unlinked.

## raman-1998-supersonic-jet-screech-review
- (add-paper zaman-1999-spreading-compressible-jets-nozzle-geometries, 2026-10-24) The p. 94, 97 bullets on Zaman's mass-flux result ("B about +60 %, other stages not significant") can now link [Zaman 1999](zaman-1999-spreading-compressible-jets-nozzle-geometries.md). The primary source says D is also "relatively high" (p. 214–215), and only the axisymmetric A stages show no gain; the size of the gain depends on the baseline (measured subsonic level or a no-screech RANS). Add that nuance.
