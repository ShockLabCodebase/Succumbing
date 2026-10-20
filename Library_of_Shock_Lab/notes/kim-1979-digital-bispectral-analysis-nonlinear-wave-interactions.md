---
key: "kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions"
title: "Digital Bispectral Analysis and Its Applications to Nonlinear Wave Interactions"
authors: ["Kim, Young C.", "Powers, Edward J."]
year: 1979
type: "article"
venue: "IEEE Trans. Plasma Sci. PS-7(2), 120–131"
bib: {"journal": "IEEE Transactions on Plasma Science", "volume": "7", "number": "2", "pages": "120--131"}
doi: "10.1109/TPS.1979.4317207"
arxiv: ""
pdf: "modal-decomposition/Kim-Powers_1979_Digital-Bispectral-Analysis-And-Its-Applications-To-Nonlinear-Wave-Interactions.pdf"
version: "published"
unverified: ["DOI from the PDF metadata, not printed on the paper"]
group: false
facility: "RF-glow discharge plasma device, UT Austin"
data: ["synthetic", "field-data"]
methods: ["bispectrum", "PSD", "coherence"]
flow: ["generic"]
phenomena: ["triadic-interaction"]
params: {}
topics: ["modal-decomposition"]
related: ["schmidt-2020-bispectral-mode-decomposition", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "mancinelli-2021-complex-valued-resonance-model-screech", "stavropoulos-2026-jet-edge-interaction", "farghadan-2026-wave-interactions-screeching-jet", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "gee-2012-reusable-srm-noise-spectral-statistical", "raman-1998-supersonic-jet-screech-review"]
cites: []
summary: "Origin of the bicoherence: bispectrum as third-order cumulant spectrum; b² = fraction of power at f_k + f_l from quadratic coupling; coupling coefficient; var(b̂) ≤ 1/M; plasma harmonics"
---
# Digital Bispectral Analysis and Its Applications to Nonlinear Wave Interactions

- **Authors:** Young C. Kim and Edward J. Powers (Department of Electrical Engineering and Electronics Research Center, The University of Texas at Austin; p. 120)
- **Source:** IEEE Transactions on Plasma Science PS-7(2), 120–131, June 1979. doi:10.1109/TPS.1979.4317207 (DOI from the PDF metadata; the paper prints only the code 0018-9480/79/0600-0120). Received 6 Sep 1978, revised 23 Mar 1979 (p. 120). Funded by the DoD Joint Services Electronics Program (AFOSR contract F49620-77-C-0101) and the Texas Atomic Energy Research Foundation (p. 120).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Kim-Powers_1979_Digital-Bispectral-Analysis-And-Its-Applications-To-Nonlinear-Wave-Interactions.pdf` (index key `modal-decomposition/Kim-Powers_1979_Digital-Bispectral-Analysis-And-Its-Applications-To-Nonlinear-Wave-Interactions.pdf`, 12 pp.). IEEE Xplore download, scanned with a text layer.
- **Page refs:** printed journal pages, **PDF page n = journal page 119 + n** (PDF p. 1 = p. 120). Journal p. 131 (PDF p. 12) holds the reference list and the first page of the next article (Robertson et al., neutral atom spectrometers), which is not part of this paper.
- **Tags:** bispectrum, bicoherence, squared bicoherence as fraction of power, cumulants and cumulant spectra, higher-order spectra, quadratic phase coupling, three-wave coupling, sum and difference interactions, harmonic generation, coupling coefficient, least-squares (quadratic regression) estimation, estimator bias and variance, Welch-type ensemble averaging, Hanning window, symmetry region of the bispectrum, synthetic test signals, plasma fluctuations, drift waves, ion acoustic waves, Langmuir probes, foundational method paper

## Summary
This is the standard reference for the **bicoherence** used across experimental fluid mechanics. Starting from cumulants and cumulant spectra, the authors define the power spectrum and bispectrum as the second- and third-order cumulant spectra, estimated directly as ensemble averages of products of FFT amplitudes, B(k, l) = E[X_k X_l X*_{k+l}] (p. 121–122). They model the wave at the sum frequency as a quadratic regression on the product of the two primary waves, X_m = A_{k,l} X_k X_l + ε (eq. 17–18). The least-squares fit then gives (i) a normalised bispectrum, the **bicoherence** b(k, l), bounded in [0, 1], which is the correlation coefficient of that regression; (ii) the result that **b² equals the fraction of power at ω_m due to quadratic coupling** with ω_k and ω_l; and (iii) a least-squares estimate of the coupling coefficient A_{k,l} = B*/E[|X_kX_l|²] (eq. 19–22, p. 123). They give a practical digital recipe (record segmentation, mean removal, Hanning window, FFT, average over M records; p. 124), the non-redundant region of the bispectral plane (Fig. 1), and the estimator statistics: unbiased, var(B̂) ≈ P_kP_lP_{k+l}(1 − b²)/M and var(b̂) ≈ (1 − b²)/M ≤ 1/M (eq. 27–31, App. II). Synthetic signals confirm b² ≈ 1 for phase-coupled waves, 0.01 for independent ones, and 0.48/0.99 for half and fully coupled components (p. 125–126). In an RF-glow discharge plasma, bicoherence identifies coupled drift waves (detail deferred to Kim & Powers 1978) and gives ion-acoustic harmonic coupling coefficients that agree with a fluid model (Table I, p. 128).

## Key findings
- **Why higher-order spectra are needed** (p. 120–122, 125): the power spectrum is independent of phase, so it cannot tell whether a peak at f_k + f_l is generated by the two primary waves or is an independently excited mode. Figs. 2 and 3 have **identical power spectra** but b²(b, c) = 1.0 vs 0.01 (p. 125).
- **Cumulant properties used** (p. 121): joint cumulants of order n ≥ 3 vanish for Gaussian variables, and any cumulant vanishes when the variables split into statistically independent groups (moments do not). So cumulant spectra above second order are zero for a sum of independent random oscillators, and become nonzero only when (1) waves exist at frequencies summing to zero **and** (2) they are statistically dependent, e.g. through a nonlinearity (p. 122).
- **Stationarity puts all spectral mass on the principal manifold** ω₁ + … + ω_n = 0; the cumulant spectrum can be estimated from cumulant averages of Fourier amplitudes, avoiding an (n − 1)-dimensional Fourier integral (eq. 9, p. 122; App. I).
- **Bispectrum vanishes for random phases** (p. 122–123): with independent waves, the sum phase θ_k + θ_l − θ_{k+l} is uniform on (−π, π) and averages to zero. With coupled waves the individual phases still vary between realisations, but the combined phase is fixed, so the average survives.
- **Symmetries** (eq. 15–16, p. 123): B(k, l) = B(l, k) = B*(−k, −l) and B(k, l) = B(−k − l, l) = B(k, −k − l), the same symmetries as a three-wave coupling coefficient.
- **Bicoherence as regression goodness of fit** (eq. 19, p. 123): bounded 0 ≤ b ≤ 1 by the Schwarz inequality; b ≈ 1 means the wave at ω_k + ω_l is excited by coupling of ω_k and ω_l; b ≈ 0 suggests spontaneously excited independent modes.
- **b² is a fraction of power** (eq. 20–21, p. 123): writing X_m = X′_m + A_{k,l}X_kX_l with X′_m independent of the product term, b²P(m) = |A_{k,l}|² E[|X_kX_l|²] is the power at ω_m from the coupling, and P(m) = E[|X′_m|²] + |A_{k,l}|² E[|X_kX_l|²].
- **Coupling coefficient by least squares** (eq. 22, p. 123): A_{k,l} = B*(k, l)/E[|X_kX_l|²] minimises E[|ε|²]; the bicoherence sets the confidence in it. The authors stress that the physics is "imbedded" in the coupling coefficient (p. 123).
- **Only region A of the hexagon is needed** (p. 124, Fig. 1): with Nyquist index q = f_N/Δf the bispectrum lives on −q ≤ k, l ≤ q, −q ≤ k + l ≤ q. Symmetry reduces this to region A (sum interactions, 0 ≤ l ≤ q/2, l ≤ k ≤ q − l) and region B (difference interactions); a change of variables maps B onto A, so computing A suffices (p. 124).
- **Estimator statistics** (p. 124–125, App. II):
  - B̂ is unbiased and consistent; var(B̂) ∝ (1/M) P(k)P(l)P(k + l)[1 − b²] (eq. 28). Larger quantities are estimated with larger absolute variance, but a fully coupled triad (b → 1) has vanishing variance.
  - Neglecting the variability of the denominator, var(b̂) ≈ (1/M)[1 − b²] (eq. 31), so var(b̂) ≤ 1/M everywhere. Consistent "apart from the constant" with Hinich & Clay (1968) (p. 125).
  - The approximation E[|X_k|²|X_l|²|X_{k+l}|²] ≈ P(k)P(l)P(k + l) (eq. A9) is exact for coherent waves (only their common random phase varies) and approximately true for incoherent ones treated as independent (p. 130).
  - Practical consequence: incoherent (noise) regions are where the estimator is least stable; more realisations M are the only cure (p. 125).
- **Synthetic tests** (p. 125–126, Fig. 2–4; 64 records of 128 points, −20 dB white Gaussian noise, f_b/f_N = 0.220, f_c/f_N = 0.375, f_d = f_b + f_c):
  - θ_d = θ_b + θ_c: b̂²(b, c) = 1.0 (Fig. 2).
  - θ_d random: b̂²(b, c) = 0.01 (Fig. 3).
  - x(t) = cos(ω_b t + θ_b) + cos(ω_c t + θ_c) + ½cos(ω_d t + θ_d) + cos(ω_b t + θ_b)cos(ω_c t + θ_c) + n(t), all phases independent: the product term puts ½cos at f_b + f_c and at f_a = f_c − f_b. Half the power at f_d is coupled, all the power at f_a is coupled. Measured b̂²(b, c) = 0.48 (sum) and b̂²(−b, c) = 0.99 (difference); the small shortfalls are blamed on noise (Fig. 4, p. 126). (f_a/f_N = 0.155, my arithmetic.)
- **Plasma application 1, coupled vs spontaneous modes** (p. 126): bicoherence separates nonlinearly coupled drift waves from independently excited ones during the transition to turbulence; details are only in Kim & Powers (1978, Phys. Fluids 21, 1452).
- **Plasma application 2, ion-acoustic harmonic generation** (p. 127–128):
  - Self-excited wave at f_A = 16 kHz, k_y = 0.63 cm⁻¹, k_z = 0.11 cm⁻¹. Measured phase velocity ω/k_z ≈ 9.1 × 10⁵ cm/s vs C_s = 9.8 × 10⁵ cm/s for H₂⁺ at T_e = 2 eV; with k_z²/k_y² ≫ r_H²/r_n² this identifies an ion acoustic wave (eq. 43b). Frequencies insensitive to magnetic field (p. 127–128).
  - Cross-spectrum between probes Δθ = 45° apart shows harmonics up to the third; the phase spectrum θ(ω) = mΔθ gives azimuthal mode numbers m = 1, 2, 3 (p. 128).
  - Bicoherence (Fig. 5) peaks at f_A + f_A = 2f_A and f_A + 2f_A = 3f_A, i.e. the harmonics are phase-coupled to the fundamental (p. 128).
  - Coupling coefficient |A| in (n₂/n₀) = A(n₁/n₀)², from eq. 22 vs theory eq. 41: 0.48 vs 0.46 (1140 G), 0.45 vs 0.46 (1425 G), 0.58 vs 0.45 (1710 G) (Table I, p. 128). The authors call this good agreement; the 1710 G case differs by about 29 % (my arithmetic).
- **Conclusion** (p. 128): the bispectrum's magnitude depends strongly on the amplitudes involved, which can create spurious peaks, so a bounded normalised form is needed. Bispectral tools suit quadratically nonlinear systems; cubic nonlinearity needs the trispectrum.

## Setup / method

### Digital bispectral procedure (p. 124)
1. Form M records x^{(i)}(l), l = 1…N, i = 1…M, sampled at Δt; record length T = NΔt. Requires an antialiasing filter if content exists above f_N = 1/(2Δt), and Δf = 1/T ≪ |f_k − f_l| so that the interacting waves are resolved ("careful planning must be carried out before sampling").
2. Remove the mean of each record.
3. Apply a data window to reduce leakage. They use the **Hanning** window ("easy to implement", small sidelobes); window effects deferred to Harris (1978).
4. FFT each record (eq. 25), k = 1…N/2.
5. Average the triple product over the M records (eq. 26). The arithmetic mean is the unbiased minimum-variance estimator; variance falls as 1/M. They stress that they estimate the **discrete bispectrum**, not a continuous bispectral density.
6. Bicoherence from eq. 29 using the same M records.

No overlap between records is mentioned; records appear to be contiguous and non-overlapping (not stated explicitly). No frequency-domain smoothing is used; averaging is over realisations only.

**Data dependence:** every step needs **time-resolved** samples within each record (an FFT of contiguous, uniformly spaced samples). Records need not be contiguous with each other, so the method works with many short independent captures (as in the plasma experiment) as long as each capture is time-resolved.

### Synthetic test signals (p. 125–126)
| Case | Records M | Points N | Frequencies (f/f_N) | Phases | Result |
|---|---|---|---|---|---|
| Fig. 2 | 64 | 128 | b 0.220, c 0.375, d = b + c | θ_d = θ_b + θ_c | b̂²(b, c) = 1.0 |
| Fig. 3 | 64 | 128 | same | all random | b̂²(b, c) = 0.01 |
| Fig. 4 | (64, implied) | (128, implied) | b, c, d = b + c, a = c − b | all random, product term added | b̂²(b, c) = 0.48, b̂²(−b, c) = 0.99 |

Noise: small-amplitude white Gaussian noise, −20 dB.

### Plasma experiment (p. 126–128)
- **Device:** RF-glow discharge in a glass vessel, radius 3.5 cm, length 2 m; 29.3 MHz RF field parallel to the axis; solenoid of radius 30 cm giving a uniform static field of 0–2 kG (p. 126).
- **Conditions:** 1–3 mtorr, 1–2 kG, density ~10¹⁰ cm⁻³, T_e 2–4 eV (p. 127).
- **Diagnostics:** three double Langmuir probes in ion saturation (density fluctuations), at R_p = 1.6 cm, separated by Δθ = 45° in azimuth and ΔZ = 16.7 cm axially (p. 127).
- **Acquisition:** waveform recorders, 2048 8-bit samples per capture at 10⁻¹ to 10⁸ samples/s; transfer via microcomputer to magnetic tape, analysed in Fortran on a CDC 6600 (p. 126).
- **Spectral parameters** (footnotes, p. 128):
  - Cross-power spectrum: M = 8 records of 256 8-bit words, 5 µs per sample (200 kHz, so Δf ≈ 781 Hz and f_N = 100 kHz, my arithmetic). Normalised standard error ε ≈ [(1/M)(1 − γ²_xy)]^{1/2} as printed: about 11 % for the harmonics (γ² ≈ 0.9) and 30 % for the background (γ² ≈ 0.3). Both values check against the printed formula.
  - Bicoherence: M = 32 records of 64 words, so var(b̂) ≲ 0.03 from eq. 31 (1/32 ≈ 0.031). Sampling rate for these records is not stated; if it is also 5 µs, Δf ≈ 3.1 kHz and f_A = 16 kHz falls near bin 5 (my arithmetic).
  - Both 8 × 256 and 32 × 64 equal 2048, the recorder capacity, so each spectrum may come from a single 2048-sample capture. This is my inference; the paper does not say so.

### Modelling side: fluid theory for harmonic coupling (p. 127)
- **Assumptions:** low-frequency electrostatic waves (ω ≪ Ω_i) in a weakly ionised, non-isothermal plasma (T_e ≫ T_i, with T_i = 0), strong field B = Bẑ with Ω_i ≫ ν_i; waves propagate in the y–z plane with long wavelength (kλ_De ≪ 1); adiabatic Boltzmann electrons; hydrodynamic ions with ion–neutral collisions.
- **Equations:** ion momentum and continuity (eq. 32–33), Fourier-series expansion in harmonics Θ_l = k_l·x − ω_l t with ω_l = lω and dispersionless k_l = lk (eq. 34). Contributions to harmonic l from higher harmonics are neglected, since energy flows from the large fundamental to the harmonics (p. 127).
- **Nonlinearities:** the ion continuity convective term and the logarithmic Boltzmann relation through quasi-neutrality, Φ = ln(1 + ñ/n₀) expanded to cubic order (eq. 37–38). The authors warn that the linearisation Φ ≈ ñ/n₀ would bias harmonic amplitudes at larger fluctuation levels (p. 127).
- **Results:** the fundamental gives the dispersion relation ω_r² − ω*ω_r − k_z²C_s² = 0 (eq. 42), whose limits are drift waves (k_z²/k_y² ≪ r_H²/r_n², ω ≈ ω*) or ion acoustic waves (k_z²/k_y² ≫ r_H²/r_n², ω ≈ k_zC_s) (eq. 43). The second harmonic is η₂ = V₂η₁² with a dimensionless coupling coefficient V₂ (eq. 40–41), compared with the measured A in Table I.
- **How well it matches:** 2 of 3 field strengths agree within about 4 %; the third (1710 G) is 0.58 vs 0.45 (Table I). No error bars are given for |A|, though the bicoherence variance bound (≲ 0.03) is quoted.

## Key equations
Notation: X_k = Fourier amplitude at ω_k = 2πk/T, X_{−k} = X_k*, E[·] expectation, M records.

- **Joint cumulants from moments** (eq. 4, p. 121), zero-mean case: k₁₂ = m₁₂, k₁₂₃ = m₁₂₃; in general $k_{123}=m_{123}-m_{12}m_3-m_{13}m_2-m_{23}m_1+2m_1m_2m_3$.
- **Cumulant average of Fourier amplitudes** (eq. 9, p. 122): $C[X_1X_2\cdots X_n]=F_n(\omega_1,\dots,\omega_{n-1})\,\Delta\omega^{\,n-1}\,\Delta\!\left(\sum_{l=1}^{n}\omega_l\right)$, with Δ(x) = 1 if x = 0 and 0 otherwise (eq. 10).
- **Power spectrum and bispectrum** (eq. 11–14, p. 122):
  $$P(k)=E[X_kX_k^*],\qquad B(k,l)=E[X_kX_lX_{k+l}^*],\qquad E[x^2]=\sum_k P(k),\qquad E[x^3]=\sum_{k,l}B(k,l)$$
- **Symmetries** (eq. 15–16, p. 123): $B(k,l)=B(l,k)=B^*(-k,-l)$, $B(k,l)=B(-k-l,l)=B(k,-k-l)$.
- **Quadratic coupling model** (eq. 17–18, p. 123): $X_m=\sum_{k+l=m}A_{k,l}X_kX_l+\epsilon$; single triad $X_m=A_{k,l}X_kX_l$.
- **Squared bicoherence** (eq. 19, p. 123):
  $$b^2(k,l)=\frac{|B(k,l)|^2}{E[|X_kX_l|^2]\,E[|X_m|^2]},\qquad m=k+l,\qquad 0\le b\le1$$
- **Fraction of power** (eq. 20–21, p. 123): $b^2(k,l)P(m)=|A_{k,l}|^2E[|X_kX_l|^2]$, $P(m)=E[|X'_m|^2]+|A_{k,l}|^2E[|X_kX_l|^2]$.
- **Coupling coefficient** (eq. 22, p. 123): $A_{k,l}=\dfrac{B^*(k,l)}{E[|X_kX_l|^2]}$.
- **Computation region** (eq. 23–24, p. 124): hexagon $-q\le k,l\le q$, $-q\le k+l\le q$, $q=f_N/\Delta f$; A: $0\le l\le q/2,\ l\le k\le q-l$; B: $-q\le l\le 0,\ l\le k\le q$.
- **FFT and estimator** (eq. 25–26, p. 124):
  $$X_k^{(i)}=\frac1N\sum_{l=1}^{N}x^{(i)}(l)\,e^{-i2\pi kl/N},\qquad \hat B(k,l)=\frac1M\sum_{i=1}^{M}X_k^{(i)}X_l^{(i)}X_{k+l}^{(i)*}$$
- **Estimator statistics** (eq. 27–28, p. 124): $E[\hat B]=B$; $\operatorname{var}(\hat B)\approx\frac1M P(k)P(l)P(k+l)[1-b^2(k,l)]$.
- **Bicoherence estimator** (eq. 29, p. 124):
  $$\hat b(k,l)=\frac{\left|\frac1M\sum_i X_k^{(i)}X_l^{(i)}X_{k+l}^{(i)*}\right|}{\left[\frac1M\sum_i|X_k^{(i)}X_l^{(i)}|^2\right]^{1/2}\left[\frac1M\sum_i|X_{k+l}^{(i)}|^2\right]^{1/2}}$$
- **Bicoherence variance** (eq. 30–31, p. 125): $\operatorname{var}(\hat b)\approx\frac1M[1-b^2(k,l)]\le\frac1M$.
- **Ion fluid model** (eq. 35–36, 39–41, p. 127):
  $$\omega\eta_1=\Big(\omega_*+\frac{\omega_s^2}{\omega+i\nu_i}\Big)\Phi_1,\qquad \omega\eta_2=\Big(\omega_*+\frac{2\omega_s^2}{2\omega+i\nu_i}\Big)\Phi_2+\frac{\omega_s^2}{\omega+i\nu_i}\eta_1\Phi_1+\frac{\omega_s^4}{(2\omega+i\nu_i)(\omega+i\nu_i)^2}\Phi_1^2$$
  $$\Phi=\ln\!\Big(1+\frac{\tilde n}{n_0}\Big)=\frac{\tilde n}{n_0}-\frac12\Big(\frac{\tilde n}{n_0}\Big)^2+\frac13\Big(\frac{\tilde n}{n_0}\Big)^3-\cdots\quad(37)$$
  $$\eta_2=V_2\eta_1^2,\qquad V_2=i\left[\alpha-\frac{k_yr_n^{-1}}{2k_z^2}\Big(\frac{\nu_i}{\Omega_i}\Big)(\alpha+i)(2\alpha+i)+\Big(\frac{\omega_s}{\nu_i}\Big)^2\frac{1}{\alpha+i}\right]$$
  with α = ω/ν_i, r_n⁻¹ = (1/n₀)(dn₀/dx), ω* = −k_y(T_e/m_iΩ_i)(1/n₀)(dn₀/dx), ω_s = k_zC_s, C_s = (T_e/m_i)^{1/2}.
- **Dispersion relation** (eq. 42, p. 127): $\omega_r^2-\omega_*\omega_r-k_z^2C_s^2=0$.
- **Variance of B̂ (App. II)** (eq. A8–A10, p. 130): $\operatorname{var}(\hat B)=\frac1M\{E[|X_k|^2|X_l|^2|X_{k+l}|^2]-|B|^2\}$, with $E[|X_k|^2|X_l|^2|X_{k+l}|^2]\approx P(k)P(l)P(k+l)$.

> Eq. 19–22, 23–31 and 35–36, 41 were checked against page renders (p. 123–125, 127). Eq. 4, 9 and the appendix equations come from garbled text and partial renders; check eq. A3–A5 against PDF p. 129 before reuse. Eq. 36 prints "ωη₂" on the left; 2ωη₂ might be expected for the second harmonic, so check the printed form (p. 127). In §IV.A the paper writes the reduction symmetry as B(k, l) = B(l, k) = B*(−k, l), which conflicts with eq. 15 (B*(−k, −l)); probably a typo (p. 124). The introduction says harmonic generation was studied "at different pressures" (p. 121), but Table I lists three magnetic fields.

## Data tables
**Table I (p. 128): ion-acoustic harmonic coupling coefficient, (n₂/n₀) = A(n₁/n₀)²**

| B (G) | \|A\| from bispectrum (eq. 22) | \|A\| theory (eq. 41) |
|---|---|---|
| 1140 | 0.48 | 0.46 |
| 1425 | 0.45 | 0.46 |
| 1710 | 0.58 | 0.45 |

**Synthetic-signal bicoherences** (p. 125–126): 1.0 (phase-locked triad), 0.01 (random phases), 0.48 (half-coupled sum component), 0.99 (fully coupled difference component).

## Figures worth remembering
- **Fig. 1 (p. 124):** (a) hexagonal support of the discrete bispectrum with sum region A and difference region B; (b) the change of variables that maps B onto A.
- **Fig. 2–3 (p. 125):** identical power spectra with b̂² = 1.0 (phase-locked) vs 0.01 (random phase). The cleanest illustration of why PSDs cannot reveal coupling.
- **Fig. 4 (p. 126):** half-coupled sum tone (b̂² ≈ 0.5) vs fully coupled difference tone (b̂² ≈ 1) from a product term; demonstrates the fraction-of-power reading.
- **Fig. 5 (p. 128):** ion-acoustic wave: cross-amplitude and phase spectra (harmonics m = 1, 2, 3) and the bicoherence surface and contour with peaks at (f_A, f_A) and (f_A, 2f_A). The caption calls the lower panels the "bispectrum", but the axis is b²₁₂.
- **Fig. 6 (p. 129):** integration region for the Appendix I derivation.

## Notation
- X_k: Fourier amplitude at ω_k; P(k): power spectrum; B(k, l): bispectrum; b(k, l): bicoherence; b²: squared bicoherence; A_{k,l}: quadratic coupling coefficient; ε: model error; X′_m: part of X_m independent of the product term.
- M: number of records (realisations); N: points per record; Δt, T = NΔt, Δf = 1/T, f_N = 1/(2Δt); q = f_N/Δf.
- k_{12…n}, m_{12…n}: joint cumulants and moments; F_n: n-th order cumulant spectrum; τ_c: coherence time.
- Plasma: η_l = n_l/n₀ (normalised l-th harmonic density), Φ = eφ/T_e, ω*: drift frequency, ω_s = k_zC_s, C_s: ion sound speed, Ω_i: ion cyclotron frequency, ν_i: ion–neutral collision frequency, r_H = C_s/Ω_i, r_n: density gradient length, V₂: theoretical coupling coefficient, γ²_xy: squared linear coherence.

## Relevance to this project
This is the origin of the bicoherence definition used in the screech and resonance literature in this library, and the point-measurement ancestor of BMD. It contains no fluid-mechanics data and no Shock Lab group data (plasma experiment at UT Austin).

- **Method and data dependence:**
  - Bispectrum and bicoherence **need time-resolved signals** within each record, but the records can be independent captures. That suits microphones, pressure transducers, hot-wires and pixels or SPOD coefficients from high-speed schlieren. It cannot be applied to non-time-resolved PIV snapshots; for PIV, phase relations must come from POD pairs or from a simultaneous time-resolved sensor.
  - **Parameters:** record length sets Δf, which must be much smaller than the separation of the interacting tones (p. 124). The number of records sets the noise floor: var(b̂) ≤ 1/M, so a significance threshold of order a few times 1/√M is needed before calling a peak coupled. The paper's own example (M = 32, var ≲ 0.03) would be a very short record by modern standards. Compare the empirical threshold b > 0.35 from a tone-free baseline in [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md) and the 2048-sample, Hann, 50 % overlap set-up in [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md).
  - **Windowing and leakage:** Hanning window, no overlap. For sharp screech tones, tones that do not sit on bins leak into neighbouring bispectral cells, so peaks should be read over a few bins (as Stavropoulos et al. do).
- **Reading b² as a power fraction:** the fraction-of-power interpretation (eq. 20–21) assumes the quadratic regression direction X_m ← X_kX_l. The statistic shows phase coupling, not causality. In Fig. 4 the normalisation already makes b² depend on which member of the triad is treated as the output: b²(b, c) = 0.48 for the sum output and b²(−b, c) = 0.99 for the difference output of the same three tones, even though the unnormalised B values are related by symmetry. *(My reading.)* This is the same cause/effect asymmetry that BMD builds in explicitly by separating the cross-frequency field from the bispectral mode, which [schmidt-2020-bispectral-mode-decomposition](schmidt-2020-bispectral-mode-decomposition.md) states as B(f_k, f_l) ≠ B*(f_k+l, f_−k) (p. 15 there). Schmidt says the classical *bispectrum* cannot separate sum from difference interactions; that agrees with Kim & Powers' statement that region B maps onto region A. The Kim & Powers *bicoherence*, through its denominator, partly can, but only under the assumed model direction. [raman-1998](raman-1998-supersonic-jet-screech-review.md) records the 1990s view (Walker & Thomas) that only cross-bicoherence from two probes separates sum from difference; Kim & Powers' Fig. 4 shows an auto-bicoherence giving different values for the two readings, although it does not prove which wave generated which.
- **Normalisation used in other notes:**
  - [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md) cross-bicoherence between azimuthal modes uses exactly the Kim & Powers form, b_c² = |B_c|²/(⟨|p̂₀|²⟩⟨|p̂₁p̂₋₁|²⟩), extended to three different signals.
  - [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md), as recorded in that note, uses a single normaliser B_R = mean of |X₁|²|X₂|²|X₃|² and writes the modulus inside the average in B. That differs from Kim & Powers (product of two separate averages, modulus outside the average) and changes the bound and the power-fraction reading. Check that note's eq. 2.2–2.4 against its PDF.
  - The bicoherence-normalised BMD of Yeung & Schmidt (2025), used in [mazharmanesh-2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), normalises the cross-frequency and sum-frequency block matrices to unit Frobenius norm, which is the spatial generalisation of eq. 29: |β| ≤ 1 like b ≤ 1.
  - Schmidt 2020 BMD uses the unnormalised bispectral density (log scales); Kim & Powers' warning that unnormalised bispectra show amplitude-driven "spurious peaks" (p. 128) is the reason the later bicoherence form of BMD was introduced.
- **Screech and resonance uses:**
  - Harmonics of screech or impingement tones: a bicoherence peak at (f_s, f_s) with b² ≈ 1 means the 2f_s tone is a quadratic product, the analogue of the ion-acoustic harmonics in Fig. 5. Huang's alternative view of harmonics as intrawave frequency modulation ([huang-1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md)) describes the same waveform differently.
  - Mean-flow distortion: the difference self-interaction (f_s, −f_s) → 0 sits on the boundary of region B; Kim & Powers remove the mean from each record (step 2), which removes exactly this triad. [mazharmanesh-2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) had to keep the mean to see shock–wavepacket (St_s − 0) triads, so mean removal is a parameter choice, not a default, for shock-containing jets.
  - A1/A2 staging: the weak difference tone St_d reported by [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) is the textbook Fig. 4 situation; b²(−St₁, St₂) at the difference frequency would say what fraction of the St_d power is quadratic.
  - The coupling coefficient A_{k,l} (eq. 22) is an underused output: it gives a measured quadratic transfer that could be compared with model coupling, e.g. the bilinear harmonic-resolvent terms of [farghadan-2026](farghadan-2026-wave-interactions-screeching-jet.md), in the same way the paper compares A with V₂ from fluid theory.
- **Intermittency and the SPOD → reconstruction → Hilbert POD pipeline:** bicoherence is a stationary, block-averaged statistic, so switching tones are smeared and the power-fraction reading becomes an average over states. For intermittent screech, either condition the records on which tone is active (e.g. from SPOD frequency–time coefficients, [nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)) or use time-local phase tools: wavelet bicoherence ([torrence-1998](torrence-1998-practical-guide-wavelet-analysis.md)) or Hilbert POD ([raiola-2025](raiola-2025-hilbert-pod.md)) on reconstructed tones, checking whether θ_{k+l} − θ_k − θ_l stays constant in time. That phase-locking test is the instantaneous version of b ≈ 1. *(Suggestion, not in the paper.)*
- **Modelling side:** the paper's model is a weakly nonlinear two-fluid harmonic expansion with strong assumptions (dispersionless waves, T_i = 0, neglect of feedback from higher harmonics). Its lasting value is the method of comparing a measured A_{k,l} with a theoretical coupling coefficient, which carries over to weakly nonlinear and harmonic-resolvent jet models. The theory itself is plasma-specific and not reusable for jets.
- **Rocket noise link:** E[x³] = Σ B(k, l) (eq. 14), so the bispectrum decomposes skewness by frequency, which is the basis of the bispectral nonlinear-propagation and crackle analyses in the Gee group papers ([gee-2012](gee-2012-reusable-srm-noise-spectral-statistical.md), [reichman-2018](reichman-2018-qm2-srm-far-field-acoustics.md)). Kim & Powers is the usual citation for the estimator used there.
- **Facility:** not a Shock Lab group paper.
- **Related works cited, candidates for `/add-paper`:** Kim & Powers 1978 (Phys. Fluids 21, 1452, drift-wave bicoherence); Hasselmann, Munk & MacDonald 1963 (ocean-wave bispectra); Lii, Rosenblatt & Van Atta 1976 (bispectra in turbulence, JFM 77); Hinich & Clay 1968 (bispectral estimator variance); Brillinger & Rosenblatt 1967 (k-th order spectra); Harris 1978 (windows).
