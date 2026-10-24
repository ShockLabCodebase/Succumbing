---
key: "willert-1997-stereoscopic-dpiv-wind-tunnel-flows"
title: "Stereoscopic digital particle image velocimetry for application in wind tunnel flows"
authors: ["Willert, Christian"]
year: 1997
type: "article"
venue: "Meas. Sci. Technol. 8, 1465–1479"
bib: {"journal": "Measurement Science and Technology", "volume": "8", "number": "12", "pages": "1465--1479"}
doi: ""
arxiv: ""
pdf: "diagnostics-and-facilities/Willert_1997_Stereoscopic-Digital-Particle-Image-Velocimetry-For-Application-In-Wind-Tunnel.pdf"
version: "published"
unverified: ["issue number 12 inferred from the printed article code 0957-0233/97/121465; no DOI printed in the PDF (PII S0957-0233(97)85163-6 only)"]
group: false
facility: "DLR Göttingen (Center for Quantitative Visualization), laboratory vortex-ring test"
data: ["PIV", "PIV-stereo"]
methods: ["PIV-processing", "calibration", "statistics"]
flow: ["generic", "wind-tunnel"]
phenomena: []
params: {"opening angle": "≈70° (each camera ≈35° from the sheet normal)", "lenses": "100 mm f/2.8, Scheimpflug tilt ≈2.7°", "FOV": "≈145 × 120 mm²", "M": "10 px/mm after dewarping (≈1:14)", "Δt": "200–500 µs", "sheet": "2.5 mm", "window": "32 × 32 px (3.2 mm), 1.0 mm grid", "vortex ring": "Γ = 145 cm²/s, Re_Γ ≈ 9600, D = 46 mm, D_core = 10 mm", "rate": "5 Hz (not TR)"}
topics: ["diagnostics-and-facilities"]
related: ["shehzad-2021-laser-sheet-alignment-piv", "sun-2021-distortion-correction-large-sensor-piv", "alkislar-2003-screeching-rectangular-jet-stereo-piv", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "willert-1991-digital-particle-image-velocimetry", "soloff-1997-distortion-compensation-generalized-stereoscopic-piv", "prasad-2000-stereoscopic-piv-review", "wieneke-2005-stereo-piv-self-calibration-particle-images"]
cites: ["willert-1991-digital-particle-image-velocimetry"]
summary: "Two-camera Scheimpflug stereo PIV for non-symmetric set-ups: general 3C geometry, projective dewarping, multi-pass offset windows; ~6 µm in-plane, 10 µm out-of-plane"
---
# Stereoscopic digital particle image velocimetry for application in wind tunnel flows

- **Authors:** Christian Willert, Center for Quantitative Visualization (CQV), c/o DLR Institut für Strömungsmechanik, Göttingen; also affiliated with DNW-NWB, DLR Braunschweig (p. 1465). Not Shock Lab group work.
- **Source:** Measurement Science and Technology 8 (1997) 1465–1479. Received 10 June 1997, accepted 19 September 1997 (p. 1465). PII S0957-0233(97)85163-6; no DOI is printed. Partly funded by BMBF project 20A9539 (p. 1479).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/diagnostics-and-facilities/Willert_1997_Stereoscopic-Digital-Particle-Image-Velocimetry-For-Application-In-Wind-Tunnel.pdf` (index key `diagnostics-and-facilities/Willert_1997_Stereoscopic-Digital-Particle-Image-Velocimetry-For-Application-In-Wind-Tunnel.pdf`, 16 pp., publisher's version). PDF p. 1 is an IOP cover sheet. **Page refs below are journal pages; PDF page = journal page − 1463.** The text layer garbles eqs. 1–10 and Tables 1–3; they were rebuilt from rendered pages (110 dpi).
- **Tags:** stereoscopic PIV, three-component (3C) PIV, Scheimpflug condition, angular lens displacement, tilt adapter, non-symmetric camera placement, forward scatter, perspective projection, homogeneous coordinates, dewarping / backprojection, Levenberg–Marquardt fit, calibration grid, calibration-plate misalignment, disparity, image preconditioning, binarisation, multi-pass hierarchical interrogation, window offset, Nyquist limit of the window, outlier detection, uncertainty from quiescent flow, vortex ring, bending instability, DLR

## Summary
Willert builds a two-camera stereoscopic PIV system meant for industrial wind tunnels, where optical access forces non-symmetric camera placement and long working distances need long, fast lenses. He uses the angular-displacement (Scheimpflug) arrangement rather than lens translation, and puts one camera on each side of the light sheet so that both see the strong forward scatter of 1 µm oil droplets (p. 1466–1467, 1472–1473). The paper gives a general reconstruction of the three displacement components from the two projected 2C fields, which needs only the lens-centre positions (eqs. 1–5, p. 1467). It then dewarps each image by a perspective (projective) mapping fitted to a calibration grid with a Levenberg–Marquardt least-squares fit, so both views have a constant 10 px mm⁻¹ magnification (eqs. 8–10, p. 1468–1469). Interrogation is multi-pass and hierarchical, with desampled images and window offsets, which recovers displacements larger than the final window's half-width (p. 1470–1471). A reproducible vortex ring in still air tests the system. Uncertainty from quiescent-flow images is about 6 µm in plane and 10 µm out of plane (0.06 and 0.10 px), and a calibration grid tilted by less than 0.6° gave a 1 mm (10 px) mismatch between the views (p. 1470, 1476–1477). There is no modelling or simulation; the only "model" is the comparison with earlier Monte Carlo uncertainty estimates.

## Key findings
- **Why Scheimpflug, not lens translation** (p. 1466–1467). Long-focal-length lenses have limited angular aperture and poor MTF off-axis, and small f-numbers (f < 4) are needed for 1 µm particles at distances above 5 m. So the lens is aimed along the viewing direction and the backplane tilted until image, lens and object planes meet in one line. The cost is a strong perspective distortion (a square becomes a trapezoid) and a magnification that varies across the field, which must be calibrated (p. 1467).
- **Non-symmetric geometry** (p. 1466–1467). Wind tunnels rarely allow symmetric camera placement, and the out-of-plane precision is best as the opening angle approaches 90°, so the reconstruction is written for any two non-collinear viewing axes. Earlier descriptions except Brücker (1996) assumed symmetry (p. 1467).
- **Reconstruction needs only the lens-centre coordinates** (eqs. 1–5, p. 1467). With the cameras at nearly the same height as the field, β₁, β₂ ≈ 0, so dz comes from the x-displacements (eq. 3) and dy from eq. 5, which reduces to the mean of dy₁ and dy₂ as β → 0. The two-camera set-up thus also removes the perspective error that a single camera would have in the vertical component (p. 1467).
- **Projective mapping beats second-order warping** (p. 1468–1469). The usual second-order polynomial (eq. 7, 12 coefficients, ≥ 6 point pairs, linear least squares) is not based on the imaging geometry. The perspective projection (eq. 9, 8 unknowns) maps a rectangle onto a general quadrilateral; an extended form with quadratic terms (eq. 10, 17 unknowns) handles barrel and pincushion distortion. Both are rational functions, so a plain least-squares fit diverges with bad points; a Levenberg–Marquardt fit is started from the first-order solution (p. 1469).
- **Calibration** (p. 1469–1470). The grid is a transparency with 5 mm square rulings between two 2.0 mm glass plates, placed in the sheet. Crossings are found by correlating the inverted image with a "+" mask and a three-point Gaussian sub-pixel fit, then assigned physical coordinates; 603 and 635 points for cameras 1 and 2 (Table 1, p. 1470).
  - Fit residuals are about ±20 µm horizontal and ±11 µm vertical, i.e. crossings located to about ±25 µm = ±0.25 px; the second-order fit (eq. 10) barely improves on the first-order one (eq. 9), so the lenses are nearly distortion-free (Table 1, p. 1469–1470).
  - Raw magnification varied from 8.95 to 8.43 px mm⁻¹ vertically and from 7.54 to 6.74 px mm⁻¹ horizontally; the 1018 × 1008 px images were mapped to 1450 × 1200 px at 10 px mm⁻¹ (p. 1469). The image is stretched by about 1.4 horizontally, so horizontal uncertainties are higher (p. 1469).
  - Enlarging the images by about 20% (vertical) gives 20% more spatial resolution for the same 32 × 32 px window; 16 × 16 px windows were not usable because of higher uncertainty and lower validation rate (p. 1469).
- **Calibration-plate misalignment is the dominant systematic error** (p. 1470; Fig. 4, p. 1471). Dewarped calibration grids overlapped to better than 1 px (0.1 mm), but cross-correlating dewarped *particle* images from the two views at the same instant (an early disparity map, smoothed by a second-degree fit) showed mismatches above 10 px (1 mm) towards the edges. A grid rotation below 0.6° about x and y is enough to cause this. Uncorrected, the two views' windows are mismatched by up to one third of a window (p. 1470). Here only a uniform 6 px horizontal offset between the views was applied, and the author calls for a calibration that guarantees grid–sheet alignment (p. 1470).
- **Preconditioning and multi-pass interrogation raise the data yield** (Table 2, p. 1471). Images are high-passed (subtract a 7 × 7 px low-pass), binarised (to remove intensity differences between the two laser cavities) and smoothed with a 2 × 2 px kernel (so particle images are not below 2 px). In a field of more than 12,000 vectors, outliers fell from 93/101 (cameras 1/2, standard, no preconditioning) to 2/0 (multi-pass with preconditioning). The preprocessing is empirical (p. 1470).
- **Hierarchical processing** (p. 1470–1471; Fig. 5, p. 1472). Images are desampled by summing 3 × 3, then 2 × 2 px blocks (unclipped, beyond 8 bits); after each pass a strict neighbourhood outlier filter, bilinear replacement and smoothing are applied, and the result offsets the windows of the next pass. No filtering or smoothing follows the last pass. This handles maximum displacements above 16 px, the Nyquist limit of the final 32 × 32 px window, so Δt need not be tuned to the window during tunnel runs (p. 1471).
- **Throughput** (p. 1471–1472). On a 133 MHz Pentium: about 30 s per image to dewarp (4 × 4 sub-pixels, second-degree mapping), about 3 min per image pair for preconditioning and interrogation to the final 16,600 vectors, about 7 min in all for one 3C field of 140 × 110 vectors.
- **Vortex-ring test** (p. 1472–1475).
  - Four stereo recordings with the ring travelling in the sheet gave Γ = 145.0 ± 1.7 cm² s⁻¹, Re = Γ/ν ≈ 9600, a Rankine-fit core diameter of 10 mm and ring diameter 46 mm (p. 1474). The small spread confirms the generator is repeatable.
  - With the ring crossing the sheet, the w profiles through the cores match the w profile from the in-plane (side-view) data well, and the four realisations agree (Fig. 12, p. 1474, 1477).
  - Valid-vector rates exceeded 99%; about 100 outliers per 16,600 vectors, mostly at the edges of the original image area, and fewer than 10 in the central 95% (p. 1474).
  - Frame-to-frame loss of particle images was kept below 30% with Δt = 200 µs for the ring crossing the sheet (maximum 3.5 m s⁻¹, 0.7 mm displacement in a 2.5 mm sheet) (p. 1474).
  - A ring that had just crossed the sheet showed an eight-lobed bending instability of the core, like the one Weigand & Gharib (1994) saw in water at Re 7500, although D_core/D is 0.22 here against about 0.5 there (Fig. 13, p. 1474–1475, 1478).
  - At 5 Hz with V_prop ≈ 1.5 m s⁻¹ the system cannot follow the ring's decay in time (p. 1475).
- **Uncertainty from quiescent flow** (Table 3, p. 1475–1476, 1478). Images of still air before the ring arrives, with Δt = 200 µs, were processed exactly as the ring data; statistics over the central 50 × 50 mm.
  - Total: σ_x = 6.30 µm, σ_y = 6.24 µm (0.063, 0.062 px) and σ_z = 10.3 µm (0.103 px). Single cameras: 7.4–11.3 µm (0.074–0.113 px).
  - The in-plane values are about 1/√2 of the single-camera values, as error propagation predicts. The out-of-plane value is expected to be 1/tan θ times the in-plane one (1.43 at θ = 35°), and this underestimates the measured ratio of about 1.65 (p. 1476; ratio my arithmetic).
  - Single-camera pixel values agree with Willert's earlier Monte Carlo predictions for binarised (1-bit) images, 0.090 px RMS (Table 3, p. 1476).
  - Particle images were about 3 px in the raw images and over 4 px after dewarping, which stretches round images into ellipses; uncertainty grows above the optimum of about 2 px. Camera 1, less well focused, is noisier (p. 1476).
  - The scatter in the v profiles of Fig. 12 is about ±0.05 m s⁻¹ (±0.1 px) (p. 1476).
- **Outlook** (p. 1477–1478). Forward scatter is at least ten times brighter than side or back scatter, allowing larger f-numbers or fields above 500 × 500 mm², which normal-viewing digital PIV (sensors of about 400 ASA against > 3000 ASA film) cannot reach even with 300 mJ lasers. Large facilities such as the DNW 8 × 10 m² open test section would need 200–400 mm lenses, 200 × 200 mm² fields at up to 8 m, and remotely controlled stages, focus and backplane tilt. The system had already been used (unpublished, C. Kähler) on a forced boundary-layer transition (p. 1477).

## Setup / method
**Imaging (Fig. 7, p. 1473).**

| Item | Value |
| --- | --- |
| Cameras | Pulnix TM-1001 (free-running, master clock) and Kodak ES-1.0 (asynchronously triggered, double-exposed mode); both Kodak KAI-1001 interline CCD, 1008 H × 1018 V px (p. 1473) |
| Recording | Dual-frame, single-exposure; no image shifting needed; 5 Hz image-pair rate, two PCs (p. 1473) |
| Lenses | Zeiss Makro-Planar 100 mm f/2.8, on custom tilt adapters (Fig. 8, p. 1474); Scheimpflug angle φ ≈ 2.7° (p. 1473) |
| Geometry | One camera on each side of the sheet, ≈35° from the sheet normal (≈70° opening angle); distances about 1100 and 1110 mm either side, 770 mm along the sheet (Fig. 7) |
| Field of view | about 145 mm × 115–120 mm; trapezoidal after dewarping, left-to-right height change ≈ 5 mm, matched between the two views because the cameras face each other (p. 1473, 1477) |
| Laser | Frequency-doubled double-oscillator Nd:YAG, > 300 mJ per pulse; sheet ≈ 2.5 mm (p. 1473–1474) |
| Δt | 300–500 µs (ring travelling in the sheet), 200 µs (ring crossing the sheet) (p. 1474) |
| Seeding | ≈1 µm oil droplets; ring core seeded through a feed pipe with a check valve (p. 1472–1473) |

> The text on p. 1473 prints the field of view as "1450 mm horizontal by 1150 mm vertical"; the conclusion gives 145 × 120 mm² (p. 1477) and 1450 px at 10 px mm⁻¹ is 145 mm, so the p. 1473 figures are presumably in tenths of a millimetre or a typo.

**Flow (Fig. 6, p. 1472–1473).** A capacitor bank (60,000 µF) discharges through two inward-facing 60 W bass loudspeakers on a wooden box, pushing air out of a sharpened cylindrical nozzle of 34.7 mm inner diameter; the shear layer rolls into a ring. Constant charging voltage gives a repeatable ring. Position 1: ring travels in the sheet (side view, reference data); position 2: ring travels normal to the sheet (tests w). Propagation distance to the sheet about 300 mm (p. 1475).

**Processing chain (p. 1469–1472, 1474).**
1. Calibrate each camera from grid images (eq. 9, then eq. 10) and choose a common output magnification (10 px mm⁻¹).
2. Precondition the raw images (7 × 7 high-pass, binarise, 2 × 2 smoothing).
3. Dewarp (backproject) with 4 × 4 sub-pixel accumulation.
4. Interrogate each view: passes at desampling 3, 2, 1 and a final pass at 32 × 32 px with three-times oversampling (10 px grid; 66% overlap stated), with window offsets from the previous pass; FFT cross-correlation following [Willert & Gharib (1991)](willert-1991-digital-particle-image-velocimetry.md) with Westerweel's bias correction; three-point Gaussian peak fit.
5. Convert to velocity with the constant M and Δt; automated outlier removal (neighbourhood difference, global maximum velocity), bilinear replacement, no smoothing.
6. Offset the two views by 6 px to compensate the grid misalignment, then reconstruct (u, v, w) with eqs. 1, 3 and 5.

**Data dependence.** Single instantaneous fields at 5 Hz: not time-resolved. Everything here (dewarping, 3C reconstruction, uncertainty from quiescent flow) works on independent snapshots.

## Key equations
Geometry (p. 1467; Fig. 2, p. 1468): sheet in the x–y plane, z normal to it. Lens centres L₁ = (x₁, y₁, z₁), L₂ = (x₂, y₂, z₂) (pin-hole approximation at the first lens element); point P = (x_p, y_p, z_p); measured in-plane displacements (dx_i, dy_i) for camera i. α_i is the angle between the viewing ray and the sheet normal projected on the x–z plane, β_i on the y–z plane:

$$\tan\alpha_i = \frac{x_p - x_i}{z_p - z_i},\qquad \tan\beta_i = \frac{y_p - y_i}{z_p - z_i}.$$

Reconstruction (eqs. 1–4, p. 1467):
$$\mathrm{d}x = \frac{\mathrm{d}x_2\tan\alpha_1 - \mathrm{d}x_1\tan\alpha_2}{\tan\alpha_1 - \tan\alpha_2}\quad(1),\qquad
\mathrm{d}y = \frac{\mathrm{d}y_2\tan\beta_1 - \mathrm{d}y_1\tan\beta_2}{\tan\beta_1 - \tan\beta_2}\quad(2)$$
$$\mathrm{d}z = \frac{\mathrm{d}x_2 - \mathrm{d}x_1}{\tan\alpha_1 - \tan\alpha_2}\quad(3) \;=\; \frac{\mathrm{d}y_2 - \mathrm{d}y_1}{\tan\beta_1 - \tan\beta_2}\quad(4)$$

For small β (cameras at the height of the field) eq. 2 is ill-conditioned and dy is rewritten with dz from eq. 3 (eq. 5, p. 1467):
$$\mathrm{d}y = \frac{\mathrm{d}y_1 + \mathrm{d}y_2}{2} + \frac{\mathrm{d}z}{2}(\tan\beta_2 - \tan\beta_1) = \frac{\mathrm{d}y_1 + \mathrm{d}y_2}{2} + \frac{\mathrm{d}x_2 - \mathrm{d}x_1}{2}\left(\frac{\tan\beta_2 - \tan\beta_1}{\tan\alpha_1 - \tan\alpha_2}\right)\quad(5)$$

> Check: eqs. 1–4 follow from the projection rule dx_i = dx − dz tan α_i, dy_i = dy − dz tan β_i. With that rule, eliminating dz from eqs. 2 and 4 gives dy = (dy₁ + dy₂)/2 + (dz/2)(tan β₁ **+** tan β₂), not (tan β₂ − tan β₁) as printed in eq. 5 (my derivation). The two forms agree only when tan β₁ = 0 or tan β₂ = 0, and both reduce to the mean as β → 0, which is the case in this paper's set-up. Shehzad et al. 2021 reproduce the printed form (their eq. 4). Verify before using eq. 5 with large β, for example with cameras on the same side of the sheet.

Second-order warping (eq. 7, p. 1468), for comparison: $X_o = a_1X_i^2 + a_2Y_i^2 + a_3X_iY_i + a_4X_i + a_5Y_i + a_6$, and the same for $Y_o$ with $b_1\ldots b_6$.

Perspective projection in homogeneous coordinates (eqs. 8–9, p. 1468), image (X_i, Y_i) → object (X_o, Y_o), a₃₃ = 1:
$$\begin{bmatrix} w_oX_o\\ w_oY_o\\ w_o\end{bmatrix} = \begin{bmatrix} a_{11} & a_{12} & a_{13}\\ a_{21} & a_{22} & a_{23}\\ a_{31} & a_{32} & a_{33}\end{bmatrix}\begin{bmatrix} w_iX_i\\ w_iY_i\\ w_i\end{bmatrix},\qquad
X_o = \frac{a_{11}X_i + a_{12}Y_i + a_{13}}{a_{31}X_i + a_{32}Y_i + 1},\quad Y_o = \frac{a_{21}X_i + a_{22}Y_i + a_{23}}{a_{31}X_i + a_{32}Y_i + 1}.$$
Setting a₃₁ = a₃₂ = 0 gives the affine map (rectangle → parallelogram).

Higher-order projective map for lens distortion (eq. 10, p. 1469), a₃₃ = 1:
$$X_o = \frac{a_{11}X_i + a_{12}Y_i + a_{13} + a_{14}X_i^2 + a_{15}Y_i^2 + a_{16}X_iY_i}{a_{31}X_i + a_{32}Y_i + a_{33} + a_{34}X_i^2 + a_{35}Y_i^2 + a_{36}X_iY_i},\quad
Y_o = \frac{a_{21}X_i + a_{22}Y_i + a_{23} + a_{24}X_i^2 + a_{25}Y_i^2 + a_{26}X_iY_i}{a_{31}X_i + a_{32}Y_i + a_{33} + a_{34}X_i^2 + a_{35}Y_i^2 + a_{36}X_iY_i}.$$
(17 unknowns, fitted by Levenberg–Marquardt from the eq. 9 solution.)

Uncertainty scaling (p. 1476): in-plane σ ≈ σ_single/√2; out-of-plane σ_z ≈ σ_in-plane / tan θ for half-angle θ (35° here).

## Data tables
**Table 1 (p. 1470): calibration-fit residuals at 10 px mm⁻¹.**

| Fit | Deviation | Cam 1 x | Cam 1 y | Cam 2 x | Cam 2 y |
| --- | --- | --- | --- | --- | --- |
| 1st order (eq. 9) | mean | ±22 µm | ±11 µm | ±21 µm | ±12 µm |
| | maximum | 83 µm | 62 µm | 69 µm | 80 µm |
| 2nd order (eq. 10) | mean | ±20 µm | ±10 µm | ±18 µm | ±11 µm |
| | maximum | 77 µm | 59 µm | 70 µm | 82 µm |

Points: 603 (camera 1), 635 (camera 2).

**Table 2 (p. 1471): outliers in a field of more than 12,000 vectors.**

| Evaluation | Preconditioning | Camera 1 | Camera 2 |
| --- | --- | --- | --- |
| Standard | no | 93 | 101 |
| Standard | yes | 18 | 3 |
| Multiple pass | no | 10 | 11 |
| Multiple pass | yes | 2 | 0 |

**Table 3 (p. 1478): uncertainty from quiescent-flow images (Δt = 200 µs, central 50 × 50 mm).**

| Quantity | RMS [µm] | Min [µm] | Max [µm] | RMS [px] | Min [px] | Max [px] |
| --- | --- | --- | --- | --- | --- | --- |
| Total σ_Δx | ±6.30 | −20.1 | 24.2 | ±0.063 | −0.201 | 0.242 |
| Total σ_Δy | ±6.24 | −20.9 | 24.1 | ±0.062 | −0.209 | 0.241 |
| Total σ_Δz | ±10.3 | −29.0 | 33.7 | ±0.103 | −0.290 | 0.337 |
| Camera 1 σ_Δx₁ | ±11.3 | −37.9 | 41.1 | ±0.113 | −0.379 | 0.411 |
| Camera 1 σ_Δy₁ | ±9.69 | −33.8 | 30.5 | ±0.097 | −0.338 | 0.305 |
| Camera 2 σ_Δx₂ | ±7.41 | −30.8 | 28.0 | ±0.074 | −0.308 | 0.280 |
| Camera 2 σ_Δy₂ | ±8.19 | −29.8 | 34.3 | ±0.082 | −0.298 | 0.343 |
| Monte Carlo σ_Δx, 8-bit | — | — | — | ±0.060 | −0.216 | 0.084 |
| Monte Carlo σ_Δx, 1-bit | — | — | — | ±0.090 | −0.291 | 0.225 |

Monte Carlo rows are from table 4 of Willert (1996, Appl. Sci. Res. 56). Error-propagation check (my arithmetic): √(11.3² + 7.41²)/2 = 6.8 µm and √(9.69² + 8.19²)/2 = 6.3 µm against the measured 6.30 and 6.24 µm; σ_z/σ_x = 1.65 against 1/tan 35° = 1.43.

> Table 3 was read from a rendered page. The Monte Carlo rows' "Min" and "Max" columns (−0.216/0.084, −0.291/0.225) do not look like min/max of a symmetric error; they may be other statistics from the cited table. Check before reuse.

## Figures worth remembering
- **Fig. 1 (p. 1466):** lens-translation vs angular-displacement (Scheimpflug) stereo, with the angles θ (lens to object plane) and φ (image to lens plane).
- **Fig. 2 (p. 1468):** reconstruction geometry; α and β in the x–z and y–z projections.
- **Fig. 3 (p. 1469):** a grid image before and after backprojection; image area is lost at the trapezoid's edges.
- **Fig. 4 (p. 1471):** disparity between the two dewarped views from a slightly tilted calibration grid, up to about 10 px at the edges after a 6 px offset is removed.
- **Fig. 5 (p. 1472):** the four passes of the hierarchical interrogation.
- **Fig. 7 (p. 1473):** forward-scatter layout with the cameras on opposite sides of the sheet; Fig. 8 (p. 1474) the tilt adapter.
- **Fig. 9 (p. 1475):** velocity and vorticity in the ring's symmetry plane (ω_z from −955 to 1088 s⁻¹).
- **Figs. 10–11 (p. 1475–1476):** the two 2C views and the combined 3C field with w contours (0.25 m s⁻¹).
- **Fig. 12 (p. 1477):** u, v, w along y = 0 for four ring realisations; w matches the side-view profile.
- **Fig. 13 (p. 1478):** eight-lobed bending instability of the ring core.

## Notation
- α_i, β_i: viewing angles of camera i from the sheet normal, projected on the x–z and y–z planes.
- θ: half opening angle (35°); φ: Scheimpflug tilt between lens and image planes (2.7°).
- (X_i, Y_i), (X_o, Y_o): image- and object-plane coordinates; a_jk: mapping coefficients; w_i, w_o: homogeneous scale factors.
- M: magnification (10 px mm⁻¹ after dewarping); M_o: nominal magnification on the optical axis; fl: focal length.
- Δt: pulse separation; Γ: ring circulation; D, D_core: ring and core diameters.
- σ_Δx, σ_Δy, σ_Δz: RMS displacement uncertainty.

## Relevance to this project
- **Where it sits.** This is one of the founding papers of Scheimpflug stereo PIV and the source of the general (non-symmetric) 3C reconstruction still used by the group's neighbours at LTRAC: [Shehzad et al. 2021](shehzad-2021-laser-sheet-alignment-piv.md) use Willert's eqs. 1–5 (their eq. 4, p. 12) and list his "3C field correction" (residual 0.34 px) among the post-hoc misalignment fixes they aim to replace (their Table 1, p. 4). Their figure that a 0.6° rotation gives disparities of 0.53% of the field diagonal is this paper's 10 px over a 1450 × 1200 px field (p. 1470). Willert is also a co-author of [Sun et al. 2021](sun-2021-distortion-correction-large-sensor-piv.md) on lens distortion. Its companions in the stereo literature are [Soloff et al. (1997)](soloff-1997-distortion-compensation-generalized-stereoscopic-piv.md), who replace the pin-hole geometry with a 3D polynomial calibration over several target planes, and [Prasad (2000)](prasad-2000-stereoscopic-piv-review.md), who reviews the translation and Scheimpflug systems; [Wieneke (2005)](wieneke-2005-stereo-piv-self-calibration-particle-images.md) self-calibration is the standard modern fix for the grid–sheet misalignment that this paper could only offset by a constant 6 px.
- **For the group's PIV.** The group's stereo or cross-plane PIV, like [Alkislar et al. 2003](alkislar-2003-screeching-rectangular-jet-stereo-piv.md) (Scheimpflug mounts about 90° apart), inherits the same error budget:
  - **Calibration alignment** is the largest systematic error here: up to 1 mm, a third of a window, from a sub-degree grid tilt (p. 1470). Align the sheet first (Shehzad et al. 2021) or use self-calibration, and check the two-view disparity map before reconstructing.
  - **Out-of-plane error** is about 1.65 times the in-plane error at a 70° opening angle (Table 3); a 90° opening angle reduces it (p. 1477).
  - **Dewarping stretches particle images.** Stretching by 1.4 took 3 px images above 4 px and raised the horizontal uncertainty (p. 1476). This matters for the group's small-window settings in shocked jets.
  - **Multi-pass window offsets** handle displacements beyond the window's Nyquist limit (p. 1471); this is the ancestor of the multigrid schemes now used for supersonic jets, where Δt and window choice also interact with particle lag ([diagnostics-and-facilities](../Topics/diagnostics-and-facilities.md)).
  - **Opposite-side cameras** both get forward scatter and matching trapezoidal fields (p. 1473); useful where seeding is weak, such as entrained ambient air.
- **Data and method dependence.** The system records independent snapshots at 5 Hz (p. 1473, 1475), so it suits the non-TR branch of the CLAUDE.md workflow: means, RMS, POD and POD-pair phase recovery, as in the 3D helix that [Oberleithner et al. 2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md) built from stereo snapshots. The third component matters for helical and flapping screech modes, whose azimuthal velocity is out of the measurement plane in cross-plane PIV. Nothing here addresses time resolution, intermittency or mode switching; those need TR data and the SPOD → reconstruction → HPOD pipeline.
- **Modelling and simulation.** None in the paper. The only predictive element is the error-propagation scaling (1/√2 in plane, 1/tan θ out of plane), which underestimates the measured out-of-plane error, and the comparison with earlier Monte Carlo estimates for binarised images (p. 1476). For the PyFR staging LES, synthetic stereo images rendered from LES fields would be the natural way to test a reconstruction and calibration chain like this one before comparing with experiment.
