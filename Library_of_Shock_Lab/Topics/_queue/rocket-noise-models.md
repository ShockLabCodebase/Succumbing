## mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation (queued 2026-10-21)

The modelling contribution is an argument from launch data that a far-field propagation stage must carry shocks to predict high-frequency levels against distance (p. 589–590), together with the theory to do it:
- Pierce's steady-shock rise time, t_rise = 4ρ₀δ/(βΔp), with an effective diffusivity that steps down as 1/t_rise passes the N₂ and O₂ relaxation frequencies (eqs. 1–4, p. 582–583).
- The Morfey–Howell spectral transport equation derived from the generalized Burgers equation, normalised into an r-independent nonlinearity indicator (eqs. 8–10, p. 587–588).

No propagation is actually computed. Gee 2008 later ran the full GBE for the F-22A, and SATURN uses an empirical propagation-loss filter (mathews-2025-thesis-supersonic-jet-rocket-noise-saturn). The inputs the paper says a model needs are the initial shock thickness, measured with more than 20 kHz bandwidth, and the temperature and humidity. In Table III, δ differs 11–19× between the two relaxation regimes and falls 5–9× from 30% to 70% RH (p. 586).

The source side is SP-8072-style: L_W of 184 dB (Scout) and 199 dB (Titan IV), computed from W_m with assumed Guest (1964) efficiencies of 0.4% and 0.53% (Table I, p. 579). These are above the 0.3–0.4% now measured (topic page).

Caveats for anyone reusing the equations (my checks):
- Eq. 8 as printed appears to lack a factor ω on the nonlinear term, and its absorption term is twice the α of eq. 3.
- The line-1 diffusivity fit does not match the relaxation regime it is assigned to.

The Titan IV and Scout L_eq values fall about 24–25 dB per decade (≈ r⁻¹·²; my arithmetic). That is steeper than the r⁻¹ to r⁻¹·¹ of mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets, but these stations saw different emission times at ground level.

This complements the topic page's remark that the McInerny OASPL_max formula has no absorption (kellison-2026-falcon-9-noise-two-campaigns). Here the same first author argues that absorption at the shock fronts controls the high-frequency levels, while OASPL is set by the sub-100 Hz peak and barely affected (p. 588).

## tam-1989-three-families-instability-waves-high-speed-jets (queued 2026-10-21)

- **"Supersonic" M_c.** The page cites kellison-2026's preference for the "supersonic" Tam & Hu M_c (66° against a measured 64°). That M_c is eq. 5.1 of this paper (p. 472), and its radiation angle cos⁻¹[(a_j + a_o)/u_j] follows from eq. 3.6 (note's derivation).
- **Attribution correction.** Tam & Hu derive only that one speed. The KH and "subsonic" speeds used by kellison-2026 (M_c′, M_c″) are Oertel's empirical W′/W″ formulas, not results of this paper.
  - Within Tam & Hu the subsonic waves have |c| < a_o and no near field (p. 456, 465), so they cannot radiate Mach waves. Kellison's M_c″ = 1.75 (55°) is not a Tam & Hu wave (note's reading).
  - Oertel's W′ speed is 9% above the computed and measured KH speed at cold M_j 2.1 (0.85 against 0.78–0.79; Fig. 18, note's calculation).
- **Rocket plumes are past KH merging.** Fig. 9's critical M_j falls to ≈ 2 for T_j/T_∞ ≳ 3 (p. 459). Rocket plumes are hotter and faster than this, so by this vortex-sheet result the KH wave is no longer distinct and the supersonic family dominates (p. 480–481).
  - That gives a physical reason to prefer the eq. 5.1 speed over the Oertel mean M_O for rockets. It bears on the "which convective Mach number" disagreement now on jet-noise-mechanisms.
  - Caveats: vortex sheet only, γ_j = γ_o, and Fig. 9 stops at T_j/T_∞ = 3.
- **Link to SP-8072-type models.** This is a caveat for models built on a single KH-like wavepacket (lubert-2022), but the paper says nothing about rocket conditions, so the link is an inference.

## tam-1994-turbulent-mixing-noise-supersonic-jets (queued 2026-10-24)

- **Role.** This is the first-principles, one-constant model of the Mach-wave component that dominates rocket noise. The [Mathews 2025](../Notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) thesis cites it, with Tam 1995 and Tam et al. 1996, for the two-source picture (that note, p. 4). The F and G similarity spectra used, and found wanting, for rockets ([Tam 1996](../Notes/tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md)) are their empirical descendants.
- **Points for rocket modelling:**
  1. At M_j 2, heating brings in azimuthal modes up to n = ±5 and broadens the directivity (Fig. 8, p. 1779), so hot plumes probably radiate through many modes.
  2. The peak direction depends strongly on St (θ ≈ 25–30° at St ≈ 0.06 against ≈ 50–60° at St 0.2–0.4 in the hot jet, my readings), so a single-M_c peak-angle formula is a simplification.
  3. The calibration constant changed by a factor of 2.1 between two lab temperatures. The authors also warn that full-scale exit non-uniformity, swirl and core turbulence may break the self-similar lip assumption (p. 1776).
  4. The model already fails at the lowest St tested (0.067 at 500 K), while rocket peaks sit at Sr ≈ 0.01–0.025 ([Lubert 2022](../Notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 10).
- **What a rocket version needs.** Heated M ≈ 3 mean flows and the supersonic instability-wave family of [Tam & Hu 1989](../Notes/tam-1989-three-families-instability-waves-high-speed-jets.md).
- **Effect on the page.** The paper has no rocket data and does not change the current understanding. It supplies the theory reference for the Mach-wave directivity thread.

## tam-2008-sources-of-jet-noise-experimental-evidence (queued 2026-10-24)

The paper is the experimental basis cited, with Tam et al. 1996, for the two-source (directional large-structure plus broadband sideline) spectra used in rocket-noise modelling ([Lubert 2022](../Notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), section III B, p. 9–12; Kenny & Giacomoni's two-source fit, p. 27–28; [Mathews 2025 thesis](../Notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 4). Its data stop at M_j 2.0 and T_r/T_a 3.2, so they do not address the poor rocket fit reported by Lubert (p. 10). Two results bear on source location in SP-8072-type models. (a) The apparent source depends on observation angle as well as frequency: for an M 1.9 jet the sideline (fine-scale) source peaks at x/D ≈ 17, but the 150° (inlet) large-structure source at x/D ≈ 11 (cold) to ≈ 14 (T_r/T_a 2.2) (Figs. 32–33, p. 286–287). (b) These lab values sit below the 17–20 D_e found for rockets ([Lubert 2022](../Notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 12–14; [Gee 2016](../Notes/gee-2016-near-field-intensity-static-rocket-firings.md), p. 1, 5). The power-law exponents (n ≈ 9–10 aft) are lab-jet OASPL scalings and should not be confused with the U_e³ sound-power scaling of the Mach-wave regime (Lubert p. 7–9). The paper does not change the page's consensus; it should be listed as the experimental support for the similarity-spectrum source split, with the angle-dependent source location as a possible input to source-location laws.
