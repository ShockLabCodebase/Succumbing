# Implementation of semi-discrete, non-staggered central schemes in a colocated, polyhedral, finite volume framework, for high-speed viscous flows

- **Authors:** C. J. Greenshields, H. G. Weller, L. Gasparini, J. M. Reese (University of Strathclyde; OpenCFD Ltd; Fondmetal Technologies)
- **Source:** Int. J. Numer. Meth. Fluids 63(1):1–21 (2010), DOI 10.1002/fld.2069. This copy is the peer-reviewed accepted version from Edinburgh Research Explorer (preprint layout, not the journal typesetting). It is the reference paper for OpenFOAM's `rhoCentralFoam` solver.
- **PDF:** `//ad.monash.edu/home/User088/joellukw/Documents/Monash_Research_Fellow/Literature/Recent_Papers/GreenshieldsEtAlIJNMF2010.pdf` (35 pp.; network share, not in Git)
- **Page refs:** PDF page numbers. PDF p. 1 is the repository cover sheet, so the printed preprint page number = PDF page − 2. Figures are collected at the end (PDF p. 25–35).
- **Tags:** OpenFOAM, rhoCentralFoam, central schemes, Kurganov–Tadmor (KT), Kurganov–Noelle–Petrova (KNP), central-upwind, finite volume, colocated, polyhedral mesh, TVD flux limiter, van Leer, Minmod, V-scheme, shock capturing, compressible Navier–Stokes, operator splitting, underexpanded jet, Mach disc, forward-facing step, hypersonic double cone, validation

## Summary
The paper describes the numerics behind OpenFOAM's density-based compressible solver `rhoCentralFoam` (released with OpenFOAM 1.5; p. 10). Convective fluxes use the semi-discrete, non-staggered central scheme of Kurganov & Tadmor (KT) or the central-upwind variant of Kurganov, Noelle & Petrova (KNP). These need no Riemann solver, characteristic decomposition or Jacobian, and can be written as a face-by-face interpolation between owner and neighbour cells only. That makes them a natural fit for colocated finite volumes on arbitrary polyhedral meshes (p. 4, 6–7). Face values come from TVD-limited blending of upwind and linear interpolation. The paper adds a coordinate-invariant way to limit vector fields (the "V-scheme"), and it interpolates only ρ, ρ**u** and T, deriving all other face values from them, so that temperature stays bounded (p. 11–12, 14). The Navier–Stokes extension splits each step into an explicit inviscid predictor for the conserved variables and an implicit diffusion corrector for the primitive variables (p. 15–17). Four validation cases are run: the Sod shock tube, the Mach 3 forward-facing step, the Ladenburg underexpanded jet and the Mach 11.3 25°–55° double cone. They show that KNP with the van Leer limiter is clearly better than KT, roughly as accurate as a Roe solver with the same limiter, and that its accuracy holds on refined polyhedral meshes (p. 12–22).

## Key findings
- **KNP beats KT** (Sod shock tube, Figs. 2–3, p. 12–13, 26–27). With either limiter, KNP resolves both ends of the expansion fan better and gives a less diffuse contact region. The contact (x ≈ 2 m) is the only place where KNP + van Leer is questionable.
- **Limiter matters more than the flux scheme:** van Leer is markedly more accurate than Minmod. KT + van Leer beats KNP + Minmod (p. 13). **Recommendation: KNP + van Leer** (p. 13, 21).
- **Interpolate only ρ, û = ρ**u** and T** in the f± directions. Build every other face quantity from these, for example p_f± = ρ_f± R T_f± and Ê_f± = ρ_f±[c_v T_f± + |û_f±/ρ_f±|²/2]. Interpolating Ê directly can drive T (from Eq. 16) negative (p. 11–12, 21).
- **V-scheme for vectors** (p. 14). Limiting each component separately makes the result depend on the coordinate system. A single r based on |**u**| was unstable: T went below 0 K at t = 0.165 near the step corner, with velocity oscillations visible at t = 0.15 (Fig. 4a, p. 28). Basing r on the direction of steepest gradient at the face (Eq. 17) is stable and coordinate-invariant (Fig. 4b). It is used for all later runs.
- **Forward-facing step at t = 4** (Fig. 6, p. 15, 30):
  - KNP + van Leer captures the same shock positions and shock thickness as PPMLR (Woodward & Colella) and third-order RKDG (Cockburn & Shu).
  - The slip line is more diffuse than with PPMLR, even at cell size 1/160. RKDG resolves it best.
  - No entropy fix is used, so a Mach stem appears at the step surface. It shortens with mesh refinement and is shorter than RKDG's. PPMLR's entropy fix removes it.
- **Ladenburg underexpanded jet** (Fig. 7, p. 18, 31): the Mach-disc triple point is at (x, r) = (13.7, 1.64) mm, against (13.3, 1.7) mm from interferometry. That is within about 3%. The 0.4 mm axial offset is already present at the inlet (the ρ = 3.6 kg/m³ contour is displaced by 0.4 mm), so the authors attribute it to differences in inlet conditions.
- **25°–55° double cone, CUBRC Run 35** (Figs. 9–10, p. 20–21, 33–34):
  - Surface pressure on the 25° cone is well predicted. Separation is predicted slightly upstream of the measured pressure rise at about 60 mm.
  - The pressure spike of about 7 kPa at about 110 mm matches experiment. Downstream oscillations have the right frequency but too large an amplitude.
  - Heat flux on the 25° cone is over-predicted, by about as much as in other published methods. This is attributed to the freestream conditions, which ignore vibrational non-equilibrium (p. 19–20).
- **Separation length shows the numerical dissipation** (p. 19–21). More dissipation gives a shorter recirculation zone; the best schemes converge to 56.1 mm. KNP + van Leer gives 47.5 mm on 32k cells, against 49.1 mm for Roe + van Leer and 42.2 mm for Roe + Minmod. On the 78k-cell refined polyhedral mesh it gives 52.6 mm, against 54.4 mm for Roe + van Leer on 130k cells. Conclusion: KNP accuracy is "close to that of an equivalent Roe solver" (p. 21).
- **Polyhedral robustness** (p. 21–22): selective 2×2 splitting creates polyhedral cells with more than four faces in the circumferential plane, with appreciable non-orthogonality and skewness. KNP + van Leer does not degrade on this mesh.
- **Time accuracy is not the focus.** Time derivatives use first-order Euler, and the authors note that Runge–Kutta could be added (p. 6). The central schemes' CFL stability limit is quoted as 0.5 (p. 12).

## Setup / method
### Governing equations and gas model (p. 4–5)
- Compressible Navier–Stokes in conservative form (Eqs. 1–3) for ρ, ρ**u** and ρE, with E = e + |**u**|²/2.
- Newtonian stress with zero bulk viscosity, **T** = −2μ dev(**D**) (Eq. 4). Note the sign convention: **T** is positive in compression.
- Fourier heat flux **j** = −k∇T (Eq. 5).
- Calorically perfect gas: p = ρRT and e = c_v T. μ follows Sutherland's law (Eq. 22) and k comes from a fixed Prandtl number. There is **no turbulence model**: all viscous cases are laminar.

### Finite-volume framework (p. 5–10, Fig. 1)
- **Colocated** storage: all variables live at cell centroids. Each face has an owner P and a neighbour N. **S**_f is the face-area vector pointing out of P, **d** joins P to N, and **d**_fN joins the face centre to N.
- Cells are arbitrary polyhedra, and interpolation to a face uses **only** the owner and neighbour cells. This is the main reason for choosing KT/KNP: they reduce to interpolation, with no "reconstruct–evolve–project" step and no dual (staggered) mesh (p. 4, 6).
- The multidimensional extension is dimension-by-dimension, which here means face-by-face. It is not a genuinely multidimensional reconstruction (p. 7).
- **Convective terms** (Eq. 6–10, p. 7–8): each face flux is split into an outward (f+, along +**S**_f) and an inward (f−) contribution, weighted by α, plus a diffusive term with volumetric flux ω_f. The ω_f term is only strictly needed when the convective term is part of a substantive derivative, such as ∇·[**u**(ρ**u**)] (p. 7–8).
- **Gradient terms** (∇p; Eq. 12–13, p. 9) use the same α-weighted f± split, with no ω term.
- **Limiting** (Eq. 11, p. 8–9):
  - Each face value blends first-order upwind and second-order linear interpolation through a TVD limiter β(r): Ψ_f+ = (1 − g_f+)Ψ_P + g_f+ Ψ_N, with g_f+ = β(1 − w_f).
  - β = 0 gives upwind and β = 1 gives linear interpolation; 0 ≤ β ≤ 2, where β = 2 would be downwind.
  - Two symmetric TVD limiters are compared: Minmod, β = max[0, min(1, r)], and van Leer, β = (r + |r|)/(1 + r).
  - The linear weight is w_f = |**S**_f·**d**_fN| / |**S**_f·**d**|.
- **Laplacian terms** (Eq. 14–15, p. 9–10) use the standard OpenFOAM split into an implicit orthogonal part and an explicit non-orthogonal correction.
- **Boundary conditions** (p. 10):
  - Dirichlet: the value is substituted at the face for convection; for the Laplacian it is differenced against the adjacent cell.
  - Neumann: the gradient is substituted for the Laplacian; for convection the face value is extrapolated from the adjacent cell using that gradient.

### Inviscid solver (p. 11–12)
- Solves explicitly for ρ, û = ρ**u** and Ê = ρE. T is recovered from Eq. 16.
- Only ρ, û and T are interpolated in the f± directions; everything else is derived from them (see Key findings).

### Navier–Stokes solver: operator splitting (p. 15–17, Algorithm 1)
- A fully explicit viscous treatment needs only a diagonal solver, but its time-step limit becomes severe as diffusion dominates. The paper instead uses **sequential operator splitting**:
  1. An inviscid predictor for the conserved variable, (∂/∂t)_I.
  2. Update the primitive variable (**u** or T).
  3. An **implicit** diffusion corrector for the primitive variable, (∂/∂t)_V.
- **Momentum:**
  - Inviscid predictor for û (Eq. 18).
  - Update **u** = û/ρ.
  - Implicit diffusion correction for **u** (Eq. 19). The Laplacian ∇·(μ∇**u**) is implicit; the inter-component coupling **T**_exp = μ[(∇**u**)ᵀ − (2/3)tr(∇**u**)**I**] is explicit; boundary conditions on **u** are implicit.
- **Energy:**
  - Inviscid predictor for Ê (Eq. 20), including the viscous work ∇·(**T**·**u**).
  - Update T from Eq. 16.
  - Implicit diffusion correction for T (Eq. 21).
- μ and k are functions of T and are updated every step.
- **Algorithm 1 order** (p. 17):
  1. Limited (van Leer) f± interpolation of ρ, û and T.
  2. Compute **u**_f±, p_f±, φ_f± and c_f±.
  3. Evaluate the convective and ∇p terms with Eqs. 7–13.
  4. Update **T**_exp, μ and k.
  5. Solve for ρ (Eq. 1), then û (Eq. 18), then **u** (Eq. 19), then Ê (Eq. 20).
  6. Update T (Eq. 16), then solve for T (Eq. 21), then set p = ρRT.

### Validation cases

| Case | Physics | Conditions | Mesh | CFL | Compared quantity | Ref. page |
|---|---|---|---|---|---|---|
| Sod shock tube | 1D Euler, transient | ρ_L/ρ_R = 1.0/0.125, p_L/p_R = 10⁵/10⁴ Pa, R = 287 → T_L = 348.4 K, T_R = 278.7 K; −5 ≤ x ≤ 5 m, diaphragm at x = 0 | 100 cells (deliberately coarse) | 0.2 | ρ(x) at t = 7 ms vs analytical | p. 12 |
| Forward-facing step (Emery; Woodward & Colella) | 2D Euler, Mach 3, transient | Tunnel 1 × 3; step 0.2 high at x = 0.6; γ = 1.4, p = 1, T = 1, R = 1/γ (so c = 1) | Square cells 1/80 (240 × 80) and 1/160 | 0.2 | Density field at t = 4 vs PPMLR and RKDG P² | p. 13–15 |
| Ladenburg jet | Axisymmetric laminar NS, steady, underexpanded sonic jet | Converging nozzle, 10 mm exit, flat face in the exit plane; tank 60 lb/in² (4.14 bar). Inlet at the throat: p = 2.72 bar, **u** = 315.6 m/s, T = 247.1 K. Ambient: 1.01 bar, 297 K. Air: R = 287, γ = 1.4, Pr = 0.75, Sutherland A_s = 1.458×10⁻⁶ Pa s K^−0.5, T_s = 110.4 K | Domain 30 mm long × 10 mm high (2 × orifice radius); 240 × 80 cells; Mach-disc position mesh-converged | 0.5 | Density contours (0.2 kg/m³ spacing) and triple point vs interferogram | p. 17–18 |
| 25°–55° double cone, CUBRC LENS Run 35 (Holden & Wadhams) | Axisymmetric laminar NS, Mach 11.3, N₂ | T = 138.9 K, p = 22.74 Pa, u = 2713 m/s; Pr = 0.72, R = 296.8, γ = 1.4, Sutherland | 256 × 128 (32k), graded from 0.5 μm at the wall to 0.2 mm at the top boundary (mesh from Druguet et al.); plus a ~78k polyhedral refinement | 0.5 | Surface p and q along the cone; recirculation length vs Roe/Steger–Warming results | p. 18–21 |

- **Ladenburg derived numbers** (my calculation, not stated in the paper):
  - The inlet state is sonic: c* = 315.1 m/s, so M ≈ 1.00. T₀ ≈ 296.5 K, which matches the 297 K ambient.
  - The implied p₀ = 2.72/0.5283 ≈ 5.15 bar abs equals 4.14 bar + 1.01 bar, so the 60 lb/in² tank pressure is a **gauge** value.
  - So NPR ≈ 5.1 and M_j ≈ 1.72. The throat density, 3.84 kg/m³, matches the "ρ = 3.8 kg/m³" exit contour quoted (p. 18).
  - The mesh spacing is 0.125 mm, about 80 cells per D.
- **Run length:** the Ladenburg case took about 20 characteristic flow times (flow time = domain length / jet discharge velocity) to reach steady state, "approximately 2 ms" (p. 18). The double cone needed about 100 flow times, about 6.6 ms for the roughly 0.18 m body, and was run to 7 ms (p. 20).
- **Double-cone refinement** (p. 21, Fig. 11):
  - Cells were flagged where |∇ρ| > 0.2 kg/m⁴, then the flagged region was extended by 2 layers of neighbouring cells.
  - Flagged cells were split 2 × 2 in the streamwise and wall-normal directions, giving about 78k cells. A uniform 2 × 2 refinement would give 130k (40% more).

> The p. 18 sentence is ambiguous: "approximately 2 ms" fits 20 flow times in total. One flow time is about 0.06–0.1 ms for a 30 mm domain at 315–470 m/s. Confirm against p. 18.

## Key equations
Notation: Ψ is a generic transported field; φ_f = **S**_f·**u**_f is the volumetric face flux; the f+ (f−) values are interpolated outward from the owner P (inward from the neighbour N).

- Convective term, FV form (Eq. 6, p. 7): $\int_V \nabla\cdot[\mathbf u\Psi]\,dV \approx \sum_f \mathbf S_f\cdot\mathbf u_f\,\Psi_f = \sum_f \phi_f\Psi_f$
- **KT/KNP flux** (Eq. 7, p. 7):
$$\sum_f \phi_f\Psi_f = \sum_f\left[\alpha\,\phi_{f+}\Psi_{f+} + (1-\alpha)\,\phi_{f-}\Psi_{f-} + \omega_f\,(\Psi_{f-}-\Psi_{f+})\right]$$
- **Local propagation-speed fluxes** (Eq. 8, p. 8), both positive in their own direction:
$$\psi_{f+} = \max\left(c_{f+}|\mathbf S_f| + \phi_{f+},\; c_{f-}|\mathbf S_f| + \phi_{f-},\; 0\right),\qquad \psi_{f-} = \max\left(c_{f+}|\mathbf S_f| - \phi_{f+},\; c_{f-}|\mathbf S_f| - \phi_{f-},\; 0\right),$$
  with $c_{f\pm} = \sqrt{\gamma R T_{f\pm}}$.
- **Weighting** (Eq. 9, p. 8): $\alpha = \tfrac12$ (KT, central); $\alpha = \dfrac{\psi_{f+}}{\psi_{f+}+\psi_{f-}}$ (KNP, central-upwind).
- **Diffusive volumetric flux** (Eq. 10, p. 8): $\omega_f = \alpha\max(\psi_{f+},\psi_{f-})$ (KT); $\omega_f = \alpha(1-\alpha)(\psi_{f+}+\psi_{f-})$ (KNP).
- **Gradient ratio, scalar** (Eq. 11, p. 8): $r = 2\,\dfrac{\mathbf d\cdot(\nabla\Psi)_P}{(\nabla_{\mathbf d}\Psi)_f} - 1$, with $(\nabla_{\mathbf d}\Psi)_f = \Psi_N - \Psi_P$ and $(\nabla\Psi)_P$ the cell-centre gradient from Gauss and linear interpolation (p. 9).
- **Limited interpolation** (p. 9): $\Psi_{f+} = (1-g_{f+})\Psi_P + g_{f+}\Psi_N$, with $g_{f+} = \beta(r)\,(1-w_f)$. Minmod: $\beta = \max[0,\min(1,r)]$. van Leer: $\beta = (r+|r|)/(1+r)$.
- **Gradient term** (Eq. 13, p. 9): $\sum_f \mathbf S_f\Psi_f = \sum_f\left[\alpha\,\mathbf S_f\Psi_{f+} + (1-\alpha)\,\mathbf S_f\Psi_{f-}\right]$
- **Non-orthogonal Laplacian** (Eq. 15, p. 10): $\mathbf S_f\cdot(\nabla\Psi)_f = A(\Psi_N-\Psi_P) + \mathbf a\cdot(\nabla\Psi)_f$, with $A = |\mathbf S_f|^2/(\mathbf S_f\cdot\mathbf d)$ and $\mathbf a = \mathbf S_f - A\mathbf d$.
- **Temperature from total energy** (Eq. 16, p. 11): $T = \dfrac{1}{c_v}\left(\dfrac{\hat E}{\rho} - \dfrac{|\mathbf u|^2}{2}\right)$
- **V-scheme, vector Ψ** (Eq. 17, p. 14), as printed: $r = 2\,\dfrac{(\nabla\Psi)_f\cdot\mathbf d\cdot(\nabla\Psi)_P}{(\nabla_{\mathbf d}\Psi)_f\cdot(\nabla_{\mathbf d}\Psi)_f} - 1$
- **Split momentum** (Eq. 18–19, p. 16): $\left(\dfrac{\partial\hat{\mathbf u}}{\partial t}\right)_I + \nabla\cdot[\mathbf u\hat{\mathbf u}] + \nabla p = 0$, then $\left(\dfrac{\partial(\rho\mathbf u)}{\partial t}\right)_V - \nabla\cdot(\mu\nabla\mathbf u) - \nabla\cdot\mathbf T_{exp} = 0$
- **Split energy** (Eq. 20–21, p. 16–17): $\left(\dfrac{\partial\hat E}{\partial t}\right)_I + \nabla\cdot[\mathbf u(\hat E+p)] + \nabla\cdot(\mathbf T\cdot\mathbf u) = 0$, then $\left(\dfrac{\partial(\rho c_v T)}{\partial t}\right)_V - \nabla\cdot(k\nabla T) = 0$
- **Sutherland** (Eq. 22, p. 18): $\mu = A_s\,T^{1.5}/(T+T_s)$

> Text extraction garbled every equation. These were re-typed from rendered page images (p. 4–18), so they should be faithful, but check Eqs. 8–10 and 17 against the PDF before implementing. **Eq. 17 as printed is dimensionally inconsistent.** $(\nabla\Psi)_f$ for a vector Ψ is a tensor, so the numerator would not be a scalar. The first factor is almost certainly meant to be $(\nabla_{\mathbf d}\Psi)_f = \Psi_N-\Psi_P$, giving $r = 2\,(\nabla_{\mathbf d}\Psi)_f\cdot[\mathbf d\cdot(\nabla\Psi)_P]/|(\nabla_{\mathbf d}\Psi)_f|^2 - 1$. This is my reading, not the paper's wording.

## Data tables
**Double-cone recirculation-zone length** (p. 19–21). More numerical dissipation gives a shorter zone; the best schemes converge to **56.1 mm** with mesh refinement [40].

| Solver | Mesh | L_sep (mm) |
|---|---|---|
| KNP + van Leer (this paper) | 256 × 128 (32k) | 47.5 |
| Roe + van Leer [40] | coarse (presumably the same 256 × 128) | 49.1 |
| Roe + Minmod [40] | coarse (presumably the same 256 × 128) | 42.2 |
| KNP + van Leer (this paper) | ~78k, selectively refined polyhedral | 52.6 |
| Roe + van Leer [40] | 130k (uniform 2 × 2) | 54.4 |

**Ladenburg triple point** (p. 18): experiment (13.3, 1.7) mm; simulation (13.7, 1.64) mm. That is +3.0% in x and −3.5% in r.

## Figures worth remembering
- **Fig. 1 (p. 25):** polyhedral FV stencil showing P, N, face f, **S**_f, **d** and **d**_fN.
- **Fig. 2–3 (p. 26–27):** Sod density profiles, KT vs KNP, with Minmod (Fig. 2) and van Leer (Fig. 3). The contact at x ≈ 2 m is the weak spot.
- **Fig. 4 (p. 28):** velocity vectors at the step corner (t = 0.15). Component-wise/|**u**| limiting oscillates (a); the V-scheme is clean (b).
- **Fig. 5 (p. 29):** step transient from t = 0.5 to 4 at cell size 1/160 (40 ρ contours, 0–8). It shows bow-shock formation, reflection, Mach reflection and the slip line.
- **Fig. 6 (p. 30):** step density at t = 4 (30 contours, 0.2568–6.067). PPMLR (1/80), KNP + vL (1/80 and 1/160) and RKDG P² (1/160) side by side.
- **Fig. 7 (p. 31):** Ladenburg jet density contours, simulation (top) vs interferogram (bottom). The barrel shock, Mach disc and reflected shock are clear.
- **Fig. 8 (p. 32):** Mach-number bands on the double cone (78k cells). It shows the separation bubble at the cone junction, the subsonic region behind the bow shock, and the supersonic wall jet on the 55° cone.
- **Fig. 9–10 (p. 33–34):** surface pressure and heat flux, 32k vs 78k vs Run 35. The pressure peak is about 7 kPa and the heat-flux peak about 0.8 MW/m², both near x ≈ 110 mm. (On p. 21 the text says "heat flux and pressure … Figs. 9 and 10 respectively", which reverses the actual order.)
- **Fig. 11 (p. 35):** map of split cells (|∇ρ| > 0.2) and a close-up of the resulting polyhedral mesh.

## Notation
- P, N: owner and neighbour cell centroids. f: face. **S**_f: outward face-area vector. **d**: P→N vector. **d**_fN: face centre → N. w_f: linear interpolation weight.
- f+ / f−: interpolation directions outward (+**S**_f, from the P side) and inward (−**S**_f, from the N side).
- φ_f± = **S**_f·**u**_f±: volumetric flux. ψ_f±: volumetric fluxes of the local propagation speed. α: f± weighting. ω_f: diffusive volumetric flux. c_f±: face sound speeds.
- β(r): flux limiter. r: gradient ratio. g_f+: limited interpolation weight.
- û = ρ**u**, Ê = ρE: conserved variables. **T**: viscous stress (positive in compression). **T**_exp: explicitly treated part of the stress.
- (∂/∂t)_I, (∂/∂t)_V: inviscid-predictor and viscous-corrector time derivatives.
- KT: Kurganov & Tadmor 2000/2001 (J. Comput. Phys. 160). KNP: Kurganov, Noelle & Petrova 2001 (SIAM J. Sci. Comput. 23). PPMLR: piecewise parabolic method with Lagrangian remap. RKDG: Runge–Kutta discontinuous Galerkin.

## Relevance to this project
This project analyses experimental resonance and feedback data (schlieren, acoustics, PIV) from Shock Lab group facilities, with modelling and simulation used alongside (see CLAUDE.md). This paper is purely numerical; its comparison data are taken from the literature and are not its own experiments. It is the standard citation for `rhoCentralFoam`, a widely used open-source solver for underexpanded and impinging supersonic jets, so it is worth knowing when reading or commissioning simulations of the lab's flows.
- **What the solver is, and its limits for resonance problems:**
  - It is a second-order, TVD-limited, shock-capturing finite-volume solver: KNP fluxes, van Leer limiter, V-scheme for vectors (p. 13–14, 21).
  - Time integration in the paper is **first-order Euler** (p. 6).
  - All viscous validation is **laminar, axisymmetric and steady**. There is no turbulence/LES model and no acoustic or unsteady validation.
  - Screech, impingement tones and twin-jet coupling depend on shear-layer instability growth and acoustic propagation, both sensitive to numerical dissipation and time accuracy. The paper does not test that regime. Its own double-cone result shows the scheme is about as dissipative as a Roe + van Leer solver (p. 20–21).
  - Treat `rhoCentralFoam` resonance results with care unless the study shows higher-order time integration, adequate grid resolution of the shear layer, and comparison of spectra or tones with experiment.
  - Compare with the high-fidelity LES numerics recorded in [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md).
- **The Ladenburg case is an underexpanded-jet benchmark close to lab conditions:**
  - Sonic converging nozzle, D = 10 mm, NPR ≈ 5.1 (M_j ≈ 1.72, my calculation; p. 17–18). The nozzle has a **flat face in the exit plane**, effectively an infinitely thick lip (p. 17).
  - Lip geometry matters for screech and impingement closure ([edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), p. 6 of that paper), so remember this when comparing with thin-lip lab nozzles.
  - A laminar axisymmetric steady computation on an 80-cells-per-D mesh places the Mach-disc triple point within about 3% (p. 18). This is a useful sanity check for the **mean** shock-cell structure, which sets the shock-cell wavenumber k_s used in Tam & Tanna-type screech models ([edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)).
  - The domain covers only the first shock cell (30 mm = 3D). Downstream shock-cell decay depends on turbulent mixing, which this laminar model does not represent.
- **Links to the lab's diagnostics:**
  - Validation was against density contours from an interferogram (p. 18). The analogue for this group is comparing simulated ∇ρ (synthetic schlieren) with time-resolved schlieren, or ρ with BOS density.
  - The refinement criterion |∇ρ| > 0.2 kg/m⁴ (p. 21) is exactly the quantity schlieren images. A mesh refined this way puts resolution where schlieren shows structure (shocks, shear layers).
- **How the methods depend on the data:**
  - The paper uses no statistics or modal decomposition. Its comparisons are steady fields (density contours, surface p and q) or a single transient snapshot (Sod, step).
  - If the solver were run time-accurately in 3D, its output would be time-resolved. That would suit SPOD/BMD and the SPOD → reconstruction → Hilbert POD pipeline, and it could be decimated to mimic non-time-resolved PIV for POD-pair analysis.
  - Before doing this, check the temporal order of the scheme and that the CFL limit (0.5 quoted, p. 12) resolves the target frequencies. Under first-order Euler, damping and phase errors at the screech frequency would bias the instantaneous frequency and amplitude that HPOD extracts.
- **Implementation lessons that carry over to post-processing or in-house codes:**
  - Use symmetric limiters, preferring van Leer to the more dissipative Minmod (p. 13, 20).
  - Derive secondary face quantities from a minimal set (ρ, ρ**u**, T) to keep T bounded (p. 11–12).
  - Limit vector fields in a coordinate-invariant way with the V-scheme (p. 14).
  - Split explicit convection from implicit diffusion so the diffusive stability limit does not control the time step (p. 15–16, 22).
- **Facility attribution:** not Shock Lab group work. The comparison data come from Ladenburg et al. (1949) interferometry and the CUBRC LENS shock tunnel (Holden & Wadhams 2001).
