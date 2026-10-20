---
key: "kandula-2008-near-field-acoustics-clustered-rocket-engines"
title: "Near-field acoustics of clustered rocket engines"
authors: ["Kandula, Max"]
year: 2008
type: "article"
venue: "J. Sound Vib. 309, 852–857"
bib: {"journal": "Journal of Sound and Vibration", "volume": "309", "pages": "852--857", "note": "Short communication"}
doi: "10.1016/j.jsv.2007.06.078"
arxiv: ""
pdf: "Kandula_2008_Near-Field-Acoustics-Of-Clustered-Rocket-Engines.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["model-only"]
methods: ["empirical-model", "propagation-model"]
flow: ["rocket-plume", "launch-vehicle", "supersonic", "heated", "clustered-jets"]
phenomena: ["mixing-noise", "jet-merging"]
params: {"nozzles": "4 (ELV test case)", "ground reflection coefficient": "0.5"}
topics: ["rocket-noise-models"]
related: ["kandula-2005-near-field-acoustics-clustered-rocket-engines", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "james-2012-directivity-curves-rocket-noise-model", "ranow-2021-acoustic-prediction-rocket-flame-deflector", "casalino-2009-hybrid-empirical-caa-rocket-noise", "kellison-2026-falcon-9-noise-two-campaigns", "stavropoulos-2024-upstream-waves-merging-twin-jets"]
cites: ["kandula-2005-near-field-acoustics-clustered-rocket-engines"]
summary: "Journal version of the two-zone clustered-nozzle model: isolated + merged-jet SP-8072 spectra give a double peak; corrected merging-length eq.; ground reflection 0.5 adds ≤5 dB"
---
# Near-field acoustics of clustered rocket engines

- **Authors:** Max Kandula (ASRC, Kennedy Space Center, FL), sole author (p. 852). The acknowledgements note that his 1973–1982 papers appeared under the name "K. Mastanaiah" (p. 857).
- **Source:** Journal of Sound and Vibration 309 (2008) 852–857, **Short Communication**. Received 3 Feb 2006, revised 6 Oct 2006, accepted 27 Jun 2007, online 24 Sep 2007 (p. 852). Partly funded by AFRL Wright-Patterson AFB (p. 857).
- **DOI:** 10.1016/j.jsv.2007.06.078
- **PDF:** `Kandula_2008_Near-Field-Acoustics-Of-Clustered-Rocket-Engines.pdf` (in `References/Paper_PDFs/`; 6 pp., born-digital, clean text layer; equations and figures checked against page images). Page numbers below are the printed journal pages 852–857 (PDF page = printed − 851).
- **Conference precursor:** [Kandula, Vu & Lindsay 2005](kandula-2005-near-field-acoustics-clustered-rocket-engines.md), which this paper identifies as **AIAA 2005-3091, 11th AIAA/CEAS Aeroacoustics Conference, Monterey, CA, May 2005** (ref. [13], p. 857), and says it is "derived primarily from" (p. 853). That note's PDF prints no venue or paper number, so this reference fills the gap. This is the paper cited as "Kandula 2008a" by [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md).
- **Tags:** rocket noise, launch vehicle, clustered nozzles, multiple jets, jet merging, two-zone model, Eldred 1963 (ASD-TDR-62-578), NASA SP-8072, equivalent nozzle diameter, double-peaked spectrum, near-field acoustic loads, ground reflection, image source, reflection coefficient, vehicle surface reflection, semi-empirical prediction, ELV, one-third octave spectra, coaxial-jet four-source analogy

## Summary
A condensed, single-author journal version of the 2005 AIAA paper. It implements Eldred's (1963) two-zone model for clustered rocket nozzles at intermediate spacing: in zone 1 the individual jets radiate independently, and in zone 2, downstream of the merging station x₄, the merged flow is replaced by one equivalent jet whose velocity and temperature follow from momentum and energy balances (eqs. 1–4, p. 854–855). Each zone's spectrum comes from the NASA SP-8072 single-nozzle method and the two are summed, which for a four-nozzle ELV gives a **double-peaked** near-field spectrum that matches one set of data (Fig. 4, p. 856). A second case (non-interfering large cluster) shows an image-source ground reflection with coefficient 0.5 adds up to ≈5 dB and shifts the peak up in frequency, closer to the data (Fig. 5, p. 856–857). The physics, equations and the two test-case figures are the same as in 2005; what changes is the presentation: cleaned-up equations, a recomputed Fig. 2, a broader literature framing, and removal of the RAPT software section.

## What the journal version adds or changes relative to the 2005 conference paper
Compare with [the 2005 note](kandula-2005-near-field-acoustics-clustered-rocket-engines.md):
- **Authorship and affiliation:** Kandula alone (ASRC); Vu and Lindsay are dropped (they remain on ref. [13]) (p. 852, 857).
- **RAPT GUI removed:** the 2005 Fig. 4 (Visual Basic RAPT tool, its input screen with the six-nozzle example and OASPL 153.66 dB output) is gone, as is the SP-8072 nomenclature list. The journal paper has 5 figures, not 6; the 2005 Figs. 5 and 6 are this paper's **Figs. 4 and 5**, and the curves appear to be the same (same peak levels and frequencies when read off).
- **Equations tidied (p. 854–855):**
  - Eq. 1b is written as $1/[1-\alpha(U_{e1}/U_{e4})(1-\beta)]$, using the nozzle exit velocity U_e1 throughout; the 2005 form used an undefined "U_e". The two agree if U_e = U_e1.
  - Eq. 3 now gives only α; the 2005 eq. 3's odd restatement of β (flagged in that note as a probable typo) is gone.
  - **Eq. 4 is corrected:** the x₄ > x_t branch is $2(r_2/r_{e3}-1)/(n^{1/2}-1) - 1$, with a "−1" the 2005 note does not show, and the branch conditions are on x₄ (x₄ > x_t, x₄ < x_t), not x. With the −1, the two branches meet continuously at x₄/x_t = 1 (my check), which resolves the inconsistency flagged in the 2005 note.
  - r₂ is still not defined in the text, but the clean Fig. 1 shows it as the radial distance from the cluster axis to a nozzle axis (p. 853).
- **Fig. 2 recomputed:** U_e4/U_e1 vs α is now plotted for β = T₀/T_e1 = 0, 0.2, …, 1.0 (curves consistent with eq. 1a), instead of Eldred's original chart for T_e1/T₀ = 1–6.7 (p. 854).
- **Captions corrected:** Figs. 4–5 are now captioned as SPL spectra (the 2005 captions said "sound power level") (p. 856).
- **Framing:** a new introduction cites Lighthill (1952, 1954), Ffowcs Williams (1963) and Tam (1972) as too cumbersome for complex configurations, SP-8072 as "the only documented" semi-empirical method for an isolated supersonic jet, and the coaxial-jet four-source methods (Fisher, Preston & Bryce 1998; Garrison et al. 2003) as similar ideas for subsonic commercial engines (p. 852–853).
- **Near-field extent** given as within 40 jet diameters, "about 100 m" from the launch mount at full scale (2005: 300 ft) (p. 853).
- **Vehicle-surface reflection** (+6 dB facing the exhaust) is now attributed to Kandula's 2006 J-deflector duct study (Int. J. Acoust. Vib. 11, ref. [6]), not SP-8072 (p. 855).
- **Conclusion** adds that ground reflections "seem to increase the peak frequency" (p. 857).
- Reference numbering fixed (the 2005 PDF had two refs numbered 5).

## Key findings
- **Why two zones** (p. 852–853):
  - Widely spaced nozzles: superpose individual jets. Tightly spaced: one equivalent nozzle via an equivalent diameter, so SP-8072 still applies. Both limits give a **single** spectral peak set by the characteristic diameter.
  - Intermediate spacing: jets radiate independently first and later merge, so both contribute and the equivalent-diameter approach "does not hold" over the whole region. It misses the multiple-peaked near-field spectrum (which matters for structural resonances) and typically carries **10–15 dB** uncertainty (p. 853).
  - Near field of interest: within ~40 jet diameters, ≈100 m from the mount at full scale (p. 853).
- **Zone-1 power is reduced for close nozzles:** only the peripheral mixing zone matters (Eldred), so the initial-region acoustic power can be considerably less (p. 855).
- **The zone 1–2 transition region is ignored** (p. 853).
- **Ground reflection:** typically +3–6 dB on vehicle OASPL; effective reflectivity 0.5 usual (p. 855).
- **Vehicle surface reflection:** up to +6 dB on the side facing the exhaust (angle dependent), ≈ free field on the sides, shielding on the far side; launch-stand walls should also be included (p. 855). Described, not modelled.
- **Clustered test case (Fig. 4, p. 856):** four identical nozzles, a "typical" ELV. Read off the plot: isolated-zone curve peaks ≈127 dB near 250 Hz; mixed-zone curve ≈119 dB near 15–20 Hz; total matches data with a plateau ≈120–121 dB over ≈10–40 Hz and peak ≈128 dB near 200–300 Hz. The high-frequency peak scales with the individual nozzles, the low-frequency one with the merged flow (p. 856). Below ≈5 Hz the data (≈102 dB at 2 Hz) fall below the prediction. Vehicle, engine parameters, spacing and microphone location are **not given**.
- **Ground-reflection test case (Fig. 5, p. 856–857):** a large cluster with negligible interaction, one vehicle position, SP-8072, reflection coefficient 0.5. Read off: no reflection ≈138 dB at ≈30 Hz; with reflection ≈141.5 dB at ≈40 Hz; data ≈141.5 dB at ≈50–70 Hz. Reflection adds up to 5 dB and improves the peak frequency (p. 857). Above ≈1 kHz the data lie several dB above both predictions with oscillations whose cause "is not clear" (p. 857).
- **Conclusions (p. 857):** "satisfactory agreement" for both effects; two peaks for intermediate spacing. As in 2005, one case each, no error metric, no case details.

## Setup / method

### Two-zone model (Eldred et al. 1963, ref. [9]; p. 853–855, Fig. 1)
- Fig. 1 (Eldred's sketch): nozzles of exit radius r_e3 at radius r₂ from the cluster axis; each has a core and a shear layer. At station x₄ the merged jet has core half-width a₄ (≈ r₂ − r_e3) at ≈U_m4 and a shear layer of width b₄ = b₃ to the 0.6 U_m4 point; r_e4 = a₄ + b₄ (p. 853–854).
- Zone 1: n isolated jets, SP-8072 each, superposed. Zone 2: one hypothetical nozzle at x₄ with U_e4 = U_m4, T_e4 and radius r_e4. Spectra of the two zones summed (p. 852–853, 856).
- Combined-stream properties from "mass, momentum and energy conservation considerations and some assumptions" (p. 854). Eq. 1a is reproduced exactly by conserving momentum flux and excess-enthalpy flux at equal static pressure with ρ ∝ 1/T and the same c_p (my derivation, below); the paper does not state the assumptions.
- No source-distribution, directivity or spectrum equations of SP-8072 are given; acoustic efficiency and other inputs for the test cases are not stated.

### Ground reflection (p. 855, Fig. 3)
- Image path: source A on the jet axis, vehicle point B, direct path AB and reflected path via ground point R; coefficient 0.5 (p. 855, 856). Whether the reflected path is added in energy or with phase is not stated.

## Key equations
From p. 854–855, checked on page images. Subscripts: e1 nozzle exit (total area for A), e3 single nozzle, e4 combined jet, 0 ambient.

- Combined-jet velocity (eq. 1a):
  $$\frac{U_{e4}}{U_{e1}} = f(\alpha,\beta) = \tfrac12\left\{\alpha(1-\beta) \pm \sqrt{\alpha^2(1-\beta)^2 + 4\alpha\beta}\right\}$$
  The + root is physical: β = 0 gives α, β = 1 (constant density) gives √α, α = 1 gives 1.
- Combined-jet temperature (eq. 1b):
  $$\frac{T_{e4}}{T_0} = \frac{1}{1 - \alpha\,(U_{e1}/U_{e4})(1-\beta)}$$
- Definitions (eq. 2a, 2b): $\alpha = A_{e1}/A_{e4}$, $\beta = T_0/T_{e1}$, $A_{e1} = nA_{e3} = n\pi r_{e3}^2$, $A_{e4} = \pi r_{e4}^2$.
- Combined-jet radius (eq. 2c):
  $$r_{e4} = a_4 + b_4 = r_2\left(1-\frac{r_{e3}}{r_2}\right)\left(\frac{n^{1/2}}{n^{1/2}-1}\right), \qquad a_4 \approx r_2 - r_{e3}$$
- Area ratio (eq. 3), follows from 2a–2c (checked):
  $$\alpha = \frac{(n^{1/2}-1)^2}{(r_2/r_{e3}-1)^2}$$
- Merging station (eq. 4), x_t = core length:
  $$\frac{x_4}{x_t} = \begin{cases} \dfrac{2(r_2/r_{e3}-1)}{n^{1/2}-1} - 1, & x_4 > x_t \\[2ex] \dfrac{r_2/r_{e3}-1}{n^{1/2}-1}, & x_4 < x_t \end{cases}$$
  Writing R = (r₂/r_e3 − 1)/(n^½ − 1) = α^(−1/2): x₄/x_t = R for R < 1 and 2R − 1 for R > 1, continuous at R = 1.
- **My derivation of eq. 1** (not in the paper): with u = U_e4/U_e1, momentum $\alpha/T_{e1} = u^2/T_{e4}$ and excess-enthalpy flux $\alpha(1-\beta) = u(1 - T_0/T_{e4})$ give $u^2 - \alpha(1-\beta)u - \alpha\beta = 0$, i.e. eq. 1a, and eq. 1b directly. Mass is not conserved separately (the merged jet includes entrained air).

> Check against the PDF: eq. 4's "−1" sits in the first branch only (p. 855); it was read from the clean page image and is likely the correct form of the 2005 equation. The assumptions behind eq. 1 are my reconstruction.

## Data tables
None.

## Figures worth remembering
- **Fig. 1 (p. 853):** Eldred's peripheral-nozzle interaction sketch with r_e3, r₂, a₄, b₄ = b₃, 0.6 U profiles, x₄, zone 1/zone 2 boundary. Clearer than the 2005 scan.
- **Fig. 2 (p. 854):** U_e4/U_e1 vs α for β = 0–1; β = 0 is the straight line u = α, β = 1 the top curve u = √α; hot jets give a lower merged velocity.
- **Fig. 3 (p. 855):** ground-reflection geometry (A source on jet axis, B on vehicle, R on ground, C nozzle at ground).
- **Fig. 4 (p. 856):** the double-peak result for the four-nozzle ELV (isolated, mixed, total vs data).
- **Fig. 5 (p. 856):** SP-8072 with and without ground reflection vs data for a non-interfering large cluster.

## Notation
- n: number of nozzles; r_e3: nozzle exit radius; r₂: cluster axis to nozzle axis (from Fig. 1); a₄: combined core half-width; b₄ = b₃: shear-layer width to 0.6 U; r_e4 = a₄ + b₄.
- A_e1 total nozzle exit area; A_e3 one nozzle; A_e4 combined jet. α = A_e1/A_e4; β = T₀/T_e1.
- U_e1 nozzle exit velocity; U_e4 = U_m4 maximum velocity of combined jet; T_e1, T_e4, T₀ exit, combined and ambient temperatures.
- x₄: zone boundary; x_t: core length.

## Relevance to this project
- **Rocket noise modelling:** this is the citable journal source of the Eldred/Kandula two-zone clustered-nozzle model, cited by [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (as Kandula 2008a, p. 11 there) and invoked qualitatively in [Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) Ch. 4 for Atlas V. Use this note for the corrected equations (especially eq. 4) and the [2005 note](kandula-2005-near-field-acoustics-clustered-rocket-engines.md) for the RAPT tool and its example inputs.
  - **Agreement / tension:** Tedrick's (1964) Saturn S-1 result in Lubert et al. (tight cluster ≈ single equivalent nozzle) matches this model's tight-spacing limit. Mathews (thesis) sees only a low-frequency bump, no clear double peak, for Atlas V (S/D ≈ 1.14, quick merging), and notes the model has no azimuthal dependence; [Kellison et al. 2026](kellison-2026-falcon-9-noise-two-campaigns.md) see no clear azimuthal dependence for Falcon 9's nine-engine cluster. [Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) needed half the efficiency for Vulcan's separated plumes, a clustering effect on η that this fixed-η model does not address. The paper's 10–15 dB equivalent-diameter uncertainty claim has no supporting data shown.
  - **Reflections:** the 0.5 image-source treatment is the simple baseline extended by [Ranow 2021](ranow-2021-acoustic-prediction-rocket-flame-deflector.md) (ray-traced duct reflections, cylinder diffraction) and superseded by CAA Green's functions in [Casalino et al. 2009](casalino-2009-hybrid-empirical-caa-rocket-noise.md). SP-8072's source-location problems ([James et al. 2012](james-2012-directivity-curves-rocket-noise-model.md), Lubert et al.) carry straight into both zones.
- **Lab multi-jet work:** interaction is pure merging (momentum/energy), with no coupling, screech or shielding. Twin-jet studies ([Nogueira & Edgington-Mitchell 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md), [Stavropoulos et al. 2024](stavropoulos-2024-upstream-waves-merging-twin-jets.md), [Jeun et al. 2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md)) show the interaction physics missing here; Stavropoulos et al. also treat merging twin jets as an equivalent single jet, but for the guided-jet modes rather than mixing noise.
- **Data dependence:** everything is one-third-octave, time-averaged SPL; no time-resolved or modal analysis. The double peak is a static signature of two source regions. With time-resolved lab schlieren or acoustics of a multi-nozzle jet, SPOD could test it: modes at the high-frequency peak should sit near the nozzles and modes at the low-frequency peak downstream of x₄. Reconstruction by zone followed by Hilbert POD could show whether the merged-plume source is intermittent. With non-time-resolved PIV, the mean field alone can check x₄ (eq. 4) and the merged-jet velocity (eq. 1a).
- **Modelling side:** purely empirical-integral (control-volume balances + SP-8072 source spectra + spherical spreading and an image source). No LES, stability or wavepacket model; those would be needed for azimuthal asymmetry, shielding and coupling.
- **Follow-ups for `/add-paper`:** Eldred et al. 1963 ASD-TDR-62-578; Potter & Crocker 1966 NASA CR-566; Fisher, Preston & Bryce 1998 JSV 209 (coaxial four-source); Kandula 2006 Int. J. Acoust. Vib. 11 (J-deflector duct); Kandula & Vu 2003 AIAA-2003-3288.
