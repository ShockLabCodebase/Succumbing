# The colour of forcing statistics in resolvent analyses of turbulent channel flows

- **Authors:** P. Morra, P. A. S. Nogueira, A. V. G. Cavalieri, D. S. Henningson (KTH FLOW, Stockholm; Instituto Tecnológico de Aeronáutica, São José dos Campos)
- **Source:** J. Fluid Mech. 907, A24 (2021), doi:10.1017/jfm.2020.802. Received 3 Apr 2020, accepted 16 Sep 2020, published online 2020. Open access (CC BY-NC-ND).
- **PDF:** `References/Paper_PDFs/Morra-EtAl_2021_The-Colour-Of-Forcing-Statistics-In-Resolvent-Analyses-Of-Turbulent-Channel.pdf` (30 pp.).
- **Tags:** resolvent analysis, nonlinear forcing, forcing colour, cross-spectral density (CSD), SPOD, turbulent channel flow, DNS, eddy viscosity (Cess), lift-up, low-rank forcing, solenoidal projection, Orr–Sommerfeld–Squire, Welch windowing correction, sub-optimal resolvent modes

## Summary
The paper computes, for the first time in turbulent channel flow, the actual cross-spectral density P of the nonlinear forcing term f = −(u·∇)u that is the input to a mean-flow resolvent analysis. It uses DNS at Re_τ = 179 and 543 and looks at one near-wall and one large-scale (α, β) pair per case, at the peak frequency. Feeding the DNS forcing CSD through the resolvent reproduces the DNS velocity CSD exactly, which validates the method. The forcing is far from white: it is strongly structured, its first two SPOD modes (a symmetric/antisymmetric pair) give most of the response, and its components are coherent with each other, so cross-terms cancel much of what each component would drive alone. The forcing projects strongly onto the resolvent's sub-optimal right-singular vectors. This is why white-forcing resolvent predictions (P ∝ I) fail, especially for large scales. The Cess eddy-viscosity model improves predictions because its equivalent forcing reproduces these projections roughly, not because it models the physics exactly.

## Key findings
- **Validation of the computed forcing.** S = RPR^H with P from DNS lies on top of the DNS velocity PSDs for all components and both Re (Fig. 4, p. 11; Fig. 7, p. 14). This needs the Hann-window compensation term added to the forcing (p. 9).
- **The forcing is coloured, not white** (p. 10–12, 24):
  - Re_τ = 179: the forcing PSD p_uu peaks at the same ω as the response s_uu. Both near-wall and large-scale structures are driven by forcing concentrated near the wall (Fig. 3, p. 10–11).
  - Re_τ = 543, near-wall structures: P peaks at y⁺ = 17 (streamwise) and y⁺ = 20 (wall-normal and spanwise) (p. 12).
  - Re_τ = 543, large-scale structures: P peaks at y⁺ = 6 (streamwise), 12 (wall-normal) and 9 (spanwise), plus a forcing spread across the whole channel (p. 12). The spread-out streamwise part drives the bulk of the response; the near-wall peak only produces a small local maximum in s_uu at y⁺ = 12 (p. 12, 16, 19–20).
- **Response peaks sit at the critical layer** U⁺ = c⁺: c⁺_max ≈ 12 (near-wall, both Re), ≈ 16 (large-scale, Re_τ 179) and ≈ 18 (large-scale, Re_τ 543) (p. 10–11).
- **Solenoidal part of the forcing** (only this part drives the velocity in incompressible flow) (p. 7, 11–12, 24):
  - The streamwise component is nearly unchanged by the projection.
  - The wall-normal and spanwise components are lower and change shape. In the solenoidal field they form quasi-streamwise (oblique) vortices typical of lift-up.
  - The solenoidal forcing is non-zero at the wall but parallel to it.
- **Coherence between components matters** (sub-block analysis, eq. 4.1; Figs 8–9, p. 14–16):
  - The cross-component sub-blocks P_ij (i ≠ j) give **negative** contributions to s_uu in all cases. For Re_τ 179 large scales, only the spanwise-related cross terms are negative (p. 14).
  - P₂₂ and P₃₃ alone give large outputs via lift-up, larger than the streamwise sub-block's output, even though the streamwise forcing is about 10× larger in amplitude (p. 14–15). Phase relations between components cancel much of this, so the DNS response is far smaller than any single-component prediction (p. 15).
  - If the forcing components were incoherent, the PSDs could just be summed; they cannot be, so neglecting cross-component coherence gives large errors (p. 15). The same effect was seen in minimal Couette flow (Nogueira et al. 2021) (p. 15).
- **Destructive interference** (p. 19): where the transverse forcing would drive a negative u, the streamwise forcing pushes positive, and vice versa. This is consistent with linear-operator-only analyses over-predicting energy amplification. The linear optimal forcing has a negligible streamwise component (Hwang & Cossu 2010b), which is the opposite of the DNS forcing (p. 17, 19).
- **Rank-2 forcing gives the bulk of the response.** Keeping only the first two SPOD modes of P (eq. 4.3) recovers most of S in all four cases, including the y⁺ = 12 local maximum at Re_τ 543 (Fig. 10, p. 16–17). The pair is a symmetric/antisymmetric pair arising from the channel's symmetry (p. 16). Identifying only the leading eigenvector reduces the unknowns from 3N_y(3N_y+1)/2 to 3N_y, which the paper describes as two orders of magnitude (p. 17).
- **Near-wall forcing hardly affects large scales** (Re_τ 543, large scale, Fig. 12, p. 19–20):
  - Zeroing P for y⁺ < 30 leaves the response for y⁺ ≥ 30 almost unchanged but removes the near-wall peak.
  - Keeping only y⁺ < 30 gives the near-wall peak but the wrong outer response.
  - This explicitly supports Flores & Jiménez (2010) and Hwang & Cossu (2011): large-scale dynamics are driven mainly by processes at similar length scales (p. 24).
- **Projection onto sub-optimals is the key diagnostic** (Fig. 13, p. 20–22):
  - The resolvent gains come in near-equal pairs (wall symmetry). There is clear separation between σ₁, σ₂ and the rest.
  - However, b₁ and b₂ are *smaller* than b_i for i > 2. The forcing projects more onto sub-optimal right-singular vectors, which raises a_i = σ_i b_i for the sub-optimal left-singular vectors (p. 21).
  - The effect is stronger for large scales than near-wall scales (p. 21). Read roughly from Fig. 13, b_i/b₁ for i > 2 is about 2–5 for near-wall cases and about 5–25 for large-scale cases.
- **White forcing P = γ_ν I** gives a_i ∝ σ_i. It predicts overly localised large-scale s_uu profiles and does better for near-wall structures (Fig. 14, p. 21–22).
- **Eddy viscosity (Cess) helps for the right reason.** Its equivalent forcing P_νt = L S_Rνt L^H gives b_i comparable to the DNS b_i, so a_i > σ_i for i > 2 as in DNS. This improves s_uu for both large and near-wall scales (Figs 13–14, p. 22–24). It is still not exact: the b_i and a_i from P_νt do not lie on the DNS values (p. 24). This clarifies why Morra et al. (2019) found eddy viscosity improves resolvent predictions at Re_τ = 1007 (p. 23, 25).
- **Contrast with jets** (p. 25): the forcing here is highly coherent (rank-2 suffices). In turbulent jets, Schmidt et al. (2018) and Lesshafft et al. (2019) obtained reasonable predictions with spatially uncorrelated forcing. On p. 20, though, the paper cites Pickering et al. (2020, AIAA SciTech projection paper) as showing that a diagonal input can give significant errors for jets too.
- **Scope limit:** the results hold only for these low Re and cannot be used to infer the coherence of the forcing at higher Re (p. 25).

## Setup / method
No experiments: this is DNS plus linear operator analysis. The simulations were run on Swedish SNIC resources (p. 26). There are no Monash authors, so this is not Shock Lab group work.

- **DNS** (Table 1, p. 9; Appendix C, p. 27):

  | Re_τ | Re_bulk | L_x | L_z | Δx⁺ | Δz⁺ | Δy⁺_min | Δy⁺_max | Code |
  |---|---|---|---|---|---|---|---|---|
  | 179 | 2800 | 4π | 2π | 11.78 | 5.89 | 5.42×10⁻² | 4.42 | SIMSON (pseudo-spectral; Chevalier et al. 2007) |
  | 543 | 10000 | 2π | π | 8.89 | 4.44 | 4.09×10⁻² | 6.67 | Channelflow 2.0 |

  - Lengths are in units of the half-height h. The mean and RMS profiles match del Álamo & Jiménez (2003) (Fig. 1, p. 9).
  - Non-dimensionalisation: Re = (3/2)U_bulk h/ν (p. 4), i.e. the velocity scale is the laminar centreline velocity 1.5 U_bulk.
  - Grid point counts are not given, and neither is the wall-normal discretisation (N_y) of the resolvent operator.
- **Sampling and spectral estimation** (Appendix C, p. 27):
  - Re_τ 179: N_s = 10001 snapshots, Δt_s = 0.5, T_max = 5000.
  - Re_τ 543: N_s = 2000 snapshots, Δt_s = 0.15, T_max = 299.85.
  - The initial transient is discarded. Welch's method with a Hann window and 75% overlap gives both S and P. Data are averaged between the two walls.
  - **The block length (and so the frequency resolution and number of blocks) is not stated.**
  - Computing f = −(u·∇)u needs full 3D, time-resolved velocity fields at every snapshot. Everything here is time-resolved.
- **Windowing correction** (p. 9): Welch windowing breaks the exact input–output relation (2.2) because the window is a function of time (Martini et al. 2019). A compensation term −q̂ dW(t)/dt (W = Hann window) is added to the forcing so the identity holds per block. This follows Nogueira et al. (2021).
- **Structures analysed.** Chosen at the peaks of the premultiplied streamwise spectra at y⁺ = 15 and y = 0.5 (Figs 2, 5; p. 9–11). Frequencies are the s_uu peaks.

  | Case | Near-wall (λ_x⁺, λ_z⁺) | ω⁺_max | Large-scale (λ_x, λ_z) | ω_max | s_uu peak (large scale) |
  |---|---|---|---|---|---|
  | Re_τ 179 | (1130, 113) | 0.065 (λ_t⁺ ≈ 100) | (4.19, 1.26) | 1.05 | y ≈ 0.35 |
  | Re_τ 543 | (1137, 100) | 0.065 (λ_t⁺ ≈ 100) | (6.28, 1.57) | 0.65 | y ≈ 0.45 |

  The near-wall s_uu peak is at y⁺ ≈ 15 in both cases (p. 9, 11).
- **Linear operator** (§2, App. A):
  - The incompressible N–S equations are written about the turbulent mean U(y), with Fourier transforms in x and z.
  - The state is the wall-normal velocity and vorticity (v̂, ω̂_y) in Orr–Sommerfeld–Squire (OSS) form.
  - Mean-flow terms b drop out for α ≠ 0, β ≠ 0 (p. 5).
  - The operator is linearly stable (Reynolds & Tiederman 1967), so the frequency-domain resolvent exists (p. 5).
  - Boundary conditions: v̂ = ∂_y v̂ = ω̂_y = 0 at y = ±1 (p. 5, 26).
  - A W-weighted SVD gives gains σ_i, right-singular vectors φ_i (forcing) and left-singular vectors ψ_i (response), using the kinetic-energy norm (p. 6).
- **Forcing models compared** (§2.3, p. 8):
  1. Spatially white forcing, P = γ_ν I.
  2. A Cess eddy-viscosity resolvent R_νt (Reynolds & Hussain 1972 triple decomposition: incoherent stresses are modelled, and the remainder is treated as white). The model constants are κ = 0.426 and A = 25.4, tuned for Re_τ = 2000, so its performance at these lower Re is not assured (p. 22, 26).
  - Amplitudes are matched by scalars γ chosen so the ∞-norm of diag(S) matches DNS (eq. 2.14).
- **Solenoidal projection** (§2.2, App. B): the irrotational part of f lies in the null space of R. The solenoidal part is obtained either as CB f̂ or from the velocity as L û. This avoids a Helmholtz–Hodge decomposition and the wall boundary-condition assumptions it needs (p. 3, 7, 26–27).
- **SPOD.** Here SPOD is a 1-D eigen-decomposition in y of the 3N_y × 3N_y CSDs S and P at a fixed (α, β, ω). It requires time-resolved data via Welch (p. 6).

## Key equations
- Fluctuation momentum equation (eq. 2.1, p. 5): $\partial_t \boldsymbol u + (\boldsymbol U\cdot\nabla)\boldsymbol u + (\boldsymbol u\cdot\nabla)\boldsymbol U = -\nabla p + Re^{-1}\nabla^2\boldsymbol u + \boldsymbol b + \boldsymbol f$. Here $\boldsymbol f = -(\boldsymbol u\cdot\nabla)\boldsymbol u$ is the nonlinear forcing and $\boldsymbol b = -\nabla P + Re^{-1}\nabla^2\boldsymbol U - (\boldsymbol U\cdot\nabla)\boldsymbol U$.
- State-space form (eq. 2.2, p. 5): $\partial_t\hat{\boldsymbol q} = \boldsymbol A\hat{\boldsymbol q} + \boldsymbol B\hat{\boldsymbol f}$, with $\hat{\boldsymbol u} = \boldsymbol C\hat{\boldsymbol q}$ and $\hat{\boldsymbol q} = \boldsymbol D\hat{\boldsymbol u}$.
- Resolvent, with the $e^{-i\omega t}$ convention (eq. 2.3, p. 5): $\boldsymbol R(\omega) = -\boldsymbol C(i\omega\boldsymbol I + \boldsymbol A)^{-1}\boldsymbol B$.
- Singular vectors (eq. 2.4, p. 6): $\boldsymbol\phi_i^H\boldsymbol W\boldsymbol\phi_j = \delta_{ij}$ and $\boldsymbol\psi_i^H\boldsymbol W\boldsymbol\psi_j = \delta_{ij}$.
- CSDs (eq. 2.5, p. 6): $\boldsymbol S(\omega) = \lim_{T\to\infty}\mathbb E[\tilde{\boldsymbol u}\tilde{\boldsymbol u}^H]/2T$, where $\tilde{\boldsymbol u} = \frac{1}{2\pi}\int_{-T}^{T}\hat{\boldsymbol u}e^{-i\omega t}dt$. $\boldsymbol P(\omega)$ is defined the same way from $\hat{\boldsymbol f}$.
- Premultiplied spectrum (eq. 2.6): $\alpha\beta e^{kin}_{uu} = \alpha\beta\int s_{uu}(\omega)\,d\omega$.
- Input–output relation of the CSDs (eq. 2.7, p. 6): $\boldsymbol S = \boldsymbol R\boldsymbol P\boldsymbol R^H$.
- SPOD (p. 6–7): $\boldsymbol S\boldsymbol W\boldsymbol\xi_i = \mu_i\boldsymbol\xi_i$ and $\boldsymbol P\boldsymbol W\boldsymbol\zeta_i = \eta_i\boldsymbol\zeta_i$. Then $\mathrm{diag}(\boldsymbol S) = \sum_i\mu_i|\boldsymbol\xi_i|^2$ and $\mathrm{diag}(\boldsymbol P) = \sum_i\eta_i|\boldsymbol\zeta_i|^2$ (eq. 2.8).
- Projection coefficients (eq. 2.9–2.10, p. 7): $b_i^2 = \boldsymbol\phi_i^H\boldsymbol W\boldsymbol P\boldsymbol W\boldsymbol\phi_i$, $a_i = \sigma_i b_i$, and $\mathrm{diag}(\boldsymbol S) = \sum_i|\boldsymbol\psi_i|^2 a_i^2$. If $b_i = 1$ for all i, then $\boldsymbol P \equiv \boldsymbol I$.
- Solenoidal forcing from the velocity (eq. 2.11, p. 7): $\boldsymbol L = -\boldsymbol C(i\omega\boldsymbol I + \boldsymbol A)\boldsymbol D$, with $\boldsymbol P_{sol} = \boldsymbol L\boldsymbol S\boldsymbol L^H = (\boldsymbol{CB})\boldsymbol P(\boldsymbol{CB})^H$.
- Modelled predictions (eq. 2.12, p. 8): $\boldsymbol S_{R_\nu} = \gamma_\nu\boldsymbol R\boldsymbol R^H$ and $\boldsymbol S_{R_{\nu_t}} = \gamma_{\nu_t}\boldsymbol R_{\nu_t}\boldsymbol R_{\nu_t}^H$.
- Equivalent eddy-viscosity forcing (eq. 2.13): $\boldsymbol P_{\nu_t} = \boldsymbol L\boldsymbol S_{R_{\nu_t}}\boldsymbol L^H$.
- Amplitude scalars (eq. 2.14): $\gamma_\nu = \|\mathrm{diag}(\boldsymbol S)\|_\infty / \|\mathrm{diag}(\boldsymbol R\boldsymbol R^H)\|_\infty$, and likewise for $\gamma_{\nu_t}$ with $\boldsymbol R_{\nu_t}$.
- Sub-blocks (eq. 4.1–4.2, p. 13–14): $\boldsymbol P = \sum_{i,j=1}^{3}\boldsymbol P_{ij}$. The response to a cross block is $\boldsymbol R(\boldsymbol P_{ij} + \boldsymbol P_{ji})\boldsymbol R^H$, since P is Hermitian.
- Low-rank forcing (eq. 4.3, p. 16): $\boldsymbol P_{lr} = \eta_1\boldsymbol\zeta_1\boldsymbol\zeta_1^H + \eta_2\boldsymbol\zeta_2\boldsymbol\zeta_2^H$.
- Operators (eq. A1–A2, p. 26), with $\Delta = \mathcal D^2 - k^2$, $k^2 = \alpha^2 + \beta^2$ and $\nu_T = \nu + \nu_t$:
  - $\boldsymbol A = \begin{bmatrix}\Delta^{-1}\mathcal L_{OS} & 0\\ -i\beta U' & \mathcal L_{SQ}\end{bmatrix}$
  - $\boldsymbol B = \begin{bmatrix}-i\alpha\Delta^{-1}\mathcal D & -k^2\Delta^{-1} & -i\beta\Delta^{-1}\mathcal D\\ i\beta & 0 & -i\alpha\end{bmatrix}$
  - $\mathcal L_{OS} = -i\alpha(U\Delta - U'') + \nu_T\Delta^2 + 2\nu_T'\Delta\mathcal D + \nu_T''(\mathcal D^2 + k^2)$
  - $\mathcal L_{SQ} = -i\alpha U + \nu_T\Delta + \nu_T'\mathcal D$
- Velocity–state maps (eq. A4): $\boldsymbol C = k^{-2}\begin{bmatrix}i\alpha\mathcal D & -i\beta\\ k^2 & 0\\ i\beta\mathcal D & i\alpha\end{bmatrix}$ and $\boldsymbol D = \begin{bmatrix}0 & 1 & 0\\ i\beta & 0 & -i\alpha\end{bmatrix}$.
- Cess eddy viscosity (eq. A3, p. 26): $\dfrac{\nu_t}{\nu} = \dfrac12\left[1 + \dfrac{\kappa^2 Re_\tau^2}{9}(1-y^2)^2(1+2y^2)^2\left(1 - e^{-Re_\tau(1-|y|)/A}\right)^2\right]^{1/2} - \dfrac12$, with κ = 0.426 and A = 25.4.

> Equations were rebuilt from rendered page images (pp. 5–8, 16, 26), because text extraction dropped all Greek letters. Check the signs in A1–A2 against p. 26 before coding them.
>
> My reading, not stated in the paper: eq. 2.10 keeps only the diagonal terms of $\boldsymbol\Phi^H\boldsymbol W\boldsymbol P\boldsymbol W\boldsymbol\Phi$. In general, $\mathrm{diag}(\boldsymbol R\boldsymbol P\boldsymbol R^H)$ also contains cross terms $\sigma_i\sigma_j(\boldsymbol\phi_i^H\boldsymbol W\boldsymbol P\boldsymbol W\boldsymbol\phi_j)\boldsymbol\psi_i\boldsymbol\psi_j^H$. So eq. 2.10 is exact only when the forcing is uncorrelated across the right-singular vectors (e.g. white forcing). Given the strong cross-component coherence found here, treat a_i and b_i as a diagnostic of how forcing energy is distributed, not as an exact decomposition of the output.

## Data tables
**Table 2 (p. 23):** normalisation scalars, leading gain and first projection coefficient.

| Re_τ (scale) | γ_ν | γ_νt | σ₁ | b₁ |
|---|---|---|---|---|
| 179 (large scale) | 2.54×10⁻⁹ | 8.70×10⁻⁷ | 2.14×10² | 7.46×10⁻⁶ |
| 179 (near wall) | 1.83×10⁻⁸ | 5.26×10⁻⁷ | 1.10×10² | 6.50×10⁻⁵ |
| 543 (large scale) | 9.61×10⁻¹⁰ | 2.29×10⁻⁶ | 1.11×10³ | 2.91×10⁻⁶ |
| 543 (near wall) | 1.03×10⁻⁸ | 4.65×10⁻⁷ | 3.74×10¹ | 5.27×10⁻⁶ |

**Derived checks (my arithmetic, not in the paper):**
- Taking Re_bulk = U_bulk h/ν and the outer velocity scale 1.5 U_bulk gives c⁺ = c·1.5 Re_bulk/Re_τ:
  - Large scale at Re_τ 179: c = ω/α = 1.05/(2π/4.19) ≈ 0.70, so c⁺ ≈ 16.4 (paper: ≈ 16).
  - Large scale at Re_τ 543: c = 0.65/1.0, so c⁺ ≈ 18.0 (paper: ≈ 18).
  - Near-wall: c⁺ = ω⁺/α⁺ = 0.065/(2π/1130) ≈ 11.7 (paper: ≈ 12).

  This supports reading Re_bulk as U_bulk h/ν, so Re in eq. 2.1 would be about 4200 and 15000.
- Record lengths in viscous units: T⁺ ≈ 3.8×10⁴ (Re_τ 179) and ≈ 5.9×10³ (Re_τ 543). In outer units these are about 213 h/u_τ and 11 h/u_τ. For the Re_τ 543 large-scale structure (period ≈ 9.7 outer time units), the record covers only about 31 periods. Note that the S = RPR^H agreement is an algebraic identity once the window correction is applied, so it checks the *computation* of P, not its statistical convergence.

## Figures worth remembering
- **Fig. 2 (p. 10) and Fig. 5 (p. 12):** premultiplied streamwise spectra at y⁺ = 15 and y = 0.5, used to pick the (λ_x, λ_z) pairs.
- **Fig. 3 (p. 10) and Fig. 6 (p. 13):** s_uu and p_uu against c⁺ and y. The response follows the critical layer U⁺ = c⁺, while the forcing sits near the wall (y⁺ ≈ 6 for large scales at Re_τ 543).
- **Fig. 4 (p. 11) and Fig. 7 (p. 14):** validation (RPR^H vs DNS), plus profiles of the full and solenoidal forcing PSDs.
- **Fig. 8 (p. 15) and Fig. 9 (p. 16):** responses to individual sub-blocks P_ij. The large ± contributions cancel to give the small DNS response. Fig. 9(c) shows that P₁ⱼ alone makes the y⁺ = 12 peak.
- **Fig. 10 (p. 17):** the rank-2 forcing reconstruction recovers S.
- **Fig. 11 (p. 18):** first SPOD mode ζ₁ of P and its solenoidal part in the (z, y) plane. The solenoidal part shows oblique vortices that push near-wall fluid up and outer fluid down.
- **Fig. 12 (p. 20):** forcing masked above or below y⁺ = 30. The near-wall forcing only sets the near-wall peak.
- **Fig. 13 (p. 21):** σ_i/σ₁, b_i/b₁ and a_i/a₁ for modes 1–30, DNS (filled) vs eddy viscosity (empty). This is the central diagnostic figure.
- **Fig. 14 (p. 23):** √s_uu from DNS, white forcing and eddy viscosity. White forcing gives too-narrow large-scale profiles.

## Notation
- U(y): mean flow. u, p: fluctuations. f = −(u·∇)u: nonlinear forcing. b: mean-flow residual (drops out for α, β ≠ 0).
- α, β: streamwise and spanwise wavenumbers. ω: angular frequency. c = ω/α. ⁺: viscous units. Lengths without ⁺ are in units of h.
- q̂ = (v̂, ω̂_y): OSS state. A, B, C, D: OSS operators and velocity–state maps. W: quadrature weights.
- R: resolvent (molecular viscosity). R_νt: eddy-viscosity resolvent. σ_i, φ_i, ψ_i: gains, forcing (right) and response (left) singular vectors.
- S, P: velocity and forcing CSDs (3N_y × 3N_y). s_uu, p_uu, …: their diagonal blocks (PSDs). P_ij: component sub-blocks (1, 2, 3 = x, y, z).
- ξ_i, μ_i: SPOD modes and eigenvalues of S. ζ_i, η_i: SPOD modes and eigenvalues of P.
- b_i: projection of P onto φ_i. a_i = σ_i b_i: weight of ψ_i in the response. γ_ν, γ_νt: amplitude-matching scalars.
- L = −C(iωI + A)D: maps velocity to solenoidal forcing.

## Relevance to this project
This project analyses experimental resonance and feedback data (schlieren, acoustics, PIV) from The Shock Lab, with modelling such as resolvent analysis alongside (see CLAUDE.md). This paper is pure modelling and simulation for a wall-bounded amplifier flow. Its value here is in showing when a mean-flow resolvent model should and shouldn't match measured coherent structures.

- **Reading SPOD–resolvent comparisons.** Resolvent response modes match SPOD modes only when the forcing is white, or when it projects mainly onto the optimal forcing (p. 4, 20–22). When a mean-flow resolvent model of a jet (e.g. built from a PIV or LES mean flow) does not match SPOD modes from high-speed schlieren, coloured forcing that projects onto sub-optimals is a likely cause. Here this was worst when the gain separation was modest relative to how strongly the forcing favoured sub-optimals (large scales).
  - Possible contrast with resonant flows (my inference, not from the paper): for a screech tone, the mean-flow operator is close to marginal (cf. the global mode at St 0.667 in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)). σ₁ should then dominate so strongly that forcing colour matters less at the tone than at broadband frequencies. The paper itself cites Symon, Sipp & McKeon (2019) on oscillator vs amplifier resolvent modelling.
- **Eddy viscosity in linear models.** The Edgington-Mitchell 2020 global analysis uses Re = 10³ as a stand-in for eddy viscosity ([edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)). Eddy-viscosity resolvents are also used for jets in [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md). This paper explains *why* that works: the eddy viscosity changes the effective forcing so its projections b_i onto sub-optimal forcings resemble the true nonlinear forcing (p. 22–24). It is a statistical fix, not proof that the model represents the physics, and the Cess model is tuned for Re_τ = 2000 (p. 22).
- **Forcing components are coherent.** Driving with one component (or summing component-wise responses) can over-predict the response by a large factor, because cross-component terms cancel (p. 14–15). Keep this in mind for any jet or impinging-jet model that forces a single component (e.g. only radial or only axial forcing in receptivity models).
- **Symmetric/antisymmetric pairs.** The resolvent and SPOD modes come in pairs because of the channel's symmetry (p. 16, 21). The same pairing appears in planar, rectangular and twin-jet configurations studied in the lab. Compare the symmetric/antisymmetric coupling modes in [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md) and [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md). Keep both members of a pair when building low-rank reconstructions.
- **How each method depends on the data:**
  - *Welch CSDs and SPOD* need time-resolved data. Here: Hann window, 75% overlap; block length not stated (p. 27). This suits high-speed schlieren and acoustics, not 2 Hz PIV. For more advanced estimators, see [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md).
  - *Window correction:* to keep an exact input–output relation on windowed blocks, add −q̂ dW/dt to the forcing (p. 9; Martini et al. 2019). This matters if forcing statistics are ever computed from time-resolved LES data supplied to the group.
  - *Resolvent operator* needs only the mean flow, so a non-time-resolved PIV mean field can build it (as for the global analysis in Edgington-Mitchell 2020).
  - *Forcing statistics* need full 3D, time-resolved velocity fields: f = −(u·∇)u, or L S L^H with all three components at all y. This is not reachable from planar PIV or schlieren; it is a simulation-only diagnostic.
- **Low-rank forcing and the SPOD → reconstruction → HPOD pipeline.** The paper uses SPOD of the *forcing* to show that two modes carry most of the input (p. 16–17). The analysis is entirely block-averaged (stationary CSDs). Nothing addresses intermittency, mode switching, or time variation of amplitude or frequency.
  - A natural extension (not in the paper): rebuild the forcing, or the response, from the leading SPOD pair and run Hilbert POD to see whether the coherent forcing is bursty. See [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) and [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md).
- **Link to BMD (my inference).** At a given (α, β, ω), the forcing f is a sum of triadic interactions. Bispectral mode decomposition identifies which triads dominate. It is therefore a natural experimental-side complement to this forcing CSD, since BMD can be run on time-resolved schlieren.
- **Related notes:**
  - [nogueira-2019-large-scale-streaky-structures-jets.md](nogueira-2019-large-scale-streaky-structures-jets.md): lift-up streaks in jets (same mechanism, jet context; Nogueira and Cavalieri are co-authors).
  - [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md): SPOD vs eddy-viscosity resolvent in jets. The Pickering et al. 2020 cited here is a different paper, the AIAA SciTech "projection approach".
  - [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md): resolvent of a separated, partly oscillator flow.
  - [zhu-2021-recursive-one-way-navier-stokes.md](zhu-2021-recursive-one-way-navier-stokes.md): efficient resolvent-type solvers for slowly spreading flows.
  - [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md): open datasets on which this kind of forcing analysis could be repeated.
  - The Nogueira shock-containing-jet notes ([nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md), [nogueira-2021-wavepacket-modulation-shock-containing-jets.md](nogueira-2021-wavepacket-modulation-shock-containing-jets.md), [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md)) apply linear mean-flow models to screech, where the forcing-colour caveat applies.
- **Candidates for `/add-paper`:**
  - Nogueira, Morra, Martini, Cavalieri & Henningson (2021, JFM): forcing statistics in minimal Couette flow, the companion method paper.
  - Morra et al. (2019, JFM 867): Reynolds stresses in resolvent analyses.
  - Beneddine et al. (2016, JFM 798): conditions for validity of mean-flow stability analysis.
  - Towne, Schmidt & Colonius (2018, JFM 847): SPOD–DMD–resolvent relationship.
  - Towne, Lozano-Durán & Yang (2020, JFM 883): resolvent-based estimation.
  - Symon, Sipp & McKeon (2019, JFM 881): oscillator vs amplifier, from a PIV mean.
  - Martini et al. (2019): windowing correction.
  - Zare, Jovanović & Georgiou (2017): "Colour of turbulence".
  - Schmidt et al. (2018) and Lesshafft et al. (2019): jet resolvent with white forcing.
