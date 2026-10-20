---
key: "ivelja-2024-modal-analysis-screeching-elliptical-jets"
title: "Modal analysis of screeching elliptical jets"
authors: ["Ivelja, R.", "Edgington-Mitchell, D.", "Maigler, M.", "Nogueira, P. A. S."]
year: 2024
type: "article"
venue: "JFM 1000, A68"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "1000", "pages": "A68"}
doi: "10.1017/jfm.2024.1039"
arxiv: ""
pdf: "screech/Ivelja-EtAl_2024_Modal-Analysis-Of-Screeching-Elliptical-Jets.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility"
data: ["PIV", "RANS"]
methods: ["POD", "POD-pair", "wavenumber-filtering", "LSA-local", "LSA-Floquet"]
flow: ["elliptical-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "flapping", "guided-jet-mode", "KH-wavepackets"]
params: {"NPR": "2.6, 3.4", "M_j": "1.25, 1.45", "AR": "2"}
topics: ["screech", "non-axisymmetric-and-twin-jets", "linear-models"]
related: ["edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-twin-jet-coupling-spatial-lsa", "mancinelli-2021-complex-valued-resonance-model-screech", "nogueira-2024-guided-jet-waves", "mazharmanesh-2025-screech-modes-non-axisymmetric-jets"]
cites: ["cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "nogueira-2024-guided-jet-waves", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "tam-1982-shock-associated-noise-cd-nozzles"]
summary: "AR 2 elliptical jet, NPR 2.6/3.4: PIV POD pair + k_x filter isolate se₁ flapping KH and GJM; Floquet LSA matches both; GJM neutral at screech St only in a short x band"
---
# Modal analysis of screeching elliptical jets

- **Authors:** R. Ivelja, D. Edgington-Mitchell, M. Maigler, P.A.S. Nogueira (Monash LTRAC, Clayton; Universität der Bundeswehr München, Neubiberg)
- **Source:** J. Fluid Mech. 1000, A68 (2024), doi:10.1017/jfm.2024.1039. Published open-access version (CC BY 4.0).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/Ivelja-EtAl_2024_Modal-Analysis-Of-Screeching-Elliptical-Jets.pdf` (31 pp.)
- **Page refs:** PDF page n = printed page A68-n.
- **Tags:** screech, elliptical jet (AR 2), flapping (se₁) mode, guided jet mode (GJM), Kelvin–Helmholtz, non-time-resolved PIV, snapshot POD pair, symmetry-imposed POD, streamwise Fourier filtering, Floquet-in-azimuth spatial LSA, Mathieu-function modes, RANS mean flow (OpenFOAM/HiSA), GJM existence region vs x, axis switching

## Summary
The paper models the upstream and downstream waves of the screech loop in an AR 2 converging elliptical jet at NPR 2.6 and 3.4, using an existing non-time-resolved PIV database in the major- and minor-axis planes (p. 1, 4). A POD pair of the minor-axis transverse velocity gives a complex travelling-wave mode; a streamwise Fourier transform splits it into a downstream KH wavepacket and an upstream guided jet mode (GJM), and each is rebuilt by wavenumber filtering (p. 14–17). A Floquet-in-azimuth spatial linear stability analysis (LSA), run on either an elliptical fit to the PIV mean flow or a 3-D RANS mean flow, predicts the se₁ (flapping) KH and GJM wavenumbers within the measured ranges and their minor-axis transverse-velocity shapes at several stations (p. 17–21). The main new result is that the se₁ GJM is neutrally stable at the screech frequency only over a short streamwise band, whose position depends on NPR, and the measured GJM amplitude peak sits inside that band (p. 22–24). This is offered as the explanation for why the measured GJM envelope peaks and decays both ways although local LSA predicts a neutral wave (p. 3, 24–26).

## Key findings
- **Flapping resonance in both jets** (p. 14–15, Figs. 9–11):
  - Minor-axis POD modes 1–2 hold 23.6 % (NPR 2.6) and 35 % (NPR 3.4) of transverse-velocity fluctuation energy; on the major axis they hold only 6.8 % and 10.3 % (p. 15).
  - Minor-axis pairs give a circular phase portrait; major-axis pairs do not, and at NPR 2.6 the first four major-axis modes have similar energy (p. 14–15, Fig. 10).
  - Conclusion: both jets flap about the minor axis (symmetric transverse-velocity disturbances), i.e. the se₁ Mathieu mode (p. 15, 17–18).
- **Standing wave** (p. 15, Fig. 12): |complex mode| shows a standing-wave pattern over a large region including the centreline, strongest at NPR 3.4, from KH–GJM superposition (cites Panda 1999).
- **Wavenumber content** (p. 16, Table 1, Fig. 13): one peak at k_x > 0 (KH) and one at k_x < 0 with phase speed slightly below the ambient sound speed (GJM). A secondary downstream peak sits near the KH peak; its origin is unclear and the authors blame POD's limits at a single frequency or secondary vortex structure, noting that time-resolved data would be needed (p. 16).
- **Filtered waves** (p. 17, Fig. 14): KH and GJM have the same overall shape at both NPRs, both peak on the centreline in this plane (as for flapping/helical modes in round jets), and both peak farther downstream at NPR 3.4. Peak positions move < 5 % when the filter threshold is changed from 10 % to 50 % of peak (p. 17).
- **KH (se₁) from LSA** (p. 17–21, Figs. 15–17):
  - Minor-axis |v| shapes match POD at most stations (x/D_eq = 0.5, 1.5, 2.5 for NPR 2.6; 1, 2, 3 for NPR 3.4). Maxima positions and relative heights match; LSA minima are slightly higher; NPR 2.6 at x/D_eq = 2.5 is poor (p. 18).
  - RANS-based predictions agree with PIV-based ones near the nozzle and drift downstream, attributed to shocks in the RANS mean flow or thinner shear layers (p. 18).
  - Growth rate −α_i falls with x as the shear layer thickens; the last plotted station is where the mode stops being unstable (p. 19, Fig. 16).
  - α_r rises to a maximum then falls (phase speed dips then recovers, consistent with Mercier et al. 2017); all LSA wavenumbers lie inside the POD range and close to the POD peaks of 3.7 (NPR 2.6) and 2.6 (NPR 3.4) (p. 19–20, Fig. 17).
  - Similar shapes from two very different mean flows suggest mean-flow details are second-order for the KH mode (p. 18).
- **GJM from LSA** (p. 21–22, Figs. 18–19):
  - ce₀, ce₁ and se₁ GJMs exist, each over a limited St range (shown at St 0.2, 0.36, 0.42 for NPR 2.6, x/D_eq = 2; p. 21).
  - The se₁ GJM minor-axis |v| has a sharp centreline peak plus a smaller peak near the shear layer; the centre peak matches POD "almost perfectly" at x/D_eq = 3, 3.5, 4 (NPR 2.6) and 4.5, 5.5, 6.5 (NPR 3.4) (p. 21–22). Not every station has both PIV and RANS predictions because the mode may not exist at that St and x (p. 21).
- **Streamwise-limited existence of the GJM** (p. 22–24, Figs. 20–21):
  - Existence band (computed at ΔSt = 0.01) is wider at NPR 2.6 than 3.4, matching Bogey's (2021) Mach trend; maximum width is 0.09 (NPR 2.6) and 0.03 (NPR 3.4), where the shear layer is thickest (p. 22).
  - Both band limits fall with x, consistent with Nogueira et al. (2022a) and Mancinelli et al. (2021) (thicker shear layer lowers both bounds) (p. 22).
  - At NPR 3.4 the band oscillates as it falls, especially with RANS, a likely shock-cell effect; not seen at NPR 2.6 where shocks decay faster (p. 22–23).
  - RANS bands are usually narrower than PIV-based ones (slower shear-layer growth) (p. 23).
  - At St_screech the GJM is neutral only over a short x range, and the POD GJM amplitude peak (x/D_eq ≈ 2.9 at NPR 2.6, ≈ 5.6 at NPR 3.4, read from Fig. 20) lies inside it for the PIV-based LSA; RANS-based predictions are slightly off (p. 23). Fig. 21 shows St_screech inside the GJM dispersion branch at that position (p. 24).
- **Interpretation** (p. 24–26):
  - Weakest-link view (Tam & Tanna 1982): downstream of the band the GJM is damped, so waves from farther downstream decay as they travel upstream; at the band the KH and GJM interact with the shocks to trigger resonance; upstream of it the discrete GJM ceases and the wave becomes acoustic (continuous spectrum) (p. 24–25).
  - Absolute-instability view (Nogueira et al. 2022b): the POD peak marks a pocket of absolute instability; no GJM upstream means no absolute instability there (p. 24, 25).
  - Long-range resonance (Powell 1953; Mancinelli et al. 2019, 2021) gives an equivalent picture (p. 24).
  - All three are locally parallel, so mean-flow development is missing; spatial marching (OWNS; Towne & Colonius 2015, Zhu & Towne 2023) is proposed as future work (p. 24, 26).
  - Claimed as the first demonstration that GJM existence depends strongly on streamwise position (p. 1).
- **Mean flow** (p. 9–13): complex shock cells, especially in the major axis, with a low-velocity streak at z/D_eq = 0; the jet spreads more in the minor axis. NPR 2.6 appears to axis-switch near x/D ≈ 5 (fitted AR reaches 1 there); NPR 3.4 switches farther downstream. Fitted flow AR is ≈ 1.7 at x/D_eq = 0.5 (not the nominal 2) and falls with x (p. 10–11, Fig. 4).

## Setup / method
- **Facility:** Shock Lab group facility (Monash). The PIV database is from Mitchell, Honnery & Soria (2013) and the acoustics from Edgington-Mitchell, Honnery & Soria (2015); the paper doesn't name the lab space (p. 4).
- **Nozzle** (p. 4): purely converging, AR 2. Transitions from a 70 mm circular section to a 20 × 10 mm ellipse over 70 mm, then a 2.5 mm parallel section. Boundary layer is azimuthally inhomogeneous; exit state not measured, but M 0.9 visualisation suggests an initially laminar shear layer that transitions quickly. D_eq = diameter of the circle with the same area (≈ 14.1 mm by my calculation, √(20 × 10); not stated).
- **Cases** (p. 4): NPR 2.6 (M_j ≈ 1.25) and NPR 3.4 (M_j ≈ 1.45), cold.
- **PIV** (p. 4):
  - Two-component planar PIV, **not time-resolved**: 1000 statistically independent snapshots per axis per NPR.
  - Field of view 2D_e × 10D_e in the major- and minor-axis planes. Vector spacing 0.013D_e; in-plane resolution (smallest window) 0.026D_e; through-plane resolution 0.1D_e.
  - Major-axis plane is biased by slight laser-sheet misalignment; symmetry is enforced across the centreline to remove it.
- **Acoustics** (p. 4): G.R.A.S. 46BE 1/4" free-field mic in the minor-axis plane at θ = 20° from the downstream axis; used only for the screech St. The screech St values are not given in the text; Figs. 20–21 show St_screech ≈ 0.38 (NPR 2.6) and ≈ 0.27 (NPR 3.4) (read from figures; the appendix uses St = 0.27 for NPR 3.4, p. 26).
- **POD** (p. 5, 14–15):
  - Snapshot POD (Sirovich 1987) of the mean-subtracted **transverse velocity only**, chosen to avoid shear-layer-thickness modes (Weightman et al. 2018).
  - Phase portrait of a₁ vs a₂ checks for a travelling-wave pair.
  - Recomputed on **symmetry-imposed** fields (as in Nogueira & Edgington-Mitchell 2021), keeping only modes with even transverse velocity; this barely changes shapes or energies but slightly improves convergence (p. 15).
- **Complex mode and wave split** (p. 15–17):
  - u_c = â[φ₁ + iφ₂]e^{−iωt}, with â e^{−iωt} = a₁ − i a₂ (eq. 3.8).
  - Spatial Fourier transform in x of the complex mode; phase and group velocity are assumed to share sign, so k_x > 0 is downstream, k_x < 0 upstream (p. 16).
  - Each wave is isolated by zeroing all coefficients outside its range (where energy falls to 10 % of the peak; Table 1), then inverse transforming (p. 16–17). No window or taper is stated.
- **RANS** (p. 5):
  - OpenFOAM with the density-based HiSA solver; AUSM⁺-up flux; dual time stepping to steady state; realisable k–ε (Shih et al. 1995).
  - Fully structured O-grid, y⁺ = 0.1 at walls, grid-convergence study done (details not given). Inlet total pressure ramped to the NPR, 300 K, Neumann velocity; outlet fixed 10⁵ Pa and 300 K. Ideal gas; Sutherland viscosity (μ₀ = 1.716 × 10⁻⁵ kg m⁻¹ s⁻¹, T₀ = 273 K, S = 111 K).
  - Turbulence model not tuned. It captures the first shock-cell wavelength and peak shock strength but not the fast centreline decay at NPR 2.6 (attributed to violent screech flapping), the shock-spacing change at NPR 3.4, or axis switching; RANS shear layers are thinner (p. 11–13, Fig. 6).
  - Purpose: a self-consistent 3-D mean flow to check the elliptical fit and to test LSA sensitivity, not to reproduce the real flow (p. 11–12).
- **Elliptical mean-flow fit** (p. 10–11): Morris & Bhat (1995)-type profile in elliptic coordinates, fitted at each PIV station by nonlinear least squares for core widths h_A, h_B and shear-layer half-widths b_A, b_B. U_c is the centreline velocity with the shock cells smoothed out. The fit removes shocks, which suits LSA; profiles and gradients match PIV well outside the core at x/D_eq = 0.4 and 4 (p. 11, Fig. 5).
- **Spatial LSA** (p. 5–8):
  - Compressible, inviscid, locally parallel; zero radial and azimuthal mean velocity. Non-dimensionalised by D_eq, ambient density and U_j. Normal modes q(r, θ) exp(−iωt + iαx), ω real, α complex (α_r wavenumber, −α_i growth rate).
  - Single pressure equation (Lajús et al. 2019) with Floquet ansatz in θ (N = 2, ellipse is π-periodic), halving the domain; gives a cubic polynomial eigenvalue problem in α (operators from Stavropoulos et al. 2023), linearised to a companion form (eq. 2.23) and solved with MATLAB `eigs` (Arnoldi) (p. 7–8, 27).
  - Grid: Chebyshev in r with Bayliss–Turkel mapping to cluster points in the shear layer; Fourier in θ. Dirichlet p = 0 at r_max; centreline condition eq. 2.24 (p. 8).
  - Inputs: St, M and static temperature ratio from isentropic relations at each NPR (p. 9–10).
  - Only the se₁ KH and GJM are tracked, as the modes involved in resonance (not necessarily the most unstable) (p. 17–18).
  - Justified via resolvent arguments (Beneddine et al. 2016) despite shocks making the flow not slowly varying (p. 9).
- **Convergence and validation** (Appendix A, p. 26–28):
  - Mesh study at NPR 3.4, St 0.27, x/D_eq = 0.3 (thinnest shear layer, largest AR): error in α plateaus from 160 × 64 (N_r × N_θ), which is used (run time 86.8 s vs 520 s for 220 × 88; Table 2).
  - r_max/D_eq = 6 and 12.5 give indistinguishable se₁ GJM pressure eigenfunctions (St 0.27, x/D_eq = 1.2); 6 is used (p. 28).
  - Validation against Morris & Bhat (1995) at M 1.5, St 0.4, b_A = b_B = 0.2, AR 1–3: ce₀, ce₁, se₁, se₂ growth rates agree well; ce₂ is slightly low at high AR (p. 28, Fig. 24).

## Key equations
- Pressure equation (eq. 2.12, p. 7), checked against the rendered page:
  $$\frac{1}{r}\frac{\partial}{\partial r}\!\left(r\frac{\partial p}{\partial r}\right) + \frac{1}{r^2}\frac{\partial^2 p}{\partial\theta^2} + A\frac{\partial p}{\partial r} + B\frac{\partial p}{\partial \theta} + Cp = 0$$
  $$A = \frac{1}{\gamma\bar p}\frac{\partial\bar p}{\partial r} - \frac{1}{\bar\rho}\frac{\partial\bar\rho}{\partial r} - \frac{2\alpha}{\alpha\bar u_x-\omega}\frac{\partial\bar u_x}{\partial r},\quad B = (\text{same with }\partial_\theta),\quad C = \frac{\bar\rho(\alpha\bar u_x-\omega)^2}{\gamma\bar p} - \alpha^2 \quad (2.13\text{–}2.15)$$
- Floquet ansatz (eqs. 2.16–2.17, p. 7): $p(r,\theta) = \hat p(r,\theta)e^{i\mu\theta}$, azimuthal content $m \in \{\mu + jN\}$, N = 2. Substitution adds $+2i\mu$ to B̂ and $-\mu^2/r^2 + (i\mu/r^2)[\ldots]_\theta$ to Ĉ (eqs. 2.19–2.21), where [...]_θ is the B bracket.
- Polynomial eigenproblem (eq. 2.22–2.23, p. 7–8): $(F_0 + \alpha F_1 + \alpha^2 F_2 + \alpha^3 F_3)\hat p = 0$, solved in companion form for $[\hat p, \alpha\hat p, \alpha^2\hat p]$.
- Centreline condition (eq. 2.24, p. 8), as extracted: $\left.\left(\partial_r^2 p + \tfrac{2}{r}\partial_r p - \ldots\, p\right)\right|_{r\to0} = 0$.
- Elliptic coordinates (eqs. 3.1–3.2, p. 10): $y = a_e\cosh\varrho\cos\phi$, $z = a_e\sinh\varrho\sin\phi$, foci at ±a_e.
- Mean-flow model (eqs. 3.3–3.7, p. 10):
  $$\frac{U}{U_j} = \begin{cases}U_c, & \eta<0\\ U_c\,e^{-\eta^2}, & \eta\ge0\end{cases},\quad \eta = f(\phi)\,\frac{a\sin\varrho - h_B}{b_B},\quad f(\phi) = \frac{1+f_0}{2} - \frac{1-f_0}{2}\cos 2\phi,$$
  $$f_0 = \frac{b_B}{\sqrt{(h_A+b_A)^2 - a_e^2} - h_B},\qquad AR = \frac{h_A+b_A}{h_B+b_B}$$
- POD (eqs. 2.1–2.4, p. 5): R = VᵀV, Rv = λv, φ_n = Vv_n/‖Vv_n‖, a_n = v_n‖Vv_n‖. Complex mode eq. 3.8 (p. 15).

> Verify against the PDF before coding:
> - Eq. 3.4 prints "a sin ϱ" (rendered as "asinϱ"). Since z = a_e sinh ϱ on the minor axis, a_e sinh ϱ is the likely intent; check p. 10.
> - Eq. 3.6: the extent of the square root (whether −h_B sits inside it) is hard to read at the render resolution used; the form above is my reading of p. 10.
> - Eq. 2.24 (centreline condition, p. 8) was garbled in extraction; the coefficient of the p term (likely involving μ or m) was not recovered.
> - "U_c" appears inside U/U_j, so U_c is presumably already normalised by U_j.

## Data tables
**Wavenumber ranges from POD** (Table 1, p. 17; 10 %-of-peak limits; α in units of 1/D_eq, apparently radians — Fig. 21 LSA α_r ≈ −2.7 at the GJM peak position for NPR 2.6):

| NPR | KH range | KH peak | GJM range | GJM peak |
|---|---|---|---|---|
| 2.6 | (2.15, 5.37) | 3.68 | (−5.36, −1.53) | −3.06 |
| 3.4 | (1.38, 3.53) | 2.61 | (−4.45, −1.07) | −2.45 |

**POD energy of modes 1 + 2** (p. 15):

| NPR | Minor axis | Major axis |
|---|---|---|
| 2.6 | 23.6 % | 6.8 % |
| 3.4 | 35 % | 10.3 % |

**LSA run time vs mesh** (Table 2, p. 27; NPR 3.4, St 0.27, x/D_eq = 0.3): 100×24 3.39 s; 120×36 12.37 s; 140×48 32.91 s; 160×64 86.80 s (used); 180×72 185.72 s; 200×80 316.29 s; 220×88 520.17 s. The table columns were misaligned in extraction; the order above is monotonic and matches the text, but check p. 27.

**Values read from figures** (verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| St_screech | ≈ 0.38 (NPR 2.6), ≈ 0.27 (NPR 3.4) | Figs. 20–21, p. 23–24 |
| GJM POD amplitude peak | x/D_eq ≈ 2.9 (NPR 2.6), ≈ 5.6 (NPR 3.4) | Fig. 20 dashed lines, p. 23 |
| se₁ GJM band (PIV) at peak | St ≈ 0.36–0.39 (NPR 2.6), ≈ 0.27–0.28 (NPR 3.4) | Fig. 20, p. 23 |
| se₁ GJM α_r at St_screech | ≈ −2.75 (NPR 2.6), ≈ −2.05 (NPR 3.4) | Fig. 21, p. 24 |
| KH growth rate −α_i | ≈ 2 → 0.5 over x/D_eq ≈ 0.5–2.5 (NPR 2.6) | Fig. 16, p. 20 |

## Figures worth remembering
- **Fig. 3 (p. 9):** mean u in major and minor planes; major-axis shock cells and low-speed streak at z = 0.
- **Fig. 4 (p. 11):** fitted h_A,B, b_A,B and flow AR vs x; AR ≈ 1.7 at the nozzle, AR = 1 (axis switch) near x/D_eq ≈ 5 for NPR 2.6.
- **Figs. 7–8 (p. 13–14):** fitted vs RANS cross-sections at x/D_eq = 0.5, 2, 4; RANS loses the elliptical shape downstream at NPR 3.4.
- **Fig. 10 (p. 15):** a₁–a₂ phase portraits: circles on the minor axis, not on the major.
- **Fig. 12 (p. 16):** standing-wave |u_c| on the minor axis.
- **Fig. 13 (p. 17):** k_x–y spectra with KH (k_x > 0) and GJM (k_x < 0) peaks, plus a secondary KH-side peak.
- **Fig. 14 (p. 18):** filtered GJM and KH fields; both peak on the centreline and farther downstream at NPR 3.4.
- **Figs. 15, 19 (p. 19, 22):** POD vs LSA |v| profiles for KH and GJM.
- **Figs. 16–17 (p. 20):** KH growth rate and wavenumber vs x, with POD peak and range lines.
- **Fig. 18 (p. 21):** ce₀, ce₁, se₁ GJM pressure eigenfunctions.
- **Fig. 20 (p. 23):** the key figure: se₁ GJM existence band vs x (PIV and RANS) with St_screech and the POD GJM peak overlaid.
- **Fig. 21 (p. 24):** se₁ GJM dispersion branch with the sonic line at the POD peak position.
- **Figs. 23–24 (p. 27–28):** Mathieu-function KH eigenfunctions and growth-rate validation against Morris & Bhat (1995).

## Notation
- D_eq (also D_e): equivalent diameter (same area as the ellipse). AR: aspect ratio (nozzle 2; fitted flow AR from eq. 3.7).
- α = α_r + iα_i: complex streamwise wavenumber; −α_i growth rate. k_x: wavenumber from the PIV Fourier transform. ω: angular frequency. μ: Floquet exponent; N = 2.
- ceₙ, seₙ: cosine- and sine-elliptic (Mathieu) azimuthal modes; se₁ = flapping about the minor axis (odd pressure about the major axis), the analogue of m = 1.
- h_A, h_B: core widths; b_A, b_B: shear-layer half-widths (A major, B minor axis). a_e: focal distance. ϱ, φ: elliptic radial and azimuthal coordinates. U_c: shock-smoothed centreline velocity.
- GJM: guided jet mode (k_TH⁻ / `k_t-` in other notes). KH: Kelvin–Helmholtz wavepacket.

## Relevance to this project
This is a Shock Lab group paper on the screech loop in a non-axisymmetric nozzle, squarely in the resonance/feedback scope of CLAUDE.md, and the first to show that the GJM's existence depends on streamwise position.

- **Methods and data type:**
  - Everything experimental here uses **non-time-resolved** PIV (1000 snapshots): POD pair → phase-portrait check → complex mode → x-FFT → 10 %-threshold wavenumber mask → inverse FFT. This is the same recipe as [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), here with symmetry-imposed POD and a hard spectral mask instead of a bandpass.
  - The POD pair only works because each jet screeches in one flapping mode; the major-axis pair failed the phase-portrait test (p. 15). With intermittent or mode-switching elliptical jets (staging is more complex than in round jets, p. 3) the pair would mix states.
  - The authors themselves note that the unexplained secondary KH-side peak needs time-resolved data (p. 16). With time-resolved schlieren, SPOD at St_screech gives the complex mode directly; the same k_x split then applies, and the SPOD → reconstruction → Hilbert POD pipeline could track whether the GJM amplitude peak position moves in time. That is my suggestion, not done in the paper. See [raiola-2025](raiola-2025-hilbert-pod.md), [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md), [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md).
  - Practical check for any schlieren/PIV analysis: compare the GJM amplitude envelope with an LSA existence band vs x computed on the measured mean flow, as in Fig. 20.
- **Modelling side:**
  - The Floquet-in-azimuth LSA (Lajús et al. 2019; [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md); Stavropoulos et al. 2023) handles arbitrary cross-sections, so it applies to rectangular and twin nozzles. It needs a 2-D (r, θ) mean flow, which planar PIV can't give; the fix here is a 4-parameter elliptical fit per station, cross-checked with untuned RANS.
  - KH predictions are robust to mean-flow choice; GJM predictions are not, because the GJM band is narrow (ΔSt ≤ 0.09) and shifts with shear-layer thickness, so RANS's thinner shear layers move it (p. 18, 23). Getting shear-layer thickness right matters more than resolving shocks for GJM work.
  - The model is inviscid and locally parallel with no shocks in the fitted base flow; spatial-marching (OWNS) is suggested to follow the GJM as it turns into an acoustic wave upstream: see [zhu-2021](zhu-2021-recursive-one-way-navier-stokes.md).
- **Agreement with related notes:**
  - Confirms the GJM-closure picture of [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md), extended to elliptical jets, and explains the peaked GJM envelope those papers reported but left open.
  - Falling band limits with x match [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) (2022a) for m = 0 round jets; the oscillating band at NPR 3.4 matches its shock-cell periodicity.
  - Interpreted through the absolute-instability model of [nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md), the long-range model of [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) / [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md), and the framework in [edgington-mitchell-2022-unifying-theory-jet-screech](edgington-mitchell-2022-unifying-theory-jet-screech.md).
  - POD-pair-plus-LSA comparison follows [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md); transverse-velocity POD to avoid shear-thickness modes follows Weightman et al. 2018 (see [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)).
  - Flapping in non-axisymmetric jets also dominates the twin rectangular jets in [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [yeung-2022](yeung-2022-3d-spod-twin-rectangular-jet.md) and [esfahani-2021](esfahani-2021-coupling-modes-twin-rectangular-jets.md); this paper's se₁ GJM is the single-jet analogue of their guided-mode closure.
- **Related works cited, candidates for `/add-paper`:** Mitchell, Honnery & Soria 2013 (the PIV database); Edgington-Mitchell, Honnery & Soria 2015 (staging in elliptical jets); Morris & Bhat 1995; Lajús et al. 2019; Stavropoulos et al. 2023 (twin-jet LSA operators); Nogueira et al. 2024 (*Guided jet waves*); Bogey 2021; Suzuki, Nogueira & Edgington-Mitchell 2023.
