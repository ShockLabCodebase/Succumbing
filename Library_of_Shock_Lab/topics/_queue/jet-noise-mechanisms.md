## gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets (queued 2026-10-20)

- **Four components in a heated rectangular jet.** The paper adds an LES of heated AR 2 rectangular jets (TR 1–3, NPR 3) with FW-H far fields at 40D_eq in the minor-axis plane (p. 19–22).
  - screech upstream (θ < 60°);
  - mixing noise downstream (θ > 140°, St ≈ 0.25), as in Berland et al.'s planar LES;
  - BBSAN at 60–160°, whose angle-dependent hump follows Harper-Bourne & Fisher with an ad hoc L_sh = 0.8L_model and N = 1;
  - Mach waves for TR ≥ 2.
- **Mach waves need M_c > 1.** They appear once M_c = u_c/a₀ exceeds 1 (0.94 cold; 1.21–1.29 hot; Table 2, p. 16). They peak near 140°, against 143° from Oertel's 180° − arccos(1/M_c) (p. 20–21), i.e. about 37° from the downstream axis. This is consistent with the θ = cos⁻¹(1/M_c) matching rule ([Cavalieri 2019](../notes/cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md), p. 11–16).
- **Flapping makes Mach waves azimuthally asymmetric.** In the TR 2.5 and 3 jets the Mach-wave field is much stronger in the minor-axis plane (p. 16). Non-axisymmetric nozzles can therefore have azimuth-dependent Mach-wave directivity.
- **Screech harmonic and heating.** The first screech harmonic coincides with the BBSAN hump near 90° and dominates it for TR ≥ 2, as in the experiment (p. 20). Broadband u_c/u_j falls from 0.80 to 0.64 with heating, the trend Liu et al. (2016) found in round jets (p. 16).
- **Caution on the BBSAN check.** The printed upstream limits of eq. 8 (St 0.44–0.50) do not reproduce from Table 2 (my 0.36–0.53). The far-field BBSAN agreement is shown only qualitatively, unlike [Wong 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md).

## ray-2005-instability-wave-shock-cell-interaction-sound (queued 2026-10-21)

Ray, Cheung & Lele compute the Tam & Tanna mechanism from first principles, without postulating either partner. A PSE instability wave multiplied by Tam–Jackson–Seiner shock modes, both on a RANS mean flow, forms the source terms of the inhomogeneous linearised Euler equations. The jet is M_j 1.28 from an M_d 1.5 nozzle (overexpanded, β ≈ 0.78), with m = 0 waves at St 0.6 and 0.9 and T_j/T∞ = 1 and 2 (p. 2–5).
- **Model problem.** A Gaussian-wavepacket model shows that only the k_t − k_s difference wave radiates upstream, at θ_M = cos⁻¹(1/c_s1), which reproduces the Harper-Bourne & Fisher peak formula. A longer envelope makes the radiation louder and narrower (p. 4–5). This is the same closed form as the wavepacket superdirectivity result of cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation, and it confirms tam-1982-shock-associated-noise-cd-nozzles (only k − λ₁ effective).
- **St 0.6.** The LEE and a parallel Lilley–Goldstein Green's-function solution agree. The upstream lobe (about 100–140°) is the fan of *local* Mach angles over the centreline source region, x/D 2–6 (Fig. 7, p. 9). This puts the sources inside the plume near the end of the core, consistent with wong-2021-wavepacket-modelling-bbsan (cells 3–5, p. 27) and mathews-2025-thesis-supersonic-jet-rocket-noise-saturn (p. 32).
- **St 0.9.** The sources become rings at r/D ≈ 0.5, and interference splits the radiation into narrow lobes. A ring-source Green's function reproduces them (Fig. 12, p. 12–13), so BBSAN directivity has geometric structure beyond the Mach-angle rule.
- **Heating.** It leaves the shocks unchanged (Fig. 8) and moves the lobe about 15° upstream (p. 10). The thermodynamic (entropy) source is under 5% of the total when isothermal and about 20% at T_j/T∞ = 2 (p. 12). This supports Wong's neglect of the entropy term for cold jets, but not for heated ones.
- **Second shock mode.** Mode 2 radiates (lobe S2) only in the St 0.9 isothermal case (p. 9). This refines the Wong note's remark that Ray & Lele 2007 lacked the n = 2 mode: the 2005 paper included it and judged it minor at a single frequency.
- **Shock spacing in overexpanded C-D jets** (open question on the page). TJS modes on a RANS mean reproduce Norum & Seiner's overexpanded M_d 1.5 train for about five cells (Fig. 3, p. 6–7), so they are a candidate model at mild overexpansion.
- **Caveats.** The paper is self-declared preliminary: I2 is unconverged, H1 is under-resolved, and the sound is not compared with acoustic measurements (p. 9–10, 13). The printed heated wavenumber shift also has a doubtful sign (p. 10).

## michalke-1984-survey-jet-instability-theory (queued 2026-10-21)

Michalke 1984 supplies the instability-wave side of Mach-wave radiation for M ≤ 1.2. The outer solution (eqs. 28–31, p. 175) gives oblique near-field fronts with wave speed c_w = a∞M_c cos μ. This equals a∞ only for neutral waves with M_c > 1. Growing waves have c_w < a∞, although μ still reaches 30–45° for a thin layer at M = 1.2 (Fig. 18, p. 176).

Michalke's M_c is c_ph/a∞, a phase Mach number in the ambient frame. It is not the structure-frame convective Mach number of papamoschou-1988-compressible-turbulent-shear-layer, and the page should not mix the two. He says these fronts should be visible in schlieren at high subsonic M but "should not be denoted as sound waves" (p. 176). The radiated part of a growing and decaying wave needs the uniformly valid analysis of Tam & Morris 1980 (p. 192), i.e. the envelope-driven radiation of tam-1995-supersonic-jet-noise and cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.

The flight similarity σ = 1 + 1.4U∞/ΔU (eq. 32) collapses both the linear growth curves and measured turbulent pressure spectra and coherence in a jet with external flow (Fig. 26, p. 181–182; spectral peak at fD/(ΔUσ) ≈ 0.4). It is the basis of the Michel–Michalke flight model that mathews-2021-falcon-9-far-field-noise (p. 629) uses to estimate a ~23% downward peak-frequency shift for an ascending Falcon 9.

Heating destabilises the spatial waves: peak −α_iθ is 0.14 against 0.113 at T_o/T∞ = 2 (Fig. 19, p. 177–178). That is consistent with hot jets radiating more large-scale noise, but it is shown only for M = 0 and laminar profiles.

The paper changes no consensus item on the page. It gives the linear-theory reasons behind the Mach-wave and flight-effect items, and it flags a practical caution for the *Methods and data* section: pressure fronts seen outside a jet in schlieren need a phase-speed check before they are called sound.
