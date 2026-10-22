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
