---
key: "tan-2019-equivalent-bbsan-source-reconstruction-screeching-jets"
title: "Equivalent Shock-Associated Noise Source Reconstruction of Screeching Underexpanded Unheated Round Jets"
authors: ["Tan, D. J.", "Honnery, D.", "Kalyan, A.", "Gryazev, V.", "Karabasov, S. A.", "Edgington-Mitchell, D."]
year: 2019
type: "article"
venue: "AIAA J. (accepted manuscript)"
bib: {"journal": "AIAA Journal"}
doi: "10.2514/1.J057400"
arxiv: ""
pdf: "jet-noise-mechanisms/Tan-EtAl_2019_Equivalent-Shock-Associated-Noise-Source-Reconstruction-Of-Screeching-Underexpanded.pdf"
version: "accepted-manuscript"
unverified: ["year 2019 inferred: the PDF prints no year (LaTeX build dated 27 Oct 2018; ref. 22, the sibling paper, is cited as 'under review', AIAA J., 2018)", "DOI 10.2514/1.J057400 inferred from the manuscript filename aiaaj-j07400, not printed in the PDF", "volume, issue and pages not printed (possibly AIAA J. 57(3), 2019, from memory)"]
group: true
facility: "Shock Lab group facility (LTRAC Supersonic Jet Facility, Monash) for PIV; k–ω SST RANS (Queen Mary University of London)"
data: ["PIV", "RANS"]
methods: ["statistics", "coherence", "POD", "POD-pair", "acoustic-analogy", "pressure-from-PIV"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["BBSAN", "screech", "helical", "shock-cells", "Mach-disk", "source-location"]
params: {"NPR": "3.4, 4.2", "M_j": "1.45, 1.59", "D": "15 mm (D_j 16.02, 16.73 mm)", "Re_j": "8.51×10⁵, 10.6×10⁵ (PIV, Table 3); 7.24×10⁵, 10.5×10⁵ (RANS, Table 7)", "TR": "1 (T₀ = T∞ = 288 K)", "t/D": "0.33 (5 mm lip)", "U_e": "310 m/s (sonic exit)", "St": "Sr = 1 (source maps; definition not stated)", "screech mode": "C (helical) at both NPRs"}
topics: ["jet-noise-mechanisms", "shock-cell-models", "diagnostics-and-facilities"]
related: ["wong-2021-wavepacket-modelling-bbsan", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "edgington-mitchell-2020-waves-in-screeching-jets", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "ray-2005-instability-wave-shock-cell-interaction-sound", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "tan-2015-bos-density-axisymmetric-jets"]
cites: ["edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet", "mitchell-2013-near-field-structure-underexpanded-elliptic-jets", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "tan-2017-broadband-velocity-fluctuations-screeching-jets", "tan-2019-correlation-analysis-piv-screeching-jets"]
summary: "Morris–Miller BBSAN analogy from POD-filtered PIV and k–ω SST RANS, M_j 1.45/1.59: Sr 1 sources on sonic line just upstream of shock reflections; D_j/v̄₁ scale best"
---
# Equivalent Shock-Associated Noise Source Reconstruction of Screeching Underexpanded Unheated Round Jets

- **Authors:** D. J. Tan (PhD student), D. Honnery and D. Edgington-Mitchell (LTRAC, Dept of Mechanical and Aerospace Engineering, Monash University); A. Kalyan, V. Gryazev (PhD students) and S. A. Karabasov (School of Engineering and Materials Science, Queen Mary University of London) (p. 1–2). Supported by the Australian Research Council, R@CMon/NeCTAR and QMUL (p. 40).
- **Source:** AIAA Journal, accepted manuscript (44 pp., single column, "n of 44" page numbering). No year, volume, pages or DOI are printed; see `unverified`. The reference list cites the companion paper (ref. 22, Tan, Honnery, Kalyan, Gryazev, Karabasov & Edgington-Mitchell, "Correlation Analysis of High Resolution Particle Image Velocimetry Data of Screeching Jets", AIAA J.) as "under review" in 2018, and the method paper Tan, Soria, Honnery & Edgington-Mitchell 2017 (AIAA J., doi 10.2514/1.J055606) as ref. 21 (p. 41–42). Both are being indexed alongside this note.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/jet-noise-mechanisms/Tan-EtAl_2019_Equivalent-Shock-Associated-Noise-Source-Reconstruction-Of-Screeching-Underexpanded.pdf` (44 pp., accepted manuscript). Page refs are the manuscript's "n of 44" numbers, which equal PDF pages. Eqs. 1–25, Tables 1–9 and Figs 1, 2, 5, 8–12 were checked against rendered pages; text extraction drops all Greek letters.
- **Tags:** broadband shock-associated noise (BBSAN), Morris & Miller (2010) RANS-based acoustic analogy, linearised Euler, turbulence/shock source term, Proudman closure, separable space–time correlation model, equivalent source s(y, ω), functional (low-order) scales, integral length scales, two-time-scale (mixed-scale) model of Kalyan & Karabasov (2017), large-eddy convection time D_j/v̄₁, turbulence dissipation time k/ε, proportionality coefficients, 2D-2C PIV, POD-pair triple decomposition (screech removal), pressure from PIV (isentropic core, van Oudheusden mean-momentum integration), k–ω SST RANS, helical C mode, Mach disk internal shear layer

## Summary
The paper maps where BBSAN is generated ("equivalent sources") in two screeching cold underexpanded jets (M_j 1.45 and 1.59, C mode), using the Morris & Miller (2010) acoustic analogy evaluated with flow data instead of fitting to far-field spectra (p. 1, 7). Inputs come from 8,500 non-time-resolved 2D-2C PIV fields per case, from which the screech component is removed by subtracting the leading POD pair, and from axisymmetric k–ω SST RANS of the same nozzle (p. 7, 16, 19, 25). PIV supplies the shock pressure (reconstructed from the mean velocity), k, ε and the integral length scales of the random transverse velocity, which fix length-scale coefficients for two time-scale models (k/ε and a large-eddy convection time D_j/v̄₁). Those coefficients are then applied to the RANS (p. 22–24, 27). The source maps at Sr = 1 lie along the sonic line, concentrated just upstream of each shock reflection point and mostly in the first four to five cells, and the PIV- and RANS-based maps agree to within 2% RMS along the lip line (p. 36–39). The authors recommend the large-eddy convection scale over the standard k/ε scale for low-order BBSAN models (p. 40). No noise is predicted, because PIV gives no temporal information for the integral time scale (p. 7), so the comparison is internal (PIV against RANS) rather than against acoustics.

## Key findings
- **First BBSAN source reconstruction from PIV**, by the authors' account (p. 7).
- **Shock-cell effects barely enter the time scale** (Fig. 1, p. 20–21): the mixed-scale function f = (τ̂₁|∂V̄₁/∂x₁|)² stays below 1 almost everywhere for 1 < x/D < 9 and exceeds 1 only near the first shock reflection (x/D ≈ 1.5–1.7, read from figure). So random turbulence, not the shocks, sets τ̂_s in these jets, and the mixed-scale model reduces to the Morris–Miller form. This holds with either τ̂₁ (p. 21).
- **Length-scale coefficients from PIV** (Table 5, p. 24), fitted along the lip line for 1 < x/D < 9, with mean-square fit error below 3% (p. 24):
  - k^{3/2}/ε: c_L(1) = 0.29 ± 0.06 (M_j 1.45), 0.27 ± 0.02 (1.59), mean 0.28; c_L(2) = 0.28 ± 0.05, 0.26 ± 0.05, mean 0.27.
  - k^{1/2}/(v̄₁/D_j): c_L(1) = 0.44 ± 0.07, 0.42 ± 0.06, mean 0.43; c_L(2) = 0.42 ± 0.08, 0.41 ± 0.06, mean 0.42.
  - Streamwise and transverse coefficients are nearly equal, so the integral scales of the random transverse velocity are close to isotropic on the lip line. The coefficients vary with M_j by less than their dispersion (p. 24).
- **Earlier far-field-tuned coefficients are an order of magnitude larger** in the streamwise direction (Table 6, p. 25): Morris & Miller c_L(1) = 3.25 (screech) and 3.00 (no screech) with c_L(2) = 0.30; Kalyan & Karabasov 1.25 and 0.25. They were tuned to one condition and angle (θ = 100°, M_j 1.50 converging jet, TTR 1.00 and 2.20; p. 25). Those studies imply strong anisotropy (c_L(2) ≈ 30% of the streamwise value), unlike the PIV. The authors leave the discrepancy open (p. 25).
- **RANS against PIV** (p. 29–33):
  - Mean flow: global structure well predicted. Shock spacing drifts for M_j 1.59 beyond x/D ≈ 5. RANS grows the shear layer faster near the lip line. The M_j 1.59 jet has a Mach disk at x/D ≈ 1.2 whose internal shear layer is resolved in both, but its excitation of the shocks is neglected (p. 30).
  - k and ε on the lip line: reasonable; RANS under-predicts both for M_j 1.59 beyond x/D ≈ 1.5. PIV is unreliable in the thin shear layer near the exit. Local maxima of k and ε roughly coincide with the shock reflection points (Figs 6–7, p. 31–32).
  - Shock pressure: peak locations and amplitudes agree reasonably; the largest differences are for x/D < 1.5, where k is small (Fig. 8, p. 32–33). Peak p_s/p∞ at the first reflection is about 0.3 (M_j 1.45) and 0.6 (1.59) (read from Fig. 8).
- **RANS length scales** (Fig. 9, Table 8, p. 34–35): the large-eddy convection scale matches the PIV integral scale for x/D > 4 (M_j 1.45) and x/D > 5 (1.59). Both models under-predict for x/D < 3. The k^{3/2}/ε scale diverges downstream of x/D ≈ 5, reaching about twice the integral scale by x/D = 9 at M_j 1.45 (read from Fig. 9). Table 8 RMSE: k^{3/2}/ε 4.98% / 4.15% (L(1)/L(2), M_j 1.45) and 4.07% / 3.98% (1.59); k^{1/2}/(v̄₁/D_j) 1.67% / 1.97% and 2.42% / 2.49%. Per Kalyan & Karabasov, a 5% length-scale error means under 1% error in predicted spectra (p. 35).
- **Where the sources are** (Figs 10–11, p. 35–38):
  - The sources lie approximately along the sonic line, where shocks meet the shear-layer turbulence, concentrated just upstream of the shock reflection points (p. 36). This agrees with Savarese et al. 2013 (near-field pressure–velocity coherence maps: localised spots on the high-speed edge, most intense just upstream of the compression-wave focus) and with Kalyan & Karabasov 2017 (p. 7, 38).
  - They are mainly within the first four to five shock cells, which contradicts Norum & Seiner (1982) and Seiner & Yu (1984), who placed them near the end of the potential core. The authors explain the difference by shear-layer refraction, which makes sources appear several diameters downstream (Miller 2015), and by the screech-suppressing tabs in those studies, which change the flow (p. 38).
  - As k grows downstream, the strong-correlation regions spread transversely. Strong spots alternate with weaker regions that are first streamwise-elongated and become more isotropic as the shear layer develops (p. 38).
  - In the peak-normalised maps of Fig. 10 the strongest spot is at the second reflection point (x/D ≈ 2.85 for M_j 1.45 and ≈ 3.3 for 1.59, read from figure).
- **PIV- and RANS-modelled maps agree** (Fig. 11, p. 38): "excellent agreement" in the maps; amplitude differences on the lip line are largest at local peaks just up- and downstream of the reflections, and for M_j 1.59 are worsened by the RANS shock-spacing error (Fig. 12, p. 38–39). Local functional scales over-estimate the weaker regions between peaks (p. 40).
- **Source RMSE along the lip line** (Table 9, p. 37, 39), relative to the integral-scale map of Fig. 10: k^{3/2}/ε PIV 1.44% / 1.32% and RANS 1.01% / 1.84% (M_j 1.45 / 1.59); k^{1/2}/(v̄₁/D_j) PIV 0.81% / 0.95% and RANS 0.51% / 1.62%. The large-eddy convection scale gives the smallest error in every case, "which is not usually considered for noise modelling applications" (p. 39). The conclusions quote all sources within 2% (p. 40).
- **Screech removal leaves the broadband part** (p. 19–20): subtracting the POD pair removes only structures periodic within the field of view. Non-periodic structures at the screech wavelength stay in the random field. Tone-induced turbulence amplification is assumed to stay too, since it lives in the smaller scales. Its size is expected to be of the order of the POD uncertainty (p. 20).

## Setup / method
**Facility and jets** (Tables 3–4, p. 14–16): LTRAC Supersonic Jet Facility at Monash, a Shock Lab group facility (the paper does not name the lab space). It is the same rig and PIV dataset family as [edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md) (NPR 3.4) and [edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer](edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md) (NPR 4.2), refs 33–34.
- Compressed air at ≈ 288 K into a mixing chamber (jet and ambient seeded with Vicount 1300 oil smoke), then a plenum with honeycomb and screens. NPR held within 1% by a Fairchild 100 regulator; RS-461 transducer, ±0.25% of 0–10 bar, i.e. ±0.73% and ±0.59% at NPR 3.4 and 4.2 (p. 15–16).
- Nozzle: 15 mm round, short purely converging section, 5 mm lip, sonic exit at V_e = 310 m/s (p. 16). Ambient taken as sea level.
- Both jets screech in the helical C mode, more intensely at M_j 1.45 (p. 14). No acoustic measurements are used.

| | M_j 1.45 | M_j 1.59 |
|---|---|---|
| NPR | 3.4 | 4.2 |
| D_j (mm) | 16.02 | 16.73 |
| Re_j (×10⁵), PIV (Table 3) | 8.51 | 10.6 |
| Re_j (×10⁵), RANS (Table 7) | 7.24 | 10.5 |
| T∞, T₀ (K) | 288, 288 | 288, 288 |

> Check (mine): isentropic relations reproduce NPR 3.42 and 4.19 and D_j/D = 1.070 and 1.115, matching the tables. Re_j from ideally expanded conditions with Sutherland viscosity is 8.6 and 10.6 × 10⁵, matching Table 3, so the RANS value 7.24 × 10⁵ at M_j 1.45 looks like a typo. Verify.

**PIV** (Table 4, p. 15–17): not time-resolved; 8,500 statistically independent fields per case (p. 16).
- Two orthogonally mounted PCO 4000 cameras (4008 × 2672 px), 105 mm Micro Nikkor at f/5.6, 23 µm/px. NewWave Solo Nd:YAG, 532 nm, 1.5 mm sheet (0.1D), Δt = 480 ns, depth of field 2.4 mm (0.17D).
- Fields from the two cameras stitched by convolution with an adaptive Gaussian window over a 7.5% overlap; effective FOV 10D × 2.2D (150 × 35 mm) (p. 16).
- Soria multigrid cross-correlation (MCCDPIV), IW₀ 64 px (0.10D) to IW₁ 16 px (0.025D), 50% overlap, grid 8 px (0.013D), 182 × 1000 vectors. Maximum resolvable velocity 830 m/s (2.6V_e; 25% of IW₀), minimum 6 m/s (0.02V_e; 0.1 ± 0.06 px at 95%) (p. 16).
- Outliers by dynamic mean value operator, replaced by neighbour interpolation. Bias from discretisation and particle lag is acknowledged but not quantified (p. 17).
- Sensitivity, from Tan et al. 2017 (p. 20): integral length scales change by less than 1% with at least 3,000 fields and SNR > 500, and by about 1.5% when the mesh is down-sampled to 146 × 800 vectors.

**Screech removal by POD triple decomposition** (§IV.A.2, p. 19–20): V_i = V̄_i + v_i′ + v_i^c (eq. 21). Snapshot POD as in Tan et al. 2017; the leading pair captures the periodic C-mode motion (identified spectrally there) and is subtracted. No shock-capturing treatment of POD across shocks in the core (Hall et al. 2000), since the shear layer matters for BBSAN (p. 19). Needs only non-time-resolved snapshots and one dominant tone carried by one pair.

**Turbulence statistics from 2D-2C PIV** (eqs. 22–24, p. 21–22):
- Statistical axisymmetry supplies the missing third component and the missing gradients (eq. 22); k = ½⟨v_i′v_i′⟩ and ε = ν⟨∂v_i′/∂x_k ∂v_i′/∂x_k⟩ with ν of air "at normal conditions" (eq. 23). The authors note ε accuracy is limited by PIV resolution (Atkinson et al. 2014) and that Sutherland viscosity at the local temperature would be better (p. 22).
- Integral length scales of the random transverse velocity: correlation integrated up to the separation Λ where r = 0.1 (eq. 24), which avoids low-correlation noise and the negative lobes of screeching jets (p. 22).
- An extra time scale for the PIV-based "higher-order" source: τ̂_s ~ L^{(1)}/√k (eq. 25), i.e. the length-scale model inverted with the measured integral scale (p. 23).
- Time-scale coefficient c_τ = 1; length-scale coefficients from a linear fit of functional to integral scales on the lip line (from the companion correlation paper; p. 22).

**Shock pressure from PIV** (§IV.A.1, eqs. 13–20, p. 17–18): steady, isentropic and adiabatic flow is assumed; stagnation conditions are conserved along the 2-D mean streamlines ψ (eq. 13).
- In the potential core (closed streamlines), p from the isentropic relation with P₀ from the NPR (eq. 14), local M from the velocity and the adiabatic temperature T = T₀ − V̄²/2C_p (eq. 16), valid only when jet and ambient total temperatures are equal. Crocco–Busemann (eqs. 17–19) is given for heated jets but not used here.
- In the shear layer, the mean pressure gradient of van Oudheusden et al. (2007), with density replaced by p and T through the ideal-gas law and adiabatic flow (eq. 20), is integrated with a fourth-order finite-difference scheme between boundary conditions at the potential-core edge and the outer edge (where M = 0.01) (p. 18). The integration region is shown in Fig. 4.
- No Mach-disk treatment (Dash et al. 1985), although M_j 1.59 has one (p. 17).
- p_s = p − p∞ (eq. 5).

**RANS** (§V, Table 7, p. 25–27): second-order density-based solver (name not given) with Menter's k–ω SST, chosen for the adverse pressure gradients of supersonic jets.
- Axisymmetric half domain 62D × 20D (axial × transverse) containing the real converging nozzle geometry; 165,571 cells from adaptive refinement at the nozzle walls, exit, lip lines, shear layers and shock cells; y⁺ < 1 checked by successive runs (Fig. 3, p. 26–27).
- Boundary conditions: nozzle-inlet total conditions matched to the experiment (no near-nozzle measurements), ambient p and T at the far field, free-stream Mach 0.001 for stability, a downstream pressure outlet. Converged to residuals below about 10⁻¹³ or stagnated three or more orders below initial (p. 27).
- Post-processing: inverse-distance-weighted interpolation onto a uniform grid; ε = 0.09kω; RANS length scales use the mean PIV coefficients of Table 5 (p. 27).
- How R^v(y, 0, 0) (a transverse normal stress) is obtained from an eddy-viscosity RANS is not stated.

**Source evaluation** (§II.B, p. 11): eq. 10 with local flow properties; ū_c = local mean axial velocity on the nozzle lip line (Morris & Zaman 2010; Bridges & Wernet 2017). The shock pressure is mirrored about the nozzle exit plane to make it even, Hanning-windowed (energy correction 8/3) and Fourier transformed in x; the κ₁ integral uses Simpson's rule with Δκ₁ = 2π/L₁ (L₁ = axial domain length). The potential core is masked (p. 35–36). Maps are normalised by their peak. Sr = 1 is called the peak BBSAN frequency (p. 7, 35), with no reference or definition. The observer angle is "sideline" (transverse component f₂ᵛ, p. 9) but θ is not stated.

Three source variants (p. 35–39): (i) "PIV": integral length scales with τ_s from eq. 25 (Fig. 10, the reference); (ii) functional scales from PIV k and ε; (iii) functional scales from RANS k, ε, mean flow and shock pressure (Figs 11–12).

**Modelling side, assumptions as stated** (§II, p. 8–11). Morris & Miller's analogy (built on Tam's stochastic model) is recapped:
1. Flow split into mean, shock-cell (s), turbulence (t) and acoustic (′) parts; inviscid and non-conducting at high Re; only leading-order fluctuations kept, giving linearised Euler equations for π′ and v_i′ with sources (eqs. 1–3).
2. The turbulence/acoustic source f_iᵃ (temperature-dependent) is dropped for cold jets (Ray & Lele 2007); the dilatation source θ_i is taken to scale like f_iᵛ (p. 9).
3. f_iᵛ is the turbulence–shock cross term (eq. 4), scaled as p_s v_t/(ρ∞a∞L).
4. Its two-point correlation is closed with the Proudman isotropic form: shock pressure at the two points times the velocity correlation (eqs. 6–7). Only the component toward the observer counts (the transverse one for the sideline).
5. Mean-flow propagation effects are small in the sideline direction, so a free-space Green's function is used (eq. 8); a vector Green's function (Miller 2015) is needed when temperature effects matter.
6. Space and time separable (Ribner 1969). The correlation is exponential in time and Gaussian in convected axial and transverse separation (eq. 9). It cannot represent the strong negative correlations of screech, hence the POD filtering (p. 10).
7. Scales from local mean statistics through fixed proportionality coefficients assumed valid across jet conditions (p. 14), via Kalyan & Karabasov's two-time-scale model (eqs. 11–12, Tables 1–2).

No LES, linear stability or acoustic validation is attempted.

## Key equations
All checked against rendered pages 8–23 and 35. Equations are transcribed as printed; suspected typos are flagged below each.

- **Governing equations** (eqs. 1–3, p. 8):
  $$\frac{\partial\pi'}{\partial t}+\bar v_j\frac{\partial\pi'}{\partial x_j}+\frac{\partial v_i'}{\partial x_i}=\theta_i,\qquad \frac{\partial v_i'}{\partial t}+\bar v_j\frac{\partial v_i'}{\partial x_j}+v_j'\frac{\partial\bar v_i}{\partial x_j}+\bar a^2\frac{\partial\pi'}{\partial x_i}=f_i^{\mathrm v}+f_i^{\mathrm a},\qquad \pi=\frac1\gamma\ln\frac{p}{p_\infty}$$
- **Turbulence/shock source** (eq. 4, p. 9): $f_i^{\mathrm v}=-v_{sj}\,\partial v_{ti}/\partial x_j-v_{tj}\,\partial v_{si}/\partial x_j$, scaling $f_i^{\mathrm v}\sim p_s v_t/(\rho_\infty a_\infty L)$; shock pressure $p_s(\mathbf y)=p(\mathbf y)-p_\infty$ (eq. 5, printed as $p_\infty(\mathbf y)$).
- **Source correlation** (eqs. 6–7, p. 9):
  $$R^{\mathrm v}_{f_xf_x}(\mathbf y,\boldsymbol\eta,\tau)=\langle f_x^{\mathrm v}(\mathbf y,t)f_x^{\mathrm v}(\mathbf y+\boldsymbol\eta,t+\tau)\rangle=\frac{1}{\rho_\infty^2a_\infty^2L^2}\,p_s(\mathbf y)\,p_s(\mathbf y+\boldsymbol\eta)\,R^{\mathrm v}(\mathbf y,\boldsymbol\eta,\tau),\qquad \boldsymbol\eta=(\xi,\eta,\zeta)$$
  The paper also writes τ = t + τ₁, which reads oddly for a time separation.
- **Far-field PSD** (eq. 8, p. 10):
  $$S(\mathbf x,\omega)=\frac{\omega^2}{16\pi^2a_\infty^4|\mathbf x|^2}\int_{-\infty}^{\infty}\!\!\cdots\!\int_{-\infty}^{\infty}\frac{1}{L^{(1)2}}\,p_s(\mathbf y)\,p_s(\mathbf y+\boldsymbol\eta)\,R^{\mathrm v}(\mathbf y,\boldsymbol\eta,\tau)\,e^{\mathrm i\omega(\tau-\mathbf x\cdot\boldsymbol\eta/(xa_\infty))}\,\mathrm d\tau\,\mathrm d\boldsymbol\eta\,\mathrm d\mathbf y$$
  ρ∞ does not appear, so the prefactor should be checked against Morris & Miller (2010) before absolute use; the paper only uses normalised maps.
- **Correlation model** (eq. 9, p. 10):
  $$R^{\mathrm v}(\mathbf y,\boldsymbol\eta,\tau)=R^{\mathrm v}(\mathbf y,0,0)\,e^{-|\tau|/\tau_s}\,e^{-(\xi-\bar v_c\tau)^2/L^{(1)2}}\,e^{-(\eta^2+\zeta^2)/L^{(2)2}}$$
  Printed with $(\eta^2+\zeta^2)^2$ in the last exponent, which is dimensionally inconsistent; the form above is what eq. 10 requires.
- **Equivalent BBSAN source** (eq. 10, p. 11), the y-integrand of eq. 8 after the η and τ integrals and an axial Fourier transform of one shock-pressure factor:
  $$s(\mathbf y,\omega)=\int_{-\infty}^{\infty}\left\{\frac{R^{\mathrm v}(\mathbf y,0,0)\,L^{(2)2}}{L^{(1)}\tau_s}\,p_s(\mathbf y)\,\tilde p_s(\kappa_1,y_2,y_3)\,e^{\mathrm i\kappa_1y_1}\times\frac{\omega^2\tau_s^2\exp\!\left[-\tfrac14L^{(1)2}(\kappa_1-\omega\cos\theta/a_\infty)^2-\omega^2L^{(2)2}\sin^2\theta/(4a_\infty^2)\right]}{1+\left(1-M_c\cos\theta+\bar u_c\kappa_1/\omega\right)^2\omega^2\tau_s^2}\right\}\mathrm d\kappa_1$$
  The printed equation sets the transverse term $-\omega^2L^{(2)2}\sin^2\theta/(4a_\infty^2)$ on the baseline, as if subtracted from the numerator. My check: Fourier transforming the Gaussians of eq. 9 gives $\exp[-L^{(1)2}(\kappa_1-k_1)^2/4]\exp[-L^{(2)2}(k_2^2+k_3^2)/4]$ with $\mathbf k=\omega\mathbf x/(|\mathbf x|a_\infty)$, so both terms belong in the exponent. The τ integral of $e^{-|\tau|/\tau_s}$ gives the Lorentzian denominator with Doppler frequency $\omega(1-M_c\cos\theta)+\bar u_c\kappa_1$, $M_c=\bar u_c/a_\infty$. Constant factors (π^{3/2}, 2) are dropped. Maps show |s|.
- **Two-time-scale model** (eqs. 11–12, Table 1, p. 13):
  $$\hat\tau_s=c_\tau\hat\tau_1\cdot\begin{cases}f(\hat\tau_1,\hat\tau_2), & f>1\\ 1, & \text{else}\end{cases},\qquad f(\hat\tau_1,\hat\tau_2)=\left(\frac{\hat\tau_1}{\hat\tau_2}\right)^{\alpha}$$
  α = 0 gives Morris & Miller, α = 2 the mixed-scale model of Kalyan & Karabasov. τ̂₁ = k/ε (turbulence dissipation) or D_j/v̄₁ (large-eddy convection); τ̂₂ ∝ 1/|∂V̄₁/∂x₁| (text p. 13; the Fig. 1 legend plots (τ̂₁|∂V̄₁/∂x₁|)², p. 21).
- **Scale definitions** (Table 2, p. 14):
  $$\tau_s=\int_0^{\Lambda}r^{\mathrm v}_{22}(\mathbf y,\boldsymbol\eta=0,\tau)\,\mathrm d\tau,\quad L^{(1)}_{22}=\int_0^{\Lambda}r^{\mathrm v}_{22}(\mathbf y,\xi,\tau=0)\,\mathrm d\xi,\quad L^{(2)}_{22}=\int_0^{\Lambda}r^{\mathrm v}_{22}(\mathbf y,\eta,\tau=0)\,\mathrm d\eta;\qquad \hat L^{(1)}=c_{L^{(1)}}\sqrt k\,\hat\tau_s,\quad \hat L^{(2)}=c_{L^{(2)}}\hat L^{(1)}$$
  With c_τ = 1 the two models are $\hat L=c_L\,k^{3/2}/\epsilon$ and $\hat L=c_L\,k^{1/2}/(\bar v_1/D_j)$ (Table 5). Upper limit: $r^{\mathrm v}(\mathbf x,\eta=\Lambda,\tau=0)=0.1$ (eq. 24, p. 22). PIV time scale $\hat\tau_s\sim L^{(1)}/\sqrt k$ (eq. 25, p. 23).
- **Pressure from PIV** (eqs. 13–20, p. 17–18):
  $$\psi=\int(\bar V_1\,\mathrm dx_2-\bar V_2\,\mathrm dx_1),\qquad \frac{p}{P_0}=\Big(1+\frac{\gamma-1}{2}M^2\Big)^{-\gamma/(\gamma-1)},\qquad T=T_0-\frac{\bar V^2}{2C_p}$$
  $$T=-\tfrac12\bar V^2+C_1\bar V+C_2,\quad C_1=\frac{1-T_2/T_1}{\gamma-1}+\frac{M_a}{2},\quad C_2=\frac{T_2/T_1}{\gamma-1}+\frac{M_a^2}{2}-M_aC_1\quad\text{(Crocco–Busemann, nondimensional; } T_1,T_2,M_a\text{ undefined)}$$
  $$-\frac{\nabla p}{p}=\frac{\gamma M_\infty^2}{V_\infty^2+\frac{\gamma-1}{2}M_\infty^2\left(V_\infty^2-\bar V^2\right)}\,(\mathbf V\cdot\nabla)\mathbf V$$
  Eq. 15 is printed as $M=\sqrt{\gamma RT}$, which is the sound speed; it must mean $M=|\bar V|/\sqrt{\gamma RT}$. Eq. 20 prints the last term as "$\bar V x^2$". Eq. 20 uses the mean convective acceleration only, so the Reynolds-stress divergence is neglected in the shear layer (my observation; the paper does not discuss it).
- **Axisymmetric closure for 2D-2C PIV** (eqs. 22–23, p. 22): $\langle v_2'v_2'\rangle\approx\langle v_3'v_3'\rangle$, $\langle\partial_jv_2'\partial_jv_2'\rangle\approx\langle\partial_jv_3'\partial_jv_3'\rangle$, $\langle\partial_2v_i'\partial_2v_i'\rangle\approx\langle\partial_3v_i'\partial_3v_i'\rangle$; $k=\tfrac12\langle v_i'v_i'\rangle$, $\epsilon=\nu\langle\partial_kv_i'\,\partial_kv_i'\rangle$.
- **Error metric** (unnumbered, p. 35): $\mathrm{RMSE}=\sqrt{\overline{(L_i-\hat L_i)^2}}\,/\,L_i$, "expressed as a percentage of the local integral length scale".

## Data tables
**PIV parameters** (Table 4, p. 15): see Setup. 8,500 fields; IW₁ 0.025D; grid 0.013D; Δt 480 ns; FOV 10D × 2.2D.

**Length-scale coefficients** (Table 5, PIV, p. 24; Table 6, earlier studies, p. 25):

| Model | Source | c_L(1) | c_L(2) |
|---|---|---|---|
| k^{3/2}/ε | PIV, M_j 1.45 | 0.29 ± 0.06 | 0.28 ± 0.05 |
| k^{3/2}/ε | PIV, M_j 1.59 | 0.27 ± 0.02 | 0.26 ± 0.05 |
| k^{3/2}/ε | PIV mean | 0.28 | 0.27 |
| k^{1/2}/(v̄₁/D_j) | PIV, M_j 1.45 | 0.44 ± 0.07 | 0.42 ± 0.08 |
| k^{1/2}/(v̄₁/D_j) | PIV, M_j 1.59 | 0.42 ± 0.06 | 0.41 ± 0.06 |
| k^{1/2}/(v̄₁/D_j) | PIV mean | 0.43 | 0.42 |
| k/ε (Morris–Miller) | Morris & Miller, screech | 3.25 | 0.30 |
| k/ε (Morris–Miller) | Morris & Miller, no screech | 3.00 | 0.30 |
| k/ε (mixed scale) | Kalyan & Karabasov | 1.25 | 0.25 |

> In Table 5, c_L(2) multiplies the functional scale directly (L₂₂⁽²⁾ = c_L k^{3/2}/ε), whereas Table 2 defines L̂⁽²⁾ = c_L(2) L̂⁽¹⁾, a ratio; Table 6's 0.25–0.30 are such ratios ("about 30% of the streamwise component", p. 25). In ratio form the PIV values are c_L(2)/c_L(1) ≈ 0.96–0.98, against 0.09–0.20 for the earlier studies. So the paper's "some agreement in the absolute value of the cross-stream coefficients" (p. 25) compares different definitions (my reading). Also, if the earlier studies used c_τ ≠ 1, the comparable streamwise quantity is c_τ c_L; their c_τ is not listed.

**RMSE of RANS length scales** (Table 8, p. 33) and **source amplitudes** (Table 9, p. 37), lip line y/D = 0.5:

| Quantity | Model | M_j 1.45 | M_j 1.59 |
|---|---|---|---|
| L₂₂⁽¹⁾ (RANS) | k^{3/2}/ε | 4.98% | 4.07% |
| L₂₂⁽²⁾ (RANS) | k^{3/2}/ε | 4.15% | 3.98% |
| L₂₂⁽¹⁾ (RANS) | k^{1/2}/(v̄₁/D_j) | 1.67% | 2.42% |
| L₂₂⁽²⁾ (RANS) | k^{1/2}/(v̄₁/D_j) | 1.97% | 2.49% |
| \|s\| PIV | k^{3/2}/ε | 1.44% | 1.32% |
| \|s\| RANS | k^{3/2}/ε | 1.01% | 1.84% |
| \|s\| PIV | k^{1/2}/(v̄₁/D_j) | 0.81% | 0.95% |
| \|s\| RANS | k^{1/2}/(v̄₁/D_j) | 0.51% | 1.62% |

> Checks (mine): the text's PIV means, 1.33% and 0.86% (p. 39), do not match the table (1.38% and 0.88%). The Table 8 values cannot be relative to the local L: Fig. 9 shows the k^{3/2}/ε scale at twice the integral scale at x/D = 9 (M_j 1.45). An RMS difference over 1 < x/D < 9 expressed as a fraction of D (≈ 0.05D) would give about 5%. Likewise, ~1% source RMSE is hard to square with lip-line peak differences of 0.2–0.4 (normalised) in Fig. 12. The conclusions say the RANS scales are "within 3%" (p. 39–40), against Table 8's 4–5% and "within 5%" on p. 35.

**Shock reflection points** (PIV, read from Fig. 10, p. 35; same lines in Figs 2, 9, 11–12):

| M_j | x/D of reflection points | Spacings (D) | Mean of first four |
|---|---|---|---|
| 1.45 | 1.51, 2.95, 4.41, 5.70, 6.97, 8.03, 9.02 | 1.44, 1.46, 1.29, 1.27, 1.06, 0.99 | 1.37D (1.28D_j) |
| 1.59 | 1.72, 3.33, 5.01, 6.62, 8.10, 9.43 | 1.61, 1.68, 1.61, 1.48, 1.33 | 1.60D (1.43D_j) |

The M_j 1.45 mean agrees with L_s/D = 1.366 from the wavenumber spectrum of the same NPR 3.4 dataset ([edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md)). Pack's 1.31(M_j² − 1)^{1/2} D_j gives 1.37D_j and 1.61D_j, so the M_j 1.59 cells, which have a Mach disk, are about 11% shorter than Pack (my comparison).

## Figures worth remembering
- **Fig. 1 (p. 21):** f(τ̂₁, τ̂₂) along the lip line for both τ̂₁ models; spikes at the shock reflections but above 1 only at the first. This is the evidence that shock effects do not set the time scale.
- **Fig. 2 (p. 23):** PIV integral length scales of the random transverse velocity against both functional models (L⁽¹⁾ and L⁽²⁾ ≈ 0.02–0.13D over 1 < x/D < 9), with shock reflection points; the functional scales peak locally at each reflection.
- **Fig. 4 (p. 28):** PIV (top) against RANS (bottom) mean axial and transverse velocity, with sonic line and reflection points.
- **Fig. 5 (p. 29):** transverse profiles 0.1D upstream of each reflection: RANS shear layer slightly too wide; M_j 1.59 inner shear layer behind the Mach disk.
- **Figs 6–8 (p. 31–33):** lip-line k/V_e², εD_j/V_j³ and p_s/p∞, PIV against RANS.
- **Fig. 9 (p. 34):** RANS length scales against PIV integral scales; k^{3/2}/ε runs away downstream.
- **Fig. 10 (p. 35):** the reference source maps |s(y, ω)| at Sr = 1, on the sonic line just upstream of each reflection point.
- **Fig. 11 (p. 36):** functional-scale maps, PIV (top half) against RANS (bottom half), for both τ̂₁ models. Panel titles say "M_j = 3.4" and "4.2", which are the NPRs.
- **Fig. 12 (p. 37):** lip-line source amplitude for all variants.

## Notation
- π = ln(p/p∞)/γ; v_i, v̄_i, v_i′: velocity, mean, fluctuation; subscripts s (shock), t (turbulence); θ_i: dilatation source; f_iᵛ, f_iᵃ: turbulence/shock and turbulence/acoustic sources; f_xᵛ: component toward the observer.
- p_s: shock pressure p − p∞; p̃_s: its axial Fourier transform; κ₁: axial wavenumber; L₁: axial domain length.
- R^v, r^v: velocity correlation and coefficient; τ_s: integral time scale; L⁽¹⁾, L⁽²⁾: streamwise and cross-stream integral length scales of v₂ (L₂₂); Λ: upper integration limit (r = 0.1).
- τ̂, L̂: functional time and length scales; τ̂₁ (turbulence), τ̂₂ (shock-cell, ∝ 1/|∂V̄₁/∂x₁|); α: mixed-scale exponent; c_τ, c_L(1), c_L(2): proportionality coefficients.
- ū_c (v̄_c): convective velocity (local lip-line mean axial velocity); M_c = ū_c/a∞; θ: observer polar angle from the downstream axis; a∞: ambient sound speed.
- s(y, ω): equivalent BBSAN source; S(x, ω): far-field PSD; Sr: Strouhal number (definition not stated).
- V_e = 310 m/s: sonic exit velocity; D = 15 mm; D_j, M_j, Re_j: ideally expanded quantities; v_i^c: coherent (POD-pair) velocity.

## Relevance to this project
This is Shock Lab group work (Edgington-Mitchell is an author) on the group's C-mode PIV datasets at NPR 3.4 and 4.2, the same data as [edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md), [edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer](edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md) and the NPR 3.4 case of [edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md). It follows Tan's POD-filtering method paper (Tan et al. 2017) and the companion correlation-analysis paper, which supply the filtering and the coefficients used here. It is the statistical, RANS-based counterpart of the group's later deterministic wavepacket BBSAN model, [wong-2021-wavepacket-modelling-bbsan](wong-2021-wavepacket-modelling-bbsan.md).

**Reading it critically**
- **The validation is internal.** All agreement is PIV against RANS, or functional against integral scales, inside one modelling framework. No far-field or near-field acoustics are used, and the reference map (Fig. 10) itself uses the modelled τ_s of eq. 25 and the separable exponential–Gaussian correlation (p. 10, 23). The recommendation of the D_j/v̄₁ scale rests on matching PIV integral length scales, not on predicted noise.
- **Is Sr = 1 the sideline BBSAN peak?** (my estimate.) With f_p = u_c/[L_s(1 − M_c cos θ)] ([tam-1982](tam-1982-shock-associated-noise-cd-nozzles.md), p. 9), u_c ≈ 0.7U_j and the measured spacing above, the θ = 90° fundamental peak is at St ≈ 0.55 (M_j 1.45) and 0.49 (1.59) based on D_j and U_j. [wong-2021](wong-2021-wavepacket-modelling-bbsan.md) measured about 0.55 near 80° for a similar jet (p. 20). At θ = 90° the Lorentzian in eq. 10 selects |κ₁| ≈ ω/ū_c, roughly twice k_s1 at Sr = 1 (1.8–2.0 k_s1 for ū_c = 0.7U_j), so the maps probably weight the second shock-cell harmonic rather than the primary BBSAN hump. Sr is not defined in the paper, and θ is not stated.
- **Source location: sonic line against inside the plume.** These maps put the sources on the sonic line, strongest at the 1st–2nd reflection points and mostly within cells 1–5 (p. 36–38). [wong-2021](wong-2021-wavepacket-modelling-bbsan.md) explicitly contrasts its own source, inside the plume with two lobes per cell and strongest at cells 3–5, with "Kalyan & Karabasov 2017 and Tan et al. 2018" (Wong p. 27). The difference is built into the models: in eq. 10 the source is p_s(y) × R^v(y, 0, 0), so it can only sit where the local turbulence and the local shock pressure overlap, i.e. at the sonic line. Wong's Lighthill source uses the wavepacket, which extends into the core. Neither is checked against measured source maps. The full-scale F404 places sources at cells II–VIII, loudest at VI–VII ([mathews-2025-thesis-supersonic-jet-rocket-noise-saturn](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 32). Norum & Seiner place them near the end of the core ([norum-1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md)). This paper's refraction and tab explanation (p. 38) is plausible but untested. The open question "Where are the BBSAN sources?" on the jet-noise-mechanisms page gains a fourth, model-dependent answer.
- **Agreement with the group's flow observations.** Sources just upstream of each reflection point match where the coherent axial stress peaks in the same NPR 3.4 data, while the random stress peaks just downstream ([edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md), p. 835–837). Since the screech pair is removed here, the upstream placement comes from the shock-pressure peaks (Fig. 8) more than from the random-turbulence peaks (my reading).
- **Dissipation from PIV.** IW₁ = 0.025D ≈ 0.4 mm is far larger than the Kolmogorov scale at Re_j ≈ 10⁶, so ε from PIV is a resolved-gradient estimate. Its agreement with RANS ε (Fig. 7) may be partly fortuitous, and c_L for k^{3/2}/ε absorbs the PIV filter (my observation). The D_j/v̄₁ scale needs no gradients, which may be part of why it fits better.
- **Screech removal.** Subtracting the POD pair assumes the tone lives in one fixed spatial pair; amplitude and phase modulation of that pair are removed with it, while non-periodic structures at the same wavelength stay (p. 19–20). Whether screech amplifies the broadband turbulence (about 3 dB in far-field noise, [tam-1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) p. 8, an open question on the jet-noise page) is assumed, not measured.
- **Model–data mismatch acknowledged.** Eq. 9 cannot represent negative correlations (p. 10), and the integration cutoff at r = 0.1 (eq. 24) discards them in the data too. Isotropic Proudman closure, a free-space Green's function, the neglected dilatation term, a fixed convection velocity on the lip line and the neglected Mach-disk excitation (p. 30) are all stated.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Non-time-resolved PIV (step 1–2 route):** mean, RMS, k, ε (with an axisymmetry closure), two-point spatial correlations and integral length scales (≥ 3,000 fields, SNR > 500), POD-pair removal of the tone, and mean pressure from the mean velocity (eqs. 13–20) are all done on 8,500 uncorrelated snapshots. This is the template for building BBSAN or eddy-viscosity inputs from the lab's PIV. The density route (constant stagnation temperature, isentropic core) is the same one [wong-2021](wong-2021-wavepacket-modelling-bbsan.md) uses, and it can be checked against BOS ([tan-2015-bos-density-axisymmetric-jets](tan-2015-bos-density-axisymmetric-jets.md)).
- **What needs time-resolved data:** the integral time scale τ_s and the convection velocity, which are modelled here (eq. 25; lip-line mean velocity). TR-PIV, TR schlieren or LES would give τ_s from two-time correlations and ū_c(ω) from cross-spectral phase.
- **SPOD → reconstruction → HPOD:** with time-resolved data, SPOD can separate the screech band from the broadband more cleanly than subtracting one POD pair, and the broadband statistics (k, L, τ_s) could be computed from the residual. HPOD of a tone-band reconstruction gives the instantaneous screech amplitude, so broadband statistics conditioned on it would test the screech-amplification assumption above and the intermittency the POD-pair approach ignores (suggestion, not in the paper).
- **POD and correlations here are spatial only**, so nothing about intermittency or mode switching can be extracted.

**Modelling side and the PyFR staging LES**
- The PyFR LES (`Simulations/PyFR_Staging_Continuation/`) runs at M_j ≈ 1.1, where BBSAN is weak, but it gives everything this model has to assume: 3-D k and ε, two-time correlations (τ_s, ū_c), the mean static pressure directly (a test of the PIV pressure reconstruction, eqs. 13–20) and an FW-H far field. It could test whether c_L ≈ 0.28 (k^{3/2}/ε) and 0.43 (D_j/v̄₁) hold at low M_j, and whether the separable correlation model is adequate in a screeching jet (suggestion).
- Morris–Miller-type RANS models remain the engineering BBSAN route; the RANS here (k–ω SST, axisymmetric, about 166k cells) reproduces the shock train and lip-line turbulence well enough for that purpose except downstream of x/D ≈ 5 at M_j 1.59 (p. 30–31).

**Rocket noise.** BBSAN is reportedly absent from full-scale rocket spectra ([lubert-2022-supersonic-jet-noise-launch-vehicles-review](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 9) yet present for the afterburning F404 ([mathews-2025](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md)). The paper is cold-jet only. It points to Miller (2015) for temperature scaling with local properties and a vector Green's function (p. 11, 12), and gives Crocco–Busemann for heated-jet pressure reconstruction (p. 18). Those would be the routes to hot jets.

**Items to verify against the PDF**
1. Eq. 9 transverse exponent printed as (η² + ζ²)²; eq. 10 transverse Gaussian printed on the baseline (p. 10–11).
2. Eq. 15 printed as M = √(γRT); eq. 20 "V̄x²"; eq. 5 "p∞(y)"; eq. 7 "τ = t + τ₁" (p. 9, 17–18).
3. Re_j 8.51 × 10⁵ (Table 3) against 7.24 × 10⁵ (Table 7) at M_j 1.45.
4. Table 2's ratio definition of L̂⁽²⁾ against Table 5's direct coefficients, and the comparison with Table 6 (p. 14, 24–25).
5. RMSE normalisation; Table 8 against the "within 3%" conclusion; Table 9 means quoted as 1.33% and 0.86% (p. 33–40).
6. θ and the Sr definition for Figs 10–12 are not stated.
7. How R^v(y, 0, 0) is obtained from the RANS.
8. Table 4: 1000 axial vectors at 8 px × 23 µm would span about 184 mm, not the 150 mm FOV.
9. Values read from figures: reflection points (Fig. 10), f > 1 only at the first reflection (Fig. 1), p_s peaks (Fig. 8), the factor 2 in Fig. 9.

**Candidates for `/add-paper`:** Morris & Miller 2010 (AIAA J. 48(12), the analogy used here); Kalyan & Karabasov 2017 (JSV 394, two-time-scale model); Miller 2015 (Int. J. Aeroacoustics 14, temperature scaling); Savarese et al. 2013 (AIAA 2013-2080, BBSAN source maps); Seiner & Yu 1984 (AIAA J. 22); Harper-Bourne & Fisher 1974; Tam 1987 and 1990 (JSV 116, 140, stochastic BBSAN theory); Morris & Zaman 2010 (JSV 329, jet velocity correlations); Ray & Lele 2007 (JFM 587); André, Castelain & Bailly 2013 and 2014 (tabs; PIV of underexpanded mixing layers); Viswanathan et al. 2010 (AIAA J. 48).
