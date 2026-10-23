---
key: "cavalieri-2013-wavepackets-velocity-field-turbulent-jets"
title: "Wavepackets in the velocity field of turbulent jets"
authors: ["Cavalieri, A. V. G.", "Rodríguez, D.", "Jordan, P.", "Colonius, T.", "Gervais, Y."]
year: 2013
type: "article"
venue: "JFM 730, 559–592"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "730", "pages": "559--592"}
doi: "10.1017/jfm.2013.346"
arxiv: ""
pdf: "linear-models/Cavalieri-EtAl_2013_Wavepackets-In-The-Velocity-Field-Of-Turbulent-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "PPrime Bruit et Vent"
data: ["PIV-TR", "PIV-stereo", "hot-wire", "mic-array", "microphones-far"]
methods: ["PSE", "symmetry-decomposition", "SPOD", "coherence", "PSD"]
flow: ["round-jet", "subsonic"]
phenomena: ["KH-wavepackets", "directivity", "mixing-noise"]
params: {"M_j": "0.4–0.6", "Re": "4.2–5.7×10⁵", "D": "50 mm", "St": "0.1–0.9"}
topics: ["linear-models", "jet-noise-mechanisms"]
related: ["gudmundsson-2011-instability-wave-models-near-field-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "jordan-2018-jet-flap-interaction-tones", "nogueira-2019-large-scale-streaky-structures-jets", "pickering-2020-lift-up-kh-orr-jets", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "nogueira-2021-wavepacket-modulation-shock-containing-jets"]
cites: ["gudmundsson-2011-instability-wave-models-near-field-jets", "jordan-2013-wave-packets-turbulent-jet-noise", "tam-1984-sound-instability-waves-supersonic-axisymmetric-jets", "tam-1994-turbulent-mixing-noise-supersonic-jets", "tam-1995-supersonic-jet-noise"]
summary: "M 0.4–0.6 jets, TR cross-plane PIV + mic ring: energy peaks at mδ₂/r≈0.7 but sound is mostly m=0; linear PSE on the mean flow match m=0,1 for St 0.3–0.9 to the end of the core"
---
# Wavepackets in the velocity field of turbulent jets

- **Authors:** A. V. G. Cavalieri (Institut PPrime, Poitiers; ITA, São José dos Campos), D. Rodríguez (Caltech; Universidad Politécnica de Madrid), P. Jordan (Institut PPrime), T. Colonius (Caltech), Y. Gervais (Institut PPrime)
- **Source:** J. Fluid Mech. 730, 559–592 (2013), doi:10.1017/jfm.2013.346. Received 30 Nov 2012, published online 2 Aug 2013. This file is the published JFM version.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-models/Cavalieri-EtAl_2013_Wavepackets-In-The-Velocity-Field-Of-Turbulent-Jets.pdf` (34 pp.)
- **Page refs:** printed journal page numbers (559–592). PDF page = journal page − 558.
- **Tags:** subsonic turbulent jet, wavepackets, Kelvin–Helmholtz instability, linear parabolised stability equations (PSE), mean-flow linearisation, azimuthal Fourier decomposition, time-resolved stereo PIV (cross-stream planes), hot-wire, microphone ring, flow–acoustic correlation, axisymmetric superdirectivity, radial compactness, frequency-domain (spectral) POD in r, aliasing correction, model–data inner-product metric, wavepacket jitter

## Summary
The paper tests whether the low-order azimuthal modes of the velocity field in unforced, high-Re subsonic jets (M = 0.4, 0.5, 0.6, tripped turbulent nozzle boundary layers) behave as linear wavepackets. Time-resolved stereo PIV in cross-stream planes is decomposed in frequency and azimuthal wavenumber m, and a single hot-wire gives centreline spectra; a nine-microphone ring at θ = 20° records the low-angle sound synchronously (p. 561–564). The velocity energy on the lipline peaks at m ≈ 4–11, scaling with local momentum thickness, while the low-angle sound is mostly m = 0; the authors explain this with the radial compactness of the source, which makes high-m modes acoustically inefficient (p. 566–568). Correlating the m = 0 velocity with the m = 0 far-field pressure gives about 10%, far above the near-noise-level two-point correlations (p. 569–571). Linear PSE on the experimental mean flow then match the m = 0 and m = 1 spectra and radial shapes for 0.3 ≤ St ≤ 0.9 from x/D ≈ 2 to the end of the potential core, but not at St ≤ 0.2 or downstream of x/D ≈ 5.5 (p. 574–585). The conclusion is that the acoustically important, low-energy part of the turbulence is a statistical linear KH wavepacket on the mean flow (p. 586–587).

## Key findings
- **Azimuthal energy content of the velocity** (p. 566–567, Fig. 7):
  - On the lipline, the most energetic m is about 11 at x/D = 1 and shifts to m = 4 by x/D = 3 (p. 566).
  - Rescaled as mδ₂/r, the peaks collapse at mδ₂/r ≈ 0.7 (Fig. 7b). This is close to Bogey et al. (2011) LES (≈ 0.8) and to boundary-layer spanwise peaks k_zδ₂ ≈ 1 (Tomkins & Adrian 2005) (p. 566).
  - m = 0 and 1 carry non-zero but small energy and are invisible in instantaneous snapshots (Fig. 6, p. 566–567).
- **Sound field is mostly axisymmetric at low angles** (p. 567, Fig. 8, from Cavalieri et al. 2012): at θ = 20°, M = 0.4, mode 0 dominates the OASPL, more so at St = 0.2. Read from Fig. 8: OASPL total ≈ 81 dB, mode 0 ≈ 79, mode 1 ≈ 75, mode 2 ≈ 69.5 dB.
- **Radial compactness explains the mismatch** (p. 567–568, eq. 3.1, Fig. 9): the azimuthal integral of Lighthill's T_xx brings in J_m(k_a r sin θ), so high m radiate weakly at low St.
  - Fig. 9 (ring source at r = D/2, M = 0.6, θ = 30°), read from the figure: mode 1 is about −20 dB relative to mode 0 at St = 0.2, −12 dB at St = 0.5, −8 dB at St = 0.8 and −4.5 dB at St = 1.1; mode 2 is about −47 dB at St = 0.2.
  - I checked the St = 0.2 and 0.5 values: 20 log₁₀(J₁/J₀) at k_a r sin θ = 2π·St·M·(r/D)·sin 30° gives −20.5 and −12.3 dB, so the ordinate is an amplitude ratio in dB.
  - Refraction is neglected: low-St sound shows no cone of silence in these jets, and Atvars et al. (1965) found negligible refraction at St ≈ 0.2 (p. 569).
- **Flow–acoustic correlations** (p. 569–572, Fig. 10–14):
  - Two-point correlations C (u_x at r = D/4, x/D = 4, 5, 6 with one microphone) stay at the noise level of about 0.02 set by the 19 414 PIV samples (p. 569).
  - Correlating the m = 0 velocity with the m = 0 pressure, C⁰, gives values of order 10% for M = 0.6 (p. 569). Read from Fig. 13: peaks of about +0.1 and −0.12 at x/D = 6, near the free-propagation delay. For M = 0.4 (Fig. 12) they are lower, about +0.06 / −0.08 at x/D = 6.
  - Across r at x/D = 6, M = 0.6 (Fig. 14): C⁰ peaks at about ±0.107 near r/D ≈ 0.2 and stays well above 0.02 out to r/D ≈ 0.4–0.5. C falls to ±0.03 away from the axis. Both tend to the same value as r → 0, since the centreline axial velocity is pure m = 0 (p. 571).
  - Correlations should not approach 1 even for matched modes: a ring in the flow is correlated with a ring in the far field, while the sound comes from cancellation along an axially extended wavepacket (p. 572).
- **Centreline PSE vs hot-wire, m = 0** (p. 574–575, Fig. 15):
  - PSE amplitude fixed once by matching at x/D = 2. Fluctuation energy grows by about four orders of magnitude from the exit to the end of the potential core (x/D ≈ 5–5.5).
  - Close agreement for St = 0.3–0.9 up to the end of the potential core. Downstream, the measured energy keeps rising while PSE decays (Fig. 15).
  - At St = 0.1 and 0.2 PSE under-predict the growth rate, as in Suzuki & Colonius (2006) and Gudmundsson & Colonius (2011). The authors list two possible causes and cannot tell them apart: non-parallel effects (wavelength comparable to the potential-core length breaks the PSE scale separation) or nonlinear forcing from higher-St waves (Suponitsky et al. 2010) (p. 575).
  - The same holds at M = 0.5 and 0.6 (Appendix, Fig. 27–28, p. 589). PSE also reproduce the drop in centreline amplitude with Mach number, which comes from lower growth rates from compressibility (Fig. 16, p. 575).
- **Radial shapes at x/D = 2.5, m = 0** (p. 576–578, Fig. 17–19):
  - The m = 0 energy near the lipline is one to two orders below the all-m energy (Fig. 17, read from the figure).
  - PSE u_x has a sharp null near the lipline (read from Fig. 17: r/D ≈ 0.61, 0.57, 0.54, 0.52 for St = 0.4–0.7). The measured phase jumps by about π across the mixing layer at the same place, as PSE predict (Fig. 18a).
  - Interpretation: at the radius of the vortex centres u_x = 0; jitter of the vortex-centre radius in an unforced jet fills in the null in the raw spectra (Fig. 18b,c, p. 576).
  - The first radial-POD mode removes this jitter and noise: it recovers the null at the PSE position (Fig. 17) and the u_r → 0 trend on the axis (Fig. 19, p. 578). The u_r comparison uses the same PSE constant, with no refit.
- **First helical mode, m = 1** (p. 578–579, Fig. 20–21): amplitude fitted by the inner-product projection b (eq. 4.10) on TR-PIV data. PSE again show a lipline null (except at St = 0.7) that matches the first POD mode. Agreement in u_x and u_r is good; St = 0.7 is worse, which the authors link to its weaker amplification (p. 579).
- **Three zones along x** (p. 579–585, Fig. 22–26; St = 0.5 detailed):
  1. x/D ≲ 1.5: data differ from PSE, especially near the lipline. Read as a transition from nozzle-internal fluctuations to the KH mode, or wavepackets that are present but swamped. On the centreline agreement starts earlier, around x/D = 0.5 (p. 579–580).
  2. x/D ≈ 2 to the end of the potential core (≈ 5.5 for M = 0.4): close agreement in u_x and u_r. PSE systematically under-estimate PIV amplitudes, which the authors put down to aliasing in the PIV (p. 580).
  3. x/D ≥ 6: agreement degrades. For m = 1 the u_x mismatch starts at x/D ≈ 4 (u_r holds to about x/D = 5) (p. 581).
- **Shape-agreement metric |β|** (eq. 4.11, Fig. 26, p. 582–586):
  - |β| reaches 0.9 and above in the middle zone for m = 0 and m = 1 (p. 583).
  - High St agrees better near the nozzle, low St further downstream, consistent with local growth rates: the thin early shear layer amplifies high St fastest, and the thicker downstream profile is stable to high St while low St keep growing (p. 583–584).
  - Read from Fig. 26: m = 0 |β| ≈ 0.9–0.93 at x/D ≈ 2–4 for St ≥ 0.4; at x/D = 9, ≈ 0.72 (St 0.3) down to ≈ 0.27 (St 0.7). m = 1 peaks at about 0.93 near x/D = 2–3 and falls to ≈ 0.55 (St 0.3) and ≈ 0.05 (St 0.7) at x/D = 9. At x/D ≈ 1, |β| ≈ 0.16–0.4.
- **Why agreement fails downstream** (p. 580–581, 587): either nonlinearity (nonlinear PSE might help) or, as the authors favour, the wavepacket is still present but holds too small a share of the azimuthally coherent energy for a single-station radial POD to extract it. Support: axial POD of near-field pressure matched linear models well past the potential core (Suzuki & Colonius 2006; Gudmundsson & Colonius 2011), and near-field pressure of these jets matched PSE up to x/D = 8.9 (Breakey et al. 2013). Simultaneous multi-plane data would be needed (p. 587).
- **Linearity vs earlier simulations** (p. 586): unlike low-Re, transitional jets (Mohseni et al. 2002; Suponitsky et al. 2010), where coherent structures hold most of the energy and act nonlinearly, here only a small fraction of the TKE is in low m, which favours a linear model. Nonlinearity is still implicit through the mean flow, which the Reynolds stresses of the background turbulence set (p. 586).
- **Scope of the claim** (p. 587): linear PSE describe the large-scale structures *statistically*, since every comparison uses averaged spectra. The authors doubt the dominant high-m fluctuations could be obtained by similar linearisation.

## Setup / method
- **Facility:** "Bruit et Vent" anechoic jet facility, CEAT, Institut PPrime, Poitiers: 9.6 m × 6 m × 3.4 m, 0.4 m foam, cut-off 212 Hz. Acoustic signals are FIR high-pass filtered for this reason. Closed-loop flow driven by external fans with lined ducts (p. 561). Not Shock Lab group work. Same nozzle as [Jordan et al. 2018](jordan-2018-jet-flap-interaction-tones.md).
- **Nozzle and boundary layer** (p. 561–562, Fig. 1, Table 1): D = 0.05 m, contraction ratio 31, then a 150 mm straight pipe. Boundary-layer trip 135 mm (2.7D) upstream of the exit. Hot-wire profiles fit a 1/7 power law and a log law (κ = 0.384, u_τ from the Österlund et al. 2000 C_f fit), so the exit boundary layer is turbulent.
- **Conditions:** M = U/c = 0.4, 0.5, 0.6; Re = ρUD/μ = 4.2–5.7 × 10⁵ (p. 561). End of potential core between 5 and 5.5D for all three; mean flows differ only slightly (Fig. 3, p. 564). Jet temperature is not stated; the jets appear to be unheated.
- **Hot-wire** (p. 562–563):
  - Single wire, 2.5 µm × 0.7 mm (≈ 0.15δ), Dantec 55M01, calibrated in situ (Tutkun et al. 2009) against a traversing Pitot tube.
  - Corner frequency 30 kHz (St ≈ 7–11, depending on M).
  - Spectra from 400 non-overlapping blocks; ΔSt = 0.022 at M = 0.4. Sampling rate and window are not stated.
- **Time-resolved stereo PIV** (p. 563–564, Fig. 2):
  - Cross-stream planes at several x/D (1 to 8; separate runs per plane). Two cameras at 45° to the sheet, one upstream and one downstream, in forward scatter.
  - Glycerin-based smoke, 0.5–1 µm particles; particle lag negligible at these frequencies (Tinney et al. 2008).
  - f_s = 5 kHz (the hardware maximum), i.e. sampling St = 1.82, 1.46, 1.21 for M = 0.4, 0.5, 0.6. By my arithmetic the Nyquist St is therefore ≈ 0.91, 0.73 and 0.61.
  - 19 414 image pairs per run. DaVis 8, five passes from 64 × 64 to 16 × 16 px, 50% overlap → 114 × 102 vectors, then interpolated to a cylindrical (x, r, φ) grid for the azimuthal Fourier series.
  - Spectra: Welch-type block averages, 50% overlap, block length set for ΔSt = 0.025. Window not stated. By my estimate that is about 73 samples per block at M = 0.4 (≈ 530 blocks). All PSDs are single-sided.
  - Validation: mean and RMS u_x at x/D = 2 agree with Pitot and hot-wire (Fig. 4, p. 565).
- **Aliasing** (p. 564–566, Appendix p. 589): PIV spectra exceed hot-wire spectra away from the peak, partly from aliasing (shown by down-sampling the hot-wire signal to 5 kHz) and partly from low SNR in the potential core (Fig. 5). Hence the M = 0.4 PIV analysis is restricted to St = 0.3–0.7. For M = 0.6 an ad hoc correction multiplies each frequency by the ratio of centreline hot-wire to PIV u_x spectra, applied uniformly in r; this brings PIV and PSE amplitudes together (Fig. 29–30).
- **Microphone ring** (p. 564): nine microphones at θ = 20°, R = 42.3D, acquired synchronously with the PIV. Polar angle measured from the downstream jet axis.
- **Flow–acoustic correlations** (eq. 3.2–3.3, p. 569): u_x at r = D/4, x/D = 4, 5, 6, correlated with pressure. Point-to-point (C) or m = 0 velocity with m = 0 pressure (C⁰). Noise floor about 0.02.
- **Linear PSE** (§4.1, p. 572–574; numerics as in Gudmundsson & Colonius 2011):
  - Compressible Navier–Stokes, continuity and energy equations linearised about the **experimental** mean flow, assumed axisymmetric and slowly varying in x. Variables q = [u_x, u_r, u_φ, ρ, T]ᵀ.
  - Each (m, ω) evolves independently. Second x-derivatives in viscous terms dropped so the system can be marched.
  - Herbert (1997) normalisation (eq. 4.4) removes exponential growth from the shape function.
  - Outer boundary: Thompson (1987) characteristic conditions. Centreline: Mohseni & Colonius (2000).
  - Inlet: the dominant inflectional (KH) eigenmode of the local spatial stability problem.
  - Free complex amplitude per mode. For m = 0 it is fixed by the centreline hot-wire spectrum at x/D = 2 and then used unchanged for all PIV comparisons. For m = 1 it is fixed by the projection b (eq. 4.10) on PIV data.
  - Not stated here: grid resolution, march step, Re used in the viscous terms, how the mean flow was assembled and smoothed from the separate PIV planes, and the mean density/temperature profile.
  - PSE assumptions that matter: scale separation between wavelength and mean-flow variation (fails at low St; p. 573, 575), linearity (fluctuations small; p. 572), and no eddy viscosity or stochastic forcing (it is a deterministic, single-mode model).
- **Radial POD** (eq. 4.5–4.7, p. 577–578): at each (x, m, ω), POD in r of the three-component cross-spectral tensor (Jung, Gamard & George 2004; numerics per Delville 1995, one 3N × 3N matrix for N radial points). Made Hermitian by the √r weighting. The data are projected onto the leading mode, √λ⁽¹⁾ ξ⁽¹⁾, called the "first POD mode". It is single-plane, so there is no axial coherence.

## Key equations
- Low-angle far-field pressure from the T_xx component of Lighthill's tensor, for mode m and frequency ω (eq. 3.1, p. 567):
  $$p(R,\theta,m,\omega) = -\frac{i^m k_a^2\cos^2\theta\, e^{-ik_aR}}{2R}\int e^{ik_a x\cos\theta}\,dx\int T_{xx}(x,r,m,\omega)\,J_m(k_a r\sin\theta)\,r\,dr$$
  with k_a = ω/c and k_a r = 2π St M r/D (p. 568).
- Correlations (eq. 3.2–3.3, p. 569):
  $$C_{u_x,p}(x,r,R,\theta,\tau) = \frac{1}{t_f}\int_0^{t_f} u_x(x,r,\phi,t)\,p(R,\theta,\phi,t+\tau)\,dt,\qquad C^0_{u_x,p} = \frac{1}{t_f}\int_0^{t_f} u_x(x,r,m{=}0,t)\,p(R,\theta,m{=}0,t+\tau)\,dt$$
  The figures show normalised values; the normalisation is not written out.
- Modal expansion and PSE ansatz (eq. 4.1–4.2, p. 573):
  $$\mathbf q'(\mathbf x,t) = \sum_\omega\sum_{m=-M}^{M}\check{\mathbf q}_{m,\omega}(x,r)\,e^{im\phi}e^{-i\omega t},\qquad \check{\mathbf q}_{m,\omega} = A_{m\omega}(x)\,\tilde{\mathbf q}_{m,\omega}(x,r) = \exp\!\left(i\int^x\alpha_{m,\omega}(\xi)\,d\xi\right)\tilde{\mathbf q}_{m,\omega}(x,r)$$
- Linear PSE (eq. 4.3, p. 573), operators A–E in Gudmundsson & Colonius (2011):
  $$\big(\mathbf A(\bar{\mathbf q},\bar\alpha,\omega) + \mathbf B(\bar{\mathbf q})\big)\tilde{\mathbf q} + \mathbf C(\bar{\mathbf q})\frac{\partial\tilde{\mathbf q}}{\partial x} + \mathbf D(\bar{\mathbf q})\frac{\partial\tilde{\mathbf q}}{\partial r} = \frac{1}{Re}\mathbf E\,\tilde{\mathbf q}$$
- Normalisation (eq. 4.4, p. 573): $\int_0^\infty \tilde{\mathbf q}^*\,\partial\tilde{\mathbf q}/\partial x\; r\,dr = 0$.
- Radial POD (eq. 4.5–4.7, p. 577–578):
  $$\int R_{i,j}(x,r,r',m,\omega)\,\xi_j(x,r',m,\omega)\,r'\,dr' = \lambda(x,m,\omega)\,\xi_i(x,r,m,\omega),\qquad R_{i,j} = \langle u_i(x,r,m,\omega)\,u_j^*(x,r',m,\omega)\rangle,\qquad \mathrm{POD}(u) = \sqrt{\lambda^{(1)}}\,\xi^{(1)}$$
  Hermitian form: kernel R_{i,j}√(r r′), eigenfunction ξ_i√r. The ensemble average in eq. 4.6 is implied by the cross-spectral definition; the printed equation shows no brackets.
- Inner product, amplitude fit and agreement metric (eq. 4.8–4.11, p. 578, 582):
  $$\langle\mathbf u,\check{\mathbf u}\rangle = \int_0^{r_f}\big[u_x\check u_x^* + u_r\check u_r^* + u_\phi\check u_\phi^*\big]\,r'\,dr',\qquad b(x,\omega,m) = \frac{\langle\mathbf u,\check{\mathbf u}\rangle}{\lVert\check{\mathbf u}\rVert^2},\qquad \beta(x,\omega,m) = \frac{\langle\mathbf u,\check{\mathbf u}\rangle}{\lVert\mathbf u\rVert\,\lVert\check{\mathbf u}\rVert}$$
  with r_f the largest PIV radius and ǔ the PSE velocity. 0 ≤ |β| ≤ 1 measures radial-shape agreement of all three components, independent of amplitude.

> Equations were checked against rendered images of PDF p. 9, 15, 19–20 and 24 (journal p. 567, 573, 577–578, 582). Points to check in the PDF before relying on them:
> - The text uses both x/D = 2 and x/D = 2.5 for the m = 1 amplitude fit and the Fig. 20 comparison (p. 578–579). The §4.3 overview also says the m = 0 case is "at x/D = 2" while §4.3.1 and the captions use 2.5 (p. 575–576).
> - It is not stated whether β in Fig. 26 uses raw spectra or the first POD mode. The text says "full velocity data" (p. 583).
> - Values described as "read from Fig. N" were read off plots at screen resolution.

## Data tables
**Nozzle-exit boundary layer and Reynolds numbers** (Table 1, p. 563). I checked that δ/D, δ₂/D, Re_δ = Re·δ/D and Re_δ₂ = Re·δ₂/D are consistent with D = 50 mm:

| M | δ (mm) | δ/D | δ₂ (mm) | δ₂/D | Re | Re_δ | Re_δ₂ |
|---|---|---|---|---|---|---|---|
| 0.4 | 4.5 | 9.0×10⁻² | 0.477 | 9.5×10⁻³ | 4.2×10⁵ | 3.8×10⁴ | 4.0×10³ |
| 0.5 | 4.25 | 8.5×10⁻² | 0.401 | 8.0×10⁻³ | 5.0×10⁵ | 4.3×10⁴ | 4.0×10³ |
| 0.6 | 4.25 | 8.5×10⁻² | 0.396 | 7.9×10⁻³ | 5.7×10⁵ | 4.9×10⁴ | 4.5×10³ |

**PIV sampling** (p. 564; Nyquist is my arithmetic):

| M | Sampling St | Nyquist St | St range used for PIV vs PSE |
|---|---|---|---|
| 0.4 | 1.82 | 0.91 | 0.3–0.7 (main text) |
| 0.5 | 1.46 | 0.73 | centreline hot-wire only (Fig. 27) |
| 0.6 | 1.21 | 0.61 | 0.4–0.6 with aliasing correction (Fig. 29–30) |

## Figures worth remembering
- **Fig. 2 (p. 563):** layout of the stereo TR-PIV cross-plane and the nine-microphone ring at θ = 20°, R = 42.3D.
- **Fig. 5 (p. 565):** PIV vs hot-wire vs down-sampled hot-wire spectra on and off the axis. A compact demonstration of aliasing in 5 kHz PIV.
- **Fig. 7 (p. 567):** lipline u_x energy against m and against mδ₂/r, collapsing at 0.7.
- **Fig. 8–9 (p. 568):** azimuthal-mode directivity of the sound, and relative efficiency J_m/J₀ in dB against m for St = 0.2–1.1.
- **Fig. 12–14 (p. 570–571):** m = 0 flow–acoustic correlations against τc/D, and maxima/minima of C⁰ and C against r/D.
- **Fig. 15 (p. 574):** centreline m = 0 PSE vs hot-wire for St = 0.1–0.9 over 0 ≤ x/D ≤ 10. The standard picture of PSE success at St ≥ 0.3 and failure at St ≤ 0.2.
- **Fig. 17–18 (p. 577):** radial u_x spectra at x/D = 2.5 (PSE, PIV m = 0, its first POD mode, all-m), the near-π phase jump, and the vortex-jitter sketch.
- **Fig. 22–25 (p. 582–585):** u_x and u_r, m = 0 and 1, St = 0.5, from x/D = 1 to 8.
- **Fig. 26 (p. 586):** |β| against x/D for St = 0.3–0.7, m = 0 and 1. A one-figure summary of where the linear model works.

## Notation
- x, r, φ: axial, radial, azimuthal coordinates. R, θ, φ: spherical coordinates for the sound, θ from the downstream axis. Origin at the nozzle exit.
- M = U/c: acoustic Mach number at the exit. St = fD/U. δ, δ₂: boundary-layer and momentum thickness.
- m: azimuthal wavenumber. ω: angular frequency. k_a = ω/c. α_{m,ω}: complex axial wavenumber in PSE.
- q̃: PSE shape function; A_{mω}: wave-like amplitude; ǔ: PSE velocity; b: fitted complex amplitude; β: normalised inner product.
- C, C⁰: two-point and m = 0 flow–acoustic correlations. ξ⁽¹⁾, λ⁽¹⁾: leading radial-POD eigenfunction and eigenvalue.

## Relevance to this project
This is the experimental foundation for treating jet coherent structures as linear wavepackets on the mean flow, the idea that later screech, impinging-jet and jet–edge models build on. It is subsonic and shock-free, so it gives the baseline KH wavepacket that the shock-containing papers modify.

- **Method versus data type** (CLAUDE.md workflow):
  - *Needs time-resolved data:* the azimuthal-mode spectra, the radial POD at fixed (x, m, ω), and the flow–acoustic correlations. These suit time-resolved acoustics and high-speed imaging. Azimuthal decomposition also needs a full cross-plane or an azimuthal sensor ring; planar schlieren or streamwise PIV cannot give it.
  - *Single-plane radial POD* is a frequency-domain POD restricted to one x station. It filters jitter and noise (Fig. 17–19), but it cannot extract low-energy wavepackets downstream (p. 581, 587). Domain-wide SPOD over (x, r), as in [Nogueira et al. 2019](nogueira-2019-large-scale-streaky-structures-jets.md), was the later fix.
  - *Non-time-resolved PIV* can still use the modelling side: PSE need only the mean flow (p. 572–573), so a 2 Hz PIV mean field can generate wavepacket predictions per St, which can then be compared with POD pairs (my inference).
  - *Aliasing:* 5 kHz PIV gave usable results only up to roughly 75% of Nyquist at M = 0.4, and needed a hot-wire-based correction at M = 0.6 (p. 566, 589). For lab TR-PIV or schlieren, check the Nyquist St against the tones and broadband peak of interest, and down-sample a fast point sensor (microphone, hot-wire, single schlieren pixel) to estimate the aliasing.
- **Intermittency and jitter:** the vortex-jitter explanation for the filled-in null (Fig. 18, p. 576), and the point that agreement holds only "in a statistical sense" over averaged spectra (p. 587), both say the wavepacket varies in amplitude and phase over time. This is what the SPOD → reconstruction → Hilbert POD pipeline is designed to track. Reconstructing the m = 0 band at St 0.3–0.9 and running HPOD would give the time-varying wavepacket amplitude that this paper averages away (my suggestion; not done here). Cavalieri et al. (2011), "Jittering wave-packet models", is the companion source-model paper.
- **Model–data comparison tools to reuse:**
  - The β metric (eq. 4.11) for comparing measured SPOD or POD modes with LSA, PSE or resolvent modes, independently of amplitude.
  - The amplitude fit b (eq. 4.10).
  - Fixing the free amplitude at one station and then testing growth and shape elsewhere.
- **Modelling and simulation side:**
  - Linear PSE about the experimental mean flow (no eddy viscosity, no forcing model) work for St 0.3–0.9 and m = 0, 1 up to the end of the potential core. They fail at St ≤ 0.2 and downstream (p. 575, 581).
  - Later work explains the low-St failure differently from this paper's two candidates. [Pickering et al. 2020](pickering-2020-lift-up-kh-orr-jets.md) and [Towne et al. 2022](towne-2022-database-reduced-complexity-modeling.md) attribute low-St m = 0 structures to the Orr mechanism (KH gives way to Orr near St ≈ 0.3 for m = 0) and recover agreement with resolvent analysis plus eddy viscosity. [Nogueira et al. 2019](nogueira-2019-large-scale-streaky-structures-jets.md) adds lift-up streaks at St → 0 for higher m.
  - [Zhu & Towne 2021](zhu-2021-recursive-one-way-navier-stokes.md) (OWNS-R) keeps the downstream acoustic and Orr branches that PSE damp, at PSE-like cost, but still has no upstream modes.
  - For shock-containing jets, [Nogueira et al. 2021, wavepacket modulation](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) extends PSE to parabolised Floquet equations; it notes that PSE match SPOD in ideally expanded jets but decay too fast when shocks are present.
- **Connection to resonance and feedback work:**
  - The KH wavepacket here is the downstream leg of screech, impinging-jet and jet–edge loops. The upstream leg (guided jet mode) is absent in this free subsonic jet. See [Edgington-Mitchell et al. 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [Jordan et al. 2018](jordan-2018-jet-flap-interaction-tones.md) (same Bruit et Vent nozzle), [Mancinelli et al. 2019](mancinelli-2019-screech-prediction-upstream-modes.md) and [Stavropoulos et al. 2026](stavropoulos-2026-jet-edge-interaction.md).
  - The near-π phase jump in u_x across the shear layer, with a null near the vortex-centre radius (Fig. 18), is a useful check when interpreting POD-pair or SPOD radial profiles in screeching and impinging jets ([Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md)).
  - [Oberleithner et al. 2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md) uses the same mean-flow-linearisation idea for a self-excited global mode; this paper shows it also works for convectively unstable, stochastically driven wavepackets (statistically).
- **Rocket noise:** the axisymmetric superdirectivity and compactness argument (eq. 3.1, Fig. 9) underlies wavepacket source models for low-angle jet noise. The [Lubert et al. 2022 review](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) points to SPOD and resolvent wavepacket ROMs as successors to SP-8072-type source models. Supersonic, heated plumes add Mach-wave radiation, which this subsonic study does not cover.
- **SPOD variants:** for the broadband-plus-tonal spectra of screeching jets, [Yeung & Schmidt 2024](yeung-2024-adaptive-spod-broadband-tonal.md) and [von Saldern et al. 2026](von-saldern-2026-band-ensemble-spod.md) refine the block-averaged spectra that this paper relies on.
- **Facility:** Bruit et Vent, Institut PPrime. Not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:**
  - Gudmundsson & Colonius 2011 (PSE vs near-field pressure; the PSE code used here).
  - Cavalieri et al. 2012 (axisymmetric superdirectivity, same jets).
  - Cavalieri et al. 2011 (jittering wavepacket models).
  - Jordan & Colonius 2013 (wavepacket review).
  - Suzuki & Colonius 2006 (near-field array and instability waves).
  - Jung, Gamard & George 2004 (radial/azimuthal POD of a jet).
  - Breakey et al. 2013 (near-field wavepackets of the same jets).
