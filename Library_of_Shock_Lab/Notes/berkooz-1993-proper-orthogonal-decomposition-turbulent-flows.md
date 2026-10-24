---
key: "berkooz-1993-proper-orthogonal-decomposition-turbulent-flows"
title: "The Proper Orthogonal Decomposition in the Analysis of Turbulent Flows"
authors: ["Berkooz, Gal", "Holmes, Philip", "Lumley, John L."]
year: 1993
type: "review"
venue: "Annu. Rev. Fluid Mech. 25, 539–575"
bib: {"journal": "Annual Review of Fluid Mechanics", "volume": "25", "pages": "539--575"}
doi: "10.1146/annurev.fl.25.010193.002543"
arxiv: ""
pdf: "modal-decomposition/Berkooz-EtAl_1993_The-Proper-Orthogonal-Decomposition-In-The-Analysis-Of-Turbulent-Flows.pdf"
version: "published"
unverified: ["DOI from memory; not printed in this PDF"]
group: false
facility: ""
data: ["none"]
methods: ["POD", "ROM", "coherence", "symmetry-decomposition", "conditional-sampling", "bispectrum", "wavelets"]
flow: ["generic", "wall-bounded", "shear-layer", "round-jet"]
phenomena: ["coherent-structures", "intermittency"]
params: {}
topics: ["modal-decomposition", "time-frequency-methods"]
related: ["sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "taira-2017-modal-analysis-fluid-flows-overview", "taira-2020-modal-analysis-applications-outlook", "towne-2018-spod-relationship-dmd-resolvent", "schmidt-2020-guide-spod", "sieber-2016-spectral-proper-orthogonal-decomposition", "horel-1984-complex-principal-component-analysis", "raiola-2025-hilbert-pod", "kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions", "schmidt-2020-bispectral-mode-decomposition", "jordan-2013-wave-packets-turbulent-jet-noise", "bell-2021-intermittent-modal-coupling-screeching-twin-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets", "nogueira-2021-twin-jet-coupling-spatial-lsa", "weightman-2018-signatures-shear-layer-unsteadiness-pod", "brunton-2020-machine-learning-fluid-mechanics"]
cites: ["sirovich-1987-turbulence-dynamics-coherent-structures-part-i"]
summary: "Classic POD review: optimality, span, homogeneity gives Fourier modes, symmetry test of ergodicity, thin attractors; POD–Galerkin wall-layer bursts; LSE = POD"
---
# The Proper Orthogonal Decomposition in the Analysis of Turbulent Flows

- **Authors:** Gal Berkooz, Philip Holmes and John L. Lumley, Cornell University, Ithaca, New York (p. 539). Not Shock Lab group work. Supported by AFOSR grant 89-0226 (p. 571).
- **Source:** Annual Review of Fluid Mechanics 25, 539–575 (1993) (p. 539). Keywords: coherent structures, empirical eigenfunctions, modelling, turbulence (p. 539). No DOI is printed; the DOI in the frontmatter is from memory.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Berkooz-EtAl_1993_The-Proper-Orthogonal-Decomposition-In-The-Analysis-Of-Turbulent-Flows.pdf` (index key `modal-decomposition/Berkooz-EtAl_1993_The-Proper-Orthogonal-Decomposition-In-The-Analysis-Of-Turbulent-Flows.pdf`, 37 pp., publisher's version from the Annual Reviews site). **Page refs are journal pages; PDF page = journal page − 538.** Journal pp. 543–544 have no text layer, and the text layer garbles every equation, so all equations below were read from rendered pages.
- **Tags:** proper orthogonal decomposition (POD), Karhunen–Loève decomposition, principal component analysis, empirical eigenfunctions, two-point correlation tensor, Fredholm eigenproblem, Hilbert–Schmidt theory, optimality, span of the empirical basis, inherited linear properties (incompressibility), homogeneity and Fourier modes, shot-noise decomposition, phase recovery from the bispectrum, spline wavelets, ergodicity and symmetry, Chebyshev inequality, thin attractors, Gevrey regularity, method of snapshots, POD dimension, conditional POD, POD–Galerkin models, heteroclinic cycles, bursting, approximate inertial manifolds, linear stochastic estimation (LSE), conditional sampling, pattern recognition, bi-orthogonal decomposition

## Summary
Berkooz, Holmes and Lumley review the POD as a statistical tool and as a basis for building dynamical models of coherent structures (p. 541). Section 2 sets out the theory, with proofs left to Berkooz's 1991 thesis (p. 541, 544). POD modes are the eigenfunctions of the two-point correlation, and their coefficients are uncorrelated. They capture more energy than any other linear basis of the same size, and they span exactly the realisations, so they inherit any closed linear property of the data (p. 542–545). In a homogeneous direction they are Fourier modes, which loses the spatial locality of real structures. Lumley's shot-noise and bispectrum route to recover that locality is shown to rest on assumptions that turbulence data cannot yet test (p. 546–549). The authors add newer results:
- a symmetry test of ergodicity, with a warning against using symmetries to enlarge the ensemble (p. 550–551);
- a Chebyshev argument that the attractor is "very thin" when the POD spectrum decays fast (p. 551–552);
- regularity bounds on the decay of the POD eigenvalue tail (p. 553–556);
- remarks on the method of snapshots and on POD-based dimensions (p. 556–557).

Sections 3–4 survey applications to wall-bounded flows, free shear flows, convection and model equations, and POD–Galerkin models. Chief among these is the wall-layer model of Aubry et al. (1988), whose heteroclinic cycles resemble the burst–sweep cycle (p. 558–564). Section 5 shows that linear stochastic estimation (LSE) equals the conditional mean under a model of independent Gaussian POD coefficients. It also argues that conditional sampling and pattern recognition are subjective, and could be put on firmer ground through POD (p. 564–570).

## Key findings
- **What POD offers** (p. 541–542):
  - It is statistical, and works on experimental and simulated data alike.
  - Its analytical foundations show clearly what it can and cannot do.
  - It extracts structures by a stated criterion and gives a framework for low-dimensional models built from the Navier–Stokes equations (p. 541).
  - It is a linear procedure, based on the spectral theory of compact self-adjoint operators, but it assumes nothing about the linearity of the problem: "as blind as Fourier analysis, and as general" (p. 542).
  - Lumley (1967) introduced it in turbulence. The same procedure is the Karhunen–Loève decomposition or PCA, found independently by Kosambi (1943), Loève (1945), Karhunen (1946), Pougachev (1953) and Obukhov (1954) (p. 541–542).
- **Eigenproblem and basic properties** (§2.1, p. 542–543):
  - The averaging operation may be a time, space, ensemble or **phase** average. It is assumed to commute with limits (p. 542).
  - Maximising the normalised mean projection ⟨|(u, ψ)|²⟩/(ψ, ψ) leads to the Fredholm problem ∫R(x, x′)φ(x′)dx′ = λφ(x) (eq. 2.1–2.2).
  - For bounded Ω, Hilbert–Schmidt theory gives a denumerable infinity of eigenfunctions with λᵢ ≥ λᵢ₊₁ ≥ 0, R = Σλ_kφ_kφ_k* and ⟨a_k a_k′*⟩ = δ_kk′λ_k (eq. 2.3–2.5, p. 543).
- **Span of the empirical basis** (§2.2, p. 543–545):
  - If R is continuous, almost every ensemble member lies in the span S of the eigenfunctions with nonzero eigenvalues (Prop. 2.1). Conversely, every element of S is a series in ensemble members (Prop. 2.2). The span is therefore exactly the span of the realisations, up to a set of measure zero (p. 544).
  - The basis is complete only if the kernel of R (the zero-eigenvalue functions) is added. POD restricts the analysis "a priori" to the smallest linear subspace that describes the data (p. 544).
  - **Corollary 2.2:** if all functions with some property form a closed linear subspace, the empirical eigenfunctions share the property, and the converse also holds. Example: modes built from divergence-free fields are divergence-free (p. 544–545).
- **Optimality** (§2.3, Prop. 2.3, p. 545):
  - The POD coefficients are uncorrelated.
  - For every n, the first n POD modes hold at least as much mean energy as the first n modes of any other orthonormal basis.
  - The energy here is ∫⟨uu*⟩dx = Σ⟨b_ib_i*⟩, called "average kinetic energy per unit mass" but without a factor ½ (eq. 2.7), as in [Sirovich 1987](sirovich-1987-turbulence-dynamics-coherent-structures-part-i.md) (p. 565 there).
- **Homogeneity gives Fourier modes** (§2.4, p. 546):
  - R(x, x′) = r(x − x′) if and only if the eigenfunctions are Fourier modes (Prop. 2.4), with the Fourier coefficients of r as eigenvalues (eq. 2.10–2.11).
  - A homogeneous direction splits a multi-dimensional problem into one smaller eigenproblem per wavenumber (eq. 2.12–2.13), as in Herzog (1986) and Moin & Moser (1989). Berkooz & Titi (1992) extend this to more general symmetry groups (p. 546).
  - The cost: Fourier modes are not localised, unlike the structures seen in the boundary layer, so locality must be restored through the phase relations between modes (p. 546).
- **Shot-noise decomposition and phase recovery** (p. 546–549):
  - The flow is modelled as a building block f sprinkled by a random process g (eq. 2.14–2.15, Fig. 1). The decomposition always exists and is far from unique (p. 547–548).
  - If g is delta-correlated (Assumption 2.1), the spectrum of the correlation fixes only the modulus, R̂ = |f̂|² (Prop. 2.5, p. 548).
  - Lumley's route to the phases goes through the triple correlation (eq. 2.17–2.19), assuming g is also triply uncorrelated. The Fourier-transformed triple correlation B(κ₁, κ₂) must then factor as R̂^{1/2}(κ₁)R̂^{1/2}(κ₂)R̂^{1/2}(κ₁ + κ₂) times a phase term (eq. 2.19).
  - In general B cannot be factored like this. If it cannot, the assumption on g is wrong. There is "very little information" on B in turbulence "and none on its factorability" (p. 549).
  - Lumley's reduction to B(c, cκ) is "not very convincing". The likely faults are the single building block, single orientation and uncorrelated sprinkling: real structures cannot sit too close together, interact dynamically, and come in more than one form (p. 548–549).
- **Wavelets as a localised alternative** (p. 549–550): periodic spline wavelets are not optimal but are not much worse than Fourier modes on average. If N Fourier modes reconstruct R(x − x′) with error ε, a similar number of spline wavelets gives error 3ε + c/2^{δn}, where n is the spline order (Berkooz et al. 1991a).
- **Ergodicity and symmetry** (p. 550–551):
  - **Prop. 2.6:** for an ergodic invariant measure with linear symmetry group G, almost every realisation must give eigenspaces (from the time average of that run) that are invariant under G. The test (p. 550):
    1. measure R(x, x′) from one run;
    2. compute the φᵢ;
    3. check that each φᵢ has the symmetry.

    A mode with less symmetry than the system proves non-ergodicity. The converse does not hold: two disjoint attractors can each have the full symmetry (p. 550).
  - Aubry et al. (1991b) used this to show that the Kuramoto–Sivashinsky equation is non-ergodic for some parameter values (p. 550).
  - **Caution against adding symmetric images to the ensemble** (as Sirovich 1987 advocates): the partition into ergodic components can be finer than the partition by symmetry (Berkooz 1990b). Examples are a square Rayleigh–Bénard cell, whose single roll may keep the rotation direction chosen at onset for ever, and the minimal flow unit of Jiménez & Moin (1991). Imposed symmetry "may therefore obscure the true nature" of a system (p. 551).
- **Thin attractors** (§2.5, p. 551–553):
  - Chebyshev's inequality applied to the residual X_n = {a_{n+1}, a_{n+2}, …} gives P{|X_n| ≥ ε} ≤ Σ_{m>n}λ_m/ε² (eq. 2.20–2.22).
  - If the residual energy decays exponentially, slabs around the n-mode subspace whose thickness shrinks exponentially hold the solution with probability tending exponentially to one. The attractor is "very thin, albeit high or even infinite dimensional", so a finite number of modes may control the dynamics (p. 552).
  - **Prop. 2.7:** if λ_n = O[exp(−cn)], then for any ε > 0 there is a compact set holding the solutions with probability > 1 − ε (p. 552).
- **Regularity and the POD tail** (p. 553–556):
  - Gevrey-class regularity (eq. 2.24–2.29) makes the instantaneous spectrum decay at least exponentially. Foias & Témam (1989) proved it for 2D Navier–Stokes, and for 3D Navier–Stokes given a uniform bound on vorticity (eq. 2.30, p. 554).
  - **Prop. 2.8:** if a solution is uniformly bounded in |A^α exp[βA^γ]u| in an n-dimensional domain, the POD tail satisfies μ_k = o[k^{−2α/n} exp(−2βk^{2γ/n})] (eq. 2.31). **Prop. 2.9:** the empirical eigenfunctions are as regular as the solutions (p. 555–556).
  - Four caveats (p. 554–555):
    - a uniform bound on the averages is essential, because an ensemble whose members all have exponential tails can have a non-exponential mean spectrum;
    - wavenumber must be ordered through spherical shells;
    - the results concern only the far dissipative range, i.e. very high-order modes (Fig. 2);
    - the POD tail decays at least as fast as the tail in any other basis. Because the total energy is the same in both, the two spectra cross over (Fig. 3).
- **Method of snapshots** (p. 556): Sirovich (1987) reduces an N × N problem (grid points) to an M × M problem (ensemble members) when N ≫ M. How to choose M is not part of Sirovich's treatment. Berkooz (1991b) proves the equivalence of the two formulations and adds a linear-independence condition that Sirovich left out.
- **Dimension from POD** (p. 556–557):
  - Counting the nonzero eigenvalues (Aubry et al. 1991a) gives only the dimension of the smallest linear subspace holding the dynamics, not the Hausdorff dimension. A limit cycle, with Hausdorff dimension 1, can have infinitely many nonzero POD eigenvalues (Berkooz 1990b) (p. 556).
  - Sirovich (1989) instead uses a working definition: enough modes for at least 90% of the energy, with no neglected mode holding more than 1% of the energy of the leading mode (p. 556). The entropy of Aubry et al. (1991a) has the same weakness.
  - A **conditional POD** in an ε-ball around a phase-space point gives a local dimension (the modes needed for 1 − δ of the energy). It lies between the ordinary (linear) dimension and the Hausdorff dimension (p. 556–557).
- **Asymptotic eigenfunctions** (p. 557): Foias et al. (1990) concluded from Sirovich & Knight (1985) that high-order modes tend to Fourier modes. By Corollary 2.2 this cannot be general: if every realisation is constant on part of the domain, so are the modes.
- **A Gaussian model of the function-space PDF** (p. 557): POD makes the coordinates uncorrelated, "although probably dependent". The simplest model of the invariant measure takes the a_k as independent N(0, λ_k). This model is consistent with the POD spectrum, but it is a strong assumption on the dynamics.
- **Applications to data** (§3, p. 558–561):
  - *Wall-bounded flows:*
    - Bakewell & Lumley (1967) measured one velocity component in the wall region of pipe flow and closed the rest with incompressibility and a closure assumption. They kept one eigenfunction with phase 0 and obtained counter-rotating rolls (p. 558).
    - Herzog (1986) made the first full 3D two-point correlation measurement (wall layer of a pipe): coarse resolution but well-converged statistics, three significant eigenfunctions per wavenumber pair, no rational phase reconstruction. Time-delay correlations were measured, but only zero lag was processed (p. 558).
    - Moin & Moser (1989) used the channel DNS of Kim et al. (1987): fewer than 200 realisations, so the statistics may not be converged. They used ad hoc "compactness" and "continuity in wavenumber" criteria for the phases (p. 558).
    - Sirovich et al. (1990a) and Ball et al. (1991) took the coefficient time series a_k(t) directly from channel DNS. These show **strong intermittency**, as bursting would lead one to expect; oblique plane waves are proposed as burst triggers (p. 559).
    - Over the full channel about 500 modes hold 90% of the energy, in reasonable agreement with the Lyapunov dimension of Keefe et al. (1987). Restricted to the wall layer (0 < y⁺ < 40), convergence is much faster. In all cases POD converges much faster than Fourier–Chebyshev bases (p. 559).
  - *Free shear flows:*
    - Glauser et al. (1987) and Glauser & George (1987a,b) studied the axisymmetric jet mixing layer, assumed homogeneous in x (growth ignored). Most of the energy was in azimuthally invariant modes, and they proposed a production mechanism in which modes that are not azimuthally invariant matter, with azimuthal-number selection in the POD spectrum (p. 559).
    - Sirovich et al. (1990b) applied a conditional POD, on a correlation criterion, to the jet mixing layer; this breaks streamwise homogeneity and gives 2D modes of the mixing lobes (p. 559–560).
    - Kirby et al. (1990b) applied POD to a **simulated supersonic shear layer**, aimed at data compression. Time averaging removed the interesting long-time-scale dynamics (p. 560).
    - Glezer et al. (1989) used an "extended" conditional POD on a time-periodically forced mixing layer (p. 560).
  - *Convection:* Sirovich & Park (1990) used the parities of the box to simplify the problem and to enlarge the data. Sirovich & Deane (1991) found some scaling of the modes with Ra and an empirical relation between dim_KL (90% of energy) and the Lyapunov dimension (p. 560).
  - *Model equations:*
    - Burgers with random forcing gives viscous "boundary layers" and an outer region independent of Re (Chambers et al. 1988).
    - Ginzburg–Landau modes depend only weakly on parameters (p. 560–561).
    - Kirby & Armbruster (1991) used conditional and "moving" POD for travelling structures in Kuramoto–Sivashinsky; Berkooz (1991a) extracts moving structures from third-order statistics without changing frame (p. 561).
- **POD in dynamical modelling** (§4, p. 561–564):
  - Two kinds:
    - "Direct" Galerkin simulation neglects the unresolved modes and needs many of them, O(10⁵) even at low Re.
    - "Model-based" simulation models the unresolved modes and allows much lower dimension (p. 561).
  - Direct POD simulations have to answer two questions: the minimal number of modes for acceptable dynamics, and how bifurcation sequences differ from a standard simulation. The saving is partly lost because POD modes do not suit FFT-based algorithms (p. 561–562).
  - Ginzburg–Landau eigenfunctions change slowly with parameters, so one empirical basis serves over a range of Re. Kuramoto–Sivashinsky Galerkin models needed extra dissipation to stay stable (p. 562).
  - **Aubry et al. (1988) wall-layer model** (p. 562–563):
    - Content: five complex spanwise Fourier modes, a single k₁ = 0 streamwise mode and one family of wall-normal eigenfunctions. A Smagorinsky-type closure represents the neglected modes, and a separate model evolves the mean profile.
    - Its heteroclinic cycles reproduce the burst–sweep cycle. They persist for 3 and 4 spanwise modes and in larger truncations with streamwise modes (Stone 1989; Aubry & Sanghi 1989, 1990).
    - Armbruster et al. (1988) proved such cycles structurally stable in O(2)-symmetric systems, which explains why they survive changes of parameter and truncation.
  - **Further results on the wall-layer model** (p. 563):
    - Scaled Herzog modes (drag reduction) shifted parameters without new mechanisms (Aubry et al. 1990).
    - With the cross-stream and streamwise components uncoupled, turbulence without streamwise variation decays, but "ghosts" of heteroclinic cycles remain (Berkooz et al. 1991b). The coupled vector-valued POD modes contain streamwise averages of real structures, so they sustain energy extraction from the mean flow: "use of the POD is similar to a closure assumption".
    - Small random perturbations, standing in for the outer flow, give distributions of burst events with **exponential tails**, like experiment (Stone & Holmes 1990, 1991).
    - The low-dimensional models reproduce the energy budget of the full system within acceptable bounds (Berkooz 1991b).
  - **Jet mixing-layer model** (Glauser et al. 1989, 1990; Zheng & Glauser 1990): unlike the wall-layer model it is non-recurring, and is read as a cascade (p. 563).
  - **Approximate inertial manifold** (Sirovich et al. 1990c): the unresolved modes q are slaved to the resolved modes p by solving 0 = QF(p + q), on the grounds that low-energy modes are faster (eq. 4.1–4.3, p. 563–564). It has been tried only on weakly chaotic systems such as Ginzburg–Landau.
  - **Deane et al. (1991)** built POD–Galerkin models of the 2D cylinder wake and grooved channel from DNS. 4–8 modes captured the first (Hopf) bifurcation. The grooved-channel model held over a range of Re; the cylinder model less so. Fully turbulent flow was not attempted (p. 564).
- **Relations to other techniques** (§5, p. 564–570):
  - The "bi-orthogonal decomposition" of Aubry et al. (1991a) is a special case of POD with a measure concentrated on finitely many points. POD applies to space, time or space–time, depending on the choice of averaging (p. 565).
  - **LSE equals POD under Gaussian coefficients** (p. 565–567):
    - The LSE kernel is A = ⟨u(x)u*(x′)⟩⟨u(x′)u*(x′)⟩⁻¹ (eq. 5.6). Expanded in POD modes, it says that the estimated coefficient of mode i is its average share of u(x′) times the given u(x′) (eq. 5.7).
    - The same result follows exactly from the conditional mean under independent a_i ~ N(0, λ_i) (eq. 5.8–5.10).
    - Consequences: LSE fields inherit every closed linear property of the ensemble; suitable averages of LSE events give the POD modes; every LSE event is a combination of POD modes; and the Chebyshev bound of §2.5 bounds the probability of rare LSE events (p. 567).
    - Adrian (1979) showed the nonlinear corrections to LSE are small, at least in homogeneous turbulence (p. 566).
  - **Conditional sampling** (p. 567–569, Fig. 4, eq. 5.11):
    - It is "largely an art". It can detect fictitious structures in featureless random fields (Blackwelder & Kaplan 1976) or the wrong structures (Lumley 1981) (p. 568).
    - A comparison with POD through LSE would need a space–time POD to include time delays. Because both LSE and the Gaussian model are strong assumptions, a mismatch would not be decisive (p. 568).
    - The authors propose a **conditional POD** using the usual detection criteria. Time-delayed, it could be compared with the low-dimensional models (p. 568–569).
  - **Pattern recognition** (p. 569–570): iterating a template (Stretch et al. 1990) is robust to the starting template, but its median correlation is only about 0.3. The shot-noise analysis shows that any template with a suitable power spectrum can decompose the flow, so the result needs an objectivity test, for which Lumley's (1981) example is a starting point (p. 570).
- **What POD tells about a "black box"** (§6, p. 570–571):
  - whether energy is equipartitioned (a decaying spectrum means it is not);
  - whether the attractor could be compact (Props. 2.7–2.8);
  - hidden symmetries or non-ergodicity (Prop. 2.6);
  - linear properties of the system, e.g. whether turbulence measured in air is divergence-free, and by how much it is not (Corollary 2.2).

  Using the modes to study how energetic structures interact (Galerkin models) "is liable to require some physical understanding" (p. 571).

## Setup / method
- **Type:** review with new theory (Section 2; propositions stated "a little loosely", with proofs in Berkooz 1991b; p. 544). No new experiments or simulations; four schematic figures.
- **Mathematical setting** (p. 542): complex-valued, square-integrable functions on a bounded interval Ω (the flow width or computational domain), with inner product (f, g) = ∫_Ω f g* dx. The vector case is noted in §5 (p. 566). Averaging ⟨·⟩ is any time, space, ensemble or phase average that commutes with limits. The mean is not discussed explicitly; the "mean" is listed separately from the one Bakewell–Lumley eigenfunction (p. 558), so fluctuations are implied.
- **Data needs of the methods covered** (from the paper's statements where given; the rest my reading):
  - *Spatial POD (§2):* an ensemble of realisations, ergodic if a time average is used. No time resolution is needed, and none is stated; Sirovich's snapshot reduction applies when N ≫ M (p. 556). How many members are enough is left open (p. 556); Moin & Moser's fewer than 200 realisations are flagged as possibly unconverged (p. 558).
  - *Homogeneous directions:* Fourier transform first, then one eigenproblem per wavenumber (p. 546). This needs periodic or long domains in that direction.
  - *Phase recovery:* third-order statistics B(κ₁, κ₂) in the homogeneous direction (p. 549). In a spatial direction these can come from non-time-resolved snapshots; in time they need time-resolved records.
  - *Coefficient dynamics, bursting statistics, time-delayed (space–time) POD and conditional sampling with delays* need time-resolved data (p. 559, 568).
  - *LSE* needs only simultaneous two-point correlations ⟨u(x)u*(x′)⟩, not time resolution (p. 565–566).
  - *POD–Galerkin models* need the governing equations, the modes, and a closure for the neglected modes (Smagorinsky-type in Aubry et al. 1988; p. 562).
- **Applications surveyed** (summary of §3–4; numbers as given):

| Study | Flow / data | POD detail | Page |
|---|---|---|---|
| Bakewell & Lumley 1967 | pipe wall region, one velocity component | 1 eigenfunction, k_x = 0, phase 0; counter-rotating rolls | 558 |
| Herzog 1986 | pipe wall layer 0 < y⁺ < 40, full 3D two-point correlations | 3 significant modes per (k_x, k_z); zero lag only | 558–559 |
| Moin & Moser 1989 | channel DNS (Kim et al. 1987) | < 200 realisations; shot-noise; ad hoc phase rules | 558 |
| Sirovich et al. 1990a; Ball et al. 1991 | lower-Re channel DNS | intermittent a_k(t); ≈ 500 modes for 90% energy | 559 |
| Glauser et al. 1987; Glauser & George 1987a,b | axisymmetric jet mixing layer (experiment) | x-homogeneous; most energy in azimuthally invariant modes | 559 |
| Sirovich et al. 1990b; Kirby et al. 1990a | jet mixing layer (experiment; LES) | conditional POD, 2D modes of mixing lobes | 559–560 |
| Kirby et al. 1990b | simulated supersonic shear layer | data compression; time average loses slow dynamics | 560 |
| Glezer et al. 1989 | forced plane mixing layer | "extended" (conditional) POD | 560 |
| Sirovich & Park 1990; Sirovich & Deane 1991 | Rayleigh–Bénard DNS in a box | parities; Ra scaling; dim_KL vs Lyapunov dimension | 560 |
| Aubry et al. 1988 and successors | wall-layer POD–Galerkin model | 5 spanwise modes + k₁ = 0; Smagorinsky closure; heteroclinic bursting | 562–563 |
| Glauser et al. 1989, 1990; Zheng & Glauser 1990 | jet mixing-layer Galerkin model | non-recurring; cascade | 563 |
| Deane et al. 1991 | 2D cylinder wake, grooved channel (DNS) | 4–8-mode Galerkin models capture the Hopf bifurcation | 564 |

## Key equations
Notation as in the paper: u(x) a realisation, * complex conjugate, ⟨·⟩ the average, φ_k and λ_k the empirical eigenfunctions and eigenvalues, a_k the POD coefficients; ψ_i and b_i an arbitrary orthonormal basis and its coefficients. All read from rendered pages.

- Maximisation (eq. 2.1, p. 542): $\max_\psi\langle|(u,\psi)|^2\rangle/(\psi,\psi)=\langle|(u,\phi)|^2\rangle/(\phi,\phi)$, with $(f,g)=\int_\Omega f(x)g^*(x)\,dx$.
- Eigenproblem (eq. 2.2, p. 543): $\int_\Omega\langle u(x)u^*(x')\rangle\phi(x')\,dx'=\lambda\phi(x)$, with $R(x,x')=\langle u(x)u^*(x')\rangle$.
- Diagonal form, expansion and uncorrelated coefficients (eq. 2.3–2.5, p. 543): $R(x,x')=\sum_k\lambda_k\phi_k(x)\phi_k^*(x')$, $u(x)=\sum_ka_k\phi_k(x)$, $\langle a_ka_{k'}^*\rangle=\delta_{kk'}\lambda_k$.
- Energy in an arbitrary orthonormal basis (eq. 2.6–2.7, p. 545): $u(x,t)=\sum_ib_i(t)\psi_i(x)$, $\int_\Omega\langle uu^*\rangle dx=\sum_i\langle b_ib_i^*\rangle$.
- Optimality (Prop. 2.3, p. 545): $\langle a_i(t)a_j^*(t)\rangle=\delta_{ij}\lambda_i$ and $\sum_{i=1}^n\langle a_ia_i^*\rangle=\sum_{i=1}^n\lambda_i\ge\sum_{i=1}^n\langle b_ib_i^*\rangle$ for every n.
- Homogeneity (eq. 2.10–2.11, p. 546): $r(x-x')=\sum C_ke^{2\pi ik(x-x')}$, $R(x,x')=\sum C_ne^{2\pi inx}e^{-2\pi inx'}$; the eigenfunctions are $e^{2\pi inx}$ with eigenvalues $C_n$. With one homogeneous direction, $R=R(x-x',y,y')$ (eq. 2.13).
- Shot-noise decomposition (eq. 2.15, p. 547): $u(x,t)=\int g_t(\xi)f(x-\xi)\,d\xi$; with $\langle g(\xi)g(\xi')\rangle=\delta(\xi-\xi')$, $\hat R=|\hat f|^2$ (Prop. 2.5, p. 548).
- Phase from the bispectrum (eq. 2.16–2.19, p. 548–549): $\hat f=\hat R^{1/2}e^{2\pi i\theta(\kappa)}$; with g triply uncorrelated, $\langle u(x)u(x+r_1)u(x+r_2)\rangle=\int f(x)f(x+r_1)f(x+r_2)\,dx$ and
  $B(\kappa_1,\kappa_2)=\hat R^{1/2}(\kappa_1)\hat R^{1/2}(\kappa_2)\hat R^{1/2}(\kappa_1+\kappa_2)\exp\{2\pi i[\theta(\kappa_1)+\theta(\kappa_2)-\theta(\kappa_1+\kappa_2)]\}$.
- Chebyshev and the residual (eq. 2.20–2.23, p. 551–552): $P\{|X|\ge\varepsilon\}\le\sigma^2/\varepsilon^2$; $X_n=\{a_{n+1},a_{n+2},\dots\}$ with $\sigma^2=\sum_{m=n+1}^\infty\lambda_m$; $P\{|X_n|\ge\varepsilon\}\le\sum_{m=n+1}^\infty\lambda_m/\varepsilon^2$; choose $\varepsilon_n\to0$ with $\sum_{m>n}\lambda_m/\varepsilon_n^2\to0$.
- Gevrey regularity (eq. 2.24–2.29, p. 553–554): $\mathbf u=\sum\mathbf u_j(t)e^{i\mathbf j\cdot\mathbf x}$, $A=-\nabla^2$, $A^s\mathbf u=\sum\mathbf u_j|\mathbf j|^{2s}e^{i\mathbf j\cdot\mathbf x}$, $\exp[\tau A^s]\mathbf u=\sum\mathbf u_j\exp[\tau|\mathbf j|^{2s}]e^{i\mathbf j\cdot\mathbf x}$, $E(m)=\sum_{m\le|\mathbf j|<m+1}|\mathbf u_j|^2$, and $\infty>\sum|\mathbf u_j|^2\exp[2\tau|\mathbf j|^{2s}]\ge\sum E(m)\exp[2\tau m^{2s}]$.
- 3D Navier–Stokes bound (eq. 2.30, p. 554): $|A^{1/2}\exp(\sigma A^{1/2})u|<C<\infty$ after a transient, given bounded vorticity.
- POD tail (eq. 2.31, Prop. 2.8, p. 555): $\mu_k=o[k^{-2\alpha/n}\exp(-2\beta k^{2\gamma/n})]$ if u is uniformly bounded in $|A^\alpha\exp[\beta A^\gamma]\mathbf u|$ in n dimensions (the eigenvalues are written μ_k here).
- Gaussian PDF model (eq. 2.32, p. 557): $u(x,t)=\sum_ka_k(t)\phi_k(x)$ with independent $a_k\sim N(0,\lambda_k)$.
- Approximate inertial manifold (eq. 4.1–4.3, p. 564): $\dot p=PF(p+q)$, $\dot q=QF(p+q)$; model $\dot p=PF[p+\Phi(p)]$ with $q=\Phi(p)$ solving $0=QF(p+q)$.
- LSE (eq. 5.1, 5.5–5.7, p. 565–566): $\min_{V}\langle|u(x)-V(x,x')u(x')|^2\rangle$ gives $A(x,x')=\langle u(x)u^*(x')\rangle\cdot\langle u(x')u^*(x')\rangle^{-1}=\dfrac{\sum_i\lambda_i\phi_i(x)\phi_i^*(x')}{\sum_i\lambda_i|\phi_i(x')|^2}=\sum_i\phi_i(x)f_i(x')$, with $f_i(x')=\lambda_i\phi_i^*(x')/\sum_j\lambda_j|\phi_j(x')|^2$.
- Gaussian conditional mean (eq. 5.8–5.10, p. 566–567): $\langle x_i|\sum_jx_j=C\rangle=\sigma_i^2C/\sum_j\sigma_j^2$, so $\langle u(x)|u(x')\rangle=\dfrac{\sum_i\lambda_i\phi_i^*(x')\phi_i(x)u(x')}{\sum_j\lambda_j|\phi_j(x')|^2}$, the LSE result.
- Conditional average (eq. 5.11, p. 567): $R(x,\Delta x,\tau_j)=\frac1N\sum_{i=1}^Nc(x,t_i)f(x,\Delta x,t_i+\tau_j)$, with c = 1 when the condition is met and 0 otherwise.

> **Checks (my arithmetic, not in the paper).**
> - Eq. 5.6 with R = Σλφφ* gives eq. 5.7 directly, and eq. 5.9 multiplied by φᵢ(x)/φᵢ(x′) and summed gives eq. 5.10, so the two routes agree as claimed. ✓
> - Eq. 5.3 as printed has "· u(x)" in the first factor where u(x′) is meant (compare eq. 5.2). Probably a typo; verify on p. 565.
> - **Prop. 2.7 against Prop. 2.8 in 3D.** With the 3D bound of eq. 2.30 (α = γ = ½, β = σ, n = 3), eq. 2.31 gives μ_k = o[k^{−1/3} exp(−2σk^{1/3})]. That is a stretched exponential, slower than the λ_n = O[exp(−cn)] that Prop. 2.7 assumes. A pure exponential follows only for n = 1, or if 2γ/n ≥ 1. So the paper's claim that regularity is a situation "in which Proposition 2.7 will hold" (p. 553) needs either a weaker hypothesis in Prop. 2.7 or more than eq. 2.30; check Berkooz (1991b).
> - The Chebyshev bound (eq. 2.22) uses only the mean residual energy, so it holds for the residual of any truncated orthonormal expansion. POD minimises that residual for each n, which gives POD the tightest such bound among linear bases.

## Data tables
None in the paper. The survey table under Setup / method is mine.

## Figures worth remembering
- **Fig. 1 (p. 547):** a building block and its autocorrelation, and a signal made by sprinkling it at random times with Gaussian amplitudes. It illustrates that the correlation (hence POD) keeps only the spectrum of the block, not its phase.
- **Fig. 2 (p. 555):** a sketch of a turbulence spectrum under the Gevrey upper bound, which bites only in the far dissipative range.
- **Fig. 3 (p. 555):** a sketch of POD against another basis, with the crossover forced by equal total energy.
- **Fig. 4 (p. 568):** the general conditional-sampling scheme of Antonia (1981).

## Notation
- u(x), u(x, t): realisation or signal (scalar in §2, vector in §2.5 and §5); Ω: bounded domain; (f, g) and ‖f‖: inner product and norm; ⟨·⟩: average (time, space, ensemble or phase).
- R(x, x′) = ⟨u(x)u*(x′)⟩: two-point correlation; r(x − x′): homogeneous form; C_n: its Fourier coefficients.
- φ_k, λ_k (μ_k in eq. 2.31): empirical eigenfunctions and eigenvalues; a_k(t): POD coefficients; ψ_i, b_i: arbitrary orthonormal basis and coefficients; S: span of the eigenfunctions with nonzero eigenvalues; X: the ensemble members in S.
- f, g, F̂ etc.: shot-noise building block and sprinkling process, hats for Fourier transforms; θ(κ): phase of f̂; B(r₁, r₂), B(κ₁, κ₂): triple correlation and its transform (bispectrum).
- X_n: residual coefficient vector; ε, ε_n: slab half-thickness; B_ε: compact set of Prop. 2.7.
- A = −∇²: Stokes operator; α, β, γ, σ, τ, s: regularity exponents and constants; E(m): shell spectrum; j: wavenumber vector.
- P, Q = I − P: projections on resolved and unresolved modes; p, q: resolved and unresolved parts; Φ: slaving function.
- A(x, x′), V(x, x′): LSE kernel and trial kernel; f_i(x′): share of mode i at x′; c(x, t_i): conditioning function; Δx, τ_j: spatial and time offsets.

## Relevance to this project
**Where it sits in the library.** This is the standard theory reference for POD. It sits between the method of snapshots in [Sirovich 1987](sirovich-1987-turbulence-dynamics-coherent-structures-part-i.md) and the modern matrix treatments in [Taira et al. 2017](taira-2017-modal-analysis-fluid-flows-overview.md) and [Taira et al. 2020](taira-2020-modal-analysis-applications-outlook.md). For the user's step 2 (POD of PIV; CLAUDE.md), it states the guarantees behind every POD-pair analysis in the group's notes: uncorrelated coefficients, energy optimality, and inheritance of linear properties.

**Agreements and differences with other notes**
- **Sirovich 1987.**
  - Same eigenproblem and the same energy without a factor ½ (eq. 2.7 here; p. 565 there).
  - Berkooz adds two things Sirovich left out: the choice of M is unaddressed, and a linear-independence condition is needed (p. 556).
  - Berkooz warns against Sirovich's symmetry augmentation (p. 551). The two papers also cite different dimension criteria: Sirovich 1987 uses 99% of the energy (p. 568 there), and the Sirovich 1989 rule quoted here is 90% plus the 1% rule (p. 556).
- **Towne et al. 2018.** [Towne et al. 2018](towne-2018-spod-relationship-dmd-resolvent.md) builds SPOD on Lumley's space–time POD. Prop. 2.4 is the reason that version works: statistical stationarity is homogeneity in time, so the temporal eigenfunctions are Fourier modes and the problem reduces to one eigenproblem per frequency (my reading of p. 546 together with p. 565 here).
  - Berkooz treats the space–time case only in passing: POD applies to space, time or space–time, depending on the averaging (p. 565), and time-delayed conditional sampling needs a space–time POD (p. 568). There is no frequency-domain algorithm.
- **Taira et al. 2020: Galerkin models.** Deane et al. (1991) is reported here as 4–8 modes capturing the Hopf bifurcation (p. 564). The [Taira 2020](taira-2020-modal-analysis-applications-outlook.md) note gives the same study's finer result: 4 modes drift, 6 are accurate, and the models do not transfer across Re (p. 9 there).
  - This tempers the Ginzburg–Landau result here that one basis serves over a range of parameters (p. 562). Berkooz already flags the cylinder model as "more limited" over Re (p. 564), so the two agree.
  - Taira 2020's lesson that energy ranking is not dynamical importance (balanced POD against POD; p. 13–14 there) is the modern answer to Berkooz's remark that Galerkin modelling needs physical understanding (p. 571).
- **The bispectrum.** Lumley's phase recovery (eq. 2.19) uses the same third-order statistic as bicoherence ([Kim & Powers 1979](kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions.md)) and BMD ([Schmidt 2020](schmidt-2020-bispectral-mode-decomposition.md)).
  - The factorability that Berkooz says nobody has measured (p. 549) could now be tested: the jet bispectra and BMD maps in the group's work ([Mazharmanesh et al. 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md)) show phase-coupled triads (tones, harmonics, mean-flow distortion). That is the structure a single randomly sprinkled building block cannot produce (my inference).
- **LSE and wavepackets.** Jet-noise studies used LSE to link vortex trains to near-field wavepackets ([Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md), p. 180–181 there).
  - Section 5.1 shows that LSE is the conditional mean under independent Gaussian POD coefficients (p. 566–567). An LSE-educed wavepacket is therefore a fixed combination of POD modes scaled by the conditioning signal.
  - It cannot represent the non-Gaussian, intermittent part that Jordan & Colonius stress (my inference).
- **Complex modes.** Berkooz works with complex-valued fields and a conjugate inner product from the start (p. 542), as Sirovich and [Horel 1984](horel-1984-complex-principal-component-analysis.md) do. Nothing in §2 changes when u is an analytic signal, which is what makes Hilbert POD ([Raiola & Kriegseis 2025](raiola-2025-hilbert-pod.md)) a POD with all the guarantees above.

**Methods and data (CLAUDE.md workflow)**
- **Non-time-resolved data (PIV).** Spatial POD, the span and optimality results, LSE and conditional POD all need only an ensemble of independent snapshots. Simultaneous PIV and microphone data are enough for LSE (p. 565–566).
  - The conditional POD proposed on p. 568–569 is what the twin-jet work later did: [Bell et al. 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md) conditioned PIV POD on microphone Hilbert phase, and [Wong et al. 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md) used conditional sampling before POD (p. 16–20 there).
- **Time-resolved data (schlieren, acoustics, LES).** Needed for the coefficient dynamics (intermittent a_k(t), p. 559), time-delayed conditional sampling and space–time POD (p. 568), and any Galerkin model test.
  - Berkooz offers no frequency-domain estimator; for that the workflow uses SPOD ([Schmidt & Colonius 2020](schmidt-2020-guide-spod.md)).
  - Kirby et al.'s supersonic shear layer (p. 560) is the review's only compressible case. Its warning that time-averaged POD hides long-time-scale dynamics applies to any record with switching.
- **Uncorrelated is not independent** (p. 557). This is the key caveat for the group's methods:
  - A POD pair of a limit cycle has uncorrelated but fully dependent coefficients (they lie on a circle). That dependence is what POD-pair phase recovery uses.
  - The shear-thickness mode, whose coefficient correlates with the pair amplitude rather than with either coefficient ([Weightman et al. 2018](weightman-2018-signatures-shear-layer-unsteadiness-pod.md), ρ = 0.74, p. 7 there), is another dependence that second-order statistics cannot show.
  - Likewise A1/A2 switching appears as an anticorrelation of mode *amplitudes*, a fourth-order statistic. POD and SPOD eigenvalues cannot see it, because they are second-order (my inference). This is why the SPOD → reconstruction → HPOD pipeline is needed: SPOD chooses the band, reconstruction returns to time, and HPOD exposes the amplitude dependence.
- **Localisation in a homogeneous direction** (p. 546–550). In time, Prop. 2.4 means that block-averaged frequency-domain modes cannot hold events localised in time.
  - Berkooz's remedies are phase information (third-order statistics) or wavelets, with error 3ε + c/2^{δn} against Fourier (p. 549).
  - The group's remedies are Hilbert transforms and HPOD on SPOD-filtered data. This review gives the theoretical reason the second stage is necessary, not optional (my framing).
- **A cheap check on SPOD reconstruction (my suggestion).** By eq. 2.22 (Markov's inequality on the residual energy), the fraction of time the instantaneous reconstruction error exceeds ε is at most (discarded energy)/ε². The bound applies to any orthogonal truncation, including a band- and rank-limited SPOD rebuild, so it can be quoted with the reconstruction energy fraction.
- **Dimension is not mode count** (p. 556). A limit cycle can have infinitely many nonzero POD eigenvalues. So a screech tone with harmonics needs several POD pairs, although it is one-dimensional dynamically (my inference).
  - The same holds for symmetry wander. In [Tan et al. 2017](tan-2017-broadband-velocity-fluctuations-screeching-jets.md), the C mode is stripped with 2 modes but the B mode needs 18, because its flapping plane precesses in and out of the PIV plane (p. 2328 there). The count measures how the coherent motion is spread over a fixed basis, not its degrees of freedom (my reading).

**Intermittency, mode switching and symmetry**
- **Prop. 2.6 is a test for switching runs.** If unconstrained POD modes from one run lack the symmetry of the set-up, the run has not explored the full invariant measure. Examples:
  - a twin jet staying in one coupling state or with one jet oscillating alone;
  - a helical jet with a preferred rotation direction;
  - an A1 or A2 run inside a hysteresis band.

  Run this check before imposing symmetry (my application of p. 550).
- **Symmetry-imposed POD.** The symmetry-imposed (even/odd) POD of [Nogueira et al. 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md) (p. 6–8 there) gives the same modes as Sirovich's augmentation with mirrored snapshots, which Berkooz cautions against (p. 551) (my equivalence: the augmented correlation commutes with the reflection).
  - The caution matters for states that break the symmetry. Bell et al. 2021 found intervals in which one jet is interrupted while the other is not (p. 14–16 there). The "illusory coupling" of beating, uncoupled jets in Wong et al. 2023 (p. 16–20 there) is the same trap seen from the data side.
  - [Edgington-Mitchell 2023](edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md) reports C-mode helicity reversing often in continuous running (p. 4 there). That is the ergodic case, where symmetry augmentation would be safe. The square-cell example here (p. 551) is the non-ergodic opposite.
- **Heteroclinic cycles as a switching model** (p. 562–563).
  - Two results from the wall-layer models: Armbruster et al.'s cycles are structurally stable in O(2)-symmetric systems, and with small noise they give exponential tails in the waiting-time distribution (Stone & Holmes).
  - Together these are a ready reduced-order model for intermittent switching between *symmetry-related* states. A round jet has O(2) symmetry, so the candidates are helicity reversals and the precession or reorientation of flapping planes (my suggestion).
  - A1/A2 staging is different: both stages are axisymmetric (m = 0), so their bistability is not symmetry-related. A saddle-node/hysteresis picture fits it more naturally. The dwell-time distributions from the group's HPOD record can tell noise-driven escape from a heteroclinic cycle by how the mean dwell scales with forcing level (my suggestion; Stone & Holmes 1990 is not held, so check the scaling law there).

**Modelling side and the PyFR staging LES**
- POD–Galerkin modelling as reviewed here has three ingredients: a POD basis from DNS/LES, a closure for the neglected modes (Smagorinsky-type), and a mean-flow model (p. 562). Its stated limits are extra dissipation needed for stability (p. 562), loss of FFT efficiency (p. 562), and doubtful transfer across parameters (p. 564).
- For the PyFR continuation in NPR (`Simulations/PyFR_Staging_Continuation/`), the Ginzburg–Landau observation that eigenfunctions change slowly with parameter (p. 562) suggests a cheap test (my suggestion). Project snapshots from a new NPR step onto the POD basis of the previous step and track the captured energy fraction. A sharp fall would mark the change of state, independently of the 1/t_switch fit.
- The "ghosts of heteroclinic cycles" in decaying models (p. 563) are a reminder that slow transients near a lost attractor can mimic a state, which is the same concern the saddle-node fit addresses.

**Related works cited, candidates for `/add-paper`:**
- Lumley 1967 (structure of inhomogeneous turbulence), Lumley 1971 (*Stochastic Tools in Turbulence*), Lumley 1981 (coherent structures in turbulence);
- Sirovich 1987 Parts II–III (in `Papers_to_get.md`), Sirovich 1989 (Physica D 37);
- Aubry, Holmes, Lumley & Stone 1988 (JFM 192, wall-layer model), Moin & Moser 1989 (JFM 200, characteristic-eddy decomposition), Herzog 1986 (PhD thesis, Cornell);
- Glauser & George 1987a,b and Glauser, Leib & George 1987 (axisymmetric jet mixing layer), Glauser, Zheng & Doering 1989 and Zheng & Glauser 1990 (jet mixing-layer dynamical model);
- Kirby, Boris & Sirovich 1990b (Int. J. Numer. Methods Fluids 10, supersonic shear-layer POD), Glezer, Kadioglu & Pearlstein 1989 (Phys. Fluids A 1, extended POD);
- Deane et al. 1991 (Phys. Fluids A 3, low-dimensional models of cylinder wake and grooved channel);
- Adrian 1979 (Phys. Fluids 22, conditional eddies) and Adrian & Moin 1988 (JFM 190, stochastic estimation);
- Stone & Holmes 1990 (SIAM J. Appl. Math. 50, randomly perturbed heteroclinic cycles), Armbruster, Guckenheimer & Holmes 1988 (Physica D 29);
- Berkooz, Holmes & Lumley 1991b (JFM 230, intermittent dynamics in simple wall-layer models);
- Aubry, Guyonnet & Lima 1991a (J. Stat. Phys. 64, bi-orthogonal decomposition);
- Farge 1992 (Annu. Rev. Fluid Mech. 24, wavelets).
