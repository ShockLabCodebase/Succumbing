---
key: "stanislas-2005-second-international-piv-challenge"
title: "Main results of the Second International PIV Challenge"
authors: ["Stanislas, M.", "Okamoto, K.", "Kähler, C. J.", "Westerweel, J."]
year: 2005
type: "article"
venue: "Exp. Fluids 39, 170–191"
bib: {"journal": "Experiments in Fluids", "volume": "39", "pages": "170--191", "publisher": "Springer-Verlag"}
doi: "10.1007/s00348-005-0951-2"
arxiv: ""
pdf: "diagnostics-and-facilities/Stanislas-EtAl_2005_Main-Results-Of-The-Second-International-PIV-Challenge.pdf"
version: "published"
unverified: []
group: false
facility: "PIV Challenge 2003 test images: Delft water jet (case A), synthetic images from channel-flow DNS (case B), TU Braunschweig SD7003 water-tunnel high-speed PIV (case C)"
data: ["PIV", "PIV-TR", "DNS", "synthetic"]
methods: ["PIV-processing", "calibration", "statistics", "PSD"]
flow: ["round-jet", "subsonic", "wall-bounded", "airfoil", "generic"]
phenomena: []
params: {"teams": "15 contributors, 16 team entries (12 PIV, 3 PTV, LaVision both)", "case A": "water round jet, Re 2×10³, 100 pairs, 992 × 1004 px 8-bit, Δt 1.2 ms, d_τ ≈ 1 px", "case B": "synthetic images of open-channel DNS, Re_τ 640, 100 pairs, d_τ 1.3 px, N_S 0.09, 0.195 wall units/px, 12% out-of-plane loss", "case C": "SD7003 at 8° in water, 0.3 m/s, Photron APX 2 kHz, four Δt, 1024 × 256 px strips, displacements 5–20 px", "rms error (case A)": "0.05–0.18 px", "bias (case B)": "±0.02 px outer, ±0.3 px nearest wall", "error (case C)": "0.049–0.181 px, mean 0.09 px (2.3%)"}
topics: ["diagnostics-and-facilities"]
related: ["willert-1991-digital-particle-image-velocimetry", "willert-1997-stereoscopic-dpiv-wind-tunnel-flows", "soloff-1997-distortion-compensation-generalized-stereoscopic-piv", "prasad-2000-stereoscopic-piv-review", "mitchell-2011-particle-relaxation-piv-cross-correlation", "mitchell-2013-near-field-structure-underexpanded-elliptic-jets", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "tan-2017-broadband-velocity-fluctuations-screeching-jets", "weightman-2019-sound-production-impinging-supersonic-jets", "ragni-2011-particle-tracer-response-shocks-piv", "sun-2021-distortion-correction-large-sensor-piv", "shehzad-2021-laser-sheet-alignment-piv"]
cites: []
summary: "15 PIV/PTV codes on 3 cases: real-jet rms 0.05–0.18 px set by window size; peak locking at d_τ ≈ 1 px; deformation cuts noise ~100× in spectra near walls; no single best code"
---
# Main results of the Second International PIV Challenge

- **Authors:** M. Stanislas (Laboratoire de Mécanique de Lille), K. Okamoto (University of Tokyo), C. J. Kähler (TU Braunschweig) and J. Westerweel (TU Delft), the steering committee of the Challenge (p. 170–171). Not Shock Lab group work.
- **Source:** Experiments in Fluids 39, 170–191 (2005), doi:10.1007/s00348-005-0951-2. Received 12 Jan 2005, revised and accepted 8 Feb 2005, published online 8 Mar 2005 (p. 170). Supported by PivNet 2 (Task 5), ERCOFTAC SIG 32 and the Japanese Standard Image Project of the Visualisation Society of Japan (p. 171).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/diagnostics-and-facilities/Stanislas-EtAl_2005_Main-Results-Of-The-Second-International-PIV-Challenge.pdf` (index key `diagnostics-and-facilities/Stanislas-EtAl_2005_Main-Results-Of-The-Second-International-PIV-Challenge.pdf`, 22 pp., publisher's version). **Page refs are journal pages; PDF page = journal page − 169.** The text layer scrambles Tables 4–7 and eq. 1; they were rebuilt from pages rendered at 110–130 dpi.
- **Tags:** PIV Challenge, PIV algorithm benchmark, cross-correlation, multi-pass, multi-grid, window shifting, window (image) deformation, WIDIM, optical flow, orthogonal dynamic programming, PTV, hybrid PIV–PTV, super-resolution, sub-pixel peak fit, three-point Gaussian, peak locking, fractional-displacement histogram, rms displacement error, bias error, entrainment velocity, self-similar round jet, synthetic images, DNS channel flow, near-wall bias, turbulence signal-to-noise ratio, velocity spectra, PIV noise, out-of-plane loss of pairs, time-resolved CMOS PIV, image-boundary vectors, spatial smoothing

## Summary
The Second International PIV Challenge (Busan, September 2003) gave 15 teams the same image sets and compared their vector fields (p. 170–171). Case A was 100 real image pairs of a water jet, judged against self-similarity and against a long-Δt measurement of the entrainment velocity. Case B was 100 synthetic image pairs made from a turbulent channel-flow DNS, compared point by point with the DNS. Case C was a composite of high-speed CMOS images of an airfoil flow at four time separations, used for a self-consistency error estimate (p. 171, 174–188). Mean velocities agreed well almost everywhere, but noise levels differed greatly between codes. On the real jet images the rms error was set mainly by window size and sub-pixel fit (0.05–0.18 px), and "advanced" deformation algorithms gave no clear gain, probably because the particle images were only about 1 px across (p. 176–177, 188–189). On the synthetic images, deformation algorithms cut the noise floor of near-wall spectra by about two orders of magnitude, and PTV got closest to the wall but with higher rms error (p. 182–184, 189). No single algorithm was best everywhere, and synthetic images were judged not yet representative of real ones (p. 190).

## Key findings
- **First Challenge recap** (p. 170): state-of-the-art PIV codes agreed well; PTV was more code-sensitive and complementary (low seeding, high resolution, strong gradients); accuracy assessment and a PIV–PTV comparison were left open.
- **Case A, real jet images** (p. 174–179):
  - **Mean axial velocity:** all teams give the same self-similar profile (Fig. 4, p. 177).
  - **Mean radial velocity:** large spread in the outer, laminar region, where displacements are about 2% of the centreline value. For η < −2 the results range from 0.01 to 0.02 U_c, a 100% variation, while the turbulent core (−2 < η < 2) agrees much better. The authors call it "remarkable" that the turbulent region is measured more consistently than the near-uniform region (Fig. 5, p. 176).
  - **rms error from the outer-region "turbulence"** (true value zero; Figs. 6–7, p. 176–178). The results fall in groups by window size:
    - 32 × 32 px windows (DUTAE, LAVIS, PURDUE, UDN): 0.010–0.018 U_c, i.e. 0.07–0.12 px, matching the known error of 32² windows with a three-point Gaussian fit.
    - Small weighted windows (CORIA 1 at 16², DANTEC at 24² with a weighting that halves the effective size): about 0.028 U_c, 0.18 px, matching theory (Westerweel 1997, 2000).
    - DLR and LIMSI used windows below 32² without a larger error.
    - FOI, IOT, TSI and URS (32²): about 0.008 U_c, 0.05 px, the theoretical optimum for 32² and a three-point fit. Post-processing smoothing (reported by IOT) may explain part of it (p. 176).
    - PTV: CORIA 2 comparable with 32² PIV; OSAK, LAVIS-PTV and VKI like 16² PIV (p. 177).
  - **Outliers:** labelled plus out-of-range vectors were below 1% for nine teams, 1–10% for five, and above 10% for OSAK and URS; all were replaced by the 3 × 3 local mean before statistics (p. 175).
  - **Peak locking** (Figs. 8–9, p. 177–178), quantified as the standard deviation of the fractional-displacement histogram (Table 5):
    - One group (CORIA 1, DLR, DUTAE, FOI, LAVIS, LIMSI, UDN) at 0.0012–0.0020; a second (DANTEC, IOT, TSI) at about 0.003.
    - Monte Carlo with a uniform true fractional displacement predicts a histogram value at ±0.5 px of 0.83 for 0.1 px rms error and 0.56 for 0.2 px. These match the two groups, so their locking follows from three-point Gaussian statistics (p. 178).
    - PURDUE's symmetric window shift gives an almost flat histogram (0.0007), though the authors warn of possible "modulo 2" locking. OSAPREF (0.0176) and URS (0.0071) lock strongly for unknown reasons (p. 178).
    - PTV locks strongly because particle images are below 2 px, except LAVIS-PTV (0.0008). OSAK rounded its output to 0.1 px (p. 178).
  - **Entrainment test** (Fig. 10, p. 178–179). Pairing frame 1 with the next pair's second frame (67.9 ms instead of 1.2 ms) makes outer displacements about 57 times larger (5–8 px, measured to 0.1–0.2 px). Averaged over 100 pairs and rescaled, this gives a reference better than 4 × 10⁻⁴ px, about 0.13 px. Team results scatter by more than 50%, although their spreading rates B differ by less than 4% (ignoring OSAK). Most teams underestimate the entrainment; PURDUE, DUTAE and LAVIS-PTV overestimate it (p. 179). Strictly, the results therefore do not conserve mass (p. 188–189).
  - **Standard vs advanced:** for case A there is no significant difference between multi-pass discrete-shift codes with three-point fits and deformation or optical-flow codes. The authors attribute this to the 1 px particle images, which image interpolation cannot improve (p. 189).
- **Case B, synthetic DNS images** (p. 179–185):
  - **Mean velocity:** very good agreement except at the first points near the wall. Only LAVIS and CORIA have a first point 4 px from the wall; the others are at 8 px with 16² windows. The scatter there is about ±0.3 px, the largest in the field (Figs. 12–13, p. 180–181).
  - **Bias:** within ±0.02 px for y > 200 px (about 40 wall units). DLR (deformation, Willert 2004), LIMSI (optical flow) and CORIA 2 (PTV) are best near the wall. CORIA 2 is biased in the outer region, attributed to poor handling of out-of-plane motion (Fig. 14, p. 180). The cumulative error histograms show groups of results that "do not appear to correlate with the type of algorithm" (Fig. 15, p. 180–181).
  - **Bias and rms are uncorrelated.** LAVIS gets the rms turbulence right while biased in the mean (p. 181, 184).
  - **rms error** (Fig. 18, p. 181–183): above y = 100 px, teams with advanced algorithms stay below 0.1 px and the others above. CORIA's 8 × 8 windows gave unexpectedly high errors because smoothing of the velocity field before image interpolation in the deformation loop had been switched off, which shows how sensitive these algorithms are to implementation (p. 181). LIMSI's optical flow is good near the wall, worse in the outer flow, and seems more sensitive to out-of-plane loss of pairs (p. 181–182).
  - **PTV:** particle location error is assumed to be 0.1–0.2 px; apart from LAVIS-PTV the PTV group has larger rms errors than PIV, but without a matching mean bias (except CORIA 2) (p. 182).
  - **Turbulence SNR** (u_rms over rms error; Fig. 19, p. 182–183): differs by a factor of 2–4 between codes (excluding CORIA). Standard codes without iterative deformation are worst; optical flow matches them away from the wall and improves near it.
  - **Spectra at y = 32 px** (about 6 wall units; Fig. 20, p. 183): the noise floors of the streamwise spectra differ by more than two decades. The best codes bring the noise down by about two orders of magnitude, which improves the resolution of the small scales by a factor of 2–3 over standard codes (p. 183).
  - **PDFs:** DLR's velocity PDF matches the DNS with no visible peak locking; some codes showed anti-peak-locking (Fig. 21, p. 183).
  - **Instantaneous profiles:** within ±0.2 px for y > 100 px and up to ±0.5 px near the wall, with errors correlated with the local gradient in code-specific ways (Fig. 22, p. 184).
  - **Conclusion for B:** deformation brings a clear gain in strong gradients; standard correlation is more robust to out-of-plane loss than optical flow; PTV gets closer to the wall and can match PIV in the mean, but PIV's window averaging helps the rms. The images were noise-free, so PTV on real noisy images is untested (p. 184–185).
- **Case C, high-speed PIV in water** (p. 185–188):
  - **Iterations:** two for integer window shifting (TSI), at least three for sub-pixel shifting by deformation (URS), and up to eight for complex deformation codes (p. 186).
  - **Hidden smoothing:** with identical 32² windows, DUTAE, PURDUE and UDN fields are visibly smooth, DLR, FOI, OSAPREF and URS slightly smoothed, and DANTEC, IOT, LaVision, TSI and URS2 nearly unsmoothed. The authors trace this to how the deformation field is built from the vector field and conclude that the spatial resolution is "artificially decreased" (p. 186).
  - **Boundaries:** spurious vectors accumulate at the left image edge for some codes (e.g. TSI), typical of second-order window shifting and of multi-size windows that run off the image (p. 186).
  - **Particle tracking and SNR:** CORIA 2 and VKI lose valid vectors where the illumination is weak; OSAK keeps them but with many more wrong vectors. Looser detection criteria raise both valid and invalid counts when the SNR is low (p. 186). LIMSI's optical flow could not run on the composite, because the black gaps break its intensity-conservation assumption (p. 186).
  - **Peak locking:** none significant, because particle images in water are large; OSAPREF, FOI and UDN deviate from the average histogram (Fig. 26, p. 187).
  - **Error estimate** (Table 7, Fig. 27, p. 188–189): normalised field 1 (Δx up to 20 px) is subtracted from field 4 (up to 5 px). The mean error is about 0.09 px (2.3%). The best result, UDN at 0.049 px (1.28%), is 3.8 times better than the worst, TSI at 0.181 px (4.87%).
- **Overall conclusions** (p. 188–190):
  - Global agreement is good, but noise levels differ significantly and certain codes are better in certain regions. "Unfortunately there is not a single algorithm that has the best performance everywhere" (p. 190).
  - The PIV noise behaves like white noise: large differences in spectral noise floors do not show up in the mean (p. 189).
  - Advanced codes are sensitive to implementation and programming choices (p. 189).
  - Synthetic images are not yet representative of real ones (agreement much better in B than in A), case B could have had stronger gradients, and out-of-plane effects need study (p. 190).
  - Third Challenge planned for PIV'05 at Caltech (September 2005), on spatial resolution and stereo PIV reconstruction (p. 190).

## Setup / method
**Organisation** (p. 171). Scientific committee (Kobayashi, Nishio, Okamoto, Adrian, Kähler, Westerweel, Stanislas; Table 1, whose caption says "first" PIV Challenge); the four authors formed the steering committee. Images (TIFF, two frames per set) were released on 15 Apr 2003 (A, B) and 12 May 2003 (C), and results were due on 19 May 2003. Teams returned post-processed displacement fields with spurious vectors removed but not interpolated or filtered, the vector coordinates, and a flag matrix. Units are pixels, with origin at the centre of the lower-left pixel.

**Algorithms** (Tables 3–4, p. 172–174). The paper uses the term "advanced algorithms" for multi-pass, multi-grid and deformation codes, and suggests a stricter naming: 0th order (no shift), 1st order (window shifting), 2nd order (window deformation) (p. 173).

| Team | Method | Algorithm | Iter | IW | Filter | Grid | Initial grid | Peak fit |
|---|---|---|---|---|---|---|---|---|
| FOI | CCF | MP MG | 0 | 32² | 0 | 16² | 64² | 3P Gaussian |
| DUTAE | CCF 2nd order | MP MG AWD | 8 | 37² | 37² | 8² | 200² | 3P Gaussian |
| PURDUE | CCF | MP MG AWD | 5 | 32² | 0 | 16² | 0 | 3P Gaussian |
| CORIA 1 | CCF | MP MG AWD | 3 | 16² | 0 | 4² | 0 | 2D Gaussian 3 × 3 |
| URS | CCF | MP AWS | 3 | 32² | 32² | 16² | 128² | 3P Gaussian |
| LAVIS | CCF | MP MG AWD | 5 | 32² | 16² | 8² | 32² | 3P Gaussian |
| UDN | CCF | MP MG AWD | 7 | 16² | — | 8² | 64² | 9P Gaussian |
| IOT | CCF | MP MG AWS | 2 | 32² | 32² | 16² | 32² | 3P Gaussian |
| DANTEC | CCF | MP AWD | 8 | 20² | 20² | 16² | 32² | 2D Gaussian 3 × 3 |
| DLR | CCF | MP MG AWD | 4 | 16² | 16² | 8² | 64² | 2D Gaussian LM 7 × 7 |
| OSAPREF | CCF | MP AWS | 3 | 16² | 8² | 8² | 16² | Gradient |
| LIMSI | Opt. flow | MP ASD | 28 | 7² | 5² | 1² | 358² | DP max |
| TSI | CCF | MP AWS | 2 | 32² | 32² | 16² | 64² | 3P bilinear |

PTV teams: CORIA 2 (PIV predictor, then iterative field-partitioning pairing; threshold and median filter), LAVIS-PTV (DaVis PIV predictor, 16² correlation around each particle; threshold and low-pass), OSAK (pure relaxation tracking with dynamic threshold; displacement and angle criteria), VKI (hybrid on WIDIM, locally adaptive threshold, double three-point Gaussian particle positions, neighbour check) (p. 173–174). MP multi-pass, MG multi-grid, AWD adaptive window deformation, AWS adaptive window shifting, ASD adaptive strip deformation, DP max dynamic programming.

Notable implementation details (p. 172–173): DUTAE's WIDIM deforms symmetrically about the measurement point (2nd-order accurate), interpolates images with a cardinal sine, and adds super-resolution from measured second derivatives (SR-WIDIM). DLR down-samples the image by summing pixels instead of enlarging windows, with cubic B-spline interpolation and high-pass or histogram-equalisation preprocessing (Willert 2004). DANTEC's tapered circular weighting halves the effective window (24² nominal ≈ 13.5 px diameter, area-equivalent to 12²). LIMSI's ODP-PIV finds a per-pixel transformation by minimising the Minkowski distance under intensity conservation. LAVIS used DaVis 6 (contact B. Wieneke, the author of the Wieneke 2005 stereo self-calibration paper being indexed in parallel); DLR's contact was C. Willert ([Willert & Gharib 1991](willert-1991-digital-particle-image-velocimetry.md); [Willert 1997](willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md)).

**Test cases** (Table 2, p. 171).

| Case | Flow | Provider | Images | Sets | Truth used |
|---|---|---|---|---|---|
| A | Submerged round water jet, Re 2 × 10³ | Westerweel (Delft) | Real | 100 | Self-similarity; long-Δt entrainment |
| B | Turbulent open-channel flow, DNS, Re_τ 640 | Okamoto (Tokyo) | Synthetic | 100 | DNS on a 4 × 4 px grid |
| C | SD7003 suction side, 8° incidence | Kähler (Braunschweig) | Real, CMOS | 1 composite | Largest-Δt field |

- **Case A** (p. 174–175): 5 µm seeding, 1 mm sheet from a dual-cavity Nd:YAG, 45 × 45 mm² field centred 80 mm from the nozzle, Kodak ES-1.0 at 992 × 1004 px, 8 bit. Particle images diffraction-limited, about 1 px. Twelve series of 64 pairs at 15 Hz gave 657 pairs; 100 were drawn at random. Designed for 32² windows, but seeded densely enough for 16² or smaller. Centreline displacement −6.6 to −3.5 px (flow right to left), half-width 96–193 px. Experimental details are in Fukushima et al. (2002).
- **Case B** (p. 179–180):
  - DNS by Tsubokura, 576 × 576 × 148 points (49 million), Re_τ = hu_τ/ν = 640, with U_max = 1.19 m/s, u_τ = 34.1 mm/s, h = 300 mm, ν = 16 mm² s⁻¹.
  - Field y⁺ = 0–100, x⁺ = 1–300, 0.195 wall units per pixel.
  - Particles were moved through the space–time-interpolated DNS with a 10⁻⁶ s step, and images made with the Japanese standard image generator (Okamoto et al. 2000).
  - Particle images Gaussian, d_τ 1.3 px at one standard deviation (σ 0.65 px); fill ratio 0.3; source density N_S = 0.09 (no speckle).
  - Out-of-plane motion kept below half the sheet thickness, which gives about 12% loss of pairs (Foucaut et al. 2004).
  - The strongest near-wall gradient displaced particles across a 32² window by about 1.5 particle-image diameters, against a Keane–Adrian optimum of 0.5; that optimum would need 10² px windows near the wall. Ten particle pairs per window (Keane & Adrian 1990) would need 12² px (p. 180).
- **Case C** (p. 185–186):
  - Water flow at 0.3 m/s over an SD7003 at 8° (Nerger et al. 2003, Re 6 × 10⁴ in that reference's title). Photron Fastcam APX at 2 kHz with 1/2000 s integration, argon-ion illumination graded from left to right to vary the SNR.
  - Only the upper half of the image was used, avoiding the laminar separation bubble near the airfoil.
  - Four pairs with different Δt, chosen symmetrically about a fixed time, were each cut to 1024 × 256 px and pasted into one image with 32 px black gaps. The aim was to keep the effort small, stop per-image tuning, and test image boundaries.
  - Two further air-flow pairs (diode-pumped Pegasus laser, PCO Sensicam and Photron PCI viewing the same field) are not analysed in the paper.
  - Required evaluation: 32² windows on a 16 px grid, X = 32–992 (61 nodes), Y = 32–1664 (103 nodes), plus one free evaluation containing those nodes (p. 186). Table 6 lists window sizes and iterations per team.
- **Comparison metrics** (all by the steering committee): mean and rms profiles; fractional-displacement histograms and the peak-locking coefficient; scatter-plot outliers outside an ellipse (Fig. 3, p. 176); cumulative error histograms; turbulence SNR; streamwise velocity spectra; velocity PDFs; field-to-field differences for case C.
- **Data dependence.** Cases A and B use 100 independent pairs: statistics only, no time information. The spectra in case B are spatial (along x in one field), averaged over fields, so they need no time resolution. Case C is time-resolved CMOS PIV but is assessed on single pairs; only the "multi-Δt" idea uses the time series. Case A's entrainment reference also uses the 15 Hz sequence, by correlating across pairs.

## Key equations
- **Self-similar jet fit** (eq. 1, p. 176), least squares on the mean displacement field:
  $U(x-x_0,y-y_0)=U_c(x)\exp\!\left[-\dfrac{(y-y_0)^2}{\ell(x)^2}\right],\quad U_c(x)=\dfrac{A}{x-x_0},\quad \ell(x)=B\,(x-x_0)$,
  with (x₀, y₀) the virtual origin, A in px² (negative, since the flow runs right to left) and B the spreading rate. The text calls the width λ; the equation writes ℓ. Radial position is scaled as η = (y − y₀)/ℓ(x).
- **Particle-image source density** (p. 180): $N_S=C\,\Delta z_0\,\pi d_\tau^2/(4M^2)$ in the usual form; the text layer shows only "N_S = C_p d²/4", so the exact printed form should be checked. Value 0.09.
- **Peak-locking coefficient** (Table 5, p. 177): standard deviation of the normalised fractional-displacement histogram values.
- **Turbulence signal-to-noise ratio** (p. 182): u_rms (DNS) over the rms error.
- **Case C error** (p. 188): mean of |Δx′₄ − Δx′₁| over valid vectors, where Δx′ is displacement normalised for Δt; given in px and in %.

> **Checks (my arithmetic):**
> - Eq. 1 with A ≈ −6100 px² and U_c from −6.6 to −3.5 px gives x − x₀ ≈ 920–1740 px. With B = 0.13, ℓ ≈ 120–226 px and the half-velocity width ℓ√ln 2 ≈ 100–188 px, matching the quoted 96–193 px (p. 175). The half-width spreading rate is then about 0.13 × 0.83 ≈ 0.11.
> - Re_τ = 0.300 × 0.0341/16 × 10⁻⁶ = 639 ✓. The viscous length is ν/u_τ = 0.47 mm, so 0.195 wall units per px is 0.092 mm px⁻¹; y = 32 px is 6.2 wall units ✓ (p. 183); y = 100 and 200 px are 19.5 and 39 wall units ✓.
> - 67.9/1.2 = 56.6 ✓ ("about 57", p. 179).
> - Case C grid: (992 − 32)/16 + 1 = 61 and (1664 − 32)/16 + 1 = 103 ✓; four strips of 256 px plus gaps fit inside Y ≤ 1664 + 32.
> - Table 7: the mean of the px column is 0.087 px and of the % column 2.27%, matching "around 0.09 pixels, or 2.3%" ✓; 4.8716/1.2750 = 3.82 ✓ ("3.8 times"). The px/% ratio is ≈ 3.8 px for every row, i.e. the % is relative to the normalised displacement of about 3.8 px seen in Fig. 27.
> - Case A rms: 0.07–0.12 px against 0.010–0.018 U_c implies U_c ≈ 6.7–7 px; 0.18 px against 0.028 U_c gives 6.4 px; 0.05 px against 0.008 U_c gives 6.3 px. All consistent with the −6.6 to −3.5 px centreline range.
> - Table 5 spreading rates excluding OSAK span 0.1277–0.1366, about ±3.4% about the mean, consistent with "less than 4%".

## Data tables
**Case A results** (Table 5, p. 175, rebuilt from the rendered page). Resol. = window; Discarded = vectors flagged by the team; Outl. = vectors outside the Fig. 3 ellipse; Perc. = their fraction; Pk. lock. = peak-locking coefficient; A in px², B spreading rate; Entr. vel. = mean radial displacement (px) for 800 < x < 950, 850 < y < 900. Reference entrainment from the long-Δt pairs ≈ −0.13 px (p. 179; −0.12 to −0.13 px across the window, read from Fig. 10).

| Team | Equid. | Resol. | Method | Nr. vect. | Discarded | Outl. | Perc. | Pk. lock. | A | B | Entr. vel. |
|---|---|---|---|---|---|---|---|---|---|---|---|
| CORIA 1 | Yes | 16² | CCF | 6 076 000 | 8449 | 957 | 0.15% | 0.0016 | −6085 | 0.1312 | −0.113 |
| CORIA 2 | No | | Hybr. PIV/PTV | 2 426 441 | not lab. | 6272 | 0.26% | 0.0144 | −6387 | 0.1315 | −0.066 |
| DANTEC | Yes | 24² | CCF | 372 100 | 18 450 | 7 | 4.96% | 0.0030 | −5937 | 0.1338 | −0.105 |
| DLR | Yes | 20² | CCF | 1 525 200 | 641 | 665 | 0.09% | 0.0012 | −6148 | 0.1301 | −0.111 |
| DUTAE | Yes | 31² | CCF/2nd ord. | 1 452 000 | 0 | 280 | 0.02% | 0.0014 | −6042 | 0.1327 | −0.155 |
| FOI | Yes | 32² | Opt. flow | 372 000 | 6939 | 173 | 1.91% | 0.0054 | −5870 | 0.1358 | −0.111 |
| IOT | Yes | 32² | CCF | 372 100 | 119 | 109 | 0.06% | 0.0029 | −6197 | 0.1284 | −0.093 |
| LAVIS | Yes | 32² | CCF | 1 550 000 | 509 | 262 | 0.05% | 0.0013 | −6163 | 0.1296 | −0.079 |
| LAVIS PTV | No | | Hybr. PIV/PTV | 5 102 843 | 0 | 3023 | 0.06% | 0.0008 | −6240 | 0.1277 | −0.155 |
| LIMSI | Yes | 12² | Opt. flow | 1 550 000 | 0 | 362 | 0.02% | 0.0020 | −6041 | 0.1319 | −0.076 |
| OSAK | No | 64² | PTV | 1 297 007 | not lab. | 172 229 | 13.28% | 0.0619 | −3661 | 0.1703 | −0.140 |
| OSAPREF | Yes | ? | CCF | 1 525 200 | 57 493 | 528 | 3.80% | 0.0176 | −6250 | 0.1282 | −0.062 |
| PURDUE | Yes | 32² | CCF | 390 600 | 22 | 67 | 0.02% | 0.0007 | −6085 | 0.1315 | −0.144 |
| TSI | Yes | 32² | CCF | 372 100 | 7334 | 4 | 1.97% | 0.0032 | −6002 | 0.1317 | −0.090 |
| UDN | Yes | 32² | CCF | 372 100 | 26 974 | 8 | 7.25% | 0.0014 | −6179 | 0.1288 | −0.119 |
| URS | Yes | 32² | CCF | 366 000 | 90 394 | 20 | 24.70% | 0.0071 | −6026 | 0.1327 | −0.120 |
| VKI | No | | Hybr. PIV/PTV | 917 735 | not lab. | 166 | 0.02% | 0.0159 | −5858 | 0.1366 | −0.100 |

> **Inconsistencies in the paper (verify):** the text refers to this table as "Table 6" (p. 175, 177, 178, 179). FOI is listed as "Opt. flow" with peak locking 0.0054, yet the text puts FOI in the 0.0012–0.0020 group (p. 177) and describes it as multi-grid cross-correlation (p. 172). CORIA 1 is 16² in Tables 4–5, but the case B text says CORIA used 8 × 8 windows there (p. 181). DANTEC is 24² here and 20² in Table 4; DUTAE 31² here and 37² in Table 4 (both may be case-specific).

**Case C relative error** (Table 7, p. 188; columns unlabelled in the PDF, read as rank, team, mean error in px, mean error in %).

| Rank | Team | Error (px) | Error (%) |
|---|---|---|---|
| 1 | UDN | 0.0489 | 1.2750 |
| 2 | IOT | 0.0606 | 1.5808 |
| 3 | DLR | 0.0618 | 1.6201 |
| 4 | LaVision | 0.0653 | 1.7035 |
| 5 | PURDUE | 0.0707 | 1.8429 |
| 6 | DUTAE | 0.0714 | 1.8581 |
| 7 | FOI/FFA | 0.0845 | 2.2118 |
| 8 | URS | 0.0882 | 2.23046 |
| 9 | DANTEC | 0.0890 | 2.3233 |
| 10 | OSAPREF | 0.0896 | 2.3597 |
| 11 | LIMSI | 0.1024 | 2.5764 |
| 12 | URS2 | 0.1192 | 3.1143 |
| 13 | TSI | 0.1811 | 4.8716 |

> LIMSI appears in Table 7 although the text says its result could not be evaluated because of the black gaps (p. 186); Table 6 gives LIMSI a 12² "window" and 30 iterations, so its entry may come from the free evaluation. The text says LAVIS-PTV needed five iterations and LAVIS PIV six (p. 186), but Table 6 lists 6 and 7, and labels every team "PIV" including the PTV teams. The text cites "Table 7" for the identical window sizes (p. 186), which are in Table 6.

## Figures worth remembering
- **Fig. 3 (p. 176):** scatter of all case A displacements with the outlier ellipse.
- **Figs. 4–7 (p. 177–178):** self-similar mean axial, mean radial and rms axial profiles for PIV and PTV. Fig. 7 zooms into the outer region (η from −4 to −2), where the "turbulence" is pure measurement noise: PIV curves fan out between about 0.007 and 0.03 U_c (read from the figure).
- **Figs. 8–9 (p. 178–179):** displacement and fractional-displacement histograms. PURDUE is flat; OSAPREF shows integer spikes; the PTV histograms are sharply peaked at 0 px.
- **Fig. 10 (p. 179):** mean radial displacement in the outer region against x, with the long-Δt reference line near −0.13 px. Team results run from about −0.05 to −0.17 px (read from the figure).
- **Figs. 13–14 (p. 181):** near-wall mean profiles and bias against the DNS; PTV reaches closest to the wall.
- **Figs. 18–19 (p. 183):** rms error profiles (advanced codes below 0.1 px; PTV 0.1–0.6 px, read from the figure) and turbulence SNR (roughly 7–45 across teams, read from the figure).
- **Fig. 20 (p. 184):** streamwise spectra at y = 32 px against the DNS; noise floors differ by more than two decades.
- **Fig. 21 (p. 184):** DLR's PDF of u at y = 32 against the DNS. The caption says y⁺ = 32, the text y = 32 px (about 6 wall units).
- **Fig. 23 (p. 185):** PTV vectors at y⁺ = 2.5–7: VKI detects many more particles.
- **Figs. 25–27 (p. 187–189):** normalised case C fields for all teams, the displacement histograms and the field 1 against field 4 profiles at x = 512 px.

## Notation
- Δx, Δx′: displacement and displacement normalised for Δt (px); U_c: mean centreline displacement; ℓ (λ): jet width; B: spreading rate; A: centreline-decay coefficient (px²); x₀, y₀: virtual origin; η = (y − y₀)/ℓ.
- IW: interrogation window; d_τ (d_p): particle-image diameter; N_S: source density; C: particle concentration; Δz₀: sheet thickness; M: magnification.
- y⁺, x⁺, "Wu": wall units; Re_τ = hu_τ/ν.
- CCF: cross-correlation function; MP, MG, AWD, AWS, ASD, DP: see the Table 4 key above; 3P/9P Gaussian: three- or nine-point Gaussian peak fit; PTV: particle tracking velocimetry.
- Peak locking: bias of measured displacements towards integer pixels; turbulence SNR: u_rms over rms error.

## Relevance to this project
This is the standard reference for what PIV interrogation itself contributes to the error budget. The other PIV notes cover tracer lag, calibration and sample size, so this one fills a gap on [diagnostics-and-facilities](../Topics/diagnostics-and-facilities.md). It sits between the founding cross-correlation paper, [Willert & Gharib 1991](willert-1991-digital-particle-image-velocimetry.md) (three-point Gaussian fit, about 0.01 px best case on bench tests), and the stereo papers ([Willert 1997](willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md), [Soloff et al. 1997](soloff-1997-distortion-compensation-generalized-stereoscopic-piv.md), [Prasad 2000](prasad-2000-stereoscopic-piv-review.md), and Wieneke 2005 on self-calibration). On real images the error is 5–18 times that best case (0.05–0.18 px, p. 176), and the paper shows how strongly it depends on the code.

**How it sits with the other notes**
- **Particle-image size and peak locking.** The group's smoke gives diffraction-limited particle images of about 1.2 px, and the helical-mode paper reports "minimal" peak locking ([Edgington-Mitchell et al. 2014](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md), p. 827). Case A has the same ≈ 1 px images. There peak locking depended strongly on the code (coefficient 0.0007 to 0.018), and deformation codes gained nothing because interpolating 1 px images does not help (p. 178, 189). For the group's data that means: check the fractional-displacement histogram, quantified as in Table 5, for every campaign, rather than assuming deformation removes locking.
- **Quoted versus real errors.** [Mitchell et al. 2013](mitchell-2013-near-field-structure-underexpanded-elliptic-jets.md) (p. 3–4) quotes 0.04 px from synthetic-image tests (Scarano 2002) for its multigrid code. This Challenge found synthetic images "not yet fully representative", with much better agreement in case B than in case A (p. 190). A synthetic-image error is therefore a lower bound for real shock-containing jet images. The 0.1 px resolvable-displacement limit used by [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md) (p. 159–160) is close to the case A median.
- **Noise in turbulence statistics.** The outer region of case A has zero true turbulence, yet the measured u_rms is 0.008–0.028 U_c (p. 176). The same additive white noise (p. 189) enters every rms, Reynolds-stress and POD residual in the group's jet PIV. It matters most where fluctuations are weak, for example in the potential core and the ambient. This supports the SNR > 500 requirement of [Tan et al. 2017](tan-2017-broadband-velocity-fluctuations-screeching-jets.md) (p. 2332) for residual length scales, although Tan's SNR (added Gaussian noise) is defined differently from the turbulence SNR here.
- **Gradients and hidden smoothing.** Case B shows that deformation codes are best in strong gradients, and case C that some deformation codes smooth the field beyond what the window implies (p. 186). In shock-containing jets this interacts with the in-window shock artefacts modelled by [Mitchell et al. 2011](mitchell-2011-particle-relaxation-piv-cross-correlation.md), whose idealised deformation step removed most of the artefact only for monodisperse seed. Neither paper tests real shocks in a Challenge-style comparison; the planned third Challenge concerned spatial resolution (p. 190).
- **Bias and rms are independent** (p. 184). A code can give correct rms turbulence with a biased mean (LAVIS) or the reverse. The group's checks therefore need both: a mean check against probes or BOS (as in the topic page's lag question) and a noise check from a quiescent region.
- **Other error sources are larger.** The interrogation errors here (≤ 0.2 px, at most a few percent of the displacement) are small next to the up to 20% stress bias from sheet misalignment ([Shehzad et al. 2021](shehzad-2021-laser-sheet-alignment-piv.md)), the up to 80% edge bias from lens distortion ([Sun et al. 2021](sun-2021-distortion-correction-large-sensor-piv.md)) and the particle-lag artefacts at shocks ([Ragni et al. 2011](ragni-2011-particle-tracer-response-shocks-piv.md)). The Challenge images were free of all three.

**Modelling and simulation side**
- Case B is the method's validation against DNS. Particles were moved through a space- and time-interpolated DNS, which gives exact ground truth, including out-of-plane loss (p. 179–180). That pipeline could be reproduced with the PyFR LES: synthetic PIV images from the LES of a screeching jet, with modelled particle lag, would separate interrogation, lag and shock artefacts and give an error bar on PIV–LES comparisons. That is my suggestion, not the paper's.
- The paper has no model of the errors beyond citing Westerweel's theory (rms error against window size and sub-pixel fit; Monte Carlo histograms, p. 176, 178). Its contribution is empirical.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Non-time-resolved PIV (step 1, basic statistics; POD).** Every case A and B statistic (means, rms, PDFs, spatial spectra, histograms) comes from 100 independent pairs, which is the group's PIV regime. Three lessons:
  - Report the measurement-noise floor, from a quiescent or uniform region, alongside the rms.
  - Check the fractional-displacement histogram.
  - Expect the spatial spectra and the higher POD modes to sit on a white-noise floor set by the code (Fig. 20).

  For POD pairs this noise spreads over all modes. It mostly affects the tail of the spectrum and the residual u″ of the triple decomposition, not the leading pair.
- **Time-resolved data.** Case C is the only TR case, and it is judged on single pairs. Its idea of comparing fields with different Δt and normalised displacement is a cheap self-consistency error estimate for any TR or multi-frame PIV (p. 188). The case A trick is similar: correlating across pairs gives a 57 times longer Δt and a very precise mean in slow regions (p. 179). Nothing in the paper concerns intermittency or changes of frequency over time.
- **For the SPOD → reconstruction → HPOD pipeline**, which runs on TR schlieren, the transferable point is that the measurement noise is white and additive (p. 189). SPOD of TR-PIV would push it into the low-energy modes at every frequency, so reconstruction from the leading modes acts as a de-noising filter. Its floor sets how weak a mode HPOD can track.

**PyFR staging LES.** The comparison with group PIV of A1/A2 jets should allow for code noise of about 0.05–0.2 px in rms fields, as well as the particle-lag caveat; synthetic PIV from the LES (above) would quantify both.

**Related works cited, candidates for `/add-paper`:** Stanislas, Okamoto & Kähler 2003 (Meas. Sci. Technol. 14, first PIV Challenge); Scarano 2002 (Meas. Sci. Technol. 13, iterative image deformation review); Scarano & Riethmuller 2000 (Exp. Fluids 29, WIDIM); Westerweel 1997 (Meas. Sci. Technol. 8, fundamentals of digital PIV); Westerweel 2000a (Exp. Fluids 29, measurement precision theory) and 2000b (sensor geometry, peak locking); Westerweel, Dabiri & Gharib 1997 (Exp. Fluids 23, discrete window offset); Keane & Adrian 1990 and 1992 (optimisation, cross-correlation theory); Okamoto et al. 2000a,b (standard PIV images); Quénot et al. 1998 (Exp. Fluids 25, optical-flow PIV); Foucaut et al. 2004 (EUROPIV 2, synthetic image generator); Fukushima, Aanen & Westerweel 2002 (case A jet); Nerger, Kähler & Radespiel 2003 (case C airfoil); Willert 2004 (advanced PIV algorithms for industrial use); Stitou & Riethmuller 2001 (super-resolution PTV); Ohmi & Li 2000 (PTV algorithms).
