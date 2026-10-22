# Time–frequency methods: Hilbert POD, EMD, wavelets, SPOD reconstruction and intermittency tracking

_Last updated: 2026-10-22 · 21 papers_

## Scope
How to follow the amplitude, phase and frequency of coherent structures through time, rather than averaged over blocks. The page covers:
- the analytic signal, the Hilbert transform and instantaneous frequency (IF): definitions, exactness conditions and estimation limits;
- whether IF escapes the time–frequency trade-off;
- Hilbert POD (complex POD) in time and in space;
- empirical mode decomposition (EMD) and other IF estimators;
- wavelets, synchrosqueezing, quadratic time–frequency distributions and cross-wavelets;
- SPOD-based reconstruction, denoising and spectrograms;
- Sieber's time-filtered SPOD;
- how the library's resonance papers used these tools to track intermittency, mode switching and coupling.

It is organised around the group's SPOD → reconstruction → Hilbert POD pipeline (CLAUDE.md). The SPOD, BMD and DMD algorithms themselves are in [modal-decomposition](modal-decomposition.md). The physics of staging, coupling and switching is in [screech-staging-and-mode-switching](screech-staging-and-mode-switching.md), [twin-jet-coupling](twin-jet-coupling.md) and [impinging-jets-and-edge-tones](impinging-jets-and-edge-tones.md).

## Current understanding
1. **IF is the conditional mean frequency of an analytic signal.** Gabor built the analytic signal so that the frequency centroid is not trivially zero. He did not define IF, and called Carson and Fry's IF useful only "for slowly-varying frequencies" ([Gabor 1946](../Notes/gabor-1946-theory-of-communication.md), p. 431–434). The phase-derivative definition is Ville's ([Boashash 1992](../Notes/boashash-1992-instantaneous-frequency-fundamentals.md), eq. 18, p. 522). It equals the conditional mean frequency of every Cohen-class distribution whose kernel has φ(θ, 0) = 1 and ∂φ/∂τ|₀ = 0, the Wigner–Ville included ([Cohen 1989](../Notes/cohen-1989-time-frequency-distributions-review.md), eq. 4.30, p. 954; Boashash, eq. 75, p. 533). Its amplitude-weighted time average is the spectral centroid, and the squared bandwidth splits into the spread of the IF plus an envelope term (Cohen, eq. 8.7–8.9, p. 968–969; Boashash, eq. 82–83, p. 534). These are the identities that [Huang 1998](../Notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md) quotes as Cohen's (eq. 3.9–3.11). They follow from Gabor's moments (eq. 1.18–1.20, p. 434; derivation in the Gabor note).
2. **Exactness and meaningfulness are separate conditions.**
   - *Exact:* the analytic signal returns an imposed envelope r and phase φ if and only if the spectrum of r e^{iφ} vanishes below −f₀. "It is *not* necessary that x(t) be narrow band" ([Nuttall & Bedrosian 1966](../Notes/nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md), p. 1459). Bedrosian's product theorem is the sufficient AM case: the envelope's band must lie below the carrier ([Bedrosian 1963](../Notes/bedrosian-1963-product-theorem-hilbert-transforms.md), p. 868–869). This sharpens Huang 1998's "amplitude slowly varying" (p. 15): the requirement is spectral separation, not slowness.
   - *Meaningful:* the signal must hold one component. A local offset or a "riding" second component gives spurious or even negative frequency (Huang 1998, p. 12–14). Boashash is stricter: one invertible IF law and a large bandwidth–time product (BT > 10 assumed; p. 526–527).
   - A sum of two positive-frequency tones is analytic, so its Hilbert envelope and phase are exact, yet its IF belongs to neither tone (checks in the Bedrosian and Nuttall notes). Narrow-banding is therefore needed for meaning, not for exactness. In the library that step is one of:
     - Horel's band-pass weight W(ω) ([Horel 1984](../Notes/horel-1984-complex-principal-component-analysis.md), p. 1662);
     - EMD sifting;
     - a wavelet filter bank, as in synchrosqueezing ([Daubechies 2011](../Notes/daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md), eq. 2.11, 2.14, p. 7);
     - in our pipeline, a frequency-domain SPOD reconstruction ([Nekkanti 2021](../Notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)). Band-passed signals satisfy the Bedrosian and Nuttall conditions automatically ([Huang 2009](../Notes/huang-2009-on-instantaneous-frequency.md), p. 191).
3. **HPOD is POD of the analytic signal.** It descends from complex principal components (Horel 1984) through [Kriegseis 2021](../Notes/kriegseis-2021-hilbert-transform-revisited-hpod.md), the first fluids application. Kriegseis et al. stress that the analytic signal adds no information: HPOD only regroups what POD contains, merging each POD pair into one complex mode (p. 1). In a cylinder wake, about 95% of the energy is in one HPOD structure, against 50% and 46% in POD modes 1 and 2 ([Raiola 2025](../Notes/raiola-2025-hilbert-pod.md), p. 14–15).
4. **The transform direction decides what data HPOD needs.** With the Hilbert transform in time (HPOD_t), HPOD needs time-resolved data. On shuffled snapshots it quietly falls back towards POD: Kriegseis et al. first reported POD-like real parts with arbitrary imaginary parts (p. 2), and Raiola reproduced it (p. 15–16). With the transform along x (HPOD_x), it works on snapshot PIV but gives no dynamics (Raiola 2025, p. 15–16, 24; [Davey 2025](../Notes/davey-2025-hpod-sphere-wake.md), p. 35).
5. **HPOD reduces to SPOD for a stationary, homogeneous field of non-dispersive waves** (Raiola 2025, p. 11–13). This is consistent with Horel's statement that complex PCA is frequency-domain PCA averaged over frequency, and that the two are identical for one dominant frequency (p. 1661). What HPOD adds is time-local amplitude and frequency.
6. **All FFT-based tools have end effects.** Horel tapers about 10% at each end (p. 1662) and Raiola trims about 15% (p. 16). The inverse SPOD over-predicts in its first and last half-block (Nekkanti 2021, p. 12). Morlet wavelets have a cone of influence of √2 s ([Torrence 1998](../Notes/torrence-1998-practical-guide-wavelet-analysis.md), p. 65, 67). The root is Vakman's paradox: IF is local, yet the Hilbert transform needs the whole record (Boashash, p. 536; Cohen, p. 968).
7. **The trade-off belongs to the analysis window, and each method has one window parameter.** The uncertainty principle bounds only the spreads of the time and frequency marginals (Cohen, eq. 8.10–8.13, p. 970–971). Gabor's Δt·Δf ≥ ½ is likewise a bound on √(2π) times the rms widths (p. 434). A spectrogram is the signal's distribution smoothed by the window's, so its trade-off is the window's (Cohen, p. 963; eq. 6.29–6.30, p. 965). The window parameter is n_fft for SPOD spectrograms, the number of cycles for a Morlet wavelet, N_f for Sieber SPOD, and the reconstruction band for HPOD. To keep two components apart, the filter's relative bandwidth must be below their relative gap (Daubechies 2011, Theorem 3.3, Lemma 3.6, p. 8–11). The competing tones in resonant jets are 0.3–15% apart, so this choice decides what can be seen ([Wong 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 1, 7–8; [Mancinelli 2019](../Notes/mancinelli-2019-screech-prediction-upstream-modes.md), p. 6–7).
8. **IF does not beat the trade-off; it moves it into the narrow-banding step, and gains precision, not resolution** (see the thread below and the [research question](../Research_Questions/hpod-instantaneous-frequency-uncertainty.md)).
   - The band B caps how fast the IF and the envelope can move: σ_IF² + ⟨(A′/A)²⟩ ≤ (B/2)² (derived in the Cohen note from eq. 8.9). The Hilbert step's own floor is about one carrier period (the Nuttall note's checks of the p. 1459 condition), so the band binds first.
   - For one tone in white noise, the frequency can be known far more finely than the Fourier bin: σ_f·T_rec ≈ 0.39/√(ρN) above a bin-SNR threshold of about 9–14 dB ([Rife & Boorstyn 1974](../Notes/rife-1974-single-tone-parameter-estimation-discrete-time.md), eq. 17, 60, p. 592, 596–597; the rearrangement is the note's). The resolution, the ±1-bin mainlobe, does not improve with SNR (p. 595).
   - So an IF trace can show an *exclusive* switch between two tones in much less than 1/Δf, but it cannot show their *coexistence* (the Rife note's inference).
9. **Block-averaged spectra and SPOD cannot tell switching from coexistence.** Time-resolved tracking with a joint statistic can ([Raman 1998](../Notes/raman-1998-supersonic-jet-screech-review.md), p. 55–56; Mancinelli 2019, p. 7; [Mazharmanesh 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), p. 11). The answer differs between flows. A1 and A2 are exclusive in round jets (Mancinelli, p. 6–7; Mazharmanesh, ρ = −0.82, p. 11–12). The twin-jet "processes" of [Bell 2021](../Notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md) are uncorrelated and coexist (p. 16).
10. **Two detuned tones beat, and the beat looks like intermittency or alternating coupling in any narrow-band envelope.** The test is that the envelope period equals 1/Δf (Wong 2023, p. 18, 36; [Esfahani 2021, coupling](../Notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md), p. 10–11). Mandel's closed form gives the IF of the pair: it ripples at Δf, entirely on the stronger tone's side of the midpoint (Boashash, eq. 30, p. 523). In the Wigner distribution the beat is the cross term at the midpoint frequency (Cohen, eq. 5.23, p. 960). The Hilbert transform of the pair is exact (point 2), so the ripple is a property of the signal. EMD keeps close tones as one IMF ([Rilling 2008](../Notes/rilling-2008-one-or-two-frequencies-emd-two-tones.md), p. 4, 6), and Huang 2009 treats them as one AM–FM component by choice (eq. 44, p. 220).

## The analytic signal: when instantaneous frequency means something
**Construction.** Gabor's complex signal suppresses the negative-frequency amplitudes and doubles the positive ones; its imaginary part is the Hilbert transform of the real part (eq. 1.6–1.8, p. 432–433). It depends on the whole record, future included (p. 439–440). Boashash traces IF from Carson and Fry's FM law to Ville's f_i = (1/2π) d arg z/dt (p. 521–522). He also records two objections: the split into amplitude and phase is not unique (Shekel), and IF and Fourier frequency share only their means (Mandel) (p. 523).

**Exactness.** Two short letters settle when the analytic signal returns a physical envelope and phase:
- **Bedrosian's product theorem:** H[fg] = f·H[g] when f is low-pass and g high-pass with non-overlapping spectra, or when both are analytic (eq. 1, p. 868). So H[r cos(ω₀t + φ)] = r sin(ω₀t + φ) if the spectrum of r lies below ω₀ (p. 869). In the note's check, AM at any rate up to the carrier frequency is returned to round-off.
- **Nuttall:** for imposed AM and PM the error energy is exactly E = 2∫_{−∞}^{−f₀}|F|² df, with F the spectrum of r e^{iφ}, and it sits mainly near zero frequency (p. 1459). In his reply Bedrosian generalises his theorem to one-sided spectra and calls narrow-band signals "merely a special case" (p. 1459).
  - The Nuttall note's checks: AM is exact up to f_m = f₀; the FM error stays small while Δf + f_m ≲ f₀; Gaussian bursts are essentially exact for σ_t ≳ 0.5 carrier periods.
  - Its first-order derivation shows the error as a carrier-rate ripple of relative size |d|/r in envelope and IF, largest where the envelope dips. That ties it to Huang's offset circle (below) and to Horel's warning that the transform emphasises spikes and edges (p. 1662).
- Boashash restates Nuttall as his Theorem 1 and adds Jones's large-BT theorem for a monotonic positive IF (p. 529). At small BT the analytic signal leaks into negative frequencies, with a "destructive" effect on the IF (BT = 0.4 against 25.6, Figs 10–11, p. 530–532).

**Meaningfulness.** Huang 1998 is the reference for the single-component condition. The phase portrait of α + sin t is a circle offset by α. For 0 < α < 1 the IF fluctuates spuriously, and for α > 1 it goes negative (p. 12–13). Boashash's conditions are stricter than Huang's IMF criterion:
- a monocomponent signal has one single-valued, invertible IF law, so a non-monotonic law counts as multicomponent (Def. 1–2, Fig. 3, p. 527);
- IF is a physical time–frequency law, the inverse of the group delay, only for BT ≫ 1 (BT = 3.2 against 125 in Fig. 6, p. 527–529);
- the split into components is non-unique and application dependent (p. 527, 535);
- the practical test is whether the energy at an instant is spread about one frequency or about two (p. 535), so it inherits the resolution of the distribution used.

The spread about the IF is the instantaneous bandwidth. For kernels with φ″(0) = ¼ it is |A′/A|, so a constant-amplitude signal has none (Cohen, eq. 4.39, p. 955; Boashash, eq. 81, p. 534).

**EMD and the two-tone limit.** EMD sifts data into locally symmetric intrinsic mode functions (IMFs) before the Hilbert transform. Several of Huang 1998's practical numbers carry over to HPOD:
- At least five samples per period are needed (p. 89).
- Amplitude modulation alone causes about ±1.5% of spurious frequency wiggle (p. 39, 42).
- Two tones at 1/30 and 1/34 Hz could not be separated even after 3000 siftings (p. 45–47).

[Rilling 2008](../Notes/rilling-2008-one-or-two-frequencies-emd-two-tones.md) explains the last failure. For cos 2πt + a cos(2πft + φ) with af < 1, EMD is a linear high-pass filter with a *relative* cutoff f_c(n) ≈ [1 + (ln 2/n)^{1/4}]⁻¹: about 0.66 after 10 siftings, 0.78 after 100 and 0.89 after 3000 (eq. 8–9, p. 11–12). Record length does not enter (p. 4–5). Huang's ratio 30/34 = 0.88 needs about 2200 siftings for half separation (the note's calculation), so the cause is the frequency ratio, not Δf·T ≈ 2. Two further results matter for tonal jet signals:
- When the lower tone dominates the curvature (af² > 1), EMD never separates the pair. Near f = 1/(2k) it creates a spurious component at f_a = 2k_f f − 1, with its own IF (eq. 12, p. 13–15).
- EMD's resolution is constant-Q, and quasi-dyadic for noise (p. 3, 17). By the note's numbers A1/A2 (f ≈ 0.91) would need about 7000 siftings, and twin-jet symmetries far more. For these tones the narrow-banding step should be SPOD reconstruction.

Huang 2009 withdraws the 3000-sifting split as "unnecessary and unsatisfactory" (p. 219). It agrees with Rilling on what EMD does but not on whether to separate. To Huang et al. a beat is one AM–FM component, with carrier (a + b)/2 and envelope (a − b)/2, and the second frequency is recovered from an "AM spectrum" (eq. 44, p. 220–222).

**IF estimators beyond the Hilbert transform.** Huang 2009 separates the two ways the analytic signal fails on IMFs:
- *Bedrosian:* envelope and carrier spectra overlap (eq. 24, p. 189), which happens in IMFs unless they are band-passed (p. 189, 205);
- *Nuttall:* H{cos φ} ≠ sin φ (eq. 25–28, p. 190), which depends on the phase function and survives normalisation.

The fix is a spline-based AM–FM split, iterated two or three times until |F| ≤ 1 (eq. 29–33, p. 191–195). IF then comes from the Hilbert transform of the unit-amplitude carrier (NHT), with a local error index [|z| − 1]² (eq. 36, p. 198), or from "direct quadrature" (DQ), √(1 − F²), with no transform at all (eq. 34–35, p. 196). The test signal is a damped, chirped Duffing-type model with a known IF (eq. 42):
- DQ matches the truth.
- NHT removes negative IF but under-modulates the intrawave swing: about 0.018–0.037 Hz against 0.011–0.046 Hz (Fig. 17, p. 208).
- The raw Hilbert transform goes negative, to about −0.06 Hz.
- The Teager energy operator (TEO) collapses wherever the waveform is distorted, which makes it a nonlinearity detector (p. 201, 213).
- The generalised zero-crossing (GZC) count gives only a quarter-period mean. Even so, an IF that differs grossly from it in the mean "cannot be correct" (p. 202).

DQ needs dense sampling: it deviates at about 22 samples per period (the note's estimate), far above Huang 1998's five.

**Harmonics.** Huang 1998 argues that Fourier band-passing of nonlinear data imports spurious harmonics (p. 12). In his view a distorted wave is one IMF with *intrawave* frequency modulation, not a fundamental plus harmonics (p. 15–16, 35–41). Horel's matching warning is that the Hilbert transform of a pulse peaks at its edges. Spikes and sharp transitions therefore dominate complex correlations unless both u and its Hilbert transform are low-passed (Horel 1984, p. 1662).

**Sign conventions differ.**
- The Horel note's own check is that Horel's û is minus the MATLAB `hilbert` transform.
- Bedrosian's eq. 3 uses H[e^{ibx}] = +i sgn(b) e^{ibx}, i.e. H[cos] = −sin. His AM paragraph uses H[cos] = +sin, the convention of Nuttall and MATLAB (Bedrosian, p. 869; Nuttall, p. 1459).
- Gabor's text maps cos to sin, but his printed kernel, as read from the scan, gives the opposite sign (Gabor note, p. 433).
- Raiola finds that HPOD_t and HPOD_x modes are complex conjugates of each other (p. 19).

Fix the convention before reading the sign of a phase speed.

**Modelling side.** Huang 1998 checks IMF frequencies against theory: the Hamiltonian average for the Duffing oscillator and the linearised eigenvalue for the Lorenz system (p. 49, 56). This is the same comparison we make between measured tones and stability predictions.

## Does instantaneous frequency beat the time–frequency trade-off?
HPOD gives a frequency at every sample, which seems to escape the trade-off. The [research question](../Research_Questions/hpod-instantaneous-frequency-uncertainty.md) on this point drew in the signal-processing sources above. They answer it in three parts.

**What the uncertainty principle bounds.** Gabor's Δt·Δf ≥ ½ is about √(2π) times the rms spreads of |ψ|² and |φ|², with equality only for a Gaussian (eq. 1.21–1.26, p. 434–435, 440–441). He treats the centroids as references that "do not count as data" (p. 434). He also refuses to draw an FM path as a sharp curve: it "has to be thick and blurred", in cells whose aspect ratio is a convention of the analysis (Fig. 1.12, p. 438). Cohen makes the point general. The principle concerns only the marginals, and says nothing about joint distributions or about measurements at small times and frequencies (eq. 8.10–8.13, p. 970–971). As a spectrogram's window shrinks towards a delta, its conditional mean tends to φ′(t) while its spread grows without bound (eq. 6.5–6.7, p. 963).

**Where the trade-off goes: the narrowing step.**
- *Separation.* Synchrosqueezing reassigns CWT energy along frequency only, to ω(a, b) = −i∂_bW/W. That is the analytic-signal IF of the band-passed signal averaged over the wavelet (eq. 2.2–2.14, p. 6–8). Take AM–FM components with slow modulation (|A′|, |φ″| ≤ εφ′) and relative gap d. A wavelet of Fourier half-width Δ < d/(1 + d) then gives each component's IF to within ε^{1/3} at every time (Theorem 3.3, p. 8–9). The proof rests on at most one component per passband (Lemma 3.6, p. 11). Synchrosqueezing is therefore a filter bank followed by Hilbert IF, the formal analogue of SPOD reconstruction → HPOD (the Daubechies note's reading).
- *Rate.* The band B caps the RMS IF excursion and envelope rate at B/2 (point 8). Gabor's counting rule gives the same picture. A band B over a time T carries 2BT real data (p. 430), and the shortest signal through an ideal band B has Δt ≈ 1.25/B and lasts about 2/B (eq. 1.37, p. 437–438). The research question infers that successive IF samples are independent only about every 1/B.
- *Hilbert floor.* The Hilbert step itself allows modulation down to about one carrier period (the Nuttall note's checks), so any tone reconstruction binds first.

**What IF genuinely gives: precision.** For one complex tone with unknown phase, the Cramér–Rao bound is var{ω̂} ≥ 12σ²/[b₀²T²N(N²−1)], with T the sampling interval (Rife & Boorstyn, eq. 17, p. 592). The maximum-likelihood estimate is the peak of the zero-padded periodogram (M = 2–4N) refined by a fine search, so careful FFT-peak interpolation is near-optimal (p. 593–595, 598). Below a bin SNR Nρ of about 9–14 dB, noise peaks win and the error jumps to a uniform-guess level (eq. 60, Fig. 3–4, p. 596–597). The two-tone and real-tone cases are deferred to Rife's thesis (p. 591, 598), so resolution stays with Rilling 2008 and Daubechies 2011. Gabor's hearing analysis anticipated the distinction. He posited a mechanism that "locates the centre of the resonance region with a precision increasing with the duration" (p. 444), yet the measured thresholds stay above about two elementary areas (p. 442–443).

**The strongest case for "IF beats it"** is Huang 2009. It argues that the uncertainty principle binds only integral transforms, so a phase derivative computed without one escapes it (p. 178, 184). DQ indeed recovers sub-period frequency modulation (p. 205–210). But every IF method there needs a monocomponent signal (p. 185), and "when we change the decomposition method, the IF will also change" (p. 223). The locality of the analytic-signal IF that HPOD uses is left unquantified (p. 224). The paper's "fully local" claims apply to DQ (p. 196), not to HPOD.

**Two tones in one band.** With r = a₂/a₁ and Δω = ω₂ − ω₁, the IF is ω₁ + Δω(r² + r cos Δωt)/(1 + r² + 2r cos Δωt). This is Mandel's eq. 30 in Boashash (p. 523) rewritten about ω₁, and the conditional mean of Cohen's two-tone Wigner (eq. 5.23, p. 960; the Cohen note's algebra). Two further results are derivations from the research question, checked in the Boashash and Rilling notes but stated in no source:
- the unweighted time mean of the IF is the stronger tone's frequency;
- the IF goes negative only when the weaker tone is the higher one and r·ω_weak > ω_strong.

They suggest an A1/A2 exclusivity test to set beside Mazharmanesh's JPDF (p. 11). Reconstruct one band holding both tones. IF plateaus with a steady envelope would mean switching; a ripple at Δf would mean coexistence.

**Hypothesis (the research question's reasoning, untested): space for time.** For advecting waves the field-of-view length L may stand in for record length, giving Δf ≈ c/L, through Raiola's reduction to SPOD (p. 11–13). Three observations are consistent with it:
- Sieber's best filter spanned about one convective transit ([Sieber 2016](../Notes/sieber-2016-spectral-proper-orthogonal-decomposition.md), p. 17).
- Horel's pulses, short compared with the transit time, were captured poorly (p. 1668–1670).
- Rife's bound is the same as Brennan's phased-array bound (p. 592).

It fails for flows with more than one phase speed, which is the resonant case (Raiola, p. 13).

## Hilbert POD in time and in space
**Origin.** The method runs from [Horel 1984](../Notes/horel-1984-complex-principal-component-analysis.md), through [Kriegseis 2021](../Notes/kriegseis-2021-hilbert-transform-revisited-hpod.md), to [Raiola 2025](../Notes/raiola-2025-hilbert-pod.md). Horel's synthetic tests set its character:
- One complex PC holds a travelling wave that real PCA splits 54/46% (p. 1665–1666).
- A standing wave at another frequency gets its own mode (73/27%, p. 1667).
- Unrelated regions give spurious domain-wide modes (p. 1667–1668).
- Irregular short pulses are captured poorly: 75% in the first mode, with spurious events at the domain edges (p. 1668–1670).

So HPOD handles modulation of a quasi-periodic structure well and isolated bursts badly. Complex PC phases are arbitrary, so lead and lag between fields need one joint decomposition (p. 1663).

Kriegseis et al. made each point and component analytic along the snapshot sequence, then ran snapshot POD on the complex data (p. 1). HPOD merged the POD pairs automatically in candle-flame schlieren, plasma-actuator PIV and side-channel-pump stereo PIV (1C to 3C data; p. 2). They transformed raw data without narrow-banding (p. 1–2). But each test flow was dominated by one periodic process, and no IF was computed, so this does not contradict point 2. The two-page abstract gives no numbers and does not discuss edge effects.

**HPOD_t on time-resolved data.** Raiola proves that HPOD_t temporal modes contain only positive frequencies (p. 10–11). This contradicts Horel's claim that complex PCs are not Hilbert pairs (p. 1663); the Horel note attributes his claim to finite, tapered records. In an M 0.9 jet LES, the HPOD temporal modes leave the unit circle. Their STFT spectrograms show active bursts at a preferred frequency, separated by quiet periods, which SPOD would spread over several frequencies and modes (p. 3, 19–21).

**HPOD_x on snapshot data.** HPOD_x gives the same modes on shuffled snapshots as on ordered ones (Raiola 2025, p. 15–16), and its temporal coefficients from jet PIV fill a disc at random (p. 24).

[Davey 2025](../Notes/davey-2025-hpod-sphere-wake.md) applies HPOD_x to 12,600 PIV fields of a sphere wake taken at 1 Hz:
- HPOD needs about 0.58× as many modes as POD to reach 25–95% of the turbulent kinetic energy (p. 10).
- It identifies the POD pairs 1–2, 4–5, 6–8 and 9–10.
- A cheaper test finds the same pairs: Hilbert-transform each POD mode in x and keep the mutual best matches at ∓0.5π (p. 12–14, 19–21).

Davey also lists HPOD_x's artefacts (p. 11–18, 34):
- it suppresses non-propagating content near the body;
- it makes the modes look more symmetric than the data;
- it distorts the modes at the domain ends;
- the cheaper test "forcibly propagates" structures that may not propagate.

Raiola presents the choice of direction as a deliberate filter for waves moving that way (p. 13, 26). Both notes infer that in screeching or impinging jets, an HPOD_x along +x would suppress, or fold in, the upstream guided-jet waves and the standing-wave pattern ([Edgington-Mitchell 2020](../Notes/edgington-mitchell-2020-waves-in-screeching-jets.md)). This is untested. The Bedrosian theorem applies along x too: a wavepacket that grows and decays within about one wavelength cannot have an exact HPOD_x envelope and local wavenumber (the Bedrosian note's inference).

**Limits of the theory.** The reduction to SPOD assumes a non-dispersive wave equation (Raiola 2025, p. 13). Systems with several dispersive waves, such as KH plus guided modes, lie outside the proof.

## SPOD reconstruction, filtering and spectrograms
[Nekkanti 2021](../Notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md) covers step 2 of the pipeline. It compares two ways of reconstructing data from SPOD modes:
- **Time-domain oblique projection.** It gives the better low-rank snapshots: 75% error against 84% with one mode per frequency, and 15% against 33% with ten modes (p. 14). But it mixes frequencies and reconstructs noise (p. 14, 25).
- **Frequency-domain inverse SPOD.** It keeps each mode at its own frequency, so only it suits denoising and frequency–time analysis (p. 26). Three practical points:
  - Stitch overlapping blocks with the window-weighted mean, which cuts the 1 × 129 error from about 145% to about 36% (p. 26–27).
  - Drop the over-predicted first and last half-blocks (p. 12).
  - The Hamming window leaks energy from retained into other modes. A rectangular window with no overlap removes this leakage but brings spectral leakage instead (p. 13–14, 27).

Two further uses come from the same paper:
- **Denoising.** Hard-thresholding the eigenvalues just above the noise floor keeps 74 of 9933 modes and 92.7% of the clean energy at a lipline SNR of 1 (p. 15).
- **SPOD spectrograms.** Convolving the modes with the data gives time-continuous coefficients without the 3.6 TB that a sliding-window SPOD would need (p. 18–19). In the M 0.4 jet, bursts of the leading modes coincide with peaks of total energy (p. 19–20).

The Nekkanti note infers that a single-bin reconstruction can only change amplitude and frequency from one block to the next. HPOD on it is therefore smoothed over about n_fft; keep neighbouring bins if faster switching matters. For the same reason its HPOD IF cannot show the sub-bin precision that Rife and Boorstyn allow. A precise frequency must come from the phase across blocks or from a band wider than one bin (the Rife note's inference). Huang's critique also implies that reconstructing only the fundamental strips the intrawave modulation of a strongly nonlinear tone, so harmonic bins should be included when waveform shape matters (an inference in the Huang note).

**Resolving close tones.** Sharp peaks converge slowly with Welch SPOD ([Towne 2018](../Notes/towne-2018-spod-relationship-dmd-resolvent.md), p. 23). Wong needed NFFT = 9600 to split St 0.632 from 0.636 (p. 22). Two newer SPOD variants keep tones sharp with shorter records, but neither has been tested as input to a reconstruction:
- adaptive multitaper SPOD ([Yeung 2024](../Notes/yeung-2024-adaptive-spod-broadband-tonal.md), p. 16);
- band-ensemble SPOD with frequency attribution ([von Saldern 2026](../Notes/von-saldern-2026-band-ensemble-spod.md), p. 22, 28–29).

**Sieber's SPOD as a one-step alternative.** [Sieber 2016](../Notes/sieber-2016-spectral-proper-orthogonal-decomposition.md) filters the snapshot correlation matrix along its diagonals (p. 5–6):
- **Output.** Pairs of smooth coefficients form an analytic signal, b_i + i b_j, which gives instantaneous amplitude and frequency directly (eq. 2.26, p. 8).
- **The filter width N_f** plays the role of the reconstruction bandwidth. One to three periods of the target mode worked best; in the Gurney-flap case three periods were about one convective transit through the field of view (p. 16–17). The note flags an ambiguity in how N_f is defined.
- **Intermittency.** In the Gurney-flap wake, an intermittent event of varying frequency fell into one pair, while the DFT showed nothing (p. 16–17).
- **Caveats.** The method rests on a locally linear, *normal* model (p. 6–9), but jets are strongly non-normal. Pairing can produce spurious pairs (p. 11).

## Wavelets, synchrosqueezing, quadratic distributions and coherence for point signals
[Torrence 1998](../Notes/torrence-1998-practical-guide-wavelet-analysis.md) supplies what the resonance papers rarely report:
- **Scale to period.** For a Morlet wavelet with ω₀ = 6, the equivalent Fourier period is 1.03 times the scale (p. 67–68).
- **Edge effects.** The cone of influence is √2 times the scale (p. 65, 67).
- **Significance.** Wavelet power is χ²₂-distributed about a white or AR(1) background (p. 69–70). About 5% of a pure-noise map exceeds the 95% level, so the evidence is significant regions that cluster, not their total area (p. 71).
- **Band power.** Scale-averaged power gives a time series of band variance with known degrees of freedom (p. 73–74).
- **Coherence.** Unsmoothed wavelet coherence is identically 1, so coherence maps depend on how they were smoothed. The cross-wavelet phase is the robust output (p. 75–76).

The Torrence note estimates the default Morlet's relative bandwidth at about 17%, enough to blur A1 and A2 together. The papers that tracked close tones used narrower or tunable wavelets:
- Wong used complex Morlet wavelets with c = 600 cycles to resolve shifts of 0.3–0.6%, and c = 3 to resolve beats (p. 7–8).
- [Jordan 2018](../Notes/jordan-2018-jet-flap-interaction-tones.md) used a bump wavelet with μ = 5 and σ = 0.6 (p. 16–17).
- [Stavropoulos 2026](../Notes/stavropoulos-2026-jet-edge-interaction.md) used the same wavelet, written as σ = 1/0.6 under the reciprocal convention (p. 25–26).
- Mancinelli 2019 gives no bump parameters.

**Synchrosqueezing** ([Daubechies 2011](../Notes/daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md)) collapses a CWT's smeared ridges onto lines at the IF and stays invertible, so each component can be rebuilt by integrating over its band (eq. 2.4–2.7, p. 6–7; Theorem 3.3, p. 8–9). It reassigns energy only in frequency (p. 6), so a switch is still localised only to about the wavelet's duration. It fails where components cross, because the separation condition then breaks (Fig. 8–9, p. 17–18). Since the wavelet's relative bandwidth must be below the tones' relative gap, synchrosqueezing a default Morlet would still not split A1 from A2 (the note's arithmetic). The examples are a chirp in noise down to −12.55 dB SNR and ECG heart-rate tracking (p. 16–21); there are no flow data.

**Quadratic distributions** ([Cohen 1989](../Notes/cohen-1989-time-frequency-distributions-review.md)). The Wigner–Ville distribution gives the IF and the group delay exactly as conditional means. Its costs:
- cross terms: two tones add 2A₁A₂cos Δωt at the midpoint frequency (eq. 5.23, p. 960);
- nonlocality: noise from a short stretch appears at other times (Fig. 6, p. 959);
- noise: its variance in white noise is infinite unless out-of-band frequencies are filtered first (p. 962–963).

Choi–Williams spreads the cross term over a width ∝ |Δω|/√σ and so can suppress it (eq. 3.89–3.91, p. 951). A positive distribution such as the spectrogram gives only a smeared IF (Boashash, p. 534); by extension, scalogram ridges are resolution-limited estimates of the IF. For separating two components, Jones and Parks found a spectrogram with an optimally matched window better than the Wigner or smoothed Wigner (Cohen, p. 977).

Both Esfahani papers report wavelet coherence without the smoothing or cone-of-influence details that Torrence shows to be decisive (coupling p. 7; [control](../Notes/esfahani-2021-control-twin-rectangular-jet-coupling.md) p. 7). Wong found the CWT of raw schlieren pixels too noisy and fed it a POD coefficient instead, using POD as a spatial filter (p. 9). Bell rejected the STFT as too coarse in time and chose band-pass Hilbert over wavelets, after Huang (2014) (p. 10).

Raman's "instantaneous spectra", short-time FFT waterfalls, were the earliest screech example of this kind of tracking (p. 55–56). Huang sets the limits of wavelets: they resolve tone-to-tone changes but not intrawave modulation, and in his test they locate a sudden frequency switch less sharply than the Hilbert spectrum (p. 6–7, 42–44).

## Tracking intermittency and mode switching: what the library did

| Paper | Flow, data | Tool | Finding |
|---|---|---|---|
| [Raman 1998](../Notes/raman-1998-supersonic-jet-screech-review.md) | rectangular jets, mics | short-time FFT, Morlet, bicoherence | tones coexist or alternate depending on nozzle; Walker's coexist (p. 55–59) |
| [Jordan 2018](../Notes/jordan-2018-jet-flap-interaction-tones.md) | jet–flap, mic | bump CWT | one dominant loop, slow or fast switching, or coexistence (p. 16–17) |
| [Mancinelli 2019](../Notes/mancinelli-2019-screech-prediction-upstream-modes.md) | round jet, m = 0 array | bump CWT, envelope PSD | A1↔A2 exclusive near M_j 1.12, dwell 1–4 s; envelope modulated at St₂ − St₁ ≈ 0.069 (p. 6–7) |
| [Esfahani 2021, coupling](../Notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md) | AR 2 twin jets, mics | Morlet coherence | "intermittent" screech at M_j 1.35 is a 33 Hz beat (p. 8, 10–11) |
| [Bell 2021](../Notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md) | round twin jets s/D 3, opposing mics; 0.5 Hz PIV | 200 Hz band-pass + Hilbert, envelope–phase JPDFs; conditional POD | two or three uncorrelated, coexisting processes; dips below μ − 5 dB ≈ 20% of the time, lasting 5–15 cycles; jets couple either way or oscillate alone (p. 10–28) |
| [Wong 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md) | twin round jets, TR schlieren | symmetry-split POD → CWT, SPOD, conditional POD | steady, SS↔SA switching (0.30–0.63% St shift) and uncoupled states; illusory coupling (p. 1, 16–22, 36) |
| [Jeun 2024](../Notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) | AR 2 twin jets, LES | Hilbert phase difference, D2 amplitudes | out-of-phase plateaus broken by AA/AS competition (p. 9–10) |
| [Mazharmanesh 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) | round, elliptical jets, 150 kHz schlieren | SPOD spectrogram, JPDF, St = 0 coefficient | A1/A2 exclusive (ρ = −0.82); each loop has its own short-time mean (ρ = 0.96 / −0.82) (p. 11–12) |
| [Nogueira 2026](../Notes/nogueira-2026-flapping-motion-screeching-round-jets.md) | heated round jet, LES | phase of SPOD expansion coefficients | m = ±1 phase difference drifts with the m = 2 streak phase: the flapping axis precesses (p. 18–24) |

**Switching or coexistence.** Mazharmanesh made Mancinelli's observation into a test. The JPDF of the two tones' spectrogram amplitudes has corner peaks, and the paper notes that "intermittency alone does not imply exclusivity" (p. 11). Their window spans about 78 screech cycles (the note's estimate), and windows that straddle a switch form a ridge in the JPDF (p. 11). Bell's joint amplitude histograms, between microphones and between processes, are the same kind of test (Figs 9, 10, 12; p. 14–19). They give the opposite answer: at NPR 5.0 process 3 never drops out while processes 1 and 2 come and go (p. 16). The flows differ, though: these are twin-jet m = 1 processes, not single-jet A1/A2. [Ponton 1992](../Notes/ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md)'s "coexisting" B and C tones with a thick lip come from averaged spectra only (p. 538).

**Labelling states.** Four approaches appear:
- Wong picked cycles from the scalograms and ran POD on each subset. This gave clean SS and SA pairs that POD of the full record mixed (p. 19–20).
- Jeun kept only the phase-locked plateaus, at the cost of 2–4 SPOD blocks and ΔSt = 0.007 (p. 11).
- Mazharmanesh used the St = 0 SPOD coefficient as the state label (p. 12).
- Bell conditioned 0.5 Hz PIV on the upper quartile of each jet's POD-pair amplitude. When both jets oscillate strongly they form symmetric or antisymmetric coupled pairs, never both at once (p. 23–28).

In SPOD, competition between states shows up as a large suboptimal eigenvalue at the transitional frequency (Wong 2023, p. 22, 26).

**Azimuthal phase.** A single viewing plane cannot tell m = +1 from m = −1. The helicity reversals reported by [Edgington-Mitchell 2023](../Notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md) needed a six-view tomographic measurement (p. 4). In data without an azimuthal decomposition, a precessing flapping mode splits the screech peak across SPOD modes 1 and 2 (Nogueira 2026, p. 21–22).

**Without time resolution.** [Weightman 2019](../Notes/weightman-2019-sound-production-impinging-supersonic-jets.md) found an unpaired "shear thickness mode" in PIV POD:
- Its coefficient correlates at 0.74 with the amplitude of the helical pair, against less than 0.15 for every other mode (p. 47).
- Its quintiles change the shear-layer thickness by up to 27% (p. 48–49).
- It therefore measures amplitude intermittency, but it gives no frequency.

[Knast 2018](../Notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md), working with Welch phase, could only hypothesise switching from the scatter (p. 5, 8). Bell's conditional POD shows how far pair magnitudes can go (p. 23–28). But the empty corners of its exclusivity plot (Fig. 21) follow partly from the selection, since |S|² + |A|² = |L|² + |U|². The real information is the spread of inter-jet phase along the arc (the Bell note's derivation). HPOD_t on symmetry-split SPOD reconstructions of time-resolved schlieren would measure that phase directly (the note's suggestion).

**Models behind the tracking:**
- Mancinelli's resonance model bounds the A1 and A2 bands, and the St₂ − St₁ modulation points to quadratic interaction (p. 7).
- Wong's lower SS frequency matches twin-jet stability predictions (p. 19).
- Bell's only model is St = u_c/λ_D with u_c = 0.6u_j, which reproduces the two coupled tones to within 0.01 (Table 2, p. 25–27).
- Nogueira's Floquet-in-azimuth stability analysis predicted flapping and wagging modes locked to the streaks, which the phase tracking confirmed (p. 7–12, 20–21).
- Torrence's AR(1) null model and the jitter (coherence-length) model of [Cavalieri 2019](../Notes/cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) (p. 14–15) set the background against which bursts and loss of coherence should be judged.

## Disagreements and open questions
- **Harmonics: physical modes or intrawave modulation?** Huang 1998 treats harmonics as artefacts of Fourier superposition (p. 15–16, 33–41). Rilling and Flandrin side with him: EMD keeps a dominant fundamental and its odd harmonics as one IMF, which they present as a feature (p. 8, 14, 18). Bicoherence and BMD treat harmonics as quadratic triads ([Kim 1979](../Notes/kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions.md), p. 123; [Schmidt 2020](../Notes/schmidt-2020-bispectral-mode-decomposition.md), p. 23–24). The newer sources call the two readings equivalent representations:
  - Huang 2009 itself: "the same data from two different viewpoints", chosen for familiarity, not correctness (p. 221–223);
  - Boashash, citing Shekel and Priestley (p. 523);
  - Daubechies et al.: three tones that are equally one AM tone, with "no universal solution" (eq. 1.3, p. 4).

  What remains is practical: do harmonic bins belong in the HPOD input? If they do, the analytic-signal IF under-modulates the intrawave swing, and DQ would be needed (Huang 2009, Fig. 17, p. 208). To settle it, run HPOD on reconstructions with and without the harmonics, alongside BMD of the same record.
- **Is IF bound by the uncertainty principle?** Huang 2009 says no: a phase derivative computed without an integral transform is not bound (p. 178), and DQ recovers sub-period modulation (p. 205–210). Cohen places the principle on the marginals and windows only (p. 970–971). Boashash gives IF physical meaning only for BT > 10 (p. 526–527). Each side concedes the other's core point. Huang 2009 accepts the monocomponent requirement and that the IF depends on the decomposition (p. 185, 223–224). Cohen accepts that φ′ exists pointwise as a conditional mean (p. 954). The dispute is over what "frequency" should mean, not over resolving power. The strong form of Huang's claim applies to DQ, not to the analytic-signal IF that HPOD uses (p. 224).
- **Does HPOD_x work for flows with feedback?** Raiola sees the directional filter as a feature (p. 13, 26). Davey shows it removing real structure and adding spurious structure (p. 34). Neither tested upstream waves. To settle it, compare HPOD_t and HPOD_x with SPOD modes filtered by streamwise wavenumber on time-resolved schlieren of a screeching jet.
- **Supply pressure or competing attractors?**
  - Wong's fine NPR sweeps change monotonically at s/D = 3, consistent with supply drift, but non-monotonically at s/D = 4, which suggests stochastic switching between attractors (p. 39–41).
  - Mazharmanesh shows that a supply drift can mimic a correlation between tone and mean flow (ρ = −0.49, p. 26–28).
  - To settle it, log plenum pressure synchronised with the record and condition the HPOD amplitudes on it.
- **Beating, interrupted coupling or fading?**
  - At M_j 1.35, Esfahani (coupling) reports a 33 Hz mismatch and a phase that wraps every 0.030 s (p. 8, 10–11). Esfahani (control) reports tones at 8.25 and 8.40 kHz, with in-phase coupling interrupted at about 123 Hz and "no phase drift" (p. 10). Wong's beat test, applied to separate signals from each jet, would decide.
  - Bell reads its interruptions as competition between two global modes (p. 29). The Bell note's null model suggests ordinary fading instead. A narrow-band Gaussian signal has a Rayleigh envelope with σ = 5.57 dB and spends 16–22% of the time below μ − 5 dB. Process 2 matches: σ ≈ 5.5–6.0 dB, and about 24, 20 and 16% of the time below μ − 4, −5 and −6 dB (Figs 23, 27). So the "interruptions" may be the fading of a stochastically driven, damped resonance, not on/off switching.
  - The Bell method has three further gaps. The filter type and order are not given, and 5–15-cycle events are shorter than the ≈ 5 ms envelope time scale of an ideal 200 Hz band. There is no beat test, although processes 1 and 2 are only ≈ 0.02 apart in St. Each microphone is assumed to hear only its nearer jet (p. 14), and cross-talk with a wandering inter-jet phase could produce the corner and fan shapes on its own.
  - Threshold statistics need such a null, as wavelet power needs Torrence's χ² background (p. 69–71). A stated filter, a beat test and HPOD_t on symmetry-split reconstructions of time-resolved schlieren would decide.
- **How fast can a switch be resolved?** Every tool smooths in time: over n_fft (about 78 cycles in Mazharmanesh), c cycles, N_f, the reconstruction band, or the wavelet duration in synchrosqueezing (Daubechies, p. 6). Boashash offers the BT condition and Rihaczek's relaxation time T_r = |df_i/dt|^{−1/2} (eq. 77, p. 533), but no benchmark. For *exclusive* states the window needs only σ_f ≪ Δf, which can be far shorter than 1/Δf (Rife note). No paper benchmarks the tools on a synthetic switch with known timing, as Huang 1998 did for wavelets (p. 42–44). The research question proposes one:
  - two advecting wavepackets 10% and 0.5% apart, with prescribed switches, coexistence and noise;
  - passed through SPOD → band-B reconstruction → HPOD_t, and through STFT, CWT and synchrosqueezing;
  - Nuttall's E gives the Hilbert step's exact floor, since the imposed r and φ are known (Nuttall note);
  - Boashash's stepped sweeps (Fig. 7, p. 528) and Huang 2009's Duffing signal (eq. 42) are ready templates.
- **Which way does energy flow?** Mazharmanesh argues for two-way coupling between screech and the shock structure (p. 3, 19). Nogueira leaves open whether screech feeds the streaks or the streaks anchor screech (p. 25). The lag between HPOD amplitudes of the tone and of the St = 0 or m = 2 coefficient would constrain both questions.

## Methods and data

| Method | Data | Gives | Main pitfalls |
|---|---|---|---|
| HPOD_t (Horel 1984, Kriegseis 2021, Raiola 2025) | time-resolved fields | complex modes; instantaneous amplitude and frequency | needs a narrow band for meaningful IF; trim 10–15% each end; reverts to POD without time resolution |
| HPOD_x (Raiola 2025, Davey 2025) | snapshots | quadrature modes; automatic pairing | no dynamics; filters non-propagating and upstream content |
| EMD + Hilbert spectrum (Huang 1998, Rilling 2008) | one time-resolved series | IMFs, a(t), ω(t), degree of stationarity | mode mixing; end effects; close tones (relative cutoff ≈ 0.66 at 10 siftings); spurious components when the lower tone dominates |
| NHT, direct quadrature (Huang 2009) | one IMF or narrow-band time-resolved series | IF with sub-period detail; local error index | needs a clean IMF; DQ unstable with sparse samples and noise; NHT under-modulates intrawave IF |
| Band-pass Hilbert envelope and phase (Bell 2021) | time-resolved point signals | envelope–phase JPDFs, event statistics | needs a stated filter, single-component bands, a Rayleigh null and a beat test |
| Phase fit or periodogram peak (Rife 1974) | windowed time-resolved series or coefficient | frequency with a Cramér–Rao error bar | one tone only; fails below a bin SNR of about 9–14 dB |
| Inverse SPOD (Nekkanti 2021) | time-resolved fields | band- and mode-selected series; denoising; spectrograms | edge half-blocks; window leakage; smoothing over n_fft |
| Sieber SPOD (Sieber 2016) | ordered time-resolved fields | analytic coefficient pairs | choice of N_f; non-orthogonal modes; spurious pairs |
| CWT, cross-wavelet (Torrence 1998) | time-resolved point series | scalograms, band power, phase | cone of influence; bandwidth vs tone spacing; coherence needs smoothing |
| Synchrosqueezed CWT (Daubechies 2011) | one time-resolved series or temporal coefficient | sharp IF ridges; per-component reconstruction | relative gap must exceed wavelet bandwidth; time resolution still the wavelet's; fails at crossings |
| Wigner–Ville, Choi–Williams (Cohen 1989) | time-resolved series or temporal coefficients (analytic, or sampled at twice Nyquist if real) | exact conditional-mean IF and group delay | cross terms; negative values; nonlocal noise; local spread not interpretable |
| POD pairs, shear thickness mode, conditional POD (Weightman 2019, Bell 2021, Wong 2023) | snapshots, or labels from a time-resolved sensor | phase, amplitude intermittency, conditioned modes | no frequency; POD unconverged for close tones (Wong, p. 34–38) |

Time-resolved schlieren, microphones and LES support every row. Non-time-resolved PIV is limited to HPOD_x, POD pairs (with Davey's pairing test), the shear thickness mode, conditional POD on pair amplitudes, and conditioning on a simultaneous time-resolved sensor. It gives no frequency–time information.

## Relevance to our work
**Checklist for the pipeline, drawn from the notes:**
1. Plan n_fft from a point PSD ([Schmidt 2020 guide](../Notes/schmidt-2020-guide-spod.md), p. 6). It must resolve the competing tones (0.3–0.6% for twin-jet symmetries, 10–15% for A1 and A2) while keeping blocks shorter than the dwell times.
2. Reconstruct in the frequency domain, stitch with the window-weighted mean, and drop n_fft/2 snapshots at each end.
3. Choose the band deliberately. Either make it wide enough for every tone to be followed, or reconstruct each tone separately: a band that holds two tones will beat. Its relative half-width must be below the tones' relative gap (Daubechies 2011).
4. Run HPOD_t, trim 10–15%, and check the phase portraits. Trust dφ/dt only where the signal is single-component and sampled at five or more points per period. Check its mean against the GZC count (Huang 2009, p. 202). Where possible, compare f_i(t) with the inverse group delay (Boashash, Properties 2–3, p. 527; the note's suggestion).
5. To quote a frequency, fit the unwrapped phase over a window whose bin SNR clears about 14 dB, and attribute it to the window centre (Rife & Boorstyn, eq. 21, p. 592, 597). A plain average of dθ/dt is about √(N/6) worse (the note's derivation).
6. Test exclusivity with JPDFs of the tone amplitudes and their correlation with the St = 0 coefficient. Judge bursts against a χ² background, and envelope dips against the Rayleigh null (16–22% of the time below μ − 5 dB; Bell note).

**PIV:** use Davey's ∓0.5π test or HPOD_x for pairing, and the shear thickness mode or Bell's conditional POD for amplitude intermittency. Do not attempt instantaneous frequency.

**PyFR staging LES:** records are short. Nogueira's LES ran about 240 screech cycles (the note's estimate) and covered only a quarter-turn of the streaks (p. 14), so cones of influence and n_fft windows use up much of a record. The St = 0 SPOD coefficient and the A1 and A2 band powers are the cheapest switch detectors (Mazharmanesh 2026; suggestion in the Torrence note). Separate components spatially, by azimuthal and streamwise wavenumber, before the Hilbert step, and fit the phase over windows that clear the Rife threshold (research question). Band-pass Hilbert envelopes of probe signals carry over from Bell, but short records give noisy envelope PDFs, so compare them with the Rayleigh null (Bell note).

**Rocket noise:** the Torrence note suggests scale-averaged wavelet power with significance levels to track band levels through a nonstationary launch. No rocket-noise paper in the library does this yet.

## Papers
- [Gabor 1946](../Notes/gabor-1946-theory-of-communication.md): origin of the analytic signal and of Δt·Δf ≥ ½ on rms spreads; centroids are "not data"; 2BT data; IF only in a footnote.
- [Bedrosian 1963](../Notes/bedrosian-1963-product-theorem-hilbert-transforms.md): product theorem; the Hilbert envelope and phase of an AM carrier are exact when the envelope's band lies below the carrier.
- [Nuttall & Bedrosian 1966](../Notes/nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md): exact quadrature error; one-sided complex modulation, not narrow band, is necessary and sufficient.
- [Rife & Boorstyn 1974](../Notes/rife-1974-single-tone-parameter-estimation-discrete-time.md): Cramér–Rao bound and ML estimation of one tone. Precision far finer than 1/T above an SNR threshold; resolution unchanged.
- [Horel 1984](../Notes/horel-1984-complex-principal-component-analysis.md): origin of complex (Hilbert) PCA, i.e. HPOD_t. Band-pass and taper first; separates travelling from standing waves; weak for isolated pulses.
- [Cohen 1989](../Notes/cohen-1989-time-frequency-distributions-review.md): Cohen-class TFD review. IF as conditional mean; bandwidth equation; the uncertainty principle concerns marginals and windows; Wigner cross terms.
- [Boashash 1992](../Notes/boashash-1992-instantaneous-frequency-fundamentals.md): IF tutorial. Definitions, Bedrosian/Nuttall conditions, BT > 10, IF versus group delay, mono- versus multicomponent.
- [Huang 1998](../Notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md): EMD and the Hilbert spectrum. Sets the conditions for meaningful instantaneous frequency; intrawave modulation versus harmonics.
- [Torrence 1998](../Notes/torrence-1998-practical-guide-wavelet-analysis.md): wavelet practice. Cone of influence, χ² significance, band-averaged power, cross-wavelet phase.
- [Rilling 2008](../Notes/rilling-2008-one-or-two-frequencies-emd-two-tones.md): EMD's two-tone limit, a relative cutoff set by the number of siftings; explains Huang 1998's close-tone failure.
- [Huang 2009](../Notes/huang-2009-on-instantaneous-frequency.md): the case that IF escapes the uncertainty principle; NHT and direct-quadrature IF; beats as one AM–FM component.
- [Daubechies 2011](../Notes/daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md): synchrosqueezed CWT with a proof of IF recovery; filter bandwidth must be below the relative gap.
- [Jordan & Colonius 2013](../Notes/jordan-2013-wave-packets-turbulent-jet-noise.md): Review: jet mixing noise from low-m, intermittent wavepackets; linear PSE/LSA on the turbulent mean matches them to the core end; open: scale separation, intermittency (synthesis pending).
- [Sieber 2016](../Notes/sieber-2016-spectral-proper-orthogonal-decomposition.md): time-filtered SPOD. Analytic coefficient pairs that keep intermittency within one pair.
- [Weightman et al. 2018](../Notes/weightman-2018-signatures-shear-layer-unsteadiness-pod.md): snapshot-wise POD coefficients reveal cycle-to-cycle amplitude modulation of one resonance mode without TR data (synthesis pending).
- [Kriegseis 2021](../Notes/kriegseis-2021-hilbert-transform-revisited-hpod.md): first HPOD paper in fluids. HPOD_t as an automatic POD-pair finder that adds no information; shuffled snapshots give POD.
- [Nekkanti 2021](../Notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md): SPOD reconstruction, denoising and convolution spectrograms. Step 2 of the pipeline.
- [Bell 2021](../Notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md): band-pass Hilbert envelopes and conditional POD track intermittent twin-jet coupling; coexisting, uncorrelated processes.
- [Wong 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md): POD → CWT, conditional POD and the beat test, applied to twin-jet coupling.
- [Davey 2025](../Notes/davey-2025-hpod-sphere-wake.md): space-only HPOD on PIV. A POD-pairing test and its artefacts.
- [Raiola 2025](../Notes/raiola-2025-hilbert-pod.md): HPOD_t versus HPOD_x, the reduction to SPOD, and intermittent temporal modes. Step 3 of the pipeline.
- [Mazharmanesh 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md): SPOD spectrograms, the JPDF exclusivity test and short-time means at A1/A2 staging.
- [Nogueira 2026](../Notes/nogueira-2026-flapping-motion-screeching-round-jets.md): phase tracking of SPOD coefficients shows the precession of screech flapping.
- Also discussed (not tagged): [Ponton 1992](../Notes/ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md), [Raman 1998](../Notes/raman-1998-supersonic-jet-screech-review.md), [Jordan 2018](../Notes/jordan-2018-jet-flap-interaction-tones.md), [Knast 2018](../Notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md), [Mancinelli 2019](../Notes/mancinelli-2019-screech-prediction-upstream-modes.md), [Weightman 2019](../Notes/weightman-2019-sound-production-impinging-supersonic-jets.md), [Esfahani 2021, coupling](../Notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md), [Esfahani 2021, control](../Notes/esfahani-2021-control-twin-rectangular-jet-coupling.md), [Edgington-Mitchell 2023](../Notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md), [Jeun 2024](../Notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [Stavropoulos 2026](../Notes/stavropoulos-2026-jet-edge-interaction.md).
