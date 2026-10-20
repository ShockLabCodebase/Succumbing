---
key: "duke-2021-twin-orifice-pmdi-actuators-fine-particle-fraction"
title: "Increasing the fine particle fraction of pressurised metered dose inhaler solutions with novel actuator shapes"
authors: ["Duke, D. J.", "Nguyen, D. T.", "Gomes dos Reis, L.", "Silva, D. M.", "Neild, A.", "Edgington-Mitchell, D.", "Young, P. M.", "Honnery, D. R."]
year: 2021
type: "article"
venue: "Int. J. Pharm. (2021)"
bib: {"journal": "International Journal of Pharmaceutics", "note": "volume and article number not printed in the accepted manuscript"}
doi: "10.1016/j.ijpharm.2021.120341"
arxiv: ""
pdf: "diagnostics-and-facilities/Duke-EtAl_2021_Increasing-The-Fine-Particle-Fraction-Of-Pressurised-Metered-Dose-Inhaler-Solutions.pdf"
version: "accepted-manuscript"
unverified: []
group: true
facility: "Shock Lab group facility (LTRAC)"
data: ["extinction-imaging"]
methods: ["statistics"]
flow: ["spray", "twin-jet"]
phenomena: ["jet-merging"]
params: {"orifice": "2 × 0.22 mm (twin), 0.33 mm (single)", "propellant": "HFA-134a + 15% w/w ethanol", "f_s": "5 kHz"}
topics: ["diagnostics-and-facilities"]
related: ["nogueira-2021-twin-jet-coupling-spatial-lsa", "esfahani-2021-coupling-modes-twin-rectangular-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "tan-2015-bos-density-axisymmetric-jets"]
cites: []
summary: "Twin 0.22 mm pMDI orifices raise FPF 75% over a 0.33 mm Bespak; 5 kHz extinction imaging shows one merged plume; half-velocity distance x_1/2 predicts FPF (R² 0.997)"
---
# Increasing the fine particle fraction of pressurised metered dose inhaler solutions with novel actuator shapes

- **Authors:** D. J. Duke, D. T. Nguyen, L. Gomes dos Reis, D. M. Silva, A. Neild, D. Edgington-Mitchell, P. M. Young, D. R. Honnery (LTRAC and Laboratory for Microsystems, Monash; Woolcock Institute / University of Sydney)
- **Source:** Int. J. Pharm. (2021), doi:10.1016/j.ijpharm.2021.120341. This file is the accepted manuscript (Elsevier preprint style, dated 3 Feb 2021), so its layout and page numbers differ from the published version.
- **PDF:** `References/Paper_PDFs/diagnostics-and-facilities/Duke-EtAl_2021_Increasing-The-Fine-Particle-Fraction-Of-Pressurised-Metered-Dose-Inhaler-Solutions.pdf` (22 pp.)
- **Page refs:** PDF page numbers, which equal the manuscript's printed page numbers.
- **Tags:** pMDI, flash-boiling spray, twin-orifice nozzle, plume merging (spray collapse), fine particle fraction, Next Generation Impactor, high-speed diffuse back-illumination, extinction imaging, FWHM plume width, cross-correlation velocimetry, micro-injection moulding

## Summary
The paper tests whether replacing the single 0.33 mm orifice of a pressurised metered-dose inhaler (pMDI) actuator with two 0.22 mm orifices of the same total area raises the fine particle fraction (FPF) of a solution formulation, using polycarbonate nozzle inserts that can be mass produced (micro-injection moulding plus micro-drilling). Impactor (NGI) tests show the twin-orifice insert raises FPF by about 75% over a conventional Bespak actuator, while an internal recess that shortens the orifice lowers FPF. High-speed back-lit extinction imaging shows the two jets merge inside the actuator bowl into a single, narrower plume. Neither cone angle, plume width nor exit velocity correlates well with FPF, but the distance x_{1/2} over which the plume velocity (estimated from the width via mass conservation) halves correlates with FPF at R² = 0.997. The authors propose that a faster plume re-entrains fine particles from its periphery by shear before they deposit on the mouthpiece.

## Key findings
- **FPF gain from twin orifices** (p. 11–12, Table 1, Fig. 7):
  - Conventional pMDI FPF 22.5 ± 3.4% against 39.4 ± 3.6% for the twin nozzle, a 75% increase (39.4/22.5 = 1.75). The single 0.33 mm insert gives 31.5 ± 7.9%, about 40% higher (31.5/22.5 = 1.40), which the authors attribute to the longer orifice and canister stem (p. 11).
  - The gain matches the metal laser-drilled actuators of Lewis et al. (2006) after allowing for orifice size (p. 12).
  - Total dose per shot falls about 15% for the twin nozzle (104.0 vs 123.0 µg), so the FPD rise (30.3 vs 24.7 µg) is not statistically significant (p. 12, Table 1).
  - MMAD (1.3–1.4 µm) and GSD show no significant changes (p. 11).
  - Throat deposition drops and deposition on stages S4–S7 (lower lung) rises significantly (p. 12, Fig. 6).
- **Orifice length matters** (p. 12): the internal recess shortens the orifice and lowers FPF and FPD proportionately for both single and twin designs, so larger L/D is better, in line with Smyth et al. (2006).
- **Twin jets merge into one plume** (p. 13, Fig. 8c, e): merging happens inside the bowl, out of view. The authors liken it to "spray collapse" of multi-hole flash-boiling gasoline injectors, where vapour expansion in each jet core makes the plumes overlap; HFA-134a is superheated enough at room conditions for this (p. 13). Hypothesis, not demonstrated.
- **Plume macroscopic metrics** (p. 14, Table 2, Fig. 9a):
  - The higher-FPF sprays are narrower; the conventional pMDI is widest.
  - Correlations with FPF are only moderate: cone angle R² = 0.85, virtual origin 0.63, width at mouthpiece 0.78, exit velocity 0.59.
  - Uncertainty in width is dominated by temporal fluctuations; shot-to-shot variation is small (p. 14).
- **Half-velocity distance predicts FPF** (p. 16–17, Table 2, Fig. 10):
  - x_{1/2} ranges from 1.51 mm (conventional) to 9.13 mm (twin), and correlates with FPF at R² = 0.997 and with FPD at R² = 0.95.
  - Because eq. 3 makes velocity ∝ 1/w², x_{1/2} depends only on w(x), not on the U_0 estimate (p. 16).
  - Proposed mechanism: higher velocity in 10 < x < 40 mm raises shear with ambient air, so peripheral fine particles are re-entrained instead of following the diverging vapour streamlines onto the mouthpiece wall (p. 17). Flagged by the authors as needing further investigation.
  - Since velocity decays as a power law, the designs differ little in velocity once particles leave the mouthpiece, so the upper-airway flow should be unaffected (p. 18).
- **API and clogging** (p. 4, 18): plume behaviour and ensemble variance did not change with or without ipratropium bromide, which the authors take as no clogging for this formulation; wider formulation testing is still needed.

## Setup / method
- **Formulation and hardware** (p. 4): Presspart aluminium canisters, Bespak 357 50 µL metering valves, 15% w/w ethanol in HFA-134a, ipratropium bromide 1.00–2.34 g/L where used (chosen to match earlier X-ray work, Duke et al. 2019). First five sprays wasted.
- **Nozzles** (p. 4–6, Fig. 1–2):
  - Control: Bespak BK632, 0.33 mm orifice ("Conventional pMDI").
  - Modular rig with removable faces matching the Bespak expansion-chamber geometry, except a longer stem connection.
  - Polycarbonate inserts injection-moulded (Babyplast 6/10P, in-house aluminium mould) as blanks, then micro-drilled; inspected under a microscope.
  - Four test geometries: single 0.33 mm; twin 0.22 mm (vertically aligned, centres 0.71 mm apart per Fig. 2c); each with and without an internal recess (Ø 2.00 mm) that shortens the orifice. Insert wall 1.20 mm; recess leaves 0.17 mm vs 1.17 mm without (dimensions read from Fig. 2, p. 6).
  - Total orifice area is matched: 2 × 0.22² = 0.097 ≈ 0.33² = 0.109 mm² (my check: about 11% less, not exactly equal as the paper implies).
- **Impactor tests** (p. 5–8): NGI (Apparatus E) with USP throat, 30 L/min; 3D-printed holder for the inserts (Fig. 3); five 4 s actuations per run, triplicate; HPLC quantification (C18 column, 210 nm, LOD 0.26 µg/mL); CITDAS for DD, FPD, FPF, MMAD, GSD; one-way ANOVA + Tukey for stages, unpaired two-tailed t-test vs control (p < 0.05).
- **High-speed imaging** (p. 8–11, Fig. 4) at LTRAC, Monash. The paper names LTRAC, not one of the Shock Lab group's lab spaces, so treat it as a Shock Lab group facility.
  - Diffuse back-illumination: strobed white LED (2.1 µs pulse, 5 kHz), Photron FastCam BC2HD, 55 mm lens with extension ring at f/8, 42.86 µm/px. **Time-resolved at 5 kHz.**
  - Solenoid actuation synchronised with the camera; 1 min dwell between shots to avoid ice; N = 50–55 shots per configuration, repeated with several nominally identical nozzles and canisters.
  - Field of view from x = 1.44 mm (bowl blocks closer access) to 44 mm downstream.
- **Image processing** (p. 9–11):
  - Extinction C_ext = 1 − I/I_0 (eq. 1); masked where background < 1%.
  - "Steady" window per shot: integrated extinction over 1.9 < x < 2.6 mm above 2/3 of its peak. All statistics restricted to it.
  - Centreline from a least-squares line through the peak-extinction location at each x, to remove plume steering bias.
  - Width w(x) = FWHM of extinction about the centreline; cone angle from eq. 2.
  - U_0 from frame-to-frame cross-correlation of liquid structures near the nozzle (Duke et al. 2010).
  - Statistics split into temporal fluctuation and shot-to-shot (ensemble) variance (p. 11).
- **Plume velocity model** (p. 16): assumes evaporation is complete in the imaged region, constant plume density and an axisymmetric plume, so mean velocity scales with the inverse cross-section, taken from the FWHM. No entrainment term or simulation.

## Key equations
- Extinction (eq. 1, p. 9): $C_{ext}(t,x,y) = 1 - \dfrac{I(t,x,y)}{I_0(x,y)}$
- Cone angle (eq. 2, p. 9): $\theta = \tan^{-1}\dfrac{dw}{dx}$ (as printed; no factor of 2 for full vs half angle)
- Plume velocity from width (eq. 3, p. 16): $U_x(x) \approx U_0\,\dfrac{w_0^2}{w(x)^2}$, so $x_{1/2}$ is where $w(x)^2 = 2\,w_0^2$.

> The conclusion (p. 18) says x_{1/2} is where "the square of the FWHM of the plume is 50% of that at the nozzle", which is the inverse of what eq. 3 implies (w² doubles). Check against the published version. The location of w_0 (x = 1.44 mm, or where U_0 is measured) isn't stated; reading Fig. 9a, the conventional width only reaches √2 w_0 by x ≈ 6 mm, whereas Table 2 gives x_{1/2} = 1.51 mm, so the reference point or definition may differ. Verify before reusing.

## Data tables
**Aerosol performance** (Table 1, p. 11; mean ± SD of 3 runs; * p < 0.05, ** p < 0.01 vs conventional):

| | Conventional pMDI | Single + recess | Twin + recess | Single | Twin |
|---|---|---|---|---|---|
| Total dose per shot [µg] | 123.0 ± 4.5 | 122.0 ± 0.4 | 112.0 ± 7.9 | 113.3 ± 4.8 | 104.0 ± 3.9** |
| Calc. delivered dose [µg] | 109.7 ± 5.1 | 93.0 ± 2.7 | 93.6 ± 11.6 | 88.4 ± 9.6* | 77.0 ± 6.5** |
| FPD [µg] | 24.7 ± 4.3 | 23.8 ± 4.4 | 26.8 ± 5.6 | 27.4 ± 5.4 | 30.3 ± 2.9 |
| FPF [%] | 22.5 ± 3.4 | 25.6 ± 4.9 | 29.1 ± 7.6 | 31.5 ± 7.9 | 39.4 ± 3.6* |
| MMAD [µm] | 1.4 ± 0.1 | 1.3 ± 0.1 | 1.3 ± 0.2 | 1.4 ± 0.2 | 1.3 ± 0.1 |
| GSD | 2.4 ± 0.1 | 2.6 ± 0.7 | 3.6 ± 2.2 | 1.8 ± 0.1 | 1.9 ± 0.1 |
| R² (log-probit fit) | 0.998 | 0.984 | 0.998 | 0.960 | 0.999 |

**High-speed imaging** (Table 2, p. 16):

| | Conventional | Single + recess | Twin + recess | Single | Twin | Correlation with NGI |
|---|---|---|---|---|---|---|
| Cone angle [°] | 9.9 ± 0.2 | 10.6 ± 0.2 | 8.6 ± 0.2 | 7.5 ± 0.2 | 7.8 ± 0.2 | R² 0.85 (FPF), 0.78 (FPD) |
| Cone virtual origin [mm] | −14.54 ± 0.04 | −4.82 ± 0.04 | −17.38 ± 0.04 | −7.35 ± 0.04 | −5.73 ± 0.04 | 0.63, 0.39 |
| Width at mouthpiece [mm] | 6.35 ± 0.04 | 5.00 ± 0.04 | 5.93 ± 0.04 | 3.88 ± 0.04 | 3.80 ± 0.04 | 0.78, 0.60 |
| Nozzle exit velocity [m/s] | 77 ± 6 | 69 ± 7 | 72 ± 5 | 84 ± 6 | 82 ± 4 | 0.59, 0.70 |
| x_{1/2} [mm] | 1.51 ± 0.04 | 3.14 ± 0.04 | 5.02 ± 0.04 | 5.75 ± 0.04 | 9.13 ± 0.04 | **0.997, 0.95** |

> Both tables were garbled in text extraction and rebuilt from a render of p. 11 and p. 16. The FPF ratios (1.75, 1.40) and the 15% dose drop (104.0/123.0 = 0.85) check out. Note the inconsistency in significance: Table 1 flags only the twin FPF as p < 0.05, but the Fig. 7 caption says p < 0.05 for all designs (p. 13). The text also cites "Figure 8" for the FPF change where Figure 7 is meant (p. 11).

## Figures worth remembering
- **Fig. 2 (p. 6):** insert geometries with dimensions: bowl, 0.33 mm single and 0.22 mm twin orifices, and the Ø 2.00 mm internal recess that shortens the orifice.
- **Fig. 6 (p. 12):** NGI stage deposition. Throat ≈ 73% of ED for the conventional pMDI vs ≈ 58% for the twin nozzle (read from figure); significant rises on S4–S7.
- **Fig. 8 (p. 14):** time- and ensemble-averaged extinction for all five nozzles; the twin nozzle shows a single merged plume.
- **Fig. 9 (p. 15):** w(x) and U_x(x) with temporal (solid) and shot-to-shot (hatched) bands. The twin nozzle keeps ≈ 80 m/s to x ≈ 5 mm while the conventional plume has fallen below 40 m/s (read from figure).
- **Fig. 10 (p. 17):** FPF against x_{1/2}, linear fit R² = 0.997.

## Notation
- pMDI: pressurised metered-dose inhaler. HFA-134a: propellant. API: active pharmaceutical ingredient (IpBr, ipratropium bromide).
- NGI: Next Generation Impactor; stages S1 (> 11.7 µm) to S7 (0.54–0.83 µm) and MOC (p. 11).
- DD, FPD, FPF (%DD), MMAD, GSD: delivered dose, fine particle dose, fine particle fraction, mass median aerodynamic diameter, geometric standard deviation.
- C_ext: extinction; I, I_0: spray and background intensity. w(x): FWHM plume width. θ: cone angle. U_0, w_0: initial velocity and width. x_{1/2}: half-velocity distance.

## Relevance to this project
Outside the jet-resonance focus in CLAUDE.md; this is Shock Lab group spray work (Duke, Edgington-Mitchell, Honnery). Useful mainly for its diagnostics.

- **Time-resolved imaging pipeline:** 5 kHz diffuse back-lit extinction imaging with background normalisation, a "steady window" picked from a spatially integrated signal, centreline fitting to remove plume steering, FWHM width, and separate temporal vs shot-to-shot variance. The steady-window and steering corrections carry over to transient or wandering jets in schlieren. Only first- and second-order statistics are used here; no SPOD, POD or spectra. The 5 kHz record would support SPOD or Hilbert-based tracking of the start-up and tail-off transients, which the paper discards.
- **Velocity without PIV:** U_0 from cross-correlation of liquid structures (Duke et al. 2010), then a mass-conservation width model. Crude (constant density, no entrainment) but shows how a cheap integral model can explain an outcome; check the x_{1/2} definition (see Key equations).
- **X-ray link:** the formulation was chosen to compare with the group's synchrotron X-ray pMDI measurements (Duke et al. 2019, refs [8, 9, 12]; p. 4), relevant if the group's X-ray capability is used for dense near-nozzle flows.
- **Twin-jet merging:** the rapid merger of the two flash-boiling jets (p. 13) is a different mechanism from the acoustic coupling of supersonic twin jets in [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md) and [esfahani-2021-coupling-modes-twin-rectangular-jets](esfahani-2021-coupling-modes-twin-rectangular-jets.md); no feedback or tones are involved.
- **Same facility family:** LTRAC also hosts the PIV and BOS work in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [tan-2015-bos-density-axisymmetric-jets](tan-2015-bos-density-axisymmetric-jets.md); the strobed-LED source cites Willert et al. 2012 on high-power LEDs for high-frame-rate schlieren.
- **Modelling side:** none beyond eq. 3; no CFD or internal-flow model. The flash-boiling and spray-collapse explanation is a hypothesis from the automotive literature (Lacey et al. 2017; Li et al. 2018).
