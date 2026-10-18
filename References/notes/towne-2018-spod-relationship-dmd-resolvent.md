# Spectral proper orthogonal decomposition and its relationship to dynamic mode decomposition and resolvent analysis

- **Authors:** A. Towne (Center for Turbulence Research, Stanford), O. T. Schmidt, T. Colonius (Caltech)
- **Source:** J. Fluid Mech. 847, 821–867 (2018), doi:10.1017/jfm.2018.283. This file is the **arXiv version**, arXiv:1708.04393v2 [physics.flu-dyn] (1 Jun 2018), so its page layout differs from the JFM version. Page refs below are arXiv PDF pages (printed page n = PDF page n).
- **PDF:** `References/Paper_PDFs/Towne-EtAl_2018_Spectral-Proper-Orthogonal-Decomposition-And-Its-Relationship-To-Dynamic-Mode.pdf` (47 pp.)
- **Tags:** SPOD (Lumley space–time POD), space-only POD, cross-spectral density, Welch's method, block size and overlap, windowing, method of snapshots, DMD, exact DMD, Koopman, ensemble DMD, resolvent analysis, white-noise forcing, coloured forcing, resolvent expansion coefficients, linearised Ginzburg–Landau, M 0.4 turbulent jet LES, wavepackets, low-rank behaviour, Chu energy norm

## Summary
This is the standard reference for SPOD as used today: the frequency-domain form of POD that Lumley (1967, 1970) derived for statistically stationary flows, which yields modes that each oscillate at one frequency and are ranked by energy at that frequency (p. 1–2, 6–7). The paper makes three theoretical points. First, SPOD modes evolve coherently in space and time by construction, whereas the far more common space-only (snapshot) POD modes do not, and each space-only POD mode is a mixture of SPOD modes at many frequencies (§2.3, p. 8–9). Second, for zero-mean stationary data, the modes of an ensemble ("exact") DMD problem are the short-time DFT modes of each realisation, so SPOD modes are the optimally averaged DMD modes (§4, p. 12–15; App. B). Third, SPOD and resolvent modes are identical when the resolvent-mode expansion coefficients are uncorrelated (white forcing in the simplest case); otherwise those coefficients must be treated statistically, and deterministic coefficients can only ever give a rank-one approximation of the flow statistics (§5, p. 15–21). The paper also gives the practical Welch-based SPOD algorithm (§3, p. 9–12) and demonstrates everything on a linearised Ginzburg–Landau model and an M = 0.4 jet LES (§6, p. 21–36).

## Key findings
- **Space-only POD modes are not dynamically coherent** (p. 8–9). Their expansion coefficients are uncorrelated only at zero time lag (eq. 2.9). At nonzero lag a mode's coefficient decorrelates from itself and correlates with other modes (eq. 2.23–2.24), shown numerically in Fig. 5 (p. 25–26). SPOD coefficients are uncorrelated across modes at the same frequency and across frequencies (eq. 2.25), so each SPOD mode is a structure that evolves coherently (p. 8). The authors note George (2017) wrongly assumed uncorrelated POD coefficients at all lags (p. 8).
- **Exception noted:** space-only POD *can* capture single-frequency structures, e.g. Rossiter modes in a cavity (Rowley et al. 2004); it just isn't guaranteed (p. 9).
- **POD–SPOD link** (eq. 2.26–2.29, p. 9): the spatial correlation is the frequency integral of the CSD, so each space-only POD eigenvalue is a weighted integral of SPOD eigenvalues over all frequencies and modes. In practice this shows up as broadband content in a_j(t).
- **DMD = DFT for stationary, zero-mean data** (§4, p. 12–15):
  - Chen et al. (2012) showed DMD of zero-mean, uniformly sampled data is formally the DFT (zero growth rates) (p. 12).
  - Koopman modes of an ergodic (stationary) system are Fourier modes (Mezić 2005), so the authors recommend, "contrary to prevailing wisdom", subtracting the mean before applying DMD to stationary flows (p. 13).
  - For an ensemble of N_e zero-mean, linearly consistent realisations in the exact-DMD framework (Tu et al. 2014), every DFT mode of every realisation is a DMD mode with eigenvalue z^{k−1} (unit magnitude), and each eigenvalue is repeated N_e times, so any linear combination at a frequency is also a DMD mode (eq. 4.5–4.6, p. 14; proof in App. B, p. 39–41).
  - Since SPOD modes are linear combinations of these DFT modes (eq. 3.11), each SPOD mode is a DMD mode: specifically the optimally averaged one (p. 15).
- **SPOD = resolvent under uncorrelated coefficients** (§5.3, p. 18–19):
  - With the same output quantity and inner product, the CSD can be expanded in either set (eq. 5.20). If S_{β_jβ_k} = μ_j δ_jk the two sets of modes are identical, with ordering by σ_j²μ_j (eq. 5.21, p. 18).
  - Uncorrelated coefficients ⇔ resolvent input modes equal the SPOD modes of the forcing (eq. 5.22–5.23, p. 18).
  - The stronger condition μ_j = 1 for all j (same ordering, σ_j² = λ_j, û_j = ψ_j) needs S_ηη W_η = I δ(x − x′), i.e. unit-amplitude white forcing (eq. 5.24, p. 19).
  - Real nonlinear forcing is not white (Zare et al. 2017; Towne et al. 2017), p. 19.
- **Deterministic resolvent coefficients are rank one** (§5.4, p. 19–21):
  - Any choice of deterministic b_j gives S_yy = (Σ û_j σ_j b_j)(Σ û_k σ_k b_k)*, a rank-one CSD, regardless of how many resolvent modes are kept (eq. 5.25, p. 20).
  - PSD-matched b_j get the diagonal right but the off-diagonal terms wrong, and the error does not shrink with N_r (eq. 5.26, p. 20).
  - The best deterministic choice reproduces the leading SPOD mode (eq. 5.27), so its quality depends "first and foremost" on the low-rank nature of the CSD, not of the resolvent (p. 21).
  - **Proposed fix:** estimate S_{β_jβ_k} from the leading N_s SPOD modes projected onto resolvent output modes (eq. 5.28–5.29). The reconstruction (eq. 5.30) converges to the first N_s SPOD modes as N_r → ∞ (eq. 5.31). The resolvent gains do not appear explicitly; what matters is how well the leading resolvent modes span the leading SPOD modes (p. 21).
- **Ginzburg–Landau, white forcing** (p. 22–25):
  - SPOD eigenvalues match the resolvent gains σ_j² over frequency (Fig. 2, p. 23). Two discrepancies come from finite convergence: eigenvalues are not smooth in frequency (variance), and the 2nd SPOD eigenvalue overshoots at the 1st mode's peak (spectral leakage) (p. 23).
  - **Bias–variance trade-off:** for a fixed record, more blocks (less variance) means shorter blocks (more leakage) and vice versa; the compromise is problem-dependent. "SPOD modes are more difficult to converge for flows that exhibit sharp spectral peaks" (p. 23).
  - At the peak frequency ω = −0.6 the projection γ_jk is diagonal up to j = k = 12, i.e. the first 12 SPOD and resolvent modes are nearly identical, and S_{β_jβ_k} is nearly diagonal (Fig. 4, p. 24–25).
  - Space-only POD modes, given frequency content via Welch PSDs of a_j(t), each span a range of frequencies, cannot follow the frequency-dependent resolvent shape, and sub-optimal POD modes dip where earlier modes peak (Fig. 3, p. 24–25).
- **Ginzburg–Landau, correlated forcing** (p. 25–29):
  - SPOD and resolvent modes no longer match (non-diagonal γ_jk, Fig. 6, p. 26); S_{β_jβ_k} becomes banded (Fig. 7, p. 27).
  - At ω = −0.6, σ₁² ≈ 560 and σ₁²/σ₂² ≈ 100; at ω = 0.4, σ₁² ≈ 20 and σ₁²/σ₂² ≈ 10 (p. 27).
  - PSD reconstructions with N_r = 1, 5, 10, 30 (Fig. 8, p. 28): only the statistical S_{β_jβ_k} from eq. 5.28 converges to the true PSD. DFT-based coefficients are noisy, PSD-based coefficients get *worse* in high-energy regions as N_r grows, and optimal deterministic coefficients converge to the leading SPOD mode only (p. 28–29).
- **M 0.4 jet, SPOD** (m = 0, pressure shown; p. 30–31, Fig. 10):
  - Leading mode holds ≈ 22% of the energy at St = 0.6 (p. 30).
  - Large λ₁/λ₂ gap (low rank) persists over 0.3 ≲ St ≲ 1 (p. 30).
  - Leading modes are wavepackets whose wavelength and spatial support grow as frequency falls, with one streamwise maximum; mode 2 has two maxima, and higher modes are more complex (p. 30). These are linked to KH for St ≳ 0.3 and to non-modal (Orr-type) superposition for St ≲ 0.3 (p. 30).
  - Sub-optimal modes describe the variability (jitter) of wavepacket shape, central to the jet's acoustics (Cavalieri et al. 2011) (p. 30).
- **M 0.4 jet, space-only POD** (p. 31–33, Fig. 11): slowly decaying eigenvalues with no sign of low-rank behaviour; the first ≈ 10 modes are dominated by low frequencies below the jet-noise range; each mode spans many frequencies and looks disorganised, with only fragments of wavepackets (p. 32–33).
- **M 0.4 jet, DMD** (p. 33–34, Fig. 12):
  - Four sets compared: standard DMD on all 10,000 snapshots without mean subtraction; DMD with mean subtracted (= long-time DFT); ensemble DMD (= short-time DFT of each block); SPOD (p. 33).
  - Standard DMD eigenvalues cluster on the unit circle (near-zero growth) and sit next to the long-time DFT eigenvalues; standard DMD and long-time DFT modes look alike (p. 33).
  - Short-time DFT modes vary strongly between blocks; none of the DMD/DFT modes cleanly isolates the wavepackets, each shows one realisation of how SPOD structures coexist (p. 33).
- **M 0.4 jet, resolvent** (p. 35–36, Fig. 13):
  - Large gain separation at St = 0.6 but not at St = 0.2, mirroring the SPOD eigenvalues (p. 35).
  - Leading resolvent and SPOD modes match "with striking accuracy" where the jet is low rank, with resolvent wavepackets slightly longer; at St = 0.2 and for all sub-optimal modes there is no match (p. 35).
  - Interpretation: KH wavepackets for St ≳ 0.3 are insensitive to forcing correlation, while low-frequency dynamics and wavepacket variability require modelling the forcing colour (p. 35).
- **Disadvantages and advantages** (p. 38):
  - SPOD needs more data than POD or DMD: space–time statistics converge more slowly, and it needs several realisations, normally from one long series.
  - SPOD frequencies are fixed and evenly spaced, so sharp peaks in laminar or transitional flows need long records; DMD without mean subtraction is not constrained this way. An iterative DFT approach (Arbabi & Mezić 2017) is suggested as a remedy.
  - SPOD gives a ranked set of modes per frequency bin (DMD has no inherent ranking) and is robust to noise through spectral averaging (p. 38).

## Setup / method

### Definitions (§2, p. 4–7)
- Generic POD: maximise E{|⟨q, φ⟩|²}/⟨φ, φ⟩ over a stochastic ensemble (eq. 2.1), leading to an eigenproblem of the two-point correlation (eq. 2.2–2.3). The ensemble and inner product decide which POD you get.
- **Space-only POD:** ensemble = snapshots at different times; inner product over space with a weight W(x) (eq. 2.4); expectation = time average, so stationarity is required (p. 5). Snapshot order is irrelevant.
- **SPOD:** ensemble = realisations of the whole time-dependent flow; space–time inner product (eq. 2.11). The space–time correlation of a stationary flow is not nuclear (infinite energy), so the problem is moved to the frequency domain: for each f, φ(x, t) = ψ(x, f) e^{i2πft} solves the space–time problem if ψ is an eigenfunction of the CSD (eq. 2.18; Lumley's result, alternative derivation in App. A, p. 39). The terminology follows Picard & Delville (2000) and is explicitly **not** Sieber et al. (2016)'s filtered-correlation "SPOD" (p. 2).

### Algorithm (§3, p. 9–12) — what needs to be set
| Item | Paper's choice / rule |
|---|---|
| Data | M equally spaced snapshots q_k ∈ ℝ^N (all grid points × all variables stacked) (eq. 3.1). **Must be time-resolved and uniformly sampled.** |
| Mean | Subtract the mean (zero-mean process assumed, p. 4) |
| Blocks | N_b blocks of N_f snapshots, overlapping by N_o snapshots; block n starts at q_{1+(n−1)(N_f−N_o)} (eq. 3.2). Blocks treated as independent realisations via ergodicity (p. 10) |
| Window | Window weights w_j in the block DFT (eq. 3.4) to reduce leakage; Hann used in both examples |
| DFT | q̂_k^(n) = (1/√N_f) Σ_j w_j q_j^(n) e^{−i2π(k−1)(j−1)/N_f} (eq. 3.4) |
| Frequencies | f_k = (k−1)/(N_f Δt) for k ≤ N_f/2, (k−1−N_f)/(N_f Δt) above (eq. 3.5) |
| Weight | W ∈ ℂ^{N×N} includes both the physical weight W(x) and quadrature weights (p. 11) |
| Eigenproblem | Method-of-snapshots form: N_b × N_b matrix Q̂*WQ̂ per frequency (eq. 3.10), modes recovered by eq. 3.11. At most N_b nonzero eigenvalues per frequency (p. 11) |
| Convergence | Estimate converges as N_b and N_f increase together (p. 11); trade-off between variance (few blocks) and leakage/resolution (short blocks) (p. 23) |
| Code | Matlab at https://github.com/SpectralPOD/spod_matlab; streaming SPOD in Schmidt (2017) (p. 11) |

Algorithm steps (p. 12): for each block, assemble Q^(n) and take a windowed row-wise FFT, keeping Q̂^(n). For each frequency (or subset), stack the n-th realisations into Q̂_{f_k}, form M = Q̂*WQ̂, eigendecompose M = ΘΛ̃Θ*, and store Ψ̃ = Q̂ΘΛ̃^{−1/2} and Λ̃. Intermediate matrices can be discarded per loop to save memory.

### Ginzburg–Landau model (§6.1, p. 22–29)
| Item | Value |
|---|---|
| Equation | linearised complex GL, A = −ν ∂_x + γ ∂_x² + μ(x) (eq. 6.1), μ(x) = (μ₀ − c_μ²) + μ₂x²/2 (eq. 6.2); μ₀ = 0.23, other parameters from Bagheri et al. (2009) |
| Stability | globally stable but non-normal; μ₀ chosen so the leading resolvent gain at its peak is 100× the second ("typical for real flows") (p. 22) |
| Discretisation | Hermite pseudo-spectral, N = 220 collocation points, x ∈ [−85, 85]; B and C interpolate to a uniform grid so W_y = W_η = I (p. 22) |
| White forcing | random complex value per point and time step (uniform phase, unit-variance normal amplitude), low-passed by a 10th-order FIR at 60% of Nyquist, spatial envelope with L = 60, p = 10 (p. 22) |
| Integration | 4th-order embedded Runge–Kutta (Matlab ODE suite); 40,000 snapshots, Δt = 0.5, f_Nyquist = 1 (p. 22) |
| SPOD | Hann, 75% overlap, N_f = 384 (p. 22) |
| Correlated forcing | white noise convolved with a Gaussian-envelope, complex-exponential kernel g(x, x′) (eq. 6.3), parameters 4 and 20 (envelope width, filter wavelength); 10,000 snapshots (p. 25–26) |

### M 0.4 jet LES (§6.2, p. 29–36)
| Item | Value |
|---|---|
| Flow | round convergent-straight nozzle, M = U_j/c_j = 0.4, T_j/T_∞ = 1, Re ≈ 10⁶ (p. 29) |
| Solver | Cascade "Charles": unstructured finite-volume, spatially filtered compressible N–S, 3rd-order RK; ≈ 16 M control volumes; 2000 acoustic time units; same numerics, geometry and grid as the validated higher-M Brès et al. (2015–2018) simulations (p. 29) |
| Database | 10,000 snapshots of ρ, u, p every 0.2 acoustic time units on a structured cylindrical grid, 30D × 6D (p. 29) |
| Decomposition | azimuthal Fourier transform first; only m = 0 shown; modes plotted as pressure (p. 29–30) |
| SPOD | q = [ρ, u_x, u_r, u_θ, p] full state vector, Chu (1965) compressible energy norm, N_f = 256, N_b = 78, Hann; St = fD/U_j (p. 30) |
| Resolvent | compressible N–S linearised about the LES mean; C restricts output to x, r ∈ [0, 30] × [0, 6]; B weights forcing by the LES TKE (after Towne et al. 2017); Chu norm on input and output; 4th-order finite differences on 950 × 250 (x, r) points with sponge zones (zero weight); leading modes from Arnoldi on R̃R̃* (scheme of Schmidt et al. 2017a) (p. 35) |

> **Check against the PDF:** the block overlap for the jet is not stated. With 10,000 snapshots, N_f = 256 and 50% overlap one gets 77 blocks, not 78, so the overlap or snapshot count used differs slightly. The GL forcing envelope is printed as exp[(x/L)^p] (p. 22), which grows with |x|; a minus sign is presumably missing. The correlated-forcing parameter symbols in eq. 6.3 (p. 25–26) were garbled in extraction and are given here as "envelope width 4, wavelength 20" from the text.

## Key equations
Notation: * is complex conjugate / Hermitian transpose; E{·} expectation; W weight; f frequency (cycles); ω = 2πf.

- **SPOD eigenproblem** (eq. 2.18, p. 7), with CSD S the Fourier transform of the stationary correlation (eq. 2.16–2.17):
  $$\int_\Omega \boldsymbol S(\boldsymbol x,\boldsymbol x',f)\,\boldsymbol W(\boldsymbol x')\,\boldsymbol\psi(\boldsymbol x',f)\,\mathrm d\boldsymbol x'=\lambda(f)\,\boldsymbol\psi(\boldsymbol x,f),\qquad \boldsymbol S(\boldsymbol x,\boldsymbol x',f)=\int_{-\infty}^{\infty}\boldsymbol C(\boldsymbol x,\boldsymbol x',\tau)\,e^{-i2\pi f\tau}\,\mathrm d\tau$$
- **SPOD expansion and correlations** (eq. 2.19–2.21, 2.25, p. 7–8):
  $$\hat{\boldsymbol q}(\boldsymbol x,f)=\sum_j a_j(f)\boldsymbol\psi_j(\boldsymbol x,f),\qquad E\{a_j(f)a_k^*(f')\}=\lambda_j\,\delta_{jk}\,\delta(f-f'),\qquad \boldsymbol S=\sum_j\lambda_j\boldsymbol\psi_j\boldsymbol\psi_j^*$$
- **Space-only POD coefficient correlation** (eq. 2.24, p. 8): $C^{POD}_{a_ja_k}(\tau)=E\{a_j(t)a_k^*(t+\tau)\}$, equal to $\lambda_j\delta_{jk}$ only at τ = 0.
- **POD from SPOD** (eq. 2.29, p. 9): $\lambda_j=\int_{-\infty}^{\infty}\sum_k\lambda_k(f)\,|c_{jk}(f)|^2\,\mathrm df$, with $c_{jk}=\langle\boldsymbol\phi_j,\boldsymbol\psi_k(f)\rangle_x$.
- **Welch CSD estimate** (eq. 3.6–3.8, p. 11):
  $$\mathbf S_{f_k}=\frac{\Delta t}{sN_b}\sum_{n=1}^{N_b}\hat{\mathbf q}_k^{(n)}\big(\hat{\mathbf q}_k^{(n)}\big)^*=\hat{\mathbf Q}_{f_k}\hat{\mathbf Q}_{f_k}^*,\qquad \hat{\mathbf Q}_{f_k}=\sqrt\kappa\,[\hat{\mathbf q}_k^{(1)},\dots,\hat{\mathbf q}_k^{(N_b)}],\quad \kappa=\frac{\Delta t}{sN_b},\quad s=\sum_{j=1}^{N_f}w_j^2$$
- **Discrete SPOD** (eq. 3.9–3.11, p. 11):
  $$\mathbf S_{f_k}\mathbf W\boldsymbol\Psi_{f_k}=\boldsymbol\Psi_{f_k}\boldsymbol\Lambda_{f_k};\qquad \hat{\mathbf Q}_{f_k}^*\mathbf W\hat{\mathbf Q}_{f_k}\boldsymbol\Theta_{f_k}=\boldsymbol\Theta_{f_k}\tilde{\boldsymbol\Lambda}_{f_k},\quad \tilde{\boldsymbol\Psi}_{f_k}=\hat{\mathbf Q}_{f_k}\boldsymbol\Theta_{f_k}\tilde{\boldsymbol\Lambda}_{f_k}^{-1/2}$$
- **Exact / ensemble DMD** (eq. 4.1, 4.4–4.6, p. 13–14): $\mathbf A=\mathbf Y\mathbf X^+$, with $\mathbf X=[\mathbf Q^{(1)}\mathbf T_X,\dots]$, $\mathbf Y=[\mathbf Q^{(1)}\mathbf T_Y,\dots]$. For zero-mean, linearly consistent data, $\mathbf A[\tilde{\mathbf Q}^{(1)},\dots]=[\tilde{\mathbf Q}^{(1)},\dots]\,\mathrm{diag}(\boldsymbol\Lambda_{DMD},\dots)$ with $\boldsymbol\Lambda_{DMD}=\mathrm{diag}(z,z^2,\dots,z^{M-1})$, $z=e^{-i2\pi/M}$; frequency $f_k=\mathrm{Re}[\ln(z^{k-1})/(-i2\pi\Delta t)]$.
- **Resolvent** (eq. 5.3–5.16, p. 15–17): $\partial_t\boldsymbol q'-\mathcal A(\bar{\boldsymbol q})\boldsymbol q'=\boldsymbol h=\mathcal B\boldsymbol\eta$, $\boldsymbol y=\mathcal C\boldsymbol q'$;
  $$\mathcal R=\mathcal C(i2\pi f\mathcal I-\mathcal A)^{-1}\mathcal B=\sum_j\sigma_j\hat{\boldsymbol u}_j\langle\cdot,\hat{\boldsymbol v}_j\rangle_\eta,\qquad \hat{\boldsymbol y}=\sum_j\hat{\boldsymbol u}_j\sigma_j\beta_j,\quad \beta_j=\langle\hat{\boldsymbol\eta},\hat{\boldsymbol v}_j\rangle_\eta$$
- **CSD in resolvent modes** (eq. 5.18–5.19, p. 17): $\boldsymbol S_{yy}=\sum_j\sum_k\hat{\boldsymbol u}_j\hat{\boldsymbol u}_k^*\sigma_j\sigma_k S_{\beta_j\beta_k}$, $S_{\beta_j\beta_k}=E\{\beta_j\beta_k^*\}$.
- **Equivalence condition** (eq. 5.21–5.24, p. 18–19): $S_{\beta_j\beta_k}=\mu_j\delta_{jk}$ ⇒ same mode sets; $\mu_j=1\;\forall j$ requires $\boldsymbol S_{\eta\eta}\boldsymbol W_\eta=\boldsymbol I\,\delta(\boldsymbol x-\boldsymbol x')$ (white forcing), giving $\sigma_j^2=\lambda_j$, $\hat{\boldsymbol u}_j=\boldsymbol\psi_j$.
- **Optimal deterministic coefficients** (eq. 5.27, p. 20): $b_j(f)=\dfrac{\sqrt{\lambda_1(f)}}{\sigma_j(f)}\langle\boldsymbol\psi_1,\hat{\boldsymbol u}_j\rangle_y$.
- **Statistical coefficients from SPOD** (eq. 5.28–5.30, p. 21):
  $$S_{\beta_j\beta_k}=\sum_{n=1}^{\infty}\frac{\lambda_n}{\sigma_j\sigma_k}\gamma_{nj}\gamma_{nk}^*,\quad \gamma_{jk}=\langle\boldsymbol\psi_j,\hat{\boldsymbol u}_k\rangle_y;\qquad \boldsymbol S_{yy}\approx\sum_{n=1}^{N_s}\lambda_n\Big(\sum_{j=1}^{N_r}\gamma_{nj}\hat{\boldsymbol u}_j\Big)\Big(\sum_{k=1}^{N_r}\gamma_{nk}\hat{\boldsymbol u}_k\Big)^*$$
- **Discrete forms** (App. C, p. 41–42): weighted SVD $\tilde{\mathbf R}=\mathbf W_y^{1/2}\mathbf R\mathbf W_\eta^{-1/2}=\tilde{\mathbf U}\boldsymbol\Sigma\tilde{\mathbf V}^*$; $\mathbf S_{yy}=\boldsymbol\Psi\boldsymbol\Lambda\boldsymbol\Psi^*=\mathbf U\boldsymbol\Sigma\mathbf S_{\beta\beta}\boldsymbol\Sigma\mathbf U^*$ (eq. C.8); $\mathbf S_{\beta\beta}=\boldsymbol\Sigma^{-1}\mathbf G^*\boldsymbol\Lambda\mathbf G\boldsymbol\Sigma^{-1}$ with $\mathbf G=\boldsymbol\Psi^*\mathbf W_y\mathbf U$ (eq. C.10).

> Eq. 3.4–3.11, 5.20–5.31 and 6.1–6.2 were checked against rendered pages 10–11, 18, 20–22. The others are rebuilt from garbled text extraction; check symbols and conjugation placement (particularly eq. 2.24, 4.6 and C.10) against the PDF before coding from them.

## Data tables
| Case | Snapshots | Δt | N_f | Overlap | N_b | Window | Page |
|---|---|---|---|---|---|---|---|
| GL, white forcing | 40,000 | 0.5 | 384 | 75% | not stated (≈ 413 by my count) | Hann | 22 |
| GL, correlated forcing | 10,000 | 0.5 (assumed same) | 384 (assumed same) | — | — | — | 26 |
| M 0.4 jet LES | 10,000 | 0.2 D/c_∞ | 256 | not stated (≈ 50% implied) | 78 | Hann | 29–30 |

> The N_b for the GL case and the overlap for the jet are my inferences, not stated in the paper.

## Figures worth remembering
- **Fig. 1 (p. 10):** schematic of Welch-based SPOD: blocks → block DFTs → stack the same-frequency columns → Q̂_{f_k}. The figure to reuse when explaining SPOD.
- **Fig. 2 (p. 23):** GL white forcing: SPOD eigenvalues (symbols) on top of resolvent gains (lines) for modes 1–4; leakage overshoot of mode 2 at the mode-1 peak is visible.
- **Fig. 3 (p. 24):** ω–x maps of resolvent, SPOD and space-only POD modes 1–3. POD modes cannot follow the frequency-dependent shapes.
- **Fig. 5 (p. 26):** lagged correlation of POD coefficients: the clearest demonstration that POD modes do not evolve coherently.
- **Fig. 6–8 (p. 26–28):** correlated forcing: non-diagonal γ_jk, banded S_ββ, and PSD reconstructions vs N_r for four coefficient choices.
- **Fig. 10 (p. 31):** jet SPOD spectrum (λ_j vs St, shaded by mode number) and modes 1–2 at St = 0.2–1. A standard look for SPOD results.
- **Fig. 11 (p. 32):** space-only POD of the same jet: flat eigenvalue decay and broadband coefficient PSDs.
- **Fig. 12 (p. 34):** DMD eigenvalues on the unit circle, and standard DMD vs long-time DFT vs three short-time DFT modes.
- **Fig. 13 (p. 36):** resolvent gains at St = 0.6 and 0.2, and leading SPOD vs resolvent modes.

## Notation
- q: fluctuation state; ψ_j(x, f), λ_j(f): SPOD modes and eigenvalues; φ_j(x), λ_j, a_j(t): space-only POD modes, eigenvalues, coefficients.
- N: state size; M: snapshots; N_f: snapshots per block; N_o: overlap; N_b: blocks; w_j: window; s = Σ w_j²; κ = Δt/(sN_b); W: weight/quadrature matrix.
- A: linearised operator (resolvent) or DMD matrix (§4) — the paper reuses the letter; B, C: input/output operators; η: forcing (input); y: output; R: resolvent; σ_j, û_j, v̂_j: gains, output and input modes; β_j: resolvent expansion coefficients (statistical), b_j: deterministic ones; μ_j: their variances when uncorrelated; γ_jk: SPOD–resolvent projection; N_s, N_r: SPOD and resolvent modes kept.
- z = e^{−i2π/M}: DMD/DFT eigenvalue base; N_e: number of realisations in ensemble DMD.

## Relevance to this project
This is the core methods reference for the SPOD step in CLAUDE.md, and the theoretical basis for the SPOD → reconstruction → Hilbert POD pipeline and for any SPOD–resolvent comparison.

- **Data requirements by method:**
  - *SPOD* needs time-resolved, uniformly sampled data with enough record length for several blocks (p. 3, 9–10, 38). It suits high-speed schlieren, microphone arrays and LES. It does **not** apply to 2 Hz PIV.
  - *Space-only POD* needs no time resolution, which is why it remains the tool for PIV (p. 3, 5). The paper's critique (p. 8–9) is the theoretical reason why POD pairs need checking (phase-portrait rings, as in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)): pairs are coherent only when one frequency dominates, as in strongly tonal screech or the Rossiter example (p. 9). For broadband or multi-tone flows they mix frequencies.
  - *DMD* on a stationary turbulent flow is essentially a DFT; subtract the mean (p. 13, 33). See [schmid-2010](schmid-2010-dynamic-mode-decomposition.md) and [rowley-2009](rowley-2009-spectral-analysis-nonlinear-flows-koopman.md); this paper's mean-subtraction advice and DFT equivalence go beyond what those notes cover.
- **Parameter choices for lab data:**
  - Block length sets frequency resolution Δf = 1/(N_f Δt); more blocks reduce variance. With fixed records the two trade off (p. 23).
  - The paper warns that sharp spectral peaks are hard to converge (p. 23, 38). Screech and impingement tones are exactly that, so expect leakage into neighbouring bins and into the 2nd SPOD eigenvalue at the tone frequency (as in Fig. 2). Long blocks, careful windowing, or the remedies in [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md) (multitaper, adaptive bandwidth) and [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md) (band-ensemble SPOD) address this.
  - Use a physically meaningful weight W (Chu norm for compressible LES; area/quadrature weights for schlieren or PIV grids) (p. 11, 30).
- **Intermittency and mode switching:** SPOD assumes stationarity and averages over blocks (p. 6, 10). Mode switching or intermittent bursts get spread across sub-optimal modes and neighbouring frequencies rather than resolved in time. The paper offers no time-local view. This is the gap the pipeline fills: reconstruct from selected SPOD modes and frequencies, then apply [HPOD](raiola-2025-hilbert-pod.md) to get instantaneous amplitude and frequency. The HPOD paper shows HPOD reduces to SPOD under stationarity and homogeneity, and cites this paper's M 0.4 jet SPOD modes when comparing wavepacket shapes (Raiola note, p. 19 there). Note that the reconstruction (inverse transform of block-wise expansion coefficients a_j(f)) is not described in this paper; it is developed in later work (e.g. Nekkanti & Schmidt 2021, frequency–time analysis and low-rank reconstruction; *my addition, not cited here*).
- **Modelling side:**
  - SPOD–resolvent equivalence holds exactly only for uncorrelated expansion coefficients (white forcing). In jets, leading modes match for St ≳ 0.3 (KH), not at low St or for sub-optimal modes (p. 35). This agrees with [schmidt-2018](schmidt-2018-spectral-analysis-jet-turbulence.md) (low-rank range and mode matches across M_j 0.4–1.5) and [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md).
  - Forcing colour: [morra-2021](morra-2021-colour-of-forcing-resolvent-channel.md) measures non-white forcing directly and confirms that the true forcing CSD recovers the response, the general case of §5.4 here. [pickering-2021](pickering-2021-optimal-eddy-viscosity-resolvent-jets.md) uses eddy viscosity to make the resolvent mimic coloured forcing.
  - Linear-model background: [garnaud-2013](garnaud-2013-preferred-mode-incompressible-jets.md) (resolvent of jets, non-modal preferred mode), [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md) and [schmidt-2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md) (trapped acoustic waves, the same group's LES).
  - For screech or impinging tones, resolvent analysis of a mean flow only gives amplifier dynamics; a resonance loop involves the feedback (guided-jet mode) that the resolvent forcing model must carry. The paper's statistical-coefficient argument suggests forcing correlations matter most precisely in such low-rank, tonal cases (*my inference*).
  - The GL setup (§6.1, p. 22) is a compact test case for checking an SPOD/resolvent implementation before using it on lab data, and the [Towne 2022 database](towne-2022-database-reduced-complexity-modeling.md) provides jet LES data plus SPOD/resolvent demos from the same group.
- **Facility:** numerical work only (LES from Cascade/Stanford, Brès); no Shock Lab group involvement.
- **Follow-up candidates for `/add-paper`:**
  - Schmidt & Colonius (2020), *Guide to spectral proper orthogonal decomposition* (AIAA J), practical parameter guidance.
  - Schmidt (2017/2019), streaming SPOD.
  - Nekkanti & Schmidt (2021), SPOD-based reconstruction and frequency–time analysis (directly relevant to the pipeline).
  - Sieber et al. (2016), the other "SPOD".
  - Chen, Tu & Rowley (2012), DMD variants and the DFT equivalence; Tu et al. (2014), exact DMD.
