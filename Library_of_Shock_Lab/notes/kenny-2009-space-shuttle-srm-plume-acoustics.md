---
key: "kenny-2009-space-shuttle-srm-plume-acoustics"
title: "Measurement and Characterization of Space Shuttle Solid Rocket Motor Plume Acoustics"
authors: ["Kenny, R. Jeremy", "Hobbs, Chris", "Plotkin, Ken", "Pilkey, Debbie"]
year: 2009
type: "conference"
venue: "AIAA 2009-3161 (Aeroacoustics Conf.)"
bib: {"booktitle": "15th AIAA/CEAS Aeroacoustics Conference", "publisher": "American Institute of Aeronautics and Astronautics", "note": "AIAA Paper 2009-3161"}
doi: ""
arxiv: ""
pdf: "rocket-noise-measurements/Kenny-EtAl_2009_Measurement-And-Characterization-Of-Space-Shuttle-Solid-Rocket-Motor-Plume-Acoustics.pdf"
version: "conference"
unverified: ["paper number and conference only on the slide footers; year inferred from PDF creation date and citations, not printed on the paper"]
group: false
facility: "ATK T-24 static-test stand, Promontory, Utah"
data: ["full-scale", "microphones-near", "microphones-far"]
methods: ["PSD", "statistics"]
flow: ["rocket-plume", "supersonic", "heated"]
phenomena: ["directivity", "source-location", "crackle", "ignition-overpressure", "installation-effects"]
params: {"vehicle": "Space Shuttle RSRM", "D_e": "3.88 m", "thrust": "12.9 MN peak (sea level)", "tests": "TEM-13, FVM-2, FSM-15"}
topics: ["rocket-noise-measurements"]
related: ["haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "james-2012-directivity-curves-rocket-noise-model", "gee-2012-reusable-srm-noise-spectral-statistical", "gee-2010-near-field-vector-intensity-solid-rocket-motor", "gee-2016-near-field-intensity-static-rocket-firings", "reichman-2018-qm2-srm-far-field-acoustics", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: []
summary: "First full-scale RSRM static-firing acoustics (3 tests): positive skewness; OASPL tracks nozzle vectoring; near-field peak ≈23 D_n, far-field directivity peak ≈50°"
---
# Measurement and Characterization of Space Shuttle Solid Rocket Motor Plume Acoustics

- **Authors:** R. Jeremy Kenny (NASA Marshall Space Flight Center), Chris Hobbs and Ken Plotkin (Wyle Laboratories), Debbie Pilkey (ATK Space Systems)
- **Source:** AIAA Paper 2009-3161, 2009 AIAA Aeroacoustics Conference (15th AIAA/CEAS, May 2009). The paper number and conference name are printed on the slide footers and title slide (p. 23–40), not on the paper itself. The year is supported by the PDF creation date (17 Jun 2009), the newest citations (AIAA 2009-3160/3163/3164, May 2009, p. 17) and the Ares I/Constellation context. The old filename's "2016" is wrong.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-measurements/Kenny-EtAl_2009_Measurement-And-Characterization-Of-Space-Shuttle-Solid-Rocket-Motor-Plume-Acoustics.pdf` (40 pp.). It is a composite file: an extended abstract (p. 1–5), the AIAA paper (p. 6–22; printed pages 1–17, so printed page = PDF page − 5) and the conference slides (p. 23–40). Page refs below are PDF pages.
- **Tags:** rocket noise, solid rocket motor, RSRM, Space Shuttle, Ares I, lift-off acoustics, NASA SP-8072, static firing, full-scale measurement, near-field array, far-field directivity, OASPL, positive skewness, nonlinear propagation, ground reflection, wind effects, nozzle vectoring, beamforming (planned)

## Summary
This is a data-acquisition and first-look paper on the first full-scale solid-rocket plume-acoustics data set NASA had collected. Microphones were placed around three horizontal static firings of the four-segment Space Shuttle Reusable Solid Rocket Motor (RSRM) at ATK's T-24 stand in Promontory, Utah (TEM-13, FVM-2, FSM-15). The motivation was Ares I lift-off acoustics: NASA SP-8072 predictions rely on subscale (about 5–50 kN) motor data extrapolated to about 13 MN, and full-scale free-field spectra would remove that extrapolation. The paper describes the motor, terrain, microphone arrays, hardware, calibration and meteorology, then shows time histories, OASPL against time, one-third-octave spectra, a near-field OASPL axial distribution and a far-field directivity. Main observations are positively skewed waveforms (attributed to nonlinear/shock content), sensitivity of OASPL to nozzle vectoring more than to thrust decay, a wind-induced ground-interference dip near 100 Hz, a near-field OASPL peak at about 23 exit diameters and a far-field directivity peak at about 50° from the jet axis. No modelling is done here; updated SP-8072 and Wyle lift-off predictions using the data are in companion papers (refs 6–7).

## Key findings
- **Full-scale data, a first for NASA** (p. 7, 16): the authors state NASA had never before measured large-thrust solid-rocket plume acoustics on the scope needed for a new reference database. The SP-8072 database is subscale, about 5–50 kN against about 13 MN for Ares (p. 7).
- **RSRM thrust is close to RSRMV for the first half of the burn**, so little or no extrapolation is needed to apply the data to Ares I (p. 7).
- **Positive skewness** (p. 11, Fig. 9): time histories at 67 m and 304 m (both 90° to the nozzle exit plane) are skewed towards positive pressure. Peak-to-peak at 304 m is roughly half that at 67 m. The authors cite McInerny (1996) "high sidedness" in launch data and attribute it to nonlinear shock contributions. The slides say "potentially due to plume shock contributions" (p. 33).
- **Ignition overpressure / blast wave** (p. 11–12, Fig. 10): the first wave at 67 m has about 4.5 kPa peak-to-peak, followed by two more peaks at 0.4 s and 0.5 s. It reaches 304 m 692 ms later with about 1 kPa peak-to-peak. With c = 334.7 m/s (5 °C, 85.6 kPa, 48% RH) the travel distance is 231.6 m against an estimated 235.9 m between the microphones.
  > The ambient pressure is garbled in the extraction ("8.5-6 kPa"); 85.6 kPa is assumed (plausible for ~1.3 km elevation). Check p. 11.
- **At max thrust (18–19 s, Fig. 11, p. 12)**: the 67 m signal has many positive spikes and much high-frequency content (about ±2 kPa); the 304 m signal has spikes at a lower rate (about −0.4 to +0.6 kPa range), i.e. more low-frequency weight.
- **Nozzle vectoring matters more than thrust** (p. 12–13, Fig. 12):
  - OASPL was computed from RMS over a 1.4 s window.
  - TEM-13 (non-standard duty cycle, ±6° yaw for the first 30 s plus a rock command near 40 s) shows OASPL varying strongly over the first 40 s. FVM-2/FSM-15 (standard cycle, −5° yaw for 10–20 s) vary less.
  - Thrust falls 27% from about 15 MN to 11 MN by 50 s (vacuum thrust, Fig. 2), yet OASPL drops much less than it does during vectoring. Thrust effects show only in the tail-off near 110 s, where OASPL decays with thrust.
- **Wind-driven ground interference** (p. 14, Fig. 16): FVM-2 at 304 m, 90° shows a fixed dip near the 100 Hz band at several locations, attributed to high winds refracting sound towards the ground and creating a classic pole-microphone destructive interference. TEM-13 and FSM-15 (low wind) do not show it.
- **Near-field OASPL distribution** (p. 15, Fig. 17; FSM-15, seven microphones on a line 67 m off-axis, parallel to the motor axis, from the exit plane to about 50 D_n):
  - Peak OASPL lies between 20 and 30 D_n, close to 23 D_n at all times.
  - Peak about 156.5 dB at T = 20 s (max thrust), slightly lower at 50 and 80 s; about 144 dB near X/D_n ≈ 0 and about 147.5 dB at about 46 D_n (read from Fig. 17).
  - The upstream rise is the same at all times; downstream of the peak the decay steepens at later times (80 s curve drops to about 144 dB at 46 D_n).
- **Far-field directivity** (p. 16, Fig. 18; FVM-2 + FSM-15 combined on the 304 m arc at 50 s): peak OASPL at about 50° from the nozzle centreline, and about the same at other times. The text of the extended abstract (p. 5) says SP-8072 directivity agrees reasonably at larger angles but departs at shallower angles near the jet axis.
- **One-third-octave spectra** (p. 13–14, Fig. 13–15): spectra at matched nozzle-vector times are similar between firings. At 67 m, 90°, the peak is around bands 22–23 (about 160–200 Hz) at roughly 133–135 dB (read from the figure).

> Spectral-peak band and level, and the Fig. 17/18 dB values, are read off low-resolution figures; check against the PDF before quoting.

## Setup / method
- **Facility:** ATK Space Systems T-24 test stand, Promontory, Utah. The motor is horizontal and fires towards a mountainside about 75 exit diameters downstream. Terrain is roughly level with the stand for about 70 m of the motor axis, then drops to the south. The plume boundary drawn on the map is ±21° about the line of fire (plume angle plus maximum yaw) (p. 8–9, Fig. 4).
- **Motor (RSRM)** (p. 7–8, Fig. 1–2):

  | Quantity | Value |
  |---|---|
  | Length | 38.4 m, four cast segments |
  | Case / nozzle exit diameter | 3.71 m / 3.88 m (Fig. 1) |
  | Propellant | ≈ 500,000 kg |
  | Peak thrust | 12.9 MN (sea level); ≈ 15 MN in the vacuum-thrust trace |
  | Burn time | 123 s |
  | Mass flow at max thrust | > 5400 kg/s |
  | Nozzle vectoring | Duty cycle of a few degrees; FVM-2/FSM-15 standard, TEM-13 non-standard (Fig. 3) |

  The text also notes TEM-13 average thrust 3,362,000 lbf (≈ 15.0 MN) in the extended abstract (p. 4). Thrust and mass-flow traces from the three tests matched the design trace and were averaged (Fig. 2).
- **Microphones** (p. 9–10, p. 30–31, Tables A1–A3 p. 17–21):
  - TEM-13: 23 mics; FVM-2: 20; FSM-15: 31 (slides p. 30).
  - All ¼-inch, vertical on tripods (pole mounts), with power modules at the tripod bases; several mic/amp types chosen by expected level.
  - Near-field: a line parallel to the motor axis about 67–75 m off-axis (FSM-15 had 27 near-field mics: 20 in two "T-arrays" for time-domain beamforming and 7 spread along the line to about 50 D_n) (p. 15). Far-field: a 304 m arc (≈ 79 D_n) at fixed angles, roughly 20°–158° from the jet axis across the tests.
  - Separately, ATK had on-motor-case microphones (Endevco, 100 kS/s on a WIN600 recorder) at 180° on the forward segment, aft centre segment and aft dome, with OASPL > 140 dB near the exit plane and just over 130 dB forward (extended abstract, p. 1–2; TEM-13 aft dome OASPL 138.2 dB).
- **Acquisition** (p. 9): two NI PXI chassis with NI-4472 cards, 24-bit, sampled at 96 kHz and 48 kHz with 64× and 128× oversampling and anti-alias filtering. Data are time-resolved throughout.
- **Calibration** (p. 10, Fig. 6–8): lab calibration over octave bands 31.5 Hz–16 kHz; pistonphone before and after each firing with barometric correction. Phased-array mics were phase-matched with a GRAS 50AB intensity calibrator (rated 50–6300 Hz). The usable range is about 100–6300 Hz, since band 19 (80 Hz) is under 10 dB above ambient and band 20 (100 Hz) clears 10 dB.
- **Ground and meteorology** (p. 9–10): ground impedance by ANSI S1.18-1999, measured once (TEM-13/FVM-2) as 160 rayls and assumed for FSM-15. Wind speed/direction, temperature and RH at two heights from a portable station (TEM-13, FVM-2); FSM-15 used ATK's T-22 station. Barometric pressure recorded for all.
- **Analysis** (p. 11–14):
  - Max/min time histories in 0.3 ms intervals (Appendix, p. 17).
  - OASPL vs time from RMS over 1.4 s windows (p. 12).
  - One-third-octave spectra over time slices chosen for similar nozzle vector angle (p. 13). Band number n has centre frequency ≈ 10^{n/10} Hz (band 20 = 100 Hz, p. 10).
  - Beamforming with the T-arrays is planned but not shown (p. 15).
- **Modelling / simulation:** none in this paper. Prediction context is NASA SP-8072 (Eldred 1971): subscale free-field source spectra scaled to RSRMV geometry and flow-stream power, then corrected for vertical launch, pad reflections and propagation (p. 7). Companion work: Haynes AIAA 2009-3160 (SP-8072 Distributed Source Method II), Plotkin AIAA 2009-3163 (Ares I pad lift-off predictions), Owen AIAA 2009-3164 (semi-empirical energy-spectrum jet noise model) (p. 17).

## Key equations
None in the paper. Implied relations used:
- Acoustic power driver: flow-stream (mechanical) power ∝ thrust × exit velocity, a fraction of which becomes acoustic power (p. 6) — the basis of SP-8072 scaling, $W_a = \eta\,\tfrac12 F U_e$ (standard SP-8072 form; not written in the paper).
- OASPL $=20\log_{10}(p_{rms}/20\,\mu\text{Pa})$ with $p_{rms}$ over 1.4 s (p. 12).
- Travel-time check: $d = c\,\Delta t = 334.7 \times 0.692 = 231.6$ m (p. 11) — recomputed, consistent.

## Data tables
**Table A3 (p. 21): FSM-15 microphone positions** (radial distance from nozzle exit origin, angle from the nozzle axis). Extraction lost the channel-to-row alignment at the end; values in order: 70 m at 95, 94, 93, 92, 92, 91, 90, 92, 92, 92° (T-array cluster); 107/37, 111/36, 111/38, 70/71, 92/45, 127/31, 147/26, 168/23 (near-field line); far field 189/20, 310/26, 312/36, 306/46, 312/56.

> The extraction misaligns the last rows and the first channel's position is blank; check Tables A1–A3 against the PDF before reusing coordinates. Tables A1 (TEM-13, p. 17) and A2 (FVM-2, p. 19) give similar near-field (≈ 69–168 m) and far-field (≈ 300–463 m) positions.

**Derived scales (own):** D_n = 3.88 m, so 67 m ≈ 17 D_n and 304 m ≈ 78–79 D_n (slides say 17 and 79, p. 33, 39). Peak near-field source region 20–30 D_n ≈ 78–116 m downstream. The exit velocity is not given, so no Strouhal number can be formed from the paper alone; with a typical solid-motor U_e ≈ 2.5 km/s (assumption), 160–200 Hz gives St = fD/U_e ≈ 0.25–0.3.

## Figures worth remembering
- **Fig. 1 (p. 7):** RSRM dimensions (38.4 m, 3.71 m case, 3.88 m exit).
- **Fig. 2 (p. 8):** averaged vacuum thrust and mass flow against burn time.
- **Fig. 3 (p. 8):** nozzle duty cycles (standard vs TEM-13).
- **Fig. 4 (p. 9):** aerial test-area layout with elevation contours, line of fire, plume boundary and mic positions for all three tests.
- **Fig. 9–11 (p. 11–12):** FVM-2 time histories at 67 m and 304 m: full burn, ignition wave, and 18–19 s zoom showing positive skewness.
- **Fig. 12 (p. 12):** OASPL against time for near-field mics, with thrust overlaid (TEM-13, FSM-15).
- **Fig. 13–16 (p. 13–14):** time histories plus one-third-octave spectra at 67 m/90°, 304 m/46° and 56°, and the FVM-2 100 Hz wind dip.
- **Fig. 17 (p. 15):** near-field OASPL against X/D_n at 20, 50, 80 s — peak at ≈ 23 D_n.
- **Fig. 18 (p. 16):** far-field OASPL polar directivity at 50 s — peak ≈ 50°.
- **Slides (p. 23–40):** same content in summary form; useful for the mic counts and diameter-normalised distances.

## Notation
- RSRM: four-segment Shuttle Reusable Solid Rocket Motor; RSRMV: five-segment Ares I version. TEM, FVM, FSM: Technical Evaluation, Flight Verification and Flight Support Motor static tests.
- D_n: nozzle exit diameter (3.88 m). X/D_n: axial distance downstream of the exit plane.
- Angles: "from the nozzle centerline" = polar angle from the downstream jet axis; "90° with respect to the nozzle exit plane" = sideline.
- Band number n: one-third-octave band with centre ≈ 10^{n/10} Hz.
- SP-8072: NASA monograph "Acoustic Loads Generated by the Propulsion System" (Eldred 1971).

## Relevance to this project
This is a full-scale, purely experimental field-acoustics data paper, far from the lab-scale schlieren/PIV resonance work in CLAUDE.md, but several threads connect.
- **Heated supersonic jet noise at full scale:** a near-field OASPL peak at ≈ 20–30 D_n and a far-field directivity peak near 50° are the signatures of Mach-wave radiation from a large-scale-structure source region well downstream of the potential core. Compare with the source-location and directivity modelling in [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md), [casalino-2009-hybrid-empirical-caa-rocket-noise.md](casalino-2009-hybrid-empirical-caa-rocket-noise.md) and [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md), and with later full-scale solid-motor work ([gee-2010-near-field-vector-intensity-solid-rocket-motor.md](gee-2010-near-field-vector-intensity-solid-rocket-motor.md), [gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md), [reichman-2018-qm2-srm-far-field-acoustics.md](reichman-2018-qm2-srm-far-field-acoustics.md)), which analyse similar ATK static firings in more depth.
- **No screech/BBSAN discussion:** the paper never discusses tones or shock-cell noise; the spectra are broadband with a single low-frequency hump. The "shock contributions" here mean nonlinear steepening and crackle-like positive skewness, not shock-cell (screech/BBSAN) mechanisms. Don't read it as evidence about feedback resonance.
- **Intermittency and statistics:** positive skewness and spikes are a time-domain, non-Gaussian feature that block-averaged spectra (and SPOD) hide. If the user's acoustic analysis extends to heated or high-NPR jets, compute skewness of p and ∂p/∂t alongside spectra. Time-resolved microphones (96 kHz) make the SPOD → reconstruction → Hilbert pipeline feasible in principle, but this paper only uses OASPL in 1.4 s windows and one-third-octave spectra.
- **Non-stationarity from the source:** OASPL tracks nozzle vectoring more than thrust (Fig. 12). It is a reminder that slowly varying operating conditions (vectoring, NPR drift, burn-time thrust decay) change acoustic statistics over time; a sliding-window or Hilbert-amplitude view is the natural way to separate source changes from turbulence-driven intermittency.
- **Test-site lessons for acoustic measurements:** pole-mounted mics give a ground-reflection interference dip that wind can move into the band of interest (here 100 Hz); measure ground impedance and meteorology; calibrate phase for arrays (usable range set by ambient noise, 10 dB rule). Directly useful when planning outdoor or large-hall acoustic arrays, and a cautionary note for interpreting dips in far-field spectra.
- **Impingement link:** the T-24 firings are free-jet (plume mostly undeflected, mountainside at ≈ 75 D_n); launch-pad lift-off adds deflector/impingement and reflection effects, handled only by the SP-8072 correction factors and companion prediction papers. For impingement physics see [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md) and [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md).
- **Modelling side:** none here; SP-8072 is the model being tested. The verdict is qualitative (reasonable directivity agreement at larger angles, departure near the jet axis, extended abstract p. 5). The quantitative comparison is in Haynes (AIAA 2009-3160) and Plotkin (AIAA 2009-3163), both candidates for `/add-paper`, as is McInerny (1996) on launch-vehicle "high sidedness". See also the review [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md).
