---
key: "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off"
title: "Modifications to the NASA SP-8072 Distributed Source Method II for Ares I Lift-off Environment Predictions"
authors: ["Haynes, Jared M.", "Kenny, R. Jeremy"]
year: 2009
type: "conference"
venue: "AIAA 2009-3160"
bib: {"booktitle": "2009 AIAA Aeroacoustics Conference", "note": "AIAA paper 2009-3160; NTRS copy bundles extended abstract, paper and slides"}
doi: "10.2514/6.2009-3160"
arxiv: ""
pdf: "rocket-noise-models/Haynes-Kenny_2009_Modifications-To-The-NASA-SP-8072-Distributed-Source-Method-II-For-Ares-I-Lift-Off.pdf"
version: "conference"
unverified: ["DOI not printed in the PDF; assumed AIAA form, not checked"]
group: false
facility: "NASA MSFC"
data: ["full-scale", "microphones-far", "RANS"]
methods: ["empirical-model"]
flow: ["rocket-plume", "launch-vehicle", "impinging-jet", "supersonic", "underexpanded", "heated"]
phenomena: ["source-location", "directivity", "installation-effects"]
params: {"vehicle": "Ares I (RSRMV)", "D_e": "3.88 m", "U_e": "2454 m/s", "thrust": "14.7 MN"}
topics: ["rocket-noise-models"]
related: ["ranow-2021-acoustic-prediction-rocket-flame-deflector", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "kenny-2009-space-shuttle-srm-plume-acoustics", "james-2012-directivity-curves-rocket-noise-model", "casalino-2009-hybrid-empirical-caa-rocket-noise", "gee-2016-near-field-intensity-static-rocket-firings"]
cites: []
summary: "Ares I DSM-2 fixes: Varnier core (half Eldred's, backed by RSRM RANS), core ended at the deflector (Saturn V check), RSRM static-fire directivity; OASPL +5–7 dB, peak 2 bands up"
---
# Modifications to the NASA SP-8072 Distributed Source Method II for Ares I Lift-off Environment Predictions

- **Authors:** Jared M. Haynes (Qualis Corp. / ESTS Group at NASA Marshall Space Flight Center; the slides say Jacobs ESTS Group), R. Jeremy Kenny (NASA MSFC, Acoustics and Stability Team, ER42) (p. 5, 17)
- **Source:** AIAA paper 2009-3160, presented at the 2009 AIAA Aeroacoustics Conference (slides, p. 17). Found via NASA NTRS. No DOI is printed in the PDF; the usual AIAA form would be doi:10.2514/6.2009-3160 (not checked).
- **PDF:** `rocket-noise-models/Haynes-Kenny_2009_Modifications-To-The-NASA-SP-8072-Distributed-Source-Method-II-For-Ares-I-Lift-Off.pdf` (35 pp.). The NTRS file bundles three parts: **pp. 1–4** a 4-page extended abstract; **pp. 5–16** the 12-page AIAA paper (printed page = PDF page − 4); **pp. 17–35** the 19 conference slides. Page refs below are PDF pages. The PDF claims to be password-protected to the Read tool; text came from `pdftotext`, and figures and equations were checked on rendered pages.
- **Tags:** rocket noise, lift-off acoustics, Ares I, RSRM, RSRMV, NASA SP-8072, distributed source method (DSM-1, DSM-2), acoustic efficiency, sound power, potential core length, supersonic core, Eldred vs Varnier core length, core termination at deflector, flame deflector, directivity index, static firing, Saturn V lift-off data, RANS CFD, semi-empirical prediction

## Summary
MSFC needed lift-off acoustic loads for Ares I, whose first stage was a five-segment version of the Shuttle solid rocket motor (RSRMV), and used the second distributed source method (DSM-2) of NASA SP-8072 (Eldred 1971) (p. 6). The authors make three changes to DSM-2 (p. 5, 8–13). (1) They halve Eldred's core-length formula, following Varnier, and support this with a RANS solution of an RSRM plume. (2) They end the potential core where the plume hits the flame deflector ("terminated core"), so the noise sources sit closer to the vehicle; this is checked against lift-off data from five Saturn V flights. (3) They replace Eldred's generic directivity indices with ones measured on a 305 m arc around two horizontal RSRM static firings. Together the changes raise the predicted Ares I SPL by more than 5 dB overall (7 dB at the aft skirt, 5 dB at the instrument ring) and move the spectral peak about two third-octave bands higher (p. 5, 15, 32–33). The work is purely semi-empirical. The CFD is used only qualitatively, to see where the low-turbulence core ends, and no Ares I measurements are compared.

## Key findings
- **Why DSM-2 needs fixing:** users have found DSM-2 predictions to be 5–10 dB below DSM-1 predictions and below measured data (p. 15). The slides say DSM-2 is often 5–15 dB below launch data, depending on the original undeflected core length (p. 27).
- **Core length is about 2× too long in SP-8072:**
  - Eldred's formula x_t/d_e = 3.45(1 + 0.38M_e)² (Eq. 9) was built from Lighthill's subsonic and Anderson's supersonic jet work (p. 8). Later studies found that the right reference length is the potential core, and that Eldred's supersonic-regime value is about twice too long (p. 8, refs 5–7).
  - Correcting the exit state to perfect expansion (Tam 2007) cannot by itself remove a factor of two (p. 8).
  - Varnier's form halves the constant to 1.75 (Eq. 10, p. 9).
  - The extended abstract cites Shirie (1967): oblique shocks, Mach disks and expansion waves raise turbulence and shorten both the potential and the supersonic cores. Only a shock-free, perfectly expanded jet reaches Eldred's lengths; otherwise, including some nominally perfectly expanded cases, cores are about half as long (p. 2).
  - The slides add that for 2 < M_e < 3, horizontal static-test data agree with the Varnier length within 0–3 dB, against 5–7 dB with Eldred's (Haynes 2006–2009, unpublished) (p. 25).
- **RANS check (RSRM, free plume, p. 9, Fig. 3):**
  - The low-turbulence ("potential") core is about **24 m** long and the flow stays supersonic for **57 m**.
  - DSM-2 puts peak source power at 1.5 x_t, so the CFD core puts it at **36 m**.
  - The NRSP curve with the Varnier core peaks near 36 m; with Eldred's core it peaks at **75 m**. The authors take this as evidence that Eldred's length does not suit non-ideally expanded plumes, and they adopt Varnier's for the under-expanded RSRMV.
- **Core termination at the deflector (p. 10–11, Figs. 4–6):**
  - DSM-1 has separate source-location curves for undeflected plumes, open-scoop deflection and closed-bucket deflection, and deflection pulls the sources much closer to the nozzle (Fig. 4).
  - DSM-2 only turns the plume axis, so the core and the source distances survive the deflection. This makes DSM-1 and DSM-2 inconsistent for vertical launch (p. 10).
  - RANS of a deflected RSRM plume (Fig. 5) shows an abrupt rise in turbulence along the deflector surface, which ends the low-turbulence region. The flow turns 90° and stays supersonic but highly turbulent. Peak source power at 1.5 x_t then falls at, or just downstream of, the bottom of the deflector (p. 10).
  - In the new approach the core is assumed destroyed on impact, and the NRSP curve (Fig. 2) is applied with this shortened core (p. 11).
- **Saturn V validation (p. 11–12, Figs. 7–8):**
  - The data are third-octave lift-off spectra from five flights at each of two stations: 85 m (AS-501, 503a, 503b, 504, 505) and 45 m (AS-501, 502, 503a, 503b, 506) from the nozzle exit.
  - The full-core DSM-2 curve is far too low and peaks at too low a frequency. The terminated-core curve follows the data level and spectral shape closely. Read from the figures: at 85 m the data peak at about 143–144 dB near 100–200 Hz, the terminated core at about 145 dB and the full core at about 137 dB near 25–30 Hz.
  - Mechanism: the sources move closer to the vehicle, which shortens the attenuation distance, and the shorter x in the modified Strouhal number pushes the slice spectra to higher frequency (p. 11).
- **RSRM directivity (p. 12–13, Figs. 9–11):**
  - Far-field microphones were on a **305 m** arc at 26°–146° from the exhaust axis, and the angles were reduced by 4° for nozzle vectoring.
  - Only FVM-2 and FSM-15 were used. TEM-13 was left out because its nozzle duty cycle was non-standard.
  - Directivity alone can change the level by 15 dB at some frequencies (p. 12).
  - The lowest frequencies are the most directional, and the peak angle rises with frequency. Read from Fig. 11: the 10 Hz DI peaks at about +8 dB near 42°, 20 Hz at about +6.5 dB near 52°, and bands from 50 Hz to 10 kHz at +4 to +6.5 dB near 55°–62°.
  - Both trends agree with Eldred's curves (p. 13).
  - **Unlike Eldred's curves**, the SPLs get less directional only up to 500 Hz and then more directional again from 500 Hz to 10 kHz. The authors flag possible terrain effects at the test site but do not resolve it (p. 13, 15–16).
  - The extended abstract plots the same DI against log(St) for 90°–162° (Fig. 1, p. 3).
- **Ares I results (p. 13–15, Figs. 12–13):**
  - At 4.5 m from the nozzle exit (aft skirt), OASPL rises by 7 dB (slides, p. 32). Read from the figure, the band peak goes from about 142 dB near 100 Hz to about 149.5 dB near 125–160 Hz.
  - At 76 m (instrument ring), OASPL rises by 5 dB (p. 33). The band peak goes from about 134 to about 139 dB, near 100 Hz.
  - The RSRM DI make the spectrum fall more steeply on both sides of the peak and add a slope change near 2 kHz (p. 14).
  - Core termination mattered less for Ares I than for Saturn V because the original cores differ in length (p. 16).
- **Future work (p. 16, 34):** parametric CFD of potential-core and supersonic-core lengths against exit conditions; more launch-data validation of the core changes; using the RSRM data in both DSM-1 and DSM-2.

## Setup / method
- **Prediction chain (DSM-2, p. 6–8):**
  1. The overall sound power is the acoustic efficiency times the jet kinetic power (Eq. 1).
  2. The power is spread along the plume axis with Eldred's Fig. 12 NRSP curve, scaled by the core length x_t, over slices of length Δx that the analyst chooses (Eqs. 3, 8).
  3. Each slice gets a spectrum from Eldred's Fig. 13, which is in terms of the modified Strouhal number f x a_e/(U_e a_o) (Eq. 4).
  4. Each slice centre is treated as a monopole, with spherical spreading plus a band-dependent directivity index DI_b(θ) (Eq. 5, Fig. 1 on p. 7).
  5. Levels are log-summed over slices and then over bands (Eqs. 6–7).
- **Lift-off simulation (p. 13):** the calculation is repeated at several vehicle elevations, with the sources moving along the (deflected) axis. The maximum envelope is kept until every source lies upstream of the deflector.
- **Acoustic efficiency:** η is described as an empirical ratio, "generally" below 1% (p. 6). The RSRM tests were also used to compute overall sound power and η (p. 12, 30), but **neither the η value nor the slice length Δx used for Ares I is given**.
- **Ares I inputs (Table 1, p. 14; Kibbey 2006 ballistics):** one nozzle, d_e = 3.88 m (12.73 ft), U_e = 2454 m/s (8050 ft/s), sea-level thrust 14.7 MN (3.31 Mlbf). The exit Mach number and the deflector geometry are not stated.
- **RANS CFD (p. 9–11; Haynes 2008 internal report, solutions by J. West, MSFC):**
  - The paper gives no solver, turbulence model, mesh, chemistry or boundary-condition details.
  - The core is identified from contours of u′ = √(2k/3) taken from the RANS turbulent kinetic energy (colour scale 0–314 m/s).
  - Two cases: an under-expanded RSRM plume into a standard atmosphere, and the same plume striking the launch-pad deflector.
  - The "laminar core" in the paper means the low-turbulence potential core, not laminar flow.
  - A steady RANS solution gives no unsteady or acoustic information. It is used only to place x_t and the termination point, not to predict noise.
- **RSRM static-firing acoustics (p. 12):** horizontal static firings at Promontory, Utah (MSFC Fluid Dynamics Branch and Wyle Labs), measured on a circular far-field array centred on the nozzle exit. DI = band SPL minus the energy average over the n microphones (Eq. 11). Long-time third-octave SPLs are used; no time-domain statistics.
- **Data dependence:** the method needs only engine parameters and geometry. Its empirical inputs (NRSP, spectra, DI) are long-time-averaged third-octave quantities, so nothing here touches intermittency or time–frequency behaviour.

## Key equations
Rebuilt from the rendered pages 6–9 and 13 (log = log₁₀; levels in dB).
- Overall sound power (Eq. 1, p. 6): $W_{OA}=\eta\left(\tfrac12\dot m U_e^2\right)$; $L_W=10\log(W_{OA}/W_{ref})$, $W_{ref}=10^{-12}$ W (Eq. 2).
- Slice power (Eq. 3, p. 6): $L_{W,s}=L_W+10\log\!\left(\dfrac{W_x}{W_{OA}}x_t\right)+10\log\!\left(\dfrac{\Delta x}{x_t}\right)$.
- Slice band power (Eq. 4, p. 7): $L_{W,s,b}=L_{W,s}+10\log\!\left(\dfrac{W_{fx}}{W_x}\dfrac{U_e a_o}{x a_e}\right)+10\log\!\left(\dfrac{x a_e}{U_e a_o}\right)+10\log\Delta f_b$.
- Slice-to-receiver SPL (Eq. 5, p. 7): $\mathrm{SPL}_{s,b,p}=L_{W,s,b}-10\log\!\left(4\pi|\vec r_{s,p}|^2\right)+DI_b(\theta_{s,p})$.
- Sums (Eqs. 6–7, p. 7–8): $\mathrm{SPL}_{b,p}=10\log\sum_{s=1}^{m}10^{\mathrm{SPL}_{s,b,p}/10}$; $\mathrm{SPL}_{OA,p}=10\log\sum_{b=1}^{j}10^{\mathrm{SPL}_{b,p}/10}$.
- Non-dimensional relative sound power (Eq. 8, p. 8): $\mathrm{NRSP}=10\log\!\left(\dfrac{W_x}{W_{OA}}x_t\right)$, plotted against x/x_t in Fig. 2. The curve peaks at about −3 dB near x/x_t ≈ 1.5–2 and falls below −20 dB by x/x_t ≈ 5. The slides state the peak as 1.5 x_t (p. 21).
- Core length (Eqs. 9–10, p. 8–9): Eldred $x_t/d_e=3.45(1+0.38M_e)^2$; Varnier $x_t/d_e=1.75(1+0.38M_e)^2$, with d_e the effective exit diameter and M_e the exit Mach number.
- Directivity index (Eq. 11, p. 13): $DI_{b,\theta}=\mathrm{SPL}_{b,\theta}-10\log\!\left(\dfrac1n\sum_{i=1}^{n}10^{\mathrm{SPL}_{b,\theta_i}/10}\right)$.

> Checks: −10 log(4πr²) = −10 log r² − 11.0, the same as the "−11" form in [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md) (eq. 2.9). The first two terms of Eq. 4 match Ranow's eq. 2.8 with the reference terms swapped. 3.45/1.75 = 1.97, the "factor of 2". The paper writes Varnier's form with M_e and d_e. Ranow notes that Varnier (2001) himself used the fully expanded M_j and D_j. The text extraction garbles Eqs. 3–5 and 8. Above they are retyped from the rendered pages, so verify subscripts against the PDF before reuse.

## Data tables
**Table 1 (p. 14): Ares I first-stage parameters**

| Parameter | Value |
|---|---|
| Number of nozzles | 1 |
| Exit diameter | 3.88 m (12.73 ft) |
| Exit velocity | 2454 m/s (8050 ft/s) |
| Sea-level thrust | 14.7 MN (3,310,000 lbf) |

> Own estimate (not in the paper): kinetic power ½ṁU_e² ≈ ½TU_e ≈ 1.80 × 10¹⁰ W (taking T ≈ ṁU_e), so L_W ≈ 202.6 dB at SP-8072's η = 1% or ≈ 199.6 dB at η = 0.5%. The η actually used is not stated.

**Key numbers**

| Item | Value | Page |
|---|---|---|
| RSRM RANS potential (low-u′) core | ≈ 24 m | 9 |
| RSRM RANS supersonic length | 57 m | 9 |
| Peak source location: CFD/Varnier vs Eldred | ≈ 36 m vs 75 m | 9 |
| RSRM far-field arc radius | 305 m; 11 mics, 26°–146° (−4° vectoring correction) | 12 |
| Max directivity effect | up to 15 dB at some frequencies | 12 |
| Varnier vs Eldred error on horizontal static tests | 0–3 dB vs 5–7 dB (unpublished) | 25 |
| DSM-2 shortfall vs DSM-1 and data | 5–10 dB (paper); 5–15 dB (slides) | 15, 27 |
| Ares I OASPL change, 4.5 m / 76 m | +7 dB / +5 dB; peak +2 third-octave bands | 32–33 |

> Own check: with the RSRM d_e ≈ 3.80 m and M_e ≈ 2.95 given in [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (App. B), Eqs. 9–10 give x_t ≈ 59 m (Eldred) and ≈ 30 m (Varnier), so peaks at 1.5 x_t of ≈ 88 m and ≈ 45 m. That is larger than the 75 m and 36 m quoted for Fig. 3. The M_e and d_e behind Fig. 3 are not stated, so check before quoting. In diameters, the CFD core is ≈ 6.3 D_e and the supersonic length ≈ 15 D_e. Lubert quotes RSRM L_c 7–15 D_e but L_s 31–37 D_e, so this RANS supersonic length is short by comparison.

## Figures worth remembering
- **Fig. 1 (p. 7):** DSM-2 geometry: slices along the deflected plume, receiver on the vehicle, r_{s,p} and θ_{s,p}.
- **Fig. 2 (p. 8):** Eldred's NRSP source-power distribution against x/x_t.
- **Fig. 3 (p. 9):** RANS u′ contours of the free RSRM plume, with the Varnier and Eldred lineal sound-power curves and the M = 1 contour overlaid. The key evidence for the shorter core.
- **Fig. 4 (p. 10):** DSM-1 apparent source location against Strouhal number for undeflected, multi-nozzle, open-scoop and closed-bucket plumes (from SP-8072).
- **Fig. 5 (p. 10):** RANS u′ of the RSRM plume hitting the deflector, with core end, 1.5 x_t point and supersonic boundary annotated.
- **Fig. 6 (p. 11):** sketch of Eldred's deflected core against the terminated core.
- **Figs. 7–8 (p. 11–12):** Saturn V lift-off spectra at 85 m and 45 m against full-core and terminated-core DSM-2.
- **Figs. 9–11 (p. 12–13):** RSRM microphone layout; SPL and DI against angle for 10 Hz–10 kHz.
- **Figs. 12–13 (p. 14–15):** Ares I original against modified DSM-2 spectra at 4.5 m and 76 m.

## Notation
- W_OA overall sound power; L_W sound power level re 10⁻¹² W; W_x sound power per unit axial length; W_fx sound power per Hz per unit length; η acoustic efficiency; ṁ mass flow rate; U_e exit velocity.
- a_e sound speed in the plume at the exit plane; a_o ambient sound speed; d_e (effective) exit diameter; M_e exit Mach number; x axial distance along the flow path; x_t potential-core length; Δx slice length; Δf_b bandwidth.
- NRSP non-dimensional relative sound power; DI_b(θ) directivity index in band b at angle θ from the flow axis; r_{s,p} slice-to-receiver vector.
- Indices: s slice (m slices), b band (j bands), p analysis point, i microphone (n microphones).
- RSRM / RSRMV: four- / five-segment reusable solid rocket motor. TEM-13, FVM-2, FSM-15: static test motors (Technical Evaluation, Flight Verification, and "Flight Simulation" Motor 15 here; the Kenny 2009 note expands FSM as Flight Support Motor).

## Relevance to this project
This project centres on resonance and feedback in supersonic and impinging jets, studied with schlieren, acoustics and PIV and analysed with SPOD/BMD/HPOD, with rocket noise modelling as a second area (see CLAUDE.md). This paper is the primary source for the "Haynes/Kenny" SP-8072 changes that later rocket-noise papers adopt or criticise.
- **Place in the SP-8072 lineage:** it supplies the shortened core, the terminated core and the RSRM DI that [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md) restates and builds on. [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) cites it as an ad hoc impingement fix (p. 26 there) and argues that such corrections are a dead end.
- **Contradiction on core termination:** here, terminating the core brings DSM-2 into line with Saturn V data (Figs. 7–8). Ranow (2021) finds that the same step makes the model overpredict Ares I data by 5–10 dB, and that an intact core fits better. The paper itself compares no Ares I data. Its RANS check of the termination is qualitative, and only one launch configuration is validated.
- **Contradiction on source location (own inference):** the paper treats Eldred's 75 m (≈ 20 D_e) peak as too far downstream and prefers 36 m (≈ 9.5 D_e). Later near-field intensity and recentred directivity studies place the dominant rocket source at **17–22 D_e** ([gee-2016-near-field-intensity-static-rocket-firings.md](gee-2016-near-field-intensity-static-rocket-firings.md), Lubert 2022 p. 12–14), and Lubert suggests Varnier's core may be biased by limited data and Potter's plotting error. Varnier's halved core may therefore improve vehicle levels for the wrong reason. It is not a clean statement about where the sources are.
- **RSRM directivity data:** the same FVM-2/FSM-15 firings are reported in [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md), which gives a 304 m arc and a peak near 50°. [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md) shows that these DI, measured at about 80 D_e with the origin at the nozzle, are not far field and need recentring (51° → 65°). James attributes the high-frequency narrowing that Haynes and Kenny put down to terrain to nonlinear propagation instead (cf. [gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md)). Any lab far-field array faces the same origin choice.
- **Shock-containing jets and core length (link to the screech work):** the claim, via Shirie (1967), that shock cells raise turbulence and roughly halve the potential and supersonic cores matters for the user's shock-containing jets. Mean schlieren and PIV of the user's under-expanded jets give potential-core and shock-train lengths directly. These could test whether a 1.75 or a 3.45 coefficient fits at lab NPRs, ideally with M_j and D_j as in [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md). Here this is basic statistics only; no modal analysis is needed.
- **Impinging plumes:** the deflected-plume RANS (Fig. 5) shows the core ending at the plate and the flow turning into a supersonic, highly turbulent wall jet. This is the steady picture behind the plate-shock and wall-jet sources in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md). The paper models none of the unsteady impingement physics (tones, feedback, shock oscillation), and the method has no tonal component. Time-resolved schlieren of an inclined-plate jet with SPOD (and BMD for shock–vortex interaction) could show how the source distribution actually shifts downstream of impingement, which is the question this paper and Ranow disagree on.
- **Modelling side:** the empirical chain is fully specified in Eqs. 1–11 and can be coded directly; Ranow's MATLAB (Appendix A there) is an implementation. The RANS is used only as a turbulence map, with no acoustic analogy. For physics-based alternatives see [casalino-2009-hybrid-empirical-caa-rocket-noise.md](casalino-2009-hybrid-empirical-caa-rocket-noise.md) (empirical sources plus CAA Green's functions) and [mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) (SATURN).
- **Data types:** everything is averaged third-octave SPL. Nothing here needs time-resolved data or deals with intermittency, so it does not feed the SPOD → reconstruction → HPOD pipeline.
- **Candidates for `/add-paper`:** Eldred 1971 (SP-8072); Varnier 1998 (AIAA 98-2206) and 2001 (AIAA 2001-2207); Shirie 1967 (core lengths in shock-containing plumes, not given in the reference list); Plotkin et al. AIAA 2009-3163 (Ares I pad predictions); Tam 2007 (AIAA 2007-3641).
