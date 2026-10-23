---
key: "yeung-2024-adaptive-spod-broadband-tonal"
title: "Adaptive spectral proper orthogonal decomposition of broadband-tonal flows"
authors: ["Yeung, B. C. Y.", "Schmidt, O. T."]
year: 2024
type: "article"
venue: "Theor. Comput. Fluid Dyn. 38, 355–374"
bib: {"journal": "Theoretical and Computational Fluid Dynamics", "volume": "38", "pages": "355--374"}
doi: "10.1007/s00162-024-00695-0"
arxiv: ""
pdf: "modal-decomposition/Yeung-Schmidt_2024_Adaptive-Spectral-Proper-Orthogonal-Decomposition-Of-Broadband-Tonal-Flows.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["PIV-TR", "LES"]
methods: ["SPOD", "PSD"]
flow: ["cavity", "round-jet", "subsonic"]
phenomena: ["KH-wavepackets", "cavity-tones"]
params: {"M": "0.6 (cavity)", "M_j": "0.9 (jet)"}
topics: ["modal-decomposition"]
related: ["von-saldern-2026-band-ensemble-spod", "schmidt-2020-guide-spod", "towne-2018-spod-relationship-dmd-resolvent", "yeung-2022-3d-spod-twin-rectangular-jet", "schmidt-2018-spectral-analysis-jet-turbulence", "towne-2022-database-reduced-complexity-modeling", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "schmidt-2019-streaming-spod"]
cites: ["bres-2017-unstructured-les-supersonic-jets", "schmid-2010-dynamic-mode-decomposition", "schmidt-2018-spectral-analysis-jet-turbulence", "schmidt-2019-streaming-spod", "schmidt-2020-guide-spod", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "towne-2018-spod-relationship-dmd-resolvent", "yeung-2022-3d-spod-twin-rectangular-jet"]
summary: "Multitaper (sine-taper) SPOD with adaptive bandwidth per frequency: sharp tones plus low-variance broadband; matches Welch with 75% less data; cavity TR-PIV, M 0.9 jet LES"
---
# Adaptive spectral proper orthogonal decomposition of broadband-tonal flows

- **Authors:** B. C. Y. Yeung, O. T. Schmidt (UC San Diego)
- **Source:** Theor. Comput. Fluid Dyn. 38:355–374 (2024). Received 6 Dec 2023, accepted 15 Apr 2024, published online 21 Jun 2024. Communicated by K. Oberleithner.
- **DOI:** 10.1007/s00162-024-00695-0
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Yeung-Schmidt_2024_Adaptive-Spectral-Proper-Orthogonal-Decomposition-Of-Broadband-Tonal-Flows.pdf` (20 pp.). Page refs below are PDF pages; journal page = PDF page + 354.
- **Tags:** SPOD, multitaper spectral estimation, sine (minimum-bias) tapers, DPSS/Slepian tapers, Welch, variance–bias trade-off, adaptive bandwidth, mode convergence, Parseval, lossless/lossy data compression, tonal + broadband spectra, Rossiter tones, open cavity, TR-PIV, subsonic jet LES, KH wavepackets

## Summary
The paper replaces Welch block-averaging in SPOD with multitaper estimation using sine tapers, which minimise *local* bias, so sharp tones are not smeared. The whole record is used as one block (N_fft = N_t), and every sine-tapered Fourier realisation is obtained by central differences from a single zero-padded FFT. Memory therefore doesn't grow with the number of tapers. An adaptive version picks the number of tapers per frequency: tapers are added until the leading SPOD mode stops changing (similarity tolerance `tol`). Tones and low-rank frequencies converge early and keep narrow bandwidths, while broadband frequencies get wide bandwidths and low variance. Lossless QR/EVD compression in time makes the cost nearly independent of grid size. On cavity TR-PIV (Rossiter tones) and M = 0.9 jet LES, it matches or beats standard Welch SPOD with 75% fewer snapshots. The authors recommend adaptivity (tol = 10⁻⁶) for tonal flows and a constant N_win (start at 100) for broadband flows.

## Key findings
- **Sine vs DPSS tapers at equal bandwidth** (cavity, N_fft = N_t = 16,000; Fig. 4, p. 9–10):
  - At N_win = 80, both give similar broadband levels. Sine tapers give sharper and more energetic tonal peaks (e.g. 941 Hz), i.e. lower local bias, and slightly less bin-to-bin variance (p. 10).
  - The leading modes are visually nearly identical for the two taper families (p. 10).
  - Eigenvalue gap λ₁−λ₂ at the 941 Hz Rossiter tone: ≈0.25 (DPSS), ≈0.32 (sine). At 3379 Hz: ≈0.0017 / 0.0016. At 6000 Hz, λ₁ ≈ λ₂ and the modes converge slowly (p. 10).
  - At N_win = 400, broadband modes are smoother but tones are badly flattened and nearby peaks merge. DPSS peaks become "boxy"; sine peaks keep their curvature, so tone frequencies can still be read off (p. 10).
- **Tone-frequency tracking vs N_win** (5–400, Fig. 5, eq. 25, p. 11): DPSS peak frequencies meander for N_win ≲ 200 because of variance, and drift to lower frequencies for N_win ≳ 200 as tones merge with the decaying broadband spectrum. Sine tapers show the same effects much more weakly. Conclusion: for mixed spectra, minimising local bias matters more than maximising spectral concentration (p. 11). This breaks down for closely spaced peaks that merge (p. 11).
- **No need to segment** (Fig. 6, p. 11–12): sine-taper SPOD on the full record (97 tapers) and sine-Welch SPOD (N_fft = 4096, 50% overlap, 6 blocks, 24 tapers each) give matching λ₁, λ₂ and modes at similar bandwidth. Sine-taper needs one parameter (N_win) instead of three (N_fft, overlap, N_win) (p. 12).
- **Similarity map** (Fig. 7, p. 12): leading-mode similarity between N_win and N_win−1 tapers improves with N_win and is best in wedges centred on the Rossiter tones. It degrades with frequency above ≈3000 Hz (broadband). Its bin-to-bin variance is why the neighbour constraint (eq. 21) must be enforced.
- **Effect of tol** (Fig. 8, p. 12–13):
  - tol = 10⁻⁵: sharp tones but high variance; N_win ranges ≈10–200, with N_win ≈ 10 at 941 and 1538 Hz (2nd and 3rd Rossiter tones). Only the 941 Hz mode is smooth (p. 12).
  - tol = 10⁻⁶: variance greatly reduced, tones still sharp and individually resolved. N_win dips to ≈30 at the main tones and is much higher elsewhere. Modes at 6000 Hz have clean KH wavenumbers (p. 12–13).
  - tol = 10⁻⁷: variance largely gone, but leakage is worse and some close peaks merge (p. 13).
  - tol = 10⁻⁶ combines the tone sharpness of N_win = 80 with the variance and mode quality of N_win = 400 (p. 13).
- **Data efficiency:**
  - Cavity: adaptive SPOD (tol = 5×10⁻⁵) on the first 4,000 snapshots gives tones as well resolved as Welch on all 16,000 (N_fft = 1280, 75% overlap, Hamming), with lower variance and slightly smoother modes at ≈3380 and 6000 Hz (Fig. 9, p. 13–14).
  - Jet: non-adaptive sine SPOD (N_win = 100) on the first 2,500 snapshots gives lower variance than Welch on all 10,000 (N_fft = 256, 50% overlap, Hamming), with similarly smooth modes (Fig. 11, p. 15–16).
- **Jet (broadband) with adaptivity** (Fig. 10, p. 15):
  - At tol = 10⁻⁶ the spectrum shape matches Welch and shows no artefacts. N_win ≳ 100 everywhere with no deep valleys, and it spikes for 0.04 ≲ St ≲ 0.3, linked to KH becoming dominant for St ≳ 0.2.
  - At St = 0.05, the adaptive mode clearly *underestimates the wavenumber*. Large bandwidths at low frequency bias modes toward lower k (and lower f). Hence the advice: no adaptivity for broadband flows; use constant N_win ≈ 100 and adjust (p. 15).
  - Below St ≈ 0.05 the spectrum flattens into a plateau whose half-width ≈ the half-bandwidth (δf/Δt = 0.037 for the f = 0 bin in the adaptive case; 0.028 for N_win = 100 in Fig. 10a). The bandwidth sets the lowest resolvable non-zero frequency (p. 15).
- **Best practice:** tol = 10⁻⁶. It was also checked on another TR-PIV database (slat noise, Seo et al. 2023) and a cavity DNS, but those results are not shown (p. 16). Adaptive SPOD of tonal flows matches Welch with up to 75% less data (p. 16).
- **Caveats** (p. 16–17):
  - Adaptive tapering breaks Parseval even in expectation. In practice this is small: the cavity tol = 10⁻⁶ spectrum's total power exceeds the sample variance by 2% (p. 17).
  - For large N_win, partial correlation across the bandwidth biases modes toward f = 0 and k = 0. This is worst at low f and for the adaptive algorithm. A tol that decreases with frequency would help, at the cost of low-frequency convergence (p. 17).
  - For very long records, cap N_fft instead of letting it equal N_t (p. 17).
  - A large λ₁−λ₂ gap is sufficient but not necessary for fast convergence. With two mechanisms at one frequency (e.g. statistical symmetries, as in twin rectangular jets, Yeung et al. 2022), the gap may instead be between λ₂ and λ₃ (footnote 2, p. 10).
- **Cost** (Appendix A, Fig. 12, p. 17–18):
  - DPSS wall time and memory grow linearly with N_win. For the jet, DPSS was memory-limited to N_win = 24.
  - Sine-taper memory is constant in N_win and wall time grows only weakly; time is dominated by compression and mode expansion.
  - Sine-taper wall times for cavity and jet are of the same order despite a 26× difference in N_dof (p. 17–18).
  - Adaptive runs are slow: ≈18 h (cavity) and ≈8 h (jet) at tol = 10⁻⁶ (p. 17).
  - Lossy rank-1000 compression (16× beyond lossless) cut the cavity adaptive run from 18 h to 2.4 h (≈87% saving) with visually identical spectrum, modes and N_win (Appendix B, Fig. 13, p. 6, 18).

## Setup / method
- **Datasets** (Table 1, p. 3; Sect. 3–4, p. 7–8, 14):

  | Case | M | State q | Δt | N_t | N_x | N_y / N_r | Norm (W) |
  |---|---|---|---|---|---|---|---|
  | Cavity TR-PIV (Zhang et al. 2020) | 0.6 (u∞/c∞) | [u, v] | 6.25×10⁻⁵ s | 16,000 | 156 | 55 | W = I (incompressible TKE) |
  | Round jet LES (Brès et al. 2018) | 0.9 (u_j/c_j) | [ρ, u_x, u_r, u_θ, T] (m = 0 only) | 0.18 D_j/u_j | 10,000 | 656 | 138 (N_θ = 128) | Chu compressible energy, eq. 26 |

  - Cavity: velocities scaled by u∞ and lengths by cavity depth D_c; frequencies in Hz to match Zhang et al. (p. 8). Facility details are not given in this paper (see Zhang et al. 2020, Exp. Fluids 61:226).
  - Derived (not stated): f_s = 16 kHz, so Nyquist is 8 kHz (matches the plotted range), the record is 1 s, and the bin width is 1 Hz with N_fft = N_t. For the jet, the record is 1800 D_j/u_j, bin width ΔSt ≈ 5.6×10⁻⁴, and Nyquist St ≈ 2.8.
- **Simulation side (jet LES):**
  - Unstructured LES with the solver "Charles" ([Brès et al. 2017](bres-2017-unstructured-les-supersonic-jets.md)), from Brès et al. (2018), the nozzle boundary-layer study.
  - Variables are scaled by nozzle-exit centreline values (ρ_j, u_j, T_j), lengths by D_j and time by D_j/u_j (p. 14).
  - Data are interpolated to a non-uniform cylindrical grid of 656×138×128. Only the azimuthal Fourier component m = 0 is used, relying on rotational symmetry (p. 14).
  - The LES numerics, SGS model and resolution are *not* described here. Defer to Brès et al. (2017, 2018).
  - There is no stability, resolvent or ROM modelling in this paper. It is a method paper aimed at producing converged modes for "physical discovery and ROM" (p. 2, 7).
- **Standard SPOD** (Sect. 2.1, p. 3–4):
  - Weighted CSD at each frequency, eigendecomposed directly or by method of snapshots (N×N, eq. 5–6).
  - Welch: N = N_blk overlapping blocks of length N_fft, normalised half-bandwidth δf = 1/N_fft (p. 4).
- **Multitaper SPOD** (Sect. 2.2, p. 4–5):
  - N = N_win orthogonal tapers applied to the *whole* record (eq. 7).
  - DPSS (Schmidt 2022): the user sets δf, giving N_win = ⌊2δf N_fft⌋ − 1, with uniform weights 1/N_win.
  - Sine tapers (Riedel & Sidorenko 1995): the user sets N_win, giving δf = (N_win+1)/[2(N_fft+1)]. Parabolic weights (eq. 11) penalise high-order, wider-band tapers (p. 5).
  - Sine tapers have slightly lower spectral concentration than DPSS but minimise local bias (p. 4–5).
- **Central-difference trick** (eq. 13–14, p. 5):
  - Zero-pad the record to 2N_fft and take one FFT. Each sine-tapered realisation is then a scaled difference of two unwindowed bins at k ± nΔk, with Δk = N_fft/[2(N_fft+1)] ≈ ½.
  - So only one FFT is computed and stored, whatever N_win is. This removes the memory motivation for hybrid multitaper–Welch.
  - The paper uses N_fft = N_t throughout (p. 5).
- **Compression** (Sect. 2.3, p. 6):
  - Weighted data X = W^{1/2}Q = UX̃, using QR, or the N_t×N_t EVD X*X = VL when N_dof ≳ 8N_t.
  - All spectral work is then done on X̃ (N_t×N_t). This is lossless (eq. 19), and the modes are recovered with U (eq. 20).
  - Rank-d truncation gives optimal lossy compression.
  - In the tests, QR was used for the cavity and EVD for the jet (p. 17). Compression works with any estimator, including Welch (p. 6).
- **Adaptive algorithm** (Sect. 2.4, Algorithm 1, p. 6–8):
  1. Compute the zero-padded FFT once.
  2. Start at iteration i = 1 with N_win = 3 at all frequencies, then add one taper per iteration (N_win = i + 2).
  3. At each unfixed frequency, compute the SPOD and the similarity α between the leading modes at N_win and N_win−1 (eq. 22–23, computed in the compressed space).
  4. Fix N_win,fk once 1 − α ≤ tol (eq. 24), or when the neighbour constraint |N_win,fk − N_win,fk±1| ≤ 1 (eq. 21, Barbour & Parker 2014) stops further growth.
  5. Iterate until all frequencies are fixed.
  - Algorithm 1 is written without compression but can include it (p. 7).
  - In Appendix B, N_win,fk is found using lossy compression, then the final SPOD is recomputed on the losslessly compressed data (p. 18).
- **Comparison runs** (DPSS/sine half-bandwidths from the p. 5 formulas; Welch half-bandwidth = 1/N_fft from p. 4; Hz values derived):

  | Fig. | Data | Estimator | Parameters | Half-bandwidth (derived) |
  |---|---|---|---|---|
  | 4, 5 | cavity, all 16,000 | DPSS vs sine, N_fft = N_t | N_win = 80 (DPSS δf N_fft = 40.5) and 400 (200.5); Fig. 5 sweeps 5–400 | ≈40.5 Hz and ≈200 Hz |
  | 6 | cavity | sine vs sine-Welch | 97 tapers; vs N_fft = 4096, 50% overlap, 24 tapers | ≈49 Hz for both |
  | 8 | cavity | adaptive sine | tol = 10⁻⁵, 10⁻⁶, 10⁻⁷ | varies with f |
  | 9 | cavity | Welch (all data) vs adaptive (first 4,000) | N_fft = 1280, 75% overlap, Hamming; tol = 5×10⁻⁵ | Welch 12.5 Hz |
  | 10 | jet, all 10,000 | sine constant vs adaptive | N_win = 100; tol = 10⁻⁶ | ΔSt 0.028; 0.037 at f = 0 (adaptive) |
  | 11 | jet | Welch (all data) vs sine (first 2,500) | N_fft = 256, 50% overlap, Hamming; N_win = 100 | Welch ΔSt ≈ 0.022 |
  | 13 | cavity | adaptive + lossy | tol = 10⁻⁶, d = 1000 | — |

- **Hardware and software** (p. 17): MATLAB on a 48-core Xeon workstation with 500 GB RAM. QR, FFT and EVD ran in single precision. Only the three leading modes per frequency were stored. The code is said to be openly available in a public repository, but the paper doesn't name it (p. 17).

## Key equations
- CSD and SPOD (eq. 3–4, p. 4): $\mathbf S_{f_k}=\hat{\mathbf X}_{f_k}\hat{\mathbf X}_{f_k}^*$, $\hat{\mathbf X}_{f_k}=\sqrt{\Delta t/N}\,\mathbf W^{1/2}\hat{\mathbf Q}_{f_k}$; $\mathbf S_{f_k}\boldsymbol\Theta_{f_k}=\boldsymbol\Theta_{f_k}\boldsymbol\Lambda_{f_k}$, $\boldsymbol\Phi_{f_k}=\mathbf W^{-1/2}\boldsymbol\Theta_{f_k}$; $\langle\hat{\mathbf q}_1,\hat{\mathbf q}_2\rangle_x=\hat{\mathbf q}_2^*\mathbf W\hat{\mathbf q}_1$.
- Method of snapshots (eq. 5–6, p. 4): $\hat{\mathbf X}^*_{f_k}\hat{\mathbf X}_{f_k}\boldsymbol\Psi_{f_k}=\boldsymbol\Psi_{f_k}\boldsymbol\Lambda_{f_k}$, $\boldsymbol\Phi_{f_k}=\mathbf W^{-1/2}\hat{\mathbf X}_{f_k}\boldsymbol\Psi_{f_k}\boldsymbol\Lambda_{f_k}^{-1/2}$.
- Multitaper Fourier realisations (eq. 7, p. 4): $\hat{\mathbf q}^{(n)}_{f_k}=\sum_{j=0}^{N_{fft}-1}v^{(n)}_{j+1}\mathbf q_{t_{j+1}}e^{-i2\pi jk/N_{fft}}$, n = 1…N_win.
- Local-bias term minimised by the minimum-bias tapers (p. 4): $\propto\int_{-1/(2\Delta t)}^{1/(2\Delta t)}|\hat v(f)|^2 f^2\,df$.
- Sine tapers (eq. 8, p. 4): $v^{(n)}_j=\sqrt{\dfrac{2}{N_{fft}+1}}\sin\dfrac{\pi n j}{N_{fft}+1}$, normalised so $\sum_j (v^{(n)}_j)^2=1$.
- Parseval for SPOD (eq. 9–10, p. 5): $\Delta f\sum_{k=0}^{N_{fft}-1}\sum_{i=1}^{N_{win}}E\{\lambda_{i,f_k}\}=\|\boldsymbol\sigma\|_x^2=\frac{1}{N_t}\sum_{j}E\{\|\mathbf q_{t_j}\|_x^2\}$, with $\Delta f=1/(N_{fft}\Delta t)$. The sample version (≈) is exact only for the rectangular window $v_j=1/\sqrt{N_{fft}}$.
- Bandwidths (p. 5): DPSS $N_{win}=\lfloor 2\delta f N_{fft}\rfloor-1$; sine $\delta f=(N_{win}+1)/[2(N_{fft}+1)]$.
- Sine weights (eq. 11, p. 5): $\mu_n=\dfrac{6}{4N_{win}^3+3N_{win}^2-N_{win}}\,[N_{win}^2-(n-1)^2]$. Check: $\sum_{n=1}^{N}[N^2-(n-1)^2]=N^3-\tfrac{(N-1)N(2N-1)}{6}=\tfrac{4N^3+3N^2-N}{6}$, so $\sum\mu_n=1$ ✓.
- Weighted realisations (eq. 12, p. 5): $\hat{\mathbf X}_{f_k}=\sqrt{\Delta t}\,\mathbf W^{1/2}\hat{\mathbf Q}_{f_k}\,\mathrm{diag}([\mu_1,\dots,\mu_{N_{win}}])^{1/2}$.
- Central difference (eq. 13–14, p. 5): $\hat{\mathbf q}^{(n)}_{f_k}=\sqrt{\dfrac{2}{N_{fft}+1}}\;\dfrac{\hat{\mathbf q}_{f_{k-n\Delta k}}-\hat{\mathbf q}_{f_{k+n\Delta k}}}{2i}$, $\Delta k=N_{fft}/[2(N_{fft}+1)]\approx\tfrac12$. The unwindowed $\hat{\mathbf q}_{f_k}$ come from a length-$2N_{fft}$ zero-padded FFT (eq. 14).
- Compression (eq. 15–17, 20, p. 6): $\mathbf X=\mathbf W^{1/2}\mathbf Q=\mathbf U\tilde{\mathbf X}$; or $\mathbf X^*\mathbf X\mathbf V=\mathbf V\mathbf L$, $\mathbf U=\mathbf X\mathbf V\mathbf L^{-1/2}$, $\tilde{\mathbf X}=\mathbf L^{1/2}\mathbf V^*$; modes $\boldsymbol\Phi_{f_k}=\mathbf W^{-1/2}\mathbf U\tilde{\boldsymbol\Theta}_{f_k}$, $\tilde{\boldsymbol\Theta}_{f_k}=\hat{\tilde{\mathbf X}}_{f_k}\boldsymbol\Psi_{f_k}\boldsymbol\Lambda_{f_k}^{-1/2}$.
- Neighbour constraint (eq. 21, p. 6): $|N_{win,f_k}-N_{win,f_{k\pm1}}|\le 1$.
- Similarity and convergence (eq. 22–24, p. 7): $\alpha^{(i)}_{f_k}=\big|(\boldsymbol\phi^{(i)}_{1,f_k})^*\mathbf W\boldsymbol\phi^{(i-1)}_{1,f_k}\big|=\big|(\tilde{\boldsymbol\theta}^{(i)}_{1,f_k})^*\tilde{\boldsymbol\theta}^{(i-1)}_{1,f_k}\big|$; converged if $1-\alpha^{(i)}_{f_k}\le tol$.
- Tone tracking (eq. 25, p. 11): $f_R^{(N_{win})}=\arg\max_{|f_k-f_R|<\delta f/\Delta t}\lambda^{(N_{win})}_{1,f_k}$.
- Jet energy norm (eq. 26, p. 14): $\langle\mathbf q_1,\mathbf q_2\rangle_x=\iiint_\Omega\mathbf q_2^*\,\mathrm{diag}\!\Big(\Big[\dfrac{\bar T}{\gamma\bar\rho M^2},\bar\rho,\bar\rho,\bar\rho,\dfrac{\bar\rho}{\gamma(\gamma-1)\bar T M^2}\Big]\Big)\mathbf q_1\,r\,dx\,dr\,d\theta$ (Chu 1965).

> Equations were checked against rendered images of p. 4–7, 11 and 14, because the text extraction garbled them. Remaining reading to verify: in eq. 13, which side carries the minus sign (k − nΔk minus k + nΔk, as transcribed). My reading is that with Δk = ½ these are bins 2k ∓ n of the length-2N_fft padded FFT; this is my interpretation, not stated in the paper.

## Data tables
- Table 1 is reproduced in Setup. The comparison-parameter table above gathers settings that are spread across the figure captions. Its half-bandwidth column is derived from the p. 4–5 formulas, and two entries match values printed in the paper: DPSS δf N_fft = 40.5/200.5 (Fig. 4 caption) and δf/Δt = 0.028 (Fig. 10a).
- Derived Welch block counts (not stated): cavity N_fft = 1280 with 75% overlap gives 47 blocks; jet N_fft = 256 with 50% overlap gives 77 blocks; the Fig. 6 sine-Welch run gives 6 blocks (stated, p. 12).
- N_dof (derived): cavity 156×55×2 = 17,160; jet 656×138×5 = 452,640, a ratio of ≈26, which matches the "26-fold" on p. 17. This is why QR suited the cavity (N_dof < 8N_t = 128,000) and EVD the jet (N_dof > 8N_t = 80,000).

## Figures worth remembering
- **Fig. 1–2 (p. 3):** cavity and jet geometry with fields of view; instantaneous and mean u (cavity) and p (jet, m = 0).
- **Algorithm 1 (p. 8):** adaptive SPOD pseudocode.
- **Fig. 3 (p. 8):** N_win vs f across iterations (every 50) for the cavity, with the PSD overlaid. Deep N_win dips at f_R2, f_R3 and f_R4. Low frequencies are fixed early; high frequencies keep growing (up to ≈600).
- **Fig. 4 (p. 9):** DPSS vs sine eigenvalue spectra and modes at 941, 3379 and 6000 Hz for N_win = 80 and 400. This is the key illustration of local bias.
- **Fig. 5 (p. 11):** λ₁(f, N_win) maps with the tracked tone frequency for DPSS vs sine.
- **Fig. 6 (p. 11):** sine (full record) vs sine-Welch: λ₁ and λ₂ coincide and the modes match.
- **Fig. 7 (p. 12):** log₁₀(1−α) map in (f, N_win). Dark wedges sit at the Rossiter tones.
- **Fig. 8 (p. 13):** adaptive spectra, N_win(f) and modes for tol = 10⁻⁵/10⁻⁶/10⁻⁷. N_win at 8 kHz is roughly 200, 600 and 1300 (read from the plot).
- **Fig. 9 (p. 14):** Welch on all the data vs adaptive on 25% of the data, with N_win overlaid (≈0–120).
- **Fig. 10 (p. 15):** jet, constant N_win = 100 vs adaptive tol = 10⁻⁶. The low-frequency plateau and half-bandwidth markers, and the St = 0.05 adaptive mode with too low a wavenumber.
- **Fig. 11 (p. 16):** jet, Welch on all the data vs sine (N_win = 100) on 25% of the data.
- **Fig. 12 (p. 18):** wall time and peak memory vs N_win (2²–2⁸). Read from the plot: cavity DPSS ≈45 min vs sine ≈7 min at N_win = 256; jet DPSS ≈470 GB at N_win = 24 vs sine ≈140 GB flat.
- **Fig. 13 (p. 18):** lossy compression (d = 1000) reproduces Fig. 8 at tol = 10⁻⁶.

## Notation
- N_t: snapshots. N_fft: block length (= N_t here). N_blk: Welch blocks. N_win: number of tapers. N_win,fk: frequency-local taper number. N_dof: spatial points × variables.
- δf: normalised half-bandwidth (cycles/sample); δf/Δt in physical units. Δf = 1/(N_fft Δt): bin width.
- v^(n): n-th taper. μ_n: taper weights. q̂_{f_k}^{(n)}: n-th tapered Fourier realisation. X̂_{f_k}: weighted realisation matrix.
- λ_{i,f_k} / Λ: SPOD energies. Φ / φ: modes. Ψ: expansion coefficients. W: quadrature/norm weight.
- U, X̃: orthonormal basis and compressed data. d: lossy truncation rank.
- α: leading-mode similarity. tol: similarity tolerance.
- f_R2, f_R3, f_R4: 2nd–4th Rossiter tones (941 Hz and 1538 Hz for f_R2 and f_R3; f_R4 isn't stated numerically).
- DPSS: discrete prolate spheroidal sequences (Slepians). Jet frequencies f = St = f D_j/u_j.

## Relevance to this project
This project analyses resonance and feedback data from the Shock Lab (time-resolved schlieren, acoustics, PIV); see CLAUDE.md. Screech and impingement spectra are exactly the "broadband-tonal" case this paper targets: sharp tones and harmonics on top of broadband mixing noise.
- **Which data it suits:**
  - It needs **time-resolved** data, like any SPOD. The demonstrations are TR-PIV sampled at 16 kHz and LES (p. 7, 14). It applies directly to high-speed schlieren and microphone-array data.
  - It doesn't help non-time-resolved PIV, where the POD-pair route still applies (see [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)).
  - The cavity data come from Zhang et al. (2020), *Spectral analysis modal methods (SAMMs) using non-time-resolved PIV*. That paper may be worth `/add-paper` for the PIV side.
- **Why it matters for tones:**
  - Welch SPOD forces one N_fft for the whole spectrum. Adaptive sine-taper SPOD keeps narrow bandwidth (N_win ≈ 10–30) at tones and wide bandwidth in the broadband, with one knob: tol = 10⁻⁶ (p. 12–13, 16).
  - Taking N_fft = N_t gives the finest frequency resolution the record allows. That helps separate close tones: screech harmonics, staging between A1/A2/B/C modes, twin-jet coupling tones and impingement tones.
  - Peak frequencies stay unbiased as N_win grows (Fig. 5, p. 11), so tone frequencies read from SPOD spectra are more trustworthy than with Welch or DPSS.
- **Short records:** comparable results with 25% of the snapshots (p. 13–16). This matters for high-speed schlieren, where camera memory limits record length (my inference; not discussed in the paper).
- **Parameters to start from** (p. 15–17):
  - Tonal flows: N_fft = N_t, adaptive, tol = 10⁻⁶.
  - Broadband flows: constant N_win ≈ 100 and no adaptivity.
  - Very long records: cap N_fft.
  - Large N_dof (schlieren images): use EVD compression when N_dof ≳ 8N_t, and lossy rank-d compression to find N_win quickly.
  - Budget hours of runtime for adaptive runs (18 h cavity and 8 h jet on 48 cores; p. 17).
  - All of this was done in MATLAB (p. 17), so it fits the group's toolchain. The code repo isn't named in the paper.
- **For the SPOD → reconstruction → HPOD pipeline:**
  - With N_fft = N_t there are no time blocks. Multitaper realisations are indexed by taper, not by time, so the block-wise expansion coefficients that Welch-SPOD reconstruction and filtering rely on have no time-local meaning here. My inference: reconstructing the selected dynamics would need projection of the data onto the converged modes (or a separate Welch pass) rather than per-block coefficients. The paper doesn't discuss reconstruction.
  - The better-converged mode shapes at tones (from short records) and sharp tone frequencies are still useful for *choosing* the frequencies and modes to rebuild.
  - Multitaper SPOD is a whole-record, stationary estimate. It is even more time-averaged than Welch, so it cannot show intermittency, mode switching or amplitude and frequency drift. HPOD (see [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md), [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md)) or wavelets are needed for that.
  - With full-record resolution, alternating screech stages would show up as separate sharp tones, but not when each occurs.
  - Beware the low-frequency mode bias toward k → 0 and f → 0 when N_win is large (p. 15, 17). Low-frequency modulation of screech is one of the things HPOD is meant to track, so check low-f SPOD modes against a constant-N_win run.
- **Symmetric and non-axisymmetric nozzles:**
  - The adaptive criterion tracks only the leading mode. The paper notes that with symmetries the energy gap can lie between λ₂ and λ₃ rather than λ₁ and λ₂ (footnote 2, p. 10; twin rectangular jets, Yeung et al. 2022).
  - My inference, not tested in the paper: for twin-jet or rectangular-nozzle data with near-degenerate leading pairs, mode-1 similarity may converge slowly or erratically, pushing N_win up and broadening tones. Splitting the data into symmetric and antisymmetric parts first would likely help.
  - Related notes: [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md), [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md), [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md).
- **Energy bookkeeping:** with normalised tapers, the eigenvalues summed over modes and frequencies equal the sample variance (Parseval, eq. 9–10, p. 5). This lets spectra from different estimator settings be compared directly. With adaptivity it is only approximate (+2% for the cavity; p. 17).
- **Modelling and simulation side:**
  - The paper has no stability or resolvent model. Its role is to produce converged SPOD modes, which are what get compared with resolvent and stability modes and used in ROMs (p. 2, 7; Towne, Schmidt & Colonius 2018).
  - The jet case is the Brès et al. (2018) M = 0.9 LES, previously analysed with Welch SPOD by Schmidt et al. (2018). The KH-dominated band (St ≳ 0.2) is where the adaptive N_win spikes (p. 15).
  - For LES databases, the data-efficiency result (75% fewer snapshots, and wall time largely independent of N_dof; p. 15–18) lowers the cost of generating SPOD for model–experiment comparison.
  - Related jet-physics notes: [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md), [nogueira-2019-large-scale-streaky-structures-jets.md](nogueira-2019-large-scale-streaky-structures-jets.md), [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md).
- **Related SPOD-estimation work:**
  - [von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md) is a later Schmidt co-authored SPOD variant. Compare how each handles the bandwidth–variance trade-off.
  - Schmidt (2022, TCFD 36:741), *SPOD using multitaper estimates* (the DPSS predecessor), and Schmidt & Colonius (2020), *Guide to SPOD*, are candidates for `/add-paper`.
- **Facility:** not Shock Lab group work. The cavity TR-PIV is from Zhang, Cattafesta & Ukeiley (2020) and the jet LES from Brès et al. (2018); the analysis was done at UC San Diego (p. 1, 17).
