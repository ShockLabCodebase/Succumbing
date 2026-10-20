---
key: "witherden-2014-pyfr-flux-reconstruction-framework"
title: "PyFR: An open source framework for solving advection–diffusion type problems on streaming architectures using the flux reconstruction approach"
authors: ["Witherden, F. D.", "Farrington, A. M.", "Vincent, P. E."]
year: 2014
type: "article"
venue: "Comput. Phys. Commun. 185(11), 3028–3040"
bib: {"journal": "Computer Physics Communications", "volume": "185", "number": "11", "pages": "3028--3040"}
doi: "10.1016/j.cpc.2014.07.011"
arxiv: "1312.1638"
pdf: "Witherden-EtAl_2014_PyFR-An-Open-Source-Framework-For-Solving-Advection-Diffusion-Type-Problems.pdf"
version: "preprint"
unverified: ["CPC issue, pages and DOI from memory; not printed in the arXiv file"]
group: false
facility: ""
data: ["DNS", "Euler"]
methods: ["numerics"]
flow: ["generic", "wake"]
phenomena: []
params: {"order": "℘ = 1–4", "Re": "200 (Couette); 3900 (cylinder)"}
topics: ["simulation-methods"]
related: ["greenshields-2010-central-schemes-polyhedral-fv", "bres-2021-les-twin-rectangular-jets-plasma", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "towne-2022-database-reduced-complexity-modeling", "nogueira-2021-closure-mechanism-a1-a2-screech", "mancinelli-2021-complex-valued-resonance-model-screech"]
cites: []
summary: "PyFR v0.1.0: Python flux reconstruction on mixed curved unstructured grids, GEMM plus runtime CUDA/OpenMP kernels; Rusanov + LDG; design-order Couette; scales to 104 GPUs; PyFR LES solver reference"
---
# PyFR: An open source framework for solving advection–diffusion type problems on streaming architectures using the flux reconstruction approach

- **Authors:** F. D. Witherden, A. M. Farrington, P. E. Vincent (Department of Aeronautics, Imperial College London)
- **Source:** published in Computer Physics Communications 185 (2014). This file is the **arXiv version**, arXiv:1312.1638v2 [physics.comp-ph] (7 May 2014), so its layout and page numbers differ from the CPC article. *(CPC issue, pages and DOI not printed in this file; to my knowledge they are 185(11), 3028–3040, doi:10.1016/j.cpc.2014.07.011. Check before citing.)*
- **PDF:** `References/Paper_PDFs/Witherden-EtAl_2014_PyFR-An-Open-Source-Framework-For-Solving-Advection-Diffusion-Type-Problems.pdf` (33 pp.)
- **Page refs:** PDF page numbers, which equal the printed page numbers in this preprint.
- **Tags:** PyFR, flux reconstruction (FR), high-order methods, discontinuous Galerkin, spectral difference, unstructured mixed grids, curved elements, GPU/CUDA, OpenMP, MPI, Mako templating DSL, runtime code generation, GEMM, compressible Navier–Stokes, LDG viscous fluxes, Rusanov Riemann solver, super accuracy, Couette flow, cylinder Re 3900, scalability, solver reference

## Summary
The paper introduces PyFR v0.1.0, an open-source Python framework that solves advection–diffusion problems with Huynh's flux reconstruction (FR) approach on mixed, curved unstructured grids (p. 1–5). FR unifies nodal DG and (for linear fluxes) SD schemes, is compact in space, and, with explicit time stepping, is highly element-local, so it maps well onto bandwidth-limited "streaming" hardware such as GPUs (p. 3–5). The authors recast almost every FR operation as either a dense matrix multiply (handed to BLAS GEMM) or a point-wise kernel written once in a Mako-based domain-specific language and compiled at runtime for CUDA or C/OpenMP (p. 9–15, App. A). The release solves the compressible Euler and Navier–Stokes equations on triangles and quads in 2D and hexahedra in 3D (p. 10). It is validated by super-accuracy on an isentropic vortex, by design-order convergence for Couette flow on mixed and fully unstructured meshes, and qualitatively by an unsteady cylinder wake at Re 3900 (p. 18–25). Single-GPU performance and scaling to 104 NVIDIA M2090 GPUs are reported (p. 24–28).

## Key findings
- **Why FR on GPUs** (p. 4–5, Fig. 1): processor FLOPS have outgrown memory bandwidth (FLOPS-per-byte ≈ 0.2 two decades ago, > 4 now; K20X 5.24, Xeon Phi 5110P 3.16). Explicit FR is "archetypical" of stream processing because coupling between elements is limited to interface flux points (p. 5).
- **Super accuracy, Euler vortex** (p. 18–20, Fig. 8): at order ℘ = 3 the observed order of accuracy with DG, SD and HU correction functions rises over time, above the nominal ℘ + 1 = 4 (Fig. 8 axis spans about 3–7; values read off the plot). The early-time order is lower because the error is a constant projection error plus a growing spatial-operator error; the true order appears only once the latter dominates (p. 20). Results agree with Vincent et al. [10] (p. 20).
- **Couette flow, design order ℘ + 1 on all mesh types** (p. 21–24, Tables 2–4):
  - 2D mixed tri/quad meshes: orders 2.21 ± 0.12, 2.99 ± 0.32, 3.97 ± 0.05, 5.20 ± 0.38 for ℘ = 1–4 (Table 2, p. 22).
  - 3D extruded hexes: 2.06 ± 0.08, 2.87 ± 0.24, 3.99 ± 0.03 for ℘ = 1–3 (Table 3, p. 23).
  - 3D fully unstructured hexes: 1.93 ± 0.46, 3.19 ± 0.48, 4.16 ± 0.44 for ℘ = 1–3, with larger standard errors (Table 4, p. 24).
- **Unsteady 3D demonstration** (p. 24–25, Fig. 12–13): cylinder at Re 3900, M 0.2, 46,610 quadratically curved hexes, ℘ = 4, about 29 × 10⁶ degrees of freedom on four K20c GPUs. Only density isosurfaces are shown; **no quantitative comparison** with experiment or reference LES (Strouhal number, drag, wake profiles) is given.
- **Single-GPU performance** (M2090, double precision, ECC off; p. 24–27, Table 5):
  - GEMM takes 55.7 / 66.2 / 81.4% of wall time at ℘ = 2 / 3 / 4, reaching 205.3 / 368.1 / 305.4 GFLOP/s. At ℘ = 4 cuBLAS regresses slightly, but 305.4 GFLOP/s is still > 75% of the "realisable peak" of 407 GFLOP/s (p. 27).
  - Point-wise kernels are bandwidth bound: about 124–125.5 GiB/s for both direct (PD) and indirect (PI) access, against a realisable peak of 138.9 GiB/s; about 15% of that traffic is register spillage (p. 26).
  - The conclusion summarises this as 50–90% of realisable peak FLOP/s for compute-bound kernels and > 89% of realisable peak bandwidth for point-wise kernels (p. 28).
- **Memory footprint** (p. 15–16, 27): kernel scheduling with aliased buffers lets PyFR fit > 100,000 curved hexes at ℘ = 3 in 5 GiB. The scaling mesh of 114,688 hexes at ℘ = 3 needs 4720 MiB (p. 27).
- **Scalability** on the Emerald cluster (8 × M2090 nodes, QDR InfiniBand; p. 27–28):
  - Weak scaling: runtime 1.00 → 1.01 from 1 to 104 GPUs (Table 6); the 104-GPU case has 3.8 × 10⁹ DOF and a 485 GiB working set.
  - Strong scaling: speed-up 2.03, 3.96, 7.48, 14.07, 26.18 on 2–32 GPUs (Table 7). Near perfect up to 8 GPUs; at 32 GPUs each is loaded to < 3%, so the drop is expected (p. 28).
- **Runtime code generation** with architecture-specific compiler flags can give "up to a fourfold" speed-up over defaults (p. 11).

## Setup / method

### Flux reconstruction as implemented (§2, p. 5–9)
1. Rewrite ∂u/∂t + ∇·f(u, ∇u) = 0 as a first-order system with auxiliary gradient q (eq. 2).
2. Map each element to a standard element; work with transformed flux and gradients but keep the physical solution (eq. 4–5).
3. Solution points carry a nodal basis ℓ built from a generalised Vandermonde matrix; flux points sit on element faces and must coincide in physical space with those of the neighbour (p. 7, Fig. 2).
4. Interpolate the solution to flux points (eq. 6); form a **common solution** 𝔆 at each flux-point pair (eq. 7), visited once each.
5. Correct the gradient with vector correction functions g whose normal component is δ at its own flux point (eq. 8–9); transform to physical gradients (eq. 10–11).
6. Evaluate the transformed flux at solution points (eq. 12), its normal component at flux points (eq. 13), and the **common normal flux** 𝔉 from a Riemann solver (eq. 15–17).
7. Correct the flux divergence the same way (eq. 18), giving a semi-discrete ODE system (eq. 19) advanced by an explicit RK scheme.

### Implementation (§3, p. 9–16; App. A, p. 29–30)
- **Seven constant operator matrices** M⁰–M⁶ per element type (App. A), built once at start-up with SymPy at arbitrary precision on the host CPU (p. 10).
- **State matrices** stored in structure-of-arrays (SoA) packing on all platforms (p. 10).
- **GEMM for all matrix work**: operator matrices are "small and square" (10–100 rows), state matrices "short and fat" (10–100 rows × 10⁴–10⁵ columns), which is not ideal for GEMM; bespoke kernels are left as future work (p. 11).
- **Point-wise kernels** in a Mako-based DSL, generated at runtime as CUDA (via PyCUDA) or C/OpenMP; one source for single and double precision via `fpdtype_t` (p. 11–14, Fig. 3–5).
- **MPI** through mpi4py with persistent, non-blocking point-to-point requests; data exchanged between ranks is backend-independent, so heterogeneous CPU+GPU clusters are possible (p. 12).
- **Scheduling** (Fig. 6, p. 15): the common solution and common flux kernels are split into rank-internal (`int`) and MPI parts so ghost-state exchange overlaps with local work. Buffers are aliased to cut memory (p. 12–16).

### Release features (Table 1, p. 10; program description, p. 2)

| Item | v0.1.0 |
|---|---|
| Dimensions / elements | 2D tris and quads; 3D hexahedra only |
| Spatial order | arbitrary |
| Time steppers | Euler, RK4, DOPRI5 |
| Precision | single, double |
| Platforms | CPUs (C/OpenMP), NVIDIA GPUs (CUDA) |
| Systems | Euler, compressible Navier–Stokes |
| Riemann solver | Rusanov only (App. B) |
| Boundary conditions | supersonic inflow, subsonic outflow, no-slip isothermal wall (App. C) |
| Dependencies | Python 2.7, numpy, PyCUDA, mpi4py, SymPy, Mako |
| Licence | New-style (3-clause) BSD |

There is **no shock capturing, no subgrid-scale model, no anti-aliasing and no non-reflecting or absorbing boundary condition** in this release (none are described anywhere in the paper).

### Validation cases

| Case | Domain / mesh | Key parameters | Numerics | Page |
|---|---|---|---|---|
| Isentropic Euler vortex | [−20, 20]², structured quads, h = 1/3, 2/7, 1/4, 2/9; periodic in x, fixed far-field in y | S = 13.5, M = 0.4, R = 1.5; error over [−2, 2]² box | ℘ = 3; DG, SD, HU correction; Gauss–Legendre points; Rusanov; RK4, Δt = 0.00125, t = 0–1800 | 18–20 |
| 2D Couette | [−1, 1] × [0, 1], 4 mixed tri/quad meshes (Fig. 10) | γ 1.4, Pr 0.72, μ 0.417, c_p 1005, H 1 m, T_w 300 K, p_c 10⁵ Pa, v_w 69.445 m/s → M 0.2, Re 200 | ℘ = 1–4; DG correction; LDG β = 1/2, τ = 0.1; Rusanov; Gauss–Legendre (quads), Williams–Shunn solution + Gauss–Legendre flux points (tris); double precision | 20–22 |
| 3D Couette, extruded | [−1, 1] × [0, 1]², 78 / 195 / 405 hexes (3-layer extrusion) | as above | as above, ℘ = 1–3 | 21–23 |
| 3D Couette, unstructured | [0, 1]³, 96 / 536 / 1004 hexes (Fig. 11) | as above | as above, ℘ = 1–3 | 23–24 |
| Cylinder wake | radius 1/2 in [−18, 30] × [−10, 10] × [0, 3.2]; 4661 curved quads × extrusion = 46,610 hexes, 4 partitions | Re 3900, M 0.2, ρ = 1, v = x̂, p = 1/γM² | ℘ = 4; DG correction; LDG β = 1/2, τ = 0.1; inflow (C.2) on y = ±10 and x = −18, outflow (C.3) at x = 30, periodic z, isothermal wall | 24–25 |
| GPU benchmark | fully periodic cuboid, 50,176 hexes | NS, double precision | ℘ = 2, 3, 4, β = 1/2 | 26 |
| Scaling | [−16, 16] × [−16, 16] × [0, 1.75], 114,688 structured hexes, periodic; weak: y-extent × N | NS | ℘ = 3 | 27 |

- Convergence criterion for Couette: σ(t)/σ(t + 0.1) ≤ 1.01, with σ the L² energy error sampled every 0.1 time units (p. 21).
- Couette mesh spacing: h ~ N_E^(−1/2) for 2D and extruded meshes, N_E^(−1/3) for unstructured hexes (Tables 2–4).
- The cylinder case uses the "supersonic inflow" condition of App. C.2 (all variables fixed) at a subsonic M 0.2 (p. 24, 31). No sponge, filter or SGS model is mentioned.
- The cylinder number of time steps, averaging time and any statistics are not given.

## Key equations
Notation follows the paper: e element type, n element number, α field variable, ρ/σ solution/flux point indices, ℘ polynomial order. Retyped from rendered page images.

- **First-order form** (eq. 2a–b, p. 6):
  $$\partial_t u_\alpha+\nabla\cdot\mathbf f_\alpha(u,\mathbf q)=0,\qquad \mathbf q_\alpha-\nabla u_\alpha=0$$
- **Transformed quantities** (eq. 4, p. 6): $\tilde u = J u$, $\tilde{\mathbf f}=J\,\mathbf J^{-1}\mathbf f$, $\tilde{\mathbf q}=\mathbf J^T\mathbf q$, with $\mathbf J=\partial\mathcal M/\partial\tilde{\mathbf x}$ and $J=\det\mathbf J$.
- **Correction-function constraint** (eq. 8, p. 8): $\hat{\tilde{\mathbf n}}^{(f)}_{e\sigma}\cdot\mathbf g^{(f)}_{e\rho}(\tilde{\mathbf x}^{(f)}_{e\sigma})=\delta_{\rho\sigma}$, with $\tilde\nabla\cdot\mathbf g$ in the solution polynomial space.
- **Corrected gradient** (eq. 9, p. 8):
  $$\tilde{\mathbf q}^{(u)}_{e\sigma n\alpha}=\Big[\hat{\tilde{\mathbf n}}^{(f)}_{e\rho}\,\tilde\nabla\cdot\mathbf g^{(f)}_{e\rho}(\tilde{\mathbf x})\{\mathfrak C_\alpha u^{(f)}_{e\rho n\alpha}-u^{(f)}_{e\rho n\alpha}\}+u^{(u)}_{e\nu n\alpha}\tilde\nabla\ell^{(u)}_{e\nu}(\tilde{\mathbf x})\Big]_{\tilde{\mathbf x}=\tilde{\mathbf x}^{(u)}_{e\sigma}}$$
- **Corrected flux divergence and semi-discrete system** (eq. 18–19, p. 9):
  $$(\tilde\nabla\cdot\tilde{\mathbf f})^{(u)}_{e\rho n\alpha}=\Big[\tilde\nabla\cdot\mathbf g^{(f)}_{e\sigma}(\tilde{\mathbf x})\{\mathfrak F_\alpha\tilde f^{(f_\perp)}_{e\sigma n\alpha}-\tilde f^{(f_\perp)}_{e\sigma n\alpha}\}+\tilde{\mathbf f}^{(u)}_{e\nu n\alpha}\cdot\tilde\nabla\ell^{(u)}_{e\nu}(\tilde{\mathbf x})\Big]_{\tilde{\mathbf x}=\tilde{\mathbf x}^{(u)}_{e\rho}},\qquad \frac{\partial u^{(u)}_{e\rho n\alpha}}{\partial t}=-J^{-1(u)}_{e\rho n}(\tilde\nabla\cdot\tilde{\mathbf f})^{(u)}_{e\rho n\alpha}$$
- **Navier–Stokes viscous flux** (eq. 22–24, p. 17): $\mathbf f=\mathbf f^{(\mathrm{inv})}-\mathbf f^{(\mathrm{vis})}$, with $\mathcal T_{ij}=\mu(\partial_iv_j+\partial_jv_i)-\tfrac23\mu\delta_{ij}\nabla\cdot\mathbf v$, heat-flux coefficient $\Delta=\mu C_p/P_r$, and $T=\frac{1}{C_v}\frac{1}{\gamma-1}\frac{p}{\rho}$. Constant μ (no Sutherland law in this release).
- **LDG interface treatment** (eq. 25–27, p. 17):
  $$\mathfrak C(u_L,u_R)=(\tfrac12-\beta)u_L+(\tfrac12+\beta)u_R,\qquad \mathfrak F^{(\mathrm{vis})}=\hat{\mathbf n}_L\cdot\{(\tfrac12+\beta)\mathbf f^{(\mathrm{vis})}_L+(\tfrac12-\beta)\mathbf f^{(\mathrm{vis})}_R\}+\tau(u_L-u_R)$$
  If 𝔆 is upwinded, 𝔉^(vis) is downwinded. Usually β = ±1/2 (compact stencil) and 0 ≤ τ ≤ 1 (p. 17).
- **Rusanov flux** (eq. 45–46, p. 30):
  $$\mathfrak F^{(\mathrm{inv})}=\frac{\hat{\mathbf n}_L}{2}\cdot\{\mathbf f^{(\mathrm{inv})}_L+\mathbf f^{(\mathrm{inv})}_R\}+\frac s2(u_L-u_R),\qquad s=\sqrt{\frac{\gamma(p_L+p_R)}{\rho_L+\rho_R}}+\frac12\left|\hat{\mathbf n}_L\cdot(\mathbf v_L+\mathbf v_R)\right|$$
- **Isentropic vortex** (eq. 28–30, p. 18), f = (1 − x² − y²)/2R²:
  $$\rho=\Big\{1-\frac{S^2M^2(\gamma-1)\exp 2f}{8\pi^2}\Big\}^{\frac1{\gamma-1}},\quad \mathbf v=\frac{Sy\exp f}{2\pi R}\hat{\mathbf x}+\Big\{1-\frac{Sx\exp f}{2\pi R}\Big\}\hat{\mathbf y},\quad p=\frac{\rho^\gamma}{\gamma M^2}$$
- **Couette density** (eq. 34, p. 20), ζ = y/H: $\rho(\zeta)=\frac{\gamma}{\gamma-1}\frac{2p_c}{2C_pT_w+P_rv_w^2\zeta(1-\zeta)}$, $\mathbf v=v_w\zeta\hat{\mathbf x}$, p = p_c. *(Reconstructed from garbled text; the ζ dependence of v and the exact form of ρ need checking against p. 20.)*
- **Boundary ghost states** (App. C, eq. 47–53, p. 31–32):
  - Supersonic inflow: ghost state fixed to free-stream (ρ_f, ρ_f v_f, p_f/(γ−1) + ½ρ_f|v_f|²); ghost gradient 0.
  - Subsonic outflow: keep interior ρ_L, v_L, impose p_f; ghost gradient 0.
  - Isothermal no-slip wall: inviscid ghost velocity 2v_w − v_L, LDG ghost velocity v_w, energy from C_pT_w; ghost gradient = interior gradient.
- **Matrix form** (eq. 40–44, p. 29–30): every GEMM is C ← c₁AB + c₂C; e.g. $\mathbf U^{(f)}_e=\mathbf M^0_e\mathbf U^{(u)}_e$ and $\tilde{\mathbf Q}^{(u)}_e=\mathbf M^6_e\mathbf C^{(f)}_e+(\mathbf M^4_e-\mathbf M^6_e\mathbf M^0_e)\mathbf U^{(u)}_e$.

> pdftotext garbled every equation; the forms above were retyped from rendered images of p. 8, 9, 17, 18, 30–32. The Couette solution (eq. 34–35, p. 20) and the matrix definitions (App. A) were not re-checked against images. Verify before reuse.

## Data tables
**Couette L² energy error σ(t_∞) / J m⁻³** (Tables 2–4, p. 22–24; read from rendered pages):

2D mixed meshes (Table 2):

| Tris | Quads | ℘ = 1 | ℘ = 2 | ℘ = 3 | ℘ = 4 |
|---|---|---|---|---|---|
| 2 | 8 | 1.26 × 10² | 5.77 × 10⁻¹ | 5.54 × 10⁻³ | 6.62 × 10⁻⁵ |
| 6 | 22 | 3.56 × 10¹ | 1.40 × 10⁻¹ | 6.72 × 10⁻⁴ | 3.91 × 10⁻⁶ |
| 10 | 37 | 2.08 × 10¹ | 4.35 × 10⁻² | 2.54 × 10⁻⁴ | 8.16 × 10⁻⁷ |
| 16 | 56 | 1.46 × 10¹ | 3.52 × 10⁻² | 1.09 × 10⁻⁴ | 4.62 × 10⁻⁷ |
| | Order | 2.21 ± 0.12 | 2.99 ± 0.32 | 3.97 ± 0.05 | 5.20 ± 0.38 |

3D hexes (Tables 3–4):

| Mesh | Hexes | ℘ = 1 | ℘ = 2 | ℘ = 3 |
|---|---|---|---|---|
| extruded | 78 | 3.35 × 10¹ | 5.91 × 10⁻² | 7.28 × 10⁻⁴ |
| extruded | 195 | 1.23 × 10¹ | 1.87 × 10⁻² | 1.15 × 10⁻⁴ |
| extruded | 405 | 6.15 × 10⁰ | 5.49 × 10⁻³ | 2.72 × 10⁻⁵ |
| extruded | Order | 2.06 ± 0.08 | 2.87 ± 0.24 | 3.99 ± 0.03 |
| unstructured | 96 | 1.91 × 10¹ | 4.32 × 10⁻² | 5.83 × 10⁻⁴ |
| unstructured | 536 | 8.20 × 10⁰ | 9.11 × 10⁻³ | 6.89 × 10⁻⁵ |
| unstructured | 1004 | 3.82 × 10⁰ | 3.22 × 10⁻³ | 2.04 × 10⁻⁵ |
| unstructured | Order | 1.93 ± 0.46 | 3.19 ± 0.48 | 4.16 ± 0.44 |

**Single M2090 performance** (Table 5, p. 26):

| | ℘ = 2 | ℘ = 3 | ℘ = 4 |
|---|---|---|---|
| Wall time, DGEMM / PD / PI (%) | 55.7 / 24.9 / 19.4 | 66.2 / 21.5 / 12.3 | 81.4 / 12.8 / 5.8 |
| Bandwidth, PD / PI (GiB/s) | 125.5 / 124.8 | 125.0 / 124.3 | 124.8 / 124.2 |
| Arithmetic, DGEMM / PD / PI (GFLOP/s) | 205.3 / 0.7 / 0.9 | 368.1 / 0.7 / 0.8 | 305.4 / 0.7 / 0.9 |

Wall-time columns sum to 100.0% at each order (checked). Realisable peaks: 407 GFLOP/s (cuBLAS 4096² DGEMM) and 138.9 GiB/s (p. 24).

**Scaling, ℘ = 3** (Tables 6–7, p. 27–28):

| GPUs | 1 | 2 | 4 | 8 | 16 | 32 | 64 | 104 |
|---|---|---|---|---|---|---|---|---|
| Weak: normalised runtime | 1.00 | 1.00 | 1.01 | 1.01 | 1.01 | 1.01 | 1.01 | 1.01 |
| Strong: speed-up | 1.00 | 2.03 | 3.96 | 7.48 | 14.07 | 26.18 | – | – |

DOF check: 114,688 hexes × (℘+1)³ = 64 points × 5 variables × 104 GPUs ≈ 3.8 × 10⁹, matching p. 27; the cylinder 46,610 × 125 × 5 ≈ 29 × 10⁶ matches p. 24. So the paper's "degrees of freedom" count every conserved variable.

## Figures worth remembering
- **Fig. 1 (p. 4):** peak FLOPS vs memory bandwidth of Intel server CPUs, 1994–2013; the motivation for compact, high-arithmetic-intensity schemes.
- **Fig. 2 (p. 7):** solution and flux points on a triangle and quad, with co-located flux points at the shared edge.
- **Fig. 3–5 (p. 12–14):** the `negdivconf` kernel in PyFR's Mako DSL and the generated CUDA and OpenMP C. A compact illustration of how PyFR kernels are written.
- **Fig. 6 (p. 15):** kernel flow for computing −∇·f, with GEMM calls, MPI split points, synchronisation and buffer reuse.
- **Fig. 8 (p. 20):** order of accuracy vs time for DG, SD, HU at ℘ = 3 (super accuracy).
- **Fig. 10–11 (p. 22–23):** mixed 2D and fully unstructured 3D Couette meshes.
- **Fig. 12–13 (p. 25):** cylinder mesh partitions and density isosurfaces at Re 3900.

## Notation
- ℘: polynomial order of the solution (order of accuracy ℘ + 1). N_D: number of dimensions; N_V: number of field variables.
- e ∈ E: element type; Ω_e: all elements of type e; n: element index; α: field variable; ρ, σ, ν: point indices (summed when repeated on the right).
- (u), (f), (f⊥): quantity at a solution point, at a flux point, normal at a flux point. ~: transformed (standard-element) space.
- 𝔆_α: common interface solution; 𝔉_α: common normal interface flux; g: correction function; ℓ: nodal basis.
- β, τ: LDG upwinding and penalty parameters.
- DG, SD, HU: correction functions recovering nodal DG, spectral difference and Huynh's g₂ scheme (as defined in Vincent et al. [10]).
- DGEMM / PD / PI: matrix multiplies / point-wise direct / point-wise indirect kernels.

## Relevance to this project
This is the **solver reference** for the PyFR LES of the screeching axisymmetric converging-nozzle jet in `Simulations/PyFR_Staging_Continuation/` (A1/A2 staging traced by NPR continuation on MASSIVE M3). It is the paper to cite for PyFR itself, and it explains the numerics behind the settings in `base.example.ini`. It contains no jet, acoustics or screech results.

- **Settings that come straight from this paper:**
  - `riemann-solver = rusanov`, `ldg-beta = 0.5`, `ldg-tau = 0.1` and Gauss–Legendre solution/flux points on hexes and quads are the same choices used in every Navier–Stokes validation case here (p. 21, 24, 26). The paper gives the range: β = ±1/2 for a compact stencil, 0 ≤ τ ≤ 1 (p. 17).
  - Williams–Shunn points on triangular faces match the paper's triangle setup (p. 21); the project's prisms (`williams-shunn~gauss-legendre`) did not exist in v0.1.0.
  - The **explicit time step** being set by the smallest element (README "Cost") follows from the explicit RK formulation used throughout (p. 9, 19).
  - Rusanov is dissipative but robust; for a shock-containing jet that is a reasonable default. The paper offers no other solver to compare.
- **What v0.1.0 lacked and the project's PyFR 3.1 adds** (from the feature list, p. 2, 10, 31–32): prisms, the entropy filter used for shock capturing, RK45 with fixed-step control, Sutherland viscosity, total-pressure (`sub-in-ftpttang`) inlets, source-term absorbing layers, samplers and plugins. None of these is validated in this paper, so for the shock-capturing and inlet/absorbing-layer choices the later PyFR papers are the references, not this one.
- **No SGS model:** the Re 3900 cylinder is run as plain Navier–Stokes at ℘ = 4 (p. 24), i.e. implicit LES where the scheme's dissipation acts as the subgrid model. The project's config likewise has no SGS model. The paper gives no quantitative check of the cylinder wake, so it does not by itself justify the resolution of the jet LES. *(The ILES interpretation is mine; the paper does not use the term.)*
- **Sizing on M3** *(my inference)*: the paper's working set is about 4720 MiB for 114,688 hexes at ℘ = 3 (≈ 42 KiB per hex, p. 27). Scaled naively to the 2.8 M-element production mesh at ℘ = 3 that is ~115 GiB, i.e. several 40–80 GB GPUs. Modern PyFR and RK45 storage differ, so treat this only as an order of magnitude and measure on the pilot mesh as the README already says.
- **Strong-scaling caution:** speed-up falls off once each GPU is lightly loaded (< 3% at 32 GPUs, p. 28). When splitting the two continuation branches across GPUs, keep each GPU well loaded rather than spreading one run thinly.
- **Data the LES produces and which methods suit it:** PyFR sampler and solution output is **time-resolved** (fixed dt, sampled every `nsteps`), so it suits SPOD, BMD and time-direction Hilbert POD (HPOD_t), including the SPOD → reconstruction → HPOD pipeline used to follow forced A1↔A2 switches ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md), [schmidt-2020-guide-spod.md](schmidt-2020-guide-spod.md), [schmidt-2019-streaming-spod.md](schmidt-2019-streaming-spod.md) for large 3D fields). Subsampling LES snapshots to mimic PIV would let the POD-pair and space-only HPOD routes be tested on the same flow.
- **Related simulation notes:**
  - [greenshields-2010-central-schemes-polyhedral-fv.md](greenshields-2010-central-schemes-polyhedral-fv.md): the low-order finite-volume alternative (OpenFOAM rhoCentralFoam) to PyFR's high-order FR.
  - [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md) and [jeun-2024-screech-coupling-closure-rectangular-twin-jets.md](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md): unstructured finite-volume LES (Charles/charLES) of screeching jets, the closest published comparators for what the PyFR run should resolve.
  - [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md): the M 0.9 jet LES database, a ready benchmark for post-processing code before applying it to PyFR output.
- **Physics notes the LES targets:** [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md), [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md) and [mancinelli-2021-complex-valued-resonance-model-screech.md](mancinelli-2021-complex-valued-resonance-model-screech.md) set the A1/A2 NPR range and the guided-jet-mode closure the simulation should reproduce.
- **Facility:** not applicable (numerical paper; Imperial College London). Not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:**
  - Huynh (2007), the original FR paper; Vincent, Castonguay & Jameson (2011), energy-stable FR (VCJH) and von Neumann analysis [6, 10].
  - Later PyFR papers covering prisms/tets, shock capturing (entropy filter) and ILES of jets, which document the features the project actually uses.
