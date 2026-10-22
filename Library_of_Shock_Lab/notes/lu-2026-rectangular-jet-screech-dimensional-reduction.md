---
key: "lu-2026-rectangular-jet-screech-dimensional-reduction"
title: "Modelling rectangular-jet screech via dimensional reduction"
authors: ["Lu, Grant", "Beekman, Jayson", "Mazharmanesh, Soudeh", "Edgington-Mitchell, Daniel", "Nogueira, Petrônio"]
year: 2026
type: "article"
venue: "Theor. Comput. Fluid Dyn. 40, 1"
bib: {"journal": "Theoretical and Computational Fluid Dynamics", "volume": "40", "pages": "1", "note": "Article 1 (27 pp.); published online 19 December 2025"}
doi: "10.1007/s00162-025-00772-y"
arxiv: ""
pdf: "non-axisymmetric-jets/Lu-EtAl_2026_Modelling-Rectangular-Jet-Screech-Via-Dimensional-Reduction.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility (PIV mean flows and schlieren SPOD from earlier papers); LSA computed on NCI"
data: ["PIV", "schlieren-TR"]
methods: ["LSA-local", "LSA-global", "symmetry-decomposition", "resonance-model", "SPOD"]
flow: ["rectangular-jet", "planar-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "KH-wavepackets", "guided-jet-mode", "flapping", "staging", "triadic-interaction"]
params: {"AR": "1, 2, 4, 6 (KH); 2, 4, 6, 8 (GJM); planar and axisymmetric (m = 1) reductions", "NPR": "2.1–5.0 (model sweeps); 2.5, 2.9, 3.3, 3.7, 4.1 (PIV base flows)", "M_j": "1.09–1.71 (isentropic, note's arithmetic)", "δ/h": "0.075 (KH), 0.15 (GJM); 0.1 and 0.2 in the GJM sensitivity test", "St_h": "0.1–0.7 (f h based)", "D/h": "1.13, 1.60, 2.26, 2.76, 3.19 for AR 1, 2, 4, 6, 8 (area-equivalent D assumed, note's arithmetic)"}
topics: ["non-axisymmetric-jets", "linear-models", "screech-frequency-and-global-modes", "screech-staging-and-mode-switching"]
related: ["nogueira-2025-screech-military-style-rectangular-nozzles", "mazharmanesh-2025-screech-modes-non-axisymmetric-jets", "nogueira-2024-guided-jet-waves", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets", "mancinelli-2021-complex-valued-resonance-model-screech", "mancinelli-2019-screech-prediction-upstream-modes", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "nogueira-2021-closure-mechanism-a1-a2-screech", "edgington-mitchell-2022-unifying-theory-jet-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "tam-1989-three-families-instability-waves-high-speed-jets", "michalke-1984-survey-jet-instability-theory", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "stavropoulos-2024-upstream-waves-merging-twin-jets", "marshall-2024-prediction-streaks-rectangular-jets"]
cites: ["alkislar-2003-screeching-rectangular-jet-stereo-piv", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "gojon-2018-oscillation-modes-screeching-jets", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "jordan-2013-wave-packets-turbulent-jet-noise", "jordan-2018-jet-flap-interaction-tones", "krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "mazharmanesh-2025-screech-modes-non-axisymmetric-jets", "michalke-1984-survey-jet-instability-theory", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2024-guided-jet-waves", "nogueira-2025-screech-military-style-rectangular-nozzles", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1990-theoretical-model-discrete-tone-impinging-jets"]
summary: "Planar vs 2D cross-plane LSA of rectangular jets, AR 1–8: planar KH wavenumber within 5% for AR ≥ 4 but its GJM band is far too wide; both predict AR 2 screech St"
---
# Modelling rectangular-jet screech via dimensional reduction

- **Authors:** Grant Lu, Jayson Beekman, Soudeh Mazharmanesh, Daniel Edgington-Mitchell, Petrônio Nogueira, Department of Mechanical and Aerospace Engineering, Monash University (p. 1). Shock Lab group work: Lu is a PhD student supervised by Nogueira and Edgington-Mitchell; Beekman and Mazharmanesh supplied the experimental data and post-processing code (p. 21).
- **Source:** Theoretical and Computational Fluid Dynamics (2026) 40:1, doi:10.1007/s00162-025-00772-y. Received 1 July 2025, accepted 6 December 2025, online 19 December 2025 (p. 1). ONR grant N00014-22-1-2503; computing on NCI; axisymmetric LSA code from Naia Suzuki (p. 21). The paper states that no datasets were generated (p. 21).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/non-axisymmetric-jets/Lu-EtAl_2026_Modelling-Rectangular-Jet-Screech-Via-Dimensional-Reduction.pdf` (index key `non-axisymmetric-jets/Lu-EtAl_2026_Modelling-Rectangular-Jet-Screech-Via-Dimensional-Reduction.pdf`, 27 pp., publisher's version). Page refs are the printed "Page N of 27", equal to PDF pages. Equations, Tables 1–3 and Figs. 6, 7, 12, 15–16, 18–24, 29–30 were checked on rendered pages; values marked "read" come from figures.
- **Tags:** screech, rectangular jet, square jet, aspect ratio 1–8, planar-jet approximation, axisymmetric approximation, dimensional reduction, local spatial linear stability, 2-D cross-plane (biglobal-type) eigenproblem, Chebyshev collocation with mapping, quarter-domain symmetry boundary conditions, D2 symmetries SS/SA/AS/AA, flapping KH mode, guided jet mode (GJM), duct mode, branch point, saddle point, band of existence, hyperbolic-tangent base flow, PIV-fitted base flow, shear-layer thickness sensitivity, modified weakest-link model, primary and suboptimal shock wavenumbers k_s1/k_s2, SPOD spectra from schlieren, spurious tones, cut-on and cut-off of screech stages

## Summary
The paper asks how far a rectangular screeching jet can be reduced in dimension for local linear stability analysis. It compares a full two-dimensional (y, z) cross-plane stability model of rectangular jets (AR 1–8) against a planar model (homogeneous in the span) and, for KH waves, an axisymmetric m = 1 model (p. 3–4, 13). Both waves of the screech loop are tested: the downstream flapping (SA) KH wave and the upstream SA guided jet mode, on a hyperbolic-tangent, shock-free, inviscid base flow over NPR 2.1–5.0 (p. 4–7). For the KH wave the planar model is good: its wavenumber is within 10 % for all AR and within 3.3 % for AR ≥ 4, and its growth rate within 10 % from AR 2, while the axisymmetric model is worse even for a square jet (p. 12, 14, 21). For the GJM the planar model predicts a much wider band of existence; it gets the saddle point (upper edge) within 3.4 % for AR ≥ 4 but misses the branch point (lower edge) even at AR 8, and with a PIV-derived base flow the AR 2 band is narrow and shifted to lower frequency (p. 17–19). In a modified weakest-link model for an AR 2 jet, both the planar model and the 2D model on PIV base flows reproduce the measured SPOD tones, including a second band from NPR ≈ 3.5 on the suboptimal shock wavenumber, but the planar model also predicts many tones that do not exist, so it cannot give the cut-on and cut-off of the stages (p. 20–21).

## Key findings
- **KH mode shapes** (p. 7–8, Figs. 4–5):
  - The SS (varicose), SA (flapping about the major axis), AS (wagging) and AA ("flower") modes are computed separately by quarter-domain symmetry conditions (p. 4, 7).
  - The flapping SA KH mode is studied because for NPR ≳ 2.2 the dominant rectangular-jet tone has SA symmetry (citing Mazharmanesh et al. 2025) (p. 7).
  - AR 2 and AR 6 flapping eigenfunctions look alike at St_h = 0.15 and 0.6 (near the bounds of the unstable band): the pressure peaks in the shear layer and decays outward, faster at high frequency. Aspect ratio mainly stretches the span (p. 7), as in the vortex sheet of Tam & Thies (1993).
- **KH dispersion** (p. 7–8, Fig. 6; AR 1, AR 4, planar; NPR 2.1–5.0):
  - α_r h rises almost linearly with St_h, so the phase speed is nearly constant (p. 7–8).
  - −α_i is parabolic in St_h and its peak falls as NPR rises (p. 8).
  - The peak-growth St_h is independent of AR: ≈ 0.41 at NPR 2.1 and ≈ 0.31 at NPR 5.0 for all three geometries (p. 8), consistent with Morris & Bhat (1995) for elliptic jets.
  - AR 4 has a much larger peak growth than AR 1, and is close to planar (p. 8).
- **Planar vs 2D error for KH** (eq. 12; Figs. 7 and 12, p. 9–12):
  - Wavenumber: for AR ≥ 2 the planar model **overestimates** α_r, mostly at low St. The maximum error falls from 7.8 % (AR 2) to 3.33 % (AR 4) and 1.7 % (AR 6). At AR 2 the error is only 0.3 % for St_h ≥ 0.2 (p. 9, 12). For the square jet the planar model **underestimates** α_r, up to 9.6 % (p. 9, 12).
  - Growth rate: the planar model underestimates the square-jet growth everywhere, by more than 30 % (Fig. 12 upper bound ≈ 33 %, read; p. 21). For AR 2 the maximum error is 6.19 %, for AR 6 1.18 % (p. 10). From AR 2 the planar model begins to overestimate growth at high NPR (NPR > 4.5, St_h > 0.25), and the overestimating region spreads to all NPRs by AR 6 (p. 10).
  - The authors stress that a growth-rate error is an error in an exponent, so it compounds downstream (p. 10).
  - Conclusion: AR ≥ 4 can be treated as planar for KH, if 5 % error is acceptable, which matches Tam's (1988) AR ≥ 4 criterion for shock cells (p. 12).
- **Competing KH branch at AR 4 and 6** (p. 10–13, Figs. 8–11; NPR 4.5):
  - The isolated spikes in the error maps come from a second KH branch that follows the most unstable one closely in the eigenspectrum. At AR 6 the "most unstable" branch becomes the second or third most unstable as St rises (p. 11).
  - At NPR 4.5, St_h = 0.45, AR 6: αD = 14.7446 − 2.9202i against 14.7419 − 2.9583i (100 × 70 grid; Fig. 9), and 14.7446 − 2.9184i against 14.7421 − 2.9673i on a 250 × 70 grid (Fig. 10) (p. 11–12).
  - Both modes flap. Across the span, the competing mode has three pressure nodes along the lip even at St_h = 0.1; the most unstable mode starts with one central peak and gains peaks and troughs as frequency rises (Fig. 11, p. 12–13).
  - The authors say the competing branch is neither numerical nor an artefact of inviscid theory (viscous runs not shown), its physical meaning is unclear, and it barely affects screech prediction because its α is nearly the same (p. 11–12). A planar model cannot separate the two (p. 12).
- **Thicker shear layer, δ/h = 0.15** (p. 13, Figs. 13–14, AR 4): doubling δ roughly halves the unstable bandwidth and damps the growth. The planar model still overestimates α_r (max 2.56 %) and now underestimates growth (max 4.41 %), worst near stabilisation (p. 13).
- **Axisymmetric reduction** (p. 13–14, Figs. 15–16): an m = 1 round-jet model with δ normalised by the round-jet diameter underestimates the AR 1 KH wavenumber everywhere and overestimates growth at low St, underestimating it at high St. The maximum errors are 27 % (α_r) and 38 % (α_i), and they grow with AR. The authors conclude that within LSA there is no case where an axisymmetric model beats a planar one for rectangular jets (p. 14).
- **KH eigenfunctions** (p. 14–15, Table 2, Fig. 17): the centreline (y = 0) pressure eigenfunction of the 2D model matches the planar one with Pearson r ≥ 0.972 for AR 1 and ≥ 0.9996 for AR ≥ 4. At low St, AR 1 and 2 decay faster outward than the planar mode (p. 15). Eigenfunction differences are small compared with the eigenvalue differences (p. 15).
- **GJM in the planar model** (p. 16, Fig. 18; NPR 3.2): the antisymmetric GJM and a duct mode approach each other as St rises and merge at the saddle point (upper band edge). The GJM leaves the sonic line α = α_ac at the branch point (lower edge) (p. 16).
- **GJM in the 2D model** (p. 16–17, Figs. 19–20):
  - The eigenspectrum is much more crowded, with higher-order GJMs oscillating in both y and z. For non-zero spanwise wavenumber, branch and even saddle points can fall on the other side of the sonic line (citing Nogueira et al. 2024). The planar model would capture these with a spanwise wavenumber β in its ansatz (p. 16–17). Only the lowest-frequency branch is used for screech (p. 17).
  - Saddle points are located by a bisection-like search in frequency, tolerance 2 × 10⁻⁴ (Fig. 19 caption, p. 17).
  - Near the branch point the GJM is acoustic-like, spreads into the far field and is hard to converge; at the saddle it is confined to the core and decays quickly outside, as for other symmetries (Fig. 20, p. 17).
- **Band of existence, tanh base flow** (Fig. 21, p. 17):
  - The 2D model's band is much narrower than the planar one for every AR (p. 17).
  - For AR 2 the 2D band is very narrow, and its **branch point lies above the planar saddle point**: the two models' bands do not overlap (p. 17).
  - For AR ≥ 4 the planar saddle matches the 2D saddle within 3.4 % over NPR, but the planar branch point is far too low. As AR rises the 2D branch point moves only slowly towards the planar one, and is still well off at AR 8 (p. 17).
  - Read from Fig. 21 (St_h, ±0.01): at NPR 2.1 the bands are planar 0.23–0.43, AR 8 0.30–0.43, AR 6 0.32–0.43, AR 4 0.38–0.43, AR 2 0.43–0.45; at NPR 5.0, planar 0.12–0.21, AR 8 0.15–0.21, AR 6 0.16–0.21, AR 4 0.18–0.21, AR 2 0.22–0.23. The planar branch point is therefore about 25–30 % below the AR 8 one (my reading).
- **Sensitivity to δ** (Appendix C, p. 25, Figs. 29–30): δ/h = 0.1, 0.15, 0.2 change the 2D band only a little: a slight widening at low NPR for AR 2, and for AR 4 a small, steady fall of the branch point with an unchanged saddle (p. 25). The tanh model cannot go thicker without the centreline becoming subsonic (p. 5, 18).
- **Band of existence, PIV base flow** (p. 18–19, Fig. 23, Table 3):
  - The 2D AR 2 model is rerun on a nonlinear tanh-type fit to PIV mean flows (from Nogueira, Weightman & Edgington-Mitchell, AIAA 2024-3144), taken at the x where the screech SPOD mode peaks (Mazharmanesh et al. 2025) (p. 18). These stations are x/D = 2.28, 2.82, 3.38, 3.97, 6.97 at NPR 2.5, 2.9, 3.3, 3.7, 4.1 (Table 3, p. 19).
  - The PIV cross-section has a much thicker shear layer and a much lower effective aspect ratio than the model, "a square with rounded corners" (p. 18–19, Fig. 22).
  - The band stays narrow but moves well down in frequency, now inside the planar band, with centre frequencies comparable to the planar band's (p. 19).
  - Read from Fig. 23 (St_h, branch–saddle, ±0.005): 0.262–0.300 (NPR 2.5), 0.212–0.239 (2.9), 0.212–0.233 (3.3), 0.193–0.210 (3.7), 0.141–0.163 (4.1). The bandwidth is 0.017–0.038, against about 0.15–0.20 for the planar band (my reading).
  - The authors note that the PIV profiles and the SPOD-peak positions come from different datasets, and say this has minimal effect on the predictions (p. 19).
- **Screech prediction for AR 2** (§5, p. 20–21, Fig. 24):
  - The comparison is with the leading-SPOD-mode spectrum of schlieren data from Mazharmanesh et al. (2025). k_s1 and k_s2 come from an FFT of smoothed experimental shock structure (p. 7, 20). NPR ≤ 2.1 is excluded because those tones are varicose (p. 20).
  - The planar model follows the lower (dominant) tone band at almost every NPR, except NPR 2.2. Its k_s2 branch follows the second, higher band that emerges from NPR ≈ 3.5 ("mode staging") (p. 20).
  - The 2D model on PIV base flows also agrees at the sampled NPRs and mostly sits on the planar predictions, so the predictions are driven mainly by the instability wavenumbers. Its k_s2 points at low NPR differ from the planar ones, which the authors attribute to the different GJM bands (p. 20).
  - **Limitation:** the planar band is so wide that the model predicts many tones that are not observed, and it cannot say when screech should stop. Mancinelli et al. (2021) predicted cut-off for round jets, but the planar model cannot (p. 20).
  - The 2D model gives fewer spurious tones but needs the measured base flow and is very sensitive to it. With the tanh profile of eq. 9 it gives almost no predictions for AR 2 (p. 20–21).
  - **My reading of Fig. 24** (values in the Data tables): 2D k_s1 triangles appear only at NPR 2.5, 2.9 and 4.1, and 2D k_s2 triangles at all five PIV NPRs. With St_j = (D/h) St_h = 1.60 St_h (assuming St_h = f h/U_j), the Fig. 23 PIV bands become St_j 0.42–0.48, 0.34–0.38, 0.34–0.37, 0.31–0.34 and 0.23–0.26. These bracket every triangle within the reading error. They lie **above** the dominant tone at NPR 3.3 and 3.7 (planar k_s1 ≈ 0.28 and 0.25), which explains the missing k_s1 triangles there. So, by this reading, the 2D model does not predict the dominant tone at NPR 3.3–3.7, contrary to the text's "capturing both" (p. 20). It also offers a k_s2 tone at NPR 3.3, before the second band appears at NPR ≈ 3.5.
- **Conclusions** (p. 21): the planar model is a cheap, accurate reduction for KH waves for AR ≥ 4 (≈ 3.3 % in α_r) and usable from AR 2; the axisymmetric reduction is inappropriate even at AR 1. For the GJM the planar band is several times wider than the 2D band, and for AR 2 it does not overlap the tanh-based 2D band. Reduced models are cheap and accurate if only frequency is needed, but cannot give the cut-on and cut-off frequencies of the screech stages.

## Setup / method
- **Character of the paper:** a modelling study. No new experiments; the only data are a PIV mean-flow fit for the base flow (from the AIAA 2024 precursor of [Nogueira 2025](nogueira-2025-screech-military-style-rectangular-nozzles.md)) and schlieren SPOD spectra, SPOD-peak positions and shock wavenumbers from the group's AR 2 rectangular jet ([Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md)) (p. 5, 18, 20). The nozzle type, size and facility are not described in this paper. From the other notes, the PIV NPRs (2.5, 2.9, 3.3, 3.7, 4.1) match the sharp-throat C-D nozzle of Nogueira 2025 (D_eq 8.68 mm), while Mazharmanesh 2025 used a purely convergent AR 2 nozzle (D_e 13.6 mm). If so, the base flow and the tones come from **different nozzles**, not only "different datasets" (p. 19). This is my inference; check.
- **Coordinates** (p. 4): x streamwise, y spanwise (along the major dimension), z along the jet height h (minor dimension). Symmetry labels: the first letter is the symmetry about the y axis and the second about the z axis (p. 7). SA is flapping across the minor dimension (displacement along z), AS is wagging.
- **Governing equations** (eqs. 1–5, p. 4): compressible Navier–Stokes in Cartesian coordinates, in specific-volume form, after Towne's (2016) thesis. State q = [u_x, u_y, u_z, v, p]ᵀ.
- **Linearisation** (eqs. 6–8, p. 4; Appendix A, p. 21–22): Reynolds decomposition about a steady, locally parallel mean q̄(y, z); normal modes e^{i(αx − ωt)}. Nonlinear terms and terms in α² are dropped to keep a generalised eigenproblem L q̂ = α F q̂, linear in α. The flow is then taken as **inviscid** (p. 4), so the viscous terms in eq. A2 play no part.
- **Spatial problem:** real ω, complex α. Growth is −α_i with this ansatz; Fig. 6 plots α_i < 0.
- **Numerics** (p. 4–5, 11–12, 22–24):
  - Chebyshev collocation in y and z with a Bayliss–Turkel mapping that clusters points in the shear layers. Solved with MATLAB `eigs` (Arnoldi).
  - The 2D model uses a quarter domain with symmetric or antisymmetric conditions on the y and z axes, as in Tam's (1988) rectangular vortex sheet. The planar model needs no symmetry conditions and uses disturbances with zero spanwise wavenumber (p. 4).
  - Far-field boundary conditions are not stated.
  - KH grids (Table 1, p. 5): AR 1 on y/D = z/D = 4, 80 × 80; AR 2, 4, 6 on y/D = 5, z/D = 3, 100 × 70.
  - KH checks at NPR 4.5: refined 200 × 100 and 250 × 70 grids agree with each other, and differ from 100 × 70 by ≤ 0.003 % (α_r) and 0.12 % (α_i), excluding the stabilised modes at St_h > 0.62 (p. 11–12).
  - Convergence criterion: below 1 % in both α_r and α_i (eq. B4, p. 22). Planar Nz = 400 vs 800: 0.02 % and 0.77 %. 2D AR 6: 70 × 50 vs 100 × 70 gives 0.31 % (α_r) and 3.34 % (α_i); 100 × 70 vs 150 × 90 gives 1.78 % in α_i, with the largest errors near stabilisation at high St. The 100 × 70 grid is kept (p. 22–23). The planar Nz used for the results is not stated.
  - GJM grids: y/D = z/D = 40 with 100 × 100 points in the quarter domain for all AR. Checked only for AR 4 (80 × 80 vs 100 × 100, real part only, max 0.23 %) (p. 5, 24). Domain size is not varied, although the branch-point mode reaches the far field (p. 17; my observation).
- **Base flow** (eq. 9, p. 5; Figs. 1–3):
  - A product of four tanh profiles (Michalke profile extended to rectangles in the AIAA 2023 precursor), with y_s, z_s the jet width and height and δ the shear-layer thickness.
  - The centreline value is M∞, the acoustic Mach number from isentropic expansion to ambient pressure.
  - δ is normalised by h in the planar model and by the equivalent diameter D in the 2D model, with δ/D = (δ/h)(h/D) (eq. 10) to keep the same layer. The paper does not define D; area-equivalent is assumed here.
  - δ/h = 0.075 for KH waves matches the AR 2 PIV profile at x/D = 0.076 (NPR 2.5). δ/h = 0.15 for the GJM matches x/D ≈ 0.95, still upstream of where the GJM acts. Thicker layers make the centreline subsonic (p. 5, Fig. 1).
  - The density and temperature profiles are not given (Crocco–Busemann is not mentioned).
  - No streamwise development: one cross-section per case.
- **PIV-based base flow** (p. 18–19): a nonlinear fit to measured velocity at one x per NPR, chosen as the streamwise position of peak screech-SPOD-mode amplitude (Table 3).
- **Axisymmetric comparison** (p. 13–14): a cylindrical-polar m = 1 model with the same tanh form, δ normalised by the round-jet diameter (code by N. Suzuki).
- **Screech model** (eq. 11, p. 7; §5, p. 20):
  - Modified weakest link: a tone at ω_s where α_GJM = α_KH − k_s. Both α come from LSA and k_s from experiment. Each peak of the shock spectrum (k_s1 primary, k_s2 suboptimal) gives a candidate.
  - KH is taken on the thin (δ/h = 0.075) profile and GJM on the thick (0.15) or PIV profile.
  - Results are scaled by eq. 14, plus an h → D rescale for the planar model.
  - Only AR 2 is tested, and only the SA (flapping) loop.
- **Method–data dependence:**
  - LSA needs only a mean flow, so non-time-resolved PIV is enough for the input.
  - The validation uses SPOD of time-resolved schlieren (Mazharmanesh 2025; SPOD parameters are not given here), both for the tone map and to choose the x station.
  - k_s needs a long enough mean field for an FFT that resolves k_s1 and k_s2; smoothing and window are not stated (p. 20).

## Key equations
All checked against rendered pages.
- **Governing equations** (eqs. 1–5, p. 4), v = 1/ρ:
  $$\frac{Dv}{Dt}-v(\nabla\cdot\mathbf u)=0,\qquad \frac{Du_j}{Dt}+v\frac{\partial p}{\partial x_j}=\frac{v}{Re}\nabla^2u_j\ (j=x,y,z),$$
  $$\frac{Dp}{Dt}+\gamma p(\nabla\cdot\mathbf u)=\frac{\gamma}{Re\,Pr}\left(v\nabla^2p+2\nabla p\cdot\nabla v+p\nabla^2v\right).$$
- **Decomposition and ansatz** (eqs. 6–7, p. 4): $\mathbf q=\bar{\mathbf q}(y,z)+\mathbf q'(t,x,y,z)$, $\mathbf q'=\hat{\mathbf q}(y,z)\,e^{i(\alpha x-\omega t)}$.
- **Eigenproblem** (eq. 8, p. 4): $\mathbf L\hat{\mathbf q}=\alpha\mathbf F\hat{\mathbf q}$. In Appendix A (p. 22), $A=-i\omega+\bar u_y\mathcal D_y+\bar u_z\mathcal D_z$ sits on the diagonal of L, $B=(\bar v/Re)(\mathcal D_y^2+\mathcal D_z^2)$, $C=\mathcal D_y^2+\mathcal D_z^2$, and
  $$\mathbf F=\begin{bmatrix}-i\bar u_x&0&0&0&-i\bar v\\0&-i\bar u_x&0&0&0\\0&0&-i\bar u_x&0&0\\i\bar v&0&0&-i\bar u_x&0\\-i\gamma\bar p&0&0&0&-i\bar u_x\end{bmatrix}.$$
  > The full L (eq. A2) is not reproduced here. As printed, some first-row mean-gradient entries lack overbars (e.g. ∂u_x/∂z); verify against p. 22 before coding it.
- **Base flow** (eq. 9, p. 5):
  $$U_x(y,z)=\frac{M_\infty}{16}\Big[1+\tanh\tfrac{0.5y_s+y}{\delta}\Big]\Big[1+\tanh\tfrac{0.5y_s-y}{\delta}\Big]\Big[1+\tanh\tfrac{0.5z_s+z}{\delta}\Big]\Big[1+\tanh\tfrac{0.5z_s-z}{\delta}\Big].$$
  Each bracket tends to 2 inside the jet, so the centreline velocity is M∞ in units of a∞ (my reading). The planar form (presumably the z factors only, over 4) is not printed.
- **Equivalent layer** (eq. 10, p. 6): $\delta/D=(\delta/h)(h/D)$, with h/D < 1 for AR ≥ 1.
- **Modified weakest link** (eq. 11, p. 7): $\omega_s:\ \alpha_{GJM}=\alpha_{KH}-k_s$, with α_GJM < 0 (upstream).
- **Relative error** (eq. 12, p. 9): $E_{\{i,r\}}=(\alpha_{2D,\{i,r\}}-\alpha_{planar,\{i,r\}})/\alpha_{planar,\{i,r\}}$. Negative E_r means the planar model overestimates the wavenumber.
- **Pearson correlation of eigenfunctions** (eq. 13, p. 15): $r=\sum(\hat p_{2D,i}-\bar{\hat p}_{2D})(\hat p_{pl,i}-\bar{\hat p}_{pl})\big/\sqrt{\sum(\hat p_{2D,i}-\bar{\hat p}_{2D})^2\sum(\hat p_{pl,i}-\bar{\hat p}_{pl})^2}$, over z/h = 0–3 at y = 0, with the planar eigenfunction interpolated onto the 2D grid (Table 2 caption).
- **Strouhal conversion** (eq. 14, p. 20): $St_j=St_{LSA}\,\dfrac{M_\infty}{M_j}\dfrac{a_\infty}{a_j}$, with an extra h → D factor for the planar model.
  > As printed, if M∞ = U_j/a∞ (the stated acoustic Mach number) then M∞a∞ = M_j a_j = U_j and the factor is 1. The equation is non-trivial only if St_LSA uses another velocity scale. The paper does not define St_h or St_LSA explicitly; check before reusing.
- **Convergence metric** (eq. B4, p. 22): $E_{\{i,r\}}=|\alpha^{coarse}-\alpha^{fine}|/|\alpha^{fine}|$.

> Consistency check (my arithmetic): with area-equivalent D, D/h = √(24/π) = 2.76 for AR 6. The Fig. 9 eigenvalue αD = 14.74 − 2.92i then gives αh = 5.33 − 1.06i at St_h 0.45, which matches the Fig. 6 curves. So the 2D eigenvalues are quoted per D, and D is the area-equivalent diameter.

## Data tables
**Pressure-eigenfunction correlation, 2D vs planar** (Table 2, p. 16):

| AR | NPR 2.1, St_h 0.15 | NPR 2.1, St_h 0.55 | NPR 5.0, St_h 0.15 | NPR 5.0, St_h 0.55 |
|---|---|---|---|---|
| 1 | 0.9740 | 0.9983 | 0.9721 | 0.9950 |
| 2 | 0.9950 | 0.9999 | 0.9936 | 0.9992 |
| 4 | 0.9996 | 1.0000 | 0.9996 | 1.0000 |
| 6 | 0.9999 | 1.0000 | 0.9999 | 1.0000 |

**Maximum KH errors, planar vs 2D** (text p. 9–14, Fig. 12; δ/h = 0.075 unless noted):

| Case | α_r (wavenumber) | α_i (growth rate) |
|---|---|---|
| AR 1 | 9.6 % (planar low) | > 30 % (≈ 33 % read; planar low) |
| AR 2 | 7.8 % (planar high); 0.3 % for St_h ≥ 0.2 | 6.19 % |
| AR 4 | 3.33 % | ≈ 1–2 % (read) |
| AR 6 | 1.7 % | 1.18 % |
| AR 4, δ/h = 0.15 | 2.56 % | 4.41 % |
| Axisymmetric m = 1 vs AR 1 | 27 % | 38 % |

**PIV base-flow stations and 2D GJM band for AR 2** (Table 3, p. 19; band read from Fig. 23, ±0.005; St_j column is my conversion ×1.596, assuming St_h = f h/U_j):

| NPR | M_j (isentropic) | x/D of SPOD peak | Branch St_h | Saddle St_h | Band in St_j |
|---|---|---|---|---|---|
| 2.5 | 1.22 | 2.28 | 0.262 | 0.300 | 0.42–0.48 |
| 2.9 | 1.33 | 2.82 | 0.212 | 0.239 | 0.34–0.38 |
| 3.3 | 1.43 | 3.38 | 0.212 | 0.233 | 0.34–0.37 |
| 3.7 | 1.51 | 3.97 | 0.193 | 0.210 | 0.31–0.34 |
| 4.1 | 1.58 | 6.97 | 0.141 | 0.163 | 0.23–0.26 |

**Predicted screech St_j for AR 2** (Fig. 24, p. 20; read, ±0.01–0.02):

| NPR | Planar k_s1 | Planar k_s2 | 2D (PIV) k_s1 | 2D (PIV) k_s2 |
|---|---|---|---|---|
| 2.5 | 0.43 | 0.55 | 0.43 | 0.49 |
| 2.9 | 0.35 | 0.42 | 0.35 | 0.39 |
| 3.0 | 0.32 | 0.41 | — | — |
| 3.3 | 0.28 | 0.36 | none visible | 0.36 |
| 3.5 | 0.26 | 0.33 | — | — |
| 3.7 | 0.25 | 0.31 | none visible | 0.32 |
| 4.0 | 0.23 | 0.29 | — | — |
| 4.1 | 0.23 | 0.28 | 0.23 | 0.27 |
| 4.5 | 0.21 | 0.27 | — | — |
| 5.0 | 0.20 | 0.25 | — | — |

The experimental SPOD ridge follows the planar k_s1 line throughout, and a second ridge follows the planar k_s2 line from NPR ≈ 3.5 (Fig. 24; p. 20). For comparison, Mazharmanesh 2025 lists for the convergent AR 2 nozzle St 0.39 (flapping) at NPR 2.6, and 0.23 (flapping), 0.27 (bi-axial flapping) and 0.30 (varicose) at NPR 4.0. Planar k_s1 matches the flapping tones, and planar k_s2 at NPR 4.0 (≈ 0.29) lies between the bi-axial and varicose tones (my comparison).

## Figures worth remembering
- **Fig. 1 (p. 6):** tanh profiles against the PIV-fitted profile for AR 2 at NPR 2.5; δ/h = 0.075 matches x/D = 0.076 and δ/h = 0.15 matches x/D ≈ 0.95.
- **Fig. 4 (p. 8):** SS, SA, AS KH pressure eigenfunctions, AR 2, NPR 2.1, St_h 0.15.
- **Fig. 6 (p. 9):** α_r and α_i against St_h for AR 1, AR 4 and planar, NPR 2.1–5.0. The key KH dispersion figure.
- **Fig. 7 (p. 10):** error maps E_r, E_i over (St_h, NPR) for AR 1, 2, 4, 6.
- **Figs. 8–11 (p. 11–13):** eigenspectra at NPR 4.5 and the competing three-node KH branch at AR 6.
- **Fig. 12 (p. 13):** error bounds against AR, the planar-validity summary.
- **Figs. 15–16 (p. 15):** axisymmetric-model errors.
- **Fig. 18 (p. 17):** planar GJM and duct branches at NPR 3.2, with the branch point on the sonic line and the saddle where GJM and duct mode merge.
- **Fig. 19 (p. 17):** crowded 2D eigenspectrum (AR 4, NPR 3.2) with branch and saddle marked.
- **Fig. 20 (p. 18):** AR 4 GJM near the branch point (spreads outside) and at the saddle (confined).
- **Fig. 21 (p. 18):** GJM bands of existence for planar and AR 2–8. The central GJM result.
- **Fig. 23 (p. 19):** AR 2 bands from tanh against PIV base flows.
- **Fig. 24 (p. 20):** planar and 2D predictions over the schlieren SPOD tone map.
- **Figs. 29–30 (p. 25):** δ sensitivity of the bands for AR 2 and 4.

## Notation
- AR: aspect ratio; h: jet height (minor dimension); D: equivalent diameter (area-equivalent assumed); y_s, z_s: width and height parameters of eq. 9; δ: shear-layer thickness (per h in planar, per D in 2D); M∞: acoustic Mach number U_j/a∞ (as stated); M_j: fully expanded Mach number; a∞, a_j: ambient and jet sound speeds.
- x, y, z: streamwise, spanwise (major dimension), height (minor dimension). q = [u_x, u_y, u_z, v, p]: velocities, specific volume, pressure.
- α = α_r + iα_i: streamwise wavenumber (spatial growth −α_i); ω: angular frequency; St_h, St_D: Strouhal numbers on h and D (velocity scale not stated); St_LSA, St_j: model and jet-velocity Strouhal numbers (eq. 14).
- SS, SA, AS, AA: D2 symmetry about the y and z axes; SS varicose, SA flapping across the minor dimension, AS wagging, AA flower. In the single-jet labels of [Suzuki 2026](suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md) the same flapping motion is AS, because the axes are named the other way round (note's comparison; check before merging labels).
- KH: Kelvin–Helmholtz wave; GJM: guided jet mode; α_KH, α_GJM: their wavenumbers; α_ac: sonic line; k_s, k_s1, k_s2: shock-cell wavenumber and its primary and suboptimal peaks; E_r, E_i: relative errors (eq. 12); r: Pearson coefficient (eq. 13).
- Branch point: lower band edge, where the GJM leaves the sonic line; saddle point: upper edge, where GJM and duct mode merge; band of existence: frequencies between them.

## Relevance to this project
This is Shock Lab group modelling of the group's AR 2 rectangular jets. It is the methods companion to [Nogueira 2025](nogueira-2025-screech-military-style-rectangular-nozzles.md) (same PIV base-flow fit, same weakest-link recipe) and uses the SPOD tone maps of [Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md). Its practical message for the lab's linear modelling: **KH waves are cheap, GJM band edges are not.**

**How it fits the literature**
- **Planar reductions.** It confirms for KH waves what [Tam 1988](tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets.md) found for shock cells: AR ≥ 4 behaves as planar to within a few per cent (p. 12; Tam 1988 note: AR correction < 3 % for AR > 4). For the GJM it undercuts planar band arguments:
  - [Gojon 2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md) used planar vortex-sheet lower band limits (branch points) to explain AR 2 LES tones. Here the planar branch point is the edge that is badly wrong (p. 17), and for AR 2 the tanh-based 2D band does not even overlap the planar one.
  - This supports the topic-page reading that planar band membership is a weak test of closure for AR 2 jets (and finds a stronger reason than the vortex sheet's zero thickness).
- **GJM sensitivity to the base flow.** It agrees with [Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) (narrow bands, ΔSt ≤ 0.09, that shift with the shear layer; 38 % change over 4 D, cited p. 18), [Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md) (thickness moves both band edges) and [Nogueira 2025](nogueira-2025-screech-military-style-rectangular-nozzles.md) (a constant profile fails, the spreading PIV mean works).
  - The 2D bands on PIV profiles are 0.017–0.038 wide in St_h (≈ 0.03–0.06 in St_j), in line with Ivelja's ≤ 0.09.
  - Appendix C finds the band edges insensitive to δ over δ/h 0.1–0.2 (p. 25), whereas the PIV base flow moves them a lot. The cross-sectional shape (rounded square vs rectangle) and the much thicker measured layer, not δ within the tanh family, appear to matter (my reading of Figs. 22–23).
- **Finite thickness over vortex sheets.** It follows [Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md) and [Stavropoulos 2023](stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa.md) in choosing finite thickness (p. 3).
- **Higher-order GJMs.** These are the oblique (spanwise-wavenumber) guided waves of [Nogueira 2024](nogueira-2024-guided-jet-waves.md), whose branch points can cross the sonic line (p. 16–17).
  - The spanwise wavenumber of a finite-span jet does not obviously explain the branch-point gap. A lowest spanwise half-wave β ≈ π/(AR h) raises a duct-like cut-on by only √(1 + 1/AR²) − 1 ≈ 0.8 % at AR 8, against the ≈ 25–30 % gap in Fig. 21 (my estimate).
  - The gap may instead come from the side shear layers and corners, or from how the far-field branch point is resolved on a finite domain: the GJM study varies resolution but not the y/D = z/D = 40 domain (p. 24). This is untested.
- **Equivalent-AR mapping.** The PIV cross-section is "a square with rounded corners" at the SPOD-peak stations (p. 19). That fits the axis-switching picture (the AR 2 jet's effective AR falls downstream; [axis-switching-and-mean-flow](../topics/axis-switching-and-mean-flow.md) topic), and the merged twin jets of [Stavropoulos 2024](stavropoulos-2024-upstream-waves-merging-twin-jets.md), which behave as an equivalent AR ≈ 2 jet. A planar model of an AR 2 jet is therefore doubly wrong for the GJM: wrong dimension, and an AR that has already relaxed towards 1 where the GJM acts (my synthesis).
- **Second band on k_s2.** This is the A2-type mechanism of [Nogueira 2022](nogueira-2021-closure-mechanism-a1-a2-screech.md) and [Edgington-Mitchell 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md), applied to AR 2. The paper calls it "mode staging" (p. 20), but Mazharmanesh 2025 shows several loops coexisting at NPR 4.0 (flapping 0.23, bi-axial 0.27, varicose 0.30). Planar k_s2 (≈ 0.29) falls between the bi-axial and varicose tones, which repeats the loop-assignment ambiguity noted for Nogueira 2025 (Fig. 17 there).
  - Only the SA loop is modelled, so the varicose (SS) and wagging (AS) GJM bands, which could identify the second ridge, are not tested.
- **Spurious tones and cut-off.** The planar model's over-wide band reproduces the spurious-tone problem of phase-only resonance models ([Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md), p. 17). The 2D model with a measured base flow is the only reduced route here to the cut-on and cut-off, i.e. to staging limits.
- **Weakest link and the saddle.** The weakest link is the local proxy for the KH–GJM saddle of [Nogueira 2021, absolute instability](nogueira-2021-absolute-instability-shock-containing-jets.md) (see Nogueira 2022, p. 14–15). The paper takes KH on a near-nozzle profile and the GJM at the SPOD-peak station, the same split as Nogueira 2025 (α_KH near the lip, α_GJM(x)).

**Methods and data for the lab workflow**
- **Inputs from non-time-resolved data.** PIV means (fitted four-tanh profiles) are enough for KH and GJM predictions. For the GJM, use the measured cross-section at the resonant station, not an idealised rectangle (p. 18–20). The station rule (x where the screech SPOD mode peaks) needs time-resolved schlieren, or a POD-pair amplitude from PIV in its place (my suggestion).
- **Time-resolved validation.** SPOD of high-speed schlieren gives the tone map (Fig. 24) and the station. k_s1 and k_s2 come from an FFT of the smoothed mean; report the window and field length, which the paper does not.
- **Cost guidance.** For KH-only questions (convection speed, most-amplified St, wavelength for phase-averaging or k_x filtering of POD/SPOD modes) a planar or 1-D model is adequate for AR ≥ 2 (p. 12, 21). The peak-growth St_h is independent of AR (≈ 0.41 → 0.31 from NPR 2.1 to 5.0, p. 8), a quick check for SPOD peaks of non-screech flapping. Growth rates, and anything integrated in x such as wavepacket amplitude, need the 2D model below AR 4.
- **Intermittency, switching and the SPOD → reconstruction → HPOD pipeline.**
  - The paper is stationary and frequency-only. Its main conclusion is still relevant to switching: band edges, which decide whether a loop can exist, are the quantity reduced models get wrong (p. 21).
  - A test: reconstruct each AR 2 tone band from SPOD, track instantaneous frequency and amplitude with HPOD, and check whether a loop dies when its instantaneous frequency approaches the 2D PIV-based band edge. Per-state short-time mean flows, as in [Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), would give per-state base flows for the 2D model (my suggestion).
  - Fig. 24's lower ridge sits near the PIV branch point (lower band edge) at NPR 2.5 and 4.1 by my conversion. That would make it a marginal loop there, a candidate for intermittency.

**Modelling and the PyFR staging LES**
- The round-jet LES (`Simulations/PyFR_Staging_Continuation/`) needs no dimensional reduction, but two lessons carry over:
  1. Model the G-JM on the LES mean at the station where the screech SPOD mode peaks (Table 3 rule), not on an idealised profile. Band edges move far more with the measured cross-section than with δ inside a tanh family (p. 19, 25).
  2. A model that is right on frequency can still be useless for staging limits if its bands are too wide (p. 20–21).
- For predicting where A1 and A2 start and stop as NPR is stepped, compute finite-thickness, axisymmetric (0, n_r) GJM bands on each converged LES mean and check them against the switch NPRs. This is our inference, not tested in the paper.
- A rectangular or elliptical PyFR case would need the 2D cross-plane model for its GJM below AR 4. It could also test whether the far-field domain size moves the 2D branch point.

**Rocket noise.** Little direct bearing: launch-vehicle nozzles are round. The axisymmetric-reduction result (27–38 % KH errors even for a square jet, p. 14) is a caution against modelling non-round or clustered-nozzle plumes by an equivalent round jet in wavepacket-based noise models (our inference).

**Items to verify against the PDF**
1. St_h (and St_D, St_LSA) definitions, especially the velocity scale. As printed, eq. 14's factor equals 1 if M∞ = U_j/a∞ (p. 5, 20).
2. Whether the PIV base flow (AIAA 2024-3144, C-D sharp-throat nozzle?) and the schlieren tones and k_s (Mazharmanesh 2025, convergent nozzle) come from different nozzles. The paper says only "different datasets" (p. 19).
3. Fig. 24: 2D k_s1 triangles seem absent at NPR 3.3 and 3.7 (zoomed rendering), so the text's "capturing both the screech frequencies and the mode-staging frequencies" may overstate the 2D result (p. 20).
4. The axisymmetric "maximum" errors (27 %, 38 %) seem to be for AR 1. Fig. 16 shows α_i lower bounds near −48 % at AR 4–6 (read) (p. 14–15).
5. The definition of D (area-equivalent assumed; supported by the Fig. 9 eigenvalue check), the far-field boundary conditions, the temperature/density base-flow profiles, the planar Nz used, and the k_s smoothing and window are not stated.
6. The GJM convergence test varies resolution only (80 × 80 vs 100 × 100, AR 4), not the y/D = z/D = 40 domain (p. 24).
7. All Fig. 12, 16, 21, 23 and 24 values are read from figures.
8. The missing overbars in the first rows of eq. A2 (p. 22).

**Candidates for `/add-paper`:** Tam & Thies 1993 (rectangular vortex-sheet instability, JFM 248); Morris & Bhat 1995 (elliptic jet stability); Nogueira, Beekman, Weightman & Edgington-Mitchell 2023 (AIAA 2023-4488, the rectangular tanh base flow); Nogueira, Weightman & Edgington-Mitchell 2024 (AIAA 2024-3144); Liang et al. 2023 (LES of AR 2, AR 5 and planar underexpanded jets, AIP Adv.); Gojon, Bogey & Marsden 2016 (planar impinging LES, JFM 808); Webb et al. 2023 (empirical twin rectangular closure model, AIAA J. 61); Karnam et al. 2023, 2025 (square-jet instability); Wu, Lele & Jeun 2020 (rectangular screech LES); Rodriguez 2021 (twin-jet wavepackets, D2 labels); Edgington-Mitchell 2019 (resonance review).
