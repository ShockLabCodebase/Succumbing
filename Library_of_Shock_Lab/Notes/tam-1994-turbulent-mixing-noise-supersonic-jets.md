---
key: "tam-1994-turbulent-mixing-noise-supersonic-jets"
title: "Turbulent Mixing Noise from Supersonic Jets"
authors: ["Tam, Christopher K. W.", "Chen, Ping"]
year: 1994
type: "article"
venue: "AIAA J. 32(9), 1774–1780"
bib: {"journal": "AIAA Journal", "volume": "32", "number": "9", "pages": "1774--1780"}
doi: "10.2514/3.12173"
arxiv: ""
pdf: "jet-noise-mechanisms/Tam-Chen_1994_Turbulent-Mixing-Noise-From-Supersonic-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "Florida State University (Cray Y-MP computation); comparison data from Seiner et al. 1992"
data: ["microphones-far"]
methods: ["LSA-local", "eddy-viscosity", "acoustic-analogy"]
flow: ["round-jet", "supersonic", "ideally-expanded", "heated"]
phenomena: ["mixing-noise", "Mach-wave-radiation", "directivity", "KH-wavepackets", "receptivity"]
params: {"M_j": "2.0", "M_d": "2.0 (C-D nozzle of the data)", "T_0": "500 K (isothermal) and 1114 K; data also at 313 and 755 K", "TR": "≈1.7 and ≈3.8 (my calc, T_∞ ≈ 290 K assumed)", "T_j/T_∞": "≈0.96 and ≈2.1 (my calc)", "St": "0.056–0.40 (directivities)", "R_t": "2000 (u_j b/ν_t; 500–5000 tested)", "b(0)/R_j": "0.04"}
topics: ["jet-noise-mechanisms", "linear-models", "rocket-noise-models"]
related: ["tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1982-shock-associated-noise-cd-nozzles", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "jordan-2013-wave-packets-turbulent-jet-noise", "gudmundsson-2011-instability-wave-models-near-field-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "michalke-1984-survey-jet-instability-theory", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "kellison-2026-falcon-9-noise-two-campaigns", "tam-1984-sound-instability-waves-supersonic-axisymmetric-jets"]
cites: []
summary: "Stochastic instability-wave model of Mach-wave mixing noise: white-noise lip forcing, one fitted constant; Mach 2 directivities at T_0 500/1114 K within ~2.5 dB"
---
# Turbulent Mixing Noise from Supersonic Jets

- **Authors:** Christopher K. W. Tam and Ping Chen, Department of Mathematics, Florida State University, Tallahassee (p. 1774). Supported by NASA Langley grant NAG 1-421; computations on the FSU Cray Y-MP (p. 1780).
- **Source:** AIAA Journal 32(9), September 1994, 1774–1780, doi:10.2514/3.12173 (DOI from the publisher's download stamp in the margin). Presented as AIAA Paper 93-4408 at the 15th AIAA Aeroacoustics Conference, Long Beach, 25–27 Oct 1993. Received 31 Aug 1993, revised and accepted 18 Apr 1994 (p. 1774). A preliminary version of the 500 K results appeared in Tam & Chen, Int. Conf. Noise and Vibration Control, St Petersburg, 1993 (p. 1778–1779, ref. 17). [Tam 1995](tam-1995-supersonic-jet-noise.md) cites this work as "Tam & Chen (1993)".
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/jet-noise-mechanisms/Tam-Chen_1994_Turbulent-Mixing-Noise-From-Supersonic-Jets.pdf` (index key `jet-noise-mechanisms/Tam-Chen_1994_Turbulent-Mixing-Noise-From-Supersonic-Jets.pdf`, 7 pp., publisher's scan with a FineReader OCR layer). Page refs are journal pages; **PDF page = journal page − 1773**. The OCR layer garbles every equation and figure label (and renders "Tam" as "Tarn"), so all equations and figure readings below come from 200–400 dpi page renders.
- **Tags:** supersonic jet mixing noise, large turbulence structures as instability waves, stochastic instability-wave model, white-noise excitation at the nozzle lip, self-similarity, matched asymptotic expansions (Tam & Burton), multiple-scales inner solution, Fourier-transform outer solution, Mach wave radiation, wavenumber spectrum of a wavepacket, stationary phase, azimuthal-mode contributions, eddy (turbulent) viscosity in the compressible Orr–Sommerfeld equations, error-function mean velocity profile, Crocco's relation, heated Mach 2 jet, noise directivity, single calibration constant, large-structure turbulence intensity

## Summary
The paper turns [Tam & Burton's (1984)](tam-1984-sound-instability-waves-supersonic-axisymmetric-jets.md) single-instability-wave solution, which is valid from inside the jet out to the acoustic far field, into a broadband prediction of the dominant (downstream, Mach-wave) part of supersonic jet mixing noise (p. 1775). The large-scale turbulence is written as a linear superposition of instability waves of every frequency ω and azimuthal mode n with random amplitudes. Because the near-lip mixing layer has no intrinsic length or time scale, the waves are assumed to be excited by white noise at the lip: the pressure at the half-velocity point of the exit plane is delta-correlated in azimuth and time, with one unknown "area" D̃ (eq. 9, p. 1776). The far-field spectrum then reduces to a sum over n of the axial wavenumber spectrum of each mode's wavepacket, evaluated at the acoustic wavenumber k_∞ cos θ (eq. 19, p. 1777). The waves are computed from local stability theory with an eddy viscosity (R_t = 2000) on a fitted error-function mean flow, with the non-parallel correction set to zero (p. 1777–1779). With D̃ fitted once per jet, computed directivities of a Mach 2 jet at T_0 = 500 K (isothermal) and 1114 K agree with Seiner et al. (1992) within about 2.5 dB at most Strouhal numbers, although the lowest St at 500 K is too low (p. 1778–1779). Only n = ±1 matters in the isothermal jet, whereas in the hot jet modes up to n = ±5 contribute, which broadens the directivity (p. 1779).

## Key findings
- **Two parts of mixing noise** (Fig. 1, p. 1774). In Seiner et al.'s isothermal Mach 2 jet (T_0 = 500 K), radiation at inlet angles χ < 110° is low-level and almost uniform. The authors attribute it to fine-scale turbulence. The dominant part, at χ > 130°, is the target of the theory and is attributed directly to the large structures, i.e. instability waves. [Tam et al. 1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) later quote χ > 125° as the large-structure region "following Tam & Chen"; the threshold printed here is 130°.
  - Read from Fig. 1: the peak levels at the four St are 109.7–111.2 dB at χ ≈ 136–152°; upstream of χ ≈ 105° the levels are 84–89 dB.
- **White-noise lip excitation fixes all relative amplitudes** (p. 1776). The self-similar near-lip layer has no intrinsic scales, so the lip excitation is taken as white. This gives ⟨a_n(ω)a_n′(ω′)⟩ = (D̃/2)δ(ω + ω′)δ_{n,−n′} (eq. 12). Waves of different frequency or azimuthal order are therefore uncorrelated, and each normalised wave has the same pressure amplitude at the half-velocity point of the exit. Tam had used the same reasoning for BBSAN (Tam 1987, 1990) but there replaced the white spectrum by a simpler self-similar one (p. 1776).
- **Far-field spectrum = wavenumber spectrum of the wavepacket at the sonic wavenumber** (eqs. 18–19, p. 1777). After a stationary-phase evaluation, the spectrum at polar angle θ is proportional to Σ_n |ĝ_n(ρ_∞^{1/2} M_j ω cos θ, ω)|² / |p̂_n(r_{1/2}, 0, ω)|², where ρ_∞^{1/2}M_jω = ω/a_∞ in the paper's units (my reading of the scaling). So each direction picks out one axial wavenumber of each mode's growing-and-decaying wavepacket. This is the acoustic-matching result later written for line-source wavepackets by [Cavalieri et al. 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md).
- **Isothermal jet (T_0 = 500 K), D̃ = 4.35 × 10⁻¹⁰** (Fig. 5, p. 1778–1779). Agreement is good at St 0.12, 0.20 and 0.40, within 2.5 dB except at the smallest angles to the jet axis at St 0.2. At St 0.067 the computed level is too low, "for unknown reason" (p. 1779). My readings of Fig. 5:
  - St 0.067: computed ≈ 101 dB near χ = 155–160° against ≈ 110 dB measured, about 9 dB low.
  - St 0.12: computed peak ≈ 110 dB at χ ≈ 150° against ≈ 111 dB measured at ≈ 148°.
  - St 0.20: computed peak ≈ 112.5 dB at χ ≈ 140° (measured ≈ 110 dB), and a computed notch ≈ 100.5 dB at χ ≈ 153° where the data are ≈ 105.5 dB.
  - St 0.40: computed lobes ≈ 108 dB at χ ≈ 131° and ≈ 106 dB at ≈ 139°, against ≈ 106.5 dB measured at 136–139°.
  - All computed curves fall below 80 dB upstream of χ ≈ 105–118°, where the measured fine-scale plateau (84–89 dB) takes over.
- **Hot jet (T_0 = 1114 K), D̃ = 9.19 × 10⁻¹⁰** (Fig. 6, p. 1779). Agreement is good at all four St (0.056, 0.10, 0.20, 0.40), within 2.5 dB except St 0.1 at very small exhaust angles. The peak directions and the half-widths of the directivity curves are both predicted. The authors read this, with one adjustable parameter, as "strongly suggesting" that the theory contains the essential physics (p. 1779). My readings of Fig. 6:
  - St 0.10: computed peak ≈ 113.8 dB at χ ≈ 134° (data ≈ 111 dB), then a deep notch ≈ 100.7 dB at χ ≈ 152° where the data are ≈ 108.5 dB.
  - St 0.056: computed plateau ≈ 108.5 dB at χ ≈ 146–155°, against ≈ 111.5–112 dB measured, i.e. about 3 dB low.
  - St 0.40: computed peak ≈ 102 dB at χ ≈ 125°, close to the data from 125° downstream. At χ ≈ 119° the data (≈ 105 dB) are about 5 dB above the computed curve, presumably where fine-scale noise adds in.
- **The fitted constant differs between the two jets** by a factor of about 2.1 (9.19/4.35, my arithmetic; about 3.2 dB). Both jets have M_j = 2 and the same ambient pressure, so ρ_ju_j² = γp_∞M_j² and the pressure scale is the same for both (my derivation). The "single constant" is thus calibrated per jet rather than universal, a point the paper does not discuss.
- **Azimuthal-mode content changes with temperature** (Figs 7–8, p. 1779).
  - At T_0 = 500 K and St 0.12, essentially only n = ±1 (helical or flapping) radiates, so the directivity is smooth and single-peaked. Read from Fig. 7: total ≈ 110 dB at χ ≈ 150°, n = ±1 curve ≈ 107 dB, n = 0 peaking at ≈ 91.6 dB near χ ≈ 127° with a null near 145°, n = ±2 ≈ 87 dB.
  - At T_0 = 1114 K and St 0.4, no single mode dominates: n = 0 to ±5 all contribute, and n = ±6 is negligible. Several comparable modes broaden the directivity, "in total agreement" with the data. Seiner et al. (1993) reached the same conclusion from single-wave calculations (p. 1779). Read from Fig. 8: total ≈ 101.7 dB at χ ≈ 124°; mode peaks ≈ 93 (n = 0, χ ≈ 115°), 95 (±1, 117°), 94 (±2, 121°), 94 (±3, 127°), 92 (±4, 133°) and 88.5 dB (±5, 139–142°). Higher n peak closer to the downstream axis.
  - The ≈ 3 dB gap between the n = ±1 curve and the total in Fig. 7, and the way the Fig. 8 mode levels sum to the total only if each sign is counted separately, suggest that each "n = ±k" curve shows one value of n (my inference; the captions do not say).
- **Large-structure turbulence intensity** (eq. 20, p. 1779–1780). With the fitted D̃, the RMS axial velocity of the instability waves at the half-velocity point of the exit is 0.015u_j (500 K) and 0.012u_j (1114 K). No such data existed for high-speed hot jets, but 1.5 % at the exit is "not uncommon" in lower-Mach jets, so the authors judge the values reasonable (p. 1780).
- **Eddy viscosity as an inviscid-limit regulariser** (p. 1778–1779). The waves are damped beyond the core, and an inviscid (Rayleigh) solution there needs contour deformation into complex r, i.e. an analytic continuation of the mean profile. A fitted profile cannot be continued accurately. Adding turbulent-viscosity terms to the compressible Orr–Sommerfeld equations lets the integration run along real r. The results were computed at R_t = u_jb/ν_t = 500, 1000, 2000, up to 5000. They are nearly independent of R_t for R_t ≥ 2000, which is therefore taken as the inviscid limit and used throughout.
- **Validity limits stated by the authors.**
  - At lower jet Mach numbers and temperatures, the waves travel more slowly, Mach-wave generation becomes less efficient, and fine-scale noise cannot be ignored. A theory covering both components does not yet exist (p. 1780).
  - For full-scale engines, core turbulence, swirl and non-uniform exit profiles may break the self-similarity assumption, so "slight modifications" may be needed (p. 1776).
  - The hot-jet data are harder: at high temperature the dominant sector is much wider and the directivities at large St are irregular, with multiple peaks (p. 1777).

## Setup / method
**Data used for comparison** (Seiner, Ponton, Jansen & Lagen 1992, AIAA 92-2046; p. 1777).
- Mach 2 convergent–divergent nozzle, perfectly expanded; a propane burner reached T_0 = 1534 K.
- Microphones about 3° apart in the far field; narrowband spectra in 122 Hz bands.
- Cases used: T_0 = 500 K ("isothermal") and 1114 K ("representative of high temperature jets"). Mean-flow data at 313, 755 and 1114 K appear in Figs 3–4.
- Not stated in this paper: nozzle diameter, microphone distance R, ambient temperature, and the Strouhal-number definition (presumably fD_j/u_j).
- My estimates for air with γ = 1.4 and T_∞ ≈ 290 K (the real gas is combustion products, so these are approximate): T_j ≈ 278 K and 619 K, T_j/T_∞ ≈ 0.96 and 2.1, u_j ≈ 670 and 1000 m s⁻¹, u_j/a_∞ ≈ 1.96 and 2.92.

**Model chain** (Sec. II, p. 1775–1777).
1. *Instability-wave solution* (Tam & Burton 1984, matched asymptotics). The slow spreading rate is the small parameter.
   - The inner solution is a multiple-scales expansion, valid inside the jet and just outside it.
   - The outer solution is a Fourier integral in the axial wavenumber, valid out to the far field.
   - They are matched in an overlap region by the intermediate matching principle. Lowest order gives the local eigenvalue; first order gives the non-parallel correction and fixes the eigenfunction normalisation (p. 1775).
   - Parallel-flow and multiple-scales solutions alone are not uniformly valid outside the jet, so they cannot give radiation (Tam & Morris 1980; p. 1774–1775).
2. *Stochastic amplitudes* (eqs. 4, 9–12, p. 1776). The exit amplitude Â_n(ω) is arbitrary in single-wave theory. Here it is a random function, normalised by the pressure eigenfunction at (r_{1/2}, x = 0), and its statistics follow from the white-noise lip condition.
3. *Far field* (eqs. 13–19, p. 1776–1777). Autocorrelation, then power spectrum, then a stationary-phase evaluation for large R in spherical coordinates (R, θ, φ), with x = R cos θ and r = R sin θ.
4. *Turbulence intensity* (eq. 20, p. 1777).

**Mean flow** (Sec. III, p. 1777–1778).
- Axial velocity: a three-parameter error-function profile (eq. 21) in u_c(x) (centreline velocity), r_{1/2}(x) and b(x) (mixing-layer half-width). It fits the Mach 2 radial profiles of Seiner, McLaughlin & Liu (1982) "quite well". In the core u_c = u_j and b/r_{1/2} is small; downstream u_c falls and b = r_{1/2}.
- Axial distributions of u_c, r_{1/2} and b are fitted to Seiner et al. (1992) (Figs 2–4). b(0)/R_j = 0.04 for both jets.
  - At 1114 K, r_{1/2} is chosen to match the data and b follows from conservation of momentum flux; that b disagrees with the measured b, and the authors have "no explanation" (p. 1778).
  - Read from Fig. 2: the model core ends near x ≈ 21R_j (500 K) and ≈ 17R_j (1114 K); u_c/u_j at x = 50R_j is ≈ 0.46 and ≈ 0.3–0.35.
  - Read from Fig. 3 (500 K): model r_{1/2} rises from 1.0 to ≈ 1.2R_j by x ≈ 20; model b rises linearly from 0.04 to meet it near x ≈ 21–22R_j, then both reach ≈ 1.6R_j at x = 30. In Fig. 4 (1114 K) the model b grows more slowly (≈ 0.65R_j at x = 15, against measured ≈ 0.8–0.9R_j) and catches up near x ≈ 24.
- Density: Crocco's relation (eq. 22), since Seiner et al. gave no temperature or density data. The same relation was used in Tam, Chen & Seiner (1992).

**Numerics and simplifications.**
- The non-parallel correction β_n is set to zero in all results. Highly supersonic jets spread slowly, and the axial derivatives it needs cannot be computed accurately from a fitted mean flow (p. 1778).
- Eddy-viscous compressible Orr–Sommerfeld equations with R_t = u_jb/ν_t = 2000 (convergence test 500–5000; p. 1778–1779). Because R_t is fixed locally, ν_t ∝ b(x).
- The azimuthal sum is truncated at |n| ≤ 5 for the hot jet at St 0.4 (n = ±6 negligible, p. 1779). The truncation in n and ω for the other cases, and for the integral in eq. 20, is not stated.
- **Data dependence:** none beyond mean-flow profiles and far-field spectra. The model needs a mean flow (u_c, r_{1/2}, b, density), a local stability solver and one noise-calibrated constant. No time-resolved flow data are used or needed.

## Key equations
All transcribed from page renders (p. 1775–1778). Dimensionless variables: length R_j, velocity u_j, time R_j/u_j, density ρ_j, pressure ρ_ju_j²; ρ_∞ is the dimensionless ambient density (p. 1775).

- **Inner (single-wave) solution** (eq. 1, p. 1775):
  $$p_{\rm inner}(r,x,\phi,t;\omega,n) = A_0(x,n,\omega)\,\hat p_n(r,x,\omega)\,\exp\{i[\theta_n + n\phi - \omega t + \pi/2]\},\qquad \theta_n(x,\omega)=\int_0^x \alpha_n(x,\omega)\,dx$$
  α_n is the local (complex) wavenumber, the eigenvalue of the instability-wave problem.
- **Eigenfunction normalisation** (eq. 2): $\hat p_n(r,x,\omega)\to H_n^{(1)}[i\lambda(\alpha,\omega)r]$ as $r\to\infty$, with $\lambda(\alpha,\omega) = (\alpha^2 - \rho_\infty M_j^2\omega^2)^{1/2}$ and $-\pi/2 \le \arg\lambda \le \pi/2$. The left (right) equality is removed for ω negative (positive).
- **Amplitude and non-parallel factor** (eq. 3): $A_0(x,n,\omega)=\hat A_n(\omega)\,e^{-\beta_n(x,\omega)}$, $\beta_n=\int_0^x (I_2/I_1)\,dx$, with I₁ and I₂ given in Tam & Burton (1984).
- **Normalised random amplitude** (eq. 4, p. 1776): $\hat A_n(\omega)=a_n(\omega)/|\hat p_n(r_{1/2},0,\omega)|$.
- **Outer solution** (eqs. 5–6):
  $$p_{\rm outer}=\int_{-\infty}^{\infty}\hat A_n(\omega)\,\hat g_n(\eta,\omega)\,H_n^{(1)}[i\lambda(\eta,\omega)r]\,\exp[i(\eta x+n\phi-\omega t+\pi/2)]\,d\eta$$
  $$\hat g_n(\eta,\omega)=\frac{1}{2\pi}\int_{-\infty}^{\infty}\exp\{i[\theta_n(x,\omega)-\eta x]-\beta_n(x,\omega)\}\,dx$$
  So ĝ_n is the axial Fourier transform (wavenumber spectrum) of the wavepacket exp(iθ_n − β_n): growth, saturation and decay all enter through Im α_n.
- **Symmetries** (eqs. 7–8): $\theta_{-n}(x,-\omega)=-\theta_n^*(x,\omega)$, $\beta_{-n}(x,-\omega)=\beta_n^*$, $\hat p_{-n}(r,x,-\omega)=\hat p_n^*$, $H^{(1)}_{-n}[i\lambda(x,-\omega)r]=H_n^{(1)*}[i\lambda(x,\omega)r]\,e^{i\pi}$; hence $\hat g_{-n}(-\eta,-\omega)=\hat g_n^*(\eta,\omega)$.
- **White-noise lip condition** (eq. 9):
  $$\langle p(r_{1/2},0,\phi,t)\,p(r_{1/2},0,\phi+\Phi,t+\tau)\rangle = 2\pi^2\tilde D\,\delta(\Phi)\,\delta(\tau)$$
  D̃, the area of the autocorrelation function, is "the only unknown of the present theory".
- **Total pressure inside the jet** (eq. 10):
  $$p(r,x,\phi,t)=\sum_{n=-\infty}^{\infty}\int_{-\infty}^{\infty}a_n(\omega)\frac{\hat p_n(r,x,\omega)}{|\hat p_n(r_{1/2},0,\omega)|}\exp\!\Big[i\Big(\theta_n+n\phi-\omega t+\frac{\pi}{2}\Big)-\beta_n\Big]d\omega$$
  Substituting into eq. 9 gives an integral equation (eq. 11) for ⟨a_n(ω)a_n′(ω′)⟩.
- **Amplitude statistics** (eq. 12): $\langle a_n(\omega)\,a_{n'}(\omega')\rangle = (\tilde D/2)\,\delta(\omega+\omega')\,\delta_{n,-n'}$.
- **Far-field autocorrelation** (eqs. 13–16, p. 1776–1777):
  $$\langle p(t)\,p(t+\tau)\rangle=\frac{\tilde D}{2}\sum_{n}\int_{-\infty}^{\infty}\frac{|G_n(r,x,\omega)|^2}{|\hat p_n(r_{1/2},0,\omega)|^2}e^{-i\omega\tau}\,d\omega,\qquad G_n=\int_{-\infty}^{\infty}\hat g_n(\eta,\omega)\,H_n^{(1)}[i\lambda(\eta,\omega)r]\,e^{i\eta x}\,d\eta$$
- **Power spectrum** (eqs. 17–18): $S=\frac{1}{2\pi}\int\langle p(t)p(t+\tau)\rangle e^{-i\omega\tau}d\tau$, giving
  $$S(r,x,\phi,\omega)=\frac{\tilde D}{2}\sum_{n=-\infty}^{\infty}\frac{|G_n(r,x,\omega)|^2}{|\hat p_n(r_{1/2},0,\omega)|^2}$$
  > Eqs. 15 and 17 are both printed with $e^{-i\omega\tau}$; a consistent inverse pair needs opposite signs. It does not matter for eq. 18, because the sum over ±n makes the spectrum even in ω (my reading).
- **Far-field spectrum in dB** (eq. 19, p. 1777), stationary phase for large R:
  $$\tilde S(R,\theta,\phi,f)=10\log_{10}\left[\frac{\rho_j^2u_j^3R_j^3}{p_{\rm ref}^2R^2}\sum_{n=-\infty}^{\infty}\frac{8\pi\tilde D\,|\hat g_n(\rho_\infty^{1/2}M_j\omega\cos\theta,\ \omega)|^2}{|\hat p_n(r_{1/2},0,\omega)|^2}\right]$$
  S̃ is in dB per cycle per unit time (per Hz), f = ω/2π, p_ref = 2 × 10⁻⁵ N m⁻²; the summand is dimensionless and the prefactor dimensional. The prefactor has units of seconds, as a per-Hz spectrum should (my check).
  > With ρ_∞ = ρ_∞/ρ_j and equal static pressures, a_∞/u_j = 1/(ρ_∞^{1/2}M_j), so the wavenumber argument is (ω/a_∞) cos θ, the axial trace of a sound wave leaving at θ (my derivation). Only |η| < ω/a_∞, i.e. supersonic phase speeds, can radiate.
- **Large-structure turbulence intensity at the lip** (eq. 20):
  $$\langle u^2(r_{1/2},0,\phi,t)\rangle=\frac{\tilde D}{2}\sum_{n=-\infty}^{\infty}\int_{-\infty}^{\infty}\frac{|\hat u_n(r_{1/2},0,\omega)|^2}{|\hat p_n(r_{1/2},0,\omega)|^2}\,d\omega$$
- **Mean axial velocity** (eq. 21, p. 1777):
  $$\frac{\bar u(r,x)}{u_c}=\frac12\left\{1-\operatorname{erf}\!\left[\ln 2\left(\frac{r}{r_{1/2}}-\Big(\frac{r_{1/2}}{r}\Big)^{3/4}\right)\frac{r_{1/2}}{b}\right]\right\}$$
  Check: ū/u_c = ½ at r = r_{1/2} (my check).
- **Crocco's relation for density** (eq. 22, p. 1778):
  $$\frac{\rho_j}{\bar\rho}=\Big(1+\frac{\gamma-1}{2}M_j^2\Big)\Big[\frac{T_\infty}{T_0}+\Big(1-\frac{T_\infty}{T_0}\Big)\frac{\bar u}{u_j}\Big]-\frac{\gamma-1}{2}M_j^2\Big(\frac{\bar u}{u_j}\Big)^2$$
  Check: it gives ρ_j/ρ̄ = 1 at ū = u_j, and T_∞/T_j at ū = 0 (my check).
- **Eddy-viscosity parameter** (p. 1778): $R_t = u_j b/\nu_t = 2000$.

## Data tables
**Model parameters and fitted outputs** (p. 1778–1780):

| Quantity | T_0 = 500 K (isothermal) | T_0 = 1114 K | Page |
|---|---|---|---|
| M_j | 2.0 | 2.0 | 1777 |
| b(0)/R_j | 0.04 | 0.04 | 1778 |
| R_t = u_jb/ν_t | 2000 | 2000 | 1779 |
| Non-parallel correction β_n | 0 | 0 | 1778 |
| Fitted D̃ | 4.35 × 10⁻¹⁰ | 9.19 × 10⁻¹⁰ | 1779 |
| St compared | 0.067, 0.12, 0.20, 0.40 | 0.056, 0.10, 0.20, 0.40 | 1778–1779 |
| Stated agreement | ≤ 2.5 dB at St 0.12–0.40, except small exhaust angles at St 0.2; St 0.067 too low | ≤ 2.5 dB at all St, except St 0.1 at very small exhaust angles | 1779 |
| Radiating azimuthal modes | n = ±1 only (St 0.12) | n = 0 to ±5 (St 0.4) | 1779 |
| Predicted ⟨u²⟩^{1/2}/u_j at (r_{1/2}, x = 0) | 0.015 | 0.012 | 1779–1780 |
| u_j/a_∞ (my estimate) | ≈ 1.96 | ≈ 2.92 | — |

**Peak directions read from the measured data in Figs 5–6** (my readings; θ = 180° − χ is measured from the downstream jet axis):

| Jet | St | Measured peak χ (deg) | θ (deg) |
|---|---|---|---|
| 500 K | 0.067 | ≈ 152–158 | ≈ 22–28 |
| 500 K | 0.12 | ≈ 148 | ≈ 32 |
| 500 K | 0.20 | ≈ 140–143 | ≈ 37–40 |
| 500 K | 0.40 | ≈ 136–139 | ≈ 41–44 |
| 1114 K | 0.056 | ≈ 148–155 | ≈ 25–32 |
| 1114 K | 0.10 | ≈ 140–146 | ≈ 34–40 |
| 1114 K | 0.20 | ≈ 129 | ≈ 51 |
| 1114 K | 0.40 | ≈ 119 (or a plateau to ≈ 127) | ≈ 53–61 |

> The 1114 K St 0.4 peak sits where fine-scale noise also contributes, so its angle is uncertain.

## Figures worth remembering
- **Fig. 1 (p. 1774):** measured directivities of the isothermal Mach 2 jet at St 0.067, 0.12, 0.20 and 0.40, with the "dominant part of turbulent mixing noise" region marked from χ ≈ 127°. The inset defines χ from the inlet axis and θ from the jet axis.
- **Fig. 2 (p. 1777):** model and measured centreline velocity u_c/u_j against x/R_j for 500 and 1114 K.
- **Figs 3–4 (p. 1778):** model and measured r_{1/2} and b against x/R_j (500 K and 1114 K). The 1114 K model b falls below the data.
- **Fig. 5 (p. 1778):** computed against measured directivities at 500 K. The key comparison for the isothermal case, including the 9 dB shortfall at St 0.067.
- **Fig. 6 (p. 1779):** the same at 1114 K: broad, multi-lobed directivities, generally within 2.5 dB.
- **Fig. 7 (p. 1779):** contributions of n = 0, ±1, ±2 at 500 K, St 0.12: n = ±1 dominates.
- **Fig. 8 (p. 1779):** contributions of n = 0 to ±5 at 1114 K, St 0.4: no dominant mode; higher n radiate further downstream.

## Notation
- R_j: nozzle-exit jet radius (length scale); u_j: fully expanded jet velocity (the paper's "jet exit velocity"); ρ_j: jet density at the exit; ρ_∞: dimensionless ambient density ρ_∞/ρ_j; M_j: jet Mach number; T_0: total (stagnation) temperature; T_∞: ambient temperature; γ: ratio of specific heats.
- (r, φ, x): cylindrical coordinates centred at the nozzle exit; (R, θ, φ): spherical, with θ measured from the downstream jet axis; χ: angle to the inlet axis in the figures (χ = 180° − θ).
- ω: angular frequency (dimensionless unless noted), f = ω/2π; n: azimuthal mode number; α_n(x, ω): local complex wavenumber; θ_n: phase integral ∫α_n dx (not the angle θ); β_n: non-parallel correction (I₁, I₂ in Tam & Burton); η: axial wavenumber; λ = (η² − ρ_∞M_j²ω²)^{1/2}; H_n^{(1)}: Hankel function of the first kind.
- p̂_n, û_n: pressure and axial-velocity eigenfunctions; A_0, Â_n: wave amplitudes; a_n(ω): normalised random amplitude; ĝ_n(η, ω): axial wavenumber spectrum of the wavepacket; G_n: outer-solution radial-axial factor; D̃: correlation area, the single free constant; S, S̃: power spectrum (S̃ in dB per Hz); p_ref = 20 µPa.
- **u_c: centreline mean velocity** (not a convection velocity, unlike the u_c of Tam & Tanna and the jet-noise topic page); r_{1/2}: half-velocity radius; b: mixing-layer half-width; ū: mean axial velocity; ρ̄: mean density.
- R_t = u_jb/ν_t: local turbulent Reynolds number; ν_t: kinematic eddy viscosity.
- St: Strouhal number, not defined in the paper (presumably fD_j/u_j).

## Relevance to this project
This is the journal paper behind the "stochastic instability-wave" mixing-noise theory that [Tam 1995](tam-1995-supersonic-jet-noise.md) reviews (p. 24–30 of that review) and that [Tam et al. 1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) builds its two-source picture on. In today's language it is a linear wavepacket model of supersonic jet noise: one wavepacket per (n, ω) from local stability on the turbulent mean flow, with stochastic amplitudes set by a receptivity assumption at the lip. It belongs on the jet-noise-mechanisms thread (Mach-wave radiation, the two-source picture), on linear models (wavepacket sound sources, eddy viscosity) and, through heated-jet Mach waves, on rocket-noise modelling (CLAUDE.md "Rocket noise modelling"). It contains no experiment of its own; its modelling content is the whole paper.

**How it fits and what has changed since**
- **Same object as modern wavepackets.** The model's structure (linear waves on the mean flow, an inflow amplitude only, no volume forcing, each (n, ω) perfectly coherent in x) is exactly what [Cavalieri et al. 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) say suffices for supersonic jets. There, one coherent wavepacket per frequency carries the Mach waves and jitter barely changes the M 2 peak (that note, p. 15–16). The 2.5 dB agreement here, obtained with no jitter at all, is consistent with that. [Schmidt et al. 2018](schmidt-2018-spectral-analysis-jet-turbulence.md) see the same Mach waves directly in SPOD and resolvent modes of an M_j 1.5 LES. The [Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md) note records that PSE approximates "Tam's matched-asymptotic Mach-wave theory" for supersonic phase speeds (that note, p. 185).
- **The white-noise hypothesis is the testable part.** Equal lip pressure for every (n, ω) replaces the per-(m, St) amplitude fits of later PSE studies ([Gudmundsson & Colonius 2011](gudmundsson-2011-instability-wave-models-near-field-jets.md)). Cavalieri 2019 show that SPOD equals resolvent modes only for white forcing (that note, eq. 33, p. 8). Tam & Chen's assumption is the inflow counterpart: white at the lip, then amplified by the linear operator. Whether measured near-lip spectra of a supersonic jet are white in n and St, after normalisation by |p̂_n(r_{1/2}, 0, ω)|, has, as far as the library shows, never been checked directly.
- **Azimuthal content agrees with the radial-compactness argument.** n = ±1 alone radiates in the isothermal jet at St 0.12, but n = 0 to ±5 matter in the hot jet at St 0.4 (p. 1779). [Cavalieri et al. 2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md) explain why low m dominate low-St sound even though the velocity energy peaks at m ≈ 4–11: high m are radially compact and radiate weakly. Higher St and higher u_j/a_∞ relax that compactness, which is the trend in Figs 7–8 (my reading).
- **The low-St miss mirrors later linear-model failures.** At 500 K, St 0.067 is about 9 dB low (Fig. 5, my reading), with the cause unknown (p. 1779). Low-St waves peak far downstream, beyond the core, where the non-parallel correction (neglected here) and the parallel assumption are weakest. Linear PSE likewise fails below St ≈ 0.2 in subsonic jets ([Gudmundsson & Colonius 2011](gudmundsson-2011-instability-wave-models-near-field-jets.md); [Cavalieri et al. 2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md)), a failure the [linear-models](../Topics/linear-models.md) page attributes to non-parallel and non-modal (Orr) effects found by resolvent analysis. That these explain the St 0.067 shortfall in a supersonic jet is my conjecture.
- **Eddy viscosity, then and now.** Here ν_t is a numerical device that lets damped waves be computed on the real r axis, with R_t = u_jb/ν_t raised until the results converge (R_t ≥ 2000) and then treated as inviscid (p. 1778–1779). Modern resolvent work uses eddy viscosity as a model of the forcing ([Pickering et al. 2021](pickering-2021-optimal-eddy-viscosity-resolvent-jets.md)). The convergence test is the kind of sensitivity check the linear-models page asks for: Re = 10³ removes trapped acoustic modes in subsonic jets ([Schmidt et al. 2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md), p. 25–27).
- **Peak direction depends strongly on St.** Read from Figs 5–6, the measured peak moves from θ ≈ 25–30° at St ≈ 0.06 to ≈ 40–45° (500 K) or ≈ 50–60° (1114 K) at St 0.2–0.4 (table above). Taking the Mach-angle relation for one wave, cos θ = a_∞/c, the 500 K St 0.12 peak (θ ≈ 32°) implies c ≈ 1.18a_∞ ≈ 0.60u_j, and the 1114 K St 0.2 peak (θ ≈ 51°) implies c ≈ 1.59a_∞ ≈ 0.54u_j (my arithmetic, ignoring refraction).
  - Tam & Hu's supersonic-wave speed u_j/(1 + a_j/a_∞) gives ≈ 0.41u_j, θ ≈ 33°, for the hot jet. For the isothermal jet it is ≈ 0.50u_j, which is just subsonic relative to a_∞ (my estimates; [Tam & Hu 1989](tam-1989-three-families-instability-waves-high-speed-jets.md), p. 472).
  - By Tam & Hu's criterion u_j > a_j + a_∞, the 1114 K jet (≈ 1000 against ≈ 840 m s⁻¹, my estimate) supports supersonic instability waves and the 500 K jet does not, marginally. The paper does not say which wave family it computed; the description implies only the KH family.
  - So, in this data set, a single convective Mach number does not fix the directivity; it is St-dependent. Tam & Chen's model reproduces that through St-dependent phase speeds and several azimuthal modes. This bears on the open question on the [jet-noise-mechanisms](../Topics/jet-noise-mechanisms.md) page about which M_c sets the rocket peak angle.

**Methods and data for the lab workflow (CLAUDE.md)**
- **What the model needs.** Only mean-flow data (u_c, r_{1/2}, b, and density or temperature) and far-field spectra; no time-resolved flow data. Non-time-resolved PIV mean fields are enough to build the base flow, and Crocco's relation stands in when no temperature data exist (p. 1778).
- **Testing it with our data (my suggestions).**
  - *Non-time-resolved PIV.* The predicted large-structure u_rms at the exit (1.2–1.5 % of u_j, p. 1779–1780) is a quantity snapshot POD can estimate, for example from the energy of the leading coherent pairs near the lip line. That would test the D̃ calibration independently of acoustics, with the usual caveat that planar POD energy is not split by (n, ω).
  - *Time-resolved schlieren or near-field acoustics.* SPOD gives the leading mode per (m, St). Its streamwise wavenumber spectrum at k = (ω/a_∞) cos θ is the measured counterpart of ĝ_n in eq. 19, so far-field directivity can be predicted from flow data alone (the [Schmidt et al. 2018](schmidt-2018-spectral-analysis-jet-turbulence.md) projection). Single-view schlieren of a round jet cannot separate n beyond the symmetric and antisymmetric parts, so an azimuthal array or multi-view imaging is needed for the n-dependence of Figs 7–8.
  - *Intermittency.* The model assumes stationary, uncorrelated (n, ω) waves with steady statistics, so it says nothing about bursts. SPOD → reconstruction of the radiating band (|k| < ω/a_∞) → Hilbert POD would show whether the Mach-wave wavepackets are intermittent in amplitude. That is the jitter Cavalieri et al. 2019 find to matter little at supersonic M_c but much at subsonic M_c.
- **PyFR staging LES.** Weakly relevant: at M_j ≈ 1.1 the waves are subsonic relative to a_∞, and the authors themselves say the Mach-wave mechanism then becomes inefficient (p. 1780). The eddy-viscosity convergence test transfers to any local or global analysis on LES means.

**Rocket noise**
- The model is a first-principles account of the Mach-wave component that dominates rocket noise ([Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)), and the [Mathews 2025](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) thesis cites it, with Tam 1995 and Tam et al. 1996, for the two-source (large-scale plus fine-scale) picture it builds on (that note, p. 4).
- Heating brings in more azimuthal modes and broadens the directivity (Fig. 8, p. 1779). This suggests that hotter, faster rocket plumes radiate through many modes, which a single-wavepacket or single-M_c directivity model would miss (my inference).
- The authors' caveat for full-scale engines (core turbulence, swirl, non-uniform exit profiles, p. 1776) applies even more to rocket nozzles.
- The calibration constant changed by a factor of 2 between two lab temperatures, so a rocket application would need its own calibration or an independent estimate of lip receptivity.
- For rockets, a stochastic-wavepacket model needs: a heated M ≈ 3 mean flow; the supersonic instability-wave family of [Tam & Hu 1989](tam-1989-three-families-instability-waves-high-speed-jets.md), not just KH; and the low peak Sr (≈ 0.01–0.025; [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 10; [Kellison et al. 2026](kellison-2026-falcon-9-noise-two-campaigns.md)), which lies in the low-St range where this paper already fails at 500 K.

**Items to verify against the PDF**
1. All directivity levels and peak angles quoted from Figs 1, 5–8 are figure readings, especially the ≈ 9 dB shortfall at St 0.067 (Fig. 5), the ≈ 3 dB shortfall at St 0.056 and the St 0.1 notch at χ ≈ 152° (Fig. 6).
2. Whether each "n = ±k" curve in Figs 7–8 shows one sign of n or the ± pair (inferred from the level sums).
3. The St definition, nozzle diameter, microphone radius R and ambient temperature are not given; my estimates of u_j, T_j/T_∞ and TR assume air with γ = 1.4 and T_∞ ≈ 290 K.
4. The sign of the exponent in eq. 17 (printed as e^{−iωτ}, like eq. 15).
5. The ranges of n and ω summed and integrated in eqs. 19–20 (white forcing would diverge unless the sums are truncated to the amplified waves); not stated.
6. Page 1779 prints "111 K" for the hot jet in the Fig. 6 discussion; it is 1114 K everywhere else.
7. Fig. 2–4 readings (core length, b and r_{1/2} values).

**Related papers not in the library:** Tam & Burton 1984 (JFM 138, matched-asymptotic instability-wave radiation; Part 2 now [indexed](tam-1984-sound-instability-waves-supersonic-axisymmetric-jets.md)); Seiner, Ponton, Jansen & Lagen 1992 (AIAA 92-2046, the comparison data; in `Papers_to_get.md`); Tam, Chen & Seiner 1992 (AIAA J. 30(7), peak frequency and direction against the most amplified wave); Tam & Morris 1980 (JFM 98); Tam & Chen 1979 (JFM 92, statistical model of 2-D mixing layers); Plaschko 1981, 1983 (Phys. Fluids); Troutt & McLaughlin 1982 (JFM 116); Seiner, McLaughlin & Liu 1982 (NASA TP 2072); Seiner, Bhat & Ponton 1993 (AIAA 93-0734); McLaughlin, Barron & Vaddempudi 1992 (AIAA 92-2047); Tam 1987 (JSV 116) and 1990 (JSV 140) on stochastic BBSAN.
