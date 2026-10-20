---
key: "marshall-2024-prediction-streaks-rectangular-jets"
title: "Prediction of streaks in rectangular jets"
authors: ["Marshall, C.", "Edgington-Mitchell, D.", "Nogueira, P."]
year: 2024
type: "preprint"
venue: "Research Square preprint"
bib: {"publisher": "Research Square", "note": "Preprint, not peer-reviewed"}
doi: "10.21203/rs.3.rs-4197686/v1"
arxiv: ""
pdf: "linear-models/Marshall-EtAl_2024_Prediction-Of-Streaks-In-Rectangular-Jets.pdf"
version: "preprint"
unverified: []
group: true
facility: ""
data: ["model-only"]
methods: ["resolvent", "symmetry-decomposition"]
flow: ["rectangular-jet"]
phenomena: ["streaks"]
params: {"AR": "1–5", "St": "0", "shear-thickness factor s": "1–10", "corner exponent χ": "2–32"}
topics: ["linear-models", "non-axisymmetric-and-twin-jets"]
related: ["nogueira-2019-large-scale-streaky-structures-jets", "pickering-2020-lift-up-kh-orr-jets", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "yeung-2022-3d-spod-twin-rectangular-jet", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "morra-2021-colour-of-forcing-resolvent-channel", "nogueira-2026-flapping-motion-screeching-round-jets"]
cites: ["mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "nogueira-2019-large-scale-streaky-structures-jets", "pickering-2020-lift-up-kh-orr-jets", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Cross-plane incompressible resolvent (ω = 0, D2 split) on tanh rectangular jets: AS/SA dipole streaks lead; corner sharpness barely matters, so corner vortices are not linear streaks"
---
# Prediction of streaks in rectangular jets

- **Authors:** C. Marshall, D. Edgington-Mitchell, P. Nogueira (Department of Mechanical and Aerospace Engineering, Monash University)
- **Source:** Research Square **preprint**, posted 5 April 2024, doi:10.21203/rs.3.rs-4197686/v1, CC BY 4.0 (PDF p. 1). This version is **not peer-reviewed**. The manuscript still has unresolved cross-references ("Eq. (??)", p. 7) and an empty "Acknowledgments/Declarations" section (p. 24), so treat details as draft.
- **PDF:** `References/Paper_PDFs/linear-models/Marshall-EtAl_2024_Prediction-Of-Streaks-In-Rectangular-Jets.pdf` (index key `linear-models/Marshall-EtAl_2024_Prediction-Of-Streaks-In-Rectangular-Jets.pdf`, 32 pp.)
- **Page refs:** PDF page numbers. PDF p. 1 is the Research Square cover sheet, so the manuscript's printed page n is PDF page n+1.
- **Tags:** streaks, lift-up, streamwise vortices (rolls), rectangular jet, aspect ratio, corner vortices, corner curvature, shear-layer thickness, 2D cross-plane (bi-global) resolvent analysis, incompressible, locally parallel, ω = 0 and k_x = 0, D2 symmetry (SS/SA/AS/AA), forcing weighting, Chebyshev pseudo-spectral, GPU, model-only (no data)

## Summary
The paper extends the round-jet streak analysis of Nogueira et al. (2019) to rectangular jets by solving a two-dimensional, cross-plane resolvent problem on an analytic tanh base flow. The flow is assumed incompressible, locally parallel and steady (ω = 0, streamwise wavenumber α = 0), so the analysis isolates the lift-up mechanism. The domain is reduced to one quadrant by imposing the four D2 symmetry combinations (SS, SA, AS, AA), which lets a GPU handle an equivalent 140 × 140 Chebyshev grid. The leading modes are dipole-like: a high-speed streak on one side of the jet and a low-speed streak on the other, along the major axis (AS) and then along the minor axis (SA). Higher modes have finer, evenly spaced streaks confined to the shear layer and resemble boundary-layer streaks. Sharpening the corners barely changes gains or shapes, which the authors read as evidence that the corner vortices seen in real rectangular jets are not linear free-shear streaks. Thicker shear layers lower the gains (with a caveat about the forcing weighting), and higher aspect ratio raises the gains of higher-order modes, with non-monotonic jumps where streaks land on the corners. There is no experiment or LES in this paper; validation is listed as the top future priority.

## Key findings
- **Leading modes are dipoles** (p. 13–14, Figs 5–6):
  - Highest gain: AS mode 1, a high-speed streak at one major-axis end of the jet and a low-speed streak at the other. Second: SA mode 1, the same pattern along the minor axis. The AS gain is "slightly higher" than SA (p. 13).
  - The authors liken these to the m = 1 helical/flapping streak mode of a round jet (Jiménez-González & Brancher 2017) (p. 13).
  - The same gain ordering holds without quarter symmetry imposed (p. 13).
  - Forcing (weighted) is confined to the shear layer, but the cross-plane roll response extends across the domain and into the free stream, decaying with distance. In high-speed streaks the rolls push jet fluid outward; in low-speed streaks they draw ambient fluid inward (p. 13–14). The authors note this could matter for twin jets, where one jet's rolls reach into the other.
- **Gain spectrum** (p. 14–15, Fig. 7; AR 3, s = 2, sharp corners):
  - Leading gains are of order 10⁴ (AS, SA) and drop by about 10× from mode 1 to mode 2 and about 5× from mode 2 to mode 3 in each symmetry (text, p. 15). Approximate values read from Fig. 7 are in Data tables.
  - The authors say low-order modes hold most of the energy, so reduced-order models should suit this flow (p. 15). Note this is gain separation, not measured energy.
- **Higher modes look like round-jet and boundary-layer streaks** (p. 15–16, Fig. 8):
  - Finer streak spacing, higher equivalent azimuthal wavenumber, more confined to the shear layer.
  - Like the round-jet modes of Nogueira et al. (2019, their Fig. 10): streaks centred slightly outboard of the lip line, extending further outward than inward, and equally spaced around the perimeter.
  - Unlike the round jet, each higher mode comes as a pair: one with streaks centred on the edges and one with streaks centred on the corners at the same equivalent wavenumber. In a round jet the azimuthal phase is arbitrary (p. 15–16).
  - Comparing AS with SA and AA with SS showed no significant gain advantage for corner-centred streaks (p. 16).
- **Corner curvature hardly matters** (p. 16–17, Figs 9–10):
  - Varying χ = 2ⁿ from n = 1 (rounded) to n = 5 (sharp) raises gains only slightly, by no more than a factor of 2, and mode shapes are unchanged (p. 16).
  - Jet area was not renormalised as corners sharpened, so even the small increase may be an artefact (p. 17).
  - Conclusion: under this linear, parallel model, the corner vortices of real rectangular jets are poorly explained by streaks. Alternatives proposed: larger non-linear forcing in the corners, corner stresses in the nozzle boundary layer, duct modes or vortex formation inside the nozzle, or the missing cross-plane base-flow velocities (p. 17, 23–24).
- **Shear-layer thickness** (p. 17–19, Figs 11–14):
  - With forcing weighted by the base-flow gradient (the default), gains fall by up to about 5× as the shear layer thickens. Leading-mode gains fall at a similar or slightly slower rate than higher modes, which the authors link to low-m streaks persisting further downstream in round jets (Nogueira et al. 2019) (p. 17).
  - The authors admit a gradient weighting biases this result, so they repeated it with two other weightings (p. 17–19):
    - **Normalised gradient** (gradient / its maximum, as in Nogueira et al. 2020): gains *rise* with thickness because the forcing region widens. They judge this unphysical for this question because it discards shear strength (p. 18–19).
    - **Base-flow velocity** weighting: leading-mode gains fall with thickness; higher modes are less affected, and AA mode 4 rises slightly (p. 19).
  - Thicker shear layers spread the response and forcing over more of the domain. Higher-order modes, which the shear layer confines, change more than the leading modes; otherwise shapes are unchanged (p. 19, Fig. 14).
- **Aspect ratio** (p. 20–23, Figs 15–18):
  - Raising AR from 1 to 5 increases the gains of higher-order modes, consistent with optimal spanwise wavenumbers from 1D mixing-layer and boundary-layer studies (Marant & Cossu 2018) (p. 20).
  - **Inconsistency to note:** the Results text says the leading dipole modes "showed no variance" with AR (p. 20), but the abstract says they "exhibit a monotonic decrease" (p. 2).
  - At high AR, streaks smear along the long shear layers and rolls often connect across the two shear layers (p. 20, Fig. 16). Streaks stay equally spaced around the perimeter, so their position relative to the corners shifts with AR (p. 20).
  - Non-monotonic AA gains: AA mode 2 dips below the square-jet value and recovers so AR 1 and 5 are about equal; AA modes 3 and 4 deviate near AR 2–3. Gains are consistently lower at aspect ratios where a streak sits on a corner (p. 21, Fig. 17).
  - SS modes 2 and 3 converge to near-duplicate shapes and gains at AR 1 and AR 5; the duplicate favours one streak sign (p. 22, Fig. 18).
  - Authors' engineering view: streak spacing–minor-axis coupling could be used to promote mixing or force particular modes, but the AR effect on acoustics is unlikely to drive design (p. 23).
- **Outlook** (p. 23–24): AS/SA dipole streaks are expected to interact with KH flapping modes; validation against LES (e.g. CharLES, as in Nogueira et al. 2019 and Rigas et al. 2019), ideally with resolvent run on the LES mean flow, is the top priority; compressibility needs a cheaper method (variational or randomised resolvent).

## Setup / method
No experiments or simulations. Everything is a linear operator model on synthetic base flows.

- **Governing equations** (p. 6–7): 3D incompressible Navier–Stokes, non-dimensionalised by an effective nozzle diameter, jet-core velocity and free-stream density and viscosity. Reynolds decomposition about a mean U; nonlinear terms lumped into forcing f.
- **Local (bi-global) cross-plane ansatz** (p. 7): parallel, streamwise-invariant base flow U = (U(y, z), 0, 0); perturbations u′(x, t) = u(y, z) e^{i(αx − ωt)}. The study sets **α = 0 and ω = 0** (steady, streamwise-infinite streaks).
- **Reynolds number:** the text calls it a "low value" interpreted as an equivalent turbulent Reynolds number accounting for Reynolds stresses at low frequency (p. 7), but **the value of R is not stated** in this version. No eddy-viscosity model is used beyond this constant.
- **Base flows** (p. 8–9, Fig. 2):
  - First a product of two planar tanh jets (eq. 15); then a "squircle" form (eq. 16) for the corner study, with the aspect ratio built into the exponent so both axes keep similar shear thickness.
  - Corner curvature χ = 2ⁿ, n = 1 … 5 ("CC1" to "CC5"); n = 1 is nearly a fully rounded rectangle, n = 5 (χ = 32) very sharp (p. 8).
  - Unit jet area kept by a = √A, b = 1/√A (eq. 18); rounding corners slightly reduces area and was not corrected (p. 8).
  - Shear-thickness factor s from 1 to 10 (p. 8); larger s = thicker shear layer, standing in for stations further downstream.
  - Baseline case: s = 2, AR = 3, n = 5 ("ST2 AR3 CC5"), chosen as representative of the near-nozzle flow of current rectangular-nozzle aircraft (p. 13).
- **Discretisation** (p. 9–10):
  - 2D Chebyshev pseudo-spectral collocation with Bayliss & Turkel (1992) tangent mapping (their type 2) combined with a linear map to cluster points in the jet.
  - Operator is m × m with m = n² per variable; the authors note inversion scales worse than O(n⁴).
  - MATLAB on GPU: build the operator, invert it and form the resolvent on the GPU, then `svds` for the 10 largest singular values (tolerance 1e-20); only the first 4 per symmetry are analysed. Full (not sparse) matrices were needed on the GPU.
  - GPU memory limits: 4 GB RTX 3050 Ti ≤ 50 × 50, 8 GB RTX 3070 ≤ 60 × 60, 16 GB T4 ≤ 70 × 70 (p. 10). A 70 × 70 CPU inversion took "multiple hours" (p. 9).
- **Symmetry and domain** (p. 10–11, Fig. 3): one quadrant of a 5D × 5D square (D = effective diameter); four operators per base flow, one per symmetry pair (SS, SA, AS, AA; first letter refers to the left boundary/normal axis, second to the bottom boundary/spanwise axis per eqs 19–20 — the naming convention should be checked against the figures). Far-field Dirichlet u′ = 0 on the top and right edges.
- **Convergence** (p. 10, 12–13): full domain without symmetry converged for leading gains at 70 × 70 but needed 100 × 100 for higher modes; the quadrant converged at 70 × 70 (equivalent 140 × 140 full grid). The base-flow Laplacian is inaccurate near sharp corners and on the symmetry planes, especially at high AR, but convergence studies showed no effect on results (p. 12). Domain size (5D) and mapping parameters were also checked, though the authors would have preferred a larger domain (p. 12–13).
- **Norms and weights** (p. 11): Chebyshev quadrature weights W_q, W_f give the kinetic-energy norm; B and C remove pressure from forcing and response; S_q = I; S_f = base-flow gradient (normalised) so forcing is concentrated in the shear layer and spurious free-stream modes are suppressed (Nogueira et al. 2020, TCFD). Forcing modes are always plotted with the weighting applied (p. 12).
- **What is not done:** no compressibility, no eddy viscosity, no non-zero α or ω, no SPOD or data comparison, no transient-growth analysis.

## Key equations
- Linearised incompressible equations, forced by the nonlinear term (eqs 3–6, p. 6), with ansatz u′ = u′(x) e^{−iωt}:
  $$i\omega\mathbf u' - \mathbf U\cdot\nabla\mathbf u' - \mathbf u'\cdot\nabla\mathbf U - \nabla p' + \tfrac{1}{\mathcal R}\nabla^2\mathbf u' = -\mathbf u'\cdot\nabla\mathbf u' + \overline{\mathbf u'\cdot\nabla\mathbf u'} \quad (6)$$
- Operator form (eqs 7–11, p. 6), φ = (u′, p′)ᵀ:
  $$(i\omega\mathbb H - \mathbb L)\phi = \mathbf f,\quad \mathbb H = \begin{bmatrix}\mathbb I_{3\times3} & 0\\ 0 & 0\end{bmatrix},\quad \mathbb L = \begin{bmatrix}\mathbb A_{3\times3} & \nabla^T\\ \nabla & 0\end{bmatrix},\quad \mathbb A = \left(-\tfrac{1}{\mathcal R}\nabla^2 + \mathbf U\cdot\nabla\right)\mathbb I_{3\times3} + \nabla\mathbf U$$
- Resolvent and SVD (eqs 12–13, p. 7): $\phi = \mathbb R\mathbf f$, $\mathbb R = (i\omega\mathbb H - \mathbb L)^{-1} = U\Sigma V^*$; Σ are the gains in the kinetic-energy norm.
- Cross-plane resolvent for U = (U(y, z), 0, 0) and e^{i(αx − ωt)} (eq. 14, p. 7), rows (x, y, z momentum; continuity), columns (u, v, w, p):
  $$\mathbb R = \begin{bmatrix} i\omega + \frac{1}{\mathcal R}\nabla^2 - i\alpha U & -\partial_y U & -\partial_z U & -i\alpha\\ 0 & i\omega + \frac{1}{\mathcal R}\nabla^2 - i\alpha U & 0 & -\partial_y\\ 0 & 0 & i\omega + \frac{1}{\mathcal R}\nabla^2 - i\alpha U & -\partial_z\\ -i\alpha & -\partial_y & -\partial_z & 0\end{bmatrix}^{-1}$$
  With α = ω = 0 the only coupling from (v, w) to u is through −∂_yU v − ∂_zU w: the lift-up term.
- Product-of-planar-jets base flow (eq. 15, p. 8):
  $$U = \tfrac12\left[\tanh\!\left(\tfrac{10}{s}(Y + \tfrac b2)\right) - \tanh\!\left(\tfrac{10}{s}(Y - \tfrac b2)\right)\right]\times\tfrac12\left[\tanh\!\left(\tfrac{10}{s}(Z + \tfrac a2)\right) - \tanh\!\left(\tfrac{10}{s}(Z - \tfrac a2)\right)\right]$$
- Squircle base flow and geometry (eqs 16–18, p. 8):
  $$U = \tfrac12 + \tfrac12\tanh\!\left[\tfrac{10}{s}\left(1 - \left((2Z/a)^{2a\chi} + (2Y/b)^{2b\chi}\right)^{1/\chi}\right)\right],\qquad \chi = 2^n,\qquad a = \sqrt{A},\ b = \sqrt{1/A}$$
- Symmetry conditions (eqs 19–20, p. 11). Left boundary (normal axis, z = 0): symmetric ∂_z u = ∂_z v = 0, w = 0, ∂_z p = 0; antisymmetric u = v = 0, ∂_z w = 0, p = 0. Bottom boundary (spanwise axis, y = 0): symmetric ∂_y u = 0, v = 0, ∂_y w = 0, ∂_y p = 0; antisymmetric u = 0, ∂_y v = 0, w = 0, p = 0.
- Weighted resolvent actually decomposed (eq. 21, p. 11):
  $$\mathbb R = \mathbb S_q \mathbb W_q^{1/2}\,\mathbb C\,(i\omega\mathbb H - \mathbb L)^{-1}\,\mathbb B\,\mathbb S_f\,\mathbb W_f^{-1/2}$$

> Equations were checked against renders of PDF p. 6–8 and 11 and are transcribed as printed. Things to verify before reusing them:
> - Eq. 6: rearranging eq. 4 with e^{−iωt} gives the right-hand side with the opposite sign (+u′·∇u′ − mean). Since f is arbitrary this does not affect the gains.
> - Fig. 1 (p. 4) writes the resolvent as [−iωI − A]⁻¹, a different sign convention from eqs 7 and 12.
> - Eq. 16: the exponents 2aχ and 2bχ (aspect ratio inside the exponent) are as printed; the text says this was the fix for unequal shear thickness on the two axes (p. 8). Check before coding.
> - Eq. 21: the weighting S_f is described as the "normalized base-flow gradient" (p. 11), but in §3.3 the default is called "gradient" and a separate "normalized gradient" variant gives the opposite trend (p. 17–18). Which normalisation is the default is ambiguous.
> - The value of the Reynolds number R is not given anywhere.

## Data tables
**Gains of the baseline case** (ST2 AR3 CC5), read from Fig. 7 (p. 14) on a log axis; approximate, verify before quoting:

| Symmetry | Mode 1 | Mode 2 | Mode 3 | Mode 10 |
|---|---|---|---|---|
| SS | ≈ 3–4 × 10³ (first point at axis edge) | ≈ 550 | ≈ 450 | ≈ 12 |
| SA | ≈ 1.7 × 10⁴ | ≈ 1.2 × 10³ | ≈ 280 | ≈ 12 |
| AS | ≈ 1.9 × 10⁴ | ≈ 1.0 × 10³ | ≈ 250 | ≈ 12 |
| AA | ≈ 5 × 10³ | ≈ 550 | ≈ 230 | ≈ 13 |

The ordering AS > SA follows the text (p. 13). The text's "factor of 10" (mode 1→2) and "factor of 5" (mode 2→3) fit SA and AS but not SS, whose modes 2 and 3 are near-duplicates (cf. p. 22).

**Parameter sweeps** (p. 8, 13, Figs 9, 11–13, 15): corner curvature n = 1–5; aspect ratio 1–5; shear thickness: text says s = 1–10 (p. 8) and Fig. 14 compares s = 2, 4, 8, but the shear-thickness axes of Figs 11–13 run 0.2–1 (presumably s/10). Gains on all sweep plots stay within roughly 10²–10⁵.

## Figures worth remembering
- **Fig. 1 (p. 4):** context sketch: streaks and rolls in a boundary layer, a round jet, and the rectangular jet as the gap filled here.
- **Fig. 2 (p. 9):** base flows and gradient magnitudes for AR 1 and 5, rounded (χ = 2) and sharp (χ = 32) corners.
- **Fig. 3 (p. 10):** quarter-symmetry domain, 5D × 5D, with boundary conditions.
- **Fig. 4 (p. 12):** base flow, gradient and Laplacian on the quadrant grid, plus centreline profiles of U, ∂U/∂y, ∂²U/∂y²; the Laplacian shows errors at corners and symmetry planes.
- **Figs 5–6 (p. 13–14):** leading AS and SA response (u contour + cross-plane vectors) and forcing for the baseline case: the dipole streaks.
- **Fig. 7 (p. 14):** first 10 gains in each symmetry for the baseline case.
- **Fig. 8 (p. 15):** higher modes compared with the round-jet m = 3 and m = 7 resolvent modes of Nogueira et al. (2019).
- **Fig. 9 (p. 16) and Fig. 10 (p. 17):** gains vs corner curvature (nearly flat) and mode shapes for CC1 vs CC5 (unchanged).
- **Figs 11–13 (p. 18):** gains vs shear thickness for gradient, normalised-gradient and velocity forcing weightings: the weighting changes the trend's sign.
- **Fig. 14 (p. 19):** SS mode 1 and AA mode 3 for thin vs thick shear layers.
- **Fig. 15 (p. 20):** gains vs aspect ratio for each symmetry.
- **Figs 16–18 (p. 21–23):** AR 1 vs AR 5 mode shapes (streak smearing), AA modes 2–3 at AR 1, 2, 5 (streaks moving onto corners), and the SS mode 2/3 duplication.
- **Appendix A (p. 28–32):** response and forcing of modes 1–4 in all four symmetries for the baseline case (some forcing panels are missing in this version).

## Notation
- U(y, z): streamwise base-flow velocity; u′ = (u, v, w), p′: perturbations. x streamwise, y normal (minor-axis direction, width b), z spanwise (major-axis direction, width a) (p. 8, Fig. 3).
- α: streamwise wavenumber; ω: angular frequency (both 0 here). R (script): Reynolds number based on effective diameter and jet-core velocity.
- s: shear-thickness factor (larger = thicker). χ = 2ⁿ: corner-curvature exponent; "CCn" = corner curvature n. A or AR: aspect ratio. "STs ARA CCn Resp/Forc n = k" in figure titles = case and mode k.
- SS, SA, AS, AA: symmetric/antisymmetric combinations about the two symmetry axes (four separate quadrant problems).
- H, L, A: mass, linear and momentum operators; R: resolvent; U, Σ, V: SVD response modes, gains, forcing modes; W_q, W_f: quadrature weights; S_q, S_f: response and forcing weightings; B, C: input/output (pressure-removal) matrices.

## Relevance to this project
The Shock Lab group studies non-axisymmetric nozzles and resonance (CLAUDE.md). This is a group modelling paper (Monash authors; no experiment, so no facility attribution applies) that sets up a cheap 2D cross-plane resolvent for rectangular jets.

- **Modelling side, what it offers and what it lacks:**
  - A cross-plane resolvent with D2 symmetry splitting is a practical template for any non-axisymmetric nozzle (rectangular, twin, serrated, chevron) where azimuthal Fourier decomposition is unavailable. The symmetry split is the same idea as the SS/SA/AS/AA decomposition used for twin-rectangular SPOD in [yeung-2022-3d-spod-twin-rectangular-jet](yeung-2022-3d-spod-twin-rectangular-jet.md) and the D2 analysis in [jeun-2024-screech-coupling-closure-rectangular-twin-jets](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), so mode families could be compared symmetry by symmetry.
  - Limitations to keep in mind: incompressible; steady and streamwise-invariant (α = ω = 0), so it says nothing about KH wavepackets, screech or the timing of streaks; synthetic tanh base flows; constant unstated Reynolds number instead of an eddy viscosity. [pickering-2020-lift-up-kh-orr-jets](pickering-2020-lift-up-kh-orr-jets.md) and [pickering-2021-optimal-eddy-viscosity-resolvent-jets](pickering-2021-optimal-eddy-viscosity-resolvent-jets.md) show that lift-up resolvent modes in round jets only match SPOD once an eddy viscosity is included, which this paper does not test.
  - The results depend strongly on the forcing weighting (Figs 11–13), and the sign of the shear-thickness trend flips with it. Treat the shear-thickness conclusions as model-dependent. The colour of the real forcing ([morra-2021-colour-of-forcing-resolvent-channel](morra-2021-colour-of-forcing-resolvent-channel.md)) is the underlying issue.
  - The corner-vortex conclusion is negative and model-bound: linear lift-up in a parallel tanh flow does not prefer corners. Real corner vortices may come from the nozzle (secondary flow, corner boundary layers) and would need a base flow with cross-plane velocity or measured data.
- **Agreement with related notes:**
  - [nogueira-2019-large-scale-streaky-structures-jets](nogueira-2019-large-scale-streaky-structures-jets.md): same local resolvent idea (ω = 0, k_x = 0) in 1D for a round jet. Higher-order rectangular modes match its m = 3 and m = 7 shapes (Fig. 8 here), and the slower decay of leading-mode gains with shear thickness parallels its finding that low-m streaks persist downstream. Nogueira 2019 validated against dual-plane TR-PIV SPOD; this paper has no such validation.
  - [pickering-2020-lift-up-kh-orr-jets](pickering-2020-lift-up-kh-orr-jets.md): global (not local) resolvent with eddy viscosity; dominant streak m decreases downstream, which is consistent with the shear-thickness interpretation here.
  - The AS/SA dipole streaks are the steady counterparts of the flapping symmetries that carry screech in rectangular jets (AA/AS in [yeung-2022](yeung-2022-3d-spod-twin-rectangular-jet.md)); the authors expect streak–KH flapping interaction but do not model it (p. 23–24). For passive control of rectangular jets by streamwise vortices see [samimy-1998-rectangular-jet-trailing-edge-control](samimy-1998-rectangular-jet-trailing-edge-control.md) and [kerechanin-2001-trailing-edge-rectangular-jet-acoustics](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md); for twin-rectangular-jet flows see [bres-2021](bres-2021-les-twin-rectangular-jets-plasma.md) and [esfahani-2021-coupling-modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md).
- **Experimental side, how data could test it:**
  - The predictions concern ω → 0 streaks, so the natural data comparison is the **St → 0 SPOD bin** of time-resolved cross-plane data (stereo PIV in the cross-plane, or LES), split into the four D2 symmetries before SPOD. SPOD needs time-resolved data; with non-time-resolved cross-plane PIV, snapshot POD (also split by symmetry) approximates the steady/low-frequency streak modes because streaks dominate the low-frequency energy, though it cannot separate them from slowly rotating or meandering structures.
  - Schlieren is line-of-sight and weak for streamwise velocity streaks, so it is not a good test of these modes.
  - Streaks meander and rotate slowly (Pickering 2020; Nogueira 2019), so their amplitude is intermittent. The SPOD → low-frequency reconstruction → Hilbert POD pipeline ([raiola-2025-hilbert-pod](raiola-2025-hilbert-pod.md)) could track streak amplitude over time, and low-St bins benefit from long records or multitaper SPOD ([yeung-2024-adaptive-spod-broadband-tonal](yeung-2024-adaptive-spod-broadband-tonal.md)). This is a suggestion, not something done in the paper.
- **Related works cited, candidates for `/add-paper`:**
  - Marshall & Nogueira 2023, streaks in twin rectangular jets (AIAA; cited as ref. 25).
  - Rigas et al. 2019 (streaks in round and serrated nozzles, AIAA 2019-2597); Wang et al. 2021 (effect of streaks on jet instability, JFM 910).
  - Nogueira et al. 2020 (resolvent in unbounded flows, free-stream modes, TCFD 34).
  - Jiménez-González & Brancher 2017 (optimal streaks in round jets); Marant & Cossu 2018 (streaks and KH).
  - Ribeiro, Yeh & Taira 2020 (randomised resolvent); Barthel, Gomez & McKeon 2022 (variational resolvent).
