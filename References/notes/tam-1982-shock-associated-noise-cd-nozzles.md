---
key: "tam-1982-shock-associated-noise-cd-nozzles"
title: "Shock associated noise of supersonic jets from convergent-divergent nozzles"
authors: ["Tam, C. K. W.", "Tanna, H. K."]
year: 1982
type: "article"
venue: "J. Sound Vib. 81(3), 337–358"
bib: {"journal": "Journal of Sound and Vibration", "volume": "81", "number": "3", "pages": "337--358"}
doi: "10.1016/0022-460X(82)90244-9"
arxiv: ""
pdf: "Tam-Tanna_1982_Shock-Associated-Noise-Of-Supersonic-Jets-From-Convergent-Divergent-Nozzles.pdf"
version: "published"
unverified: []
group: false
facility: "Lockheed-Georgia anechoic jet facility"
data: ["microphones-far"]
methods: ["shock-cell-model", "PSD"]
flow: ["round-jet", "supersonic", "overexpanded", "underexpanded", "ideally-expanded", "heated"]
phenomena: ["BBSAN", "shock-cells", "Mach-wave-radiation", "directivity"]
params: {"M_d": "1.672", "M_j": "1.10–1.96", "NPR": "2.4–7.8", "TR": "1–2", "D": "5.08 cm"}
topics: ["jet-noise-mechanisms", "screech"]
related: ["wong-2021-wavepacket-modelling-bbsan", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "nogueira-2021-wavepacket-modulation-shock-containing-jets"]
cites: []
summary: "Origin of the BBSAN mechanism: instability waves × Pack shock cells give a supersonic k − λ₁ wave radiating as Mach waves; f_p = u_c/[L_s(1 − M_c cos θ)], I ∝ (M_j² − M_d²)²; M_d 1.672 C-D jet"
---
# Shock associated noise of supersonic jets from convergent-divergent nozzles

- **Authors:** C. K. W. Tam, H. K. Tanna (Lockheed-Georgia Company, Marietta, Georgia; Tam's permanent address is the Department of Mathematics, Florida State University) (p. 1)
- **Source:** J. Sound Vib. 81(3), 337–358 (1982), doi:10.1016/0022-460X(82)90244-9. Received 29 Sept 1980, revised 30 July 1981 (p. 1). Lockheed internal R&D funding (p. 21).
- **PDF:** `References/Paper_PDFs/Tam-Tanna_1982_Shock-Associated-Noise-Of-Supersonic-Jets-From-Convergent-Divergent-Nozzles.pdf` (22 pp.). A scanned publisher PDF with an OCR layer. The prose OCRs well; the displayed equations and all figures are garbled, so equations and figure readings below come from 110 dpi page renders.
- **Page refs:** PDF page numbers. The journal's printed page n is PDF page n − 336 (PDF p. 1 is printed p. 337).
- **Tags:** broadband shock-associated noise (BBSAN), shock-cell noise, Tam & Tanna mechanism, Mach wave radiation, wavy-wall analogy, instability-wave / large-scale structure model, Pack shock-cell solution, shock-cell wavenumbers, peak-frequency formula, (M_j² − M_d²)² intensity scaling, C-D nozzle off-design, overexpanded and underexpanded jets, heated jets, Harper-Bourne & Fisher, far-field 1/3-octave acoustics

## Summary
The paper proposes the now-standard mechanism for broadband shock-associated noise and tests it with far-field data from a C-D nozzle run on and off design. Large-scale turbulence structures are modelled as instability waves with wavenumber k, and the shock cells as the Pack vortex-sheet solution, a sum of standing modes cos(λ_n x). Their weak (product) interaction gives travelling waves at wavenumbers k ± λ_n. The k − λ₁ wave can have a supersonic phase speed even when the eddies convect subsonically, so by the wavy-wall analogy it radiates as Mach waves; that radiation is the shock noise. The Mach-angle condition reproduces the Harper-Bourne & Fisher peak-frequency formula, and taking the source strength as proportional to the first shock-cell amplitude gives intensity ∝ (M_j² − M_d²)², which reduces to Harper-Bourne & Fisher's β⁴ law for convergent nozzles. Far-field measurements of a 5.08 cm, M_d = 1.672 C-D nozzle (M_j 1.10–1.96; cold, isothermal and T_R/T_a = 2) agree with both predictions: peak frequencies within one 1/3-octave band, and the intensity scaling for underexpanded and overexpanded jets alike.

## Key findings
- **Mechanism** (p. 5, 8–9): shock noise is Mach wave radiation from the supersonic-phase-speed part of the disturbances created by weak interaction between downstream-travelling large-scale structures and the quasi-periodic shock cells. This differs from Harper-Bourne & Fisher's correlated point-source array at shock-cell ends, though both explain the directivity and frequency as an interference pattern from sources coherent over several shock cells (p. 3–4, 20–21).
- **Only the k − λ₁ product radiates effectively** (p. 9):
  - The k + λ_n waves have phase speed below u_c and are subsonic in the frequency band of the large structures, so they don't radiate.
  - The k − λ₂ wave can be supersonic but is weaker by (A₂/A₁)², i.e. 10 log(μ₂/μ₁)² = 7.2 dB below the fundamental (p. 9). Recomputed: 20 log₁₀(5.5201/2.4048) = 7.22 dB.
  - So higher BBSAN peaks are weak because the higher shock-cell Fourier components are weak, not because of uneven shock spacing as Harper-Bourne & Fisher argued. Their explanation would also remove the fundamental (p. 4).
  - Counter-example cited: in inverted-velocity-profile coannular jets the second peak can equal or exceed the first even though the outer-stream shock cells are uneven; finer structure within each cell strengthens the second shock component (Tanna, Tam & Brown 1981, NASA CR-3454; p. 9–10).
- **Peak frequency** (eq. 11, p. 9): f = u_c / [L_s(1 − M_c cos θ)], identical to Harper-Bourne & Fisher's n = 1 formula. The spectrum doesn't peak exactly here because the slow growth and decay of a(x) broadens the wavenumber spectrum (Tam & Morris 1980), producing a band of supersonic components at each frequency that sets the directivity (p. 9).
- **Intensity scaling** (eq. 17, p. 11): I_shock ∝ (M_j² − M_d²)², valid under- and overexpanded, within the first-order shock model's range |M_j² − M_d²| ≲ 1 (p. 10). Putting M_d = 1 recovers Harper-Bourne & Fisher's I ∝ β⁴ (p. 11). The large structures are assumed unaffected by the shocks, citing Seiner & Norum (1980) (p. 10).
- **Noise reduction from the C-D nozzle** (p. 12, Fig. 6): at θ = 120° (forward arc), isothermal, the C-D nozzle is about 9 dB quieter than a convergent nozzle at the design point (NPR 4.73), and quieter over NPR ≈ 3.7–6.6. The reduction persists for T_R/T_a = 2.
- **Component breakdown** (p. 13, 15; Fig. 7): mixing noise is subtracted using earlier shock-free C-D data (Tanna 1977 Part I). Near design the C-D shock noise is "virtually, if not completely" eliminated. At 120° mixing noise is low, so total-noise reduction tracks shock-noise reduction; moving to 90° and 60° mixing noise grows and the effective total reduction shrinks.
- **Spectra vs M_j** (p. 15–16, Fig. 8, θ = 120°, isothermal): no shock noise at M_j = 1.104 (a normal shock is probably inside the nozzle); a strong shock hump when highly overexpanded; only a small shock contribution at M_j = 1.676 (design 1.672); the hump returns and grows when underexpanded.
- **Peak-frequency validation** (p. 16–18, Figs. 9–10): with u_c = 0.7u_j, predicted and measured peaks are within one 1/3-octave band at all five angles (75–135°), for M_j ≈ 1.93 (underexpanded) and M_j ≈ 1.49 (overexpanded). Raising jet temperature raises u_j by almost 50% (504 → 726 m/s at M_j 1.93), and the measured peaks shift by the predicted factor of about 1.5 (p. 16).
- **Intensity-scaling validation** (p. 17–20, Figs. 11–13): shock noise is estimated as I_measured − I_measured at M_j = M_d (eq. 18), which assumes mixing noise is constant across the series. Data follow the (M_j² − M_d²)² line at 120° and 90°, best when |M_j² − M_d²| is large; overexpanded and underexpanded points fall on the same line.
- **Temperature effect** (p. 19–20): shock noise is weakest for cold jets; isothermal and hot jets are comparable. The difference is no more than 3 dB, which the authors attribute to a weak temperature dependence of the large structures. An absolute prediction would need that dependence (p. 20).
- **Status** (p. 21): the authors call the Mach wave model "still quite tentative". Earlier shock–eddy scattering theories (Lighthill 1953, Ribner 1955) treated sources as incoherent and so missed the peak-frequency and directivity relations.

## Setup / method
**Experiment** (p. 11–12):
- Lockheed anechoic facility, the same one used for Tanna's (1977) convergent-nozzle shock-noise data.
- C-D nozzle, D = 5.08 cm, design Mach M_d = 1.672 (design NPR 4.73, p. 12).
- No screech-suppression device (no lip projection). Exposed surfaces upstream of the exit were covered in absorbing material to limit screech contamination (p. 11). Screech presence or absence isn't otherwise reported.
- 7 microphones at 15° steps from 45° to 135° to the jet axis, on an arc R = 2.44 m (R/D = 48) centred on the exit.
- Tape-recorded; "lossless" (zero atmospheric attenuation) 1/3-octave SPL, 200 Hz–40 kHz; OASPL summed over that band. No narrowband spectra.
- 21 pressure ratios per series (10 overexpanded, 10 underexpanded, design), M_j 1.10–1.96 (Fig. 5, p. 12).
- Three temperature series: unheated (T_R = T_a), isothermal (T_j = T_a assuming ideal expansion) and heated (T_R/T_a = 2).

**Test matrix (Fig. 5, p. 12):** pressure ratio p_R/p_a from about 2.4 to 7.8; M_j² − M_d² from about −1.8 to +1.2; the off-design parameter ε (axis labelled Δp/ρ_j u_j², read from the render) spans about −0.15 to +0.15.

**Theory** (p. 6–11):
- Shock cells: first-order vortex-sheet (Pack 1950) solution for p_s/p_a, as a series of Bessel-function radial modes and cos(λ_n x) axial modes (eq. 4). Inviscid, no shear-layer spreading, no decay of the shock cells downstream, no Mach discs. The first term sets the shock spacing (eq. 5).
- Large structures: linear superposition of instability-wave modes with random amplitudes (after Tam & Chen 1979), each Re[a(x)ψ(r)e^{i(kx−ωt)}] with a slowly varying envelope a(x) that grows and decays (eq. 6, Fig. 3).
- Source: the product of the two fields (eq. 8). No acoustic analogy and no propagation calculation; radiation direction follows from the Mach-angle (wavy-wall) relation (eq. 10). Only peak frequency and relative intensity are predicted, not absolute level or spectral shape.
- Convection velocity u_c = 0.7u_j, from experiment and computed instability-wave phase speeds (p. 16).
- Intensity derivation: I ∝ A₁², with Δp/p_a from isentropic relations linearised for small (γ − 1)(M_j² − M_d²)/[2 + (γ − 1)M_d²] (< 0.17 for γ = 1.4) (p. 10–11).

## Key equations
θ is measured from the downstream jet axis. Subscripts: j fully expanded, d nozzle design, a ambient, R reservoir.

- **Fully expanded diameter** (eq. 3, p. 6), from mass conservation:
  $$\frac{D_j}{D}=\left[\frac{1+\tfrac12(\gamma-1)M_j^2}{1+\tfrac12(\gamma-1)M_d^2}\right]^{(\gamma+1)/4(\gamma-1)}\left(\frac{M_d}{M_j}\right)^{1/2}$$
  Checked against the isentropic area–Mach relation (same throat and stagnation state).
- **Shock-cell pressure** (eq. 4, p. 7):
  $$\frac{p_s}{p_a}=\sum_{n=1}^{\infty}A_n\phi_n(r)\cos(\lambda_n x),\qquad A_n=\frac{2\Delta p}{\mu_n p_a},\qquad \lambda_n=\frac{2\mu_n}{D_j(M_j^2-1)^{1/2}}$$
  with φ_n(r) = J₀(2μ_n r/D_j)/J₁(μ_n), orthonormal in the area-weighted sense, and μ_n the nth zero of J₀.
- **Shock spacing** (eq. 5, p. 7):
  $$L_s\approx\frac{2\pi}{\lambda_1}=\frac{\pi(M_j^2-1)^{1/2}D_j}{\mu_1},\qquad \mu_1=2.40483$$
  i.e. L_s ≈ 1.31 (M_j² − 1)^{1/2} D_j (as in [wong-2021](wong-2021-wavepacket-modelling-bbsan.md), L_s ≈ 1.3β).
- **Instability wave** (eqs. 6–7, p. 7): $u=\mathrm{Re}[a(x)\psi(r)e^{i(kx-\omega t)}]$, $u_c=\omega/k$.
- **Interaction source** (eq. 8, p. 8):
  $$\mathrm{Re}\Big\{\tfrac12 a(x)\psi(r)\sum_{n=1}^{\infty}A_n\phi_n(r)\big[e^{i(\lambda_n+k)x-i\omega t}+e^{i(k-\lambda_n)x-i\omega t}\big]\Big\}$$
  The radiating term (eq. 9) is the n = 1 difference wave, phase speed ω/(k − λ₁).
- **Mach-angle condition and peak frequency** (eqs. 10–11, p. 8–9):
  $$c_a=\frac{\omega}{k-\lambda_1}\cos\theta\;\;\Rightarrow\;\; f_p=\frac{u_c}{L_s(1-M_c\cos\theta)},\qquad M_c=u_c/c_a$$
  Check: substituting k = ω/u_c and λ₁ = 2π/L_s into eq. 10 gives eq. 11.
- **Harper-Bourne & Fisher** (eqs. 1–2, p. 3–4): $f_p=nu_c/[L(1-M_c\cos\theta)]$, n = 1, 2, …; $I\propto\beta^4$, β = (M_j² − 1)^{1/2}.
- **Intensity scaling** (eqs. 12–17, p. 10–11):
  $$I_s\propto A_1^2=(0.382\,\Delta p/p_a)^2\;(12),\qquad 1+\frac{\Delta p}{p_a}=\left[1+\frac{\tfrac12(\gamma-1)(M_j^2-M_d^2)}{1+\tfrac12(\gamma-1)M_d^2}\right]^{\gamma/(\gamma-1)}\;(15)$$
  $$\frac{\Delta p}{p_a}\approx\frac{\gamma/2}{1+\tfrac12(\gamma-1)M_d^2}\,(M_j^2-M_d^2)\;(16),\qquad I_{\rm shock}\propto(M_j^2-M_d^2)^2\;(17)$$
  Eq. 16 checked as the first-order binomial expansion of eq. 15. The bound "< 0.17" is reproduced: (γ − 1)/2 ÷ (1 + 0.2M_d²) = 0.167 at M_d = 1 and 0.128 at M_d = 1.672 for |M_j² − M_d²| = 1.
- **Shock-noise estimate from data** (eq. 18, p. 17): $I_{\rm shock}\approx I_{\rm measured}-I_{\rm measured}(M_j=M_d)$.

> Verify against the PDF before reuse:
> - Eq. 12 is printed as A₁ = 0.382 Δp/p_a (p. 10), but eq. 4 gives A₁ = 2Δp/(μ₁p_a) = 0.832 Δp/p_a. The proportionality in eq. 17 is unaffected; the constant looks like a digit transposition or a different normalisation of φ₁ (J₁(μ₁) = 0.519 changes it further). Not resolved.
> - Eqs. 3–17 were transcribed from page renders (the OCR is garbled); exponents in eqs. 3 and 13–15 should be checked if coded.
> - The Fig. 5 ε axis label was read from a 110 dpi render.

## Data tables
**Spectra conditions quoted in figure captions** (p. 17–18), D = 5.08 cm:

| Fig. | M_j | Regime | Temperature | u_j (m/s) |
|---|---|---|---|---|
| 9(a) | 1.925 | under | T_R/T_a = 1.0 | 504 |
| 9(b) | 1.928 | under | T_j/T_a = 1.0 | 672 |
| 9(c) | 1.929 | under | T_R/T_a = 2.0 | 726 |
| 10(a) | 1.492 | over | T_R/T_a = 1.0 | 429 |
| 10(b) | 1.495 | over | T_j/T_a = 1.0 | 520 |
| 10(c) | 1.499 | over | T_R/T_a = 2.0 | 618 |

**My recomputation of eq. 11 for Fig. 9(a) and 10(a)** (γ = 1.4, c_a = 340 m/s assumed, u_c = 0.7u_j; not in the paper):

| Case | D_j/D | L_s/D_j | f_p at 75°, 90°, 105°, 120°, 135° (kHz) |
|---|---|---|---|
| M_j 1.925, cold | 1.10 | 2.15 | 4.0, 2.9, 2.3, 1.9, 1.7 |
| M_j 1.492, cold | 0.94 | 1.45 | 5.6, 4.3, 3.5, 3.0, 2.7 |

These are consistent with the Fig. 9(a) peaks, which sit near the 3.15 kHz band at 90° and move down with increasing θ (read from the figure).

**Approximate values read from figures** (verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| C-D OASPL minimum at design, 120°, isothermal | ≈ 119 dB (convergent ≈ 128 dB) | Fig. 6, p. 13 |
| Peak C-D OASPL when overexpanded, 120° | ≈ 126–127 dB near M_j ≈ 1.45–1.5 | Fig. 6, p. 13 |
| Shock-noise intensity range in scaling plots | ≈ 108–128 dB over |M_j² − M_d²| ≈ 0.15–1.2 | Figs. 11–13, p. 19–20 |

## Figures worth remembering
- **Fig. 1 (p. 2):** schematic forward-arc intensity vs M_j for a C-D nozzle: rises from the overexpanded limit to a maximum at C (Mach discs disappear), falls to a minimum A at M_d (mixing noise only), rises again, and drops at B when Mach discs reappear (strongly underexpanded).
- **Fig. 2 (p. 6):** vortex-sheet model of the off-design jet: exit pressure p_a + Δp, fully expanded M_j and D_j.
- **Fig. 4 (p. 8):** Mach waves from a supersonic travelling wave with phase speed ω/(k − λ₁), radiating at θ.
- **Fig. 5 (p. 12):** test matrix: ε against M_j² − M_d² with NPR on the top axis.
- **Fig. 6 (p. 13):** OASPL at 120° vs M_j for C-D and convergent nozzles, with the noise-reduction region hatched.
- **Fig. 7 (p. 14):** OASPL breakdown into mixing, convergent-shock and C-D-shock components at 120°, 90° and 60°.
- **Fig. 8 (p. 15):** 1/3-octave spectra at 120° for 11 values of M_j from 1.104 to 1.961: the shock hump vanishes near 1.676.
- **Figs. 9–10 (p. 17–18):** spectra at 75–135° with calculated (bar) and measured (dashed) peak frequencies, for three temperatures each.
- **Figs. 11–13 (p. 19–20):** shock-noise intensity vs |M_j² − M_d²| on log axes at 120° and 90°, with the (M_j² − M_d²)² line; cold, isothermal and hot.

## Notation
- M_j, M_d: fully expanded and design Mach numbers. D, D_j: exit and fully expanded diameters. Δp: exit static pressure minus ambient (positive underexpanded).
- L_s (L_j in the scan): shock-cell length. λ_n: shock-cell wavenumbers (later papers write k_sn). μ_n: zeros of J₀. A_n: shock-cell amplitudes.
- k, ω, u_c, M_c = u_c/c_a: instability-wave wavenumber, frequency, convection velocity and convective Mach number. a(x): amplitude envelope.
- θ: polar angle from the downstream jet axis (120° is forward arc).
- p_R, T_R: reservoir pressure and temperature. ε: off-design parameter (Fig. 5).

## Relevance to this project
This project analyses resonance and feedback in Shock Lab group experiments (schlieren, acoustics, PIV) and models rocket noise; see CLAUDE.md. This paper is the origin of the k_kh ± k_s triadic-interaction picture that the group's screech work now uses.

- **Screech theory:** the same product of a downstream wave and the shock-cell series gives the k − λ_n wave that later work identifies with the upstream guided jet mode and the k + λ_n wave with the downstream duct-like mode.
  - [Waves in screeching jets (2020)](edgington-mitchell-2020-waves-in-screeching-jets.md) gives the first direct experimental confirmation of both interaction wavenumbers from PIV plus global stability.
  - [A unifying theory of jet screech (2022)](edgington-mitchell-2022-unifying-theory-jet-screech.md) extends λ₁ to the "suboptimal" peaks of the measured shock spectrum to explain A1/A2/B/C staging, and reuses this paper's wavy-wall argument for screech directivity.
  - Tam & Tanna say the k + λ_n waves are subsonic and don't radiate (p. 9); the 2020 paper finds them as trapped duct-like waves, so they matter to the flow even if not to the far field.
  - The A2 explanation via λ₂ (k_kh − k_s2) is consistent with this paper's statement that λ₂ components exist but are weak in a uniform shock train; [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) and the coannular-jet remark (p. 10) both point to non-uniform shock spacing strengthening higher components.
  - [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) uses the same u_c ≈ 0.7U_j and gives the cut-on test for the upstream wave.
- **BBSAN modelling:** [wong-2021](wong-2021-wavepacket-modelling-bbsan.md) is the modern version: it replaces the instability-wave assumption with LES- or PSE-based wavepackets and Lighthill's analogy, corrects the Pack shock model with PIV, and shows the n = 2 peak is predicted. It adopts β² = M_j² − M_d² and the β⁴ intensity law from here. [nogueira-2021-wavepacket-modulation-shock-containing-jets](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) covers the converse effect (shocks modulating wavepackets), which this paper neglects by assumption.
- **Datasets:** [norum-1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md) is the NASA Langley companion database (unheated, convergent and C-D Mach 1.5/2.0, β sweeps, static-pressure surveys). It shows the same shock-noise dip near design, and its static-pressure surveys could test the Pack spacing directly. [tam-1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) supplies the mixing-noise similarity spectra that later Tam BBSAN models add to this source; it also notes that shock cells hardly change mixing noise, the assumption behind eq. 18 here.
- **Applying it to lab data:**
  - Peak-frequency check: from a mean schlieren or PIV field, measure the shock spacing (or the shock wavenumber spectrum), take u_c from SPOD phase speeds or 0.7u_j, and compare f_p(θ) from eq. 11 with microphone spectra. Time-resolved acoustics give the spectra directly; non-time-resolved PIV is enough for the mean shock structure.
  - Use a streamwise Fourier transform of a time-resolved SPOD mode (or of a POD-pair complex mode from PIV) to look for energy at k − λ₁ inside the supersonic band |k| < ω/c_a, the radiating part in this model.
  - BBSAN is broadband, so SPOD with modest frequency resolution suits it; screech tones on top call for adaptive or band-ensemble SPOD ([yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md), [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md)).
  - The paper assumes a steady shock train and statistically stationary turbulence; it says nothing about intermittency. If the shock cells oscillate (e.g. under strong screech or mode switching), SPOD → reconstruction → Hilbert POD ([raiola-2025](raiola-2025-hilbert-pod.md)) could track how the shock-cell wavenumber and the BBSAN peak drift in time. This is a suggestion, not in the paper.
  - Eq. 18 needs a design-point run of the same nozzle; for convergent nozzles mixing noise must come from elsewhere.
- **Rocket noise:** rocket nozzles are C-D and usually run near design, sometimes overexpanded at sea level. [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) reports no clear BBSAN at full scale, and [mathews-2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) finds BSN on an afterburning F404 with shock-spacing formulas failing for overexpanded C-D jets, while the Harper-Bourne–Fisher/Tam–Tanna peak formula works with measured spacing. Eq. 5 is first-order and assumes no Mach disc, so it should not be trusted for strongly overexpanded or heated plumes.
- **Limits of the model:** first-order shocks (|M_j² − M_d²| ≲ 1), no shock-cell decay, constant u_c = 0.7u_j, no absolute level, no spectral shape, cold-to-hot spread up to 3 dB unexplained (p. 10, 19–21).
- **Related works cited, candidates for `/add-paper`:** Harper-Bourne & Fisher 1973 (AGARD CP-131); Tanna 1977 Parts I–II (J. Sound Vib. 50); Seiner & Norum 1979, 1980 (AIAA 79-1526, 80-0965); Pack 1950; Tam & Morris 1980; Tam 1972; Tanna, Tam & Brown 1981 (NASA CR-3454, coannular jets); Howe & Ffowcs Williams 1978.
