---
key: "huang-2009-on-instantaneous-frequency"
title: "On Instantaneous Frequency"
authors: ["Huang, Norden E.", "Wu, Zhaohua", "Long, Steven R.", "Arnold, Kenneth C.", "Chen, Xianyao", "Blank, Karin"]
year: 2009
type: "article"
venue: "Adv. Adapt. Data Anal. 1(2), 177–229"
bib: {"journal": "Advances in Adaptive Data Analysis", "volume": "1", "number": "2", "pages": "177--229", "publisher": "World Scientific"}
doi: "10.1142/S1793536909000096"
arxiv: ""
pdf: "time-frequency-methods/Huang-EtAl_2009_On-Instantaneous-Frequency.pdf"
version: "published"
unverified: ["DOI not printed in the PDF; taken from the indexing request (DOI checked on Crossref per Library_of_Shock_Lab/Research_Questions/hpod-instantaneous-frequency-uncertainty.md)"]
group: false
facility: ""
data: ["synthetic", "field-data"]
methods: ["Hilbert-transform", "EMD", "PSD"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["time-frequency-methods"]
related: ["huang-1998-empirical-mode-decomposition-hilbert-spectrum", "raiola-2025-hilbert-pod", "boashash-1992-instantaneous-frequency-fundamentals", "rilling-2008-one-or-two-frequencies-emd-two-tones", "daubechies-2011-synchrosqueezed-wavelet-transforms-emd", "horel-1984-complex-principal-component-analysis", "kriegseis-2021-hilbert-transform-revisited-hpod", "sieber-2016-spectral-proper-orthogonal-decomposition", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "torrence-1998-practical-guide-wavelet-analysis", "bell-2021-intermittent-modal-coupling-screeching-twin-jets", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech"]
cites: ["boashash-1992-instantaneous-frequency-fundamentals", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals", "rilling-2008-one-or-two-frequencies-emd-two-tones"]
summary: "IF beyond the uncertainty principle? Spline AM–FM normalisation gives NHT and direct-quadrature IF; Bedrosian/Nuttall limits of HT; TEO and GZC compared"
---
# On Instantaneous Frequency

- **Authors:** Norden E. Huang (National Central University, Taiwan), Zhaohua Wu (Florida State University), Steven R. Long (NASA Goddard, Wallops), Kenneth C. Arnold (MIT), Xianyao Chen (First Institute of Oceanography, Qingdao), Karin Blank (NASA Goddard)
- **Source:** Advances in Adaptive Data Analysis 1(2), 177–229 (2009), World Scientific. DOI 10.1142/S1793536909000096 (not printed in this PDF; see `unverified`). The indexing request listed the authors as "Huang, Wu, Long, Shen, Qu, Gloersen & Fan"; that is the author list of the 2003 confidence-limit paper (ref. 21). The authors above are the ones printed on p. 177.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Huang-EtAl_2009_On-Instantaneous-Frequency.pdf` (58 pp.: the article on PDF p. 1–53, then a publisher "cited by" list on PDF p. 54–58). Publisher's version, downloaded 2013.
- **Page refs:** printed journal pages 177–229. PDF page = printed page − 176. Equations were read from rendered page images, since the text layer drops the Greek letters.
- **Tags:** instantaneous frequency (IF), analytic signal (AS), Hilbert transform (HT), quadrature, direct quadrature (DQ), normalized Hilbert transform (NHT), empirical AM–FM decomposition, spline envelope normalisation, Bedrosian theorem, Nuttall theorem, Picinbono, energy-based error index, Teager energy operator (TEO), generalized zero-crossing (GZC), uncertainty principle, Wigner–Ville distribution, intrawave frequency modulation, negative frequency, Cohen's paradoxes, beating, AM spectrum, EMD, EEMD, intrinsic mode function (IMF), mode mixing

## Summary
The paper is the Hilbert–Huang group's statement of what instantaneous frequency (IF) is and how to compute it. It argues that the uncertainty principle belongs to integral transforms, so a frequency obtained by differentiating a phase function, with no integration window, is not bound by it (p. 178, 184). It then concedes that the usual route, the analytic signal from the Hilbert transform, is only an approximation to the true quadrature. The approximation fails where the Bedrosian condition (envelope and carrier spectra must not overlap) or the Nuttall condition (H{cos φ} = sin φ) is violated, and the IMFs from EMD violate both in general (p. 185–191, 205). The fix is an empirical AM–FM decomposition: the IMF is divided repeatedly by a cubic spline through the maxima of its absolute value until it is a unit-amplitude carrier F(t) = cos φ(t) (p. 191–195). From F the IF is computed either by the Hilbert transform of the carrier (NHT), which satisfies Bedrosian automatically, or by a "direct quadrature" (DQ) sin φ = √(1 − F²) with no transform at all (p. 196–199). Two transform-free alternatives, the Teager energy operator and a generalized zero-crossing count, are compared with these on a damped, chirped Duffing-type model with a known IF and on a speech IMF (p. 199–218). DQ matches the model's true IF almost exactly; NHT is stable but under-modulated; the plain HT gives negative frequencies; TEO fails wherever the waveform is distorted; GZC gives only a quarter-period mean (p. 205–211). The paper closes by treating two beating tones as one AM–FM component, adding an "AM spectrum" from EMD of the envelope (p. 218–222), and by answering Cohen's IF paradoxes (p. 222–224).

## Key findings

### The uncertainty-principle argument (the paper's case for pointwise IF)
- **The claim** (p. 178): Gröchenig's verdict, "The uncertainty principle makes the concept of an Instantaneous Frequency impossible," is answered as follows:
  - the uncertainty principle is "a consequence of the Fourier transform (or any other type of integral transform) pair";
  - its limitation therefore applies only to integral transforms, "in which time would be smeared over the integral interval";
  - so if the frequency is computed without an integral transform, it "would not be bounded by the uncertainty principle".
- **Mathematical justification** (p. 178–179): classical wave theory defines frequency and wavenumber as derivatives of a phase function of a "slowly" varying complex wave, ω = −∂θ/∂t and k = ∂θ/∂x (eq. 1–2). The wave conservation law ∂k/∂t + ∂ω/∂x = 0 (eq. 3) needs ω and k to be differentiable, so any wave other than a constant-frequency sinusoid must have an instantaneous frequency. The paper turns this against the whole-period definition ω = 1/T (eq. 6): a frequency that is constant over a wavelength cannot be differentiable (p. 182).
- **Physical justification** (p. 179–180): in a nonlinear oscillator such as Duffing's, ẍ + x(1 + εx²) = γ cos ωt (eq. 4–5), the effective spring constant depends on position, so the frequency changes *within* one oscillation (intrawave frequency modulation). The paper calls the Fourier harmonics of such a waveform "mathematic artifacts" with no physical meaning; for water waves, the harmonics do not satisfy the dispersion relation (p. 180).
- **How it states the uncertainty principle** (p. 184): for Fourier-type methods on subspans, the frequency resolution Δω times the span ΔT over which a frequency is defined is at least 1/2. So such methods cannot resolve frequency varying faster than the integration time, "certainly not within one period". The same limit is said to apply to wavelets: to be local a wavelet must hold few waves, and to resolve frequency it must hold many (p. 184). The Hamiltonian definition ω = ∂H/∂A (eq. 7–8) is time-varying but no finer than one period, since the action is an integral over a cycle (p. 183).
- **The goal it sets** (p. 185): frequency content "at any given time with the subperiod temporal resolution". The authors add that the Fourier, wavelet and WVD methods work for any data, while the IF methods of Sec. 3 "work only for monocomponent functions" (p. 185).
- **Stated limits of the claim:**
  - IF is defined only for monocomponent functions (IMFs); every IF method, HT-based or not, needs that decomposition first (p. 185, 191, 202, 224).
  - "When we change the decomposition method, the IF will also change" (p. 223). IF and Fourier frequency content "do not have the same physical meaning" and have no one-to-one relation (p. 223).
  - The locality of the HT itself is not established: "no theoretic value can be offered here" for how local HT-based IF is (p. 224). Empirically it is "very local", "albeit with some distortion in both amplitude and frequency values within the integration window"; the 1/t kernel lets a large neighbouring wave overpower a small one, which is a Bedrosian violation (p. 224). The HT is "not perfectly local, for the frequency is not determined by the carrier wave only" (p. 225).
  - Only DQ (and TEO) are presented as fully local: DQ "involves no integral interval", "is not influenced by any neighboring points" and is "as local as any method can be" (p. 196); it depends only on a first derivative (p. 225).
  - Noise is not analysed. The only noise-related remarks are that DQ is unstable for jumps, sharp slope changes and sparse samples (p. 197, 225), and that EEMD's residual noise makes the spline normalisation overshoot (p. 226).

### IF of multicomponent signals and the WVD centroid
- The WVD's time-conditional mean frequency (eq. 12) is called a "center of gravity type weighted mean local frequency" (p. 184–185). It gives one value for all components, which the authors reject as unrealistic for, say, a symphony (p. 185).
- They also reject the moment-based IF for monocomponent signals, since it "still relies on the moment approach" (p. 181). They see no a priori reason for a multicomponent signal to have a single-valued IF (p. 181), and blame many objections to IF on assuming that one exists for any signal (p. 181).
- The raw HT of a whole speech record ("Hello", Fig. 1–3, p. 187–188) gives a phase portrait of random loops and IF values scattered over about ±10⁴ Hz, positive and negative: "not physically meaningful at all, instantaneously or otherwise" (p. 187).
- With more than two coexisting components, there is no general envelope–carrier expression, and the result may appear as more than one frequency-modulated band in the Hilbert spectrum; "it is, then, impossible to describe the individual components" (p. 221).

### Two tones: beating as one AM–FM component (p. 219–222)
- The paper withdraws Huang et al. 1998's attempt to split cos at + cos bt by 3000 siftings, calling it "both unnecessary and unsatisfactory" (p. 219).
- Instead the sum is written as 2 cos((a+b)t/2) cos((a−b)t/2) (eq. 44). If the carrier frequency (a+b)/2 and the envelope frequency (a−b)/2 are both obtained, "one has indeed extracted all the information in the data" (p. 220).
- On [Rilling & Flandrin 2008](rilling-2008-one-or-two-frequencies-emd-two-tones.md): their conclusion is called rigorous, but separating the tones is "to conform to the mathematic requirement under the Fourier scheme". Matching physics or perception, treating the signal as one component "is more reasonable"; a tone with slightly varying loudness would not be called two tones (p. 220).
- For unequal amplitudes the modulation "is no longer so simple" (no formula is given), and for three or more tones there is no general expression (p. 221).
- If the process really is linear and stationary, Fourier analysis can be used; "the judgment for method selection is not based on which one is correct, for they both are; rather, it is on which one is more familiar and more revealing" (p. 221–222).
- **AM spectrum:** with mode mixing removed (intermittency test or EEMD), the envelope carries information, e.g. the beat. EMD of the speech IMF's spline envelope (Fig. 34) gives a Hilbert spectrum of the AM part (Fig. 35), generally lower in frequency than the FM part (p. 221–222). "The total information of the data is fully represented if we process both the AM and FM spectra" (p. 222).

### Bedrosian and Nuttall, as the paper presents them
- **Necessary conditions first** (p. 187–189): for x = a + cos αt, the AS IF (eq. 23) can take any value depending on a. A meaningful AS IF needs a monocomponent signal with locally zero mean, symmetric about zero. EMD or wavelet projection supplies these, but they are only necessary conditions. Loughlin & Tacer gave physical AM/FM conditions and Picinbono spectral conditions (p. 189).
- **Bedrosian** (eq. 24, p. 189): H{a(t) cos θ(t)} = a(t) H{cos θ(t)} provided the Fourier spectra of envelope and carrier do not overlap.
  - This is "a much sharper condition": the data must be "not only monocomponent, but also narrow band", or the AM contaminates the FM (p. 189).
  - IMFs do not satisfy it automatically. "Strictly speaking, unless one uses bandpass filters, any local AM variation will violate" it (p. 189). The AM and FM spectra of an IMF "would never be disjoint in general, unless the signals were separated specifically by a bandpass filter" (p. 205). Both test cases show overlapping AM and FM spectra (Fig. 15, p. 207; Fig. 28, p. 215).
  - Its consequence: occasional negative IF in earlier Hilbert–Huang work (p. 189), and negative IF near amplitude minima (p. 197).
  - It also makes the HT non-local, since the frequency then depends on more than the carrier (p. 225).
- **Nuttall** (eq. 25–28, p. 189–191): the deeper problem is whether H{cos φ(t)} = sin φ(t) for an arbitrary phase function.
  - Picinbono showed this cannot be decided from spectral properties alone; the error lies in the imaginary part and depends on the structure of the phase function, not on the amplitude spectrum (p. 190).
  - Nuttall's result: for x = a cos φ with arbitrary a and φ, the energy of the difference between the HT x_h and the quadrature x_q is an integral of the quadrature-model spectrum (eq. 27–28). E = 0 is necessary and sufficient for the HT to equal the quadrature (p. 190).
  - The paper finds three deficiencies (p. 190): E needs the quadrature spectrum, which is unknown; it is a global integral, so it cannot say where in a nonstationary record the error is; and it is energy-based, so it says nothing directly about frequency error. It is only "a proxy for the error index of IF" and a necessary condition (p. 190).
- **History** (p. 191): all this was known by the late 1960s. It seemed irrelevant because band-passed signals are "linear and narrow band" and satisfy both conditions automatically. Band-passing removes the nonlinear features, though, so the HT never became a general IF tool (p. 191).
- In the model test, normalisation (NHT) fixes the Bedrosian part (no negative IF), but the Nuttall part remains as **insufficient intrawave modulation** (p. 206–207). This is taken as proof of Picinbono's point that IF error cannot be judged from envelope spectra (p. 207).

### Negative IF and the other paradoxes (p. 223)
- **Line spectrum vs continuous IF:** for nonlinear signals IF treats harmonics as continuous intrawave modulation, and for beating waves as AM and FM. Fourier treats both as discrete lines. "They are representing the same data from two different viewpoints" (p. 223).
- **Negative IF despite discarding negative frequencies** (Cohen's paradox): it has nothing to do with Gabor's construction. It comes from multiple extrema between zero crossings (phase loops not centred on the origin) or from large amplitude fluctuations that make the loop miss the origin (Bedrosian violation) (p. 223). Other causes in the paper:
  - small local amplitude (p. 216);
  - the end mismatch of an FFT-based HT (p. 203, 205);
  - a wrongly unwrapped arccos phase (p. 207).
  It is removed by DQ, NHT or a window that limits amplitude variation (p. 223–224).

### Results on the test signals
- **Damped chirp Duffing model** (eq. 42, t = 0–1024 s at 1 Hz; p. 202–211). There are no tables; the numbers below are read from the figures and checked with my own reproduction where stated.
  - *Quadrature and AS differ:* the DQ phase portrait is an exact unit circle, the NHT one is close but not exact, and the raw HT spirals inwards (Fig. 12, p. 204). The DQ quadrature equals the analytic quadrature of the model (Fig. 13, p. 204–205).
  - *Amplitude:* the spline envelope matches the true envelope except near the start, where end effects make it dip; GZC amplitude is stepped; AS amplitude is distorted by the phase (Nuttall) and by the end jump; TEO amplitude drops to zero wherever the waveform is distorted (Fig. 14, p. 204, 206).
  - *IF:* DQ coincides with the truth, apart from small deviations at the peaks near the end where samples are sparse, and the start (Fig. 16–17, p. 205, 208). In the 850–950 s window, the truth swings between about 0.011 and 0.046 Hz and NHT between about 0.018 and 0.037 Hz (my reading of Fig. 17). Raw HT dips to about −0.06 Hz near 900 s. TEO swings between 0 and about 0.065 Hz, and GZC is a stepped mean of about 0.026–0.029 Hz (Fig. 17).
  - *My reproduction (not in the paper):* with an ideal unit-amplitude carrier cos φ, the analytic-signal IF swings 0.015–0.039 Hz in that window, 68% of the true swing (73% over 400–600 s), with the mean preserved (0.0277 Hz). So NHT's under-modulation is intrinsic to the Hilbert transform (the Nuttall error), not a normalisation fault. The raw HT of the decaying signal reaches −0.041 Hz there.
  - *Ratio IF/truth* (Fig. 19–20, p. 209–210): DQ about 1 except at the very start. NHT oscillates about 0.8–1.5, GZC about 0.6–2.5 and TEO 0–2.9, and HT goes negative after about 850 s (read from Fig. 19).
  - *Energy error index* (Fig. 18, p. 209): NHT peaks at about 0.3–0.45, and TEO is consistently higher. DQ and GZC are negligible, because both have near-perfect envelopes (p. 206).
  - *Arccos vs four-quadrant arctan:* arccos without the extra flipping step gives negative IF; arctan agrees with the truth; and a three-point median ("medium") filter (DQ3) visibly improves on the unfiltered DQ1 (Fig. 21–22, p. 207, 210–211).
  - *Lessons* (p. 211): TEO is for linear signals. GZC gives only a mean, missing the intrawave modulation that marks nonlinearity. NHT is validated, and DQ is superior. A small energy index is necessary but not sufficient for a small IF error; GZC has a small index but wrong intrawave IF.
- **Speech IMF ("Hello")** (22,050 Hz, about 0.55 s; IMF 2 of a plain EMD, chosen to show mode-mixing problems; p. 211–218):
  - *Envelopes:* TEO exceeds the data. The spline envelope is the smoothest and follows GZC closely. The AS modulus shows sub-period fluctuations from waveform distortion (Fig. 25–27, p. 213–215).
  - *Bedrosian checks:* the AM and FM spectra overlap (Fig. 28, p. 215). A narrow window that excludes large amplitude variation restores positive HT frequencies locally, "very difficult to implement" (p. 216).
  - *IF:* TEO drops to zero at many points, which the paper reads as a sign of nonlinearity. HT IF fluctuates wildly and goes negative where the amplitude is small or changing fast. NHT never dips to zero or below. DQ and NHT are "closely intertwined" and match GZC, with DQ showing deeper modulation at distorted waves, which the authors believe is correct by analogy with the model test (Fig. 29–31, p. 216–218). The IMF's IF is about 500–1000 Hz near 0.2 s and 1000–3000 Hz near 0.09–0.1 s (read from Fig. 30–31).
  - *Error index:* NHT is consistently lower than "HT" (here meaning normalisation by the unnormalised AS modulus), except near 0.406–0.407 s, where the spline passed under an extremely low-amplitude peak (error index about 1.5; Fig. 32–33, p. 217–220). Such failures sit at negligible energy, so they barely affect the energy–time–frequency distribution (p. 218).
- **Unnamed sample IMF** (Fig. 4–10, p. 192–199; about 2000 s, IF about 0.02–0.03 Hz): normalisation converges in two or three passes, and three passes leave no value above 1 (p. 193–194). The empirical envelope is smoother than the AS modulus (Fig. 8, p. 195). Near an amplitude minimum around 1750 s, HT IF goes negative (to about −0.03 Hz, read from Fig. 9) while NHT and DQ stay positive (p. 197). The error index is high where the waveform departs from a sinusoid (Fig. 10, p. 199).

### Method verdicts (p. 224–227)
| Method | Locality | Strengths | Weaknesses (paper's words where quoted) |
|---|---|---|---|
| TEO | ≤ 5 points; abstract calls it "the most localized" (p. 177) | no transform; useful *nonlinearity detector* | linear constant-amplitude, single-harmonic model; breaks with AM and especially with harmonic distortion; zero IF even after 5-point median filtering; "not a nonlinear method" (p. 200, 224) |
| GZC | quarter period at best | "most robust and accurate" mean frequency, with a standard deviation; the reference: a method "grossly different from the GZC result in the mean simply cannot be correct" (p. 202) | no intrawave modulation; same frequency as a sinusoid unless the wave is asymmetric (p. 202); method of choice for engineering when waveform detail is unimportant (p. 225) |
| HT (AS) | integral transform; locality not established (p. 224) | simplest and most elegant; results "consistently better than most of the other methods" (p. 225); better than DQ when there are few samples per oscillation (p. 225–226) | needs monocomponent data plus Bedrosian and Nuttall; meaningless otherwise; worse at small amplitude (p. 225) |
| NHT | integral transform on the unit-amplitude carrier | Bedrosian satisfied; local error index; more stable than DQ; preferred if an AS is used (p. 199, 225) | Nuttall error remains (under-modulation); spline undershoot at low amplitude (p. 198, 218) |
| DQ | first derivative only; "even more local than the TEO" (p. 225) | "exact local IF without any limitations and approximations" once properly normalised; Nuttall index identically zero (p. 198, 225) | numerical instability (needs a median filter), worst for sparse samples near extrema; needs dense sampling or spline-interpolated points (p. 197, 225–226) |

- **Conclusion** (p. 226–227): DQ and NHT are the best overall methods for IF of nonlinear, nonstationary data. With confidence limits, EEMD and significance tests, EMD and Hilbert spectral analysis are "a mature time–frequency analysis method", with a solid base "empirically if not theoretically" (p. 227). The authors endorse Flandrin's caution about AS-based IF as "fully justified" (p. 226).
- **EEMD caveat** (p. 226): residual noise in EEMD IMFs makes the spline normalisation overshoot. The preliminary advice is to normalise by the regular AS modulus, or failing that a cubic Hermite or even linear spline.
- A NASA patent was filed on the spline normalisation for IF (p. 227).

## Setup / method

### Empirical AM–FM decomposition (spline normalisation) (p. 191–196)
1. Start from an **IMF** (EMD or EEMD for arbitrary data, p. 202).
2. Find all local maxima of |x(t)|. Using the absolute value makes the normalised data symmetric about zero (p. 191).
3. Fit a cubic spline e₁(t) through them: the empirical envelope. It is unique for a given spline type, since the extrema are fixed (p. 193).
4. Normalise, y₁ = x/e₁ (eq. 29). Where the amplitude changes quickly, the spline can pass under data points, so y₁ can exceed 1 (Fig. 6, p. 193–194).
5. Repeat, yₙ = yₙ₋₁/eₙ (eq. 30), until |yₙ| ≤ 1 everywhere. Two or three passes are typical (p. 193).
6. FM part F(t) = yₙ = cos φ(t) (eq. 31); AM part A(t) = x/F = e₁e₂⋯eₙ (eq. 32); x = A·F (eq. 33).
- Zero crossings are untouched; extrema can shift slightly with repeated passes, deforming the wave a little (p. 195, 198).
- The empirical envelope is generally not the AS modulus, and is smoother. Normalising by the AS modulus would avoid undershoot, but its jagged shape for nonlinear waveforms deforms the normalised wave more. It also spoils damping estimates, where Huang et al. 2006 used the spline envelope instead (p. 195–196).
- A Hermite cubic spline with the monotone condition avoids overshoot and sometimes helps, but is not slope-continuous, so the IF is not smooth; it is not used by default (p. 198–199).
- There is no analytic expression for the result. The authors argue that analyticity is not required for computing IF (p. 195).

### Direct quadrature (p. 196–198)
- sin φ = √(1 − F²) (eq. 34); phase from the four-quadrant arctangent (eq. 35), unwrapped; IF = dφ/dt.
- The complex pair (F, √(1 − F²)) is "not necessarily analytic"; it is built only to recover φ (p. 196).
- F must be perfectly normalised: any |F| > 1 makes eq. 34 imaginary (p. 196).
- Default: arctangent plus a three-point median ("medium") filter; a five-point filter is also mentioned (p. 197).
- **Data dependence:** needs densely sampled, time-resolved data. Sparse points near extrema (high-frequency IMFs) destabilise both the normalisation and the phase (p. 197). With low sampling rates the HT does better unless extra points are spline-interpolated (p. 225–226).

### Normalized Hilbert transform (p. 198–199)
- HT of F(t). The amplitude is identically 1, so Bedrosian holds.
- Error index E(t) = [|z(t)| − 1]² (eq. 36). It is local in time but measures amplitude error, not IF error directly (p. 198).
- Two error sources (p. 198–199): (1) normalisation distortion where the amplitude changes sharply and is small, giving a very large index; (2) nonlinear waveform distortion, i.e. the Nuttall condition, giving a usually small index.

### Teager energy operator (p. 199–201)
- ψ(x) = ẋ² − xẍ (eq. 38). For x = a sin ωt: ψ(x) = a²ω², ψ(ẋ) = a²ω⁴, so ω = √(ψ(ẋ)/ψ(x)) and a = ψ(x)/√ψ(ẋ) (eq. 39–40).
- Exact only for constant a and ω. The AM–FM extension (Kaiser; Maragos et al.) is a "rather poor" approximation (p. 200).
- In the past it was used only on Fourier band-passed data, which hid its failure with nonlinear waveforms (p. 200, 224).

### Generalized zero-crossing (p. 201–202)
- Critical points: all zero crossings and extrema.
  - At each time there are four whole-period intervals T₄ⱼ (up-to-up and down-to-down crossings, maximum to maximum, minimum to minimum);
  - two half-period intervals T₂ⱼ (consecutive crossings, consecutive extrema);
  - one quarter-period interval T₁ (extremum to crossing).
- The mean is eq. 41; the standard deviation is computed the same way, and the matching amplitudes give an envelope.
- No transform and no differentiation. It needs equal numbers of extrema and zero crossings (an IMF).

### Test signals
| Case | Signal | Parameters | Pages |
|---|---|---|---|
| Offset sinusoid | x = a + cos αt | analytic IF eq. 23 | 187–189 |
| Speech, raw | "Hello", 22,050 Hz, about 0.55 s | raw HT IF, ±10⁴ Hz scatter | 187–188 |
| Sample IMF | unspecified data, about 2000 s | NHT and DQ vs HT; error index | 192–199 |
| Damped chirp Duffing model | eq. 42, t = 0:1024, 1 Hz | true IF known (see below) | 202–211 |
| Speech IMF | IMF 2 of "Hello" (plain EMD) | no truth; GZC as reference | 211–218 |
| Two tones | cos at + cos bt | discussed analytically, no computation | 219–221 |
| AM of the speech IMF | EMD of the spline envelope | AM Hilbert spectrum | 221–222 |

- **True IF of the Duffing model** (my derivation from eq. 42; the paper does not print it): with ψ = (π/64)(t²/512 + 32), the phase is ψ + 0.3 sin 2ψ, so f(t) = (t/32768)[1 + 0.6 cos 2ψ] Hz. This is a linear chirp from 0 Hz to a mean of 0.031 Hz at t = 1024, with ±60% intrawave modulation at twice the carrier phase (two IF oscillations per wave, as in Fig. 17). The amplitude decays as e^{−t/256}, to about 2% at the end. At t ≈ 900 s there are about 36 samples per mean period and about 22 at the IF peaks.

### Simulation and modelling side
There is no flow, stability or reduced-order model. The "model" is the closed-form test signal of eq. 42, a phase-modulated cosine shaped like the Duffing perturbation solution. It is used as ground truth, as Huang 1998 did with eq. 9.7. The dynamical-systems content is limited to the Duffing equation as motivation (eq. 4–5) and the Hamiltonian definition of frequency (eq. 7–8).

## Key equations
Checked against page renders of p. 178–179, 183–186, 189–190, 193, 196, 198, 200–202 and 220.

- **Wave-theory definition** (eq. 1–3, p. 178–179):
  $$\varsigma(x,t)=\mathrm{Re}\{a(x,t)e^{i\theta(x,t)}\},\qquad \omega=-\frac{\partial\theta}{\partial t},\quad k=\frac{\partial\theta}{\partial x},\qquad \frac{\partial k}{\partial t}+\frac{\partial\omega}{\partial x}=0$$
- **Classical frequency** (eq. 6, p. 182): ω = 1/T. **Hamiltonian** (eq. 7–8, p. 183): ω(A) = ∂H/∂A, A = ∮ p dq (printed "∮ p dp").
- **Fourier pair** (eq. 9–10, p. 183): $x(t)=\mathrm{Re}\sum_j a_j e^{-i\omega_j t}$, $a_j=\int_0^T x(t)e^{i\omega_j t}\,dt$. **Uncertainty** (p. 184): Δω ΔT ≥ 1/2.
- **WVD and its mean frequency** (eq. 11–12, p. 184–185):
  $$V(t,\omega)=\int_{-\infty}^{\infty}x\!\left(t+\tfrac{\tau}{2}\right)x^*\!\left(t-\tfrac{\tau}{2}\right)e^{-i\omega\tau}d\tau,\qquad \overline{\omega(t)}=\frac{\int\omega V(t,\omega)\,d\omega}{\int V(t,\omega)\,d\omega}$$
- **Quadrature model** (eq. 13–14, p. 185): x = a(t) cos φ(t), x_q = a(t) sin φ(t).
- **Hilbert transform and analytic signal** (eq. 15–20, p. 186):
  $$y(t)=\frac1\pi P\!\int\frac{x(\tau)}{t-\tau}d\tau,\quad z=x+iy=A e^{i\theta},\quad A=(x^2+y^2)^{1/2},\quad \theta=\tan^{-1}\frac yx,\quad z(t)=2\!\int_0^\infty\! F(\omega)e^{i\omega t}d\omega$$
  $$\omega(t)=\frac{d\theta}{dt}=\frac{1}{A^2}\left(xy'-yx'\right)$$
  The canonical pair [A, θ] generally differs from the quadrature pair [a, φ], although the real parts agree (p. 186).
- **Offset sinusoid** (eq. 21–23, p. 187–189): x = a + cos αt, y = sin αt,
  $$\omega=\frac{\alpha(1+a\cos\alpha t)}{1+2a\cos\alpha t+a^2}\quad(\text{printed with } \sin\alpha t \text{ in the numerator; see below})$$
- **Bedrosian** (eq. 24, p. 189): H{a(t) cos θ(t)} = a(t) H{cos θ(t)} if the spectra of a and cos θ do not overlap. **Nuttall's question** (eq. 25, p. 190): H{cos φ} = sin φ?
- **Nuttall error** (eq. 26–28, p. 190), as printed:
  $$E=\int_{-\infty}^{\infty}[x_h(t)-x_q(t)]^2dt=2\int_{-\infty}^{\omega_0}F_q(\omega)\,d\omega,\qquad F_q(\omega)=F(\omega)+i\int_{-\infty}^{\infty}a(t)\sin\theta(t)\,e^{-i\omega t}dt$$
  F_q is the spectrum of the quadrature model a e^{iφ}. *My reconstruction:* the intended form is E ∝ 2∫_{−∞}^{0} |F_q(ω)|² dω, i.e. E is the energy of a(t)e^{iφ(t)} at **negative** frequencies (by Parseval, since the analytic signal keeps only the positive half).
- **Normalisation** (eq. 29–33, p. 193): y₁ = x/e₁; yₙ = yₙ₋₁/eₙ; F = yₙ = cos φ; A = x/F = e₁⋯eₙ; x = A F.
- **Direct quadrature** (eq. 34–35, p. 196):
  $$\sin\phi=\sqrt{1-F^2(t)},\qquad \phi(t)=\arctan\frac{F(t)}{\sqrt{1-F^2(t)}}$$
- **NHT error index** (eq. 36, p. 198): E(t) = [|z(t)| − 1]², with z the AS of the normalised carrier.
- **TEO** (eq. 37–40, p. 199–200): x = a sin ωt; ψ(x) = ẋ² − xẍ; ψ(x) = a²ω², ψ(ẋ) = a²ω⁴; ω = √(ψ(ẋ)/ψ(x)), a = ψ(x)/√ψ(ẋ).
- **GZC mean frequency** (eq. 41, p. 201):
  $$\overline{\omega}=\frac{1}{12}\left(\frac{1}{T_1}+\sum_{j=1}^{2}\frac{1}{T_{2j}}+\sum_{j=1}^{4}\frac{1}{T_{4j}}\right)$$
  Since 1/T₁ ≈ 4f and 1/T₂ⱼ ≈ 2f, each class contributes about 4f and the sum is about 12f. So the stated weights 4 : 2 : 1 are built in, and ω̄ is in cycles per unit time (Hz), despite the symbol.
- **Damped chirp Duffing model** (eq. 42, p. 202):
  $$x(t)=\exp\!\left(-\frac{t}{256}\right)\cos\!\left(\frac{\pi}{64}\Big(\frac{t^2}{512}+32\Big)+0.3\sin\frac{\pi}{32}\Big(\frac{t^2}{512}+32\Big)\right),\quad t=0{:}1024$$
- **Beating** (eq. 43–44, p. 219–220): cos at + cos bt = 2 cos((a+b)t/2) cos((a−b)t/2).

> Points to check against the PDF before relying on them:
> - **Eq. 23** is printed with sin αt in the numerator. Direct differentiation of θ = atan2(sin αt, a + cos αt) gives α(1 + a cos αt)/(1 + 2a cos αt + a²). The printed form looks like a typo; the conclusion (any IF value possible, negative for a > 1) is unaffected.
> - **Eq. 27** as printed integrates F_q (not |F_q|²) up to "ω₀". Parseval gives E = 2∫_{−∞}^{0}|F_q|² dω (up to the 2π convention). Check Nuttall 1966 for the exact statement.
> - **Eq. 28** uses θ while eq. 26 uses φ; they are the same phase.
> - **Eq. 8** prints A = ∮ p dp; the action variable is ∮ p dq.
> - **Eq. 35** as printed is arcsin F, not arccos F; the two differ by π/2, so the IF differs only in sign. More importantly, √(1 − F²) ≥ 0, so a four-quadrant arctangent cannot by itself place the phase in the right half-cycle. The sign of the quadrature must be assigned, e.g. from the sign of −dF/dt. The paper does not say how it did this (p. 196–197, 207).
> - **Eq. 2** uses ω = −∂θ/∂t (wave convention e^{i(kx−ωt)}), whereas eq. 20 uses ω = dθ/dt. This matters only for sign.
> - **Locality ranking is inconsistent:** the abstract calls TEO "the most localized" (p. 177), but p. 200 and p. 225 rank DQ above TEO.
> - All accuracy numbers above are read from figures (Fig. 9, 17, 18, 19, 30, 31); the paper reports no tabulated errors.

## Data tables
No numerical tables in the paper. Values worth reusing:

| Quantity | Value | Page |
|---|---|---|
| Normalisation passes to reach max |F| ≤ 1 | 2–3 (three in the example) | 193 |
| DQ default smoothing | 3-point median (5-point also used) | 197, 224 |
| TEO stencil | ≤ 5 points | 200 |
| GZC resolution | quarter period; 7 interval estimates per point | 201–202 |
| Uncertainty bound as stated | Δω ΔT ≥ 1/2 | 184 |
| Duffing model: true IF range at 850–950 s | ≈ 0.011–0.046 Hz (mean 0.028) | Fig. 17, p. 208; my derivation |
| Duffing model: NHT IF range, same window | ≈ 0.018–0.037 Hz (paper's Fig. 17); 0.015–0.039 Hz with an ideal carrier (my reproduction) | 208 |
| Duffing model: raw HT minimum, same window | ≈ −0.06 Hz | 208 |
| Duffing model: NHT error index peaks | ≈ 0.3–0.45 | 209 |
| Speech: sampling rate | 22,050 Hz | 187 |
| Speech IMF 2 IF | ≈ 500–1000 Hz near 0.2 s; 1000–3000 Hz near 0.1 s | 217–218 |
| Speech: largest NHT error index | ≈ 1.5 at 0.406–0.407 s | 220 |

## Figures worth remembering
- **Fig. 2–3 (p. 188):** raw HT of a whole speech record: a phase portrait of random loops and IF scattered over ±10⁴ Hz. The canonical picture of IF on multicomponent data.
- **Fig. 5–8 (p. 192–195):** spline envelope through the maxima of |x|, one and three normalisation passes, and the spline envelope against the jagged AS modulus.
- **Fig. 9 (p. 197):** HT vs NHT vs DQ on the sample IMF; HT goes negative at an amplitude minimum.
- **Fig. 12 (p. 204):** phase portraits for the Duffing model: DQ a perfect unit circle, NHT near it, HT spiralling.
- **Fig. 15 and 28 (p. 207, 215):** overlapping AM and FM spectra, i.e. Bedrosian violated, for both test signals.
- **Fig. 16–17 (p. 208):** IF from all methods against the truth. The key figure: DQ on the truth, NHT under-modulated, HT negative, TEO hitting zero, GZC flat.
- **Fig. 18–20 (p. 209–210):** energy error index and IF/truth ratio.
- **Fig. 21–22 (p. 210–211):** arccos vs arctangent phase, with and without the median filter.
- **Fig. 29–31 (p. 216–218):** speech IMF IF from all methods; NHT and DQ agree with GZC.
- **Fig. 33 (p. 220):** a spline undershoot at a very low-amplitude wave causing the largest NHT error.
- **Fig. 34–35 (p. 221–222):** IMFs of the envelope and the AM Hilbert spectrum overlaid on the FM one.

## Notation
- x(t): data or IMF. y(t), x_h: Hilbert transform. z = x + iy = A e^{iθ}: analytic signal (canonical pair A, θ). x_q = a sin φ: quadrature (pair a, φ).
- e_n(t): n-th spline envelope. y_n: n-times normalised data. F(t) = cos φ(t): empirical FM part. A(t): empirical AM part.
- E: Nuttall's global error energy. E(t): local energy error index of NHT. F(ω): spectrum of x. F_q(ω): spectrum of a e^{iφ}.
- ψ(x): Teager energy operator. T₁, T₂ⱼ, T₄ⱼ: quarter, half and full-period intervals of GZC.
- AS: analytic signal. HT: Hilbert transform. NHT: normalized HT. DQ: direct quadrature (DQ1 unfiltered, DQ3 with a 3-point median). TEO: Teager energy operator. GZC: generalized zero-crossing. WVD: Wigner–Ville distribution. IMF: intrinsic mode function. EEMD: ensemble EMD.
- Intrawave modulation: frequency variation within one cycle (the nonlinear-distortion signature). Interwave: from cycle to cycle.

## Relevance to this project
This is the Hilbert–Huang side's main statement on what IF is and whether it is limited by the uncertainty principle. It is the primary source for H1 in [Library_of_Shock_Lab/Research_Questions/hpod-instantaneous-frequency-uncertainty.md](../Research_Questions/hpod-instantaneous-frequency-uncertainty.md). It follows on from [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md) and pairs with the signal-processing view of [Boashash 1992](boashash-1992-instantaneous-frequency-fundamentals.md), the resolution analysis of [Rilling 2008](rilling-2008-one-or-two-frequencies-emd-two-tones.md) (which it discusses, p. 220) and the proofs of [Daubechies 2011](daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md).

- **What it means for HPOD instantaneous frequency** (step 3 of the SPOD → reconstruction → Hilbert POD pipeline in CLAUDE.md):
  - HPOD's IF, (1/2π) d arg ψ_j/dt ([Raiola 2025](raiola-2025-hilbert-pod.md), eq. 2.20–2.21), is the **analytic-signal IF** (HT in time). It is not DQ. The paper's strongest locality claims ("no integral interval", p. 196) apply to DQ, TEO and GZC, not to the HT, whose locality it leaves unquantified (p. 224). So the H1 argument does not transfer directly to HPOD. *(My inference.)*
  - By the paper's own account, a **band-passed** signal satisfies Bedrosian and Nuttall automatically (p. 191). An SPOD reconstruction of one or a few frequency bins is a band-pass, so HT-based IF of that reconstruction is on the safe side of both conditions. The paper's objection to band-passing is that it strips nonlinear waveform features (p. 183, 191). *(Application to SPOD is my inference.)*
  - If harmonic bins are kept to preserve waveform shape (as the [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md) note suggests for screech), the reconstructed signal has intrawave modulation. Then the analytic-signal IF will be **under-modulated** (Nuttall), as NHT is in the Duffing test (Fig. 17, p. 208): my reproduction gives about 68% of the true swing. DQ on a spline-normalised, *real* reconstructed coefficient would recover it. *(Suggestion.)*
  - *My inference from Nuttall's theorem and the test:* the HT tracks a phase modulation faithfully only while the FM sidebands of a e^{iφ} stay at positive frequencies, roughly while frequency excursion plus modulation rate stays below the carrier frequency. In the Duffing model the modulation rate is twice the carrier, which breaks this. In my quick check, modulations with rate ≤ f_c and moderate depth were tracked to ≥ 94% of the true swing, whereas rate 2f_c with ±60% depth gave 63%.
  - **Sanity checks to adopt:**
    - the GZC mean as a robust reference: an HPOD IF that differs "grossly" in the mean from GZC "cannot be correct" (p. 202);
    - the NHT error index [|z| − 1]² (eq. 36), computed on a normalised mode coefficient, as a local quality flag;
    - TEO collapse as a detector of nonlinear waveform distortion (p. 201, 213), e.g. to tell a nonlinearly saturated screech cycle from a sinusoidal one.
  - **Negative IF in HPOD output** has a diagnosis here: a second component (loops off the origin), small amplitude, or fast amplitude change (p. 216, 223), plus FFT end effects (p. 203, 205). These agree with the 10–15% end trimming in Raiola and Horel ([Horel 1984](horel-1984-complex-principal-component-analysis.md)).
- **Two tones in one band** (A1/A2, twin-jet SS/SA):
  - The paper is explicit that an IF method represents two coexisting tones as one AM–FM component: carrier (a+b)/2 for equal amplitudes, and the second frequency carried by the envelope (p. 220–222).
  - So a band holding both A1 and A2 will not show two IF values. It shows one IF plus an envelope (AM) modulated at the difference frequency. Coexistence then appears in the **AM spectrum**, switching as plateaus in the IF.
  - This supports the exclusivity test proposed in the research question, and the beat test of [Wong 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md) and the time-frequency-methods topic page (point 8). Comparable joint-statistic tests are in [Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) and [Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md).
- **Which data each method suits:**
  - All five IF methods need a single, uniformly sampled, **time-resolved** monocomponent series: a microphone signal after EMD or band-passing, a time-resolved schlieren pixel, or an HPOD/SPOD temporal coefficient. DQ additionally needs dense sampling: in the model test it already deviates visibly at the IF peaks near the end, where there are only about 22 samples per local period (my calculation from eq. 42; p. 205, 208). That is far above Huang 1998's minimum of 5 points per wave for the HT.
  - None applies to non-time-resolved PIV. For PIV the spatial analogue is HPOD_x, where the same Bedrosian and Nuttall issues apply along x (my inference).
  - EEMD-type residual noise makes spline normalisation overshoot (p. 226). Noisy experimental reconstructions may need AS-modulus normalisation or denoising first ([Nekkanti 2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)).
- **Harmonics vs intrawave modulation** (open question on the time-frequency-methods topic page):
  - The paper restates Huang's physical preference for intrawave modulation (p. 180).
  - But it also concedes that the harmonic and intrawave descriptions represent "the same data from two different viewpoints" (p. 223), and that the choice between beat and two tones is about familiarity, not correctness (p. 221–222).
  - That supports treating BMD/bicoherence and Hilbert intrawave IF as alternative decompositions of the same screech waveform.
- **Rocket noise:** steepened, nonlinearly propagated waveforms are the kind of data where TEO would collapse and DQ would show intrawave modulation. Neither has been tried on launch-vehicle data in the library.
- **Modelling side:** no flow models. The Duffing-type test signal (eq. 42) is a ready synthetic benchmark for any IF pipeline: a chirp, exponential decay and ±60% intrawave modulation with a closed-form true IF. It could join the synthetic switch benchmark proposed on the time-frequency-methods topic page.
- **Follow-up candidates:**
  - from the publisher's cited-by list (PDF p. 56–57):
    - Huang et al. 2011, "On Hilbert spectral representation: a true time–frequency representation" (Adv. Adapt. Data Anal. 3);
    - Wu, Flandrin & Daubechies 2011, "One or two frequencies? The synchrosqueezing answers" (Adv. Adapt. Data Anal. 3);
    - Kaslovsky & Meyer 2010, on noise in EMD and its effect on IF (Adv. Adapt. Data Anal. 2);
  - from the reference list: Wu & Huang 2009 EEMD (ref. 41); Picinbono 1997 (ref. 16); Bedrosian 1963 and Nuttall 1966 (refs 18–19).
