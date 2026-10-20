---
key: "zhu-2021-recursive-one-way-navier-stokes"
title: "Recursive one-way Navier–Stokes equations with PSE-like cost"
authors: ["Zhu, M.", "Towne, A."]
year: 2021
type: "preprint"
venue: "arXiv:2111.10040"
bib: {}
doi: ""
arxiv: "2111.10040"
pdf: "linear-models/Zhu-Towne_2021_Recursive-One-Way-Navier-Stokes-Equations-With-PSE-Like-Cost.pdf"
version: "preprint"
unverified: []
group: false
facility: ""
data: ["model-only"]
methods: ["OWNS", "PSE", "numerics"]
flow: ["round-jet", "subsonic", "wall-bounded", "supersonic"]
phenomena: ["KH-wavepackets", "Orr"]
params: {"M_j": "0.9 (jet)", "St": "0.35 (jet)", "M_∞": "4.5 (boundary layer)"}
topics: ["linear-models"]
related: ["towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2022-database-reduced-complexity-modeling", "pickering-2020-lift-up-kh-orr-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "rolandi-2025-biglobal-resolvent-naca0012", "morra-2021-colour-of-forcing-resolvent-channel", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "gudmundsson-2011-instability-wave-models-near-field-jets"]
cites: ["edgington-mitchell-2020-waves-in-screeching-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "OWNS-R spatial marching at PSE-like cost/memory but keeps all downstream modes (KH, Orr, acoustics); M 0.9 jet and M 4.5 boundary layer; no upstream modes"
---
# Recursive one-way Navier–Stokes equations with PSE-like cost

- **Authors:** M. Zhu, A. Towne (University of Michigan)
- **Source:** arXiv:2111.10040v1 [physics.flu-dyn] (preprint, 19 Nov 2021)
- **PDF:** `References/Paper_PDFs/linear-models/Zhu-Towne_2021_Recursive-One-Way-Navier-Stokes-Equations-With-PSE-Like-Cost.pdf` (36 pp.)
- **Tags:** one-way Navier–Stokes (OWNS), OWNS-R, parabolized stability equations (PSE), spatial marching, projection operator, linearized Navier–Stokes, resolvent analysis, turbulent jet wavepackets, Orr mechanism, jet acoustics, Mack mode, supersonic boundary layer, numerical method

## Summary
This is a methods paper with no experiments. It introduces OWNS-R, a new variant of the one-way Navier–Stokes equations. OWNS-R marches the linearized Navier–Stokes (LNS) equations downstream in a slowly varying flow. After each step, a projection operator removes the upstream-travelling ("leftgoing") modes that would otherwise make the march ill-posed (p. 1–3, 7–8). Earlier OWNS variants (OWNS-O and OWNS-P) need a large coupled system of recursion equations. In OWNS-R, the approximate projection is factorised so that its N recursions can be solved one after another, each at the size of the state vector (p. 10–12). As a result, CPU cost grows linearly with recursion order N and memory does not depend on N. The cost is close to PSE, but all downstream-travelling ("rightgoing") modes are kept, not just one (p. 12–13, Table 1). The approximate projector has the exact eigenvectors and approximate eigenvalues. This gives an a priori, eigenvalue-only error expression for each mode (p. 14–15). The paper demonstrates the method on three cases: a 2D acoustic dipole, an M = 0.9 turbulent jet and a Mach 4.5 flat-plate boundary layer (p. 17–30).

## Key findings
- **Why PSE falls short** (p. 2): PSE is stabilised by regularisation (implicit Euler with a minimum step size, added damping, or dropping ∂p/∂x). This damps or distorts every rightgoing wave except the one being tracked, usually the KH, TS or Mack mode. So PSE misses non-modal growth, acoustics and interactions between multiple instability mechanisms (refs [20, 24, 25]).
- **Background on OWNS** (p. 2–3):
  - OWNS-O comes from high-order non-reflecting outflow boundary conditions. It cannot take a forcing term.
  - OWNS-P is projection-based and can take forcing, for example nonlinear terms, actuation or resolvent forcing. It is about 3× slower than OWNS-O and needs at least 2× the memory.
  - Both are about an order of magnitude cheaper than global methods but 1–2 orders more expensive than PSE.
  - Their "recursions" cannot actually be solved recursively, because of asymmetric terminal conditions.
- **The OWNS-R projector** (p. 8, eq. 2.23–2.24): P^N = (I + cZ)⁻¹ with Z = ∏(M − iβ_j⁺I)(M − iβ_j⁻I)⁻¹. It shares the eigenvectors of M and of the exact projector P. Its eigenvalues are E(α) = 1/(1 + c F(α)) (eq. 2.29–2.33).
- **Recursion parameters** (p. 9–10): β_j⁺ is placed near rightgoing eigenvalues and β_j⁻ near leftgoing ones. Parameters already designed for OWNS-O/P carry over unchanged. Existing sets cover mixing layers, subsonic and supersonic jets, and subsonic and hypersonic boundary layers. Large c favours removing leftgoing modes and small c favours keeping rightgoing ones; c ≈ O(1) is recommended, and c = 1 is used throughout (p. 10, 17).
- **Sequential solution** (p. 10–12): the scalar polynomial ∏(α−β_j⁻) + c∏(α−β_j⁺) = h∏(α−γ_j) is factorised with MATLAB `roots`. Then N successive solves of size N_q × N_d give the projected state (eq. 2.39–2.42). Z and P^N are never formed. Forming Z directly is numerically ill-conditioned at large N (p. 10).
- **Cost scaling** (Table 1, p. 13):
  - CPU: OWNS-R ~ N^a 𝒩 N_x; OWNS-P ~ (2𝒩N)^a N_x; global ~ (N N_x)^a.
  - Memory: OWNS-R ~ N^b, the same as PSE.
  - The paper expects OWNS-R vs PSE CPU ≈ O(𝒩/N_it), where the PSE iteration count N_it is similar to 𝒩 (p. 13).
- **Error analysis** (p. 13–15):
  - The worst-case bound depends on the condition number of V (eq. 2.49).
  - The error for each mode is exact and depends only on its eigenvalue: |E(α_k) − 1| for rightgoing modes and |E(α_k)| for leftgoing modes (eq. 2.52). It does not depend on the eigenvectors or on non-normality. No equivalent result exists for OWNS-O or OWNS-P.
  - Each mode's error is fully decoupled from the others. This could allow unimportant rightgoing modes to be projected out on purpose (p. 31).
- **OWNS-P vs OWNS-R** (p. 15–17): OWNS-P has exact eigenvalues but approximate eigenvectors (eq. 3.3–3.4), while OWNS-R is the reverse. Both converge to the same P. Projecting the state after each unmodified LNS step (OWNS-R) is identical to projecting the equation (OWNS-P) for implicit Euler. For explicit Euler they differ only through P_{n+1}P_n ≈ P_{n+1} on the forcing, which is negligible in a slowly varying flow (eq. 3.6–3.11).
- **Dipole case** (p. 17–22):
  - The projector eigenvalues converge to 1 and 0 as N rises through 5, 7, 10 and 15. The march is unstable at N = 5 (Fig. 1).
  - Convergence is roughly exponential (Fig. 2).
  - Exact, OWNS-P and OWNS-R pressure fields look the same at N = 10 (Fig. 4).
  - The solution error falls exponentially, and O(10) recursion parameters are enough (Fig. 5, p. 19).
  - PSE and OWNS-O cannot be applied, because the case is driven by forcing.
- **M = 0.9 jet** (p. 20–26):
  - PSE captures only the KH wavepacket.
  - All three OWNS variants also capture the radiated acoustic beam at low angle to the axis and Orr waves. In the OWNS solutions, pressure at 15 < x/D < 20 is higher and persists past x/D = 20 (Fig. 7–8).
  - The KH wavepackets from PSE and OWNS differ slightly for 0 < x/D < 15 (p. 24).
  - OWNS-P and OWNS-R show extra weak, high-angle acoustic waves that OWNS-O does not. The cause is unresolved (p. 25).
  - Orr waves are weak here because only an inflow initial condition is applied. Volumetric forcing from turbulence excites them most efficiently (p. 24).
- **Jet cost** (Table 2, p. 26):
  - OWNS-R is about 7× faster than OWNS-O and 29× faster than OWNS-P in wall time.
  - Per step, OWNS-R is about 3× PSE, against about 21× (OWNS-O) and 92× (OWNS-P).
  - Memory is 18 MB, against 15 MB for PSE.
  - Measured scaling with N (Fig. 9, p. 26–27): OWNS-O a ≈ 1.5, b ≈ 1.4; OWNS-P a ≈ 1.4, b ≈ 1.2; OWNS-R a ≈ 1.0, with memory independent of N.
- **Mach 4.5 boundary layer** (p. 26–31):
  - PSE and OWNS both capture the Mack mode. Only OWNS captures the radiated acoustics and the resulting amplitude modulation at Y = 300 (Fig. 11–12).
  - Wall-pressure peak: DNS (Ma & Zhong 2003) x = 0.155 m, PSE 0.147 m, OWNS 0.145 m. The paper attributes the shift to differences between the similarity mean flow and the DNS mean flow, mainly momentum-thickness growth (p. 28).
  - OWNS still matches the growth at intermediate x better than PSE.
  - Cost: OWNS-R per step is about 2× PSE, with slightly less memory (Table 3, p. 29–31).
- **Outlook** (p. 31–32): OWNS-R could replace OWNS-P inside OWNS-based resolvent analysis (Towne et al. 2021; Rigas et al. 2021). Because it accepts forcing, it could also be the basis of a nonlinear OWNS that couples all rightgoing modes, unlike nonlinear PSE, which couples one mode per frequency.

## Setup / method
- **Governing equations** (p. 4–6):
  - Compressible NS with a Reynolds decomposition q = q̄ + q′. Nonlinear terms are moved into a forcing f, which can also hold exogenous inputs.
  - L = A ∂/∂x + B. Second x-derivatives of the viscous terms are neglected; extensive testing has shown them unimportant (p. 5).
  - The transverse directions are discretised with collocation. An optional transform to characteristic variables uses the eigenvectors of A. It is not needed for OWNS-R but is kept so the variants can be compared (p. 5).
  - A Laplace transform s = η − iω is applied, then η → 0 for the frequency domain. A singular A, which arises at sonic or zero streamwise velocity, i.e. in wall-bounded and supersonic flows, is handled in Appendix A (p. 6, 32).
- **Mode classification** (p. 6–7): modes are classed as rightgoing or leftgoing using the Briggs criterion, extended to non-parallel flows: Im α_k → ±∞ as η → +∞ (eq. 2.16–2.17). The march can also run upstream with I − P to approximate the leftgoing modes (p. 8).
- **Common numerics** (p. 17):
  - Laptop: i7-8750H, 32 GB RAM.
  - Recursion parameters follow the recipe of Towne & Colonius (2015), with c = 1.
  - Transverse discretisation: 4th-order central finite differences with SBP closure.
  - Far-field boundaries: super-grid damping layer truncated by Thompson characteristic BCs.
  - March: 2nd-order BDF for OWNS (unless noted). PSE uses implicit Euler.
- **Case parameters:**

  | Case | Physics / base flow | Transverse grid | March | Frequency | N | Excitation |
  |---|---|---|---|---|---|---|
  | Dipole (p. 17–19) | quiescent, inviscid, 2D | y ∈ [−5, 5], 201 pts + damping layer | x from −5 to 5, Δx = 0.05 | ω = 2π (λ = 1) | 5–15 (10 for Fig. 4) | dipole forcing at origin, zero inflow |
  | Turbulent jet (p. 20–21) | M_j = 0.9, Re ≈ 10⁶, T_j/T_∞ = 1; mean flow from LES of Brès et al. (2018); Re_T = 30 000 (eddy-viscosity surrogate, after Schmidt et al. 2018) | 200 radial pts to r/D = 10 + 80 in damping layer; one azimuthal mode | x/D from 0.5 to 25; 2nd-order DIRK, Δx = 0.1; PSE at min. stable step (≈4× larger) | St = 0.35 (near peak KH) | 20 (10–25 in Fig. 6) | local KH eigenmode at inlet, no volumetric forcing |
  | Supersonic BL (p. 26–28) | M_∞ = 4.5 adiabatic flat plate, T_∞ = 65.15 K, p_∞ = 728.44 Pa, Pr = 0.72, unit Re = 7.2×10⁶ m⁻¹; compressible Blasius via Howarth–Dorodnitsyn, zero pressure gradient; 2D (spanwise-constant) | 200 wall-normal pts to Y = 1200 (normalised by BL thickness at R = 400) | R = √Re_x from 400 to 1200 | F = 2.2×10⁻⁴ (following Ma & Zhong 2003) | 20 (10–25 in Fig. 10) | unstable Mack mode at R = 400 |

> The jet azimuthal mode is printed as "asymmetric" (p. 20). The cited references (axisymmetric superdirectivity) and the OWNS-O demo case suggest it is the axisymmetric m = 0 mode, but check p. 20. The St definition was garbled in extraction (presumably St = ωD/(2πU_j)). The boundary-layer Y = 1200 extent and the F definition were also garbled; check them on p. 27.

## Key equations
Notation: φ̂ is the (characteristic) state in the frequency domain, M is the spatial marching operator, α is its eigenvalue (the spatial wavenumber, with M = V(iα)V⁻¹), β_j^± are the recursion parameters and N is the recursion order.

- Spatial evolution form (eq. 2.12–2.13, p. 6): $\dfrac{d\hat\phi}{dx} = M\hat\phi + \hat g$, with $M = -\tilde A^{-1}(sI + \tilde B)$ and $\hat g = \tilde A^{-1}\hat f$.
- Exact projector (eq. 2.20, p. 7): $P = V\begin{bmatrix} I_{++} & 0\\ 0 & 0_{--}\end{bmatrix}V^{-1}$.
- OWNS-R approximate projector (eq. 2.23–2.24, p. 8): $P^N = (I + cZ)^{-1}$, with $Z = \prod_{j=1}^{N}(M - i\beta_j^+ I)(M - i\beta_j^- I)^{-1}$.
- Scalar transfer functions (eq. 2.32–2.33, p. 9): $\mathcal F(\alpha) = \prod_{j=1}^{N}\dfrac{\alpha - \beta_j^+}{\alpha - \beta_j^-}$ and $\mathcal E(\alpha) = \dfrac{1}{1 + c\,\mathcal F(\alpha)}$.
- Factorisation (eq. 2.39, p. 11): $\prod_j(\alpha - \beta_j^-) + c\prod_j(\alpha - \beta_j^+) = h\prod_j(\alpha - \gamma_j)$.
- Sequential recursion (eq. 2.42, p. 11): $\hat\phi^0 = \hat\phi/h$; then $(M - i\gamma_j I)\hat\phi^j = (M - i\beta_j^- I)\hat\phi^{j-1}$ for j = 1…N; finally $\hat\phi^N = P^N\hat\phi$ (eq. 2.43, p. 12).
- Error for each mode (eq. 2.52, p. 14): $|\mathcal E(\alpha_k) - 1|$ for rightgoing modes and $|\mathcal E(\alpha_k)|$ for leftgoing modes.
- Upper bound (eq. 2.49, p. 14): $\|P^N - P\|_2 \lesssim \|V\|_2\|V^{-1}\|_2\max(c\|F_{++}\|_2,\ c^{-1}\|F_{--}^{-1}\|_2)$.
- OWNS-R step (explicit Euler, eq. 3.9, p. 16): $\hat\phi_{n+1} = P_{n+1}\big[(I + \Delta x M_n)\hat\phi_n + \Delta x\,\hat g_n\big]$.
- Singular-A form (eq. A.1–A.5, p. 32): march $\tilde A\,d\hat\phi/dx = L\hat\phi + \hat f$ implicitly, with $L = -(sI + \tilde B)$, and use $Z = \prod_j (L - i\beta_j^-\tilde A)^{-1}(L - i\beta_j^+\tilde A)$.

> Equations were rebuilt from garbled extraction. In particular, check the signs and the ordering of the factors in eq. 2.24, 2.42 and A.5, and whether the error expression's leftgoing/rightgoing labels are as given. The paper's text on p. 14 states the exact eigenvalues the wrong way round (a typo). Check all of these against p. 8–14 and 32.

## Data tables

**Table 1 – cost scaling** (p. 13). 𝒩 = N_q × N_d (state size), N = recursion order, N_x = number of streamwise stations, N_it = number of PSE iterations. Typically a ≈ 1.5 and b ≈ 1.2.

| Method | CPU | Memory |
|---|---|---|
| Global | (𝒩N_x)^a | (𝒩N_x)^b |
| PSE | 𝒩^a N_it N_x | 𝒩^b |
| OWNS-O | (𝒩N)^a N_x | (𝒩N)^b |
| OWNS-P | (2𝒩N)^a N_x | (2𝒩N)^b |
| OWNS-R | 𝒩^a N N_x | 𝒩^b |

**Table 2 – jet (N = 20)** (p. 26)

| Method | Wall time (s) | Steps N_x | Time/step (s) | Memory (MB) |
|---|---|---|---|---|
| PSE | 5.4 | 63 | 0.086 | 15 |
| OWNS-O | 449 | 246 | 1.83 | 432 |
| OWNS-P | 1941 | 246 | 7.9 | 1278 |
| OWNS-R | 68 | 246 | 0.28 | 18 |

**Table 3 – Mach 4.5 boundary layer (N = 20)** (p. 31)

| Method | Wall time (s) | Steps N_x | Time/step (s) | Memory (MB) |
|---|---|---|---|---|
| PSE | 17.7 | 323 | 0.055 | 46 |
| OWNS-O | 1099 | 1201 | 0.92 | 458 |
| OWNS-P | 2541 | 1201 | 2.12 | 995 |
| OWNS-R | 154 | 1201 | 0.128 | 31 |

> Check: time/step × steps reproduces the wall times to within rounding. For the boundary layer, the text says OWNS-R is "10 and 20 times faster" than OWNS-O and OWNS-P (p. 29). The table gives about 7× and 16.5× (by wall time or per step). The memory ratios (about 15× and 32×) do match the text.

## Figures worth remembering
- **Fig. 1 (p. 19):** eigenvalues of P^N for N = 5, 7, 10 and 15 (dipole). They converge to 0 for leftgoing and 1 for rightgoing modes.
- **Fig. 2 (p. 20):** exponential convergence of E(α) for sample modes α = ±(1.5 + 6.1i) and ±26.8i.
- **Fig. 3 / 6 / 10 (p. 21, 23, 28):** the α-plane for each case. They show the eigenvalues of M, the β^± locations, contours of |E(α)|, and the eigenvalues of the projected P^N M.
  - Jet (Fig. 6, x/D = 1): free-stream acoustic branches along the imaginary axis, the KH mode at about (3, −1), an Orr branch starting near (2, 0), and core-trapped acoustic modes at about (−9, ±4), which are unimportant at this St (p. 22).
  - Boundary layer (Fig. 10): a horizontal free-stream acoustic branch (supersonic free stream), a vertical vorticity/entropy branch, the unstable Mack mode, and leftgoing discrete modes.
- **Fig. 4–5 (p. 22):** dipole pressure fields (exact, OWNS-P and OWNS-R), and the solution error against N.
- **Fig. 7–8 (p. 24–25):** jet pressure for PSE vs OWNS-O, OWNS-P and OWNS-R. Fig. 8 has line plots at r/D = 0.5 (lipline) and r/D = 5. PSE misses the acoustic beam and the Orr waves.
- **Fig. 9 (p. 27):** time per step and memory against N, with fitted power laws.
- **Fig. 11–12 (p. 29–30):** boundary-layer pressure field (PSE vs OWNS-R), and wall and Y = 300 amplitudes compared with the DNS.

## Notation
- **Rightgoing / leftgoing:** modes that carry energy downstream or upstream (Briggs criterion).
- **N:** recursion order. **β_j^±:** recursion parameters. **c:** weighting parameter. **γ_j:** roots of the factorised polynomial. **h:** leading coefficient.
- **𝒩 = N_q N_d:** size of the semi-discrete state. **N_x:** number of streamwise stations.
- **E, F:** diagonal eigenvalue matrices of P^N and Z. **ℰ(α), ℱ(α):** their scalar functions.
- **OWNS-O:** outflow-BC-based OWNS. **OWNS-P:** projection-based OWNS. **OWNS-R:** the recursive OWNS introduced here.
- **R = √Re_x:** local Reynolds number. **F:** non-dimensional frequency. **Y:** wall-normal coordinate.

## Relevance to this project
This is a pure modelling and numerics paper: there are no experiments and no data-driven decompositions. Its value to this project (resonance and feedback in jets; see CLAUDE.md) is on the reduced-order modelling side.
- **A cheaper linear model for jet wavepackets and their noise:**
  - OWNS-R gives an LNS response for a slowly varying jet at near-PSE cost. Unlike PSE, it keeps the radiated acoustics, the Orr waves and multiple instability families (p. 24–26).
  - The inputs are the same as for the global and resolvent work in related notes: a mean flow (from LES or from measurements) and an eddy-viscosity surrogate (Re_T). It could stand in for a global LNS or resolvent solve when comparing with SPOD modes from time-resolved schlieren, or with the POD screech mode from PIV.
  - In [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md), Orr and lift-up appear as resolvent mechanisms; here OWNS captures Orr waves that PSE cannot (p. 24).
  - See [morra-2021-colour-of-forcing-resolvent-channel.md](morra-2021-colour-of-forcing-resolvent-channel.md) on how the forcing statistics matter in resolvent models. OWNS-R accepts a volumetric forcing term (p. 3, 31), so it could be driven by SPOD-estimated forcing.
- **Limitation for feedback loops:** OWNS removes leftgoing modes by construction.
  - Screech and impinging-jet resonance close through upstream-travelling waves: the guided jet mode `k_t-` in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), and [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md). A single downstream OWNS march therefore cannot represent the closed loop.
  - Options are a separate upstream march with I − P (p. 8), or using OWNS for the downstream KH and `k_t+` leg only.
  - Global stability (as in Edgington-Mitchell et al. 2020) or local spatial stability ([nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md), [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md), [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md)) remain the tools that capture both directions.
  - Shock-containing mean flows are not slowly varying in x, which is the main assumption behind any spatial march (p. 17). The paper doesn't test such flows; this is an inference.
- **Mode bookkeeping that carries over to the data analysis:**
  - The α-plane pictures (Fig. 6) are a useful map of the wave families in a jet at one frequency: KH, Orr, free-stream acoustic, and core-trapped (Towne et al. 2017) modes.
  - The same families are what the wavenumber-filtering approach of Edgington-Mitchell et al. (2020) separates in PIV or schlieren (sign of k_x, phase speed relative to a∞).
  - The paper notes the trapped modes are unimportant at St = 0.35 (p. 22). They matter near resonance conditions instead.
- **No dependence on data type:** the method uses only a mean flow, so it needs neither time-resolved nor non-time-resolved data. A PIV mean field (non-time-resolved) is enough as the base flow, as for the global analysis in Edgington-Mitchell et al. (2020). Density would need to be reconstructed as described there. The paper has nothing on intermittency, mode switching or instantaneous frequency and amplitude, because it works at a single frequency in the frequency domain. It therefore doesn't feed the SPOD → reconstruction → HPOD pipeline directly.
- **Related:**
  - [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md) (same senior author) and [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md) (global resolvent; the expensive alternative that OWNS aims to replace).
  - The jet mean flow is from the Brès et al. (2018) LES; see also [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md) for that group's LES methodology.
  - Papers cited here that are worth adding with `/add-paper`: Towne & Colonius (2015, JCP; the original OWNS), Towne, Rigas & Colonius (2019; a critical assessment of PSE), Towne et al. (2021) and Rigas et al. (2021) (OWNS-based resolvent, parts 1–2), and Towne et al. (2017; acoustic resonance in the potential core).
