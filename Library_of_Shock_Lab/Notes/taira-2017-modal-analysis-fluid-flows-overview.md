---
key: "taira-2017-modal-analysis-fluid-flows-overview"
title: "Modal analysis of fluid flows: an overview"
authors: ["Taira, K.", "Brunton, S. L.", "Dawson, S. T. M.", "Rowley, C. W.", "Colonius, T.", "McKeon, B. J.", "Schmidt, O. T.", "Gordeyev, S.", "Theofilis, V.", "Ukeiley, L. S."]
year: 2017
type: "review"
venue: "AIAA J. 55(12), 4013–4041"
bib: {"journal": "AIAA Journal", "volume": "55", "number": "12", "pages": "4013--4041"}
doi: "10.2514/1.J056060"
arxiv: "1702.01453"
pdf: "modal-decomposition/Taira-EtAl_2017_Modal-Analysis-Of-Fluid-Flows-An-Overview.pdf"
version: "preprint"
unverified: ["volume, pages and DOI from the bibliographic record, not this arXiv PDF"]
group: false
facility: ""
data: ["none"]
methods: ["POD", "POD-pair", "SPOD", "DMD", "Koopman", "LSA-global", "resolvent", "transient-growth", "ROM"]
flow: ["generic"]
phenomena: ["coherent-structures"]
params: {}
topics: ["modal-decomposition", "linear-operator-methods"]
related: ["taira-2020-modal-analysis-applications-outlook", "schmid-2010-dynamic-mode-decomposition", "rowley-2009-spectral-analysis-nonlinear-flows-koopman", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "towne-2018-spod-relationship-dmd-resolvent", "brunton-2020-machine-learning-fluid-mechanics", "schmidt-2020-guide-spod", "morra-2021-colour-of-forcing-resolvent-channel"]
cites: ["mckeon-2010-critical-layer-framework-turbulent-pipe-flow"]
summary: "Tutorial review in one linear-algebra framework: SVD, pseudospectra, non-normality; POD, SPOD, balanced POD/ERA, DMD, Koopman, global LSA, mean-flow resolvent; data needs of each"
---
# Modal analysis of fluid flows: an overview

- **Authors:** K. Taira (Florida State), S. L. Brunton (Washington), S. T. M. Dawson, C. W. Rowley (Princeton), T. Colonius, B. J. McKeon, O. T. Schmidt (Caltech), S. Gordeyev (Notre Dame), V. Theofilis (Liverpool), L. S. Ukeiley (Florida)
- **Source:** published in AIAA J. 55(12), 4013–4041 (2017), doi:10.2514/1.J056060 (volume, pages and DOI from the bibliographic record, not the PDF). This file is the **arXiv version**, arXiv:1702.01453v2 [physics.flu-dyn] (9 Aug 2017), in AIAA preprint style, so its pagination differs from the journal.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Taira-EtAl_2017_Modal-Analysis-Of-Fluid-Flows-An-Overview.pdf` (43 pp.; page refs are the printed "n of 43", which equal PDF pages)
- **Tags:** review, tutorial, EVD, SVD, pseudospectra, non-normality, transient growth, POD, snapshot POD, POD mode pairs, spectral POD (Welch), balanced POD, ERA, DMD, Koopman analysis, global linear stability (biglobal/triglobal), adjoint modes, resolvent analysis, mean-flow resolvent, turbulent jet wavepackets, Galerkin ROM

## Summary
An introductory review, grown out of a 2016 AIAA Aviation tutorial session of the AIAA FDTC discussion group on modal decomposition (p. 2–3). It lays out six techniques in common linear-algebra notation, splitting them into **data-based** methods (POD, balanced POD, DMD) and **operator-based** methods (Koopman analysis, global linear stability, resolvent analysis) (Table 1, p. 3). Each section has the same structure: algorithm with inputs and outputs, notes, strengths and weaknesses, illustrative examples, and outlook (p. 3). A preliminaries section covers eigenvalue and singular value decompositions and pseudospectra, which underpin everything else (p. 3–9), and an appendix shows how to stack PIV/CFD velocity fields into a snapshot matrix (p. 36–37). There is no new data or analysis; the examples are re-used figures from the authors' earlier work (airfoil LES, cavity PIV, jet in crossflow DNS, channel flow, Mach 0.9 jet). The companion paper (Taira et al. 2020, AIAA J 58, "applications and outlook") covers applications.

## Key findings
Being a review, the "findings" are the method properties and trade-offs the authors state.

- **Choice between EVD and SVD** (p. 4–7): EVD needs a square operator mapping a space to itself, so it describes iterated or time-advanced dynamics (A^k, exp(At)). SVD works on any rectangular matrix (e.g. a data matrix), so it cannot act as a propagator but gives optimal low-rank approximations. The singular vectors of A are the eigenvectors of AA* and A*A (p. 7).
- **Eigenvalues do not control transients in non-normal systems** (p. 7–9). A 2×2 example with stable eigenvalues −0.1 and −0.2 and nearly parallel eigenvectors (angle parameter ε → 0) shows large transient growth before decay (Fig. 5). The ε-pseudospectrum (eq. 15–17) bounds it from below via the Kreiss constant (eq. 18). Shear flows are typically non-normal (p. 8). Resolvent analysis is the pseudospectrum evaluated along the imaginary axis z = iω (p. 9).
- **POD** (p. 9–15):
  - Optimal in L2: energy if velocity is used, enstrophy if vorticity is used; also minimises the number of modes for a given error (p. 12).
  - Three equivalent routes: spatial (n×n covariance), snapshot (m×m, Sirovich), and direct SVD of X, which is more robust to round-off (p. 10–12).
  - **Travelling structures need a pair of real modes** shifted by π/2 in the advection direction (eq. 33, p. 13). A complex representation can merge the pair into one mode (citing Nair et al.), and travelling-structure variants exist (p. 13).
  - Over homogeneous, periodic or stationary directions POD reduces to Fourier modes (p. 13).
  - Weaknesses: second-order statistics only; temporal coefficients mix frequencies; ranking is by energy, not dynamical importance; no unique truncation criterion (p. 14).
  - Incoherent noise lower than the signal collects in the high-order modes, so truncation denoises (p. 14).
- **Spectral POD** (p. 13): the frequency-domain POD of Lumley, estimated by Welch's method, gives orthogonal, energy-ranked modes at each frequency for stationary flows. The authors note it is **not** the method of the same name by Sieber et al. (2016), which filters the temporal correlation matrix (p. 13). Its link to resolvent analysis and DMD is flagged as recent theory (p. 15, citing Towne, Schmidt & Colonius).
- **Balanced POD** (p. 15–19): two bi-orthogonal mode sets (balancing and adjoint) ranked by Hankel singular values, i.e. by input–output importance. It captures low-energy but highly observable structures, so models based on it beat POD models for non-normal flows (p. 18). It needs **linearised forward and adjoint impulse responses**, so it is effectively simulation-only; ERA gives the same reduced model from input–output data alone, without the modes, and so works on experiments (p. 16–18).
- **DMD** (p. 19–23):
  - Eigendecomposition of the best-fit linear map between time-shifted snapshot matrices; each mode has one frequency and one growth rate (p. 19).
  - Weaknesses listed (p. 21): no unique ranking of modes; **typically needs time-resolved data** (extensions exist via compressed sensing); sensitive to noise (algorithms robust to sensor noise exist); meant for autonomous systems; non-orthogonal modes; relies on separation of variables, so it does not extend readily to travelling waves; works poorly for **highly intermittent dynamics**, though multi-resolution DMD and time-delay (HAVOK-type) variants are promising.
  - In many cases DMD is equivalent to a DFT (p. 20). Applied to linearised flow about a steady state it recovers global modes (p. 20).
- **Koopman analysis** (p. 23–26): an infinite-dimensional linear operator on observables of a nonlinear system; DMD approximates it with linear observables (the measured velocity itself), which is often too limited (p. 25). Extended DMD adds nonlinear observables. Finding Koopman eigenfunctions is the central open problem (p. 25–26).
- **Global linear stability** (p. 26–30):
  - Needs a base flow that is an exact (steady or time-periodic) solution of the equations. With a mean turbulent flow, the modes no longer answer a stability question, but they can still model frequencies and shapes of coherent structures (p. 27–28, citing Sipp & Lebedev for caution).
  - Matrix-based (shift-invert, ARPACK, ScaLAPACK) and time-stepping (matrix-free) approaches; time-stepping can produce spurious modes (p. 27).
  - Non-modal (transient-growth) analysis is needed when all global modes are stable (p. 28).
  - Adjoint global modes give receptivity, sensitivity and control information (p. 30).
- **Resolvent analysis** (p. 30–35):
  - Input–output view: the nonlinear term (or any external forcing) drives the linear operator; SVD of the resolvent gives optimal forcing, optimal response and gain (p. 30–31).
  - **Can be used about the turbulent mean flow**, where the nonlinear term is treated as an internal forcing (p. 32). The authors advise checking that the mean-flow operator is stable before interpreting forced responses (p. 32).
  - Suited to convectively unstable flows with no unstable global mode, such as **turbulent jets**: background turbulence sustains wavepackets over a broad band, which resolvent analysis identifies as optimal responses (p. 33).
  - Main weakness: it gives the most amplified modes, but the observed energy is the product of gain and the (unknown) forcing weight, so the nonlinear forcing must be modelled to predict the energetic structures (p. 33). Ways to get the weights are listed (p. 34).
  - Cost: cheap for 1D base flows, costly for 2D, still an unmet challenge for fully 3D base flows (p. 32).
- **Turbulent-jet resolvent example** (Fig. 16, p. 34–35): the leading gain dominates the next four over a wide St range. A **sharp peak at St ≈ 0.4** is attributed to an acoustic resonance in the potential core (trapped acoustic modes, citing Schmidt et al.), on top of a broad peak tied to the preferred mode of forced jets (citing Garnaud et al.). The optimal St = 0.5 forcing uses the Orr mechanism in the shear layer plus direct acoustic forcing in the core, and the response resembles the leading SPOD mode of LES data (p. 34).

## Setup / method
No new experiments or simulations. The illustrative examples and their sources:

| Method | Example | Data | Page / Fig. |
|---|---|---|---|
| POD | 2D flat-plate wing, Re 100, α 30° (mean + 2 modes reconstruct the flow) | DNS (immersed boundary) | p. 2, Fig. 1 |
| POD | NACA 0012, Re 23,000, α 9°, spanwise periodic; modes 1–2 5.8% each, modes 3–4 3.6/3.7%, four modes ≈ 19% | incompressible LES | p. 14–15, Fig. 6 |
| POD | open cavity, M 0.19–0.73, vertical velocity; mode 1 15–20%, first 7 modes 50% | two-component PIV (Murray, Sällström & Ukeiley 2009) | p. 14–16, Fig. 7 |
| Balanced POD / ERA | flat-plate wing wake, Re 100, α 35°, feedback stabilisation | linearised forward + adjoint simulations | p. 18, Fig. 8 |
| DMD | jet in crossflow, 251 snapshots; modes at f = 0.0175 and 0.141 | DNS (Rowley et al. 2009) | p. 21–22, Fig. 9 |
| DMD vs POD | plate with elliptic leading edge, Re 100,000, synthetic-jet actuation at 0.6c; DMD isolates the actuation frequency (4.40) and its superharmonic | LES | p. 22, Fig. 10 |
| Koopman | 2-variable system with slow manifold x₂ = x₁² | analytic | p. 24–25, Fig. 11 |
| Global stability | NACA 4415, Re 500, α 20°, short-wavelength Floquet mode giving stall-cell patterns | time-periodic base flow (He et al. 2016) | p. 28–29, Fig. 12 |
| Global stability | lateral-wall-bounded 3D open cavity, Re 1050, triglobal (time-stepper) | steady base flow | p. 29, Fig. 13 |
| Resolvent | turbulent channel, h⁺ = 3000, (k_x, k_z, c) = (1/h, 6/h, 0.5 U_CL); mode amplitudes (|u|, |v|, |w|) = (1, 0.05, 0.17) | mean-flow resolvent | p. 33–34, Fig. 15 |
| Resolvent | turbulent jet, five leading axisymmetric gains vs St; St 0.5 forcing/response vs LES SPOD mode | jet mean flow (Mach and source not stated in the caption) | p. 34–35, Fig. 16 |

**Data requirements, by method** (from the Inputs/Outputs blocks and weaknesses):

| Method | Input | Time-resolved data needed? | Experiment usable? | Key parameters / preprocessing |
|---|---|---|---|---|
| POD (spatial / snapshot / SVD) | snapshots of any scalar or vector field, mean removed (eq. 21) | No for spatial modes; snapshots should resolve the important fluctuations if temporal coefficients matter (p. 12) | Yes | number of snapshots m; spatial weights W for non-uniform grids (footnote h, p. 11); truncation r by energy ratio (eq. 26) |
| Spectral POD | time series, Welch blocks | **Yes** | Yes | n_b blocks of m_FFT snapshots, possible overlap; ergodicity assumed (p. 13). Window type not specified here |
| Balanced POD | linear forward and adjoint impulse responses | Yes | No (ERA gives the model only) | input and output matrices B, C |
| DMD | snapshot pairs at constant Δt | **Yes**, typically (p. 21) | Yes | SVD truncation r; λ = log(μ)/Δt; consider noise-robust variants |
| Koopman | nonlinear system or observables | Yes (via DMD) | via DMD | choice of observables |
| Global stability | exact steady or periodic base flow + linearised NS | n/a (operator) | mean flow from data only with caveats | homogeneous wavenumber β; Re, M; boundary conditions |
| Resolvent | base or mean flow + linearised NS, real ω | n/a (operator) | mean flow from PIV/LES | norm Q; input/output matrices; homogeneous wavenumbers |

**Algorithms, compact** (p. 10–20):
- *Snapshot POD:* X ∈ ℝ^{n×m}; solve XᵀXψ_j = λ_jψ_j; φ_j = Xψ_j/√λ_j (eq. 29–31).
- *SPOD (Welch):* FFT each of n_b blocks; collect the n_b realisations at frequency ω_k into X̂_{ω_k}; eigendecompose the CSD X̂X̂ᵀ (eq. 34–36).
- *Balanced POD:* forward data X, adjoint data Z; SVD ZᵀX = UΣVᵀ; balancing modes Φ = XVΣ^{−1/2}, adjoint modes Ψ = ZUΣ^{−1/2} (eq. 41–42).
- *DMD (Tu et al. Algorithm 2):* X = UΣVᵀ (reduced, optionally truncated to r); Ã = U_rᵀX^#V_rΣ_r^{−1}; Ãṽ_j = μ_jṽ_j; exact modes v_j = μ_j^{−1}X^#V_rΣ_r^{−1}ṽ_j or projected modes U_rṽ_j; continuous-time λ_j = log(μ_j)/Δt (p. 19–20, eq. 45).
- *Global stability:* q = q₀ + q′, q′ = q̂(ξ, η)e^{i(βζ − ωt)} + c.c.; generalised eigenproblem A(q₀; β)q̂ = ωBq̂, where B is singular for incompressible flow (eq. 51–53, p. 26–27). Unstable steady states via selective frequency damping or Newton–Krylov (p. 27).
- *Resolvent:* M ∂q′/∂t + Aq′ = f; q̂ = R f̂ with R = (iωM + A)^{−1}; SVD of the (weighted) resolvent gives gains, forcing modes (right singular vectors) and response modes (left singular vectors) (eq. 54–57, p. 31–32).
- **Software listed:** MATLAB `eig`/`svd` (Table 2, p. 7), LAPACK, ScaLAPACK, ARPACK (p. 7); `dmdtools` (github.com/cwrowley/dmdtools), `modred` (github.com/belson17/modred), sparsity-promoting DMD MATLAB code (p. 20); online resolvent code for pipe flow (ref. 198, p. 32).

## Key equations
Notation follows the paper: ξ is the spatial coordinate (x is reserved for the data vector), * is the conjugate transpose.

- **Linear system and modal solution** (eq. 4–5, p. 5): $\dot{\boldsymbol x}=\boldsymbol A\boldsymbol x$, $\boldsymbol x(t)=e^{\boldsymbol At}\boldsymbol x(0)=\boldsymbol V e^{\boldsymbol\Lambda t}\boldsymbol V^{-1}\boldsymbol x(0)$.
- **SVD** (eq. 11, p. 6): $\boldsymbol A=\boldsymbol U\boldsymbol\Sigma\boldsymbol V^*$.
- **ε-pseudospectrum** (eq. 15–17, p. 8–9):
  $$\Lambda_\epsilon(\boldsymbol A)=\{z\in\mathbb C:\lVert(z\boldsymbol I-\boldsymbol A)^{-1}\rVert\ge\epsilon^{-1}\}=\{z:\sigma_{\min}(z\boldsymbol I-\boldsymbol A)\le\epsilon\}$$
  Kreiss lower bound (eq. 18): $\sup_{t\ge0}\lVert e^{\boldsymbol At}\rVert\ge\mathcal K$.
- **POD** (eq. 20–23, 28, p. 10–11):
  $$\boldsymbol q(\boldsymbol\xi,t)-\overline{\boldsymbol q}(\boldsymbol\xi)\approx\sum_{j=1}^r a_j(t)\boldsymbol\phi_j(\boldsymbol\xi),\qquad \boldsymbol R\boldsymbol\phi_j=\lambda_j\boldsymbol\phi_j,\quad \boldsymbol R=\boldsymbol X\boldsymbol X^T,\qquad a_j(t)=\langle\boldsymbol x(t),\boldsymbol\phi_j\rangle$$
  Energy criterion (eq. 26): $\sum_{j=1}^r\lambda_j/\sum_{j=1}^n\lambda_j\approx1$. Snapshot form (eq. 29–31): $\boldsymbol X^T\boldsymbol X\boldsymbol\psi_j=\lambda_j\boldsymbol\psi_j$, $\boldsymbol\Phi=\boldsymbol X\boldsymbol\Psi\boldsymbol\Lambda^{-1/2}$. SVD form (eq. 32): $\boldsymbol X=\boldsymbol\Phi\boldsymbol\Sigma\boldsymbol\Psi^T$, $\sigma_j^2=\lambda_j$.
- **Travelling wave as a POD pair** (eq. 33, p. 13): $\sin(\xi-ct)=\cos(ct)\sin\xi-\sin(ct)\cos\xi$.
- **SPOD** (eq. 34–36, p. 13):
  $$\hat{\boldsymbol X}_{\omega_k}=\big[\hat{\boldsymbol x}(\omega_k)^{(1)}\cdots\hat{\boldsymbol x}(\omega_k)^{(n_b)}\big],\qquad \hat{\boldsymbol X}_{\omega_k}\hat{\boldsymbol X}_{\omega_k}^T\boldsymbol\phi_{\omega_k,j}=\lambda_{\omega_k,j}\boldsymbol\phi_{\omega_k,j}$$
- **Balanced POD state space** (eq. 37–38, p. 17): forward $\dot{\boldsymbol x}=\boldsymbol A\boldsymbol x+\boldsymbol B\boldsymbol u$, $\boldsymbol y=\boldsymbol C\boldsymbol x$; adjoint $\dot{\boldsymbol z}=\boldsymbol A^T\boldsymbol z+\boldsymbol C^T\boldsymbol v$, $\boldsymbol w=\boldsymbol B^T\boldsymbol z$; Gramians $\boldsymbol W_c\approx\boldsymbol X\boldsymbol X^T$, $\boldsymbol W_o\approx\boldsymbol Z\boldsymbol Z^T$.
- **DMD** (eq. 43–45, p. 19–20): $\boldsymbol X^\#=\boldsymbol A\boldsymbol X$, $\boldsymbol A=\boldsymbol X^\#\boldsymbol X^+$, $\lambda_j=\log(\mu_j)/\Delta t$.
- **Koopman** (eq. 47–50, p. 23–25): $\mathcal U^tg=g\circ\boldsymbol f$. Example $\dot x_1=\mu x_1$, $\dot x_2=\lambda(x_2-x_1^2)$ becomes linear in $(y_1,y_2,y_3)=(x_1,x_2,x_1^2)$ with
  $$\boldsymbol K=\begin{bmatrix}\mu&0&0\\0&\lambda&-\lambda\\0&0&2\mu\end{bmatrix}$$
- **Biglobal ansatz** (eq. 52–53, p. 27): $\boldsymbol q'=\hat{\boldsymbol q}(\xi,\eta)e^{i(\beta\zeta-\omega t)}+\text{c.c.}$, $\omega=\omega_r+i\omega_i$; $\boldsymbol A(\boldsymbol q_0;\beta)\hat{\boldsymbol q}=\omega\boldsymbol B\hat{\boldsymbol q}$.
- **Resolvent** (eq. 54–57, p. 31):
  $$\boldsymbol M\frac{\partial\boldsymbol q'}{\partial t}+\boldsymbol A\boldsymbol q'=\boldsymbol f(\boldsymbol q'),\qquad \hat{\boldsymbol q}=\boldsymbol R\hat{\boldsymbol f},\ \ \boldsymbol R=(i\omega\boldsymbol M+\boldsymbol A)^{-1},\qquad G=\max_{\hat{\boldsymbol f}}\frac{\hat{\boldsymbol q}^*\boldsymbol Q\hat{\boldsymbol q}}{\hat{\boldsymbol f}^*\boldsymbol Q\hat{\boldsymbol f}}$$
  Incompressible, Fourier-transformed in (k_x, k_z, ω) (eq. 59, p. 31):
  $$\boldsymbol R_{\boldsymbol k}=\left(-i\omega\begin{bmatrix}\boldsymbol I&\\&0\end{bmatrix}-\begin{bmatrix}\boldsymbol L_{\boldsymbol k}&-\nabla\\\nabla^T&0\end{bmatrix}\right)^{-1}\begin{bmatrix}\boldsymbol I\\0\end{bmatrix}$$

> Equations were checked against rendered pages 12, 13, 20, 31 and 32 (the text layer loses Greek letters). Points to check against the PDF or the AIAA J version before relying on them:
> - The SPOD CSD (eq. 36, p. 13) and the transposes in eq. 23, 29, 32 are written with ᵀ, not the conjugate transpose; for complex Fourier data the Hermitian transpose is needed. Eq. 34 also places X̂ in ℝ rather than ℂ. Weighting by quadrature weights (footnote h) is also omitted from the SPOD equations.
> - The text cites "Eq. (36)" (the SPOD eigenproblem) as the spatial POD eigenproblem on p. 11–12; it should be eq. 22.
> - Eq. 57 normalises forcing and response with the same Q; the text on p. 31 says the largest singular value is the "(squared) gain", which depends on whether G is defined as an energy ratio (as here) or an amplitude ratio. Check the convention before comparing gains with other papers (e.g. [garnaud-2013](garnaud-2013-preferred-mode-incompressible-jets.md)).
> - The Koopman K matrix and eq. 49 were rebuilt from the garbled text and the standard example (Brunton et al. 2016); verify the signs on p. 24–25.
> - Eq. 59 sign convention (−iω with e^{iωt} in eq. 55) is as printed; it differs in sign from eq. 56 and may be a typo.

## Data tables
Only the energy numbers quoted in the examples are quantitative:

| Example | Mode energies | Page |
|---|---|---|
| NACA 0012 LES, Re 23,000, α 9° | modes 1, 2: 5.8% each; modes 3, 4: 3.6%, 3.7%; total ≈ 19% | p. 14–15 (Fig. 6) |
| Open-cavity PIV, M 0.2–0.73 | mode 1: 15–20%; modes 1–7: 50% | p. 14 |

## Figures worth remembering
- **Fig. 1 (p. 2):** POD of 2D flat-plate wing: mean + two modes reconstruct the shedding; a compact picture of what modal decomposition does.
- **Fig. 3 (p. 5):** eigenvalue location in the complex plane vs growth/decay and frequency of e^{λt}.
- **Fig. 5 (p. 8):** transient growth and expanding ε-pseudospectra as the eigenvectors become nearly parallel: the standard non-normality illustration.
- **Fig. 6 (p. 15):** airfoil LES POD pairs (shedding pair + subharmonic pair).
- **Fig. 7 (p. 16):** cavity PIV POD modes at M 0.19 and 0.29: similar shear-layer structures across Mach.
- **Fig. 10 (p. 22):** POD vs DMD on an actuated separated flow: DMD isolates the actuation frequency and its superharmonic, POD mixes frequencies.
- **Fig. 14 (p. 31):** resolvent block diagram: nonlinear term u·∇u as forcing of the linear dynamics.
- **Fig. 16 (p. 35):** jet resolvent gains vs St (sharp trapped-acoustic peak near St 0.4), St 0.5 forcing (pressure) and response, and the leading SPOD mode from LES.

## Notation
- ξ: spatial coordinate; x(t): data (snapshot) vector; X, X^#: snapshot matrix and its one-step shift; n: spatial DOF, m: number of snapshots.
- φ_j, a_j(t), λ_j: POD modes, coefficients, energies. Φ, Ψ: left/right singular vectors (POD) or balancing/adjoint modes (BPOD).
- n_b, m_FFT: SPOD block count and block length; ω_k: discrete frequency.
- μ_j: discrete DMD eigenvalue; λ_j = log(μ_j)/Δt: continuous-time eigenvalue. Ã: r×r projected operator.
- q₀ (base flow), q̄ (mean flow), q′ (perturbation); β: homogeneous wavenumber; ω = ω_r + iω_i in the stability ansatz.
- M, A: mass and linear operators; R: resolvent; Q: norm weight; G: gain; f: nonlinear or external forcing; k = (k_x, k_z, ω).
- 𝒰^t: Koopman operator; g: observable; K: finite matrix representation on an invariant subspace.

## Relevance to this project
A primer, not a research result. It is the most compact single reference for the linear algebra behind every step of the CLAUDE.md workflow and for the modelling tools (global stability, resolvent) used alongside the experiments.

- **Matching methods to data:**
  - *Non-time-resolved PIV:* snapshot POD (or direct SVD with spatial weights) is the right tool; the paper's explanation of travelling structures as π/2-shifted mode pairs (eq. 33, p. 13) is the basis of the POD-pair phase recovery used in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md). The "complex representation" it mentions is what HPOD does systematically ([raiola-2025](raiola-2025-hilbert-pod.md)).
  - *Time-resolved schlieren and acoustics:* SPOD (Welch blocks, ergodicity) and DMD both need time resolution. The paper's SPOD section is brief and omits windowing and overlap choices; use [towne-2022](towne-2022-database-reduced-complexity-modeling.md), [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md) for practical SPOD settings.
  - DMD is flagged as weak for **highly intermittent dynamics** and noisy data, and as relying on separation of variables (p. 21). That is a reason to prefer SPOD → reconstruction → Hilbert POD for mode switching in screech and impinging jets, with multi-resolution or time-delay DMD as alternatives the paper names.
  - Balanced POD needs adjoint simulations, so it is out of reach for lab data; ERA is the experimental route if an input–output model (e.g. for control) is wanted.
- **Modelling side:**
  - The global stability section's caution that modes of a turbulent *mean* flow are not a stability statement (p. 27–28) applies directly to mean-flow LSA of screeching jets ([edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md), [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md)).
  - The resolvent section frames how PIV or LES mean flows can be turned into wavepacket predictions to compare with SPOD modes, and states the key limitation (unknown forcing colour, p. 33), which [morra-2021](morra-2021-colour-of-forcing-resolvent-channel.md) quantifies. The jet example (Fig. 16) is the same mechanism set (Orr, KH, trapped acoustic modes) as [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md) and [garnaud-2013](garnaud-2013-preferred-mode-incompressible-jets.md); the trapped-acoustic resonance near St 0.4 is the subsonic relative of the guided-jet mode that closes screech ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)).
  - The pseudospectrum and non-normality section (p. 7–9) explains why stable mean-flow operators can still give large amplification, which underpins resolvent and transient-growth analyses such as [nogueira-2019](nogueira-2019-large-scale-streaky-structures-jets.md) and [rolandi-2025](rolandi-2025-biglobal-resolvent-naca0012.md).
- **Related notes:**
  - Original method papers: [schmid-2010](schmid-2010-dynamic-mode-decomposition.md) (DMD) and [rowley-2009](rowley-2009-spectral-analysis-nonlinear-flows-koopman.md) (Koopman/DMD; also the source of Fig. 9).
  - [brunton-2020](brunton-2020-machine-learning-fluid-mechanics.md) extends the data-driven side (POD as autoencoder, SINDy, Koopman).
  - [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md): a worked example of mean-flow LSA compared with POD-pair phase averages.
  - Companion: Taira et al. 2020, *Modal analysis of fluid flows: applications and outlook* (AIAA J 58), being indexed separately.
- **Facility:** not applicable; no Shock Lab group data. The cavity PIV (Fig. 7) is from Ukeiley's group (Murray et al. 2009).
- **Follow-up candidates for `/add-paper`:** Towne, Schmidt & Colonius 2018 (SPOD and its link to DMD/resolvent; cited here as ref. 69 "in preparation"); Schmidt et al. 2017 (trapped acoustic modes in a Mach 0.9 jet, ref. 68); Sieber et al. 2016 (the other SPOD); Tu et al. 2014 (exact DMD); Rowley 2005 (balanced POD); Jeun, Nichols & Jovanović 2016 (compressible jet input–output analysis); Theofilis 2011 (global linear instability review); Kutz et al. 2016 (multi-resolution DMD).
