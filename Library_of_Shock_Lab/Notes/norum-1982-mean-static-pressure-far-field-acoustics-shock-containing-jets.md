---
key: "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets"
title: "Measurements of mean static pressure and far-field acoustics of shock-containing supersonic jets"
authors: ["Norum, Thomas D.", "Seiner, John M."]
year: 1982
type: "report"
venue: "NASA TM-84521"
bib: {"institution": "NASA Langley Research Center", "number": "TM-84521", "note": "NTRS 19820025274"}
doi: ""
arxiv: ""
pdf: "jet-noise-mechanisms/Norum-Seiner_1982_Measurements-Of-Mean-Static-Pressure-And-Far-Field-Acoustics-Of-Shock-Containing.pdf"
version: "report"
unverified: []
group: false
facility: "NASA Langley Jet-Noise Laboratory and Anechoic Noise Facility"
data: ["pressure-probe", "microphones-far"]
methods: ["statistics", "PSD"]
flow: ["round-jet", "supersonic", "underexpanded", "overexpanded", "ideally-expanded"]
phenomena: ["screech", "BBSAN", "shock-cells", "directivity", "noise-control"]
params: {"M_d": "1.0, 1.5, 2.0", "M_j": "1.0–2.37", "NPR": "1.89–14", "β": "0–2.15", "D": "≈4–5 cm", "TR": "1 (unheated)"}
topics: ["jet-noise-mechanisms", "shock-cell-models", "screech"]
related: ["tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "raman-1998-supersonic-jet-screech-review", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance"]
cites: []
summary: "NASA Langley data: unheated M_d 1.0/1.5/2.0 conical and contoured nozzles, β 0–2.15, ± screech tab; shock-cell static-pressure surveys, OASPL directivity, 1/3-octave and 40 Hz spectra"
---
# Measurements of mean static pressure and far-field acoustics of shock-containing supersonic jets

- **Authors:** Thomas D. Norum, John M. Seiner (NASA Langley Research Center, Hampton, Virginia)
- **Source:** NASA Technical Memorandum 84521, September 1982 (NTRS accession 19820025274). A data report.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/jet-noise-mechanisms/Norum-Seiner_1982_Measurements-Of-Mean-Static-Pressure-And-Far-Field-Acoustics-Of-Shock-Containing.pdf` (204 pp. in the scan; the report form lists 197)
- **Page refs:** PDF page numbers. The report's printed page n is PDF page n + 4 (PDF p. 5 is printed p. 1).
- **Scan quality:** an NTRS scan with an OCR layer. The 5 pages of prose and Table 1 OCR well. The ~190 pages of plots carry only garbled OCR, so numbers in this note that come from plots were read from page renders and are marked as such.
- **Tags:** broadband shock-associated noise (BBSAN), screech, screech-suppression tab, shock-cell structure, mean static pressure survey, far-field directivity, OASPL, 1/3-octave and narrowband spectra, convergent and C-D nozzles, conical vs contoured nozzle, unheated jet, validation database

## Summary
This is the data report from NASA Langley's 1978 onwards programme on shock-containing supersonic jets. It is the data behind the Seiner & Norum AIAA papers (1979, 1980) on broadband shock noise. Five small nozzles (d ≈ 4–5 cm) were run on unheated air: convergent (design Mach 1.0) and C-D (Mach 1.5 and 2.0) nozzles, with contoured and conical versions, from sonic conditions to M_j ≈ 2.37 (NPR 1.89–14). Each was tested with and without a small rectangular tab at the exit to suppress screech. The report gives axial surveys of mean static pressure, which show the shock cells of the three contoured nozzles. It also gives far-field OASPL against shock parameter β and against angle, plus 1/3-octave and 40 Hz narrowband spectra on an arc from 30° to 157.5° to the inlet axis. There is almost no interpretation: the analysis is in refs. 7–11, and the value of the report is as a benchmark database for shock-cell and BBSAN/screech models.

## Key findings
The report draws no conclusions beyond describing what was measured (PDF p. 8–9). The points below are what the plotted data show, read from page renders; they are not claims made in the text.

- **Database scope** (p. 5, 7–9): five nozzles × with/without tab, β = 0 to 2.15 (Table 1, p. 195), OASPL at 18 angles, 1/3-octave spectra for the contoured nozzles (Appendix D), 40 Hz narrowband spectra at 30–120° (Appendix E), and static-pressure surveys for the contoured nozzles without tab (Appendix A).
- **The tab removes screech tones** (read from Appendix E):
  - Mach 1.0 contoured, β = 1.00 without tab (p. 149): a sharp fundamental near 3 kHz dominates at 30–45°, and harmonics near 6, 9 and 12 kHz appear. The near-6 kHz harmonic is strongest at 90°. The highest 40 Hz band levels are 117.3 dB at 30° and 116.5 dB at 90°.
  - The same condition with tab (p. 162): no tones remain, leaving a smooth broadband shock-noise hump. Its peak frequency rises with angle, from about 5 kHz at 30° to about 10–15 kHz at 105–120°. Peak band levels fall to 101.2 dB at 30° and 95.7 dB at 90°.
  - So the tab cuts the peak narrowband level by about 16 dB at 30° and 21 dB at 90° at this condition. These figures are the differences between the "max dB" labels; the labels are plotted values, not tabulated data.
- **Screech lobes in the OASPL directivity** (Appendix C, p. 46–55): without the tab, curves for β ≈ 0.6–1.1 (Mach 1.0 nozzles) show a bump near ψ = 45° and a second bump near ψ = 90°. These are absent or much weaker with the tab. The Mach 1.0 conical nozzle shows the largest bumps (p. 52).
- **A bump at 45° even at β = 0** (p. 46): the Mach 1.0 contoured nozzle without tab shows a few-dB OASPL bump at 45° even at β = 0–0.4, where little shock noise is expected. The report doesn't comment; it may be a microphone or installation artefact. Check before using the 45° data.
- **Shock-noise minimum near the design point** (Appendix B, p. 37 and 40): for the contoured C-D nozzles, OASPL at upstream and sideline angles (ψ ≤ ~127.5°) dips near the design β_d (1.089 for Mach 1.5, 1.726 for Mach 2.0), where the shocks are weakest. The second-phase tests filled in β around these dips (solid symbols). At ψ ≥ 135° OASPL keeps rising monotonically with β, since mixing noise dominates there.
- **Ideally expanded spectra are broadband only** (p. 175, 190): Mach 1.5 at β = 1.10 and Mach 2.0 at β = 1.72 show no screech tones and no distinct shock-noise hump at any angle. Peak 40 Hz band levels are only ~92–104 dB.
- **Mixing noise sets the maximum OASPL**: the "max dB" labels on the directivity plots are mostly reached at ψ = 150–157.5°, i.e. 22.5–30° from the jet axis (Appendix C). The largest is 139.1 dB, for Mach 2.0 contoured at β = 2.15 (p. 50).
- **Shock cells in the mean static pressure** (Appendix A, p. 12–33): for example, Mach 1.0 contoured at β = 0.94 (p. 14) shows p/p_a oscillating between about 0.5 and 1.55 on the axis. The oscillations decay to ambient by x/d ≈ 9. At y/d = 0.45 the shocks appear as sharp spikes on a near-ambient level. For Mach 2.0 at β = 1.10, an overexpanded case (p. 27), there are about 7 shock cells, which decay by x/d ≈ 7.

## Setup / method
- **Facilities** (p. 7):
  - Static-pressure surveys were made in the Langley Jet-Noise Laboratory (LJNL). It supplies continuous dry, unheated air at up to 4.1 kg/s. NPR is held within 0.3 % of the set point.
  - Acoustics were measured in the Langley Anechoic Noise Facility. Its interior is 6.7 m × 8.4 m × 7.2 m, and it uses the same air supply. The nozzles were wrapped in fiberglass (Fig. 3).
- **Nozzles** (p. 7, Fig. 4 on p. 199): all have a 20.0 cm inlet and a 35.56 cm overall length.

  | Nozzle | d (cm) | d_t (cm) | x_s (cm) | x_t (cm) | β_d |
  |---|---|---|---|---|---|
  | Mach 1.0 contoured | 3.982 | 3.982 | 22.9 | 0 | 0 |
  | Mach 1.0 conical | 3.962 | 3.962 | 22.9 | 0 | 0 |
  | Mach 1.5 contoured C-D | 4.267 | 3.959 | 26.8 | 4.327 | 1.089 |
  | Mach 1.5 conical C-D | 4.289 | 3.958 | 35.5 | 3.327 | 1.114 |
  | Mach 2.0 contoured C-D | 4.989 | 3.848 | 33.3 | 10.648 | 1.726 |

  - Contoured nozzles give parallel exit flow. Their contraction follows Hopkins & Hill (1966), which optimises the sonic surface, and the supersonic part is a method-of-characteristics contour (Johnson & Boney 1975) (p. 7).
  - The conical convergent nozzle has convergent exit flow. The conical Mach 1.5 C-D nozzle (two conical sections) has divergent exit flow (p. 7).
  - Check (my calculation): for the Mach 1.5 contoured nozzle, (d/d_t)² = 1.162 gives a design Mach of about 1.48 and β_d ≈ 1.09, matching the table.
- **Tab** (p. 7, Fig. 5 on p. 200): a single rectangular tab 0.125d wide, protruding 0.063d into the jet at the exit, following AFAPL-TR-76-65 (ref. 2). This is the Harper-Bourne & Fisher screech-suppression approach.
- **Operating conditions** (Table 1, p. 195): reported as β = √(M_j² − 1) for **every** nozzle, including the C-D ones, so β = 0 is sonic, not ideally expanded. For a C-D nozzle, the shock strength is set by the departure of β from β_d.
  - Additional pressure ratios near the design point of the contoured C-D nozzles were run in the second acoustic phase (p. 7–8).
- **Static-pressure probe** (p. 7, Fig. 2 on p. 197):
  - Pinckney (1975) short probe with dual conical sections. Its ports are under 5 mm from the tip, about 0.1d, so it can resolve pressure close to shocks.
  - Estimated recovery error is under 1 % for M = 1.45–2.5 at zero incidence. No corrections were applied.
  - The probe was mounted in a minimum-drag supersonic wing on a computer-controlled 3D traverse with 0.03 mm positioning (Fig. 1, p. 196).
  - Multimeter averaging was set so that scatter was within 0.2 %, the transducer accuracy.
  - Axial traverses used 1–2 mm steps, at y/d = 0 and off-axis (y/d ≈ 0.23–0.55) (p. 8).
- **Microphones** (p. 7–8):
  - Free-field 1/4-inch condenser microphones on an arc every 7.5° from ψ = 30° to 157.5°, with ψ measured from the **inlet** axis (so 180° is the downstream jet axis).
  - Arc radius was 3.66 m in phase 1 and 3.05 m in phase 2, i.e. roughly 75–90 d. The authors note that the far-field condition was not exactly met, and they applied no correction between the two radii (p. 8).
  - Signals were recorded on a 14-channel FM tape recorder, flat to above 80 kHz. With 18 microphones, two runs were needed per condition. The overlapping angles 67.5–120° were recorded twice, and their OASPLs generally agreed within 1.0 dB (p. 8).
- **Spectral processing** (p. 8):
  - 1/3-octave spectra (Appendix D) are as measured. Ambient temperature and relative humidity are listed on each plot so atmospheric absorption can be corrected.
  - Narrowband spectra (Appendix E) use a 40 Hz analysis bandwidth and are plotted from 0 to 30 kHz. They are given at 30–120° to highlight BBSAN.
  - No averaging time, window or segment count is stated.
- **Appendix contents:**
  - **A (p. 10–33):** axial static-pressure surveys for the three contoured nozzles without tab.
  - **B (p. 34–44):** OASPL against β at each angle, for all 10 configurations.
  - **C (p. 45–55):** OASPL against ψ at each β, for all 10 configurations.
  - **D (p. 56–142):** 1/3-octave spectra for the contoured nozzles, with and without tab.
  - **E (p. 143–193):** 40 Hz spectra for Mach 1.0 contoured with and without tab, and for Mach 1.5 and 2.0 contoured without tab.
- **No modelling or simulation** is in this report. It points to refs. 7–9 for comparisons of the static-pressure data with plume prediction schemes and for shock strength and spacing (p. 6).

## Key equations
- Shock parameter (p. 6, symbol list; Table 1, p. 195):
  $$\beta = \sqrt{M_j^2 - 1}$$
  Here M_j is the fully expanded Mach number from one-dimensional isentropic flow.
- Fully expanded conditions behind Table 1 (standard isentropic relations, γ = 1.4; not printed in the report):
  $$\frac{p_t}{p_a} = \left(1 + \tfrac{\gamma-1}{2}M_j^2\right)^{\gamma/(\gamma-1)},\qquad T_j = \frac{T_t}{1 + \tfrac{\gamma-1}{2}M_j^2},\qquad V_j = M_j\sqrt{\gamma R T_j},\qquad \rho_j = \frac{p_a}{R\,T_j}$$

> I recomputed every row of Table 1 from these relations. All rows match to within 0.1 m/s and 0.001 kg/m³ for T_t = 293.0 K and p_a = 101.325 kPa. The report itself doesn't state T_t or p_a.

## Data tables
**Jet parameters at the test conditions** (Table 1, p. 195; checked as above):

| β | p_t/p_a | M_j | V_j (m/s) | T_j (K) | ρ_j (kg/m³) |
|---|---|---|---|---|---|
| 0.00 | 1.893 | 1.000 | 313.2 | 244.2 | 1.446 |
| 0.20 | 1.937 | 1.020 | 318.4 | 242.5 | 1.455 |
| 0.40 | 2.076 | 1.077 | 332.9 | 237.8 | 1.484 |
| 0.60 | 2.321 | 1.166 | 354.8 | 230.3 | 1.532 |
| 0.70 | 2.492 | 1.221 | 367.6 | 225.7 | 1.564 |
| 0.80 | 2.699 | 1.281 | 381.3 | 220.6 | 1.600 |
| 0.94 | 3.062 | 1.372 | 401.3 | 212.8 | 1.658 |
| 1.00 | 3.247 | 1.414 | 410.1 | 209.3 | 1.687 |
| 1.10 | 3.601 | 1.487 | 424.8 | 203.2 | 1.737 |
| 1.34 | 4.732 | 1.672 | 459.4 | 187.9 | 1.878 |
| 1.50 | 5.770 | 1.803 | 481.5 | 177.6 | 1.988 |
| 1.60 | 6.565 | 1.887 | 494.8 | 171.1 | 2.062 |
| 1.72 | 7.699 | 1.990 | 510.0 | 163.5 | 2.158 |
| 1.85 | 9.187 | 2.103 | 525.6 | 155.5 | 2.270 |
| 2.00 | 11.314 | 2.236 | 542.5 | 146.5 | 2.409 |
| 2.10 | 13.022 | 2.326 | 553.1 | 140.7 | 2.508 |
| 2.15 | 13.977 | 2.371 | 558.2 | 137.9 | 2.559 |

**Maximum OASPL over angle (dB re 20 µPa), phase-1 arc** (the "max dB" labels on Appendix C, p. 46–55, read from page renders; "–" means not plotted). β = 1.60 and 1.85 don't appear in Appendix C.

| β | 1.0 cont. | 1.0 cont. tab | 1.0 con. | 1.0 con. tab | 1.5 cont. | 1.5 cont. tab | 1.5 con. | 1.5 con. tab | 2.0 cont. | 2.0 cont. tab |
|---|---|---|---|---|---|---|---|---|---|---|
| 0.00 | 106.8 | 107.8 | 106.0 | 106.9 | 109.0 | 107.4 | 105.9 | 107.0 | 108.9 | 108.8 |
| 0.20 | 108.0 | 108.3 | 107.1 | 107.8 | 109.8 | 108.6 | 106.5 | 107.7 | 109.6 | 109.7 |
| 0.40 | 109.7 | 111.3 | 109.3 | 110.2 | 111.3 | 110.1 | 108.9 | 110.0 | 111.6 | 111.3 |
| 0.60 | 116.9 | 113.2 | 115.5 | 113.6 | 113.8 | 113.5 | 112.5 | 113.0 | 113.8 | 113.8 |
| 0.70 | 119.9 | 115.3 | 117.0 | 115.0 | 115.9 | 115.2 | 117.4 | 115.1 | 116.2 | 116.0 |
| 0.80 | 120.0 | 117.0 | 119.7 | 117.3 | 118.8 | 117.1 | 119.6 | 116.7 | 117.6 | 117.3 |
| 0.94 | 123.0 | 120.4 | 122.6 | 120.3 | 121.4 | 120.8 | 121.4 | 120.0 | 119.3 | 119.0 |
| 1.00 | 122.8 | 121.3 | 124.7 | 121.9 | 123.0 | 121.4 | 122.8 | 121.4 | 121.1 | 121.7 |
| 1.10 | 124.4 | 123.5 | 125.4 | 123.3 | 124.5 | 124.6 | 124.4 | 123.2 | 122.8 | 122.8 |
| 1.34 | 127.7 | 126.7 | 129.3 | 127.8 | 129.9 | 129.5 | 129.9 | 128.4 | 129.9 | 128.7 |
| 1.50 | 129.6 | 128.5 | 130.6 | 130.1 | 132.4 | 131.7 | 132.5 | 129.9 | 131.4 | 131.6 |
| 1.72 | 132.2 | 131.1 | 133.7 | 132.1 | 134.9 | 133.5 | 134.8 | 133.5 | 134.4 | 135.0 |
| 2.00 | 134.9 | 134.0 | 136.1 | 134.8 | 137.1 | 136.9 | 137.0 | 135.7 | 137.5 | 139.0 |
| 2.10 | 136.0 | 134.3 | 137.0 | 135.6 | 138.3 | – | – | – | 138.2 | – |
| 2.15 | 136.0 | 135.4 | 137.6 | 135.8 | 138.4 | – | – | – | 139.1 | – |

> These are maxima over angle, mostly at ψ = 150–157.5°, so they mostly reflect mixing noise. Tab effects on screech and shock noise are much larger at upstream angles: see Appendix B (p. 35–44) for OASPL against β at each angle. The Mach 1.0 contoured with-tab column was read from OCR text that agreed with the plot layout. Check any value against the PDF before quoting it.

## Figures worth remembering
- **Fig. 1 (p. 196):** photograph of the traverse and nozzle in the LJNL. **Fig. 2 (p. 197):** short static-pressure probe (8.0 mm long, 1.524 mm o.d., ports about 4.9 mm from the tip; dimensions read from the drawing). **Fig. 3 (p. 198):** microphone arc in the anechoic facility. **Fig. 4 (p. 199):** nozzle contours and dimensions. **Fig. 5 (p. 200):** tab geometry.
- **Appendix A, p. 14:** Mach 1.0 contoured at β = 0.94, centreline and y/d = 0.45. A clean picture of a moderately underexpanded shock train (about 6 cells, ending by x/d ≈ 9).
- **Appendix A, p. 27:** Mach 2.0 contoured at β = 1.10 (overexpanded, below β_d = 1.726). Shock cells are about 1d long and decay by x/d ≈ 7.
- **Appendix B, p. 37 and 40:** OASPL against β for the Mach 1.5 and 2.0 contoured nozzles. The dip near β_d at upstream and sideline angles shows the shock-noise minimum at the design point.
- **Appendix C, p. 46 and 52:** directivity of the Mach 1.0 nozzles without tab. Screech lobes appear near 45° and 90° for β ≈ 0.6–1.1.
- **Appendix E, p. 149 vs p. 162:** Mach 1.0 contoured at β = 1.00, without and with tab. This is the clearest picture of screech tones (fundamental near 3 kHz, harmonics) against the tab-suppressed BBSAN hump, whose peak shifts up in frequency with angle.
- **Appendix E, p. 153:** Mach 1.0 contoured at β = 1.72. Weaker tones (around 2–3 kHz) sit on a BBSAN peak that moves from about 3 kHz at 60° to about 6 kHz at 105° (read from the figure).
- **Appendix E, p. 175 and 190:** near-design C-D jets with no tones and no shock hump.

## Notation
- β = √(M_j² − 1): shock parameter used for all nozzles. β_d: its value at the nozzle design condition.
- M_j, V_j, T_j, ρ_j: fully expanded (ideally expanded) jet Mach number, velocity, static temperature and density.
- p: static pressure in the plume. p_a: ambient static pressure. p_t: total pressure.
- d: exit diameter. d_t: throat diameter. x: axial distance from the exit to the probe tip. y: radial distance from the centreline to the probe tip.
- x_s: nozzle inlet-to-exit distance. x_t: throat-to-exit distance.
- ψ: far-field angle measured from the **inlet** axis (180° is downstream). Note that many later papers measure angle from the downstream jet axis, which is 180° − ψ.
- OASPL, SPL: overall and band sound pressure level (dB re 20 µPa). C-D: convergent–divergent.

## Relevance to this project
This project covers resonance and feedback in Shock Lab group experiments, plus rocket-noise modelling (see CLAUDE.md). This report is a classic benchmark dataset rather than an analysis paper.

- **Screech and staging context:**
  - The Mach 1.0 contoured nozzle at β = 0.2–0.8 (M_j 1.02–1.28, NPR 1.94–2.70) covers the A1/A2 range studied in [Edgington-Mitchell et al. 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [2020](edgington-mitchell-2020-waves-in-screeching-jets.md) and [Nogueira et al. 2021](nogueira-2021-closure-mechanism-a1-a2-screech.md), and targeted by the PyFR staging LES in `Simulations/PyFR_Staging_Continuation/`.
  - The β grid is coarse (0.2, 0.4, 0.6, 0.7, 0.8, 0.94), so staging jumps can't be located from it. The report is useful mainly for absolute levels, directivity and tab-off broadband spectra.
  - The 40 Hz spectra at β = 0.4–0.94 (Appendix E, p. 144–148) give screech frequencies and harmonics for comparison with the guided-jet-mode models in [Mancinelli et al. 2019](mancinelli-2019-screech-prediction-upstream-modes.md) and [2021](mancinelli-2021-complex-valued-resonance-model-screech.md), and the unified view in [Edgington-Mitchell et al. 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md).
  - My estimate, not in the report: the β = 1.00 tone near 3 kHz gives f d/V_j ≈ 0.29, or about 0.31 on the fully expanded diameter. Read the frequency off p. 149 more precisely before using it.
- **Mean static-pressure surveys as validation data:**
  - The axial p/p_a profiles give shock-cell spacing and decay for models of the shock-cell wavenumber k_s. This is the quantity behind the KH–shock interaction in [Nogueira et al. 2021 (absolute instability)](nogueira-2021-absolute-instability-shock-containing-jets.md) and [wavepacket modulation](nogueira-2021-wavepacket-modulation-shock-containing-jets.md).
  - They can also be compared with Abel-inverted BOS or schlieren density from Shock Lab group rigs, e.g. [Tan et al. 2015](tan-2015-bos-density-axisymmetric-jets.md).
  - The surveys are digitisable only from the plots; no tabulated data are given.
- **Tabs as a control tool:** the 0.125d × 0.063d tab removes tones without much change to the maximum OASPL. This is the baseline for tab and trailing-edge screech control, cf. [Samimy et al. 1998](samimy-1998-rectangular-jet-trailing-edge-control.md) and [Norum (1983, AIAA J)](norum-1983-screech-suppression-supersonic-jets.md).
- **Data dependence of the methods:**
  - Everything here is time-averaged statistics: mean pressure, OASPL, 1/3-octave and 40 Hz PSDs. These are step 1 of the CLAUDE.md workflow.
  - The microphone signals were time-resolved (FM tape, flat to above 80 kHz), but only spectra are reported. There is nothing on intermittency, mode switching or phase.
  - For that, time-resolved acoustics and schlieren with wavelets or SPOD → reconstruction → Hilbert POD would be needed (see [Raiola & Kriegseis 2025](raiola-2025-hilbert-pod.md); for tonal-plus-broadband spectra, [Yeung & Schmidt 2024](yeung-2024-adaptive-spod-broadband-tonal.md)).
  - Single-microphone PSDs at 40 Hz resolution are the comparison point for any group far-field microphone measurement.
- **Modelling side:**
  - The report has no modelling of its own. It points to refs. 7–9 for plume-prediction comparisons.
  - From outside the paper: the dataset was widely used afterwards to calibrate and validate BBSAN models, e.g. Tam's stochastic shock-cell model. Check the specific citations before relying on this.
- **Rocket noise:**
  - The jets are unheated and small, so they bear only indirectly on launch vehicles.
  - [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) note that screech and BBSAN are not observed at full scale. Mixing-noise directivity peaking near 22.5–30° from the jet axis (ψ = 150–157.5°) is the lab-scale, unheated counterpart of the rocket directivity peaks discussed there.
  - [Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) also treats BSN in heated jets.
