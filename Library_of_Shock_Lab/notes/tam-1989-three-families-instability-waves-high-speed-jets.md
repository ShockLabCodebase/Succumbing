---
key: "tam-1989-three-families-instability-waves-high-speed-jets"
title: "On the three families of instability waves of high-speed jets"
authors: ["Tam, Christopher K. W.", "Hu, Fang Q."]
year: 1989
type: "article"
venue: "JFM 201, 447–483"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "201", "pages": "447--483"}
doi: "10.1017/S002211208900100X"
arxiv: ""
pdf: "linear-models/Tam-Hu_1989_On-The-Three-Families-Of-Instability-Waves-Of-High-Speed-Jets.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["model-only"]
methods: ["LSA-local", "vortex-sheet"]
flow: ["round-jet", "supersonic", "subsonic", "ideally-expanded", "heated"]
phenomena: ["KH-wavepackets", "guided-jet-mode", "Mach-wave-radiation", "compressibility-effects", "directivity", "screech"]
params: {"M_j": "0.6–5.0 (cases 0.6, 1.5, 1.6, 2.0, 2.1, 3.0, 4.0, 4.4, 4.6, 5.0)", "T_j/T_∞": "'cold' for most cases (consistent with T_0j = T_∞); 0.2–3 in Fig. 9", "b/R_j": "0–0.6 (half-Gaussian half-width)", "n": "0, 1, 2", "St": "2fR_j/u_j = 0.1–2", "gas": "air; nitrogen and helium jets in Figs 19–20"}
topics: ["linear-models", "screech-frequency-and-global-modes", "jet-noise-mechanisms", "rocket-noise-models"]
related: ["tam-1990-theoretical-model-discrete-tone-impinging-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "jordan-2018-jet-flap-interaction-tones", "nogueira-2024-guided-jet-waves", "nogueira-2021-absolute-instability-shock-containing-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "michalke-1984-survey-jet-instability-theory", "papamoschou-1988-compressible-turbulent-shear-layer", "kellison-2026-falcon-9-noise-two-campaigns", "tam-1995-supersonic-jet-noise", "schmidt-2018-spectral-analysis-jet-turbulence", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: ["michalke-1984-survey-jet-instability-theory", "tam-1986-bbsan-screech-relationship"]
summary: "Vortex-sheet + finite-thickness LSA: KH, supersonic (u_j>a_j+a_o, c=u_j/(1+a_j/a_o)) and subsonic families; neutral upstream (0,m) waves are the guided jet mode"
---
# On the three families of instability waves of high-speed jets

- **Authors:** Christopher K. W. Tam and Fang Q. Hu, Department of Mathematics, Florida State University, Tallahassee (p. 447).
- **Source:** J. Fluid Mech. (1989), vol. 201, pp. 447–483. Received 11 April 1988, revised 6 October 1988 (p. 447). Funded by NASA grant NAG 1-421 and ONR, with time on the FSU Cyber 205 (p. 481). Fig. 1 is reproduced from Oertel's ISL report R 110/82 (p. 481).
- **DOI:** 10.1017/S002211208900100X (printed in the page margin).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-models/Tam-Hu_1989_On-The-Three-Families-Of-Instability-Waves-Of-High-Speed-Jets.pdf` (37 pp., scanned publisher's version with an OCR text layer). Page refs are journal pages: PDF page p = journal page − 446. The OCR text loses every equation, so eqs. 2.1–2.13, 3.1–3.12, 5.1–5.2, 6.1–6.5 and A1–A6 were transcribed from rendered pages 453–454, 464–465, 472, 476–477 and 482. Eqs. 2.7, 3.12, 6.1, 6.3 and 6.5 were re-derived (see Key equations).
- **Tags:** cylindrical vortex sheet, finite-thickness (half-Gaussian) jet, compressible Rayleigh equation, Kelvin–Helmholtz wave, supersonic instability waves, subsonic waves, guided jet mode, upstream-propagating neutral waves, duct-like modes, Mach wave system, wavy-wall analogy (Ackeret), convective Mach number, Briggs–Bers contour deformation, branch points and cuts, double zero (saddle), J₁ = 0 cut-off, Oertel's W′/W/W″ waves, Mach-wave near field, cross-hatched pattern, KH–supersonic mode merging, critical Mach number, Papamoschou–Roshko phase speed, hot jets, helium jets

## Summary
Oertel (1979–1982) photographed three sets of waves in thin-layer, shock-tube-driven supersonic jets, two of which had no theory (p. 447–448). Tam & Hu show, with a cylindrical vortex sheet and a finite-thickness half-Gaussian jet, that a high-speed jet carries three families of normal-mode waves. The first is the familiar Kelvin–Helmholtz (KH) wave. The second is a family of **supersonic instability waves**: Mach waves trapped between the jet boundaries, which exist only when u_j > a_j + a_o and travel at supersonic speed relative to the ambient. The third is a family of **subsonic waves**, trapped, with subsonic phase speed and no near field. These are neutral on a vortex sheet and unstable only with a finite-thickness mixing layer (p. 447, 452–457). The computed wave patterns and speeds match Oertel's waves. The most amplified supersonic wave travels at c_ph = u_j/(1 + a_j/a_o), which is Oertel's empirical formula and the Papamoschou–Roshko speed (p. 471–472). Above a critical Mach number, which falls with jet temperature, the KH mode merges into the supersonic family and loses its identity (p. 457–459). The paper also finds, "surprising but not unphysical", neutral **upstream-propagating** subsonic waves in supersonic jets. They exist only in narrow frequency bands, run along ω/k ≈ −a_o, and their band starts on the sonic line at J₁(η_iR_j) = 0 (n = 0) (p. 462–463, 475–477). The authors ask whether these waves close the screech and impinging-jet loops (p. 463, 480). They are the waves later called the guided jet mode.

## Key findings
- **Physical mechanism, an extension of Ackeret's wavy-wall argument** (p. 448–451; Figs 2–4):
  - Planar vortex sheet: at subsonic convective Mach number the wall pressures on the two sides are in phase with the displacement, giving KH. When both sides are supersonic in the wave frame, the pressures are 90° out of phase and identical on both sides, so the wave is neutral (Miles 1958) (p. 449–450).
  - A round jet traps acoustic disturbances by reflection at its boundary, forming a periodic Mach-wave system inside the jet. This needs supersonic flow inside the jet in the wave frame, u_j − c > a_j, which also holds for upstream waves (c < 0), even in **subsonic** jets (p. 450).
  - Subsonic flow outside in the wave frame: the outside pressure is 180° out of phase with the displacement, so pressure balance (a neutral wave) is possible for suitable wavelengths. These are the subsonic waves, confined inside the jet (p. 450–451; App. eqs. A3–A5).
  - Supersonic flow outside: balance is impossible for any wavelength, and an in-phase imbalance is possible. These are the supersonic instability waves, with a Mach-wave near field (p. 451; eq. A6).
  - Earlier work: Gill (1965) noted extra "reflection modes" of top-hat jets, followed by astrophysical-jet studies (Ferrari et al. 1981; Cohn 1983; Payne & Cohn 1985; Zaninetti 1986, 1987). These were mostly temporal, restricted to vortex sheets and did not separate subsonic from supersonic waves (p. 451–452).
- **Where each family lives in the complex ω-plane** (p. 454–457; Figs 6–7):
  - For real k the branch points are ω = ±ka_o and ω = k(u_j ± a_j) (eq. 2.12).
  - To the left of the left-hand branch point of η_i, u_j − ω_r/k > a_j (supersonic convective Mach number inside). To the left of the left-hand branch point of iη_o, |ω_r/k| > a_o (outside). To the right of the right-hand branch points, ω_r/k − u_j > a_j and ω_r/k > a_o. Between them the convective Mach numbers are subsonic (p. 454–455).
  - Supersonic waves need the strip k a_o < ω_r < k(u_j − a_j), which exists only if **u_j > a_j + a_o** (eq. 2.13, p. 456). Oertel found his W waves only under exactly this condition, independent of Mach number and gas (p. 457).
  - Fig. 7 (M_j 4.0 cold, kR_j = 15, n = 0; p. 456) shows all three families. KH is the isolated zero with the largest Im ω, the supersonic waves are a row of zeros with Im ω > 0 inside the strip, and the subsonic waves are zeros on the real axis with |ω/k| < a_o. Maps for n = 1, 2, 3 and hot jets look the same. Hot jets have supersonic waves at much lower M_j (p. 456–457).
  - Zeros are found by a grid search: contour Re D = 0 and Im D = 0 on a rectangular grid, then refine the intersections by Newton iteration (p. 456).
- **KH merges into the supersonic family** (§2.4, p. 457–459; Figs 8–9):
  - At fixed kR_j = 15 (n = 0, cold), the KH zero falls towards the real axis as M_j rises. The Re D = 0 and Im D = 0 contours change drastically near M_j ≈ 4.5, and by M_j 5.0 no distinct KH zero remains. The eigenfunctions also become alike above the critical value (p. 457).
  - The critical Mach number M_c is insensitive to n and k and set mainly by jet temperature. It is "not sharply defined" but lies in a very narrow range (p. 457).
  - Fig. 9 (equal γ inside and outside): M_c falls from ≈ 4.5 at T_j/T_o ≈ 0.2 to ≈ 2.8 at T_j/T_o = 1, ≈ 2.25 at 2 and ≈ 2.0 at 3, tending to an asymptote (p. 459; values read from figure).
  - Why it happens: KH growth falls with M_j while the supersonic waves' maximum growth rises with M_j (to at least M_j 5.0) and with temperature (p. 480). Beyond M_c the supersonic waves are the dominant instability (p. 481).
- **Spatial problem by Briggs's criterion** (§3, p. 459–461; Figs 10–11):
  - Start with ω = Ω + i(large) and lower Im ω to 0⁺ with Re ω fixed, tracking every zero in the k-plane. Zeros from the upper half-plane are downstream waves and zeros from the lower half-plane are upstream waves. Getting this wrong would mistake evanescent for amplifying waves (p. 459).
  - M_j 4.0 cold, ωR_j/u_j = 2.6 + 1.5i → 2.6: some zeros in the strip between the right-hand branch points of η_i and η_o cross into the lower half-plane (spatially growing supersonic waves, B). The KH zero is the isolated one with the largest −Im k (A). Two families of subsonic zeros end on the real k-axis, one left of −ω/a_o and one right of +ω/a_o (C). Zeros that stay off the axis are evanescent (p. 459–460).
  - M_j 1.5 cold (2.13 not satisfied): only the KH zero crosses. Subsonic zeros lie on the real axis and there is "definitely no" supersonic zero (Fig. 11, p. 460–461).
- **Subsonic and supersonic waves are one family** (§3.1, p. 460–462; Figs 12–13): for large Im ω their zeros cluster near the right-hand branch cut of η_i. The k_r(ω) curves of the subsonic waves with k_r > 0 continue into those of the supersonic waves, so it is one family with different behaviour at subsonic and supersonic convective Mach number (p. 461–462). The subsonic waves have the largest k_r and so the slowest phase speed of the three, as Oertel measured (p. 462).
- **Upstream-propagating neutral waves in a supersonic jet** (§3.2, p. 462–463; §6, p. 473–477):
  - Equation 2.7 allows neutral waves that travel upstream in a supersonic jet. This is possible because the ambient outside is at rest, but only in narrow frequency bands (p. 462).
  - M_j 1.5 cold, Re(ωR_j/u_j) = 3.45 with Im ω lowered from 0.2: a zero from the lower half-plane (X) reaches the real k-axis, so it is an upstream neutral wave. It does so only over a narrow range of frequency. At slightly higher frequency it stays just below the axis as an upstream **evanescent** wave whose damping grows rapidly with frequency (Fig. 14, p. 463).
  - The group velocity ∂ω/∂k_r is close to −a_o, and the branches hug ω/k_r = −a_o (p. 463, 476).
  - In each (0, m) branch the dispersion curve has a minimum just to the right of ω/k = −a_o (Figs 29–30, which plot ω < 0 against k > 0). On one side the group velocity is negative (upstream) and on the other positive (downstream). At the minimum the two modes coalesce in a **double zero**, and beyond it they leave the real axis as a complex-conjugate, evanescent pair (p. 475–476).
  - The upstream branches end on the sonic line ω/k = −a_o (p. 476). For n = 0 the end points (m ≥ 2) are J₁(η_iR_j) = 0, so the starting frequency follows in closed form (eqs. 6.1–6.3). The (0, 1) branch instead passes through the origin (eq. 6.4). For n ≠ 0 the end point follows from eq. 6.5 (p. 476–477).
  - Upstream eigenfunctions extend well outside the jet (Fig. 31: (0, 1) at kR_j = 0.7, (0, 3) at 3.0, (0, 5) at 5.5). The authors argue this is necessary, since a wave carried mainly inside a supersonic jet would be swept downstream (p. 476).
  - Link to screech: the screech loop includes strong upstream disturbances just outside the jet, and "it is not clear at this time" whether these are the new upstream modes (p. 463). Whether they act in the feedback of screeching or impinging jets needs further work (p. 480).
- **Wave patterns identify Oertel's three waves** (§3.3, p. 463–466; Figs 15–16):
  - KH and supersonic waves radiate with straight constant-phase lines at φ = tan⁻¹(k_r/η_oi) to the jet boundary (eq. 3.6). This is the W′ pattern of Fig. 1 (p. 464).
  - For supersonic waves the authors argue φ is "very close to 90°", because the small growth rate makes η_oi small, which matches the near-normal fronts of the W waves (p. 464–465). (But see the check under Key equations.)
  - Neutral subsonic waves have real η_o and decay exponentially outside in all directions, so there is no near field (eq. 3.7). This is the W″ waves (p. 465).
  - Inside the jet the subsonic waves form two crossing sets of straight lines at the Mach angle of the wave-frame flow, ψ = sin⁻¹[a_j/(u_j − c_ph)] (eqs. 3.9–3.12). This is the "cross-hatched" W″ pattern (p. 465).
- **KH against experiment** (§4, p. 466–469; Figs 17–21):
  - Cold M_j 2.1, n = 1: the computed k_r(St) and wave speed agree well with Troutt & McLaughlin (1982) over St = 2fR_j/u_j 0.1–0.9 (c/u_j ≈ 0.78–0.80; Figs 17–18, p. 466–468).
  - Linear theory gives good phase speeds and near-field patterns, but "the calculated growth rate is quite inaccurate", as Moore (1977) found for subsonic jets (p. 467).
  - The high-frequency wavefront angle from eq. 3.6 matches shadowgraphs of cold nitrogen jets (Rosales 1970; Lowson & Ollerhead 1968), φ ≈ 47–52° for M_j 1.5–3.0 (Fig. 19, p. 467). It also matches helium jets, φ ≈ 31–37° for M_j 1.2–2.0 (Fig. 20, p. 468). The large drop for helium comes from its different γ and is "correctly calculated" (p. 469; angles read from figures).
  - The KH pressure eigenfunction is concentrated at the shear layer and is small on the axis, like a planar shear layer. The axisymmetric geometry seems unimportant, in contrast to the reflection-driven supersonic waves (Fig. 21, M_j 1.6 cold, n = 0, ωR_j/a_o = 11 and 5; p. 469).
- **Supersonic instability waves** (§5, p. 469–472; Figs 22–26):
  - An infinite family, labelled (n, m) with m = number of pressure antinodes. For n = 0 the first antinode is on the axis; for n ≥ 1 the axis is a node. The antinodes and quasi-nodes are the signature of continuous reflection (Figs 22–23, M_j 3.0 cold; p. 469–470).
  - Each mode is unstable over a band with a maximum growth rate. At M_j 4.0 cold, n = 0, the maxima are −Im(kR_j) ≈ 0.39, 0.41, 0.43, 0.43 at ωR_j/a_o ≈ 6.3, 10.0, 14.5 and 19.0 for m = 2–5. The m = 1 curve peaks at ≈ 0.25 near ωR_j/a_o ≈ 3.2 (Fig. 24, p. 470–471; read from figure).
  - The phase speeds of the most amplified wave of each mode are nearly equal (Fig. 25, p. 471). This "most probable" speed is largely independent of frequency, R_j, m, n and M_j, and depends only on a_j/a_o (p. 471).
  - Computed points for n = 0, 1, 2 lie "almost exactly" on c_ph/u_j = 1/(1 + a_j/a_o) (eq. 5.1, Fig. 26, p. 472). This is Oertel's (1980) empirical formula, which correlates his data and leaves "little room for doubt" that his W waves are these waves (p. 472). Papamoschou & Roshko (1986) derived the same equation for large structures in planar shear layers from a quasi-steady argument, so eq. 5.1 may hold for moderately large amplitudes (p. 472).
  - Eq. 5.1 is independent of R_j. In the limit R_jk → ∞ the whole family collapses to one neutral wave, whose speed for slightly different γ is eq. 5.2 (p. 472).
- **Finite mixing-layer thickness** (§7, p. 477–479; Figs 32–34; half-Gaussian, b = half-width):
  - *KH*: growth falls with thickness at fixed St, and wave speed changes only slightly (p. 477–478).
  - *Supersonic waves* (M_j 4.0 cold, b/R_j = 0, 0.02, 0.1, 0.2): the maximum growth generally falls and moves to lower St with thickness, and low-frequency growth can even rise. With thin layers the higher-order modes (in n or m) grow fastest. With realistic thickness the lower-order modes are relatively stronger, though weaker in absolute terms. Phase speeds are "almost unaffected", so eqs. 5.1–5.2 hold for fairly thin layers (Fig. 32, p. 477–478).
  - *Subsonic waves* (M_j 2.0 cold): the downstream-propagating modes, neutral on a vortex sheet, are unstable with finite thickness. Each frequency has an optimal thickness for maximum growth, unlike KH and the supersonic waves (Fig. 33, p. 478–479). Higher radial and azimuthal orders are less unstable, so low-order modes should be seen in experiments (Fig. 34, p. 479). The phase speed is unaffected up to b/R_j = 0.5 (p. 479).
  - *Upstream subsonic waves*: "little or no" finite-thickness effect, and they remain neutral. The authors suggest, as an open question, that this may be because the upstream waves have no critical layer and the downstream waves do (p. 479).
- **Summary numbers** (§8, p. 479–480):
  - At low supersonic M_j only KH and subsonic waves exist, and KH dominates.
  - For cold jets up to M_j 5.0, the most unstable supersonic wave has St = 0.25–0.55 and a "maximum spatial growth rate per jet diameter" of 0.2–0.4, weak compared with subsonic-jet instabilities (p. 480).
  - With b/R_j = 0.1–0.2, only low-order supersonic modes matter (p. 480).
  - Eq. 5.1 holds regardless of M_j, mode number and thickness, "say for b/R_j less than 0.3" (p. 480).
  - The subsonic waves are the least unstable family (p. 480).
- **Discussion** (§9, p. 480–481):
  - Screech and BBSAN come from the downstream KH waves passing through the shock cells (Tam et al. 1986; Tam 1987), so KH waves matter for noise as well as mixing (p. 481).
  - What the new families mean for turbulence, spreading rate and noise spectrum above the critical Mach number is left open (p. 481).

## Setup / method
This is a theory and computation paper with no new experiments. The comparison data are from Oertel (1979, 1980, 1982), Troutt & McLaughlin (1982), Rosales (1970) and Lowson & Ollerhead (1968).

- **Vortex-sheet jet** (§2.1, p. 453–454): uniform jet of velocity u_j and radius R_j inside a cylindrical vortex sheet, with ambient at rest. The equations are linearised, inviscid and compressible. Outside the jet the pressure obeys the wave equation and inside the convected wave equation. Pressure continuity and the kinematic condition apply on both sides of the sheet, and the solutions are bounded at r = 0 and r → ∞. The model is used for phase speeds and for the mode topology. The authors stress that a finite-thickness model is needed for accurate growth rates (p. 452).
- **Finite-thickness jet** (§2.2, p. 454):
  - Uniform core of radius h, surrounded by a half-Gaussian mixing layer of half-width b (eq. 2.8). This follows Troutt & McLaughlin (1982), who found it close to measured core-region profiles.
  - h and b are linked by momentum-flux conservation (eq. 2.9). Density follows from the Crocco relation with Pr = 1.
  - The pressure obeys the compressible Rayleigh equation, under a locally parallel approximation (eq. 2.11).
  - It is solved numerically by the method of Tam & Burton (1984), not described here, starting from the vortex-sheet eigenvalue (p. 454).
- **Mode finding** (p. 456, 459): grid search on Re D = 0 and Im D = 0 contours plus Newton iteration. Spatial modes follow Briggs's (1964) contour deformation (Im ω from large to 0⁺, tracking each zero), which separates downstream from upstream and amplifying from evanescent waves.
- **Cases** (figure captions):

| Fig. | M_j | Jet | n | Fixed parameter | Shows |
| --- | --- | --- | --- | --- | --- |
| 7 | 4.0 | cold | 0 | kR_j = 15 | ω-plane zeros of all three families |
| 8 | 4.4, 4.6, 5.0 | cold | 0 | kR_j = 15 | KH merging into supersonic family |
| 9 | M_c | T_j/T_o 0.2–3, γ_j = γ_o | – | – | critical Mach number |
| 10 | 4.0 | cold | 0 | ωR_j/u_j = 2.6 + 1.5i → 2.6 | k-plane trajectories |
| 11 | 1.5 | cold | 0 | ωR_j/u_j = 3.5 + 1.5i → 3.5 | no supersonic waves |
| 12, 13 | 4.0; 1.5 | cold | 0 | – | k_r(ω) of all families |
| 14 | 1.5 | cold | 0 | Re(ωR_j/u_j) = 3.45, Im 0.2 → 0 | upstream neutral wave X |
| 17, 18 | 2.1 | cold | 1 | St 0.1–1.0 | KH vs Troutt & McLaughlin |
| 19, 20 | 1.4–3.0; 1.0–2.0 | N₂; He | – | high frequency | KH wavefront angle |
| 21 | 1.6 | cold | 0 | ωR_j/a_o = 11, 5 | KH eigenfunctions |
| 22, 23 | 3.0 | cold | 0; 1 | ωR_j/a_o = 16, 8.5, 2.0; 16.1, 10.1, 3.0 | supersonic-wave eigenfunctions |
| 24, 25 | 4.0 | cold | 0 | ωR_j/a_o 0–20 | supersonic growth and phase speed |
| 26 | various | γ_j = γ_o | 0, 1, 2 | – | c_ph/u_j vs (1 + a_j/a_o)⁻¹ |
| 27 | 1.5 | cold | 0 | kR_j = 15 | subsonic eigenfunctions |
| 28 | 0.6 | cold | 0 | – | subsonic waves, all upstream |
| 29, 30 | 1.5 | cold | 0; 1 | – | subsonic dispersion, upstream and downstream branches |
| 31 | 1.5 | cold | 0 | kR_j = 0.7, 3.0, 5.5 | upstream-wave eigenfunctions |
| 32 | 4.0 | cold | 0, 1 | b/R_j = 0, 0.02, 0.1, 0.2 | supersonic growth vs St |
| 33, 34 | 2.0 | cold | 0, 1 | St 0.2–1.6 | subsonic growth vs b/R_j |

> "Cold jet" is never defined. Two checks fit stagnation temperature equal to ambient (T_j/T_o = 1/(1 + 0.2M_j²), γ = 1.4). First, the left-hand branch point of η_i in Figs 7–8, (u_j − a_j)/a_o = 1.46 (M_j 4.0), 1.54 (4.4) and 1.63 (5.0). Second, Fig. 9 starts at T_j/T_o ≈ 0.2 at M_c ≈ 4.5, which is the cold value at M_j 4.5 (0.198) (my calculations).

## Key equations
Transcribed from rendered pages. Convention: disturbances ∝ e^{i(kx+nθ−ωt)}, so spatial growth is Im k < 0. Subscripts o = outside (ambient) and j = jet.

- **Governing equations** (eqs. 2.1–2.2, p. 453):
  $$\frac{\partial^2p_o}{\partial t^2}-a_o^2\nabla^2p_o=0\ (r\ge R_j),\qquad \Big(\frac{\partial}{\partial t}+u_j\frac{\partial}{\partial x}\Big)^2p_i-a_j^2\nabla^2p_i=0\ (r\le R_j)$$
- **Vortex-sheet conditions at r = R_j** (eqs. 2.3–2.5, p. 453), with ζ(θ, x, t) the radial sheet displacement:
  $$p_i=p_o,\qquad -\frac{1}{\rho_o}\frac{\partial p_o}{\partial r}=\frac{\partial^2\zeta}{\partial t^2},\qquad -\frac{1}{\rho_j}\frac{\partial p_i}{\partial r}=\Big(\frac{\partial}{\partial t}+u_j\frac{\partial}{\partial x}\Big)^2\zeta$$
- **Normal modes** (eq. 2.6, p. 453):
  $$\begin{pmatrix}p_o\\p_i\end{pmatrix}=\begin{pmatrix}H_n^{(1)}(\mathrm i\eta_o r)\\ H_n^{(1)}(\mathrm i\eta_oR_j)\,J_n(\eta_ir)/J_n(\eta_iR_j)\end{pmatrix}e^{\mathrm i(kx+n\theta-\omega t)},$$
  $$\eta_o=\big(k^2-\omega^2/a_o^2\big)^{1/2},\quad \eta_i=\big((\omega-u_jk)^2/a_j^2-k^2\big)^{1/2},\quad -\tfrac12\pi<\arg\eta_o\le\tfrac12\pi,\ \ 0\le\arg\eta_i<\pi.$$
- **Dispersion relation** (eq. 2.7, p. 453; ′ = derivative):
  $$D(\omega,k)\equiv\frac{\mathrm i\eta_o}{\rho_o\omega^2}J_n(\eta_iR_j)\,H_n^{(1)\prime}(\mathrm i\eta_oR_j)-\frac{\eta_i}{\rho_j(\omega-u_jk)^2}H_n^{(1)}(\mathrm i\eta_oR_j)\,J_n'(\eta_iR_j)=0$$
  It is "not new" (Tam 1971; Chan & Westley 1973) (p. 454). Check (mine): equating ζ from eqs. 2.4 and 2.5 with eq. 2.6 gives eq. 2.7 term for term.
  - Real form for neutral waves (my rewrite, used for the checks below). With η_o real and positive, H_n^{(1)}(ix) ∝ K_n(x), so
  $$\frac{\eta_o}{\rho_o\omega^2}J_n(\eta_iR_j)K_n'(\eta_oR_j)-\frac{\eta_i}{\rho_j(\omega-u_jk)^2}K_n(\eta_oR_j)J_n'(\eta_iR_j)=0,$$
  with ρ_o/ρ_j = T_j/T_o for the same gas at equal pressure.
- **Finite-thickness model** (eqs. 2.8–2.11, p. 454):
  $$\bar u=\begin{cases}u_j & r<h\\ u_j\exp\!\big[-(\ln 2)\,((r-h)/b)^2\big] & r\ge h\end{cases},\qquad \int_0^\infty\bar\rho\,\bar u^2r\,\mathrm dr=\tfrac12\rho_ju_j^2R_j^2,$$
  $$p=\hat p(r)\,e^{\mathrm i(kx+n\theta-\omega t)},\qquad \frac{\mathrm d^2\hat p}{\mathrm dr^2}+\Big[\frac1r-\frac{1}{\bar\rho}\frac{\mathrm d\bar\rho}{\mathrm dr}+\frac{2k}{\omega-\bar uk}\frac{\mathrm d\bar u}{\mathrm dr}\Big]\frac{\mathrm d\hat p}{\mathrm dr}+\Big[\frac{(\omega-\bar uk)^2}{\bar a^2}-\frac{n^2}{r^2}-k^2\Big]\hat p=0,$$
  with ā = (γp_o/ρ̄)^{1/2} and ρ̄ from Crocco (Pr = 1).
- **Branch points** (eq. 2.12, p. 454): in the ω-plane for real k, ω = ±ka_o (from iη_o) and ω = ka_j(u_j/a_j ± 1) (from η_i). In the k-plane for given ω, k = ±ω/a_o and k = ω/(u_j ± a_j) (p. 459).
- **Existence of supersonic instability waves** (eq. 2.13, p. 456): $u_j>a_j+a_o$.
  - My reading: the strip needs supersonic convective Mach number on both sides in the wave frame, (u_j − c)/a_j > 1 and c/a_o > 1. That is possible only if u_j/(a_j + a_o) > 1, i.e. if the Papamoschou–Roshko M_c exceeds 1.
  - For cold jets (T_0j = T_o, γ = 1.4), eq. 2.13 means M_j > 2.5; for isothermal jets M_j > 2 (my calculation).
- **Near-field phase lines** (eqs. 3.1–3.6, p. 464):
  $$p_o\sim A\Big(\frac{2}{\mathrm i\pi\eta_or}\Big)^{1/2}\exp\{-\eta_or+\mathrm i[kx+n\theta-\omega t-\tfrac12(n+\tfrac12)\pi]\},\quad k=k_r+\mathrm ik_i,\ \eta_o=\eta_{or}+\mathrm i\eta_{oi},$$
  $$k_rx-\eta_{oi}r-\omega t=\text{const},\qquad \phi=\tan^{-1}\!\big[k_r/\eta_{oi}\big].$$
  > Check (mine), to verify. For a near-neutral wave with c = ω/k_r > a_o, η_o ≈ −ik_r(c²/a_o² − 1)^{1/2} plus a small real part, so η_oi is not small: φ is the Mach angle sin⁻¹(a_o/c). The paper says instead that small growth makes η_oi small and φ ≈ 90° for supersonic waves (p. 464); that confuses η_or with η_oi. With eq. 5.1 the angle is sin⁻¹[(a_j + a_o)/u_j]: near 90° only just above the threshold 2.13, and ≈ 50° at M_j 4.0 cold. The peak radiation direction is then 90° − φ = cos⁻¹(1/M_c) from the jet axis.
- **Subsonic waves, outside and inside** (eqs. 3.7–3.12, p. 465): η_o real, so p_o ∝ e^{−η_or}. Inside,
  $$p_i\sim\frac{\text{const}}{(\eta_ir)^{1/2}}\Big[e^{\mathrm i(\eta_ir+kx+n\theta-\omega t-\frac12(n+\frac12)\pi)}+e^{\mathrm i(-\eta_ir+kx+n\theta-\omega t+\frac12(n+\frac12)\pi)}\Big],$$
  $$\pm\eta_ir+kx-\omega t=\text{const},\qquad \psi=\tan^{-1}\!\big[k/\eta_i\big]=\sin^{-1}\!\Big[\frac{a_j}{u_j-c_{ph}}\Big].$$
  Check (mine): η_i = k[(u_j − c)²/a_j² − 1]^{1/2} gives the sin⁻¹ form, the Mach angle of the wave-frame flow inside the jet.
- **Most probable phase speed of supersonic instability waves** (eqs. 5.1–5.2, p. 472):
  $$\frac{c_{ph}}{u_j}=\frac{1}{1+a_j/a_o},\qquad \frac{c_{ph}}{u_j}=\frac{1}{1+a_j/a_o}+\Big(\frac{\gamma_j}{\gamma_o}-1\Big)\frac{a_ja_o[u_j^2-(a_j+a_o)^2]}{(a_j+a_o)^2[u_j^2-2(a_j+a_o)^2]}$$
  - Eq. 5.2 is correct to order (γ_j/γ_o − 1)² and is not re-derived here.
  - My reading of eq. 5.1: c/a_o = (u_j − c)/a_j = u_j/(a_j + a_o), so the wave has equal convective Mach numbers on both sides, the isentropic Papamoschou–Roshko condition.
  - Eq. 5.2 is singular at u_j = √2(a_j + a_o) (my observation), so it should not be used near that speed. Verify.
- **Limit of the upstream subsonic waves on the sonic line, n = 0** (eqs. 6.1–6.4, p. 476):
  $$\frac{J_0(\eta_iR_j)}{kR_j\ln(\eta_oR_j)}+\frac{\rho_o}{\rho_j}\frac{[(a_o/a_j+M_j)^2-1]^{1/2}}{(a_o/a_j+M_j)^2}\Big(\frac{a_o}{a_j}\Big)^2J_1(\eta_iR_j)=0,\qquad M_j=u_j/a_j$$
  - (a) ω/k → −a_o with k ≠ 0, the (0, m) modes for m = 2, 3, 4, …: J₁(η_iR_j) = 0, so η_iR_j = σ_{m−1}, the zeros of J₁, and
  $$\lim_{\omega/k\to-a_o}\frac{\omega R_j}{u_j}=\frac{-\sigma_{m-1}\,k/|k|}{M_j\dfrac{a_j}{a_o}\Big[\Big(\dfrac{a_o}{a_j}+M_j\Big)^2-1\Big]^{1/2}}\qquad(m=2,3,4,\dots)$$
  - (b) ω/k → −a_o and k → 0 together, the (0, 1) mode: ω/k → −a_o + βe^{−μ/k²} with β, μ > 0. The branch passes through the origin, and no such solution exists for n ≠ 0.
  - Checks (mine):
    - Small-argument K₀ and K₁ in the real form above give eq. 6.1, with an extra factor |k|/k on the second term. The printed form therefore holds for k > 0, the convention of Figs 28–30, which plot ω < 0 against k > 0.
    - At ω/k = −a_o, η_iR_j = |k|R_j[(a_o/a_j + M_j)² − 1]^{1/2}, and J₁ = 0 gives eq. 6.3 exactly.
    - In Strouhal form, St_b = fD/u_j = σ_{m−1}/(πM_j(a_j/a_o)[(a_o/a_j + M_j)² − 1]^{1/2}). J₁ = −J₀′, so this is the hard-wall duct cut-off that [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 30) finds for m = 0.
- **Limit for n ≠ 0** (eq. 6.5, p. 476):
  $$nJ_n(\eta_iR_j)+\frac{\rho_o}{\rho_j}\frac{a_o^2\,\eta_iR_j}{(a_o+u_j)^2}J_n'(\eta_iR_j)=0$$
  Check (mine): K_n′(x) ≈ −(n/x)K_n(x) for small x, put into the real form, gives eq. 6.5 exactly. It is an impedance condition between hard- and soft-wall ducts, which explains why the m = 1 branch point of [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 30) is not at the hard-duct value.
- **Zero-frequency limit of the subsonic branches** (my observation, not in the paper): as ω → 0 the first term of eq. 2.7 dominates, so J_n(η_iR_j) = 0 with η_i = |k|(M_j² − 1)^{1/2}. That gives kR_j = j_{n,s}/(M_j² − 1)^{1/2}, the vortex-sheet (Pack) shock-cell wavenumbers.
  - Cold M_j 1.5, n = 0: 2.151 and 4.937. My numerical roots of eq. 2.7 extrapolate to 2.149 and 4.938, and Fig. 29's (0, 1) and (0, 2) curves cross ω = 0 near kR_j ≈ 2.1 and ≈ 4.9 (read from figure).
  - So the same (0, m) branch carries the stationary shock-cell mode at ω = 0, the downstream subsonic waves, the double zero and the upstream guided mode.
- **Wavy-wall model** (App., eqs. A1–A6, p. 481–482): wall at r = R_j + ε sin αx {sin nθ, cos nθ}, in the wave frame.
  - Inside (supersonic): $M_j^2p_{xx}-\nabla^2p=0$. With ∂p/∂r = εα²ρ_ju_j² sin αx at the wall:
  $$p_i=\frac{\varepsilon\alpha\rho_ju_j^2}{(M_j^2-1)^{1/2}}\frac{J_n((M_j^2-1)^{1/2}\alpha r)}{J_n'((M_j^2-1)^{1/2}\alpha R_j)}\sin\alpha x$$
  - Outside, subsonic M_o (A4):
  $$p_o=\frac{\varepsilon\alpha\rho_ou_o^2}{(1-M_o^2)^{1/2}}\frac{K_n((1-M_o^2)^{1/2}\alpha r)}{K_n'((1-M_o^2)^{1/2}\alpha R_j)}\sin\alpha x$$
    Neutral waves exist for wavelengths that zero the bracket in Δp = p_o − p_i (A5).
  - Outside, supersonic (A6):
  $$p_o=\frac{\varepsilon\alpha\rho_ou_o^2}{(M_o^2-1)^{1/2}}\,\mathrm{Im}\Big\{\frac{H_n^{(1)}((M_o^2-1)^{1/2}\alpha r)}{H_n^{(1)\prime}((M_o^2-1)^{1/2}\alpha R_j)}e^{\mathrm i\alpha x}\Big\}$$
    This cannot balance A3, so there are no neutral waves at supersonic convective Mach number.
  - M_j and M_o here are wave-frame Mach numbers, (u_j − c)/a_j and c/a_o (my reading).

## Data tables
**Critical Mach number for KH merging** (Fig. 9, p. 459; read from figure; γ_j = γ_o):

| T_j/T_o | 0.2 | 0.5 | 1.0 | 1.5 | 2.0 | 3.0 |
| --- | --- | --- | --- | --- | --- | --- |
| M_c | ≈ 4.5 | ≈ 3.45 | ≈ 2.8 | ≈ 2.45 | ≈ 2.25 | ≈ 2.0 |

At kR_j = 15, n = 0, cold, the text puts the change between M_j 4.4 and 4.6, "around 4.5" (p. 457).

**Supersonic instability waves, vortex sheet, M_j 4.0 cold, n = 0** (Figs 24–25, p. 471; read from figure):

| m | max −Im(kR_j) | at ωR_j/a_o | c_ph/u_j there |
| --- | --- | --- | --- |
| 1 | ≈ 0.25 (no circle) | ≈ 3.2 | ≈ 0.73 |
| 2 | ≈ 0.39 | ≈ 6.3 | ≈ 0.65 |
| 3 | ≈ 0.41 | ≈ 10.0 | ≈ 0.65 |
| 4 | ≈ 0.43 | ≈ 14.5 | ≈ 0.65 |
| 5 | ≈ 0.43 | ≈ 19.0 | ≈ 0.65 |

> The dashed "most probable" line in Fig. 25 reads ≈ 0.64–0.65. Eq. 5.1 for T_0j = T_o at M_j 4.0 gives 1/(1 + 0.488) = 0.672 (my calculation). Either "cold" means something else, or the agreement in Fig. 26 is looser than "almost exactly" at this point. The caption of Fig. 24 says circles mark the first five modes, but only m = 2–5 carry one.

**Effect of mixing-layer thickness on supersonic waves, M_j 4.0 cold** (Fig. 32, p. 477; max −Im(kR_j) and St = 2fR_j/u_j at the maximum; read from figure):

| Mode | b/R_j = 0 | 0.02 | 0.1 | 0.2 |
| --- | --- | --- | --- | --- |
| (0, 1) | 0.24 at 0.48 | 0.26 at 0.38 | 0.17 at 0.29 | 0.12 at 0.20 |
| (0, 2) | 0.39 at 1.0 | 0.32 at 0.62 | 0.13 at 0.48 | 0.065 at 0.33 |
| (1, 1) | 0.32 at 0.72 | 0.30 at 0.60 | 0.17 at 0.38 | 0.08 at 0.33 |
| (1, 2) | 0.38 at 1.4 | 0.37 at 0.78 | 0.13 at 0.53 | 0.05 at 0.35 |

**Subsonic waves with finite thickness, M_j 2.0 cold** (Figs 33–34, p. 478–479; read from figure): the (0, 1) and (1, 1) growth peaks at about 0.03–0.11 in −Im(kR_j). The optimal b/R_j falls from about 0.2 at St 0.2–0.4 to about 0.05 at St 1.2–1.6. At St 0.4, n = 0, the peaks are ≈ 0.055 (m = 1, b/R_j ≈ 0.17), ≈ 0.02 (m = 2) and ≈ 0.005 (m = 3). These are an order of magnitude below the KH and supersonic waves.

**KH comparisons** (Figs 17–20, p. 466–468; read from figure):
- Cold M_j 2.1, n = 1: computed c/u_j ≈ 0.80 at St 0.35, falling to ≈ 0.77 at St 1.0. Troutt & McLaughlin measured ≈ 0.6 at St 0.1, ≈ 0.7 at 0.2 and 0.78–0.81 for St 0.35–0.8.
- The computed curve starts only at St ≈ 0.33, so the low-St points are not compared, despite the text's "nearly the whole range" (p. 468).
- Nitrogen jets: φ computed ≈ 47° (M_j 1.45) to ≈ 51° (M_j 3.0), measured ≈ 49–53°.
- Helium jets: computed ≈ 31–33.5° (M_j 1.2–2.0), measured ≈ 37° (M_j 1.38) to ≈ 31–32° (M_j 1.9).

**Upstream (0, m) guided-mode bands, vortex sheet, n = 0** (my calculation from eqs. 2.7 and 6.3; not in the paper):
- Method: the lower limit is the sonic-line branch point (eq. 6.3, exact). The upper limit is the double zero, where the upstream root leaving the sonic line merges with the downstream-group root, located to ±0.003 in St.
- "Cold" means T_0j = T_o, T_j/T_o = 1/(1 + 0.2M_j²), γ = 1.4; "isothermal" means T_j = T_o. St = fD_j/u_j = ωR_j/(πu_j).
- Method of the scratch script (not kept): scan real k < 0 at fine ω steps, using the real form of eq. 2.7 with log-spaced points near the sonic line, and record where the root count drops by two.

| M_j | Jet | (0, 1) | (0, 2) | (0, 3) |
| --- | --- | --- | --- | --- |
| 1.00 | cold | – | from 0.726 | from 1.328 |
| 1.09 | cold | – | 0.634–0.794 | from 1.161 |
| 1.09 | isothermal | – | 0.610–0.759 | from 1.116 |
| 1.14 | cold | – | 0.592–0.741 | from 1.083 |
| 1.14 | isothermal | – | 0.566–0.704 | from 1.035 |
| 1.50 | cold | 0–≈ 0.20 | 0.390–0.492 | 0.714–0.796 |
| 1.50 | isothermal | – | from 0.355 | 0.650–0.718 |

Checks against the paper:
- At M_j 1.5 cold the (0, 2) start (kR_j 1.53, ωR_j/u_j 1.22) and the merge near kR_j ≈ 2.1, ωR_j/u_j ≈ 1.55 match Fig. 29 by eye.
- Fig. 14's frequency, ωR_j/u_j = 3.45, lies just inside the (0, 4) band, 3.25–≈ 3.47. That fits the paper's "narrow range" and the evanescent wave "at slightly higher frequencies" (p. 463).
- These also agree with the band of [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) (cut-on ≈ 0.72 at M_j 1.0, ≈ 0.36 at 1.5, read from its Fig. 8) and with the M_j 1.4 bands in the Tam & Ahuja note ((0, 2) 0.43–0.54).

## Figures worth remembering
- **Fig. 1 (p. 448):** Oertel's three wave patterns: W′ (KH, Mach-wave near field trailing the jet), W (supersonic waves, fronts near normal to the boundary) and W″ (subsonic waves, cross-hatched inside the jet, no near field).
- **Figs 2–4 (p. 449–451):** the wavy-wall argument. Fig. 4 is the internal Mach-wave system with subsonic or supersonic outside flow.
- **Fig. 6 (p. 455):** branch cuts of iη_o and η_i in the ω-plane, with the supersonic-convective-Mach regions shaded.
- **Fig. 7 (p. 456):** Re D = 0 and Im D = 0 contours with all three families of zeros (M_j 4, kR_j 15). The key topology figure.
- **Fig. 8 (p. 458):** the KH zero dissolving into the supersonic family between M_j 4.4 and 5.0.
- **Fig. 9 (p. 459):** critical Mach number against T_j/T_o.
- **Figs 10–11, 14 (p. 460–463):** Briggs trajectories in the k-plane. Fig. 14 shows the upstream neutral zero X.
- **Figs 12–13 (p. 461–462):** k_r(ω) of all families, with the subsonic branches continuing into the supersonic ones.
- **Figs 15–16 (p. 464–465):** schematic near-field and cross-hatched phase lines.
- **Figs 17–20 (p. 466–468):** KH against experiment (dispersion, wave speed, wavefront angles for N₂ and He jets).
- **Figs 22–23 (p. 470):** (n, m) supersonic-wave eigenfunctions with m antinodes.
- **Figs 24–26 (p. 471–472):** supersonic growth rates, phase speeds and the eq. 5.1 correlation.
- **Figs 28–30 (p. 474–475):** subsonic-wave dispersion: all upstream at M_j 0.6; at M_j 1.5 each (n, m) branch has a minimum (the double zero) next to ω/k = −a_o. **These are the guided-jet-mode band figures**, plotted with ω < 0 and k > 0.
- **Fig. 31 (p. 475):** upstream-wave eigenfunctions, extending outside the jet.
- **Figs 32–34 (p. 477–479):** finite-thickness effects on supersonic and subsonic waves.

## Notation
- u_j, R_j, a_j, ρ_j, T_j: jet velocity, radius, sound speed, density and static temperature. a_o, ρ_o, T_o: the same for the ambient. M_j = u_j/a_j. "Cold jet" is not defined (see Setup).
- ω, k, n: angular frequency, axial wavenumber and azimuthal number; e^{i(kx+nθ−ωt)}, k = k_r + ik_i, so growth means Im k < 0. c_ph = ω/k_r.
- St = 2fR_j/u_j = fD/u_j (Fig. 32). Frequencies also appear as ωR_j/u_j and ωR_j/a_o.
- η_o, η_i: outer and inner radial wavenumbers (eq. 2.6). D(ω, k): dispersion function (eq. 2.7). ζ: sheet displacement.
- h, b: core radius and mixing-layer half-width of the half-Gaussian profile. For ū = e^{−ln2(y/b)²} the incompressible momentum thickness is θ ≈ 0.31b (my calculation), so b/R_j = 0.1, 0.2 and 0.5 correspond to R_j/θ ≈ 32, 16 and 6.4.
- (n, m): azimuthal and radial order, where m = number of pressure antinodes. Tam & Hu's (0, 2) is the (m, n) = (0, 2) guided jet mode of [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and k_TH⁻ / k_p⁻ in the later notes.
- M_c: here the critical jet Mach number of KH merging (Fig. 9), **not** the convective Mach number. The paper uses "convective Mach number" for the Mach number of the flow in the wave frame (p. 454).
- W′, W, W″: Oertel's KH, supersonic and subsonic waves (Fig. 1).
- σ_{m−1}: zeros of J₁.

## Relevance to this project
This is the founding paper of the **guided jet mode**. It is also the origin of the "supersonic instability wave" phase speed u_j/(1 + a_j/a_o) used in rocket-noise directivity arguments. It is theory only: vortex sheet plus a finite-thickness Rayleigh model, with no shocks, no viscosity and a parallel flow. It is not group work.

**Guided jet mode, screech and impingement**
- The upstream neutral subsonic waves (§3.2, §6) are the k_TH⁻ / k_p⁻ guided jet mode that the group's papers put at the closure of A1/A2 screech ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), (0, 2) mode; [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md); [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md); [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md)) and of impinging tones ([tam-1990-theoretical-model-discrete-tone-impinging-jets](tam-1990-theoretical-model-discrete-tone-impinging-jets.md), the direct follow-up).
  - Tam & Hu already had the full band structure. The lower edge is the sonic-line branch point (J₁ = 0 for n = 0, eq. 6.3). The upper edge is the double zero, where the upstream and downstream branches coalesce (p. 475–476). These are the B and S points of Mancinelli, and the saddle is of the S1/S2 kind in [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md).
  - Tam & Hu raised the screech question but left it open (p. 463, 480). [tam-1995](tam-1995-supersonic-jet-noise.md) still closes the loop with free-stream sound, as that note points out.
- **Reading the frequency language.** Figs 28–30 plot ω < 0 against k > 0, so "frequencies lower than the minimum" (p. 476) means physically *higher* frequencies. My recomputation confirms that the upstream mode is cut on between the branch point (lower St) and the double zero (upper St). Above the double zero it is evanescent, which agrees with p. 463. Reading the sentence in physical frequency would invert the band.
- **For the PyFR staging LES and the lab A1/A2 data.** The vortex-sheet (0, 2) band (my table above) puts the group's A1 at NPR 2.10 (St 0.67, M_j 1.09) and A2 at NPR 2.25 (St 0.65, M_j 1.14), both from [edgington-mitchell-2021-shock-leakage Table 1](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md), inside the band under both temperature assumptions.
  - Both tones sit in the lower part of the band, nearer the branch point. Both stages share one mode, so the band cannot explain the A1 → A2 jump, which agrees with the staging topic page.
  - The closed-form branch point (eq. 6.3 in St form) is a one-line overlay for St–NPR maps of the LES and the rig. The upper edge needs a root solve of the real form of eq. 2.7 (method under Data tables).
  - Cooling raises the band and thickening lowers it ([mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md) p. 15–17), so the LES mean flow (θ(x), T(r)) should go into a finite-thickness version before comparing positions within the band.
- **Thickness: Tam & Hu against later work.**
  - Tam & Hu find "little or no" thickness effect on the upstream waves and phase speeds unaffected up to b/R_j = 0.5, i.e. R_j/θ ≈ 6 (p. 479; θ conversion mine).
  - [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md) finds that the guided band moves noticeably below R/θ ≈ 30. The Tam & Ahuja note (p. 84) shows the (0, 2) hump disappearing at b/R_j = 0.5.
  - "Neutral" (growth) and "band edge" (frequency) are different quantities, so the claims do not strictly clash. Still, Tam & Hu's statement should not be read as "thickness doesn't matter for the guided mode".
- **Subsonic jets.** Tam & Hu say all subsonic waves of a subsonic jet are upstream (M_j 0.6, p. 473). [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md) (p. 33) and [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) show that this holds only below M ≈ 0.82. For 0.82 < M < 1 duct-like downstream modes and two saddles appear, which Tam & Hu did not study. [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 26) gives the energy-flux reason.
- **Why the wave goes upstream.** Tam & Hu argue that the wave must live mainly outside the supersonic jet, or it would be swept downstream (p. 476). [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 26–27) confirms this quantitatively: near the sonic line the upstream energy flux outside outweighs the downstream flux inside. It also adds that the wave is in-jet sound totally reflected by the shear layer, which external sound cannot excite.
- **Shock cells in the same branch** (my observation). The ω → 0 limit of each (0, m) subsonic branch is the Pack shock-cell wavenumber (Key equations). One dispersion branch therefore runs from the stationary shock-cell mode through the downstream subsonic waves to the double zero and the upstream guided mode. This is a compact way to see why KH × shock products (k_kh − k_s) land on the guided branch near the saddle ([nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md); [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md)), but it is a reading, not a result of either paper.

**Jet noise and rocket noise**
- **Eq. 5.1 is the theory behind the Papamoschou–Roshko convective Mach number.** The most amplified supersonic wave has c/a_o = (u_j − c)/a_j = u_j/(a_j + a_o) ([papamoschou-1988](papamoschou-1988-compressible-turbulent-shear-layer.md)). Its Mach-wave angle from the axis is cos⁻¹[(a_j + a_o)/u_j] (my derivation from eq. 3.6). This is the "supersonic" M_c that [kellison-2026](kellison-2026-falcon-9-noise-two-campaigns.md) found closest to Falcon 9's 64° (66°). The paper's own claim that supersonic-wave fronts are nearly normal to the jet (p. 464) holds only just above u_j = a_j + a_o (see the check under Key equations).
- **Attribution caution for the rocket notes.** Tam & Hu derive only the supersonic speed (eq. 5.1). The KH and "subsonic" convective Mach numbers in [kellison-2026](kellison-2026-falcon-9-noise-two-campaigns.md), M_c′ = (M_ac + c_j/c_a)/(1 + c_j/c_a) and M_c″ = (M_ac − c_j/c_a)/(1 + c_j/c_a), are Oertel's empirical W′/W″ speeds, not results of this paper.
  - Within Tam & Hu, the subsonic waves have |c_ph| < a_o by definition and no near field (p. 456, 465), so they cannot radiate Mach waves. Kellison's M_c″ = 1.75 (55°) is therefore not a Tam & Hu subsonic wave (my reading).
  - Oertel's W′ speed overpredicts the computed KH speed. At cold M_j 2.1 it gives c/u_j = 0.85, against 0.78 computed and ≈ 0.79 measured (Fig. 18; my calculation).
- **Rocket conditions are past the KH merging.** Fig. 9 gives M_c → ≈ 2 for T_j/T_o ≳ 3, and rocket plumes are hotter and faster. By this vortex-sheet result the KH wave is no longer distinct there, and the supersonic family, whose growth rises with M_j and temperature (p. 480), is the dominant instability (my inference).
  - This supports reading rocket Mach-wave directivity with the eq. 5.1 speed. It is a caveat for SP-8072-type models that assume one KH-like wavepacket ([lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)).
  - Caveats: Fig. 9 stops at T_j/T_o = 3 and assumes γ_j = γ_o, and the merging was found with the vortex sheet only.
- **Lab jets.** For cold lab jets (M_j ≲ 1.5), eq. 2.13 needs M_j > 2.5, so only the KH and subsonic (guided) families exist. Supersonic instability waves matter only for heated lab jets above M_j ≈ 1 + (T_o/T_j)^{1/2}.
- Linear theory gives KH phase speeds and wavefront angles well but growth rates poorly (p. 467), as in the wavepacket literature ([cavalieri-2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md); [michalke-1984](michalke-1984-survey-jet-instability-theory.md)).

**Methods and data for the lab workflow (CLAUDE.md)**
- **Time-resolved data** (high-speed schlieren, LES, near-field arrays) are needed to test the dispersion relations directly. A streamwise-Fourier (k_x) split of SPOD modes at each St separates KH (c ≈ 0.6–0.8u_j), the guided mode (c ≈ −a_o, k < 0) and, in heated high-M_j jets, supersonic waves (c ≈ u_j/(1 + a_j/a_o)). The band edges from eq. 6.3 and the double zero then bound where k < 0 energy can be neutral ([schmidt-2018](schmidt-2018-spectral-analysis-jet-turbulence.md) shows the M 1.5 upstream wave in SPOD and resolvent modes).
- **Non-time-resolved data.**
  - POD-pair PIV at a tone known from a microphone gives the upstream eigenfunction shape. Edgington-Mitchell 2018 matched it to the (0, 2) mode, but shape alone does not identify the mode.
  - Single-shot schlieren or shadowgraph can show the W′ near-field angle (eq. 3.6, as Rosales did) and the cross-hatched W″ pattern (eq. 3.12) without time resolution.
  - The phase speed then comes from the angle: sin⁻¹(a_o/c) outside, or sin⁻¹[a_j/(u_j − c)] inside.
- **Intermittency and HPOD.** The paper is linear, parallel and single-frequency, with nothing on switching. Two of its results still bear on the SPOD → reconstruction → HPOD pipeline:
  - The guided mode exists only inside a narrow band, so HPOD-tracked instantaneous tone frequencies near a staging point can be checked against the band edges.
  - Near the double zero the upstream group velocity → 0, which lengthens the loop time and makes the closure sensitive to small changes in mean flow (my inference).

**Items to verify against the PDF**
1. p. 464: the argument that φ ≈ 90° for supersonic waves because η_oi is small (my check says η_oi ≈ −k_r(c²/a_o² − 1)^{1/2}).
2. p. 476: "frequencies lower than the minimum" in the plotted ω < 0 convention; eq. 6.1 printed without the |k|/k factor.
3. Fig. 25 most-probable line (≈ 0.64–0.65) against eq. 5.1 (0.672 for T_0j = T_o at M_j 4); what "cold jet" means.
4. Fig. 24 caption: circles for m = 1–5, but only four are visible.
5. Fig. 18: the computed curve starts near St 0.33, yet the text claims agreement over St 0.1–0.9.
6. "Maximum spatial growth rate per jet diameter is 0.2–0.4" (p. 480): units (−Im(k)D or −Im(kR_j)?).
7. All values read from Figs 9, 17–20, 24–25 and 32–34.
8. Eq. 5.2 was not re-derived; its denominator vanishes at u_j = √2(a_j + a_o).

**Candidates for `/add-paper`:** Oertel 1980 (shock-tube jets, three wave families; ISL); Tam & Burton 1984 (JFM 138, finite-thickness instability waves and sound); Tam 1971 (JFM 46, directional radiation); Troutt & McLaughlin 1982 (JFM 116); Tam & Hu 1989 channel paper (instability and acoustic modes of supersonic mixing layers in a rectangular channel, JFM, submitted 1988); Gill 1965; Miles 1958; Papamoschou & Roshko 1986 (AIAA 86-0162); Lowson & Ollerhead 1968 and Rosales 1970 (KH near-field shadowgraphs).
