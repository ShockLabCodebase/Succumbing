# The empirical mode decomposition and the Hilbert spectrum for nonlinear and non-stationary time series analysis

- **Authors:** N. E. Huang, Z. Shen, S. R. Long, M. C. Wu, H. H. Shih, Q. Zheng, N.-C. Yen, C. C. Tung, H. H. Liu (NASA Goddard and Wallops; Johns Hopkins; NOAA; Univ. Delaware; NRL; NC State; NSWC Carderock)
- **Source:** Proc. R. Soc. Lond. A 454 (1971), 903–995 (1998), doi:10.1098/rspa.1998.0193. This file is the HAL deposit (hal-04014501, CC BY-NC 4.0), retypeset in LaTeX, so its pagination differs from the journal's.
- **PDF:** `References/Paper_PDFs/Huang-EtAl_1998_The-Empirical-Mode-Decomposition-And-The-Hilbert-Spectrum-For-Nonlinear-And.pdf` (94 pp.)
- **Page refs:** PDF page numbers. PDF p. 1 is the HAL cover sheet, so the printed footer "n | 93" is PDF page n+1.
- **Tags:** empirical mode decomposition (EMD), intrinsic mode function (IMF), sifting, Hilbert transform, analytic signal, instantaneous frequency, instantaneous amplitude, Hilbert spectrum, Hilbert–Huang transform, marginal spectrum, degree of stationarity, intrawave and interwave frequency modulation, harmonic distortion, non-stationary signals, intermittency, wavelet comparison, end effects, Gibbs phenomenon

## Summary
The paper introduces the empirical mode decomposition (EMD) and the Hilbert spectrum, later known together as the Hilbert–Huang transform. Its starting point is that the Hilbert-transform instantaneous frequency ω = dθ/dt is meaningful only for a signal that is locally symmetric about zero, with no "riding waves" (p. 12–14). EMD makes data meet that condition. It repeatedly subtracts the mean of cubic-spline envelopes through the local maxima and minima ("sifting") and peels off a short list of intrinsic mode functions (IMFs), from the finest time scale to the coarsest, plus a residual trend (p. 16–20). Each IMF is then Hilbert-transformed, giving an amplitude a_j(t) and frequency ω_j(t), and the energy is plotted on the frequency–time plane as the Hilbert spectrum H(ω, t), with a marginal spectrum and a frequency-dependent "degree of stationarity" derived from it (p. 27–32). The method is validated against Morlet wavelets on synthetic signals and applied to the Duffing, Lorenz and Rössler systems and to wind, water-wave, tide/tsunami, altimeter and earthquake data (p. 32–86). The central physical claim is that nonlinear waveform distortion is better described as *intrawave frequency modulation* within one IMF than as Fourier harmonics (p. 15–16, 35–41, 90–91).

## Key findings
- **When instantaneous frequency means something** (p. 12–14):
  - For x = α + sin t, the analytic-signal phase portrait is a circle offset by α.
  - With α = 0 the phase is linear and ω is constant.
  - With 0 < α < 1 the zero-crossing frequency is unchanged, but the phase and ω(t) fluctuate spuriously.
  - With α > 1 the circle no longer encloses the origin, so the phase and ω go **negative**, which is meaningless (Fig. 1, p. 12–13).
  - For real data, a riding wave acts like local α > 1 and an asymmetric waveform like local 0 < α < 1 (p. 13). Global narrow-band criteria (Rice's ν, eq. 3.7; Cohen's bandwidth, eq. 3.11) are too strict and still not precise enough. Melville (1983) band-pass filtered within the bandwidth limit and still got negative frequencies (p. 12).
  - Band-pass filtering to get a narrow-band signal is also criticised because the filter output already contains the spurious harmonics from nonlinearity and non-stationarity (p. 12).
- **IMF definition** (p. 14): (1) over the whole record, the numbers of extrema and zero crossings are equal or differ by at most one; (2) at every point, the mean of the upper (maxima) and lower (minima) envelopes is zero. An IMF can be amplitude- *and* frequency-modulated and non-stationary; it need not be narrow-band in the classical sense (p. 14–15).
- **Why dθ/dt** (p. 15): from a stationary-phase argument on the Fourier transform of a(t)e^{iθ(t)} (eq. 4.1–4.2). It is valid when ω is high compared with the inverse time scale of amplitude variation, so it suits slowly varying amplitude. The authors rank it above zero-crossing frequency and Cohen's integral mean (eq. 3.10). No full cycle is needed: there is a frequency value at every sample (p. 15).
- **Two kinds of frequency modulation** (p. 15–16, 90–91):
  - *Interwave*: the frequency changes from wave to wave, as in dispersive wave trains.
  - *Intrawave*: the frequency changes within one cycle, which is how a nonlinearly deformed waveform appears. Fourier analysis represents it as harmonics; the paper argues the harmonics are mathematical artefacts of linear superposition, not physical components (p. 33–34, 40–41).
- **Completeness and orthogonality** (p. 22–27):
  - Wind data: nine components (eight IMFs plus the trend). Reconstruction error < 5 × 10⁻¹⁵, i.e. round-off (Fig. 7j, p. 23–24).
  - Index of orthogonality IO = 0.0067 for the wind data (p. 24). Leakage between IMFs is typically < 1%, up to about 5% for very short records, comparable with pure sinusoids of the same length (p. 26).
  - Orthogonality is not guaranteed and not required. Two Stokes wave trains, one at a harmonic frequency of the other, are physically separate but not Fourier-orthogonal, and EMD can still separate them (p. 26–27).
- **Sifting stop criterion** SD (eq. 5.5) between **0.2 and 0.3** (p. 19). The authors compare this with two Fourier spectra of the same data shifted by five out of 1024 points, which give an SD of 0.2–0.3 (p. 19). The wind-data first IMF took **nine** siftings (p. 19). Over-sifting drives an IMF towards a constant-amplitude, purely frequency-modulated signal and destroys physical amplitude modulation (p. 19, 88).
- **Calibration against wavelets** (p. 32–46):
  - *Isolated sine wave:* the Hilbert spectrum is localised in time and frequency; the Morlet wavelet localises the event only through its high-frequency content (Fig. 14, p. 33–34).
  - *Stokes wave* (ak = 0.2, ω = 1/32 Hz): EMD gives one IMF. Its Hilbert spectrum is one band at about 0.03 Hz with intrawave modulation over **0.02–0.04 Hz**. The wavelet shows a fundamental band plus a harmonic band (Fig. 15–17, p. 34–37).
  - *Model wave* cos(ωt + ε sin ωt), ε = 0.5: the Hilbert instantaneous frequency matches the analytic Ω = ω(1 + ε cos ωt), with minor deviations at the extremes (Fig. 18, p. 37).
  - *Exponentially decaying carrier* (eq. 8.9): amplitude decay alone produces intrawave frequency modulation of only about **±1.5%**. The uneven range is attributed to the Gibbs phenomenon in the Hilbert transform (Fig. 21, p. 39, 42). So amplitude-induced frequency modulation is small compared with nonlinear distortion (p. 42).
  - *Sudden frequency switch:* Hilbert gives sharper frequency and time location than the wavelet, with small Gibbs oscillations near the switch (Fig. 24, p. 42–44).
- **Main limitation: close frequencies** (p. 42–47, 89). For cos(2πt/30) + cos(2πt/34) the signal is already an IMF to first order (it is seen as a beat, i.e. amplitude modulation). Separating the two needed up to **3000 siftings**. The IMFs did not recover constant amplitudes and frequencies, and none of Hilbert, wavelet or Fourier marginal spectra resolved two peaks for this short record (Fig. 26–29, p. 45–47). The authors conclude Fourier analysis is better for known linear stationary signals, and that EMD cannot separate components whose frequencies are too close, since then there is no distinct time scale (p. 47, 89–90).
- **Classical nonlinear systems** (p. 48–61):
  - *Duffing* (γ = 0.1, ε = −1, ω = 1/25 Hz, x(0) = x′(0) = 1): EMD gives three IMFs: the intrinsic oscillation, the forcing at 0.04 Hz, and a weak low-frequency "subharmonic". The intrinsic IMF's frequency oscillates between **0.06 and 0.18 Hz** within each cycle, with a weighted mean near 0.1 Hz, the Hamiltonian averaged frequency (Fig. 32–33, p. 49–51).
  - *Lorenz* (σ = 10, b = 3, r = 20, start (10, 0, 0)): two transient IMFs. The main one is centred near 1.4 Hz, consistent with the linearised eigenvalue −0.22 ± 9.17i about (−√57, −√57, 19), i.e. 9.17/2π = 1.46 Hz (Fig. 41–42, p. 55–57).
  - *Rössler* (μ = 3.5, period doubling): the main IMF's frequency fluctuates between **0.15 and 0.26 Hz** in a strictly periodic two-wave pattern, plus a steady 0.1 Hz band. The Fourier main peak at 0.18 Hz is neither observed nor physical but a weighted mean of interlaced long and short waves (Fig. 45–48, p. 59–61).
- **Observational data** (p. 61–86):
  - *Laboratory wave tank* (2.5 Hz wavemaker, eight stations; Huang et al. 1996): frequency downshift happens through discrete, local **2π phase jumps**, each the loss of exactly one wave ("crest pairing"), not gradually (Fig. 50–53, p. 62–66). At station 1, intrawave modulation around 2.5 Hz shows a systematic shift toward the wave front, i.e. front–back asymmetry that a Stokes model misses (Fig. 56, p. 67).
  - *Tide gauge with tsunami* (Kahului Harbour, Oct 1994): of eight IMFs, the first five are the tsunami and the last three the tide; summing groups of IMFs separates them "without any ambiguity" (Fig. 67–68, p. 70–71, 76). The tsunami frequency is phase-locked to the tidal cycle (Fig. 69, p. 71).
  - *Equatorial altimeter:* strong intrawave modulation of 1.2–9.6 cycles per year within 50–200 days (p. 75).
  - *El Centro earthquake:* the marginal spectrum concentrates energy below about 2 Hz, with density at least three times the Fourier spectrum's (Fig. 81, p. 86).
  - *Wind over waves:* IMFs c2–c6 hold the bulk of the turbulent energy and are intermittent. The degree of stationarity has peaks at **7 and 17 Hz** (Fig. 12–13, p. 30–32, 85).
- **IMF subsets as an adaptive band-pass** (p. 86): a Hilbert spectrum built from selected IMFs is equivalent to band-pass filtering, but without the stationarity requirement of a Fourier filter.

## Setup / method

### Algorithm (p. 16–20, 27–29, 87–90)
1. **Assumptions** (p. 16): the signal has at least one maximum and one minimum; the time scale is set by the spacing between extrema (not zero crossings, so a non-zero mean or all-positive data is fine); if there are only inflection points, differentiate first and integrate the components afterwards.
2. **Envelopes:** fit cubic splines through all local maxima (upper envelope) and all local minima (lower envelope); m₁ is their mean (p. 17).
3. **Sift:** h₁ = X − m₁ (eq. 5.1). Repeat on h₁, h₁₁, … (eq. 5.2–5.3) until the SD between consecutive iterations (eq. 5.5) falls below 0.2–0.3. Then c₁ = h₁ₖ (eq. 5.4).
4. **Peel:** r₁ = X − c₁ (eq. 5.6). Repeat on r₁, r₂, … (eq. 5.7) until the IMF or residue is negligible, or the residue is monotonic. Then X = Σ cᵢ + rₙ (eq. 5.8). No mean removal is needed, since each IMF makes its own zero reference (p. 20).
5. **Hilbert transform each IMF** (eq. 3.1–3.4) to get a_j(t) and ω_j(t) = dθ_j/dt. Leave out the residue rₙ unless physics justifies it, since its energy can swamp the rest (p. 27, 86).
6. **Display** H(ω, t): amplitude (or amplitude²) on the frequency–time plane. Options are the raw "skeleton" plot (best for quantitative work), a Gaussian-smoothed version (15 × 15 or 9 × 9 cells in the examples), or coarser frequency bins (p. 27–28, 72). The authors recommend a smoothed first look (p. 28).
7. **Derived quantities:** marginal spectrum h(ω) (eq. 7.4), instantaneous energy IE(t) (eq. 7.5), degree of stationarity DS(ω) (eq. 7.7) and degree of statistical stationarity DSS(ω, ΔT) (eq. 7.8).

### Numerical practicalities (p. 18, 28, 87–89)
- **Spline end effects:** cubic splines swing wildly at the record ends and the errors propagate inward, especially into low-frequency IMFs. The fix is to append "characteristic waves" at both ends, defined by the last two extrema's frequency and amplitude (p. 18, 87–88). Details are not given.
- **Hilbert end effects:** the FFT-based Hilbert transform causes Gibbs oscillations because the end values differ. Instead of windowing, which discards data, the authors append characteristic waves that start and end at zero (p. 88).
- **Spline type:** cubic splines overshoot and undershoot. Taut splines gave only marginal gains; higher-order splines were being explored (p. 86). A cheaper "successive-extrema mean" needs one spline instead of two but forces amplitudes towards uniform, so it is only for nearly constant-amplitude components (p. 87–88).
- **Sampling:** instantaneous frequency comes from a derivative, so the data must be oversampled. At least **five points per wave** (4Δt) are needed; interpolating extra points with splines is acceptable since it neither creates nor removes scales (p. 89).
- **Frequency cells:** N = T/(nΔt) (eq. 7.3). Three adjacent cells are averaged for stability. Wind data: Δt = 0.01 s, T = 30 s, highest usable frequency 25 Hz, 600 cells averaged to 200 (p. 28).
- **Weak signals:** a weak signal phase-locked to the maximum-slope regions of a strong one shows up as intrawave modulation, not as its own IMF. Differentiating the data once can separate it (p. 88–89).
- **Physical meaning:** an individual IMF is not guaranteed to be physical; if a scale is intermittent, one IMF can hold two scales (mode mixing). Scales must be clearly separated before IMFs are interpreted individually (p. 21, 90).

### Datasets and test signals
| Case | Signal / data | Key parameters | Pages |
|---|---|---|---|
| Wind over a wind-wave tunnel | Pitot tube 10 cm above mean water level, onset of waves from calm | Δt = 0.01 s, 30 s; 9 components | 19–32, 84–86 |
| Stokes wave | eq. 8.4, a = 1, ak = 0.2, ω = 1/32 Hz | one IMF | 34–37 |
| FM model wave | cos(ωt + ε sin ωt), ω = 1 Hz, ε = 0.5 | — | 35–39 |
| AM wave | exp(−0.01t) cos(2πt/32), t = 1–512 s | already an IMF | 41–42 |
| Frequency switch | cosine with an abrupt frequency change | — | 42–44 |
| Two tones | cos(2πt/30) + cos(2πt/34), t = 1–512 s | up to 3000 siftings, 8 components | 42–47 |
| Duffing | eq. 9.1, γ = 0.1, ε = −1, ω = 1/25 Hz | 3 IMFs | 48–52 |
| Lorenz | σ = 10, b = 3, r = 20, start (10, 0, 0) | 2 IMFs | 52–57 |
| Rössler | eq. 9.11, μ = 3.5 (period doubling) | 3 IMFs | 58–61 |
| Lab waves | NASA Wallops tank, 2.5 Hz wavemaker, 8 stations | phase jumps of 2π | 61–67 |
| Field waves | NOAA gauge, Duck NC, 1 Hz, 60 min | 8 IMFs | 67–72 |
| Tide + tsunami | Kahului Harbour, Maui, 1 min steps, 4–9 Oct 1994 | 8 IMFs (5 tsunami, 3 tide) | 69–79 |
| Altimeter | GEOSAT, equator at 174° E, Apr 1985–Sep 1989 | 4 IMFs + trend | 72–81 |
| Earthquake | El Centro vertical acceleration | 10 IMFs | 77–86 |

- **Simulation side:** the "models" are low-dimensional ODEs integrated numerically (integrator and time step not stated). They serve as known nonlinear test signals, not as models of a flow. Each is compared with its classical description: the perturbation series for Duffing (eq. 9.3), the Hamiltonian averaged frequency (eq. 9.5–9.6), and the linearised eigenvalues for Lorenz (p. 47–56). There is no fluid-dynamic simulation, stability analysis or reduced-order model.

### Context from the review of existing methods (p. 5–9)
- **Spectrogram:** assumes piecewise stationarity and trades time against frequency resolution.
- **Wavelet (Morlet):** uniform but uniformly poor resolution; leakage from a basic wavelet about 5.5 waves long; resolves interwave but not intrawave modulation; low-frequency events are located through high-frequency content. Still used as the reference method in the paper (p. 6–7).
- **Wigner–Ville:** cross terms give negative power (p. 7).
- **Evolutionary spectrum:** no systematic way to find the basis (p. 8).
- **EOF/POD:** adaptive, but its modes carry no scale or frequency information and need not be stationary, so Fourier analysis of EOF components (singular spectrum analysis) is no real improvement (p. 8–9).
- A basis for nonlinear, non-stationary data must be complete, orthogonal (relaxed for nonlinear cases), **local** and **adaptive** (p. 9).

## Key equations
Checked against page renders of PDF p. 10–12, 15, 19, 24, 27–30, 35–37, 48–49 and 59.

- **Hilbert transform and analytic signal** (eq. 3.1–3.3, p. 10):
  $$Y(t)=\frac{1}{\pi}P\!\int_{-\infty}^{\infty}\frac{X(t')}{t-t'}\,\mathrm dt',\qquad Z(t)=X(t)+iY(t)=a(t)e^{i\theta(t)},$$
  $$a(t)=\left[X^2+Y^2\right]^{1/2},\qquad \theta(t)=\arctan\frac{Y(t)}{X(t)}$$
- **Instantaneous frequency** (eq. 3.4, p. 11): $\omega=\mathrm d\theta(t)/\mathrm dt$ (rad s⁻¹; plots use Hz).
- **Rice bandwidth** (eq. 3.5–3.7, p. 11), with m_i the i-th spectral moment:
  $$N_0=\frac1\pi\Big(\frac{m_2}{m_0}\Big)^{1/2},\quad N_1=\frac1\pi\Big(\frac{m_4}{m_2}\Big)^{1/2},\quad N_1^2-N_0^2=\frac{1}{\pi^2}\frac{m_4m_0-m_2^2}{m_2m_0}=\frac{1}{\pi^2}\nu^2$$
- **Cohen mean frequency and bandwidth** (eq. 3.9–3.11, p. 11–12), for z = a e^{iθ}:
  $$\langle\omega\rangle=\int\omega|S(\omega)|^2\mathrm d\omega=\int\dot\theta(t)\,a^2(t)\,\mathrm dt$$
  $$\nu^2=\frac{1}{\langle\omega\rangle^2}\left[\int\dot a^2(t)\,\mathrm dt+\int\big(\dot\theta(t)-\langle\omega\rangle\big)^2a^2(t)\,\mathrm dt\right]$$
  This shows that amplitude variation alone (ȧ ≠ 0) broadens the bandwidth without shifting the mean frequency (p. 42).
- **Stationary-phase justification** (eq. 4.1–4.2, p. 15):
  $$W(\omega)=\int_{-\infty}^{\infty}a(t)\,e^{i(\theta(t)-\omega t)}\,\mathrm dt,\qquad \frac{\mathrm d}{\mathrm dt}\big(\theta(t)-\omega t\big)=0\;\Rightarrow\;\omega=\dot\theta$$
- **Sifting** (eq. 5.1–5.8, p. 17–20):
  $$X-m_1=h_1,\quad h_{1(k-1)}-m_{1k}=h_{1k},\quad c_1=h_{1k},\quad r_{n-1}-c_n=r_n,\quad X(t)=\sum_{i=1}^{n}c_i+r_n$$
- **Stop criterion** (eq. 5.5, p. 19):
  $$\mathrm{SD}=\sum_{t=0}^{T}\left[\frac{|h_{1(k-1)}(t)-h_{1k}(t)|^2}{h_{1(k-1)}^2(t)}\right],\qquad \mathrm{SD}\approx0.2\text{–}0.3$$
- **Orthogonality index** (eq. 6.3–6.5, p. 24–26), with C_{n+1} = r_n:
  $$X^2=\sum_{j=1}^{n+1}C_j^2+2\sum_{j=1}^{n+1}\sum_{k=1}^{n+1}C_jC_k,\qquad \mathrm{IO}=\sum_{t=0}^{T}\Big(\sum_{j}\sum_{k}C_jC_k/X^2\Big),\qquad \mathrm{IO}_{fg}=\sum_t\frac{C_fC_g}{C_f^2+C_g^2}$$
- **Hilbert–Huang expansion vs Fourier** (eq. 7.1–7.2, p. 27):
  $$X(t)=\mathrm{Re}\sum_{j=1}^{n}a_j(t)\exp\!\Big(i\!\int\!\omega_j(t)\,\mathrm dt\Big)\quad\text{vs}\quad X(t)=\mathrm{Re}\sum_{j=1}^{\infty}a_je^{i\omega_jt}$$
  ("Re" is implied in the paper, which writes the sums without it.)
- **Frequency cells** (eq. 7.3, p. 28): $N=\dfrac{1/(n\Delta t)}{1/T}=\dfrac{T}{n\Delta t}$.
- **Marginal spectrum, instantaneous energy, stationarity** (eq. 7.4–7.8, p. 28–32):
  $$h(\omega)=\int_0^TH(\omega,t)\,\mathrm dt,\qquad IE(t)=\int_\omega H^2(\omega,t)\,\mathrm d\omega,\qquad n(\omega)=\frac1Th(\omega)$$
  $$DS(\omega)=\frac1T\int_0^T\Big(1-\frac{H(\omega,t)}{n(\omega)}\Big)^2\mathrm dt,\qquad DSS(\omega,\Delta T)=\frac1T\int_0^T\Big(1-\frac{\overline{H(\omega,t)}}{\overline{n(\omega)}}\Big)^2\mathrm dt$$
  The overbar is an average over a window ΔT shorter than T. DS = 0 only for a time-independent H; only then does the marginal spectrum equal the Fourier spectrum (p. 31).
- **Test signals** (p. 35–37, 41–42, 48, 59):
  - Stokes wave (eq. 8.4): $X=\tfrac12a^2k+a\cos\omega t+\tfrac12a^2k\cos2\omega t+\cdots$
  - FM model (eq. 8.5–8.8): $X=\cos(\omega t+\epsilon\sin\omega t)\approx(1-\tfrac12\epsilon)\cos\omega t+\tfrac12\epsilon\cos2\omega t$; $\Omega=\mathrm d\theta/\mathrm dt=\omega(1+\epsilon\cos\omega t)$. It satisfies $\ddot x+(\omega+\epsilon\omega\cos\omega t)^2x-\epsilon\omega^2\sin\omega t\,(1-x^2)^{1/2}=0$ (eq. 8.7).
  - AM wave (eq. 8.9): $x=\exp(-0.01t)\cos(2\pi t/32)$. Two tones (eq. 8.10): $x=\cos(2\pi t/30)+\cos(2\pi t/34)$.
  - Duffing (eq. 9.1–9.4): $\ddot x+x+\epsilon x^3=\gamma\cos\omega t$, rewritten $\ddot x+x(1+\epsilon x^2)=\gamma\cos\omega t$ (a position-dependent spring constant, hence intrawave modulation). The perturbation series is $x=\cos\omega t+\epsilon\cos3\omega t+\epsilon^2\cos6\omega t+\cdots$ (eq. 9.3, as printed). Model: $X=\cos(\omega t+\epsilon\sin2\omega t)$ (eq. 9.7, ε = 0.3, ω = 1/64 Hz).
  - Lorenz (eq. 9.9): $\dot x=-\sigma x+\sigma y,\ \dot y=rx-y-xz,\ \dot z=-bz+xy$. Rössler (eq. 9.11): $\dot x=-(y+z),\ \dot y=x+\tfrac15y,\ \dot z=\tfrac15+z(x-\mu)$.

> Points to check against the PDF before relying on them:
> - **Sign convention.** With eq. 3.1 as printed, the Hilbert transform of sin t is −cos t, but p. 12 says "simply cos t". It does not affect the argument (the phase portrait is still a unit circle), but it matters when coding a phase or frequency sign. MATLAB's `hilbert` returns the analytic signal X + iH[X] with H[sin] = −cos, so θ increases for positive frequency.
> - **Eq. 6.3** prints the cross-term double sum over all j, k with a factor 2. For the identity to hold it should run over j ≠ k without the 2, or over j < k with it. IO in eq. 6.4 is printed with the full double sum, which presumably also means j ≠ k.
> - **Eq. 9.3** prints the second-order term as ε² cos 6ωt. A standard Duffing expansion would give cos 5ωt at second order; cos 6ωt looks like a typo.
> - **Wind-data frequency cells** (p. 28): a 25 Hz maximum implies n = 4 intervals (1/(4 × 0.01 s)), but 600 cells implies n = 5 (30/(5 × 0.01)). The discussion says "five (or 4Δt)" (p. 89), so "five points" spanning four intervals is the intended meaning, and one of the two numbers is inconsistent.
> - **Two-tone example** (p. 45): the text says the components are 1/30 Hz (17 waves) and "1/32 Hz (15 waves)". Eq. 8.10 and the Fig. 26 caption (512/34 = 15) imply 1/34 Hz.
> - **Duffing frequencies:** the intrinsic frequency for ε = −1 is quoted as 0.124 Hz (p. 48) but the IMF's weighted mean as about 0.1 Hz, "as predicted by the Hamiltonian method" (p. 49). The difference is not explained.
> - Fig. 16 (p. 35) is captioned as having bands near 0.03 and 0.06 Hz, but on the render the energy looks concentrated between about 0.025 and 0.045 Hz. Check the original figure.

## Data tables
Numbers worth reusing (all from the text):

| Quantity | Value | Page |
|---|---|---|
| Sifting stop SD | 0.2–0.3 | 19 |
| Siftings for wind IMF c1 | 9 | 19 |
| Wind reconstruction error | < 5 × 10⁻¹⁵ (round-off) | 23 |
| Orthogonality index, wind data | IO = 0.0067 | 24 |
| Typical IMF leakage | < 1% (up to ~5% for very short records) | 26 |
| Minimum samples per wave for instantaneous frequency | 5 (i.e. 4Δt) | 28, 89 |
| Frequency-cell averaging | 3 adjacent cells | 28 |
| AM-induced frequency modulation (decaying carrier) | ≈ ±1.5% | 39, 42 |
| Stokes-wave intrawave range (ak = 0.2, 1/32 Hz) | 0.02–0.04 Hz | 37 |
| Duffing intrinsic IMF range (mean) | 0.06–0.18 Hz (≈ 0.1 Hz) | 49 |
| Rössler main IMF range; Fourier main peak | 0.15–0.26 Hz; 0.18 Hz (non-physical) | 60–61 |
| Siftings needed to split two close tones | up to 3000 | 45 |

## Figures worth remembering
- **Fig. 1 (p. 12):** phase plane, unwrapped phase and instantaneous frequency of α + sin t for α = 0, < 1 and > 1. It is the clearest picture of why a DC offset or riding wave breaks the Hilbert instantaneous frequency.
- **Fig. 3–4 (p. 17–18):** one sifting step on wind data (envelopes, mean, residual), then repeated siftings.
- **Fig. 6–7 (p. 21–24):** the nine wind components and the cumulative reconstruction from the trend upwards.
- **Fig. 8–11 (p. 25–29):** Hilbert spectrum (skeleton), Morlet wavelet spectrum, Gaussian-smoothed Hilbert spectrum, and the marginal vs Fourier spectrum for the same wind data.
- **Fig. 12–13 (p. 30–31):** DS and DSS against frequency; the DSS peaks at 7 and 17 Hz match intermittent bursts in the raw signal.
- **Fig. 17–19 (p. 36–38):** intrawave modulation of the Stokes wave and the FM model, with analytic and Hilbert frequencies overlaid (Fig. 18b).
- **Fig. 24 (p. 43–44):** frequency-switch test, wavelet vs Hilbert.
- **Fig. 26–29 (p. 45–47):** the failure case: two close tones after up to 3000 siftings.
- **Fig. 33 and 46 (p. 51, 59):** Duffing and Rössler Hilbert spectra showing intrawave modulation that wavelets render as harmonics.
- **Fig. 50–52 (p. 63–65):** discrete 2π phase jumps (lost crests) in the wave tank.
- **Fig. 68–69 (p. 76–77):** tide/tsunami separation by summing IMF groups, and the tsunami frequency phase-locked to the tide.
- **Fig. 82–83 (p. 87–88):** Hilbert spectrum from a subset of IMFs (c2–c6) showing intermittency; instantaneous energy with and without the trend.

## Notation
- X(t): data. Y(t): its Hilbert transform. Z(t) = a e^{iθ}: analytic signal. a(t): instantaneous amplitude. θ(t): phase. ω = dθ/dt: instantaneous frequency.
- IMF: intrinsic mode function. c_i: i-th IMF. r_n: residue (trend). m_1, m_{1k}: envelope means. h_1, h_{1k}: sifting iterates. SD: sifting stop criterion.
- H(ω, t): Hilbert (amplitude or energy) spectrum. h(ω): marginal spectrum. n(ω) = h/T: mean marginal spectrum. IE(t): instantaneous energy. DS, DSS: degree of (statistical) stationarity.
- IO, IO_fg: orthogonality index, overall and pairwise.
- m_i: i-th spectral moment. N_0, N_1: expected zero crossings and extrema per unit time. ν: bandwidth parameter.
- Intrawave modulation: frequency variation within one cycle. Interwave modulation: variation from cycle to cycle.

## Relevance to this project
This is the source paper for the instantaneous-frequency caveats behind every Hilbert-based step in the CLAUDE.md workflow, and the origin of EMD / the Hilbert–Huang transform.

- **Link to Hilbert POD and the SPOD → reconstruction → HPOD pipeline:**
  - [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) reads |ψ_j(t)| and (1/2π) d arg ψ_j/dt from HPOD temporal modes using the same definitions as eq. 3.2–3.4 here. Huang's conditions say when that is trustworthy: the signal must be locally symmetric about zero, with no riding waves (Fig. 1, p. 12–14). A non-zero local mean or a second component of comparable amplitude gives spurious or negative frequency.
  - In the user's pipeline, the SPOD reconstruction plays the role that EMD plays here: it turns broadband data into a narrow-band, near-monocomponent signal *before* the Hilbert step. This paper gives the reason that step is needed. *(My inference.)*
  - Huang warns that Fourier band-pass filtering imports the spurious harmonics of nonlinear or non-stationary data (p. 12). An SPOD-band reconstruction is a Fourier-type filter, so a strongly nonlinear screech or impingement waveform will show up partly as its harmonic in other SPOD frequencies. Reconstructing only the fundamental bin removes the intrawave modulation that Huang treats as physical. Include harmonic bins if waveform shape matters. *(My inference.)*
  - Practical checks transfer directly: oversample (at least 5 points per period, p. 89), handle end effects (append waves or trim; Raiola & Kriegseis trim 15% at each end), and expect about ±1.5%-level spurious frequency wiggle from amplitude modulation alone (p. 39, 42).
  - The degree of stationarity DS(ω) (eq. 7.7) and DSS (eq. 7.8) are ready-made scalar measures of intermittency per frequency. Applied to an HPOD or SPOD-reconstructed amplitude–frequency map, they could quantify how intermittent a screech or impingement tone is, rather than only showing a spectrogram. *(Suggestion, not done in the paper.)*
- **Which data each method suits:**
  - EMD and the Hilbert spectrum work on **single, time-resolved, uniformly sampled time series**: microphone signals, time-resolved schlieren pixel or probe signals, or HPOD/SPOD temporal coefficients. They are one-dimensional; the paper does not decompose fields.
  - They cannot be used on non-time-resolved PIV. For PIV, the spatial analogue is the space-only Hilbert transform of HPOD_x ([raiola-2025](raiola-2025-hilbert-pod.md), [davey-2025](davey-2025-hpod-sphere-wake.md)), to which the same local-symmetry caveat applies along x.
  - Huang's critique of EOF/POD (modes carry no frequency information; p. 8–9) is the gap HPOD and SPOD later filled.
- **Mode switching and intermittency in screech and other resonances:**
  - Hilbert phase methods for jet coupling and mode switching ([jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), whose note says the signal was not band-pass filtered before the Hilbert transform) and wavelet-based switching studies ([mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md), [jordan-2018](jordan-2018-jet-flap-interaction-tones.md), [esfahani-2021-coupling](esfahani-2021-coupling-modes-twin-rectangular-jets.md), [esfahani-2021-control](esfahani-2021-control-twin-rectangular-jet-coupling.md), [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md)) can be checked against this paper. A raw near-field pressure with broadband content is not an IMF, so its Hilbert phase can contain spurious jumps. Isolate the tone first (EMD, a narrow filter or SPOD reconstruction).
  - The paper's Morlet comparison sets out the trade-offs: wavelets resolve interwave changes (tone switching) but not intrawave modulation, and leak energy (p. 6–7, 42–44). For A1/A2 or helical/flapping switching, the switch time itself is what Fig. 24's sudden frequency-switch test addresses.
  - Huang's main limitation applies to close, simultaneous tones (p. 45–47, 89): EMD cannot split two tones whose frequencies are too close, which is relevant where jets show competing tones only slightly apart (for example the competing tones in [esfahani-2021-control](esfahani-2021-control-twin-rectangular-jet-coupling.md)). HPOD or SPOD with spatial structure is better placed to separate them.
  - The 2π phase-jump picture of lost crests in the wave tank (p. 62–65) is a template for detecting discrete phase slips in a feedback loop, such as the out-of-phase coupling jumps in [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md).
- **Nonlinearity and harmonics:**
  - Screech and impinging tones often have strong harmonics. In Huang's view these may be intrawave frequency modulation of one nonlinear oscillation rather than separate modes (p. 35–41). Bicoherence studies such as [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md) treat harmonics as quadratic interaction products. The two views describe the same waveform and could be compared on one dataset. *(Suggestion.)*
  - For rocket noise, nonlinear propagation steepens waveforms (acoustic shocks, crackle; [gee-2012](gee-2012-reusable-srm-noise-spectral-statistical.md), [reichman-2018](reichman-2018-qm2-srm-far-field-acoustics.md)). A Hilbert spectrum of such a signal would show this as intrawave modulation, as with the Stokes wave, rather than as high-frequency harmonics. Whether that is a better description than skewness of ∂p/∂t is untested.
  - The tide/tsunami separation (p. 69–76) shows EMD used as an adaptive filter for a transient on a slowly varying background, which is analogous to separating a startup transient or NPR ramp from a tone in a facility run-up.
- **Modelling side:** the paper has no flow models. Its nonlinear-ODE examples (Duffing, Lorenz, Rössler) show that a single nonlinear oscillator yields one IMF with intrawave modulation, while forcing and slow drifts appear as separate IMFs (p. 48–61). That is a useful mental model for interpreting HPOD or EMD output from a self-sustained screech loop driven by a nonlinear saturating mechanism. Comparing Hilbert instantaneous frequencies with the linearised eigenvalue, as done for Lorenz (p. 56), is analogous to comparing measured tone frequencies with linear stability or resolvent predictions.
- **Caveats for later work:** EMD details here (cubic splines, end-wave padding, SD stop criterion) were superseded by later variants (ensemble EMD, CEEMDAN, other stopping criteria). Mode mixing (p. 21, 90) is the main known weakness. EMD was patented by NASA (p. 91). Facility attribution: none of the data are Shock Lab group work.
- **Follow-up candidates for `/add-paper`:**
  - Cohen 1995, *Time–frequency analysis* (instantaneous frequency paradoxes, bandwidth eq. 3.11).
  - Boashash 1992, instantaneous frequency estimation (Proc. IEEE 80).
  - Huang, Long & Shen 1996 (frequency downshift; the wave-tank data used here).
  - Later EMD refinements: Wu & Huang 2009 (ensemble EMD) and Huang et al. 1999/2003 on the stopping criterion and confidence limits.
