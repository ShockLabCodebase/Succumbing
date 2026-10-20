---
key: "garnaud-2013-preferred-mode-incompressible-jets"
title: "The preferred mode of incompressible jets: linear frequency response analysis"
authors: ["Garnaud, X.", "Lesshafft, L.", "Schmid, P. J.", "Huerre, P."]
year: 2013
type: "article"
venue: "JFM 716, 189–202"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "716", "pages": "189--202", "note": "Held PDF is the HAL author version hal-00756811"}
doi: "10.1017/jfm.2012.540"
arxiv: ""
pdf: "Garnaud-EtAl_2013_The-Preferred-Mode-Of-Incompressible-Jets-Linear-Frequency-Response-Analysis.pdf"
version: "preprint"
unverified: []
group: false
facility: ""
data: ["model-only"]
methods: ["resolvent", "LSA-global", "LSA-local"]
flow: ["round-jet", "subsonic"]
phenomena: ["KH-wavepackets", "Orr"]
params: {"Re": "1000–5000 (radius-based)", "m": "0–2", "theta/R": "0.043"}
topics: ["linear-models"]
related: ["lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "pickering-2020-lift-up-kh-orr-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "nogueira-2021-absolute-instability-shock-containing-jets", "morra-2021-colour-of-forcing-resolvent-channel"]
cites: ["gudmundsson-2011-instability-wave-models-near-field-jets"]
summary: "Global resolvent of an incompressible model jet with nozzle pipe: no resonating global mode; the preferred mode is a pseudo-resonance, peak gain St ≈ 0.43–0.46, Orr forcing in the pipe BL"
---
# The preferred mode of incompressible jets: linear frequency response analysis

- **Authors:** X. Garnaud, L. Lesshafft, P. J. Schmid, P. Huerre (LadHyX, École Polytechnique – CNRS, Palaiseau)
- **Source:** J. Fluid Mech. 716, 189–202 (2013), doi:10.1017/jfm.2012.540. This file is the HAL author version (hal-00756811v1, deposited 23 Nov 2012, headed "Under consideration for publication in J. Fluid Mech."), so its page layout and possibly some figure details differ from the published paper.
- **PDF:** `References/Paper_PDFs/Garnaud-EtAl_2013_The-Preferred-Mode-Of-Incompressible-Jets-Linear-Frequency-Response-Analysis.pdf` (14 pp.)
- **Page refs:** PDF page numbers. PDF p. 1 is the HAL cover sheet, so the draft's printed page n is PDF page n+1.
- **Tags:** jet preferred mode, global resolvent analysis, optimal harmonic forcing, pseudo-resonance, non-normality, global stability spectrum, pseudomodes, Kelvin–Helmholtz wavepacket, shear-layer vs jet-column mode, Orr mechanism, nozzle-pipe receptivity, mean-flow linearisation, incompressible axisymmetric jet, azimuthal wavenumber m, FreeFEM++/SLEPc

## Summary
The paper asks why round jets amplify forcing most strongly near St_D ≈ 0.3–0.5 (the "preferred mode" of Crow & Champagne 1971). It linearises the incompressible Navier–Stokes equations about a model turbulent mean flow (Monkewitz & Sohn 1988) that includes a length of nozzle pipe, and treats the jet fully non-parallel on a 2-D axisymmetric finite-element mesh (p. 2–4). A global eigenvalue analysis finds every mode stable and no isolated, least-stable mode, so a classic resonance cannot explain the preferred frequency (p. 5). Instead, the optimal gain of the resolvent, computed for body forcing inside the pipe and for forcing at the pipe inflow, peaks at St ≈ 0.46 and 0.43 respectively: the preferred mode is a **pseudo-resonance** of a non-normal amplifier (p. 8, 11–12). The optimal response is a vortical wavepacket that grows as a local shear-layer mode through the potential core, peaks near its end, and then decays as a centreline-peaked jet-column mode (p. 8, 11–13). The optimal forcing sits in the pipe boundary layer, tilted against the shear, which points to the Orr mechanism feeding the wavepacket at the nozzle lip (p. 9, 13).

## Key findings
- **No resonating global mode** (p. 5, Fig. 3):
  - All eigenvalues of the linearised operator are stable. Three families appear: near-origin free-stream modes (slowly decaying standing vortical structures), an upper shear-layer/jet-column branch whose decay rate −ω_i rises with ω_r, and a lower branch that is really pseudomodes on the 10⁻¹⁰ contour of the pseudospectrum.
  - Shear-layer/jet-column eigenmodes grow exponentially through the whole domain, which the authors attribute to stable advection of nearly neutral shear-layer structures.
  - The spectrum depends on domain length (x_max = 40 vs 60), but its qualitative features don't. No isolated mode exists that could resonate, contrary to the Monkewitz (1989) and Huerre & Monkewitz (1990) conjecture (p. 5, 12).
- **Optimal body forcing in the pipe** (§5.1, p. 8–9; Fig. 4a, 5):
  - Peak gain at **St = 0.46** (p. 8). The peak value is ≈ 200 (read from Fig. 4a).
  - Domain truncation affects only very low St, where the response extends beyond x_max (p. 8). Radial truncation at r = 10 is negligible (p. 8).
  - At the peak, perturbations grow strongly in the shear layer just downstream of the nozzle and peak near the end of the potential core (printed "r = 8", presumably x ≈ 8), then become centreline-peaked as they decay (p. 8).
  - With rising St the growth region shortens, growth is faster and the wavelength shorter (p. 8).
  - Forcing amplitude is largest in the pipe-wall boundary layer, more wall-concentrated at higher St, and tilted upstream away from the wall, suggesting the **Orr mechanism** (as in boundary layers, Sipp & Marquet 2012) (p. 8–9).
- **Norm choice** (p. 9): the L² energy norm favours spatially extended responses and is "undoubtedly" responsible for the slight gain rise at very low St. The a-posteriori ‖u_x‖_∞ of the response follows the same trend as the L² gain apart from that low-St rise (values in Data tables).
- **Sensitivity to set-up** (p. 9–10, Fig. 6):
  - Doubling the included pipe length from 5 to 10 changes the gain level but not the curve shape or the optimal St.
  - Raising Re from 10³ to 5 × 10³ raises the gain (peak ≈ 10³ on the log axis) but leaves the optimal St unchanged. The authors note that Re is "rather arbitrary" because a model turbulent mean flow is used (p. 9).
- **Optimal inflow (boundary) forcing** (§5.2, p. 11; Fig. 4b, 7):
  - Peak gain at **St = 0.43**, ≈ 51 (read from Fig. 4b). Converged in mesh (mesh #2, + symbols) and in x_max except at very low St.
  - Response wavepackets are nearly identical to the body-forcing ones except at the highest St shown.
  - The optimal inflow profile peaks on the centreline at low St and in the pipe boundary layer at intermediate St. No-slip forces it to zero at r = 1, with a jump over a Stokes-layer thickness ∝ (ωRe)^{−1/2} (p. 11).
  - Near **St ≈ 1** a formerly sub-optimal singular-value branch becomes dominant: forcing near the centreline grows weakly in the pipe and decays immediately in the free jet (Fig. 7d) (p. 11).
- **Link to local stability** (§5.3, p. 11–12; Fig. 8):
  - The envelope growth rate ½ ∂_x log E of the global wavepacket follows the local spatial shear-layer mode (peak −k_i ≈ 1 near x ≈ 1) through the potential core, crosses zero near x ≈ 6–7, undershoots to ≈ −0.2 near x ≈ 10, then adjusts to the weakly damped jet-column mode (≈ −0.1) beyond x ≈ 20 (values read from Fig. 8; text says the switch begins downstream of x ≈ 5).
  - The optimal forcing does **not** resemble local instability modes of the parallel pipe flow. It is a superposition of local modes chosen to exploit transient (non-modal) spatial amplification (Andersson et al. 1999) (p. 11).
- **Azimuthal wavenumber** (p. 12–13, Fig. 9):
  - For m = 1 and 2 the body-forcing gain decreases monotonically with St and exceeds m = 0 at low St (≈ 9 × 10² and 3 × 10² vs ≈ 60 at St = 0.1, read from the log plot). The curves merge above St ≈ 0.55.
  - The larger low-St m ≥ 1 gains come mostly from spatial amplification over a longer distance downstream of the potential core (larger L² norm), not from faster growth near the nozzle. Growth through the potential core is similar for all m.
  - Experiments don't show m = 1 dominance in the self-similar region. The authors blame turbulence and nonlinear saturation, which the model omits, and suggest an L^∞-based gain as future work (p. 13).
- **Agreement with experiment** (p. 12): the predicted St ≈ 0.45 agrees with low-amplitude forcing experiments (Moore 1977; Crow & Champagne 1971). The preferred frequency depends on forcing amplitude through nonlinearity, which a linear analysis cannot capture (p. 12). Forcing shape matters little: body and inflow forcing give similar results (p. 13).
- **On Cooper & Crighton (2000)** (p. 4, 12): their WKBJ "global mode" at St = 0.44 rests on a tangent approximation of the local dispersion relation and a Gaussian envelope. The authors argue such modes should not be expected in a full global analysis.

## Setup / method
No experiments. This is a purely linear, global (biglobal, axisymmetric 2-D) model study.

### Geometry and base flow (p. 3–4, Fig. 1–2)
- Incompressible Newtonian fluid. Lengths scaled by the jet radius R*, velocities by the exit centreline velocity U₀*. **Re = U₀*R*/ν* = 10³** (radius-based; 2 × 10³ on diameter) (p. 3).
- Frequencies: circular ω, or diameter-based **St = ω/π** (p. 3).
- Domain Ω in (x, r): a solid pipe wall Γ_w of length **x_p = 5** upstream of the exit (also 10 in Fig. 6a), inlet Γ_i, outlet Γ_o, lateral boundary Γ_t at r_max, axis Γ_a (Fig. 1, p. 4). r_max = 10 verified not to matter; x_max = 20–60 tested (p. 4, 8).
- **Base flow:** the Monkewitz & Sohn (1988) model of a turbulent free-jet mean flow. Potential core starts with momentum thickness **θ = 0.043** and extends over **eight radii**, followed by a self-similar region with near-Gaussian profiles. A parallel pipe-flow region is added upstream with a smooth transition over 0 ≤ x ≤ 1 (Garnaud et al. 2011) (p. 3–4).
- Linearising about a time-averaged mean flow, not a steady solution, is justified by Pier (2002) and Barkley (2006). Note that the "turbulent" mean flow is combined with a laminar Re = 10³ viscosity and **no eddy viscosity** (p. 3, 9).
- Perturbation ansatz: (u, p) = (U + εu′, P + εp′) (p. 4).

### Boundary conditions (p. 3, 6)
- No-slip on Γ_w; stress-free (1/Re ∂u′/∂n − p′n = 0) on Γ_o and Γ_t; axis compatibility conditions (Matsushima & Marcus 1995).
- Body-forcing problem: u′ = 0 on Γ_i ∪ Γ_w; ψ(x) = 1 for x < 0 (inside the pipe) and 0 for x ≥ 0 (p. 6).
- Inflow-forcing problem: u′ = 0 on Γ_w, u′ = f′ on Γ_i, no body force (p. 6).

### Mesh and numerics (p. 3–4, 6–7)
- Two unstructured P2–P1 finite-element meshes (FreeFEM++), same extent, different refinement. Vertex spacing h₁ near the lip region (x₁⁻ = −2 ≤ x ≤ x₁⁺ = 1, |r − 1| ≤ δ₁/2 = 0.075), h₂ in the shear layer up to x₂⁺ = 10 (|r − 1| ≤ δ₂/2 = 0.25), h₃ for r ≤ r₃⁺ = 2, h₄ beyond.

| Mesh | h₁ | h₂ | h₃ | h₄ |
|---|---|---|---|---|
| #1 | 0.035 | 0.035 | 0.07 | 0.2 |
| #2 | 0.01 | 0.035 | 0.05 | 0.2 |

- Semi-discrete system B q̇ = L q + B_f f (eq. 4.5). Energy pseudonorm Q (positive semi-definite, no pressure weight) and forcing norm Q_f (symmetric positive-definite) (p. 7).
- Optimal gain = leading eigenvalue of a Hermitian problem (eq. 4.9), solved by Lanczos in SLEPc. (L + iωB)⁻¹ and its adjoint applied by MUMPS sparse LU through PETSc; Q_f⁻¹ by Cholesky, or ILU-preconditioned CG if memory is short (p. 7).
- Mostly axisymmetric (m = 0); m = 1, 2 body forcing only briefly (Fig. 9, p. 12–13). Further details are in Garnaud (2012, PhD thesis) (p. 5).

### Global eigenvalue problem (p. 5)
- Homogeneous Dirichlet on Γ_i ∪ Γ_w; spectra computed for x_max = 40 and 60.

### Local stability comparison (p. 11–12)
- Local spatial shear-layer and jet-column modes of the same base flow at St = 0.43, compared with the envelope growth rate of the global response at each x. The local solver is not described beyond citing Jendoubi & Strykowski (1994) and Lesshafft (2007).

## Key equations
Notation as in the paper: primes are perturbations, tildes Fourier amplitudes, time dependence exp(−iωt).

- **Global eigenproblem** (eq. 3.1, p. 5), as printed:
  $$\nabla\cdot\boldsymbol u'=0,\qquad -\mathrm i\omega\boldsymbol u'+(\boldsymbol U\cdot\nabla)\boldsymbol u'+(\boldsymbol u'\cdot\nabla)\boldsymbol U=-\nabla p'+\frac{1}{Re}\nabla^2\boldsymbol u'+\psi(\boldsymbol x)\boldsymbol f'$$
- **Forced linear system, body forcing** (eq. 4.1, p. 6):
  $$\frac{\partial\boldsymbol u'}{\partial t}+(\boldsymbol U\cdot\nabla)\boldsymbol u'+(\boldsymbol u'\cdot\nabla)\boldsymbol U=-\nabla p'+\frac{1}{Re}\nabla^2\boldsymbol u'+\psi(\boldsymbol x)\boldsymbol f',\quad \boldsymbol u'=0\ \text{on}\ \Gamma_i\cup\Gamma_w,\quad \frac{1}{Re}\frac{\partial\boldsymbol u'}{\partial n}-p'\boldsymbol n=0\ \text{on}\ \Gamma_t\cup\Gamma_o$$
- **Body-forcing gain** (eq. 4.2, p. 6), as printed:
  $$G^{bf}_{opt}(\omega)=\max_{\tilde{\boldsymbol f}}\left(\int_\Omega|\tilde{\boldsymbol u}|^2 r\,\mathrm dr\,\mathrm dx\right)\Big/\left(\int_\Omega|\tilde{\boldsymbol f}|^2 r\,\mathrm dr\,\mathrm dx\right)$$
- **Inflow-forcing system and gain** (eq. 4.3–4.4, p. 6): as eq. 4.1 without the body force, u′ = 0 on Γ_w, stress-free on Γ_t ∪ Γ_o, u′ = f′ on Γ_i, and
  $$G^{bc}_{opt}(\omega)=\max_{\tilde{\boldsymbol f}}\left(\int_\Omega|\tilde{\boldsymbol u}|^2 r\,\mathrm dr\,\mathrm dx\right)\Big/\left(\int_{\Gamma_i}|\tilde{\boldsymbol f}|^2 r\,\mathrm dr\right)$$
- **Semi-discrete and harmonic forms** (eq. 4.5–4.6, p. 6–7):
  $$B\dot{\boldsymbol q}=L\boldsymbol q+B_f\boldsymbol f,\qquad -(L+\mathrm i\omega B)\tilde{\boldsymbol q}=B_f\tilde{\boldsymbol f}$$
  Check: substituting q = q̃e^{−iωt} into eq. 4.5 gives −iωBq̃ = Lq̃ + B_f f̃, which rearranges to eq. 4.6.
- **Norms** (eq. 4.7, p. 7): $\|\boldsymbol q\|^2=\boldsymbol q^\dagger Q\boldsymbol q=\int_\Omega|\boldsymbol u'|^2 r\,\mathrm dr\,\mathrm dx$; $\|\boldsymbol f\|_f^2=\boldsymbol f^\dagger Q_f\boldsymbol f$.
- **Optimal gain as a Rayleigh quotient** (eq. 4.8–4.9, p. 7):
  $$G_{opt}^2(\omega)=\max\frac{\|\tilde{\boldsymbol q}\|^2}{\|\tilde{\boldsymbol f}\|_f^2}=\max_{\tilde{\boldsymbol f}}\frac{\tilde{\boldsymbol f}^\dagger B_f^\dagger(L+\mathrm i\omega B)^{-1\dagger}Q(L+\mathrm i\omega B)^{-1}B_f\tilde{\boldsymbol f}}{\tilde{\boldsymbol f}^\dagger Q_f\tilde{\boldsymbol f}}$$
  With Q_f = M_f^†M_f (Cholesky) and g̃ = M_f f̃, this is a Hermitian eigenproblem for g̃; in terms of f̃:
  $$Q_f^{-1}B_f^\dagger(L+\mathrm i\omega B)^{-1\dagger}Q^\dagger(L+\mathrm i\omega B)^{-1}B_f\tilde{\boldsymbol f}=\lambda\tilde{\boldsymbol f}\quad(4.9)$$
  The leading λ and its eigenvector give the optimal gain and forcing (p. 7).
- **Envelope growth rate** (p. 11): $-k_i(x)=\tfrac12\,\partial_x(\log E)$, with E(x) the radially integrated perturbation kinetic energy at station x.
- **Stokes-layer scaling** of the inflow forcing near the wall (p. 11): thickness ∝ (ωRe)^{−1/2}.

> Equations were checked against rendered pages (PDF p. 5–7, 11). Points to verify against the published JFM version before reusing them:
> - **G vs G².** Eq. 4.2 and 4.4 define G as a ratio of squared norms (an energy gain), while eq. 4.8–4.9 define G² as that ratio and say G is the leading eigenvalue λ. These cannot all hold. It is therefore unclear whether Fig. 4, 6 and 9 plot energy gain or amplitude gain. The statement "G_opt(ω) is therefore the leading eigenvalue" (p. 7) suggests λ = G² was meant.
> - **Eigenproblem sign.** Fig. 3's caption writes Lq = iωBq, but eq. 3.1 and the e^{−iωt} convention of eq. 4.5–4.6 imply −iωBq = Lq. Eq. 3.1 also still carries the forcing term ψf′, which does not belong in an eigenproblem; presumably a copy from eq. 4.1.
> - Eq. 4.1 puts the stress-free condition on Γ_t ∪ Γ_o, whereas §2.1 (p. 3) mentions only Γ_o.

## Data tables
**Peak gains and frequencies** (m = 0, Re = 10³, x_p = 5, x_max = 40 unless noted):

| Forcing | Peak St | Peak gain | Source |
|---|---|---|---|
| Body force in pipe | 0.46 | ≈ 200 (read from figure) | p. 8, Fig. 4a |
| Inflow (boundary) | 0.43 | ≈ 51 (read from figure) | p. 11, Fig. 4b |
| Body force, Re = 5 × 10³ | unchanged (≈ 0.45–0.5) | ≈ 10³ (log axis) | p. 9–10, Fig. 6b |
| Conclusion, both forcings | "around 0.45" | — | p. 12 |
| Cooper & Crighton (2000) WKBJ global mode | 0.44 | weakly stable | p. 4 |

**A-posteriori peak response ‖u_x‖_∞** (printed on Fig. 5 and 7, p. 9–10). The forcing normalisation is not stated, so compare within a row only.

| Forcing | St = 0.10 | St = 0.48 | St = 0.64 | St = 0.95 |
|---|---|---|---|---|
| Body (Fig. 5) | 0.15 | 0.53 | 0.35 | 0.06 |
| Inflow (Fig. 7) | 0.93 | 2.34 | 1.33 | 0.44 |

**Values read from figures** (verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| Body gain at St ≈ 0.1–0.15 (x_max ≥ 30) | ≈ 60–70; ≈ 5 for St > 1.2 | Fig. 4a, p. 8 |
| Inflow gain local minimum | ≈ 29 at St ≈ 0.17 | Fig. 4b, p. 8 |
| Inflow sub-optimal branches at St = 0.1 | ≈ 9 and ≈ 5; all branches ≈ 3–4 for St ≳ 1 | Fig. 4b, p. 8 |
| Body gain vs pipe length | peak ≈ 120 (x_p = 5) and ≈ 200 (x_p = 10) | Fig. 6a, p. 10 |
| Body gain vs m at St = 0.1 | m = 0: ≈ 60; m = 1: ≈ 9 × 10²; m = 2: ≈ 3 × 10²; all ≈ 16 at St = 1 | Fig. 9, p. 12 |
| m = 0 body gain peak in Fig. 9 | ≈ 1.2 × 10² at St ≈ 0.45 | Fig. 9, p. 12 |
| Eigenvalue upper branch (x_max = 40) | ω_i ≈ −0.1 at ω_r/π ≈ 0.05 to ≈ −0.45 at ω_r/π = 1 | Fig. 3, p. 5 |
| Pseudomode branch | ω_i ≈ −0.5 for ω_r/π ≳ 0.4 | Fig. 3, p. 5 |

> **Inconsistencies between figures to check against the published version:**
> - Fig. 6's caption says "boundary forcing", but its axes are labelled G^{bf} and its levels match body forcing, and the text discusses it under §5.1 (body forcing) (p. 9–10).
> - The peak body gain at x_p = 5, Re = 10³ is ≈ 200 in Fig. 4a and Fig. 6b, but ≈ 120 in Fig. 6a and Fig. 9. Fig. 6a's x_p = 10 curve (≈ 200) matches Fig. 4a, so one set of figures may use a different pipe length or normalisation.
> - The text gives the body-forcing peak at St = 0.46 (p. 8), Fig. 5(b) is labelled St = 0.48, and Fig. 8's caption says the Fig. 5(b) wavepacket is at St = 0.43 (p. 12).
> - "Peaks near the end of the potential core at r = 8" (p. 8) should presumably read x = 8; Fig. 5(b) shows the strongest response around x ≈ 4–8.
> - The conclusions say "for m = 0, G_opt(St) is a monotonically decreasing function of St" (p. 13), but Fig. 9 shows m = 0 with a hump at St ≈ 0.45 and m = 1, 2 decreasing monotonically. Probably "m ≠ 0" was meant.

## Figures worth remembering
- **Fig. 1 (p. 4):** computational domain with pipe, refinement zones and mesh spacings.
- **Fig. 2 (p. 4):** Monkewitz–Sohn model mean axial velocity on x ∈ [−5, 40], r ∈ [0, 2]; potential core to x ≈ 8.
- **Fig. 3 (p. 5):** global spectrum (ω_r/π vs ω_i) for x_max = 40 and 60: all stable, upper shear-layer/jet-column branch, lower pseudomode branch. The key "no resonance" evidence.
- **Fig. 4 (p. 8):** optimal gain vs St for body (a) and inflow (b) forcing, several x_max, mesh check, and the three leading singular values for inflow forcing. The core result.
- **Fig. 5 (p. 9):** optimal body forcing in the pipe (left, tilted against the wall shear) and response u_x (right) at St = 0.10, 0.48, 0.64, 0.95, with ‖u_x‖_∞.
- **Fig. 6 (p. 10):** gain curves for pipe length 5 vs 10 and Re = 10³ vs 5 × 10³; optimal St unchanged.
- **Fig. 7 (p. 10):** |u_x| of the optimal inflow profile and the response, same four St; panel (d) shows the distinct centreline branch.
- **Fig. 8 (p. 12):** global envelope growth rate vs local shear-layer and jet-column spatial growth rates along x. A clean picture of the shear-layer → jet-column hand-over.
- **Fig. 9 (p. 12):** body-forcing gain vs St for m = 0, 1, 2 (log axis).

## Notation
- R*, U₀*, ν*: jet radius, exit centreline velocity, viscosity (dimensional). Re = U₀*R*/ν*. St = ω/π (diameter-based).
- (U, P): base (mean) flow; (u′, p′): perturbation; f′: forcing; tilde: Fourier amplitude with e^{−iωt}.
- ψ(x): forcing weight (1 in the pipe, x < 0). Γ_i, Γ_w, Γ_o, Γ_t, Γ_a: inlet, wall, outlet, lateral, axis boundaries.
- x_p: pipe length in the domain; x_max, r_max: domain extent. θ: momentum thickness of the initial shear layer.
- L, B, B_f: discretised linearised operator, mass matrix, forcing prolongation. Q, Q_f: energy and forcing weight matrices; M_f: Cholesky factor of Q_f.
- G^{bf}_{opt}, G^{bc}_{opt}: optimal gains for body and boundary (inflow) forcing. λ: leading eigenvalue of eq. 4.9.
- k_i: imaginary part of the local spatial wavenumber; −k_i > 0 is growth. E(x): radially integrated perturbation energy.
- m: azimuthal wavenumber.

## Relevance to this project
This is a modelling-only paper and one of the founding global-resolvent studies of jets. It belongs on the "reduced-order models" side of the CLAUDE.md scope, as the template for interpreting wavepackets seen in SPOD of time-resolved schlieren or acoustics.

- **Amplifier vs oscillator, the key conceptual point for resonance work:**
  - A free subsonic (here incompressible) jet has no isolated unstable or weakly damped global mode; its preferred frequency is a pseudo-resonance of a non-normal amplifier (p. 5, 12).
  - Screech and impinging-jet tones are the opposite case: a feedback loop closed by upstream guided jet modes makes a global oscillator. See [nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md) (shocks create an absolute instability), [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [weightman-2019-sound-production-impinging-supersonic-jets](weightman-2019-sound-production-impinging-supersonic-jets.md). This paper is the baseline those resonances depart from: the amplifier gain curve sets which frequencies the KH leg amplifies, and the feedback closure picks tones within it.
  - [oberleithner-2011-swirling-jet-vortex-breakdown-stability](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md) is the counter-example of a jet with a genuine self-excited global mode, also analysed by linearising about the mean flow (both cite Pier 2002 and Barkley 2006).
- **Shear-layer → jet-column hand-over** (Fig. 8): the global wavepacket follows the local KH growth rate through the potential core and then the jet-column mode downstream. This supports using local (parallel) spatial stability on measured mean flows, as in the screech notes, where the base flow varies slowly, and justifies wavepacket envelopes peaking near the end of the potential core.
- **Receptivity at the nozzle:** the optimal forcing lives in the pipe boundary layer near the lip, tilted against the shear (Orr), and becomes more wall-concentrated with St (p. 9, 11). This is consistent with the importance of lip receptivity in feedback flows (lip thickness and geometry selecting helical vs toroidal modes in [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md); upstream jet modes re-exciting the shear layer at the nozzle in [jordan-2018-jet-flap-interaction-tones](jordan-2018-jet-flap-interaction-tones.md)). Including the nozzle pipe in any resolvent or stability model of lab jets appears to matter for gain levels (Fig. 6a), though not for the optimal St.
- **Comparison with later resolvent work:**
  - [pickering-2020-lift-up-kh-orr-jets](pickering-2020-lift-up-kh-orr-jets.md) extends this to compressible LES mean flows with an eddy viscosity and validates against SPOD. Agreements: KH dominates m = 0 around the preferred St, and higher m has larger low-St gain. Differences: Pickering's Orr mechanism is a low-St, downstream, centreline mechanism, whereas the Orr effect here is in the pipe boundary layer; Pickering finds the eddy viscosity essential for SPOD agreement, which this paper omits (laminar Re = 10³ on a turbulent mean flow, gain level strongly Re-dependent, Fig. 6b).
  - The low-St m ≥ 1 gain dominance found here (Fig. 9) and attributed to the L² norm rewarding long downstream structures matches Pickering's observation of m = 1 energy dominance in SPOD, but the authors here say experiments don't show m = 1 dominance in the self-similar region (p. 13). Read these together before trusting low-St, high-m gains.
  - [morra-2021-colour-of-forcing-resolvent-channel](morra-2021-colour-of-forcing-resolvent-channel.md) cautions that real nonlinear forcing is far from the optimal forcing; this paper's optimal forcing is an upper bound on linear amplification, not a model of the actual inflow disturbances.
  - [rolandi-2025-biglobal-resolvent-naca0012](rolandi-2025-biglobal-resolvent-naca0012.md) (discounted biglobal resolvent) and [zhu-2021-recursive-one-way-navier-stokes](zhu-2021-recursive-one-way-navier-stokes.md) (cheaper one-way marching that keeps non-parallel effects) are alternative routes to the same quantities. [towne-2022-database-reduced-complexity-modeling](towne-2022-database-reduced-complexity-modeling.md) provides jet data to test a resolvent model against SPOD.
- **How this connects to the data workflow:**
  - Resolvent gain vs St and the response modes are the model counterparts of SPOD eigenvalue spectra and SPOD modes, which need **time-resolved** data (high-speed schlieren, LES). Comparing a measured SPOD spectrum with a resolvent gain curve is the standard check of a linear-amplifier interpretation.
  - For **non-time-resolved PIV**, the response modes can still be compared with POD-pair complex modes at a known frequency (e.g. a tone measured by a microphone), as in the screech notes.
  - The analysis is single-frequency and linear, so it says nothing about intermittency or amplitude/frequency modulation. The authors note the preferred frequency shifts with forcing amplitude (p. 12); tracking such drift in data would need the SPOD → reconstruction → Hilbert POD route ([raiola-2025-hilbert-pod](raiola-2025-hilbert-pod.md)) or wavelets.
- **Limits to keep in mind:** incompressible (no acoustics, no guided jet modes, no shocks), axisymmetric base flow, model mean flow rather than a measured one, laminar viscosity at an arbitrary Re, L² norm biased to extended structures (p. 9, 13). For screeching or impinging jets a compressible operator on the measured mean flow, with shocks, is needed.
- **Facility:** none (theory/numerics only, LadHyX). Not Shock Lab group work.
- **Related works cited, candidates for `/add-paper`:**
  - Crow & Champagne 1971 (orderly structure in jet turbulence; the preferred mode).
  - Monkewitz & Sohn 1988 (model jet mean flow, absolute instability in hot jets).
  - Sipp & Marquet 2012 (global singular modes of noise amplifiers).
  - Cooper & Crighton 2000 (WKBJ global modes of low-speed jets).
  - Nichols & Lele 2011a (global modes and transient response of a cold supersonic jet).
  - Garnaud et al. 2011 (AIAA 2011-3608, global stability of a model subsonic jet) and Garnaud 2012 (PhD thesis).
