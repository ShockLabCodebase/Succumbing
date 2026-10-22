---
key: "schmidt-2018-spectral-analysis-jet-turbulence"
title: "Spectral analysis of jet turbulence"
authors: ["Schmidt, O. T.", "Towne, A.", "Rigas, G.", "Colonius, T.", "Brès, G. A."]
year: 2018
type: "article"
venue: "JFM 855, 953–982"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "855", "pages": "953--982"}
doi: "10.1017/jfm.2018.675"
arxiv: "1711.06296"
pdf: "modal-decomposition/Schmidt-EtAl_2018_Spectral-Analysis-Of-Jet-Turbulence.pdf"
version: "preprint"
unverified: ["journal volume, pages and DOI not printed in the held arXiv preprint"]
group: false
facility: "Charles LES (Cascade)"
data: ["LES"]
methods: ["SPOD", "resolvent", "PSD", "wavenumber-filtering"]
flow: ["round-jet", "subsonic", "supersonic", "ideally-expanded"]
phenomena: ["KH-wavepackets", "Orr", "guided-jet-mode", "Mach-wave-radiation"]
params: {"M_j": "0.4, 0.9, 1.5", "Re": "0.45–1.76×10⁶ (LES); 3×10⁴ (resolvent)", "TR": "1.03–1.45 (isothermal jets)"}
topics: ["modal-decomposition", "linear-operator-methods"]
related: ["schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "pickering-2020-lift-up-kh-orr-jets", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "towne-2018-spod-relationship-dmd-resolvent", "towne-2022-database-reduced-complexity-modeling", "schmidt-2020-guide-spod", "morra-2021-colour-of-forcing-resolvent-channel", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "garnaud-2013-preferred-mode-incompressible-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "jordan-2013-wave-packets-turbulent-jet-noise", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "schmid-2010-dynamic-mode-decomposition", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "tam-1989-three-families-instability-waves-high-speed-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
summary: "SPOD of M_j 0.4/0.9/1.5 jet LES vs mean-flow resolvent (Re 3×10⁴): low-rank KH wavepackets for 0.2 ≲ St ≲ 2 (m 0, 1), Orr packets downstream; restricted SPOD; trapped and upstream waves"
---
# Spectral analysis of jet turbulence

- **Authors:** O. T. Schmidt, A. Towne, G. Rigas, T. Colonius, G. A. Brès (Caltech; CTR Stanford; Cascade Technologies)
- **Source:** J. Fluid Mech. 855, 953–982 (2018), doi:10.1017/jfm.2018.675. This file is the **arXiv preprint** (arXiv:1711.06296v1, 16 Nov 2017, JFM LaTeX draft with "Guidelines for authors" running heads), so page layout, some wording and possibly figures differ from the published version.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Schmidt-EtAl_2018_Spectral-Analysis-Of-Jet-Turbulence.pdf` (32 pp.). Page refs are PDF pages, which equal the printed draft pages.
- **Tags:** turbulent jet, SPOD, resolvent analysis, global linear analysis, low-rank behaviour, Kelvin–Helmholtz wavepacket, Orr mechanism, critical layer, eigenvalue gap, Chu energy norm, frequency–wavenumber diagram, frequency–axial-distance diagram, spatially restricted SPOD/resolvent, Reynolds number as model parameter, trapped acoustic waves, Tam & Hu upstream waves, Mach wave radiation, LES (Charles), M_j 0.4 / 0.9 / 1.5

## Summary
The paper applies SPOD to three LES databases of isothermal round jets (M_j = 0.4, 0.9 and ideally expanded 1.5) and compares the modes and eigenvalue spectra with a global resolvent analysis of the same LES mean flows (p. 1–3). The key diagnostic is **low-rank behaviour**: a large gap between the first and second SPOD eigenvalues (or resolvent gains) at a given frequency and azimuthal wavenumber m (p. 6, 13). Where the jet is low rank (roughly 0.2 ≲ St ≲ 2, strongest for m = 0 and 1), the leading mode is a Kelvin–Helmholtz (KH) wavepacket confined to the initial shear layer, forced optimally right at the nozzle lip, and the leading resolvent response matches the leading SPOD mode closely (p. 6–7, 11–12, 16–17). Elsewhere, and in all suboptimal modes, the response is a family of similarly amplified **Orr-type** wavepackets that live downstream of the potential core, convect at about half the KH phase speed and follow the critical layer (p. 8, 12–13). This explains why PSE/local stability models succeed at some (St, m) and fail at others, notably m = 0 at low St (p. 1, 24). At the higher Mach numbers the resolvent also picks out trapped acoustic waves (M 0.9) and upstream-propagating Tam & Hu waves (M 1.5), more strongly than SPOD does (p. 21–24).

## Key findings
- **Low-rank band (M 0.4, SPOD):** clear for 0.2 ≲ St ≲ 2, peaking at St ≈ 0.6; most pronounced for m = 0 and 1 and weakening as m increases. For m = 1 the gap persists to the lowest frequencies, whereas for m = 0 it cuts off below St ≈ 0.2 (p. 6; Fig. 3, p. 7).
- **Leading SPOD mode at (m, St) = (0, 0.6)** is a compact KH-type wavepacket in the initial shear layer (0 ≲ x/D ≲ 5), roughly where the eigenvalue gap is largest. Suboptimal modes show a **double-wavepacket** structure: a KH-like packet near the nozzle plus a second packet downstream of the potential core, where the mean flow is convectively stable (p. 7–8; Fig. 4).
- **Frequency–wavenumber diagrams** along the lip line (r = 0.5) (p. 9–10; Fig. 5):
  - 0 ≤ x ≤ 5: energy follows phase speed c_ph ≈ 0.8 U_j and peaks at St ≈ 0.5 for m = 0 (slightly lower for m = 1).
  - 10 ≤ x < 30: waves travel at about half that speed (c_ph ≈ 0.4) and the PSD peaks at the lowest resolved frequency.
  - The whole-domain PSD combines both.
- **Resolvent at (0, 0.6)** (p. 11–12; Fig. 6):
  - Optimal response: KH wavepacket in the initial shear layer. Optimal forcing: confined near the nozzle lip and tilted against the mean shear, i.e. the Orr mechanism drives the KH wave.
  - Suboptimal responses: KH packet plus a downstream Orr-type packet that moves upstream and becomes more compact with mode number. Their forcing is distributed over a length comparable to the response.
- **Critical layer** (p. 12–13; Fig. 7): with c_ph estimated from the axial phase gradient of pressure on r = 0.5 (where |p| > 25% of its maximum), the KH packets of modes 1 and 2 have nearly identical c_ph. The Orr packet's c_ph decreases with x in step with the centreline velocity decay, and both packets sit on the critical layer (c_ph = ū_x). The varying c_ph explains the broad bands in Fig. 5.
- **Resolvent gain spectra reproduce the SPOD trends** (p. 13, 16; Fig. 8, 10):
  - m = 0: pronounced low rank for 0.3 ≲ St ≲ 2. Below that the KH mode becomes suboptimal (tracked by projection onto the St = 0.33 reference mode, Fig. 8 inset).
  - For all four m, the KH gain curve crosses the suboptimal curves at St ≈ 2, which ends the low-rank band.
  - m = 1: low rank continues below St = 0.2.
  - λ₁ as a percentage of total energy at each St (Fig. 10a, read from plot): m = 0 peaks at about 18% near St ≈ 0.55; m = 1 about 17–18% over St ≈ 0.3–0.5; m = 2 about 12%; m = 3 about 10%; all converge to about 5% at St = 2. σ₁² (Fig. 10b) is largest for m = 1 at low St (about 2×10⁶); for m = 0 it has a minimum near St ≈ 0.3 and a peak of about 10⁵ near St ≈ 0.5.
- **Reynolds number is a free model parameter** (p. 14–15; Fig. 9):
  - The resolvent uses a uniform molecular Re = 3×10⁴, far below the LES Re (0.45–1.76×10⁶), chosen for best agreement with the LES (p. 11, 15).
  - σ₁² rises with Re everywhere but is nearly Re-independent above Re ≈ 3×10⁴ except at the lowest m = 0 frequencies.
  - At St = 0.6, suboptimal gains follow roughly σ² ∝ Re^1.2 (dashed guide in Fig. 9c,d), while the optimal gain saturates. The two mechanisms scale differently, so Re decides which dominates at a given St: the m = 0 KH/Orr exchange shifts from St ≈ 0.25 to ≈ 0.35 as Re increases (p. 15).
  - Mettot et al. (2014) is cited to argue that RANS-eddy-viscosity linearisations are not necessarily better than this ad-hoc approach (p. 15).
- **Why SPOD and resolvent differ** (p. 15–16): they coincide only for white (spatially and temporally uncorrelated, unit-variance) forcing. The jet's nonlinear forcing has little correlation near the nozzle but significant correlation near and beyond the end of the potential core (Towne et al. 2017a), so a one-to-one match is expected only where the response is low rank.
- **Mode-by-mode comparison** (p. 16–17; Fig. 11–12):
  - Leading modes agree well wherever the spectra are low rank, e.g. St = 0.6 and 1.0 for m = 0 and 1.
  - At (0, 0.2) the leading resolvent mode is an Orr packet far downstream, whereas the leading SPOD mode peaks further upstream with a longer axial wavelength (KH type per the Fig. 12 caption).
  - Suboptimal SPOD modes have no obvious hierarchy, are distorted (less converged) and have an increasing number of successive packets along x. They cannot each be represented by a single suboptimal resolvent mode (p. 17, 19–20).
  - m = 3 and higher SPOD modes are less converged (p. 17).
- **Spatially restricted SPOD and resolvent separate the mechanisms** (p. 17–19; Fig. 13): zeroing the SPOD weight W outside a region (e.g. x > 10), or restricting resolvent forcing and response through B and C, gives separate shear-layer and developing-jet spectra. The unrestricted spectra are their superposition. The different spatial support of restricted SPOD and resolvent modes shows the downstream forcing is clearly not white.
- **Frequency scaling along x** (p. 19–20; Fig. 14): lip-line PSD of SPOD and resolvent modes vs (x, St) shows a slope change at (x, St) ≈ (6, 0.3), with potential-core end at x = 5.3. Shear-layer packets scale as St ∝ 1/x (linear thickness growth, constant velocity); developing-jet packets as St ∝ 1/x² (linear width growth, 1/x velocity decay). Higher SPOD modes show more successive packets along x.
- **Azimuthal dependence** (p. 20–21; Fig. 15, read from plot): λ₁ share falls with m at St = 0.2 and 0.5 but is nearly flat at St = 1; for m ≳ 10 it stays at about 5%, above the lower-frequency cases. σ₁² peaks at m = 1 and then falls almost monotonically.
- **Mach number effects** (p. 21–23; Fig. 16–17):
  - KH/Orr conclusions carry over to M 0.9 and 1.5. The main mismatch is the M 0.9 jet at the lowest frequency (wavepacket length and radial structure, Fig. 16e,f).
  - At M 1.5 the resolvent reproduces the super-directive **Mach wave radiation** seen in the SPOD modes (Fig. 16g–j), consistent with PSE results of Sinha et al. (2014).
  - M 0.9: **trapped acoustic waves** in the potential core (resonance exists for 0.82 < M_j < 1; Towne et al. 2017b) appear near the nozzle (Fig. 16m). Their marginally damped global eigenvalues give **pseudo-resonance peaks** in the gain, e.g. (St, m) ≈ (0.4, 0) and (0.7, 1), labelled as branches (0,1), (0,2), (1,1), (2,1), (3,1) in Fig. 19 (p. 22–23, 26).
  - M 1.5: an **upstream-propagating subsonic wave** (Tam & Hu 1989) appears further downstream (Fig. 16n). It causes a slope change in the suboptimal gain curves; at (m, St) = (0, 0.2) mode 1 is KH and mode 2 is mixed Orr/acoustic, with the acoustic part isolated over 6 ≲ x ≲ 12 near the axis (p. 24; Fig. 21e,f).
  - These acoustic phenomena are much more pronounced in resolvent modes than in SPOD modes and are invisible in the SPOD eigenvalue spectra (Fig. 18a, 20b). The authors attribute this to resonances being optimally exploited by the resolvent but not efficiently forced in the real flow, to different Re scaling, and to the choice of norm (p. 21–22, 24–25).
- **Conclusions** (p. 23–24):
  - KH packets: local spatial instabilities, c_ph ≈ 0.8 U_j, triggered near the nozzle (convective non-normality).
  - Orr packets: slower, follow the velocity decay, sustained by distributed forcing. Both peak radially at the critical layer and are optimally forced via the Orr mechanism.
  - PSE fails for m = 0 at very low St because the jet is not low rank there: PSE starts from the most unstable local wave, which is only a sub-dominant resolvent mode, and cannot represent Orr packets driven by volumetric turbulent forcing.
  - Planned next step: model the forcing's second-order statistics for a resolvent-based jet-noise model.

## Setup / method

### LES databases (p. 2–3; Tables 1–2, p. 3, 5)
- Solver: unstructured compressible LES code **Charles** (Brès et al. 2017b, AIAA J 55). Nozzle included; synthetic turbulence plus a wall model inside the nozzle give a turbulent exit boundary layer. Validation of the M 0.9 jet is in Brès et al. (2017a). A small coflow is present (Fig. 2 caption). Isothermal jets; M 1.5 is ideally expanded with a weak residual shock pattern for x ≲ 10 (p. 3).
- Non-dimensionalisation: nozzle-exit values; pressure by ρ_j U_j², lengths by D, time by D/U_j. St = ω/(2πM_j) (p. 3).
- Re ≈ laboratory values of unnamed "companion experiments" (p. 3). (The PPRIME, Poitiers jet experiments per the [towne-2022](towne-2022-database-reduced-complexity-modeling.md) and [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md) notes.)
- Data interpolated to a structured cylindrical grid over x, r, θ ∈ [0, 30] × [0, 6] × [0, 2π]; Reynolds decomposition q = q̄ + q′ (eq. 2.1).
- Flow regions (p. 3): initial shear layer (0 ≲ x/D ≲ 5 for M 0.4), developing jet (5 ≲ x/D ≲ 25), self-similar (x/D ≳ 25). Momentum thickness grows roughly linearly in all three regions (Fig. 2b).

### SPOD (p. 5–6)
- State q = [ρ, u_x, u_r, u_θ, T]; **Chu compressible energy norm** (eq. 3.1–3.2) with quadrature weights in W.
- Fourier transform in θ (m) and in time (blocks); Welch blocks of n_freq = 256 snapshots, n_ovlp = 128 (50% overlap), periodic **Hann** window. Blocks treated as independent realisations (ergodicity). CSD Ŝ = Q̂Q̂* and eigenproblem ŜWΨ = ΨΛ (eq. 3.4).
- Positive and negative m are summed after checking convergence (p. 6).
- Eigenvalue spectra λ_l(St) plotted per mode index; the red band between λ₁ and λ₂ is the low-rank indicator (p. 6).
- Requires **time-resolved** data. Spatially restricted SPOD (zero weights in W) is used to isolate regions (p. 17).
- Global energy norm means mode truncation by the domain also shapes the spectra (p. 7).

### Other spectral diagnostics (p. 8–10, 18–20)
- Frequency–wavenumber PSD of lip-line pressure (eq. 3.5), with axial windows restricting to 0 ≤ x ≤ 5 or 10 ≤ x < 30. Needs time-resolved data with good streamwise extent. Window type for the x-transform is not stated.
- Frequency–axial-distance PSD (eq. 5.1) along r₀ = 0.5, normalised by its maximum at each frequency, applied both to LES/SPOD and to resolvent modes (Fig. 14).
- Phase speed from the axial gradient of the local pressure phase, c_ph ≈ ω/(∂φ_p/∂x), only where |p| > 25% of its maximum (p. 12–13).

### Resolvent model (p. 10–11, 14–15)
- Linearised compressible Navier–Stokes about the **LES long-time mean** for each m, in input–output form (eq. 4.1–4.2). Discretisation as in Schmidt et al. (2017, JFM 825); numerics are not repeated here.
- Weighted resolvent R = W_y^{1/2} H W_f^{-1/2} with W_y = W_f = W (Chu norm). B and C only zero the sponge region (p. 11).
- Domain = LES data domain plus a sponge of width D; **950 × 195** (x × r) points.
- Solution: LU factorisation of (−iωI − A_m) and Arnoldi for the leading eigenvalues of eq. 4.10 (Sipp & Marquet 2013).
- Uniform molecular **Re = 3×10⁴** (no eddy viscosity), chosen empirically (p. 11, 15).
- Validity range: St ≳ 0.2 (domain length truncates elongated low-St responses); upper limits St ≲ 2.5 (M 0.4), ≲ 1.5 (M 0.9), ≲ 1 (M 1.5) set by grid resolution (p. 11).
- Leading 20 modes computed for m = 0 and 3 for m > 0 (p. 13); the Fig. 8 caption says 30 for m = 0.
- Mode tracking across frequency by projection ⟨q^(i), q_ref^(1)⟩_E onto a reference mode at St = 0.33 (Fig. 8 caption, p. 14).
- Spatially restricted resolvent: B and C restrict forcing and response to a sub-region (p. 17).

## Key equations
- Chu energy inner product (eq. 3.1, p. 5):
  $$\langle \mathbf q_1,\mathbf q_2\rangle_E=\iiint \mathbf q_1^*\,\mathrm{diag}\!\left(\frac{\bar T}{\gamma\bar\rho M^2},\bar\rho,\bar\rho,\bar\rho,\frac{\bar\rho}{\gamma(\gamma-1)\bar T M^2}\right)\mathbf q_2\,r\,\mathrm dx\,\mathrm dr\,\mathrm d\theta,\qquad \langle\mathbf q_1,\mathbf q_2\rangle_E=\mathbf q_1^*\mathbf W\mathbf q_2\ (3.2)$$
- Fourier expansion (eq. 3.3, p. 5): $\mathbf q(x,r,\theta,t)=\sum_m\sum_\omega\tilde{\mathbf q}_{m\omega}(x,r)\,e^{\mathrm i m\theta}e^{\mathrm i\omega t}$.
- SPOD eigenproblem (eq. 3.4, p. 6): $\hat{\mathbf S}_{m\omega_k}\mathbf W\boldsymbol\Psi_{m\omega_k}=\boldsymbol\Psi_{m\omega_k}\boldsymbol\Lambda_{m\omega_k}$, with $\hat{\mathbf S}=\hat{\mathbf Q}\hat{\mathbf Q}^*$, $\hat{\mathbf Q}_{m\omega_k}=[\hat{\mathbf q}^{(1)}_{m\omega_k}\cdots\hat{\mathbf q}^{(n_{blk})}_{m\omega_k}]$, $\langle\boldsymbol\psi^{(i)},\boldsymbol\psi^{(j)}\rangle_E=\delta_{ij}$.
- Spatio-temporal PSD (eq. 3.5, p. 9): $\bar P_{qq}=\frac{1}{n_{blk}}\sum_{l=1}^{n_{blk}}\left|\hat q^{(l)}_{m\omega\alpha}\right|^2$, α the axial wavenumber.
- Input–output system and resolvent (eq. 4.1–4.4, p. 10):
  $$(-\mathrm i\omega\mathbf I-\mathbf A_m)\hat{\mathbf q}_{m\omega}=\mathbf B\hat{\mathbf f}_{m\omega},\quad \hat{\mathbf y}_{m\omega}=\mathbf C\hat{\mathbf q}_{m\omega},\quad \mathbf H_{m\omega}=\mathbf C(-\mathrm i\omega\mathbf I-\mathbf A_m)^{-1}\mathbf B$$
- Weighted resolvent and SVD (eq. 4.5, p. 10): $\mathbf R_{m\omega}=\mathbf W_y^{1/2}\mathbf H_{m\omega}\mathbf W_f^{-1/2}=\tilde{\mathbf Y}\boldsymbol\Sigma\tilde{\mathbf F}^*$.
- Optimal gain (eq. 4.8, p. 11): $G^2_{max}=\max_{\|\hat{\mathbf f}\|_f=1}\langle\hat{\mathbf y},\hat{\mathbf y}\rangle_y/\langle\hat{\mathbf f},\hat{\mathbf f}\rangle_f=\sigma_1^2$.
- Forcing eigenproblem (eq. 4.9, p. 11): $\mathbf W_f^{-1}\mathbf B^H(-\mathrm i\omega\mathbf I-\mathbf A_m)^{-H}\mathbf C^H\mathbf W_y\mathbf C(-\mathrm i\omega\mathbf I-\mathbf A_m)^{-1}\mathbf B\tilde{\mathbf f}^{(i)}=\sigma_i^2\tilde{\mathbf f}^{(i)}$; with LU factors (eq. 4.10) and responses $\tilde{\mathbf Y}=\mathbf W_y^{1/2}\mathbf C\mathbf U^{-1}\mathbf L^{-1}\mathbf B\mathbf W_f^{-1/2}\tilde{\mathbf F}$ (eq. 4.11).
- Frequency–axial-distance PSD (eq. 5.1, p. 18): $\tilde P_{qq}=\frac{1}{n_{blk}}\sum_{l}\left|\hat q^{(l)}_{m\omega}(x,r=r_0)\right|^2$.
- Scalings (p. 19, Fig. 14): shear layer St ∝ 1/x; developing jet St ∝ 1/x².

> Equations were checked against rendered pages 5, 6, 10 and 11. Points to verify against the published JFM version:
> - **St definition.** p. 3 says time is scaled by D/U_j, but defines St = ω/(2πM_j), which only holds if ω is in acoustic units (c∞/D). Table 2 gives Δt in acoustic units.
> - **Typos in the preprint:** "Equation (4.11) is solved by first factoring" should refer to eq. 4.9 (p. 11). "The direct comparison … is the subject of §6" should be §5 (p. 13). p. 7 says "first resolvent mode at St = 0.2" in a paragraph about SPOD spectra. p. 19 cites "figure 12a-c" where Fig. 14 is meant. p. 15 gives Re = 7.5×10⁴ for *both* ends of the St ≈ 0.25–0.35 shift; one value must be a lower Re (Fig. 9a suggests the shift is towards higher St with higher Re). p. 22 cites "figure 10(a)" for trapped-mode gain peaks, but these appear in the M 0.9 gains (Fig. 17b, 19).
> - **Mode counts:** text (p. 13) says 20 resolvent modes for m = 0; Fig. 8 caption says 30.
> - The Fig. 2 momentum-thickness definition (with a coflow correction) was garbled in extraction and is not reproduced.

## Data tables
**LES parameters** (Table 1, p. 3):

| Case | M_j | Re | p₀/p∞ | T₀/T∞ | n_cells | Δt_c c∞/D | t_sim c∞/D |
|---|---|---|---|---|---|---|---|
| subsonic | 0.4 | 0.45×10⁶ | 1.117 | 1.03 | 15.9×10⁶ | 1×10⁻³ | 2000 |
| transonic | 0.9 | 1.01×10⁶ | 1.7 | 1.15 | 15.9×10⁶ | 1×10⁻³ | 2000 |
| supersonic | 1.5 | 1.76×10⁶ | 3.67 | 1.45 | 31×10⁶ | 2.5×10⁻⁴ | 500 |

**Interpolated database and SPOD parameters** (Table 2, p. 5):

| Case | Δt c∞/D | n_x | n_r | n_θ | x₁ | r₁ | n_t | n_freq | n_ovlp | n_blk |
|---|---|---|---|---|---|---|---|---|---|---|
| subsonic | 0.2 | 656 | 138 | 128 | 30 | 6 | 10,000 | 256 | 128 | 78 |
| transonic | 0.2 | 656 | 138 | 128 | 30 | 6 | 10,000 | 256 | 128 | 78 |
| supersonic | 0.1 | 698 | 136 | 128 | 30 | 6 | 5,000 | 256 | 128 | 39 |

Checks: n_t Δt = 2000 and 500, matching t_sim. T₀/T∞ = 1 + (γ−1)M_j²/2 gives 1.03, 1.16, 1.45, consistent with isothermal jets.

**Derived SPOD resolution** (my calculation, taking U_j/c∞ ≈ M_j for isothermal jets): block length 256 Δt = 51.2 (M 0.4, 0.9) or 25.6 (M 1.5) acoustic time units, so ΔSt ≈ 0.049, 0.022 and 0.026, and Nyquist St ≈ 6.25, 2.8 and 3.3. Fig. 3's St axis to 6 is consistent with this.

> With 50% overlap, standard Welch counting gives floor((n_t − 256)/128) + 1 = 77 blocks for 10,000 snapshots and 38 for 5,000, one fewer than Table 2's 78 and 39. Perhaps a partial last block is kept or the data are padded; check before reproducing the spectra.

## Figures worth remembering
- **Fig. 1 (p. 4):** instantaneous u_x of the M 0.4 jet, axial and cross-sections, with potential-core (99%) and jet-width (5%) contours.
- **Fig. 2 (p. 4):** centreline velocity (1/x decay after the core; core length grows with M) and momentum thickness for all three jets.
- **Fig. 3 (p. 7):** SPOD eigenvalue spectra for m = 0–3 (M 0.4) with the λ₁–λ₂ gap shaded red. The canonical picture of low-rank behaviour.
- **Fig. 4 (p. 8):** SPOD modes 1 and 2 for m = 0–3 at two frequencies: KH packet vs double packet.
- **Fig. 5 (p. 9):** St–α lip-line PSD for the shear-layer, developing-jet and full windows, with c_ph = 0.8 and 0.4 lines.
- **Fig. 6 (p. 12):** optimal and five suboptimal resolvent forcings and responses at (0, 0.6); inset shows the Orr-tilted forcing at the lip.
- **Fig. 7 (p. 13):** phase velocity and critical-layer overlay for resolvent modes 1–2.
- **Fig. 8 (p. 14):** resolvent gain spectra m = 0–3 with the red low-rank band and the KH-mode tracking inset.
- **Fig. 9 (p. 15):** Re dependence of σ₁² (m = 0, 1) and of the top ten gains at St = 0.6 (suboptimal ∝ Re^1.2).
- **Fig. 10 (p. 16):** λ₁ (% of total) vs σ₁² for m = 0–3: the qualitative SPOD–resolvent match.
- **Fig. 12 (p. 18):** leading SPOD vs resolvent modes at St = 0.2, 0.6, 1.0 for m = 0, 1, 3.
- **Fig. 13 (p. 19):** spatially restricted SPOD and resolvent spectra and modes separating KH and Orr regions.
- **Fig. 14 (p. 20):** St–x lip-line diagrams for SPOD and resolvent modes 1–3 (m = 0, 1), with 1/x and 1/x² scalings and the St = 0.3, x = 5.3 dividers.
- **Fig. 15 (p. 21):** λ₁ share and σ₁² vs m up to 24 at St = 0.2, 0.5, 1.
- **Fig. 16 (p. 22):** M 0.9 and 1.5 SPOD vs resolvent modes (m = 1), Mach wave radiation, and zooms on the trapped acoustic wave (M 0.9) and the Tam & Hu upstream wave (M 1.5).
- **Fig. 17 (p. 23):** λ₁ share and σ₁² for M 0.9 and 1.5.
- **Fig. 19 (p. 26):** M 0.9 gain spectra with trapped-mode branch labels (0,1), (0,2), (1,1), (2,1), (3,1). Read from the plot, the (0,1) kink is near St ≈ 0.4 and (0,2) near St ≈ 1.0 for m = 0.
- **Fig. 21 (p. 28):** M 1.5 gains and modes 1–2 at (0, 0.2), mode 2 showing the short-wavelength acoustic wave on the axis.

## Notation
- M_j = U_j/a_j; Re = ρ_j U_j D/μ_j; St = ω/(2πM_j) (as printed); subscripts j (jet) and ∞ (free stream); c∞ ambient sound speed.
- m: azimuthal wavenumber; ω: angular frequency; α: axial wavenumber (Fig. 5); c_ph (also written c_cp in Fig. 5): phase speed.
- q = [ρ, u_x, u_r, u_θ, T]: state; W: Chu-norm and quadrature weight matrix; λ_l, ψ^(l): SPOD eigenvalues and modes; n_freq, n_ovlp, n_blk: block length, overlap, number of blocks.
- A_m: linearised N–S operator; B, C: input and output (restriction) matrices; H: resolvent; R: weighted resolvent; σ_i, f̃^(i), ỹ^(i): gains, forcing and response modes.
- P̄_qq: frequency–wavenumber PSD; P̃_qq: frequency–axial-distance PSD.
- "KH-type" (modal, shear-layer) and "Orr-type" (non-modal, downstream) wavepackets.

## Relevance to this project
This is a core reference for the SPOD step of the CLAUDE.md workflow and for interpreting jet SPOD spectra against linear models. It is simulation only (LES plus mean-flow resolvent); there are no Shock Lab group data.

- **Data requirements of each method:**
  - SPOD, the St–α diagram and the St–x diagram all need **time-resolved** data with enough record length for many blocks. This suits high-speed schlieren and microphone arrays, not 2 Hz PIV.
  - The resolvent needs only a **mean flow**, so a PIV mean field (non-time-resolved) is enough to build it, as done in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md). Validating it then needs time-resolved data (SPOD) or a POD pair from PIV at a known tone.
- **Practical SPOD template for lab data:**
  - Block parameters here (256 snapshots, 50% overlap, Hann, about 78 blocks) are a reasonable baseline; report ΔSt and n_blk.
  - Plot the full eigenvalue spectrum with the λ₁–λ₂ gap shaded, and λ₁ as a percentage of total energy per frequency. In screeching or impinging jets a tone should show up as a sharp low-rank spike; the broadband KH band and the Orr "background" set the context.
  - **Spatially restricted SPOD** (zero weights in W) is directly applicable to schlieren: e.g. separate the near-nozzle shear layer from the impingement region or from downstream shock cells.
  - The St–x diagram (Fig. 14) is an easy way to locate where in x each frequency is energetic and to spot 1/x vs 1/x² scaling regions.
  - The St–α diagram with sub-region windows separates downstream KH (c_ph ≈ 0.8 U_j) from slower waves; with negative α retained, the same plot shows upstream guided or trapped waves in screech data.
- **Intermittency and the SPOD → reconstruction → HPOD pipeline:**
  - SPOD here is block-averaged and assumes stationarity; the paper itself notes that unforced wavepackets are intermittent (Cavalieri et al. 2011; p. 1–2) but resolves none of that in time.
  - The low-rank (KH) band is where a reconstruction from SPOD mode 1 captures most of the coherent energy at each frequency (about 15–20% of total at peak, Fig. 10a). Hilbert POD on such a reconstruction ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)) would then track amplitude and frequency modulation of the KH packets. *(My inference, not done in the paper.)*
  - Where the spectrum is not low rank (m = 0, St < 0.3; high St), many similarly energetic Orr modes are needed, so a mode-1 reconstruction will miss much of the dynamics.
- **Modelling side:**
  - A mean-flow resolvent with a tuned uniform Re (3×10⁴ here) reproduces the leading SPOD modes in the low-rank band and the qualitative gain trends. The Re choice changes which mechanism dominates, so it is a real model parameter, not a detail (p. 14–15).
  - [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) replaces the uniform Re with a TKE eddy viscosity on the same three LES and adds lift-up streaks at St → 0. It agrees with this paper that KH gives way to Orr near St ≈ 0.3 for m = 0 at all three Mach numbers.
  - [morra-2021-colour-of-forcing-resolvent-channel.md](morra-2021-colour-of-forcing-resolvent-channel.md) shows that the true forcing CSD recovers the response exactly; it cites this paper as a case where white forcing works reasonably for jets. The restricted-domain result here (Fig. 13) already shows the downstream forcing is not white.
  - [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md) uses a uniform Re = 10³ in its global analysis; compare with 3×10⁴ here.
  - [zhu-2021-recursive-one-way-navier-stokes.md](zhu-2021-recursive-one-way-navier-stokes.md) offers a cheaper marching alternative to the global resolvent, but drops upstream modes, which this paper shows the resolvent captures at M 0.9 and 1.5. [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md) adds time-horizon discounting to biglobal resolvent analysis.
- **Screech and resonance connections:**
  - The trapped acoustic waves (M 0.9) and Tam & Hu upstream waves (M 1.5) are the same wave families that close screech and impingement loops: see [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [jordan-2018-jet-flap-interaction-tones.md](jordan-2018-jet-flap-interaction-tones.md) and [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md).
  - The resolvent amplifies these waves more than they appear in SPOD of a free jet (p. 21–22, 24–25). In a screeching or impinging jet, where a feedback loop does force them efficiently, the SPOD and resolvent should agree better on them. *(My inference.)*
  - The M 1.5 jet is ideally expanded (no screech), so this paper says nothing about shock–KH interaction; see [nogueira-2021-wavepacket-modulation-shock-containing-jets.md](nogueira-2021-wavepacket-modulation-shock-containing-jets.md).
- **Same datasets elsewhere:** the M 0.9 LES is the public database in [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md) (which also notes the St = 0.2 SPOD–resolvent mismatch due to Orr modes), and is used in [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md). [von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md) offers an alternative estimator. [nogueira-2019-large-scale-streaky-structures-jets.md](nogueira-2019-large-scale-streaky-structures-jets.md) covers the streaks below this paper's St ≥ 0.2 range.
- **Rocket noise:** the M 1.5 resolvent reproducing super-directive Mach wave radiation (Fig. 16g–j) supports wavepacket/resolvent source models for supersonic jet noise, mentioned as a successor to SP-8072-type models in [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md). These jets are cold (isothermal), unlike rocket plumes.
- **Facility:** none; LES by the Caltech/Stanford/Cascade group, with Re matched to unnamed companion experiments. Not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:**
  - Towne, Schmidt & Colonius (2018), SPOD and its relation to DMD and resolvent.
  - Schmidt et al. (2017), wavepackets and trapped acoustic modes (JFM 825); its PDF is already in `Paper_PDFs/` (`Schmidt-EtAl_2017_Wavepackets-And-Trapped-Acoustic-Modes-...`), so link its note once it exists.
  - Towne et al. (2017b), acoustic resonance in the potential core of subsonic jets (JFM 825).
  - Tissot et al. (2017), critical layer and Orr mechanism in jets.
  - Brès et al. (2017b), unstructured LES of supersonic jets (AIAA J 55).
  - Tam & Hu (1989), three families of instability waves.
