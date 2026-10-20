---
key: "gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft"
title: "The role of nonlinear effects in the propagation of noise from high-power jet aircraft"
authors: ["Gee, Kent L.", "Sparrow, Victor W.", "James, Michael M.", "Downing, J. Micah", "Hobbs, Christopher M.", "Gabrielson, Thomas B.", "Atchley, Anthony A."]
year: 2008
type: "article"
venue: "JASA 123(6), 4082–4093"
bib: {"journal": "Journal of the Acoustical Society of America", "volume": "123", "number": "6", "pages": "4082--4093"}
doi: "10.1121/1.2903871"
arxiv: ""
pdf: "rocket-noise-measurements/Gee-EtAl_2008_The-Role-Of-Nonlinear-Effects-In-The-Propagation-Of-Noise-From-High-Power-Jet-Aircraft.pdf"
version: "published"
unverified: []
group: false
facility: "Edwards AFB (F-22A static run-ups)"
data: ["full-scale", "microphones-far"]
methods: ["propagation-model", "PSD"]
flow: ["jet-aircraft", "supersonic", "heated"]
phenomena: ["nonlinear-propagation"]
params: {"vehicle": "F-22A Raptor (F119)", "engine": "idle, 90% rpm, afterburner", "distance": "23–305 m", "angle": "90°–145° from inlet"}
topics: ["rocket-noise-measurements"]
related: ["gee-2012-reusable-srm-noise-spectral-statistical", "reichman-2018-qm2-srm-far-field-acoustics", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "gee-2023-sls-artemis-i-far-field-noise", "mathews-2021-falcon-9-far-field-noise", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: []
summary: "F-22A run-ups, 23–305 m: generalized Burgers propagation matches 305 m spectra to 20 kHz within 2–7 dB; linear model up to 140 dB low; OASPL barely affected"
---
# The role of nonlinear effects in the propagation of noise from high-power jet aircraft

- **Authors:** Kent L. Gee and Victor W. Sparrow (Graduate Program in Acoustics, Penn State; Gee now at BYU Physics and Astronomy), Michael M. James, J. Micah Downing and Christopher M. Hobbs (Wyle Laboratories, Arlington VA; James and Downing now at Blue Ridge Research and Consulting), Thomas B. Gabrielson and Anthony A. Atchley (Penn State)
- **Source:** J. Acoust. Soc. Am. 123(6), 4082–4093 (June 2008). Received 29 Sep 2007, revised 7 Mar 2008, accepted 10 Mar 2008. Parts were presented at the 2005 ASA/Noise-Con meeting and at the 12th AIAA/CEAS Aeroacoustics Conference (2006) (p. 2).
- **DOI:** 10.1121/1.2903871
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-measurements/Gee-EtAl_2008_The-Role-Of-Nonlinear-Effects-In-The-Propagation-Of-Noise-From-High-Power-Jet-Aircraft.pdf` (13 pp.). PDF p. 1 is a publisher cover sheet. **Page refs below are PDF pages; journal page = PDF page + 4080** (e.g. p. 9 = JASA p. 4089). PDF pp. 12–13 hold the end of the conclusion, the acknowledgements and the references.
- **Tags:** jet noise, military jet aircraft, F-22A Raptor, F119 engine, static engine run-up, full-scale measurement, nonlinear propagation, generalized Burgers equation (GBE), acoustic shocks, waveform steepening, atmospheric absorption, one-third-octave spectra, spectral slope, ground reflection, linear vs nonlinear propagation models, Penn State, Wyle, Edwards AFB

## Summary
The paper asks whether nonlinear propagation matters for noise from full-scale, high-power jet aircraft. It measures an F-22A Raptor during static engine run-ups at Edwards AFB, with one engine at idle, 90% rpm or afterburner, using microphones 23–305 m away on five radials between 90° and 145° from the inlet (p. 3–4). Waveforms recorded at an input distance (usually 23 m) are propagated to 305 m with two free-field models: a nonlinear model based on the generalized Burgers equation (GBE), and the same model with the nonlinear term removed (linear spreading plus atmospheric absorption and dispersion) (p. 3). At 90% rpm and afterburner the nonlinear model matches the measured 305 m one-third-octave spectra to within 2–7 dB up to 20 kHz. The linear model is 7–12 dB low at 4 kHz and 120–140 dB low at 20 kHz (p. 9–10). The nonlinearity appears at intermediate thrust, over the whole 90°–145° aperture, and does not depend on which distance is used as input (p. 10–11). OASPL barely changes, so the authors argue that the effect on perception, rather than on single-number metrics, needs study (p. 12).

## Key findings
- **Idle is linear** (p. 8, Fig. 7): along 125° the nonlinear and linear predictions from 23 to 305 m are almost identical (OASPL 72.8 vs 73.0 dB; measured 75.7 dB). Above 2 kHz both agree with the measurement within 1 dB. Errors below 200 Hz are put down to meteorology (they are not always present), and errors at 500 Hz–2 kHz to ground reflections.
- **Afterburner, 125°, 23 → 305 m** (p. 9, Fig. 8): between 2 and 4 kHz the nonlinear prediction is within 2 dB of the measurement, while the linear one is 12 dB low. Over the full band (10 Hz–20 kHz), the 20 kHz band is about 4 dB off with the nonlinear model and about 140 dB off with the linear model. OASPL: measured 121.8, nonlinear 119.9, linear 120.3 dB.
- **The same low-frequency excess (<200 Hz) appears at idle and afterburner.** These runs were taken less than 1 min apart (7:35 and 7:36), so the excess is taken to be a linear, meteorological effect and not a nonlinear one (p. 9). An earlier paper (ref. 21) used the idle residual to correct the afterburner prediction empirically (footnote 29, p. 13).
- **Predicted waveforms** (p. 9, Fig. 9): the nonlinearly propagated 23 → 305 m waveform shows the same steepened shocks as the measured 305 m waveform. The linear prediction is only slightly smoother than the 23 m input, because absorption is low at the characteristic frequencies and the loss of high-frequency content cannot be seen on this time scale (p. 10).
- **90% rpm is also strongly nonlinear** (p. 10, Fig. 10): the linear prediction is 7 dB low at 4 kHz and more than 120 dB low at 20 kHz, whereas the nonlinear prediction is within 7 dB. OASPL: measured 114.6, nonlinear 114.6, linear 115.0 dB. Low-frequency agreement is better than at idle or afterburner, which were recorded about 10 min earlier in different meteorological conditions.
- **Measured signs of shocks, 90% rpm** (p. 6–7, Fig. 4):
  - The high-frequency slope of the one-third-octave spectrum stays near −3 dB/octave from 23 to 91 m out to 20 kHz. This is the shock signature: −6 dB/octave narrowband becomes −3 dB/octave in one-third octaves.
  - By 152 m the power law gives way to an exponential roll-off above about 5 kHz, and the transition frequency drops further by 305 m.
  - Amplitude-scaled waveforms (multiplied by r/23 m) steepen out to 61–91 m. Beyond that, the shocks thicken as absorption takes over.
- **Afterburner versus 90% rpm** (p. 7, Fig. 5): OASPL is 5–7 dB higher at every distance. The high-frequency decay at 152 and 305 m is slower, and the shocks at 305 m have shorter rise times.
- **Choice of input distance has little effect** (p. 10, Fig. 11): the 23 m microphone is probably not in the geometric far field, so 23, 61 and 152 m inputs were each propagated to 305 m.
  - Afterburner: the predictions differ by at most about 1 dB in any band (OASPL 119.9 / 120.4 / 120.9 dB against 121.8 measured).
  - 90% rpm: the 61 → 305 m prediction is too high above 400 Hz and the others too low above about 3 kHz. Together they bracket the measurement, and all are far closer than the linear model.
- **Nonlinearity is not confined to the peak angle** (p. 11–12, Figs. 12–13):
  - At 145° the nonlinear effects are similar to those at 125° for both engine conditions.
  - At 90° (OASPL 10–12 dB below the aft angles at 305 m, p. 7) propagation is clearly nonlinear at afterburner and still nonlinear at 90% rpm. The flattening of the 90% rpm, 90° spectrum at 20 kHz is the instrument noise floor.
  - This **contradicts** an earlier bispectral analysis of an F/A-18E Super Hornet at afterburner (ref. 3), which found no nonlinearity at 90° even though that aircraft's close-range OASPL was several dB higher (p. 11).
- **Effect of the ground** (p. 4–5, Fig. 2): ground interference dominates between 500 Hz and 5 kHz for the 23/61/152 → 305 m pairs. Above that it raises levels by only about 2–3 dB relative to a free-field linear prediction, so it cannot explain the large linear-model shortfall. Measured nulls are shallower and broader than predicted, which the authors attribute to the extended, partially correlated source in the plume rather than a point source.
- **Single-number metrics** (p. 12): nonlinearity changes OASPL less than the experimental uncertainty. Citing Gee et al. 2007 (ref. 30), A-weighted OASPL, perceived noise level, Stevens Mark VII and Zwicker loudness also barely change, yet nonlinearly and linearly propagated waveforms sound very different on playback.
- **Mean absolute error was not used** (p. 8). With strong nonlinearity it is dominated by the highest frequencies, where the linear prediction diverges, so the comparisons are visual.

## Setup / method
### Aircraft and test (p. 3–4)
- F-22A Raptor with two Pratt & Whitney F119 turbofans (160 kN / 35 000 lbf class), two-dimensional convergent–divergent nozzles with ±20° thrust vectoring. No other engine parameters (NPR, temperature, exit velocity) are public.
- One engine (the one nearer the array) was run up while the far engine stayed at idle. The idle comparison (Fig. 7) has both engines at idle (p. 8).
- Edwards AFB, 15 Sep 2004, 6:30–8:00 a.m. PDT. The analysed runs were taken between 7:35 and 7:50. The ground is very flat: tarmac, then lake bed with sagebrush, then bare lake bed; no buildings within several hundred metres.

### Microphones and acquisition (p. 3–4, Fig. 1)
- B&K 4938, 4939 and 4190 and GRAS 40BF condenser microphones, about 1.8 m above the ground. All are free-field types except the 23 m, 125° microphone (4938 pressure type).
- 6.35 mm types (4938, 4939, 40BF) and 12.7 mm types (4190). The 4190s are on the 90° radial and the 305 m arc.
- Because of security limits on setup time, all microphones pointed vertically, i.e. at grazing incidence. Manufacturer corrections were added: for the 4190, about 4 dB at 10 kHz and about 10 dB at 20 kHz (up to 2 dB uncertainty in a one-third-octave band); for the 4939/40BF, 2.5 dB at 20 kHz (<1 dB uncertainty) (p. 5).
- Radials at 90°, 115°, 125°, 135° and 145°, measured from the jet **inlet** (so 125° is 55° from the downstream jet axis). Distances (Fig. 1 labels): 23, 38, 61, 91, 152 and 305 m. Not every distance is on every radial: four 6.35 mm microphones at 61 m cover 115°–145°, and 305 m also has 90°.
- The array origin is about 5.5 m (roughly 7–8 jet diameters) downstream of the nozzle exits, an approximation to the dominant source region, which in reality varies with frequency and angle (p. 3).
- NI PXI-4472 24-bit cards at 96 kHz (**time-resolved pressure waveforms**) (p. 4).

> Radial and distance list read from Fig. 1 (p. 4). Check which distances exist on each radial against the figure: the comparisons use 23 m inputs at 125°, 61 m at 145° and 152 m at 90° (Figs. 12–13), which suggests 90° has no microphone closer than 152 m.

### Meteorology (p. 4, Table I)
- Station at 61 m, 122.5°: temperature at 0.3, 1.7 and 3.3 m; relative humidity at 0.3 and 3.3 m; wind at 4.3 m.
- Near-neutral conditions from about 7:30: wind <0.5 m/s and temperature gradient <0.3 °C/m.

### Spectral processing (p. 5, 8)
- 2²⁰ samples (about 10.9 s) per waveform, passed through one-third-octave filters to give the mean power per band, then band levels. Idle is shown only for the 20 Hz–4 kHz bands because of the noise floor.
- Model inputs are the same 10.9 s records, aligned in retarded time with the receiver records. Predicted waveforms are filtered in exactly the same way as the measurements.

### Nonlinear propagation model (p. 3)
- The GBE (Eq. 1) includes cumulative quadratic nonlinearity, atmospheric absorption and dispersion, and spherical spreading, in a retarded-time frame. Its numerical solution is described in Gee's PhD thesis (Penn State 2005, ref. 18), which builds on Anderson (1974) and Pestorius & Blackstock (1973).
- **Hybrid time–frequency split-step marching:** each step is one-tenth of the shock-formation distance.
  - The nonlinear term is applied in the time domain with the implicit Earnshaw solution.
  - Absorption, dispersion and spreading are applied in the frequency domain, band by band, via an FFT and inverse FFT at every step.
- Because the frequency-domain absorption amounts to FFT-based circular convolution, wraparound is suppressed with a cosine-squared taper on the first and last 100 samples.
- **Assumptions:** free field and homogeneous atmosphere, with no ground reflection, refraction or turbulence, and spherical spreading from the array origin. The input waveform already contains the source's near-field and ground effects.
- The paper does not give the formula or values for the shock-formation distance used to set the step.

### Linear model (p. 3, footnote 26 p. 13)
- Eq. 1 without the ∂p²/∂τ term, i.e. a free-field parabolic model with spreading and absorption/dispersion. It is applied in one step by FFT of the input waveform, multiplication by the spreading and absorption transfer function, and inverse FFT.
- It differs slightly from the earlier conference predictions (refs. 18, 20, 21), which applied the band-centre absorption coefficient to one-third-octave input spectra. That approach is wrong where a band's energy sits at a band edge (Sutherland & Bass 1979; Howell & Morfey 1982).

### Ground-reflection estimate (p. 4–5)
- Spherical waves over a finite-impedance ground (Attenborough et al. 1980) with turbulence smoothing of the interference pattern (Daigle 1979).
- Point source and receiver both at 1.8 m. Effective flow resistivity 4000 kPa·s/m² (exposed, rain-packed dirt; i.e. hard ground). Turbulence length scale 1.1 m and fluctuating index of refraction 3.0 × 10⁻⁶.
- ΔSPL is computed **between** the two distances (input and receiver), because the input waveform already contains reflections. The result is used qualitatively only.

## Key equations
- **Generalized Burgers equation** (Eq. 1, p. 3; rebuilt from the page image):
  $$\frac{\partial p}{\partial r} = \frac{\beta}{2\rho_0 c_0^3}\frac{\partial p^2}{\partial \tau} + \psi_\tau\{p\} - \frac{1}{r}p$$
  where $p(r,\tau)$ is acoustic pressure, $r$ range, $\tau$ retarded time, $\beta$ the coefficient of nonlinearity, $\rho_0$ ambient density, $c_0$ small-signal sound speed, and $\psi_\tau$ the atmospheric absorption and dispersion operator. The terms are, in order, nonlinearity, absorption/dispersion and spherical spreading.
- **Spectral-slope rules** (p. 6):
  - Near-source jet noise in narrowband: about $f^2$ (+6 dB/octave) below the peak and $f^{-2}$ (−6 dB/octave) above.
  - In one-third octaves the bandwidth grows with $f$, so these become +9 and −3 dB/octave.
  - Shocked random noise (Gurbatov & Rudenko 1998): $f^{-2}$ narrowband (−3 dB/octave in one-third octaves) up to roughly the inverse shock rise time, then an exponential roll-off.
- **Spherical-spreading scaling** used to compare waveforms (p. 7): $p_\text{scaled}(r) = p(r)\,r/(23\ \text{m})$.

## Data tables
### Mean ambient conditions (Table I, p. 4; at 1.8 m by interpolation; wind at 4.3 m)

| Engine condition | Time (PDT) | Pressure (atm) | Temperature (°C) | RH (%) | Mean wind (m/s) |
|---|---|---|---|---|---|
| Idle | 7:35 | 0.92 | 15.0 | 48 | 0.1 |
| 90% rpm | 7:49 | 0.92 | 16.5 | 51 | 0.5 |
| Afterburner | 7:36 | 0.92 | 15.0 | 48 | 0.1 |

### Measured OASPL along 125° (dB re 20 µPa; legends of Figs. 3, 4a, 5a, p. 6–7)

| Distance (m) | Idle | 90% rpm | Afterburner | AB − 90% |
|---|---|---|---|---|
| 23 | 96.1 | 137.9 | 143.1 | 5.2 |
| 38 | 93.5 | 134.3 | 139.5 | 5.2 |
| 61 | 89.6 | 129.7 | 135.3 | 5.6 |
| 91 | 85.9 | 124.8 | 131.7 | 6.9 |
| 152 | 81.6 | 120.9 | 127.3 | 6.4 |
| 305 | 75.7 | 114.6 | 121.8 | 7.2 |

> Read from figure legends. The last column is my own subtraction and matches the stated "5–7 dB" (p. 7). Spherical spreading alone gives 20 log₁₀(305/23) = 22.4 dB from 23 to 305 m; the measured drops are 20.4 (idle), 23.3 (90%) and 21.3 dB (AB) (own check, not discussed in the paper).

### Afterburner OASPL versus angle (Fig. 6, p. 8)

| Angle from inlet | 61 m | 305 m |
|---|---|---|
| 90° | — | 108.1 |
| 115° | 134.2 | 120.3 |
| 125° | 135.3 | 121.8 |
| 135° | 134.6 | 119.7 |
| 145° | 132.0 | 117.8 |

### Model comparisons at 305 m (OASPL, dB; figure legends p. 8–12)

| Case | Input distance | Measured | Nonlinear | Linear | Fig. |
|---|---|---|---|---|---|
| Idle, 125° | 23 m | 75.7 | 72.8 | 73.0 | 7 |
| AB, 125° | 23 m | 121.8 | 119.9 | 120.3 | 8 |
| 90%, 125° | 23 m | 114.6 | 114.6 | 115.0 | 10 |
| AB, 125° | 61 / 152 m | 121.8 | 120.4 / 120.9 | — | 11a |
| 90%, 125° | 61 / 152 m | 114.6 | 114.6 / 114.5 | — | 11b |
| AB, 145° | 61 m | 117.8 | 117.7 | 117.8 | 12a |
| AB, 90° | 152 m | 108.2 | 106.9 | 107.7 | 12b |
| 90%, 145° | 61 m | 116.1 | 115.3 | 115.6 | 13a |
| 90%, 90° | 152 m | 100.0 | 97.9 | 98.4 | 13b |

> Read from legends. Two oddities to check against the PDF: AB 90° at 305 m is 108.1 dB in Fig. 6b but 108.2 dB in Fig. 12b; and at 90% rpm the 145° OASPL at 305 m (116.1 dB) exceeds the 125° value (114.6 dB), although the paper calls 125° the peak radiation angle for both conditions (p. 10).

### Spectral discrepancies at 305 m along 125° (p. 9–10)

| Case | Linear model low by | Nonlinear model off by |
|---|---|---|
| AB, 2–4 kHz | 12 dB at 4 kHz | ≤ 2 dB |
| AB, 20 kHz band | about 140 dB | about 4 dB |
| 90%, 4 kHz | 7 dB | small |
| 90%, 20 kHz band | > 120 dB | 7 dB |

## Figures worth remembering
- **Fig. 1 (p. 4):** microphone layout on five radials (90°–145° from the inlet), 23–305 m, with microphone types.
- **Fig. 2 (p. 5):** predicted ground-induced ΔSPL between microphone pairs (23/61/152 → 305 m) against one-third-octave band. Strong interference at 500 Hz–5 kHz and about +2–3 dB above.
- **Fig. 4 (p. 6):** 90% rpm, 125°. (a) Spectra from 23 to 305 m, with a high-frequency slope that holds out to 91 m; (b) amplitude-scaled waveforms (±800 Pa) steepening then thickening.
- **Fig. 5 (p. 7):** the same for afterburner, with waveforms at ±1800 Pa and sharper shocks at 305 m.
- **Fig. 8b (p. 9):** the headline figure. The afterburner linear prediction falls to about −60 dB at 20 kHz while the measured and nonlinear spectra stay near 70–80 dB.
- **Fig. 9 (p. 9):** nonlinearly predicted, measured and linearly predicted waveforms at 305 m (±140 Pa). The steepened shocks are reproduced only by the GBE.
- **Fig. 11 (p. 11):** insensitivity to the input distance.
- **Figs. 12–13 (p. 11–12):** 145° and 90° comparisons for afterburner and 90% rpm.

## Notation
- GBE: generalized Burgers equation. AB: afterburner. Mil: military power (100% rpm). 90% rpm: engine turbomachinery at 90% of the military-power rotation rate (p. 10).
- Angles are measured from the jet inlet (aircraft nose direction), so 180° is downstream along the jet axis. Rocket-noise notes such as [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) usually measure angle from the downstream plume axis, so 125° here ≈ 55° there.
- OASPL: overall sound pressure level (dB re 20 µPa). ΔSPL: ground-induced change relative to the free field between two microphone positions.
- β: coefficient of nonlinearity (1.2 for air; the paper gives no value). $\psi_\tau$: absorption and dispersion operator.

## Relevance to this project
- **Rocket-noise modelling:** this is the founding full-scale demonstration that the noise of high-power jets propagates nonlinearly. It underlies the acoustic-shock, crackle and "linear absorption overpredicts losses" findings in the rocket notes:
  - [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) review: shocks at all angles and an f⁻² slope (p. 10 there).
  - [Gee et al. 2012](gee-2012-reusable-srm-noise-spectral-statistical.md): Sk{∂p/∂t} grows with distance for the RSRM.
  - [Reichman et al. 2018](reichman-2018-qm2-srm-far-field-acoustics.md): linear absorption would remove more than 100 dB at 4 kHz over 2 km.
  - [Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md): Atlas V at 10 kHz loses 30–40 dB measured against more than 1200 dB from linear absorption.
  - [Gee et al. 2023](gee-2023-sls-artemis-i-far-field-noise.md) and [Gee et al. 2024](gee-2024-starship-super-heavy-far-field-noise.md): crackle at kilometre ranges.
  - [Mathews et al. 2021](mathews-2021-falcon-9-far-field-noise.md): the Falcon 9 excess above 70 Hz.

  All agree with this paper's main message. Here the GBE model is validated only over 300 m and with a well-defined static source.
- **Agreement and contrast on angle:** this paper finds nonlinearity well away from the peak angle (down to 90° from the inlet, i.e. sideline). The rocket data of Reichman et al. 2018 (large Sk{∂p/∂t} at 80°–100°) agree. The F/A-18E bispectral result cited here (no nonlinearity at 90°) is the dissenting case.
- **Prediction models:** SP-8072-type models and SATURN ([Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md), [Kellison et al. 2026](kellison-2026-falcon-9-noise-two-campaigns.md)) predict OASPL and spectra with linear propagation. This paper shows OASPL is almost unaffected (<1 dB difference between the linear and nonlinear predictions in every case), but high-frequency spectra are badly wrong without a nonlinear step. A GBE or Earnshaw/FFT split-step propagator is the natural add-on (the extension that Mathews 2025, p. 105, lists as future work).
- **Near versus far field:** the input distance (23 m ≈ 30 jet diameters, if D ≈ 0.7 m from "5.5 m ≈ 7–8 diameters") is acknowledged to be short of the geometric far field. It still gives consistent results, which supports propagating near-field measurements outwards. Compare [James et al. 2012](james-2012-directivity-curves-rocket-noise-model.md) (far field only beyond 200–300 D_e) and the near-field intensity work of [Gee et al. 2010](gee-2010-near-field-vector-intensity-solid-rocket-motor.md) and [Gee et al. 2016](gee-2016-near-field-intensity-static-rocket-firings.md).
- **Similarity spectra:** measured high-frequency slopes of heated, high-power jets are shaped by propagation as well as by the source. Keep this in mind when fitting [Tam et al. 1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) large- and fine-scale similarity spectra to far-field data.
- **Lab-scale link:** shock-containing impinging-jet waves are born as weak shocks ([Edgington-Mitchell et al. 2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md)). The lab's acoustic arrays are at small r/D and amplitudes, where cumulative nonlinear steepening over the path is much weaker than here. The one-third-octave slope test (about −3 dB/octave holding with distance) is still a cheap check of whether lab microphone spectra are propagation-affected.
- **Method and data dependence:**
  - The GBE propagator and the waveform comparisons need **time-resolved pressure waveforms** at high sample rate (96 kHz here). The spectra are one-third-octave averages over 10.9 s records.
  - The paper gives no time-local or intermittency analysis: shocks are shown only in short waveform clips. Shocks in jet noise are intermittent, and the skewness of ∂p/∂t (Gee 2012, Reichman 2018) or bispectral/BMD-type measures ([Schmidt 2020](schmidt-2020-bispectral-mode-decomposition.md); the F/A-18E bispectral work, ref. 3) quantify the nonlinear energy transfer.
  - In the SPOD → reconstruction → Hilbert POD pipeline, Hilbert envelopes of high-pass-filtered microphone signals would track how shock activity varies over time.
  - None of these methods apply to non-time-resolved data such as PIV.
- **Modelling side:** this is a 1D, free-field, homogeneous-atmosphere propagation model with no source model. There is no LES, stability or reduced-order model of the jet. Its agreement with the measurements is judged visually, and the residual errors come from what the model leaves out (meteorology below 200 Hz, ground interference at 0.5–5 kHz).
- **Facility:** not a Shock Lab group study (Penn State and Wyle field test at Edwards AFB).
- **Candidates for `/add-paper`:** Gee et al. 2005 AIAA J 43 (F/A-18E nonlinearity, ref. 2); Gee et al. 2005 AIAA-2005-2937 (bispectral analysis, ref. 3); Gee et al. 2006 JASA 120 (outdoor propagation of periodic signals, ref. 12); Gee et al. 2007 JASA 121 EL1 (sound metrics and nonlinear noise, ref. 30); Morfey & Howell 1981 AIAA J 19 (ref. 1); Gee 2005 PhD thesis (ref. 18).
