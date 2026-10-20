---
key: "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa"
title: "The axisymmetric screech tones of round twin jets examined via linear stability theory"
authors: ["Stavropoulos, M. N.", "Mancinelli, M.", "Jordan, P.", "Jaunet, V.", "Weightman, J.", "Edgington-Mitchell, D. M.", "Nogueira, P. A. S."]
year: 2023
type: "article"
venue: "JFM 965, A11"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "965", "pages": "A11"}
doi: "10.1017/jfm.2023.398"
arxiv: ""
pdf: "Stavropoulos-EtAl_2023_The-Axisymmetric-Screech-Tones-Of-Round-Twin-Jets-Examined-Via-Linear-Stability.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility"
data: ["microphones-far", "PIV"]
methods: ["LSA-local", "LSA-Floquet", "vortex-sheet", "resonance-model", "PSD"]
flow: ["twin-jet", "round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "staging", "guided-jet-mode", "coupling", "KH-wavepackets"]
params: {"NPR": "2–2.5", "M_j": "1.05–1.22", "s/D": "2, 3, 4, 6", "TR": "1", "D": "8 mm"}
topics: ["screech", "non-axisymmetric-and-twin-jets", "linear-models"]
related: ["stavropoulos-2024-upstream-waves-merging-twin-jets", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "nogueira-2021-closure-mechanism-a1-a2-screech", "wong-2023-steady-unsteady-coupling-twin-round-jets", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "rodriguez-2023-preferred-flapping-round-twin-jets"]
cites: ["edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "jordan-2018-jet-flap-interaction-tones", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "rodriguez-2023-preferred-flapping-round-twin-jets", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1995-supersonic-jet-noise", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "yeung-2022-3d-spod-twin-rectangular-jet"]
summary: "Twin-jet vortex-sheet (Bessel addition) and Floquet tanh LSA of A1/A2 screech, M_j 1.05–1.2, S 2–6: SS k_p⁻ (0,2) band bounds the tones; phase criterion matches; SS vs SA unresolved"
---
# The axisymmetric screech tones of round twin jets examined via linear stability theory

- **Authors:** M. N. Stavropoulos, M. Mancinelli, P. Jordan, V. Jaunet, J. Weightman, D. M. Edgington-Mitchell, P. A. S. Nogueira (Monash LTRAC; Roma Tre; Institut Pprime, Poitiers)
- **Source:** J. Fluid Mech. 965, A11 (2023), doi:10.1017/jfm.2023.398. Published open-access (CC BY) version. Builds on the 28th AIAA/CEAS Aeroacoustics 2022 conference paper 2022-3071 by the same group.
- **PDF:** `References/Paper_PDFs/Stavropoulos-EtAl_2023_The-Axisymmetric-Screech-Tones-Of-Round-Twin-Jets-Examined-Via-Linear-Stability.pdf` (29 pp.)
- **Page refs:** PDF page n = printed page 965 A11-n.
- **Tags:** twin jets, round converging nozzles, A1/A2 axisymmetric screech, guided jet mode (k_p⁻), Kelvin–Helmholtz, spatial linear stability, twin-jet vortex sheet, Bessel addition theorem, finite-thickness (tanh) model, Floquet ansatz in azimuth, SS/SA symmetries, branch and saddle points, existence region, resonance phase criterion, screech-frequency prediction, far-field acoustics, PIV mean-flow fit

## Summary
The paper extends single-jet screech-frequency prediction (Mancinelli et al. 2019, 2021) to round twin jets at low supersonic Mach number (M_j ≈ 1.05–1.20), where each jet screeches in the axisymmetric A1 and A2 stages. Two locally parallel spatial stability models are built for the twin-jet system: a vortex-sheet model that couples the two jets through the Bessel addition theorem, and a finite-thickness model with superposed tanh velocity profiles solved with a Floquet ansatz in azimuth. Only the SS and SA symmetries are studied, because AS and AA cannot hold axisymmetric content. The existence band of the upstream guided jet mode k_p⁻ (0, 2) depends strongly on jet spacing S for SA but hardly at all for SS. A phase-only resonance criterion between the KH mode and k_p⁻ is then fitted to far-field acoustic maps from the Shock Lab group anechoic rig for S = 2, 3, 4, 6 and a single jet. Both models reproduce the measured tones, the finite-thickness model better; neither can say whether a tone is SS or SA, though the S-independence of A1 hints at SS. The authors conclude that twin-jet axisymmetric screech is closed by the twin-jet k_p⁻ (0, 2) mode, as in a single jet.

## Key findings
- **Validation of the twin vortex sheet** (p. 9–10, Fig. 4–5, Table 2):
  - KH growth rates at M_j = 1.32, St = 1/π, m = 0–2 match Morris (1990) for SS but not for SA.
  - They match Du (1993) for both SS and SA. Du also reported the SA mismatch with Morris, and the formulations are identical, so the authors attribute it to an implementation error in Morris (1990) (p. 10).
  - Table 2 maps notations: Morris Type I/II/III/IV = Du Family 1/4/2/3 = SS/AS/SA/AA. The authors say Du mislabelled families 3 and 4; the table is corrected (p. 10).
- **Dispersion relation at M_j = 1.16** (p. 10–12, Fig. 6):
  - Shows the m = 0 and 1 branches: (0, 1), (1, 1) and (0, 2) k_p⁻ (negative slope) joining k_d⁺ (positive slope) at saddle points. Each k_p⁻ mode is propagative only between a branch point (lowest St) and a saddle point (highest St), as for a single jet (p. 11).
  - The (0, 2) existence region changes strongly with S **only for SA**: its branch point falls significantly as S grows, widening the band (p. 11). For SS the (1, 1) branch point rises slightly and the (0, 2) branch point falls by < 1 % (p. 12).
  - The SA band is narrower than the SS band throughout Fig. 6 (p. 12).
  - SS and SA dispersion differ non-negligibly even at S = 15, consistent with coupling observed at large spacing (Shaw 1990; Knast et al. 2018) (p. 12).
- **When do twin jets behave as single jets?** (p. 12, Fig. 7):
  - Metric: St gap between the SA (0, 2) branch point and the single-jet value. It converges asymptotically, and falls below 1 % at **S ≈ 50**.
  - This S applies only to the guided-mode branch point. KH wavenumbers and growth rates converge to single-jet values at much smaller S (p. 12).
  - St resolution of the search: ΔSt = 0.0005 (p. 12).
- **Eigenfunctions** (p. 12–13, Fig. 8–10; M_j = 1.16, S = 3, St = 0.67):
  - Between the jets SA must have zero pressure at the mid-plane and SS zero pressure gradient. Outside that region the SS and SA KH shapes are identical (Fig. 8a).
  - The k_p⁻ (0, 2) shapes differ more: SS is larger between the jets, SA larger on the outer sides. As for a single jet, KH peaks at the jet edge, k_p⁻ peaks on the centreline and decays more slowly outside (p. 13).
  - Finite-thickness model, δ = 0.12, 0.2, 0.4: inside the jet the k_p⁻ shapes all agree with the vortex sheet; outside, thicker shear layers decay faster (Fig. 9). KH profiles agree less, show a peak dissymmetry absent from the vortex sheet, and the outer peak drops slightly with δ. At δ = 0.4 KH is stable (Fig. 10, p. 13–14).
- **Branch/saddle bounds vs M_j, S and δ** (p. 14–15, Fig. 11–12):
  - Vortex sheet (Fig. 11): both bounds fall smoothly with M_j, as for a single jet. **SS is independent of S; SA branch points fall with S** (S = 2 → 6), while SA saddle points don't change.
  - Finite thickness, S = 3 (Fig. 12): bounds vary with δ, as for single jets (Mancinelli et al. 2021). SS band > SA band for all δ. Saddles drop slightly with δ. SA's band is noticeably wider than in the vortex-sheet model, so more room for SA screech.
  - Branch/saddle values here were computed at a St step of 0.01, causing slight oscillations in Fig. 12 (p. 14).
- **Single-jet predictions** (p. 15–17, Fig. 13–14, Tables 3–4):
  - Search over s = 2–6, p = 2–6, φ = 0, ¼, ½, 1.
  - Vortex sheet best: s = 4, φ = 0, p = 3 (A1) and p = 4 (A2). Good overall, but over-predicts at low M_j and under-predicts at high M_j within each stage. The k_p⁻ (0, 2) branch points sit just above the low-St end of each tone, so they don't bound it (p. 16).
  - Mancinelli et al. (2021) needed φ = ¼; here φ = 0 (reflection coefficients in phase). Attributed to facility sensitivity, e.g. **lip thickness 15 % here vs 3 %** in Mancinelli et al. (p. 16).
  - Finite thickness (δ = 0.2) best: s = 4, φ = 0, p = 4 (A1), p = 5 (A2). Closer to the tones and matches their slope. Same parameters and profile as Mancinelli et al. (2021) found (p. 17).
  - p/s: vortex sheet gives ≠1 (A1), =1 (A2); finite thickness gives =1 (A1), ≠1 (A2). The latter is consistent with Nogueira et al. (2022a): A1 tied to the dominant shock wavenumber k_s1, A2 to the sub-optimal k_s2 (p. 9, 17).
- **Twin-jet vortex sheet** (p. 17–19, Fig. 15, Table 5):
  - Best: **s = 5**, φ = 0, p = 4 (A1) and p = 5 (A2). Larger s and p than for a single jet, suggesting the downstream reflection point moves downstream for twin jets (p. 18).
  - Same over/under-prediction trend as for a single jet.
  - **The SS (0, 2) branch points sharply bound A1 and A2 from below**, and the tones sit wholly in the SS propagative band. The single-jet vortex sheet couldn't do this (p. 18–19).
  - Tones lie mostly outside the SA band: no overlap at S = 2, slight at S = 3, growing at S = 4 and 6. So at low S the model favours SS (p. 19).
  - Where both are allowed, SS and SA predictions are identical (p. 19).
- **Twin-jet finite thickness** (p. 19–20, Fig. 16, Table 6):
  - δ = 0.2. Best: s = 4, φ = 0, p = 4 (A1), p = 5 (A2), **identical to the single-jet finite-thickness parameters**, so the same p/s pattern and shock wavenumbers apply (p. 19).
  - Tones lie wholly within the SS band; the lower bound is less sharp than with the vortex sheet, but the saddle points are much closer to the tones, so the overall bounding is tighter (p. 19).
  - The SA band is wider than in the vortex sheet at every S and fully encloses the tones by S = 6 (p. 19).
  - Predictions follow the slope of the tones. SS and SA predictions differ only slightly, SA always at higher frequency (p. 20, 22).
- **Spacing dependence** (p. 21, Fig. 17):
  - Measured A1 frequency barely changes with S (2, 3, 4, 6, single); A2 changes slightly.
  - Finite-thickness SS predictions coincide for all S (single jet just above); SA predictions fall with increasing S.
  - So A1 may be SS; nothing can be said for A2 (p. 21).
- **Sensitivity to δ (axial station)** (p. 21, 26–27, Fig. 22): thicker profiles lower the SA branch point, so SA tones could appear outside the predicted band if k_p⁻ is generated further downstream. Using δ = 0.5 for k_p⁻ and 0.2 for KH changes the S = 2 prediction and can create predictions where there were none.
- **Limits stated by the authors** (p. 22):
  - Neither model picks a preferred symmetry. They suggest competition between SS and SA loops, with the higher-gain loop winning, as Bell et al. (2021) proposed for intermittent coupling. This may cause intermittency between symmetries at these M_j too.
  - The complex-valued model of Mancinelli et al. (2021) or spatially periodic (Floquet-in-x) analysis of Nogueira et al. (2022b) is suggested to settle symmetry.
  - Both models assume coupled jets, so they cannot capture the decoupling Bell et al. (2021) saw at higher M_j.
- **Conclusion** (p. 23): the twin-jet axisymmetric feedback loop resembles the single-jet one, with equivalent upstream and downstream modes, closed by the twin-jet k_p⁻ (0, 2) mode.

## Setup / method
- **Facility:** Shock Lab group facility. The paper calls it the supersonic jet anechoic facility (SJAF) in LTRAC, Monash (Wong et al. 2020), with the nozzle plate of Knast et al. (2018) (p. 4).
- **Nozzles** (p. 4, 16): twin purely converging round nozzles, exit D = 8 mm, unheated. Spacing S (centre to centre, /D) = 2, 3, 4, 6. Lip thickness 15 % (of D, presumably). A single jet in the same rig gives the single-jet data (Fig. 13–14).
- **Coordinates and symmetry** (p. 4, Fig. 1–2): x out of the page; each jet has its own (r, θ). First letter of SS/SA/AS/AA = symmetry about the x–y plane, second about x–z (Rodríguez et al. 2018 convention, also used by [Yeung 2022](yeung-2022-3d-spod-twin-rectangular-jet.md)). Only SS and SA allow axisymmetric content.
- **Acoustics** (p. 4–5):
  - One GRAS 46BE 1/4 in. free-field mic (4 Hz–100 kHz), calibrated with a GRAS 42AB. Placed 33D downstream and 29D radially from the system centre (Fig. 1b).
  - NPR 2–2.5 in steps of 0.025 for each S (M_j ≈ 1.05–1.22 by isentropic relation; my calculation).
  - 1M samples at 200 kHz (5 s) per NPR.
  - PSD by Welch, 4096-point blocks, 75 % overlap. Δf ≈ 49 Hz, i.e. ΔSt ≈ 0.001 at M_j ≈ 1.1 (my estimate, cold jet, D = 8 mm). Window not stated.
  - Time-resolved, but used only for spectra vs M_j. No time-frequency, coherence or phase analysis between jets.
- **Vortex-sheet model** (p. 5–7):
  - Inviscid, locally parallel, top-hat velocity; normal modes e^{−iωt+ikx}; Euler equations.
  - Normalised by ambient density, ambient sound speed and D. M = acoustic Mach number, T = jet/ambient temperature ratio (isentropic).
  - Inner solution I_m, outer solution K_m sums centred on each jet (eqs. 3.4–3.5); outer field re-expanded about jet 1 with the Bessel (Graf) addition theorem (eq. 3.6, Lee & Chen 2011).
  - Matched at the ideally expanded diameter D_j (Tam & Tanna 1982 with design Mach 1): pressure and displacement continuity.
  - Infinite system truncated at N = 20 azimuthal orders (converged up to N = 50). Unlike the single jet, m doesn't decouple; all m < N are solved together. Modes are named by the single-jet mode they tend to at large S.
- **Finite-thickness model** (p. 7–8, Appendix A):
  - Linearised compressible Euler about a twin-jet parallel mean flow (Lajús et al. 2019; Nogueira & Edgington-Mitchell 2021).
  - Mean flow: sum of two Michalke-type tanh profiles (eq. 3.16), δ the shear-layer parameter, temperature from Crocco–Busemann (Rodríguez 2021 superposition).
  - Floquet ansatz in θ (eq. 3.14) with exponent μ setting the symmetry; computed on θ ∈ [−π/2, π/2) only.
  - Cubic eigenvalue problem in k (eq. A1) linearised to L P̂ = k R P̂ (eq. 3.15).
  - Fourier in θ, Chebyshev in r, Bayliss & Turkel (1992) mapping to cluster points in the shear layer, sparse solver. Radial domain 4S; 8S gave negligible change.
  - Single-jet version: same without the domain extension or θ discretisation (p. 15).
- **Choice of δ** (Appendix B, p. 24–25, Fig. 18–19):
  - tanh fits to single-jet PIV from Mancinelli et al. (2021) at M_j 1.08, 1.12, 1.16 give δ growing with x/D (Fig. 18).
  - KH stabilises as δ rises, fastest at high St (Fig. 19: SS, S = 3, M_j 1.12, St 0.5–0.72, δ 0.15–0.25).
  - δ = 0.2 balances both: it represents the first few diameters and keeps KH unstable at screech St.
- **Twin-jet PIV for profile validation** (Appendix C, p. 25–27, Fig. 20–21):
  - Same facility, S = 2, M_j 1.1 and 1.16. Paraffin-oil seeding, ImperX B6640M (6576 × 4400 px), 8000 images → 4000 snapshots (not time-resolved). PIVLab multigrid cross-correlation (Soria 1996).
  - Mean profiles at x/D = 2 match the superposed tanh (δ = 0.2), including the inter-jet region. At x/D = 3 and 5 a fit needs δ = 0.5 and 0.9.
- **Resonance (prediction) model** (p. 9): phase criterion only (neutral-mode assumption), upstream reflection at the nozzle lip, downstream at the s-th shock cell, shock cells shortening at rate α = 0.06 (Harper-Bourne & Fisher 1974), L₁ from Pack (1950). Any (k⁺, k_p⁻) pair that satisfies eq. 3.17 gives a predicted screech frequency.

## Key equations
Checked against a render of PDF p. 5–9.
- Pressure equation (eq. 3.2, p. 5) and radial wavenumbers (eq. 3.3):
  $$\frac{\partial^2 P}{\partial r^2}+\frac1r\frac{\partial P}{\partial r}+\frac{1}{r^2}\frac{\partial^2 P}{\partial\theta^2}-\lambda_{i,o}^2P=0,\qquad \lambda_i=\sqrt{k^2-\tfrac1T(\omega-Mk)^2},\quad \lambda_o=\sqrt{k^2-\omega^2}$$
- Outer SS field after the addition theorem (eqs. 3.6–3.7, p. 6):
  $$K_m(\lambda_o r_2)\cos m\theta_2=\sum_{n=-\infty}^{\infty}(-1)^nK_{m-n}(\lambda_oS)\,I_n(\lambda_o r_1)\cos n\theta_1$$
  $$P_o(r_1,\theta_1)=\sum_{n=0}^{\infty}A_n\delta_{mn}K_n(\lambda_or_1)\cos n\theta_1+(-1)^n\epsilon_nI_n(\lambda_or_1)\cos n\theta_1\sum_{m=0}^{\infty}A_m(-1)^m\big[K_{m-n}(\lambda_oS)+K_{m+n}(\lambda_oS)\big]$$
  with ε₀ = 0.5, ε_n = 1 otherwise.
- Matching at r = D_j/2 (eqs. 3.8–3.9): pressure continuity, and $\partial_r P_i=\frac1T\frac{(\omega-kM)^2}{\omega^2}\partial_r P_o$.
- Twin-jet dispersion relation (eqs. 3.10–3.12, p. 6–7):
  $$\sum_{m=0}^{\infty}A_m\big[a_{nn}\delta_{mn}\pm(-1)^mc_{mn}\big]=0$$
  $$a_{nn}=\frac{1}{(1-kM/\omega)^2}-\frac1T\frac{\lambda_o}{\lambda_i}\frac{K_n'(D_j\lambda_o/2)\,I_n(D_j\lambda_i/2)}{I_n'(D_j\lambda_i/2)\,K_n(D_j\lambda_o/2)}$$
  $$c_{mn}=(-1)^n\epsilon_n\big[K_{m-n}(\lambda_oS)\pm K_{m+n}(\lambda_oS)\big]\left[\frac{I_n(D_j\lambda_o/2)}{K_n(D_j\lambda_o/2)}\frac{1}{(1-kM/\omega)^2}-\frac1T\frac{\lambda_o}{\lambda_i}\frac{I_n(D_j\lambda_i/2)\,I_n'(D_j\lambda_o/2)}{K_n(D_j\lambda_o/2)\,I_n'(D_j\lambda_i/2)}\right]$$
  Signs (Table 1, p. 7): SS (+ in 3.12, + in 3.10), SA (+, −), AS (−, −), AA (−, +). a_nn = 0 is the single-jet relation (Towne et al. 2017), and c_mn → 0 as S → ∞.
- Finite-thickness ansatz and profile (eqs. 3.13–3.16, p. 7–8):
  $$\tilde P=P(r,\theta)e^{i(kx-\omega t)},\quad P(r,\theta)=\hat P(r,\theta)e^{i\mu\theta},\quad \mathbf L\hat P=k\mathbf R\hat P,\quad U(r)=M\left[0.5+0.5\tanh\!\left(\Big(\frac{R_j}{r}-\frac{r}{R_j}\Big)\frac{1}{2\delta}\right)\right]$$
- Cubic eigenproblem (eq. A1, p. 23): companion form of (A₀ + kA₁ + k²A₂ + k³A₃)P̂ = 0, with A₀–A₃ in eq. A2 (Bridges & Morris 1984).
- Resonance phase criterion and shock-cell distance (eqs. 3.17–3.18, p. 9):
  $$k^+-k_p^-=\frac{(2p+\phi)\pi}{L_s},\qquad L_1=\frac{\pi}{2.4048}\sqrt{M_j^2-1},\qquad L_s=\big((1-\alpha)s+\alpha\big)L_1,\ \alpha=0.06$$
  k⁺ = real KH wavenumber, p = cycles in the loop, φ = reflection-coefficient phase as a fraction of π. With φ = 0, p/s ≈ k_sw/k_s; p/s = 1 ↔ dominant shock wavenumber k_s1 (Tam & Tanna 1982 agreement), p/s ≠ 1 ↔ sub-optimal k_s2.

> Points to verify against the PDF before coding:
> - The paper uses both λ₀ (zero) and λ_o (letter o), and P₀ in eq. 3.9; these appear to be the same outer quantity.
> - In eq. 3.12 the I_n(D_jλ_o/2) in the first bracket term looks odd (an outer argument in I_n); transcribed as printed.
> - Eq. 3.18 is printed as L_s = ((1 − α)s + α)L₁; check against Mancinelli et al. (2021) for the intended cumulative shock-cell sum. The length scale of L₁ (D or D_j) isn't stated here.
> - The 1/(1 − kM/ω)² term in a_nn, i.e. ω²/(ω − kM)², is the standard vortex-sheet form. It supports the suspicion in the [2018 guided-mode note](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) that its printed 1/(ω − kM)² is a typo, and λ_i here carries the 1/T factor missing there.
> - Appendix A operators (eq. A2) are garbled in the text extraction and weren't transcribed; take them from p. 24 of the PDF or Nogueira & Edgington-Mitchell (2021).

## Data tables
**Best-fit resonance parameters** (Tables 3–6, p. 16–20):

| Model | Stage | s | p | φ | p/s |
|---|---|---|---|---|---|
| Single jet, vortex sheet | A1 | 4 | 3 | 0 | ≠ 1 |
| Single jet, vortex sheet | A2 | 4 | 4 | 0 | = 1 |
| Single jet, finite thickness (δ 0.2) | A1 | 4 | 4 | 0 | = 1 |
| Single jet, finite thickness (δ 0.2) | A2 | 4 | 5 | 0 | ≠ 1 |
| Twin jet, vortex sheet | A1 | 5 | 4 | 0 | ≠ 1 |
| Twin jet, vortex sheet | A2 | 5 | 5 | 0 | = 1 |
| Twin jet, finite thickness (δ 0.2) | A1 | 4 | 4 | 0 | = 1 |
| Twin jet, finite thickness (δ 0.2) | A2 | 4 | 5 | 0 | ≠ 1 |

**Approximate values read from figures** (not tabulated; verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| SS (0, 2) branch point, vortex sheet | St ≈ 0.66 at M_j 1.08 → ≈ 0.60 at 1.16, any S | Fig. 11a, p. 15 |
| SS/SA (0, 2) saddle point, vortex sheet | St ≈ 0.80 at M_j 1.08 → ≈ 0.71 at 1.16 | Fig. 11, p. 15 |
| SA (0, 2) branch point, vortex sheet | St ≈ 0.75 (S 2) to ≈ 0.71 (S 6) at M_j 1.08 | Fig. 11b, p. 15 |
| Measured tone range | A1 St ≈ 0.75 → 0.62 over M_j ≈ 1.07–1.12; A2 St ≈ 0.73 → 0.57 over M_j ≈ 1.12–1.20 | Fig. 17a, p. 21 |
| Twin-jet SPL at tones | up to ≈ 155–160 dB/St | Fig. 15–16, p. 18, 20 |

## Figures worth remembering
- **Fig. 2 (p. 4):** real part of the finite-thickness (0, 2) k_p⁻ pressure eigenfunction for SS and SA (S = 2, M_j 1.16, St 0.69, δ 0.2); clean picture of what the symmetries mean.
- **Fig. 3 (p. 8):** superposed tanh twin-jet mean flow (M_j 1.16, S = 3, δ = 0.2).
- **Fig. 6 (p. 11):** k_r–St dispersion at M_j 1.16 for SS/SA, S = 2 vs 50, with (0, 1), (1, 1), (0, 2) branches, branch (blue) and saddle (green) points and the upstream sonic line.
- **Fig. 7 (p. 12):** SA (0, 2) branch point vs S converging to the single-jet value; 1 % at S ≈ 50.
- **Fig. 8–10 (p. 13–14):** SS vs SA eigenfunctions of KH and k_p⁻ along y; vortex sheet vs δ = 0.12/0.2/0.4.
- **Fig. 11–12 (p. 15):** branch and saddle points vs M_j, by S (vortex sheet) and δ (finite thickness).
- **Fig. 13–14 (p. 16–17):** single-jet SPL maps vs M_j with vortex-sheet and finite-thickness predictions.
- **Fig. 15–16 (p. 18, 20):** twin-jet SPL maps for S = 2, 3, 4, 6 with SS/SA predictions and bounds; the key result figures.
- **Fig. 17 (p. 21):** measured and predicted A1/A2 St vs M_j for all S plus the single jet.
- **Fig. 18–19 (p. 25):** δ from PIV fits vs x/D; KH growth rate vs δ.
- **Fig. 20–21 (p. 25–26):** twin-jet PIV mean profiles vs superposed tanh at x/D = 2, 3, 5.
- **Fig. 22 (p. 26):** S = 2 prediction with k_p⁻ from δ = 0.5 and KH from δ = 0.2.

## Notation
- S: centre-to-centre spacing / D. D_j, R_j: ideally expanded diameter and radius.
- SS, SA, AS, AA: symmetry about x–y then x–z plane.
- k⁺ (k_d⁺): downstream KH wave. k_p⁻: upstream guided jet mode (k_TH⁻ in the [2018 note](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), `k_t-` in the [2020 note](edgington-mitchell-2020-waves-in-screeching-jets.md)). (m, n_r): azimuthal order and number of radial pressure antinodes.
- Branch point: lowest St where k_p⁻ is propagative. Saddle point: highest, where k_d⁺ and k_p⁻ merge.
- M: acoustic Mach number U_j/c_∞; T: temperature ratio; δ: tanh shear-layer parameter; μ: Floquet exponent in θ.
- s: index of the downstream shock cell; p: integer cycles; φ: reflection phase / π; α: shock-cell shortening rate; L_s: lip to s-th shock-cell distance.
- k_s1, k_s2: dominant and sub-optimal shock-cell wavenumbers; k_sw: standing-wave wavenumber.

## Relevance to this project
This is a Shock Lab group paper (the user is a co-author) on resonance in multi-jet systems, using the group's anechoic twin-jet rig; see CLAUDE.md. It is entirely a modelling paper checked against far-field spectra.

- **Modelling side:**
  - A complete recipe for twin-jet locally parallel LSA: a vortex sheet coupled by the Bessel addition theorem (cheap, no mean flow needed), and a Floquet-in-θ finite-thickness solver needing only a tanh profile and δ.
  - The existence band of k_p⁻ (0, 2) is a quick test of which symmetry can close a loop at given M_j and S. SS bounds the tones well; SA is suppressed at small S.
  - The phase criterion (eq. 3.17) with p/s ratios ties A1 to k_s1 and A2 to k_s2, agreeing with [Nogueira 2021 closure of A1/A2](nogueira-2021-closure-mechanism-a1-a2-screech.md). It is purely a frequency criterion, with no gain, so it can't choose between SS and SA or between stages.
  - Fitted s, p, φ differ between facilities (φ = 0 here vs ¼ in Mancinelli et al. 2021), blamed on lip thickness (15 % vs 3 %). Record lip geometry when comparing rigs.
  - δ stands for an axial station: the result depends on where KH and k_p⁻ are taken to originate (Fig. 22).
- **Experimental side and how the methods depend on the data:**
  - Only time-averaged Welch PSDs from one microphone are used (time-resolved acoustics, 200 kHz, 4096-point blocks, 75 % overlap). That is enough for tone frequency vs M_j but not for symmetry.
  - Symmetry, SS/SA competition and intermittency are open. For the SPOD → reconstruction → Hilbert POD pipeline:
    - Time-resolved schlieren of the twin jet, or a pair of mics in the x–y and x–z planes, could separate SS and SA. Symmetry-split SPOD as in [Yeung 2022](yeung-2022-3d-spod-twin-rectangular-jet.md) and [Nogueira & Edgington-Mitchell 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md) is the natural tool.
    - Reconstructing the tone from SPOD modes and applying Hilbert POD or a Hilbert phase difference (as in [Jeun 2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) and wavelet coherence in [Esfahani 2021 coupling modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md)) would show whether SS and SA alternate in time, which the authors speculate about (p. 22).
  - The Appendix C PIV (4000 non-time-resolved snapshots) gives only mean profiles here. POD pairs could recover phase for a symmetry check, as in [Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), but only if no symmetry switching occurs.
  - The k_x < 0 filtering of a complex SPOD or POD mode at the tone should find a k_p⁻ (0, 2) wave whose inter-jet shape differs between SS and SA (Fig. 8b); that is a measurable signature.
- **Agreement with and differences from related notes:**
  - [Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md): same resonance model for a single jet; this paper extends it to twin jets and finds the single-jet vortex sheet can't bound tones in this rig, while the twin vortex sheet can.
  - [Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [Waves in screeching jets](edgington-mitchell-2020-waves-in-screeching-jets.md): same guided-mode closure and cut-on/cut-off test, here applied to twin jets.
  - [Nogueira & Edgington-Mitchell 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md): same finite-thickness Floquet solver, but at NPR 5 (M_j 1.7) with m = 1 flapping; this paper covers the low-M_j axisymmetric stages.
  - [Nogueira 2021 absolute instability](nogueira-2021-absolute-instability-shock-containing-jets.md) is proposed as the way to resolve the SS/SA choice.
  - [Stavropoulos 2026 jet–edge interaction](stavropoulos-2026-jet-edge-interaction.md) applies a similar guided-mode phase model to jet–edge tones. A 2024 Stavropoulos paper on upstream waves in merging twin jets is in `Paper_PDFs/` and should be indexed next to this one.
  - Rectangular twin jets ([Jeun 2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [Esfahani 2021 control](esfahani-2021-control-twin-rectangular-jet-coupling.md), [Bres 2021](bres-2021-les-twin-rectangular-jets-plasma.md)) use the same SS/SA/AS/AA labels and also find guided-jet-mode closure and intermittent coupling.
- **Related works cited, candidates for `/add-paper`:** Mancinelli et al. 2021 (complex-valued resonance model); Bell et al. 2021 (intermittent modal coupling in round twin jets); Knast et al. 2018 (coupling modes, same nozzle plate); Edgington-Mitchell et al. 2022 (unifying theory of screech); Rodríguez et al. 2022 (preferred flapping of round twin jets); Morris 1990; Du 1993; Mancinelli et al. 2023 (KH reflection at a shock); Wong et al. 2020 (facility).

- **See also:** [stavropoulos-2024](stavropoulos-2024-upstream-waves-merging-twin-jets.md), the follow-up on how merging twin jets shift the upstream-travelling wave cut-on/cut-off.
