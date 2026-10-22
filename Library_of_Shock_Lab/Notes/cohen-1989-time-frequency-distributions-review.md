---
key: "cohen-1989-time-frequency-distributions-review"
title: "Time-Frequency Distributions—A Review"
authors: ["Cohen, Leon"]
year: 1989
type: "review"
venue: "Proc. IEEE 77(7), 941–981"
bib: {"journal": "Proceedings of the IEEE", "volume": "77", "number": "7", "pages": "941--981"}
doi: "10.1109/5.30749"
arxiv: ""
pdf: "time-frequency-methods/Cohen_1989_Time-Frequency-Distributions-A-Review.pdf"
version: "published"
unverified: ["DOI not printed in this scanned PDF; taken from the indexing request (Crossref-checked in Library_of_Shock_Lab/Research_Questions/hpod-instantaneous-frequency-uncertainty.md)"]
group: false
facility: ""
data: ["synthetic"]
methods: ["TFD", "spectrogram", "Hilbert-transform"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["time-frequency-methods"]
related: ["boashash-1992-instantaneous-frequency-fundamentals", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "raiola-2025-hilbert-pod", "torrence-1998-practical-guide-wavelet-analysis", "daubechies-2011-synchrosqueezed-wavelet-transforms-emd", "rilling-2008-one-or-two-frequencies-emd-two-tones", "horel-1984-complex-principal-component-analysis", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "sieber-2016-spectral-proper-orthogonal-decomposition", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "wong-2023-steady-unsteady-coupling-twin-round-jets"]
cites: []
summary: "Cohen-class TFD review: kernel sets properties; IF = conditional mean φ′; local spread, bandwidth eq.; uncertainty is about marginals only; WVD, CW, spectrogram"
---
# Time-Frequency Distributions—A Review

- **Author:** Leon Cohen (Department of Physics and Astronomy, Hunter College and Graduate Center, City University of New York). Invited paper.
- **Source:** Proc. IEEE 77(7), 941–981, July 1989. Received 21 March 1988, revised 30 March 1989 (p. 941). DOI 10.1109/5.30749 is not printed in this copy (see `unverified`); the page carries only the code 0018-9219/89/0700-0941 and IEEE Log Number 8928443.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Cohen_1989_Time-Frequency-Distributions-A-Review.pdf` (41 pp.; index key `time-frequency-methods/Cohen_1989_Time-Frequency-Distributions-A-Review.pdf`).
- **Read from page images.** The PDF is a 1-bit scan with no text layer (pdftotext returns nothing). Every page was rendered at 200–300 dpi and read by eye, so **all equations below are transcriptions and should be checked against the PDF before reuse**; specific doubts are listed after "Key equations". The reference list (213 entries, p. 977–981) was skimmed, not transcribed, so `library.py cites` cannot fill `cites` for this note.
- **Page refs:** printed journal pages (941–981). PDF page = printed page − 940.
- **Tags:** time–frequency distribution (TFD), Cohen's class, general bilinear class, kernel φ(θ, τ), characteristic function, ambiguity function, marginals, Wigner (Wigner–Ville) distribution, Rihaczek / Kirkwood / Margenau–Hill distribution, Page running spectrum, Choi–Williams (exponential) distribution, spectrogram / short-time Fourier transform, local autocorrelation, cross terms, multicomponent signals, instantaneous frequency (IF), conditional (local) mean frequency, conditional spread / instantaneous bandwidth, group delay, bandwidth equation (Mandel), analytic signal, uncertainty principle, positivity, smoothing, discrete Wigner distribution, time–frequency filtering and synthesis

## Summary
A tutorial review of joint time–frequency energy distributions for deterministic signals. Its central device is the general (Cohen) class: every distribution is the Wigner kernel s*(u − τ/2)s(u + τ/2) weighted by a kernel φ(θ, τ), and each desired property becomes a simple constraint on φ (p. 943, 952–957). With it the paper treats the Page, Rihaczek, Wigner, Choi–Williams and spectrogram distributions in one framework, including how each is derived (running spectra, characteristic functions and operator correspondence, local autocorrelation), their marginals, cross terms and positivity (p. 944–962). Local moments are derived for the whole class: the conditional mean frequency equals the phase derivative φ′(t) for every kernel with φ(θ, 0) = 1 and ∂φ/∂τ|₀ = 0, the conditional mean time equals the group delay, and the conditional spread is positive only for special kernels (p. 954–955). Section VIII argues that IF is best defined as this conditional mean, sets out the paradoxes of the phase-derivative definition, and shows that the uncertainty principle is a statement about the marginals only, with no bearing on joint distributions (p. 968–971). The paper closes with applications and the view that no single "best" distribution exists (p. 971–977).

## Key findings
- **General class and kernel** (eq. 2.4 = 4.1, p. 943, 952). An infinite number of distributions follow from one formula by choosing φ(θ, τ). Wigner: φ = 1; Rihaczek: e^{jθτ/2}; Page: e^{jθ|τ|/2}; Margenau–Hill (real part of Rihaczek): cos(θτ/2); Born–Jordan-type sinc: sin(aθτ)/(aθτ); Choi–Williams: e^{−θ²τ²/σ}; spectrogram: the window's own symmetric ambiguity function (Table 1, p. 952; eq. 6.17, p. 964). Kernels independent of t and ω give time- and frequency-shift-invariant distributions; kernels independent of the signal give bilinear ones (p. 952). The best way to find a distribution's kernel is to put it into the form of eq. 4.1; otherwise use eq. 4.4 (p. 953).
- **Properties as kernel constraints** (Section IV-A, p. 953–956):
  - time marginal ∫P dω = |s(t)|² iff φ(θ, 0) = 1 (eq. 4.10); frequency marginal ∫P dt = |S(ω)|² iff φ(0, τ) = 1 (eq. 4.12);
  - total energy only needs φ(0, 0) = 1 (eq. 4.14), which is weaker: the spectrogram keeps the total energy but not the marginals (p. 953);
  - real iff φ(θ, τ) = φ*(−θ, −τ) (eq. 4.15); the same condition makes the local autocorrelation Hermitian (eq. 3.71, p. 949);
  - zero before a signal starts and after it ends (finite support) if ∫φ e^{−jθt} dθ = 0 for |τ| < 2|t| (Claasen–Mecklenbräuker, eq. 4.48, p. 955); even then the distribution need not vanish inside gaps in the signal (p. 955);
  - Table 2 (p. 955) lists the kernel conditions for time and frequency shifts (any kernel), scaling, time inversion and conjugation; all hold for product kernels φ(θτ).
- **The marginals do not fix the distribution, nor the signal** (p. 950). There are infinitely many joint distributions with given marginals, because marginals carry no correlation information; and |s(t)|² and |S(ω)|² together do not determine s(t) (Reichenbach/Bargmann, Vogt, Altes). Positive distributions satisfying the marginals exist in infinite number, P = |S(ω)|²|s(t)|²Ω(u, v) with u, v the cumulative marginals (eq. 3.78–3.81, p. 949–950). They are not bilinear, and there is no systematic way to pick Ω (Janssen & Claasen; p. 950).
- **Instantaneous frequency as conditional mean** (eq. 4.24–4.30, p. 954). The local mean frequency ⟨ω⟩_t = (1/P₁(t))∫ωP dω. For s = A(t)e^{jφ(t)} and product kernels, ⟨ω⟩_t P₁(t) = φ(0)A²φ′ + 2φ′(0)AA′ (eq. 4.27). With φ(θ, 0) = 1 and ∂φ/∂τ|_{τ=0} = 0 (eq. 4.28; for product kernels φ(0) = 1, φ′(0) = 0, eq. 4.29), P₁ = A² and **⟨ω⟩_t = φ′(t)** (eq. 4.30). Cohen avoids calling this "instantaneous frequency" because it holds for *any* complex signal, while IF is the phase derivative of the *analytic* signal (p. 954). Boashash argued that the analytic signal should therefore always be used in these distributions (p. 954). Section VIII adopts this as the definition: seen through joint distributions, IF is the mean conditional frequency at a given time (p. 969).
- **Group delay is the dual** (eq. 4.41–4.47, p. 955). For a spectrum S = |S|e^{jψ(ω)} with slowly varying phase, the signal around ω′ is the envelope delayed by −ψ′(ω′), so the group delay is t_g = −ψ′(ω) (eq. 4.46), which Cohen reads as the mean time at a given frequency. ⟨t⟩_ω = −ψ′(ω) holds for kernels with φ(0, τ) = 1 and ∂φ/∂θ|_{θ=0} = 0 (eq. 4.47); for product kernels the condition is again eq. 4.29.
- **Conditional spread (instantaneous bandwidth) is not unique and usually not positive** (eq. 4.34–4.40, p. 954–955). For product kernels the local second moment is ⟨ω²⟩_t = ½[1 + 4φ″(0)](A′/A)² − ½[1 − 4φ″(0)]A″/A + φ′² (eq. 4.35), and the spread about φ′ is eq. 4.37. For most bilinear distributions, the Wigner included, this goes negative and so cannot be read as a variance (p. 955). Choosing φ″(0) = ¼ (Lee & Cohen, ref. [123]) gives a manifestly positive spread **⟨σ²_ω⟩_t = (A′/A)²** (eq. 4.39) and ⟨ω²⟩_t = (A′/A)² + φ′² (eq. 4.40); infinitely many kernels share this property (p. 955). In these distributions the spread about the IF comes only from the rate of change of the envelope; a constant-amplitude signal has zero local spread.
- **Bandwidth equation** (Ville, Fink, Mandel; eq. 8.5–8.9, p. 968–969). The amplitude-weighted time average of φ′ equals the spectral mean, ⟨ω⟩_S = ⟨φ′⟩_T (eq. 8.7), which supports calling φ′ the IF. The second moments do *not* match: ⟨ω²⟩_S = ⟨φ′²⟩_T + ∫A′² dt (eq. 8.8), so **σ²_S = σ²_T + ∫A′²(t) dt** (eq. 8.9): spectral bandwidth² = amplitude-weighted spread of the IF over time + an envelope term. Cohen notes the second term equals the time average of the positive local spread of eq. 4.39 (p. 969). This is the identity that [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md) quotes as Cohen's mean frequency and bandwidth (Huang eq. 3.9–3.11, the bandwidth there normalised by ⟨ω⟩²).
- **Paradoxes of instantaneous frequency** (p. 968–969, 975):
  - *Many complex signals, one real signal.* Defining IF as the rate of change of phase (Carson & Fry; Van der Pol) needs a rule for making a complex signal; Gabor's rule (drop negative frequencies, double the positive ones) gives the analytic signal (eq. 8.1–8.4, p. 968). Its phase derivative matches intuition for many signals, especially narrow-band ones (p. 968), but the choice is contested and other definitions exist (e.g. zero-crossing rate).
  - *Quadrature model.* For A(t)cos[ω₀t + φ(t)], A e^{jω₀t + jφ} equals the analytic signal (Nuttall's energy error is zero) if the spectrum of A e^{jφ} is single-sided; narrow band is not required (Nuttall 1966; Bedrosian's product theorem; p. 968).
  - *Locality.* "Instantaneous" implies a local quantity, yet the Hilbert transform needs the whole signal. Vakman showed that mild conditions lead to the analytic signal and that only a small "active band" around the IF is needed to approximate it (p. 968).
  - *Mandel.* The phase derivative need not coincide with frequencies present in the spectrum, although the averages agree (eq. 8.7). The phase derivative of an analytic signal, which has only positive frequencies, can be negative at times. One may *define* IF as the phase derivative, but the concept is then not always reflected in the definition, so the identification "must not be taken too literally" (p. 968–969).
  - *Consistency.* Distributions that give φ′ for the first conditional moment can give improper second conditional moments, so there is no fully consistent theory yet (p. 969). A theory of TFDs should *predict* the IF rather than have it imposed (p. 969, 976).
  - *Conclusion.* Whether to insist on ⟨ω⟩_t = φ′ for all signals is questionable, because the phase-derivative definition is useful only for certain signals and may be inherently inconsistent with the marginals (p. 975).
- **Real or analytic signal in a TFD?** (p. 969). Three arguments for the analytic signal: conditional-mean IF then equals the analytic-signal IF; no cross terms between positive and negative frequencies; and Nyquist-rate sampling suffices for the discrete Wigner (ref. [26]). Against: the marginals of the original signal are not reproduced, and what the analytic signal hides has not been addressed. Cross terms between positive-frequency components remain: in bilinear distributions there "will always be interference terms" (p. 969).
- **Uncertainty principle concerns the marginals only** (Section VIII-C, p. 970–971):
  - Δt and Δω are the standard deviations of |s(t)|² and |S(ω)|² (eq. 8.10), and ΔtΔω ≥ ½ for *any* signal (eq. 8.11; angular frequency, so ΔtΔf ≥ 1/4π).
  - Because (Δt)²(Δω)² computed from any joint distribution reduces to the marginal integrals (eq. 8.12–8.13), every distribution with the right marginals reproduces the uncertainty principle. It says the marginals are functionally dependent; it says nothing about correlation between t and ω, about measurements at small times and frequencies, or about whether a joint distribution exists (p. 971).
  - In signal analysis it is the Fourier fact that a function and its transform cannot both be arbitrarily narrow (p. 970). Cohen cites Lerner (the parallel with quantum mechanics is formal only), Skolnik (the word "uncertainty" is a misnomer, since nothing is uncertain) and Ackroyd (the principle does not forbid measuring a t–f energy density; it says a signal of bandwidth W lasts at least about 1/W) (p. 970–971).
  - Δt and Δω are spreads, not differential elements; the principle does not stop the cells dt dω being made as small as one likes (p. 971).
  - Positivity is not ruled out by it: the Wigner is positive for some signals, and infinitely many positive distributions satisfy the marginals and hence the uncertainty principle (p. 971, 976). Conversely, averaging the Wigner over an area larger than the uncertainty cell does *not* in general give a positive result; there are many counterexamples (p. 971).
- **Wigner distribution** (Section V, p. 957–963):
  - Satisfies the marginals, is real, shift-covariant and has all Table 2 properties; IF and group delay are exact conditional means (eq. 5.7; p. 958, 965).
  - Its local spread, ½(A′/A)² − ½A″/A (eq. 5.10), generally goes negative (Claasen & Mecklenbräuker; p. 958).
  - *Support:* zero before a finite signal starts and after it ends, and outside the band of a band-limited signal (eq. 5.11–5.12), but **not zero in gaps**: the "fold the signal about t" rule shows any overlap of past and future parts gives non-zero values, so it masks silences in speech (p. 958).
  - *Highly nonlocal:* noise confined to a short time appears at other times, and for an infinite signal at all times (Fig. 6, p. 959).
  - *Cross terms:* two tones give δ's at ω₁ and ω₂ plus a term 2A₁A₂δ[ω − ½(ω₁ + ω₂)]cos(ω₂ − ω₁)t at the midpoint (eq. 5.23); N tones give ½N(N − 1) spurious midpoints, which oscillate and can be partly removed by smoothing (p. 960). Cross-Wigner support rules (eq. 5.13–5.14, p. 959).
  - *Gaussian chirp* (eq. 5.15–5.21, p. 959–960): W = π⁻¹exp[−αt² − (ω − βt − ω₀)²/α], positive (the only signal with a positive Wigner; Hudson, Piquet; p. 959, 962), concentrated on the IF line ω = ω₀ + βt, and exactly δ(ω − βt − ω₀) as α → 0 (eq. 5.17), i.e. all the energy sits on the IF line. Cov(tω) = β/2α, r = [1 + (α/β)²]^{−1/2} (Fig. 7, p. 960).
  - *Finite tone* e^{jω₀t}, 0 ≤ t ≤ T: (t/π)sinc[(ω − ω₀)t] up to T/2 and the mirror after (eq. 5.25), symmetric about T/2 and zero at both ends; the Page distribution instead keeps growing at ω₀ (eq. 3.8; Fig. 2, p. 945, 960).
  - *Discrete:* sampling must be at ω_s ≥ 4ω_max (twice Nyquist) for the real signal (eq. 5.29–5.31, p. 960); the analytic signal removes aliasing (Boashash & Black). Nuttall later showed a Nyquist-sampled signal suffices if the full local autocorrelation is used (p. 976–977).
  - *Noise* (Nuttall; eq. 5.47–5.53, p. 962–963): for Gaussian noise the variance of the Wigner estimate is infinite without a time weighting; for white noise it is infinite for *any* weighting, so out-of-band frequencies must be filtered first.
- **Smoothing** (eq. 5.34–5.39, p. 961–962). Smoothing the Wigner with a signal-independent function can give positivity only by sacrificing the marginals. A Gaussian L ∝ e^{−t²/α − ω²/β} gives a positive result if αβ ≥ 1 (eq. 5.36); Nuttall's tilted Gaussian if αβ ≥ 1/(1 + c²) (eq. 5.38). A sufficient condition is that L itself be the Wigner of some normalised signal (Bertrand et al.). Smoothing changes the second moments and loses phase information (Soto & Claverie; Garudadri et al.). Smoothing is distribution-independent: any bilinear distribution smoothed suitably gives the same result (eq. 5.39).
- **Choi–Williams distribution** (Section III-G, p. 950–952; eq. 4.52–4.53, p. 956):
  - Kernel e^{−θ²τ²/σ}, a product kernel, so it satisfies the marginals for any σ, is real, has ⟨ω⟩_t = φ′ and all Table 2 properties (p. 956).
  - Its local autocorrelation weights s*(u − τ/2)s(u + τ/2) by a Gaussian in (u − t) of width ∝ |τ|/√σ (eq. 3.87), emphasising events near t (p. 949–950).
  - *Two tones* (eq. 3.88–3.91, p. 951): auto-terms stay δ's; the cross term 2A₁A₂cos(ω₂ − ω₁)t is spread in frequency by a unit-area Gaussian η of variance 2(ω₁ − ω₂)²/σ centred at ½(ω₁ + ω₂), so its peak grows as √σ. σ → ∞ recovers the Wigner; a small enough σ makes the cross terms practically negligible (p. 951).
  - Figs 3–5 (σ = 10⁶ and 10⁵ for ω₁ = 1, ω₂ = 9; two chirps; chirp plus sinusoidal FM) show the cross terms made negligible while the auto-terms follow the IF lines (p. 951–952).
  - The review does not quantify what small σ costs the auto-terms of non-stationary components.
- **Spectrogram** (Section VI-A, p. 962–966):
  - STFT S_t(ω) and P_S = |S_t(ω)|² (eq. 6.1–6.2); manifestly positive, hence displayable in grey scale.
  - **Trade-off belongs to the window:** compact h(t) gives time resolution, peaked H(ω) gives frequency resolution, and by the uncertainty principle h and H cannot both be arbitrarily narrow, so the trade-off is inherent "for a *particular* window"; different windows can estimate different properties (p. 963).
  - Its conditional mean frequency is a window-weighted average of φ′(t′) + φ′_h(t′ − t) (eq. 6.5). As A_h² → δ it tends to φ′(t) (eq. 6.7), "but its standard deviation approaches infinity" (ref. [123]), because the windowed signal is very short (p. 963).
  - *Gaussian chirp through a Gaussian chirped window* (eq. 6.8–6.16, p. 963–964): P_S is Gaussian about the *estimated* IF ⟨ω⟩_t = (aβ − bα)t/(α + a) with conditional spread σ₂² = ½(α + a) + ½(β + b)²/(α + a); dually about the estimated group delay (eq. 6.14, 6.16). A narrow window (a large) gives ⟨ω⟩_t → βt (p. 964). (Formulas re-derived symbolically for this note; they match the page.)
  - Kernel (eq. 6.17–6.18): φ_S is the window's symmetric ambiguity function. φ_S(θ, 0) = ∫|h|²e^{−jθt}dt and φ_S(0, τ) = ∫|H|²e^{jτω}dω can both equal 1 only as |h|² → δ, which ruins the frequency marginal (eq. 6.19–6.21, p. 964).
  - Global moments: ⟨t⟩_S = ⟨t⟩_s − ⟨t⟩_h, ⟨ω⟩_S = ⟨ω⟩_s + ⟨ω⟩_h, Cov_S = Cov_s − Cov_h (eq. 6.25–6.28, p. 964–965); second moments depend on the window.
  - **Comparison** (Table 3, p. 965): accurate IF and group delay need *different* windows, and the optimum window generally depends on time; bilinear distributions with the right marginals give both *exactly* with no window choice, but are never positive for arbitrary signals, and their other conditional moments often cannot be interpreted (p. 965).
  - The spectrogram is the signal's distribution smoothed by the window's: with Rihaczek distributions (eq. 6.29, Ackroyd, Altes), Wigner distributions (eq. 6.30, Mark; Claasen & Mecklenbräuker), or any pair of distributions with φ(−θ, τ)φ(θ, τ) = 1 (eq. 6.31–6.32, p. 965).
- **Ambiguity function** (Section VI-B, p. 966). Woodward's χ(θ, τ) (eq. 6.36) is the characteristic function of the Rihaczek distribution, and the symmetric χ_S (eq. 6.37) that of the Wigner. Cohen calls it a mistaken view that the Wigner is "better" because it is real: characteristic functions are often more revealing, simplify mixed moments, and the ambiguity plane is the effective place to design kernels (Choi–Williams, Nuttall, Flandrin).
- **Filtering and synthesis** (Section VII, p. 966–967). Multiplying a distribution by a time-varying transfer function usually gives a non-representable distribution (no signal produces it). Reasons: (1) distribution-independent, e.g. time- *and* band-limited marginals cannot be a Fourier pair; (2) distribution-dependent, e.g. cutting a silent strip from a Wigner, or multiplying a Gaussian's Wigner by any positive non-Gaussian function. These are peculiarities of the distribution, not physical impossibilities (p. 967). Saleh & Subotic's least-squares synthesis is the pragmatic route; input–output kernels are 2-D Rihaczek and Wigner distributions of the system's impulse response (eq. 7.3–7.8, p. 967).
- **Applications** (Section IX, p. 971–975) fall into three uses (p. 971):
  - seeing more than a spectrogram (speech; Wigner hard to interpret there, Pickover & Cohen);
  - tracking one robust property, usually the IF (Boashash: seismic attenuation and dispersion, ocean microstructure where IF relates to dissipation);
  - using the distribution as a feature map without claiming it is a density (pattern recognition, detection).
  - Dispersive propagation shows as time-shifted, bent copies in the t–f plane (Fig. 10, p. 973–974); muscle sounds show rising IF and spread under Choi–Williams (Fig. 9, p. 972–973).
  - Detection and noise: integrating the Wigner along the IF line is a detection statistic comparable to cross-correlation (Kumar & Carroll); for a chirp in noise the likelihood-ratio detector integrates along all straight lines (Kay & Boudreaux-Bartels); for a sinusoid in white noise the Wigner estimates amplitude and frequency poorly but needs no prior model (Harris & Abu Salem) (p. 974).
  - Truncating an eigen- (singular-value) expansion of the Wigner suppresses noise and keeps local frequency information in echo signals (Marinovic & Smith, p. 974).
  - Stochastic signals: the ensemble-averaged Wigner is the Wigner–Ville *spectrum* (Martin); with φ(θ, 0) = 1 the distribution of a stationary random signal is its power spectrum (Posch) (p. 975).
- **Resolution comparison** (Jones & Parks, p. 977). For a signal of two Gaussian components with different time and frequency centres, the best ability to separate the two centres came from the **spectrogram with an optimally matched window**, ahead of the Wigner and the smoothed Wigner. Jones & Parks' "data-adaptive" STFT varies the Gaussian window at each (t, ω) to maximise the concentration of the locally dominant component (p. 977).
- **Conclusions** (Section X, p. 975–976):
  - The "enigma": the distributions sometimes give very reasonable results (the Wigner's first conditional moment) and sometimes absurd ones (its second), and it is not always obvious which.
  - Lists of axioms for a "best" distribution are incomplete or contain questionable items (Moyal's formula, eq. 5.44; finite support rather than "zero where the signal is zero"; IF = φ′ for all signals).
  - Janssen showed the Wigner has least spread about φ′ only within kernels e^{jaθτ}; Choi–Williams beats it for multicomponent signals (p. 976).
  - The choice of distribution should depend on the signal and application, as window choice does for the spectrogram; signal-dependent kernels (Choi–Williams, Nuttall) are no longer bilinear. Bilinear functionals cannot be positive for all signals (Wigner), and proper joint distributions are in general highly nonlinear functionals of the marginals (p. 976).

## Setup / method
A review and tutorial; there are no experiments. The examples are analytic or numerically evaluated synthetic signals. Organisation:

| Section | Content | Pages |
|---|---|---|
| I | Motivation, marginals, notation (energy normalised to 1, angular frequency, deterministic signals only) | 941–943 |
| II | History (Gabor, Ville, Wigner, Kirkwood, Page, Mark, Claasen–Mecklenbräuker, Boashash); general class eq. 2.4; Fig. 1 example | 943–944 |
| III | Derivations: Page running spectrum; complex energy spectrum; Ville–Moyal characteristic function and operator correspondence; local autocorrelation; pseudo-characteristic functions; positive distributions; Choi–Williams | 944–952 |
| IV | Unified approach: kernel constraints, conditional moments, IF, group delay, spread, inversion, relations between distributions | 952–958 |
| V | Wigner distribution: properties, support, noise propagation, examples, discrete form, smoothing, noise performance | 957–963 |
| VI | Spectrogram and ambiguity function | 962–966 |
| VII | Time–frequency filtering and synthesis | 966–967 |
| VIII | IF and analytic signal; quantum-mechanics analogy (Table 4); uncertainty principle | 968–971 |
| IX–X | Applications; conclusions; additional comments | 971–977 |

**Test signals used in the figures and examples:**

| Signal | Form | Used for | Pages |
|---|---|---|---|
| Switched tones | ω₁ on (0, t₁), silence, ω₂ on (t₂, t₃) | Wigner, Rihaczek, Page compared (Fig. 1) | 944 |
| Finite tone | e^{jω₀t}, 0 ≤ t ≤ T | Page vs Wigner (Fig. 2; eq. 3.8, 5.25) | 945, 960 |
| Two tones | A₁e^{jω₁t} + A₂e^{jω₂t}; ω₁ = 1, ω₂ = 9 | Wigner and Choi–Williams cross terms, σ = 10⁶, 10⁵ (Fig. 3) | 951, 960 |
| Two Gaussian chirps | A_k(α_k/π)^{1/4}exp(−α_kt²/2 + jβ_kt²/2 + jω_kt) | cross terms (Fig. 4; eq. 3.92, 5.26–5.28) | 951, 960 |
| Chirp + sinusoidal FM | A₁e^{jβ₁t²/2 + jω₁t} + A₂e^{jω₂t + jβ₂ sin ω_mt} | IF lines and interference terms (Fig. 5) | 952 |
| Gaussian chirp | (α/π)^{1/4}exp(−αt²/2 + jβt²/2 + jω₀t); β = 0.3, ω₀ = 3, α = 1, 0.5, 0.1 | Wigner concentration on IF (Fig. 7); spectrogram example | 959–960, 963–964 |
| Gaussian chirped window | (a/π)^{1/4}exp(−at²/2 + jbt²/2) | spectrogram of the Gaussian chirp | 963 |

**Dependence on the data.** Every distribution here needs a uniformly sampled, time-resolved signal. The Wigner and its relatives need sampling at twice Nyquist for real signals, or the analytic signal at Nyquist (p. 960, 976–977). Key parameters: the kernel (σ for Choi–Williams), the window shape and length for the spectrogram, and the smoothing widths (α, β) for a smoothed Wigner. The paper treats deterministic signals; stochastic signals need ensemble averaging (Wigner–Ville spectrum, p. 975).

**Modelling side.** There is no flow model. The theoretical apparatus is the operator correspondence borrowed from quantum mechanics, t → 𝒯 = j d/dω, ω → 𝒲 = −j d/dt, with [𝒯, 𝒲] = j (eq. 3.31–3.36, p. 947). Different orderings of the non-commuting operators (Weyl, normal, symmetric, Born–Jordan) give different kernels (eq. 3.44–3.52, p. 947–948). Cohen stresses the analogy is formal only: quantum mechanics is probabilistic and its observables are operators with eigenvalues, whereas a signal is deterministic and |s|² is an intensity (Table 4, p. 969–970).

## Key equations
Transcribed from page images; see the checks below. Angular frequency, ∫|s|²dt = 1, integrals over (−∞, ∞).

- **Spectrum and marginals** (eq. 1.3, 1.5–1.6, p. 942):
  $$S(\omega)=\frac{1}{\sqrt{2\pi}}\int s(t)e^{-j\omega t}\,\mathrm dt,\qquad \int P(t,\omega)\,\mathrm d\omega=|s(t)|^2,\qquad \int P(t,\omega)\,\mathrm dt=|S(\omega)|^2$$
- **General (Cohen) class** (eq. 2.4 = 4.1, p. 943, 952):
  $$P(t,\omega)=\frac{1}{4\pi^2}\iiint e^{-j\theta t-j\tau\omega+j\theta u}\,\phi(\theta,\tau)\,s^*\!\left(u-\tfrac12\tau\right)s\!\left(u+\tfrac12\tau\right)\mathrm du\,\mathrm d\tau\,\mathrm d\theta$$
  In terms of the spectrum (eq. 4.3): same with $e^{j\tau u}$ and $S^*(u+\tfrac12\theta)S(u-\tfrac12\theta)$. Kernel from a distribution (eq. 4.4): $\phi(\theta,\tau)=\iint e^{j\theta t+j\tau\omega}P\,\mathrm dt\,\mathrm d\omega\big/\int e^{j\theta u}s^*(u-\tfrac12\tau)s(u+\tfrac12\tau)\,\mathrm du$.
- **Characteristic function and moments** (eq. 3.27–3.30, p. 946): $M(\theta,\tau)=\langle e^{j\theta t+j\tau\omega}\rangle$, $\langle t^n\omega^m\rangle=\dfrac{1}{j^nj^m}\dfrac{\partial^{n+m}M}{\partial\theta^n\partial\tau^m}\Big|_{0}$; for the class, $M=\phi(\theta,\tau)\int s^*(u-\tfrac12\tau)e^{j\theta u}s(u+\tfrac12\tau)\,\mathrm du$ (eq. 3.58, 3.77).
- **Operators** (eq. 3.31–3.36, p. 947): $\langle g_1(t)\rangle=\int S^*g_1(j\,\mathrm d/\mathrm d\omega)S\,\mathrm d\omega$, $\langle g_2(\omega)\rangle=\int s^*g_2(-j\,\mathrm d/\mathrm dt)s\,\mathrm dt$, $\mathcal{T}\mathcal{W}-\mathcal{W}\mathcal{T}=j$.
- **Local autocorrelation** (eq. 3.62, 3.64, 3.67–3.69, p. 948–949): $P=\frac{1}{2\pi}\int R_t(\tau)e^{-j\tau\omega}\mathrm d\tau$; Wigner: $R_t=s^*(t-\tfrac12\tau)s(t+\tfrac12\tau)$; general: $R_t(\tau)=\frac{1}{2\pi}\int r(u-t,\tau)\,s^*(u-\tfrac12\tau)s(u+\tfrac12\tau)\,\mathrm du$, $r(u,\tau)=\int e^{j\theta u}\phi(\theta,\tau)\,\mathrm d\theta$. Hermitian (and P real) iff $\phi(\theta,\tau)=\phi^*(-\theta,-\tau)$ (eq. 3.71 = 4.15).
- **Kernel constraints** (eq. 4.10, 4.12, 4.14, p. 953): $\phi(\theta,0)=1$ (time marginal), $\phi(0,\tau)=1$ (frequency marginal), $\phi(0,0)=1$ (total energy).
- **Conditional moments** (eq. 4.21–4.24, p. 953–954): $\langle g\rangle=\iint gP\,\mathrm d\omega\,\mathrm dt$, $\langle g\rangle_t=\frac{1}{P_1(t)}\int gP\,\mathrm d\omega$, $P_1(t)=\int P\,\mathrm d\omega$, $\langle\omega\rangle_t=\frac{1}{P_1(t)}\int\omega P\,\mathrm d\omega$.
- **Conditional mean frequency** (eq. 4.25–4.30, p. 954), $s=A(t)e^{j\varphi(t)}$:
  $$\langle\omega\rangle_tP_1(t)=\frac{1}{2\pi}\iint A^2\Big[\phi(\theta,0)\varphi'(u)-j\frac{\partial\phi}{\partial\tau}\Big|_{\tau=0}\Big]e^{j\theta(u-t)}\,\mathrm d\theta\,\mathrm du$$
  $$\text{product kernels: }\langle\omega\rangle_tP_1=\phi(0)A^2\varphi'+2\phi'(0)AA';\qquad \phi(0)=1,\ \phi'(0)=0\ \Rightarrow\ \langle\omega\rangle_t=\varphi'(t)$$
- **Covariance** (eq. 4.31–4.33, p. 954): $\mathrm{Cov}(t\omega)=\langle t\omega\rangle-\langle t\rangle\langle\omega\rangle$, $r=\mathrm{Cov}/(\sigma_t\sigma_\omega)$, $\langle t\omega\rangle=-\partial^2M/\partial\theta\partial\tau|_0=\int t\varphi'(t)A^2\,\mathrm dt$.
- **Second conditional moment and spread** (eq. 4.35–4.40, p. 954–955), product kernels with $\phi(0)=1$, $\phi'(0)=0$:
  $$\langle\omega^2\rangle_t=\tfrac12\big[1+4\phi''(0)\big]\Big(\frac{A'}{A}\Big)^2-\tfrac12\big[1-4\phi''(0)\big]\frac{A''}{A}+\varphi'^2$$
  $$\langle\sigma^2_\omega\rangle_t=\langle\omega^2\rangle_t-\langle\omega\rangle_t^2;\qquad \phi''(0)=\tfrac14\ \Rightarrow\ \langle\sigma^2_\omega\rangle_t=\Big(\frac{A'}{A}\Big)^2=\frac{1}{|s|^2}\Big|\Big[\frac1j\frac{\mathrm d}{\mathrm dt}-\varphi'(t)\Big]s(t)\Big|^2,\quad \langle\omega^2\rangle_t=\Big(\frac{A'}{A}\Big)^2+\varphi'^2$$
  (Checked: (1/j)d/dt(Ae^{jφ}) − φ′Ae^{jφ} = −jA′e^{jφ}, so the middle expression is (A′/A)².)
- **Group delay** (eq. 4.42, 4.45–4.47, p. 955): $S=|S|e^{j\psi(\omega)}$; $s_{\omega'}(t)\approx s[t+\psi'(\omega')]e^{j\psi(\omega')+j\omega't}$; $t_g=-\psi'(\omega)$; $\langle t\rangle_\omega=-\psi'(\omega)$ if $\phi(0,\tau)=1$, $\partial\phi/\partial\theta|_{\theta=0}=0$.
- **Wigner** (eq. 5.2–5.3, 5.10, p. 958):
  $$W(t,\omega)=\frac{1}{2\pi}\int s^*\!\left(t-\tfrac12\tau\right)e^{-j\tau\omega}s\!\left(t+\tfrac12\tau\right)\mathrm d\tau=\frac{1}{2\pi}\int S^*\!\left(\omega+\tfrac12\theta\right)e^{-jt\theta}S\!\left(\omega-\tfrac12\theta\right)\mathrm d\theta$$
  $$\langle\sigma^2_\omega\rangle_t^{W}=\tfrac12\Big(\frac{A'}{A}\Big)^2-\tfrac12\frac{A''}{A}\quad(\text{can be negative})$$
- **Wigner examples** (eq. 5.16, 5.19, 5.23, p. 959–960):
  $$W_{\text{chirp}}=\frac1\pi e^{-\alpha t^2-(\omega-\beta t-\omega_0)^2/\alpha},\qquad \sigma_t^2=\frac{1}{2\alpha},\quad\sigma_\omega^2=\frac{\alpha^2+\beta^2}{2\alpha},\quad\mathrm{Cov}=\frac{\beta}{2\alpha}$$
  $$W_{\text{2 tones}}=A_1^2\delta(\omega-\omega_1)+A_2^2\delta(\omega-\omega_2)+2A_1A_2\,\delta\!\big[\omega-\tfrac12(\omega_1+\omega_2)\big]\cos(\omega_2-\omega_1)t$$
- **Choi–Williams** (eq. 3.85–3.87, 3.89–3.91, p. 950–951):
  $$\phi_{CW}=e^{-\theta^2\tau^2/\sigma},\qquad P_{CW}=\frac{1}{4\pi^{3/2}}\iint\frac{1}{\sqrt{\tau^2/\sigma}}\exp\!\Big[-\frac{(u-t)^2}{4\tau^2/\sigma}-j\tau\omega\Big]s^*\!\left(u-\tfrac12\tau\right)s\!\left(u+\tfrac12\tau\right)\mathrm du\,\mathrm d\tau$$
  $$P_{CW}^{\text{2 tones}}=A_1^2\delta(\omega-\omega_1)+A_2^2\delta(\omega-\omega_2)+2A_1A_2\cos(\omega_2-\omega_1)t\;\eta,\quad \eta=\sqrt{\frac{\sigma}{4\pi(\omega_1-\omega_2)^2}}\exp\Big\{-\frac{[\omega-\tfrac12(\omega_1+\omega_2)]^2}{4(\omega_1-\omega_2)^2/\sigma}\Big\}$$
  and $\eta\to\delta[\omega-\tfrac12(\omega_1+\omega_2)]$ as σ → ∞.
- **Discrete Wigner** (eq. 5.29–5.31, p. 960): $W(t,\omega)=\frac T\pi\sum_k s^*(t-kT)e^{-2j\omega kT}s(t+kT)$, $T\le\pi/2\omega_{\max}$ i.e. $\omega_s\ge4\omega_{\max}$; periodic in ω with period π (for T = 1).
- **Smoothing** (eq. 5.34–5.38, p. 961): $W_S=\iint L(t-t',\omega-\omega')W(t',\omega')\,\mathrm dt'\mathrm d\omega'$; Gaussian $L=\frac{1}{\alpha\beta}e^{-t^2/\alpha-\omega^2/\beta}$ gives $W_S\ge0$ if $\alpha\beta\ge1$; Nuttall's $L=2\sqrt Q\,e^{-t^2/\alpha-\omega^2/\beta-2c\omega t}$, $Q=1/\alpha\beta-c^2$, positive if $\alpha\beta\ge1/(1+c^2)$.
- **Moyal's formula** (eq. 5.44, p. 962): $\big|\int s_1s_2^*\,\mathrm dt\big|^2=2\pi\iint W_1W_2\,\mathrm dt\,\mathrm d\omega$; holds for any kernel with $|\phi|^2=1$.
- **Spectrogram** (eq. 6.1–6.2, 6.5–6.7, 6.17, p. 962–964):
  $$S_t(\omega)=\frac{1}{\sqrt{2\pi}}\int e^{-j\omega t'}s(t')h(t'-t)\,\mathrm dt',\qquad P_S=|S_t(\omega)|^2,\qquad \phi_S(\theta,\tau)=\int h^*\!\left(t-\tfrac12\tau\right)h\!\left(t+\tfrac12\tau\right)e^{-j\theta t}\mathrm dt$$
  $$\langle\omega\rangle_t=\frac{1}{P_1(t)}\int A^2(t')A_h^2(t'-t)\big[\varphi'(t')+\varphi_h'(t'-t)\big]\mathrm dt',\qquad P_1(t)=\int A^2(t')A_h^2(t'-t)\,\mathrm dt'$$
- **Spectrogram of a Gaussian chirp** (α, β) with a Gaussian chirped window (a, b) (eq. 6.9–6.16, p. 964):
  $$P_S=\frac{P_1(t)}{\sqrt{2\pi\sigma_2^2}}e^{-[\omega-\langle\omega\rangle_t]^2/2\sigma_2^2},\qquad \langle\omega\rangle_t=\frac{a\beta-b\alpha}{\alpha+a}\,t,\qquad \sigma_2^2=\frac12(\alpha+a)+\frac12\frac{(\beta+b)^2}{\alpha+a}$$
  $$\langle t\rangle_\omega=\frac{a\beta-b\alpha}{\alpha(a^2+b^2)+a(\alpha^2+\beta^2)}\,\omega,\qquad \sigma_1^2=\frac12\,\frac{(\alpha+a)^2+(\beta+b)^2}{\alpha(a^2+b^2)+a(\alpha^2+\beta^2)}$$
  with $P_1(t)=\sqrt{a\alpha/\pi(\alpha+a)}\,e^{-[a\alpha/(\alpha+a)]t^2}$ (eq. 6.11). Re-derived with sympy for this note: ⟨ω⟩_t, σ₂², ⟨t⟩_ω and σ₁² all agree with the page.
- **Ambiguity function** (eq. 6.36–6.37, p. 966): $\chi(\theta,\tau)=\int s^*(t-\tau)s(t)e^{j\theta t}\mathrm dt$ (characteristic function of Rihaczek); $\chi_S=\int s^*(t-\tfrac12\tau)e^{j\theta t}s(t+\tfrac12\tau)\mathrm dt$ (of Wigner).
- **Analytic signal** (eq. 8.1–8.4, p. 968): $z(t)=\frac{2}{\sqrt{2\pi}}\int_0^\infty S(\omega)e^{j\omega t}\mathrm d\omega=s(t)+\frac j\pi\int\frac{s(t')}{t-t'}\mathrm dt'$.
- **Mandel's moments and the bandwidth equation** (eq. 8.5–8.9, p. 968–969):
  $$\langle\varphi'\rangle_T=\int\varphi'(t)|s(t)|^2\mathrm dt=\int\omega|S|^2\mathrm d\omega=\langle\omega\rangle_S,\qquad \langle\omega^2\rangle_S=\langle\varphi'^2\rangle_T+\int A'^2(t)\,\mathrm dt$$
  $$\sigma_S^2=\sigma_T^2+\int A'^2(t)\,\mathrm dt$$
  where σ_T² is the |s|²-weighted variance of φ′(t) about ⟨ω⟩.
- **Uncertainty principle** (eq. 8.10–8.13, p. 970–971):
  $$(\Delta t)^2=\int(t-\bar t)^2|s|^2\mathrm dt,\quad(\Delta\omega)^2=\int(\omega-\bar\omega)^2|S|^2\mathrm d\omega,\quad \Delta t\,\Delta\omega\ge\tfrac12;\qquad (\Delta t)^2(\Delta\omega)^2=\iint(t-\bar t)^2P\cdot\iint(\omega-\bar\omega)^2P=\text{marginals only}$$

> Check against the PDF (page images; the scan is clean but these are hand transcriptions):
> - **Eq. 3.16** (p. 945) prints Re s*(t)e^{jωt}S*(ω). Since S_t⁻ + S_t⁺ = S, eq. 3.15 implies S(ω), not S*(ω); the asterisk looks like a typo (the real part is the same as Re of the conjugate form in Table 1).
> - **Eq. 3.67** (p. 949) prints the prefactor 1/2π, but its conjugate, eq. 3.70, prints 1/4π². One of the two is a typo.
> - **Eq. 4.25** (p. 954) prints A²(t) inside the u-integral; consistency with the u-dependence suggests A²(u). It does not affect eq. 4.27–4.30.
> - **Eq. 4.36** (p. 954) prints ∫(ω − ⟨ω⟩_t)²P dω without the 1/P₁(t) of eq. 4.24; equal only where P₁ = 1. Read it as normalised.
> - **Eq. 5.19** (p. 959) prints σ_ω = √[(σ² + β²)/2α]; the Wigner of eq. 5.16 integrates to σ_ω² = (α² + β²)/2α (checked for this note), so "σ²" is a typo for α².
> - **Eq. 5.35** (p. 961): the prefactor 1/(αβ) does not normalise the Gaussian to unit area (that would be 1/π√(αβ)). The positivity condition αβ ≥ 1 (eq. 5.36) does not depend on it.
> - **Soto & Claverie** (p. 961): "⟨ω²⟩_S = ⟨ω²⟩_W + ½α" as printed; with L of eq. 5.35 the frequency smoothing variance is β/2 and the time one α/2, so α here may be a typo or a different convention.
> - **Eq. 5.43** (p. 962) prints W₂(t′ − t, ω); for s = ∫s₁(t′)s₂(t − t′)dt′ one expects W₂(t − t′, ω).
> - **Eq. 5.27** (p. 960), the two-chirp cross term with complex γ₁ = α₁ + jβ₁, γ₂ = α₂ − jβ₂, and **eq. 6.12** (P₂(ω)) were read from small type; verify before use.
> - **Conventions:** S(ω) uses e^{−jωt} and 1/√2π; energy normalised to 1; angular frequency throughout, so ΔtΔω ≥ ½ ⇔ ΔtΔf ≥ 1/4π. The kernel is φ(θ, τ) and the signal phase φ(t) (written ϕ/φ in the paper; here φ(θ, τ) and φ(t) are told apart by their arguments).

## Data tables
**Table 1: some distributions and their kernels** (p. 952):

| Distribution | Kernel φ(θ, τ) | P(t, ω) |
|---|---|---|
| Wigner, Ville | 1 | (1/2π)∫e^{−jτω}s*(t − ½τ)s(t + ½τ)dτ |
| Margenau–Hill | cos ½θτ | Re (1/√2π) s(t)e^{−jtω}S*(ω) |
| Kirkwood, Rihaczek | e^{jθτ/2} | (1/√2π) s(t)e^{−jtω}S*(ω) |
| sinc (Cohen 1966, Born–Jordan rule) | sin(aθτ)/(aθτ) | (1/4πa)∫(1/τ)e^{−jωτ}∫_{t−aτ}^{t+aτ}s*(u − ½τ)s(u + ½τ)du dτ |
| Page | e^{jθ\|τ\|/2} | ∂/∂t \|(1/√2π)∫_{−∞}^{t}s(t′)e^{−jωt′}dt′\|² |
| Choi–Williams | e^{−θ²τ²/σ} | (1/4π^{3/2})∬√(σ/τ²) e^{−σ(u−t)²/4τ² − jτω}s*(u − ½τ)s(u + ½τ)du dτ |
| Spectrogram | ∫h*(u − ½τ)e^{−jθu}h(u + ½τ)du | \|(1/√2π)∫e^{−jωτ}s(τ)h(τ − t)dτ\|² |

**Table 3: spectrogram against distributions that satisfy the marginals and eq. 4.28, 4.47b** (p. 965); s = A e^{jφ}, h = A_h e^{jφ_h}, S = B e^{jψ}, H = B_H e^{jψ_H}:

| Property | Spectrogram | "Distribution" |
|---|---|---|
| Total energy | 1 | 1 |
| Time marginal | ∫A²(t′)A_h²(t′ − t)dt′ | A²(t) |
| Frequency marginal | ∫B²(ω′)B_H²(ω − ω′)dω′ | B²(ω) |
| Mean time | ⟨t⟩_s − ⟨t⟩_h | ⟨t⟩_s |
| Mean frequency | ⟨ω⟩_s + ⟨ω⟩_h | ⟨ω⟩_s |
| Mean time at given ω | −(1/P₂)∫B²(ω′)B_H²(ω − ω′)[ψ′(ω′) − ψ′_H(ω − ω′)]dω′ | −ψ′(ω) |
| Mean frequency at given t | (1/P₁)∫A²(t′)A_h²(t′ − t)[φ′(t′) + φ′_h(t′ − t)]dt′ | φ′(t) |

**Local spread about the IF for a Gaussian chirp** (assembled for this note from eq. 4.39, 5.10, 5.16 and 6.15; A = e^{−αt²/2}, chirp rate β):

| Distribution | Conditional mean ⟨ω⟩_t | Conditional variance ⟨σ²_ω⟩_t |
|---|---|---|
| Wigner (eq. 5.10, 5.16) | ω₀ + βt (exact) | α/2 (independent of β) |
| φ″(0) = ¼ kernels (eq. 4.39) | ω₀ + βt (exact) | (A′/A)² = α²t² |
| Spectrogram, Gaussian window a, b (eq. 6.13, 6.15) | (aβ − bα)t/(α + a) | ½(α + a) + ½(β + b)²/(α + a) |

*(Arithmetic for this note, not in the paper.)* For an unchirped window (b = 0), σ₂² is smallest at α + a = |β| when |β| > α, giving σ₂² = |β|: a fixed window cannot localise a frequency moving at rate β more finely than √|β|. With a window chirped to match (b = −β), ⟨ω⟩_t = βt exactly and σ₂² = ½(α + a).

## Figures worth remembering
- **Fig. 1 (p. 944):** Wigner, Rihaczek (real part) and Page distributions of a tone, a silence and a second tone. All three satisfy the marginals and are mutually invertible, yet each puts energy where none is expected: the Wigner in the silence, the Rihaczek at ω₂ during the first tone, the Page at frequencies already seen.
- **Fig. 2 (p. 945):** Page vs Wigner for a finite tone. Identical up to T/2; the Wigner falls back to zero at T, the Page keeps growing at ω₀.
- **Fig. 3 (p. 951):** two tones, ω₁ = 1 and ω₂ = 9: Wigner with the oscillating midpoint term, and Choi–Williams with σ = 10⁶ and 10⁵ shrinking it. All satisfy the marginals.
- **Fig. 4 (p. 951):** two Gaussian chirps; the Wigner's middle hump vs the clean Choi–Williams.
- **Fig. 5 (p. 952):** chirp plus sinusoidal FM; both distributions follow the two IF laws, with interference terms only in the Wigner.
- **Fig. 6 (p. 959):** noise confined to a short stretch of signal appears in the Wigner over a longer interval (nonlocality).
- **Fig. 7 (p. 960):** Wigner of a Gaussian chirp (β = 0.3, ω₀ = 3) for α = 1, 0.5, 0.1, collapsing onto the IF line as α → 0.
- **Fig. 8 (p. 972):** Wigner contours of a simulated ultrasonic transducer output for three designs (Marinovic & Smith).
- **Fig. 9 (p. 972):** Choi–Williams distributions of muscle sounds (isometric contraction, twitch), with rising IF and spread.
- **Fig. 10 (p. 973):** schematic of reflected seismic arrivals: delayed copies, bent by dispersion and cut off at high frequency by attenuation.

## Notation
- s(t) = A(t)e^{jφ(t)}: signal; S(ω) = B(ω)e^{jψ(ω)}: spectrum (eq. 1.3); z(t): analytic signal (eq. 8.4). Energy normalised to 1; angular frequency.
- P(t, ω): joint distribution; P₁(t), P₂(ω): its time and frequency marginals (should equal |s|², |S|²).
- φ(θ, τ): kernel; φ(x), x = θτ: product kernel; M(θ, τ): characteristic function; χ, χ_S: ambiguity and symmetric ambiguity functions; R_t(τ): local autocorrelation; r(u, τ): its weighting (eq. 3.69).
- W: Wigner; e(t, ω): Rihaczek (complex energy spectrum); P⁻, P⁺: Page past/future running spectra; P_CW, σ: Choi–Williams and its parameter; P_S, h(t), H(ω), a, b: spectrogram, window and Gaussian window parameters.
- ⟨·⟩: global average; ⟨·⟩_t, ⟨·⟩_ω: conditional (local) averages; ⟨σ²_ω⟩_t: conditional spread (instantaneous bandwidth); t_g = −ψ′(ω): group delay; Cov, r: covariance and correlation coefficient.
- ⟨·⟩_T, ⟨·⟩_S: time average weighted by |s|², spectral average weighted by |S|²; σ_T, σ_S: their spreads (eq. 8.5–8.9).
- Δt, Δω: duration and bandwidth (standard deviations of the marginals, eq. 8.10).
- 𝒯 = j d/dω, 𝒲 = −j d/dt: time and frequency operators.

## Relevance to this project
This is the source of the definitions the library uses for the instantaneous-frequency step of the CLAUDE.md pipeline (SPOD → reconstruction → Hilbert POD), and the main reference behind [Library_of_Shock_Lab/Research_Questions/hpod-instantaneous-frequency-uncertainty](../Research_Questions/hpod-instantaneous-frequency-uncertainty.md). It pairs with [Boashash 1992](boashash-1992-instantaneous-frequency-fundamentals.md), which restates the same conditional-moment results in Hz and adds the conditions on the analytic signal.

- **What HPOD's instantaneous frequency is, in Cohen's terms.**
  - [Raiola 2025](raiola-2025-hilbert-pod.md) defines f = (1/2π) d arg ψ_j/dt for HPOD temporal modes (eq. 2.20–2.21 there). By eq. 4.30 this is the conditional mean frequency of ψ_j(t) in every distribution with φ(θ, 0) = 1 and ∂φ/∂τ|₀ = 0, the Wigner and Choi–Williams included, and it is the IF in Cohen's sense only because ψ_j is analytic (Raiola proves HPOD_t modes have only positive frequencies). *(My synthesis of the two papers.)*
  - The same pipeline also yields the conditional spread for free: with |ψ_j(t)| = A(t), the positive instantaneous bandwidth of eq. 4.39 is |A′/A|. A plot of f(t) ± |A′/A|/2π is the Cohen–Lee "error bar" on the IF, and its time average squared is the envelope term in the bandwidth equation 8.9. *(Suggestion; Boashash's note makes the same one.)*
  - The bandwidth equation (eq. 8.9) gives a direct check on a reconstruction: the RMS bandwidth of the reconstructed signal must equal the energy-weighted RMS IF excursion plus the RMS envelope rate. For a band of width B it bounds both, σ_T² + ∫A′²dt ≤ (B/2)², since a spectrum confined to width B has standard deviation at most B/2. *(My derivation from eq. 8.9.)*
- **The trade-off lives in the analysis window, not in the signal.** Cohen's reading of the uncertainty principle (p. 970–971) separates two things the library sometimes runs together: the principle bounds the global spreads of |s|² and |S|², whereas the resolution limit of a spectrogram, wavelet scalogram or SPOD spectrogram comes from the *window's* time and frequency widths (p. 963), because each is the signal's distribution smoothed by the window's (eq. 6.29–6.30). [Torrence 1998](torrence-1998-practical-guide-wavelet-analysis.md)'s Morlet trade-off and the n_fft choice for SPOD are this window trade-off. Distributions that keep the marginals avoid the window and give φ′ exactly, but pay with cross terms, negative values, uninterpretable second moments and nonlocality (p. 959, 965, 975). In the pipeline the narrow-banding step (SPOD reconstruction band, [Sieber 2016](sieber-2016-spectral-proper-orthogonal-decomposition.md)'s N_f, [Horel 1984](horel-1984-complex-principal-component-analysis.md)'s W(ω)) plays the window's role. *(My synthesis.)*
- **Two coexisting tones.** The Wigner (eq. 5.23) and Choi–Williams (eq. 3.89–3.90) distributions of two tones put the beat 2A₁A₂cos Δωt into a cross term at the mean frequency. Feeding these into the conditional mean (eq. 4.24) reproduces the phase derivative of the two-tone sum, [A₁²ω₁ + A₂²ω₂ + A₁A₂(ω₁ + ω₂)cos Δωt]/[A₁² + A₂² + 2A₁A₂cos Δωt], identically for both kernels (η in eq. 3.90 has unit area). So for A1/A2 staging or twin-jet SS/SA tones inside one reconstruction band, the IF trace is a single curve that ripples at the beat frequency. It cannot show two ridges; a TFD (with cross-term control) or separate reconstruction bands can. *(My algebra from the paper's equations.)* This agrees with [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md)'s close-tone failure (p. 45–47), [Rilling 2008](rilling-2008-one-or-two-frequencies-emd-two-tones.md)'s EMD limit and [Daubechies 2011](daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md)'s one-component-per-passband condition, and with the beat test of [Wong 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md).
- **Switching versus coexistence.** Cohen's practical point that "there will always be interference terms" between positive-frequency components (p. 969) means that any quadratic TFD used to judge whether A1 and A2 coexist ([Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md)'s SPOD spectrogram JPDF, p. 11) must either use a spectrogram-type window (no cross terms, but window-limited resolution) or a reduced-interference kernel. Choi–Williams with σ chosen from the tone spacing (cross-term width √2|Δω|/√σ, eq. 3.90) is a candidate for microphone or HPOD-coefficient signals. *(Suggestion.)*
- **Tracking a moving frequency.** For a linear chirp, an unchirped Gaussian window cannot localise the frequency more finely than √|β| (Data tables above, from eq. 6.15), while a window chirped to match recovers the IF exactly. A staging transition or an NPR ramp with drifting tone frequency is the case where a fixed reconstruction band blurs the IF, and where Jones & Parks' data-adaptive windows (p. 977) or the Wigner's chirp concentration (eq. 5.17) help. *(My inference.)*
- **Noise.** Nuttall's result that the Wigner variance in white noise is infinite unless out-of-band frequencies are filtered (p. 962–963), and Harris & Abu Salem's poor amplitude and frequency estimates in noise (p. 974), are further reasons to narrow-band before any IF or TFD step on schlieren pixels or microphones. HPOD's spatial averaging (POD) raises the SNR before the Hilbert step. *(My inference for the pipeline.)*
- **Which data each method suits.** All the distributions here, and IF itself, need uniformly sampled, time-resolved signals: microphones, time-resolved schlieren pixels or POD/SPOD/HPOD temporal coefficients, LES probes. The discrete Wigner needs twice-Nyquist sampling of a real signal, or the analytic signal (p. 960, 976–977); Huang's five samples per period (p. 89 there) is the IF-side counterpart. None of this applies to non-time-resolved PIV; there, only the spatial analogue (local wavenumber from HPOD_x, [Raiola 2025](raiola-2025-hilbert-pod.md); [Davey 2025](davey-2025-hpod-sphere-wake.md)) is available, with the same conditional-moment reading in (x, k).
- **Modelling side.** No flow model. The operator correspondence (eq. 3.31–3.52) is a mathematical device; Cohen warns against carrying quantum results into signal analysis (p. 969–970). For comparisons with stability or resolvent predictions, the useful quantities are the conditional mean frequency (IF) and group delay as functions of time and frequency, which are well defined in this class, rather than local spreads, which are not unique.
- **Facility attribution:** none; no Shock Lab group data.
- **Follow-up candidates for `/add-paper`:** Lee & Cohen 1989 (ref. [123], IF standard deviation and multicomponent signals; source of the φ″(0) = ¼ result); Choi & Williams 1989 (ref. [51]); Mandel 1974 (ref. [131]); Vakman 1976 (ref. [191]); Claasen & Mecklenbräuker 1980 Parts I–III (refs [54]–[56]); Jones & Parks (refs [207]–[209]) on adaptive windows and resolution; Cohen 1995, *Time–Frequency Analysis* (book). Gabor 1946, Bedrosian 1963 and Nuttall 1966 are now indexed: [Gabor 1946](gabor-1946-theory-of-communication.md), [Bedrosian 1963](bedrosian-1963-product-theorem-hilbert-transforms.md), [Nuttall & Bedrosian 1966](nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md).
