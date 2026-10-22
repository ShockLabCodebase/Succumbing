---
key: "tam-1986-bbsan-screech-relationship"
title: "Proposed relationship between broadband shock associated noise and screech tones"
authors: ["Tam, C. K. W.", "Seiner, J. M.", "Yu, J. C."]
year: 1986
type: "article"
venue: "J. Sound Vib. 110(2), 309–321"
bib: {"journal": "Journal of Sound and Vibration", "volume": "110", "number": "2", "pages": "309--321"}
doi: "10.1016/S0022-460X(86)80212-7"
arxiv: ""
pdf: "screech/Tam-EtAl_1986_Proposed-Relationship-Between-Broadband-Shock-Associated-Noise-And-Screech-Tones.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["microphones-far"]
methods: ["LSA-local", "shock-cell-model", "resonance-model", "PSD"]
flow: ["round-jet", "supersonic", "underexpanded", "heated"]
phenomena: ["screech", "BBSAN", "shock-cells", "directivity", "helical"]
params: {"M_j": "1.0–2.4", "M_d": "1.0, 1.5, 2.0"}
topics: ["screech", "jet-noise-mechanisms", "shock-cell-models", "screech-frequency-and-global-modes"]
related: ["tam-1982-shock-associated-noise-cd-nozzles", "tam-1995-supersonic-jet-noise", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2022-unifying-theory-jet-screech", "raman-1998-supersonic-jet-screech-review"]
cites: ["norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "tam-1982-shock-associated-noise-cd-nozzles"]
summary: "Screech as the θ → 180° limit of BBSAN: BBSAN peaks at shock Fourier k_n, a_∞/f_pD linear in cos θ ends on the tone; weakest-link theory; semi-empirical St formula for hot jets"
---
# Proposed relationship between broadband shock associated noise and screech tones

- **Authors:** C. K. W. Tam (Department of Mathematics, Florida State University), J. M. Seiner, J. C. Yu (NASA Langley Research Center)
- **Source:** J. Sound Vib. 110(2), 309–321 (1986), doi:10.1016/S0022-460X(86)80212-7. Received 28 Feb 1985, revised Nov 1985.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/Tam-EtAl_1986_Proposed-Relationship-Between-Broadband-Shock-Associated-Noise-And-Screech-Tones.pdf` (13 pp.). A scanned publisher PDF with an OCR layer. The prose OCRs well; eqs. (2.4), (3.4), (3.5) and Figs. 1–7 are garbled in the text layer, so they were transcribed from 110 dpi page renders.
- **Page refs:** PDF page numbers. The journal's printed page n is PDF page n − 308 (PDF p. 1 = printed p. 309).
- **Tags:** screech, broadband shock-associated noise (BBSAN), Tam & Tanna interaction model, instability waves / large-scale structures, shock-cell wavenumber, multiple BBSAN peaks, spectral half-width, directivity, weakest-link theory, screech frequency formula, D_j scaling, helical mode, hot jets, Norum & Seiner data, locally parallel stability theory

## Summary
The paper argues that screech is a limiting case of broadband shock-associated noise (BBSAN): both come from the interaction of downstream-travelling instability waves (large-scale structures) with the quasi-periodic shock cells (p. 1–2). Narrowband Norum & Seiner spectra show several BBSAN peaks, which the Tam & Tanna formula (eq. 2.2) places at frequencies set by the Fourier components k_n of the shock-cell structure, not at exact harmonics as in the Harper-Bourne & Fisher point-source model (p. 3–5). The BBSAN peak narrows as the observer moves upstream (eq. 2.5), and the inverse peak frequency is linear in cos θ, extrapolating at θ = 180° to the measured screech tone (p. 6–8, Fig. 5). The authors then propose the "weakest link" theory: the feedback loop's phase condition does not set the tone, because the source location can shift; instead only a narrow band of shock-generated sound reaches the nozzle lip strongly enough, and that band fixes the screech frequency (p. 9–10). Setting θ = 180° in eq. 2.2 with the stability condition Im(K) = 0 gives a screech Strouhal number with no empirical constants, and a semi-empirical closed form (eq. 3.5) that also covers hot jets (p. 10–12).

## Key findings
- **BBSAN has multiple peaks** (p. 3, 5–6; Figs. 1–3):
  - Earlier 1/3-octave data looked single-peaked; Norum & Seiner's narrowband data show second, third and sometimes four or more peaks, with levels falling quickly with order (p. 3).
  - The Harper-Bourne & Fisher equally spaced point-source array (eq. 2.1) predicts exact harmonics of comparable level, which contradicts the data (p. 4).
  - Tam & Tanna (eq. 2.2) instead give peaks at the shock-cell Fourier wavenumbers k_n; higher Fourier components of the shock structure are weaker, so higher peaks are weaker (p. 4).
  - Calculated peak frequencies (arrows) agree "reasonably well" with the first three peaks at θ = 120°, 135° and 105° for a convergent nozzle at M_j = 1.414, allowing for screech spikes and overlapping peaks (p. 5; Figs. 1–3).
- **Source at the instability-wave peak** (p. 4): the dominant BBSAN source sits where the instability wave amplitude peaks (consistent with Seiner & Yu 1984), which in locally parallel stability theory is where Im(K) = 0 (eq. 2.3). U_c and k_n are evaluated there.
- **Half-width shrinks upstream** (p. 6–7; Fig. 4, eq. 2.5): for a C-D Mach 1.5 nozzle at M_j = 1.8, the BBSAN peak is broad at θ = 60° and very narrow at θ = 150°. Differentiating eq. 2.2 for a spread ΔU in phase velocity gives a factor (1 − U_c cos θ/a_∞)⁻² that falls fast as θ → 180°. Hence only a narrow frequency band radiates strongly towards the nozzle inlet axis (p. 7).
- **Screech as the θ → 180° limit of BBSAN** (p. 7–9; Fig. 5):
  - The screech fundamental is always below the BBSAN frequencies and acts as a lower bound; no BBSAN component was seen below it in the whole Norum & Seiner data set (p. 7).
  - a_∞/(f_p D) is linear in cos θ (eq. 3.1). For two C-D jets (M_d 2.0 at M_j 2.236; M_d 1.5 at M_j 1.802) the straight-line fits through BBSAN peaks end on the measured screech tones at cos θ = −1 (p. 8).
- **Weakest-link theory** (p. 9–10):
  - Loop: an excited downstream instability wave grows, interacts with the shocks near the end of the potential core, radiates sound that travels upstream outside the jet, and excites the thin shear layer at the lip (following Yu & Seiner 1983) (p. 9).
  - Unlike cavity or edge tones, the feedback length is not fixed by geometry, and the loop is somewhat nonlinear (the wave alters the mean-flow spread). So the 2πN phase condition can be met by small amplitude/path-length adjustments and does **not** select the frequency (p. 9).
  - The frequency is set by the weakest link, the outer-to-inner joint at the lip: only the narrow band of shock-generated sound that radiates strongly upstream can sustain the loop (p. 9).
  - They credit Fisher & Morfey (1977) with noticing the same numerical agreement, but argue constructive interference from a point-source array is not required; what matters is the narrow band reaching the lip (p. 9–10).
- **First-principles screech prediction** (p. 10–11; Fig. 6): eqs. 3.2–3.3 for the helical mode give St = f D_j/U_j against M_j that agrees generally well with cold-jet data from five sources up to M_j = 2.4, with no adjustable constants. Data collapse when D_j is the length scale. Below M_j ≈ 1.3 screech usually switches from helical to axisymmetric, so the prediction is only approximate there (p. 11).
- **Semi-empirical formula** (p. 11–12; Figs. 6–7): with U_c = 0.7U_j and a vortex-sheet shock wavenumber divided by 0.8 (cells about 20% shorter near the end of the core), eq. 3.5 follows. It tracks Fig. 6 and the hot-jet screech data of Rosfjord & Toms (T₀ = 18, 323, 529 °C) in Fig. 7 "quite well" (p. 12).
- **Outlook** (p. 12): the authors suggest a unified mathematical theory of mixing noise, BBSAN and screech may be possible.

## Setup / method
- **No new experiments.** All acoustic data are reused:
  - Norum & Seiner (1982) narrowband far-field spectra (Figs. 1–5); see [norum-1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md). Fig. 1–3: convergent nozzle, M_j = 1.414. Fig. 4: C-D M_d 1.5 at M_j 1.8 (40 Hz bands, θ = 60–150°). Fig. 5: C-D M_d 2.0 and 1.5. All of these cases have β = √(M_j² − M_d²) ≈ 1.0 (my calculation).
  - Fig. 6 screech data: Seiner & Norum (1979), Yu & Seiner (1983), Powell (1953), Davies & Oldfield (1962, "Mode B"), Jungowski (1979). Fig. 7: Rosfjord & Toms (1975), heated convergent nozzle (p. 11–12).
- **Angle convention:** θ is measured from the downstream jet axis, so θ = 180° is the nozzle inlet direction (p. 4). Norum & Seiner's ψ is measured from the inlet axis, so θ = 180° − ψ.
- **Model ingredients** (p. 4–5, 12):
  - Mean flow: uniform core of radius h plus half-Gaussian mixing layer of half-width b (eq. 2.4); density from Crocco's relation. h and b are tied by momentum-flux conservation, leaving b as the single free parameter (p. 5).
  - Instability wave: locally parallel, inviscid compressible stability on this profile, following Tam & Burton (1984), giving complex K(f, b). The **helical** mode is used throughout, as the preferred mode for M_j > 1.3 (p. 5).
  - Shock cells: k_n from the multiple-scales shock-cell model of Tam, Jackson & Seiner (1985) on the same b (p. 5).
  - Solution: iterate, using Im(K) = 0 to find b, then eq. 2.2 to find f_n (p. 5). The effective jet diameter in both models is D_j (p. 11).
  - Resolution, solver details and tabulated U_c, b or k_n values are not given.
- **Data-dependence of the "methods":** the analysis needs only far-field narrowband spectra at several angles (time-averaged PSDs; no time-resolved field data). Spectral resolution matters: 1/3-octave bands hide the higher BBSAN peaks (p. 3). Narrowband here is 40 Hz bands (Fig. 4).

## Key equations
All transcribed from page renders; θ from the downstream jet axis.
- Point-source array (Harper-Bourne & Fisher), eq. 2.1 (p. 4):
  $$f_n = \frac{n\,U_c}{L\,(1 - (U_c/a_\infty)\cos\theta)},\qquad n = 1,2,3,\dots$$
  L: shock-cell spacing (constant).
- Tam & Tanna BBSAN peak frequencies, eq. 2.2 (p. 4), with the maximum-amplitude condition eq. 2.3:
  $$f_n = \frac{U_c\,k_n}{2\pi\,(1 - (U_c/a_\infty)\cos\theta)},\qquad \operatorname{Im}(K) \equiv K_i = 0$$
  U_c: phase velocity of the instability wave at f_n; k_n: wavenumber of the nth Fourier component of the shock cells.
- Mean velocity profile, eq. 2.4 (p. 4):
  $$U(r) = \begin{cases} U_j, & r \le h\\ U_j \exp\!\left[-\ln 2\left(\dfrac{r-h}{b}\right)^2\right], & r \ge h\end{cases}$$
- Peak-width estimate, eq. 2.5 (p. 7):
  $$\Delta f \simeq \frac{k_1}{2\pi\,(1 - (U_c/a_\infty)\cos\theta)^2}\,\Delta U$$
  Check: ∂f/∂U_c of eq. 2.2 gives exactly this factor (n = 1).
- Inverse peak frequency linear in cos θ, eq. 3.1 (p. 8):
  $$\frac{a_\infty}{f_p D} = \frac{2\pi}{k_1 D\,U_c/a_\infty}\left(1 - \frac{U_c}{a_\infty}\cos\theta\right)$$
- Screech frequency (θ = 180°), eqs. 3.2–3.3 (p. 10):
  $$\frac{f D_j}{U_j} = \frac{D_j U_c k_1/U_j}{2\pi\,(1 + U_c/a_\infty)},\qquad \operatorname{Im}(K) = K_i = 0$$
  This is the form quoted as Tam et al. (1986) in [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) (eq. 3), [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md) (eq. 1.9) and [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) (eq. 1.1).
- Fully expanded diameter from mass conservation, eq. 3.4 (p. 10):
  $$\frac{D_j}{D} = \left[\frac{1 + \tfrac12(\gamma-1)M_j^2}{1 + \tfrac12(\gamma-1)M_d^2}\right]^{(\gamma+1)/(4(\gamma-1))}\left(\frac{M_d}{M_j}\right)^{1/2}$$
  Check: equals √(A_j/A_d) from the isentropic area–Mach relation.
- Semi-empirical screech formula, eq. 3.5 (p. 12):
  $$\frac{f D_j}{U_j} \simeq 0.67\,(M_j^2-1)^{-1/2}\left[1 + 0.7 M_j\left(1 + \frac{\gamma-1}{2}M_j^2\right)^{-1/2}\left(\frac{T_a}{T_r}\right)^{-1/2}\right]^{-1}$$
  T_a/T_r: ambient to reservoir temperature ratio.
  Checks (mine): (i) the vortex-sheet first shock wavenumber k₁D_j = 2(2.405)/√(M_j²−1), divided by 0.8 and multiplied by U_c/U_j = 0.7 and 1/2π, gives 0.670/√(M_j²−1), so the 0.67 is reproduced; (ii) the bracket is 1 + U_c/a_∞ with U_j/a_∞ = M_j (T_r/T_a)^{1/2}(1 + ½(γ−1)M_j²)^{−1/2}; (iii) for a cold jet (T_a/T_r = 1), eq. 3.5 gives St ≈ 0.48 at M_j 1.27, 0.32 at 1.5 and 0.19 at 2.0, consistent with the dashed curve in Fig. 6.

> Equations were read from 110 dpi renders and the checks above pass, but confirm superscripts and the 0.67 coefficient against the PDF (p. 10, 12) before coding them. The paper does not tabulate the first-principles (solid-curve) values, so those can only be read from Fig. 6.

## Data tables
**Approximate values read from figures** (not tabulated in the paper; verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| a_∞/(f D) at screech, M_d 2.0 / M_j 2.236 | ≈ 4.4 (f D/a_∞ ≈ 0.23) | Fig. 5, p. 8 |
| a_∞/(f D) at screech, M_d 1.5 / M_j 1.802 | ≈ 3.6 (f D/a_∞ ≈ 0.28) | Fig. 5, p. 8 |
| a_∞/(f_p D) of BBSAN at cos θ = 0.5 (θ = 60°) | ≈ 0.6–0.8 for both jets | Fig. 5, p. 8 |
| Calculated screech St = f D_j/U_j (solid, eqs. 3.2–3.3) | ≈ 0.42 at M_j 1.2 → ≈ 0.25 at 1.6 → ≈ 0.17 at 2.0 → ≈ 0.13 at 2.4 | Fig. 6, p. 10 |
| Hot-jet screech frequency, convergent nozzle | ≈ 40 kHz at P_r ≈ 2.5 → ≈ 15 kHz at P_r ≈ 6.5; hotter jets slightly higher at fixed P_r | Fig. 7, p. 11 |

## Figures worth remembering
- **Figs. 1–3 (p. 3, 5, 6):** narrowband BBSAN at 120°, 135°, 105° for a convergent nozzle at M_j 1.414, with predicted first three peak frequencies (arrows); screech appears as sharp spikes. The standard demonstration that BBSAN has higher-order peaks.
- **Fig. 4 (p. 6):** 40 Hz-band spectra for C-D M_d 1.5 at M_j 1.8, θ = 60°–150° in 15° steps (offset in 10 dB steps). The BBSAN hump moves down in frequency and narrows as θ increases, and approaches the screech tone at 150°.
- **Fig. 5 (p. 8):** a_∞/(f_p D) against cos θ for two C-D jets, with straight-line fits ending on the screech points at cos θ = −1. The key evidence for "screech as the limit of BBSAN".
- **Fig. 6 (p. 10):** screech St (based on D_j, U_j) against M_j from 1.0 to 2.4 for cold jets: five data sets, first-principles solid curve and eq. 3.5 dashed curve.
- **Fig. 7 (p. 11):** screech frequency against pressure ratio for a convergent nozzle at T₀ = 18, 323 and 529 °C (Rosfjord & Toms), with eq. 3.5 curves.

## Notation
- θ: radiation angle from the downstream jet axis (θ = 180° is upstream). a_∞: ambient sound speed.
- U_c: convection (phase) velocity of the instability wave. K = K_r + iK_i: its complex wavenumber.
- k_n: wavenumber of the nth Fourier component of the shock-cell structure (k₁ the fundamental). L: shock-cell spacing.
- f_n: nth BBSAN peak frequency; f_p: dominant peak frequency.
- U(r), h, b: mean axial velocity, core radius, half-Gaussian half-width.
- M_j, M_d: fully expanded and design Mach numbers. D, D_j: exit and fully expanded diameters. U_j: fully expanded velocity.
- T_a/T_r: ambient to reservoir temperature ratio. P_r: pressure ratio (Fig. 7). γ: ratio of specific heats.

## Relevance to this project
This project studies resonance and feedback in Shock Lab group jet experiments, and rocket noise as a second area (CLAUDE.md). This paper is the origin of the "Tam et al. (1986)" screech-frequency formula that later group papers quote and then revise.

- **The screech-frequency formula and its later critique:**
  - Eq. 3.2 (with θ = 180°) is the free-stream-sound closure that later group work treats as equivalent to Powell's model (see [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md), eq. 1.9, and [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md), App. B).
  - [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) replace the upstream leg (free-stream sound outside the jet) with the upstream guided jet mode. Mancinelli 2019 notes that Powell, Tam et al. and Panda all assume a constant U_c and free-stream closure.
  - The weakest-link argument says the phase condition does not select the frequency; [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md) instead uses a phase criterion plus a gain criterion with the guided-mode branch, so they disagree on what picks the frequency. The two views partly converge: both say a narrowly propagating upstream wave limits the band.
  - Tam et al. use only k₁, while [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) points out that the shock series k_n (or suboptimal peaks from shrinking cell spacing) can each close a loop, explaining A2 and C staging. The "divide k₁ by 0.8" correction here (cells ~20% shorter near the end of the core, p. 11) is an early version of the same shrinking-spacing effect discussed in [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md).
  - The model uses the helical mode and admits it is approximate below M_j ≈ 1.3 (axisymmetric A1/A2 range; p. 11). The group's A1/A2 work (2018, 2020 notes; the PyFR staging study in `Simulations/`) sits exactly in that range, so the solid curve of Fig. 6 shouldn't be used there.
- **Practical uses for lab data:**
  - Eq. 3.5 is a quick check of measured screech frequencies in cold or heated jets, given M_j and T_r. It needs only NPR and stagnation temperature.
  - Eq. 3.1 gives a diagnostic for far-field microphone arcs: a_∞/(f_p D) against cos θ should be linear, with slope giving U_c/a_∞ and intercept giving k₁. This uses only time-averaged narrowband PSDs; no time-resolved field data or modal decomposition is involved. Narrowband resolution is needed (1/3-octave hides higher peaks).
  - For time-resolved schlieren, the same interaction can be seen in wavenumber space: the k_kh − k_n products in SPOD modes ([edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md)). Intermittency, mode switching and amplitude modulation are not considered in this paper; tracking them would need wavelets or the SPOD → reconstruction → Hilbert POD pipeline ([raiola-2025](raiola-2025-hilbert-pod.md)).
- **Modelling side:** the procedure is a locally parallel linear stability calculation (Tam & Burton 1984) on a one-parameter mean flow plus a multiple-scales shock-cell model (Tam, Jackson & Seiner 1985). Its assumptions are a fixed half-Gaussian profile, the helical mode only, the source at Im(K) = 0, and θ = 180° radiation reaching the lip. The comparison with experiment is qualitative (arrows on spectra, curves on scattered data); no error metrics are given.
- **BBSAN and rocket noise:**
  - Eq. 2.2 is the BBSAN peak-frequency relation used in later models; [wong-2021](wong-2021-wavepacket-modelling-bbsan.md) revisits BBSAN with wavepacket models, and [tam-1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) provides the mixing-noise spectra that BBSAN sits on.
  - [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) reports that screech and BBSAN are generally not seen at full rocket scale, so this paper bears on lab-scale and heated-jet tests rather than on launch-vehicle predictions directly.
- **Data source:** all Figs. 1–5 data are from [norum-1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md). That note's narrowband observations (BBSAN peak rising from ~5 kHz upstream to 10–15 kHz sideline; tab removing tones) are consistent with Fig. 4 here once angles are converted (θ = 180° − ψ).
- **Candidates for `/add-paper`:** Tam & Tanna 1982 (BBSAN model); Tam, Jackson & Seiner 1985 (multiple-scales shock cells); Tam & Burton 1984; Yu & Seiner 1983; Seiner & Yu 1984; Harper-Bourne & Fisher 1973; Powell 1953; Rosfjord & Toms 1975. The Tam 1995 review (*Supersonic jet noise*, already in `Paper_PDFs/`) summarises this work.

- **See also:** [tam-1995](tam-1995-supersonic-jet-noise.md), Tam's later review that summarises this BBSAN–screech link.
