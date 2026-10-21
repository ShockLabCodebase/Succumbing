---
key: "nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals"
title: "On the Quadrature Approximation to the Hilbert Transform of Modulated Signals"
authors: ["Nuttall, Albert H.", "Bedrosian, Edward"]
year: 1966
type: "article"
venue: "Proc. IEEE 54(10), 1458–1459 (Letter, with Author's Reply)"
bib: {"journal": "Proceedings of the IEEE", "volume": "54", "number": "10", "pages": "1458--1459", "note": "Letter by A. H. Nuttall with Author's Reply by E. Bedrosian"}
doi: "10.1109/PROC.1966.5138"
arxiv: ""
pdf: "time-frequency-methods/Nuttall-Bedrosian_1966_On-The-Quadrature-Approximation-To-The-Hilbert-Transform-Of-Modulated-Signals.pdf"
version: "published"
unverified: ["volume 54, issue 10 and DOI are not printed on the pages; taken from the PDF's embedded IEEE Xplore metadata (they agree with the indexing request)"]
group: false
facility: ""
data: ["none"]
methods: ["Hilbert-transform"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["time-frequency-methods"]
related: ["bedrosian-1963-product-theorem-hilbert-transforms", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "raiola-2025-hilbert-pod", "boashash-1992-instantaneous-frequency-fundamentals", "daubechies-2011-synchrosqueezed-wavelet-transforms-emd", "horel-1984-complex-principal-component-analysis", "nekkanti-2021-spod-reconstruction-denoising-frequency-time"]
cites: []
summary: "Exact error of r·sin(2πf₀t+φ) as Hilbert transform of r·cos(2πf₀t+φ): E = 2∫|F|² below −f₀; one-sided F, not narrow band, is necessary and sufficient"
---
# On the Quadrature Approximation to the Hilbert Transform of Modulated Signals

- **Authors:** Albert H. Nuttall (Litton Systems, Inc., Waltham, Mass.), letter; Edward Bedrosian (Electronics Dept., The RAND Corporation, Santa Monica, Calif.), "Author's Reply". Both manuscripts received 2 May 1966 (p. 1458–1459).
- **Source:** Proceedings of the IEEE (Proceedings Letters), October 1966, pp. 1458–1459. Volume 54, issue 10 and doi:10.1109/PROC.1966.5138 are from the PDF's embedded metadata, not the printed pages.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Nuttall-Bedrosian_1966_On-The-Quadrature-Approximation-To-The-Hilbert-Transform-Of-Modulated-Signals.pdf` (2 pp., a scan with a poor OCR layer; equations were read from 300 dpi renders). Page refs are journal pages: PDF p. 1 = p. 1458, PDF p. 2 = p. 1459. Nuttall's letter fills the lower right column of p. 1458 and the upper left of p. 1459; the reply and its Fig. 1 follow on p. 1459. The rest of both pages belongs to other letters (H. F. Bates on ionospheric backscatter; a gyrator-RC filter synthesis), which are not covered here.
- **Context cited by the letter:** Cron & Nuttall 1965, J. Acoust. Soc. Am. 37, 486–492, Appendix A, for the "discrepancy" (footnote 1); Rihaczek & Bedrosian 1966, Proc. IEEE 54, 434–435, for the "recent controversy" and the term *imposed* modulation (footnote 2). The reply cites [Bedrosian 1963](bedrosian-1963-product-theorem-hilbert-transforms.md) (footnote 4).
- **Tags:** Hilbert transform, quadrature signal, analytic signal, imposed vs canonical amplitude and phase, amplitude and phase modulation, spectral one-sidedness, error energy, Bedrosian product theorem (generalised), envelope, instantaneous frequency

## Summary
Nuttall asks how far the "quadrature version" r(t) sin[2πf₀t + φ(t)] of a modulated carrier x(t) = r(t) cos[2πf₀t + φ(t)] is from its true Hilbert transform, for modulations r and φ that are *imposed* (chosen in advance), with no narrow-band assumption (p. 1458). Working in the frequency domain, he shows the energy of the difference is exactly twice the energy of the complex-modulation spectrum F(f) of r e^{iφ} below −f₀ (p. 1459). So x and its quadrature version are a Hilbert pair **if and only if** F(f) = 0 for f < −f₀: the requirement is that F be single-sided, not that x be narrow band. The error spectrum sits mostly near zero frequency, outside the signal's band (p. 1459). In his reply, Bedrosian welcomes this as showing that the approximation depends on spectral one-sidedness rather than band-limitedness, so some wide-band signals need no approximation at all. He generalises condition 2 of his 1963 product theorem to one-sided spectra F(u) = 0 for u < −a, G(u) = 0 for u < a, and rederives the result from it (p. 1459).

## Key findings
- **The question** (p. 1458): for imposed r(t) and φ(t), compare the Hilbert transform x_H(t) with the quadrature version x̂(t) = r sin[2πf₀t + φ], measured by the energy E of the difference.
- **Exact error energy** (p. 1459): E = 2∫_{−∞}^{−f₀} |F(f)|² df, "twice the energy in F(f) below −f₀", where F is the spectrum of r(t)exp[iφ(t)].
- **Necessary and sufficient condition** (p. 1459): x(t) and x̂(t) are a Hilbert pair iff F(f) = 0 for f < −f₀. "It is *not* necessary that x(t) be narrow band, but rather, F(f) must be single-sided."
- **Relative error** (p. 1459): E divided by the energy of x(t) measures the error of approximating x_H by x̂.
- **Where the error lives** (p. 1459): the difference spectrum is −iF*(−f − f₀) for f > 0 and iF(f − f₀) for f < 0. When |F| (or its envelope) decreases monotonically below −f₀, as for "many practical imposed modulations", the error spectrum is even, peaked at zero frequency and decreasing away from it: its major content is at low frequencies, "not in the band of the original signal".
- **Author's reply, interpretation** (p. 1459): the level of approximation is "related basically to the spectral one-sidedness of the original signal rather than to its band-limitedness". Narrow-band signals are a special case of a wider class, some members of which are wide band yet need no approximation.
- **Author's reply, generalised product theorem** (p. 1459, Fig. 1): if F(u) = 0 for u < −a and G(u) = 0 for u < a, then H[f(x)g(x)] = f(x)H[g(x)]. The original derivation is unaltered; condition 2 of the 1963 theorem (both factors analytic) is the case a = 0.
- **Author's reply, application** (p. 1459): with f(t) = r(t)exp[iφ(t)] and g(t) = exp(i2πf₀t), G is nonzero only at f = f₀, so F(f) = 0 for f < −f₀ suffices for H[r e^{i(2πf₀t+φ)}] = −i r e^{i(2πf₀t+φ)}. Taking real parts gives H[r cos(2πf₀t + φ)] = r sin(2πf₀t + φ), "the desired result", consistent with Nuttall's condition.

## Setup / method
Pure theory, no data, no numerics. Nuttall writes the spectra of x, x_H and x̂ in terms of F, applies Parseval to the difference, and splits the integral at f = 0 (p. 1458–1459). Bedrosian's reply reuses the 1963 proof with a new region of integration. There is no modelling or simulation side. The result holds for any real variable, so it applies to a Hilbert transform in time or along a spatial coordinate.

## Key equations
All read from page renders (p. 1458–1459). Fourier convention: $S(f)=\int e^{-i2\pi ft}s(t)\,\mathrm dt$, frequency in Hz.

- **Signal, Hilbert transform, quadrature version** (p. 1458):
  $$x(t)=r(t)\cos[2\pi f_0t+\phi(t)],\qquad H[x(t)]=x_H(t)=\frac1\pi\int_{-\infty}^{\infty}\frac{x(u)}{t-u}\,\mathrm du,\qquad \hat x(t)=r(t)\sin[2\pi f_0t+\phi(t)]$$
  (principal value implied). This is the communication convention, H[cos] = sin, as in MATLAB's `hilbert`.
- **Error energy** (p. 1458, by Parseval):
  $$E=\int_{-\infty}^{\infty}[x_H(t)-\hat x(t)]^2\,\mathrm dt=\int_{-\infty}^{\infty}|S_{x_H}(f)-S_{\hat x}(f)|^2\,\mathrm df$$
- **Spectra** (p. 1458):
  $$S_{x_H}(f)=-i\,\mathrm{sgn}(f)\,S_x(f),\qquad S_x(f)=\tfrac12\big[F(f-f_0)+F^*(-f-f_0)\big],\qquad S_{\hat x}(f)=\big[F(f-f_0)-F^*(-f-f_0)\big]/2i$$
  $$F(f)=\int_{-\infty}^{\infty}e^{-i2\pi ft}\,r(t)\,e^{i\phi(t)}\,\mathrm dt\quad\text{(spectrum of the imposed modulations in complex form)}$$
- **Result** (p. 1459):
  $$E=\tfrac14\int_{-\infty}^{\infty}\Big|F(f-f_0)-F^*(-f-f_0)-\mathrm{sgn}(f)F(f-f_0)-\mathrm{sgn}(f)F^*(-f-f_0)\Big|^2\mathrm df$$
  $$=\int_0^\infty|F(-f-f_0)|^2\,\mathrm df+\int_{-\infty}^0|F(f-f_0)|^2\,\mathrm df=2\int_{-\infty}^{-f_0}|F(f)|^2\,\mathrm df$$
- **Difference spectrum** (p. 1459):
  $$S_{x_H}(f)-S_{\hat x}(f)=\begin{cases}-iF^*(-f-f_0), & f>0\\ \;\;\,iF(f-f_0), & f<0\end{cases}$$
- **Generalised product theorem** (reply, p. 1459): $F(u)=0,\ u<-a$ and $G(v)=0,\ v<a$ $\Rightarrow$ $H[f(x)g(x)]=f(x)H[g(x)]$; a = 0 is the analytic case. With $H[e^{ibx}]=-i\,\mathrm{sgn}(b)\,e^{ibx}$:
  $$H\big[r(t)e^{i[2\pi f_0t+\phi(t)]}\big]=-i\,r(t)e^{i[2\pi f_0t+\phi(t)]}\ \Rightarrow\ H\big[r\cos(2\pi f_0t+\phi)\big]=r\sin(2\pi f_0t+\phi)\quad\text{if }F(f)=0,\ f<-f_0$$

I re-derived each step of the E calculation: S_xH − S_x̂ = (i/2)[F(f − f₀) − F*(−f − f₀) − sgn f F(f − f₀) − sgn f F*(−f − f₀)], which reduces to the two cases above, and both integrals map onto f < −f₀ by substitution.

> Points to check against the PDF before relying on them:
> - The reply's sign convention, H[e^{ibx}] = −i sgn(b)e^{ibx}, is the opposite of eq. 3 in [Bedrosian 1963](bedrosian-1963-product-theorem-hilbert-transforms.md) (+i sgn b). The 1966 sign is the one consistent with Nuttall's kernel and with H[cos] = sin.
> - The relative error "E to the energy in x(t)" is stated in words only; no formula is printed.

**What the condition means for the analytic signal** *(my derivation, not in the paper)*. With d(t) = x_H − x̂ (real, with the difference spectrum above) and ψ = 2πf₀t + φ, the analytic signal is
$$z=x+i\,x_H=r\,e^{i\psi}+i\,d(t).$$
So z returns the imposed pair exactly iff d ≡ 0, i.e. iff F(f) = 0 for f < −f₀. To first order in d/r:
$$|z|\approx r+d\sin\psi,\qquad \arg z\approx\psi+\frac{d}{r}\cos\psi,\qquad f_i-\frac{\dot\psi}{2\pi}\approx-\frac{d}{r}\,\frac{\dot\psi}{2\pi}\sin\psi.$$
Because d is mostly low-frequency, the errors appear as a ripple at the carrier rate (spurious intrawave modulation) of relative size |d|/r in both envelope and IF, largest where the envelope r is small. In the phase plane, d acts like a slowly wandering offset of the circle, the same picture as Huang's α + sin t example ([Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), p. 12–13); when |d| > r the IF can go negative.

**My checks** (numerical, FFT-based on periodic or long records, not in the paper):
- **AM**, f₀ = 200, r = 1 + 0.5 cos 2πf_m t: exact to round-off for f_m ≤ f₀ (f_m = 20, 150, 199, 200). For f_m = 250 and 400, the measured power of d is 0.125, exactly Nuttall's prediction 2(m/2)² for the sideband at −f_m < −f₀. The envelope error reaches 0.47–0.50 and the IF drops to about 100 Hz.
- **FM**, x = cos(2πf₀t + β sin 2πf_m t), f₀ = 200, f_m = 20. F has lines J_n(β) at n f_m for every n, so it is never strictly one-sided. The measured power of d equals the predicted 2Σ_{n f_m < −f₀} J_n(β)² to 4 digits in every case. As a function of the Carson-rule lower edge, (Δf + f_m)/f₀ with Δf = βf_m:

  | (Δf + f_m)/f₀ | β | error energy / signal energy | max IF error / f₀ |
  |---|---|---|---|
  | 0.2 | 1 | 6 × 10⁻²² | 6 × 10⁻⁸ |
  | 0.6 | 5 | 5 × 10⁻⁷ | 7 × 10⁻⁴ |
  | 0.8 | 7 | 3 × 10⁻⁴ | 0.015 |
  | 0.9 | 8 | 3 × 10⁻³ | 0.046 |
  | 1.0 | 9 | 0.018 | 0.11 |
  | 1.1 | 10 | 0.069 | 0.25 |
  | 1.3 | 12 | 0.45 | 0.52 (IF goes negative) |

  So the exact condition behaves like a Carson-type cap Δf + f_m ≲ f₀, i.e. the lower Carson band edge must stay above zero frequency, with an error that falls off steeply (Bessel tails) inside it.
- **Gaussian burst**, r = exp(−t²/2σ_t²), f₀ = 1/T₀: the finite-energy formula E = 2∫_{f<−f₀}|F|² df matches the numerical E to within about 1% (discretisation of the boundary bin), including two chirped cases. The relative error is approximately 4Q(2√2 π σ_t/T₀), with Q the Gaussian tail probability (my approximation). Measured: σ_t/T₀ = 0.2 → 0.12; 0.3 → 1.4 × 10⁻²; 0.4 → 6 × 10⁻⁴; 0.5 → 1.4 × 10⁻⁵; 0.75 → 3 × 10⁻¹¹. Over the region where r > 0.1 of its peak, the IF error is 8% of f₀ at σ_t = 0.4T₀, 0.4% at 0.5T₀ and 4 × 10⁻⁶ at 0.75T₀. An amplitude burst therefore needs σ_t ≳ 0.5 carrier period (full width at half maximum ≳ 1.2 periods) for its envelope and IF to come out of the Hilbert transform essentially exact.
- **Two tones** a₁cos 2πf₁t + a₂cos 2πf₂t (f₁ = 200, f₂ = 210, a₂/a₁ = 0.6): the analytic signal equals a₁e^{i2πf₁t} + a₂e^{i2πf₂t} to round-off. With carrier f₁, F has lines at 0 and +10 Hz, so it is one-sided and Nuttall's error is zero. The IF nonetheless ripples between 185.0 and 203.75 Hz with mean 200, exactly as the two-tone formula in the research question predicts. The Hilbert transform is exact; the ripple is a property of the two-component signal.

## Data tables
None; a theory letter.

## Figures worth remembering
- **Fig. 1 (p. 1459, in the reply), "Region of integration":** for F(u) = 0, u < −a and G(v) = 0, v < a, the support of F(u)G(v) is the region u ≥ −a, v ≥ a, which lies entirely on the positive side of u + v = 0 and touches it only at the corner (−a, a).

## Notation
- x(t): real modulated signal; r(t), φ(t): imposed amplitude and phase modulation; f₀: carrier frequency (Hz).
- x_H(t): Hilbert transform of x; x̂(t): quadrature version r sin[2πf₀t + φ].
- S_x, S_{x_H}, S_x̂: spectra of x, x_H, x̂. F(f): spectrum of the complex modulation r e^{iφ}. E: energy of x_H − x̂.
- Imposed modulation: r and φ specified independently of the analytic signal (the physical or designed modulation). Canonical pair (my term): |z| and arg z of the analytic signal, which always exist and coincide with the imposed pair only under the condition above.

## Relevance to this project
This is the exact form of the condition behind every Hilbert envelope and instantaneous frequency in the user's workflow, and the Nuttall half of the "Bedrosian/Nuttall conditions" in the research question [hpod-instantaneous-frequency-uncertainty](../../Research_Questions/hpod-instantaneous-frequency-uncertainty.md). Together with [Bedrosian 1963](bedrosian-1963-product-theorem-hilbert-transforms.md) it replaces the informal "amplitude slowly varying compared with the phase" of [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md) (p. 15) with a sharp statement. [Boashash 1992](boashash-1992-instantaneous-frequency-fundamentals.md) restates it as his Theorem 1 (p. 529).

- **For the SPOD → reconstruction → HPOD pipeline:**
  - An HPOD_t temporal mode is analytic by construction ([Raiola 2025](raiola-2025-hilbert-pod.md), p. 10–11), and so is a reconstruction from positive-frequency SPOD coefficients only. Its canonical envelope and phase always satisfy the one-sidedness condition, so Nuttall's error cannot be measured from the data alone. It measures how far those outputs can differ from a *physical* modulation, and so needs a model of that modulation. The natural place to use it is the synthetic switch benchmark proposed in the research question, where the imposed r and φ are known. *(My inference.)*
  - For a tone reconstructed in a band [f₀ − B/2, f₀ + B/2] with B/2 < f₀, any modulation the band can hold already satisfies the condition. So the Hilbert step is exact and the binding limit on how fast amplitude and frequency can change is the band B (the reconstruction or filter), not the Hilbert transform. *(My inference.)*
  - The error d(t) is concentrated near zero frequency (p. 1459), so mean-flow-like or slowly drifting content leaking into the input is the practical analogue. Removing the St = 0 content and any slow drift before the Hilbert step (as EMD and band-passing do) is the safe practice. *(My inference.)*
- **Time resolution of IF:** the Hilbert transform alone allows modulation as fast as about one carrier period (AM up to f_m = f₀ exactly; FM up to Δf + f_m ≈ f₀ with small error; Gaussian bursts down to σ_t ≈ 0.5T₀; my checks above). For screech at ~5–10 kHz this is well under a millisecond, far finer than any reconstruction band the lab would use. *(My inference.)*
- **Which data:** time-resolved, uniformly sampled series in time (microphones, time-resolved schlieren, LES, HPOD_t coefficients); along x for HPOD_x on snapshot PIV, with wavenumber in place of frequency.
- **What it does not address:** multicomponent signals. Two tones in one band give a one-sided F and an exact analytic signal, so this condition cannot flag them; that needs the monocomponent criteria of Huang 1998 (p. 12–14) and Boashash 1992 (p. 527), or the separation conditions of [Daubechies 2011](daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md). Noise and finite record length are also outside it ([Horel 1984](horel-1984-complex-principal-component-analysis.md), p. 1662, on tapering; Raiola 2025, p. 16, on trimming).
