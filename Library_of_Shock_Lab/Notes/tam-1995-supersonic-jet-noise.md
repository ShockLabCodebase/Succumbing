---
key: "tam-1995-supersonic-jet-noise"
title: "Supersonic jet noise"
authors: ["Tam, C. K. W."]
year: 1995
type: "review"
venue: "Annu. Rev. Fluid Mech. 27, 17–43"
bib: {"journal": "Annual Review of Fluid Mechanics", "volume": "27", "pages": "17--43"}
doi: "10.1146/annurev.fl.27.010195.000313"
arxiv: ""
pdf: "jet-noise-mechanisms/Tam_1995_Supersonic-Jet-Noise.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["none"]
methods: ["LSA-local", "shock-cell-model", "resonance-model"]
flow: ["round-jet", "supersonic", "underexpanded", "overexpanded", "heated"]
phenomena: ["mixing-noise", "Mach-wave-radiation", "BBSAN", "screech", "shock-cells", "mode-switching", "directivity"]
params: {}
topics: ["jet-noise-mechanisms", "screech", "shock-cell-models", "screech-staging-and-mode-switching", "screech-frequency-and-global-modes"]
related: ["tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "raman-1998-supersonic-jet-screech-review", "papamoschou-1988-compressible-turbulent-shear-layer", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: ["norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets"]
summary: "Review: mixing noise as Mach waves from instability waves (45–60°), BBSAN from instability wave × shock-cell modes, screech via external feedback and an St formula; amplitude unpredictable"
---
# Supersonic jet noise

- **Authors:** Christopher K. W. Tam (Department of Mathematics, Florida State University, Tallahassee)
- **Source:** Annu. Rev. Fluid Mech. 27, 17–43 (1995), doi:10.1146/annurev.fl.27.010195.000313. Publisher PDF from annualreviews.org (a scan with a ClearScan text layer). There is **no cover page**: PDF p. 1 is printed p. 17. A download watermark runs down the left margin of every page.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/jet-noise-mechanisms/Tam_1995_Supersonic-Jet-Noise.pdf` (27 pp.)
- **Page refs:** printed journal page numbers. PDF page = printed page − 16. The text layer garbles every displayed equation and most figure labels, so eqs. 2–4, 5–6 and 7–13 below were transcribed from 110 dpi page renders.
- **Tags:** supersonic jet noise, turbulent mixing noise, large turbulence structures, instability waves, stochastic instability-wave model, Mach wave radiation, wavy-wall analogy, fine-scale turbulence, broadband shock-associated noise (BBSAN), shock-cell structure, vortex-sheet (Prandtl–Pack) shock-cell model, waveguide modes, screech, feedback loop, screech frequency formula, mode switching, toroidal/helical/flapping modes, jet temperature effects, review

## Summary
A review of the three components of noise from imperfectly expanded supersonic jets (turbulent mixing noise, broadband shock-associated noise and screech), mostly covering work after Tam's 1987 book chapter (p. 17). The unifying idea is that the large turbulence structures are, statistically, the jet's instability waves. When they convect supersonically relative to the ambient sound speed they radiate Mach waves, which dominate mixing noise in a 45–60° downstream sector; the fine-scale turbulence gives the flatter background noise elsewhere (p. 18–20, 24–28). The same instability waves scattering off the quasi-periodic shock cells produce BBSAN, whose peak frequency depends on direction through a simple difference-wavenumber relation, and screech, which picks the frequency whose radiation points straight upstream at the nozzle lip (p. 32–38). The modelling is semi-empirical but physics-based: a stochastic instability-wave mixing-noise theory with one adjustable constant matches Mach 2 hot-jet directivities within about 2.5 dB, a four-parameter BBSAN theory matches spectra for M 1–2, and the screech formula fits Rosfjord & Toms frequencies at three temperatures (p. 29, 34–38). Screech amplitude, by contrast, could not be predicted even empirically (p. 40).

## Key findings
- **Three components and where each dominates** (p. 18, Fig. 1):
  - Mixing noise is the low-frequency broadband peak; BBSAN is a higher-frequency broadband peak to the right of the screech tone; screech is a discrete tone with harmonics (sometimes up to the 4th or 5th).
  - Mixing noise dominates downstream, BBSAN dominates upstream, and for circular jets screech radiates mainly upstream.
- **Mixing noise characteristics** (p. 19–20, Fig. 2):
  - The dominant part radiates into roughly 45–60° from the jet axis, with a single broadband peak at St = fD/U_j ≈ 0.1–0.25 depending on temperature and Mach number.
  - Upstream, levels are low, nearly omnidirectional and spectrally flat: the fine-scale background noise.
  - Raising M_j widens the gap between dominant and background levels. At fixed M_j and St, heating barely raises the peak level; it broadens the dominant sector and adds low-St noise, so overall power still rises with temperature.
- **BBSAN characteristics** (p. 21, Fig. 3; first identified by Harper-Bourne & Fisher 1974):
  - Peak frequency rises with inlet angle χ; spectra have secondary and tertiary peaks (visible at χ = 90°); half-width grows with χ.
  - At fixed M_j the peak level is independent of jet temperature, but the peak frequency rises with temperature.
- **Screech characteristics** (p. 21–23, 36; Fig. 4):
  - The fundamental radiates mainly upstream; the first harmonic peaks at 90° to the jet (Norum 1983).
  - Jet motion is toroidal or helical/flapping (flapping = equal left and right helical modes); the flapping plane can precess slowly.
  - Seiner et al. (1987), Mach 1.41 C-D nozzle: four modes (two toroidal, two helical/flapping); more than one non-harmonic tone at some M_j; toroidal at low M_j switching to flapping/helical as M_j rises.
  - Intensity falls with jet temperature, especially below M_j ≈ 1.5 (Massey et al. 1994). A thick lip raised screech by 10 dB without changing directivity (Norum 1983).
  - Screech is very sensitive to surroundings: a flapping plane rotated almost 90° between nominally identical tests a month apart (Seiner et al. 1986; p. 36).
- **Mixing-noise theory vs data** (p. 29–30, Fig. 6):
  - Tam & Chen (1993) directivities at fixed St agree with Seiner et al. (1992) Mach 2, T_r = 1114 K data generally within 2.5 dB, with one adjustable constant. The 500 K case is equally good except at very low St.
  - The fitted constant implies large-structure u_rms at the nozzle exit of 1.5% (500 K) and 1.2% (1114 K) of U_j, which Tam judges plausible.
- **Mach wave picture** (p. 27–28):
  - The peak-noise direction follows the Mach angle of the most amplified instability wave, and the spectral peak St equals that wave's St (Tam et al. 1992; McLaughlin et al. 1992 helium/air jets agree).
  - Growth and decay of the wave make its wavenumber spectrum broadband, which spreads radiation over angle and lets even subsonic-phase-speed waves radiate partly.
  - For subsonic jets this mechanism is inefficient, so fine-scale turbulence is probably the dominant source.
- **Shock cells as waveguide modes** (p. 30–32, Fig. 7):
  - Shock cells are disturbances trapped by the mixing layer; the Prandtl–Pack vortex-sheet solution decomposes them into waveguide modes (eqs. 5–6).
  - Tam et al. (1985) multiple-scales shock-cell model matches Norum & Seiner (1982a) centreline-adjacent pressures (r/D = 0.38, M_j = 1.82, M_d = 2.0) well in spacing and amplitude, despite being linear.
  - Numerical (PNS-type) shock-cell solvers need a good turbulence model and all fail to capture the rapid shock-cell decay in strongly screeching jets (p. 32).
  - Tam (1990): for moderately imperfectly expanded jets, the first shock is strong but later cells look weakly imperfect, so linear shock cells with an empirical initial amplitude suffice for BBSAN (p. 32).
- **BBSAN mechanism** (p. 32–34): a 1D product of the instability wave (wavenumber k = ω/u_c) and one shock-cell mode (κ_i) gives a wave at k − κ_i. If κ_i is slightly larger than k, its phase speed is negative and supersonic, so it radiates Mach waves upstream (eqs. 7–11). Each shock-cell mode gives its own peak, hence the multi-peak spectrum. Plane shock–turbulence interaction is explicitly not the mechanism (p. 30).
- **BBSAN prediction** (p. 34–36, Fig. 8): Tam's stochastic theory (1987–1992) solves a forced boundary-value problem with source = instability wave × shock cell, replaced by a similarity source spectrum in f x/U_j. Four parameters, two calculable in principle from stability theory, the rest empirical. Engineering-level agreement for hot and cold, under- and overexpanded jets with M_d and M_j from 1.0 to just above 2.0; the main misfit is dips at small inlet angles. It also predicts near-field BBSAN contours (Yu 1971), relevant to sonic fatigue.
- **Screech loop and frequency** (p. 36–38, Figs. 9–10):
  - Loop: lip receptivity → instability wave grows over 4–5 shock cells → interaction with shock cells radiates upstream → **feedback acoustic waves travel upstream outside the jet** → lip.
  - Tam et al. (1986) take the lip as the weakest link, so the tone is where the shock-noise radiation points at the lip (θ = π in eq. 11). With u_c ≈ 0.7 U_j and a shock spacing 20% shorter than eq. 6 (representing cells 4–5), this gives eq. 12.
  - Eq. 12 fits Rosfjord & Toms (1975) convergent-nozzle data at T_r = 18, 323 and 529 °C, better at high temperature and high NPR (p. 38–39). Tam (1988) derived a similar formula for rectangular jets.
- **Mode switching and temperature, from instability growth** (p. 39–40):
  - Tam et al. (1993): the instability wave, as the energy source, sets mode shape and intensity.
  - Cold jets: the m = 0 wave has the largest total growth near screech St at low supersonic M_j; above M_j ≈ 1.3 the helical/flapping wave does. That switch explains the toroidal-to-flapping mode switch.
  - Heating lowers both the screech St (eq. 12) and the most amplified St, but the latter faster, so hot jets screech with less amplified waves and are quieter.
- **Open problems** (p. 40–41): non-circular jets (only marginal progress), forward-flight effects, screech intensity prediction (no formula, even empirical, because of environmental sensitivity and loop nonlinearity), fine-scale noise at low supersonic M_j, noise reduction (mixing enhancers: ejectors, tabs, nozzle shaping), and a call for direct simulation of the large-scale structures.

## Setup / method
A review, so no new experiments. The data shown come from other groups:

| Fig. | Source | Conditions |
|---|---|---|
| 1 | Seiner 1984 | narrowband spectrum, mic at 30° to inlet direction |
| 2 | Seiner et al. 1992 | M_j 2, T_r 500 K, directivity at St 0.067, 0.12, 0.20, 0.40 |
| 3, 8 | Norum & Seiner 1982a | M_j 1.67; C-D M_d 1.5 (Fig. 3, screech 2.6 kHz) and convergent M_d 1.0 (Fig. 8); 15° arc |
| 4 | Seiner et al. 1987 | C-D M_d 1.41, M_j ≈ 1.0–2.0, screech wavelength vs M_j |
| 6 | Seiner et al. 1992 vs Tam & Chen 1993 | M_j 2.0, T_r 1114 K, 122 Hz bandwidth data |
| 7 | Norum & Seiner 1982a vs Tam et al. 1985 | M_j 1.82, M_d 2.0, r/D 0.38 |
| 10 | Rosfjord & Toms 1975 | convergent nozzle, NPR ≈ 2–7, T_r 18/323/529 °C |

- **Stochastic instability-wave model of large structures** (p. 24–27; Tam & Chen 1979, 1993):
  - Assumption: the jet spreads slowly, so turbulence is in quasi-equilibrium and large-scale fluctuations can be written as a superposition of normal modes, i.e. instability waves, Fourier-decomposed in azimuth (eq. 1).
  - Random amplitudes a_n(ω) are fixed by self-similarity: the near-lip mixing layer has no intrinsic length or time scale (spectra collapse on fU_j/x), so the lip excitation must be delta-correlated in azimuth and time (eq. 3), giving eq. 4. The correlation area D̃ is the only unknown.
  - Instability-wave solution: classical parallel theory and multiple-scales expansions (Saric & Nayfeh 1975, Crighton & Gaster 1976) are not uniformly valid outside the jet, so cannot give radiation (Tam & Morris 1980). Tam & Burton (1984) match an inner multiple-scales solution to an outer Fourier-transform solution by intermediate matching, giving one uniformly valid solution into the far field.
  - Data dependence: none; it is a model needing the mean flow, a stability solver and one noise-calibrated constant.
- **Shock-cell model** (p. 30–32): linear vortex sheet (Prandtl 1904, Pack 1950), eqs. 5–6. Extended to finite-thickness mean flow by multiple scales (Tam et al. 1985). Valid strictly only near the exit, where the mixing layer is thin.
- **BBSAN 1D model** (p. 32–34): plane-wave instability wave × cosine shock cell; the full 3D theory is Tam (1987).
- **Screech model** (p. 36–38): a frequency-selection rule, not a resonance condition with phase closure. No amplitude model.

## Key equations
- Large-structure pressure as a stochastic sum of instability waves (eq. 2, p. 25–26):
  $$p(r,\phi,x,t) = \sum_{n=-\infty}^{\infty}\int a_n(\omega)\,\frac{\hat p_n(r,x,\omega)}{|\hat p_n(r_{0.5},0,\omega)|}\,e^{i(\theta_n + n\phi - \omega t + \pi/2)}\,d\omega,\qquad \theta_n = \int_0^x k_n(x,\omega)\,dx$$
- Delta-correlated lip excitation and its consequence (eqs. 3–4, p. 26):
  $$\langle p(r_{0.5},\phi,0,t)\,p(r_{0.5},\phi+\Phi,0,t+\tau)\rangle = 2\pi^2\tilde D\,\delta(\Phi)\,\delta(\tau),\qquad \langle a_n(\omega)\,a_{n'}(\omega')\rangle = \tfrac12\tilde D\,\delta(\omega+\omega')\,\delta_{n,-n'}$$
- Vortex-sheet shock cells (eq. 5, p. 31):
  $$p_s = \sum_{i=1}^{\infty} A_i\,\Phi_i(r)\cos(\kappa_i x),\quad A_i = \frac{2\Delta p}{\sigma_i},\quad \Phi_i = \frac{J_0(2\sigma_i r/D_j)}{J_1(\sigma_i)},\quad J_0(\sigma_i)=0,\quad \kappa_i = \frac{2\sigma_i}{D_j(M_j^2-1)^{1/2}}$$
  The page prints Φ_i(r) = J₀(2σ_i r)/J₁(σ_i), i.e. r scaled by D_j implicitly.
- Shock spacing (eq. 6, p. 31): $L_s \simeq 2\pi/\kappa_1 = \pi (M_j^2-1)^{1/2} D_j/\sigma_1$. With σ₁ ≈ 2.405, L_s ≈ 1.31 (M_j² − 1)^{1/2} D_j (my arithmetic).
- Instability wave × shock cell (eqs. 7–9, p. 33): $u_t = \Re[A e^{i(kx-\omega t)}]$, $k = \omega/u_c$; $u_s = B\cos\kappa_i x$; interaction term $\Re\{\tfrac{AB}{2}\exp[i((k-\kappa_i)x - \omega t)]\}$.
- Mach-wave direction and BBSAN peak frequency (eqs. 10–11, p. 33):
  $$\frac{a_\infty}{C} = \frac{a_\infty(k-\kappa_i)}{\omega} = \cos\theta,\qquad f = \frac{u_c}{L_i\,(1 + u_c\cos\theta/a_\infty)}$$
- Screech frequency (eq. 12, p. 37), with u_c = 0.7 U_j and L = 0.8 L_s:
  $$\frac{f_s D_j}{U_j} = 0.67\,(M_j^2-1)^{-1/2}\left[1 + 0.7M_j\left(1+\frac{\gamma-1}{2}M_j^2\right)^{-1/2}\left(\frac{T_r}{T_\infty}\right)^{1/2}\right]^{-1}$$
  Check: 0.7/(0.8 × π/2.405) = 0.670, and 0.7 M_j (1 + (γ−1)M_j²/2)^{−1/2}(T_r/T_∞)^{1/2} = u_c/a_∞, so eq. 12 is f = u_c/[L(1 + u_c/a_∞)] (my derivation).
- Fully expanded diameter (eq. 13, p. 38):
  $$\frac{D_j}{D} = \left[\frac{1+\frac{\gamma-1}{2}M_j^2}{1+\frac{\gamma-1}{2}M_d^2}\right]^{(\gamma+1)/[4(\gamma-1)]}\left(\frac{M_d}{M_j}\right)^{1/2}$$
  Consistent with mass conservation through isentropic area ratios (my check).

> Equations were transcribed from page renders; the text layer is unusable for them. Points to verify against the PDF before coding:
> - **Sign convention in eqs. 10–11.** Solving eq. 10 for f gives f = u_c/[L_i(1 − u_c cos θ/a_∞)], with θ from the downstream axis. Eq. 11 is printed with "+", which is the Tam & Tanna form when θ is measured from the inlet (upstream) axis, as in Fig. 3's χ. Eq. 12 follows from "θ = π" only with the minus-sign (downstream-angle) form. So the angle convention changes silently between eqs. 10, 11 and the "θ = π" step; use f = u_c/[L(1 + M_c cos χ)] with χ the inlet angle.
> - Eq. 4 is faint in the render; the Kronecker delta reads δ_{n,−n'} in the text below it.
> - Eq. 1's eigenfunction is printed only as "[instability wave eigenfunction]".

## Data tables
Worked values of eq. 12 (my calculation, cold jet T_r = T_∞, γ = 1.4; not in the paper):

| M_j | f_s D_j / U_j (eq. 12) | Compare |
|---|---|---|
| 1.09 | ≈ 0.92 | measured A1 St 0.67 in [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md) |
| 1.50 | ≈ 0.32 | |
| 1.56 (NPR 4) | ≈ 0.30 | Fig. 10 shows ≈ 19 kHz at NPR 4, T_r 18 °C (read from figure) |

Eq. 12 is clearly too high near M_j ≈ 1.1. Tam notes only that agreement is better at high NPR and high temperature (p. 38–39); the low-M_j miss is consistent with the 20%-shortened vortex-sheet spacing being poor there. Treat eq. 12 as a guide for M_j ≳ 1.3.

Other numbers quoted in the text: Tam & Chen u_rms/U_j = 1.5% (500 K), 1.2% (1114 K) (p. 30); Norum lip effect +10 dB (p. 23, 36); Fig. 3 screech at 2.6 kHz (p. 21); Fig. 3 peak levels at the labelled angles include 117.3, 105.7, 105.8 and 102.3 dB (read from the render; angle assignment not checked).

## Figures worth remembering
- **Fig. 1 (p. 19):** the textbook spectrum with mixing noise, screech and BBSAN labelled, against St = fD/U_j.
- **Fig. 2 (p. 20):** Mach 2, 500 K directivities at four St; the 45–60° "dominant part" sector vs flat upstream background.
- **Fig. 3 (p. 22):** Norum & Seiner M_j 1.67 spectra at 15° steps; BBSAN peak shifting up with χ, multiple peaks at 90°.
- **Fig. 4 (p. 23):** Seiner et al. 1987 screech wavelength vs M_j; two toroidal and two helical/flapping modes with overlap regions.
- **Fig. 5 (p. 27):** wavy wall at supersonic phase speed radiating Mach waves; the analogy used for both mixing noise and BBSAN.
- **Fig. 6 (p. 29):** Tam & Chen vs measured directivity, M_j 2, 1114 K.
- **Fig. 7 (p. 32):** multiple-scales shock-cell pressure vs Norum & Seiner, M_j 1.82, M_d 2.0, x/D 0–15.
- **Fig. 8 (p. 35):** predicted vs measured BBSAN spectra, M_j 1.67, M_d 1.0.
- **Fig. 9 (p. 36):** screech loop schematic with feedback waves outside the jet.
- **Fig. 10 (p. 38):** eq. 12 vs Rosfjord & Toms frequencies (≈ 42 kHz falling to ≈ 13 kHz over NPR ≈ 2.5–6.7, read from figure) at three temperatures.

## Notation
- U_j, M_j, D_j, T_j: fully expanded jet velocity, Mach number, diameter, temperature. D: nozzle exit diameter. M_d: nozzle design Mach number. T_r: jet total (reservoir) temperature. T_∞, a_∞: ambient temperature and sound speed.
- St = fD/U_j in Figs. 1–2; eq. 12 uses D_j.
- χ: angle to the inlet (upstream) axis, used in the figures. θ: radiation angle in eqs. 10–11 (see the sign note).
- u_c: convection velocity of large structures (≈ 0.7 U_j). k = ω/u_c: instability wavenumber. κ_i, L_i = 2π/κ_i: wavenumber and length of the i-th shock-cell waveguide mode. σ_i: zeros of J₀. Δp: exit static-pressure mismatch.
- a_n(ω): stochastic amplitude of azimuthal mode n. D̃: correlation area, the single free constant of the mixing-noise theory. r_{0.5}: half-velocity radius.

## Relevance to this project
This is the standard reference for the "pre-guided-mode" picture of supersonic jet noise, covering both research areas in CLAUDE.md: screech and shock noise in lab jets, and Mach wave radiation in rocket noise.

- **Screech: what later group work changed.**
  - Tam's 1995 loop closes with **feedback acoustic waves outside the jet** (p. 37). The Shock Lab group's later papers replace this with the upstream guided jet mode inside the jet: [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md), [edgington-mitchell-2022 unifying theory](edgington-mitchell-2022-unifying-theory-jet-screech.md). Ironically, the guided mode is Tam & Hu (1989), Tam's own discovery, not used in this review.
  - Eq. 12 is a frequency-selection rule ("radiate toward the lip"), not a phase-closure resonance. Compare the phase-closure models of [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) and [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md), and the absolute-instability view in [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md).
  - The k − κ_i interaction term (eq. 9) is the same difference-wavenumber idea that the 2020 waves paper confirms in PIV (Tam & Tanna relation), and that [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) uses with a secondary shock-cell wavenumber to explain the A1/A2 jump. Tam's explanation of mode switching is different: whichever azimuthal mode has the largest total instability growth wins (p. 39). That is a useful competing hypothesis when analysing staging or mode switching in the PyFR continuation runs (`Simulations/PyFR_Staging_Continuation/`).
  - Eq. 12 over-predicts low-M_j screech (≈ 0.92 vs 0.67 at M_j 1.09; my calculation), so it is a poor sanity check for the near-sonic A1/A2 regime the group studies. Use the group's measured values instead.
  - Practical points for experiments: lip thickness changes screech amplitude by 10 dB (p. 23), and the flapping plane can rotate between nominally identical runs (p. 36). Record lip geometry and check the flapping-plane orientation each campaign, as in [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md), where lip geometry selects the impinging mode.
  - Tam lists screech amplitude prediction as unsolved and blames loop nonlinearity (p. 40). Intermittency and amplitude modulation are exactly what the SPOD → reconstruction → Hilbert POD pipeline in CLAUDE.md tracks; this review has no time-local analysis at all (all data are averaged spectra).
- **BBSAN:** the multi-peak, angle-dependent spectrum (eq. 11) is a direct test on acoustic-array data: fit u_c and L_i from peak frequency vs angle. Shock spacing from schlieren mean fields (time-averaged, so non-time-resolved data suffice) can supply L_i. The shock-cell data and spectra Tam validates against are in [norum-1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md).
- **Mixing noise and rockets:**
  - The large-structure Mach-wave and fine-scale two-source picture here is formalised by the similarity spectra in [tam-1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md); this review gives the physical argument and the stochastic-instability-wave theory behind it.
  - The convective Mach number that sets whether structures radiate Mach waves is defined and measured for shear layers in [papamoschou-1988](papamoschou-1988-compressible-turbulent-shear-layer.md).
  - For launch vehicles, [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) and [mathews-2025-thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) build on this two-source model and Mach wave radiation for rocket plumes, and note that screech and BBSAN are not seen at full scale (Lubert), unlike the lab jets reviewed here. Tam's observation that heating broadens the dominant sector and adds low-St noise without raising the peak (p. 20) is relevant to scaling cold lab jets to hot rocket plumes.
- **Modelling side:** the review is almost entirely models (stochastic instability waves, matched asymptotics, multiple-scales shock cells, semi-empirical BBSAN). Its closing call for direct simulation of large-scale structures (p. 41) is what wavepacket models (PSE, resolvent, SPOD of LES) later delivered; see [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md) and [nogueira-2021-wavepacket-modulation](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) for the modern equivalent of Tam's instability-wave × shock-cell interaction.
- **Non-circular jets:** listed as a key open problem (p. 40); Tam (1988) gives a rectangular-jet screech formula. Relevant background for the twin-rectangular work in [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md).
- **Related works cited, candidates for `/add-paper`:**
  - Tam & Tanna 1982 (BBSAN peak-frequency relation); Tam, Seiner & Yu 1986 (BBSAN–screech link, eq. 12); Tam 1987 (BBSAN stochastic theory); Tam 1988 (rectangular-jet shock cells and screech).
  - Tam & Burton 1984 (instability-wave sound radiation by matched asymptotics); Tam & Chen 1979, 1993; Tam, Chen & Seiner 1992.
  - Tam, Jackson & Seiner 1985 (multiple-scales shock cells); Tam, Ahuja & Jones 1994 (screech from free and ducted jets).
  - Powell 1953a,b; Harper-Bourne & Fisher 1974; Seiner et al. 1992 (temperature effect); Rosfjord & Toms 1975; Massey et al. 1994 (heated screech); Norum 1983 (screech suppression).
