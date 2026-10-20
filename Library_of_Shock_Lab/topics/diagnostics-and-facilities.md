# Diagnostics and facilities

_Last updated: 2026-10-21 · 9 papers_

## Scope
How to measure velocity in shock-containing jets, and the facilities the measurements are made in. The page covers:
- PIV practice in shocked flow: tracer response and seeding, Δt and window size, laser-sheet alignment, lens distortion, sample sizes and phase recovery;
- facilities and their acoustic environment: anechoic design and data-quality checks, the group's non-anechoic jet rigs and their installation effects, and the shock-tube rigs.

Optical imaging (schlieren, TR schlieren, shadowgraph, BOS, interferometry, tomography), the mean density for base flows and image–simulation matching are on [schlieren-and-density-imaging](schlieren-and-density-imaging.md); a short summary is below.

Few notes are about the diagnostics themselves. The page therefore also draws on the setup sections of the group's screech, impinging-jet and twin-jet papers for working settings; those notes are marked "(not tagged)" under Papers.

Other topic pages cover the rest:
- the analysis algorithms: [modal-decomposition](modal-decomposition.md) and [time-frequency-methods](time-frequency-methods.md);
- the physics found with these tools: [screech](screech.md), [impinging-jets-and-edge-tones](impinging-jets-and-edge-tones.md), [non-axisymmetric-jets](non-axisymmetric-jets.md) and [twin-jet-coupling](twin-jet-coupling.md);
- full-scale acoustic instrumentation (intensity probes, phased arrays): [rocket-noise-measurements](rocket-noise-measurements.md);
- CFD numerics: [simulation-methods](simulation-methods.md).

## Current understanding
1. **Group PIV of shock-containing jets is not time-resolved.** It uses 600 nm smoke (τ_p ≈ 2 µs), Δt ≈ 1 µs, final windows of 0.02–0.03D and 8,000–10,000 snapshots ([Edgington-Mitchell et al. 2018](../notes/edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), p. 4; [Weightman 2019](../notes/weightman-2019-sound-production-impinging-supersonic-jets.md), p. 26). These settings sit inside Ragni's no-bias criteria ([Ragni et al. 2011](../notes/ragni-2011-particle-tracer-response-shocks-piv.md), p. 56). Even so, a normal shock still adds at least 8% artificial fluctuation ([Edgington-Mitchell et al. 2014](../notes/edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md), p. 4–5). Dynamics therefore come from TR schlieren, and PIV supplies velocity, phase-averaged structure and base flows.
2. **Calibration errors are larger than random PIV error if they are ignored, and both are cheap to remove.**
   - Sheet–target misalignment can bias turbulent stresses by up to 20%, and planar PIV has no after-the-fact correction for it ([Shehzad et al. 2021](../notes/shehzad-2021-laser-sheet-alignment-piv.md), p. 3–4).
   - Lens distortion at the edge of a large sensor biased the mean velocity by up to about 80% ([Sun et al. 2021](../notes/sun-2021-distortion-correction-large-sensor-piv.md), p. 11).
3. **The group's jet rigs are not anechoic.** Tone frequency and phase are reliable but amplitudes are qualitative, and nearby reflecting plates add peaks (Edgington-Mitchell et al. 2018, p. 4; [Edgington-Mitchell et al. 2022](../notes/edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 6–7). Purpose-built anechoic chambers qualify down to 150–160 Hz ([Mayer et al. 2019](../notes/mayer-2019-bristol-aeroacoustic-wind-tunnel.md), p. 4).

## Schlieren and density imaging (summary)
Long-record TR schlieren is the group's main tool for dynamics: a Photron SA-Z at 100–200 kHz recording 10⁴–10⁵ frames per condition, which replaced phase-locked imaging and 102-frame bursts (Edgington-Mitchell et al. 2022, p. 6; [Mazharmanesh et al. 2026](../notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), p. 4; Weightman 2019, p. 24–26). Its intensity is a path-integrated, knife-edge-dependent proxy for ∂ρ/∂x, so quantitative density needs BOS with Abel inversion, physics-informed BOS or tomographic interferometry. PIV and the optical methods meet in two places. First, the mean density for stability base flows is usually derived from PIV via Crocco–Busemann or constant stagnation density along streamlines, and only two group datasets have been checked against BOS ([Edgington-Mitchell et al. 2021](../notes/edgington-mitchell-2020-waves-in-screeching-jets.md), p. 10; [Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md), p. 11). Second, TR-schlieren SPOD wavenumbers are the natural lag-free check on PIV modes (see the particle-lag question below). Set-ups, error budgets and open questions are on [schlieren-and-density-imaging](schlieren-and-density-imaging.md).

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
- [Thethy et al. 2022](../notes/thethy-2022-shock-diffraction-non-quiescent-medium.md) used TiO₂ with τ_p = 0.84 µs in 10 kHz PIV (p. 6).
- Paraffin of 0.6–0.8 µm ([Farghadan et al. 2026](../notes/farghadan-2026-wave-interactions-screeching-jet.md), p. 4) and Ondina oil ([Nogueira et al. 2022](../notes/nogueira-2021-closure-mechanism-a1-a2-screech.md), p. 6).
- 0.6 µm olive oil in the jet with 0.2–0.3 µm smoke in the ambient ([Henderson et al. 2002](../notes/henderson-2002-flow-structure-supersonic-impinging-jets.md), p. 2). Ragni cites about 7 µs for olive oil (p. 54), probably for larger droplets.
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

### PIV fields as model input
PIV mean fields are the usual base flows for stability analysis, with density derived as in the summary above. They have also carried acoustic ray tracing: Weightman 2019 ray-traced acoustics through PIV fields. It preferred POD phase reconstructions, because the real shocks in raw PIV cause spurious reflections (p. 116–117). The results are qualitative only (p. 112–115).

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

The supersonic-jet chambers in the library are similar: Syracuse Skytop at 150 Hz ([Berry et al. 2017](../notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md), p. 2–3), OSU GDTL at 160 Hz ([Esfahani et al. 2021b](../notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md), p. 5) and the NASA Glenn 20 m dome (Henderson et al. 2002, p. 2).

### The group's jet rigs
**Not anechoic.** The Shock Lab group rigs are not anechoic (Edgington-Mitchell et al. 2018, p. 4; Weightman 2019, p. 24; Wong et al. 2021, p. 8). Studies therefore use tone frequency and phase, not amplitude ([Knast et al. 2018](../notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md), p. 3).

**Installation matters.**
- A plate about 2D upstream of the exit reflects upstream waves and is blamed for extra peaks at NPR ≥ 2.9 (Edgington-Mitchell et al. 2022, p. 6–7).
- Weightman 2019 ran PIV and schlieren in two facilities with the same nozzle, because the PIV cage's stresses spoil schlieren (p. 23). The acoustics of the two disagreed for two foam cases, and that schlieren was discarded (p. 66). This is a useful cross-facility check.

**Flow and supply.**
- Contraction ratios are 81 (Weightman 2019, p. 29) and above 100:1 ([Mazharmanesh et al. 2025](../notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md), p. 4).
- The regulator drifts by up to 1% (Weightman 2019, p. 23).
- The room temperature is held to about 0.1 K ([Wong et al. 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 5).

### Shock-tube and PDC rigs
These record single events:
- TR schlieren is triggered by a PCB transducer ([Rezay Haghdoost et al. 2022](../notes/rezay-haghdoost-2022-shock-dividers.md), p. 3–4).
- Shock speed comes from correlating frames at 80 kfps (Thethy et al. 2022, p. 13).
- The background jet is measured from 53–55 PIV pairs taken before the shock arrives (Thethy et al. 2022, p. 13).

## Disagreements and open questions
- **Does particle lag distort the modes used to find upstream waves?**
  - Evidence so far: Ragni's τ_p values come from steady shocks only. Edgington-Mitchell et al. 2014 argue lag is small for the mean field. The estimated Stokes number at screech frequency (about 0.2) exceeds the guideline.
  - Why it matters: the k_x-filtered guided-jet mode is a weak signal next to shocks (Edgington-Mitchell et al. 2018).
  - What would settle it: an in-house oblique-shock test of the group's smoke, then a repeat of the POD-pair and k_x analysis with dried, filtered TiO₂ (τ_p < 0.6 µs), compared with TR-schlieren SPOD wavenumbers at the same NPR.
- **How much does the rig shape the resonance?**
  - Edgington-Mitchell et al. 2022 attribute extra peaks to the upstream plate but did not remove it.
  - What would settle it: repeat the NPR sweep with the plate foam-covered or removed, and add a Mayer-style coherence check against compressor and valve noise.

Which mean density PIV-based base flows should use is an open question on [schlieren-and-density-imaging](schlieren-and-density-imaging.md).

## Methods and data
Which diagnostic suits which analysis, following the CLAUDE.md workflow:
- **Non-TR PIV** gives:
  - mean and RMS fields;
  - POD pairs, phase averages and k_x filtering (Edgington-Mitchell et al. 2018);
  - base flows for stability analysis;
  - space-only HPOD (Raiola & Kriegseis 2025).
- **Single events** in the shock-tube rigs need triggered TR schlieren plus pressure probes (Rezay Haghdoost et al. 2022), with PIV of the background flow before the shock arrives (Thethy et al. 2022).
- **Microphones** are the frequency reference throughout. In the non-anechoic rigs use their frequency and phase, not amplitude (Knast et al. 2018), and check coherence against supply noise (Mayer et al. 2019).
- **TR schlieren, BOS and the other optical methods**: [schlieren-and-density-imaging](schlieren-and-density-imaging.md).

## Relevance to our work
- **PIV.**
  - Align the sheet before calibrating.
  - Check edge distortion on the large sensors and remap vector positions if needed.
  - Quote τ_p together with SR and TR.
  - Use at least 1,000 snapshots for the leading pairs and about 10⁴ for means.
  - Consider dried, filtered powders where shock-adjacent modes matter.
- **Rigs.** Record the regulator drift and room temperature with each run, keep the upstream plate in mind when reading extra peaks, and treat amplitudes as qualitative.
- **PyFR staging LES.** The group's PIV of A1 and A2 jets at NPR 2.10 and 2.25 (Edgington-Mitchell et al. 2018, p. 6–11) gives velocity means and POD pairs to set against the LES, within the particle-lag caveat above. The image comparisons are set out on [schlieren-and-density-imaging](schlieren-and-density-imaging.md).
- **Rocket noise.** Mayer-style coherence and N(f) checks suit model-scale tests.

## Papers
- [Henderson et al. 2002](../notes/henderson-2002-flow-structure-supersonic-impinging-jets.md): PIV binned by microphone phase; olive-oil and smoke seeding; NASA Glenn dome (not tagged).
- [Alkislar 2003](../notes/alkislar-2003-screeching-rectangular-jet-stereo-piv.md): AR 4 C-D jet, phase-locked stereo PIV: flapping-vortex circulation, streamwise vortices, axis switching (synthesis pending).
- [Oberleithner et al. 2011](../notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md): 3D helix from 800 non-TR stereo-PIV snapshots via a POD pair (not tagged).
- [Ragni et al. 2011](../notes/ragni-2011-particle-tracer-response-shocks-piv.md): oblique-shock tracer-response test; τ_p of common seeders; SR, TR ≤ 1 criteria.
- [Edgington-Mitchell et al. 2014](../notes/edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md): smoke τ_p ≈ 2 µs and at least 8% artificial fluctuation across a Mach disk.
- [Edgington-Mitchell 2014, helical mode](../notes/edgington-mitchell-2014-coherent-structure-helical-screech-mode.md): C-mode PIV at NPR 3.4: POD triple decomposition; coherent vorticity at cells 2–4 proposed to pick sources (synthesis pending).
- [Berry et al. 2017](../notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md): Syracuse Skytop anechoic chamber (not tagged).
- [Mercier et al. 2017](../notes/mercier-2017-screech-feedback-loop-underexpanded-round-jets.md): near-field two-microphone phase averaging; repeatability; LMFA anechoic jet (synthesis pending).
- [Edgington-Mitchell et al. 2018](../notes/edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md): standard group PIV settings for screech (not tagged).
- [Knast et al. 2018](../notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md): tone frequency and phase, not amplitude, in a non-anechoic rig (not tagged).
- [Mayer et al. 2019](../notes/mayer-2019-bristol-aeroacoustic-wind-tunnel.md): anechoic open-jet facility design and acoustic data-quality checks.
- [Weightman 2019](../notes/weightman-2019-sound-production-impinging-supersonic-jets.md): PIV settings, POD convergence, two-facility practice; ray tracing through PIV fields.
- [Edgington-Mitchell et al. 2021](../notes/edgington-mitchell-2020-waves-in-screeching-jets.md): PIV-derived density checked with tomographic BOS (not tagged).
- [Esfahani et al. 2021b](../notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md): OSU GDTL anechoic chamber (not tagged).
- [Shehzad et al. 2021](../notes/shehzad-2021-laser-sheet-alignment-piv.md): laser sheet aligned to the target before calibration; applies to planar PIV.
- [Sun et al. 2021](../notes/sun-2021-distortion-correction-large-sensor-piv.md): lens-distortion correction for large sensors; remap vectors after PIV.
- [Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md): non-anechoic rig; PIV-derived mean density agrees with BOS (not tagged).
- [Edgington-Mitchell et al. 2022](../notes/edgington-mitchell-2022-unifying-theory-jet-screech.md): reflecting plate upstream of the exit (not tagged).
- [Nogueira et al. 2022](../notes/nogueira-2021-closure-mechanism-a1-a2-screech.md): Pprime PIV seeding (not tagged).
- [Rezay Haghdoost et al. 2022](../notes/rezay-haghdoost-2022-shock-dividers.md): transducer-triggered single-event schlieren (not tagged).
- [Thethy et al. 2022](../notes/thethy-2022-shock-diffraction-non-quiescent-medium.md): TiO₂ high-speed PIV; shock speed and background jet in a shock-tube rig (not tagged).
- [Wong et al. 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md): room-temperature control (not tagged).
- [Ivelja et al. 2024](../notes/ivelja-2024-modal-analysis-screeching-elliptical-jets.md): sheet-misalignment bias fixed by symmetry (not tagged).
- [Mazharmanesh et al. 2025](../notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md): contraction ratio above 100:1 (not tagged).
- [Raiola & Kriegseis 2025](../notes/raiola-2025-hilbert-pod.md): space-only HPOD for non-TR PIV (not tagged).
- [Farghadan et al. 2026](../notes/farghadan-2026-wave-interactions-screeching-jet.md): large-sensor PIV with paraffin seeding (not tagged).
- [Mazharmanesh et al. 2026](../notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md): reference TR-schlieren settings (not tagged).
