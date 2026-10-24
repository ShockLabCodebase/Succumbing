# Schlieren and density imaging

_Last updated: 2026-10-21 · 9 papers_

## Scope
Line-of-sight optical measurement of shock-containing jets: how to record the images, what they show, and how to turn them into density. The page covers:
- schlieren and time-resolved (TR) schlieren, shadowgraph and back-lit imaging: set-up, camera rate, exposure, record length, knife edge, what the intensity means, views and pre-processing;
- quantitative density from BOS, Abel inversion, tomography, interferometry and physics-informed networks, including the mean density fed to stability base flows;
- matching images to simulations: numerical schlieren and synthetic, ray-traced BOS images.

Few notes are about the optics themselves, so the page draws on the setup sections of the group's screech, impinging-jet and twin-jet papers for working settings; those notes are marked "(not tagged)" under Papers.

Other topic pages cover the rest:
- PIV practice, facilities and their acoustic environment, and the shock-tube rigs: [diagnostics-and-facilities](diagnostics-and-facilities.md);
- the algorithms applied to the images: [modal-decomposition](modal-decomposition.md) and [time-frequency-methods](time-frequency-methods.md);
- the physics found with them: [screech](screech.md), [screech-staging-and-mode-switching](screech-staging-and-mode-switching.md), [impinging-jets-and-edge-tones](impinging-jets-and-edge-tones.md), [non-axisymmetric-jets](non-axisymmetric-jets.md) and [twin-jet-coupling](twin-jet-coupling.md);
- the CFD behind numerical schlieren: [simulation-methods](simulation-methods.md).

## Current understanding
1. **Long-record TR schlieren is now the group's main tool for dynamics.** A Z-type system with mirrors of about 2 m focal length, a pulsed LED and a Photron SA-Z at 100–200 kHz records 10⁴–10⁵ frames per condition ([Edgington-Mitchell et al. 2022](../Notes/edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 6; [Wong et al. 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 5–6; [Mazharmanesh et al. 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), p. 4). The phase-locked imaging and 102-frame bursts before it showed mode shapes but could not support SPOD or BMD ([Weightman 2019](../Notes/weightman-2019-sound-production-impinging-supersonic-jets.md), p. 24–26).
2. **Record length, not frame rate, usually limits what can be resolved.** 150 kHz gives 12–17 frames per screech cycle ([Knast et al. 2018](../Notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md), Table 1, p. 5, derived), but tones a fraction of a per cent apart need 10⁵-frame records or wavelets (Wong et al. 2023, p. 7–8; [Esfahani et al. 2021a](../Notes/esfahani-2021-control-twin-rectangular-jet-coupling.md), p. 7).
3. **Schlieren intensity is a path-integrated, knife-edge-dependent proxy for ∂ρ/∂x.** SPOD eigenvalues therefore compare only within one set-up ([Mazharmanesh et al. 2025](../Notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md), p. 6; Wong et al. 2023, p. 13), and one view misses out-of-plane symmetry and helicity unless the nozzle is rotated through many views (Mazharmanesh et al. 2025, p. 5, 8–9).
4. **Quantitative density needs BOS or interferometry, and each route has a known weakness.** BOS with Abel inversion gives only the *mean* density, to a few per cent ([Tan et al. 2015](../Notes/tan-2015-bos-density-axisymmetric-jets.md), p. 8; [Raffel 2015](../Notes/raffel-2015-background-oriented-schlieren-review.md), p. 5), and is biased at shocks, which physics-informed BOS more than halves ([Molnar et al. 2023](../Notes/molnar-2023-physics-informed-bos-supersonic.md), p. 13). Tomographic holographic interferometry resolves shocks far better than tomographic BOS or PIV but relies on azimuthal symmetry ([Edgington-Mitchell 2023](../Notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md), p. 3, 5).
5. **Base-flow density usually comes from PIV**, via Crocco–Busemann or constant stagnation density along streamlines. Only two group datasets have been checked against BOS, to about 5% ([Edgington-Mitchell et al. 2021](../Notes/edgington-mitchell-2020-waves-in-screeching-jets.md), p. 10; [Wong et al. 2021](../Notes/wong-2021-wavepacket-modelling-bbsan.md), p. 11; unchecked in [Farghadan et al. 2026](../Notes/farghadan-2026-wave-interactions-screeching-jet.md), p. 5).
6. **Image–simulation comparisons are mostly qualitative.** Numerical schlieren is matched by eye ([Rezay Haghdoost et al. 2020](../Notes/rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet.md), p. 8–9); only synthetic images ray-traced through a CFD phantom allow a quantitative check (Molnar et al. 2023, p. 11–12).

## Schlieren and time-resolved schlieren

### From phase-locking to long records
**Phase-locked imaging.** Before high-speed cameras, dynamics came from triggering:
- [Krothapalli et al. 1986](../Notes/krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet.md) phase-locked a stroboscopic schlieren (1.5 µs flash) to a near-field microphone (p. 121–122, 138).
- [Henderson et al. 2002](../Notes/henderson-2002-flow-structure-supersonic-impinging-jets.md) did the same with about 1 µs spark shadowgraph. Each image came from a different cycle, so the sequence assumes the cycle repeats exactly (p. 2–3).

**Ultra-high-speed bursts.** These gave true time sequences, but short ones: the Shimadzu HPV-1 records at most 102 frames.
- Weightman 2019 ran it at 500 kfps with 0.5 µs exposure and took at least 20 sequences per condition (p. 24–26), for mode type and source location. The one quantitative analysis, an (x, t) Fourier split, was limited by the 102 frames (p. 109–110).
- Knast et al. 2018 built x–t diagrams with it; Hough-transform slopes gave U_c/U_j ≈ 0.58 (p. 10). Two-point correlations needed a separate 1 Hz set of at least 900 images (p. 2–3, 5–6).

**Long records.** The SA-Z made SPOD, BMD and frequency–time tracking routine:

| Study | Camera, rate | Exposure / source | Frames | Use |
|---|---|---|---|---|
| [Berry et al. 2017](../Notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md) (p. 4) | SA-Z, 50–100 kHz | 3.75 µs, LED, 80% cut-off | 1.2–2.6 × 10⁵ | POD |
| Esfahani et al. 2021a (p. 6–7) | Phantom v1210, 40 kfps | 500 ns LED | 2,000 | SPOD (1,000 frames) |
| Edgington-Mitchell et al. 2022 (p. 6) | SA-Z, 150 kfps (Tsinghua: 80 kfps) | LED | 50,000 (2,000) | SPOD (DMD) |
| Wong et al. 2023 (p. 5–7) | SA-Z, 100–150 kHz | 1 µs LED | 40,000–50,000 | POD, SPOD, wavelets |
| [Edgington-Mitchell et al. 2025](../Notes/edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (p. 7) | SA-Z, 50–200 kfps | 500 ns LED | – | wave tracking |
| Mazharmanesh et al. 2025 (p. 5–6) | SA-Z, 150 kHz, 512 × 200 px | 5.1 µs camera exposure, LED | 10⁵ per view × 19 views | SPOD |
| Mazharmanesh et al. 2026 (p. 4–6) | SA-Z, 150 kHz, 512 × 200 px | 0.5 µs LED | 4 × 10⁵ | SPOD, BMD, frequency–time |
| [Rezay Haghdoost et al. 2022](../Notes/rezay-haghdoost-2022-shock-dividers.md) (p. 3–4) | SA-Z, up to 210 kHz | 1 µs LED | single events | front tracking |

Mirror focal lengths are 2032 mm in the Monash jet rigs (Knast et al. 2018, p. 2–3; Mazharmanesh et al. 2026, p. 4), 2.54 m at Syracuse (Berry et al. 2017, p. 4) and 1219 mm in the shock-tube rigs ([Thethy et al. 2022](../Notes/thethy-2022-shock-diffraction-non-quiescent-medium.md), p. 5–6).

### Choosing frame rate, exposure and record length
**Frame rate.**
- Screech in 10 mm round twin jets sits at 8.8–12.6 kHz over NPR 3–5 (Knast et al. 2018, Table 1, p. 5). At 150 kHz that is 12–17 frames per cycle (derived).
- Aliasing is a real risk. A 34.4 kHz splitter-plate tone showed up at 15.6 kHz in 50 kHz data (Berry et al. 2017, p. 8).
- POD eigenfunctions do not need time resolution, but coefficient spectra and phase lags do (Berry et al. 2017, p. 7–8).

**Exposure.**
- A 500 ns pulse freezes the highest screech frequency ([Esfahani et al. 2021b](../Notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md), p. 6–7).
- With U_c ≈ 0.58U_j and U_j ≈ 420–530 m/s (Knast et al. 2018, p. 5, 10), a 1 µs pulse smears structures by 0.25–0.3 mm, about 0.03D for D = 10 mm (derived).
- Mazharmanesh et al. 2025 quote a 5.1 µs camera exposure but no LED pulse length (p. 5). Treat the pulse, not the shutter, as the effective exposure.

**Record length** sets the frequency resolution Δf and the number of Welch blocks:
- n_fft = 4096 at 150 kHz gives Δf ≈ 37 Hz and 47 blocks from 10⁵ frames (Mazharmanesh et al. 2025, p. 6).
- n_fft = 1024 gives about 146 Hz and 780 blocks, which leaves St 0.269 and 0.273 about one bin apart (Mazharmanesh et al. 2026, p. 5–6; the note's arithmetic).
- Twin-jet tones 0.3–0.63% apart are below practical Welch resolution, so Wong et al. 2023 used 600-cycle Morlet wavelets (p. 7–8).
- Esfahani et al. 2021a's 1,000-frame SPOD had 625 Hz bins, too coarse to separate tones at 8.25 and 8.40 kHz (p. 7, flagged in the note).

To plan a run, decide the smallest tone separation you must resolve, then size the record from the block count you need (derived).

### What the image measures
**Knife edge.**
- A vertical edge (∂ρ/∂x) is the default everywhere. Rotating it by 180° flips the sign of intensity against gradient, which matters when data from two rigs are combined (Edgington-Mitchell et al. 2022, p. 6–7).
- One orientation misses parts of curved fronts. Edgington-Mitchell et al. 2025 combined separately recorded ∂ρ/∂x and ∂ρ/∂y images by manual phase matching (p. 9), and got shadowgraph by removing the knife edge and defocusing slightly (p. 7).
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

**Other line-of-sight imaging.** [Duke et al. 2021](../Notes/duke-2021-twin-orifice-pmdi-actuators-fine-particle-fraction.md) used 5 kHz back-lit extinction imaging with a 2.1 µs LED. Three of its practices transfer to wandering or transient jets (p. 9–11, 14): pick a "steady window" from a spatially integrated signal; fit the centreline to remove plume steering; report temporal and shot-to-shot variance separately.

## Quantitative density: BOS, Abel, tomography, interferometry, PINNs
The routes trade time resolution, symmetry assumptions and behaviour at shocks against one another. Raffel 2015 sets out the generic BOS chain; Tan et al. 2015 is the group's axisymmetric, mean-only version of it; Molnar et al. 2023 replaces its regularised inversions with a physics loss; tomographic interferometry gives the sharpest shocks at the highest optical cost.

### BOS practice
Raffel 2015 is the map of the field. BOS cross-correlates a random-dot background, so it has the same first-derivative sensitivity as schlieren but is quantitative (p. 2–3).
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
- A synthetic error map against SNR and shot-to-shot variation predicted 5.2% for the low-Re jet; the measured error was 4.3%. It was 6.0–9.0% for the injector at NPR 2–4, where only about 11 vectors spanned the exit against about 120 (p. 8).
- Validation is in helium jets only. Shocks are not tested.

### Physics-informed BOS
Molnar et al. 2023 explain why shocks are hard. The deflection, tomography and integration steps are each ill-posed, and each is regularised by a smoothness prior. On one image pair of a steady Mach 2 cone (p. 13–14):
- Abel inversion: 8.34% density error. Unified BOS with Tikhonov regularisation: 6.12%.
- A PINN with an Euler physics loss: 3.75%, and it also returns u, v and p within 3.1%.

The costs: 2–3 h of GPU training, against 10 min for the CFD (p. 10, 14); the corner singularity has to be excluded (p. 15); and the physics loss is steady and inviscid, so a turbulent jet shear layer is untested.

### Interferometry and tomography
Edgington-Mitchell 2023 reviews Léon et al.'s tomographic holographic interferometry (TDHI), which uses six Mach–Zehnder views:
- The mean density is as good as Rayleigh scattering, and the shock gradients are an order of magnitude sharper than with tomographic BOS or PIV (p. 3).
- Doing the azimuthal Fourier decomposition before the tomography gave the first rigorous proof that C-mode screech is m = ±1, and showed frequent helicity reversals (p. 3–4).
- The drawbacks: it needs both skilled optics and heavy processing, and it depends on azimuthal symmetry, so it does not carry over easily to rectangular or elliptical nozzles (p. 5).

### Density for base flows
Linear models ([linear-models](linear-models.md)) need a mean density field. In practice it is derived from the PIV mean velocity ([diagnostics-and-facilities](diagnostics-and-facilities.md)) and only sometimes checked against the optical routes above:
- Edgington-Mitchell et al. 2021 assumed constant stagnation density along streamlines and checked it with tomographic BOS (errors below 5%, p. 10).
- Wong et al. 2021 used the Tan et al. (2018) method, which agrees with mean BOS (p. 11).
- [Nogueira et al. 2022](../Notes/nogueira-2021-closure-mechanism-a1-a2-screech.md) (p. 6) and Farghadan et al. 2026 (p. 5) use Crocco–Busemann plus momentum integration, without a check.

## Matching images to simulations
**Numerical schlieren.** Schlieren computed as ∫∂ρ/∂x dz from inviscid Euler CFD matches experiment "excellently", but only by eye (Rezay Haghdoost et al. 2020, p. 8–9; Rezay Haghdoost et al. 2022, p. 7). The quantitative checks come from probes: the plateau after the first shock is 8% below CFD (Rezay Haghdoost et al. 2022, p. 13–14). GSD shock fronts agree only near the nozzle (Thethy et al. 2022, p. 38).

**Synthetic BOS.** Molnar et al. 2023 forward-model BOS images from an SU2 phantom, with nonlinear ray tracing, window refraction and aperture blur, to tune and bound reconstruction errors (p. 11–12). Tan et al. 2015's synthetic Abel error map plays the same role (p. 4–6), and Raffel names ray tracing as the forward-model route (p. 3, 8).

So far only the BOS papers have built a forward model of the measurement, which is what turns a by-eye match into a quantitative one. Ray tracing of acoustics through PIV fields is on [diagnostics-and-facilities](diagnostics-and-facilities.md).

## Disagreements and open questions
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

TR-schlieren SPOD wavenumbers are also the lag-free reference in the particle-lag question on [diagnostics-and-facilities](diagnostics-and-facilities.md).

## Methods and data
Which imaging suits which analysis, following the CLAUDE.md workflow:
- **TR schlieren or shadowgraph** (at least 10 frames per cycle, 10⁴–10⁵ frames) supports spectra, SPOD, BMD and SPOD frequency–time maps (Mazharmanesh et al. 2026), wavelets (Wong et al. 2023), (x, t) FFTs (Weightman 2019), DMD (Edgington-Mitchell et al. 2022) and the SPOD → reconstruction → HPOD pipeline.
- **Non-TR schlieren** (1–50 Hz) gives means, standard deviations, two-point correlations and shock wavenumbers from the mean image (Knast et al. 2018; Esfahani et al. 2021b; Edgington-Mitchell et al. 2022).
- **Condensation (Mie) imaging** needs per-case normalisation because ambient humidity varies ([Samimy et al. 1998](../Notes/samimy-1998-rectangular-jet-trailing-edge-control.md), p. 7).
- **BOS** gives mean density from at least 1,000 images with Abel inversion (Tan et al. 2015), or from one pair with PI-BOS for steady inviscid flow (Molnar et al. 2023).
- **Single events** need triggered TR schlieren plus pressure probes (Rezay Haghdoost et al. 2022).
- PIV, microphones (the frequency reference) and facility checks: [diagnostics-and-facilities](diagnostics-and-facilities.md).

## Relevance to our work
- **Schlieren campaigns.** TR schlieren is the lab's main diagnostic, and the SPOD → reconstruction → HPOD pipeline runs on it. Copy the Mazharmanesh et al. 2026 settings for BMD-quality data: 150 kHz, 0.5 µs LED, 512 × 200 px, 4 × 10⁵ frames. Then:
  - check that every tone and harmonic of interest sits below the 75 kHz Nyquist frequency (derived);
  - record the knife-edge orientation and the view angle;
  - remove intensity drift with POD before SPOD;
  - size n_fft from the closest tone pair to be separated before choosing modes to rebuild; closer tones need wavelets or HPOD on the rebuilt data.
  - The amplitudes that HPOD returns from rebuilt schlieren are relative intensity, not density.
- **PyFR staging LES.** Write numerical schlieren (∫∂ρ/∂x dz) and synthetic BOS from the LES, so that comparisons are like for like. The direct experimental set is the axisymmetric A1/A2 schlieren at NPR 2.19–2.25 (Mazharmanesh et al. 2026; see [screech-staging-and-mode-switching](screech-staging-and-mode-switching.md)). The LES mean density can also test Crocco–Busemann.
- **Rocket noise.** Natural-background and retroreflective BOS suit static firings (Raffel 2015, p. 9, 11–12).

## Papers
- [Krothapalli et al. 1986](../Notes/krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet.md): microphone-triggered phase-locked schlieren (not tagged).
- [Samimy et al. 1998](../Notes/samimy-1998-rectangular-jet-trailing-edge-control.md): condensation imaging, per-nozzle normalisation (not tagged).
- [Henderson et al. 2002](../Notes/henderson-2002-flow-structure-supersonic-impinging-jets.md): phase-locked spark shadowgraph (not tagged).
- [Mitchell et al. 2012](../Notes/mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren.md): the group's first ultra-high-speed (Shimadzu HPV-1) schlieren; line-profile normalisation resolves λ ≈ 0.05d lip disturbances (synthesis pending).
- [Willert et al. 2012](../Notes/willert-2012-high-power-led-high-frame-rate-schlieren.md): Overdriven pulsed CBT-120 LED (≥120 A, 0.5–2 µs) as schlieren source: 102-frame MHz bursts of NPR 5.2 impinging jet; 1 kHz two-point correlations at NPR 2.93 (synthesis pending)
- [Raffel 2015](../Notes/raffel-2015-background-oriented-schlieren-review.md): BOS review; recipe, accuracy, reconstruction routes, TR BOS.
- [Tan et al. 2015](../Notes/tan-2015-bos-density-axisymmetric-jets.md): group BOS → Abel → mean density recipe with synthetic error map.
- [Mason-Smith et al. 2015](../Notes/mason-smith-2015-underexpanded-jet-impinging-cylindrical-sections.md): high-speed schlieren of impingement on curved surfaces; views along and across the cylinder axis (synthesis pending).
- [Edgington-Mitchell et al. 2015](../Notes/edgington-mitchell-2015-staging-screeching-elliptical-jets.md): AR 2 elliptic jet, NPR 1.95–4.3: five screech stages (varicose, 3 flapping, helical); mode III jump tied to shock spacing ≠ standing-wave spacing (k_s2 in hindsight) (synthesis pending).
- [Powis et al. 2016](../Notes/powis-2016-impingement-tones-shock-instabilities-plug-nozzle.md): early Shimadzu HPV-1 use; first edge-detection shock tracking from time-resolved schlieren (synthesis pending)
- [Johnston & Edgington-Mitchell 2016](../Notes/johnston-2016-underexpanded-jet-intrusive-tab-visualisation.md): TR schlieren two-point intensity correlation classifies mode symmetry; brightest-pixel tracking of the tab's streamwise vortex pair (synthesis pending).
- [Berry et al. 2017](../Notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md): 50–100 kHz schlieren POD; aliasing; drift removal.
- [Mercier et al. 2017](../Notes/mercier-2017-screech-feedback-loop-underexpanded-round-jets.md): 220–430 kfps thin-strip schlieren (synthesis pending).
- [Settles & Hargather 2017](../Notes/settles-2017-recent-developments-schlieren-shadowgraph.md): Schlieren/shadowgraph since 2001: CMOS cameras, ≤100 ns LEDs, BOS practice, digital x–t streaks, path-biased schlieren velocimetry, calibrated and CFD schlieren (synthesis pending)
- [Knast et al. 2018](../Notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md): HPV-1 bursts, x–t convection speeds, two views (not tagged).
- [Weightman 2019](../Notes/weightman-2019-sound-production-impinging-supersonic-jets.md): 500 kfps burst schlieren; (x, t) Fourier split.
- [Rezay Haghdoost et al. 2020](../Notes/rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet.md): single-event TR schlieren against numerical schlieren (not tagged).
- [Duke et al. 2021](../Notes/duke-2021-twin-orifice-pmdi-actuators-fine-particle-fraction.md): 5 kHz back-lit extinction imaging; steady-window and steering corrections.
- [Edgington-Mitchell et al. 2021](../Notes/edgington-mitchell-2020-waves-in-screeching-jets.md): tomographic-BOS-checked base-flow density (not tagged).
- [Esfahani et al. 2021a](../Notes/esfahani-2021-control-twin-rectangular-jet-coupling.md): short-record SPOD, bins too coarse (not tagged).
- [Esfahani et al. 2021b](../Notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md): 500 ns LED; log-std standing-wave maps (not tagged).
- [Wong et al. 2021](../Notes/wong-2021-wavepacket-modelling-bbsan.md): PIV-derived density agrees with BOS (not tagged).
- [Edgington-Mitchell et al. 2022](../Notes/edgington-mitchell-2022-unifying-theory-jet-screech.md): 150 kfps SPOD schlieren; knife-edge sign (not tagged).
- [Nogueira et al. 2022](../Notes/nogueira-2021-closure-mechanism-a1-a2-screech.md): unchecked Crocco–Busemann density (not tagged).
- [Rezay Haghdoost et al. 2022](../Notes/rezay-haghdoost-2022-shock-dividers.md): 210 kHz triggered schlieren; probes against CFD (not tagged).
- [Thethy et al. 2022](../Notes/thethy-2022-shock-diffraction-non-quiescent-medium.md): shock-tube schlieren; GSD against images (not tagged).
- [Edgington-Mitchell 2023](../Notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md): TDHI commentary; limits of tomographic BOS and PIV.
- [Molnar et al. 2023](../Notes/molnar-2023-physics-informed-bos-supersonic.md): physics-informed BOS; Abel bias at shocks; synthetic images.
- [Wong et al. 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md): 150 kHz schlieren, POD-filtered wavelets, single plane (not tagged).
- [Edgington-Mitchell et al. 2025](../Notes/edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md): combined knife edges, shadowgraph, hemisphere (not tagged).
- [Mazharmanesh et al. 2025](../Notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md): 19-view rotated-nozzle schlieren SPOD.
- [Farghadan et al. 2026](../Notes/farghadan-2026-wave-interactions-screeching-jet.md): unchecked Crocco–Busemann density (not tagged).
- [Mazharmanesh et al. 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md): 4 × 10⁵-frame schlieren; reference settings (not tagged).
