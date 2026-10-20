# Diagnostics and facilities

_Last updated: 2026-10-20 · 9 papers_

## Scope
How to measure shock-containing jets, and what the measurements can and cannot tell you. The page covers:
- schlieren and time-resolved (TR) schlieren, shadowgraph and back-lit imaging;
- quantitative density from BOS, Abel inversion, tomography, interferometry and physics-informed networks;
- PIV practice in shocked flow: tracer response, laser-sheet alignment, lens distortion, sample sizes, and density derived from PIV;
- facilities: anechoic tunnels, the group's non-anechoic jet rigs and shock-tube rigs.

Only nine notes carry the tag. The page therefore also draws on the setup sections of the group's screech, impinging-jet and twin-jet papers for working settings; those notes are marked "(not tagged)" under Papers.

Other topic pages cover the rest:
- the analysis algorithms: [modal-decomposition](modal-decomposition.md) and [time-frequency-methods](time-frequency-methods.md);
- the physics found with these tools: [screech](screech.md), [impinging-jets-and-edge-tones](impinging-jets-and-edge-tones.md) and [non-axisymmetric-and-twin-jets](non-axisymmetric-and-twin-jets.md);
- full-scale acoustic instrumentation (intensity probes, phased arrays): [rocket-noise-measurements](rocket-noise-measurements.md);
- CFD numerics: [simulation-methods](simulation-methods.md).

## Current understanding
1. **Long-record TR schlieren is now the group's main tool for dynamics.** The standard set-up is a Z-type Toepler system with mirrors of about 2 m focal length, a pulsed LED and a Photron SA-Z at 100–200 kHz, recording 10⁴–10⁵ frames per condition ([Edgington-Mitchell et al. 2022](../notes/edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 6; [Wong et al. 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 5–6; [Mazharmanesh et al. 2026](../notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), p. 4). It replaced phase-locked spark imaging and 102-frame ultra-high-speed bursts. Those could show mode shapes but could not support SPOD or BMD ([Weightman 2019](../notes/weightman-2019-sound-production-impinging-supersonic-jets.md), p. 24–26).
2. **Schlieren intensity is a path-integrated proxy for ∂ρ/∂x, and it depends on the knife edge.** SPOD eigenvalues computed from it can only be compared within one set-up ([Mazharmanesh et al. 2025](../notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md), p. 6; [Wong et al. 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 13). A single line of sight cannot see out-of-plane symmetry or helicity. Rotating the nozzle through many views is the cheap fix (Mazharmanesh et al. 2025, p. 5, 8–9).
3. **Quantitative density needs BOS or interferometry.**
   - Single-camera BOS with Abel inversion gives the *mean* density only, with errors of a few per cent: 4.3–9% in [Tan et al. 2015](../notes/tan-2015-bos-density-axisymmetric-jets.md) (p. 8), on top of 2–3% full-scale displacement error ([Raffel 2015](../notes/raffel-2015-background-oriented-schlieren-review.md), p. 5).
   - Abel-type inversions are biased at shocks: 8.34% error against 3.75% for physics-informed BOS on a Mach 2 cone ([Molnar et al. 2023](../notes/molnar-2023-physics-informed-bos-supersonic.md), p. 13).
   - Tomographic holographic interferometry resolves shocks far better than tomographic BOS or PIV, but it relies on azimuthal symmetry ([Edgington-Mitchell 2023](../notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md), p. 3, 5).
4. **Group PIV of shock-containing jets is not time-resolved.** It uses 600 nm smoke (τ_p ≈ 2 µs), Δt ≈ 1 µs, final windows of 0.02–0.03D and 8,000–10,000 snapshots ([Edgington-Mitchell et al. 2018](../notes/edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), p. 4; Weightman 2019, p. 26). These settings sit inside Ragni's no-bias criteria ([Ragni et al. 2011](../notes/ragni-2011-particle-tracer-response-shocks-piv.md), p. 56). Even so, a normal shock still adds at least 8% artificial fluctuation ([Edgington-Mitchell et al. 2014](../notes/edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md), p. 4–5).
5. **Calibration errors are larger than random PIV error if they are ignored, and both are cheap to remove.**
   - Sheet–target misalignment can bias turbulent stresses by up to 20%, and planar PIV has no after-the-fact correction for it ([Shehzad et al. 2021](../notes/shehzad-2021-laser-sheet-alignment-piv.md), p. 3–4).
   - Lens distortion at the edge of a large sensor biased the mean velocity by up to about 80% ([Sun et al. 2021](../notes/sun-2021-distortion-correction-large-sensor-piv.md), p. 11).
6. **Mean density for stability base flows usually comes from PIV via Crocco–Busemann or constant stagnation density along streamlines.** Two group datasets have been checked against BOS, to within about 5% ([Edgington-Mitchell et al. 2021](../notes/edgington-mitchell-2020-waves-in-screeching-jets.md), p. 10; [Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md), p. 11). Others are not checked ([Farghadan et al. 2026](../notes/farghadan-2026-wave-interactions-screeching-jet.md), p. 5).
7. **The group's jet rigs are not anechoic.** Tone frequency and phase are reliable but amplitudes are qualitative, and nearby reflecting plates add peaks (Edgington-Mitchell et al. 2018, p. 4; Edgington-Mitchell et al. 2022, p. 6–7). Purpose-built anechoic chambers qualify down to 150–160 Hz ([Mayer et al. 2019](../notes/mayer-2019-bristol-aeroacoustic-wind-tunnel.md), p. 4).
8. **Image–simulation comparisons are mostly qualitative.** Numerical schlieren from Euler CFD is compared by eye ([Rezay Haghdoost et al. 2020](../notes/rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet.md), p. 8–9). Quantitative comparison needs synthetic images ray-traced through a CFD phantom (Molnar et al. 2023, p. 11–12).

## Schlieren and time-resolved schlieren

### From phase-locking to long records
**Phase-locked imaging.** Before high-speed cameras, dynamics came from triggering:
- [Krothapalli et al. 1986](../notes/krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet.md) phase-locked a stroboscopic schlieren (1.5 µs flash) to a near-field microphone (p. 121–122, 138).
- [Henderson et al. 2002](../notes/henderson-2002-flow-structure-supersonic-impinging-jets.md) did the same with about 1 µs spark shadowgraph. Each image came from a different cycle, so the sequence assumes the cycle repeats exactly (p. 2–3).

**Ultra-high-speed bursts.** These cameras gave true time sequences, but short ones. The Shimadzu HPV-1 records at most 102 frames:
- Weightman 2019 ran it at 500 kfps with 0.5 µs exposure and took at least 20 sequences per condition (p. 24–26). It used them for mode type and source location. The one quantitative analysis, an (x, t) Fourier split, was limited by the 102 frames (p. 109–110).
- [Knast et al. 2018](../notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md) used the same camera to build x–t diagrams. Hough-transform slopes gave U_c/U_j ≈ 0.58 (p. 10). It took a separate 1 Hz set of at least 900 images for two-point correlations (p. 2–3, 5–6).

**Long records.** The SA-Z made SPOD, BMD and frequency–time tracking routine:

| Study | Camera, rate | Exposure / source | Frames | Use |
|---|---|---|---|---|
| [Berry et al. 2017](../notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md) (p. 4) | SA-Z, 50–100 kHz | 3.75 µs, LED, 80% cut-off | 1.2–2.6 × 10⁵ | POD |
| [Esfahani et al. 2021a](../notes/esfahani-2021-control-twin-rectangular-jet-coupling.md) (p. 6–7) | Phantom v1210, 40 kfps | 500 ns LED | 2,000 | SPOD (1,000 frames) |
| Edgington-Mitchell et al. 2022 (p. 6) | SA-Z, 150 kfps (Tsinghua: 80 kfps) | LED | 50,000 (2,000) | SPOD (DMD) |
| Wong et al. 2023 (p. 5–7) | SA-Z, 100–150 kHz | 1 µs LED | 40,000–50,000 | POD, SPOD, wavelets |
| [Edgington-Mitchell et al. 2025](../notes/edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (p. 7) | SA-Z, 50–200 kfps | 500 ns LED | – | wave tracking |
| Mazharmanesh et al. 2025 (p. 5–6) | SA-Z, 150 kHz, 512 × 200 px | 5.1 µs camera exposure, LED | 10⁵ per view × 19 views | SPOD |
| Mazharmanesh et al. 2026 (p. 4–6) | SA-Z, 150 kHz, 512 × 200 px | 0.5 µs LED | 4 × 10⁵ | SPOD, BMD, frequency–time |
| [Rezay Haghdoost et al. 2022](../notes/rezay-haghdoost-2022-shock-dividers.md) (p. 3–4) | SA-Z, up to 210 kHz | 1 µs LED | single events | front tracking |

Mirror focal lengths are 2032 mm in the Monash jet rigs (Knast et al. 2018, p. 2–3; Mazharmanesh et al. 2026, p. 4), 2.54 m at Syracuse (Berry et al. 2017, p. 4) and 1219 mm in the shock-tube rigs ([Thethy et al. 2022](../notes/thethy-2022-shock-diffraction-non-quiescent-medium.md), p. 5–6).

### Choosing frame rate, exposure and record length
**Frame rate.**
- Screech in 10 mm round twin jets sits at 8.8–12.6 kHz over NPR 3–5 (Knast et al. 2018, Table 1, p. 5). At 150 kHz that is 12–17 frames per cycle (derived).
- Aliasing is a real risk. A 34.4 kHz splitter-plate tone showed up at 15.6 kHz in 50 kHz data (Berry et al. 2017, p. 8).
- POD eigenfunctions do not need time resolution, but coefficient spectra and phase lags do (Berry et al. 2017, p. 7–8).

**Exposure.**
- A 500 ns pulse is short enough to freeze the highest screech frequency ([Esfahani et al. 2021b](../notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md), p. 6–7).
- With U_c ≈ 0.58U_j and U_j ≈ 420–530 m/s (Knast et al. 2018, p. 5, 10), a 1 µs pulse smears structures by 0.25–0.3 mm, about 0.03D for D = 10 mm (derived).
- Mazharmanesh et al. 2025 quote a 5.1 µs camera exposure but give no LED pulse length (p. 5). Treat the pulse, not the shutter, as the effective exposure.

**Record length.** The record length sets the frequency resolution Δf and the number of Welch blocks:
- n_fft = 4096 at 150 kHz gives Δf ≈ 37 Hz and 47 blocks from 10⁵ frames (Mazharmanesh et al. 2025, p. 6).
- n_fft = 1024 gives about 146 Hz and 780 blocks, which leaves St 0.269 and 0.273 about one bin apart (Mazharmanesh et al. 2026, p. 5–6; the note's arithmetic).
- Twin-jet tones 0.3–0.63% apart are below practical Welch resolution. Wong et al. 2023 therefore used 600-cycle Morlet wavelets (p. 7–8).
- Esfahani et al. 2021a's 1,000-frame SPOD had 625 Hz bins, too coarse to separate tones at 8.25 and 8.40 kHz (p. 7, flagged in the note).

To plan a run, decide the smallest tone separation you must resolve, then size the record from the block count you need (derived).

### What the image measures
**Knife edge.**
- A vertical edge (∂ρ/∂x) is the default everywhere. Rotating the edge by 180° flips the sign of intensity against gradient, which matters when data from two rigs are combined (Edgington-Mitchell et al. 2022, p. 6–7).
- One orientation misses parts of curved fronts. Edgington-Mitchell et al. 2025 combined separately recorded ∂ρ/∂x and ∂ρ/∂y images by manual phase matching (p. 9). They got shadowgraph by removing the knife edge and defocusing slightly (p. 7).
- Krothapalli et al. 1986 tuned the edge to show the outer acoustic field rather than the shock cells (p. 121–122).

**Path integration.** For impinging jets, a hemisphere minimises the line-of-sight integration through the wall jet that hides shocklets on a flat plate (Edgington-Mitchell et al. 2025, p. 6–7). The broadband floor also changes between views, so Mazharmanesh et al. 2025 subtracted a local broadband level from each peak (p. 9).

**Pre-processing.**
- POD can remove spatially uniform intensity drift from window refraction and reflections (Berry et al. 2017, p. 4–5).
- POD also works as a spatial noise filter before a wavelet transform, because scalograms of raw pixels are noisy (Wong et al. 2023, p. 9).
- POD of schlieren converges slowly: 200–300 modes for half the content (Berry et al. 2017, p. 5).
- Mean shock wavenumbers come from an axial FFT of the time-averaged image (Edgington-Mitchell et al. 2022, p. 7). Standing waves show up in log₁₀ of the standard-deviation image (Esfahani et al. 2021b, p. 6–7).

**Views.**
- Wong et al. 2023 imaged only the plane holding both jets, so only SS against SA coupling is visible (p. 5–6). Knast et al. 2018 used front and side views (p. 5).
- Mazharmanesh et al. 2025 rotated the nozzle in 10° steps to get 19 views. The view-dependence of the SPOD eigenvalue and a symmetric-plane inner product exposed bi-axial flapping and quasi-helical modes (p. 5, 8–9).
- The helicity reversals that interferometry found (Edgington-Mitchell 2023, p. 4) look the same in one plane (inference in that note).

**Other line-of-sight imaging.** [Duke et al. 2021](../notes/duke-2021-twin-orifice-pmdi-actuators-fine-particle-fraction.md) used 5 kHz back-lit extinction imaging with a 2.1 µs LED. Three of its practices transfer to wandering or transient jets (p. 9–11, 14):
- pick a "steady window" from a spatially integrated signal;
- fit the centreline to remove plume steering;
- report temporal and shot-to-shot variance separately.

## Quantitative density: BOS, Abel, tomography, interferometry, PINNs

### BOS practice
Raffel 2015 is the map of the field. BOS cross-correlates a random-dot background, so it has the same first-derivative sensitivity as schlieren but is quantitative (p. 2–3). Its recipe and limits:
- Recipe: f/11, dot images of 3–5 px, uncompressed images, PIV software (p. 5).
- Error: 2–3% of full scale against about 1% for PIV, because displacements are often below 0.5 px. Dynamic range is about 50:1 (p. 5).
- Blur: there is a trade-off between blur of the out-of-focus flow and the aperture (p. 4).
- Reconstruction routes: Poisson integration (2D flows), Abel inversion (axisymmetric flows), and filtered back-projection or ART (tomography) (p. 7–9). Raffel says the ideal recording and evaluation methods "have not yet been found" (p. 6).
- Time resolution: TR BOS up to 100 kHz has been shown (p. 9). Correlating successive BOS fields gives the convection speed of density structures, not the fluid velocity (p. 10).

### The group's Abel recipe
Tan et al. 2015 is the group's single-camera recipe:
- Set-up: wavelet-noise background back-lit by a 532 nm LED array, f/22, 24 × 24 px windows at 75% overlap to oversample for the inversion (p. 6–7).
- Processing: adaptive Fourier–Hankel Abel inversion with α = 0.1, then Gladstone–Dale (p. 4), on 1,000 independent images.
- Average the displacements *before* inverting, because instantaneous fields have no symmetry axis (p. 6).
- A synthetic error map against SNR and shot-to-shot variation predicted 5.2% for the low-Re jet. The measured error was 4.3%. It was 6.0–9.0% for the injector at NPR 2–4, where only about 11 vectors spanned the exit against about 120 (p. 8).
- Validation is in helium jets only. Shocks are not tested.

### Physics-informed BOS
Molnar et al. 2023 explain why shocks are hard. The deflection, tomography and integration steps are each ill-posed, and each is regularised by a smoothness prior. Their results on one image pair of a steady Mach 2 cone (p. 13–14):
- Abel inversion: 8.34% density error. Unified BOS with Tikhonov regularisation: 6.12%.
- A PINN with an Euler physics loss: 3.75%, and it also returns u, v and p within 3.1%.

The costs:
- 2–3 h of GPU training, against 10 min for the CFD (p. 10, 14).
- The corner singularity has to be excluded (p. 15).
- The physics loss is steady and inviscid, so a turbulent jet shear layer is untested.

### Interferometry and tomography
Edgington-Mitchell 2023 reviews Léon et al.'s tomographic holographic interferometry (TDHI), which uses six Mach–Zehnder views:
- The mean density is as good as Rayleigh scattering, and the shock gradients are an order of magnitude sharper than with tomographic BOS or PIV (p. 3).
- Doing the azimuthal Fourier decomposition before the tomography gave the first rigorous proof that C-mode screech is m = ±1, and showed frequent helicity reversals (p. 3–4).
- The drawbacks: it needs both skilled optics and heavy processing, and it depends on azimuthal symmetry, so it does not carry over easily to rectangular or elliptical nozzles (p. 5).

### Density for base flows
- Edgington-Mitchell et al. 2021 assumed constant stagnation density along streamlines and checked it with tomographic BOS (errors below 5%, p. 10).
- Wong et al. 2021 used the Tan et al. (2018) method, which agrees with mean BOS (p. 11).
- [Nogueira et al. 2022](../notes/nogueira-2021-closure-mechanism-a1-a2-screech.md) (p. 6) and Farghadan et al. 2026 (p. 5) use Crocco–Busemann plus momentum integration, without a check.

## PIV in shock-containing jets

### Tracer response
Ragni et al. 2011 fitted the exponential slip of particles across an oblique shock. The results:
- **No-bias criteria:** the response time is measured without bias if the window is no larger than the relaxation length ξ_p and Δt no larger than τ_p (p. 56).
- **Measured τ_p:** DEHS 1.9–2.0 µs, stored powders 2.4–3.3 µs, and dried powders through a 1 µm filter 0.56 µs (TiO₂) and 0.37 µs (SiO₂). The filter cuts seeding density (p. 61–62).
- **Spread:** PTV shows τ_p varies by a factor of four within one sample (p. 63).
- **Aero-optics:** tilt the line of sight 2–5° upstream and raise the f-number (p. 57–58).
- **Guideline:** Samimy & Lele's Stokes number ≤ 0.1 (p. 53).

**The group's smoke matches Ragni's DEHS.** ViCount 600 nm smoke has τ_p ≈ 2 µs (Edgington-Mitchell et al. 2014, p. 4–5; Weightman 2019, p. 26). Its consequences:
- Across the Mach disk there is at least 8% artificial fluctuation, and the anisotropy is inflated. Yet the velocity PDF broadens over only Δx/D ≈ 0.2, so lag cannot hide a recirculation bubble (Edgington-Mitchell et al. 2014, p. 4–5, 16–17).
- The Ragni note estimates SR ≈ 0.75 for the 0.03D window of Edgington-Mitchell et al. 2018, which is inside the criterion. It also estimates 2πfτ_p ≈ 0.2 at screech frequency, which is above the 0.1 guideline. Dried, filtered powders would bring it below.

**Other labs' seeding:**
- Thethy et al. 2022 used TiO₂ with τ_p = 0.84 µs in 10 kHz PIV (p. 6).
- Paraffin of 0.6–0.8 µm (Farghadan et al. 2026, p. 4) and Ondina oil (Nogueira et al. 2022, p. 6).
- 0.6 µm olive oil in the jet with 0.2–0.3 µm smoke in the ambient (Henderson et al. 2002, p. 2). Ragni cites about 7 µs for olive oil (p. 54), probably for larger droplets.
- Seed both the jet and the ambient air (Edgington-Mitchell et al. 2014, p. 4–5).

### Group settings
- Δt: 0.88–1 µs (Weightman 2019, p. 26; Edgington-Mitchell et al. 2018, p. 4).
- Final windows: 0.019–0.034D (Weightman 2019, p. 26) and 0.026D ([Ivelja et al. 2024](../notes/ivelja-2024-modal-analysis-screeching-elliptical-jets.md), p. 4).
- Processing: Soria multigrid cross-correlation.
- Cameras: increasingly large sensors, such as the Imperx B6640 at 6600 × 4400 px (Weightman 2019, p. 26; Farghadan et al. 2026, p. 4).

### Calibration
**Laser-sheet alignment.** Shehzad et al. 2021 align the sheet to the target *before* calibrating:
- The rig is a slit plus three photodiodes, with the outer readings brought within 2% of the centre (p. 6).
- Stereo uncertainty is below 5.9 µm (0.09 px), comparable with self-calibration at 4.0 µm, without any post-correction (p. 12–13).
- Planar PIV has no disparity-based fix (p. 4).

The problem is real in the group's data. Ivelja et al. 2024 found their major-axis plane biased by slight sheet misalignment and enforced symmetry to remove it (p. 4).

**Lens distortion.** Sun et al. 2021 studied a 47 MPx sensor with pincushion distortion:
- Without correction, the near-wall mean velocity at the image edge was off by up to about 80%, and ⟨u′u′⟩ was 12% low (p. 11–12).
- A bicubic map plus a rotation taken from a reference geometry made the wall straight to 0.62 px (p. 8).
- Running PIV on raw images and then remapping only the vector positions matched full dewarping, because a window deforms by only about 0.08 px (p. 8–9, 12–13).
- Perspective error remains (p. 4).

The notes do not record a distortion correction for the group's large-sensor jet PIV.

### Sample size and phase
**POD convergence.** Weightman 2019's jackknife tests (p. 56–57):
- The leading POD pair converges by N ≈ 500 snapshots in resonant flows, and modes 3–4 by about 1,000.
- Without a dominant mode it takes about 2,500.

Bootstrap 95% confidence intervals on the mean are at most 0.1 px (p. 159–160).

**Phase recovery.**
- Phase binning from the POD pair used 5° bins of about 130 fields each (Weightman 2019, p. 102).
- The older alternative tags each PIV pair with the microphone phase. Henderson et al. 2002 got 20–60 fields per bin from 800 pairs (p. 2, 5).
- 800 snapshots at 3 Hz were enough to build a 3D helix from 2D planes ([Oberleithner et al. 2011](../notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md), p. 7, 21–22).
- Space-only Hilbert POD works on shuffled snapshots ([Raiola & Kriegseis 2025](../notes/raiola-2025-hilbert-pod.md), p. 13, 15).

## Facilities and acoustic environment

### A purpose-built anechoic facility
Mayer et al. 2019 is the library's design reference:
- **Chamber:** anechoic to 160 Hz under ISO 3745 for sources up to 0.65 m (p. 4).
- **Fan noise:** the fan sits about 6 m away in an isolated room, and the silencers are sized on dynamic insertion loss (p. 2–4).
- **Contraction:** Su contractions with powers 3 and 5 joined by a cubic spline (p. 6–7). Steady RANS was used only as a design screen; there is no comparison between the CFD and the hot wire (p. 8–10).
- **Free-stream turbulence:** 0.09% and 0.12%, after high-pass filtering at U/(2L_TS) (p. 1, 8).

Its data-quality checks transfer directly to jet rigs:
- coherence below 0.05 between a microphone at the fan and one in the chamber (p. 10);
- a velocity exponent N(f) > 7, which flags jet mixing noise (p. 10).

The supersonic-jet chambers in the library are similar: Syracuse Skytop at 150 Hz (Berry et al. 2017, p. 2–3), OSU GDTL at 160 Hz (Esfahani et al. 2021b, p. 5) and the NASA Glenn 20 m dome (Henderson et al. 2002, p. 2).

### The group's jet rigs
**Not anechoic.** The Shock Lab group rigs are not anechoic (Edgington-Mitchell et al. 2018, p. 4; Weightman 2019, p. 24; Wong et al. 2021, p. 8). Studies therefore use tone frequency and phase, not amplitude (Knast et al. 2018, p. 3).

**Installation matters.**
- A plate about 2D upstream of the exit reflects upstream waves and is blamed for extra peaks at NPR ≥ 2.9 (Edgington-Mitchell et al. 2022, p. 6–7).
- Weightman 2019 ran PIV and schlieren in two facilities with the same nozzle, because the PIV cage's stresses spoil schlieren (p. 23). The acoustics of the two disagreed for two foam cases, and that schlieren was discarded (p. 66). This is a useful cross-facility check.

**Flow and supply.**
- Contraction ratios are 81 (Weightman 2019, p. 29) and above 100:1 (Mazharmanesh et al. 2025, p. 4).
- The regulator drifts by up to 1% (Weightman 2019, p. 23).
- The room temperature is held to about 0.1 K (Wong et al. 2023, p. 5).

### Shock-tube and PDC rigs
These record single events:
- TR schlieren is triggered by a PCB transducer (Rezay Haghdoost et al. 2022, p. 3–4).
- Shock speed comes from correlating frames at 80 kfps (Thethy et al. 2022, p. 13).
- The background jet is measured from 53–55 PIV pairs taken before the shock arrives (Thethy et al. 2022, p. 13).

## Matching images to simulations
**Numerical schlieren.** Schlieren computed as ∫∂ρ/∂x dz from inviscid Euler CFD matches experiment "excellently", but only by eye (Rezay Haghdoost et al. 2020, p. 8–9; Rezay Haghdoost et al. 2022, p. 7). The quantitative checks come from probes: the plateau after the first shock is 8% below CFD (Rezay Haghdoost et al. 2022, p. 13–14). GSD shock fronts agree only near the nozzle (Thethy et al. 2022, p. 38).

**Synthetic BOS.** Molnar et al. 2023 forward-model BOS images from an SU2 phantom, with nonlinear ray tracing, window refraction and aperture blur, to tune and bound reconstruction errors (p. 11–12). Tan et al. 2015's synthetic Abel error map plays the same role (p. 4–6), and Raffel names ray tracing as the forward-model route (p. 3, 8).

**Ray tracing on PIV.** Weightman 2019 ray-traced acoustics through PIV fields. It preferred POD phase reconstructions, because the real shocks in raw PIV cause spurious reflections (p. 116–117). The results are qualitative only (p. 112–115).

## Disagreements and open questions
- **Does particle lag distort the modes used to find upstream waves?**
  - Evidence so far: Ragni's τ_p values come from steady shocks only. Edgington-Mitchell et al. 2014 argue lag is small for the mean field. The estimated Stokes number at screech frequency (about 0.2) exceeds the guideline.
  - Why it matters: the k_x-filtered guided-jet mode is a weak signal next to shocks (Edgington-Mitchell et al. 2018).
  - What would settle it: an in-house oblique-shock test of the group's smoke, then a repeat of the POD-pair and k_x analysis with dried, filtered TiO₂ (τ_p < 0.6 µs), compared with TR-schlieren SPOD wavenumbers at the same NPR.
- **Which mean density should base flows use?**
  - The candidates: Crocco–Busemann (Farghadan et al. 2026; Nogueira et al. 2022), streamline stagnation density (Edgington-Mitchell et al. 2021), the Tan et al. 2018 method (Wong et al. 2021), BOS with Abel inversion (validated only subsonically, Tan et al. 2015) and PI-BOS (inviscid, Molnar et al. 2023).
  - The gap: none has been tested in the shear layer of a screeching jet, which is where stability results are most sensitive.
  - What would settle it: BOS with Abel inversion and PIV on the same jet, with an LES phantom used to forward-model both.
- **Can schlieren amplitudes be compared across cases?**
  - The problem: intensity is a proxy, the broadband level depends on the view, and the knife-edge sign can flip (Mazharmanesh et al. 2025, p. 6, 9; Edgington-Mitchell et al. 2022, p. 6–7).
  - The candidate fix: TR BOS, which is demonstrated to 100 kHz (Raffel 2015, p. 9). The unknown is whether its 2–3% full-scale error leaves enough SNR at screech amplitudes.
  - What would settle it: TR BOS and schlieren SPOD of the same screeching jet.
- **How do we get 3D structure in non-axisymmetric jets?**
  - TDHI needs azimuthal symmetry (Edgington-Mitchell 2023, p. 5).
  - Rotated-nozzle multi-view schlieren (Mazharmanesh et al. 2025) assumes statistically identical runs, so it cannot see instantaneous 3D structure or switches in helicity or flapping axis.
  - What would settle it: simultaneous orthogonal two-view TR schlieren, synchronised with an azimuthal microphone array.
- **How much does the rig shape the resonance?**
  - Edgington-Mitchell et al. 2022 attribute extra peaks to the upstream plate but did not remove it.
  - What would settle it: repeat the NPR sweep with the plate foam-covered or removed, and add a Mayer-style coherence check against compressor and valve noise.

## Methods and data
Which diagnostic suits which analysis, following the CLAUDE.md workflow:
- **TR schlieren or shadowgraph** (at least 10 frames per cycle, 10⁴–10⁵ frames) supports:
  - spectra, SPOD, BMD and SPOD frequency–time maps (Mazharmanesh et al. 2026);
  - wavelets (Wong et al. 2023);
  - (x, t) FFTs (Weightman 2019);
  - DMD (Edgington-Mitchell et al. 2022);
  - the SPOD → reconstruction → HPOD pipeline.
- **Non-TR schlieren** (1–50 Hz) gives means, standard deviations, two-point correlations and shock wavenumbers from the mean image (Knast et al. 2018; Esfahani et al. 2021b; Edgington-Mitchell et al. 2022).
- **Non-TR PIV** gives:
  - mean and RMS fields;
  - POD pairs, phase averages and k_x filtering (Edgington-Mitchell et al. 2018);
  - base flows for stability analysis;
  - space-only HPOD (Raiola & Kriegseis 2025).
- **BOS** gives mean density from at least 1,000 images with Abel inversion (Tan et al. 2015), or from one pair with PI-BOS for steady inviscid flow (Molnar et al. 2023).
- **Single events** need triggered TR schlieren plus pressure probes (Rezay Haghdoost et al. 2022).
- **Microphones** are the frequency reference throughout. Condensation (Mie) imaging needs per-case normalisation because ambient humidity varies ([Samimy et al. 1998](../notes/samimy-1998-rectangular-jet-trailing-edge-control.md), p. 7).

## Relevance to our work
- **Schlieren campaigns.** Copy the Mazharmanesh et al. 2026 settings for BMD-quality data: 150 kHz, 0.5 µs LED, 512 × 200 px, 4 × 10⁵ frames. Then:
  - check that every tone and harmonic of interest sits below the 75 kHz Nyquist frequency (derived);
  - record the knife-edge orientation and the view angle;
  - remove intensity drift with POD before SPOD.
  - The amplitudes that HPOD returns from rebuilt schlieren are relative intensity, not density.
- **PIV.**
  - Align the sheet before calibrating.
  - Check edge distortion on the large sensors and remap vector positions if needed.
  - Quote τ_p together with SR and TR.
  - Use at least 1,000 snapshots for the leading pairs and about 10⁴ for means.
  - Consider dried, filtered powders where shock-adjacent modes matter.
- **PyFR staging LES.** Write numerical schlieren (∫∂ρ/∂x dz) and synthetic BOS from the LES, so that comparisons are like for like. The direct experimental set is the axisymmetric A1/A2 schlieren at NPR 2.19–2.25 (Mazharmanesh et al. 2026). The LES mean density can also test Crocco–Busemann.
- **Rocket noise.** Natural-background and retroreflective BOS suit static firings (Raffel 2015, p. 9, 11–12). Mayer-style coherence and N(f) checks suit model-scale tests.

## Papers
- [Krothapalli et al. 1986](../notes/krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet.md): microphone-triggered phase-locked schlieren of a rectangular jet (not tagged).
- [Samimy et al. 1998](../notes/samimy-1998-rectangular-jet-trailing-edge-control.md): condensation imaging with per-nozzle normalisation (not tagged).
- [Henderson et al. 2002](../notes/henderson-2002-flow-structure-supersonic-impinging-jets.md): phase-locked shadowgraph; PIV binned by microphone phase (not tagged).
- [Oberleithner et al. 2011](../notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md): 3D helix from 800 non-TR stereo-PIV snapshots via a POD pair (not tagged).
- [Ragni et al. 2011](../notes/ragni-2011-particle-tracer-response-shocks-piv.md): oblique-shock tracer-response test; τ_p of common seeders; SR, TR ≤ 1 criteria.
- [Edgington-Mitchell et al. 2014](../notes/edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md): smoke τ_p ≈ 2 µs and at least 8% artificial fluctuation across a Mach disk (not tagged).
- [Raffel 2015](../notes/raffel-2015-background-oriented-schlieren-review.md): BOS review; set-up recipe, accuracy, reconstruction routes, TR BOS.
- [Tan et al. 2015](../notes/tan-2015-bos-density-axisymmetric-jets.md): group single-camera BOS → Abel → mean density recipe with synthetic error map.
- [Berry et al. 2017](../notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md): 50–100 kHz schlieren POD; aliasing; POD removes intensity drift (not tagged).
- [Edgington-Mitchell et al. 2018](../notes/edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md): standard group PIV settings for screech (not tagged).
- [Knast et al. 2018](../notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md): HPV-1 bursts, x–t convection speeds, two-view correlations (not tagged).
- [Mayer et al. 2019](../notes/mayer-2019-bristol-aeroacoustic-wind-tunnel.md): anechoic open-jet facility design and acoustic data-quality checks.
- [Weightman 2019](../notes/weightman-2019-sound-production-impinging-supersonic-jets.md): 500 kfps schlieren, PIV settings, POD convergence, two-facility practice (not tagged).
- [Rezay Haghdoost et al. 2020](../notes/rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet.md): single-event TR schlieren against numerical schlieren (not tagged).
- [Duke et al. 2021](../notes/duke-2021-twin-orifice-pmdi-actuators-fine-particle-fraction.md): 5 kHz back-lit extinction imaging; steady-window and steering corrections.
- [Edgington-Mitchell et al. 2021](../notes/edgington-mitchell-2020-waves-in-screeching-jets.md): PIV mean flow with tomographic-BOS-checked density for global stability (not tagged).
- [Esfahani et al. 2021a](../notes/esfahani-2021-control-twin-rectangular-jet-coupling.md): short-record SPOD whose bins are too coarse to separate tones (not tagged).
- [Esfahani et al. 2021b](../notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md): 500 ns LED schlieren; log-std standing-wave maps (not tagged).
- [Shehzad et al. 2021](../notes/shehzad-2021-laser-sheet-alignment-piv.md): laser sheet aligned to the target before calibration; applies to planar PIV.
- [Sun et al. 2021](../notes/sun-2021-distortion-correction-large-sensor-piv.md): lens-distortion correction for large sensors; remap vectors after PIV.
- [Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md): PIV-derived mean density agrees with BOS (not tagged).
- [Edgington-Mitchell et al. 2022](../notes/edgington-mitchell-2022-unifying-theory-jet-screech.md): 150 kfps SPOD schlieren; knife-edge sign; reflecting plate (not tagged).
- [Nogueira et al. 2022](../notes/nogueira-2021-closure-mechanism-a1-a2-screech.md): Pprime PIV with Crocco–Busemann density (not tagged).
- [Rezay Haghdoost et al. 2022](../notes/rezay-haghdoost-2022-shock-dividers.md): 210 kHz triggered schlieren; probe against CFD (not tagged).
- [Thethy et al. 2022](../notes/thethy-2022-shock-diffraction-non-quiescent-medium.md): TiO₂ high-speed PIV; GSD against schlieren (not tagged).
- [Edgington-Mitchell 2023](../notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md): TDHI commentary; limits of tomographic BOS and PIV; role of experiments.
- [Molnar et al. 2023](../notes/molnar-2023-physics-informed-bos-supersonic.md): physics-informed BOS; Abel bias at shocks; synthetic ray-traced images.
- [Wong et al. 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md): 150 kHz schlieren, POD-filtered wavelets, single-plane limits (not tagged).
- [Ivelja et al. 2024](../notes/ivelja-2024-modal-analysis-screeching-elliptical-jets.md): sheet-misalignment bias fixed by symmetry (not tagged).
- [Edgington-Mitchell et al. 2025](../notes/edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md): combined knife-edge orientations, shadowgraph, hemisphere to cut path integration (not tagged).
- [Mazharmanesh et al. 2025](../notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md): 19-view rotated-nozzle schlieren SPOD (not tagged).
- [Raiola & Kriegseis 2025](../notes/raiola-2025-hilbert-pod.md): space-only HPOD for non-TR PIV (not tagged).
- [Farghadan et al. 2026](../notes/farghadan-2026-wave-interactions-screeching-jet.md): large-sensor PIV mean flow with unchecked Crocco–Busemann density (not tagged).
- [Mazharmanesh et al. 2026](../notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md): 4 × 10⁵-frame schlieren for SPOD and BMD; reference settings (not tagged).
