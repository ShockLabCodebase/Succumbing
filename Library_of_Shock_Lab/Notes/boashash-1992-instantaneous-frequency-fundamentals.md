---
key: "boashash-1992-instantaneous-frequency-fundamentals"
title: "Estimating and Interpreting The Instantaneous Frequency of a Signal—Part 1: Fundamentals"
authors: ["Boashash, Boualem"]
year: 1992
type: "review"
venue: "Proc. IEEE 80(4), 520–538"
bib: {"journal": "Proceedings of the IEEE", "volume": "80", "number": "4", "pages": "520--538"}
doi: "10.1109/5.135376"
arxiv: ""
pdf: "time-frequency-methods/Boashash_1992_Estimating-And-Interpreting-The-Instantaneous-Frequency-Of-A-Signal-Part-1.pdf"
version: "published"
unverified: ["DOI not printed in the PDF; taken from the indexing request (DOI checked on Crossref per Library_of_Shock_Lab/Research_Questions/hpod-instantaneous-frequency-uncertainty.md)"]
group: false
facility: ""
data: ["synthetic"]
methods: ["TFD", "Hilbert-transform", "spectrogram"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["time-frequency-methods"]
related: ["huang-1998-empirical-mode-decomposition-hilbert-spectrum", "raiola-2025-hilbert-pod", "torrence-1998-practical-guide-wavelet-analysis", "horel-1984-complex-principal-component-analysis", "sieber-2016-spectral-proper-orthogonal-decomposition", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "wong-2023-steady-unsteady-coupling-twin-round-jets", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech"]
cites: ["bedrosian-1963-product-theorem-hilbert-transforms", "cohen-1989-time-frequency-distributions-review", "nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals"]
summary: "IF tutorial: Carson–Fry→Ville; Bedrosian/Nuttall conditions; IF = TFD first moment, inverse of group delay only if BT≫1; mono vs multicomponent; inst. bandwidth"
---
# Estimating and Interpreting The Instantaneous Frequency of a Signal—Part 1: Fundamentals

- **Authors:** Boualem Boashash (Centre for Signal Processing Research, Queensland University of Technology, Brisbane)
- **Source:** Proc. IEEE 80(4), 520–538, April 1992 (tutorial review). Manuscript received 25 Jan 1991, revised 6 Nov 1991. DOI 10.1109/5.135376 (not printed in the PDF). Part 2 (discrete IF, estimation algorithms, applications) is in the same issue (ref. [8]) and is not in the library.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Boashash_1992_Estimating-And-Interpreting-The-Instantaneous-Frequency-Of-A-Signal-Part-1.pdf` (19 pp.; scanned IEEE Xplore copy with an OCR layer; equations were read from rendered page images)
- **Page refs:** printed journal pages 520–538. PDF page = printed page − 519.
- **Tags:** instantaneous frequency (IF), analytic signal, Hilbert transform, Bedrosian product theorem, Nuttall quadrature error, group delay, stationary phase, bandwidth–time (BT) product, asymptotic signals, monocomponent and multicomponent signals, Wigner–Ville distribution, Cohen's class, conditional moments, instantaneous bandwidth, Rihaczek elementary cells, FM demodulation, chirps

## Summary
A tutorial on what the instantaneous frequency (IF) of a signal is and when it means something. It traces the definition from FM theory (Carson & Fry 1937, Van der Pol 1946) through Gabor's analytic signal (1946) to Ville's f_i = (1/2π) d arg z/dt (1948), and sets out the objections of Shekel, Mandel and Priestley (p. 521–524). It then gives the conditions under which the Hilbert-transform analytic signal returns a meaningful amplitude and phase (Bedrosian spectral separation; Nuttall's large-carrier and Jones' large-BT theorems), and relates IF to group delay (GD): the two are inverse functions, and the IF is a physical time–frequency law, only for monocomponent signals with a monotonic IF and a large bandwidth–time product (p. 524–532). Finally, IF is shown to be the first conditional frequency moment of the Wigner–Ville distribution and of a subclass of Cohen's distributions, with an "instantaneous bandwidth" as the spread about it; for multicomponent signals a single IF is meaningless and the split into components is not unique (p. 532–535). Illustrations use synthetic chirps and stepped sweeps; there are no measured data.

## Key findings
- **IF is meaningful only for monocomponent signals** (abstract and p. 520). IF locates the signal's spectral peak as it moves in time, like a sine wave that locally fits the signal. It has physical meaning only when there is one frequency, or a narrow range of frequencies, at each time. For multicomponent signals a single-valued IF is meaningless and the signal must first be broken into components (p. 520).
- **History of the definition** (p. 521–524):
  - *Carson & Fry 1937:* the FM wave exp j(ω₀t + λ∫m dt) has instantaneous angular frequency ω₀ + λm(t); IF is the rate of change of phase angle (eq. 6–8, p. 521). They used a complex representation.
  - *Van der Pol 1946:* putting a time-varying f into a cos(2πft + θ) is inconsistent with phase modulation. The whole cosine argument must be the phase, ∫2πf_i dt + θ, which gives f_i = (1/2π) dφ/dt from a real signal (eq. 12–14, p. 522).
  - *Gabor 1946:* a unique complex signal is made by suppressing the negative-frequency amplitudes and doubling the positive ones, z = s + jH[s] (eq. 15–16, p. 522). His motive was to define frequency moments ⟨fⁿ⟩ (eq. 17); with a real signal's even spectrum all odd moments vanish (p. 522). s and H[s] are in quadrature only under conditions (p. 522).
  - *Ville 1948:* unified the two: f_i = (1/2π) d/dt arg z(t) (eq. 18). He showed that the spectral mean frequency equals the |z|²-weighted time average of IF (eq. 19–20), introduced the Wigner–Ville distribution (WVD, eq. 21), and showed that its first frequency moment is the IF (eq. 22, p. 522).
  - *Shekel 1953:* IF is not unique: an AM wave can be written as m(t)e^{j2πft} (complicated amplitude, constant IF) or m₀e^{jφ(t)} (constant amplitude, complicated IF). The HT picks one representation, but whether it is physical "is another question" (p. 523).
  - *Mandel 1974:* IF and Fourier frequency are different quantities that share a name. Only their means agree; second and higher moments do not (Ville showed this for the second). Which one a measurement sees depends on the experiment (p. 523).
  - *Priestley 1988:* a Gaussian-windowed cosine (eq. 31) is equally validly a continuum of Fourier components or two components with time-varying amplitude; the two are different families of basis functions (p. 523). His evolutionary spectrum (eq. 32–33) assigns an amplitude to every frequency and handles multicomponent signals, whereas Ville's IF holds for monocomponent signals only (p. 524).
  - *Cohen, Rihaczek, Ackroyd:* IF is the average of the frequencies present in the time–frequency plane at time t (eq. 34, p. 524). Energy in Rihaczek's distribution concentrates about the IF, and its first moment gives the IF however fast the IF varies (Ackroyd; p. 524).
- **The paradox in the name** (p. 521, 536): frequency counts cycles per unit time, so "instantaneous frequency" is contradictory, and the definition is "controversial, application-related, and empirically assessed" (p. 521). Vakman's version: IF is local, yet computing it through the HT needs the signal's entire history (p. 536).
- **Stationary-phase meaning** (eq. 23–26, p. 523): the analytic signal's spectrum is largest at the frequency where φ(t) − 2πft is stationary, f_s = φ′/2π. So the IF measures where the energy is concentrated in frequency at each time. This holds when the phase oscillates rapidly compared with the amplitude, |φ′| ≫ |a′| (B5, p. 536), equivalently |f_i| ≫ σ_f, the instantaneous bandwidth (p. 536).
- **Two tones (Mandel's example)** (eq. 28–30, p. 523): for z = a₁e^{j(ω₀−Δω/2)t} + a₂e^{j(ω₀+Δω/2)t}, f_i(t) = f₀ + (Δf/2)(a₂² − a₁²)/(a₁² + a₂² + 2a₁a₂ cos Δωt). The spectrum is two lines symmetric about f₀, but the IF excursions are not: entirely upwards if a₂ > a₁, entirely downwards if a₁ > a₂ (p. 523). Boashash's verdict: this is a two-component signal, so its IF is outside the scope of the definition; only s₁ and s₂ separately have meaningful IFs (p. 523).
  - *My derivations, not in the paper:* averaging eq. 30 over a beat period (⟨1/(A + B cos x)⟩ = 1/√(A² − B²)) gives f₀ − Δf/2, i.e. the stronger tone, when a₁ > a₂. The |z|²-weighted mean is the spectral centroid (eq. 19–20). The maximum excursion is f₀ ± (Δf/2)(a₁ + a₂)/|a₁ − a₂|, so the IF leaves the band [f₁, f₂] that holds all the energy, and goes negative if f₀ < (Δf/2)(a₁ + a₂)/|a₁ − a₂|. The paper does not discuss negative IF or IF outside the band explicitly.
- **Signal model and definitions** (p. 524, 527):
  - s(t) = Σ_{k=1}^{N} s_k(t) + n(t), each s_k with its own envelope a_k and IF f_{ik}. N = 1 is monocomponent, N ≥ 2 multicomponent (eq. 35–37, p. 524).
  - *Definition 1:* an asymptotic (large-BT) signal is **monocomponent (or invertible)** if its IF accurately represents its FM law and is single-valued and invertible, so f_i⁻¹(f) exists (p. 527). Fig. 3(c) (p. 527) draws a non-monotonic (U-shaped) law as multicomponent.
  - *Definition 2:* a signal is multicomponent if it is a finite sum of monocomponent signals and the decomposition is meaningful; only one component need be asymptotic. The decomposition is not unique and is application dependent (p. 527).
  - Whether there are one or several components is decided by the continuous pattern of energy concentration in the time–frequency plane, measured by the local spread about the IF (Fig. 4, p. 527–528).
- **When the analytic signal gives a meaningful amplitude and phase** (p. 524–525, 529, 536–537):
  - The analytic signal is not always the signal plus its quadrature component. The HT removes negative frequencies, so any leakage of the "positive" spectrum into negative frequencies stops it from giving the quadrature, and IF results become doubtful (p. 524).
  - *Bedrosian condition:* a(t)cos φ(t) + jH[a cos φ] = a(t)e^{jφ(t)} (eq. 39) holds if the spectrum of a(t) lies entirely in |f| < f₀ and that of cos φ(t) lies only outside this region (p. 525). The product theorem (App. C) is necessary and sufficient (Chiollaz et al. 1978; p. 537). For real signals the two spectra must be disjoint; for complex signals both must be right-sided but need not be disjoint (C1–C4, Fig. 15, p. 536–537).
  - The HT is a "high frequency selector": the predominantly high-frequency part of the signal becomes the phase term. For cos 2πf₁t · cos 2πf₂t (f₂ > f₁), either factor could be the "amplitude", and the HT gives z = cos(2πf₁t)e^{j2πf₂t} (eq. 38–41, p. 524–525).
  - *Key assertion:* amplitude and phase can be treated independently only if the spectra of a(t) and cos φ(t) are separated in frequency. Otherwise the analytic signal is still unique, but its a(t) and φ(t) have questionable practical meaning. The nearer the signal is to narrow-band, the better the HT approximates the quadrature and the better the IF estimate (eq. 42, p. 525).
  - *Theorem 1 (Nuttall 1966):* for a(t)cos(2πf₀t + φ(t)) of any BT, the analytic signal approaches a e^{j(2πf₀t+φ)} as f₀ → ∞; the energy error equals the energy of the spectrum of a e^{jφ} below −f₀ (p. 529).
  - *Theorem 2 (Jones):* if dφ/dt ≥ 0 for all t (monotonic, purely positive frequency law) and BT is large, the analytic signal approaches a e^{jφ} as BT → ∞ (stationary-phase proof, eq. 56–62, p. 529). BT ≫ 1 and condition (B5) are asymptotically equivalent (p. 529).
- **IF and group delay** (p. 525–532):
  - GD τ_g(f) = −(1/2π) dθ/df, the phase-spectrum derivative (eq. 45). By stationary phase it gives the time localisation of each spectral component (eq. 49–52, p. 525–526): the frequency-domain dual of IF.
  - The phase spectrum (hence GD) depends on both the amplitude and the phase of the time signal, and the signal phase (hence IF) depends on both amplitude and phase spectra (eq. 47–48, p. 525).
  - *Property 2:* for a monocomponent asymptotic signal with large BT and monotonic IF, f_i(t) approaches τ_g⁻¹(f); the time–frequency law is then physical: IF is the FM law and GD the time delay (Fig. 6b, BT = 125; p. 527).
  - *Property 3:* for small BT, f_i ≠ τ_g⁻¹. The two laws are mathematically well defined but carry no physical meaning (Kodera et al. 1978; Fig. 6a, BT = 3.2; p. 527).
  - Why: monotonic IF makes each frequency map to one time; large BT makes one frequency dominant at each instant (stationary phase). For small BT, "there is no dominant frequency" at an instant (p. 527–528). The GD of a short signal oscillates because of the Gibbs phenomenon in the FT phase; these oscillations are real, reflecting the physical limits of filters on short sequences (p. 527).
  - For a non-monotonic IF law the GD is not single-valued, and even definition (18) of IF can be argued to be wrong for small-BT and multicomponent signals (p. 528). How IF and GD relate when monotonicity or large BT fail is stated as unanswered (p. 527).
  - Stepped sweeps of N = 5, 10 and "infinitely" many delayed sinusoids (eq. 55): the IF and GD laws approach each other asymptotically. A pure frequency cannot be built within a short duration; a large BT is needed (Fig. 7, p. 528, 530).
  - Linear chirp with BT ≫ 1: f_i = f_c + αt and τ_g = (f − f_c)/α are the same operator, so IF is a unique time–frequency characteristic. For small BT two different laws appear and their interpretation is less meaningful (eq. 66–70, p. 531–532).
- **Bandwidth–time product** (p. 526):
  - B and T are conventions fixed by noise thresholds and the application (p. 526).
  - Gabor's effective duration and bandwidth (eq. 53–54): dilation shows BT is a signal-dependent constant, whose minimum, 1/4π, is reached by a Gaussian (p. 526). The paper does not call this the uncertainty principle here, though refs. [38] and [40] do.
  - "Asymptotic" signals have large BT; the paper assumes **BT > 10** throughout. Landau & Pollak: more than 99% of the energy lies within B and T when BT > 5 (p. 526). Communication and seismic FM signals belong to this class.
  - BT measures the "richness" of information, like the number of realisations needed to estimate a PDF. A short signal's IF has limited meaning because there is not enough data to observe any variation (p. 526).
  - *Property 1:* an asymptotic signal's energy is concentrated in a finite region about the IF, more tightly as BT grows (Fig. 5, BT = 30 vs 120; p. 527–528).
- **Communication IF vs analyst's IF** (p. 530–531): for an FM transmission s = a cos 2π(f₀t + ∫m dτ) the IF f₀ + m(t) is known and physical, recoverable by a phase-locked loop or zero-crossing detector; IF variations are small relative to f₀, f₀ is large and BT large, so the analytic signal approximates the quadrature signal (eq. 64–65). Ville's signal-based IF (analytic signal, then phase derivative, eq. 43) gives estimators usable "in a high SNR environment" (p. 531). Theorems 1–2 say when the two coincide.
- **Synthetic experiments** (Figs. 8–11, p. 530–532): a finite-length linear chirp (eq. 63), comparing the HT analytic signal with the ideal "real plus imaginary quadrature" (RQ) signal, which needs the formula and is unavailable for data.
  - *Experiment 1 (centre frequency):* BT = 1.6 with f₀ = 6 Hz vs 25 Hz (sampling 100 Hz). A larger f₀ reduces the RQ signal's leakage into negative frequencies, so the analytic signal and its IF improve, mainly away from the record start (Figs. 8–9).
  - *Experiment 2 (BT):* BT = 0.4 vs 25.6. At small BT there is substantial leakage and the effect on IF estimation is "destructive"; at BT = 25.6 the two spectra superimpose and the IFs agree (Figs. 10–11).
- **IF and time–frequency distributions (TFDs)** (p. 532–535):
  - IF gives the "internal organization" of the signal but not the spread about the law; a TFD shows both, and the IF can be read from its peaks (p. 532).
  - An ideal TFD for a e^{jφ} would be the amplitude's TFD centred on the IF: ρ(t, f) = A(t, f) ⊛_f δ(f − f_i(t)) (eq. 71, p. 533).
  - The WVD of a large-BT signal is an Airy function about the IF (eq. 72). It takes the ideal form, a ridge on the IF, only when the third derivative of the phase is zero (linear FM); otherwise higher phase derivatives distort it (p. 533).
  - In Cohen's class (eq. 73), the conditional mean frequency ⟨f⟩_t (eq. 74) equals the IF for every kernel with g(ν, 0) = 1 and ∂g/∂τ|_{τ=0} = 0 (eq. 75). The GD is the first time moment for kernels with g(0, τ) = 1 and ∂g/∂ν|_{ν=0} = 0 (eq. 76). This generalises Ville (g = 1, WVD) (p. 533).
  - First-moment IF estimation is computationally expensive and "adversely affected by noise"; peak detection is preferable, and works on the WVD for quadratic phase (p. 533).
  - A TFD that is positive everywhere (e.g. the STFT) does not give the IF as its first moment, only a "smeared version" (p. 534).
- **Instantaneous bandwidth (IB)** (p. 533–534):
  - If IF is the average frequency at an instant, its spread is an instantaneous bandwidth, σ_f²(t) = ∫(f − f_i)²ρ df / ∫ρ df (eq. 80), by analogy with the classical bandwidth (eq. 79) (p. 533).
  - Rihaczek's "elementary cells" along the FM law: relaxation time T_r(t) = |df_i/dt|^{−1/2} and dynamic bandwidth B_d(f) = |dτ_g/df|^{−1/2} (eq. 77–78, Fig. 12, p. 533–534).
  - The WVD's spread is positive only for some signals (e.g. Gaussian amplitudes), so its usefulness is questionable (p. 534).
  - Cohen & Lee: kernels with g″(0) = 1/4 give a positive spread, σ_f²(t) = (1/4π²)[a′(t)/a(t)]² (eq. 81, p. 534). Cohen showed the STFT's spread reduces to the same expression once window terms are removed (p. 534).
  - Mandel's global relation (eq. 82–83): the classical bandwidth² is the amplitude-weighted mean of (f_i − ⟨f⟩)² plus (1/4π²)(a′/a)². So bandwidth splits into an IF-variation part and an envelope part, and the latter has the form of Cohen–Lee's IB (p. 534).
  - Interpretation: with a constant envelope there is no spread about the IF, which is then the only frequency present; amplitude modulation creates neighbouring frequencies whose average is the IF (p. 534). Mean, median and mode of a distribution need not coincide, so expecting the mean spectral spread to equal the mean IF spread is unreasonable (answering Mandel, p. 534).
  - No TFD in practical use satisfies g″(0) = 1/4, so current TFDs leave room for improvement (p. 534).
- **Multicomponent signals** (p. 534–535):
  - For x_m = a₁cos φ₁ + a₂cos φ₂ with large-BT, positive-IF components, the analytic signal is a₁e^{jφ₁} + a₂e^{jφ₂} (eq. 84–85). Its envelope (eq. 86) can vary fast, and its phase is a nonlinear combination that "may possess erratic behavior", so none of the monocomponent results apply (p. 534).
  - Cohen-class bilinear kernels produce cross-terms between components, even for the positive STFT; they shrink as the components' ambiguity functions separate (p. 535). "Multicomponent = has cross-terms" is a possible definition but hard to test.
  - Practical test: at a given time, is the energy spread about one frequency, or clearly separated about two or more (p. 535)?
  - The decomposition is unique only if the components never coincide in the time–frequency plane; crossing IF laws admit two separations (Fig. 13, p. 535).
- **Conclusion** (p. 535): many questions are resolved, but much work remains before these notions become standard engineering tools.

## Setup / method
- **Type of paper:** tutorial review with derivations; theory only. There are no flow measurements, simulations of flows, stability analyses or reduced-order models.
- **Scope restriction:** FM-type signals of model (35)–(37), mostly "asymptotic" (BT > 10) and with positive, monotonic IF where theorems need it (p. 524, 526, 529).
- **Analytic signal construction:** Gabor/Ville HT (eq. 15–16, A1–A2). Frequency-domain version: suppress negative frequencies, double positive ones, with Z(0) = S(0) = 0 assumed (A8, p. 535).
- **Discrete-friendly estimators** (p. 525): central-difference phase IF, f_i(t) = lim_{δt→0}(arg z(t + δt) − arg z(t − δt)) mod 2π / (4πδt) (eq. 43), and the corresponding GD estimator (eq. 46). Details of the discrete IF are deferred to Part 2.
- **Synthetic test signals:**

| Case | Signal | Parameters | Pages |
|---|---|---|---|
| Stepped sweeps vs linear sweep | N delayed constant-amplitude sinusoids, f_i = f₁ + (i − 1)(f₂ − f₁)/N on ((i − 1)T/N, iT/N) | N = 5, 10, ∞; about 0–500 Hz over 512 ms (axes of Fig. 7) | 528, 530 |
| IF vs GD, small and large BT | linear chirps | BT = 3.2 (100–150 Hz, 64 ms) and 125 (0–500 Hz, 256 ms), axes of Fig. 6 | 527, 529 |
| TFD concentration | A(t) = Π_T(t) cos(πt/T) | BT = 30 and 120 | 528 |
| Experiment 1 (centre frequency) | Π_T chirp, eq. 63 | BT = 1.6; f₀ = 6 and 25 Hz; f_s = 100 Hz | 530–531 |
| Experiment 2 (BT) | Π_T chirp, eq. 63 | BT = 0.4 and 25.6 | 530, 532 |
| Worked chirp | Π_T(t)cos 2π(f_c t + αt²/2) | α = B/T, f_c = f₀ + B/2, BT ≫ 1 | 531–532 |

- **Data needs (for the Relevance section):** every quantity here (IF, GD, IB, TFDs) needs a uniformly sampled, time-resolved signal. Noise is mentioned only qualitatively in Part 1 (first-moment estimation is noise-sensitive, p. 533; HT IF estimators need high SNR, p. 531).

## Key equations
Read from page renders of every page; the OCR layer garbles equations. Notation as printed (f in Hz, ω = 2πf).

- **Carson & Fry FM wave** (eq. 6–8, p. 521):
  $$w(t)=\exp\!\Big(j\big(\omega_0t+\lambda\!\int_0^t m(t)\,\mathrm dt\big)\Big),\quad \Omega(t)=\omega_0+\lambda m(t),\quad f_i(t)=f_0+\frac{\lambda}{2\pi}m(t)$$
- **Van der Pol** (eq. 13–14, p. 522): $s(t)=a\cos\big[\int_0^t2\pi f_i(t)\,\mathrm dt+\theta\big]$, $f_i(t)=\dfrac{1}{2\pi}\dfrac{\mathrm d\phi(t)}{\mathrm dt}$.
- **Gabor analytic signal and HT** (eq. 15–16, p. 522; A1–A2, p. 535):
  $$z(t)=s(t)+jH[s(t)]=a(t)e^{j\phi(t)},\qquad H[s(t)]=\mathrm{p.v.}\!\int_{-\infty}^{\infty}\frac{s(t-\tau)}{\pi\tau}\,\mathrm d\tau$$
  with $a=\sqrt{s^2+y^2}\ge|s|$ and $\phi=\arctan(y/s)$, y = H[s] (A9–A11, p. 536).
- **Gabor moments** (eq. 17, p. 522): $\langle f^n\rangle=\int f^n|Z(f)|^2\mathrm df\big/\int|Z(f)|^2\mathrm df$.
- **Ville IF and the mean-frequency identity** (eq. 18–20, p. 522):
  $$f_i(t)=\frac{1}{2\pi}\frac{\mathrm d}{\mathrm dt}\arg z(t),\qquad \langle f\rangle=\frac{\int f|Z(f)|^2\mathrm df}{\int|Z(f)|^2\mathrm df}=\langle f_i\rangle=\frac{\int f_i(t)|z(t)|^2\mathrm dt}{\int|z(t)|^2\mathrm dt}$$
- **WVD and its first moment** (eq. 21–22, p. 522):
  $$W(t,f)=\int z(t+\tau/2)\,z^*(t-\tau/2)\,e^{-j2\pi f\tau}\mathrm d\tau,\qquad f_i(t)=\frac{\int fW(t,f)\,\mathrm df}{\int W(t,f)\,\mathrm df}$$
- **Stationary phase → IF** (eq. 23–26, p. 523): $Z(f)=\int a(t)e^{j[\phi(t)-2\pi ft]}\mathrm dt$ is largest where $\frac{\mathrm d}{\mathrm dt}[\phi(t)-2\pi f_st]=0$, i.e. $f_s=\phi'(t)/2\pi$. Validity condition (B5, p. 536): $|\phi'(t_0)|\gg|a'(t_0)|$, read as $|f_i(t_0)|\gg\sigma_f(t_0)$; approximation (B7): $Z(f)\simeq a(t_0)\,(2\pi/|\phi''(t_0)|)^{1/2}e^{j[\phi(t_0)-2\pi ft_0\pm\pi/4]}$.
- **Mandel's two-tone signal** (eq. 28–30, p. 523):
  $$z(t)=a_1e^{j(\omega_0-\Delta\omega/2)t}+a_2e^{j(\omega_0+\Delta\omega/2)t},\qquad f_i(t)=f_0+\frac{\Delta f}{2}\,\frac{a_2^2-a_1^2}{a_1^2+a_2^2+2a_1a_2\cos\Delta\omega t}$$
  Eq. 29 prints the phase as $\tan^{-1}\{(a_2-a_1)\sin(\Delta\omega t/2)/[(a_1+a_2)\cos(\Delta\omega t/2)]\}$, without the carrier term ω₀t (see the check list). Eq. 30 is correct: I re-derived it. With f₁ = f₀ − Δf/2 and r = a₂/a₁ it is the same as $f_i=f_1+\Delta f\,(r^2+r\cos\Delta\omega t)/(1+r^2+2r\cos\Delta\omega t)$.
- **Priestley and Cohen** (eq. 32–34, p. 524): $s(t)=\int\gamma_t(f)S(f)\,\mathrm df$, $\gamma_t(f)=A_t(f)e^{j2\pi ft}$; $\langle f_i\rangle_t=\phi'(t)/2\pi$.
- **Signal model** (eq. 35–37, p. 524): $s(t)=\sum_{k=1}^{N}s_k(t)+n(t)$, $z_k=a_k e^{j\phi_k}$, $\phi_k(t)=2\pi\int_{-\infty}^{t}f_{i_k}(\tau)\,\mathrm d\tau$.
- **Quadrature condition and HT selection** (eq. 39–41, p. 524–525):
  $$a\cos\phi+jH[a\cos\phi]=a e^{j\phi}\ \text{ if } \mathcal F\{a\}=0\ \text{for } |f|\ge f_0 \text{ and } \mathcal F\{\cos\phi\}=0 \text{ for } |f|<f_0;\qquad \cos(2\pi f_1t)\cos(2\pi f_2t)\ \xrightarrow{\ \mathrm{HT}\ }\ \cos(2\pi f_1t)\,e^{j2\pi f_2t}\ (f_2>f_1)$$
- **Bedrosian product theorem** (C1–C4, p. 536–537): if X(f) = 0 for |f| > a and Y(f) = 0 for |f| < b with b ≥ a ≥ 0 (real case, disjoint spectra), or X(f) = 0 for f < −a and Y(f) = 0 for f < b (complex case, right-sided spectra), then H{x y} = x H{y}. For two analytic signals (a = b = 0), H[xy] = xH[y] = yH[x].
- **Discrete-friendly IF and GD** (eq. 43, 45–46, p. 525):
  $$f_i(t)=\lim_{\delta t\to0}\frac{1}{4\pi\delta t}\big(\arg z(t+\delta t)-\arg z(t-\delta t)\big)\bmod 2\pi,\qquad \tau_g(f)=-\frac{1}{2\pi}\frac{\mathrm d\theta(f)}{\mathrm df},\quad Z(f)=A(f)e^{j\theta(f)}$$
  (Here A(f) = |Z(f)|; in §III-A the same letter is used for 𝓕{a(t)}.) GD by stationary phase on $z(t)=\int_0^\infty|Z(f)|e^{j[\theta(f)+2\pi ft]}\mathrm df$ (eq. 49–52, p. 525–526).
- **Gabor duration and bandwidth** (eq. 53–54, p. 526): $T_s^2=\int t^2|s|^2\mathrm dt/\int|s|^2\mathrm dt$, $B_s^2=\int f^2|S|^2\mathrm df/\int|S|^2\mathrm df$; dilation $s(kt)\leftrightarrow k^{-1}S(f/k)$; minimum product 1/4π for a Gaussian.
- **Theorem 2 proof** (eq. 56–62, p. 529): $S(f)=S_1+S_2$ with stationary points $\phi'(t_0)=2\pi f$, $\phi'(t_1)=-2\pi f$; with φ′ > 0, S₁ = 0 for f ≤ 0 and S₂ = 0 for f ≥ 0, so $Z(f)=2S_1(f)$ and $z=a e^{j\phi}$.
- **Test chirp and worked example** (eq. 63, 66–70, p. 529–532): $s=\Pi_T(t-T/2)\cos(2\pi f_0t+\tfrac12\alpha t^2)$ (as printed); $\phi=2\pi(f_ct+\tfrac12\alpha t^2)$, α = B/T; $f_i=f_c+\alpha t$, $g=f_i^{-1}$: $t=\alpha^{-1}(f_i-f_c)$; $Z(f)\simeq\alpha^{-1/2}\Pi_B(f-f_c)\,e^{j\pi(1/4-\alpha^{-1}(f-f_c)^2)}$; $\tau_g(f)=(f-f_c)/\alpha$.
- **TFDs** (eq. 71–76, p. 533):
  $$\rho(t,f)=A(t,f)\underset{f}{*}\delta(f-f_i(t)),\qquad W(t,f)=k\,\mathrm{Ai}\Big(\big[32\pi^2/f_i''(t)\big]^{1/3}(f-f_i(t))\Big)$$
  $$\rho(t,f)=\iiint e^{j2\pi\nu(u-t)}g(\nu,\tau)\,z(u+\tau/2)\,z^*(u-\tau/2)\,e^{-j2\pi f\tau}\,\mathrm d\nu\,\mathrm du\,\mathrm d\tau,\qquad \langle f\rangle_t=\frac{\int f\rho\,\mathrm df}{\int\rho\,\mathrm df}=f_i(t)\ \text{ if } g(\nu,0)=1,\ \partial_\tau g|_{\tau=0}=0$$
  GD as first time moment if $g(0,\tau)=1$, $\partial_\nu g|_{\nu=0}=0$.
- **Elementary cells and bandwidths** (eq. 77–81, p. 533–534):
  $$T_r(t)=\Big|\frac{\mathrm df_i}{\mathrm dt}\Big|^{-1/2},\quad B_d(f)=\Big|\frac{\mathrm d\tau_g}{\mathrm df}\Big|^{-1/2},\quad \sigma_{BW}^2=\frac{\int(f-\langle f\rangle)^2|S|^2\mathrm df}{\int|S|^2\mathrm df},\quad \sigma_f^2(t)=\frac{\int(f-f_i(t))^2\rho\,\mathrm df}{\int\rho\,\mathrm df},\quad \rho_f^2(t)=\frac{1}{4\pi^2}\Big[\frac{a'(t)}{a(t)}\Big]^2$$
  For a linear chirp, T_r = α^{−1/2} and B_d = α^{1/2}, so each cell has T_r B_d = 1 (my arithmetic).
- **Mandel's bandwidth decomposition** (eq. 82–83, p. 534):
  $$\sigma_{BW}^2=\frac{\int\Big[(f_i(t)-\langle f\rangle)^2+\frac{1}{4\pi^2}\big(\frac{a'(t)}{a(t)}\big)^2\Big]|s(t)|^2\mathrm dt}{\int|s(t)|^2\mathrm dt}$$
  This is the same identity as Cohen's bandwidth in [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md) (eq. 3.11, there normalised by ⟨ω⟩²).
- **Two-component analytic signal** (eq. 84–86, p. 534): $z_m=a_1e^{j\phi_1}+a_2e^{j\phi_2}$, $a_m=[a_1^2+a_2^2\mp2a_1a_2\cos(\phi_1-\phi_2)]^{1/2}$ (printed with −; + is correct).

> Points to check against the PDF before relying on them:
> - **Eq. 29** (p. 523) omits ω₀t (2πf₀t) from the phase; as printed it is only the phase relative to the carrier. Eq. 30 is consistent with the full phase.
> - **Eq. 86** (p. 534) prints −2a₁a₂cos(φ₁ − φ₂); the modulus of a₁e^{jφ₁} + a₂e^{jφ₂} has +.
> - **Eq. 82–83** (p. 534) weights by |s(t)|²; the identity holds with the analytic signal, |z(t)|² = a²(t), and S(f) its (one-sided) spectrum.
> - **(B5)** (p. 536) is printed |φ′| ≫ |a′|; dimensionally, and to match the IB reading |f_i| ≫ σ_f, it should be |a′/a|.
> - **Proof on p. 525** uses H{cos φ} = sin φ without comment. That step is itself approximate; Theorems 1–2 (Nuttall, Jones; p. 529) are what cover it.
> - **Eq. 63 vs p. 530:** the test chirp is printed as Π_T(t − T/2) cos(2πf₀t + αt²/2), the RQ signal as Π_T(t) exp(j2πf₀t + jαt²): the window and the factor ½ differ. Eq. 66 uses φ = 2π(f_ct + αt²/2).
> - **Fig. 9 axes** are labelled ms (0–16) but, with BT = 1.6 and the plotted sweep of about 9 Hz, the duration must be about 0.16–0.18 s; the label is probably wrong. Fig. 11(b) is in seconds (0–1.28 s), consistent with BT = 25.6 for a ~20 Hz sweep.
> - **p. 535** refers to "the bilinear kernel … of (43)"; it means (73).
> - Fig. 6(a) reads BT = 3.2 at higher magnification (the low-resolution render looks like 3.3).
> - The mean-IF, IF-outside-the-band and negative-IF statements under Key findings are my derivations from eq. 30, not statements in the paper.

## Data tables
| Quantity | Value | Page |
|---|---|---|
| Minimum Gabor B_s T_s (Gaussian) | 1/4π | 526 |
| BT assumed for "asymptotic" signals | > 10 | 526 |
| Energy within B and T (Landau & Pollak) | > 99% if BT > 5 | 526 |
| IF vs GD: disagree / agree | BT = 3.2 / 125 | 527, 529 |
| TFD concentration examples | BT = 30, 120 | 528 |
| Experiment 1 | BT = 1.6, f₀ = 6 vs 25 Hz, f_s = 100 Hz | 530–531 |
| Experiment 2 | BT = 0.4 vs 25.6 | 530, 532 |
| Cohen–Lee kernel condition for positive IB | g″(0) = 1/4 | 534 |

## Figures worth remembering
- **Fig. 2 (p. 522):** phasor picture of the analytic signal: envelope a(t) and phase φ(t) of s(t) = a cos φ.
- **Fig. 3 (p. 527):** monocomponent (one monotonic law) vs multicomponent (two crossing laws; one U-shaped, non-invertible law).
- **Fig. 4 (p. 528):** spectra at successive times: two well-separated ridges (multicomponent) vs one ridge (monocomponent).
- **Fig. 5 (p. 528):** TFD concentration about the IF grows with BT (30 vs 120).
- **Fig. 6 (p. 529):** IF and GD laws of a chirp: they differ for BT = 3.2 and coincide for BT = 125. The clearest picture of the BT condition.
- **Fig. 7 (p. 530):** stepped sweeps with 5, 10 and infinitely many steps; IF and GD converge as the steps vanish.
- **Figs. 8–11 (p. 531–532):** analytic vs RQ spectra and IF estimates for small and large f₀ and BT.
- **Fig. 12 (p. 534):** Rihaczek's elementary cells along an FM law.
- **Fig. 13 (p. 535):** crossing IF laws have two valid separations.
- **Fig. 14–15 (p. 537):** stationary phase; Bedrosian regions for real and complex signals.

## Notation
- s(t): real signal; y(t) = H[s]: its Hilbert transform; z(t) = s + jy = a e^{jφ}: analytic signal; a(t): envelope; φ(t): instantaneous phase.
- f_i(t) = φ′/2π: instantaneous frequency; f_s: stationary-phase frequency; τ_g(f) = −θ′(f)/2π: group delay; Z(f) = A(f)e^{jθ(f)}: spectrum of z.
- B, T: bandwidth and duration; T_s, B_s: Gabor's RMS duration and bandwidth; BT: bandwidth–time product; asymptotic signal: large BT (> 10 here).
- RQ signal: "real plus imaginary quadrature" complex signal, the ideal that the HT analytic signal approximates.
- W(t, f): Wigner–Ville distribution; ρ(t, f): Cohen-class TFD with kernel g(ν, τ); ⟨f⟩_t: conditional mean frequency.
- σ_BW: classical bandwidth; σ_f(t), ρ_f(t): instantaneous bandwidth (general and Cohen–Lee); T_r, B_d: Rihaczek's relaxation time and dynamic bandwidth.
- Π_T(t): unit box of width T.

## Relevance to this project
This is the formal reference behind the instantaneous-frequency step of the CLAUDE.md pipeline (SPOD → reconstruction → Hilbert POD). It supplies the definitions and validity conditions that the library previously took from [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), and is the main source for the research question [hpod-instantaneous-frequency-uncertainty](../Research_Questions/hpod-instantaneous-frequency-uncertainty.md).

- **Reading IF from HPOD modes:**
  - [Raiola 2025](raiola-2025-hilbert-pod.md) defines the HPOD IF as (1/2π) d arg ψ_j/dt (eq. 2.20–2.21), which is Ville's IF (eq. 18 here) applied to a temporal mode. Raiola proves that HPOD_t temporal modes contain only positive frequencies (p. 10–11), so they are analytic by construction and the leakage problem of Theorems 1–2 does not arise for the mode itself. What remains is the monocomponent condition: one ridge per instant, an amplitude whose spectrum sits below the carrier's (Bedrosian, p. 525), and a large BT over the time scale being interpreted (p. 526–528). *(My synthesis.)*
  - The paper's two-tone formula (eq. 30) is the analytic version of the beating artefacts already on the time-frequency-methods topic page ([Wong 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 16–18, 36): a band that contains two tones gives an IF that sits near the stronger tone and swings at the beat frequency, and is not a valid IF in Boashash's sense.
  - **Practical checks this paper suggests** *(my suggestions, not done in the paper):* (1) compute the group delay of a reconstructed mode's spectrum and compare τ_g⁻¹ with f_i(t); where they disagree (Property 3, Fig. 6a), the IF is not a physical law at that scale. (2) Plot the Cohen–Lee instantaneous bandwidth |a′/a|/2π (eq. 81) alongside the IF as a local spread bar. (3) Before trusting an IF change over a time τ, check that the reconstruction band B gives Bτ ≫ 1 (the BT condition applied locally). (4) Use the central-difference, mod-2π estimator (eq. 43) rather than differentiating an unwrapped phase.
  - For a screech or impinging tone (carrier of several kHz with envelope fluctuations of tens to hundreds of Hz), Theorem 1's condition (carrier much higher than the envelope bandwidth) is easily met. The real risk in our data is multicomponent content inside the band: two staging tones, harmonics or broadband turbulence. *(My inference.)*
- **Mode switching and coexistence:** the paper's practical monocomponent test (is the energy at an instant spread about one frequency or separated about two or more, p. 535) is what the JPDF and SPOD-spectrogram tests of [Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) (p. 11) do for A1/A2. Coexisting tones make the signal multicomponent and the band IF meaningless; exclusive switching is a stepped law, like the stepped sweeps of Fig. 7, where IF and GD agree only when each step is long enough. The test itself is a TFD judgement, so its outcome depends on the TFD's resolution. *(My inference.)*
- **Strictness of "monocomponent":** Definition 1 requires an invertible (monotonic) IF law (p. 527). A jittering screech tone, or Huang's intrawave modulation, is therefore not strictly monocomponent here, although Ville's IF is still defined. Huang's IMF criterion is far more permissive. The difference matters when reading sub-cycle IF wiggles as physics (the open "harmonics vs intrawave modulation" question on the topic page). *(My comparison.)*
- **Non-uniqueness:** Shekel's, Priestley's and the cos·cos examples (p. 523–525) show that the split into amplitude and phase is a representation choice that the HT fixes by selecting the highest-frequency factor as the phase. This is the primary source for the point that intrawave frequency modulation and Fourier harmonics are alternative descriptions of the same waveform.
- **Which data each method suits:** IF, GD, IB and TFDs all need uniformly sampled, time-resolved signals: microphones, time-resolved schlieren pixels or POD/HPOD coefficients, LES probes. None applies to non-time-resolved PIV. For PIV, the spatial analogue (local wavenumber from HPOD_x, [Raiola 2025](raiola-2025-hilbert-pod.md); [Davey 2025](davey-2025-hpod-sphere-wake.md)) inherits the same conditions in x: Bedrosian separation in wavenumber, a large "bandwidth–length" product, and one ridge per position. *(My inference.)*
- **Narrow-banding and end effects:** the paper's statement that the IF estimate improves as the signal approaches a narrow-band condition (p. 525) supports narrow-banding before the Hilbert step ([Horel 1984](horel-1984-complex-principal-component-analysis.md), p. 1662; SPOD reconstruction, [Nekkanti 2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md); Sieber's filter, [Sieber 2016](sieber-2016-spectral-proper-orthogonal-decomposition.md)). Vakman's paradox (p. 536), that the "instantaneous" value needs the whole record through the HT, is the reason for the end tapering and trimming those papers apply.
- **Wavelets and spectrograms:** the paper's remark that a positive TFD such as the STFT returns only a smeared IF (p. 534) applies equally to Morlet scalograms ([Torrence 1998](torrence-1998-practical-guide-wavelet-analysis.md)): ridges or centroids of a scalogram are resolution-limited estimates of the IF, not the IF itself. The newer reassignment and synchrosqueezing methods descend from Kodera et al. 1978 (ref. [26]). The batch indexed alongside this paper includes `daubechies-2011-synchrosqueezed-wavelet-transforms-emd` and `rilling-2008-one-or-two-frequencies-emd-two-tones` (in `Notes/_incoming/` at the time of writing).
- **Modelling side:** there is no flow model. The only "models" are signal models (FM, chirps, two tones). The comparison of an IF law with a known FM law (communications, p. 530–531) is analogous to comparing a measured tone's IF with a resonance-model or stability prediction.
- **Rocket noise:** chirped and Doppler-shifted signals (radar, sonar, bat echolocation, p. 520) are the paper's motivating cases. The IF and GD of a large-BT chirp would describe a Doppler-shifted tone from an ascending vehicle, but no rocket-noise note in the library does this. *(Suggestion.)*
- **Facility attribution:** none; not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:** Boashash 1992 Part 2 (algorithms and applications, same issue; ref. [8]); Cohen 1989 (ref. [15]); Mandel 1974 (ref. [28]); Cohen & Lee 1988–1990 on instantaneous bandwidth (refs. [16]–[18b]); Vakman 1976 (ref. [39]); Rihaczek 1968 (ref. [34]); Kodera, Gendrin & Villedary 1978 (ref. [26], origin of reassignment). Bedrosian 1963, Nuttall 1966 and Gabor 1946 are now indexed: [Bedrosian 1963](bedrosian-1963-product-theorem-hilbert-transforms.md), [Nuttall & Bedrosian 1966](nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md), [Gabor 1946](gabor-1946-theory-of-communication.md).
