---
key: "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets"
title: "Methods for predicting overall sound power and maximum overall sound pressure levels from heated supersonic jets, including rockets"
authors: ["Mathews, Logan T.", "Gee, Kent L."]
year: 2025
type: "article"
venue: "JASA 158(1), 371–379"
bib: {"journal": "The Journal of the Acoustical Society of America", "volume": "158", "number": "1", "pages": "371--379"}
doi: "10.1121/10.0037192"
arxiv: ""
pdf: "rocket-noise-models/Mathews-Gee_2025_Methods-For-Predicting-Overall-Sound-Power-And-Maximum-Overall-Sound-Pressure-Levels.pdf"
version: "published"
unverified: []
group: false
facility: "Full-scale field data (VSFB and CCSFS launches, T-7A F404 run-ups)"
data: ["microphones-far", "full-scale"]
methods: ["empirical-model", "propagation-model"]
flow: ["rocket-plume", "launch-vehicle", "jet-aircraft", "supersonic", "heated"]
phenomena: ["acoustic-efficiency", "directivity", "nonlinear-propagation"]
params: {"vehicles": "Atlas V 401, Vulcan Centaur Cert-2", "engine": "F404 (T-7A), 38% to AB", "M_j (F404)": "0.94–1.46", "range": "0.3–20 km (launches), 19–229 m (F404)"}
topics: ["rocket-noise-models", "rocket-noise-measurements"]
related: ["mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "mathews-2021-falcon-9-far-field-noise", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "kellison-2026-falcon-9-noise-two-campaigns", "gee-2023-sls-artemis-i-far-field-noise", "gee-2024-starship-super-heavy-far-field-noise", "james-2012-directivity-curves-rocket-noise-model", "mcinerny-1996-launch-vehicle-acoustics-overall-levels-spectra"]
cites: ["gee-2023-sls-artemis-i-far-field-noise", "gee-2024-starship-super-heavy-far-field-noise", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2021-falcon-9-far-field-noise", "mcinerny-1996-launch-vehicle-acoustics-overall-levels-spectra", "tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "varnier-2001-rocket-engine-freejet-noise-model"]
summary: "Acoustic-efficiency model OAPWL = 115.9 + 10log(ηρU_e³D_e²) → OASPL_max with directivity and ground factor δ; Atlas V, Vulcan and F404 validation, RMSE < 2 dB"
---
# Methods for predicting overall sound power and maximum overall sound pressure levels from heated supersonic jets, including rockets

- **Authors:** Logan T. Mathews, Kent L. Gee (Brigham Young University, Dept. of Physics and Astronomy)
- **Source:** J. Acoust. Soc. Am. 158(1), 371–379 (July 2025). Received 29 Mar 2025, published online 14 Jul 2025. Editor: Con Doolan.
- **DOI:** 10.1121/10.0037192
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Mathews-Gee_2025_Methods-For-Predicting-Overall-Sound-Power-And-Maximum-Overall-Sound-Pressure-Levels.pdf` (10 pp.; PDF page 1 is a publisher cover sheet). Page refs below are **journal pages**; PDF page = journal page − 369.
- **Also:** this paper is Chapter 5 of Mathews' 2025 BYU PhD thesis; see [mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md).
- **Tags:** rocket noise, jet noise, overall sound power level (OAPWL), OASPLmax, acoustic efficiency, Franken/McInerny/SP-8072 models, directivity index, ground reflection factor, exit vs fully-expanded parameters, Atlas V, Vulcan Centaur, F404/T-7A, weak-shock decay, empirical model

## Summary
The paper writes the classic "acoustic efficiency" route to jet and rocket noise (Franken 1958; McInerny 1996; NASA SP-8072) in terms of elementary exit-flow quantities: OAPWL = 115.9 + 10 log10(η ρe Ue³ De²) dB, with a pressure-thrust version and a thrust version (p. 372). OASPLmax at range r then follows from spherical spreading plus a single maximum directivity index Q_max,OA and a ground-reflection factor δ (20 log10 δ), with δ estimated from a modified Tam et al. (1996) large-scale similarity spectrum filtered through the Embleton et al. (1983) ground-impedance model (p. 373–374, 377). The authors also quantify the error from dropping pressure thrust and from using fully-expanded (FE) rather than exit parameters (Table I, p. 374). The model is checked against far-field OASPLmax from two Atlas V 401 launches, the Vulcan Centaur Cert-2 launch and an installed GE F404 (T-7A) at four engine powers; RMSE is under 2 dB throughout, but VC2 needs η halved (0.33% → 0.17%) to fit (p. 375–377). There is no flow simulation: plume inputs come from NASA CEARUN (rockets) and NPSS (F404) thermochemistry/cycle codes (p. 378).

## Key findings
- **Compact OAPWL formula** from exit density, velocity and diameter: OAPWL ≈ 115.9 + 10 log10(η ρe Ue³ De²) dB (eq. 6, p. 372). The authors suggest it as a design tool for reducing acoustic power at fixed thrust (p. 372).
- **Acoustic efficiency** historically bounded 0.1% < η < 1% (p. 372). Rockets: η = 0.33% (from Kellison & Gee 2023, SLS vs Saturn V) used for Atlas V (p. 375). F404 η rises with power: 0.014% (38%), 0.19% (56%), 0.51% (MIL), 0.61% (AB) (Table IV, p. 376).
- **Pressure thrust is small for rockets** (Table I, p. 374): dropping it (eq. 3) gives thrust errors of 3–6% and mechanical-power errors of 0.1–0.3 dB for Merlin 1D, RD-180 and BE-4, but 48% / 32% thrust error (1.7 / 1.2 dB power error) for the F404 at 38% / 55% thrust, which are transonic (p. 374). Exact eqs. (1)–(2) are within 0.1 dB everywhere. Recommendation: use full equations with exit parameters when possible; approximations with exit or FE parameters are acceptable, especially for rockets (p. 374).
- **Ground effect**: for rocket peak frequencies < 60 Hz, common surfaces (dirt, grass, pavement) raise OASPLmax by 5.5–6 dB, i.e. δ ≈ 1.9–2 (Hart & Gee 2023; p. 373). Fig. 1 example (f_pk = 30 Hz, receiver 6 mm): σ = 20 (soft snow) gives +5 dB, δ = 1.8; σ = 200 (grass) +5.8 dB, δ = 2; σ = 100 000 (concrete) +6 dB, δ = 2 (p. 374). For jet engines (f_pk 80–500 Hz) with 1.5 m microphones, δ ≈ 1.2–1.7 (p. 373). The sonic-boom community uses 1.9 for ground mics (Onyeowu 1975; p. 373).
- **Q_max,OA vs ground effect**: [McInerny (1996)](mcinerny-1996-launch-vehicle-acoustics-overall-levels-spectra.md) used Q_max,OA = 5 dB (average over the 6-dB-down region) and 8 dB (max 1-s OASPL), with ground effect baked in. Treating ground separately (rigid ground: +6 dB OASPLmax but +3 dB OAPWL) lowers Q_max,OA by 3 dB, from 8 to 5 dB (p. 375, footnote 1 p. 378).
- **Atlas V validation** (Fig. 2a, p. 376): η = 0.33%, Q_max,OA = 5 dB, δ = 1.9 → R² = 0.96, RMSE = 1.8 dB over ~0.3–20 km.
- **Two decay rates for the same vehicle** (p. 375): JPSS-2 (clear, 8 °C / 76% RH) follows r⁻¹ (−20 dB/decade); Landsat 9 (overcast, dense fog, 15 °C / 88% RH) follows the weak-shock rate r⁻¹(ln r)^(−1/2) ≈ r^(−1.1) (−22 dB/decade). Hypothesis: higher humidity reduces atmospheric absorption, so waveforms stay more shock-like (p. 375). Not investigated further.
- **Vulcan Centaur VC2** (Fig. 2b, p. 375–376): the Atlas V parameters overpredict by ~3 dB; η/2 = 0.17% gives R² = 0.97, RMSE = 1.7 dB. Postulated cause: separated plumes (2 BE-4 + 2 GEM 63XL SRMs) radiate less efficiently than the tightly clustered Atlas V plume (p. 375). Effective θ_max = 69° for VC2, following Kellison et al. (2024) for SLS (p. 375).
- **Peak directivity angle**: 71° for Atlas V, taken from Falcon 9 (Mathews et al. 2021, corrected from 64° to 71° after a 3-D angle fix; footnote 2, p. 378), and consistent with the convective-Mach model θ_max ≈ cos⁻¹[(c0/Ue)^(1/2)] (Gee et al. 2025; p. 375).
- **F404 validation** (Fig. 3, p. 376–377): full model (eqs. 7 + 11) RMSE < 1.7 dB at all four conditions and < 1.3 dB excluding 38% thrust. Approximate model (eqs. 6 + 11) RMSE 3.2 dB at 38% thrust, < 1.5 dB at MIL and AB. Near-field points at 19 m are outliers. Run-to-run spread up to ±3 dB, growing with range and attributed to meteorology (Streeter et al. 2024); thrust repeatability < 0.5% (≈ 0.02 dB in power; footnote 3, p. 378).
- **Conclusion** (p. 377): RMSE generally < 2 dB for three launches and four engine powers; η, Q_max,OA and decay rate need more research.

## Setup / method
- **Type:** empirical/semi-analytical prediction model plus validation against existing full-scale field data. No experiments new to this paper beyond the VC Cert-2 measurements (by M. C. Anderson; Acknowledgments p. 377). Data are DoD-controlled, available on request (p. 377).
- **Model chain** (p. 372–374): mechanical stream power W_m = ½ F Ue → acoustic power W_a = η W_m → OAPWL → compact directional point source with spherical spreading → OASPLmax with Q_max,OA and δ. Azimuthal symmetry assumed (single or tightly clustered nozzles). Meteorology, refraction, absorption and nonlinear propagation are excluded; the authors suggest adding ray-tracing or nonlinear propagation corrections when needed (Sec. II E, p. 374).
- **Spreading assumption:** spherical (4πr²), as in SP-8072 and McInerny; Franken used hemispherical (2πr²) for a jet on the ground plane (p. 372–373). Bounds on amplitude decay: spherical r⁻¹ to weak-shock r⁻¹(ln r)^(−1/2) (Blackstock et al. 2024). Changing the decay law changes the apparent η and directivity index (p. 372).
- **Ground-effect estimation** (p. 373, App. A p. 377): follows Hart & Gee (2023) but replaces their "haystack" spectrum by a broader-peaked model spectrum (eq. A1): Tam et al. (1996) large-scale similarity spectrum with low-frequency slope f^2.5 (+25 dB/decade) and high-frequency slope f^−2.2 (−22 dB/decade). Embleton et al. (1983) effective flow-resistivity ground model, receiver height 6 mm, swept over f_pk and σ (Fig. 1b).
- **Rocket OASPL processing:** 1-s blocks with 50% overlap from measured waveforms (time-resolved acoustics), maximum taken over the launch (p. 375). Range estimated from the assumed emission angle θ_max (p. 375).
- **Plume parameters** (App. B, p. 378): RD-180 and BE-4 from NASA CEARUN (frozen chemistry, NFZ = 2; Table V). GEM 63XL from Northrop Grumman vacuum Isp, reduced 10% to sea level by analogy with the Shuttle SRM, giving Ue ≈ 2.47 km/s. F404 from NPSS with recorded engine settings and measured ambient conditions. F404 FE Mach numbers: 0.94, 1.1, 1.43, 1.46 at 38%, 56%, MIL, AB (Christian et al. 2023a; p. 376).
- **Launches** (Table II, p. 375):

  | Mission | Site | Date / time (UTC) | T (°C) | RH (%) | Wind (m/s, deg) | Cloud |
  |---|---|---|---|---|---|---|
  | Atlas V Landsat 9 | VSFB SLC-3E | 27 Sep 2021, 18:12 | 15 | 88 | 2.6, 330 | Overcast |
  | Atlas V JPSS-2 | VSFB SLC-3E | 10 Nov 2022, 09:49 | 8 | 76 | 2.1, 70 | Clear |
  | VC Cert-2 | CCSFS SLC-41 | 04 Oct 2024, 11:25 | 27 | 87 | 1, 104 | Scattered |

- **F404 (T-7A) 2019 run-ups:** six run-ups, microphones 1.5 m above ground on arcs at 19, 38, 76, 152 and 229 m along each condition's peak-directivity ray (Fig. 3a, p. 376; Leete et al. 2021). η from Christian et al. (2023b), δ from Christian et al. (2023a), Q_max from Christian et al. (2022) (p. 376).

## Key equations
(Re-typed from the rendered pages 372–373, 377; constants checked: 10 log10[(π/8)/10⁻¹²] = 115.9 dB and 10 log10(0.5/10⁻¹²) = 117.0 dB, with W_ref = 10⁻¹² W.)
- Mechanical power: $W_m = \tfrac12 F U_e$ (eq. 1, p. 372).
- Thrust: $F = \dot m_e U_e + (P_e - P_0)A_e = [\rho_e U_e^2 + (P_e-P_0)]A_e$ (eq. 2); approximate $F \approx \rho_e U_e^2 A_e$ (eq. 3), so $W_m \approx \tfrac12\rho_e U_e^3 A_e$ (eq. 4) (p. 372).
- Acoustic power: $W_a = \eta W_m \approx \tfrac{\pi}{8}\eta\rho_e U_e^3 D_e^2$ (eq. 5).
- $\mathrm{OAPWL} \approx 115.9 + 10\log_{10}(\eta\rho_e U_e^3 D_e^2)$ dB (eq. 6).
- With pressure thrust: $\mathrm{OAPWL} = 115.9 + 10\log_{10}\{\eta U_e D_e^2[\rho_e U_e^2 + (P_e-P_0)]\}$ dB (eq. 7).
- From thrust: $\mathrm{OAPWL} = 117.0 + 10\log_{10}(\eta F U_e)$ dB (eq. 8).
- $\mathrm{OASPL}(r,\theta,\phi) \approx \mathrm{OAPWL} - 10\log_{10}(4\pi r^2) + Q_{OA}(\theta,\phi)$ (eq. 9, p. 372).
- $\mathrm{OASPL}_{max}(r) \approx \mathrm{OAPWL} - 10\log_{10}(4\pi r^2) + Q_{max,OA} + 20\log_{10}\delta$ (eq. 11, p. 373); eq. 10 is the same with δ = 1.
- Peak directivity (cited from Gee et al. 2025): $\theta_{max} \approx \cos^{-1}[(c_0/U_e)^{1/2}]$ (p. 375).
- Model spectrum, $x = f/f_{pk}$, $L = \log_{10}x$ (eq. A1, p. 377):
  - $x \ge 2.5$: $3.82974 - 22L$
  - $2.5 > x \ge 1$: $[1.06617 - 42.2994L + 21.40972L^2]\,L$
  - $1 > x \ge 0.5$: $-50.19338L^2 - 16.91175L^3$
  - $x < 0.5$: $3.43861 + 25L$

> Eq. A1 is typeset as a broken multi-line case expression; the grouping above (bracket times L, by analogy with Tam et al. 1996's F-spectrum) is my reading. Tam's original coefficients are, from memory, 45.2994 and 38.19338 in the middle branches; the printed 42.2994 and 50.19338 may be deliberate modifications or typos. Check the PDF (p. 377) and evaluate continuity at x = 0.5, 1 and 2.5 before reusing.

## Data tables
**Table I (p. 374): thrust and mechanical-power errors**

| Vehicle | Engine | Condition | Thrust err. eq. 2 | eq. 3 | eq. 2 FE | W_m err. eqs. 1–2 (dB) | eq. 4 (dB) | eq. 4 FE (dB) |
|---|---|---|---|---|---|---|---|---|
| T-7A | F404 | 38% | 0% | 48% | 3% | 0.0 | 1.7 | −1.4 |
| T-7A | F404 | 55% | 1% | 32% | 2% | 0.0 | 1.2 | −1 |
| T-7A | F404 | MIL | 1% | 8% | 1% | 0.1 | 0.4 | −0.3 |
| T-7A | F404 | AB | 2% | 11% | 1% | 0.1 | 0.4 | −0.3 |
| Falcon 9 | Merlin 1D | 100% | 1% | 3% | 0% | 0.0 | 0.1 | −0.1 |
| Atlas V | RD-180 | 100% | 0% | 4% | 1% | 0.0 | 0.2 | −0.1 |
| Vulcan/New Glenn | BE-4 | 100% | 1% | 6% | 3% | 0.1 | 0.3 | −0.1 |

**Table III (p. 375): plume parameters** (component totals over all units)

| Vehicle | Engine/motor | No. | F (MN) | W_m (GW) | Vehicle F (MN) | Vehicle W_m (GW) |
|---|---|---|---|---|---|---|
| Atlas V 401 | RD-180 | 1 | 3.83 | 6.06 | 3.83 | 6.06 |
| VC VC2 | BE-4 | 2 | 4.90 | 7.80 | 9.02 | 12.9 |
| VC VC2 | GEM 63XL | 2 | 4.12 | 5.09 | | |

> Checks (own): 4.90 + 4.12 = 9.02 MN and 7.80 + 5.09 = 12.89 GW, consistent. Implied Ue = 2W_m/F: RD-180 ≈ 3.16 km/s, BE-4 ≈ 3.18 km/s, GEM 63XL ≈ 2.47 km/s (matches App. B). With c0 ≈ 343 m/s, θ_max ≈ cos⁻¹√(343/3164) ≈ 71°, matching the text. Worked example (own): Atlas V, η = 0.33% → W_a ≈ 20 MW, OAPWL ≈ 193 dB; at r = 1 km, OASPLmax ≈ 193 − 71 + 5 + 5.6 ≈ 132.6 dB, consistent with Fig. 2a.

**Table IV (p. 376): F404 parameters**

| Condition | η | Q_max | δ | Fig. 3 R² full/approx | RMSE full/approx |
|---|---|---|---|---|---|
| 38% thrust | 0.014% | 7.4 dB | 1.68 | 0.94/0.77 | 1.7/3.2 dB |
| 56% thrust | 0.19% | 7.5 dB | 1.23 | 0.97/0.90 | 1.2/2.2 dB |
| MIL (100%) | 0.51% | 7.0 dB | 1.21 | 0.97/0.95 | 1.3/1.5 dB |
| AB (152%) | 0.61% | 5.9 dB | 1.29 | 0.97/0.96 | 1.2/1.4 dB |

(R² and RMSE read from the Fig. 3 legend, p. 376.)

**Table V (p. 378): CEARUN inputs**: RD-180: chamber 25.66 MPa, area ratio 36.87, O/F 2.72, RP-1/LOX. BE-4: 13.4 MPa, 23.3, 3.5, LCH4/LOX. Ambient 101.3 kPa, frozen, NFZ = 2.

## Figures worth remembering
- **Fig. 1 (p. 374):** (a) model spectrum (f_pk = 30 Hz) with ground-affected versions for σ = 20, 200, 100 000 cgs rayls; (b) map of δ against f_pk and σ (6 mm receiver). δ ≈ 2 for most rocket cases; it falls only for soft ground and high f_pk.
- **Fig. 2 (p. 376):** OASPLmax vs r (0.3–20 km). (a) Atlas V Landsat 9 vs JPSS-2 with the r⁻¹ model line and the r^(−1.1) weak-shock line; (b) VC Cert-2 with η and η/2.
- **Fig. 3 (p. 376):** (a) F404 measurement rays at peak angles; (b) OASPLmax vs r (19–229 m) with full and approximate model lines and run-to-run bars.
- **Fig. 4 (p. 378):** eq. A1 model spectrum against measured peak-direction spectra of Atlas V 401 and T-7A at AB, normalised by f_pk.

## Notation
- F thrust; Ue, ρe, Pe, Ae, De exit velocity, density, pressure, area, diameter; P0 ambient pressure; ṁe exit mass flow. FE = fully expanded.
- W_m mechanical stream power; W_a acoustic power; η = W_a/W_m acoustic efficiency; W_ref = 10⁻¹² W.
- OAPWL overall sound power level; OASPL overall sound pressure level (dB re 20 µPa); θ polar angle from the plume axis; Q_OA(θ, φ) overall directivity index; Q_max,OA its maximum at θ_max.
- δ ground reflection factor on pressure (1 free field, 2 rigid ground); σ effective flow resistivity (cgs rayls).
- MIL military (max non-afterburning) power; AB afterburner. VSFB/CCSFS launch sites.

## Relevance to this project
This is a full-scale, far-field, empirical scaling paper; it does not resolve source mechanisms. Its value for the user's lab-scale resonance work (CLAUDE.md) is as a bridge between nozzle exit conditions and radiated acoustic power.
- **Acoustic efficiency as a lab metric:** the η route (eqs. 5–8) can be applied to Shock Lab group acoustic data. Measure OAPWL from a microphone arc (integrate OASPL over the sphere), compute W_m from NPR/temperature, and compare η for screeching vs non-screeching or free vs impinging jets. Screech and impingement tones are not separated in the model; the model has no frequency content beyond the empirical spectrum used for δ. For lab anechoic data δ = 1 and spherical spreading are appropriate; the weak-shock decay discussion matters only at full scale.
- **Exit vs FE parameters** (Table I): relevant to the user's under/over-expanded jets. The 48% thrust error for transonic F404 conditions shows that, for strongly off-design jets, pressure thrust matters; for lab NPR 2–5 converging-nozzle jets, use eq. 7 with exit (sonic) conditions or FE conditions consistently and say which.
- **Peak-directivity model** θ_max ≈ cos⁻¹√(c0/Ue) (Gee et al. 2025) is a Mach-wave/convective-Mach argument; for heated lab jets it predicts where large-scale-structure noise peaks, useful when placing microphones for SPOD/BMD of acoustics.
- **Model spectrum (eq. A1):** a modified Tam large-scale-similarity spectrum (f^2.5 / f^−2.2) that fits full-scale peak-direction spectra better than Tam's original (p. 377); compare with lab spectra at the peak angle. It does not include BBSAN or screech, which appear at sideline angles.
- **Intermittency and variability:** the paper uses 1-s block OASPL maxima only. The ±3 dB run-to-run spread (F404) and launch-to-launch decay-rate difference (Atlas V) are attributed to meteorology, not source changes. No time-frequency (wavelet/Hilbert) analysis is done; the user's SPOD → reconstruction → HPOD pipeline is not directly applicable, though the measured waveforms are time-resolved.
- **Multi-plume efficiency:** the suggestion that separated plumes (VC2: BE-4 + SRMs) radiate with half the efficiency of a single clustered plume (p. 375) is a hypothesis only; compare twin-jet coupling work ([nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md), [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md)), where plume interaction changes radiation.
- **Impingement:** launch-pad/flame-deflector impingement is not modelled or discussed; the model treats the plume as a free jet. See [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md) and [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md).
- **Modelling side:** no CFD/LES, stability or ROM. Inputs come from CEARUN (equilibrium/frozen thermochemistry) and NPSS (engine cycle). It positions itself as a basis for SP-8072-derived tools (RUMBLE, RNOISE) and notes advanced models can still fail (Starship; Gee et al. 2024).
- **Related notes:** thesis version [mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md); SP-8072 review [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md); Falcon 9 directivity (source of the 71° angle) [mathews-2021-falcon-9-far-field-noise.md](mathews-2021-falcon-9-far-field-noise.md) and [kellison-2026-falcon-9-noise-two-campaigns.md](kellison-2026-falcon-9-noise-two-campaigns.md); SLS method for mixed liquid/SRM vehicles [gee-2023-sls-artemis-i-far-field-noise.md](gee-2023-sls-artemis-i-far-field-noise.md); Starship [gee-2024-starship-super-heavy-far-field-noise.md](gee-2024-starship-super-heavy-far-field-noise.md); directivity indices [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md); SRM statistics [gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md).
- **Candidates for `/add-paper`:** McInerny 1992, 1996; Franken 1958; Hart & Gee 2023 (ground reflections); Kellison & Gee 2023 (SLS vs Saturn V sound power); Christian et al. 2023a,b (F404 ground correction, efficiency); Gee, Olaveson & Mathews 2025 (convective Mach number directivity); Tam, Golebiowski & Seiner 1996.
