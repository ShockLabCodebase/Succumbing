# Schlieren and density imaging

_Last updated: 2026-10-25 · 34 papers_

## Scope
Line-of-sight optical measurement of shock-containing jets: how to record the images, what they show, and how to turn them into numbers. The page covers:
- schlieren and time-resolved (TR) schlieren, shadowgraph and back-lit imaging: light source, cameras, frame rate, exposure, record length, knife edge and measuring range, what the intensity means, views and pre-processing;
- what is taken from the images short of modal decomposition: statistics of independent snapshots, x–t diagrams, feature tracking and convection speeds;
- quantitative density from BOS, calibrated schlieren, Abel inversion, tomography, interferometry and physics-informed networks, including the mean density fed to stability base flows;
- matching images to simulations: numerical schlieren and synthetic, ray-traced images.

Three notes are about the instrument itself: [Settles & Hargather 2017](../Notes/settles-2017-recent-developments-schlieren-shadowgraph.md) for schlieren and shadowgraph, [Raffel 2015](../Notes/raffel-2015-background-oriented-schlieren-review.md) for BOS and [Willert et al. 2012](../Notes/willert-2012-high-power-led-high-frame-rate-schlieren.md) for the pulsed LED source. The rest of the page draws on the setup sections of the group's screech, impinging-jet and twin-jet papers for working settings; notes used this way without the topic tag are marked "(not tagged)" under Papers.

Other topic pages cover the rest:
- PIV practice, facilities and their acoustic environment, and the shock-tube rigs: [diagnostics-and-facilities](diagnostics-and-facilities.md);
- the algorithms applied to the images: [modal-decomposition](modal-decomposition.md) and [time-frequency-methods](time-frequency-methods.md);
- the physics found with them: [screech](screech.md), [screech-staging-and-mode-switching](screech-staging-and-mode-switching.md), [impinging-jets-and-edge-tones](impinging-jets-and-edge-tones.md), [non-axisymmetric-jets](non-axisymmetric-jets.md) and [twin-jet-coupling](twin-jet-coupling.md);
- the CFD behind numerical schlieren: [simulation-methods](simulation-methods.md).

## Current understanding
1. **Long-record TR schlieren is now the group's main tool for dynamics.** A Z-type system with mirrors of about 2 m focal length, a pulsed LED and a Photron SA-Z at 100–200 kHz records 10⁴–10⁵ frames per condition ([Edgington-Mitchell et al. 2022](../Notes/edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 6; [Wong et al. 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 5–6; [Mazharmanesh et al. 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), p. 4). The source is a CBT-120 LED overdriven far beyond its rating in short pulses ([Willert et al. 2012](../Notes/willert-2012-high-power-led-high-frame-rate-schlieren.md), p. 415–416). Before the SA-Z, phase-locked imaging, composites of independent frames and 102-frame bursts showed mode shapes and single events but could not support SPOD or BMD ([Mitchell et al. 2012](../Notes/mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren.md), p. 337; [Weightman 2019](../Notes/weightman-2019-sound-production-impinging-supersonic-jets.md), p. 24–26).
2. **Record length, not frame rate, usually limits what can be resolved.** 150 kHz gives 12–17 frames per screech cycle ([Knast et al. 2018](../Notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md), Table 1, p. 5, derived), but tones a fraction of a per cent apart need 10⁵-frame records or wavelets (Wong et al. 2023, p. 7–8; [Esfahani et al. 2021a](../Notes/esfahani-2021-control-twin-rectangular-jet-coupling.md), p. 7). Frame rate matters only near the lip: lip-line phase work has used 220–430 kfps on a thin strip ([Mercier et al. 2017](../Notes/mercier-2017-screech-feedback-loop-underexpanded-round-jets.md), p. 207–208), and the λ ≈ 0.05d receptivity transient still needs burst cameras (Mitchell et al. 2012, p. 339; that note's estimate).
3. **Schlieren intensity is a path-integrated, knife-edge-dependent proxy for ∂ρ/∂x.** The deflection angle is ε_y = (1/n)∫∂n/∂y dz; schlieren shows the gradient normal to the knife edge, shadowgraph the Laplacian ([Settles & Hargather 2017](../Notes/settles-2017-recent-developments-schlieren-shadowgraph.md), p. 3, 6). The cut-off sets the measuring range, and shocks, shear layers and acoustic waves need ranges one to two decades apart (p. 17). SPOD eigenvalues and other intensity statistics therefore compare only within one set-up ([Mazharmanesh et al. 2025](../Notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md), p. 6; Wong et al. 2023, p. 13; [Mason-Smith et al. 2015](../Notes/mason-smith-2015-underexpanded-jet-impinging-cylindrical-sections.md), p. 621).
4. **Mode symmetry needs at least two views, and a helix needs them simultaneously.** One plane cannot tell a helix from in-plane flapping (Willert et al. 2012 note; [Powis et al. 2016](../Notes/powis-2016-impingement-tones-shock-instabilities-plug-nozzle.md), p. 6). Two orthogonal, separately acquired views identify varicose and flapping modes and a fixed flapping plane (Mason-Smith et al. 2015, p. 617; [Edgington-Mitchell et al. 2015](../Notes/edgington-mitchell-2015-staging-screeching-elliptical-jets.md), p. 1012–1017; [Johnston & Edgington-Mitchell 2016](../Notes/johnston-2016-underexpanded-jet-intrusive-tab-visualisation.md), p. 56–57), but not a helix's phase lock (Edgington-Mitchell et al. 2015 note). Nineteen rotated views expose bi-axial and quasi-helical modes, assuming statistically identical runs (Mazharmanesh et al. 2025, p. 5, 8–9).
5. **Statistics of independent snapshots still do much of the mode identification.** Two-point correlation of about 10³ images gives the dominant pattern and vortex spacing, and the standard-deviation image the standing-wave spacing (Willert et al. 2012, p. 419–420; Edgington-Mitchell et al. 2015, p. 1017–1020; Knast et al. 2018, p. 10–11). They give a frequency only through a microphone or an assumed U_c, and mix shear-layer and acoustic correlation (Johnston & Edgington-Mitchell 2016, p. 56–58).
6. **Quantitative density needs BOS, calibrated schlieren or interferometry, and each route has a known weakness.** BOS with Abel inversion gives only the *mean* density, to a few per cent ([Tan et al. 2015](../Notes/tan-2015-bos-density-axisymmetric-jets.md), p. 8; [Raffel 2015](../Notes/raffel-2015-background-oriented-schlieren-review.md), p. 5). It resolves less than schlieren, worst at shocks (Settles & Hargather 2017, p. 7), where Abel inversion is biased; physics-informed BOS more than halves the bias ([Molnar et al. 2023](../Notes/molnar-2023-physics-informed-bos-supersonic.md), p. 13). Lens-calibrated schlieren holds only within the cut-off's linear range, which shocks exceed (Settles & Hargather 2017, p. 13–15). Tomographic holographic interferometry resolves shocks far better than tomographic BOS or PIV but relies on azimuthal symmetry ([Edgington-Mitchell 2023](../Notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md), p. 3, 5).
7. **Base-flow density usually comes from PIV**, via Crocco–Busemann or constant stagnation density along streamlines. Only two group datasets have been checked against BOS, to about 5% ([Edgington-Mitchell et al. 2021](../Notes/edgington-mitchell-2020-waves-in-screeching-jets.md), p. 10; [Wong et al. 2021](../Notes/wong-2021-wavepacket-modelling-bbsan.md), p. 11; unchecked in [Farghadan et al. 2026](../Notes/farghadan-2026-wave-interactions-screeching-jet.md), p. 5).
8. **Image–simulation comparisons are mostly qualitative.** Numerical schlieren is matched by eye ([Rezay Haghdoost et al. 2020](../Notes/rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet.md), p. 8–9; Settles & Hargather 2017 describe no metric, p. 16), and CFD is usually shown as |∇ρ|, which experiments seldom record (p. 17). Only forward models of the measurement allow a quantitative check: synthetic BOS ray-traced through a CFD phantom (Molnar et al. 2023, p. 11–12) and, so far only for a test sphere, ray tracing of the schlieren optics (Settles & Hargather 2017, p. 15–16).

## Schlieren and time-resolved schlieren

### From phase-locking to long records
**Phase-locked imaging.** Before high-speed cameras, dynamics came from triggering:
- [Krothapalli et al. 1986](../Notes/krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet.md) phase-locked a stroboscopic schlieren (1.5 µs flash) to a near-field microphone (p. 121–122, 138).
- [Henderson et al. 2002](../Notes/henderson-2002-flow-structure-supersonic-impinging-jets.md) did the same with about 1 µs spark shadowgraph. Each image came from a different cycle, so the sequence assumes the cycle repeats exactly (p. 2–3). Mitchell et al. 2012's four-stage composite of the impinging-jet loop from independent frames makes the same assumption (p. 336–337).

**The light source.** Willert et al. 2012 is the source paper for the group's pulsed LED:
- A capacitor-discharge driver pulses a Luminus CBT-120 above 120 A, against a 36 A rating, in bursts of 100 pulses of 500 ns at a 2 µs period (500 kHz, up to 1 MHz); the 25% duty cycle lets it survive (p. 415–416). With 100 µF of supply capacitance the intensity fell to about 0.45 over a burst, with 2200 µF it stayed nearly constant (Fig. 3, p. 415, read from the figure).
- Green beat the radiometrically brighter red LED, which has a wider beam (p. 416). The 3 × 4 mm² die needs no condenser or slit, and continuous running allows live alignment (p. 419–420).
- Settles & Hargather 2017 agree that LEDs pulse repeatably down to about 100 ns and that the CBT-120 suits schlieren but is too large for shadowgraphy. They add that bonding wires can melt at high pulse currents (p. 4–5), which Willert et al. did not test (p. 420).
- Later rigs use it for 0.5–1.6 µs pulses (Edgington-Mitchell et al. 2015, p. 1009; Powis et al. 2016, p. 3–4; Mason-Smith et al. 2015, p. 613; Mazharmanesh et al. 2026, p. 4), and [Berry et al. 2017](../Notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md) built their Syracuse source on it (Willert note). The first HPV-1 bursts were lit by a photographic flash (Mitchell et al. 2012, p. 335; Powis et al. 2016, p. 3).

**Ultra-high-speed bursts.** These gave true time sequences, but short ones: the Shimadzu HPV-1 records at most 102 frames of 312 × 260 px, at up to 1 Mfps (Mitchell et al. 2012, p. 335). Cameras of this class reach 5–10 Mfps, but only for 100 to a few hundred frames (Settles & Hargather 2017, p. 3).
- Mitchell et al. 2012 is the group's first use, at 250 and 500 kfps: the first time-resolved view of the impinging-jet loop, with no frequency or convection speed measured (p. 335, 337–339). Willert et al. 2012 then formed mean and standard-deviation images from ten 100-frame sequences; mean subtraction left the unsteady features and removed mirror blemishes (p. 417–418).
- Powis et al. 2016 ran two magnifications: 250 kfps over 4.4D × 3.7D at 0.22 mm/px for the loop, and 500 kfps over 1.6D × 1.4D at about 0.08 mm/px for the standoff shock (Table 1, p. 4).
- Weightman 2019 ran it at 500 kfps with 0.5 µs exposure and took at least 20 sequences per condition (p. 24–26), for mode type and source location. The one quantitative analysis, an (x, t) Fourier split, was limited by the 102 frames (p. 109–110).
- Knast et al. 2018 built x–t diagrams with it; Hough-transform slopes gave U_c/U_j ≈ 0.58 (p. 10). Two-point correlations needed a separate 1 Hz set of at least 900 images (p. 2–3, 5–6).

**Independent high-resolution images.** Alongside the bursts, PCO cameras at 1 Hz to about 1 kHz gave megapixel frames for the snapshot statistics below, typically with a 1.3–1.6 µs LED pulse and 1000–6300 images (Willert et al. 2012, p. 419; Mason-Smith et al. 2015, p. 613; Edgington-Mitchell et al. 2015, p. 1009–1014; Johnston & Edgington-Mitchell 2016, Table 1, p. 52; Powis et al. 2016, p. 4).

**Long records.** The SA-Z made SPOD, BMD and frequency–time tracking routine; shorter and faster TR sets are listed for comparison:

| Study | Camera, rate | Exposure / source | Frames | Use |
|---|---|---|---|---|
| Berry et al. 2017 (p. 4) | SA-Z, 50–100 kHz | 3.75 µs, LED, 80% cut-off | 1.2–2.6 × 10⁵ | POD |
| Esfahani et al. 2021a (p. 6–7) | Phantom v1210, 40 kfps | 500 ns LED | 2,000 | SPOD (1,000 frames) |
| Mercier et al. 2017 (p. 206–208) | Phantom V12, 220–430 kfps, strip of 640 × 16 or 1024 × 24 px | 2.8–4.0 µs, LED, 50% cut-off | not stated | lip-line phase, wavenumber spectra |
| Edgington-Mitchell et al. 2022 (p. 6) | SA-Z, 150 kfps (Tsinghua: 80 kfps) | LED | 50,000 (2,000) | SPOD (DMD) |
| Wong et al. 2023 (p. 5–7) | SA-Z, 100–150 kHz | 1 µs LED | 40,000–50,000 | POD, SPOD, wavelets |
| [Edgington-Mitchell et al. 2025](../Notes/edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (p. 7) | SA-Z, 50–200 kfps | 500 ns LED | – | wave tracking |
| Mazharmanesh et al. 2025 (p. 5–6) | SA-Z, 150 kHz, 512 × 200 px | 5.1 µs camera exposure, LED | 10⁵ per view × 19 views | SPOD |
| Mazharmanesh et al. 2026 (p. 4–6) | SA-Z, 150 kHz, 512 × 200 px | 0.5 µs LED | 4 × 10⁵ | SPOD, BMD, frequency–time |
| [Rezay Haghdoost et al. 2022](../Notes/rezay-haghdoost-2022-shock-dividers.md) (p. 3–4) | SA-Z, up to 210 kHz | 1 µs LED | single events | front tracking |

Mirror focal lengths are 2032 mm in the Monash jet rigs, the system later group papers cite to Mitchell et al. 2012 (p. 335; Knast et al. 2018, p. 2–3; Mazharmanesh et al. 2026, p. 4). Elsewhere they are 2.54 m at Syracuse (Berry et al. 2017, p. 4), 200 mm f/8 mirrors (about 1.6 m, derived) at Lyon (Mercier et al. 2017, p. 207) and 1219 mm in the shock-tube rigs ([Thethy et al. 2022](../Notes/thethy-2022-shock-diffraction-non-quiescent-medium.md), p. 5–6).

### Choosing frame rate, exposure and record length
**Frame rate.**
- Screech in 10 mm round twin jets sits at 8.8–12.6 kHz over NPR 3–5 (Knast et al. 2018, Table 1, p. 5). At 150 kHz that is 12–17 frames per cycle (derived).
- Mercier et al. 2017 followed Veltin et al.'s rule of at least 15U_j/D_j, more than 150 kHz at M_j 1.5, by shrinking the field to a 16–24 px strip across the lip line (p. 207–208, 212).
- Mitchell et al. 2012's lip bands (λ ≈ 0.05d, gone by x/d ≈ 0.3; p. 337–339) are at St_j ≈ 10–12 for an assumed U_c of 0.5–0.6U_j, against a Nyquist St_j ≈ 2.8 for 150 kHz on a 15 mm nozzle (that note's estimates).
- Aliasing is a real risk. A 34.4 kHz splitter-plate tone showed up at 15.6 kHz in 50 kHz data (Berry et al. 2017, p. 8), and Mercier et al.'s 7.2 kfps full-field record is below Nyquist for their 5.9 kHz tone (Tables 2–3, p. 205, 208; that note's observation).
- POD eigenfunctions do not need time resolution, but coefficient spectra and phase lags do (Berry et al. 2017, p. 7–8).

**Burst length.** At 500 kfps a 102-frame burst spans about two tone periods, a 4.9 kHz FFT bin. Powis et al. 2016 therefore took the shock frequency from a fit averaged over 20 bursts, with σ up to 15% (p. 4, 6), so "agreement within one σ" with the tone is a loose test (that note's reading).

**Exposure.**
- A 500 ns pulse freezes the highest screech frequency ([Esfahani et al. 2021b](../Notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md), p. 6–7).
- With U_c ≈ 0.58U_j and U_j ≈ 420–530 m/s (Knast et al. 2018, p. 5, 10), a 1 µs pulse smears structures by 0.25–0.3 mm, about 0.03D for D = 10 mm (derived).
- Treat the light pulse, not the shutter, as the effective exposure: Mazharmanesh et al. 2025 quote a 5.1 µs camera exposure but no LED pulse length (p. 5). The light also keeps rising through a 500 ns pulse and decays over about 350 ns after it (Willert et al. 2012, Figs 2, 4, p. 414–415), a tail of a few hundred nanoseconds (that note's reading).
- Rolling-shutter CMOS sensors, as in DSLRs, respond poorly to 1 µs pulses; global-shutter cameras are needed (Settles & Hargather 2017, p. 4).

**Record length** sets the frequency resolution Δf and the number of Welch blocks:
- n_fft = 4096 at 150 kHz gives Δf ≈ 37 Hz and 47 blocks from 10⁵ frames (Mazharmanesh et al. 2025, p. 6).
- n_fft = 1024 gives about 146 Hz and 780 blocks, which leaves St 0.269 and 0.273 about one bin apart (Mazharmanesh et al. 2026, p. 5–6; the note's arithmetic).
- Twin-jet tones 0.3–0.63% apart are below practical Welch resolution, so Wong et al. 2023 used 600-cycle Morlet wavelets (p. 7–8).
- Esfahani et al. 2021a's 1,000-frame SPOD had 625 Hz bins, too coarse to separate tones at 8.25 and 8.40 kHz (p. 7, flagged in the note).

To plan a run, decide the smallest tone separation you must resolve, then size the record from the block count you need (derived).

### What the image measures
**Knife edge.**
- A vertical edge (∂ρ/∂x) is the default everywhere. Rotating it by 180° flips the sign of intensity against gradient, which matters when data from two rigs are combined (Edgington-Mitchell et al. 2022, p. 6–7).
- Other orientations pick out other features. A radial edge shows streamwise vortices as bright streaks (Johnston & Edgington-Mitchell 2016, p. 52–54) and, near a plate, stops the strong axial gradients from dominating (Powis et al. 2016, p. 4); ∂ρ/∂y is preferred to ∂ρ/∂r because it does not change sign at the centreline (Edgington-Mitchell et al. 2015, p. 1009).
- One orientation misses parts of curved fronts. Edgington-Mitchell et al. 2025 combined separately recorded ∂ρ/∂x and ∂ρ/∂y images by manual phase matching (p. 9), and got shadowgraph by removing the knife edge and defocusing slightly (p. 7), the recipe Settles & Hargather 2017 give (p. 3). In CFD renderings the shadowgram shows vortex cores better than any schlieren view (p. 17).
- [Krothapalli et al. 1986](../Notes/krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet.md) tuned the edge to show the outer acoustic field rather than the shock cells (p. 121–122).

**Measuring range.** The cut-off trades sensitivity against range (Johnston & Edgington-Mitchell 2016, p. 52). An impinging-jet LES rendered at |∇ρ| ranges of 1000, 100 and 10 kg m⁻⁴ shows first the shocks, then the shear layers and wall jet, then only the impingement acoustics (Settles & Hargather 2017, Fig. 12, p. 17). Experiments seldom vary the cut-off like this; a graded filter in place of the knife edge extends the range at lower sensitivity (p. 13, 17–18). Cut-offs in use are 50–80% (Mercier et al. 2017, p. 207; Mason-Smith et al. 2015, p. 613; Berry et al. 2017, p. 4). Over-ranged pixels clip, which makes the intensity nonlinear and could add spurious harmonics and triads to BMD, so mask them (the Settles note's inference).

**Path integration.**
- For impinging jets, a hemisphere minimises the line-of-sight integration through the wall jet that hides shocklets on a flat plate (Edgington-Mitchell et al. 2025, p. 6–7). The broadband floor also changes between views, so Mazharmanesh et al. 2025 subtracted a local broadband level from each peak (p. 9).
- Sampling where the path is shortest helps: intensity along the outer edge of the shear layer, normalised by its mean, resolved lip bands that the full image hides (Mitchell et al. 2012, Fig. 6, p. 337–340).
- Mercier et al. 2017 argue that integration matters little for azimuthally coherent screech (p. 208). But a rotating helical standoff shock looks like side-to-side motion (Powis et al. 2016, p. 6), and staggered acoustic waves were read as a helical field through the same projection (Willert et al. 2012, p. 417–418).

**Pre-processing.**
- Always record a no-flow tare and uncompressed raw or TIFF images (Settles & Hargather 2017, p. 20–21). The tare separates window and background non-uniformity from the flow mean, a cleaner reference for steady artefacts than POD (that note's suggestion).
- POD can remove spatially uniform intensity drift from window refraction and reflections (Berry et al. 2017, p. 4–5); mean subtraction removes static mirror blemishes (Willert et al. 2012, p. 417–418). Check the source intensity too: an under-supplied driver lost more than half its intensity over a burst (Fig. 3, p. 415), which in a long record would appear as a spurious low-frequency mode (that note's inference).
- POD also works as a spatial noise filter before a wavelet transform, because scalograms of raw pixels are noisy (Wong et al. 2023, p. 9). POD of schlieren converges slowly: 200–300 modes for half the content (Berry et al. 2017, p. 5).
- Mean shock wavenumbers come from an axial FFT of the time-averaged image (Edgington-Mitchell et al. 2022, p. 7). Bright shocks in the RMS image are moving shocks, which separates shock motion from convected structures (Mason-Smith et al. 2015, p. 614).

**Views.**
- Wong et al. 2023 imaged only the plane holding both jets, so only SS against SA coupling is visible (p. 5–6). Knast et al. 2018 used front and side views (p. 5).
- Two orthogonal views are the cheap test of symmetry:
  - on a convex half-cylinder, an antisymmetric correlation along the cylinder axis and a symmetric one across it fixed the flapping plane at NPR 3.4; on a flat plate the plane precessed and the one-view correlation washed out (Mason-Smith et al. 2015, p. 617);
  - rotating only the nozzle tip, with the optics untouched (Johnston & Edgington-Mitchell 2016, p. 55), symmetric patterns in both views separated an A-like mode from B flapping (p. 56–57);
  - Edgington-Mitchell et al. 2015 classified the stages of an AR 2 ellipse this way: symmetric in both views varicose, antisymmetric in the minor-axis view only flapping, weakly antisymmetric in both "helical" (p. 1012–1017). Separately acquired views cannot test a helix's ±π/2 phase lock, so that helical label is the weakest (that note).
- Mazharmanesh et al. 2025 rotated the nozzle in 10° steps to get 19 views. The view-dependence of the SPOD eigenvalue and a symmetric-plane inner product exposed bi-axial flapping and quasi-helical modes (p. 5, 8–9).
- The helicity reversals that interferometry found (Edgington-Mitchell 2023, p. 4) look the same in one plane (inference in that note).

**Other line-of-sight imaging.** [Duke et al. 2021](../Notes/duke-2021-twin-orifice-pmdi-actuators-fine-particle-fraction.md) used 5 kHz back-lit extinction imaging with a 2.1 µs LED. Three of its practices transfer to wandering or transient jets (p. 9–11, 14): pick a "steady window" from a spatially integrated signal; fit the centreline to remove plume steering; report temporal and shot-to-shot variance separately.

### Snapshot statistics, tracking and convection speeds
**Two-point correlation of independent images.**
- It starts in the group with Willert et al. 2012: 6300 independent 1 kHz frames of a screeching NPR 2.93 jet gave alternating cells across the centreline that continued into the acoustic field (Fig. 12, p. 419–420). Its printed eq. 1 divides by ΣI, a typesetting slip (that note); use the correlation coefficient with the mean removed (Mason-Smith et al. 2015, eq. 5, p. 616–617; Edgington-Mitchell et al. 2015, eq. 5, p. 1013).
- The sign pattern classifies symmetry (Views above), and the peak spacing gives the vortex spacing, 0.8D to 3.1D over NPR 2.0–4.2 in the AR 2 ellipse (Edgington-Mitchell et al. 2015, Table 1, p. 1018). With an assumed U_c = 0.6U_j, correlation wavelengths reproduced two tones to within 10% (Johnston & Edgington-Mitchell 2016, Table 2, p. 56–58).
- The bands reach r/D ≈ ±2, so much of a map is acoustic near field (Johnston & Edgington-Mitchell 2016, p. 56, as that note reads Fig. 8). Their spacing there is the acoustic wavelength of the tone the images carry, a cheap check against the microphone; in Mason-Smith et al. 2015 it points to a St ≈ 0.56 oscillation where the plotted tone is 0.278 (that note's reading).
- The reference point changes the strength of a map, not its pattern (Knast et al. 2018, p. 5–6): on a standing-wave lobe the correlation reaches far, between lobes it is weak (Edgington-Mitchell et al. 2015, Fig. 11, p. 1019–1020).

**Standard-deviation lobes and other scalars.** Lobes of intensity standard deviation outside the shear layer give the standing-wave spacing, within 3% of Panda's relation (Edgington-Mitchell et al. 2015, Table 2, p. 1018–1019; also Knast et al. 2018, p. 10–11); Esfahani et al. 2021b's log₁₀ standard-deviation maps use the same idea (p. 6–7). Mason-Smith et al. 2015's coefficient of variation of intensity beside the exit, 0.2 on a concave plate against 0.06 on a convex one, depends on knife edge, cut-off and path and cannot be turned into flow properties (Table 1, p. 620–621).

**x–t diagrams and feature tracking.**
- Digital streak schlieren stacks one pixel row per frame into an x–t diagram whose slopes are speeds; shock tracking locates the shock in each frame instead (Settles & Hargather 2017, p. 11). Knast et al. 2018 fitted Hough-transform slopes to burst x–t diagrams (p. 10), and [Karami et al. 2020](../Notes/karami-2020-acoustic-hydrodynamic-waves-underexpanded-impinging-jets.md) built them from LES velocity and pressure, finding shear-layer wavepackets at 0.77a₀ (p. 13–15).
- Powis et al. 2016 is the library's first edge-detection shock tracker: a Gaussian filter, Sobel edges, a length filter and a line fit give the standoff-shock centroid and angle per frame. It follows motion normal to the plate but not tilt or in-plane motion, so helical cases were excluded (p. 4, 6).
- Johnston & Edgington-Mitchell 2016 tracked a tab's vortex pair by a brightest-pixel march through low-passed ∂ρ/∂r images, accumulated over 5000 images into a probability map (p. 58–59). It shows meander but not whether it is periodic (that note).
- Mercier et al. 2017 refined wavenumber peaks over 2–4 wavelengths with a Gaussian window, ×2 zero padding and a three-point Gaussian fit, to within 1% of the bin (p. 212). The phase along the lip line, from cross-spectra with the nozzle-exit pixel, located the radiating shock and counted the loop's periods (p. 222–224).

**Convection speeds are line-of-sight weighted.** Correlating schlieren eddies in a round jet gave about 46% of the centreline speed, because of path averaging, and follows fine-scale substructure rather than the large structures (Settles & Hargather 2017, p. 13–14). The group's tone-locked estimates nonetheless sit inside the 0.55–0.7U_j literature range (Mercier et al. 2017, p. 203):
- 0.57–0.60U_j from x–t slopes (Knast et al. 2018, p. 10);
- 0.54–0.61U_j upstream of the source and 0.61–0.75U_j downstream from wavenumber spectra, and 0.52–0.59U_j from the phase at the source (Mercier et al. 2017, p. 212–215, 224–225). The wavenumber values favour the fast region near the source, because the transform is weighted by the growing wave (p. 225).

## Quantitative density: BOS, calibrated schlieren, Abel, tomography, interferometry, PINNs
The routes trade time resolution, symmetry assumptions and behaviour at shocks against one another. Raffel 2015 and Settles & Hargather 2017 set out the generic BOS chain; Tan et al. 2015 is the group's axisymmetric, mean-only version of it; Molnar et al. 2023 replaces its regularised inversions with a physics loss; calibrated schlieren needs only a lens in the field; tomographic interferometry gives the sharpest shocks at the highest optical cost.

### BOS practice
Raffel 2015 is the map of the field. BOS cross-correlates a random-dot background, so it has the same first-derivative sensitivity as schlieren but is quantitative (p. 2–3); the same deflection angle sets the schlieren grey level and the BOS displacement (Settles & Hargather 2017, p. 6).
- Recipe: f/11, dot images of 3–5 px, uncompressed images, PIV software (Raffel, p. 5). Settles & Hargather agree on random dots (2–3 px if attainable), blur kept below the window, and optical flow as an accuracy gain (p. 8–10).
- Error: 2–3% of full scale against about 1% for PIV, because displacements are often below 0.5 px. Dynamic range is about 50:1 (Raffel, p. 5). Resolution is always below schlieren, because the correlation averages over the window, and worst at shocks (Settles & Hargather 2017, p. 7).
- Blur: there is a trade-off between blur of the out-of-focus flow and the aperture (Raffel, p. 4).
- Tare: vibration between tare and run is inherent to supersonic tunnels, and temporal BOS (two flow-on frames) shows only what changed, so it is not quantitative (Settles & Hargather 2017, p. 8).
- Reconstruction routes: Poisson integration (2D flows), Abel inversion (axisymmetric flows), and filtered back-projection or ART (tomography) (Raffel, p. 7–9). Raffel says the ideal recording and evaluation methods "have not yet been found" (p. 6).
- Time resolution: TR BOS up to 100 kHz has been shown (Raffel, p. 9). Correlating successive BOS fields gives the convection speed of density structures, not the fluid velocity (p. 10).

### The group's Abel recipe
Tan et al. 2015 is the group's single-camera recipe:
- Set-up: wavelet-noise background back-lit by a 532 nm LED array, f/22, 24 × 24 px windows at 75% overlap to oversample for the inversion (p. 6–7).
- Processing: adaptive Fourier–Hankel Abel inversion with α = 0.1, then Gladstone–Dale (p. 4), on 1,000 independent images.
- Average the displacements *before* inverting, because instantaneous fields have no symmetry axis (p. 6).
- A synthetic error map against SNR and shot-to-shot variation predicted 5.2% for the low-Re jet; the measured error was 4.3%. It was 6.0–9.0% for the injector at NPR 2–4, where only about 11 vectors spanned the exit against about 120 (p. 8).
- Validation is in helium jets only; shocks are not tested. Wavelet-noise backgrounds also responded poorly to flow-induced blur in Vinnichenko et al.'s trials (Settles & Hargather 2017, p. 9), so the errors may not carry over to shock-containing jets, where blur is worst (the Settles note's link; neither paper compares backgrounds directly).

### Calibrated schlieren
Settles & Hargather 2017 give the cheapest quantitative route (p. 13–15):
- A weak lens of known focal length in the field of view (10 m in their example, longer than that of the schlieren optics) maps intensity to refraction angle. Integrating the angle gives n, and Gladstone–Dale gives density for one gas of known constant, which suits cold air jets but not helium or mixtures (p. 15; that note).
- The calibration holds only inside the cut-off's linear range, which shocks over-range (p. 13, 17). Rainbow schlieren carries no more information than grey-scale (p. 15).
- The group has not used this route (that note).

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
**Numerical schlieren.** Schlieren computed as ∫∂ρ/∂x dz from inviscid Euler CFD matches experiment "excellently", but only by eye (Rezay Haghdoost et al. 2020, p. 8–9; Rezay Haghdoost et al. 2022, p. 7). The quantitative checks come from probes: the plateau after the first shock is 8% below CFD (Rezay Haghdoost et al. 2022, p. 13–14). GSD shock fronts agree only near the nozzle (Thethy et al. 2022, p. 38). How a CFD field is rendered matters as much: one solution shown as bright-field |∇ρ|, vertical- and horizontal-edge schlieren and shadowgraph gives four different pictures (Settles & Hargather 2017, Fig. 11, p. 17), and the measuring range changes it again (Fig. 12). The renderings they cite do not state their line-of-sight or knife-edge model (that note).

**Synthetic images and ray-traced optics.** Molnar et al. 2023 forward-model BOS images from an SU2 phantom, with nonlinear ray tracing, window refraction and aperture blur, to tune and bound reconstruction errors (p. 11–12). Tan et al. 2015's synthetic Abel error map plays the same role (p. 4–6), and Raffel names ray tracing as the forward-model route (p. 3, 8). For the optics themselves, a Zemax model of a small z-type system (geometrical optics, no diffraction) shows Δn = 10⁻⁶ barely visible, 10⁻⁴ clear and 10⁻³ grossly over-ranged, and an uneven background from a knife edge 10 mm off focus; the phase object is a test sphere, not a flow (Settles & Hargather 2017, p. 15–16).

**Statistics and space–time maps.** x–t diagrams, two-point correlation maps and lip-line phase can be computed from LES probe lines or snapshots exactly as from images (Karami et al. 2020, p. 13–15; suggestions in the Willert et al. 2012 and Mercier et al. 2017 notes), which gives like-for-like checks of speeds, symmetry and loop structure without a full optical model.

So far only the BOS papers have built a forward model of the measurement through a flow, which is what turns a by-eye match into a quantitative one. Ray tracing of acoustics through PIV fields is on [diagnostics-and-facilities](diagnostics-and-facilities.md).

## Disagreements and open questions
- **Which mean density should base flows use?**
  - The candidates: Crocco–Busemann (Farghadan et al. 2026; Nogueira et al. 2022), streamline stagnation density (Edgington-Mitchell et al. 2021), the Tan et al. 2018 method (Wong et al. 2021), BOS with Abel inversion (validated only subsonically, on a background that may blur at shocks; Tan et al. 2015; Settles & Hargather 2017, p. 9), PI-BOS (inviscid, Molnar et al. 2023) and calibrated schlieren (one gas, linear range only; Settles & Hargather 2017, p. 13–15).
  - The gap: none has been tested in the shear layer of a screeching jet, which is where stability results are most sensitive.
  - What would settle it: BOS with Abel inversion and PIV on the same jet, with an LES phantom used to forward-model both.
- **Can schlieren amplitudes be compared across cases?**
  - The problem: intensity is a proxy, the broadband level depends on the view, the knife-edge sign can flip, and the source intensity can drift (Mazharmanesh et al. 2025, p. 6, 9; Edgington-Mitchell et al. 2022, p. 6–7; Willert et al. 2012, Fig. 3, p. 415).
  - Candidate fixes: TR BOS, demonstrated to 100 kHz (Raffel 2015, p. 9), whose 2–3% full-scale error and tare–run vibration (Settles & Hargather 2017, p. 8) may leave too little SNR at screech amplitudes; or a calibration lens, which would put SPOD eigenvalues and HPOD amplitudes in deflection angle, a path-integrated ∂n/∂x (p. 14–15; the Settles note's proposal), but only inside the linear range and still path- and view-dependent.
  - What would settle it: TR BOS and lens-calibrated schlieren SPOD of the same screeching jet.
- **How do we get 3D mode structure from line-of-sight images?**
  - Single views cannot separate a helix from flapping, and separately acquired orthogonal views cannot test a helix's phase lock (Current understanding, item 4). TDHI needs azimuthal symmetry (Edgington-Mitchell 2023, p. 5). Rotated-nozzle multi-view schlieren (Mazharmanesh et al. 2025) assumes statistically identical runs, so it cannot see instantaneous 3D structure or switches in helicity or flapping axis.
  - What would settle it: simultaneous orthogonal two-view TR schlieren, synchronised with an azimuthal microphone array. A ±π/2 phase lag between views would mark a helix, and 0 or π flapping (Edgington-Mitchell et al. 2015 note).
- **How biased are schlieren convection speeds?**
  - The concern: schlieren speeds are path-averaged and follow fine-scale substructure (Settles & Hargather 2017, p. 13–14).
  - The counter-view: integration is weak for azimuthally coherent screech (Mercier et al. 2017, p. 208), and the group's tone-locked values sit in the literature range (Convection speeds above). The Settles note expects a smaller bias for tone-locked wavepacket phase speeds than for broadband correlation; this is untested.
  - Why it matters: U_c enters Powell-type frequency checks and Mercier's loop counts (p. 222–224), and the spacing-based U_c of Edgington-Mitchell et al. 2015 already spans 0.59–0.77U_j across stages (that note's arithmetic).
  - What would settle it: x–t and wavenumber U_c from numerical schlieren of an LES, against the LES velocity field; or schlieren and PIV on the same jet.

TR-schlieren SPOD wavenumbers are also the lag-free reference in the particle-lag question on [diagnostics-and-facilities](diagnostics-and-facilities.md); the convection-speed question bears on how good a reference they are.

## Methods and data
Which imaging suits which analysis, following the CLAUDE.md workflow:
- **TR schlieren or shadowgraph** (at least 10 frames per cycle, 10⁴–10⁵ frames) supports spectra, SPOD, BMD and SPOD frequency–time maps (Mazharmanesh et al. 2026), wavelets (Wong et al. 2023), (x, t) FFTs (Weightman 2019), DMD (Edgington-Mitchell et al. 2022), x–t diagrams and shock-position time series (Knast et al. 2018; Powis et al. 2016) and the SPOD → reconstruction → HPOD pipeline. A thin strip at 220–430 kfps gives lip-line phase and wavenumber at one steady tone (Mercier et al. 2017).
- **Bursts** (about 100 frames at 0.25–1 Mfps) give single-event visualisation, wave tracking, the lip transient, and mean and standard deviation over repeated sequences (Mitchell et al. 2012; Willert et al. 2012), but not spectra or SPOD.
- **Non-TR schlieren** (1 Hz to about 1 kHz, 10³ independent images) gives means, standard deviations, shock wavenumbers from the mean image, two-point correlations, standing-wave spacings and feature probability maps (Knast et al. 2018; Esfahani et al. 2021b; Edgington-Mitchell et al. 2015; Mason-Smith et al. 2015; Johnston & Edgington-Mitchell 2016). POD pairs of such sets would give the oscillation phase, which single-point correlation does not (suggestions in the Mason-Smith and Johnston notes).
- **Schlieren velocimetry** needs image pairs at a chosen Δt, one Δt per region because of the 2–3 decade speed range (Settles & Hargather 2017, p. 6, 13).
- **Condensation (Mie) imaging** needs per-case normalisation because ambient humidity varies ([Samimy et al. 1998](../Notes/samimy-1998-rectangular-jet-trailing-edge-control.md), p. 7).
- **BOS** gives mean density from at least 1,000 images with Abel inversion (Tan et al. 2015), or from one pair with PI-BOS for steady inviscid flow (Molnar et al. 2023). **Calibrated schlieren** needs a lens image per set-up and cut-off (Settles & Hargather 2017, p. 14–15).
- **Single events** need triggered TR schlieren plus pressure probes (Rezay Haghdoost et al. 2022).
- PIV, microphones (the frequency reference) and facility checks: [diagnostics-and-facilities](diagnostics-and-facilities.md).

## Relevance to our work
- **Schlieren campaigns.** TR schlieren is the lab's main diagnostic, and the SPOD → reconstruction → HPOD pipeline runs on it. Copy the Mazharmanesh et al. 2026 settings for BMD-quality data: 150 kHz, 0.5 µs LED, 512 × 200 px, 4 × 10⁵ frames. Then:
  - check that every tone and harmonic of interest sits below the 75 kHz Nyquist frequency (derived);
  - record the knife-edge orientation, cut-off and view angle, a no-flow tare and uncompressed images (Settles & Hargather 2017, p. 20–21);
  - set the cut-off for the target (shock cells or acoustics) and mask saturated pixels before BMD (the Settles note's inference);
  - check the LED intensity trace, then remove intensity drift with POD before SPOD;
  - size n_fft from the closest tone pair to be separated before choosing modes to rebuild; closer tones need wavelets or HPOD on the rebuilt data.
  - The amplitudes that HPOD returns from rebuilt schlieren are relative intensity, not density; a calibration-lens image per set-up would at least put them in deflection angle (the Settles note's proposal).
- **Independent checks on the pipeline.** With long records, a Powis-type shock centroid becomes a time series for Hilbert-transform frequency and amplitude, independent of HPOD on the rebuilt field; an x–t diagram of the SPOD-rebuilt field along the lip line should show one phase speed per selected mode; and for helical cases, where the edge tracker fails, SPOD → reconstruction → HPOD of the shock window replaces it (suggestions in the Powis and Settles notes).
- **Receptivity.** The λ ≈ 0.05d lip transient needs burst rates that long SA-Z records cannot reach (Mitchell et al. 2012 note).
- **PyFR staging LES.** Write numerical schlieren (∫∂ρ/∂x dz) and shadowgraph (∫∇²ρ dz) at the experiment's measuring range, with clipping, rather than |∇ρ| (Settles & Hargather 2017, p. 17; that note), and synthetic BOS, so that comparisons are like for like. The direct experimental set is the axisymmetric A1/A2 schlieren at NPR 2.19–2.25 (Mazharmanesh et al. 2026; see [screech-staging-and-mode-switching](screech-staging-and-mode-switching.md)). Mercier's lip-line phase analysis on numerical schlieren along y/D ≈ 0.55 would give the radiating shock and the loop's period count for each converged state (Mercier et al. 2017 note). The LES mean density can test Crocco–Busemann, and its velocity field the schlieren convection-speed bias.
- **Rocket noise.** Large-field methods scale to static firings: natural-background and retroreflective BOS (Raffel 2015, p. 9, 11–12), and solar-limb and CaK-line BOS, synthetic limb-edge schlieren and retroreflective shadowgraphy (Settles & Hargather 2017, p. 6–7, 10–12, 18). Shadowgraphy is better for shocks and gives a live image; BOS is better for weak gradients and quantitative work (p. 19).

## Papers
- [Krothapalli et al. 1986](../Notes/krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet.md): microphone-triggered phase-locked schlieren (not tagged).
- [Samimy et al. 1998](../Notes/samimy-1998-rectangular-jet-trailing-edge-control.md): condensation imaging, per-nozzle normalisation (not tagged).
- [Henderson et al. 2002](../Notes/henderson-2002-flow-structure-supersonic-impinging-jets.md): phase-locked spark shadowgraph (not tagged).
- [Mitchell et al. 2012](../Notes/mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren.md): the group's first HPV-1 bursts and the 2032 mm system; edge-line profiles resolve λ ≈ 0.05d lip bands.
- [Willert et al. 2012](../Notes/willert-2012-high-power-led-high-frame-rate-schlieren.md): overdriven pulsed CBT-120 LED source; burst statistics; first group two-point correlation.
- [Raffel 2015](../Notes/raffel-2015-background-oriented-schlieren-review.md): BOS review; recipe, accuracy, reconstruction routes, TR BOS.
- [Tan et al. 2015](../Notes/tan-2015-bos-density-axisymmetric-jets.md): group BOS → Abel → mean density recipe with synthetic error map.
- [Mason-Smith et al. 2015](../Notes/mason-smith-2015-underexpanded-jet-impinging-cylindrical-sections.md): two views fix a flapping plane; RMS images, two-point correlation and σ/μ from 1000 images.
- [Edgington-Mitchell et al. 2015](../Notes/edgington-mitchell-2015-staging-screeching-elliptical-jets.md): two-view mode classification; vortex and standing-wave spacing from snapshot statistics.
- [Powis et al. 2016](../Notes/powis-2016-impingement-tones-shock-instabilities-plug-nozzle.md): HPV-1 at two magnifications; first edge-detection shock tracking.
- [Johnston & Edgington-Mitchell 2016](../Notes/johnston-2016-underexpanded-jet-intrusive-tab-visualisation.md): tip rotation for two views; radial knife edge for vortices; brightest-pixel tracking.
- [Berry et al. 2017](../Notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md): 50–100 kHz schlieren POD; aliasing; drift removal.
- [Mercier et al. 2017](../Notes/mercier-2017-screech-feedback-loop-underexpanded-round-jets.md): 220–430 kfps thin-strip schlieren; lip-line phase and wavenumber peak fitting.
- [Settles & Hargather 2017](../Notes/settles-2017-recent-developments-schlieren-shadowgraph.md): schlieren and shadowgraph review; measuring range, calibrated schlieren, streak and velocimetry limits, CFD rendering.
- [Knast et al. 2018](../Notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md): HPV-1 bursts, x–t convection speeds, two views (not tagged).
- [Weightman 2019](../Notes/weightman-2019-sound-production-impinging-supersonic-jets.md): 500 kfps burst schlieren; (x, t) Fourier split.
- [Karami et al. 2020](../Notes/karami-2020-acoustic-hydrodynamic-waves-underexpanded-impinging-jets.md): x–t diagrams from LES (not tagged).
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
