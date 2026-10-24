---
key: "willert-1991-digital-particle-image-velocimetry"
title: "Digital particle image velocimetry"
authors: ["Willert, C. E.", "Gharib, M."]
year: 1991
type: "article"
venue: "Exp. Fluids 10, 181–193"
bib: {"journal": "Experiments in Fluids", "volume": "10", "pages": "181--193", "publisher": "Springer-Verlag"}
doi: "10.1007/BF00190388"
arxiv: ""
pdf: "diagnostics-and-facilities/Willert-Gharib_1991_Digital-Particle-Image-Velocimetry.pdf"
version: "published"
unverified: ["DOI from memory; not printed in this PDF", "issue number not printed in this PDF"]
group: false
facility: "UC San Diego water facility: piston-driven vortex-ring generator, 30 Hz CCD video DPIV"
data: ["PIV-TR", "synthetic"]
methods: ["calibration", "statistics", "vortex-identification"]
flow: ["generic", "subsonic"]
phenomena: ["coherent-structures"]
params: {"Re": "≈1050 (U_tube D_tube/ν)", "D_tube": "3.00 cm", "V_max": "≈3.3 cm/s", "frame rate": "30 Hz (Δt = 1/30 s)", "image": "512 × 480 px, 8 bit, 6.13 px/mm", "window": "32 × 32 px, 75% overlap, 8 px grid", "seeding": "80 µm spheres, 10–20 per 32² window", "particle image σ": "1–1.5 px", "max displacement": "≈N/3", "uncertainty": "≈0.01 px (best, 32² window)"}
topics: ["diagnostics-and-facilities"]
related: ["mitchell-2011-particle-relaxation-piv-cross-correlation", "tan-2017-broadband-velocity-fluctuations-screeching-jets", "tan-2019-correlation-analysis-piv-screeching-jets", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "weightman-2017-phase-lag-supersonic-jet-impingement", "weightman-2019-sound-production-impinging-supersonic-jets", "alkislar-2003-screeching-rectangular-jet-stereo-piv", "ragni-2011-particle-tracer-response-shocks-piv", "sun-2021-distortion-correction-large-sensor-piv", "shehzad-2021-laser-sheet-alignment-piv", "thethy-2022-shock-diffraction-non-quiescent-medium", "raiola-2025-hilbert-pod", "willert-1997-stereoscopic-dpiv-wind-tunnel-flows", "soloff-1997-distortion-compensation-generalized-stereoscopic-piv", "prasad-2000-stereoscopic-piv-review"]
cites: []
summary: "Founding FFT cross-correlation DPIV: 32² px windows, N/3 shift limit, 3-point Gaussian sub-pixel fit, ≈0.01 px floor, 1000:1 range; 30 Hz video of a vortex ring"
---
# Digital particle image velocimetry

- **Authors:** C. E. Willert and M. Gharib, Dept. of Applied Mechanics and Engineering Sciences, University of California, San Diego, La Jolla (p. 181). Not Shock Lab group work.
- **Source:** Experiments in Fluids 10, 181–193 (1991), Springer-Verlag. Received 21 February 1990 (p. 193). Funded by DARPA ACMP through the URI program, contract DARPA/ONR N00014-86-K-0758; A. Weigand helped with the vortex-ring experiment (p. 192). The DOI (10.1007/BF00190388) is not printed in this scan and was added from memory.
- **PDF:** index key `diagnostics-and-facilities/Willert-Gharib_1991_Digital-Particle-Image-Velocimetry.pdf`, 13 pp., publisher's scanned version with an OCR text layer. **Page refs are journal pages; PDF page = journal page − 180.** The Read tool reports the file as password-protected, so the text came from `pdftotext`. The OCR garbles every equation and figure; eqs. 1–7, Fig. 5 and the plotted values of Figs. 6–7 were rebuilt from pages rendered at 110–250 dpi.
- **Tags:** digital PIV (DPIV), video PIV, frame-to-frame cross-correlation, interrogation window, FFT cross-correlation, linear system model (impulse response = displacement), deconvolution, sub-pixel peak estimation, three-point Gaussian (exponential) and parabolic fit, centre-of-mass centroiding, N/3 displacement rule, Nyquist limit N/2, window offset, uncertainty vs seeding density and displacement, 8-bit quantisation floor, dynamic range, window as moving-average spatial filter, window overlap and independent vectors, outlier removal, 3 × 3 smoothing, PTV validation, Gaussian-weighted interpolation (Agüí & Jiménez), vortex ring, vorticity, axisymmetric stream function, circulation, slug model

## Summary
Willert and Gharib replace the photographic film and optical interrogation of 1980s PIV and laser speckle velocimetry with a fully digital chain. Two successive single-exposure video frames are cut into small interrogation windows, and each window pair is cross-correlated with FFTs; the correlation peak, located to sub-pixel accuracy by a three-point fit, gives the mean particle displacement in the window (p. 182–185). Using two separate frames removes the directional ambiguity of double-exposed images without image shifting, and lets partially overlapping particle images be measured (p. 182). Translation-stage and numerical tests put the best uncertainty at about 0.01 px for 32 × 32 px windows, with a dynamic range of about 1000:1. Halving the window to 16 × 16 px roughly doubles the uncertainty, and the window acts as a moving-average low-pass filter on the velocity field (p. 185–186). The method is demonstrated on 30 Hz video of a Re ≈ 1050 vortex ring in water. From the vector fields the paper computes vorticity, the axisymmetric stream function and circulation; the measured peak circulation of 9.66 cm² s⁻¹ is within 10% of the slug-model estimate (p. 187–192). This is the paper from which FFT-based cross-correlation PIV, including the multigrid schemes the group uses, descends.

## Key findings
- **The algorithm** (Sect. 2–3, p. 182–185):
  - Frame-to-frame cross-correlation of single-exposure images resolves the sign of the displacement directly, which double-exposed PIV and LSV images cannot do without image shifting or colour coding (p. 182).
  - Deconvolution (dividing spectra, eq. 3) would recover the displacement delta function in principle, but it is very sensitive to noise and gives a discrete delta with no shape to interpolate. Cross-correlation is used instead (p. 183).
  - The correlation is computed by FFT: multiply the window spectra (one conjugated), then inverse transform (Fig. 5, p. 184–185). No normalisation is needed, because for a periodic (circular) correlation the normalisation terms are constant over the window (p. 184).
  - **Displacement limits:** Nyquist allows at most N/2 in each direction. In practice the signal-to-noise ratio of the correlation falls with shift because pairs are lost at the window edges, and about **N/3** is the usable limit, which corresponds to the half-beam-diameter rule of optical PIV (p. 184–185).
  - **Peak finding:** take the highest correlation value, then fit a three-point parabola or exponential separately in x and y. The three-point exponential (Gaussian) fit had "much lower error" than centre-of-mass centroiding, which also needs a cut-off threshold. The authors attribute this to the roughly Gaussian shape of the correlation peak. The supporting tests are said to be "beyond the scope" of the paper and are not shown (p. 185).
  - **Window offset:** windows in the second frame can be shifted digitally to remove a mean convection velocity, which keeps more pairs in the window without enlarging it. Young's-fringe interrogation cannot do this (p. 185). The window aspect ratio can also be changed to suit the flow (p. 185).
- **Uncertainty** (Sect. 4, Fig. 6, p. 185–186):
  - Test: a random black-dot pattern on a translation stage, imaged, inverted and processed with 32 × 32 px windows.
  - **Zero shift (system noise only, Fig. 6a):** rms displacement noise falls from about 0.016 px (vertical) and 0.030 px (horizontal) at 6 dots per window to about 0.004–0.006 px and 0.008–0.010 px above about 36 dots (read from the figure). The paper does not comment on the horizontal noise being about twice the vertical.
  - **Nonzero shift (Fig. 6b):** the lowest uncertainty is about 0.01 px. Uncertainty grows with displacement, but less than linearly, so the relative error falls. Denser seeding lowers it, because more pairs contribute (p. 185). Read from the figure: with 74 particles per window, about 0.011 px at 0.04 px shift, 0.022 px at 0.7–1.4 px and 0.072 px at 9 px; with 6 particles, about 0.03, 0.07 and 0.15 px at the same shifts. All curves rise sharply above about 6 px (p. 186).
  - **Dynamic range** (maximum over minimum measurable displacement): about 1000:1 (p. 186).
  - **Quantisation floor:** numerical simulations of Gaussian particle images show that the 8-bit digitiser limits a 32 × 32 px window to about 0.002 px. The authors attribute the gap to the measured 0.01 px to recording noise and a nonlinear sensor intensity response, which distorts the Gaussian image profile (p. 186).
  - **16 × 16 px windows:** uncertainty roughly doubles, so the dynamic range drops fourfold while the spatial bandwidth only doubles. Causes: more particle images truncated at the window edge, and more unpaired images for the same seeding and displacement (p. 186).
  - **Error sources** (p. 185–187): particle image size, window size, velocity gradients, the number of particles, camera and digitiser performance, quantisation, rounding and truncation. The two main errors are the three-point interpolation itself, and the bias from randomly placed particles in a velocity gradient, which broadens the peak and is worse for sparse seeding. Gradients matter most for derived quantities such as vorticity. DPIV also ignores trajectory curvature between frames (p. 187).
- **Spatial resolution** (p. 186, Fig. 7):
  - The mean particle spacing sets the best possible resolution. The window gives a moving average of all particle displacements inside it, so it acts as a low-pass spatial filter: wavelengths shorter than the window are increasingly suppressed (Fig. 7).
  - The window step should be no smaller than the mean particle spacing, which sets the Nyquist cut-off at twice the step (p. 186).
  - The paper says the window size has "no direct influence" on spatial resolution, then shows that it sets the filter cut-off. In practice the window sets the filter and the step sets the sampling.
- **Vortex-ring demonstration** (Sect. 5–6, p. 187–188):
  - 32 × 32 px windows with 75% overlap give about 3,500 vectors per pair on an 8 px (N/4) grid, of which only about 240 are independent (p. 187).
  - No image pre-processing (such as thresholding) was needed (p. 188).
  - Vectors are distorted or lost near the vortex cores, where gradients and rotation broaden or destroy the correlation peak. A smaller window would help, but the seeding was too sparse (p. 188).
  - **Outliers:** vectors differing greatly in magnitude and direction from their eight neighbours were removed interactively and reinterpolated, at most 10–20 of the 3,500 per field (p. 188).
  - **Smoothing:** a 3 × 3 averaging kernel is applied. The authors argue that this loses no information because the 8 px grid oversamples the 32 px window (p. 188). See the checks below.
  - **Small displacements:** coherent far-field vectors of 1/20–1/10 px (0.2–0.5 mm s⁻¹) during roll-up (Fig. 14, p. 190), and 0.05–0.5 mm s⁻¹ in the stagnation zone, which may be genuinely three-dimensional (Fig. 15, p. 190–191).
- **Validation against manual particle tracking** (Sect. 7, p. 189–190):
  - Particle pairs matched interactively frame by frame (accuracy 1/5–1/10 px), interpolated to the grid with Gaussian weighting (Agüí & Jiménez 1987), and subtracted from the DPIV field.
  - Mean difference 0.076 px (no significant bias); standard deviation 0.263 px. The difference grows and turns random near the cores (Fig. 13).
  - The authors attribute the 0.263 px mainly to the limited accuracy of the manual reference, so this test cannot quantify the true DPIV error in the vortex-ring flow (p. 190).
- **Derived quantities** (Sect. 8, p. 191–192):
  - **Vorticity** from finite differences "of four velocity terms in each spatial direction", described as second order (p. 191). Peak core vorticity falls from about 12–14 s⁻¹ near the end of formation to about 4–6 s⁻¹ by t ≈ 6.3 s (Fig. 18, read from the figure). Because DPIV averages over the window, the true peaks are probably higher (p. 191).
  - **"Lumpiness"** in the vorticity maps comes from uneven seeding: where there are few particles, several overlapping windows return the same vector until new pairs enter. This is a bias that only denser seeding removes, and three-dimensional motion amplifies it (p. 191).
  - **Stream function:** from axisymmetric relations, averaging a radial and an axial integration of the smoothed field (Fig. 16, p. 191).
  - **Circulation** by line integrals around each half of the field: maximum 9.66 cm² s⁻¹, against 8.87 cm² s⁻¹ from the slug model (eq. 7), i.e. within 10%. The authors attribute the excess to the velocity at the tube edge being above the mean piston velocity, as Didden (1979) and Glezer (1981) found (p. 191).
  - **Γ(r) around the core** (Fig. 20, p. 192): circulation on circles about the vorticity peak at three times rises with a decreasing slope over time and saturates near the total. The curved part below r ≈ 0.2 cm is attributed to DPIV smoothing and the neglect of trajectory curvature (p. 192).
- **Conclusions** (p. 192):
  - Processing one field took 2 h 10 min on a 16 MHz SUN 3/160, expected to drop to minutes with an array processor.
  - The main advantage is that images can be viewed and processed straight away, so seeding and illumination can be adjusted during the experiment.
  - The limits are technological, not conceptual: by window size relative to image size, film PIV and LSV still resolved about four times better at the time.

## Setup / method
**Signal model** (Sect. 2, p. 182–184). A window f(m, n) of frame 1 is the input of a linear system whose output is the matching window g(m, n) of frame 2, taken Δt later (Figs. 1–2):
- The impulse response s(m, n) is a displacement delta function δ(m − i, n − j).
- The additive noise d(m, n) comes from particles leaving the window edges or the sheet (out-of-plane motion), the total number of particles, and noise in the images themselves (p. 183).
- In the cross-correlation, the random particle positions are treated as a stationary random process whose autocorrelation is a peak at the origin. Convolving it with s moves the peak to the mean displacement (eq. 5c). Noise lowers the peak relative to the background; displacement gradients broaden it (p. 183).
- **Assumptions:** uniform in-plane translation within the window, stationary random seeding, additive noise, and straight particle paths. Rotation, gradients and out-of-plane loss are discussed qualitatively but not modelled.

**Processing chain** (Fig. 5, p. 184–185):
1. Sample windows f(m, n) and g(m, n) at grid position (i, j) in frames 1 and 2 (32 × 32 px in the experiment). No mean subtraction, windowing (weighting) function or zero padding is mentioned, so the FFT correlation is circular.
2. FFT both windows; form Φ'(u, v) = F(u, v) G*(u, v), as printed in Fig. 5; inverse FFT to get φ'(m, n).
3. Find the integer location of the maximum.
4. Fit a three-point parabola or exponential through the maximum and its two neighbours, separately in x and in y. The fit formula is not printed.
5. Convert displacement to velocity: multiply by the image-to-object scale and divide by Δt = 1/30 s (p. 185).
6. Optional digital window offset for flows with a mean convection velocity (p. 185).
7. Post-processing in the experiment: interactive removal of outliers against their eight neighbours, reinterpolation, and a 3 × 3 average (p. 188).

**Test methods** (Sect. 4, p. 185–186):
- **Optical:** a random black-dot pattern on a white background, mounted on a linear translation stage and imaged through the same camera and digitiser. Images were captured at zero shift, then shifted mechanically over the whole usable range for a 32 × 32 px window, and inverted to give bright "particles" on a dark background.
- **Numerical:** random Gaussian particle images of varying radius σ (eq. 6), quantised to 8 bits and cross-correlated, which gives the 0.002 px quantisation floor.
- The comparison follows the simulated translation and rotation tests of Browand & Plocher (1985) (p. 185).

**Experiment** (Sect. 5, p. 187; Fig. 8). Values in the table are from p. 187 unless marked.

| Item | Value |
|---|---|
| Flow | Vortex ring in water, Re = U_tube D_tube/ν ≈ 1050; V_max ≈ 3.3 cm s⁻¹ at the edge |
| Generator | Tube of 3.00 cm internal diameter, coned outside to a sharp 15° edge; constant-pressure piston on a timer; formation 1.83 s with 5.7 cm piston travel |
| Seeding | Neutrally buoyant 80 µm phosphorescent polymer spheres, 10–20 per 32 × 32 px window; image radius σ ≈ 1–1.5 px (eq. 6) |
| Light | 5 W continuous argon-ion laser, cylindrical lens, 1 mm sheet; chopped at 30 Hz with 4 ms pulses to limit streaking (a pulsed laser would have been preferred) |
| Camera | Hitachi C1H CCD colour camera, green channel only, 8 bit, Vicom digitiser and processor |
| Image | 512 × 480 px active area, ≈ 8.3 × 7.8 cm field, 6.13 px mm⁻¹ |
| Recording | Real-time digital video disk at 30 Hz; 300 images kept (roll-up, separation, laminar travel to 10 cm from the nozzle); disk capacity 750 images, printed as "15 s worth" (see checks) |
| Host | SUN 3/160 (16 MHz) |
| Processing | 32 × 32 px windows, 75% overlap, 8 px grid, ≈ 3,500 vectors per field (p. 187–188) |
| Time origin | t = 0 at the end of the formation period (Fig. 10 caption, p. 188) |

**Data dependence.** DPIV needs pairs of images separated by Δt, with displacements under about N/3 px and enough particles per window (10–20 here; the uncertainty levels off above about 36 per 32² window, Fig. 6a). Here the pairs are successive frames of a 30 Hz video, so every frame pair is a field and the sequence is time-resolved for this slow flow. That is what makes the evolution plots in Figs. 17–20 possible. Every per-field quantity (vorticity, stream function, circulation) needs only one pair.

**Modelling side.** There is no simulation of the flow. The models used are:
- the linear-system / stationary-random-process model of the correlation (eqs. 1–5);
- the Gaussian particle-image model with Monte Carlo synthetic images (eq. 6, p. 186);
- the window as a moving-average filter (Fig. 7);
- the slug model for vortex-ring circulation (eq. 7).

The slug model underpredicts the measured circulation by about 8%, and the authors attribute this to the edge velocity exceeding the mean piston velocity rather than to a fault of DPIV (p. 191).

## Key equations
Rebuilt from rendered pages. Notation: m, n are pixel indices; capitals are DFTs; * is convolution.

- **System model** (eq. 1, p. 183): $g(m,n)=[f(m,n)*s(m,n)]+d(m,n)$.
- **Discrete form** (eq. 2, p. 183), as printed: $g(m,n)=\left[\sum_{k=-\infty}^{\infty}\sum_{l=-\infty}^{\infty}s(k-m,\,l-n)\,f(k,l)\right]+d(m,n)$. With $s=\delta(m-i,n-j)$ the displacement is (i, j), and the velocity is (i, j) times the scale over Δt (p. 183).
- **Deconvolution route** (eq. 3, p. 183): $g\approx f*s\;\Leftrightarrow\;G(u,v)\approx F(u,v)\,S(u,v)$, so $S\approx G/F$ when d is negligible. This is rejected as noise-sensitive (p. 183).
- **Cross-correlation** (eqs. 4a–b, p. 183), as printed:
  - $\phi_{fg}(m,n)=E[f(m,n),\,g(m,n)]$ (4a; printed with f(n, m))
  - $\phi_{fg}(m,n)=\dfrac{\sum_{k}\sum_{l} f(k,l)\,g(k+m,\,l+n)}{\sum_{k}\sum_{l} f(k,l)\;\sum_{k}\sum_{l} g(k,l)}$ (4b)
- **Noise-free form** (eqs. 5a–c, p. 183): $\phi_{fg}=E[f,\,f*s]=\phi_{ff}*s$. The autocorrelation φ_ff of the random particle field peaks only at the origin, so φ_fg peaks at the displacement.
- **Particle image** (eq. 6, p. 184): $I(x)=I_0\exp\!\left[\dfrac{-(x-x_0)^2}{2\sigma^2}\right]$. Each pixel records the integral of I over its area, which is again near-Gaussian.
- **FFT correlation** (Fig. 5, p. 185; not numbered): $\Phi'(u,v)=F(u,v)\,G^{*}(u,v)$, $\ \phi'_{fg}(m,n)=\mathrm{FFT}^{-1}[\Phi'(u,v)]$.
- **Displacement limits** (p. 184–185): $|\Delta x|\le N/2$ (Nyquist), with $|\Delta x|\lesssim N/3$ usable.
- **Slug-model circulation** (eq. 7, p. 191): $\Gamma_{est}=\dfrac{V_{Tube}^{2}\,\Delta t}{2}\approx 8.87$ cm² s⁻¹, with Δt the formation time and V_Tube the mean piston velocity.

**Three-point sub-pixel estimators.** The paper names the fits (p. 185) but does not print them. The standard forms are below, for an integer peak at i with correlation values R₋₁, R₀, R₊₁. They are not from this paper.
- Gaussian ("exponential"): $\varepsilon=\dfrac{\ln R_{-1}-\ln R_{+1}}{2\ln R_{-1}-4\ln R_{0}+2\ln R_{+1}}$. It is exact for a sampled Gaussian peak and needs positive R.
- Parabolic: the same expression with R in place of ln R.
- The fit is applied separately in x and y; the peak is at i + ε.

**Window response.** My reconstruction of Fig. 7, not printed in the paper: $H(\lambda)=\left|\dfrac{\sin(\pi N/\lambda)}{\pi N/\lambda}\right|$, the response of a top-hat moving average of width N.
- It gives zeros at λ = N, N/2, …, side lobes of 0.217 and H = 2/π ≈ 0.64 at λ = 2N, all matching the plotted 16², 32² and 64² curves.
- It also gives H ≈ 0.90 at λ = 4N and H ≈ 0.97 at λ = 8N.

> **Checks (my arithmetic and readings; verify against the PDF).**
> - **Eq. 4b normalisation.** The denominator is printed as the product of the intensity sums, Σf·Σg. With it, φ_fg is not bounded by 1, yet the text speaks of a correlation "near 1" (p. 183). The usual normalisation is $\sqrt{\sum f^2\sum g^2}$. It does not matter for the FFT version, which is not normalised.
> - **Sign convention.** With eq. 4b's definition, Σ f(k) g(k+m) has DFT F* G, whereas Fig. 5 prints F G*. F G* puts the peak at −(i, j). Only the sign convention is affected.
> - **Eq. 2** prints s(k − m, l − n); a convolution would read s(m − k, n − l). Eq. 4a prints f(n, m). The text below eq. 5c says "displacement function f(m, n)" where s(m, n) is meant (p. 183). All three look like typesetting slips.
> - **Gaussian light fraction.** "A radius σ of 1 pixel means that 68.3% of light … is imaged onto a circular area of 1 pixel radius" (p. 184). 68.3% is the one-dimensional ±σ fraction; for a circular 2D Gaussian the fraction inside r = σ is 1 − e^(−1/2) = 39.3%. In e⁻² diameter terms, σ = 1–1.5 px is a particle image about 4–6 px across.
> - **Scale:** 512/6.13 = 83.5 mm and 480/6.13 = 78.3 mm, matching the 8.3 × 7.8 cm field. ✓
> - **Vector count:** (512 − 32)/8 + 1 = 61 columns and (480 − 32)/8 + 1 = 57 rows give 3,477 ≈ 3,500. Non-overlapping windows give 16 × 15 = 240 independent vectors. ✓
> - **Velocity per pixel:** 1 px = 0.163 mm, so 1 px per frame is 4.9 mm s⁻¹. Then 1/20–1/10 px is 0.24–0.49 mm s⁻¹, matching the printed 0.2–0.5 mm s⁻¹ (p. 190). ✓ V_max ≈ 3.3 cm s⁻¹ is about 6.7 px per frame, inside the N/3 ≈ 10.7 px limit, which corresponds to about 5.2 cm s⁻¹.
> - **Slug model:** V = 5.7/1.83 = 3.11 cm s⁻¹ and V²Δt/2 = 8.88 cm² s⁻¹ (printed 8.87). 9.66/8.87 = 1.09. ✓ The stroke ratio is L/D = 5.7/3.0 = 1.9.
> - **Reynolds number:** U D/ν = 3.11 × 3.0/ν = 1050 needs ν ≈ 0.0089 cm² s⁻¹, i.e. water at about 25 °C. ✓
> - **Recording time:** 750 images at 30 Hz is 25 s, not the printed "15 s worth" (p. 187). The 300 images kept span 10 s.
> - **Step vs particle spacing:** 10–20 particles in a 32² window means a mean spacing of 32/√15 ≈ 8.3 px, matching the 8 px step that the p. 186 rule asks for. ✓
> - **Streaking:** in a 4 ms pulse at 3.3 cm s⁻¹ a particle moves 0.13 mm ≈ 0.8 px, comparable to σ.
> - **3 × 3 smoothing is not lossless.** On an 8 px grid the 3-point average has response (1 + 2 cos(2π·8/λ))/3, which is 0.80 at λ = 64 px. Combined with the window's 0.64, λ = 2N keeps only about half its amplitude. The claim of "no loss of information" (p. 188) holds only for wavelengths well above 2N.
> - **Peak-pair loss biases the fit.** The in-plane loss of pairs that the paper describes weights the circular correlation by roughly (1 − |Δx|/N) along each axis. A slope across the peak pulls a three-point fit towards zero displacement. The paper does not quantify this (my derivation).
> - **Γ(r) wording.** A straight-line Γ(r) means azimuthally averaged vorticity ∝ 1/r; a potential (irrotational) region has constant Γ. The "potential core" wording on p. 192 may be loose. Check the figure and text.
> - **Units.** Fig. 16 gives the contour step of the axisymmetric stream function as 0.25 cm² s⁻¹. A Stokes stream function has units of cm³ s⁻¹, so the units are as printed.
> - **Vorticity stencil.** "Finite differences of four velocity terms in each spatial direction which is a second order approximation" (p. 191) does not identify the stencil. Four points could be ±1 and ±2 neighbours, which would normally be fourth order.

## Data tables
**Uncertainty against seeding at zero displacement** (Fig. 6a, p. 186; 32 × 32 px windows; read from the figure, ±0.001 px).

| Dots per window | 6 | 11 | 24 | 36 | 46 | 74 |
|---|---|---|---|---|---|---|
| rms vertical (px) | 0.016 | 0.006 | 0.006 | 0.004 | 0.0065 | 0.0055 |
| rms horizontal (px) | 0.030 | 0.019 | 0.013 | 0.008 | 0.010 | 0.010 |

**Uncertainty against displacement** (Fig. 6b, p. 186; 32 × 32 px; read from the figure).

| Displacement (px) | ≈ 0.05 | ≈ 0.7 | ≈ 3 | ≈ 6 | ≈ 9 |
|---|---|---|---|---|---|
| 6 particles (px) | 0.031 | 0.070 | 0.083 | 0.098 | 0.15 |
| 11 particles (px) | 0.022 | 0.052 | 0.055 | 0.064 | 0.084 |
| 74 particles (px) | 0.011 | 0.022 | 0.027 | ≈ 0.045 | 0.072 |

The 24-, 36- and 46-particle curves lie between the 11- and 74-particle curves up to about 3 px. Above about 6 px they cross, rising to about 0.10, 0.12 and 0.06 px at 9 px.

**DPIV settings and figures of merit** (for comparison with the group's processing).

| Quantity | Value | Page |
|---|---|---|
| Window / overlap / grid | 32 × 32 px / 75% / 8 px (N/4) | p. 187 |
| Usable displacement | ≈ N/3 (Nyquist N/2) | p. 184–185 |
| Sub-pixel method | 3-point Gaussian (preferred) or parabolic, separately in x and y | p. 185 |
| Best uncertainty | ≈ 0.01 px measured; 0.002 px 8-bit floor (simulated) | p. 185–186 |
| Dynamic range | ≈ 1000:1 | p. 186 |
| 16 × 16 px window | ≈ 2 × the uncertainty; dynamic range ÷ 4 | p. 186 |
| Outliers | 10–20 of 3,500 replaced (≤ 0.6%) | p. 188 |
| DPIV − PTV difference | mean 0.076 px, s.d. 0.263 px (PTV reference ±0.1–0.2 px) | p. 190 |
| Γ_max measured / slug model | 9.66 / 8.87 cm² s⁻¹ | p. 191 |
| Processing time | 2 h 10 min per 3,500-vector field (SUN 3/160) | p. 192 |

## Figures worth remembering
- **Fig. 2 (p. 183):** the linear-system model: input window f, impulse response s (the shift), additive noise d, output window g.
- **Figs. 3–4 (p. 184):** cross-correlation of two 32 × 32 windows. With delta-function particles (shift −4 px in Y) the result is one sharp spike plus small spikes from particle–particle matches. With real recorded images (shift about 8 px) the peak is broader and the noise floor higher, but the broad peak allows sub-pixel fitting.
- **Fig. 5 (p. 185):** the processing flow chart: subsample → FFT → F G* → inverse FFT → peak detection → velocity.
- **Fig. 6 (p. 186):** rms uncertainty against seeding density at zero shift, and against displacement for 6–74 particles per window (tabulated above).
- **Fig. 7 (p. 186):** normalised response against spatial wavelength for 16², 32² and 64² windows: sinc-like, with zeros at λ = N.
- **Figs. 9–11 (p. 187–188):** raw vectors (about 3,500, 10 px reference vector) at t = +2.24 s; the smoothed field with the ring velocity subtracted; speed contours.
- **Figs. 12–13 (p. 188–189):** manual PTV vectors, and the DPIV − PTV differences, which grow and turn random near the cores.
- **Figs. 14–15 (p. 189):** sub-pixel far-field and stagnation-zone vectors (½ px and 0.1 px reference vectors), demonstrating dynamic range.
- **Fig. 16 (p. 189):** axisymmetric streamlines.
- **Fig. 17 (p. 190):** vorticity surfaces from t = −0.57 s to 5.71 s: boundary-layer vorticity rolled into the core, then the peaks shrink and spread.
- **Figs. 18–20 (p. 191–192):** peak vorticity against time; circulation of each half and of the whole field (total ≈ 0); Γ(r) about the core at t = 0.47, 2.50 and 4.54 s.

## Notation
- f(m, n), g(m, n): interrogation windows from frames 1 (t₀) and 2 (t₀ + Δt); s(m, n): displacement function (impulse response); d(m, n): additive noise; F, G, S, D: their DFTs; (u, v): spatial frequencies.
- φ_fg: cross-correlation; φ_ff: autocorrelation; Φ': cross-spectrum; E: expected value; (i, j): displacement in pixels.
- N, M: window size in pixels; σ: particle image radius (Gaussian standard deviation); I₀, x₀: peak intensity and centre.
- λ: spatial wavelength of the velocity field; H(λ): window response (my notation).
- Δt: time between frames (1/30 s), and in eq. 7 the formation time (1.83 s); V_Tube: mean piston velocity; Γ: circulation.

## Relevance to this project
This is the foundation of the PIV the group processes. The Shock Lab group's planar PIV uses Soria's (1996) multigrid cross-correlation (not in the library), for example in [Edgington-Mitchell et al. 2014, Mach disk](edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md) (p. 4–5), [Tan et al. 2017](tan-2017-broadband-velocity-fluctuations-screeching-jets.md) (p. 2324), [Weightman et al. 2017](weightman-2017-phase-lag-supersonic-jet-impingement.md) (p. 4) and [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md). Its kernel is the FFT window correlation and three-point Gaussian peak fit introduced here. Multigrid adds the iterated, locally varying form of this paper's digital window offset (p. 185) and window refinement (my reading). The note belongs on [diagnostics-and-facilities](../Topics/diagnostics-and-facilities.md), which until now had tracer response, calibration and sample size, but not the correlation algorithm itself.

**Design rules mapped onto the group's settings** (comparisons are mine):
- **N/3 displacement rule.** Weightman et al. 2017 start at 192 px windows for displacements up to 45 px (0.23N) and refine to 24 px; Tan et al. 2017 go from 64 to 16 px. Both start inside the N/3 rule, and the multigrid offset keeps the final small windows inside it.
- **Uncertainty.** The group quotes about 0.1 px as the minimum resolvable displacement (Tan et al. 2017: 0.1 ± 0.06 px at 95%; Weightman 2019), ten times this paper's ideal translation-stage value of 0.01 px. Real jet images carry gradients, out-of-plane loss and shocks that the stage test lacks. This paper also finds that 16 px windows double the uncertainty relative to 32 px (p. 186), and the group's final windows are 16–24 px.
- **Overlap.** The group uses 50% overlap on an 8 px grid (Tan et al. 2017), so about 1 in 4 vectors is independent; here 75% overlap leaves 1 in 16 (p. 187). That matters for:
  - per-vector confidence intervals;
  - the spatial degrees of freedom in POD;
  - integral length scales from two-point correlations ([Tan et al. 2019a](tan-2019-correlation-analysis-piv-screeching-jets.md)), where vector spacing below the window size does not add resolution.
- **Particle-image size and peak locking.** The paper's images are large (σ = 1–1.5 px, about 4–6 px across), and it does not discuss bias of the three-point fit towards integer displacements (peak locking). That bias is known from later PIV literature (not in the library) to grow for images under about 2 px. The group's diffraction-limited images are about 1.2 px (Tan et al. 2017, p. 2324). Checking displacement histograms for integer clustering is therefore a cheap test worth adding to step 1 (basic statistics) of the CLAUDE.md workflow. This is my recommendation, not a claim of any note.

**Window filtering, shocks and comparison with models** (my reading):
- The window response H(λ) (Fig. 7) is a transfer function that any comparison between simulation or model and PIV should apply.
  - For the PyFR staging LES, filter LES velocity with an N × N top-hat (and the 3 × 3 smoothing, if it was used) before comparing RMS, POD modes or spatial spectra with group PIV.
  - For waves of order D long seen with 0.025–0.03D windows (λ/N ≳ 30), H > 0.99, so k_x-filtered POD modes such as the upstream guided-jet wave of [Edgington-Mitchell et al. 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) are limited by noise, not by the window filter.
  - The filter matters for thin shear layers near the lip (cf. [Tan et al. 2019b](tan-2019-equivalent-bbsan-source-reconstruction-screeching-jets.md), p. 29–33, where the PIV near the exit is unreliable), for vorticity, and at shocks.
- The paper's remark that gradients broaden and split the correlation peak (p. 183, 186, 188) is the starting point of [Mitchell et al. 2011](mitchell-2011-particle-relaxation-piv-cross-correlation.md).
  - That paper formalises eq. 5c as self-correlation plus particle–particle cross terms (its eq. 3), puts a shock inside the window, and finds artificial fluctuations up to 0.32U.
  - The peak-height loss there corresponds to WG's "decrease in height of the cross-correlation peak relative to the background".
  - Tracer lag is a separate error on top ([Ragni et al. 2011](ragni-2011-particle-tracer-response-shocks-piv.md)).
- **Agreement with Tan et al. 2017.** WG's moving-average argument agrees with the Δx/L < 0.1 resolution criterion of Tan et al. 2017 (Table 4, p. 2332): both say that statistics of scales near the window size are biased low.
- **Gaussian-weighted interpolation.** The Agüí & Jiménez (1987) interpolation used here to grid the PTV data (p. 189) is the same tool Tan et al. 2017 used to blend their two camera fields.

**Calibration context.** The paper's error budget has no lens distortion, sheet alignment or perspective error; the stage test fixes the geometry. Those come later, in [Sun et al. 2021](sun-2021-distortion-correction-large-sensor-piv.md) and [Shehzad et al. 2021](shehzad-2021-laser-sheet-alignment-piv.md), and in the stereo extensions being indexed now: [Willert 1997](willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md) (stereo DPIV in wind tunnels), [Soloff et al. 1997](soloff-1997-distortion-compensation-generalized-stereoscopic-piv.md) (distortion compensation) and [Prasad 2000](prasad-2000-stereoscopic-piv-review.md) (stereo PIV review). The mesh-free processing of [Alkislar et al. 2003](alkislar-2003-screeching-rectangular-jet-stereo-piv.md) (0.03 px, p. 125–126) is an alternative to window correlation. Later algorithm benchmarks are in Stanislas et al. 2005, the second international PIV challenge (PDF held, not yet indexed), and Raffel et al. 2018, PIV: a practical guide (PDF held, not indexed).

**Methods and data for the lab workflow (CLAUDE.md)**
- **DPIV needs only image pairs.** Each field is independent, so everything per field (vorticity, stream function, circulation, vortex-core location) works on the group's non-time-resolved PIV, and feeds POD, POD pairs and phase averaging as in the workflow.
- **Time evolution needs a sequence.** The evolution plots here (Figs. 17–20) exist only because the 30 Hz frame sequence is time-resolved relative to a flow evolving over seconds. With TR-PIV the same fields could go into SPOD or the SPOD → reconstruction → HPOD pipeline. With non-TR PIV, only space-only HPOD ([Raiola & Kriegseis 2025](raiola-2025-hilbert-pod.md)) or POD-pair phase applies.
- **No intermittency or switching analysis.** The paper has none. The one non-uniformity it reports, the seeding-driven vorticity "lumps" (p. 191), is a measurement artefact. In POD of sparsely seeded regions it would appear as small-scale noise in the higher modes (my reading).
- **Pre-processing.** The paper used no image thresholding or filtering. Post-processing was outlier replacement against eight neighbours (the forerunner of median tests) and 3 × 3 smoothing, which attenuates λ = 2N by a further 20% (checks above). Smoothing before differentiating for vorticity, or before POD, changes the high-wavenumber content.
- **Vortex identification.** Core centre from peak vorticity, circulation from line integrals over half-fields and Γ(r) on circles (p. 191–192) are simple tools. The group's shock-tube starting jets, with high-speed PIV ([Thethy et al. 2022](thethy-2022-shock-diffraction-non-quiescent-medium.md)), could use them alongside the swirling-strength tracking of Weightman et al. 2017 (p. 8) (my suggestion). The slug model (eq. 7) is the first check for a starting jet's ring circulation.

**Rocket noise.** Not relevant.

**Related works cited, candidates for `/add-paper`:** Adrian 1984 (Appl. Opt. 23, speckle vs particle imaging), 1986a (Appl. Opt. 25, image shifting) and 1986b (Int. J. Heat Fluid Flow 7, review of multi-point optical methods); Landreth & Adrian 1988 (Appl. Opt. 27, electro-optical image shifting); Cho 1989 (Appl. Opt. 28, digital image velocimetry by digital Young's fringes); Kimura & Takamori 1986 (Flow Visualization IV, video correlation with 1 px resolution); Coupland & Halliwell 1988 (Appl. Opt. 27, optical correlation); Agüí & Jiménez 1987 (JFM 185, performance of particle tracking, Gaussian-weighted interpolation); Browand & Plocher 1985 (IAHR, image processing tests); Didden 1979 (ZAMP 30, vortex-ring formation and circulation); Glezer 1981 (PhD, Caltech, turbulent vortex ring); Meynart 1983 (Phys. Fluids 26, speckle velocimetry of jet vortex pairing).
