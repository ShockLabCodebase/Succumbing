---
key: "bedrosian-1963-product-theorem-hilbert-transforms"
title: "A Product Theorem for Hilbert Transforms"
authors: ["Bedrosian, Edward"]
year: 1963
type: "article"
venue: "Proc. IEEE 51(5), 868–869 (Correspondence)"
bib: {"journal": "Proceedings of the IEEE", "volume": "51", "number": "5", "pages": "868--869", "note": "Correspondence"}
doi: "10.1109/PROC.1963.2308"
arxiv: ""
pdf: "time-frequency-methods/Bedrosian_1963_A-Product-Theorem-For-Hilbert-Transforms.pdf"
version: "published"
unverified: ["DOI and issue number 5 are not printed on the pages; taken from the PDF's embedded IEEE Xplore metadata (they agree with the indexing request)", "volume 51 is not printed on these pages; it is given in the citation of this letter in Nuttall & Bedrosian 1966 (p. 1459, footnote 4)"]
group: false
facility: ""
data: ["none"]
methods: ["Hilbert-transform"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["time-frequency-methods"]
related: ["nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "raiola-2025-hilbert-pod", "boashash-1992-instantaneous-frequency-fundamentals", "daubechies-2011-synchrosqueezed-wavelet-transforms-emd", "horel-1984-complex-principal-component-analysis", "davey-2025-hpod-sphere-wake"]
cites: []
summary: "Product theorem: H[fg] = f·H[g] if f is low-pass and g high-pass with disjoint spectra, or both analytic; so H[r cos ω₀t] = r sin ω₀t when r's band is below ω₀"
---
# A Product Theorem for Hilbert Transforms

- **Author:** Edward Bedrosian (The RAND Corporation, Santa Monica, Calif.). The letter prints "E. Bedrosian"; the given name is from his 1966 reply in the same journal ([Nuttall 1966](nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md), p. 1459). Received 26 December 1962; sponsored by the US Air Force under Project RAND, contract AF 49(638)-700 (p. 868).
- **Source:** Proceedings of the IEEE (Correspondence), May 1963, pp. 868–869. Volume 51 is from the citation in Nuttall 1966 (p. 1459, footnote 4); issue 5 and doi:10.1109/PROC.1963.2308 are from the PDF's embedded metadata, not the printed pages.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Bedrosian_1963_A-Product-Theorem-For-Hilbert-Transforms.pdf` (2 pp., a scan with a poor OCR layer; equations were read from 300 dpi renders). Page refs are journal pages: PDF p. 1 = p. 868, PDF p. 2 = p. 869. The letter starts at the foot of the right-hand column of p. 868 and fills the left and middle columns of p. 869. The rest of both pages belongs to other letters (Kundu & Banerjee on a log–exponential amplifier; Klüver on slip in M-type electron beams; a correction by Kataoka), which are not covered here.
- **Tags:** Hilbert transform, product theorem, Bedrosian theorem, analytic signal, amplitude modulation, low-pass × high-pass, non-overlapping spectra, quadrature signal, envelope and phase, tables of Hilbert transforms

## Summary
A one-page theorem that became the standard condition for reading an envelope and a phase off the analytic signal. If one factor of a product is low-pass and the other high-pass, with spectra that do not overlap, or if both factors are analytic, then the Hilbert transform of the product is the low-pass factor times the Hilbert transform of the other factor (eq. 1, p. 868). The proof is three lines in the Fourier domain: on the support of the product of the two spectra, sgn(u + v) = sgn v (eq. 2–8, Fig. 1, p. 868–869). Bedrosian presents it as a way to extend tables of Hilbert transforms (two examples from Erdélyi's tables) and notes the communication-theory consequence: an amplitude-modulated carrier r(t) cos(ω₀t + φ) has Hilbert transform r(t) sin(ω₀t + φ) provided the highest frequency in r(t) is below ω₀ (p. 869). A footnote states, citing Kelly, Reed & Root (1960), that r(t) cos[ω₀t + φ(t)] has Hilbert transform r(t) sin[ω₀t + φ(t)] "with no such restriction". That holds when r and φ are *defined* through the analytic signal; for modulations imposed in advance it is corrected by [Nuttall 1966](nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md).

## Key findings
- **Theorem** (p. 868): f(x) and g(x) are generally complex functions in L²(−∞, ∞) of a real variable x. If
  1. the Fourier transform F(u) of f vanishes for |u| > a and the Fourier transform G(u) of g vanishes for |u| < a, with a an arbitrary positive constant, **or**
  2. f and g are both analytic ("their real and imaginary parts are Hilbert pairs"),

  then H[f(x)g(x)] = f(x)H[g(x)] (eq. 1). The conditions are sufficient; the letter does not claim they are necessary. (The [Boashash 1992](boashash-1992-instantaneous-frequency-fundamentals.md) note records a later necessity result, Chiollaz et al. 1978, cited there on p. 537.)
- **Why it works** (p. 869): under condition 1 the product F(u)G(v) is nonzero only in two semi-infinite strips, |u| ≤ a with v ≥ a or v ≤ −a, so u + v always has the sign of v; under condition 2 it is nonzero only in the first quadrant (Fig. 1). The Hilbert multiplier of the product therefore acts on g alone (eq. 5).
- **In circuit terms** (p. 869): the Hilbert transform of the product of a low-pass and a high-pass signal with non-overlapping spectra is the low-pass signal times the Hilbert transform of the high-pass signal.
- **Amplitude modulation** (p. 869): for a double-sideband AM signal r(t) cos(ω₀t + φ), ω₀ > 0, the Hilbert transform is r(t) sin(ω₀t + φ) "provided that the highest frequency component in r(t) is less than ω₀" (crediting Urkowitz 1962). Bedrosian contrasts this "apparently simple form, which requires a spectral restriction" with the general form r(t) cos[ω₀t + φ(t)].
- **Footnote 1** (p. 869): Kelly, Reed & Root (1960) show that r(t) cos[ω₀t + φ(t)] is the real part of a complex signal r(t)e^{i[ω₀t+φ(t)]} which is analytic, so its real and imaginary parts are a Hilbert pair, and r(t) and φ(t) are "uniquely specified for a given real wave form". The footnote adds that Lerner's (1960) error term related to the signal bandwidth is incorrect.
  - *My reading, with Nuttall 1966:* this is true for the **canonical** pair, i.e. r and φ obtained from the analytic signal of the given waveform. For **imposed** modulations r(t), φ(t), Nuttall shows there is an error term, governed by how far the spectrum of r e^{iφ} reaches below −f₀ (Nuttall 1966, p. 1459), and Bedrosian's reply accepts it. The 1966 letters do not mention this footnote explicitly; Nuttall refers to "the recent controversy on this topic" (p. 1458).
- **Table-building examples** (p. 869), using Erdélyi's tables:
  - H[sin ax J_n(bx)] = cos ax J_n(bx), 0 < b < a, n = 0, 1, 2, … (Erdélyi 15.3(18)). The Bessel factor's transform vanishes above b, so it is the low-pass factor.
  - H[sin bx Ci(ax)] = −sgn x sin bx si(a|x|), 0 < b < a, with Ci(ax) = −∫_{ax}^∞ (cos t/t) dt as the high-pass factor (its transform vanishes below a) and si(x) = −∫_x^∞ (sin t/t) dt.

## Setup / method
Pure theory, no data, no numerics. The proof writes the product as a double Fourier integral, applies the Hilbert transform to each exponential, and uses the support of F(u)G(v) to replace sgn(u + v) by sgn v (eq. 2–8). Everything is in a general real variable x, so it applies equally to a Hilbert transform in time (HPOD_t, microphone signals) and along a spatial coordinate (HPOD_x). There is no modelling or simulation side.

## Key equations
All read from page renders (p. 868–869).

- **Theorem** (eq. 1, p. 868), under condition 1 or 2 above:
  $$H\big[f(x)\,g(x)\big]=f(x)\,H\big[g(x)\big]$$
- **Product in Fourier form** (eq. 2, p. 868), which fixes the transform convention $f(x)=\frac{1}{2\pi}\int F(u)e^{iux}\,\mathrm du$:
  $$f(x)g(x)=\frac{1}{(2\pi)^2}\int_{-\infty}^{\infty}\mathrm du\int_{-\infty}^{\infty}\mathrm dv\,F(u)G(v)\,e^{i(u+v)x}$$
- **Hilbert transform of an exponential** (eq. 3, p. 869, citing Erdélyi 15.1(5) and 15.2(38)):
  $$H\big[e^{ibx}\big]=i\,\mathrm{sgn}(b)\,e^{ibx}$$
- **Transform of the product** (eq. 4, p. 869):
  $$H[fg]=\frac{1}{(2\pi)^2}\int\mathrm du\int\mathrm dv\,F(u)G(v)\,i\,\mathrm{sgn}(u+v)\,e^{i(u+v)x}$$
- **Support condition** (eq. 5, p. 869): $\mathrm{sgn}(u+v)=\mathrm{sgn}\,v$ wherever $F(u)G(v)\neq0$.
- **Conclusion** (eq. 6–8, p. 869):
  $$H[fg]=f(x)\,\frac{1}{2\pi}\int\mathrm dv\,G(v)\,i\,\mathrm{sgn}\,v\,e^{ivx},\qquad H[g]=\frac{1}{2\pi}\int\mathrm dv\,G(v)\,H\big[e^{ivx}\big]=\frac{1}{2\pi}\int\mathrm dv\,G(v)\,i\,\mathrm{sgn}\,v\,e^{ivx}$$
  $$\Rightarrow\quad H[f(x)g(x)]=f(x)\,H[g(x)]\qquad\text{Q.E.D.}$$
- **AM consequence** (p. 869): $H\big[r(t)\cos(\omega_0t+\phi)\big]=r(t)\sin(\omega_0t+\phi)$ if the spectrum of r(t) vanishes for $|\omega|\ge\omega_0$ ("highest frequency component … less than ω₀"), ω₀ > 0, φ constant. Then the analytic signal is exactly $r(t)e^{i(\omega_0t+\phi)}$, so $|z|=r$ (for r ≥ 0) and the instantaneous frequency is exactly ω₀, however fast r varies within that band.

> Points to check against the PDF before relying on them:
> - **Sign convention is inconsistent within the letter.** Eq. 3 (+i sgn b) implies H[cos bx] = −sin bx and H[sin bx] = +cos bx for b > 0 (Erdélyi's convention, consistent with the Bessel example). The AM paragraph and footnote instead use H[cos] = +sin, the communication convention, which is also Nuttall's (H[e^{ibx}] = −i sgn(b)e^{ibx}, 1966, p. 1459) and MATLAB's `hilbert`. The theorem (eq. 1) holds in either convention, since H appears once on each side; the sign of a quoted transform does not.
> - The line giving H[Ci(ax)] = −sgn x si(a|x|) (bottom of the left column, p. 869, ref. [3] = Erdélyi 15.3(3)) is overprinted by the IEEE download watermark. It is read partly from context (it is what makes the H[sin bx Ci(ax)] result follow).
> - The last word of footnote 1 ("incor-rect") is also partly overprinted.
> - **Boundary case:** condition 1 as printed ("vanishes for |u| > a" and "for |u| < a") lets both spectra touch at |u| = a, where u + v = 0 is possible. This set has measure zero for continuous spectra, but it matters for discrete (FFT) spectra: in my check, random spectra touching at the boundary bin gave a 10⁻³ relative error, against 10⁻¹⁶ when they did not touch.

**My checks** (numerical, FFT-based, not in the paper):
- Random complex f band-limited to |k| ≤ 49 and g supported on 50 ≤ |k| ≤ 400 (bins): ‖H[fg] − fH[g]‖/‖H[fg]‖ = 6 × 10⁻¹⁶. Both analytic: 6 × 10⁻¹⁶. Overlapping spectra (f to |k| = 100, g from 50): 0.27, so the condition matters.
- AM, f₀ = 200, r = 1 + 0.5 cos 2πf_m t: H[x] = r sin 2πf₀t to round-off (relative error energy ~ 10⁻²⁷) for f_m = 20, 150, 199 and 200; the envelope |z| equals r and the IF equals f₀ to 10⁻⁹ Hz. For f_m = 250 > f₀ the error energy is 22% of the signal's, the envelope is wrong by up to 0.47 and the IF swings down to 100 Hz.
- Overmodulated AM (r = 1 + 1.5 cos 2πf_m t, f_m < f₀) still satisfies H[x] = r sin exactly, but |z| = |r|, not r, and the phase jumps by π where r < 0. *(My observation:* reading r off |z| also needs r ≥ 0.)

## Data tables
None; a theory letter.

## Figures worth remembering
- **Fig. 1 (p. 869), "Regions of integration":** (a) for F(u) = 0, |u| > a and G(v) = 0, |v| < a, the shaded support is two semi-infinite vertical strips (|u| ≤ a, v ≥ a and v ≤ −a), which the line u + v = 0 does not cross; (b) for F = 0, u < 0 and G = 0, v < 0, the first quadrant. The whole proof is visible in this picture.

## Notation
- H[·]: Hilbert transform. f, g: factors; F(u), G(v): their Fourier transforms. a: the frequency (or wavenumber) separating the low-pass and high-pass supports.
- r(t): amplitude (envelope); ω₀: carrier angular frequency; φ: phase constant (φ(t) in the footnote).
- Ci, si: cosine and sine integrals as defined above. J_n: Bessel function of the first kind.
- Analytic function: a complex function whose real and imaginary parts are a Hilbert pair, i.e. whose spectrum vanishes for negative arguments (Titchmarsh, ref. [4]).

## Relevance to this project
This is the exact condition behind the informal rule that a Hilbert envelope and phase are meaningful only if "the amplitude varies slowly compared with the phase" ([Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), p. 15). It is the Bedrosian half of the "Bedrosian/Nuttall conditions" invoked in the research question [hpod-instantaneous-frequency-uncertainty](../Research_Questions/hpod-instantaneous-frequency-uncertainty.md).

- **For the SPOD → reconstruction → HPOD pipeline:**
  - HPOD_t temporal modes are analytic by construction ([Raiola 2025](raiola-2025-hilbert-pod.md), p. 10–11), so |ψ_j| and arg ψ_j are always *some* envelope and phase: the canonical pair. Bedrosian says when that pair is a physical amplitude times a carrier: when the amplitude's spectrum lies entirely below the carrier frequency. *(My inference.)*
  - The condition is about **one-sidedness, not slowness**: for a pure AM tone the envelope can vary on any time scale down to about one carrier period and still be returned exactly, with IF exactly f₀ (my AM check above, f_m up to f₀). For screech or impinging tones, envelope changes such as the A1/A2 beat at St₂ − St₁ ≈ 0.069 ([Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md), p. 6–7) or 5–15-cycle interruptions of twin-jet coupling ([Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md)) have bandwidths far below the tone frequency, so the Hilbert step itself is not what limits time resolution. The narrow-banding step (reconstruction band, filter) is. *(My inference.)*
  - The theorem says nothing about how many components are present. A sum of two positive-frequency tones is analytic, so the Hilbert transform returns its canonical envelope and phase exactly; the beat and the IF ripple it produces are correct properties of that pair, not transform errors. The monocomponent requirement ([Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), p. 12–14; [Boashash 1992](boashash-1992-instantaneous-frequency-fundamentals.md), p. 527) is a separate condition. *(My inference; verified numerically, see the Nuttall note.)*
- **Phase or frequency modulation** is not covered by the 1963 theorem except through the footnote; the exact error for imposed AM *and* PM, and the necessary and sufficient condition, are in [Nuttall 1966](nuttall-1966-quadrature-approximation-hilbert-transform-modulated-signals.md), whose author's reply also generalises condition 2.
- **Which data:** the theorem is stated in a general variable x. In time it needs uniformly sampled, time-resolved data (microphones, time-resolved schlieren, LES probes, HPOD_t coefficients). Along x it applies to snapshot PIV through HPOD_x ([Raiola 2025](raiola-2025-hilbert-pod.md); [Davey 2025](davey-2025-hpod-sphere-wake.md)): the envelope's wavenumber spectrum must stay below the carrier wavenumber. *(My inference:* a wavepacket that grows and decays within about one wavelength violates this, so its HPOD_x envelope and local wavenumber are not the physical ones. This may contribute to the end and near-body distortions reported for HPOD_x, Davey 2025, p. 11–18, 34.)
- **Practical caveats** *(mine)*: real records are finite and never strictly band-limited, and the FFT-based Hilbert transform treats the record as periodic, so the condition holds only approximately near the ends; this is the reason for the 10–15% end trimming (Horel 1984, p. 1662; Raiola 2025, p. 16). Fix the sign convention (see the check box) before reading phase directions.
- **Related signal-processing notes:** [Boashash 1992](boashash-1992-instantaneous-frequency-fundamentals.md) restates the theorem (p. 525, 536–537); [Daubechies 2011](daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md) proves IF recovery for multicomponent signals under separation and slow-modulation conditions, the multicomponent counterpart of this single-product statement.
