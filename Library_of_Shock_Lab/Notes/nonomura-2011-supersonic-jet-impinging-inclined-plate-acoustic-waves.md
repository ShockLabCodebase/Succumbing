---
key: "nonomura-2011-supersonic-jet-impinging-inclined-plate-acoustic-waves"
title: "Aeroacoustic waves generated from a supersonic jet impinging on an inclined flat plate"
authors: ["Nonomura, Taku", "Goto, Yoshinori", "Fujii, Kozo"]
year: 2011
type: "article"
venue: "Int. J. Aeroacoust. 10(4), 401–425"
bib: {"journal": "International Journal of Aeroacoustics", "volume": "10", "number": "4", "pages": "401--425"}
doi: "10.1260/1475-472X.10.4.401"
arxiv: ""
pdf: "rocket-noise-models/Nonomura-EtAl_2011_Aeroacoustic-Waves-Generated-From-A-Supersonic-Jet-Impinging-On-An-Inclined-Flat-Plate.pdf"
version: "published"
unverified: []
group: false
facility: "ISAS/JAXA in-house WCNS implicit LES (JAXA JSS and Tohoku Univ. Cyberscience Center)"
data: ["LES"]
methods: ["statistics", "PSD", "FW-H"]
flow: ["impinging-jet", "round-jet", "supersonic", "ideally-expanded", "heated", "rocket-plume"]
phenomena: ["Mach-wave-radiation", "installation-effects", "shock-waves", "directivity", "source-location", "acoustic-efficiency"]
params: {"M_j": "2.0 (ideally expanded)", "NPR": "≈7.82 (isentropic, my calculation; not stated)", "TR": "1 (cold), 5.4 (hot) (T_c/T_∞)", "T_j/T_∞": "0.56, 3.0 (my calculation)", "u_J/a_∞": "1.49, 3.46 (my calculation)", "Re": "1×10⁵ (ρ_J u_J D/μ_∞)", "h/D": "5, 10 (L/D, nozzle exit to plate along the jet axis)", "plate angle": "45° from the jet axis", "δ_99": "0.05D", "θ_e": "≈0.006D", "St": "spectral peaks ≈0.1–0.6 (fD/u_J, read from Fig. 14)"}
topics: ["rocket-noise-models", "impinging-jets-and-edge-tones", "jet-noise-mechanisms", "simulation-methods"]
related: ["lubert-2022-supersonic-jet-noise-launch-vehicles-review", "tsutsumi-2015-epsilon-liftoff-acoustics", "ranow-2021-acoustic-prediction-rocket-flame-deflector", "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "casalino-2009-hybrid-empirical-caa-rocket-noise", "krothapalli-1999-flow-field-noise-supersonic-impinging-jet", "henderson-2002-flow-structure-supersonic-impinging-jets", "bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "weightman-2019-sound-production-impinging-supersonic-jets", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "tam-1995-supersonic-jet-noise", "papamoschou-1988-compressible-turbulent-shear-layer", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "edgington-mitchell-2019-aeroacoustic-resonance-review"]
cites: ["krothapalli-1999-flow-field-noise-supersonic-impinging-jet"]
summary: "WCNS implicit LES, M_j 2 jet on a 45° plate (L/D 5, 10; TR 1, 5.4): free-jet and wall-jet Mach waves plus broadband impingement waves SP-8072 omits; no tones"
---
# Aeroacoustic waves generated from a supersonic jet impinging on an inclined flat plate

- **Authors:** Taku Nonomura and Yoshinori Goto (Department of Aeronautics and Astronautics, University of Tokyo, Sagamihara), Kozo Fujii (Institute of Space and Astronautical Science, JAXA, Sagamihara). Nonomura was a postdoctoral fellow, later at ISAS/JAXA; Goto a graduate student, later at Toyota (p. 401). Not Shock Lab group work.
- **Source:** International Journal of Aeroacoustics 10(4), 2011, 401–425. The first-page header prints "pages 401 – 426", but the article ends on p. 425 and the PDF has 25 pages. DOI 10.1260/1475-472X.10.4.401 is taken from the PDF's embedded (Crossmark/XMP) metadata; it is not printed on the pages. No received or accepted dates are printed. Funded partly by JSPS Project 19-3209; computed on JAXA's JSS and Tohoku University's Cyberscience Center (p. 422).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Nonomura-EtAl_2011_Aeroacoustic-Waves-Generated-From-A-Supersonic-Jet-Impinging-On-An-Inclined-Flat-Plate.pdf` (index key `rocket-noise-models/Nonomura-EtAl_2011_Aeroacoustic-Waves-Generated-From-A-Supersonic-Jet-Impinging-On-An-Inclined-Flat-Plate.pdf`, 25 pp., publisher's version with a "Check for updates" stamp). Page refs are journal pages; **PDF page = journal page − 400**. The PDF reports itself as password-protected to some readers but opens with `pdftotext`; the text layer loses the equations and all figure content, so eqs. 1–7, Tables 1–2 and Figs 1–19 were read from pages rendered at 110–300 dpi.
- **Tags:** supersonic impinging jet, inclined flat plate (45°), launch-pad and flame-deflector acoustics, rocket plume surrogate, hot versus cold jet at fixed M_j, nozzle–plate distance inside and outside the potential core, implicit LES (MILES), seventh-order weighted compact nonlinear scheme (WCNS), ADI-SGS implicit time integration, Kirchhoff integral (frequency domain), OASPL maps, mid- and far-field directivity, apparent source position from directivity parallax, Mach waves from the free jet, Mach waves from the supersonic wall jet, impingement-region acoustic waves, plate shock, flow separation and reattachment, crescent-shaped surface pressure, NASA SP-8072

## Summary
The paper computes four cases of an ideally expanded M_j = 2.0 round jet (Re = 10⁵) hitting a flat plate inclined at 45° to the jet axis: nozzle–plate distance L/D = 5 (impingement inside the potential core) or 10 (outside), each cold (T_c/T_∞ = 1) or hot (5.4) (p. 403–406). The solver is the ISAS/JAXA structured-grid code with a seventh-order WCNS, implicit LES with no subgrid model, and implicit second-order time stepping, on 28–55 M points; mid- and far-field sound comes from a frequency-domain Kirchhoff integral (p. 406–409). In every case the OASPL maps and directivity arcs show three kinds of wave (p. 411–413): (i) Mach waves from the free-jet shear layer, (iii) Mach waves from the shear layer of the supersonic wall jet downstream of impingement, and (ii) waves from the impingement region whose radiation angle is not a Mach angle and whose peak direction, measured about the impingement point, does not change with distance. The authors stress (ii) because the SP-8072 empirical method has no such source (p. 414, 422). Both (ii) and (iii) are broadband with no tone, (ii) peaking at a higher Strouhal number than (iii); moving the plate out of the core lowers levels and peak frequencies, and heating raises levels and turns both waves upstream (p. 418–422). The source mechanism of (ii) is left open, with jet impingement, the standing plate shock, reattachment and reflected Mach waves offered as candidates (p. 418). There is no comparison with experiment and no grid or record-length study in this paper.

## Key findings
- **Flow field** (Figs 5–7, p. 409–412).
  - The L/D = 5 jets hit the plate inside the potential core and the L/D = 10 jets outside it, "as we estimated". A shock stands above the plate only when impingement is inside the core. The 10Dhot core is "drastically" short (p. 409, Fig. 5). Core lengths are not given as numbers.
  - The "environmental supersonic region", where u > a_∞ (taken from the authors' earlier work as the region that emits Mach waves), extends further along the plate for the hot jets (Fig. 6, p. 409).
  - Plate pressure and computed oil flow (Fig. 7, p. 409, 412): the impingement peak sits mid-plate; downstream, compression and expansion alternate. A crescent-shaped high-pressure band from the plate shock appears in every case, as in earlier jet–plate studies (Nakai et al. 2006; McIlroy & Fujii 2007). Only at L/D = 5 is the adverse gradient strong enough to separate the flow, and the separation lines are clear in the oil flow; the crescent peak is then sharpened by reattachment (p. 409). Grey scale p/p_∞ 0.7–1.3, saturated at the peak.
  - The grid does not resolve the near-wall turbulence, so separation and reattachment are discussed only qualitatively (p. 408).
- **Three wave types** (Figs 8–9, p. 410–413).
  - Instantaneous pressure (Fig. 8) shows waves of many frequencies travelling in many directions. The turbulent shear layer in the impingement region is thicker for hot jets and for L/D = 10 (p. 410).
  - OASPL in the symmetry plane (Fig. 9, scale 140–180 dB) has three high-level ridges in the cold cases. The ridges along (i) and (iii) are Mach waves from the free jet and from the wall-jet shear layer. The ridge along (ii) is "not due to Mach waves as their radiation angle is very different" (p. 411).
  - 5Dhot also shows all three, but (ii) is weak next to (i) and (iii). In 10Dhot (ii) cannot be separated from (i) in the near-field map, yet the directivity arcs show it (p. 411–413).
  - The (i) arrows in Figs 8–9 point outward and downward on both sides of the free jet, so on the upstream side (i) heads into the plate. The paper mentions "their reflections" (p. 413) but does not analyse them.
- **Source positions from directivity at three radii** (Figs 10–11, p. 412–413). On arcs of r = 20D, 50D and 100D centred on the impingement point, with θ measured from the plate in the symmetry plane:
  - The angle of the (ii) peak does not change with r, so (ii) comes from near the impingement point.
  - The angle of the (iii) peak grows slowly with r, so (iii) comes from downstream of the impingement region.
  - Read from Fig. 11, the (iii) peak moves from about 31° (r = 20D) to 37° (100D) for 5Dcold, and from about 52° to 60° for 5Dhot.
  - My estimate from those readings: rays from a source a distance s downstream along the plate, at a far-field angle φ, give s ≈ 4.8D and φ ≈ 40° for 5Dcold, and s ≈ 3.9D and φ ≈ 62° for 5Dhot. The Mach-wave relation cos φ = a_∞/U_c then implies a wall-jet convection speed of about 1.3a_∞ (cold) and 2.1a_∞ (hot), or about 0.9u_J and 0.6u_J. These are rough figure readings, not the paper's numbers.
- **Directivity levels** (Fig. 11, p. 415, my readings at r = 20D and 100D):
  - 5Dcold: (iii) peak 150 dB → 134.5 dB; (ii) shoulder 145 → 131.5 dB at θ ≈ 70°.
  - 5Dhot: (iii) 157.5 → 144.5 dB; (ii) 148.5 → 136 dB at θ ≈ 90°.
  - 10Dcold: (iii) 147.5 → 133 dB; (ii) 143 → 130 dB at θ ≈ 70°.
  - 10Dhot: (iii) 156 → 141.5 dB; (ii) 148.5 → 135.5 dB at θ ≈ 90°.
  - The 20D → 100D drop of 13–15.5 dB is close to the 14 dB of spherical spreading. Feature (ii) is a plateau or shoulder 4–9 dB below the (iii) peak, not a separate peak.
- **SP-8072 has no type (ii) source** (p. 414, 422). The authors present this as the paper's main practical point for rocket-plume prediction: a new estimation method must include impingement-region waves.
- **Three-dimensional field** (Fig. 12, p. 414, 416). Iso-surfaces of OASPL (156 dB for the cold cases, 165 dB for 5Dhot, 162 dB for 10Dhot) show that emission is strongest downstream and near the symmetry plane. Only the symmetry plane is analysed from here on, so off-plane directivity and total power are never quantified.
- **Peak directions used for spectra** (p. 414, 416; Fig. 13 markers, p. 417). At r = 20D, (ii) peaks at 75° (cold) and 95° (hot). The text gives (iii) at 30°, 40°, 35° and 50° for 5Dcold, 5Dhot, 10Dcold and 10Dhot.
  > The figures disagree with the text's (iii) values. The Fig. 14 legends use 30°, 50°, 30° and 40° for those cases, Fig. 19 uses 50° for 5Dhot, and the Fig. 11 peaks read about 31°, 52°, 29° and 42°. The text appears to swap the two hot cases and to give 35° for 10Dcold. The Fig. 11 arrows for (ii) sit near 70° and 90°, a little below the 75° and 95° used.
  - In free-jet-axis terms (θ_fj = θ + 45°, my conversion), the cold cases put (iii) at about 75° and (ii) at about 120° from the downstream jet axis. These are the angles Lubert et al. report for wall-jet Mach waves and impingement-region waves in the JAXA LES of Tsutsumi 2014 ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 19), though that note does not give the Tsutsumi 2014 conditions.
- **Spectra** (Fig. 14, p. 417–418).
  - Both waves are broadband with no "peaky tone". The (ii) spectrum has the same shape as the (iii) spectrum, so (ii) "seems to be related to the large scale turbulence structure", like Mach waves (p. 418).
  - The gentle (iii) peak is at a lower St than the (ii) peak in every case. The authors attribute this to the much thicker wall-jet shear layer at the (iii) source than in the impingement region, since thicker layers (larger vortices) radiate at lower frequency, as for free-jet Mach waves (p. 418, citing Nonomura & Fujii 2009).
  - My readings of the peaks (St = fD/u_J): 5Dcold (iii) ≈ 0.35 (broad 0.15–0.6, ≈151 dB) and (ii) ≈ 0.6 (≈142 dB); 5Dhot (iii) ≈ 0.2 (≈158 dB) and (ii) ≈ 0.35 (≈145 dB); 10Dcold (iii) ≈ 0.2 (≈149 dB) and (ii) ≈ 0.27 (≈143 dB); 10Dhot (iii) ≈ 0.1 (≈157 dB) and (ii) ≈ 0.13 (≈147 dB). Spectral levels are "normalized by unit nondimensional time", i.e. per unit nondimensional frequency.
  - Validity limits are marked on each plot (my readings): St ≈ 0.021 to 1.7 for the cold cases, and up to St ≈ 0.85–0.9 for the hot cases, with no low limit drawn above St = 0.01.
- **Source of (ii)** (Fig. 15, p. 418–419). A 180 dB OASPL iso-surface surrounds the plate shock and impingement point in every case, extending further along the plate for 5Dcold. The authors list three causes of strong pressure fluctuation there: (1) impingement, (2) the standing shock above the plate, (3) reattachment. Plate-surface fluctuations "might be caused by the reflection of the Mach wave (i)". The iso-surfaces "do not show the exact acoustic sources", and further study is needed (p. 418).
- **Effect of nozzle–plate distance, cold jets** (Figs 16–17, p. 418–420).
  - At r = 20D, the L/D = 10 levels are lower. Read from Fig. 16: about 2.5 dB at the (iii) peak (150 against 147.5 dB) and about 2 dB on the (ii) shoulder, with the curves merging above θ ≈ 85°.
  - With equal jet power, the authors read this as acoustic efficiency falling as L/D rises (p. 418). This rests on one arc in one plane, not on integrated power.
  - Directivity changes only slightly (p. 418).
  - The (ii) peak St is "slightly lower" at L/D = 10 because the impingement-region shear layer is thicker (p. 418). Figs 14 and 17 suggest a factor of about 2 (≈0.6 → 0.27, my reading). The (iii) peak is also slightly lower (p. 419).
  - The hot L/D comparison is "almost the same" and is not shown (p. 418).
- **Effect of temperature, L/D = 5** (Figs 18–19, p. 420–422).
  - The hot jet is louder: about 157 against 150 dB at the (iii) peak, and 149 against 145 dB on the (ii) shoulder (Fig. 18, my reading). The authors attribute this to the larger mechanical power at higher u_J, taking acoustic power as roughly proportional to it, following SP-8072 (p. 420).
    - My check: at fixed M_j, D and p_∞, ρ_Ju_J³ is 2.32 times larger for the hot jet, which is +3.7 dB at constant η. The ≈7 dB rise at the Mach-wave peak therefore implies a higher efficiency or a narrower beam as well, not proportionality alone.
  - Both waves turn "drastically" upstream with heating, because the supersonic convection speed is much higher in hot jets (p. 421, citing [35]). In jet-axis terms, (ii) moves from about 60° to about 40° off the upstream jet axis, i.e. towards the vehicle (my conversion).
  - The (ii) peak St is "significantly lower" for the hot jet, attributed again to a thicker shear layer at impingement. The (iii) peak St is also lower (p. 421–422).
    > My reading: much of that drop comes from the normalisation. u_J/a_∞ is 3.46 against 1.49, so the same physical frequency has a St 2.32 times lower. In fD/a_∞ the peaks are about 0.9 (cold) against 1.2 (hot) for (ii), and 0.52 against 0.69 for (iii). The shear-layer-thickness explanation is not needed to explain the hot–cold difference, though it may still hold for the L/D effect, where u_J is unchanged.
- **Conclusions** (p. 422). Directivity of (ii) depends strongly on jet velocity, and its frequency on the shear-layer thickness at impingement. Longer L/D gives lower SPL and lower-frequency (ii); heating gives higher SPL, more low-frequency content and larger emission angles.

## Setup / method
- **Problem** (p. 403–405). Air with γ = 1.4, ideally expanded, so the free jet has no shock cells (and so no screech or BBSAN by construction). The only shocks are the plate shock and the wall-jet compressions.
  - Parameters: M_J = 2.0, Re = 10⁵, TR_c = 1 or 5.4. The paper notes these are lower than in rocket plumes "but high enough" for qualitative discussion, citing Nonomura's 2008 thesis (p. 404).
  - The hot case keeps M_J fixed and raises T_c, so it has lower density and higher velocity. This mimics hot rocket gas against a cold-gas experiment at the same nozzle Mach number (p. 404).
  - Inflow profile (Fig. 1, p. 404): a flat core plus a 1/7-power-law turbulent-boundary-layer edge, δ₉₉ = 0.05D and momentum thickness ≈ 0.006D. Whether any fluctuations are added at the inflow is not stated. The nozzle is drawn as a solid body in Figs 3–4, but its wall treatment is not described.
  - Geometry (Fig. 2, p. 405): θ_plate = 45° between plate and jet axis, L measured along the axis from the nozzle exit to the plate. Coordinates: x along the jet (downward), z across it in the symmetry plane, y spanwise.
  - L/D = 5 and 10 were chosen because free-jet Mach waves come from x/D ≈ 2 to the end of the potential core, so the field should change "drastically" depending on whether the plate is inside or outside the core (p. 404–405).
- **Cases** (Table 1, p. 406): 5Dcold, 5Dhot, 10Dcold, 10Dhot.
- **Governing equations and scheme** (Sec. 3.1, p. 406–407).
  - 3-D compressible Navier–Stokes, nondimensionalised by D, ρ_∞ and a_∞. The code is Fujii & Obayashi's (1989) Navier–Stokes code with an implicit time integrator and high-order spatial derivatives.
  - Convective terms: modified seventh-order WCNS, following Nonomura, Iizuka & Fujii (2007). It uses seventh-order upwind WENO-like node-to-midpoint interpolation of the conservative variables, the simple high-resolution upwind (AUSM-type) flux of Shima & Jounouchi (1997), and an eighth-order explicit midpoint-to-node difference (Nonomura & Fujii 2009).
  - Viscous terms: sixth-order central differences.
  - Metrics: the treatment of Nonomura et al. (2010) that satisfies the geometric conservation law on a static grid.
  - A relative limiter on the WCNS smoothness indicator (Taylor et al. 2007), R = 5, for higher resolution.
  - Cost saving: WCNS costs about ten times a linear compact scheme, mostly in the nonlinear weights and the characteristic transformation. Nonlinear weights are computed only where the density smoothness indicator flags steep gradients (eq. 7, R_ρ = 5, e_ρ = 10⁻⁶); elsewhere the linear scheme with ideal weights is used (p. 406–407, citing a paper then submitted to the CFD Journal).
  - Turbulence: MILES (Boris et al. 1992), with no explicit subgrid model. WCNS-based MILES had been validated on basic turbulence (Ishiko 2009 thesis; Ishiko et al. 2009) (p. 407).
  - Time: second-order backward differencing with three ADI-SGS sub-iterations (Iizuka 2006; Nishida & Nonomura 2009; Fujii 1999). The scheme had been validated on a supersonic free jet (Nonomura & Fujii 2008, WCCM8/ECCOMAS) (p. 407).
- **Domain and grid** (Sec. 3.2, Figs 3–4, p. 407–408).
  - The computational region is a slab above the plate. Read from Fig. 3, it is about 10D upslope and 15D downslope of the impingement point and 20D across. Buffer regions extend about 450D upslope, sideways and upward, and 600D downslope, to absorb outgoing waves without reflection. The plate appears to continue through the buffers.
  - 11 structured zones, each overlapping its neighbours by 8 points. A square-type grid is used for r < 0.2D to avoid the axis singularity.
  - Points: 300 (L/D = 5) or 466 (L/D = 10) axially, 196 azimuthally, 177 radially upstream and 409 downstream, plus about 30–45 per buffer. Totals: about 28 M (L/D = 5) and 55 M (L/D = 10).
  - Spacing in the computational region is about 6 × 10⁻³ to 6 × 10⁻² D on average, with a minimum of 6 × 10⁻⁴ D at the plate. This does not resolve near-wall turbulence (p. 408).
  - My comparison: the finest spacing in the region, 0.006D, equals the inflow momentum thickness, so the initial shear layer has about one point per θ_e.
- **Time step and record** (Table 2, p. 408–409).
  - Δt a_∞/D = 0.005 (cold) and 0.002 (hot). Maximum CFL is "approximately less than 10", and below 1 near the shocks and shear layers.
  - 80,000 steps (cold) and 200,000 steps (hot). Both give T = 400D/a_∞ (my arithmetic), i.e. about 600 (cold) and 1,390 (hot) units of D/u_J.
  - The paper does not say how much of the record was transient or how often data were sampled.
- **Post-processing** (Sec. 3.3, p. 408–409).
  - Spectra: an FFT of the record with a Hanning window, then a 5-point moving average in frequency. There is no segment (Welch) averaging, so each smoothed estimate has only about 10 degrees of freedom (my estimate).
  - The high-frequency limit is set by the grid and the low limit by the record length (citing the thesis). The rule behind them is not given.
    - My check of the plotted limits: the cold low limit St 0.021 is about 12 periods in 400D/a_∞, and the same rule gives St ≈ 0.009 for the hot jets, consistent with no low-limit line above St 0.01 there.
    - The high limits (St 1.7 cold, about 0.86 hot) are fD/a_∞ ≈ 2.5 and 3.0, i.e. about 7 points per acoustic wavelength at Δ = 0.06D.
  - Mid- and far-field sound: a Kirchhoff integral in the frequency domain (Pan, Uzun & Lyrintzis 2004), on the upper boundary surfaces of the computational region (p. 409). It supplies the OASPL in the buffer regions (upper left of Fig. 9) for the L/D = 5 cases (p. 411), and presumably the r = 20–100D arcs.
    - My caveats: a free-space Kirchhoff integral from the upper surface ignores further reflection by the plate beyond the slab. The wall jet leaves through the downstream boundary, so sources further down the plate are cut off.
- **What is analysed.** Instantaneous fields; mean velocity contours; plate pressure with computed oil flow; OASPL in the symmetry plane and in 3-D; directivity arcs at three radii; single-point spectra at the peak angles. There is no modal decomposition, no wavenumber filtering, no cross-correlation or causality analysis and no phase averaging. Every figure except the instantaneous snapshots is a time-averaged statistic.
- **Validation.** None in this paper. It points to earlier free-jet validations of the code ([35], [1]). There is no grid-convergence or record-length test and no comparison with an experiment of the same configuration.

## Key equations
All read from rendered pages (p. 403–407); the text layer garbles them.

- **Fully expanded Mach number** (eq. 1, p. 403): $M_J=\dfrac{u_J}{a_J}=\sqrt{\dfrac{2}{\gamma-1}\left[\left(\dfrac{p_c}{p_\infty}\right)^{\frac{\gamma-1}{\gamma}}-1\right]}$.
- **Reynolds number** (eq. 2, p. 403): $Re=\dfrac{\rho_J D u_J}{\mu_\infty}$ (jet density and velocity, ambient viscosity).
- **Temperature ratio** (eq. 3, p. 404): $TR_c=T_c/T_\infty$ (chamber over ambient).
- **Strouhal number** (eq. 4, p. 405): $St=fD_j/u_j$.
- **SPL** (eq. 5, p. 405): $SPL=20\log_{10}(\tilde p/\tilde p_{ref})$, with $\tilde p$ the effective (RMS) pressure fluctuation.
- **Nondimensional reference pressure** (eq. 6, p. 405): $\tilde p_{ref}=\dfrac{2.0\times10^{-5}\,\mathrm{Pa}}{101300\,\mathrm{Pa}}\times p_\infty$, so levels are dB re 20 µPa for an ambient of 1 atm.
- **Where nonlinear WCNS weights are computed** (eq. 7, p. 407): $\dfrac{\max(IS_{k,\rho})}{\min(IS_{k,\rho})}>R_\rho$ and $\max(IS_{k,\rho})>e_\rho$, with $R_\rho=5$, $e_\rho=1.0\times10^{-6}$ and $IS_{k,\rho}$ the smoothness indicator of the k-th sub-stencil computed from density.
- **Derived jet conditions** (my calculation, isentropic, γ = 1.4):
  - $T_J/T_\infty=TR_c/(1+\tfrac{\gamma-1}{2}M_J^2)=TR_c/1.8$: 0.556 (cold) and 3.0 (hot).
  - $u_J/a_\infty=M_J\sqrt{T_J/T_\infty}$: 1.49 and 3.46. For T_∞ = 293 K that is about 510 and 1,190 m s⁻¹.
  - $\rho_J/\rho_\infty=T_\infty/T_J$: 1.8 and 0.333.
  - NPR = 1.8^{3.5} ≈ 7.82.
  - $\rho_Ju_J^3$ (∝ mechanical power at fixed D): 5.96 and 13.86, a ratio of 2.32 (+3.7 dB).
- **Mach-wave angle** (not in the paper; used above): $\cos\varphi=a_\infty/U_c$, with φ measured from the convection direction. Here that is the downslope plate direction for wave (iii).

> The nomenclature lists R twice, as the "relative limiter value for the modified WCNS" and as the limiter "for selecting the region computed with nonlinear weights" (p. 402). Both are set to 5 (p. 406–407).

## Data tables
**Cases, grids and time steps** (Tables 1–2, p. 406, 409; derived columns are my calculation):

| Case | L/D | TR_c | Grid points | Δt (D/a_∞) | Steps | Record (D/a_∞) | T_J/T_∞ | u_J/a_∞ | Impingement |
|---|---|---|---|---|---|---|---|---|---|
| 5Dcold | 5 | 1 | 28 M | 0.005 | 80,000 | 400 | 0.56 | 1.49 | inside potential core; plate shock; separation |
| 5Dhot | 5 | 5.4 | 28 M | 0.002 | 200,000 | 400 | 3.0 | 3.46 | inside potential core; plate shock; separation |
| 10Dcold | 10 | 1 | 55 M | 0.005 | 80,000 | 400 | 0.56 | 1.49 | outside potential core; no separation |
| 10Dhot | 10 | 5.4 | 55 M | 0.002 | 200,000 | 400 | 3.0 | 3.46 | outside; very short core |

**Wave directions, levels and spectral peaks** (r = 20D, symmetry plane; θ from the downslope plate direction about the impingement point; "fig" = my reading):

| Case | (iii) θ used for spectrum (Fig. 14) | (iii) θ in text (p. 416) | (iii) peak OASPL (fig, Fig. 11) | (iii) St_peak (fig) | (ii) θ | (ii) OASPL (fig) | (ii) St_peak (fig) | Cut-off St (fig) |
|---|---|---|---|---|---|---|---|---|
| 5Dcold | 30° | 30° | ≈150 dB | ≈0.35 | 75° | ≈145 dB | ≈0.6 | 0.021–1.7 |
| 5Dhot | 50° | 40° | ≈157.5 dB | ≈0.2 | 95° | ≈148.5 dB | ≈0.35 | <0.01–0.85 |
| 10Dcold | 30° | 35° | ≈147.5 dB | ≈0.2 | 75° | ≈143 dB | ≈0.27 | 0.021–1.75 |
| 10Dhot | 40° | 50° | ≈156 dB | ≈0.1 | 95° | ≈148.5 dB | ≈0.13 | <0.01–0.87 |

> The (iii) angles conflict between the text and the figures (see Key findings). The angle of (ii) is from the text and the legends; the Fig. 11 arrows sit at about 70° and 90°.

## Figures worth remembering
- **Fig. 1 (p. 404):** inflow velocity profile (flat core with a 1/7-power-law edge).
- **Fig. 2 (p. 405):** geometry definitions (D, L, θ_plate, axes).
- **Fig. 3 (p. 407):** computational region and buffer zones, side and top views.
- **Fig. 4 (p. 408):** 11-zone grid with a square core grid at the axis.
- **Fig. 5 (p. 410):** downward-velocity contours. Plate shock at L/D = 5 and the end of the potential core at L/D = 10.
- **Fig. 6 (p. 411):** the u > a_∞ region along the plate, longer for hot jets.
- **Fig. 7 (p. 412):** plate pressure with oil flow. Crescent compression, expansion and separation line at L/D = 5; compression only at L/D = 10.
- **Fig. 8 (p. 413):** instantaneous pressure with arrows (i)–(iii). The paper's basic picture of the three wave types.
- **Fig. 9 (p. 414):** OASPL maps (140–180 dB) with the same arrows.
- **Figs 10–11 (p. 415):** arc geometry about the impingement point, and the directivities at r = 20, 50 and 100D. The parallax argument for source position.
- **Fig. 12 (p. 416):** 3-D OASPL iso-surfaces. Emission concentrates downstream near the symmetry plane.
- **Figs 13–14 (p. 417):** spectrum positions, and spectra of (ii) and (iii) with the cut-off frequencies marked.
- **Fig. 15 (p. 419):** 180 dB iso-surface at the plate shock and impingement point, the approximate source region of (ii).
- **Figs 16–19 (p. 420–421):** cold L/D comparison, and L/D = 5 temperature comparison (directivity and spectra).

## Notation
- D: nozzle diameter; L: nozzle–plate distance along the jet axis; θ_plate: plate angle from the jet axis (45°); x, y, z: Cartesian axes (x along the jet, y spanwise, z in the symmetry plane); r: distance from the impingement point; θ: angle from the plate in the symmetry plane, 0° along the downslope plate direction (so 90° is the plate normal and 135° points back along the jet axis to the nozzle).
- u, v, w: velocity components; a: speed of sound; p, ρ, T, μ: pressure, density, temperature, viscosity; γ: ratio of specific heats.
- Subscripts: J (nozzle exit, equal to fully expanded here); c (chamber); ∞ (ambient); ref (reference).
- M_J, Re, TR_c: eqs. 1–3; St = fD/u_J; SPL, OASPL; p̃: effective pressure fluctuation.
- IS_{k,ρ}: WCNS smoothness indicator of sub-stencil k from density; R_ρ, e_ρ: relative and absolute limiters.
- "Environmental supersonic region": the region where u > a_∞.
- Wave labels: (i) Mach waves from the free-jet shear layer; (ii) acoustic waves from the impingement region; (iii) Mach waves from the shear layer of the supersonic wall jet downstream of impingement.

## Relevance to this project
This is the earliest library paper on the canonical rocket-pad surrogate: an ideally expanded M 1.8–2.0 jet on a 45° plate at about 5D, which [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) presents as the lab and LES reference case (p. 17–18). It belongs to the rocket-noise-modelling thread in CLAUDE.md: plume impingement on deflectors, heated supersonic Mach waves, and what SP-8072 leaves out.

**How it fits the rocket-noise literature**
- **The wave taxonomy.** This paper's three types are the start of the five-type picture Lubert et al. later summarise (p. 18): free-jet Mach waves (a) = (i); wall-jet Mach waves (b) = (iii); and impingement-region waves (c) from vortex–plate-shock interaction. Their (d), from tail-shock–vortex interaction, and (e), from the separation shock, would both fall inside this paper's (ii) or near it.
  - The ingredients the authors list for (ii) (plate shock, reattachment, reflected Mach waves; p. 418) are exactly what the later types split apart. This paper has no tool that could separate them.
  - The plate pressure maps here (separation only at L/D = 5) are the ones [Ranow 2021](ranow-2021-acoustic-prediction-rocket-flame-deflector.md) cites for separation at small nozzle–plate distance (Ranow's Fig. 2.4, p. 8). This paper does not vary plate angle, so the "stronger at steeper plate angles" part of Ranow's sentence must come from the 2016 paper he also cites.
- **Agreement with the JAXA subscale and pad work.** [Tsutsumi 2015](tsutsumi-2015-epsilon-liftoff-acoustics.md) finds wall-jet Mach waves about 50° from the wall-jet axis for a hot solid motor, and impingement waves that are hard to see in the LES. This matches the hot (iii) direction here (40–50° at 20D, about 60° in the far field) and the weak hot (ii) in Fig. 9b and 9d.
  - The cold angles here, converted to the free-jet axis (≈75° for (iii), ≈120° for (ii)), coincide with the Tsutsumi 2014 LES directivities quoted by Lubert (p. 19).
  - What dominates the vehicle load at larger heights is free-jet Mach waves reflected by the ground ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 19–20; [Tsutsumi 2015](tsutsumi-2015-epsilon-liftoff-acoustics.md), p. 15–16). This paper's arrows show (i) heading into the plate, but it neither computes the reflection nor reaches the worst-case height (≈15 D_e); L/D = 5 and 10 are below it.
- **Bearing on SP-8072 corrections.** Impinging inside the core (L/D = 5) is louder at 20D than outside it (about 2–2.5 dB, p. 418). The authors read this as higher efficiency. That is qualitatively the direction of [Haynes & Kenny 2009](haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md)'s terminated core, which raised predicted levels, but the comparison is one arc in one plane, not a power integral. It cannot settle the core-termination dispute with [Ranow 2021](ranow-2021-acoustic-prediction-rocket-flame-deflector.md).
  - The hot–cold level change (about 7 dB at the Mach-wave peak against 3.7 dB from ρ_Ju_J³; my arithmetic) argues against the constant-η assumption that the authors themselves invoke (p. 420).
  - The paper supports the "missing physics" item on the rocket-noise-models page: an impingement-region source that no empirical model contains (p. 414).
- **Directivity and convection speed.** The upstream turn with heating fits the convective-Mach-number view of Mach-wave direction ([Papamoschou & Roshko 1988](papamoschou-1988-compressible-turbulent-shear-layer.md); [Tam 1995](tam-1995-supersonic-jet-noise.md); the heated threshold behaviour in [Gojon 2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md), p. 16, 20–21).
  - Directivity at a fixed radius depends on the arc centre. The parallax between 20D and 100D (about 6–8° for (iii)) is the same effect [James 2012](james-2012-directivity-curves-rocket-noise-model.md) shows for 80 D_e rocket arcs. This paper uses it the right way round, to locate sources.
  - The St peaks (0.1–0.6 on u_J) are lab-jet values, an order of magnitude above rocket Sr ≈ 0.01–0.025 ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 10). The model jet cannot test that scaling.

**How it fits the impinging-jet feedback thread**
- **No tones, but no control case.** Both (ii) and (iii) are broadband, and the authors contrast them with the tonal feedback of normal impingement ([Krothapalli 1999](krothapalli-1999-flow-field-noise-supersonic-impinging-jet.md); Powell 1988; Alvi & Iyer 1999; p. 403, 418).
  - This is an LES data point for the "why full-scale pads show no tones" question on the impinging-jets topic page: an ideally expanded M 2 jet on a 45° plate at L/D = 5 is broadband even at Re = 10⁵ with a thin exit layer.
  - The run has no normal-plate case at the same conditions. Normal-plate LES at similar Re and an ideally expanded M_j 1.5 do give tones ([Bogey & Gojon 2017](bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets.md), p. 572–577), so inclination is the likeliest difference. But M_j, L/D and the inflow also differ, so the effect of inclination is not isolated.
- **Possible reasons, in the language of the feedback thread** (my reading).
  - The 45° plate has an oblique, crescent-shaped plate shock rather than a normal stand-off shock over a recirculating pocket. That stand-off region is where [Henderson 2002](henderson-2002-flow-structure-supersonic-impinging-jets.md) and the Weightman thesis place the normal-plate sources, though Henderson also shows that recirculation alone does not make a tone (p. 4).
  - The (ii) radiation peaks at 75–95° from the plate, i.e. 40–60° off the upstream jet axis, not along it (θ = 135°). The arcs stop at 115°, so the level that returns to the nozzle lip is not shown.
  - The wall jet carries the flow away from the stagnation region, so the wall-jet shocklet of [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md) and [Edgington-Mitchell 2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) has no transonic, near-stagnation wall jet to form in.
  - These are hypotheses for the topic page, not results of the paper.
- **Source candidates for (ii) match the lab mechanisms.** Plate-shock unsteadiness and vortex–plate-shock interaction are the inclined-plate relatives of stand-off-shock leakage ([Edgington-Mitchell 2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md); [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md)). Reattachment shocks are relatives of the wall-jet shocklet. The paper's iso-surface argument (Fig. 15) cannot tell any of these apart.

**Methods and data for the lab workflow (CLAUDE.md)**
- **What the paper does.** Everything is LES, so time-resolved. Yet every result except the snapshots is a block statistic: OASPL maps, directivity arcs, and single-record narrowband spectra with a Hanning window and 5-point smoothing (p. 408). No method resolves how a wave's amplitude or frequency changes in time, and there is no modal decomposition or wavenumber filtering.
  - The spectra therefore cannot say whether (ii) is a steady broadband source or a burst-like one (intermittent plate-shock motion, for example), which matters for both the mechanism and loads.
- **Time-resolved data (LES, high-speed schlieren, microphones).** SPOD of the LES pressure, or of time-resolved schlieren of a lab inclined-plate jet, with the k_x or ray-direction sign separating the waves, would split (i), (ii) and (iii) by frequency and direction rather than by OASPL ridges. BMD would test whether (ii) contains quadratic interactions between shear-layer structures and the oscillating plate shock (the BBSAN-like type (d) in Lubert's list).
  - SPOD → reconstruction → Hilbert POD of the (ii) band would show whether impingement radiation is intermittent and whether it is locked to plate-shock excursions.
- **Non-time-resolved data (PIV).** Snapshot POD of PIV in the symmetry plane would give the wall-jet and impingement-region structures and the shear-layer thickness that the authors invoke to explain the spectra. It could not separate the acoustic waves, which need time resolution or phase referencing to a microphone.
- **Source location.** The parallax method (peak angle against r about a chosen origin) is cheap, works with any microphone arcs or LES probes, and is the method the rocket-noise literature needs (see James 2012). The lab could apply it to its far-field arcs.

**Modelling side and the PyFR staging LES**
- **Numerics.** The solver follows the same pattern as the JAXA lift-off LES of [Tsutsumi 2015](tsutsumi-2015-epsilon-liftoff-acoustics.md) and PyFR's entropy filter: high-order linear (here linear-weight WCNS) away from discontinuities, with nonlinear shock capturing switched on only where a density smoothness sensor fires (eq. 7). It is implicit LES with no SGS model and implicit time stepping at CFL up to about 10 away from shocks.
  - For the PyFR staging LES (`Simulations/PyFR_Staging_Continuation/`), the cautions are the ones this paper leaves open. It has no grid-convergence test, it has no inflow-disturbance or nozzle-boundary-layer specification (the topic page stresses that nozzle details are part of the physics), and its short single records have no segment averaging. Their stated resolution limits (St 0.02–1.7 cold) are a useful benchmark for points per wavelength (about 7 at 0.06D for the high-frequency limit, my estimate).
- **Propagation.** The free-space Kirchhoff surface on the slab top cannot include reflection by the plate beyond the slab, nor sources further down the wall jet. Any LES of the lab's impinging configurations should use a surface that wraps the wall jet, or a half-space Green's function, and the comparison should be made at the source-centred angle.
- **No model is solved.** There is no stability, wavepacket or resolvent model of the wall-jet shear layer that could predict the (iii) angle or the (ii) spectrum. The (iii) direction would be a natural test of a mean-flow linear model of the wall jet, whose convection speed (about 1.3a_∞ cold and 2.1a_∞ hot, my parallax estimate) sets the Mach angle.

**Items to verify against the PDF**
1. The (iii) peak angles: text (p. 416: 30°, 40°, 35°, 50°) against the Fig. 14 and Fig. 19 legends (30°, 50°, 30°, 40°) and the Fig. 11 peaks.
2. All levels, angles and St peaks marked as read from Figs 11, 14, 16 and 18, and the cut-off St lines in Figs 14, 17 and 19.
3. The computational-region dimensions (10D upslope, 15D downslope, 20D span) and buffer sizes read from Fig. 3, and whether the plate continues through the buffers.
4. Whether the r = 20–100D arcs come from the Kirchhoff integral (implied by Sec. 3.3, p. 409, but stated only for the buffer region of Fig. 9).
5. Reference [24] (a WCNS difference-scheme paper, JCP 2009) is cited for the claim that Mach waves come from the u > a_∞ region (p. 409). [39] or [3] look like the intended references.
6. The page range: header "401 – 426" against the 25-page article ending on p. 425.
7. Inflow disturbances and the nozzle wall treatment are not stated anywhere I found.

**Candidates for `/add-paper`** (cited, not in the library): Lamont & Hunt 1980 (JFM 100, under-expanded jets on perpendicular and inclined plates); Nakai, Fujimatsu & Fujii 2006 (AIAA J. 44, inclined-plate impingement experiment); McIlroy & Fujii 2007 (AIAA 2007-3859, inclined-plate computation); Inman et al. 2008 (AIAA 2008-619, PLIF of impinging jets); Alvi & Iyer 1999 (AIAA 99-1829, lift plates); Powell 1988 (JASA 83, normal-plate oscillations); Krothapalli, Arakeri & Greska 2003 (AIAA 2003-1200, Mach wave review); Bodony & Lele 2008 (AIAA J. 46, jet-noise LES review); Tsutsumi et al. 2008 and 2009 (H-IIA and solid-rocket pad LES, deflector shape); Nonomura & Fujii 2008 (AIAA 2008-2836, 2008-6587; ISTS 2008; WCCM8) and 2009 (AIAA 2009-0016, Mach wave sources in free jets); Nonomura 2008 (PhD thesis, Tokyo); Pan, Uzun & Lyrintzis 2004 (AIAA 2004-2873, refraction corrections for surface integrals); Eldred 1971 (NASA SP-8072; known here only through notes that restate it).
