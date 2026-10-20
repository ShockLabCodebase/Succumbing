---
key: "mckeon-2010-critical-layer-framework-turbulent-pipe-flow"
title: "A critical-layer framework for turbulent pipe flow"
authors: ["McKeon, B. J.", "Sharma, A. S."]
year: 2010
type: "article"
venue: "JFM 658, 336–382"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "658", "pages": "336--382"}
doi: "10.1017/S002211201000176X"
arxiv: "1001.3100"
pdf: "McKeon-Sharma_2010_A-Critical-Layer-Model-For-Turbulent-Pipe-Flow.pdf"
version: "preprint"
unverified: ["published title, volume, pages and DOI not in this arXiv preprint (titled 'A critical layer model for turbulent pipe flow')"]
group: false
facility: ""
data: ["model-only"]
methods: ["resolvent"]
flow: ["wall-bounded"]
phenomena: ["coherent-structures", "streaks"]
params: {"Re": "75×10³–10×10⁶ (main cases 75×10³ and 410×10³)", "R⁺": "1800 and 8500 (main cases)"}
topics: ["linear-models"]
related: ["morra-2021-colour-of-forcing-resolvent-channel", "pickering-2020-lift-up-kh-orr-jets", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "nogueira-2019-large-scale-streaky-structures-jets", "rolandi-2025-biglobal-resolvent-naca0012", "towne-2018-spod-relationship-dmd-resolvent"]
cites: []
summary: "Origin of mean-flow resolvent analysis: nonlinearity as forcing about the Superpipe mean; VLSM is the first critical mode, c ≈ (2/3)U_CL, peak at y⁺ ≈ 0.8 R⁺^(2/3)"
---
# A critical-layer framework for turbulent pipe flow

- **Authors:** B. J. McKeon (GALCIT, California Institute of Technology), A. S. Sharma (Department of Aeronautics, Imperial College London)
- **Source:** published as *A critical-layer framework for turbulent pipe flow*, J. Fluid Mech. 658, 336–382 (2010), doi:10.1017/S002211201000176X. This file is the arXiv preprint, arXiv:1001.3100v1 [physics.flu-dyn] (18 Jan 2010), titled *A critical layer model for turbulent pipe flow* (JFM LaTeX style, "under consideration"). Wording, section numbers and figure numbers may differ from the published version.
- **PDF:** `References/Paper_PDFs/McKeon-Sharma_2010_A-Critical-Layer-Model-For-Turbulent-Pipe-Flow.pdf` (44 pp.). Page refs are PDF pages, which equal the printed preprint page numbers.
- **Tags:** resolvent analysis (origin), input–output analysis, nonlinear term as forcing, singular value decomposition (Schmidt decomposition), optimal forcing and response, mean-flow linear operator, critical layer, wall layer, Orr–Sommerfeld scaling, non-normality, pseudospectra, very-large-scale motions (VLSMs), near-wall cycle, inner/outer scaling, amplitude modulation, Taylor's hypothesis, turbulent pipe flow, Princeton Superpipe

## Summary
The paper writes the Navier–Stokes equations for fully developed turbulent pipe flow in Fourier space in x, θ and t, and moves every nonlinear term to the right-hand side as an unknown forcing, f_knω (p. 6–8). The mean profile is the (0, 0, 0) mode, taken from Superpipe Pitot data, so the left-hand side is the linear operator about the turbulent mean, with no eddy viscosity and no small-perturbation assumption (p. 8, 10–11). The resolvent (iωI − L)⁻¹ maps forcing to velocity, and its SVD at each (k, n, ω) ranks forcing shapes by gain. The authors assume the leading response mode is the one seen in real turbulence (p. 9–10, 36–37). The resolvent is large either through non-normality (mean shear coupling radial and axial velocity) or at a **critical layer** where the phase speed ω/k equals the local mean velocity U(y) (p. 9, 28). Leading response modes reproduce inner scaling of the near-wall cycle and approximate outer scaling in the core (p. 20–21). A mode with VLSM wavenumbers, (k, n) = (1, 10), first becomes critical at c = (2/3)U_CL for every Reynolds number. With a log law this predicts the VLSM energy peak at y⁺ ≈ 0.8 R⁺^{2/3}, which matches Superpipe hot-wire data (p. 23, 25–26). Orr–Sommerfeld-type scaling then gives two viscous regions, a wall layer of thickness ~(kRe)^{-1/2} and a critical layer of thickness ~(kRe)^{-1/3}. The authors use these to explain wall-layer scaling, amplitude modulation of near-wall turbulence by VLSMs, and differences between pipes and boundary layers (p. 26–34).

## Key findings
- **Nonlinearity as forcing; mean profile as input** (p. 8–9):
  - Eq. 2.11 is exactly linear in u_knω with forcing f_knω. L_knω is identical to the operator linearised about the turbulent mean, but "no linearisation has been performed": nonlinear triadic interactions sit in f (p. 8).
  - The closure problem for the mean is side-stepped by prescribing u₀₀₀ from experiment, which removes the need for the eddy viscosity of Reynolds & Hussain (1972) or del Álamo & Jiménez (2006) (p. 8).
  - The authors state that f_knω is orthogonal to u_knω, so it moves energy between scales but does not extract it from the mean (p. 9). See the caution under Key equations.
- **Where the resolvent is large** (p. 9): (a) high shear ∂_rU, through non-normality coupling radial and axial velocity; (b) critical layers, ω/k = U(y); (c) stationary modes with k = ω = 0.
- **Low rank** (Fig. 3, p. 13): for (k, n) = (1, 10) at Re = 75 × 10³, σ₁ is about an order of magnitude larger than σ₂ over a wide frequency range. The authors compare this with Bailey & Smits (2009), where over 75% of streamwise energy sits in the first radial POD mode at Re = 150 × 10³ (p. 12). Higher-order modes have more radial maxima: m maxima in u for mode m (Fig. 2, p. 12–13).
- **Mode shape vs phase speed** (Figs 4–7, p. 12–18):
  - For (k, n) = (1, 10) at Re = 75 × 10³, slow modes (U_w = 0.2) sit near the wall; faster modes move to the core (U_w = 0.6) and detach from the wall (p. 12–13).
  - The response is mostly streamwise velocity, giving long rolls with streamwise vorticity and strong streaks; the wall-normal component shows little phase variation with y (p. 12–14).
  - The U_w = 0.4 mode agrees "excellently" with conditionally averaged VLSMs in channel LES (Chung & McKeon 2009) and two-point correlations in the atmospheric surface layer (Guala et al. 2009b) (p. 14–15).
  - Near-wall-cycle mode (λ_x⁺, λ_z⁺) ≈ (1000, 100) at Re = 410 × 10³: low c gives attached roll/streak modes with all three components at the same height; high c gives core-centred modes with u and v of similar size, more like spanwise vorticity (Fig. 7, p. 17–18). The mean profile near the wall sets a minimum height for the u peak, y⁺ ≈ 10 here (p. 17).
- **Critical modes vs wall modes** (Figs 8–9, p. 17–20):
  - Away from the wall, the u-energy peak sits where the phase speed equals the local mean ("critical modes"). Near the wall the two differ ("wall modes") (p. 17, 19).
  - σ₁ for (1, 10) grows with Re, at least far from the wall, and is orders of magnitude larger for critical modes (Fig. 8 right, p. 19–20).
  - For large enough n only wall modes exist: peak height independent of c, self-similar shapes and a small, nearly constant σ₁ (Fig. 9, p. 19–20).
- **Inner and outer scaling recovered** (Figs 10–11, p. 20–23):
  - Near-wall-cycle modes at U_x⁺ = 10 and 20 collapse in inner units over Re = 75 × 10³ to 1 × 10⁶. At U_x⁺ = 10 the u peak is at y⁺ ≈ 15–20, the known near-wall-cycle location (p. 21).
  - (1, 10) modes at constant velocity defect U_CL⁺ − U_x⁺ = 4 and 2 approach collapse in y/R slowly with Re; v collapses first (p. 21–23).
  - The authors note this partly just reflects self-similarity of the mean profile (p. 21).
- **VLSM = first critical mode at c = (2/3) U_CL** (p. 23, 25–26):
  - The (1, 10) mode first becomes critical at U_x/U_CL ≈ 2/3 independent of Re, so the VLSM velocity scale is U_CL, not u_τ (p. 23). The authors link this to the "global" modes of Jiménez et al. (2004) convecting near 0.5 U_CL (p. 23).
  - The peak is at y/R < 0.1 for all Re considered, i.e. inside the log region (p. 25).
  - Log-law algebra (eq. 4.1–4.4) gives y⁺_{2/3} = a R⁺^{2/3} with a = 0.8 for pipe constants (p. 25). This matches the low-wavenumber spectral peak in the Superpipe hot-wire data of Morrison et al. (2004), apart from an outlier at R⁺ = 19 × 10³; the highest-Re point may suffer wire resolution, l⁺ = 385 (Fig. 13, p. 26).
- **Wall and critical layers from Orr–Sommerfeld scaling** (§4.2, p. 26–28):
  - Wall layer of thickness ~(kRe)^{-1/2}, i.e. y⁺ ~ (R⁺/k)^{1/2}; critical layer of thickness ~(kRe)^{-1/3}, i.e. y⁺ ~ (R⁺²/k)^{1/3} (p. 27).
  - Two arrangements by analogy with the neutral curve (Fig. 14, p. 27–28): **upper branch**, critical layer separate from the wall layer at O((kRe)^{-1/5}), i.e. y⁺ ~ R⁺^{4/5}; **lower branch**, critical layer reaching the wall at O((kRe)^{-1/3}), i.e. y⁺ ~ R⁺^{2/3} (p. 27, 37).
  - Pipe flow is linearly stable for all Re, so there is no neutral curve; the same physics appears as high resolvent norm without instability (p. 27–28).
  - In laminar pipe flow the (2/3)U_CL point scales as y⁺ ~ R⁺, and is where wall and centre branches of the spectrum merge, the point of highest operator sensitivity (Reddy et al. 1993) (p. 28).
- **Non-normality vs criticality** (§4.3, p. 28): the resolvent grows either through shear-driven non-normality (the "lifting" of streamwise vorticity) or because its diagonal terms vanish at a critical layer. The latter is a *normal* mechanism that works even where shear is small, which is why critical modes dominate far from the wall and at higher Re.
- **VLSM structure** (§4.4, p. 28–29):
  - The VLSM mode behaves like a lower-branch critical layer: "attached" with a footprint at the wall (consistent with wall shear stress observations), energy in u and w but not v, and counter-rotating rolls.
  - The u and v phase relationship gives the phase reversal of viscous critical layers in the Reynolds shear stress near the u peak. The authors take this as justification that viscosity, not nonlinearity, regularises the critical layer, and as evidence VLSMs are "active" (carry −uv) (p. 29).
  - Summing left- and right-going (1, ±10) modes gives meandering streak patterns resembling observed VLSM meandering (Fig. 15, p. 29–30).
- **Wall-layer scaling explains inner-scaled spectra** (§4.5, eq. 4.8–4.9, p. 29–30): for constant λ_x⁺ and phase speed, y⁺_pk ~ (λ_x⁺/2π)^{1/2}, independent of Re. For λ_x⁺ ≈ 1000, y⁺_pk ≈ 13, so the constant is O(1) (p. 30).
- **Amplitude modulation** (§4.6, p. 31): the near-wall region where small scales are amplitude-modulated by the large scales (Mathis et al. 2009, by a Hilbert-transform envelope method) is interpreted as the concatenation of wall layers that must satisfy the no-slip condition under the velocity imposed by finite-amplitude critical-layer modes. It should scale with R⁺^{1/2}. The gradient discontinuity in Mathis et al.'s modulation coefficient at y⁺ ~ δ⁺^{1/2} is hypothesised to be the outer edge of the VLSM's wall layer.
- **Other flows** (§4.8, p. 32–34):
  - Channel: a = 0.62 (κ = 0.38, B = 4.17, C = 0.175; eq. 4.10). Zero-pressure-gradient boundary layer: a = 0.67 (p. 32–33).
  - In boundary layers the zero-modulation location of Mathis et al. (2009) follows 15 δ⁺^{1/2} at least as well as 0.67 δ⁺^{2/3}; an upper-branch 0.76 δ⁺^{4/5} also fits within error bars of one high-Re point (Fig. 16, p. 33–34).
  - The authors suggest upper-branch modes may dominate in boundary layers, giving two u-spectral peaks (∝ δ⁺^{1/2} and δ⁺^{4/5}), consistent with bimodal velocity PDFs at about 0.5 and 0.8 U_∞ (p. 34, 38).
- **Broader implications** (§5, p. 34–36):
  - The linear operator alone extracts energy from the mean; nonlinear terms redistribute it (p. 34).
  - **Taylor's hypothesis:** dominant modes travel at the local mean at their energy peak, so the k–ω spectrum should be a narrow ridge on ω = U(y)k in the core but broadened and asymmetric near the wall, where wall modes and attached critical modes overlap. Validity of Taylor's hypothesis should therefore be judged by the width and symmetry of the k–ω spectrum (p. 34–35).
  - **Minimal flow units:** the y⁺ ≈ 70 filter of Jiménez et al. (2004) at Re_τ ≈ 550 lies above the VLSM critical-layer height y⁺_{2/3} ≈ 50, so "autonomous" near-wall simulations did not exclude it (p. 35). (Check: 0.8 × 550^{2/3} ≈ 54.)
  - **Development length:** a 10:1 aspect ratio with integer n ≥ 1 needs k ≥ 0.1 (λ_x ≈ 60R), giving L/R > 134 for fully developed pipe flow, consistent with Superpipe (L/R > 164) and earlier estimates (p. 35).
  - **Rough walls:** roughness changes only the wall layer, so critical-layer VLSMs and outer similarity should survive, as observed (p. 36).
  - **Control:** distributed harmonic wall forcing could act on the wall layer (p. 36, 38).

## Setup / method

### Model (§2, p. 6–11)
- **Flow:** incompressible, fully developed pipe flow, constant viscosity; periodic or infinitely long in x (p. 6–7).
- **Non-dimensionalisation:** Meseguer & Trefethen (2003) convention, i.e. laminar centreline velocity for the same mass flux (2U_bulk) and pipe radius, equivalent to Re = U_bulk D/ν (p. 7, 10–11). Because the turbulent profile is blunter, the non-dimensional turbulent centreline velocity is below 1 (p. 11).
- **Coordinates:** y = 1 − r, with u (streamwise), v = −v′ (wall-normal) and w (azimuthal); state ordered u = (v′, w, u) (Fig. 1, p. 7).
- **Decomposition:** divergence-free radial basis ξ_m(r), Fourier modes in x and θ, Laplace transform in t restricted to s = iω (harmonic forcing and response) (eq. 2.3–2.4, 2.6–2.7, p. 7–8). Divergence-free basis removes pressure (p. 8). Wavenumbers are scaled by R (k = k′R).
- **Sign convention:** downstream travelling waves need k and ω of opposite sign, so the paper sets k > 0 and ω → −ω (p. 8).
- **Mean profile:** Superpipe Pitot data of McKeon et al. (2004), covering 31 × 10³ ≤ Re ≤ 35 × 10⁶ (860 ≤ R⁺ ≤ 535 × 10³). Profiles are interpolated between Re assuming a Re-independent profile shape. Numerical stability limits the study to Re ≤ 10 × 10⁶, below the Re ≈ 24 × 10⁶ where Superpipe roughness may matter (p. 11).
- **Main cases:** Re = 75 × 10³ (R⁺ = 1800, near the upper end of DNS at the time) and Re = 410 × 10³ (R⁺ = 8500, "high Re"); scaling studies go to 1 × 10⁶ (p. 12, 22).
- **Wavenumbers studied:** only propagating helical modes, k ≠ 0, n ≠ 0 (p. 12). Near-wall cycle: (k, n) = (2πR⁺/1000, 2πR⁺/100), i.e. (λ_x⁺, λ_z⁺) ≈ (1000, 100), inexact because n must be an integer (p. 17, 22). VLSM: (k, n) = (1, 10), a compromise between n ≈ 12 (Monty et al. 2007) and n ≈ 3 (Bailey et al. 2008) (p. 22–23).
- **Phase speeds:** U_w = ω/(k² + n²)^{1/2} (normal wave speed) and U_x = ω/k (streamwise) (p. 11).

### Numerics (§2.5, App. B, p. 10–11, 39–40)
- Modified version of the Meseguer & Trefethen (2003) spectral pipe code; the only change is the turbulent mean in place of the parabolic profile (p. 10–11).
- N wall-normal points. The near-imaginary-axis part of the spectrum, the resolvent norm and leading mode shapes converge at much lower N than the full spectrum: N = 60 vs N = 200 for (1, 10) at Re = 75 × 10³ (Fig. 18, p. 40).
- Leading-mode shapes are "extremely robust" to numerical error; modes with σ_j near zero are effectively degenerate (p. 10).
- Limitation: inner-scaling modes at high Re need high resolution, and the operator's sensitivity causes numerical trouble, so the method was not pushed beyond Re ~ 10⁶ for those modes (p. 11, 21, 40).
- Inner product: spatial L₂ (energy norm); no weighting, forcing restriction or observation matrix (p. 7, 10).
- The norm of the resolvent is σ₁, the maximum energy gain in L₂(Ω × [0, ∞)) for unit harmonic forcing (p. 10).

### Experimental data used for comparison (no new experiments)
- Superpipe mean profiles (Pitot), streamwise hot-wire spectra (Morrison et al. 2004; McKeon 2008 peak extraction) and wall-normal statistics (Zhao & Smits 2007) (p. 11–12, 26).
- Channel LES conditional averages (Chung & McKeon 2009), atmospheric surface-layer correlations (Guala et al. 2009b), pipe POD (Bailey & Smits 2009; Duggleby et al. 2007), boundary-layer amplitude modulation (Mathis et al. 2009) (p. 14–15, 25, 31, 33).
- **Data dependence:** the model itself needs only a measured mean velocity profile; nothing time-resolved. The comparison data are single-point hot-wire spectra (time-resolved) turned into streamwise wavenumber via Taylor's hypothesis, which the paper itself questions at VLSM scales (p. 3, 34–35). The amplitude-modulation evidence uses a Hilbert-transform envelope of the small scales correlated with the large-scale signal (p. 3, 31).

## Key equations
Notation as in the paper (p. 7–10). Subscript knω marks a Fourier–Laplace coefficient.

- **Fourier/Laplace expansion** (eq. 2.3, p. 7):
  $$\mathbf u(r,x,\theta,t)=\frac{1}{2\pi i}\sum_{m,n}\int_{-i\infty}^{i\infty}\int_{-\infty}^{\infty}c_{mkn\omega}\,\xi_m(r)\,e^{ikx+in\theta+st}\,\mathrm dk\,\mathrm ds,\qquad s=i\omega$$
- **Definitions** (eq. 2.8–2.10, p. 8):
  $$\mathbf u_{kn\omega}=\big(\mathbf u,e^{i(\omega t+kx+n\theta)}\big),\qquad \tilde{\mathbf u}=\mathbf u-\mathbf u_{000},\qquad \mathbf f_{kn\omega}=\big(-\tilde{\mathbf u}\cdot\nabla\tilde{\mathbf u},\,e^{i(\omega t+kx+n\theta)}\big)$$
- **Fluctuation and mean equations** (eq. 2.11–2.12, p. 8):
  $$i\omega\,\mathbf u_{kn\omega}=\mathcal L_{kn\omega}\mathbf u_{kn\omega}+\mathbf f_{kn\omega},\quad (k,n,\omega)\neq(0,0,0);\qquad 0=\mathbf f_{000}-\mathbf u_{000}\cdot\nabla\mathbf u_{000}+\frac{1}{Re}\nabla^2\mathbf u_{000}$$
- **Pipe operator** (eq. 2.13, p. 8), states (radial, azimuthal, axial), with $\Delta_n=\partial_r^2+r^{-1}\partial_r-n^2r^{-2}-k^2$:
  $$\mathcal L_{kn\omega}=\begin{pmatrix}Re^{-1}(\Delta_n-r^{-2})-iku_{000} & -2inr^{-2} & 0\\ 2inr^{-2} & Re^{-1}(\Delta_n-r^{-2})-iku_{000} & 0\\ -\partial_r u_{000} & 0 & Re^{-1}\Delta_n-iku_{000}\end{pmatrix}$$
- **Resolvent** (eq. 2.14–2.15, p. 9), with $A=\partial_r^2+r^{-1}\partial_r-n^2r^{-2}-k^2-r^{-2}$, $B=2inr^{-2}$, $U=u_{000}$:
  $$\mathbf u_{kn\omega}=(i\omega I-\mathcal L_{kn\omega})^{-1}\mathbf f_{kn\omega},\qquad (i\omega I-\mathcal L)^{-1}=\begin{pmatrix}-ARe^{-1}+ikU-i\omega & B & 0\\ -B & -ARe^{-1}+ikU-i\omega & 0\\ \partial_rU & 0 & -ARe^{-1}+ikU-i\omega\end{pmatrix}^{-1}$$
  As printed, the axial diagonal entry also carries A (with the −r⁻² term) although eq. 2.13 omits −r⁻² there.
- **Schmidt (singular value) decomposition** (eq. 2.16–2.18, p. 9–10):
  $$(i\omega I-\mathcal L_{kn\omega})^{-1}=\sum_{j=1}^{\infty}\psi_j(k,n,y,\omega)\,\sigma_j(k,n,\omega)\,\phi_j^*(k,n,y,\omega),\qquad \sigma_1\ge\sigma_2\ge\dots\ge0$$
  φ_j are forcing modes, ψ_j response modes, both orthonormal in y.
- **Forcing and response expansions and energy** (eq. 2.19–2.21, p. 10):
  $$\mathbf f_{kn\omega}=\sum_l\phi_{lkn\omega}a_{lkn\omega},\qquad \mathbf u_{kn\omega}=\sum_l\sigma_{lkn\omega}\psi_{lkn\omega}a_{lkn\omega},\qquad E_{kn\omega}=\sum_l\sigma_{lkn\omega}^2a_{lkn\omega}^2$$
  The optimal forcing is a_l = 0 for l ≠ 1; σ₁ is the gain (p. 10).
- **VLSM peak location** (eq. 4.1–4.4, p. 25):
  $$U^+=\tfrac1\kappa\ln y^++B,\qquad U_{CL}^+=\tfrac1\kappa\ln R^++B+C,\qquad \tfrac1\kappa\ln y_{2/3}^++B=\tfrac23\big(\tfrac1\kappa\ln R^++B+C\big)$$
  $$y_{2/3}^+=aR^{+2/3},\qquad a=\exp\!\big[\tfrac{\kappa}{3}(2C-B)\big]$$
  Pipe: κ = 0.421, B = 5.60, C ≈ 2 → a = 0.8 (my check: exp(0.1403 × −1.6) = 0.799). Channel (eq. 4.10, p. 32): κ = 0.38, B = 4.17, C = 0.175 → 0.62 (my check: 0.616).
- **Orr–Sommerfeld for plane flow** (eq. 4.5, p. 27), used for the scaling argument:
  $$(U-\omega/k)(\mathcal D^2-K^2)\tilde v-U''\tilde v-\frac{1}{ikRe}(\mathcal D^2-K^2)^2\tilde v=0$$
- **Wall layer** (eq. 4.6, p. 27): $\tilde v(y)=C\exp\!\big(-(y-y_1)(ikReU_x)^{1/2}e^{-i\pi/4}\big)$, from $\frac{1}{ikRe}\mathcal D^4\tilde v=-U_x\mathcal D^2\tilde v$.
- **Critical layer** (eq. 4.7, p. 27): with $U-\omega/k\approx U_c'(y-y_c)$, $\epsilon=(ikReU_c')^{-1/3}$, $\xi=(y-y_c)/\epsilon$, $\tilde v=V(\xi)$: $\left(\frac{d^2}{d\xi^2}-\xi\right)\frac{d^2V}{d\xi^2}=0$ (Airy).
- **Inner-scaled wall-layer peak** (eq. 4.8–4.9, p. 30): $y_{pk}/R\sim 1/(kR^{+1/2})$, so for constant λ_x⁺, $y_{pk}^+\sim(\lambda_x^+/2\pi)^{1/2}$.
- **Pseudospectra and transient bound** (App. A, eq. 6.1, p. 38–39): $\Lambda_\epsilon(\mathcal L)=\{\lambda\in\mathbb C:\|(\lambda I-\mathcal L)^{-1}\|\ge\epsilon^{-1}\}$. For a stable operator the maximum of the resolvent norm over the right half plane lies on the imaginary axis (maximum modulus principle), which is why harmonic forcing (s = iω) is the right slice (p. 39). Hille–Yosida: $\|(\lambda I-\mathcal L)^{-1}\|\le M/(q-d)$ with $\|e^{\mathcal Lt}\|\le Me^{dt}$ (p. 39).

> Equations were retyped from rendered page images (p. 7–10, 25, 27, 30). Points to check against the published JFM version before relying on them:
> - **Sign convention.** Eq. 2.15 prints the diagonal as −A/Re + ikU − iω, whereas iωI − L from eq. 2.13 gives −A/Re + ikU + iω. The printed form matches the stated ω → −ω convention (k > 0, downstream waves), under which the critical layer is ω/k = U. The off-diagonal B, −B and +∂_rU are consistent with eq. 2.13.
> - **Inner products.** Eq. 2.5 and the orthogonality conditions 2.17–2.18 are printed without complex conjugates; for complex modes these should be conjugated (eq. 2.16 does use φ_j*).
> - **Wall-layer thickness** is printed as "order kRe^{1/2}" on p. 27; Fig. 14 and the inner-scaled result y⁺ ~ (R⁺/k)^{1/2} imply (kRe)^{-1/2}. Likewise "y/R ~ kRe^{-1/3}" for the critical layer should read (kRe)^{-1/3}.
> - **Orthogonality of forcing and response** (p. 9). The statement (f_knω, u_knω) = 0 is, in my reading, true only summed over all (k, n, ω): the nonlinear term conserves total energy, but at a single wavenumber it moves energy in or out, as the paper's own phrase "transfer of energy in spectral space" implies. Check how the published version words this.

## Data tables
**Log-law constants and the VLSM critical-layer prediction y⁺ = a R⁺^{2/3}** (p. 25, 32–33):

| Flow | κ | B | C (wake) | a | Source of constants |
|---|---|---|---|---|---|
| Pipe | 0.421 | 5.60 | ≈ 2 | 0.8 | McKeon et al. 2004, 2005 |
| Channel | 0.38 | 4.17 | 0.175 | 0.62 | Nagib & Chauhan 2008 |
| ZPG boundary layer | — | — | — | 0.67 | log-law constants, not listed (p. 33) |

**Scaling laws** (p. 27, 33, 37):

| Layer / configuration | Outer-scaled height or thickness | Inner-scaled |
|---|---|---|
| Wall layer | (kRe)^{-1/2} | y⁺ ~ (R⁺/k)^{1/2}; at fixed k, R⁺^{1/2} |
| Critical-layer thickness | (kRe)^{-1/3} | y⁺ ~ (R⁺²/k)^{1/3} |
| Lower-branch critical layer (touches wall layer; pipe VLSM) | (kRe)^{-1/3} | y⁺ ~ R⁺^{2/3} |
| Upper-branch critical layer (separate from wall layer) | (kRe)^{-1/5} | y⁺ ~ R⁺^{4/5} |

Fig. 16 (p. 33) boundary-layer fits: 15 δ⁺^{1/2} (Mathis et al., also the wall-layer prediction), 0.67 δ⁺^{2/3} (lower branch), 0.76 δ⁺^{4/5} (upper branch).

## Figures worth remembering
- **Fig. 2 (p. 13):** |u|, |v|, |w| of the first three response modes for (k, n, ω) = (2, 2, 1): mode m has m maxima in u.
- **Fig. 3 (p. 13):** singular values vs mode number for (1, 10): σ₁ ≫ σ₂ (low rank).
- **Figs 4–6 (p. 14–16):** 3-component (1, 10) response modes at U_w = 0.2, 0.4, 0.6 (Re = 75 × 10³): attached rolls and streaks inclined to the wall, then detached core modes. Fig. 5 is the VLSM-like mode.
- **Fig. 7 (p. 18):** energy of u, v, w vs y⁺ and U_x/U_CL for the near-wall-cycle wavenumbers at R⁺ ≈ 8500. The energy band follows the mean profile at high c (critical layer) and stays at y⁺ ~ 10 at low c (wall mode).
- **Fig. 8 (p. 19):** u-peak location vs U_x/U_CL for (1, 10) at two Re, overlaid on the mean profiles, with σ₁ vs phase speed. Shows the critical/wall split and the ~2/3 U_CL threshold.
- **Fig. 9 (p. 20):** the same for increasing spanwise wavenumber: large n gives only wall modes with small σ₁.
- **Figs 10–11 (p. 22–23):** inner-scaled collapse of near-wall-cycle modes and slow outer-scaled collapse of (1, 10) modes over Re = 75 × 10³–1 × 10⁶.
- **Fig. 13 (p. 26):** Superpipe VLSM peak y⁺ R⁺^{-2/3} vs R⁺ with the 0.8 R⁺^{2/3} prediction.
- **Fig. 14 (p. 28):** upper- vs lower-branch arrangement of wall and critical layers.
- **Fig. 15 (p. 30):** streamwise-velocity isosurfaces of (1, ±10) VLSM modes at c = (2/3)U_CL: meandering streaks.
- **Fig. 16 (p. 33):** boundary-layer VLSM / zero-modulation locations vs δ⁺ with δ⁺^{1/2}, δ⁺^{2/3}, δ⁺^{4/5} fits.
- **Fig. 17 (p. 39):** spectrum, pseudospectra and resolvent norm along the imaginary axis for laminar pipe flow, (1, 10), Re = 5 × 10³. The clearest picture of why a stable operator still amplifies.
- **Fig. 18 (p. 40):** spectrum at N = 60 vs 200 and the resolvent norm: the resolvent converges at low N.

## Notation
- (k, n, ω): streamwise wavenumber (scaled by R), azimuthal wavenumber (integer), frequency. U_x = ω/k streamwise phase speed; U_w = ω/(k² + n²)^{1/2} normal wave speed.
- u₀₀₀ = U(y): turbulent mean profile. U_CL: centreline velocity. ũ: fluctuation. f_knω: nonlinear forcing at (k, n, ω). L_knω: linear operator about U.
- (iωI − L)⁻¹: resolvent. σ_j: singular values (gains). φ_j: forcing modes (right singular vectors). ψ_j: response modes (left singular vectors). a_lknω: forcing projection coefficients.
- y = 1 − r (outer units), y⁺, R⁺ = Re_τ, δ⁺: inner-scaled distance, pipe radius and boundary-layer thickness. λ_x⁺, λ_z⁺: inner-scaled streamwise and spanwise wavelengths.
- κ, B, C: log-law constants and wake deviation. y_c: critical-layer centre; y₁: wall-layer reference height. "Wall modes" vs "critical modes" (p. 19).
- VLSM: very-large-scale motion (λ_x ~ 10R in pipes).

## Relevance to this project
This is the founding paper of mean-flow **resolvent analysis** (the "McKeon–Sharma" framework): treat the nonlinear term as forcing of the operator linearised about the measured mean, and use the SVD of the resolvent to get optimal forcing/response pairs. It is about wall turbulence, not jets, but every resolvent paper in the library inherits its formulation. CLAUDE.md asks for the modelling side to be covered as thoroughly as experiment; this is the theory behind the resolvent comparisons used for jets.

- **Lineage in the library:**
  - [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) applies the same idea globally to jet LES means and sorts SPOD modes into lift-up, KH and Orr. Two contrasts: McKeon & Sharma deliberately use **no eddy viscosity** (p. 8), whereas Pickering et al. find an eddy viscosity essential for SPOD–resolvent agreement in jets; and Pickering et al. report a 90° phase jump at the critical layer for the KH mode, the same critical-layer physics this paper builds its scaling on.
  - [nogueira-2019-large-scale-streaky-structures-jets.md](nogueira-2019-large-scale-streaky-structures-jets.md) uses local resolvent and transient growth on a PIV mean to find lift-up streaks in a jet, the jet analogue of this paper's roll/streak response modes (Figs 4–7).
  - [morra-2021-colour-of-forcing-resolvent-channel.md](morra-2021-colour-of-forcing-resolvent-channel.md) tests this paper's central assumption, that the rank-1 optimal response is what is observed. It computes the actual DNS forcing and shows it is coloured and projects heavily onto sub-optimal modes, which is why white-forcing predictions fail for large scales. Both papers place response peaks at the critical layer U = c.
  - [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md) extends to biglobal, discounted resolvent; [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md) gives public data and resolvent demos; [zhu-2021-recursive-one-way-navier-stokes.md](zhu-2021-recursive-one-way-navier-stokes.md) is a cheaper spatial-marching route to resolvent-type responses.
- **For resonant and feedback flows (screech, impingement)** (my inference, not in the paper):
  - The paper's operator is linearly stable, so the resolvent peaks through non-normality or near-criticality (p. 9, 28). In a screeching or impinging jet the mean-flow operator is close to marginal (a near-neutral global mode), so the resolvent is dominated by the pseudoresonance of that eigenvalue and the rank-1 assumption should hold well at the tone. This is the oscillator vs amplifier distinction later formalised by Symon, Sipp & McKeon (2019), cited in the Morra and Rolandi notes.
  - A local (parallel) resolvent in x is not valid for screech: the shock-cell periodicity and the upstream guided-mode closure are global features. See [nogueira-2021-wavepacket-modulation-shock-containing-jets.md](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) and [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md).
- **How it fits the data workflow in CLAUDE.md:**
  - The model needs only a **mean velocity field**, which non-time-resolved PIV gives directly. That makes resolvent a natural partner to POD-pair analysis of PIV: compare the leading response mode at the tone frequency with the complex POD mode φ₁ + iφ₂.
  - For **time-resolved** schlieren or acoustics, SPOD modes at each frequency are the observational counterpart of the resolvent response modes (exactly so only if the forcing is white; see the Morra note).
  - The paper's framing of the **critical layer** (phase speed = local mean velocity) gives a quick check on any measured wavepacket: its SPOD or POD-pair phase speed should match the mean velocity where its amplitude peaks, and depart from it near walls or where it is not convective.
  - The **amplitude-modulation** picture (§4.6) is an intermittency/modulation story told via Hilbert envelopes (Mathis et al. 2009). It parallels the SPOD → reconstruction → Hilbert POD pipeline: large-scale modes modulate small-scale activity, and an analytic-signal method ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)) is the tool for tracking that over time.
  - The **Taylor's hypothesis** discussion (p. 34–35) warns that convection velocity is scale-dependent; this matters when time series (hot-wire, microphone, high-speed schlieren at a point) are converted to wavenumber.
- **Not covered:** compressibility, heated or shock-containing flows, spatially developing flows (the boundary-layer extension is explicitly parallel-flow, p. 33), and the phases between modes (p. 32, 38). The model gives mode shapes and gains, not amplitudes: forcing amplitude is unknown (p. 25, 30).
- **Facility:** no new experiments; comparison data are from the Princeton/ONR Superpipe and other external facilities. Not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:**
  - Symon, Sipp & McKeon (2019), oscillator vs amplifier resolvent from a PIV mean.
  - Sharma & McKeon (2013), "On coherent structure in wall turbulence" (resolvent modes assembled into hairpins).
  - Schmidt et al. (2018) and Towne, Schmidt & Colonius (2018) on SPOD–resolvent correspondence in jets.
  - Meseguer & Trefethen (2003), the pipe code used here.
