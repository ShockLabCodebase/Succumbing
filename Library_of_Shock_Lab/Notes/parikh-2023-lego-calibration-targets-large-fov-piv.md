---
key: "parikh-2023-lego-calibration-targets-large-fov-piv"
title: "LEGO calibration targets for large-FOV particle image velocimetry"
authors: ["Parikh, Agastya", "Fuchs, Thomas", "Bross, Matthew", "Kähler, Christian J."]
year: 2023
type: "article"
venue: "Exp. Fluids 64, 34"
bib: {"journal": "Experiments in Fluids", "volume": "64", "pages": "34", "note": "Article 34, 12 pp."}
doi: "10.1007/s00348-022-03556-w"
arxiv: ""
pdf: "diagnostics-and-facilities/Parikh-EtAl_2023_LEGO-Calibration-Targets-For-Large-FOV-Particle-Image-Velocimetry.pdf"
version: "published"
unverified: []
group: false
facility: "Atmospheric Wind Tunnel Munich (AWM), Universität der Bundeswehr München"
data: ["PIV", "PIV-stereo"]
methods: ["calibration", "statistics"]
flow: ["wind-tunnel", "wall-bounded", "subsonic"]
phenomena: []
params: {"U_∞": "16–32 m/s (comparisons at 16 m/s)", "test section": "1.85 × 1.85 m", "target": "≈ 380 × 1150 mm, two-sided, two-level", "marker pitch": "48 mm (first target); ≈ 3× Type 31 (AWM target); 32–96 mm (parametric)", "level offset": "3.2 mm", "working distance": "≈ 2.3 m (AWM); ≈ 2.1 m, 45° (parametric)", "cameras": "6 × sCMOS 2560 × 2160 px, f = 100 mm", "N": "950 pairs at 15 Hz", "window": "32 × 32 px, 50% overlap (≈ 2.5 mm)"}
topics: ["diagnostics-and-facilities"]
related: ["soloff-1997-distortion-compensation-generalized-stereoscopic-piv", "willert-1997-stereoscopic-dpiv-wind-tunnel-flows", "prasad-2000-stereoscopic-piv-review", "sun-2021-distortion-correction-large-sensor-piv", "shehzad-2021-laser-sheet-alignment-piv", "wieneke-2005-stereo-piv-self-calibration-particle-images"]
cites: ["wieneke-2005-stereo-piv-self-calibration-particle-images"]
summary: "Hand-built two-level LEGO stereo-PIV target (380 × 1150 mm) vs LaVision Type 31: fit error 2.5–3× higher but ≈ 0.05–0.15 mm; u matches to 0.8% U; binarise images"
---
# LEGO calibration targets for large-FOV particle image velocimetry

- **Authors:** Agastya Parikh, Thomas Fuchs, Matthew Bross and Christian J. Kähler, Institut für Strömungsmechanik und Aerodynamik, Universität der Bundeswehr München, Neubiberg, Germany (p. 12). Not Shock Lab group work.
- **Source:** Experiments in Fluids 64, article 34 (12 pp.), 2023, doi:10.1007/s00348-022-03556-w. Received 31 Oct 2022, revised 5 Dec 2022, accepted 20 Dec 2022, published online 24 Jan 2023; open access under CC BY 4.0 (p. 1, 11). A version was first submitted to the 20th Lisbon Laser Symposium proceedings (p. 11).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/diagnostics-and-facilities/Parikh-EtAl_2023_LEGO-Calibration-Targets-For-Large-FOV-Particle-Image-Velocimetry.pdf` (index key `diagnostics-and-facilities/Parikh-EtAl_2023_LEGO-Calibration-Targets-For-Large-FOV-Particle-Image-Velocimetry.pdf`, 12 pp., publisher's version). Page refs are the article's own pages (1–12, same as PDF pages). The Read tool reports the PDF as password-protected; text came from `pdftotext`, and Figs. 3 and 10 and eq. 2 were read from rendered pages.
- **Tags:** stereoscopic PIV, SPIV calibration, multi-level calibration target, large field of view, multi-camera stitching, LEGO bricks, LaVision Type 31, pinhole (Tsai) calibration, planar self-calibration, marker contrast, intensity ratio, marker pitch and size, image binarisation, calibration fit error, wind-tunnel inflow, corner vortex

## Summary
The paper tests whether multi-level stereo-PIV calibration targets built from LEGO bricks can stand in for small, expensive precision-machined targets in large-field measurements, where several camera pairs must share one reference (p. 1–2). The authors first pick a marker coating (black permanent marker on white 1 × 1 or 2 × 2 round tiles gave the highest marker-to-background contrast, best on a grey baseplate at stereo viewing angles), then build a modular two-sided, two-level target about 380 × 1150 mm from LEGO baseplates on CNC-machined aluminium backing plates (p. 3–5). Six sCMOS cameras in three stereo pairs image the inflow plane of the Atmospheric Wind Tunnel Munich, and the same data are processed twice, once calibrated with the LEGO target and once with a LaVision Type 31 (p. 5–6). The LEGO calibration has a mean fit error about 2.7× that of Type 31 (0.336 vs 0.123 px, about 0.05 mm), but the mean streamwise (out-of-plane) velocity agrees to about 0.8% of U∞; the small in-plane components agree less well, which the authors blame on the set-up rather than the target (p. 6–8). A bench parametric study of marker pitch (32–96 mm) and size (7.8 or 15.8 mm) finds that small markers and binarised calibration images give the lowest fit errors, which stay at 2–3% of a 32 px window in physical units (p. 8–10).

## Key findings
- **Why LEGO** (p. 2): stated injection-moulding tolerance 0.004 mm, precise stacking, round tiles in several sizes, and baseplates up to 38 × 38 cm that join modularly. Stud pitch 8 mm gives a minimum marker pitch of 16 mm (marker on every other stud); a 1 × 1 tile is 7.8 mm across; one 1/3-height plate gives a 3.2 mm level offset, against 15 mm pitch, 3 mm dots and 3 mm offset on Type 31 (p. 4). Marker diameter matters less because markers are reduced to centre points (p. 4).
- **Marker contrast** (Figs. 1–3, p. 3–4). Six treatments (none, matte paint by rubber roller, paint + isopropanol, permanent marker, marker + isopropanol, sandpaper + marker) at 0°, 30° and 45° viewing angles (Canon EOS 450D at about 0.7 m, LED lighting, analysed in DaVis 10).
  - Contrast rises with viewing angle for every coating (p. 3).
  - Plain permanent marker gives the highest intensity ratio and the only uniformly homogeneous marker surface (p. 3–4). Read from Fig. 3: on white, about 3.3, 6.7 and 9.0 at 0°, 30°, 45°; on grey, about 2.6, 8.0 and 10.3. Uncoated tiles stay near 1; the painted and matted variants reach about 4–7 at 45° (values read from figure).
  - The grey baseplate gives *more* contrast than white at both stereo angles, against expectation, which supports using the larger grey baseplates (p. 4).
- **Pattern detection** (p. 4): a 3 × 3 two-level LEGO pattern and one with twice the pitch were both detected by DaVis, as was a 3 × 3 crop of Type 31. Uniform illumination becomes the real problem as targets grow; poorly lit edge markers can fail to detect even on professional targets (p. 4).
- **First field use** (p. 4–5): a one-sided two-level target of two 38 cm baseplates, pitch 48 mm, calibrated with the pinhole model for stereo PIV of a heated dummy's thermal plume (cameras looking up at a floor-parallel sheet 30 cm above the head; Sankaran et al. 2022, Lisbon symposium).
- **Calibration comparison, AWM FOV C at U = 16 m/s** (Table 1, p. 6):
  - Mean fit error 0.1233 px (Type 31) vs 0.3363 px (LEGO), a ratio of 2.7 (the paper says "approximately 3×"); about 0.052 mm for LEGO at 2.3 m working distance (p. 6).
  - Dewarped area 620.9 × 436.1 vs 608.7 × 430.6 mm², differences of 12.2 and 5.5 mm, partly from the different self-calibrations (p. 6).
  - Stereo angle upstream camera 33.86° vs 33.58°; downstream camera 29.76° vs 33.84°, a 4° difference the paper notes but does not explain (p. 6).
- **Velocity comparison** (Table 2, Figs. 6–8, p. 6–8):
  - Mean u over the FOV 15.11 vs 14.98 m s⁻¹, mean absolute deviation 0.122 m s⁻¹ (≈ 0.8% of U∞); median deviation 0.083 m s⁻¹ (≈ 0.5%) (p. 6–7).
  - In-plane means differ much more relatively (v −0.14 vs −0.02, w −0.27 vs −0.18 m s⁻¹), but their absolute deviations (0.11–0.15 m s⁻¹) are no larger than for u (p. 7).
  - The corner-vortex core sits at about z = 115 mm, y = 35 mm with both calibrations, and vector angles show no obvious difference (Fig. 8, p. 8).
  - The normalised disparity (eq. 2) is low over most of the FOV but high along the boundary-layer edge, which the authors expect from the strong gradients there (Fig. 7, p. 7–8).
  - **Authors' explanation of the in-plane disagreement** (p. 8): short particle residence times in the sheet with a large out-of-plane velocity give poor in-plane correlations; a second possible cause is the LEGO marker pitch, about 3× coarser than Type 31. Neither is tested.
- **Parametric study** (Figs. 9–10, p. 8–10): one camera pair at about 2.1 m and 45°; Type 31 baseline vs a 32 × 32 stud (about 25 × 25 cm) LEGO target with small (7.8 mm) markers at 32, 48, 64 mm pitch and large (15.8 mm) markers at 48, 64, 96 mm pitch; images masked, and also masked + binarised by an intensity threshold (p. 8–9).
  - All LEGO targets give a slightly higher apparent magnification than Type 31 (Fig. 10a: about 7.11–7.12 px mm⁻¹ for Type 31, 7.13–7.16 for 32s and 48s, 7.21–7.29 for 64s and all large-marker patterns; read from figure). Small markers are closest to Type 31, except the sparse 64 mm small-marker pattern (p. 9).
  - All LEGO targets have higher fit errors than Type 31 (about 0.26 px, Fig. 10b); 48 mm small markers about 0.57–0.60 px, "approximately 2.5×" Type 31, consistent with Table 1 (p. 9).
  - Large markers give higher fit errors than small at every pitch (Fig. 10b: about 0.96–1.30 px vs 0.57–0.85 px; read from figure) (p. 9).
  - Pitch has only a weak effect: 32 mm is no better than 48 mm for small markers, and 48 and 64 mm are almost equal for large ones, so sparser targets (less labour) lose little (p. 9).
  - Scaled fit error (Fig. 10c): at most about 0.18 mm (48L, masked only), 4% of a 32 × 32 px window; typically 0.08–0.15 mm, 2–3% of a window; Type 31 about 0.036 mm (p. 9; Type 31 value read from figure).
  - Binarising the calibration images "significantly" lowers the fit error in most cases (e.g. 48L from about 1.30 to 0.96 px), and is recommended. For 48s it makes no improvement (about 0.57 → 0.60 px, read from figure) (p. 9–10).
- **Full-size use** (Fig. 11, p. 10–11): the 380 × 1150 mm target calibrated three side-by-side stereo systems at once along the tunnel floor with an average fit error of 0.6420 px, giving a stitched mean field over an effective 350 × 1100 mm. The target covers slightly more than 0.4 m², against about 0.1 m² for Type 31.
- **Conclusions** (p. 10–11): LEGO targets are a cheap, flexible alternative that also removes errors from multi-reference stitching by calibrating several camera systems from one target. Large markers suit very large, low-magnification fields such as helium-filled-soap-bubble experiments.

## Setup / method
- **Target construction** (p. 4–5, Fig. 4):
  - White 1 × 1 (7.8 mm) or 2 × 2 (15.8 mm) round tiles, tops blackened with broad-tip permanent marker (dried between coats), on light grey or white baseplates.
  - Modular "sub-targets": LEGO baseplates on Aluminium 6061 backing plates, CNC-machined with weight-saving cut-outs to limit sag when cantilevered, painted RAL 9005 matte black. Each mounts by two M6 bolts on one tab; the other three edges join to further plates with 4 mm alignment pins and rails on M4 screws, with no limit on the number joined. Using sub-targets also allowed tighter ISO tolerances on the backing plates.
  - Final target: two-sided, two-level, about 380 × 1150 mm, analogous to Type 31. Its pitch is not stated, but it is "approximately 3x" the 15 mm of Type 31 (p. 8); the earlier thermal-plume target used 48 mm (p. 4–5).
- **Facility and PIV** (p. 5–6, Fig. 5):

| Item | Value |
| --- | --- |
| Tunnel | Atmospheric Wind Tunnel Munich, cross-section 1.85 × 1.85 m; aim to cover > 50% of the area |
| Speeds | U = 16–32 m s⁻¹; focus and Scheimpflug set at 16 m s⁻¹; runs about 1 min each |
| Cameras | 6 × Imager sCMOS, 2560 × 2160 px, Zeiss ZF Makro-Planar f = 100 mm, stacked in 3 stereo pairs (A, B, C; upstream and downstream cameras), working distance ≈ 2.3 m |
| FOV per pair | ≈ 500 × 350 mm usable (long side spanwise), overlapping |
| Laser | Innolas Spitlight 1000-15 Nd:YAG dual head, 15 Hz fixed; sheet tangential to the side wall to cut wall reflections |
| Seeding | DEHS from a generator in the inlet tower |
| Samples | 950 image pairs per dataset (statistics only, not time-resolved) |
| Coordinates | x streamwise (out of plane), y vertical wall-normal, z spanwise wall-normal; origin at the bottom right corner |

- **Processing** (p. 6): DaVis 10.1.1.61838. Pinhole calibration (Tsai 1986) for both targets, then planar self-calibration (Wieneke 2005, Exp. Fluids 39) to find the true sheet position. Bright-field correction, then subtraction of the mean of the first 200 images. Final window 32 × 32 px, 50% overlap, ≈ 2.5 mm vector spacing. Calibration images taken shortly after the runs; cameras assumed fixed across runs.
- **Comparison metrics** (p. 6–8): DaVis calibration outputs (fit error, dewarped area, stereo angles); FOV mean, median and mean absolute deviation of the ensemble-averaged u, v, w (deviation computed on an interpolated common grid); relative disparity maps; the normalised disparity of eq. 2.
- **Analysis and the data it needs:** only ensemble-averaged mean fields are compared; no RMS, spectra or modal analysis are shown, though the 950 pairs were taken to converge turbulence statistics (p. 5). Everything here works on non-time-resolved data.
- **No modelling or simulation** in the paper.

## Key equations
- **Intensity ratio** (eq. 1, p. 4):
  $$\mathrm{IR} = \frac{\langle I_{\mathrm{background}}\rangle}{\langle I_{\mathrm{marker}}\rangle},$$
  area-averaged intensities over rectangles on the marker and the surrounding baseplate (Fig. 2c), adapted to each viewing angle.
- **Normalised disparity** between scalar fields A and B at point (i, j) (eq. 2, p. 8):
  $$1 - \frac{(A_{ij}-\mu_A)(B_{ij}-\mu_B)}{\max\left(|A_{ij}-\mu_A|,\,|B_{ij}-\mu_B|\right)^2},$$
  with μ_A, μ_B the element-wise (field) averages. Zero where the two fields' local departures from their means are equal; up to 2 where they have opposite sign.
  > Rebuilt from the rendered page; the square applies to the max(·) term. The "up to 2" range is this note's reading, not stated in the paper.

## Data tables
Table 1 (p. 6), FOV C, U = 16 m s⁻¹:

| | Type 31 | LEGO |
| --- | --- | --- |
| Mean fit error [px] | 0.1233 | 0.3363 |
| Dewarped area [mm²] | 620.9 × 436.1 | 608.7 × 430.6 |
| Stereo angle US [°] | 33.86 | 33.58 |
| Stereo angle DS [°] | 29.76 | 33.84 |

Table 2 (p. 7), FOV statistics of ensemble-averaged velocity [m s⁻¹]; "deviation" is the FOV average of |Type 31 − LEGO| on an interpolated grid:

| | Type 31 | LEGO | Deviation |
| --- | --- | --- | --- |
| mean u | 15.11 | 14.98 | 0.122 |
| mean v | −0.14 | −0.02 | 0.135 |
| mean w | −0.27 | −0.18 | 0.152 |
| median u | 15.88 | 15.81 | 0.083 |
| median v | −0.15 | −0.01 | 0.133 |
| median w | −0.25 | −0.23 | 0.110 |

## Figures worth remembering
- **Fig. 1 (p. 3):** intensity maps of the six coated tiles at 0°, 30°, 45°.
- **Fig. 3 (p. 4):** intensity ratio against viewing angle for each coating, white (a) and grey (b) baseplates.
- **Fig. 4 (p. 5):** backing plates after machining and painting, and the assembled 380 × 1150 mm target.
- **Fig. 5 (p. 6):** quasi-3D sketch of the six-camera, three-pair stereo set-up in the AWM cross-section.
- **Figs. 6–8 (p. 7–8):** u contours for FOV C with each calibration, relative and normalised disparity maps, and in-plane vectors around the corner vortex.
- **Fig. 9 (p. 9):** the six LEGO patterns of the parametric study.
- **Fig. 10 (p. 10):** scale factor, mean fit error and scaled fit error for Type 31 and each LEGO pattern, masked vs binarised. The most reusable figure.
- **Fig. 11 (p. 11):** stitched calibration images of three stereo systems and the resulting 350 × 1100 mm mean field.

## Notation
- FOV: field of view; SPIV: stereoscopic PIV; US/DS: upstream/downstream camera of a stereo pair.
- IR: marker–background intensity ratio (eq. 1).
- Fit error: DaVis mean residual of the calibration-marker fit, in px (scaled: in mm via the scale factor).
- Pattern labels "LEGO-48s", "LEGO-64L": marker pitch in mm, s = small (7.8 mm) or L = large (15.8 mm) markers.
- u, v, w: velocity along x (streamwise, out of plane), y (vertical), z (spanwise); U∞: free-stream speed.

## Relevance to this project
- **Where it fits.** This is a practical calibration paper for multi-camera stereo PIV, the hardware end of the PIV practice gathered on the [diagnostics-and-facilities](../Topics/diagnostics-and-facilities.md) page. It sits beside the calibration theory of [Soloff et al. 1997](soloff-1997-distortion-compensation-generalized-stereoscopic-piv.md) (polynomial mapping from several target planes), the stereo geometry of [Willert 1997](willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md) and [Prasad 2000](prasad-2000-stereoscopic-piv-review.md), and the error-removal papers of [Shehzad et al. 2021](shehzad-2021-laser-sheet-alignment-piv.md) (sheet alignment) and [Sun et al. 2021](sun-2021-distortion-correction-large-sensor-piv.md) (edge distortion on a large sensor).
- **Agreements and tensions with related notes.**
  - The paper cites Cardesa et al. 2012 (Exp. Fluids 52) for preferring polynomial over pinhole mapping when stitching, since the image edges carry the most aberration (p. 2), yet it uses the pinhole model throughout (p. 6). [Sun et al. 2021](sun-2021-distortion-correction-large-sensor-piv.md) show how large edge-distortion bias can be on a big sensor, and the paper does not report whether its pinhole fit includes distortion terms or how the residual varies across the field.
  - It relies on planar self-calibration (Wieneke 2005) to fix the sheet position, the step [Shehzad et al. 2021](shehzad-2021-laser-sheet-alignment-piv.md) remove by aligning the sheet first. The two self-calibrations differ, which the authors note in the dewarped areas (p. 6).
  - The 4° difference in the downstream camera's inferred stereo angle (Table 1, p. 6) is not explained. With a 16 m s⁻¹ out-of-plane velocity, an angle error of that size would leak part of u into the in-plane components (the reconstruction geometry in [Willert 1997](willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md) and [Prasad 2000](prasad-2000-stereoscopic-piv-review.md)). That is an alternative to the authors' residence-time explanation for the v, w disagreement (p. 8), and is this note's reading, not the paper's.
- **For the lab's PIV.** The group's jet fields are small (for example two stitched cameras covering about 10D × 2.2D of a 15 mm nozzle, per the topic page), so a LEGO target's 16 mm minimum pitch and 7.8 mm markers are too coarse there. The lessons that do carry over:
  - Calibrate stitched cameras from one shared target where possible, so the stitching needs no common-reference step.
  - Binarise calibration images before fitting; it cut fit errors in most cases (p. 9–10).
  - Quote fit error in mm and as a fraction of the interrogation window (2–3% here), not just in px (p. 9).
  - In cross-plane stereo PIV of a jet (axial velocity out of plane, as in the screeching-jet cross-planes of [Alkislar et al. 2003](alkislar-2003-screeching-rectangular-jet-stereo-piv.md)), the in-plane components are small and are the first to suffer from calibration or sheet-thickness problems, as here (p. 7–8).
  - Matte-black permanent marker on tiles gave better contrast than paint, and stereo viewing angles raise contrast (p. 3–4), which may help anyone making a custom target for a facility-scale field (for example rocket-noise model tests or a larger impinging-jet rig).
- **Methods and data.** All the analysis is on non-time-resolved data (950 pairs at 15 Hz) and uses ensemble means only, the first step of the CLAUDE.md workflow. Nothing here bears on modal decomposition, intermittency or the SPOD → reconstruction → HPOD pipeline, beyond the general point that calibration bias in mean fields carries into any POD or base flow built from them.
- **References of interest** (none held as notes): Raffel et al. 2018, *Particle Image Velocimetry*, 3rd edn (PDF held, not yet indexed); Wieneke 2005, Exp. Fluids 39 (stereo self-calibration; now [indexed](wieneke-2005-stereo-piv-self-calibration-particle-images.md)); Cardesa et al. 2012, Exp. Fluids 52 (stitched multi-camera PIV); Scharnowski & Kähler 2020, Opt. Lasers Eng. 135 (PIV operating rules); Tsai 1986, CVPR (pinhole camera calibration).
