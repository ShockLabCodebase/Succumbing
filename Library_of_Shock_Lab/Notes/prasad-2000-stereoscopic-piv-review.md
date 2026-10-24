---
key: "prasad-2000-stereoscopic-piv-review"
title: "Stereoscopic particle image velocimetry"
authors: ["Prasad, A. K."]
year: 2000
type: "review"
venue: "Exp. Fluids 29, 103–116"
bib: {"journal": "Experiments in Fluids", "volume": "29", "pages": "103--116"}
doi: "10.1007/s003480000143"
arxiv: ""
pdf: "diagnostics-and-facilities/Prasad_2000_Stereoscopic-Particle-Image-Velocimetry.pdf"
version: "published"
unverified: ["DOI not printed in the PDF; added from memory (consistent with the publisher file id 3480143 in the PDF metadata)", "issue number not printed in the PDF, so omitted"]
group: false
facility: ""
data: ["PIV-stereo", "PIV"]
methods: ["calibration", "optical-modelling"]
flow: ["generic"]
phenomena: []
params: {"θ (stereo half-angle)": "≈15° typical translation; 20–45° Scheimpflug angular in cited work", "σ_Δz/σ_Δx": "1/tan θ (eq. 9)", "3-D calibration": "3 z-planes (Soloff), 5 (Hill), up to 9 at 0.5 mm (Bjorkquist)"}
topics: ["diagnostics-and-facilities"]
related: ["shehzad-2021-laser-sheet-alignment-piv", "sun-2021-distortion-correction-large-sensor-piv", "alkislar-2003-screeching-rectangular-jet-stereo-piv", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "jaunet-2017-two-point-coherence-wave-packets-turbulent-jets", "nogueira-2019-large-scale-streaky-structures-jets", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "ragni-2011-particle-tracer-response-shocks-piv", "tan-2019-correlation-analysis-piv-screeching-jets", "willert-1997-stereoscopic-dpiv-wind-tunnel-flows", "soloff-1997-distortion-compensation-generalized-stereoscopic-piv", "willert-1991-digital-particle-image-velocimetry", "wieneke-2005-stereo-piv-self-calibration-particle-images"]
cites: ["soloff-1997-distortion-compensation-generalized-stereoscopic-piv", "willert-1997-stereoscopic-dpiv-wind-tunnel-flows"]
summary: "Stereo PIV review: translation vs Scheimpflug angular set-ups, σ_Δz/σ_Δx = 1/tan θ, geometric vs 2-D/3-D (Soloff) calibration; target–sheet misregistration unanalysed"
---
# Stereoscopic particle image velocimetry

- **Authors:** A. K. Prasad, Department of Mechanical Engineering, University of Delaware, Newark (p. 103). Not Shock Lab group work.
- **Source:** Experiments in Fluids 29, 103–116 (2000), a "Review Paper". Received 15 April 1999, accepted 1 February 2000 (p. 103). DOI 10.1007/s003480000143 (not printed in the PDF; from memory, see `unverified`).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/diagnostics-and-facilities/Prasad_2000_Stereoscopic-Particle-Image-Velocimetry.pdf` (index key `diagnostics-and-facilities/Prasad_2000_Stereoscopic-Particle-Image-Velocimetry.pdf`, 14 pp., publisher's version). **Page refs below are journal pages; PDF page = journal page − 102.** The text layer garbles every equation; eqs. 1–13 and the unnumbered formulas were rebuilt from rendered pages (260 dpi for eqs. 6–9).
- **Tags:** stereoscopic PIV, 3C-2D / (3, 2, 0) measurement, perspective error, out-of-plane displacement, translation (lateral-displacement) stereocamera, rotational (angular-displacement) stereocamera, Scheimpflug condition, tilt adapter, non-uniform magnification, opposite image stretching, depth of field, forward scatter, liquid prism, refraction at liquid–air interfaces, paraxial recording, hybrid and in-line stereocameras, dual-plane PIV, defocusing PIV, error propagation, out-of-plane/in-plane error ratio, misregistration, geometric reconstruction, ray tracing, 2-D calibration, 3-D calibration (Soloff polynomial), calibration target, mapping function, least squares

## Summary
Prasad reviews stereoscopic PIV, the (3, 2, 0) case of Hinsch's classification: three velocity components on a plane at one instant (p. 103). A single camera projects the out-of-plane displacement onto the plane and so corrupts the in-plane result with a perspective error that grows with the off-axis viewing angle. Two different views give four equations for the three unknown displacements, which removes that error and yields Δz (p. 103–104). The review compares translation (parallel-axis) and rotational (angular-displacement) stereocameras, the latter usually with the Scheimpflug condition, and then hybrid, in-line and single-camera non-stereoscopic alternatives (p. 104–110). A first-order error analysis gives an out-of-plane to in-plane error ratio of 1/tan θ, with θ the stereo half-angle, for both the translation and the Scheimpflug systems. This favours θ ≈ 45°, at the cost of more non-uniform magnification (p. 110–111). Reconstruction is reviewed in three forms: geometric (the full recording geometry must be known), 2-D calibration (a target in the sheet plane, with geometry still needed in the final step) and 3-D calibration (Soloff et al. 1997: targets at several z, no geometry needed). The paper concludes that the trend is digital cameras in the Scheimpflug angular configuration with calibration-based reconstruction, and that errors from misaligning the target with the sheet have not yet been analysed (p. 111–115).

## Key findings
- **Why stereo: perspective error of planar PIV** (eqs. 1–2, p. 104).
  - A particle off the camera axis that moves by Δz images as if it had moved in-plane by Δz tan θ_x (and Δz tan θ_y), where θ_x, θ_y are the projections of its viewing angle. The relative in-plane error is ε = (Δz/Δx) tan θ_x.
  - An off-axis angle of 5° at the edge of the field gives "about 10%" error when the in- and out-of-plane displacements are similar, and proportionally more when Δz is larger (p. 104). (tan 5° = 0.087, my check.)
  - Averaging over all particles in the interrogation volume reduces the problem to a single particle at z = 0, with an error of order (Δz_o/d_o)². With a sheet Δz_o ≈ 1 mm and d_o of hundreds of millimetres this is negligible (Prasad & Adrian 1993a; p. 104).
- **Translation systems** (parallel camera axes, both normal to the sheet; Figs. 2–3a, p. 104–106).
  - Advantages: uniform magnification; the same depth of field as single-camera PIV, so no extra stopping down; the two views superpose directly; the combined field has the resolution of each view (p. 104–105).
  - The small common area can be maximised by offsetting each sensor from its lens axis so that D = (1 + M_n)S, but camera bodies cause vignetting with CCD cameras (p. 105).
  - **The main limit:** lens performance caps θ, so the out-of-plane accuracy is limited. Prasad & Adrian (1993a), Arroyo & Greated (1991) and Soloff et al. (1997) found the out-of-plane error 3–4 times the in-plane error at θ ≈ 15°. Prasad & Adrian (1993a) measured 1 µm in-plane and 4 µm out-of-plane rms at d_o = 247 mm (p. 105–106).
  - Arroyo & Greated (1991) folded both off-axis views onto one sensor through one lens with two pairs of mirrors (Fig. 4, p. 106).
  - **Liquid flows.** Recording through a thick liquid layer distorted the particle images radially and tilted the plane of best focus. The first forced the use of "small f-numbers" (as printed) and the second made the magnification non-uniform, so the translation system lost its basic advantages. Prasad & Adrian (1993a, b) still measured the flow below a disk rotating in glycerine and turbulent thermal convection at Ra ≈ 2 × 10⁷ (p. 106).
- **Rotational (angular-displacement) systems** (Fig. 3b, p. 106–108).
  - The camera axes are rotated to meet at the object plane, so θ can be much larger without lens problems, which improves the out-of-plane accuracy. The magnification is no longer uniform (p. 106).
  - **Scheimpflug condition** (Altenhofen 1952): the image plane is tilted by α so that the object, lens and image planes meet in one line. All particles are then in focus, but the magnification becomes even less uniform; M_n = tan α / tan θ (p. 106).
  - **Magnification non-uniformity** (Fig. 5, p. 106–107) grows with |x|, θ and M_n. Over x/d_o = ±0.2 on the x-axis, M/M_n spans about 1.12–0.91 at θ = 15°, M_n = 1, and about 1.39–0.78 at θ = 45°, M_n = 1 (read from the figure). It also grows away from the x-axis (p. 107).
  - **Opposite stretching** (Fig. 6, p. 106–107): square interrogation spots in the two image planes map to oppositely stretched, differently placed trapezoids in the object plane. The two views cannot be combined without first interpolating both onto a common grid. Maximum overlap needs the cameras moved closer together, so that their axes cross in front of the object plane (Westerweel & van Oord 1999).
  - **Without Scheimpflug** (α = 0) the non-uniformity is a little smaller, but the depth of field δz = 4(1 + M_n⁻¹)² f#² λ (Adrian 1991) must cover the varying object distance. That needs a large f-number and so less light (p. 107). Users: Gauthier & Riethmuller (1988), Westerweel & Nieuwstadt (1991), Grant et al. (1991), Lawson & Wu (1997b). Scheimpflug was suggested by Hinsch (1995) and Prasad & Jensen (1995) and used by Zang & Prasad (1997), Willert (1997), Bjorkquist (1998), Westerweel & van Oord (1999) and Hill et al. (1999) (p. 107).
  - **Cameras on either side of the sheet** ([Willert 1997](willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md); Fig. 7, p. 107–108): with the right laser direction both cameras work in forward scatter, with higher and equal signal-to-noise ratio, and both views are stretched identically. Interpolation onto a Cartesian grid is still needed.
  - The angular-system equations reduce to the translation form: Westerweel & Nieuwstadt (1991) and Lawson & Wu (1997a) for the non-Scheimpflug camera, Zang & Prasad (1997) for Scheimpflug. Westerweel & van Oord's (1999) equations are identical to the translation equations, and Willert (1997) gives the either-side version (p. 108).
  - **Liquid prism** (Prasad & Jensen 1995; Fig. 8, p. 108). Large off-axis angles through a thick liquid layer cause severe radial aberration, which is visible even at the edges of single-camera PIV fields a few degrees off-axis. A thin-walled glass prism filled with the test liquid, attached to the test-section wall, gives each camera an orthogonal view of the liquid–air interface when θ equals the prism wall angle. It:
    - removes most of the radial distortion (ray tracing);
    - restores paraxial recording, so the reconstruction equations need no refraction terms;
    - avoids total internal reflection, which is imminent near 49° from water into air (Westerweel & van Oord 1999, who used a prism at θ = 45° in a turbulent boundary layer).
    - Even with colinear planes, a small adjustment of α or of the image distance is needed for the sharpest images when there is a liquid–air interface (p. 108).
- **Other stereo configurations** (p. 108–109).
  - **Hybrid** (Gaydon et al. 1997): a small translation plus a small inward rotation, to raise θ above a pure translation system without the magnification non-uniformity of a pure rotation. Their optimisation favoured a large angular displacement with a relatively small translation. It was applied to an air jet normal to the sheet.
  - **In-line** (Grant et al. 1995; Fig. 9): coincident camera axes normal to the sheet, with different magnifications and object distances via a semi-silvered mirror. It speeds up particle matching for tracking, but the views differ in angle very little: σ_Δz/d_o is about 300 times that of Prasad & Adrian (1993a), and there is a region near the centre of the field where it gives nothing useful (p. 109).
- **Non-stereoscopic (3, 2, 0) alternatives** (p. 109–110). All have lower data density, lower accuracy or both:
  - *Dual-plane correlation* (Raffel et al. 1996): one camera, three staggered overlapping sheets; Δz from the height of the correlation peak, i.e. from the out-of-plane loss of pairs. Simulations gave out-of-plane errors of 4–8% of the 2 mm sheet thickness. It needs a time-invariant sheet intensity profile (chopped CW lasers are better for beam pointing) and more particles per spot, so resolution suffers (p. 109).
  - *Streaks* (Herpfer & Jeng 1995: double-pulsed sheets inside a thicker CW sheet, Δz from the residence time) and *coded dashes* (Halloin & Jottrand 1994: at least five dashes needed): low data density, low dynamic range, and ambiguous sheet edges (p. 109).
  - *Three-pinhole defocusing* (Willert & Gharib 1992: 1 mm pinholes on a 6 mm equilateral triangle in front of a 25 mm lens): out-of-plane error 40 times the in-plane error, because the effective off-axis angle is only ≈ d/d_o; the mask also blocks much of the light (p. 109–110).
  - *Defocus diameter* (Stolz & Köhler 1994): Δz = f#(1 + M)ΔD/M², with up to five exposures needed to bring the out-of-plane velocity standard deviation down to 10% (p. 110).
  - *Intensity coding:* two-colour overlapping Gaussian sheets (σ = 0.5 mm, 0.2 mm apart; Cenedese & Paglialunga 1989) and an exponentially graded 3 mm sheet (Dinkelacker et al. 1992) (p. 110).
- **Error analysis** (eqs. 6–9, Fig. 10, p. 110–111).
  - First-order propagation through eqs. 3–5, assuming uncorrelated errors and perfect registration. The interrogation errors σ_ΔX, σ_ΔY include random and bias errors (Prasad et al. 1992). The geometric errors σ_x, σ_y, σ_S, σ_Mn and σ_do come from measuring the stereocamera (p. 110).
  - With equal interrogation errors and on the axis, σ_Δz ≈ √2 (d_o/MS) σ_ΔX and σ_Δx ≈ σ_Δy ≈ σ_ΔX/(√2 M), so **σ_Δz/σ_Δx = 2d_o/S = 1/tan θ** (eq. 9). Zang & Prasad (1997) showed the same θ-dependence for the Scheimpflug angular system. The in-plane error is 1/√2 of a single camera's, since two cameras contribute, and the perspective error is gone (p. 110).
  - **Variation across the field** (Fig. 10, data of Lawson & Wu 1997a): for the translation system the ratio falls quickly with x/d_o when tan θ = S/2d_o < 0.2 ("θ < 10°"), and is more or less invariant for larger angles. For the angular system it depends only weakly on x/d_o over 5° ≤ θ ≤ 45° (p. 110–111).
  - **θ = 45° balances in- and out-of-plane errors**, but larger angles mean more non-uniform magnification. Hill et al. (1999) used 20°, Willert (1997) 35°, Westerweel & van Oord (1999) 45°, and Lawson & Wu (1997b) a range up to 45° (p. 111).
  - **Misregistration** is ignored by this analysis. If the two views are matched badly after back-projection, velocity from different parts of the field is combined. It grows with the magnification non-uniformity, depends on the back-projection algorithm, can be reduced but "virtually" never eliminated, and is compounded by strong spatial gradients (p. 111).
  - Registration aids: markers in the flow, features on physical boundaries, a Moiré method for film negatives (Prasad & Adrian 1993a, b), or, now usual, a calibration target in the flow, with which registration is automatic within the accuracy of the back-projection (p. 111).
- **Reconstruction** (Sect. 4, Fig. 11, p. 111–115). Each view is interrogated, usually by correlation on a Cartesian grid. Reconstruction maps each camera's displacements to the object plane and combines them.
  - **Geometric reconstruction** (Fig. 11a, p. 111–113) needs d_o, M_n, S and the 3-D position and orientation of both sensors, plus an accurate projection of each interrogation spot. Eqs. 3–5 apply directly for a symmetric translation system (Arroyo & Greated 1991; Prasad & Adrian 1993a in air).
    - For liquid flows with varying magnification, Prasad & Adrian (1993a, b) ray-traced through the lens and the liquid layer, mapped the corners of each grid cell to trapezoids, inscribed a new Cartesian grid in the common area, interpolated both cameras onto it, and combined them with modified equations that include the refraction (p. 112). Zang & Prasad (1997) used geometric reconstruction for a Scheimpflug system (p. 112–113).
    - It is impossible when the geometry cannot be modelled (lens nonlinearity, misaligned CCD array), and every geometric uncertainty in eqs. 6–8 adds to the error. Scheimpflug tilts and liquid–air interfaces make it "even more demanding and error-prone" (p. 113).
  - **2-D calibration** (Fig. 11b, p. 113–114): a mapping x_i = f(X_i) (eq. 11) from each image plane to the object plane, fitted to an image of a target placed exactly in the sheet.
    - Targets: dot grids or line rulings. Willert (1997) and Lawson & Wu (1997a) used 5 mm rulings. Soloff et al. (1997) used a 12 × 12 grid of 1 mm white circles at 5 mm pitch on black. Westerweel & van Oord (1999) used black dots on white. The author prints white-dot transparencies on an imagesetter at up to 3600 dpi. The target should cover the whole region of interest (p. 113).
    - Grid points are found by template matching (for rulings, cross-correlation with a "+" mask; Willert 1997) and a sub-pixel curve fit, the same steps as PIV interrogation (p. 113).
    - A first-order map (magnification plus shift) cannot handle non-uniform magnification. Westerweel & van Oord (1999) used a second-order polynomial with 6 + 6 coefficients from linear least squares, which extends easily to higher order (p. 113).
    - Willert (1997) fitted a projective map (8 coefficients, a₃₃ = 1, which keeps lines straight) and a higher-order rational map (17 coefficients), both by nonlinear least squares. The higher-order map was not noticeably better, which he attributes to lenses with little distortion. Uniquely, he mapped the particle images themselves to the object plane and interrogated there, instead of interrogating first and mapping the displacements (Westerweel & Nieuwstadt 1991; Westerweel & van Oord 1999) (p. 114).
    - Users: Westerweel & Nieuwstadt (1991), Willert (1997), Lawson & Wu (1997b), Synnergren (1997), Westerweel & van Oord (1999), Lecerf et al. (1999). The final combination still needs geometry (lens separation, object distance, camera angles), and refraction terms unless a liquid prism restores paraxial recording (p. 114).
  - **3-D calibration** (Soloff et al. 1997; Fig. 11c, p. 114–115): no geometry is needed at any stage.
    - The target is imaged at three z positions (in the object plane, behind it and in front of it), separated by about the sheet thickness. X = F(x) (eq. 12) is fitted as a polynomial cubic in x₁, x₂ and quadratic in x₃ (only three planes), with four coefficient sets, one per image component per camera.
    - Displacements follow from ΔX ≈ ∇F(x)Δx, a 4 × 3 system (eq. 13), solved by least squares or by averaging the redundant y-equations for symmetric cameras (p. 114–115).
    - Later users: Hill et al. (1999), with five z-planes and a quartic in z (cubic in-plane), around a Rushton turbine; Bjorkquist (1998), with up to nine planes 0.5 mm apart (p. 115).
    - Camera symmetry and system geometry no longer need to be known or built precisely; "such imperfections are rendered harmless" (p. 115).
- **Trends and the open problem** (p. 115).
  - CCD sensors are the trend, although large-format film is still needed for very high resolution. Scheimpflug needs a tilt adapter, built in-house by Willert (1997) and Westerweel & van Oord (1999) and supplied in the TSI and Dantec commercial systems (both 1998), which also use calibration-based reconstruction.
  - **Target–sheet misalignment.** Willert (1997) mapped two simultaneous single-pulse views to the object plane and cross-correlated them; perfect alignment would give zero vectors everywhere. He found deviations above 10 px towards the edges, although the calibration grids overlapped to better than 1 px. A target rotation below 0.6° produced the ten-pixel horizontal misalignment, i.e. misregistration of up to 1 mm. Willert recommends a calibration that aligns the target with the sheet more reliably.
  - The literature has no other study of these errors, and a "thorough error-analysis" of 2-D and 3-D calibration-based reconstruction is needed (p. 115).

## Setup / method
This is a review with no new data. Its working content is an imaging model, an error-propagation model and a set of calibration models.

- **Scope** (p. 103): (3, 2, 0) methods only, in Hinsch's (1995) (k, l, m) labels: k = 1–3 velocity components, l = 0–3 spatial dimensions, m = 0 or 1 for instantaneous or continuous time recording. The focus is stereo systems with high-density correlation PIV; non-stereo (3, 2, 0) methods are covered briefly for comparison.
- **Imaging model** (Figs. 1–3, p. 103–106):
  - Thin lens; object distance d_o to the middle of the sheet, image distance d_i, nominal magnification M_n = d_i/d_o (p. 103).
  - Paraxial recording without refractive-index jumps, unless stated (liquid layers need ray tracing or a liquid prism).
  - A single particle starting on z = 0. This stands in for the volume average over the interrogation spot, to O((Δz_o/d_o)²) (p. 104).
  - Translation system: lenses at ±S/2 from the system axis. Angular system: axes rotated by θ to meet at O′ on the sheet, and the image plane tilted by α for Scheimpflug.
- **Error-propagation model** (p. 110): linear, first-order propagation of independent errors through eqs. 3–5, with perfect registration. It splits interrogation error (σ_ΔX, σ_ΔY) from geometric error (σ_x, σ_y, σ_S, σ_Mn, σ_do). It does not cover registration, refraction or lens distortion, and it gives the error ratio only for the translation geometry. The off-axis results for both systems come from Lawson & Wu (1997a).
- **Calibration models** (p. 113–115):
  - 2-D maps: polynomials (Westerweel & van Oord 1999) or rational and projective functions (Willert 1997), fitted by linear or nonlinear least squares to a grid of target points located to sub-pixel accuracy.
  - 3-D map (Soloff et al. 1997): a polynomial in (x₁, x₂, x₃) fitted to targets at three or more z, with a first-order Taylor expansion for displacements. This linearisation assumes the particle displacement is small against the length over which ∇F changes.
- **Reconstruction pipeline** (Fig. 11, p. 112): interrogate each view on a Cartesian image grid → map positions and displacements to the object plane (ray tracing, 2-D map or 3-D map) → find the common area and inscribe a Cartesian grid → interpolate each camera onto it → combine with the reconstruction equations (geometric and 2-D) or invert ∇F (3-D).
- **Data dependence.** Stereo PIV is an instantaneous measurement (m = 0); whether a data set is time-resolved depends only on the laser and cameras, not on the stereo method. Every step above acts on single snapshots and needs no time series. The calibration needs images of a target in the sheet (2-D) or a target traversed in z (3-D), taken through the same optics, windows and liquid as the flow images.
- **Numbers that define the configurations** (from the cited works): θ ≈ 15° typical for translation (p. 105); θ = 20°, 35° and 45° in the Scheimpflug systems of Hill et al., Willert and Westerweel & van Oord (p. 111); sheet thickness of about 1 mm (p. 104) or 2 mm (Raffel et al. 1996, p. 109); d_o = 247 mm in Prasad & Adrian 1993a (p. 106).

## Key equations
Rebuilt from the rendered pages; page refs are journal pages.

- **Single-camera image displacement** (eq. 1, p. 104): $\Delta\mathbf X=\mathbf X_f-\mathbf X_i=\left(-M_n\dfrac{\Delta x+x\Delta z/d_o}{1-\Delta z/d_o},\;-M_n\dfrac{\Delta y+y\Delta z/d_o}{1-\Delta z/d_o},\;0\right)$, with $M_f=d_i/(d_o-\Delta z)$. The apparent in-plane displacement is $\Delta\mathbf x'=\Delta\mathbf X/(-M_n)$.
- **Perspective error** (eq. 2, p. 104): $\epsilon=(\epsilon_x,\epsilon_y)=\left(\dfrac{\Delta x'}{\Delta x}-1,\dfrac{\Delta y'}{\Delta y}-1\right)=\left(\dfrac{\Delta z}{\Delta x}\tan\theta_x,\dfrac{\Delta z}{\Delta y}\tan\theta_y\right)$, with $\tan\theta_x=x/d_o$.
- **Sensor offset for maximum common area** (translation, p. 105): $D=(1+M_n)S$.
- **Translation reconstruction** (eqs. 3–5, p. 106):
  - $\Delta z=\dfrac{-d_o(\Delta X_1-\Delta X_2)}{M_nS-(\Delta X_1-\Delta X_2)}$ (3)
  - $\Delta x=\dfrac{\Delta X_1(x-S/2)-\Delta X_2(x+S/2)}{M_nS-(\Delta X_1-\Delta X_2)}$ (4)
  - $\Delta y=\dfrac{-y\Delta z}{d_o}+\dfrac{\Delta Y_1+\Delta Y_2}{2M_n}\left[\dfrac{\Delta z}{d_o}-1\right]$ (5). The fourth equation is used by averaging the Δy of the two cameras.
- **Scheimpflug magnification** (p. 106): $M_n=\tan\alpha/\tan\theta$.
- **Depth of field without Scheimpflug** (Adrian 1991, p. 107): $\delta z=4(1+M_n^{-1})^2f^{\#2}\lambda$.
- **Liquid-prism object distance** (p. 108): $d_o=\dfrac{1}{\mu}(d_l+d_p)\cos\theta+d_a$, with μ the refractive index of the liquid and d_l, d_p, d_a the liquid, prism and air path lengths of Fig. 8.
- **Defocusing** (Stolz & Köhler 1994, p. 110): $\Delta z=f^{\#}\dfrac{1+M}{M^2}\Delta D$.
- **Error propagation** (eqs. 6–8, p. 110):
  - $\left[\dfrac{\sigma_{\Delta z}}{\Delta z}\right]^2=(\sigma_{\Delta X_1}^2+\sigma_{\Delta X_2}^2)\left[\dfrac{d_o}{M_nS\Delta z}\right]^2+\left[\dfrac{\sigma_S}{S}\right]^2+\left[\dfrac{\sigma_{M_n}}{M_n}\right]^2+\left[\dfrac{\sigma_{d_o}}{d_o}\right]^2$ (6)
  - $\left[\dfrac{\sigma_{\Delta x}}{\Delta x}\right]^2=\left[\dfrac{\sigma_{\Delta X_1}(x-\frac S2)}{M_nS\Delta x}\right]^2+\left[\dfrac{\sigma_{\Delta X_2}(x+\frac S2)}{M_nS\Delta x}\right]^2+\left[\dfrac{\sigma_{M_n}}{M_n}\right]^2+\left[\dfrac{\sigma_S}{S}\dfrac{\Delta z}{\Delta x}\dfrac{x}{d_o}\right]^2+\left[\dfrac{\sigma_x}{d_o}\dfrac{\Delta z}{\Delta x}\right]^2$ (7)
  - $\left[\dfrac{\sigma_{\Delta y}}{\Delta y}\right]^2=(\sigma_{\Delta X_1}^2+\sigma_{\Delta X_2}^2)\left[\dfrac{y}{M_nS\Delta y}\right]^2+(\sigma_{\Delta Y_1}^2+\sigma_{\Delta Y_2}^2)\left[\dfrac{1}{2M_n\Delta y}\right]^2+\left[\dfrac{\sigma_{M_n}}{M_n}\left(1+\dfrac{\Delta z\,y}{\Delta y\,d_o}\right)\right]^2+\left[\dfrac{\sigma_S}{S}\dfrac{\Delta z}{\Delta y}\dfrac{y}{d_o}\right]^2+\dfrac12\left[\dfrac{\sigma_y}{d_o}\dfrac{\Delta z}{\Delta y}\right]^2$ (8)
- **Interrogation-only errors**, with $\sigma_{\Delta X_1}=\sigma_{\Delta X_2}=\sigma_{\Delta Y_1}=\sigma_{\Delta Y_2}=\sigma_{\Delta X}$ (p. 110): $\sigma_{\Delta z}\approx\sqrt2\left[\dfrac{d_o}{MS}\right]\sigma_{\Delta X}$; $\sigma_{\Delta x}\approx\dfrac{1}{\sqrt2}\left[\dfrac1M\right]\sigma_{\Delta X}$ (x = 0); $\sigma_{\Delta y}\approx\dfrac{1}{\sqrt2}\left[\dfrac1M\right]\sigma_{\Delta X}$ (y = 0).
- **Error ratio** (eq. 9, p. 110), at x = y = 0: $\dfrac{\sigma_{\Delta z}}{\sigma_{\Delta x}}=\dfrac{\sigma_{\Delta z}}{\sigma_{\Delta y}}=2\dfrac{d_o}{S}=\dfrac{1}{\tan\theta}$.
- **Mappings** (p. 111, 113–114):
  - Geometric: $\mathbf x=\mathbf f(\mathbf X)$ (10). 2-D calibration: $\mathbf x_i=\mathbf f(\mathbf X_i)$, i = 1…n target points (11).
  - First order: $x=M_xX+C_x$, $y=M_yY+C_y$.
  - Second order (Westerweel & van Oord 1999): $x=a_1X^2+a_2Y^2+a_3XY+a_4X+a_5Y+a_6$, and the same for y with $b_1\dots b_6$. Solved as $\mathbf A\mathbf a=\mathbf x$, $\mathbf B\mathbf b=\mathbf y$ by least squares, with rows $[X_i^2\;Y_i^2\;X_iY_i\;X_i\;Y_i\;1]$ (A = B).
  - Projective (Willert 1997): $x=\dfrac{a_{11}X+a_{12}Y+a_{13}}{a_{31}X+a_{32}Y+a_{33}}$, $y=\dfrac{a_{21}X+a_{22}Y+a_{23}}{a_{31}X+a_{32}Y+a_{33}}$, with $a_{33}=1$ (8 coefficients).
  - Higher-order rational (Willert 1997): numerators $a_{k1}X+a_{k2}Y+a_{k3}+a_{k4}X^2+a_{k5}Y^2+a_{k6}XY$ (k = 1 for x, 2 for y) over the common denominator $a_{31}X+a_{32}Y+a_{33}+a_{34}X^2+a_{35}Y^2+a_{36}XY$, with $a_{33}=1$ (17 coefficients).
- **3-D calibration** (Soloff et al. 1997; eqs. 12–13, p. 114): $\mathbf X=\mathbf F(\mathbf x)$ (12), with
  $\hat{\mathbf F}(\mathbf x)=\mathbf a_0+\mathbf a_1x_1+\mathbf a_2x_2+\mathbf a_3x_3+\mathbf a_4x_1^2+\mathbf a_5x_1x_2+\mathbf a_6x_2^2+\mathbf a_7x_1x_3+\mathbf a_8x_2x_3+\mathbf a_9x_3^2+\mathbf a_{10}x_1^3+\mathbf a_{11}x_1^2x_2+\mathbf a_{12}x_1x_2^2+\mathbf a_{13}x_2^3+\mathbf a_{14}x_1^2x_3+\mathbf a_{15}x_1x_2x_3+\mathbf a_{16}x_2^2x_3+\mathbf a_{17}x_1x_3^2+\mathbf a_{18}x_2x_3^2$.
  - $\Delta\mathbf X=\mathbf F(\mathbf x+\Delta\mathbf x)-\mathbf F(\mathbf x)\approx\nabla\mathbf F(\mathbf x)\Delta\mathbf x$, with $(\nabla\mathbf F)_{ij}=\partial F_i/\partial x_j=F_{i,j}$, i = 1, 2, j = 1, 2, 3.
  - $\begin{bmatrix}\Delta X_1^{(1)}\\\Delta X_2^{(1)}\\\Delta X_1^{(2)}\\\Delta X_2^{(2)}\end{bmatrix}=\begin{bmatrix}F^{(1)}_{1,1}&F^{(1)}_{1,2}&F^{(1)}_{1,3}\\F^{(1)}_{2,1}&F^{(1)}_{2,2}&F^{(1)}_{2,3}\\F^{(2)}_{1,1}&F^{(2)}_{1,2}&F^{(2)}_{1,3}\\F^{(2)}_{2,1}&F^{(2)}_{2,2}&F^{(2)}_{2,3}\end{bmatrix}\begin{bmatrix}\Delta x_1\\\Delta x_2\\\Delta x_3\end{bmatrix}$ (13); superscripts are cameras.

> **Checks (my arithmetic and derivations, not in the paper).**
> - **Eqs. 1, 3–5 are consistent.** With camera 1's lens at x = −S/2 and camera 2's at +S/2, eq. 1 applied to each camera gives eqs. 3, 4 and 5 exactly, including the signs and the (1 − Δz/d_o) factors.
> - **Eq. 2 is first order.** Its second equality is approximate: exactly, $\epsilon_x=\dfrac{\Delta z}{\Delta x}\,\dfrac{\tan\theta_x+\Delta x/d_o}{1-\Delta z/d_o}$, so terms of order Δx/d_o and Δz/d_o are dropped. The paper prints "=".
> - **Eq. 9 values:** 1/tan θ = 11.4, 5.67, 3.73, 2.75, 1.73, 1.43 and 1.00 at θ = 5°, 10°, 15°, 20°, 30°, 35° and 45°. These match the x/d_o = 0 intercepts of Fig. 10b (read from the figure, about 11.4, 5.7, 3.8, 2.8, 1.8 and 1.0). Prasad & Adrian's 4 µm/1 µm ratio corresponds to θ ≈ 14°.
> - **Fig. 10a has a closed form.** From eqs. 6–7 with interrogation errors only, σ_Δz = √2 σ_ΔX d_o/(M_nS) does not depend on x, while σ_Δx = (σ_ΔX/M_n)√(1/2 + 2x²/S²). The ratio is therefore $\sigma_{\Delta z}/\sigma_{\Delta x}=1/\sqrt{(x/d_o)^2+(S/2d_o)^2}$, which reproduces Fig. 10a: 10, 5, 3.3, 2.5 and 2 on axis for S/2d_o = 0.1–0.5, and 1.96–1.41 at x/d_o = 0.5 (about 2–1.5 read from the figure).
>   - **So the falling ratio is the in-plane error growing**, not the out-of-plane error shrinking. The in-plane result inherits the Δz noise through the perspective correction xΔz/d_o. For S/2d_o = 0.1, σ_Δx at x/d_o = 0.5 is about five times its on-axis value.
>   - The paper's "θ < 10°" threshold for tan θ < 0.2 is actually 11.3°.
> - **Fig. 5 has a closed form.** The curves match the thin-lens point magnification $M/M_n=1/[1+(1+M_n)(x/d_o)\sin\theta]$. At x/d_o = ±0.2 this gives 1.115/0.906 (θ = 15°, M_n = 1), 1.25/0.83 (30°, 1), 1.39/0.78 (45°, 1) and 1.20/0.85 (45°, 0.2), all within reading accuracy of the figure. The same thin-lens model confirms tan α = M_n tan θ for the image-plane tilt.
> - **Depth of field.** At M_n = 0.2, f/8 and 532 nm, δz = 4.9 mm. Covering the ±25 mm object-distance change of a 100 mm field at θ = 30° without Scheimpflug would need about f/26. This is why Scheimpflug is standard.
> - **Liquid prism.** arcsin(1/1.333) = 48.6°, consistent with the 49° total-internal-reflection limit quoted for water into air.
> - **Soloff polynomial.** It has 19 terms: all monomials up to degree 3 in three variables except x₃³. With four coefficient sets that is 76 scalar coefficients; a 12 × 12 target at three planes gives 432 points per camera.
> - **"Small f-numbers"** (p. 106), as printed, is the reverse of what reducing aberration normally needs (a smaller aperture, i.e. a larger f-number), and of the p. 104–105 remark about not reducing the aperture. Check the wording against Prasad & Adrian (1993a).
> - **Eq. 8.** The last term carries a factor ½ that its eq. 7 counterpart lacks, presumably because Δy averages two cameras (eq. 5). The σ_ΔY prefactor uses 1/(2M_nΔy). As printed; not re-derived.

## Data tables
**Out-of-plane to in-plane error ratio** (eq. 9; my arithmetic), with the half-angles of the systems cited (p. 105–106, 111):

| θ | σ_Δz/σ_Δx = 1/tan θ | Used by (as cited) |
|---|---|---|
| 5° | 11.4 | lower end of Fig. 10b |
| 10° | 5.67 | — |
| ≈ 15° | 3.73 | typical translation systems: Prasad & Adrian 1993a (measured 4), Arroyo & Greated 1991, Soloff et al. 1997 (3–4) |
| 20° | 2.75 | Hill et al. 1999 (Scheimpflug, 3-D calibration with 5 z-planes) |
| 30° | 1.73 | — |
| 35° | 1.43 | Willert 1997 (Scheimpflug, cameras either side of the sheet, 2-D calibration) |
| 45° | 1.00 | Westerweel & van Oord 1999 (Scheimpflug, liquid prism, TBL); upper end for Lawson & Wu 1997b |

**Configurations compared** (p. 104–110):

| Configuration | Strengths | Weaknesses | Reported accuracy |
|---|---|---|---|
| Translation | uniform magnification; single-camera depth of field; direct superposition | θ limited by lens performance; small common area unless sensors offset | out-of-plane 3–4× in-plane at θ ≈ 15° (p. 105) |
| Angular, no Scheimpflug | larger θ | depth of field forces large f#; non-uniform magnification; opposite stretching | — |
| Angular, Scheimpflug | larger θ, focus across the field | strongest non-uniformity (Fig. 5); needs a tilt adapter; interpolation to a common grid | ratio 1/tan θ (Zang & Prasad 1997) |
| Angular, cameras either side (Willert 1997) | both in forward scatter, equal SNR, identical stretching | interpolation still needed | θ = 35° |
| Hybrid (Gaydon et al. 1997) | larger θ than translation, less non-uniformity than rotation | optimisation per application | — |
| In-line (Grant et al. 1995) | fast particle matching | tiny angle difference; dead zone near centre | σ_Δz/d_o ≈ 300× Prasad & Adrian 1993a |
| Dual-plane (Raffel et al. 1996) | one camera, easy | needs stable sheet profile; loss of pairs costs resolution | 4–8% of Δz_o = 2 mm |
| Three-pinhole defocusing (Willert & Gharib 1992) | one camera, thin volume | effective angle ≈ d/d_o; low density; mask blocks light | out-of-plane 40× in-plane |
| Defocus diameter (Stolz & Köhler 1994) | one camera | up to 5 exposures; low density | 10% std in w |

**Reconstruction methods** (p. 111–115):

| Method | Calibration images | Geometry needed | Handles | Used by (as cited) |
|---|---|---|---|---|
| Geometric | none | d_o, M_n, S, both sensors' 3-D position and orientation, refraction model | only what can be modelled | Arroyo & Greated 1991; Prasad & Adrian 1993a, b; Zang & Prasad 1997 |
| 2-D calibration | target in the sheet plane | yes, in the final combination (S, d_o, camera angles) | non-uniform magnification and image-plane imperfections; refraction only with a prism or modified equations | Westerweel & Nieuwstadt 1991; Willert 1997; Lawson & Wu 1997b; Synnergren 1997; Westerweel & van Oord 1999; Lecerf et al. 1999 |
| 3-D calibration | target at ≥ 3 z positions | none | any geometry, asymmetric cameras, unmodellable optics | Soloff et al. 1997 (3 planes); Hill et al. 1999 (5); Bjorkquist 1998 (up to 9, 0.5 mm apart) |

## Figures worth remembering
- **Fig. 1 (p. 104):** single-camera geometry: an out-of-plane move Δz of an off-axis particle images as an extra in-plane displacement.
- **Fig. 2 (p. 105):** translation stereocamera geometry behind eqs. 3–5 (lenses at ±S/2, ΔX₁ and ΔX₂).
- **Fig. 3 (p. 105):** (a) translation and (b) angular-displacement systems, with θ, α, d_o, d_i and the sensor offset D.
- **Fig. 4 (p. 106):** Arroyo & Greated's mirror system putting both views on one sensor.
- **Fig. 5 (p. 107):** normalised local magnification against x/d_o for Scheimpflug systems at θ = 15°, 30° and 45°, M_n = 0.2–1.0. The reference for how much the magnification varies.
- **Fig. 6 (p. 107):** oppositely stretched trapezoids from square image-plane grids. Why interpolation to a common grid is unavoidable.
- **Fig. 7 (p. 108):** Willert's cameras on either side of the sheet, both in forward scatter.
- **Fig. 8 (p. 108):** Scheimpflug camera with liquid prism (Prasad & Jensen 1995).
- **Fig. 9 (p. 109):** in-line stereo arrangement with a semi-silvered mirror.
- **Fig. 10 (p. 111):** out-of-plane/in-plane error ratio against x/d_o for (a) translation, S/2d_o = 0.1–0.5, and (b) angular, θ = 5°–45° (data of Lawson & Wu 1997a).
- **Fig. 11 (p. 112):** flow charts of geometric, 2-D calibration and 3-D calibration reconstruction. The practical checklist.

## Notation
- x = (x, y, z) or (x₁, x₂, x₃): object-plane coordinates (z normal to the sheet, z = 0 its mid-plane); X = (X, Y) or (X₁, X₂): image-plane coordinates; Δx, Δy, Δz: true particle displacements; ΔX_j, ΔY_j: image displacements in camera j; Δx′: apparent in-plane displacement.
- d_o, d_i: object and image distances; M_n = d_i/d_o: nominal magnification (M in the error formulas); M_f: magnification of the displaced particle; M/M_n: normalised local magnification.
- θ: off-axis (stereo half-) angle, with projections θ_x, θ_y; α: image-plane tilt for Scheimpflug; S: lens separation; D: sensor-centre separation.
- Δz_o: light-sheet thickness; δz: depth of field; f#: f-number; λ: laser wavelength; μ: refractive index of the test liquid; d_l, d_p, d_a: path lengths in liquid, prism and air.
- ε = (ε_x, ε_y): perspective error; σ_(·): standard deviation of the quantity in the subscript.
- f, F: image↔object mapping functions (2-D and 3-D); a_i, b_i, a_kl: mapping coefficients; ∇F, F_{i,j}: mapping gradient; superscripts (1), (2): cameras.
- (k, l, m): Hinsch's labels for velocity components, spatial dimensions and time recording.

## Relevance to this project
This is the standard reference on the geometry and error budget of stereo PIV, written when digital Scheimpflug systems with target calibration were becoming the norm. In the user's workflow (CLAUDE.md) PIV is the non-time-resolved diagnostic. The paper's main lessons for the [diagnostics-and-facilities](../Topics/diagnostics-and-facilities.md) thread are when a second camera is needed, what accuracy it buys, and which calibration error it introduces.

**How it sits with the other notes**
- **Calibration and alignment.**
  - [Shehzad et al. 2021](shehzad-2021-laser-sheet-alignment-piv.md) is the answer two decades later to the open problem Prasad closes on (p. 115). It cites the same Willert (1997) 0.6° rotation and aligns the sheet to the target *before* calibrating, reaching 0.09 px stereo uncertainty without post-correction (Shehzad p. 3, 12–13).
  - The other later fix is disparity-based self-calibration ([Wieneke 2005](wieneke-2005-stereo-piv-self-calibration-particle-images.md), Exp. Fluids), which Shehzad argues can leave a bias of unknown source.
  - Prasad's review predates both, so its recommendation that calibration-based reconstruction is "simpler" and "may be less susceptible to errors" (p. 115) should be read with the misalignment caveat attached.
- **Distortion and mapping order.**
  - [Sun et al. 2021](sun-2021-distortion-correction-large-sensor-piv.md) found a bicubic polynomial better than a second-order rational map for a strongly distorting large-sensor lens (Sun p. 8, 12). Willert (1997) found the higher-order map no better, which he put down to distortion-free lenses (p. 114). The two results agree once the lens is taken into account: the map order should follow the lens distortion, not habit.
  - Sun's recommended "Method II" (interrogate raw images, then map the vector positions) is the interrogate-then-map route of Westerweel & Nieuwstadt (1991) and Westerweel & van Oord (1999). Willert's map-then-interrogate route is the counterpart of Sun's "Method I" dewarping. Sun found the two equivalent for planar PIV; Prasad does not compare them.
- **Stereo PIV in jets in the library.**
  - [Alkislar et al. 2003](alkislar-2003-screeching-rectangular-jet-stereo-piv.md) used motorised Scheimpflug mounts with about 90° between the camera axes, i.e. θ ≈ 45°, chosen for reconstruction accuracy (Alkislar p. 126–127). That is Prasad's error-balancing angle (p. 111).
  - The Pprime M 0.4 jet cross-planes ([Cavalieri et al. 2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md), p. 563–564) put one camera upstream and one downstream of the sheet, both in forward scatter. This is Willert's either-side arrangement (Fig. 7, p. 107–108), which gives equal SNR and identical stretching. The dual-plane rig of [Jaunet et al. 2017](jaunet-2017-two-point-coherence-wave-packets-turbulent-jets.md) used Scheimpflug adaptors and a 30° angle limited by optical access near the nozzle (Jaunet p. 2–4). Whether that angle is θ, and so whether the eq. 9 ratio is about 1.7 or below 1, should be checked in that note.
  - [Oberleithner et al. 2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md) used two cameras at 45° for non-TR planes (Oberleithner p. 6–7).
  - Each follows the recommended configuration. None reports the out-of-plane to in-plane error ratio or a misregistration check, as far as the notes record.
- **Perspective error in planar PIV of shocked flows.** [Ragni et al. 2011](ragni-2011-particle-tracer-response-shocks-piv.md) tilt the line of sight 2–5° upstream to reduce aero-optical blur (Ragni p. 57–58). By eq. 2 that adds an in-plane error of w tan θ, i.e. 3.5–9% of the out-of-plane velocity (my arithmetic). This is negligible in a 2-D wedge flow but not in a 3-D jet.
- **The missing third component.** [Tan et al. 2019a](tan-2019-correlation-analysis-piv-screeching-jets.md) take w′ statistics from statistical axisymmetry, and their 3333, 1313 and 2323 correlation components could not be evaluated (Tan p. 9, 19–20). Stereo PIV is the direct way to measure them; the error ratio of eq. 9 says how much noisier w′ would be.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Stereo PIV is a snapshot method.** Reconstruction works on single snapshots, so stereo adds a component but no time information. Non-TR stereo PIV feeds the non-TR branch of the workflow: statistics, POD and POD-pair phase (a 3-D helix built from planes in Oberleithner 2011), microphone-triggered phase averages (Alkislar 2003), and space-only HPOD ([Raiola & Kriegseis 2025](raiola-2025-hilbert-pod.md)). Time-resolved stereo PIV feeds SPOD and BMD with all three components, as in the azimuthally decomposed SPOD and resolvent comparisons of [Nogueira et al. 2019](nogueira-2019-large-scale-streaky-structures-jets.md) and [Lesshafft et al. 2019](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md).
- **When the group needs it (my assessment).**
  - The group's jet PIV campaigns on the topic page are planar and two-component (e.g. the 2D-2C data of Tan et al. 2019a).
  - For the toroidal A1/A2 modes the coherent out-of-plane velocity in a centre plane is small by symmetry, so planar PIV loses little.
  - For flapping and helical B, C and twin-jet modes, w′ is comparable to v′. Eq. 2 then puts w′ tan θ_edge into the in-plane modes at the field edges. A 4–8° field half-angle (typical of a long lens on a large sensor; my estimate) gives 7–14% of w′. The mean field and ⟨v′v′⟩ in a statistically symmetric jet are affected only at order tan²θ (≤ 2% of ⟨w′w′⟩), but POD pair shapes and phase averages are affected at first order.
  - Cross-planes (twin-jet coupling, azimuthal decomposition, rectangular-jet streamwise vortices) need stereo, because the main velocity is out of plane.
  - In a supersonic jet the out-of-plane displacement in a cross-plane is large: 495 m s⁻¹ × 1–1.5 µs ≈ 0.5–0.75 mm in Alkislar's conditions (my arithmetic). That is a large fraction of a 1–2 mm sheet, so the loss of pairs sets Δt and the sheet thickness. Prasad discusses loss of pairs only for dual-plane PIV (p. 109).
- **Misregistration is the dominant stereo risk in shock-containing jets.** Willert's 1 mm misregistration (p. 115) is 0.07–0.1D on the group's 10–15 mm nozzles, three to four times the 0.025D final windows (my arithmetic). Prasad notes that registration errors grow with spatial gradients (p. 111), and shocks and thin shear layers are where the gradients are largest. Align the sheet before calibrating (Shehzad 2021) or self-calibrate, and run Willert's single-pulse cross-camera correlation as a check.
- **Anisotropic noise in modal decompositions.** At θ = 30° the w noise variance is (1/tan θ)² ≈ 3 times that of u and v (my arithmetic). POD and SPOD with equal component weights will put more noise into modes with strong w. The fix is to check convergence per component, or to weight the components. In the SPOD → reconstruction → HPOD pipeline, band-limited reconstruction before HPOD suppresses this broadband noise, which helps the w component most.
- **Optical access.** Off-axis viewing through tunnel windows or through a shocked jet is the gas-phase analogue of the liquid–air interface problem (p. 106, 108). The two views take different paths through the density gradients, so their aero-optical errors differ. 3-D calibration through the same window (p. 113–115) absorbs static refraction, but not the moving shocks.

**Modelling side**
There is no flow model. The paper's models are the thin-lens paraxial imaging model (eqs. 1–5), the linear error propagation with independent errors and perfect registration (eqs. 6–9), and least-squares polynomial or rational calibration maps (eqs. 11–13).
- **Assumptions to keep in mind:**
  - The 1/tan θ law is an on-axis, interrogation-only result.
  - Off-axis behaviour comes from Lawson & Wu (1997a), and my closed form above shows that the translation-system "improvement" off-axis is in-plane degradation.
  - Registration, refraction and lens distortion are all excluded.
  - Soloff's method linearises the displacement through ∇F.
- **Ray tracing.** Prasad & Adrian (1993a) and Prasad & Jensen (1995) ray-traced the imaging, the stereo counterpart of the light-ray modelling used for synthetic schlieren on [schlieren-and-density-imaging](../Topics/schlieren-and-density-imaging.md).
- **A test the PyFR staging LES could provide.** Render synthetic stereo particle images from the LES velocity field of a screeching jet, reconstruct them with a deliberately misaligned calibration, and measure the misregistration error near the shock cells. Repeating this for planar PIV with a realistic field half-angle would show how much perspective error the group's planar POD pairs carry for helical modes. Neither test has been run; both are suggestions.

**Related works cited, candidates for `/add-paper`:** Soloff, Adrian & Liu 1997 (Meas. Sci. Technol. 8, 3-D calibration; now [indexed](soloff-1997-distortion-compensation-generalized-stereoscopic-piv.md)) and Willert 1997 (Meas. Sci. Technol. 8, stereo DPIV in wind tunnels; now [indexed](willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md)); Lawson & Wu 1997a, b (Meas. Sci. Technol. 8, stereo error analysis and experiments); Prasad & Adrian 1993a (Exp. Fluids 15, stereo PIV in liquids); Prasad & Jensen 1995 (Appl. Opt. 34, Scheimpflug camera and liquid prism); Zang & Prasad 1997 (Appl. Opt. 36, Scheimpflug performance); Westerweel & van Oord 1999 (stereo PIV in a TBL); Hinsch 1995 (Meas. Sci. Technol. 6, 3-D particle velocimetry); Raffel et al. 1996 (Opt. Eng. 35, dual-plane PIV); Willert & Gharib 1992 (Exp. Fluids 12, three-pinhole defocusing); Gaydon et al. 1997 (Exp. Fluids 23, hybrid stereo); Prasad et al. 1992 (Exp. Fluids 13, interrogation error). Later works on the same open problem: Wieneke 2005 (self-calibration; now [indexed](wieneke-2005-stereo-piv-self-calibration-particle-images.md)).
