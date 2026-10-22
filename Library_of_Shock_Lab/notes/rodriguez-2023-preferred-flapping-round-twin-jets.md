---
key: "rodriguez-2023-preferred-flapping-round-twin-jets"
title: "On the preferred flapping motion of round twin jets"
authors: ["Rodríguez, D.", "Stavropoulos, M. N.", "Nogueira, P. A. S.", "Edgington-Mitchell, D. M.", "Jordan, P."]
year: 2023
type: "article"
venue: "JFM 977, A4"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "977", "pages": "A4"}
doi: "10.1017/jfm.2023.935"
arxiv: ""
pdf: "twin-jet-coupling/Rodriguez-EtAl_2023_On-The-Preferred-Flapping-Motion-Of-Round-Twin-Jets.pdf"
version: "published"
unverified: []
group: true
facility: ""
data: ["model-only"]
methods: ["LSA-local", "vortex-sheet", "symmetry-decomposition"]
flow: ["twin-jet", "round-jet", "supersonic", "ideally-expanded", "heated"]
phenomena: ["flapping", "helical", "coupling", "KH-wavepackets"]
params: {"M_j": "1–2 (U_j/c∞)", "s/D": "1.8–10", "T_j/T∞": "1–4", "St": "0.1–1", "R/θ": "3–12.5"}
topics: ["twin-jet-coupling", "non-axisymmetric-jets", "linear-models"]
related: ["nogueira-2021-twin-jet-coupling-spatial-lsa", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "stavropoulos-2024-upstream-waves-merging-twin-jets", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "wong-2023-steady-unsteady-coupling-twin-round-jets", "yeung-2022-3d-spod-twin-rectangular-jet", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "nogueira-2026-flapping-motion-screeching-round-jets"]
cites: ["bell-2018-coupled-underexpanded-supersonic-twin-jets", "bell-2021-intermittent-modal-coupling-screeching-twin-jets", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "gudmundsson-2011-instability-wave-models-near-field-jets", "jordan-2013-wave-packets-turbulent-jet-noise", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "michalke-1984-survey-jet-instability-theory", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "schmidt-2018-spectral-analysis-jet-turbulence", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1989-three-families-instability-waves-high-speed-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
summary: "Twin round jet local LST (2D LNS, twin vortex sheet): coupling splits the m = 1 SS/AS/SA/AA modes so flapping beats helical; stripes in St·s/D; SA1 sinuous flapping favoured"
---
# On the preferred flapping motion of round twin jets

- **Authors:** D. Rodríguez (Universidad Politécnica de Madrid), M. N. Stavropoulos, P. A. S. Nogueira, D. M. Edgington-Mitchell (Monash, LTRAC), P. Jordan (Institut Pprime, Poitiers)
- **Source:** J. Fluid Mech. 977, A4 (2023), doi:10.1017/jfm.2023.935. Published open-access version (CC BY 4.0). Received 14 Oct 2022, accepted 4 Nov 2023. A conference version is Rodríguez et al. 2022, AIAA 2022-3084.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/twin-jet-coupling/Rodriguez-EtAl_2023_On-The-Preferred-Flapping-Motion-Of-Round-Twin-Jets.pdf` (22 pp.)
- **Page refs:** the printed page "977 A4-n" is PDF page n.
- **Tags:** twin jets, jet coupling, flapping vs helical, m = 1 Kelvin–Helmholtz, local spatial linear stability, locally parallel LST, symmetry families SS/AS/SA/AA, vortex-sheet model, Graf's addition theorem, Michalke tanh profile, Crocco–Busemann, shear-layer thickness, Mach number and temperature ratio, perfectly expanded jets, theory only (no new experiment)

## Summary
The paper asks why closely spaced round twin jets flap instead of showing the helical m = 1 motion seen in single jets. It uses locally parallel spatial linear stability theory with two independent formulations: a 2D cross-plane compressible Navier–Stokes eigenproblem on finite-thickness analytic mean flows, and a twin-jet vortex-sheet model. For a single jet the m = 1 Kelvin–Helmholtz (KH) eigenvalue appears twice, in families AS and SA; the two flapping eigenfunctions are degenerate and can be combined into a helix. For twin jets the pressure fields of the two jets interact, the four m = 1 eigenvalues (SS1, AS1, SA1, AA1) split, and the small growth-rate differences amplify exponentially in x, so one flapping mode wins and helical motion becomes at most a spatial transient near the nozzle. The preferred mode is mapped over Strouhal number and spacing s/D: it forms diagonal "stripes" with boundaries at roughly constant St·s/D, and the coupling grows as s/D and St fall. Raising M_j (1–2) or T_R (1–4) strengthens coupling and shifts the stripes to lower St and s/D; when coupling matters, the varicose (SS1) and especially sinuous (SA1) lateral flapping in the plane of the nozzles are predicted. The authors caution that screech in shock-containing jets is set by the resonance closure (guided-mode wavenumbers), not by KH growth alone.

## Key findings
- **Degeneracy for a single jet** (p. 8–9, Fig. 2a, Fig. 3):
  - In the Cartesian, symmetry-imposed formulation, each m > 0 KH eigenvalue appears in two families. m = 1 appears in AS and SA with k_SA1 = k_AS1; m = 0 appears only in SS.
  - Each eigenfunction alone is a flapping motion (phase constant over half the azimuth, then a π jump; Fig. 3d,e). The combination SA1 + i AS1 (eq. 3.3) gives a phase linear in θ₁, i.e. the helical mode (Fig. 3c,f).
- **Coupling splits the eigenvalues** (p. 10–12, Fig. 2b, Fig. 4):
  - For twin jets each family contains one eigenmode per m > 0; m = 0 appears in SS and SA (p. 10).
  - The shift from the single-jet value is largest for m = 0 and falls with m, because higher m has larger k and its pressure decays faster radially as r^(−1/2) exp(−r√(k² − ω²)) (p. 10). The shift also falls with s/D.
  - m = 1 modes have the largest growth rates for most conditions considered (p. 10); all m = 1 growth rates exceed those of m = 0 for M_j = 1.5, R/θ = 12.5 (p. 12).
  - At M_j = 1.5, T_R = 1, R/θ = 12.5, St = 0.3 (Fig. 4): the single-jet m = 1 eigenvalue is about k ≈ 3.22 − 1.114i (dashed lines, read from Fig. 4b,d). Eigenvalues spiral outwards in the complex k plane as s/D drops from 5 to 1.8. The dependence of k_r and k_i on s/D is non-monotonic and different for each family.
  - SS1 and SA1 (in-phase/varicose and counter-phase/sinuous flapping in the plane of the jets) shift most. For s/D ≳ 2, k_r falls (faster phase speed) for SA1 and rises for SS1; this reverses at very small s/D (p. 11).
  - In-phase modes SS1 and AS1 are first destabilised as s/D falls, reach a maximum growth rate, then become more stable than the single jet. The crossover is at s/D ≈ 2.8 (SS1) and 2.5 (AS1); SS1 varies more (p. 11–12).
  - Counter-phase modes SA1 and AA1 do the opposite and have the largest growth rates at small s/D; SA1 is the most amplified (p. 12).
  - At St = 0.3, SS1 should dominate for s/D ≳ 3 and SA1 for s/D < 3 (p. 12).
- **Helices cannot survive** (p. 12, Fig. 5): with s/D = 2.2, SA1 + i AA1 starts as two counter-rotating helices but becomes SA1 sinuous lateral flapping within a few diameters, because of the exponential effect of small k_i differences and a phase drift from small k_r differences.
- **Preferred-mode map, finite thickness** (p. 12–13, Fig. 6; M_j = 1.5, T_R = 1, R/θ = 12.5, St 0.1–0.6, s/D 1.8–5):
  - The leading mode alternates with both St and s/D in stripes whose boundaries lie at roughly constant St·s/D (p. 12).
  - The relative destabilisation Δ̃k_i (eq. 3.4) is inversely proportional to s/D and to St; it tends to zero as St·s/D grows, which happens where SS1 and AS1 lead (p. 13).
  - SA1 (lateral sinuous) dominates for most spacings and St. White areas in Fig. 6(c) are weak-coupling conditions where no flapping mode is preferred and the jet may be helical or flapping, selected by other aspects of the turbulence (p. 13).
- **Shear-layer thickness** (p. 14–16, Fig. 7):
  - R/θ = 12.5, 7.5, 5, 3 stand for x/D ≈ 0.67, 1.6, 2.7, 4.9 via the Crighton & Gaster fit (eq. 3.5; check: (1/(R/θ) − 0.04)/0.06 gives 0.67, 1.56, 2.67, 4.89).
  - The stripe pattern survives thickening and drifts slowly towards lower St; the unstable St range and most unstable St both fall (p. 16).
  - For s/D ≲ 3, |Δk_i| is comparable with k_i itself, so coupling matters (p. 16).
  - In the first 2D (R/θ > 7.5), SA1 dominates where coupling is relevant; at large s/D all modes revert to single-jet behaviour (p. 16).
  - At R/θ = 3 (end of the potential core) AA1 has the largest growth rate, but the peak growth is much weaker than in the first two diameters (p. 16).
  - Peak growth rate −k_i of the leading mode falls from ≈ 1.1 (R/θ = 12.5) to ≈ 0.7, ≈ 0.4 and ≈ 0.1 for R/θ = 7.5, 5, 3 (contour labels read from Fig. 7, p. 15).
  - Hence the thin-shear-layer local result is offered as a first approximation of the preferred mode, at least over the potential core; the authors note that integrated non-parallel growth (PSE, multiple scales) and nonlinear saturation are not included (p. 16, 19).
- **Mach number** (vortex sheet, T_R = 1, M_j 1–2; p. 17–18, Fig. 8):
  - Same stripes; the largest shift occurs at the smallest s/D within each stripe, and the St of maximum shift rises as s/D falls (p. 17).
  - M_j = 1, s/D ≤ 3: SS1 dominates for St ≤ 0.2; SA1 and AA1 lead at higher St but with weak shift (p. 17).
  - Raising M_j moves stripe boundaries to lower St and s/D and increases the growth-rate shift (stronger coupling). A new SS1 stripe appears at higher St; the SA1 stripe moves to lower St with a larger shift. For M_j > 1.5, SA1 has the largest shift (p. 18).
  - For M_j > 1.6 the SA1 stripe boundary becomes horizontal (constant St) below a threshold s/D. A preliminary study traces this to a saddle point where SA1 pinches with SA2; since both are downstream KH modes, it is not an absolute instability. Left for future work (p. 18).
- **Temperature ratio** (vortex sheet, M_j = 1.5, T_R 1–4; p. 18–19, Fig. 9): same trends as raising M_j, but weaker; the SS1 region shrinks and SA1 gains, with SA1 growth rates nearly 10% above the single jet.
- **Conclusions** (p. 19–20):
  - The four-family split is intrinsic to the geometry, not an artefact: a formulation without imposed symmetries recovers the same families (Rodríguez et al. 2018).
  - When coupling matters, only SS1 and SA1 (lateral varicose and sinuous flapping in the nozzle plane) are expected.
  - Helical motion in twin jets would be a near-nozzle spatial transient.
  - For shock-containing (screeching) jets, the dominant oscillation follows the most globally unstable resonance mode, whose closure depends mainly on the wavenumbers of the waves involved (Tam & Tanna 1982; Edgington-Mitchell et al. 2021, 2022; Nogueira & Edgington-Mitchell 2021; Nogueira et al. 2022a). The KH wavenumbers computed here are proposed as inputs to twin-jet screech models.

## Setup / method
- **No experiment or simulation data.** Purely theoretical; mean flows are analytic for reproducibility (p. 7). Monash co-authors, but no facility is involved.
- **Geometry and scaling** (p. 3, Fig. 1): two round jets of diameter D, axes at (y, z) = (±s/2, 0), x streamwise. Lengths scaled by D, velocities by c∞, density by ρ∞, pressure by ρ∞c∞², temperature by (γ − 1)T∞.
  - **M_j = U_j/c∞ is the acoustic Mach number** (jet velocity over ambient sound speed), not the fully expanded Mach number; T_R = T_j/T∞ (p. 3).
  - St = fD/U_j, ω = 2πM_j St (p. 4).
  - Perfectly expanded jets; vortex-sheet matching is at D_j = D (p. 6).
- **Symmetry families** (Table 1, p. 4): see Data tables. Two-letter notation follows Rodríguez et al. (2018) and Nogueira & Edgington-Mitchell (2021); Morris (1990) called them I–IV.
- **Formulation 1: 2D compressible linearised Navier–Stokes, Cartesian** (p. 5):
  - Viscous compressible continuity, momentum and energy; ideal gas; viscosity independent of temperature. Mean flow in (ρ, T), disturbances in (p, T).
  - Generalised eigenproblem L q = k R q (eq. 2.2), with Re, Ma, Pr, γ and s/D, M_j, T_R as parameters.
  - Domain Ω = [0, 7.5] × [0, 5] (first quadrant), checked for convergence at s/D = 5. Analytic stretching in y and z clusters points at the shear layers (grid size not stated).
  - Symmetry BCs at y = 0 and z = 0 (eqs. 2.3–2.4); far field: velocity and temperature disturbances zero, Neumann for pressure.
  - 7-point variable-stencil finite differences, sparse matrices, in-house shift-and-invert Arnoldi with MUMPS.
  - Cross-validated against the polar-grid azimuthal-Floquet formulation of Nogueira & Edgington-Mitchell (2021) (p. 5).
  - Re = 5 × 10⁴; Re = 10⁵ gives identical results, so viscosity is negligible (p. 8).
  - The Fig. 6 map needed over 10 000 eigenproblems on a personal computer (p. 16).
- **Mean flow** (p. 7–8): each jet is the Michalke tanh profile (eq. 3.1) placed at (±s/2, 0), superposed ("tailored" mean flow). Valid in the converging region where the two shear layers are still separate; Stavropoulos et al. (2023) and Padilla-Montero et al. (2023) found it valid for at least the first ~5D for close jets (p. 8). Zero mean pressure gradient, Crocco–Busemann temperature (eq. 3.2), density from the state equation, no cross-stream mean velocity. Default M_j = 1.5, T_R = 1, R/θ = 12.5 (thin shear layer, first diameter).
- **Formulation 2: twin-jet vortex sheet** (p. 6–7):
  - Inviscid, infinitely thin shear layer, uniform jet velocity inside, zero outside (Lessen et al. 1965; Michalke 1970). Pressure obeys a Helmholtz equation in each region (eqs. 2.5–2.6).
  - Inner solution per jet in I_m, outer solution as sums of K_m about both jets, one line per family (eqs. 2.7–2.8; Morris 1990, Du 1993, Stavropoulos et al. 2023).
  - Graf's addition theorem (eqs. 2.11–2.12) rewrites the second jet's field about the first, giving an infinite linear system (eqs. 2.13–2.15) that couples all m.
  - Truncated at N = 5, convergence checked up to N = 10 (p. 7). For large s the coupling term vanishes and the single-jet dispersion relation (Lessen et al. 1965; Towne et al. 2017) is recovered.
  - About 1.5 million eigenvalues per (M_j, T_R) case in under an hour on a PC (p. 16). Used for the M_j and T_R sweeps (s/D up to 10, St 0.1–1).
- **Metrics:** relative growth-rate change Δ̃k_i (eq. 3.4) for thin shear layers; absolute change Δk_i (eq. 3.6) for thicker ones, where the single-jet k_i can pass through zero (p. 15).
- **Visualisation:** eigenfunctions are extruded over 10D with exp(−k_i x) removed so amplitude stays constant; phase is taken on a cylinder of radius 0.75D around one jet (p. 9).

## Key equations
- Modal ansatz (eq. 2.1, p. 4): $\mathbf q'(\mathbf x,t) = \mathbf q(y,z)\,\exp\big(\mathrm i(kx-\omega t)\big) + \text{c.c.}$, with real ω and complex k (spatial problem); $\omega = 2\pi M_j St$.
- Discretised eigenproblem (eq. 2.2, p. 5): $\mathbf L\mathbf q = k\,\mathbf R\mathbf q$.
- Symmetry conditions at y = 0 (eqs. 2.3–2.4, p. 5):
  $$\text{S}:\ \frac{\partial p}{\partial y}=\frac{\partial T}{\partial y}=\frac{\partial u}{\partial y}=\frac{\partial v}{\partial y}=0,\ w=0;\qquad \text{A}:\ p=T=u=v=0,\ \frac{\partial w}{\partial y}=0$$
- Helmholtz equation and radial wavenumbers (eqs. 2.5–2.6, p. 6):
  $$\frac{\partial^2 p}{\partial r^2}+\frac1r\frac{\partial p}{\partial r}+\frac1{r^2}\frac{\partial^2 p}{\partial\theta^2}-\lambda^2p=0,\qquad \lambda_i=\sqrt{k^2-\tfrac{1}{T_R}(\omega-M_jk)^2},\quad \lambda_o=\sqrt{k^2-\omega^2}$$
- Inner and outer solutions (eqs. 2.7–2.8, p. 6):
  $$p_{i,1}=\sum_{m=0}^{\infty}\hat A_m I_m(\lambda_i r_1)\cos m\theta_1+\hat B_m I_m(\lambda_i r_1)\sin m\theta_1$$
  $$p_o=\sum_m A_m[K_m(\lambda_o r_1)\cos m\theta_1+(-1)^mK_m(\lambda_o r_2)\cos m\theta_2]+B_m[\ldots-\ldots]+C_m[\ldots\sin\ldots+\ldots]+D_m[\ldots\sin\ldots-\ldots]$$
  (the B, C, D lines repeat the A line with a minus sign and/or sin; one line per family).
- Matching at r = D_j/2 (eqs. 2.9–2.10, p. 6): pressure continuity, and
  $$\left.\frac{\partial p_i}{\partial r}\right|_{D_j/2}=\frac1{T_R}\frac{(\omega-kM_j)^2}{\omega^2}\left.\frac{\partial p_o}{\partial r}\right|_{D_j/2}$$
- Graf's addition theorem (eqs. 2.11–2.12, p. 7): $K_m(\lambda_o r_2)\cos m\theta_2=\sum_{n=-\infty}^{\infty}(-1)^nK_{m-n}(\lambda_o s)I_n(\lambda_o r_1)\cos n\theta_1$, and the same with sin.
- Twin-jet dispersion relation (eqs. 2.13–2.15, p. 7):
  $$\mathcal D(\omega,k;M_j,s/D,D_j)=\sum_{m=0}^{\infty}\psi_m\big[a_{nn}\delta_{mn}+\phi_y(-1)^m c_{mn}\big]=0$$
  $$a_{nn}=\frac{1}{(1-kM_j/\omega)^2}-\frac1{T_R}\frac{\lambda_o}{\lambda_i}\frac{K_n'(D_j\lambda_o/2)\,I_n(D_j\lambda_i/2)}{I_n'(D_j\lambda_i/2)\,K_n(D_j\lambda_o/2)}$$
  $$c_{mn}=(-1)^n\epsilon_n\big[K_{m-n}(\lambda_os)+\phi_zK_{m+n}(\lambda_os)\big]\left[\frac{I_n(D_j\lambda_o/2)}{K_n(D_j\lambda_o/2)}\frac{1}{(1-kM_j/\omega)^2}-\frac1{T_R}\frac{\lambda_o}{\lambda_i}\frac{I_n(D_j\lambda_i/2)\,I_n'(D_j\lambda_o/2)}{K_n(D_j\lambda_o/2)\,I_n'(D_j\lambda_i/2)}\right]$$
  ψ_m stands for A_m, B_m, C_m or D_m; ε_n = 0.5 for n = 0, else 1; φ_y, φ_z from Table 1.
- Michalke profile (eq. 3.1, p. 7): $\bar u/U_j=\tfrac12\big[1+\tanh\big(\tfrac14\tfrac{R}{\theta}(\tfrac{R}{r}-\tfrac{r}{R})\big)\big]$, R = D/2.
- Crocco–Busemann (eq. 3.2, p. 8), non-dimensional as in §2: $\bar T/T_\infty=(U_j-\bar u)\,\bar u/2+\frac{1}{\gamma-1}\big(1+(T_R-1)\bar u/U_j\big)$.
- Helical combination of the degenerate single-jet modes (eq. 3.3, p. 9): $p=\hat p_{SA1}e^{\mathrm i(k_{SA1}x-\omega t)}+\mathrm i\,\hat p_{AS1}e^{\mathrm i(k_{AS1}x-\omega t)}+\text{c.c.}$
- Shear-layer growth (eq. 3.5, p. 14; Crighton & Gaster 1976 fit to Crow & Champagne 1971): $\theta/R=0.06(x/D)+0.04$.
- Growth-rate change (eqs. 3.4, 3.6, p. 12, 15):
  $$\tilde\Delta k_i=\frac{k_i(St,s/D)-k_i(St,s/D\to\infty)}{|k_i(St,s/D\to\infty)|},\qquad \Delta k_i=k_i(St,s/D)-k_i(St,s/D\to\infty)$$

> Equations were checked against renders of PDF p. 4–8 and are transcribed as printed. Points to verify before coding the vortex-sheet model:
> - Eq. 2.15 prints λ₀ (zero) once in K_{m+n}(λ₀s) and in one denominator; this is taken as a typo for λ_o.
> - The ordering of primes in the second term of c_mn (I_n(D_jλ_i/2) I_n′(D_jλ_o/2) over K_n(D_jλ_o/2) I_n′(D_jλ_i/2)) was read from a 110 dpi render; check against the PDF.
> - Eq. 3.2 is in the paper's scaling (temperature over (γ − 1)T∞, velocity over c∞); it is not the usual dimensional Crocco–Busemann form.
> - Text in §3.2 (p. 8) says the Cartesian formulation is "described in §2.2"; it is §2.1.

## Data tables
**Symmetry families** (Table 1, p. 4):

| Family | (x, y)-plane | (x, z)-plane | Morris (1990) | Azimuthal modes | φ_y | φ_z |
|---|---|---|---|---|---|---|
| SS | Even | Even | I | cos(2nθ) | 1 | 1 |
| AS | Odd | Even | II | cos((2n+1)θ) | −1 | −1 |
| SA | Even | Odd | III | sin((2n+1)θ) | −1 | 1 |
| AA | Odd | Odd | IV | sin(2nθ) | 1 | −1 |

m = 1 mode meanings (p. 11): SS1 in-phase (varicose) lateral flapping and SA1 counter-phase (sinuous) lateral flapping, both in the plane of the jet axes; AS1 in-phase and AA1 counter-phase flapping in the perpendicular (vertical) plane.

**Shear-layer thickness cases** (p. 15, from eq. 3.5):

| R/θ | 12.5 | 7.5 | 5 | 3 |
|---|---|---|---|---|
| x/D | ≈ 0.67 | 1.6 | 2.7 | 4.9 |
| Peak −k_i of leading mode (read from Fig. 7) | ≈ 1.1 | ≈ 0.7 | ≈ 0.4 | ≈ 0.1 |

**Approximate values read from figures** (verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| Single-jet m = 1 eigenvalue, M_j 1.5, R/θ 12.5, St 0.3 | k ≈ 3.22 − 1.114i | Fig. 4b,d, p. 11 |
| SA1/SS1 stripe boundary | St·s/D ≈ 1 (e.g. St ≈ 0.33 at s/D = 3, ≈ 0.18 at 5) | Fig. 6a, p. 14 |
| AA1/SA1 boundary (low St, small s/D) | St·s/D ≈ 0.4 | Fig. 6a, p. 14 |
| Max relative destabilisation shown | ≥ 10% (colour scale saturates) | Fig. 6b, p. 14; text p. 12 |

## Figures worth remembering
- **Fig. 1 (p. 4):** geometry and the three coordinate systems (r, θ), (r₁, θ₁), (r₂, θ₂).
- **Fig. 2 (p. 9):** k-plane eigenspectra at St = 0.3 for a single jet (a) and twin jets at s/D = 2.2 (b), m = 0–5 labelled; repeated eigenvalues split in (b).
- **Fig. 3 (p. 10):** single-jet SA1, AS1 and SA1 + i AS1 pressure fields and phase at r = 0.75D: two flapping modes and the helix built from them.
- **Fig. 4 (p. 11):** the four m = 1 eigenvalues against s/D (1.8–5) at St = 0.3: spiral in the k plane, k_r and k_i with the single-jet value as a dashed line. The key figure for how coupling splits the modes.
- **Fig. 5 (p. 13):** twin-jet SA1, AA1 and SA1 + i AA1 at s/D = 2.2: counter-rotating helices near the nozzle turning into sinuous flapping.
- **Fig. 6 (p. 14):** preferred-mode map (St 0.1–0.6, s/D 1.8–5) for the finite-thickness jet: (a) leading mode stripes AA → SA → AS → SS from lower left to upper right; (b) relative destabilisation; (c) both combined.
- **Fig. 7 (p. 15):** same map for R/θ = 12.5, 7.5, 5, 3 with absolute Δk_i colours and −k_i contours; the thick line marks k_i = 0.
- **Fig. 8 (p. 17):** vortex-sheet maps for M_j = 1.0–2.0 (T_R = 1), s/D up to 10, St 0.1–1; extra SS1 stripe at high St and the SA1 anomaly at M_j ≥ 1.6.
- **Fig. 9 (p. 18):** vortex-sheet maps for T_R = 1–4 at M_j = 1.5.

> Fig. 7 caption (p. 15) says each colour level is Δk_i = −0.1, while the text (p. 15) says −0.01; the latter fits the magnitudes in Fig. 6. The text (p. 16) says AA1 leads at R/θ = 3, but Fig. 7(d) as rendered looks mostly yellow (SA1); check against the PDF.

## Notation
- SS1, AS1, SA1, AA1: m = 1 KH eigenmodes in each symmetry family (Nogueira & Edgington-Mitchell 2021 write 1SS etc.). First letter: symmetry of pressure about the (x, y)-plane per Table 1.
- s: centre-to-centre spacing; D: nozzle diameter; D_j: ideally expanded diameter (= D here); R = D/2.
- M_j = U_j/c∞ (acoustic Mach number); T_R = T_j/T∞; St = fD/U_j; ω = 2πM_j St.
- k = k_r + i k_i: complex axial wavenumber; growth rate is −k_i.
- θ: momentum thickness (in R/θ); θ, θ₁, θ₂ also denote azimuthal angles.
- λ_i, λ_o: inner and outer radial wavenumbers; I_m, K_m: modified Bessel functions; φ_y, φ_z: family sign factors; ε_n: 0.5 for n = 0 else 1.
- Δ̃k_i, Δk_i: relative and absolute growth-rate change relative to the single jet.

## Relevance to this project
The user's group studies coupled twin jets and screech with schlieren, acoustics and PIV (CLAUDE.md). This paper gives the linear-theory baseline for which coupling symmetry a perfectly expanded twin jet should prefer, and the vortex-sheet machinery for twin-jet screech models.

- **Modelling side:**
  - Two cross-checked LST tools: a 2D Cartesian LNS eigenproblem (any cross-section, includes thickness and viscosity) and a cheap twin-jet vortex sheet (eqs. 2.13–2.15). The vortex sheet is fast enough for millions of eigenvalues, so it is the practical choice for parameter maps or for screech-frequency models, as in Stavropoulos et al. (2023) for axisymmetric twin-jet screech (not yet indexed).
  - Assumptions to remember: locally parallel, perfectly expanded (no shocks), superposed single-jet mean flows (valid ~5D for close jets), M_j defined with c∞, KH modes only (no guided-jet-mode analysis here), no non-parallel integration or nonlinear saturation.
  - Prediction for experiments: lateral sinuous (SA1) flapping is favoured in the first few diameters for most St and s/D at M_j ≥ 1.5, with varicose SS1 at larger St·s/D. Coupling strength scales roughly with 1/(St·s/D).
- **Agreement with and differences from related notes:**
  - [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md): same symmetry naming and cross-validated numerics. That paper (NPR 5, s = 3D, St 0.19, PIV mean flow) found the four m = 1 KH modes nearly equal and argued the guided jet mode sets the observed 1SS coupling. This paper agrees that KH growth differences are small at moderate St·s/D, and its conclusion explicitly defers to guided-mode closure for screeching jets. Note that this paper's thin-shear-layer map would favour SA1 near s/D = 3, St ≈ 0.2 (Fig. 6a, read from figure), not the 1SS observed there; the difference fits the authors' caveat about shock-containing jets.
  - [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md): single-jet vortex-sheet and guided-mode closure. The twin-jet vortex sheet here reduces to that single-jet model as s → ∞ (p. 7).
  - [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) and [nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md): the screech closure arguments the paper cites as overriding KH-growth preference. The SA1–SA2 saddle point at M_j > 1.6 is explicitly not absolute (two downstream KH modes), unlike the KH–guided-mode saddle in the absolute-instability note.
  - Rectangular twin jets use the same D2 split: [yeung-2022-3d-spod-twin-rectangular-jet](yeung-2022-3d-spod-twin-rectangular-jet.md) (screech only in AA/AS), [jeun-2024-screech-coupling-closure-rectangular-twin-jets](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) (intermittent out-of-phase coupling, guided-mode closure), [esfahani-2021-coupling-modes-twin-rectangular-jets](esfahani-2021-coupling-modes-twin-rectangular-jets.md) and [esfahani-2021-control-twin-rectangular-jet-coupling](esfahani-2021-control-twin-rectangular-jet-coupling.md). Their axes and letter order may differ from Table 1 here, so map conventions before comparing.
  - [stavropoulos-2026-jet-edge-interaction](stavropoulos-2026-jet-edge-interaction.md): later work by the second author on a different resonance.
- **Data analysis implications (time-resolved vs not):**
  - Testing these predictions needs the symmetry split of measured data: symmetric/antisymmetric decomposition about both planes before POD (non-time-resolved PIV, as in Nogueira & Edgington-Mitchell 2021) or before SPOD (time-resolved schlieren or LES, as in Yeung et al. 2022). Planar schlieren integrates along the line of sight, so it sees only some families; a view normal to the nozzle plane is needed for lateral (SS1/SA1) flapping.
  - The paper predicts helical motion only as a near-nozzle transient and notes Bell et al. (2021) intermittency between uncorrelated helical and coupled flapping states (p. 3). That intermittency is a natural target for the SPOD → reconstruction → Hilbert POD pipeline or a Hilbert phase difference between the jets (as in Jeun 2024); see [raiola-2025-hilbert-pod](raiola-2025-hilbert-pod.md). Block-averaged SPOD alone would blur the two states.
- **Impinging and non-axisymmetric work:** the Cartesian LNS formulation handles arbitrary cross-sections (it has been applied to rectangular jets, Rodríguez, Prasad & Gaitonde 2021), so it could model non-axisymmetric nozzles studied in the lab.
- **Related works cited, candidates for `/add-paper`:**
  - Stavropoulos et al. 2023 (axisymmetric screech tones of round twin jets via LST, JFM 965 A11).
  - Bell et al. 2018 (Exp. Fluids 59) and Bell et al. 2021 (intermittent modal coupling, JFM 910 A20); Knast et al. 2018 (AIAA J 56).
  - Morris 1990 (instability waves in twin supersonic jets); Green & Crighton 1997.
  - Edgington-Mitchell et al. 2022 (a unifying theory of jet screech, JFM 945 A8); Edgington-Mitchell 2019 review.
  - Padilla-Montero et al. 2023 (twin-jet mean flow and LST, AIAA 2023-3350); Rodríguez et al. 2018 (3D PSE twin jets).
