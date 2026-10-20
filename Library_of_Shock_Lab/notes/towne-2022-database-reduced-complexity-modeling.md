---
key: "towne-2022-database-reduced-complexity-modeling"
title: "A Database for Reduced-Complexity Modeling of Fluid Flows"
authors: ["Towne, A.", "Dawson, S. T. M.", "Brès, G. A.", "Lozano-Durán, A.", "Saxton-Fox, T.", "Parthasarathy, A.", "Jones, A. R.", "Biler, H.", "Yeh, C.-A.", "Patel, H. D.", "Taira, K."]
year: 2022
type: "preprint"
venue: "arXiv:2206.11801"
bib: {"note": "Data: Deep Blue Data, University of Michigan, http://deepblue.lib.umich.edu/data/collections/kk91fk98z"}
doi: ""
arxiv: "2206.11801"
pdf: "modal-decomposition/Towne-EtAl_2022_A-Database-For-Reduced-Complexity-Modeling-Of-Fluid-Flows.pdf"
version: "preprint"
unverified: []
group: false
facility: "Charles LES (Cascade); UIUC boundary-layer tunnel; UMD towing tank"
data: ["LES", "DNS", "PIV-TR"]
methods: ["SPOD", "resolvent", "LSA-local", "LSA-global", "POD", "DMD", "conditional-sampling", "PSD"]
flow: ["round-jet", "subsonic", "wall-bounded", "airfoil", "wake"]
phenomena: ["KH-wavepackets", "guided-jet-mode", "coherent-structures"]
params: {"M_j": "0.9 (jet)", "Re_τ": "292–2227 (boundary layers)", "Re": "100 (plate); 20,000 (gust); 23,000 (NACA 0012)"}
topics: ["modal-decomposition"]
related: ["towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent", "pickering-2020-lift-up-kh-orr-jets", "yeung-2024-adaptive-spod-broadband-tonal", "rolandi-2025-biglobal-resolvent-naca0012", "morra-2021-colour-of-forcing-resolvent-channel", "schmidt-2018-spectral-analysis-jet-turbulence", "raiola-2025-hilbert-pod"]
cites: ["brunton-2020-machine-learning-fluid-mechanics", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "nogueira-2019-large-scale-streaky-structures-jets", "pickering-2020-lift-up-kh-orr-jets", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "rowley-2009-spectral-analysis-nonlinear-flows-koopman", "schmid-2010-dynamic-mode-decomposition", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "schmidt-2018-spectral-analysis-jet-turbulence", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "taira-2017-modal-analysis-fluid-flows-overview", "taira-2020-modal-analysis-applications-outlook", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Public ~8 TB database of 6 time-resolved sets (M_j 0.9 jet LES, TBL DNS and TR-PIV, pitching plate, gust encounter, NACA 0012 LES) with SPOD, resolvent, DMD, POD and stability demos"
---
# A Database for Reduced-Complexity Modeling of Fluid Flows

- **Authors:** A. Towne, S. T. M. Dawson, G. A. Brès, A. Lozano-Durán, T. Saxton-Fox, A. Parthasarathy, A. R. Jones, H. Biler, C.-A. Yeh, H. D. Patel, K. Taira
- **Source:** arXiv:2206.11801v1 (preprint, 23 Jun 2022; AIAA-journal style). Data: Deep Blue Data, University of Michigan, http://deepblue.lib.umich.edu/data/collections/kk91fk98z (web or Globus)
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Towne-EtAl_2022_A-Database-For-Reduced-Complexity-Modeling-Of-Fluid-Flows.pdf` (49 pp.)
- **Tags:** open database, reduced-complexity modelling, LES, DNS, time-resolved PIV, turbulent jet (M_j = 0.9), trapped acoustic waves, turbulent boundary layer, pitching airfoil, gust encounter, NACA 0012 separated flow, SPOD, resolvent analysis, global stability, POD, DMD, conditional projection averaging, information-theoretic causality, system identification, compressed sensing, Küssner model

## Summary
The paper releases a public, ~8 TB database (hdf5 files, each dataset with a README and a MATLAB reader script) built specifically for developing and comparing reduced-complexity models (p. 3). It holds six time-resolved datasets chosen to span laminar/turbulent, transient/stationary, tonal/broadband, canonical/applied, wall-bounded/free-shear and simulation/experiment (Table 1, p. 3): an LES of an M_j = 0.9 isothermal round jet, DNS of a zero-pressure-gradient turbulent boundary layer, time-resolved PIV of a similar boundary layer at five Re_τ, 2-D DNS of stationary and pitching flat plates at Re = 100, towing-tank PIV and force data of a wing passing through a large transverse gust, and a wall-resolved LES of a NACA 0012 at Re = 23,000. For each it describes setup, what is stored, and one or more demonstration analyses: SPOD vs resolvent and trapped-wave stability theory (jet), information-flux causality (DNS BL), SPOD-based conditional projection averaging (PIV BL), DMD vs SPOD, transfer-function identification and compressed-sensing classification (pitching plate), circulation extraction and Küssner's model (gust), and global stability, resolvent, POD and DMD (airfoil wake). It is a data paper; the analyses are short demonstrations, mostly summarising earlier papers.

## Key findings
- **Jet, SPOD vs resolvent** (m = 0; Fig. 2, p. 6–7): leading SPOD and resolvent pressure modes agree at St = 0.4, 0.6, 0.8 and 1 (KH wavepackets), so white-noise forcing is reasonable there. At St = 0.2 they differ because forcing-sensitive Orr modes dominate. The mismatch moves to higher St at higher m because of streaks; this motivated coloured-forcing, sparse-sampling and eddy-viscosity resolvent work (refs. 35–39, p. 7).
- **Jet, trapped acoustic waves** (Fig. 3, p. 7): streamwise–temporal Fourier transforms of the LES give an empirical dispersion relation; weakly non-parallel stability theory (Towne et al. 2017) overlays it, with the KH branch and trapped acoustic branches of both group-velocity signs. The predicted resonance bounds between upstream and downstream trapped waves bound the energetic regions of the centreline PSD. Example frequencies St = 0.39, 0.91, 1.52 (p. 6–7).
- **DNS BL, causality** (Fig. 11, p. 15): information flux from outer (y/δ = 0.3) to inner (y⁺ = 15) streamwise velocity peaks at a lag δt⁺ ≈ 25; the reverse flux shows no peak. Information flows top-down, consistent with amplitude-modulation results (p. 15).
- **PIV BL, conditional projection averaging (CPA)** (p. 19–20): projecting snapshots onto an SPOD mode at eight phases (threshold R_th = 0.4) recovers the mode (mean projection of the averaged field onto the mode 0.91; range 0.82–0.94). Small scales are more intense away from the wall in the large-scale low-speed phase and near the wall in the high-speed phase (Fig. 16, p. 20). SPOD and CPA both proved robust to experimental noise (p. 20).
- **Pitching plate, lock-on and DMD/SPOD** (Figs. 19–21, p. 23–25): at α₀ = 25° (below the ≈ 27° wake bifurcation) the lift is periodic at f_p; f_p = 0.25 excites the least-stable wake eigenmode, giving larger lift oscillation and mean lift with little hysteresis. At α₀ = 30° (natural shedding f = 0.2418) the wake locks on at f_p = 0.25, period-doubles at f_p = 0.5, and is quasi-periodic at f_p = 0.05, where the four largest DMD modes are at f_n, f_p, f_n + f_p and f_n − f_p. DMD and SPOD amplitude spectra pick the same frequencies, as expected for non-chaotic flow (p. 23–24).
- **Pitching plate, linear lift model** (Fig. 22, p. 25–26): for α₀ = 25° a stable transfer function from α̇ to mean-subtracted C_L (MATLAB `tfest`) matches gain and phase across f_p; α₀ = 30° cannot be captured linearly because of multiple frequencies (p. 26).
- **Pitching plate, sparse classification** (p. 27–28): 50 random v-velocity point sensors in a wake window, POD library of r = 10 modes per case (16 cases, 351 training snapshots each), ℓ₁ reconstruction (ε = 10⁻⁴). Overall classification accuracy 78%: 92.75% for α₀ = 25°, 61.50% for α₀ = 30°; f_p = 0.05 and 0.1 at 30° are worst because natural shedding masks pitching (Fig. 25).
- **Gust encounter** (Figs. 31–32, p. 33–34): threshold and segmentation estimates of LEV circulation agree early and diverge as the wing nears the gust centre. Küssner's model with Duhamel superposition of a sine-squared gust predicts the GR-normalised lift peak and the rise well even for GR up to 1.5, but recovers far too slowly after the peak.
- **NACA 0012 wake** (p. 36–40): separation at x/L_c = 0.083, reattachment at 0.868, KH roll-up near 0.4 (p. 36). Shedding/merging at St = 1.43 is found by global stability, summed PSD, POD and DMD alike (Figs. 35, 38, 39). Eigenmodes below St ≈ 2 are wake/von Kármán, above are KH shear-layer (p. 37). Resolvent (with exponential discounting, since the mean-flow operator is unstable) gives the global gain maximum at k_z L_c = 4, St = 4.83, well above the natural shear-layer frequency ≈ 2.5 (Fig. 36, p. 38).
- **POD energy** (Fig. 37, p. 38–39): mode 1 holds 3.98% (mid-span) and 6.33% (spanwise-averaged) of the energy. 90% needs k = 1154 (mid-span) vs 258 (spanwise-averaged); 99% needs 4613 vs 2367. Beyond k ≈ 40 modes are small-scale turbulence that spanwise averaging removes.

## Setup / method
### Dataset overview (Table 1, p. 3)
| Sec. | Flow | File prefix | Method | Lam/Turb | Transient/Stationary | Tonal/Broadband | Canonical/Applied | Wall/Free shear |
|---|---|---|---|---|---|---|---|---|
| II | Jet | `jet` | LES | T | SS | both | C | FS |
| III | Boundary layer | `BLdns` | DNS | T | SS | B | C | WB |
| IV | Boundary layer | `BLexp` | EXP (PIV) | T | SS | B | C | WB |
| V | Pitching airfoil | `airfoilDNS` | DNS | L | T | T | A | both |
| VI | Airfoil gust encounter | `gustexp` | EXP (PIV + force) | L | T | T | A | both |
| VII | Airfoil wake | `airfoilLES` | LES | T | SS | both | A | both |

### II. Turbulent jet LES (p. 4–7)
- **Conditions:** M_j = U_j/c_j = 0.9, isothermal (T_j/T∞ = 1.0), Re_j = ρ_j U_j D/μ_j ≈ 1×10⁶, NPR = 1.7, NTR = 1.15. Matches the PPRIME (Poitiers) anechoic jet-noise experiments (p. 4).
- **Numerics:** CharLES (Cascade), spatially filtered compressible N–S, unstructured finite volume; Vreman SGS model; nozzle (contoured convergent-straight) included; synthetic turbulence + wall model inside the nozzle to give a turbulent exit boundary layer; other walls no-slip adiabatic; co-flow M∞ = 0.009; sponges and damping at boundaries. Domain ≈ −10D to 50D in x, flaring from 20D to 40D in r. ≈ 16 million control volumes (one mesh of a grid study in Brès et al. 2018). Far-field noise within 0.5 dB of microphones for most angles/frequencies (p. 4).
- **Stored data:** 10,000 snapshots every 0.2 acoustic time units (t c∞/D) — 2000 acoustic times in total (p. 4, 40). Variables: cylindrical velocities, density, pressure. Interpolated to a structured cylindrical grid 0 ≤ x/D ≤ 30, 0 ≤ r/D ≤ 6, (N_x, N_r, N_θ) = (626, 138, 128), equispaced in θ; ≈ 2.6 TB (p. 4–5). Also: first three azimuthal Fourier modes of every snapshot (sound is almost entirely m = 0–2), and the time- and θ-averaged mean flow for stability analysis (p. 5–6).
- **Analyses:** SPOD on the m = 0 time series; resolvent on the LES mean flow (p. 6). No SPOD block size, window or overlap, or resolvent norm/eddy viscosity, is given in this paper (details in Towne et al. 2018 and refs. 35–39). Trapped waves: weakly non-parallel local stability [21] and global stability [40] on the mean flow (p. 7).

### III. Turbulent boundary layer DNS (p. 8–16)
- **Numerics:** incompressible DNS; staggered 2nd-order central finite differences; RK3 + fractional step. Inflow: fixed mean profile + Lund recycling of fluctuations from x_ref; outflow convective BC with mass correction; top boundary u = U∞, w = 0, v from empirical δ* growth (δ*/x = 0.020 Re_x^{−1/7}); spanwise periodic (p. 8–9).
- **Parameters (Table 2, p. 9):**

  | Case | L_x/θ_avg | L_y/θ_avg | L_z/θ_avg | Re_τ range | Re_θ range | x_ref/θ_avg | Δx⁺ | Δy⁺_min | Δz⁺ | Δt⁺ (stored) | T u_τ,avg/δ_avg | Snapshots |
  |---|---|---|---|---|---|---|---|---|---|---|---|---|
  | BL1 | 480 | 47 | 70 | 292–729 | 832–1982 | 384 | 15.1 | 0.42 | 8.8 | 1.5 | 26.1 | ≈10,000 |
  | BL2 | 469 | 53 | 79 | 481–1024 | 1272–2870 | 375 | 10.2 | 0.66 | 6.9 | 0.8 | 7.4 | 7500 |

  Δt⁺ is below the lifetime of the smallest energy-containing eddies (Δt⁺ ≈ 30) (p. 8).
- **Stored data:** volumetric fields downsampled ×2 in y and z (full database ≈ 5 TB; full resolution on request); BL1 space- and time-resolved, BL2 space-resolved (p. 9). Also C_f, δ, θ, Re_θ, Re_τ, u_τ vs x (C_f recovers to White & Corfield after Re_θ > 1000 / 1500; Fig. 6); mean and RMS velocity and vorticity profiles (within 2% of Sillero et al.; Fig. 7); x–z two-point correlations and x–t space–time correlations at y⁺ = 15, 100 and y/δ = 0.1–1.1 at Re_θ ≈ 400, 600, 700, 900 (p. 10–12); time-resolved x–y planes (p. 12).
- **Causality analysis:** u at y⁺ = 15 (u_I) and y/δ = 0.3 (u_O) at Re_τ ≈ 700, BL1, no spatial shift (lag only). Information-flux causality of Lozano-Durán & Arranz (p. 12–15).

> Inconsistency to check: §III.B (p. 9) says BL2 is only space-resolved, but §III.A (p. 8) says 7500 fields every Δt⁺ ≈ 0.8, and the conclusion (p. 41) says "100 snapshots for the second case". The "Re_θ ≈ 400, 600, 700, 900" locations for the correlations and the causality signal location (Re_τ vs Re_θ ≈ 700) lost their symbols in extraction; verify on p. 10–12.

### IV. Turbulent boundary layer, time-resolved planar PIV (p. 16–20)
- **Facility:** UIUC boundary-layer wind tunnel; 4-inch honeycomb, four screens, 27:1 contraction; test section 15 × 15 in, 12 ft long; FST ≈ 0.5%. Tripped TBL develops 2.5 m on a flat plate, nominally ZPG (p. 16).
- **PIV:** x–y plane; ~1 µm oil seeding; Continuum Terra PIV Nd:YLF laser; Phantom VEO 710L at full resolution, 50 mm f/1.4 lens; image pairs at **3.755 kHz**; DaVis 10.1, 3 passes 32×32 at 50% overlap then 3 passes 16×16 at 75%; 319 × 150 vectors. u_τ by Clauser method (p. 16). Laser reflection corrupts the three points nearest the wall (first trusted y⁺ = 28 at lowest Re, 165 at highest; p. 18).
- **Cases (Tables 3–4, p. 17–18), 6000 time-resolved snapshots each:**

  | Case | Re_τ | δ (mm) | u_τ (m/s) | U∞ (m/s) | Δx/δ | Δx⁺ | FOV/δ | Δt⁺ | Eddy turnovers |
  |---|---|---|---|---|---|---|---|---|---|
  | 1 | 605 | 49 | 0.1827 | 3.71 | 0.0094 | 4.43 | 3.00 × 1.40 | 0.44 | 50 |
  | 2 | 987 | 42 | 0.3474 | 7.73 | 0.011 | 8.87 | 3.49 × 1.64 | 1.78 | 20 |
  | 3 | 1373 | 39 | 0.5210 | 12.07 | 0.012 | 13.31 | 3.76 × 1.76 | 4.02 | 12 |
  | 4 | 1782 | 37 | 0.7055 | 16.77 | 0.012 | 18.03 | 3.97 × 1.86 | 7.36 | 8 |
  | 5 | 2227 | 36.7 | 0.8928 | 21.98 | 0.012 | 22.82 | 4.00 × 1.87 | 11.8 | 6 |

- **CPA demonstration** (Re_τ ≈ 1370): leading SPOD mode at f δ/u_τ = 4.2 (λ_x/δ ≈ 6; superstructure scale) as the model ũ; projection at 8 phases, R_th = 0.4; small scales u_s = u − u_l with u_l from a Gaussian kernel σ_G/δ = 0.125. SPOD block parameters are not given (p. 19).

### V. Low-Re pitching flat plate DNS (p. 21–28)
- **Conditions:** 2-D, Re = 100 (U∞, c); α(t) = α₀ − α_P sin(2π f_p t), pitch about midchord; α₀ = 25° (steady wake, stable equilibrium) and 30° (periodic shedding, f = 0.2418); α_P = 0° and 5°; f_p = f c/U∞ ∈ {0.05, 0.1, 0.2, 0.25, 0.3, 0.35, 0.4, 0.5} (p. 21–22).
- **Numerics:** immersed-boundary projection method (Taira & Colonius); four nested grids, each 600 × 300, finest Δx = Δy = 0.02c, total domain 96c × 48c; body-force points every 0.02c; Crank–Nicolson (linear) + RK3 (nonlinear); Δt = 0.01 c/U∞; 50 convective times discarded (p. 21–22).
- **Stored data:** u, v, vorticity in the finest grid every 0.1 c/U∞, over 40 c/U∞ for (25°, 5°) and (30°, 0°) and 100 c/U∞ for (30°, 5°); one equilibrium snapshot for (25°, 0°). C_L, C_D, α, α̇ every 0.01 c/U∞ (p. 22).
- **Analyses:** DMD (normalised amplitudes as in ref. 82) vs SPOD amplitudes (√ energy) for α₀ = 30° (p. 23); transfer-function fit (`tfest`, Sanathanan–Koerner iteration, stability enforced) from α̇ to C_L − mean(C_L), using sinusoid-fitted gain/phase per f_p (p. 25); compressed-sensing classification (CVX in MATLAB) with 401 snapshots per pitching case (p. 26–27).

### VI. Large-amplitude transverse gust encounter (p. 29–34)
- **Facility:** University of Maryland free-surface water towing tank, 7 m × 1.5 m × 1 m, 4-DOF motion system. Flat plate, 4.3% thick, AR 4 (3 in chord, 12 in span); glass plate for PIV, aluminium for forces. α = 0°, Re = 20,000 (U∞ = 0.2635 m/s). Gust ratios GR = V_max/U∞ = 0.5, 0.75, 1.0, 1.5 (p. 29–30).
- **Gust:** vertical water-jet system, gust ≈ 3× span wide, fully rotational; sine-squared profile, mean width 198 mm (SD 22 mm, CoV 11%), W/c ≈ 2.6; encounter duration 0.75 s (1.3 Hz) (p. 30).
- **PIV:** Phantom v641 (4 MP), 85 mm lens; 37 µm soda-lime glass spheres; Litron LDY 304 Nd:YLF (30 mJ/pulse, 10 kHz max); laser and camera towed with the wing; plane 1 chord off mid-span; max velocity uncertainty 0.2% (p. 31). FOV 24 × 16 cm, 0.1 mm/pixel (772 px per chord), 202 images per convective time, vector spacing 0.79 mm (96.46 vectors per chord). 1284 ensemble-averaged snapshots over 0 ≤ t* ≤ 6.33 (Δt* stated as 0.00345). Ensemble of 8 runs (≈ 8% error in LEV circulation, from a 23-run convergence study; Fig. 29) (p. 31–32).
- **Forces:** ATI Mini-40 (±40 N, 0.01 N resolution) at 1 kHz; 5 repeats, synchronised and ensemble-averaged; tare for gravity/buoyancy; structural/electrical peaks at 10, 35, 110 Hz removed with a 5 Hz low-pass Butterworth filter. 4337 samples over −5 ≤ t* ≤ 10 (Δt* = 0.00346); individual filtered runs and the ensemble mean are stored (p. 31–32).

> Check: 202 images per convective time gives Δt* ≈ 0.00495, and 1284 × 0.00495 ≈ 6.36, matching t* ≤ 6.33; the stated Δt* = 0.00345 does not (p. 32). The force numbers are self-consistent (4337 × 0.00346 ≈ 15).

### VII. NACA 0012 turbulent wake LES (p. 35–40)
- **Conditions:** Re = U∞L_c/ν∞ = 23,000, M∞ = 0.3, α = 6° (Yeh & Taira 2019) (p. 35).
- **Numerics:** wall-resolved LES, CharLES, Vreman SGS; C-type structured grid with adaptive wake refinement (hybrid structured/unstructured); domain x/L_c ∈ [−19, 26], y/L_c ∈ [−20, 20], z/L_c ∈ [−0.1, 0.1] (spanwise periodic); ≈ 35 million cells; Δt U∞/L_c = 4.14×10⁻⁵, max CFL 0.86; wall-adjacent Δ⁺ shown in Fig. 33a (larger over the laminar first 10% of chord) (p. 35).
- **Stored data:** n_s = 16,000 snapshots of mid-span and spanwise-averaged u_x, u_y, u_z on x/L_c ∈ [−0.5, 6], y/L_c ∈ [−2.5, 2.5]; Δt U∞/L_c = 0.0104, t U∞/L_c ∈ [0, 165] (stated ≈ 248 shedding cycles at St = 1.43); n = 222,210 unstructured points per component, with cell-size weights w; time- and span-averaged mean field (p. 36).
- **Analyses:** bi-global stability of the mean-flow operator L_q̄(k_z) at k_z = 0; Fourier PSD summed over points; discounted resolvent over (St, k_z); POD by method of snapshots on all 16,000 snapshots (cell-weighted); DMD on mid-span slice with all 16,000 snapshots using the full companion matrix (Rowley et al. 2009), noting projected (POD-based) DMD is numerically more stable (p. 36–39). St = f L_c/U∞.

> Check: 165 × 1.43 ≈ 236 cycles, not the 248 stated (p. 36).

## Key equations
- Friction velocity: $u_\tau \equiv \sqrt{\nu\,\partial\langle u\rangle/\partial y|_w}$ (eq. 1, p. 8).
- Two-point and space–time correlations: $C_{uu}(\Delta x,y_0,\Delta z)=\dfrac{\langle u(x,y_0,z,t)\,u(x+\Delta x,y_0,z+\Delta z,t)\rangle}{\langle u(x,y_0,z,t)^2\rangle}$ and the analogous $C_{uu}(\Delta x,y_0,\Delta t)$ (eqs. 2–3, p. 10–12; average over a streamwise window, z and t).
- Shannon information $H[u(t)]=\langle -\log_2 p[u(t)]\rangle_t$ (eq. 4, p. 15); causality $T_{O\to I}(\delta t)=H[u_I(t)\,|\,u_I(t-\delta t)]-H[u_I(t)\,|\,u_I(t-\delta t),u_O(t-\delta t)]$ (eq. 5); conditional information via joint pdfs (eq. 6).
- CPA projection $R(t_i,\tilde\gamma_j)=\dfrac{\langle u(x,y,t_i),\tilde u(x,y,\tilde\gamma_j)\rangle}{\|u\|\,\|\tilde u\|}$ (eq. 7, p. 19); average $\langle q\rangle_{CPA}(x,y,\gamma)=\frac1N\sum_{t_i}q(x,y,t_i)$ over snapshots where γ maximises R and R > R_th (eq. 8).
- Pitch kinematics $\alpha(t)=\alpha_0-\alpha_P\sin(2\pi f_p t)$ (eq. 9, p. 21); $C_L=L/(\tfrac12\rho U_\infty^2 c)$ (eq. 10, p. 23).
- State space $\dot x=Ax+Bu,\ y=Cx+Du$; $G(s)=C(sI-A)^{-1}B+D$; gain $|G(i\omega)|$, phase $\angle G(i\omega)$ (eqs. 11–15, p. 24–25).
- Sparse library: $\Theta=[\Phi_r^{(1)}\ \cdots\ \Phi_r^{(J)}]$, $x\approx\Theta a_L$; $\hat a_L=\arg\min\|a_L\|_1$ s.t. $\|C\Theta a_L-y\|_2<\epsilon$; class $j=\arg\max_{j'}\|a^{(j')}\|_2$ (eqs. 16–19, p. 26–27).
- Sine-squared gust $V_g(x)=V_{max}\sin^2(\pi x/W)$ (eq. 20, p. 30).
- Küssner: $C_l=2\pi\dfrac{V}{U_\infty}\psi(t^*)$, $\psi(t^*)\approx1-0.5e^{-0.26t^*}-0.5e^{-2t^*}$; Duhamel: $C_l=\dfrac{2\pi}{U_\infty}\left(V_g(0)\psi(t^*)+\int_0^{t^*}\dfrac{dV_g(\sigma)}{dt}\psi(t^*-\sigma)\,d\sigma\right)$ (eqs. 21–23, p. 34).
- Global stability $L_{\bar q}v=\lambda v$; resolvent $H(\omega,k_z)=[i\omega I-L_{\bar q}(k_z)]^{-1}$ with exponential discounting (p. 36–38). POD by snapshots: $R=X^*WX$, $\lambda_k=\sigma_k^2$, modes $\Phi=X V\Sigma^{-1}$ (p. 38). DMD frequency $\omega_k=\log(\lambda_k)/\Delta t$, $St_k=\Im(\omega_k)L_c/2\pi U_\infty$ (Fig. 39, p. 41).

> Eqs. 2–3, 7–8, 16–19 and the resolvent/POD forms were re-typed from rendered pages or garbled text; eq. 20's argument (π x/W) and the exact POD weighting were not legible in extraction. Verify against p. 10–12, 19, 26–27, 30, 38.

## Figures worth remembering
- **Fig. 1 (p. 5):** LES domain vs stored database domain (30D × 6D) with temperature/pressure fluctuations; the trapped core waves are visible.
- **Fig. 2 (p. 6):** leading SPOD vs resolvent pressure modes, m = 0, St = 0.2–1.
- **Fig. 3 (p. 7):** (a) Fourier modes of pressure at St = 0.39, 0.91, 1.52; (b) centreline k–St dispersion map with KH and trapped-wave branches; (c) centreline PSD with resonance bounds.
- **Fig. 8 (p. 13):** x–z and x–t correlations of u at y⁺ = 15 and y/δ = 0.5.
- **Fig. 11 (p. 15):** self and cross information fluxes vs lag; outer→inner peak at δt⁺ = 25.
- **Fig. 15–16 (p. 19–20):** SPOD mode used for CPA, and CPA-averaged u and small-scale intensity vs phase.
- **Fig. 19–21 (p. 23–25):** lift trajectories (lock-on, period doubling), DMD vs SPOD spectra, DMD sum/difference frequencies.
- **Fig. 22, 25 (p. 26, 28):** Bode plot of identified lift model; confusion matrix.
- **Fig. 31–32 (p. 33–34):** LEV circulation by two methods; Küssner vs measured lift.
- **Fig. 35–39 (p. 37–41):** airfoil eigenvalues/PSD/POD spectra, resolvent gain map over (St, k_z), POD energy, POD modes, DMD spectrum.

## Notation
- M_j, Re_j, NPR, NTR: jet Mach, Reynolds, nozzle pressure and temperature ratios; St = fD/U_j (jet), St = fL_c/U∞ (airfoil wake); f_p = f c/U∞ (pitching).
- Re_τ = u_τ δ/ν, Re_θ = U∞θ/ν; ⁺ = wall units; θ_avg, δ_avg streamwise averages.
- α₀, α_P: base and pitch amplitude angles. GR = V_max/U∞: gust ratio. t* = U∞t/c.
- CPA: conditional projection averaging. R_th: projection threshold. T_{A→B}: information flux.

## Relevance to this project
This project analyses resonance and feedback in experimental schlieren, acoustics and PIV from the Shock Lab (CLAUDE.md). None of these flows is supersonic or screeching, but the paper is useful as a benchmark source and method sampler.
- **Benchmark data for testing pipelines:** the M_j = 0.9 jet LES (10,000 time-resolved snapshots, Δt c∞/D = 0.2) is the same Brès et al. (2018) database used in [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) and [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md). It is a ready test case for the SPOD → reconstruction → Hilbert POD pipeline before applying it to lab data: it has broadband KH wavepackets plus tonal, resonant trapped waves in the core. Its MATLAB reader scripts and hdf5 format fit the group's MATLAB workflow (p. 3).
- **Trapped acoustic waves:** the jet example shows the trapped (duct-like) core waves and their nozzle-to-turning-point resonance, the same wave family as the k_t+ / guided modes in screech ([edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md)). The method — a k–ω map from x–t Fourier transforms of time-resolved data overlaid with local stability dispersion curves — transfers directly to time-resolved schlieren of screeching or impinging jets.
- **Model–data comparison:** SPOD vs resolvent agreement for KH but not Orr/streak modes (p. 6–7) is the same conclusion as Pickering et al. 2020 and the coloured-forcing work in [morra-2021-colour-of-forcing-resolvent-channel.md](morra-2021-colour-of-forcing-resolvent-channel.md). The NACA 0012 example (mean-flow global stability + discounted resolvent; LES at Re = 23,000) is the high-Re end of [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md); the resolvent peak at St ≈ 4.8 vs natural ≈ 2.5 matches the shear-layer scaling cited there.
- **Which methods need time-resolved data:**
  - Need time resolution: SPOD (jet, PIV BL, pitching plate), DMD (pitching plate, airfoil wake), k–ω dispersion maps (jet), information-flux causality (DNS BL), transfer-function identification (forces), CPA as used here (its model is an SPOD mode).
  - Do not: POD (method of snapshots; airfoil wake, compressed-sensing library), mean-flow global stability and resolvent (mean only), single-snapshot sparse reconstruction. CPA itself only needs a phase-carrying mode, so with non-time-resolved PIV one could build the model from a POD pair or resolvent mode and conditionally average by projected phase, an alternative to POD-pair phase averaging (p. 18, 20).
- **Intermittency and changing dynamics:** the pitching-plate cases show lock-on, period doubling and quasi-periodic sum/difference frequencies that DMD and SPOD identify only as fixed spectral lines (p. 23–24). The gust data are transient and ensemble-averaged, which block-averaged methods do not suit. Both are candidate test beds for Hilbert POD ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md), [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md)), which gives instantaneous frequency and amplitude. CPA gives a phase-conditioned view of how one scale modulates another, which complements HPOD amplitude tracking.
- **Experimental-data lessons:** the PIV BL shows near-wall laser reflection corrupting the first three vectors (p. 18) and the trade-off between eddy turnovers recorded (50 → 6) and Re at fixed 6000 snapshots — a reminder to check SPOD convergence against record length. The gust force data show filtering choices (5 Hz Butterworth to remove 10/35/110 Hz rig vibration) and ensemble-size convergence (8 runs, 8% error) (p. 31–32).
- **Data-driven tools worth noting:** compressed-sensing classification from sparse point sensors and `tfest` system identification (p. 25–27) are MATLAB-based and could be adapted for sparse microphone arrays or for identifying input–output models of forced resonance.
