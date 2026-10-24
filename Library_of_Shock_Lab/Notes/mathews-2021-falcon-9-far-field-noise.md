---
key: "mathews-2021-falcon-9-far-field-noise"
title: "Characterization of Falcon 9 launch vehicle noise from far-field measurements"
authors: ["Mathews, L. T.", "Gee, K. L.", "Hart, G. W."]
year: 2021
type: "article"
venue: "JASA 150(1), 620–633"
bib: {"journal": "The Journal of the Acoustical Society of America", "volume": "150", "number": "1", "pages": "620--633"}
doi: "10.1121/10.0005658"
arxiv: ""
pdf: "rocket-noise-measurements/Mathews-EtAl_2021_Characterization-Of-Falcon-9-Launch-Vehicle-Noise-From-Far-Field-Measurements.pdf"
version: "published"
unverified: []
group: false
facility: "Vandenberg SFB launches (BYU far-field stations)"
data: ["microphones-far", "full-scale"]
methods: ["PSD", "empirical-model", "propagation-model"]
flow: ["rocket-plume", "launch-vehicle", "supersonic", "heated", "overexpanded"]
phenomena: ["directivity", "acoustic-efficiency", "Mach-wave-radiation", "mixing-noise", "nonlinear-propagation", "ignition-overpressure", "installation-effects"]
params: {"vehicle": "Falcon 9 (9 × Merlin 1D)", "M_j": "3.38", "M_e": "3.53", "D_e": "0.92 m (equivalent 2.76 m)", "T_j": "1879 K", "range": "7–14 km"}
topics: ["rocket-noise-measurements", "rocket-noise-models"]
related: ["lubert-2022-supersonic-jet-noise-launch-vehicles-review", "kellison-2026-falcon-9-noise-two-campaigns", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "james-2012-directivity-curves-rocket-noise-model", "kenny-2009-space-shuttle-srm-plume-acoustics", "gee-2026-falcon-9-ascent-sonic-boom", "gee-2023-sls-artemis-i-far-field-noise"]
cites: ["gee-2016-near-field-intensity-static-rocket-firings", "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "kenny-2009-space-shuttle-srm-plume-acoustics", "mcinerny-1996-launch-vehicle-acoustics-overall-levels-spectra", "mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation", "tam-1995-supersonic-jet-noise", "tsutsumi-2015-epsilon-liftoff-acoustics"]
summary: "Three VSFB Falcon 9 launches at 7–14 km: peak directivity ≈64° matched by Oertel M_co minus vehicle Mach; OAPWL 196 dB (η ≈ 0.34%); OASPL_max models within 1–2 dB; f_pk 21 Hz"
---
# Characterization of Falcon 9 launch vehicle noise from far-field measurements

- **Authors:** L. T. Mathews, K. L. Gee, G. W. Hart (Brigham Young University, Dept. of Physics and Astronomy)
- **Source:** J. Acoust. Soc. Am. 150(1), 620–633 (July 2021), Special Collection on Supersonic Jet Noise. Received 29 Mar 2021, published online 27 Jul 2021. DOI: 10.1121/10.0005658
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-measurements/Mathews-EtAl_2021_Characterization-Of-Falcon-9-Launch-Vehicle-Noise-From-Far-Field-Measurements.pdf` (15 pp.; PDF p. 1 is a publisher cover sheet). Page refs below are **journal page numbers** (620–633); PDF page = journal page − 618.
- **Tags:** rocket noise, launch vehicle, Falcon 9, Merlin 1D, far-field acoustics, OASPL directivity, Mach wave radiation, Oertel convective Mach number, forward-flight effect, sound power, radiation efficiency, peak-frequency scaling, Strouhal / Helmholtz number, NASA SP-8072, terrain shielding, thin-barrier diffraction, acoustic shocks, nonlinear propagation

## Summary
BYU recorded three Falcon 9 launches from Vandenberg (IRIDIUM 7 NEXT, SAOCOM 1A, RADARSAT Constellation) with ground-plate microphones 7–14 km from the pad, and used trajectory, radiosonde and terrain data to turn the time histories into source properties. Following McInerny's 1990s far-field work, they extract four quantities: OASPL directivity, overall sound power, maximum OASPL and spectral peak frequency, then test historical empirical models against each. The mean peak radiation angle is about 64° from the plume axis, between the historical static (≈50°) and launched (70–80°) ranges. It is reproduced if the Oertel convective Mach number is reduced by the vehicle Mach number at the time of peak radiation. The sound power (196 dB re 1 pW) implies a radiation efficiency of 0.34%, close to the classic 0.5%, and two independent maximum-OASPL models agree with the data within 1–2 dB. Peak-frequency scaling with the classic Strouhal number collapses rockets but not rockets versus other jets; the Cole (exit sound speed) and Potter & Crocker (critical diameter) scalings do better. A thin-barrier diffraction model explains the terrain shielding at one hilly site. There is no modelling or simulation of the flow: everything is empirical scaling and simple propagation corrections.

## Key findings
- **Waveforms carry acoustic shocks to tens of km** (p. 624–625, Fig. 6): the ignition overpressure (IOP) appears as a noisy low-frequency impulse of 102 dB peak OASPL at t ≈ 0 (p. 624). Near peak directivity (t ≈ 42 s) the waveform has many acoustic shocks (~±20 Pa); shocks remain at t ≈ 100 s and are pronounced even at t ≈ 300 s, when the source is ~65 km away (p. 624).
- **Spectra** (p. 624, Fig. 7b): one-third-octave spectra (4 s blocks) peak near 30 Hz at peak directivity (111 dB OASPL in that block). Even at R > 64 km (t ≈ 300 s) the bandwidth exceeds 100 Hz. Removing the instrument noise floor changes OASPL by < 0.01 dB (p. 624).
- **Running OASPL** (1 s blocks, Fig. 7a, p. 624): after spherical-spreading correction it flattens after t ≈ 100 s, when the angle falls within ~10° of the plume axis (the "cone of relative silence").
- **Directivity** (p. 625, Fig. 8): mean of 7 measurements (3 launches, 2–3 sites each, MC excluded), all scaled to 6.5 km. Peak at ≈64°, 1 dB-down range 58–70°; median within ±1 dB of mean. This is closer to James et al.'s corrected static RSRM prediction (60–65°) than to SP-8072 (≈50°) or Cole et al. launched rockets (70–80°) (p. 624–625).
- **Peak-angle models** (p. 625–627):
  - Static Oertel M_co ≈ 2.81 → θ_pk ≈ 69° (eq. 2), 5° too high but at the top of the 1 dB-down range.
  - Effective M_co,eff = M_co − M_v with M_v ≈ 0.55 at peak → 2.26 → θ_pk ≈ 64°, matching the data (eq. 3).
  - Standard θ_pk = cos⁻¹(c_a/κU_j) with κ = 0.7 gives 81°, far off. Fitting the static 69° needs κ ≈ 0.31, much below the literature range 0.6–0.85; with flight (eq. 5) this κ gives 64° (p. 627). The authors read the small κ as showing how empirical the model is.
  - McInerny's c_e-based version (eq. 6, κ = 0.7) gives 58°, the lower edge of the 1 dB-down range (p. 627).
  - Best: eqs. 2–3 and eq. 5 (with small κ); note eq. 5 does not account for temperature (p. 627).
- **Directivity width** (p. 627): 3 dB-down spread ≈ 30°, similar to RSRM (~30°, Kenny et al.), Fukuda et al. (30–35°), launched Saturn I (~35°) and Cole et al. average 36°; much narrower than Sutherland's model (56°) and Eldred SP-8072 (57°).
- **Sound power** (p. 627–628): hemisphere integration (0–90°, azimuthal symmetry assumed, after Matoza et al.) gives OAPWL = 196 dB re 1 pW. Mechanical power ≈ 11.8 GW; with η = 0.5% this predicts 198 dB. Measured value implies η ≈ 0.34%. Atmospheric losses are not corrected, which may bias η low; the difference is only 2 dB.
- **Maximum OASPL** (p. 628, Fig. 9):
  - McInerny model (eq. 7, Q′ = 8 dB, OAPWL 196 dB) predicts 144 dB at 100 D_e,equiv, against a measured 143 dB. Inverting it from the measured 143 dB gives OAPWL 195 dB, 1 dB below the directivity-based value.
  - Greska et al.'s OASPL_max–M_co curve overpredicts by ~1 dB for Falcon 9 (plotted at M_co − M_v) and ~2 dB for the RSRM (M_co ≈ 2.30, 142 dB).
- **Peak frequency** (p. 628–629, Table III): f_pk = 21 ± 4.4 Hz at θ_pk across launches, with the vehicle ≈ 9 km away. Michel & Michalke's flight model (M_v = 0.55, θ = 65°) suggests a ~23% downward shift from static, about one standard deviation, which cannot be checked here (p. 629).
  - Eldred Sr = fD_e/U_e = 0.019 (rocket range 0.01–0.06); other supersonic jets peak at 0.1–0.3 (Tam) and a military engine at 0.1–0.4 (Schlinker et al.), so an order of magnitude apart.
  - Cole Sr = fD_e/c_e = 0.064 (rockets 0.03–0.1 vs 0.1–0.2 for other jets): better, not complete.
  - Greska Helmholtz fD_e/c_a = 0.17, an order below Greska's ~1.3; fails (consistent with Bogey et al.).
  - Potter & Crocker critical diameter fD_c/c_a = 0.250, inside the 0.1–0.5 rocket/turbojet band; best together with Cole's.
- **Terrain shielding** (p. 630–631, Fig. 10–12): MC (Miguelito Canyon) OASPL is ≥10 dB low until line of sight at h ≈ 2.9 km (predicted t ≈ 44 s); it coalesces within 3 dB of the other sites at ~45 s. Angles across sites differ by ≤10°, small against the 30° directivity width. Shielded spectra lose more high-frequency than low-frequency energy, as for barrier diffraction. After line of sight the spectra coincide, so reverberation at MC seems minor (p. 631).
  - A ~30 m barrier 330 m from MC, with geometric spreading from WF, reproduces the MC spectrum from 1–5 Hz to 30–70 Hz. Above 70 Hz MC has more energy than modelled, which the authors attribute to nonlinear propagation (MC is ~2× further than WF) (p. 631).
  - After ~70 s, EF and MC (different radials) read higher than NF/WF even when scaled to 13.7 km, possibly due to weather-dependent propagation by radial (p. 630).

## Setup / method
- **Vehicle** (p. 621–622, Table I): Falcon 9 first stage, nine RP-1/LOX Merlin 1D engines, 845 kN each at sea level (7.6 MN total). Engine parameters estimated with NASA CEA (equilibrium flow) from public data, P_c ≈ 10.8 MPa.
- **Launches and sites** (p. 622–623, Table II, Fig. 3–4): three launches from the same VSFB pad. Trajectories differ by < 5% in altitude, speed and distance over the first 100 s, which is mostly vertical flight. Measurable angles span 88°–10°. I7N and RC had thick fog; S1A was clear.
- **Data acquisition** (p. 623): NI 9234 + PCB 378A07 low-frequency microphone inverted over a ground plate, 51.2 kHz. Exception: NF at RC used NI 9250 + GRAS 47AC at 102.4 kHz (lower self-noise).
- **Assumptions** (p. 623–624):
  - Spherical-spreading amplitude correction only; nonlinear propagation, atmospheric absorption and refraction are not modelled.
  - Far field assumed: nearest R ≈ 2400 D_e,equiv, against 200–300 D_e,equiv (James et al.) or R ≫ L = 30 exit diameters (McInerny); so no downstream source-location correction.
  - Straight rays at a mean 340 m/s. Radiosonde effective sound speed varies by ±10 m/s below 5 km, giving < 1 dB amplitude error at peak directivity (Fig. 5, p. 624). All times are observer times.
- **Signal processing** (p. 624, 630): running OASPL in 1 s blocks; one-third-octave spectra from 4 s blocks (Fig. 7b) or 8 s windows (Fig. 11). Single microphones per site; no array or time-frequency method beyond block statistics. Data are time-resolved pressure, but no spectral modal decomposition is used.
- **Modelling side:** no CFD, LES or stability analysis. Models are empirical: convective-Mach-number θ_pk relations (eqs. 1–6), radiation-efficiency power model, McInerny OASPL_max (eq. 7), Greska OASPL–M_co curve, four Strouhal scalings (eqs. 8–11), Michel–Michalke flight shift, and Maekawa/Kurze–Anderson thin-barrier attenuation (eqs. 12–14).

| Merlin 1D (per engine, sea level) | Value | Merlin 1D | Value |
|---|---|---|---|
| T_e exit temperature | 1786 K | M_e | 3.531 |
| T_j fully expanded temperature | 1879 K | M_j | 3.377 |
| P_e exit pressure | 75.8 kPa (overexpanded) | γ_e | 1.22 |
| P_j | 101 kPa | D_e | 0.92 m |
| c_e exit sound speed | 876 m/s | D_j | 0.83 m |
| c_j | 898 m/s | D_e,equiv = D_e√9 | 2.76 m |
| U_e exit velocity | 3092 m/s | D_t throat | 0.23 m |
| U_j | 3029 m/s | Thrust | 845 kN |

> Table I was rebuilt from the rendered page 622 because the text layer misaligned symbols and values.

## Key equations
- Oertel convective Mach number (eq. 1, p. 625): $M_{co}=\dfrac{U_j+\tfrac12 c_j}{c_j+c_a}$ → (3029 + 449)/(898 + 340) = 2.81 ✓.
- Peak angle (eq. 2, p. 626): $\theta_{pk}=\cos^{-1}(1/M_{co})$ → 69°.
- Flight correction (eq. 3, p. 626): $M_{co,\mathrm{eff}}=M_{co}-M_v$, M_v ≈ 0.55 re c_a = 340 m/s → 2.26 → 63.7° ✓.
- Convective-velocity form (eq. 4, p. 627): $\theta_{pk}=\cos^{-1}(c_a/U_c)=\cos^{-1}(c_a/\kappa U_j)$; κ = 0.7 → 80.8° ✓; κ ≈ 0.31 → 69°.
- With flight (eq. 5, p. 627): $\theta_{pk}=\cos^{-1}\!\big(1/(M_c-M_v)\big)=\cos^{-1}\!\big(c_a/(\kappa U_j-U_v)\big)$; κ = 0.31, U_v = 187 m/s → 63° ✓.
- McInerny (eq. 6, p. 627): $\theta_{pk}=\cos^{-1}(c_a/\kappa c_e)$; paper quotes 58° for κ = 0.7.
- Maximum OASPL (eq. 7, p. 628): $\mathrm{OASPL}_{max}=10\log_{10}\!\big(\eta W_m/10^{-12}\,\mathrm W\big)-10\log_{10}(4\pi R^2)+10\log_{10}Q(\theta_{pk})=\mathrm{OAPWL}-10\log_{10}(4\pi R^2)+Q'$, η = 0.005, Q′ = 8 dB. Check: 196 − 10log₁₀(4π·276²) + 8 = 144.2 dB ✓.
- Strouhal forms (eqs. 8–11, p. 628–629): $fD_e/U_e$, $fD_e/c_e$, $fD_e/c_a$, and $\dfrac{fD_c}{c_a}=\dfrac{fD_t}{c_a}\sqrt{\left(\dfrac{2}{\gamma+1}\right)^{\gamma/(\gamma-1)}\dfrac{P_t}{P_a}}$; equivalent diameters $D_{equiv}=D\sqrt N$.
- Thin barrier (eqs. 12–14, p. 631): Fresnel number $N_1=(r_s+r_r-R_1)/(\lambda/2)\approx r_\perp^2/(\lambda r_\parallel)$; attenuation $B_1=5+20\log_{10}\!\left(\sqrt{k r_\perp^2/r_\parallel}\,\big/\tanh\sqrt{k r_\perp^2/r_\parallel}\right)$, with r⊥ ≈ 30 m, r∥ ≈ 330 m.

> Own checks: mechanical power ½·(9×845 kN)·U_e ≈ 11.8 GW ✓, η·W_m at 0.5% → 197.7 dB ✓, 196 dB → η ≈ 0.34% ✓; Sr values 0.019 and 0.170 reproduce with f = 21 Hz, D = 2.76 m ✓. **Not reproduced:** eq. 6 gives 56° (not 58°) with c_e = 876 m/s; fD_e/c_e gives 0.066 (paper 0.064); and eq. 11 with D_t = 0.23 m, P_t/P_a ≈ 107, γ = 1.22, N = 9 gives ≈ 0.33 rather than 0.250, so the paper's D_c inputs (P_t, γ, how √N is applied) are uncertain. Eq. 13's text calls the Fresnel number an "index of refraction" (a slip). Check these against the PDF before reuse.

## Data tables
**Table II (p. 623): sites**

| Site | d_mean (km) | Launches |
|---|---|---|
| NF (North Field) | 8.28 | I7N, S1A, RC |
| WF (West Field) | 7.34 | I7N, S1A, RC |
| EF (East Field) | 11.39 | RC |
| MC (Miguelito Canyon) | 13.68 | RC |

**Table III (p. 629): peak Strouhal numbers (D_e,equiv, f_pk = 21 Hz)**

| Formulation | Sr | Typical range quoted |
|---|---|---|
| f D_e/U_e (Eldred) | 0.019 | rockets 0.01–0.06; other supersonic jets 0.1–0.3 |
| f D_e/c_e (Cole et al.) | 0.064 | rockets 0.03–0.1; others 0.1–0.2 |
| f D_e/c_a (Greska et al.) | 0.170 | lab/rocket collapse ~1.3 |
| f D_c/c_a (Potter & Crocker) | 0.250 | rockets/turbojets 0.1–0.5 |

**Summary of source quantities**

| Quantity | Falcon 9 | Model / literature |
|---|---|---|
| θ_pk | ≈64° (1 dB-down 58–70°) | 69° (M_co), 64° (M_co − M_v), 81° (κ = 0.7), 58° (McInerny) |
| 3 dB-down width | ≈30° | 30–36° (most data); 56–57° (Sutherland, Eldred) |
| OAPWL | 196 dB re 1 pW | 198 dB at η = 0.5% |
| η | 0.34% | 0.5% (Eldred), 1% upper bound |
| OASPL_max at 100 D_e,equiv | 143 dB | 144 dB (McInerny), ~144 dB (Greska) |
| f_pk at θ_pk | 21 ± 4.4 Hz | — |

## Figures worth remembering
- **Fig. 1–2 (p. 622):** geometry (d, h, R, θ re exhaust axis); RC trajectory with t = 0, 44, 100, 300 s marked.
- **Fig. 4 (p. 623):** elevation profiles; MC sits behind 300–400 m terrain.
- **Fig. 5 (p. 624):** effective sound-speed profiles from radiosondes.
- **Fig. 6 (p. 625):** full RC/WF waveform with 0.5 s insets: IOP, shock-laden peak-directivity signal, shocks still present at 300 s.
- **Fig. 7 (p. 626):** running OASPL, measured and spreading-corrected, with angle; one-third-octave spectra at the four times.
- **Fig. 8 (p. 626):** mean OASPL directivity at 6.5 km with ±1σ band; peak ≈115 dB at ≈64°.
- **Fig. 9 (p. 628):** Greska OASPL_max–M_co curve with 1963 rocket data, RSRM and Falcon 9.
- **Fig. 10–11 (p. 630):** OASPL and angle versus time at four sites; spectra before and after MC line of sight.
- **Fig. 12 (p. 631):** WF spectrum + spreading + thin barrier against MC.

## Notation
- θ: observer angle re rocket exhaust (plume) axis; θ_pk: angle of peak OASPL. R: slant range; d: ground range; h: altitude.
- U, c, T, P, D with subscripts e (exit), j (fully expanded), a (ambient), t (throat), c (critical); D_e,equiv = D_e√N for N = 9 engines.
- M_co: Oertel convective Mach number; M_v, U_v: vehicle Mach number and speed; κ: U_c/U_j.
- η: radiation efficiency; W_m: mechanical power; OAPWL: overall sound power level re 1 pW; Q′: directivity index (dB).
- IOP: ignition overpressure. NF/WF/EF/MC: sites. I7N/S1A/RC: launches. GS: geometric spreading.

## Relevance to this project
The user's work is on supersonic jet resonance and feedback with schlieren, acoustics and modal decomposition (CLAUDE.md). This is a full-scale field-acoustics paper with no flow measurement or simulation, so its value is as context and as a set of scaling checks for heated, highly supersonic jets.
- **Mach wave radiation and convective Mach number:** the peak-angle analysis is a direct, full-scale test of θ_pk = cos⁻¹(c_a/U_c). The very low κ ≈ 0.31 needed for rockets (vs 0.6–0.85 for lab jets) signals that convection speeds in heated rocket plumes, or the choice of characteristic velocity, don't transfer from lab jets (p. 627). In lab schlieren, the phase speed of KH wavepackets from SPOD modes (as in [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md) or [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md)) gives U_c directly, so one could test the M_co and κ relations for heated or high-M_j lab jets.
- **No screech or BBSAN discussion:** the Merlin 1D is overexpanded (P_e = 75.8 kPa < P_a, Table I), so shock cells exist, but the paper says nothing about BBSAN or screech; the spectrum is dominated by mixing noise peaking at Sr ≈ 0.02 (p. 629). For shock-associated content in rocket plumes, see the near-field siblings ([gee-2016-near-field-intensity-static-rocket-firings.md](gee-2016-near-field-intensity-static-rocket-firings.md), [gee-2010-near-field-vector-intensity-solid-rocket-motor.md](gee-2010-near-field-vector-intensity-solid-rocket-motor.md)).
- **Impingement / pad noise:** the IOP is noted but not analysed, and the first seconds (plume on the flame trench) are mostly terrain-shielded here. Pad and deflector physics are in [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md); compare the impinging-jet feedback picture in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md).
- **Methods versus data type:** all analyses use time-resolved single-microphone pressure with block statistics (1 s running OASPL, 4–8 s one-third-octave spectra). These are the "basic statistics first" step of the workflow. Non-stationarity is handled only by short blocks along a moving-source trajectory; no wavelets, Hilbert transforms or SPOD. With a microphone array, the slowly varying angle and range make this a natural case for time-frequency tracking (e.g. Hilbert-based instantaneous amplitude/frequency) of the peak band, but the paper does not do it.
- **Nonlinear propagation / intermittency:** acoustic shocks persist to ~65 km (p. 624), and the excess >70 Hz at MC is ascribed to nonlinear steepening (p. 631). Statistics of these waveforms (skewness, derivative skewness) are left to future work; see McInerny's papers cited and [gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md).
- **Source-location and directivity models:** links to [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md) (the corrected RSRM directivity this paper agrees with; cited as Proc. Mtgs. Acoust. 18, 040008) and [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md). The radiation-efficiency and OASPL_max models are developed further in [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) and [mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md); the SP-8072 context is reviewed in [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md).
- **Later launch campaigns:** compare with [kellison-2026-falcon-9-noise-two-campaigns.md](kellison-2026-falcon-9-noise-two-campaigns.md), [gee-2023-sls-artemis-i-far-field-noise.md](gee-2023-sls-artemis-i-far-field-noise.md), [gee-2024-starship-super-heavy-far-field-noise.md](gee-2024-starship-super-heavy-far-field-noise.md) and [reichman-2018-qm2-srm-far-field-acoustics.md](reichman-2018-qm2-srm-far-field-acoustics.md). Ascent sonic booms from the same vehicle are in [gee-2026-falcon-9-ascent-sonic-boom.md](gee-2026-falcon-9-ascent-sonic-boom.md).
- **Modelling gap:** a CAA or LES-based source model (e.g. [casalino-2009-hybrid-empirical-caa-rocket-noise.md](casalino-2009-hybrid-empirical-caa-rocket-noise.md)) would be needed to explain κ and the flight effect physically; the paper only proposes the empirical M_co − M_v subtraction and says more data are needed (p. 626).
- **Related works cited:** McInerny 1992, 1996 (×2), McInerny & Ölçmen 2005 (nonlinear propagation), Greska et al. 2008 (hot supersonic jets, M_co), Tam 1995/2009 (Mach waves), Michel & Michalke 1981 (flight effects), Mathews et al. 2020 (three Falcon 9 launches, J. Acoust. Soc. Korea). Candidates for `/add-paper`.
