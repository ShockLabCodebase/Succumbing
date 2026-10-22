---
key: "daubechies-2011-synchrosqueezed-wavelet-transforms-emd"
title: "Synchrosqueezed Wavelet Transforms: a Tool for Empirical Mode Decomposition"
authors: ["Daubechies, Ingrid", "Lu, Jianfeng", "Wu, Hau-Tieng"]
year: 2011
type: "article"
venue: "Appl. Comput. Harmon. Anal. 30(2), 243–261"
bib: {"journal": "Applied and Computational Harmonic Analysis", "volume": "30", "number": "2", "pages": "243--261"}
doi: "10.1016/j.acha.2010.08.002"
arxiv: "0912.2437"
pdf: "time-frequency-methods/Daubechies-EtAl_2011_Synchrosqueezed-Wavelet-Transforms-A-Tool-For-Empirical-Mode-Decomposition.pdf"
version: "preprint"
unverified: ["journal, volume, issue, pages, year (2011) and DOI are not printed in this arXiv v1 PDF (dated 12 Dec 2009); taken from the indexing request and memory", "published title probably differs ('Synchrosqueezed wavelet transforms: An empirical mode decomposition-like tool', from memory); the title field is the arXiv v1 title"]
group: false
facility: ""
data: ["synthetic", "field-data"]
methods: ["synchrosqueezing", "wavelets", "Hilbert-transform", "EMD", "spectrogram"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["time-frequency-methods"]
related: ["huang-1998-empirical-mode-decomposition-hilbert-spectrum", "torrence-1998-practical-guide-wavelet-analysis", "raiola-2025-hilbert-pod", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "sieber-2016-spectral-proper-orthogonal-decomposition", "horel-1984-complex-principal-component-analysis", "wong-2023-steady-unsteady-coupling-twin-round-jets", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "bell-2021-intermittent-modal-coupling-screeching-twin-jets", "mancinelli-2019-screech-prediction-upstream-modes", "jordan-2018-jet-flap-interaction-tones"]
cites: ["huang-1998-empirical-mode-decomposition-hilbert-spectrum", "huang-2009-on-instantaneous-frequency", "rilling-2008-one-or-two-frequencies-emd-two-tones"]
summary: "Synchrosqueezed CWT with a proof: AM–FM modes with relative IF gap ≥ d and slow modulation ε get IF to ε^(1/3) and are rebuilt; wavelet band must be < d/(1+d)"
---
# Synchrosqueezed Wavelet Transforms: a Tool for Empirical Mode Decomposition

- **Authors:** Ingrid Daubechies, Jianfeng Lu, Hau-Tieng Wu (Department of Mathematics and Program in Applied and Computational Mathematics, Princeton University)
- **Source:** arXiv:0912.2437v1 [math.NA], 12 Dec 2009 (this file). Published in Appl. Comput. Harmon. Anal. 30(2) (2011) 243–261, doi:10.1016/j.acha.2010.08.002, probably under the title "Synchrosqueezed wavelet transforms: An empirical mode decomposition-like tool". The journal details are not in this PDF (see `unverified`), and the journal version may differ from this preprint.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Daubechies-EtAl_2011_Synchrosqueezed-Wavelet-Transforms-A-Tool-For-Empirical-Mode-Decomposition.pdf` (23 pp.)
- **Page refs:** PDF page numbers, which equal the printed page numbers.
- **Tags:** synchrosqueezing, synchrosqueezed wavelet transform (SST), reassignment, continuous wavelet transform, Morlet wavelet, instantaneous frequency, instantaneous amplitude, intrinsic-mode-type (IMT) functions, well-separated components, AM–FM signals, empirical mode decomposition (EMD), EEMD, analytic signal, Hilbert transform, uncertainty principle, Wigner–Ville, component extraction, chirp in noise, crossing components, ECG heart-rate variability, electromyography drift removal

## Summary
The paper gives EMD-style adaptive time–frequency analysis a mathematical footing by replacing sifting with *synchrosqueezing*, a reassignment of the continuous wavelet transform (CWT) (p. 1, 5). At each scale a and time b, the phase derivative of the wavelet coefficient, ω(a, b) = −i ∂_b W/W, is a candidate instantaneous frequency. The coefficient is then moved along the frequency axis only (not in time) to ω(a, b). This collapses the smeared wavelet ridge onto a line at the instantaneous frequency and keeps the transform invertible (eq. 2.2–2.7, p. 6–7). The authors define a class A_{ε,d} of signals: sums of complex AM–FM "intrinsic-mode-type" components whose amplitude and frequency vary slowly (|A′|, |φ″| ≤ ε φ′) and whose instantaneous frequencies are separated by a relative gap d (Def. 3.1–3.2, p. 8). Theorem 3.3 proves the following for a wavelet whose Fourier support is narrower than the separation (Δ < d/(1+d)): the synchrosqueezed transform is concentrated in K non-overlapping bands; its frequency estimate lies within ε^{1/3} of each component's φ′_k(b); and integrating over each band rebuilds A_k(b)e^{iφ_k(b)} to O(ε^{1/3}) (p. 8–14). A variational reading is sketched (p. 14–16). The examples are a chirp in noise down to SNR −12.55 dB, two crossing components compared with EMD and EEMD, drift removal from electromyography, and heart-rate tracking from an ECG (p. 16–21).

## Key findings
- **Stance on the uncertainty principle** (p. 1–3):
  - Linear time–frequency (TF) methods (windowed Fourier, wavelets) compare the signal with a family of templates. The templates "colour" the picture, and the Heisenberg uncertainty principle limits the attainable TF resolution. Each choice of transform is a different trade-off and none is ideal (Fig. 1, p. 1–2).
  - Quadratic methods (Wigner–Ville) are crisper but have interference terms and negative values. Smoothing them away (pseudo-Wigner–Ville) brings back the blur, and reconstructing components is awkward (Fig. 2, p. 2–3).
  - Both fail for signals of a few TF-localised components that start, stop or vary (p. 2–3), and for non-harmonic single-component waveforms cos φ(t) (Fig. 3, p. 3).
  - The paper never claims to beat the uncertainty principle. It claims an exact, sharp representation for a *defined class* of signals, with the class conditions made explicit.
- **The decomposition is not unique** (eq. 1.3, p. 4). The identity 0.25 cos((Ω−γ)t) + 2.5 cos Ωt + 0.25 cos((Ω+γ)t) = (2 + cos²(γt/2)) cos Ωt can be read as three tones or as one tone with slow amplitude modulation (Fig. 4). EMD prefers the single component when Ω ≫ γ, and "we should not expect a universal solution" (p. 4). (The identity checks out algebraically.)
- **What is wrong with EMD** (p. 4–5):
  - The Hilbert-transform instantaneous frequency of each IMF, ω_k = φ′_k, replaces a "very unstable" numerical derivative of φ_k (p. 4). Huang et al. 2009 [13] later replaced the Hilbert step with other methods.
  - Sifting with cubic-spline envelopes is heuristic, and noise destabilises it. EEMD [18] helps in practice but has no theory (p. 5).
  - Earlier analysis: EMD on white noise behaves like a wavelet filter bank [9, 17]; sums of cosines were studied by Rilling & Flandrin [16]; infinite sifting is a bounded operator on ℓ∞ [14, 10] (p. 5).
- **Synchrosqueezing idea** (p. 5–6, Fig. 5):
  - For s = A cos ωt and an analytic wavelet (ψ̂(ξ) = 0 for ξ < 0), W_s(a, b) = (A/4π) a^{1/2} conj(ψ̂(aω)) e^{ibω} (eq. 2.1). It is smeared in scale around a = ω₀/ω, but its phase in b turns at ω at *every* scale.
  - So ω(a, b) = −i W⁻¹ ∂_b W returns exactly ω for a pure tone (eq. 2.2). The map (b, a) → (b, ω(a, b)) piles the whole smear onto the line ω (p. 6).
  - Synchrosqueezing comes from auditory models (Daubechies & Maes 1996 [7]) and is a special case of reassignment (Auger & Flandrin 1995 [1]; [3, 4]) (p. 5).
- **Only frequency is reassigned.** The map keeps time at b and moves only the frequency coordinate (p. 6, eq. 2.3, 2.7). *(My observation: time localisation therefore stays that of the wavelet at each scale. Synchrosqueezing sharpens the frequency side of the TF tile, not the time side. Abrupt starts and stops stay spread over the wavelet's duration; see the junction of the toy signal in Fig. 6, p. 16.)*
- **Still invertible** (eq. 2.4–2.6, p. 6–7). Integrating W a^{−3/2} over scale gives the signal: s(b) = Re[C_ψ⁻¹ ∫W_s a^{−3/2} da]. In binned form, s(b) ≈ Re[C_ψ⁻¹ Σ_ℓ T_s(ω_ℓ, b) Δω]. Summing the synchrosqueezed transform over a frequency band at each b rebuilds the part of the signal in that band.
- **Link to the analytic signal** (eq. 2.8–2.14, p. 7–8):
  - Because ψ̂ vanishes at negative frequencies, ω(a, b) is a ratio of wavelet-windowed integrals of the analytic signal s + iHs and of its derivative (eq. 2.11).
  - For an "asymptotic signal" s = a(t) cos φ(t) with slowly varying a and φ′ (Hs ≈ a sin φ, eq. 2.12–2.13), ω(a, b) ≈ ∫a φ′ e^{iφ} ψ̄ dt / ∫a e^{iφ} ψ̄ dt ≈ φ′(b) (eq. 2.14).
  - *(My reading: ω(a, b) is a complex-weighted local average of the Hilbert instantaneous frequency φ′ over the wavelet's support at scale a. So synchrosqueezing is band-pass filtering at scale a, then the analytic-signal instantaneous frequency, then reassignment, done for all scales at once.)*
- **Noise needs a threshold** (Remark, p. 7). Deciding where W ≠ 0 is unstable with noise, so ω(a, b) is computed only where |W_s(a, b)| ≥ ε.
- **Signal class** (Def. 3.1–3.2, p. 8):
  - *Intrinsic-mode-type (IMT) function with accuracy ε:* a complex f(t) = A(t)e^{iφ(t)} with A ∈ C¹, φ ∈ C², inf φ′ > 0, |A′(t)| ≤ ε|φ′(t)| and |φ″(t)| ≤ ε|φ′(t)| for all t, and M″ = sup|φ″| < ∞.
  - *Well-separated superposition with separation d:* f = Σ_{k=1}^{K} f_k, each f_k IMT, with φ′_k > φ′_{k−1} and |φ′_k − φ′_{k−1}| ≥ d [φ′_k + φ′_{k−1}] for all t. The separation is **relative** (constant-Q, like the wavelet itself): neighbouring frequencies must differ by a ratio of at least (1 + d)/(1 − d).
  - Components may live on finite intervals [−T_k, T_k], with the inequalities applied on those intervals (Remark, p. 8). *(My observation: the C¹ amplitude and |A′| ≤ εφ′ still require each component to switch on and off smoothly, so abrupt starts are outside the strict hypotheses.)*
  - *(My observation: as written, ε is not dimensionless. |A′| ≤ εφ′ gives it amplitude units and |φ″| ≤ εφ′ gives it 1/time. The threshold ε̃ on |W| is absolute too. The theorem is therefore implicitly for signals normalised to O(1) amplitude in a fixed time unit, and its bounds are not scale-invariant.)*
- **Main theorem** (Theorem 3.3, p. 8–9). Take f ∈ A_{ε,d}, set ε̃ = ε^{1/3}, and choose a wavelet with ψ̂ supported in [1 − Δ, 1 + Δ], **Δ < d/(1 + d)**. Synchrosqueeze with threshold ε̃: S_{f,ε̃}(b, ω) = ∫_{|W_f|>ε̃} W_f(a, b) δ(ω − ω_f(a, b)) a^{−3/2} da. For ε small enough:
  1. |W_f(a, b)| > ε̃ only inside the zones Z_k = {|aφ′_k(b) − 1| < Δ}, one per component.
  2. Inside Z_k, wherever |W_f| > ε̃: **|ω_f(a, b) − φ′_k(b)| ≤ ε̃ = ε^{1/3}**, at every time b.
  3. Integrating S over the strip |ω − φ′_k(b)| < ε̃ and dividing by R_ψ gives A_k(b)e^{iφ_k(b)} to within Cε̃, for every b.

  The authors read this as: S is "completely concentrated" in narrow bands around ω = φ′_k(t), and each band alone rebuilds its component "with high precision", which is the adaptive TF decomposition EMD aims for (p. 9).
- **Why separation is needed: one component per zone** (Lemma 3.6, p. 11). If two components were both in the wavelet's passband at the same (a, b), then Δ ≥ d(1 − Δ), contradicting Δ < d/(1 + d). So the scale–time plane splits into K non-touching zones with a "no-man's land" between them where |W_f| ≤ ε a^{3/2}Γ₁ (p. 11). This is a resolution condition: the analysing filter must be narrower than the relative gap between components.
- **What "ε small enough" means** (p. 11–14). There are three explicit conditions:
  - (3.1) ε < a^{−9/4}Γ₁^{−3/2}. Wavelet leakage between zones then stays below the threshold.
  - (3.2) ε ≤ a^{−3/2}[Γ₂ + aφ′_kΓ₁]^{−3}. This turns the general frequency error √a(Γ₂ + aΓ₁φ′_k)ε^{2/3} (Estimate 3.8) into ε̃.
  - (3.4) ε ≤ (1/8)d³[φ′₁ + φ′₂]³, i.e. 2ε̃ ≤ d(φ′₁ + φ′₂). The frequency error must be smaller than half the guaranteed gap between neighbours (eq. 3.5).

  Γ₁ and Γ₂ (Estimates 3.5 and 3.7) involve the wavelet's time moments I_n = ∫|u|ⁿ|ψ(u)|du and I′_n = ∫|u|ⁿ|ψ′(u)|du, the amplitudes, the frequencies and the chirp bound M″_k. The errors come from Taylor-expanding A_k and φ_k over the wavelet's support (Estimate 3.4: |A_k(t+s) − A_k(t)| ≤ ε|s|(|φ′_k(t)| + ½M″_k|s|), and likewise for φ′_k, p. 9). *(My inference: a narrower Δ means a longer wavelet in time and larger I_n, so a smaller d forces a smaller Δ, which forces a smaller ε. Closer components must therefore be modulated more slowly. This is the uncertainty trade-off, moved into the definition of the admissible class. The paper does not say this; it says only that the constants are not optimised, p. 14.)*
- **Error bound on the amplitude** (end of the proof of Estimate 3.9, p. 14): the error is ≤ 2ε̃ R_ψ⁻¹[Δ/φ′_k(b) + (φ′_k/(1 − Δ))^{1/2} − (φ′_k/(1 + Δ))^{1/2}].
- **Conditions are sufficient and loose** (Remark, p. 14):
  - The conditions on ε hold uniformly if A_k and φ′_k are bounded above and away from zero, which bounds a.
  - "No effort has been made to optimize the bounds."
  - The aim is to show that if A_k and φ′_k change slowly compared with φ_k, synchrosqueezing identifies both the instantaneous frequencies and the amplitudes.
  - A compactly supported ψ̂ is only for convenience; other wavelets add decay terms "without making a conceptual difference".
- **The choice of wavelet (almost) drops out** (p. 16). The variational functional (eq. 4.6) contains no wavelet, which fits the numerical observation that the CWT depends on ψ but the synchrosqueezed transform (almost) does not, for signals in A_{ε,d}.
- **Numerical results** (p. 16–21). All use a Morlet CWT; other well-frequency-localised wavelets give similar results (p. 16).
  - *Toy signal* (Fig. 6, p. 16): a constant tone that stops and a parabolic-frequency chirp that starts (Fig. 1 signal). The SST gives sharp lines. The trend 0.5t appears as a spurious low-frequency component, because the signal is not centred on zero (caption, p. 16).
  - *Chirp in noise* (Fig. 7 and 10, p. 16–19): f = cos(8t + t²), whose instantaneous frequency is 8 + 2t. White noise X with σ² = 1 is added as f + X (SNR −3.00 dB) and f + 3X (SNR −12.55 dB). The ridge is recovered "with reasonable accuracy" and is "fairly robust" to noise (p. 17, 19). No error is quantified.
    - On the plots, the extracted frequency is a staircase of frequency bins.
    - It is held at about 10 instead of 8 for t ≲ 1 in all three cases.
    - At −12.55 dB it deviates by about ±1–2 near t ≈ 7 and has an end spike near t ≈ 12 (my reading of Fig. 10, p. 19).
  - *Crossing components* (Fig. 8–9, p. 17–18): f = cos(t² + t + cos t) + cos 8t, with instantaneous frequencies 2t + 1 − sin t and 8, which cross near t ≈ 3.4 (my arithmetic). Noise 0.5X gives SNR 6.45 dB.
    - Both ridges are clear away from the crossing, with or without noise (Fig. 8).
    - Components are rebuilt by selecting a zone around each ridge (a horizontal band about 8 for s₁, a band following the chirp for s₂) and using the full inverse CWT (eq. 5.1). That formula worked better than the single-integral one (eq. 5.2) (p. 19).
    - The SST components are "more easily interpretable" than those from EMD (noise-free case) or EEMD (noisy case) (p. 19).
    - *My reading of Fig. 9 (p. 18), not discussed in the text:* both SST reconstructions are good away from the crossing but err by up to about the unit amplitude near t ≈ 2–5, where the separation condition fails. The EMD and EEMD candidates are worse: badly mixed before t ≈ 5–6, and the EEMD s₂ is nearly zero there.
  - *sEMG* (Fig. 11, p. 19–20): triceps, 608 s at 500 Hz, 32 log-spaced bins per octave of scale.
    - The low-frequency drift (below about 1 Hz) is removed by dropping the SST below a cut-off that tracks the highest dominant component near 1 Hz plus a small offset ω₀. Peaks keep their sharpness and position.
    - The authors note that a plain wavelet transform can do the same (p. 20).
  - *ECG* (Fig. 12–13, p. 20–21): 600 s at 1000 Hz, 12-bit over ±10 mV, 128 bins per octave.
    - The dominant SST line near 1.2 Hz gives an "instantaneous heart rate" ω_c(t).
    - It is "clearly highly correlated" with the piecewise-constant inverse RR interval (p. 21). No correlation value is given.
    - The ridge follows the heartbeat-to-heartbeat variation at a time resolution of a few beats, judging by Fig. 13 (my reading).
- **Limits stated by the authors:**
  - the decomposition is not unique (p. 4);
  - a threshold is needed for noisy data (p. 7);
  - the constants are not optimised (p. 14);
  - the variational result is stated without proof (p. 16);
  - for drift removal, synchrosqueezing adds nothing over the plain CWT (p. 20).
- **Limits not stated:**
  - The theorem is noise-free; noise robustness is shown only by example (p. 16–19).
  - The guarantee is pointwise but needs slow modulation over the wavelet's duration (Estimate 3.4–3.5).
  - The theorem says nothing when two components share a passband, which is the crossing case (Fig. 9).
  - ω_f(a, b) as defined is complex in general, and the paper does not say whether its real part is used in practice.

## Setup / method

### Algorithm (p. 6–7, 9, 16, 18–20)
1. **CWT** with an analytic wavelet (ψ̂ = 0 for negative frequencies; Morlet in all examples): W_s(a, b) = ∫s(t) a^{−1/2} conj(ψ((t − b)/a)) dt (eq. 2.1).
2. **Candidate frequency** where |W_s| exceeds the threshold: ω(a, b) = −i ∂_b W_s/W_s (eq. 2.2). This is the phase derivative of the coefficient in time, i.e. the instantaneous frequency of the band-passed analytic signal at scale a (eq. 2.11).
3. **Squeeze:** sum each W_s(a_k, b) a_k^{−3/2}(Δa)_k into the frequency bin ω_ℓ that contains ω(a_k, b) (eq. 2.3), or use the continuous form, eq. 2.7. With logarithmic frequency bins, either make Δω depend on ℓ or change the exponent of a from −3/2 to −1/2 (Remark, p. 7).
4. **Read the ridges** ω = φ′_k(t) from the concentrated picture to get the instantaneous frequencies (Fig. 10, p. 19). A ridge-tracking step is used for the ECG (p. 21); its algorithm is not given.
5. **Extract components** if needed: mark a zone around each ridge in the synchrosqueezed plane and invert over it. Use the full double-integral inverse CWT (eq. 5.1), which the authors found best, rather than summing over frequency (eq. 5.2) (p. 18–19).

### Parameters and data requirements
- **Wavelet:** Morlet in practice (p. 16). The theorem needs ψ̂ supported in [1 − Δ, 1 + Δ] with Δ < d/(1 + d), i.e. the wavelet's relative bandwidth must be below the components' relative gap (p. 9).
- **Scale discretisation:** 32 (sEMG) or 128 (ECG) log-spaced bins per dyadic scale interval [2^k, 2^{k+1}] (p. 20–21).
- **Threshold** ε̃ on |W| for noise (p. 7, 9). No practical value is given.
- **Synthetic examples:** t ∈ [0, 4π] (from the plots). Frequencies are angular (rad per unit time): sin 8t sits at 8 in Fig. 5. Sampling rate and threshold are not stated.
- **Data type:** a single, uniformly sampled, **time-resolved** 1-D series (needed for the CWT and ∂_b). The paper does not treat fields or snapshot data.
- **Preprocessing:** none described. A trend or non-zero mean shows up as an extra low-frequency component (Fig. 6, p. 16).
- **Simulation and modelling side:** none. The paper is pure signal analysis: a theorem with proof (Section 3), a variational interpretation without proof (Section 4), synthetic test signals and two medical records (Section 5). No physical model is fitted.

### Examples
| Case | Signal | Noise / SNR | Figures | Pages |
|---|---|---|---|---|
| Pure tone | sin 8t | none | 5 | 6 |
| Toy (stop + start) | s₁ = 0.5t + cos 20t (0 ≤ t ≤ 5π/2); s₂ = cos(4/3[(t−10)³ − (2π−10)³] + 10(t − 2π)) (2π ≤ t ≤ 4π) | none | 1, 2, 6 | 2–3, 16 |
| Single chirp | cos(8t + t²), IF 8 + 2t | none; f + X (−3.00 dB); f + 3X (−12.55 dB) | 7, 10 | 16–19 |
| Crossing components | cos(t² + t + cos t) + cos 8t, IFs 2t + 1 − sin t and 8 | none; f + 0.5X (6.45 dB) | 8, 9 | 17–19 |
| sEMG (triceps) | 608 s at 500 Hz, left and right | measured | 11 | 19–20 |
| ECG | 600 s at 1000 Hz, 12 bit, ±10 mV | measured | 12, 13 | 20–21 |

## Key equations
Checked against page renders of PDF p. 4 and 6–16; the text extraction garbles all symbols.

- **IMF model and local harmonicity** (eq. 1.1–1.2, p. 4):
  $$s(t)=\sum_{k=1}^{K}s_k(t),\qquad s_k(t)=A_k(t)\cos\phi_k(t),\quad A_k,\ \phi_k'>0,$$
  locally harmonic over [t − δ, t + δ] with δ ≈ 2π[φ′_k(t)]⁻¹ (one period), with IF ω_k = φ′_k.
- **Non-uniqueness** (eq. 1.3, p. 4), with Ω ≫ γ:
  $$0.25\cos[(\Omega-\gamma)t]+2.5\cos(\Omega t)+0.25\cos[(\Omega+\gamma)t]=\Big(2+\cos^2\tfrac{\gamma}{2}t\Big)\cos(\Omega t)$$
- **CWT of a tone** (eq. 2.1, p. 6), constants as printed:
  $$W_s(a,b)=\int s(t)\,a^{-1/2}\,\overline{\psi\!\Big(\frac{t-b}{a}\Big)}\,\mathrm dt=\frac1{2\pi}\int\hat s(\xi)\,a^{1/2}\,\overline{\hat\psi(a\xi)}\,e^{ib\xi}\,\mathrm d\xi\;\xrightarrow{\;s=A\cos\omega t\;}\;\frac{A}{4\pi}\,a^{1/2}\,\overline{\hat\psi(a\omega)}\,e^{ib\omega}$$
- **Candidate instantaneous frequency** (eq. 2.2, p. 6):
  $$\omega(a,b)=-i\,\big(W_s(a,b)\big)^{-1}\,\frac{\partial}{\partial b}W_s(a,b)$$
- **Binned synchrosqueezing** (eq. 2.3, p. 6):
  $$T_s(\omega_\ell,b)=(\Delta\omega)^{-1}\sum_{a_k:\,|\omega(a_k,b)-\omega_\ell|\le\Delta\omega/2}W_s(a_k,b)\,a_k^{-3/2}\,(\Delta a)_k$$
- **Reconstruction** (eq. 2.4–2.6, p. 6–7):
  $$s(b)=\mathfrak{Re}\Big[C_\psi^{-1}\int_0^\infty W_s(a,b)\,a^{-3/2}\,\mathrm da\Big]\approx\mathfrak{Re}\Big[C_\psi^{-1}\sum_\ell T_s(\omega_\ell,b)\,\Delta\omega\Big],\qquad C_\psi=2\int_0^\infty\overline{\hat\psi(\xi)}\,\frac{\mathrm d\xi}{\xi}$$
- **Continuous synchrosqueezing** (eq. 2.7, p. 7), with A(b) = {a : W_s(a, b) ≠ 0}, or A_ε(b) = {a : |W_s| ≥ ε} with a noise threshold:
  $$\mathcal T_s(\omega,b)=\int_{A(b)}W_s(a,b)\,a^{-3/2}\,\delta\big(\omega(a,b)-\omega\big)\,\mathrm da$$
- **Relation to the analytic signal** (eq. 2.9–2.14, p. 7):
  $$\omega(a,b)=\frac{\int\xi\,\hat s(\xi)\,\overline{\hat\psi(a\xi)}\,e^{ib\xi}\mathrm d\xi}{\int\hat s(\xi)\,\overline{\hat\psi(a\xi)}\,e^{ib\xi}\mathrm d\xi}=\frac{\int-i\,(s+iHs)'(t)\,a^{-1/2}\,\overline{\psi(\frac{t-b}{a})}\,\mathrm dt}{\int(s+iHs)(t)\,a^{-1/2}\,\overline{\psi(\frac{t-b}{a})}\,\mathrm dt}$$
  For s = a(t) cos φ(t) with a′ ≪ φ′ and φ″ ≪ φ′ (eq. 2.12 prints "a′(t) ≪ 1"), Hs ≈ a sin φ (eq. 2.13) and
  $$\omega(a,b)\approx\frac{\int a(t)\,\phi'(t)\,e^{i\phi(t)}\,a^{-1/2}\,\overline{\psi(\frac{t-b}{a})}\,\mathrm dt}{\int a(t)\,e^{i\phi(t)}\,a^{-1/2}\,\overline{\psi(\frac{t-b}{a})}\,\mathrm dt}\approx\phi'(b)\qquad(2.14)$$
  (The paper uses a for both amplitude and scale here.)
- **Definition 3.1, IMT with accuracy ε** (p. 8):
  $$f(t)=A(t)e^{i\phi(t)},\quad A\in C^1,\ \phi\in C^2,\quad\inf_t\phi'(t)>0,\quad|A'(t)|,\ |\phi''(t)|\le\epsilon\,|\phi'(t)|\ \ \forall t,\quad M''=\sup_t|\phi''(t)|<\infty$$
- **Definition 3.2, well-separated superposition** (p. 8):
  $$f=\sum_{k=1}^{K}f_k,\qquad\phi_k'(t)>\phi_{k-1}'(t),\qquad|\phi_k'(t)-\phi_{k-1}'(t)|\ge d\,\big[\phi_k'(t)+\phi_{k-1}'(t)\big]\quad\forall t$$
- **Theorem 3.3** (p. 8–9): with ε̃ = ε^{1/3}, supp ψ̂ ⊂ [1 − Δ, 1 + Δ], Δ < d/(1 + d), and
  $$\mathcal R_\psi=\sqrt{2\pi}\int\hat\psi(\zeta)\,\zeta^{-1}\,\mathrm d\zeta,\qquad S_{f,\tilde\epsilon}(b,\omega)=\int_{A_{\tilde\epsilon,f}(b)}W_f(a,b)\,\delta\big(\omega-\omega_f(a,b)\big)\,a^{-3/2}\,\mathrm da,\qquad A_{\tilde\epsilon,f}(b)=\{a>0:|W_f(a,b)|>\tilde\epsilon\},$$
  for ε small enough:
  $$|W_f(a,b)|>\tilde\epsilon\Rightarrow(a,b)\in Z_k=\{|a\phi_k'(b)-1|<\Delta\}\text{ for some }k;\qquad|\omega_f(a,b)-\phi_k'(b)|\le\tilde\epsilon\text{ on }Z_k;$$
  $$\Big|\mathcal R_\psi^{-1}\int_{|\omega-\phi_k'(b)|<\tilde\epsilon}S_{f,\tilde\epsilon}(b,\omega)\,\mathrm d\omega-A_k(b)\,e^{i\phi_k(b)}\Big|\le C\tilde\epsilon\quad\forall b$$
- **Estimate 3.5** (p. 10), with I_n = ∫|u|ⁿ|ψ(u)|du:
  $$\Big|W_f(a,b)-\sqrt{2\pi}\sum_kA_k(b)e^{i\phi_k(b)}\sqrt a\,\hat\psi\big(a\phi_k'(b)\big)\Big|\le\epsilon\,a^{3/2}\,\Gamma_1,$$
  $$\Gamma_1=I_1\sum_k|\phi_k'(b)|+\tfrac12I_2\,a\sum_k\big[M_k''+|A_k(b)||\phi_k'(b)|\big]+\tfrac16I_3\,a^2\sum_kM_k''|A_k(b)|$$
  Estimate 3.7 (p. 11) bounds −i∂_bW_f against √(2π)A_k e^{iφ_k}√a φ′_k ψ̂(aφ′_k) by εa^{1/2}Γ₂, where Γ₂ is Γ₁ with I′_n = ∫|u|ⁿ|ψ′(u)|du.
- **Estimate 3.8** (p. 12): |ω_f(a, b) − φ′_k(b)| ≤ √a(Γ₂ + aΓ₁φ′_k(b)) ε^{2/3}.
- **Conditions on ε** (p. 11–13):
  $$(3.1)\ \epsilon<a^{-9/4}\Gamma_1^{-3/2};\qquad(3.2)\ \epsilon\le a^{-3/2}\big[\Gamma_2+a\phi_k'(b)\Gamma_1\big]^{-3};\qquad(3.4)\ \epsilon\le\tfrac18d^3\big[\phi_1'(b)+\phi_2'(b)\big]^3$$
  (3.1) gives εa^{3/2}Γ₁ < ε̃; (3.2) gives eq. 3.3, |ω_f − φ′_k| ≤ ε̃; (3.4) gives eq. 3.5, d[φ′_k + φ′_ℓ] > 2ε̃. (The algebra of each checks.)
- **Lemma 3.6 contradiction** (p. 11): two components in one zone would need Δ ≥ d(1 − Δ), i.e. Δ ≥ d/(1 + d).
- **Variational form** (eq. 4.2–4.6, p. 15–16). Locally, F(t, ω) = Σ_i A_i(T) cos[ωt + ϕ_i(T)] δ(ω − ω_i(T)) with ϕ_i = φ_i − ω_iT. Its complex version satisfies ∂_tF̃ = iωF̃ (eq. 4.5) up to O(A′_i, φ″_i). Minimise
  $$\int\Big|\mathfrak{Re}\Big[\int F(t,\omega)\,\mathrm d\omega\Big]-s(t)\Big|^2\mathrm dt+\mu\iint|\partial_tF(t,\omega)-i\omega F(t,\omega)|^2\,\mathrm dt\,\mathrm d\omega$$
  optionally plus γ∬|F|² (L² constraint) or λ∫[∫|F|dω]² dt (sparsity in ω). The SST of s ∈ A_{ε,d} is claimed close to the minimiser; the proof is omitted (p. 16).
- **Inverse CWT** (eq. 5.1–5.2, p. 19):
  $$f(t)=C_\psi\int_{-\infty}^{\infty}\!\!\int_0^\infty W_f(a,b)\,a^{-5/2}\,\psi\Big(\frac{t-b}{a}\Big)\,\mathrm da\,\mathrm db,\qquad f(t)=C'_\psi\int_0^\infty W_f(a,t)\,a^{-3/2}\,\mathrm da=C'_\psi\,\mathfrak{Re}\Big[\int_0^\infty T_f(t,\omega)\,\mathrm d\omega\Big]$$
- **SNR** (p. 16): SNR[dB] = 10 log₁₀(Var f/σ²). (The values check for a unit cosine: 10 log₁₀(0.5) = −3.01 dB and 10 log₁₀(0.5/9) = −12.55 dB.)

> Points to check against the PDF before relying on them:
> - **Fig. 1 caption (p. 2)** is garbled: it reads "ω(t) = 20 for 0 ≤ (t − 10)² ≤ 5π/2" and "ω(t) = 4t² + 10". From s₂, the instantaneous frequency should be 4(t − 10)² + 10 for 2π ≤ t ≤ 4π (minimum 10 at t = 10, as the plotted curve shows), and 20 for 0 ≤ t ≤ 5π/2.
> - **Conjugation:** eq. 2.1 uses conj(ψ) and conj(ψ̂); Section 3 (Estimates 3.5–3.9) writes ψ and ψ̂ without the bar, and R_ψ is printed without one. This is harmless for the argument, but check before coding constants.
> - **Eq. 2.12** prints a′(t) ≪ 1, but the next page uses a′ ≪ φ′ (p. 8).
> - **Threshold:** the theorem and Estimate 3.9 use |W| > ε̃, but Estimate 3.8 uses W_f(a, b) ≥ ε̃. Estimate 3.9 and its proof also write S_{f,σ} for S_{f,ε̃}.
> - **Crossing-example SNR:** a nominal Var f = 1 with 0.5X gives 6.02 dB, not the 6.45 dB printed (p. 17–18). The authors probably used the sample variance of the finite record.
> - **ECG (p. 21):** the text parametrises the ridge for t ∈ [0, 80 s], but Fig. 13 shows 300–400 s.
> - **Fig. 11 caption (p. 20)** calls the sEMG peaks "R peaks", which is ECG terminology.
> - **Real or complex ω_f:** the paper never says whether ω_f(a, b) is used as complex or via its real part when binning.

## Data tables
Numbers worth reusing (all from the PDF):

| Quantity | Value | Page |
|---|---|---|
| IF error bound inside a zone | ε̃ = ε^{1/3} | 9, 12 |
| Wavelet support condition | supp ψ̂ ⊂ [1 − Δ, 1 + Δ], Δ < d/(1 + d) | 9, 11 |
| Separation condition | φ′_k − φ′_{k−1} ≥ d(φ′_k + φ′_{k−1}) | 8 |
| Gap vs error | d(φ′₁ + φ′₂) ≥ 2ε̃ (from eq. 3.4) | 13 |
| Chirp SNRs tested | −3.00 dB (σ = 1), −12.55 dB (σ = 3) | 16–17, 19 |
| Crossing-signal SNR | 6.45 dB (σ = 0.5) | 17–18 |
| Scale bins per octave | 32 (sEMG), 128 (ECG) | 20–21 |
| sEMG record | 608 s, 500 Hz | 19 |
| ECG record | 600 s, 1000 Hz, 12 bit over ±10 mV; ridge near 1.2 Hz | 20–21 |

## Figures worth remembering
- **Fig. 1 (p. 2):** one two-component signal under a wide and a narrow windowed Fourier transform and under Morlet and Haar CWTs. The same frequency path is blurred differently by each choice. This is the uncertainty trade-off made visible.
- **Fig. 2 (p. 3):** Wigner–Ville interference and its removal by smoothing (pseudo-WV), which brings the blur back.
- **Fig. 3 (p. 3):** non-sinusoidal single-component waves that standard TF methods spread over many frequencies.
- **Fig. 4 (p. 4):** the non-uniqueness example (one AM tone or three tones).
- **Fig. 5 (p. 6):** sin 8t: a smeared CWT band versus a single SST line at 8.
- **Fig. 6 (p. 16):** SST of the toy signal. Sharp lines, a spurious low-frequency line from the trend, and some smearing where s₁ stops and s₂ starts.
- **Fig. 7 and 10 (p. 17, 19):** the chirp at 0, −3 and −12.55 dB: CWT, SST and the extracted instantaneous frequency against the true 8 + 2t.
- **Fig. 8–9 (p. 17–18):** crossing components. SST, the selected zones, the SST reconstructions against the truth, and EMD/EEMD candidates. Errors concentrate at the crossing.
- **Fig. 11 (p. 20):** sEMG drift removal by cutting the low-frequency SST region.
- **Fig. 13 (p. 21):** SST ridge of an ECG near 1.2 Hz against the inverse RR intervals.

## Notation
- s(t), f(t): signal. s_k, f_k: components. A_k(t): amplitude. φ_k(t): phase. φ′_k = ω_k: instantaneous frequency (rad per unit time). M″_k = sup|φ″_k|.
- ψ: mother wavelet. ψ̂: its Fourier transform, analytic (zero for ξ < 0), and in Section 3 supported in [1 − Δ, 1 + Δ]. a: scale. b: time shift. W_s(a, b): CWT.
- ω(a, b), ω_f(a, b): candidate instantaneous frequency from the phase derivative of W. T_s, 𝒯_s, S_{f,ε̃}: synchrosqueezed transform (binned, continuous, thresholded).
- C_ψ, C′_ψ, R_ψ: wavelet-dependent reconstruction constants.
- ε: slow-modulation accuracy of an IMT component. ε̃ = ε^{1/3}: threshold on |W| and bound on the frequency error. d: relative separation of neighbouring frequencies. Δ: half-width of supp ψ̂.
- Z_k = {|aφ′_k(b) − 1| < Δ}: scale–time zone of component k. Γ₁, Γ₂: error constants. I_n, I′_n: moments of |ψ| and |ψ′|.
- H: Hilbert transform. X(t): unit-variance white noise.
- IMT: intrinsic-mode-type function. IMF: intrinsic mode function (EMD). EEMD: ensemble EMD. SST: synchrosqueezed transform (not the paper's abbreviation).

## Relevance to this project
This is the rigorous counterpart to [Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md). It states the conditions under which several AM–FM components' instantaneous frequencies and amplitudes can be recovered, and proves that a wavelet-based method meets them. It belongs in the `time-frequency-methods` thread and bears directly on the SPOD → reconstruction → Hilbert POD workflow in CLAUDE.md.

- **The Hilbert step in our pipeline, read through this theorem:**
  - Synchrosqueezing is a bank of analytic band-pass filters (the wavelet at each scale), each followed by the analytic-signal instantaneous frequency (eq. 2.11, 2.14), with the energy reassigned to that frequency. Our pipeline does the same with one hand-picked band: SPOD reconstruction is the band-pass and HPOD gives the analytic signal and dφ/dt ([Nekkanti 2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md), [Raiola 2025](raiola-2025-hilbert-pod.md)). *(My inference.)*
  - So Theorem 3.3 gives sufficient conditions for that step to be trustworthy:
    - at most one component inside the reconstruction band at any instant (Lemma 3.6);
    - competing tones separated by a relative gap larger than the band's relative half-width (Δ < d/(1 + d));
    - amplitude and frequency changing slowly over the band's impulse-response length (the ε conditions through Γ₁ and Γ₂).
  - Under these conditions the instantaneous-frequency error is ε^{1/3}, set by how slowly the signal varies, not by the bandwidth.
  - The HPOD temporal coefficient ψ_j(t) is already complex, like the paper's IMT f = Ae^{iφ}. Definition 3.1 therefore gives a checkable diagnostic: estimate |A′|/φ′ and |φ″|/φ′ along ψ_j(t), and look for a second ridge. *(Suggestion.)*
- **Close tones in the lab's resonances** (worked numbers, my inference, using the theorem's sufficient condition):
  - *A1/A2, about 10% apart:* d ≈ 0.1/2.1 ≈ 0.048, so Δ < 0.045. A wavelet or reconstruction band of that relative half-width lasts of order 1/(2Δ)–1/Δ ≈ 11–22 periods.
  - *Twin-jet SS/SA, 0.3% apart ([Wong 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 1):* d ≈ 0.0015, so roughly 330–670 periods. This matches Wong's c = 600-cycle Morlet (p. 7–8).
  - *Default Morlet* (relative bandwidth about 17%, per the [Torrence 1998](torrence-1998-practical-guide-wavelet-analysis.md) note): it would need components about 50% apart under this condition. So synchrosqueezing a default Morlet CWT will not separate A1 from A2 any better than the CWT does. It only sharpens each ridge once the ridges are separated. Use a high-ω₀ Morlet or a bump wavelet, as [Jordan 2018](jordan-2018-jet-flap-interaction-tones.md) and [Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md) did.
- **Switching versus coexistence:**
  - SST keeps time at b and reassigns only frequency (p. 6). A switch is therefore still localised only to about the wavelet duration at that scale, just as for n_fft in [Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) or N_f in [Sieber 2016](sieber-2016-spectral-proper-orthogonal-decomposition.md).
  - Its gain for the lab is in the frequency direction. Within a dwell, the frequency of each loop is pinned far more precisely than the wavelet bandwidth, and coexisting, well-separated tones show as two sharp ridges rather than two blurred bands.
  - The crossing example (Fig. 9, p. 18) shows what happens when tones come within one passband: both reconstructions fail locally, as Huang's close-tone case did (Huang 1998, p. 45–47).
  - SST is a candidate for the topic page's open question on how fast a switch can be resolved. It should be benchmarked alongside STFT, CWT and HPOD, as already proposed in [the research question](../Research_Questions/hpod-instantaneous-frequency-uncertainty.md).
- **Which data:** time-resolved single series only: microphones, time-resolved schlieren pixels, or (better) POD/HPOD/SPOD temporal coefficients, which add spatial filtering and SNR (Wong fed a POD coefficient to the CWT, p. 9). It cannot be used on non-time-resolved PIV; for that, see HPOD_x ([Raiola 2025](raiola-2025-hilbert-pod.md)) and POD pairs.
- **Harmonics and non-uniqueness:** eq. 1.3 (p. 4) is the formal version of the harmonics-versus-intrawave-modulation question on the topic page. Whether a signal is one modulated component or several tones depends on whether the analysing bandwidth is wider than the sideband spacing γ *(my inference)*. Huang's intrawave reading and the bicoherence/BMD harmonic reading are both admissible decompositions. The paper calls the choice context-dependent (p. 4).
- **Modelling side:** none. This is a signal-analysis method with a proof. It contains no flow model, stability analysis or simulation.
- **Follow-up candidates for `/add-paper`:**
  - Auger & Flandrin 1995, reassignment method (IEEE TSP 43; ref. [1]).
  - Rilling & Flandrin 2008, *One or two frequencies? The EMD answers* (IEEE TSP 56; ref. [16]). It quantifies EMD's two-tone resolution, the counterpart of this paper's separation condition.
  - Huang et al. 2009, *On instantaneous frequency* (Adv. Adapt. Data Anal. 1; ref. [13]).
  - Wu & Huang 2009, EEMD (ref. [18]).
  - Later SST papers on noise robustness and on choosing the wavelet bandwidth, if a numerical benchmark is pursued (not cited here).
