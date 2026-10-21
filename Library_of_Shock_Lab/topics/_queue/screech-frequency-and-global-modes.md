## alkislar-2003-screeching-rectangular-jet-stereo-piv (queued 2026-10-21)

- **Frequency prediction.** U_c ≈ 0.5U_j is roughly constant from 4h to 18h (thesis data, p. 144). That contrasts with the rising 0.55 → 0.7U_j of mercier-2017-screech-feedback-loop-underexpanded-round-jets (p. 214, 224–226) in round jets, measured by a different method. The St discontinuity at M_d is fitted by switching U_c between 0.63 and 0.50.

## nogueira-2025-screech-military-style-rectangular-nozzles (queued 2026-10-21)

- **Frequency prediction.** A local azimuthal-Floquet LSA on a fitted shock-free PIV mean, with α_KH fixed at x/D_eq = 0.25, α_GJM(x) and measured k_sh, predicts the flapping tone at six NPRs to within about 0.01–0.02 in St. Examples: 0.545–0.52 against 0.55 at NPR 2.5, and 0.233–0.230 against 0.23 at NPR 4.5 (Fig. 16, p. 4219, read). This is a candidate row for the frequency-prediction table: weakest link on a fitted 3-D PIV mean, a few per cent, with no amplitude or loop selection.
- **Base flow.** The constant-profile model base flow predicts k_sh1 only for NPR ≤ 2.6, and puts k_sh2 nearer the varicose tone (p. 4220). This agrees with "shear-layer thickness matters more than shock amplitude".

## panda-1999-experimental-investigation-screech-noise-generation (queued 2026-10-21)

Panda's "exact" formula f_s = u_c/[L_sw(1 + u_c/c)] (eq. 3, p. 82) is an identity, because L_sw is defined from λ_s = c/f_s and λ_h = u_c/f_s. [Edgington-Mitchell 2022](../notes/edgington-mitchell-2022-unifying-theory-jet-screech.md) (p. 3) makes the same point. The formula predicts nothing unless L_sw is known independently. Its empirical content is that the measured crest spacing equals L_sw and that L_sw ≈ 0.8L here (0.86, 0.80). That is why Tam et al.'s empirical 0.8 factor works: with u_c = 0.7u_j and Prandtl–Pack spacing, eq. 3 reproduces Tam's eq. 7, since 0.7/(0.8 × 1.306) = 0.67 (eqs. 5–7, p. 82–83). For the table it could appear as a row: "Panda standing wave, L_sw measured | free-stream sound | exact by construction | needs L_sw, which needs f_s". Convection speeds from a least-squares phase fit in the shear layer are M_c = u_c/c_∞ = 0.70 (M_j 1.19) and 0.68 (M_j 1.42) (p. 85). With T₀ = T_a assumed, these are u_c/U_j ≈ 0.67 and 0.57 (the note's arithmetic). That fits the 0.52–0.75 range of [Mercier 2017](../notes/mercier-2017-screech-feedback-loop-underexpanded-round-jets.md) and the fall of u_c/U_j with M_j; Tam's 0.7U_j holds only at M_j 1.19. The local phase-derivative speed swings from subsonic to supersonic with period L_sw (Figs 7–8, p. 84–87). This is the standing-wave contamination that made Mercier fit straight lines over a cell (p. 224), and it belongs in "Convection speed and quick checks" as a warning against local phase gradients. Table 2 (p. 86) reports L_sw ≈ 1.27–1.30 L in two rectangular jets and one excited round jet, the opposite of Panda's own jets. This is unexplained and worth an open-question line.

## tam-1989-three-families-instability-waves-high-speed-jets (queued 2026-10-21)

- **Origin of the G-JM.** Tam & Hu (1989) is the origin of the guided jet mode (G-JM) on which every A1/A2 model in the page's table closes. The paper explicitly asks whether the screech feedback waves are its new upstream modes and leaves it open (p. 463, 480).
- **Band structure and closed forms.** It supplies:
  - the closed-form lower band limit for m = 0, St_b = σ_{m−1}/(πM_j(a_j/a_o)[(a_o/a_j + M_j)² − 1]^{1/2}), from eq. 6.3 (p. 476);
  - the identification of the upper limit as a double zero of the dispersion relation (p. 475–476).
  These are the branch and saddle points of mancinelli-2019 and mancinelli-2021.
- **Recomputed bands (the note's calculation, not the paper's).** The vortex-sheet (0, 2) band is:
  - St 0.634–0.794 at M_j 1.09 and 0.592–0.741 at M_j 1.14 for cold jets (T_0j = T_∞);
  - 0.610–0.759 and 0.566–0.704 for isothermal jets.
  The group's A1 (NPR 2.10, St 0.67) and A2 (NPR 2.25, St 0.65) tones from edgington-mitchell-2021-generation-screech-tones-shock-leakage (Table 1) both fall inside, in the lower half and nearer the branch point. This agrees with edgington-mitchell-2018 (tones near the cut-on edge).
- **Linear damping.** Tam & Hu found the upstream waves neutral even with finite thickness (p. 479). This supports treating the G-JM as a lightly damped return path; the damping then comes from elsewhere (Re, turbulence), as the eddy-viscosity discussion on linear-models notes.
- **What the paper does not change.** It contains no shocks, so the KH–G-JM saddle of nogueira-2021 (absolute instability) is outside its scope. Its double zero is a neutral k⁺/k⁻ coalescence within the subsonic-wave family, not the KH–G-JM saddle. It does not change the "what selects the frequency" question, but it is the paper to cite for the band edges.
