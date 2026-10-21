---
key: "gabor-1946-theory-of-communication"
title: "Theory of communication. Part 1: The analysis of information"
authors: ["Gabor, D."]
year: 1946
type: "article"
venue: "J. IEE Part III 93(26), 429–441 (Part 1; the PDF also holds Parts 2–3, pp. 442–457)"
bib: {"journal": "Journal of the Institution of Electrical Engineers - Part III: Radio and Communication Engineering", "volume": "93", "number": "26", "pages": "429--441", "note": "Part 2 (The analysis of hearing, pp. 442--445) and Part 3 (Frequency compression and expansion, pp. 445--457) follow in the same issue"}
doi: "10.1049/ji-3-2.1946.0074"
arxiv: ""
pdf: "time-frequency-methods/Gabor_1946_Theory-Of-Communication-Part-1-The-Analysis-Of-Information.pdf"
version: "published"
unverified: ["DOI and issue number 26 are not printed in the scan (taken from the indexing request)", "journal's full name from memory: the scan prints only 'Vol. 93, Part III' and 'Radio Section paper'", "year 1946 is inferred from the footnotes dated 7 Feb and 15 June 1946; no journal date is printed", "Part 1 page range 429–441 as a separate citation item is from the request; the scan runs 429–457 without a break between parts"]
group: false
facility: "British Thomson-Houston Co. Research Laboratory (Part 3 frequency-convertor tests)"
data: ["none"]
methods: ["Hilbert-transform", "spectrogram"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["time-frequency-methods"]
related: ["huang-1998-empirical-mode-decomposition-hilbert-spectrum", "raiola-2025-hilbert-pod", "horel-1984-complex-principal-component-analysis", "kriegseis-2021-hilbert-transform-revisited-hpod", "boashash-1992-instantaneous-frequency-fundamentals", "rife-1974-single-tone-parameter-estimation-discrete-time", "daubechies-2011-synchrosqueezed-wavelet-transforms-emd", "rilling-2008-one-or-two-frequencies-emd-two-tones", "torrence-1998-practical-guide-wavelet-analysis", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "sieber-2016-spectral-proper-orthogonal-decomposition"]
cites: []
summary: "Origin of the analytic signal and of Δt·Δf ≥ ½ (√2π × rms widths); information diagram, Gaussian logons, Gabor expansion; 2BT data, one datum per area ½"
---
# Theory of communication. Part 1: The analysis of information (with Part 2: The analysis of hearing, and Part 3: Frequency compression and expansion)

- **Authors:** D. Gabor (British Thomson-Houston Co., Research Laboratory). Received 25 Nov 1944, revised 24 Sep 1945; notes added 7 Feb 1946 and 15 June 1946 (p. 429, 432, 449).
- **Source:** Journal of the IEE, Vol. 93, Part III (Radio Section paper), 1946, doi:10.1049/ji-3-2.1946.0074 (DOI and issue number from the indexing request, not printed in the scan). Part 1 is pp. 429–441, Part 2 pp. 442–445, Part 3 pp. 445–457; p. 457 ends with the acknowledgements and the start of an unrelated discussion of another paper.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Gabor_1946_Theory-Of-Communication-Part-1-The-Analysis-Of-Information.pdf` (29 pp.; all three Parts). **Scanned, with no text layer:** this note was written from page images rendered at 150 and 300 dpi. Equations were transcribed by eye and checked where possible by recomputation; the ones not checked are flagged below. The right edge of some right-hand columns is cut off in the scan (e.g. eq. 1.31's number, p. 436).
- **Page refs:** printed journal page numbers. PDF page n = printed page 428 + n.
- **Tags:** analytic signal, complex signal, Hilbert transform, signal in quadrature, uncertainty relation, effective duration, effective frequency width, information diagram, logon, elementary signal, Gaussian wavepacket, Gabor expansion, time–frequency lattice, 2BT theorem, minimum-time signals, Hermite functions, instantaneous frequency (Carson–Fry), frequency modulation, psychoacoustics, pitch discrimination, frequency compression, Gaussian window, chirped Gaussian pulse

## Summary
Part 1 recasts signal analysis in a time–frequency plane, the "information diagram", in which time and frequency play symmetric roles (p. 429–432). Gabor introduces the complex (analytic) signal ψ = s + jσ, with σ the Hilbert transform of s, mainly so that frequency moments of |φ(f)|² are not trivially zero (p. 432–434). He then borrows the moment formalism of quantum mechanics to define an effective duration Δt and effective frequency width Δf as √(2π) times the rms spreads of |ψ|² and |φ|² about their centroids, and proves Δt·Δf ≥ ½ by the Weyl–Pauli Schwarz inequality, with equality only for a Gaussian-modulated harmonic oscillation (p. 434–435, 440–441). Calling that minimum-area signal a "logon" that carries exactly one datum, he expands any signal on a time–frequency lattice of logons, the Gabor expansion (p. 435–437), finds the shortest signals that can pass a channel of given width (p. 437–438), and applies the diagram to frequency modulation and time-division multiplex (p. 438–439). Part 2 maps published pitch-discrimination thresholds onto the diagram and concludes the ear uses close to every second datum below 1 kHz, with an adjustable time constant of 20–250 ms (p. 442–445). Part 3 proposes and tests a "kinematical" frequency compressor, a moving-slit scanner behind a Gaussian window that is in effect a Gaussian-windowed short-time analysis–resynthesis (p. 445–457).

## Key findings

### The information diagram and the number of data (p. 429–432)
- **Fundamental principle** (p. 430). Expanding s(t) over an interval τ as a Fourier series gives lines spaced 1/τ, two data (sine and cosine coefficients) per line, so a band (f₂ − f₁) holds 2(f₂ − f₁)τ data: "two data per unit time and unit frequency range". No choice of N data can transmit more than 2(f₂ − f₁)τ independent ones (p. 430).
- **Why both time and frequency.** Fourier's theorem makes time description and spectrum mutually exclusive. With "frequency" in its strict sense, a "changing frequency" is a contradiction in terms, since it involves both time and frequency (p. 431). Gabor quotes Carson's unease that the FM spectrum is hard to reconcile with intuitions about "variable-frequency" mechanisms such as the siren (p. 431).
- **Instruments tile the plane** (p. 431–432). An oscillograph analyses the diagram into rectangles broad in frequency and narrow in time, a bank of reeds the reverse. For any resonator, decay time × tuning width ≈ a number of order one, so each reading occupies a "characteristic rectangle" of about unit area (p. 431). Instruments analyse the plane into rectangles of area "of the order unity, but not less than one-half"; the count of rectangles is the number of independent data, hence the name "diagram of information" (p. 432).
- **The limit.** Analysis can be made as fine as desired in time *or* in frequency, but not in both at once beyond a certain limit (p. 432). The qualitative form is Δt·Δf ≃ 1 (eq. 1.2, p. 432). Gabor credits G. W. Stewart (1931) with raising the uncertainty relation in acoustics, and notes that its link to the transmission principle had gone unnoticed (p. 432).

### The complex (analytic) signal (p. 432–434, 439–440)
- **Construction** (p. 432–433). Of two ways to introduce complex exponentials, Gabor takes the quantum-mechanical one, cos ωt = ℜ(e^{jωt}) (eq. 1.4). A real s = a cos ωt + b sin ωt becomes ψ = s + jσ = (a − jb)e^{jωt}, where σ replaces cos ωt by sin ωt and sin ωt by −cos ωt: the signal "in quadrature" with s (eq. 1.5–1.6, p. 432). For a general s, replace every cosine in its real Fourier integral by e^{jωt} and every sine by −je^{jωt}; equivalently, "suppress the amplitudes belonging to negative frequencies, and multiply the amplitudes of positive frequencies by two" (p. 432–433).
- **Hilbert pair** (eq. 1.7–1.8, p. 433). σ is a Cauchy principal-value integral of s and vice versa; the pair is named "Hilbert transforms". Any analytic function of z = x + jy with no poles on one side of the real axis gives a quadrature pair along any line that leaves all poles on one side (p. 433). Example (Fig. 1.5): s = 1/(1 + (t/t₀)²) and σ = (t/t₀)/(1 + (t/t₀)²) contain the same spectral components, so the ear could not tell them apart, provided Ohm's law of hearing holds (p. 433).
- **Why it is needed.** With the real signal the spectral weight |S(f)|² is even, so the mean frequency f̄ would always be zero; the negative frequencies can be eliminated "only at the price of introducing a complex signal" (p. 433–434). All even-order moments (t̄², f̄², …) are unchanged if s or σ is used instead of ψ (p. 434). So the analytic signal matters for the first moments (centroids), not for the second.
- **It needs the future.** σ(t) depends on s at all times, including the future. A mechanical quadrature generator (rotating phosphorescent drum with hyperbolic apertures, Fig. 1.14) works by delaying s by about 0.1 s of "relevant future" (p. 439–440). Direct single-sideband production "involves knowledge of the future" (p. 440).
- **No phase-derivative instantaneous frequency.** Nowhere in the three Parts (as read from the images) does Gabor define a frequency as d arg ψ/dt. His only explicit comment is a footnote: Carson's "generalized frequency" (1922), developed with T. C. Fry (1937) as "instantaneous frequency", is "a useful notion for slowly-varying frequencies, but not sufficient to cover all cases in which physical feeling and the Fourier integral theorem are at variance" (p. 431). The phase-derivative definition on the analytic signal is Ville's (1948), as traced in [Boashash 1992](boashash-1992-instantaneous-frequency-fundamentals.md).

### Moments and the exact uncertainty relation (p. 433–435, 440–441)
- **Weight function** |ψ|² = s² + σ² (eq. 1.11), called the signal "power" (p. 433). Mean epochs t̄ⁿ (eq. 1.12) and mean frequencies f̄ⁿ (eq. 1.13) are its normalised moments. By Stieltjes's theorem the full set of moments fixes |ψ|² but leaves the phase of ψ arbitrary (p. 433).
- **Time ↔ frequency translation** (eq. 1.14–1.18, p. 434): replace t by −(1/2πj) d/df, or f by (1/2πj) d/dt, Heaviside-style. So f̄ = (1/2πj)∫ψ* ψ′ dt / ∫ψ*ψ dt (eq. 1.18). For a pure cisoid, f̄ⁿ = f₀ⁿ but t̄ⁿ is zero or infinite; the theory applies properly only to signals of finite duration and finite band (p. 434).
- **Centroids are references, not data** (p. 434). The mean epoch and mean frequency "do not count as data, as in a continuous transmission there will be some signal strength at any instant, and at any frequency". The first two *data* are the mean-square values of epoch and frequency (eq. 1.19–1.20).
- **Effective duration and frequency width** (eq. 1.21–1.22, p. 434): Δt and Δf are √(2π) times the rms deviations of epoch from t̄ and of frequency from f̄. Shifting the origins to t̄ and f̄ (eq. 1.23–1.24) and multiplying gives eq. 1.25. The Schwarz inequality "due to Weyl and Pauli" makes the bracket in eq. 1.25 at least one, so
  - **Δt·Δf ≥ ½** (eq. 1.26, p. 434). In plain rms widths this is σ_t σ_f ≥ 1/4π (equivalently σ_t σ_ω ≥ ½).
- **Why √(2π).** "The r.m.s. duration of a signal, and its r.m.s. frequency-width define a minimum area in the information diagram." With the factor √(2π) = 2.506, the number of elementary areas of size ½ in any large region equals the number of independent data the region can transmit (2 per unit area, p. 430), so one minimum cell carries one datum (p. 434–435).
- **Proof and equality** (Appendix 9.3, p. 440–441). The inequality (eq. 1.39) follows from the Schwarz inequality in Hermitian space, eq. 1.40–1.46, with an integration by parts that needs Ψ to vanish at the limits. Equality needs both conditions eq. 1.41–1.42 to be equalities, which leads to dΨ/dτ = ±(CC*)^{½}τΨ (eq. 1.52) and Ψ = exp(−½|C|τ²) (eq. 1.53). The minimum is therefore reached only by a Gaussian envelope (p. 441).
- **Hermite functions** (p. 441). The more general wave-mechanics problem (minimise Δt·Δf with vanishing at infinity) gives the harmonic-oscillator equation, whose Hermite-function solutions occupy areas Δt·Δf = ½(2n + 1), i.e. ½, 3/2, 5/2, … They are orthogonal and so convenient for expansions, but they presuppose a distinguished epoch t = 0 and do not tile the plane into non-overlapping cells, so Gabor rejects them for continuously emitted signals (p. 441).

### Elementary signals (logons) and the Gabor expansion (p. 435–437)
- **The elementary signal** (eq. 1.27, p. 435): "the modulation product of a harmonic oscillation of any frequency with a pulse of the form of a probability function", ψ = exp[−α²(t − t₀)²] cis(2πf₀t + φ), with Δt = √(π/2)/α and Δf = α/√(2π). Its spectrum has the same form (eq. 1.28); the two widths are reciprocal (Fig. 1.6). Gabor credits Roberts and Simmonds (1943–1944) with the pulse's analytical advantages but says its minimum property had not been recognised (p. 435).
- **Logon.** Each elementary signal, drawn as a rectangle of sides Δt, Δf and area ½ centred on (t₀, f₀), "represents, as it were, one elementary quantum of information", named a *logon* (p. 435). α = 0 gives an infinite sine wave and α → ∞ a delta function, so time description and Fourier analysis are the two limiting cases of logon expansion (p. 435).
- **Lattice expansion** (eq. 1.29, p. 435–436). Lines a distance Δt apart in time and 1/Δt apart in frequency (Fig. 1.8) give unit cells. In each cell one complex coefficient c_nk weights a logon centred at t_n = nΔt and frequency k/Δt. The matrix c_nk represents the signal symmetrically: expanding φ(f) instead gives the same coefficients up to a constant (p. 436). A footnote says perfect symmetry needs spacings √2·Δt and 1/(√2·Δt) = √2·Δf (p. 435).
- **Coefficients by successive approximation** (p. 436). The logons are **not orthogonal**. As a first approximation each strip n is treated alone: multiply ψ by the inverse Gaussian over (t_n − ½Δt, t_n + ½Δt) and read the c_nk off as a Fourier series. Then subtract the error caused by overlap with neighbouring strips and repeat. Gabor expects rapid convergence, since the Gaussian decays fast enough that only neighbouring strips interact (p. 436).
- **Real version** (eq. 1.30–1.31, Fig. 1.9–1.10, p. 436). Cosine-type and sine-type real elementary signals with α² = π/2(Δt)² give one real datum per cell of area ½ (Δt by 1/2Δt), alternating cosine- and sine-type along each strip and starting with a cosine at f = 0. The resulting series has its sine terms at frequencies (k + ½), mid-way between the cosine terms. It is made into an ordinary Fourier sine series by the quadrature operation of Section 3 (p. 436).
- **Overlap.** An elementary signal has **76.8%** of its energy inside its band Δt (or Δf) and **11.6%** on either side (p. 437). If a resonator with a Gaussian response tuned to f̄ collects 100%, those tuned to f̄ ± Δf collect only **0.65%** each (p. 437). Gabor concludes that approximate analysis may ignore the interference, and that a bank of Gaussian-response resonators would perform it (p. 437).
- **Causality** (p. 437). Exact logon expansion needs "the overlap of the future"; strict causality exists only in "time language", and as soon as frequency is used as a second reference, an uncertainty of the quantum-mechanical "breakdown of causality" kind appears. Since only ideal oscillographs are strictly causal, this costs nothing in practice (p. 437).

### Minimum-time signals and band-limited channels (p. 437–438, 441)
- **Given effective width Δf:** the signal passed in minimum time is the Gaussian Ψ = exp[−2π(Δf)²(t − t̄)²] (eq. 1.32), with spectrum exp[−(π/2)((f − f̄)/Δf)²] (eq. 1.33) (p. 437).
- **Given total width f₂ − f₁** (spectrum zero outside): minimising Δt (eq. 1.34; Appendix 9.4, eq. 1.54–1.59) gives the Sturm–Liouville problem φ″ + Λφ = 0 with φ = 0 at the band edges (eq. 1.35). The solutions are φ = sin kπ(f − f₁)/(f₂ − f₁) (eq. 1.36), with Δt = √(π/2) k/(f₂ − f₁) (eq. 1.37) and Δf = (f₂ − f₁)√(π/6 − 1/πk²) (eq. 1.38) (p. 437).
  - The shortest is k = 1: Δt ≈ **1.25/(f₂ − f₁)**, with Δt·Δf = **0.571** quoted, and Δf only **0.456** of the band. The channel is "poorly utilized" (p. 437).
  - The signal is appreciably non-zero over a total time of **2/(f₂ − f₁)** (Fig. 1.11, p. 438).
  - Vestigial or single-sideband transmission recovers the waste (p. 437). The cosine-squared spectrum matches Wheeler and Loughren's empirical "most attractive compromise" for television (p. 437–438).

### Frequency modulation and multiplexing on the diagram (p. 438–439)
- **FM** (Fig. 1.12, p. 438). Time trace, line spectrum and information-diagram picture of a slowly modulated carrier. The diagram version "corresponds very closely to our familiar idea of a variable frequency". The only departure from the naive picture of an undulating curve is that the curve has to be thick and blurred. Gabor deliberately does not draw the blur, partly because it "might give rise to the idea that the picture could be replaced by a definite density distribution". He draws logons of area ½ instead, and the rectangles' aspect ratio Δt/Δf "is entirely arbitrary and depends on the conventions of the analysis" (p. 438). Choosing Δt as a reed bank's damping time approximates that instrument's response and roughly our aural impression of a siren (p. 438).
- **Time-division multiplex** (Fig. 1.13, p. 438–439). N channels of width w need a switching rate f_s = 2Nw (Bennett's result), one logon per contact. The optimum pulse is the sine-shaped minimum-time signal, so W = 2f_s = 4Nw. Single-sideband halves this, and since the epoch of each pulse is known, the band can be halved again to the minimum W = Nw (p. 439).
- **Other bases** (Appendix 9.1, p. 439). Orthogonal Bessel functions √t J_n(r_k t/τ) could serve, but the number of their spectral lines between two "Bessel frequencies" is not proportional to τ. Only harmonic functions transmit equal information in equal time intervals and satisfy linear differential equations without explicit time, so only they pass circuits of constant elements (p. 439).

### Part 2: the analysis of hearing (p. 442–445)
- **Framing** (p. 442). The Vocoder sends intelligible speech in 11 channels of 25 c/s (275 c/s), a compression of about 10; Küpfmüller's letter-transmission ratio is about 40 (p. 442). Gabor now lets logons take adaptive shapes and positions, a "black-and-white" representation (Fig. 2.1), which he suggests is close to how we hear (p. 442).
- **Bürck, Kotowski and Lichte** (Fig. 2.2, p. 442). At 500 and 1000 c/s a tone is recognised as a tone after about 10 ms, but a second datum (a step in intensity) needs at least 21 ms. The threshold area is therefore **2.1** elementary areas at 500 c/s and **3.0** at 1000 c/s (p. 442).
- **Shower and Biddulph** (p. 443). A trill (sinusoidal FM at 2 c/s, 40 dB sensation level) is just distinguishable from a steady tone at the δf in the table below. δf is almost constant (≈3 c/s) up to 1000 c/s; above it δf/f₀ is roughly constant (p. 443).
  - Gabor replaces each FM tone by two staggered trains of elementary signals at f₀ ± ½f_s that alternate every 0.25 s. He fits f_s and the sharpness α so that the ratio of the first two Bessel side lines (eq. 2.1) to the central one is matched by the logon trains' line amplitudes (eq. 2.2). Agreement is good to 2000 c/s, poorer at 4000 and 8000 c/s (Fig. 2.3, p. 443).
  - Threshold areas, in units of ½: **2.34** (62.5–1000 c/s), **2.88** (2000), **3.92** (4000), **6.9** (8000) (p. 443).
- **Efficiency** (Fig. 2.4, p. 444). The reciprocal of the threshold area is a performance figure, unity for an ideal instrument. Up to about 1000 c/s it is "almost 50%", the ideal for a phase-blind instrument that discards half of the data. Above that it falls sharply, and over 0–8000 c/s the ear uses only about a quarter of the data (Fig. 2.6, p. 444).
- **Adjustable time constant** (p. 444). The two experiment series (10–20 ms and 250 ms durations) give the same threshold area, so the threshold is characteristic of the ear for durations of 20–250 ms. The ear's resonators decay within about 10 ms (Hunt: 1 bel in 2 cycles at 1000 c/s), far too fast for a quarter-second integration.
- **Centre location vs resonance width** (Fig. 2.5, p. 444). To explain the fine pitch sensitivity, "it is therefore necessary to assume a second mechanism which locates the centre of the resonance region with a precision increasing with the duration of the stimulus". It acts like a non-mechanical resonance curve that detaches from the mechanical one after about 10 ms and contracts to a few c/s by about 250 ms. Gabor suggests mutual inhibition between adjacent nerve fibres and stresses that this is a hypothesis (p. 444).

### Part 3: frequency compression and expansion (p. 445–457)
- **Kinematical frequency convertor** (Fig. 3.1–3.2, p. 445–446). A record moving at speed v is scanned by slits moving at u = (1 − κ)v, so frequencies scale by κ (eq. 3.1–3.2). A window of Gaussian transmission P(x) = exp[−(x/Ns)²] (eq. 3.5) fades the slits in and out; N is the "slit number". The window is 4.3Ns long where its transmission exceeds 1%, so about 4.3N slits are in view (p. 446).
- **Spectrum** (eq. 3.10a/b, p. 447): a Gaussian attenuation centred on κf₀ times a comb of lines at f₀ + k/τ (eq. 3.11). An infinitely broad window converts frequency exactly but places short signals at indefinite times. An infinitely short one scatters the frequencies evenly. This is the uncertainty relation again, and the Gaussian ("probability") window is ideal in that it gives the smallest product of the linked uncertainties of frequency and epoch (p. 447). It is "not necessarily the best from a practical point of view"; triangular and trapezoidal windows with two or three slits give zero background noise (Fig. 3.8, p. 449).
- **Trade-offs** (p. 448–449). Reproduction quality cycles with frequency period F = 1/τ(1 − κ) (eq. 3.13). N = 0.25 is noisy, N = 1 drops the mid-cycle tones, and **N = 0.5** is the best compromise (intensity at mid-cycle 0.56 of maximum). The window length is T = 4.3Nτ(1 − κ) (eq. 3.14), and FT = 4.3N ≈ 2 (eq. 3.15). The best compromise between time resolution and frequency reproduction "is a matter for experiment"; Gabor expects T ≈ 100 ms for speech and ≈ 250 ms for music. A note added in June 1946 confirms this for speech but not music (p. 448–449).
- **Compression–expansion cycle** (p. 449–452; Appendix 8.2–8.3). Two conversions in succession give line spectra at f₀ + k/τ₁ + m/τ₂ (eq. 3.16–3.17), reducible to theta functions (eq. 3.65–3.72). Distortion arises almost entirely in the expansion. The reconvertor acts like a musical instrument with fixed tones at equal arithmetical intervals, so it reproduces better at high frequencies. A compressor followed by an expander gives "as close a reproduction of the original as is compatible with the uncertainty relation" (p. 452).
- **Experiments** (p. 452–453). A 16-mm sound-film projector was fitted with a slotted steel-tape drum. The window was T ≈ 32 ms (48 ms at "silent" speed); κ = 0.25–3.33 was tried.
  - Male speech stays intelligible at κ = 1.5, much less so at 1.75, and about half the words survive at κ = 2. At κ ≤ 0.42 it becomes unintelligible growling.
  - A κ = −1 reconversion test with N = 0.5, 0.75, 1 and 2 (beat frequencies 60–240 c/s) found N = 0.5 best, as predicted.
  - Gabor projects about sevenfold compression without essential loss of intelligibility if T is about tripled (p. 452–453).
- **Devices** (p. 453–454): phosphorescent film, Scophony liquid troughs (record held only ~10⁻⁴ s, too short for sound), and magnetic tape with a spoked wheel (Fig. 3.17). The delay is at least T plus the transit time, under about 200 ms for speech (p. 453–454).
- **Electrical method** (p. 454–455). Modulating with recurrent Gaussian pulses exp[−λ(t − kτ)²] (eq. 3.33). With complex λ = α² + jβ² (eq. 3.34) each pulse is a sine wave of linearly varying frequency under a Gaussian envelope (eq. 3.35, Fig. 3.18), i.e. a Gaussian chirp. Superposed, such pulses can approximate a constant-amplitude wave with a saw-tooth frequency law (p. 454). Filtering through a Gaussian admittance (eq. 3.39) gives a compressed spectrum (eq. 3.40–3.43). With real constants only compression (κ < 1) is possible; re-expansion needs complex λ and σ. Gabor therefore calls it "condensation–dilution" (p. 455).
- **Elementary signals through the convertor** (Appendix 8.1, eq. 3.44–3.54, p. 455–456). A short logon's envelope is reproduced on a time scale 1/κ times extended, with weaker "echoes". A long one's envelope is reproduced closely while its spectral width grows to 1/(√(2π)Nτ). This is why the convertor keeps the articulation of speech and the time pattern of music (p. 456).

## Setup / method
- **Kind of paper:** theory (Part 1), theory fitted to published psychoacoustic data (Part 2), and theory plus a first, informal experimental test of a device (Part 3). There are no flow data.
- **Formalism:** moments of |ψ|² and |φ|², operator correspondence from quantum mechanics (Pauli, Weyl), Schwarz inequality, calculus of variations, Sturm–Liouville problems, Hermite functions, theta functions. Signals are assumed of finite duration and finite band, with ψ, φ and their derivatives vanishing at infinity (p. 434, 440).
- **Fourier convention** (eq. 1.9–1.10): ψ(t) = ∫φ(f)e^{2πjft}df, φ(f) = ∫ψ(t)e^{−2πjft}dt, with φ(f) = 0 for f < 0 for the complex signal (p. 433).
- **Data inputs in Part 2:** Bürck, Kotowski & Lichte (1935) duration thresholds; Shower & Biddulph (1931) trill thresholds; Wegel & Lane (1924) and Hunt (1942) basilar-membrane damping (p. 442–445).
- **Experiment in Part 3:** a modified 16-mm sound-film projector at BTH (Fig. 3.15–3.16). Slit width about 0.005 in on the drum, imaged at about one quarter to an effective 0.0015–0.002 in on the film. Window about 6 mm of film at 183 mm/s, T ≈ 32 ms (≈ 48 ms at 125 mm/s). Speed ratios by stepped pulleys; κ from 0.25 to 3.33 (p. 452). Intelligibility was judged by listening; no scores are given.
- **Dependence on the data:** every construction here (analytic signal, moments, logon expansion, Gaussian-window convertor) is along one continuous variable. Applied in time, it needs time-resolved data. The Hilbert transform is non-local, so it needs data before and after each instant (p. 439–440). Logons overlap, so expansion coefficients need iteration or a dual-window method (p. 436).

## Key equations
Read from 300-dpi renders of p. 432–441, 443, 446–447 and 454–456. Δt, Δf are Gabor's √(2π)-scaled widths throughout.

- **Complex exponentials and the complex signal** (eq. 1.3–1.6, p. 432):
  $$\cos\omega t=\tfrac12(e^{j\omega t}+e^{-j\omega t}),\quad \cos\omega t=\Re(e^{j\omega t}),\ \sin\omega t=-\Re(je^{j\omega t})$$
  $$s(t)=a\cos\omega t+b\sin\omega t\ \to\ \psi(t)=s(t)+j\sigma(t)=(a-jb)e^{j\omega t}$$
- **Hilbert pair** (eq. 1.7–1.8, p. 433), as printed:
  $$\sigma(t)=\frac1\pi P\!\int_{-\infty}^{\infty}s(\tau)\frac{d\tau}{\tau-t},\qquad s(t)=-\frac1\pi P\!\int_{-\infty}^{\infty}\sigma(\tau)\frac{d\tau}{\tau-t}$$
- **Fourier pair** (eq. 1.9–1.10, p. 433): $\psi(t)=\int\phi(f)e^{2\pi jft}df$, $\phi(f)=\int\psi(t)e^{-2\pi jft}dt$.
- **Weight function and moments** (eq. 1.11–1.13, p. 433):
  $$\psi^*\psi=s^2+\sigma^2,\qquad \overline{t^n}=\frac{\int\psi^*t^n\psi\,dt}{\int\psi^*\psi\,dt},\qquad \overline{f^n}=\frac{\int\phi^*f^n\phi\,df}{\int\phi^*\phi\,df}$$
- **Reciprocal relations** (eq. 1.14–1.17, p. 434):
  $$\int\psi^*\psi\,dt=\int\phi^*\phi\,df,\quad \int\phi^*f^n\phi\,df=\Big(\frac{1}{2\pi j}\Big)^n\!\int\psi^*\frac{d^n\psi}{dt^n}dt,\quad \int\psi^*t^n\psi\,dt=\Big(\frac{-1}{2\pi j}\Big)^n\!\int\phi^*\frac{d^n\phi}{df^n}df$$
  $$\int\psi_1(t)\psi_2(t)\,dt=\int\phi_1(f)\phi_2(-f)\,df$$
- **Mean and mean-square frequency in time language** (eq. 1.18, 1.20, p. 434):
  $$\bar f=\frac{1}{2\pi j}\frac{\int\psi^*\frac{d\psi}{dt}dt}{\int\psi^*\psi\,dt},\qquad \overline{f^2}=-\frac{1}{(2\pi)^2}\frac{\int\psi^*\frac{d^2\psi}{dt^2}dt}{\int\psi^*\psi\,dt}=\frac{1}{(2\pi)^2}\frac{\int\frac{d\psi^*}{dt}\frac{d\psi}{dt}dt}{\int\psi^*\psi\,dt}$$
  - *My derivation (not in the paper):* writing ψ = a e^{jθ} and using ∫aȧ dt = 0 gives
    $$\bar f=\frac{\int a^2\,\dot\theta/2\pi\,dt}{\int a^2dt},\qquad 4\pi^2\big(\overline{f^2}-\bar f^2\big)=\frac{\int\dot a^2dt+\int a^2(\dot\theta-2\pi\bar f)^2dt}{\int a^2dt}.$$
    These are Cohen's identities as quoted in [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md) (eq. 3.9–3.11, p. 11–12). Gabor's centroid is the amplitude-weighted mean of the phase derivative, and his (Δf)² = 2π(f̄² − f̄ ²) splits into an amplitude-modulation term and the spread of the phase derivative about its mean.
- **Effective duration and frequency width** (eq. 1.21–1.22, p. 434):
  $$\Delta t=\big[2\pi\,\overline{(t-\bar t)^2}\big]^{1/2},\qquad \Delta f=\big[2\pi\,\overline{(f-\bar f)^2}\big]^{1/2}$$
- **Shifted signal and the product** (eq. 1.23–1.25, p. 434):
  $$\tau=t-\bar t,\quad \Psi(\tau)=\psi(t)e^{-2\pi j\bar f\tau},\qquad (\Delta t\,\Delta f)^2=\frac14\left[4\,\frac{\int\Psi^*\tau^2\Psi\,d\tau\int\frac{d\Psi^*}{d\tau}\frac{d\Psi}{d\tau}d\tau}{\big[\int\Psi^*\Psi\,d\tau\big]^2}\right]$$
- **Uncertainty relation** (eq. 1.26, p. 434): $\Delta t\,\Delta f\ \ge\ \tfrac12$, i.e. $\sigma_t\sigma_f\ge 1/4\pi$.
- **Schwarz form and equality** (eq. 1.39, 1.52–1.53, p. 440–441):
  $$\Big(\int\Psi^*\Psi\,d\tau\Big)^2\le4\int\Psi^*\tau^2\Psi\,d\tau\int\frac{d\Psi^*}{d\tau}\frac{d\Psi}{d\tau}d\tau;\qquad \frac{d\Psi}{d\tau}=\pm(CC^*)^{1/2}\tau\Psi\ \Rightarrow\ \Psi=\exp\big(-\tfrac12|C|\tau^2\big)$$
  Hermite functions: Δt·Δf = ½(2n + 1) (p. 441).
- **Elementary signal** (eq. 1.27–1.28, p. 435):
  $$\psi(t)=e^{-\alpha^2(t-t_0)^2}\,\mathrm{cis}(2\pi f_0t+\phi),\qquad \Delta t=\sqrt{\frac\pi2}\,\frac1\alpha,\quad \Delta f=\frac{\alpha}{\sqrt{2\pi}}$$
  $$\phi(f)=e^{-(\pi/\alpha)^2(f-f_0)^2}\,\mathrm{cis}\big[-2\pi t_0(f-f_0)+\phi\big]$$
  Checked: |ψ|² has variance 1/4α², so Δt = √(2π)/(2α) = √(π/2)/α. |φ|² has variance α²/4π², so Δf = α/√(2π). The product is ½.
- **Gabor expansion** (eq. 1.29, p. 435–436), with lattice spacings Δt and 1/Δt:
  $$\psi(t)=\sum_{n=-\infty}^{\infty}\sum_{k=-\infty}^{\infty}c_{nk}\exp\!\Big[-\pi\frac{(t-n\Delta t)^2}{2(\Delta t)^2}\Big]\mathrm{cis}(2\pi kt/\Delta t)$$
  First approximation per strip, on (t_n − ½Δt, t_n + ½Δt): $\psi(t)\exp\!\big[\pi(t-n\Delta t)^2/2(\Delta t)^2\big]=\sum_{k=0}^{\infty}c_{nk}\,\mathrm{cis}(2\pi kt/\Delta t)$ (p. 436). The Gaussian here is the elementary signal with α² = π/2(Δt)².
- **Real elementary signals and real expansion** (eq. 1.30–1.31, p. 436):
  $$s_{c,s}(t)=\exp[-\alpha^2(t-t_0)^2]\,{\cos\atop\sin}\,2\pi f_0(t-t_0),\qquad \alpha^2=\tfrac12\pi/(\Delta t)^2$$
  $$s(t)=\sum_n\exp\!\Big[-\pi\frac{(t-n\Delta t)^2}{2(\Delta t)^2}\Big]\sum_{k=0}^{\infty}\Big[a_{nk}\cos\frac{2\pi k(t-n\Delta t)}{\Delta t}+b_{nk}\sin\frac{2\pi(k+\frac12)(t-n\Delta t)}{\Delta t}\Big]$$
- **Minimum-time signals** (eq. 1.32–1.33, 1.35–1.38, p. 437):
  $$\Psi(t)=\exp[-2\pi(\Delta f)^2(t-\bar t)^2],\qquad \Phi(f)=\exp\!\Big[-\frac\pi2\Big(\frac{f-\bar f}{\Delta f}\Big)^2\Big]$$
  $$\frac{d^2\phi}{df^2}+\Lambda\phi=0,\quad \phi(f)=\sin k\pi\frac{f-f_1}{f_2-f_1},\quad \Delta t=\sqrt{\frac\pi2}\frac{k}{f_2-f_1},\quad \Delta f=(f_2-f_1)\sqrt{\frac\pi6-\frac{1}{\pi k^2}}$$
  Checked: for k = 1, σ_t = 1/2B and the variance of sin²(πx/B) over [0, B] is B²(1/12 − 1/2π²), which reproduces eq. 1.37–1.38.
- **FM spectrum and logon-train approximation** (eq. 2.1–2.2, p. 443):
  $$\mathrm{cis}\Big(2\pi f_0t+\frac{\delta f}{2f_m}\sin2\pi f_mt\Big)=\sum_{n=-\infty}^{\infty}J_n(\delta f/2f_m)\,\mathrm{cis}\,2\pi(f_0+nf_m)t$$
  $$I_n=\exp\!\Big[-\Big(\frac\pi\alpha\Big)^2(nf)^2\Big]\ {\cosh\atop\sinh}\Big(\frac\pi\alpha\Big)^2nf_mf_s\qquad(\text{cosh for even, sinh for odd }n)$$
- **Kinematical convertor** (eq. 3.1–3.2, 3.5, 3.9–3.11, 3.13–3.15, p. 446–449):
  $$f_1=\frac{v-u}{v}f_0=\kappa f_0,\quad P(x)=e^{-(x/Ns)^2},\quad \tau=\frac{s}{(1-\kappa)v}$$
  $$S(f)=\sqrt\pi N\tau\,e^{-(\pi N\tau)^2(f-\kappa f_0)^2}\sum_k\mathrm{cis}\,2\pi k\tau(f-f_0),\qquad F=\frac{1}{\tau(1-\kappa)},\quad T=4.3N\tau(1-\kappa),\quad FT=4.3N$$
- **Chirped Gaussian pulses** (eq. 3.33–3.35, p. 454): $\sum_k\exp[-\lambda(t-k\tau)^2]$ with $\lambda=\alpha^2+j\beta^2$; each pulse's real part is $e^{-(\alpha t)^2}\cos(\beta t)^2$.
- **Elementary signal through the convertor** (eq. 3.45–3.47, 3.54, p. 456): for $s_1=\exp[-\epsilon^2(t-t_0)^2/(N\tau)^2]\,\mathrm{cis}\,2\pi f_0(t-t_0)$, $(\Delta t)_1=\sqrt{\pi/2}\,N\tau/\epsilon$ and $(\Delta f)_1=\epsilon/(\sqrt{2\pi}N\tau)$. The reproduced width is $\Delta f=\sqrt{1+\epsilon^2\kappa^2}/(\sqrt{2\pi}N\tau)$.

> Points to check against the PDF before relying on them (read from images):
> - **Sign of the Hilbert kernel (eq. 1.7–1.8, p. 433).** As read, the kernel is dτ/(τ − t). With that sign, (1/π)P∫cos ωτ dτ/(τ − t) = −sin ωt, which contradicts the text ("it converts cos ωt into sin ωt"), eq. 1.6 and the Fig. 1.5 pair, all of which need the conventional kernel 1/(t − τ). Eq. 1.7 and 1.8 are consistent with each other as an inverse pair either way. Either the print has (τ − t) for (t − τ), or the image misleads. The text convention (cos → sin) is MATLAB's `imag(hilbert(cos))` = sin. See the sign-convention notes in [raiola-2025-hilbert-pod](raiola-2025-hilbert-pod.md) and [horel-1984](horel-1984-complex-principal-component-analysis.md).
> - **Eq. 1.26** is printed with a sign that looks like ">" in the scan; the text and eq. 1.39 make it "≥".
> - **Eq. 1.34 and 1.54** are printed as "Δt = (1/(2π)²)∫(dφ*/df)(dφ/df)df/∫φ*φ df". The right-hand side is σ_t², so the left side should be (Δt)²/2π. It does not affect the minimisation.
> - **Energy fractions (p. 437).** For a Gaussian |ψ|², the energy within ±Δt/2 is erf(√π/2) = 79.0%, leaving 10.5% on each side, not the printed 76.8% and 11.6%. I could not reproduce the 0.65% collected by neighbouring Gaussian resonators either. Check the printed figures and Gabor's resonator assumption.
> - **Minimum-time constants (p. 437).** Eq. 1.37–1.38 give Δf/(f₂ − f₁) = 0.453 and Δt·Δf = 0.568 for k = 1. The text prints 0.456 and 0.571.
> - **Eq. 2.2 (p. 443)** prints (nf)² in the first exponent. A sum of two Gaussians at f₀ ± ½f_s evaluated at the lines f₀ + nf_m gives exp[−(π/α)²((nf_m)² + f_s²/4)] · 2cosh/sinh[(π/α)² nf_m f_s]. So (nf)² should be (nf_m)², and a constant factor is dropped.
> - **Eq. 1.31's number** is cut off at the scan's right edge; "(1.31)" is inferred from the sequence.
> - **Appendix numbering in Part 3:** the text cites "Appendix 7.1", "7.2" and "7.3" (p. 447, 449, 450), but the appendices are printed as 8.1–8.3 (p. 455–457).
> - The Shower–Biddulph δf/f₀ row is printed with units "c/s" (p. 443); it is a ratio.

## Data tables
Numbers worth reusing:

| Quantity | Value | Page |
|---|---|---|
| Independent data in band B over time T | 2BT (two per unit time and unit frequency) | 430–431 |
| Uncertainty relation (Gabor's widths) | Δt·Δf ≥ ½, i.e. σ_t σ_f ≥ 1/4π | 434 |
| Area per datum (one logon) | ½ | 434–435 |
| Logon widths for envelope exp(−α²t²) | Δt = √(π/2)/α, Δf = α/√(2π) | 435 |
| Hermite-function areas | ½(2n + 1) | 441 |
| Logon energy inside its cell / each side | 76.8% / 11.6% (printed; my check 79.0% / 10.5%) | 437 |
| Neighbouring Gaussian resonators (±Δf) collect | 0.65% each | 437 |
| Shortest signal through ideal band B (k = 1) | Δt = 1.25/B, Δf = 0.456B, Δt·Δf = 0.571 (printed); total extent 2/B | 437–438 |
| Ear: threshold areas (Bürck et al.) | 2.1 (500 c/s), 3.0 (1000 c/s) elementary areas | 442 |
| Ear: threshold areas (Shower–Biddulph), units of ½ | 2.34 (62.5–1000), 2.88 (2000), 3.92 (4000), 6.9 (8000 c/s) | 443 |
| Ear performance figure | ≈ 50% below 1000 c/s; ≈ ¼ of the data over 0–8000 c/s | 444 |
| Ear adjustable time constant | 20–250 ms; resonator decay ≲ 10 ms | 444 |
| Convertor optimum slit number; FT | N ≈ 0.5 (0.4–0.65); FT = 4.3N ≈ 2 | 448–449 |
| Convertor window, optimum | T ≈ 100 ms (speech), ≈ 250 ms (music, unconfirmed) | 448–449 |
| Convertor tested window | 32 ms (48 ms at silent speed) | 452 |

Shower and Biddulph trill thresholds (2 c/s modulation, 40 dB sensation level; p. 443). Each δf checks against f₀ × δf/f₀:

| f₀ (c/s) | 62.5 | 125 | 250 | 500 | 1000 | 2000 | 4000 | 8000 |
|---|---|---|---|---|---|---|---|---|
| δf/f₀ | 0.043 | 0.025 | 0.012 | 0.005 | 0.003 | 0.0023 | 0.00225 | 0.0037 |
| δf (c/s) | 2.7 | 3.1 | 2.9 | 2.5 | 3.0 | 4.6 | 9.0 | 29.5 |

## Figures worth remembering
- **Fig. 1.3–1.4 (p. 431):** delta function and infinite sine wave as vertical and horizontal lines in the time–frequency plane; oscillograph vs reed-bank tilings of a finite sine wave into characteristic rectangles.
- **Fig. 1.5 (p. 433):** a Lorentzian pulse and its quadrature partner.
- **Fig. 1.6 (p. 435):** reciprocal Gaussian envelopes of a logon in time and frequency, with Δt and Δf marked.
- **Fig. 1.7–1.8 (p. 435):** a signal drawn as shaded logon cells, and the lattice of complex coefficients c_nk.
- **Fig. 1.9–1.10 (p. 436):** cosine- and sine-type real logons, and the real tiling with cells Δt × 1/2Δt.
- **Fig. 1.11 (p. 437):** spectrum and time signal of the minimum-time signal through an ideal band-pass filter.
- **Fig. 1.12 (p. 438):** frequency modulation as time trace, line spectrum and a zig-zag of logons, Gabor's picture of a "variable frequency".
- **Fig. 1.13 (p. 438):** time-division multiplex on the information diagram.
- **Fig. 1.14 (p. 439):** mechanical generator of the quadrature signal.
- **Fig. 2.1–2.5 (p. 442–444):** finite sine wave as heard; threshold rectangles from Bürck et al. and Shower–Biddulph; ear performance figure; the two pitch mechanisms.
- **Fig. 3.1–3.3 (p. 446–447):** slotted-drum convertor and how each slit turns the record into an elementary signal.
- **Fig. 3.5–3.7 (p. 448):** compression and expansion diagrams; effect of the slit number.
- **Fig. 3.18 (p. 454):** Gaussian chirp pulse.

## Notation
- s(t): real signal. σ(t): its quadrature (Hilbert) partner. ψ = s + jσ: complex signal. φ(f): spectrum of ψ (zero for f < 0). Ψ, Φ: shifted versions (eq. 1.24). cis x = e^{jx}. j = √−1.
- t̄ⁿ, f̄ⁿ: normalised moments of |ψ|² and |φ|² (Gabor writes the bar over the power). t̄, f̄: mean epoch and mean frequency.
- Δt, Δf: effective duration and effective frequency width, √(2π) × rms spreads. σ_t, σ_f: plain rms spreads (my notation), so Δt = √(2π)σ_t.
- α: logon sharpness. t₀, f₀, φ: logon epoch, frequency and phase. c_nk: complex lattice coefficients. a_nk, b_nk: real coefficients.
- Logon: elementary signal of area ½, one datum. Information diagram: the time–frequency plane with area counted in data.
- Part 2: f₀ tone frequency, δf trill swing, f_m modulation frequency, f_s logon-train frequency split.
- Part 3: v film speed, u = (1 − κ)v slit speed, κ conversion ratio, s slit spacing, τ slit passage interval, N slit number, T window length, F cycle of reproduction, λ = α² + jβ² complex pulse constant.

## Relevance to this project
This is the primary source for two things every Hilbert step in the CLAUDE.md workflow depends on: the analytic signal and the time–frequency uncertainty relation. It is also the origin of the Gaussian-window short-time analysis behind spectrograms.

- **Analytic signal in the HPOD pipeline:**
  - Gabor's recipe, "suppress negative frequencies, double positive ones" (p. 432–433), is the FFT construction used in [raiola-2025-hilbert-pod](raiola-2025-hilbert-pod.md) (eq. 2.19, p. 8), [horel-1984](horel-1984-complex-principal-component-analysis.md) and [kriegseis-2021](kriegseis-2021-hilbert-transform-revisited-hpod.md).
  - Gabor's reason for it was not instantaneous frequency. It was to make the frequency centroid f̄ non-trivial; with a real signal the centroid is zero (p. 433–434). Instantaneous frequency as d arg ψ/dt came later (Ville 1948; see [boashash-1992](boashash-1992-instantaneous-frequency-fundamentals.md)).
  - The analytic signal at time t depends on the signal's future (p. 439–440). This is the root of the end effects that Raiola handles by trimming 15% and Horel by tapering 10%. It also means a Hilbert amplitude or frequency is never a causal, purely local measurement. *(My link.)*
  - Gabor's caution on instantaneous frequency (footnote p. 431) and his refusal to draw an FM path as a sharp curve (p. 438) are the 1946 version of [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md)'s conditions (p. 12–15) and of the narrow-banding step in our pipeline.
- **What the uncertainty relation constrains** (this paper's definitions; see the research-question bullets in the results file):
  - The bound is on second central moments, Δt and Δf about t̄ and f̄. The centroids are "references, not data" (p. 434).
  - Gabor's f̄ is the amplitude-weighted average of the phase derivative, and his Δf² splits into an AM term and the spread of the phase derivative (my derivation from eq. 1.18 and 1.20, above).
  - The logon itself has an exactly constant phase derivative f₀ while sitting at the bound. So a perfectly sharp instantaneous frequency coexists with the minimum Δt·Δf: the two are different quantities. (Strictly, eq. 1.27 is analytic only approximately: its spectrum, eq. 1.28, has a tail below f = 0 unless f₀ ≫ α/π.)
  - The Part 2 "second mechanism", which locates the centre of a resonance with a precision that grows with duration (p. 444), is Gabor's own distinction between locating a centroid and resolving a spread.
- **Counting independent values:**
  - A band B carries 2BT real data (p. 430), i.e. one complex (amplitude-and-phase) value per 1/B (Gabor lattice, p. 435–436).
  - The shortest signal an ideal band B can pass has Δt ≈ 1.25/B and lasts about 2/B (p. 437–438).
  - For an SPOD reconstruction of bandwidth B followed by HPOD_t, the instantaneous-amplitude and -frequency traces therefore hold about one independent value per 1/B. Their sample-by-sample values interpolate between those. *(Applies Gabor's count; cf. the Nekkanti note's block-wise smoothing argument, [nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md), and Sieber's filter length, [sieber-2016](sieber-2016-spectral-proper-orthogonal-decomposition.md).)*
- **Which data each method suits:**
  - The analytic signal, the moments and the logon expansion all act along one continuous, uniformly sampled variable. In time, they need time-resolved data: high-speed schlieren, microphones, time-resolved PIV, or SPOD/HPOD temporal coefficients.
  - For snapshot PIV, the same construction can be taken along x (HPOD_x; [raiola-2025](raiola-2025-hilbert-pod.md), [davey-2025](davey-2025-hpod-sphere-wake.md)). Gabor's inequality then applies to Δx·Δk_x, so the trade-off moves to space–wavenumber. *(My inference; Gabor treats only time.)*
- **Spectrograms and wavelets:**
  - The Gabor expansion (eq. 1.29) is the Gaussian-window short-time Fourier analysis sampled on a critical lattice (one complex coefficient per unit area). Gabor's own coefficient method, an inverse-Gaussian-weighted Fourier series per strip with iterative correction (p. 436), anticipates the non-orthogonality problems later solved with dual windows. *(Context, not from the paper.)*
  - The Part 3 statements that the Gaussian window minimises the product of linked uncertainties (p. 447), and that the time-resolution vs frequency-reproduction compromise "is a matter for experiment" (p. 448), are the same window-length choice as n_fft in SPOD spectrograms and the number of cycles of a Morlet wavelet ([torrence-1998](torrence-1998-practical-guide-wavelet-analysis.md)).
  - The chirped Gaussian pulse (eq. 3.34–3.35, p. 454) is the elementary signal for linear FM. It is relevant wherever a tone drifts during an NPR ramp or a staging transition. *(My link.)*
- **Mode switching, staging and close tones:**
  - The A1/A2 tones (about 10% apart) and twin-jet SS/SA tones (0.3–0.6% apart) are separable in frequency only if the analysis cell is narrower than their spacing. A Gabor cell of frequency height Δf has time width at least 1/(2Δf), so separating them by frequency costs a time resolution set by the spacing. The worked numbers are in `Library_of_Shock_Lab/Research_Questions/hpod-instantaneous-frequency-uncertainty.md` (section 5).
  - Gabor's replacement of a sinusoidal FM tone by two alternating logon trains with the same line spectrum (p. 443) shows that, inside one band, continuous FM and alternation between two frequencies are interchangeable descriptions. This is the ambiguity behind "switching vs coexistence" on the time-frequency-methods topic page. *(My link.)*
  - Two-tone resolution limits in EMD and synchrosqueezing are quantified in [rilling-2008](rilling-2008-one-or-two-frequencies-emd-two-tones.md) and [daubechies-2011](daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md). The single-tone frequency precision that Gabor's ear model needs (precision growing with duration) is formalised by the Cramér–Rao bound in [rife-1974](rife-1974-single-tone-parameter-estimation-discrete-time.md).
- **Modelling side:**
  - The "model" in Part 1 is the quantum-mechanical moment formalism transplanted to signals: x → t, p → f, h → 1 (p. 435). Its assumptions are finite energy, finite duration and band, and vanishing at infinity; the cisoid is only a limiting case (p. 434).
  - Part 2's two-mechanism ear model is a hypothesis fitted to two published threshold experiments. Gabor marks it as such (p. 444).
  - Part 3 compares the convertor theory with listening tests. N = 0.5 was confirmed (p. 453). The predicted T ≈ 100 ms optimum was confirmed for speech only, in a note added later (p. 449).
  - There are no flow models, no stability analysis and no simulations. None of the work is Shock Lab group work.
- **Follow-up candidates for `/add-paper`:** Carson & Fry 1937, "Variable-frequency electric circuit theory" (ref. 1.8, the instantaneous-frequency origin Gabor cites); Ville 1948 (the phase-derivative IF; not cited here); Stewart 1931 (ref. 1.9, the first acoustical uncertainty relation); Roberts & Simmonds 1943–1944 (refs. 1.11–1.13, Gaussian pulses).
