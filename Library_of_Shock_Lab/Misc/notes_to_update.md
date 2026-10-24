# Note updates to apply

Changes to existing notes that came out of other work (mainly `/research-question`), queued here instead of being made on the spot. `/add-paper` applies them in a batch when 10 or more notes are listed, or when the user asks ("apply the queued note updates"); `library.py check` prints the count. Delete a note's section once its changes are made.

One section per note, headed `## <note key>`. Each item is one bullet: `- (<source>, YYYY-MM-DD) <change>`, where the source is e.g. `rq <slug>`. Kinds of change: a cross-link to add (`related`, Relevance section), an agreement or contradiction with another note to record, a correction or inconsistency (say which number and why), or context the Relevance section lacks. Prefix items that need the PDF to confirm with `[PDF]`.

## raiola-2025-hilbert-pod
- [PDF] (rq hpod-instantaneous-frequency-uncertainty, 2026-10-21) If the published PDF is obtained, check whether the eq. 2.14/2.19/2.26 sign and typo issues flagged in the note were corrected.

## shehzad-2021-laser-sheet-alignment-piv
- [PDF] (add-paper wieneke-2005-stereo-piv-self-calibration-particle-images, 2026-10-25) Key findings attribute to Wieneke 2005 "a 20 px Z offset with a 5% velocity gradient gives 5% error in the 3C displacement". Wieneke (p. 269) gives a 1 px change in displacement, not a percentage; check Shehzad p. 3 and reword or link the Wieneke note.

## settles-2017-recent-developments-schlieren-shadowgraph
- (topic revision schlieren-and-density-imaging, 2026-10-25) The note says Karami et al. 2020 built x–t diagrams from LES density; the karami-2020-acoustic-hydrodynamic-waves-underexpanded-impinging-jets note shows velocity and pressure. Check against the Karami note and correct.

## lubert-2022-supersonic-jet-noise-launch-vehicles-review
- [PDF] (add-paper mcinerny-1996-launch-vehicle-acoustics-overall-levels-spectra, 2026-10-25) The note gives L_c 16–25 D_e (McInerny 1996a); McInerny 1996 Part 1 prints 16–20 D_e (p. 511). Check Lubert p. 13: a transcription slip, Lubert's own figure, or another McInerny paper. If it is McInerny 1996 Part 1, link [McInerny 1996](mcinerny-1996-launch-vehicle-acoustics-overall-levels-spectra.md).

## reichman-2018-qm2-srm-far-field-acoustics
- [PDF] (topic revision rocket-noise-measurements, 2026-10-25) This note gives the derivative-skewness shock threshold as Sk{∂p/∂t} ≥ 5; the langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation note gives > 1.5. Both cite Reichman et al. 2016. Check both PDFs and record which threshold means what (e.g. "significant shocks" against "shock presence").
