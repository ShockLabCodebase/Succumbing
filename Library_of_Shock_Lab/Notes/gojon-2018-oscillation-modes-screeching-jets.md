---
key: "gojon-2018-oscillation-modes-screeching-jets"
title: "Oscillation Modes in Screeching Jets"
authors: ["Gojon, Romain", "Bogey, Christophe", "Mihaescu, Mihai"]
year: 2018
type: "article"
venue: "AIAA J. 56(7), 2918–2924"
bib: {"journal": "AIAA Journal", "volume": "56", "number": "7", "pages": "2918--2924", "note": "Technical Note"}
doi: "10.2514/1.J056936"
arxiv: ""
pdf: "screech/Gojon-EtAl_2018_Oscillation-Modes-In-Screeching-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "LES with the Bogey in-house high-order cylindrical-coordinate solver (LMFA / KTH; CINES-GENCI and SNIC PDC); experimental tones quoted from Powell et al. 1992 and Ponton & Seiner 1992"
data: ["LES", "microphones-near"]
methods: ["PSD", "wavenumber-filtering", "symmetry-decomposition", "vortex-sheet", "resonance-model", "empirical-model"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "staging", "guided-jet-mode", "helical", "multimodal", "standing-waves", "shock-cells"]
params: {"M_j": "1.56 (LES); 1–2 (band maps)", "NPR": "4.03 (LES)", "M_e": "1 (straight pipe nozzle)", "TR": "1 (T_r/T_0)", "D": "2 mm (D_j = 2.2 mm)", "t/D": "0.05 (lip 0.1r₀)", "Re": "6×10⁴ (u_j D_j/ν_j)", "St": "0.28, 0.305 (helical C), 0.38 (axisymmetric u), f D_j/u_j", "u_c/u_j": "0.75 (broadband, r = r₀)", "grid": "400M points"}
topics: ["screech", "screech-staging-and-mode-switching", "linear-models", "screech-frequency-and-global-modes", "simulation-methods"]
related: ["edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "tam-1989-three-families-instability-waves-high-speed-jets", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "nogueira-2024-guided-jet-waves", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance", "tam-1986-bbsan-screech-relationship", "panda-1999-experimental-investigation-screech-noise-generation", "raman-1998-supersonic-jet-screech-review"]
cites: ["bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "panda-1999-experimental-investigation-screech-noise-generation", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance", "powell-1992-oscillation-modes-choked-circular-jets", "tam-1986-bbsan-screech-relationship", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "tam-1995-supersonic-jet-noise", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
summary: "Vortex-sheet guided-mode bands: A1/A2/u near the (0,2) lower limit, C on (1,1), B/D outside; M_j 1.56 LES f–k spectra show in-jet upstream waves at −a₀ at the tones"
---
# Oscillation Modes in Screeching Jets

- **Authors:** Romain Gojon (KTH Royal Institute of Technology, Dept. of Mechanics, Linné FLOW Centre, Stockholm; also ISAE-SUPAERO, DAEP, Toulouse), Christophe Bogey (École Centrale de Lyon, LMFA, UMR CNRS 5509), Mihai Mihaescu (KTH) (p. 2918). Not Shock Lab group work.
- **Source:** AIAA Journal 56(7), 2918–2924 (July 2018), Technical Note, doi:10.2514/1.J056936. Received 13 Nov 2017, revised 8 Feb 2018, accepted 8 Mar 2018, published online 27 Apr 2018 (p. 2918). Associate Editor D. Gaitonde (p. 2924). Computations on CINES (GENCI allocation 2016-2a0204) and SNIC PDC (p. 2923).
- **Companion papers:** the LES itself is described in Gojon & Bogey 2017, Int. J. Aeroacoust. 16(7–8), 603–625 (ref. [20]), and the same diagnostic was used first for ideally expanded impinging jets in Bogey & Gojon 2017, JFM 823 (ref. [10]). The rectangular-jet follow-up is [gojon-2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/Gojon-EtAl_2018_Oscillation-Modes-In-Screeching-Jets.pdf` (7 pp., publisher's version, downloaded via École Centrale de Lyon). Page refs are journal pages 2918–2924, equal to PDF pages 1–7. The text layer garbles both equations; eqs. 1–2 and Figs 1–3, 5, 7–9 were checked against rendered pages.
- **Tags:** screech, oscillation modes, A1/A2/B/C/D stages, secondary modes a1/b/c/d/u, axisymmetric vs helical, Shen & Tam (2002) two-closure hypothesis, neutral acoustic wave modes, guided jet mode, cylindrical vortex sheet (Lessen et al. 1965; Tam & Ahuja 1990), allowable frequency ranges, lower limit on k = −ω/a₀, group velocity, eigenfunctions, LES, high-order finite differences, relaxation filtering, shock-capturing filter, frequency–wavenumber spectra, azimuthal Fourier decomposition, density fluctuations, hydrodynamic–acoustic standing waves, M_j 1.56, underexpanded round jet

## Summary
The Note tests the idea of Shen & Tam (2002) that the screech loop is closed by the upstream-propagating neutral acoustic wave modes (now called guided jet modes) of the equivalent ideally expanded jet (p. 2918). A cylindrical vortex-sheet dispersion relation gives, at each M_j, the Strouhal bands where these modes travel upstream: between a lower limit on the line k = −ω/a₀ and a maximum where the group velocity changes sign (p. 2918–2919). Mapped against M_j and laid over the tones of Powell et al. (1992) and Ponton & Seiner (1992), the bands place A1, A2 and the secondary u mode near the lower limit of the second axisymmetric band (S2), and C and c on the lower limit of the first helical band (H1). This matches their known axisymmetric and helical shapes, while B, D, b and d fall outside every band (p. 2919–2920). An LES of an underexpanded M_j 1.56 jet from a 2 mm straight pipe (NPR 4.03) produces two helical C tones (St 0.28, 0.305) and an axisymmetric u tone (St 0.38) (p. 2920–2921). Frequency–wavenumber spectra of density inside the jet, split into azimuthal modes n = 0 and 1, peak at the tones very close to the lower limits of S2 and H1, i.e. on k ≈ −ω/a₀, and their radial profiles resemble the vortex-sheet eigenfunctions (p. 2921–2923). The authors present this as the first direct observation of these modes inside a non-ideally expanded jet and conclude that they close the loop, at least for A1, A2, u, C and c (p. 2923). The model gives bands only: it has no phase criterion, so it neither selects a frequency within a band nor explains A1 → A2.

## Key findings
- **Two closures proposed before** (p. 2918): Shen & Tam (2002) argued that A1 and B close through instability-wave–shock interaction radiating upstream (the BBSAN frequency formula of Tam et al. 1986 fits them), while A2 and C close through upstream acoustic modes of the jet (vortex-sheet wavelengths fit them). Those modes had never been seen in a jet.
- **Band structure at M_j 1.56** (Fig. 1, p. 2919):
  - Discrete neutral modes S1, S2, S3 (n = 0) and H1, H2, H3 (n = 1) appear in the plotted range, ordered by the St of their lower limits. Their lower limits (from Tam & Ahuja 1990) lie on k = −ω/a₀.
  - Each mode travels upstream only on the segment between its lower limit and its maximum St, where dSt/dk < 0 (red in Fig. 1). This gives the "allowable frequency ranges" (p. 2919).
  - Read from Fig. 1: S1 ≈ 0–0.19, S2 ≈ 0.37–0.47, S3 ≈ 0.68–0.76, H1 ≈ 0.31–0.335, H2 ≈ 0.60–0.62, H3 ≈ 0.90–0.91. The helical bands are much narrower than the axisymmetric ones.
  - Eigenfunctions (Fig. 2, at the maximum St of each mode, "similar" elsewhere on the mode): S1 decreases monotonically from the axis, S2 and S3 have one and two radial nulls, H1 vanishes on the axis and peaks near r/D_j ≈ 0.28 (read from figure) (p. 2919).
- **Experimental tones against the bands** (Fig. 3, p. 2919–2920):
  - The overall decrease of screech St with M_j follows the semi-empirical relation of Tam et al. (1986) (eq. 2), and the jumps between stages follow the band edges (p. 2919).
  - C (both data sets) and Powell's secondary c fall "strikingly" on the lower limit of H1, so they should be helical. A1, A2 and the secondary u lie near the lower limit of S2, so they should be axisymmetric. This agrees with observed shapes for A1, A2, C and c, and with Powell et al.'s expectation for u (p. 2919).
  - Tones sit mainly near the lower limits, where group and phase velocities are both close to a₀. So the in-jet feedback waves travel at the speed that classical models (Powell, Raman) give to the external sound (p. 2919–2920).
  - B, D, b and d lie outside all bands, which the authors attribute to their "more complex flapping/sinuous" oscillation (p. 2920). Similar band behaviour was found earlier for impingement tones (Tam & Norum 1992; Gojon et al. 2016; Bogey & Gojon 2017) (p. 2920).
- **LES tones** (Fig. 5, p. 2920–2921): near-nozzle pressure at z = 0, r = 2r₀ shows two tones about 15 dB above the broadband level at St₁ = 0.28 and St₂ = 0.305 and a secondary tone at St₃ = 0.38. Eq. 2 gives St = 0.285, "in good agreement" with the two dominant tones. By the Fig. 3 classification St₁ and St₂ are mode C and St₃ is mode u.
  - Read from Fig. 5: about 158 and 156 dB/St at St₁ and St₂. Around St₃ the spectrum has a double peak at St ≈ 0.35 and 0.365 (≈ 148 dB/St) and a shoulder near 0.38; further low-frequency peaks near St ≈ 0.15 and 0.18 (136 and 139.5 dB/St) are not discussed.
- **Spatial shape of the tones** (Fig. 6, p. 2921):
  - Pressure amplitude at all three tones shows cell structures, i.e. hydrodynamic–acoustic standing waves, as in Panda et al. (1997) and Gojon et al. (2016).
  - On-axis levels are negligible at St₁ and St₂ and strong at St₃. Phase fields, and an azimuthal decomposition at z = 0, r = 2r₀ (not shown), confirm helical oscillation at St₁ and St₂ and axisymmetric at St₃, as the band model predicts for C and u. The axisymmetric nature of u "clearly appears" (p. 2921).
- **Upstream waves inside the jet** (Figs 7, 9, p. 2921–2923):
  - At the tones the f–k spectra peak on k = −ω/a₀, very near the lower limits of S2 (n = 0, St 0.38) and H1 (n = 1, St 0.28 and 0.305). So these waves travel upstream inside the jet with group and phase velocities both close to a₀ (p. 2921).
  - Fig. 9 marks the peak wavenumbers as kD_j = −3.07 (n = 0, St 0.38, S2) and −2.27 (n = 1, St 0.28, H1). At those wavenumbers the energy is strongest at r = 0.1r₀ for n = 0 and at r = 0.5r₀ for n = 1, consistent with the S2 and H1 eigenfunctions (p. 2923).
  - Energy is spread over a wide range of k at each tone, which the authors say seems to contradict a single-wavenumber feedback wave. They attribute the spread to interaction of the upstream waves with shear-layer turbulence and shock cells, which redistributes energy to nearby wavenumbers (p. 2921, 2923). See Relevance for the window-resolution alternative.
- **Waves with positive group velocity** (p. 2921): for n = 0, significant levels lie slightly above the S1 and S2 curves (Fig. 7a, c, e), decaying with radius as in Fig. 2a. For n = 1 strong components lie along H2 at r = 0.1r₀ and along H1 and H2 at 0.5r₀. Those with positive group velocity "cannot be involved" in the feedback loop. The small offset from the model curves is put down to shock motions and the infinitely thin vortex sheet (p. 2921).
- **Eigenfunction match** (Fig. 8, p. 2921–2922): LES amplitude profiles at 11 radial positions (r = 0 to r₀, i.e. r/D_j ≤ 0.45) are taken from the f–k spectra at the tone St for S2 (0.38) and H1 (0.28), and at each mode's maximum St for S1 and H2. "A good agreement is obtained for all the modes", as earlier for impinging jets (Bogey & Gojon 2017). The authors call this the first evidence that a vortex sheet of the equivalent ideally expanded jet predicts the wave modes of a non-ideally expanded jet (p. 2921).
- **Downstream waves** (Fig. 10, p. 2923): at r = r₀, broadband disturbances convect downstream at u_c ≈ 0.75u_j, while the upstream components are acoustic waves at a₀ at the tones, "very likely to close the feedback loop".
- **Conclusion** (p. 2923): the vortex-sheet hypothesis explains the axisymmetric or helical oscillation and the M_j trend of A1, A2, u, C and c. The LES shows in-jet upstream waves at a₀ belonging to the neutral modes, suggesting they close the loop "at least" for those modes.

## Setup / method
- **Vortex-sheet model** (Sec. II, p. 2918–2919):
  - Inviscid compressible linearised equations, cylindrical vortex sheet of diameter D_j at the ideally expanded conditions; neutral waves have real k and ω (Lessen, Fox & Zien 1965). The printed relation (eq. 1) is the Tam & Ahuja (1990) form.
  - Only the negative-k part of the (k, St) plane is computed. The band limits come from the maximum St on each dispersion curve and from Tam & Ahuja's closed-form lower limits (p. 2919).
  - Fig. 1 uses M_j 1.56, matching the LES; the temperature ratio for Figs 1–3 is not stated (the LES and the experiments are unheated).
  - Assumptions: parallel, infinitely thin shear layer, no shocks, no growth or phase condition. The model says where an upstream mode can exist, not which frequency is selected.
- **Experimental comparison** (Fig. 3, p. 2919): tones from Powell, Umeda & Ishii (1992), including secondary modes a1, b, c, d and u, and from Ponton & Seiner (1992) for their thickest lip, t = 0.625D. Measurement details are not repeated here (Ponton & Seiner used near-field microphones; [ponton-1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md)).
- **LES** (Sec. IV.A, p. 2920):

  | Quantity | Value |
  |---|---|
  | Nozzle | straight pipe, D = 2r₀ = 2 mm, lip thickness 0.1r₀ (t/D = 0.05); M_e = 1, mimicking a convergent nozzle |
  | NPR = p_r/p₀ | 4.03 (underexpanded) |
  | T_r/T₀ | 1 |
  | M_j = u_j/a_j | 1.56 |
  | D_j | 2.2 mm |
  | Re_j = u_j D_j/ν_j | 6 × 10⁴ |
  | Equations | unsteady compressible Navier–Stokes, cylindrical mesh (r, θ, z) |
  | Time integration | explicit six-stage Runge–Kutta |
  | Space | explicit low-dispersion, low-dissipation finite differences (Bogey & Bailly 2004; Berland et al. 2007) |
  | SGS / stabilisation | high-order relaxation filtering each step (Bogey & Bailly 2006, 2009; Fauconnier et al. 2013) |
  | Shocks | adaptive shock-capturing filter (Bogey, de Cacqueray & Bailly 2009) |
  | Boundaries | Tam & Dong radiation conditions, sponge zone for turbulence, no-slip adiabatic nozzle walls |
  | Grid | 400 million points; Δ_min = 0.0075r₀ in the shear layers and at the exit; Δ_max = 0.06r₀ |
  | Acoustic resolution | St = fD_j/u_j up to 5.3 |
  | Duration | 500 D_j/u_j after the transient |
  | Code | OpenMP in-house solver in cylindrical coordinates |

  Exit boundary-layer state, inflow forcing, domain size and sponge extent are not given here (they are in Gojon & Bogey 2017).
- **Post-processing** (all need time-resolved, spatially resolved 3-D data):
  - Near-field spectrum at z = 0, r = 2r₀ (Fig. 5). Window, segment length and averaging are not stated; 500 D_j/u_j allows ΔSt ≈ 0.002 at best (my arithmetic), enough to separate St₁ and St₂.
  - Fourier transform in time of the near pressure field in the (z, r) plane, giving amplitude and phase maps at each tone (Fig. 6, p. 2920–2921).
  - Azimuthal Fourier decomposition of the pressure at z = 0, r = 2r₀ (not shown) (p. 2921).
  - Space–time Fourier transform of density fluctuations on axial lines from z = 0 to 10r₀ (≈ 4.5D_j) at radii between 0 and r₀, split into azimuthal modes n = 0 and 1 (Figs 7, 9, 10, p. 2921–2923). No spatial window, padding or frequency resolution is stated.
  - Amplitude profiles at 11 radii (r = 0 to r₀) extracted from these spectra and compared with eigenfunctions (Fig. 8). The normalisation is not stated.

## Key equations
Checked against rendered pages 2918–2919.

- **Vortex-sheet dispersion relation for neutral waves** (eq. 1, p. 2918):
  $$|\xi_+|\,J_n(|\xi_-\alpha|)\,\frac{K_{n-1}(|\xi_+\alpha|)+K_{n+1}(|\xi_+\alpha|)}{K_n(|\xi_+\alpha|)}+\frac{C^2|\xi_-|}{(a_0C/a_j-\mathcal M_j)^2}\big[J_{n-1}(|\xi_-\alpha|)-J_{n+1}(|\xi_-\alpha|)\big]=0$$
  with $C=\omega/(ka_0)$, $\xi_+=|C^2-1|^{1/2}$, $\xi_-=|(a_0C/a_j-\mathcal M_j)^2-1|^{1/2}$, $\alpha=kD_j/2$ (p. 2918–2919). $J_n$, $K_n$: Bessel and modified Bessel functions; n is the azimuthal order.
  Check (mine): this is exactly eq. 16 of Tam & Ahuja 1990 ([tam-1990](tam-1990-theoretical-model-discrete-tone-impinging-jets.md)) with a∞ → a₀. It follows from pressure and displacement continuity with $J_n$ inside, $K_n$ outside (trapped, |C| < 1) and $\rho_0/\rho_j=a_j^2/a_0^2$.
- **Lower limits** (not printed here; Tam & Ahuja 1990 eqs. 19–21 via the tam-1990 note): as C → −1, eq. 1 reduces to $J_1(|\bar\xi_-\alpha|)=0$ for n = 0 (S1 at the origin, then S2, S3, …) and to $nJ_n(z)/z+J_n'(z)/A=0$, $A=(a_0/a_j+\mathcal M_j)^2$, for n ≥ 1. My evaluation for a cold jet at M_j = 1.564 (from NPR 4.03): S2 at St 0.366 (kD_j −2.95), S3 at 0.671, H1 at 0.324 (kD_j −2.61), H2 at 0.602.
  > Figs 1 and 7 place the H1 lower limit at St ≈ 0.31, kD_j ≈ −2.45 (read from figure), about 4 % below my 0.324. S2, S3 and H2 agree with my values to within reading accuracy. Check the H1 limit in the PDF and with an independent root-finder before quoting it.
- **Semi-empirical screech frequency** (Tam, Seiner & Yu 1986; eq. 2, p. 2919):
  $$St=\frac{0.62}{(\mathcal M_j^2-1)^{1/2}}\left[1+0.65\,\mathcal M_j\left(1+\frac{\gamma-1}{2}\mathcal M_j^2\right)^{-1/2}\left(\frac{T_0}{T_r}\right)^{-1/2}\right]^{-1}$$
  with T₀ the ambient and T_r the jet total temperature, γ = 1.4, u_c = 0.65u_j.
  Check (mine): this is $St=(u_c/u_j)/[(L_s/D_j)(1+M_c)]$ with $L_s=1.048\beta D_j$ and $M_c=(u_c/u_j)\,u_j/a_0$. At M_j 1.56, T_r = T₀ it gives 0.283 (0.281 at M_j 1.564), against 0.285 printed (p. 2920). With the LES's broadband u_c = 0.75u_j (p. 2923) the same formula gives 0.303.
- **Reference lines in the f–k plots:** $k=-\omega/a_0$ (sound in the ambient travelling upstream) and $k=\omega/u_c$, u_c ≈ 0.75u_j (Fig. 10). In the Fig. 7 coordinates, $kD_j=-2\pi St\,u_j/a_0$ with u_j/a₀ = 1.28, so St 0.28, 0.305 and 0.38 sit at kD_j = −2.25, −2.45 and −3.06 on the sound line (my arithmetic). The marked peaks, −2.27 and −3.07 (Fig. 9), are on it.

## Data tables
**LES tones** (p. 2920–2921; Fig. 5 levels read from figure):

| Tone | St = fD_j/u_j | Level (dB/St, z = 0, r = 2r₀) | Azimuthal structure | Stage | Nearest band (Figs 1, 7) |
|---|---|---|---|---|---|
| St₁ | 0.28 | ≈ 158 | helical (n = 1) | C | H1 lower limit ≈ 0.31 (figure) / 0.324 (my calc): tone below it |
| St₂ | 0.305 | ≈ 156 | helical (n = 1) | C | at or just below the H1 lower limit |
| St₃ | 0.38 | ≈ 146–148 (see Key findings) | axisymmetric (n = 0) | u | inside S2, ≈ 4 % above its lower limit (0.366) |
| model (eq. 2) | 0.285 | — | — | — | — |

**Band limits at M_j 1.56, cold** (Fig. 1, read from figure; lower limits also computed from Tam & Ahuja's conditions, my arithmetic):

| Mode | Lower limit St (figure / calc) | Upper limit (max) St (figure) |
|---|---|---|
| S1 | 0 / 0 | ≈ 0.19 |
| S2 | ≈ 0.37 / 0.366 | ≈ 0.47 |
| S3 | ≈ 0.68 / 0.671 | ≈ 0.76 |
| H1 | ≈ 0.31 / 0.324 | ≈ 0.335 |
| H2 | ≈ 0.60 / 0.602 | ≈ 0.62 |
| H3 | ≈ 0.90 / — | ≈ 0.91 |

**Peak wavenumbers in the LES** (Fig. 9, p. 2923): n = 0 at St 0.38, kD_j = −3.07, strongest at r = 0.1r₀; n = 1 at St 0.28, kD_j = −2.27, strongest at r = 0.5r₀.

## Figures worth remembering
- **Fig. 1 (p. 2919):** negative-k vortex-sheet dispersion curves at M_j 1.56, n = 0 (S1–S3) and n = 1 (H1–H3), with lower limits (×) on k = −ω/a₀ and the upstream segments in red. The best picture of why the bands are narrow.
- **Fig. 2 (p. 2919):** radial eigenfunctions of S1–S3 and H1–H3 inside the jet.
- **Fig. 3 (p. 2920):** band map against M_j (1–2) with the Powell et al. (1992) and Ponton & Seiner (1992, t = 0.625D) tones and the Tam et al. relation: A1/A2/u on the S2 edge, C/c on the H1 edge, B/D outside.
- **Fig. 4 (p. 2920):** density isosurfaces and pressure fluctuations of the LES jet, with strong upstream acoustic waves.
- **Fig. 5 (p. 2921):** near-nozzle spectrum with the C double tone and the u tone.
- **Fig. 6 (p. 2921):** pressure amplitude and phase at the three tones: standing-wave cells, helical vs axisymmetric phase patterns.
- **Fig. 7 (p. 2922):** n = 0 and n = 1 f–k spectra of density at r = 0.1r₀, 0.5r₀, r₀ with the model curves overlaid: tone peaks at the S2 and H1 lower limits, and energy along the positive-group-velocity branches.
- **Fig. 8 (p. 2922):** LES amplitude profiles against S1, S2, H1, H2 eigenfunctions.
- **Fig. 9 (p. 2923):** wavenumber spectra at the n = 0 and n = 1 tones, with peaks at kD_j −3.07 and −2.27.
- **Fig. 10 (p. 2923):** full ±k f–k spectra at r = r₀: downstream broadband band on k = ω/u_c (u_c ≈ 0.75u_j) and upstream tonal energy on k = −ω/a₀.

## Notation
- n: **azimuthal** order (0 axisymmetric, 1 helical); elsewhere in the library this is m.
- S1, S2, S3 / H1, H2, H3: first three neutral (guided) acoustic modes for n = 0 / n = 1, ordered by lower-limit St. S2 is the (0, 2) mode of [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md), and H1 the radial-order-1 m = 1 guided mode of [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md) (p. 9 there). Do not confuse them with Towne et al.'s saddle labels S1/S2 ([towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md)) or with Gojon 2019's planar S/A modes.
- Lower limit: branch point on k = −ω/a₀ (the "cut-on" of EM 2018 and B(m, n) of Mancinelli). Upper limit: maximum St of the curve, dSt/dk = 0 (the saddle, "cut-off", S(m, n)).
- Subscripts: r = reservoir (stagnation), 0 = **ambient** (so T₀ is ambient temperature and NPR = p_r/p₀), j = ideally expanded jet, e = exit.
- C = ω/(ka₀); ξ±, α as in eq. 1; r₀ = D/2; z axial, r radial, θ azimuthal.
- St = fD_j/u_j; Re_j = u_j D_j/ν_j; u_c: convection velocity.
- Screech stages A1, A2, B, C, D (Powell, Merle) and Powell et al.'s secondary a1, b, c, d, u.

## Relevance to this project
This is the LES-and-vortex-sheet companion to the group's own founding guided-mode paper, [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), from the same year. EM 2018 isolates the upstream wave in non-time-resolved PIV of A1/A2 jets; this Note maps the guided-mode bands across all stages and finds the wave in LES f–k spectra of a helical C jet. [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) credits both as the identification of guided-mode closure.

**How it fits the thread**
- *Agreement with EM 2018.* Both put A1 and A2 on the same (0, 2) guided mode near its lower edge, against Shen & Tam's split closure (EM 2018 p. 10–11; here p. 2918–2919). This Note adds the helical side (C and c on H1), the secondary u tone on S2, and B/D outside any band, which EM 2018's Fig. 8 also hints at for low-frequency tones at higher M_j (EM 2018 note).
- *Tones near the lower limit* (p. 2919–2920) is a useful observation: there the guided mode moves at about a₀ in both phase and group velocity. That is why Powell-type formulas with free-stream sound at c₀ work as well as they do, and why a return speed known only to ±10 % cannot tell the guided mode from sound ([mercier-2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md) p. 213, 226, via the screech topic page).
- *u as an axisymmetric tone on S2* fits [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md), where a weak U tone sits just above C and Powell et al. suggested it extends A2 (that note).
- *Bands, not selection.* The band test says where a loop can close, not which frequency or stage wins. A1 and A2 both lie on S2, so the model cannot explain A1 → A2. That needed the k_s1/k_s2 shock wavenumbers ([nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) p. 7–13; [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) p. 11–13) or a phase criterion (Mancinelli 2019, 2021).
- *Physics of the wave.* [nogueira-2024](nogueira-2024-guided-jet-waves.md) later explains the mode as in-jet sound totally reflected by the shear layer, which is what this Note's "acoustic waves inside the jet at a₀" are.

**Reading it critically (my observations, not in the paper)**
- **The dominant tone lies below the H1 band.** St₁ = 0.28 is below the H1 lower limit both on the paper's own figure (≈ 0.31) and by my evaluation of Tam & Ahuja's condition (0.324), i.e. 10–14 % low; St₂ = 0.305 sits at or just below the edge. In an infinitely thin vortex sheet the n = 1 guided mode is not propagative upstream at St₁, so "very near the lower limits" (p. 2921) understates the gap. Only St₃ (u) is inside its band. A finite-thickness shear layer lowers the bands (Tam & Ahuja 1990; [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md) p. 15–17), which is the likely fix, and [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md) needed δ = 0.25 for its m = 1 case (p. 7). The rectangular follow-up has the same problem for its hot underexpanded tones ([gojon-2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md) p. 26).
- **The same check on the group's data** (my arithmetic, cold vortex sheet): the S2 lower limit is St 0.634 at M_j 1.09 and 0.592 at 1.14, so the Monash A1 and A2 tones (0.67, 0.65; [edgington-mitchell-2021](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) Table 1) are 6 % and 10 % above it, inside the band. The H1 lower limit at M_j 1.45 is 0.359, so the Monash C tone at NPR 3.4 (St 0.30 or 0.26, the two notes disagree) is 16–28 % below the thin-sheet H1 band, like St₁ here.
- **Wavenumber resolution.** The f–k line is 10r₀ ≈ 4.5D_j long, so Δk D_j = 2πD_j/L ≈ 1.4 (my arithmetic), with no window stated. A rectangular window of that length spreads a single wave over about ±1.4 in kD_j, which is comparable to the spread the authors attribute to scattering by turbulence and shocks (p. 2921, 2923). The two explanations cannot be separated without a longer line or a taper. The same issue was flagged for the 10h line of [gojon-2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md) (note).
- **Wavenumber cannot separate guided mode from sound here.** At a lower limit the guided mode's wavenumber equals −ω/a₀, the sound-line value (−2.25 vs −2.27 printed for St₁). So the f–k peak alone cannot tell the guided mode from upstream sound inside the jet, which is EM 2018's caveat (p. 10). The radial profiles are the better evidence, but they stop at r/D_j = 0.45, inside the jet. The decisive signature, evanescent decay outside the jet, is not tested.
- **"Good agreement for all the modes"** (Fig. 8) is generous by eye. The inner parts match, and the LES peaks coincide with the model peaks (≈ 0.58 for H1 and H2), which suggests the profiles were scaled to the model maxima. The S2 null is at r/D_j ≈ 0.32 in the LES against ≈ 0.25 in the model, H2's null is missing in the LES, and the outer values stay high where the model falls (read from figure).
- **Negative k is not upstream.** The energy along the left (positive-group-velocity) branches of S1, S2, H1 and H2 (p. 2921) is the duct-like k⁺ family of [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md) (negative phase speed, positive group velocity; p. 8, 15) and [schmidt-2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md). This is an early sighting of trapped waves in a screeching jet, before the k_t+ wave of [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md), though that one sits at positive k (k_kh + k_s). It also shows that the sign of k_x is not a safe proxy for propagation direction, which EM 2018 assumed (p. 6) and [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) (p. 13) later warns about.
- **B and D outside the bands.** In a round jet, flapping (m = ±1 standing) and helical waves share the |m| = 1 vortex-sheet dispersion relation, so "more complex flapping/sinuous modes" (p. 2920) does not by itself explain why B and D fall below H1. Thin-sheet band edges are the more likely cause. Weak |m| = 2 streaks do split the m = ±1 dispersion relation into flapping and wagging, moving branch and saddle points, but they shift flapping to higher St and wagging to lower ([nogueira-2026](nogueira-2026-flapping-motion-screeching-round-jets.md) p. 11), so the flapping band would move further above the B tones, not down to them. [ponton-1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md) (p. 537) also groups its high-M_j "D" points with B, whereas Fig. 3b labels them D.
- **Two helical tones in one spectrum.** St₁ and St₂ are both called C, 0.025 apart, in a 500 D_j/u_j record. Whether they coexist, alternate or are two azimuthal orientations or helicities is not addressed here (see ref. [20]). This is the coexistence-or-alternation question on [screech-staging-and-mode-switching](../Topics/screech-staging-and-mode-switching.md). The low-frequency peaks near St 0.15–0.18 fall inside the S1 band (0–0.19); whether they are TM-type n = 1 radial-order loops (Mancinelli 2021) is unknown (my speculation).
- **Convection speed.** Eq. 2 uses u_c = 0.65u_j, while the LES's broadband value is 0.75u_j (p. 2923); with 0.75 the formula gives 0.303 (my arithmetic). Weakest-link formulas are sensitive to u_c, which [mercier-2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md) (p. 214, 224–226) shows varies along the jet.
- **Low Reynolds number.** Re_j = 6 × 10⁴ is an order of magnitude below the lab jets (4–8 × 10⁵), with a 2 mm straight-pipe nozzle and a thin lip (t/D = 0.05). Mode ranges and amplitudes depend on lip and boundary layer ([ponton-1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md); [gojon-2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md) p. 8–10). So the tones and their St should not be compared one-to-one with experiments at M_j 1.56.

**Methods and data for the lab workflow (CLAUDE.md)**
- **f–k spectra with azimuthal splitting** need time-resolved, 3-D data along a line inside the jet (LES, or an azimuthal array plus TR measurements). Planar TR schlieren is path-integrated and cannot separate n = 0 from n = 1, but SPOD at the tone followed by an x-FFT along lines inside the jet gives the k content. Use a long line (≥ 10D_j) and a taper to get Δk D_j ≲ 0.6, or the spread here reappears.
- **Non-time-resolved PIV** cannot give the frequency axis, but the POD-pair route of EM 2018 gives the k content at the single tone. The band test then needs only M_j, T and the vortex-sheet code.
- **SPOD → reconstruction → Hilbert POD:** reconstruct the two C tones (St 0.28, 0.305) and the u tone separately, then track their instantaneous amplitudes. This would show whether they coexist or alternate, which block spectra cannot. Filtering the reconstructed field to k < 0 near −ω/a₀ and to the S2/H1 radial shapes would follow the guided-mode amplitude in time.
- **Band maps** (Fig. 3 type) are a cheap sanity check for any new nozzle or condition. Evaluate them with finite thickness before concluding that a tone is outside a band.

**Modelling side and the PyFR staging LES** (`Simulations/PyFR_Staging_Continuation/`)
- The numerics (6-stage RK, low-dispersion finite differences, relaxation-filter SGS, shock-capturing filter, Δ_min 0.0075r₀ and Δ_max 0.06r₀ giving St 5.3) are a reference for round-jet screech LES resolution. At 400M points they also show the cost of resolving the near-field acoustics.
- Apply this Note's diagnostic to the PyFR A1 (NPR 2.10) and A2 (2.25) states: n = 0 f–k spectra of density or pressure at r = 0.1r₀, 0.5r₀, r₀ should peak at the S2 lower limit (St 0.634 at M_j 1.09, 0.592 at 1.14, my arithmetic), with a core-peaked S2 profile. Comparing the two states would test whether the guided-mode wavenumber or band position changes across staging, or only the shock wavenumber it pairs with (EM 2022).
- The duct-like waves on the positive-group-velocity branches are present in LES spectra; filter them out before attributing negative-k energy to the loop.

**Rocket noise:** the Note is cold and laboratory-scale. Its value for full-scale work is the band map method, which needs finite thickness and heating before it can say whether hot plumes support guided-mode screech ([gojon-2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md) p. 25–26; screech topic, "Full scale").

**Items to verify against the PDF**
1. St₃ = 0.38 against Fig. 5, where the nearest features are a double peak at St ≈ 0.35–0.365 and a shoulder near 0.38 (read from figure).
2. "Figs. 7a, 7c, and 7e" for the n = 1 tone peaks (p. 2921): presumably a typo for 7b, 7d, 7f.
3. H1 lower limit: Fig. 1b ≈ 0.31 vs Tam & Ahuja eq. 19 ≈ 0.324 at M_j 1.56 (my evaluation).
4. Eq. 2 gives 0.281–0.283 by my evaluation vs 0.285 printed.
5. Temperature ratio and St definition (D vs D_j) used for the Fig. 3 band map and the experimental points are not stated.
6. Normalisation of the LES profiles in Fig. 8, and which variable the eigenfunctions of Fig. 2 are (pressure is implied).
7. No spatial window, line length beyond 10r₀, or frequency resolution is given for the f–k spectra.
8. Fig. 3b's D labels for Ponton & Seiner data vs Ponton & Seiner's own grouping of high-M_j "D" with B.

**Candidates for `/add-paper`:** Shen & Tam 2002 (AIAA J. 40, two-closure hypothesis); Powell, Umeda & Ishii 1992 (JASA 92, oscillation modes incl. u); Gojon & Bogey 2017 (Int. J. Aeroacoust. 16, the LES); Bogey & Gojon 2017 (JFM 823, impinging jets, same diagnostic); Gojon, Bogey & Marsden 2016 (JFM 808, planar impinging LES); Tam & Norum 1992 (AIAA J. 30, rectangular impingement tones); Lessen, Fox & Zien 1965; Davies & Oldfield 1962; Merle 1956; Westley & Woolley 1969; Panda, Raman & Zaman 1997 (AIAA 97-1623).
