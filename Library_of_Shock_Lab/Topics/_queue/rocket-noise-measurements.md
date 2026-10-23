## mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation (queued 2026-10-21)

McInerny & Ölçmen reanalyse c. 1990 far-field recordings of a Titan IV launch (0.95–15.2 km) and a Scout launch (0.42–1.41 km) with weak-shock theory. That makes this the earliest launch-vehicle evidence for nonlinear propagation in the library, three years before the F-22A demonstration in gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.

They isolate each rising waveform segment. Its maximum rise rate follows the trend of Gaussian noise for small rises but the steady-shock law dp/dt ∝ Δp² above a transition rise, which shaped Gaussian noise with the same PSD and reflection never does (Figs. 7–9, p. 584–586). The fitted diffusivities, 1.24 × 10⁻³ and 1.49 × 10⁻² m² s⁻¹, fall in the range expected for relaxing air (Table III, p. 586).

Near-site PSDs keep sawtooth-like f² / f⁻² slopes. After spherical-spreading correction they barely change across the three nearest Titan sites within 0–20 kHz, which the authors attribute to insufficient bandwidth: the shocks rise in about 50 µs at 950 m, which is instrument-limited (p. 582, 586–587). The Morfey–Howell Q/S indicator shows energy leaving the band near the 16 Hz (Titan) peak and flowing into frequencies above 1–2 kHz, until absorption and the noise floor take over at the farthest sites (p. 588).

How this fits the other notes:
- It agrees with gee-2012-reusable-srm-noise-spectral-statistical and reichman-2018-qm2-srm-far-field-acoustics that shock content persists and that derivative-based shock metrics are bandwidth-limited. The dp/dt = 25 000 Δp ceiling makes this explicit.
- It agrees with mathews-2021-falcon-9-far-field-noise that shocks survive to tens of kilometres; here "vestiges" remain at 15 km (p. 586).
- The fall in shock importance from 0.4 to 15 km is the old-age counterpart of the near-source steepening that gee-2012 found out to 80D. It is not a contradiction.
- Table III's five- to ninefold fall in δ from 30% to 70% RH at 21 °C supports the humidity explanation that mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets gives for the foggy Atlas V launch's weak-shock decay. This link is my reading.

On the open question "shocks radiated or formed?", the paper does not decide: the nearest site is about 1 km away, and the sites see different emission times. It does name the deciding measurement: near-source shock thickness with bandwidth "well in excess of 20 kHz" and reflection-free mounting (p. 589–590). For the Methods section: microphones standing on the ground at 37 cm gave 1.5 ms reflections, with interference at 100–600 Hz, that double-count shocks and corrupt mid-frequency Q/S (p. 581, 588).

## langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation (queued 2026-10-24)

For "Nonlinear propagation and crackle":
- **Subscale waveform data.** The MARTEL test (≈1/40 H₂–air motor, 41.6D = 2.5 m arc, 50 kHz mics) gives S(ṗ) = 1.79, K(ṗ) = 9.79 and WSF = 0.68 at 40°, and 0.45/3.64/0.89 at 90° (Table III, p. 27). The derivative metrics peak near θ′ ≈ 48° (Fig. 29).
- **Simulation.** Nonlinear Euler propagation in the LES follows the trends (S(ṗ) 1.21, WSF 0.73 at 40°). Linear FW-H from 11.2D gives Gaussian waveforms (S(ṗ) ≈ 0, WSF 1.00) at the same OASPL. This is the [Gee 2008](../Notes/gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md) "OASPL barely affected, waveforms and spectra changed" result, reproduced by simulation.
- **Shocks in the test.** The measured S(ṗ) > 1.5 indicates shocked waveforms (Reichman et al. 2016 criterion), which the LES cannot resolve at St_c = 0.22. The Goldberg number exceeds 100 in the peak lobes at 40D (Fig. 27).
- **Scale.** The subscale values are far below the full-scale Sk{∂p/∂t} > 30 ([Gee 2012](../Notes/gee-2012-reusable-srm-noise-spectral-statistical.md), p. 7–8). They are not directly comparable without matching range in shock-formation distances and sampling bandwidth.
- It supports claim 6 without changing it. It is the only paired measurement and simulation of these metrics in the library.
