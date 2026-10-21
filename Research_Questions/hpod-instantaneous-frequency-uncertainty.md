---
question: "How does the instantaneous frequency measurement output from Hilbert POD appear to beat the tradeoff of time resolution vs frequency resolution inherent in time-frequency analyses?"
slug: hpod-instantaneous-frequency-uncertainty
status: answered
created: 2026-10-21
updated: 2026-10-21
topics: ["time-frequency-methods", "modal-decomposition"]
notes: ["raiola-2025-hilbert-pod", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "horel-1984-complex-principal-component-analysis", "sieber-2016-spectral-proper-orthogonal-decomposition", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "torrence-1998-practical-guide-wavelet-analysis", "bell-2021-intermittent-modal-coupling-screeching-twin-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "davey-2025-hpod-sphere-wake", "oberleithner-2011-swirling-jet-vortex-breakdown-stability"]
papers_requested: ["10.1109/5.135376", "10.1109/5.30749", "10.1142/S1793536909000096", "10.1109/PROC.1963.2308", "10.1109/PROC.1966.5138", "10.1109/TIT.1974.1055282", "10.1049/ji-3-2.1946.0074", "arXiv:0912.2437", "10.1109/TSP.2007.906771", "10.18409/ispiv.v1i1.113"]
---
# How does HPOD's instantaneous frequency appear to beat the time–frequency trade-off?

## Short answer

It doesn't beat it; it sidesteps it by measuring a different, smaller quantity under a stronger assumption, and the trade-off reappears in the step that makes the assumption true.

The uncertainty principle (Gabor: σ_t σ_f ≥ 1/4π) limits how finely the *distribution* of energy over time and frequency can be resolved: two components closer than about 1/T in frequency, or two events closer than about 1/B in time, cannot be told apart. Hilbert instantaneous frequency (IF) does not estimate that distribution. It returns **one number per instant**, the derivative of the phase of an analytic signal, which (Cohen's result, quoted in [Huang 1998](../Library_of_Shock_Lab/notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), eq. 3.9–3.11, p. 11–12) is the time-local *centroid* of the spectrum. A centroid can be known at every sample without saying anything about the spread around it, and the uncertainty principle constrains only the spread. The number is only meaningful if the signal at that instant **is** a single, slowly modulated component (Huang 1998, p. 12–15). Making the data satisfy that is a narrow-banding step (a band-pass, EMD, an SPOD reconstruction, Sieber's filter, or the spatial filtering that POD itself provides), and that step is a time–frequency analysis with the usual trade-off: its bandwidth B decides which components are kept apart and, at the same time, caps how fast the IF can move (roughly, frequency excursion plus modulation rate ≲ B/2). So the "free" time resolution of IF is an interpolation between independent pieces of information spaced about 1/B apart, plus a lot of precision on the value of the frequency, which comes from the single-component model and the signal-to-noise ratio, not from resolution.

Confidence: **high** for the principle (it follows from standard signal theory and is consistent with everything in the library, including the method papers' own practice), **moderate** for the quantitative rules of thumb below (my derivations, not yet checked against the signal-processing literature, which the library lacks). One genuine gain is real and is HPOD-specific: the POD step uses **space** as an extra separation axis. For advecting waves, the spatial extent of the field of view can stand in for record length (effective window ≈ L/c), and spatially distinct components can be separated even when they share a frequency band. That relocates the trade-off into space–time; it does not abolish it.

## The question, framed

**Agreed reading (clarifying questions, 2026-10-21).** Why does HPOD give a frequency value at every time sample, seemingly with no time–frequency trade-off; is that real; and what actually limits its time and frequency resolution? The answer should cover both theory and practice, for HPOD in general (Hilbert transform in time, any time-resolved data), not only the SPOD → reconstruction → HPOD pipeline. Classic signal-processing references are wanted; they are listed under "Papers requested".

**Three quantities that are easily conflated**, and the distinction the answer turns on:
- **Resolution (frequency):** the smallest separation Δf at which two simultaneous components can be distinguished.
- **Resolution (time):** the shortest interval over which a change (switch, burst, frequency jump) can be localised or two events distinguished.
- **Precision:** how accurately the frequency of a component already known to be alone can be estimated. This is a parameter-estimation problem, bounded by noise (the Cramér–Rao bound), not by the uncertainty principle.

**Sub-questions.**
1. What does the uncertainty principle actually bound, and what does IF actually measure?
2. Under what conditions is IF meaningful, and what does it report when they fail?
3. Where does the trade-off go in a practical HPOD analysis, and what sets the effective time resolution, frequency resolution and precision?
4. Does the POD step (multi-point, spatially coherent data) add anything a single-signal Hilbert transform cannot?
5. What does this imply for the lab's resonance problems (A1/A2 staging, twin-jet coupling, impinging tones)?

**Competing views.**
- *H1, "it really beats it":* IF is a pointwise quantity not subject to the uncertainty principle (the Hilbert–Huang position; Huang 1998 p. 15 says no full cycle is needed to define a frequency).
- *H2, "it is an illusion":* the trade-off is merely moved into the narrow-banding filter.
- *H3, "different quantity":* IF is a centroid estimate under a monocomponent model; it trades resolution for model assumptions and gains precision, not resolution.
The answer below argues that H2 and H3 are both right and are the same statement seen from two sides, and that H1 is true only in a narrow, definitional sense.

## Evidence and reasoning

### 1. What the uncertainty principle bounds, and what IF measures

*Background (standard theory, not from a library note):* Gabor's inequality bounds the product of the RMS duration and RMS bandwidth of any signal or analysis window. In an STFT, wavelet or SPOD spectrogram, the window sets a fixed tile of area ≳ 1/4π; the methods differ only in how they shape the tiles (a narrow wavelet gives good time and poor frequency resolution and vice versa, [Torrence 1998](../Library_of_Shock_Lab/notes/torrence-1998-practical-guide-wavelet-analysis.md), Key findings of the note; the spectrogram "trades time against frequency resolution", Huang 1998, p. 5–7).

IF is not a tile. For z(t) = a(t)e^{iθ(t)}, f_i = θ′/2π is defined at every sample (Huang 1998, eq. 3.4, p. 11; p. 15). Cohen's identities, which Huang reproduces (eq. 3.9–3.11, p. 11–12), say two things:
- the global mean frequency is the amplitude-weighted average of IF, ⟨ω⟩ = ∫θ′a² dt, so IF plays the role of the **first conditional moment** of frequency at time t;
- the bandwidth splits into an amplitude-modulation term ∫ȧ² dt and a frequency-modulation term ∫(θ′ − ⟨ω⟩)²a² dt.

So IF carries the time-local mean, and the spread about it (the "instantaneous bandwidth") is thrown away. The uncertainty principle is a statement about spreads. *My reasoning:* knowing the centroid of a distribution at every instant does not violate a bound on how narrow the distribution can be, in the same way that locating the centre of an isolated diffraction-limited spot to nanometres (localisation microscopy) does not violate the Abbe limit; it does not let you resolve two spots inside one blur. This is why H1 is true only definitionally: IF really is pointwise, but it is pointwise information about a *one-number summary*.

### 2. When IF is meaningful, and what it says when it is not

**Conditions in the library.**
- Locally symmetric, single-component signal with no riding waves; otherwise the frequency fluctuates spuriously or goes negative (α + sin t example, Huang 1998 p. 12–14, Fig. 1). Global narrow-band criteria (Rice, Cohen bandwidth) are neither necessary nor sufficient (p. 12).
- The stationary-phase justification of dθ/dt requires the amplitude to vary slowly compared with the phase (p. 15). *Background:* this is the Bedrosian/Nuttall condition, under which the analytic signal of a(t)cos θ(t) returns a(t)e^{iθ(t)} only if the spectrum of a(t) does not overlap that of cos θ(t) (papers requested).
- Even amplitude modulation alone leaks into IF: a decaying carrier gives about ±1.5% spurious frequency wiggle (Huang 1998, p. 39, 42). IF and amplitude are not independent outputs.
- Sampling: at least five samples per period, since IF is a derivative (p. 89).
- Every Hilbert-based paper in the resonance literature that took care narrow-banded first: Bell used a 200 Hz band per "process" and stressed that the Hilbert transform needs a single signal ([Bell 2021](../Library_of_Shock_Lab/notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), p. 10–11); Horel's complex PCA band-passes with W(ω) and warns that the Hilbert transform otherwise emphasises spikes and edges ([Horel 1984](../Library_of_Shock_Lab/notes/horel-1984-complex-principal-component-analysis.md), p. 1662). [Jeun 2024](../Library_of_Shock_Lab/notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) apparently did not filter (note, p. 8), which the note flags.

**What IF reports for two components** *(my derivation; a standard result, to be checked against Boashash 1992 or Cohen 1989).* For z = a₁e^{iω₁t} + a₂e^{iω₂t} with r = a₂/a₁ and Δω = ω₂ − ω₁:

θ′(t) = ω₁ + Δω · (r² + r cos Δωt) / (1 + r² + 2r cos Δωt).

- For r < 1 the phase never winds round the origin, so the **time-averaged IF is exactly ω₁**, the stronger tone, not the energy-weighted mean. The weaker tone appears only as a ripple at the beat frequency Δf, swinging between ω₁ + Δω·r/(1+r) and ω₁ − Δω·r/(1−r).
- As r → 1 the negative excursion diverges: spikes and negative frequencies, exactly Huang's α > 1 pathology (p. 12–13).
- The amplitude-weighted mean of θ′ is (a₁²ω₁ + a₂²ω₂)/(a₁² + a₂²), Cohen's ⟨ω⟩.

So a single IF trace **never resolves two coexisting tones**. It reports one of them and encodes the other as a modulation, which is indistinguishable, from the trace alone, from a genuinely frequency-modulated single oscillator. Huang's own failure case shows the resolution limit reappearing inside a Hilbert method: cos(2πt/30) + cos(2πt/34) over t = 1–512 s could not be split even after 3000 siftings, and none of the Hilbert, wavelet or Fourier marginal spectra showed two peaks (p. 45–47). *My arithmetic:* Δf = 1/30 − 1/34 ≈ 0.0039 Hz, a beat period of about 255 s, so the record holds only two beat periods and Δf ≈ 2/T: the case sits right at the Fourier resolution limit, and the Hilbert route did no better. The same mechanism produces the "illusory coupling" and "intermittency" artefacts in the twin-jet literature, where two detuned tones in one band beat ([Wong 2023](../Library_of_Shock_Lab/notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 16–18, 36; topic page point 8).

**Intrawave modulation is the strongest form of H1, and it is a representation choice.** Huang reads frequency variation *within one cycle* of a Stokes or Duffing wave as physical (p. 15–16, 35–41, 49–51). That appears to resolve frequency on sub-period time scales. But the same waveform is exactly represented by a fundamental plus harmonics, so the intrawave IF carries no information that the harmonic amplitudes and phases do not. *Background:* the decomposition of a real signal into a(t) and θ(t) is not unique; the analytic signal fixes one choice by convention (Loughlin & Tacer 1996; Picinbono 1997, not in the library). Whether the intrawave or harmonic description is "physical" is the open question already on the topic page (Huang vs bicoherence/BMD); it is not evidence that the trade-off was beaten.

### 3. Where the trade-off goes in practice

**The narrow-banding step is a time–frequency analysis.** Whatever produces the near-monocomponent input has a bandwidth B and an impulse response about 1/B long. The library has three direct statements of this:
- Sieber's diagonal filter of length N_f "low-pass-filters growth rates and band-pass-filters frequencies" of the coefficients, so it limits how fast amplitude and frequency may change; N_f of one to three periods of the target mode worked best ([Sieber 2016](../Library_of_Shock_Lab/notes/sieber-2016-spectral-proper-orthogonal-decomposition.md), p. 8–9, 16–17).
- A single-bin SPOD reconstruction can change amplitude and frequency only from block to block, so HPOD on it is smoothed over about n_fft (an inference in the [Nekkanti 2021](../Library_of_Shock_Lab/notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md) note, from the block-wise inversion on p. 6, 12, 26).
- Bell's 200 Hz band at screech frequencies near 10 kHz has an envelope time scale of about 5 ms, longer than the 5–15-cycle (0.5–1.5 ms) interruptions reported, as the queued contribution on the topic page points out (Bell 2021, p. 10–16).
And the method paper itself, after deriving IF (eq. 2.20–2.21), reads modulation off **STFT spectrograms** of the HPOD temporal modes, with rectangular windows and 75% overlap, rather than differentiating the phase ([Raiola 2025](../Library_of_Shock_Lab/notes/raiola-2025-hilbert-pod.md), p. 19). The authors describe the HPOD/SPOD difference as that between time–frequency analysis and Fourier analysis (p. 13, 27), not as an escape from time–frequency limits.

**A rule of thumb for the cap** *(my reasoning, from Carson's rule for FM bandwidth; to be checked).* A signal with frequency excursion Δf_dev and modulation rate f_m occupies roughly B ≈ 2(Δf_dev + f_m). Turned around, a band of width B can carry IF variations with **Δf_dev + f_m ≲ B/2**. The trade-off reappears as a *sum*: a band wide enough to follow a large frequency jump (A1 → A2, about 10%) admits fast modulation, but also admits a second tone; a band narrow enough to exclude a neighbour 0.3% away (twin-jet SS/SA) forbids changes faster than about 1/B ≈ 300 cycles. The IF trace is sampled at every time step but has about one independent value per 1/B.

**Noise sets a further smoothing window.** *(Background, to be quantified from Boashash 1992 Part II and Rife & Boorstyn 1974.)* Differentiating the phase amplifies noise, and wherever the envelope dips towards zero the phase is ill-defined and IF spikes (Horel's spike warning, p. 1662, is the same effect in correlation form). In practice IF is smoothed over some τ, and that τ is the effective time resolution.

**What can be very fine: precision.** For a single tone in white noise the Cramér–Rao bound on frequency variance falls as 1/(SNR·T³) (Rife & Boorstyn 1974, requested), so frequency can be estimated to a small fraction of 1/T. That is the sense in which a smooth HPOD IF trace can legitimately give St to four figures over a short stretch: the precision is bought with the single-component assumption and with SNR, not with resolution. Huang's sudden-switch test fits this: for a *single* component that jumps in frequency, the Hilbert spectrum located the switch more sharply than the Morlet wavelet, with Gibbs ringing either side (p. 42–44); the ringing is the band limit showing.

**Summary of what limits each quantity** (my synthesis):

| Quantity | Fourier spectrogram / CWT / SPOD spectrogram | HPOD instantaneous frequency |
|---|---|---|
| Frequency resolution (separating coexisting components) | window length T (n_fft, Morlet cycles c, N_f) | the narrow-banding bandwidth B, *plus* spatial separation by POD (section 4); IF itself resolves nothing |
| Time resolution (localising a change) | window length T | max(1/B, IF smoothing τ, ≈ 1 carrier period, ≥ 5 samples per period); for advecting waves through a field of view, also ≈ L/c (section 4) |
| Frequency precision for an isolated component | ≈ bin width, improvable by peak interpolation | set by SNR and τ, can be ≪ B |
| Output when two tones share the band | two peaks (if T ≳ 1/Δf) | the stronger tone plus a ripple at Δf; spikes as r → 1 |
| Assumption | local stationarity over T | one slowly modulated component per mode at each instant |

### 4. What the POD step adds

This is where HPOD genuinely differs from a single-signal Hilbert transform.

**Spatial separation.** POD splits components by spatial structure, so two processes in one frequency band can land in different modes if they are spatially orthogonal. Horel's travelling and standing waves separated into 73/27% modes (p. 1667), although they also differed in frequency. Wong separated SS from SA coupling by symmetry before any time–frequency step (p. 9, 16–20); Bell separated coupling states by conditional POD (p. 18–27). The information that separates them comes from space, so a shorter time window suffices. Limits: near-equal eigenvalues make the split unstable from sample to sample (Horel, p. 1670–1672), and POD orthogonality can manufacture domain-wide modes that are not in the data (p. 1667–1668).

**Spatial averaging raises SNR, and so precision.** Wong found the CWT of raw schlieren pixels too noisy and used a POD coefficient instead (p. 9). Oberleithner preferred POD phase to a point-sensor Hilbert phase because it uses the whole field and absorbs jitter ([Oberleithner 2011](../Library_of_Shock_Lab/notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md), p. 22–23, as summarised on the modal-decomposition topic page).

**Space can stand in for time for advecting waves** *(my reasoning, a labelled hypothesis).* For a wave with ω = ck, HPOD's spatial modes are wavenumber-selective, and Raiola shows HPOD then reduces to SPOD with frequency tied to wavenumber (eq. 2.42–2.55, p. 11–13). A field of view of length L resolves Δk ≈ 2π/L, which maps to Δf ≈ c/L. A snapshot of the domain therefore contains the wave's history over about the transit time L/c, so the "instantaneous" frequency of a mode is implicitly averaged over that transit. Two observations in the library fit this:
- Sieber's best filter in the Gurney-flap wake spanned about three shedding periods, which the authors equate with one convective transit through the field of view (p. 17).
- Horel's irregular pulses, short (≈ 5 steps) compared with the transit time (≈ 20 steps), were captured poorly (75% in mode 1, spurious edge events; p. 1668–1670).
The space–wavenumber trade-off then applies instead, with the same edge losses: 15% trimming in the transform direction (Raiola, p. 16), and HPOD_x's suppression of non-propagating content ([Davey 2025](../Library_of_Shock_Lab/notes/davey-2025-hpod-sphere-wake.md), p. 34). The argument fails for flows without a single phase speed, which is exactly the resonant case: screech and impingement combine downstream KH waves with upstream guided-jet waves and standing-wave patterns, outside Raiola's proof (p. 13).

**Does HPOD on raw broadband data give clean IF?** Probably not. HPOD_t applied to the M 0.9 LES without narrow-banding gave temporal modes that leave the unit circle, with bursts and drifting frequency visible only in spectrograms (Raiola 2025, p. 19–21). Nothing in the paper shows that d arg ψ_j/dt of such a mode is monocomponent in Huang's sense, and the POD ranking concentrates energy rather than band-limiting it. *My inference:* in turbulent jets, HPOD needs an explicit narrow-banding step (Horel's W(ω), an SPOD reconstruction) before IF is read, which is the group's pipeline.

### 5. Consequences for the lab's problems (my worked numbers)

- **A1/A2 staging, tones about 10% apart** ([Mazharmanesh 2026](../Library_of_Shock_Lab/notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md)). Reconstructing each tone separately needs B below about 10% of f, giving a time resolution of order 10–20 screech cycles, much finer than Mazharmanesh's sliding SPOD window of about 78 cycles (note's estimate, p. 11). A band holding *both* tones gives a useful diagnostic from section 2: under exclusive switching, IF jumps between two plateaus while the amplitude stays up; under coexistence, IF stays at the stronger tone and ripples at Δf (period about 10 cycles) with relative amplitude set by r. That is a test of exclusivity that complements the JPDF of band amplitudes.
- **Twin-jet SS/SA, 0.3–0.6% apart** (Wong 2023, p. 1). Separating them by frequency needs B ≲ 0.3% of f, so a time resolution of about 300 cycles, comparable with the reported switching interval of 10²–10³ cycles. Separate them by symmetry (space) first, as Wong did, and use IF within each symmetry.
- **Bell's interruptions** (5–15 cycles in a 2% band): below the band's resolution, so the event durations need re-examination with a wider band or a stated filter response (queued already on the topic page).

## Conflicts in the literature

- **Is IF bound by the uncertainty principle?** Huang 1998 presents IF as defined without a full cycle and the Hilbert spectrum as sharper than wavelets (p. 15, 42–44); the Hilbert–Huang literature later argued this explicitly (Huang et al. 2009, requested). The Fourier/time–frequency literature (Cohen 1989, Boashash 1992; Rilling & Flandrin 2008 on EMD's two-tone resolution; all requested) treats IF as a moment of a time–frequency distribution, meaningful only for monocomponent signals. *Likely explanation:* both are right about different quantities. IF is pointwise (Huang); its resolving power is limited by the decomposition that makes it meaningful (Fourier camp). Huang's own two-tone failure, at Δf ≈ 2/T (p. 45–47), is the strongest evidence in the library for the second view.
- **Intrawave modulation vs harmonics.** Huang: harmonics are artefacts and intrawave IF is physical (p. 15–16, 33–41). Bicoherence and BMD treat harmonics as quadratic triads (topic page). For this question it matters only because intrawave IF is the strongest claim to sub-cycle frequency resolution; both descriptions carry the same information, so it is not a resolution gain.
- **Narrow-band first, or let POD do it?** Horel band-passes before complex PCA (p. 1662); Bell narrow-bands before Hilbert (p. 10–11); Raiola applies HPOD_t to unfiltered LES and reads modulation with STFTs (p. 19); Jeun applies Hilbert to apparently unfiltered pressure (p. 8). The difference is in what each wanted: Raiola wanted modes and burst statistics, not IF values. For IF values, the narrow-band-first camp is on firmer ground.

## Uncertainties and unknowns

| Point | Status | Basis | What would resolve it |
|---|---|---|---|
| IF does not violate the uncertainty principle; it is a time-local centroid under a monocomponent model | established | standard theory; Cohen's identities as quoted in Huang 1998 (eq. 3.9–3.11) | Boashash 1992, Cohen 1989 (requested) for formal statements |
| IF is meaningful only for a single, slowly modulated component | established | Huang 1998 p. 12–15; Bell 2021 p. 10–11; Horel 1984 p. 1662 | Bedrosian 1963, Nuttall 1966 for the exact conditions |
| Narrow-banding bandwidth B caps IF modulation (Δf_dev + f_m ≲ B/2) | supported (theory; library consistent) | Carson's rule (my reasoning); Sieber p. 8–9; Nekkanti note; Bell p. 10–16 | synthetic benchmark (below) |
| Two tones in one band: IF = stronger tone + ripple at Δf; spikes as r → 1 | supported (my derivation; matches Huang's α example) | section 2 | check against Boashash/Cohen; synthetic test |
| IF precision can be ≪ B (SNR-limited) | supported (background theory) | Cramér–Rao for a single tone | Rife & Boorstyn 1974; synthetic test with noise |
| POD adds genuine separating power via spatial structure and SNR | supported | Horel p. 1667; Wong p. 9, 16–20; Oberleithner p. 22–23 | HPOD vs single-point Hilbert on the same schlieren record |
| Field-of-view extent substitutes for record length for advecting waves (window ≈ L/c) | speculative | Raiola eq. 2.42–2.55 (p. 11–13); Sieber p. 17; Horel p. 1668–1670 | vary the field of view in HPOD of the Towne LES and track IF bandwidth |
| HPOD_t on raw turbulent data gives monocomponent temporal modes | contested / doubtful | Raiola p. 19–21 shows bursts and drift but reads them by STFT | test Huang's IMF criteria on ψ_j from Raiola-style HPOD |
| Quantitative time resolution of HPOD IF for a switch | unknown | no benchmark in the library (topic page open question) | synthetic switch benchmark |
| How the IF of a band holding two screech tones behaves in real data (exclusivity test) | unknown | proposal from section 5 | apply to Mazharmanesh-type A1/A2 schlieren |

## What would settle it

1. **Synthetic benchmark (cheap, decisive for the practical side).** A field of two advecting wavepackets at f₁ and f₂ (10% and 0.5% apart) with prescribed switching times, coexistence intervals and added noise. Run SPOD → reconstruction with bands of different width → HPOD_t, and alongside it STFT, Morlet/bump CWT and synchrosqueezing. Measure switch-detection delay, IF bias and IF variance against B, SNR and field-of-view length L. This answers the topic page's open question "how fast a switch can be resolved" and tests the Δf_dev + f_m ≲ B/2 rule and the L/c hypothesis.
2. **Two-tone IF exclusivity test on lab data.** On time-resolved schlieren at the A1/A2 staging point, reconstruct a band containing both tones and compare IF statistics (plateaus vs ripple at Δf) with the JPDF test of Mazharmanesh 2026.
3. **Space vs time on the Towne M 0.9 LES** (as used by Raiola): crop the domain to different L and see whether the effective IF bandwidth of the leading HPOD mode scales with c/L.
4. **PyFR staging LES:** records are short (the topic page notes about 240 cycles in a comparable LES), so the time budget is tight. Spatial separation (azimuthal and streamwise wavenumber filtering) before the Hilbert step is the route to fine time resolution there.

## Papers requested

| Paper | DOI / source | Why it matters | Status |
|---|---|---|---|
| Boashash 1992, IF Part 1: Fundamentals, Proc. IEEE 80 | 10.1109/5.135376 | Definitions of IF, monocomponent signals, relation to time–frequency distributions; the formal version of sections 1–2 | requested (paywalled) |
| Cohen 1989, Time-frequency distributions – a review, Proc. IEEE 77 | 10.1109/5.30749 | IF as the conditional mean frequency; instantaneous bandwidth; the uncertainty principle in TFDs | requested (paywalled) |
| Huang et al. 2009, On instantaneous frequency, Adv. Adapt. Data Anal. 1 | 10.1142/S1793536909000096 | The Hilbert–Huang side's own statement on IF and the uncertainty principle; the main source for H1 | requested (paywalled) |
| Bedrosian 1963; Nuttall & Bedrosian 1966, Proc. IEEE | 10.1109/PROC.1963.2308; 10.1109/PROC.1966.5138 | Exact conditions for the analytic signal to recover a(t) and θ(t) | requested (paywalled) |
| Rife & Boorstyn 1974, IEEE Trans. Inf. Theory 20 | 10.1109/TIT.1974.1055282 | Cramér–Rao bound for single-tone frequency: precision vs resolution | requested (paywalled) |
| Gabor 1946, Theory of communication, J. IEE 93 | 10.1049/ji-3-2.1946.0074 | Origin of both the analytic signal and the uncertainty relation (optional) | requested (paywalled) |
| Daubechies, Lu & Wu 2011, Synchrosqueezed wavelet transforms, ACHA 30 | 10.1016/j.acha.2010.08.002; open access as arXiv:0912.2437 (1.2 MB) | Proves when IF of each component of a multicomponent signal is recoverable (separation and slow-modulation conditions); the rigorous version of section 3 | open access, awaiting OK to download |
| Rilling & Flandrin 2008, One or two frequencies? IEEE TSP 56 | 10.1109/TSP.2007.906771; open access HAL ensl-00113834 (0.6 MB) | Resolution limit of EMD for two tones vs frequency and amplitude ratio; quantifies Huang's failure case | open access, awaiting OK to download |
| Kriegseis, Kinzel & Nobach 2021, Hilbert transform revisited, ISPIV 2021 | 10.18409/ispiv.v1i1.113; open access (0.3 MB) | The first HPOD paper in fluids; what was claimed about IF at the outset | open access, awaiting OK to download |

## Sources

Topic pages: [time-frequency-methods](../Library_of_Shock_Lab/topics/time-frequency-methods.md) (including its queue), [modal-decomposition](../Library_of_Shock_Lab/topics/modal-decomposition.md).

Notes:
- [Raiola & Kriegseis 2025](../Library_of_Shock_Lab/notes/raiola-2025-hilbert-pod.md) (now published in Phys. Rev. Fluids 2026, doi 10.1103/bhlm-qwfh; the note describes the arXiv preprint)
- [Huang et al. 1998](../Library_of_Shock_Lab/notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md)
- [Horel 1984](../Library_of_Shock_Lab/notes/horel-1984-complex-principal-component-analysis.md)
- [Sieber et al. 2016](../Library_of_Shock_Lab/notes/sieber-2016-spectral-proper-orthogonal-decomposition.md)
- [Nekkanti & Schmidt 2021](../Library_of_Shock_Lab/notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)
- [Torrence & Compo 1998](../Library_of_Shock_Lab/notes/torrence-1998-practical-guide-wavelet-analysis.md)
- [Bell et al. 2021](../Library_of_Shock_Lab/notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md)
- [Wong et al. 2023](../Library_of_Shock_Lab/notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md)
- [Mazharmanesh et al. 2026](../Library_of_Shock_Lab/notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md)
- [Jeun et al. 2024](../Library_of_Shock_Lab/notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md)
- [Davey et al. 2025](../Library_of_Shock_Lab/notes/davey-2025-hpod-sphere-wake.md)
- [Oberleithner et al. 2011](../Library_of_Shock_Lab/notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md) (via the modal-decomposition topic page)

Not in the library (background; DOIs checked on Crossref 2026-10-21): Gabor 1946; Bedrosian 1963; Nuttall & Bedrosian 1966; Mandel 1974; Rife & Boorstyn 1974; Cohen 1989; Boashash 1992; Auger & Flandrin 1995 (reassignment, 10.1109/78.382394); Loughlin & Tacer 1996 (10.1121/1.416061); Picinbono 1997 (10.1109/78.558469); Rilling & Flandrin 2008; Huang et al. 2009; Daubechies, Lu & Wu 2011; Kriegseis, Kinzel & Nobach 2021. Carson's rule for FM bandwidth is standard communications theory.

## Log
- 2026-10-21: created. Clarifying questions settled the scope (theory + practice, HPOD in general, look for signal-processing references). Answer written from the library plus labelled background theory and own derivations (two-tone IF formula, Carson-type cap, L/c hypothesis). Six paywalled papers added to `Papers_to_get.md` (new "Time–frequency methods" section); three open-access papers awaiting the user's OK to download.
  - Queued for topic pages: `time-frequency-methods` (IF vs the uncertainty principle; the bandwidth cap; two-tone IF as an exclusivity test; space-for-time hypothesis; sharpened benchmark question).
  - Queued for notes (`notes_to_update.md`): `raiola-2025-hilbert-pod` (published version), `huang-1998-empirical-mode-decomposition-hilbert-spectrum` (two-tone case at Δf ≈ 2/T), `sieber-2016-spectral-proper-orthogonal-decomposition` (N_f as the IF bandwidth cap, link to HPOD).
