---
key: "rolandi-2025-biglobal-resolvent-naca0012"
title: "Biglobal resolvent analysis of separated flow over a NACA0012 airfoil"
authors: ["Rolandi, L. V.", "Smith, L.", "Amitay, M.", "Theofilis, V.", "Taira, K."]
year: 2025
type: "preprint"
venue: "arXiv:2501.04255"
bib: {"note": "arXiv:2501.04255v1 [physics.flu-dyn]"}
doi: "10.48550/arXiv.2501.04255"
arxiv: "2501.04255"
pdf: "linear-models/Rolandi-EtAl_2025_Biglobal-Resolvent-Analysis-Of-Separated-Flow-Over-A-NACA0012-Airfoil.pdf"
version: "preprint"
unverified: []
group: false
facility: "CharLES DNS and wall-resolved LES"
data: ["DNS", "LES"]
methods: ["resolvent", "LSA-global", "PSD"]
flow: ["airfoil", "wake", "shear-layer", "subsonic"]
phenomena: ["KH-wavepackets", "coherent-structures"]
params: {"Re": "1000–10000", "alpha": "9°, 14°", "M": "0.1"}
topics: ["linear-models"]
related: ["taira-2020-modal-analysis-applications-outlook", "edgington-mitchell-2020-waves-in-screeching-jets", "pickering-2020-lift-up-kh-orr-jets", "morra-2021-colour-of-forcing-resolvent-channel", "towne-2018-spod-relationship-dmd-resolvent"]
cites: ["mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "schmidt-2018-spectral-analysis-jet-turbulence", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Discounted biglobal resolvent of NACA0012 DNS/LES mean flows, Re 1000–10000: short horizons pick the shear layer (St ≈ 0.027√Re), long ones the wake mode; resolvent wavemaker"
---
# Biglobal resolvent analysis of separated flow over a NACA0012 airfoil

- **Authors:** L. V. Rolandi, L. Smith, M. Amitay, V. Theofilis, K. Taira (UCLA; Rensselaer Polytechnic Institute; Technion)
- **Source:** arXiv:2501.04255v1 [physics.flu-dyn] (preprint, 8 Jan 2025; DOI 10.48550/arXiv.2501.04255)
- **PDF:** `References/Paper_PDFs/linear-models/Rolandi-EtAl_2025_Biglobal-Resolvent-Analysis-Of-Separated-Flow-Over-A-NACA0012-Airfoil.pdf` (26 pp.)
- **Tags:** resolvent analysis, discounted resolvent, biglobal (mean-flow) linear analysis, eigenvalue analysis, separated flow, NACA0012 airfoil, shear-layer (KH) amplifier, wake / vortex shedding, resolvent wavemaker, spanwise wavenumber, Reynolds-number scaling, DNS, wall-resolved LES, Chu norm, CharLES

## Summary
This is a purely computational study. It runs biglobal resolvent analysis on the time- and spanwise-averaged flow over a NACA0012 airfoil at α = 14° for Re = 1000, 2500, 5000 and 10000 (M∞ = 0.1), using DNS/LES mean flows. Because some mean-flow operators have unstable eigenvalues, the authors use *discounted* resolvent analysis, whose discount γ sets a finite time horizon t_γ = 2π/γ. They find two amplification mechanisms. Over short horizons a quasi-two-dimensional **shear-layer** mechanism at high frequency dominates; over long horizons a lower-frequency **wake** mechanism, tied to the least-stable eigenvalue, takes over, and spanwise (3-D) effects appear only there. The switch from wake- to shear-layer-dominated response happens at St ≈ 1 for every Re, and response-mode wavelengths depend only on frequency (λ_x ≈ 1/St). A comparison at α = 9° shows that the wake frequency scales with the frontal height (St_α ≈ 0.2). The shear-layer frequency instead scales with the laminar boundary-layer thickness (St ≈ 0.027√Re), and the peak gain grows roughly as Re².

## Key findings
- **Mean-flow eigenvalues (β = 0)** (p. 9–10, Fig. 7):
  - Both growth rate and frequency of the leading eigenvalue rise with Re.
  - Only Re = 10000 is unstable (ω_r/2π = 0.0153, St = 0.78). Re = 1000, 2500 and 5000 are stable (St = 0.71, 0.73, 0.75) even though the nonlinear flow is unsteady. The authors point to the conditions for validity of mean-flow analysis (Beneddine et al. 2016).
  - Growth rate rises about linearly for Re ≥ 2500, so the mean-flow eigenvalue crosses the axis at Re ≈ 5900.
  - The eigenvector peak moves from the far wake (Re = 1000) to the near wake (Re = 10000), and shear-layer structure appears for Re > 1000.
- **Choosing the discount** (p. 10): γ/2π must exceed the largest positive ω_r/2π. At Re = 10000 this limits the horizon to t_γ < 65.3. The paper scans γ = 0.15–1.25, i.e. 5 ≤ t_γ ≤ 41.9, and calls t_γ = 5 "short" and 41.9 "long".
- **Two peaks in the gain** (p. 10–11, Fig. 8–9):
  - At Re = 1000 there is one peak, the wake mode.
  - For Re ≥ 2500 there are two: a high-frequency peak (St_S, shear-layer mode, separated shear layer from the leading edge) that dominates at short t_γ, and a lower-frequency peak (St_W, wake mode, coupling leading and trailing edges) that dominates at long t_γ.
  - The long-horizon peak always sits at the frequency of the eigenvalue with largest real part, because a smaller γ moves the Laplace integration line closer to that pole (p. 10).
  - Longer t_γ pushes both modes downstream and raises the gain, since perturbations have longer to grow (p. 10).
- **Spanwise wavenumber** (p. 10–13, Fig. 10–12):
  - At Re = 10000 the most unstable 3-D eigenvalue is at β = 4π, St = 0.36, with ω_r/2π = 0.057. This caps the horizon at t_γ < 17.54 for 3-D analysis (p. 10).
  - At t_γ = 5, σ₁ peaks at β = 0 for all Re. σ₂ and σ₃ peak at low St, at a β that grows with Re, reflecting finer 3-D structures (p. 13).
  - At t_γ = 15, the ordering of singular values switches at low frequency, near the lift-spectrum frequencies. At Re = 10000 a local maximum appears at St ≈ 0.36, β ≈ 4π, matching the 3-D eigenvalue (p. 13).
  - At high frequency the gain maximum stays at β ≈ 0 regardless of t_γ, consistent with quasi-2-D leading-edge roll-up (p. 13).
- **Re effects at fixed t_γ = 5, β = 0** (p. 14, Fig. 13):
  - Peak gain grows monotonically with Re, and the peak frequency moves up and becomes less sharp.
  - The Re = 1000 peak is wake dynamics influenced by the least-stable eigenvalue. The "bumps" at St ≈ 0.7 for Re ≥ 2500 are the short-time imprint of the leading eigenvalues. The main peaks at higher Re are shear-layer dynamics.
  - With rising Re the forcing and response modes lose support at the trailing edge and concentrate in the leading-edge shear layer. The forcing mode intensifies near the separation point and extends upstream (convective non-normality, weaker viscous effects), and the modal wavelength shrinks.
- **Forcing, response and wavemaker vs St** (p. 14–16, Fig. 14):
  - For St < 1 both modes show wake structure; for St > 1 they move to the shear layer, at both Re = 1000 and 10000.
  - Response modes look alike across Re, especially for St > 0.5, but forcing modes differ strongly. At Re = 10000 the forcing sits upstream of the leading edge; at Re = 1000 it sits in the shear layer (p. 16).
  - The wavemaker at Re = 1000 strengthens in the shear layer as St rises. At Re = 10000 it is a thin, elongated strip over the shear layer that weakens at higher St (p. 16).
- **Wavelength depends only on frequency** (p. 16, Fig. 15): peak-to-peak spacing Δx along a line through the leading edge gives a local wavelength. Its maximum λ_x follows 1/St at both Re, so the far-field phase speed is U∞ (St λ_x = 1). Closer to the airfoil the wavelength, and hence the phase speed, is lower, consistent with Boutilier & Yarusevych (2012).
- **Mean-flow eigenvalue vs DNS/LES shedding frequency at Re = 10000** (p. 17, Fig. 16): relative error |St_CL − St_ev|/St_ev is 5.5% at α = 9° and 13.4% at α = 14°. The authors attribute the larger error to stronger nonlinearity at higher α. At α = 9° three eigenvalues are unstable, and they line up with the lift-spectrum peaks.
- **α = 9° vs 14°** (p. 17–19, Fig. 17–18):
  - At Re = 1000 the modes agree up to St ≈ 0.75. Above that, α = 14° modes move to the shear layer while α = 9° modes stay in the wake. The authors link this to the α = 9° flow still being 2-D at Re = 1000, so the wake-to-shear-layer switch needs 3-D unsteady flow (p. 17; abstract p. 1).
  - At Re = 10000 they agree up to St ≈ 1. Above that, α = 9° keeps both wake and shear-layer structures. Wake frequency depends on wake width (Roshko 1954), which is thinner at lower α (p. 19).
  - α = 9° has higher gain with several bumps, because its larger ω_r and multiple unstable eigenvalues lie closer to the integration line (p. 19).
  - The wake peak is at St ≈ 1.3 (α = 9°) vs ≈ 0.7 (α = 14°). The shear-layer maximum is at St ≈ 2.7 for both (p. 19).
- **Scalings** (p. 19–20, Fig. 18–19):
  - Wake peaks collapse at St_α = St sin α ≈ 0.2, a frontal-height scaling (Fage & Johansen 1927).
  - Shear-layer peaks collapse with St/√Re: maximum gain at St ≈ 0.027√Re, with λ_x ≈ 37/√Re (eq. 13). Re = 1000 does not collapse because its peak is the wake mode (p. 20).
  - The value 0.027 agrees with: the acoustic-excitation range St/√Re ∈ [0.02, 0.03] (Zaman & McKinzie 1991); ≈ 0.03 for free shear layers (Ho & Huerre 1984); Yeh & Taira (2019) at Re = 23000 (4.8/√23000 ≈ 0.032); and Klewicki et al. (2024) experiments (0.021 at Re = 2×10⁴, 0.027 at Re = 4–8×10⁴) (p. 20).
  - σ₁/(C Re²) with C = 10⁻⁵ brings the peaks close to 1. The peak gain is therefore roughly quadratic in Re, as for plane Poiseuille, Couette and Blasius flows (p. 20).
- **Appendix A, how gain and mode location change with t_γ** (p. 21–22, Fig. 20–21):
  - Wake-mode gain grows more steeply with t_γ, while the shear-layer gain tends to a plateau. The t_γ at which the wake mode overtakes the shear-layer mode increases with Re.
  - For Re ≥ 2500 the shear-layer mode's peak location barely moves with t_γ. It agrees with the high-energy region of the shear-layer spectra in Fig. 6.
  - The wake mode starts in the shear layer at short t_γ and moves into the wake at longer t_γ. Its long-horizon streamwise position follows the recirculation length; at Re = 1000 its position is nearly constant and farthest downstream.
- **Appendix B, β effect on mode shapes** (p. 22–23, Fig. 22):
  - At St = 0.75 and t_γ = 5, raising β turns oblique wake structures into concentrated shear-layer structures, because smaller structures need stronger mean shear.
  - At t_γ = 15, Re = 10000 and the highest β, the mode moves into the recirculation region and trailing-edge shear layer.
  - At St = 2, t_γ = 15 and Re = 1000 the mode switches: shear-layer structures appear at higher β that are absent at β = 0.

## Setup / method
- **Geometry and conditions** (p. 4):

  | Parameter | Value |
  |---|---|
  | Airfoil | NACA0012, spanwise periodic |
  | α | 14° (main), 9° (comparison, §5) |
  | Re = U∞c/ν | 1000, 2500, 5000, 10000 |
  | M∞ | 0.1 (compressible solver) |
  | Span L_z | 1c, chosen because 3-D transition has λ_z ≈ c/3 (Gupta et al. 2023) |
  | Base-flow solver | DNS (Re = 1000, 2500); wall-resolved LES with the Vreman SGS model (Re = 5000, 10000) |

- **Unsteady simulations** (p. 4–5):
  - Compressible solver CharLES (Khalighi et al. 2011).
  - Domain x/c ∈ [−20, 25], y/c ∈ [−20, 20], z/c ∈ [0, 1], with the origin at the leading edge (Fig. 2).
  - Boundary conditions: no-slip adiabatic wall; uniform velocity, pressure and temperature at the inlet and far field; zero pressure gradient at the outlet; periodic in span.
  - Not stated: cell counts, time step, averaging window and sampling rate. The C_L/C_D traces in Fig. 5 cover roughly t_c ≈ 55–110 convective times.
- **Base flow** (p. 3, 5): time- and spanwise-averaged flow. It is interpolated onto a smaller 2-D resolvent grid, (x/c, y/c) ∈ [−14, 14] × [−4.5, 4.5], refined near the airfoil both upstream and downstream because forcing modes sit upstream (convective amplification) (p. 5). The resolvent-domain boundary conditions are not stated.
- **Flow physics of the base flows** (p. 5–8):
  - Steady → periodic Hopf bifurcation at Re ≈ 380 (Rolandi et al. 2022).
  - Periodic → 3-D via period doubling (Mode C) between Re = 750 and 1000. At Re = 1000, λ_z ≈ c/3 (p. 5, 7).
  - At higher Re the leading-edge shear layer rolls up into quasi-2-D KH rollers that shrink with Re and break down downstream (p. 7, Fig. 4c–d).
  - Recirculation: a single elongated bubble at Re = 1000. It shortens at 2500 and lengthens again at higher Re. A secondary suction-side bubble appears for Re ≥ 2500 and moves upstream and thins with Re. The separation point moves upstream with Re (p. 7, Fig. 4e).
- **Linear operator and resolvent** (p. 3–4):
  - State q = (ρ, u, T): 5 variables per cell. L is the Jacobian of the discretised compressible NS operator about the base flow, and f′ collects the nonlinear terms.
  - Fourier transform in t and z: β is the spanwise wavenumber, and only discrete β = 2πn are resolved by the L_z = c span.
  - Chu energy norm, applied through a similarity transform W H W⁻¹ (W is a volume-weighted matrix) (p. 4).
  - Discounted resolvent (Laplace transform) because some operators are unstable (p. 4).
  - The SVD uses a Krylov subspace projection with subspace dimension m = 24, computed in CharLES coupled to PETSc/SLEPc (p. 4).
  - The paper doesn't mention an eddy-viscosity model in the linear operator. It is a laminar/molecular-viscosity linearisation about a mean flow, with all nonlinearity treated as forcing.
- **Eigenvalue problem** (p. 9): L_β φ = ω̃ φ, solved first so that γ can be chosen above the largest growth rate, separately for β = 0 (Fig. 7) and β ∈ [0, 8π] (Fig. 10).
- **Grid convergence** (p. 5, Table 1, Fig. 3): Re = 10000 only. Three unsteady meshes (coarse, baseline, refined) and two resolvent meshes (baseline, refined). The resolvent check used β = 0, γ = 1.25 (t_γ ≈ 5). St* agrees within 5%. Baseline meshes were used throughout.
- **Data-analysis methods and what data they need:**
  - *Lift/drag time series and lift spectra* (p. 7, Fig. 5): time-resolved, from the simulations. Window, record length and spectral estimator are not stated.
  - *"Energy spectra" maps* (p. 8, Fig. 6): spectra vs St and y/c along vertical lines at x/c = 0.25, 0.5, 0.75 and 1 for y/c ∈ [0, 0.25]. Time-resolved. The quantity (presumably velocity-fluctuation energy) and estimator settings are not stated.
  - *Mean flow*: needs only converged statistics, not time resolution. It is the only input to the eigenvalue and resolvent analysis.
  - *Resolvent/eigen analysis*: no data needed beyond the mean flow. Parameters are ω (St), β, γ (t_γ) and the number of singular values (three shown).
  - *Wavelength tracking* (p. 16): peak-to-peak spacing of a response mode along a line through the leading edge. This is a post-processing step on any complex mode.
  - *Validation against data*: only peak frequencies (lift spectra vs eigenvalues and gain peaks; Fig. 6 high-energy region vs mode location). No SPOD/POD of the DNS/LES fields is compared with the resolvent modes.

## Key equations
- Nonlinear and linearised dynamics (eq. 1–2, p. 3): $\dfrac{d\mathbf q}{dt}=\mathcal N(\mathbf q)$, $\mathbf q=\mathbf q_b+\mathbf q'$, $\dfrac{d\mathbf q'}{dt}=\mathcal L\mathbf q'+\mathbf f'$, $\mathcal L\equiv\nabla_{\mathbf q}\mathcal N|_{\mathbf q_b}$.
- Fourier ansatz (eq. 3, p. 3): $\mathbf q'(x,y,z,t)=\iint \hat{\mathbf q}_{\omega,\beta}(x,y)\,e^{-i\omega t}e^{i\beta z}\,d\omega\,d\beta$, and likewise for $\mathbf f'$.
- Resolvent (eq. 4, p. 3): $\hat{\mathbf q}_{\omega,\beta}=(-i\omega\mathbf I-\mathcal L_\beta)^{-1}\hat{\mathbf f}_{\omega,\beta}=\mathbf H_{\omega,\beta}\hat{\mathbf f}_{\omega,\beta}$.
- Low-rank SVD (eq. 5) and optimal gain (eq. 6, p. 3): $\mathbf H_{\omega,\beta}\approx\mathbf U\boldsymbol\Sigma\mathbf V^*$, $\sigma^2=\max_{\hat{\mathbf f}}\dfrac{\langle\hat{\mathbf q},\hat{\mathbf q}\rangle_E}{\langle\hat{\mathbf f},\hat{\mathbf f}\rangle_E}$.
- Chu norm (eq. 7, p. 4): $E_{\rm Chu}=\tfrac12\int_V\left(\bar\rho|\mathbf u|^2+\dfrac{a^2\rho^2}{\gamma\bar\rho}+\dfrac{\bar\rho c_v T^2}{\bar T}\right)dV$. Overbars are base-flow quantities; here γ is the ratio of specific heats, not the discount. Weighting is applied as $\mathbf H\to W\mathbf H W^{-1}$.
- Discounted resolvent (eq. 8, p. 4): $\mathbf H_{\omega,\beta}=[(\gamma-i\omega)\mathbf I-\mathcal L_\beta]^{-1}$, which requires γ > ω_r (largest growth rate). Horizon $t_\gamma=2\pi/\gamma$; γ = 0 with no unstable poles recovers the asymptotic (infinite-time) resolvent. Fig. 1 (p. 2) writes the same operator as $[(i\omega+\gamma)I-\mathcal L(\beta)]^{-1}$, i.e. with the opposite time-Fourier sign convention.
- Eigenproblem (eq. 9, p. 9): $\mathcal L\phi=\tilde\omega\phi$, $\tilde\omega=\omega_r+i\omega_i$, where ω_r is the growth rate and ω_i/2π the frequency (Fig. 7 axes).
- Resolvent wavemaker (eq. 10, p. 14): $\hat{\mathbf w}=\hat{\mathbf f}\circ\hat{\mathbf q}$ (Hadamard product; Qadri & Schmid 2017; Skene et al. 2022). It marks where the response acts as its own forcing (self-sustained regions).
- Strouhal numbers: $St=cf/U_\infty=c\omega/(2\pi U_\infty)$ (p. 7, 10); $St_\alpha=\dfrac{\omega c\sin\alpha}{2\pi U_\infty}=St\sin\alpha$ (eq. 11, p. 19); $St_{Re}=\dfrac{\omega c\delta}{2\pi U_\infty}=\dfrac{St}{\sqrt{Re}}$ with $\delta\approx1/\sqrt{Re}$ (laminar BL thickness, Bloor 1964) (eq. 12, p. 19).
- Shear-layer scaling (eq. 13, p. 20): $St\approx0.027\sqrt{Re}$, $\lambda_x\approx37/\sqrt{Re}$. This is consistent with $St\,\lambda_x=1$ (p. 16): 1/0.027 ≈ 37.
- Mode-location tracker (eq. 14, p. 21): $\{\hat x,\hat y\}=\arg\max_{x,y}\|\hat{\mathbf q}_{\mathbf u}\|_2(x,y)$, with $\hat{\mathbf q}_{\mathbf u}=(\hat q_{u_x},\hat q_{u_y},\hat q_{u_z})$.
- Eigenvalue-vs-shedding error (p. 17): $|St_{C_L}-St_{ev}|/St_{ev}$.

> Equations were rebuilt from page images, since text extraction dropped all Greek and italic symbols. Arithmetic checks: t_γ = 2π/γ gives 41.9 for γ = 0.15 and 5.03 for γ = 1.25. 1/0.0153 = 65.4, 1/0.057 = 17.5 and 1/0.073 = 13.7 match the stated horizon limits. (0.78 − 0.675)/0.78 = 13.5% matches 13.4%. Eq. 12 treats δ as nondimensional (δ/c); check this reading on p. 19.

## Data tables

**Grid convergence at Re = 10000 (Table 1, p. 5)**

| Base-flow mesh | Coarse_BF | Baseline_BF | Refined_BF |
|---|---|---|---|
| C̄_D | 0.2277 | 0.2180 | 0.2197 |
| C̄_L | 0.6879 | 0.6430 | 0.6474 |
| Resolvent mesh | Baseline_R | Baseline_R | Refined_R |
| St* = argmax σ₁ (β = 0, γ = 1.25) | 2.81 | 2.72 | 2.83 |

**Shedding frequency vs leading β = 0 mean-flow eigenvalue, α = 14° (Fig. 5 p. 7; Fig. 7a p. 9)**

| Re | Lift-spectrum peak St | Eigenvalue St | Eigenvalue ω_r/2π | Flow state |
|---|---|---|---|---|
| 1000 | 0.724 | 0.71 | ≈ −0.015 (stable) | periodic + Mode C 3-D, λ_z ≈ c/3 |
| 2500 | 0.670 | 0.73 | ≈ −0.014 (stable) | stronger, harmonics |
| 5000 | 0.674 | 0.75 | ≈ −0.004 (stable) | broadband, slow modulation |
| 10000 | 0.675 | 0.78 | +0.0153 (unstable) | broadband, slow modulation |

> Stable ω_r values were read off Fig. 7a, so they are approximate. The text quotes the lift peaks rounded to 0.72 and 0.67 (p. 7).

**Discount ↔ horizon used (p. 10), with t_γ = 2π/γ**

| γ | 0.15 | 0.20 | 0.25 | 0.30 | 0.40 | 0.625 | 1.25 |
|---|---|---|---|---|---|---|---|
| t_γ | 41.9 | 31.4 | 25.1 | 20.9 | 15.7 | 10.1 | 5.0 |

**Horizon limits from the largest growth rate**

| Case | Max ω_r/2π | Limit t_γ < | Page |
|---|---|---|---|
| α = 14°, Re = 10⁴, β = 0 | 0.0153 | 65.3 | p. 10 |
| α = 14°, Re = 10⁴, β = 4π (St = 0.36) | 0.057 | 17.54 | p. 10 |
| α = 9°, Re = 10⁴, β = 0 | 0.073 | 13.7 | p. 17 |

**Peak σ₁ at t_γ = 5, β = 0, α = 14° (read from Fig. 13, p. 14; approximate)**

| Re | St of peak | Mechanism | σ₁ peak (≈) |
|---|---|---|---|
| 1000 | ≈ 0.75 | wake | ≈ 27 |
| 2500 | ≈ 1.3 | shear layer | ≈ 65 |
| 5000 | ≈ 2.0 | shear layer | ≈ 250 |
| 10000 | ≈ 2.7 (Table 1: 2.72) | shear layer | ≈ 1400 |

> Values read off a log plot, so treat them as rough. Cross-check against the scaling: 0.027√Re gives 1.35, 1.91 and 2.7 for Re = 2500, 5000 and 10000, and σ₁/(10⁻⁵Re²) ≈ 1.0, 1.0 and 1.4, consistent with Fig. 19b.

**Shear-layer frequency St/√Re comparisons (p. 20)**

| Source | St/√Re |
|---|---|
| This paper (Re = 2500–10000, α = 9°, 14°) | ≈ 0.027 |
| Zaman & McKinzie 1991 (acoustic control) | 0.02–0.03 |
| Ho & Huerre 1984 (free shear layer, θ-based) | ≈ 0.03 |
| Yeh & Taira 2019 (Re = 23000, α = 6°, 9°) | ≈ 0.032 |
| Klewicki et al. 2024 (exp., AR-3 wing with end walls) | 0.021 (Re = 2×10⁴), 0.027 (Re = 4–8×10⁴) |

## Figures worth remembering
- **Fig. 1 (p. 2):** schematic of the parameter space: σ vs ω, discount γ and spanwise wavenumber β.
- **Fig. 2 (p. 4):** large DNS/LES domain vs small resolvent domain.
- **Fig. 4 (p. 6):** Q-criterion fields for the four Re, showing Mode C streamwise vortices at Re = 1000 and leading-edge roll-up at 5000/10000. Fig. 4e shows the ū_x = 0 recirculation contours.
- **Fig. 5 (p. 7):** C_L/C_D traces and lift spectra. The spectra broaden and peak amplitude falls with Re.
- **Fig. 6 (p. 8):** shear-layer energy spectra at x/c = 0.25–1. Annotated: period doubling (Re = 1000), harmonics (2500) and a broadband "shear layer energy content" region.
- **Fig. 7 (p. 9):** leading β = 0 eigenvalues and eigenvectors.
- **Fig. 8–9 (p. 10–11):** σ₁(St) for t_γ from 5 to 41.9, and response modes at St_W and St_S for short and long horizons. This is the core "time horizon picks the mechanism" result.
- **Fig. 10 (p. 12):** 3-D eigenvalues vs β at Re = 10000.
- **Fig. 11–12 (p. 12–13):** σ₁, σ₂, σ₃ over the β–St plane at t_γ = 5 and 15.
- **Fig. 13 (p. 14):** σ₁(St) vs Re at t_γ = 5, with the optimal forcing and response at each peak.
- **Fig. 14 (p. 15) and Fig. 17 (p. 18):** response, forcing and wavemaker for St = 0.25–1.75 at Re = 1000 and 10000, for α = 14° and 9°.
- **Fig. 15 (p. 16):** local wavelength Δx(x) and λ_x vs 1/St.
- **Fig. 16 (p. 17):** lift spectra overlaid on the eigenvalue spectrum at Re = 10000, α = 9° and 14°.
- **Fig. 18–19 (p. 19–20):** gain vs St, St_α and St/√Re, and the Re² gain normalisation.
- **Fig. 20–21 (p. 22):** gain vs t_γ for the wake and shear-layer modes, and the location of each mode's maximum vs t_γ.
- **Fig. 22 (p. 23):** response modes for β = 0, 4π, 8π at St = 0.75 and 2.

## Notation
- q = (ρ, u, T): state. q_b: base (time- and span-averaged) flow. q′, f′: perturbation and nonlinear forcing. L, L_β: linearised NS operator (at wavenumber β).
- H_{ω,β}: resolvent. U, V: response and forcing modes. σ_j: gains (σ₁ the optimal). m: retained singular values and Krylov dimension (24).
- ω: angular frequency. St = cω/(2πU∞). β: spanwise wavenumber (β = 2π/λ_z; resolved β = 2πn for L_z = c). γ: discount parameter. t_γ = 2π/γ: finite time horizon (convective units c/U∞).
- ω̃ = ω_r + iω_i: eigenvalue (ω_r is the growth rate).
- St_W, St_S: frequencies of the wake and shear-layer gain peaks. St_α = St sin α. St_Re = St/√Re.
- ŵ: resolvent wavemaker. Δx: local peak spacing. λ_x: characteristic streamwise wavelength. x̂, ŷ: location of a mode's maximum.
- Notation clash: γ is both the discount parameter and (in the Chu norm only) the ratio of specific heats. a is the base-flow speed of sound.

## Relevance to this project
This is not a jet or Shock Lab paper. It is a purely computational airfoil study from UCLA/RPI/Technion with no experiments, and nothing here is a Shock Lab group facility. Its value for this project (see CLAUDE.md: resonance and feedback, plus the modelling side) is methodological.
- **Discounted resolvent for resonant (oscillator) flows:**
  - Screeching and impinging jets are oscillators, and their mean-flow operator can have marginal or unstable eigenvalues. `edgington-mitchell-2020-waves-in-screeching-jets.md` found the least-stable global mode of the PIV mean flow at the screech frequency (p. 11–12 there). `nogueira-2021-absolute-instability-shock-containing-jets.md` treats the absolute-instability side.
  - A standard resolvent on such an operator is dominated by, or undefined at, the pole. This paper's recipe avoids that (p. 9–10): compute the leading eigenvalues for each β (for jets, each azimuthal m) first, set γ above the largest growth rate, then scan t_γ.
  - Expect "bumps" in σ₁ at the eigenvalue frequencies when the integration line is close to a pole (p. 14, 19). A resolvent gain peak near a resonance tone may reflect pole proximity rather than forcing amplification.
- **Amplifier vs oscillator over time (my interpretation, by analogy):** the short-horizon shear-layer amplifier vs long-horizon wake oscillator split (p. 10, 21–22) maps loosely onto jet resonance. There the KH wavepacket is the convective amplifier and the closed feedback loop behaves as a global mode. Scanning t_γ on a screeching-jet mean flow could show at what horizon the resonant mode overtakes broadband KH amplification. This has not been tested in the paper.
- **Limits of mean-flow eigenvalues:**
  - The mean-flow eigenvalue misses the DNS/LES shedding frequency by 5.5–13.4%, growing with nonlinearity (p. 17). Compare this with the ≈1% agreement for weak-shock screech in edgington-mitchell-2020.
  - At Re ≤ 5000 the mean flow is linearly stable although the flow oscillates (p. 9).
  - Both are reminders to check the Beneddine et al. (2016) validity conditions before trusting mean-flow frequency predictions for strongly nonlinear resonance, such as strong shocks or impingement.
- **Resolvent wavemaker** ŵ = f̂ ∘ q̂ (eq. 10, p. 14) is a cheap by-product of any resolvent computation. It locates where the response overlaps its own optimal forcing. For jet feedback loops it could indicate receptive regions (nozzle lip, impingement zone, shock-cell tips). This is a suggestion, not something the paper tests on jets.
- **Local wavelength and phase speed from a mode** (p. 16): track peak-to-peak spacing along a line to get λ_x(x), then the phase speed St λ_x. This works on any complex mode:
  - SPOD modes from time-resolved schlieren.
  - Complex POD-pair modes (Φ = φ₁ + iφ₂) from non-time-resolved PIV, as in edgington-mitchell-2020.
  - It complements wavenumber filtering (k_x sign split) for separating KH (u_p ≈ 0.7U_j) from other waves.
- **What each method needs from the data:**
  - Resolvent and eigen-analysis need only a converged **mean flow**, so non-time-resolved PIV can supply it. For compressible jets density must be reconstructed, for example from constant stagnation density as in edgington-mitchell-2020.
  - This paper uses no eddy viscosity because Re is transitional (p. 3–4). Turbulent jets need one (`pickering-2020-lift-up-kh-orr-jets.md`).
  - The resolvent assumes nothing about the forcing statistics. How forcing colour changes the predicted response is covered in `morra-2021-colour-of-forcing-resolvent-channel.md`.
  - Validating response modes needs **time-resolved** data. Here only lift spectra and probe-line spectra are used (p. 7–8). The natural comparison, SPOD vs resolvent (Towne et al. 2018), is not done. For the user: SPOD/BMD of time-resolved schlieren or acoustics for frequency-resolved comparison, or POD pairs from PIV at the tone frequency.
- **Intermittency and changing amplitude:**
  - At Re ≥ 5000 the lift spectra broaden, the shedding peak weakens, and slow modulations appear in C_L and C_D (p. 7). Shear-layer spectra show subharmonics from vortex pairing (p. 8). The paper does not analyse this with any time-frequency method.
  - The SPOD → reconstruction → Hilbert POD pipeline (`raiola-2025-hilbert-pod.md`; `davey-2025-hpod-sphere-wake.md` for a bluff-body wake) could track the instantaneous shedding frequency and amplitude in such data. It could also test whether shear-layer bursts precede wake-mode growth, as the t_γ picture suggests.
  - "Mode switching" here means a swap in the ranking of singular values with t_γ or β (p. 13, 23). It is not temporal switching between resonance modes in data, so don't conflate the two.
- **Scaling ideas:** wake frequency scales with frontal height (St_α ≈ 0.2), while shear-layer frequency scales with a viscous thickness (St ≈ 0.027√Re, ≈ 0.03 on momentum thickness per Ho & Huerre) (p. 19–20). This is a reminder to non-dimensionalise shear-layer and global-mode frequencies by different length scales when comparing nozzle geometries.
- **Related notes:**
  - `edgington-mitchell-2020-waves-in-screeching-jets.md`: global stability on a measured mean flow.
  - `pickering-2020-lift-up-kh-orr-jets.md`: resolvent mechanisms in turbulent jets.
  - `morra-2021-colour-of-forcing-resolvent-channel.md`: forcing statistics.
  - `towne-2022-database-reduced-complexity-modeling.md`: open datasets for testing resolvent/SPOD comparisons.
  - `yeung-2024-adaptive-spod-broadband-tonal.md` and `von-saldern-2026-band-ensemble-spod.md`: SPOD variants for separating tonal from broadband content before comparing with resolvent modes.
- **Candidates for `/add-paper`:**
  - Rolandi, Ribeiro, Yeh & Taira 2024, "An invitation to resolvent analysis" (TCFD): the method reference for domain and grid choice.
  - Yeh & Taira 2019 (JFM): resolvent-based separation control.
  - Symon, Sipp & McKeon 2019 (JFM): oscillator vs amplifier resolvent **from an experimental (PIV) mean**, directly relevant to PIV-based modelling.
  - Beneddine et al. 2016: validity of mean-flow stability analysis.
  - Towne, Schmidt & Colonius 2018: SPOD–resolvent link.
  - Jovanović 2004 / Jovanović & Bamieh 2005: discounting.
