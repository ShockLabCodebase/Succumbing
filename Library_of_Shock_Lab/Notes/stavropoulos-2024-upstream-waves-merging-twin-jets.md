---
key: "stavropoulos-2024-upstream-waves-merging-twin-jets"
title: "On the behaviour of the upstream-travelling waves in merging twin-jet systems"
authors: ["Stavropoulos, M. N.", "Martini, E.", "Edgington-Mitchell, D. M.", "Weightman, J.", "Jordan, P.", "Nogueira, P. A. S."]
year: 2024
type: "article"
venue: "JFM 983, A17"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "983", "pages": "A17"}
doi: "10.1017/jfm.2024.129"
arxiv: ""
pdf: "linear-models/Stavropoulos-EtAl_2024_On-The-Behaviour-Of-The-Upstream-Travelling-Waves-In-Merging-Twin-Jet-Systems.pdf"
version: "published"
unverified: []
group: true
facility: ""
data: ["model-only"]
methods: ["LSA-local", "LSA-Floquet", "vortex-sheet"]
flow: ["twin-jet", "round-jet", "elliptical-jet", "supersonic", "ideally-expanded", "planar-jet"]
phenomena: ["guided-jet-mode", "coupling", "screech", "jet-merging"]
params: {"M_j": "1.16", "s/D": "1–5"}
topics: ["linear-models", "twin-jet-coupling", "screech"]
related: ["stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "nogueira-2021-twin-jet-coupling-spatial-lsa", "nogueira-2024-guided-jet-waves", "edgington-mitchell-2020-waves-in-screeching-jets", "mancinelli-2019-screech-prediction-upstream-modes", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets", "rodriguez-2023-preferred-flapping-round-twin-jets"]
cites: ["bell-2021-intermittent-modal-coupling-screeching-twin-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2019-aeroacoustic-resonance-review", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "edgington-mitchell-2022-unifying-theory-jet-screech", "gojon-2018-oscillation-modes-screeching-jets", "jordan-2018-jet-flap-interaction-tones", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "powell-1992-oscillation-modes-choked-circular-jets", "raman-1999-supersonic-jet-screech-half-century-powell-present", "rodriguez-2023-preferred-flapping-round-twin-jets", "shen-2002-three-dimensional-numerical-simulation-jet-screech", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets"]
summary: "Planar vortex-sheet and round Floquet LSA (M_j 1.16): merging twin jets turn k_p⁻ (0,2) into a higher-order mode of an equivalent jet (≈ AR 2 ellipse); SA band shifts with spacing, SS barely"
---
# On the behaviour of the upstream-travelling waves in merging twin-jet systems

- **Authors:** M. N. Stavropoulos, E. Martini, D. M. Edgington-Mitchell, J. Weightman, P. Jordan, P. A. S. Nogueira (LTRAC, Monash; Institut Pprime, Poitiers)
- **Source:** J. Fluid Mech. 983, A17 (2024), doi:10.1017/jfm.2024.129. Published open-access (CC BY) version. Received 26 June 2023, accepted 30 January 2024.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-models/Stavropoulos-EtAl_2024_On-The-Behaviour-Of-The-Upstream-Travelling-Waves-In-Merging-Twin-Jet-Systems.pdf` (18 pp.)
- **Page refs:** PDF page numbers, which equal the printed article pages (983 A17-n is PDF p. n).
- **Tags:** twin jets, guided jet mode (k_p⁻), upstream-travelling wave, existence region, branch point (cut-on), saddle point (cut-off), jet separation, symmetry (SS/SA), planar vortex sheet, finite-thickness spatial LSA, Floquet ansatz, elliptical jet, equivalent geometry, screech, theory only (no experiments)

## Summary
The guided jet mode k_p⁻ closes screech and other resonance loops, and it is propagative only between a branch point (cut-on) and a saddle point (cut-off). Earlier work (Du 1993; Stavropoulos et al. 2023) found that in round twin jets this existence region moves with jet separation and symmetry, without explaining why. This paper uses linear stability models only. A planar twin-jet vortex-sheet model shows that, as the two jets touch (H → 1), the (0, 2) k_p⁻ eigenfunction becomes a higher-order mode of a single planar jet of twice the width. The branch and saddle frequencies therefore have to move to that jet's values; Appendix A proves the two dispersion relations are identical at H = 1. A finite-thickness (tanh profile, Fourier–Chebyshev, Floquet) model of round twin jets behaves the same way, and the merged system's existence region and eigenfunctions are close to those of an aspect-ratio-2 elliptical jet. The anti-symmetric solution must form a node at the midplane and so converges to a higher radial order, which is why it shifts more with separation than the symmetric one.

## Key findings
- **Planar twin jet merges into a double-width jet** (p. 6–7, Fig. 4):
  - As H decreases from 20 to 1, the (0, 2) k_p⁻ pressure eigenfunction gains anti-nodes.
  - Symmetric solution: the midpoint amplitude grows until it becomes an anti-node. A mode with three peaks on each isolated jet becomes a five-peak mode of the merged jet (p. 7).
  - Anti-symmetric solution: the symmetry condition forces a node at the midpoint, giving a six-peak mode, i.e. a higher radial order than the symmetric case (p. 7).
  - At H = 1 the twin-jet eigenfunction matches the double-width jet (half-width 2h, solved with eq. 2.8 at twice the St) "exactly" for both symmetries (p. 7, Fig. 4d,h).
- **Branch and saddle points vs H, planar** (p. 8, Fig. 5; values read from the figure, M_j = 1.16):
  - For large H both symmetries recover the single symmetric planar jet: St_b ≈ 0.237, St_s ≈ 0.295.
  - As H → 1 they converge to half the double-width jet's values (because of the h vs 2h normalisation).
  - Symmetric: branch point unchanged (≈ 0.237 for all H); saddle point falls to ≈ 0.26.
  - Anti-symmetric: branch point rises to ≈ 0.295; saddle point rises to ≈ 0.317.
  - The anti-symmetric existence region therefore moves up in frequency, the symmetric one narrows from above.
  - The text (p. 8) says the unchanged one is "figure 5(a), the symmetric solution saddle point", but Fig. 5(a) is labelled the symmetric branch point and is the flat one; see the check note below.
- **Round twin jets follow the planar trend** (p. 9–10, Fig. 6, Table 1):
  - SA (round) and anti-symmetric (planar) branch points rise exponentially as the jets approach: SA from St ≈ 0.597 at S = 5 to ≈ 0.695 at S = 1 (read from Fig. 6a).
  - SS (round) and symmetric (planar) branch points are nearly constant (SS ≈ 0.56), changing only at very small separation (SS ≈ 0.58 at S = 1), and at smaller separations than previously considered. The change is larger for SS round than for symmetric planar (p. 9).
  - Previously (Stavropoulos et al. 2023) the SA (0, 2) mode was the one with strong separation dependence (p. 9).
- **Round eigenfunctions** (p. 9–10, Fig. 7): as S → 1 the SA midplane condition becomes an extra node and SS becomes an anti-node; SA converges to a higher radial order than SS, as in the planar case. The merged round system approaches "a yet-unknown equivalent geometry" (p. 9).
- **Equivalent geometry ≈ AR 2 ellipse** (p. 9–13, Figs. 8–14):
  - Ellipses of AR 1.5 (best geometric overlap) and AR 2 (equal area to the two jets) were compared, with twin-jet St and k scaled by √AR/2 (p. 9–11).
  - The S = 1 twin-jet existence region matches the AR 2 ellipse branch well near the branch point for both SA (μ = 1) and SS (μ = 0); AR 1.5 does not line up (p. 11, Fig. 9).
  - Agreement weakens as St increases (Fig. 10, St up to ≈ 1): the equivalence holds when wavelengths are long compared with the jet's characteristic lengths (p. 12).
  - The mean flows look different near the z axis but the radial velocity profiles agree for θ ≤ 54° and differ at θ = 72° and 90° (p. 12, Figs. 11–12).
  - Branch-point eigenfunctions: SA vs μ = 1 ellipse agree in shape with amplitude differences at the first and third nodes; SS vs μ = 0 ellipse differ more (ellipse decays more slowly for y/D > 1, no match at y/D = 0) (p. 13, Fig. 13). Contour differences sit near θ → π/2, as in the mean flows.
  - From branch to saddle point the eigenfunction trends are similar; the SS twin jet's centre amplitude grows more with St than the ellipse's (p. 13–14, Fig. 14).
- **Conclusion** (p. 14–15): the separation dependence is a geometric effect of converging to an equivalent single-jet geometry, so it should occur "in any twin-jet system". Rectangular jets are suggested as another equivalent geometry to test.

## Setup / method
- **Type:** purely theoretical/numerical local linear stability analysis; no experiments, no LES. Monash computations used MASSIVE (p. 15). Funding ARC DP190102220 and ONR N00014-22-1-2503.
- **Why local models:** cheaper than global analysis, and local analysis has been shown to capture the waves underpinning screech resonance (Mancinelli et al. 2021; Nogueira et al. 2022a) (p. 3).
- **Planar twin-jet vortex sheet** (§2.1, p. 3–5):
  - Extends the single planar vortex-sheet model of Martini, Cavalieri & Jordan (2019). Plug flow inside each jet, zero velocity outside.
  - Each jet has half-width h (the length scale) and is centred so the midplane is at y = −H; jet centres are 2H apart, so H = 1 means the jets touch (Fig. 2a).
  - Normal modes $\tilde P = P(y)e^{i(kx-\omega t)}$. Conditions: pressure and displacement continuity across each sheet, boundedness as y → ∞, and a symmetric (zero gradient) or anti-symmetric (zero value) midplane condition.
  - Gives a 4 × 4 system A(k)c = 0; det A = 0 is the dispersion relation for complex k at real ω.
  - M is the acoustic Mach number and T the jet-to-ambient temperature ratio, taken from an isentropic relation. All results at M_j = 1.16 (p. 7–8).
  - The root solver and branch/saddle point tracking procedure are not described in this paper.
- **Round twin-jet finite-thickness model** (§2.2, p. 5–6):
  - Same formulation as Nogueira & Edgington-Mitchell (2021) and Stavropoulos et al. (2023), where the full operators are given. Generalised eigenvalue problem in pressure, L P̂ = k R P̂ (eq. 2.10).
  - Jets of diameter D, centre-to-centre spacing S (non-dimensionalised by D, ambient sound speed and density). S = 1 means touching.
  - Floquet ansatz in azimuth: μ = 0 symmetric and μ = 1 anti-symmetric about the x–z plane (the plane midway between the jets in Fig. 2b).
  - Symmetry labels SS, SA, AS, AA give symmetry about the x–y then x–z planes (Rodríguez, Jotkar & Gennaro 2018). Only SS and SA are studied.
  - Numerics: Fourier in azimuth, Chebyshev in radius (Trefethen 2000), Bayliss–Turkel mapping to cluster points in the shear layer, sparse solvers. Resolution (N_r, N_θ) is not stated.
  - Mean flow: Michalke (1971) tanh profile per jet (eq. 2.11), δ = 0.2 shear-layer thickness, temperature by Crocco–Busemann. The twin-jet mean flow is the sum of two single-jet mean flows (Rodríguez 2021). Inviscid, locally parallel, no shocks (ideally expanded M_j).
  - Ellipse comparison: eq. 2.11 with R_j replaced by the ellipse boundary R_b(θ) (eq. 2.12), normalised by the semi-major axis a; AR 1.5 and 2 (Figs. 3, 8).
- **Mode classification:** (m, n_r), m azimuthal order and n_r the number of pressure anti-nodes (Tam & Hu 1989), applied to the planar system by analogy (p. 6). Results are for the k_p⁻ (0, 2) mode.
- **Data dependence:** none; this is a model study. Its outputs (existence bands vs separation and symmetry) are what to compare against tone frequencies from acoustics or time-resolved schlieren SPOD.

## Key equations
- Planar pressure eigenfunction and radial wavenumbers (eqs. 2.2–2.3, p. 4):
  $$P(y) = C_a e^{\lambda_{i,o} y} + C_b e^{-\lambda_{i,o} y},\qquad \lambda_i = \sqrt{k^2 - \tfrac{1}{T}(\omega - Mk)^2},\qquad \lambda_o = \sqrt{k^2-\omega^2}$$
- Twin-jet system (eqs. 2.4–2.6, p. 4), with h = 1 and c = [C₁, C₃, C₄, C₆]ᵀ:
  $$\mathbf A = \begin{bmatrix} e^{-\lambda_o} \pm e^{-2H\lambda_o}e^{\lambda_o} & -e^{-\lambda_i} & -e^{\lambda_i} & 0\\ \frac{\lambda_o}{\omega^2}\left(e^{-\lambda_o}\mp e^{-2H\lambda_o}e^{\lambda_o}\right) & \frac{-\lambda_i e^{-\lambda_i}}{\frac1T(kM-\omega)^2} & \frac{\lambda_i e^{\lambda_i}}{\frac1T(kM-\omega)^2} & 0\\ 0 & -e^{\lambda_i} & -e^{-\lambda_i} & e^{-\lambda_o}\\ 0 & \frac{\lambda_i e^{\lambda_i}}{\frac1T(kM-\omega)^2} & \frac{-\lambda_i e^{-\lambda_i}}{\frac1T(kM-\omega)^2} & \frac{\lambda_o}{\omega^2}e^{-\lambda_o}\end{bmatrix}$$
  Regions (eq. 2.7): $C_1e^{\lambda_o y}+C_2e^{-\lambda_o y}$ for −H < y < −h; $C_3e^{\lambda_i y}+C_4e^{-\lambda_i y}$ for −h < y < h; $C_5e^{\lambda_o y}+C_6e^{-\lambda_o y}$ for y > h. C₂ is eliminated by the midplane condition and C₅ by boundedness.
- Single planar jet dispersion relation (eq. 2.8, p. 5; Martini et al. 2019), ± for symmetric/anti-symmetric about the jet centre:
  $$\tanh(\lambda_i)^{\pm1} + \frac1T\left(1-\frac{kM}{\omega}\right)^2\frac{\lambda_o}{\lambda_i} = 0$$
- Merged limit (eq. A3, p. 16): at H = 1 (symmetric case) the first column of A has one non-zero entry and the determinant reduces to
  $$\tanh(2\lambda_i) + \frac1T\left(1-\frac{kM}{\omega}\right)^2\frac{\lambda_o}{\lambda_i} = 0,$$
  which is eq. 2.8 for a jet of half-width 2h once lengths are rescaled by 2h (hence the factor 2 in St).
- Mean flow (eq. 2.11, p. 6) and ellipse boundary (eq. 2.12):
  $$U(r) = M\left[0.5 + 0.5\tanh\!\left(\left(\frac{R_j}{r}-\frac{r}{R_j}\right)\frac{1}{2\delta}\right)\right],\qquad R_b = \frac{ab}{\sqrt{b^2\cos^2\theta + a^2\sin^2\theta}}$$
- Floquet form (p. 5): $\hat P = P e^{i\mu\theta}$, μ = 0 or 1.
- Branch-point fit (p. 9): printed as $a e^{bx} + c$ with Table 1 parameters.

> Equations were checked against renders of PDF pp. 4, 5, 6 and 16 and are transcribed as printed. Points to verify before coding:
> - In eq. 2.3 the exponent subscripts mix "o" and "0" (λ_o, λ₀); they are the same quantity.
> - Eq. 2.9 prints the middle region as "−h ≤ y ≥ h" (typo for −h ≤ y ≤ h), and the outer-region coefficients divide by e^{−λ_o}.
> - With e^{bx} and the positive b in Table 1 the fit would grow with separation; it must be $a e^{-bx}+c$. With that sign the Fig. 6(b) parameters reproduce the plot (0.296 at H = 1, 0.251 at H = 5), but the Fig. 6(a) parameters give ≈ 0.706 at S = 1 and ≈ 0.646 at S = 5, whereas the plot shows ≈ 0.695 and ≈ 0.597. Check Table 1 against the PDF/erratum before using it.
> - In (A1) the prefactor is printed as 2e^{−λ_o} but then dropped as "2e^{−λ_0}"; (A2) contains squared terms whose derivation should be checked if re-deriving.
> - The St definition (h- or D-based, U_j or a_∞ velocity scale) is not stated explicitly.

## Data tables
**Exponential fits to branch points** (Table 1, p. 9; form printed as a e^{bx} + c):

| Parameter | Fig. 6(a), SA round (vs S) | Fig. 6(b), anti-symmetric planar (vs H) |
|---|---|---|
| a | 0.1129 | 0.0917 |
| b | 0.4025 | 0.6299 |
| c | 0.6307 | 0.2470 |

**Values read from figures, M_j = 1.16** (verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| Single planar jet (0, 2): St_b, St_s | ≈ 0.237, ≈ 0.295 | Fig. 5, p. 8 |
| Planar symmetric at H = 1: St_b, St_s | ≈ 0.237, ≈ 0.26 | Fig. 5(a,b) |
| Planar anti-symmetric at H = 1: St_b, St_s | ≈ 0.295, ≈ 0.317 | Fig. 5(c,d) |
| SA round branch St at S = 5, 2, 1.5, 1 | 0.595, 0.64, 0.665, 0.695 | Fig. 7 caption (stated), p. 10 |
| SS round branch St at S = 5, 2, 1.5, 1 | 0.555, 0.565, 0.57, 0.58 | Fig. 7 caption (stated), p. 10 |
| SA S = 1 vs AR 2 ellipse (μ = 1), scaled | twin jet St ≈ 0.695–0.71, k_r ≈ −4.5 to −4.9 | Fig. 9(b), p. 11 |
| SS S = 1 vs AR 2 ellipse (μ = 0), scaled | twin jet St ≈ 0.58–0.625, k_r ≈ −3.7 to −4.3 | Fig. 9(d), p. 11 |

The St values in the Fig. 7 caption are the frequencies at which the eigenfunctions were plotted; they coincide with the branch points in Fig. 6 (a,c).

## Figures worth remembering
- **Fig. 1 (p. 2):** four-component resonance loop (downstream wave, downstream conversion, upstream wave, receptivity at the nozzle), after [Edgington-Mitchell (2019)](edgington-mitchell-2019-aeroacoustic-resonance-review.md).
- **Fig. 2 (p. 5):** planar (H, h) and round (S, D, r₁, r₂, θ) twin-jet geometries.
- **Fig. 4 (p. 7):** planar (0, 2) k_p⁻ pressure eigenfunctions for H = 20, 5, 1.5, 1, symmetric and anti-symmetric, with the double-width jet overlaid at H = 1.
- **Fig. 5 (p. 8):** branch and saddle St against H for both symmetries, with single-jet and double-width-jet lines. The key plot.
- **Fig. 6 (p. 10):** branch St vs separation, round SA/SS vs planar anti-symmetric/symmetric, with fits.
- **Fig. 7 (p. 10):** round SA/SS eigenfunctions as S → 1.
- **Fig. 9 (p. 11):** existence regions in k_r–St of the S = 1 twin jet vs AR 1.5 and AR 2 ellipses, with the sonic line.
- **Fig. 10 (p. 12):** SA vs μ = 1 AR 2 ellipse up to St ≈ 1; the branches separate at higher St.
- **Figs. 11–12 (p. 12–13):** AR 2 ellipse vs S = 1 twin-jet mean flows, and radial profiles at θ = 0–90°.
- **Figs. 13–14 (p. 14):** eigenfunction profiles and contours, ellipse vs twin jet, at the branch point and from branch to saddle point.

## Notation
- k_p⁻: upstream guided jet mode (k_TH⁻ / k_t⁻ in other notes). k_p⁺: downstream duct-like mode that forms the saddle point with it.
- St_b, St_s: branch point (cut-on) and saddle point (cut-off) Strouhal numbers.
- H: distance from each planar jet's centre to the midplane, in jet half-widths h (H = 1: jets touch). S: centre-to-centre spacing of round jets in D (S = 1: touching).
- SS, SA: symmetry about the x–y then x–z planes. μ: Floquet exponent (0 symmetric, 1 anti-symmetric about x–z).
- λ_i, λ_o: transverse wavenumbers inside and outside the jet. M: acoustic Mach number. T: jet-to-ambient temperature ratio. δ: shear-layer thickness parameter. AR: aspect ratio; a, b: semi-major and semi-minor axes.
- (m, n_r): azimuthal order and number of pressure anti-nodes.

## Relevance to this project
This is a Shock Lab group paper (Monash LTRAC with Pprime), but it is entirely modelling: no facility is involved. It explains the separation dependence of guided-mode cut-on/cut-off, which sets which screech tones twin and multi-nozzle jets can sustain (see CLAUDE.md on resonance and feedback).

- **Using it with experiments:**
  - Twin-jet screech tones should sit inside the k_p⁻ existence band for the coupling symmetry observed. The band moves up in St as the jets approach for anti-symmetric (SA) coupling but hardly moves for symmetric (SS) coupling, so a change in spacing can switch which symmetry is admissible.
  - To test this on lab data, the coupling symmetry must be identified first: time-resolved schlieren or dual-microphone phase gives SS vs SA directly; for non-time-resolved PIV, use symmetry-imposed POD pairs as in [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md).
  - Twin jets often couple intermittently (Bell et al. 2021; Wong et al. 2023, cited p. 3). The model gives only bands, so tracking which symmetry is active over time needs time-resolved data: SPOD at the tone, reconstruction from the SS/SA-projected modes, then Hilbert POD (the CLAUDE.md pipeline), or Hilbert phase difference as in [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md). The paper does not address time variation.
- **Modelling toolkit:**
  - The planar twin-jet vortex sheet is a 4 × 4 determinant, quick to implement for scoping spacing effects; the round finite-thickness Floquet solver is the one in [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md) and Stavropoulos et al. (2023).
  - Assumptions to keep in mind: inviscid, locally parallel, no shocks, summed (non-interacting) twin mean flows, single M_j = 1.16 and δ = 0.2. The model gives no growth or receptivity information and no comparison with experiment is made in this paper.
  - The "equivalent geometry" idea suggests close-spaced twin jets behave like an AR ≈ 2 elliptical (perhaps rectangular) jet for long-wavelength guided modes, linking to the twin-rectangular and non-axisymmetric nozzle work.
- **Agreement with and links to related notes:**
  - [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md): the single-jet cut-on/cut-off band argument that this paper extends to twin jets.
  - [edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md): source of the k_p⁺/k_p⁻ saddle-point picture used here.
  - [mancinelli-2021-complex-valued-resonance-model-screech](mancinelli-2021-complex-valued-resonance-model-screech.md) and [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md): local-model evidence cited (p. 3) to justify local rather than global analysis.
  - [yeung-2022-3d-spod-twin-rectangular-jet](yeung-2022-3d-spod-twin-rectangular-jet.md), [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [esfahani-2021-coupling-modes-twin-rectangular-jets](esfahani-2021-coupling-modes-twin-rectangular-jets.md): twin rectangular jets with the same symmetry labels; the paper's suggestion that rectangular geometries may also act as equivalent geometries (p. 12, 15) is relevant there.
  - [stavropoulos-2026-jet-edge-interaction](stavropoulos-2026-jet-edge-interaction.md): later work by the same first author on guided-mode frequency selection in jet–edge resonance.
- **Related works cited, candidates for `/add-paper`:** Stavropoulos et al. 2023 (axisymmetric screech tones of round twin jets via LST, JFM 965 A11); Martini, Cavalieri & Jordan 2019 (acoustic modes in jet and wake stability); Du 1993 (twin supersonic jet waves, PhD thesis); Rodríguez et al. 2023 (preferred flapping of round twin jets); Wong et al. 2023 (steady and unsteady coupling in twin round jets); Bell et al. 2021 (intermittent modal coupling); Edgington-Mitchell et al. 2022 (unifying theory of jet screech); Towne et al. 2017; Tam & Hu 1989.

- **See also:** [stavropoulos-2023](stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa.md), the earlier twin-jet A1/A2 LSA this paper builds on.
