---
key: "soloff-1997-distortion-compensation-generalized-stereoscopic-piv"
title: "Distortion compensation for generalized stereoscopic particle image velocimetry"
authors: ["Soloff, S. M.", "Adrian, R. J.", "Liu, Z.-C."]
year: 1997
type: "article"
venue: "Meas. Sci. Technol. 8(12), 1441–1454"
bib: {"journal": "Measurement Science and Technology", "volume": "8", "number": "12", "pages": "1441--1454"}
doi: "10.1088/0957-0233/8/12/008"
arxiv: ""
pdf: "diagnostics-and-facilities/Soloff-EtAl_1997_Distortion-Compensation-For-Generalized-Stereoscopic-Particle-Image-Velocimetry.pdf"
version: "published"
unverified: ["DOI from memory: the PDF prints only the PII S0957-0233(97)84194-X", "issue number 12 inferred from the article code 0957-0233/97/121441+14 printed on p. 1441"]
group: false
facility: "University of Illinois at Urbana-Champaign, Dept. of Theoretical and Applied Mechanics (bench tests: printed particle pattern on a translation stage, imaged through deliberate distortion)"
data: ["PIV", "PIV-stereo", "synthetic"]
methods: ["calibration"]
flow: ["generic"]
phenomena: []
params: {"mapped domain": "55.8 × 55.8 mm (single camera); 72 × 72 × 1 mm (stereo)", "calibration planes": "x3 = 0 (single); x3 = 0, ±0.500 mm (stereo)", "test displacement": "(0.5, 1.0, 0) mm single; (0, 1.0, −0.4) mm stereo", "mapping RMS": "0.53 px single; 1.1 and 1.2 px stereo"}
topics: ["diagnostics-and-facilities"]
related: ["shehzad-2021-laser-sheet-alignment-piv", "sun-2021-distortion-correction-large-sensor-piv", "alkislar-2003-screeching-rectangular-jet-stereo-piv", "jaunet-2017-two-point-coherence-wave-packets-turbulent-jets", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "willert-1991-digital-particle-image-velocimetry", "willert-1997-stereoscopic-dpiv-wind-tunnel-flows", "prasad-2000-stereoscopic-piv-review", "wieneke-2005-stereo-piv-self-calibration-particle-images"]
cites: []
summary: "Soloff method: per-camera polynomial map X = F(x), cubic in x1,x2 and quadratic in x3 from 3 target planes; 3C displacement by least squares on 4×3 ∇F system"
---
# Distortion compensation for generalized stereoscopic particle image velocimetry

- **Authors:** S. M. Soloff, R. J. Adrian and Z.-C. Liu, Department of Theoretical and Applied Mechanics, University of Illinois at Urbana-Champaign (p. 1441). Not Shock Lab group work.
- **Source:** Measurement Science and Technology 8, 1441–1454 (1997); received 15 May 1997, accepted 12 September 1997 (p. 1441). DOI 10.1088/0957-0233/8/12/008 (from memory; the PDF prints only the PII). Supported by TSI Inc. and the Office of Naval Research (p. 1454).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/diagnostics-and-facilities/Soloff-EtAl_1997_Distortion-Compensation-For-Generalized-Stereoscopic-Particle-Image-Velocimetry.pdf` (index key `diagnostics-and-facilities/Soloff-EtAl_1997_Distortion-Compensation-For-Generalized-Stereoscopic-Particle-Image-Velocimetry.pdf`, 15 pp., publisher's version). PDF p. 1 is an IOP cover sheet. **Page refs below are journal pages; PDF page = journal page − 1439.** The text layer drops every Δ, ∇, overbar and superscript, so all equations were rebuilt from page renders (eqs. 7, 12, 15 and 18 at 250 dpi).
- **Tags:** stereoscopic PIV, PIV calibration, mapping function, Soloff polynomial, magnification matrix, image distortion, perspective error, out-of-plane contamination, paraxial imaging, angular-offset stereo, Scheimpflug, calibration target, multi-plane calibration, template matching, least squares, generalized inverse, user-defined grid, electronic registration, dewarping, inverse mapping, interrogation cell, volume averaging

## Summary
Soloff, Adrian and Liu replace the idealised lens geometry of earlier stereo-PIV reconstructions with an empirical mapping X = F(x), one per camera, from 3-D object space to the 2-D recording plane, found by imaging a calibration target. The mapping takes in lens imperfection, refraction by windows and fluid interfaces, and sensor misalignment (p. 1441–1442). Linearising the image displacement about the centre of each interrogation cell gives ΔX ≃ ∇F Δx, with ∇F a 2 × 3 "magnification matrix". One camera gives two equations for three unknowns, so its perspective terms F₁,₃ and F₂,₃ must be dropped, at a cost of up to about 10% of the out-of-plane velocity in a typical layout. Two cameras give four equations, solved by least squares for all three components (p. 1443–1447). F is fitted by least squares as a polynomial, cubic in the in-plane coordinates and quadratic in x₃, from target images at three x₃ planes. Displacements are wanted on a user-defined grid in the fluid, which is mapped forward into each image plane, so the nonlinear inverse map is never needed (p. 1447–1452). Bench tests through deliberately distorting optics give fluctuating displacement errors of a few 10⁻⁴ of the domain size in-plane and an out-of-plane absolute error about four times the in-plane one (p. 1452–1453). This is the standard "Soloff" calibration-based stereo reconstruction.

## Key findings
- **Distortion is a first-order velocity error.** A fractional change in magnification gives the same fractional error in velocity, so variable magnification is a systematic bias that calibration can remove (abstract, p. 1441–1442).
  - The paper names three causes: lens design imperfection; refraction by anything between the light sheet and the sensor (windows, fluid interfaces); and misalignment of the recording plane with the object plane (p. 1441).
  - Magnification is constant only if the image plane is parallel to the object plane, as in lateral-offset (translation) stereo (Arroyo & Greated 1991; Grant et al. 1995). It is never constant in angular-offset (Scheimpflug) stereo (Prasad & Jensen 1995) (p. 1441).
  - Distortion can be compensated even when focusing aberrations blur the particle images, provided image locations can still be measured (p. 1442).
- **Perspective error in single-camera PIV** (p. 1446):
  - For paraxial linear imaging the perspective terms are F₁,₃ = −(d_i/d_o)(x₁I/d_o) and F₂,₃ = −(d_i/d_o)(x₂I/d_o) (eq. 12). They are small only if the field of view is small compared with the object distance.
  - The paper's example is a 100 mm field at d_o = 500 mm, so x₁I/d_o runs from −0.1 to +0.1. In-plane components are then contaminated by up to 10% of the out-of-plane velocity; the error vanishes only for a flow with w = 0.
  - "Stereoscopic imaging provides the only unconditional solution" to the perspective problem (p. 1446).
- **The four-equation stereo system** (eq. 15, p. 1447) is not truly overdetermined when the data are error-free. For a pure x₃ displacement, both cameras see the same x₂ displacement and opposite x₁ displacements, so two equations are dependent. With random measurement error they are not exactly dependent, so a least-squares solution (eq. 16) is used (p. 1447).
- **Mapping polynomial** (eq. 18, p. 1447): 19 vector coefficients, cubic in x₁ and x₂ and quadratic in x₃.
  - The cubic in-plane order was a qualitative choice: grid lines seen through typical distorting media curve by roughly a constant amount (p. 1447–1448).
  - The quadratic x₃ order is set only by calibrating on three x₃ planes; more planes would allow higher orders, and more planes than the order would lower the fit error (p. 1448, 1451).
  - Splines are suggested for extremely severe distortion (p. 1447).
  - For a single camera only the x₃ = 0 plane is imaged, so the x₃ coefficients are not determined. This is acceptable because single-camera PIV has to ignore out-of-plane motion anyway (p. 1448–1449).
- **Electronic registration.** Calibration registers the two cameras mathematically, so the pixel arrays need no mechanical registration. This "permits rapid and easy set-up of angular-offset stereoscopic cameras" (p. 1442, 1453).
- **Forward mapping of a user grid.** The user grid {x_g} is mapped into each image plane, X_g = F(x_g), and the image displacements measured on the software's grid {X_I} are interpolated there (bilinear) (p. 1450). This avoids the inverse mapping of Prasad & Adrian (1993), who mapped the image-plane grid and displacements back into the fluid and then interpolated onto a common Cartesian grid (p. 1452).
  - A grid point is dropped if its image falls outside the sensor, or if a neighbouring interrogation point has no data. In stereo, a drop on either camera leaves a hole in the 3-C field (p. 1450–1451).
- **Single-camera test** (§5.1, p. 1452–1453; Figs. 7–9):
  - Mapping-function RMS error: 0.53 px, nominally 6.9 × 10⁻² mm in the object plane.
  - That is about 7% of the image diameter of the calibration marks, inside the 5–10% random error of locating particle-image centroids (Prasad et al. 1992). The authors conclude the cubic polynomial is adequate (p. 1452–1453).
  - Fluctuating displacement error: the legends' top bands are 2.5 × 10⁻⁴ (x₁, Fig. 8) and 3.5 × 10⁻⁴ (x₂, Fig. 9) of the 55.8 mm domain, i.e. 1.4 × 10⁻² and 2.0 × 10⁻² mm. The text calls the largest error "approximately 1/1000" of the domain (p. 1453; see the check below).
  - Patches of correlated error are attributed to the 75% overlap of interrogation spots (p. 1453).
  - The inverse mapping fitted to the same calibration image has an RMS error of 1.5 × 10⁻² mm and dewarps the grid of Fig. 7(a) into Fig. 7(b) (p. 1453).
- **Stereo test** (§5.2, p. 1453; Figs. 11–13):
  - Mapping RMS errors: 1.1 px (camera 1) and 1.2 px (camera 2), nominally 4.5 × 10⁻² and 5.1 × 10⁻² mm.
  - Fluctuating errors: in-plane up to 7 × 10⁻⁵ (x₁) and 5 × 10⁻⁵ (x₂) of the 72 mm domain, i.e. 5.0 × 10⁻³ and 3.6 × 10⁻³ mm. Out-of-plane up to 2 × 10⁻² of the 1 mm x₃ domain, i.e. 2.0 × 10⁻² mm (legend values).
  - The out-of-plane relative error is more than two orders of magnitude larger only because the x₃ domain is so thin. The absolute out-of-plane error is "only four times" the in-plane one, consistent with Prasad & Adrian (1993) (p. 1453).
  - In both tests the bias, i.e. the area-mean error, was "restricted to the least significant digit" and was removed before plotting (p. 1453). No number is given for it.

## Setup / method
**The procedure in three processes** (Figs. 3 and 5, p. 1444–1445):
- **Process A (standard PIV):** fluid medium → optical distortions → camera → frame grabber → image I(X) → interrogation on the software's grid {X_I} → ΔX({X_I}) → validation and clean-up. Any standard or commercial PIV package can do this step (p. 1450).
- **Process B (user grid):** choose the grid {x_g} in the fluid (x₃ = 0), map it to X_g = F(x_g), and interpolate ΔX onto {X_g}, giving ΔX({X_g}) (p. 1450).
- **Process C (calibration):** measure the image distortion, fit the least-squares polynomial X = F(x), and evaluate ∇F at {x_g}.
- **Combination:** for one camera, Δx({x_g}) = ∇F⁻¹ ΔX({X_g}) using the 2 × 2 in-plane block (eq. 11). For stereo, run A, B and C for each camera, form the augmented system ΔX_A = (∇F)_A Δx, and solve Δx({x_g}) = (∇F)_A⁺ ΔX_A({X_g}), where ⁺ is the generalized inverse (Fig. 5 caption, p. 1445).

**Calibration target and procedure** (§3–4, p. 1447–1451):
- **Target.** Characteristic marks on a precise, evenly spaced Cartesian grid. The marks should fill the whole field of view, out to the edges, for the best mapping accuracy (p. 1447).
  - Number of marks ∝ image area; grid cell size ∝ 1/(amount of distortion) (p. 1447).
  - An alternative is a single target point moved precisely by a stepper-motor arm (Kent et al. 1993), useful for deep volumes as in photogrammetric PTV (p. 1447).
- **Coordinates.** The object origin is one of the marks. The image origin is pixel (0, 0) of the CCD, or the lower-left corner of a photograph. The image frame X lies in the recording plane (X₃ = 0) with arbitrary orientation relative to the object plane (p. 1442, 1448).
- **Set-up.** The rig must be in exactly its measurement configuration, and the face of the target "aligned as precisely as possible with the centre of the light sheet" (p. 1448). The paper offers no way to detect or correct a residual offset or tilt between target and sheet.
- **Locating the marks.** Template matching: cross-correlate a template shaped like a mark with the calibration image, search for peaks, and fit a Gaussian or quadratic for sub-pixel position. For circular marks a local centroid can be used instead (p. 1448).
- **Fit.** Least squares for the coefficients of eq. 18, minimising the mean-square mapping error over the N_c target points (eq. 17).
- **Stereo.** Image the target at several planes parallel to the light sheet. A quadratic in x₃ needs at least three planes, separated by about the light-sheet thickness (p. 1451). Fit eq. 18 once per camera.
- **Unknowns against data (my arithmetic).** Each camera has 19 vector coefficients, i.e. 38 scalars, fitted here from 9 × 9 × 3 = 243 marks (486 equations). The single-camera fit has 10 vector coefficients (20 scalars) from 144 marks.

**Bench tests** (§5, p. 1452–1453; Figs. 6 and 10):

| | Single camera (§5.1) | Stereo camera (§5.2) |
|---|---|---|
| Distorting medium | two 450 mm focal-length lenses in series, between lens and object plane | water-filled fish tank ≈ 305 mm deep, between lenses and object plane |
| Target | 12 × 12 white circles on black, 1 mm diameter, 5.07 mm pitch | aluminium block with 9 × 9 holes, 0.5 mm diameter, 9 mm pitch, back-lit |
| Calibration planes | x₃ = 0 only | x₃ = 0.000, +0.500, −0.500 mm (each ±0.005 mm) |
| Mapped domain | 55.8 mm in x₁ and x₂ | 72 mm in x₁ and x₂, 1 mm in x₃ |
| Mapping RMS error | 0.53 px (6.9 × 10⁻² mm) | 1.1 px and 1.2 px (4.5 and 5.1 × 10⁻² mm) |
| Imposed displacement | Δx = (0.500, 1.000, 0.000) mm | Δx = (0.000, 1.000, −0.400) mm |
| Figures | 7–9 | 11–13 |

- **Test pattern.** A computer-generated pattern of randomly placed particles on a translation stage, imaged at a reference position and after a known displacement. The displacement uncertainty is ±5 µm, set by the mechanical indicator (p. 1452). There is no flow and no light sheet: the pattern stands in for a seeded sheet.
- **Interrogation.** TSI INSIGHT software, two-frame cross-correlation, then validation and filtering. 75% overlap of interrogation spots (single camera). The window size is not stated (p. 1452–1453).
- **Stereo geometry.** Two lenses view a joint field of view through the tank (Fig. 10). The camera configuration is in Liu et al. (1997), "to be published". This paper gives no viewing angle, lens or sensor data (p. 1453).
- **Error measure.** "Relative error" is the error divided by the size of the mapping domain in that direction; only the fluctuating part, after removing the area mean, is plotted (p. 1453).

**Modelling side.** No flow model, simulation or experiment on a real flow. The optical model and its assumptions:
- **Ideal imaging as the reference** (eqs. 1–2, 7, 12): a thin lens with chief rays through the lens centre; magnification M = d_i/(d_o − x₃). The perspective column of ∇F comes from the x₃ dependence of M (p. 1441, 1443).
- **The real imaging is not modelled physically.** It is fitted empirically by the polynomial F̂, whose coefficients have no physical meaning. Prasad & Adrian (1993) instead corrected distortion with a mathematical model of the optics (p. 1442).
- **Linearisation** (eqs. 5, 10, 14): first-order Taylor expansion of F about the cell centre x_I. Higher-order terms can be kept if the distortion is severe or the accuracy demands it. Linear is "standard practice in all PIV work done to date" (p. 1446).
- **Interrogation cell.** PIV measures, on average, the fluid velocity averaged over the interrogation spot projected into the fluid times the sheet thickness Δz₀ (Adrian 1988, p. 1444). Variation of ∇F across the cell is neglected; this is justified when the cell is much smaller than the object distance (p. 1445).
- **Thin sheet.** Δz₀ ≪ d_o, so each X_I maps to a unique x_I = (x₁I, x₂I, 0) in the sheet mid-plane (eqs. 8–9). This removes the line-of-sight ambiguity of deep-field PTV (p. 1443–1444).
- **Not considered:** whether particle displacement equals fluid displacement, i.e. tracer lag (p. 1441).
- **Match with the test.** The single-camera fit residual equals the centroid-location limit (7% against 5–10%, p. 1452–1453). The 4:1 out-of-plane to in-plane absolute error ratio matches Prasad & Adrian (1993) (p. 1453).

## Key equations
Rebuilt from rendered pages; page refs are journal pages. An overbar denotes an average over the interrogation cell; repeated j is summed.

- **Ideal imaging** (eqs. 1–2, p. 1441): $(X_1,X_2)=-M(x_1,x_2)$, with $M=\dfrac{d_i}{d_o-x_3}$.
- **General mapping** (eq. 3, p. 1442): $\boldsymbol X=\boldsymbol F(\boldsymbol x)$, with $\boldsymbol x$ 3-D and $\boldsymbol X$ 2-D.
- **Image displacement** (eqs. 4–6, p. 1443): $\Delta\boldsymbol X=\boldsymbol F(\boldsymbol x+\Delta\boldsymbol x)-\boldsymbol F(\boldsymbol x)\simeq\nabla\boldsymbol F(\boldsymbol x)\,\Delta\boldsymbol x$, with $(\nabla\boldsymbol F)_{ij}=\dfrac{\partial F_i}{\partial x_j}=F_{i,j}$, $i=1,2$, $j=1,2,3$. This is the magnification matrix.
- **Magnification matrix for linear imaging** (eq. 7, p. 1443): $F_{i,j}(\boldsymbol x)=\dfrac{-d_i}{d_o-x_3}\begin{pmatrix}1&0&\dfrac{x_1}{d_o-x_3}\\[4pt]0&1&\dfrac{x_2}{d_o-x_3}\end{pmatrix}$. The last column (F₁,₃, F₂,₃) is the perspective effect.
- **Cell centre** (eqs. 8–9, p. 1444): $\boldsymbol x_I=(x_{1I},x_{2I},0)$, $\boldsymbol X_I=\boldsymbol F(\boldsymbol x_I)$.
- **Single-camera operative system** (eq. 10, p. 1445): $\overline{\Delta X_i}\simeq F_{i,j}(\boldsymbol x_I)\,\overline{\Delta x_j}$, i.e. $\begin{pmatrix}\overline{\Delta X_1}\\\overline{\Delta X_2}\end{pmatrix}=\begin{pmatrix}F_{1,1}&F_{1,2}&F_{1,3}\\F_{2,1}&F_{2,2}&F_{2,3}\end{pmatrix}\begin{pmatrix}\overline{\Delta x_1}\\\overline{\Delta x_2}\\\overline{\Delta x_3}\end{pmatrix}$ (10b).
- **Perspective neglected** (eq. 11, p. 1446): $\begin{pmatrix}\overline{\Delta X_1}\\\overline{\Delta X_2}\end{pmatrix}=\begin{pmatrix}F_{1,1}&F_{1,2}\\F_{2,1}&F_{2,2}\end{pmatrix}\begin{pmatrix}\overline{\Delta x_1}\\\overline{\Delta x_2}\end{pmatrix}$.
- **Paraxial check** (eq. 12, p. 1446): $F_{i,j}(\boldsymbol x_I)=\dfrac{-d_i}{d_0}\begin{pmatrix}1&0&x_{1I}/d_o\\0&1&x_{2I}/d_o\end{pmatrix}$.
- **Stereo, camera c = 1, 2** (eqs. 13–14, p. 1446–1447): $\Delta\boldsymbol X^{(c)}=\boldsymbol F^{(c)}(\boldsymbol x+\Delta\boldsymbol x)-\boldsymbol F^{(c)}(\boldsymbol x)$, and $\overline{\Delta X_i^{(c)}}\simeq F^{(c)}_{i,j}(\boldsymbol x_I)\,\overline{\Delta x_j}$.
- **Augmented system** (eq. 15, p. 1447): $\begin{pmatrix}\overline{\Delta X_1^{(1)}}\\\overline{\Delta X_2^{(1)}}\\\overline{\Delta X_1^{(2)}}\\\overline{\Delta X_2^{(2)}}\end{pmatrix}=\begin{pmatrix}F^{(1)}_{1,1}&F^{(1)}_{1,2}&F^{(1)}_{1,3}\\F^{(1)}_{2,1}&F^{(1)}_{2,2}&F^{(1)}_{2,3}\\F^{(2)}_{1,1}&F^{(2)}_{1,2}&F^{(2)}_{1,3}\\F^{(2)}_{2,1}&F^{(2)}_{2,2}&F^{(2)}_{2,3}\end{pmatrix}\begin{pmatrix}\overline{\Delta x_1}\\\overline{\Delta x_2}\\\overline{\Delta x_3}\end{pmatrix}$ (15a), or $\overline{\Delta\boldsymbol X}_A=(\nabla\boldsymbol F)_A\overline{\Delta\boldsymbol x}$ (15b).
- **Least-squares residual** (eq. 16, p. 1447): $\varepsilon=\left|\overline{\Delta\boldsymbol X}_A-(\nabla\boldsymbol F)_A\overline{\Delta\boldsymbol x}\right|^2$. The solution is written $(\nabla\boldsymbol F)_A^{+}$ (generalized inverse) in Fig. 5. In explicit normal-equation form (my statement, not printed): $\overline{\Delta\boldsymbol x}=\left[(\nabla\boldsymbol F)_A^{\mathsf T}(\nabla\boldsymbol F)_A\right]^{-1}(\nabla\boldsymbol F)_A^{\mathsf T}\,\overline{\Delta\boldsymbol X}_A$.
- **Calibration fit** (eq. 17, p. 1447): $\varepsilon=\dfrac1{N_c}\sum_{\{\boldsymbol x_c\}}\left|\boldsymbol F(\boldsymbol x_c)-\hat{\boldsymbol F}(\boldsymbol x_c)\right|^2$, over the N_c target points {x_c}.
- **Mapping polynomial** (eq. 18, p. 1447), with vector-valued $\boldsymbol a_i$:
  $\hat{\boldsymbol F}(\boldsymbol x)=\boldsymbol a_0+\boldsymbol a_1x_1+\boldsymbol a_2x_2+\boldsymbol a_3x_3+\boldsymbol a_4x_1^2+\boldsymbol a_5x_1x_2+\boldsymbol a_6x_2^2+\boldsymbol a_7x_1x_3+\boldsymbol a_8x_2x_3+\boldsymbol a_9x_3^2$
  $\quad+\boldsymbol a_{10}x_1^3+\boldsymbol a_{11}x_1^2x_2+\boldsymbol a_{12}x_1x_2^2+\boldsymbol a_{13}x_2^3+\boldsymbol a_{14}x_1^2x_3+\boldsymbol a_{15}x_1x_2x_3+\boldsymbol a_{16}x_2^2x_3+\boldsymbol a_{17}x_1x_3^2+\boldsymbol a_{18}x_2x_3^2$.
  These are all 20 monomials of total degree ≤ 3 in (x₁, x₂, x₃) except $x_3^3$ (my count).
- **The analytic gradient** (my differentiation of eq. 18; the paper does not print it):
  - $\partial_{x_1}\hat{\boldsymbol F}=\boldsymbol a_1+2\boldsymbol a_4x_1+\boldsymbol a_5x_2+\boldsymbol a_7x_3+3\boldsymbol a_{10}x_1^2+2\boldsymbol a_{11}x_1x_2+\boldsymbol a_{12}x_2^2+2\boldsymbol a_{14}x_1x_3+\boldsymbol a_{15}x_2x_3+\boldsymbol a_{17}x_3^2$
  - $\partial_{x_2}\hat{\boldsymbol F}=\boldsymbol a_2+\boldsymbol a_5x_1+2\boldsymbol a_6x_2+\boldsymbol a_8x_3+\boldsymbol a_{11}x_1^2+2\boldsymbol a_{12}x_1x_2+3\boldsymbol a_{13}x_2^2+\boldsymbol a_{15}x_1x_3+2\boldsymbol a_{16}x_2x_3+\boldsymbol a_{18}x_3^2$
  - $\partial_{x_3}\hat{\boldsymbol F}=\boldsymbol a_3+\boldsymbol a_7x_1+\boldsymbol a_8x_2+2\boldsymbol a_9x_3+\boldsymbol a_{14}x_1^2+\boldsymbol a_{15}x_1x_2+\boldsymbol a_{16}x_2^2+2\boldsymbol a_{17}x_1x_3+2\boldsymbol a_{18}x_2x_3$
  - Evaluated on the mid-plane x₃ = 0, the perspective column is $\boldsymbol a_3+\boldsymbol a_7x_1+\boldsymbol a_8x_2+\boldsymbol a_{14}x_1^2+\boldsymbol a_{15}x_1x_2+\boldsymbol a_{16}x_2^2$. The coefficients $\boldsymbol a_9,\boldsymbol a_{17},\boldsymbol a_{18}$ enter only through $\hat{\boldsymbol F}$ off the mid-plane, so with x₃ = 0 grid points they matter only through how they shape the fit of the others.

> **Checks (my arithmetic and derivations, not in the paper).**
> - Eq. 7 follows from eqs. 1–2: $X_1=-d_ix_1/(d_o-x_3)$ gives $\partial X_1/\partial x_3=-d_ix_1/(d_o-x_3)^2$. ✓ Eq. 12 is eq. 7 at x₃ = 0. ✓
> - **Perspective example (p. 1446).** Dropping F₁,₃ makes the apparent Δx₁ equal to Δx₁ + (F₁,₃/F₁,₁)Δx₃ = Δx₁ + (x₁I/d_o)Δx₃, so ±0.1 gives the stated 10% of w. Strictly it is F₁,₃/F₁,₁ = x₁I/d_o that runs from −0.1 to +0.1; the paper's "F₁,₃ varies between −0.1 and +0.1" is loose wording, since F₁,₃ itself is ±0.1M.
> - **Domain sizes.** 11 × 5.07 = 55.77 mm (single) and 8 × 9 = 72 mm (stereo), the outermost-mark spans. ✓ The legends' relative and absolute scales agree: 2.5 × 10⁻⁴ × 55.8 = 1.4 × 10⁻² mm, 3.5 × 10⁻⁴ × 55.8 = 2.0 × 10⁻² mm, 7 × 10⁻⁵ × 72 = 5.0 × 10⁻³ mm, 5 × 10⁻⁵ × 72 = 3.6 × 10⁻³ mm. ✓ The out-of-plane to in-plane ratio is 2.0 × 10⁻² / 5.0 × 10⁻³ = 4, the "four times" of p. 1453. ✓
> - **Scale factors.** 0.069 mm/0.53 px = 0.130 mm px⁻¹ (single camera); 0.045/1.1 and 0.051/1.2 = 0.041 and 0.043 mm px⁻¹ (stereo).
>   - The 1 mm single-camera marks are then ≈ 7.7 px across, and 0.53/7.7 = 6.9%, the stated "approximately 7%". ✓
>   - The 0.5 mm stereo holes are ≈ 12 px across, so their 1.1–1.2 px RMS is ≈ 9–10% of the mark image, at the top of the 5–10% centroid range. The paper does not make this comparison.
> - **Dependent equations (p. 1447).** Any four rows of a 4 × 3 matrix are linearly dependent, so the paper's point is really that error-free data make the four equations consistent (an exact solution exists), not that two particular rows are always dependent. Its pure-x₃ example presumes cameras placed symmetrically in the x₁–x₃ plane.
> - **"Approximately 1/1000" (p. 1453)** does not match the legends of Figs. 8–9, whose top bands are 2.5 × 10⁻⁴ and 3.5 × 10⁻⁴. Either the top bands are open-ended, or "1/1000" is a peak-to-peak or rounded figure. Check against the PDF.
> - **Plotted area against mapped domain.** Figs. 11–13 span about ±17 mm (read from the axes), half the 72 mm mapped domain; Figs. 8–9 span about ±23 mm against 55.8 mm. The relative errors are normalised by the full mapped domain, not the plotted area.
> - The inverse map's RMS error (1.5 × 10⁻² mm) is a quarter of the forward map's nominal 6.9 × 10⁻² mm on the same calibration image. The paper does not explain this; perhaps the "nominal" forward value is the pixel residual times a mean scale factor, while the inverse residual is computed directly in millimetres (my guess).

## Data tables
**Errors in the bench tests, in pixels and as a fraction of the imposed displacement** (my arithmetic, using the scale factors above and the legend values; these are top contour levels of the fluctuating error, not RMS values):

| Test | Component | Imposed Δx (mm) | Peak fluctuating error (mm) | ≈ px | Fraction of Δx |
|---|---|---|---|---|---|
| Single camera | x₁ | 0.500 | 1.4 × 10⁻² | 0.11 | 2.8% |
| Single camera | x₂ | 1.000 | 2.0 × 10⁻² | 0.15 | 2.0% |
| Stereo | x₁ | 0.000 | 5.0 × 10⁻³ | 0.12 | — |
| Stereo | x₂ | 1.000 | 3.6 × 10⁻³ | 0.09 | 0.4% |
| Stereo | x₃ | −0.400 | 2.0 × 10⁻² | 0.5 (in-plane px equivalent) | 5% |

So the displacement errors are at the 0.1 px level typical of correlation-peak random error, even though the mapping functions themselves carry 0.5–1.2 px position residuals. A smooth position error in F largely cancels in a displacement, which depends only on ∇F. As a fraction of the displacement the errors are percent-level, much larger than the 10⁻⁴ "relative errors" the paper quotes against the domain size.

## Figures worth remembering
- **Fig. 1 (p. 1442):** recording and interrogation with zero distortion: chief ray, object and image frames, interrogation spot X_I and cell.
- **Fig. 2 (p. 1443):** the distorted case: a curved refracting wall and a tilted recording plane, X = F(x).
- **Fig. 3 (p. 1444):** single-camera flow chart, processes A (PIV), B (user grid) and C (calibration). The most practical figure to copy.
- **Fig. 4 (p. 1445):** stereo calibration: the target traversed by Δx₃ through the refracting wall, seen by two tilted recording planes. The mapping is valid only inside the traversed volume.
- **Fig. 5 (p. 1445):** stereo flow chart: augmented system and generalized inverse.
- **Fig. 7 (p. 1446):** a Cartesian grid seen through two 450 mm lenses: (a) strongly curved lines; (b) the same region dewarped with the inverse mapping.
- **Figs. 8–9 (p. 1448–1449):** single-camera x₁ and x₂ error maps, with patchy correlated error.
- **Fig. 10 (p. 1449):** stereo schematic: two lenses viewing a joint field through the distorting medium.
- **Figs. 11–13 (p. 1450–1452):** stereo x₁, x₂, x₃ error maps; x₃ errors largest near the lower edge (read from the figure).

## Notation
- x = (x₁, x₂, x₃): object (fluid) coordinates, with x₃ normal to the light sheet and x₃ = 0 its mid-plane. X = (X₁, X₂): image coordinates in the recording plane (X₃ = 0).
- F, F^(c): mapping function of a camera (c = 1, 2); F̂: its polynomial estimate; a_i: vector coefficients (two components each).
- ∇F, F_{i,j} = ∂F_i/∂x_j: the 2 × 3 magnification matrix; (∇F)_A: the 4 × 3 augmented stereo matrix; ⁺: generalized inverse.
- M: magnification; d_i, d_o: image and object distances; Δz₀: light-sheet thickness; l: width of the field of view.
- Δx, ΔX: object and image displacements; overbar: average over the interrogation cell.
- x_I, X_I: interrogation-cell centre in object and image planes. {x_g}, {X_g}: user-defined grid and its image. {x_c}, N_c: calibration points and their number.
- ε: least-squares residual.

## Relevance to this project
This is the method paper behind the "Soloff polynomial" that later stereo-PIV notes use without derivation. [Shehzad et al. 2021](shehzad-2021-laser-sheet-alignment-piv.md) quote the same 19-term form as their eq. 1 (p. 10). Eq. 18 here has x₃² in that position (a₉x₃²), which supports that note's reading that the Z³ printed for their a₁₀/a₃₀ terms is a typo. The paper is not Shock Lab group work, and the CLAUDE.md research scope uses it only as measurement practice for the PIV side of the workflow.

**How it sits with the other notes**
- **[Sun et al. 2021](sun-2021-distortion-correction-large-sensor-piv.md) is the planar descendant.**
  - Their P3 bicubic map is exactly eq. 18 restricted to x₃ = 0: 10 vector coefficients, 20 scalars.
  - Their "Method II" (PIV on raw images, then map the vector positions) is the route of this paper's processes A–B, which never dewarps images.
  - Soloff also converts every displacement with the local ∇F, which handles magnification that varies across the field. The Sun note does not record how Method II converts displacements; check it there.
  - Sun et al. found the rational R2 map worse than the polynomial, which supports the polynomial choice here.
- **[Shehzad et al. 2021](shehzad-2021-laser-sheet-alignment-piv.md) fills the gap left here.**
  - This paper asks only that the target be aligned "as precisely as possible" with the sheet centre (p. 1448). Its bench tests have no light sheet, so the misalignment error is never tested.
  - Shehzad et al. show the size of that error: up to 20% bias in turbulent stresses (their p. 3). They review the after-the-fact fixes: [Willert 1997](willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md)'s correction and [Wieneke 2005](wieneke-2005-stereo-piv-self-calibration-particle-images.md)'s self-calibration. They then remove the error by aligning first.
  - Their mapping residual (σ ≈ 0.04 px, their Table 2) is more than an order of magnitude below the 0.5–1.2 px here, probably because of their much denser target (11,040 points on five planes), weaker distortion and modern sensors (my reading). Yet their 3-C displacement uncertainties (≈ 0.05–0.09 px) are close to the ≈ 0.1 px in-plane errors here (my conversion above). Both support the point that displacement accuracy is set by ∇F, not by the absolute position residual.
- **Reconstruction route.** Shehzad et al. dewarp the images first and then reconstruct with Willert's (1997) viewing-angle formulas. This paper instead solves the 4 × 3 system with ∇F from the polynomial. [Prasad 2000](prasad-2000-stereoscopic-piv-review.md) reviews the stereo configurations and reconstruction routes; its note should say how it ranks the two.
  - [Willert & Gharib 1991](willert-1991-digital-particle-image-velocimetry.md) is the digital cross-correlation interrogation that process A assumes. The template matching of calibration marks here reuses the same correlation-peak machinery (p. 1448).
- **Stereo PIV elsewhere in the library.**
  - [Alkislar et al. 2003](alkislar-2003-screeching-rectangular-jet-stereo-piv.md): Scheimpflug cameras about 90° apart in a screeching rectangular jet, where the calibration "removes perspective effects and maps between the two views".
  - [Jaunet et al. 2017](jaunet-2017-two-point-coherence-wave-packets-turbulent-jets.md): time-resolved cross-plane stereo PIV at 30° to the sheet, the data behind the Pprime SPOD and resolvent comparisons.
  - [Oberleithner et al. 2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md): non-TR stereo PIV and a POD pair.
  - All rely on a calibration of this type. The notes do not record which mapping each used.

**Methods and data for the lab workflow (CLAUDE.md)**
- **The calibration is independent of time resolution.** It is a static map applied pair by pair, so it serves non-TR planar and stereo PIV (POD and POD pairs) and TR-PIV (SPOD, BMD, HPOD) alike. The paper's tests are single displacement pairs. Its key parameters are the target pitch and extent, the number of x₃ planes and their span (at least three, about one sheet thickness apart), the polynomial orders, and the mark-location method.
- **The user-defined grid suits modal analysis.** Choosing {x_g} as a uniform Cartesian grid in physical coordinates, aligned with the jet axis, gives what POD, SPOD and streamwise-Fourier (k_x) filtering need, with no regridding of a distorted vector field afterwards. The cost is holes wherever either camera loses a neighbour (p. 1450–1451). Snapshot POD and SPOD then need a mask that is common to all snapshots, or gap filling, before the analysis.
- **Perspective error in the group's planar PIV** (my estimate). The error is (x_I/d_o)·w (eq. 12; p. 1446). It is zero on the optical axis and grows linearly towards the edges of the field of view. For helical or flapping screech modes, whose out-of-plane velocity is comparable to the in-plane one, a wide field at a modest object distance contaminates u and v by several percent of w near the edges, in a spatially varying pattern that POD would fold into the modes. The group's stitched 10D × 2.2D fields ([diagnostics-and-facilities](../Topics/diagnostics-and-facilities.md)) make this worth checking with the actual d_o, which the notes do not record. Stereo PIV, or a long focal-length lens with a large d_o, removes it.
- **Volume averaging.** A PIV vector is the velocity averaged over the interrogation spot projected back into the fluid times the sheet thickness (p. 1444). When PIV is compared with an LES, such as the PyFR staging runs, the LES should be box-filtered over the same in-plane window and sheet thickness first, especially for A-mode wavelengths only a few windows long.
- **Slow drift and intermittency.** The calibration is done once. A slow drift of camera or sheet during a long TR-PIV record (thermal, or vibration of a PIV cage) would show up as a slowly varying magnification or perspective error. Hilbert POD or SPOD-reconstruction amplitude tracking could misread that as amplitude modulation. Repeating the calibration, or self-calibrating on particle images ([Wieneke 2005](wieneke-2005-stereo-piv-self-calibration-particle-images.md)), at the start and end of a run would bound it (my suggestion; the paper does not discuss drift).
- **Imaging through windows.** The fish-tank test (p. 1453) shows the method copes with thick refracting walls, as in wind-tunnel or liquid-flow PIV, provided the calibration is done through the same optical path. Shehzad et al.'s particle-free cast in front of the target is the same principle.

**Modelling side.** No flow model or simulation. The optical model is a thin-lens pinhole (eqs. 1–2, 7) used only to judge the size of perspective effects. The working model is the empirical polynomial with first-order linearisation, a magnification uniform over each cell, and a thin sheet. These assumptions fail for:
- severe distortion (use splines or higher orders);
- displacements large enough that the linearisation breaks down;
- extrapolation beyond the calibrated x₃ range, here only ±0.5 mm.

**PyFR staging LES.** No direct link, beyond the volume-averaging point above for any PIV–LES comparison.

**Related works cited, candidates for `/add-paper`:** Prasad & Adrian 1993 (Exp. Fluids 15, stereo PIV in liquids, the model-based distortion correction and inverse-mapping recombination this paper replaces); Prasad & Jensen 1995 (Appl. Opt. 34, Scheimpflug stereocamera); Arroyo & Greated 1991 (MST 2, lateral-offset stereo PIV); Grant et al. 1995 (Exp. Fluids 19, in-line stereo PIV); Kent et al. 1993 (SPIE, photogrammetric PTV calibration with a moving point target); Prasad et al. 1992 (Exp. Fluids 13, centroid location error 5–10% of particle-image diameter); Adrian 1988 (statistics of PIV in turbulence; interrogation-cell averaging) and Adrian 1991 (Annu. Rev. Fluid Mech. 23, paraxial imaging and perspective); Liu et al. 1997 (the stereo camera used here); Nishino et al. 1989, Maas et al. 1993 and Guezennec et al. 1994 (3-D PTV and photogrammetry). Related papers: [Willert 1997](willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md), [Prasad 2000](prasad-2000-stereoscopic-piv-review.md) and [Willert & Gharib 1991](willert-1991-digital-particle-image-velocimetry.md) (now indexed), and [Wieneke 2005](wieneke-2005-stereo-piv-self-calibration-particle-images.md) (now indexed).
