---
key: "tan-2019-correlation-analysis-piv-screeching-jets"
title: "Correlation Analysis of High Resolution Particle Image Velocimetry Data of Screeching Jets"
authors: ["Tan, D. J.", "Honnery, D.", "Kalyan, A.", "Gryazev, V.", "Karabasov, S. A.", "Edgington-Mitchell, D."]
year: 2019
type: "article"
venue: "AIAA J. 57(2), 735–748"
bib: {"journal": "AIAA Journal", "volume": "57", "number": "2", "pages": "735--748"}
doi: "10.2514/1.J057041"
arxiv: ""
pdf: "jet-noise-mechanisms/Tan-EtAl_2019_Correlation-Analysis-Of-High-Resolution-Particle-Image-Velocimetry-Data-Of-Screeching.pdf"
version: "accepted-manuscript"
unverified: ["year, volume 57(2) and pages 735–748 from memory; not printed in this accepted manuscript (PDF dated 30 Oct 2018)", "DOI inferred from the original file name aiaaj-j057041 (AIAA manuscript J057041); not printed in the PDF"]
group: true
facility: "Shock Lab group facility (LTRAC Supersonic Jet Facility)"
data: ["PIV"]
methods: ["statistics", "coherence", "POD", "acoustic-analogy"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["BBSAN", "mixing-noise", "screech", "helical", "shock-cells", "Mach-disk", "coherent-structures"]
params: {"NPR": "3.4, 4.2", "M_j": "1.45, 1.59", "D": "15 mm", "D_j": "16.02, 16.73 mm", "Re": "8.51×10⁵, 1.06×10⁶ (Re_j)", "U_e": "310 m/s (sonic exit)", "t/D": "0.33 (5 mm lip)", "TR": "≈1 (T₀ ≈ 288 K)", "x/D": "1–9 along the lip line y/D = 0.5"}
topics: ["jet-noise-mechanisms", "shock-cell-models", "diagnostics-and-facilities"]
related: ["edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "wong-2021-wavepacket-modelling-bbsan", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "tan-2015-bos-density-axisymmetric-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "nogueira-2021-wavepacket-modulation-shock-containing-jets", "ray-2005-instability-wave-shock-cell-interaction-sound"]
cites: ["edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "mitchell-2013-near-field-structure-underexpanded-elliptic-jets", "tam-1982-shock-associated-noise-cd-nozzles", "tan-2017-broadband-velocity-fluctuations-screeching-jets"]
summary: "PIV of C-mode jets (M_j 1.45, 1.59): POD-filtered lip-line integral scales give Mach-independent c_L for k^{3/2}/ε and k^{1/2}D_j/V₁ BBSAN and mixing-noise source models"
---
# Correlation Analysis of High Resolution Particle Image Velocimetry Data of Screeching Jets

- **Authors:** D. J. Tan (PhD student, LTRAC, Monash), D. Honnery (Monash), A. Kalyan and V. Gryazev (PhD students, Queen Mary University of London), S. A. Karabasov (Reader in Computational Modelling, QMUL), D. Edgington-Mitchell (Senior Lecturer, LTRAC, Monash) (p. 1–2). This is Shock Lab group work (Edgington-Mitchell), done with the QMUL group that develops the RANS-based BBSAN model being calibrated.
- **Source:** accepted manuscript of the AIAA Journal paper (manuscript J057041), 40 pp., "American Institute of Aeronautics and Astronautics" footer on every page; the PDF was generated on 30 Oct 2018. No year, volume, pages or DOI are printed. The volume, issue, pages and year in the frontmatter are from memory and the DOI is inferred from the file name, so all are in `unverified`. Funded by the Australian Research Council, with computing from R@CMon/NeCTAR and support from QMUL (p. 35).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/jet-noise-mechanisms/Tan-EtAl_2019_Correlation-Analysis-Of-High-Resolution-Particle-Image-Velocimetry-Data-Of-Screeching.pdf` (index key `jet-noise-mechanisms/Tan-EtAl_2019_Correlation-Analysis-Of-High-Resolution-Particle-Image-Velocimetry-Data-Of-Screeching.pdf`, 40 pp., accepted manuscript). Page refs are the manuscript's "n of 40" numbers, which equal PDF page numbers; they are **not** the journal pages. The PDF opens only through `pdftotext`/`pdftoppm`. Eqs 2–20, the RMSE and Δ definitions, Tables 1–5 and Figs 2–5, 9–13 and 15 were checked against rendered pages. Figs 14–15 sit after the reference list (p. 39–40).
- **Companion papers:** the POD filtering and the sensitivity study come from Tan, Soria, Honnery & Edgington-Mitchell 2017, "Novel method for investigating broadband velocity fluctuations in axisymmetric screeching jets", AIAA J. 55(7), 2321–2334 (ref. [22], being indexed in parallel). A sibling paper by Tan et al. on equivalent-source reconstruction for BBSAN is also being indexed. The quasi-normality check is Markesteijn et al. 2017 (AIAA 2017-3029, ref. [28]).
- **Tags:** acoustic analogy, Goldstein generalised acoustic analogy, Lighthill, RANS-informed jet noise prediction, BBSAN, mixing noise, Morris & Miller 2010 BBSAN model, Kalyan & Karabasov 2017 mixed-scale (two-time-scale) model, Tam & Auriault fine-scale model, Karabasov et al. 2010 LES-informed coefficients, two-point space–time velocity correlation, second- and fourth-order correlations, integral length scale, functional (turbulence) scales k^{3/2}/ε and k^{1/2}D_j/V̄₁, proportionality coefficients c_L, anisotropy c_L(2)/c_L(1), large-eddy turnover time, POD-based triple decomposition, coherent vs random fluctuations, screech filtering, helical C mode, lip line, dissipation from planar PIV, axisymmetric turbulence assumption, quasi-normality, RMSE of length-scale models, Mach disk, shock reflection points

## Summary
The paper tests whether the turbulence length scales used in RANS-based acoustic-analogy models of broadband jet noise can be written as fixed multiples of simple local "functional" scales (p. 1, 5–6). It uses 8500 non-time-resolved planar PIV fields for each of two screeching, underexpanded, unheated jets from a 15 mm convergent nozzle at M_j 1.45 (NPR 3.4) and 1.59 (NPR 4.2), both in the helical C mode (p. 13–16). The screech motion is removed with the group's POD-pair triple decomposition (Tan et al. 2017), leaving a "random" field (p. 16–18). Second-order (BBSAN) and fourth-order (mixing-noise) integral length scales are computed from two-point spatial correlations along the lip line y/D = 0.5 for 1 < x/D < 9. They are compared with L̂ ∝ k^{3/2}/ε (dissipation time scale, Morris & Miller) and L̂ ∝ k^{1/2}D_j/V̄₁ (large-eddy convection time scale) (p. 11–13, 19, 23–26). For the random fluctuations the proportionality coefficients agree between the two Mach numbers within 0–9.5%, against up to 30% for the total fluctuations, and both models track the integral scales with a stated RMSE below 3% (Tables 3–4, p. 26, 28–29, 31–32). Two other results: the anisotropy ratio is about 0.5 rather than the 0.3 used in earlier BBSAN predictions (p. 29), and the shock-strength term of the mixed-scale model stays below 1 on the lip line, so random-turbulence dissipation dominates there (Fig. 15, p. 33). There is no new simulation or noise prediction; the paper calibrates model inputs only.

## Key findings
- **Turbulence energy along the lip line** (Figs 3–4, p. 21–22):
  - k is small for x/D < 1 (thin shear layer, larger measurement uncertainty), so the analysis starts at x/D = 1 (p. 22, 24).
  - Total k/V_e² rises to about 0.065 by x/D = 10 at M_j 1.45 and about 0.05 at 1.59. The coherent part is about 0.01–0.017 at 1.45 but below about 0.01 at 1.59, consistent with the stronger screech at M_j 1.45 (Fig. 3, read from figure; p. 13).
  - Coherent and random k are roughly **in anti-phase**, clearest at the shock reflection points at M_j 1.45: coherent energy falls and random energy rises there. The coherent dissipation (two orders smaller, ×10⁻⁴ against ×10⁻² in εD_j/V_j³) mirrors this, which the authors read as transfer from large to small scales (p. 22).
  - Filtering the coherent part also removes some large-scale fluctuations that contribute to BBSAN (p. 22).
- **Length scales** (Figs 5–8, p. 23–25):
  - The second-order streamwise scale of the transverse velocity, L₂₂⁽¹⁾, matters most for BBSAN in its dominant 90° direction (p. 24).
  - Total-fluctuation scales grow roughly linearly with x, **modulated at the shock-cell period**. The functional scales show a similar modulation but out of phase, small where the integral scales are large (p. 24). At M_j 1.45, L₂₂⁽¹⁾/D rises from about 0.05 to about 0.2–0.27 by x/D ≈ 6–9 (read from Fig. 5).
  - Random-fluctuation scales are smaller (L₂₂⁽¹⁾/D reaches about 0.13 at x/D = 9 for M_j 1.45, read from Fig. 6) and much less modulated. The functional scales barely change, because filtering lowers k only slightly for x/D > 4 and leaves ε almost unchanged (p. 24–25).
  - Fourth-order scales (L₁₁₁₁⁽¹⁾) grow linearly with no significant modulation and are smaller than the second-order ones (p. 25).
  - In the random field, L₁₁⁽¹⁾ and L₁₁⁽²⁾ have local maxima **at the shock reflection points**, and the functional scales follow them. Tan et al. (2017) missed this modulation because they took profiles along the shear-layer centre, which the radial shock motion smears (Fig. 13, p. 32–33). L₂₂ and the fourth-order scales are weakly modulated, so the models miss the reflection points there (p. 33).
- **Proportionality coefficients** (Tables 3–4, Figs 9–10, p. 25–29):
  - Total fluctuations: the second-order coefficients differ by 3–30% between Mach numbers (k^{3/2}/ε) and 7–15% (k^{1/2}D_j/V̄₁), because of the strong shock modulation of the total scales. Fourth-order coefficients differ by 0–10% (p. 26, 28).
  - Random fluctuations: the second-order discrepancies drop to 1.6–7.4%; the fourth-order ones stay at 0–9.5%. The authors call both sets "nearly constant" across Mach number (p. 26, 28–29).
  - Variation between the Mach numbers is of the order of the RMS dispersion along x. No screech-amplification effect is visible in the coefficients at the louder M_j 1.45 (p. 28–29).
  - The authors expect the random-field values to apply to underexpanded non-screeching jets in a similar range, since coefficients are usually fixed per operating regime (p. 29).
- **Anisotropy** (p. 29–30): axial scales are the largest. c_L⁽²⁾/c_L⁽¹⁾ ≈ 0.5 is suggested for both models, against 0.3 used in earlier BBSAN predictions with and without screech (Morris & Miller 2010; Kalyan & Karabasov 2017), which were fitted to one observer and one condition. For the 22, 2222 and 1212 components c_L⁽¹⁾ ≈ c_L⁽²⁾, about equal to c_{L11}⁽²⁾ (p. 29–30). (From Table 3, random: 0.29/0.62 = 0.47 and 0.44/0.93 = 0.47 for the 11 component; for 1111, Table 4 gives 0.24/0.38 = 0.63 and 0.37/0.60 = 0.62; my arithmetic.)
- **Comparison with fitted coefficients in the literature** (p. 12, 30):
  - Fourth-order c_{L1111} ≈ 0.39 and 0.37 (random, k^{3/2}/ε, M_j 1.45 and 1.59) match the 0.37 Karabasov et al. (2010) obtained by fitting a Gaussian mixing-noise source to LES and RANS of an isothermal M_j 0.75 jet. Far-field fitting gave 0.13 (Tam & Auriault 1999) and 0.78 (Morris & Farassat 2002) (p. 30).
  - Morris & Miller's BBSAN streamwise length coefficient was 3.25, much larger than Tam & Auriault's mixing-noise value; they put this down to BBSAN being controlled by large structures coherent over long axial distances (p. 12).
- **Fourth-order amplitude ratios** (Table 5, p. 27, 30): R₂₂₂₂/R₁₁₁₁ ≈ 0.15–0.17 and R₁₂₁₂/R₁₁₁₁ ≈ 0.22–0.24 at x/D_j = 5. These are smaller than Karabasov's LES values (0.34/0.37 at x/D_j = 4) but agree with Morris & Zaman 2010 hot-wire data (0.16/0.23) and Leib & Goldstein 2011 (0.159/0.228). The other Morris & Zaman data set (0.31/0.29) came from tripped, low-Re M 0.25 jets (p. 30).
- **Which model fits best** (Figs 11–12, p. 31–32): k^{3/2}/ε gives the smaller RMSE for L₁₁⁽²⁾, L₁₁₁₁⁽¹⁾ and L₁₁₁₁⁽²⁾; k^{1/2}D_j/V̄₁ for the rest. All errors are below 3% (about 0.9–2.1%, read from figures). A 10% change in the coefficients is expected to change predicted BBSAN (Kalyan & Karabasov 2016) and mixing-noise (Karabasov 2010) spectra by under 1% (p. 32).
- **The convection model closes the problem** (p. 13, 34–35): k^{1/2}D_j/V̄₁ needs only k, the mean axial velocity and D_j, which depends on the jet conditions (M_j, γ) and not on any far-field acoustic quantity, so a model using it is closed. It also avoids ε.
- **Shock-cell time scale is secondary on the lip line** (Fig. 15, p. 33, 40): f(τ̂₁, τ̂₂) = (τ̂₁/τ̂₂)² from the random field stays below 1 for both τ̂₁ models, so in the mixed-scale framework the dissipation of random turbulence dominates noise generation along the lip line. f peaks between reflection points, where |∂V̄₁/∂x| is largest, and is zero at them by construction (my reading of Fig. 15).

## Setup / method
- **Facility** (p. 14–15): Shock Lab group facility, called the LTRAC Supersonic Jet Facility at Monash (the lab space is not named). Compressed air at about 288 K. The mixing chamber seeds both jet and ambient air with oil particles from a Viscount 1300 smoke generator (printed "Vicount"). The plenum has a honeycomb and screens. NPR = P₀/P∞ is held within 1% (Fairchild 100 regulator), and P₀ is measured to ±0.25% (RS-461, 0–10 bar).
- **Nozzle** (p. 15): converging, D = 15 mm, sharp-edged lip 5 mm thick (t/D = 0.33), inlet-to-exit area ratio 93.44, contoured wall with 67.15 mm radius of curvature and a short parallel exit section; sonic exit with V_e = 310 m/s. This is the nozzle of [edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md) and [edgington-mitchell-2021-generation-screech-tones-shock-leakage](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md).
- **Conditions** (Table 1, p. 13): see Data tables. Both jets screech in the helical C mode (Edgington-Mitchell et al. 2014), with higher intensity at M_j 1.45 (citing Edgington-Mitchell, Honnery & Soria 2014), so more turbulence amplification is expected there (p. 13). No acoustic data, screech frequency or spectra are given. Temperature (TTR) effects are excluded (p. 12).
- **PIV** (Table 2, p. 15–16):
  - 2D-2C planar PIV, **not time-resolved**; 8500 statistically independent fields per condition. The sampling rate is not stated.
  - Two orthogonally mounted PCO 4000 cameras (4008 × 2672 px), 105 mm Micro-Nikkor lenses at f/5.6, 23 µm/px. NewWave Solo Nd:YAG at 532 nm, 1.5 mm sheet, Δt = 480 ns.
  - The two fields are stitched with an adaptive Gaussian window (Agüí & Jiménez 1987) over a 7.5% overlap, giving an effective field of 10D × 2.2D (150 × 35 mm).
  - MCCDPIV (Soria 1996), windows from IW₀ = 64 px down to IW₁ = 16 px (0.025D), 50% overlap, grid 8 px (0.013D), 182 × 1000 vectors.
  - Dynamic range: maximum resolvable velocity 830 m/s (2.6V_e), set by 25% of IW₀; minimum 6 m/s (0.02V_e), from a 0.1 ± 0.06 px minimum displacement (95% confidence).
  - Outliers are found with a dynamic mean-value operator and replaced by interpolation. Discretisation and particle-lag bias are not quantified (p. 16); particle relaxation in this facility is in Mitchell, Honnery & Soria 2011 (ref. [39]).
- **Triple decomposition by POD** (eq. 16, p. 16–18):
  - V_i = V̄_i + v_iᶜ + v_i′. The coherent part is the leading POD pair, which Tan et al. (2017) showed captures the periodic screech motion (spectral check) (p. 17).
  - Assumptions: the coherent part makes only screech and the random part only broadband noise, neglecting the mixing noise radiated by the coherent structures themselves (p. 17). Only motion periodic within the domain is removed, so non-periodic structures at the screech wavelength stay in the random part, together with any tone-induced amplification of the small scales (p. 17–18).
  - No shock-capturing treatment of discontinuities in the core is used (Hall et al. 2000), because the shear layer matters more for BBSAN and mixing noise (p. 17).
  - Sensitivity (from Tan et al. 2017, p. 18): error below 1% against full-resolution data with at least 3000 fields and SNR above 500; about 1.5% with the mesh down-sampled to 146 × 800 vectors. Screech amplification of the random fluctuations is of the order of the POD uncertainty.
  - The method needs only uncorrelated snapshots; there is no time information.
- **Correlations and integral scales** (eqs 3–8, 17, p. 8–10, 18–19):
  - Normalised two-point correlations r_ij (second order, velocities) and r_ijkl (fourth order, fluctuating stresses v″_ij = v′_iv′_j − ⟨v′_iv′_j⟩; the paper says the fluctuating variables follow Morris & Zaman 2010).
  - Only τ = 0 (spatial) scales can be computed from these data. Integration runs to the first point where r = 0.1, not the first zero crossing, to avoid low-correlation noise and the negative lobes from screech; Tan et al. 2017 found negligible differences (p. 19).
  - Only the symmetric components 11, 22, 1111, 2222 and 1212 are evaluated (p. 19–20). The 3333, 1313 and 2323 components, also dominant in round jets (p. 9), need the out-of-plane velocity.
  - The data were shown to satisfy the quasi-normality hypothesis by Markesteijn et al. 2017 (p. 18).
- **Functional scales** (eqs 9–15, 18–19, p. 10–13, 19):
  - k = ½⟨v′_iv′_i⟩ and ε = ν⟨∂v′_i/∂x_k ∂v′_i/∂x_k⟩ with ν for air at normal conditions. The missing components come from axisymmetry: ⟨v′₃v′₃⟩ ≈ ⟨v′₂v′₂⟩ and the equivalent gradient terms (eq. 19).
  - The authors note that PIV resolution sets the accuracy of ε (Atkinson et al. 2014), but do not correct for it (p. 19).
  - Coefficients c_L = L/L̂ are averaged along the lip line for 1 < x/D < 9; their RMS spread along x is quoted as ± (p. 27–28). Downstream values are cut because integral scales are underestimated near the domain edge (p. 24).
- **Mean-flow markers** (Fig. 2, p. 20–21): the sonic line comes from a local Mach number that assumes constant total temperature equal to the plenum value (André et al. 2014). Shock reflection points are where ∂V̄₁/∂x = 0 on the high-speed side of the shear layer. There is a Mach disk near x/D = 1 at M_j 1.59, followed by a subsonic region and an internal shear layer (p. 21).
- **Modelling side** (p. 4–13): no new simulation. The framework is an acoustic analogy Lp_a = s (eq. 1) with linear propagation, which the authors support by citing:
  - Freund, Lele & Moin's M 1.92 DNS, in which linear propagation of shock-associated noise is accurate to 35 nozzle radii (p. 7);
  - Morris & Miller's demonstration that the off-design jet source can be modelled separately from propagation, even though shock–vortex waves can feed back on the jet (p. 7).

  The source is the separable correlation model of eq. 2 (Ribner; Morris & Miller): exponential in time, Gaussian in convected streamwise and transverse separation. The authors state its limits:
  - it cannot represent the slowly decaying, oscillating negative correlations from screech and large structures, so the axial length scale is an empirical approximation (p. 8);
  - it could be improved with a fitted negative-lobe function (Karabasov 2010) or multiple scales (Morris 2012) (p. 8).

  Kalyan & Karabasov's mixed-scale model adds the shock time scale τ̂₂ ∝ |∂V̄₁/∂x₁|⁻¹ through the power law f = (τ̂₁/τ̂₂)^α. With α = 2, f > 1 raises τ̂_s where shocks are strong; α = 0 recovers Morris & Miller (p. 10–11). In the original models the coefficients are fitted to sideline far-field spectra at a single condition (p. 5, 11).

## Key equations
Checked against rendered pages 8–13, 19–20 and 28.

- **Acoustic analogy** (eq. 1, p. 6): $\mathcal L\,p_a(\mathbf y,t)=s(\mathbf y,t)$.
- **Source correlation model** (eq. 2, p. 8):
  $$R^v(\mathbf y,\boldsymbol\eta,\tau)=R^v(\mathbf y,0,0)\,e^{-|\tau|/\tau_s}\,e^{-(\xi-\bar v_c\tau)^2/L^{(1)2}}\,e^{-(\eta^2+\zeta^2)/L^{(2)2}}$$
  with η = (ξ, η, ζ) the separation and v̄_c the convection velocity.

  > The printed transverse exponent reads $(\eta^2+\zeta^2)^2/L^{(2)2}$, which is dimensionally inconsistent; the form above (squared separation over squared length) is my reconstruction and the usual Morris–Miller form. Verify against the PDF (p. 8).
- **Correlation coefficients** (eqs 3–4, p. 8–9):
  $$r^v_{ij}(\mathbf y,\boldsymbol\eta,\tau)=\frac{\langle v_i'(\mathbf y,t)\,v_j'(\mathbf y+\boldsymbol\eta,t+\tau)\rangle}{\sqrt{\langle v_i'^2\rangle(\mathbf y)\,\langle v_j'^2\rangle(\mathbf y+\boldsymbol\eta)}},\qquad r^v_{ijkl}=\frac{\langle v_{ij}''(\mathbf y,t)\,v_{kl}''(\mathbf y+\boldsymbol\eta,t+\tau)\rangle}{\sqrt{\langle v_{ij}''^2\rangle(\mathbf y)\,\langle v_{kl}''^2\rangle(\mathbf y+\boldsymbol\eta)}}$$
- **Integral scales** (eqs 5–8, p. 9–10): $\tau_s=\int_0^\Lambda r^v_{ij}(\mathbf y,\boldsymbol\eta=0,\tau)\,d\tau$, $L^{(\phi)}_{ij}=\int_0^\Lambda r^v_{ij}(\mathbf y,\boldsymbol\eta,\tau=0)\,d\eta$, and the same with r_ijkl for τ_ijkl,s and L_ijkl^(φ); φ = 1 streamwise, 2 radial. The upper limit Λ is where $r^v(\mathbf x,\boldsymbol\eta=\Lambda,\tau=0)=0.1$ (eq. 17, p. 19).
- **Mixed-scale time scale** (eqs 9–11, p. 10–11):
  $$\hat\tau_2\sim\left|\partial\bar V_1/\partial x_1\right|^{-1},\qquad \hat\tau_s=c_\tau\hat\tau_1\cdot\begin{cases}f(\hat\tau_1,\hat\tau_2), & f>1\\ 1, & \text{else}\end{cases},\qquad f=\left(\frac{\hat\tau_1}{\hat\tau_2}\right)^{\alpha}$$
  α = 0 for Morris & Miller 2010, α = 2 for the Kalyan & Karabasov 2017 mixed-scale model.
- **Functional length scales** (eqs 12–13, p. 11): $\hat L^{(1)}=c_{L^{(1)}}\sqrt k\,\hat\tau_s$, $\hat L^{(2)}=c_{L^{(2)}}\hat L^{(1)}$.
- **Two choices of τ̂₁** (eqs 14–15, p. 12–13): $\hat\tau_1\sim k/\epsilon$ (dissipation), $\hat\tau_1\sim D_j/\bar V_1$ (large-eddy turnover). With f ≤ 1 these give L̂ ∝ k^{3/2}/ε and L̂ ∝ k^{1/2}/(V̄₁/D_j).
- **Triple decomposition** (eq. 16, p. 17): $V_i=\bar V_i+v_i^c+v_i'$.
- **TKE and dissipation** (eqs 18–19, p. 19): $k=\tfrac12\langle v_i'v_i'\rangle$, $\epsilon=\nu\langle\partial v_i'/\partial x_k\,\partial v_i'/\partial x_k\rangle$; axisymmetry gives $\langle v_2'v_2'\rangle\approx\langle v_3'v_3'\rangle$, $\langle\partial_j v_2'\partial_j v_2'\rangle\approx\langle\partial_j v_3'\partial_j v_3'\rangle$, $\langle\partial_2 v_i'\partial_2 v_i'\rangle\approx\langle\partial_3 v_i'\partial_3 v_i'\rangle$.
- **Coefficient** (eq. 20, p. 19): $c_{L^{(\phi)}}=L^{(\phi)}/\hat L^{(\phi)}$.
- **Error measures** (unnumbered, p. 20 and p. 28): $\mathrm{RMSE}=\sqrt{\overline{(L_i-\hat L_i)^2}}\,/L_i$ (as a percentage of the local integral scale) and $\Delta(c_L)=|c_L(M_j{=}1.45)-c_L(M_j{=}1.59)|/\mu(c_L)$. I checked Δ against Table 3, for example (0.67 − 0.65)/0.66 = 3.03%.

> Notation is overloaded: in eq. 13 c_L⁽²⁾ is the anisotropy ratio L̂⁽²⁾/L̂⁽¹⁾, but in Tables 3–4 and eq. 20 c_L⁽²⁾ is L⁽²⁾ divided by the functional scale directly, and the anisotropy is obtained as the ratio c_L⁽²⁾/c_L⁽¹⁾ (p. 29). In Tables 3–4, c_τ is effectively absorbed into c_L (functional scales are k^{3/2}/ε and k^{1/2}D_j/V̄₁ with no separate c_τ); this is my reading.

## Data tables
**Jet conditions** (Table 1, p. 13):

| M_j | NPR | D_j (mm) | Re_j (×10⁵) |
|---|---|---|---|
| 1.45 | 3.4 | 16.02 | 8.51 |
| 1.59 | 4.2 | 16.73 | 10.6 |

My check: isentropic expansion from a sonic exit gives NPR 3.42 and 4.19, and D_j/D = 1.070 and 1.115 (16.04 and 16.72 mm), consistent with the table.

**PIV parameters** (Table 2, p. 15): vectors 182 × 1000; IW₀ 64 px (0.10D); IW₁ 16 px (0.025D); grid 8 px (0.013D); depth of field 2.4 mm (0.17D); sheet 1.5 mm (0.1D); Δt 480 ns; FOV 150 × 35 mm (10D × 2.2D); maximum velocity 830 m/s (2.6V_e); minimum 6 m/s (0.02V_e).

> My check: 25% of IW₀ is 16 px × 23 µm/px over 480 ns = 767 m/s, not 830 m/s; 2.4 mm/15 mm is 0.16D, not 0.17D. Small, but the magnification may differ from 23 µm/px.

**Second-order proportionality coefficients** (Table 3, p. 26), mean ± RMS dispersion along 1 < x/D < 9 on y/D = 0.5:

| Model | Coefficient | Total 1.45 | Total 1.59 | μ | Δ | Random 1.45 | Random 1.59 | μ | Δ |
|---|---|---|---|---|---|---|---|---|---|
| k^{3/2}/ε | c_{L11}⁽¹⁾ | 0.67 ± 0.19 | 0.65 ± 0.11 | 0.66 | 3.03% | 0.62 ± 0.14 | 0.61 ± 0.08 | 0.62 | 1.63% |
| | c_{L11}⁽²⁾ | 0.40 ± 0.08 | 0.33 ± 0.03 | 0.37 | 19.2% | 0.29 ± 0.03 | 0.28 ± 0.01 | 0.29 | 3.51% |
| | c_{L22}⁽¹⁾ | 0.42 ± 0.15 | 0.31 ± 0.05 | 0.37 | 30.1% | 0.29 ± 0.06 | 0.27 ± 0.02 | 0.28 | 7.14% |
| | c_{L22}⁽²⁾ | 0.53 ± 0.20 | 0.40 ± 0.06 | 0.47 | 28.0% | 0.28 ± 0.05 | 0.26 ± 0.05 | 0.27 | 7.41% |
| k^{1/2}/(V̄₁/D_j) | c_{L11}⁽¹⁾ | 1.18 ± 0.21 | 1.32 ± 0.17 | 1.25 | 11.2% | 0.92 ± 0.13 | 0.94 ± 0.11 | 0.93 | 2.15% |
| | c_{L11}⁽²⁾ | 0.72 ± 0.14 | 0.67 ± 0.09 | 0.70 | 7.19% | 0.43 ± 0.08 | 0.45 ± 0.06 | 0.44 | 4.55% |
| | c_{L22}⁽¹⁾ | 0.74 ± 0.21 | 0.64 ± 0.12 | 0.69 | 14.5% | 0.44 ± 0.07 | 0.42 ± 0.06 | 0.43 | 4.65% |
| | c_{L22}⁽²⁾ | 0.92 ± 0.19 | 0.81 ± 0.12 | 0.87 | 12.7% | 0.42 ± 0.08 | 0.41 ± 0.06 | 0.42 | 2.41% |

**Fourth-order proportionality coefficients** (Table 4, p. 26):

| Model | Coefficient | Total 1.45 | Total 1.59 | μ | Δ | Random 1.45 | Random 1.59 | μ | Δ |
|---|---|---|---|---|---|---|---|---|---|
| k^{3/2}/ε | c_{L1111}⁽¹⁾ | 0.42 ± 0.10 | 0.41 ± 0.07 | 0.42 | 2.41% | 0.39 ± 0.08 | 0.37 ± 0.04 | 0.38 | 5.26% |
| | c_{L1111}⁽²⁾ | 0.25 ± 0.04 | 0.23 ± 0.03 | 0.24 | 8.33% | 0.25 ± 0.04 | 0.23 ± 0.02 | 0.24 | 8.33% |
| | c_{L2222}⁽¹⁾ | 0.21 ± 0.07 | 0.19 ± 0.03 | 0.20 | 10.0% | 0.21 ± 0.05 | 0.20 ± 0.03 | 0.21 | 4.88% |
| | c_{L2222}⁽²⁾ | 0.24 ± 0.05 | 0.22 ± 0.04 | 0.23 | 8.70% | 0.22 ± 0.04 | 0.21 ± 0.02 | 0.22 | 4.65% |
| | c_{L1212}⁽¹⁾ | 0.29 ± 0.08 | 0.26 ± 0.05 | 0.28 | 10.9% | 0.25 ± 0.06 | 0.23 ± 0.03 | 0.24 | 8.33% |
| | c_{L1212}⁽²⁾ | 0.26 ± 0.05 | 0.24 ± 0.03 | 0.25 | 8.00% | 0.25 ± 0.05 | 0.23 ± 0.03 | 0.24 | 8.33% |
| k^{1/2}/(V̄₁/D_j) | c_{L1111}⁽¹⁾ | 0.74 ± 0.11 | 0.82 ± 0.10 | 0.78 | 10.3% | 0.59 ± 0.11 | 0.60 ± 0.08 | 0.60 | 1.68% |
| | c_{L1111}⁽²⁾ | 0.45 ± 0.08 | 0.46 ± 0.05 | 0.46 | 2.20% | 0.37 ± 0.06 | 0.37 ± 0.04 | 0.37 | 0.00% |
| | c_{L2222}⁽¹⁾ | 0.39 ± 0.07 | 0.37 ± 0.05 | 0.38 | 5.26% | 0.34 ± 0.05 | 0.32 ± 0.03 | 0.33 | 6.06% |
| | c_{L2222}⁽²⁾ | 0.45 ± 0.09 | 0.43 ± 0.06 | 0.44 | 4.55% | 0.33 ± 0.05 | 0.30 ± 0.03 | 0.32 | 9.52% |
| | c_{L1212}⁽¹⁾ | 0.51 ± 0.10 | 0.52 ± 0.08 | 0.52 | 1.94% | 0.37 ± 0.06 | 0.37 ± 0.05 | 0.37 | 0.00% |
| | c_{L1212}⁽²⁾ | 0.48 ± 0.09 | 0.48 ± 0.06 | 0.48 | 0.00% | 0.37 ± 0.06 | 0.37 ± 0.04 | 0.37 | 0.00% |

**Fourth-order amplitudes relative to R₁₁₁₁** (Table 5, p. 27; caption says along y/D_j = 0.5):

| Source | M_j | x/D_j | R₂₂₂₂ | R₁₂₁₂ |
|---|---|---|---|---|
| This paper, total | 1.45 / 1.59 | 5.0 | 0.16 / 0.17 | 0.24 / 0.24 |
| This paper, random | 1.45 / 1.59 | 5.0 | 0.15 / 0.15 | 0.22 / 0.23 |
| Karabasov et al. 2010 (LES) | 0.75 | 4.0 / 6.0 | 0.34 / 0.24 | 0.37 / 0.31 |
| Morris & Zaman 2010 (AIAA 2010-3781) | 0.25 | 5.0 | 0.31 | 0.29 |
| Morris & Zaman 2010 (JSV) | 0.25 | 5.0 | 0.16 | 0.23 |
| Leib & Goldstein 2011 | 0.5, 0.9, 1.4 | — | 0.159 | 0.228 |

**Shock reflection points** (Fig. 2, p. 20; read by me from vertical lines at ∂V̄₁/∂x = 0 on the high-speed side of the shear layer, ±0.03D):

| M_j | Reflection points x/D | Intervals (D) |
|---|---|---|
| 1.45 | 1.51, 2.95, 4.40, 5.69, 6.97, 8.03, 9.02 | 1.51, 1.44, 1.45, 1.29, 1.28, 1.06, 0.99 |
| 1.59 | 1.70, 3.32, 5.02, 6.61, 8.09, 9.43 | 1.70, 1.62, 1.70, 1.59, 1.48, 1.34 |

For M_j 1.45 these agree within 0.06D with the reflection points read for the same NPR 3.4 rig in [edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md) (1.50, 2.95, 4.35, 5.70, 6.95, 8.0, 9.1). The mean over the first three cells, 1.47D (M_j 1.45) and 1.67D (M_j 1.59), compares with Prandtl–Pack 1.306√(M_j²−1)·D_j = 1.47D and 1.80D (my arithmetic). Pack overpredicts the Mach-disk jet by about 7%.

## Figures worth remembering
- **Fig. 2 (p. 20):** mean axial and transverse velocity for both jets with the sonic line and reflection points; the Mach disk and inner shear layer at M_j 1.59.
- **Fig. 3 (p. 21):** lip-line k for total, coherent and random parts; the coherent–random anti-phase at the reflection points.
- **Fig. 4 (p. 22):** lip-line dissipation, coherent part on a ×10⁻⁴ axis.
- **Figs 5–8 (p. 23–24):** L₂₂⁽¹⁾ and L₁₁₁₁⁽¹⁾ for total and random fields against both functional scales; shock modulation of the total second-order scale.
- **Figs 9–10 (p. 25, 27):** coefficient scatter with error bars for total and random fields; the random markers for both Mach numbers overlap.
- **Figs 11–12 (p. 31):** RMSE per component and model.
- **Figs 13–14 (p. 32, 39):** random length-scale distributions with the best model for each component.
- **Fig. 15 (p. 40):** f(τ̂₁, τ̂₂) along the lip line for both τ̂₁ choices.

## Notation
- V̄_i, v_iᶜ, v_i′: mean, coherent (leading POD pair) and random velocity; v″_ij: fluctuating stress; i = 1 axial, 2 transverse, 3 out of plane.
- r_ij, r_ijkl: second- and fourth-order correlation coefficients; R^v, R_ijkl: unnormalised correlations; η = (ξ, η, ζ): separation; τ: time delay.
- L_ij^(φ), L_ijkl^(φ): integral length scales, φ = (1) streamwise separation, (2) transverse separation; Λ: integration limit (r = 0.1); τ_s: integral time scale.
- L̂, τ̂: functional (model) scales; τ̂₁: random-turbulence time scale (k/ε or D_j/V̄₁); τ̂₂ = |∂V̄₁/∂x₁|⁻¹: shock-cell time scale; f = (τ̂₁/τ̂₂)^α; c_τ, c_L⁽¹⁾, c_L⁽²⁾: proportionality coefficients; μ(c_L), Δ(c_L): mean and relative difference across the two Mach numbers.
- k: turbulence kinetic energy; ε: dissipation rate; ν: kinematic viscosity.
- M_j, D_j, Re_j: ideally expanded Mach number, diameter, Reynolds number; V_e = 310 m/s: exit velocity; D = 15 mm.
- Lip line: y/D = 0.5.

## Relevance to this project
This is Shock Lab group work on the second research area in CLAUDE.md: it calibrates the source inputs of RANS-based acoustic-analogy models of BBSAN and mixing noise, the statistical route to jet-noise prediction that complements the wavepacket route of [wong-2021-wavepacket-modelling-bbsan](wong-2021-wavepacket-modelling-bbsan.md). It reuses the group's C-mode PIV rig of [edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md) (NPR 3.4) and [edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer](edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md) (NPR 4.2).

**Reading it critically**
- **The RMSE values look inconsistent with the coefficient scatter** (my check). Tables 3–4 give the coefficient spread along x as ±13–23% of the mean for the random field (e.g. 0.62 ± 0.14), and the misfit in Figs 13–14 is visibly about 0.01–0.02D on scales of 0.05–0.25D. Yet Figs 11–12 put the RMSE at about 1–2% "of the local integral length scale". Those values match RMSE in units of D (×100) better than RMSE/L. The "<3%" headline (p. 32, 34) should not be quoted as a relative error until this is checked.
- **ε from planar PIV is a resolved-scale, filtered dissipation.** With IW₁ = 0.025D (0.37 mm), ν for air "at normal conditions" (the cold supersonic core is much colder) and axisymmetry for the missing gradients (p. 19), ε is surely underestimated by an unknown factor. The k^{3/2}/ε coefficients therefore absorb a resolution bias and are not directly transferable to a RANS ε. The k^{1/2}D_j/V̄₁ model avoids ε, which is a better argument for it than its marginally smaller RMSE.
- **The comparison with Morris & Miller's 3.25 is not like-for-like.** The PIV-based c_{L11}⁽¹⁾ = 0.62 is about 5× smaller than the coefficient fitted to far-field data (p. 12, 26). The difference may come from ε bias, c_τ conventions or which component the BBSAN model needs; the paper does not reconcile them.
- **Only length scales are tested.** The data are not time-resolved, so τ_s and v̄_c (eq. 2) are never measured. The time-scale models (eqs 14–15) are tested only through L̂ = c√k τ̂, which cannot separate c_τ from c_L.
- **"f < 1 everywhere" is borderline.** In Fig. 15 f reaches the top of the axis (1.0) just upstream of the first reflection point at both Mach numbers, which is the Mach-disk region at M_j 1.59. Its level relative to 1 also depends on the unstated constants in τ̂₁ and τ̂₂. So the conclusion that random-turbulence dissipation dominates holds for x/D ≳ 2 but is uncertain over the first cell.
- **Lip line only.** Scales and coefficients are evaluated only at y/D = 0.5 (following Morris & Zaman, p. 14). [wong-2021-wavepacket-modelling-bbsan](wong-2021-wavepacket-modelling-bbsan.md) (p. 27) puts the BBSAN source inside the plume, not on the sonic line in the shear layer as in Kalyan & Karabasov 2017 and "Tan et al. 2018". If the BBSAN source sits inside the core, the lip-line calibration may not be the relevant one.
- **What the POD filter removes.** Removing the leading pair takes out the periodic, fixed-shape part of the screech wavepacket. Cycle-to-cycle changes in shape or phase speed stay in the "random" part (p. 17–18), so the random field is not purely broadband turbulence. The coherent–random anti-phase at the reflection points (p. 22) agrees with the coherent maxima just upstream and random maxima just downstream of each reflection point in [edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md) (p. 836–837). That note warns that the random-stress peaks may partly be artificial shock-induced PIV fluctuation; this paper reads them as energy transfer and does not consider the artefact.
- **Screech amplification.** The Mach-independence of the coefficients shows only that screech does not change the *ratio* of integral to functional scales. Any tone-driven amplification sits in k itself, so this paper neither confirms nor rules out the roughly 3 dB screech-driven broadband amplification left open in [tam-1996-two-components-turbulent-mixing-noise-supersonic-jets](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) (p. 8).
- **The datasets also appear in other group papers.** Re_j 8.51 × 10⁵ at NPR 3.4 compares with 8.1 × 10⁵ in [edgington-mitchell-2021-generation-screech-tones-shock-leakage](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) and 8.6 × 10⁵ in [edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md). The field count is 8500 here against 8000 in the 2014 papers. Whether these are the same recordings is not stated.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Non-time-resolved PIV:** everything here is snapshot statistics: POD-pair triple decomposition, k, ε and spatial (τ = 0) two-point correlations. That suits the lab's PIV directly. It needs about 3000 or more independent fields for converged scales (Tan et al. 2017, p. 18) and gives no time scales or convection speeds.
- **Time-resolved data** (TR schlieren, LES, TR-PIV) would give τ_s and v̄_c and allow a frequency-resolved filter. The screech band could be reconstructed from SPOD ([nekkanti-2021-spod-reconstruction-denoising-frequency-time](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)) and subtracted, instead of a fixed POD pair. Hilbert POD of that reconstruction ([raiola-2025-hilbert-pod](raiola-2025-hilbert-pod.md)) would give the instantaneous screech amplitude, so the random-field statistics could be conditioned on strong and weak screech cycles. That would test the paper's untested assumption that screech amplification is small (p. 18, 29).
- **Shock-cell landmarks** from ∂V̄₁/∂x = 0 on the high-speed side and a constant-T₀ sonic line are cheap, reproducible markers for any mean PIV field. They are tabulated above and in `data/shock_cell_spacing.csv`.

**Modelling side and the PyFR staging LES**
- The LES (`Simulations/PyFR_Staging_Continuation/`) gives full space–time correlations. It could therefore measure what this PIV could not: τ_s, v̄_c, the out-of-plane components and the negative correlation lobes that eq. 2 omits. It could also check whether the c_L values found at M_j 1.45–1.59 hold at the A1/A2 conditions (M_j ≈ 1.09–1.14), where shocks are weak and f should be small.
- A separable Gaussian model is the input of Goldstein-type and Morris–Miller predictions, so these coefficients plus a RANS of the lab nozzle would give a BBSAN estimate to compare with wavepacket models ([wong-2021-wavepacket-modelling-bbsan](wong-2021-wavepacket-modelling-bbsan.md); [ray-2005-instability-wave-shock-cell-interaction-sound](ray-2005-instability-wave-shock-cell-interaction-sound.md)) on the same jet.

**Rocket noise**
- The statistical-source route is the physics-based alternative to SP-8072-type empirical models ([lubert-2022-supersonic-jet-noise-launch-vehicles-review](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)). These coefficients are for cold jets only: TTR is explicitly excluded (p. 12), and rockets show little BBSAN at full scale, so transfer to launch vehicles would need heated-jet data.

**Items to verify against the PDF**
1. Eq. 2 transverse exponent printed as (η² + ζ²)² (p. 8).
2. RMSE normalisation (p. 20) against the ± dispersion in Tables 3–4 and the visible misfit in Figs 13–14 (p. 31–32, 39).
3. Fig. 6 caption says "random axial length scales" but the axis and text are L₂₂⁽¹⁾, the transverse-velocity scale (p. 23–24).
4. Table 5 caption uses y/D_j = 0.5, while the text uses y/D = 0.5 (p. 27).
5. Fig. 15: f reaches 1.0 near x/D ≈ 1.5–1.7, against "values less than 1 over the streamwise domain" (p. 33, 40).
6. PIV dynamic range: 830 m/s stated against 767 m/s from 25% of IW₀ at 23 µm/px and 480 ns; depth of field 0.17D against 0.16D (Table 2, p. 15–16).
7. The sentence on p. 30 comparing second- and fourth-order coefficients with Morris & Miller and Tam & Auriault is garbled in the source text; read it in the PDF before relying on it.
8. Values read from figures: k levels (Fig. 3), length-scale levels (Figs 5–7), RMSE values (Figs 11–12) and reflection points (Fig. 2).
9. Citation details (volume, issue, pages, year, DOI) are not printed in this manuscript.

**Candidates for `/add-paper`:** Tan et al. 2017 (AIAA J. 55(7), now indexed: [tan-2017-broadband-velocity-fluctuations-screeching-jets](tan-2017-broadband-velocity-fluctuations-screeching-jets.md)); the sibling Tan et al. equivalent-source paper (now indexed: [tan-2019-equivalent-bbsan-source-reconstruction-screeching-jets](tan-2019-equivalent-bbsan-source-reconstruction-screeching-jets.md)); Morris & Miller 2010 (AIAA J. 48(12)); Kalyan & Karabasov 2017 (JSV 394); Karabasov et al. 2010 (AIAA J. 48(7)); Goldstein 2003 (JFM 488); Tam & Auriault 1999 (AIAA J. 37(2)); Morris & Zaman 2010 (JSV 329); Leib & Goldstein 2011 (AIAA J. 49(7)); Markesteijn et al. 2017 (AIAA 2017-3029); André, Castelain & Bailly 2014 (IJHFF 50, PIV of underexpanded mixing layers); Fleury et al. 2008 (AIAA J. 46(10)); Freund, Lele & Moin 2000 (AIAA J. 38(11)).
