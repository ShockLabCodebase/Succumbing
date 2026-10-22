---
key: "davey-2025-hpod-sphere-wake"
title: "Studying propagating turbulent structures in the near wake of a sphere using Hilbert proper orthogonal decomposition"
authors: ["Davey, S.", "Atkinson, C.", "Soria, J."]
year: 2025
type: "preprint"
venue: "arXiv:2507.19167"
bib: {}
doi: ""
arxiv: "2507.19167"
pdf: "time-frequency-methods/Davey-EtAl_2025_Studying-Propagating-Turbulent-Structures-In-The-Near-Wake-Of-A-Sphere-Using.pdf"
version: "preprint"
unverified: []
group: false
facility: "LTRAC water tunnel, Monash University"
data: ["PIV"]
methods: ["POD", "POD-pair", "HPOD", "Hilbert-transform", "phase-averaging"]
flow: ["wake"]
phenomena: ["coherent-structures", "flapping"]
params: {"Re": "7780 (Re_D)", "D": "40 mm", "U∞": "200 mm/s"}
topics: ["time-frequency-methods", "modal-decomposition"]
related: ["raiola-2025-hilbert-pod", "horel-1984-complex-principal-component-analysis", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "weightman-2019-sound-production-impinging-supersonic-jets", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i"]
cites: ["edgington-mitchell-2014-coherent-structure-helical-screech-mode", "horel-1984-complex-principal-component-analysis", "kriegseis-2021-hilbert-transform-revisited-hpod", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "weightman-2017-phase-lag-supersonic-jet-impingement"]
summary: "Streamwise (space-only) Hilbert POD of 1 Hz PIV of a sphere wake (Re_D 7780) identifies POD pairs; cheaper test: Hilbert-transform each POD mode, mutual ∓0.5π matches"
---
# Studying propagating turbulent structures in the near wake of a sphere using Hilbert proper orthogonal decomposition

- **Authors:** S. Davey, C. Atkinson, J. Soria (Laboratory for Turbulence Research in Aerospace and Combustion (LTRAC), Monash University)
- **Source:** arXiv:2507.19167v1 [physics.flu-dyn] (preprint, 25 Jul 2025)
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Davey-EtAl_2025_Studying-Propagating-Turbulent-Structures-In-The-Near-Wake-Of-A-Sphere-Using.pdf` (37 pp.)
- **Tags:** Hilbert POD (HPOD), spatial (streamwise) Hilbert transform, analytic signal, POD mode pairing, phase averaging, non-time-resolved PIV, sphere wake, bluff-body wake, flapping, pulsation, water tunnel

## Summary
The paper runs POD and Hilbert POD on 12,600 non-time-resolved planar PIV fields of the near wake of a 40 mm sphere at Re_D = 7780 in a water tunnel. Because the data are sampled at 1 Hz, the Hilbert transform is taken along the **streamwise direction** instead of time. Each HPOD mode is therefore complex, with real and imaginary parts shifted by 90° in space, and stands for one streamwise-propagating structure (p. 5, 8–9). The HPOD modes are used to find which POD modes form pairs (1–2, 4–5, 6–8, 9–10) through a least-squares phase fit and correlation/R² checks. A cheaper route gives the same pairs without running HPOD: Hilbert-transform each POD mode in x and look for mutual best matches at ∓0.5π (p. 12–14, 19–21). The paper stresses that HPOD filters out non-propagating content, while the shortcut forces propagation onto structures that may not propagate, so both add non-physical artefacts. Neither gives temporal information, so **no instantaneous frequency is extracted** (p. 34–35).

## Key findings
- **Energy per mode** (p. 9–10, Fig. 2, Table 2):
  - The first three HPOD modes hold 7.70, 4.53 and 3.70% of the TKE of X^a. The first three POD modes hold 4.8, 3.39 and 2.55% of the TKE of X.
  - HPOD needs about 0.58× as many modes as POD to reach 25–95% TKE, and 0.70× for 99%.
  - The two percentages are not directly comparable: the total "TKE" of X^a is 571,871 m²/s² against 300,542 m²/s² for X, because X^a has an imaginary part (p. 9). The ratio is ≈1.90 (my calculation).
- **HPOD ↔ POD correspondence** (Table 3, p. 13–14). Δφ is the phase offset of the HPOD mode that best fits each POD mode:
  - HPOD 1 ↔ POD 1, 2: R = 0.89, 0.97; R² = 0.78, 0.93; Δφ = 1.71π, 1.18π, so about 90° apart.
  - HPOD 2 ↔ POD 4, 5: R = 0.84, 0.96; R² = 0.65, 0.91; Δφ = 1.70π, 1.21π, also about 90° apart.
  - HPOD 3 ↔ POD 6, 8: R = 0.82, 0.76; R² = 0.65, 0.50; Δφ = 1.52π, 0.88π, more than 90° apart.
  - HPOD 4 ↔ POD 9, 10: R = 0.85, 0.80; R² = 0.70, 0.49; Δφ = 1.10π, 0.50π, more than 90° apart.
  - POD 3 and POD 7 match only weakly (R² = 0.26, 0.29).
  - Comparing the phase-averaged pairs with the HPOD modes gives R² = 0.81, 0.76, 0.57, 0.61 (Table 4, eq. 44).
- **Snapshot-by-snapshot phase agreement** (Fig. 9, p. 19):
  - The joint PDFs of each HPOD-mode phase φ^a_k against its POD-pair phase φ_{i,j} lie along the diagonal.
  - The panel titles give correlations of ≈0.67 (HPOD 1; POD 1,2), 0.70 (HPOD 2; POD 4,5), 0.57 (HPOD 3; POD 6,8) and 0.50 (HPOD 4; POD 9,10).
  - All phases are referenced to the first snapshot.
- **Shortcut: Hilbert transform of single POD modes** (Table 5, p. 20–21):
  - For each of the first ten POD modes, the best-matching other POD mode sits at Δφ = ∓0.5π.
  - A pair is defined as two modes that are **mutual** best matches with opposite-sign shifts. This gives 1–2, 4–5, 6–8 and 9–10, the same pairs as HPOD.
  - POD 3 → 2 and POD 7 → 9 are one-way matches, so they are not pairs.
  - R ranges from 0.60 to 0.88, and R² of the phase averages from 0.65 to 0.89.
  - The fit is asymmetric: mode 1 → 2 gives R² = 0.89, but 2 → 1 gives 0.76. Mode 2 has non-propagating near-wake content (x/D < 2) that mode 1 lacks, and the Hilbert transform "propagates" it (p. 20–22).
- **Filtering artefacts of the Hilbert transform** (p. 11–12, 14–18, 22–24, 34):
  - HPOD modes are more symmetric or antisymmetric than the POD modes.
  - They are weaker directly behind the sphere and stronger downstream.
  - Non-propagating near-wake structures are suppressed.
  - The modes differ from POD near the ends of the domain (x/D ≈ 5).
  - Out-of-plane (3-D) motion seen in planar data is filtered out.
  - The shortcut keeps more of the POD asymmetry and downstream intensity, but it is still filtered.
- **Wake physics** (p. 14–18, 25–34):
  - **POD 1–2 / HPOD 1:** wake **flapping**, with planar-antisymmetric u′ and alternating v′. POD 3 looks similar but is asymmetric, which suggests the flapping has an out-of-plane component.
  - **POD 4–5 / HPOD 2:** streamwise **pulsation**. The low-velocity recirculation region deforms, and vorticity extends towards the centreline.
  - **POD 6–8 / HPOD 3:** flapping with a shorter wavelength.
  - **POD 9–10 / HPOD 4:** periodic streamwise fluctuations. Structures are round for x/D < 2 and V-shaped for x/D > 2. The planar Reynolds stress dips near x/D ≈ 2 (p. 32–34).
  - The phase-averaged TKE of the flapping packets grows until x/D ≈ 2, then decays by x/D ≈ 3 (p. 25–28).
- **Conclusion** (p. 33–35):
  - HPOD gives more consistent, easier-to-read structures, but it is hard to tell real structure from filter artefact, especially for 2-D measurements of a 3-D flow.
  - The shortcut is computationally cheap and avoids the HPOD filtering. However, it forcibly propagates structures that may not propagate.
  - With non-time-resolved data, "the temporal information of the structures is not given by either decomposition" (p. 35).

## Setup / method
- **Facility** (LTRAC, Monash; the authors are not in the Shock Lab group) (p. 6–7, Fig. 1):
  - Vertical water tunnel with downward flow. The test section is 1.5 m long, 0.25 × 0.25 m, with 15 mm acrylic walls.
  - 16:1 contraction with honeycomb and screens. Seeding and filtration run through an auxiliary circuit, which is isolated during runs.
  - The sphere is held from upstream by a sting, 9.3 mm in diameter and tapering to 4.65 mm over its last 100 mm, on a thin crossbeam of aerofoil sections.
  - The sphere has D = 40 mm and is 3-D printed (Phrozen Sonic Mighty 8k, 35 µm layers, 22 µm planar resolution). It has a 2.5 mm shell, internal conical supports and a mounting boss.
- **Conditions and PIV** (Table 1, p. 9; p. 7–8):

  | Parameter | Value |
  |---|---|
  | U∞ | 200 mm/s |
  | D | 40 mm |
  | Re_D | 7780 |
  | t_c = D/U∞ | 0.2 s |
  | Background turbulence | 2% |
  | Δt between laser pulses | 1 ms (0.005 t_c) |
  | ΔT between fields | 1 s (5 t_c), i.e. 1 Hz, **not time-resolved** |
  | Field of view | 190 × 190 mm (4.7D × 4.7D); from just behind the sphere to x/D ≈ 5.2, ±2.3D |
  | Camera / optics | PCO Panda 26 DS, 5120 × 5120 px (2.5 µm pixels); 50 mm Zeiss lens at f/2.8; 37 µm/px |
  | Depth of field / sheet thickness | 5.0 mm / 0.3 mm |
  | Seeding | 11 µm glass spheres, particle image ≈1.6 px |
  | Lasers | 2 × 400 mJ Nd:YAG, 7 ns pulses; BeagleBone Black pulse generator |
  | Interrogation window / grid | 64 × 32 px / 32 × 16 px (0.06D × 0.06D / 0.03D × 0.015D) |
  | N_T fields / N_S vectors per field | 12,600 / 50,000+ |
  | Validation rate | 97.7% (2.3% replaced) |
  | Fluctuation uncertainty σ_u′ | 1.2 × 10⁻³ m/s (0.006 U∞) |

  > The text on p. 7 says U∞ = 200 **m/s**. This is a typo: Table 1 gives 200 mm/s, which is consistent with Re_D = 7780 in water and t_c = 0.2 s.

- **PIV processing** (p. 8):
  - Mean background images are subtracted.
  - Vectors come from 2C-2D multigrid/multipass cross-correlation digital PIV (MCCDPIV; Soria 1996), with an 8-point Hart filter.
  - Outliers are rejected with a 20 px maximum displacement and a normalised median test (threshold 2 standard errors). Rejected vectors are replaced by a 2nd-order polynomial fit to their 13 nearest neighbours.
  - Uncertainty (eq. 28–29): the 95% confidence interval is 0.06 px, i.e. σ = 0.03 px, or 1.1 × 10⁻³ m/s for instantaneous velocities. The mean-velocity uncertainty is 4.0 × 10⁻⁴ m/s, taking the maximum Reynolds stresses as ≈0.05 U∞².
- **POD** (eq. 30–34, p. 8–9):
  - X is an N_T × 2N_S matrix: each row is one snapshot, with u′ and v′ for all points stacked side by side.
  - Snapshot POD is used because N_S > N_T. C = XXᵀ is N_T × N_T, and CΦ = λΦ.
  - a_k(t_m) = Φ_{m,k}, so the temporal coefficients are the unit eigenvectors. ψ_k = (ΦᵀX)_k, so the modes carry the amplitude.
  - Snapshots are 5 t_c apart and are treated as statistically independent. No time ordering is used.
- **HPOD (spatial)** (eq. 18–19, 35, p. 5, 9):
  - Form X^a = X + i H_x[X], with the Hilbert transform taken along x (streamwise).
  - Repeat the snapshot-POD steps on X^a. This gives real eigenvalues λ^a_k, complex coefficients a^a_k(t) and complex modes ψ^a_k(x).
  - **Not stated in the paper:**
    - How the discrete H_x was computed (for example, FFT along x for each y row) and how padding, windowing or the domain edges were handled.
    - Whether u′ and v′ were transformed separately (implied by the stacking).
    - Whether C for complex X^a uses the conjugate transpose. The paper writes XXᵀ, but real eigenvalues need X^a X^{aH}.
- **Pairing via HPOD** (eq. 36–44, p. 12–14):
  - For each HPOD mode k, find the offset Δφ^a_{k,j} that best maps it onto each POD mode j, solving for all j at once by least squares (eq. 40), then a four-quadrant arctangent (eq. 41).
  - Score each fit by its correlation coefficient R (eq. 42) and its R² (eq. 43).
  - Compare the phase average of each candidate pair with the HPOD mode for φ = 0 to 2π in steps of 0.01π (eq. 44).
- **Pairing via the Hilbert transform of POD modes** (eq. 45–50, p. 19–20):
  - Same procedure, but the HPOD mode is replaced by (ψ_k)^a = ψ_k + i H_x[ψ_k].
  - The cost is one spatial Hilbert transform per POD mode plus a 2 × 2 least-squares solve. There is no second (complex) eigendecomposition.
  - The paper calls HPOD "computationally-intensive" (p. 34). NCI HPC resources are acknowledged (p. 35).
- **Phase averaging** (eq. 51–54, p. 25):
  - Snapshots with φ_{i,j} = φ are averaged. N_φ is the number of fields per phase, but the **bin width is not given**.
  - Outputs: phase-averaged velocity (fluctuation plus mean), vorticity, planar Reynolds stress ⟨u′v′⟩ and TKE.
  - Figures show φ = 0 to 5π/6 in steps of π/6.
- **Modelling and simulation:** none in this paper. There is no stability or resolvent analysis and no LES/DNS. The only reduced-order model is the truncated POD/HPOD reconstruction (eq. 2, 22).
  - The introduction reviews sphere-wake regimes from the literature (p. 2–3):
    - Re_D < 20: laminar, axisymmetric, no recirculation.
    - Re_D ≈ 25: a vortex ring forms near the rear stagnation point.
    - Re_D ≈ 130: the ring starts to oscillate.
    - Re_D ≈ 210: a double-threaded wake forms.
    - Re_D ≈ 300: single-frequency shedding.
    - Re_D ≈ 400: hairpin vortices.
    - 400 < Re_D < 500: planar symmetry is lost.
    - Re_D ≳ 800: shear-layer Kelvin–Helmholtz shedding.
    - Re_D ≈ 1000: small-scale shedding from the main vortical structure.
    - Periodic fluctuations persist up to Re_D = O(10⁶).
  - LES and DES have been favoured over DNS at high Re ([12–18], p. 2). No comparison with simulation is made.

## Key equations
Notation: f(x,t) is the fluctuation field; ψ_k, a_k and λ_k are the POD modes, coefficients and eigenvalues; superscript a means the HPOD/analytic version.

- POD expansion and energy fraction (eq. 1–3, p. 3–4):
  $\mathbf f(\mathbf x,t)=\sum_{k=1}^{K}a_k(t)\psi_k(\mathbf x)$, $\;TKE=100\times\sum_{k=1}^{\hat K}\lambda_k\big/\sum_{k=1}^{K}\lambda_k\ \%$.
- Snapshot POD (eq. 7–9, p. 4):
  $C(t,t')=\int_S\mathbf f(\mathbf x,t)\mathbf f(\mathbf x,t')\,d\mathbf x$, $\;\int_T C(t,t')a(t')\,dt'=\lambda a(t)$, $\;\psi(\mathbf x)=\int_T\mathbf f(\mathbf x,t)a(t)\,dt$.
- Phase from a POD pair, and phase averaging (eq. 10–13, p. 4):
  $a_i=\sqrt{2\lambda_i}\cos\phi_{i,j}$, $a_j=\sqrt{2\lambda_j}\sin\phi_{i,j}$, $\;\phi_{i,j}(t)=\tan^{-1}\!\Big(\dfrac{a_j/\sqrt{2\lambda_j}}{a_i/\sqrt{2\lambda_i}}\Big)$, $\;\tilde{\mathbf f}(\mathbf x,\phi)=\sum_k a_k(t)\psi_k(\mathbf x)\,\big|\,\phi_{i,j}(t)=\phi$.
- Analytic signal and **temporal** Hilbert transform, for time-resolved data (eq. 14–17, p. 5):
  $\mathbf f^a=\mathbf f+i\mathcal H[\mathbf f]$, $\;\mathcal H[\mathbf f](t)=\dfrac1\pi\int_{-\infty}^{\infty}\dfrac{\mathbf f(\mathbf x,\tau)}{t-\tau}\,d\tau$ (principal value implied), $\;\mathcal H[\mathbf f]=\mathcal F^{-1}\big[-i\,\mathrm{sgn}(f)\,\mathcal F[\mathbf f]\big]$. This is a ∓90° shift of each Fourier component; here f is frequency.
- **Spatial (streamwise)** Hilbert transform, for non-time-resolved data (eq. 18–19, p. 5):
  $\mathcal H_x[\mathbf f]=\dfrac1\pi\int_{-\infty}^{\infty}\dfrac{\mathbf f((\xi,\dots),t)}{x-\xi}\,d\xi$, $\;\mathbf f^a_x=\mathbf f+i\mathcal H_x[\mathbf f]$, which is substituted into eq. 7–9.
- **Instantaneous amplitude and phase** of HPOD mode k (eq. 20–21, p. 5):
  $|a^a_k(t)|=\sqrt{\Re(a^a_k)^2+\Im(a^a_k)^2}$, $\;\phi^a_k(t)=\tan^{-1}\!\big(\mp\Im(a^a_k)/\Re(a^a_k)\big)$.
  The amplitude is the strength of the mode in each snapshot. The phase places the mode shape between ℜψ^a_k (at 0°) and ℑψ^a_k (at ∓90°). **No instantaneous frequency (dφ/dt) is defined**, since the data have no time ordering.
- Reconstruction (eq. 22, p. 5): $\hat{\mathbf f}^a=\sum_{k=1}^{\hat K}a^a_k(t)\psi^a_k(\mathbf x)$. Its real part is the reduced-order model; it favours propagating content but carries Hilbert artefacts.
- Analytic signal of POD modes (eq. 23–26, p. 6):
  $(\psi_k)^a=\psi_k+i\mathcal H_x[\psi_k]$. Because $\mathcal H_x$ is linear, $\sum_k a_k(t)(\psi_k)^a=\mathbf f+i\mathcal H_x[\mathbf f]=\mathbf f^a_x$. These modes rebuild the analytic signal, but they are **not** the HPOD modes, because the filtering comes after the decomposition.
- HPOD mode shape at a given phase (eq. 36–38, p. 12):
  $\mathbf f=\Re(\mathbf f^a)=\sum_k\big[\Re a^a_k\,\Re\psi^a_k-\Im a^a_k\,\Im\psi^a_k\big]$. With $\Re a^a_k=|a^a_k|\cos\phi^a_k$ and $\Im a^a_k=-|a^a_k|\sin\phi^a_k$, this gives $\psi^a_k(\mathbf x,\phi^a_k)/|a^a_k|=\cos\phi^a_k\,\Re\psi^a_k+\sin\phi^a_k\,\Im\psi^a_k$.
- Matching an HPOD mode to POD modes (eq. 39–41, p. 12–13):
  $\psi_j=\big[\cos\Delta\phi^a_{k,j}\ \ \sin\Delta\phi^a_{k,j}\big]\begin{bmatrix}\Re\psi^a_k\\-\Im\psi^a_k\end{bmatrix}$.
  For all j at once: $\big[\cos\Delta\phi^a_{k,\cdot}\ \ \sin\Delta\phi^a_{k,\cdot}\big]^T=(AA^T)^{-1}A\,\Psi^T$, where $A=\begin{bmatrix}\Re\psi^a_k\\-\Im\psi^a_k\end{bmatrix}$ is 2 × N and $\Psi=[\psi_1\ \dots\ \psi_K]^T$. Then $\Delta\phi^a_{k,j}=\tan^{-1}(\sin/\cos)$; it must be four-quadrant, since values reach 1.71π.
  The −ℑ accounts for the minus sign the Hilbert transform introduces for positive frequencies (eq. 16), which reverses the HPOD phase relative to the motion (p. 12).
- Match metrics (eq. 42–44, p. 13–14):
  $\mathcal R_{k,j}=\dfrac{\mathrm{cov}(\psi^a_k(\mathbf x,\Delta\phi^a_{k,j}),\psi_j)}{\sqrt{\mathrm{var}(\cdot)\,\mathrm{var}(\psi_j)}}$, $\;R^2_{k,j}=1-\dfrac{\sum(\psi^a_k(\mathbf x,\Delta\phi^a_{k,j})-\psi_j)^2}{\sum\psi_j^2}$, $\;R^2_{k,(i,j)}=1-\dfrac{\sum(\psi^a_k(\mathbf x,\phi+\Delta\phi^a_{k,i})-\tilde\psi_{i,j}(\mathbf x,\phi))^2}{\sum\tilde\psi_{i,j}^2}$.
- Shortcut using the Hilbert transform of a POD mode (eq. 45–50, p. 20):
  $(\psi_k)^a(\mathbf x,\phi_k)=\cos\phi_k\,\psi_k+\sin\phi_k\,\mathcal H_x[\psi_k]$. The least-squares fit is the same as eq. 40 with $A=\begin{bmatrix}\psi_k\\\mathcal H_x[\psi_k]\end{bmatrix}$. R and R² are defined as in eq. 42 and 44.
- Phase-averaged quantities (eq. 51–54, p. 25):
  $\begin{bmatrix}\tilde u'\\\tilde v'\end{bmatrix}(\mathbf x,\phi)=\dfrac1{N_\phi}\sum_k a_k\psi_k\,\big|\,\phi_{i,j}=\phi$. Add the mean to get $\tilde u,\tilde v$. Then $\tilde\omega=\partial\tilde v/\partial x-\partial\tilde u/\partial y$ and $\widetilde{TKE}=\tilde u'^2+\tilde v'^2$.

> Equations were read from rendered page images, but some points need checking before coding:
> - **Signs:** eq. 38 uses +ℑψ^a, eq. 39–40 use −ℑψ^a, eq. 46 uses +H_x, and eq. 21 carries ∓. Check against p. 5, 12–13 and 20. Then confirm numerically that the structure moves downstream as φ increases.
> - **Normalisation:** eq. 33–34 put the amplitude in the modes (a_k is a unit eigenvector), while eq. 10–12 assume |a_k| ~ √(2λ_k). The R² metrics (eq. 43, 44, 50) depend on scale, and the mode normalisation used for them is not stated.
> - **ψ̃_{i,j} in eq. 44 and 50:** it is unclear whether this is the phase average of the data (eq. 13) or the combination of the two modes. The colour-bar scale (×10⁻², Fig. 5) suggests mode shapes.

## Data tables
**Modes needed to reach a given share of TKE** (Table 2, p. 10). Ratios were rechecked, e.g. 7/12 = 0.58 and 4148/5904 = 0.70.

| TKE [%] | POD modes | HPOD modes | Ratio |
|---|---|---|---|
| 25 | 12 | 7 | 0.58 |
| 50 | 65 | 38 | 0.58 |
| 75 | 311 | 180 | 0.58 |
| 90 | 1027 | 593 | 0.58 |
| 95 | 1973 | 1172 | 0.59 |
| 99 | 5904 | 4148 | 0.70 |

**Best HPOD match for each POD mode** (Table 3, p. 13):

| POD j | HPOD k | Δφ^a_{k,j} | R | R² |
|---|---|---|---|---|
| 1 | 1 | 1.71π | 0.89 | 0.78 |
| 2 | 1 | 1.18π | 0.97 | 0.93 |
| 3 | 3 | 0.18π | 0.62 | 0.26 |
| 4 | 2 | 1.70π | 0.84 | 0.65 |
| 5 | 2 | 1.21π | 0.96 | 0.91 |
| 6 | 3 | 1.52π | 0.82 | 0.65 |
| 7 | 4 | 1.70π | 0.63 | 0.29 |
| 8 | 3 | 0.88π | 0.76 | 0.50 |
| 9 | 4 | 1.10π | 0.85 | 0.70 |
| 10 | 4 | 0.50π | 0.80 | 0.49 |

**Pairing from the analytic signal of POD mode k** (Table 5, p. 21):

| POD k | Paired j | Δφ_{k,j} | R | R² (phase averages) |
|---|---|---|---|---|
| 1 | 2 | −0.5π | 0.88 | 0.89 |
| 2 | 1 | 0.5π | 0.76 | 0.76 |
| 3 | 2 | 0.5π | 0.70 | 0.74 |
| 4 | 5 | −0.5π | 0.79 | 0.81 |
| 5 | 4 | 0.5π | 0.72 | 0.72 |
| 6 | 8 | −0.5π | 0.80 | 0.82 |
| 7 | 9 | −0.5π | 0.60 | 0.67 |
| 8 | 6 | 0.5π | 0.76 | 0.77 |
| 9 | 10 | −0.5π | 0.64 | 0.65 |
| 10 | 9 | 0.5π | 0.63 | 0.65 |

**TKE of each HPOD mode and its POD pair** (Tables 4 and 6, p. 14, 25):

| HPOD k | TKE of X^a [%] | POD pair | TKE of X [%] | R²_{k,(i,j)} |
|---|---|---|---|---|
| 1 | 7.70 | 1, 2 | 8.24 | 0.81 |
| 2 | 4.53 | 4, 5 | 4.75 | 0.76 |
| 3 | 3.70 | 6, 8 | 3.20 | 0.57 |
| 4 | 2.70 | 9, 10 | 2.60 | 0.61 |

> Adding the POD mode energies quoted on p. 9 for modes 1 and 2 (4.8% + 3.39%) gives 8.19%, not the 8.24% in Table 6. Mode 1 is probably ≈4.85%, rounded. Check p. 9 against p. 25.

## Figures worth remembering
- **Fig. 1 (p. 7):** vertical water tunnel, sting and crossbeam mount, and the internal design of the printed sphere.
- **Fig. 2 (p. 10):** individual and cumulative TKE of the POD and HPOD modes, up to about 10⁴ modes.
- **Fig. 3 (p. 10):** u and v components of the first ten POD modes, showing the visual pairing problem.
- **Fig. 4 (p. 11):** real and imaginary parts of the first four HPOD modes.
- **Fig. 5–8 (p. 15–18):** phase-averaged POD pairs against HPOD modes at φ = 0 to 5π/6. These show the filtering artefacts: near-wake suppression, extra symmetry and edge effects.
- **Fig. 9 (p. 19):** joint PDFs of HPOD phase against POD-pair phase. This is the snapshot-level check that the two phase estimates agree.
- **Fig. 10–13 (p. 21–24):** POD pairs against the analytic signal of a single POD mode (the shortcut).
- **Fig. 14–21 (p. 26–33):** phase-averaged velocity, vorticity, planar Reynolds stress and TKE for each pair and its HPOD mode (flapping and pulsation).

## Notation
- f(x,t): velocity fluctuations. X: N_T × 2N_S snapshot matrix with u′ and v′ stacked. X^a = X + iH_x[X].
- ψ_k, a_k, λ_k: POD modes, coefficients and eigenvalues. ψ^a_k, a^a_k, λ^a_k: the HPOD versions. (ψ_k)^a: analytic signal of POD mode k.
- H, H_x: Hilbert transform in time and in the streamwise direction. 𝓕: Fourier transform. In eq. 16–17, f is frequency.
- φ_{i,j}: phase from POD pair (i, j). φ^a_k: phase of HPOD mode k. |a^a_k|: its instantaneous amplitude.
- Δφ^a_{k,j}: phase offset at which HPOD mode k best fits POD mode j. Δφ_{k,j}: the same for the analytic signal of POD mode k.
- 𝓡: correlation coefficient. R²: coefficient of determination.
- N_φ: number of snapshots in a phase bin. t_c = D/U∞: convective time.
- x: streamwise, measured from the sphere centre (in the figures the sphere sits at x/D = 0). y: transverse.

## Relevance to this project
This project analyses experimental resonance and feedback data (schlieren, acoustics, PIV) from the Shock Lab; see CLAUDE.md.
- **Two kinds of HPOD; this paper uses the spatial one:**
  - **Temporal HPOD** (Hilbert transform in time, eq. 14–17) needs time-resolved data. This is the version in the user's SPOD → reconstruction → HPOD pipeline for high-speed schlieren and acoustics.
  - **Spatial HPOD** (Hilbert transform in x, eq. 18–19) works on non-time-resolved data such as PIV. It is the only version applied here.
  - The formulas carry over to the temporal case: form the analytic signal, run snapshot POD on the complex data (eq. 7–9, 35), and read the instantaneous amplitude |a^a_k(t)| and phase φ^a_k(t) from eq. 20–21, with reconstruction from eq. 22.
- **No instantaneous frequency.** Here, amplitude and phase are per-snapshot values used to sort snapshots for phase averaging (Fig. 9). Sampling at 1 Hz (ΔT = 5 t_c) leaves no time ordering, so dφ/dt is meaningless (p. 34–35).
  - *Inference, not from the paper:* with time-resolved data, the instantaneous frequency would be dφ^a_k/dt from the unwrapped phase.
  - *Inference:* the Hilbert transform gives a well-behaved amplitude and phase mainly for narrow-band signals. Rebuilding the data from selected SPOD frequencies before running HPOD should therefore reduce the broadband "filtering artefacts" reported here.
  - For how HPOD was developed, see [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) and refs [33–35] (Raiola & Kriegseis 2024 ×2; Kriegseis, Kinzel & Nobach 2021).
- **Directly usable for non-time-resolved lab PIV:**
  - The group's workflow pairs POD modes to recover the oscillation phase. This paper replaces eyeballing a₁–a₂ circles with a systematic test.
  - Hilbert-transform each POD mode along the propagation direction, fit [cos sin] by least squares (eq. 47), and accept pairs that are **mutual** best matches at Δφ = ∓0.5π with opposite signs (p. 20).
  - The test costs one spatial Hilbert transform per mode and needs no extra decomposition, so it is easy to add to existing POD code. Check its R and R² (Table 5 gives typical values of 0.6–0.9).
  - Refs [29–31] cite screeching-jet and impinging-jet PIV (Edgington-Mitchell et al. 2014; Weightman et al. 2017, 2018) as cases where the leading POD modes are a periodic pair. The complex mode Φ = φ₁ + iφ₂ and the transverse-velocity-only POD in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md) are the same idea.
  - Non-adjacent pairs such as 6–8 occur. Pairs whose phase offsets are more than 90° apart (6–8, 9–10) still gave usable phase averages.
- **Caveat for jets** *(inference, not from the paper):*
  - A streamwise Hilbert transform of a single snapshot only detects spatial periodicity. It cannot tell an upstream-travelling wave from a downstream one, and a standing wave also yields a 90°-shifted "partner".
  - Screeching and impinging jets contain upstream guided-jet modes and near-field standing waves alongside the KH wavepacket (see the edgington-mitchell-2020 note). So "propagating" in spatial HPOD should be read as "streamwise-periodic", and the direction should be checked against time-resolved data or wavenumber analysis.
  - The paper itself warns that the shortcut "forcibly propagates" structures that may not propagate (p. 34).
- **Artefacts to watch for** (p. 11–12, 14–18, 34):
  - Edge effects at the ends of the transform direction.
  - Suppression of non-propagating near-field content, such as the region near the nozzle or the impingement plate.
  - Modes that look more symmetric than the data justify.
  - Loss of out-of-plane content in planar data.
  - These matter for planar PIV of non-axisymmetric or 3-D jets, and for line-of-sight schlieren.
- **Data requirements:**
  - POD and spatial HPOD need statistically independent snapshots but no time resolution (12,600 here).
  - The transform direction should be the propagation direction.
  - *Inference:* the domain should span several wavelengths, so that the Hilbert transform's edge effects stay confined.
  - Spatial HPOD roughly doubles the "energy" (×1.90 here) and needs an N_T × N_T complex eigenproblem; the paper calls it computationally intensive.
  - The paper does not specify the discrete H_x implementation or the phase-bin width. Both must be chosen when coding it.
- **Modelling side:** the paper has no modelling. It cites LES, DES and DNS of sphere wakes ([12–18]) only for background, so it adds nothing on stability, resolvent or ROM comparisons.
  - The complex HPOD mode or analytic POD mode is a spatial-phase field. Like the complex POD mode in the edgington-mitchell-2020 note, it could be compared with stability or resolvent eigenfunctions, but this paper does not do so.
- **Related notes:**
  - [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md): HPOD for advective wavepackets, by the authors of refs [33, 34]. Read it with this paper to compare the HPOD formulations.
  - [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md): SPOD variants for the time-resolved first stage of the pipeline.
  - [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md): POD-pair complex modes and wavenumber splitting of non-time-resolved PIV.
- **Facility:** LTRAC water tunnel, Monash. This is Soria and Atkinson's group, not a Shock Lab group facility. The dataset and facility details come from Davey, Atkinson & Soria 2025 (Phys. Fluids 37, 055150; ref. [39]), a study of superhydrophobic surface treatment on the sphere wake.
- **Candidates for `/add-paper`:**
  - Horel 1984 [32]: complex principal component analysis, the origin of HPOD.
  - Kriegseis, Kinzel & Nobach 2021 [35]: "Hilbert transform revisited".
  - Raiola & Kriegseis 2024 [33]: space-only HPOD, EFDC.
  - Raiola & Kriegseis 2024 [34]: jet-noise line sources from PIV via HPOD, AIAA. Directly jet-relevant.
  - Perrin et al. 2007 [28] and van Oudheusden et al. 2005 [26]: POD-based phase averaging.
