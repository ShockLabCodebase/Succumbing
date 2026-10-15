# Distortion correction of two-component two-dimensional PIV using a large imaging sensor with application to measurements of a turbulent boundary layer flow at Re_τ = 2386

- **Authors:** B. Sun, M. Shehzad, D. Jovic, C. Cuvier, C. Willert, Y. Ostovan, J.-M. Foucaut, C. Atkinson, J. Soria
- **Source:** Experiments in Fluids 62:183 (2021), published online 14 Aug 2021. Affiliations: LTRAC, Monash; LMFL Lille; DLR Cologne (p. 14).
- **DOI:** 10.1007/s00348-021-03273-w
- **PDF:** `//ad.monash.edu/home/User088/joellukw/Documents/Monash_Research_Fellow/Literature/Recent_Papers/Sun2021_Article_DistortionCorrectionOfTwo-comp.pdf` (14 pp.; network share, not in Git)
- **Tags:** PIV, 2C-2D PIV, large sensor, lens distortion, image dewarping, calibration, mapping function, R2 rational, P3 polynomial, Monte Carlo uncertainty, perspective error, turbulent boundary layer, ZPG-TBL

## Summary
Large CCD/CMOS sensors (here 47 MPx, 57 mm diagonal) give 2C-2D PIV much higher spatial range, but lens distortion towards the sensor edges then becomes a real error source that planar PIV usually ignores (p. 2). The paper fits two dewarping maps from a calibration-target image, a second-order rational function (R2) and a bicubic polynomial (P3), corrects the residual in-plane rotation of the target using the wall seen in the PIV images, and quantifies the map uncertainty with Monte Carlo simulation (p. 5–11). Because the distortion across one interrogation window is tiny (≈0.08 px), the velocity vector itself is unaffected and only its position is wrong (p. 8–9). This justifies a cheap "Method II": run PIV on the raw images and then move the vector positions through the mapping function, rather than dewarping every image first ("Method I") (p. 9–10). Tested on a ZPG turbulent boundary layer at Re_τ = 2386 against a previous (EuHIT) dataset and DNS, P3 beats R2, and Methods I and II are statistically indistinguishable; Method II is recommended (p. 11–12).

## Key findings
- **Uncorrected distortion matters near the image edge:** the raw-image mean velocity profile deviates from the EuHIT reference by up to ~80% near the wall (which lies at the image edge, where distortion is largest) (p. 11, Fig. 13). Raw-image ⟨u'u'⟩⁺ is up to 12% low with its peak shifted to higher y⁺ (p. 12, Fig. 14).
- **Wall straightness test** (Table 3, p. 8): max deviation of the measured wall from straight/horizontal: distorted 9.00 px (260 µm, 6.10 l⁺); R2 5.42 px; R2 + rotation 1.90 px; P3 3.98 px; **P3 + rotation 0.62 px (17.9 µm, 0.42 l⁺)**. The raw wall is parabolic; dewarped it is straight but rotated ≈0.04° (p. 7, Fig. 7).
- **P3 > R2:** R2 still deviates from EuHIT for y⁺ < 7 with a near-wall error similar to the raw images; P3 matches EuHIT and DNS for mean and Reynolds stresses (p. 12). ⟨v'v'⟩⁺ and ⟨u'v'⟩⁺ are less affected by dewarping than ⟨u'u'⟩⁺ (p. 12).
- **Local distortion is below PIV uncertainty:** max deformation of a 32×8 px interrogation window at the most distorted corner ≈ 0.08 px; particle-image size change < 2%; no extra pixel locking after dewarping (p. 8–9, Figs. 8–10).
- **Method I ≡ Method II** within experimental uncertainty for first- and second-order statistics; Method II is cheaper and is recommended (p. 12–13).
- **Map uncertainty is negligible:** Monte Carlo (N = 500,000) gives 95%-confidence residual error within 2 px at all but one marker for R2 (< 0.02% of sensor length); P3 slightly better (p. 11, Fig. 12).
- **Perspective error** (out-of-plane motion projected into the plane) cannot be corrected with one camera; with a 250 mm lens at ~1.5 m the max imaging angle is 0.02 rad, giving ~0.03 px bias for ~1.5 px out-of-plane displacement (p. 4).
- Distortion is pincushion, larger on the right of the image because the lens optical axis is slightly offset from the sensor centre (p. 6, Fig. 4).

## Setup / method
- **Facility:** LMFL High Reynolds Number Boundary Layer Wind Tunnel, Lille: 20.6 m test section, 2 m × 1 m cross-section, glass walls (p. 3). Not a Shock Lab group facility (Monash LTRAC authors are from the Soria/Atkinson group; the experiment is at LMFL).
- **Flow:** ZPG-TBL 6.8 m downstream of the trip; U∞ = 9.64 m/s (text says "9 m/s at the inlet"), Re_θ = 8120, δ₉₉ ≈ 103 mm, l⁺ ≈ 40 µm, u_τ = 0.348 m/s, Re_τ = 2386 (p. 3, Tables 1 and 4).
- **PIV:** water/glycol smoke (d_p ≈ 1 µm); BMI dual-cavity Nd:YAG, 200 mJ/pulse; sheet ≈ 300 µm thick; streamwise–wall-normal centreline plane (p. 3). Seeding 3–4× that of the earlier EuHIT campaign (p. 4). Not time-resolved (34,535 image pairs; Table 1).
- **Camera / optics:** Imperx Tiger T8810 CCD, 8864 × 5288 px, 5.5 µm pixels (48.7 × 29.0 mm), 12 bit; Hasselblad Zeiss Sonnar 250 mm f/5.6 + 45 mm extension tube (< 1% distortion), M = 0.19, 28.9 µm/px in object space (p. 3).
- **Processing:** in-house multigrid/multipass cross-correlation (Soria 1996) (p. 4).
- **Table 1 (p. 4):**

  | Quantity | Value |
  |---|---|
  | U∞ | 9.64 m/s |
  | Re_τ | 2386 |
  | N samples | 34,535 |
  | FOV | 255 × 152 mm = 2.46δ × 1.45δ |
  | Final IW, x | 32 px = 927 µm = 21.7 l⁺ |
  | Final IW, y | 8 px = 232 µm = 5.42 l⁺ |
  | IW, z (sheet) | 400 µm = 9.34 l⁺ |
  | Uncertainty: U / uu, vv / uv | 0.825% / 0.381% / 0.695% |

  > Text (p. 3) gives FOV as 254 mm and sheet thickness ≈ 300 µm; Table 1 gives 255 mm and 400 µm. Check p. 3–4.
- **Calibration procedure (p. 5–6):** 91 markers (13 × 7 cross grid, Fig. 3). Image positions found by template cross-correlation + 2D Gaussian peak fit, σ = 0.057 px. Object pitch 19.510 ± 0.020 mm. Magnification from the centre marker and its four neighbours. Coordinates referenced to the centre marker and normalised by L_ref (image width) to condition the least-squares fit. Coefficients by Levenberg–Marquardt.
- **Rotation correction (p. 7):** PIV near the wall includes particle reflections in the glass floor, so the mean u-profile is symmetric about the wall. The shift d between the profile and its flipped copy (1D Gaussian fit to the cross-correlation peak) gives the wall position at each x (Eq. 6). A linear fit to the dewarped wall gives the rotation angle (≈0.04°), applied via Eq. 7.
- **Image dewarping (Method I, p. 8):** for each object-space pixel compute the image coordinate (Eq. 7), bicubic interpolation from the 16 nearest pixels; outside-image points set to zero.
- **Method II (p. 9–10, Fig. 11):** PIV on raw images, then map the IW centre positions through the dewarping function.
- **Monte Carlo sensitivity (p. 11):** perturb image and object marker positions with their standard uncertainties, refit maps, compute residual ε_j at each marker, build JPDFs over N = 500,000 samples.
- **Reference data:** EuHIT experiment in the same tunnel (Cuvier et al. 2017; 2C-2D PIV with 20⁺ × 5⁺ windows for y < 5 mm on a sensor 35% the size, est. distortion error ~0.2%; SPIV for y > 5 mm) and DNS of Sillero et al. (2014) at Re_θ = 6500 (p. 10–11).
- **No modelling/simulation** in the paper beyond comparison with the existing DNS dataset.

## Key equations
- **R1 (projective) map, Eq. (1) (p. 5):**
  $x_i = \dfrac{a_{11}x_o + a_{12}y_o + a_{13}}{a_{31}x_o + a_{32}y_o + a_{33}},\quad y_i = \dfrac{a_{21}x_o + a_{22}y_o + a_{23}}{a_{31}x_o + a_{32}y_o + a_{33}},\quad a_{33}=1$ (8 coefficients). Keeps lines straight, so cannot model radial/tangential distortion.
- **R2 (second-order rational), Eq. (2) (p. 5):** numerators and common denominator extended with $x_o^2,\ x_o y_o,\ y_o^2$ terms:
  $x_i = \dfrac{a_{11}x_o + a_{12}y_o + a_{13} + a_{14}x_o^2 + a_{15}x_o y_o + a_{16}y_o^2}{a_{31}x_o + a_{32}y_o + a_{33} + a_{34}x_o^2 + a_{35}x_o y_o + a_{36}y_o^2}$, same form for $y_i$ with $a_{2k}$; $a_{33}=1$; 18 coefficients (p. 5).
  > Extracted text shows the y_i numerator with $a_{24}y_o^2$ (probably a typo for $a_{24}x_o^2$) and Eq. (1) with $a_{32}x_o$ in one denominator. Verify against p. 5.
- **P3 (bicubic polynomial), Eq. (3) (p. 5; Tang et al. 2017):**
  $x_i = a_{01} + a_{02}x_o + a_{03}y_o + a_{04}x_o^2 + a_{05}x_o y_o + a_{06}y_o^2 + a_{07}x_o^3 + a_{08}x_o^2 y_o + a_{09}x_o y_o^2 + a_{10}y_o^3$, and $y_i$ likewise with $a_{11}\ldots a_{20}$; 20 coefficients. Handles non-axisymmetric radial distortion; no physical interpretation but better fit.
- **Normalisation, Eqs. (4)–(5) (p. 6):** $\{\hat P_I\} = (\{P_I\} - P_{Ic})/L_{ref}$, $\{\hat P_O\} = (\{P_O\} - P_{Oc})/L_{ref}$.
- **Wall position, Eq. (6) (p. 7):** wall(x) = h − d(x)/2, with d the symmetry shift of the near-wall velocity profile (h a reference height in the analysis window).
- **Rotation + map, Eq. (7) (p. 8):** $[x_i, y_i]^T = R(\theta)\,[x_i, y_i]^T_{\text{map}}$, with θ the negative of the measured wall angle (object→image map).
- **MC residual (p. 11):** $\epsilon_{j_n} = L_{ref}\,(\hat P_{I_n} - (f_x(\hat P_O), f_y(\hat P_O))_n)$.

## Data tables
- **Table 2 (p. 6), calibration parameters:** pitch 19.510 ± 0.020 mm; M = 34.538 ± 0.5 px/mm; P_Ic = (4380.356, 2555.753) px; P_Oc = (4380.906, 2559.182) px; max abs. fit error R2/P3 = (1.577, 1.517)/(1.742, 1.290) px; mean error (0, 0) for both; standard uncertainty R2/P3 = (0.836, 0.681)/(0.868, 0.508) px.
  > Note the max fit error is slightly *larger* for P3 in x than for R2, though P3 wins on the wall and statistics tests. Checked against a page render.
- **Table 3 (p. 8):** see Key findings (wall deviation px [µm, l⁺]).
- **Table 4 (p. 11):** present U∞ 9.64 m/s, δ₉₉ 103 mm, u_τ 0.348 m/s, Re_τ 2386; EuHIT 9.64, 104, 0.346, 2360.

## Figures worth remembering
- **Fig. 4 (p. 6):** distortion vector field (×20) over the calibration grid; pincushion, larger on the right.
- **Fig. 7 (p. 7):** apparent wall shape: parabolic raw, straight but tilted after dewarping, horizontal after rotation.
- **Fig. 8–9 (p. 8):** IW and particle shape before/after dewarping at maximum distortion; IW only shifts.
- **Fig. 10 (p. 9):** sub-pixel displacement PDFs; minimal pixel locking in all cases.
- **Fig. 11 (p. 9):** flow charts of Method I (dewarp images → PIV) vs Method II (PIV → move vectors).
- **Fig. 12 (p. 10):** Monte Carlo JPDFs of residual error at each marker, R2 vs P3.
- **Fig. 13–14 (p. 11–12):** U⁺ and Reynolds-stress profiles: raw, R2, P3 (Method I/II) vs EuHIT and DNS.

## Notation
- 2C-2D: two-component, two-dimensional (planar) PIV. SPIV / TPIV: stereo / tomographic PIV.
- R1, R2: first/second-order rational maps; P3: bicubic polynomial map.
- (x_o, y_o): object-plane coordinates; (x_i, y_i): image coordinates; hats denote normalisation by L_ref (image width).
- IW: interrogation window; l⁺: viscous length; superscript ⁺: viscous units.
- Method I: dewarp images before PIV. Method II: correct vector positions after PIV on raw images.

## Relevance to this project
The user's work leans on planar PIV of jets (non-time-resolved, analysed with mean/RMS statistics and POD mode pairs; see CLAUDE.md). This paper is a measurement-quality reference rather than a flow-physics one.
- **Large-sensor PIV of jets:** the same issue applies to any high-resolution, wide-FOV planar PIV of screeching or impinging jets (e.g. the PIV used in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)). Edge-of-image errors would bias mean fields, RMS fields and therefore POD modes and any wavenumber spectra taken from them; positional errors of a few px would shift the apparent shock-cell spacing or wave wavelengths near the FOV edges.
- **Cheap fix (Method II):** if the local distortion across an IW is below PIV uncertainty (check: map IW corners through the fitted function), compute vectors on raw images and only remap vector positions. This post-processing step applies equally to existing datasets and to snapshot ensembles going into POD, since it changes only the grid coordinates (the grid becomes non-uniform and would need interpolation back to a regular grid before POD/FFT-in-x, which the paper does not discuss).
- **Prefer P3 to R2** for planar dewarping; use a reference geometry in the flow (wall, nozzle lip, plate) to remove in-plane rotation of the calibration target, a step that would also help align jet axes in impinging-jet PIV.
- **Perspective error** remains for 2C-2D PIV; use long focal-length or telecentric lenses, particularly for strongly three-dimensional flows such as helical/flapping screech modes where out-of-plane velocity is large.
- **Method dependence:** all statistics here are ensemble (non-time-resolved) mean and Reynolds stresses; no modal decomposition, SPOD, Hilbert or time-frequency analysis is used, so there is nothing on intermittency or mode switching.
- **Related notes:** [shehzad-2021-laser-sheet-alignment-piv.md](shehzad-2021-laser-sheet-alignment-piv.md) (same LTRAC group and campaign era; laser-sheet alignment for planar/stereo PIV, a complementary error source). The calibration/dewarping ideas also relate to BOS and schlieren image calibration ([tan-2015-bos-density-axisymmetric-jets.md](tan-2015-bos-density-axisymmetric-jets.md)).
