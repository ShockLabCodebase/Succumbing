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
