---
key: "rife-1974-single-tone-parameter-estimation-discrete-time"
title: "Single-Tone Parameter Estimation from Discrete-Time Observations"
authors: ["Rife, David C.", "Boorstyn, Robert R."]
year: 1974
type: "article"
venue: "IEEE Trans. Inf. Theory 20(5), 591–598"
bib: {"journal": "IEEE Transactions on Information Theory", "volume": "20", "number": "5", "pages": "591--598"}
doi: "10.1109/TIT.1974.1055282"
arxiv: ""
pdf: "time-frequency-methods/Rife-Boorstyn_1974_Single-Tone-Parameter-Estimation-From-Discrete-Time-Observations.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["synthetic"]
methods: ["estimation-theory", "PSD", "Hilbert-transform"]
flow: ["generic"]
phenomena: []
params: {"N": "16–512", "SNR": "−25 to 30 dB", "1/T": "4000 Hz", "f_0": "2000 and 2120 Hz"}
topics: ["time-frequency-methods"]
related: ["raiola-2025-hilbert-pod", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "boashash-1992-instantaneous-frequency-fundamentals", "rilling-2008-one-or-two-frequencies-emd-two-tones", "daubechies-2011-synchrosqueezed-wavelet-transforms-emd", "sieber-2016-spectral-proper-orthogonal-decomposition", "wong-2023-steady-unsteady-coupling-twin-round-jets", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "schmidt-2020-guide-spod"]
cites: []
summary: "Cramér–Rao bounds and ML (periodogram-peak) estimators for one complex tone in white noise: var ω ≥ 12σ²/(b²T²N(N²−1)); outliers below bin SNR ≈ 9–14 dB"
---
# Single-Tone Parameter Estimation from Discrete-Time Observations

- **Authors:** David C. Rife (Bell Laboratories, Holmdel NJ) and Robert R. Boorstyn (Polytechnic Institute of New York). Part of Rife's 1973 PhD dissertation (Polytechnic Institute of Brooklyn); NSF and NASA funded; parts presented at ISIT 1973, Ashkelon (p. 591).
- **Source:** IEEE Transactions on Information Theory IT-20(5), 591–598, September 1974. doi:10.1109/TIT.1974.1055282 (DOI from the PDF metadata; volume, issue and pages printed on each page).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Rife-Boorstyn_1974_Single-Tone-Parameter-Estimation-From-Discrete-Time-Observations.pdf` (8 pp., IEEE Xplore scan with OCR text layer). Page refs below are the **printed journal pages**: PDF page n = printed page 590 + n. PDF p. 8 (printed 598) also carries the first column of an unrelated paper (Richardson, "Correlation of a signal with an amplitude-distorted form of itself").
- **Tags:** Cramér–Rao bound, Fisher information, maximum-likelihood frequency estimation, complex tone (cisoid), analytic-signal samples, periodogram peak, DFT / zero-padded FFT, coarse and fine search, secant method, threshold effect, outliers, Rayleigh and Rician bin statistics, phase estimation, amplitude estimation, time origin of the record, frequency precision vs resolution

## Summary
The paper sets the benchmark for how precisely the frequency, phase and amplitude of **one** complex sinusoid can be estimated from N noisy samples. It derives the Cramér–Rao (CR) lower bounds for every combination of known and unknown parameters (eq. 13–20, p. 592), shows that the maximum-likelihood (ML) frequency estimate is the location of the peak of the periodogram-type function |A(ω)|, with the amplitude estimate its height and the phase its argument (eq. 24–30, p. 593–594), and turns this into a practical algorithm: a zero-padded FFT for a coarse search followed by a secant-method fine search for the local maximum (p. 595). Above a threshold SNR the ML estimators meet the CR bounds; below it, the global maximum of |A(ω)| occasionally lands on a noise peak far from the tone ("outliers"), and the mean-squared error rises abruptly towards that of a uniformly random guess (p. 595–596). The authors compute the outlier probability exactly for a tone on a DFT bin, show the threshold moves to lower per-sample SNR as N grows (Fig. 3, p. 596), and confirm the bounds, the threshold and the dependence on the record's time origin by simulation (Fig. 4–6, p. 597). For the library, this is the formal statement that, for a single tone, frequency **precision** is set by SNR and record length and can be far finer than the Fourier **resolution** 1/(NT).

## Key findings
- **CR bound on frequency, phase unknown** (eq. 17, p. 592): var{ω̂} ≥ 12σ²/[b₀²T²N(N²−1)], in (rad/s)², where T is the **sampling interval** (not the record length), N the number of samples, b₀ the tone amplitude and σ² the noise variance of each quadrature component. The bound does not depend on whether the amplitude is known (p. 592). It is the same as Brennan's bound for the angular accuracy of a phased-array radar (p. 592).
- **Dependence on N and SNR** *(my rearrangement of eq. 17 using ρ = b₀²/2σ², eq. 47)*: in Hz, σ_f ≥ (f_s/2π)·√(6/[ρN(N²−1)]). With record length T_rec = NT this is σ_f·T_rec ≈ √6/(2π√(ρN)) ≈ 0.39/√(ρN): the precision in units of the Fourier bin 1/T_rec improves as 1/√(ρN). At fixed sampling rate and per-sample SNR, var ∝ 1/(ρT_rec³). Eq. 46 (p. 595) states the same bound as ω_CR² = 3ω_s²/[2π²ρN(N²−1)].
- **Frequency bound with the phase known** (eq. 16, p. 592): var{ω̂} ≥ σ²/[b₀²T²(n₀²N + 2n₀P + Q)], where t₀ = n₀T is the time of the first sample and t = 0 is the instant at which the phase is known. It is largest, and equal to the phase-unknown bound (17), when the samples are centred on t = 0, t₀ = −[(N−1)/2]T (eq. 21, p. 592). The further the record lies from the instant of known phase, the more accurate the frequency estimate, without limit (p. 592). The authors note this is rarely exploitable because the phase of an arriving signal is "almost never known" (p. 597).
- **CR bound on phase** (eq. 19–20, p. 592): var{θ̂} ≥ σ²/(b₀²N) if the frequency is known (independent of t₀), and 12σ²(n₀²N + 2n₀P + Q)/[b₀²N²(N²−1)] if the frequency is unknown. The latter is smallest for the centred t₀ of eq. 21, where it equals the known-frequency bound. Choosing that t₀ cuts the phase variance roughly four-fold compared with the natural t₀ = 0 (p. 597). *(My check: the ratio is 2(2N−1)/(N+1), i.e. 3.65 for N = 16 and → 4 for large N.)*
- **CR bound on amplitude** (eq. 18, p. 592): var{b̂} ≥ σ²/N in all cases. The amplitude decouples from frequency and phase (zeros in the Fisher matrix, eq. 13). *(Hence the relative amplitude error 1/√(2ρN) equals the phase error in radians at the centred t₀.)*
- **ML estimators** (Section III, p. 592–594). With A(ω) = (1/N)Σ Z_n e^{−jnωT}:
  - frequency unknown, phase unknown: ω̂ maximises |A(ω)| (algorithm 2); b̂ = |A(ω̂)| (eq. 28); θ̂ = arg[e^{−jω̂t₀}A(ω̂)] (eq. 30, algorithm 8);
  - phase known: ω̂ maximises Re[e^{−jθ₀}e^{−jωt₀}A(ω)] (algorithm 1);
  - frequency and phase known: b̂ = Re[e^{−jθ₀}e^{−jω₀t₀}A(ω₀)] is Gaussian with mean b₀ and variance equal to the CR bound σ²/N (p. 594).
  - ω̂ and b̂ do not depend explicitly on t₀; θ̂ does, mirroring the bounds (p. 593).
- **Link to the DFT** (eq. 31–32, p. 593): the DFT values A_k are samples of A(ω) at ω = 2πk/(NT), so the FFT gives a coarse estimate (Palmer's approach). A(ω) is periodic with period ω_s = 2π/T, so ω̂ is defined mod ω_s; normally the input is low-passed so all frequencies are below ω_s (p. 593).
- **Properties of ω̂** (p. 594–595): its pdf is symmetric about ω₀ (mod ω_s); var{ω̂} is proportional to ω_s² and independent of θ₀ (and, phase unknown, of t₀). The normalised error β̂ = (ω̂ − ω₀)T has an even pdf whose statistics depend only on the SNR (and N), not on ω₀ or θ₀ (p. 594–595).
- **Bias near the band edges** (p. 594): because ω̂ wraps mod ω_s, E{ω̂ − ω₀} = ω_s/2, 0 and −ω_s/2 for ω₀ = 0, ω_s/2 and ω_s. Above threshold, large errors did not occur if ω₀ was at least **four times the rms CR bound** away from 0 or ω_s (p. 594).
- **Noise-free shape of |A(ω)|** (eq. 41–43, p. 595): |A(ω)| = b₀|sin(Nz)/(N sin z)|, z = π(ω − ω₀)/ω_s, a Dirichlet kernel with its global maximum b₀ at ω₀ and many low sidelobes. Its first zeros are at ω − ω₀ = ±ω_s/N, one DFT bin. Noise distorts it and raises the sidelobes; at low SNR the global maximum can jump to a distant noise peak (p. 595).
- **Coarse search** (eq. 44–45, p. 595): evaluate |A(ω_k)| at ω_k = 2πk/(MT), k = 0…M−1, by an FFT of the data zero-padded to M = 2N, 4N or 8N (N a power of 2). With M = N the coarse peak was "the wrong choice" often enough at low SNR to cause trouble; M/N = 2 or 4 reduced wrong choices significantly (p. 595).
- **Fine search** (p. 595): the secant method finds the local maximum of |A(ω)| closest to the coarse peak; details are in Rife's thesis [2].
- **Threshold effect** (Section V, p. 595–596): below threshold the error is dominated by outliers. Model: complex tone at ω₀ = ω_s/2 (on a bin), phase unknown, M = N; an outlier is any coarse peak at l ≠ N/2. Then
  - mse without an outlier ≈ CR bound (eq. 46);
  - mse given an outlier = ω_s²/12, a uniform guess over (0, ω_s) (eq. 48);
  - total mse ω_e² ≈ q·ω_s²/12 + (1 − q)·3ω_s²/[2π²ρN(N²−1)] (eq. 50), with q the outlier probability (eq. 57–60).
  - The resulting rms error curves (Fig. 4, p. 597) have a plateau at ω_s/√12 (≈ 1155 Hz for 1/T = 4000 Hz), a steep fall over a few dB, and then the CR line, on which the rms error falls by one decade per 20 dB of SNR.
- **Where the threshold sits and how it moves with N** (Fig. 3, p. 596; Fig. 4, p. 597). Reading Fig. 3 at q = 10⁻⁷: about +3.7, +0.7, −2.1, −5.0, −7.8 and −10.7 dB for N = 16, 32, 64, 128, 256 and 512. My recomputation from eq. 60 reproduces these to 0.1 dB (table below). Each doubling of N lowers the per-sample threshold by about 2.5–2.9 dB, slightly less than 3 dB. So the threshold is roughly a condition on the **bin SNR ρN**, which rises slowly with N (12.4 → 13.8 dB at q = 10⁻³ for N = 16 → 512) because more bins give more chances for a noise peak to win.
- **Simulations agree with the analysis** (p. 596–597):
  - Fig. 4: circles (f₀ = 2000 Hz) fall on the calculated curves. Repeating with M = 4N gave no significant difference, so Fig. 4 represents true ML performance at f₀ = f_s/2 (p. 597).
  - For f₀ = 2120 Hz (off-bin), M = 64, N = 16, at −10, −5, 0 and 5 dB, only the 0 dB point (the square in Fig. 4) differed from the on-bin case (p. 597). It plots below the curve (about 30 Hz against about 70 Hz, my reading).
  - The curves resemble the known continuous-observation threshold results (Van Trees, p. 285) (p. 596).
  - Level (amplitude) estimates had rms errors almost equal to the CR bounds in every case, and **showed no threshold effect** (p. 596–597).
  - Fig. 5 confirms the t₀ dependence of the phase-known frequency bound, and Fig. 6 that of the phase bound with frequency unknown (p. 597).
- **Conclusions** (p. 597–598): the results "justify and support" DFT-based tone parameter estimation. The interpolation algorithms of Rife & Vincent (1970) give estimates close to ML for independent Gaussian noise. Real tones and several tones are "in a sense" extensions of this case; they were studied in [2] but **are not reported here** (p. 591, 598).

## Setup / method

### Observation model (p. 591)
- Signal s(t) = b₀cos(ω₀t + θ₀); its Hilbert transform š(t) = b₀sin(ω₀t + θ₀) (eq. 3). Both real and imaginary parts are processed: the paper treats the complex tone b₀e^{j(ω₀t + θ₀)}. The authors note that in practice the imaginary part "may be derived from the real part by a Hilbert transformation" or not processed at all (p. 591).
- Samples X_n = s(t_n) + W(t_n), Y_n = š(t_n) + W̌(t_n), 0 ≤ n ≤ N − 1 (eq. 1–2), at t_n = t₀ + nT = (n₀ + n)T (eq. 4). The sampling rate is 1/T.
- Noise: independent zero-mean Gaussian samples of variance σ² in each of X and Y; signal and noise band limited (p. 591). W̌ is the Hilbert transform of W, yet the likelihood (eq. 5) treats the X and Y noise as independent.
- Unknown parameter vector α = [ω, b, θ]ᵀ (eq. 6), with any subset known.
- SNR ρ = b₀²/(2σ²) (eq. 47): the tone power b₀² over the total complex noise power 2σ². For a real tone b₀cos(·) in real noise of variance σ², the per-sample SNR (b₀²/2)/σ² has the same value. Figures quote SNR in dB = 10 log₁₀ ρ (confirmed by recomputing Fig. 3).

### Analysis chain
1. Fisher information matrix and CR bounds for every combination of unknowns (eq. 9–20, p. 592).
2. ML estimators from the log-likelihood, reduced to maximising |A(ω)| (eq. 22–30, p. 592–593); summary of eight algorithms (Section III-C, p. 594).
3. Properties of ω̂ (symmetry, variance scaling, bias) from a polar noise model: W_n = σV_n cos φ_n, W̌_n = σV_n sin φ_n with V_n Rayleigh(1) and φ_n uniform (eq. 33–40, p. 594).
4. Practical two-stage search (coarse zero-padded FFT + secant fine search) (p. 595).
5. Threshold analysis: outlier probability from the joint statistics of the DFT magnitudes, Rayleigh off the tone bin and Rician on it (eq. 52–60, p. 596).
6. Monte Carlo simulation (Fig. 4–6, p. 597).

### Simulation conditions (p. 596–597)
| Figure | What | f₀ | 1/T | N | SNR | Search |
|---|---|---|---|---|---|---|
| 3 | outlier probability q (calculated) | ω_s/2 | — | 16, 32, 64, 128, 256, 512 | −25 to 5 dB | M = N |
| 4 | rms frequency error, phase unknown (calculated curves + simulation points) | 2000 Hz (circles), 2120 Hz (square) | 4000 Hz | 16–512 (curves); 16 for most points | −25 to 30 dB | M = N; rerun with M = 4N; M = 64 for 2120 Hz |
| 5 | rms frequency error, phase known, vs n₀/(N − 1) | not stated | 4000 Hz | 16, 64 | 20 dB | algorithm 1 |
| 6 | rms phase error (degrees), frequency unknown, vs n₀/(N − 1) | not stated | 4000 Hz | 16, 64, 512 | 20 dB | eq. 28 and algorithm 8 |

Number of Monte Carlo trials, random-number generation and the fine-search tolerance are not stated (details deferred to [2]).

- **What kind of model this is:** a statistical estimation model of a stationary signal in white Gaussian noise, with no physical system. There is no flow, stability analysis or simulation of a physical process. Its "simulations" are Monte Carlo trials of the estimator.
- **Data requirements:** a uniformly sampled, time-resolved record with complex (quadrature or analytic) samples. The tone must be stationary (constant ω₀, b₀, θ₀) over the N samples.

## Key equations
Rebuilt from page renders (the OCR text layer garbles every equation); all checked visually against the rendered pages 591–596.

- **Likelihood** (eq. 5, p. 591), with μ_n = b cos(ωt_n + θ), ν_n = b sin(ωt_n + θ) (eq. 7–8):
  $$f(\mathbf Z;\boldsymbol\alpha)=\Big(\frac{1}{2\pi\sigma^2}\Big)^N\exp\Big[-\frac{1}{2\sigma^2}\sum_{n=0}^{N-1}\big((X_n-\mu_n)^2+(Y_n-\nu_n)^2\big)\Big]$$
- **Fisher information and CR bounds** (eq. 9–12, p. 592):
  $$J_{ij}=E\{H_{\alpha_i}H_{\alpha_j}\}=-E\{H_{\alpha_i\alpha_j}\},\quad H_{\alpha_i}=\frac{\partial}{\partial\alpha_i}\log f,\quad \mathrm{var}\{\hat\alpha_i\}\ge J^{ii},\quad J_{ij}=\frac{1}{\sigma^2}\sum_{n=0}^{N-1}\Big[\frac{\partial\mu_n}{\partial\alpha_i}\frac{\partial\mu_n}{\partial\alpha_j}+\frac{\partial\nu_n}{\partial\alpha_i}\frac{\partial\nu_n}{\partial\alpha_j}\Big]$$
- **Fisher matrix, all unknown, order [ω, b, θ]** (eq. 13–15, p. 592):
  $$J=\frac{1}{\sigma^2}\begin{bmatrix}b_0^2T^2(n_0^2N+2n_0P+Q)&0&b_0^2T(n_0N+P)\\0&N&0\\b_0^2T(n_0N+P)&0&b_0^2N\end{bmatrix},\quad P=\sum_{n=0}^{N-1}n=\frac{N(N-1)}{2},\quad Q=\sum_{n=0}^{N-1}n^2=\frac{N(N-1)(2N-1)}{6}$$
  For known parameters, delete the corresponding rows and columns.
- **Frequency bounds** (eq. 16–17, p. 592), (rad/s)²:
  $$\mathrm{var}\{\hat\omega\}\ge\begin{cases}\dfrac{\sigma^2}{b_0^2T^2(n_0^2N+2n_0P+Q)} & \text{phase known (amplitude known or not)}\\[2ex]\dfrac{12\sigma^2}{b_0^2T^2N(N^2-1)} & \text{phase unknown (amplitude known or not)}\end{cases}$$
- **Amplitude bound** (eq. 18, p. 592): $\mathrm{var}\{\hat b\}\ge\sigma^2/N$ in all cases.
- **Phase bounds** (eq. 19–20, p. 592), rad²:
  $$\mathrm{var}\{\hat\theta\}\ge\begin{cases}\dfrac{\sigma^2}{b_0^2N} & \text{frequency known}\\[2ex]\dfrac{12\sigma^2(n_0^2N+2n_0P+Q)}{b_0^2N^2(N^2-1)} & \text{frequency unknown}\end{cases}$$
- **Optimal time origin** (eq. 21, p. 592): $t_0=-\big(\tfrac{N-1}{2}\big)T$. *(My check: then n₀²N + 2n₀P + Q = N(N²−1)/12, so eq. 16 equals eq. 17 and eq. 20 equals eq. 19; the ω–θ cross term n₀N + P in eq. 13 also vanishes, so the frequency and phase estimates decouple.)*
- **Log-likelihood to maximise** (eq. 22–25, p. 592–593):
  $$L=\frac{2}{N}\sum_n(X_n\mu_n+Y_n\nu_n)-\frac1N\sum_n(\mu_n^2+\nu_n^2)=2b\,\mathrm{Re}\big[e^{-j\theta}e^{-j\omega t_0}A(\omega)\big]-b^2,\qquad A(\omega)=\frac1N\sum_{n=0}^{N-1}Z_ne^{-jn\omega T}$$
- **ML solution, all unknown** (eq. 26–30, p. 593):
  $$\max_\theta L=2b|A(\omega)|-b^2,\quad \hat\omega=\arg\max_\omega|A(\omega)|,\quad \hat b=|A(\hat\omega)|,\quad \max_{\theta,\omega,b}L=|A(\hat\omega)|^2,\quad \hat\theta=\arg\big[e^{-j\hat\omega t_0}A(\hat\omega)\big]$$
- **DFT relation** (eq. 31–32, p. 593): $A_k=\frac1N\sum_{n=0}^{N-1}Z_n e^{-j2\pi nk/N}=A\big(\tfrac{2\pi k}{NT}\big)$, k = 0…N−1.
- **Noise model and error variable** (eq. 33–40, p. 594): $f_{V}(v)=v e^{-v^2/2}$ (v ≥ 0); $W_n=\sigma V_n\cos\phi_n$, $\check W_n=\sigma V_n\sin\phi_n$;
  $$Z_n=b_0e^{j(n\omega_0T+\omega_0t_0+\theta_0)}+\sigma V_ne^{j\phi_n},\qquad A(\omega)=\frac1Ne^{j(\theta_0+\omega_0t_0)}\sum_n\big[b_0e^{-jn\beta}+\sigma V_ne^{-j(n\beta-\gamma_n)}\big]$$
  $$\beta=(\omega-\omega_0)T,\quad \gamma_n=\phi_n-\theta_0-\omega_0t_0-n\omega_0T,\quad \hat\omega=\omega_0+\frac{\omega_s\hat\beta}{2\pi}\ \ (\mathrm{mod}\ \omega_s)$$
- **Noise-free |A|** (eq. 41–43, p. 595):
  $$A(\omega)=b_0e^{j(\theta_0+\omega_0t_0)}e^{-j(N-1)z}\frac{\sin Nz}{N\sin z},\qquad z=\frac{(\omega-\omega_0)T}{2}=\frac{\pi(\omega-\omega_0)}{\omega_s},\qquad |A(\omega)|=b_0\Big|\frac{\sin Nz}{N\sin z}\Big|$$
- **Coarse search grid and zero padding** (eq. 44–45, p. 595): $\omega_k=2\pi k/(MT)$, k = 0…M−1, M = 2N, 4N or 8N; $\bar Z_n=(M/N)Z_n$ for n < N, 0 for N ≤ n ≤ M−1.
- **Threshold model** (eq. 46–51, p. 595–596):
  $$\omega_{CR}^2=\frac{3\omega_s^2}{2\pi^2\rho N(N^2-1)},\quad \rho=\frac{b_0^2}{2\sigma^2},\quad \omega_{out}^2=\frac{\omega_s^2}{12},\quad \omega_e^2\approx q\frac{\omega_s^2}{12}+(1-q)\frac{3\omega_s^2}{2\pi^2\rho N(N^2-1)},\quad \omega_{rms}=\sqrt{\omega_e^2}$$
- **DFT-magnitude statistics** (eq. 52–54, p. 596), C_k = |A_k|, tone on bin r = N/2:
  $$f_k(C_k)=\frac{NC_k}{\sigma^2}\exp\Big(-\frac{NC_k^2}{2\sigma^2}\Big)\ (k\neq N/2),\qquad f_r(C_r)=\frac{NC_r}{\sigma^2}\exp\Big[-\frac{N(C_r^2+b_0^2)}{2\sigma^2}\Big]I_0\Big(\frac{Nb_0C_r}{\sigma^2}\Big)$$
- **Outlier probability** (eq. 55–60, p. 596):
  $$1-q=\int_0^\infty\Big[1-\exp\Big(-\frac{Nx^2}{2\sigma^2}\Big)\Big]^{N-1}\frac{Nx}{\sigma^2}\exp\Big[-\frac{N(x^2+b_0^2)}{2\sigma^2}\Big]I_0\Big(\frac{Nb_0x}{\sigma^2}\Big)\mathrm dx,\qquad q=\frac1N\sum_{m=2}^{N}\frac{N!\,(-1)^m}{(N-m)!\,m!}\exp\Big(-N\rho\frac{m-1}{m}\Big)$$
  The closed form alternates with huge terms, so the authors integrated eq. 59 numerically (p. 596). It depends on ρ only through Nρ and N.

> Points to check against the PDF before relying on them:
> - **Eq. 59 as printed** has $I_0(b_0x/\sigma^2)$, without the factor N that eq. 54 has. With the printed argument q ≈ 1 at every SNR; with N included, eq. 59 matches the closed form eq. 60 to about 10⁻¹⁴ and reproduces Fig. 3 (my numerical check). The printed eq. 59 is a typo; the version above includes N.
> - **Eq. 22** is printed as $L_0=-\frac1N\sum_{n=1}^{N-1}(X_n-\mu_n)^2+(Y_n-\nu_n)^2$: the sum should start at n = 0 and enclose both squares. Neither affects the maximiser.
> - **p. 594** writes the SNR as "b₀/2σ²"; eq. 47 gives b₀²/2σ². The latter is used throughout.
> - The text after eq. 60 writes the coefficient as N!(−1)^m/(n − m)!m!; eq. 60 itself has (N − m)!.
> - **Real vs complex samples.** The likelihood (eq. 5) treats the noise on X and on its Hilbert transform Y as independent. For a real record whose Y is computed by a Hilbert transform, Y adds no independent information. *(Background, not from this paper, from memory: for a real tone in real white noise, the standard CR bound — e.g. Kay 1993 — is var ≥ 12/[ρN(N²−1)] in (rad/sample)², twice the complex-tone value at the same per-sample SNR, so σ_f is √2 larger. The paper defers the real-tone case to [2], p. 598.)*
> - Fig. 4 simulation-point positions and the f₀ = 2120 Hz square are my readings of the scanned figure.

## Data tables
**Outlier probability and threshold vs N** (complex tone on bin ω_s/2, phase unknown, M = N). The per-sample SNR in dB at which q reaches each value, recomputed from eq. 60 (my computation; the q = 10⁻⁷ column matches my reading of Fig. 3, p. 596, to 0.1 dB). The "2×CRB" column is where eq. 50 gives an rms error twice the CR bound, i.e. the knee of Fig. 4 (p. 597). CR rms at 20 dB uses eq. 46 with 1/T = 4000 Hz.

| N | q = 10⁻¹ | q = 10⁻³ | q = 10⁻⁷ | rms = 2×CRB | bin SNR Nρ at q = 10⁻³ | CR rms error at 20 dB |
|---|---|---|---|---|---|---|
| 16 | −3.5 dB | +0.4 dB | +3.6 dB | +0.3 dB | 12.4 dB | 2.44 Hz |
| 32 | −5.9 | −2.3 | +0.7 | −1.7 | 12.7 | 0.86 Hz |
| 64 | −8.4 | −5.0 | −2.1 | −3.8 | 13.0 | 0.31 Hz |
| 128 | −11.0 | −7.8 | −5.0 | −6.2 | 13.3 | 0.11 Hz |
| 256 | −13.6 | −10.5 | −7.9 | −8.6 | 13.5 | 0.038 Hz |
| 512 | −16.3 | −13.3 | −10.7 | −11.1 | 13.8 | 0.013 Hz |

**Bias of ω̂ at special frequencies** (p. 594): ω₀ = 0 → E{ω̂ − ω₀} = ω_s/2; ω₀ = ω_s/2 → 0; ω₀ = ω_s → −ω_s/2.

**Other numbers** (p. 594–597): rms error plateau below threshold ω_s/√12 (≈ 1155 Hz at 1/T = 4000 Hz); safe distance from 0 or ω_s ≥ 4 rms CR bounds; phase-variance reduction from the optimal t₀ ≈ 4:1; zero padding M/N = 2–4 for the coarse search.

**Checks against Fig. 5–6 (20 dB, 1/T = 4000 Hz; my computation from eq. 16–20):** N = 16 phase-known frequency error peaks at 2.44 Hz at n₀/(N − 1) = −0.5, and falls to 1.28 Hz at −1 and 0 and 0.49 Hz at +1. The minimum phase error (frequency unknown) is 1.01°, 0.51° and 0.18° for N = 16, 64 and 512. All match the plotted curves.

## Figures worth remembering
- **Fig. 1 (p. 593):** typical noisy |A(ω)| for N = 16 with the DFT samples |A_k| as dots; ω̂_ML at the peak and b̂_ML its height (below b₀). The picture of "ML frequency = periodogram peak".
- **Fig. 2 (p. 594):** an example pdf of β̂ and the corresponding wrapped pdf of ω̂, showing how wrap-around near 0 or ω_s causes bias.
- **Fig. 3 (p. 596):** outlier probability vs per-sample SNR for N = 16–512: near-vertical curves spaced about 3 dB apart.
- **Fig. 4 (p. 597):** rms frequency error (Hz) vs SNR for N = 16–512 at f₀ = 2000 Hz, 1/T = 4000 Hz: plateau, cliff and CR line, with simulation points. The key threshold figure.
- **Fig. 5 (p. 597):** rms frequency error with the phase known vs the position of the record relative to the known-phase instant (N = 16, 64; 20 dB). Simulations sit on the CR curve.
- **Fig. 6 (p. 597):** rms phase error (degrees) with the frequency unknown vs record position (N = 16, 64, 512; 20 dB); minimum at the centred record.

## Notation
- b₀, ω₀, θ₀: true amplitude, angular frequency (rad/s) and phase; b̂, ω̂, θ̂: estimates. α = [ω, b, θ]ᵀ.
- T: **sampling interval** (1/T is the sampling rate; 4000 Hz in the simulations). ω_s = 2π/T. N: number of samples. t₀ = n₀T: time of the first sample (the phase is referenced to t = 0).
- X_n, Y_n: real and imaginary (Hilbert) samples; Z_n = X_n + jY_n. W, W̌: noise and its Hilbert transform. σ²: noise variance per component.
- μ_n, ν_n: noise-free real and imaginary signal samples. P = Σn, Q = Σn².
- A(ω): normalised DTFT of the samples; A_k its DFT samples. M: zero-padded FFT length.
- ρ = b₀²/(2σ²): SNR. Nρ: SNR in the peak DFT bin *(my term: bin SNR)*.
- q: outlier probability. C_k = |A_k|. ω_CR, ω_out, ω_e, ω_rms: CR, outlier, total and rms error. β = (ω − ω₀)T. I₀: modified Bessel function.
- T_rec = NT: record length *(my notation; the paper does not name it)*.

## Relevance to this project
**This is the precision side of the instantaneous-frequency question** ([research question](../Research_Questions/hpod-instantaneous-frequency-uncertainty.md)). The paper has no flow, experiment or physical model; everything below about the user's data is my inference unless a page is given.

- **Precision is not resolution.** For one stationary tone above threshold, σ_f·T_rec ≈ 0.39/√(ρN) (eq. 17 rearranged), so with a bin SNR of 40 dB the frequency is known to about 1/250 of a Fourier bin. The Fourier resolution, the ±1-bin mainlobe of the Dirichlet kernel (eq. 41–43, p. 595), does not change with SNR. A smooth, precise HPOD or SPOD-reconstruction frequency trace is therefore consistent with the uncertainty principle: the precision comes from the single-tone model and from SNR × record length. The paper's own model admits only one tone; two tones and real tones are deferred to [2] (p. 591, 598).
- **Two tones and model mismatch** are not treated here. The only mismatch discussed is wrap-around near 0 and ω_s, which biases ω̂ unless the tone is at least four rms CR bounds from the edge (p. 594). *(Inference:)* a second tone inside the Dirichlet mainlobe (closer than about 1/T_rec) shifts the peak of |A(ω)|, so the single-tone ML estimate is biased towards a weighted value, and the CR bound no longer applies. The single-tone model on which the precision depends is the same monocomponent assumption that Hilbert IF needs ([Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), p. 12–15; [Boashash 1992](boashash-1992-instantaneous-frequency-fundamentals.md)). How finely two tones can be separated is a separate question, addressed for EMD by [Rilling 2008](rilling-2008-one-or-two-frequencies-emd-two-tones.md) and for synchrosqueezing by [Daubechies 2011](daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md).
- **Threshold.** The precision claim holds only above threshold, at a bin SNR Nρ of roughly 9–14 dB for q = 10⁻¹–10⁻³ (table above, from eq. 60). Below it, outliers dominate. *(Inference:)* a raw sample-by-sample Hilbert IF is the N = 1 limit. In the paper's noise model (eq. 33–35) the noise magnitude exceeds the tone amplitude with probability exp(−ρ) per sample, which is when the phase can slip by 2π and the IF spikes, the time-domain counterpart of an outlier. IF from HPOD therefore has to be smoothed over enough samples to bring the bin SNR above threshold, which is one concrete form of the "noise sets a further smoothing window" point in the research question.
- **How to smooth IF** *(my derivation, consistent with eq. 17)*. At high SNR the per-sample phase noise has variance σ²/b₀² = 1/(2ρ), and eq. 17 is exactly the variance of the least-squares slope of the unwrapped phase against time, since Σ(n − n̄)² = N(N²−1)/12. A plain average of dθ/dt over N samples telescopes to the end-point phase difference, whose variance exceeds the CR bound by N(N+1)/[6(N−1)] ≈ N/6. So fit the phase (or weight the phase differences parabolically; Kay 1989, not in the library, from memory) rather than averaging the IF. The estimate refers to the **centre** of the window, where frequency and phase decouple and the phase variance is about 4× lower than at the window start (eq. 21, p. 597).
- **Space as well as time.** Eq. 17 is the same as Brennan's phased-array angle bound (p. 592), i.e. the same mathematics bounds a spatial wavenumber estimated across an aperture of N sensors. *(Inference:)* this supports treating a field of view of length L like a record length in the research question's space-for-time hypothesis: for one advecting wave, the wavenumber precision scales as 1/(L√(ρN)), and again only under a single-wave model.
- **Real signals and the analytic signal.** The paper assumes independent noise on the real and Hilbert channels (eq. 5). For real lab signals made analytic by a Hilbert transform (HPOD_t, `hilbert` in MATLAB), expect about √2 worse frequency precision than eq. 17 at the same per-sample SNR (background from memory, see the check box above). The Hilbert step adds no information; it only puts the record in the form the estimator needs.
- **Which data this suits:** only time-resolved, uniformly sampled records: microphones, time-resolved schlieren pixel or POD/HPOD/SPOD coefficients, LES probes. It does not apply to non-time-resolved PIV, where no frequency is estimated. Spatial analogues (wavenumber from one snapshot) follow from the Brennan equivalence.
- **Practical use in the pipeline:**
  - For a screech tone's frequency over a record or window, the zero-padded FFT peak (M = 2–4N) plus a local fine search or interpolation (Rife & Vincent 1970) is near-ML (p. 595, 598). This is better than reading the frequency off an SPOD bin, whose spacing is the resolution, not the precision ([Schmidt 2020 guide](schmidt-2020-guide-spod.md)).
  - For switching between tones (A1/A2 in [Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md); SS/SA in [Wong 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md)), *exclusive* states can be told apart by precise frequency estimates in windows much shorter than 1/Δf. Coexisting states cannot (worked example in the results file). Wong needed NFFT = 9600 to *resolve* St 0.632 and 0.636 when both are present (Wong 2023, p. 22).
  - [Nekkanti 2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md): a single-bin SPOD reconstruction fixes the frequency to the bin within each block, so its HPOD IF cannot show the sub-bin precision this paper allows. The precise frequency has to come from the phase evolution across blocks or from a reconstruction band wider than one bin. *(Inference.)*
  - [Raiola 2025](raiola-2025-hilbert-pod.md) reads modulation from STFTs of HPOD temporal modes. Fitting the phase of ψ_j(t) over windows of N samples, with the bin-SNR threshold checked, would give frequency precision with a stated error bar. *(Suggestion.)*
  - [Sieber 2016](sieber-2016-spectral-proper-orthogonal-decomposition.md): the filter length N_f acts as the averaging window; this paper gives the noise-limited precision for a given N_f once the pair is single-tone. *(Inference.)*
- **Modelling side:** no physical model. The estimator's threshold behaviour (Fig. 4) is analogous to the FM threshold in continuous-time demodulation (Van Trees, cited p. 596). That analogy is why phase-derivative methods such as Hilbert IF degrade abruptly, not gracefully, as SNR falls.
- **Follow-ups not in the library:** Rife & Vincent 1970 (DFT interpolation, Bell Syst. Tech. J. 49); Palmer 1974 (coarse DFT estimation); and, from memory, Tretter 1985 (frequency by linear regression of phase), Kay 1989 (weighted phase-difference estimator) and Quinn 1994 / Macleod 1998 (DFT interpolators). Rife's thesis [2] holds the multi-tone and real-tone cases. Boashash 1992 Part 2 (IF estimation algorithms) would connect these bounds to time-varying IF.
