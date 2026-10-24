---
key: "wieneke-2005-stereo-piv-self-calibration-particle-images"
title: "Stereo-PIV using self-calibration on particle images"
authors: ["Wieneke, B."]
year: 2005
type: "article"
venue: "Exp. Fluids 39, 267–280"
bib: {"journal": "Experiments in Fluids", "volume": "39", "pages": "267--280", "publisher": "Springer-Verlag"}
doi: "10.1007/s00348-005-0962-z"
arxiv: ""
pdf: "diagnostics-and-facilities/Wieneke_2005_Stereo-PIV-Using-Self-Calibration-On-Particle-Images.pdf"
version: "published"
unverified: []
group: false
facility: "LaVision GmbH, Göttingen (author affiliation; bench tests with 3D calibration plates, a translated random-dot target in air and behind glass in water, and a small two-jet air flow)"
data: ["PIV", "PIV-stereo", "synthetic"]
methods: ["calibration", "optical-modelling"]
flow: ["generic"]
phenomena: []
params: {"cameras": "two 1280 × 1024 px CCD cameras", "camera angle": "≈45° (translated plate), ≈50° (jet test)", "initial disparity": "1–502 px (16 calibrations, synthetic test); 44–252 px (jet test)", "disparity correlation": "ensemble sum of 5–50 image pairs; 128 × 128 px, 50% overlap, 16 maps in the jet test", "final PIV window": "32 × 32 px, 75% overlap", "residual disparity": "0.004–0.286 px, typically < 0.1 px", "water path": "3 mm glass, light sheet 40–45 mm into water", "scale": "≈20–21 px/mm (translated plate); 85 × 70 mm field (jet test)"}
topics: ["diagnostics-and-facilities"]
related: ["willert-1997-stereoscopic-dpiv-wind-tunnel-flows", "soloff-1997-distortion-compensation-generalized-stereoscopic-piv", "prasad-2000-stereoscopic-piv-review", "shehzad-2021-laser-sheet-alignment-piv", "willert-1991-digital-particle-image-velocimetry", "sun-2021-distortion-correction-large-sensor-piv", "alkislar-2003-screeching-rectangular-jet-stereo-piv", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "jaunet-2017-two-point-coherence-wave-packets-turbulent-jets", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "ragni-2011-particle-tracer-response-shocks-piv"]
cites: ["prasad-2000-stereoscopic-piv-review", "soloff-1997-distortion-compensation-generalized-stereoscopic-piv", "willert-1997-stereoscopic-dpiv-wind-tunnel-flows"]
summary: "Stereo-PIV self-calibration: correlate dewarped cam-1/cam-2 particle images → disparity map → triangulate, fit sheet plane, remap; <0.1 px residual; 3-media model"
---
# Stereo-PIV using self-calibration on particle images

- **Authors:** B. Wieneke, LaVision GmbH, Göttingen (p. 267). Single author. Not Shock Lab group work.
- **Source:** Experiments in Fluids 39, 267–280 (2005), Springer-Verlag, doi:10.1007/s00348-005-0962-z. Received 25 October 2004, revised 14 February 2005, accepted 1 March 2005, published online 26 May 2005 (p. 267). No issue number is printed.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/diagnostics-and-facilities/Wieneke_2005_Stereo-PIV-Using-Self-Calibration-On-Particle-Images.pdf` (index key `diagnostics-and-facilities/Wieneke_2005_Stereo-PIV-Using-Self-Calibration-On-Particle-Images.pdf`, 14 pp., publisher's version). **Page refs below are journal pages; PDF page = journal page − 266.** The Read tool reports the file as password-protected, so the text came from `pdftotext`. The text layer garbles every equation and Tables 1–5; they were rebuilt from pages rendered at 130 dpi (Table 3 at 250 dpi).
- **Tags:** stereoscopic PIV, self-calibration, disparity map, calibration-plate misalignment, camera pinhole model, Tsai model, radial lens distortion, bundle adjustment, triangulation, plane fit, fundamental matrix, epipolar geometry, ensemble correlation, dewarping, image deformation, multi-pass, 2D2C and 2D3C, 3C reconstruction, reconstruction error, vector validation, Scheimpflug, refractive index, air–glass–water, 3-media model, Snell's law, closed measurement volumes, laser-sheet thickness, laser-sheet overlap, LaVision

## Summary
Stereo-PIV calibration normally needs the calibration plate to sit exactly in the light sheet, which is hard to arrange. Wieneke removes that need. He fits a camera pinhole model (Tsai) to one or more views of a 3D calibration plate. He then cross-correlates the dewarped particle images of cameras 1 and 2, taken at the same instant, summing the correlation planes of many image pairs. Any offset between the two views (the "disparity map") shows where the true light sheet lies. Each disparity vector is triangulated to a world point, a plane is fitted through the points, and both mapping functions are transformed so that this plane becomes z = 0 (p. 269–271, Fig. 3). Tests on 16 calibrations with initial disparities of 1–502 px leave residual disparities mostly below 0.1 px and errors in the synthetic velocity mostly below 0.04 px. Before the correction, every calibration with more than about 9 px of disparity gave a useless field (Tables 1–2, p. 273–274). A 3-media (air–glass–water) pinhole model lets the cameras be calibrated in air outside a closed water channel and self-calibrated onto the sheet inside it, with the plate's motion recovered to about 1% (Table 5, p. 278). The width of the camera-1/camera-2 correlation peak also gives the thickness, position and overlap of the two laser sheets (eq. 8, p. 279).

## Key findings
- **Why misalignment matters** (p. 269). If the plate is offset in z from the sheet, the 2C vectors of the two cameras come from different places in the sheet.
  - With a 20 px offset and a 5% velocity gradient, the displacement changes by 1 px between the two sample points, which the paper calls "considerable" for the 3C vector.
  - The mapping-function derivatives are also slightly wrong.
  - The coordinate system stays warped: a plate tilted by 1° gives 3C vectors rotated by 1°.
- **Uncorrected calibrations fail quickly** (Table 1, p. 273). On a synthetic vortex field (gradient about 10%, ±5 px):
  - 1 px of disparity gives a 0.07 px error and no false vectors.
  - 8–9 px gives 0.39–0.44 px error and about 7% false vectors. The author says this is roughly the disparity times the velocity gradient (p. 273).
  - 38–87 px gives 2.2–3.4 px error and 60–95% false vectors, and from 126 px upwards every vector is rejected by the 1 px reconstruction-error filter or the median filter.
- **Self-calibration recovers even huge misalignments** (Table 2, p. 273–274).
  - Residual disparity is 0.004–0.103 px for the reference and every calibration except 14, which keeps 0.286 px. Calibrations 10, 12, 14 and 15 are the worst. The rest is mostly ordinary correlation error.
  - Residual warping of the coordinate system (position error on a 10 × 10 grid, after matching origin, in-plane rotation and scale) is 0.02–0.56 px up to calibration 12, and 0.77–3.3 px for calibrations 13–16. Vectors are then placed wrongly by typically less than 2 px, with derivatives wrong by typically less than 1–3%. The author calls a sub-pixel position error acceptable given a vector spacing of 8–16 px (p. 274).
  - Velocity error after correction: 0.023–0.046 px up to calibration 12; 0.087, 0.212 and 0.100 px for calibrations 13–15; 0.052 px for calibration 16. The reconstruction error is 0.008–0.018 px.
  - The limit is a disparity of about one third of the image (calibrations 13–15, 263–351 px). Calibration 16 (502 px) does better, perhaps because that view is nearly parallel to the sheet, while 13–15 are more tilted and span more depth (p. 274).
  - The 0.023 px error of the reference itself comes mostly from image degradation in warping and dewarping the synthetic images (p. 274).
- **The pinhole model holds throughout the volume** (Table 4, p. 275).
  - In air, triangulation plus plane fit recovers translation-stage moves of 1–5 mm to within 4 µm. Fournel et al. (2004) report 2–4 µm for the same kind of test.
  - Stereo-PIV matches the stage within its uncertainty for 1–2 mm. At 5 mm (100 px) it is biased by 0.06 mm (1.2 px). The author attributes this "probably" to the 3C reconstruction using mapping derivatives taken only at z = 0, and leaves it for further study. For a typical 5 px displacement the same relative bias would be 0.06 px (p. 275).
  - A u bias of 0.36 px at dz = 1 mm, growing linearly, came from the stage axis not being normal to the plate. Other rms values are about 0.03 px (p. 275).
  - In water (behind 3 mm of glass), accuracy is high up to 2 mm (40 px), with some bias beyond. The rms is larger because of residual warping, a gradient of about 0.03 px across the image at dz = 1 mm (p. 275).
  - The pinhole model fits refraction through glass and water only with non-physical parameters: a principal point far off the chip (x₀ = −1882 and 4074 px), skew factors 0.957 and 0.924, and f = 81–83 mm against 61 mm in air. All calibration points were still fitted to better than 0.1 px (Table 3, p. 275).
- **Real particle images** (p. 276–277, Figs. 5–6). In a two-jet air flow between cylinders, three calibrations had disparities of 44, 82 and 252 px. Calibration 2 corresponds to a rotation of about 13° about y plus about 5 mm in z (Fig. 5c).
  - Uncorrected, calibration 1 gave large errors and lost many vectors to the 1 px reconstruction-error filter, and calibrations 2–3 gave no meaningful field.
  - After self-calibration, the plane-fit error was below 0.1 px for all three, and the three mappings agreed to within 0.4 px in mapped position.
  - The vector fields of the three calibrations are almost identical; calibrations 1 and 3 differ by 0.055 px on average in the high-shear region (Fig. 6e).
- **Final accuracy of the plane** (p. 271, 279). With a good set-up, the z = 0 plane of the corrected mapping lies within 0.1 px of the middle of a sheet that is typically 10–20 px thick.
- **Closed volumes** (Sect. 4, p. 276–278, Table 5).
  - A standard pinhole calibration done in air and self-calibrated onto a sheet in water shortens z displacements by about the refractive index of water: 0.737 for 1 mm and 3.720 for 5 mm. Self-calibration refits only three plane parameters, not the internal ones such as s_x and f.
  - With the 3-media model and the measured glass-to-sheet distance (40 mm), triangulation gives 0.996–5.016 mm and stereo-PIV 1.006–4.989 mm for 1–5 mm moves.
  - An error of up to 20 mm in the assumed distance keeps the stereo-PIV result within 1% (at most 0.6% in Table 5, the same as with the correct distance). Assuming 0 mm instead of 40 mm gives errors of 2.8–3.6%.
  - A wrongly assumed 10° tilt of the sheet about y keeps dz and dy within 2% but gives a 3% systematic error in dx. A 10° tilt about x gives an 8% error in dy and residual y disparities of a few pixels, which self-calibration cannot remove (p. 278).
  - With the 3-media model, the in-situ pinhole parameters return to physically sensible values (p. 278).
- **Sheet diagnostics as a by-product** (Sect. 5, p. 279). Particles spread through the sheet smear the camera-1/camera-2 correlation peak, so its width gives the sheet thickness (eq. 8). Doing this for each laser pulse separately gives the position, overlap and flatness of the two sheets, and shows which screw in the laser head to adjust.
  - For 5–10 px in-plane displacements the sheet should be at least twice as thick as the displacement if z components of the same size are to be measured, so typical peak widths are 10–20 px.
- **Pinhole versus polynomial** (p. 269). About 22 parameters describe the two-camera pinhole model, against 80 for a third-order 2D polynomial on two z planes. The author argues that not all 80 are statistically significant and that a physical model with a few correction terms avoids fitting noise in the mark positions. The polynomial is better for strong non-perspective distortion, such as viewing through cylinders.
- **Open items** (p. 271, 275, 278). Fitting more than the three plane parameters (focal lengths, Scheimpflug positions, relative camera pose) through the fundamental equation; using triangulation rather than z = 0 derivatives for the 3C reconstruction; fitting the glass-to-sheet distance from the disparity map, which made the fit unstable in first tests.

## Setup / method
**Camera model** (Sect. 2.1, p. 268–269; Fig. 1).
- Tsai's 11-parameter pinhole model per camera: six external parameters (rotation R and translation T from world to camera coordinates) and five internal ones (f, s_x, k₁, x₀, y₀). Two cameras need about 22 parameters (p. 268–269).
- Radial distortion k₁ is usually enough for good lenses; wide-angle lenses or consumer cameras need more radial or tangential terms. Extra terms must be fairly orthogonal to the others, or the highly nonlinear fit will not converge (p. 269).
- A Scheimpflug angle is included, but can make the radial distortion non-symmetric because the pinhole optical axis no longer matches the lens axis; Fournel et al. (2004) proposed a special Scheimpflug rotation (p. 269).
- World units (mm) are converted to dewarped pixels so that a dewarped pixel is no larger than a raw one in either direction (no binning). The dewarped image covers the part of the field seen by both cameras. The initial origin is one mark on the plate (p. 269).
- Calibration: one or several views of a 3D plate. Several views are fitted together by nonlinear least squares (bundle adjustment), which fits the fixed parameters (internal ones and the relative pose of the cameras) together with one external set per view. Its Hessian is very sparse, which special fit provisions exploit (p. 268).
- In contrast to the Soloff et al. (1997) polynomial on two or more z planes, which needs only the mapping at z = 0 and its z derivatives, the pinhole model maps the whole volume (p. 268).

**Self-calibration algorithm** (Sect. 2.2, p. 269–271; Fig. 3, p. 270).
1. **Fit the pinhole model** to the calibration-plate images.
2. **Compute the disparity map.** Dewarp the particle images of cameras 1 and 2 recorded at the same instant to Z_w = 0 with M⁻¹, and cross-correlate camera 1 against camera 2 with standard PIV cross-correlation.
   - A single pair is usually not enough, because particles spread through the sheet look different from the two viewpoints. The correlation planes of many pairs are summed (ensemble correlation, Meinhart et al. 1999); about 5–50 images are typical, depending on seeding density and sheet thickness (p. 270).
   - For large fields (wind tunnels) one view may do, which could also correct vibration of the sheet or cameras, as Willert (1997) noted (p. 270).
   - Multi-pass with deformed windows can be used: all n images are processed for a first disparity map, which then shifts and deforms the windows of the next pass (p. 270).
   - Disparities can also be found between the raw images and used directly in triangulation; dewarped images only make residual disparities easier for the user to see (p. 270).
3. **Triangulate** each disparity vector to a world point in the measurement plane. Because the two back-projected rays do not meet exactly, the point chosen is the one whose projections are closest to the measured image positions (Hartley & Sturm 1994). The triangulation error rejects false disparity vectors above a threshold, e.g. 0.5 px. This needs a volume mapping function: the pinhole model, or a third-order polynomial on enough parallel z planes to cover the sheet (p. 270).
4. **Fit a plane** through the world points in 3D (p. 270).
5. **Transform the mapping functions** so that the fitted plane becomes z = 0: in eq. 2, R → R × dR and T → T + R × dT, with dR the rotation of the fitted plane relative to the plate and dT its offset (p. 270).
6. **Fix the remaining freedom.** The new origin is the old origin of camera 1 projected onto the plane, and the new x axis is the old x axis of camera 1. The user can reset origin and axes later on a dewarped particle image (p. 270).
7. **Iterate.** Steps 2–6 are repeated; the disparity map usually stops shrinking after two or three passes. A single-pass correlation repeated two or three times works well (p. 270).

- **Quality checks** (p. 270). The triangulation error and the plane-fit error measure the fit. Both include random disparity errors (too few particles, correlation bias) and systematic calibration errors. A poor calibration usually shows as a high triangulation error with a small plane-fit error.
- **Equivalent one-step form** (p. 271). Replace camera 2's R₂, T₂ by its pose R₁₂, T₁₂ relative to camera 1. Self-calibration then refits R₁ and T₁ with R₁₂ and T₁₂ fixed. Since origin and x axis are free, three parameters remain: the position and orientation of a plane. Triangulation, plane fit and transformation can therefore be replaced by one nonlinear fit through the fundamental equation (eq. 7). Doing the three steps separately is more instructive for finding error sources and checking sheet flatness.
- **Assumption** (p. 271): the internal parameters and the relative pose of the two cameras do not change between calibration and recording.

**Stereo-PIV processing and 3C reconstruction** (Sect. 2.3, p. 271–272; Fig. 4).
- Three routes are compared (p. 271):
  1. 2D2C vectors on a regular grid in the raw images, interpolated to world grid points. Vectors are not at the correct world position, and the interpolation spreads one bad vector into four 3C vectors.
  2. 2D2C vectors in the raw images at the positions of the world grid points. The windows of the two cameras differ in size and shape because of perspective.
  3. Dewarp first and correlate on the world grid. Vectors are correctly placed and the windows match, but dewarping and window deformation each interpolate the images, which degrades them.
- **Used here: a modified route 3** that dewarps and deforms in one interpolation before each pass (p. 271).
  - First pass: dewarp both frames (t₀, t₀ + dt) of each camera and correlate. A preliminary 3C reconstruction removes 2C vectors whose reconstruction error is too large (e.g. above 0.5 or 1 px); two false vectors with random directions are rarely consistent. Missing vectors are interpolated and the field is smoothed slightly for stability.
  - Later passes: the whole image is deformed at once, not each window. Half the reference displacement is applied backwards to the t₀ frame and half forwards to the t₀ + dt frame (Fig. 4: MF₁ − ½REF₁ and MF₁ + ½REF₁). At 75% overlap, window deformation would deform each region 16 times, so image deformation is cheaper.
  - Usually three or four passes at the final window size converge the 2D2C fields.
  - Typical scheme: one or two passes at 64 × 64 px with 50% overlap, then four passes at 32 × 32 px with 75% overlap (p. 271–272).
  - After each pass a 2D3C reconstruction is used only to reject 2D2C vectors (threshold e.g. 1 px). Only the final 2D3C field is kept, and it is validated, e.g. by a median filter (p. 272).
- **3C reconstruction** (p. 271): four linear equations in (u, v, w), solved by the normal equations, which spread the error evenly over the three components. The "reconstruction error" is the difference between the measured (u₁, v₁), (u₂, v₂) and those recomputed from (u, v, w). With a good calibration and 2C errors below 0.1 px it is well below 0.5 px, so it is an efficient filter for random false vectors.
- **Data dependence.** Everything works on independent snapshots: the disparity map is an ensemble over 5–50 simultaneous camera-1/camera-2 images, and the PIV and 3C reconstruction are pair by pair. No time resolution is needed. The ensemble assumes the sheet and cameras do not move during the summed images.

**Tests** (Sect. 3–4).

| Test | Set-up | What is compared |
|---|---|---|
| 3.1 Synthetic images (p. 273–274) | 16 views of a 100 × 100 mm 3D plate, 1280 × 1024 px, f/20 for depth of focus; pinhole with s_x = 1 and k₂ = 0 fixed. A flat random-dot plate defines the "sheet". Reference = bundle adjustment of the 8 views closest to it, self-calibrated too. Synthetic double frame: regular vortices, mean gradient ≈ 10%, ±5 px, about 2 px particles, high density, no noise, all particles at z = 0, warped into a 4-frame stereo image with the corrected reference (true w = 0) | Disparity, position error on a 10 × 10 grid, error in V and reconstruction error, before and after correction (Tables 1–2) |
| 3.2 Translated plate (p. 274–276) | 5 × 7 cm random-dot target on a stage (≈ 5 µm accuracy), moved 1–5 mm in z (also in x). Calibration from 8 arbitrary views of a 3D plate, bundle adjustment. In air, and in water with the z = 0 plane about 45 mm deep behind a 3 mm glass plate. Cameras about 45° apart. PIV with 64 × 64 px deformed windows | Triangulation + plane fit and stereo-PIV against the stage (Tables 3–4) |
| 3.3 Particle images (p. 276) | Water droplets of a few microns in air; two air jets passing upwards between two 10 mm cylinders, giving strong shear. Field about 85 × 70 mm at 500 mm, 1280 × 1024 px, cameras about 50° apart. Three 3D-plate calibrations. Final window 32 × 32 px, 75% overlap; mean gradient 3%, up to 20% near the jets. Self-calibration with 128 × 128 px windows, 50% overlap, 16 summed maps | Vector fields from the three calibrations, before and after correction (Figs. 5–6) |
| 4.1 Outside, similar optics (p. 277) | Focus on the sheet, retract the cameras on a stage, put a small water basin in front of the channel and calibrate inside it with the same camera-to-front-face distance L, move back, record, self-calibrate (Fig. 7) | Described; accuracy said to equal in-situ calibration with accurate mechanics |
| 4.2 Outside in air (p. 277–278) | Calibrate in air without the basin; self-calibrate onto the sheet in water with the standard or the 3-media model; glass-to-sheet distance dZ_g-l = 40 mm measured conventionally; 1 mm = 21.1 px | Table 5 |

- **z scans in closed volumes** (p. 277): move the sheet and self-calibrate at each position. If the travel exceeds the depth of focus, move cameras and sheet together and repeat the basin calibration at each position.
- **3-media model** (p. 278). After Maas (1996): light rays are bent through each medium by Snell's law, computed iteratively, with the thickness and refractive index of each medium as inputs. The thickness of the last medium is the distance from the sheet to the glass, dZ_g-l. It must be measured, with the two angles between sheet and glass. One way: focus on the sheet with a large aperture, then traverse the cameras back until a target on the channel's front face is in focus. The air calibration uses the standard model; the 3-media model is switched on for self-calibration (triangulation) and the PIV.
- **Modelling side.** There is no flow model or simulation. The models are optical and geometric: the Tsai pinhole camera with radial distortion (eqs. 2–6), bundle adjustment, optimal two-view triangulation, a plane model of the sheet, the epipolar constraint (eq. 7), a Snell's-law ray model for planar interfaces, and a point-particle geometric model of the correlation peak width (eq. 8). Their assumptions:
  - the pinhole model holds within the depth of focus. The largest-disparity views were slightly out of focus and still fitted well (p. 274);
  - internal parameters and relative camera pose are fixed during self-calibration (p. 271);
  - the sheet is a plane: a curved sheet is detected (plane-fit error) but only its best-fit plane is corrected (p. 270, 279);
  - 3C reconstruction uses mapping derivatives at z = 0, the likely source of the bias at large dz (p. 275);
  - interfaces are flat with known positions and angles (p. 278);
  - the synthetic test has no sheet thickness and no image noise (p. 273), so it tests the calibration alone.

## Key equations
Rebuilt from the rendered pages; page refs are journal pages.

- **Mapping functions** (eq. 1, p. 268): $\mathbf{x}_1=\mathbf{M}_1(\mathbf{X}_w)$, $\mathbf{x}_2=\mathbf{M}_2(\mathbf{X}_w)$, from world $\mathbf{X}_w=(X_w,Y_w,Z_w)$ to pixel positions $\mathbf{x}_i=(x_i,y_i)$.
- **External parameters** (eq. 2, p. 268): $\mathbf{X}_c=\mathbf{R}\,\mathbf{X}_w+\mathbf{T}$.
- **Perspective projection** (eq. 3, p. 268): $x_u=f\,X_c/Z_c$, $y_u=f\,Y_c/Z_c$.
- **Radial distortion** (eq. 4, p. 268), as printed: $x_d=x_u\,(1+k_1r+k_2r^2)$, $y_d=y_u\,(1+k_1r+k_2r^2)$, with $r^2=x_d^2+y_d^2$.
  > As printed, the polynomial is in r, and r is defined from the *distorted* coordinates, so eq. 4 is implicit. Tsai's usual form is $x_u=x_d(1+\kappa_1r^2)$ (my recollection, not from this paper). Check p. 268 before coding it.
- **Principal distance against lens focal length** (eq. 5, p. 269): $f=f_{lens}\left(1+\dfrac{f_{lens}}{T_z+f_{lens}}\right)$, for a plate in focus at distance T_z. Real fixed-focal-length lenses deviate from it by 2–5%.
  > My check: the thin-lens image distance for an object at distance T_z is $f_{lens}\,(1+f_{lens}/(T_z-f_{lens}))$, with a minus sign. The printed plus sign matches only if T_z is measured from some other point. The lens focal length is not given, so Tables 1 and 3 (f ≈ 61 mm at T_z ≈ 410–480 mm) cannot settle it.
- **Pixel coordinates** (eq. 6, p. 269): $x=S_x\,\dfrac{x_d}{S_{pixel}}+x_0$, $y=\dfrac{y_d}{S_{pixel}}+y_0$. S_x is a skew factor (1 for square pixels, otherwise an extra distortion term); S_pixel is the known pixel size, and only f/S_pixel matters.
- **Mapping correction** (p. 270): $\mathbf{R}\rightarrow\mathbf{R}\,\mathrm{d}\mathbf{R}$, $\mathbf{T}\rightarrow\mathbf{T}+\mathbf{R}\,\mathrm{d}\mathbf{T}$, i.e. $\mathbf{X}_c=\mathbf{R}(\mathrm{d}\mathbf{R}\,\mathbf{X}_w'+\mathrm{d}\mathbf{T})+\mathbf{T}$ in the new sheet coordinates $\mathbf{X}_w'$ (the second form is my restatement).
- **Fundamental equation** (eq. 7, p. 271): $\mathbf{x}_1\,\mathbf{F}\,\mathbf{x}_2=0$ (i.e. $\mathbf{x}_1^{\mathsf T}\mathbf{F}\mathbf{x}_2=0$), with F the 3 × 3 fundamental matrix of rank 2 and $\mathbf{x}_i=(x_i,y_i,1)$ in homogeneous camera coordinates. The paper gives F 8 degrees of freedom (p. 271, 278).
  > My check: a 3 × 3 matrix defined up to scale with det F = 0 has 7 degrees of freedom (Hartley & Zisserman's count, from memory). The paper's argument, that the epipolar geometry holds more freedom than the three plane parameters, is unaffected.
- **Correlation-peak width** (eq. 8, p. 279), for dewarped images and point particles: $w_c=d\left[\dfrac{1}{\tan\alpha_1}+\dfrac{1}{\tan\alpha_2}\right]$, with d the sheet thickness and α₁, α₂ the viewing angles of the cameras from the x axis (cameras placed horizontally along x). For real particles the peak is convolved with the particle point-spread function, which the autocorrelation gives.

> **Checks (my arithmetic, not in the paper).**
> - Parameter counts: 2 cameras × 11 = 22 pinhole parameters. 2 cameras × 2 planes × 2 image coordinates × 10 cubic terms = 80 polynomial coefficients (p. 269). ✓
> - At 75% overlap each pixel lies in (1/0.25)² = 16 windows (p. 271). ✓
> - Eq. 8 with the air camera angles of Table 3 (R_y = 20.3° and −24.3°, read as viewing angles from the sheet normal, my assumption): cot 69.7° + cot 65.7° = 0.37 + 0.45 = 0.82, so w_c ≈ 0.8d. A 1 mm sheet at 20 px/mm gives about 16 px, inside the 10–20 px the paper quotes (p. 279).
> - Table 1, calibration 3: 9 px × 10% gradient = 0.9 px, against the 0.44 px printed; the paper calls it "roughly" as expected.
> - Table 4 scale: 20.22 px/0.995 mm = 20.3 px/mm in air and 20.59/0.997 = 20.7 px/mm in water. "5 mm = 100 pixels" (p. 275) is a round figure. Table 5 states 21.1 px/mm, so the Sect. 4.2 recording seems to be a different set-up.
> - Standard model in water (Table 5): 1/0.737 = 1.36 and 5/3.720 = 1.34, close to n = 1.33 for water. ✓
> - Bias claim: 0.06 mm × 20.3 px/mm = 1.2 px at 100 px, i.e. 1.2%; 1.2% × 5 px = 0.06 px (p. 275). ✓

## Data tables
**Calibrations before and after self-calibration** (Tables 1–2, p. 273–274; camera-1 parameters before correction). Error in V is the error of the synthetic 2D3C field; "false" is the share of rejected vectors. "—" means no meaningful field.

| Cal. | f₁ (mm) | T_z1 (mm) | R_x1 (°) | R_y1 (°) | R_z1 (°) | Disparity (px) | Error in V before (px) | False before | Residual disparity (px) | Position error (px) | Error in V after (px) | Recon. error after (px) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Ref. | 60.66 | 449.4 | 6.2 | 29.2 | 13.5 | 1.0 | 0.07 | 0.0% | 0.004 | 0 | 0.023 | 0.008 |
| 1 | 60.03 | 444.8 | 6.0 | 29.8 | 13.4 | 1.0 | 0.07 | 0.0% | 0.040 | 0.073 | 0.024 | 0.008 |
| 2 | 60.29 | 443.4 | 2.1 | 29.6 | 6.2 | 8.2 | 0.39 | 6.7% | 0.017 | 0.076 | 0.023 | 0.008 |
| 3 | 60.36 | 442.9 | 1.2 | 29.7 | 4.2 | 9.0 | 0.44 | 7.1% | 0.036 | 0.107 | 0.024 | 0.008 |
| 4 | 61.23 | 447.3 | 2.7 | 33.6 | −0.6 | 38 | 2.2 | 60% | 0.050 | 0.181 | 0.025 | 0.008 |
| 5 | 61.23 | 446.8 | 2.1 | 32.1 | −0.6 | 41 | 2.2 | 70% | 0.048 | 0.153 | 0.024 | 0.008 |
| 6 | 60.89 | 446.6 | 5.7 | 29.7 | −0.3 | 49 | 2.8 | 74% | 0.043 | 0.024 | 0.027 | 0.008 |
| 7 | 61.57 | 451.3 | 4.5 | 30.5 | −0.5 | 87 | 3.4 | 95% | 0.047 | 0.195 | 0.026 | 0.008 |
| 8 | 60.32 | 435.4 | −1.2 | 30.2 | 0.0 | 126 | — | 100% | 0.055 | 0.406 | 0.035 | 0.008 |
| 9 | 60.88 | 448.9 | 21.7 | 46.2 | −1.9 | 144 | — | 100% | 0.074 | 0.312 | 0.030 | 0.009 |
| 10 | 60.28 | 456.3 | 25.9 | 32.4 | 7.8 | 166 | — | 100% | 0.095 | 0.189 | 0.031 | 0.010 |
| 11 | 61.44 | 458.3 | 16.3 | 34.7 | 6.9 | 178 | — | 100% | 0.051 | 0.544 | 0.046 | 0.008 |
| 12 | 62.68 | 465.2 | 12.6 | 8.6 | 0.1 | 182 | — | 100% | 0.101 | 0.561 | 0.030 | 0.010 |
| 13 | 61.23 | 433.0 | 3.8 | 33.9 | −8.2 | 263 | — | 100% | 0.038 | 1.335 | 0.087 | 0.008 |
| 14 | 62.82 | 447.9 | −13.6 | 30.6 | −1.6 | 298 | — | 100% | 0.286 | 3.275 | 0.212 | 0.018 |
| 15 | 63.51 | 444.6 | 3.0 | 32.3 | −13.6 | 351 | — | 100% | 0.103 | 1.480 | 0.100 | 0.010 |
| 16 | 62.11 | 482.1 | 7.6 | 26.0 | −2.8 | 502 | — | 100% | 0.073 | 0.771 | 0.052 | 0.009 |

> Read from rendered pages; the text layer scrambles both tables. One mismatch with the text: it says every calibration other than 13–15 has an error in V below 0.04 px (p. 274), but Table 2 gives 0.046 px for calibration 11 and 0.052 px for calibration 16.

**Pinhole parameters after self-calibration** (Table 3, p. 275). Eight-view bundle adjustment, self-calibrated onto the random-dot target.

| Medium | Initial disparity (px) | Residual disparity (px) | Camera | x₀/y₀ (px) | s_x | f (mm) | T_x (mm) | T_y (mm) | T_z (mm) | R_x (°) | R_y (°) | R_z (°) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Air | 65 | 0.07 | 1 | 586/552 | 0.998 | 60.8 | 16.1 | 1.3 | 411.7 | 1.4 | 20.3 | 2.7 |
| | | | 2 | 706/548 | 0.998 | 60.9 | 9.2 | 0.2 | 435.2 | −0.2 | −24.3 | 2.2 |
| Water | 7.9 | 0.16 | 1 | −1882/560 | 0.957 | 81.0 | 113.9 | −10.3 | 537.6 | 2.7 | 27.0 | 4.4 |
| | | | 2 | 4074/491 | 0.924 | 83.4 | −162.0 | −8.3 | 570.5 | −1.7 | −34.1 | 4.2 |

In air, R_y of the two cameras differs by 44.6°, the "about 45°" of the text (my arithmetic). The water fit gives 61°, which is part of the non-physical fit to the refracting interfaces.

**Translated plate: measured against stage displacement** (Table 4, p. 275). Stereo-PIV ± values are as printed.

| Stage | 1 mm | 2 mm | 3 mm | 4 mm | 5 mm |
|---|---|---|---|---|---|
| Air triangulation (mm) | 0.999 | 2.002 | 2.996 | 4.002 | 5.001 |
| Air stereo-PIV (mm) | 0.995 ± 0.001 | 1.992 ± 0.003 | 2.973 ± 0.003 | 3.962 ± 0.004 | 4.941 ± 0.006 |
| Air stereo-PIV (px) | 20.22 ± 0.03 | 40.46 ± 0.06 | 60.38 ± 0.05 | 80.47 ± 0.08 | 100.35 ± 0.12 |
| Water triangulation (mm) | 1.001 | 2.005 | 2.995 | 3.998 | 4.992 |
| Water stereo-PIV (mm) | 0.997 ± 0.004 | 1.995 ± 0.006 | 2.977 ± 0.007 | 3.969 ± 0.007 | 4.949 ± 0.009 |
| Water stereo-PIV (px) | 20.59 ± 0.06 | 41.18 ± 0.13 | 61.45 ± 0.15 | 81.92 ± 0.15 | 102.15 ± 0.19 |

**Calibration in air, self-calibration onto a sheet in water** (Table 5, p. 278). Displacements in mm; 1 mm = 21.1 px; true glass-to-sheet distance dZ_g-l = 40 mm. The last column is my arithmetic.

| Model | Method, assumed dZ_g-l | 1 mm | 2 mm | 3 mm | 4 mm | 5 mm | Error at 5 mm |
|---|---|---|---|---|---|---|---|
| Standard | Triangulation | 0.737 | 1.491 | 2.228 | 2.978 | 3.720 | −25.6% |
| Standard | Stereo-PIV | 0.743 ± 0.004 | 1.486 ± 0.003 | 2.217 ± 0.006 | 2.957 ± 0.007 | 3.688 ± 0.006 | −26.2% |
| 3-media | Triangulation, 40 mm | 0.996 | 2.005 | 3.003 | 4.014 | 5.016 | +0.3% |
| 3-media | Stereo-PIV, 40 mm | 1.006 ± 0.004 | 2.012 ± 0.004 | 3.001 ± 0.006 | 4.001 ± 0.006 | 4.989 ± 0.015 | −0.2% |
| 3-media | Stereo-PIV, 30 mm | 1.006 ± 0.003 | 2.009 ± 0.004 | 2.996 ± 0.005 | 3.994 ± 0.006 | 4.981 ± 0.007 | −0.4% |
| 3-media | Stereo-PIV, 20 mm | 1.003 ± 0.003 | 2.007 ± 0.004 | 2.994 ± 0.005 | 3.991 ± 0.006 | 4.976 ± 0.007 | −0.5% |
| 3-media | Stereo-PIV, 0 mm | 0.972 ± 0.003 | 1.944 ± 0.005 | 2.899 ± 0.006 | 3.865 ± 0.007 | 4.819 ± 0.009 | −3.6% |
| 3-media | Stereo-PIV, 40 mm, α_x = 10° | 1.021 ± 0.007 | 2.041 ± 0.013 | 3.045 ± 0.018 | 4.059 ± 0.025 | 5.061 ± 0.032 | +1.2% |
| 3-media | Stereo-PIV, 40 mm, α_y = 10° | 1.000 ± 0.001 | 2.001 ± 0.003 | 2.995 ± 0.005 | 3.978 ± 0.006 | 4.960 ± 0.008 | −0.8% |

> Each row label in Table 5 runs over two lines (method, then "dZ_g-l = …"), with the values on the first line. I read the labels that way; the alternative (each "dZ_g-l" label belonging to the next row) would leave the last label with no values, so it is unlikely. The text's 3% error in dx and 8% in dy for the tilted cases (p. 278) are not in the table. Sect. 3.2 puts the z = 0 plane "about 45-mm deep in water" (p. 274), while Sect. 4.2 and Table 5 use 40 mm; either the set-ups differ or one is approximate.

## Figures worth remembering
- **Fig. 1 (p. 268):** the pinhole camera model: world and camera systems, R and T, optical axis, focal length f and principal point (x₀, y₀).
- **Fig. 2 (p. 269):** a misaligned plate; world points on the true sheet triangulated from the disparity vectors.
- **Fig. 3 (p. 270):** flow chart of the six-step self-calibration. The figure to copy.
- **Fig. 4 (p. 272):** flow chart of the stereo-PIV computation: optional initial 2D3C reference projected to each camera, combined dewarping and symmetric deformation (MF ∓ ½REF), correlation, median filter, fill-up and smoothing, 3C reconstruction that removes 2D2C vectors above a threshold, and final validation.
- **Fig. 5 (p. 276):** dewarped particle images of cameras 1 and 2 for calibration 2, with the high-shear window, and the disparity map of a rotation about y (opposite-sign x disparities on the two sides, small in the middle).
- **Fig. 6 (p. 277):** vector field for the uncorrected calibration 1 (holes where vectors were rejected), the near-identical fields from calibrations 1–3 after correction, and their difference at 50× magnification.
- **Fig. 7 (p. 277):** the three closed-volume strategies: recording position, calibration in a water basin at the same distance L, and calibration in air with the 3-media model.
- **Fig. 8 (p. 279):** how particles across the sheet thickness d spread the camera-1/camera-2 correlation peak to width w_c.

## Notation
- X_w = (X_w, Y_w, Z_w): world coordinates, Z_w = 0 the sheet plane after correction; X_c = (X_c, Y_c, Z_c): camera coordinates; x_i = (x_i, y_i): pixel position in camera i.
- M_i: mapping function of camera i; MF_i in Fig. 4; REF_i: reference displacement field projected into camera i.
- R, T: rotation and translation from world to camera coordinates; R₁₂, T₁₂: pose of camera 2 relative to camera 1; dR, dT: rotation and offset of the fitted sheet plane relative to the plate.
- f: principal distance (pinhole to principal point); f_lens: lens focal length; T_z: plate distance; x_u, x_d: undistorted and distorted image coordinates; k₁, k₂: radial distortion coefficients; S_x: skew factor; S_pixel: pixel size; (x₀, y₀): principal point.
- d (Sect. 2.2): disparity vector between the two dewarped views; d (eq. 8): sheet thickness; w_c: correlation-peak width; α₁, α₂: viewing angles from the x axis.
- F: fundamental matrix. 2D2C: two components on a plane; 2D3C: three components on a plane. dZ_g-l: distance from the glass to the light sheet; α_x, α_y: assumed sheet tilts about x and y.

## Relevance to this project
This is the method behind the stereo-PIV "self-calibration" that later papers treat as standard. It is the after-the-fact fix that [Shehzad et al. 2021](shehzad-2021-laser-sheet-alignment-piv.md) set out to make unnecessary. For the user's work (CLAUDE.md) it matters wherever the lab uses stereo PIV, and its error analysis applies to any stereo data the group receives from other labs.

**How it sits with the other notes**
- **It finishes what [Willert 1997](willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md) started.**
  - Willert found 10 px (1 mm) disparities at the field edges from a grid tilted by less than 0.6°, using an early camera-1/camera-2 correlation of particle images, and could only apply a uniform 6 px offset (his p. 1470).
  - Wieneke states that shifting the sample positions, as Willert did, removes the main error only for small misalignments. For large ones the coordinate system and the mapping derivatives must also be corrected (p. 270).
  - Table 1 (p. 273) shows what Willert's warning means in practice: about 9 px of disparity already gives 0.44 px errors in a 10% gradient, and 40 px or more gives no usable field.
  - Both use the same correlation machinery between the two cameras that [Willert & Gharib 1991](willert-1991-digital-particle-image-velocimetry.md) introduced between two frames. Here it is ensemble-averaged over 5–50 pairs, because the two views of a thick sheet are not the same particle pattern.
- **It answers the open problem [Prasad 2000](prasad-2000-stereoscopic-piv-review.md) closed on** (target–sheet misregistration had not been analysed; Prasad p. 115). It quantifies the error (Tables 1–2) and removes it without aligning the plate.
  - It also sits between Prasad's reconstruction classes. The pinhole model is geometric, but it is fitted to a 3D plate and then corrected from the particle images themselves.
- **Against [Soloff et al. 1997](soloff-1997-distortion-compensation-generalized-stereoscopic-piv.md).**
  - Wieneke prefers about 22 physical parameters to the 80 coefficients of a cubic 2D polynomial on two planes, to avoid fitting mark-position noise (p. 269). He keeps the polynomial for strong non-perspective distortion.
  - Self-calibration works with a polynomial too, as long as it is defined on enough z planes to cover the sheet (p. 270). This is the route used when Soloff-type calibrations are self-calibrated (my remark).
  - The bias at large dz (1.2 px at 5 mm) comes from using mapping derivatives at z = 0 only (p. 275). That is the same linearisation the Soloff note lists as a limit (displacements large enough to break the linearisation).
- **[Shehzad et al. 2021](shehzad-2021-laser-sheet-alignment-piv.md) is the counter-position.** They align the sheet before calibrating and argue that disparity-based corrections can leave a bias of unknown source (their p. 3–4).
  - This paper supports part of that worry: it reports, and does not fully explain, a systematic bias for large z displacements (p. 275). It also notes that calibration errors can hide behind a small plane-fit error (p. 270).
  - Shehzad's Table 1 lists 0.06 px for Wieneke's method. That is probably the 0.055 px difference between calibrations 1 and 3 in Sect. 3.3 (p. 276), rounded (my reading).
  - Shehzad's summary that a 20 px offset and a 5% gradient give "5% error in the 3C displacement" is their paraphrase. This paper gives a 1 px change in displacement and calls the error "considerable" (p. 269), without a percentage.
  - The two approaches agree that the error is real and of the order of 0.05–0.1 px when handled. Self-calibration also gives a diagnostic that pre-alignment cannot: the sheet's actual position, thickness, flatness and two-pulse overlap (Sect. 5).
- **Planar PIV.** Self-calibration needs two views, so it cannot correct planar PIV (Shehzad p. 4). The group's planar case of sheet misalignment, fixed by enforcing symmetry in [Ivelja et al. 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) (p. 4), has no equivalent fix here. One part does carry over: the alternative overlap check mentioned on p. 279 (shortest dt between the two pulses, then correlate) needs only one camera.
- **Lens distortion.** The pinhole model carries only radial terms (k₁, usually). [Sun et al. 2021](sun-2021-distortion-correction-large-sensor-piv.md) needed a bicubic map for a strongly distorting large-sensor lens. That fits Wieneke's own advice to use a polynomial when the distortion is not perspective-like (p. 269).
- **Stereo PIV in jets in the library.** [Alkislar et al. 2003](alkislar-2003-screeching-rectangular-jet-stereo-piv.md) (cameras about 90° apart, cross-planes of a screeching rectangular jet), [Cavalieri et al. 2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md) (TR cross-plane stereo, DaVis 8) and [Jaunet et al. 2017](jaunet-2017-two-point-coherence-wave-packets-turbulent-jets.md) (dual-plane TR stereo at 30°) all need this kind of correction. Their notes do not record whether they self-calibrated.

**For the group's PIV of shock-containing jets** (my estimates unless a page is given)
- **The error scales with disparity times gradient** (p. 269, 273). In a supersonic jet the largest in-plane gradients sit at the shocks and across the thin near-nozzle shear layer. A residual disparity therefore puts its largest 3C errors where particle lag already adds artificial fluctuation ([diagnostics-and-facilities](../Topics/diagnostics-and-facilities.md)). The two artefacts would be hard to tell apart in RMS maps.
- **Spurious out-of-plane velocity.** With the cameras in the x–z plane, w comes from the difference u₂ − u₁ (Willert 1997, eq. 3). A disparity of δ px along x then adds roughly δ·∂u/∂x/(tan α₁ − tan α₂) to w. At a shock, ∂u/∂x is large, so even 1 px of residual disparity could show up as a spurious w at every shock. That would matter for cross-plane stereo of helical or flapping screech modes, where w is the quantity of interest.
- **Cross-plane stereo of jets needs a thick sheet.** The paper's rule that the sheet should be at least twice as thick as the displacement (p. 279) is the in-plane statement. In cross-planes the jet axis is out of plane, so the sheet must also keep the particle pairs. The disparity-peak width (eq. 8) is a cheap in-situ measurement of the actual thickness and of the overlap of the two laser cavities' sheets.
- **Windows and shocks.** The 3-media model handles flat, static interfaces only (p. 278). It does not correct the unsteady aero-optical deflection by shocks and shear layers; [Ragni et al. 2011](ragni-2011-particle-tracer-response-shocks-piv.md) tilt the line of sight 2–5° upstream and raise the f-number for that (their p. 57–58).

**Methods and data for the lab workflow (CLAUDE.md)**
- **No time resolution needed.** The disparity map is an ensemble over 5–50 simultaneous camera pairs (p. 270), and the PIV and 3C reconstruction are pair by pair. The method suits non-TR stereo PIV (means, RMS, POD, POD-pair phase) and TR stereo PIV (SPOD, BMD, HPOD) alike.
- **Its key parameters**: the number of summed images, the disparity window (128 × 128 px, 50% overlap in Sect. 3.3), the triangulation-error threshold (0.5 px), the number of iterations (2–3), the reconstruction-error threshold (0.5–1 px) and the multi-pass schedule (64 × 64 at 50%, then 32 × 32 at 75%).
- **The reconstruction-error filter is a free outlier detector.** It flags 2C vectors that the two cameras do not agree on (p. 271). For snapshot POD and SPOD, which need a mask common to all snapshots or gap filling, its rejection map is also a useful diagnostic of where the calibration is weakest.
- **Drift, intermittency and amplitude tracking.** The calibration is static and the ensemble assumes a still sheet. In a long TR record, recomputing the disparity map over successive blocks of time would track slow drift of the sheet or cameras. The paper itself notes that a single-view disparity could correct vibration (p. 270). This bounds the drift that the [Soloff note](soloff-1997-distortion-compensation-generalized-stereoscopic-piv.md) warns could be misread as amplitude modulation by Hilbert POD or SPOD-reconstruction tracking. A changing disparity map over the record would be a calibration effect, not flow intermittency.
- **Synthetic test protocol.** The Sect. 3.1 test warps a known 2D2C field into a 4-frame stereo image with a reference mapping and checks the recovered field (p. 273). The same protocol, driven by LES velocity fields such as the PyFR staging runs, would test a stereo-PIV chain on jet-like gradients before comparing PIV with LES. It would need sheet thickness and image noise added, which the paper leaves out.

**Modelling side.** There is no flow modelling. The paper's models are the camera, triangulation, plane, epipolar and Snell's-law models listed under Setup. Their main weaknesses are the z = 0 derivatives in the 3C reconstruction, the fixed internal parameters, the planar-sheet assumption and the need to measure the interface geometry by hand (p. 271, 275, 278). It does not touch the PyFR staging LES except through the synthetic-image idea above.

**Related works cited, candidates for `/add-paper`:** Fournel, Coudert, Lavest, Collange & Schon 2003 (PSFVIP-4, self-calibration of telecentric lenses); Fournel, Lavest, Coudert & Collange 2004 (EUROPIV 2 proceedings, Springer, self-calibration of Scheimpflug cameras, 2–4 µm accuracy); Coudert & Schon 2001 (Meas. Sci. Technol. 12, back-projection with misalignment correction); Calluaud & David 2004 (Exp. Fluids 36, stereo PIV around a surface-mounted block); Meinhart, Wereley & Santiago 1999 (ASME/JSME, ensemble-averaged correlation); Tsai 1986 (IEEE CVPR, camera calibration); Hartley & Sturm 1994 (ARPA, triangulation); Hartley & Zisserman 2000 (*Multiple View Geometry*); Maas 1996 (in Dracos, *Three-dimensional velocity and vorticity measuring*, multimedia photogrammetry). None is held as a PDF or listed in `Papers_to_get.md`.
