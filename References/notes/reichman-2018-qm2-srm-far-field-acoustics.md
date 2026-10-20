---
key: "reichman-2018-qm2-srm-far-field-acoustics"
title: "Acoustic measurements in the far field during QM-2 solid rocket motor static firing"
authors: ["Reichman, B. O.", "Harker, B. M.", "Neilsen, T. B.", "Gee, K. L.", "Ohm, W.-S."]
year: 2018
type: "conference"
venue: "Proc. Mtgs. Acoust. 29, 045008"
bib: {"booktitle": "Proceedings of Meetings on Acoustics (172nd ASA Meeting, Honolulu, 2016)", "volume": "29", "pages": "045008", "publisher": "Acoustical Society of America", "note": "paper 2aPA10"}
doi: "10.1121/2.0000727"
arxiv: ""
pdf: "Rocket_Noise_Papers/Reichman-EtAl_2018_Acoustic-Measurements-In-The-Far-Field-During-QM-2-Solid-Rocket-Motor-Static-Firing.pdf"
version: "conference"
unverified: []
group: false
facility: "Orbital ATK static-test site near Brigham City, Utah"
data: ["full-scale", "microphones-far", "intensity-probe"]
methods: ["PSD", "statistics", "vector-intensity"]
flow: ["rocket-plume", "supersonic", "heated"]
phenomena: ["nonlinear-propagation", "crackle", "directivity"]
params: {"vehicle": "SLS five-segment booster QM-2", "angle": "80–120°", "r": "2.40–2.64 km"}
topics: ["rocket-noise-measurements"]
related: ["gee-2012-reusable-srm-noise-spectral-statistical", "kenny-2009-space-shuttle-srm-plume-acoustics", "james-2012-directivity-curves-rocket-noise-model", "gee-2016-near-field-intensity-static-rocket-firings", "gee-2010-near-field-vector-intensity-solid-rocket-motor", "gee-2023-sls-artemis-i-far-field-noise", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: ["gee-2012-reusable-srm-noise-spectral-statistical", "gee-2016-near-field-intensity-static-rocket-firings", "james-2012-directivity-curves-rocket-noise-model", "kenny-2009-space-shuttle-srm-plume-acoustics"]
summary: "SLS booster QM-2 static firing, 80–120° at ~2.5 km: OASPL 118→106 dB, 10–20 Hz peaks, derivative skewness >20 at 80–100° (crackle); PAGE intensity 5 Hz–5 kHz"
---
# Acoustic measurements in the far field during QM-2 solid rocket motor static firing

- **Authors:** B. O. Reichman, B. M. Harker, T. B. Neilsen, K. L. Gee (Brigham Young University); W.-S. Ohm (Yonsei University)
- **Source:** Proc. Mtgs. Acoust. 29, 045008 (2018), doi:10.1121/2.0000727. Paper 2aPA10, 172nd ASA meeting, Honolulu, 28 Nov – 2 Dec 2016 (PDF p. 2). The page footers and copyright line give 2018 and the cover sheet is dated 22 Feb 2018; the cover-sheet citation line prints "(2016)", the meeting year. 2018 is used here.
- **PDF:** `References/Paper_PDFs/Rocket_Noise_Papers/Reichman-EtAl_2018_Acoustic-Measurements-In-The-Far-Field-During-QM-2-Solid-Rocket-Motor-Static-Firing.pdf` (11 pp.). PDF p. 1 is the publisher cover sheet, so printed page = PDF page − 1. Page refs below are **PDF pages**.
- **Tags:** rocket noise, solid rocket motor, SLS five-segment booster, QM-1, QM-2, static firing, far-field acoustics, directivity, OASPL, nonlinear propagation, derivative skewness, crackle, acoustic vector intensity, PAGE method, BYU

## Summary
A short conference proceedings paper giving a first look at far-field noise from the horizontal static firing of QM-2, the second qualification motor of the five-segment Space Launch System (SLS) solid rocket booster, at Orbital ATK near Brigham City, Utah, in June 2016 (p. 3). Five stations at 80°–120° from the downstream nozzle axis, 2.40–2.64 km from the nozzle (about 800 nozzle diameters), recorded pressure; two of them (90°, 120°) used three-microphone 1-D intensity probes (p. 2–4). OASPL falls by 12 dB from 80° to 120°, the spectra peak at 10–20 Hz and move to lower frequency at the aft angles, and high-frequency content far above what linear absorption allows, plus derivative skewness above 20 at 80°–100°, point to strong nonlinear propagation (shock formation) even beyond 2 km (p. 6–9). The phase and amplitude gradient estimator (PAGE) gives usable intensity from 5 Hz to 5 kHz, more than an order of magnitude above the ~170 Hz spatial Nyquist limit of the traditional finite-difference method (p. 7–8, 10). A comparison with QM-1 (March 2015, warmer motor) shows similar spectra but much larger skewness in QM-2, which the authors tentatively put down to atmospheric differences (p. 9). There is no modelling or simulation; the paper is purely an experimental measurement report.

## Key findings
- **Directivity / OASPL** (p. 6–7, Fig. 4 legend): 80° 118 dB, 90° 115 dB, 100° 114 dB, 110° 110 dB, 120° 106 dB. The peak radiation angle is expected near 75° (citing James et al. 2012), so all stations sit aft of the peak and OASPL drops with increasing angle (p. 6). The abstract quotes "an approximate 10 dB change" across the aperture (p. 2); the legend values give 12 dB.
- **Peak frequency** (p. 6, 10):
  - Section 3A text: 15 Hz at 80°, 20 Hz at 90°, then lower again at 120° (p. 6).
  - Conclusions: 10–20 Hz over 80°–110°, dropping to ~3 Hz at 120° (p. 10).
  - The authors note this is opposite to laboratory jet noise, where the peak frequency is usually higher in the forward (sideline/upstream) direction, but matches QM-1 (p. 10).
  - > Check Fig. 4: by eye the 80° curve peaks near ~12 Hz at ~105 dB/Hz and the 90° curve near ~20 Hz at ~101 dB/Hz; the text's numbers are approximate.
- **Nonlinear propagation, frequency domain** (p. 6): significant energy remains up to ~10 kHz at 80°–100°. Linear atmospheric absorption alone would remove over 100 dB at 4 kHz over 2 km, so the content must be regenerated by waveform steepening.
- **Nonlinear propagation, time domain** (p. 8–9, Fig. 6): derivative skewness Sk{∂p/∂t} ≥ 5 is taken as the threshold for significant shocks (citing Reichman et al. 2016 JASA). Read from Fig. 6: ≈ 23.5 (80°), ≈ 21 (90°), ≈ 32 (100°), ≈ 2.4 (110°), ≈ 0.7 (120°). So 80°–100° are strongly shock-laden and 110°–120° are not. These far-field values are similar to those measured near the rocket (Gee et al. 2012) (p. 8).
- **PAGE vs traditional intensity** (p. 7–8, Fig. 5; the paper does not say which intensity station is shown):
  - Traditional finite-difference SIL starts to fall as the spatial Nyquist frequency is approached: ~170 Hz for 1 m total spacing. Errors of a few dB already at ~60 Hz, severe underestimation above (p. 7).
  - PAGE SIL overlays SPL up to 5 kHz with the same spacing, >10× the spatial Nyquist frequency (p. 7). Conclusions: good intensity estimates 5–5000 Hz (p. 10).
  - Implication: intensity probes can use much wider spacing than the usual 1–2" and still keep bandwidth, which helps low-frequency accuracy (p. 7).
- **QM-1 vs QM-2** (p. 9–10, Fig. 7):
  - Same motor design; motor conditioned to 90 °F for QM-1 and 40 °F for QM-2 (p. 9).
  - QM-1 OASPL: 70° 110 dB, 90° 119 dB, 120° 113 dB. QM-2 is 4 dB lower at 90° and 7 dB lower at 120° (p. 9–10).
  - At 90° the spectrum peaks near 105 dB at ~15 Hz, 4 dB below QM-1 (p. 9). > Check: in Fig. 4 it is the 80° curve, not 90°, that reaches ~105 dB/Hz.
  - Both tests show the peak frequency moving down toward the aft angles (p. 9).
  - QM-2 has much shallower ground-interference nulls, likely due to different weather (March vs June); no weather or topography data were available (p. 9).
  - QM-2 skewness exceeds 20 at 80°–100°, whereas QM-1 peaks at about 3. The text says the QM-1 peak is at 90°, but Fig. 7 shows ~3.1–3.2 at 70° and ~2.6–2.9 at 90° (p. 9–10). The authors think the motor temperature difference is an unlikely cause, since levels and peak frequencies are similar, and favour changed atmospheric propagation (p. 9).
  - QM-1's 70° station had no line of sight (hill), so QM-2 started at 80° (p. 3); but Fig. 7 does plot a QM-1 70° spectrum and skewness. > The two statements are hard to reconcile; check the QM-1 paper (Reichman et al. 2015, POMA 25).

## Setup / method
- **Source:** five-segment SLS solid rocket booster, based on the Shuttle SRB with 15% more thrust; QM-2 qualification motor, horizontal static firing, Orbital ATK near Brigham City, Utah, June 2016 (p. 3). Nozzle diameter not given; ~2500 m ≈ 800 D implies D ≈ 3.1 m *(own estimate from p. 2)*.
- **Stations** (p. 3–4, Fig. 1, Table 1): angles from the downstream nozzle axis (0° = exhaust direction), all in public viewing areas.

  | Angle (°) | 80 | 90 | 100 | 110 | 120 |
  |---|---|---|---|---|---|
  | Distance (km) | 2.64 | 2.45 | 2.40 | 2.54 | 2.54 |
  | Type | pressure | intensity probe | pressure | pressure | intensity probe |
  | OASPL (dB, Fig. 4) | 118 | 115 | 114 | 110 | 106 |
  | Sk{∂p/∂t} (Fig. 6, read by eye) | ≈23.5 | ≈21 | ≈32 | ≈2.4 | ≈0.7 |

  Distances span 0.24 km (~10%); levels are not corrected to a common radius (p. 4).
- **Acquisition** (p. 4): 80° station at 204.8 kHz (NI PXI, 4498 card); other stations at 50 kHz (NI USB DAQ, 9233 card). Record length not stated.
- **Intensity probes** (90°, 120°; p. 4–5, Fig. 2): three phase-calibrated G.R.A.S. pressure microphones, vertical (grazing incidence), in a straight line on a PVC pipe on a tripod, pointing at the motor; total spacing 1 m (from the Nyquist statement, p. 7). Plane-wave propagation across the probe is assumed (extreme far field), so only the radial (1-D) intensity component is estimated.
- **Pressure stations** (80°, 100°, 110°; p. 5, Fig. 3): one larger and one smaller free-field G.R.A.S. microphone on a wooden dowel, pointed horizontally at the motor. > Microphone sizes are garbled in the text extraction (probably 1/2" and 1/4"); check p. 4–5.
- **Processing:**
  - PSDs per microphone (Fig. 4). Block length, window and overlap are not stated. All metrics are time-averaged over the firing; no time-frequency or nonstationarity analysis is attempted.
  - Intensity: traditional finite-difference cross-spectral method vs PAGE (Thomas et al. 2015; Gee et al. 2016, 2017), which takes the amplitude and phase gradients separately and unwraps the phase above the spatial Nyquist frequency (p. 7).
  - Derivative skewness of the time derivative of pressure as the shock metric (p. 8).
- **Modelling / simulation:** none. Expected directivity is taken from the empirical rocket-noise model of James et al. (2012) (p. 6); linear absorption estimate for 2 km is quoted without method or atmospheric conditions (p. 6).

## Key equations
None are written in the paper. The standard forms of the two metrics it uses, for reference (not from this PDF):

- Derivative skewness (Reichman et al. 2016 JASA, ref. 9):
  $$\mathrm{Sk}\{\partial p/\partial t\} = \frac{\langle (\dot p - \langle \dot p\rangle)^3\rangle}{\sigma_{\dot p}^{3}}$$
  with threshold ≥ 5 for significant shocks (p. 8).
- PAGE active intensity (Thomas et al. 2015, ref. 2), per frequency:
  $$\mathbf{I}_a(\omega) \approx \frac{1}{\omega \rho_0} P^2(\omega)\, \nabla\phi(\omega)$$
  with P² the mean squared pressure amplitude across the probe and ∇φ the (unwrapped) phase gradient, both from finite differences along the probe.
  > Both equations are standard textbook forms, not transcribed from this paper.
- Spatial Nyquist frequency for the traditional method: f_Nyq = c/(2Δx) ≈ 343/(2·1 m) ≈ 170 Hz (p. 7; own arithmetic matches).

## Data tables
See the station table above (Table 1 plus OASPL from Fig. 4 and skewness from Fig. 6). QM-1 OASPL for comparison: 70° 110 dB, 90° 119 dB, 120° 113 dB (Fig. 7, p. 10).

## Figures worth remembering
- **Fig. 1** (p. 3): map of the five stations relative to the test stand.
- **Fig. 4** (p. 7): PSD at every microphone, 2 Hz–20 kHz, colour-coded by angle, with OASPL legend; high-frequency tails at 80°–100° extend to ~10–20 kHz; ground-interference ripples near 100–500 Hz.
- **Fig. 5** (p. 8): SPL vs SIL (traditional and PAGE) at an intensity station; traditional SIL collapses above f_Nyq ≈ 170 Hz with deep nulls, PAGE follows SPL to 5 kHz.
- **Fig. 6** (p. 9): derivative skewness vs angle, peak ≈ 32 at 100°.
- **Fig. 7** (p. 10): QM-1 vs QM-2 spectra and derivative skewness side by side.

## Notation
- θ: angle from the downstream nozzle axis (0° = exhaust direction, 90° = sideline).
- OASPL: overall sound pressure level; SPL: sound pressure level; SIL: sound intensity level (dB re 1 pW/m²).
- PAGE: phase and amplitude gradient estimator. TRAD: traditional finite-difference intensity.
- Sk{∂p/∂t}: skewness of the pressure time derivative.
- QM-1, QM-2: first and second SLS booster qualification motors.

## Relevance to this project
- **Link to the user's work:** this is a full-scale, heated, highly supersonic exhaust far-field dataset with no modal or source analysis. Its value for the user is context: the strong aft directivity (Mach-wave radiation, peak near 75° per James et al. 2012) and the unusual trend of peak frequency falling toward the aft angles, which the authors flag as opposite to lab jet noise. That trend is worth keeping in mind when comparing heated, high-Mach rocket plumes with the cold, moderately underexpanded jets studied in the Shock Lab group, where screech and BBSAN dominate the upstream/sideline arcs instead. Neither screech nor BBSAN is discussed here, and none would be expected at these frequencies for a 3 m nozzle at 2.5 km.
- **Nonlinear propagation and crackle:** derivative skewness is a cheap, single-microphone, time-resolved metric that the user's acoustic pipeline could add to basic statistics (step 1 of the workflow in CLAUDE.md). Lab-scale jets will show much lower values because propagation distances are short; it is mainly useful for heated, high-Mach or impinging cases where crackle is possible (cf. the shocklet discussion in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md)).
- **Data requirements:** all methods here need time-resolved pressure (PSD, derivative skewness, PAGE intensity). None applies to non-time-resolved PIV. The paper reports only record-averaged quantities: there is no treatment of intermittency, nonstationarity during the burn, or time-varying amplitude/frequency, so it does not feed the SPOD → reconstruction → Hilbert POD pipeline directly. A Hilbert or wavelet analysis of the burn would be the natural extension.
- **PAGE intensity:** relevant if the lab uses multi-microphone probes or arrays; PAGE lets wider spacings keep bandwidth well above the spatial Nyquist frequency, useful for low-frequency resonance tones with physically small arrays.
- **Related notes (planned siblings):** QM-1 and earlier SRM work in [gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md) (near-rocket skewness this paper compares with) and [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md); directivity model in [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md); PAGE near-field intensity in [gee-2016-near-field-intensity-static-rocket-firings.md](gee-2016-near-field-intensity-static-rocket-firings.md) and [gee-2010-near-field-vector-intensity-solid-rocket-motor.md](gee-2010-near-field-vector-intensity-solid-rocket-motor.md); later SLS flight data in [gee-2023-sls-artemis-i-far-field-noise.md](gee-2023-sls-artemis-i-far-field-noise.md); review in [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md).
