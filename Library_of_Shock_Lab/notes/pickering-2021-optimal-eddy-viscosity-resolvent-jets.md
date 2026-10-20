---
key: "pickering-2021-optimal-eddy-viscosity-resolvent-jets"
title: "Optimal eddy viscosity for resolvent-based models of coherent structures in turbulent jets"
authors: ["Pickering, E.", "Rigas, G.", "Schmidt, O. T.", "Sipp, D.", "Colonius, T."]
year: 2021
type: "article"
venue: "JFM 917, A29"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "917", "pages": "A29"}
doi: "10.1017/jfm.2021.232"
arxiv: "2005.10964"
pdf: "linear-models/Pickering-EtAl_2021_Optimal-Eddy-Viscosity-For-Resolvent-Based-Models-Of-Coherent-Structures.pdf"
version: "preprint"
unverified: ["article number A29 and DOI from memory, not in the PDF"]
group: false
facility: "Charles LES (Cascade); Fluent RANS"
data: ["LES", "RANS"]
methods: ["resolvent", "eddy-viscosity", "SPOD"]
flow: ["round-jet", "subsonic", "supersonic"]
phenomena: ["KH-wavepackets", "Orr", "streaks"]
params: {"M_j": "0.4, 0.9, 1.5", "Re": "4.5×10⁵–1.76×10⁶", "St": "0.05–1", "m": "0–5"}
topics: ["linear-models"]
related: ["pickering-2020-lift-up-kh-orr-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "morra-2021-colour-of-forcing-resolvent-channel", "towne-2018-spod-relationship-dmd-resolvent", "towne-2022-database-reduced-complexity-modeling", "rolandi-2025-biglobal-resolvent-naca0012", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "garnaud-2013-preferred-mode-incompressible-jets", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "nogueira-2019-large-scale-streaky-structures-jets", "pickering-2020-lift-up-kh-orr-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Adjoint-optimal eddy-viscosity field aligns resolvent and SPOD modes of M_j 0.4–1.5 jet LES (Orr ~10%→80%, KH 96%); RANS k–ε μ_T × 0.2 is near-optimal; forcing still not white"
---
# Optimal eddy viscosity for resolvent-based models of coherent structures in turbulent jets

- **Authors:** E. Pickering, G. Rigas, O. T. Schmidt, D. Sipp, T. Colonius (Caltech; UC San Diego; ONERA, Meudon) (p. 1)
- **Source:** J. Fluid Mech. (2021) 917 (published version). This PDF is the arXiv preprint, arXiv:2005.10964v2 [physics.flu-dyn] (8 Jan 2021), in JFM draft style; it prints no article number, DOI or received/accepted dates (p. 1).
  > The published article number (A29) and DOI (10.1017/jfm.2021.232) are from memory, not from this PDF. Check before citing.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-models/Pickering-EtAl_2021_Optimal-Eddy-Viscosity-For-Resolvent-Based-Models-Of-Coherent-Structures.pdf` (index key `linear-models/Pickering-EtAl_2021_Optimal-Eddy-Viscosity-For-Resolvent-Based-Models-Of-Coherent-Structures.pdf`, 34 pp.)
- **Tags:** resolvent analysis, eddy viscosity, eddy-viscosity resolvent analysis (EVRA), SPOD, SPOD–resolvent alignment, adjoint/Lagrangian optimisation, data assimilation, field inversion, RANS k–ε, mean-flow consistent eddy viscosity, turbulent Reynolds number, linear damping, forcing colour, Kelvin–Helmholtz, Orr, lift-up, turbulent round jets, LES, subsonic/transonic/supersonic

## Summary
Resolvent modes of a turbulent mean flow only match the coherent structures seen in data when the forcing (nonlinear terms) is uncorrelated; otherwise the forcing statistics have to be modelled (p. 2–3, 6). This paper asks how far an eddy viscosity added to the linear operator can do that job. It sets up an adjoint (Lagrangian) optimisation that finds, at each frequency and azimuthal wavenumber, the spatial eddy-viscosity field μ_T(x) that maximises the projection of the leading resolvent response mode onto the leading SPOD mode of LES data (p. 8–12). That optimum is an upper bound, and three simpler models are tuned against it: a mean-flow consistent eddy viscosity fitted to the steady RANS residual of the LES mean flow, the k–ε eddy viscosity from an independent RANS run, and a constant turbulent Reynolds number (p. 7, 12–14). All four raise SPOD–resolvent alignment from the baseline (Re_T = 3×10⁴, Schmidt et al. 2018) dramatically, most at low St where Orr modes dominate (about 10% → 80%), and up to 96% in the KH band (p. 14–17, 27). A single frequency-independent RANS coefficient, c = 0.2, gives nearly optimal alignment across St ∈ [0.05, 1], m = 0–5 and M_j = 0.4, 0.9 and 1.5, with the worst results where SPOD eigenvalues are not well separated (p. 22–25, 28).

## Key findings
- **Eddy viscosity transforms low-frequency alignment** (Fig. 4a, p. 14–15; M_j = 0.4, m = 0):
  - Baseline (Re_T = 3×10⁴) alignment |ψ₁* W u₁| is about 0.05–0.1 for St ≤ 0.3 and 0.7–0.8 for St > 0.3 (values read off Fig. 4a).
  - With any of the eddy-viscosity models it rises to about 0.55–0.8 at St ≤ 0.3 and 0.9–0.96 at St ≈ 0.4–0.8 (read off Fig. 4a). The text summarises this as about 10% → 80% at low St and > 75% → nearly perfect at St > 0.3 (p. 15).
  - The optimal field always gives the highest alignment, which the authors take as a sign it reached (or approached) a global maximum (p. 15). The other models are close: the constant μ_T is nearly optimal at low St (Orr), the RANS and mean-flow models at higher St (p. 15). Each of these still uses a different optimal coefficient at each St (p. 15).
  - The authors' rule of thumb: alignment ≳ 0.4 means qualitative agreement; < 0.4 shows "little visual similarity" (p. 14).
- **What the eddy viscosity does physically** (p. 15–18):
  - At low St (0.05, 0.2) the baseline resolvent is dominated by spatially extensive Orr-type modes, which bear little resemblance to SPOD. Eddy viscosity damps them in favour of a KH-like wavepacket that peaks further upstream, as in SPOD; projections rise by up to 10× (Fig. 6, p. 16–17).
  - At St = 0.05 the optimal resolvent mode matches all state variables of the SPOD mode, including the energy split between them (Fig. 5, p. 15).
  - At St = 0.6 and 1 (KH, low rank) baseline alignment is already high; eddy viscosity shortens the streamwise extent of the modes and lifts alignment to 96% (optimal field). KH is inviscid and modal, so the result is insensitive to the model, but a non-zero μ_T is still needed for the improvement (Fig. 7, p. 17).
  - At St = 1 alignment falls again because Orr modes of similar energy emerge; in the global domain the Orr response, peaking downstream, overtakes KH in energy (p. 17–18).
- **SPOD statistical error caps the alignment.** For m = 0 the SPOD mode at St = 0.05 has a non-zero u_θ (physically it must be zero), about 5× smaller than u_x and incoherent. Its share of the projection is 0.08, so the attainable maximum is about 0.92; the authors treat 0.08 as an error bar (Fig. 5, p. 15–16). They link this to weak eigenvalue separation at that frequency (p. 16).
- **Optimal coefficient vs frequency** (Fig. 8, p. 19): all models show the same three regimes.
  - St ∈ [0.05, 0.3]: Orr modes are strongly Re-dependent and need a large eddy viscosity. At St = 0.05, μ_j/μ_T ≈ 13,500, four orders of magnitude from molecular (p. 19).
  - St ∈ [0.3, 0.8]: KH band; eddy viscosity matters less and the value is not critical (p. 19).
  - St ∈ [0.8, 1]: mixed KH/Orr; the required μ_T falls again and Re_T → Re_j, i.e. the eddy viscosity "turns off" as wavelengths approach the fine-scale turbulence (p. 19).
- **Where the optimal μ_T lives** (Fig. 9, p. 19–20): the optimiser removes viscosity from the potential core (inside the critical layer) and adds it just outside the critical layer, usually just downstream of the wavepacket's amplitude peak, where the wavepacket decays. The RANS and mean-flow consistent fields share these features within the region where the mode has amplitude, which is why they are nearly optimal (p. 20).
- **Subdominant modes** (§6, p. 20–22; St = 0.6, m = 0):
  - The RANS and mean-flow consistent models align SPOD mode 2 to about 70%, better than the field optimised only for mode 1. They also beat it for modes 3–5, with alignment falling with mode number (Fig. 10, p. 21).
  - The 5 × 5 SPOD–resolvent projection matrices show the RANS and mean-flow models diagonalise the forcing CSD best (Fig. 11, p. 21–22, 27).
  - A two-mode optimisation reaches 77% for mode 2 without lowering mode 1 (96%) (Fig. 12, p. 22). Mode 1 is KH; modes 2+ are Orr. Aligning the first Orr mode improves the whole Orr family, but aligning KH alone does not (p. 22).
  - Mode 2 needs extra eddy viscosity further downstream and nearer the centreline, which the RANS and mean-flow fields already contain (p. 22).
- **A single RANS constant works** (§7.1, Fig. 13–14, p. 22–24):
  - Optimal RANS coefficients range c = 0.7–0.004, with a roughly constant c ≈ 0.5 at moderate St (p. 23).
  - Testing fixed c = 1, 0.5, 0.32, 0.2, 0.08: c = 0.2 gives "significant alignment" up to St = 1 with little loss against the per-frequency optimum, and results are fairly insensitive over c = 0.08–1. The same held for all three Mach numbers and m = 0–5 (not shown) (p. 23).
  - With c = 0.2 at M_j = 0.4: m = 1 gives a uniform ~80% across St; m ≥ 2 is poorer but much better than the baseline, especially for m > 2 (Fig. 14, p. 23).
- **Lift-up also needs eddy viscosity** (p. 23–24): low-St, m ≠ 0 alignment improves strongly. This is consistent with Pickering et al. (2020a), where streak resolvent modes needed an eddy viscosity and, without one, St = 0 modes extend indefinitely downstream (p. 24).
- **Transonic and supersonic jets** (Fig. 15–16, p. 24–25):
  - M_j = 0.9: about 80% for m = 0 and 1 over much of the St range, about 60% on average for m = 2.
  - M_j = 1.5: less favourable, though much better than with Re_T = 3×10⁴ (not shown).
  - Poor alignments coincide with SPOD spectra whose leading eigenvalues sit inside each other's 95% confidence bands. Without more data, the mismatch cannot be blamed on the EVRA ansatz (p. 24–25).
- **Gains and forcing colour** (§7.3, Fig. 17, p. 25–27):
  - The RANS eddy viscosity (c = 0.2) increases the separation between resolvent gains compared with the baseline, beyond the separation of the SPOD eigenvalues. Orr gains drop sharply while KH gains are nearly unchanged (p. 25).
  - This matches Schmidt et al. (2018), where subdominant Orr gains scaled as Re_T^1.2; the RANS model gives gains similar to their Re_T = 10³ case at St = 0.6, m = 0 (p. 25–26).
  - At St = 0.6, m = 0, modes 1 and 2 align to 95% and 69% (RANS c = 0.2). Using eq. 2.17, λ_{β,n} = λ_n σ_n⁻², uniform forcing (Λ_β = αI) would require λ₁/λ₂ = σ₁²/σ₂², which Fig. 17 rules out. Forcing amplitudes are not uniform even after the eddy viscosity, so they must be modelled or estimated (p. 26–27).
  - Suggested next step: tie the forcing amplitude of each mechanism to the turbulence intensity in the region that forces it, near-nozzle for KH, near the end of the potential core for Orr (p. 27).
- **Linear damping is worse** (Appendix A, Fig. 18, p. 28–29): replacing the operator by L − γI (a finite-time-horizon resolvent, as in Yeh & Taira 2019) improves alignment over baseline but is "significantly inferior" to eddy viscosity, probably because it damps all wavenumbers uniformly.
- **Optimiser behaviour** (p. 11–12): negative μ_T regions sometimes appear (cf. backscatter) and are clipped to zero. The cost function may have local maxima; results were relatively insensitive to the initial guess, and the optimal constant field is used as the initial condition.

## Setup / method
No experiments are run. The data are the same three LES databases as [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) and Schmidt et al. (2018); the modelling is global resolvent analysis on their mean flows, plus RANS.

- **LES database** (Table 1, p. 4; §2.1):
  - Unstructured compressible solver *Charles* (Cascade Technologies); numerics, meshing and subgrid model in Brès et al. (2017). The M_j = 0.4 and 0.9 jets were validated against PPRIME (Poitiers) experiments (Brès et al. 2018); the M_j = 0.4 jet matches the nozzle and exit boundary layer of Cavalieri et al. (2013), Jaunet et al. (2017) and Nogueira et al. (2019) (p. 4).
  - Isothermal round jets (abstract). 10,000 snapshots each, interpolated onto a cylindrical grid x × r × θ ∈ [0, 30] × [0, 6] × [0, 2π]; state q = [ρ, u_x, u_r, u_θ, T] (p. 4).
  - Non-dimensionalised by U_j, D and ρ_j U_j²; St = fD/U_j (p. 4).

  | Case | M_j | Re_j | p₀/p∞ | T₀/T∞ | n_cells | Δt a∞/D | ΔSt |
  |---|---|---|---|---|---|---|---|
  | subsonic | 0.4 | 4.5×10⁵ | 1.117 | 1.03 | 15.9×10⁶ | 0.2 | 0.049 |
  | transonic | 0.9 | 1.01×10⁶ | 1.7 | 1.15 | 15.9×10⁶ | 0.2 | 0.022 |
  | supersonic | 1.5 | 1.76×10⁶ | 3.67 | 1.45 | 31×10⁶ | 0.1 | 0.026 |

  > Same Table 1 as Pickering et al. 2020 (identical values). See that note's check: ΔSt corresponds to 256-snapshot blocks, and the M_j = 1.5 jet is at the isentropic (ideally expanded) NPR.
- **SPOD** (§2.3, p. 5–6; needs time-resolved, azimuthally resolved data):
  - Fourier transform in θ and in time; CSD S = Q̂Q̂*; eigenproblem in the Chu norm W.
  - **Hamming window**, 256-snapshot blocks with 50% overlap, 78 realisations, for all SPOD in this paper (p. 6).
  - 95% confidence intervals on the eigenvalues are used to judge whether modes are separated (Fig. 4b, 16; p. 15, 24–25).
- **Resolvent** (§2.2, p. 5):
  - Compressible Navier–Stokes (Appendix B) linearised about the LES mean (Reynolds decomposition), Fourier transformed in t and θ; Chu energy norm with W_f = W_q = W.
  - Discretised in x and r with 4th-order summation-by-parts finite differences (Mattsson & Nordström 2004); polar singularity as Mohseni & Colonius (2000); non-reflecting boundary conditions on all boundaries (p. 5). Grid size and domain for the resolvent are not stated.
  - Eddy viscosity enters by replacing μ with μ_j + μ_T(x, r) in the linearised equations, including its spatial gradients (p. 7, 30). μ_T is steady and axisymmetric (p. 8). The residual forcing then loses its exact interpretation as nonlinear interactions of resolved modes, but the problem becomes lower rank (p. 7).
  - Pr = 0.7, γ = 1.4 (p. 29).
- **Four eddy-viscosity models** (Table 2, p. 7; §3):

  | Model | μ_T form | Optimised parameter | LES data used | Label |
  |---|---|---|---|---|
  | Baseline (Schmidt et al. 2018) | 1/Re_T = 3.3̄×10⁻⁵ (Re_T = 3×10⁴) | – | – | Baseline |
  | Optimal field | μ_T(x) | μ_T(x) | SPOD mode ψ | Opt. μ_T |
  | Mean-flow consistent | c μ_T(x) | c | mean flow q̄ | Mean μ_T |
  | RANS | c ρ̄ C_μ k²/ε | c | – | RANS μ_T |
  | Turbulent Re | 1/Re_T | 1/Re_T | – | Re_T,Opt |

  - The baseline Re_T = 3×10⁴ is an order of magnitude below the molecular Re yet far above a realistic eddy-viscosity value; the authors call it a regularisation (p. 8).
  - All optimisations are done independently per (St, m) to gauge sensitivity, not to propose a frequency-dependent eddy viscosity (p. 8).
- **Optimal field (§3.1, p. 8–12; Algorithm 1 and Fig. 1, p. 10):**
  - Cost: squared projection of u₁ on ψ₁ minus a Tikhonov penalty on μ_T (eq. 3.6). The penalty weight l² is chosen large enough to remove μ_T where it does not affect alignment (e.g. far field), small enough not to disturb the objective; a range of several orders of magnitude works (p. 9).
  - Constraints: forward equation, resolvent eigenproblem, normalisation (eq. 3.1–3.5), assembled into a Lagrangian (eq. 3.7) following Brandt et al. (2011) to handle non-modal behaviour.
  - Adjoint system (eq. 3.12) for the Lagrange multipliers, gradient dJ/dμ_T (eq. 3.15), steepest ascent with a line search (eq. 3.16). The operator derivative ∂L_T/∂μ_T is a sparse tensor obtainable by automatic differentiation or finite differences (p. 11).
  - Extends to several modes by summing gradients (p. 11) and to restricted input/output spaces (B, C; Appendix C, p. 30–31).
- **Mean-flow consistent model (§3.2, p. 12):** the μ_T field that minimises the residual of the zero-frequency, m = 0 linearised equations evaluated on the LES mean flow (eq. 3.17–3.23), found with the same adjoint machinery. It reduces the residual to about 10% of its original value, except in the thin near-nozzle shear layer (only about 50% improvement). Then scaled by c at each St.
- **RANS model (§3.3, p. 13):**
  - Steady 2-D axisymmetric RANS in ANSYS Fluent, standard k–ε (Launder & Spalding). Domain 40D × 20D; spacing mirrors the interpolated LES grid but 4× finer, about 3×10⁵ points. Inlet from the LES base-flow profile.
  - Coefficients from Thies & Tam (1996): C_μ = 0.0874, C_ε1 = 1.4, C_ε2 = 2.02, σ_k = 0.324, σ_ε = 0.377, Pr_T = 0.422. Fluent lacks the Pope and Sarkar corrections, so C_μ, σ_k and σ_ε are divided by a tuning constant a = 1.2, 1.3 and 1.575 for M_j = 0.4, 0.9 and 1.5 to match the LES mean flow (p. 13).
  - RANS mean velocity matches the LES almost exactly at M_j = 0.4 (Fig. 3, p. 14); radial velocity, density, TKE and the other Mach numbers also agree (not shown).
- **Constant model (§3.4, p. 14):** line search over Re_T per (St, m). Prior jet studies used molecular Re (10⁵–10⁶; Jeun et al. 2016, Lesshafft et al. 2019) or effective Re (10³–10⁴; Garnaud et al. 2013, Schmidt et al. 2018), giving different gains and modes at low St (p. 14).
- **Parameter space:** St ∈ [0.05, 1] throughout; m = 0 for §4–6; m = 0–5 and all three Mach numbers in §7 (p. 4, 14, 22–24).
- **Metric:** |ψ₁* W u₁| in the full-state Chu norm, so it compares structure and the energy split between the five variables (p. 14). Mode figures show pressure only (p. 16).

## Key equations
Notation as in the paper; * is the conjugate transpose, W the Chu-norm weight.

- Linearised forced system and resolvent (eq. 2.4–2.7, p. 5): $\partial_t\boldsymbol q'-\boldsymbol A(\bar{\boldsymbol q})\boldsymbol q'=\boldsymbol f$, $\ (i\omega\boldsymbol I-\boldsymbol A_m)\hat{\boldsymbol q}_{m,\omega}=\hat{\boldsymbol f}_{m,\omega}$, $\ \boldsymbol R_{m,\omega}=(i\omega\boldsymbol I-\boldsymbol A_m)^{-1}$, $\omega=2\pi St$.
- Chu norm (eq. 2.8, p. 5): $\langle\boldsymbol q_1,\boldsymbol q_2\rangle_E=\iiint\boldsymbol q_1^*\,\mathrm{diag}\!\left(\dfrac{\bar T}{\gamma\bar\rho M^2},\bar\rho,\bar\rho,\bar\rho,\dfrac{\bar\rho}{\gamma(\gamma-1)\bar TM^2}\right)\boldsymbol q_2\,r\,dr\,dx\,d\theta=\boldsymbol q_1^*\boldsymbol W\boldsymbol q_2$.
- Weighted SVD (eq. 2.9–2.11, p. 5): $\tilde{\boldsymbol R}=\boldsymbol W_q^{1/2}\boldsymbol R\,\boldsymbol W_f^{-1/2}=\tilde{\boldsymbol U}\boldsymbol\Sigma\tilde{\boldsymbol V}^*$, $\ \boldsymbol U=\boldsymbol W_q^{-1/2}\tilde{\boldsymbol U}$, $\boldsymbol V=\boldsymbol W_f^{-1/2}\tilde{\boldsymbol V}$, $\ \boldsymbol R=\boldsymbol U\boldsymbol\Sigma\boldsymbol V^*\boldsymbol W$.
- SPOD (eq. 2.12–2.14, p. 6): $\boldsymbol S=\hat{\boldsymbol Q}\hat{\boldsymbol Q}^*$, $\ \boldsymbol S\boldsymbol W\boldsymbol\Psi=\boldsymbol\Psi\boldsymbol\Lambda$, $\ \boldsymbol S=\boldsymbol\Psi\boldsymbol\Lambda\boldsymbol\Psi^*$.
- SPOD–resolvent link (eq. 2.15–2.16, p. 6): $\boldsymbol S_{qq}=\boldsymbol R\boldsymbol S_{ff}\boldsymbol R^*$; with forcing coefficients $\boldsymbol\beta=\boldsymbol V^*\boldsymbol W\boldsymbol f$, $\ \boldsymbol\Psi\boldsymbol\Lambda\boldsymbol\Psi^*=\boldsymbol U\boldsymbol\Sigma\boldsymbol S_{\beta\beta}\boldsymbol\Sigma\boldsymbol U^*$. Uncorrelated forcing ($\boldsymbol S_{\beta\beta}$ diagonal) makes resolvent and SPOD modes identical (Towne et al. 2018).
  > Eq. 2.16 is garbled in the text extraction; this form is my reconstruction from the surrounding text and Towne et al. (2018). Check against p. 6.
- Forcing amplitude of an aligned mode (eq. 2.17, p. 7): $\lambda_n=\sigma_n^2\lambda_{\beta_n}$ for any n with $\boldsymbol u_n=\boldsymbol\psi_n$.
- Resolvent eigenproblem and normalisation (eq. 3.1–3.5, p. 8–9): $\boldsymbol v_1=\boldsymbol L_T\boldsymbol u_1$, $\ \boldsymbol W\boldsymbol u_1=\sigma_1^2\boldsymbol L_T^*\boldsymbol W\boldsymbol v_1$, $\ \boldsymbol R_T^*\boldsymbol W\boldsymbol R_T\boldsymbol v_1=\sigma_1^2\boldsymbol W\boldsymbol v_1$, $\ \boldsymbol u_1^*\boldsymbol W\boldsymbol u_1=1$.
- Cost (eq. 3.6, p. 9): $\mathcal J=\boldsymbol u_1^*\boldsymbol W\boldsymbol\psi_1\boldsymbol\psi_1^*\boldsymbol W\boldsymbol u_1-l^2\boldsymbol\mu_T^*\boldsymbol M\boldsymbol\mu_T$, with $\boldsymbol\Psi_1=\boldsymbol\psi_1\boldsymbol\psi_1^*$ and M the cylindrical quadrature weights.
- Lagrangian (eq. 3.7, p. 9): $\mathcal L=\boldsymbol u_1^*\boldsymbol W\boldsymbol\Psi_1\boldsymbol W\boldsymbol u_1-l^2\boldsymbol\mu_T^*\boldsymbol M\boldsymbol\mu_T-\tilde{\boldsymbol u}_1^*(\boldsymbol L_T\boldsymbol u_1-\boldsymbol v_1)-\tilde{\boldsymbol v}_1^*(\boldsymbol W\boldsymbol u_1-\sigma_1^2\boldsymbol L_T^*\boldsymbol W\boldsymbol v_1)-\tilde\sigma_1(\boldsymbol u_1^*\boldsymbol W\boldsymbol u_1-1)+\text{c.c.}$
- Adjoint system (eq. 3.12, p. 10):
  $$\begin{bmatrix}-\boldsymbol L_T^* & -\boldsymbol W & -2\boldsymbol W\boldsymbol u_1\\ \boldsymbol W^{-1} & \boldsymbol L_T\sigma_1^2 & 0\\ 0 & \boldsymbol u_1^*\boldsymbol W & 0\end{bmatrix}\begin{bmatrix}\tilde{\boldsymbol u}_1\\ \tilde{\boldsymbol v}_1\\ \tilde\sigma_1\end{bmatrix}=\begin{bmatrix}-2\boldsymbol W\boldsymbol\Psi_1\boldsymbol W\boldsymbol u_1\\ 0\\ 0\end{bmatrix},\qquad \tilde\sigma_1=\boldsymbol u_1^*\boldsymbol W\boldsymbol\Psi_1\boldsymbol W\boldsymbol u_1\in\mathbb R$$
- Gradient and update (eq. 3.13–3.16, p. 11):
  $$\frac{\partial\mathcal L}{\partial\boldsymbol\mu_T}\delta\boldsymbol\mu_T=-\tilde{\boldsymbol u}_1^*\Big(\frac{\partial\boldsymbol L_T}{\partial\boldsymbol\mu_T}\delta\boldsymbol\mu_T\Big)\boldsymbol u_1+\sigma_1^2\tilde{\boldsymbol v}_1^*\Big(\frac{\partial\boldsymbol L_T^*}{\partial\boldsymbol\mu_T}\delta\boldsymbol\mu_T\Big)\boldsymbol W\boldsymbol v_1-2l^2\boldsymbol\mu_T^*\boldsymbol M\delta\boldsymbol\mu_T+\text{c.c.}$$
  $$\boldsymbol\mu_T^{(k+1)}=\boldsymbol\mu_T^{(k)}+\alpha\,\frac{d\mathcal J}{d\boldsymbol\mu_T}$$
  Eq. 3.15 gives the component form at grid point k with $\boldsymbol M^{-1}$ and the sparse tensor $\boldsymbol L_{m,ij}=\lim_{\epsilon\to0}(\boldsymbol L_{T+\epsilon\delta\mu_m,ij}-\boldsymbol L_{T,ij})/\epsilon$.
- Mean-flow consistent fit (eq. 3.17–3.21, p. 12): $\boldsymbol L_T\bar{\boldsymbol q}=\boldsymbol f$, $\ \mathcal J=-\boldsymbol f^*\boldsymbol W\boldsymbol f$, $\ \tilde{\boldsymbol u}=-2\boldsymbol W\boldsymbol f$; gradient eq. 3.22–3.23.
- RANS eddy viscosity (eq. 3.24, Table 2, p. 7, 13): $\mu_{T,RANS}=\bar\rho\,C_\mu\,k^2/\epsilon$, used as $\mu_T=c\,\mu_{T,RANS}$; recommended c = 0.2.
- Linear damping (eq. A1, p. 28): $\boldsymbol L\to\boldsymbol L-\gamma\boldsymbol I$, $\gamma=1/\tau>0$.
- Input–output form (eq. C1–C2, p. 30): $\boldsymbol L_T\boldsymbol q=\boldsymbol B\boldsymbol f$, $\boldsymbol y=\boldsymbol C\boldsymbol q=\boldsymbol C\boldsymbol L_T^{-1}\boldsymbol B\boldsymbol f$.

> Eqs. 3.1–3.16, the Table 2 entries and eq. 2.17 were checked against rendered images of pp. 7–11 and 27. The Chu-norm entries (eq. 2.8) are rebuilt from a garbled extraction and the matching equation in the 2020 paper. Appendix B (pp. 29–30) was not re-typed.

## Data tables
Alignment |ψ₁* W u₁| summary (M_j = 0.4 unless stated; values read from figures unless the page gives them in text):

| Case | Baseline (Re_T = 3×10⁴) | With eddy viscosity | Source |
|---|---|---|---|
| m = 0, St ≤ 0.3 | ≈ 0.05–0.1 | ≈ 0.55–0.8 (all models) | Fig. 4a, p. 15 |
| m = 0, St 0.4–0.8 | ≈ 0.7–0.8 | ≈ 0.9–0.96 | Fig. 4a, p. 15–17 |
| m = 0, St = 0.6, mode 1 | — | 0.96 (optimal), 0.95 (RANS c = 0.2) | p. 17, 22, 26 |
| m = 0, St = 0.6, mode 2 | — | ≈ 0.70 (RANS, mean), 0.69 (RANS c = 0.2), 0.77 (2-mode opt.) | p. 21–22, 26–27 |
| m = 1, all St, RANS c = 0.2 | — | ≈ 0.8 uniform | Fig. 14, p. 23 |
| M_j = 0.9, m = 0–1, RANS c = 0.2 | — | ≈ 0.8 | Fig. 15, p. 24 |
| M_j = 0.9, m = 2, RANS c = 0.2 | — | ≈ 0.6 average | p. 24 |

Optimal parameters (Fig. 8, p. 19; read from the plot): 1/Re_T,opt ≈ 3×10⁻² at St = 0.05 (μ_j/μ_T ≈ 13,500 in the text, consistent since Re_j/13,500 ≈ 33), falling to ≈ 10⁻³–3×10⁻⁴ by St ≈ 1. RANS c: 0.7 → 0.004 per the text (p. 23), plateau ≈ 0.5 at moderate St.

> The text's lower bound c = 0.004 (p. 23) does not obviously match Fig. 8d, whose lowest points appear near 5×10⁻² at the 90-dpi render I used. Check against the PDF.

## Figures worth remembering
- **Fig. 1 (p. 10):** schematic of the optimisation loop (initial μ_T → resolvent → adjoint multipliers → gradient → update), with St = 0.6, m = 0 graphics.
- **Fig. 2 (p. 13):** (a) mean-flow consistent μ_T field; (b) RANS μ_T for M_j = 0.4 (c = 1).
- **Fig. 3 (p. 14):** RANS vs LES mean u_x along r/D = 0.25, 0.5, 1 and across x/D = 0.5, 5, 10.
- **Fig. 4 (p. 15):** (a) alignment vs St for all models and baseline; (b) m = 0 SPOD spectra with 95% CIs and KH vs Orr branches. The key result.
- **Fig. 5 (p. 16):** all state variables plus p at St = 0.05: SPOD vs optimal vs baseline; shows the spurious SPOD u_θ.
- **Fig. 6–7 (p. 17–18):** pressure modes at St = 0.05, 0.2, 0.6, 1 for SPOD, baseline and the four models.
- **Fig. 8 (p. 19):** optimal 1/Re_T, ‖μ_T‖∞, mean c and RANS c vs St (log axes).
- **Fig. 9 (p. 20):** optimal, mean-flow and RANS μ_T fields with the resolvent mode at St = 0.2 and 0.6.
- **Fig. 10–12 (p. 21–22):** subdominant modes 2–3, 5 × 5 projection matrices, and the two-mode optimisation field.
- **Fig. 13–15 (p. 23–25):** alignment vs St for fixed RANS c; m = 0–5 at M_j = 0.4 (c = 0.2 vs baseline); M_j = 0.9 and 1.5.
- **Fig. 16 (p. 26):** first five SPOD spectra with 95% CIs for m = 0–5 and all three jets; the tool for judging which (St, m) can be trusted.
- **Fig. 17 (p. 26):** SPOD eigenvalues vs baseline and RANS (c = 0.2) resolvent gains, m = 0; the RANS gains show a large KH–Orr gap.
- **Fig. 18 (p. 29):** linear-damping alignment vs baseline.

## Notation
- ψ_n: n-th SPOD mode; λ_n its eigenvalue. u_n, v_n: resolvent response and forcing modes with gain σ_n. "ψ₁ : u_x" means the u_x component (p. 6).
- A_m, L, L_T: linearised operator, without and with eddy viscosity (A_T, L_T). R_T: resolvent with eddy viscosity.
- μ_T: eddy-viscosity field (vector when discretised). Re_T: turbulent Reynolds number, constant μ_T = 1/Re_T. c: model coefficient. C_μ, k, ε: k–ε quantities. l²: Tikhonov weight; M: quadrature weights.
- β = V* W f: forcing expansion coefficients; S_ββ their CSD; λ_β the diagonal forcing amplitudes.
- EVRA: eddy-viscosity resolvent analysis. KH: Kelvin–Helmholtz. Ψ₁ = ψ₁ψ₁*.
- Subscript j: nozzle-exit centreline. M_j = U_j/a_j, Re_j = ρ_j U_j D/μ_j, St = fD/U_j.

## Relevance to this project
This is a modelling paper on broadband, non-resonant round jets with no experiments. It matters because any resolvent or mean-flow linear model of the lab's jets needs an eddy-viscosity choice, and this paper says which ones work and how to calibrate them against data.

- **Practical recipe for resolvent on lab mean flows:**
  - A RANS k–ε eddy viscosity scaled by a single c ≈ 0.2 is a defensible default; results are insensitive over c ≈ 0.08–1 (p. 23).
  - Without a RANS run, the mean-flow consistent model needs only the measured mean flow (p. 12). It works nearly as well as RANS (Fig. 4, 10–11) and suits **non-time-resolved PIV**, which gives the mean flow directly; density would come from BOS or an isentropic assumption, as in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md) and [tan-2015-bos-density-axisymmetric-jets.md](tan-2015-bos-density-axisymmetric-jets.md). *(My inference; the paper only applies it to LES mean flows.)*
  - A constant Re_T is nearly optimal for Orr-type modes at low St, but the optimal value changes by about two orders of magnitude across St (Fig. 8a). The uniform Re = 10³ used for global stability of screeching jets in the waves note is in the right range for the KH band (cf. p. 25–26), but should not be assumed to carry over to low-St content.
- **Calibrating a model against SPOD (time-resolved data):**
  - The optimisation needs a leading SPOD mode, so it needs time-resolved data: high-speed schlieren, LES, or TR-PIV. For snapshot PIV, a POD pair or HPOD_x mode at a tonal frequency could stand in for ψ₁. *(My inference, not tested.)*
  - Alignment is only meaningful where SPOD eigenvalues are separated beyond their confidence intervals (p. 24–25). For lab data, compute SPOD confidence intervals before comparing with any model. The paper's SPOD settings (Hamming window, 256-snapshot blocks, 50% overlap, 78 blocks; p. 6) are the reference.
  - Note the window differs from the 2020 paper (periodic Hann per that note) for apparently the same SPOD.
  - Schlieren is line-of-sight integrated and planar PIV is one plane, so the full-state Chu-norm alignment used here would have to be replaced by an output-restricted one. Appendix C (input/output operators B and C, p. 30–31) gives exactly that formulation, e.g. C picking density gradient or a PIV plane. *(Application is my inference.)*
- **Tonal and resonant flows:**
  - Screech, impingement and edge tones are KH-band, low-rank phenomena; the paper finds KH modes are the least sensitive to eddy viscosity (p. 17, 27). So a resolvent or stability model of the tone itself should be fairly robust to the closure, while the broadband Orr and lift-up background will not be.
  - The paper's strong gain separation between KH and Orr modes with RANS eddy viscosity (Fig. 17) is useful for SPOD-filtered reconstruction: at a screech frequency the first resolvent mode should be cleanly KH.
  - Resonance closure involves upstream guided-jet modes ([edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md)). Those are acoustic and near-inviscid, so they should also be insensitive to μ_T, but this paper does not test them, and its jets have no shock cells. *(My inference.)*
- **Intermittency and time variation:**
  - The paper is entirely frequency-domain and block-averaged; it says nothing about intermittency or mode switching.
  - Its finding that forcing amplitudes are non-uniform across mechanisms (p. 26–27) is relevant to the SPOD → reconstruction → HPOD pipeline: an HPOD-tracked amplitude of a KH wavepacket reflects time-varying forcing, which a resolvent model with fixed forcing statistics cannot predict. See [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md).
  - The subdominant-mode results show Orr modes form a separate family needing extra downstream eddy viscosity (p. 22). When reconstructing from several SPOD modes at a tone frequency, modes 2+ may be Orr-type rather than higher-order KH.
- **Agreement and contrast with other notes:**
  - [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md): companion paper on the same LES. It used a TKE-based μ_T = ρ̄ c k^{1/2} l_m with c = 0.0065; this paper uses a RANS k–ε μ_T with c = 0.2 and confirms eddy viscosity is essential for Orr and lift-up but not for KH (p. 24, 27). The 2020 KH projection 0.94 at [0, 0.6] agrees with the ≈ 0.95–0.96 here.
  - [morra-2021-colour-of-forcing-resolvent-channel.md](morra-2021-colour-of-forcing-resolvent-channel.md): channel-flow counterpart. Both find forcing is not white and that eddy viscosity helps by mimicking part of the forcing colour; Morra 2021 shows it is still not exact, consistent with the non-uniform λ_β here (p. 26–27). This paper builds on Morra et al. (2019) (p. 3).
  - [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md): shows the same KH-agree / Orr-disagree pattern for the M_j = 0.9 jet and cites eddy-viscosity resolvent work as the fix; the database is a ready benchmark for reproducing this paper.
  - [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md): uses a discounted (finite-horizon) resolvent instead of eddy viscosity. Appendix A here finds linear damping clearly inferior to eddy viscosity for turbulent jets (p. 28), a direct contrast worth keeping in mind before choosing a regularisation.
  - [oberleithner-2011-swirling-jet-vortex-breakdown-stability.md](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md): mean-flow stability with POD comparison; Oberleithner et al. (2014) and Rukes et al. (2016) are cited among eddy-viscosity stability studies (p. 2).
  - [brunton-2020-machine-learning-fluid-mechanics.md](brunton-2020-machine-learning-fluid-mechanics.md): the optimal μ_T fields are framed as field-inversion steps for data-augmented turbulence models (p. 3).
  - [nogueira-2019-large-scale-streaky-structures-jets.md](nogueira-2019-large-scale-streaky-structures-jets.md): the same M_j = 0.4 jet experiments match this LES (p. 4).
- **Authors and facility:** not Shock Lab group work. LES by Cascade Technologies, validated against PPRIME (Poitiers) experiments; RANS by the authors in Fluent (p. 4, 13, 28).
- **Follow-up candidates for `/add-paper`:**
  - Schmidt et al. 2018, *Spectral analysis of jet turbulence* (JFM 855): the baseline here.
  - Towne, Schmidt & Colonius 2018: SPOD–resolvent relationship (eq. 2.16).
  - Morra et al. 2019: eddy-viscosity resolvent in channels.
  - Pickering et al. 2019 (AIAA 2019-2454) and 2020b (AIAA 2020-0999): eddy viscosity and projection-based jet-noise models.
  - Karban et al. 2020: ambiguity in mean-flow-based linear analysis.
  - Yeh & Taira 2019: linear damping / finite-horizon resolvent.
