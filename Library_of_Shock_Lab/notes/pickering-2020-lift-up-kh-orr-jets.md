---
key: "pickering-2020-lift-up-kh-orr-jets"
title: "Lift-up, Kelvin–Helmholtz and Orr mechanisms in turbulent jets"
authors: ["Pickering, E.", "Rigas, G.", "Nogueira, P. A. S.", "Cavalieri, A. V. G.", "Schmidt, O. T.", "Colonius, T."]
year: 2020
type: "article"
venue: "JFM 896, A2"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "896", "pages": "A2"}
doi: ""
arxiv: "1909.09737"
pdf: "linear-models/Pickering-EtAl_2020_Lift-Up-Kelvin-Helmholtz-And-Orr-Mechanisms-In-Turbulent-Jets.pdf"
version: "preprint"
unverified: []
group: false
facility: "Charles LES (Cascade)"
data: ["LES"]
methods: ["SPOD", "resolvent", "eddy-viscosity", "symmetry-decomposition"]
flow: ["round-jet", "subsonic", "supersonic"]
phenomena: ["streaks", "KH-wavepackets", "Orr"]
params: {"M_j": "0.4, 0.9, 1.5", "Re": "4.5×10⁵–1.76×10⁶"}
topics: ["linear-models"]
related: ["nogueira-2019-large-scale-streaky-structures-jets", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "morra-2021-colour-of-forcing-resolvent-channel", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "garnaud-2013-preferred-mode-incompressible-jets", "towne-2018-spod-relationship-dmd-resolvent", "nogueira-2026-flapping-motion-screeching-round-jets"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "nogueira-2019-large-scale-streaky-structures-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "SPOD of M_j 0.4/0.9/1.5 jet LES + global resolvent with TKE eddy viscosity map lift-up (St/m ≲ 0.1), KH and Orr regimes; dominant streak m falls roughly as 1/x"
---
# Lift-up, Kelvin–Helmholtz and Orr mechanisms in turbulent jets

- **Authors:** E. Pickering, G. Rigas, P. A. S. Nogueira, A. V. G. Cavalieri, O. T. Schmidt, T. Colonius (Caltech; ITA, Brazil; UC San Diego)
- **Source:** J. Fluid Mech. (2020) 896, A2; arXiv:1909.09737v2 (17 Jul 2020). Received 18 Sep 2019, accepted 14 Apr 2020 (p. 1). The DOI isn't printed in this arXiv version.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-models/Pickering-EtAl_2020_Lift-Up-Kelvin-Helmholtz-And-Orr-Mechanisms-In-Turbulent-Jets.pdf` (35 pp.)
- **Tags:** turbulent jet, lift-up, streaks, streamwise vortices, Kelvin–Helmholtz wavepacket, Orr mechanism, global resolvent analysis, eddy viscosity, SPOD, structural sensitivity, mechanism map, azimuthal wavenumber, LES, subsonic/transonic/supersonic

## Summary
The paper uses SPOD of three LES databases (M_j = 0.4, 0.9 and 1.5) and global resolvent analysis of their mean flows to sort the coherent structures of turbulent round jets by the linear mechanism that amplifies them. It extends the local analysis of Nogueira et al. (2019) to the full jet and to the zero-frequency limit. There, SPOD finds streaks (streamwise velocity) flanked by streamwise vortices (rolls), and the resolvent shows these are the optimal response to cross-stream "roll" forcing near the nozzle exit: the lift-up mechanism. Response mode shapes, component-wise amplitudes and a 3×3 structural sensitivity separate three mechanisms. Lift-up dominates as St/m → 0. KH dominates at moderate St for low m. Orr dominates for m = 0 at low St and wherever neither of the other two is strong. Local and truncated-domain SPOD/resolvent show the dominant streak azimuthal wavenumber scales roughly as 1/x: m ≈ 10 near the nozzle, falling to m = 1–2 far downstream. A turbulent-kinetic-energy eddy viscosity in the resolvent operator is what makes SPOD and resolvent agree.

## Key findings
- **Three mechanisms, three signatures** (p. 9, 15–21):
  - **KH** ([m, St] = [0, 0.6], also m = 1). SPOD and resolvent modes are almost indistinguishable. Phase speed c_ph ≈ 0.8, with a 90° phase jump at the critical layer. Response grows rapidly (exponentially), then saturates and decays by x/D ≈ 5. Forcing peaks within x/D ≤ 0.1 on the lip line, tilted about 45° (Orr-type forcing), and falls by at least two orders of magnitude within 2D. All velocity components have similar amplitude. Sensitivity is confined to the inner edge of the shear layer and ends around the end of the potential core (p. 16–17, Fig. 12a).
  - **Orr** ([0, 0.05–0.2]). Forcing is tilted −45° against the mean shear, and the response turns from −45° to +45° through its envelope. c_ph ≈ 0.4. The phase jump at the critical layer is weak. Response grows gradually, peaks about 20D downstream and is only weakly damped. Both forcing and response peak near the centreline, not at maximum shear. Sensitivity is spread over the whole response region, and its largest component is streamwise forcing → streamwise response (p. 17–18, Fig. 12b).
  - **Lift-up** (St → 0, m > 0). Forcing is cross-stream (radial and azimuthal velocity, i.e. streamwise-vorticity rolls) near the nozzle. Response is streamwise rolls, then streaks in u_x. At [3, 0.05] the u_x response is about an order of magnitude larger than the other components, whereas at [0, 0.05] (Orr only) u_x and u_r are similar (p. 19). At St = 0, radial and azimuthal forcing exceed the other components by two orders of magnitude (p. 14, Fig. 7). Sensitivity is spread through the domain, like Orr, but its largest component is **radial forcing → streamwise response** (p. 20, Fig. 12c).
  - Mode shapes alone don't separate the mechanisms: the low-St m = 3 wavepackets are also tilted at 45°, as for Orr. The component-wise amplitudes and the sensitivity are the discriminators (p. 19–20).
- **Mechanism map** (Fig. 13, p. 21):
  - Lift-up dominates for St/m ≲ 0.1 and becomes more dominant as St/m → 0. This is analogous to plane mixing layers, where lift-up dominates as k_x/k_z → 0 (Arratia et al. 2013).
  - For m = 0, KH gives way to Orr at St ≈ 0.3 for all three Mach numbers.
  - The Orr mechanism is probably present everywhere but dominant only "by default", where KH and lift-up are weak (p. 15). The map is an estimate, and mechanisms coexist at region boundaries (p. 21).
- **Energy distribution in m** (Fig. 4, p. 11–12): SPOD energy and resolvent gain agree qualitatively. m = 1 carries the most energy at all frequencies except St → 0, where m = 2 does. Energy then falls gradually with m. The M_j = 0.9 and 1.5 jets show the same, with m = 2 peaking as St → 0 (p. 29).
- **Streaks in the global SPOD at St → 0** (Fig. 5, p. 12–13):
  - For m = 1, a streak runs through the domain from about the end of the potential core.
  - For m = 3, streaks are present upstream and downstream of the potential core but weaken and appear to rotate slightly at x/D ≈ 15–20. The authors attribute the rotation to imperfect convergence: the "St → 0" bin still contains small non-zero frequencies.
  - The rolls sit exactly between positive and negative streaks.
  - These modes resemble the energetic space-only POD modes of Freund & Colonius (2009).
- **Resolvent at St = 0** (Fig. 5b–7, p. 13–14):
  - It reproduces the canonical lift-up sequence: forcing streamwise vorticity at the nozzle → response rolls → streaks further downstream.
  - In the x/D = 5 cross-plane (m = 3), the forcing rolls' radial velocity coincides with the streak maxima, and their purely azimuthal velocity lies between streaks. The response rolls are centred nearer the jet than the forcing rolls (Fig. 6).
  - The absence of sensitivity to azimuthal forcing follows from this phase arrangement and from the delta-function (local) definition of structural sensitivity. A finite-sized perturbation would probably show more azimuthal sensitivity (p. 21).
- **Streaks at non-zero frequency:** at small St the streaks are not stationary but rotate slowly about the jet. Streaks were found for all m ≠ 0 up to St ≈ 0.2 (p. 20).
- **SPOD–resolvent projection** |ψ₁* W u₁| (Fig. 9b, p. 17) falls from 0.94 for KH at [0, 0.6] to 0.23 at [3, 0.05]. Agreement is best where the KH low-rank behaviour is expected (p. 16). Values are tabulated below.
- **Dominant streak m vs x** (Fig. 14, p. 22):
  - Local SPOD in 2-D cross-planes over x/D = 0.5–30 gives a most energetic St → 0 wavenumber that scales as m_max ∼ 1/x + 1. It is m = 2 at x/D = 30 and increases upstream.
  - This is the inverse of the linear growth of shear-layer thickness (∼x). The authors suggest the shear-layer width sets which m is supported as St → 0.
  - It agrees with experiments by Jung et al. (2004) (x/D ≤ 6) and Nogueira et al. (2019) (x/D ≤ 8). Citriniti & George (2000) found peak energy at m = 4 at x = 3D (p. 4).
- **Truncated domains** (Fig. 15–18, p. 22–26):
  - SPOD and resolvent spectra for m ∈ [0, 15] agree "strikingly".
  - x/D ∈ [0, 10]: like the global result, but the peak m at St → 0 has increased.
  - x/D ∈ [0, 5]: low-St energy is centred at m = 6, and KH content stays at m = 0–2.
  - x/D ∈ [0, 2]: low-St energy drops, and the low-St peak moves to m ≈ 10 (p. 23).
  - m = 5 streaks fill every truncated domain. For m = 10 in x/D ∈ [0, 10], resolvent streaks decay after x/D ≈ 5, where the response rolls vanish, so steady m = 10 streaks aren't supported further downstream. SPOD there picks up a slowly rotating low-St streak, which is aliased into the St → 0 bin (p. 24).
  - High-m streaks contribute little to the total energy (Fig. 4) but are energetically significant near the nozzle (p. 26).
- **Eddy viscosity is essential.** Including a TKE-based eddy viscosity in the resolvent operator "greatly" improves SPOD–resolvent agreement, especially at low St (p. 16), and the agreement is predicated on it (p. 26). The simple model links theory to observation but would need refinement to be predictive (p. 26).
- **Higher Mach numbers** (Appendix A, p. 27–30):
  - Lift-up streaks and the resolvent forcing → rolls → streaks sequence are present at M_j = 0.9 and 1.5.
  - At M_j = 0.9 the resolvent shows a small spike at St ≈ 0.4 caused by trapped acoustic modes, slightly over-predicted relative to SPOD (p. 29).
  - At both M_j = 0.9 and 1.5 the resolvent over-predicts the m = 0 contribution (p. 29).
  - The authors conclude lift-up is present in all turbulent jets (p. 30).
- **Open question** (p. 26–27): the results don't rule out streaks arising from secondary instability of KH rollers (braid vortices). The optimal lift-up forcing is non-zero where the KH response is active, so it could come from triadic interactions involving braid vortices. Resolving this needs explicit triadic analysis.
- **Control outlook** (p. 27): tabs, chevrons and microjets impose streamwise vortices and streaks and have reduced, and sometimes increased, jet noise. Streaks can stabilise KH in a planar laminar shear layer (Marant & Cossu 2018), and chevrons weaken KH wavepackets in PSE (Sinha et al. 2016). Lift-up is therefore proposed as a mechanism that could be tuned for noise reduction.

## Setup / method
No experiments are run in this paper. All data come from LES, and the modelling is global resolvent analysis on the LES mean flow.
- **LES database** (Table 1, p. 6; Brès et al. 2017, 2018):
  - Run with the unstructured compressible solver *Charles* (Cascade Technologies). Numerics, meshing and subgrid model are in Brès et al. (2017), not this paper.
  - The M_j = 0.4 and 0.9 jets were validated against experiments at PPRIME, Poitiers (Brès et al. 2018).
  - The M_j = 0.4 jet matches the nozzle geometry and exit boundary layer of the Cavalieri et al. (2013), Jaunet et al. (2017) and Nogueira et al. (2019) experiments (p. 6). The nozzle-exit boundary layer is fully turbulent (p. 5).
  - Each database has 10,000 snapshots, interpolated onto a cylindrical grid x ∈ [0, 30], r ∈ [0, 6], θ ∈ [0, 2π] with 128 azimuthal points (p. 6). The state is q = [ρ, u_x, u_r, u_θ, T].
  - Non-dimensionalisation: U_j and D, with pressure scaled by ρ_j U_j² and St = f D/U_j (p. 6).

  | Case | M_j | Re_j | p₀/p∞ | T₀/T∞ | n_cells | Δt a∞/D | ΔSt |
  |---|---|---|---|---|---|---|---|
  | subsonic | 0.4 | 4.5×10⁵ | 1.117 | 1.03 | 15.9×10⁶ | 0.2 | 0.049 |
  | transonic | 0.9 | 1.01×10⁶ | 1.7 | 1.15 | 15.9×10⁶ | 0.2 | 0.022 |
  | supersonic | 1.5 | 1.76×10⁶ | 3.67 | 1.45 | 31×10⁶ | 0.1 | 0.026 |

  > Table 1 was read from a rendered image of p. 6. My checks: (i) the ΔSt values equal 1/(N Δt U_j/D) for N = 256-snapshot blocks, with U_j/a∞ ≈ 0.40, 0.90 and 1.50; so Table 1's ΔSt is for the 256-snapshot blocks. (ii) p₀/p∞ equals the isentropic value for each M_j, so the M_j = 1.5 jet appears ideally expanded and essentially shock-free. The paper doesn't say this. (iii) Record lengths are about 800 (M 0.4), 1790 (M 0.9) and 1500 (M 1.5) convective times D/U_j. These are my derivations, not stated in the paper.
- **SPOD** (§2.2, p. 6–7; needs time-resolved, azimuthally resolved data):
  - Data are Fourier-transformed in θ (128 points, valid to m = 64; results shown to m ≈ 30, mostly m ≤ 5) and in time with Welch blocks and a periodic Hann window. The norm is Chu's compressible energy.
  - Block choices:
    - §3.2 spectra, St ∈ [0.2, 1]: 256 snapshots per block, 50% overlap, 78 blocks, as in Schmidt et al. (2018).
    - Global St → 0 modes: after testing blocks of 256/512/1024/2048 with 50%/75% overlap, they use 1024 snapshots with 75% overlap (36 blocks). 2048 snapshots gave nearly identical modes but with only 16 blocks, so more uncertainty (p. 7).
    - Local 2-D cross-plane SPOD (x/D = 0.5–30) and truncated-domain SPOD (x/D ∈ [0, 2], [0, 5], [0, 10], m ∈ [0, 15]): 256 snapshots, 50% overlap (p. 22).
  - Trade-off: frequency resolution (block length) against convergence (number of blocks) as St → 0. Even with long blocks the "St → 0" bin holds small non-zero frequencies, so slowly rotating structures leak in (p. 7, 12, 24).
  - Maps normalise energy at each St by its sum over m, E_{m,St}/Σ_m E_{m,St} × 100. The contour maps interpolate between integer m for readability; Appendix B gives the semi-discrete version (p. 12, Fig. 23).
- **Global resolvent analysis** (§2.3, p. 8–9):
  - The compressible Navier–Stokes, energy and continuity equations are linearised about the LES mean flow (Reynolds decomposition) and Fourier-transformed in time and θ.
  - Viscosity: Schmidt et al. (2018) used a spatially uniform, altered Reynolds number. Here a mean-flow eddy viscosity acts on the fluctuations (Pickering et al. 2019 AIAA; Morra et al. 2019): μ_T = ρ̄ c k^{1/2} l_m. k is the mean TKE, and l_m is the local width of the region where TKE exceeds 10% of its maximum at each x. The constant c = 0.0065 was chosen from the good SPOD–resolvent alignment previously found for m = 0, St = 0.05–1 (p. 8, Fig. 2).
  - Numerics: 4th-order summation-by-parts finite differences (Mattsson & Nordström 2004), the polar singularity treated as in Mohseni & Colonius (2000), and non-reflecting boundary conditions on all domain boundaries.
  - The Chu norm is used for both forcing and response (W_f = W_q). Forcing acts in every equation. The SVD gives optimal gains σ and forcing/response modes v₁, u₁; only the optimal pair (n = 1) is analysed (p. 9).
  - The resolvent grid size and domain aren't stated. Fig. 2 shows the eddy viscosity on x/D ∈ [0, 30], r/D ∈ [0, 6], the same as the LES grid.
- **Structural sensitivity** (§2.4, p. 9; Qadri & Schmid 2017): S_ij = σ² Re((v₁:i) ∘ (u₁:j)*), computed for the 3 × 3 velocity forcing/response pairs. It identifies where a localised change to the operator changes the gain most.
- **Sample points:** nine (m, St) pairs, m ∈ {0, 1, 3} × St ∈ {0.05, 0.2, 0.6}, plus St = 0 for m = 1 and 3 (Fig. 8, p. 16).
- **Other diagnostics:**
  - Instantaneous u_x on unwrapped cylindrical surfaces at r/D = 0.2, 0.55, 1 and 2.5 (Fig. 3, p. 10–11).
  - Phase speed from a streamwise Fourier transform of LES pressure along the lip line (p. 16).
  - Radially integrated, component-wise Chu-norm amplitudes vs x (Fig. 7, 10, 11).

## Key equations
- State and Reynolds decomposition: $\boldsymbol q=[\rho,u_x,u_r,u_\theta,T]^T$, $\ \boldsymbol q(x,r,\theta,t)=\bar{\boldsymbol q}(x,r)+\boldsymbol q'(x,r,\theta,t)$ (eq. 2.1–2.2, p. 6).
- SPOD cross-spectral density and eigenproblem at $\omega_k=2\pi St$: $\mathbf S_{m,\omega_k}=\hat{\boldsymbol Q}_{m,\omega_k}\hat{\boldsymbol Q}^*_{m,\omega_k}$, $\ \mathbf S_{m,\omega_k}\boldsymbol W\boldsymbol\Psi_{m,\omega_k}=\boldsymbol\Psi_{m,\omega_k}\boldsymbol\Lambda_{m,\omega_k}$, with $\boldsymbol\Psi^*\boldsymbol W\boldsymbol\Psi=\boldsymbol I$ (eq. 2.3–2.4, p. 7).
- Chu compressible energy norm (eq. 2.5, p. 7):
  $\langle\boldsymbol q_1,\boldsymbol q_2\rangle_E=\iiint \boldsymbol q_1^*\,\mathrm{diag}\!\left(\dfrac{\bar T}{\gamma\bar\rho M^2},\bar\rho,\bar\rho,\bar\rho,\dfrac{\bar\rho}{\gamma(\gamma-1)\bar T M^2}\right)\boldsymbol q_2\,r\,dr\,dx\,d\theta$
- Linearised forced system: $(i\omega\boldsymbol I-\boldsymbol A_m)\boldsymbol q_{m,\omega}=\boldsymbol f_{m,\omega}$ (eq. 2.6, p. 8).
- TKE eddy viscosity: $\mu_T=\bar\rho\,c\,k^{1/2}l_m$, with c = 0.0065 (eq. 2.7, p. 8).
- Resolvent: $\boldsymbol q_{m,\omega}=\boldsymbol R_{m,\omega}\boldsymbol f_{m,\omega}$, $\ \boldsymbol R_{m,\omega}=(i\omega\boldsymbol I-\boldsymbol A_m-\boldsymbol A_{m,T}(\mu_T))^{-1}$ (eq. 2.8, p. 8).
- Weighted resolvent and SVD: $\hat{\boldsymbol R}=\boldsymbol W_q^{1/2}\boldsymbol R\,\boldsymbol W_f^{-1/2}=\hat{\boldsymbol U}\boldsymbol\Sigma\hat{\boldsymbol V}^*$. Then $\boldsymbol U=\boldsymbol W_q^{-1/2}\hat{\boldsymbol U}$ holds the responses $\boldsymbol u_n$, $\boldsymbol V=\boldsymbol W_f^{-1/2}\hat{\boldsymbol V}$ holds the forcings $\boldsymbol v_n$, and $\boldsymbol\Sigma=\mathrm{diag}(\sigma_1,\dots)$ holds the gains (eq. 2.9–2.10, p. 9).
- Structural sensitivity: $S_{i,j}=\sigma^2\,\mathrm{Re}\big((\boldsymbol v_1\!:\!i)\circ(\boldsymbol u_1\!:\!j)^*\big)$ (eq. 2.11, p. 9).
- Empirical scalings (unnumbered): lift-up dominance for $St/m\lesssim0.1$ (p. 21), and dominant streak wavenumber $m_{max}\sim 1/x+1$ (p. 22). The paper gives no constant. Reading Fig. 14 gives m − 1 ≈ 12–13 at x/D = 1 and ≈ 22 at x/D ≈ 0.5.

> Equations were checked against rendered images of pp. 6–9. The paper prints $\boldsymbol W_y^{-1/2}$ in the definition of $\boldsymbol U$ (p. 9); it should be $\boldsymbol W_q$, a typo. The Fig. 14 values are read off the plot and are approximate.

## Data tables
SPOD–resolvent projection coefficients |ψ₁* W u₁| (Fig. 9b, p. 17; read from the figure):

| m \ St | 0.05 | 0.2 | 0.6 |
|---|---|---|---|
| 0 | 0.44 | 0.66 | 0.94 |
| 1 | 0.4 | 0.72 | 0.87 |
| 3 | 0.23 | 0.31 | 0.49 |

Dominant azimuthal wavenumber of low-St (streak) energy by domain (M_j = 0.4; p. 12, 22–23):

| Domain | Dominant m as St → 0 |
|---|---|
| Global, x/D ∈ [0, 30] | 2 (m = 1 at most other St) |
| Cross-plane at x/D = 30 | 2 |
| x/D ∈ [0, 10] | higher than global (no value given) |
| x/D ∈ [0, 5] | ≈ 6 |
| x/D ∈ [0, 2] | ≈ 10 |

## Figures worth remembering
- **Fig. 2 (p. 8):** the TKE eddy-viscosity field (shown with c = 1) and the 10%-TKE contour that defines l_m.
- **Fig. 3 (p. 10):** instantaneous u_x on unwrapped cylinders at r/D = 0.2, 0.55, 1 and 2.5. KH rollers dominate inside the core for x/D ≈ 3–6, and elongated, meandering streaks appear from x/D ≈ 6 (p. 11).
- **Fig. 4 (p. 11):** SPOD λ₁ and resolvent σ₁² vs St for m = 0–5, plus the per-frequency normalised St–m maps showing the KH, Orr and lift-up regions. Fig. 19–20 (p. 28) repeat this for M_j = 0.9 and 1.5, and Fig. 23 (p. 31) gives the semi-discrete version.
- **Fig. 5 (p. 13):** 3-D streaks (u_x) and rolls (ω_x) for m = 1 and 3: SPOD at St → 0 vs resolvent forcing/response at St = 0.
- **Fig. 6 (p. 14):** x/D = 5 cross-plane, m = 3. Streaks with forcing-roll vectors (a) and response-roll vectors (b).
- **Fig. 7 (p. 15):** component-wise amplitudes vs x at St = 0. The u_x response dominates, and the u_r/u_θ forcing dominates by about two decades.
- **Fig. 8 (p. 16):** cartoon mechanism map and the nine (m, St) sample points.
- **Fig. 9 (p. 17):** u_x of SPOD, resolvent response and resolvent forcing for m = 0, 1, 3 and St = 0.05, 0.2, 0.6, with projection coefficients. Domains are x/D ≤ 30, 20 and 10 respectively.
- **Fig. 10–11 (p. 18–19):** component-wise response and forcing amplitudes vs x for the nine pairs.
- **Fig. 12 (p. 20):** 3 × 3 structural sensitivity maps for KH [0, 0.6], Orr [0, 0.05] and lift-up [3, 0]. This is the clearest single discriminator between the mechanisms.
- **Fig. 13 (p. 21):** linear mechanism maps for M_j = 0.4, 0.9 and 1.5. Red is KH, black Orr, blue lift-up.
- **Fig. 14 (p. 22):** top-three azimuthal wavenumbers of St → 0 energy vs x/D from cross-plane SPOD, with the ∼1/x fit.
- **Fig. 15–16 (p. 23–24):** truncated-domain SPOD and resolvent spectra and maps for m ≤ 15.
- **Fig. 17–18 (p. 25):** 3-D streaks for m = 5 and 10 in the truncated domains, SPOD and resolvent.
- **Fig. 21–22 (p. 29–30):** streaks and resolvent forcing/response for M_j = 0.9 and 1.5.

## Notation
- ψ_n: n-th SPOD mode. u_n and v_n: resolvent response and forcing with the n-th gain σ_n. "ψ₁ : u_x" means the u_x component of mode ψ₁ (p. 9).
- λ: SPOD eigenvalue (energy). σ²: resolvent gain. S_ij: structural sensitivity, forcing component i → response component j.
- m: azimuthal wavenumber. St = fD/U_j. Subscript j: jet centre at the nozzle exit. M_j = U_j/a_j. Re_j = ρ_j U_j D/μ_j (p. 6).
- Rolls: streamwise vortices (ω_x). Streaks: streamwise-elongated u_x fluctuations. c_ph: phase speed (units of U_j).
- l_m: mixing length (the 10%-TKE shear-layer width). μ_T: eddy viscosity. A_{m,T}: the eddy-viscosity part of the linear operator.

## Relevance to this project
This project analyses resonance and feedback in jets using schlieren, acoustics and PIV from the Shock Lab group (see CLAUDE.md). This paper is about broadband, non-resonant round jets and contains no experiments. It is still useful as a reference for the modelling toolkit and for interpreting low-frequency, non-axisymmetric content.
- **Placing tones on the mechanism map:**
  - Screech and impingement tones sit in the KH-dominated band, roughly St ≈ 0.3–1 at low m (Fig. 13). Examples are A1/A2 (m = 0) and C (m = 1) in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), with St ≈ 0.26–0.67 based on D_j and U_j.
  - The streaks occupy St ≲ 0.1–0.2, m ≥ 1 and the Orr response occupies m = 0, St < 0.3. Together they are the low-frequency "background" that a tonal SPOD or POD of the lab's jets has to be separated from.
  - The lift-up response lives mainly in u_x, about 10× the other components (p. 14, 19). My inference, not tested in the paper: POD on transverse velocity only, as in the waves note (p. 9 there), naturally de-weights streaks relative to KH and screech modes. Including u_x will let streak energy into the leading low-frequency modes.
- **Method vs data type:**
  - *SPOD (time-resolved).* It needs long, time-resolved records to reach St → 0. The paper needed 1024-snapshot blocks with 75% overlap (36 blocks) out of 10,000 snapshots, and still saw slowly rotating structures leak into the lowest bin (p. 7, 12, 24). For high-speed schlieren or microphone data, low-St analysis is limited by record length.
  - *Adaptive and band-ensemble SPOD.* These target exactly this resolution–convergence trade-off; see [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md).
  - *Azimuthal decomposition* needs full-azimuth data: 3-D LES, cross-plane stereo PIV, or a microphone ring. Planar schlieren is line-of-sight integrated and planar PIV is a single plane, so neither can resolve m directly.
  - *Local cross-plane SPOD* (Fig. 14) is the template for cross-stream stereo PIV. The 1/x scaling of the dominant m (≈ 10 at x/D ≲ 2, 2 at x/D = 30) says what azimuthal content to expect at a given station.
  - *Resolvent analysis* needs only the mean flow plus the mean TKE (for μ_T), i.e. step-1 statistics. These can come from **non-time-resolved PIV**. This is the same route as the PIV-based global stability in the waves note.
  - Building μ_T = ρ̄ c k^{1/2} l_m from PIV needs all three velocity components for k (stereo PIV, or an assumption about the missing one) and a density estimate. The waves note gets density from constant stagnation density along streamlines checked with BOS; see also [tan-2015-bos-density-axisymmetric-jets.md](tan-2015-bos-density-axisymmetric-jets.md).
  - c = 0.0065 was tuned for this LES database (p. 8). It isn't universal.
  - *Structural sensitivity* (eq. 2.11) needs only the resolvent modes. It is a cheap way to show where a mechanism "lives", for example nozzle-lip-localised (KH) vs distributed (Orr/lift-up). It could help locate receptivity regions in feedback loops.
  - *Mechanism identification checklist* (p. 9, 16–21):
    - KH: c_ph ≈ 0.8, a strong critical-layer phase jump, exponential growth then decay within about 5D, lip-localised forcing.
    - Orr: c_ph ≈ 0.4, ±45° tilting, slow growth peaking far downstream, u_x → u_x sensitivity.
    - Lift-up: u_x-dominated response, u_r/u_θ forcing, u_r → u_x sensitivity, m ≠ 0, St → 0.
    - These criteria apply to SPOD or POD modes from lab data as well.
- **Intermittency and time variation (for the SPOD → reconstruction → HPOD pipeline):**
  - The streaks meander (p. 11) and slowly rotate about the jet at small non-zero St (p. 20).
  - The authors expect streak breakdown and regeneration, and their effect on KH and Orr wavepackets and on intermittency, to matter (p. 27). Block-averaged SPOD can't resolve this, and it smears it into the lowest bins.
  - A natural use of the pipeline: rebuild the data from SPOD modes at St ≲ 0.2, m ≥ 1, then run Hilbert POD to track streak rotation rate and amplitude over time. See [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) and [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md).
  - The same approach could test whether streak amplitude modulates the KH and screech wavepacket amplitude, which the paper only speculates about (p. 27).
- **Non-axisymmetric nozzles and passive control:**
  - Tabs, chevrons and trailing-edge modifications impose streamwise vortices, and lift-up is the linear amplifier that turns them into streaks (p. 27).
  - This is relevant to [samimy-1998-rectangular-jet-trailing-edge-control.md](samimy-1998-rectangular-jet-trailing-edge-control.md) and [kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md) (trailing-edge notches and tabs on rectangular jets).
  - Streaks can weaken KH (Marant & Cossu 2018; Sinha et al. 2016; p. 27). This offers one linear-theory explanation for how such modifications change screech and mixing.
- **Modelling cross-links:**
  - [nogueira-2019-large-scale-streaky-structures-jets.md](nogueira-2019-large-scale-streaky-structures-jets.md) is the direct predecessor: local resolvent plus PIV SPOD of the same M = 0.4 jet. This paper confirms and extends it globally, and the 1/x scaling matches its x/D ≤ 8 observations (p. 22).
  - [morra-2021-colour-of-forcing-resolvent-channel.md](morra-2021-colour-of-forcing-resolvent-channel.md) discusses resolvent forcing statistics and eddy viscosity in channels (Morra et al. 2019 is cited here for eddy viscosity).
  - [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md) applies the same global resolvent framework to another flow.
  - [zhu-2021-recursive-one-way-navier-stokes.md](zhu-2021-recursive-one-way-navier-stokes.md) offers a cheaper route to the long domains that low-St global resolvent needs (p. 3).
  - [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md) likely hosts this M = 0.4 jet LES (check).
  - [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md) uses the same *Charles* LES solver family.
  - The trapped acoustic-mode spike in the M_j = 0.9 resolvent at St ≈ 0.4 (p. 29) is the same family of duct-like trapped waves (Towne et al. 2017) that the waves note finds in screeching jets. That connection is mine; the paper doesn't make it.
  - The waves note models eddy viscosity crudely with a uniform Re = 10³. This paper's TKE model is the more refined alternative.
- **Authors and facility:** this is not Shock Lab group work. The LES is by Cascade Technologies and was validated against PPRIME (Poitiers) experiments (p. 6). Nogueira (ITA at the time) is also an author of the Shock Lab group-related notes [nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md), [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md) and [nogueira-2021-wavepacket-modulation-shock-containing-jets.md](nogueira-2021-wavepacket-modulation-shock-containing-jets.md).
- **Related works cited, candidates for `/add-paper`:**
  - Schmidt et al. 2018, *Spectral analysis of jet turbulence* (JFM 855): the baseline SPOD and resolvent of the same LES.
  - Towne, Schmidt & Colonius 2018: SPOD and its relation to DMD and resolvent.
  - Pickering et al. 2019 (AIAA 2019-2454): eddy viscosity for resolvent jet models.
  - Brès et al. 2018: nozzle-exit boundary-layer state.
  - Garnaud et al. 2013b and Lesshafft et al. 2019: resolvent of jets.
  - Tissot et al. 2017a: Orr in jets.
  - Rigas et al. 2019: streaks in serrated/chevron jets.
