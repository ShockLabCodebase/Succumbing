# Development of a Near-field Intensity Measurement Capability for Static Rocket Firings

- **Authors:** K. L. Gee, E. B. Whiting, T. B. Neilsen (Brigham Young University); M. M. James, A. R. Salton (Blue Ridge Research and Consulting, BRRC)
- **Source:** Trans. JSASS Aerospace Tech. Japan 14(ists30), pp. Po_2_9–Po_2_15 (2016); received 8 Aug 2015 (p. 1). ISTS 30 conference paper. No DOI printed.
- **PDF:** `References/Paper_PDFs/Rocket_Noise_Papers/Gee-EtAl_2016_Development-Of-A-Near-Field-Intensity-Measurement-Capability-For-Static-Rocket-Firings.pdf` (7 pp.; encrypted, so the Read tool refuses it; use `pdftotext`/`pdftoppm`)
- **Tags:** rocket noise, solid rocket motor, GEM-60, static firing, vector acoustic intensity, multimicrophone probe, PAGE method, finite-difference intensity, source localisation, ray tracing, directivity, near field, nonlinear propagation, launch-vehicle vibroacoustics

## Summary
The paper describes a field system (probes, PXI data acquisition, processing) for measuring the near-field vector acoustic intensity of full-scale rocket firings, and applies it to a horizontal static firing of a GEM-60 solid rocket motor (ATK, Promontory, Utah, 6 Sep 2012). Twelve multimicrophone probes (nine 2D, three 3D) were placed at nozzle height, ten of them in a line roughly parallel to the plume shear layer. Intensity is computed with the phase and amplitude gradient estimation (PAGE) method, which keeps accurate magnitude and direction to several kHz where the traditional finite-difference (FD) cross-spectral method is biased. Intensity vectors within 3 dB of the array maximum are ray-traced back to the plume axis to give a frequency-dependent dominant source region and a radiation-angle range. The source sits about 17–32D downstream at 50 Hz and moves upstream to 10–20D above about 600 Hz, while the radiation angle rises from 65–70° to 80–85°, i.e. more sideline and upstream than the historical far-field directivity models (max < 70°) predict. Nonlinear propagation is proposed (not tested) as one reason for the near/far-field mismatch.

## Key findings
- **PAGE vs FD** (p. 4, Fig. 6, probe 2): FD intensity level L_I shows high-frequency bias above ~1 kHz that grows fast with frequency; PAGE L_I tracks L_p "nearly exactly", as expected for a propagating field. FD direction diverges from PAGE above ~2.2 kHz, rotating unphysically upstream. PAGE extends the usable bandwidth.
- **Active intensity ≈ SPL** outside the hydrodynamic near field (travelling wave dominates; the reactive part comes mainly from ground reflection in the vertical) (p. 4). So comparing L_p with L_I from each method gives each probe's valid band.
- **Source location at 50 Hz** (far-field spectral peak frequency in the maximum-radiation direction): the 3-dB ray-traced region spans 17–32D, with peak radiation at ~68° (abstract, p. 1; Fig. 7, p. 6). The conclusion rounds this to 20–30D (p. 5).
- **True source is longer than the traced box:** the 3-dB tracing localises only about the top 1 dB of energy (Stout et al.); at 50 Hz L_I drops only ~6 dB upstream and ~4 dB downstream along the array, implying a source length of at least 30D (p. 4–5).
- **Upstream shift with frequency** (Fig. 12, p. 6): the region moves toward the nozzle with frequency, consistent with smaller turbulence scales near the exit. Above 600 Hz it stays at about 10–20D. No probe was upstream of 9D (concrete camera pillars block x < ~10D), and probe 1 has the largest vectors at 600 Hz, so above 600 Hz the result is an upper bound on the downstream source location (p. 5).
- **Differences from an afterburning military jet** (F-22A, Stout et al.) (p. 5):
  - No significant overall contraction of the source with frequency; the dominant (~1 dB) region is about 10–15D wide and lies many diameters further downstream than the military-jet source.
  - The shift of the peak source location with frequency is gradual rather than abrupt.
  - Possible causes: coarse probe spacing here (the jet study moved one probe between many engine run-ups) or real physical differences (higher convective Mach number and temperature, different plume composition).
- **Radiation angle** (Fig. 13, p. 5, 7; angles from the downstream exhaust axis): 65–70° at low frequency, rising to 80–85° at high frequency. At 600 Hz the most upstream vector points to ~95° (Fig. 11). Above ~600–800 Hz the vectors start to swing back downstream, consistent with the source moving upstream of probe 1 (p. 5).
- **Disagreement with far-field models** (p. 5): the directivity indices of Eldred (NASA SP-8072), Haynes & Kenny (2009) and James et al. (2014 low-frequency correction) all peak below 70°, so the high-frequency near-field vectors point upstream of far-field predictions. Proposed explanation: nonlinear propagation and shock formation near the peak radiation direction parametrically generate high-frequency energy with distance, so far-field directivity may differ from near-field intensity directionality. Untested with these data.
- **Conclusions** (p. 5): (1) low-frequency source at 20–30D, moving upstream with frequency; (2) less source contraction than for afterburning military jets; (3) broader and more sideline radiation than far-field directivity suggests. Relevant to near-pad vibroacoustic loading.

## Setup / method
- **Motor and test** (p. 2): GEM-60 solid motor, 13.2 m long, nozzle exit D = 1.09 m (43 in), ~91 s burn, mean thrust 879 kN. Horizontal static firing, ATK T-6 test area, Promontory, Utah, 6 Sep 2012. Joint BRRC/BYU measurement.
- **Requirements** (p. 2): peak SPL beyond 180 dB (20 kPa), 5 Hz–40 kHz, aperture covering a source region that can exceed 100 m for large rockets at low frequency; portable, rugged, safe (time-triggered, unattended).
- **Probe layout** (Table 1, p. 2; Figs. 1–2, 7): all at nozzle height, aligned with laser levels on sloping terrain. Probes 1–8 form a line roughly parallel to the shear layer (slope ≈ 0.36, i.e. about 20° to the axis; own estimate from Table 1), from x/D 9.4 to 56.4. Probes 9–10 are an offset row at y/D = 30; 11–12 are mid-field near the peak radiation direction.
- **Probes** (p. 2–3, Fig. 4):
  - 2D parallel-axis probe (in-house): four coplanar mics at the vertices and centre of an equilateral triangle inscribed in a 3.8 cm (1.5 in) radius circle. Justified because at nozzle height of a horizontal firing the intensity is essentially 2D. G.R.A.S. 6.35 mm 46BG mics (probes 1–2, 4–9) and 3.18 mm 40DD (probe 3), 26CB preamps; low sensitivity (< 0.3 mV/Pa), prepolarised, CCP-powered (removes field power supplies, a past failure point).
  - 3D spherical probe (probes 10–12): 2.54 cm sphere, four flush-mounted externally polarised G.R.A.S. 40BH mics in a tetrahedron, 26AC preamp electronics, 12AA supplies, single 7-pin LEMO cable.
  - Low-frequency limit set by mic spacing vs inter-mic phase/amplitude mismatch (f_min in Table 1); relative calibration can improve it (Giraud et al.).
- **Data acquisition** (p. 3, Fig. 5): NI PXI chassis with up to 17 PXI-4462 modules, simultaneous sampling, 24-bit, 113 dB dynamic range, 204.8 kHz, IEPE 10 mA. Windows 7 controller with four SSDs in RAID 10; custom LabVIEW software with real-time monitoring and fractional-octave analysis; vibration-isolated mil-spec container. Field-validated with > 100 channels at 200 kHz.
- **Intensity processing** (p. 3–4):
  - FD (traditional, ANSI S1.9 / ISO 11205): pressure from the centre mic (2D probe) or mic average; particle velocity from a finite-difference pressure gradient via linearised Euler (eq. 1); active intensity from weighted sums of imaginary cross-spectra. Biased once mic spacing is not ≪ wavelength.
  - PAGE (Thomas, Christensen & Gee 2015, after Mann, Tichy & Romano 1987): separates pressure magnitude from phase; phase gradient from transfer-function phases between mics (eq. 2). Accurate far higher in frequency for propagating fields.
  - Spectral estimation parameters (block length, window, averaging) are not stated; time-averaged over the firing presumably, with Δf entering L_p (p. 4).
- **Source localisation** (p. 4): for each frequency, vectors on the linear array within 3 dB of the maximum are ray-traced to the plume centreline; the intercept span is the dominant source region (green box) and the vector angles give the peak directivity range (red lines). Method from Stout et al. (F-22A), adapted from Jaeger & Allen (1993). Results compiled for 30–4000 Hz (Fig. 12–13).
- **No modelling or simulation** in this paper; the only model comparison is qualitative, against empirical far-field directivity indices (SP-8072 and successors) (p. 5).

## Key equations
- Linearised Euler (time-harmonic, inviscid): $j\omega\rho_0\vec u=-\nabla p$ (eq. 1, p. 4).
- PAGE intensity for a time-harmonic wave: $\vec I=\dfrac{|p|^2\nabla\phi}{\omega\rho_0}$ (eq. 2, p. 4), with φ the phase, its gradient from inter-mic transfer-function phases.
- Sound pressure level from PSD: $L_p=\mathrm{PSD}+10\log_{10}\Delta f$ (p. 4), Δf the DFT bin width. L_p re 20 µPa; L_I re 1 pW/m² (Fig. 6).

> Equations re-typed from the rendered p. 4 (text extraction drops them). Eq. 2 as printed has no 1/2 factor; whether |p| is amplitude or RMS isn't stated, so check Thomas et al. (2015) before reusing.

## Data tables
**Table 1 (p. 2): probe locations, types and approximate low-frequency limits** (D = 1.09 m)

| Probe | x/D | y/D | Type | f_min (Hz) |
|---|---|---|---|---|
| 1 | 9.4 | 13.4 | 2D | 30 |
| 2 | 14.1 | 15.2 | 2D | 30 |
| 3 | 18.8 | 16.9 | 2D | 110 |
| 4 | 23.5 | 18.6 | 2D | 30 |
| 5 | 28.2 | 20.3 | 2D | 30 |
| 6 | 37.6 | 23.7 | 2D | 30 |
| 7 | 47.0 | 27.1 | 2D | 90 |
| 8 | 56.4 | 30.6 | 2D | 30 |
| 9 | 15.0 | 30.0 | 2D | 30 |
| 10 | 25.0 | 30.0 | 3D | 110 |
| 11 | 81.4 | 76.7 | 3D | 80 |
| 12 | 51.3 | 94.1 | 3D | 80 |

> Rebuilt from the rendered page; text extraction scrambled the columns. Probe 3 (the 40DD mics) has f_min = 110 Hz.

**Source region and angle vs frequency** (read from Figs. 7–13 and text)

| f (Hz) | Traced source region (x/D) | Radiation angle |
|---|---|---|
| 50 | 17–32 (abstract); 20–30 (conclusion) | ~68° (65–70°) |
| 75 | ~16–27 *(read off Fig. 8)* | — |
| 150 | ~8–23 *(read off Fig. 9)* | — |
| 600 | ~10–20 (probe 1 largest) | up to ~95° most upstream |
| > 600 | 10–20, upper bound | 80–85° |

## Figures worth remembering
- **Fig. 1 (p. 2):** aerial view of T-6 with probe positions; pad ~30 m long.
- **Fig. 4 (p. 3):** the 3D spherical and 2D parallel-axis probes.
- **Fig. 6 (p. 4):** L_p, FD and PAGE L_I and direction vs frequency at probe 2; FD fails above ~1 kHz (level) and ~2.2 kHz (direction).
- **Figs. 7–11 (p. 6):** intensity vector maps at 50, 75, 150, 300 and 600 Hz in x/D–y/D with L_I colour along the array, red directivity lines and green traced source box.
- **Fig. 12 (p. 6):** traced source x/D vs frequency (30–4000 Hz); moves from ~18–35D at 30–50 Hz to ~10–20D above ~300–600 Hz.
- **Fig. 13 (p. 7):** angular range of 3-dB vectors vs frequency; ~65–70° at low f to 80–95° near 300–1000 Hz.

## Notation
- D: nozzle exit diameter (1.09 m). x: downstream along the plume axis from the nozzle exit; y: sideline distance.
- L_p: SPL (re 20 µPa); L_I: intensity level (re 1 pW/m²); PSD; Δf: DFT bin width.
- p, u: acoustic pressure, particle velocity; φ: phase; ρ₀: ambient density; ω: angular frequency; j: imaginary unit.
- FD: finite-difference (cross-spectral) intensity; PAGE: phase and amplitude gradient estimation.
- "3-dB down region": array probes within 3 dB of the maximum L_I. Angles measured from the downstream exhaust axis (90° = sideline).

## Relevance to this project
The user studies supersonic jet resonance and feedback (screech, impinging jets) with time-resolved schlieren and acoustics (see CLAUDE.md). This paper is a full-scale, purely experimental measurement-technique paper; it has no stability, ROM or simulation component.
- **Source localisation from acoustics alone:** ray-tracing near-field intensity vectors is a cheap alternative to beamforming or SPOD-based source maps. In a lab screech or impinging-jet rig, a 2D PAGE probe (four mics, ~cm spacing) traversed along a line parallel to the shear layer could locate the dominant region per frequency and test where tonal energy radiates from (e.g. shock-cell tips for screech, the plate/wall-jet region for impinging tones; cf. [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md)). Mic spacing must be rescaled for lab frequencies (tens of kHz), and PAGE is what makes small arrays usable near the spatial Nyquist limit.
- **Data dependence:** intensity estimation needs simultaneously sampled (phase-matched) time-resolved pressure from all mics of a probe; it is a cross-spectral, time-averaged quantity, so it gives no information on intermittency or how frequency and amplitude change over time. A natural extension would be to compute PAGE intensity per SPOD mode or on SPOD-reconstructed/Hilbert-filtered pressure to see whether the radiation direction of a tone wanders with amplitude, but the paper does nothing of that kind. Probes are not useful for non-time-resolved data like PIV.
- **Mach-wave radiation/peak direction:** the 65–70° low-frequency peak (from the downstream axis) and the upstream shift at high frequency are the rocket analogue of heated-supersonic-jet Mach-wave and fine-scale radiation; the shift toward the sideline at high frequency could include BBSAN-like contributions from shock cells, though the paper doesn't attribute it.
- **Nonlinear propagation:** the proposed reason for the near/far-field directivity mismatch connects to statistics of intermittency/shock formation in rocket noise ([gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md)).
- **Related notes (rocket batch):** the earlier small-SRM intensity study [gee-2010-near-field-vector-intensity-solid-rocket-motor.md](gee-2010-near-field-vector-intensity-solid-rocket-motor.md); the far-field directivity correction cited here, [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md) (the paper cites it as Proc. Mtgs. Acoust. 18, 040008); Shuttle RSRM plume acoustics [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md); QM-2 SRM far field [reichman-2018-qm2-srm-far-field-acoustics.md](reichman-2018-qm2-srm-far-field-acoustics.md); review [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md).
- **Follow-ups cited, candidates for `/add-paper`:** Thomas, Christensen & Gee 2015 (PAGE, JASA 137); Stout et al. 2015 (F-22A intensity); Eldred 1971 (NASA SP-8072); Haynes & Kenny 2009 (DSM-II); Muhlestein et al. 2014 (nonlinear SRM propagation).
