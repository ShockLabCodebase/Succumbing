---
key: "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets"
title: "The shock-cell structures and screech tone frequencies of rectangular and non-axisymmetric supersonic jets"
authors: ["Tam, C. K. W."]
year: 1988
type: "article"
venue: "J. Sound Vib. 121(1), 135–147"
bib: {"journal": "Journal of Sound and Vibration", "volume": "121", "number": "1", "pages": "135--147"}
doi: "10.1016/S0022-460X(88)80066-X"
arxiv: ""
pdf: "screech/Tam_1988_The-Shock-Cell-Structures-And-Screech-Tone-Frequencies-Of-Rectangular-And.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["none"]
methods: ["shock-cell-model", "vortex-sheet", "resonance-model"]
flow: ["rectangular-jet", "elliptical-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "shock-cells"]
params: {"M_j": "1.1–1.8", "M_d": "1", "AR": "5.83, 12.75 (comparison data)"}
topics: ["screech", "non-axisymmetric-and-twin-jets"]
related: ["tam-1986-bbsan-screech-relationship", "tam-1982-shock-associated-noise-cd-nozzles", "krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet", "mancinelli-2019-screech-prediction-upstream-modes", "esfahani-2021-coupling-modes-twin-rectangular-jets", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "mazharmanesh-2025-screech-modes-non-axisymmetric-jets"]
cites: ["norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship"]
summary: "Vortex-sheet (Prandtl–Pack) shock-cell model for any cross-section: rectangular sine and elliptic Mathieu modes; spacing set by the minor dimension; weakest-link screech St matches rectangular jets"
---
# The shock-cell structures and screech tone frequencies of rectangular and non-axisymmetric supersonic jets

- **Authors:** C. K. W. Tam (Department of Mathematics, Florida State University)
- **Source:** J. Sound Vib. 121(1), 135–147 (1988), doi:10.1016/S0022-460X(88)80066-X. First presented as AIAA Paper 86-1866 (10th Aeroacoustics Conference, Seattle, July 1986) (p. 1). Received 7 Oct 1986, revised 22 Apr 1987.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/Tam_1988_The-Shock-Cell-Structures-And-Screech-Tone-Frequencies-Of-Rectangular-And.pdf` (13 pp.). Scanned publisher copy; the text layer is OCR and garbles the equations, so all equations below were read from page renders.
- **Page refs:** PDF page numbers. PDF p. n is printed journal page 134 + n (PDF p. 1 = p. 135).
- **Tags:** screech, shock-cell spacing, rectangular jet, elliptic jet, non-axisymmetric jet, aspect ratio, vortex-sheet model, Prandtl–Pack, eigenfunction expansion, Mathieu functions, fully expanded jet size, weakest-link theory, screech frequency prediction, convergent-divergent nozzle, choked (convergent) nozzle, theory only (no new experiments)

## Summary
The paper extends the Prandtl–Pack vortex-sheet shock-cell model, previously only solved for round jets, to jets of any cross-section. Treating the shock cells as small, steady pressure perturbations on the fully expanded jet, bounded by a vortex sheet on which the pressure perturbation vanishes, it turns the problem into a 2D Helmholtz eigenvalue problem over the jet cross-section; the smallest eigenvalue fixes the shock-cell spacing. Closed-form solutions are given for rectangular jets (sine modes) and elliptic jets (Mathieu functions), plus a simple area-ratio correction from the nozzle-exit size to the fully expanded size. The rectangular spacing formula matches the shock-spacing data of Powell and Hammitt for choked high-aspect-ratio jets over M_j ≈ 1.1–1.7. Inserting the spacing into the Tam, Seiner & Yu (1986) "weakest link" screech-frequency formula, with u_c = 0.7u_j, gives screech Strouhal numbers that agree well with Powell's and Krothapalli et al.'s rectangular-jet data for M_j = 1.15–1.80. The model is admittedly crude and is meant as a first estimate and as the nozzle-exit starting solution for a multiple-scales model.

## Key findings
- **General result** (p. 4–5): for any cross-section, the shock-cell pressure is an eigenfunction expansion in transverse modes φ_nm(y, z), each varying as cos(k_nm x). Eigenvalues are real, eigenfunctions complete and orthogonal; the amplitudes come from projecting a uniform exit pressure mismatch Δp onto the modes. Shock-cell spacing is L_s = 2π/k_smallest (eq. 2.19).
- **Rectangular jets** (p. 6):
  - The fundamental mode (n = m = 1) gives L_s = 2(M_j² − 1)^{1/2} h_j /[1 + h_j²/b_j²]^{1/2} (eq. 2.23), where h_j is the smaller (fully expanded) dimension.
  - For aspect ratio b/h > 4 the correction is under 3% (my arithmetic: 1/√(1 + 1/16) = 0.970), so the spacing is essentially that of a 2D jet, L_s ≈ 2(M_j² − 1)^{1/2} h_j (eq. 2.24). Spacing is set by the **minor** dimension.
  - Only odd n, m appear in the expansion of a uniform Δp (factor (1 − cos nπ)(1 − cos mπ), eq. 2.22).
- **Elliptic jets** (p. 6–7):
  - Near-circular limit (eq. 2.33) recovers the round-jet (Pack) spacing; in the narrow limit (eq. 2.36) L_s ≈ 4L_B(M_j² − 1)^{1/2}/[1 + (1/π)(L_B/L_A)], i.e. a 2D jet of thickness 2L_B. Intermediate aspect ratios need the numerically computed Fig. 4.
- **Fully expanded size** (p. 8–9): assuming the jet keeps its shape and grows uniformly around its perimeter, the exit-to-fully-expanded size change follows from 1D isentropic area ratios (eqs. 2.38–2.43). For a rectangle, h_j/h = [(A_j/A_d) − 1][b/(h + b)] + 1, so the short side grows proportionally more than for a round jet.
- **Shock spacing vs experiment** (p. 9–10, Fig. 6):
  - Choked rectangular jets (M_d = 1): Powell, b/h = 5.83; Hammitt, b/h = 12.75. Eq. 2.44 agrees well over 1.1 ≤ M_j ≤ 1.7.
  - This is beyond the range where Tam, Jackson & Seiner (1985) expected linear theory to hold (|M_j² − M_d²| ≲ 1, i.e. M_j < 1.4 for choked jets). Tam attributes the success to the measurements being of the first cells, where the shear layer is thin (p. 9–10).
  - Shock spacing shrinks towards the end of the potential core, which the vortex-sheet model cannot capture; a multiple-scales model is needed there (p. 10).
- **Screech frequency** (p. 10–12, Fig. 7):
  - Weakest-link argument (Tam, Seiner & Yu 1986): sound from KH–shock interaction reaching the lip is confined to a narrow band around f_p = u_c k₁ /[2π(1 + u_c/a_∞)] (eq. 3.1); the loop can only sustain itself in that band, so f_s ≈ f_p (p. 10).
  - Tam contrasts this with Powell's model: both give nearly the same formula, but Powell's needs the external sound to excite instability waves at every shock cell, which is inefficient without a solid edge; the weakest-link model puts receptivity at the nozzle lip (p. 10–11, citing Tam 1986).
  - With k₁ = k₁₁ from eq. 2.21 and the size correction, eq. 3.2 gives f h/u_j for any aspect ratio and design Mach number; for cold, choked, large-aspect-ratio jets it reduces to eq. 3.3 (p. 11).
  - Fig. 7: prediction vs Powell (3.05 mm nozzle) and Krothapalli et al. (3 mm and 5 mm nozzles) for M_j = 1.15–1.80. Agreement is "favorable" throughout (p. 12). Read from the figure: the curve runs from f h/u_j ≈ 0.35 at M_j ≈ 1.15 to ≈ 0.08 at 1.8 and sits slightly (roughly 0.01–0.02) above most data points from M_j ≈ 1.3 upward.
- **What could not be tested** (p. 12): no data existed for rectangular jets with aspect ratio below 4, so the aspect-ratio dependence of eq. 2.23 was unverified at the time.

## Setup / method
- **Type:** analytical model only; all data are from earlier papers (Powell 1953; Hammitt 1961; Krothapalli et al. 1986).
- **Model assumptions** (p. 3–4):
  - Slightly off-design jet from a C-D (or choked) nozzle; shock cells are linear, steady perturbations on the uniform fully expanded flow (ρ_j, u_j, a_j, M_j).
  - Mixing layer replaced by a vortex sheet S₀(y, z) = 0. No disturbance outside the jet.
  - Inviscid, no shear-layer growth, no shock-cell decay, no non-parallel effects.
  - Exit conditions: uniform exit pressure mismatch Δp = p_e − p_a across the section, and parallel exit flow (zero transverse velocity).
  - Dynamic BC: pressure perturbation zero on the sheet (eq. 2.6). The kinematic BC (eq. 2.8) only sets the sheet displacement S₁ and is not needed for the pressure.
- **Rectangular solution:** separation of variables in y, z with width b_j and height h_j (Fig. 2, p. 5).
- **Elliptic solution:** elliptic cylinder coordinates (μ, θ, x) with semi-axes L_A = a cosh μ₀, L_B = a sinh μ₀; only modes symmetric about both axes (even Mathieu functions ce_2n, Ce_2n, McLachlan's notation) are kept. Large-q asymptotics from McLachlan for the narrow case (p. 6–7).
- **Size correction:** 1D isentropic area–Mach relation between the exit (M_d, A_d) and the fully expanded state (M_j, A_j); the area change is spread as a uniform layer of thickness ΔL/2 around the perimeter S (Fig. 5, p. 8).
- **Screech model:** weakest-link frequency (eq. 3.1) with u_c = 0.7u_j (from Tam, Seiner & Yu, consistent with Harper-Bourne & Fisher), cold jet (a_j/a_∞ from the stagnation temperature equal to ambient), γ = 1.4 implied.
- **Comparison data** (p. 9, 11–12): see Data tables.

## Key equations
All checked against page renders. Lengths are dimensional; subscript j = fully expanded, d = nozzle exit/design.

- Linearised equations inside the jet (eqs. 2.2–2.4, p. 4) and the resulting pressure equation (eq. 2.5):
  $$\rho_j\nabla\cdot\mathbf v + u_j\,\partial\rho/\partial x = 0,\quad \rho_j u_j\,\partial\mathbf v/\partial x = -\nabla p,\quad p = a_j^2\rho;\qquad \nabla^2 p - M_j^2\,\partial^2 p/\partial x^2 = 0$$
- Separated form and eigenvalue problem (eqs. 2.11–2.14, p. 4–5):
  $$p = \phi(y,z)\cos kx,\qquad \nabla_\perp^2\phi + (M_j^2-1)k^2\phi = 0,\ \ \phi = 0 \text{ on } S_0,\qquad v_\perp = \frac{1}{\rho_j u_j}(\nabla_\perp\phi)\sin kx$$
- Expansion and coefficients (eqs. 2.16, 2.18, p. 5), and spacing (eq. 2.19):
  $$p = \sum_n\sum_m A_{nm}\phi_{nm}\cos k_{nm}x,\qquad A_{nm} = \Delta p\iint_D\phi_{nm}\,dy\,dz\Big/\iint_D\phi_{nm}^2\,dy\,dz,\qquad L_s = 2\pi/k_{\rm smallest}$$
- Rectangular jet (eqs. 2.20–2.24, p. 6):
  $$\phi_{nm} = \sin\frac{n\pi y}{b_j}\sin\frac{m\pi z}{h_j},\quad k_{nm} = \Big(\frac{n^2}{b_j^2}+\frac{m^2}{h_j^2}\Big)^{1/2}\frac{\pi}{(M_j^2-1)^{1/2}},\quad n,m = 1,2,\dots$$
  $$p = \sum_{n,m\ge1}\frac{4\Delta p}{nm\pi^2}(1-\cos n\pi)(1-\cos m\pi)\sin\frac{n\pi y}{b_j}\sin\frac{m\pi z}{h_j}\cos k_{nm}x\quad(2.22)$$
  $$L_s = \frac{2(M_j^2-1)^{1/2}h_j}{[1+h_j^2/b_j^2]^{1/2}}\ (2.23),\qquad L_s \approx 2(M_j^2-1)^{1/2}h_j\ \ \text{for } h_j/b_j < \tfrac14\ (2.24)$$
  My check: A_nm from eq. 2.18 is Δp·(b/nπ)(1 − cos nπ)(h/mπ)(1 − cos mπ)/(bh/4), which is the 2.22 coefficient; 2π/k₁₁ gives 2.23.
- Elliptic jet (eqs. 2.25–2.36, p. 6–7):
  $$y = a\cosh\mu\cos\theta,\ z = a\sinh\mu\sin\theta;\quad L_A = a\cosh\mu_0,\ L_B = a\sinh\mu_0;\quad a = (L_A^2-L_B^2)^{1/2},\ \mu_0 = \tanh^{-1}(L_B/L_A)$$
  $$\phi_{nm} = {\rm Ce}_{2n}(\mu,q_{nm})\,{\rm ce}_{2n}(\theta,q_{nm}),\quad q_{nm} = (M_j^2-1)k_{nm}^2a^2/4,\quad {\rm Ce}_{2n}(\mu_0,q_{nm}) = 0,\quad L_s = \frac{\pi a(M_j^2-1)^{1/2}}{\sqrt{q_{01}}}\ (2.31)$$
  - Near-circular (L_B ≈ L_A), e = (1 − L_B²/L_A²)^{1/2}, a = L_A e: $\sqrt{q_{01}} \approx \tfrac12\,2.405\,e(1+0.250e)$ (2.32), giving $L_s \approx 2\pi L_A(M_j^2-1)^{1/2}/\{2.405[1+0.25e]\}$ (2.33).
  - Narrow (L_B ≪ L_A): $a \approx L_A(1-\tfrac12 L_B^2/L_A^2)$, $\mu_0 \approx L_B/L_A + \tfrac13(L_B/L_A)^3$ (2.34); $\sqrt{q_{01}} \approx \pi/(4\mu_0) + \tfrac14$ (2.35); $L_s \approx 4L_B(M_j^2-1)^{1/2}/[1+(1/\pi)(L_B/L_A)]$ (2.36).
  - My checks: 2.33 at e → 0 gives 2πR(M_j² − 1)^{1/2}/2.405 = 1.306 D(M_j² − 1)^{1/2}, the Pack round-jet result used in [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md). 2.36 follows from 2.31, 2.34 and 2.35. Fig. 4 ends at a/(L_A√q₀₁) ≈ 0.83 at L_B/L_A = 1, matching 1/1.2025 = 0.832.
- Isentropic area relations (eqs. 2.37–2.38, p. 8):
  $$\Big(\frac{A}{A^*}\Big)^2 = \frac{1}{M^2}\Big[\frac{2}{\gamma+1}\Big(1+\frac{\gamma-1}{2}M^2\Big)\Big]^{(\gamma+1)/(\gamma-1)},\qquad \Big(\frac{A_j}{A_d}\Big)^2 = \frac{M_d^2}{M_j^2}\Big[\Big(1+\frac{\gamma-1}{2}M_j^2\Big)\Big/\Big(1+\frac{\gamma-1}{2}M_d^2\Big)\Big]^{(\gamma+1)/(\gamma-1)}$$
- Size correction (eqs. 2.39–2.43, p. 8–9):
  $$S\,\Delta L/2 = A_j - A_d,\quad L_j = L_d + \Delta L,\quad \frac{L_j}{L_d} = \Big[\frac{A_j}{A_d}-1\Big]\frac{2A_d}{SL_d}+1;\qquad \frac{h_j}{h} = \Big[\frac{A_j}{A_d}-1\Big]\frac{b}{h+b}+1\ (2.42)$$
  Ellipse with exit semi-axes L_a, L_b: L_A/L_a = [(A_j/A_d) − 1](πL_b/2E(e)) + 1 (2.43), E the complete elliptic integral of the second kind.
- Choked, large-aspect-ratio spacing (eq. 2.44, p. 9):
  $$\frac{L_s}{h} = 2(M_j^2-1)^{1/2}\Big[\Big(1+\frac{\gamma-1}{2}M_j^2\Big)\Big/\Big(1+\frac{\gamma-1}{2}M_d^2\Big)\Big]^{(\gamma+1)/2(\gamma-1)}\frac{M_d}{M_j}$$
  My check against Fig. 6 (M_d = 1, γ = 1.4): L_s/h ≈ 1.16, 2.19, 3.68 at M_j = 1.15, 1.4, 1.7, matching the plotted line.
- Weakest-link screech frequency (eq. 3.1, p. 10): $f_p = u_c k_1/[2\pi(1+u_c/a_\infty)]$, k₁ the fundamental shock-cell wavenumber.
- Rectangular-jet screech formula (eq. 3.2, p. 11), as printed:
  $$\frac{fh}{u_j} = \frac{u_c/u_j}{2(1+u_c/a_\infty)(M_j^2-1)^{1/2}}\Big[\Big(\frac{h}{b}\Big)^2+1\Big]^{1/2}\Big/\Big\{\Big[\Big(\frac{1+\frac{\gamma-1}{2}M_j^2}{1+\frac{\gamma-1}{2}M_d^2}\Big)^{(\gamma+1)/2(\gamma-1)}\frac{M_d}{M_j}-1\Big]\frac{b}{b+h}+1\Big\}$$
- Cold, choked (M_d = 1), large aspect ratio, u_c = 0.7u_j (eq. 3.3, p. 11), **corrected** (see box):
  $$\frac{fh}{u_j} = 0.7\Big(\frac{1+\frac{\gamma-1}{2}}{1+\frac{\gamma-1}{2}M_j^2}\Big)^{(\gamma+1)/2(\gamma-1)}M_j\Big/\Big\{2(M_j^2-1)^{1/2}\Big[1+\frac{0.7M_j}{(1+\frac{\gamma-1}{2}M_j^2)^{1/2}}\Big]\Big\}$$

> Verify against the PDF before coding:
> - **Eq. 3.3 is printed with 2(M_j² − 1), without the square root** (checked on a 250 dpi render of p. 11). Deriving 3.3 from 3.1/3.2 gives (M_j² − 1)^{1/2}, and only the square-root form matches the Fig. 7 curve (my values: f h/u_j ≈ 0.35, 0.29, 0.14, 0.082 at M_j = 1.15, 1.2, 1.5, 1.8; the printed form would give 0.44 at M_j = 1.2, off the plotted curve). I treat the printed form as a typo.
> - **Eq. 2.33** prints the correction as (1 − L_A²/L_B²)^{1/2}; from 2.32 it should be e = (1 − L_B²/L_A²)^{1/2}. Probably a typo.
> - In eq. 3.3, a_j/a_∞ = (1 + (γ − 1)M_j²/2)^{−1/2} assumes a cold jet (stagnation temperature = ambient); the paper says "cold jets" but doesn't write this step out.
> - L_A, L_B in section 2.4 are semi-axes (from eq. 2.26), though the text calls them "major and minor axes".

## Data tables
**Experimental data used** (p. 9, 11–12; all choked rectangular nozzles, M_d = 1):

| Source | Quantity | Nozzle | M_j range |
|---|---|---|---|
| Powell 1953 [1] | Shock-cell spacing | b/h = 5.83 | ≈ 1.1–1.45 (read from Fig. 6) |
| Hammitt 1961 [2] | Shock-cell spacing | b/h = 12.75 | ≈ 1.15–1.75 (read from Fig. 6) |
| Powell 1953 [4] | Screech f h/u_j | 3.05 mm (h) | 1.15–1.80 overall |
| Krothapalli et al. 1986 [5] | Screech f h/u_j | 3 mm and 5 mm | (Fig. 7) |

**Eq. 3.3 (corrected) evaluated, γ = 1.4** (my arithmetic, for reuse):

| M_j | L_s/h (eq. 2.44) | f h/u_j (eq. 3.3) |
|---|---|---|
| 1.15 | 1.16 | 0.35 |
| 1.2 | – | 0.29 |
| 1.4 | 2.19 | – |
| 1.5 | – | 0.14 |
| 1.7 | 3.68 | – |
| 1.8 | – | 0.082 |

## Figures worth remembering
- **Fig. 1 (p. 4):** schematic of a vortex-sheet jet with shock cells and the perturbed sheet S₀ + S₁ = 0.
- **Fig. 2 (p. 5):** rectangular jet, width b_j, height h_j.
- **Fig. 3 (p. 6):** elliptic cylinder coordinates.
- **Fig. 4 (p. 8):** a/(L_A√q₀₁) against L_B/L_A (0 to 1). Use with eq. 2.31 to get L_s for any ellipse; rises nearly linearly from 0 and reaches ≈ 0.83 at 1.
- **Fig. 5 (p. 8):** sketch of the exit and fully expanded cross-sections, with the uniform layer ΔL/2 around the perimeter.
- **Fig. 6 (p. 9):** L_s/h against M_j (1.0–1.8) for Powell and Hammitt with eq. 2.44. Data scatter about the line from L_s/h ≈ 1 to ≈ 3.8.
- **Fig. 7 (p. 11):** screech f h/u_j against M_j (1.0–1.8), Krothapalli et al. (3 and 5 mm) and Powell (3.05 mm) against eq. 3.3. The theory sits slightly above most data.

## Notation
- M_j, u_j, ρ_j, a_j: fully expanded Mach number, velocity, density, sound speed. M_d: nozzle design (exit) Mach number (1 for choked convergent nozzles). a_∞: ambient sound speed. γ: ratio of specific heats.
- p, ρ, v: shock-cell perturbations. Δp: exit pressure mismatch p_e − p_a. v_⊥: transverse velocity.
- S₀(y, z) = 0: vortex sheet; S₁: its displacement. D: domain inside S₀.
- φ_nm, k_nm, A_nm: transverse eigenfunctions, axial wavenumbers, expansion coefficients. L_s: shock-cell spacing (= 2π/k₁₁ for the fundamental). k₁: fundamental shock wavenumber.
- b, h: rectangular nozzle width and height at the exit (b ≥ h); b_j, h_j: fully expanded. Aspect ratio b/h.
- L_A, L_B: fully expanded elliptic semi-axes; L_a, L_b: at the exit. a, μ₀: elliptic-coordinate focal half-distance and boundary. ce, Ce: periodic and modified Mathieu functions; q: Mathieu parameter.
- A_d, A_j, A*: exit, fully expanded and throat areas. S: nozzle perimeter. E(e): complete elliptic integral of the second kind.
- u_c: convection velocity of instability waves (0.7u_j). f: screech frequency. Strouhal number f h/u_j.

## Relevance to this project
This project studies resonance and feedback in supersonic and non-axisymmetric jets from Shock Lab group experiments (CLAUDE.md). This paper is the standard first estimate of shock-cell spacing and screech frequency for rectangular and elliptic nozzles, and the origin of the "use the minor dimension, correct to fully expanded size" scaling.

- **Practical use for experiments:**
  - Before processing schlieren or PIV of a rectangular or elliptic jet, eq. 2.23 (with 2.42 for the size correction) gives the expected first-cell spacing; eq. 3.2 gives the expected screech frequency for any aspect ratio and M_d. Compare measured spacing from the mean or RMS schlieren and the tone from the microphone spectrum.
  - The prediction holds only for the first few cells: real spacing shrinks downstream as the shear layer thickens (p. 10). The ~6% per cell decrease used by Harper-Bourne & Fisher and Mancinelli (α = 0.06) is the usual fix (see [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md), [mathews-2025-thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md)).
  - My estimate, not in the paper: for the AR-2 C-D nozzle of [esfahani-2021-coupling-modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md) (h = 12.06 mm, b = 24.13 mm, M_d = 1.5), eq. 3.2 for a cold jet at M_j = 1.70 gives f h/u_j ≈ 0.134, i.e. St = f D_e/u_j ≈ 0.21, close to the measured St = 0.2. Esfahani et al. found D_e (area-equivalent diameter) collapses AR 2–5 data better than h; Tam's formula carries the aspect-ratio dependence through the [(h/b)² + 1]^{1/2} factor, which this paper could not test below AR = 4 (p. 12).
- **Modelling side and its limits:**
  - Same physics as the Prandtl–Pack round-jet model: inviscid, parallel, linear, vortex sheet, no decay. It is the zero-frequency limit of the vortex-sheet stability problem used for guided jet modes ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md) notes Prandtl–Pack is recovered at ω → 0). The rectangular eigenfunctions here are the shock-cell (k_s) input for any rectangular-jet wave-interaction model.
  - The **weakest-link closure** assumes upstream free-stream acoustic feedback outside the jet. Later work replaced this with the upstream guided jet mode: [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md), [edgington-mitchell-2022-unifying-theory](edgington-mitchell-2022-unifying-theory-jet-screech.md), and for rectangular twin jets [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md). [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) notes the Tam et al. weakest-link condition is essentially an absolute-instability saddle-point condition, and [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md) builds this from a Pack shock-cell base flow. The f_p formula (eq. 3.1) is the same KH–shock "k_kh − k_s" interaction that produces the upstream wave in those papers; what changes is the closure wave and its phase speed (−a_∞ here vs the guided-mode branch).
  - The formula predicts a single smooth curve, so it cannot produce staging, mode switching or the twin-jet frequency mismatch seen in [esfahani-2021-coupling-modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md). It also predicts only the minor-axis (flapping) shock spacing, consistent with screech in rectangular jets being a minor-axis flapping mode ([yeung-2022](yeung-2022-3d-spod-twin-rectangular-jet.md), [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md)).
  - Its broader motivation was BBSAN prediction for non-axisymmetric jets via Tam's stochastic model (p. 2); compare the wavepacket BBSAN model in [wong-2021](wong-2021-wavepacket-modelling-bbsan.md), which uses a corrected Pack–Prandtl shock model, and the shock-pressure data in [norum-1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md).
- **Rectangular-jet notes in the library:** shock-cell spacing and screech set the baseline that trailing-edge modifications ([samimy-1998](samimy-1998-rectangular-jet-trailing-edge-control.md), [kerechanin-2001](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md)) and plasma forcing ([esfahani-2021-control](esfahani-2021-control-twin-rectangular-jet-coupling.md), [bres-2021](bres-2021-les-twin-rectangular-jets-plasma.md)) act on. The LES of [bres-2021](bres-2021-les-twin-rectangular-jets-plasma.md) and [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) resolve shock spacing directly and could be used to check eq. 2.23 at AR = 2, which this paper flagged as untested.
- **Data dependence:** none of the analysis needs time-resolved data. Shock spacing comes from mean fields (schlieren average, mean PIV, wall or probe pressure) and the screech tone from a microphone spectrum. For time-varying behaviour (intermittency, switching between flapping and other modes), the Shock Lab pipeline (SPOD → reconstruction → Hilbert POD, [raiola-2025](raiola-2025-hilbert-pod.md)) or wavelets as in [esfahani-2021-coupling-modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md) would be needed; this paper says nothing about them.
- **Related works cited, candidates for `/add-paper`:** Tam, Seiner & Yu 1986 (weakest link); Tam, Jackson & Seiner 1985 (multiple-scales shock cells); Tam & Tanna 1982 (BBSAN, fully expanded jet size); Tam 1987 (stochastic BBSAN model); Pack 1950; Powell 1953 (three papers); Hammitt 1961; Krothapalli et al. 1986; Tam 1986 (excitation of instability waves by sound).
