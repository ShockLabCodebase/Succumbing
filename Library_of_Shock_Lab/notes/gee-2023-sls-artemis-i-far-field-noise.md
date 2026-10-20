---
key: "gee-2023-sls-artemis-i-far-field-noise"
title: "Space Launch System acoustics: Far-field noise measurements of the Artemis-I launch"
authors: ["Gee, K. L.", "Hart, G. W.", "Cunningham, C. F.", "Anderson, M. C.", "Bassett, M. S.", "Mathews, L. T.", "Durrant, J. T.", "Moats, L. T.", "Coyle, W. L.", "Kellison, M. S.", "Kuffskie, M. J."]
year: 2023
type: "article"
venue: "JASA Express Lett. 3(2), 023601"
bib: {"journal": "JASA Express Letters", "volume": "3", "number": "2", "pages": "023601"}
doi: "10.1121/10.0016878"
arxiv: ""
pdf: "rocket-noise-measurements/Gee-EtAl_2023_Space-Launch-System-Acoustics-Far-Field-Noise-Measurements-Of-The-Artemis-I-Launch.pdf"
version: "published"
unverified: []
group: false
facility: "KSC LC-39B (Artemis I launch)"
data: ["full-scale", "microphones-far"]
methods: ["PSD", "empirical-model"]
flow: ["launch-vehicle", "rocket-plume", "heated"]
phenomena: ["ignition-overpressure", "crackle", "nonlinear-propagation", "directivity", "installation-effects"]
params: {"vehicle": "SLS Block 1 (Artemis I)", "thrust": "39.1 MN", "distance": "1.48–5.15 km"}
topics: ["rocket-noise-measurements"]
related: ["gee-2024-starship-super-heavy-far-field-noise", "kellison-2026-falcon-9-noise-two-campaigns", "mathews-2021-falcon-9-far-field-noise", "reichman-2018-qm2-srm-far-field-acoustics", "gee-2026-falcon-9-ascent-sonic-boom", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: ["lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2021-falcon-9-far-field-noise"]
summary: "First SLS far-field data (Artemis I, 1.5–5.2 km): ignition overpressure aimed at the trench exit; max OASPL 127–136 dB, ~20 dB above EA predictions; 20 Hz peak; crackle"
---
# Space Launch System acoustics: Far-field noise measurements of the Artemis-I launch

- **Authors:** K. L. Gee, G. W. Hart, C. F. Cunningham, M. C. Anderson, M. S. Bassett, L. T. Mathews, J. T. Durrant, L. T. Moats (BYU Physics and Astronomy), W. L. Coyle, M. S. Kellison, M. J. Kuffskie (Rollins College Physics)
- **Source:** JASA Express Letters 3(2), 023601 (2023). Received 29 Nov 2022, accepted 30 Dec 2022, published online 14 Feb 2023 (p. 2). Open access, CC BY. Editor T. B. Neilsen.
- **DOI:** 10.1121/10.0016878
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-measurements/Gee-EtAl_2023_Space-Launch-System-Acoustics-Far-Field-Noise-Measurements-Of-The-Artemis-I-Launch.pdf` (8 pp.; p. 1 is a publisher cover sheet, so PDF p. N = journal page 023601-(N−1). Page refs below are PDF pages.)
- **Tags:** rocket noise, launch vehicle acoustics, SLS, Artemis I, solid rocket booster, ignition overpressure, flame trench, Mach wave radiation, far-field OASPL, one-third-octave spectra, nonlinear propagation, acoustic shocks, crackle, A-weighting, environmental noise prediction, ground-plate microphone, field measurement

## Summary
A short, rapid-release letter reporting the first far-field noise measurements of NASA's Space Launch System (Artemis I, 16 Nov 2022, LC-39B, 39.1 MN liftoff thrust, about 13% above Saturn V). Five autonomous ground-plate microphone stations (PUMA units) between 1.48 and 5.15 km from the pad give waveforms, 1 s running OASPL and maximum one-third-octave spectra. The SRB ignition overpressure (IOP) is strongly directional towards the flame-trench exit (north), whereas post-liftoff maximum levels are roughly north–south symmetric and follow spherical spreading. Maximum post-liftoff OASPLs are 127–136 dB, about 20 dB above environmental-assessment predictions; spectra peak near 20 Hz with strong high-frequency content from nonlinearly steepened shocks (crackle). There is no modelling or simulation in the paper; the comparison is against empirical environmental-assessment predictions only.

## Key findings
- **Visible rarefactions** (p. 3, Mm. 1): night-time videos show condensation clouds from strong rarefactions. The first, at t ≈ 0 s, is the SRB IOP travelling towards the flame-trench exit; later ones are attributed to intense Mach waves from the supersonic, trench-deflected plumes (citing Lubert et al. 2022).
- **Maximum 1 s OASPL after liftoff** (p. 3–4, Fig. 2a): 136.1 dB at Station 7 (1.48 km) down to 127.3 dB at Station 2 (4.19 km); see the table below. Station 2 is 1.6 dB below Station 4 although it is about 1 km closer (p. 3).
- **Predictions badly underestimate SLS** (p. 3–4): the LC-39 multi-use environmental assessment (NASA 2013, based on 2008 Ares-V modelling with about 40% more thrust) predicted OASPL below 110 dB at 4.5 km; measurements are nearly 20 dB higher at comparable distances.
- **Event sequence** (p. 4–5, Fig. 3): RS-25 start-up at t ≈ −4.5 s, then SRB ignition at t ≈ 0, then the maximum OASPL window at t ≈ 13–15 s. The maximum is associated with the plume peak emission angle set by Mach wave radiation; for Shuttle SRBs this occurred with the vehicle about 25° above the horizon (p. 4, citing McInerny 1992, Lubert et al. 2022).
- **Pad asymmetry at ignition** (p. 4): the LC-39B trench exits north, so RS-25 start-up and SRB IOP are much stronger at Station 9 (north) than at Station 7 (south). The Station 9 IOP rarefaction is nearly 400 Pa (146 dB peak). Spherical extrapolation (with the caveat that it may not hold) gives about 40 kPa (186 dB peak) at 18 m.
- **Symmetric after liftoff** (p. 4–5): Station 7 exceeds Station 9 by 1.9 dB; spherical spreading over the distance ratio predicts 1.6 dB. So north–south radiation is roughly symmetric once the vehicle lifts off.
- **Shocks / crackle** (p. 5, Fig. 3i,j): the maximum-OASPL waveforms contain near-instantaneous pressure rises from nonlinear propagation, which cause crackle and raise instantaneous loading. Peak pressures reach roughly 400 Pa (read from Fig. 3).
- **Spectra** (p. 6, Fig. 4a): maximum one-third-octave spectra all peak around 20 Hz, with 80–95 dB at 10 kHz attributed to the shocks; content spans below 1 Hz to beyond 10 kHz (p. 7).
  - Stations 7 and 9 have nearly identical levels above 100 Hz although 9 is farther and lower at low frequency.
  - Stations 3 and 4 match below 1 kHz but differ by about 10 dB at 10 kHz, partly due to the 47AC microphone's high-frequency response at non-normal incidence.
  - The 46BE low-frequency response is better than its 4 Hz specification (no slope difference against the 47AC).
  - Station 2 is lowest near 20 Hz by more than 3 dB; wind (about 5 m/s towards NNE at 40 m height) is suggested.
  - A broad interference null near 1–2 kHz at some stations suggests a near-ground meteorological layer; not seen in earlier launches with the same setup.
- **A-weighting** (p. 6–7, Fig. 4b): at Station 4 the flat level is 128.0 dB and the A-weighted level 105.6 dBA, comparable to a chainsaw (105 dBA) or circular saw (106 dBA). A-weighting misses the dominant low-frequency energy, and the authors question its use for rocket noise. The measured dBA is more than 7 dB above the Ares-V prediction for the Saturn-V viewing area (98 dBA) and about 4 dB above the VAB prediction (99–102 dBA).

## Setup / method
- **Vehicle** (p. 2): SLS Artemis-I, 98.1 m tall. Core stage with four RS-25 LH2/LOX engines (about 7200 kN total) and two five-segment SRBs (about 16 000 kN each). The SRBs are assumed to dominate the noise, as for the Shuttle.
- **Stations:** five of several far-field sites, all outside the 1350 m blast danger area (p. 3).

  | Station | Distance from LC-39B | Max 1 s OASPL after liftoff | Microphone |
  |---|---|---|---|
  | 7 (south, Crawlerway; 4-mic triangular intensity array) | 1.48 km | 136.1 dB | GRAS 46BE |
  | 9 (north, flame-trench side) | 1.78 km | 134.2 dB | GRAS 46BE |
  | 3 | 3.39 km | 129.6 dB | GRAS 46BE |
  | 2 | 4.19 km | 127.3 dB | GRAS 46BE |
  | 4 (near Saturn-V viewing area) | 5.15 km | 128.9 dB | GRAS 47AC |

  > Distances and levels read from the Fig. 2(a) annotations (p. 4). Checks: 136.1 − 134.2 = 1.9 dB and 128.9 − 127.3 = 1.6 dB match the text; 20 log10(1.78/1.48) = 1.60 dB matches the stated spherical-spreading estimate. The text calls Station 4 "approximately 128 dB" (p. 3) and Fig. 4(b) gives 128.0 dB flat over the 3 dB-down window, against 128.9 dB in Fig. 2(a). Station 9 is labelled north and Station 7 south in the text (p. 4); other bearings are from the map.

- **Acquisition** (p. 3; time-resolved): PUMA units (ruggedised PC, GPS clock sync, NI 9250 24-bit modules at 102.4 kHz, Li-ion battery plus solar). 1/4" GRAS 46BE (4 Hz–80 kHz) except Station 4's 1/2" GRAS 47AC (0.09 Hz–20 kHz), used to check the true low-frequency slope.
- **Mounting** (p. 3): microphone inverted above a plastic circular ground plate under a thick porous polyurethane foam windscreen (James et al. 2020a; Anderson et al. 2022). Station 7 used four such plates as a triangular 2D intensity probe (intensity results not reported here).
- **Processing** (p. 3–5):
  - OASPL: 1 s running average (re 20 µPa); the station maximum is the post-liftoff peak.
  - Spectra: one-third-octave bands over the whole 3 dB-down window around the maximum (half-power, FWHM), which can last 10 s or more at the farther stations. McInerny (1996) used the 6 dB-down window instead.
  - No trajectory correction, atmospheric absorption correction or microphone incidence correction yet; these are deferred until trajectory and weather data are available (p. 6).
- **Modelling:** none in this paper. The comparison is with empirical environmental-assessment predictions (NASA 2008 Ares-V model extended to SLS in NASA 2013; adopted in the FAA 2016 FONSI). Cited prediction tools: Eldred (NASA SP-8072, 1971), McInerny (1992), Margasahayam & Caimi (1999), RUMBLE 3.0 (James et al. 2020b) (p. 2).

## Key equations
None numbered. Implicit relations used:
- SPL / peak level: $L = 20\log_{10}(p/p_\text{ref})$, $p_\text{ref} = 20\ \mu\text{Pa}$. 400 Pa → 146.0 dB (p. 4).
- Spherical spreading: $\Delta L = 20\log_{10}(r_2/r_1)$; and $p(r_2) = p(r_1)\,r_1/r_2$. 400 Pa × 1780 m / 18 m ≈ 40 kPa → 186 dB (p. 4).
- The "40 million times" comparison is an intensity ratio $10^{(105.6-30)/10} \approx 3.6\times10^7$ (p. 6; own check).

## Data tables
See the station table in Setup. Other numbers:

| Quantity | Value | Page |
|---|---|---|
| Liftoff thrust | 39.1 MN (8.8 × 10⁶ lbf), ≈ 13% above Saturn V | 2 |
| RS-25 total / each SRB | ≈ 7200 kN / ≈ 16 000 kN | 2 |
| RS-25 start-up | t ≈ −4.5 s | 4 |
| IOP rarefaction at Station 9 | ≈ 400 Pa (146 dB peak) | 4 |
| Spectral peak (OTO) | ≈ 20 Hz, all stations | 6 |
| Level at 10 kHz | 80–95 dB | 6 |
| Station 4 flat / A-weighted | 128.0 dB / 105.6 dBA | 6 (Fig. 4b) |
| Predicted dBA: Saturn-V viewing area / VAB | 98 / 99–102 dBA | 6 |
| Predicted OASPL at 4.5 km (Ares-V model) | < 110 dB | 4 |

## Figures worth remembering
- **Fig. 2 (p. 4):** map of LC-39B, the five stations with distances and max OASPLs, the Station 7 four-microphone array, and a ground-plate setup.
- **Fig. 3 (p. 5):** Station 7 vs Station 9 waveforms and 1 s running OASPL. Zooms on RS-25 start-up (±10 Pa at 7 vs ±30 Pa at 9), SRB IOP (≈ ±80 Pa vs −380/+330 Pa) and 0.5 s of the maximum-OASPL window with shock-like rises. The running OASPL at Station 9 shows an ignition spike near 135 dB before the post-liftoff plateau. Best single figure for the directional IOP.
- **Fig. 4 (p. 6):** (a) maximum OTO spectra at all stations (peak ≈ 20 Hz, 1–2 kHz null at some), (b) flat vs A-weighted at Station 4.
- **Mm. 1 (p. 3):** synchronised NASA videos showing visible rarefaction clouds.

## Notation
- IOP: ignition overpressure. SRB: solid rocket booster. OTO: one-third octave. OASPL: overall sound pressure level (1 s average). PUMA: Portable Unit for Measuring Acoustics. VAB: Vehicle Assembly Building. LC-39B: Launch Complex 39B. dBA: A-weighted level.
- "3 dB-down window": period during which the running OASPL is within 3 dB of its maximum.

## Relevance to this project
This project studies resonance and feedback in supersonic jets, including impinging jets, using time-resolved schlieren, acoustics and modal decomposition (see CLAUDE.md). This letter is a field dataset, not a mechanism study, but several parts connect.
- **Impingement and deflected plumes:** the ignition and early-liftoff sound is set by pad and flame-trench geometry, with strong directivity towards the trench exit (p. 4). This is a full-scale analogue of the geometry-dependent acoustic paths in impinging supersonic jets (lip geometry and standoff-shock leakage selecting radiation paths) in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md); flame-deflector prediction is treated in [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md). IOP is a transient, not a resonance; no feedback tones are reported.
- **Mach wave radiation:** the maximum level is attributed to Mach waves from the supersonic plume at the peak emission angle (p. 4). Lab heated supersonic jets show the same mechanism; see the review [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) and the source/directivity models in [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md) and [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md).
- **No BBSAN or screech discussion:** the spectra are broadband with a 20 Hz peak; shock-cell noise is not separated. Do not use this paper for shock-associated noise.
- **Methods and data dependence:** all analyses need time-resolved pressure (102.4 kHz): running OASPL, waveform inspection and OTO spectra over a level-defined window. No statistics beyond levels here; nonlinearity is only shown qualitatively (shocks in Fig. 3i,j). For quantitative crackle/intermittency metrics (skewness of pressure and its derivative, ASI) see [gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md) and [mathews-2021-falcon-9-far-field-noise.md](mathews-2021-falcon-9-far-field-noise.md).
- **Nonstationarity:** the signal is strongly nonstationary (moving source, changing angle and distance), so a single Welch/SPOD-style average over the whole record would mix emission angles. The 3 dB-down window is a crude way to pick a quasi-stationary segment. For lab acoustics with intermittent screech, a Hilbert envelope or wavelet would track amplitude over time better than a fixed window; the SPOD → reconstruction → HPOD pipeline is the multi-sensor equivalent.
- **Model gap:** the ~20 dB underprediction of the empirical environmental-assessment model (p. 4) is the main motivation for physics-based or better-calibrated launch-noise models; compare with later campaigns in [gee-2024-starship-super-heavy-far-field-noise.md](gee-2024-starship-super-heavy-far-field-noise.md), [kellison-2026-falcon-9-noise-two-campaigns.md](kellison-2026-falcon-9-noise-two-campaigns.md) and the Saturn-V work in [mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md).
- **Related works cited, not yet in the library:** McInerny (1992, 1996) far-field rocket noise characteristics; Gee et al. (2022) Saturn-V sound levels; Hart et al. (2022) Delta IV Heavy; Ikawa & Laspesa (1985) and Nance & Liever (2015) on ignition overpressure; Anderson et al. (2022) weather-robust microphone configurations.
