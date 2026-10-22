---
key: "gee-2010-near-field-vector-intensity-solid-rocket-motor"
title: "Near-field vector intensity measurements of a small solid rocket motor"
authors: ["Gee, K. L.", "Giraud, J. H.", "Blotter, J. D.", "Sommerfeldt, S. D."]
year: 2010
type: "article"
venue: "JASA 128(2), EL69–EL74"
bib: {"journal": "Journal of the Acoustical Society of America", "volume": "128", "number": "2", "pages": "EL69--EL74"}
doi: "10.1121/1.3436491"
arxiv: ""
pdf: "rocket-noise-measurements/Gee-EtAl_2010_Near-Field-Vector-Intensity-Measurements-Of-A-Small-Solid-Rocket-Motor.pdf"
version: "published"
unverified: []
group: false
facility: "ATK small motor test facility, Promontory, Utah"
data: ["subscale", "intensity-probe", "microphones-near"]
methods: ["vector-intensity", "PSD"]
flow: ["rocket-plume", "heated"]
phenomena: ["source-location", "directivity"]
params: {"D_e": "12.7 cm", "motor": "solid, RSRM propellant", "burn": "≈2.5 s"}
topics: ["rocket-noise-measurements"]
related: ["gee-2016-near-field-intensity-static-rocket-firings", "gee-2012-reusable-srm-noise-spectral-statistical", "kenny-2009-space-shuttle-srm-plume-acoustics", "james-2012-directivity-curves-rocket-noise-model", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: []
summary: "Tetrahedral intensity probes within ~6D of a 12.7 cm solid rocket motor plume: source region shrinks and moves upstream with frequency; radiation ≈44–51°; refraction near the plume"
---
# Near-field vector intensity measurements of a small solid rocket motor

- **Authors:** K. L. Gee, J. H. Giraud, J. D. Blotter, S. D. Sommerfeldt (Brigham Young University)
- **Source:** J. Acoust. Soc. Am. 128(2), EL69–EL74 (2010), JASA Express Letters; received 18 Feb 2010, accepted 3 May 2010, published online 29 July 2010 (p. 2).
- **DOI:** 10.1121/1.3436491
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-measurements/Gee-EtAl_2010_Near-Field-Vector-Intensity-Measurements-Of-A-Small-Solid-Rocket-Motor.pdf` (7 pp.; p. 1 is a publisher cover sheet, so PDF p. 2–7 = journal pages EL69–EL74. Page refs below are PDF pages.)
- **Tags:** rocket noise, solid rocket motor, vector acoustic intensity, tetrahedral intensity probe, near field, source localisation, directivity, refraction, two-source (fine-scale / large-scale) jet noise model, OASPL, static firing

## Summary
A short letter showing that near-field three-dimensional active intensity vectors can locate the noise source region of a rocket plume without the straight-ray assumptions of far-field phased-array methods. Four tetrahedral four-microphone probes on a PVC rig were moved to nine positions (36 probe locations) along a line within about six nozzle diameters of the shear layer of a small solid rocket motor (12.7 cm exit diameter, ~2.5 s burn, RSRM propellant), with two firings per position; 18 firings in total were shown to be acoustically repeatable to 0.2 dB. Near-field OASPL spans 135–157 dB and peaks no further downstream than y/D ≈ 10–12. Intensity maps from 100 Hz to 2 kHz show that the apparent source region shrinks and moves upstream with frequency, the dominant radiation leaves at about 44–51° from the downstream axis (steeper at higher frequency), and low-frequency vectors show refraction outside the plume. The authors read the sharp change in vector direction near the nozzle as possible near-field evidence of Tam's two-source (fine-scale + large-scale structure) model. The paper is experimental only; there is no modelling or simulation.

## Key findings
- **Level range:** OASPL across the 36 probe locations is 135–157 dB re 20 µPa (abstract, p. 2; Fig. 2b, p. 4). The maximum (≈157 dB, probe 1) is near y/D ≈ 7–10; the text says the maximum source location is no further downstream than y/D ≈ 10–12 (p. 3).
- **Firing-to-firing repeatability:** OASPL differences between the two firings at each rig position are under 0.2 dB at many positions (p. 4). At a mid-field tripod mic at (x, y, z)/D = (−21.6, 43.2, 24.6) the 18 firings give OASPL 141.9 ± 0.2 dB (Fig. 3, p. 4), and the PSDs overlay even in the ground-interference nulls (200–1000 Hz). This justifies building the field asynchronously from separate firings (p. 3–4).
- **Mid-field spectral peak:** smoothing over the ground-reflection nulls gives a peak frequency region of ≈400–500 Hz at that mic (p. 4).
- **Source region contracts and moves upstream with frequency** (Fig. 4, p. 5–6), in line with far-field beamforming of hot jets (Lee & Bridges 2005).
- **Refraction:** at 100 and 200 Hz, and possibly at all frequencies upstream of the dominant intensity region (y/D ≲ 10), vectors show bending of sound outside the plume (p. 6). Straight-ray methods (far-field beamforming, correlation) may therefore mislocate sources.
- **500 Hz vs OASPL peak:** 500 Hz has the largest intensity of the six bands shown and its apparent source is at y/D ≈ 20, well downstream of the OASPL maximum. The authors infer that higher frequencies (e.g. 1 kHz), though weaker individually, together set the OASPL-maximum region (p. 6). Extrapolating the 500 Hz vectors to the mid-field mic explains its 400–500 Hz peak (p. 6).
- **Directivity of the dominant region:** for probes 1 and 2 (closest to the plume) the vector angles from the downstream axis are ≈44–51°, shallower at low frequency and steeper at high frequency (p. 6). This matches Eldred's (NASA SP-8072, 1971) "standard chemical rocket" far-field peak directivity trend.
- **Contrast with subsonic cold jets:** Jaeger & Allen (1993) found converging vectors and a compact source for unheated M 0.2–0.6 jets; here the vectors are near-parallel over an extended region, pointing to a different dominant mechanism (p. 6).
- **Two-source interpretation (qualitative):** downstream-pointing vectors fit large-scale-structure (Mach-wave-type) radiation; sideline/upstream-pointing vectors near the nozzle could be fine-scale turbulence noise (Tam et al. 2008). The rapid direction change near the nozzle is offered as possible near-field evidence, but only by visual inspection (p. 6–7).
- **Vertical component:** the 15 cm offset adds a vertical intensity component, but it is generally small beyond the first rig position, so the horizontal (x–y) vectors carry the conclusions (p. 5).

## Setup / method
- **Facility:** ATK Space Systems small motor test facility, Promontory, Utah (p. 3). Thrust-equivalency test motors.

  | Quantity | Value |
  |---|---|
  | Motor | Solid, 7 lb of RSRM propellant |
  | Nozzle | Conical, exit diameter D = 12.7 cm |
  | Burn time | ≈2.5 s |
  | Motor axis height | 81 cm above concrete pad |
  | Probe-centre height | 96 cm (15 cm above the axis) |
  | Measurement line | 12° to the axis, parallel to the shear layer, offset 15 cm from it |
  | Rig positions | 9 (36 probe locations), within ~6D of the shear layer, y/D ≈ 3–55 (Fig. 2) |
  | Firings | 2 per rig position; 18 total |
  | DAQ | NI PXI-4462, 24-bit, 204.8 kHz |

  Jet exit conditions (exit Mach number, temperature, velocity, chamber pressure, expansion state) are **not given**, so no Strouhal scaling is possible from this paper.
- **Probes** (p. 3): four tetrahedral probes on a PVC rig (Fig. 1a; probe spacings of about 46 cm and 61 cm are labelled).
  - Probe 1: GRAS-built prototype, four phase-matched 6.35 mm GRAS 40BH mics flush on a 2.54 cm aluminium sphere, preamps inside.
  - Probes 2–4: 6.35 mm Type 1 mics, intensity-calibrated, same mic separation. Probe 2 uses 40BH; probes 3–4 use low-sensitivity (~0.5 mV/Pa) 40BD.
  - Mid-field: stationary tripod-mounted GRAS 40BD mics (Fig. 1c) to check firing equivalence.
- **Intensity estimation** (p. 5): active intensity from cross-spectra between mic pairs. Pressure is the finite-sum (average) of the four mics; particle velocity is a finite-difference Euler-equation estimate. Pair estimates are combined into a least-squares estimate per component (Pascal & Li 2008). Frequency limited conservatively to 2 kHz to keep finite-sum and probe-scattering bias small. Results shown at 100, 200, 300, 500, 1000, 2000 Hz.
- **Data dependence:** intensity is a time-averaged (cross-spectral) quantity, so it needs time-resolved, simultaneously sampled pressure within each probe, but **not** synchronisation across rig positions: the map is assembled from separate firings, which only works because the source is repeatable. Spectral parameters (block length, window, overlap, averaging over the 2.5 s burn) are not stated.
- **Visualisation:** vector lengths normalised by the per-frequency maximum and compressed by a fourth root; colour shows total (3-component) intensity level (Fig. 4, p. 5).

## Key equations
None are written in the paper. The method is the standard p–p (here four-mic) intensity estimate, which in its two-mic form is $\mathbf I\cdot\hat{\mathbf e} \approx -\dfrac{\operatorname{Im}\{G_{12}(\omega)\}}{\rho_0\,\omega\,\Delta r}$ (Euler-equation finite difference with finite-sum pressure). The tetrahedral least-squares form is in Pascal & Li (2008).
> This equation is the generic textbook form, added for orientation; it is not from the paper and sign conventions vary with the Fourier convention.

## Data tables
**Levels and checks**

| Quantity | Value | Page |
|---|---|---|
| Near-field OASPL range | 135–157 dB | p. 2, 4 |
| Mid-field mic OASPL (18 firings) | 141.9 ± 0.2 dB at (−21.6, 43.2, 24.6)D | p. 4 |
| Ground-interference nulls | 200–1000 Hz | p. 4 |
| Mid-field peak frequency (smoothed) | ≈400–500 Hz | p. 4 |
| Strongest band (of six shown) | 500 Hz, source at y/D ≈ 20 | p. 6 |
| Dominant-region vector angle (probes 1–2) | ≈44–51° from downstream axis | p. 6 |
| Upper analysis frequency | 2 kHz | p. 6 |

> Own check: the mid-field mic is at √(21.6² + 43.2² + 24.6²) ≈ 54D ≈ 6.9 m from the nozzle exit. The paper doesn't state this distance.

## Figures worth remembering
- **Fig. 1 (p. 3):** (a) the four-probe PVC rig, (b) the spherical GRAS probe, (c) a firing with tripod mid-field mics.
- **Fig. 2 (p. 4):** (a) interpolated OASPL map along the 12° measurement strip; (b) OASPL vs y/D for all probes and both firings, peaking ≈157 dB near y/D ≈ 7–10 and falling to ≈135 dB at y/D ≈ 55.
- **Fig. 3 (p. 4):** mid-field PSD for all 18 firings, overlaid; ground nulls between 200 and 1000 Hz; 141.9 ± 0.2 dB.
- **Fig. 4 (p. 5):** total intensity level maps (115–137 dB colour scale) and x–y intensity vectors at 100, 200, 300, 500, 1000, 2000 Hz. The key figure: the hot spot moves from y/D ≈ 20–35 at 300–500 Hz to y/D ≈ 5–20 at 1–2 kHz (read off the figure), and low-frequency vectors near the nozzle point sideways/upstream.

## Notation
- D: nozzle exit diameter (12.7 cm). x: horizontal cross-stream (negative away from the plume in the figures); y: downstream distance; z: vertical.
- OASPL: overall sound pressure level. PSD: power spectral density. Active intensity: time-averaged acoustic energy flux (real part of the complex intensity).
- RSRM: Space Shuttle reusable solid rocket motor.

## Relevance to this project
This is a rocket-noise source-localisation paper, not a resonance paper, but it bears on several themes in CLAUDE.md.
- **Source location for heated supersonic jets:** the frequency-dependent source region (contracting and moving upstream with frequency) and ≈44–51° peak directivity are the same trends that source-location / directivity models of rocket noise encode ([james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md); Eldred SP-8072). The later, larger-motor follow-up is [gee-2016-near-field-intensity-static-rocket-firings.md](gee-2016-near-field-intensity-static-rocket-firings.md); see also [gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md) and [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md) for RSRM-scale measurements, and [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) for context.
- **Acoustic measurements in the lab:** a tetrahedral intensity probe (or simply pairs of closely spaced mics) in the near field of a screeching or impinging jet would give the direction of energy flow per frequency. For screech this could map where the upstream-propagating tone energy leaves the jet and how much the shear layer refracts it, which far-field beamforming would mislocate (p. 6). The 2 kHz upper limit here scales with probe size (~2.5 cm sphere); lab jets with screech at several kHz to tens of kHz would need much smaller spacing (my inference).
- **Time-resolved vs not:** intensity, PSD and OASPL all need time-resolved pressure, but the spatial map is stitched from non-simultaneous measurements, which only works for a statistically stationary, repeatable source. That is the same assumption as traversed-microphone or phase-referenced schlieren surveys; for intermittent or mode-switching screech (e.g. A1/A2 staging), asynchronous intensity maps would average over modes. Pairing with a fixed reference mic and a Hilbert/wavelet amplitude or SPOD → reconstruction → HPOD analysis would be needed to condition on the active mode.
- **Two-source model:** the near-field argument for Tam's large-scale vs fine-scale split is qualitative here (visual inspection, p. 6–7). SPOD of full-field schlieren plus near-field microphones gives a more direct way to separate coherent wavepacket radiation from incoherent fine-scale noise; compare [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) and [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md).
- **Ground reflections:** the 200–1000 Hz interference nulls (motor axis 81 cm above a concrete pad) are a reminder that reflecting surfaces change spectra; this is relevant to impinging-jet and flame-deflector configurations ([weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md), [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md)).
- **Modelling side:** none in this paper; the authors call for intensity-based inverse methods and controlled model-scale jets with known source parameters (p. 7). The heated-supersonic-jet prediction work in [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) and [casalino-2009-hybrid-empirical-caa-rocket-noise.md](casalino-2009-hybrid-empirical-caa-rocket-noise.md) supply the modelling counterpart.
- **Related works cited:** Jaeger & Allen 1993 (2-D intensity of subsonic jets), Lee & Bridges 2005 (hot-jet phased array), Lee & Bolton 2007 (near-field acoustical holography of a jet), Pascal & Li 2008 (3-D intensity finite differences), Eldred 1971 (SP-8072), Tam et al. 2008 (sources of jet noise), Gee et al. 2009 (AIAA 2009-3165, energy-based rocket noise probes). Candidates for `/add-paper`.
