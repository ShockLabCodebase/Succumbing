---
key: "sirovich-1987-turbulence-dynamics-coherent-structures-part-i"
title: "Turbulence and the dynamics of coherent structures. Part I: Coherent structures"
authors: ["Sirovich, Lawrence"]
year: 1987
type: "article"
venue: "Q. Appl. Math. 45(3), 561–571"
bib: {"journal": "Quarterly of Applied Mathematics", "volume": "45", "number": "3", "pages": "561--571"}
doi: ""
arxiv: ""
pdf: "modal-decomposition/Sirovich_1987_Turbulence-And-The-Dynamics-Of-Coherent-Structures-Part-I-Coherent-Structures.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["none"]
methods: ["POD", "ROM"]
flow: ["generic"]
phenomena: ["coherent-structures"]
params: {}
topics: ["modal-decomposition"]
related: ["taira-2017-modal-analysis-fluid-flows-overview", "towne-2018-spod-relationship-dmd-resolvent", "sieber-2016-spectral-proper-orthogonal-decomposition", "schmidt-2020-guide-spod", "raiola-2025-hilbert-pod", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "brunton-2020-machine-learning-fluid-mechanics"]
cites: []
summary: "Method of snapshots: POD modes of the two-point correlation from an M × M snapshot matrix, snapshots a correlation time apart; Mercer optimality; space-only POD, no time transform"
---
# Turbulence and the dynamics of coherent structures. Part I: Coherent structures

- **Authors:** Lawrence Sirovich (Brown University; p. 561)
- **Source:** Quarterly of Applied Mathematics 45(3), 561–571 (October 1987). Received 1 Oct 1986 (p. 561). JSTOR stable URL https://www.jstor.org/stable/43637457 (no DOI printed).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Sirovich_1987_Turbulence-And-The-Dynamics-Of-Coherent-Structures-Part-I-Coherent-Structures.pdf` (index key `modal-decomposition/Sirovich_1987_Turbulence-And-The-Dynamics-Of-Coherent-Structures-Part-I-Coherent-Structures.pdf`, 12 pp.: a JSTOR cover sheet plus the 11 printed pages)
- **Contents of the PDF:** **Part I only.** Parts II (symmetries and transformations) and III (dynamics and scaling), which follow in the same issue (pages 573–582 and 583–590 from memory; not checked) are *not* in this file; Part I only previews them in its introduction (p. 561–562).
- **Page refs:** printed page numbers. PDF page n = printed page 559 + n (PDF p. 1 is the JSTOR cover).
- **Tags:** proper orthogonal decomposition (POD), Karhunen–Loève expansion, principal component analysis, method of snapshots ("strobes"), direct method, two-point spatial correlation tensor, Mercer's theorem, Fredholm theory, Hermitian operator, ergodic hypothesis, optimality / energy capture, low-dimensional attractor, data compression, incompressible eigenfunctions, Galerkin basis, method of partitions

## Summary
This is the paper that introduced the **method of snapshots** for POD. Sirovich takes Lumley's idea that coherent structures are the eigenfunctions of the two-point spatial correlation tensor K(x, x′), sets it up for a general mean-subtracted state vector (velocity; velocity plus temperature; velocity, temperature and density), and uses Mercer's theorem to show that the eigenfunctions exist, are unique up to degeneracy, give uncorrelated expansion coefficients, have eigenvalues that sum to the mean energy, and are the best finite least-squares fit to K (p. 563–565). The practical problem is size: solving K directly on a 3D grid, or on an N-term spectral basis (the "direct method"), means an eigenproblem of order (grid points × components), which was impossible at the time (p. 565–567). The fix is to approximate K by an average of M uncorrelated snapshots. K then becomes degenerate, every eigenfunction is a linear combination of the snapshots, and the problem reduces to an M × M eigenproblem for the snapshot inner-product matrix C (eq. 3.12–3.16, p. 567–568). Because the modes are mixtures of snapshots, they inherit linear properties of the data such as zero divergence and the boundary conditions, which Part III uses to remove pressure from a Galerkin model (p. 568). An appendix sketches a "method of partitions" that averages eigenvectors over subsets of snapshots when M is too large (p. 568–570). The paper has no numerical examples; it cites applications to the Ginzburg–Landau equation, face recognition and Bénard convection (p. 562).

## Key findings
- **Programme of Parts I–III** (p. 561–562):
  - Part I builds a practical way to compute coherent structures of fully 3D flows. Part II uses flow symmetries to extend the data set ("orders of magnitude" more data in key cases) and transforms modes to other geometries. Part III uses the modes as a basis for a dynamical (Galerkin) description and treats changes of parameter (Re, Ra) (p. 561–562).
  - Unlike Lumley, Sirovich adopts **no shot-noise hypothesis** and **no transform in the time domain** (p. 561–562). The snapshot method is therefore a space-only POD; Lumley's time-Fourier version is what later became frequency-domain SPOD (see Towne et al. 2018 below).
  - Data-compression ratios of O(10³) "have been indicated" by the method, though not pursued here (p. 562).
  - It is a methodology, not a turbulence theory or closure, and it is "without approximation" in practice; it needs enough data, numerical or experimental (p. 562).
  - The basis gives an upper bound on attractor dimension by constructing an embedding space; in the one complete case (Ginzburg–Landau, ref. 20) the dimension falls within Whitney's estimate (p. 562).
- **Existence and properties of the modes** (p. 563–565):
  - K(x, x′) = ⟨v(x, t) v̄(x′, t)⟩ (dyadic product) is square-integrable, non-negative and Hermitian under the complex inner product (2.9) (eq. 2.15, p. 564).
  - By Mercer's theorem it has a uniformly convergent expansion K = Σ λ_k ψ_k(x) ψ̄_k(x′) (eq. 2.13), so "a complete set of coherent structures exist and are unique" modulo degeneracies (p. 564).
  - Expansion coefficients are uncorrelated: ⟨A_k Ā_l⟩ = λ_k δ_kl (eq. 2.12, p. 564).
  - λ_n is the mean energy along the ψ_n axis (time average of |(ψ_n, v)|², eq. 2.16), or figuratively the relative time the system spends along that axis (p. 565).
  - The mean energy (defined *without* a factor ½) equals the eigenvalue sum: E = ∫K_jj(x, x)dx = Σλ_k (eq. 2.17–2.18, p. 565).
  - Variational form: successive maximisation of (ψ, Kψ) with orthonormality (eq. 2.19), equivalent to minimising ‖K − Σλ_jψ_jψ̄_j‖² (eq. 2.20). Any finite-sum fit to K is optimal in least squares if the fitting functions are the eigenfunctions (p. 565).
  - Sirovich calls {ψ_n} the coherent structures "although these are not necessarily" the ones seen in experiment (p. 564).
  - For incompressible flow the modes are divergence-free and meet the boundary conditions, so (Ψ, ∇φ) = 0 and pressure drops out of a Galerkin projection (eq. 2.21–2.22, p. 565).
- **Why the direct method fails** (p. 565–567):
  - A 10³-point cube with three velocity components already gives a 3 × 10³ matrix, which was beyond machine capacity; hence the usual 1D reductions (p. 566).
  - With a spectral basis of N functions (sinusoids, Chebyshev) and J components, the direct eigenproblem MP = λP is of order J × N, and N ≈ O(10⁵) in a realistic Bénard or channel simulation (eq. 3.1–3.9, p. 566–567).
- **Method of snapshots** (p. 567–568):
  - Snapshots v⁽ⁿ⁾ = v(x, nτ) are taken a time τ of the order of, or greater than, the correlation time apart, so they are uncorrelated (eq. 3.10, p. 567).
  - With ergodicity, K ≈ (1/M)Σ v⁽ⁿ⁾(x) v⁽ⁿ⁾(x′) (eq. 3.12). Its eigenfunctions are ψ = Σ A_k v⁽ᵏ⁾ (eq. 3.13), and the coefficients solve CA = λA with C_mn = (1/M)(v⁽ᵐ⁾, v⁽ⁿ⁾) (eq. 3.14–3.16, p. 567–568). Functions orthogonal to the span of the snapshots have λ = 0 (p. 568).
  - It works for experimental and numerical data alike. Spatial resolution only increases the cost of the inner products, not the size of the eigenproblem; the choice between direct and snapshot methods is J × N versus M (p. 568).
  - Even when M is large, the relevant count is the attractor dimension: the minimal m with Σ₁ᵐλ_n / Σ₁^∞λ_n > 0.99 is the nominal criterion (p. 568).
  - The modes are admixtures of instantaneous flows, so they are incompressible and inherit homogeneous or periodic boundary conditions (p. 568).
- **Method of partitions** (Appendix, p. 568–570):
  - If M ≫ m, compute eigenvectors from all subsets of size m (or N in the appendix) and average them over the M!/(N!(M − N)!) choices, separately for each ordered eigenvector (eq. A.8–A.10, p. 569–570).
  - Only a sketch of a convergence argument is given, assuming the expansion coefficients are i.i.d. with zero mean (eq. A.4–A.6, p. 569). The ordering of eigenvalues is right but their values are not; averaged eigenvectors need renormalising, and orthogonality is only conjectured (p. 570).
  - This idea did not catch on; the full snapshot matrix or a direct SVD is now standard (see Taira et al. 2017 below).

## Setup / method
- **Type:** theory and algorithm paper. No experiments, no simulations, no figures, no numerical examples (p. 562).
- **Assumptions:** turbulent, statistically stationary flow; ensemble average = time average (ergodicity, eq. 2.16, 3.11); state variable mean-subtracted; homogeneous or periodic boundary conditions on the state variable (p. 563); K square-integrable because the flow is viscous (p. 564).
- **Governing equations for illustration:** incompressible Navier–Stokes, ∇·U = 0, dU/dt + ∇p = Re⁻¹∇²U (eq. 2.1, p. 563).
- **State variables:** v = u (incompressible); v = (u, θ) for Bénard convection; v = (u, θ, ρ) for compressible flow (eq. 2.2–2.4, p. 563). No weighting between components of different units is discussed (the inner product 2.9 is a plain sum over components).
- **Two algorithms compared:**

| Method | Matrix | Order | Needs | Page |
|---|---|---|---|---|
| Direct (spectral basis) | M_mn = ⟨a_m ā_n⟩ blocks | J × N (≈ O(10⁵)) | time history of basis coefficients | 566–567 |
| Snapshots | C_mn = (1/M)(v⁽ᵐ⁾, v⁽ⁿ⁾) | M (number of snapshots) | M uncorrelated snapshots | 567–568 |
| Partitions (appendix) | C on subsets of size m | m | many subsets; eigenvector averaging | 568–570 |

- **Data requirements of the snapshot method:** time resolution is *not* needed. Sirovich actually asks for snapshots spaced at least one correlation time apart (p. 567), i.e. statistically independent samples, which is what non-time-resolved PIV provides. Time-resolved data can also be used, but adjacent frames are correlated, so the effective number of independent samples is lower than M (this last point is my inference, not stated in the paper).

## Key equations
Notation: v(x, t) mean-subtracted state vector with N = dim v components; overbar = complex conjugate; ⟨·⟩ ensemble average.

- Inner product (eq. 2.9, p. 564): $(\mathbf a,\mathbf b)=\int\sum_{j=1}^{N}\bar a_j(\mathbf x)\,b_j(\mathbf x)\,d\mathbf x$
- Two-point correlation (eq. 2.5, p. 563): $K_{mn}(\mathbf x,\mathbf x')=\langle v_m(\mathbf x,t)\,\bar v_n(\mathbf x',t)\rangle$, i.e. $\mathbf K(\mathbf x,\mathbf x')=\langle\mathbf v(\mathbf x,t)\bar{\mathbf v}(\mathbf x',t)\rangle$
- Modal expansion and uncorrelated coefficients (eq. 2.11–2.12, p. 564): $\mathbf v=\sum_n A_n(t)\boldsymbol\psi_n(\mathbf x)$, $\langle A_k\bar A_l\rangle=\lambda_k\delta_{kl}$
- Mercer expansion (eq. 2.13, p. 564): $\mathbf K(\mathbf x,\mathbf x')=\sum_k\lambda_k\boldsymbol\psi_k(\mathbf x)\bar{\boldsymbol\psi}_k(\mathbf x')$
- Hermitian, non-negative (eq. 2.15, p. 564): $(\mathbf f,\mathbf K\mathbf g)=\langle(\mathbf f,\mathbf v)(\mathbf v,\mathbf g)\rangle=(\mathbf K\mathbf f,\mathbf g)$
- Eigenvalue as projected energy (eq. 2.16, p. 565): $\lambda_n=(\boldsymbol\psi_n,\mathbf K\boldsymbol\psi_n)=\langle|(\boldsymbol\psi_n,\mathbf v)|^2\rangle=\lim_{T\to\infty}\frac1T\int_0^T|(\boldsymbol\psi_n,\mathbf v)|^2dt$
- Energy (eq. 2.17–2.18, p. 565): $E=\int\langle v_j(\mathbf x)\bar v_j(\mathbf x)\rangle d\mathbf x=\int K_{jj}(\mathbf x,\mathbf x)\,d\mathbf x=\sum_k\lambda_k$ (no ½)
- Variational statement (eq. 2.19–2.20, p. 565): $\max(\boldsymbol\psi_j,\mathbf K\boldsymbol\psi_j)$ with $(\boldsymbol\psi_j,\boldsymbol\psi_j)=1$, $(\boldsymbol\psi_k,\boldsymbol\psi_j)=0,\ k<j$; equivalently minimise $\|K-\sum\lambda_j\boldsymbol\psi_j(\mathbf x)\bar{\boldsymbol\psi}_j(\mathbf x')\|^2$
- Eigenproblem (eq. 3.5, p. 566): $\int\mathbf K(\mathbf x,\mathbf x')\mathbf V(\mathbf x')\,d\mathbf x'=\lambda\mathbf V(\mathbf x)$
- Direct method (eq. 3.1–3.3, 3.6, p. 566): $\mathbf v=\sum\mathbf a_n(t)\phi_n$, $\mathbf M_{mn}=\langle\mathbf a_m\bar{\mathbf a}_n\rangle$, $\sum_m\mathbf M_{nm}\mathbf P_m=\lambda\mathbf P_n$
- Snapshots (eq. 3.10, 3.12, p. 567): $\mathbf v^{(n)}=\mathbf v(\mathbf x,n\tau)$, $\mathbf K(\mathbf x,\mathbf x')\approx\frac1M\sum_{n=1}^M\mathbf v^{(n)}(\mathbf x)\mathbf v^{(n)}(\mathbf x')$
- Snapshot eigenproblem (eq. 3.13–3.16, p. 567–568): $\boldsymbol\psi=\sum_{k=1}^M A_k\mathbf v^{(k)}$, $C\mathbf A=\lambda\mathbf A$, $C_{mn}=\frac1M(\mathbf v^{(m)},\mathbf v^{(n)})$
- Energy criterion (p. 568): smallest m with $\sum_{n=1}^m\lambda_n\big/\sum_{n=1}^\infty\lambda_n>0.99$
- Incompressibility (eq. 2.21–2.22, p. 565): $\nabla\cdot\boldsymbol\Psi=0$, $(\boldsymbol\Psi,\nabla\phi)=0$

> The paper does not state the normalisation of A that makes ψ unit-norm. With C A = λA and (A, A) = 1, (ψ, ψ) = M λ, so ψ must be divided by √(Mλ) (compare the form in [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md), eq. 4.22, which scales by the temporal coefficients instead). Check against the PDF if exact constants matter; nothing else in the equations above is reconstructed — all were read from page images.

## Data tables
None in the paper.

## Figures worth remembering
None; the paper has no figures.

## Notation
- v: mean-subtracted state vector; v⁽ⁿ⁾ = v(x, nτ): n-th snapshot ("strobe"); M: number of snapshots; τ: snapshot spacing ≥ correlation time
- K(x, x′): two-point spatial correlation tensor; λ_k, ψ_k: eigenvalues and eigenfunctions ("coherent structures"); A_k(t): uncorrelated expansion coefficients (eq. 2.11); A: snapshot-weight vector (eq. 3.15)
- C: M × M snapshot inner-product matrix; M_mn, P: direct-method matrices; J = dim P_n; N: number of basis functions (Section 3), or dim v (eq. 2.10), or the hyperplane dimension (appendix): the symbol is reused
- E: mean energy (= Σλ, no factor ½)

## Relevance to this project
- **The citation for snapshot POD.** Every snapshot-POD note in the library traces back here: the PIV POD-pair work of [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md) and [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md); the schlieren POD in [wong-2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md); the matrix forms in [taira-2017](taira-2017-modal-analysis-fluid-flows-overview.md) (XᵀX route, plus the more robust direct SVD) and [schmidt-2020-guide-spod](schmidt-2020-guide-spod.md) (weighted QᴴWQ, 1/(N−1) instead of 1/M). Those later forms agree with eq. 3.14–3.16 apart from normalisation, the weight matrix W (absent here) and the energy factor: Sirovich's E = Σλ has no ½, whereas Oberleithner writes K = ½Σλ.
- **Non-time-resolved PIV (step 2 of the workflow).** The method suits PIV by design: Sirovich asks for snapshots at least a correlation time apart (p. 567). POD mode pairs and phase recovery are not in this paper; they come later (Taira 2017 eq. 33, Weightman 2019).
- **Time-resolved schlieren and acoustics.** The snapshot method can be applied to time-resolved data, but it is space-only. It drops Lumley's time transform (p. 561–562), so a mode can mix frequencies. [towne-2018](towne-2018-spod-relationship-dmd-resolvent.md) shows that only the frequency-domain (Lumley) version gives space–time coherent modes. That is the reason the workflow uses SPOD and BMD for time-resolved data. [sieber-2016](sieber-2016-spectral-proper-orthogonal-decomposition.md) is the filtered middle ground, built directly on the snapshot matrix C.
- **Hilbert POD (step 3).** Sirovich sets POD up with complex modes, a conjugate inner product and a Hermitian K (eq. 2.9, 2.15). That is the framework that makes snapshot POD of a complex analytic signal valid, which is what HPOD does ([raiola-2025](raiola-2025-hilbert-pod.md), [davey-2025](davey-2025-hpod-sphere-wake.md)). In the SPOD → reconstruction → HPOD pipeline, the HPOD step is a snapshot POD of the complex rebuilt data, so the M × M matrix C is formed with the conjugate inner product. The eigenvalue reading in eq. 2.16 (mean energy along a mode) is the block-averaged quantity that HPOD's instantaneous amplitude |a(t)| resolves in time.
- **Symmetries (Part II, not in this PDF).** The idea that symmetry can multiply the data set underlies the symmetry-imposed and half-domain POD in [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md) and [wong-2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md), and the D2 split in [yeung-2022](yeung-2022-3d-spod-twin-rectangular-jet.md). Obtain Part II (same issue of Q. Appl. Math. 45) for the original argument.
- **Modelling side.** Sirovich's aim is a Galerkin reduced-order model (Part III). Snapshot modes are linear combinations of the data, so they inherit zero divergence and the boundary conditions, and pressure drops out (eq. 2.21–2.22, p. 568). For compressible jets with the state (u, θ, ρ), the paper offers no weighting between components (eq. 2.4, 2.9). A physically weighted norm such as Chu's ([schmidt-2020-guide-spod](schmidt-2020-guide-spod.md)) is needed in practice, and schlieren intensity is a single scalar, which sidesteps the issue. [brunton-2020](brunton-2020-machine-learning-fluid-mechanics.md) recasts the same POD as a linear autoencoder.
- **Caveat stated by the author:** POD eigenfunctions are optimal for energy, but they are "not necessarily" the coherent structures seen in experiment (p. 564). This matches the later finding that energy-ranked modes can mix mechanisms, which is the reason for wavenumber filtering and SPOD in the screech notes.
