---
key: "tsutsumi-2015-epsilon-liftoff-acoustics"
title: "Study on acoustic prediction and reduction of Epsilon launch vehicle at lift-off"
authors: ["Tsutsumi, Seiji", "Ishii, Tatsuya", "Ui, Kyoichi", "Tokudome, Shin-ichiro", "Wada, Kenichi"]
year: 2015
type: "article"
venue: "J. Spacecr. Rockets 52(2)"
bib: {"journal": "Journal of Spacecraft and Rockets", "volume": "52", "number": "2"}
doi: "10.2514/1.A32864"
arxiv: ""
pdf: "rocket-noise-models/Tsutsumi-EtAl_2015_Study-On-Acoustic-Prediction-And-Reduction-Of-Epsilon-Launch-Vehicle-At-Lift-Off.pdf"
version: "accepted-manuscript"
unverified: ["issue number, page range and DOI from memory, not printed in the manuscript", "given names not printed in the manuscript (initials only)"]
group: false
facility: "JAXA Noshiro Rocket Testing Center"
data: ["subscale", "microphones-far", "microphones-near", "LES"]
methods: ["PSD", "FW-H", "empirical-model"]
flow: ["rocket-plume", "launch-vehicle", "impinging-jet", "supersonic", "overexpanded", "heated"]
phenomena: ["Mach-wave-radiation", "directivity", "noise-control", "installation-effects"]
params: {"vehicle": "Epsilon", "scale": "1/42", "M_e": "3.7", "M_j": "3.3", "NPR": "89.1", "TR": "12.0", "Re": "2.2×10⁵", "H/D_e": "9, 14, 22"}
topics: ["rocket-noise-models", "impinging-jets-and-edge-tones", "rocket-noise-measurements"]
related: ["lubert-2022-supersonic-jet-noise-launch-vehicles-review", "casalino-2009-hybrid-empirical-caa-rocket-noise", "ranow-2021-acoustic-prediction-rocket-flame-deflector", "weightman-2019-sound-production-impinging-supersonic-jets", "henderson-2002-flow-structure-supersonic-impinging-jets", "james-2012-directivity-curves-rocket-noise-model", "gee-2023-sls-artemis-i-far-field-noise", "reichman-2018-qm2-srm-far-field-acoustics"]
cites: ["casalino-2009-hybrid-empirical-caa-rocket-noise", "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "krothapalli-1999-flow-field-noise-supersonic-impinging-jet", "panda-2013-noise-sources-rocket-test-firings-launch-phased-array"]
summary: "1/42 SRM subscale tests (same U_e, Re > 10⁵ ⇒ same SPL) plus RANS/LES + FW-H (≤4 dB high): Epsilon fairing level worst at H/D_e 14 from ground-reflected Mach waves; front cover −3 dB"
---
# Study on acoustic prediction and reduction of Epsilon launch vehicle at lift-off

- **Authors:** Seiji Tsutsumi (JAXA Engineering Digital Innovation Center, Sagamihara), Tatsuya Ishii (JAXA Institute of Aeronautical Technology, Chofu), Kyoichi Ui (JAXA Space Transportation Mission Directorate, Tsukuba), Shin-ichiro Tokudome (JAXA ISAS, Sagamihara), Kenichi Wada (Science Service Inc., Tokyo). Given names are not printed in the manuscript (initials only).
- **Source:** Published as J. Spacecr. Rockets 52(2), 2015 (AIAA). This file is the **author manuscript** (accepted version, file name "SMAP2-JSR-rev14", footer "This document is provided by JAXA") from the JAXA repository, not the typeset article. doi:10.2514/1.A32864
  > Volume 52 comes from the download list (entry #97); the issue number, page range and DOI are from memory and not printed in the manuscript. Verify against the published article before citing.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Tsutsumi-EtAl_2015_Study-On-Acoustic-Prediction-And-Reduction-Of-Epsilon-Launch-Vehicle-At-Lift-Off.pdf` (36 pp.; index key `rocket-noise-models/Tsutsumi-EtAl_2015_Study-On-Acoustic-Prediction-And-Reduction-Of-Epsilon-Launch-Vehicle-At-Lift-Off.pdf`). Page refs are manuscript PDF pages: text pp. 1–17, references pp. 17–20, figures and tables pp. 21–36. The PDF is copy-enabled but encrypted, so the Read tool refuses it; use `pdftotext`/`pdftoppm`. pdftotext garbles every equation and the nomenclature list; equations below were rebuilt from rendered pages 5–9.
- **Tags:** rocket noise, lift-off acoustics, Epsilon, M-V, solid rocket motor, subscale testing (1/42), similarity / scaling laws, Fresnel number, launch-pad design, flame deflector, jet impingement, wall jet, Mach wave radiation, ground reflection, front cover, fairing acoustic environment, hybrid RANS/LES, compact differencing, SLAU, FW-H, NASA SP-8072, Varnier

## Summary
JAXA needed the Epsilon solid launcher, which reuses the M-V pad and cannot use water injection, to meet a 147 dB OASPL limit outside the fairing even though its first stage radiates only 3 dB less acoustic power than the M-V (194 vs 197 dB; M-V measured ~158 dB) (p. 2). The paper first derives similarity rules for subscale lift-off tests: nozzle-exit Re > 10⁵ and the **same exit velocity** as full scale, so that Strouhal number, Fresnel-number-scaled diffraction/reflection and Mach-wave directivity all match; SPL is then unchanged and frequencies scale by the length ratio (p. 5–7). It then reports the SMAP campaign of 15 firings of 1/42-scale solid motors at Noshiro, with far-field arcs at 60 D_e and three microphones at the fairing station, comparing nozzle heights H/D_e = 9, 14 and 22 over a redesigned pad (p. 8–10, 13–15). A hybrid RANS/LES with FW-H propagation, validated against the H/D_e = 14 microphone data to within 4 dB OASPL, shows that the main fairing-level source at that height is free-jet Mach waves radiated inside the open vertical flame path and reflected off the ground, not the impingement on the deflector (p. 11–13, 15–16). A front cover that shields the flame path cuts the fairing levels by 2–4 dB in every octave band and OASPL by 3 dB, which meets the requirement (p. 16).

## Key findings
- **Requirement:** Epsilon first stage 2,000 kN thrust, OAPWL 194 dB; fairing requirement 147 dB OASPL. M-V: 3,700 kN, 197 dB, ~158 dB measured outside the fairing. M-V pad hardware (assembly tower, boom) must be reused and water injection is ruled out (p. 2, Fig. 1).
- **Subscale similarity (Sec. II):** Re and St cannot both be matched at scale; above Re ≈ 10⁵ spectra become Re-independent (Troutt & McLaughlin 1982, Fig. 3: Re = 7900 shows a St = 0.2 peak, Re = 7×10⁴ and 2.6×10⁶ are nearly identical) (p. 6). Matching the Fresnel number of diffraction/reflection gives f·L = const, so equal St needs **equal U_e**; equal U_e also gives equal Mach-wave angle via θ = cos⁻¹(C_a/U_c) with U_c = K U_e, K ≈ 0.5–0.7 (p. 6).
- With the same propellant, chamber conditions and area ratio, η and U_j are unchanged, so W scales with ṁ ∝ L², and 10 log(4πR²) scales by the same factor at geometrically similar distances: **SPL_sub = SPL_full**, f_full = (L_sub/L_full) f_sub (p. 7). This agrees with Dougherty & Guest's 6.4% Shuttle model (p. 7).
- **Error sources in scaling:** air absorption is larger at subscale (shorter wavelengths); over 60 D_e the 1/42 model loses 1.8 dB more than full scale at St = 0.5 (f_full = 790 Hz) (p. 7–8, Fig. 4). Refraction of a 2 kHz wave over 40 m in a −0.3 s⁻¹ sound-speed gradient changes levels by ~3 dB, so it is not negligible and is hard to estimate near hot plumes (p. 8).
- **Subscale motor:** 1/42 scale, Re = 2.2×10⁵, thrust ~1 kN, burn ~2 s, data taken from 0.25–2.0 s on the chamber-pressure plateau (p. 8–9, Fig. 6). Varnier core length X_c ≈ 6.7 D_e and peak-power location X_p ≈ 1.5 X_c = 10.0 D_e, so H = 10 D_e is taken as the boundary between impingement-dominated and free-jet-Mach-wave-dominated regimes (p. 9, 11).
- **Usable band:** a bumpy spectrum above 30 kHz is a rain-cap artefact, so data are used up to 30 kHz sub-scale (710 Hz full scale) (p. 9, Fig. 8). Microphone error ±0.5 dB plus 1.5 dB propagation error at St = 0.46 gives ~2.0 dB total (p. 9).
- **Repeatability (open field):** two firings on a 45° plate at 10 D_e on different days differ by 0.8 dB OASPL and 1.2 dB in the worst octave band (St = 0.008), so one firing per configuration was judged enough (p. 9, Figs. 9–10).
- **Scale check:** the 1/42 free jet against a horizontal ~1/3-scale 260 kN motor (scaled from 63.5 to 60 D_e with Eq. 10): OASPL within ~3 dB except at θ = 20° (plume deflected by the ground plate 50 D_e downstream), both peaking near θ = 50°; spectra peak at St = 0.02–0.4; the 260 kN motor is higher at St = 0.005–0.1 from ground reflection (p. 10, Figs. 11–12).
- **Free jet (Sec. VI A):** OASPL peaks near 50°, typical of hot high-Mach Mach-wave radiation; the spectral peak is at St = 0.015 at 30° and moves up with angle; at 90° and 120° spectra are flat and show **no BBSAN** (p. 13, Figs. 12a, 17). Agrees with Lubert et al. 2022 on the absence of BBSAN in rocket spectra.
- **Source regimes (Fig. 14):** low on the pad, the impingement-region waves (radiating roughly omnidirectionally) and wall-jet Mach waves (~50° from the wall-jet axis, so away from the vehicle) dominate; once the vehicle climbs, free-jet Mach waves strike the ground and reflect back up to the vehicle (p. 10–11).
- **Pad design rules (from prior JAXA LES):** steep deflector inclination where the jet lands and no abrupt contour changes (to weaken impingement waves); minimise deck area and raise the deck to reduce and delay Mach-wave reflection (p. 11). Result: ring-shaped mount 8 D_e high (limited by the existing tower) and the M-V deflector redesigned with a 14° initial inclination from the jet axis, curving smoothly to the ground (p. 11, Fig. 15).
- **Far field vs height (Fig. 18):** far-field OASPL (θ = 110–160° from the free-jet axis, i.e. upstream) rises with height, lowest at H/D_e = 9 and highest at 22. At 9 and 14 it peaks near θ = 140–150°, matching wall-jet Mach waves at ~50° from the wall-jet axis; at 22 there is no clear peak. A hump at St = 0.02–0.05 at H/D_e = 14 and 22 matches the free-jet Mach-wave peak (St = 0.01–0.05) and is attributed to reflected Mach waves (p. 13–14).
- **Fairing circumference (Fig. 19, H/D_e = 14):** M7 (west, side of the open flame path) is highest at all frequencies, M9 (east) lowest, M8 (south) between; differences grow above St = 0.02 as the pad and vehicle block shorter waves. The load is **not circumferentially uniform**, unlike the diffuse-field tests used to qualify fairings (p. 14).
- **Fairing level vs height (M7, Table 2, Fig. 20):** OASPL 147.7 dB (H/D_e = 9), **149.1 dB (14, worst)**, 141.3 dB (22). The fairing ordering differs from the far field, where 22 is loudest. H/D_e = 14 exceeds the requirement in every octave band, by up to 3.6 dB at 63 Hz; H/D_e = 9 equals H/D_e = 14 at 31.5, 250 and 500 Hz but is lower at 63 and 125 Hz (p. 15).
- **CFD diagnosis (Fig. 21):** at H/D_e = 14 the wall jet is still supersonic, but the free-jet shear layer has higher TKE than the wall-jet shear layer; the pressure field shows Mach waves at ~50° from the free-jet axis, including from the part of the free jet inside the vertical flame path, reflecting off the ground back to the vehicle. Impingement-generated waves are hard to see (p. 15–16).
- **Front cover:** shielding the flame path from the front reduces M7 by 2–4 dB in all octave bands and OASPL from 149.1 to 146.2 dB (−3 dB), meeting the octave-band requirement at H/D_e = 14; the PSD falls at all St, most at St ≈ 0.07 (p. 16, Figs. 20, 22).

## Setup / method
### Experiment (SMAP campaign)
- Noshiro Rocket Testing Center (JAXA), open field; motor hung from a load cell on a hydraulic cylinder that sets height, firing downward onto a subscale pad on a 50 D_e × 50 D_e steel ground plate; stand, cylinder and microphone arcs wrapped in absorber (p. 8, Fig. 5). 15 motors in the campaign, one firing per condition (p. 8–9).
- **Jet conditions (Table 1, p. 23):**

| M_e | M_j | M_a | p_o/p_a | T_o/T_a | p_e/p_a | Re | γ_j | γ_a |
|---|---|---|---|---|---|---|---|---|
| 3.7 | 3.3 | 8.6 | 89.1 | 12.0 | 0.5 | 2.2×10⁵ | 1.2 | 1.4 |

  > Overexpanded at the exit (p_e/p_a = 0.5, M_j < M_e). M_a is presumably U_e/c_a. U_e and D_e are not printed; the frequency pairs on pp. 8–9 and 12 (St 0.46 ↔ 30 kHz; St 0.5 ↔ 790 Hz full scale; 30 kHz ↔ 710 Hz) imply U_e ≈ 2.7 km/s for D_e ≈ 42 mm, the subscale D_e listed in Lubert et al. 2022 Appendix B (where D_j/D_e = 0.75 for this motor). That D_j/D_e also makes X_c = 1.75 D_j(1+0.38·3.3)² ≈ 8.9 D_j ≈ 6.7 D_e consistent. Inferred, not stated: check before reuse.
- **Microphones:** GRAS 40BP ¼-inch with RA0127 rain caps, grazing incidence. Far-field arc of 6 mics (M1–M6) at 10° spacing, R = 60 D_e from the impingement point, θ from 110° to 160° measured from the free-jet (downstream) axis; three fairing mics M7–M9 at 11 D_e above the nozzle exit plane, to the west, south and east (p. 9, Fig. 7). Free-jet runs: 11 mics at 10° steps at 60 D_e with the motor 50 D_e above the plate (p. 10, Fig. 11b). Plate runs: 14 mics at 6° steps (p. 9, Fig. 9).
- **Processing:** PSD, OASPL and 1/1-octave SPL over the 1.75 s quasi-steady window; subscale frequencies mapped to full scale by Eq. 11 (×1/42) (p. 9, 15). No time-frequency analysis, no array processing.
- **Configurations:** baseline pad with the vertical flame path open on the west side (Fig. 15a) and the same pad with a front cover (Fig. 15b); heights H/D_e = 9, 14, 22 (p. 11, 13).

### Simulation
- Cell-centred finite volume on multi-block structured grids; zonal hybrid **RANS (Spalart–Allmaras) near walls / LES (standard Smagorinsky) off-wall**, eddy viscosities blended with a tanh function (p. 11–12).
- Implicit time integration (matrix-free Gauss–Seidel with Newton–Raphson sub-iterations, 3-point backward difference, 2nd order), chosen because wall cells limit the time step and the target includes the 31.5 Hz octave (p. 12).
- Convective terms: **6th-order compact differencing with a 10th-order low-pass filter**; shocks detected by the Visbal–Gaitonde sensor and treated there with SLAU + 2nd-order MUSCL (p. 12). Far field from **FW-H** (p. 12).
- Validation case: pad of Fig. 15a at H/D_e = 14; ~100 M grid points; acoustic cut-off St = 0.48 (f_full = 740 Hz); run to resolve St = 0.012 (20 Hz full scale) took ~2 months on 1280 cores of JAXA's Fujitsu FX1 (p. 12). The code had earlier been validated on an ideally expanded cold M_e 1.8 jet on inclined plates (Nakanishi et al.) and on SMAP free-jet and plate cases (p. 12).
- **Agreement:** far-field OASPL directivity shape matches with the peak at θ = 150°, but CFD **overpredicts by up to 4 dB** at every mic; at M2 (120°) both spectra are flat below St = 0.23 then fall; at M5 (150°) the spectral peak is at St = 0.045 (measured) vs 0.023 (CFD) (p. 12–13, Fig. 16). The authors blame insufficient resolution (too much low-frequency energy in the shear layer) and linear FW-H propagation that ignores nonlinear steepening (citing de Cacqueray et al. 2011) (p. 13). The comparison is OASPL/PSD only; the CFD's role is mechanism diagnosis (mean Mach, TKE, instantaneous pressure fields), not modal analysis.

## Key equations
Rebuilt from rendered pages 5–9; notation as in the paper.
- Nozzle-exit Reynolds and Strouhal numbers (Eqs. 1–2, p. 5): $Re=\rho_e U_e D_e/\mu_e$, $St=fD_e/U_e$.
  > Eqs. 1–2 did not render in the extracted text; these are the standard forms implied by the text. Confirm subscripts on p. 5.
- Fresnel number (p. 6, Maekawa): $N=2\delta/\lambda$; matching it gives $\delta_{full}/\lambda_{full}=\delta_{sub}/\lambda_{sub}$ (Eq. 3) and, with δ → L, $f_{full}L_{full}=f_{sub}L_{sub}$ (Eq. 4).
- Mach-wave angle (Eq. 5, p. 6): $\theta=\cos^{-1}(C_a/U_c)$, $U_c=KU_e$, $K\approx0.5$–$0.7$ ([Krothapalli et al. 1999](krothapalli-1999-flow-field-noise-supersonic-impinging-jet.md)).
- Overall acoustic power (Eq. 6, p. 7, Varnier): $W=\eta\,\tfrac12\dot m U_j^2$.
- Acoustic efficiency (Eq. 7, p. 7; Varnier, Sutherland): $\eta=0.0012\left(\dfrac{\gamma_j}{\gamma_a}\right)\left(\dfrac{C^*}{C_a}\right)^3\left(\dfrac{C^*}{U_e}\right)^2$.
  > Read from a low-resolution render; the last factor may be $C^*/U_j$ rather than $C^*/U_e$. Check p. 7.
- Power scaling (Eqs. 8–9, p. 7): $W_{full}=(\dot m_{full}/\dot m_{sub})W_{sub}=(L_{full}/L_{sub})^2W_{sub}$.
- Spherical spreading (Eq. 10, p. 7): $\mathrm{SPL}=10\log(W/W_{ref})-10\log(4\pi R^2)$, $W_{ref}=10^{-12}$ W.
- Frequency scaling (Eq. 11, p. 7): $f_{full}=(L_{sub}/L_{full})f_{sub}$.
- Varnier core length and SP-8072 peak-power location (p. 9): $X_c=1.75D_j(1+0.38M_j)^2=6.7D_e$; $X_p\approx1.5X_c=10.0D_e$.

## Data tables
**Table 2 (p. 34): OASPL at fairing mic M7 (full-scale-equivalent, subscale SPL)**

| Case | OASPL (dB) |
|---|---|
| H/D_e = 9 | 147.7 |
| H/D_e = 14 | 149.1 |
| H/D_e = 22 | 141.3 |
| H/D_e = 14 with front cover | 146.2 |

Requirement: 147 dB OASPL (p. 2). Octave-band requirement curve and band SPLs only in Fig. 20 (p. 34); max exceedance 3.6 dB at the 63 Hz band (written "63.5 Hz" on p. 15).

**Key numbers**

| Item | Value | Page |
|---|---|---|
| Model scale; Re | 1/42; 2.2×10⁵ | 8 |
| Subscale thrust; burn time; analysis window | ~1 kN; ~2 s; 0.25–2.0 s | 8–9 |
| X_c; X_p | 6.7 D_e; 10.0 D_e | 9 |
| Usable band | ≤30 kHz sub (≤710 Hz full) | 9 |
| Measurement error | ±0.5 dB mic + 1.5 dB propagation ≈ 2 dB | 9 |
| Repeatability | 0.8 dB OASPL; 1.2 dB worst octave | 9 |
| Extra air absorption at 1/42, 60 D_e, St 0.5 | 1.8 dB | 8 |
| Refraction error, 2 kHz over 40 m | ~3 dB | 8 |
| Mount height; deflector initial angle | 8 D_e; 14° from jet axis | 11 |
| LES grid; cut-off; cost | ~100 M points; St 0.48 (740 Hz); 2 months on 1280 cores | 12 |
| LES OASPL error | overpredicts, ≤4 dB | 12 |
| Front cover benefit | −2 to −4 dB per octave; −2.9 dB OASPL | 16 |

## Figures worth remembering
- **Fig. 3 (p. 22):** Troutt & McLaughlin Re effect on M ≈ 2 jet spectra; basis for the Re > 10⁵ rule.
- **Fig. 4 (p. 22):** air absorption at full vs 1/42 scale over 60 D_e.
- **Fig. 7 (p. 24):** microphone layout (M1–M6 arc at 60 D_e from the impingement point, M7–M9 at 11 D_e above the nozzle exit).
- **Fig. 12 (pp. 27–28):** 1/42 vs 260 kN motor free-jet OASPL directivity and PSD at 50°.
- **Fig. 14 (p. 29):** schematic of the two source regimes: impingement waves plus wall-jet Mach waves near the pad, ground-reflected free-jet Mach waves after climb. The clearest picture in the paper.
- **Fig. 15 (p. 30):** subscale pad (boom, ring mount, deflector) with and without the front cover.
- **Fig. 16 (pp. 31–32):** LES vs microphones, OASPL and PSD at M2 and M5.
- **Fig. 17 (p. 32):** free-jet spectra at 30°, 50°, 90°, 120°; no BBSAN.
- **Fig. 18 (p. 33):** far-field OASPL and PSD at 150° vs H/D_e.
- **Fig. 19–20, Table 2 (p. 34):** circumferential non-uniformity at the fairing; octave-band SPL vs requirement for all heights and the cover.
- **Fig. 21 (pp. 35–36):** LES mean Mach number with sonic line, TKE, and instantaneous pressure showing reflected Mach waves in the flame path.
- **Fig. 22 (p. 36):** PSD with vs without front cover (biggest drop near St 0.07).

## Notation
D_e nozzle exit diameter; H nozzle-exit height above the ground plate; θ angle from the (downstream) free-jet axis; R mic arc radius; U_e, U_j exit and fully expanded velocity; U_c convective velocity, K = U_c/U_e; C_a ambient sound speed, C* critical sound speed; γ_j, γ_a specific-heat ratios; η acoustic efficiency; W, W_ref acoustic power, 10⁻¹² W; ṁ mass flow; X_c core length; X_p location of peak sound power; N Fresnel number, δ path-length difference; L model length scale; St = fD_e/U_e; subscripts sub/full for model and flight scale; M7–M9 fairing mics (W, S, E).

## Relevance to this project
This is the rocket-noise side of the user's work (CLAUDE.md) and sits on the boundary with the lab impinging-jet research. It is mainly an engineering-design paper: subscale far-field and near-vehicle microphones plus one validated hybrid RANS/LES used to diagnose the source, with no modal decomposition.

- **Context in the literature:** it is one of the JAXA studies summarised in [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (Sec. IV–VI: impinging-plume wave types, Mach-wave reflection being more important than impingement sources, Epsilon flame-duct and platform mitigation, 6th-order compact/2nd-order shock LES, the 1/42 Epsilon motor in Appendix B and Table II). The finding here that ground-reflected free-jet Mach waves dominate at intermediate height matches Lubert's account of Akamine's plate-distance study (worst upstream levels at h ≈ 15 D_e) and the H-IIA platform LES (worst at h/D_e ≈ 16).
- **Versus empirical/hybrid models:** [Casalino et al. 2009](casalino-2009-hybrid-empirical-caa-rocket-noise.md) keep SP-8072/Varnier sources and compute pad propagation with CAA (Vega, 1/20 scale); Tsutsumi et al. instead simulate generation and propagation together with LES + FW-H and use SP-8072/Varnier only for X_c and X_p. Both conclude that reflection and shielding by pad geometry control the vehicle environment, and both still overpredict by a few dB (Casalino +2–3 dB, here up to 4 dB). [Ranow 2021](ranow-2021-acoustic-prediction-rocket-flame-deflector.md) adds ray-traced flame-duct reflections to SP-8072, which is the empirical analogue of the reflected-Mach-wave path found here. The same-U_e similarity argument is the scaling basis for the subscale campaigns tabulated in Lubert et al.
- **Impinging-jet link:** the near-pad regime (H/D_e = 9: impingement waves plus wall-jet Mach waves) is the rocket version of the lab impinging supersonic jet. Unlike [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md) and [Henderson et al. 2002](henderson-2002-flow-structure-supersonic-impinging-jets.md), there is no impingement tone or feedback loop here: H/D_e ≥ 9 on a 14° inclined deflector, a hot overexpanded M_e 3.7 plume and broadband spectra (consistent with Lubert's "no impingement tones at full scale"). The design rule of a shallow initial deflector angle with no abrupt contour change, to weaken plate and tail shocks, echoes the lab finding that shocks near the plate (standoff shock, wall-jet shocklets) set the acoustic source and its phase. The question of when a lab-type feedback loop can survive in a hot, heavily overexpanded rocket jet impinging at 5–10 D_e is left open and could be tested with the group's schlieren and acoustic tools.
- **Methods and data needs:** everything here is block-averaged (PSD, OASPL, octave bands) from time-resolved microphones and a time-resolved LES. A ~1.75 s window at 1/42 scale holds roughly 5×10³ cycles at St = 0.05 (≈3 kHz model scale, using the inferred U_e and D_e), which is plenty for SPOD/BMD on a microphone array or LES pressure, but the paper does neither, so the vehicle-height dependence (a slowly varying H during lift-off) is handled only by separate fixed-height firings. A moving-vehicle analogue of the user's SPOD → reconstruction → Hilbert POD pipeline (or wavelets on the fairing microphones) would track how the reflected-Mach-wave band (St ≈ 0.02–0.07) rises and falls as H changes, which is exactly the transition this paper samples at three points. The circumferential non-uniformity (M7–M9) also argues for azimuthally resolved arrays rather than single fairing mics.
- **Modelling caveats worth carrying forward:** the hybrid RANS/LES overpredicts by up to 4 dB and mislocates the 150° spectral peak (St 0.023 vs 0.045), and linear FW-H cannot represent nonlinear steepening, a recurring theme in the full-scale data notes ([Gee et al. 2023](gee-2023-sls-artemis-i-far-field-noise.md), [Reichman et al. 2018](reichman-2018-qm2-srm-far-field-acoustics.md)). The ~3 dB refraction and 1.8 dB extra-absorption estimates bound how far subscale lift-off data can be trusted at full scale.
- **Free-jet consistency:** OASPL peak near 50° on the 60 D_e free-jet arc (its centre is not stated in the text; see Fig. 11b), with no BBSAN, matches SP-8072-era values; [James et al. 2012](james-2012-directivity-curves-rocket-noise-model.md) and Lubert et al. show such arcs bias the peak aft, and the true peak relative to a ~17–20 D_e source is ~65°.
