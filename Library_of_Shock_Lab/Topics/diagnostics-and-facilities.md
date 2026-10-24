# Diagnostics and facilities

_Last updated: 2026-10-22 · 12 papers_

## Scope
How to measure velocity in shock-containing jets, and the facilities the measurements are made in. The page covers:
- PIV practice in shocked flow: tracer response and seeding, Δt and window size, laser-sheet alignment, lens distortion, sample sizes, phase recovery, and the statistics PIV can hand to models;
- facilities and their acoustic environment: anechoic design and data-quality checks, near-field microphone phase surveys, the group's non-anechoic jet rigs and their installation effects, and the shock-tube rigs.

Optical imaging (schlieren, TR schlieren, shadowgraph, BOS, interferometry, tomography), the mean density for base flows and image–simulation matching are on [schlieren-and-density-imaging](schlieren-and-density-imaging.md); a short summary is below.

Few notes are about the diagnostics themselves. The page therefore also draws on the setup sections of the group's screech, impinging-jet and twin-jet papers for working settings; those notes are marked "(not tagged)" under Papers.

Other topic pages cover the rest:
- the analysis algorithms: [modal-decomposition](modal-decomposition.md) and [time-frequency-methods](time-frequency-methods.md);
- the physics found with these tools: [screech](screech.md), [impinging-jets-and-edge-tones](impinging-jets-and-edge-tones.md), [non-axisymmetric-jets](non-axisymmetric-jets.md), [twin-jet-coupling](twin-jet-coupling.md), and [jet-noise-mechanisms](jet-noise-mechanisms.md) for the noise models that PIV statistics calibrate;
- full-scale acoustic instrumentation (intensity probes, phased arrays): [rocket-noise-measurements](rocket-noise-measurements.md);
- CFD numerics: [simulation-methods](simulation-methods.md).

## Current understanding
1. **Group PIV of shock-containing jets is not time-resolved.** Smoke with τ_p ≈ 2 µs, Δt of 0.48–1 µs, final windows of 0.02–0.03D and 8,000–10,000 snapshots ([Edgington-Mitchell et al. 2014, helical mode](../Notes/edgington-mitchell-2014-coherent-structure-helical-screech-mode.md), p. 827–828; [Edgington-Mitchell et al. 2018](../Notes/edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), p. 4; [Weightman 2019](../Notes/weightman-2019-sound-production-impinging-supersonic-jets.md), p. 26; [Tan et al. 2017](../Notes/tan-2017-broadband-velocity-fluctuations-screeching-jets.md), p. 2324) sit inside Ragni's no-bias criteria ([Ragni et al. 2011](../Notes/ragni-2011-particle-tracer-response-shocks-piv.md), p. 56). Shocks still add artificial fluctuation that grows with their strength, from 3% at NPR 3.4, where no normal shock is resolved (helical-mode paper, p. 829), to at least 8% predicted across the NPR 4.2 Mach disk ([Edgington-Mitchell et al. 2014, Mach disk](../Notes/edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md), p. 4–5). Dynamics therefore come from TR schlieren. PIV supplies velocity, phase-averaged structure, base flows and noise-model length scales, but not time scales or convection velocities ([Tan et al. 2019b](../Notes/tan-2019-equivalent-bbsan-source-reconstruction-screeching-jets.md), p. 7, 23).
2. **Calibration errors are larger than random PIV error if they are ignored, and both are cheap to remove.**
   - Sheet–target misalignment can bias turbulent stresses by up to 20%, and planar PIV has no after-the-fact correction for it ([Shehzad et al. 2021](../Notes/shehzad-2021-laser-sheet-alignment-piv.md), p. 3–4).
   - Lens distortion at the edge of a large sensor biased the mean velocity by up to about 80% ([Sun et al. 2021](../Notes/sun-2021-distortion-correction-large-sensor-piv.md), p. 11).
3. **The snapshot budget depends on the statistic.** About 30 triggered pairs per phase give phase averages to 5% of the peak velocity ([Alkislar et al. 2003](../Notes/alkislar-2003-screeching-rectangular-jet-stereo-piv.md), p. 128–129). The leading POD pair converges by 500–1,000 snapshots (Weightman 2019, p. 56–57), but length scales of the residual left after it is removed need at least 3,000 for 1% error (Tan et al. 2017, p. 2332).
4. **The group's jet rigs are not anechoic.** Tone frequency and phase are reliable but amplitudes are qualitative, and nearby reflecting plates add peaks (Edgington-Mitchell et al. 2018, p. 4; [Edgington-Mitchell et al. 2022](../Notes/edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 6–7). Purpose-built anechoic chambers qualify down to 150–160 Hz ([Mayer et al. 2019](../Notes/mayer-2019-bristol-aeroacoustic-wind-tunnel.md), p. 4). Even there, reflections end near-field phase surveys once the tone is 20 dB down, about 5.5D from the jet in a 10 × 8 × 8 m room ([Mercier et al. 2017](../Notes/mercier-2017-screech-feedback-loop-underexpanded-round-jets.md), p. 216–218).

## Schlieren and density imaging (summary)
Long-record TR schlieren is the group's main tool for dynamics: a Photron SA-Z at 100–200 kHz recording 10⁴–10⁵ frames per condition, which replaced phase-locked imaging and 102-frame bursts (Edgington-Mitchell et al. 2022, p. 6; [Mazharmanesh et al. 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), p. 4; Weightman 2019, p. 24–26). Its intensity is a path-integrated, knife-edge-dependent proxy for ∂ρ/∂x, so quantitative density needs BOS with Abel inversion, physics-informed BOS or tomographic interferometry. PIV and the optical methods meet in two places. First, the mean density for stability base flows is usually derived from PIV via Crocco–Busemann or constant stagnation density along streamlines, and only two group datasets have been checked against BOS ([Edgington-Mitchell et al. 2021](../Notes/edgington-mitchell-2020-waves-in-screeching-jets.md), p. 10; [Wong et al. 2021](../Notes/wong-2021-wavepacket-modelling-bbsan.md), p. 11). Second, TR-schlieren SPOD wavenumbers are the natural lag-free check on PIV modes (see the particle-lag question below). Set-ups, error budgets and open questions are on [schlieren-and-density-imaging](schlieren-and-density-imaging.md).

## PIV in shock-containing jets

### Tracer response
Ragni et al. 2011 fitted the exponential slip of particles across an oblique shock. The results:
- **No-bias criteria:** the response time is measured without bias if the window is no larger than the relaxation length ξ_p and Δt no larger than τ_p (p. 56).
- **Measured τ_p:** DEHS 1.9–2.0 µs, stored powders 2.4–3.3 µs, and dried powders through a 1 µm filter 0.56 µs (TiO₂) and 0.37 µs (SiO₂). The filter cuts seeding density (p. 61–62).
- **Spread:** PTV shows τ_p varies by a factor of four within one sample (p. 63).
- **Aero-optics:** tilt the line of sight 2–5° upstream and raise the f-number (p. 57–58).
- **Guideline:** Samimy & Lele's Stokes number ≤ 0.1 (p. 53).

**The group's smoke matches Ragni's DEHS.** Vicount 1300 smoke is nominally 300 nm (0.48 µs by Melling's estimate), but across a Mach disk at NPR 4.2 it relaxes in τ_p = 2.0 µs, like 600 nm particles (helical-mode paper, Fig. 3, p. 828, from Mitchell et al. 2013, not in the library). The same value is used by the Mach-disk paper (p. 4–5), Weightman 2019 (p. 26) and Tan et al. 2017 (p. 2324). Its consequences:
- **Artificial fluctuation scales with shock strength.** Behind a first-cell normal shock (U/U_e 1.7, M 2.2) the prediction is 4% (monodisperse) to 7% (log-normal), and 7% was measured in an elliptic jet; the NPR 3.4 round jet, with no resolvable normal shock, shows 3% (helical-mode paper, Table 2, p. 829). Across the NPR 4.2 Mach disk the prediction is at least 8%, and the anisotropy is inflated. The artificial peak extends over only about 0.2D, so lag cannot hide a recirculation bubble (Mach-disk paper, p. 4–5, 16–17; helical-mode paper, p. 830–832).
- **Stokes number at the tone.** On the flow scale τ_pU_e/D ≈ 0.04 (helical-mode paper, eq. 2.1, p. 828). At the tone, 2πfτ_p ≈ 0.1 for the C mode at about 7.7 kHz (the helical-mode note's arithmetic), right at the guideline, but about 0.2 for A modes near 16 kHz (the Ragni note's estimate). Dried, filtered powders would bring the A modes below 0.1.
- **Window and Δt.** The 0.03D window of Edgington-Mitchell et al. 2018 (SR ≈ 0.75 in the Ragni note) and the 0.39 mm window of the helical-mode paper (below the ≈ 1 mm relaxation length, with Δt < τ_p, in that note) are both inside the no-bias criteria.

**Other labs' seeding:**
- [Thethy et al. 2022](../Notes/thethy-2022-shock-diffraction-non-quiescent-medium.md) used TiO₂ with τ_p = 0.84 µs in 10 kHz PIV (p. 6).
- Paraffin of 0.6–0.8 µm ([Farghadan et al. 2026](../Notes/farghadan-2026-wave-interactions-screeching-jet.md), p. 4) and Ondina oil ([Nogueira et al. 2022](../Notes/nogueira-2021-closure-mechanism-a1-a2-screech.md), p. 6).
- Opposite size choices for jet and ambient. [Henderson et al. 2002](../Notes/henderson-2002-flow-structure-supersonic-impinging-jets.md) put 0.6 µm olive oil in the jet and 0.2–0.3 µm smoke in the ambient (p. 2); Ragni cites about 7 µs for olive oil (p. 54), probably for larger droplets. Alkislar et al. 2003 did the reverse, 0.3 µm oil in the jet (τ_p ≈ 0.25 µs, the note's estimate) and 1–5 µm smoke in the ambient, arguing that the large particles stay in subsonic regions (p. 124). Their centreline PIV matched pitot/static velocities through six shock cells, a direct lag check (Fig. 11, p. 134).
- Seed both the jet and the ambient air (Mach-disk paper, p. 4–5; helical-mode paper, p. 827).

### Group settings
- Δt: 0.88–1 µs (Weightman 2019, p. 26; Edgington-Mitchell et al. 2018, p. 4), and 480 ns in the 15 mm nozzle C-mode campaigns (Tan et al. 2017, p. 2324; [Tan et al. 2019a](../Notes/tan-2019-correlation-analysis-piv-screeching-jets.md), p. 15–16).
- Final windows: 0.019–0.034D (Weightman 2019, p. 26), 0.025–0.026D (helical-mode paper, Table 1, p. 827; Tan et al. 2017, p. 2324) and 0.026D ([Ivelja et al. 2024](../Notes/ivelja-2024-modal-analysis-screeching-elliptical-jets.md), p. 4).
- Processing: Soria multigrid cross-correlation.
- Cameras: the 15 mm nozzle campaigns stitched two PCO 4000 cameras (23 µm/px; adaptive Gaussian blending over a 7.5% overlap) into a 10D × 2.2D field, with a 1.5 mm sheet (helical-mode paper, p. 827; Tan et al. 2017, p. 2324). Later rigs use single large sensors, such as the Imperx B6640 at 6600 × 4400 px (Weightman 2019, p. 26; Farghadan et al. 2026, p. 4).
- Long acquisitions: 8,000 fields at 0.5 Hz is about 4.4 h of running, with up to 1% NPR drift from the regulator, and mode stability over the run was not checked (helical-mode paper, p. 825, 827, with the note's arithmetic).
- Conventions: the NPR 3.4 C-mode dataset is quoted at St 0.30 (helical-mode paper, p. 829) and 0.26 (Tan et al. 2017, Table 2, p. 2325). The Tan 2017 note traces the 0.26 to U_j = M_j a∞ (isentropic U_j gives 0.31), and the Re of 6.8–8.6 × 10⁵ quoted for the same data also differ by definition (helical-mode note). State the definition with any St or Re.

### Calibration, stereo and stitching
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

**Stereo and stitching.** Alkislar et al. 2003 used motorised Scheimpflug mounts about 90° apart, imaging cross-planes from one side (p. 126–127), and stitched four 65 × 105 mm zones with linear weights over 30 mm overlaps (p. 126). Their mesh-free processing (Lourenco & Krothapalli: particle masking and pairing, a second-order least-squares fit to at least ten displacements) quotes 0.03 px, about ±2.5 m s⁻¹ (p. 125–126).

### Sample size and phase
**POD convergence.** Weightman 2019's jackknife tests (p. 56–57):
- The leading POD pair converges by N ≈ 500 snapshots in resonant flows, and modes 3–4 by about 1,000.
- Without a dominant mode it takes about 2,500.

Bootstrap 95% confidence intervals on the mean are at most 0.1 px (p. 159–160).

**Residual statistics need more.** Tan et al. 2017 removed the tone by subtracting the leading POD modes, then degraded the data and redid the chain from POD to residual length scales (p. 2332). The test case was the hardest, the precessing B mode at NPR 2.6, which needed 18 modes (38% of the energy) against two for the C mode (p. 2326–2328):
- snapshots: error below 1% for at least 3,000 (about 8% at 1,000, read from a figure);
- noise: below 1% for SNR > 500;
- resolution: 1.4% at 80% vector sampling, and above 1% once Δx/L > 0.1 (Table 4).

Both Tan et al. 2019 papers quote these budgets for their 8,500-field data (2019a, p. 18; 2019b, p. 20). Statistics of the residual thus need several times the snapshots that the pair itself needs.

**Shocks in the POD.** Masking the shock-containing core left the POD modes and energies unchanged at a 0.025D window (Tan et al. 2017, p. 2324–2325), so the shocks do not drive the modes there. POD of the transverse velocity alone separates the pair more cleanly than POD of both components, with the same mode shapes (helical-mode paper, p. 834; Tan et al. 2017, p. 2325).

**Phase recovery.**
- *POD-pair phase.* Weightman 2019 binned by the pair's phase in 5° bins of about 130 fields each (p. 102). The group prefers POD phase to microphone triggering because it uses the whole field and is less sensitive to turbulent jitter, but it needs a clear phase-coherent component, i.e. a self-excited or forced flow (helical-mode paper, p. 833–834).
- *Microphone tagging.* Henderson et al. 2002 tagged each PIV pair with the microphone phase and got 20–60 fields per bin from 800 pairs (p. 2, 5).
- *Microphone triggering.* Alkislar et al. 2003 band-passed a near-field microphone into a frequency tracker (400 Hz – 12 kHz), divided the trigger by up to 10,000 to suit the 30 Hz cameras, and delayed it in 0.1 µs steps to get 16 phases at 22.5° (Fig. 4, p. 128–129). Only eight were measured: the other half-cycle is their mirror image, which assumes exact antisymmetry and was checked by eye at one phase pair (Fig. 5, p. 130–131). Each phase has about 35 pairs, against Weightman's 130 per bin. The random part includes vortex-to-vortex jitter (p. 146), and with 35 samples a threshold such as R_uu > 0.6 has a standard error of about 0.1 (the note's estimate).
- *Other routes.* 800 snapshots at 3 Hz were enough to build a 3D helix from 2D planes ([Oberleithner et al. 2011](../Notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md), p. 7, 21–22). Space-only Hilbert POD works on shuffled snapshots ([Raiola & Kriegseis 2025](../Notes/raiola-2025-hilbert-pod.md), p. 13, 15).

### PIV fields as model input
PIV mean fields are the usual base flows for stability analysis, with density derived as in the summary above. Weightman 2019 also ray-traced acoustics through PIV fields. It preferred POD phase reconstructions, because the real shocks in raw PIV cause spurious reflections (p. 116–117), and the results are qualitative only (p. 112–115).

PIV also calibrates statistical noise-source models (the models are on [jet-noise-mechanisms](jet-noise-mechanisms.md)). Tan et al. 2019a,b took k, ε, integral length scales and mean pressure from 2D-2C data:
- The missing component and gradients come from statistical axisymmetry, with ν at ambient conditions. Both papers say PIV resolution limits ε but do not correct for it (2019a, p. 19; 2019b, eqs. 22–23, p. 22). The 2019a note reads ε as a resolved-scale estimate, which favours the k^{1/2}D_j/V̄₁ length scale because it needs no gradients.
- Correlations are integrated only to r = 0.1, to avoid the negative lobes of screeching jets (2019a, p. 19).
- Mean static pressure comes from the mean velocity: isentropic in the core, van Oudheusden's mean-momentum integration in the shear layer, and no Mach-disk treatment (2019b, eqs. 13–20, p. 17–18). The 2019b note adds that this neglects the Reynolds-stress divergence.
- The sonic line assumes constant total temperature, and shock reflection points are taken where ∂V̄₁/∂x = 0 on the high-speed side (2019a, p. 20–21).

These statistics agree reasonably with k–ω SST RANS of the same nozzle, except near the exit, where the shear layer is thin and the PIV unreliable, and in k and ε at M_j 1.59 (2019b, p. 29–33). The integral time scale and the convection velocity cannot come from non-TR PIV and are modelled (2019b, p. 7, 11, 23).

## Facilities and acoustic environment

### Anechoic facilities
Mayer et al. 2019 is the library's design reference:
- **Chamber:** anechoic to 160 Hz under ISO 3745 for sources up to 0.65 m (p. 4).
- **Fan noise:** the fan sits about 6 m away in an isolated room, and the silencers are sized on dynamic insertion loss (p. 2–4).
- **Contraction:** Su contractions with powers 3 and 5 joined by a cubic spline (p. 6–7). Steady RANS was used only as a design screen; there is no comparison between the CFD and the hot wire (p. 8–10).
- **Free-stream turbulence:** 0.09% and 0.12%, after high-pass filtering at U/(2L_TS) (p. 1, 8).

Its data-quality checks transfer directly to jet rigs:
- coherence below 0.05 between a microphone at the fan and one in the chamber (p. 10);
- a velocity exponent N(f) > 7, which flags jet mixing noise (p. 10).

The supersonic-jet chambers in the library are similar: Syracuse Skytop at 150 Hz ([Berry et al. 2017](../Notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md), p. 2–3), OSU GDTL at 160 Hz ([Esfahani et al. 2021b](../Notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md), p. 5), the NASA Glenn 20 m dome (Henderson et al. 2002, p. 2) and the LMFA 10 × 8 × 8 m room, which runs a continuous 0.85 kg s⁻¹ supply up to NPR 3.9 (Mercier et al. 2017, p. 205). Mercier et al. also give a repeatability benchmark: the same M_j 1.15 jet, measured in 2011 and 2016, gave matching far-field screech and BBSAN spectra and shock spacings within 1.3% (p. 206).

### Near-field phase surveys
Mercier et al. 2017 located screech sources by traversing one microphone against a fixed reference (p. 215–221):
- **Phase averaging, not cross-spectra.** Close to the jet, hydrodynamic and acoustic pressure mix, so 2π jumps cannot be told from real phase changes. The reference is band-passed with a zero-lag FIR filter (±10% of f_s), periods are marked from its maxima, and the moving signal is averaged in 20 bins per period over two periods; one wavefront is then followed by its zero crossings (p. 218–219). This needs time-resolved signals and one steady tone.
- **Geometry.** A radial traverse in the exit plane cannot separate the 3rd–5th shock tips, while an axial traverse at y = 1.5D can (p. 216, 219–221).
- **Reflections.** Even in the anechoic room the tone falls 20 dB by y ≈ 5.5D, beyond which reflections dominate the phase (Fig. 8, p. 216–218).

For the group's non-anechoic rigs the Mercier note therefore recommends the schlieren route: cross-spectral phase along the lip line from TR schlieren, which Mercier et al. also used (p. 222).

### The group's jet rigs
**Not anechoic.** The Shock Lab group rigs are not anechoic (Edgington-Mitchell et al. 2018, p. 4; helical-mode paper, p. 829; Weightman 2019, p. 24; Wong et al. 2021, p. 8). Studies therefore use tone frequency and phase, not amplitude ([Knast et al. 2018](../Notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md), p. 3).

**Installation matters.**
- A plate about 2D upstream of the exit reflects upstream waves and is blamed for extra peaks at NPR ≥ 2.9 (Edgington-Mitchell et al. 2022, p. 6–7).
- Weightman 2019 ran PIV and schlieren in two facilities with the same nozzle, because the PIV cage's stresses spoil schlieren (p. 23). The acoustics of the two disagreed for two foam cases, and that schlieren was discarded (p. 66). This is the cross-facility counterpart of Mercier's cross-campaign check above.

**Flow and supply.**
- Contraction ratios are 81 (Weightman 2019, p. 29), 93 for the 15 mm nozzle, which has a 5 mm lip (Tan et al. 2019a, p. 15; helical-mode paper, p. 825), and above 100:1 ([Mazharmanesh et al. 2025](../Notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md), p. 4).
- The regulator drifts by up to 1% (Weightman 2019, p. 23; helical-mode paper, p. 825).
- The room temperature is held to about 0.1 K ([Wong et al. 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 5).
- For contrast, the LMFA nozzle has a 4.4:1 contraction and a 0.5 mm lip on 38 mm, M_j is held to ±0.2%, and the stagnation temperature settles at 30 ± 2 °C after half an hour (Mercier et al. 2017, p. 205).

### Shock-tube and PDC rigs
These record single events:
- TR schlieren is triggered by a PCB transducer ([Rezay Haghdoost et al. 2022](../Notes/rezay-haghdoost-2022-shock-dividers.md), p. 3–4).
- Shock speed comes from correlating frames at 80 kfps (Thethy et al. 2022, p. 13).
- The background jet is measured from 53–55 PIV pairs taken before the shock arrives (Thethy et al. 2022, p. 13).

## Disagreements and open questions
- **Does particle lag distort the modes used to find upstream waves?**
  - Evidence so far: Ragni's τ_p values come from steady shocks only. The Mach-disk paper argues lag is small for the mean field, and Alkislar et al. 2003 matched PIV to probes through six shock cells with finer oil (p. 134). Masking the core leaves the POD modes unchanged (Tan et al. 2017, p. 2324–2325), but that does not test lag at the tone. There the Stokes number is about 0.1 for the C mode (helical-mode note) and 0.2 for A modes (Ragni note), so the A1/A2 data are the most exposed.
  - Why it matters: the k_x-filtered guided-jet mode is a weak signal next to shocks (Edgington-Mitchell et al. 2018).
  - What would settle it: an in-house oblique-shock test of the group's smoke, then a repeat of the POD-pair and k_x analysis with dried, filtered TiO₂ (τ_p < 0.6 µs), compared with TR-schlieren SPOD wavenumbers at the same NPR.
- **Are the random-stress peaks behind the reflection points real?**
  - Evidence so far: in the NPR 3.4 data the coherent axial stress peaks just upstream of each shock reflection point and the random stress just downstream (helical-mode paper, p. 836–837). Tan et al. 2019a find coherent and random k in anti-phase there and read it as transfer from large to small scales (p. 22). The helical-mode note points out that shock-induced artificial fluctuation is strongest at the same places, and neither paper separates the two.
  - Why it matters: the residual k, ε and length scales that calibrate the noise models inherit any artefact.
  - What would settle it (a suggestion): predict the artificial fluctuation at each oblique reflection with the particle model behind the helical-mode paper's Table 2 (p. 829) and subtract it, repeat with low-τ_p seeding, or compare with the residual from an LES of the same jet.
- **What counts as "random" in a triple decomposition?**
  - The split depends on how phase is found. A triggered average puts vortex-to-vortex jitter into u″ (Alkislar et al. 2003, p. 146), and POD phase is less sensitive to jitter (helical-mode paper, p. 833). Rebuilding the pair snapshot by snapshot (Tan et al. 2017) counts cycle-to-cycle amplitude modulation as coherent, while phase binning (Weightman 2019, p. 102) puts it in the random part (the Tan 2017 note's reading). No paper compares the choices on one dataset.
  - What would settle it: apply all three to one dataset, or measure the modulation directly with SPOD reconstruction and HPOD on TR data ([time-frequency-methods](time-frequency-methods.md)).
- **How much does the rig shape the resonance?**
  - Edgington-Mitchell et al. 2022 attribute extra peaks to the upstream plate but did not remove it.
  - What would settle it: repeat the NPR sweep with the plate foam-covered or removed, and add a Mayer-style coherence check against compressor and valve noise.

Which mean density PIV-based base flows should use is an open question on [schlieren-and-density-imaging](schlieren-and-density-imaging.md).

## Methods and data
Which diagnostic suits which analysis, following the CLAUDE.md workflow:
- **Non-TR PIV** gives:
  - mean, RMS and higher-moment fields;
  - POD pairs, phase averages and k_x filtering (Edgington-Mitchell et al. 2018), or microphone-triggered phase averages (Alkislar et al. 2003);
  - the broadband residual after the pair is subtracted, with k, ε and spatial length scales (Tan et al. 2017; 2019a);
  - base flows and mean pressure for models (Tan et al. 2019b);
  - space-only HPOD (Raiola & Kriegseis 2025).

  It gives no time scales or convection velocities.
- **Single events** in the shock-tube rigs need triggered TR schlieren plus pressure probes (Rezay Haghdoost et al. 2022), with PIV of the background flow before the shock arrives (Thethy et al. 2022).
- **Microphones** are the frequency reference throughout. In the non-anechoic rigs use their frequency and phase, not amplitude (Knast et al. 2018), and check coherence against supply noise (Mayer et al. 2019). Near-field phase surveys need time-resolved signals and phase averaging where hydrodynamic and acoustic pressure mix (Mercier et al. 2017).
- **TR schlieren, BOS and the other optical methods**: [schlieren-and-density-imaging](schlieren-and-density-imaging.md).

## Relevance to our work
- **PIV.**
  - Align the sheet before calibrating.
  - Check edge distortion on the large sensors and remap vector positions if needed.
  - Quote τ_p together with SR, TR and 2πfτ_p at the tone.
  - Use at least 1,000 snapshots for the leading pairs, 3,000 with SNR > 500 for residual statistics, and about 10⁴ for means.
  - Consider dried, filtered powders where shock-adjacent modes matter, above all for A modes.
  - Log the NPR drift over long runs, and state the St and Re definitions.
- **Rigs.** Record the regulator drift and room temperature with each run, keep the upstream plate in mind when reading extra peaks, and treat amplitudes as qualitative. Locate sources from TR-schlieren phase rather than near-field microphone surveys.
- **PyFR staging LES.** The group's PIV of A1 and A2 jets at NPR 2.10 and 2.25 (Edgington-Mitchell et al. 2018, p. 6–11) gives velocity means and POD pairs to set against the LES, within the particle-lag caveat above, which is largest for A modes. The LES also gives what PIV must model (time scales, the true mean pressure, 3D k and ε), so it can test the PIV pressure reconstruction and the axisymmetric closure (Tan 2019b note). The image comparisons are on [schlieren-and-density-imaging](schlieren-and-density-imaging.md).
- **Rocket noise.** Mayer-style coherence and N(f) checks suit model-scale tests. The PIV-calibrated source coefficients are for cold jets only (Tan et al. 2019a, p. 12).

## Papers
- [Krothapalli et al. 1999](../Notes/krothapalli-1999-flow-field-noise-supersonic-impinging-jet.md): M 1.5 C-D jet (NPR 3.7) on a ground plane under a lift plate: PIV u_c 0.52–0.56 rises with h/d; staged tones fit Powell's loop only with p = −0.4; OASPL +8 dB (synthesis pending).
- [Prasad 2000](../Notes/prasad-2000-stereoscopic-piv-review.md): Stereo PIV review: translation vs Scheimpflug angular set-ups, σ_Δz/σ_Δx = 1/tan θ, geometric vs 2-D/3-D (Soloff) calibration; target–sheet misregistration unanalysed (synthesis pending)
- [Henderson et al. 2002](../Notes/henderson-2002-flow-structure-supersonic-impinging-jets.md): PIV binned by microphone phase; olive-oil and smoke seeding; NASA Glenn dome (not tagged).
- [Alkislar et al. 2003](../Notes/alkislar-2003-screeching-rectangular-jet-stereo-piv.md): microphone-triggered stereo PIV with half-cycle mirroring and about 35 pairs per phase; fine jet seeding checked against probes.
- [Viswanathan 2004](../Notes/viswanathan-2004-aeroacoustics-hot-jets.md): Hot subsonic jets, 3 nozzle sizes: the 'dipole' hump is a low-Re effect (Re_crit ≈ 4×10⁵); no V⁶; OAPWL exponent 8.74→7.98 with TR; rig noise faked old trends (synthesis pending)
- [Oberleithner et al. 2011](../Notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md): 3D helix from 800 non-TR stereo-PIV snapshots via a POD pair (not tagged).
- [Ragni et al. 2011](../Notes/ragni-2011-particle-tracer-response-shocks-piv.md): oblique-shock tracer-response test; τ_p of common seeders; SR, TR ≤ 1 criteria.
- [Mitchell et al. 2011](../Notes/mitchell-2011-particle-relaxation-piv-cross-correlation.md): Noiseless-correlation model of PIV across a normal shock: polydisperse seed lags more; in-window shock adds artificial u_rms up to 0.3U; 35% behind a jet Mach disc (synthesis pending)
- [Mitchell et al. 2013](../Notes/mitchell-2013-near-field-structure-underexpanded-elliptic-jets.md): group smoke τ_p = 2.0 µs measured across a Mach disc; full Table 2 of predicted vs measured shock-induced artefact (synthesis pending).
- [Edgington-Mitchell et al. 2014, Mach disk](../Notes/edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md): smoke τ_p ≈ 2 µs and at least 8% predicted artificial fluctuation across a Mach disk.
- [Edgington-Mitchell et al. 2014, helical mode](../Notes/edgington-mitchell-2014-coherent-structure-helical-screech-mode.md): the group's NPR 3.4 PIV settings; measured smoke τ_p; 3% artificial fluctuation without a normal shock; POD phase preferred to triggering.
- [Berry et al. 2017](../Notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md): Syracuse Skytop anechoic chamber (not tagged).
- [Mercier et al. 2017](../Notes/mercier-2017-screech-feedback-loop-underexpanded-round-jets.md): near-field two-microphone phase averaging and its reflection limit; repeatability across campaigns; LMFA anechoic jet.
- [Tan et al. 2017](../Notes/tan-2017-broadband-velocity-fluctuations-screeching-jets.md): snapshot, SNR and resolution budgets for residual statistics after POD-mode removal; core masking leaves the modes unchanged.
- [Settles & Hargather 2017](../Notes/settles-2017-recent-developments-schlieren-shadowgraph.md): Schlieren/shadowgraph since 2001: CMOS cameras, ≤100 ns LEDs, BOS practice, digital x–t streaks, path-biased schlieren velocimetry, calibrated and CFD schlieren (synthesis pending)
- [Edgington-Mitchell et al. 2018](../Notes/edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md): standard group PIV settings for screech (not tagged).
- [Knast et al. 2018](../Notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md): tone frequency and phase, not amplitude, in a non-anechoic rig (not tagged).
- [Bell et al. 2018](../Notes/bell-2018-coupled-underexpanded-supersonic-twin-jets.md): planar PIV of twin Mach-disk jets; light sheet diffracted by the first jet's Mach disk (synthesis pending)
- [Weightman et al. 2018](../Notes/weightman-2018-signatures-shear-layer-unsteadiness-pod.md): POD convergence by resampling; Stuart-vortex synthetic test of POD signatures of shear-layer unsteadiness (synthesis pending).
- [Mayer et al. 2019](../Notes/mayer-2019-bristol-aeroacoustic-wind-tunnel.md): anechoic open-jet facility design and acoustic data-quality checks.
- [Weightman 2019](../Notes/weightman-2019-sound-production-impinging-supersonic-jets.md): PIV settings, POD convergence, two-facility practice; ray tracing through PIV fields.
- [Tan et al. 2019a](../Notes/tan-2019-correlation-analysis-piv-screeching-jets.md): k, ε and length scales from planar PIV under an axisymmetric closure; no time scales.
- [Tan et al. 2019b](../Notes/tan-2019-equivalent-bbsan-source-reconstruction-screeching-jets.md): mean pressure from PIV velocity; PIV statistics checked against k–ω SST RANS.
- [Wong et al. 2020](../Notes/wong-2020-azimuthal-decomposition-radiated-noise-shock-containing-jets.md): primary description and ISO 3745 qualification of the SJAF anechoic chamber; two-microphone azimuthal method (synthesis pending)
- [Edgington-Mitchell et al. 2021](../Notes/edgington-mitchell-2020-waves-in-screeching-jets.md): PIV-derived density checked with tomographic BOS (not tagged).
- [Esfahani et al. 2021b](../Notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md): OSU GDTL anechoic chamber (not tagged).
- [Shehzad et al. 2021](../Notes/shehzad-2021-laser-sheet-alignment-piv.md): laser sheet aligned to the target before calibration; applies to planar PIV.
- [Sun et al. 2021](../Notes/sun-2021-distortion-correction-large-sensor-piv.md): lens-distortion correction for large sensors; remap vectors after PIV.
- [Wong et al. 2021](../Notes/wong-2021-wavepacket-modelling-bbsan.md): non-anechoic rig; PIV-derived mean density agrees with BOS (not tagged).
- [Edgington-Mitchell et al. 2022](../Notes/edgington-mitchell-2022-unifying-theory-jet-screech.md): reflecting plate upstream of the exit (not tagged).
- [Nogueira et al. 2022](../Notes/nogueira-2021-closure-mechanism-a1-a2-screech.md): Pprime PIV seeding (not tagged).
- [Rezay Haghdoost et al. 2022](../Notes/rezay-haghdoost-2022-shock-dividers.md): transducer-triggered single-event schlieren (not tagged).
- [Thethy et al. 2022](../Notes/thethy-2022-shock-diffraction-non-quiescent-medium.md): TiO₂ high-speed PIV; shock speed and background jet in a shock-tube rig (not tagged).
- [Wong et al. 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md): room-temperature control (not tagged).
- [Ivelja et al. 2024](../Notes/ivelja-2024-modal-analysis-screeching-elliptical-jets.md): sheet-misalignment bias fixed by symmetry (not tagged).
- [Mazharmanesh et al. 2025](../Notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md): contraction ratio above 100:1 (not tagged).
- [Raiola & Kriegseis 2025](../Notes/raiola-2025-hilbert-pod.md): space-only HPOD for non-TR PIV (not tagged).
- [Farghadan et al. 2026](../Notes/farghadan-2026-wave-interactions-screeching-jet.md): large-sensor PIV with paraffin seeding (not tagged).
- [Mazharmanesh et al. 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md): reference TR-schlieren settings (not tagged).

- [Willert & Gharib 1991](../Notes/willert-1991-digital-particle-image-velocimetry.md): Founding FFT cross-correlation DPIV: 32² px windows, N/3 shift limit, 3-point Gaussian sub-pixel fit, ≈0.01 px floor, 1000:1 range; 30 Hz video of a vortex ring (synthesis pending)
- [Soloff et al. 1997](../Notes/soloff-1997-distortion-compensation-generalized-stereoscopic-piv.md): Soloff method: per-camera polynomial map X = F(x), cubic in x1,x2 and quadratic in x3 from 3 target planes; 3C displacement by least squares on 4×3 ∇F system (synthesis pending)
- [Willert 1997](../Notes/willert-1997-stereoscopic-dpiv-wind-tunnel-flows.md): Two-camera Scheimpflug stereo PIV for non-symmetric set-ups: general 3C geometry, projective dewarping, multi-pass offset windows; ~6 µm in-plane, 10 µm out-of-plane (synthesis pending)
- [Stanislas et al. 2005](../Notes/stanislas-2005-second-international-piv-challenge.md): 15 PIV/PTV codes on 3 cases: real-jet rms 0.05–0.18 px set by window size; peak locking at d_τ ≈ 1 px; deformation cuts noise ~100× in spectra near walls; no single best code (synthesis pending)
- [Wieneke 2005](../Notes/wieneke-2005-stereo-piv-self-calibration-particle-images.md): Stereo-PIV self-calibration: correlate dewarped cam-1/cam-2 particle images → disparity map → triangulate, fit sheet plane, remap; <0.1 px residual; 3-media model (synthesis pending)
- [Willert et al. 2012](../Notes/willert-2012-high-power-led-high-frame-rate-schlieren.md): Overdriven pulsed CBT-120 LED (≥120 A, 0.5–2 µs) as schlieren source: 102-frame MHz bursts of NPR 5.2 impinging jet; 1 kHz two-point correlations at NPR 2.93 (synthesis pending)
- [Parikh et al. 2023](../Notes/parikh-2023-lego-calibration-targets-large-fov-piv.md): Hand-built two-level LEGO stereo-PIV target (380 × 1150 mm) vs LaVision Type 31: fit error 2.5–3× higher but ≈ 0.05–0.15 mm; u matches to 0.8% U; binarise images (synthesis pending)