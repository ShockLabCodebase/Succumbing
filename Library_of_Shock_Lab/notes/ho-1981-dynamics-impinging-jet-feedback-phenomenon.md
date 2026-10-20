---
key: "ho-1981-dynamics-impinging-jet-feedback-phenomenon"
title: "Dynamics of an impinging jet. Part 1. The feedback phenomenon"
authors: ["Ho, Chih-Ming", "Nosseir, Nagy S."]
year: 1981
type: "article"
venue: "JFM 105, 119–142"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "105", "pages": "119--142"}
doi: "10.1017/S0022112081003133"
arxiv: ""
pdf: "impinging-jets-and-edge-tones/Ho-Nosseir_1981_Dynamics-Of-An-Impinging-Jet-Part-1-The-Feedback-Phenomenon.pdf"
version: "published"
unverified: []
group: false
facility: "USC Aerospace Engineering blowdown air jet in an anechoic chamber (4.78 × 6.20 × 3.63 m)"
data: ["microphones-near"]
methods: ["statistics", "PSD", "spectrogram", "coherence", "resonance-model"]
flow: ["round-jet", "impinging-jet", "subsonic", "shear-layer"]
phenomena: ["impingement-tones", "staging", "mode-switching", "intermittency", "hysteresis", "receptivity", "KH-wavepackets", "coherent-structures"]
params: {"M_j": "0.3–0.9 (exit Mach number; resonance studied at 0.8 and 0.9)", "h/D": "≈2–7.5 (x0/d; resonance only for x0/d < 7.5)", "D": "25.4 mm", "contraction": "289:1", "St": "0.33–0.42 at M 0.9, ≈0.5 at M 0.8 (f_r d/U)", "N": "2–6 waves in the loop", "TR": "unheated (T0 not stated)"}
topics: ["impinging-jets-and-edge-tones"]
related: ["weightman-2019-sound-production-impinging-supersonic-jets", "henderson-2002-flow-structure-supersonic-impinging-jets", "jordan-2018-jet-flap-interaction-tones", "stavropoulos-2026-jet-edge-interaction", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "nogueira-2024-guided-jet-waves", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "mancinelli-2019-screech-prediction-upstream-modes", "tam-1986-bbsan-screech-relationship"]
cites: []
summary: "M ≤ 0.9 jet on a plate (x0/d < 7.5): 0.62U structures + sonic upstream waves phase-locked at the lip, integer-N stages, stage switching, collective interaction"
---
# Dynamics of an impinging jet. Part 1. The feedback phenomenon

- **Authors:** Chih-Ming Ho and Nagy S. Nosseir, Department of Aerospace Engineering, University of Southern California, Los Angeles. Nosseir's later address is the Department of Applied Science, New York University (p. 119). Not Shock Lab group work.
- **Source:** J. Fluid Mech. (1981) 105, 119–142, doi:10.1017/S0022112081003133. Received 27 March 1980, revised 1 July 1980 (p. 119). Funded by AFOSR grant 77-3312 and contract F49620-78-C-0060 (p. 140). Much of the supporting detail is in Nosseir's 1979 USC PhD thesis, which the paper cites throughout.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/impinging-jets-and-edge-tones/Ho-Nosseir_1981_Dynamics-Of-An-Impinging-Jet-Part-1-The-Feedback-Phenomenon.pdf` (24 pp., publisher's scan with an OCR layer). Page refs are journal pages; **PDF page = journal page − 118**. The OCR layer drops every displayed equation, so eqs. 1–11 and Table 1 were read from rendered pages. Figure values marked "read from figure" were read from 200–250 dpi renders.
- **Tags:** impinging jet, subsonic jet, flat plate, feedback loop, self-sustained oscillation, impingement tone, Powell edge-tone model, phase lock at the nozzle lip, integer number of waves N, frequency stages, stage jumps, St_min = 0.33, intermittent switching between stages, hysteresis, near-field microphones, surface pressure transducers, pre-whitening, cross-correlation, cross-spectral phase, upstream-propagating acoustic waves, wavefront angle θ_a, wall-jet refraction, convection velocity 0.62U, two-wave correlation model, collective interaction, multiple vortex merging, initial instability frequency, Michalke, Ho & Huang forced mixing layer

## Summary
Ho and Nosseir study a cold, high-subsonic round jet (d = 25.4 mm, M 0.3–0.9) impinging normally on a large flat plate. Above M ≈ 0.7, with the plate closer than about 7.5d, the broadband plate pressure turns into a nearly periodic wave (p. 119–120). Near-field microphones outside the jet, analysed with "pre-whitened" cross-correlations and cross-spectral phase, identify the two legs of a Powell-type loop. Coherent structures convect downstream at 0.62U. Non-dispersive pressure waves propagate upstream at the ambient sound speed, with nearly conical fronts inclined about 25–35° to the axis, generated where the structures hit the plate (p. 124–129). The two waves have zero phase difference at the plate and an integer multiple of 2π at the nozzle exit. A loop holding an integer number N of waves therefore explains the staircase of frequency stages against plate distance, and with a lower bound St_min = 0.33 it predicts where the stages jump (p. 132–135; Table 1). Near the lip, the high-frequency initial instability (St 3–5) gives way within about 1.3d to the resonant frequency, more than ten times lower. The authors attribute this to "collective interaction", forced multiple vortex merging borrowed from Ho & Huang's mixing-layer experiments (p. 135–139). The modelling is kinematic and qualitative: a constant-speed loop-counting equation, a two-plane-wave model of the correlation peaks, and no stability calculation or simulation.

## Key findings
- **Onset of resonance** (p. 119–120; Figs 2–3):
  - At high subsonic speeds (M > 0.7) and x0/d < 7.5, i.e. the plate within about the potential-core length, plate pressure becomes an almost periodic, slightly distorted sine wave. Fig. 2 contrasts M = 0.5 (broadband) with M = 0.9 (resonant) at x0/d = 4, r0/d = 0 (p. 119, 123).
  - Normalised spectra (Fig. 3, x0/d = 4, r0/d = 1.5) gain energy in a narrow band and lose it elsewhere. The M = 0.8 peak is at St ≈ 0.48 with a harmonic near 1.0 (read from figure; p. 123).
  - In resonance the dynamic load on the plate is up to 50% higher and much more spatially coherent than without resonance (citing Ho & Nosseir 1980; p. 120).
  - Earlier work: Wagner (1971) saw self-sustained oscillations for M > 0.6 and x0/d < 6, and from a standing-wave pattern in schlieren he proposed feedback *through the jet core*. Neuwerth (1973) found far-field frequency stages and also argued for in-core acoustic feedback (p. 120). The authors reject in-core measurements as unreliable and work from the near field outside the jet. They cite Nosseir's (1979) Ribner-type calculation that a thin shear layer is more receptive to acoustic forcing from outside the jet than from inside (p. 120–121).
- **Two branches of the loop** (§3.1, p. 124–131):
  - Ordinary cross-correlations of resonant signals are sinusoidal and show no propagation direction. After pre-whitening (tone removed), two microphones near the jet show peaks at both positive and negative delays (Fig. 4, M 0.9, x0/d 5). Farther out (r/λ_a > 1) only the negative-delay peak remains, so upstream waves dominate there (Fig. 5; p. 124–125).
  - *Upstream waves* (p. 124–129; Figs 6–8):
    - In the nozzle-exit plane the phase at f_r grows almost linearly with radius for r/λ_a > 1, so the fronts are nearly conical. The mean front angle is θ̄_a = 32.5° at x0/d = 5, M = 0.9 (eqs. 1–2, Fig. 6; p. 125–126).
    - The phase between two streamwise-separated microphones is linear in f up to 10 kHz, so the waves are non-dispersive. The deviations shrink with radius as contamination from the downstream wave decays (Fig. 7a; p. 126).
    - The true phase speed in the θ_a direction is close to the ambient sound speed a for r_II/d = 3–6, falling slightly with r_II/d because the slope in Fig. 6 is not quite constant (eqs. 3–4, Fig. 7b; p. 126–127).
    - A second method, following the envelope of cross-correlation peaks as one microphone moves radially (maximum at r_II/d = 3.5), gives the same direction (Nosseir 1979; p. 128).
    - θ_a falls with plate distance, from about 37° at x0/d ≈ 3 to about 22° at x0/d ≈ 7 (Fig. 8, M 0.8 and 0.9; read from figure). The authors attribute the angle to refraction by the wall jet (mean speed about 0.5U), whose speed falls with x0/d (p. 128–129).
  - *Downstream waves*: the broadband speed C̄₁ (from pre-whitened correlation delays) and the phase speed at f_r, C₁(f_r), are both 0.62U along x/d ≈ 0.7–3.8 (Fig. 9; p. 128–129; range read from figure). This matches the coherent-structure convection speed of Lau, Fisher & Fuchs (1972; hot wire, low speed) and Neuwerth (1973; movies), so the large structures drive the loop (p. 129). The measured points scatter over roughly 0.55–0.68U (read from figure).
  - *Two-wave correlation model* (p. 129–131, Appendix p. 140–141; Figs 10–12):
    - Autocorrelations of near-field signals show extra peaks [3] and [4] at long delays, symmetric about τ = 0. Cross-correlations show them asymmetrically (Figs 10–11).
    - Model: the pressure is the sum of a downstream plane wave at C₁ = 0.62U and an upstream wave at a in direction θ_a, with zero phase difference at an apparent source on the plate where the structures impinge (r_s/d ≈ 1).
    - This gives four delays (eq. 5). The side peaks of an autocorrelation are the round trip from the microphone to the plate and back (eq. 6).
    - Lines through the peaks of correlations along x form a W shape (Fig. 11). Predicted τ[3] and τ[4] agree "excellent[ly]" with measurement over (x0 − x_i)/Δx = 1–6.5 at M 0.8 (Fig. 12; p. 131).
    - The authors explain the success by the long delays: they are set by long-wavelength, low-frequency coherent-structure pressure, not small-scale turbulence (p. 131).
- **Phase lock at the nozzle exit** (§3.2, p. 132–133; Fig. 13):
  - The phase at f_r along the shear-layer edge (downstream wave) and at r/d > 2.5 (upstream wave) was measured relative to a plate transducer at r0/d = 1. The two lines meet at zero at the plate, and their difference at x/d = 0 is an integer multiple of 2π: **5(2π) at M = 0.8, x0/d = 4, f_r = 5.5 kHz** (Fig. 13). This was confirmed at other x0/d in Nosseir (1979) (p. 132).
  - Reading Fig. 13 (my reading): the downstream line rises to about 6.75π and the upstream one falls to about −3.3π over 4d. That gives C₁ ≈ 166 m s⁻¹ (≈ 0.6–0.64U, depending on the unstated U) and an *axial* phase speed of the upstream leg of about 340 m s⁻¹ ≈ a.
- **Frequency stages** (p. 132–135; Fig. 14, Table 1):
  - At M = 0.9 the resonant Strouhal number (St)_r = f_r d/U falls with x0/d to a minimum of about 0.33, jumps up, and falls again, in five branches over x0/d ≈ 2–7.5 (Fig. 14a). This is the staging typical of cavities and edge tones (Rockwell & Naudascher 1979; p. 132).
  - Requiring an integer number of waves N in the loop (eq. 7a) makes N constant on each branch, N = 2 to 6 (Fig. 14b). Moving the plate away lengthens both wavelengths, so the frequency falls until it reaches the minimum, and then N rises by one (p. 132–135).
  - The lower limit **St ≈ 0.33** is close to the preferred mode of the free jet column (Crow & Champagne 1971; p. 135). With eq. 7b (K_v = 0.62, θ_a = 25°, M = 0.9) it predicts the jump positions at x0/d = 1.25N, against the measured 2.40, 3.75, 4.8–5.0, 6.0–6.5 and 7.50 for N = 2–6 (Table 1, p. 134–135).
- **Switching at a stage boundary** (p. 134–135; Fig. 15): at M = 0.9, x0/d = 2.35, a 2.4 s cross-spectrum of two plate transducers has two peaks, f_r1 ≈ 4.4 kHz and f_r2 ≈ 5.1 kHz (read from figure). Short 0.061 s spectra usually show only one of them, so the flow "switches from one resonant mode to another mode intermittently" at stage discontinuities. The authors call this hysteresis but show only the coexistence at one x0/d. No sweep up and down in x0/d and no dwell times are given.
- **Collective interaction** (§3.3, p. 135–139; Figs 16–20):
  - At x/d = 0.13, r/d = 0.5, the near-field signal carries high-frequency fluctuations on top of the resonant wave (Fig. 16). Its spectrum has the resonant peak (≈4.1 kHz, with harmonics) and a broad hump at f_in ≈ 50–55 kHz (Fig. 17, M 0.9, x0/d 4.5; read from figure).
  - Initial-instability Strouhal numbers are 3 < St < 5 and scale as M^{1/2}, as Michalke's theory predicts. They are the same with and without the plate (Fig. 18). Resonant St at M 0.8 (≈0.5) and 0.9 (≈0.38) is more than an order of magnitude lower (p. 135, 137; values read from Fig. 18).
  - By x/d = 1.31 (r/d = 1.0) the signal is almost purely at f_r (Fig. 16). Successive pairing would need three to four pairings for a factor of 10 and a long distance, and instability waves an order of magnitude above f_r cannot phase-lock to the upstream waves (p. 135–136).
  - Proposed mechanism: the upstream waves flap the thin shear layer at f_r. In the converging half-cycle many small vortices are drawn together and coalesce at once; in the diverging half they are stretched apart and do not interact (Fig. 20; Ho & Huang 1978/1980, Fig. 19; p. 137–139). Nosseir & Ho (1980) separated the pressure under vortices from that under the "valleys" between them and confirmed the multiple merging with maximum-entropy spectra (p. 138).
  - It is a nonlinear secondary instability that needs high-amplitude forcing, because low-frequency waves grow slowly in a thin shear layer (Michalke). The authors link the high-M onset of resonance to the rapid rise of upstream wave amplitude with M (p. 138).
  - After the collective interaction the passage frequency stays constant to the plate. There is no further merging because the subharmonic has neither the distance nor the thick shear layer it needs, so the post-merger passage frequency is the resonant frequency (p. 139).
- **Conclusions** (p. 139–140; Fig. 21): the loop is modulated shear layer → collective interaction → large coherent structures → impingement → upstream waves at the ambient sound speed → in-phase forcing at the lip. The authors claim that the rapid frequency drop and shear-layer growth make the resonance "independent of the initial conditions of the jet" (p. 140). The paper shows no test of this, e.g. with lip or boundary-layer changes.

## Setup / method
- **Facility** (p. 121–122; Fig. 1): air jet from a stagnation chamber through a d = 2.54 cm nozzle with contraction ratio 289:1. Turbulence level in the chamber is 0.4%. A low-noise control valve holds stagnation pressure within 2% of the mean gauge pressure. Five storage tanks give 3–10 min of run time. Exit Mach number 0.3–0.9 (subsonic only).
  - Anechoic chamber 4.78 m × 6.20 m × 3.63 m, low-frequency cut-off 150 Hz.
  - Plate: steel, 76.20 × 76.20 × 0.64 cm (30d square), on a four-degree-of-freedom traverse, streamwise and transverse remotely controlled. Accelerometer (B&K 4324) vibration amplitude was 2.84 × 10⁻⁵ cm at M = 0.9 (p. 122).
  - Not stated: stagnation temperature, U, Reynolds number, nozzle lip thickness, exit boundary-layer state and nozzle exterior shape. My estimate is Re ≈ 6 × 10⁵ at M 0.9, assuming T0 at room temperature.
- **Sensors** (p. 122):
  - Plate: 46 sites for 0.32 cm Kulite XTEL-1-190-25 piezoresistive transducers (natural frequency > 100 kHz), with unused sites plugged flush. Coordinates (r0, φ0) on the plate.
  - Near field between nozzle and plate: 0.32 cm (1/8 in.) B&K 4138 condenser microphones, 7 Hz–140 kHz, in the hydrodynamic near field. Microphones I, II, III are placed along x at various r (Fig. 1; figure captions give positions).
  - Length scales are d and the acoustic wavelength at resonance λ_a = a/f_r.
- **Acquisition and processing** (p. 122–124):
  - HP 3955A 14-channel tape recorder: FM mode d.c.–20 kHz, direct mode 300 Hz–300 kHz. Digitised and processed on a PDP 11/55; all spectra by FFT. Sampling rate, block length, window and number of averages are not stated. Fig. 15 gives the averaging times, 2.4 s (long) and 0.061 s (short).
  - **Pre-whitening** (Nosseir 1979, digital version of Williams & Purdy 1970): in the cross-spectrum, replace the resonant peak, and its first harmonic, by the mean of the two neighbouring frequency bins, then inverse-FFT to a correlation. This removes the tone that makes raw correlations sinusoidal and leaves a clear delay peak, from which the broadband convection velocity C̄₁ is computed (p. 123–124). It is a notch filter in effect. It needs time-resolved, simultaneous two-point signals and assumes the tone occupies one bin (plus its harmonic).
  - **Phase-based speeds**: unwrapped cross-spectral phase at f_r against radial position (wavefront angle, eqs. 1–2) and against f for streamwise pairs (phase speed, eqs. 3–4). The true speed needs the wavefront direction from multi-point data, not just one pair (p. 124–126).
  - **Correlation delays** of auto- and cross-correlations between microphones along x, compared with the two-wave model (eqs. 5–6).
  - **Short-time spectra** (0.061 s) against a long average (2.4 s) to show switching (Fig. 15).
- **Modelling side** (all kinematic or qualitative; no computation of the flow):
  - *Loop-count model* (eq. 7):
    - The downstream wave is at C₁ = K_vU with K_v = 0.62, constant in x and f. The upstream wave is at C₂ = a along θ_a, with axial wavelength (C₂/cos θ_a)/f.
    - Zero phase difference at the plate and integer N at the lip, so no reflection or receptivity phase lag (Powell's p = 0).
    - The loop length is x0, ignoring the apparent source radius r_s ≈ d and the lip radius.
    - St_min = 0.33 is taken as the stage-ending frequency from experiment, linked to Crow & Champagne's preferred mode.
    - It does not select N or predict the frequency within a stage. Powell's (1961) unit-gain criterion is mentioned but not used (p. 120).
  - *Two-wave correlation model* (Appendix): two monochromatic plane waves at f_r, with amplitudes a(ξ), b(ξ). The cross-correlation is the sum of the four component correlations, whose peaks sit at the four delays (eqs. 8–11). The model is used for broadband correlation peaks, although strictly monochromatic waves would give periodic correlations; the authors argue the long-delay peaks come from long-wavelength coherent-structure pressure (p. 131).
  - *Collective interaction*: a qualitative vortex-dynamics picture (Batchelor 1967 induced velocities) from Ho & Huang's forced plane mixing layer, with Michalke's (1971/1972) linear compressible stability theory cited for the initial instability frequency and the slow growth of low-frequency waves. No stability calculation is made here.
  - *Receptivity*: Nosseir's (1979) Ribner (1957)-type calculation of shear-layer response to acoustic forcing is quoted as showing that external forcing is more effective than internal (p. 120–121). No details are given.

## Key equations
All read from rendered pages (the OCR layer omits them).

- **Wavefront angle** (eq. 1, p. 125): $\theta_a=\sin^{-1}\!\left[\dfrac{1}{2\pi}\dfrac{d\nu(f_r)}{d(r/\lambda_a)}\right]$, with ν(f_r) the cross-spectral phase at f_r between a microphone fixed near the lip and one moved radially in the exit plane. Eq. 2 is the same with the slope averaged (overbar) to give θ̄_a for a nearly conical front.
- **Apparent and true phase velocity** (eqs. 3–4, p. 126): $\mathbf C_2'(f)=2\pi\,\boldsymbol\xi_{III,II}\Big/\dfrac{\nu_{III,II}(f)}{f}$ and $\mathbf C_2(f)=2\pi\,\dfrac{(\boldsymbol\xi_{III,II}\cdot\boldsymbol\theta_a)}{\nu_{III,II}(f)/f}\,\boldsymbol\theta_a$, where ξ_III,II joins microphones III and II and θ_a is the unit vector at angle θ_a to the axis.
- **Correlation delays of the two-wave model** (eqs. 5a–d, p. 129):
  $\tau^{[1]}=(x_j-x_i)/C_1$, $\tau^{[2]}=-\boldsymbol\xi_{i,j}\cdot\boldsymbol\theta_a/C_2$,
  $\tau^{[3]}=-\left(\dfrac{x_0-x_j}{C_1}+\dfrac{\boldsymbol\xi_{i,s}\cdot\boldsymbol\theta_a}{C_2}\right)$, $\tau^{[4]}=\dfrac{x_0-x_i}{C_1}+\dfrac{\boldsymbol\xi_{j,s}\cdot\boldsymbol\theta_a}{C_2}$,
  with ξ_i,s, ξ_j,s joining x_i, x_j to the apparent source s on the plate. [1] is downstream x_i → x_j; [2] upstream x_j → x_i; [3] downstream from x_j to the plate and back to x_i; [4] downstream from x_i to the plate and back to x_j.
- **Autocorrelation** (eqs. 6a,b, p. 131): $\tau^{[1]}=\tau^{[2]}=0$, and the side peaks sit at $\pm\left(\dfrac{x_0-x_i}{C_1}+\dfrac{\boldsymbol\xi_{i,s}\cdot\boldsymbol\theta_a}{C_2}\right)$, the round-trip time.
  > Eq. 6b is printed as τ[4] = τ[3] = (…). Setting i = j in eq. 5c gives τ[3] = −τ[4], which matches the symmetric peaks of Fig. 10. Treat the printed sign as a slip; verify.
- **Integer loop count** (eq. 7a, p. 132): $N=\dfrac{x_0}{\lambda_1(f_r)}+\dfrac{x_0}{\lambda_2(f_r)}$, with $\lambda_1=C_1(f_r)/f_r$ and $\lambda_2=[C_2(f_r)/\cos\theta_a]/f_r$.
- **Stage-jump positions** (eq. 7b, p. 135): $\dfrac{x_0}{d}=\dfrac{1}{(St)_r}\,\dfrac{N}{1/K_v+M\cos\theta_a}$, with (St)_r = (St)_min = 0.33 and K_v = C₁/U. This follows from 7a with C₂ = a, so the M in it is strictly U/a (ambient). In [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md) this is eq. 1.3 (p. 6), described as Powell's equation with p = 0.
- **Two-wave pressure field** (eq. 8, p. 140): $p(t,\boldsymbol\xi)=a(\boldsymbol\xi)\,e^{i(\omega_r t-\mathbf K_1 x+\nu_c)}+b(\boldsymbol\xi)\,e^{i(\omega_r t+\mathbf K_2\cdot\boldsymbol\xi)}$, with $C_1=\omega_r/|\mathbf K_1|$ and $\mathbf C_2=(\omega_r/|\mathbf K_2|)\boldsymbol\theta_a$.
- **Phase difference** (eq. 9, p. 140): $\nu=-\mathbf K_1 x-\mathbf K_2\cdot\boldsymbol\xi+\nu_c$. Zero at the apparent source ξ = ξ_s gives (eq. 10, p. 141) $\nu_c=|\mathbf K_1|x_0+\mathbf K_2\cdot\boldsymbol\xi_s$ and $\nu=|\mathbf K_1|(x-x_0)+\mathbf K_2\cdot(\boldsymbol\xi_s-\boldsymbol\xi)$.
- **Correlation of the sum** (eq. 11, p. 141): with $p=A\alpha+B\beta$ and $R_{i,j}(\tau)=\lim_{T\to\infty}\frac1T\int_0^T p(t,\boldsymbol\xi_i)p(t+\tau,\boldsymbol\xi_j)\,dt$:
  $R_{i,j}=A_iA_jR_{\alpha_i\alpha_j}+B_iB_jR_{\beta_i\beta_j}+A_iB_jR_{\alpha_i\beta_j}+A_jB_iR_{\beta_i\alpha_j}$. The four terms give τ[1]–τ[4] in that order.
  > The text says "Substituting from (11)" before the equation that carries the number (11); the decomposition p = Aα + Bβ itself is unnumbered. Numbering slip in the paper.

> My checks:
> - Table 1 is reproduced exactly by eq. 7b: 0.33 × (1/0.62 + 0.9 cos 25°) = 0.8014, so x0/d = 1.248N → 1.25, 2.50, 3.74, 4.99, 6.24, 7.49.
> - Fig. 12 slope: a₀τ[4]/Δx should grow with (x0 − x_i)/Δx at about a₀/C₁ + cos θ_a ≈ 2.0–2.2 + 0.85 ≈ 3, which matches the plotted line (≈3.2, read from figure).
> - **Eq. 7a against Fig. 14a.** I took St from Fig. 14a, K_v = 0.62 and θ_a from Fig. 8. With these, eq. 7a gives an integer N only at the low-St end of each stage, and 0.4–0.7 below it at the start:
>   - N = 3 branch: 2.3 at x0/d 2.35, rising to 3.0 at 3.76.
>   - N = 4 branch: 3.5 → 4.1.
>   - N = 5 branch: 4.5 → 5.2.
>   - N = 6 branch: 5.6 → 6.2.
>
>   Along a branch St·x0 rises 10–30%, where constant speeds would keep it constant. The N = 2 branch (1.9 → 2.0) is the only one that stays near an integer. Each observed jump (St ratio 1.11–1.19) raises the eq.-7a count by only 0.3–0.5, against the ratio (N + 1)/N = 1.5–1.2 that constant speeds would need. The integer staircase of Fig. 14b ("measured" circles) must therefore use locally measured wavelengths rather than the constant K_v. Table 1 agrees with experiment because it uses only the stage ends. All values are read from figures; verify.

## Data tables
**Plate positions at frequency discontinuities** (Table 1, p. 134; M = 0.9, θ_a = 25°, K_v = 0.62):

| Stage N | x0/d from eq. 7b | x0/d measured |
|---|---|---|
| 1 | 1.25 | — |
| 2 | 2.50 | 2.40 |
| 3 | 3.74 | 3.75 |
| 4 | 4.99 | 4.8–5.0 |
| 5 | 6.24 | 6.0–6.5 |
| 6 | 7.49 | 7.50 |

**Frequency stages at M = 0.9** (Fig. 14, p. 133; **read from figure**, ±0.05 in x0/d and ±0.005 in St; N from Fig. 14b):

| N | x0/d at stage start | St at start | x0/d at stage end | St at end |
|---|---|---|---|---|
| 2 | 2.0 | 0.400 | 2.37 | 0.360 |
| 3 | 2.35 | 0.415 | 3.76 | 0.336 |
| 4 | 3.67 | 0.397 | 5.0 | 0.336 |
| 5 | 4.82 | 0.385 | 6.5 | 0.328 |
| 6 | 6.0 | 0.382 | 7.48 | 0.337 |

Neighbouring stages overlap by about 0.05–0.5d (2.35, 3.7–3.8, 4.8–5.0, 6.0–6.5), the band where switching (Fig. 15) is expected.

**Single-condition tones** (p. 123, 133–136; see the figures for positions):

| Condition | f_r | St = f_r d/U | N | Source |
|---|---|---|---|---|
| M 0.8, x0/d 4, r0/d 1.5 | — | ≈0.48 (harmonic ≈1.0) | — | Fig. 3 (read) |
| M 0.8, x0/d 4, ref. r0/d 1 | 5.5 kHz | — | 5 (phase 5 × 2π) | Fig. 13 (caption, printed label) |
| M 0.9, x0/d 2.35 | ≈4.4 and ≈5.1 kHz, intermittent | ≈0.36 and ≈0.415 (Fig. 14a) | 2 and 3 (Fig. 14b) | Fig. 15 (read) |
| M 0.9, x0/d 4.5 | ≈4.1 kHz (+ harmonics); f_in ≈ 50–55 kHz | ≈0.36 (Fig. 14a) | 4 | Fig. 17 (read) |

> U is not stated, so Hz and St cannot be converted reliably. The Fig. 15 frequencies with the Fig. 14a St imply U ≈ 310 m s⁻¹ (≈ M a∞) at M 0.9. The Fig. 13 case with N = 5 in eq. 7a implies U ≈ 256 m s⁻¹ at M 0.8 (≈ the isentropic cold-jet value). An isentropic jet with T0 = 293 K would have U ≈ 285 m s⁻¹ at M 0.9 and ≈ 258 m s⁻¹ at M 0.8 (my arithmetic).

## Figures worth remembering
- **Fig. 1 (p. 122):** set-up, with near-field microphones I–III between nozzle and plate and the plate transducer grid (r0, φ0).
- **Fig. 2 (p. 123):** plate pressure traces at M 0.5 (broadband) and M 0.9 (near-sinusoidal resonance), x0/d 4, r0/d 0.
- **Fig. 4 (p. 125):** raw against pre-whitened cross-correlation (M 0.9, x0/d 5). The key demonstration of the pre-whitening method: two peaks at ± delays appear only after the tone is removed.
- **Fig. 6 (p. 126):** phase at f_r against r_II/d and r_II/λ_a in the exit plane, linear for r/λ_a > 1 (conical fronts), with an inset defining θ_a.
- **Fig. 7 (p. 127):** (a) phase linear in f to 10 kHz (non-dispersive upstream waves); (b) C₂/a₀ ≈ 1 for r_II/d 3–6.
- **Fig. 8 (p. 128):** θ_a against x0/d, falling from ≈37° to ≈22°.
- **Fig. 9 (p. 128):** C̄₁/U and C₁(f_r)/U ≈ 0.62 (downstream), C̄₂/a₀ and C₂(f_r)/a₀ ≈ −1 (upstream), along x/d.
- **Figs 10–12 (p. 130–131):** auto- and cross-correlations with the round-trip peaks [3] and [4], the W-shaped pattern, and model against measured delays.
- **Fig. 13 (p. 133):** the key loop figure. Downstream and upstream phase lines meet at the plate and differ by 5 × 2π at the lip.
- **Fig. 14 (p. 133):** the key staging figure. (a) St against x0/d in five branches at M 0.9; (b) N = 2–6 staircase.
- **Fig. 15 (p. 134):** long-time spectrum with two tones against short-time spectra with one each. The earliest switching evidence for impinging jets in the library.
- **Figs 16–18 (p. 136–137):** near-lip signal and spectrum with the f_in hump; St_in ∝ M^{1/2} for free and impinging jets, with the resonant St far below.
- **Figs 19–21 (p. 138–140):** Ho & Huang forced mixing-layer photograph, the collective-interaction sketch, and the loop block diagram.

## Notation
- d: nozzle diameter (25.4 mm); x: streamwise distance from the nozzle exit; r, φ: radial, azimuthal; x0: nozzle-to-plate distance; r0, φ0: plate coordinates; r_s: radius of the apparent source on the plate (≈ d).
- M: jet exit Mach number; U: jet exit velocity; a (a₀): ambient sound speed; St = f d/U; (St)_r: resonant; (St)_min = 0.33; (St)_in: initial instability.
- f_r, ω_r, T_r: resonant frequency, angular frequency, period; f_in: initial instability frequency; λ_a = a/f_r.
- C₁, C̄₁: phase speed at f and broadband (pre-whitened) convection speed of the downstream waves; K_v = C₁/U = 0.62. C₂, C̄₂: upstream wave speed in the θ_a direction; C₂′: apparent speed along a microphone pair.
- θ_a (unit vector **θ**_a): angle between the jet axis and the upstream wavefront normal; θ̄_a: its mean.
- ν(f): cross-spectral phase; ν_III,II: between microphones III and II; ξ: position vector; ξ_ij, ξ_i,s: vectors between points and to the source s.
- N: number of waves (downstream plus upstream) in the loop; λ₁, λ₂: downstream and axial upstream wavelengths.
- R_i,j(τ): cross-correlation (Arabic subscripts: plate transducers; Roman: near-field microphones); R̃: pre-whitened correlation; τ[1]–τ[4]: model delays; G: power or cross-spectrum.
- K₁, K₂: wavenumbers of the downstream and upstream waves in the appendix model; a(ξ), b(ξ) and A, B: their amplitudes; α, β: the unit-amplitude waves; ν_c: constant phase shift.

## Relevance to this project
This is the classical experimental source for the subsonic impinging-jet feedback loop, and eq. 7b is the usual baseline frequency model; the user's thesis uses it ([Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md), eq. 1.3, p. 6). It fits the lab's focus on resonance and feedback (CLAUDE.md). The flow is subsonic and shock-free, unlike the group's supersonic impinging jets, so it isolates the KH-plus-upstream-wave loop without leakage, shocklets or stand-off shocks ([Edgington-Mitchell 2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md); [Henderson 2002](henderson-2002-flow-structure-supersonic-impinging-jets.md)).

**Reading it critically**
- **External or guided closure.** All upstream-wave measurements are outside the jet (r/d > 2.5 for Fig. 13, r/λ_a > 1 for the front angle). There they see non-dispersive waves at a∞ with fronts at 25–35°, and the authors reject an in-core path (p. 120).
  - Later theory reopens this: the core of a high-subsonic jet supports upstream guided/trapped waves ([Towne 2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md), resonance window 0.82 < M < 1 for isothermal jets; [Jordan 2018](jordan-2018-jet-flap-interaction-tones.md); [Nogueira 2024](nogueira-2024-guided-jet-waves.md), p. 31–33). Wagner's (1971) standing-wave pattern inside the jet (p. 120) looks like the upstream duct-like waves imaged in subsonic impinging jets by [Edgington-Mitchell 2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (Fig. 3 of that note).
  - Tam & Ahuja (1990, not in the library; from memory) modelled subsonic impinging tones with the upstream neutral jet mode, and their cut-on would also explain why tones need M ≳ 0.6–0.7 here. The authors' own explanation of the high-M onset is the forcing amplitude needed for collective interaction (p. 138).
  - Ho & Nosseir's data fit either picture. A guided wave near sonic speed inside the jet and the sound outside would look the same at r/d > 2.5. The oblique arrival (θ_a ≈ 30°, not straight upstream) matters for Nogueira's argument that an external wave travelling directly upstream is cancelled at the shear layer.
  - The external-forcing argument rests on Nosseir's unpublished calculation (p. 120–121). It is the same conclusion the thesis reached for supersonic impinging jets by foam tests (external closure; Weightman 2019, p. 75–81).
- **Eq. 7 is a stage-boundary rule, not a frequency model.** My Fig. 14a check (Key equations) shows constant K_v = 0.62 and C₂ = a give integer N only at the low-St end of each stage. Within a stage the frequency falls more slowly than 1/x0, and the jumps are 11–19% rather than (N + 1)/N.
  - This is the kind of mismatch that [Jordan 2018](jordan-2018-jet-flap-interaction-tones.md) (p. 4–5, 9) calls "frequency squeezing" and attributes to a dispersive upstream wave. A guided upstream wave with phase speed below a∞, falling with St, would shrink the jumps. This is my suggestion and has not been tested on these data.
  - Powell's phase lag p (Henderson 2002, N + p ≈ 4.4) cannot absorb a mismatch that drifts within a stage, unless p depends on frequency.
  - Fig. 13's upstream line implies an axial phase speed ≈ a rather than a/cos θ_a (my reading). That is a second hint that the λ₂ of eq. 7a is not what the loop uses.
- **Integer loop phase in a screech analogue.** [Mercier 2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md) did the free-jet screech version of Fig. 13 (phase at the lip = 2πm with a 0 to +0.5π excess, m = 4 → 5 at A1 → A2). Both find integer loop counts and a count that rises by one at a stage jump. In screech the loop length is not fixed by geometry, which is why [Tam 1986](tam-1986-bbsan-screech-relationship.md) (p. 9) argued the 2πN condition alone does not select the frequency. Here x0 is fixed, so stages follow directly from x0. [Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md) (p. 2) makes the same point, with the plate replacing the shock cell as downstream reflector.
- **Switching and "hysteresis".** Fig. 15 is evidence of intermittent switching between N = 2 and 3 at one x0/d, on 0.061 s windows (≈270 cycles), not of hysteresis. The overlap of neighbouring branches in Fig. 14a (up to 0.5d at the N = 5/6 boundary) is where bistability would be expected. No traverse direction or dwell time is given. Compare the dwell-time statistics of A1/A2 screech switching on the screech page and the switches between upstream-wave loops in jet–edge tones ([Stavropoulos 2026](stavropoulos-2026-jet-edge-interaction.md), p. 15–18).
- **"Independent of initial conditions."** The paper never varies the lip or boundary layer, and the claim conflicts with later evidence that nozzle exterior and lip geometry select the impinging mode (Weightman 2019, p. 70–81, supersonic). Treat it as the authors' hypothesis.
- **Collective interaction** is inferred from one near-lip signal and spectrum plus an analogy to a forced plane mixing layer. There is no visualisation of the impinging jet's lip region and no measurement of shear-layer growth. The f_in hump (St 3–5) is consistent with Michalke's initial instability, but the jump from f_in to f_r within 1.3d is shown at one condition only.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Every analysis needs time-resolved point signals** (tape-recorded microphones and Kulites, 300 Hz–300 kHz):
  - auto- and cross-correlations;
  - pre-whitening;
  - cross-spectral phase at f_r;
  - short-time spectra.

  None is field-resolved, and there is no modal decomposition.
- **Pre-whitening** is a tonal notch before correlating. With modern multi-point time-resolved data its jobs are better done by:
  - SPOD-based filtering: remove the leading mode at f_r, or keep only it ([Nekkanti 2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md));
  - a k_x-sign split of time-resolved schlieren, which separates downstream from upstream waves directly instead of through correlation delays.
- **Round-trip delay from one sensor** (eq. 6) is a cheap loop-timing measurement: the autocorrelation side peaks after removing the tone. It could be applied to the lab's near-field microphones on impinging rigs to estimate C₁ and the return path without imaging.
- **Non-time-resolved PIV.** The loop count N can be measured from POD pairs instead of microphones: take the phase of the complex mode along the shear layer for the downstream leg, and the k_x < 0 part (or a microphone reference) for the upstream leg, as in the thesis Powell-equation work (Weightman 2019, ch. 7).
- **SPOD → reconstruction → Hilbert POD.** Fig. 15 (two tones 0.7 kHz apart, alternating on sub-0.1 s scales) is a natural target.
  - SPOD needs a frequency resolution well below 0.7 kHz, i.e. blocks of a few ms or longer.
  - Reconstruct each band separately, then use a Hilbert transform or HPOD ([Raiola 2025](raiola-2025-hilbert-pod.md)) to get instantaneous amplitude per stage. That gives dwell-time statistics and tests whether N changes abruptly or the two loops coexist.
  - Sweeping x0/d up and down through a stage overlap would test the claimed hysteresis.

**Modelling side**
- The paper gives the constant-speed loop model with its assumptions (Setup / method). A modern re-analysis would replace C₁ = 0.62U and C₂ = a with vortex-sheet or finite-thickness dispersion relations (KH⁺ and the guided k⁻ waves) and a reflection phase at plate and lip, as [Jordan 2018](jordan-2018-jet-flap-interaction-tones.md) did for jet–edge tones. The Fig. 14a table above is a ready validation set at M 0.9.
- No stability, resolvent or LES analysis of the impinging mean flow appears here. Michalke's theory is used only for f_in ∝ M^{1/2} and slow low-frequency growth.

**PyFR staging LES and rocket noise.** The PyFR runs are free-jet screech, but the continuation logic transfers: impinging stages are indexed by an integer N and bounded by stage overlaps, just as A1/A2 are, so x0/d is a continuation parameter analogous to NPR. Subsonic impingement has little direct bearing on launch-pad noise, where tones are absent ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)). The finding that impingement makes the plate loading 50% higher and more coherent (p. 120) bears on deflector loading.

**Items to verify against the PDF**
1. θ_a values: 32.5° in the text for M 0.9, x0/d 5 (p. 126), but 35° in the Fig. 7b caption (p. 127) and 25° in Table 1 (p. 134). Fig. 8 gives about 30° at x0/d 5 (read). Table 1 needs 25° to reproduce its own numbers.
2. Eq. 6b printed as τ[4] = τ[3] (p. 131); eq. 5 implies τ[3] = −τ[4].
3. The text on p. 131 refers to "the autocorrelation (figure 9)"; it should be Fig. 10.
4. Appendix numbering: "Substituting from (11)" precedes the equation labelled (11) (p. 141).
5. Michalke is cited as 1971 in the text (p. 135, 138) but listed as 1972 (Z. Flugwiss. 19) in the references (p. 142).
6. Text gives the stage minimum as "0.3" (p. 132) and "St ≃ 0.33" (p. 135); Fig. 14a branch ends read 0.328–0.360.
7. U, T0 and the definition of M (exit Mach or U/a∞) are not stated. Eq. 7b needs M = U/a∞. The Hz-to-St conversions in the Data tables imply inconsistent U (≈310 m s⁻¹ at M 0.9 from Fig. 15; ≈256 m s⁻¹ at M 0.8 from Fig. 13).
8. The eq.-7a check against Fig. 14a (non-integer N mid-stage) uses values read from figures; verify branch end points and θ_a.
9. Fig. 13 upstream axial phase speed ≈ a (my reading of −3.3π over 4d) against a/cos θ_a in eq. 7a.
10. Fig. 15 tone frequencies (≈4.4, 5.1 kHz), Fig. 17 f_r ≈ 4.1 kHz and f_in ≈ 50–55 kHz, and Fig. 18 resonant St at M 0.8/0.9 are read from figures.
11. The Fig. 16 caption gives x0/d = 4.5 (the OCR reads 4.6); the Fig. 17 caption also gives 4.5.

**Candidates for `/add-paper`:** Ho & Nosseir 1980 (Turbulent Shear Flows 2, large coherent structures in an impinging jet); Nosseir & Ho 1980 (AIAA 80-0980, pressure fields from instability waves and coherent structures); Part 2 of this series (noise generation; not cited here, so venue unverified); Nosseir 1979 (USC PhD thesis); Ho & Huang 1980 (listed as "JFM, submitted"; published version not checked); Powell 1961 (JASA 33, edge tone); Tam & Ahuja 1990 (impinging tones via the upstream jet mode; not cited by this paper, details from memory); Rockwell & Naudascher 1979 (Annu. Rev.); Crow & Champagne 1971 (JFM 48); Neuwerth 1973 and Wagner 1971 (in-core feedback hypothesis).
