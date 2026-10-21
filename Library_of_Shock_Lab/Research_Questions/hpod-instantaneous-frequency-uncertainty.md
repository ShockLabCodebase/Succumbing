---
question: "How does the instantaneous frequency measurement output from Hilbert POD appear to beat the tradeoff of time resolution vs frequency resolution inherent in time-frequency analyses?"
slug: hpod-instantaneous-frequency-uncertainty
status: answered
created: 2026-10-21
updated: 2026-10-21
topics: ["time-frequency-methods", "modal-decomposition"]
notes: ["gabor-1946-theory-of-communication", "raiola-2025-hilbert-pod", "kriegseis-2021-hilbert-transform-revisited-hpod", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "huang-2009-on-instantaneous-frequency", "boashash-1992-instantaneous-frequency-fundamentals", "cohen-1989-time-frequency-distributions-review", "bedrosian-1963-product-theorem-hilbert-transforms", "nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals", "rife-1974-single-tone-parameter-estimation-discrete-time", "daubechies-2011-synchrosqueezed-wavelet-transforms-emd", "rilling-2008-one-or-two-frequencies-emd-two-tones", "horel-1984-complex-principal-component-analysis", "sieber-2016-spectral-proper-orthogonal-decomposition", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "torrence-1998-practical-guide-wavelet-analysis", "bell-2021-intermittent-modal-coupling-screeching-twin-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "davey-2025-hpod-sphere-wake", "oberleithner-2011-swirling-jet-vortex-breakdown-stability"]
papers_requested: []
---
# How does HPOD's instantaneous frequency appear to beat the time–frequency trade-off?

## Short answer

It doesn't beat it. Instantaneous frequency (IF) is a different and smaller quantity than what the trade-off limits, it is only meaningful under a model assumption, and the trade-off comes back in the step that makes that assumption true. This is now supported by the signal-processing literature, not just by my reasoning.

- **What the uncertainty principle limits.** It bounds the spreads of the time and frequency *marginals*, and through them every *windowed* estimate of a time–frequency distribution (spectrogram, CWT, SPOD spectrogram). It does not bound the local spread of a single component at an instant, nor the location of its centre ([Cohen 1989](../notes/cohen-1989-time-frequency-distributions-review.md), eq. 8.10–8.13, p. 970–971; p. 963).
- **What IF is.** IF is the conditional mean frequency at time t: the centroid of every Cohen-class distribution that has the right marginals (Cohen 1989, eq. 4.24–4.30, p. 954; [Boashash 1992](../notes/boashash-1992-instantaneous-frequency-fundamentals.md), eq. 73–75, p. 533). Cohen shows the contrast directly: shrink a spectrogram's window towards a delta and its conditional mean tends to φ′(t) while its spread grows without bound (eq. 6.5–6.7, p. 963). A centroid can be known at every sample. What the trade-off forbids is telling two components apart inside one resolution cell, and a single IF trace never does that. Two tones in one band give one IF: the stronger tone plus a ripple at the beat frequency (Mandel's formula, Boashash 1992 eq. 30, p. 523).
- **Where the trade-off reappears.** IF is meaningful only for one component (Boashash 1992 p. 527, 535; [Huang 2009](../notes/huang-2009-on-instantaneous-frequency.md) p. 185, 224). Getting the data into that form takes a band-pass, an SPOD reconstruction, EMD, Sieber's filter or a synchrosqueezing filter bank, and that step has a bandwidth B. B decides which components are kept apart, and it also caps how fast the IF can move. In RMS form the cap is rigorous: the RMS IF excursion and the RMS envelope rate add in quadrature to at most B/2 (Cohen 1989 eq. 8.9, p. 969; Boashash 1992 eq. 82–83, p. 534). For the rate of modulation, a Carson-type rule of thumb applies (frequency excursion + modulation rate ≲ B/2). The Hilbert transform itself adds only a much looser cap, at the carrier frequency f₀ ([Nuttall & Bedrosian 1966](../notes/nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md), p. 1459). Daubechies, Lu & Wu make the separation rule rigorous: the analysing filter's relative bandwidth must be below the components' relative gap ([Daubechies 2011](../notes/daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md), Theorem 3.3, Lemma 3.6, p. 8–11).
- **What IF genuinely gives: precision.** For one component, the frequency can be estimated far more finely than 1/T. For a stationary tone the Cramér–Rao bound falls as 1/(SNR·T³), and the maximum-likelihood estimator attains it above a threshold ([Rife & Boorstyn 1974](../notes/rife-1974-single-tone-parameter-estimation-discrete-time.md), eq. 17, p. 592; Fig. 4, p. 597). So HPOD's IF can detect an *exclusive switch* between two tones far faster than 1/Δf, but it cannot detect their *coexistence*.

The strongest case for "it really beats it" is Huang et al. 2009. Direct quadrature recovers a ±60% frequency modulation that happens twice per carrier cycle (Fig. 16–20, p. 205–210). But it does so only for a signal already accepted as one component, and the paper concedes that "when we change the decomposition method, the IF will also change" (p. 223). It also concedes that the analytic-signal IF HPOD uses has no proven locality (p. 224). The originators of HPOD say outright that the analytic signal adds no information to the data ([Kriegseis 2021](../notes/kriegseis-2021-hilbert-transform-revisited-hpod.md), p. 1).

One gain is genuine and specific to HPOD. The POD step uses space as a second axis for separating components, and averaging over the field raises the signal-to-noise ratio, and with it precision. For advecting waves, the field-of-view length may stand in for record length; this is my hypothesis and is untested. That moves the trade-off into space–time without abolishing it.

**Confidence:**
- **High** for the principle. It is now backed by primary sources: Gabor (whose bound is on spreads by construction, and who treated centroids as "not data", p. 434), Cohen, Boashash, Bedrosian, Nuttall, Rife & Boorstyn and Daubechies et al.
- **Moderate** for the practical rules of thumb (the Carson-type rate cap, the time resolution of about 1/B, the field-of-view hypothesis). They agree with the theory but have not been benchmarked on flow data.

## The question, framed

**Agreed reading (clarifying questions, 2026-10-21).** Why does HPOD give a frequency value at every time sample, seemingly with no time–frequency trade-off? Is that real, and what actually limits its time and frequency resolution? The answer covers theory and practice, for HPOD in general (Hilbert transform in time, any time-resolved data), not only the SPOD → reconstruction → HPOD pipeline. Classic signal-processing references were sought, and all were obtained and indexed.

**Three quantities that are easily conflated:**
- **Frequency resolution:** the smallest separation at which two *coexisting* components can be told apart.
- **Time resolution:** the shortest interval over which a change can be localised, or two events distinguished.
- **Precision:** how accurately the frequency of a component *known to be alone* can be estimated. This is bounded by noise and model error (Cramér–Rao), not by the uncertainty principle.

**Sub-questions:**
1. What does the uncertainty principle bound, and what does IF measure?
2. When is IF exact, when is it meaningful, and what does it report when it is not?
3. Where does the trade-off go in a practical analysis, and what sets the effective resolution and precision?
4. What does the POD step add?
5. What follows for A1/A2 staging, twin-jet coupling and other resonance problems?

**Competing views:**
- **H1, "it really beats it":** IF is pointwise and not bound by the uncertainty principle (Huang 2009, p. 178).
- **H2, "the trade-off moves into the narrow-banding step".**
- **H3, "a different quantity under a stronger model":** IF trades resolution for a monocomponent assumption and gains precision, not resolution.

The evidence supports H2 and H3 together. They are the same statement seen from two sides. H1 holds only for the pointwise value of a component already isolated, and even then the value depends on how it was isolated.

## Evidence and reasoning

### 1. What the uncertainty principle bounds, and what IF measures

**The bound is on spreads by construction.** In [Gabor 1946](../notes/gabor-1946-theory-of-communication.md), Δt and Δf are √(2π) times the RMS deviations of |ψ|² and |φ|² about their centres. Δt·Δf ≥ ½ (eq. 1.26) follows from the Schwarz inequality applied to the second central moments only (eq. 1.21–1.26, p. 434). Gabor says outright that the centroids "do not count as data" and are references, not data (p. 434). So "the limit is on spreads, not centroids" is Gabor's own framing. His elementary signal, the Gaussian logon, is a worked case (my derivation from eq. 1.27, p. 435): its phase is exactly linear, so its IF is f₀ at every instant with zero spread, yet it sits exactly at the minimum area Δt·Δf = ½, with all of Δf coming from the envelope. A perfectly sharp IF trace and the minimum time–frequency area coexist. Gabor's only comment on IF is that Carson and Fry's instantaneous frequency is useful "for slowly-varying frequencies", but not sufficient where "physical feeling and the Fourier integral theorem are at variance" (footnote, p. 431). He draws an FM tone as a curve that "has to be thick and blurred", in cells whose aspect ratio is "entirely arbitrary" and set by the analysis (Fig. 1.12, p. 438). That is the H2/H3 position, in 1946. He also anticipated the precision/resolution split: the ear discriminates pitch to about 3 Hz with resonators that decay in about 10 ms, which Gabor explains by a mechanism that "locates the centre of the resonance region with a precision increasing with the duration" (p. 443–444). Even so, the measured thresholds never fall below the uncertainty area (p. 442–443).

**The principle constrains marginals and windows.** In Cohen's framework the uncertainty principle bounds only the standard deviations of the two *marginals*, |s(t)|² and |S(ω)|². Any distribution with the right marginals reproduces it, and it says nothing about the joint distribution, about t–ω correlation, or about "measurements" at a given time and frequency (Cohen 1989, eq. 8.10–8.13, p. 970–971). What limits a spectrogram, CWT or SPOD spectrogram is the uncertainty relation of the *analysis window*: a spectrogram is the signal's distribution smoothed by the window's distribution (eq. 6.29–6.30, p. 965). The local spread of one component need not be bounded at all. The Wigner distribution of a linear chirp is a delta on the IF line (eq. 5.17, p. 959). The Cohen–Lee local spread (A′/A)² is zero for a constant-amplitude signal, however fast its IF moves (eq. 4.39, p. 955; Boashash 1992 eq. 81, p. 534). *This corrects my first draft,* which said the principle limits how finely "the distribution of energy" can be resolved. The precise statement is that it limits any **windowed** estimate of the distribution, and hence the separation of components that share a window.

**IF is the conditional mean frequency.** IF = φ′(t) equals ⟨ω⟩_t for every Cohen-class kernel with φ(θ, 0) = 1 and ∂φ/∂τ|₀ = 0 (Cohen 1989, eq. 4.24–4.30, p. 954; Boashash 1992, eq. 73–75, p. 533). It is the first frequency moment of the Wigner–Ville distribution (Ville; Boashash eq. 22, p. 522), and its |z|²-weighted time average is the spectral mean (Boashash eq. 19–20, p. 522; Cohen eq. 8.7, p. 968). Two qualifications apply:
- The identity holds for *any* complex signal. It becomes "the IF" only through the choice of the analytic signal, and φ′ of an analytic signal can still be negative or lie outside the signal's band (Mandel; Cohen 1989 p. 968–969).
- Cohen's spectrogram limit is the cleanest statement of the centroid–spread distinction: as the window tends to a delta, the conditional mean tends to φ′(t) and the conditional spread to infinity (eq. 6.5–6.7, p. 963).

**What is lost is multimodality, not spread.** *Also corrected from the first draft:* HPOD does not throw away the instantaneous spread. Its envelope |ψ(t)| supplies (A′/A), which is the local spread for kernels with a positive spread (Cohen eq. 4.39, p. 955). IF and envelope together carry the first two conditional moments. What a single IF trace cannot carry is **two separate frequencies at one instant** (Cohen 1989 p. 960, 969; section 2 below). The analogy with localisation microscopy stands (my reasoning): the centre of one isolated spot can be found far more finely than the Abbe limit, but two spots inside one blur cannot be resolved.

**When does IF mean something physically?** Boashash restricts the theory to a bandwidth–time product BT > 10. For small BT, IF and group delay remain well defined but have no physical meaning (p. 526–527; Fig. 6a). "One cannot construct a pure frequency within a short duration" (p. 528). He also offers a practical diagnostic: where f_i(t) and the inverse of the group delay τ_g⁻¹(f) disagree, the IF law is not resolvable at that scale (Properties 2–3, p. 527).

### 2. Exactness, meaningfulness, and what IF reports for two components

The primary sources separate two conditions that my first draft ran together.

**Exactness: does the analytic signal return a(t) and θ(t)?**
- Bedrosian: H[r(t)cos ω₀t] = r(t) sin ω₀t when the spectrum of r lies below ω₀ ([Bedrosian 1963](../notes/bedrosian-1963-product-theorem-hilbert-transforms.md), p. 868–869). This is sufficient, for AM on a constant carrier.
- Nuttall: for joint AM and FM, the analytic signal equals r e^{i(2πf₀t+φ)} **if and only if** the spectrum of the complex modulation r e^{iφ} vanishes below −f₀. Otherwise the error energy is exactly 2∫_{−∞}^{−f₀}|F|² df. "It is *not* necessary that x(t) be narrow band" (Nuttall & Bedrosian 1966, p. 1459).
- Huang 2009 separates the two cases in the same way. The Bedrosian failure (AM contamination) is cured by normalising the amplitude. The Nuttall failure depends on the structure of the phase function and survives normalisation (eq. 24–28, p. 189–190, 197–198, 206–207).

**The Hilbert step's own time-resolution floor.** The indexing agents tested these conditions numerically (f₀ = 200 Hz, modulation at 20 Hz). Their checks, labelled as their own in the notes:
- AM with f_m ≤ f₀ is returned exactly.
- For sinusoidal FM the IF error is 0.07%, 1.5%, 11% and 52% of f₀ at (Δf + f_m)/f₀ = 0.6, 0.8, 1.0 and 1.3, and the IF goes negative at 1.3.
- A Gaussian amplitude burst is returned almost exactly down to σ_t ≈ 0.5 carrier periods.

So the Hilbert step alone limits IF to changes no faster than about **one carrier period**, with a Carson-type cap Δf + f_m ≲ f₀ (Nuttall note). Huang 2009's Duffing test is consistent with this. At a modulation rate of 2f_c the normalised-Hilbert IF captures only about 63–73% of the true swing, against at least 94% for rates ≤ f_c (Fig. 17, p. 208; the agent's reproduction).

**Meaningfulness: is the signal one component?** IF has a clear interpretation only for a monocomponent signal:
- the α + sin t pathology ([Huang 1998](../notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), p. 12–14);
- Boashash's Definition 1 (a single-valued, invertible IF law, p. 527) and Definition 2 (a non-unique, application-dependent multicomponent split, p. 527);
- Huang 2009: every IF method, direct quadrature included, works "only for monocomponent functions" (p. 185, 202, 224).

Exactness cannot detect a second component. A sum of two tones has a one-sided modulation spectrum, so its analytic signal is exact (Bedrosian and Nuttall notes). The narrow-banding step exists to secure meaningfulness, not exactness. *My inference from Boashash:* deciding that a component is "mono" is itself a time–frequency judgement ("energy spread about one frequency or clearly about two", p. 535), and it inherits the resolution of whatever distribution is used to make it.

**Two components in one band.** For z = a₁e^{iω₁t} + a₂e^{iω₂t}, with r = a₂/a₁ and Δω = ω₂ − ω₁:

θ′(t) = ω₁ + Δω (r² + r cos Δωt) / (1 + r² + 2r cos Δωt).

This is now confirmed from primary sources:
- It is Mandel's eq. 30 in Boashash (p. 523), rewritten about f₁.
- It is the conditional mean of Cohen's two-tone Wigner and Choi–Williams distributions (eq. 5.23 with 4.24, p. 960; eq. 3.89–3.90, p. 951; checked algebraically by the Cohen note). The ripple at Δf is literally the oscillating cross term entering the conditional mean.
- The |z|²-weighted mean is (a₁²ω₁ + a₂²ω₂)/(a₁² + a₂²) (Cohen eq. 8.7).
- The *unweighted* time mean equals the frequency of the **stronger** tone. This is my derivation, re-derived independently in the Boashash note; it is not stated in any source.
- The excursions all lie on the stronger tone's side of the midpoint (Mandel, quoted in Boashash p. 523).
- **Negative IF, refined:** it occurs only when the weaker tone has the higher frequency and r·ω_weak > ω_strong, i.e. when the weaker tone has the larger slope amplitude (derived in the Rilling note from this formula). For close tones that threshold approaches r = 1. This is Huang's "riding wave".
- At r = 1 the IF is the midpoint frequency, with π phase jumps at the envelope zeros (Boashash eq. 38–41, p. 524–525; Huang 2009 eq. 44, p. 220).

Huang 2009 itself abandons separating close tones. It describes them as one AM–FM component and calls the 3000-sifting split of Huang 1998 "unnecessary and unsatisfactory" (p. 219–222).

**Huang 1998's two-tone failure, corrected.** My first draft attributed Huang's failure on cos(2πt/30) + cos(2πt/34) to the Fourier limit (Δf·T ≈ 2). That is wrong for EMD. [Rilling & Flandrin 2008](../notes/rilling-2008-one-or-two-frequencies-emd-two-tones.md) show that EMD acts as a linear filter with a **relative** cutoff f_c(n) ≈ [1 + (ln 2/n)^{1/4}]⁻¹: about 0.66 after 10 siftings and 0.89 after 3000 (eq. 8–9, p. 11–12). The record length does not enter (p. 4–5). Huang's pair has a frequency ratio of 0.88, which needs about 2200 siftings for half separation (the indexing agent's calculation). That matches "up to 3000". The Δf·T ≈ 2 point explains only why Huang's *Fourier and wavelet* marginal spectra also failed. The lesson is unchanged, and sharper: the narrow-banding step sets the resolution, and EMD's step is coarse and constant-Q.

**Intrawave modulation is a representation choice.** All three sources state this directly:
- Huang 2009: the IF and Fourier views of harmonic distortion "are representing the same data from two different viewpoints", and between the AM–FM and two-tone descriptions "they both are" correct (p. 221–223).
- Boashash cites Shekel, Priestley and Mandel to the same effect (p. 523).
- Daubechies et al. give a signal that is equally three tones or one AM tone, with "no universal solution" (eq. 1.3, p. 4).

Intrawave IF therefore carries no information beyond the harmonic amplitudes and phases. Its claim is to interpretability, not resolution. Rilling & Flandrin add a caution for Hilbert–Huang work on tonal signals: when the low tone dominates the curvature, EMD's sampling at the extrema can *create* a spurious component with its own IF (eq. 12, p. 13–15).

### 3. Where the trade-off goes in practice

**The narrow-banding step is a time–frequency analysis, now with rigorous backing.** Daubechies et al. show that synchrosqueezing's frequency ω(a, b) is the analytic-signal IF of the band-passed signal, averaged over the wavelet (eq. 2.11, 2.14, p. 7). Synchrosqueezing is therefore a filter bank followed by Hilbert IF: the formal analogue of SPOD reconstruction → HPOD. Its guarantee needs at most one component per passband (Lemma 3.6, p. 11), i.e. a filter half-width Δ < d/(1 + d), where d = (f₂ − f₁)/(f₂ + f₁) is the relative gap (Theorem 3.3, p. 8–9). Reassignment moves energy along frequency only, never in time (p. 6), so the IF's time resolution stays that of the wavelet. The examples in the library agree:
- Sieber's filter limits the rate of frequency change ([Sieber 2016](../notes/sieber-2016-spectral-proper-orthogonal-decomposition.md), p. 8–9).
- A single-bin reconstruction changes only from block to block ([Nekkanti 2021](../notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md) note).
- Bell's 200 Hz band has a time scale of about 5 ms ([Bell 2021](../notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), p. 10–16).
- Raiola reads HPOD modulation from STFTs ([Raiola 2025](../notes/raiola-2025-hilbert-pod.md), p. 19).

**The cap, in two forms.**
- **Rigorous (RMS):** σ_B² = σ_IF² + ⟨(A′/A)²⟩. The squared RMS bandwidth equals the energy-weighted RMS IF excursion squared plus the RMS envelope rate squared (Cohen 1989 eq. 8.9, p. 969; Boashash 1992 eq. 82–83, p. 534). A signal confined to a band of width B has σ_B ≤ B/2, so σ_IF² + ⟨(A′/A)²⟩ ≤ (B/2)² (derivation in the Cohen note). The FM *rate* does not appear in RMS terms.
- **Rule of thumb (support width):** Carson's rule, Δf_dev + f_m ≲ B/2, so that the FM sidebands at ±f_m fit inside the band. It is supported in kind by Daubechies et al. A narrower wavelet forces slower admissible AM and FM through its time moments (Estimates 3.5–3.7, p. 10–11), but their constants are unoptimised (p. 14). It remains labelled as my rule of thumb.
- **Fixed window, changing frequency:** a fixed Gaussian window cannot localise a frequency changing at rate β more finely than about √|β|, because σ² ≥ |β| (derived in the Cohen note from eq. 6.13–6.15, p. 964). This is Rihaczek's relaxation-time cell along the IF law (Boashash eq. 77–78, p. 533–534). A window chirped to match removes the penalty. For HPOD, a fixed reconstruction band acts as a fixed window.

Since any tone reconstruction has B/2 < f₀, the filter's cap always binds before the Hilbert step's own cap (Nuttall note).

**Locality is borrowed from the band.** IF is "a local concept", yet the Hilbert transform needs "the entire history of the signal" (Vakman, quoted in Boashash p. 536 and Cohen p. 968). Vakman showed that only an "active band" around the IF is needed. *My inference:* the information behind each IF value is set by that band, so successive IF samples are independent only about every 1/B. This is also why end trimming is needed (Horel p. 1662; Raiola p. 16). Gabor's counting supports this. A band B over a time T carries 2BT real data (p. 430–431). In his lattice expansion, a frequency strip of height B carries one complex coefficient, one amplitude–phase pair, per 1/B (eq. 1.29, p. 435–436). So an analytic signal in band B has about one independent phase value, and so one independent IF value, per 1/B; IF values in between are interpolated (the Gabor note's derivation). Gabor also gives the constant: the shortest signal through an ideal band of width B has an effective duration of √(π/2)/B ≈ 1.25/B and lasts appreciably about 2/B (eq. 1.37, p. 437–438).

**Noise sets a further window, now quantified.** For one stationary tone in white noise:
- **The bound:** var(f̂) = 6/[(2π)²(P_s/N₀)T³] (Rife & Boorstyn eq. 17, p. 592, rearranged in the note). The maximum-likelihood (periodogram-peak) estimator reaches it.
- **The threshold:** the bound holds only above a bin SNR Nρ of about 9–14 dB; below it, outliers dominate (eq. 60, Fig. 3–4, p. 596–597).
- **Raw per-sample Hilbert IF** is the N = 1 case. Phase slips, and IF spikes occur whenever the noise exceeds the tone amplitude (the note's inference from the Rayleigh noise model).
- **The fix:** IF must be smoothed until Nρ clears the threshold, and that smoothing length is a time resolution. The best smoother is a least-squares line fit to the unwrapped phase, centred in the window. A plain average of dθ/dt is about N/6 worse in variance (derived in the Rife note).
- **Model error:** Daubechies et al.'s noise-free precision bound, ε^{1/3}, is set by how slowly the component is modulated, so model error is a second limit on precision alongside noise (Theorem 3.3, p. 9).

**What can be very fine: precision.** A worked example from the Rife & Boorstyn note: a 10 kHz tone sampled at 100 kHz, at a per-sample SNR of 20 dB.

| Record | Resolution 1/T | Cramér–Rao σ_f (complex; real ≈ ×√2) |
|---|---|---|
| 10 periods (1 ms) | 1000 Hz (10%) | 3.9 Hz (0.04%) |
| 100 periods (10 ms) | 100 Hz (1%) | 0.12 Hz |

The record buys precision 250–800 times finer than its resolution. That is how a smooth HPOD IF trace can legitimately quote St to four figures, and it is not resolution.

**Summary of what limits each quantity:**

| Quantity | Spectrogram / CWT / SPOD spectrogram | HPOD instantaneous frequency |
|---|---|---|
| Frequency resolution (separating coexisting components) | window length T | narrow-banding bandwidth B (relative gap d > relative bandwidth, Daubechies), plus spatial separation by POD; IF itself resolves nothing |
| Time resolution (localising a change) | window length T | max(about 1/B, the noise-smoothing length, about 1 carrier period (Nuttall), at least 5 samples per period (Huang 1998 p. 89)); for advecting waves possibly about L/c (section 4, hypothesis) |
| Frequency precision for an isolated component | Cramér–Rao, attainable by interpolating the peak | Cramér–Rao for the smoothing length, plus model error; can be far below B |
| Output when two tones share the band | two peaks if T ≳ 1/Δf | the stronger tone plus a ripple at Δf; spikes as r → 1; negative only if r·ω_weak > ω_strong |
| Assumption | local stationarity over T | one slowly modulated component per mode at each instant (BT > 10, Boashash) |

### 4. What the POD step adds

**Spatial separation.** POD separates components by spatial structure. Horel's travelling and standing waves split 73/27% ([Horel 1984](../notes/horel-1984-complex-principal-component-analysis.md), p. 1667). Wong's symmetry split separated SS from SA coupling ([Wong 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 9, 16–20). Kriegseis et al. merged POD pairs into one complex mode in three flows, but only with ordered snapshots (p. 1–2). Two limits apply: near-degenerate eigenvalues make the split unstable, and orthogonality can create modes that are not in the data (Horel, p. 1667–1672).

**Higher SNR, and so better precision.** Wong replaced noisy pixel scalograms with a POD coefficient (p. 9). Oberleithner preferred POD phase to a point-sensor Hilbert phase ([Oberleithner 2011](../notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md), p. 22–23, via the modal-decomposition topic page). In Cramér–Rao terms, coherent averaging over M independent points raises the effective SNR by up to M (my inference).

**Space for time** (hypothesis, my reasoning). For ω = ck, HPOD reduces to SPOD with frequency tied to wavenumber (Raiola eq. 2.42–2.55, p. 11–13). A field of view of length L then resolves Δf ≈ c/L, so a snapshot holds about one transit time L/c of history. Two papers are consistent with this:
- Sieber's best filter spanned about one convective transit (p. 17).
- Horel's pulses, short compared with the transit time, were poorly captured (p. 1668–1670).

Rife & Boorstyn note that their bound is Brennan's phased-array angle bound (p. 592). The same mathematics therefore bounds a wavenumber estimated across an aperture, so the analogy holds for *precision*. The Bedrosian theorem in x implies that a wavepacket must span about one wavelength for HPOD_x's envelope and local wavenumber to be exact (Bedrosian note, my inference). The hypothesis fails for flows with more than one phase speed, which is the resonant case (Raiola, p. 13).

**HPOD on raw broadband data.** Kriegseis et al. applied the Hilbert transform to raw data, but all their test flows were dominated by one periodic process, and they never computed an IF (p. 1–2). Raiola applied HPOD_t to an unfiltered LES and read the modulation with STFTs (p. 19–21). Nothing in the library shows that d arg ψ_j/dt of a broadband turbulent HPOD mode is monocomponent. Explicit narrow-banding first remains the safer route.

### 5. Consequences for the lab's problems

- **A1/A2 staging (tones about 10% apart).** Daubechies' condition gives d ≈ 0.048, so the filter half-width must be under 0.045. That filter lasts about 11–22 periods (the Daubechies note's arithmetic), which agrees with the earlier estimate of 10–20 screech cycles. It is much finer than the roughly 78-cycle window of [Mazharmanesh 2026](../notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) (p. 11). **Exclusivity test:** reconstruct a band holding *both* tones. If the IF jumps between two plateaus while the amplitude stays up, the tones are switching. If the IF stays at the stronger tone with a ripple at Δf, they coexist. The ripple is the Cohen cross term (section 2). EMD will always merge A1 and A2 (frequency ratio about 0.91; Rilling note), so use SPOD reconstruction.
- **Twin-jet SS/SA (0.3–0.6% apart).** Separating them by frequency needs a filter of about 330–670 periods (Daubechies note), comparable with the reported switching interval of 10²–10³ cycles. The Rife & Boorstyn note's example shows the other side: if the states are *exclusive*, a 10-period window separates 30 Hz at 5–8 σ_f, so switching is detectable quickly. Coexistence is not. Separate the states by symmetry (space) first, as Wong did.
- **Bell's interruptions** (5–15 cycles, inside a 2% band) are below the band's resolution and need re-examination (already queued on the topic page).
- **[Jeun 2024](../notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md)'s Hilbert phase on apparently unfiltered pressure** (p. 8) is exact by Nuttall's criterion, but it is not guaranteed to be meaningful in Boashash's sense.

## Conflicts in the literature

- **Is IF bound by the uncertainty principle?**
  - **For H1:** Huang 2009 argues that a frequency defined as a phase derivative, computed without an integral transform, is not bound (p. 178). Wave kinematics require a differentiable ω (eq. 1–3, p. 178–179), and direct quadrature recovers sub-period frequency modulation (p. 205–210).
  - **Against, or neutral:** Cohen 1989 places the principle on marginals and windows, so a pointwise centroid neither violates nor escapes it (p. 970–971). Boashash restricts IF's *meaning* to BT > 10 (p. 526–527).
  - **Resolution:** the two sides do not actually conflict. Huang 2009 concedes the monocomponent requirement and the dependence on the decomposition (p. 185, 223). Cohen concedes that pointwise φ′ exists (p. 954). The real dispute is over what "frequency" should mean, not over resolving power. *H1 in its strongest form applies to direct quadrature on an accepted IMF, not to the analytic-signal IF HPOD uses,* whose locality Huang 2009 says cannot be guaranteed (p. 224).
- **Intrawave modulation vs harmonics.** Huang 1998 (p. 15–16, 33–41) and Rilling & Flandrin (p. 8, 14, 18) favour one IMF with intrawave modulation. Bicoherence and BMD treat the harmonics as triads (topic page). Huang 2009 itself, Boashash (p. 523) and Daubechies et al. (p. 4) all treat the two as equivalent representations. On this question, it is not a resolution issue.
- **Why Huang 1998's two tones failed.** My first draft blamed the Fourier limit; Rilling & Flandrin show it is EMD's relative cutoff (p. 11–12). Resolved.
- **Narrow-band first, or let POD do it?** Horel, Bell, Daubechies (formally), Boashash and Huang 2009 narrow-band, or decompose into IMFs, before reading IF. Kriegseis, Raiola and Jeun did not narrow-band, but none of them read IF values from broadband turbulence. For IF, the narrow-band-first side has the theory behind it.

## Uncertainties and unknowns

| Point | Status | Basis | What would resolve it |
|---|---|---|---|
| IF is the conditional mean frequency (a centroid) and does not violate the uncertainty principle, which bounds marginals and windows | established | Cohen 1989 p. 954, 963, 970–971; Boashash 1992 p. 522, 533 | — |
| IF is exact iff the complex modulation is one-sided (Nuttall); it is meaningful only for one component | established | Bedrosian 1963; Nuttall & Bedrosian 1966; Boashash p. 527; Huang 2009 p. 185, 224; Huang 1998 p. 12–15 | — |
| Two tones in one band: IF = stronger tone + ripple at Δf (formula) | established | Boashash eq. 30, p. 523; Cohen eq. 5.23, 4.24 | — |
| Unweighted mean IF = stronger tone; negative only if r·ω_weak > ω_strong | supported (derivation, checked twice) | this file; Boashash and Rilling notes | synthetic test |
| The narrow-banding bandwidth sets separation (relative gap > relative bandwidth) | established (sufficient condition) | Daubechies 2011 Theorem 3.3, Lemma 3.6 | — |
| RMS cap: σ_IF² + ⟨(A′/A)²⟩ ≤ (B/2)² | established | Cohen eq. 8.9; Boashash eq. 82–83 | — |
| Rate cap: Δf_dev + f_m ≲ B/2 (Carson) | supported (rule of thumb) | Carson's rule; Daubechies Estimates 3.5–3.7 (in kind); Nuttall gives the f₀ analogue exactly | synthetic benchmark |
| The Hilbert step's own floor is about one carrier period | established | Nuttall & Bedrosian 1966 p. 1459, with the note's numerical checks; Huang 2009 Fig. 17 | — |
| IF precision ≪ 1/T for one component (SNR-limited above a threshold) | established (stationary tone) | Rife & Boorstyn eq. 17, 60; Fig. 3–4 | tracking a moving IF: Boashash 1992 Part 2 |
| HPOD can detect exclusive switching faster than 1/Δf but not coexistence | supported | Rife note worked example; two-tone formula | test on A1/A2 schlieren |
| Direct quadrature recovers sub-period FM of an accepted IMF (strongest H1) | supported (noise-free) | Huang 2009 p. 205–210 | test with noise |
| POD adds separation via space and precision via SNR | supported | Horel; Wong; Kriegseis; Oberleithner | HPOD vs point Hilbert on one record |
| Field of view substitutes for record length (≈ L/c) | speculative (precision analogy supported) | Raiola p. 11–13; Sieber p. 17; Horel p. 1668–1670; Rife p. 592 | crop study on the Towne LES |
| HPOD_t of broadband turbulence gives monocomponent modes | doubtful | Raiola p. 19–21; Kriegseis p. 1–2 | apply Boashash's IF/group-delay test to HPOD modes |
| Time resolution of HPOD IF for a real switch | unknown | no benchmark | synthetic benchmark |

## What would settle it

1. **Synthetic switch benchmark.** Two advecting wavepackets 10% and 0.5% apart, with prescribed switches, coexistence intervals and noise. Pass them through SPOD → a band-B reconstruction → HPOD_t, and alongside it STFT, CWT (Morlet and bump) and synchrosqueezing. Measure switch-detection delay, IF bias and IF variance against B, SNR and field-of-view length. Since the true r and φ are known, Nuttall's error gives the Hilbert step's exact floor, so the narrow-banding and noise contributions can be separated (Nuttall note). Boashash's stepped sweeps (Fig. 7, p. 528, 530) and Rihaczek cells (p. 533–534) are ready-made templates. This also answers the topic page's open question "how fast can a switch be resolved?".
2. **Two-tone IF exclusivity test on A1/A2 schlieren:** plateaus against ripple, compared with Mazharmanesh's JPDF test.
3. **Monocomponent check on HPOD modes:** compare f_i(t) with the inverse group delay τ_g⁻¹(f) for HPOD modes of the Towne M 0.9 LES, with and without narrow-banding (Boashash Properties 2–3).
4. **Space for time:** crop the LES domain to different L and track the IF bandwidth of the leading HPOD mode.
5. **PyFR staging LES:** records are short, so separate components spatially (azimuthal and streamwise wavenumber) before the Hilbert step, and fit the phase over windows that clear the Rife threshold.

## Papers requested

| Paper | DOI / source | Why it matters | Status |
|---|---|---|---|
| Boashash 1992, IF Part 1 | 10.1109/5.135376 | definitions, centroid, BT > 10, monocomponent | processed 2026-10-21 |
| Cohen 1989, TFD review | 10.1109/5.30749 | uncertainty principle on marginals; IF as conditional mean; bandwidth equation | processed 2026-10-21 |
| Huang et al. 2009, On instantaneous frequency | 10.1142/S1793536909000096 | strongest case for H1; Bedrosian/Nuttall in practice | processed 2026-10-21 |
| Bedrosian 1963; Nuttall & Bedrosian 1966 | 10.1109/PROC.1963.2308; 10.1109/PROC.1966.5138 | exact conditions; one-carrier-period floor | processed 2026-10-21 |
| Rife & Boorstyn 1974 | 10.1109/TIT.1974.1055282 | Cramér–Rao bound; precision vs resolution | processed 2026-10-21 |
| Gabor 1946 (all three parts) | 10.1049/ji-3-2.1946.0074 | the uncertainty relation on spreads; one datum per 1/B; Gabor's own view of IF | processed 2026-10-21 |
| Daubechies, Lu & Wu 2011 | 10.1016/j.acha.2010.08.002 (arXiv:0912.2437) | rigorous separation condition; filter bank + IF | processed 2026-10-21 |
| Rilling & Flandrin 2008 | 10.1109/TSP.2007.906771 | EMD's relative cutoff; explains Huang 1998's failure | processed 2026-10-21 |
| Kriegseis, Kinzel & Nobach 2021 | 10.18409/ispiv.v1i1.113 | first HPOD paper; "adds no information" | processed 2026-10-21 |
| *Optional:* Boashash 1992 Part 2 (IF estimators) | 10.1109/5.135378 | IF estimation accuracy for time-varying IF | not requested yet |

## Sources

Topic pages: [time-frequency-methods](../topics/time-frequency-methods.md) and its queue; [modal-decomposition](../topics/modal-decomposition.md).

Notes:
- Signal theory: [Bedrosian 1963](../notes/bedrosian-1963-product-theorem-hilbert-transforms.md), [Nuttall & Bedrosian 1966](../notes/nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md), [Rife & Boorstyn 1974](../notes/rife-1974-single-tone-parameter-estimation-discrete-time.md), [Cohen 1989](../notes/cohen-1989-time-frequency-distributions-review.md), [Boashash 1992](../notes/boashash-1992-instantaneous-frequency-fundamentals.md), [Huang et al. 1998](../notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), [Rilling & Flandrin 2008](../notes/rilling-2008-one-or-two-frequencies-emd-two-tones.md), [Huang et al. 2009](../notes/huang-2009-on-instantaneous-frequency.md), [Daubechies, Lu & Wu 2011](../notes/daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md), [Torrence & Compo 1998](../notes/torrence-1998-practical-guide-wavelet-analysis.md)
- HPOD and modal methods: [Horel 1984](../notes/horel-1984-complex-principal-component-analysis.md), [Sieber et al. 2016](../notes/sieber-2016-spectral-proper-orthogonal-decomposition.md), [Kriegseis et al. 2021](../notes/kriegseis-2021-hilbert-transform-revisited-hpod.md), [Nekkanti & Schmidt 2021](../notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md), [Raiola & Kriegseis 2025](../notes/raiola-2025-hilbert-pod.md) (published in Phys. Rev. Fluids 2026, doi 10.1103/bhlm-qwfh; the note describes the preprint), [Davey et al. 2025](../notes/davey-2025-hpod-sphere-wake.md), [Oberleithner et al. 2011](../notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md)
- Applications: [Bell et al. 2021](../notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), [Wong et al. 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), [Jeun et al. 2024](../notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [Mazharmanesh et al. 2026](../notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md)

Not in the library (DOIs checked on Crossref 2026-10-21): Mandel 1974 (10.1119/1.1987876); Auger & Flandrin 1995, reassignment (10.1109/78.382394); Loughlin & Tacer 1996 (10.1121/1.416061); Picinbono 1997 (10.1109/78.558469). Carson's rule is standard communications theory.

## Log
- 2026-10-21: created. Clarifying questions settled the scope. The answer was written from the library plus labelled background theory and my own derivations. Six paywalled papers were requested and three open-access ones offered.
- 2026-10-21: continued. Indexed the three open-access papers (Kriegseis 2021, Rilling & Flandrin 2008, Daubechies 2011) and the six papers (seven PDFs) the user fetched (Gabor 1946, Boashash 1992, Cohen 1989, Huang 2009, Bedrosian 1963, Nuttall 1966, Rife & Boorstyn 1974). All requested papers are now in the library. **What changed:**
  - Background claims now have primary sources: the centroid identity, the two-tone formula, Bedrosian/Nuttall and the Cramér–Rao bound. "IF is a centroid", "two tones → stronger tone + ripple" and "precision ≪ 1/T" moved to *established*.
  - **Corrections:**
    - The uncertainty principle bounds marginals and windows, not the local spread of a component (Cohen).
    - HPOD keeps the local spread through its envelope; what it loses is multimodality.
    - Exactness (Bedrosian/Nuttall) and meaningfulness (one component) are separate conditions.
    - Huang 1998's two-tone failure is EMD's relative cutoff, not the Fourier limit (Rilling & Flandrin).
    - Negative IF needs r·ω_weak > ω_strong, not just r → 1.
  - **Additions:**
    - the RMS form of the cap (Cohen eq. 8.9);
    - the Hilbert step's one-carrier-period floor (Nuttall);
    - Daubechies' rigorous separation condition;
    - Rife's worked precision example and SNR threshold (switching detectable, coexistence not);
    - Huang 2009's strongest case for H1 and its concessions;
    - Boashash's BT > 10 and IF/group-delay test.
  - The overall view (H2 + H3) is unchanged and now firmer.
  - Queued for topic pages: `time-frequency-methods` (this question's entry, replaced). Queued for notes: see `notes_to_update.md` (huang-1998 entry corrected; raiola-2025, sieber-2016 kept).
