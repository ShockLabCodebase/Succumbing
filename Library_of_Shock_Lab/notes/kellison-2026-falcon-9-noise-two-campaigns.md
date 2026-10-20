---
key: "kellison-2026-falcon-9-noise-two-campaigns"
title: "Falcon 9 Noise Characterization from Two Measurement Campaigns"
authors: ["Kellison, M. S.", "Gee, K. L.", "Hart, G. W."]
year: 2026
type: "conference"
venue: "AIAA 2026-3443 (Aeroacoustics Conf.)"
bib: {"booktitle": "32nd AIAA/CEAS Aeroacoustics Conference, Brussels", "publisher": "American Institute of Aeronautics and Astronautics", "note": "AIAA Paper 2026-3443"}
doi: "10.2514/6.2026-3443"
arxiv: ""
pdf: "rocket-noise-measurements/Kellison-EtAl_2026_Falcon-9-Noise-Characterization-From-Two-Measurement-Campaigns.pdf"
version: "conference"
unverified: []
group: false
facility: "Falcon 9 launches from SLC-4, Vandenberg (BYU field measurements)"
data: ["full-scale", "microphones-far"]
methods: ["PSD", "empirical-model"]
flow: ["launch-vehicle", "rocket-plume", "supersonic", "heated", "clustered-jets"]
phenomena: ["directivity", "acoustic-efficiency", "Mach-wave-radiation", "ignition-overpressure", "sonic-boom", "crackle", "nonlinear-propagation"]
params: {"vehicle": "Falcon 9 Block 5", "D_e": "0.92 m", "D_eff": "2.76 m", "U_e": "2984 m/s", "M_j": "3.465", "range": "0.2–38.6 km"}
topics: ["rocket-noise-measurements", "rocket-noise-models"]
related: ["mathews-2021-falcon-9-far-field-noise", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "gee-2023-sls-artemis-i-far-field-noise", "gee-2024-starship-super-heavy-far-field-noise", "gee-2026-falcon-9-ascent-sonic-boom", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "james-2012-directivity-curves-rocket-noise-model"]
cites: ["gee-2016-near-field-intensity-static-rocket-firings", "gee-2023-sls-artemis-i-far-field-noise", "gee-2024-starship-super-heavy-far-field-noise", "james-2012-directivity-curves-rocket-noise-model", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2021-falcon-9-far-field-noise", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn"]
summary: "Two Falcon 9 launches, 28 stations at 0.2–38.6 km: IOP, launch, flyback boom, landing; SATURN validated; directivity peak 64°; L_W 195.4 dB, η 0.30%, peak Sr 0.010"
---
# Falcon 9 Noise Characterization from Two Measurement Campaigns

- **Authors:** M. S. Kellison, K. L. Gee, G. W. Hart (Brigham Young University, Physics and Astronomy)
- **Source:** 32nd AIAA/CEAS Aeroacoustics Conference, Brussels, 26–29 May 2026, AIAA Paper 2026-3443
- **DOI:** 10.2514/6.2026-3443
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-measurements/Kellison-EtAl_2026_Falcon-9-Noise-Characterization-From-Two-Measurement-Campaigns.pdf` (21 pp.)
- **Tags:** rocket noise, launch vehicle, Falcon 9, Merlin 1D, far-field acoustics, Mach-wave radiation, convective Mach number, directivity, frequency-dependent directivity index, sound power, acoustic efficiency, Strouhal scaling, crackle, nonlinear propagation, ignition overpressure, sonic boom, landing noise, SATURN, McInerny model, Oertel convective Mach number

## Summary
BYU measured two Falcon 9 launches from SLC-4 at Vandenberg (TRACERS, 23 Jul 2025; NAOS, 26 Aug 2025), both with return-to-launch-site booster landings, using 28 ground microphone stations from 0.2 to 38.6 km (p. 1, 4–5). The recordings contain four events: ignition overpressure (IOP), peak launch noise, the triple flyback sonic boom and the landing burn. Their spectra peak at about 2–3 Hz, 20–30 Hz, about 3 Hz and 70–80 Hz respectively (p. 5–6). Peak 1-s OASPL collapses between the two launches out to more than 30 km. The McInerny-type model fits it to about 4–5 km, and the empirical SATURN model matches running OASPL and one-third-octave spectra at 1.1–5.9 km (p. 7–10). Six stations at 240–750 m are then used as a single moving-source "array" via trajectory data. They give a broad peak directivity at about 64° (1 dB-down band 58–72°), sound power 195.4 ± 0.7 dB (η ≈ 0.30%), a sound-power spectrum peaking at Sr ≈ 0.010, and OASPL at 100 D_eff of 142.6 ± 0.7 dB (p. 11–17). The authors read the directivity as Mach-wave radiation from both Kelvin–Helmholtz and supersonic (Tam & Hu) instability waves. They read the flat level against Oertel convective Mach number as evidence that η saturates at rocket conditions (p. 13, 17–18).

## Key findings
- **Four acoustic events at Station 10 (750 m from pad and landing zone; TRACERS)** (p. 5–6, Fig. 3–4):
  - IOP at T−3 s: peak about 20 Pa (120 dB), spectral peak 2–3 Hz, little energy above 100 Hz. It is strongly directional: about 126 dB south of the pad, where the flame trench opens, against 120 dB at Station 10 to the north (p. 5).
  - Peak launch noise: peak pressure about 540 Pa (149 dB peak level), dominated by shocks (crackle). The shocks are higher in frequency than in SLS or Starship because the effective exit diameter is smaller. Spectrum peaks at 20–30 Hz (p. 5–6).
  - Flyback sonic boom: three shocks, about 250 Pa (5 psf, 142 dB peak), spectral peak about 3 Hz, nearly an order of magnitude below launch noise (p. 6).
  - Landing burn (one engine): up to 156 Pa (138 dB peak), 11 dB below launch. Spectral peak 70–80 Hz, about the factor of 3 expected from √9 smaller plume diameter (p. 5–6).
  - Launch noise and the boom both keep a high-frequency roll-off of about 10 dB/decade (the ideal weak-shock slope) out to 10 kHz. Landing noise rolls off faster above 2 kHz, which the authors put down to weaker nonlinearity and more absorption at lower amplitude (p. 6).
- **Peak OASPL vs distance** (p. 7–8, Fig. 5a):
  - L_max approaches 150 dB at the closest stations and collapses between launches even at 30+ km. Earlier rocket data at those ranges differed by up to about 30 dB between repeat measurements (p. 7).
  - Eq. 1 (η = 0.33%, Q = 5 dB, δ = 1.9) fits to about 4–5 km and overpredicts beyond, because it leaves out absorption and other propagation losses (p. 7–8).
  - No clear azimuthal dependence, which the authors attribute to the symmetric nine-engine cluster (p. 8).
- **Sonic boom footprint** (p. 8, Fig. 5b): overpressure peaks above 8 psf at 1–2 km from LZ-4 and is about 6 psf at about 300 m. It does not decay monotonically, unlike Anderson et al.'s plateau within 2 km. Turbulent focusing/defocusing and trajectory differences are suggested.
- **SATURN validation** (p. 8–10, Fig. 6):
  - At 1.1 and 2.6 km, running OASPL agrees within 1 dB around the peak. After about 100 s the model is slightly low at 1.1 km and high at 2.6 km.
  - At 5.9 km SATURN overpredicts the first 40 s; the measured peak arrives at 45–50 s. Terrain shielding is the likely cause, which motivates ray tracing (p. 9–10).
  - Spectra: at 1.1 km SATURN peaks at about 12 Hz against 20–30 Hz measured. SATURN overpredicts low-frequency energy at 2.6 and 5.9 km (p. 10).
  - Comparisons start at T+5 s because SATURN does not model the deflected plume or ground-level propagation (p. 9).
- **Overall directivity** (p. 11–13, Fig. 7–8, Table 3):
  - Individual 1-s-block curves peak at about 58–72°. The decibel-averaged curve peaks at 64° for both launches, with a flat 1 dB-down band of 58–72° and a 3 dB-down band of 48–79° (p. 11–12).
  - For comparison: SLS 66°, Antares 230 between 60° and 70° (p. 12).
  - Of the five convective-Mach predictions, M_c (supersonic instability waves, 66°) is closest. M_c′, M_O and M_κ give about 70–72°, too far aft. M_c″ (subsonic waves) gives 55°, inside the 3 dB band (p. 12).
  - Possible biases: assumed source location 18 D_eff downstream of the exit, straight-ray propagation (ray tracing suggests this overestimates angles by 2–3°), and no moving-source correction (p. 12–13).
- **Frequency-dependent directivity** (p. 13, Fig. 9):
  - Below Sr = 0.004 the peak is at the shallowest angles (10–30°). The peak angle moves forward with Sr: about 38° at Sr = 0.004 and about 60° at Sr = 0.0125, both with a maximum Q of 6 dB.
  - Above Sr = 0.0125 all bands peak at 60–75°. The authors take this as evidence that both KH (72°) and supersonic (66°) waves radiate.
  - The overall directivity index peaks at 64° with Q_max,OA = 5 dB, which confirms the 5 dB used in Eq. 1 (p. 13).
- **Sound power and efficiency** (p. 13–15, Table 4, Fig. 10):
  - The Eq. 3 prediction with η = 0.33% is 195.7 dB (p. 14).
  - Measured, decibel-averaged over six stations and two launches: L_W,OA = 195.4 dB (σ = 0.7 dB), η = 0.30% (σ = 0.05%). This is below the SP-8072 assumption of 0.5% and in line with other modern rockets (p. 14).
  - L_W,OA is within about 2 dB out to about 2 km, then decays clearly with distance (to about 183–188 dB near 10 km). Nonlinear propagation has been hypothesised for this but not tested (p. 14–15).
  - Mathews et al. 2021 (6–12 km) got 196 dB, η = 0.34%, but did not account for ground reflection; with it their value would drop to 193–194 dB. The near-pad data are therefore the better source estimate (p. 15).
- **Sound-power spectra** (p. 15–16, Fig. 11–12):
  - Average one-third-octave L_W peaks at 40 Hz (TRACERS, flat 20–40 Hz) and 31.5 Hz (NAOS). Compare SLS about 17 Hz and a T-7A at afterburner about 100 Hz (p. 15).
  - Spectra collapse within 3 dB below 20 Hz but spread by 6 dB at 2 kHz. The closest stations (12, 13) have the most high-frequency energy, and this spread causes most of the L_W,OA variation. The cause is unclear (atmospheric turbulence is suggested); a nine-plume vehicle should not have azimuthal asymmetry (p. 15).
  - Normalised narrowband spectra peak at Sr = 0.010 (measured) and 0.011 (SATURN), below SLS (0.015) and SP-8072 (0.02) (p. 15–16). The conclusion contrasts this with 0.1–0.3 for military jets (p. 18).
- **Scaled OASPL** (p. 16–17, Table 5, Fig. 13):
  - L_max scaled to 100 D_eff (276 m), with 5.8 dB taken off for ground pressure doubling: 142.6 dB (σ = 0.7 dB). Station 13 (about 103 D_eff) gives 147.2 − 5.8 = 141.4 dB directly, within 1.2 dB (p. 16–17).
  - Mathews et al. 2021's 143 dB becomes about 137 dB once ground reflection is removed, as expected from extra long-range losses (p. 16).
  - Other vehicles: SLS 145.4 dB, or 139.6 dB once ground reflection is removed, so Falcon 9 is about 3 dB louder despite lower thrust (attributed to SLS's low η). GEM-63 static firings 143–144 dB, RSRM about 141–142 dB at 100 D_eff (p. 17).
  - Against Oertel convective Mach number, Falcon 9 (M_O = 2.81) sits near earlier rocket points (M_O ≈ 2.1–2.4, about 142–143 dB) and well below the extrapolated Greska et al. fit (about 146 dB at M_O = 2.8, read from Fig. 13). Since η no longer grows with U_j for supersonic jets, M_O stops being a good scaling variable at rocket conditions (p. 17).

## Setup / method
- **Vehicle** (p. 3–4, Table 1, Appendix p. 18): Falcon 9 Block 5, nine Merlin 1D (RP-1/LOX) engines, 845 kN each, 7.6 MN at liftoff. Parameters come from SpaceX's thrust figure plus NASA CEARUN (Table 6). Throat diameter is used to derive exit and fully expanded diameters, matching Mathews et al. 2021. The authors note that a 10% thrust change gives only a 0.4 dB change in L_W,OA (p. 18).
- **Campaigns** (p. 4–5, Table 2): TRACERS (11:13 am PDT, 64.4 °F, 68.0% RH, 10 mph N wind) and NAOS (11:53 am PDT, 69.8 °F, 68.6% RH, 9 mph WNW wind) (p. 7). Station positions were nominally the same for both launches; LZ-4 is about 400 m west of SLC-4.
- **Instrumentation** (p. 5): PUMA briefcase systems with NI 9250/9234 cards at 102.4 kHz (< 5 km) or 51.2 kHz (> 5 km).
  - Within 1 km: GRAS ¼-inch 46BG/BD/BE microphones. Further out: GRAS 47AC or PCB 378A07 ½-inch infrasound microphones.
  - Pole-shift digital filtering extends the low-frequency response of the ¼-inch microphones.
  - Microphones are inverted over a plastic ground plate inside a foam windscreen, so they measure ground-plane (pressure-doubled) levels. This is the same setup as BYU's SLS and Starship campaigns.
- **Source-analysis subset** (p. 5, 10): Stations 10–15, 240–750 m (87–271 D_eff) from SLC-4. The authors treat these as far field on average because the four analyses give consistent results across stations.
- **Directivity method** (p. 11–13): trajectory data give the angle θ from the plume axis to each microphone over time. Assumptions: an acoustic source 18 D_eff downstream of the exit, straight rays, no moving-source correction.
  - Overall directivity: OASPL in 1-s blocks, corrected to 100 D_eff, plotted for θ = 85° to 10° (the range is limited by station elevation and vehicle pitch-over).
  - Frequency-dependent directivity index Q(θ, Sr): 4-s blocks with 75% overlap, to average down to 1 Hz. Block sizes of 1–4 s with 0–75% overlap move the peak angle by less than 2° (p. 13).
  - Six stations and two launches are decibel-averaged.
- **Sound power** (p. 14): Anderson's (2026 thesis) single-microphone moving-source method. Trajectory data sweep the vehicle past a fixed microphone, so one microphone samples many angles; the directivity is then integrated over the sphere. It is applied to the overall level and to each band (giving L_W(f)). η = W / W_m with W_m = ½ F U_e n.
- **Spectral processing:**
  - Event SEL spectra are Z-weighted. The launch and landing segments were lengthened (to T+13–21 s and T+460–464 s) and the boom segment zero-padded, to improve low-frequency resolution (p. 6–7).
  - SATURN comparison spectra use the 3 dB-down period around L_max, converted to autospectral density units (p. 10).
  - The Strouhal number uses exit parameters, Sr = f D_e/U_e. Mathews & Gee showed that using exit rather than fully expanded parameters makes negligible difference (p. 15).
- **SATURN** (p. 8–9): BYU's empirical model (Mathews 2025 thesis, ch. 6), built from SP-8072 methods and one Atlas V 401 launch, previously validated on Firefly Alpha and Starship Super Heavy. Inputs are the trajectory and engine parameters. It predicts time- and frequency-resolved levels at any location using sound-power-spectrum and directivity-index models.
  - Not included: the deflected plume, ground-level propagation, terrain shielding, atmospheric turbulence, and comprehensive nonlinear propagation.
- **No flow-field measurements or simulations.** The "modelling" is empirical (McInerny/SP-8072/SATURN) plus convective-Mach-number theory (Tam & Hu 1989 instability-wave families, Oertel). There is no LES, stability analysis or propagation code beyond what SATURN contains.

## Key equations
- McInerny-type peak OASPL model (eq. 1, p. 7):
  $L_{\max}=10\log_{10}\!\left(\dfrac{\tfrac12\eta F U_e n}{W_{\mathrm{ref}}}\right)-10\log_{10}(4\pi r^2)+Q_{\max,\mathrm{OA}}+20\log_{10}\delta$,
  with F the thrust per engine, U_e the exit velocity, n the number of engines, W_ref = 1 pW, η = 0.33%, Q_max,OA = 5 dB, δ = 1.9 (ground pressure doubling, 20 log₁₀ 1.9 ≈ 5.6 dB; the text subtracts 5.8 dB elsewhere, p. 16). r is measured from the nozzle exit plane.
- Predicted sound power (eq. 3, p. 14): $L_{W,\mathrm{OA}}=10\log_{10}\!\left(\tfrac12\eta F U_e n/W_{\mathrm{ref}}\right)$ gives 195.7 dB. *Check:* ½ × 0.0033 × 845 kN × 2984 m/s × 9 ≈ 3.74 × 10⁷ W, i.e. 195.7 dB re 1 pW. The mechanical power W_m ≈ 1.13 × 10¹⁰ W.
- Mach-wave angle (eq. 2, p. 10): $\theta_M=\cos^{-1}(1/M)$, θ from the plume axis, M a convective Mach number.
- Convective Mach numbers (Table 3, p. 11), with $M_{ac}=U_j/c_a$:
  $M_c'=\dfrac{M_{ac}+c_j/c_a}{1+c_j/c_a}$ (KH), $M_c=\dfrac{M_{ac}}{1+c_j/c_a}$ (supersonic), $M_c''=\dfrac{M_{ac}-c_j/c_a}{1+c_j/c_a}$ (subsonic), $M_O=\tfrac12(M_c'+M_c)$ (Oertel), $M_\kappa=\kappa U_j/c_a\approx\sqrt{M_{ac}}$ (κ ≈ 1/√M_ac; Gee et al. 2025).
- Effective diameter: $D_{\mathrm{eff}}=\sqrt{n}\,D_e$ = 3 × 0.92 = 2.76 m (p. 5, Table 1).

> Equations 1 and 3 and Table 3 were re-typed from rendered pages 7, 11 and 14 (the text extraction garbled them). Check: with U_j = 2904 m/s, c_j = 838 m/s and c_a ≈ 343 m/s (my assumption; c_a is not stated), M_ac ≈ 8.47 and c_j/c_a ≈ 2.44, which reproduce all five tabulated M and θ_M values to within rounding.

## Data tables
**Table 1 (p. 4): Merlin 1D parameters** (CEARUN-derived)

| Quantity | Value |
|---|---|
| Exit / fully expanded temperature | 1402 K / 1532 K |
| Exit / fully expanded pressure | 65,406 Pa / 101,300 Pa |
| Exit / fully expanded sound speed | 804 / 838 m/s |
| Exit / fully expanded velocity | 2984 / 2904 m/s |
| Exit / fully expanded Mach number | 3.713 / 3.465 |
| γ at exit | 1.257 |
| D_e / D_j / D_eff / D_t | 0.92 / 0.79 / 2.76 / 0.23 m |
| Thrust (per engine) | 845 kN |

CEARUN inputs (Table 6, p. 18): ambient 101.3 kPa, chamber 10.8 MPa, area ratio 16, O/F 2.36, RP-1/LOX, frozen (NFZ = 1). The engine is overexpanded at the exit (p_e ≈ 0.65 p_a), which implies shock cells near the exit.

**Table 2 (p. 5): source-analysis stations**

| Station | r re SLC-4 (m) | φ re SLC-4 (°) | r re LZ-4 (m) | φ re LZ-4 (°) |
|---|---|---|---|---|
| 10 | 750 | 357 | 750 | 30 |
| 11 | 455 | 40 | 751 | 71 |
| 12 | 240 | 107 | 667 | 105 |
| 13 | 285 | 157 | 641 | 125 |
| 14 | 703 | 291 | 282 | 300 |
| 15 | 652 | 325 | 430 | 5 |

**Table 3 (p. 11): convective Mach predictions for Falcon 9**

| | M | θ_M (°) |
|---|---|---|
| M_c′ (KH) | 3.17 | 72 |
| M_c (supersonic) | 2.46 | 66 |
| M_c″ (subsonic) | 1.75 | 55 |
| M_O (Oertel) | 2.81 | 69 |
| M_κ | 2.91 | 70 |
| **Measured peak** | — | **64** (1 dB band 58–72) |

**Table 4 (p. 14): sound power and efficiency**

| Station | TRACERS L_W,OA (dB re 1 pW) | η (%) | NAOS L_W,OA | η (%) |
|---|---|---|---|---|
| 10 (750 m) | 194.7 | 0.26 | 194.3 | 0.24 |
| 11 (455 m) | 195.5 | 0.31 | 195.3 | 0.30 |
| 12 (240 m) | 196.0 | 0.35 | 196.6 | 0.40 |
| 13 (285 m) | 196.5 | 0.39 | 195.5 | 0.31 |
| 14 (703 m) | 195.0 | 0.28 | 194.9 | 0.27 |
| 15 (652 m) | 194.9 | 0.27 | 195.4 | 0.31 |
| **Average** | **195.4** | **0.31** | **195.3** | **0.30** |

> Check: arithmetic means are 195.43/0.310 (TRACERS) and 195.33/0.305 (NAOS), matching the table. The text gives the overall average as 195.4 ± 0.7 dB and 0.30 ± 0.05% (p. 14).

**Table 5 (p. 16): L_max scaled to 100 D_eff (276 m), ground doubling removed** (dB re 20 µPa)

| Station | TRACERS | NAOS |
|---|---|---|
| 10 | 141.8 | 141.2 |
| 11 | 142.2 | 142.2 |
| 12 | 141.9 | 143.0 |
| 13 | 143.4 | 143.4 |
| 14 | 142.7 | 142.8 |
| 15 | 142.8 | 143.7 |
| **Average** | **142.5** | **142.7** |

> Check: means are 142.47 and 142.72; overall 142.6 ± 0.7 dB (p. 16).

**Derived (my estimates, not stated):** with Sr = f D_e/U_e (D_e = 0.92 m, U_e = 2984 m/s), Sr = 0.010 corresponds to about 32 Hz, consistent with the 31.5–40 Hz one-third-octave peaks. If D_eff were used instead it would be about 11 Hz, so the Strouhal number here is per-engine exit diameter. Sr = 0.004 and 0.0125 then correspond to about 13 Hz and 40 Hz.

## Figures worth remembering
- **Fig. 3 (p. 6):** full 500-s pressure record at 750 m with insets of IOP, crackle-laden launch waveform (±500 Pa), triple-shock flyback boom (N-wave-like, ±300 Pa) and landing-burn waveform.
- **Fig. 4 (p. 7):** SEL spectra of the four events; launch peaks about 20–30 Hz at about 132 dB, boom peaks about 3 Hz, IOP about 2–3 Hz, landing about 70–80 Hz.
- **Fig. 5 (p. 8):** (a) L_max vs distance, 0.2–38 km, both launches against Eq. 1; (b) boom peak overpressure vs distance from LZ-4.
- **Fig. 6 (p. 9):** SATURN vs measured running OASPL and one-third-octave spectra at 1.1, 2.6, 5.9 km.
- **Fig. 7–8 (p. 12):** overall directivity at 100 D_eff per station and averaged, with ±1σ bands; flat peak at 58–72°, maximum about 141 dB at 64°.
- **Fig. 9 (p. 13):** Q(θ, Sr) map and selected slices (Sr = 0.004 to 1.25). Peak angle rises with Sr up to Sr ≈ 0.0125, then stays at 60–75°.
- **Fig. 10 (p. 14):** L_W,OA vs distance; flat to about 2 km, then decays to about 183–188 dB at 6–12 km.
- **Fig. 11 (p. 15):** one-third-octave L_W spectra per station; high-frequency spread at 2 kHz.
- **Fig. 12 (p. 16):** normalised narrowband sound-power spectra vs Sr: Falcon 9 and SATURN peak at about 0.01, SP-8072 at 0.02, with the measured high-frequency slope steeper than SP-8072.
- **Fig. 13 (p. 17):** scaled L_max vs Oertel M_O with the Greska et al. fit; rocket points plateau at about 142–143 dB.

## Notation
- L_max: maximum 1-s-averaged unweighted OASPL. L_W,OA, L_W: overall and spectral sound power level (re 1 pW). η: acoustic efficiency (W/W_m). Q(θ, Sr), Q_max,OA: directivity index.
- θ: polar angle from the plume axis (downstream = 0°). φ: azimuth from the pad. δ: ground reflection coefficient (1.9).
- D_e, D_j, D_eff = √n D_e, D_t: exit, fully expanded, effective, throat diameter. U_e, U_j, c_e, c_j, c_a: exit/fully expanded velocity and sound speeds, ambient sound speed.
- M_ac = U_j/c_a (acoustic Mach number); M_c′, M_c, M_c″ (KH, supersonic, subsonic instability-wave convective Mach numbers, Tam & Hu 1989); M_O (Oertel mean); M_κ = κ U_j/c_a.
- Sr = f D_e/U_e. IOP: ignition overpressure. RTLS: return to launch site. OTO: one-third octave. PUMA: BYU's portable acquisition unit.

## Relevance to this project
This is full-scale rocket field acoustics from BYU, not Shock Lab work, but it shows the far-field end of the same heated supersonic-jet physics the project studies (see CLAUDE.md).
- **Mach-wave radiation and instability-wave families:** the directivity is interpreted entirely through Tam & Hu's three instability-wave families and convective Mach number (p. 10–13). At M_ac ≈ 8.5 the authors argue that supersonic (and possibly subsonic) instability waves radiate, not just KH. This is far beyond lab conditions, but the same framework applies when reading SPOD or wavenumber-filtered schlieren of heated jets.
  - A lab test: in time-resolved schlieren, measure the phase speed of the leading SPOD mode (k_x from a streamwise FFT, as in [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md) and [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)) and compare it with the M_c′/M_c/M_κ predictions and the measured far-field peak angle.
  - The κ ≈ 1/√M_ac rule (Gee et al. 2025) is a quick convection-speed estimate for checking the KH branch of SPOD modes.
- **Shock cells, BBSAN and screech:** Merlin 1D is overexpanded at sea level (p_e ≈ 0.65 p_a, Table 1), so shock cells exist. The paper does not discuss BBSAN or screech; the clustered, merging nine-plume configuration and the 64° peak are interpreted as Mach-wave dominated. There is no tonal content reported.
- **Impingement/pad effects:** the IOP is strongly directional, set by the flame-trench orientation (6 dB difference between north and south, p. 5). SATURN cannot model the deflected plume, so comparisons start at T+5 s (p. 9). The authors also caution that static-fired motors impinge on the ground or hillsides, which complicates comparing scaled levels (p. 17). This links to impinging-jet feedback in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md) and to the flame-deflector prediction in [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md).
- **Nonlinear propagation and crackle:** the launch waveform is shock-dominated (crackle) with a weak-shock 10 dB/decade roll-off to 10 kHz (p. 5–6). Sound power decays with distance beyond about 2 km and spectra spread at high frequency even within 1 km (p. 14–15). These are relevant for interpreting near-field microphone spectra in lab acoustics, where the same steepening appears at smaller scale.
- **Methods and data requirements:** all analyses use time-resolved single-microphone pressure records. Key parameters: 1-s blocks for overall directivity; 4-s blocks with 75% overlap for Q(θ, Sr) (insensitive within 2° to 1–4 s blocks and 0–75% overlap); sound power from a single moving-source sweep; 3 dB-down windows for "maximum" spectra; pole-shift filtering for low-frequency correction. None of these suit non-time-resolved PIV. There is no modal decomposition, but the moving-source, single-microphone method treats time as an angle sweep, so the "frequency" analyses here mix time, angle and vehicle altitude. The paper itself notes the block-size/angular-resolution trade-off (p. 11).
  - No intermittency, Hilbert or wavelet analysis is done. The time-varying OASPL records (Fig. 6) and the 1-s-block directivity scatter (58–72°, p. 11) could in principle be examined with time-frequency methods, but the vehicle motion confounds source changes with geometry.
- **Empirical modelling:** SATURN, the McInerny model and SP-8072 are the "modelling" side. They are empirical with only Strouhal and directivity scalings; no LES or stability analysis is used. The paper argues that a physics-based source model is needed to predict new vehicles (p. 10). Tie-ins: [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) (Eq. 1 source), [mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) (SATURN), [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md) (frequency-dependent directivity), [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (SP-8072 update).
- **Agreement and disagreement with related notes:**
  - Updates [mathews-2021-falcon-9-far-field-noise.md](mathews-2021-falcon-9-far-field-noise.md): same 64° peak angle, but lower L_W,OA (195.4 vs 196 dB). That paper's scaled L_max (143 dB) drops to about 137 dB once its missing ground-reflection correction is applied, about 6 dB below the near-pad 142.6 dB, as expected from uncorrected long-range losses (p. 15–16).
  - η ≈ 0.30% agrees with the modern-rocket trend below SP-8072's 0.5% (p. 14); compare [gee-2023-sls-artemis-i-far-field-noise.md](gee-2023-sls-artemis-i-far-field-noise.md) (SLS peak 66°, Sr 0.015, scaled 139.6 dB) and [gee-2024-starship-super-heavy-far-field-noise.md](gee-2024-starship-super-heavy-far-field-noise.md) (same PUMA setup; landing noise comparable to launch).
  - The flyback boom ties to [gee-2026-falcon-9-ascent-sonic-boom.md](gee-2026-falcon-9-ascent-sonic-boom.md).
  - Near-field source-location context: [gee-2016-near-field-intensity-static-rocket-firings.md](gee-2016-near-field-intensity-static-rocket-firings.md) and [gee-2010-near-field-vector-intensity-solid-rocket-motor.md](gee-2010-near-field-vector-intensity-solid-rocket-motor.md) (relevant to the assumed 18 D_eff source location).
- **Related works cited:** Tam & Hu 1989 (three instability-wave families), Gee, Olaveson & Mathews 2025 (convective Mach number and directivity, AIAA J), Greska et al. 2008 (high-temperature supersonic jets), Jordan & Colonius 2013 (wavepackets), Anderson 2026 thesis (rocket sonic booms, sound-power method), Kellison & Gee 2023 (SLS vs Saturn V sound power), Carlston et al. 2025 (ray tracing of Falcon 9 noise). Candidates for `/add-paper`.
