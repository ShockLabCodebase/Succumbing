---
question: "How does the instantaneous frequency measurement output from Hilbert POD appear to beat the tradeoff of time resolution vs frequency resolution inherent in time-frequency analyses?"
slug: hpod-instantaneous-frequency-uncertainty
status: answered
created: 2026-10-21
updated: 2026-10-23
topics: ["time-frequency-methods", "modal-decomposition"]
notes: ["gabor-1946-theory-of-communication", "raiola-2025-hilbert-pod", "kriegseis-2021-hilbert-transform-revisited-hpod", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "huang-2009-on-instantaneous-frequency", "boashash-1992-instantaneous-frequency-fundamentals", "cohen-1989-time-frequency-distributions-review", "bedrosian-1963-product-theorem-hilbert-transforms", "nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals", "rife-1974-single-tone-parameter-estimation-discrete-time", "daubechies-2011-synchrosqueezed-wavelet-transforms-emd", "rilling-2008-one-or-two-frequencies-emd-two-tones", "horel-1984-complex-principal-component-analysis", "sieber-2016-spectral-proper-orthogonal-decomposition", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "torrence-1998-practical-guide-wavelet-analysis", "bell-2021-intermittent-modal-coupling-screeching-twin-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "davey-2025-hpod-sphere-wake", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2022-database-reduced-complexity-modeling"]
papers_requested: []
---
# How does HPOD's instantaneous frequency appear to beat the time–frequency trade-off?

## Short answer

It doesn't beat it. Instantaneous frequency (IF) is a different and smaller quantity than what the trade-off limits, it is only meaningful under a model assumption, and the trade-off comes back in the step that makes that assumption true. This is now supported by the signal-processing literature, not just by my reasoning.

- **What the uncertainty principle limits.** It bounds the spreads of the time and frequency *marginals*, and through them every *windowed* estimate of a time–frequency distribution (spectrogram, CWT, SPOD spectrogram). It does not bound the local spread of a single component at an instant, nor the location of its centre ([Cohen 1989](../Notes/cohen-1989-time-frequency-distributions-review.md), eq. 8.10–8.13, p. 970–971; p. 963).
- **What IF is.** IF is the conditional mean frequency at time t: the centroid of every Cohen-class distribution that has the right marginals (Cohen 1989, eq. 4.24–4.30, p. 954; [Boashash 1992](../Notes/boashash-1992-instantaneous-frequency-fundamentals.md), eq. 73–75, p. 533). Cohen shows the contrast directly: shrink a spectrogram's window towards a delta and its conditional mean tends to φ′(t) while its spread grows without bound (eq. 6.5–6.7, p. 963). A centroid can be known at every sample. What the trade-off forbids is telling two components apart inside one resolution cell, and a single IF trace never does that. Two tones in one band give one IF: the stronger tone plus a ripple at the beat frequency (Mandel's formula, Boashash 1992 eq. 30, p. 523).
- **Where the trade-off reappears.** IF is meaningful only for one component (Boashash 1992 p. 527, 535; [Huang 2009](../Notes/huang-2009-on-instantaneous-frequency.md) p. 185, 224). Getting the data into that form takes a band-pass, an SPOD reconstruction, EMD, Sieber's filter or a synchrosqueezing filter bank, and that step has a bandwidth B. B decides which components are kept apart, and it also caps how fast the IF can move. In RMS form the cap is rigorous: the RMS IF excursion and the RMS envelope rate add in quadrature to at most B/2 (Cohen 1989 eq. 8.9, p. 969; Boashash 1992 eq. 82–83, p. 534). For the rate of modulation, a Carson-type rule of thumb applies (frequency excursion + modulation rate ≲ B/2). The Hilbert transform itself adds only a much looser cap, at the carrier frequency f₀ ([Nuttall & Bedrosian 1966](../Notes/nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md), p. 1459). Daubechies, Lu & Wu make the separation rule rigorous: the analysing filter's relative bandwidth must be below the components' relative gap ([Daubechies 2011](../Notes/daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md), Theorem 3.3, Lemma 3.6, p. 8–11).
- **What IF genuinely gives: precision.** For one component, the frequency can be estimated far more finely than 1/T. For a stationary tone the Cramér–Rao bound falls as 1/(SNR·T³), and the maximum-likelihood estimator attains it above a threshold ([Rife & Boorstyn 1974](../Notes/rife-1974-single-tone-parameter-estimation-discrete-time.md), eq. 17, p. 592; Fig. 4, p. 597). So HPOD's IF can detect an *exclusive switch* between two tones far faster than 1/Δf, but it cannot detect their *coexistence*.
- **The lab's synthetic benchmark bears this out** (test T1, `Codebase/HPOD_Switch_Benchmark/`; section 3). Tracking each tone in its own band B, a switch is smeared over about (0.4–1)/B. Keeping the tones apart, though, needs B ≲ 2Δf, so this route never resolves dwells much shorter than about 1/Δf: the trade-off, back in force. One wide band holding both tones follows *exclusive* switches with dwells of 0.375/Δf and 10–90% widths of about 0.05/Δf, when 1/Δf spans many carrier periods (tones 0.5% apart); with tones 10% apart it is limited to about three or four carrier periods, which is set mainly by the benchmark's own 2-period ramps. *Coexistence* appears only as Mandel's ripple, whose measured size (0.52–0.59 Δf) matches the predicted r·Δf = 0.6 Δf, and the IF never reports the weaker tone. Field-averaged HPOD reaches 0.15–0.7 times the single-probe Cramér–Rao bound at 0–10 dB SNR, With tones 5×10⁻³ f₀ apart, the IF spread was 10⁻⁶–10⁻⁵ f₀: precision 500–5000 times finer than the resolution. The benchmark also found a pipeline artefact. The group's block-wise inverse SPOD adds an SNR-independent IF floor, and most of it goes away when the band is reconstructed by convolution with the SPOD modes, the route Nekkanti & Schmidt recommend for time-continuous coefficients.

The strongest case for "it really beats it" is Huang et al. 2009. Direct quadrature recovers a ±60% frequency modulation that happens twice per carrier cycle (Fig. 16–20, p. 205–210). But it does so only for a signal already accepted as one component, and the paper concedes that "when we change the decomposition method, the IF will also change" (p. 223). It also concedes that the analytic-signal IF HPOD uses has no proven locality (p. 224). The originators of HPOD say outright that the analytic signal adds no information to the data ([Kriegseis 2021](../Notes/kriegseis-2021-hilbert-transform-revisited-hpod.md), p. 1).

One gain is genuine and specific to HPOD. The POD step uses space as a second axis for separating components, and averaging over the field raises the signal-to-noise ratio, and with it precision; the benchmark now shows the precision gain directly. For advecting waves, the field-of-view length may stand in for record length; this is my hypothesis, and the benchmark could not test it (the packets' envelope limited the aperture). That moves the trade-off into space–time without abolishing it.

**What HPOD adds when the band comes from `tcoeffs`** (section 4; my reasoning, with a first check in T8):
- **One bin, one mode: nothing.** The convolution coefficient a_l(f, t) already gives instantaneous amplitude |a| and IF = f_bin + (1/2π)·d(arg a)/dt, with the spatial SNR gain of the projection. HPOD hands back the same mode and coefficient.
- **A band of several bins or modes: one coherent trace per structure.** Each bin's SPOD mode has an arbitrary phase and a shape that changes with frequency, so coefficients can't simply be summed across bins. HPOD finds the spatial projection that holds the most energy in the band. That gives one amplitude and IF trace that stays continuous as the frequency moves between bins, which is what tracking drift, FM or a switch inside one band needs. It can also split structures of different shape within the band.
- **The Hilbert step itself adds nothing.** A reconstruction from the positive-frequency coefficients is already analytic, so plain POD of it equals HPOD_t (T8 quick check: identical to about 10⁻⁶).
- **Resolution and precision are not HPOD's.** Resolution is set by B and n_fft; most of the precision gain comes from the spatial projection, which `tcoeffs` already does.
- **In practice:** for a steady single tone, read `a_1(f_peak, t)` directly (with the phase-sign fix to the group's `tcoeffs`). Use HPOD, or POD of the one-sided reconstruction, when the frequency crosses bins or a band holds two tones or several important modes.

**Confidence:**
- **High** for the principle. It is now backed by primary sources: Gabor (whose bound is on spreads by construction, and who treated centroids as "not data", p. 434), Cohen, Boashash, Bedrosian, Nuttall, Rife & Boorstyn and Daubechies et al.
- **Moderate to high** for the time resolution of about 1/B, the switching-versus-coexistence distinction and the precision gain. The benchmark confirms them, but on synthetic, non-dispersive waves in white noise, not yet on flow data (T3).
- **Moderate** for the Carson-type rate cap (untested, T5) and **low** for the field-of-view hypothesis (untested, T2).

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

**The bound is on spreads by construction.** In [Gabor 1946](../Notes/gabor-1946-theory-of-communication.md), Δt and Δf are √(2π) times the RMS deviations of |ψ|² and |φ|² about their centres. Δt·Δf ≥ ½ (eq. 1.26) follows from the Schwarz inequality applied to the second central moments only (eq. 1.21–1.26, p. 434). Gabor says outright that the centroids "do not count as data" and are references, not data (p. 434). So "the limit is on spreads, not centroids" is Gabor's own framing. His elementary signal, the Gaussian logon, is a worked case (my derivation from eq. 1.27, p. 435): its phase is exactly linear, so its IF is f₀ at every instant with zero spread, yet it sits exactly at the minimum area Δt·Δf = ½, with all of Δf coming from the envelope. A perfectly sharp IF trace and the minimum time–frequency area coexist. Gabor's only comment on IF is that Carson and Fry's instantaneous frequency is useful "for slowly-varying frequencies", but not sufficient where "physical feeling and the Fourier integral theorem are at variance" (footnote, p. 431). He draws an FM tone as a curve that "has to be thick and blurred", in cells whose aspect ratio is "entirely arbitrary" and set by the analysis (Fig. 1.12, p. 438). That is the H2/H3 position, in 1946. He also anticipated the precision/resolution split: the ear discriminates pitch to about 3 Hz with resonators that decay in about 10 ms, which Gabor explains by a mechanism that "locates the centre of the resonance region with a precision increasing with the duration" (p. 443–444). Even so, the measured thresholds never fall below the uncertainty area (p. 442–443).

**The principle constrains marginals and windows.** In Cohen's framework the uncertainty principle bounds only the standard deviations of the two *marginals*, |s(t)|² and |S(ω)|². Any distribution with the right marginals reproduces it, and it says nothing about the joint distribution, about t–ω correlation, or about "measurements" at a given time and frequency (Cohen 1989, eq. 8.10–8.13, p. 970–971). What limits a spectrogram, CWT or SPOD spectrogram is the uncertainty relation of the *analysis window*: a spectrogram is the signal's distribution smoothed by the window's distribution (eq. 6.29–6.30, p. 965). The local spread of one component need not be bounded at all. The Wigner distribution of a linear chirp is a delta on the IF line (eq. 5.17, p. 959). The Cohen–Lee local spread (A′/A)² is zero for a constant-amplitude signal, however fast its IF moves (eq. 4.39, p. 955; Boashash 1992 eq. 81, p. 534). *This corrects my first draft,* which said the principle limits how finely "the distribution of energy" can be resolved. The precise statement is that it limits any **windowed** estimate of the distribution, and hence the separation of components that share a window.

**IF is the conditional mean frequency.** IF = φ′(t) equals ⟨ω⟩_t for every Cohen-class kernel with φ(θ, 0) = 1 and ∂φ/∂τ|₀ = 0 (Cohen 1989, eq. 4.24–4.30, p. 954; Boashash 1992, eq. 73–75, p. 533). It is the first frequency moment of the Wigner–Ville distribution (Ville; Boashash eq. 22, p. 522), and its |z|²-weighted time average is the spectral mean (Boashash eq. 19–20, p. 522; Cohen eq. 8.7, p. 968). Two qualifications apply:
- The identity holds for *any* complex signal. It becomes "the IF" only through the choice of the analytic signal, and φ′ of an analytic signal can still be negative or lie outside the signal's band (Mandel; Cohen 1989 p. 968–969).
- Cohen's spectrogram limit is the cleanest statement of the centroid–spread distinction: as the window tends to a delta, the conditional mean tends to φ′(t) and the conditional spread to infinity (eq. 6.5–6.7, p. 963).

**What is lost is multimodality, not spread.** *Also corrected from the first draft:* HPOD does not throw away the instantaneous spread. Its envelope |ψ(t)| supplies (A′/A), which is the local spread for kernels with a positive spread (Cohen eq. 4.39, p. 955). IF and envelope together carry the first two conditional moments. What a single IF trace cannot carry is **two separate frequencies at one instant** (Cohen 1989 p. 960, 969; section 2 below). The analogy with localisation microscopy stands (my reasoning): the centre of one isolated spot can be found far more finely than the Abbe limit, but two spots inside one blur cannot be resolved.

**When does IF mean something physically?** Boashash restricts the theory to a bandwidth–time product BT > 10. For small BT, IF and group delay remain well defined but have no physical meaning (p. 526–527; Fig. 6a). "One cannot construct a pure frequency within a short duration" (p. 528). He also offers a practical diagnostic: where f_i(t) and the inverse of the group delay τ_g⁻¹(f) disagree, the IF law is not resolvable at that scale (Properties 2–3, p. 527).

### 2. Exactness, meaningfulness, and what IF reports for two components

The primary sources separate two conditions that my first draft ran together.

**Exactness: does the analytic signal return a(t) and θ(t)?**
- Bedrosian: H[r(t)cos ω₀t] = r(t) sin ω₀t when the spectrum of r lies below ω₀ ([Bedrosian 1963](../Notes/bedrosian-1963-product-theorem-hilbert-transforms.md), p. 868–869). This is sufficient, for AM on a constant carrier.
- Nuttall: for joint AM and FM, the analytic signal equals r e^{i(2πf₀t+φ)} **if and only if** the spectrum of the complex modulation r e^{iφ} vanishes below −f₀. Otherwise the error energy is exactly 2∫_{−∞}^{−f₀}|F|² df. "It is *not* necessary that x(t) be narrow band" (Nuttall & Bedrosian 1966, p. 1459).
- Huang 2009 separates the two cases in the same way. The Bedrosian failure (AM contamination) is cured by normalising the amplitude. The Nuttall failure depends on the structure of the phase function and survives normalisation (eq. 24–28, p. 189–190, 197–198, 206–207).

**The Hilbert step's own time-resolution floor.** The indexing agents tested these conditions numerically (f₀ = 200 Hz, modulation at 20 Hz). Their checks, labelled as their own in the notes:
- AM with f_m ≤ f₀ is returned exactly.
- For sinusoidal FM the IF error is 0.07%, 1.5%, 11% and 52% of f₀ at (Δf + f_m)/f₀ = 0.6, 0.8, 1.0 and 1.3, and the IF goes negative at 1.3.
- A Gaussian amplitude burst is returned almost exactly down to σ_t ≈ 0.5 carrier periods.

So the Hilbert step alone limits IF to changes no faster than about **one carrier period**, with a Carson-type cap Δf + f_m ≲ f₀ (Nuttall note). Huang 2009's Duffing test is consistent with this. At a modulation rate of 2f_c the normalised-Hilbert IF captures only about 63–73% of the true swing, against at least 94% for rates ≤ f_c (Fig. 17, p. 208; the agent's reproduction).

**Meaningfulness: is the signal one component?** IF has a clear interpretation only for a monocomponent signal:
- the α + sin t pathology ([Huang 1998](../Notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), p. 12–14);
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

**Benchmark check (T1).** The ripple's first harmonic is exactly r·Δω. Writing the bracket as Re[r e^{iΔωt}/(1 + r e^{iΔωt})] and expanding in powers of r gives this, and the series has no constant term, so the unweighted mean is ω₁ (my derivation; checked numerically at r = 0.6). The benchmark's ripple index measures that harmonic in Δf units. For r = 0.6 it reads 0.52–0.59 in the widest bands, approaching the predicted 0.60, and less in narrower bands, where the band edges attenuate the tones. In exclusive segments it reads 0.002–0.03 (both at 10 dB SNR). At no point did the single-band IF report the weaker tone.

Huang 2009 itself abandons separating close tones. It describes them as one AM–FM component and calls the 3000-sifting split of Huang 1998 "unnecessary and unsatisfactory" (p. 219–222).

**Huang 1998's two-tone failure, corrected.** My first draft attributed Huang's failure on cos(2πt/30) + cos(2πt/34) to the Fourier limit (Δf·T ≈ 2). That is wrong for EMD. [Rilling & Flandrin 2008](../Notes/rilling-2008-one-or-two-frequencies-emd-two-tones.md) show that EMD acts as a linear filter with a **relative** cutoff f_c(n) ≈ [1 + (ln 2/n)^{1/4}]⁻¹: about 0.66 after 10 siftings and 0.89 after 3000 (eq. 8–9, p. 11–12). The record length does not enter (p. 4–5). Huang's pair has a frequency ratio of 0.88, which needs about 2200 siftings for half separation (the indexing agent's calculation). That matches "up to 3000". The Δf·T ≈ 2 point explains only why Huang's *Fourier and wavelet* marginal spectra also failed. The lesson is unchanged, and sharper: the narrow-banding step sets the resolution, and EMD's step is coarse and constant-Q.

**Intrawave modulation is a representation choice.** All three sources state this directly:
- Huang 2009: the IF and Fourier views of harmonic distortion "are representing the same data from two different viewpoints", and between the AM–FM and two-tone descriptions "they both are" correct (p. 221–223).
- Boashash cites Shekel, Priestley and Mandel to the same effect (p. 523).
- Daubechies et al. give a signal that is equally three tones or one AM tone, with "no universal solution" (eq. 1.3, p. 4).

Intrawave IF therefore carries no information beyond the harmonic amplitudes and phases. Its claim is to interpretability, not resolution. Rilling & Flandrin add a caution for Hilbert–Huang work on tonal signals: when the low tone dominates the curvature, EMD's sampling at the extrema can *create* a spurious component with its own IF (eq. 12, p. 13–15).

### 3. Where the trade-off goes in practice

**The narrow-banding step is a time–frequency analysis, now with rigorous backing.** Daubechies et al. show that synchrosqueezing's frequency ω(a, b) is the analytic-signal IF of the band-passed signal, averaged over the wavelet (eq. 2.11, 2.14, p. 7). Synchrosqueezing is therefore a filter bank followed by Hilbert IF: the formal analogue of SPOD reconstruction → HPOD. Its guarantee needs at most one component per passband (Lemma 3.6, p. 11), i.e. a filter half-width Δ < d/(1 + d), where d = (f₂ − f₁)/(f₂ + f₁) is the relative gap (Theorem 3.3, p. 8–9). Reassignment moves energy along frequency only, never in time (p. 6), so the IF's time resolution stays that of the wavelet. The examples in the library agree:
- Sieber's filter limits the rate of frequency change ([Sieber 2016](../Notes/sieber-2016-spectral-proper-orthogonal-decomposition.md), p. 8–9).
- A single-bin reconstruction changes only from block to block ([Nekkanti 2021](../Notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md) note).
- Bell's 200 Hz band has a time scale of about 5 ms ([Bell 2021](../Notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), p. 10–16).
- Raiola reads HPOD modulation from STFTs ([Raiola 2025](../Notes/raiola-2025-hilbert-pod.md), p. 19).

**The cap, in two forms.**
- **Rigorous (RMS):** σ_B² = σ_IF² + ⟨(A′/A)²⟩. The squared RMS bandwidth equals the energy-weighted RMS IF excursion squared plus the RMS envelope rate squared (Cohen 1989 eq. 8.9, p. 969; Boashash 1992 eq. 82–83, p. 534). A signal confined to a band of width B has σ_B ≤ B/2, so σ_IF² + ⟨(A′/A)²⟩ ≤ (B/2)² (derivation in the Cohen note). The FM *rate* does not appear in RMS terms.
- **Rule of thumb (support width):** Carson's rule, Δf_dev + f_m ≲ B/2, so that the FM sidebands at ±f_m fit inside the band. It is supported in kind by Daubechies et al. A narrower wavelet forces slower admissible AM and FM through its time moments (Estimates 3.5–3.7, p. 10–11), but their constants are unoptimised (p. 14). It remains labelled as my rule of thumb.
- **Fixed window, changing frequency:** a fixed Gaussian window cannot localise a frequency changing at rate β more finely than about √|β|, because σ² ≥ |β| (derived in the Cohen note from eq. 6.13–6.15, p. 964). This is Rihaczek's relaxation-time cell along the IF law (Boashash eq. 77–78, p. 533–534). A window chirped to match removes the penalty. For HPOD, a fixed reconstruction band acts as a fixed window.

Since any tone reconstruction has B/2 < f₀, the filter's cap always binds before the Hilbert step's own cap (Nuttall note).

**Locality is borrowed from the band.** IF is "a local concept", yet the Hilbert transform needs "the entire history of the signal" (Vakman, quoted in Boashash p. 536 and Cohen p. 968). Vakman showed that only an "active band" around the IF is needed. *My inference:* the information behind each IF value is set by that band, so successive IF samples are independent only about every 1/B. This is also why end trimming is needed (Horel p. 1662; Raiola p. 16). Gabor's counting supports this. A band B over a time T carries 2BT real data (p. 430–431). In his lattice expansion, a frequency strip of height B carries one complex coefficient, one amplitude–phase pair, per 1/B (eq. 1.29, p. 435–436). So an analytic signal in band B has about one independent phase value, and so one independent IF value, per 1/B; IF values in between are interpolated (the Gabor note's derivation). Gabor also gives the constant: the shortest signal through an ideal band of width B has an effective duration of √(π/2)/B ≈ 1.25/B and lasts appreciably about 2/B (eq. 1.37, p. 437–438).

**The benchmark measures the cap (T1, synthetic).** [The benchmark](../../Codebase/HPOD_Switch_Benchmark/README.md) imposes exclusive switches between two advecting wavepackets 10% and 0.5% apart, with dwells from 6 down to 0.375 T_b (T_b = 1/Δf), 2-period ramps, and a coexistence interval. The table gives inverse-SPOD route results at a field of view of 8λ, with the resolved fraction averaged over SNR 0–20 dB; my tabulation from `Results_invspod/switch_benchmark_switches.csv`.

| Route | Band | Shortest dwell fully resolved | 10–90% switch width |
|---|---|---|---|
| each tone in its own band (HPOD_sep, Gaussian probe) | B = Δf/2 | 3 T_b (1.5 T_b in 0–25%) | 1.0–1.5 T_b ≈ (0.5–0.75)/B |
| | B = Δf | 1.5 T_b | 0.4–0.9 T_b ≈ (0.4–0.9)/B |
| | B = 2Δf | 1.5 T_b (0.75 T_b in 25–100%); with tones 0.5% apart, HPOD_sep via inverse SPOD also missed some 3–6 T_b dwells, which the convolution route fixes | 0.2–0.8 T_b ≈ (0.3–1.6)/B |
| | B ≥ 4Δf | none: each band holds both tones | — |
| one band holding both tones (HPOD_comb), tones 0.5% apart | Δf + 8Δf | 0.375 T_b | 0.04–0.05 T_b |
| the same, tones 10% apart | Δf + Δf/2 to Δf + 8Δf | 1.5 T_b | 0.27–0.45 T_b ≈ 3–4 carrier periods |
| synchrosqueezing (FSST), wide window | B = 8Δf | 0.375–0.75 T_b (83–94%) | 0.04–0.16 T_b |

My reading:
- **The cap is 1/B, as section 3 argued.** Switch widths fall as B grows, mostly within (0.4–1)/B, in line with Gabor's 1.25/B. The coarse counts (2–4 switches per dwell) don't fix the constant better than that.
- **Separation brings the trade-off back.** The tones stay apart only for B ≲ 2Δf, and at 2Δf one tone already leaks into the other's band. So separate-band tracking cannot do much better than about T_b = 1/Δf (half the 0.75 T_b dwells, all the 1.5 T_b ones). That is H2 in numbers.
- **Exclusivity removes it.** With one band holding both tones, the 1/B rule holds again (0.05 T_b ≈ 0.4/B at B = 8Δf), because nothing has to be separated: H3.
- **The floor at about three carrier periods is the test's, not the method's.** With tones 10% apart, T_b is only 10 carrier periods, and the single-band width stops at about 3–4 periods whatever B is. The imposed 2-period ramp and the 2-period minimum fit window account for that. It agrees with Nuttall's one-period floor but does not measure it. The Hilbert step's own error was at most 2×10⁻⁴ f₀ (the modulation's energy below −f_k < 2×10⁻⁷).
- **Synchrosqueezing follows switches like the single band, but cannot see coexistence.** It detected the coexistence interval only 44–85% of the time at B ≥ 4Δf, against 100% at B ≤ 2Δf. Daubechies' separation condition fails there, so this is the ripple of the reassigned frequency, not resolution.

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

**The benchmark shows the same split (T1).** In long exclusive segments the IF spread was far below the tone spacing. With tones 0.5% apart (Δf = 5×10⁻³ f₀), the spread was 10⁻⁶–10⁻⁵ f₀ for separate bands of B ≤ Δf (SNR 0–20 dB), 500–5000 times finer than the resolution. The point methods (Gaussian band-pass, bump, FSST) mostly sat at 1–2.6 times their single-probe Cramér–Rao reference and scaled with SNR. The narrowest Gaussian band was the exception, at up to 14 times, probably because its long impulse response reaches across segment edges (my guess). Questions about IF that is moving rather than steady stay open (Boashash 1992 Part 2; T5).

**A pipeline artefact (T1 floor diagnosis).** The group's frequency-domain inverse SPOD, run block by block with Hamming windows and window-weighted stitching (Nekkanti 2021, p. 26–27), adds an IF error at the block length that does not change with SNR:
- tones 0.5% apart: 1.4×10⁻⁵ f₀ with and without noise;
- tones 10% apart: 3.4×10⁻⁴ f₀ without noise.

At 20 dB that is 9–18 times the single-probe bound. A rectangular window with no overlap makes it 3–14 times worse, and a 4× longer n_fft also makes it worse. Reconstructing by convolving the data with the SPOD modes, as `tcoeffs.m` does (Nekkanti 2021, eq. 3.4), cuts the spread by up to 9× with tones 0.5% apart. This is the route Nekkanti & Schmidt already recommend for time-continuous coefficients in frequency–time analysis (p. 26); the benchmark shows why it matters for IF, where phase continuity across blocks counts more than reconstruction error. The likely mechanism is a phase mismatch between blocks after dividing by the window (the benchmark README's diagnosis, not proven). The convolution route responds over one n_fft, so it can slightly blur the very shortest dwells it resolves.

**Summary of what limits each quantity:**

| Quantity | Spectrogram / CWT / SPOD spectrogram | HPOD instantaneous frequency |
|---|---|---|
| Frequency resolution (separating coexisting components) | window length T | narrow-banding bandwidth B (relative gap d > relative bandwidth, Daubechies), plus spatial separation by POD; IF itself resolves nothing |
| Time resolution (localising a change) | window length T | max(about 1/B, the noise-smoothing length, about 1 carrier period (Nuttall), at least 5 samples per period (Huang 1998 p. 89)); for advecting waves possibly about L/c (section 4, hypothesis). Benchmark: switch width (0.4–1)/B; ≳ 1/Δf whenever the tones must be separated (T1) |
| Frequency precision for an isolated component | Cramér–Rao, attainable by interpolating the peak | Cramér–Rao for the smoothing length, plus model error; can be far below B |
| Output when two tones share the band | two peaks if T ≳ 1/Δf | the stronger tone plus a ripple at Δf; spikes as r → 1; negative only if r·ω_weak > ω_strong |
| Assumption | local stationarity over T | one slowly modulated component per mode at each instant (BT > 10, Boashash) |

### 4. What the POD step adds

**Spatial separation.** POD separates components by spatial structure. Horel's travelling and standing waves split 73/27% ([Horel 1984](../Notes/horel-1984-complex-principal-component-analysis.md), p. 1667). Wong's symmetry split separated SS from SA coupling ([Wong 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 9, 16–20). Kriegseis et al. merged POD pairs into one complex mode in three flows, but only with ordered snapshots (p. 1–2). Two limits apply: near-degenerate eigenvalues make the split unstable, and orthogonality can create modes that are not in the data (Horel, p. 1667–1672).

**Higher SNR, and so better precision.** Wong replaced noisy pixel scalograms with a POD coefficient (p. 9). Oberleithner preferred POD phase to a point-sensor Hilbert phase ([Oberleithner 2011](../Notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md), p. 22–23, via the modal-decomposition topic page). In Cramér–Rao terms, coherent averaging over M independent points raises the effective SNR by up to M (my inference).

The benchmark (T1, convolution route, field of view 8λ) measured the gain. At 0–10 dB, HPOD of separate bands reached 0.15–0.7 times the *single-probe* Cramér–Rao bound, which no single-point estimate can beat, and 1–4.6 times the field reference (the probe bound divided by √M_eff). At 20 dB, in bands of B ≤ Δf, it stayed 8–14 times above the field reference, a residual floor the README puts down to the n_fft-long kernel reaching across switches. So the SNR gain is real and close to the projection estimate at low SNR. Through the inverse SPOD, the block floor hides it at high SNR (section 3).

**Space for time** (hypothesis, my reasoning). For ω = ck, HPOD reduces to SPOD with frequency tied to wavenumber (Raiola eq. 2.42–2.55, p. 11–13). A field of view of length L then resolves Δf ≈ c/L, so a snapshot holds about one transit time L/c of history. Two papers are consistent with this:
- Sieber's best filter spanned about one convective transit (p. 17).
- Horel's pulses, short compared with the transit time, were poorly captured (p. 1668–1670).

Rife & Boorstyn note that their bound is Brennan's phased-array angle bound (p. 592). The same mathematics therefore bounds a wavenumber estimated across an aperture, so the analogy holds for *precision*. The Bedrosian theorem in x implies that a wavepacket must span about one wavelength for HPOD_x's envelope and local wavenumber to be exact (Bedrosian note, my inference). The hypothesis fails for flows with more than one phase speed, which is the resonant case (Raiola, p. 13).

The benchmark did not settle it (T1). HPOD of the raw field never separated the two tones at any field of view up to 16λ. But the packets' Gaussian envelope (σ = 4λ) limited the effective aperture to about 9λ whatever L was, so the spatial resolution (about 11%) never reached the 10% spacing. The test needs a wider envelope (T2). At 0.5% spacing the raw field's second mode was noise: IF bias about 0.09 f₀ and spread about 0.12 f₀.

**HPOD on raw broadband data.** Kriegseis et al. applied the Hilbert transform to raw data, but all their test flows were dominated by one periodic process, and they never computed an IF (p. 1–2). Raiola applied HPOD_t to an unfiltered LES and read the modulation with STFTs (p. 19–21). Nothing in the library shows that d arg ψ_j/dt of a broadband turbulent HPOD mode is monocomponent. Explicit narrow-banding first remains the safer route. The benchmark points the same way even for two clean tones: without narrow-banding, the raw-field modes did not separate them.

**What HPOD adds after `tcoeffs`** (my reasoning; T8 checks it). The convolution coefficient a_l(f, t) is a sliding, Hamming-windowed DFT of length n_fft projected onto SPOD mode φ_l(f). Nekkanti & Schmidt show it is practically the same as the exact sliding-window SPOD coefficient (App. C, p. 19, 30–31). So for each bin and mode it already carries:
- the instantaneous amplitude |a|;
- the phase, which advances at the tone's frequency, so IF = f_bin + (1/2π)·d(arg a)/dt;
- the spatial SNR gain of projecting onto a mode.

The group's `tcoeffs` returns conjugated phase, so the IF sign must be fixed first; the version in `Codebase_Patches` does this ([Codebase note](../Codebase_Notes/schlieren-processing-scripts.md)).

Against that baseline:
- **One bin, one mode: HPOD adds nothing.** It returns that SPOD mode and coefficient. Horel: complex PCA is frequency-domain PCA averaged over frequency, identical for one dominant frequency (p. 1661). Raiola: HPOD reduces to SPOD for stationary advecting waves (p. 11–13). The coefficient's time resolution is the n_fft window.
- **Several bins or modes: HPOD makes one coherent structure.**
  - SPOD modes at neighbouring bins have arbitrary relative phase, and their shape changes with frequency (for an advecting wave, k = 2πf/c). So the bins' coefficients can't be added directly; they need a common spatial projection.
  - HPOD picks the projection that captures the most energy in the band. That gives one amplitude and IF trace per structure, continuous across bins, with time resolution about 1/B instead of n_fft.
  - It also ranks structures of different shape inside the band (mode 1 vs 2), unless their energies are close (Horel).
  - A cheaper middle route is to project the band onto one fixed mode, such as the peak bin's SPOD mode. HPOD is the energy-optimal version of that choice.
- **The Hilbert step adds nothing on a one-sided reconstruction.** Rebuilt from positive-frequency coefficients only, the band field is already analytic. Taking its real part and Hilbert-transforming it just recovers it, plus end effects. Kriegseis says the analytic signal "adds no information" (p. 1). The group's pipeline takes the long way: `invspod` fills in the negative frequencies, then `hilbert` follows.

**First check (T8 quick run, 2026-10-23; tones 10% apart, 10 dB, one schedule, so preliminary):**
- POD of the one-sided reconstruction matched HPOD to about 10⁻⁶ in every metric.
- *Separate bands:* the fixed-mode projection matched HPOD at B = Δf, but had 2.3× the IF spread at B = 4Δf.
- *One band holding both tones:* the fixed projection (onto tone A's mode) weakened tone B. The coexistence ripple fell to 0.18 against HPOD's 0.44–0.56, as the shape mismatch predicts.
- *Direct coefficient:* its IF spread was close to HPOD's (1.1 against 1.3×10⁻⁴ f₀ at B = Δf). But it resolved only dwells of 3 T_b or more (width about 1.3–1.5 T_b), as its n_fft = 5 T_b window predicts. It also showed an IF bias of 5×10⁻⁴ f₀ (0.5% of Δf), ten times HPOD's, not yet explained.

### 5. Consequences for the lab's problems

- **A1/A2 staging (tones about 10% apart).** Daubechies' condition gives d ≈ 0.048, so the filter half-width must be under 0.045. That filter lasts about 11–22 periods (the Daubechies note's arithmetic), which agrees with the earlier estimate of 10–20 screech cycles. It is much finer than the roughly 78-cycle window of [Mazharmanesh 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) (p. 11). **Exclusivity test:** reconstruct a band holding *both* tones. If the IF jumps between two plateaus while the amplitude stays up, the tones are switching. If the IF stays at the stronger tone with a ripple at Δf, they coexist. The ripple is the Cohen cross term (section 2). EMD will always merge A1 and A2 (frequency ratio about 0.91; Rilling note), so use SPOD reconstruction, by convolution rather than block-wise `invspod` (T1).
  - **What the benchmark implies for real A1/A2 data** (my arithmetic, cold jet, applied to Mazharmanesh's NPR 2.20 tones at 150 kHz). The tones are about 14.5% apart (13.1 and 15.0 kHz), so T_b ≈ 0.53 ms, only about 7 A1 periods, and d ≈ 0.068.
    - *Separate bands* (B ≈ Δf) should resolve dwells of about 1.5 T_b ≈ 0.8 ms, roughly 8× finer than the 6.8 ms SPOD window.
    - *The single-band exclusivity test* has little room at this spacing. In T1 at 10% spacing (T_b = 10 periods) it already stopped at 1.5 T_b, so for A1/A2 its value is the plateau-versus-ripple diagnosis, not extra speed.
    - T3 tests this on the real data.
- **Twin-jet SS/SA (0.3–0.6% apart).** Separating them by frequency needs a filter of about 330–670 periods (Daubechies note), comparable with the reported switching interval of 10²–10³ cycles. The Rife & Boorstyn note's example shows the other side: if the states are *exclusive*, a 10-period window separates 30 Hz at 5–8 σ_f, so switching is detectable quickly. Coexistence is not. Separate the states by symmetry (space) first, as Wong did.
  - T1's 0.5% case is the synthetic twin of this one. With T_b of about 170–330 cycles at 0.3–0.6% spacing (my arithmetic), the benchmark implies:
    - separate frequency bands need about 1.5 T_b ≈ 250–500 cycles, comparable with the reported switching interval;
    - one band holding both states resolves exclusive switches of about 0.375 T_b ≈ 60–125 cycles.
  - So without a symmetry split, the single-band IF (or its ripple) is the only frequency-based route fast enough.
- **Bell's interruptions** (5–15 cycles, inside a 2% band) are below the band's resolution and need re-examination (already queued on the topic page).
- **[Jeun 2024](../Notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md)'s Hilbert phase on apparently unfiltered pressure** (p. 8) is exact by Nuttall's criterion, but it is not guaranteed to be meaningful in Boashash's sense.

## Conflicts in the literature

- **Is IF bound by the uncertainty principle?**
  - **For H1:** Huang 2009 argues that a frequency defined as a phase derivative, computed without an integral transform, is not bound (p. 178). Wave kinematics require a differentiable ω (eq. 1–3, p. 178–179), and direct quadrature recovers sub-period frequency modulation (p. 205–210).
  - **Against, or neutral:** Cohen 1989 places the principle on marginals and windows, so a pointwise centroid neither violates nor escapes it (p. 970–971). Boashash restricts IF's *meaning* to BT > 10 (p. 526–527).
  - **Resolution:** the two sides do not actually conflict. Huang 2009 concedes the monocomponent requirement and the dependence on the decomposition (p. 185, 223). Cohen concedes that pointwise φ′ exists (p. 954). The real dispute is over what "frequency" should mean, not over resolving power. *H1 in its strongest form applies to direct quadrature on an accepted IMF, not to the analytic-signal IF HPOD uses,* whose locality Huang 2009 says cannot be guaranteed (p. 224).
- **Intrawave modulation vs harmonics.** Huang 1998 (p. 15–16, 33–41) and Rilling & Flandrin (p. 8, 14, 18) favour one IMF with intrawave modulation. Bicoherence and BMD treat the harmonics as triads (topic page). Huang 2009 itself, Boashash (p. 523) and Daubechies et al. (p. 4) all treat the two as equivalent representations. On this question, it is not a resolution issue.
- **Why Huang 1998's two tones failed.** My first draft blamed the Fourier limit; Rilling & Flandrin show it is EMD's relative cutoff (p. 11–12). Resolved.
- **Narrow-band first, or let POD do it?** Horel, Bell, Daubechies (formally), Boashash and Huang 2009 narrow-band, or decompose into IMFs, before reading IF. Kriegseis, Raiola and Jeun did not narrow-band, but none of them read IF values from broadband turbulence. For IF, the narrow-band-first side has the theory behind it, and now the benchmark too: raw-field HPOD did not separate even two clean tones (T1). Broadband turbulence is untested (T4).
- **Which reconstruction feeds HPOD? (Not a conflict in the literature.)** The topic page's pipeline checklist (step 2) and the group's code reconstruct with block-wise inverse SPOD and window-weighted stitching (Nekkanti 2021, p. 26–27). Nekkanti & Schmidt themselves recommend the frequency-domain route "with convolution for time-continuous coefficients" for frequency–time analysis (p. 26; eq. 3.4, p. 18–19). The benchmark backs their recommendation and gives its cost: block-wise inversion leaves a block-periodic IF floor, and convolution gives up to 9× less IF spread. So the gap is between the paper and our practice, not between papers. The evidence is one synthetic study, not yet repeated on real data (T3).

## Uncertainties and unknowns

| Point | Status | Basis | What would resolve it |
|---|---|---|---|
| IF is the conditional mean frequency (a centroid) and does not violate the uncertainty principle, which bounds marginals and windows | established | Cohen 1989 p. 954, 963, 970–971; Boashash 1992 p. 522, 533 | — |
| IF is exact iff the complex modulation is one-sided (Nuttall); it is meaningful only for one component | established | Bedrosian 1963; Nuttall & Bedrosian 1966; Boashash p. 527; Huang 2009 p. 185, 224; Huang 1998 p. 12–15 | — |
| Two tones in one band: IF = stronger tone + ripple at Δf (formula); ripple first harmonic = r·Δf | established (T1 ripple index 0.52–0.59 against 0.60 predicted) | Boashash eq. 30, p. 523; Cohen eq. 5.23, 4.24; T1 | — |
| Unweighted mean IF = stronger tone; negative only if r·ω_weak > ω_strong | supported (derivation, checked twice; mean checked numerically at r = 0.6; in T1 the IF never reported the weaker tone) | this file; Boashash and Rilling notes; T1 | T7 |
| The narrow-banding bandwidth sets separation (relative gap > relative bandwidth) | established (sufficient condition) | Daubechies 2011 Theorem 3.3, Lemma 3.6 | — |
| RMS cap: σ_IF² + ⟨(A′/A)²⟩ ≤ (B/2)² | established | Cohen eq. 8.9; Boashash eq. 82–83 | — |
| Rate cap: Δf_dev + f_m ≲ B/2 (Carson) | supported (rule of thumb) | Carson's rule; Daubechies Estimates 3.5–3.7 (in kind); Nuttall gives the f₀ analogue exactly | T5 |
| The Hilbert step's own floor is about one carrier period | established (T1: negligible for 2-period ramps) | Nuttall & Bedrosian 1966 p. 1459, with the note's numerical checks; Huang 2009 Fig. 17; T1 | — |
| IF precision ≪ 1/T for one component (SNR-limited above a threshold) | established (stationary tone; T1's probe methods follow the reference) | Rife & Boorstyn eq. 17, 60; Fig. 3–4; T1 | moving IF: T5; Boashash 1992 Part 2 |
| HPOD can detect exclusive switching faster than 1/Δf but not coexistence | supported (theory, and synthetic in T1) | Rife note worked example; two-tone formula; T1 | T3 |
| Direct quadrature recovers sub-period FM of an accepted IMF (strongest H1) | supported (noise-free) | Huang 2009 p. 205–210 | T5 |
| POD adds separation via space and precision via SNR | supported for precision (T1: 0.15–0.7 × the single-probe bound at 0–10 dB); separation via space not shown | Horel; Wong; Kriegseis; Oberleithner; T1 | T2, T6 |
| Field of view substitutes for record length (≈ L/c) | speculative (precision analogy supported; T1 inconclusive, aperture ≈ 9λ against about 10λ needed) | Raiola p. 11–13; Sieber p. 17; Horel p. 1668–1670; Rife p. 592; T1 | T2, then T6 |
| HPOD_t of broadband turbulence gives monocomponent modes | doubtful | Raiola p. 19–21; Kriegseis p. 1–2 | T4 |
| Time resolution of HPOD IF for a switch: switch width (0.4–1)/B; ≳ 1/Δf whenever the tones must be separated (B ≲ 2Δf); faster only for exclusive states in one band | supported (synthetic, non-dispersive, white noise) | T1 | T3 |
| Block-wise inverse SPOD puts an SNR-independent floor on HPOD IF; convolution reconstruction removes most of it | supported (synthetic) | T1 floor diagnosis; Nekkanti 2021 eq. 3.4 | T3 (real data) |
| After `tcoeffs`, HPOD adds nothing for one bin and one mode; its gain is a coherent, energy-optimal trace across several bins or modes | supported (reasoning; T8 quick run consistent) | Horel p. 1661; Raiola p. 11–13; Nekkanti p. 19, 30–31; T8 quick | T8 full sweep, plus an FM scenario |
| The Hilbert step is redundant on a one-sided reconstruction | supported (algebra; T8 quick: identical to about 10⁻⁶) | Kriegseis p. 1; T8 quick | — |

## Proposed tests

Ranked by how much each would change the answer for its cost. T1 has been run, and its results are worked into the short answer and sections 2–5 above.

| ID | Tests (against) | Test | Type | Cost | Status |
|---|---|---|---|---|---|
| T1 | switch time resolution ≈ 1/B (H2); exclusive switching visible faster than 1/Δf, coexistence not (H3); precision against Cramér–Rao; the Hilbert step's floor | synthetic switch benchmark: SPOD → band reconstruction → HPOD_t against STFT, CWT and FSST at a probe | synthetic | done | done 2026-10-22: switch width (0.4–1)/B, but ≳ 1/Δf whenever the tones must be separated; one band holding both tones resolved exclusive switches down to 0.375 T_b when T_b spans many carrier periods; coexistence showed only as ripple; inverse-SPOD block floor found; Hilbert floor negligible; space for time inconclusive |
| T2 | space for time (L_eff/c stands in for record length) vs POD adding only SNR | T1 benchmark with effective aperture 5–40λ, two spacings, and a counter-propagating wave | synthetic | hours | proposed |
| T8 | HPOD of a band reconstruction adds a coherent cross-bin trace vs reading `tcoeffs` coefficients directly, or projecting onto one fixed mode, does as well; Hilbert step redundant | T1 benchmark with direct coefficients, a fixed-mode projection and POD without the Hilbert step | synthetic | tens of minutes of compute (code done) | quick check run 2026-10-23 (consistent; preliminary); full sweep not run |
| T3 | T1's conclusions hold on real schlieren vs fail with real noise and modes; by-product: A1/A2 exclusive vs short coexistence | HPOD on Mazharmanesh's NPR 2.20 record, with negative and spliced positive controls from NPR 2.19 and 2.25 | re-analysis | 1–3 days | proposed |
| T4 | raw HPOD_t modes of broadband turbulence are monocomponent vs carry the IF of band-limited noise | IF statistics of HPOD_t modes against the Gaussian-noise IF law, with and without narrow-banding | re-analysis (public LES) | download + 2–3 days | proposed |
| T5 | Carson rate cap vs RMS cap only; strongest H1 (direct quadrature) vs H3 under noise | sinusoidal-FM sweeps through band B, Hilbert vs direct quadrature, SNR 0–40 dB | synthetic | about a day | proposed |
| T6 | A1/A2 separable by streamwise wavenumber in short LES records vs too short an aperture | wavenumber-filtered HPOD on the PyFR shear-layer probes | LES | low, once output exists | proposed (waits on LES runs) |
| T7 | two-tone derivation: unweighted mean IF = stronger tone; negative-IF threshold | sweep of r and which tone is weaker | synthetic | minutes | proposed |

### T1. Synthetic switch benchmark (done 2026-10-22)

Code, design and full results: [HPOD_Switch_Benchmark](../../Codebase/HPOD_Switch_Benchmark/README.md). A 1D field of two advecting Gaussian wavepackets, δ = 0.10 and 0.005 apart, with exclusive switches at dwells from 6 down to 0.375 T_b (T_b = 1/Δf), a coexistence interval (weaker tone at r = 0.6) and an 'off' interval. SNR 0–20 dB, field of view up to 16λ, B from Δf/2 to 8Δf. HPOD_t of separate bands, of one band holding both tones, and of the raw field, against Gaussian, bump, Morlet and FSST probes. IF from a least-squares fit to the unwrapped phase over max(1/B, 2 periods).

Results against the predictions:
- **Time resolution ≈ 1/B, and ≳ 1/Δf when the tones must be separated (H2): held.** Separate-band switch widths were mostly (0.4–1)/B, and the shortest fully resolved dwell was 3 T_b at B = Δf/2 and 1.5 T_b at B = Δf and 2Δf; some 0.75 T_b dwells were resolved at B ≥ Δf, none at 0.375 T_b. At B ≥ 4Δf each band holds both tones and they fail at every dwell. The default Morlet (17% bandwidth) merged the tones at both spacings. (Table in section 3.)
- **Exclusive switching vs coexistence (H3): held.** One band holding both tones resolved exclusive switches down to 0.375 T_b at δ = 0.005 (B = 8Δf), faster than 1/Δf. At δ = 0.10 it stopped at about 1.5 T_b, because T_b is only 10 carrier periods and the ramp and fit window fill much of each dwell. In coexistence the IF rippled at Δf, with a ripple index 30–120 times the exclusive baseline (the README's range; up to about 370 times at 10 dB in the widest bands) and close to the predicted r = 0.6, and never reported the weaker tone. Wide-window FSST behaved alike, detecting coexistence only 44–54% of the time at B = 8Δf.
- **Precision: held; the lab pipeline had an artefact.** Gauss, bump and FSST followed the Cramér–Rao reference and scaled with SNR (σ_IF ≈ 5×10⁻⁶ f₀ = Δf/1000 at δ = 0.005, 10 dB, B = Δf). Through the inverse SPOD, the HPOD routes sat on an SNR-independent floor, traced to block stitching. Reconstruction by convolution with the SPOD modes (as `tcoeffs.m` does; Nekkanti 2021 eq. 3.4) cut the spread by up to 9×. At 0–10 dB, field HPOD then reached 0.15–0.7 times the single-probe bound and 1–4.6 times the field reference.
- **Hilbert step's floor: negligible, as predicted** (≤ 2×10⁻⁴ f₀; the modulation's energy below −f_k < 2×10⁻⁷; Nuttall).
- **Space for time: inconclusive.** HPOD of the raw field never separated the tones, but the packet envelope limited the effective aperture to about 9λ, short of the roughly 10λ needed at δ = 0.10. Hence T2.

For the lab pipeline: reconstruct the band by convolution, not `invspod`, whenever IF precision matters. Limits: 1D, one phase speed, white noise, 2–4 switches per dwell.

### T2. Space for time on the benchmark

- **Hypotheses.** H_space (my hypothesis, section 4): a field of effective length L_eff resolves Δf ≈ c/L_eff, so POD separates two tones without narrow-banding once L_eff ≳ c/Δf = λ/δ, and a snapshot then holds about L_eff/c of history. H_SNR: on raw data POD adds precision through SNR but no frequency separation.
- **Predictions.** At δ = 0.10 the threshold is about 10λ; at δ = 0.05, about 20λ. H_space: HPOD of the raw field locks its two leading modes onto the two tones (ρ bimodal, switches resolved) once L_eff passes the threshold, and the 10–90% width of a resolved switch grows as about L_eff/c, since the trade-off has moved into space. H_SNR: no separation at any L_eff; only the IF spread falls, as 1/√M_eff. With a second wave at c < 0, H_space predicts that separation degrades or ghosts appear (more than one phase speed; Raiola p. 13).
- **Varied:** L_eff = 5, 10, 20 and 40λ, via a wider Gaussian or flat-top envelope; δ = 0.10 and 0.05; a counter-propagating wave at 0.3 of the amplitude, as a separate arm. **Fixed:** SNR 10 dB, other T1 defaults. A further arm with `env_shift_lambda` ≠ 0 tests separation by spatial support rather than by wavenumber.
- **Controls.** δ = 0.005 needs about 200λ, so it should fail at every L_eff tried (negative control). The probe methods should not change.
- **Feasibility.** 8 points per wavelength gives 320 points at 40λ: trivial.
- **Analysis.** `run_switch_benchmark` with overrides; the flat-top envelope and the second wave are small code changes. Report POD mode mixing explicitly: near-equal amplitudes make the eigenvalues near-degenerate (Horel).
- **Decision rule.** H_space is supported if separation appears within a factor of 1.5 of λ/δ at both spacings and the switch width scales with L_eff/c. H_SNR is supported if nothing separates up to 4× the predicted threshold. Separation that does not scale with 1/δ is inconclusive (an envelope-shape effect).
- **Cost and risk.** Hours. Risk: the 1D, non-dispersive model flatters H_space; a pass here is necessary, not sufficient (T6 is the real-flow test).

### T3. T1's conclusions on real A1/A2 schlieren, with controls

- **Hypotheses.** Method: the 1/B time resolution and the plateau-vs-ripple test survive real schlieren, with turbulence-coloured noise, spatially structured modes and drifting amplitudes, vs they fail there. Physics by-product: Mazharmanesh's exclusivity, with the JPDF ridge put down to windows spanning switches (p. 11), vs short coexistence intervals hidden by the 78-cycle window.
- **Data (an assumption to confirm with the user):** the [Mazharmanesh 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) round-jet schlieren, D = 16 mm, 150 kHz: NPR 2.20 (two tones switching; 400,000 frames), NPR 2.19 (A1 only) and NPR 2.25 (A2 only) (p. 8–11).
- **Feasibility (my arithmetic, cold jet, T₀ ≈ 293 K).** At NPR 2.20, M_j ≈ 1.12 and U_j ≈ 345 m/s, so A1 (St 0.606) is at about 13.1 kHz and A2 (St 0.694) at about 15.0 kHz: Δf ≈ 1.9 kHz, T_b ≈ 0.53 ms ≈ 7 A1 periods ≈ 79 frames. 10–11.5 frames per period, above Huang's 5. Relative gap d ≈ 0.068, so a band half-width under about 6% of the frequency keeps one tone per band (Daubechies). With nfft = 1024 the SPOD bin is 146 Hz, so B = Δf to 2Δf spans 13–26 bins. T1 then predicts that separate bands resolve dwells ≥ 1.5 T_b ≈ 0.8 ms, about 8× finer than the published 6.8 ms window. T_b is shorter in carrier periods than T1's δ = 0.10 case, so the single-band route should do worse, resolving only dwells of about 1.5–3 T_b.
- **Analysis.** SPOD (nfft 1024, as the paper) → convolution reconstruction (T1) of bands B = Δf and 2Δf around each tone, and one band Δf + B holding both → HPOD_t → ρ(t), the combined-band IF, the ripple index and a dwell-time histogram. Compare with the paper's sliding-SPOD amplitudes and JPDF. Both tones are axisymmetric, so symmetry cannot separate them; their streamwise wavenumbers differ (KH × k_s1 vs KH × k_s2, p. 9–10), which the POD step may exploit.
- **Controls.**
  - Negative: NPR 2.19 and 2.25 through the same pipeline. ρ should stay at 0 or 1 and the ripple index at its exclusive baseline. This gives the false-alarm rate on real noise.
  - Positive, switching: splice alternating segments of the 2.19 and 2.25 records, with 2-period Hann cross-fades, at prescribed dwells from 6 to 0.375 T_b. Real noise, known switch times.
  - Positive, coexistence: sum the two records with the weaker scaled to r = 0.6.
  - The control pair's tones are closer (St 0.607 and 0.665, Δf ≈ 1.25 kHz), so set the bands and T_b from their own tones.
- **Decision rule.** The method claim stands if the spliced control reproduces T1's resolved fractions within the count noise and the summed control raises the ripple index ≥ 10× above the negative-control baseline. Then, for NPR 2.20: intervals ≥ 1.5 T_b long with the ripple index above the threshold calibrated on the summed control support coexistence; none above the negative controls' false-alarm rate supports exclusivity, at about 0.8 ms resolution. If most dwells are shorter than 1.5 T_b, the result is inconclusive at this resolution.
- **Cost and risk.** 1–3 days of re-analysis. Risks: the amplitude normalisation assumes each tone is on for at least 5% of the record (a T1 limit); schlieren noise can be spatially coherent (vibration, flicker), unlike T1's white noise.

### T4. Are raw HPOD_t modes of broadband turbulence monocomponent?

- **Hypotheses.** H_mono: raw HPOD_t modes, as used without narrow-banding by [Kriegseis 2021](../Notes/kriegseis-2021-hilbert-transform-revisited-hpod.md) and [Raiola 2025](../Notes/raiola-2025-hilbert-pod.md), are close enough to one component for their IF to mean something. H_multi: they are multicomponent, so their IF is that of band-limited noise and says no more than the band's centroid.
- **Predictions.** Background, not in the library (Rice's result for Gaussian noise): the IF of a narrow-band Gaussian process has a heavy-tailed PDF, falling as |f − f̄|⁻³ (a Student t with two degrees of freedom), with a width set by the RMS bandwidth, and negative-IF spikes at envelope minima. H_multi: a mode's IF PDF matches that law fitted to its coefficient's RMS bandwidth, and the negative-IF fraction is finite. H_mono: the IF PDF is much narrower than the law, its tails are light, negative IF is rare, and BT > 10 (Boashash). Boashash's IF/group-delay check (Properties 2–3) assumes an invertible IF law, which a stationary broadband record lacks, so use it only on segments with a clear chirp (my reasoning).
- **Data.** The public M_j 0.9 jet LES of [Towne 2022](../Notes/towne-2022-database-reduced-complexity-modeling.md); download a subset (one plane, or the m = 0 component), checking its size first. Lab TR schlieren of a subsonic jet would do instead, if the user has it.
- **Varied:** narrow-banding (none; relative bandwidth 50%, 20%, 5%) around the SPOD peak and around a trapped-wave tone ([Towne 2017](../Notes/towne-2017-acoustic-resonance-potential-core-subsonic-jets.md)); HPOD modes 1–4.
- **Feasibility.** At least 5 samples per period at the highest St analysed, and enough record for a converged SPOD of the subset; check both before analysing.
- **Decision rule.** H_mono for a mode if its IF interquartile range is under 0.3 of the noise law's and its negative-IF fraction under 1%. H_multi if within a factor of 1.5 of the law. Report the narrow-banding at which modes cross from one to the other.
- **Cost and risk.** Download plus 2–3 days. Risk: a subset may be too short to converge the SPOD.

### T5. FM rate cap and direct quadrature under noise

- **Hypotheses.** (a) The Carson rule Δf_dev + f_m ≲ B/2 (my rule of thumb) is the binding cap, vs only the rigorous RMS cap σ_IF² + ⟨(A′/A)²⟩ ≤ (B/2)² (Cohen eq. 8.9). (b) Strongest H1: direct quadrature recovers intrawave FM at rates up to 2f_c ([Huang 2009](../Notes/huang-2009-on-instantaneous-frequency.md), p. 205–210) under realistic noise, vs H3: following FM at rate f_m allows smoothing over at most about 1/(2f_m), so the error follows the Cramér–Rao bound for that short window and the advantage vanishes below some SNR.
- **Predictions.** (a) Carson: tracking fails (captured swing < 0.9) along a line of slope −1 in the (f_m, Δf_dev) plane, so a small swing at f_m ≈ B/2 already fails. RMS cap only: the failure boundary depends on the swing, not on the rate. (b) H1: direct quadrature captures ≥ 0.9 of the swing at SNR ≥ 10 dB. H3: the captured swing collapses at the SNR where the Rife bound for a window of 1/(2f_m) reaches the swing, and direct quadrature and normalised Hilbert converge.
- **Design.** Probe signals with sinusoidal FM on a grid of Δf_dev and f_m; Gaussian band-pass of width B; Hilbert IF and direct quadrature (Huang 2009's normalisation); SNR 0–40 dB. It fits in `HPOD_Switch_Benchmark/Functions/`.
- **Decision rule.** (a) The slope of the failure boundary: −1 supports Carson, near-vertical (swing only) the RMS cap. (b) Whether the collapse SNR matches the Rife prediction within a factor of 2.
- **Cost and risk.** About a day. Risk: the direct-quadrature normalisation iterates and can fail at low SNR on its own account; report its failures separately.

### T6. Spatial separation in the PyFR staging LES

- **Hypotheses.** Space for time (T2) in the real flow: A1 and A2 can be separated in the LES's short records by streamwise wavenumber, and so timed faster than separation by frequency allows. Against: the shear-layer probe line is too short to resolve the wavenumber gap, or the waves' dispersion and the upstream guided-jet waves spoil the separation.
- **Predictions.** For the KH wavepackets the gap is Δk ≈ 2πΔf/U_c. With ΔSt ≈ 0.088 (Mazharmanesh's NPR 2.20 tones) and U_c ≈ 0.6–0.7 U_j, Δk·D ≈ 0.8–0.9, so the line must span about 2π/Δk ≈ 7D (my arithmetic; use the LES's own tones and convection speed). Mazharmanesh separated A1 from A2 by their interaction wavenumbers, KH × k_s1 against KH × k_s2 (p. 9–10), which is a second route if the line is too short for the KH gap. If the hypothesis holds, the wavenumber-filtered ρ(t) is bimodal and its switch times agree with the driver's lip-ring t_switch, with sharper transitions.
- **Data.** `samples_shear.h5` from `Simulations/PyFR_Staging_Continuation/`; check the line's length against 2π/Δk first.
- **Decision rule.** Switch times within T_b of the driver's, with a 10–90% width under the frequency-band route's 1.5 T_b, support the hypothesis. No bimodality with an adequate line rejects it.
- **Cost and risk.** Low once output exists; waits on the LES runs. A sharper t_switch would also tighten the continuation driver's saddle-node fit.

### T7. Two-tone IF formula checks

- **Hypothesis.** My derivation (section 2): the unweighted mean IF equals the stronger tone, and IF goes negative only if r·ω_weak > ω_strong.
- **Predictions.** Sweeping r from 0.1 to 0.99 at δ = 0.10 and 0.005: the mean IF matches the stronger tone to numerical precision. With the weaker tone higher, negative IF starts at r = ω_strong/ω_weak (≈ 0.909 at δ = 0.10); with it lower, never.
- **Decision rule.** Any departure beyond numerical error refutes the derivation.
- **Cost.** Minutes; low value, since two independent derivations already agree. The mean was checked numerically at r = 0.6 in the 2026-10-23 continuation, and the series argument in section 2 now proves it for all r < 1. What remains is the negative-IF threshold and the r sweep.

### T8. HPOD against direct `tcoeffs` coefficients and a fixed-mode projection

- **Hypotheses.**
  - H_coh (section 4): after `tcoeffs`, HPOD's only gain is a coherent, energy-optimal trace across the bins and modes of a band. Against it, H_direct: reading the convolution coefficients directly, or projecting the band onto one fixed mode, does as well.
  - H_Hilb: on a one-sided (analytic) reconstruction the Hilbert step changes nothing.
- **Methods compared** (all from the convolution route, `p.recon = "conv"`):
  - `Coef_pk`: the mode-1 convolution coefficient at the bin nearest each tone, with no reconstruction; this is what `tcoeffs.m` gives. Its band is the SPOD window's (1.36 bins), whatever B is.
  - `Fixed_sep` / `Fixed_comb`: the one-sided band reconstruction projected onto the leading SPOD mode at the band's most energetic bin.
  - `POD1s_sep` / `POD1s_comb`: POD of the one-sided reconstruction, i.e. HPOD_t without the Hilbert step.
  - `HPOD_sep` / `HPOD_comb`, on the real part of the same reconstruction.
- **Predictions.**
  - *Steady tone in its own band:* all agree in IF bias and spread, since a single-tone band holds one coherent structure. `Coef_pk` resolves switches only down to about its window, n_fft ≈ 4–8 T_b, whatever B is.
  - *One band holding both tones:* the fixed mode fits only the stronger tone's shape. With k = 2πf/c, the two shapes drift apart by about 2πδ·L_eff/λ radians, roughly 5.7 rad at δ = 0.10 and 0.3 rad at δ = 0.005 for a 9λ aperture (my arithmetic). So H_coh predicts that `Fixed_comb` weakens the weaker tone and the coexistence ripple at δ = 0.10, but not at δ = 0.005. H_direct predicts no difference.
  - *Hilbert step:* H_Hilb predicts `POD1s` = `HPOD` to numerical precision.
- **Varied:** as the T1 sweep (δ, SNR, L, B). **Fixed:** everything else.
- **Missing case.** The scenario has no frequency modulation, so "frequency moving across bins" is tested only through the two-tone band. A field version of T5's FM sweeps would test it directly; not yet built.
- **Analysis:** `run_t8_coef_compare.m` (full sweep to `Results_T8/`; `quick = true` for `Results_T8_quick/`). The component tests check the coefficient's IF and the one-sided reconstruction.
- **Decision rule.**
  - H_coh is supported if `Fixed_comb`'s ripple ratio falls below `HPOD_comb`'s by more than 2× at δ = 0.10 but not at δ = 0.005, and `Coef_pk`'s shortest resolved dwell stays near its window at every B.
  - H_direct is supported if `Fixed` and `Coef_pk` match HPOD within the count noise everywhere.
  - H_Hilb is supported if `POD1s` and `HPOD` agree to better than 10⁻³ relative in every metric.
- **Quick run (2026-10-23; δ = 0.10, 10 dB, L = 8λ, B = Δf and 4Δf, one schedule).**
  - `POD1s` matched `HPOD` to about 10⁻⁶.
  - `Fixed_sep` matched `HPOD_sep` at B = Δf, with 2.3× the IF spread at 4Δf.
  - `Fixed_comb`'s ripple was 0.18–0.22, against 0.44–0.56 for `HPOD_comb` (ratio to the exclusive baseline: 9 and 24, against 64 and 118).
  - `Coef_pk` resolved only dwells of 3 T_b or more (window 5 T_b), with IF spread close to `HPOD_sep`'s and an unexplained bias of 0.5% of Δf.
  - All consistent with H_coh and H_Hilb; the full sweep, including δ = 0.005, is not run yet.
- **Cost and risk.** Tens of minutes of compute. Risk: with near-equal tone energies the HPOD modes mix (Horel), which would penalise HPOD_comb rather than the fixed projection.

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

Topic pages: [time-frequency-methods](../Topics/time-frequency-methods.md) and its queue; [modal-decomposition](../Topics/modal-decomposition.md).

Notes:
- Signal theory: [Bedrosian 1963](../Notes/bedrosian-1963-product-theorem-hilbert-transforms.md), [Nuttall & Bedrosian 1966](../Notes/nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md), [Rife & Boorstyn 1974](../Notes/rife-1974-single-tone-parameter-estimation-discrete-time.md), [Cohen 1989](../Notes/cohen-1989-time-frequency-distributions-review.md), [Boashash 1992](../Notes/boashash-1992-instantaneous-frequency-fundamentals.md), [Huang et al. 1998](../Notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), [Rilling & Flandrin 2008](../Notes/rilling-2008-one-or-two-frequencies-emd-two-tones.md), [Huang et al. 2009](../Notes/huang-2009-on-instantaneous-frequency.md), [Daubechies, Lu & Wu 2011](../Notes/daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md), [Torrence & Compo 1998](../Notes/torrence-1998-practical-guide-wavelet-analysis.md)
- HPOD and modal methods: [Horel 1984](../Notes/horel-1984-complex-principal-component-analysis.md), [Sieber et al. 2016](../Notes/sieber-2016-spectral-proper-orthogonal-decomposition.md), [Kriegseis et al. 2021](../Notes/kriegseis-2021-hilbert-transform-revisited-hpod.md), [Nekkanti & Schmidt 2021](../Notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md), [Raiola & Kriegseis 2025](../Notes/raiola-2025-hilbert-pod.md) (published in Phys. Rev. Fluids 2026, doi 10.1103/bhlm-qwfh; the note describes the preprint), [Davey et al. 2025](../Notes/davey-2025-hpod-sphere-wake.md), [Oberleithner et al. 2011](../Notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md)
- Data for the proposed tests: [Towne et al. 2017](../Notes/towne-2017-acoustic-resonance-potential-core-subsonic-jets.md), [Towne et al. 2022](../Notes/towne-2022-database-reduced-complexity-modeling.md); the [HPOD switch benchmark](../../Codebase/HPOD_Switch_Benchmark/README.md) (T1)
- Applications: [Bell et al. 2021](../Notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), [Wong et al. 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), [Jeun et al. 2024](../Notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [Mazharmanesh et al. 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md)

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
- 2026-10-23: "What would settle it" rewritten as "Proposed tests" in the skill's new format. T1 (the synthetic switch benchmark, `Codebase/HPOD_Switch_Benchmark/`, run 2026-10-22) is recorded as done with its results. T2–T7 are proposed, with predictions and decision rules. The uncertainties table now points to test IDs, and T1 moved "time resolution of HPOD IF for a real switch" from unknown to supported (synthetic). A new row records the inverse-SPOD block floor. T1's results are not yet worked into the short answer or evidence sections, and nothing was queued for topic pages or notes.
- 2026-10-23: continued, to work in T1's results. No new papers: all requested papers were already indexed, and the 27 PDFs waiting in `_Unprocessed/` don't bear on the question (none was requested for it). T1's results were re-tabulated from the saved CSVs (`Results_invspod/`, `Results_conv/`), not only from the README. **What changed:**
  - **Time resolution** moved from unknown to supported (synthetic). Switch widths are (0.4–1)/B, but separation needs B ≲ 2Δf, so separate-band tracking stops near 1/Δf. This puts numbers on H2. The README's "close to the 1/B rule" is right for widths, but its "every switch ≥ 1.5 T_b at B ≤ 2Δf" didn't hold at B = Δf/2, which needs 3 T_b (now corrected there).
  - **The switching-versus-coexistence split (H3)** is now supported by simulation as well as theory. The ripple's first harmonic is r·Δf (new derivation in section 2; the benchmark measured 0.52–0.59 against 0.6). The unweighted-mean result is now proved for all r < 1.
  - **The POD precision gain** is now shown: 0.15–0.7 × the single-probe bound at 0–10 dB.
  - **New pipeline finding:** the block-wise inverse SPOD leaves an IF floor; convolution reconstruction removes most of it. This agrees with Nekkanti & Schmidt's own recommendation (p. 26) and departs from the topic page's checklist and the group's current code.
  - **Space for time** is still speculative; T1 was aperture-limited.
  - **New consequences for A1/A2 and the twin jets** in section 5.
  - **Overall view (H2 + H3) unchanged and firmer;** confidence in the practical rules raised to moderate–high, except the Carson cap and space for time.
  - Corrected two points in the benchmark README: "a hundredth of Δf" is a thousandth, and the separate-band summary now notes that B = Δf/2 needs about 3 T_b.
  - Queued for topic pages: `time-frequency-methods` (T1 answers its "How fast can a switch be resolved?" open question; checklist step 2; inverse-SPOD pitfall). Queued for notes: `nekkanti-2021-spod-reconstruction-denoising-frequency-time` (IF floor of block-wise inversion).
- 2026-10-23: added what HPOD adds when the band comes from `tcoeffs`, to the short answer and to section 4. In short: nothing for one bin and one mode; a coherent, energy-optimal cross-bin trace otherwise; and the Hilbert step is redundant on a one-sided reconstruction. Added test T8, with the methods built into the benchmark (`Coef_pk`, `Fixed_sep/comb`, `POD1s_sep/comb`; `run_t8_coef_compare.m`) and a quick run whose results agree with the reasoning. Two uncertainty rows added. The full T8 sweep has not been run. Nothing new queued for topic pages or notes until the full sweep is in.
