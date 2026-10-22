---
key: "kandula-2005-near-field-acoustics-clustered-rocket-engines"
title: "Near-Field Acoustical Characterization of Clustered Rocket Engines"
authors: ["Kandula, Max", "Vu, Bruce T.", "Lindsay, Halie K."]
year: 2005
type: "conference"
venue: "AIAA 2005-3091 (Aeroacoustics Conf.)"
bib: {"booktitle": "11th AIAA/CEAS Aeroacoustics Conference, Monterey, CA", "publisher": "American Institute of Aeronautics and Astronautics", "note": "AIAA 2005-3091; NASA NTRS 20120000605"}
doi: ""
arxiv: ""
pdf: "rocket-noise-models/Kandula-EtAl_2005_Near-Field-Acoustical-Characterization-Of-Clustered-Rocket-Engines.pdf"
version: "conference"
unverified: ["PDF prints no year, venue or paper number: year from the NTRS record, AIAA 2005-3091 and conference from ref. [13] of Kandula 2008 (JSV 309)"]
group: false
facility: ""
data: ["model-only"]
methods: ["empirical-model", "propagation-model"]
flow: ["rocket-plume", "launch-vehicle", "supersonic", "heated", "clustered-jets"]
phenomena: ["mixing-noise", "jet-merging"]
params: {"nozzles": "4 (ELV test case)", "ground reflection coefficient": "0.5"}
topics: ["rocket-noise-models"]
related: ["kandula-2008-near-field-acoustics-clustered-rocket-engines", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "james-2012-directivity-curves-rocket-noise-model", "ranow-2021-acoustic-prediction-rocket-flame-deflector", "casalino-2009-hybrid-empirical-caa-rocket-noise", "kellison-2026-falcon-9-noise-two-campaigns", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets"]
cites: []
summary: "Two-zone clustered-nozzle model (Eldred): isolated jets + merged equivalent jet, each via SP-8072, give a double-peaked near-field spectrum; ground reflection adds ≤5 dB; RAPT GUI"
---
# Near-Field Acoustical Characterization of Clustered Rocket Engines

- **Authors:** Max Kandula (Sierra Lobo, Inc. (USTDC), Kennedy Space Center), Bruce T. Vu (NASA John F. Kennedy Space Center; Lead, Launch Systems Testbed), Halie K. Lindsay (North Carolina A&T State University, graduate student)
- **Source:** AIAA conference paper, NASA Technical Reports Server record 20120000605; dated 2005 from the NTRS record and the original filename. **The PDF itself prints no year, venue, paper number or DOI** (each page footer reads only "American Institute of Aeronautics and Astronautics"); the newest reference cited is from 2003 (p. 6–7). Funded partly by AFRL Wright-Patterson AFB (p. 6).
  - Related journal paper, now in the library as [kandula-2008](kandula-2008-near-field-acoustics-clustered-rocket-engines.md): Kandula, *Near-field acoustics of clustered rocket engines*, J. Sound Vib. 309 (2008), doi:10.1016/j.jsv.2007.06.078. It is cited as "Kandula 2008a" in the Lubert et al. (2022) review. This 2005 paper is short (6 pages of text) and is probably the conference precursor rather than a longer version.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Kandula-EtAl_2005_Near-Field-Acoustical-Characterization-Of-Clustered-Rocket-Engines.pdf` (12 pp.; scanned with an OCR text layer, so the extracted equations are garbled; equations below were read from page images). Text p. 1–6, references p. 6–7, figures p. 8–12.
- **Tags:** rocket noise, launch vehicle, clustered nozzles, multiple jets, jet merging, two-zone model, Eldred 1963 (ASD-TDR-62-578), NASA SP-8072, equivalent nozzle diameter, double-peaked spectrum, near-field acoustic loads, ground reflection, reflection coefficient, vehicle surface reflection, RAPT (Rocket Acoustic Prediction Tool), semi-empirical prediction, ELV, one-third octave spectra

## Summary
The paper implements Eldred's (1963) two-zone model for the noise of closely but not tightly spaced clustered rocket engines (p. 1, 3). In zone 1 the individual plumes radiate independently and their spectra are superposed; in zone 2, after the plumes have merged, the flow is replaced by one hypothetical equivalent nozzle whose velocity, temperature and size come from mass, momentum and energy balances (eqs. 1–4, p. 4–5). Each zone's spectrum is computed with the NASA SP-8072 single-nozzle method and the two are summed, which for intermediate spacing gives a **double-peaked spectrum**: a high-frequency peak scaled on the individual nozzle diameter and a low-frequency peak scaled on the merged jet (p. 1, 5; Fig. 5). Ground reflection (coefficient 0.5) is added as an image path and raises predicted levels by up to about 5 dB, improving agreement with data for a non-interfering cluster (p. 6; Fig. 6). The method is packaged in a Visual Basic GUI, RAPT (p. 5; Fig. 4). The paper is a short method demonstration: test-case data sources, measurement positions and engine parameters for Figs. 5–6 are not given.

## Key findings
- **Why a two-zone model is needed** (p. 3):
  - Widely spaced (non-interfering) nozzles: superposition of individual jets works.
  - Tightly spaced nozzles: noise is mainly from the combined flow, handled in SP-8072 by an equivalent diameter.
  - Both limits give a **single** spectral peak set by the characteristic diameter.
  - At intermediate spacing the plumes radiate independently near the nozzles and then merge, so the spectrum has contributions from both and the equivalent-diameter approach "does not hold". It misses the multiple-peaked near-field spectrum, which matters for structural resonances, and carries an uncertainty of about **10–15 dB** (p. 3).
  - The near field of interest is "typically within 40 jet diameters", about 300 ft from the launch mount at full scale (p. 3).
- **Zone 1 is reduced when nozzles are close:** following Eldred, total acoustic power from the initial mixing region can be considerably less because only the peripheral mixing zone matters for noise generation (p. 5).
- **The transition region between zones is ignored** because of its complexity (p. 4).
- **Ground reflection:** raises OASPL on the vehicle by **3–6 dB**; an overall effective reflectivity of **0.5** is usual (p. 5). In the test case, reflection raises SPL by up to **≈5 dB** and moves the predicted peak to a slightly higher frequency, closer to the data (p. 6; Fig. 6).
- **Vehicle surface reflection:** up to **+6 dB** relative to free field on the vehicle side facing the exhaust, depending on incidence angle; negligible on the sides; shielding (lower SPL) on the far side. Large surfaces such as launch-stand walls should be included (p. 5, citing SP-8072). These effects are described but not modelled in the test cases.
- **Clustered test case (Fig. 5, p. 5, 12):** a typical Expendable Launch Vehicle (ELV) configuration with four identical nozzles. The isolated-zone curve peaks at ≈127 dB near 200–300 Hz and the mixed-zone curve at ≈119–120 dB near 20 Hz (values read off the plot). Their sum reproduces the data's plateau at ≈120 dB for roughly 15–60 Hz and peak of ≈128 dB near 250 Hz. No details of the data (vehicle, test, microphone location) are given.
- **Ground-reflection test case (Fig. 6, p. 6, 12):** a "large rocket cluster" with negligible jet interaction, at one position on the vehicle, SP-8072 single-nozzle model. Read off the plot: no reflection peaks ≈138 dB near 30–40 Hz; with reflection ≈141.5 dB near 40 Hz; data ≈141.5 dB near 50 Hz. Above ≈1 kHz the data sit several dB above both predictions and show oscillations whose cause "is not clear" (p. 6).
- **Conclusion claims** (p. 6): satisfactory agreement for both the interaction and ground effects; two peaks are "evident" for intermediate spacing. The agreement is shown for one case each, with no error metric.

## Setup / method

### Two-zone clustered-nozzle model (Eldred 1963; p. 3–5, Figs. 1a–b)
- **Zone 1:** each of the n nozzles radiates as an isolated jet (SP-8072 source distribution per nozzle); spectra superposed.
- **Zone 2:** starts at axial station x₄ where the jets have fully mixed. A hypothetical combined-flow nozzle is placed there with exit velocity U_e = U_m4 and radius r_e4 = a₄ + b₄ (Fig. 1b, p. 9). a₄ is the width of the combined jet core; r_e4 is where the local velocity is 0.6 of the maximum (based on effective momentum) (p. 4).
- **Combined-jet properties:** from mass, momentum and energy balances (p. 4), giving the velocity and temperature ratios as functions of the area ratio α and temperature ratio β (eqs. 1–3). Fig. 2 (from Eldred 1963) plots U_e4/U_e1 vs α for T_e1/T₀ = 1, 1.33, 2, 3, 4, 5, 6.7; hot jets give a markedly different (lower) combined velocity than the constant-density case (p. 4, 10). Potter & Crocker (1966, NASA CR-566) treat temperature more fully (p. 4).
- **Each zone's spectrum** comes from the NASA SP-8072 method (Eldred 1971) for a single equivalent nozzle, then the two are summed (p. 1). The SP-8072 equations themselves (sound power, source allocation along the plume, directivity) are **not reproduced**, although the nomenclature lists the corresponding symbols (W_m, W_OA, W(f, x), St_x, DI(b, θ), L_W,b) (p. 1–2).

### Ground reflection (p. 5, Fig. 3)
- Image-source geometry: from axial source point A to vehicle point B, direct path AB plus a ground-reflected path via R (Fig. 3, p. 10). Reflection coefficient 0.5 in the test case (p. 6). Whether the reflected contribution is added in energy or with phase is not stated.

### RAPT software (p. 5, Fig. 4)
- Visual Basic GUI calling a C++ or Fortran DLL with the prediction code, intended for parametric design studies (p. 5). Options include ground reflection, mixed zone, noise zone 2, Strouhal calculation, and inputs for a deflector (angle and distance) (Fig. 4b, p. 11).
- **Example inputs shown in Fig. 4b** (p. 11; read from the screenshot, US units), apparently a Saturn V/F-1-like six-nozzle case: n = 6; radius ratio 6; nozzle exit diameter 6.5 ft; thrust 622,700 lbf per engine; exit velocity 8600 ft/s; exhaust (fully expanded) velocity 14,120 ft/s; exit Mach 3.12; computed exhaust Mach 4.20 (= 14,120/3360); exit temperature 3600 °R; ambient 520 °R; exit pressure 9.4 psi vs ambient 14.7 psi; exit density 0.0065 lb/ft³; c_p 0.65 (plume) and 0.24 (ambient) Btu/lb·°F; molecular weight 26 (plume), 29 (air); plume speed of sound 3360 ft/s, ambient 1130 ft/s; acoustic efficiency 0.01; reflection coefficient 0.5; "Delta" 7; one-third-octave bands 5–41; deflection angle 91°; nozzle-to-deflector distance 400 ft; nozzle-to-vehicle-point distance 3 ft; mixing distance 0.
- **Example output (Fig. 4a):** OASPL = 153.66 dB, with a broad SPL plateau of ≈140 dB from roughly 100 Hz to 5 kHz (p. 11).

> Check against the PDF: Fig. 4b values are read from a low-resolution scanned screenshot. The engine is not identified in the text; "Saturn V/F-1-like" is my inference from the image and n = 6 does not match Saturn V (5 F-1s). The thrust per engine (622,700 lbf) is also well below an F-1's.

## Key equations
All from p. 4–5, read from page images. Subscripts: e1 individual nozzle exit (total over all nozzles for area), e3 single nozzle, e4 combined jet, 0 ambient.

- Velocity ratio of the combined jet (eq. 1a):
  $$\frac{U_{e4}}{U_{e1}} = f(\alpha,\beta) = \tfrac{1}{2}\left\{\alpha(1-\beta) \pm \sqrt{\alpha^2(1-\beta)^2 + 4\alpha\beta}\right\}$$
  Check: α = 1 gives 1 (with +); β = 1 (cold) gives √α.
- Temperature of the combined jet (eq. 1b):
  $$\frac{T_{e4}}{T_0} = \frac{U_{e4}}{U_{e4} - \alpha U_e(1-\beta)}$$
  Check: α = 1, U_e4 = U_e gives T_e4/T_0 = 1/β = T_e1/T_0.
- Definitions (eq. 2a): $\alpha = A_{e1}/A_{e4}$, $\beta = T_0/T_{e1}$, with $A_{e1} = nA_{e3} = n\pi r_{e3}^2$ and $A_{e4} = \pi r_{e4}^2$.
- Combined-jet radius (eq. 2b):
  $$r_{e4} = a_4 + b_4 = r_2\left(1 - \frac{r_{e3}}{r_2}\right)\left(\frac{n^{1/2}}{n^{1/2}-1}\right), \qquad a_4 \approx r_2 - r_{e3}$$
- Area ratio (eq. 3):
  $$\alpha = \frac{(n^{1/2}-1)^2}{(r_2/r_{e3} - 1)^2}$$
  Consistent with eq. 2b and 2a (substituting gives exactly this). Eq. 3 also restates β as $U_{e4}T_0/(U_{e4} - \alpha U_e(1-\beta))$, which is the right-hand side of eq. 1b multiplied by T_0, with β on both sides. It looks like a typo for eq. 1b rather than a separate result.
- Mixing length (eq. 4), x_t = core length:
  $$\frac{x_4}{x_t} = \begin{cases} \dfrac{2(r_2/r_{e3} - 1)}{n^{1/2}-1}, & x > x_t \\[2ex] \dfrac{r_2/r_{e3} - 1}{n^{1/2}-1}, & x < x_t \end{cases}$$

> Check against the PDF: the eq. 3 expression for β and the branch conditions in eq. 4 (x > x_t / x < x_t) are printed as shown but look inconsistent; consult Eldred et al. 1963 (ASD-TDR-62-578) or Kandula 2008 JSV. **r₂ is not defined** in the paper; from Fig. 1 and eq. 2b it is presumably the radial position of the outer nozzle row (e.g. cluster axis to nozzle edge or centre), and "radius ratio" r₂/r_e3 = 6 in Fig. 4b. The ± in eq. 1a is printed; the + root is the physical one.

## Data tables
None in the paper. The RAPT example inputs above (Fig. 4b) are the only tabulated-style numbers.

## Figures worth remembering
- **Fig. 1a (p. 8):** Eldred's sketch of peripheral-nozzle plume interaction: individual velocity profiles, the outer portion of each flow at core tip, and the mixed-jet profile downstream (zone 1 → zone 2).
- **Fig. 1b (p. 9):** hypothetical combined-flow nozzle superposed on the downstream merged flow: core U = U_e4, r_e4 = a₄ + b₄, U = 0.6 U_e3 boundary.
- **Fig. 2 (p. 10):** U_e4/U_e1 vs α = A_e1/A_e4 for T_e1/T_0 = 1–6.7 (Eldred 1963).
- **Fig. 3 (p. 10):** ground-reflection geometry (source A on jet axis, vehicle point B, reflection point R).
- **Fig. 4a–b (p. 11):** RAPT output (SPL spectrum, OASPL 153.66 dB) and input screen.
- **Fig. 5 (p. 12):** the key result: isolated-zone, mixed-zone and total predicted one-third-octave SPL vs data for a four-nozzle ELV, showing the double peak (≈20 Hz and ≈250 Hz). Caption says "sound power level" but the axis is SPL (dB), 1/3 octave.
- **Fig. 6 (p. 12):** SP-8072 prediction with and without ground reflection vs data for a non-interfering large cluster; reflection adds up to ≈5 dB. Caption again says "sound power"; axis is SPL.

## Notation
- n: number of nozzles; r_e3: individual nozzle exit radius; r₂: undefined in the text (cluster radius, see above); r_e4 = a₄ + b₄: combined-jet radius; a₄: combined core width.
- A_e1 = total individual-jet exit area; A_e3 = one nozzle's exit area; A_e4 = combined-jet area.
- α = A_e1/A_e4; β = T_0/T_e1.
- U_e1: nozzle exit velocity; U_e4 (= U_m4): maximum velocity of the combined jet; U_e: fully expanded exit velocity.
- T_e1: jet exit temperature; T_e4: combined-jet temperature; T_0: ambient.
- x₄: start of zone 2; x_t: core length.
- St = f_p d_e/u_j; St_x = f x a_e/(U_e a_0) (axial Strouhal, SP-8072); DI(b, θ): directivity index in band b; W_m: mechanical power; W_OA: overall acoustic power; W(f, x): power per Hz per unit axial length; L_W,b: band power level re 10⁻¹² W (p. 1–2).
- Reference numbering in the PDF has two refs labelled 5 (Kandula & Vu 2003 and Eldred SP-8072), so "Eldred⁵" means SP-8072 and "Eldred⁷" means Eldred et al. 1963 (p. 6). The results section is unnumbered (sections jump from III to V).

## Relevance to this project
- **Rocket noise modelling:** this is the source of the "Kandula two-zone" clustered-nozzle model cited by [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (p. 11 there, as Kandula 2008a) and by [Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) Ch. 4 for Atlas V. It sits on top of SP-8072, so it inherits SP-8072's source-location error discussed by Lubert et al. and [James et al. 2012](james-2012-directivity-curves-rocket-noise-model.md).
  - **Agreement / tension:** Lubert et al. report Tedrick's (1964) result that the tightly spaced Saturn S-1 eight-engine cluster and a single F-1 of equal thrust gave nearly identical spectra, supporting the equivalent-nozzle limit; Kandula's model reproduces this limit and adds the double peak only at intermediate spacing. Mathews (thesis) sees only a low-frequency "bump" at 0° for Atlas V (S/D ≈ 1.14) rather than a clear double peak, and notes the two-zone model has no azimuthal dependence; [Kellison et al. 2026](kellison-2026-falcon-9-noise-two-campaigns.md) see no clear azimuthal dependence for the nine-engine Falcon 9 cluster. [Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) needed half the efficiency for the separated Vulcan plumes, another clustering effect this model does not address (it uses a fixed η).
  - **Ground and pad reflection:** the image-source treatment with reflectivity 0.5 is the same simple approach extended in [Ranow 2021](ranow-2021-acoustic-prediction-rocket-flame-deflector.md) (ray-traced flame-duct reflections) and replaced by full-wave Green's functions in [Casalino et al. 2009](casalino-2009-hybrid-empirical-caa-rocket-noise.md).
  - **Validation:** compare Fig. 5–6 accuracy (single cases, no error metric) with modern validated tools such as SATURN (Mathews thesis; Kellison et al. 2026, ≈1 dB RMSE in far field).
- **Lab twin/multi-jet work:** the model treats plume interaction as pure merging (mass/momentum/energy) with no coupling, screech or shielding. Twin-jet coupling studies ([Nogueira & Edgington-Mitchell 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md), [Esfahani et al. 2021](esfahani-2021-coupling-modes-twin-rectangular-jets.md), [Jeun et al. 2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md)) show interaction physics that is absent here; Lubert et al. note screech is not seen at full scale, so for rockets the merging picture may be adequate.
- **Data dependence of methods:** none of the analysis here is time-resolved: everything is one-third-octave, block-averaged spectra (time-averaged SPL). The double peak in a near-field spectrum is a static signature of two source regions. In lab multi-jet schlieren or acoustics (time-resolved), SPOD could test the two-zone picture directly: modes at the high-frequency peak should be localised near the individual nozzles and modes at the low-frequency peak downstream of merging. Spatial filtering of SPOD reconstructions by zone, then Hilbert POD, could show whether the merged-plume source is intermittent. With non-time-resolved PIV, the mean field alone could check the predicted merging length x₄ and combined-jet velocity (eqs. 1, 4).
- **Modelling side:** the model is purely empirical-integral (control-volume balances plus empirical source spectra). No LES, stability analysis or propagation physics beyond spherical spreading and an image source. A wavepacket or LES-based extension (as called for by Lubert et al.) would be needed to capture shielding, azimuthal asymmetry and coupling.
- **Follow-ups, candidates for `/add-paper`:** Eldred et al. 1963 ASD-TDR-62-578 (original two-zone model); Potter & Crocker 1966 NASA CR-566; Kandula & Vu 2003 AIAA-2003-3288 (scaling laws); Fisher, Preston & Bryce 1998 (coaxial-jet four-source model, JSV 209).
