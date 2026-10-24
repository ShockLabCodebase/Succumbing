---
key: "varnier-2001-rocket-engine-freejet-noise-model"
title: "Experimental Study and Simulation of Rocket Engine Freejet Noise"
authors: ["Varnier, Jean"]
year: 2001
type: "article"
venue: "AIAA J. 39(10), 1851–1859"
bib: {"journal": "AIAA Journal", "volume": "39", "number": "10", "pages": "1851--1859"}
doi: "10.2514/2.1199"
arxiv: ""
pdf: "rocket-noise-models/Varnier_2001_Experimental-Study-And-Simulation-Of-Rocket-Engine-Freejet-Noise.pdf"
version: "published"
unverified: []
group: false
facility: "ONERA Fauga-Mauzac Test Center (static rockets); CAEPE Center (Rita II); CNES MARTEL facility (Jet IV)"
data: ["subscale", "full-scale", "microphones-near", "microphones-far", "mic-array", "pressure-probe"]
methods: ["empirical-model", "PSD", "coherence", "beamforming", "propagation-model"]
flow: ["rocket-plume", "round-jet", "supersonic", "heated", "overexpanded", "underexpanded"]
phenomena: ["mixing-noise", "Mach-wave-radiation", "source-location", "acoustic-efficiency", "directivity", "installation-effects"]
params: {"M_e": "2.6–3.8", "M_j": "2.8–3.2", "D_e": "3.56–84 cm", "U_e": "1270–2650 m/s", "U_j": "1200–2480 m/s", "p_e/p_a": "0.3–2.5", "NPR": "30–64 (chamber p_i/p_a)", "T_i": "1040–3300 K", "W_M": "0.85–72.6 MW (ONERA rockets); ≈1.2 MW (Jet IV)", "η": "0.6–0.7% (measured)", "vehicles": "ONERA rockets 0, 1, 2, 5; Rita II; rocket F (Mayes 1959); MARTEL Jet IV"}
topics: ["rocket-noise-models", "rocket-noise-measurements"]
related: ["lubert-2022-supersonic-jet-noise-launch-vehicles-review", "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "casalino-2009-hybrid-empirical-caa-rocket-noise", "ranow-2021-acoustic-prediction-rocket-flame-deflector", "tsutsumi-2015-epsilon-liftoff-acoustics", "james-2012-directivity-curves-rocket-noise-model", "gee-2016-near-field-intensity-static-rocket-firings", "gee-2010-near-field-vector-intensity-solid-rocket-motor", "gee-2012-reusable-srm-noise-spectral-statistical", "langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "tam-1982-shock-associated-noise-cd-nozzles"]
cites: []
summary: "SP-8072 near-field fix from ONERA static rockets: core constant 3.45→1.75 with D_j, M_j; peak source ≈11D not 26D; η 0.6–0.7% size-independent; L_P tied to L_S"
---
# Experimental Study and Simulation of Rocket Engine Freejet Noise

- **Authors:** Jean Varnier, ONERA, Département Simulation Numérique des Écoulements et Aéroacoustique, Châtillon, France (p. 1851). Single author. Work done for CNES (Direction des Lanceurs) on the Ariane 5 lift-off acoustic environment (p. 1851, 1858). Not Shock Lab group work.
- **Source:** AIAA Journal, Vol. 39, No. 10, October 2001, pp. 1851–1859, doi:10.2514/2.1199 (header of every page). Received 25 February 2000, revised 12 April 2001, accepted 17 April 2001 (p. 1851). Associate editor P. J. Morris (p. 1859). The closing paragraph announces a follow-up on a supersonic jet impinging on a large plate (p. 1857), which [Casalino 2009](casalino-2009-hybrid-empirical-caa-rocket-noise.md) cites as Varnier & Raguenet 2002.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Varnier_2001_Experimental-Study-And-Simulation-Of-Rocket-Engine-Freejet-Noise.pdf` (index key `rocket-noise-models/Varnier_2001_Experimental-Study-And-Simulation-Of-Rocket-Engine-Freejet-Noise.pdf`, 9 pp., publisher's version). Page refs are journal pages; **PDF page = journal page − 1850**. The Read tool reports the file as password-protected, so the text came from `pdftotext`. All equations, Tables 1–4 and Figs 1–12, A1, B1–B2 were checked on rendered pages.
- **Tags:** rocket noise, NASA SP-8072, Eldred distributed source model, Potter–Crocker freejet model, characteristic (core) length, laminar core, supersonic length, sound power peak location, acoustically effective length, fully expanded jet diameter and Mach number, Tam–Tanna D_j, acoustic efficiency, Sutherland (1993) efficiency formula, mechanical power, static firing, solid propellant rockets, scale effect, Ariane 5 boosters, Rita II, MARTEL air–hydrogen jet, near-field OASPL, image-jet ground reflection, absorbent moss, microphone grid effect, focused array processing, normalized cross-spectral density (NCSD), directivity re-centring, Mach-number contours from intrusive probes

## Summary
Varnier tests the Eldred (NASA SP-8072) freejet noise model, which ONERA had used for the first Ariane launchers, against near-field microphone data from horizontal static firings of four geometrically similar solid rockets (exit diameters 3.56–26.72 cm, M_e 3.3, overexpanded) at ONERA's Fauga-Mauzac centre (p. 1852–1854). With SP-8072's core length the model puts the sound power peak at about 26D, outside the measurement array, and needs an unrealistic 3–4% acoustic efficiency to match the levels (p. 1855). He therefore halves the core-length constant (3.45 → 1.75), writes all formulas with the fully expanded diameter D_j and Mach number M_j instead of exit values, and re-centres the far-field directivity on the peak source (eq. 12, App. B, p. 1855, 1858). Fitting the sound power to the near-field levels with an image-jet ground model gives η ≈ 0.7% for every rocket size, in line with Sutherland's (1993) semi-empirical formula (Table 2, p. 1854). The changes are checked on three other jets: the large Rita II booster, an underexpanded rocket from Mayes et al. (1959) and the CNES MARTEL air–hydrogen jet, where intrusive probes also give the supersonic length (p. 1855–1857). The paper ends by proposing the supersonic length, related to the peak location through L_S/L_P ≈ M_j^α with α ≈ 0.8–0.9, as the reference length of a future model (p. 1857).

## Key findings
- **SP-8072 fails in the near field** (p. 1852, 1855):
  - For the ONERA rockets, Eqs. 1 and 4 put the sound power peak at L_P ≈ 26D, beyond the 20D microphone arc. Matching the measured SPL with that source distribution needs η ≈ 3–4%, "totally unrealistic" (p. 1855).
  - The reason given is an unsuitable spatial distribution of sources, not the overall power (p. 1852).
- **Modified model** (p. 1855): three changes.
  1. The characteristic length is halved: factor 3.45 in eq. 1 becomes 1.75 (eq. 12), from comparing the apparent peak location with the model.
  2. All formulas use fully expanded jet data (D_j, M_j, V_j), on the assumption that nozzle shape has little effect on the jet (p. 1855). D_j comes from eq. 13; for the ONERA rockets M_j ≈ 3.1 and D_j ≈ 0.9D_e.
  3. The far-field directivity of Fig. 5 is re-referenced to the peak source (App. B). The peak shifts about 5° upstream and the indices change by at most ±2 dB, which still improves the near field "appreciably" (p. 1858).
  - With these, the mean peak location for the ONERA rockets is ≈11D (p. 1855), inside the 5–15D range found by focused array processing (p. 1855; Fig. 8).
- **Acoustic efficiency does not depend on rocket size** (Table 2, p. 1854):
  - A first estimate by integrating intensity over the 20D arc (Géli et al. 1994, ref. 28) gave η rising with size from 0.4 to 0.6% (p. 1854). Simulation showed this trend was a reflection artefact: the nozzle was always 1.05 m above the concrete, about 4D for the largest rocket and 30D for the smallest, so the reflected/direct ratio changed with scale (p. 1854). The 20D arc was also too small: the luminous plume is at least 30D long and 160 dB was measured downstream near the axis (p. 1854).
  - Fitting the overall sound power as a free input to the measured SPL over the reflective ground (least squares) gives η* = 0.7% for rockets 2, 1 and 0. Sutherland's formula (eq. 9) gives 0.5–0.6% (Table 2).
  - Rocket 5's η* ≈ 0.9–1% is put down to the microphone protection grid, which raises SPL above 10 kHz where that small rocket radiates (Fig. 7, p. 1854–1855).
  - Conclusion: η is related to the jet Mach number, not rocket size (p. 1854, 1857).
- **Model accuracy** (p. 1854): measured–computed differences are about ±2 dB in OASPL in the near field and ±4 dB in octave bands. The model spectrum is "more peaked" than the measured one. The largest differences are close to the nozzle, where shock noise may dominate and the model has no shock-noise term (Fig. 6).
- **Peak frequency scales with size** (p. 1855): the octave-band peak falls from 8 kHz (rocket 5, D = 3.56 cm) to 1 kHz (rocket 0, D = 26.72 cm), and the model reproduces this. That is f D/U_e ≈ 0.105 (rocket 0, U_e 2550 m/s) and ≈ 0.114 (rocket 5, U_e ≈ 2500 m/s), Strouhal scaling (my arithmetic).
- **Other jets** (Tables 3–4, Fig. 11, p. 1855–1856):
  - *Rita II* (D = 84 cm, M_e 3.8, very overexpanded, p_e = 0.3 bar): emission "appears to be unstable", with a possible Mach disk, but the averaged SPL and directivity are reproduced (Fig. 9). The best fit has L_C* about 20% shorter than eq. 12, and η ≈ 0.6–0.7% (p. 1856).
  - *Rocket F* (data of Mayes et al. 1959, D = 7.33 cm, underexpanded, p_e = 2.5 bar): the authors of that study put the peak at 20D or more from near-field contours, with measured η = 0.65% (p. 1856).
  - *Jet IV* (MARTEL, air–H₂, D = 6 cm, T_i = 1040 K, U_e 1270 m/s): η = 0.6% from integration over a 70D-radius hemisphere; apparent peak ≈12D against ≈10D from the model; agreement of OASPL contours "very satisfactory" (Fig. 10, p. 1856).
  - Across all four jets, the original model's exit-variable peak (L_P^e) is far too far downstream, while the fully expanded version (L_P^j) tracks the apparent peak (Fig. 11). In D_j units, 12D_j ≤ L_P^j ≤ 13D_j and 10D_j ≤ L_P* ≤ 15D_j (eq. 14), so the 1.75 factor is uncertain by about ±20% (p. 1856).
- **Sutherland's efficiency formula for strongly off-design jets** (p. 1856): 0.45% for Rita II and 0.6% for rocket F, both reasonable; 0.2% for the slow Jet IV (W_M ≈ 1.2 MW), which looks too small against the measured 0.6%. "0.6% is a good approximation" of the measured mean for all the engines.
- **Supersonic length as the reference** (p. 1856–1857):
  - The laminar core is hard to define with shock cells, so the only "physically objective" aerodynamic and acoustic lengths are L_P and L_S (p. 1856).
  - Ordering: L_S ≈ L_C ≈ L_P at M_j = 1 (eq. 15); L_S > L_P > L_C for M_j > 1 (eq. 16).
  - Jet IV probe surveys put the M = 1 contour (local sound speed) on the axis at L_S* = 26D; with the ambient sound speed (M_a = V/c_a) it is 28.5D. Anderson & Johns (1955) give L_S ≈ 28D at Mach 2.8 (p. 1857).
  - Eq. 19 (Nagamatsu–Horvay with fully expanded data) gives 33D_j = 26D for Jet IV, matching the probes; for rocket F it gives 39D_j = 54D (p. 1857).
  - The acoustically effective length L_A is at most 40D for Jet IV and "does not very much exceed" the supersonic region; Potter & Jones found the same for a cold Mach 2.5 helium jet (p. 1857).
  - Fitting L_S/L_P = M_j^α (eq. 18) to Jet IV and rocket F gives α ≈ 0.8–0.9 (p. 1857).
- **Mechanism statement** (p. 1852): supersonic jet noise has Mach-wave, mixing, shock-cell and screech components; BBSAN scales roughly as (M_j² − M_e²)². For very hot, highly supersonic jets the supersonic convection of eddies (Mach waves and supersonic turbulent shear noise) dominates and power scales roughly as M³ (V³). The paper does not test screech; it simply notes that screech "and heat effects have other characteristics".
- **Conclusions** (p. 1857): (1) the jet supersonic length is the right aerodynamic length; (2) the peak is closer to the nozzle than generally admitted, and is related to L_S through M_j; (3) the acoustically effective region does not much exceed L_S; (4) for a given nozzle shape η does not change with rocket size if M_j is constant; (5) η can be estimated from a semi-empirical formula. Fully expanded data should be used everywhere "except to estimate the acoustic efficiency".

## Setup / method
- **ONERA static rockets** (§III.A, Table 1, p. 1853–1854):

  | Rocket | D (cm) | F (kN) | W_M (MW) | m_t (kg/s) | P_e (bar) | M_e |
  |---|---|---|---|---|---|---|
  | 5 | 3.56 | 0.7 | 0.85 | 0.29 | 0.7 | 3.3 |
  | 2 | 7.11 | 3.8 | 4.5 | 1.59 | 0.7 | 3.3 |
  | 1 | 14.25 | 14.3 | 17.7 | 5.86 | 0.7 | 3.3 |
  | 0 | 26.72 | 58.4 | 72.6 | 23.6 | 0.7 | 3.3 |

  - Composite propellant (NH₄ClO₄–(C₄H₆)ₙ–Al), V_e ≈ 2500 m/s, burning time about 1.2 s, area ratio Σ = 10, overexpanded at the exit (p. 1854). Similarity with the Ariane 5 boosters is claimed (refs 4, 20; p. 1853).
  - Fired horizontally 1.05 m above a near-perfectly reflective concrete surface, in front of a cavity whose wall is partly treated (moss on the doors) (p. 1853; Fig. 6).
  - Microphones: 1/4 in. Brüel & Kjær pressure microphones turned towards the jet, in the horizontal nozzle plane at 5D–40D. Some lie on a 20D arc, others form a linear array parallel to the axis (19 microphones). A thin absorbent moss layer lies under the microphones on the left side only, "an error which has introduced many difficulties" (p. 1853, 1855).
  - Cavity and wall effects are neglected: from the Fig. 5 directivity, 90% of the power radiates downstream, so the rear echo adds at most +0.5 dB (p. 1854).
- **Other jets** (Tables 3–4, p. 1855):

  | Parameter | Rita II | Rocket 0 | Rocket F | Jet IV | Unit |
  |---|---|---|---|---|---|
  | P_i | 57 | 64 | 55 | 30 | bar |
  | T_i | 3250 | 3300 | 2850 | 1040 | K |
  | m_t | 101 | 23.6 | 4.41 | 1.71 | kg/s |
  | D (= D_e) | 84 | 26.72 | 7.33 | 6 | cm |
  | Σ | 21 | 10 | 3.7 | 6 | — |
  | M_e | 3.8 | 3.3 | 2.6 | 3.3 | — |
  | V_e | 2650 | 2550 | 2000 | 1270 | m/s |
  | P_e | 0.3 | 0.7 | 2.5 | 0.5 | bar |
  | D_j | 52.0 | 24.5 | 10.2 | 4.8 | cm |
  | M_j | 3.1 | 3.2 | 3.1 | 2.8 | — |
  | V_j | 2410 | 2480 | 2200 | 1200 | m/s |
  | P_j | 1.0 | 1.0 | 1.0 | 1.0 | bar |

  - *Rita II:* stratospheric solid booster of a ballistic missile, fired horizontally at the CAEPE centre. Microphone arcs of 20D downstream and 11D upstream (p. 1855–1856).
  - *Rocket F:* nitroglycerin–nitrocellulose propellant (Mayes, Lanford & Hubbard 1959, NASA TN D-21). Some data computed by an ideal-gas model here. Near- and far-field data, far-field arc about 200D (p. 1856).
  - *Jet IV:* CNES MARTEL facility, nozzle suspended vertically 50D above a reflective ground, air–hydrogen mixture. Near-field SPL contours from a 4D × 4D microphone grid shifted along the axis; η from a 70D hemisphere centred on the ground. Intrusive coupled pressure and temperature probes give the Mach-number field from 12D to 42D (Fig. 12, p. 1856–1857). Reflections were computed and found to be minor (p. 1856).
- **The Eldred (SP-8072) freejet model as used** (§II.B, Figs 2–5, p. 1852–1853):
  - Overall sound power W_A = η W_M is distributed along the axis over N discrete, uncorrelated point sources S, following the power-per-length curve of Fig. 3 normalised by the core length L_C (eq. 1). The peak is at L_P ≈ 1.5 L_C (eq. 4) and 98% of the power lies within L_A ≈ 5 L_C (eq. 5).
  - Each source's spectrum follows Fig. 4 in the local Strouhal number Srm (eq. 6), peaking near Srm ≈ 2, so high frequencies come from near the nozzle and a larger rocket peaks lower.
  - Directivity indices from Fig. 5 in Sr = f D_e/V_e (eq. 7), referenced to the nozzle.
  - Spherical 1/R decay from each source; mean-square pressures summed (eq. A1).
  - Eldred labels the variables "nozzle exit data (fully expanded)", yet keeps D_e as the nozzle exit diameter (p. 1853). Varnier reads this as an ambiguity and resolves it in favour of fully expanded data with D_j.
- **Ground reflection and the sound-power fit** (p. 1854):
  - An image jet mirrored in the ground is added. The overall sound power is then a free input, chosen to minimise the mean-square difference between computed and measured SPL over the reflective ground.
  - Moss corrections, found from the lateral symmetry of the field, are 0 to −2 dB depending on frequency and scale, and apply to the image-source contribution. The arc over the moss is then used only as a "witness" for directivity (p. 1854).
  - The paper does not say whether each source and its image are summed coherently in the SPL computation. The NCSD (App. A) keeps the phase of both, and Fig. A1's computed coherence shows interference lobes.
- **Spatial-correlation and source-location checks** (p. 1855; App. A):
  - *NCSD:* the normalised cross-spectral density between two neighbouring microphones (eq. A2) is computed from the model (uncorrelated sources plus images, phase from path differences) and compared with measurement (Fig. A1). The phase pattern matches; the measured coherence is lower than computed, perhaps because real sources are off-axis, plus random noise and the wall echo (p. 1858).
  - *Focused array:* conventional focusing of the 19-microphone line array onto points of the jet axis (refs 29–30). The extended, strongly directive sources prevent a precise peak location, but for all rockets the peak-octave sources lie at 5–15D (Fig. 8, rocket 2).
  - Both need simultaneous, time-resolved microphone signals (cross-spectra). Record length is short: about 1.2 s of burn (p. 1854). FFT block length, averaging and windowing are not stated.
- **Data needs of each analysis:**
  - OASPL, octave spectra and the sound-power fit: time-resolved microphones reduced to time-averaged levels; no phase information needed.
  - NCSD and focused-array maps: simultaneous time-resolved signals, cross-spectral matrix.
  - Supersonic length (Jet IV): mean stagnation pressure and temperature from probes; no time resolution. The paper notes the probe data need correcting for the shock standing upstream of each probe, and the uncertainty is "not easy to estimate" (p. 1857).
- **Modelling side summary.** The model is fully empirical: no flow solution, no stability or wave model. Its only aerodynamic inputs are D_j, M_j and V_j from ideal-gas relations (App. C) and the empirical lengths L_C, L_S. The flow is assumed frozen, γ constant and the mass flow equal to its throat value (p. 1855, 1858). Shock noise, screech and source correlation near the jet are ignored (p. 1853).

## Key equations
All checked on the rendered pages. γ_j, γ_a are fully expanded and ambient specific-heat ratios; c_t the throat value.

- **SP-8072 core length** (eq. 1, p. 1852; Lighthill, cold subsonic jets): $L_C=3.45\,D_e(1+0.38M_e)^2$, with D_e taken as the nozzle exit diameter D.
- **Nagamatsu & Horvay (1970) lengths** (eqs. 2–3, p. 1852): $L_C=D_e(5.22M_e^{0.9}+0.22)$ and $L_S=D_e(5M_e^{1.8}+0.8)$. Varnier notes that the original writes M_e² in the second formula but uses M_e^1.8 in the applications.
- **Peak and effective length** (eqs. 4–5, p. 1852): $L_P\approx1.5L_C$, $L_A\approx5L_C$.
- **Local and global Strouhal numbers** (eqs. 6–7, p. 1853): $Srm=fLc_e/(c_aV_e)$ and $Sr=fD_e/V_e$. The source spectrum peaks near Srm ≈ 2.
- **Acoustic efficiency** (eq. 8, p. 1853): $\eta=W_A/W_M$, usually 0.5% for rockets.
- **Sutherland (1993) efficiency** (eq. 9, p. 1853): $\eta=K(\gamma_j/\gamma_a)(c_t/c_a)^3(c_t/V_e)^2$, K = 0.0012. Statistical analysis over 10⁴ W < W_M < 10¹¹ W gives a mean of 0.53% ± 0.24%, uncorrelated with W_M. The paper calls c_t the "throat characteristic velocity" (p. 1856); the nomenclature makes it the sound speed at the throat. [Tsutsumi 2015](tsutsumi-2015-epsilon-liftoff-acoustics.md) writes the same law with C* (eq. 7 of that note).
- **Mechanical power and thrust in fully expanded variables** (eqs. 10–11, p. 1853): $W_M=0.5\,m_tV_j^2$ and $F=m_tV_j$. Sutherland used $0.5\,m_tV_e^2$, which omits the pressure-mismatch energy; the fully expanded form is independent of nozzle shape.
- **Modified characteristic length** (eq. 12, p. 1855): $L_C^*=1.75\,D_j(1+0.38M_j)^2$.
- **Fully expanded diameter** (eq. 13 = C7, p. 1855, 1858): $D_j=(2/M_j)\,(m_tV_j/\pi P_a\gamma_j)^{1/2}$. It follows from $P_xS_x=r\,m_tT_x/V_x$ (eqs. C3–C5, exact for an ideal gas with constant mass flow) evaluated at P_x = P_a, with $S_x=\pi D_x^2/4$ and $c_x^2=\gamma_xrT_x$ (eq. C6). Since $F=m_tV_j$, this is Casalino's $D_j=(2/M_j)\sqrt{F/\pi p_a\gamma_j}$ ([Casalino 2009](casalino-2009-hybrid-empirical-caa-rocket-noise.md) eq. 17).
- **Approximate D_j** (eq. C1, p. 1858): $D_j\approx D_e(P_e/P_a)^{1/2}$, from P_x S_x ≈ const.
- **Tam & Tanna D_j** (eq. C2, p. 1858): $D_j=\left[\dfrac{1+0.5(\gamma-1)M_j^2}{1+0.5(\gamma-1)M_e^2}\right]^{(\gamma+1)/[4(\gamma-1)]}\left[\dfrac{M_e}{M_j}\right]^{1/2}D_e$.
  > The exponent is printed as (γ + 1)/4(γ + 1), which would be 1/4. With (γ − 1) in the denominator, rocket F (γ = 1.22, M_e 2.6, M_j 3.1, D_e 7.33 cm) gives D_j = 10.2 cm, exactly the printed value; with 1/4 it gives 7.8 cm. I take the print as a typo. The text attributes C2 to "Tam and Tanna²¹", but ref. 21 is Sutherland; Tam & Tanna is ref. 22 ([Tam & Tanna 1982](tam-1982-shock-associated-noise-cd-nozzles.md)).
- **D_j comparisons** (p. 1858): Jet IV (γ = 1.355) gives D_j = 4.2, 4.8 and 4.9 cm from C1, C2 and C7; rocket F (γ = 1.22) gives 11.6, 10.2 and 10.2 cm. C2 and C7 agree well.
- **Uncertainty band** (eq. 14, p. 1856): $12D_j\le L_P^j\le13D_j$ and $10D_j\le L_P^*\le15D_j$.
- **Length ordering** (eqs. 15–17, p. 1857): $L_S\approx L_C\approx L_P$ at M_j = 1; $L_S>L_P>L_C$ for M_j > 1; $L_S/L_C\approx M_e^{0.9}$ (ratio of eqs. 3 and 2).
- **Proposed peak law** (eq. 18, p. 1857): $L_S/L_P\approx M_j^{\alpha}$, α ≈ 0.8–0.9.
- **Supersonic length with fully expanded data** (eq. 19, p. 1857): $L_S=D_j(5M_j^{1.8}+0.8)$.
- **Incoherent sum and NCSD** (eqs. A1–A2, p. 1857): $p_1^2=\sum_{j=1}^{N}p_{1,j}^2$ and
  $\Phi_{1,2}=\dfrac{\sum_{j=1}^{N}\{p_{1,j}p_{2,j}\exp[-ik(d_{1,j}-d_{2,j})]\}}{\left[\sum_{j=1}^{N}p_{1,j}^2\sum_{j=1}^{N}p_{2,j}^2\right]^{1/2}}$, with d_{1,j} the distance from source j to point 1. ‖Φ‖ = 1 for a single source; the phase gives the propagation direction.
- **Directivity re-centring** (App. B, p. 1858): the far-field index M(θ) is taken as valid at R = 10 L_P from the nozzle O. For the peak source S (OS = L_P) seen at angle θ′ and distance R′, $M'(\theta')=M(\theta)+10\log(R'^2/R^2)$, so that the power through spheres of equal radius about O and S is the same.

> My consistency checks (not in the paper):
> - **Table 1:** F/m_t gives V_j ≈ 2390–2475 m/s, and 0.5 m_tV_j² reproduces W_M (0.85, 4.5, 17.4, 72.3 MW against 0.85, 4.5, 17.7, 72.6 printed). Thrust and mechanical power are therefore in fully expanded variables (eqs. 10–11).
> - **Table 2:** 10 log(W_A*/10⁻¹² W) gives 159.0, 165.1, 171.0, 177.0 dB, and W_A*/W_M gives 0.94, 0.71, 0.71, 0.69%, matching the printed values.
> - **Peak locations:** eqs. 1 and 4 with M_e 3.3 give L_P = 26.3D (printed ≈26D). Eqs. 12 and 4 with M_j 3.1, D_j = 0.9D give 11.2D (≈11D). For the four Fig. 11 jets, eq. 12 gives L_P^j = 9.0D (Jet IV), 17.4D (F), 11.8D (rocket 0) and 7.7D (Rita II), and eq. 1 gives L_P^e = 26.3, 20.5, 26.3 and 30.9D. These match the Fig. 11 symbols (read) except Jet IV, where the text says 10D.
> - **Eq. 19:** 32.7D_j = 26.2D for Jet IV and 39.1D_j = 54.4D for rocket F, as printed.
> - **α:** ln(L_S/L_P)/ln M_j gives 0.75 (Jet IV, L_P = 12D) to 0.93 (L_P = 10D), and 0.88 for rocket F (L_P = 20D), consistent with 0.8–0.9.
> - **Eq. 13:** rocket 0 with γ_j ≈ 1.2 (not given) gives D_j ≈ 24.6 cm (Table 4: 24.5); Jet IV gives 4.96 cm (printed 4.9).
> - **Height:** 1.05 m is 3.9D for rocket 0 and 29.5D for rocket 5 (p. 1854: "close to 4D" and "30D").

## Data tables
**Table 2: experimental and statistical acoustic characteristics** (p. 1854). OAPWL* is the power fitted by simulation; η* = W_A*/W_M; η from Sutherland's eq. 9.

| Rocket | D (cm) | W_M (MW) | OAPWL* (dB re 1 pW) | W_A* (kW) | η* (%) | η (%) |
|---|---|---|---|---|---|---|
| 5 | 3.56 | 0.85 | 159 | 8 | 0.9 | 0.6 |
| 2 | 7.11 | 4.50 | 165 | 32 | 0.7 | 0.5 |
| 1 | 14.25 | 17.7 | 171 | 126 | 0.7 | 0.6 |
| 0 | 26.72 | 72.6 | 177 | 500 | 0.7 | 0.6 |

**Sound power peak location** (Fig. 11, p. 1856; read from the rendered figure; lengths in nozzle exit diameters D):

| Jet | D (cm) | L_P* apparent | L_P^e (eq. 1, exit data) | L_P^j (eq. 12, fully expanded) |
|---|---|---|---|---|
| Jet IV | 6 | ≈12 (text: about 12D) | ≈26 | ≈10 (text: 10D) |
| Rocket F | 7.33 | ≈20 (text: 20D or more) | ≈21 | ≈18 |
| Rocket 0 | 26.72 | ≈10 | ≈27 | ≈12 |
| Rita II | 84 | ≈6 | ≈31 | ≈8 |

**Supersonic and effective lengths** (p. 1856–1857):

| Quantity | Value | Source |
|---|---|---|
| Jet IV L_S* (M = V/c = 1 on axis, probes) | 26D | Fig. 12, p. 1857 |
| Jet IV, M_a = V/c_a = 1 on axis | 28.5D | p. 1857 |
| Jet IV L_S from eq. 19 | 33D_j = 26D | p. 1857 |
| Rocket F L_S from eq. 19 | 39D_j = 54D | p. 1857 |
| Anderson & Johns (1955) L_S at Mach 2.8 | ≈28D | p. 1857 |
| Jet IV L_A (model) | ≤ 40D | p. 1857 |
| Mean L_P*, ONERA rockets (model, eqs. 12 + 4) | ≈11D | p. 1855 |
| Focused-array peak-octave sources, all ONERA rockets | 5–15D | p. 1855 |

**Acoustic efficiency of the other jets** (p. 1856): Rita II η ≈ 0.6–0.7% (fit), 0.45% (Sutherland); rocket F 0.65% (measured by Mayes et al.), 0.6% (Sutherland); Jet IV 0.6% (hemisphere integration), 0.2% (Sutherland).

## Figures worth remembering
- **Fig. 1 (p. 1852):** laminar core length and supersonic length against exit Mach number, from Nagamatsu & Horvay (Potter's data included). L_S/L_C grows with M_e and is close to 1 at M_e = 1. Varnier points out that the literature confuses laminar core, supersonic core and supersonic region (p. 1852).
- **Fig. 2 (p. 1852):** schematic of the freejet model: discrete sources S on the axis with L_C, L_P, L_A marked. L_S is not used in SP-8072.
- **Fig. 3 (p. 1853):** SP-8072 power per unit length against L/L_C (from Potter & Crocker, Potter and Eldred). Read: peak about −3 dB at L/L_C ≈ 1.5–1.7, falling to −20 dB near L/L_C ≈ 0.12 and 5. This appears to be the Potter curve that [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (p. 12–13) says carries a plotting error; Varnier's eq. 12 is calibrated through it via L_P = 1.5L_C.
- **Fig. 4 (p. 1853):** normalised source spectrum against Srm, peak at Srm ≈ 1–2 (read), about −30 dB by Srm ≈ 30.
- **Fig. 5 (p. 1853):** far-field directivity indices for Sr = 0.004–0.4 (0 dB = monopole). Read: the low-Sr curve peaks at about +8 dB near 32°, the high-Sr curves at about +4–5 dB near 45–55°; at 180° the indices are −13 to −17 dB. The label assignment to curves is my reading.
- **Fig. 6 (p. 1854):** rocket 0 layout (20D and 40D arcs over the moss, linear array over the concrete, NCSD pair near the exit plane) with OASPL (≈142–160 dB) and measurement–computation differences, mostly −1 to +3 dB.
- **Fig. 7 (p. 1855):** spectra to 50 kHz with and without the microphone protection grid; the grid raises SPL above about 10 kHz by several dB (read).
- **Fig. 8 (p. 1855):** rocket 2, focused-array squared coherence ‖Φ‖² along the axis against frequency (contours 0.1–0.5). All contours peak at L/D ≈ 9 (read); the horizontal lines marking the dominant band sit at about 3.55 and 4.5 kHz (read), where the 0.1 contour spans about 6–13D.
- **Fig. 9 (p. 1856):** Rita II directivity on the 20D (downstream) and 11D (upstream) arcs against the modified model. Read: model peak about +6 dB at ≈40°, data +5 dB at 40–50°; beyond 120° the 11D data fall 2–4 dB below the model.
- **Fig. 10 (p. 1856):** Jet IV OASPL contours, experiment against computation, over R/D ≈ 8–22 and L/D −5 to 40. Levels 138–155 dB; the 155 dB maximum lies near L/D ≈ 20 at R/D ≈ 8 (read). L_P* is marked at about 12D.
- **Fig. 11 (p. 1856):** L_P*, L_P^e and L_P^j against nozzle diameter for the four jets (values in Data tables). The key figure for the fully expanded variables.
- **Fig. 12 (p. 1857):** Jet IV Mach-number contours (local sound speed) from 12D to 42D, radius stretched ×2; the M = 1 line crosses the axis at L_S* = 26D.
- **Fig. A1 (p. 1858):** measured and computed NCSD modulus and phase up to 625 Hz for the pair near the exit plane: phase matches, measured coherence is lower. The caption says rocket 0, the text rocket 1.
- **Figs B1–B2 (p. 1858):** geometry of the re-centred directivity and f(θ) against f(θ′) at Sr = 0.0125; peak shifted about 5° upstream.

## Notation
- D (= D_e): nozzle exit diameter; D_j: fully expanded jet diameter; D_x: jet diameter at station x.
- Indices: a ambient; e jet exhaust (nozzle exit); i chamber stagnation; j fully expanded; t nozzle throat; x local; * experimental (apparent).
- M_e, M_j: exit and fully expanded Mach numbers (local sound speed); M_a = V/c_a: Mach number on the ambient sound speed.
- V_e, V_j: exit and fully expanded velocities; P_e, P_a: exit and ambient static pressures; P_i, T_i: chamber pressure and temperature; m_t: mass flow (throat value); Σ: nozzle area ratio; γ: specific-heat ratio; r: gas constant.
- L: distance from the nozzle on the axis; L_C: laminar core length; L_C*: experimental characteristic length (eq. 12); L_S, L_S*: supersonic length (M = 1 on the axis); L_P, L_P*: sound power peak location (model, apparent); L_P^e, L_P^j: L_P from exit and from fully expanded data; L_A: acoustically effective length.
- W_A, W_A*: acoustic power (model, experimental); W_M: mechanical power; F: thrust; η, η*: acoustic efficiency (Sutherland, experimental); OAPWL: overall sound power level.
- Sr = fD_e/V_e; Srm: local Strouhal number (eq. 6); DI: directivity index; θ, θ′: angle from the jet axis at the nozzle and at the peak source.
- Φ: normalised cross-spectral density (NCSD); φ: its phase; k: wavenumber; d_{1,j}: distance from source j to point 1.

## Relevance to this project
This is the paper behind the "Varnier core length" that appears in almost every later SP-8072 variant in the library: [Haynes & Kenny 2009](haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md), [Casalino 2009](casalino-2009-hybrid-empirical-caa-rocket-noise.md), [Tsutsumi 2015](tsutsumi-2015-epsilon-liftoff-acoustics.md) and [Ranow 2021](ranow-2021-acoustic-prediction-rocket-flame-deflector.md). It sits under the rocket-noise-modelling thread of CLAUDE.md and is the first paper to argue that the fully expanded jet, and its supersonic length, should set the source distribution.

**What later papers took, and what they changed**
- Haynes & Kenny halved the constant but kept exit variables, x_t = 1.75 d_e(1 + 0.38M_e)² (that note, eq. 10). That is not Varnier's model: for the ONERA rockets it gives L_P ≈ 13.3D against Varnier's 11.2D (my arithmetic, M_e 3.3 against M_j 3.1 and D_j = 0.9D). [Ranow 2021](ranow-2021-acoustic-prediction-rocket-flame-deflector.md) (p. 19) already flagged the difference; this paper confirms that eq. 12 uses D_j and M_j.
- [Casalino 2009](casalino-2009-hybrid-empirical-caa-rocket-noise.md) quotes the model correctly (L_ref with D_j, M_j; peak between L_C and L_S), and its D_j formula is eq. 13 rewritten with thrust.
- [Ranow 2021](ranow-2021-acoustic-prediction-rocket-flame-deflector.md) cites this paper for dismissing screech in rocket noise (that note, p. 5). The paper does not quite say that: it says Mach-wave and supersonic shear noise dominate very hot, highly supersonic jets, and lists screech among the components it does not model (p. 1852).

**Contradiction on source location.** Varnier's apparent peaks are 6–12D for three of four jets (Fig. 11), with focused-array sources at 5–15D (p. 1855). Later full-scale work puts the dominant source at 17–22 D_e ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 12–14), 17–18D for the RSRM ([Gee 2012](gee-2012-reusable-srm-noise-spectral-statistical.md) p. 4) and 17–32D at 50 Hz moving to 10–20D above 600 Hz for GEM-60 ([Gee 2016](gee-2016-near-field-intensity-static-rocket-firings.md) p. 1, 5). Lubert suspects Varnier's length is biased by limited data and the Potter curve (that note, p. 27). Reading the paper suggests three further reasons (my assessment):
1. **Frequency.** The ONERA rockets peak at f D/U_e ≈ 0.1 in octave bands (my arithmetic), several times the full-scale Sr ≈ 0.02–0.025. Sources move upstream with frequency ([Gee 2010](gee-2010-near-field-vector-intensity-solid-rocket-motor.md); [Gee 2016](gee-2016-near-field-intensity-static-rocket-firings.md)), so small rockets measured in the near field favour a short source region.
2. **Inference.** L_P* is not measured directly: it is the value that best fits near-field SPL inside 20D with the model's own source shape (Fig. 3) and directivity, plus a beamformer that the paper says cannot locate the peak precisely (p. 1855).
3. **Scatter.** Rocket F (20D or more) and the Rita II instability show the spread; the ±20% uncertainty on 1.75 is the author's own (p. 1856).
The paper's ordering L_S > L_P > L_C (eq. 16) and its "peak before the supersonic tip" picture are not in conflict with the later 17–22 D_e, since rocket supersonic lengths are 25–37 D_e (Lubert, that note, p. 13).

**Efficiency.** η* ≈ 0.7%, independent of size, sits above the 0.3–0.4% of modern launches ([Mathews 2021](mathews-2021-falcon-9-far-field-noise.md); [Kellison 2026](kellison-2026-falcon-9-noise-two-campaigns.md)) but within Sutherland's 0.53% ± 0.24%. Varnier's sound power is fitted with an image jet, so the ground treatment enters η directly. The later dispute over ground factors ([Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md); Kellison) shows how many dB that can move. The scale artefact that arc integration produced here (η rising 0.4 → 0.6% only because the nozzle height in diameters changed) is an early example of the same problem.

**Directivity.** Re-centring the indices on the peak source (App. B) is the same idea as [James 2012](james-2012-directivity-curves-rocket-noise-model.md), but Varnier assumes the SP-8072 curves already hold at R = 10L_P and only corrects near-field geometry, so the peak moves just 5°. James instead re-references the SP-8072 measurement arcs themselves and moves the OASPL peak from 51° to 65°. Rita II's measured peak at 40–50° (Fig. 9) uses nozzle-centred arcs at 11–20D, so it carries the near-field bias James describes.

**Link to the MARTEL LES.** Jet IV is the MARTEL rig (D = 60 mm, ground 50D below) that [Langenais 2019](langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation.md) simulated at a hotter condition (T_i = 1900 K, M_e 3.1, M_j 2.8, p_e/p_∞ 0.6). There the supersonic core is ≈21D and the potential core ≈8D (that note, p. 11, 13), against Varnier's probe L_S* = 26D at T_i = 1040 K, M_e 3.3. The trend (hotter jet, shorter supersonic region) is plausible, but this is a comparison across two conditions only (my link).

**Lab work and the analysis workflow (CLAUDE.md)**
- **Basic statistics test the model's lengths directly.** L_C, L_S and the M = 1 contour are mean-flow quantities. Non-time-resolved PIV, mean schlieren or probe surveys of the group's under- and overexpanded jets can test eqs. 12 and 19 and the L_S/L_C ≈ M^0.9 ratio at lab NPRs. They would also show whether D_j and M_j collapse different nozzles, as Varnier claims (Fig. 11). Cold lab jets would only test the geometry, not the hot-jet calibration.
- **Source location against frequency needs time-resolved data.** The focused-array map (Fig. 8) is a beamformer on a cross-spectral matrix. SPOD of time-resolved schlieren, or of a near-field microphone array, gives the same thing with phase: mode envelopes per frequency give the source position, and the streamwise phase gives the convection speed that sets Mach-wave directivity. That is the measurement that would test L_S/L_P = M_j^α across frequency rather than for OASPL only.
- **Coherence.** The model assumes uncorrelated point sources, and the measured NCSD coherence is lower than computed (Fig. A1). Wavepacket (SPOD-mode) sources are spatially coherent over several diameters, so an SPOD-based source would change the predicted NCSD; comparing the two is a direct test of the uncorrelated-source assumption.
- **Intermittency.** Rita II's emission "appears to be unstable" with a possible Mach disk at p_e/p_a = 0.3 (p. 1856). That kind of switching (shock structure or separation changing in time) is what the SPOD → reconstruction → Hilbert POD pipeline, or a Hilbert envelope of a microphone band, could track in lab overexpanded jets. Block-averaged levels as used here hide it.
- **Shock noise.** The largest misfits are near the nozzle where shock noise may dominate (p. 1854); the model has no BBSAN term, and the lab's underexpanded jets are dominated by exactly that region.

**Items to verify against the PDF**
1. Eq. C2's printed exponent, (γ + 1)/4(γ + 1); I take it as (γ + 1)/[4(γ − 1)] (rocket F check above). The citation "Tam and Tanna²¹" should be ref. 22.
2. Fig. A1 caption (rocket 0) against the text (rocket 1) (p. 1858).
3. Moss corrections "0 to −2 dB": the text layer drops the minus sign; the rendered page shows −2 (p. 1854).
4. Table 1 W_M for rocket 1: 17.7 MW printed, 17.4 MW from F/m_t (my check).
5. Jet IV model peak: text 10D, my eq. 12 evaluation 9.0D (p. 1856).
6. Fig. 8's two lines (≈3.55 and ≈4.5 kHz, read) are called octave cut-offs, but bracket roughly a one-third-octave band (4 kHz).
7. Fig. 5 curve labels, Fig. 9 peak angles, Fig. 10 maximum and all Fig. 11 values are read from rendered figures.
8. c_t in eq. 9: called the "throat characteristic velocity" on p. 1856, a sound speed in the nomenclature.
9. Rita II L_P* ≈ 6D is read from Fig. 11; the text gives only "20% shorter" than eq. 12, which gives 0.8 × 7.7D ≈ 6.2D (my arithmetic).

**Candidates for `/add-paper`:** Eldred et al. 1971 (NASA SP-8072); Sutherland 1993 (AIAA 93-4383, efficiency law); Nagamatsu & Horvay 1970 (AIAA 70-237, L_C and L_S formulas); Potter 1968 (NASA CR-101105, source location); Potter & Crocker 1966 (NASA CR-566); Mayes, Lanford & Hubbard 1959 (NASA TN D-21, rocket F); Guest 1964 (NASA TN D-1999, efficiency trends); Cole et al. 1957 (WADC TR 57-354); McInerny 1990 (AIAA 90-3981, rocket noise review); Anderson & Johns 1955 (Jet Propulsion, supersonic lengths); Candel 1984 (Ariane lift-off); Géli, Varnier, Piet & Prévost 1994 (scale effect on solid-rocket noise); Varnier & Raguenet 2002 (impinging jet follow-up). McInerny 1996 (launch-vehicle acoustics, part 1: overall levels and spectra; PDF held, not yet indexed) is, per Lubert, the later source of the rocket core and supersonic lengths quoted above.
