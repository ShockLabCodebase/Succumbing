---
key: "baars-2014-cumulative-nonlinear-waveform-distortions-high-speed-jets"
title: "On cumulative nonlinear acoustic waveform distortions from high-speed jets"
authors: ["Baars, W. J.", "Tinney, C. E.", "Wochner, M. S.", "Hamilton, M. F."]
year: 2014
type: "article"
venue: "JFM 749, 331–366"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "749", "pages": "331--366", "publisher": "Cambridge University Press"}
doi: "10.1017/jfm.2014.228"
arxiv: ""
pdf: "jet-noise-mechanisms/Baars-EtAl_2014_On-Cumulative-Nonlinear-Acoustic-Waveform-Distortions-From-High-Speed-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "UT Austin fully anechoic chamber and open-jet wind tunnel (J. J. Pickle Research Campus)"
data: ["microphones-far", "synthetic"]
methods: ["statistics", "PSD", "coherence", "bispectrum", "propagation-model"]
flow: ["round-jet", "supersonic", "ideally-expanded"]
phenomena: ["nonlinear-propagation", "Mach-wave-radiation", "crackle", "atmospheric-propagation", "directivity", "source-location"]
params: {"M_j": "3.00 (M_d = 3.00, ideally expanded)", "NPR": "36.73", "TR": "≈ 1 (unheated; T_0 285–291 K)", "T_j/T_∞": "0.35–0.36", "D_j": "25.4 mm", "U_j": "607–613 m/s", "Re": "7.4–7.6 × 10⁶", "M_co": "1.31 (Oertel)", "U_c": "0.8U_j assumed (M_c = U_c/a_∞ = 1.43, Mach angle 45.6°)", "St_peak": "0.15 (f_0 = 3.6 kHz at ρ/D_j = 60 on the 45° ray)", "grid": "x/D_j 5–145, r/D_j 25–95, 10D_j spacing", "f_sample": "102.4 kHz, 24 bit, ≥ 2²⁰ samples", "RH": "48–75%", "Λ_L": "0.15 (s = 2.5)", "r̄_L": "18.0 m (708 D_j)", "comparison cases": "F-35A F135 (M_j 1.4, T_j 1000 K, D_j 0.95 m, Gee et al. 2012); heated M_j 1.553 lab jet (T_j 706.6 K, D_j 50 mm, Baars et al. 2011)"}
topics: ["jet-noise-mechanisms", "rocket-noise-measurements", "rocket-noise-models"]
related: ["mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation", "gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft", "langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation", "gee-2012-reusable-srm-noise-spectral-statistical", "reichman-2018-qm2-srm-far-field-acoustics", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "tsutsumi-2015-epsilon-liftoff-acoustics", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "tam-1989-three-families-instability-waves-high-speed-jets", "varnier-2001-rocket-engine-freejet-noise-model", "schmidt-2020-bispectral-mode-decomposition", "bres-2019-modelling-jet-noise-les-perspective"]
cites: ["gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft", "mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1994-turbulent-mixing-noise-supersonic-jets", "tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "tam-2008-sources-of-jet-noise-experimental-evidence", "varnier-2001-rocket-engine-freejet-noise-model", "viswanathan-2004-aeroacoustics-hot-jets"]
summary: "Cold M 3 jet to 145D: effective Gol'dberg Λ ≈ 0.15, r̄ ≈ 18 m, so no cumulative steepening in a lab chamber; Λ scaling to full scale; single-point Q/S misleads"
---
# On cumulative nonlinear acoustic waveform distortions from high-speed jets

- **Authors:** W. J. Baars and C. E. Tinney (Department of Aerospace Engineering & Engineering Mechanics, University of Texas at Austin), M. S. Wochner and M. F. Hamilton (Applied Research Laboratories, University of Texas at Austin) (p. 331). Present addresses: Baars at the University of Melbourne, Wochner at AdBm Technologies (p. 331). Not Shock Lab group work.
- **Source:** J. Fluid Mech. 749, 331–366 (2014), doi:10.1017/jfm.2014.228. Received 21 October 2012, revised 2 April 2014, accepted 21 April 2014, published online 19 May 2014 (p. 331). Funded by AFOSR (FA9550-11-1-0203) and ONR (N00014-11-1-0752) (p. 364).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/jet-noise-mechanisms/Baars-EtAl_2014_On-Cumulative-Nonlinear-Acoustic-Waveform-Distortions-From-High-Speed-Jets.pdf` (index key `jet-noise-mechanisms/Baars-EtAl_2014_On-Cumulative-Nonlinear-Acoustic-Waveform-Distortions-From-High-Speed-Jets.pdf`, 36 pp., publisher's version). **Page refs are journal pages; PDF page = journal page − 330.** The text layer drops or garbles most equations and Tables 2, 4 and 5. These were rebuilt from 130 dpi renders of the pages.
- **Tags:** Mach 3 jet, unheated, ideally expanded, method-of-characteristics nozzle, Mach wave radiation, anechoic chamber, microphone grid, line-array, artificial arc-array, OASPL topography, spherical spreading, LSS/FSS similarity spectra, potential-core length models, atmospheric absorption, relaxation, shock formation distance, Gol'dberg number, effective Gol'dberg number for spherical waves, generalized Burgers equation, Pestorius–Blackstock / Gee algorithm, lab-to-full-scale scaling, F-35A, emission point, skewness, kurtosis, derivative skewness, wave steepening factor (WSF), Morfey–Howell indicator, quadrature spectral density Q/S, local vs cumulative nonlinearity, pre-steepened waveforms

## Summary
Baars et al. ask whether the acoustic waveforms of a laboratory-scale supersonic jet steepen cumulatively as they propagate, and what jet conditions would make them do so. The modelling half takes a single ray along the peak-noise direction from an "emission point" at r₀ = sD_j in the shear layer. It estimates two length scales from the measured level and centre frequency on that ray: the Gaussian-noise shock formation distance x̄ (spherical form r̄ = r₀ exp(x̄/r₀)) and the absorption length l_a. It combines them into Hamilton's effective Gol'dberg number Λ for spherically diverging waves (p. 343–348). Scaling laws then express r̄ and Λ through M_j, T_j, St and D_j, giving a factor η that compares lab and full-scale jets (p. 348–354). For the unheated, ideally expanded Mach 3 jet measured on a grid out to 145D_j, the model gives Λ_L ≈ 0.15 and r̄_L ≈ 18 m, about five times the chamber's reach. Extrapolated to an F-35A engine, it gives Λ ≈ 3800, against about 760 computed directly from published F-35A data (Table 4, p. 353). The measurements agree with the model: spectra, cross-correlations and Morfey–Howell Q and Q/S collapse along rays from the post-potential-core region, with no growth with distance (p. 354–362). A generalized-Burgers propagation of a real jet-noise waveform shows that Q and Q/S are already non-zero at the input, so a single-point Morfey–Howell indicator cannot tell local from cumulative nonlinearity (p. 357–360).

## Key findings
- **Basic acoustic field of the Mach 3 jet** (p. 337–342):
  - OASPL has the heart-shaped pattern and cone of silence, with a sharp intensity edge along θ ≈ 45° from the jet exit (Fig. 6, p. 338–339). Peak levels reach about 143 dB on the grid (Fig. 6, read from the figure).
  - Along the peak-noise ray (φ = 45° from x/D_j = 20), p_rms decays as 1/ρ (spherical) from ρ/D_j ≈ 35 to 140, not as 1/√ρ, after absorption correction (Fig. 7, p. 338–339). It falls from about 300 Pa to about 90 Pa over that range (read from the figure).
  - The location of most intense noise production is taken as L_p = 17.5D_j, from the OASPL map. Empirical models give L_c = 13.7–18.3 and L_s = 36.9 (Table 3, p. 340).
  - Spectra have a sharp Mach-wave ridge at shallow angles (φ ≤ 49.1°) that fits Tam's large-scale similarity (LSS) spectrum, and broad sideline spectra (φ ≥ 57.1°) that fit fine-scale similarity (FSS) (Fig. 8, p. 340–341).
  - Band-filtered SPL maps (±20% around St): St < 0.2 radiates shallower than the Mach angle from origins downstream of x ≈ 17.5D_j. St ≈ 0.2 follows the Mach angle, and higher St come from origins further upstream, but never from the nozzle exit (Fig. 11, p. 341–343). Unlike Kuo et al. (2010) for an M 1.5 jet, the lobe does not broaden at high frequency, which the authors put down to the high convective Mach number (p. 342).
  - Wiggles at ρ/D_j = 140 are attributed to humidity changing the flow resistance of the melamine-foam wedges (RH 63–75% on days 1–2); a check at two RH values leaves the general features unchanged (Fig. 10b, p. 341–342). Low-frequency wiggles below St 0.03 are facility reflections (p. 340).
- **Lab length scales** (§ 4.1, p. 343–346):
  - Extrapolating the ρ/D_j = 60 measurement (OASPL 140.1 dB, f₀ = 3.6 kHz) back to the emission point under spherical spreading and absorption gives p_rms = 4948 Pa (167.9 dB) (p. 345).
  - At f₀ = 3.6 kHz and RH 70%, α_L = 2.60 × 10⁻³ Np m⁻¹, so l_aL ≈ 385 m (Fig. 12b, p. 344, 346).
  - r̄_L grows linearly with s, from about 7 m at s = 1 to about 36 m at s = 5 (Fig. 14a, p. 346, read from the figure). Λ_L < 0.4 for all s = 1–5 (Fig. 14b, p. 347).
  - The emission point is set at s = r₀/D_j = 2.5, the shear-layer width in the post-potential-core region (growth ≈ 0.10x, Tinney et al. 2008), and assumed to hold across jet conditions. This gives **r̄_L = 18.0 m and Λ_L = 0.15** (p. 347).
- **Effective Gol'dberg number** (§ 4.2, p. 346–348): for plane waves, Γ = l_a/x̄ ≲ 1 means attenuation suppresses shocks and Γ ≫ 1 means cumulative distortion (p. 347). For spherical waves, two ratios (Γ and σ₀ = r₀/x̄) are needed; Hamilton (2013) folds them into Λ = Γ exp(−ζ_sh/σ₀). Shock formation is guaranteed for Λ ≫ 1, and nonlinear effects are negligible for Λ ≲ 1 (p. 347).
  - Caveat: x̄ assumes Gaussian statistics at r₀. The nearest far-field waveforms are close to Gaussian but contain sawtooth-like structures, and concurrent near-field work (Fiévet et al. 2013) suggests waveforms are steepened at the source. A pre-steepened wave would shorten r̄ and raise Λ (p. 348).
- **Scaling to full scale** (§ 4.3–4.4, p. 348–354):
  - Assuming the same medium, f ∝ St U_j/D_j, and I ∝ U_j⁸ (so p_rms ∝ U_j⁴; Lighthill, and Viswanathan (2004) for a range of temperature ratios), x̄ ∝ D_j/(U_j⁵ St_Dj) ∝ D_j/(M_j⁵ T_j^2.5 St_Dj) (eqs. 4.11–4.13, p. 348). The lossless scaling is the most favourable case (Λ → ∞) (p. 348).
  - The reference case is the F-35A F135 at military power (Gee et al. 2012), approximated as M_jF = 1.4, T_jF = 1000 K and D_jF = 0.95 m. Its peak OASPL is 138.8 dB at ρ/D_jF = 80 and 50° from the jet axis, with f₀ = 300 Hz, RH 24% and α_F = 1.48 × 10⁻⁴ Np m⁻¹ (p. 349). Against it **η = 14.2** for the Mach 3 jet (St_DjL = 0.15, St_DjF = 0.32) (p. 349).
  - Over 1.0 < M_jL < 3.5 and 50 K < T_jL < 1200 K, η spans roughly two orders of magnitude. It becomes very large for unheated, low-Mach lab jets, so their shocks would form far outside any anechoic chamber (Fig. 15, p. 349–350). With η = 1 (matched M_j, T_j), r̄/D_j scales geometrically (eq. 4.17, p. 350). The St mapping with M_j and T_j is unknown, so Fig. 15 is strictly valid only for the Mach 3 point (p. 349).
  - **Predicted against measured full-scale parameters** (Table 4, p. 353): from the lab data, the model gives Λ_Fm = 3821 and r̄_Fm = 3.72 m. Computed directly from the F-35A levels it is Λ_Fr = 764.1 and r̄_Fr = 5.83 m, so the model is about five times high (p. 352–353). With I ∝ U_j³ (Ffowcs Williams 1963) instead it gives Λ = 550.9 and r̄ = 6.98 m, "the same order of magnitude" (p. 353).
  - The heated Baars et al. (2011) jet (M_j 1.553, T_j 706.6 K, D_j 50 mm; 138.20 dB at ρ/D_j = 58.5, f₀ = 3 kHz) has Λ_L = 1.146 and r̄_L = 9.72 m (195D_j). It predicts Λ_F = 103.7 (U_j⁸) or 52.95 (U_j³), now about 7–14 times below the measured 764 (Table 5, p. 353–354).
  - **ΛD_j is 0.004 m in the Mach 3 lab case against 725.8 m at full scale** (Table 4, p. 353), more than three orders of magnitude apart, so cumulative distortion is far more distinct at full scale (p. 354). The higher peak frequency of lab jets raises absorption and delays shock formation further (p. 354).
  - Sources of discrepancy named by the authors: s may depend on M_j and T_j; the intensity law for high-Mach, hot (rocket) jets is unclear; and cylindrical (p ∝ 1/√ρ) decay near the source would lower the emission-point amplitude and lengthen r̄ (p. 353–354).
- **Statistics along the propagation path** (§ 5.1–5.2, p. 354–362):
  - Spectra scaled linearly to ρ/D_j = 100 collapse along line C (45° from x/D_j = 20) but not along line H from the nozzle exit, because sound does not travel along H. Single far-field points or a wrongly chosen path can therefore be mistaken for nonlinear effects (Fig. 19a, p. 354–355).
  - The line-array spectra show no growth at high frequency (Fig. 10a, p. 355). Cross-correlation of the 60D_j microphone with those at 90, 120 and 140D_j stays at 0.64–0.77, which the authors read as weak distortion (Fig. 19b, p. 355).
  - Q and Q/S along lines A–G each follow their own trend, largest at shallow angles (inside the Mach cone), and **collapse within each line**. So the single-point indicators are non-zero but do not change along the ray: there is no measurable cumulative distortion out to 140D_j (Fig. 23, p. 360–361). The chamber reaches only about 3.5 m, about 20% of r̄_L (p. 361).
  - Maps of Q_neg, WSF, S(p) and S(ṗ) all follow the Mach-wave direction from the post-potential-core region. Maxima: (1 − WSF)_max = 0.36 at (x, r)/D_j = (95, 85), S(p)_max = 0.47 at (65, 55) and S(ṗ)_max = 1.96 at (115, 85) (Fig. 24, p. 362). The authors see no significant steepening or shock coalescence in the measurement region (p. 362).
  - On the arc, S(ṗ) is the most sensitive of the metrics to shock-type structures, as McInerny (1996) found (Table 8, p. 362–363).
- **Generalized Burgers demonstration** (p. 357–360):
  - A far-field waveform of the *unheated* Baars et al. (2011) jet (ρ/D_j = 58.5, θ = 20°, 200 kHz, 2²¹ samples, f₀ = 1.2 kHz) is scaled to p_rms = 582.4 Pa (149.3 dB) at r = 3 m and propagated, lossless and as a plane wave, with Gee's (2005) extension of the Pestorius–Blackstock algorithm. Eq. 4.3 gives x̄ = 9.2 m (p. 357).
  - Out to 10 m the waveform steepens, forms shocks and coalesces (Fig. 21, p. 357–358). p(t) stays nearly Gaussian (S(p) 0.095 → −0.006, K(p) about 2.9–3.1), while S(ṗ) rises from 2.53 to 9.05, K(ṗ) from 19.3 to 102.7, and WSF falls from 0.669 to 0.182 (Table 6, p. 360).
  - The PSD loses energy around the peak and gains above a crossover that rises from 13 kHz at 4 m to 35 kHz at 10 m. OASPL falls from 149.3 to 145.2 dB (Fig. 22a, p. 359).
  - Q and Q/S are already non-zero for the *input* waveform at 3 m (Fig. 22b–c, p. 358–359), so single-point values "may inadvertently compel one to believe" cumulative distortion is present (p. 360).
  - Integrating the negative part of Q (eq. 5.5) does track the distortion: −Q_neg rises from 0.072 to 0.235, and −(Q/S)_neg from 1.156 × 10³ to about 3.43 × 10³ Hz (Table 7, p. 361).
- **Conclusions** (p. 362–364):
  - Two scaling routes are offered. Matching M_j and T_j (η = 1) preserves r̄/D_j geometrically; matching ΛD_j preserves the steepening process itself (p. 363).
  - Open items: the dependence of the peak St and of the emission-point size on M_j, T_j, Re and nozzle state; off-design jets, where BBSAN is masked by mixing noise inside the Mach cone, so distortion is still expected if Λ is large enough; and above all the effect of pre-steepened waveforms on r̄ (p. 363).
  - Cumulative distortion is unlikely for subsonic jets, but a geometrically large subsonic flow could still produce it, since absorption is weaker at low frequency (p. 363). Mach waves produce pre-steepened waveforms that shorten r̄, and a GBE run on such waveforms is proposed (p. 363–364).
  - The Morfey–Howell indicator should be used only as a spatial evolution along a path that follows p ∝ 1/r, because its amplitude is hard to interpret and jet fields are highly directive (p. 364).

## Setup / method
- **Facility** (p. 334): a fully anechoic chamber, 5.8 × 4.6 × 3.7 m wedge tip to wedge tip, with 99% normal-incidence absorption above 100 Hz, and an open-jet wind tunnel. The jet rig sits on the tunnel centreline, fed from a 2100 psi supply through a control valve and a 6 in. settling chamber (Figs. 2–3, p. 334–335; details in Baars & Tinney 2013).
- **Nozzle** (p. 334): convergent–divergent, designed by the method of characteristics for M_e = 3.00 at T₀ = 273.15 K, γ = 1.4, R = 287.05 J kg⁻¹ K⁻¹. Exit diameter 25.4 mm, throat-to-exit length 58.4 mm. Run ideally expanded with a mass flow of 1.04 kg s⁻¹.
- **Conditions** (Table 2, p. 338): see Data tables. The Oertel convective Mach number M_co = (U_j + 0.5a_j)/(a_j + a_∞) = 1.31; above 1, Mach waves are fully developed (p. 337). U_c = 0.8U_j is assumed from McLaughlin et al. (1975), Troutt & McLaughlin (1982), Kerhervé et al. (2006) and Tinney et al. (2008); Norum & Seiner (1982) used 0.7U_j (p. 337).
- **Microphones** (p. 334–337):
  - Four ¼ in. prepolarised pressure-field condenser microphones (PCB 377B10 with 426B03 preamplifiers), grid caps removed, at grazing incidence.
  - NI PXI-4472 digitiser with built-in anti-aliasing (roll-off at 0.84 × Nyquist), 102.4 kS s⁻¹, 24 bit, at least 2²⁰ samples per record.
  - The microphones sat on 12 in. long, ¼ in. diameter tubes of an acoustically transparent traversing array, moved between runs.
- **Measurement layouts** (p. 335–337, Figs. 4–5, Table 1):
  - *Planar grid* in the azimuthal plane ϕ = −38.5°: x/D_j = 5–145 and r/D_j = 25–95 at 10D_j spacing (days 1–2).
  - *Derived arrays*: an artificial arc of eight grid points at ρ/D_j = 100 ± 1.5% about x/D_j = 20 (mics 1–8, φ = 14.7–75.3°), and spreading lines A–G from x/D_j = 20 at φ = 22°, 35°, 45°, 52°, 65°, 86° and 94°, with subscripts counting outward. Line H starts at the nozzle exit.
  - *Line-array* (day 3): four microphones on the 45° peak path from x/D_j = 20, at ρ/D_j ≈ 60, 90, 120 and 140 (Fig. 19b axis), placed after the grid data were processed.
- **Spectral processing:**
  - One-sided PSDs with δf = 12.2 Hz (ΔSt = 5.1 × 10⁻⁴) and N = 8192 samples per block, shown with a 5% bandwidth moving filter (p. 340). No window or overlap is stated.
  - Line spectra are scaled linearly to ρ/D_j = 100 with humidity correction and averaged per line (p. 341).
  - SPL maps are band-averaged over ±20% of each centre St (Fig. 11, p. 343).
- **Waveform statistics** (p. 355, 360):
  - Skewness S and kurtosis K of p and ṗ; ṗ from a first-order forward difference (p. 357).
  - WSF is |mean negative slope| over mean positive slope: 1 for a harmonic wave, 0 for an N wave (Gallagher & McLaughlin 1981).
  - Morfey–Howell Q (normalised quadrature spectral density, Hz⁻¹) and Q/S, and Q_neg, the integral of Q over its negative band f₁–f₂ (Fig. 20).
  - All lab signals were high-pass filtered at 400 Hz to stop slow drifts from biasing the skewness (p. 360).
  - These are all block or record averages; the paper has no time-local analysis.
- **Absorption** (p. 343–344): α(f) from appendix B of Blackstock (2000), with N₂ and O₂ relaxation and thermoviscous parts, for 290 K, 0.99 atm and the measured RH (Fig. 12).
- **Modelling side.**
  - *Scope:* a single ray along the peak OASPL direction from an emission point r₀ = sD_j in the shear layer, assumed to spread spherically (Fig. 13, p. 345). Its inputs are the emission-point p_rms and centre frequency f₀, extrapolated back from the nearest far-field point with absorption correction.
  - *Theory:* the Gurbatov–Rudenko shock formation distance for Gaussian broadband plane waves (eq. 4.3). The plane-wave and spherical generalized Burgers equations (eqs. 4.5–4.8; Naugol'nykh et al. 1963; Hamilton & Blackstock 2008), and Hamilton's (2013) effective Gol'dberg number (eqs. 4.9–4.10).
  - *Assumptions:* Gaussian source statistics; a broadband source represented by its centre frequency; the same medium at lab and full scale; I ∝ U_j⁸ (or U_j³); s independent of jet conditions; the source on a single ray with no refraction, turbulence or ground.
  - *Validation:* by internal comparison only. The model's full-scale Λ and r̄ are set against those computed from published F-35A levels (Tables 4–5), and the lab Λ_L against the absence of change in Q along the measured rays. No propagation is run on the lab Mach 3 data.
- **Simulation side** (p. 357): Gee's (2005) generalized-Burgers algorithm, an extension of Pestorius & Blackstock (1974). It steps the waveform with the Earnshaw solution in the time domain and applies absorption, dispersion and spreading in the frequency domain (p. 333). Here it was run lossless and plane-wave, so it only demonstrates the metrics.
  - Atmosphere: T_∞ = 288.0 K, 1 atm, RH 40%, ρ_∞ = 1.226 kg m⁻³, a_∞ = 340.2 m s⁻¹, β = 1.201.
  - Input: the waveform at r = 3 m, output at 4, 6, 8 and 10 m.

## Key equations
Rebuilt from the rendered pages; page refs are journal pages.

- **Mach wave angle** (p. 332): $\theta=\cos^{-1}(a_\infty/U_c)$. **Oertel convective Mach number** (p. 337): $M_{co}=(U_j+0.5a_j)/(a_j+a_\infty)$.
- **Core lengths** (p. 338–339). Nagamatsu & Horvay: $L_c=5.22M_j^{0.90}+0.22$, $L_s=5M_j^{1.8}+0.8$. Varnier: $L_s/L_p\approx M_j^{0.85}$, $L_s/L_c\approx M_e^{0.9}$. Greska et al.: $L_c=3.134\exp(1.043M_j-M_c)$.
- **Absorption length** (eq. 4.1, p. 343): $l_a=1/\alpha$, α in Np m⁻¹ (dB m⁻¹ = 8.686α).
- **Thermoviscous absorption** (eq. 4.2, p. 344): $\alpha_{tv}=\dfrac{\delta(2\pi f)^2}{2a_\infty^3}$, with diffusivity of sound δ = 3.64 × 10⁻⁵ m² s⁻¹.
- **Plane-wave shock formation distance, Gaussian broadband source** (eq. 4.3, p. 344; Gurbatov & Rudenko in Hamilton & Blackstock 2008, p. 383): $\bar x=\dfrac{\rho_\infty a_\infty^3}{\beta(2\pi f_0)p_{rms}}$, with ρ_∞ = 1.223 kg m⁻³ and β = (γ + 1)/2 = 1.2.
- **Spherical shock formation distance** (eq. 4.4, p. 345): $\bar r=r_0\exp(\bar x/r_0)$, with r₀ = sD_j.
- **Generalized Burgers equation, plane waves** (eq. 4.5, p. 346): $\dfrac{\partial p}{\partial x}=\dfrac{\beta p}{\rho_0a_\infty^3}\dfrac{\partial p}{\partial\tau}+\psi_\tau\{p\}$, with τ = t − x/a_∞ and ψ_τ the absorption and dispersion operator.
- **Dimensionless thermoviscous form** (eq. 4.6, p. 346): $\dfrac{\partial P}{\partial\sigma}=P\dfrac{\partial P}{\partial\theta}+\dfrac{1}{\Gamma}\dfrac{\partial^2P}{\partial\theta^2}$, with P = p/p_rms, σ = x/x̄, θ = 2πf₀τ.
- **Gol'dberg number** (eq. 4.7, p. 346): $\Gamma=\dfrac{1}{\alpha\bar x}=\dfrac{l_a}{\bar x}$, evaluated at f₀ (the "characteristic" Gol'dberg number, p. 347).
- **Spherical waves** (eq. 4.8, p. 347): $\dfrac{\partial Q}{\partial\zeta}=Q\dfrac{\partial Q}{\partial\theta}+\dfrac{\exp(\zeta/\sigma_0)}{\Gamma}\dfrac{\partial^2Q}{\partial\theta^2}$, with σ₀ = r₀/x̄, Q = (σ/σ₀)P and ζ = σ₀ ln(σ/σ₀).
- **Effective Gol'dberg number** (eq. 4.9, p. 347; Hamilton 2013): $\Lambda=\Gamma\exp(-\zeta_{sh}/\sigma_0)$, ζ_sh = π/2. Substituted into eq. 4.8 (eq. 4.10): $\dfrac{\partial Q}{\partial\zeta}=Q\dfrac{\partial Q}{\partial\theta}+\dfrac{\exp[(\zeta-\zeta_{sh})/\sigma_0]}{\Lambda}\dfrac{\partial^2Q}{\partial\theta^2}$. In dimensional terms (my rewriting) $\Lambda=\dfrac{l_a}{\bar x}\exp\!\left(-\dfrac{\pi}{2}\dfrac{\bar x}{r_0}\right)$.
- **Scaling of x̄** (eqs. 4.11–4.13, p. 348): $\bar x\propto\dfrac{D_j}{U_j^5St_{D_j}}\propto\dfrac{D_j}{M_j^5T_j^{2.5}St_{D_j}}$ and $\dfrac{\bar x}{r_0}\propto\dfrac{1}{M_j^5T_j^{2.5}St_{D_j}}$.
- **Lab–full-scale relation** (eqs. 4.14–4.16, p. 349): $\dfrac{\bar r_L}{r_{0L}}=\left(\dfrac{\bar r_F}{r_{0F}}\right)^{\eta}$, with $\eta=\dfrac{\bar x_L/r_{0L}}{\bar x_F/r_{0F}}=\left(\dfrac{M_{jF}}{M_{jL}}\right)^5\left(\dfrac{T_{jF}}{T_{jL}}\right)^{2.5}\left(\dfrac{St_{D_jF}}{St_{D_jL}}\right)$, and in nozzle diameters $\dfrac{\bar r_L}{D_{jL}}=\left(\dfrac{\bar r_F}{D_{jF}}\right)^{\eta}s^{(1-\eta)}$. For η = 1 (eq. 4.17, p. 350): $\bar r_L/D_{jL}=\bar r_F/D_{jF}$.
- **Gol'dberg ratio** (eqs. 4.18–4.19, p. 351), as printed: $\dfrac{\Lambda_F}{\Lambda_L}=\dfrac{\alpha_L}{\alpha_F}\dfrac{\bar x_L}{\bar x_F}\exp\left((\bar x_L/r_{0L})-(\bar x_F/r_{0F})\right)$ and $(\Lambda_FD_{jF})=(\Lambda_LD_{jL})\,\eta\,\dfrac{\alpha_L}{\alpha_F}\exp\left((\bar x_L/r_{0L})-(\bar x_F/r_{0L})\right)$. See the check below: the exponent should carry π/2, and the last r_{0L} should be r_{0F}.
- **Morfey–Howell spectral equation** (eq. 5.1, p. 356), as printed: $\dfrac{\partial}{\partial r}\left[r^2e^{2\alpha r}S_{pp}(r,f)\right]=-2\pi f\dfrac{\beta}{\rho_\infty c_\infty^3}e^{2\alpha r}Q_{p^2p}(r,f)$, with S_pp the double-sided PSD.
- **Quadrature spectral density** (eq. 5.2, p. 356): $Q_{p^2p}(f)=-\mathrm{Im}\left[2P_2(f)P^*(f)\right]$, with P and P₂ the Fourier transforms of p and p².
- **Normalised forms** (eqs. 5.3–5.4, p. 356): $Q(f)=Q_{p^2p}(f)/p_{rms}^3$ (Hz⁻¹) and $\dfrac{Q}{S}(f)=\dfrac{Q_{p^2p}(f)/p_{rms}^3}{S_{pp}(f)/p_{rms}^2}$ (dimensionless).
- **Negative-band integral** (eq. 5.5, p. 360): $Q_{neg}=\int_{f_{neg}}Q(f)\,\mathrm{d}f$, over the band f₁–f₂ where Q < 0.
- **Moments** (p. 355): $S(p)=\overline{p^3}/\sigma^3$, $K(p)=\overline{p^4}/\sigma^4$ (and likewise for ṗ); WSF = |mean negative slope| / mean positive slope.

> **Checks (my arithmetic, not in the paper).**
> - Table 2: M_co = (613.3 + 102.2)/(204.4 + 343.3) = 1.31; NPR = (1 + 0.2 × 3²)^3.5 = 36.73; U_j/D_j = 24.1 kHz; cos⁻¹(1/1.43) = 45.6°. ✓
> - Table 3: Nagamatsu & Horvay give 14.25 and 36.9; Varnier gives 36.9/3^0.85 = 14.5 and 36.9/3^0.9 = 13.7; Greska et al. give 17.1 with M_c = 1.43. ✓ Varnier's α ≈ 0.85 matches the 0.8–0.9 in the [Varnier 2001](varnier-2001-rocket-engine-freejet-noise-model.md) note.
> - Eq. 4.3 for the lab: 1.223 × 343.3³/(1.2 × 2π × 3600 × 4948) = 0.368 m (Table 4: 0.36 m). ✓ 20 log₁₀(4948/20 µPa) = 167.9 dB. ✓
> - r̄_L is very sensitive to x̄: x̄/r₀ = 5.67 (x̄ = 0.36 m) gives 18.4 m, and 5.80 (0.368 m) gives 21 m, since r̄ ∝ exp(x̄/r₀).
> - Λ_L = (385/0.36) exp(−(π/2) × 5.67) = 1069 × 1.36 × 10⁻⁴ = 0.145 (Table 4: 0.150). ✓ The plane-wave Γ_L is about 1070, so the plane-wave criterion alone would wrongly predict strong distortion.
> - F-35A from Table 4 values: Γ = 6738/2.13 = 3163, σ₀ = 2.375/2.13 = 1.115, Λ = 3163 e^(−1.409) = 773 (764.1 printed) and r̄ = 2.375 e^(0.897) = 5.82 m (5.83 printed). ✓ But x̄_F = 2.13 m cannot be reproduced from the quoted 138.8 dB at 80D_jF (spherical extrapolation gives about 5.6 kPa and x̄ ≈ 3.9 m), so it must come from the near-field levels the paper mentions (p. 352).
> - η = (1.4/3)⁵ (1000/102)^2.5 (0.32/0.15) = 14.2 needs T_jL ≈ 102 K (days 2–3); the day-1 value of 104 K gives 13.6.
> - Case (c): x̄_F/r_{0F} = 5.67/14.2 = 0.40, so x̄_F = 0.95 m ✓ and Λ ≈ 3780 ✓. But r̄ = 2.375 e^0.40 = 3.54 m, against the printed 3.72 m. Case (d) likewise gives 6.64 m against 6.98 m. Both printed r̄ are about 5% high; verify.
> - **Eqs. 4.18–4.19 drop the π/2.** From eq. 4.9 the exponent is (π/2)(x̄_L/r_{0L} − x̄_F/r_{0F}). With π/2, the Table 4 inputs reproduce Λ_Fm D_jF ≈ 3750 m (3630 printed); without it the result would be about 180 m. The printed tables therefore used the correct form. The x̄_F/r_{0L} in eq. 4.19 is a typo for x̄_F/r_{0F}.
> - **"Approximately 1260 times higher" (p. 352) does not match** Table 4 (3821/0.150 ≈ 2.5 × 10⁴) or Fig. 18(b), whose curve reads about 2.5 × 10⁴ at the Gee St ratio. The "× 5085" in Fig. 18(a) is Λ_Fr/Λ_L (764.1/0.150 = 5094), and "× 4.97" is Λ_Fm/Λ_Fr. The Fig. 18 caption calls the invisible dashed line Γ_L, but the legend's dashed line is Λ_L; Γ_L ≈ 1070 would plot at about 1 on its ×10³ axis.
> - Table 5 (heated jet): 162.6 Pa at 58.5D_j extrapolated to 2.5D_j gives 3.8 kPa, x̄ ≈ 0.56 m (0.54 printed), r̄ ≈ 9.4 m (9.72) and Λ ≈ 1.2 (1.146). ✓ Roughly. η ≈ (1.4/1.553)⁵ (1000/706.6)^2.5 (0.32/0.181) ≈ 2.5, taking St_L = 3000 × 0.05/828, gives x̄_F ≈ 4.1 m (4.16 printed). ✓
> - GBE input: 1.226 × 340.2³/(1.201 × 2π × 1200 × 582.4) = 9.15 m. ✓
> - **Eq. 5.1 is dimensionally short by r².** The left side has units of m Pa² Hz⁻¹ and the right side Pa² m⁻¹ Hz⁻¹, so the right side presumably needs r² e^{2αr} Q. It does carry the factor 2πf that the [McInerny & Ölçmen 2005](mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation.md) note found missing from their eq. 8. Verify against Morfey & Howell (1981).
> - **Sign of Q.** With the minus signs in both eqs. 5.1 and 5.2, Q < 0 should mean energy *gained*, as the text says (p. 356). But in Fig. 22 the Q < 0 band (about 0.5–5 kHz, at and above the 1.2 kHz peak) is where the PSD *loses* energy, and the band above the 13–35 kHz crossovers, where Q/S > 0, gains it. That matches the McInerny & Ölçmen convention (their Q > 0, energy out, is this paper's Q < 0). One sign in eqs. 5.1–5.2 is probably a slip or a different transform convention. The tables and maps are unaffected.
> - p. 355 calls σ "the variance"; for S = μ₃/σ³ it must be the standard deviation.
> - 102 400/8192 = 12.5 Hz, not the printed 12.2 Hz; ΔSt = 5.1 × 10⁻⁴ is consistent with 12.2 Hz.
> - The thermoviscous diffusivity used here, 3.64 × 10⁻⁵ m² s⁻¹ (p. 344), is about 19 times the 1.9 × 10⁻⁶ m² s⁻¹ of McInerny & Ölçmen's eq. 4. This supports that note's suspicion that their value is too low.

## Data tables
**Test conditions** (Table 2, p. 338). M_j = 3.00 ± 1% and NPR = 36.73 ± 4.5% on all days; φ is the Mach angle for U_c = 0.8U_j.

| | Grid (day 1) | Grid (day 2) | Line-array (day 3) |
|---|---|---|---|
| p_∞ (kPa) | 100.7 | 100.8 | 101.2 |
| T₀ (K) | 291.2 | 286.2 | 285.1 |
| T_∞ (K) | 293.3 | 287.2 | 287.5 |
| RH (%) | 75.4 | 63.2 | 48.2 |
| T_j (K) | 104.0 | 102.2 | 101.8 |
| a_j (m s⁻¹) | 204.4 | 202.7 | 202.3 |
| a_∞ (m s⁻¹) | 343.3 | 339.7 | 339.9 |
| U_j (m s⁻¹) | 613.3 | 608.0 | 606.9 |
| f_c = U_j/D_j (kHz) | 24.1 | 23.9 | 23.9 |
| T_j/T_∞ | 0.35 | 0.36 | 0.35 |
| ρ_∞/ρ_j | 0.35 | 0.36 | 0.35 |
| Re_j | 7.4 × 10⁶ | 7.6 × 10⁶ | 7.6 × 10⁶ |
| U_c = 0.8U_j (m s⁻¹) | 490.6 | 486.4 | 485.5 |
| M_a = U_j/a_∞ | 1.79 | 1.79 | 1.79 |
| M_c = U_c/a_∞ | 1.43 | 1.43 | 1.43 |
| φ (deg) | 45.6 | 45.7 | 45.6 |

> The printed "ρ_∞/ρ_j" row equals T_j/T_∞, so it is really ρ_j/ρ_∞ (ideal expansion, same pressure). Check the label on p. 338.

**Core lengths for the Mach 3 jet** (Table 3, p. 340), in D_j.

| Model | L_c | L_p | L_s |
|---|---|---|---|
| Nagamatsu & Horvay (1970) | 14.3 | — | 36.9 |
| Varnier (2001) | 13.7 | 14.5 | 36.9 |
| Greska et al. (2008) | 17.1 | — | — |
| Witze (1974) | 18.3 | — | — |
| Current data (OASPL map) | — | 17.5 | — |

**Nonlinear parameters, s = 2.5** (Table 4, p. 353; Table 5, p. 354). Rows (b) are computed from the F-35A data of Gee et al. (2012); rows (c) and (d) are the model's full-scale predictions from each lab case, with I ∝ U_j⁸ or U_j³.

| Case | l_a (m) | x̄ (m) | r̄ (m) | r̄/D_j | Λ | ΛD_j (m) |
|---|---|---|---|---|---|---|
| (a) Lab, Mach 3 (this paper) | 385 | 0.36 | 18.0 | 708 | 0.150 | 0.004 |
| (b) Full, F-35A (Gee et al. 2012) | 6738 | 2.13 | 5.83 | 6.13 | 764.1 | 725.8 |
| (c) Full, model from Mach 3, I ∝ U_j⁸ | 6738 | 0.95 | 3.72 | 3.92 | 3821 | 3630 |
| (d) Full, model from Mach 3, I ∝ U_j³ | 6738 | 2.44 | 6.98 | 7.35 | 550.9 | 523.4 |
| (a) Lab, heated M_j 1.553 (Baars et al. 2011) | 582 | 0.54 | 9.72 | 195 | 1.146 | 0.057 |
| (c) Full, model from heated jet, I ∝ U_j⁸ | 6738 | 4.16 | 14.4 | 15.1 | 103.7 | 98.55 |
| (d) Full, model from heated jet, I ∝ U_j³ | 6738 | 4.92 | 19.8 | 20.9 | 52.95 | 50.30 |

**Generalized Burgers projection** (Tables 6–7, p. 360–361). Lossless, plane wave, input at r = 3 m. −(Q/S)_neg is in Hz.

| r (m) | OASPL (dB) | S(p) | S(ṗ) | K(p) | K(ṗ) | WSF | −Q_neg | −(Q/S)_neg (Hz) |
|---|---|---|---|---|---|---|---|---|
| 3 (input) | 149.3 | 0.095 | 2.529 | 3.062 | 19.25 | 0.669 | 0.072 | 1156 |
| 4 | 148.7 | 0.037 | 7.438 | 2.930 | 92.50 | 0.433 | 0.139 | 2196 |
| 6 | 147.5 | −0.004 | 8.648 | 2.864 | 96.59 | 0.252 | 0.196 | 3204 |
| 8 | 146.3 | −0.010 | 8.790 | 2.895 | 97.03 | 0.201 | 0.220 | 3440 |
| 10 | 145.2 | −0.006 | 9.047 | 2.948 | 102.68 | 0.182 | 0.235 | 3426 |

**Artificial arc-array, ρ/D_j ≈ 100 about x/D_j = 20** (Tables 1 and 8, p. 337, 363).

| Mic | (x, r)/D_j | φ (deg) | ρ/D_j | OASPL (dB) | S(p) | S(ṗ) | WSF | −Q_neg |
|---|---|---|---|---|---|---|---|---|
| 1 | (115, 25) | 14.7 | 98.2 | 129.5 | 0.047 | 0.828 | 0.867 | 0.047 |
| 2 | (115, 35) | 20.2 | 101.2 | 130.9 | 0.069 | 1.234 | 0.812 | 0.089 |
| 3 | (105, 55) | 32.9 | 101.2 | 133.8 | 0.281 | 1.657 | 0.736 | 0.206 |
| 4 | (95, 65) | 40.9 | 99.3 | 135.5 | 0.371 | 1.720 | 0.697 | 0.280 |
| 5 | (85, 75) | 49.1 | 99.3 | 135.4 | 0.435 | 1.673 | 0.657 | 0.368 |
| 6 | (75, 85) | 57.1 | 101.2 | 131.6 | 0.371 | 0.973 | 0.778 | 0.261 |
| 7 | (55, 95) | 69.8 | 101.2 | 125.5 | 0.177 | 0.231 | 0.941 | 0.089 |
| 8 | (45, 95) | 75.3 | 98.3 | 124.7 | 0.144 | 0.177 | 0.956 | 0.073 |

> **Single-point Q_neg against steepening (my comparison).** Mic 5's −Q_neg = 0.368 exceeds that of the strongly shocked GBE waveform at 10 m (0.235), although its S(ṗ) is 1.67 against 9.05 and its WSF 0.657 against 0.182. This is the paper's point in numbers: the amplitude of Q depends on the p.d.f. and spectrum of the signal, not on how far it has steepened. The two signals also differ in sampling rate (102.4 against 200 kHz), which affects S(ṗ).

## Figures worth remembering
- **Fig. 6 (p. 339):** OASPL map over the grid (interpolated ×10), with the arc points and line-array positions. Sharp edge along about 45°.
- **Fig. 7 (p. 339):** p_rms against ρ/D_j along the 45° ray, following 1/ρ rather than 1/√ρ.
- **Fig. 8 (p. 340):** arc spectra against LSS (shallow angles) and FSS (sideline). The peak moves from St ≈ 0.04 at 14.7° to about 0.2 at 40–49° (my reading).
- **Fig. 11 (p. 343):** band-filtered SPL maps at six St. Low St radiates shallow from downstream origins, high St from upstream origins.
- **Fig. 13 (p. 345):** the scaling concept: lab emission point, model, and full-scale emission point.
- **Fig. 14 (p. 346):** r̄_L and Λ_L against s.
- **Fig. 15 (p. 350):** contours of η over M_jL–T_jL, with this jet (point 1) and the unheated and heated jets of Baars et al. (2011) (points 2 and 3, η roughly 20–80 and 2–3, read from the figure).
- **Fig. 16 (p. 351):** schematic of distortion along a ray rising, peaking and relaxing, earlier for larger Λ.
- **Figs. 17–18 (p. 352–353):** predicted Λ_Fm against s and St_F/St_L, and Λ_L, Λ_Fm and Λ_Fr against s. The ratio Λ_Fm/Λ_L peaks near St_F/St_L ≈ 3 and falls above it from absorption.
- **Fig. 19 (p. 355):** spectra collapse along line C but not H; cross-correlation peaks of 0.77, 0.70 and 0.64 at 90, 120 and 140D_j (read from the figure).
- **Fig. 20 (p. 357):** Q and Q/S at mic 5, with the negative band f₁–f₂ (St ≈ 0.08–0.6, read from the figure).
- **Figs. 21–22 (p. 358–359):** GBE-projected waveforms, derivatives and p.d.f.s, PSDs, Q and Q/S at 3–10 m. Spikes in ṗ already appear at 4 m.
- **Fig. 23 (p. 361):** Q and Q/S along lines A–G. The key evidence: they collapse within each line.
- **Fig. 24 (p. 362):** maps of Q_neg, WSF, S(p) and S(ṗ). The Q_neg contours appear to be Q_neg × 10² (my reading: −36 against mic 5's −0.368).

## Notation
- D_j: nozzle exit diameter; M_j, T_j, U_j, a_j: fully expanded jet Mach number, temperature, velocity, sound speed; subscripts ∞ and 0 are ambient and stagnation; L and F are lab and full scale. Fm and Fr are model prediction and full-scale reference.
- x, r: axial and radial coordinates; ϕ: azimuth of the grid plane (−38.5°); ρ, φ: distance and polar angle from x/D_j = 20 (from the nozzle exit for line H).
- U_c: convection speed; M_c = U_c/a_∞; M_co: Oertel convective Mach number; L_c, L_p, L_s: potential-core length, location of most intense sound, supersonic-region length, in D_j.
- St_Dj = fD_j/U_j; f₀: centre (peak) frequency of the broadband source on the peak ray.
- α (Np m⁻¹), l_a = 1/α; δ: diffusivity of sound; β = (γ + 1)/2: coefficient of nonlinearity.
- x̄: plane-wave shock formation distance; r̄: spherical one; r₀ = sD_j: emission-point distance; s: emission-point scale.
- Γ: Gol'dberg number; Λ: effective Gol'dberg number for spherical waves; σ, σ₀, ζ, ζ_sh: dimensionless distances in eqs. 4.6–4.10; η: lab-to-full-scale ratio of x̄/r₀.
- S, K: skewness and kurtosis (of p or ṗ); WSF: wave steepening factor; S_pp: PSD; Q_{p²p}: quadrature spectral density of p² and p; Q = Q_{p²p}/p_rms³; Q/S: Morfey–Howell indicator; Q_neg: integral of Q over its negative band.

## Relevance to this project
This is the library's first laboratory study of nonlinear distortion in jet noise, and it bridges the two research areas in CLAUDE.md. For lab acoustics, it shows that range-restricted anechoic measurements cannot show cumulative steepening, so shock-like features in lab microphone data are local, born at or near the source. For rocket-noise modelling, it gives a first-principles scaling of shock formation distance and effective Gol'dberg number from exit conditions.

**How it sits with the other notes**
- **Agrees with the full-scale picture.** Its F-35A values (Λ ≈ 760, r̄ ≈ 6 m; Table 4, p. 353) put full-scale military jets deep in the cumulative regime. That is consistent with the F-22A generalized-Burgers results of [Gee 2008](gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md) (p. 9–12), whose propagation code family (Gee 2005) is the one used here.
  - Rockets have lower peak frequencies and much larger D_j than the F-35A, which by eqs. 4.11 and 4.19 should push Λ higher still (my inference). That fits shocks persisting to kilometres ([McInerny & Ölçmen 2005](mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation.md) p. 586; [Reichman 2018](reichman-2018-qm2-srm-far-field-acoustics.md) p. 8; [Mathews 2021](mathews-2021-falcon-9-far-field-noise.md) p. 624), and Atlas V keeping far more high-frequency energy than linear absorption allows ([Mathews 2025](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 84–85).
- **Plane-wave Γ against Λ.** [Langenais et al. 2019](langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation.md) map the plane-wave Gol'dberg number (Γ > 100 in the peak lobes, p. 25). By this paper's argument, plane-wave Γ overstates nonlinearity for spreading waves from a compact source: here Γ_L ≈ 1070 but Λ_L ≈ 0.15 (my arithmetic, Key equations).
  - Langenais et al. still see steepening out to 40D for a hot (TR 6.5) M 3.1 jet. That is what eq. 4.13 predicts: x̄/r₀ ∝ 1/(U_j⁵ St) is independent of D_j, and their U_e of about 1.7 km/s (that note's estimate) is about 2.8 times the 608 m/s here. So x̄/r₀ should be some 13 (I ∝ U_j³) to 170 (I ∝ U_j⁸) times smaller, ignoring St differences, and Λ ≫ 1 (my estimate).
  - So the two papers do not conflict: heating, not Mach number alone, is what brings cumulative distortion into reach of subscale facilities. The heated M_j 1.55 jet already reaches Λ_L ≈ 1.1 (Table 5, p. 354).
- **Local shocks at the source.** The arc values S(ṗ) = 1.66–1.72 near the peak direction (Table 8, p. 363) are close to the 1.79 measured at 40° in the hot M 3.1 subscale test of Langenais et al. (Table III there). Here they are not cumulative, which supports a source-side origin of crackle-like steepness in lab jets, alongside the near-field shocklets of the LES accounts ([Brès & Lele 2019](bres-2019-modelling-jet-noise-les-perspective.md) p. 9–10).
  - The authors' companion paper on this data (Baars & Tinney 2014, J. Sound Vib. 333, "Mach 3 jet with crackle") is cited but not held.
  - All these S(ṗ) values are far below the Sk{∂p/∂t} ≥ 5 shock threshold of [Reichman 2018](reichman-2018-qm2-srm-far-field-acoustics.md) (p. 8), and far below the values above 30 measured near the peak direction of full-scale solid rocket motors ([Gee 2012](gee-2012-reusable-srm-noise-spectral-statistical.md) p. 8).
  - My reading, not the paper's: S(ṗ) and 1 − WSF peak 113–128D_j from the emission point, near the outer edge of the grid (Fig. 24, p. 362). Slow cumulative growth would look like this, though the paper reads the maps as showing no significant steepening.
- **The open question "shocks radiated or formed?"** ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 10) gets a scale-dependent answer here. In lab chambers what is seen is radiated (pre-steepened) structure, and at full scale cumulative steepening dominates. The paper concedes that pre-steepened waveforms would shorten r̄, and calls for a GBE run on them (p. 348, 363–364).
- **Morfey–Howell caution.** Q and Q/S are non-zero for a Gaussian-like input and cannot separate local from cumulative effects (p. 357–360). This applies to the single-station Q/S plots of [McInerny & Ölçmen 2005](mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation.md) (p. 587–589), whose stations also saw different emission times, and it is why that note's authors could not interpret Q/S magnitudes.
- **Subscale similarity.** [Tsutsumi 2015](tsutsumi-2015-epsilon-liftoff-acoustics.md) scales subscale tests at matched U_e with frequency inversely proportional to size (p. 5–8).
  - Here, η = 1 preserves r̄/D_j (eq. 4.17), but the absorption term then differs. With thermoviscous α ∝ f² and f ∝ 1/D_j, eq. 4.18 gives Λ ∝ D_j at matched M_j, T_j and St (my derivation; relaxation changes the power). A 1/40 model therefore has about 1/40 of the full-scale Λ, and subscale tests cannot reproduce full-scale cumulative distortion.
  - This is a quantitative form of the paper's call to match ΛD_j (p. 351, 363).

**Modelling side**
- The model is one ray, a Gaussian broadband source at one frequency, an emission point at 2.5D_j, and Lighthill's U⁸ law. It predicts full-scale Λ within a factor of 5–14 either way (Tables 4–5), and the r̄ predictions are closer, within a factor of about 2.
- Its weakest inputs are s (assumed independent of conditions), the St mapping with M_j and T_j, and the intensity law for hot, fast jets (p. 349, 353–354). The exponential dependence on x̄/r₀ magnifies all of them: a 2% change in x̄ moves r̄_L by about 12% (my check).
- For rocket noise, eq. 4.9 with emission-point levels from near-pad data gives a cheap test of whether a propagation stage must be nonlinear, before running a generalized-Burgers code. SATURN uses an empirical propagation-loss filter instead ([Mathews 2025](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 68–71).
- For LES/CAA of lab-scale cold jets, Λ_L < 1 justifies linear FW-H propagation to chamber distances. Hot jets need the nonlinear Euler stage (Langenais et al.).

**Methods and data for the lab workflow (CLAUDE.md)**
- **Everything here needs time-resolved pressure**: Welch PSDs (8192-sample blocks), band-filtered SPL maps, cross-correlation along a ray, moments of p and ṗ (forward difference at 102.4 kHz, 400 Hz high-pass), WSF and Q/S. None of it applies to non-time-resolved data such as PIV.
  - The scaling model needs only time-averaged inputs (OASPL and f₀ at one point on the peak ray, plus α(f)), so it can be applied to any of the group's microphone data sets.
  - ṗ statistics depend on sampling rate and microphone bandwidth, so compare them only at matched f_s.
- **Step 1 (basic statistics) on our microphone grids.** Arrange microphones along rays from the apparent source, not arcs about the nozzle, and test collapse along each ray after 1/r and absorption correction (Fig. 19). A single far-field point, or a ray from the nozzle exit (line H), can fake or hide nonlinear propagation.
  - With D_j ≈ 10–25 mm, unheated jets at M_j ≈ 1.1–1.5 and chamber ranges of a few metres, the group's jets sit at even larger η than the Mach 3 jet (Fig. 15: η ≳ 20 for T_jL ≈ 200 K, M_jL ≈ 1.5). So any shock-like features in their far field are source or near-field features (my inference).
  - That includes impinging-jet upstream waves, which are shocks at birth ([Edgington-Mitchell 2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md), p. 10, 17). Note that screech tones are tonal, not the Gaussian broadband source the model assumes.
- **Q/S is a frequency-collapsed bispectrum** (sum over all triads feeding f). Bicoherence ([Kim 1979](kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions.md)) or BMD on a microphone array ([Schmidt 2020](schmidt-2020-bispectral-mode-decomposition.md)) would show which triads carry the transfer and where along the ray it grows. That is the spatial evolution this paper says the indicator needs (p. 364).
- **Intermittency and non-stationarity.** All metrics here are record averages over about 10 s; shocks in jet noise are intermittent. Time-local shock counts, wavelet or Hilbert envelopes of high-passed signals would show whether S(ṗ) comes from rare events, for example Mach-wave bursts from wavepacket intermittency.
  - In the SPOD → reconstruction → HPOD pipeline, compute shock metrics on raw signals. A band-limited SPOD reconstruction removes the harmonics that make a shock, and it would also wipe out the non-Gaussian p.d.f. that sets Q. HPOD of the reconstructed Mach-wave band could instead give the instantaneous amplitude of the radiating wavepacket, to condition the shock statistics on.
- **Schlieren link.** Time-resolved schlieren of the near field could show whether Mach waves leave the shear layer already steepened, which is the paper's untested pre-steepening question (p. 348, 363).

**PyFR staging LES.** Not directly relevant: the LES is cold, near-sonic and near-field. The result that lab-scale cold jets propagate linearly (Λ < 1) supports linear FW-H extrapolation of its acoustic field.

**Related works cited, candidates for `/add-paper`:** Baars & Tinney 2014 (J. Sound Vib. 333, shock structures in the acoustic field of this Mach 3 jet with crackle; same data); Baars 2013 (PhD thesis, UT Austin, acoustics from high-speed jets with crackle); Baars et al. 2011 (AIAA 2011-1029, effect of heat on mixing noise; the heated and unheated reference jets); Hamilton 2013 (J. Acoust. Soc. Am. 134, 4099, effective Gol'dberg number); Hamilton & Blackstock 2008 (*Nonlinear Acoustics*); Morfey & Howell 1981 (AIAA J. 19) and Howell & Morfey 1987 (J. Sound Vib. 114); Gee et al. 2012 (AIAA 2012-2258, F-35A ground run-up); Gee 2005 (PhD thesis, Penn State, propagation algorithm); Pestorius & Blackstock 1974; Petitjean, Viswanathan & McLaughlin 2006 (Int. J. Aeroacoust. 5); Gallagher & McLaughlin 1981 (AIAA 81-2041); Kuo, Veltin & McLaughlin 2010 and 2012 (Int. J. Aeroacoust. 11); Ffowcs Williams, Simson & Virchis 1975 (JFM 71, crackle); Saxena, Morris & Viswanathan 2009 (AIAA J. 47); Crighton & Bashforth 1980; Fiévet et al. 2013; Viswanathan 2004 (JFM 516, aeroacoustics of hot jets; PDF held, not yet indexed); Viswanathan 2008 (AIAA J. 46); Tinney, Ukeiley & Glauser 2008 (JFM 615); McLaughlin, Morrison & Troutt 1975 and Troutt & McLaughlin 1982 (JFM 69 and 116); McInerny 1996 (J. Aircr. 33).
