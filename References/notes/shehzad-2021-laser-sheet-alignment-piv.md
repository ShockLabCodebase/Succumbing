---
key: "shehzad-2021-laser-sheet-alignment-piv"
title: "On assuring the accurate parallel alignment of a laser sheet for planar and stereoscopic particle image velocimetry"
authors: ["Shehzad, M.", "Lawrence, S.", "Atkinson, C.", "Soria, J."]
year: 2021
type: "article"
venue: "Exp. Fluids 62, 208"
bib: {"journal": "Experiments in Fluids", "volume": "62", "pages": "208"}
doi: "10.1007/s00348-021-03307-3"
arxiv: ""
pdf: "Shehzad-EtAl_2021_On-Assuring-The-Accurate-Parallel-Alignment-Of-A-Laser-Sheet-For-Planar-And.pdf"
version: "published"
unverified: []
group: false
facility: "LTRAC, Monash University"
data: ["PIV", "PIV-stereo"]
methods: ["calibration"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["diagnostics-and-facilities"]
related: ["sun-2021-distortion-correction-large-sensor-piv", "davey-2025-hpod-sphere-wake", "ragni-2011-particle-tracer-response-shocks-piv"]
cites: []
summary: "Aligns the laser sheet to the calibration target before calibrating (slit + three photodetectors), removing the need for self-calibration; SPIV uncertainty < 5.9 µm (0.09 px)"
---
# On assuring the accurate parallel alignment of a laser sheet for planar and stereoscopic particle image velocimetry

- **Authors:** M. Shehzad, S. Lawrence, C. Atkinson, J. Soria (LTRAC, Department of Mechanical and Aerospace Engineering, Monash University)
- **Source:** Experiments in Fluids 62:208 (2021); received 7 Apr 2021, published online 26 Sep 2021
- **DOI:** 10.1007/s00348-021-03307-3
- **PDF:** `References/Paper_PDFs/Shehzad-EtAl_2021_On-Assuring-The-Accurate-Parallel-Alignment-Of-A-Laser-Sheet-For-Planar-And.pdf` (14 pp.)
- **Tags:** PIV calibration, stereoscopic PIV (SPIV), laser sheet alignment, misalignment error, self-calibration, Soloff polynomial mapping, dewarping, measurement uncertainty, experimental technique

## Summary
Planar (2C-2D) and stereo (3C-2D) PIV calibration assumes the calibration target sits in, and parallel to, the laser sheet; any rotation or Z offset between them gives a perspective error (planar) or position and 3C-reconstruction errors (stereo). Existing fixes (Willert 1997 correction, Wieneke 2005 self-calibration, Scarano et al. 2005, Coudert & Schon 2001, target-free calibration of Fouras et al.) correct the error *after* the fact using the stereo disparity map or a third camera, and can leave a bias whose source is unknown; none of them work for planar PIV. The paper instead aligns the sheet to the target *before* calibrating. The target is held in a hollow frame with a 1 mm slit on the front face and three 1 mm holes with photo-detectors on the rear face; the sheet is adjusted until all three detectors read maximum, and the frame is then traversed by a known offset to put the target in the middle of the sheet. The alignment is checked by imaging the sheet with a bare CMOS sensor and by stereo PIV of a particle-laden resin block given known displacements, which gives a maximum uncertainty below 5.9 µm (0.09 px), comparable with self-calibration, without any post-correction.

## Key findings
- **Size of the problem** (literature, p. 3): a 0.6° rotation gives disparity vectors near the edges up to 0.53% of the domain diagonal (Willert 1997); a 20 px Z offset with a 5% velocity gradient gives 5% error in the 3C displacement (Wieneke 2005); uncorrected misalignment can bias turbulent stresses by up to 20% (Beresh & Smith 2014). Wide-angle stereo is more sensitive to Z misalignment (p. 3).
- **Disparity-based corrections can add bias** (p. 3–4): self-calibration fits a plane to triangulated points and adjusts both mapping functions, so errors in the disparity map propagate into the calibration. Target-free calibration needs a third paraxial camera and suffers from small-particle point-correspondence errors and uncorrected distortion near the FOV edges (p. 4).
- **None of the post-corrections apply to planar 2C-2D PIV** (no stereo disparity), whereas the new method does (p. 4).
- **Photo-detector sensitivity** (p. 6–7, Figs. 6–7): rotating the sheet in 0.1° steps from the reference Ψ_o drops the H1/H3 intensities almost linearly while H2 stays roughly constant; beyond Ψ_g ≈ 0.92° the 1 mm sheet can no longer reach H1/H3 through the 1 mm slit (consistent with atan(1/62) ≈ 0.92°). Alignment criterion: H1 and H3 within 2% of the H2 maximum (p. 6). Offsetting the sheet in Z lowers all three readings; offsetting in Y lowers H2 and H3 and raises H1 (p. 7).
- **Imaging check** (p. 7, Figs. 8–10): fitting a line to Gaussian-fit peak locations of sheet intensity profiles recovers an imposed rotation with accuracy 0.08° over ±10°, and residual below 0.03° over the ±1° range the rig can actually reach.
- **Stereo validation** (p. 12, Table 3): max uncertainties in U, V, W of 5.9, 4.3 and 5.1 µm (0.09, 0.06, 0.08 px); max residual error < 7.0 µm (0.10 px); mean across all cases 3.2 µm (0.05 px). All are below the 5.7 µm (0.08 px) uncertainty of the imposed displacements. Compare self-calibration 4.0 µm (0.06 px) and target-free 7.0 µm (0.07 px) (p. 12–13).
- **Cases with Y translation are worse**, probably because the change in viewing angles β₁, β₂ with Y is neglected in reconstruction (p. 12). Negligible bias found in the 3C fields (Fig. 13, p. 12–13).
- **Conclusion** (p. 12–13): with the sheet aligned first, self-calibration is not needed, which avoids its risk of bias.

## Setup / method
- **Alignment rig** (p. 5–6, Figs. 2–5): LTRAC-built hollow frame, inner opening 181 × 141 mm², target held by six screws. 1 mm slit on the front; three 1 mm holes H1/H2/H3 at Y = +62, 0, −62 mm on the rear, each backed by a photo-detector in a 10 mm metal cylinder, read on a multichannel oscilloscope. Slit centre is 8.5 mm from the target face.
- **Optics** (p. 6): beam steered with two right-angle mirror mounts (two screws each); sheet made with a cylindrical concave lens on a rotation stage (rotation about X, resolution 0.014°); telescope keeps the sheet about 1 mm thick at the slit. Maximum rotation available in this rig is under ±1° (p. 7).
- **Procedure** (Fig. 5 flowchart, p. 6–8): align beam to H2 → form sheet → rotate/translate until max intensity at all three holes → translate frame ΔZ = 8.5 mm on a micrometre stage so the target is mid-sheet → set stereo cameras → acquire calibration images at several Z across the sheet thickness.
- **Imaging check** (p. 7): bare ArduCAM AR0134 1.2 MP global-shutter sensor (ND filters to protect it) on a traverse sliding along the frame face from Y = +62 to −62 mm, or picking off part of the sheet with a beam splitter at 90°. Gaussian-filter each image, fit Gaussians across the sheet, fit a line to peak location vs Y; angle from the slope. Demonstrated by digitally rotating a reference sheet image from −10° to +10°.
- **Stereo validation rig** (p. 7–11):
  - Target: 200 × 200 mm² glass plate, chequerboard pitch 1 ± 0.01 mm, on three micrometre stages (X, Y, Z; uncertainty 5.77 µm).
  - Cameras: two PCO Pixelfly, 1280 × 1024 px, 6.45 µm pixels, 55 mm Micro-NIKKOR lenses on Scheimpflug adapters, f/2.8, optical axes at ±45° to Z in the XZ plane (chosen because residual error drops ~50% going from 15° to 45° and bias in viewing angle is minimal; p. 9).
  - Calibration planes at Z = −1.0, −0.5, 0, 0.5, 1.0 mm (covers the 1 mm sheet plus ±0.5 mm block motion). Images masked to a four-sided polygon; corners found by Sobel edge filter, cross-correlation with a '+' template, and 2D Gaussian fit to sub-pixel accuracy (p. 10).
  - 3D calibration: N = 48 × 46 × 5 = 11,040 points; Soloff polynomial (eq. 1); dewarping by bilinear interpolation at M = 66.67 µm/px, chosen ≤ the maximum magnification in the distorted image to avoid information loss (p. 10–11).
  - Particle block: transparent resin cast 181.0 × 141.0 × 16.5 mm³ with Vestosint particles of 54 µm mean diameter; front face 8.0 mm from the sheet centre. A particle-free 8.0 mm cast is placed in front of the target during calibration to match the refractive-index path (p. 11).
  - Known displacements: up to 500 µm in X and Z, 380 µm in Y; Z displacement applied by moving the cameras instead of the block (p. 11).
- **PIV processing** (p. 11–12): dewarped images of each camera paired with the reference (0,0,0) image (so these are single displacement pairs, not a time series); in-house multigrid/multipass cross-correlation (Soria 1996), final window 32 × 32 px with 50% overlap, normalised median filter (Westerweel & Scarano 2005) threshold 2. 3C reconstruction by Willert (1997), over-determined (four 2C values, three unknowns). No post-correction applied.
- **Uncertainty sources listed** (p. 12): corner detection, mapping-function fit, least-squares 3C fit, and the imposed micrometre displacements.
- No modelling or simulation in this paper; it is purely an experimental-technique paper.

## Key equations
- **Soloff et al. (1997) mapping**, cubic in X, Y and (stated) quadratic in Z (eq. 1, p. 10):
  $x_i = a_1 + a_2X_i + a_3Y_i + a_4Z_i + a_5X_i^2 + a_6X_iY_i + a_7Y_i^2 + a_8X_iZ_i + a_9Y_iZ_i + a_{10}Z_i^{2?} + a_{11}X_i^3 + a_{12}X_i^2Y_i + a_{13}X_iY_i^2 + a_{14}Y_i^3 + a_{15}X_i^2Z_i + a_{16}X_iY_iZ_i + a_{17}Y_i^2Z_i + a_{18}X_iZ_i^2 + a_{19}Y_iZ_i^2$, and the same form for $y_i$ with $a_{21}\ldots a_{39}$.
  > The PDF prints the a₁₀ and a₃₀ terms as $Z_i^3$, while the text says "second order in Z". The standard Soloff form has $Z^2$ there, so this is probably a typo in the paper. Check p. 10 before reusing.
- **Fit residual** (eqs. 2–3, p. 11): $E_x = \frac{1}{N}\sum_{i=1}^N(\hat{x}_i - x_i)$, $\sigma_x = \sqrt{\frac{1}{N}\sum_{i=1}^N(\hat{x}_i - x_i - E_x)^2}$, with $\hat{x}_i$ the mapped image coordinate of the i-th object point.
- **Stereo 3C reconstruction** (Willert 1997; eq. 4, p. 12):
  $U = \dfrac{u_1\tan\alpha_2 - u_2\tan\alpha_1}{\tan\alpha_2 - \tan\alpha_1}$,
  $V = \dfrac{v_1+v_2}{2} + \dfrac{u_2+u_1}{2}\left(\dfrac{\tan\beta_2 - \tan\beta_1}{\tan\alpha_1 - \tan\alpha_2}\right)$,
  $W = \dfrac{u_2-u_1}{\tan\alpha_1 - \tan\alpha_2} = \dfrac{v_2-v_1}{\tan\beta_1 - \tan\beta_2}$.
  α₁, α₂ are viewing angles in XZ and β₁, β₂ in YZ (Fig. 12); β terms are taken as ≈ 0 for small Y displacements.
- **Viewing angle from known displacements** (Fei & Merzkirch 2004; eq. 5, p. 12): $\tan\alpha = \dfrac{dZ'_m}{dZ}\cdot\dfrac{dX}{dX'_m}$, with $dZ'_m = M\,dZ\tan\alpha$ and $dX'_m = M\,dX$.

> Equations 1, 4 and 5 were checked against a rendered image of p. 10 and p. 12; only the Z³/Z² issue in eq. 1 is uncertain.

## Data tables
**Table 1 (p. 4): existing post-correction schemes for 3C-2D SPIV misalignment**

| Method | Based on | Residual error [px] | Type |
|---|---|---|---|
| 3C field correction, Willert (1997) | Manual Z translation | 0.34 | SD |
| Self-calibration, Wieneke (2005) | Disparity map | 0.06 | SD |
| Posteriori calibration adjustment, Scarano et al. (2005) | Disparity map | 0.10 | Mean |
| 3C field correction, Coudert & Schon (2001) | Disparity map | 0.50 | SD |
| Target-free calibration, Fouras et al. (2007, 2008) | Cross-correlation with a third paraxial camera | 0.07 | SD |

**Table 2 (p. 11): mapping-fit residual** — E = 0.0002 px (x), −0.0001 px (y); σ = 0.0439 px (x), 0.0373 px (y).

**Table 3 (p. 11): imposed displacements and SPIV uncertainty (µm)**; imposed-displacement uncertainty 5.7 µm (0.08 px).

| Case | T_X | T_Y | T_Z | σ_X | σ_Y | σ_Z |
|---|---|---|---|---|---|---|
| 1 | 0 | 0 | 500 | 2.5 | 1.9 | 2.5 |
| 2 | 0 | 380 | 0 | 3.6 | 3.1 | 2.7 |
| 3 | 0 | 380 | −500 | 3.2 | 2.8 | 3.4 |
| 4 | 0 | 380 | 500 | 3.3 | 4.3 | 3.2 |
| 5 | 500 | 0 | 0 | 2.2 | 1.3 | 2.5 |
| 6 | 500 | 0 | 500 | 2.6 | 2.5 | 3.7 |
| 7 | 500 | 380 | 0 | 3.5 | 3.2 | 5.1 |
| 8 | 500 | 380 | −500 | 5.9 | 2.8 | 3.3 |
| 9 | 500 | 380 | 500 | 3.6 | 3.4 | 3.3 |

> Tables 1 and 3 were read from rendered page images (the text extraction scrambled them). Mean of all 27 σ values is ≈ 3.2 µm, matching the stated 3.2 µm (p. 12).

## Figures worth remembering
- **Fig. 1 (p. 3):** stereo object/image spaces and the two misalignment forms (rotation γ about X/Y and Z offset).
- **Fig. 2–3 (p. 5):** full setup schematic; close-up of target frame with slit, holes and photo-detectors, and the CMOS-traverse verification setup.
- **Fig. 4 (p. 6):** three-step alignment sketch (beam to H2, form and rotate sheet, max at H1–H3).
- **Fig. 5 (p. 8):** flowchart of the whole alignment and calibration procedure; the most practical figure to copy.
- **Fig. 6–7 (p. 9):** hole intensities vs sheet rotation; H1/H3 ratio falls almost linearly to ~0 by ~0.9°.
- **Fig. 8–10 (p. 9–10):** imaged sheet, Gaussian-peak line fit, and measured-angle error vs imposed angle.
- **Fig. 11 (p. 10):** distorted and dewarped calibration images.
- **Fig. 12 (p. 11):** viewing-angle geometry (α, β) for 3C reconstruction.
- **Fig. 13 (p. 13):** residual error maps for cases 5, 2, 1, 9 (±10 µm colour scale); no visible bias pattern.

## Notation
- 2C-2D: planar PIV; 3C-2D: stereo PIV (SPIV). (X, Y, Z) object space, Z normal to the sheet; (x, y) image plane.
- Ψ_o: reference (aligned) sheet position; Ψ_g: imposed rotation about X; Ψ_m: measured rotation. γ, ΔZ: misalignment rotation and offset (Fig. 1).
  > The Fig. 1 symbols were garbled in extraction; γ and ΔZ are a best guess — check p. 3.
- H1, H2, H3: photo-detector holes at Y = +62, 0, −62 mm.
- [T_X, T_Y, T_Z]: imposed block displacements; (U, V, W): reconstructed 3C displacement; (u_j, v_j): 2C displacement of camera j.
- α_j, β_j: viewing angles of camera j in the XZ and YZ planes. M: magnification (µm/px).

## Relevance to this project
This project analyses PIV, schlieren and acoustic data on resonant jets from the Shock Lab group (see CLAUDE.md). This paper is a measurement-technique paper from a different Monash LTRAC group (Soria/Atkinson; facility described only as LTRAC), not Shock Lab group work, and has no modelling or simulation content.
- **PIV calibration quality:** a misaligned target is a hidden source of error in mean and RMS fields and in the transverse-velocity POD used to extract screech/impingement modes (cf. [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)). Up to 20% bias in turbulent stresses (p. 3) would directly affect RMS maps and POD energy ranking, so it is worth checking alignment before the "basic statistics" stage of the workflow.
- **Planar PIV benefits too:** the disparity-based fixes (self-calibration etc.) do not exist for planar 2C-2D PIV, which is what most lab jet PIV uses; this pre-alignment approach applies to both (p. 4).
- **Practical recipe to borrow:** slit-plus-three-holes frame, photo-detectors with a 2% criterion, then a known ΔZ shift to mid-sheet and calibration planes spanning the sheet thickness (Fig. 5, p. 8). A cheap bare-sensor check of sheet rotation (p. 7) could be reused in the lab.
- **Data dependence of methods:** everything here is non-time-resolved (single image pairs per imposed displacement); processing parameters (32 × 32 px final window, 50% overlap, normalised median filter threshold 2, Soria 1996 multigrid; p. 12) use the same Soria (1996) multigrid cross-correlation cited for the Shock Lab group PIV in Edgington-Mitchell et al. 2020 (p. 8 of that note's paper), so the uncertainty figures (~0.05–0.1 px) are a reasonable reference for calibration-limited error in POD-based analysis of non-time-resolved PIV. The paper does not address time-resolved PIV, SPOD or Hilbert-type analyses.
- **Refractive-index matching trick:** placing a particle-free cast in front of the target during calibration (p. 11) is relevant whenever imaging through windows or test-section walls (e.g. wind-tunnel PIV).
- **Related notes:** [sun-2021-distortion-correction-large-sensor-piv.md](sun-2021-distortion-correction-large-sensor-piv.md) (companion LTRAC PIV-calibration paper on distortion correction); [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md) (same Atkinson/Soria group, PIV analysed with HPOD).
