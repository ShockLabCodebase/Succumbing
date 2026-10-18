# Modal analysis of fluid flows: applications and outlook

- **Authors:** K. Taira (UCLA; Florida State), M. S. Hemati (Minnesota), S. L. Brunton (Washington), Y. Sun (Minnesota), K. Duraisamy (Michigan), S. Bagheri (KTH), S. T. M. Dawson (Illinois Inst. Tech.; Caltech), C.-A. Yeh (UCLA; Florida State)
- **Source:** published in AIAA J. 58(3), 998–1022 (2020), doi:10.2514/1.J058462 (issue, pages and DOI are from the bibliographic record, not the PDF; check them). This file is the **arXiv version**, arXiv:1903.05750v2 [physics.flu-dyn] (26 Jul 2019), in AIAA preprint style, so its pagination differs from the journal.
- **PDF:** `References/Paper_PDFs/Taira-EtAl_2020_Modal-Analysis-Of-Fluid-Flows-Applications-And-Outlook.pdf` (37 pp.; page refs are the printed "n of 37", which equal PDF pages)
- **Tags:** review, applications, POD, DMD, POD–DMD equivalence on limit cycles, global linear stability, Floquet analysis, pseudospectra, transient growth, resolvent analysis, discounted (finite-time) resolvent, balanced POD, Galerkin ROM, shift mode, SINDy, cylinder wake, channel flow, Tollmien–Schlichting waves, airfoil separation control, tip vortex, open cavity, Rossiter modes, flow control, machine learning, randomized algorithms, closure, hyper-reduction

## Summary
The sequel to the "overview" paper ([taira-2017-modal-analysis-fluid-flows-overview.md](taira-2017-modal-analysis-fluid-flows-overview.md)), written by the AIAA Discussion Group on Modal Decomposition (2015–2018) as the lead article of an AIAA J special section (p. 2). Where the first paper explained *how* to compute the methods, this one shows *how to interpret* their outputs and how they complement each other, and assumes the algorithms are known (p. 2). It works through four canonical flows: the cylinder wake (POD, DMD, global stability, Galerkin and SINDy models; p. 3–11), wall-bounded flows (pseudospectra, resolvent, transient growth, POD vs balanced POD, DMD of a forced boundary layer; p. 11–17), airfoil wakes (POD norms, biglobal and Floquet stability, resolvent-guided separation control, tip-vortex control; p. 17–21) and open cavities (POD/DMD, biglobal stability, resolvent, 3D actuation, feedback ROMs; p. 21–25). The examples are mostly computational, re-used from the authors' and others' work; there is no new data (p. 2). An outlook covers nonlinear manifolds and autoencoders, the separation-of-variables problem for travelling waves, sparse and randomized algorithms, machine-learned ROMs and closures, and hyper-reduction (p. 25–28).

## Key findings
Being a review, the "findings" are the lessons and worked examples the authors present.

### Cylinder wake, Re = 100 (p. 3–11)
- **POD:** 325 mean-subtracted snapshots over 8 shedding periods; modes come in pairs because the flow is periodic. The first 2, 4, 6 and 8 modes hold 94.84%, 98.68%, 99.85% and 99.97% of the fluctuating kinetic energy (Fig. 2, p. 4–5).
- **POD vs DMD:** DMD does not need mean subtraction; its dominant mode is the stationary mean flow (eigenvalue 1) (p. 5). On the limit cycle, POD modes 1–2 equal the real and imaginary parts of DMD mode 1, modes 3–4 those of DMD mode 2, and so on (inner-product check, Chen, Tu & Rowley) (p. 6). In general they differ: DMD modes are not orthogonal and each carries one frequency and growth rate (p. 6). Plotting magnitude and phase of a **POD pair** as a complex mode gives the same insight as a DMD mode (p. 6).
- **Data selection matters more than the algorithm:** split the record into regimes (near-equilibrium linear, post-Hopf transient, limit cycle) using a side signal such as lift or drag, and analyse each separately; "throwing" DMD at a whole start-up record loses interpretability (p. 7).
- **DMD on experimental data is biased by sensor noise** (Duke, Soria & Honnery; Dawson et al.); use noise-robust variants (Hemati et al.) (p. 7).
- **Global stability:** needs the steady (equilibrium) base flow and the linearised operator; a mean flow is not an equilibrium, so stability about it is only a model, though it is used as a precursor to mean-flow resolvent analysis (p. 7–8). Re_crit ≈ 46 (Hopf); near onset the leading stability mode resembles the leading POD mode (Abdessemed et al.; p. 8). Floquet analysis of the periodic wake gives 3D modes A and B at Re ≈ 189 and 259 (Table 2, p. 8).
- **Galerkin ROM:** 4 POD modes give unbounded slow amplitude growth, 6 modes are accurate (Deane et al.); ROMs do not transfer across Re and drift over long times (p. 9). Adding Noack's **shift mode** (mean minus steady state, orthogonalised) lets a 3-mode model reproduce the transient from the unstable steady state to the limit cycle (eq. 7, Fig. 4, p. 9–10). Truncation upsets energy balance in the quadratic terms and causes long-time instability; Galerkin cost scales as O(r³); modes deform with flow conditions (p. 10).
- **SINDy** on POD coefficients: a cubic model captures the transient almost perfectly, better than Galerkin (Fig. 4, p. 10–11). Energy-conserving constraints can be imposed via Lagrange multipliers, and SINDy on lift and drag avoids POD and mode deformation altogether (p. 11).

### Wall-bounded flows (p. 11–17)
- **Linearised laminar channel**, Re = 2000, k_x = 0.25, k_z = 2: asymptotically stable but strongly non-normal (p. 11–12). The ε-pseudospectra are much larger than disks around the eigenvalues; the resolvent norm along the real-frequency line peaks at c_r = 0.578 (Fig. 6a, p. 12–13). Maximum transient energy growth occurs at τ = 58 (p. 12).
- **DMD of the optimal-growth trajectory** (Δt = 0.01) recovers only some eigenvalues, those active in the data, and those near the branch intersection are sensitive, yet it reconstructs the data exactly because the system is linear (p. 13).
- **Energy is not the right criterion for a projection basis:** 3 POD modes (dominated by wall-normal vorticity) hold < 4% of the initial-condition energy, which is mostly wall-normal velocity, so the 3-mode POD Galerkin model fails; 5 modes (> 95%) work. A 3-mode **balanced POD** model (with output projection to 7 outputs) tracks the trajectory, because its adjoint modes carry wall-normal velocity (Fig. 7, p. 13–14).
- **Control:** observer-based output feedback can never fully suppress transient growth in flows that have it, and can worsen worst-case growth; controllers designed on ROMs are sensitive to the ROM parameters (p. 15).
- **Turbulent flows:** mean-flow stability is usually stable; the resolvent (gain-based input–output view, with nonlinearity as forcing) explains streaks, hairpins and self-similar structures (p. 15). Under the assumption of uncorrelated response coefficients (white forcing), **resolvent response modes coincide with SPOD modes** (Towne, Schmidt & Colonius) (p. 15). Coloured forcing is modelled with covariance completion (p. 16).
- **Spatially developing boundary layer** (globally stable, convectively unstable amplifier) (p. 16–17): BPOD ROMs suit input–output control because adjoint modes have upstream support, whereas POD modes sit downstream; global eigenmode bases become ill-conditioned (p. 16). For a **continuously forced** system DMD returns marginally stable eigenvalues, contradicting the damped global spectrum, but its modes still carry **spatial** stability information: the TS-wave DMD mode decays then grows between branches I and II at the local spatial-stability rate, and a 2ω harmonic appears from nonlinearity (Fig. 8, p. 16–17).

### Airfoil wakes (p. 17–21)
- **Snapshot choice:** shear-layer structures need high temporal resolution; wake shedding needs many periods; turbulence needs many snapshots (p. 17). Low-energy shear-layer structures appear only in high-order global POD modes, so crop or weight the domain; DMD separates them by frequency automatically (p. 17–18).
- **Choice of norm matters:** for a NACA 0012 at Re = 408,000 (Wolf et al.), kinetic-energy and pressure norms give similar first pairs tied to the tonal noise, but different second pairs: the pressure norm finds spanwise structures linked to tone harmonics, the KE norm streamwise structures unrelated to the tone (Fig. 9, p. 18). A spanwise slice alone would miss the latter, so 3D data can be needed even with apparent homogeneity (p. 18).
- **Biglobal stability** about unstable steady states at Re = 400–1000 (Zhang & Samtaney) gives shedding frequencies that match DNS, with growth rates rising with Re (Fig. 10, p. 18–19). Floquet analysis of the NACA 4415 periodic wake (Re = 500, α = 20°) gives 3D modes at β = 3 and 11, the short-wavelength one stronger (Fig. 11, p. 19–20).
- **Resolvent-guided separation control** (Yeh & Taira, Re = 23,000): the mean flow is globally unstable, so a **discounted resolvent** with complex frequency (discount above the leading growth rate) is used (p. 19). A modal mixing metric M(β, ω), combining resolvent gain and response-mode Reynolds stresses weighted over the shear layer, predicts which actuation frequency and wavenumber improve lift and drag in companion LES, without an LES parameter sweep (Fig. 12, p. 19–20).
- **Tip vortex:** POD of cross-plane PIV (Re = 530,000, α = 5°; Edstrand et al.) shows wandering modes that resemble Batchelor-vortex stability modes (p. 21). Parabolised global stability (Re = 1000) finds a subdominant 5th mode, from the trailing edge, counter-rotating with the vortex; forcing it from the trailing edge weakens the vortex in DNS, and DMD of the controlled flow confirms the intended mode was triggered (Fig. 13, p. 21).

### Open cavities (p. 21–25)
- The Rossiter feedback loop (KH growth, impingement on the aft wall, upstream acoustic waves) is the template (Fig. 14, p. 21–22). Rossiter's semi-empirical formula sets the number and length of snapshots for laminar cases; turbulent cases need many more (p. 22).
- POD of high-speed PIV (L/D = 6, 0.19 ≤ M ≤ 0.73; Murray et al.) gives shear-layer modes growing toward the trailing edge, similar across Mach numbers (p. 22). DMD of linearised snapshots (L/D = 1, Re = 4500; Schmid) gives global modes; the unstable branch is the shear-layer KH instability (Fig. 15, p. 22–23).
- **Biglobal stability** (L/D = 6, Re_D = 502, M 0.1–1.4; Sun et al.): 3D centrifugal modes in the rear recirculation have frequencies about an order of magnitude lower than 2D shear-layer modes; higher M stabilises them, but the trend of growth rate with spanwise wavelength is similar across M (Fig. 16, p. 23).
- **Resolvent** (L/D = 6, Re_D = 502, M = 0.6, β = 2; Liu et al.): peak gain at St_D ≈ 0.15, not at the leading global-mode frequency, attributed to non-normality (also seen by Qadri & Schmid); forcing modes at the leading edge, response at the trailing edge (Fig. 17, p. 23–24).
- **Control:** steady slotted-jet blowing at the spanwise wavelength of the leading 3D stability mode (from Re_D = 502) suppresses spanwise roll-ups and lowers p_rms in turbulent flow at Re_D = 10⁴, M = 0.6, and works supersonically and with sidewalls (Fig. 18, p. 24). Spanwise-varying actuation reduces all Rossiter tones, whereas 2D actuation struggles to (p. 24).
- **Feedback ROMs** (Barbagallo et al., Re_D = 7500): POD and BPOD models both work, BPOD with far fewer modes; global-mode models overweight highly damped modes (p. 24–25). DDES POD of a landing-gear well shows the same shear-layer modes as canonical cavities (Fig. 19, p. 25).

### Outlook (p. 25–28)
- Flows live on nonlinear manifolds, not linear subspaces: locally linear embedding, Grassmannian methods, autoencoders (linear ones recover POD) and Koopman-inspired deep embeddings; deep learning needs large data and mostly interpolates (p. 26).
- **Separation of variables is a key open problem:** POD and DMD expand in space × time, so translating or rotating structures need many modes (p. 26).
- Sparse sensing and compressed sensing; randomized SVD, POD, DMD and resolvent (p. 26–27).
- ML ROMs and closures: NARMAX, LSTM, kernel/extended DMD, SINDy, network/cluster models, MPC (p. 27–28); closure and stabilisation via energy inner products, LSPG, Smagorinsky-type, VMS and Mori–Zwanzig memory terms (p. 28); hyper-reduction via gappy POD and DEIM (p. 28).

## Setup / method
No new experiments or simulations; the worked examples and their conditions are:

| Section | Flow | Data / model | Conditions | Methods | Page |
|---|---|---|---|---|---|
| II | 2D cylinder wake | DNS, immersed boundary projection method | Re = 100; 325 snapshots over 8 periods | snapshot POD, DMD, Galerkin + shift mode, SINDy | 4–11 |
| II.C | cylinder | literature | Re_crit, modes A/B | global stability, Floquet | 7–8 |
| III.A | plane channel, linearised about laminar profile | Orr–Sommerfeld–Squire | Re = 2000, k_x = 0.25, k_z = 2 | eigenvalues, pseudospectra, resolvent, transient growth (τ = 58), DMD (Δt = 0.01), POD vs BPOD Galerkin | 11–15 |
| III.C | forced flat-plate boundary layer, 2D | DNS | F = 120 (F = 10⁶ ων/U∞²), inlet Re ≈ 30,387 | DMD | 16–17 |
| IV.A | NACA 0012 | 3D LES (Wolf et al.) | Re = 408,000 | POD with KE and pressure norms | 18 |
| IV.B | NACA 0012; NACA 4415 | steady and periodic base flows | Re = 400–1000; Re = 500, α = 20° | biglobal stability, Floquet | 18–20 |
| IV.C.1 | airfoil (Yeh & Taira) | turbulent mean flow from LES | Re = 23,000 | discounted resolvent, modal mixing metric, LES check | 19–20 |
| IV.C.2 | finite wing tip vortex | PIV; DNS | Re = 530,000, α = 5° (PIV); Re = 1000, α = 5° | POD, parabolised global stability, DMD | 21 |
| V | rectangular open cavity | PIV; linearised NS; DNS/LES | L/D = 6, 0.19 ≤ M ≤ 0.73 (PIV); L/D = 1, Re = 4500; L/D = 6, Re_D = 502, M 0.1–1.4; Re_D = 10⁴, M = 0.6; Re_D = 7500 | POD, DMD, biglobal stability, resolvent, open- and closed-loop control | 21–25 |
| V.D | landing-gear well | DDES (Ricciardi et al.) | aircraft model | POD | 25 |

- **Paper structure** (Table 1, p. 3): sections II–V by flow, VI outlook, each listing methods used.
- **Data dependence stated in the paper:**
  - POD is applied to mean-subtracted snapshots; snapshot ordering does not matter (p. 4).
  - DMD needs uniformly sampled, time-resolved snapshot pairs (frequency and growth from Δt) and is noise-biased (p. 6–7).
  - Snapshot windows must cover enough periods; separate transient and limit-cycle regimes (p. 7, 17, 22).
  - Global stability, resolvent and BPOD need a discretised linear operator (and an adjoint for BPOD), so they are simulation-side tools, though they can be applied to experimental mean flows (p. 7, 14).

## Key equations
Greek symbols were lost in extraction; equations below are rebuilt from the surrounding text and standard forms.

- **Linearised NS and global stability** (eq. 1–2, p. 7):
  $$\frac{\mathrm d\mathbf q'}{\mathrm dt}=\mathsf L_{\bar{\mathbf q}}\mathbf q',\qquad \mathbf q'(\mathbf x,t)=\hat{\mathbf q}(\mathbf x)\,e^{\mp i\lambda t}\;\Rightarrow\;\mathsf L_{\bar{\mathbf q}}\hat{\mathbf q}=\mp i\lambda\hat{\mathbf q}$$
  with frequency Re(λ) and growth rate Im(λ) as stated in the text; the paper notes the real/imaginary roles are swapped relative to DMD (p. 7).
- **DMD frequency and growth** (p. 6): $f_i=\angle\lambda_i/(2\pi\Delta t)$, $g_i=\log|\lambda_i|/\Delta t$.
- **POD expansion and Galerkin model** (eq. 3–6, p. 9):
  $$\mathbf u(t,\mathbf x)=\sum_{j=0}^{r}a_j(t)\boldsymbol\phi_j(\mathbf x),\quad a_0=1,\ \boldsymbol\phi_0=\text{mean}$$
  $$\frac{\mathrm da_i}{\mathrm dt}=\sum_{j=0}^{r}F_{ij}a_j+\sum_{j=0}^{r}\sum_{k=0}^{r}G_{ijk}a_ja_k,\quad F_{ij}=\mathrm{Re}^{-1}\langle\boldsymbol\phi_i,\nabla^2\boldsymbol\phi_j\rangle,\ G_{ijk}=-\langle\boldsymbol\phi_i,(\boldsymbol\phi_j\cdot\nabla)\boldsymbol\phi_k\rangle$$
  with $a_i(t_0)=\langle\mathbf u(t_0,\mathbf x),\boldsymbol\phi_i\rangle$; the pressure term drops out for most boundary conditions (p. 9).
- **Shift mode** (eq. 7, p. 9): $\boldsymbol\phi_\Delta=\boldsymbol\Delta^a/\|\boldsymbol\Delta^a\|$, $\boldsymbol\Delta^a=\boldsymbol\Delta-\sum_{i=1}^{r}\langle\boldsymbol\Delta,\boldsymbol\phi_i\rangle\boldsymbol\phi_i$, $\boldsymbol\Delta=\mathbf u_0-\mathbf u_s$ (time-averaged minus steady solution).
- **SINDy** (eq. 8, p. 10): $\dot{\mathbf a}=\mathbf f(\mathbf a)\approx\sum_{j=1}^{p}\theta_j(\mathbf a)\,\boldsymbol\xi_j$ with sparse coefficients ξ.
- **ε-pseudospectrum** (p. 12), equivalent conditions: ‖Lq − zq‖ ≤ ε for a unit pseudo-eigenvector; z is an eigenvalue of L + E with ‖E‖ ≤ ε; ‖(zI − L)⁻¹‖ ≥ ε⁻¹. For a normal operator it is the union of ε-disks; for non-normal operators it is bounded above by κε-disks (κ the condition number) (p. 12).
- **Galerkin and Petrov–Galerkin projection** (eq. 9–10, p. 13–14): POD $\tilde{\mathsf L}=\Phi^*\mathsf L\Phi$; balanced (oblique) $\tilde{\mathsf L}=\Psi^*\mathsf L\Phi$ with primal modes Φ and bi-orthogonal adjoint modes Ψ.
- **Discounted resolvent** (p. 19): $\mathsf H(\omega)=[i\omega\mathsf I-\mathsf L_{\bar{\mathbf q}}]^{-1}$ with $\omega=\omega_r-i\beta$, β larger than the leading unstable growth rate.
- **Modal mixing metric** (p. 19): $M(\beta,\omega)\equiv\int\big[\sigma^2(\hat R_x^2+\hat R_y^2+\hat R_z^2)\big]^{1/2}w(\mathbf x)\,\mathrm d\mathbf x$, with response-mode Reynolds stresses $\hat R$ (e.g. $\hat R_z=\mathrm{Re}(\hat v_x\hat v_y^*)$) and a shear-layer weight w.

> Equations 1–2, the discount sign convention and the mixing metric (where σ and the 1/2 power sit, and whether σ is squared) were reconstructed from garbled text; check against p. 7 and p. 19 before using.

## Data tables
**Table 2 (p. 8): cylinder transition Reynolds numbers** (layout-extracted, so reliable)

| Transition | Reference | Re_crit | St_crit | Type |
|---|---|---|---|---|
| von Kármán shedding (2D) | Taneda | 45 | – | Experimental |
| | Provansal, Mathis & Boyer | 47 | 0.12 | Experimental |
| | Strykowski & Sreenivasan | 46 | 0.12 | Exp/Num |
| | Zebib | 45 | 0.11–0.13 | Stability |
| | Jackson | 46.184 | 0.138 | Stability |
| Mode A (3D) | Williamson | 170–180 | – | Experimental |
| | Barkley & Henderson | 189 | – | Stability |
| Mode B (3D) | Williamson | 230–260 | – | Experimental |
| | Barkley & Henderson | 259 | – | Stability |

**Cylinder POD cumulative energy** (Fig. 2, p. 4): 2 modes 94.84%, 4 modes 98.68%, 6 modes 99.85%, 8 modes 99.97%.

## Figures worth remembering
- **Fig. 2 (p. 5):** cylinder vorticity, first 8 POD modes (pairs) and cumulative energy.
- **Fig. 3 (p. 6):** DMD modes as real/imag/magnitude/phase and the eigenvalue spectrum (frequency vs growth, amplitude-coloured).
- **Fig. 4 (p. 10):** 3- and 9-mode Galerkin (with shift mode) vs quadratic and cubic SINDy trajectories on the transient paraboloid (Loiseau & Brunton).
- **Fig. 6 (p. 13):** channel eigenvalues, pseudospectra and DMD eigenvalues; resolvent forcing/response and optimal initial/final states.
- **Fig. 7 (p. 14):** POD vs balanced POD modes and the energy-growth trajectory predicted by each 3-mode model.
- **Fig. 8 (p. 17):** DMD modes of the forced boundary layer: mean, TS wave between branches I and II, 2ω harmonic.
- **Fig. 9 (p. 18):** NACA 0012 POD modes with KE vs pressure norms.
- **Fig. 12 (p. 20):** modal mixing metric over (β, St) against LES lift/drag improvement.
- **Fig. 13 (p. 21):** tip-vortex modes 1 and 5 and circulation under control.
- **Fig. 15–17 (p. 23–24):** cavity DMD spectrum (Schmid), biglobal growth rate vs spanwise wavelength across M, resolvent gain and forcing/response modes.
- **Fig. 18 (p. 25):** cavity baseline vs 3D slotted-jet control, Q-criterion and p_rms.

## Notation
- q̄: base flow; q′: perturbation; L_q̄: linearised NS operator; λ: eigenvalue (stability or DMD); H(ω): resolvent; σ: resolvent gain.
- φ_j: POD modes; a_j: temporal coefficients; φ_Δ: shift mode; u_0: mean flow; u_s: steady solution; r: truncation rank; n: state dimension.
- Φ, Ψ: primal and adjoint (balancing) modes. θ_j, ξ_j: SINDy library functions and coefficients.
- k_x, k_z: channel wavenumbers; c_r = ω/k_x: wave speed; β: spanwise wavenumber (airfoil, cavity) and, separately, the resolvent discount parameter; L/D: cavity aspect ratio; St_D = ωD/(2πu∞).

## Relevance to this project
A practical "how to interpret" companion to the method tutorial in [taira-2017-modal-analysis-fluid-flows-overview.md](taira-2017-modal-analysis-fluid-flows-overview.md). It is not about jets, but several lessons transfer directly to the lab's schlieren, PIV and acoustic work.

- **Data-type guidance for the CLAUDE.md workflow:**
  - *Non-time-resolved PIV:* snapshot POD works without time resolution; on an oscillator flow the leading pair equals the real and imaginary parts of the dominant DMD mode, so a complex POD pair is a legitimate stand-in for a single-frequency mode (p. 6). This supports the group's POD-pair phase approach (as in [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md)), but only for a clean limit cycle; for broadband screech the equivalence weakens.
  - *Time-resolved schlieren and acoustics:* DMD (and, by extension, SPOD) needs uniform sampling; experimental noise biases DMD eigenvalues, so use noise-robust DMD or prefer SPOD ([schmidt-2020-guide-spod.md](schmidt-2020-guide-spod.md)) (p. 7).
  - *Regime selection:* the advice to split records into regimes using a side signal (p. 7) maps onto intermittent screech and mode switching: e.g. use a microphone signal or its Hilbert envelope to separate A1/A2 or staging episodes before SPOD or POD, or use HPOD ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)) to track the switching directly.
  - *Choice of norm and domain:* weighting or cropping the domain brings low-energy shear-layer content forward (p. 17–18); the KE vs pressure norm example (p. 18) is relevant when choosing between schlieren intensity, PIV velocity and near-field pressure as the decomposition variable.
  - The paper says little about intermittency or time-varying frequency: DMD and SPOD give single-frequency modes, and the outlook names travelling structures and separation of variables as a key open problem (p. 26). HPOD and wavelets ([torrence-1998-practical-guide-wavelet-analysis.md](torrence-1998-practical-guide-wavelet-analysis.md)) address exactly that gap.
- **Modelling side:**
  - The forced boundary-layer example (DMD of a driven amplifier gives neutral eigenvalues but correct spatial growth; p. 16–17) is a caution for DMD of stationary turbulent jet data: DMD "growth rates" there are not stability eigenvalues.
  - The open-cavity section is the closest analogue to the user's resonance work: Rossiter feedback (KH + upstream acoustics) mirrors screech and impinging-jet loops ([jordan-2018-jet-flap-interaction-tones.md](jordan-2018-jet-flap-interaction-tones.md), [edgington-mitchell-2022-unifying-theory-jet-screech.md](edgington-mitchell-2022-unifying-theory-jet-screech.md)). Resolvent peak gain differs from the leading global-mode frequency because of non-normality (p. 23–24), which matters when comparing resolvent predictions to measured tone frequencies.
  - Mean-flow resolvent and its link to SPOD (p. 15) underlie [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md), [lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md), [schmidt-2018-spectral-analysis-jet-turbulence.md](schmidt-2018-spectral-analysis-jet-turbulence.md) and [morra-2021-colour-of-forcing-resolvent-channel.md](morra-2021-colour-of-forcing-resolvent-channel.md) (white-forcing assumption).
  - The discounted resolvent for unstable mean flows (Yeh & Taira; p. 19) is the same tool used in [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md), and contrasts with the eddy-viscosity approach of [pickering-2021-optimal-eddy-viscosity-resolvent-jets.md](pickering-2021-optimal-eddy-viscosity-resolvent-jets.md), which found linear damping inferior. Self-excited screech or impinging tones about a mean flow may likewise need discounting.
  - Mean-flow stability near onset matching POD (p. 8) parallels [oberleithner-2011-swirling-jet-vortex-breakdown-stability.md](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md); Floquet analysis of periodic base flows parallels the shock-cell Floquet work in [nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md).
  - ROMs: Galerkin + shift mode and SINDy (p. 9–11) and ML closures (p. 27–28) connect to [brunton-2020-machine-learning-fluid-mechanics.md](brunton-2020-machine-learning-fluid-mechanics.md); BPOD's advantage over POD for non-normal flows (p. 13–14) is a reminder that energy ranking is not dynamical importance.
- **Related method references:** [schmid-2010-dynamic-mode-decomposition.md](schmid-2010-dynamic-mode-decomposition.md) (source of the cavity DMD example, Fig. 15), [rowley-2009-spectral-analysis-nonlinear-flows-koopman.md](rowley-2009-spectral-analysis-nonlinear-flows-koopman.md), [mckeon-2010-critical-layer-framework-turbulent-pipe-flow.md](mckeon-2010-critical-layer-framework-turbulent-pipe-flow.md), [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md) (whose airfoil LES is the Yeh & Taira case).
- **Facility:** no Shock Lab group work; the only Monash link is the cited DMD error analysis of Duke, Soria & Honnery (p. 7).
- **Follow-up candidates for `/add-paper`:** Chen, Tu & Rowley (2012) DMD variants; Hemati et al. (2017) de-biased DMD; Dawson et al. (2016) sensor noise in DMD; Duke, Soria & Honnery (2012) DMD error analysis; Towne, Schmidt & Colonius (2018) SPOD–DMD–resolvent; Yeh & Taira (2019) resolvent separation control; Liu et al. cavity resolvent; Noack et al. (2003) shift mode; Loiseau & Brunton (2018) constrained SINDy.
