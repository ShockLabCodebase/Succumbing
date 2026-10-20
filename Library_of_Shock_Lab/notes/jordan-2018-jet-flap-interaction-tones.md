---
key: "jordan-2018-jet-flap-interaction-tones"
title: "Jet–flap interaction tones"
authors: ["Jordan, P.", "Jaunet, V.", "Towne, A.", "Cavalieri, A. V. G.", "Colonius, T.", "Schmidt, O.", "Agarwal, A."]
year: 2018
type: "article"
venue: "JFM 853, 333–358"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "853", "pages": "333--358"}
doi: "10.1017/jfm.2018.566"
arxiv: ""
pdf: "impinging-jets-and-edge-tones/Jordan-EtAl_2018_Jet-Flap-Interaction-Tones.pdf"
version: "published"
unverified: []
group: false
facility: "Pprime Bruit et Vent jet-noise facility"
data: ["microphones-near", "microphones-far"]
methods: ["PSD", "wavelets", "vortex-sheet", "resonance-model"]
flow: ["round-jet", "jet-edge", "subsonic"]
phenomena: ["edge-tones", "guided-jet-mode", "KH-wavepackets", "mode-switching", "intermittency"]
params: {"M_j": "0.6–1.0", "L/D": "2, 3, 4", "D": "50 mm"}
topics: ["impinging-jets-and-edge-tones", "linear-models"]
related: ["stavropoulos-2026-jet-edge-interaction", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "nogueira-2024-guided-jet-waves", "weightman-2019-sound-production-impinging-supersonic-jets"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "huerre-1990-local-global-instabilities-spatially-developing-flows", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
summary: "M 0.6–1 jet grazing a plate edge: tones from KH coupling with upstream jet modes (k_TH⁻, k_p⁻), not free-stream sound; vortex-sheet phase model; high-St cutoff by wave trapping"
---
# Jet–flap interaction tones

- **Authors:** P. Jordan, V. Jaunet, A. Towne, A. V. G. Cavalieri, T. Colonius, O. Schmidt, A. Agarwal (Institut Pprime, Poitiers; CTR Stanford; ITA, Brazil; Caltech; Cambridge)
- **Source:** J. Fluid Mech. 853, 333–358 (2018), doi:10.1017/jfm.2018.566. Open access (CC BY). Received 16 Oct 2017, published online 23 Aug 2018 (p. 1). The running head reads "Jet–edge interaction tones", but the title is "Jet–flap interaction tones".
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/impinging-jets-and-edge-tones/Jordan-EtAl_2018_Jet-Flap-Interaction-Tones.pdf` (26 pp.; local only, not in Git). Page refs below are PDF pages; journal page = PDF page + 332.
- **Tags:** jet–edge / jet–flap interaction, edge tones, subsonic jet resonance, Kelvin–Helmholtz wavepacket, guided jet mode, trapped acoustic waves, k_TH⁻ (Tam & Hu), k_p⁻, k_d⁻, vortex-sheet dispersion relation, soft-walled duct model, resonance condition, reflection coefficient, frequency squeezing, high-frequency cutoff, complex-mode resonance analysis, mode switching, wavelet scalogram, near-field microphone

## Summary
An isothermal round jet (D = 50 mm, M = 0.6–1.0) grazes the edge of a flat plate placed on the lipline at L/D = 2, 3 and 4. Near-field and far-field microphones show a rich set of tones whose St–M pattern the classical edge-tone model (KH wave down, free-stream sound wave up) fails to reproduce (p. 4–5). The authors instead model resonance between the downstream KH wave and upstream-travelling acoustic *jet* modes (guided/trapped waves from Tam & Hu 1989 and Towne et al. 2017), using locally parallel vortex-sheet (DR2) and soft-walled duct (DR1) dispersion relations and a phase-only resonance condition Δk_r L + φ = 2nπ with the reflection phase φ set to 0 or π (p. 7–9). This captures the "frequency squeezing" of the tones (spacing shrinks with St and M) because the upstream waves are dispersive (p. 9). The high-frequency cutoff of the tones is explained in two regimes: for M ≤ 0.82 the k_TH⁻ wave becomes trapped inside the jet, misses the nozzle lip and is fully transmitted into the nozzle (zero reflection), while for 0.82 < M < 1 the k_p⁻ wave becomes evanescent above a saddle point (p. 10–14). A complex-wavenumber analysis that keeps the magnitude condition gives a low-frequency cutoff but is fragile because |R₁R₂| is unknown (p. 15–16, App. D). Wavelet scalograms reveal mode switching and intermittent competition between neighbouring resonance cycles (p. 16–17, App. A).

## Key findings
- **Classical edge-tone model fails** (p. 4–5, Fig. 2): KH + free-stream sound resonance (blue lines in Fig. 2) gets neither the frequency spacing nor the Mach-number trend of the observed peaks.
- **Tone patterns** (p. 4–5, Fig. 2–3):
  - The strongest tones have the same St–M pattern in the hydrodynamic near field (m1) and the acoustic field (m2).
  - Acoustic peak levels are of order 170 dB/St (p. 4); the near-field PSD map spans about 160–190 dB/St (Fig. 2 colour bar).
  - The tones lie roughly at St ≈ 0.3–1.0 for M = 0.6, falling with M (Fig. 2; read from figure).
  - **Frequency squeezing:** spacing between resonant peaks shrinks as St or M increases (p. 5).
- **Oscillator vs amplifier behaviour** (p. 5):
  - In some M ranges the broadband level is strongly suppressed and the multiple low-St peaks (St < 0.7) are replaced by one strong, high-Q peak plus its harmonic (e.g. St ≈ 1.25 for M ≈ 0.78, L = 2D).
  - This is repeatable whether M is swept up or down. The authors read it as a nonlinear limit cycle (strong self-sustained oscillation), contrasting with weak, lightly damped forced resonance, as seen in cavities (Rowley et al. 2006).
  - The modelling is restricted to linear analysis (p. 5).
- **Wave catalogue** (m = 0, radial order j = 1; p. 5–7, Fig. 4–5):
  - Downstream (k⁺): KH (k_KH⁺, unstable) and k_T⁺ (Towne et al. 2017; exists only for 0.82 < M ≤ 1, duct-like at low St, shear-layer mode at high St).
  - Upstream (k⁻): free-stream sound; k_TH⁻ (Tam & Hu 1989; exists for 0 < M ≤ 0.82; shear-layer mode at low St, duct-like/trapped at high St); k_d⁻ (0.82 < M < 1; duct-like, evanescent *below* a cut-on frequency); k_p⁻ (0.82 < M < 1; shear-layer mode, evanescent *above* a cutoff frequency, the saddle point S2 of Towne et al. 2017).
  - Only KH is unstable, so the likely loop is k_KH⁺ coupled to a k⁻ jet mode via reflections at the nozzle exit and the plate edge (p. 8). k_T⁺ is excluded because the tones are continuous across M = 0.82, below which k_T⁺ is evanescent (p. 8).
- **Neutral-mode prediction** (p. 9–10, Fig. 6–7):
  - k_KH⁺/k_TH⁻ (M ≤ 0.82) and k_KH⁺/k_p⁻ (M > 0.82) reproduce the general trend and the frequency squeezing.
  - k_KH⁺/k_d⁻ predictions "were found not to match the data" and are not shown (p. 9).
  - Three remaining discrepancies: (i) predicted tones continue to infinite St, data show a cutoff; (ii) predicted low-St peaks are absent in the data; (iii) in-phase (φ = 0) fits some cases, out-of-phase (φ = π) others, which the authors put down to the crude end conditions (p. 9).
- **High-frequency cutoff, M ≤ 0.82** (p. 10–12, Fig. 8–9):
  - k_TH⁻ eigenfunctions at M = 0.6 become confined inside the jet for St ≳ 1 and approach the soft-walled duct mode J₀ (Fig. 8). With negligible amplitude at the lip, the wave cannot be scattered into k⁺ waves.
  - A rigid-duct/soft-duct junction model (App. C) gives |R/I| ≈ 0 above the soft-duct cut-on frequency: the trapped wave is fully transmitted into the nozzle as a plane wave (Fig. 9).
  - The cut-on line (St ≈ 1.0 at M = 0.6 falling to ≈ 0.53 at M = 0.82; own evaluation of eq. C4 with α_j = 2.4048, matching the red line in Fig. 9/11) agrees well with the observed cutoff (Fig. 11–12).
- **High-frequency cutoff, 0.82 < M < 1** (p. 12–14, Fig. 10–12): the k_p⁻ branch ends at a saddle point (evanescent above it). Its cutoff St (cyan line, ≈ 0.5 at M = 0.82 down to ≈ 0.35 near M = 1; read from Fig. 11) matches the observed cutoff.
- **St–M zones** (Fig. 11, p. 14): I k_TH⁻ propagative; II k_p⁻ propagative; III k_TH⁻ propagative but trapped and non-reflecting; IV k_p⁻ evanescent. Tones appear in I and II only.
- **Higher bands:** tones at higher St, clearest for M > 0.9, come from higher radial and azimuthal orders (Schmidt et al. 2017) and are not modelled because a single microphone can't resolve them (p. 13).
- **Low-frequency cutoff** (p. 13–16, Fig. 14): complex-mode analysis gives a threshold ω_r at ω_i = 0 below which resonance is damped. With |R₁R₂| = 0.002, 0.004, 0.008 it roughly bounds the low-St region without tones. The values suit L = 4D but should be larger for L = 2D and 3D, suggesting R₂ depends on edge position (p. 16).
- **Complex-mode model is fragile** (App. D, p. 20–24, Fig. 17–21):
  - For L = 2D the neutral and complex models agree where the complex model predicts resonance. For L = 3D and 4D the complex model does worse: underpredicts f at low M, overpredicts at high M, and gives non-monotonic M-dependence for some modes (p. 20).
  - Cause: the magnitude constraint e^{Δk_i L} = |R₁R₂| forces k⁻ to become spatially evanescent and k⁺ less unstable. Near the invalid k⁻/k⁻ saddle point of Towne et al. (2017) the large gradients of ω(k) make k_r very sensitive to k_i, giving an apparent discontinuity at L = 4D (p. 22–24, Fig. 20–21).
  - Conclusion: the neutral-mode model gives reasonable predictions over a limited band and is insensitive to the missing physics there; the complex model mainly signals where the neutral model will fail (low St) (p. 24).
- **Intermittency / mode switching** (App. A, p. 16–17, Fig. 15): continuous wavelet scalograms of the near-field signal show four behaviours:
  - (M, L/D) = (0.8, 3): one resonance cycle dominates despite nearby candidates.
  - (0.8, 4): slow competition (switching) between neighbouring cycles.
  - (0.78, 4): fast competition between neighbouring cycles.
  - (0.6, 2): uncorrelated co-existence of several cycles.

## Setup / method
- **Facility:** Bruit et Vent jet-noise facility, Institut Pprime, Poitiers (p. 3). Same nozzle as Cavalieri et al. 2013, Schmidt et al. 2017, Towne et al. 2017 and Brès et al. 2018 (p. 3).

  | Quantity | Value |
  |---|---|
  | Jet | Round, isothermal, D = 0.05 m |
  | Mach number | M = 0.6–1.0 in steps of 0.02 (p. 3) |
  | Nozzle boundary layer | Turbulent, tripped by carborundum strip 2.7D upstream of exit |
  | Plate | Aluminium, 9D × 15D × 0.06D, inclined at 45° to the jet axis |
  | Edge position | Long edge on the lipline r = 0.5D, at L/D = 2, 3, 4 |
  | m1 (near field) | (x/D, r/D) = (0.08, 0.55), irrotational hydrodynamic near field, unshielded side |
  | m2 (acoustic) | Shielded side of the plate; Fig. 1 shows x ≈ 3D, ≈ 14.6D from the axis at 70° in the cross-plane (read from schematic) |
  | Sampling | 20 s at 200 kHz per configuration |
  | Spectra | Welch PSD; block size, overlap and window **not stated** |
  | Strouhal number | St = fD/U_j |

- **Diagnostics are all time-resolved point measurements** (two microphones). No field data (PIV/schlieren); no modal decomposition. Analysis is PSD maps over (St, M) plus wavelet scalograms.
- **Wavelet analysis** (App. A, p. 16–17): continuous wavelet transform with a "bump" wavelet, μ = 5, σ = 0.6, chosen to resolve neighbouring resonance peaks in time and frequency. Needs time-resolved data.
- **Linear models** (p. 7, 10–12; Towne et al. 2017 for details):
  - Linearised Euler equations, locally parallel, normal-mode ansatz, axisymmetric m = 0, j = 1 only.
  - DR2: cylindrical vortex sheet (Lessen et al. 1965; Michalke 1970), r = 0.5D, temperature ratio T (= 1, isothermal). Lengths scaled by D, frequency ω = 2πStM (i.e. scaled with a∞).
  - DR1: soft-walled (pressure-release) cylindrical duct with plug flow.
  - First, a phase-speed-only prediction from DR2; then DR2 truncated where DR1 shows trapping (red line) or where k_p⁻ is cut off (black line) (Fig. 10, p. 13).
  - Nozzle reflection (App. C): rigid duct (nozzle) joined to soft duct (jet), plug flow M ≤ 0.82; mass and momentum balance across a thin disk at x = 0 (treated as incompressible). Incident k_d⁻/k_TH⁻ mode (α_j = 2.4048) is transmitted as a plane wave (α_n = 0) because the first radial nozzle mode (α_n = 3.8) is cut off at the frequencies of interest.
  - Complex-mode model (App. D): solve for triplets (k⁺, k⁻, ω) ∈ ℂ satisfying DR2 plus both resonance conditions, with |R₁R₂| a constant parameter (0.002–0.008).
- **End-condition assumptions:** R₁(M, St) at the nozzle and R₂(M, St, L) at the edge are unknown; φ = arg(R₁R₂) taken as 0 or π, independent of M, St and L (p. 8). The authors suggest Wiener–Hopf analysis (Rienstra 2007) or numerics to model the nozzle reflection (p. 8).

## Key equations
- Normal-mode ansatz: $q(x,r,t)=\hat q(r)\,e^{i(kx-\omega t)}$, k scaled by D, $\omega=2\pi St M$ (eq. 4.1, p. 7).
- DR1, soft-walled duct (eq. 4.2, p. 7): $k^{\pm}_{m,n}=\dfrac{-\omega M\pm\sqrt{T}\sqrt{\omega^2-4(T-M^2)\beta^2_{m,n}}}{T-M^2}$, with $\beta=i\gamma_i/2$ as printed.
- DR2, cylindrical vortex sheet (eq. 4.3–4.5, p. 7):
  $\mathcal D(\omega,k;M,T)=\dfrac{1}{(\omega-kM)^2}+\dfrac{1}{T}\,\dfrac{I_m(\gamma_i/2)\left[\tfrac{\gamma_o}{2}K_{m-1}(\gamma_o/2)+mK_m(\gamma_o/2)\right]}{K_m(\gamma_o/2)\left[\tfrac{\gamma_i}{2}I_{m-1}(\gamma_i/2)+mI_m(\gamma_i/2)\right]}=0$,
  $\gamma_i=\sqrt{k^2-(\omega-Mk)^2}$, $\gamma_o=\sqrt{k^2-\omega^2}$, branch cuts with Re(γ_i,o) > 0.
- Resonance (App. B, p. 17–18): $\hat q=A^+e^{ik^+x}+A^-e^{ik^-x}$, $R_1=A^+/A^-$ at x = 0, $R_2=A^-e^{ik^-L}/(A^+e^{ik^+L})$ at x = L ⇒ $R_1R_2e^{i\Delta kL}=1$, $\Delta k=k^+-k^-$ (eq. B4–B6). Magnitude and phase (eq. 4.6–4.7 = B8–B9):
  $e^{\Delta k_i L}=|R_1R_2|$, $\quad\Delta k_r L+\phi=2n\pi$.
- In-phase and out-of-phase conditions (eq. 4.8–4.9, p. 8): $\Delta k=2n\pi/L$, $\Delta k=(2n+1)\pi/L$.
- k_TH⁻ pressure eigenfunction (eq. 4.10–4.11, p. 10): $p_i=I_0(\gamma_i r)$ for 0 ≤ r ≤ 0.5, $p_o=K_0(\gamma_o r)$ for r ≥ 0.5.
- Nozzle-plane reflection coefficient (eq. 4.12 = C20, p. 11, 20): $\dfrac{R}{I}=\left(\dfrac{1-k_j^+M/\omega}{1-k_j^-M/\omega}\right)\left(\dfrac{k_n^--k_j^-}{k_j^+-k_n^-}\right)$.
- Duct dispersion relation (eq. C3, p. 18, scaled by D and a∞): $k^\pm=\dfrac{-\omega M\pm\sqrt{\omega^2-4\alpha^2(1-M^2)}}{1-M^2}$; radial structure $J_0(\alpha r)$.
- Cut-on of duct mode of radial order α (eq. C4, p. 19): $St=\dfrac{\alpha\sqrt{1-M^2}}{\pi M}$. With α_j = 2.4048 this gives the red trapping line in Fig. 9–12 (St ≈ 1.02 at M = 0.6, 0.53 at M = 0.82; own check).
- Bump wavelet (eq. A1–A3, p. 16): $C(t,s)=\int p(\tau)\,\psi\!\left(\tfrac{t-\tau}{s}\right)d\tau$, $\hat\psi(s\omega)=e^{\,1-1/(1-(s\omega-\mu)^2/\sigma^2)}\,I(s\omega)$, I = 1 for μ − σ ≤ sω ≤ μ + σ, else 0; μ = 5, σ = 0.6.

> Equations were re-typed from rendered pages 7, 8, 11, 16, 18 and 19; the text extraction garbled them. Check against the PDF: the β definition in eq. 4.2 (printed as iγ_i/2, which looks odd for a duct model); the factor 4α² in eq. C3, which implies α is a radius-scaled radial wavenumber (J₀ zero at r = 1) even though r elsewhere is scaled by D; and the C9–C19 derivation, which was not rebuilt here.

## Data tables
**Wave families used (m = 0, j = 1; p. 5–7, Fig. 5)**

| Wave | Direction | Mach range | Character | Role in tones |
|---|---|---|---|---|
| k_KH⁺ | Downstream | all | Unstable KH | Downstream half of loop |
| k_T⁺ | Downstream | 0.82 < M ≤ 1 | Duct-like at low St, shear-layer at high St | Excluded |
| k_TH⁻ | Upstream | 0 < M ≤ 0.82 | Shear-layer at low St, trapped/duct-like at high St | Closes loop for M ≤ 0.82 |
| k_d⁻ | Upstream | 0.82 < M < 1 | Duct-like; evanescent below cut-on | Did not match data |
| k_p⁻ | Upstream | 0.82 < M < 1 | Shear-layer; evanescent above saddle point | Closes loop for M > 0.82 |
| Free-stream sound | Both | all | Acoustic | Classical edge-tone model; fails |

**Complex-model reflection products tried:** |R₁R₂| = 0.002, 0.004, 0.008 (Fig. 14, p. 15).

## Figures worth remembering
- **Fig. 1 (p. 3):** set-up: plate at 45°, edge on the lipline at L; microphones m1 (near field) and m2 (shielded side).
- **Fig. 2 (p. 4):** near-field PSD maps over (M, St) for L/D = 2, 3, 4 with failed KH/free-sound predictions (blue).
- **Fig. 3 (p. 4):** acoustic PSD maps (m2) for the same cases.
- **Fig. 4–5 (p. 6):** wave schematic and vortex-sheet dispersion relations for 0.6 ≤ M ≤ 0.97, colour-coded by wave family; zoom on k_p⁻/k_T⁺/k_d⁻ near the saddle points.
- **Fig. 6 (p. 9):** Δk(St) for KH paired with each k⁻ mode, and how the resonance lines 2nπ/L and (2n+1)π/L intersect it (frequency squeezing).
- **Fig. 7 (p. 10):** first neutral-mode tone predictions on the data, out-of-phase and in-phase.
- **Fig. 8 (p. 11):** k_TH⁻ pressure eigenfunctions at M = 0.6 becoming trapped as St rises to ≈ 1.
- **Fig. 9 (p. 12):** |R/I| over (M, St): ≈ 0 above the soft-duct cut-on line.
- **Fig. 10 (p. 13):** truncation of the dispersion relations by the trapping (red) and k_p⁻ cutoff (black) lines.
- **Fig. 11–12 (p. 14):** St–M zones I–IV overlaid on the data; the cutoff lines bound the tones.
- **Fig. 13 (p. 15):** refined (truncated) tone predictions on the data — the paper's main result.
- **Fig. 14 (p. 15):** low-frequency cutoff for three |R₁R₂| values.
- **Fig. 15 (p. 17):** wavelet scalograms showing single-cycle dominance, slow and fast switching, and co-existence.
- **Fig. 17–21 (p. 21–23):** complex-mode model: predictions, branch deformation, invalid saddle point, ω(k) landscape at M = 0.6, 0.7, 0.8.

## Notation
- M: jet Mach number U_j/a∞ (isothermal, so acoustic and jet Mach numbers coincide). T: jet/ambient temperature ratio. St = fD/U_j; ω = 2πStM.
- k: streamwise wavenumber scaled by D; superscript ± is the sign of the generalised group velocity (Briggs 1964), not the phase velocity (p. 5).
- k_KH⁺ KH; k_T⁺ downstream jet mode; k_TH⁻ Tam & Hu upstream mode; k_d⁻ duct-like upstream mode; k_p⁻ shear-layer upstream mode.
- L: nozzle-to-edge distance. R₁, R₂: reflection coefficients at nozzle and edge; φ = arg(R₁R₂); n: integer mode number.
- (m, j): azimuthal and radial order. α_j, α_n: radial wavenumbers in the soft (jet) and rigid (nozzle) ducts; I, R, T: incident, reflected, transmitted amplitudes (App. C).
- μ, σ: bump-wavelet centre and width.

## Relevance to this project
This paper is from the Pprime/Caltech/Stanford group rather than the Shock Lab, but it is the source of the resonance framework (neutral-mode phase condition, φ = 0/π, upstream jet-mode closure, bump-wavelet scalograms) that the group's screech papers reuse.
- **Resonance-model template:** the phase condition Δk_r L + φ = 2nπ with vortex-sheet dispersion relations is exactly what [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md) applies to screech, with L replaced by the shock-cell position and the magnitude condition likewise neglected. That note records that its bump-wavelet μ and σ were not given; this paper gives μ = 5, σ = 0.6 (p. 17).
- **Guided-mode closure beyond screech:** the same upstream jet modes close the loop for a subsonic jet grazing an edge. This parallels the screech closure in [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), and the trapped-wave resonance in the isolated M 0.9 jet shown in [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md). The band of existence of the upstream mode (cut-on/cutoff) again bounds where tones can occur.
- **Impinging jets:** the paper cites Weightman et al. (2017) as evidence that free-stream sound can also close impinging-jet loops (p. 2). That contrasts with the guided-mode closure here; see [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md), where external acoustic rays close the loop. The trapping/non-reflection argument here (a trapped wave never reaches the lip, so cannot be re-scattered) is a useful test for which path closes a given impinging-jet tone: lip-receptivity needs amplitude at the lip.
- **Follow-up on the same configuration:** [stavropoulos-2026-jet-edge-interaction.md](stavropoulos-2026-jet-edge-interaction.md) (Stavropoulos, Cavalieri, Lesshafft & Jordan 2026) revisits jet–edge frequency selection with linear and nonlinear mechanisms; compare it with the purely linear, neutral-mode model here and with the nonlinear limit-cycle behaviour noted on p. 5.
- **Modelling side:**
  - Strengths: cheap, analytic (vortex sheet + duct), predicts frequencies and both cutoffs well where tones are strong.
  - Limits: locally parallel, no shear-layer thickness, m = 0 / j = 1 only, unknown reflection coefficients (|R₁R₂| treated as a constant, φ as 0 or π), no amplitude prediction, linear only. Complex-mode model is sensitive near saddle points.
  - For Shock Lab screech/impinging/edge-type problems, the same recipe applies; Floquet/shock-cell-aware versions are in [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md) and [nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md), where the saddle-point (absolute instability) view replaces the explicit reflection-coefficient picture.
- **Data-type dependence:**
  - All diagnostics here are single-point, time-resolved microphones; PSD maps over a fine M sweep (ΔM = 0.02) are enough to test resonance models. This is a cheap complement to schlieren/PIV campaigns in the lab: sweep NPR or standoff finely with microphones first.
  - Wavelet scalograms (time-resolved only) show mode switching and intermittent competition between neighbouring loops (Fig. 15). In the SPOD → reconstruction → Hilbert POD pipeline, these are the cases where block-averaged SPOD would show two peaks while HPOD on the reconstructed bands would show which loop is active when.
  - A wavenumber decomposition of time-resolved schlieren (k–ω map, as in Towne et al. 2022 and Weightman's (x, t) Fourier split) would directly separate the k_TH⁻/k_p⁻ waves that this paper only infers from tone frequencies. With non-time-resolved PIV, the POD-pair + spatial-FFT route of Edgington-Mitchell et al. (2018) does the same.
- **Related works cited:** Towne et al. 2017 and Schmidt et al. 2017 (JFM 825, trapped acoustic modes in the potential core), Tam & Hu 1989, Tam & Ahuja 1990 (impinging-jet tones via upstream jet mode), Bogey & Gojon 2017, Lawrence & Self 2015 (jet–flap tones), Rowley et al. 2006 (cavity mode switching), Brès et al. 2018 (nozzle boundary layer). All are candidates for `/add-paper`.
