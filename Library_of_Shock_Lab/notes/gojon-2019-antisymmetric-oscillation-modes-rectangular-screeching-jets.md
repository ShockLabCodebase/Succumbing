---
key: "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets"
title: "Antisymmetric oscillation modes in rectangular screeching jets"
authors: ["Gojon, Romain", "Gutmark, Ephraim", "Mihaescu, Mihai"]
year: 2019
type: "article"
venue: "AIAA J. 57(8), 3422–3441"
bib: {"journal": "AIAA Journal", "volume": "57", "number": "8", "pages": "3422--3441", "note": "Author's version held: HAL hal-03162269, OATAO 27049"}
doi: "10.2514/1.J057514"
arxiv: ""
pdf: "non-axisymmetric-and-twin-jets/Gojon-EtAl_2019_Antisymmetric-Oscillation-Modes-In-Rectangular-Screeching-Jets.pdf"
version: "accepted-manuscript"
unverified: []
group: false
facility: "Implicit LES, structured finite-volume solver (ISAE-SUPAERO/KTH; GENCI and CALMIP HPC); comparison data from University of Cincinnati experiments (Mora et al. 2016)"
data: ["LES", "PIV", "microphones-far"]
methods: ["statistics", "PSD", "coherence", "symmetry-decomposition", "wavenumber-filtering", "vortex-sheet", "shock-cell-model", "resonance-model", "empirical-model", "FW-H", "numerics"]
flow: ["rectangular-jet", "supersonic", "overexpanded", "underexpanded", "heated"]
phenomena: ["screech", "flapping", "guided-jet-mode", "shock-cells", "axis-switching", "standing-waves", "Mach-wave-radiation", "BBSAN", "mixing-noise", "directivity"]
params: {"AR": "2", "M_d": "1.5", "NPR": "3 (overexpanded), 4 (underexpanded)", "M_j": "1.36, 1.56", "TR": "1, 2, 2.5, 3 (T₀/T∞, T∞ = 293 K)", "T_j/T_∞": "0.67–2.19", "h": "12.95 mm", "D_eq": "√(8/π)h = 20.67 mm", "Re": "2.48×10⁵–1.24×10⁶ (u_j D_eq/ν_j)", "St": "0.12–0.36 (f D_eq/u_j)", "u_c/u_j": "0.80–0.64 (NPR 3, TR 1–3)", "grid": "160M nodes"}
topics: ["non-axisymmetric-and-twin-jets", "screech", "linear-models", "jet-noise-mechanisms", "simulation-methods"]
related: ["jeun-2024-screech-coupling-closure-rectangular-twin-jets", "nogueira-2024-guided-jet-waves", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets", "mazharmanesh-2025-screech-modes-non-axisymmetric-jets", "esfahani-2021-coupling-modes-twin-rectangular-jets", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "nogueira-2021-twin-jet-coupling-spatial-lsa", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "stavropoulos-2024-upstream-waves-merging-twin-jets", "raman-1998-supersonic-jet-screech-review", "krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise", "nogueira-2026-flapping-motion-screeching-round-jets", "yeung-2022-3d-spod-twin-rectangular-jet", "bres-2021-les-twin-rectangular-jets-plasma"]
cites: ["tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets", "tam-1995-supersonic-jet-noise", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
summary: "LES of AR 2 C-D rectangular jets, NPR 3/4, TR 1–3: screech St matches expt; flapping goes diagonal → minor-axis with heat; planar vortex-sheet A1 band explains it"
---
# Antisymmetric oscillation modes in rectangular screeching jets

- **Authors:** Romain Gojon (ISAE-SUPAERO, Université de Toulouse), Ephraim Gutmark (Dept. of Aerospace Engineering & Mechanics, University of Cincinnati), Mihai Mihaescu (Dept. of Mechanics, KTH, Linné FLOW Centre, Stockholm) (p. 3). Not Shock Lab group work.
- **Source:** AIAA Journal 57(8), 3422–3441 (2019), doi:10.2514/1.J057514 (HAL and OATAO cover pages, p. 1–2).
  - Computations on CNRS Turing, Occigen (GENCI-CINES A0042A07178) and Eos (CALMIP 2018-p1425). Florian Baier (Cincinnati) supplied the experimental data (p. 32).
  - The benchmark tests of the dissipation scheme are in the conference precursor, Gojon, Baier, Gutmark & Mihaescu, AIAA 2017-0002 (p. 6, ref. 29). The round-jet companion is Gojon, Bogey & Mihaescu 2018, AIAA J. 56(7), 2918–2924 (p. 5, ref. 18).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/non-axisymmetric-and-twin-jets/Gojon-EtAl_2019_Antisymmetric-Oscillation-Modes-In-Rectangular-Screeching-Jets.pdf` (35 pp., author's accepted version from HAL/OATAO; local only).
  - **Page refs are PDF pages.** p. 1–2 are the HAL and OATAO covers, the paper runs p. 3–31, and acknowledgements and references are p. 32–35. Journal page numbers are not printed.
  - The text layer garbles every equation and table. Eqs. 1–16, Tables 1–5 and Figs 1–25 were checked against rendered pages.
- **Tags:** rectangular jet, aspect ratio 2, convergent–divergent nozzle, M_d 1.5, over- and underexpanded, heated jet, temperature ratio, implicit LES, artificial dissipation, Jameson–Ducros sensor, grid convergence, FW-H, screech, flapping, diagonal flapping, axis switching, shock-cell length, convection velocity, Mach wave radiation, BBSAN, mixing noise, Fourier mode at the screech frequency, planar vortex sheet, Tam & Norum dispersion relation, neutral acoustic wave modes, guided jet mode, allowable frequency bands, frequency–wavenumber spectra, University of Cincinnati

## Summary
Gojon, Gutmark and Mihaescu run seven implicit LES of the University of Cincinnati AR 2 convergent–divergent rectangular nozzle (M_d = 1.5, h = 12.95 mm). The jets are overexpanded at NPR 3 (M_j 1.36) and underexpanded at NPR 4 (M_j 1.56), at stagnation temperature ratios of 1 to 3 (p. 6–7). The LES reproduces the experimental screech Strouhal number at all six measured conditions to within 0.01 (St = fD_eq/u_j 0.12–0.36). It also reproduces the PIV mean field, the far-field OASPL directivity and the four noise components (screech, BBSAN, mixing noise, Mach waves). But the simulated screech amplitude rises with heating (151 → 177 dB/St) while the measured one falls (p. 18–19, 22). A Fourier transform of the 3-D pressure field at the tone shows flapping along the nozzle diagonal in the cold jet, a mixture at TR 2, and pure minor-axis flapping at TR 2.5 and 3 (p. 21–24). The modelling half tests a hypothesis carried over from round jets: the feedback is closed by upstream neutral acoustic (guided) modes of the equivalent ideally expanded planar jet. A planar vortex-sheet model (Tam & Norum 1992) gives the allowable frequency bands of those modes. The NPR 3 tones lie only in the first antisymmetric band (A1), which the authors take as the explanation for the antisymmetric oscillation. Frequency–wavenumber spectra of the LES pressure show upstream energy inside the jet near the A1 lower limit, on k = −ω/a₀ (p. 24–27).

## Key findings
- **Screech frequency** (Tables 3–4, p. 19, 24):
  - LES St = fD_eq/u_j is 0.36, 0.31, 0.30 and 0.29 at NPR 3 (TR 1, 2, 2.5, 3), and 0.24, 0.18 and 0.12 at NPR 4 (TR 1, 2, 3). The experiments give 0.37, 0.31, —, 0.28 and 0.25, 0.17, 0.11 (Table 4, p. 24).
  - Table 3 and the p. 18 text give the cold NPR 3 tone as 0.37; Table 4 and the Fig. 19 caption give 0.36.
  - St falls with heating because u_j rises faster than f. By my arithmetic the dimensional tone actually rises, from about 6.9 kHz (Jet3TR1) to 9.7 kHz (Jet3TR3).
- **Screech amplitude goes the wrong way.** The near-field tone at (x, y, z) = (0, −2h, −2h) rises from 151 to 177 dB/St over TR 1 → 3. The far-field array of Mora et al. shows the amplitude falling with heating (p. 18–19). The far-field spectra confirm this: the frequency is well reproduced, the amplitude is not (Fig. 18, p. 21–22). The authors do not explain the discrepancy. The conclusion notes only that the LES jet is "initially disturbed" while the experiment is fully turbulent (p. 27).
- **Tam's rectangular screech formula** (eq. 7, p. 18–19), evaluated with the LES mean u_c and M_c of Table 2, gives 0.41, 0.33, 0.30 and 0.28. It matches the hot jets and is about 10 % high for the cold jet (p. 19).
  - My inversion: eq. 7 reproduces the LES tones with u_c/u_j = 0.60, 0.61, 0.65 and 0.67. That is close to the cross-correlation value for the hot jets but well below it (0.80) for the cold jet.
- **Oscillation shape at the tone** (Fig. 19, p. 21–24):
  - *Jet3TR1:* alternating structures along the nozzle diagonal, with 180° phase jumps across both the minor- and the major-axis planes, so the jet flaps along the diagonal. This is consistent with the near-axisymmetric OASPL. It also matches Raman's (1997) AR 4.76 C-D jet, which near the nozzle has 180° shifts in both planes for M_j 1.263–1.41 (p. 21).
  - *Jet3TR2:* minor-axis flapping near the exit and diagonal structures downstream. The phase jumps by 180° in the minor-axis plane and by about 90° in the major-axis plane (p. 21, 24).
  - *Jet3TR2.5, Jet3TR3:* phase jumps only in the minor-axis plane, so the jets flap purely along the minor axis (p. 24).
  - The authors suggest that the frequency jump from TR 1 to the hot cases may correspond to Raman's mode II → mode I jump. Mode II is antisymmetric about the major-axis plane, mode I symmetric (p. 24).
  - The NPR 4 jets are not decomposed.
- **Planar vortex-sheet bands** (§VIII, p. 24–27; Figs 20–21):
  - The symmetric (S1–S4) and antisymmetric (A1–A4) neutral modes have an upstream-propagating segment where dSt/dk < 0. Its upper limit (dSt/dk = 0) is read from the figure. Its lower limit lies on k = −ω/a₀ and has a closed form (eqs. 15–16) (p. 25).
  - S1 starts at zero frequency. Heating (TR 1 → 2 → 3) lowers every band at fixed M_j (Fig. 20, p. 25).
  - Fig. 21 (p. 26) plots the bands against M_j for TR 1 and 2. The four LES tones at TR 1 and 2 are added, with cold data from Panda et al. 1997 (AR 5), Raman 1997 (AR 4.75) and Alkislar et al. 2003 (AR 4), and hot data from Raman & Rice 1994 (AR 9.63, T₀ 545 K). The authors say all of them "lie in the allowable range for the first antisymmetric mode or just below" (p. 26).
  - The authors blame the points below the band on the infinitely thin vortex sheet. Following Tam & Ahuja (1990), they argue that a finite-thickness layer would lower the limits (p. 26).
  - My check with eq. 16 (Data tables): the NPR 3 tones sit 16–24 % above the A1 lower limit and below the S2 lower limit, so only A1 is available to them. Jet4TR1 is 2 % above its limit. Jet4TR2 is 8 % below and Jet4TR3 31 % below (0.077 against 0.111), which puts both in the gap between the S1 and A1 bands. By eye, many of the cold experimental points at M_j ≳ 1.45 in Fig. 21(a) also fall in that gap.
- **Upstream waves inside the jet** (p. 26–27; Figs 22–25, p. 28–31): the authors take space–time Fourier transforms of the LES pressure over z = 0–10h at y = 0.1h, 0.25h and 0.5h. At 0.25h and 0.5h the data are split into symmetric (n = 0) and antisymmetric (n = 1) parts. This is done for the TR 2 and 3 jets at both NPRs.
  - At y = 0.1h there is energy slightly above the S1 and A1 curves. The authors attribute the offset to shock oscillations and to the infinitely thin shear layer. The S1 band weakens with y, following the S1 eigenfunction of Tam & Ahuja. The antisymmetric spectra have strong A1 content (p. 26).
  - Peaks lie on k = −ω/a₀ at St_hj = 0.185, 0.175, 0.115 and 0.077 (Figs 22–25), "very near" the lower limits. The authors conclude that the waves travel upstream inside the jet with phase and group velocity close to a₀. They see this as the reason the oscillation is antisymmetric, and as evidence that the feedback is closed "at least partially" through these waves (p. 26–27).
  - My resolution check: a 10h window gives Δ(kh_j) = 2πh_j/(10h) ≈ 0.6. The free-stream sound line at the TR 2 tone is kh_j = −1.91, so the spectra cannot separate that line from a nearby A1 branch point at −1.62 or from the A1 curve itself.
- **Mean flow and shock cells** (§V.B, p. 13–16):
  - *Comparison with PIV.* The LES agrees well with Cincinnati PIV for TR 1, 2 and 2.5 at NPR 3 (Fig. 8, p. 13–14).
  - *Spreading.* The jet spreads faster in the minor-axis plane, as Hsia et al. (subsonic) and Zaman (supersonic) found (p. 13). For Jet3TR2 the cross-section goes from rectangle (z = h) to ellipse (3h) to circle (9h), then to an ellipse with its major axis along the nozzle minor axis (15h) (Fig. 9, p. 13–14).
  - *Half-velocity width.* In the minor-axis plane it grows from 0.5h to about 1.4h by z = 15h; in the major-axis plane it stays almost constant (Fig. 10, p. 13, 15). In the cold jet the spreading follows the shock cells with oscillations of about 0.1h; at TR 3 it does not (p. 13).
  - *Axis switching.* The switchover distance grows with TR, from 7.5h (TR 1) to 11h (TR 3) (p. 13). That is 4.7–6.9D_eq by my conversion.
  - *First cell.* Tam's (1988) model gives L_model = 1.57h. The LES first cells are 0.99, 0.97, 0.97 and 0.95 L_model for TR 1, 2, 2.5 and 3 (p. 15).
  - *Cell count and shrinkage.* The number of visible cells falls from 10 (TR 1) to 4 (TR 3), but the cell length shrinks linearly in every case (eq. 6), with a mean ΔL/L_s of 5.5 %. For round jets, André et al. (with M 0.05 co-flow) found 3 % and Harper-Bourne & Fisher 6 % (p. 15; Fig. 11, p. 16).
- **Grid convergence and nozzle flow** (§IV, p. 7–10):
  - Refining from 40M to 160M nodes brings the shock-cell length closer to PIV (Fig. 3, p. 8–9).
  - The peak exit turbulence intensity on the minor axis rises from 1.05 % to 1.75 % with refinement, and the 160M boundary layer is turbulent-looking with δ_θ = 0.08h (Fig. 4, p. 8–10).
  - Most of the exit turbulence comes from the internal oblique shocks, which start at the sharp throat corner and cross the boundary layer at z = −h (minor axis) and z = −1.4h (major axis). The first exit oblique shock is attached inside the nozzle, at z = −0.05h (minor) and −0.2h (major) (Fig. 5, p. 10–11).
  - No tripping is used (p. 7).
- **OASPL fields** (Fig. 12, p. 15–17):
  - The upstream screech lobe appears only in the minor-axis plane and grows with TR.
  - At TR 2.5 and 3, cells in the shear-layer amplitude are hydrodynamic–acoustic standing waves, again only in the minor-axis plane.
  - Mach wave radiation is axisymmetric at TR 2 but much stronger in the minor-axis plane at TR 2.5 and 3. The authors attribute this asymmetry to the strong flapping (p. 16).
- **Convection velocity** (p. 16; Table 2; Fig. 13, p. 17):
  - u_c is computed from axial-velocity cross-correlations along the maximum-TKE line in the minor-axis plane. It oscillates with the shock cells.
  - Its mean over z = 1–15h falls from 0.80u_j (TR 1) to 0.64u_j (TR 3). Liu et al. (2016) found the same trend in round underexpanded jets: 0.68 → 0.56u_j for TR 1 → 7 (p. 16).
  - M_c = ⟨u_c/a₀⟩ is 0.94, 1.21, 1.25 and 1.29. Below 1 (cold jet) there are no Mach waves (p. 16).
- **Far-field noise** (FW-H, minor-axis plane, R = 40D_eq; §VI.B, p. 19–22):
  - *OASPL directivity:* "overall, a good agreement" with experiment (Fig. 16, p. 19–20).
  - *Screech:* dominates for θ < 60° from upstream.
  - *Mixing noise:* for θ > 140°, at St ≈ 0.25, in line with Berland et al.'s planar M_j 1.55 LES.
  - *BBSAN:* for 60° < θ < 160°. Its centre frequency follows Harper-Bourne & Fisher (eq. 8) with L_sh = 0.8L_model and N = 1 (Fig. 17, p. 20–21).
  - *Screech harmonic:* near θ = 90° the first harmonic coincides with BBSAN and dominates for TR ≥ 2, as in the experiment (p. 20).
  - *Mach waves:* at θ ≈ 140° for TR ≥ 2. Oertel's model (eq. 9) with M_c = 1.25 gives 143°, about 37° from the downstream axis (p. 20–21).
  - *Low-frequency near-field peak:* a secondary peak at St 0.21 → 0.16 (136 → 144 dB/St) is tentatively attributed to mixing noise, which André saw at 30° from upstream (p. 18–19).
  - *Spectra:* broadband levels and the BBSAN hump match experiment at θ = 60–148°, but the screech amplitude does not (Fig. 18, p. 21–22).
- **Introduction claims** (p. 5): Raman & Rice (1994) first observed that screech in rectangular jets (AR 9.63, convergent) always comes with flapping across the small dimension. The working hypothesis comes from Shen & Tam (2002) and Gojon et al. (2018) for round jets: the loop is closed by upstream neutral acoustic modes of the equivalent ideally expanded jet (p. 5, 24).

## Setup / method
- **Configuration** (p. 6–7; Table 1):
  - *Nozzle:* the University of Cincinnati rectangular C-D nozzle of Mora et al. (2016). AR 2, minor-axis height h = 12.95 mm, exit area A_d = 2h × h, design NPR 3.67 (M_d = 1.5), sharp throat corner (Fig. 1a, p. 8).
  - *Equivalent diameter:* D_eq = √(8/π)h (Nomenclature, p. 4), i.e. 20.67 mm.
  - *Operating points:* NPR 3 (overexpanded) and 4 (underexpanded).
  - *Temperature ratio:* TR is not defined in the text. The Table 1 values (T_j = 214 K at TR 1, NPR 3) reproduce with TR = T₀/T∞ and T∞ = 293 K, by my isentropic check.

  | Case | NPR | M_j | TR | T_j (K) | u_j (m s⁻¹) | Re = u_jD_eq/ν_j |
  |---|---|---|---|---|---|---|
  | Jet3TR1 | 3 | 1.36 | 1 | 214 | 398 | 9.64 × 10⁵ |
  | Jet3TR2 | 3 | 1.36 | 2 | 428 | 563 | 4.00 × 10⁵ |
  | Jet3TR25 | 3 | 1.36 | 2.5 | 535 | 629 | 3.04 × 10⁵ |
  | Jet3TR3 | 3 | 1.36 | 3 | 642 | 689 | 2.48 × 10⁵ |
  | Jet4TR1 | 4 | 1.56 | 1 | 197 | 439 | 1.24 × 10⁶ |
  | Jet4TR2 | 4 | 1.56 | 2 | 394 | 620 | 5.09 × 10⁵ |
  | Jet4TR3 | 4 | 1.56 | 3 | 592 | 760 | 3.14 × 10⁵ |

  > Checked (my arithmetic, γ = 1.4, R = 287, Sutherland viscosity): M_j, T_j, u_j and Re all reproduce to within 1 %. Re falls with TR because ν_j rises.
- **Experiments used for comparison** (Mora, Baier, Gutmark & Kailasanath 2016, AIAA 2016-1884; p. 6–7, 18):
  - Two campaigns at different operating points. PIV in the minor- and major-axis planes covered NPR 3 at TR 1, 2 and 2.5. Far-field microphones, in an array along the minor-axis plane, covered TR 1, 2 and 3 at NPR 3 and 4.
  - No diagnostic details are given (PIV resolution, sample counts, microphone radius).
  - The reference's title mentions a nozzle "exhausting over a flat surface"; the paper does not say whether that surface was present for these data.
- **Solver** (§II, p. 5–6): the compressible finite-volume solver of ref. [21] (Eliasson's EDGE), as used by Semlitsch et al., here on structured meshes.
  - Explicit four-stage Runge–Kutta in time, second-order central differences in space.
  - An artificial dissipation is added to the inviscid fluxes at the end of each time step (eqs. 1–4). It removes grid-to-grid and Gibbs oscillations and acts as the subgrid model (implicit LES, like explicit filtering).
  - It blends Jameson–Schmidt–Turkel 2nd- and 4th-order terms with a Ducros-type dilatation/vorticity sensor that separates shocks from turbulence. Constants (C₂, C₄) = (1.5, 0.04), set from acoustic-pulse, shock-propagation and shock–vortex tests in ref. 29 (p. 6).
- **Boundary conditions** (p. 7):
  - *Nozzle inlet:* total pressure, total temperature and flow direction. Velocity and static temperature come from isentropic relations with extrapolated static pressure, imposed strongly.
  - *Outer boundaries:* weak characteristic conditions targeting P = 101,325 Pa, T = 293 K and u = 0 (no co-flow), with sponge zones made by grid stretching.
  - *Nozzle walls:* adiabatic no-slip. No tripping: the authors rely on the throat corner and the internal shock–boundary-layer interactions to trip the flow.
- **Meshes** (§IV.A, p. 7–8): three structured 64-block meshes of 40M, 80M and 160M nodes.

  | Quantity | 40M | 80M | 160M |
  |---|---|---|---|
  | Cross-plane cell near the jet axis | 0.024h | 0.016h | 0.01h |
  | Acoustic cut-off St (11 cells per wavelength) | 1.6 | 2.4 | 3 |
  | Maximum acoustic cell | 0.077h | 0.051h | 0.041h |
  | Axial cell at z = 10h | 0.055h | — | 0.03h |
  | Maximum cell aspect ratio (physical domain) | 64 | — | 34 |

  - All meshes: y⁺ ≈ 1 and x⁺ < 10 in the second half of the diverging section; at the exit, 0.0012h wall-normal and 0.012h wall-parallel; stretching below 5 %.
  - The 160M mesh is used for all production runs (p. 10).

  > Checked: λ/11 at St 3 with the cold-jet u_j gives 0.042h (printed 0.041h). The acoustic mesh is sized on the cold jet. The same 0.041h cell resolves only St ≈ 2.2, 1.9 and 1.8 for TR 2, 2.5 and 3 at NPR 3, and 1.6 for Jet4TR3 (my arithmetic: St_max = a₀D_eq/(11Δu_j)).
- **Time integration and storage** (p. 10, 19, 21):
  - Δt = 0.00125D_eq/u_j; 400,000 steps after the transient, i.e. 500D_eq/u_j per case. That is about 180 screech cycles for Jet3TR1 and 60 for Jet4TR3 (my arithmetic).
  - Pressure is stored every 100 steps (Δt_s = 0.125D_eq/u_j, Nyquist St = 4) on a 6M-point subset.
- **FW-H** (p. 19):
  - Stationary permeable surface (Yao et al. 2014 formulation): an ellipsoid enclosing the nozzle and jet, about 1M nodes, open-ended with no outflow disks. The authors argue that a "loose" surface far from the jet avoids pseudo-sound (Fig. 15).
  - The surface resolves St ≈ 6 and is sampled at St ≈ 10. Observers sit at 40D_eq in the minor-axis plane, referenced to the nozzle-exit centre.
- **Analyses and their data needs:**
  - *Mean, RMS and OASPL fields, half-velocity widths, shock-cell lengths from centreline mean profiles* (p. 13–16): statistics only, no time resolution needed.
  - *Convection velocity* (p. 16): cross-correlation of u_z between 70 points spaced 0.25h along the maximum-TKE line in the minor-axis plane. The time lags to the two neighbours of each point are fitted with a line, and its slope gives the local u_c.
    - Needs time-resolved data (LES here; TR-PIV or two-point probes in experiment).
    - It is broadband, not the phase speed at the screech frequency.
  - *Spectra:* near-field probe at (0, −2h, −2h) and far-field FW-H, in dB/St. The window, block length and averaging are not stated.
  - *"Fourier decomposition"* (p. 21): a temporal FFT at every point of the 6M subset, keeping the amplitude (sign-coloured isosurfaces, presumably the real part) and the phase at f_s.
    - It is a single-block DFT, equivalent to rank-1 SPOD with one block. It needs time-resolved data and assumes one steady tone over the whole 500D_eq/u_j record. No window is stated.
  - *Frequency–wavenumber spectra* (p. 26): a space–time FFT of p′ over z = 0–10h at fixed y. At y = 0.25h and 0.5h the field is split into symmetric (n = 0) and antisymmetric (n = 1) parts, presumably about the major-axis plane y = 0 (not stated).
    - Plotted against St_hj and kh_j, with the vortex-sheet curves overlaid (Figs 22–25).
    - Needs time-resolved data, and its wavenumber resolution is only about 0.6 in kh_j.
- **Modelling side.**
  - *Shock cells:* Tam's (1988) vortex-sheet first-cell length for rectangular jets (eq. 5). The fully expanded height and width use the AR 2 split h_j/h = [(A_j/A_d) − 1]·2/3 + 1 and b_j/2h = [(A_j/A_d) − 1]·1/3 + 1 (p. 13, 15). Harper-Bourne & Fisher's linear shrinkage is eq. 6.
  - *Screech frequency:* Tam's (1988) rectangular formula (eq. 7), i.e. f = u_c/[L_model(1 + M_c)], evaluated with the LES u_c.
  - *BBSAN:* Harper-Bourne & Fisher centre frequency (eq. 8) with the length scale L_sh = 0.8L_model, chosen by the authors because the cell length varies (p. 20).
  - *Mach waves:* Oertel angle (eq. 9).
  - *Wave model* (§VIII, p. 24–25): Tam & Norum's (1992) neutral-mode dispersion relations for an ideally expanded planar jet.
    - Assumptions: inviscid, linear, locally parallel, top-hat profile, infinitely thin shear layer, no shocks, infinite span. Only h_j enters, so AR and b_j are ignored.
    - Density and sound-speed ratios come from TR.
    - Neutral (real k and ω) solutions are traced for the symmetric and antisymmetric families. The upstream-propagating segment (dSt/dk < 0) bounds the allowable band; its lower limit is the analytic eq. 15/16 and its upper limit is read from the figure.
    - No stability growth rates, finite-thickness profiles or resonance (phase) condition are computed. The model gives bands, not a predicted frequency.

## Key equations
All transcribed from rendered pages (PDF p. 6, 13, 15, 18, 20, 24, 25).

- **Artificial dissipation** between nodes 0 and 1 (eq. 1, p. 6): $D_{01}=\left[\epsilon^{(2)}_{01}(U_1-U_0)-\epsilon^{(4)}_{01}(\Delta U_1-\Delta U_0)\right]\phi_{01}r_{01}$, with spectral radius $r_{01}=(|u_{i,01}n_{i,01}|+c_{01})S_{01}$ (eq. 2) and stretching function $\phi_{01}=4\phi_0\phi_1/(\phi_0+\phi_1)$, $\phi_0=(r_0/4r_{01})^{0.3}$ (eq. 3).
- **Dissipation coefficients** (eq. 4, p. 6): $\epsilon^{(2)}_{01}=\max(\epsilon^{(2)}_0,\epsilon^{(2)}_1)$; $\epsilon^{(4)}_{01}=\left(\tfrac12+\tfrac12\min(\max(\Phi_0,\Phi_1),\max(\Theta_0,\Theta_1))\right)\max(0,C_4-\epsilon^{(2)}_{01})s_4$, with $\epsilon^{(2)}_0=C_2\Phi_0\dfrac{|\sum p_k-p_0|}{\sum(p_k+p_0)}s_2$, $\Phi_0=\dfrac{(\nabla\cdot u_0)^2}{(\nabla\cdot u_0)^2+\omega^2}$, $\Theta_0=\dfrac{\omega^2}{(\nabla\cdot u_0)^2+\omega^2}$, $s_2=3(N_0+N_1)/N_0N_1$, $s_4=s_2^2/4$; (C₂, C₄) = (1.5, 0.04). Φ₀ ≈ 0 in weakly compressible regions and ≈ 1 at shocks.
- **First shock cell, rectangular jet** (eq. 5, p. 13): $L_{model}=2(M_j^2-1)^{1/2}\dfrac{h_j}{(1+h_j^2/b_j^2)^{1/2}}$, with $\dfrac{h_j}{h}=\left[\dfrac{A_j}{A_d}-1\right]\dfrac23+1$, $\dfrac{b_j}{2h}=\left[\dfrac{A_j}{A_d}-1\right]\dfrac13+1$, $\left(\dfrac{A_j}{A_d}\right)^2=\dfrac{M_d^2}{M_j^2}\left[\dfrac{1+\frac{\gamma-1}{2}M_j^2}{1+\frac{\gamma-1}{2}M_d^2}\right]^{(\gamma+1)/(\gamma-1)}$ (p. 13, 15).
  > Checked: M_j 1.358 gives A_j/A_d = 0.929, h_j/h = 0.953, b_j/h = 1.953 and L_model = 1.573h (printed 1.57h). For NPR 4 (not in the paper): A_j/A_d = 1.036, h_j/h = 1.024, L_model = 2.19h.
- **Linear shock-cell shrinkage** (eq. 6, p. 15): $L_n=L_s-(n-1)\Delta L$; ΔL/L_s = 5.5 % here.
- **Tam's rectangular screech Strouhal number** (eq. 7, p. 18):
  $$St_{Tam}=\dfrac{\dfrac{D_{eq}\,u_c/u_j}{2h(1+u_c/a_0)(M_j^2-1)^{1/2}}\left((h_j/b_j)^2+1\right)^{1/2}}{\left(\left(\dfrac{1+\frac{\gamma-1}{2}M_j^2}{1+\frac{\gamma-1}{2}M_d^2}\right)^{(\gamma+1)/(2(\gamma-1))}\dfrac{M_d}{M_j}-1\right)\dfrac23+1}$$
  The denominator is h_j/h, so this is $St=\dfrac{D_{eq}}{L_{model}}\dfrac{u_c/u_j}{1+u_c/a_0}$, i.e. Powell/Tam f = u_c/[L_model(1 + M_c)] (my simplification).
  > Checked: 0.421, 0.337, 0.307 and 0.284 from Table 2, against 0.41, 0.33, 0.30 and 0.28 printed.
- **BBSAN centre frequency** (eq. 8, p. 20): $f_{shock}=\dfrac{N u_c}{L_{sh}(1+M_c\cos\theta)}$, θ from the upstream direction, L_sh = 0.8L_model, N = 1.
- **Mach wave angle** (eq. 9, p. 20): $\theta=180°-\arccos(1/M_c)$, giving 143° for M_c = 1.25 (p. 21). The text calls the angle ϕ "with respect to the jet axis", but the equation uses θ (from upstream).
- **Planar vortex-sheet neutral modes** (Tam & Norum 1992; eqs. 10–11, p. 24), symmetric (−1/tan) and antisymmetric (+tan):
  $$\frac{\left[(\omega-u_jk)^2/a_j^2-k^2\right]^{1/2}\rho_0\,\omega^2}{(k^2-\omega^2/a_0^2)^{1/2}\rho_j(\omega-u_jk)^2}\mp\left\{\tan\left(\left[\frac{(\omega-u_jk)^2}{a_j^2}-k^2\right]^{1/2}\frac{h_j}{2}\right)\right\}^{\mp1}=0$$
  i.e. eq. 10 is "… − 1/tan{…} = 0" and eq. 11 "… + tan{…} = 0". Only h_j enters, so St_hj = fh_j/u_j = St × h_j/D_eq (p. 24).
- **Lower limits of the upstream bands** (eqs. 12–16, p. 25): on the sonic line $k=-\omega/a_0$ (eq. 12) the first term diverges, so the tangent argument must satisfy eq. 13 (symmetric) or eq. 14 (antisymmetric). This gives
  $$St_{hj}=\frac{n-1}{u_j\left((1+u_j/a_0)^2/a_j^2-1/a_0^2\right)^{1/2}}\ \text{(symmetric, eq. 15)},\qquad St_{hj}=\frac{n-\tfrac12}{u_j\left((1+u_j/a_0)^2/a_j^2-1/a_0^2\right)^{1/2}}\ \text{(antisymmetric, eq. 16)}$$
  > Eqs. 13–14 are printed with right-hand sides "(n − 1)/π" and "(n − 1/2)/π" and with h/2. For eqs. 15–16 to follow, they must read (n − 1)π and (n − 1/2)π with h_j/2 (my derivation). Eqs. 15–16 as printed are consistent with that.
  > Cross-check: with a₀ = 1, u_j = M and a_j² = T, eq. 16 becomes $(n-\frac12)/(M\sqrt{(1+M)^2/T-1})$. That is the antisymmetric planar branch point of [Nogueira 2024](nogueira-2024-guided-jet-waves.md) (eqs. 4.7–4.8 there, with its n = this paper's n − 1). For M = 1.2 and T = 1 both give 0.21.

## Data tables
**Convection velocity, minor-axis plane, NPR 3** (Table 2, p. 16):

| Case | u_j (m s⁻¹) | ⟨u_c/u_j⟩ | M_c = ⟨u_c/a₀⟩ |
|---|---|---|---|
| Jet3TR1 | 398 | 0.80 | 0.94 |
| Jet3TR2 | 563 | 0.73 | 1.21 |
| Jet3TR25 | 629 | 0.68 | 1.25 |
| Jet3TR3 | 689 | 0.64 | 1.29 |

**Near-field tones at (0, −2h, −2h), NPR 3** (Table 3, p. 19):

| Case | St_low | dB_low (dB/St) | St_screech | dB_screech (dB/St) | St exp. | St Tam (eq. 7) |
|---|---|---|---|---|---|---|
| Jet3TR1 | 0.21 | 136 | 0.37 | 151 | 0.37 | 0.41 |
| Jet3TR2 | 0.18 | 141 | 0.31 | 160 | 0.31 | 0.33 |
| Jet3TR25 | 0.17 | 140 | 0.30 | 174 | — | 0.30 |
| Jet3TR3 | 0.16 | 144 | 0.29 | 177 | 0.28 | 0.28 |

**Screech Strouhal numbers, with band limits added** (Table 4, p. 24; the last three columns are my arithmetic from eqs. 15–16; A1 maxima read from Fig. 20 for NPR 3):

| Case | St (LES) | St (exp.) | St_hj (LES) | A1 lower limit | A1 maximum (Fig. 20) | S2 lower limit |
|---|---|---|---|---|---|---|
| Jet3TR1 | 0.36 | 0.37 | 0.215 | 0.186 | ≈ 0.29 | 0.371 |
| Jet3TR2 | 0.31 | 0.31 | 0.185 | 0.157 | ≈ 0.245 | 0.314 |
| Jet3TR25 | 0.30 | — | 0.18 | 0.148 | — | 0.296 |
| Jet3TR3 | 0.29 | 0.28 | 0.175 | 0.141 | ≈ 0.22 | 0.281 |
| Jet4TR1 | 0.24 | 0.25 | 0.155 | 0.151 | — | 0.302 |
| Jet4TR2 | 0.18 | 0.17 | 0.115 | 0.125 | — | 0.251 |
| Jet4TR3 | 0.12 | 0.11 | 0.077 | 0.111 | — | 0.222 |

> Checked: St_hj = St × h_j/D_eq with h_j/D_eq = 0.597 (NPR 3) and 0.642 (NPR 4) reproduces the printed column. The lower limits match the × marks of Fig. 20 (0.19, 0.16, 0.15 for A1 at NPR 3) and of Figs 24–25 (≈ 0.125, ≈ 0.11) by eye. S1 maxima read from Figs 20, 24 and 25 are about 0.12, 0.10 and 0.09 (NPR 3, TR 1–3) and 0.08 and 0.07 (NPR 4, TR 2–3), so Jet4TR2 and Jet4TR3 lie between S1 and A1.

**Other rectangular screech experiments in Fig. 21** (Table 5, p. 26):

| Reference | Nozzle | AR | M_d | T₀ |
|---|---|---|---|---|
| Panda et al. 1997 | convergent | 5 | 1 | 294 K |
| Raman 1997 | C-D | 4.75 | 1.4 | 300 K |
| Alkislar et al. 2003 | C-D | 4 | 1.44 | 336 K |
| Raman & Rice 1994 | convergent | 9.63 | 1 | 545 K |

**First shock cell** (p. 15): L_model = 1.57h. L_s/L_model = 0.99, 0.97, 0.97 and 0.95 (TR 1, 2, 2.5, 3), i.e. L_s = 1.55h, 1.52h, 1.52h and 1.49h (my multiplication). Visible cells: 10 (TR 1) to 4 (TR 3). ΔL/L_s = 5.5 %.

## Figures worth remembering
- **Fig. 4 (p. 10):** exit mean velocity and turbulence-intensity profiles for the three grids. They show how weakly turbulent the LES exit boundary layer is (peak 1.75 %).
- **Fig. 5 (p. 11):** turbulence intensity inside the nozzle. The diamond of internal oblique shocks from the throat corner raises the boundary-layer turbulence where it crosses the walls.
- **Fig. 7 (p. 12):** density isosurfaces with near-field pressure for TR 1, 2 and 3, with screech, BBSAN, mixing noise and (hot) Mach waves labelled. The upstream screech waves are antisymmetric in the minor-axis plane.
- **Fig. 8 (p. 14):** LES mean u_z with the PIV windows inset, minor- and major-axis planes, all four NPR 3 jets.
- **Fig. 10 (p. 15):** half-velocity width against z in both planes, showing the axis switch and the shock-cell-locked spreading of the cold jet.
- **Fig. 11 (p. 16):** L_s/L_model against cell number for the four TRs, with the André and Harper-Bourne & Fisher lines.
- **Fig. 12 (p. 17):** OASPL maps in both planes. The upstream screech lobe and standing-wave cells appear only in the minor-axis plane, and the hot jets show asymmetric Mach waves.
- **Fig. 13 (p. 17):** u_c/u_j and M_c along the shear layer, oscillating with the shock cells.
- **Fig. 16 (p. 20):** far-field OASPL directivity at 40D_eq against experiment. By figure reading: the cold LES is about 3–4 dB above experiment at 60–110°, the TR 2 case matches closely, and the TR 3 LES peak (≈ 138.5 dB near 143°) sits about 10° downstream of the experimental peak.
- **Fig. 17 (p. 21):** far-field SPL(St, θ) maps with the BBSAN eq. 8 curve. Screech, mixing, BBSAN and Mach-wave regions are visible.
- **Fig. 19 (p. 23):** the key mode-shape figure. Real-part isosurfaces and phase in both planes at f_s: diagonal flapping (TR 1), mixed (TR 2), minor-axis flapping (TR 2.5, 3). The caption labels the TR 3 panel "(a)".
- **Fig. 20 (p. 25):** neutral-mode dispersion curves S1–S4 and A1–A4 for TR 1, 2 and 3 at M_j 1.36, with the sonic line and the lower-limit marks.
- **Fig. 21 (p. 26):** the key model–data figure. Allowable symmetric (light grey) and antisymmetric (dark grey) bands against M_j for TR 1 and 2, with four experimental datasets and the LES.
- **Figs 22–25 (p. 28–31):** frequency–wavenumber spectra of p′ (TR 2 and 3, NPR 3 and 4), split by symmetry, with the dispersion curves, the sonic line k = −ω/a₀ and the KH line k = ω/u_c overlaid.

## Notation
- h: nozzle height (minor dimension), 12.95 mm; b: depth (major dimension), 2h; A_d = 2h × h; D_eq = √(8/π)h, the area-equivalent diameter.
- h_j, b_j, A_j: dimensions and area of the ideally expanded equivalent rectangular jet.
- x: coordinate along the major axis; y: along the minor axis; z: jet axis.
  - The *minor-axis plane* is x = 0, containing y and z. The *major-axis plane* is y = 0.
  - "Flapping along the minor axis" is the motion across the small dimension, antisymmetric in y (AS in the single-jet D2 convention of the [non-axisymmetric topic page](../topics/non-axisymmetric-and-twin-jets.md)). Diagonal flapping is antisymmetric in both x and y (AA) (my mapping).
- M_j, u_j, T_j, a_j, ρ_j, ν_j: ideally expanded Mach number, velocity, temperature, sound speed, density, kinematic viscosity. M_d = 1.5 design Mach number. a₀, ρ₀: ambient sound speed and density.
- NPR = p₀/p∞; TR: "temperature ratio", equal to T₀/T∞ by my check of Table 1.
- St = fD_eq/u_j; St_hj = fh_j/u_j. Re = u_jD_eq/ν_j.
- u_c: convection velocity from cross-correlation; M_c = u_c/a₀. This is the eddy Mach number relative to the ambient, *not* the Papamoschou–Roshko convective Mach number.
- L_s: first shock-cell length; L_n: n-th cell; ΔL: cell-to-cell decrement; L_model: Tam's first-cell length; L_sh: BBSAN length scale.
- θ: observer angle from the upstream direction (20° most upstream, 160° most downstream); N: BBSAN mode number.
- S1–S4, A1–A4: symmetric and antisymmetric neutral acoustic wave modes of the planar vortex sheet. The A1 label here is unrelated to the round-jet A1 screech stage. n: mode number in eqs. 13–16 (n = 0 and 1 also label the symmetric and antisymmetric parts in Figs 22–25).

## Relevance to this project
This paper bears on the non-axisymmetric resonance thread in CLAUDE.md (rectangular jets, flapping, feedback). It is the first heated rectangular screech study in the library and the single-jet counterpart of the twin-jet LES of [Jeun 2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), which uses the same Cincinnati AR 2, M_d 1.5 nozzle family at NPR 3. The single cold jet's St 0.36–0.37 is essentially the twin jets' 0.37–0.373, so coupling barely moves the tone. [Nogueira 2024](nogueira-2024-guided-jet-waves.md) (p. 23) cites this paper as agreeing with its planar branch points, and the formulas are indeed identical (Key equations).

**How it fits the guided-mode picture**
- **Same band test, planar geometry.** The paper applies to rectangular jets the band test that [Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) (p. 9–11) and [Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md) used for round A1/A2, and that [Towne 2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md) introduced for subsonic jets. The "neutral acoustic wave modes" are the guided-jet mode family.
  - Its symmetry argument is the planar version of the one [Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) makes with Floquet-in-azimuth LSA for an AR 2 ellipse. [Nogueira 2021, twin jets](nogueira-2021-twin-jet-coupling-spatial-lsa.md) uses the same logic for twin round jets: the guided-mode band, not KH growth, selects the symmetry.
  - Planar vortex sheets are also what [Stavropoulos 2024](stavropoulos-2024-upstream-waves-merging-twin-jets.md) uses for merging twin jets.
- **Weaker evidence than in the PIV work.** The paper shows no upstream-wave eigenfunction comparison, and its wavenumber resolution (Δkh_j ≈ 0.6) cannot separate free-stream sound from a near-cut-on A1 wave. So it supports guided-mode closure by band membership only.
- **The band test fails for some cases** (my computation). It works cleanly for NPR 3, where the tones lie only in A1. It fails for the hot underexpanded jets (Jet4TR2 8 % below, Jet4TR3 31 % below the A1 lower limit) and, by eye, for the cold experiments above M_j ≈ 1.45 in Fig. 21(a).
  - The authors' remedy, a finite-thickness layer lowering the bands, agrees with the round-jet result that thickening the shear layer lowers the guided-mode band while cooling raises it ([Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md), p. 15–17).
  - It is still untested here. The hot jets, whose bands sit lowest, are where it fails worst.
  - A finite-thickness or LES-mean-flow planar (or Floquet-in-azimuth) model is the obvious next step.
- **The planar model sees only the minor dimension.** It ignores b_j, so it cannot tell minor-axis flapping (AS) from diagonal flapping (AA): both are antisymmetric in y. The cold-to-hot change from diagonal to minor-axis flapping (Fig. 19) is therefore outside the model. A 3-D (spanwise-wavenumber) model is needed, cf. the oblique-wave bands of [Nogueira 2024](nogueira-2024-guided-jet-waves.md) (p. 28–30). For AR 2 the infinite-span idealisation is severe.

**Is the mixed or diagonal flapping steady?**
- The Fourier mode is one DFT over 500D_eq/u_j (60–180 cycles), so it cannot say whether Jet3TR2's mixed pattern (180° and 90° phase jumps) is a steady superposition, two symmetries alternating, or a precessing flapping plane.
- In the twin version of this geometry, [Jeun 2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) (p. 9–10) found AA plateaus broken by AA/AS bursts. In a heated round-jet LES, [Nogueira 2026](nogueira-2026-flapping-motion-screeching-round-jets.md) (p. 20–24) found the flapping plane precessing over about 100 cycles.
- My reading: the "diagonal" mode may be a time-average of competing AS and AA states.

**Comparison with other AR ≈ 2 data** (my comparison, different nozzles):
- *OSU AR 2, M_d 1.5 twin jets* ([Esfahani 2021, coupling modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md), Fig. 6): St 0.40/0.36 at M_j 1.35/1.40 and 0.27 at 1.55, against 0.36–0.37 at 1.36 and 0.24–0.25 at 1.56 here.
- *The group's AR 2 convergent rectangular nozzle* ([Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md), p. 11–17): at NPR 4.0 it has flapping at St_De 0.23 and bi-axial flapping at 0.27, against 0.24 here. Its shock-cell axis switch at x/D_e ≈ 6.5 compares with the 4.7–6.9D_eq velocity-width switchover here, a different definition.
- *Shock cells and Tam's formula.* L_s/L_model = 0.95–0.99 supports [Tam 1988](tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets.md)'s spacing at AR 2, which that note says could not be tested below AR 4 (p. 12). The screech formula needs u_c ≈ 0.60–0.67u_j to hit the LES tones (my inversion). That sits between [Raman 1998](raman-1998-supersonic-jet-screech-review.md)'s 0.55u_j for rectangular data (p. 59) and Tam's 0.7u_j, and well below the broadband cross-correlation u_c of the cold jet (0.80).
- *Convection velocity.* Broadband cross-correlation and screech-frequency phase speed are different quantities; compare the 0.52–0.59U_j of [Mercier 2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md) (Table 5, p. 222).

**Screech amplitude and heating**
- The LES has screech growing by 26 dB/St from TR 1 to 3. The experiment and the literature say heating weakens screech ([Tam 1995](tam-1995-supersonic-jet-noise.md), p. 39–40).
- Candidate causes (my speculation): the weakly turbulent, untripped exit boundary layer (1.75 % peak, δ_θ = 0.08h) and the lower Re of the hot cases (2.5 × 10⁵), both of which would raise receptivity; and an acoustic mesh sized on the cold jet. The paper gives no test.
- This matters for any LES used to map resonance limits. Frequency is robust; amplitude, and so loop gain and staging limits, may not be.
- On the screech page's open question about whether the guided-mode band "misses hot, highly overexpanded plumes": heating lowers the bands here (Fig. 20), and the hot underexpanded tones fall below A1 while the overexpanded hot tones stay inside it.

**Methods and data for the lab workflow (CLAUDE.md)**
- **No time resolution needed:**
  - Tam's L_model and the Harper-Bourne & Fisher shrinkage check (mean schlieren or PIV);
  - half-velocity-width axis switching (PIV mean);
  - the vortex-sheet band test itself, which needs only the tone frequency, M_j and TR. Eq. 16 is a closed-form overlay for the group's St–NPR maps of AR 2 rectangular jets.
  - Rough estimate (mine; convergent nozzle, Tam's AR 2 h_j split, cold): the A1 lower limit at NPR 4 is St_De ≈ 0.21. Mazharmanesh's 0.23 and 0.27 flapping tones would then sit in A1. Their 0.30 varicose tone would sit above S1 and below S2 (≈ 0.42), i.e. in no symmetric band, which would be a test of the planar model. This needs the full dispersion solve.
- **PIV (non-time-resolved).** The f–k spectra here need time-resolved data. The PIV route to the same result is a symmetry-imposed POD pair split by the sign of k_x ([Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md)). It also gives the eigenfunction match that this paper lacks.
- **Time-resolved** (TR schlieren, microphones, LES):
  - the single-frequency DFT mode and the f–k spectra;
  - the cross-correlation u_c;
  - near-field spectra. Note that a 10h window limits k resolution; zero-padding does not add information.
- **SPOD → reconstruction → HPOD.**
  - Splitting the field into D2 components before SPOD ([Yeung 2022](yeung-2022-3d-spod-twin-rectangular-jet.md)) would give separate AS and AA spectra at f_s.
  - Reconstructing each component's tone band ([Nekkanti 2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)) and tracking instantaneous amplitude per symmetry with HPOD ([Raiola 2025](raiola-2025-hilbert-pod.md)) would show whether the cold "diagonal" mode is steady AA or alternating AS/AA. The same test applies to the group's AR 2 multi-view schlieren.
  - None of this is in the paper, which assumes one steady tone throughout.

**Modelling side and the PyFR staging LES**
- The PyFR runs (`Simulations/PyFR_Staging_Continuation/`) are round and convergent, so what transfers is method, not numbers.
  - The f–k spectra at several radii, with the guided-mode lower limit overlaid, are a direct template for the LES output. The round-jet analogue of eq. 16 is the J₀′ = 0 branch point ([Nogueira 2024](nogueira-2024-guided-jet-waves.md), p. 30).
  - The paper's convergence study also transfers: a shock-cell length against PIV, exit turbulence and an acoustic cells-per-wavelength criterion. The 11-cells-per-λ figure is specific to second-order FV, and high-order FR needs fewer points per wavelength. Size the acoustic mesh on the hottest, fastest case.
- The amplitude failure is the main caution. Untripped exit boundary layers can get the tone right and its strength wrong, so staging limits from the continuation driver should be checked for sensitivity to the nozzle boundary layer.
- 500D_eq/u_j is enough for frequency and mode shape. It is far too short for switching statistics.

**Rocket noise**
- Heated jets at TR up to 3 are still far below rocket conditions, but the noise-component bookkeeping transfers ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)):
  - Mach waves appear once M_c = u_c/a₀ exceeds 1 (TR ≥ 2), at 140° here against 143° from Oertel, i.e. about 37° from the downstream axis.
  - u_c/u_j falls with heating.
  - The flapping jets radiate Mach waves much more strongly in the minor-axis plane. Non-axisymmetric exhausts can therefore have azimuth-dependent Mach-wave directivity, which axisymmetric SP-8072-type source models ignore (my inference).
- The BBSAN fit needs an ad hoc L_sh = 0.8L_model, and the quoted upstream limits do not reproduce (Items to verify). Treat its "good agreement" as qualitative; compare [Wong 2021](wong-2021-wavepacket-modelling-bbsan.md) for a quantitative BBSAN model.

**Items to verify against the PDF**
1. Jet3TR1 screech St: 0.37 in Table 3 and the p. 18 text ("from St = 0.37"), but 0.36 in Table 4, the Fig. 19 caption and p. 18 ("between St = 0.29 and St = 0.36").
2. Eqs. 13–14 (p. 25) are printed with "/π" and h/2. They must be ×π and h_j/2 for eqs. 15–16 to follow (my derivation).
3. BBSAN upstream limits St 0.50, 0.48, 0.45 and 0.44 (p. 20). Eq. 8 with L_sh = 0.8 × 1.57h and the Table 2 values gives 0.53, 0.42, 0.38 and 0.36 at θ = 0 (my arithmetic). What did the authors use?
4. "Very near the lower limits" (p. 26–27) for Jet4TR2 (0.115) and Jet4TR3 (0.077). My eq. 16 gives 0.125 and 0.111. Check the × marks in Figs 24–25.
5. Number of shock cells: 10 for TR 1 in the text (p. 15), but Fig. 11 plots 9.
6. δ_θ = 0.08h at the exit (p. 8): about 1 mm, thick for a momentum thickness. Is it a boundary-layer thickness?
7. Mean u_c is averaged "between z = 1 and z = 15" (p. 16). Units are presumably h.
8. The plane of the symmetric/antisymmetric split for Figs 22–25 is not stated. Panel (a) at y = 0.1h appears to be unsplit, although the p. 26 text implies splits at all three y.
9. The text uses ϕ (angle from the jet axis) for eq. 9, but θ (from upstream) appears in the equation (p. 20).
10. The Fig. 19 caption labels the TR 3 panel "(a)" (p. 23).
11. TR is never defined. T₀/T∞ with T∞ = 293 K reproduces Table 1 (my check).
12. Values read from figures: A1 and S1 maxima (Figs 20, 24, 25), OASPL differences (Fig. 16), and the scatter of experimental points below the A1 band (Fig. 21a).
13. Whether the Mora et al. (2016) data were taken with the flat surface of that paper's title present (p. 6–7).
14. The "jump" in St between TR 1 and the hot jets (p. 24) rests on four TR points, and Tam's formula reproduces a smooth decline. Is there evidence of a discrete jump?

**Candidates for `/add-paper`:**
- Gojon, Bogey & Mihaescu 2018 (AIAA J. 56(7), round-jet oscillation modes, same method);
- Shen & Tam 2002 (AIAA J. 40(1)); Tam & Norum 1992 (AIAA J. 30(2), planar dispersion relations); Tam & Hu 1989 (JFM 201); Tam & Ahuja 1990 (JFM 214);
- Raman & Rice 1994 (Phys. Fluids 6); Raman 1997 (JFM 330, spanwise oblique shock cells; modes I/II); Alkislar et al. 2003 (JFM 489, stereo PIV of a screeching rectangular jet); Panda, Raman & Zaman 1997 (AIAA 97-1623);
- Mora, Baier, Gutmark & Kailasanath 2016 (AIAA 2016-1884, the experiment); Gojon, Baier, Gutmark & Mihaescu 2017 (AIAA 2017-0002, conference precursor);
- Berland, Bogey & Bailly 2007 (Phys. Fluids 19, planar screech LES); Bogey & Gojon 2017 (JFM 823); Gojon, Bogey & Marsden 2016 (JFM 808);
- Liu et al. 2016 (AIAA 2016-2937, temperature effects); Zaman 1996 (JFM 316, axis switching).
