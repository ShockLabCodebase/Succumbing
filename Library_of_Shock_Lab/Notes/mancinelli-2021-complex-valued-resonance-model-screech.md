---
key: "mancinelli-2021-complex-valued-resonance-model-screech"
title: "A complex-valued resonance model for axisymmetric screech tones in supersonic jets"
authors: ["Mancinelli, M.", "Jaunet, V.", "Jordan, P.", "Towne, A."]
year: 2021
type: "article"
venue: "JFM 928"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "928"}
doi: ""
arxiv: "2012.01342"
pdf: "screech-frequency-and-global-modes/Mancinelli-EtAl_2021_A-Complex-Valued-Resonance-Model-For-Axisymmetric-Screech-Tones-In-Supersonic-Jets.pdf"
version: "preprint"
unverified: ["journal DOI, article number and pages not printed in this arXiv version"]
group: false
facility: "Pprime SUCRÉ"
data: ["microphones-near", "mic-array", "PIV"]
methods: ["PSD", "bispectrum", "symmetry-decomposition", "vortex-sheet", "LSA-local", "resonance-model", "shock-cell-model"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "staging", "guided-jet-mode", "triadic-interaction", "receptivity"]
params: {"M_j": "1.0–1.8", "NPR": "1.89–5.75", "Re": "2.86×10⁵–7.9×10⁵", "D": "10 mm", "T_0": "295 K", "T_j/T∞": "0.61–0.83", "R/θ_R": "10"}
topics: ["screech-frequency-and-global-modes", "screech", "linear-models", "screech-staging-and-mode-switching"]
related: ["mancinelli-2019-screech-prediction-upstream-modes", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2022-unifying-theory-jet-screech", "jordan-2018-jet-flap-interaction-tones", "nogueira-2024-guided-jet-waves"]
cites: ["bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2019-aeroacoustic-resonance-review", "gojon-2018-oscillation-modes-screeching-jets", "jordan-2018-jet-flap-interaction-tones", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "michalke-1984-survey-jet-instability-theory", "nogueira-2021-closure-mechanism-a1-a2-screech", "panda-1999-experimental-investigation-screech-noise-generation", "powell-1992-oscillation-modes-choked-circular-jets", "raman-1999-supersonic-jet-screech-half-century-powell-present", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "shen-2002-three-dimensional-numerical-simulation-jet-screech", "suzuki-2003-shock-leakage-vortex-laden-mixing-layer-screech", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "wong-2021-wavepacket-modelling-bbsan"]
summary: "Complex-ω guided-mode screech model, M_j 1–1.8: finite-thickness cold-jet Rayleigh needed; fitted R₁R₂(St, M_j) with ω_i ≥ 0 bounds A1/A2/TM and drops most spurious tones"
---
# A complex-valued resonance model for axisymmetric screech tones in supersonic jets

- **Authors:** M. Mancinelli, V. Jaunet, P. Jordan (Institut Pprime, CNRS–Université de Poitiers–ENSMA), A. Towne (University of Michigan) (p. 1)
- **Source:** J. Fluid Mech. 928 (2021). This file is the **arXiv version**, arXiv:2012.01342v2 [physics.flu-dyn], 29 Sep 2021, in JFM draft style (p. 1), so page numbers differ from the journal. Other notes in the library cite the v1 preprint as "Mancinelli et al. (2020)".
- **DOI / arXiv:** arXiv:2012.01342. The journal DOI is not printed in this file.
- **PDF:** `screech-frequency-and-global-modes/Mancinelli-EtAl_2021_A-Complex-Valued-Resonance-Model-For-Axisymmetric-Screech-Tones-In-Supersonic-Jets.pdf` (28 pp.). Page refs are PDF pages, which equal the printed page numbers.
- **Tags:** screech, A1/A2 staging, TM tone, underexpanded round jet, convergent nozzle, guided jet mode (k_p⁻), Kelvin–Helmholtz wave, resonance model, reflection coefficients, complex frequency, temporal growth of the loop, vortex sheet, finite-thickness compressible Rayleigh equation, shear-layer momentum thickness, temperature ratio, branch and saddle points, Prandtl–Pack shock spacing, wave-interaction model, near-field azimuthal microphone array, cross-bicoherence, mean-flow PIV

## Summary
This is the follow-up to [Mancinelli et al. 2019](mancinelli-2019-screech-prediction-upstream-modes.md). It keeps the idea that the axisymmetric A1 and A2 screech loops close through an upstream-travelling guided jet mode (k_p⁻), not free-stream sound, and improves the model in two ways. First, the cylindrical vortex sheet is replaced by a **finite-thickness** locally parallel model (compressible Rayleigh equation with a tanh profile, R/θ_R = 10 from PIV) for a **cold** jet. With that change, the measured A1 and A2 tones fall wholly inside the propagative band of the (0, 2) guided mode (p. 15–17). The authors show that the 2019 isothermal vortex-sheet model fitted well only because the effects of temperature and shear-layer thickness happen to cancel (p. 15–16, 25–26). Second, they make the loop **complex**: k⁺, k⁻ and ω are all complex, and both the gain and phase conditions R₁R₂e^{iΔkL_s} = 1 are imposed. The sign of the imaginary frequency ω_i then says whether the loop grows (resonance sustained) or decays (p. 11–12). The unknown reflection-coefficient product |R₁R₂| is first treated as a constant, then fitted as a polynomial in (St, M_j) to the "critical" values that make measured tones exactly neutral (p. 18–20). With the fitted |R₁R₂| the model removes nearly all of the spurious tone predictions that neutral-mode models produce, leaving one spurious line each for n = 1 and n = 2 (p. 20–21). The model also predicts a weak low-frequency axisymmetric tone, which the authors call **TM**, as a resonance with the (0, 1) guided mode (p. 14–18).

## Key findings
- **The (St, M_j) map now spans M_j = 1–1.8** (Fig. 7, p. 14–15).
  - A1 and A2 occur over M_j = 1.07–1.23.
  - A weaker low-frequency peak, TM, is present at all M_j.
  - B, C and D (non-axisymmetric) tones and their harmonics also appear in the m = 0 spectrum, as does a weak "U" tone just above C. Powell et al. (1992) suggested U is an extension of A2.
- **Why B, C and D appear in m = 0** (App. C, p. 24–25, Fig. 17): at M_j = 1.3, where only B is active, the cross-bicoherence between m = +1, m = −1 and m = 0 reaches about 1 at St₁ = St₂ ≈ 0.34. The B tone in m = 0 is therefore a quadratic product of the ±1 helical/flapping components, not an axisymmetric resonance. The only other strong interaction is between the B tone and its first harmonic, St ≈ 0.68.
- **Neutral-mode vortex-sheet model, cold jet** (§4.1.1, p. 15–16, Fig. 8, Table 1):
  - T = T_j/T∞ varies with M_j from about 0.61 to 0.83.
  - The best fit uses φ = −π/4, with p = 2, 3 and 4 for TM, A1 and A2. A1 and A2 resonate with n = 2, and TM with n = 1.
  - The free-stream acoustic closure (k_a⁻) predicts tones where none are measured. The guided-mode closure roughly captures the cut-on and cut-off.
  - However, the low-frequency ends of A1 and especially A2 fall **below** the propagative (0, 2) band and cannot be predicted (p. 15).
  - The vortex sheet predicts TM only over M_j = 1.25–1.8 (p. 17).
- **The 2019 agreement was a coincidence** (p. 15–16; App. D, p. 25–26, Fig. 18):
  - Cooling the jet (lower T) moves both the B(0, n) and S(0, n) tracks to **higher** St, more strongly for n = 2.
  - Thickening the shear layer moves them to **lower** St.
  - The isothermal vortex sheet of the 2019 paper ignores both effects, which roughly cancel.
- **Shear-layer thickness controls the (0, 2) band** (§4.1.2, p. 16–17, Fig. 9):
  - For R/θ_R ≥ 30 the finite-thickness branch and saddle points equal the vortex-sheet ones.
  - As the shear layer thickens (R/θ_R = 20, 10, 5) both B(0, 2) and S(0, 2) move to lower St. The shift grows nonlinearly as R/θ_R falls below 30, is larger for B(0, 2) than for S(0, 2), and for S(0, 2) grows with M_j. The (0, 2) band therefore **widens**.
  - S(0, 1) hardly moves.
- **Finite-thickness KH wave is different** (p. 9–11, Fig. 2):
  - The k_KH⁺ wave is more dispersive and has a much lower phase speed than in the vortex sheet.
  - Its growth rate is not monotonic in frequency. At M_j = 1.08 the most negative k_i is about −1.05 at k_r ≈ 3.5 (read from Fig. 2b), against a monotonic rise to below −5 in the vortex sheet.
  - Because the KH phase speed changes, the best-fit reflection phase changes too: φ = −π/4 for the vortex sheet but φ = 0 (in phase) for the finite-thickness model (p. 9).
- **Neutral-mode finite-thickness model** (p. 17, Fig. 10, Table 2): cold jet with R/θ_R = 10, s = 4, φ = 0, and p = 4, 5 and 2 for A1, A2 and TM.
  - A1 and A2 now lie entirely inside the B–S band, with "remarkable agreement" (p. 17).
  - TM is predicted accurately over M_j = 1.1–1.8.
  - But the model predicts a tone for **every** p from 1 to 7, so it produces many spurious tones (p. 17).
- **Complex-mode model with constant |R₁R₂|** (§4.2, p. 18–19, Fig. 11):
  - The ω_i = 0 contours bound the (M_j, St) regions where resonance can be sustained (ω_i ≥ 0). These regions grow with |R₁R₂|.
  - At |R₁R₂| = 5×10⁻², the regions exist only for n = 2 and contain no measured tone.
  - As |R₁R₂| increases to 0.1, 0.2 and 0.3, the A2, A1 and TM predictions appear in turn.
  - At 0.3, A1 and A2 agree satisfactorily, and TM agrees only over M_j = 1.1–1.6. Spurious tones remain for n = 1 and 2.
- **Vortex-sheet complex eigenvalues** (p. 12–13, Fig. 5, M_j = 1.08, T ≈ 0.81, s = 4):
  - For complex ω both k_KH⁺ and k_p⁻ have k_i < 0: the KH wave is spatially unstable and the guided mode spatially evanescent.
  - For a given |R₁R₂| (10⁻³ or 10⁻² in the figure), only solutions with ω_i ≥ 0 satisfy the gain condition (2.8a).
- **Critical reflection coefficient** (§4.2.1, p. 19–20, Fig. 12):
  - Setting ω real and solving (2.7) at the measured tone frequencies gives the |R₁R₂| needed for a neutral loop. This is the minimum needed to sustain resonance.
  - Values are of order 0.1–0.3 for A1/A2, read from the inset colour bar of Fig. 12, and of order 0.1–0.4 along TM. This confirms the magnitude of the constant values used above. There is no obvious functional form.
- **Fitted |R₁R₂|(St, M_j)** (eq. 4.1, Table 3, p. 19–21, Figs. 13–14):
  - A cubic-in-M_j, quadratic-in-St polynomial with i + l ≤ 3 is fitted by least squares.
  - With it, the allowed regions fit the measured tones closely, and A1, A2 and TM are predicted accurately.
  - Most spurious tones vanish. One remains for n = 1 and one for n = 2, which the authors attribute to sparse data for the fit (p. 20).
- **Shock-cell model checked against PIV** (App. A, p. 22): eq. 2.9 slightly **overestimates** the axial location of the 4th shock cell, by less than 10%.
- **Momentum thickness from PIV** (App. A, p. 22–23, Fig. 16): R/θ_R falls with x, from about 18 at the nozzle to about 6 at the 4th shock cell. A single value, R/θ_R = 10, is used for all x and M_j.
- **Powell and the wave-interaction model agree** (§1.2, p. 2–3; App. B, p. 24): for equally spaced sources, the phase criterion Δk_r L_s + φ = 2πp and Tam & Tanna's k⁺ − k⁻ = k_s give the same frequency when (p − φ/2π)/N_s = 1. For irregular spacing they agree if k_s = (2πp − φ)/L_s, with k_s taken from the wavenumber spectrum of the mean flow, as in [Nogueira et al. 2021](nogueira-2021-closure-mechanism-a1-a2-screech.md) (p. 24).
- **Why one dominant reflection point** (p. 3–4): unequal shock-cell spacing means each equivalent source would select a different frequency. The growing KH wave makes reflection strength vary with x, so the strongest source wins. The model therefore uses one dominant source at the 4th shock cell (s = 4), following Umeda & Ishii, Panda, Gao & Li and Mercier et al. (p. 7).
- **Conclusion and outlook** (p. 21–22): R₁R₂ is still taken from data. A predictive model needs an analytical model of the reflection coefficients at the nozzle and the shock (Wiener–Hopf is mentioned, p. 5). The authors say this work is under way.

## Setup / method

### Experiment (SUCRÉ facility, Institut Pprime, Poitiers; not a Shock Lab group facility)
- **Facility and nozzle** (p. 12–13): SUCRÉ jet-noise facility of the Prométée platform at Institut Pprime. Simple convergent nozzle with D = 10 mm and lip thickness 0.3 mm. A heater holds T₀ = 295 K. Fully expanded conditions come from isentropic relations.

| Quantity | Value | Page |
|---|---|---|
| p₀ | 1.89–5.75 × 10⁵ Pa (so NPR ≈ 1.89–5.75 at 1 bar ambient; my reading) | 12 |
| M_j | 1.0–1.8 | 12 |
| Re = U_j D/ν | 2.86×10⁵ – 7.9×10⁵ | 12 |
| ΔM_j | 0.005 for M_j 1–1.3; 0.01 for M_j 1.31–1.8 | 13 |
| T₀ | 295 K (cold jet) | 13 |
| T_j/T∞ | ≈ 0.61–0.83 over the M_j range | 15 |

> My check: isentropic relations give M_j = 1.00 at NPR 1.89 and 1.80 at NPR 5.75. With T₀ = T∞, T_j/T∞ = 1/(1 + 0.2M_j²) gives 0.83 at M_j 1.0, 0.81 at 1.08 and 0.61 at 1.8, matching the paper.

- **Acoustics** (p. 14):
  - GRAS 46BP microphones, flat from 4 Hz to 70 kHz. NI PXIe-1071 card at 200 kHz, so the highest resolved St is 2–3.2 depending on M_j.
  - Records are **30 s** long, which the paper puts at six orders of magnitude longer than the longest convective time.
  - Six microphones equally spaced in azimuth sit in the nozzle-exit plane at r/D = 1, resolving m = 0, ±1, ±2. The azimuthal decomposition was checked with the coherence between neighbouring microphones (Cavalieri et al. 2012).
  - These data are **time-resolved**.
- **Spectra** (p. 14; App. C, p. 24):
  - Welch PSD in dB/St with an St resolution of 1–1.5×10⁻³.
  - The bicoherence uses 2048-sample segments, a Hann window and 50% overlap, which the paper says gives the same St resolution as the PSD maps.

> My check: 2048 samples at 200 kHz gives Δf ≈ 98 Hz, which is ΔSt ≈ 2–3×10⁻³ for U_j ≈ 314–483 m/s, not 1–1.5×10⁻³. 4096-sample segments would give 1–1.5×10⁻³. Check the segment length against the journal version.

- **Cross-bicoherence** (eq. C1–C2, p. 24–25): computed between azimuthal modes (m₁ + m₋₁ − m₀ = 0) following Panickar et al. (2005). It needs time-resolved data and long records for ensemble convergence.
- **PIV** (p. 14): used **only for the mean flow**, which feeds the finite-thickness model.
  - Conditions: M_j = 1.08, 1.12, 1.16, 1.22, 1.3, 1.43, 1.47 and 1.55.
  - Seeding: ondina oil, added before the stagnation chamber.
  - Hardware: 2 × 200 mJ Nd:YAG laser; 4 MPx CCD camera with a Sigma 105 mm macro lens; field of view up to x/D = 10.
  - Sampling: 7.2 Hz with Δt = 1 µs, so **not time-resolved**. 10,000 image pairs per case.
  - Processing: LaVision DaVis 8.0, multi-pass from 64 × 64 to 16 × 16 px with deforming windows and 50% overlap. Peak-ratio validation at 0.3, then universal outlier detection (Westerweel & Scarano 2005).
  - Stated resolution: "about 2.375 vectors per millimeter (i.e., 55 vectors per jet diameter)".

> With D = 10 mm, 2.375 vectors/mm is about 24 vectors per D, not 55. One of the two numbers is wrong; check against the journal version.

- **Mean-flow post-processing** (App. A, p. 22–23):
  - Momentum thickness θ_R from the Michalke (1984) compressible definition (eq. A1). The reference point (\*) is taken where the radial mean-velocity profile peaks, since the centreline is not the maximum in a shock-containing jet.
  - Density from the Crocco–Busemann temperature (eq. A2).
  - Shown only for M_j = 1.08–1.22 (Figs. 15–16).

### Models (locally parallel linear stability, compressible linearised Euler)
- **Scaling** (p. 5–6): lengths by D; density and sound speed by ρ∞ and c∞. ω = 2π St M_a, with St = fD/U_j (nozzle D) and M_a = U_j/c∞. Normal modes in (x, θ, t), m = 0 only, radial orders n = 1 and 2.
- **Vortex sheet** (eq. 2.3–2.4, p. 6):
  - Inviscid, parallel and zero-thickness, with temperature ratio T as a parameter (not isothermal as in 2019).
  - Branch cuts are chosen so that −π/2 ≤ arg γ_{i,o} < π/2.
  - The free-stream acoustic waves are k_a^± = ±2πStM_a.
- **Finite thickness** (eq. 2.5–2.6, p. 6–7):
  - Compressible Rayleigh equation for p̂, discretised with Chebyshev polynomials and a mapping that clusters points in the shear layer (Trefethen 2000). It is solved as an augmented eigenvalue problem k = k(ω) for real or complex ω.
  - The base flow is a tanh velocity profile (Lesshafft & Huerre 2007) with R/θ_R = 10. The mean temperature presumably follows Crocco–Busemann, as in App. A, but the text doesn't say this explicitly for the model.
  - **No shocks in the base flow.** Shocks enter only through L_s.
  - Single profile for all x, no viscosity, no non-parallel effects.
- **Wave classification** (p. 5, 9–10): ± is the sign of the group velocity (Briggs–Bers). Only k_p⁻ can close the loop. k_p^± exist as propagative waves only between the branch point B(m, n) and saddle point S(m, n); outside that band they are evanescent and are left out. B(0, 1) is at the origin.
- **Shock spacing** (eq. 2.9–2.13, p. 7–8):
  - Taking the zero-frequency limit of the vortex-sheet relation recovers Prandtl–Pack, L₁ = (π/2.4048)√(M_j² − 1).
  - Shock cells shorten with x at the Harper-Bourne rate α = 0.06.
  - The reflection point is fixed at the 4th shock cell, s = 4.
- **Three variants of the loop** (p. 8–12, Figs. 1 and 4):
  1. *Real frequency* (ω real, k⁺ complex, k⁻ real; Fig. 1a). The loop neither grows nor decays. Used only in §4.2.1 to identify R₁R₂.
  2. *Neutral mode* (ω, k⁺ and k⁻ all real; Fig. 1b). Δk_i ≡ 0, so the gain condition drops out. φ is a fitted parameter: 0, −π/4, −π/2 or −π (eq. 2.14), with p = 1–7.
  3. *Complex mode* (ω, k⁺ and k⁻ all complex; Fig. 4). Find the triplets [k⁺, k⁻, ω] that satisfy the dispersion relation and the gain condition (2.8a) for a given |R₁R₂|, then select frequencies with the phase condition (2.8b). ω_i > 0 means the loop is amplified in time; ω_i < 0 means it is damped.
- **Comparison with experiment:** predictions are overlaid on the m = 0 PSD map (Figs. 8, 10, 11 and 14). No error metric is given. The discrete parameters (φ, p, n, s) are chosen by best visual fit (Tables 1–2).
- **Simulation:** none. The paper uses no LES or DNS; all modelling is linear stability analysis.

## Key equations
- **Powell's loop** (eq. 1.1–1.3, p. 2–3):
  $$\frac{p-\phi^*}{f}=\frac{L_s}{|U^+|}+\frac{L_s}{|U^-|},\qquad L_s=N_s\lambda_s=\frac{2\pi N_s}{k_s},\qquad f=\frac{p-\phi^*}{N_s}\,\frac{k_s}{2\pi}\left(\frac{U^+U^-}{U^--U^+}\right)$$
  Here p = N⁺ + N⁻ is the number of wave cycles in the loop and φ\* a phase constant. Eq. 1.3 is printed with signed U± inside the bracket, while eq. 1.1 uses |U±|.
- **Wavenumber form** (eq. 1.4–1.5, p. 3): $(k_r^+-k_r^-)L_s+\phi=2p\pi$ with $k_r^\pm=2\pi f/U^\pm$ and $\phi=2\pi\phi^*$. For equally spaced sources, constant $(p-\phi^*)/N_s$ implies constant $(k_r^+-k_r^-)/k_s$.
- **Normal modes** (eq. 2.1–2.2, p. 5): $q=\bar q(r)+q'$ and $q'=\hat q(r)\,e^{i(kx+m\theta-\omega t)}$.
- **Vortex-sheet dispersion relation** (eq. 2.3–2.4, p. 6):
  $$D(k,\omega;M_a,T,m)=\frac{1}{\left(1-\frac{kM_a}{\omega}\right)^2}+\frac{1}{T}\,\frac{I_m\!\left(\frac{\gamma_i}{2}\right)\left[\frac{\gamma_o}{2}K_{m-1}\!\left(\frac{\gamma_o}{2}\right)+mK_m\!\left(\frac{\gamma_o}{2}\right)\right]}{K_m\!\left(\frac{\gamma_o}{2}\right)\left[\frac{\gamma_i}{2}I_{m-1}\!\left(\frac{\gamma_i}{2}\right)-mI_m\!\left(\frac{\gamma_i}{2}\right)\right]}=0$$
  $$\gamma_i=\sqrt{k^2-\tfrac{1}{T}(\omega-M_ak)^2},\qquad \gamma_o=\sqrt{k^2-\omega^2},\qquad M_j=M_a/\sqrt T$$
  This is the same relation as eq. 7–8 of the 2019 paper, now with T ≠ 1.
- **Compressible Rayleigh equation** (eq. 2.5, p. 6):
  $$\frac{\partial^2\hat p}{\partial r^2}+\left(\frac1r-\frac{2k}{\bar u_xk-\omega}\frac{\partial\bar u_x}{\partial r}-\frac{\gamma-1}{\gamma\bar\rho}\frac{\partial\bar\rho}{\partial r}+\frac{1}{\gamma\bar T}\frac{\partial\bar T}{\partial r}\right)\frac{\partial\hat p}{\partial r}-\left(k^2+\frac{m^2}{r^2}-\frac{(\bar u_xk-\omega)^2}{(\gamma-1)\bar T}\right)\hat p=0$$
- **tanh profile** (eq. 2.6, p. 7): $\bar u_x(r)=\tfrac12M_a\left[1+\tanh\!\left(\frac{R}{4\theta_R}\left(\frac Rr-\frac rR\right)\right)\right]$, with R the nozzle radius and θ_R the momentum thickness.
- **Resonance condition** (eq. 2.7–2.8, p. 7), following Landau & Lifshitz:
  $$R_1R_2\,e^{i\Delta kL_s}=1\;\Rightarrow\;e^{\Delta k_iL_s}=|R_1R_2|\ \text{(gain)},\qquad \Delta k_rL_s+\phi=2p\pi\ \text{(phase)}$$
  Here Δk = k⁺ − k⁻, φ = ∠R₁R₂, R₁(St, M_j) is the reflection at the nozzle and R₂(St, M_j, L_s) at the shock. The gain form follows from |e^{iΔkL_s}| = e^{−Δk_iL_s} (my check).
- **Shock cells** (eq. 2.9–2.13, p. 7–8):
  $$L_s(M_j)=L_1\big[(1-\alpha)s+\alpha\big],\quad\alpha=0.06;\qquad \omega\to0:\ I_m\!\left(\tfrac{\gamma_i}{2}\right)=0\ \Leftrightarrow\ J_m\!\left(\tfrac{i\gamma_i}{2}\right)=0;\qquad \tfrac{i\gamma_i}{2}=2.4048\ \Rightarrow\ L_1=\frac{\pi}{2.4048}\sqrt{M_j^2-1}$$
- **Neutral-mode criteria** (eq. 2.14a–d, p. 9):
  $$\Delta k_r=\frac{2p\pi}{L_s}\ (\phi=0),\quad \frac{(2p+\tfrac14)\pi}{L_s}\ (\phi=-\tfrac\pi4),\quad \frac{(2p+\tfrac12)\pi}{L_s}\ (\phi=-\tfrac\pi2),\quad \frac{(2p+1)\pi}{L_s}\ (\phi=-\pi)$$
  The 2019 paper's "out-of-phase, φ = π" criterion, Δk_r = (2p + 1)π/L_s, is this paper's (2.14d).
  > p. 15 says the vortex-sheet fit uses "φ = −π/4 as reflection condition (2.14d)". The φ = −π/4 condition is (2.14b), and Table 1 confirms φ = −π/4, so the "(2.14d)" reference is a typo.
- **Fitted reflection-coefficient amplitude** (eq. 4.1, p. 19; Table 3, p. 20):
  $$|R_1R_2(St,M_j)|=\sum_{i=0}^{3}\sum_{l=0}^{2}c_{il}\,M_j^i\,St^l,\qquad i+l\le3$$
- **Momentum thickness and Crocco–Busemann** (eq. A1–A2, p. 23):
  $$\theta_R=\int_0^\infty\frac{\tilde\rho(r)}{\rho^*}\frac{\tilde u_x(r)}{U^*}\left(1-\frac{\tilde u_x(r)}{U^*}\right)dr,\qquad \frac{\tilde T}{T_j}=\frac{T_\infty}{T_j}+\left(1-\frac{T_\infty}{T_j}\right)\frac{\tilde u_x}{U_j}+(\gamma-1)M_j^2\frac{\tilde u_x}{U_j}\frac12\left(1-\frac{\tilde u_x}{U_j}\right)$$
  with $\tilde\rho/\rho_j=(\tilde T/T_j)^{-1}$.
- **Link to the wave-interaction model** (eq. B1–B5, p. 24): $\Delta k_rL_s+\phi=2\pi p$ and $k^+-k^-=k_s$. For equal spacing ($k_s=2\pi N_s/L_s$) they agree when $(p-\phi/2\pi)/N_s=1$; in general when $k_s=(2\pi p-\phi)/L_s$.
- **Cross-bispectrum and bicoherence** (eq. C1–C2, p. 24–25):
  $$B_c(f,m_1,m_{-1},m_0)=\langle\hat p_1(f)\,\hat p_{-1}(f)\,\hat p_0^*(f)\rangle,\qquad b_c^2=\frac{|B_c|^2}{\langle|\hat p_0(f)|^2\rangle\,\langle|\hat p_1(f)\hat p_{-1}(f)|^2\rangle}$$
  As printed, all three spectra carry the same argument f, and the plot uses St₁ for m = 1 and St₂ for m = −1. The sum frequency is presumably meant, i.e. $\hat p_1(f_1)\hat p_{-1}(f_2)\hat p_0^*(f_1+f_2)$.

> Equations were rebuilt from page renders (pp. 2–9, 19, 23–25) because the text extraction garbled them. They should be reliable, apart from the C1 frequency arguments flagged above.

## Data tables
**Table 1 (p. 16): vortex sheet, cold jet**

| Tone | m | n of k_p⁻ | T | s | φ | p |
|---|---|---|---|---|---|---|
| A1 | 0 | 2 | ≠ 1 | 4 | −π/4 | 3 |
| A2 | 0 | 2 | ≠ 1 | 4 | −π/4 | 4 |
| TM | 0 | 1 | ≠ 1 | 4 | −π/4 | 2 |

**Table 2 (p. 18): finite thickness, cold jet**

| Tone | m | n of k_p⁻ | R/θ_R | T | s | φ | p |
|---|---|---|---|---|---|---|---|
| A1 | 0 | 2 | 10 | ≠ 1 | 4 | 0 | 4 |
| A2 | 0 | 2 | 10 | ≠ 1 | 4 | 0 | 5 |
| TM | 0 | 1 | 10 | ≠ 1 | 4 | 0 | 2 |

The integer p depends on the model: A1 is p = 3 in the vortex sheet and p = 4 in the finite-thickness model, so p is a fitting label, not a physical cycle count.

**Table 3 (p. 20): coefficients c_il of eq. 4.1**

| i \ l | 0 | 1 | 2 |
|---|---|---|---|
| 0 | 6.058 | 0.3351 | −1.275 |
| 1 | −12.42 | 0.2862 | 2.172 |
| 2 | 8.612 | −1.31 | — |
| 3 | −1.85 | — | — |

> My check: the fit gives |R₁R₂| ≈ 0.25 at (M_j 1.1, St 0.7), on A1, and ≈ 0.20 at (M_j 1.5, St 0.2), on TM. Both match the Fig. 12 critical values, so the table seems correctly transcribed. The polynomial is only meaningful near the measured tones; elsewhere it can go negative or exceed 1, since Fig. 13 is clipped to 0–1.

**Worked check at M_j = 1.08 (my computation from eq. 2.9, 2.13 and 2.14a):**
- L₁ = 0.533D and L₄ = 2.036D.
- 2pπ/L₄ = 3.09, 6.17, 9.26 and 12.35 for p = 1–4. These match the dotted lines in Figs. 3 and 6 (p. 11, 13).
- A1 (p = 4, n = 2) intersects at St ≈ 0.745, read from Fig. 3.
- The n = 1 arrow in Fig. 3 is at p = 1 (St ≈ 0.23), but Table 2 gives TM as p = 2. Since Δk_r for n = 1 only reaches about 5.4 at M_j 1.08, TM is not predicted there, consistent with TM being predicted only from M_j ≈ 1.1. Fig. 3 is therefore illustrative.

**4th-shock-cell positions from eq. 2.9 (my computation):** x/D ≈ 2.04, 2.52, 2.93 and 3.49 at M_j = 1.08, 1.12, 1.16 and 1.22. These match the dashed lines in Figs. 15–16 (p. 22–23).

**Band edges read from figures (approximate):**
- At M_j = 1.08, T ≈ 0.81 (Fig. 2): the (0, 2) band is St ≈ 0.70–0.80 in the vortex sheet and ≈ 0.64–0.79 in the finite-thickness model with R/θ_R = 10. S(0, 1) is at St ≈ 0.33.
- Fig. 9, finite thickness:
  - At M_j = 1.0: S(0, 2) ≈ 0.90; B(0, 2) ≈ 0.74 for R/θ_R = 30 and ≈ 0.64 for R/θ_R = 5.
  - At M_j = 1.8: S(0, 2) ≈ 0.35–0.38 and B(0, 2) ≈ 0.27–0.33.
  - S(0, 1) falls from ≈ 0.37 to ≈ 0.16 between M_j 1.0 and 1.8.

## Figures worth remembering
- **Fig. 1 and 4 (p. 9, 12):** loop schematics for the real-frequency, neutral-mode and complex-mode (ω_i > 0 vs ω_i < 0) variants. Useful for explaining the model.
- **Fig. 2 (p. 10):** eigenvalue trajectories at M_j 1.08 for the vortex sheet and finite thickness, in the k_r–k_i and k_r–St planes. Shows the B and S points and the 0.8U_j line.
- **Fig. 3 and 6 (p. 11, 13):** Δk_r(St) for n = 1 and 2 with the in-phase resonance levels. This is the graphical recipe for a prediction.
- **Fig. 5 (p. 13):** ω_i maps over the complex k plane for k_p⁻ (n = 2) and k_KH⁺, with the solutions that satisfy the gain condition for |R₁R₂| = 10⁻³ and 10⁻².
- **Fig. 7 (p. 15):** the m = 0 PSD map for M_j 1–1.8, with A1, A2, TM, B, C, D and U labelled. The reference data set.
- **Fig. 8 (p. 16):** vortex-sheet neutral predictions for a cold jet. The low-St ends of A1 and A2 fall outside the B(0, 2) to S(0, 2) band.
- **Fig. 9 and 18 (p. 17, 26):** B and S tracks against R/θ_R and against T. Shows the cancellation of the two effects.
- **Fig. 10 (p. 18):** finite-thickness neutral predictions. Good match, many spurious lines.
- **Fig. 11 (p. 19):** complex-mode predictions with ω_i ≥ 0 regions for constant |R₁R₂| = 0.05, 0.1, 0.2 and 0.3.
- **Fig. 12–14 (p. 20–21):** critical |R₁R₂| along the measured tones, the fitted surface, and the final predictions. **The key result** is Fig. 14.
- **Fig. 15–16 (p. 22–23):** PIV mean u_x/U_j with the 4th shock cell marked, and R/θ_R(x) for M_j 1.08–1.22.
- **Fig. 17 (p. 25):** cross-bicoherence at M_j 1.3, with a single peak of about 1 at St 0.34.

## Notation
- **Waves:** k_KH⁺ is the KH wave; k_p^± the guided jet modes (Tam & Hu 1989) of azimuthal order m and radial order n; k_a^± the free-stream sound. ± is the sign of the group velocity. B(m, n) and S(m, n) are the branch and saddle points.
- **Loop:** Δk = k⁺ − k⁻, with real and imaginary parts Δk_r and Δk_i. L_s is the distance to the s-th shock cell; L₁ the first cell length; α = 0.06 the shortening rate. R₁ and R₂ are the reflection coefficients at the nozzle and the shock; φ = ∠R₁R₂; p an integer (TM, A1, A2 labels differ by model). N_s is the number of shock cells in L_s, λ_s the shock spacing and k_s the shock wavenumber.
- **Flow parameters:** St = fD/U_j (nozzle D); M_a = U_j/c∞; M_j = U_j/c_j; T = T_j/T∞; ω = 2πStM_a (real or complex, ω_r + iω_i). R is the nozzle radius and θ_R the momentum thickness.
- **Tones:** A1 and A2 are axisymmetric screech stages; B and D flapping; C helical; U a weak tone above C. TM is a low-frequency axisymmetric resonance with n = 1. The paper does not expand the name "TM".
- **Bispectra:** B_c is the cross-bispectrum and b_c² the cross-bicoherence between azimuthal modes m = 1, −1 and 0.

## Relevance to this project
This is the most complete version of the guided-mode resonance model for **axisymmetric A1/A2 screech** from a convergent nozzle. That is the case in CLAUDE.md's resonance and feedback focus and in the PyFR staging LES (`Simulations/PyFR_Staging_Continuation/`).

- **Model side: what to reuse.**
  - For a cheap screech-frequency predictor in MATLAB, use the **finite-thickness, cold-jet** version, not the 2019 isothermal vortex sheet. The 2019 fit was right only by cancellation (p. 15–16, 25–26).
    - The ingredients are a Chebyshev discretisation of eq. 2.5, a tanh profile with R/θ_R from our own mean PIV or schlieren-derived shear-layer data, and Prandtl–Pack spacing with α = 0.06.
    - θ_R comes from the mean flow alone (eq. A1–A2), so **non-time-resolved PIV is sufficient** to set up the model.
  - The complex-mode model gives an extra output: the **temporal growth rate ω_i of the loop**. A positive ω_i is a linear necessary condition for a tone (p. 11–12). This is the closest linear proxy in the library for how strongly a stage is favoured.
  - **Limits.**
    - |R₁R₂| is fitted to the same data it predicts (eq. 4.1), so the ω_i ≥ 0 boundaries are data-informed, not predictive.
    - φ, p, n and s are still chosen by best fit, and p changes between models (Tables 1–2).
    - There are no shocks in the base flow and a single R/θ_R for all x. Fig. 16 shows R/θ_R varying from about 6 to 18 along the loop.
    - No error metric is given.
- **For the PyFR staging work** *(my inferences, not tested in the paper):*
  - The A1 and A2 ω_i ≥ 0 regions in Fig. 14 overlap in M_j near the staging point. In a linear model both stages are then allowed, so which one wins, the hysteresis and the switching are nonlinear. That is exactly what the NPR-continuation LES is designed to resolve.
  - The model's ω_i(M_j) for A1 and A2 could be compared with the LES growth or decay times after each NPR step (the 1/t_switch saddle-node fit). Linear ω_i should bound or set the trend of the measured rates away from the hysteresis edges.
  - The LES mean flow can provide θ_R(x), shock positions and the shock wavenumber spectrum k_s, so the model can be built from the simulated jet. The 4th-shock-cell positions above are a quick check on the LES shock spacing (PIV agreed within 10%, p. 22).
  - The LES could also estimate R₁ and R₂ directly, e.g. by projecting the near-nozzle and 4th-shock-cell fields onto k_KH⁺ and k_p⁻ eigenfunctions. That is the missing piece the authors call for (p. 22).
  - Our nozzle lip and temperature ratio (cold, T₀ ≈ T∞) should match the M_j–T_j relation used here before comparing St directly.
- **Experiment side: methods by data type.**
  - *Time-resolved acoustics:* the azimuthal array (six mics at r/D = 1 in the exit plane, with a coherence check), Welch PSD maps at ΔM_j = 0.005, and **cross-bicoherence between azimuthal modes** (App. C) are all directly reusable.
    - The bicoherence test is a quick way to tell a genuine m = 0 resonance from a quadratic m = ±1 product before modelling it. It is relevant to any of our m = 0 spectra above M_j ≈ 1.25.
    - BMD on time-resolved schlieren would give the spatial form of the same triad.
  - *Non-time-resolved PIV:* used here only for mean statistics (u_x, θ_R, shock positions), which is all the model needs. POD-pair phase recovery (as in [Edgington-Mitchell et al. 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)) is not used.
  - *Intermittency and mode switching:* this paper uses only long-time-averaged spectra, so it says nothing about A1/A2 switching dynamics. For those, see the wavelet analysis in [Mancinelli et al. 2019](mancinelli-2019-screech-prediction-upstream-modes.md) (mutually exclusive switching, dwell times of 1–4 s). The SPOD → reconstruction → Hilbert POD pipeline ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)) applies to that. A natural link *(my suggestion)*: the instantaneous amplitude of A1 and A2 from HPOD near a staging boundary could be set against the model's ω_i for each stage.
- **How it fits with other notes.**
  - [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md): this paper **supersedes** it. Same facility, same microphone array, same s = 4. The differences:
    - The M_j range is extended to 1.8.
    - Temperature and shear-layer thickness are added.
    - The best phase changes: the 2019 φ = π (this paper's 2.14d) becomes φ = −π/4 for a cold vortex sheet and φ = 0 for finite thickness.
    - The gain condition is now used instead of dropped.
  - [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md) uses the same Pprime data and cites this paper (as "Mancinelli et al. 2020") for the finite-thickness guided-mode bounds. It attributes A2 to a secondary shock-cell wavenumber from spatially varying shock spacing. Here, by contrast, A1 and A2 differ only by the integer p at one fixed reflection point. App. B links the two pictures through k_s = (2πp − φ)/L_s, citing Nogueira.
  - [nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md) offers a contrasting closure: absolute instability of the shock-periodic jet, with no reflection coefficients. It shares the finding that shear-layer thickness matters strongly.
  - [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md): the upstream guided mode as the difference wavenumber k_KH − k_s, i.e. the wave-interaction view in App. B.
  - [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md): the PIV evidence for (0, 2) guided-mode closure that this model builds on.
  - [jordan-2018-jet-flap-interaction-tones.md](jordan-2018-jet-flap-interaction-tones.md) is the source of the gain-and-phase resonance criteria. [stavropoulos-2026-jet-edge-interaction.md](stavropoulos-2026-jet-edge-interaction.md) applies the phase-only version to jet–edge tones.
  - [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md): for impinging jets, the plate replaces the 4th shock cell as R₂. The complex-mode ω_i criterion would carry over.
- **Facility:** not Shock Lab group work. Experiments are at SUCRÉ, Institut Pprime (Poitiers), with D = 10 mm and a 0.3 mm lip (p. 12).
- **Candidates for `/add-paper`:**
  - Mancinelli et al. 2019b (AIAA 2019-2522, reflection coefficients and screech-tone prediction).
  - Wong et al. 2021 (wavepacket modelling of BBSAN).
  - Edgington-Mitchell et al. 2021b (screech by shock leakage).
  - Edgington-Mitchell 2019 (review, now [indexed](edgington-mitchell-2019-aeroacoustic-resonance-review.md)).
  - Mercier et al. 2017; Gao & Li 2010; Powell, Umeda & Ishii 1992; Panickar et al. 2005 (bicoherence before mode jumps); Lesshafft & Huerre 2007; Tam & Hu 1989; Shen & Tam 2002 (now [indexed](shen-2002-three-dimensional-numerical-simulation-jet-screech.md)).
