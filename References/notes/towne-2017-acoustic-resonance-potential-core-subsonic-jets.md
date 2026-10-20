---
key: "towne-2017-acoustic-resonance-potential-core-subsonic-jets"
title: "Acoustic resonance in the potential core of subsonic jets"
authors: ["Towne, A.", "Cavalieri, A. V. G.", "Jordan, P.", "Colonius, T.", "Schmidt, O.", "Jaunet, V.", "Brès, G. A."]
year: 2017
type: "article"
venue: "JFM 825, 1113–1152"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "825", "pages": "1113--1152"}
doi: "10.1017/jfm.2017.346"
arxiv: ""
pdf: "Towne-EtAl_2017_Acoustic-Resonance-In-The-Potential-Core-Of-Subsonic-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "Charles LES (Cascade); validation at PPRIME Bruit & Vent"
data: ["LES", "microphones-near"]
methods: ["PSD", "symmetry-decomposition", "wavenumber-filtering", "LSA-local", "vortex-sheet"]
flow: ["round-jet", "subsonic"]
phenomena: ["guided-jet-mode"]
params: {"M_j": "0.9", "T_j/T_∞": "1", "Re": "1×10⁶", "m": "0, 1"}
topics: ["linear-models", "screech", "impinging-jets-and-edge-tones"]
related: ["schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "jordan-2018-jet-flap-interaction-tones", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "mancinelli-2019-screech-prediction-upstream-modes", "nogueira-2024-guided-jet-waves", "edgington-mitchell-2020-waves-in-screeching-jets", "stavropoulos-2026-jet-edge-interaction", "towne-2022-database-reduced-complexity-modeling"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet"]
summary: "M 0.9 jet LES plus LEE, vortex-sheet and soft-duct Briggs–Bers models: trapped duct modes and upstream guided k⁻ mode; S1/S2 saddles bound near-nozzle tones; tones only for 0.82 < M < 1"
---
# Acoustic resonance in the potential core of subsonic jets

- **Authors:** A. Towne, A. V. G. Cavalieri, P. Jordan, T. Colonius, O. Schmidt, V. Jaunet, G. A. Brès (Caltech; ITA, São José dos Campos; Institut PPRIME, Poitiers; Cascade Technologies)
- **Source:** J. Fluid Mech. 825, 1113–1152 (2017), doi:10.1017/jfm.2017.346. Published version (Cambridge Core download).
- **PDF:** `References/Paper_PDFs/Towne-EtAl_2017_Acoustic-Resonance-In-The-Potential-Core-Of-Subsonic-Jets.pdf` (40 pp.)
- **Page refs:** PDF page numbers. The printed journal page is PDF page + 1112 (PDF p. 1 = p. 1113).
- **Tags:** trapped acoustic waves, guided jet mode, duct-like modes (k⁺, k⁻), discrete free-stream mode, potential-core resonance, near-nozzle tones, subsonic jet (M 0.9), Briggs–Bers spatiotemporal analysis, saddle points, cut-on/cut-off, absolute frequency, linearized Euler (mean-flow) stability, cylindrical vortex sheet, soft (pressure-release) duct, WKB weakly non-parallel model, turning points, tunnelling, LES (Charles), azimuthal Fourier decomposition, frequency–wavenumber spectrum, phase-velocity filtering

## Summary
LES of an isothermal Mach 0.9 jet shows coherent pressure waves inside the potential core over the first few diameters, at the same frequencies as non-harmonic tones measured just outside the jet near the nozzle (p. 1–6). A frequency–wavenumber transform of the core pressure gives an empirical dispersion relation: besides the KH branch, there are several bands with negative phase speed, each with a narrow frequency range where waves of both group-velocity signs coexist (p. 7–8). The authors model these with three parallel-flow models: Euler equations linearized about the LES mean flow, a cylindrical vortex sheet and a soft-walled (pressure-release) duct. Each analysed with Briggs–Bers theory (p. 8–13). The waves are duct-like acoustic modes trapped by the shear layer (k⁺ and k⁻), plus an upstream "discrete free-stream" k⁻ mode that couples the core to the outside (p. 14–15). Two neutral saddle points S1 and S2 bound the band where k⁺ and k⁻ coexist, and these bands predict the tones (p. 16–19). A WKB weakly non-parallel model shows the saddle points act as turning points that reflect waves as the potential core narrows; together with the nozzle, these give five resonance loops (R1–R5) whose energy maps match the phase-velocity-filtered LES (p. 20–31). The vortex-sheet model predicts the resonance (and tones) only for 0.82 < M < 1 in isothermal jets, with the upper limit M_j = 1 for every temperature ratio (p. 31–34).

## Key findings
- **Tones and core waves are the same phenomenon** (p. 5–6, Fig. 3–4):
  - LES and the companion PPRIME experiment both show non-harmonic tones in the m = 0 and m = 1 pressure at (x/D, r/D) = (0.02, 0.8) (p. 5).
  - At tone frequencies (m = 0: St = 0.39, 0.91, 1.52; m = 1: St = 0.61, 1.21), the Fourier modes show waves in the potential core; at other frequencies such waves are weak (p. 6).
  - The n-th tone of each m has n radial antinodes; the waves decay quickly outside the core and are energetic only over the first few diameters, even though the core extends past 6D (p. 6).
  - These tones had earlier been put down to debris or upstream plumbing (Suzuki & Colonius 2006; Sinha 2011); the paper argues they are intrinsic (p. 3).
- **Empirical dispersion relation** (p. 7–8, Fig. 5):
  - KH branch with phase and group velocity ≈ 0.7U_j (p. 7).
  - Three bands with negative phase speed per m (part of a fourth for m = 0). Their group velocity is mostly negative, tending to −c_j at low and U_j − c_j at high frequency (p. 8).
  - Each band has a narrow frequency range with both positive and negative group velocity. These regions are the most energetic and match the core waves and the near-nozzle tones (p. 8).
- **Three kinds of core mode** (p. 14–15, Fig. 6–7):
  - **Duct-like modes** (k⁺ and k⁻, in complex-conjugate pairs), labelled (m, n) with n the number of radial pressure antinodes (p. 15). They nearly satisfy the soft-duct dispersion relation, so they are acoustic waves that see the shear layer as a pressure-release surface and are radially confined to the core (p. 13, 15).
  - **Discrete free-stream mode** (k⁻ only): propagates upstream with negative, subsonic phase speed, near the locus of the k⁻ free-stream acoustic branch. It appears from a branch point on the k = −ω branch cut (vortex sheet) or breaks off the free-stream branch at kr = −ω (Euler) as frequency rises; more appear one at a time at higher frequency (p. 14–15). It decays much more slowly in r than the duct-like modes (Fig. 7d).
  - Vortex-sheet and duct eigenvalues are almost identical at St = 0.3. Euler eigenvalues agree for low n and diverge for higher n because of the finite shear-layer thickness, but those modes are heavily damped (p. 15).
- **Two neutral saddle points** (p. 16–18, Fig. 8, Table 2):
  - **S1** forms where the k⁺ and k⁻ duct-like modes coalesce (cut-on of both). **S2** forms where the k⁺ duct-like mode meets the discrete free-stream k⁻ mode (cut-off of both). The duct model has only S1 (p. 16).
  - Both occur at ω_i = 0 and are formed by a k⁺ and a k⁻ mode, so they are genuine absolute frequency–wavenumber pairs that are neutrally stable (p. 16–17).
  - S1 and S2 values rise monotonically with n and m, in step with the Bessel zeros (p. 16). LEE, VS and duct S1 values agree to within about 4% in St (Table 2).
- **Frequency bands between the saddles predict the tones** (p. 18–19, Fig. 9–10):
  - Below S1 only the k⁻ discrete free-stream mode propagates, with group velocity ≈ −c∞. Between S1 and S2 a k⁺ and a k⁻ duct-like mode are both propagative. Above S2 only the k⁻ duct-like mode is left (p. 18–19).
  - LEE and VS dispersion curves follow the LES dispersion relation "with striking accuracy"; the duct curve is good to the left of S2 (p. 19).
  - The VS S1–S2 bands for n = 1–3 at m = 0 and 1 bracket the near-nozzle tones in LES and experiment; the duct saddle gives the lower limit of each band (p. 19, Fig. 10).
- **Radial shape** (p. 20, Fig. 11): inside r/D < 1/2 the k± duct-like eigenfunctions of all three models match the LES PSD at x = 0. Outside the core the data decay more slowly, which the discrete free-stream mode captures. A combination with the free-stream mode about an order of magnitude weaker than the duct-like modes fits both regions (p. 20).
- **Streamwise evolution** (p. 21–24, Fig. 12–14):
  - Using the local LEE at each x, the two (0, 1) saddles move towards each other and merge at **x/D = 3.62** (second-order saddle). Beyond it the valid saddle has ω_i < 0 (absolutely stable) and the other is formed by two k⁻ modes, so it is irrelevant (p. 21).
  - The band where k⁺ and k⁻ coexist narrows with x and vanishes at the merger; downstream of it all k⁺ core waves are evanescent (p. 21–22).
  - The region in (St, k) where both exist at some x approximately bounds the high-energy region of the LES k–St spectrum (Fig. 13, p. 22–23).
  - Merger x for other groups, read from Fig. 14: about 3.3 for (1, 1) and 3.0 for (0, 2) and (1, 2). All turning points lie well upstream of the end of the potential core at x/D ≈ 6 (p. 24).
- **Turning points reflect waves** (p. 23–25, Fig. 15):
  - Zero-group-velocity points are WKB turning points, where the coalescing k⁺ and k⁻ modes exchange energy. A propagative incident wave splits into a propagative reflected wave and an evanescent transmitted wave; an evanescent incident wave does the reverse (p. 23–25).
  - Analogy: in a slowly varying hard-walled duct (Rienstra 2000, 2003) the reflection and transmission coefficients at a turning point are i and 1 (p. 24).
  - S1 turning points convert k⁺ duct-like ↔ k⁻ duct-like waves. S2 turning points couple k⁺ duct-like waves to the discrete free-stream k⁻ mode, i.e. core ↔ free stream (p. 25).
  - The nozzle exit acts as a second end condition (an impedance boundary with a reflection-coefficient matrix), the second type of turning point of Monkewitz et al. (1993) (p. 25).
- **Five resonance loops** (p. 25–28, Fig. 16), defined on the St⁰(x) curves of Fig. 14:
  - **R1:** St between S1 at x = 0 and min S2. k⁺ duct-like → reflected at S1 turning point → k⁻ duct-like → nozzle → k⁺.
  - **R2:** St between max and min of S2. k⁺ duct-like → S2 → k⁻ discrete free-stream mode → nozzle → k⁺.
  - **R3:** St between min S1 and S1 at x = 0. Like R1 but closed by a second S1 turning point upstream instead of the nozzle.
  - **R4:** like R3 but with an evanescent k⁻/k⁺ leg through the region upstream of the second S1 point to the nozzle.
  - **R5:** St between min S2 and S2 at the merger. Closes only if the evanescent k⁺ wave **tunnels** between two S2 turning points without decaying much (p. 27–28).
  - Decay rates (Fig. 17): waves transmitted through S2 decay more slowly than those through S1, and S2 decay grows with n. It is small for n = 1, so R5 is plausible for n = 1 (p. 27).
  - Constructive interference picks discrete frequencies, but the paper does not solve the matching problem; Schmidt et al. (2017) do this with global modes (p. 28).
- **Phase-velocity-filtered LES confirms the picture** (p. 28–31, Fig. 18–19):
  - Below n = 1 cut-on (St 0.25 for m = 0, 0.50 for m = 1) energy is about three decades below the maximum with no core concentration (p. 28).
  - At R1 frequencies (m = 0: St 0.38, 0.39, 0.40; m = 1: 0.62, 0.64, 0.66) energy fills the core from the nozzle to the S1 turning point and a little beyond. The m = 1 cases show 3, 5 and 7 streamwise antinodes from k⁺/k⁻ beating, reproduced by global modes in Schmidt et al. (2017). The authors take this as strong evidence for resonance (p. 28–29).
  - At St 0.42 (m = 0) and 0.69 (m = 1), where R2 and R5 are both possible, R5 appears to dominate. A possible reason is weaker R2 reflection coefficients, supported by the global modes (p. 29–30).
  - Above the n = 1 cut-off (St 0.60, m = 0; 0.90, m = 1) the core concentration vanishes and levels drop by almost three decades (p. 30).
  - In x–St maps (Fig. 19), core waves are energetic mainly inside the S1/S2/x = 0 region. Extra energy slightly downstream and at slightly higher St for n = 1 suggests a sixth resonance made only of lightly damped waves (p. 30–31).
  - R3 and R4 occupy too narrow a frequency range to resolve with ΔSt = 0.0217 (p. 29).
- **Mach-number dependence, T = 1** (vortex sheet; p. 31–33, Fig. 20–22):
  - **M < 0.82:** the saddles leave the real axes; the valid one has ω_i < 0, so core modes are absolutely stable and only k⁻ waves propagate. No resonance, no tones (p. 31–32). The duct model misses this bifurcation (p. 31).
  - **0.82 < M < 1:** two real saddles and a finite band where k⁺ and k⁻ coexist, which gives tones (p. 31–32).
  - **M > 1:** S1 tends to St → 0 and k → −∞ as M → 1, exactly as the duct formula (3.20)–(3.21) predicts. Only S2 is left, so k⁺ and k⁻ coexist over a broad frequency range and give broadband rather than tonal energy (p. 31–33).
  - This agrees with Tam & Hu (1989), whose "subsonic instability waves" are these core modes: only k⁻ at M = 0.6, both at supersonic M. Tam & Hu did not study the transition between (p. 33).
  - Because the analysis linearizes about a turbulent mean, the authors expect tones to fade in gradually as M nears 0.82, peak, and become broadband above M = 1 (p. 33).
- **Temperature-ratio dependence** (p. 33–34, Fig. 23):
  - The upper bifurcation is at **M_j = 1 for every T** and every mode group, exactly as the duct model predicts (p. 33).
  - The lower bifurcation depends weakly on n and on T, and is not predicted by the duct model (p. 34).
  - The predicted tone region agrees "excellent[ly]" with tone/no-tone observations from Suzuki & Colonius (2006) and two LES databases, if the lower boundary is blurred (p. 34).
- **Wider relevance** (p. 35):
  - Ongoing PPRIME experiments (Jaunet et al. 2016) see the trapped waves in the far field at angles nearly tangent to the jet, apparently tied to R2, consistent with the slower radial decay of the discrete free-stream mode.
  - The same waves appear to drive strong tones when a solid edge is placed near the jet. Rossiter-like explanations (Lawrence & Self 2015; Zaman et al. 2015) had not produced an accurate model; this analysis could supply the building blocks. [Jordan et al. 2018](jordan-2018-jet-flap-interaction-tones.md) does exactly this.

## Setup / method

### LES database (p. 4–5)
| Item | Value |
|---|---|
| Jet | Round convergent-straight nozzle, isothermal T_j/T∞ = 1.0, M_j = U_j/c_j = 0.9 |
| Reynolds number | Re_j = ρ_j U_j D/μ_j ≈ 1 × 10⁶ |
| Solver | Charles (Cascade Technologies), spatially filtered compressible Navier–Stokes, unstructured finite volume |
| Nozzle | Included in the domain; synthetic turbulence trips the internal boundary layer |
| Grid | About 16 million points; convergence checked with a 2× refined mesh in each direction |
| Duration | 2000 acoustic time units (t c∞/D), sampled every 0.2 (baseline) |
| Refined run | Sampled at a higher rate (4× implied by 1024-snapshot blocks at the same ΔSt); used only for the k–ω decomposition, for its spatial resolution |
| Validation | Companion experiment at the Bruit & Vent jet-noise facility, PPRIME; details in Brès et al. (2014, 2015, 2016) |

The same LES (M_j 0.9, Re ≈ 10⁶) is the jet in the public database of [towne-2022](towne-2022-database-reduced-complexity-modeling.md), and is used for HPOD in [raiola-2025](raiola-2025-hilbert-pod.md).

### Spectral estimation (p. 5, 7)
- **Azimuthal Fourier decomposition** into modes m, then Welch-type averaging in time (eq. 2.1–2.2). Requires full-azimuth, time-resolved data.
- **Baseline:** blocks of 256 snapshots, 75% overlap, 154 realisations, ΔSt = 0.0217. **Refined:** 1024 snapshots per block, 75% overlap, 37 realisations, same ΔSt (p. 5).
  - Check: block length 256 × 0.2 = 51.2 D/c∞, so ΔSt = 1/(51.2 M) = 0.0217 for M = 0.9. With 10,000 snapshots and a 64-snapshot hop, about 153 blocks.
  - The temporal window function is not stated.
- **Frequency–wavenumber decomposition** (p. 7): streamwise FFT of the temporal Fourier modes at fixed r (r/D = 0 for m = 0; 0.1 for m = 1), over the first 5D only, so the result reflects the potential core. Results are said to be insensitive to the exact extent and spatial window (unspecified). Plotted as log contours over five decades.
  - Phase speed v_p/c∞ = ω/k = 2πM St/k; group speed v_g/c∞ = ∂ω/∂k = 2πM ∂St/∂k, so the slope of the energy bands gives the direction of energy travel (p. 7).
- **Phase-velocity filter** (p. 28): zero the positive-k components of the streamwise FFT and inverse transform, at every r. This keeps the negative-phase-speed core waves and removes the convective (KH) content. It was unnecessary at x = 0, where convective disturbances are small. PSDs then shown on four-decade log scales (Fig. 18–19).

### Local stability models (p. 8–13)
- **Briggs–Bers framework** (p. 8–10): Green's function of a parallel operator D(−i∂/∂x, i∂/∂t); modes classed as k⁺ (downstream) or k⁻ (upstream) by the sign of k_i as ω_i → +∞ (eq. 3.5–3.6). Absolute frequency from zero group velocity (eq. 3.9). A saddle counts only if formed by one k⁺ and one k⁻ mode (Bers 1983) (p. 10). In the spatial problem, k⁺ modes grow if k_i < 0, k⁻ modes grow if k_i > 0; k_i = 0 means propagative (p. 10).
- **Linearized Euler equations (LEE)** about the time-averaged LES mean flow, as an "equivalent laminar flow" (Crighton & Gaster 1976) (p. 10):
  - Inviscid; viscosity only acts through the mean flow. Variables: specific volume, three velocities, pressure (App. A, p. 36). Non-dimensionalised by c∞, ρ∞ and D.
  - Local: mean profile frozen at one x, streamwise mean derivatives and mean radial velocity dropped. §3 uses the x = 0 profile only.
  - Specify real or complex ω, solve for k (eq. 3.13).
  - Radial discretisation: 4th-order central finite differences with summation-by-parts closures (Strand 1994), super-grid damping layer (Colonius & Ran 2002) closed by Thompson characteristic conditions, pole conditions of Mohseni & Colonius (2000). 200 points, clustered in the shear layer; converged (p. 11).
  - Spurious eigenvalues removed from plots; convective vorticity/entropy k⁺ modes omitted (p. 13–14).
- **Cylindrical vortex sheet** (p. 11–12): top-hat jet, infinitely thin sheet at r = 1/2, inviscid. Roots found with a trust-region nonlinear solver (Coleman & Li 1996); saddles found directly by solving D_j = 0 and ∂D_j/∂k = 0 together (eq. 3.17). Derivation in App. B (p. 37).
- **Soft duct** (p. 12–13): inviscid uniform flow in a duct with p = 0 at r = 1/2 (App. C, p. 37–38). Analytic dispersion relation and saddle points.

### Weakly non-parallel (WKB) model (p. 20–25)
- WKB ansatz (eq. 4.1) with slow variable X = εx; to leading order k(ω; X) solves the local dispersion relation (eq. 4.2), so local Briggs–Bers analysis applies at each x (p. 21).
- Justified because the longest core waves are under one third of the potential-core length (p. 21).
- Applied to the LEE about the spatially developing LES mean flow at x = 0, 2, 3, 3.62, 4 (Fig. 12–13) and as continuous St⁰(x), k⁰(x) curves up to the merger (Fig. 14).
- The amplitude A(X), fixed by a solvability condition at O(ε), is singular at turning points (zero group velocity). The inner turning-point solutions and reflection coefficients are **not** computed; resonance frequencies are left to the global analysis of Schmidt et al. (2017) (p. 23, 28).

## Key equations
Lengths scaled by D, velocities by c∞, densities by ρ∞. M = U_j/c∞ is the **acoustic** Mach number, T = T_j/T∞ and M_j = M/√T (p. 11). St = fD/U_j = ω_r/(2πM) (p. 13). Normal-mode ansatz q′ = q̂(r) e^{i(kx + mθ − ωt)} (eq. 3.12, p. 10).

- **Direction of a mode** (eq. 3.5–3.6, p. 9): $k^+:\ \lim_{\omega_i\to+\infty}k_i=+\infty$, $\;k^-:\ \lim_{\omega_i\to+\infty}k_i=-\infty$.
- **Saddle / absolute frequency** (eq. 3.9, p. 9): $\dfrac{\partial\omega}{\partial k}(k^0)=0,\quad \omega^0=\omega(k^0)$. Absolute growth rate σ⁰ = ω_i⁰.
- **Local LEE eigenproblem** (eq. 3.13, p. 11):
  $$\Big[-i\omega\mathbf I+ik\mathbf A_x+\mathbf A_r\frac{\partial}{\partial r}+im\mathbf A_\theta+\mathbf A_0\Big]\hat{\mathbf q}(r)=0$$
- **Vortex-sheet dispersion relation** (eq. 3.14–3.16, p. 11):
  $$\mathcal D_j=\frac{1}{\left(1-\dfrac{kM}{\omega}\right)^2}+\frac1T\,\frac{I_m\!\left(\frac{\gamma_i}{2}\right)\left[\frac{\gamma_o}{2}K_{m-1}\!\left(\frac{\gamma_o}{2}\right)+mK_m\!\left(\frac{\gamma_o}{2}\right)\right]}{K_m\!\left(\frac{\gamma_o}{2}\right)\left[\frac{\gamma_i}{2}I_{m-1}\!\left(\frac{\gamma_i}{2}\right)-mI_m\!\left(\frac{\gamma_i}{2}\right)\right]}=0$$
  $$\gamma_i=\sqrt{k^2-\tfrac1T(\omega-Mk)^2},\qquad \gamma_o=\sqrt{k^2-\omega^2},\qquad -\pi/2\le\arg\gamma_{i,o}<\pi/2$$
  The brackets are −x K_m′(x) and x I_m′(x) evaluated at the sheet, so this is the usual pressure/displacement matching.
- **Vortex-sheet derivation** (App. B, p. 37): inner $\big[(\partial_t+M\partial_x)^2-T\nabla^2\big]p_i=0$, outer $\big[\partial_t^2-\nabla^2\big]p_o=0$ (B1); $p_i=C_iI_m(\gamma_ir)$, $p_o=C_oK_m(\gamma_or)$ (B3–B4); matching at r = 1/2: $p_i=p_o$ and $p_i'=\dfrac{(\omega-kM)^2}{T\omega^2}p_o'$ (B5), from $(\omega-kM)^2\eta=Tp_i'$ and $\omega^2\eta=p_o'$ (B6).
- **Soft-duct dispersion relation** (eq. 3.18–3.21, p. 12): $J_m(\beta)=0$ with $\beta=i\gamma_i/2$, zeros β_{m,n} (Table 1). Then
  $$k^\pm_{m,n}=\frac{-\omega M\pm\sqrt T\sqrt{\omega^2-4(T-M^2)\beta_{m,n}^2}}{T-M^2},\qquad k^0_{m,n}=\frac{-2M\beta_{m,n}}{\sqrt{T-M^2}},\qquad \omega^0_{m,n}=2\sqrt{T-M^2}\,\beta_{m,n}$$
  ω⁰ is real when M² < T (M_j < 1): duct modes are neutral in subsonic flow (p. 12). As M_j → 1, ω⁰ → 0 and k⁰ → −∞, which is the supersonic bifurcation of §5.
  Check: for M = 0.9, T = 1, (0, 1): ω⁰ = 2(0.4359)(2.4048) = 2.097, St⁰ = ω⁰/(2πM) = 0.371, k⁰D = −9.93, matching the duct column of Table 2 (0.37, −9.9). (0, 2), (0, 3), (1, 1), (1, 2), (1, 3) give 0.851/−22.8, 1.334/−35.7, 0.591/−15.8, 1.082/−29.0, 1.568/−42.0, all matching Table 2.
- **When a duct mode solves the vortex-sheet problem** (eq. 3.22–3.24, p. 13): $\mathcal D_j(k^\pm_{m,n},\omega)=1/(1-Mk^\pm_{m,n}/\omega)^2$, so $|1-k^\pm_{m,n}M/\omega|^2\gg1$ (3.23), i.e. $|M_\phi|\ll M$ with $M_\phi=\omega/k$. The sheet displacement $\eta=\dfrac{T}{\omega^2(1-M/M_\phi)^2}\dfrac{dp_i}{dr}(\tfrac12)$ (3.24) is then small, and |k|² ≫ ω² makes the outer field evanescent with $K_m(\gamma_or)\to\sqrt{\pi/(2\gamma_or)}\,e^{-\gamma_or}$.
- **Free-stream acoustic branch** (eq. 3.25, p. 14): $k=\pm\sqrt{\omega^2-z^2}$, z ∈ [0, ∞).
- **WKB ansatz** (eq. 4.1–4.2, p. 21): $q(x,t)\sim A(X)\exp\!\Big[\tfrac{i}{\epsilon}\int_0^X k(\omega;X)\,dX-i\omega t\Big]$, $\;\mathcal D(k,\omega;X)=0$.
- **Hard-walled slowly varying duct turning points** (eq. 4.3, p. 23, Rienstra): $\omega^0_{m,n}=\sqrt{1-M^2}\,\beta'_{m,n}/R(X)$, with β′ the zeros of J_m′.

> Equations were checked against page renders (p. 8–13, 21, 23, 37); the PDF text layer drops Greek letters. Points to note:
> - This eq. 3.15 has 1/(1 − kM/ω)² = ω²/(ω − kM)², "− m I_m" in the denominator and a 1/T factor in γ_i. That settles the three suspected typos in eq. 4.1 of [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), which prints 1/(ω − kM)², "+ m I_m" and no T. Use this paper's form when coding the model.
> - The text says Table 1 lists zeros "for m = 1, 2 and 3", but the table is for m = 0, 1, 2 (p. 12). §5.1 says the Fig. 20 results are for "(m = 0, n = 0)" and §5.2 lists dashed curves for "n = 0, 1 and 2", although n starts at 1 elsewhere; the Fig. 21 caption says (0, 1) (p. 31–34). Read these as n = 1, 2, 3, but check.
> - p. 25 says turning points on the "upper and lower St⁰ curves" correspond to S1 and S2 respectively. In Table 2 and Fig. 14, S1 has the **lower** St at x = 0 (0.37 vs 0.43 for (0, 1)), and the R1/R3 definitions only make sense with S1 as the lower curve. Probably a wording slip; check against Fig. 14.
> - Appendix A matrices (A_x, A_r, A_θ, A_0) are garbled in the text layer and were not transcribed; use the PDF (p. 36) if implementing the LEE.

## Data tables
**Bessel zeros β_{m,n} of J_m** (Table 1, p. 12):

| m | n = 1 | n = 2 | n = 3 | n = 4 | n = 5 |
|---|---|---|---|---|---|
| 0 | 2.4048 | 5.5201 | 8.6537 | 11.792 | 14.931 |
| 1 | 3.8317 | 7.0156 | 10.174 | 13.324 | 16.471 |
| 2 | 5.1356 | 8.4172 | 11.620 | 14.796 | 17.960 |

**Saddle points at x = 0, M = 0.9, T = 1** (Table 2, p. 17). LEE = linearized Euler, VS = vortex sheet, D = soft duct (no S2):

| (m, n) | St⁰ S1 (LEE / VS / D) | St⁰ S2 (LEE / VS) | k⁰D S1 (LEE / VS / D) | k⁰D S2 (LEE / VS) |
|---|---|---|---|---|
| (0, 1) | 0.38 / 0.37 / 0.37 | 0.43 / 0.43 | −10 / −9.6 / −9.9 | −3.6 / −3.5 |
| (0, 2) | 0.87 / 0.85 / 0.85 | 1.06 / 1.05 | −23 / −23 / −23 | −7.6 / −7.2 |
| (0, 3) | 1.38 / 1.33 / 1.33 | 1.70 / 1.70 | −36 / −35 / −36 | −12 / −11 |
| (1, 1) | 0.60 / 0.59 / 0.59 | 0.72 / 0.72 | −16 / −16 / −16 | −5.2 / −5.0 |
| (1, 2) | 1.11 / 1.08 / 1.08 | 1.37 / 1.37 | −29 / −29 / −29 | −9.3 / −8.8 |
| (1, 3) | 1.63 / 1.57 / 1.57 | 2.02 / 2.03 | −42 / −42 / −42 | −13 / −13 |

The S1–S2 St ranges are the predicted tone bands (shaded in Fig. 10).

**Approximate values read from figures** (not tabulated; verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| (0, 1) saddle merger | x/D = 3.62 (stated in text) | p. 21 |
| Merger x for (1, 1), (0, 2), (1, 2) | ≈ 3.3, 3.0, 2.9 | Fig. 14, p. 24 |
| VS saddle merger at subsonic bifurcation (T = 1) | M = 0.82 (stated), St ≈ 0.48, k_rD ≈ −5 | Fig. 20, p. 32 |
| Remaining saddle (S2) at M = 1.5 | St ≈ 0.18, k_rD ≈ −1.8 | Fig. 20–21, p. 32 |
| Lower bifurcation M_j vs T (m = 0) | ≈ 0.5 at T → 0.1, ≈ 0.82 at T = 1, ≈ 0.85–0.88 at T = 3 | Fig. 23, p. 34 |
| Tone observations (closed symbols) | (T, M_j) ≈ (0.84, 0.98) S&C 2006 (= M 0.9, T 0.84); (1.0, 0.9) this LES; (≈1, ≈0.73) S&C, below the predicted lower boundary | Fig. 23, p. 34 |
| No-tone observations (open) | M_j 1.5 LES at T = 1; S&C jets at M_j ≈ 0.3–0.7, T ≈ 1–2.7 | Fig. 23, p. 34 |
| Near-nozzle tone peak (m = 0, LES) | ≈ 120 dB/St at St ≈ 0.4 | Fig. 10a, p. 19 |

## Figures worth remembering
- **Fig. 1 (p. 3):** LES snapshot: pressure waves visible in the potential core.
- **Fig. 2 (p. 4):** Suzuki & Colonius (2006) near-nozzle SPL at M = 0.9, T_j/T∞ = 0.84 with strong m = 0 and m = 1 peaks.
- **Fig. 3 and 10 (p. 5, 19):** LES vs experiment pressure PSD at (0.02, 0.8) for m = 0, 1. Fig. 10 overlays the VS S1–S2 bands (orange) and duct saddles (dashed). This is the main validation of the tone prediction.
- **Fig. 4 (p. 6):** real part of pressure Fourier modes at tone frequencies; core waves with 1, 2, 3 radial antinodes.
- **Fig. 5 (p. 7):** empirical k–St dispersion relation on the axis: KH line (0.7U_j), sonic line −c_j, U_j − c_j asymptote, and the "smile"-shaped trapped-wave bands with zero-slope points.
- **Fig. 6–7 (p. 14, 16):** eigenvalue spectrum at St = 0.3, m = 0 for all three models, and pressure eigenfunctions of duct-like (n = 1–3) and discrete free-stream modes.
- **Fig. 8 (p. 17):** ω-to-k mapping showing the S1 and S2 saddles (duct has only S1).
- **Fig. 9 (p. 18):** model dispersion relations on top of the LES k–St map for m = 0. LEE and VS follow the data closely.
- **Fig. 11 (p. 20):** radial PSD at x = 0 vs eigenfunctions for four (m, St) cases; the free-stream mode explains the outer decay.
- **Fig. 12–14 (p. 22–24):** saddles moving together with x and merging at x = 3.62; dispersion curves narrowing with x; St⁰(x), k⁰(x) curves for four mode groups. Fig. 14a is the map used to read off turning-point positions.
- **Fig. 15–16 (p. 25–26):** schematics of reflection at a turning point and of the R1–R5 loops.
- **Fig. 17 (p. 27):** decay rate of the k⁺ duct-like mode in (x, St) for six mode groups.
- **Fig. 18–19 (p. 29–30):** phase-velocity-filtered PSD maps at chosen St and in (x, St); energy confined between nozzle and turning points, with beating antinodes.
- **Fig. 20–22 (p. 32–33):** saddle locations vs M with bifurcations at 0.82 and 1; dispersion relations at M = 0.6 (k⁻ only) and M = 1.5 (single saddle, broadband).
- **Fig. 23 (p. 34):** M_j–T map of the predicted tone region vs observed tone/no-tone jets.

## Notation
- k⁺, k⁻: modes carrying energy downstream/upstream by the Briggs–Bers criterion (sign of group velocity for propagative waves). **Not** the sign of phase speed: the core waves all have negative phase speed, yet k⁺ duct-like modes carry energy downstream.
- (m, n): azimuthal order and radial order (number of radial pressure antinodes).
- **Duct-like modes:** k⁺ and k⁻ trapped acoustic modes; later called k_T⁺ and k_d⁻ in [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) and `k_t+` in [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md).
- **Discrete free-stream mode:** the upstream k⁻ mode that couples core and free stream and is cut off at S2. This is the **guided jet mode**: k_p⁻ in [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) and [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md), k_TH⁻ in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), `k_t-` in the 2020 note. *(My mapping from the definitions; the names differ between papers.)*
- **Core modes:** duct-like plus discrete free-stream modes together.
- S1: saddle where the k⁺ and k⁻ duct-like modes meet (cut-on). S2: saddle where the k⁺ duct-like and k⁻ discrete free-stream modes meet (cut-off).
- St⁰, k⁰, ω⁰: absolute (saddle-point) values. x_t: turning-point position. R1–R5: resonance loops.
- M = U_j/c∞ (acoustic Mach number), M_j = U_j/c_j, T = T_j/T∞, M_φ = ω/k, η: vortex-sheet displacement, β_{m,n}: zeros of J_m.
- LEE: linearized Euler equations; VS: vortex sheet; D: soft duct.

## Relevance to this project
This is the theoretical source of the **guided jet mode** and the cut-on/cut-off band reasoning that the Shock Lab group screech papers rely on (CLAUDE.md: resonance and feedback in jets). It contains no experiments of its own beyond the validation spectra; the data side is an LES analysed with time-resolved spectral tools.

- **Link to screech closure:**
  - The discrete free-stream k⁻ mode here is the upstream guided jet mode that [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) found in screeching jets with POD + k_x splitting, and that [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) uses to predict A1/A2 frequencies.
  - For M_j > 1 this paper finds only S2 remaining (p. 31–33). So in supersonic jets the guided mode is propagative between its branch point (where it leaves the k = −ω branch cut, p. 15) and S2. That is the "cut-on/cut-off" band of the (0, 2) mode in EM2018 Fig. 8 and the B/S points in Mancinelli. *(My inference joining the papers; the vortex-sheet setup is the same.)*
  - The vortex-sheet equation 3.15 here is the reference form for coding that model (see the caveat box above).
  - The shock-cell-generated `k_t±` waves of [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md) are duct-like modes of this family, shifted by the shock wavenumber. [nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md) uses the same saddle-point (Briggs–Bers) language to show that shocks create a KH–guided-mode saddle.
- **Link to jet–edge tones:** the paper's closing speculation (p. 35) is followed up by [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) (KH + k_TH⁻/k_p⁻ resonance, high-St cutoff at S2, the 0.82 < M < 1 boundaries from here) and by [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md). Both agree with this paper's M = 0.82 threshold.
- **Link to impinging jets:** the guided-mode closure is one explanation for impinging tones (Tam & Ahuja 1990; Gojon & Bogey). [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md) finds external, freely propagating acoustic closure instead for the Shock Lab group impinging jets. The cut-on/cut-off test here is a quick way to check which is possible for a given M_j, T and St.
- **Methods and data requirements:**
  - **Frequency–wavenumber decomposition** (Fig. 5) needs time-resolved data with streamwise resolution fine enough for |k|D up to about 40–75 here, over several diameters. High-speed schlieren gives this in (x, t) along a line (density-gradient rather than pressure); Weightman's (x, t) Fourier split of schlieren is the same tool. Block size and overlap set ΔSt (0.0217 here), which was too coarse to resolve R3/R4 (p. 29); long records matter.
  - **Phase-velocity filtering** (zero k > 0, inverse FFT in x) is a simple way to isolate upstream-phase-speed waves in time-resolved data. Note it filters by **phase** speed: it keeps both k⁺ and k⁻ duct-like waves here, because both have negative phase speed. That is what produces the beating antinodes in Fig. 18. For screech, where the sign of k_x is used as a direction proxy (EM2018), this paper is the warning that phase and group velocity can differ in sign.
  - **Non-time-resolved PIV:** the k–St map cannot be built. The POD-pair + spatial FFT route of [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) gives the k_x content at one tone frequency only.
  - **Azimuthal decomposition** needs azimuthal arrays or full 3D data; planar schlieren and PIV mix m = 0 and m = 1 unless symmetry is used.
- **Intermittency and time variation:** the analysis is fully averaged (Welch PSDs, linear modes). It says nothing about whether the tones are intermittent or switch between mode groups. That is a natural target for the SPOD → reconstruction → Hilbert POD pipeline: reconstruct the band between S1 and S2 for one (m, n), then track its instantaneous amplitude. [raiola-2025](raiola-2025-hilbert-pod.md) uses this same LES; note its HPOD_x along +x discards negative wavenumbers and so would remove these core waves, while HPOD_t keeps them. *(My inference.)* Adaptive or band-ensemble SPOD ([yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md), [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md)) would help resolve narrow bands like R3/R4.
- **Modelling side:**
  - Three models of increasing simplicity agree closely for low n (Table 2), so the soft-duct closed form (eq. 3.19–3.21) gives the S1 cut-on in one line, and the vortex sheet gives S2. The LEE is needed only for finite-thickness effects at higher n and for the streamwise variation.
  - Limitations: linear, inviscid, mean-flow based; the WKB reflection coefficients and discrete resonance frequencies are not computed (Schmidt et al. 2017 do that with global modes); nozzle reflection is described qualitatively only (p. 25, 28).
  - SPOD/resolvent analyses of the same LES ([pickering-2020](pickering-2020-lift-up-kh-orr-jets.md), [towne-2022](towne-2022-database-reduced-complexity-modeling.md)) can be compared with these trapped-wave predictions.
- **Rocket and heated jets:** the predicted tone region depends on T and closes at M_j = 1 (Fig. 23), so trapped-wave tones are not expected in supersonic rocket plumes. This is consistent with the absence of tonal components at full scale noted in [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md). *(My inference.)*
- **Facility:** LES by Cascade Technologies/Caltech; validation data from the Bruit & Vent facility at PPRIME, Poitiers. Not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:**
  - Schmidt et al. 2017, *Wavepackets and trapped acoustic modes in a turbulent jet* (JFM 825, 1153–1181), the companion global-mode paper.
  - Tam & Hu 1989 (three families of instability waves).
  - Suzuki & Colonius 2006 (near-field phased array; source of the tone observations).
  - Jaunet et al. 2016 (tonal dynamics and sound in subsonic jets).
  - Rienstra 2003 (turning points in slowly varying ducts).
