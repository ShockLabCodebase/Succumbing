---
key: "schmid-2010-dynamic-mode-decomposition"
title: "Dynamic mode decomposition of numerical and experimental data"
authors: ["Schmid, P. J."]
year: 2010
type: "article"
venue: "JFM 656, 5–28"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "656", "pages": "5--28", "note": "Held copy is the HAL deposit hal-01020654 of the published pages"}
doi: "10.1017/S0022112010001217"
arxiv: ""
pdf: "modal-decomposition/Schmid_2010_Dynamic-Mode-Decomposition-Of-Numerical-And-Experimental-Data.pdf"
version: "published"
unverified: []
group: false
facility: "Linearised NS solvers; unnamed wind tunnel (membrane-wake TR-PIV); EdF (jet between cylinders TR-PIV)"
data: ["PIV-TR", "LNS"]
methods: ["DMD", "POD", "LSA-global"]
flow: ["generic", "wall-bounded", "cavity", "wake"]
phenomena: ["coherent-structures"]
params: {"Re": "10,000 (Poiseuille); 4500 (cavity); 3000 (cylinder jet)"}
topics: ["modal-decomposition"]
related: ["rowley-2009-spectral-analysis-nonlinear-flows-koopman", "towne-2018-spod-relationship-dmd-resolvent", "taira-2017-modal-analysis-fluid-flows-overview", "towne-2022-database-reduced-complexity-modeling", "brunton-2020-machine-learning-fluid-mechanics"]
cites: ["berkooz-1993-proper-orthogonal-decomposition-turbulent-flows", "rowley-2009-spectral-analysis-nonlinear-flows-koopman", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i"]
summary: "Founding DMD paper: SVD-projected companion-matrix fit of one linear map between equispaced snapshots; matches global modes on linearised Poiseuille and cavity; spatial DMD; TR-PIV vs POD"
---
# Dynamic mode decomposition of numerical and experimental data

- **Authors:** P. J. Schmid (LadHyX, CNRS–École Polytechnique, Palaiseau)
- **Source:** J. Fluid Mech. 656, 5–28 (2010), doi:10.1017/S0022112010001217. This file is the HAL deposit (hal-01020654, submitted 9 Jul 2014). It reproduces the published JFM typeset pages behind a one-page HAL cover sheet.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Schmid_2010_Dynamic-Mode-Decomposition-Of-Numerical-And-Experimental-Data.pdf` (25 pp.)
- **Page refs:** PDF page numbers. PDF p. 1 is the HAL cover, so the journal's printed page n is PDF page n − 3 (journal pp. 5–28 = PDF pp. 2–25).
- **Tags:** dynamic mode decomposition (DMD), Krylov sequence, companion matrix, Arnoldi, POD projection, Ritz values, global stability modes, Koopman, POPs / linear inverse modelling, subdomain analysis, spatial DMD, Floquet multipliers, sampling-rate rules, plane Poiseuille flow, open cavity, time-resolved PIV, membrane wake, jet between two cylinders, DMD vs POD

## Summary
The paper introduces DMD, a "matrix-free" way to pull eigenvalues and modes out of a sequence of equally spaced snapshots, without access to the governing operator (p. 3–4). It assumes one constant linear map A takes each snapshot to the next, writes the data as a Krylov sequence, and fits the last snapshot as a combination of the earlier ones. That gives a companion matrix whose eigenvalues approximate some of A's (p. 4–6). Because the companion form is ill-conditioned with noisy data, the working algorithm projects A onto the POD basis of the snapshots, S̃ = UᴴAU, and computes it from the data alone (p. 6, 7). For linearised data the modes are global stability modes; for nonlinear data they are modes of a linear tangent approximation, linked to Koopman analysis (p. 3, 24). Demonstrations cover linearised plane Poiseuille flow (convergence, against Arnoldi), linearised cavity flow (spectrum, subdomain analysis), time-resolved PIV of a flexible-membrane wake (temporal and spatial DMD) and time-resolved PIV of a jet passing between two cylinders (compared with POD) (p. 9–23).

## Key findings
- **Algorithm** (p. 4–6): with V₁^{N−1} = UΣWᴴ (economy SVD), S̃ = UᴴV₂ᴺWΣ⁻¹. Its eigenvalues μ_i are the DMD (Ritz) values and Φ_i = U y_i the dynamic modes. Truncating U to non-zero (or above-threshold) singular values handles rank deficiency (p. 6). All results in the paper use S̃, not the companion matrix S (p. 6).
- **Why not the companion matrix:** it is mathematically correct but in practice often recovers only the first one or two dominant modes, especially with noisy experimental data (p. 6).
- **Relation to other methods** (p. 6–7):
  - Arnoldi orthogonalises successive Krylov vectors using A; DMD skips that step, trading stability and convergence for model-free use.
  - POPs (Hasselmann 1988) estimate A from lagged and zero-lag covariances; LIM gives S through the pseudo-inverse of the data matrix (normal equations, not QR), so LIM is "POP analysis in snapshot space".
  - S̃ = UᴴAU shows DMD correlates POD modes with their images one step later, so it carries temporal information that time-averaged POD modes lose (p. 7).
- **Subdomains and slices** (p. 8): DMD can be run on part of the domain without the artificial boundary conditions a global stability solver would need. For 2D slices of a 3D flow, the projection changes only the spatial shape of the modes, not their frequencies, provided the slice has a non-zero projection of the dominant 3D structure.
- **Spatial DMD** (p. 8–9, 18): reorder a spatio-temporal data set so that "snapshots" are (t, y) planes at successive x. S̃ then maps one streamwise station to the next and its eigenvalues are complex spatial wavenumbers (wavenumber and spatial growth or decay rate). Structures faster in space than the spatial Nyquist wavenumber are lost (p. 18).
- **Poiseuille validation** (Re = 10,000, α = 1; p. 9–11):
  - The Y-shaped A-, P- and S-branch spectrum is recovered, in the time-stepper (unit-circle) format (Fig. 2a).
  - Convergence lemniscates tighten around the exact eigenvalues as N goes 5 → 20 → 40; the most unstable eigenvalues appear first, then more damped ones, until saturation (Fig. 2b–d, p. 10).
  - Against Arnoldi with the same N = 50 and 100, the number and quality of Ritz values are similar at N = 50; Arnoldi keeps improving (Fig. 3d) while DMD saturates (Fig. 3c) (p. 11).
- **Cavity, Re = 4500 (linearised)** (p. 12–15):
  - The residual of eq. 2.7 falls rapidly; about 20 snapshots suffice for growth rates and phase speeds (Fig. 4b, p. 13).
  - One unstable pair, an unstable parabolic (shear-layer) branch and a stable branch of cavity-interior dynamics (Fig. 5). The spectrum is symmetric because the data are real (p. 13).
  - Colour and symbol size show a "coherence" measure: the modulus of the mode's projection onto the POD basis. The author warns that weakly projecting modes can still matter dynamically (p. 13–14).
  - Since the data are linearised, the DMD modes equal global modes (Fig. 6 caption, p. 14).
  - **Subdomain test** (L-shaped region, Table 1): the most unstable eigenvalue is identical to five digits (0.31705, 7.79004); modes lying mostly inside the subdomain stay close; modes only partly inside shift noticeably (e.g. mode c: λ_r −1.862 → −1.327) (p. 15).
- **Membrane wake, time-resolved PIV** (p. 15–18):
  - Temporal DMD of 500 snapshots at Δt = 5 × 10⁻⁴ s gives, besides the zero-frequency mean mode, two dominant frequencies (Fig. 9a, p. 17–18).
  - The dominant mode, λ = (−7.733, 2481.25) s⁻¹, shows about 2.5 periods across the 164 mm window; the next, (−131.363, 2542.95) s⁻¹, has similar scale; (−40.749, 4967.79) s⁻¹ is about double the frequency, about 5 periods, and decays monotonically in x (p. 18).
  - Spatial DMD with Δx = 2.5 mm gives one dominant spatial eigenvalue α ≈ (−0.00351, 0.09486) mm⁻¹, which equals 2.47 periods over 164 mm (p. 18). Fitting an exponential to the peaks of the dominant temporal mode gives a decay rate γ = −0.003355 mm⁻¹, in "very good agreement" with α_r (p. 18).
  - A second spatial mode at α_i = 0.19851 mm⁻¹ has higher temporal frequency but is poorly resolved because of limited x-resolution (p. 18).
- **Jet between two cylinders, time-resolved PIV** (p. 18–23):
  - POD (500 snapshots): weak singular-value decay after the first drop. Mode 1 is the mean flow; modes 2–4 are (anti)symmetric vortex patterns; asymmetry first appears in mode 5 (Fig. 12, p. 20–21). POD gives no dynamics (p. 20).
  - DMD (N = 200): eigenvalues lie on parabolic arcs, as in global stability spectra; each arc corresponds to a family with its own streamwise scale (p. 21). The apex modes, λ = (0.210, 50.254), (−0.466, 85.627) and (−4.844, 159.189) s⁻¹, plus the mean (−0.544, 0) s⁻¹, are shown (Fig. 13, p. 22).
  - DMD picks up an asymmetry between the two sides of the jet, visible in the raw PIV, that the POD averaging hides (p. 21–23).
- **Sampling rule of thumb** (p. 12): the Nyquist limit is the lower bound, but about three times the Nyquist cutoff works well in practice. Undersampled fast processes look like incoherent noise; oversampled slow ones collapse into the mean or a slow drift mode. Sampling once per period of an oscillatory flow gives the Floquet matrix, whose eigenvalues are the Floquet multipliers.
- **Nonlinear data** (p. 24): eigenvalues approach the unit circle for many snapshots (Rowley et al. 2009), so DMD then identifies dominant frequencies and their structures, even in turbulent flows.
- **Framing** (p. 23–24): POD is orthogonal in space and works on second-order statistics; DMD is presented as orthogonalising in time (isolating frequencies) and acting directly on the data. Suggested extensions include mixing variables and regions in one snapshot vector (e.g. PIV plus microphone-array pressure), gappy-data recovery, model reduction and optical flow (p. 23–24).

## Setup / method

### Algorithm (p. 4–6, 11)
1. Collect N snapshots v_i (columns) at constant Δt (or constant Δx for spatial DMD). Experimental data may need preprocessing to remove noise (p. 4). Mean subtraction is **not** done: the mean appears as a zero-frequency mode (p. 18, 22).
2. Form V₁^{N−1} and V₂ᴺ (the same sequence shifted by one).
3. Economy SVD: V₁^{N−1} = UΣWᴴ; optionally truncate small singular values (p. 6).
4. S̃ = UᴴV₂ᴺWΣ⁻¹ (p. 6).
5. Eigen-decompose S̃ y_i = μ_i y_i; modes Φ_i = U y_i (eq. 2.10).
6. Map to continuous time with λ_i = log(μ_i)/Δt: λ_r is growth rate, λ_i angular frequency (p. 11). In the time-stepper format |μ| > 1 is unstable (p. 10).
7. Convergence monitors: ‖r‖ from eq. 2.7 against N (p. 9, Fig. 4b) and convergence lemniscates, the contours of the polynomial with coefficients a, whose zeros are the eigenvalues of S (p. 9).
8. Ranking: no amplitude is computed. Modes are coloured by their projection onto the POD basis (p. 13–14).

### Test cases

| Case | Data | Size / sampling | Notes |
|---|---|---|---|
| Plane Poiseuille, Re = 10,000 (centreline velocity, half-height), α = 1 | 2D linearised NS, wall-normal velocity (v) formulation, 150 Chebyshev polynomials, matrix-exponential time stepping | Δt = 0.1, after a 10-step transient; N = 5–100 | validation against exact spectrum and Arnoldi (p. 9–11) |
| Square cavity, Re = 4500 (inflow velocity, cavity length) | 2D linearised NS, finite differences, fractional-step (Schmid 2007); domain (x, y) ∈ [0, 1] × [−1, 1], lower half is the cavity, uniform inflow left, outflow right | Δt not stated; ~20–30 snapshots for convergence | full domain and L-shaped subdomain (p. 12–15) |
| Flexible-membrane wake | time-resolved 2C PIV in a wind tunnel, U∞ = 14 m s⁻¹; latex membrane 32 × 66 × 0.15 mm on a 0.2 mm U-shaped steel frame; PIV plane in the frame plane, 38 mm downstream of (and laterally offset from) the trailing edge | 2000 Hz; window 164 × 84 mm on a 64 × 64 grid; adaptive cross-correlation 64 → 32 px, 50% overlap, 3 × 3 local-mean validation; 500 snapshots; spatial DMD with Δx = 2.5 mm | temporal and spatial DMD (p. 15–18) |
| Jet between two cylinders (EdF data) | time-resolved 2C PIV; jet width 10.7 mm, mean velocity 0.663 m s⁻¹; cylinders D = 12 mm; Q = 18 m³ h⁻¹; Re = 3000 (volume-flux velocity, cylinder D) | Δt = 4 ms; window 40.36 × 32.08 mm on a 63 × 79 grid; POD on 500 snapshots, DMD on N = 200 | DMD vs POD (p. 18–23) |

- **Facilities:** the membrane wind tunnel is not named (the work is linked to Schmit & Glauser 2009, and Dantec Dynamics is acknowledged); the cylinder data are courtesy of EdF (p. 20, 24). Neither is Shock Lab group work.
- **Simulation side:** both numerical cases are linearised NS about a steady base flow, so DMD is benchmarked against known global spectra (Orszag 1971; Sipp & Lebedev 2007; Barbagallo et al. 2009; Åkervik et al. 2007) rather than against experiment (p. 9, 13). No mean-flow (nonlinear) case is simulated, and no DMD spectrum is compared with a stability analysis of an experimental flow.

## Key equations
Notation as in the paper: V₁ᴺ is the snapshot matrix with columns v₁…v_N, A the (unknown) one-step propagator, ᴴ the conjugate transpose.

- **Snapshot sequence and linear map** (eq. 2.1–2.3, p. 4):
  $$V_1^N=\{v_1,v_2,\dots,v_N\},\qquad v_{i+1}=A v_i,\qquad V_1^N=\{v_1,Av_1,A^2v_1,\dots,A^{N-1}v_1\}$$
- **Last snapshot as a combination of the others** (eq. 2.4–2.5, p. 5): $v_N=a_1v_1+\dots+a_{N-1}v_{N-1}+r=V_1^{N-1}a+r$
- **Shifted-matrix identity** (eq. 2.7, p. 5):
  $$AV_1^{N-1}=V_2^N=V_1^{N-1}S+r\,e_{N-1}^{\mathrm T}$$
- **Companion matrix** (eq. 2.8, p. 5): S has ones on the subdiagonal, zeros elsewhere, and last column a = (a₁, …, a_{N−1})ᵀ.
- **Least-squares coefficients** (eq. 2.9, p. 6): $a=R^{-1}Q^{\mathrm H}v_N$, with $QR=V_1^{N-1}$ (economy QR).
- **SVD-projected DMD** (unnumbered, p. 6) and modes (eq. 2.10, p. 6):
  $$V_1^{N-1}=U\Sigma W^{\mathrm H},\qquad U^{\mathrm H}AU=U^{\mathrm H}V_2^NW\Sigma^{-1}\equiv\tilde S,\qquad \tilde S y_i=\mu_i y_i,\quad \Phi_i=Uy_i$$
  Check: substituting the SVD in AV₁^{N−1} ≈ V₂ᴺ gives AUΣWᴴ = V₂ᴺ, so UᴴAU = UᴴV₂ᴺWΣ⁻¹ (W unitary for the economy SVD, residual neglected).
- **POPs** (eq. 2.11–2.12, p. 7): $x(t+\Delta t)=Ax(t)+\text{noise}$, $A=\overline{x(t+\Delta t)x(t)^{\mathrm H}}\,\big(\overline{x(t)x(t)^{\mathrm H}}\big)^{-1}$ (overbar: time average).
- **LIM form** (eq. 2.13, p. 7): $S=\big[(V_1^{N-1})^{\mathrm H}V_1^{N-1}\big]^{-1}(V_1^{N-1})^{\mathrm H}V_2^N$.
- **POD connection** (eq. 2.14, p. 7): $\tilde S=U^{\mathrm H}AU$ (only computable this way when A is available, i.e. in simulations).
- **Slice of a 3D flow** (eq. 2.15, p. 8): $P_{3D\to2D}\{v_0,A_{3D}v_0,A_{3D}^2v_0,\dots\}$.
- **Continuous-time eigenvalues** (p. 11): $\lambda=\log(\mu)/\Delta t$. For spatial DMD the same mapping with Δx gives α = α_r + iα_i in mm⁻¹ (p. 18–19).

> Equations were checked against rendered PDF pages 5–7 and 11. Points to verify against the PDF before relying on them:
> - On p. 6 the text calls U "the right singular vectors" of V₁^{N−1}. In V = UΣWᴴ, U holds the **left** singular vectors (the POD spatial modes), as p. 7 itself says. Treat it as a slip.
> - **Units of λ_i in the PIV examples.** With λ = log(μ)/Δt, λ_i is an angular frequency (rad s⁻¹); [towne-2022](towne-2022-database-reduced-complexity-modeling.md) also uses St = Im(ω)L/(2πU). But p. 18 quotes the membrane mode λ_i = 2481.25 s⁻¹ as "2481 Hz". At 2000 Hz sampling the Nyquist frequency is 1000 Hz (π/Δt ≈ 6283 rad s⁻¹, consistent with the ±6000 s⁻¹ axis of Fig. 9a), so the mode is about 2481/2π ≈ 395 Hz and the 4967.79 s⁻¹ mode about 791 Hz. The spatial values are in rad mm⁻¹ (0.09486 × 164/2π = 2.48 periods, matching the stated 2.47). The p. 18 estimate of "f ≈ 2356 Hz" from the spatial mode's time pattern has the same ambiguity. The implied phase speed, 2481.25 s⁻¹ / 0.09486 mm⁻¹ ≈ 26 m s⁻¹, is about 1.9 U∞, which is also odd; check before reusing any of these numbers. *(My own arithmetic.)*
> - Fig. 9 caption says the right-hand contours are the transverse velocity; the text on p. 18 says streamwise.
> - "Starting with the fifth POD mode, at 15% of the mean energy" (p. 20): the Fig. 12 labels give σ₅/σ₁ = 107.27/676.33 ≈ 0.159, so "15%" matches the singular-value ratio. The energy ratio σ₅²/σ₁² is ≈ 2.5%. *(My own arithmetic; mode 1 is the mean, not a fluctuation.)*

## Data tables
**Cavity eigenvalues, full domain vs L-shaped subdomain** (Table 1, p. 15; non-dimensional):

| Mode | λ_r (full) | λ_i (full) | λ_r (sub) | λ_i (sub) |
|---|---|---|---|---|
| (a) most unstable | 0.31705 | 7.79004 | 0.31705 | 7.79004 |
| (b) unstable branch | −0.13154 | 10.00141 | −0.12997 | 10.00307 |
| (c) unstable branch | −1.86194 | 11.38202 | −1.32688 | 11.81210 |
| (d) unstable branch | −0.29688 | 4.56283 | −0.25238 | 4.63178 |
| (e) stable branch | −0.66418 | 3.50959 | −0.91428 | 3.81468 |
| (f) stable branch | −1.72888 | 9.74711 | −1.58432 | 9.00429 |

**Experimental DMD eigenvalues** (p. 17–19, 22; λ = (λ_r, λ_i) as printed, in s⁻¹ or mm⁻¹):

| Case | Eigenvalue | Note |
|---|---|---|
| Membrane, temporal | (−7.733, 2481.25) s⁻¹ | dominant, ~2.5 periods in window |
| Membrane, temporal | (−131.363, 2542.95) s⁻¹ | similar scale |
| Membrane, temporal | (−40.749, 4967.79) s⁻¹ | ~2× frequency, ~5 periods, decays in x |
| Membrane, spatial | (−0.00351, 0.09486) mm⁻¹ | dominant; others in Fig. 10: (−0.01752, 0.11612), (−0.01877, 0.19851) mm⁻¹ |
| Cylinders | (−0.544, 0) s⁻¹ | mean flow |
| Cylinders | (0.210, 50.254) s⁻¹ | dominant, arc 1 apex |
| Cylinders | (−0.466, 85.627) s⁻¹ | arc 2 apex |
| Cylinders | (−4.844, 159.189) s⁻¹ | arc 3 apex |

POD singular values for the cylinder case (Fig. 12 labels, p. 21): σ₁–σ₅ = 676.33, 173.09, 162.40, 112.55, 107.27.

## Figures worth remembering
- **Fig. 1 (p. 9):** sketch of slicing a space–time data block in t (temporal DMD) or in x (spatial DMD).
- **Fig. 2 (p. 10):** Poiseuille DMD spectrum on the unit-circle plane and convergence lemniscates for N = 5, 20, 40 (contours 10⁻³⁰ to 1).
- **Fig. 3 (p. 11):** DMD vs Arnoldi Ritz values (red) against exact eigenvalues (blue), N = 50 and 100, in the (λ_r, λ_i) plane.
- **Fig. 4–5 (p. 13):** cavity geometry with the L-shaped subdomain; residual against N; DMD spectrum coloured by POD-projection coherence.
- **Fig. 6–7 (p. 14, 16):** cavity dynamic modes (streamwise velocity), full domain and subdomain.
- **Fig. 8–9 (p. 16–17):** membrane set-up; temporal DMD spectrum and three modes (vectors and contours).
- **Fig. 10 (p. 19):** spatial DMD spectrum and spatial modes in the (t, y) plane.
- **Fig. 11–13 (p. 20–22):** jet-between-cylinders set-up and raw PIV; POD singular values and modes 1–5; DMD spectrum with parabolic arcs and the apex modes.

## Notation
- V₁ᴺ, V₁^{N−1}, V₂ᴺ: snapshot matrices (sub/superscripts are first and last column indices). v_i: i-th snapshot. N: number of snapshots.
- A: one-step propagator (mapping over Δt, or Δx for spatial DMD). S: companion matrix; S̃: SVD-projected "full" matrix, similar to S.
- a: coefficient vector; r: residual; e_{N−1}: (N−1)-th unit vector. QR: economy QR of V₁^{N−1}. H: Arnoldi Hessenberg matrix.
- U, Σ, W: SVD factors of V₁^{N−1}; U = POD spatial modes ("topos"), W = temporal coefficients ("chronos").
- μ_i: eigenvalue of S̃ (discrete time); λ = log(μ)/Δt = λ_r + iλ_i (continuous time); α = α_r + iα_i: spatial eigenvalue; y_i: eigenvector of S̃; Φ_i: dynamic mode.
- POP: principal oscillation pattern; PIP: principal interaction pattern; LIM: linear inverse modelling; BOD: bi-orthogonal decomposition.

## Relevance to this project
This is the founding DMD reference. CLAUDE.md lists SPOD and BMD for time-resolved data and POD for PIV; DMD is the other standard modal tool for time-resolved schlieren and LES, and the paper's subdomain and spatial variants map directly onto resonance and feedback problems.

- **Data requirements:**
  - **Temporal DMD needs time-resolved, uniformly sampled data** (constant Δt; p. 4) at roughly 3× the Nyquist rate for the target process (p. 12). It suits high-speed schlieren, TR-PIV, microphone arrays and LES. It does not apply to 2–15 Hz PIV, where the POD-pair route ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md), [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)) or space-only HPOD ([raiola-2025](raiola-2025-hilbert-pod.md)) is needed.
  - Key parameters: N (convergence and saturation; ~20 sufficed for the cavity, 200–500 for PIV), Δt, the SVD truncation threshold, the choice of subdomain and variables, and whether to subtract the mean (the paper keeps it as a zero-frequency mode).
  - There is no ensemble averaging, unlike SPOD, so noise goes straight into the fit. The paper says experimental data may need denoising first (p. 4) and that the SVD projection and truncation are what make the method robust (p. 6). It gives no mode amplitudes, only a POD-projection "coherence" measure (p. 13–14), so ranking modes needs care.
- **Spatial DMD and non-time-resolved data:** the paper's spatial DMD maps one streamwise station to the next and returns complex wavenumbers (p. 8–9, 18). Raiola & Kriegseis list it among the methods that need time-resolved data ([raiola-2025](raiola-2025-hilbert-pod.md)), and here it was indeed run on TR-PIV with the frequency read off the t-direction. But the x → x + Δx map acts on each column of the (t, y) plane separately, so the columns could in principle be uncorrelated PIV snapshots, as in space-only HPOD. *(My inference, not tested in the paper.)* With real data the spatial eigenvalues come in conjugate pairs, so the sign of α_i alone does not give the direction of travel; upstream (guided-mode) and downstream (KH) waves at one frequency would need the temporal phase or complex (e.g. SPOD- or Hilbert-filtered) input to separate. *(My inference.)*
- **Resonance, intermittency and mode switching:**
  - DMD assumes one constant propagator over the whole record (p. 4); a slowly varying system is covered only by a multiple-scale argument. Each mode has one frequency and one growth rate, so like SPOD it gives a record-averaged picture and cannot track intermittency or mode switching in screech or impingement tones. Running DMD on sliding windows would give a crude time history *(my suggestion)*; HPOD on an SPOD reconstruction ([raiola-2025](raiola-2025-hilbert-pod.md)) is the better route in the CLAUDE.md pipeline.
  - For a saturated tone (screech, impingement), eigenvalues sit near the unit circle (p. 24), and λ_r ≈ 0 is the signature of a limit cycle.
  - Sampling once per screech period would give Floquet multipliers (p. 12), a possible link to the Floquet stability analyses in [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md) and [nogueira-2021-wavepacket-modulation](nogueira-2021-wavepacket-modulation-shock-containing-jets.md). *(My suggestion; those papers use Floquet in space along shock cells, not in time.)*
- **Subdomains and mixed data:** subdomain DMD (p. 8, 15) suits schlieren fields where the shear layer, the near-nozzle region or the near-field acoustics each carry different dynamics. Stacking schlieren or PIV with microphone signals in one snapshot vector (p. 23) is a natural way to tie flow structures to screech or impingement tones from an array.
- **Modelling and simulation side:**
  - For linearised data, DMD reproduces global modes and is benchmarked against Arnoldi (p. 9–11, 14). This makes it a bridge between LES or experiment and global stability or resolvent analysis ([pickering-2020](pickering-2020-lift-up-kh-orr-jets.md), [rolandi-2025](rolandi-2025-biglobal-resolvent-naca0012.md)). The paper does not itself compare an experimental DMD spectrum with a stability calculation.
  - The parabolic arcs in the cylinder-jet spectrum are interpreted through global-stability spectra (p. 21), but no base flow is computed.
  - Nonlinear data are interpreted through the Koopman link (Rowley et al. 2009; p. 3, 24), which [brunton-2020](brunton-2020-machine-learning-fluid-mechanics.md) reviews.
- **Agreement with related notes:**
  - [towne-2022](towne-2022-database-reduced-complexity-modeling.md) runs DMD on its pitching-plate and airfoil data using the full companion matrix and notes that projected (POD-based) DMD is more stable, which agrees with this paper's reason for using S̃ (p. 6). The database is a good test bed for a DMD implementation before lab data.
  - [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md) could not compare its m = 1 mode with Li et al. (2020) because only real parts of DMD modes were published, a reminder to keep complex modes.
  - [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) flags DMD (with SPOD) as a candidate ROM for rocket-plume noise, needing time-resolved data or LES; none had been applied to rocket plumes.
  - SPOD variants for tonal-plus-broadband flows, [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md), are the averaged, statistically convergent alternative to DMD's single-record fit.
- **Follow-up candidates for `/add-paper`:**
  - Schmid, Li, Juniper & Pust (2010, TCFD), DMD applications including schlieren images (cited p. 23).
  - Rowley, Mezić, Bagheri, Schlatter & Henningson (2009, JFM 641), Koopman spectral analysis.
  - Towne, Schmidt & Colonius (2018, JFM 847), the SPOD–DMD–resolvent relationship.
