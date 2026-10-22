---
key: "torrence-1998-practical-guide-wavelet-analysis"
title: "A Practical Guide to Wavelet Analysis"
authors: ["Torrence, C.", "Compo, G. P."]
year: 1998
type: "article"
venue: "Bull. Am. Meteorol. Soc. 79(1), 61–78"
bib: {"journal": "Bulletin of the American Meteorological Society", "volume": "79", "number": "1", "pages": "61--78"}
doi: "10.1175/1520-0477(1998)079<0061:APGTWA>2.0.CO;2"
arxiv: ""
pdf: "time-frequency-methods/Torrence-Compo_1998_A-Practical-Guide-To-Wavelet-Analysis.pdf"
version: "published"
unverified: ["DOI not printed in the PDF; taken from the standard citation"]
group: false
facility: ""
data: ["field-data"]
methods: ["wavelets", "PSD", "coherence"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["time-frequency-methods"]
related: ["mancinelli-2019-screech-prediction-upstream-modes", "jordan-2018-jet-flap-interaction-tones", "stavropoulos-2026-jet-edge-interaction", "esfahani-2021-coupling-modes-twin-rectangular-jets", "esfahani-2021-control-twin-rectangular-jet-coupling", "raiola-2025-hilbert-pod", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "jeun-2024-screech-coupling-closure-rectangular-twin-jets"]
cites: []
summary: "Standard CWT how-to: Morlet/Paul/DOG via FFT, scale→period (Morlet λ≈1.03s), cone of influence, χ² significance vs AR(1) red noise, averaged-power DOF; unsmoothed coherence ≡1"
---
# A Practical Guide to Wavelet Analysis

- **Authors:** C. Torrence, G. P. Compo (Program in Atmospheric and Oceanic Sciences, University of Colorado, Boulder)
- **Source:** Bulletin of the American Meteorological Society 79(1), 61–78 (January 1998). DOI 10.1175/1520-0477(1998)079<0061:APGTWA>2.0.CO;2 (the DOI is not printed in the PDF; it is given from the standard citation).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Torrence-Compo_1998_A-Practical-Guide-To-Wavelet-Analysis.pdf` (18 pp.)
- **Page refs:** journal page numbers 61–78. PDF page = journal page − 60.
- **Tags:** continuous wavelet transform (CWT), Morlet, Paul, DOG / Mexican hat, windowed Fourier transform, scalogram, wavelet power spectrum, cone of influence (COI), scale-to-Fourier-period conversion, reconstruction, red noise (AR(1)), chi-square significance, confidence intervals, global wavelet spectrum, scale-averaged wavelet power, degrees of freedom, wavelet filtering, power Hovmöller, cross-wavelet spectrum, wavelet coherence and phase, nonstationarity, intermittency, time-resolved data

## Summary
This is the standard "how to" reference for the continuous wavelet transform of a single time series, and the source of the widely used Torrence & Compo wavelet software (p. 76, footnote). It gives the transform in discrete form, computed in Fourier space, with a unit-energy normalisation so that wavelet power is directly comparable across scales and between records (p. 63–65). It covers the practical choices: which wavelet, which scales, how to handle record ends (the cone of influence) and how to convert scale to equivalent Fourier period (p. 66–68). Its main new contribution is a significance test: the local wavelet power at each time and scale is shown, by theory and 100,000-realisation Monte Carlo runs, to be distributed as the background (white- or red-noise AR(1)) Fourier spectrum times χ²₂/2 (p. 69–70). Empirical degree-of-freedom formulas extend this to power averaged in time (global wavelet spectrum) or across a band of scales (p. 71–74). Filtering, the power Hovmöller, cross-wavelet power and phase are described as extensions (p. 74–76). All examples are ENSO climate records (Niño3 SST, SOI, sea-level pressure); there is no fluid-mechanics example.

## Key findings
- **Why not a windowed Fourier transform (WFT)** (p. 63): a WFT imposes one fixed window length T, so components outside its frequency range alias, it evaluates T/(2δt) frequencies at every step whatever is present, and several window lengths usually have to be tried. A wavelet transform is scale-independent, so it suits signals with a wide range of dominant frequencies.
- **Choice of wavelet** (p. 66): four factors.
  - *Orthogonal vs non-orthogonal:* orthogonal (discrete) transforms are compact but the spectrum changes under an aperiodic time shift. Non-orthogonal (continuous) transforms are redundant at large scales but give smooth, shift-robust amplitude variations, which is what time-series analysis wants.
  - *Complex vs real:* a complex wavelet (Morlet, Paul) gives amplitude and phase and suits oscillatory behaviour. A real wavelet (DOG) gives one component and suits isolating peaks or discontinuities; its power shows separate peaks for the positive and negative half-cycles (Fig. 1c, p. 62, 66).
  - *Width:* narrow in time means good time resolution but poor frequency resolution, and vice versa.
  - *Shape:* match the features (boxcar-like Haar for steps, smooth for smooth signals). For wavelet power alone the choice is "not critical": Morlet and Mexican hat give the same features at about the same places and power (p. 66).
- **Scale is not period** (p. 67–68, Table 1): the equivalent Fourier period λ comes from feeding a cosine through the transform. For Morlet with ω₀ = 6, λ = 1.03 s, so scale ≈ period. For the Mexican hat (DOG m = 2), λ ≈ 4 s. Always convert scale to period before plotting (p. 68).
- **Scale grid** (p. 67): fractional powers of two, s_j = s₀ 2^{jδj}. Pick s₀ so its period is about 2δt. For Morlet δj ≈ 0.5 is the largest usable spacing; smaller δj gives finer resolution. The Niño3 example uses δj = 0.125 (57 scales, 0.5–64 yr).
- **Edge effects and the cone of influence** (p. 67, 71):
  - The FFT treats the record as periodic. The paper pads with zeros to the next power of two and removes them afterwards; cosine damping (Meyers et al. 1993) is an alternative. Cyclic data need no padding and have no COI.
  - The COI is where edge effects matter, set by the e-folding time τ_s of the wavelet power autocorrelation: √2 s for Morlet and DOG, s/√2 for Paul (Table 1). At that distance the power from an edge discontinuity has fallen by e⁻².
  - Inside the COI, zero padding reduces the mean spectrum by a factor (1 − ½e^{−2t/τ_s}), with t the distance from the end (p. 71). Peaks there are probably underestimated (p. 67).
  - The COI width is also the decorrelation time for a single spike, so comparing a peak's time width with it separates a noise spike from a genuine harmonic (p. 67).
- **Reconstruction and energy check** (p. 68): the record can be rebuilt from the real part of W summed over scales (eq. 11) with a wavelet-specific constant C_δ (Table 2), and a wavelet Parseval relation holds (eq. 14). Both should be used to check a code and to confirm s₀ and δj are small enough. Niño3 reconstruction mean-square error: 1.4% (0.087 °C).
- **Local wavelet power follows the Fourier background** (p. 69–70, Fig. 4–5): for white noise and AR(1) red noise (α = 0.70), the mean of 100,000 local wavelet spectra (slices at n = 256 of N = 512) matches the theoretical Fourier spectrum (eq. 16), and the Monte Carlo 95% level matches the background × χ²₂(95%)/2. So each point (n, s) of a complex-wavelet power map is χ²₂ distributed about the background (eq. 18); χ²₁ for a real wavelet (p. 70).
- **Area of significance is not evidence by itself** (p. 71): for Niño3, 4.9% of points lie above the 95% contour, about what noise gives (≈5% in Fig. 4b). What separates signal from noise is that significant regions are clustered in time and period rather than scattered.
- **Defence of stationary tests** (p. 71): a stationary background gives a non-arbitrary, robust, non-Monte-Carlo standard against which nonstationarity can be detected; red-noise wavelet maps already look "nonstationary" (compare Figs. 1b and 4b), so large power variations alone do not prove nonstationarity.
- **Time averaging (global wavelet spectrum)** (p. 72–73): averaging all local spectra gives the global wavelet spectrum, which approaches a smoothed Fourier spectrum (Fig. 6) and is an unbiased, consistent spectral estimate (citing Percival 1995). Averaged points are correlated, so the degrees of freedom follow eq. 23 with an empirical decorrelation factor γ (Table 2); error against Monte Carlo < 7% for all scales and n_a (p. 73). Points inside the COI count for about half.
- **Scale averaging** (p. 73–74): summing power over a band of scales (eq. 24) gives a time series of the variance in that band, which can be used to study modulation of one band by another or of one series by another. The DOF formula (eq. 28) uses an empirical δj₀ (Table 2) and fits Monte Carlo within 1.5%, but only for confidence ≤ 95%.
- **Worked example of eq. 28** (p. 74): Niño3 2–8 yr band (actually 2.1–7.6 yr), δj = 0.125, n_a = 16, S_avg = 0.221 yr, S_mid = 3.83 yr, δj₀ = 0.60, giving ν = 6.44.
- **Cross-wavelet and coherence** (p. 75–76):
  - Cross-wavelet power |W^X W^Y\*| has a significance level from the product of two χ² variables (eq. 30–31): Z₁(95%) = 2.182 for real and Z₂(95%) = 3.999 for complex wavelets.
  - Unsmoothed wavelet coherence is identically 1 at every time and scale (citing Liu 1994). Smoothing in time would be needed, but the paper says it is unclear how, and that smoothing undermines time localisation. It instead recommends plotting the cross-wavelet phase (Fig. 11d).
  - Niño3 and SOI stay within ±20° of antiphase over all 2–8 yr periods, with more random phase during the low-variance 1920–60 period (p. 76).
- **Physical results (ENSO)** (p. 61, 65, 71, 73, 75): significantly higher 2–8 yr power in 1875–1920 and 1960–90 and low power in 1920–60; a possible 15-yr modulation of ENSO variance; Niño3 and SOI band variance correlate at 0.72; a slight shift from ~4 yr to ~2 yr period during 1875–1910. These are the paper's demonstration, not its main contribution.

## Setup / method

### Data used for the examples (p. 62)
| Series | Source | Sampling | Preprocessing |
|---|---|---|---|
| Niño3 SST (5°S–5°N, 90°–150°W) | UKMO GISST2.3 (1871–1996) + CPC OI (Jan–Jun 1997) | seasonal means, δt = 0.25 yr, N = 506 | seasonal means over the whole record removed (anomaly) |
| Gridded SLP | UKMO/CSIRO GMSLP2.1f, 5° grid | monthly, Jan 1871–Dec 1994 | first three annual harmonics removed by least squares |
| SOI | from GMSLP2.1f: (20°S, 150°W) minus (10°S, 130°E) | seasonally averaged | — |

Niño3 variance σ² = 0.54 °C², lag-1 red-noise α = 0.72 (Fig. 1 caption, p. 62; Fig. 3, p. 66). SOI α = 0.61 (Fig. 8, p. 73).

### Recipe (summary steps, p. 76; details p. 63–74)
1. Remove the mean (anomaly) and, if not cyclic, zero-pad to the next power of two (p. 67).
2. FFT the series (eq. 3).
3. Choose a wavelet and a scale set s_j (eq. 9–10).
4. At each scale, build the normalised daughter wavelet in Fourier space (eq. 6), multiply by the FFT and inverse-FFT to get W_n(s) at all n at once (eq. 4).
5. Compute the COI and the equivalent Fourier period for each scale (Table 1).
6. Remove the padding; contour |W_n(s)|²/σ² (power relative to white noise) against time and period.
7. Fit a background spectrum (white, or AR(1) red noise with α from the data) and draw the 95% contour from the χ² distribution (eq. 18). Optionally average in time (eq. 21–23) or scale (eq. 24–28) to raise the degrees of freedom.

- **Red-noise α from data** (p. 69): α = (α₁ + √α₂)/2, with α₁ and α₂ the lag-1 and lag-2 autocorrelations.
- **Monte Carlo** (p. 69): 100,000 white-noise and 100,000 AR(1) series of 512 points; local spectra taken at n = 256. Fig. 7 and 9 repeat this for time averages (n_a up to 512) and scale averages (centred at s = 16δt, Monte Carlo δj = 0.25).
- **Fig. 1b parameters** (p. 67): N = 506, δt = 0.25 yr, s₀ = 2δt = 0.5 yr, δj = 0.125, J = 56, so 57 scales from 0.5 to 64 yr.

> Eq. 10 with these values gives J = 8 log₂(506 × 0.25 / 0.5) ≈ 64, not the 56 used, which stops at 64 yr rather than Nδt ≈ 126 yr. So eq. 10 is an upper limit and the example truncates it. My arithmetic; check before relying on it.

- **Modelling / simulation side:** there is no flow model, stability analysis or simulation. The only "model" is statistical: the AR(1) red-noise null hypothesis (eq. 15–16) and the χ² distributions, with degrees of freedom for averaged power calibrated empirically against Monte Carlo (γ, δj₀ in Table 2; p. 73–74). Higher-dimensional (e.g. 2D) wavelet significance is untested and left open (p. 77); 2D orthonormal wavelet-packet compression of turbulence (Farge et al. 1992) and threshold "denoising" (Donoho & Johnstone 1994) are mentioned only (p. 74–75).

## Key equations
Notation follows the paper: x_n is the series (n = 0…N−1, spacing δt), ψ the wavelet, s the scale, W_n(s) the wavelet coefficient, ^ a Fourier transform and \* the complex conjugate.

- **Morlet wavelet** (eq. 1, p. 63), with ω₀ = 6 for admissibility:
  $$\psi_0(\eta)=\pi^{-1/4}e^{i\omega_0\eta}e^{-\eta^2/2}$$
- **CWT by convolution** (eq. 2, p. 64):
  $$W_n(s)=\sum_{n'=0}^{N-1}x_{n'}\,\psi^*\!\left[\frac{(n'-n)\,\delta t}{s}\right]$$
- **DFT and Fourier-space CWT** (eq. 3–5, p. 64):
  $$\hat x_k=\frac1N\sum_{n=0}^{N-1}x_n e^{-2\pi ikn/N},\qquad W_n(s)=\sum_{k=0}^{N-1}\hat x_k\,\hat\psi^*(s\omega_k)\,e^{i\omega_k n\delta t},\qquad \omega_k=\begin{cases}\dfrac{2\pi k}{N\delta t}, & k\le N/2\\[4pt] -\dfrac{2\pi k}{N\delta t}, & k>N/2\end{cases}$$
  > Eq. 5 is printed as −2πk/(Nδt) for k > N/2. The usual FFT convention, and the authors' own software, use −2π(N−k)/(Nδt); as printed the negative branch would not be monotonic. Check against the PDF and the code.
- **Normalisation to unit energy** (eq. 6–8, p. 64):
  $$\hat\psi(s\omega_k)=\left(\frac{2\pi s}{\delta t}\right)^{1/2}\hat\psi_0(s\omega_k),\qquad \int_{-\infty}^{\infty}|\hat\psi_0(\omega')|^2d\omega'=1,\qquad \sum_{k=0}^{N-1}|\hat\psi(s\omega_k)|^2=N$$
  $$\psi\!\left[\frac{(n'-n)\delta t}{s}\right]=\left(\frac{\delta t}{s}\right)^{1/2}\psi_0\!\left[\frac{(n'-n)\delta t}{s}\right]\quad\text{(convolution form)}$$
- **Wavelet power** (p. 65): |W_n(s)|². Its expectation for white noise of variance σ² is σ² at every n and s, so |W_n(s)|²/σ² is power relative to white noise. Phase is tan⁻¹[ℑ{W}/ℜ{W}] (undefined for real wavelets).
- **Scales** (eq. 9–10, p. 67): $s_j=s_0 2^{j\delta j},\; j=0,1,\dots,J,\qquad J=\delta j^{-1}\log_2(N\delta t/s_0)$
- **Reconstruction with a δ function** (eq. 11–13, p. 68):
  $$x_n=\frac{\delta j\,\delta t^{1/2}}{C_\delta\,\psi_0(0)}\sum_{j=0}^{J}\frac{\Re\{W_n(s_j)\}}{s_j^{1/2}},\qquad W_\delta(s)=\frac1N\sum_{k=0}^{N-1}\hat\psi^*(s\omega_k),\qquad C_\delta=\frac{\delta j\,\delta t^{1/2}}{\psi_0(0)}\sum_{j=0}^{J}\frac{\Re\{W_\delta(s_j)\}}{s_j^{1/2}}$$
  For a complex series use the complex W in the sum (p. 68).
- **Wavelet Parseval** (eq. 14, p. 68):
  $$\sigma^2=\frac{\delta j\,\delta t}{C_\delta N}\sum_{n=0}^{N-1}\sum_{j=0}^{J}\frac{|W_n(s_j)|^2}{s_j}$$
- **Red noise** (eq. 15–16, p. 69): AR(1) $x_n=\alpha x_{n-1}+z_n$, with normalised Fourier spectrum
  $$P_k=\frac{1-\alpha^2}{1+\alpha^2-2\alpha\cos(2\pi k/N)},\qquad k=0\dots N/2$$
  α = 0 gives white noise.
- **Distributions** (eq. 17–18, p. 70):
  $$\frac{N|\hat x_k|^2}{\sigma^2}\Rightarrow\tfrac12P_k\chi^2_2,\qquad \frac{|W_n(s)|^2}{\sigma^2}\Rightarrow\tfrac12P_k\chi^2_2$$
  with P_k evaluated at the Fourier frequency that matches scale s. For a real wavelet the right side is P_k χ²₁.
  > The denominator of eq. 17 is an overprinted glyph in the PDF (it looks like "2" printed over another character before σ²). The text on p. 69 says the Fourier spectrum in Fig. 3 is normalised by N/(2σ²), while the form above (denominator σ²) is the one consistent with eq. 18 and a white-noise expectation of 1. Check the PDF and the authors' errata before using eq. 17 quantitatively.
- **Confidence interval** (eq. 19–20, p. 71), with 𝒲²_n(s) the true power and p the significance (0.05 for 95%):
  $$\frac{2}{\chi^2_2(p/2)}|W_n(s)|^2\le\mathcal W_n^2(s)\le\frac{2}{\chi^2_2(1-p/2)}|W_n(s)|^2$$
  > As printed, χ²₂(p/2) sits under the lower bound. If χ²₂(p/2) denotes the lower-tail p/2 quantile (the small value), the bounds come out reversed. The intent is clearly to bracket |W|² by the two-sided χ² quantiles; check the quantile convention before coding.
- **Time-averaged and global wavelet spectrum** (eq. 21–23, p. 71–73):
  $$\overline W_n^2(s)=\frac{1}{n_a}\sum_{n=n_1}^{n_2}|W_n(s)|^2,\qquad \overline W^2(s)=\frac1N\sum_{n=0}^{N-1}|W_n(s)|^2,\qquad \nu=2\sqrt{1+\left(\frac{n_a\delta t}{\gamma s}\right)^2}$$
  distributed as P_k χ²_ν/ν. Drop the factor 2 in ν for a real wavelet.
- **Scale-averaged power** (eq. 24–28, p. 73–74):
  $$\overline W_n^2=\frac{\delta j\,\delta t}{C_\delta}\sum_{j=j_1}^{j_2}\frac{|W_n(s_j)|^2}{s_j},\qquad S_{avg}=\left(\sum_{j=j_1}^{j_2}\frac1{s_j}\right)^{-1}$$
  $$\frac{C_\delta S_{avg}}{\delta j\,\delta t\,\sigma^2}\overline W_n^2\Rightarrow\overline P\frac{\chi^2_\nu}{\nu},\qquad \overline P=S_{avg}\sum_{j=j_1}^{j_2}\frac{P_j}{s_j},\qquad \nu=\frac{2n_aS_{avg}}{S_{mid}}\sqrt{1+\left(\frac{n_a\delta j}{\delta j_0}\right)^2}$$
  with $S_{mid}=s_0 2^{0.5(j_1+j_2)\delta j}$ and n_a = j₂ − j₁ + 1. Valid for confidence ≤ 95% only. Drop the factor 2 for a real wavelet.
  > Check: the p. 74 example values give ν = 2·16·0.221/3.83 · √(1 + (16·0.125/0.60)²) ≈ 6.43, against the quoted 6.44. Recomputing S_avg from a Morlet scale band of 16 scales starting at 2.1/1.03 yr gives ≈ 0.225 yr, close to the quoted 0.221 yr.
- **Wavelet-filtered series** (eq. 29, p. 74): eq. 11 summed over j₁…j₂ only. Its response is the sum of the wavelet functions in that band.
- **Cross-wavelet** (p. 75–76; eq. 30–31): $W_n^{XY}(s)=W_n^X(s)W_n^{Y*}(s)$; power |W^{XY}|; phase tan⁻¹[ℑ/ℜ].
  $$f_\nu(z)=\frac{2^{2-\nu}}{\Gamma^2(\nu/2)}z^{\nu-1}K_0(z),\qquad \frac{|W_n^X(s)W_n^{Y*}(s)|}{\sigma_X\sigma_Y}\Rightarrow\frac{Z_\nu(p)}{\nu}\sqrt{P_k^XP_k^Y}$$
  Z₁(95%) = 2.182, Z₂(95%) = 3.999.

> Equations were read from rendered page images, so symbols should be right except where flagged. Quick checks: Morlet λ/s = 4π/(6 + √38) = 1.033 (Table 1, p. 65; text quotes 1.03); DOG m = 2 λ/s = 2π/√2.5 = 3.97, matching "four times" (p. 68); χ²₂(95%)/2 = 5.99/2 = 3.0, matching the white-noise 95% level in Fig. 5a (p. 70).

## Data tables
**Table 1 (p. 65): wavelet functions** (H(ω) is the Heaviside step).

| Wavelet | ψ₀(η) | ψ̂₀(sω) | e-folding time τ_s (COI) | Fourier period λ |
|---|---|---|---|---|
| Morlet (ω₀ = frequency) | π^{−1/4} e^{iω₀η} e^{−η²/2} | π^{−1/4} H(ω) e^{−(sω−ω₀)²/2} | √2 s | 4πs / (ω₀ + √(2 + ω₀²)) |
| Paul (m = order) | 2^m i^m m! / √(π(2m)!) · (1 − iη)^{−(m+1)} | 2^m / √(m(2m−1)!) · H(ω)(sω)^m e^{−sω} | s/√2 | 4πs / (2m + 1) |
| DOG (m = derivative) | (−1)^{m+1} / √Γ(m + ½) · d^m/dη^m (e^{−η²/2}) | −i^m / √Γ(m + ½) · (sω)^m e^{−(sω)²/2} | √2 s | 2πs / √(m + ½) |

**Table 2 (p. 67): empirical factors.**

| Wavelet | C_δ (reconstruction) | γ (time-average decorrelation) | δj₀ (scale averaging) | ψ₀(0) |
|---|---|---|---|---|
| Morlet (ω₀ = 6) | 0.776 | 2.32 | 0.60 | π^{−1/4} |
| Paul (m = 4) | 1.132 | 1.17 | 1.5 | 1.079 |
| Marr / Mexican hat (DOG m = 2) | 3.541 | 1.43 | 1.4 | 0.867 |
| DOG (m = 6) | 1.966 | 1.37 | 0.97 | 0.884 |

Useful derived ratios (my arithmetic from Table 1): λ/s = 1.033 (Morlet ω₀ = 6), 1.396 (Paul m = 4), 3.974 (DOG m = 2), 2.507 (DOG m = 6).

## Figures worth remembering
- **Fig. 1 (p. 62):** Niño3 SST, its Morlet power map with 95% red-noise contour and cross-hatched COI, and the same with the Mexican hat. The standard template for a scalogram with significance and COI; the Morlet/DOG comparison shows how a real wavelet splits each cycle into two peaks.
- **Fig. 2 (p. 63):** Morlet, Paul (m = 4), DOG (m = 2, 6) in time (real and imaginary parts) and frequency, at s = 10δt. Shows Paul's poor frequency localisation and DOG's two-sided spectrum.
- **Fig. 3 (p. 66):** Niño3 Fourier spectrum with red-noise mean and 95% curves.
- **Fig. 4–5 (p. 69–70):** white- and red-noise wavelet power maps and Monte Carlo validation of the mean and 95% levels. Fig. 4b is a useful reminder of how "structured" pure red noise looks.
- **Fig. 6–7 (p. 72):** global wavelet spectrum vs smoothed Fourier spectrum; 95% levels for time-averaged spectra against n_a.
- **Fig. 8 (p. 73):** scale-averaged 2–8 yr power of Niño3 and SOI with 95% levels: band-variance time series as an envelope-like modulation measure.
- **Fig. 9 (p. 74):** 95% levels for scale-averaged power against the number of scales, for all four wavelets.
- **Fig. 10 (p. 75):** power Hovmöller (time–longitude map of band-averaged wavelet power), the spatial extension.
- **Fig. 11 (p. 77):** Paul-wavelet power of Niño3 and SOI, their cross-wavelet power, and the cross-wavelet phase with the 160°–200° region filled.

## Notation
- x_n, n = 0…N−1: series; δt: sample spacing; σ²: variance; x̂_k: DFT; ω_k: angular frequency (eq. 5).
- ψ₀(η): mother wavelet in nondimensional time η; ψ: normalised daughter wavelet; ω₀: Morlet nondimensional frequency; m: Paul order or DOG derivative.
- s, s_j, s₀, δj, J: scale, discrete scales, smallest scale, scale spacing (octaves), number of scales − 1.
- W_n(s): wavelet coefficient; |W_n(s)|²: local wavelet power; W̄²(s): global wavelet spectrum; W̄²_n: scale-averaged power.
- λ: equivalent Fourier period; τ_s: e-folding time setting the COI.
- α: lag-1 autocorrelation of the AR(1) background; P_k: background spectrum; χ²_ν: chi-square with ν degrees of freedom.
- C_δ, γ, δj₀: reconstruction constant, time-averaging decorrelation factor, scale-averaging factor (Table 2).
- n_a: number of points (times or scales) averaged; S_avg, S_mid: scale-averaging normalisation and mid-band scale.
- W^{XY}: cross-wavelet spectrum; Z_ν(p): cross-wavelet confidence level.

## Relevance to this project
This is the methods reference behind the wavelet scalograms and wavelet coherence in the group's resonance papers. None of those notes record the wavelet parameters they used, so this paper fills in the definitions, normalisation, COI and significance testing.

- **Data requirements:** the CWT needs a **time-resolved, uniformly sampled** record. It suits lab microphone signals, time-resolved schlieren pixel or mode-coefficient time series, LES probe signals and HPOD/SPOD temporal coefficients. It cannot be applied in time to non-time-resolved PIV. A wavelet along x of a single PIV snapshot is possible in principle (Encinar & Jiménez 2020, cited in [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)), but the significance tests here are only for 1D series and are untested in higher dimensions (p. 77).
- **Mode switching and intermittency in screech and edge tones:**
  - [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md) uses wavelet scalograms and the envelope |w(St₁, t)| to show intermittent, mutually exclusive A1/A2 staging. [jordan-2018-jet-flap-interaction-tones.md](jordan-2018-jet-flap-interaction-tones.md) and [stavropoulos-2026-jet-edge-interaction.md](stavropoulos-2026-jet-edge-interaction.md) use a bump wavelet for mode switching between resonance loops. These papers use the bump wavelet, which this paper does not cover, but the normalisation, scale-to-frequency conversion and COI logic carry over.
  - The **scale-averaged power** (eq. 24) over the band of one tone is the time series of that tone's variance, with a significance level from eq. 26–28. It is a more robust version of Mancinelli's single-scale envelope, and averaging over the band limits the risk, flagged in that note, of reading linear beating between St₁ and St₂ as nonlinear modulation, *provided the band excludes the other tone*. *(My inference.)*
  - Frequency resolution: the Morlet ψ̂₀ is a unit-width Gaussian in sω centred at ω₀ (Table 1), so its relative bandwidth is roughly 1/ω₀ ≈ 17% for ω₀ = 6. A1 and A2 tones about 10% apart (St 0.63 vs 0.70 in Mancinelli) would therefore blur together with the default Morlet. Separating them needs a larger ω₀ (longer in time, narrower in frequency) or a narrow-band wavelet such as the bump used by Jordan and Mancinelli; Paul (m = 4) is broader still and would be worse. *(My inference from Table 1, not discussed in the paper.)*
- **Twin-jet coupling and phase:** [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md) and [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md) use Morlet wavelet coherence and phase between microphone pairs. This paper shows unsmoothed wavelet coherence is identically 1 (p. 76), so their coherence must involve some time/scale smoothing that those notes say is unreported; it is defined in later work (e.g. Torrence & Webster 1999), not here. The cross-wavelet phase with a cross-wavelet power significance test (eq. 30–31, Fig. 11d) is the part directly usable from this paper. The blank region below ~2 kHz in Esfahani's maps is consistent with a COI mask (√2 s for Morlet), as that note suspects. [jeun-2024-screech-coupling-closure-rectangular-twin-jets.md](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) uses a Hilbert-transform phase difference instead, which is the single-band equivalent.
- **Link to the SPOD → reconstruction → Hilbert POD pipeline:**
  - The Morlet and Paul wavelets in Table 1 are analytic (ψ̂ zero for ω < 0), so |W_n(s)| at one scale is the envelope of a band-passed analytic signal, i.e. a single-point, single-band version of what HPOD_t gives for a whole field ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md), [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md)). Wavelets are the natural check on HPOD temporal coefficients: a scalogram of ψ_j(t) shows whether a mode's frequency drifts or switches. *(My inference.)*
  - The AR(1)/χ² machinery gives a ready significance test for amplitude bursts in HPOD or SPOD-reconstructed coefficients. For turbulent jets an AR(1) background is a poor fit; the measured, smoothed broadband spectrum (or one from a non-resonant condition) is a better P_k, which the method allows since P_k can be any background (p. 70). *(My inference.)*
  - Edge handling parallels HPOD: zero padding plus a COI here, versus FFT-based Hilbert transforms with ~15% trimming in Raiola & Kriegseis. Both need records much longer than the slowest dynamics of interest.
  - The global wavelet spectrum converges to a smoothed Fourier spectrum (p. 72), the same stationary picture as Welch/SPOD; the local spectra carry the extra time information. This is the same trade-off the SPOD notes ([yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md), [von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md)) make from the frequency side.
- **Simulation side:** LES records are short compared with lab records, so the COI (√2 s ≈ 1.4 periods per e-fold for Morlet; my arithmetic from Table 1 and λ ≈ 1.03 s) takes a large share of a few-hundred-cycle record at low frequencies. For the PyFR staging continuation (CLAUDE.md, `Simulations/PyFR_Staging_Continuation/`), a scale-averaged power series of a near-nozzle probe in the A1 and A2 bands, with a significance level, is one way to time when an LES switches stage. *(My suggestion; not from the paper.)*
- **Rocket noise:** launch and static-firing records are nonstationary (moving source, ignition transients); see the remarks in [gee-2023-sls-artemis-i-far-field-noise.md](gee-2023-sls-artemis-i-far-field-noise.md) and [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md). Scale-averaged wavelet power with significance is a direct way to track band level through a launch.
- **Facility:** climate data; no lab work. Not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:**
  - Torrence & Webster (1999), smoothed wavelet coherence.
  - Grinsted, Moore & Jevrejeva (2004), wavelet coherence toolbox and significance.
  - Farge (1992), wavelet transforms in turbulence (Annu. Rev. Fluid Mech. 24).
  - Meyers, Kelly & O'Brien (1993), scale-to-period derivation and edge damping.
