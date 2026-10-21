---
key: "bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets"
title: "Feedback loop and upwind-propagating waves in ideally expanded supersonic impinging round jets"
authors: ["Bogey, Christophe", "Gojon, Romain"]
year: 2017
type: "article"
venue: "JFM 823, 562–591"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "823", "pages": "562--591"}
doi: "10.1017/jfm.2017.334"
arxiv: ""
pdf: "impinging-jets-and-edge-tones/Bogey-Gojon_2017_Feedback-Loop-And-Upwind-Propagating-Waves-In-Ideally-Expanded-Supersonic-Impinging.pdf"
version: "published"
unverified: []
group: false
facility: "In-house OpenMP compressible LES solver (LMFA, Ecole Centrale de Lyon); FLMSN, CINES and IDRIS (GENCI) computers"
data: ["LES"]
methods: ["statistics", "PSD", "coherence", "symmetry-decomposition", "wavenumber-filtering", "vortex-sheet", "LSA-local", "resonance-model"]
flow: ["round-jet", "impinging-jet", "supersonic", "ideally-expanded"]
phenomena: ["impingement-tones", "guided-jet-mode", "staging", "multimodal", "helical", "standing-waves", "KH-wavepackets"]
params: {"M_j": "1.5", "TR": "1 (T0 = T∞ = 293 K, p∞ = 10⁵ Pa)", "Re": "6×10⁴ (u_j D/ν_j)", "h/D": "3, 4, 5, 6 (L/r0 = 6, 8, 10, 12)", "St": "0.165–0.57 (first four tones, fD/u_j); dominant 0.455, 0.445, 0.44, 0.38", "δ_θ/r0": "0.016 at the exit (Blasius, δ = 0.15r0); ≈ 0.12 mid-gap", "lip": "0.1r0 thick (t/D 0.05); nozzle outer width l = 1.25r0", "u_c/u_j": "0.58–0.62 (mean, nozzle to plate)", "grid": "202–240 × 10⁶ points; Δt = 0.005r0/u_j; 500r0/u_j recorded"}
topics: ["impinging-jets-and-edge-tones", "linear-models", "simulation-methods"]
related: ["tam-1990-theoretical-model-discrete-tone-impinging-jets", "tam-1989-three-families-instability-waves-high-speed-jets", "nogueira-2024-guided-jet-waves", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "weightman-2019-sound-production-impinging-supersonic-jets", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "henderson-2002-flow-structure-supersonic-impinging-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "jordan-2018-jet-flap-interaction-tones", "stavropoulos-2026-jet-edge-interaction", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "panda-1999-experimental-investigation-screech-noise-generation", "michalke-1984-survey-jet-instability-theory"]
cites: ["henderson-1993-tones-choked-jet-impinging-flat-plates", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "michalke-1984-survey-jet-instability-theory", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
summary: "LES, ideally expanded M_j 1.5 jet on a plate (L/r0 6–12): tones fit Powell N; vortex-sheet guided-mode bands order axisym/helical tones; k–ω shows in-jet upstream waves"
---
# Feedback loop and upwind-propagating waves in ideally expanded supersonic impinging round jets

- **Authors:** Christophe Bogey (Laboratoire de Mécanique des Fluides et d'Acoustique, UMR CNRS 5509, Ecole Centrale de Lyon, Université de Lyon, Ecully) and Romain Gojon (same laboratory, and Linné FLOW Centre, Department of Mechanics, KTH, Stockholm) (p. 562). Not Shock Lab group work.
- **Source:** J. Fluid Mech. (2017), vol. 823, pp. 562–591, doi:10.1017/jfm.2017.334. Received 20 October 2016, revised 27 March 2017, accepted 15 May 2017, first published online 22 June 2017 (p. 562). Computing time from GENCI allocation 2016-2a0204; Labex CeLyA (ANR-10-LABX-0060/ANR-11-IDEX-0007) (p. 586). One supplementary movie (density and pressure fields of the four jets; p. 567, 583, 586).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/impinging-jets-and-edge-tones/Bogey-Gojon_2017_Feedback-Loop-And-Upwind-Propagating-Waves-In-Ideally-Expanded-Supersonic-Impinging.pdf` (30 pp., publisher's version). Page refs are journal pages 562–591; **PDF page = journal page − 561**. The text layer is clean, but it drops Greek letters and π; eqs. 2.1, 2.2, 3.2–3.6 and Figs 5, 7, 9, 10, 14–17, 22–25, 28–29 were read from 130–300 dpi renders.
- **Tags:** impinging jet, impingement tones, ideally expanded supersonic round jet, M_j 1.5, large-eddy simulation, relaxation filtering, shock-capturing filter, pipe nozzle, nozzle-to-plate distance, feedback loop, Powell / Ho & Nosseir model, mode number N, staging, hydrodynamic–acoustic standing wave, axisymmetric vs helical tones, convection velocity, upstream-propagating neutral acoustic modes (guided jet mode), vortex-sheet dispersion relation (Tam & Ahuja 1990), allowable frequency ranges, lower limits on k = −ω/a0, combined feedback–wave model, frequency–wavenumber spectra, upwind waves inside the supersonic core, temporal mixing layer, shear-layer thickness effect, Krothapalli et al. (1999) validation

## Summary
Four LES of a cold, ideally expanded Mach 1.5 round jet (Re 6 × 10⁴, laminar exit boundary layer) impinging normally on a flat plate at L = 6, 8, 10 and 12 r0 reproduce the multiple impingement tones measured by Krothapalli et al. (1999) and the way they follow staging paths as L changes (p. 572–577). Temporal Fourier decomposition of the pressure field shows, at each tone, a hydrodynamic–acoustic standing wave between nozzle and plate with a whole number of cells N_sw equal to the feedback-mode number N of the classical (Ho & Nosseir) loop, and an axisymmetric or helical azimuthal structure (p. 573–576). The tones fall into alternating St bands, axisymmetric below 0.225, helical up to 0.355, axisymmetric up to 0.5 and helical above, which the classical model cannot explain (p. 577). A vortex-sheet analysis of the upstream-propagating neutral acoustic modes of the jet (Tam & Ahuja 1990) accounts for this ordering, and combining it with the standing-wave condition gives the frequency, N and azimuthal nature of each tone, with the tones lying near the lower limits of the modes, where the waves travel upstream at about the ambient sound speed (p. 577–583). Pressure snapshots and frequency–wavenumber spectra on the axis and lip line of the L = 12 r0 jet show waves travelling upstream inside the supersonic core and in the shear layers at about a0, which the authors present as the first identification of these waves in a supersonic jet and as the probable closure of the loop (p. 583–586). An appendix uses temporal mixing-layer simulations to show that a thicker shear layer moves the dispersion bands slightly above the vortex-sheet curves (p. 586–588).

## Key findings
- **Flow fields** (§2.3–2.4, p. 566–570):
  - Shear layers are weakly disturbed near the exit and turbulent beyond z ≈ 2r0. Strong acoustic waves travel upstream from the impingement region, weaker as L increases (Figs 3–4, p. 566–569).
  - For L = 8–12 r0, circular waves centred near z ≈ 3r0 in the shear layers appear; the movie suggests they come from the upstream waves interacting with shear-layer structures (p. 567).
  - Centreline mean velocity stays within 3.5% of u_j to about z = L − r0, so the jets are nearly ideally expanded. A very weak shock cell ends near z ≈ 0.95 (unit missing in print; Fig. 5 shows it near z ≈ r0) (p. 568–569). A free jet at this Mach number would have its potential core end at 13.3 r0 (Lau et al. 1979), beyond every plate (p. 569).
  - Momentum thickness grows almost linearly beyond the weak shock cell to a peak at z ≈ L − r0. JetL6 spreads faster; the other three nearly coincide for z ≤ 5r0 (Fig. 5b, p. 569–570).
  - Axial turbulence peaks on the axis at z ≈ L − 0.8r0, from 21.5% (JetL6) to 13.4% (JetL12). The lip line has humps at z = 3.3r0 (22% to 18.6%) and just upstream of the plate (22.8% to 20.5%) (Fig. 6, p. 570).
  - Exit turbulence rises as L falls, 5.2%, 3.5%, 2.8% and 2.6% for L = 6–12 r0, with the same inflow forcing (p. 565). The extra disturbance comes from the feedback (my reading; the paper only states the trend).
- **Convection velocity** (§2.5, p. 571): u_c at r = r0 from cross-correlations grows from about 0.5u_j near the exit to about 0.65u_j downstream (Fig. 7a). Its average between nozzle and plate rises with L, 0.58u_j (JetL6) to 0.62u_j (JetL12), as in Krothapalli et al. (1999), and is fitted by eq. 2.1.
- **Velocity spectra** (§2.6, p. 571–572): at z = 0.25r0 on the lip line, tones below St = 1 dominate (0.455, 0.445, 0.44 and 0.38). At z = r0 a broadband hump centred at St ≈ 1.8 appears, i.e. St_θ = fδ_θ/u_j ≈ 0.014 with the exit momentum thickness, the natural initial instability of a laminar mixing layer (Michalke 1984; Gutmark & Ho 1983). At z = 4r0 the spectra are broadband, with the tones still visible for small L.
- **Tones** (§2.7, Fig. 9, Table 2, p. 572–573):
  - At z = 0, r = 2r0 many tones emerge, more than 10 dB above the broadband, with levels falling as L grows. The dominant tone is the third or fourth (bold in Table 2).
  - The first tone St₁ (0.165–0.26) is weak, especially in JetL8 and JetL10, but is kept for the loop analysis. Tones above St₄ are mostly harmonics or combinations: in JetL6, St₅ = 0.69 = 2St₂, St₆ = 0.80 = St₂ + St₃, St₇ = 0.90 = 2St₃ (p. 573).
  - Read from Fig. 9 (my reading, ±1 dB): the dominant level falls from ≈ 172 dB/St (JetL6, where 0.345 and 0.455 are about equal) to ≈ 170 (JetL8), ≈ 161 (JetL10) and ≈ 157 dB/St (JetL12).
- **Standing waves and azimuthal structure** (§2.8, Figs 10–13, Table 3, p. 573–576):
  - At the dominant tones the pressure amplitude has N_sw = 4, 5, 6 and 6 cells for L = 6, 8, 10, 12 r0, counting the two half-cells at nozzle and plate as one (Fig. 10). These are hydrodynamic–acoustic standing waves, eq. 2.2 (Panda, Raman & Zaman 1997; Gojon et al. 2016).
  - All four dominant tones are axisymmetric: the phase is the same on both sides of the jet and constant around the azimuth at z = 0 (Figs 10–11).
  - In JetL8 the four tones have 2, 3, 4 and 5 cells; St₂ is antisymmetric in the (z, r) plane and its phase at z = 0 varies by 2π around the azimuth, so it is the first helical mode, while St₁, St₃, St₄ are axisymmetric (Figs 12–13, p. 574–576). A 2π azimuthal phase ramp means a single spinning helix, not a flapping (standing ±1) mode (my reading).
- **Classical feedback model** (§3.1, Fig. 14a, p. 575–577):
  - Eq. 3.1 with ⟨u_c⟩ from eq. 2.1 "approximately" predicts the LES tones, which also agree with Krothapalli et al. (1999) or lie on the paths their data follow with L/r0. For JetL6, tones 1 and 4 match the experiment, tones 2 and 3 lie on its paths (p. 576).
  - Mode numbers are N = 2, 3, 4, 5 (JetL6, JetL8), 2, 4, 5, 6 (JetL10) and 3, 4, 5, 6 (JetL12), always equal to N_sw. The dominant tone moves from N = 4 (L = 6) to 5 (L = 8) to 6 (L = 10, 12), a staging like that of Krothapalli (1985) for a rectangular jet (p. 576–577).
  - My check (eq. 3.1 with ⟨u_c⟩ from the L/D form of eq. 2.1, see Key equations): dominant tones are under-predicted by 0.7% (JetL6), 3.1%, 5.0% and 8.0% (JetL12); the weak first tones by 15–19% (JetL6–JetL10), but JetL12 St₁ within 0.5%. Every tone sits at or above its integer-N line: N_eff = St (L/D)(u_j/u_c + u_j/a0) = N + 0.0 to 0.5.
  - Fig. 14(b): the tones fall in alternating bands, axisymmetric for St < 0.225, helical 0.225–0.355, axisymmetric 0.355–0.5, helical above 0.5 (lines drawn "arbitrarily"). The classical model cannot explain this, which motivates §3.2 (p. 577).
- **Upstream neutral acoustic modes** (§3.2, Figs 15–17, p. 577–579):
  - Cold vortex-sheet jet at M_j 1.5 (eq. 3.2). For St ≤ 1.2 there are four axisymmetric modes, labelled A1–A4, and three helical modes, H1–H3 (Fig. 15). These are Tam & Ahuja's (0, 1)–(0, 4) and (1, 1)–(1, 3) modes. **The labels clash with the A1/A2 screech stages; here A1, A2 are radial orders of the guided mode.**
  - The upstream waves lie on the part of each branch with negative slope dSt/dk (negative group velocity), from the branch maximum (upper limit, read from the curves) to the lower limit on k = −ω/a0, where the group velocity is −a0 (eqs. 3.3–3.5, p. 578–579).
  - Tones at 0.165–0.205 fall in or just above the A1 range and those at 0.365–0.455 in or just below the A2 range; helical tones at 0.255–0.345 and 0.57 lie "in most case below but close to" H1 and H2. This matches the azimuthal structure of Table 3 (Figs 16–17, p. 579). The authors attribute the misfit, larger for helical modes, to the vortex sheet (Tam & Ahuja 1990), and note that this analysis gives the nature of each tone but not which discrete frequency is selected (p. 579).
  - My calculation (Data tables) gives A1 0–0.199, A2 0.390–0.491, H1 0.343–0.344 and H2 0.638–0.646 at M_j 1.5. On this basis the axisymmetric tones 0.44–0.455 are inside A2, 0.365–0.38 are 2.5–6.4% below its lower limit, and 0.205 is 3% above the A1 maximum. Of the seven helical tones only JetL6's 0.345 lies in H1; 0.29–0.305 are 11–15%, 0.255–0.26 are 24–26% and 0.57 is 11% below their bands. The paper's own Figs 16(b)–17 draw H1 at about 0.32–0.35 (see Items to verify 2).
- **Combined model** (§3.3, Figs 18–21, p. 579–583):
  - The standing-wave condition with the acoustic wavenumber taken as −k of a guided mode gives eq. 3.6, a family of straight lines in the (kD, St) plane, one per N, depending on L. Tones are expected where these lines cross the upstream part of a mode branch.
  - JetL6: St₃ = 0.455 is at the crossing of A2 and N = 4; St₁ = 0.26, St₂ = 0.345 are on or just below H1 near N = 2, 3; St₄ = 0.57 is just below H2 near N = 5 (Fig. 18, p. 580).
  - JetL8: 0.205 on A1 near N = 2; 0.29 just below H1 near N = 3; 0.365, 0.445 near the A2/N = 4 and A2/N = 5 crossings (Fig. 19). JetL10: 0.165 on A1; 0.29, 0.375, 0.44 near the lower limits of H1 and A2; N = 2, 4, 5, 6 (Fig. 20). JetL12: 0.175 on A1; 0.255, 0.305 near the H1 lower limit; 0.38 near the A2 lower limit; N = 3–6 (Fig. 21) (p. 580–581).
  - The combination predicts frequency, N and symmetric or helical nature together (p. 581). Except for A1, whose lower limit is zero, the tones are just above or below the lower limits, where phase and group velocities are close to −a0. The authors conclude that the tones likely to appear are those closed by waves with such velocities, which is also the assumption of the classical model and may explain why eq. 3.1 works (p. 582).
  - Missing tones are explained: in JetL10 the N = 3 line crosses A1 where the group velocity differs strongly from −a0, and lies too far below H1 (Fig. 20, p. 582). My calculation puts that A1 crossing at St ≈ 0.199, at the branch maximum, where the group velocity is about zero.
  - **Eigenfunction evidence:** in JetL8 the amplitude at St₃ = 0.365 and St₄ = 0.445 is very small along r ≈ 0.5r0, but not at St₁ = 0.205. This matches the A2 and A1 eigenfunctions of Tam & Ahuja (1990) at M_j 1.4, which have and do not have a zero there (p. 583). My calculation puts the A2 node at r ≈ 0.54–0.56r0 for St 0.44–0.455, and A1 has no node inside the jet (Data tables).
- **Upstream waves seen in the LES** (§3.4, Figs 22–25, p. 583–585):
  - JetL12 pressure over 0 ≤ z ≤ 4r0, twelve frames 0.28r0/u_j (0.22r0/a0) apart: a weak shock cell forms near the exit, KH waves travel downstream in the shear layers, and waves "clearly" propagate upstream inside the supersonic core, like oblique waves trapped in the jet column, some symmetric (frames a–d), some antisymmetric (h–l) (Fig. 22, p. 583–584). They are also visible in the movie's density fields.
  - On the axis just downstream of the shock cell a pressure peak moves from z = 2.16r0 to 1.94r0, 1.66r0 and 1.40r0 over four frames, on average 0.25r0 per 0.22r0/a0, "close to the ambient speed of sound" (Fig. 23, p. 583). My arithmetic gives |c| ≈ 1.13a0 from these numbers.
  - Space–time Fourier transform of pressure between z = 0 and L − 2r0 on the axis (Fig. 24): high levels follow bands resembling A1, A2, A3, slightly above the vortex-sheet curves (attributed to finite thickness, Appendix), and peak on k = −ω/a0 at the axisymmetric tones St₁ and St₄. Levels at the helical St₂, St₃ are weak on the axis, as expected (p. 583).
  - At r = r0 (Fig. 25), split into n = 0 and n = 1, levels are lower than on the axis, consistent with the eigenfunctions, but again peak on k = −ω/a0 at St₁, St₄ (n = 0) and St₂, St₃ (n = 1). So axisymmetric and helical waves travel upstream in the shear layers at phase speed a0 and "very likely" close the loop just downstream of the exit, exciting the instability waves of Fig. 8 (p. 583–585).
- **Conclusion** (§4, p. 585–586): the loop in ideally expanded impinging jets is closed by acoustic (instability) waves of the jet travelling upstream at a0 inside the flow, "but also outside for supersonic jets (Tam & Ahuja 1990)". A tone is likely where the wave analysis allows upstream waves with group and phase velocity very close to a0.
- **Shear-layer thickness** (Appendix, Figs 26–29, p. 586–588): temporal axisymmetric mixing layers at M 1.5, Re 6 × 10⁴, with tanh profiles of δ_θ = 0.016r0 (exit value) and 0.12r0 (about mid-gap in JetL10 and JetL12). For the thin layer the k–ω bands are centred on the vortex-sheet curves; for the thick layer they lie slightly above, especially for kD < −10, consistent with Tam & Ahuja (1990) at M_j 0.8, and very like JetL12's Fig. 24. The vortex sheet "remains a good first approximation" (p. 588).

## Setup / method
- **Configuration** (§2.1, Table 1, p. 564–565): straight pipe nozzle of radius r0 (diameter D), width l = 1.25r0 (Figs 4 and 10 show an outer body of about this radius tapering to the lip; my reading), lip 0.1r0 thick. Ambient T0 = 293 K, p0 = 10⁵ Pa; stagnation temperature equal to ambient. Exit conditions and L/D ratios match Krothapalli et al. (1999); the four distances were chosen for the available acoustic data and their regular spacing (p. 564).

| Case | L | n_r | n_θ | n_z | Points | h/D |
|---|---|---|---|---|---|---|
| JetL6 | 6r0 | 500 | 512 | 791 | 202 × 10⁶ | 3 |
| JetL8 | 8r0 | 500 | 512 | 803 | 205 × 10⁶ | 4 |
| JetL10 | 10r0 | 500 | 512 | 869 | 222 × 10⁶ | 5 |
| JetL12 | 12r0 | 500 | 512 | 936 | 240 × 10⁶ | 6 |

  Table 1 (p. 565); the product n_r n_θ n_z checks against the totals to within rounding (e.g. 500 × 512 × 791 = 202.5 × 10⁶). h/D added.
- **Exit and inflow** (p. 564–565): M_j = u_j/a_j = 1.5, Re_j = u_j D/ν_j = 6 × 10⁴. Blasius laminar boundary-layer profile of thickness 0.15r0 at the pipe inlet, with a Crocco–Busemann density profile. Low-amplitude random vortical disturbances, uncorrelated in azimuth, are added in the pipe boundary layer at z = −r0/2 with strength α = 0.03 (Bogey, Marsden & Bailly 2011b). The exit mean profiles are Blasius-like with δ_θ = 0.016r0 in all cases, while the peak exit turbulence is 5.2%, 3.5%, 2.8% and 2.6% for JetL6–JetL12 (Fig. 1).
- **Numerics** (§2.2, p. 566–567):
  - Compressible Navier–Stokes in cylindrical coordinates (r, θ, z); explicit six-stage Runge–Kutta in time; low-dispersion explicit eleven-point finite differences in space (Bogey & Bailly 2004; Berland et al. 2007).
  - Sixth-order eleven-point selective filter each step, which removes grid-to-grid oscillations and drains energy near the grid cut-off, acting as the subgrid model (relaxation filtering; Bogey & Bailly 2006, 2009; Fauconnier et al. 2013; Kremer & Bogey 2015).
  - Shock capturing: a conservative second-order filter whose magnitude is set each step by a shock sensor (Bogey, de Cacqueray & Bailly 2009), used before for an overexpanded M_j 3.3 jet.
  - Tam & Dong (1994) radiation conditions at inflow and lateral boundaries; sponge zone (grid stretching plus Laplacian filtering) for r ≥ 15r0; axis treated as in Mohseni & Colonius (2000), first point at Δr/2, with reduced effective resolution near the axis to raise the time step (Bogey, de Cacqueray & Bailly 2011a). Adiabatic nozzle walls and plate.
  - Grid (Fig. 2): Δz_min = 0.0075r0 at the lip and the plate, Δz_max between them 0.015r0 (JetL6) or 0.03r0; Δr_min = 0.0075r0 at r = r0, Δr_max = 0.06r0 for 5r0 ≤ r ≤ 15r0; stretching below 1%. Δr_max = 0.06r0 propagates sound up to St = 6.1.
  - 100 000 iterations after the transient, Δt = 0.005r0/u_j, i.e. 500r0/u_j (p. 566). That is about 40 cycles of St 0.165 and 95 of St 0.38 (my arithmetic, period 2r0/(St u_j)). Meshes derive from the underexpanded impinging LES of Gojon & Bogey (2017).
  - My derived values (cold jet, γ = 1.4): T_j = 202 K, a_j/a0 = 0.8305, u_j/a0 = 1.2457, u_j ≈ 427 m/s; isentropic NPR ≈ 3.67. The paper gives no dimensional diameter.
- **Post-processing**:
  - Convection velocity from cross-correlations of axial velocity at r = r0 (p. 571).
  - Velocity and pressure spectra on the lip line and at (z, r) = (0, 2r0) (Figs 8–9). Segment length, window and averaging are not stated.
  - Temporal Fourier transform at the tone frequencies of (z, r)-plane pressure fields stored every 50th step (Δt_s = 0.25r0/u_j, so about 2000 snapshots; Nyquist St = 4 and single-block ΔSt = 0.004, my arithmetic), for amplitude and phase maps (Figs 10, 12), and of the z = 0 plane for azimuthal phase (Figs 11, 13) (p. 573–574). This is a single-frequency DFT, equivalent to the leading SPOD mode only for one block; no averaging over blocks.
  - Frequency–wavenumber spectra of pressure along r = 0 and r = r0 between z = 0 and L − 2r0, the latter split into azimuthal modes n = 0 and 1; only k < 0 shown (Figs 24–25, p. 583–585). Only JetL12 is shown. The 10r0 (5D) window gives ΔkD ≈ 1.26 (my arithmetic); windowing is not stated.
  - All these need time-resolved, spatially resolved fields; the k–ω split needs the field along a line, with the azimuthal split needing the full ring.
- **Vortex-sheet model** (§3.2, p. 577–579): Tam & Ahuja (1990) uniform jet of radius r0 bounded by a vortex sheet (printed "vortex street", p. 577), inviscid and linear; neutral waves with real k and ω (eq. 3.2). Same M_j and temperature as the LES. Branches are drawn as grey-scale maps (Fig. 15). Allowable ranges: upper limits = branch maxima from the curves; lower limits from eqs. 3.4 (A modes) and 3.5 (H modes) on k = −ω/a0. Fig. 16 plots the ranges for M_j 1–2.
- **Combined model** (§3.3, p. 579): eq. 2.2 with N_sw = N, k_p = 2πf/⟨u_c⟩ and k_a = −k (k the guided-mode wavenumber) gives eq. 3.6. Its lines depend on L, the dispersion relations do not, so both are drawn in one (kD, St) plane for each L (Figs 18–21). The first seven feedback modes are drawn. ⟨u_c⟩ is presumably the eq. 2.1 value (not stated).
- **Temporal mixing layers** (Appendix, p. 586–588): same numerics as Bogey (2017, AIAA 2017-0925). Cylindrical grid to z = 500r0 and r = 10r0, n_r × n_θ × n_z = 279 × 256 × 20 000, Δz = 0.025r0. Random pressure of at most 1 Pa added at t = 0 for r ≤ 0.5r0 to excite the acoustic modes. 815 iterations to t = 6.25r0/u_j (δ_θ = 0.016r0) and 1950 to 15r0/u_j (0.12r0); the layers are still laminar. Space–time FFT of pressure on r = 0, 0.1, …, 0.5r0, full record, no window, spectra averaged over the six radii, n = 0 and 1. The short records give a frequency resolution of only ΔSt ≈ 0.32 and 0.13 (my arithmetic, 2r0/T), comparable with the band shifts being judged.
- **Modelling and simulation context** (p. 563–564): earlier impinging-jet computations were axisymmetric or 3-D Euler (Sakakibara & Iwamoto 2002), axisymmetric Navier–Stokes (Kim & Park 2005; Loh 2005, staging with L and NPR) and 3-D LES of perfectly, over- and underexpanded jets (Dauptain et al. 2010, 2012; Brès et al. 2011; Uzun et al. 2013, with DMD; Hildebrand & Nichols 2015, with global stability about an LES base flow; Gojon et al. 2016; Gojon & Bogey 2017). Dauptain et al. (2012) proposed an improved loop model for underexpanded jets. Henderson et al. (2005) and Gojon & Bogey (2017) link the loop in non-ideally expanded jets to a Mach disk just upstream of the plate; Kuo & Dowling (1996) to a resonance between Mach disk and plate (p. 563).

## Key equations
All read from rendered pages; my checks follow.

- **Average convection velocity** (eq. 2.1, p. 571):
  $$\langle u_c\rangle(L/r_0)=0.65u_j-(0.65u_j-0.5u_j)\,\frac{1}{1+0.15(L/r_0)^2},$$
  tending to 0.65u_j for large L and 0.5u_j for small L.
  > **Check (mine):** as printed this gives 0.627, 0.636, 0.641, 0.643u_j at L = 6–12 r0, not the 0.58–0.62u_j of the text and Fig. 7(b). With **(L/D)²** in place of (L/r0)² it gives 0.586, 0.606, 0.618, 0.627u_j and also matches the dashed curve at L = 4r0 (0.556) and 14r0 (0.632). The printed r0 is probably a typo for D.
- **Standing wave** (eq. 2.2, p. 574): $k_{sw}=k_p+k_a=\dfrac{2\pi N_{sw}}{L}$, with k_p, k_a the hydrodynamic and acoustic wavenumbers; the two half-cells at nozzle and plate count as one cell.
- **Classical loop** (eq. 3.1, p. 575, Ho & Nosseir 1981): $\dfrac{L}{\langle u_c\rangle}+\dfrac{L}{a_0}=\dfrac{N}{f}$, so $St=\dfrac{N\,(D/L)}{u_j/\langle u_c\rangle+u_j/a_0}$ (my rearrangement), with no phase lag.
- **Vortex-sheet dispersion relation for neutral waves** (eq. 3.2, p. 578; Tam & Ahuja 1990 eq. 16):
  $$|\xi_+|J_n(|\xi_-\alpha|)\frac{K_{n-1}(|\xi_+\alpha|)+K_{n+1}(|\xi_+\alpha|)}{K_n(|\xi_+\alpha|)}+\frac{C^2|\xi_-|}{(a_0C/a_j-M_j)^2}\big[J_{n-1}(|\xi_-\alpha|)-J_{n+1}(|\xi_-\alpha|)\big]=0,$$
  with C = ω/(ka0), ξ₊ = |C² − 1|^{1/2}, ξ₋ = |(a0C/a_j − M_j)² − 1|^{1/2}, α = kr0. St = fD/u_j = Cα/(π u_j/a0).
- **Lower limit line** (eq. 3.3, p. 578): $k=-\omega/a_0$ (C = −1), where the group velocity is −a0.
- **Axisymmetric lower limits** (eq. 3.4, p. 578): $St_{A0}^{min}=0$ for A1, and for the higher modes
  $$St_{Ai}^{min}=\frac{\sigma_i}{\pi M_j(a_j/a_0)\,|(a_0/a_j+M_j)^2-1|^{1/2}},$$
  with σ_i the ith root of J₁. (The paper indexes A2 with σ₁: my check below.)
- **Helical lower limits** (eq. 3.5, p. 579): roots of $2J_1(|\bar\xi_-\alpha|)+\dfrac{|\bar\xi_-\alpha|}{((a_0/a_j)+M_j)^2}\big(J_0(|\bar\xi_-\alpha|)-J_2(|\bar\xi_-\alpha|)\big)=0$, obtained from 3.2 as k → −ω/a0. ξ̄₋ is not defined in the paper; it is ξ₋ at C = −1, i.e. |(a0/a_j + M_j)² − 1|^{1/2} (Tam & Ahuja 1990, eq. 19). The text says "using (3.5) and (3.5)", a typo for (3.4) and (3.5).
- **Combined model** (eq. 3.6, p. 579): $f=\dfrac{N\langle u_c\rangle}{L}+k\dfrac{\langle u_c\rangle}{2\pi}$, i.e. $St=\dfrac{\langle u_c\rangle}{u_j}\Big(N\dfrac{D}{L}+\dfrac{kD}{2\pi}\Big)$ (my non-dimensional form); k < 0 for upstream waves.

> **My checks** (cold jet: a_j/a0 = (1 + 0.2M_j²)^{−1/2} = 0.8305; eq. 3.2 solved with SciPy on a kD grid of 0.02):
> - Eq. 3.6 follows from eq. 2.2 with the stated substitutions.
> - **On the line k = −ω/a0, eq. 3.6 reduces exactly to eq. 3.1** (substitute kD = −2π St u_j/a0). So the combined model differs from the classical one only through how far a tone sits from the lower limit. Along the whole upstream part of each branch at M_j 1.5 the phase speed is 0.93–1.00a0 (A2: C = −0.93 at the maximum; H1: −0.977), so frequency alone barely distinguishes in-jet from external closure here. The authors make the related point that the tones are near the lower limits (p. 582).
> - Eq. 3.4 gives A2, A3, A4 lower limits St 0.390, 0.714, 1.035 at kD −3.05, −5.59, −8.10, matching the dots of Fig. 15(a). Eq. 3.5 gives H2 and H3 at 0.638 (kD −4.99) and 0.939 (−7.35), close to the dots of Fig. 15(b) (≈ 0.62–0.63 and 0.93–0.94, read from figure).
> - **H1 does not match.** Eq. 3.5 gives H1 at St 0.343, kD −2.68, and the traced H1 branch ends there with a maximum of 0.344 at kD −2.76. Fig. 15(b) draws the H1 curve reaching about 0.345 where it meets the dashed line, as I compute, but puts the H1 dot at about 0.31–0.32 (kD ≈ −2.45), below the curve's end. Figs 16(b) and 17 draw the H1 range as about 0.32–0.35 at M_j 1.5. The paper's H1 lower limit is therefore about 8% below what its own eq. 3.5 gives.
> - The upstream bands from my traced branches: A1 0–0.199 (maximum at kD −1.76), A2 0.390–0.491 (max at kD −4.14), A3 0.714–0.795, H1 0.343–0.344, H2 0.638–0.646, H3 0.939–0.952. These agree with Figs 16(a) and 17 for A1 and A2 (≈ 0–0.20 and 0.38–0.49 read from Fig. 17).
> - Radial node of the A2 pressure eigenfunction J₀(|ξ₋α|r/r0): r ≈ 0.58r0 at St 0.42, 0.55r0 at 0.445, 0.54r0 at 0.455 (upstream side); A1 has no node inside r0 at St 0.165–0.20. This supports the r ≈ 0.5r0 minimum argument of p. 583.

## Data tables
**Tone Strouhal numbers, standing-wave cells and azimuthal nature** (Tables 2–3, p. 573, 576; St = fD/u_j; dominant tone in bold; N = N_sw):

| Case | St₁ | St₂ | St₃ | St₄ |
|---|---|---|---|---|
| JetL6 (L/D 3) | 0.26, N 2, helical | 0.345, N 3, helical | **0.455**, N 4, axisym. | 0.57, N 5, helical |
| JetL8 (L/D 4) | 0.205, N 2, axisym. | 0.29, N 3, helical | 0.365, N 4, axisym. | **0.445**, N 5, axisym. |
| JetL10 (L/D 5) | 0.165, N 2, axisym. | 0.29, N 4, helical | 0.375, N 5, axisym. | **0.44**, N 6, axisym. |
| JetL12 (L/D 6) | 0.175, N 3, axisym. | 0.255, N 4, helical | 0.305, N 5, helical | **0.38**, N 6, axisym. |

> The text-layer extraction breaks Table 3's JetL12 row across two lines; check that St₃ is "N_sw = 5, helical".

**My checks against the models** (vortex-sheet bands at M_j 1.5 cold, above; ⟨u_c⟩ from eq. 2.1 with L/D: 0.586, 0.606, 0.618, 0.627u_j):

| Tone | Nature | Band check (my calc) | Eq. 3.1 St for its N | Eq. 3.6 crossing on the upstream branch |
|---|---|---|---|---|
| L6 0.26 | helical | 24% below H1 (0.343) | 0.226 (N 2) | none on H1 |
| L6 0.345 | helical | in H1 (0.343–0.344) | 0.339 (N 3) | — |
| L6 0.455 | axisym. | in A2 | 0.452 (N 4) | A2 N 4 at 0.451 |
| L6 0.57 | helical | 11% below H2 (0.638) | 0.565 (N 5) | none on H2 |
| L8 0.205 | axisym. | 3% above A1 max (0.199) | 0.173 (N 2) | A1 N 2 at 0.172 |
| L8 0.29 | helical | 15% below H1 | 0.259 (N 3) | — |
| L8 0.365 | axisym. | 6.4% below A2 (0.390) | 0.345 (N 4) | none (below A2) |
| L8 0.445 | axisym. | in A2 | 0.432 (N 5) | A2 N 5 at 0.432 |
| L10 0.165 | axisym. | in A1 | 0.140 (N 2) | A1 N 2 at 0.140 |
| L10 0.29 | helical | 15% below H1 | 0.279 (N 4) | — |
| L10 0.375 | axisym. | 3.8% below A2 | 0.349 (N 5) | none (below A2) |
| L10 0.44 | axisym. | in A2 | 0.419 (N 6) | A2 N 6 at 0.419 |
| L12 0.175 | axisym. | in A1 | 0.176 (N 3) | A1 N 3 at 0.176 |
| L12 0.255 | helical | 26% below H1 | 0.235 (N 4) | — |
| L12 0.305 | helical | 11% below H1 | 0.293 (N 5) | — |
| L12 0.38 | axisym. | 2.6% below A2 | 0.352 (N 6) | none (below A2) |

> The A1 branch could not be traced for |kD| < 0.86 (C is exponentially close to −1 there), so crossings at very low St are missing. The A2 crossings equal the eq. 3.1 values to three digits because C ≈ −1 on that part of the branch. Unused crossings (e.g. A2 with N = 7 at L = 10r0, St 0.484; N = 8 at L = 12r0, St 0.468) predict tones that do not appear.

**Mean convection velocity** (Fig. 7b, p. 571; read from figure except the end values, which are in the text): ⟨u_c⟩/u_j = 0.58 (L6), ≈ 0.607 (L8), ≈ 0.615 (L10), 0.62 (L12; ≈ 0.625 on the figure).

**Flow statistics** (text, p. 565, 570): exit peak u′_z/u_j 5.2, 3.5, 2.8, 2.6%; axis peak 21.5% (L6) to 13.4% (L12) at z ≈ L − 0.8r0; lip-line peaks 22–18.6% at z = 3.3r0 and 22.8–20.5% near the plate.

## Figures worth remembering
- **Fig. 1 (p. 566):** exit mean and r.m.s. axial-velocity profiles; same Blasius mean, exit turbulence rising as L falls.
- **Figs 3–4 (p. 568–569):** 3-D density isosurfaces and (z, r) density plus pressure snapshots for all four jets; strong upstream waves from the impingement region, wall jets on the plate.
- **Fig. 7 (p. 571):** local u_c(z) on the lip line and ⟨u_c⟩(L) with eq. 2.1.
- **Fig. 9 (p. 573):** near-nozzle SPL spectra at (0, 2r0) with the multi-tone structure.
- **Fig. 10 (p. 574):** amplitude and phase of pressure at the dominant tones: standing-wave cells (4, 5, 6, 6) and outward upstream wavefronts. **The cleanest picture of the loop.**
- **Fig. 12 (p. 575):** JetL8's four tones with 2–5 cells; the helical St₂ is antisymmetric.
- **Fig. 14 (p. 577):** (a) LES tones, Krothapalli et al. (1999) data and eq. 3.1 lines N = 1–10 against L/r0; (b) the alternating axisymmetric/helical bands.
- **Fig. 15 (p. 578):** vortex-sheet branches A1–A4 and H1–H3 at M_j 1.5 with lower-limit dots on k = −ω/a0.
- **Figs 16–17 (p. 580):** allowable ranges against M_j (1–2) and against L/r0 with the tones. **The paper's main model–LES comparison.**
- **Figs 18–21 (p. 581–582):** combined model in the (kD, St) plane for each L.
- **Fig. 22 (p. 584):** JetL12 pressure sequence with arrows on upstream waves inside the core.
- **Fig. 24 (p. 585):** k–ω spectrum on the axis of JetL12 with A1–A3 curves: **first direct view of guided-mode bands in a supersonic (impinging) jet.**
- **Fig. 25 (p. 585):** k–ω spectra at r = r0 for n = 0 and 1 (panel b is labelled with H1–H3, although the caption says axisymmetric modes).
- **Figs 28–29 (p. 588):** temporal mixing-layer k–ω spectra for δ_θ = 0.016r0 and 0.12r0 against the vortex-sheet curves.

## Notation
- r0, D = 2r0: pipe radius and diameter; L: nozzle-to-plate distance; l: nozzle width; z, r, θ: axial, radial, azimuthal coordinates (z = 0 at the exit).
- u_j, a_j, ν_j: jet velocity, sound speed, kinematic viscosity at the exit; a0, T0, p0: **ambient** sound speed, temperature, pressure (T0 is ambient here, not stagnation). M_j = u_j/a_j; Re_j = u_j D/ν_j; St = fD/u_j; St_θ = fδ_θ/u_j.
- δ_θ: shear-layer momentum thickness; α: forcing strength of the inflow disturbances (also α = kr0 in eq. 3.2).
- u_c, ⟨u_c⟩: local and nozzle-to-plate-averaged convection velocity.
- N: feedback-mode number; N_sw: number of standing-wave cells; k_sw, k_p, k_a: standing-wave, hydrodynamic and acoustic wavenumbers.
- k, ω: axial wavenumber and angular frequency of a guided mode (k < 0 upstream); C = ω/(ka0); ξ±: radial wavenumbers; ξ̄₋: ξ₋ at C = −1; σ_i: roots of J₁; n: azimuthal order.
- A1–A4, H1–H3: axisymmetric and first-helical upstream neutral acoustic modes in increasing radial order, = Tam & Ahuja's (0, 1)–(0, 4) and (1, 1)–(1, 3). Not the screech stages A1/A2.
- St₁–St₄: the first four tones of each jet in increasing frequency.

## Relevance to this project
This is the LES half of the "guided-mode school" for supersonic impinging jets, the counterpart the group's work sets itself against: [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md) (p. 9–10, 75, 81, 89) contrasts its external, freely propagating closure with "Gojon/Bogey's LES", and [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 33) and [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (p. 3–4, 8) cite it in the reconciliation. It is the first impinging-jet LES note in the library (the topic page notes that such LES appeared only as citations). The experiments are not the authors' own; the validation is tone frequencies from Krothapalli et al. (1999), read off Fig. 14(a).

**What the paper establishes, and what it does not**
- **Established:** a converged multi-tone impinging-jet LES whose tones follow the experimental staging paths, standing-wave cell counts that equal the Powell mode number, a clean axisymmetric/helical ordering of tones by St, and direct evidence of upstream waves inside a supersonic core (Figs 22–24). The core waves are new: in a supersonic core a plane sound wave cannot travel upstream (u_j − a_j > 0), so upstream energy on the axis must be an oblique, duct-like wave trapped by the shear layer, exactly the guided-mode picture of [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 19–22) (my reasoning; the paper says only that they "look like oblique waves trapped inside the jet column", p. 583).
- **Frequencies do not discriminate.** Eq. 3.6 reduces to eq. 3.1 on k = −ω/a0, and the upstream branches at M_j 1.5 travel at 0.93–1.00a0 throughout (my checks). The authors concede the classical model works because the tones sit where the guided waves move at about a0 (p. 582). The discriminating evidence is therefore the azimuthal banding, the r ≈ 0.5r0 node and the k–ω spectra, not the frequency fits.
- **The banding fits the axisymmetric tones, not the helical ones.** By my vortex-sheet calculation (Data tables) every axisymmetric tone is inside A1 or A2 or within 6.4% below the A2 lower limit, but six of seven helical tones lie 11–26% below H1 or H2. H1 at M_j 1.5 is almost a single frequency (0.343–0.344). The paper's own H1 range (≈ 0.32–0.35 in Figs 16–17) is wider than its eq. 3.5 allows (Items to verify 2), which makes the helical misfit look smaller.
  - The authors blame the vortex sheet (p. 579, 582). [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md) (p. 16–17) does find that thickening (R/θ < 30) lowers the (0, 2) branch point and saddle, and here R/δ_θ ≈ 8 mid-gap. That could bring the 0.365–0.38 axisymmetric tones inside A2. But the paper's own Appendix reports thick-layer bands *above*, not below, the vortex-sheet curves (most clearly for kD < −10, far from the lower limits, and with ΔSt ≈ 0.13 resolution), so no computation in the paper moves H1 down by 11–26%.
  - The same test applied to the group's thesis tones (tam-1990 note: helical 0.241–0.255 and toroidal 0.383–0.385 at M_j 1.42, z/D 5) gave the same pattern, helical well below (1, 1) and toroidal just below (0, 2). The LES at L/D 5–6 has nearly the same two families (helical 0.255–0.29, axisymmetric 0.375–0.44). So the LES and the thesis may differ less than the "two schools" framing suggests: on band evidence alone, guided closure is well supported for the axisymmetric tones in both, and not for the helical tones in either (my synthesis).
  - The helical k–ω evidence (Fig. 25b) is taken at r = r0, the lip line, where grazing external sound travelling upstream at a0 would also lie on k = −ω/a0. With ΔkD ≈ 1.26 for the 5D window, C between about −0.8 and −1.3 cannot be resolved at St ≈ 0.3 (my arithmetic). Fig. 25(b) therefore does not separate a guided H1 wave from external sound, whereas the axis spectrum (Fig. 24) does show in-core waves for the axisymmetric tones.
- **Where the upstream wave is born.** The paper says the waves "seem to be generated in the region of jet impingement" (p. 566–567) and does not locate the source inside the core. [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 33) reads it as an in-core source at the impingement point, so the guided mode is required; that is an interpretation, not a result of this paper. The jets are ideally expanded, with no stand-off shock or Mach disk of note, so the stand-off-shock leakage and wall-jet shocklet of [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md) (p. 109–136) and [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (p. 14–24) may simply be absent. The two schools may be studying different source regimes (nearly shock-free vs underexpanded with a stand-off shock), which fits the source-location reconciliation on the impinging-jets topic page.
- **A leakage-like secondary source?** The circular waves centred near z ≈ 3r0 in the shear layers, from upstream waves meeting shear-layer structures (p. 567), resemble shock leakage at a vortex saddle ([edgington-mitchell-2021-generation-screech-tones-shock-leakage](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md), p. 23–27): Manning & Lele's model treats a shock as a standing acoustic wave, so a trapped in-core wave could escape past the sonic line in the same way (my speculation). It would make the guided mode and the radiated near-nozzle field two parts of one wave, which bears on the topic page's "guided or free-stream closure" question. Not tested.
- **Phase lag.** Eq. 3.1 has no lag and works within 1–8% for the dominant tones, consistent with the p = 0 attributed to Gojon et al. (2016) in [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md) (p. 122, 126). The systematic under-prediction (N_eff − N = 0 to +0.5, my check) is the same sign a negative lag would correct, but it could equally be a 2–8% bias in ⟨u_c⟩; the paper does not separate them.
- **Agreements with other notes:**
  - Standing waves with N_sw = N: the impinging analogue of the KH–sound standing wave of [panda-1999](panda-1999-experimental-investigation-screech-noise-generation.md) and of the Wagner standing wave cited in [tam-1990](tam-1990-theoretical-model-discrete-tone-impinging-jets.md) (p. 85).
  - Upper-limit/lower-limit bands: the same branch-maximum-to-branch-point bands as [tam-1990](tam-1990-theoretical-model-discrete-tone-impinging-jets.md) (p. 77, 80–81), [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) (p. 9–10) and [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md). At M_j 1.5 the A2 = (0, 2) band (0.390–0.491) is the one that brackets A1/A2 screech in those papers.
  - In-core k–ω bands follow [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md) (cited here as Towne et al. 2016) and [schmidt-2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md) for subsonic free jets; this paper extends that to a supersonic jet.
  - Tam & Ahuja predicted helical resonance at supersonic speed and axisymmetric resonance at L/D 6 for M_j 1.4 (tam-1990 note, p. 70–71, 82). Here L/D 6 is still dominated by an axisymmetric tone, with helical tones alongside.
  - Bands only, no gain: like [gojon-2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md) (p. 25–26) for rectangular screech, the model gives no growth rate or receptivity. The complex models of [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md) and [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) are the next step for picking which allowed tone wins.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Time-resolved fields** (LES, TR schlieren): single-frequency DFT maps at each tone give the standing-wave cells and the azimuthal phase (needs time resolution, a known tone and, for azimuth, a ring of data). SPOD at the tone would add convergence and separate the coexisting tones' coherent structures; SPOD with a k_x < 0 split is the modern form of Figs 24–25.
- **k–ω spectra** need long lines of time-resolved data. For TR schlieren the line-of-sight integral mixes axis and shear layer, so a centre-line row is not the axis pressure; SPOD modes plus a k_x split, or Abel-inverted fields, would be needed. The 5D window limits ΔkD to about 1.3; longer windows or wavenumber fitting are required to tell C = −0.93 from −1.
- **Non-time-resolved PIV:** the POD-pair k_x split of [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) is the counterpart, and the radial-node test (A2 node at r ≈ 0.54–0.58r0 at M_j 1.5, my calc) is a cheap check on any upstream POD/SPOD component.
- **Multimodality and switching:** four tones coexist in each 500r0/u_j record (40–95 cycles), and JetL6 has a sum tone St₆ = St₂ + St₃ (helical + axisymmetric, p. 573). The paper treats them as stationary. Whether they coexist or alternate is untested; BMD or bicoherence of the sum tone would test coupling, and SPOD → reconstruction → HPOD per tone would give their instantaneous amplitudes over the record, as proposed on the impinging-jets topic page for the thesis's thick-lip tones.

**Modelling side and the PyFR staging LES**
- **Numerics recipe:** relaxation-filter ILES with a sensor-switched shock filter, at Re 6 × 10⁴, laminar exit layer (δ_θ = 0.016r0) and weak random forcing, reproduces measured tone frequencies and staging paths. This is indirect support for the reduced-Re, laminar-exit ILES of `Simulations/PyFR_Staging_Continuation/` (simulation-methods open question), though only frequencies were validated, not levels.
- **Feedback raises exit turbulence** (2.6% → 5.2% as L falls) with fixed forcing: in a resonant LES the exit state is an output, so it should be monitored, not just set.
- **Diagnostics to copy:** k–ω spectra on the axis and lip line between the nozzle and the end of the first few shock cells would show the (0, 2) guided mode in the A1/A2 screech LES directly, and track how its band position relative to the KH–shock resonance changes across the staging point. An azimuthal n = 0/1 split separates A and C/B stages.
- **Reusable tool:** eqs. 3.2, 3.4, 3.5 with SciPy (the same code as for the tam-1990 note) give the bands for any M_j and temperature ratio.

**Rocket noise:** cold, ideally expanded M 1.5 jets on a normal plate at 3–6 D produce tones more than 10 dB above broadband; the full-scale question on the impinging-jets topic page (why pads show no tones) needs the hot-jet version of this band analysis, where a_j/a0 > 1 moves all lower limits (eq. 3.4).

**Candidates for `/add-paper`:** Krothapalli, Rajkuperan, Alvi & Lourenco 1999 (JFM 392, 155–181; the validation data); Gojon, Bogey & Marsden 2016 (JFM 808, 90–115; planar M 1.28 impinging LES, the method's origin); Gojon & Bogey 2017 (AIAA J. 55(6), 1792–1804; underexpanded impinging round jets, the case [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) p. 8 discusses); Tam & Norum 1992 (AIAA J. 30, 304–311; planar band analysis); Henderson, Bridges & Wernet 2005 (JFM 542); Nosseir & Ho 1982 (JFM 116); Hildebrand & Nichols 2015 (AIAA 2015-2212; global stability of an impinging-jet LES base flow); Uzun et al. 2013 (AIAA J. 51; DMD); Dauptain et al. 2012 (AIAA J. 50); Davis et al. 2015 (Exp. Fluids 56; PSP); Mitchell, Honnery & Soria 2012 (J. Vis. 15; group high-speed schlieren of impinging jets); Nichols & Lele 2011 (JFM 669); Bogey 2017 (AIAA 2017-0925, temporal jet DNS).

**Items to verify against the PDF**
1. Eq. 2.1 (p. 571) printed with (L/r0)²; only (L/D)² reproduces the 0.58–0.62u_j of the text and the curve of Fig. 7(b).
2. H1 lower limit: dot at St ≈ 0.31–0.32 (kD ≈ −2.45) in Fig. 15(b) and range ≈ 0.32–0.35 in Figs 16(b)–17, against 0.343 (kD −2.68) from eq. 3.5 and the end of the plotted H1 curve (my calc and reading). H2 dot ≈ 0.62–0.63 against 0.638.
3. "using (3.5) and (3.5)" (p. 579) for (3.4) and (3.5); ξ̄₋ undefined in eqs. 3.4–3.5; "vortex street" (p. 577) for vortex sheet.
4. Fig. 25(b) and Figs 28–29 captions say "axisymmetric neutral acoustic wave modes" for the n = 1 panels labelled H1–H3.
5. "z = 0.95" without unit (p. 569); Fig. 5 suggests z ≈ r0.
6. Fig. 23 numbers give 0.25r0 per 0.22r0/a0 ≈ 1.13a0, described as "close to" a0 (p. 583); a neutral trapped wave needs |C| ≤ 1.
7. Fig. 22 frames are 0.28r0/u_j apart, not a multiple of the 0.25r0/u_j storage interval of §2.8 (p. 573, 583): a separate output?
8. Spectral parameters for Figs 8–9 and 24–25 (segments, windows, averaging) are not stated; the appendix uses no window and records of 6.25 and 15r0/u_j (ΔSt ≈ 0.32, 0.13).
9. Cross-references: turbulence intensities are in §2.4, cited as §2.5 (p. 572); Table 2 is in §2.7, cited as §2.6 (p. 579).
10. Values read from figures: Fig. 7(b) at L = 8, 10r0; Fig. 9 levels; Fig. 17 band edges; Krothapalli points in Fig. 14(a).
11. Table 3 JetL12 St₃ cell (text layer splits the row).
