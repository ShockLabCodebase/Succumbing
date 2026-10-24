---
key: "willert-2012-high-power-led-high-frame-rate-schlieren"
title: "An assessment of high-power light-emitting diodes for high frame rate schlieren imaging"
authors: ["Willert, Christian E.", "Mitchell, Daniel M.", "Soria, Julio"]
year: 2012
type: "article"
venue: "Exp. Fluids 53, 413–421"
bib: {"journal": "Experiments in Fluids", "volume": "53", "pages": "413--421", "publisher": "Springer-Verlag"}
doi: "10.1007/s00348-012-1297-1"
arxiv: ""
pdf: "schlieren-and-density-imaging/Willert-EtAl_2012_An-Assessment-Of-High-Power-Light-Emitting-Diodes-For-High-Frame-Rate-Schlieren-Imaging.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility (LTRAC supersonic jet facility, Monash)"
data: ["schlieren-TR", "schlieren"]
methods: ["facility-design", "calibration", "statistics", "coherence"]
flow: ["round-jet", "impinging-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "impingement-tones", "helical", "Mach-disk", "shock-cells"]
params: {"NPR": "5.2 (impinging, burst mode); 2.93 (free jet, continuous mode)", "M_j": "≈1.73 at NPR 5.2, ≈1.34 at NPR 2.93 (isentropic, my calculation; not stated)", "h/D": "3.0 (x = 15 mm)", "D": "5 mm (impinging); 15 mm (free jet)", "LED": "Luminus Phlatlight CBT-120 green, 3 × 4 mm² die, overdriven to ≥ 120 A", "burst": "102 frames, 500 ns pulses at 2 µs period (500 kHz) to 1 MHz, Shimadzu HPV-1 312 × 260 px", "continuous": "6300 frames, 2 µs pulses at ≈100 A, 1 kHz, PCO Dimax 2016 × 2016 px", "LED decay time": "≈350 ns (CBT-120), ≈150 ns (LXHL-PM02)"}
topics: ["schlieren-and-density-imaging", "diagnostics-and-facilities"]
related: ["settles-2017-recent-developments-schlieren-shadowgraph", "mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren", "weightman-2019-sound-production-impinging-supersonic-jets", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "johnston-2016-underexpanded-jet-intrusive-tab-visualisation", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "edgington-mitchell-2015-staging-screeching-elliptical-jets", "mason-smith-2015-underexpanded-jet-impinging-cylindrical-sections", "henderson-2002-flow-structure-supersonic-impinging-jets", "berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "tan-2015-bos-density-axisymmetric-jets", "powis-2016-impingement-tones-shock-instabilities-plug-nozzle"]
cites: ["henderson-2002-flow-structure-supersonic-impinging-jets"]
summary: "Overdriven pulsed CBT-120 LED (≥120 A, 0.5–2 µs) as schlieren source: 102-frame MHz bursts of NPR 5.2 impinging jet; 1 kHz two-point correlations at NPR 2.93"
---
# An assessment of high-power light-emitting diodes for high frame rate schlieren imaging

- **Authors:** Christian E. Willert (DLR Institute of Propulsion Technology, Köln), Daniel M. Mitchell and Julio Soria (Laboratory for Turbulence Research in Aerospace and Combustion (LTRAC), Dept of Mechanical and Aerospace Engineering, Monash University; Soria also at King Abdulaziz University, Jeddah) (p. 413). D. M. Mitchell is D. Edgington-Mitchell's earlier name, so this is Shock Lab group work. The jet rig is the one of Risborg et al. (2008) and Risborg (2008) (p. 417); no lab space (Shock Lab, Combustion Lab, TABLE Lab) is named. Funded by the Australian Research Council (p. 420).
- **Source:** Experiments in Fluids 53:413–421 (2012), Research Article, doi:10.1007/s00348-012-1297-1. Received 23 Feb 2011, revised 2 Mar 2012, accepted 20 Mar 2012, online 5 Apr 2012 (p. 413). A fluid-dynamics video with sequences at four NPRs is on arXiv (Willert, Mitchell & Soria 2010, arXiv:1010.3186; not held) (p. 418).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/schlieren-and-density-imaging/Willert-EtAl_2012_An-Assessment-Of-High-Power-Light-Emitting-Diodes-For-High-Frame-Rate-Schlieren-Imaging.pdf` (index key `schlieren-and-density-imaging/Willert-EtAl_2012_An-Assessment-Of-High-Power-Light-Emitting-Diodes-For-High-Frame-Rate-Schlieren-Imaging.pdf`, 9 pp., publisher's version). Page refs are journal pages; **PDF page = journal page − 412**. The Read tool reports the PDF as password-protected, so the text came from `pdftotext -layout`; eq. 1 and Figs 2–12 were checked on 110 dpi renders.
- **Tags:** pulsed LED, overdriven LED, Luminus Phlatlight CBT-120, light source, high-speed schlieren, burst mode, Shimadzu HPV-1, PCO Dimax, megahertz imaging, electroluminescence decay, duty cycle, supply capacitance, pulse-to-pulse repeatability, LED wavelength shift, angular emission, condenser-free schlieren, speckle, chromatic aberration, underexpanded impinging jet, NPR 5.2, h/D 3, Mach disk, standoff shock, helical mode, acoustic waves, free jet NPR 2.93, screech, two-point correlation of schlieren intensity, mean and standard-deviation images, mean subtraction

## Summary
The paper shows that a single high-power LED, overdriven with current pulses up to ten times its rating, is a practical light source for high-frame-rate schlieren, and it is the reference the group's later TR-schlieren papers cite for their LED (p. 413–414). A simple capacitor-discharge driver pulses a Luminus CBT-120 LED; its light follows the current within about 100 ns and decays in about 350 ns, so it can be pulsed at up to 1 MHz, and asynchronously, which lasers and flash lamps cannot (p. 413–415). A 2200 µF supply capacitance gives 100-pulse bursts of near-constant intensity at more than 120 A (p. 415). Two schlieren demonstrations follow (p. 416–420). In burst mode, 102 Shimadzu HPV-1 frames of an NPR 5.2 jet impinging at h/D 3 resolve individual acoustic waves and a moving Mach disk, and are repeatable enough that mean and standard-deviation images can be formed and the mean subtracted. In continuous mode, 6300 independent 1 kHz PCO Dimax frames of a screeching NPR 2.93 free jet give a two-point correlation map whose antisymmetric cells extend into the acoustic field. There is no modelling or simulation, and no spectral analysis.

## Key findings
- **LED response** (Fig. 2, p. 414–415). Tested with a fast laser-diode driver (PicoLAS LDP-V 50-100 V3) at 50 A, 250 ns, 1 kHz, and a Thorlabs DET10A PIN photodiode:
  - The light keeps rising until the pulse ends (it never reaches a steady value), then decays over about 350 ns for the CBT-120 (3 × 4 mm² die) and about 150 ns for the smaller Lumileds LXHL-PM02 (2 × 2 mm²). The decay is recombination of remaining charge carriers and seems to scale with die size (p. 414–415).
  - A 5 ns Nd:YAG pulse on the same photodiode shows the decay is not a detector artefact (p. 415).
  - The smaller LED gives 160 lm against 2100 lm, so it was rejected (p. 415).
- **Burst mode** (Figs 3–4, p. 415–416):
  - 100 pulses of 500 ns at a 2 µs period (500 kHz). With C1 = 100 µF the pulse intensity falls to about 0.45 of the first pulse by the end of the 200 µs burst; with 2200 µF it stays nearly constant (Fig. 3, read from the figure). The commercial driver's ≈ 10 µF was not enough (p. 415).
  - The drive current rises in about 100 ns; the light does not reach steady state within 500 ns, and falls to about 5% of its peak between pulses (p. 415).
  - Peak drive current exceeds 120 A. Summed, 100 pulses equal a 50 µs pulse at 120 A, which would destroy the LED: the single-pulse limit at 50 µs is about 65 A (Willert et al. 2010), and the manufacturer's absolute maximum is 36 A. The LED survives because of the 25% duty cycle (p. 415–416).
  - No systematic damage-threshold tests were done for bursts, and no LED was damaged (p. 416, 420).
- **Continuous mode:** pulses at 1 kHz above 120 A at a 0.5% duty cycle produce no significant heating (p. 416). In this steady-state mode there is no intensity decay across the sequence (p. 419).
- **Colour and beam angle** (Fig. 5, p. 416):
  - The red CBT-120 has about one-third more radiometric flux (5.5 W against 4.1 W) but a wider cone, emitting about 30% less on axis. Since schlieren uses a low numerical aperture, the extra light is wasted. In practice the green LED gave brighter images, put down to the camera's higher sensitivity to green (p. 416).
  - Above 100 A the centre wavelength shifts by about 20 nm, from 530 nm (green) to 510 nm (cyan) (p. 416, from Willert et al. 2010).
- **Burst-mode schlieren of an impinging jet** (Figs 7–10, p. 416–418; D = 5 mm, NPR 5.2, plate at x = 15 mm, x/D 3.0):
  - Strong Mach disk and an intermittent standoff shock above the plate, which varies in size and shape and is absent in some frames (p. 417).
  - The Mach disk moves axially and radially from frame to frame and tilts about the x axis; the authors call the oscillation helical (p. 417).
  - Individual acoustic waves are resolved. The acoustic field is asymmetric, with waves staggered on the two sides of the jet. The authors attribute this to the helical instability, following Henderson's wall-jet sound-source picture: helical structures impinging give a helical sound field, which a path-integrated image shows as staggered waves (p. 417–418).
  - The mean and standard deviation (Figs 8–9) are from ten 100-frame sequences recorded in short succession, made possible by the repeatable illumination. Subtracting the mean (Fig. 10) leaves only the unsteady features, and also removes static blemishes on the mirrors (p. 417–418).
- **Continuous-mode schlieren of a free jet** (Figs 11–12, p. 419–420; D = 15 mm, NPR 2.93, "a strong screech tone"):
  - A sinuous bright band from the third shock cell onwards is suggested to be the helical vortex that Umeda & Ishii (2002) associate with some screech tones (p. 419).
  - Upstream- and downstream-travelling acoustic waves are visible but faint, since there is no plate to drive a strong feedback loop (p. 419).
  - The two-point correlation map (eq. 1) is much stronger in the jet than in the acoustic field, so the contour levels are adjusted. Alternating positive and negative cells lie on either side of the centreline, of opposite sign above and below it at each x, and the pattern continues into both the upstream and downstream acoustic fields (Fig. 12, p. 419–420). The colour scale runs from about −0.8 to 0.8 (read from the figure).
  - The authors' point: statistics of large sets of qualitative images yield structure that single images do not show (p. 420).
- **Practical advantages listed** (p. 420):
  - The emitter (3 × 4 mm²) is already the source size Settles (2001) recommends, so no condenser lens and slit are needed (p. 419–420).
  - Alignment is easy: run the LED continuously, or pulse it fast enough to look continuous, and set focus and cut-off live. Low voltage and uncollimated light reduce hazards (p. 420).
  - Shuttering the camera instead of pulsing the LED is not an option at these intensities: the LED would not survive 120 A for 100 µs (p. 420).
  - Matching 2 µs pulses at 1 kHz with a continuous source would need 500 times the average intensity (p. 420).
  - About 35 nm FWHM bandwidth: less chromatic aberration than white light, and too short a coherence length for knife-edge diffraction and speckle, which trouble laser sources (p. 413, 420).
  - Pulse rate, width, brightness and duration are independent and can be changed during a run; lag-free triggering allows phase-locked imaging of cycles of varying frequency (p. 420).

## Setup / method
**Driver** (Fig. 1, p. 414). Capacitor C1 is charged to V_s, then transistor T1 is switched on by driver U1 and discharges C1 through LED LD1. The current I_f is read from the voltage across R2 ≈ 0.02 Ω between the transistor source and ground. Details are in Willert et al. (2010, Meas. Sci. Technol. 21, 075402; not held).

**Schlieren configurations**

| | Burst mode (§3.1) | Continuous mode (§3.2) |
|---|---|---|
| Flow | Underexpanded jet on a flat plate | Underexpanded free jet, screeching |
| D | 5 mm | 15 mm |
| NPR (plenum stagnation / ambient) | 5.2 (±2% transducer) | 2.93 |
| Plate distance | x = 15 mm, x/D 3.0 | none |
| Camera | Shimadzu HPV-1, 312 × 260 px | PCO Dimax, 2016 × 2016 px |
| Rate | 500 kHz to 1 MHz (Fig. 7 frames 5 µs apart) | 1 kHz, independent images |
| Frames | 102 per burst; 10 sequences of 100 for statistics | 6300 |
| LED pulse | 500 ns, up to 120 A, green CBT-120 | 2 µs, ≈ 100 A |
| Optics | Fig. 6: LED + f = 50 mm lens and aperture, two f = 2 m mirrors, two flat folding mirrors, knife edge, camera | No condenser lens or slit |
| Analysis | Mean, standard deviation, mean subtraction | Two-point correlation (eq. 1) |

(p. 416–419; Fig. 6 read from the schematic.) The knife-edge orientation is not stated for §3.1. For §3.2 the system "visualizes the density gradient along the jet axis", dρ/dx (p. 419).

**Data dependence of the methods.**
- *Burst mode* is time-resolved but only 102 frames long. That is enough to follow individual waves and shock motion, and for ensemble mean and standard deviation over sequences, but too short for spectra or SPOD. The statistics rely on the illumination being repeatable from pulse to pulse and sequence to sequence (p. 417).
- *Continuous mode* is not time-resolved: at 1 kHz each image is independent of the last (p. 419). The two-point correlation needs only many independent snapshots, so it is the schlieren analogue of PIV statistics. No mean subtraction or normalisation is described beyond eq. 1 (see Key equations).
- The abstract's claim that pulse-to-pulse variation is of the order of camera noise (p. 413) is not backed by a number; Figs 3–4 show it only qualitatively.

**Modelling side.** None: the paper is a light-source assessment with qualitative flow interpretation. The physical readings (helical Mach-disk motion, helical sound field, helical screech vortex) rest on the cited work of Henderson et al. and Umeda & Ishii (2002), not on any model here.

## Key equations
- **Two-point correlation** (eq. 1, p. 419), over all images of the sequence, between the fixed point (x₀, r₀) and every other pixel:
  $$R(\Delta x,\Delta r)=\frac{\sum I(x_0,r_0)\cdot I(x_0+\Delta x,\,r_0+\Delta r)}{\sum I(x_0,r_0)}$$
  I is image intensity, a path integral of the refractive-index gradient and not a fluid property (p. 419).
  > Checked on the rendered page: this is what is printed. As written R is neither dimensionless nor bounded, and with raw (positive) intensities it could not change sign. Fig. 12 spans about −0.8 to 0.8 with negative cells, so I is presumably the fluctuation about the mean and the normalisation a product of standard deviations, as in Johnston & Edgington-Mitchell 2016 (their eq. 1, which divides by σ(x₀, r₀)σ(x₀ + Δx, r₀ + Δr)). Treat eq. 1 as a typesetting slip.

## Data tables
None worth reusing beyond the configuration table above. LED numbers for reference: CBT-120 green 4.1 W radiometric, red 5.5 W (manufacturer); 2100 lm (CBT-120) against 160 lm (LXHL-PM02); decay 350 ns against 150 ns; absolute maximum 36 A, single-pulse 50 µs limit ≈ 65 A, burst peak > 120 A (p. 415–416).

> **Checks (my arithmetic).**
> - Burst duty cycle: 500 ns / 2 µs = 25%, as stated (p. 415). But p. 414 says the duty cycle is "increased up to 50%" for this application; perhaps the 1 MHz case. Check.
> - Continuous duty cycle: 2 µs × 1 kHz = 0.2%, not the stated 0.5% (p. 416). A 5 µs pulse would give 0.5%; the 0.5% may refer to another setting. Check.
> - 100 × 500 ns = 50 µs, as stated (p. 415). The later "120 A for 100 µs" (p. 420) matches 100 frames at 1 µs period (1 MHz).
> - 1 ms / 2 µs = 500, as stated for the continuous-source comparison (p. 420).
> - Fig. 7 frames are 5 µs apart (200 kHz), while the bursts are described at 500 kHz to 1 MHz (p. 413, 415). Either Fig. 7 is a 200 kfps recording or every other frame is shown. Not explained.
> - Settles & Hargather (2017) give the CBT-120 emitter as 2.6 × 4.6 mm; this paper says 3 × 4 mm² die (p. 415, 419). Both are about 12 mm².

## Figures worth remembering
- **Fig. 1 (p. 414):** simplified driver circuit (C1, T1, U1, LD1, R2).
- **Fig. 2 (p. 415):** current and photodiode response to a 250 ns pulse for the CBT-120 (50 A) and LXHL-PM02 (20 A), with the 5 ns Nd:YAG reference spike.
- **Fig. 3 (p. 415):** 100-pulse bursts with C1 = 100 µF (decaying) and 2200 µF (flat).
- **Fig. 4 (p. 416):** trigger, photodiode and current traces in the middle of the burst; current about 120–130 A, light rising throughout each 500 ns pulse.
- **Fig. 5 (p. 416):** angular emission of green and red CBT-120 (green peaked on axis, red flatter, ≈ 0.7 on axis).
- **Fig. 6 (p. 417):** schlieren layout for the burst-mode experiment.
- **Fig. 7 (p. 417):** five frames 5 µs apart, NPR 5.2, x/D 3: Mach disk, standoff shock, curved acoustic fronts on both sides.
- **Figs 8–9 (p. 418):** mean and standard-deviation images; the standard deviation is highest at the Mach disk, the plate shock region and the shear layers.
- **Fig. 10 (p. 418):** the Fig. 7 sequence with the mean subtracted; staggered acoustic waves are clearer.
- **Fig. 11 (p. 419):** high-resolution instantaneous image of the NPR 2.93 free jet, about six shock cells visible.
- **Fig. 12 (p. 419):** two-point correlation map, x/d 0.5–7.5, r/d ±3.5, reference point near x/d 2.4 on the lower shear layer (read from the dashed lines), antisymmetric cells from x/d ≈ 3 and acoustic lobes upstream and downstream.

## Notation
- I_f: LED forward (drive) current; V_s: supply voltage; C1: supply capacitance; R2: current-sense resistor.
- NPR: plenum stagnation pressure / ambient pressure; D (also d): nozzle exit diameter; x: axial distance (plate distance in §3.1); r: radial coordinate.
- I(x, r): schlieren image intensity; R(Δx, Δr): two-point correlation; (x₀, r₀): fixed reference point.
- FWHM: full width at half maximum of the emission spectrum.

## Relevance to this project
This is the source paper for the light source of every Monash TR-schlieren data set the user works with (CLAUDE.md: time-resolved schlieren is the main data type). The later notes cite it for the pulsed CBT-120 LED and pulse widths of 0.5–2 µs: [Edgington-Mitchell et al. 2014](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md), [Edgington-Mitchell et al. 2014, Mach disk](edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md), [Edgington-Mitchell et al. 2015](edgington-mitchell-2015-staging-screeching-elliptical-jets.md) (1.6 µs), [Powis et al. 2016](powis-2016-impingement-tones-shock-instabilities-plug-nozzle.md), [Knast et al. 2018](knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md), [Mazharmanesh et al. 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) (0.5 µs), and the group's BOS back-lighting in [Tan et al. 2015](tan-2015-bos-density-axisymmetric-jets.md). Outside the group, [Berry et al. 2017](berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md) built their Syracuse source on it. [Settles & Hargather 2017](settles-2017-recent-developments-schlieren-shadowgraph.md) cite it as their ref. 18 and agree with its main claims: LEDs pulse repeatably to about 100 ns and the CBT-120 suits schlieren though it is too large for shadowgraphy (Settles p. 4–5). Settles adds the failure mode this paper did not test, melting of bonding wires at high pulse currents (Settles p. 5), against "no devices were damaged" here (p. 420).

**How it sits with the other notes**
- **Same rig, same period as [Mitchell et al. 2012](mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren.md).** Both use the HPV-1 for bursts and the PCO Dimax at 1 kHz for independent high-resolution images with a green CBT-120 (Mitchell p. 335). That paper does the physics of the impinging loop at NPR 3.2, z/d 4; this one documents the source and shows NPR 5.2, x/D 3. Neither runs spectral analysis on the bursts.
- **Burst-mode lineage.** The 102-frame HPV-1 bursts at 500 kfps with 0.5 µs pulses are the setting of [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md) (thesis) and Knast et al. 2018. The schlieren topic page records that these bursts showed mode shapes but could not support SPOD or BMD, which only the later Photron SA-Z long records allowed. This paper's ten-sequence mean and standard deviation is the earliest group example of statistics on burst data.
- **Two-point correlation of schlieren intensity** starts here in the group. [Johnston & Edgington-Mitchell 2016](johnston-2016-underexpanded-jet-intrusive-tab-visualisation.md) adopt it (citing this paper and [Mason-Smith et al. 2015](mason-smith-2015-underexpanded-jet-impinging-cylindrical-sections.md)) to classify mode symmetry, with a properly normalised formula, and Knast et al. 2018 use 1 Hz sets for the same purpose. Johnston also notes that much of the pattern is acoustic near field, which Fig. 12 here already shows.
- **The "helical" labels are single-view inferences.** A one-plane image cannot tell a helical mode from flapping in the image plane: both give antisymmetric correlation cells across the centreline (my inference; cf. the schlieren topic page on one-view limits). At NPR 2.93 on a 15 mm nozzle the group later reports the B (flapping) stage at lower NPR ([Johnston & Edgington-Mitchell 2016](johnston-2016-underexpanded-jet-intrusive-tab-visualisation.md), antisymmetric B at NPR 2.6) and the C (helical) stage at NPR 3.4 ([Edgington-Mitchell et al. 2014](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md)). So NPR 2.93 sits near the B/C boundary and the mode is not established here; no acoustic spectrum is given. For the impinging case, [Henderson et al. 2002](henderson-2002-flow-structure-supersonic-impinging-jets.md) supplies the wall-jet source picture invoked (the paper cites Henderson 2002/2003 in JASA and Henderson, Bridges & Wernet 2005 in JFM, the latter in `Papers_to_get.md`).

**Modelling side.** No model or simulation. The paper's value for modelling is indirect: mean-subtracted, repeatable-intensity images are what numerical schlieren from LES (for example the PyFR staging LES) must be compared with, and eq. 1 maps can be computed identically from LES snapshots for a like-for-like check of mode symmetry.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Statistics first (step 1)** relies on what this paper established: pulse-to-pulse repeatable illumination, so that mean, standard deviation and mean subtraction are meaningful (p. 417). For SPOD of long records the same property matters, because intensity drift from the source would appear as a spurious low-frequency mode. The paper shows that with too little supply capacitance the intensity can fall by more than half over a 100-pulse burst (Fig. 3), so check the source's intensity trace before SPOD.
- **Time-resolved burst data (102 frames)** suit wave tracking and ensemble statistics, not SPOD, BMD or HPOD. **Non-time-resolved 1 kHz data** suit means, two-point correlation and POD or POD-pairs, as in the PIV workflow. The pulse, not the camera rate, sets the exposure: 2 µs at 1 kHz freezes the flow while the images stay independent.
- **For frequency–time work** (SPOD → reconstruction → HPOD): the LED's lag-free triggering at varying frequency (p. 420) also allows phase-locked imaging of a tone whose frequency drifts, for example triggering on a microphone near a staging point. That is a cheap complement to long-record HPOD, though it averages away intermittency rather than resolving it.
- **Pulse length versus exposure:** the light rises throughout a 500 ns pulse and decays over about 350 ns (Figs 2, 4), so the light pulse is asymmetric and has a tail of a few hundred nanoseconds beyond the electrical pulse (my reading of the traces; the paper gives no effective exposure). Allow for this when estimating motion blur at screech convection speeds.

**PyFR staging LES.** Indirect only: the light source sets nothing in the LES, but numerical schlieren and eq. 1 correlations from the LES would compare directly with the group's schlieren built on this source.

**Related works cited, candidates for `/add-paper`:** Willert, Stasicki, Klinner & Moessner 2010 (Meas. Sci. Technol. 21, 075402; pulsed high-power LEDs for flow velocimetry, the driver and damage-threshold data); Willert, Mitchell & Soria 2010 (arXiv:1010.3186, megahertz schlieren video of impinging jets); Risborg et al. 2008 and Risborg & Soria 2008 (the jet facility); Umeda & Ishii 2002 (JASA 112, helical vortices around a screeching jet); Henderson 2002 (JASA 111, 735–747) and Henderson, Bridges & Wernet 2005 (JFM 542; in `Papers_to_get.md`); Settles 2001 (*Schlieren and Shadowgraph Techniques*); Stasicki, Hiller & Meier 1984/1990 and Hiller et al. 1987 (early LED stroboscopes); Bretthauer et al. 1991 (LED Cranz–Schardin camera).
