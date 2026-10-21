---
key: "rilling-2008-one-or-two-frequencies-emd-two-tones"
title: "One or Two Frequencies? The Empirical Mode Decomposition Answers"
authors: ["Rilling, Gabriel", "Flandrin, Patrick"]
year: 2008
type: "article"
venue: "IEEE Trans. Signal Process. 56(1), 85–95"
bib: {"journal": "IEEE Transactions on Signal Processing", "volume": "56", "number": "1", "pages": "85--95", "note": "Held as HAL ensl-00113834, the manuscript submitted 13 Nov 2006"}
doi: "10.1109/TSP.2007.906771"
arxiv: ""
pdf: "time-frequency-methods/Rilling-Flandrin_2008_One-Or-Two-Frequencies-The-Empirical-Mode-Decomposition-Answers.pdf"
version: "preprint"
unverified: ["journal, volume 56, issue 1, pages 85–95, year 2008 and DOI are not printed in this HAL manuscript (header reads VOL. XX, NO. XX, XX 200X); taken from the indexing request and the Crossref check in Library_of_Shock_Lab/Research_Questions/hpod-instantaneous-frequency-uncertainty.md"]
group: false
facility: ""
data: ["synthetic"]
methods: ["EMD"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["time-frequency-methods"]
related: ["huang-1998-empirical-mode-decomposition-hilbert-spectrum", "raiola-2025-hilbert-pod", "torrence-1998-practical-guide-wavelet-analysis", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "sieber-2016-spectral-proper-orthogonal-decomposition", "wong-2023-steady-unsteady-coupling-twin-round-jets", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech"]
cites: ["huang-1998-empirical-mode-decomposition-hilbert-spectrum"]
summary: "EMD on two tones: split only if f_LF/f_HF < f_c(n) ≈ 0.66 (10 siftings) and the HF tone owns the extrema (af < 1); else one beat IMF or aliased fakes; T-independent"
---
# One or Two Frequencies? The Empirical Mode Decomposition Answers

- **Authors:** Gabriel Rilling, Patrick Flandrin (Physics Department, UMR 5672 CNRS, École Normale Supérieure de Lyon)
- **Source:** IEEE Trans. Signal Process. 56(1), 85–95 (2008), doi:10.1109/TSP.2007.906771 (journal details not in the PDF; see `unverified`). This file is the HAL deposit ensl-00113834 (CC BY 4.0) of the manuscript submitted on 13 Nov 2006 and marked "DRAFT". The published version may differ.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Rilling-Flandrin_2008_One-Or-Two-Frequencies-The-Empirical-Mode-Decomposition-Answers.pdf` (20 pp.: HAL cover sheet plus 19 manuscript pages; references on printed pp. 18–19)
- **Page refs:** printed manuscript page numbers (top right of each page). PDF page = printed page + 1, because PDF p. 1 is the HAL cover sheet.
- **Tags:** empirical mode decomposition (EMD), two-tone resolution, frequency ratio, amplitude ratio, beat effect, sifting operator, number of sifting iterations, cubic-spline envelope, equivalent linear filter, cutoff frequency, relative frequency resolution, extrema rate, extrema sampling, aliasing, spurious components, intrinsic mode function (IMF), Hilbert–Huang transform, instantaneous frequency, constant-Q / quasi-dyadic filter bank, nonlinear waveforms and harmonics

## Summary
The paper asks when EMD treats a sum of two sinusoids as two components and when as one, and answers it for the model x(t) = cos 2πt + a cos(2πft + φ), with a the amplitude ratio and f < 1 the frequency ratio, lower over higher (p. 4–5). Numerical experiments with ten sifting iterations map a separation measure over the (a, f) plane (Fig. 2, p. 6). A theory based on where the composite signal's extrema lie then explains the map (p. 7–16). When the higher-frequency (HF) tone dominates the slope (af < 1), the extrema are those of the HF tone and EMD acts almost exactly as a linear high-pass filter. Its cutoff in *relative* frequency depends only on the number of siftings n: about 0.66 at n = 10, rising very slowly towards 1 (eq. 8–9, p. 11–12). When the lower-frequency (LF) tone dominates the curvature (af² > 1), EMD never separates the tones. Depending on f it either keeps the sum as one waveform (f near 1/(2k+1)) or creates a spurious lower-frequency component by aliasing from the extrema "sampling" (f near 1/(2k)) (p. 13–15). The authors read the outcome as a data-driven, perception-like answer to "one modulated tone or two steady tones?" rather than as a resolution failure (p. 2–3, 17).

## Key findings
- **One or two is a modelling choice** (p. 1–3). Two equal tones can be written as cos 2πf₁t + cos 2πf₂t or as 2 cos π(f₁−f₂)t · cos π(f₁+f₂)t: one tone at the mean frequency, modulated in amplitude. The second reading is natural when f₁ ≈ f₂, as in the beat effect (Fig. 1, p. 2). With only x(t) given, there is no a priori reason to prefer either. The choice is "driven by the way the signal is processed" (p. 2). The authors say resolving close components is not their goal; poor resolution is acceptable if the decomposition matches a physically meaningful reading (p. 3).
- **The beat is already an IMF** (p. 4). The zero-mean criterion makes the close-tone sum in Fig. 1 a valid IMF that needs no further decomposition. Only the widely spaced pair shows two zero-mean contributions.
- **Only the first IMF needs study** (p. 4). Because EMD is recursive, understanding how the first IMF is extracted is enough. A correct split puts the HF tone in IMF 1 and leaves the LF tone as the residual, which becomes IMF 2 (p. 5).
- **Three parameters, no record length** (p. 4–5). EMD's behaviour depends only on a = a₂/a₁, provided both frequencies are far below the sampling frequency f_s. EMD commutes with time shifts and dilations, so only f = f₂/f₁ and φ = φ₂ − φ₁ matter. The analysis assumes an observation time T ≫ 1/f, and T does not enter any result.
- **Sampling** (p. 4). Sampling effects make EMD "much more complicated" when the tones approach Nyquist, f₁, f₂ ≳ 0.25 f_s, i.e. fewer than about four samples per period (refs [8], [9], [11]). The paper therefore restricts itself to f₁, f₂ ≪ f_s and treats the signals as continuous.
- **Experimental map** (Fig. 2, p. 5–6). The measure is the phase-averaged ⟨c₁⁽¹⁰⁾⟩_φ (eq. 3), which is 0 for perfect separation and about 1 when the tones are not separated. Two domains appear, split by whether a is above or below 1:
  - For a ≲ 1 (HF tone stronger), the 0.5 contour is flat at f ≈ 0.65–0.66, whatever a is (read off Fig. 2).
  - For a > 1 (LF tone stronger), the cutoff falls with a, between the curves af = 1 and af² = 1. Rough readings: f ≈ 0.45 at log₁₀ a = 0.5, ≈ 0.27 at 1, ≈ 0.15 at 1.5 and ≈ 0.08 at 2.
  - Above a critical ratio **f_c ≈ 0.67**, the two tones cannot be separated for any amplitude ratio (p. 6).
  - The dependence on a is "non-symmetrical": it applies only when the HF tone is weaker than the LF tone (p. 6).
  - The standard deviation over φ is very small except near frequency synchronisations (footnote 2, p. 5).
- **Extrema rate, Proposition 1** (p. 7–8):
  - If af < 1, the extrema rate is r_e = 2, the HF tone's rate.
  - If af² > 1, r_e = 2f, the LF tone's rate.
  - The proof compares the second derivatives of the two tones at an extremum (eq. 4–5). In terms of derivatives, af < 1 means the HF tone has the larger *slope* amplitude, and af² > 1 means the LF tone has the larger *curvature* amplitude.
  - In between (af > 1, af² < 1), r_e moves from one value to the other according to a closed-form expression (Key equations, p. 8).
- **Extrema locations** (p. 9). For af < 1, each extremum lies within (1/2π) sin⁻¹(af) of an HF extremum. For af² > 1, each lies within (1/(2πf)) sin⁻¹(1/(af)) of an LF extremum (Fig. 3).
- **"Normal" and "abnormal" domains** (p. 8):
  - af < 1 is "normal": EMD can see the HF tone's extrema, so it can extract it.
  - af² > 1 is "abnormal": the extrema belong to the LF tone, so recovering the HF tone is unlikely.
  - The abnormal domain is "far from a complete drawback": it keeps nonlinear periodic waveforms as single IMFs instead of scattering their harmonics over several.
- **EMD as a linear filter when af < 1** (p. 9–12):
  - *Model.* The extrema are assumed equally spaced at those of the HF tone. The maxima and minima then act as two interleaved samplings at the HF frequency, and spline interpolation acts as a filter I(ν) (eq. 6–7).
  - *Response.* After n siftings, IMF 1 holds the LF tone multiplied by (1 − I(f))ⁿ (eq. 8). So IMF 1 is a high-pass filter and IMF 2 a low-pass filter, and the cutoff depends only on the HF frequency and n (p. 11).
  - *Aliasing.* Aliased terms at 2k ± f are negligible because I(ν) ≈ 0 for |ν| > 1 (p. 11). For example, I(1.5) ≈ 0.006 for cubic splines (my calculation).
  - *Agreement with simulation.* The model matches the simulations for a = 10⁻² and a = 1, and for n = 1, 3 and 10, even as af → 1 (Fig. 4, p. 11–12).
- **Cutoff against the number of siftings** (p. 12–13):
  - The cutoff f_c⁽ⁿ⁾ is defined by (1 − I(f_c))ⁿ = 1/2. Eq. 9 gives f_c ≈ [1 + (ln 2/n)^{1/4}]⁻¹.
  - It increases with n and tends to 1, but very slowly. The paper states "typically f_c ≲ 0.75 when n ≲ 100" (p. 12); the model itself gives 0.776 at n = 100 (see the check below).
  - The authors call this a "relative frequency resolution". It agrees with practical observations that EMD's resolution is poor, "typically about 0.5" (p. 12).
  - More siftings give more IMFs and smoother envelopes, consistent with a narrower bandwidth for each IMF (p. 13). But unlimited sifting gives IMFs with no amplitude modulation (footnote 3, p. 13, citing Sharpley & Vatchev 2006).
- **When the LF tone dominates the curvature (af² > 1)** (p. 13–15):
  - EMD never recovers both tones (Fig. 2). The measure c₂ (eq. 10), whether IMF 1 equals the whole signal, depends almost only on f (Fig. 5, p. 13–14).
  - **f near 1/(2k+1)** (1, 1/3, 1/5, …): c₂ ≈ 0. EMD keeps the sum as one component, as it would a waveform with odd harmonics.
  - **f near 1/(2k)** (1/2, 1/4, …): c₂ ≈ 1. Sampling the HF tone at the LF extrema aliases it to f_a = 2k_f f − 1. A component λ_n cos(2πf_a t + 2k_f φ) is subtracted from IMF 1 and appears as IMF 2 (eq. 12, p. 14).
  - λ_n = 1 − (1 − I(f_a/f))ⁿ is about 1 when f_a/f ≲ f_c⁽ⁿ⁾ and about 0 otherwise. The bands where λ_n ≈ 1 widen as n grows (p. 15).
  - There is "no possible linear filtering equivalent" in this domain (p. 14).
  - *Check of the band edges (my calculation).* Applying the n = 10 cutoff 0.659 to f_a/f predicts λ_n ≈ 1 for f ∈ (0.376, 0.745), (0.215, 0.299) and (0.150, 0.187). These match the grey bands of Fig. 5 (about 0.37–0.74, 0.21–0.30 and 0.15–0.18).
- **Instantaneous frequency of the fake component** (p. 15). The only instantaneous-frequency (IF) statement in the paper: if the af² > 1, f ≈ 1/(2k) output is passed to Hilbert spectral analysis, IMF 1 has an IF that oscillates around f (the dominant LF tone), and IMF 2 has an IF that oscillates around f_a. A user might then report a component at f_a, a frequency not present in the signal, while the true second oscillation is at 1.
- **Refinement for f < 1/3** (p. 15–16):
  - Below f = 1/3, the af = 1 boundary is too pessimistic. When af is slightly above 1, the HF extrema exist only as inflections on the LF swings. One sifting subtracts an envelope mean that roughly follows the LF tone, and this uncovers them (Fig. 6). The extrema rate then rises to the HF value, and the linear model applies from the second sifting on.
  - A worst-case tangency condition gives the threshold ã(f) ≈ [f sin(3πf/2)]⁻¹. This lies between 1/f and 1/f² and tracks the 0.5 contour of Fig. 2 for small f (dotted curve).
- **Summary map** (Fig. 7, p. 16–17), for n = 10 (by eye):
  - (1) separated and correctly identified: f ≲ 0.55 for a ≲ 1.6, shrinking for larger a below the ã/af² boundary;
  - (2) one waveform: f ≳ 0.75 for any a, plus white stripes near f = 1/3, 1/5, … in the af² > 1 region;
  - (3) "something else": the band 0.55 ≲ f ≲ 0.75 for small a, and most of the af² > 1 region. This domain includes partial separation and fake oscillations.
- **Extensions claimed but not demonstrated** (p. 17–18):
  - Because EMD is local, the two-tone conclusions are said to carry over to slowly varying AM–FM components.
  - For broadband noise, EMD acts as a quasi-dyadic filter bank (refs [3], [6]); the first IMF's equivalent filter "has much to share" with Fig. 4.
  - Preliminary results for nonlinear periodic waveforms: the two regions of equal extrema density persist, and the critical frequency ratio depends only on n, not on the waveform.
- **What the paper does not do:**
  - It has no explicit comparison with Fourier resolution, no analysis of time resolution, no noise and no record-length study.
  - The IF statement on p. 15 is the only link to Hilbert spectral analysis.

## Setup / method

### Numerical experiments (p. 4–6, 11–14)
| Item | Value | Page |
|---|---|---|
| Signal | x(t; a, f) = cos 2πt + a cos(2πft + φ); HF tone normalised to unit frequency and amplitude | 5 |
| Amplitude ratio a = a₂/a₁ (LF over HF) | log₁₀ a from −2 to 2 | 6 |
| Frequency ratio f = f₂/f₁ (LF over HF) | 0 to 1 | 6 |
| Phase φ | averaged over (number of values not stated) | 5 |
| Siftings n | fixed count, 10 for the maps (Figs 2, 5); 1, 3, 10 in Fig. 4. No SD-type stop criterion | 5, 12 |
| Envelope interpolation | cubic splines | 3, 11 |
| Record | discrete time, f ≪ f_s, T ≫ 1/f (lengths not stated) | 4–5 |
| Measures | c₁⁽ⁿ⁾ (eq. 3): IMF 1 versus the HF tone; c₂⁽ⁿ⁾ (eq. 10): IMF 1 versus the whole signal | 5, 13 |
| Implementation | not stated. Ref. [1] is Flandrin's EMD web page, presumably the authors' MATLAB code | 18 |

### Theory (p. 7–16)
- **Assumption:** the extrema of the composite sit exactly at those of one tone and are equally spaced (p. 9). Proposition 1 and the location bounds of p. 9 justify this asymptotically.
- **Sifting as sampling and filtering:** the maxima and minima are two interleaved samplings at the dominant tone's extrema spacing. Spline interpolation through equally spaced knots is an LTI filter I(ν). The envelope mean is therefore I(ν) applied to the signal sampled at twice that rate (eq. 6–7, 11).
- **Aliasing:** this is what separates the two cases. For af < 1 the samplings' odd terms cancel the aliases, provided the spectrum lies in [−1, 1] (p. 10). For af² > 1 the HF tone lies above the extrema "Nyquist" and aliases to f_a (p. 13–14).
- **Linear iteration:** for af < 1, each sifting lowers a and so keeps af < 1. The model therefore holds for every later iteration and composes to (1 − I(f))ⁿ (p. 11).
- **Neglected effects:** aliased terms at 2k ± f (I small there), the slight non-uniformity of the extrema, and phase-synchronisation cases.

### Simulation and modelling side
There is no fluid model. The "experiments" are numerical EMD runs on synthetic tones. The "model" is an analytic equivalent-filter description of the EMD algorithm, asymptotically exact as a → 0 (af < 1 side) or a → ∞ (af² > 1 side), and validated against the runs (Figs 2, 4, 5). Model and runs agree closely for af < 1 (Fig. 4). For af² > 1 the agreement is checked only through the band structure of Fig. 5 (no model curve is overlaid).

## Key equations
Checked against page renders of printed pp. 3–16.

- **Sifting operator** (eq. 1, p. 3): $(\mathcal S x)(t)\triangleq x(t)-m_x(t)$, where m_x is the mean of the cubic-spline envelopes through the maxima and the minima.
- **Discrete two-tone signal** (p. 4): $x[n]=a_1\cos(2\pi f_1n+\varphi_1)+a_2\cos(2\pi f_2n+\varphi_2)$, reduced with $a\triangleq a_2/a_1$, $f\triangleq f_2/f_1$, $\varphi\triangleq\varphi_2-\varphi_1$.
- **Model** (eq. 2, p. 5): $x(t;a,f)=\cos2\pi t+a\cos(2\pi ft+\varphi)$, with $f\in\,]0,1[$.
- **Separation measure** (eq. 3, p. 5), with $d_1^{(n)}=(\mathcal S^nx)(t)$ the first IMF after exactly n siftings:
  $$c_1^{(n)}(a,f,\varphi)\triangleq\frac{\|d_1^{(n)}(t;a,f)-\cos2\pi t\|_{L^2(T)}}{\|a\cos(2\pi ft+\varphi)\|_{L^2(T)}}$$
- **Extremum and curvature** (eq. 4–5, p. 7):
  $$\partial_tx|_{t_0}\propto\sin2\pi t_0+af\sin(2\pi ft_0+\varphi)=0,\qquad \partial_t^2x\propto\cos2\pi t+af^2\cos(2\pi ft+\varphi)$$
- **Extrema rate in the transition domain** (af > 1, af² < 1; p. 8):
  $$r_e(a,f)=2f+\frac4\pi\left[\sin^{-1}\!\left(\frac{1}{af}\sqrt{\frac{1-a^2f^4}{1-f^2}}\right)-f\sin^{-1}\!\sqrt{\frac{1-a^2f^4}{1-f^2}}\right]$$
  Check: it gives r_e = 2 at af = 1 and r_e = 2f at af² = 1, so it joins both limits of Proposition 1.
- **Extrema location bounds** (p. 9): $|t_e-t_{HF}|\le\frac{1}{2\pi}\sin^{-1}(af)$ for af < 1; $|t_e-t_{LF}|\le\frac{1}{2\pi f}\sin^{-1}\frac{1}{af}$ for af² > 1.
- **Sifting in the Fourier domain** (eq. 6–7, p. 10):
  $$Ш_{max/min}(\nu)=\sum_{k\in\mathbb Z}(\pm1)^k\delta(\nu-k),\qquad \widehat{(\mathcal Sx)}(\nu)=\hat x(\nu)-I(\nu)\,(Ш_{mean}*\hat x)(\nu),\qquad Ш_{mean}=\sum_k\delta(\nu-2k)$$
- **IMFs for af < 1** (eq. 8, p. 11):
  $$d_1^{(n)}=\cos2\pi t+(1-I(f))^n\,a\cos(2\pi ft+\varphi),\qquad d_2^{(n)}=\big(1-(1-I(f))^n\big)\,a\cos(2\pi ft+\varphi)$$
- **Cubic-spline interpolation response**, unit knot spacing (p. 11, from Unser 1999):
  $$I^{c.s.}(\nu)=\left(\frac{\sin\pi\nu}{\pi\nu}\right)^4\frac{3}{2+\cos2\pi\nu}$$
- **Cutoff** (p. 12; eq. 9):
  $$\big(1-I(f_c^{(n)})\big)^n=\tfrac12,\qquad f_c^{(n)}=\left(1+\left(\frac{\ln2}{n}\right)^{1/4}\right)^{-1}+O\!\left(n^{-5/4}\right)$$
- **Measure for af² > 1** (eq. 10, p. 13): $c_2^{(n)}\triangleq\|d_1^{(n)}-x\|_{L^2(T)}/\|\cos2\pi t\|_{L^2(T)}$.
- **Sifting for af² > 1** (eq. 11, p. 13): $\widehat{(\mathcal Sx)}(\nu)=\hat x(\nu)-I(\nu/f)\,(Ш_{mean}*\hat x)(\nu)$, with $Ш_{mean}=\sum_k\delta(\nu-2kf)e^{i2k\varphi}$.
- **Aliased frequency** (p. 13–14): choose $k_f\in\mathbb N$ with $2k_f-1<1/f<2k_f+1$; then $f_a=2k_ff-1\in[-f,f]$.
- **IMFs for af² > 1** (eq. 12, p. 14):
  $$d_1^{(n)}=x-\lambda_n\cos(2\pi f_at+2k_f\varphi),\quad d_2^{(n)}=\lambda_n\cos(2\pi f_at+2k_f\varphi),\quad \lambda_n=1-\big(1-I(f_a/f)\big)^n$$
- **Refined lower boundary for f < 1/3** (p. 16): $\tilde a(f)\approx\big(f\sin(3\pi f/2)\big)^{-1}$. It equals 1/f at f = 1/3; at f = 0.1 it is 22, against 1/f = 10 and 1/f² = 100.

> Points to check against the PDF (or the published version) before relying on them:
> - **Fig. 4 caption wording.** It says the full lines are experiments and the dashed (a = 10⁻²) and dash-dotted (a = 1) curves are "theoretical predictions". But the linear model (eq. 8) does not depend on a, so the a-labelled curves are more likely the simulations, and the full lines the model. Either way, the curves overlay closely.
> - **Cutoff numbers.** Solving (1 − I^{c.s.}(f_c))ⁿ = 1/2 exactly (my calculation) gives f_c = 0.498, 0.583, 0.659, 0.719, 0.776, 0.860 and 0.890 for n = 1, 3, 10, 30, 100, 1000 and 3000. Eq. 9 gives 0.523, 0.591, 0.661, 0.720, 0.776, 0.860 and 0.890. So the text's "f_c ≲ 0.75 when n ≲ 100" (p. 12) slightly understates the value at n = 100, and the Fig. 2 value "f_c ≈ 0.67" (p. 6) compares with 0.659 from the model at n = 10.
> - On p. 13 the averaged measure is written ⟨c₂⁽¹⁰⁾(f₁, f₂, φ)⟩; elsewhere it is (a, f, φ). This is presumably a typo.
> - The Fig. 2 contour and the Fig. 7 boundaries quoted above were read by eye from the renders.
> - The transition-domain r_e formula was rebuilt from a garbled extraction and checked only at its two limits.

## Data tables
Numbers worth reusing:

| Quantity | Value | Page |
|---|---|---|
| Critical frequency ratio, n = 10 (experiment) | f_c ≈ 0.67 | 6 |
| Cutoff, exact model / eq. 9 (my calculation) | n = 1: 0.50 / 0.52; n = 3: 0.58 / 0.59; n = 10: 0.66 / 0.66; n = 100: 0.78 / 0.78; n = 3000: 0.89 / 0.89 | 12 (formula) |
| Practical "relative frequency resolution" of EMD | about 0.5 | 12 |
| Stated range | f_c ≲ 0.75 for n ≲ 100 | 12 |
| Sampling limit flagged | f₁, f₂ ≳ 0.25 f_s complicates EMD | 4 |
| Regime boundaries | af = 1 (extrema switch to HF); af² = 1 (extrema switch to LF); ã(f) ≈ [f sin(3πf/2)]⁻¹ for f < 1/3 | 7–8, 16 |
| λ_n ≈ 1 bands for af² > 1, n = 10 (Fig. 5; model check) | f ≈ 0.37–0.74, 0.21–0.30, 0.15–0.18 | 14 |
| Siftings per IMF in practice | about 10 ("common practice") | 5 |

## Figures worth remembering
- **Fig. 1 (p. 2):** beat effect. Widely spaced tones read as two components; close tones read as one AM tone.
- **Fig. 2 (p. 6):** the main result. ⟨c₁⁽¹⁰⁾⟩ over (log₁₀ a, f), 3D and as a map, with the theoretical curves af = 1, af² = 1 and af sin(3πf/2) = 1 and the 0.5 contour.
- **Fig. 3 (p. 9):** extrema as crossings of the HF derivative and the negated LF derivative, for af < 1, the transition, and af² > 1.
- **Fig. 4 (p. 12):** the equivalent high-pass response for n = 1, 3 and 10, model against simulation. Inset: f_c against n up to 100, exact and eq. 9.
- **Fig. 5 (p. 14):** ⟨c₂⁽¹⁰⁾⟩ in the af² > 1 region: alternating bands where the sum is kept whole (f ≈ 1/(2k+1)) or a fake component is created (f ≈ 1/(2k)).
- **Fig. 6 (p. 16):** hidden HF extrema (inflections) on LF swings uncovered by one sifting, for af ≳ 1 and f < 1/3.
- **Fig. 7 (p. 17):** schematic summary map of the three answers: separated, one waveform, something else.

## Notation
- HF / LF: the higher- and lower-frequency tones. The HF tone is normalised to frequency 1 and amplitude 1.
- a = a₂/a₁: amplitude ratio, LF over HF. **a < 1 means the HF tone is the stronger one.** f = f₂/f₁ ∈ (0, 1): frequency ratio, LF over HF. φ: relative phase.
- 𝒮: sifting operator. m_x: mean envelope. d₁⁽ⁿ⁾, d₂⁽ⁿ⁾: first and second IMF after n siftings. n: number of siftings (fixed, not an SD criterion).
- c₁⁽ⁿ⁾, c₂⁽ⁿ⁾: separation and "single-component" measures (eq. 3, 10). ⟨·⟩_φ: average over phase.
- r_e(a, f): extrema rate (extrema per unit time). I(ν): interpolation filter response for unit-spaced knots. Ш: Dirac comb.
- f_c⁽ⁿ⁾: half-response cutoff of the equivalent filter. f_a, k_f: aliased frequency and its index. λ_n: amplitude of the aliased component. ã(f): refined threshold amplitude ratio.

## Relevance to this project
This is the quantitative answer to the "close tones" weakness that [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md) found empirically (p. 45–47 there). It shows that EMD's resolution is a fixed, rather wide *relative* bandwidth, not a record-length limit.

- **Huang's failure case explained** (my calculation from eq. 8 and I^{c.s.}):
  - Huang's cos(2πt/30) + cos(2πt/34) has a = 1 and f = 30/34 = 0.882. That puts it in the linear-filter regime (af = 0.88 < 1), well above f_c(10) = 0.66.
  - The model needs **n ≈ 2200 siftings** to reach half separation, and gives ⟨c₁⟩ ≈ 0.39 at n = 3000. Eq. 9 gives f_c(3000) ≈ 0.89.
  - This matches Huang's "up to 3000 siftings" and his IMFs that never reached constant amplitude.
  - The record length (511 s, 17 HF cycles, Δf·T ≈ 2) explains why Huang's *Fourier* and wavelet marginal spectra also failed. It is not why EMD failed: in this paper's analysis T drops out (p. 4–5).
- **EMD compared with Fourier resolution** (my arithmetic; the paper makes no such comparison):
  - A Rayleigh criterion Δf·T ≳ 1 corresponds to a relative separation (1 − f) ≳ 1/N, where N is the number of HF cycles in the record.
  - EMD's cutoff at n = 10 corresponds to N ≈ 3 cycles; n = 100 to N ≈ 4.5; n = 3000 to N ≈ 9.
  - So for steady tones, any Fourier analysis over more than a few periods resolves better than EMD, and EMD does not improve with longer records. This fits EMD's constant-Q, wavelet-like character: the quasi-dyadic filter bank for noise (p. 17), the "data-driven wavelet-like expansions" of ref. [2] (p. 3), and the Morlet bandwidth discussion in [Torrence 1998](torrence-1998-practical-guide-wavelet-analysis.md).
- **Link to Hilbert POD and the SPOD → reconstruction → HPOD pipeline:**
  - Any narrow-banding step decides whether the Hilbert step sees "one or two" components (p. 2). EMD's equivalent filter (eq. 8–9) is one concrete example: a high-pass with relative cutoff about 0.5–0.8 that n sets.
  - A band reconstructed from SPOD ([Nekkanti 2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)) has an absolute resolution of about 1/(n_fft Δt). For the lab's close tones that is far finer than EMD can reach, which supports SPOD reconstruction as step 2 of the pipeline. *(My inference.)*
  - [Sieber 2016](sieber-2016-spectral-proper-orthogonal-decomposition.md)'s N_f and Horel's W(ω) are the analogous knobs in the other methods.
  - Once two tones share one IMF or one band, the Hilbert IF reports one component: an AM tone at the mean frequency for equal amplitudes (p. 2), or the dominant tone's frequency with a ripple (p. 15). See the two-tone IF analysis in `Library_of_Shock_Lab/Research_Questions/hpod-instantaneous-frequency-uncertainty.md`.
  - The criterion that decides which tone dominates EMD is the **slope ratio af**, not the amplitude ratio. A weaker but higher-frequency tone still controls the extrema when a_HF f_HF > a_LF f_LF (Proposition 1, p. 7). *(My extension of the research question's IF formula.)* For the analytic signal of the raw two-tone sum, the IF goes negative exactly when the weaker tone is the higher one and dominates the slope (r f_weak > f_strong in the question's notation, r < 1). For a sum dominated in amplitude by the LF tone, that is the same af < 1 boundary at which the HF tone takes over the extrema while the zero crossings stay with the LF tone: Huang's "riding wave", where the sum is not an IMF.
  - **Spurious components** (p. 13–15): if the LF component dominates the curvature (af² > 1) and f is near 1/(2k), EMD creates a fake mode at f_a, and its Hilbert IF reports a frequency that is not in the data. HPOD on SPOD reconstructions cannot fail this way, because it does not resample at extrema. But anyone running HHT on microphone data should check for it.
- **Which data each method suits:** EMD, and these results, apply to **single, time-resolved, well-sampled series**: microphone signals, time-resolved schlieren pixels, HPOD or SPOD temporal coefficients. The paper's restriction to f ≪ f_s, and its warning at f ≳ 0.25 f_s (p. 4), add to Huang's "five points per wave". Nothing here applies to non-time-resolved PIV.
- **Resonance problems in the lab** (my numbers from the paper's model):
  - **A1/A2 staging:** tones about 10% apart, f ≈ 0.91 ([Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md)). The model needs about 7000 siftings for half separation, and at n = 10 gives ⟨c₁⟩ ≈ 0.999. EMD will put A1 and A2 in one IMF whenever both are present, so a Hilbert IF of that IMF behaves as the two-tone formula of the research question predicts. That is usable for the plateau-versus-ripple exclusivity test, but not for separating the tones.
  - **Twin-jet SS/SA:** tones 0.3–0.6% apart ([Wong 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md)) are hopeless for EMD (about 10⁹ siftings by the model). Separate them by symmetry or with long-block SPOD instead.
  - **Harmonics:** screech and impingement tones have harmonics. For a dominant fundamental with weak harmonics (the af² > 1 region), odd harmonics stay in the fundamental's IMF. Near f = 1/2 (the 2nd harmonic) λ_n ≈ 1; for an exactly locked harmonic f_a → 0, so the "fake" component degenerates to a slow offset or drift (my reading of eq. 12). This matches Huang's Stokes-wave result (one IMF) and his intrawave-modulation view. The conclusion's claim that the critical ratio depends only on n, not on waveform (p. 18), supports treating nonlinear tones the same way.
- **Modelling side:** the theory here is a model of the *algorithm*, not of a flow. It is a clean example of reducing a nonlinear, iterative procedure to an equivalent linear filter, valid where its assumption (equally spaced extrema) holds, and of locating where it breaks down (aliasing). The same style of analysis could be applied to the group's own pipeline, for example the equivalent frequency response of an SPOD-band reconstruction followed by HPOD. *(Suggestion.)*
- **Caveats:** the paper uses a fixed n with no SD stop criterion, cubic splines only, no noise, and unmodulated tones. It covers only the first IMF, and the extension to AM–FM components and nonlinear waveforms is asserted rather than shown. Facility attribution: none; it is pure signal processing.
- **Follow-up candidates for `/add-paper`:**
  - Flandrin, Rilling & Gonçalvès 2004 (EMD as a filter bank, IEEE SPL 11), and Wu & Huang 2004 (white noise and EMD, Proc. R. Soc. A 460).
  - Rilling & Flandrin 2006 (sampling and EMD, ICASSP); Stevenson, Mesbah & Boashash 2005 (sampling limit for EMD).
  - Sharpley & Vatchev 2006 (analysis of IMFs, Constr. Approx. 24).
  - Daubechies, Lu & Wu 2011 (synchrosqueezing). It already sits in the research question's requested list. *From memory, to be checked once indexed:* its separation condition on component frequencies is also relative.
