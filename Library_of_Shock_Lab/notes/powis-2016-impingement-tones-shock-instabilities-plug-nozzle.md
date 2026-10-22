---
key: "powis-2016-impingement-tones-shock-instabilities-plug-nozzle"
title: "Impingement Tones and Associated Shock Instabilities in Supersonic Plug Nozzle Flows"
authors: ["Powis, Andrew T.", "Brunet, Ryan J.", "Lynch, Joshua P.", "Honnery, Damon R.", "Soria, Julio", "Edgington-Mitchell, Daniel"]
year: 2016
type: "article"
venue: "AIAA J. 54 (2016)"
bib: {"journal": "AIAA Journal", "volume": "54"}
doi: "10.2514/1.J054429"
arxiv: ""
pdf: "impinging-jets-and-edge-tones/Powis-EtAl_2016_Impingement-Tones-And-Associated-Shock-Instabilities-In-Supersonic-Plug-Nozzle-Flows.pdf"
version: "accepted-manuscript"
unverified: ["volume 54 inferred from the 2016 copyright year, not printed (Vol./No. are blank on p. 1 of this typeset proof); issue and page range unknown"]
group: true
facility: "Shock Lab group facility (LTRAC Supersonic Jet Facility)"
data: ["schlieren-TR", "schlieren", "microphones-far"]
methods: ["PSD", "statistics", "resonance-model", "feature-tracking"]
flow: ["round-jet", "impinging-jet", "supersonic", "overexpanded"]
phenomena: ["impingement-tones", "staging", "multimodal", "shock-cells", "coherent-structures", "toroidal", "helical"]
params: {"NPR": "3.4", "M_d": "1.94 (area ratio 1.60, design NPR 7.07)", "M_j": "≈1.45 (isentropic, my calculation; not stated)", "z/D": "1.0–8.0 in 0.1 steps (acoustics, schlieren survey); 3.2–5.0 (shock tracking)", "D": "15.8 mm (equivalent throat diameter of the annular throat)", "D_j": "16.88 mm", "U_j": "492.3 m/s as printed (= M_j a_0; isentropic ≈ 413 m/s, my check)", "TR": "≈1 (plenum ≈ 288 K)", "lip": "1 mm (≈0.06D)", "plate": "100 × 115 mm (≈6.3D × 7.3D)", "plug": "truncated conical, 15° half-angle, 40% truncation", "frame rate": "250 and 500 kfps (Shimadzu HPV-1, 102 frames per burst)"}
topics: ["impinging-jets-and-edge-tones", "schlieren-and-density-imaging"]
related: ["henderson-1993-tones-choked-jet-impinging-flat-plates", "henderson-2002-flow-structure-supersonic-impinging-jets", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "weightman-2017-phase-lag-supersonic-jet-impingement", "weightman-2019-sound-production-impinging-supersonic-jets", "weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "tam-1995-supersonic-jet-noise", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: ["edgington-mitchell-2014-coherent-structure-helical-screech-mode", "henderson-1993-tones-choked-jet-impinging-flat-plates", "henderson-2002-flow-structure-supersonic-impinging-jets", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "tam-1995-supersonic-jet-noise"]
summary: "Overexpanded truncated-plug jet (NPR 3.4) on a plate: no tones below z/D 3.2; standoff shock tracked at 500 kfps oscillates at the tone, s/D follows free-jet cells"
---
# Impingement Tones and Associated Shock Instabilities in Supersonic Plug Nozzle Flows

- **Authors:** Andrew T. Powis, Ryan J. Brunet, Joshua P. Lynch (Dept of Mechanical and Aerospace Engineering), Damon R. Honnery, Julio Soria (professors) and Daniel Edgington-Mitchell (lecturer), all Monash University, Melbourne (p. 1). Edgington-Mitchell is an author, so this is Shock Lab group work. The rig is the "Monash University Laboratory for Turbulence Research in Aerospace and Combustion Supersonic Jet Facility" (LTRAC, p. 2); no lab space (Shock Lab, Combustion Lab, TABLE Lab) is named. Funded by ARC LIEF and DP grants (p. 7). Associate editor F. S. Alvi (p. 9).
- **Source:** AIAA Journal, doi:10.2514/1.J054429. Received 27 April 2015, revised 9 February 2016, accepted 10 February 2016; copyright 2016 (p. 1). This copy is AIAA's final typeset proof: the header reads "Vol. , No. ," and the online date is "XX epubMonth XXXX" (p. 1), so volume, issue and pages are not printed. Volume 54 is my inference from the year.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/impinging-jets-and-edge-tones/Powis-EtAl_2016_Impingement-Tones-And-Associated-Shock-Instabilities-In-Supersonic-Plug-Nozzle-Flows.pdf` (index key `impinging-jets-and-edge-tones/Powis-EtAl_2016_Impingement-Tones-And-Associated-Shock-Instabilities-In-Supersonic-Plug-Nozzle-Flows.pdf`, 9 pp.; originally `AIAAJ-J054429_FINALED_2.pdf`). Page refs are the proof's printed pages, which equal PDF pages. The Read tool reports the PDF as password-protected, so the text came from `pdftotext -layout`; equations, Table 1 and Figs 3, 5–14 were checked on 110–400 dpi renders.
- **Tags:** supersonic impinging jet, plug (aerospike) nozzle, truncated conical plug, annular throat, overexpanded jet, inner and outer shear layers, impingement tones, Powell phase and gain criteria, staging, multimodal tones, toroidal and helical modes, standoff shock, shock oscillation, shock splitting, shock standoff distance, Henderson's equivalent-free-jet hypothesis, ultra-high-speed schlieren (Shimadzu HPV-1), edge-detection shock tracking (Sobel), launch vehicles

## Summary
The paper studies a cold jet from a truncated conical plug nozzle (annular throat, design M 1.94) run overexpanded at NPR 3.4 against a large flat plate, the first impinging-jet study of this nozzle type (p. 2). Far-field microphone spectra over z/D = 1–8 show staged impingement tones that follow Powell's phase criterion, but none for z/D < 3.2. The authors attribute the gap to the annular near-nozzle flow and its concentric shear layers, though they do not test this (p. 4–5). Low-magnification 250 kfps schlieren shows a toroidal structure hitting the plate and a sound wave returning to the lip, so the tones are taken to be a plate–lip feedback loop (p. 5). High-magnification 500 kfps schlieren, with an edge-detection shock tracker, shows that the standoff shock oscillates at the tone frequency within one standard deviation for toroidal cases (p. 6). Its mean standoff distance follows the shock-cell structure of the equivalent free jet, as Henderson et al. proposed. Within a cell, a larger standoff distance goes with a smaller oscillation amplitude (p. 6–7). At z/D = 4.80 the standoff shock splits into a staircase of weaker shocks and briefly disappears; at 3.64 it oscillates almost sinusoidally (p. 7). There is no model beyond Powell's equation and no simulation.

## Key findings
- **Plug-jet structure** (p. 4, Fig. 5):
  - The mean schlieren (242 PCO4000 images) shows an annular jet: an outer shear layer from the lip and a thin boundary layer on the plug. Overexpanded, the outer shear layer bends towards the plug.
  - A recirculation region behind the truncated plug (citing Sule 1973) forms an inner shear layer at x/D ≈ 0.4.
  - The internal shock from the shroud exit reflects near the end of the plug. Waves reflected between the two shear layers shorten the first shock cells.
  - By the centre of the third cell (x/D ≈ 2.3) waves are no longer reflected by the inner shear layer, which suggests the central flow has become supersonic. Further downstream the jet looks like a round jet.
- **Instantaneous structure** (p. 4, Fig. 6): z/D = 2.9 is stable; 4.8 shows toroidal structures (a symmetric bulge on both sides of the shear layer); 5.4 shows sinuous bands (asymmetric).
- **Tones and staging** (p. 4–5, Figs 7–8):
  - At most four distinct tones at any z/D. Harmonics are marked separately by the peak detector (Fig. 7). z/D 5.2 is multimodal (tones at Sr ≈ 0.25 and 0.32 with harmonics); z/D 5.3 has a single tone at Sr ≈ 0.25 with harmonics at 0.50 and 0.75 (read from Fig. 7; peak levels ≈ 124 and 129 dB, but the room is not anechoic).
  - Powell's criterion with θ = 2, 3, 4, 5, 6 and p = 0.85 follows the stages (Fig. 8). Staging is explained, as for round jets, by a new wave entering the loop to bring the frequency back to where q_h is largest (p. 5).
  - **No tones for z/D < 3.2** (Fig. 8), whereas round convergent nozzles give tones at z/D ≤ 1.7 (NPR 3.38, Powell 1988) and C-D nozzles at z/D ≤ 2.0 (NPR 3.7, Krothapalli et al. 1999). The authors propose that the annular flow and concentric shear layers near the nozzle inhibit the loop; beyond that, the jet behaves like a round jet (p. 5). This is a proposal; no measurement isolates the cause.
  - Free-jet screech tones were removed by hand from Fig. 8, so the plug jet does screech at NPR 3.4, but no screech frequency is given (p. 4).
  - The facility was shut down for every change of z to avoid hysteresis (p. 4), so the map cannot show any.
- **Stage map read from Fig. 8** (p. 5; my reading, ±0.01 in Sr):
  - z/D 3.3–3.8: one θ = 3 tone, Sr 0.39 → 0.35, with a weak θ = 2 point at z/D 3.4 (0.285).
  - z/D 3.9–4.1: θ = 2, 3 and 4 together (≈ 0.25, 0.31–0.35, 0.40), i.e. multimodal.
  - z/D 4.2–5.0: θ = 4 alone, 0.38 → 0.33.
  - Beyond the shock-tracking window: θ = 3 at 5.1–5.7 (0.26 → 0.24), θ = 5 at 5.8–6.6 (0.345 → 0.31), θ = 4 at 6.7–7.2 (≈ 0.245), θ = 6 at 7.3–7.8 (0.325 → 0.31), θ = 5 at 7.9–8.0 (0.25). Isolated points at z/D 5.1 (0.22) and 5.9 (0.14).
- **Modes** (p. 5): toroidal and helical modes were seen; the flapping mode never appeared. The toroidal mode dominates over most plate distances.
- **The loop seen in schlieren** (p. 5, Fig. 9; z/D 3.60, toroidal, T = 95 µs): a toroidal structure approaches (t/T 0) and hits the plate (0.11); a sound wave travels upstream (0.21–0.42) and reaches the thin shear layer near the lip (0.51), which it excites by the mechanism of Mitchell et al. 2012 (`mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren`, note not yet indexed).
  > Check (mine): the arrows in Fig. 9c–f move from x/D ≈ 2.35 to ≈ 0.3 between t/T = 0.21 and 0.51, which is 2D in about 29 µs, ≈ 1100 m/s, three times a∞. At 340 m/s a front needs about 1.7T to cross 3.3D. Either the panels follow different fronts, or T in Fig. 9 is not the 95 µs tone period (it would fit if T were the whole loop, ≈ 3.85 tone periods). Verify against the PDF or the original sequence.
- **Shock motion depends on the mode** (p. 5–6):
  - Toroidal structures: the shock stays roughly parallel to the plate and oscillates normal to it.
  - Helical structures: the shock appears to move side to side and tilt; the authors think it is really rotating about the axis, seen as side-to-side motion through the path integration.
  - Multimodal: a combination, the shock "wobbling" both ways. This agrees with round-jet observations (Risborg & Soria 2009).
  - The tracker could not follow tilt or motion parallel to the plate, so the quantitative work is limited to toroidal cases (p. 6).
- **Shock-oscillation frequency equals the tone frequency** (p. 6, Fig. 10): for toroidal cases between z/D 3.56 and 5.00, the shock frequency (mean of 20 bursts per z) matches the tone within one standard deviation. σ is generally below 10%, 15% at z/D 3.8. The authors read this as confirming that coherent structures arriving at the plate drive the shock (Powell 1988; Panda 1998), and as validating the tracker.
  > Check (mine): Fig. 10's Sr values are about 7% below the Fig. 8 tones at the same z/D (e.g. 0.337 against ≈ 0.365 at z/D 3.64), and the ratio matches D_j/D = 1.068. Fig. 10 therefore looks normalised by D = 15.8 mm rather than D_j. With D, Fig. 10 also reproduces the printed periods (T = 95–99 µs ↔ Sr_D 0.338–0.324). Confirm before using Fig. 10 values.
- **Mean standoff distance follows the free-jet cells** (p. 6, Figs 11a, 12):
  - Mean s/D comes from a sinusoidal fit (σ < 5%). It ranges from ≈ 0.43 to 0.55 (read from Fig. 11a).
  - Bands from the free-jet ∂ρ/∂x image (Fig. 12) are overlaid on Fig. 11. Where the free-jet centreline velocity is largest, s is smallest; where it is smallest, s is largest. This supports Henderson et al.'s (2005) hypothesis that standoff distance is set by the plate's position in the equivalent free jet's shock structure; the authors say s is "inversely proportional" to the local free-jet velocity, by analogy with bow-shock standoff (Anderson et al. 1968).
  - "Inversely proportional" is qualitative: no free-jet velocity is measured, only the schlieren bands.
- **Oscillation amplitude** (p. 6–7, Fig. 11b):
  - A/D ranges from ≈ 0.03 to 0.14, with σ up to 27%.
  - Within one cell, a larger mean s goes with a smaller A, except between z/D 4.63 and 5.00. So A may also depend on where the plate sits in the free-jet shock structure.
  - Proposed cause: a local shock–plate feedback like the small-plate (d/D < 1) or Hartmann-resonator loop (Powell 1988; Hartmann & Trolle 1927), stronger when the shock is closer to the plate. This is a hypothesis; no test is made.
  - My observation: the inverse relation holds only within a cell. At equal mean standoff (s/D 0.47) the amplitude is 0.05 at z/D 3.64 and 0.11 at 4.80 (p. 7). So plate distance, and presumably the size of the arriving structures, matters at least as much as s.
- **Shock splitting** (p. 7, Figs 13–14):
  - z/D 3.64: plate in the compression region just after the velocity maximum, second half of the fourth cell. s/D 0.47, A/D 0.05, T = 96 µs. The shock sits as a strong thick line in the "throat" between toroidal structures, broadens and moves upstream as a structure passes (largest breadth and standoff at t/T 0.54–0.69), then returns. Motion is nearly sinusoidal and the shock is always visible.
  - z/D 4.80: similar position in the fifth cell. s/D 0.47, A/D 0.11, T = 99 µs. As a structure passes, the shock jumps upstream with weaker shocks forming further upstream (t/T 0.22). These move downstream and weaken; by t/T 0.54 no shock is visible in the impingement region; a single shock reappears further downstream at 0.91.
  - Compared with Henderson (2002, JASA), who saw the standoff shock vanish temporarily at z/D 0.96, NPR 4.15 and z/D 1.35, NPR 3.80 in phase-locked shadowgraphs, and Panda's (1998) moving "staircase" or splitting of shocks in a free jet (p. 8). Why it splits at one distance and not the other is left open, for lack of upstream flow-field data (p. 8).

## Setup / method
**Facility** (p. 2–3, Fig. 3): LTRAC Supersonic Jet Facility. Compressed air enters a plenum at about 288 K, with a honeycomb straightener. NPR is held by a Fairchild 100 high-flow regulator (details in Edgington-Mitchell et al. 2014) and measured with an RS-461 transducer (0–10 bar, 0.25% uncertainty). The plate is 100 × 115 mm, placed at distance z from the **nozzle throat**.

**Plug nozzle** (p. 2–3, Fig. 3):
- Truncated conical plug, 15° cone half-angle, 40% truncation. Truncation is defined as the length of the truncated plug over that of the full plug, measured from throat to tip.
- Internal–external expansion, to reduce separation and guide the flow onto the plug (Sule 1973).
- Lip 1 mm thick. Area ratio 1.60, giving design NPR 7.07 and Mach 1.94.
- D = 15.8 mm is the diameter of a circle with the annular throat area; all lengths are scaled by it.
- Dimensions read from the Fig. 3 drawing (mm; my reading, check): shroud exit radius ≈ 10.0, a 4.0 dimension at the exit (probably the annular gap), plug protruding 6.2 beyond the lip, a 2.0 step at the lip, a 63.6° shroud convergence angle, a 27.0 plug dimension (diameter or radius not clear) and an R10 inlet fillet. The 6.2 mm protrusion (0.39D) matches the inner shear layer starting at x/D ≈ 0.4.
- Isentropic checks (mine): A/A* 1.60 gives M 1.935 and NPR 7.07, as printed. NPR 3.4 gives M_j 1.447 and D_j/D 1.069, so D_j = 16.88 mm as printed. U_j = 492.3 m/s equals M_j × a₀ at 288 K, not the isentropic fully expanded velocity (≈ 413 m/s); the same choice as the U_j = 460.8 m/s flagged in [weightman-2017](weightman-2017-phase-lag-supersonic-jet-impingement.md). Multiply this paper's Sr by 492.3/413 ≈ 1.19 to get St on the isentropic U_j (e.g. 0.33 → 0.39).

**Conditions:**

| Quantity | Value | Source |
|---|---|---|
| NPR | 3.4 (overexpanded; design 7.07) | p. 1, 3 |
| M_j | ≈ 1.45 | my calculation |
| T₀ | ≈ 288 K (cold) | p. 2 |
| z/D (acoustics, 250 kfps survey) | 1.0–8.0, steps of 0.1, plus free jet | p. 4–5 |
| z/D (500 kfps shock tracking) | 3.2–5.0 (points at ≈ 3.56, 3.64, 3.79, 4.29, 4.45, 4.63, 4.80, 5.00) | p. 5; points read from Fig. 10 |
| Sr | f D_j/U_j, D_j = 16.88 mm, U_j = 492.3 m/s | p. 3 |

**Acoustics** (p. 3):
- One G.R.A.S. 46BE ¼-inch microphone (20 Hz–80 kHz), about 100D from the nozzle radially, facing the exit. 16-bit NI acquisition at 250 kHz.
- 500,000 samples (2 s) per spectrum; Hann windows of 4096 samples with 75% overlap, 480 averages as stated (485 by my count). Δf ≈ 61 Hz, ΔSr ≈ 0.002 (mine).
- Tones found by an automated peak detector (Palshikar 2009): a peak must be 7 dB above the mean SPL of the nearest 200 points (≈ 12 kHz). Harmonics flagged automatically.
- The room has many reflecting surfaces and is not anechoic, so only frequencies are used, not levels. The authors note the room may also affect staging, which was not explored.

**Schlieren** (p. 3–4, Fig. 4, Table 1):
- Toepler Z-type, two 200 mm parabolic mirrors, f = 2032 mm.
- PCO4000, 1 fps, with an LED pulse of 1.6 µs (Willert et al. 2012). Used for mean images from more than 200 frames (242 for Figs 5 and 12). Not time-resolved.
- Shimadzu HPV-1, low magnification, 250 kfps, Metz Mecablitz flash: 102 frames per burst (408 µs, ≈ 4 tone periods). Lowest resolvable Sr 0.084 (p. 3; 1/408 µs = 2.45 kHz, my check). Used for the loop visualisation at z/D 1.0–8.0, recorded with acoustics.
- Shimadzu HPV-1, high magnification, 500 kfps: a 1.6D × 1.4D window on the plate and standoff shock. Each burst is 204 µs, about two tone periods (mine). Recorded with acoustics.
- Knife edge: radial (∂ρ/∂y) for the impingement region and Figs 5–6, chosen because strong axial gradients there would otherwise dominate (p. 4). Axial (∂ρ/∂x) for Fig. 12.

**Shock tracking** (p. 4, 6):
1. Gaussian filter on each frame.
2. Sobel edge detection (chosen over other detectors).
3. Length filter to remove short edges.
4. Average the remaining line segments' positions and orientations into one straight-line fit, giving the shock centroid and angle.
5. Validate by overlaying detected positions on the images; tune the filter and edge sensitivity.
6. Fourier transform of the centroid's x position in each 102-frame burst gives the frequency; the reported value is the mean of 20 bursts per z/D. A sinusoidal fit to the same data gives the mean standoff s and amplitude A.

Normal motion is tracked well; tilt and motion parallel to the plate are not. Estruch et al. (2008, Canny) and Diebold & Elliott (2014) used similar edge tracking.

Data dependence (my comments): the method needs time-resolved images, but each burst holds only about two periods at 500 kfps, so a single burst's FFT bin is 4.9 kHz (ΔSr ≈ 0.17). The frequency must therefore come from interpolation or the fit, and the 20-burst average and its σ (up to 15%) are what make it usable. "Agreement within one σ" is thus a loose test. The paper says σ "scales with" amplitude but explains it by small oscillations being noisier, i.e. σ grows as A shrinks (largest at z/D 3.8, where A/D ≈ 0.03).

**Models:** only Powell's phase and gain criteria (eqs 1–2). Neither u_c nor h is given for the Fig. 8 curves. No stability analysis, LES or acoustic model.

## Key equations
- **Powell phase criterion** (eq. 1, p. 1):
  $$\frac{\theta + p}{f} = \int_0^h \frac{dh}{u_c} + \int_0^h \frac{dh}{c}$$
  θ: number of cycles of frequency f in one loop (the nomenclature calls it the "phase change over one impingement feedback cycle"); p: combined phase lag at the source and the nozzle; u_c: convection velocity of the coherent structures; c: speed of sound; h: lip-to-source distance, often the plate.
  - Fig. 8 uses θ = 2–6 with p = 0.85 (p. 4). Under the convention −1 ≤ p ≤ 0 used in [weightman-2017](weightman-2017-phase-lag-supersonic-jet-impingement.md), this is N = θ + 1 = 3–7 with p = −0.15.
  - Back-calculation (mine), taking h = z and c = 340 m/s and using the Fig. 8 points: u_c ≈ 270–306 m/s, i.e. 0.55–0.62 of the paper's U_j, or 0.65–0.74 of the isentropic U_j. The paper does not state its u_c, so treat this as indicative.
- **Gain criterion** (eq. 2, p. 1):
  $$q_h\,\eta_s\,\eta_t\,\eta_d \ge 1$$
  q_h: amplification of lip disturbances along the shear layer; η_s: efficiency of sound production at the plate; η_t: transmission efficiency back to the nozzle; η_d: efficiency of creating a flow disturbance at the lip. Both eqs must hold for a tone (Powell 1953). Not evaluated here. When several frequencies satisfy eq. 2 the jet can be multimodal (Henderson & Powell 1993); a thinner lip lowers η_d and screech intensity (Norum 1983) (p. 2).
- **Strouhal number** (p. 3): Sr = f D_j/U_j with D_j = 16.88 mm, U_j = 492.3 m/s.

## Data tables
**Table 1 (p. 4), camera settings** (rebuilt; cross-checked as resolution × pixel size / D, e.g. 4008 × 0.047/15.8 = 11.9):

| | PCO4000 | HPV-1 low magnification | HPV-1 high magnification |
|---|---|---|---|
| Resolution, pixels | 4008 × 2672 | 312 × 260 | 312 × 260 |
| Frame rate, fps | 1 | 250,000 | 500,000 |
| Field of view, (y/D) × (x/D) | 11.8 × 7.5 | 4.4 × 3.7 | 1.6 × 1.4 |
| Spatial resolution, mm/pixel | 0.047 × 0.044 | 0.22 × 0.22 | 0.081 × 0.085 |

**Standoff shock, NPR 3.4, toroidal cases** (Figs 10–11, p. 6, read from the figures, ±0.005 in Sr and s/D, ±0.01 in A/D; the bold values are printed on p. 7):

| z/D | Shock Sr (Fig. 10) | Tone Sr (Fig. 10) | s/D | A/D |
|---|---|---|---|---|
| 3.56 | 0.349 | 0.344 | 0.43 | 0.06 |
| 3.64 | 0.337 | 0.337 | **0.47** | **0.05** |
| 3.79 | 0.332 | 0.328 | 0.475 | 0.03 |
| 4.29 | 0.345 | 0.346 | 0.55 | 0.09 |
| 4.45 | 0.344 | 0.335 | 0.53 | 0.12 |
| 4.63 | 0.326 | 0.324 | 0.49 | 0.14 |
| 4.80 | 0.323 | 0.318 | **0.47** | **0.11** |
| 5.00 | 0.312 | 0.308 | 0.51 | 0.107 |

> Fig. 10 Sr appears to use D, not D_j (see the check in Key findings); multiply by 1.068 to put it on the Fig. 8 basis. Printed periods: T = 95 µs at z/D 3.60 (p. 5), 96 µs at 3.64 and 99 µs at 4.80 (p. 7), i.e. f ≈ 10.5, 10.4 and 10.1 kHz. Shaded (expansion) bands in Fig. 11 run to z/D ≈ 3.21, from 3.92 to 4.47, and from 5.08 (read from the figure).

## Figures worth remembering
- **Fig. 1 (p. 2):** Powell's loop for a large plate (after Powell 1988): lip disturbance, coherent structures, standoff shock, recirculation, sound source at the plate, sound waves back to the lip.
- **Fig. 2 (p. 2):** cross-section of an overexpanded truncated plug nozzle, with the recirculation zone behind the truncated plug and the annular throat.
- **Fig. 3 (p. 3):** facility and nozzle drawing with dimensions (plenum, honeycomb, plate, plug detail).
- **Fig. 4 (p. 3):** Z-type schlieren layout.
- **Fig. 5 (p. 4):** mean ∂ρ/∂y image of the free plug jet: annular near field, short first cells, round-jet-like cells beyond x/D ≈ 2.3.
- **Fig. 6 (p. 4):** instantaneous impinging jets: stable (z/D 2.9), toroidal structures (4.8), sinuous bands (5.4).
- **Fig. 7 (p. 5):** spectra with automatically located peaks: multimodal at z/D 5.2, single tone with harmonics at 5.3. The x-axis is labelled St, the text Sr.
- **Fig. 8 (p. 5):** tone Sr against z/D with Powell curves (θ = 2–6, p = 0.85) and the shock-tracking window 3.2–5.0. The key figure for staging and the tone-free region.
- **Fig. 9 (p. 5):** six 250 kfps frames of the loop at z/D 3.60: structure, impact, upstream sound wave reaching the lip.
- **Fig. 10 (p. 6):** shock-oscillation Sr against tone Sr with σ error bars.
- **Fig. 11 (p. 6):** s/D and A/D against z/D, with bands marking the free-jet expansion regions from Fig. 12.
- **Fig. 12 (p. 6):** mean ∂ρ/∂x image of the free jet with the same bands.
- **Figs 13–14 (p. 7):** one shock cycle each at z/D 3.64 (sinusoidal, always visible) and 4.80 (splitting and disappearance), with the mean standoff s/D = 0.47 dashed.

## Notation
- D: equivalent throat diameter (15.8 mm), the circle with the annular throat's area. D_j: fully expanded diameter (16.88 mm). U_j: "fully expanded jet velocity" (492.3 m/s as used; see the check above).
- z: plate distance from the **throat** (not from the plug tip). x, y: axial and transverse coordinates. s: distance from the plate surface; s/D is the mean standoff. A: standoff-shock oscillation amplitude. T: shock-oscillation period. σ: standard deviation over the 20 bursts.
- Sr = f D_j/U_j (this paper's symbol for the Strouhal number; Fig. 7 labels it St).
- θ: integer number of cycles in the loop (Powell's N); p: phase lag. q_h, η_s, η_t, η_d: gain-criterion factors.
- "Toroidal" = symmetric (m = 0) mode; "helical" = spinning m = 1; "flapping" = two opposite helices superposed (p. 2).
- "Throat" in Sec. III.G also means the region between two toroidal structures where the shock sits (p. 7).

## Relevance to this project
The lab's core problem is resonance in supersonic impinging jets, studied with time-resolved schlieren, acoustics and PIV (CLAUDE.md). This early group paper (the same LTRAC rig and Shimadzu camera as Mitchell et al. 2012 (`mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren`, note not yet indexed)) adds one nozzle type, the plug, to the impinging-jet record, and is the only paper in the library that measures standoff-shock position, amplitude and frequency against z/D.

- **Nozzle geometry closes or opens the loop.**
  - Tones are absent below z/D 3.2, where round nozzles at similar NPR resonate (p. 5).
  - This fits the thread that the nozzle and its near field are part of the loop's boundary conditions ([Weightman et al. 2019](weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet.md); [Henderson 1993](henderson-1993-tones-choked-jet-impinging-flat-plates.md), reflectors).
  - But the cause is unknown. Candidates the paper does not separate (my list):
    - the inner shear layer and recirculation change what reaches the plate;
    - the plate sits in the first three, annular cells, so the source mechanism differs;
    - zones of silence of the Henderson 2002 kind ([henderson-2002](henderson-2002-flow-structure-supersonic-impinging-jets.md)) cover the whole range;
    - the guided-mode band of an annular jet differs from a round jet's.
  - Since the lip (1 mm) is thin and conventional, receptivity alone is an unlikely cause.
- **Phase lag and convection speed.**
  - The fitted p = 0.85 with θ is p = −0.15 in the convention of [weightman-2017](weightman-2017-phase-lag-supersonic-jet-impingement.md). Add it to the spread of published lags (+0.4 Henderson; 0 Ho/Gojon; −0.4 Krothapalli; −0.24/−0.49 Weightman 2017).
  - Without the u_c used it cannot discriminate between sources. My back-calculated u_c ≈ 0.65–0.74 of the isentropic U_j lies above the thesis PIV value (0.44–0.48U_j) and near the LES-type 0.6U_j ([karami-2020](karami-2020-acoustic-hydrodynamic-waves-underexpanded-impinging-jets.md), [bogey-2017](bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets.md)).
- **Standoff-shock dynamics.**
  - The shock oscillating at the tone frequency and moving normal to the plate for toroidal modes supports the standoff shock as the place where structures and the plate interact.
  - That is where the thesis put shock leakage ([Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md), Ch. 6) and where [Edgington-Mitchell 2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) saw split fronts.
  - The shock splitting and disappearance at z/D 4.80 are an image-level record of the multi-shock staircase that leakage and split fronts may come from. The paper does not track waves leaving the shock.
  - Henderson's equivalent-free-jet rule for s, confirmed here for a different nozzle, gives a way to predict where the standoff shock sits from free-jet schlieren alone.
- **Methods and data type.**
  - The 102-frame HPV-1 bursts (≈ 2 cycles at 500 kfps) force ensemble statistics over 20 bursts. They give no cycle-to-cycle history and no way to see switching between modes or stages.
  - With long SA-Z records, the shock-centroid time series becomes a 1-D signal for Hilbert-transform instantaneous frequency and amplitude, or a reference for conditional phase averaging. It would show whether splitting cycles are periodic or intermittent, and how A varies with the z/D 3.9–4.1 multimodal switching.
  - For helical modes, where the edge tracker fails, SPOD of the impingement window (with the k_x sign separating upstream waves), or the SPOD → reconstruction → HPOD pipeline on the shock region, would replace the scalar tracker.
  - The PCO4000 frames (1 fps) are non-time-resolved and serve only for means here. POD pairs of such sets could give phase, as with PIV in the CLAUDE.md workflow.
  - Spectra are single-microphone Welch averages in a reverberant room: fine for frequencies, unsuitable for levels or azimuthal mode.
- **Modelling side:** none in the paper. Useful next steps (my suggestions): a dispersive (vortex-sheet) phase model for an annular jet to test whether the tone-free region is a band-limit effect; LES of the plug with plate, which the PyFR set-up could host, to resolve the inner shear layer and recirculation; and a 1-D shock–plate model of the Kuo & Dowling type (see the [henderson-1993](henderson-1993-tones-choked-jet-impinging-flat-plates.md) note) for the claimed local shock–plate feedback.
- **Rocket noise:**
  - The motivation is launch vehicles with plug (aerospike) nozzles. The authors cite evidence that impingement tones, unlike screech ([Tam 1995](tam-1995-supersonic-jet-noise.md)), persist in heated jets (Kumar et al. 2008; Gustavsson et al. 2010), which could load launch structures (p. 2).
  - That contrasts with the absence of tones at full scale ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)).
  - This study is cold, at one NPR, on a small normal plate. It cannot address the hot, inclined-deflector case.
- **Cited works worth adding:**
  - Henderson, Bridges & Wernet 2005 (JFM 542; the standoff-distance hypothesis).
  - Henderson 2002 (JASA 111, shock disappearance), a different paper from the AIAA preprint held as `henderson-2002-flow-structure-supersonic-impinging-jets`.
  - Panda 1998 (JFM 363, shock oscillation in screeching jets).
  - Powell 1988 (JASA 83).
  - Krothapalli et al. 1999 (JFM 392).
  - Risborg & Soria 2009 (inclined plate).
  - Karthikeyan et al. 2013 (AIAA J. 51, aerospike truncation acoustics).
  - André, Castelain & Bailly 2011 (AIAA J. 49, shock tracking).
  - Kumar, Lazic & Alvi 2008 and Gustavsson et al. 2010 (heated impinging jets).
