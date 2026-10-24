---
key: "mcinerny-1996-launch-vehicle-acoustics-overall-levels-spectra"
title: "Launch Vehicle Acoustics Part 1: Overall Levels and Spectral Characteristics"
authors: ["McInerny, S. A."]
year: 1996
type: "article"
venue: "J. Aircraft 33(3), 511–517"
bib: {"journal": "Journal of Aircraft", "volume": "33", "number": "3", "pages": "511--517"}
doi: "10.2514/3.46974"
arxiv: ""
pdf: "rocket-noise-measurements/McInerny_1996_Launch-Vehicle-Acoustics-Part-1-Overall-Levels-And-Spectral-Characteristics.pdf"
version: "published"
unverified: []
group: false
facility: "Launch-site far-field microphone stations (B&K 2230 sound-level meters; B&K 2143 real-time analysers; Endevco 2510 on a tower); launch sites and dates not given"
data: ["full-scale", "microphones-far"]
methods: ["statistics", "PSD", "empirical-model"]
flow: ["rocket-plume", "launch-vehicle", "supersonic", "heated", "clustered-jets"]
phenomena: ["directivity", "acoustic-efficiency", "source-location", "nonlinear-propagation", "atmospheric-propagation", "installation-effects"]
params: {"vehicle": "Scout; Delta; Peacekeeper; Titan IV (two launches)", "T": "0.44 MN (Scout); 3.1 MN (Delta); 2.2 MN (Peacekeeper); 10.5 MN (Titan IV)", "OAPWL": "185.9; 193.1; 191.7; 198.8 dB (from an assumed η = 0.005)", "η": "0.005 (assumed)", "θ_p": "70° (assumed, from vertical launches)", "Q_max": "8 dB (maximum OASPL); 5 dB (6 dB-down average)", "M_e": "3.0–3.5 (typical rockets)", "T_exhaust": "1800–2100 K", "d": "0.30–15.73 km (160–4900 D_e)", "St_peak": "≈0.015–0.025 (fD_e/V_e, constant-bandwidth PSD)"}
topics: ["rocket-noise-measurements", "rocket-noise-models"]
related: ["mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2021-falcon-9-far-field-noise", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "kellison-2026-falcon-9-noise-two-campaigns", "james-2012-directivity-curves-rocket-noise-model", "gee-2012-reusable-srm-noise-spectral-statistical", "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft", "gee-2023-sls-artemis-i-far-field-noise", "varnier-2001-rocket-engine-freejet-noise-model"]
cites: []
summary: "Scout/Delta/Peacekeeper/Titan IV at 0.3–16 km: origin of the η 0.5% + 8 dB OASPL_max model (rms 4 dB); 70° launch directivity; HF falls slower than absorption"
---
# Launch Vehicle Acoustics Part 1: Overall Levels and Spectral Characteristics

- **Authors:** S. A. McInerny, Associate Professor, Department of Mechanical Engineering, University of Alabama, Tuscaloosa (p. 511). Single author; not Shock Lab group work. The same author later reanalysed the Scout and second Titan IV records with Ölçmen ([McInerny & Ölçmen 2005](mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation.md)).
- **Source:** Journal of Aircraft 33(3), 511–517, May–June 1996, doi:10.2514/3.46974 (DOI from the publisher's download banner on each page). Received 1 Sept 1994, revised 5 Jan 1996, accepted 6 Jan 1996 (p. 511). Acknowledges N. Keegan (The Aerospace Corporation) for support and H. Himelblau (p. 516). Earlier versions are AIAA Paper 93-4384 (ref. 12) and a 1994 congress paper (ref. 13), which holds the one-third-octave versions of the PSDs and the normalised band levels of the other launches (p. 515).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-measurements/McInerny_1996_Launch-Vehicle-Acoustics-Part-1-Overall-Levels-And-Spectral-Characteristics.pdf` (index key `rocket-noise-measurements/McInerny_1996_Launch-Vehicle-Acoustics-Part-1-Overall-Levels-And-Spectral-Characteristics.pdf`, 7 pp., publisher's version). Scanned pages with an OCR text layer. Table 1 and eqs. 1–5 were checked against pages rendered at 300 dpi. **PDF page = journal page − 510.** Journal p. 517 is half references, half an AIAA book advert.
- **Tags:** rocket noise, launch vehicle, Scout, Delta, Peacekeeper, Titan IV, Titan IIID, far-field acoustics, maximum OASPL, acoustic efficiency, mechanical power, directivity factor, vertical vs horizontal firing, Cole et al. 1957, ground effects, dimensionless sound power spectrum, Strouhal number fD_e/V_e, equivalent diameter, clustered motors, one-third-octave band power, SP-8072, nonlinear propagation, atmospheric absorption, 6 dB-down window

## Summary
McInerny summarises far-field data from five launches of four vehicles, measured at 0.3–15.7 km from the pads: Scout (0.44 MN, one solid motor), Delta (3.1 MN; six strap-on solids lit at lift-off plus a liquid core), Peacekeeper (2.2 MN) and two Titan IVs (10.5 MN) (p. 511–513). The maximum 1 s OASPLs, normalised to 1 km, are tested against the classic prediction: acoustic power is 0.5% of mechanical power, spread spherically from R = d/sin 70°, with an 8 dB peak directivity factor. The prediction is too high for the three smaller vehicles and too low for the Titan IV, which suggests that η grows with motor size (Table 1, p. 514). One launch had trajectory data. For it, directivity factors from Cole et al.'s 1950s vertical launches (8 dB peak at 70–75°) reproduce the timing and the rise and fall of OASPL much better than factors from horizontal firings (5 dB at 50–55°). The author thinks the horizontal data are contaminated by ground effects (p. 512, 514–515). Dimensionless constant-bandwidth sound-power PSDs on fD_e/V_e peak near the SP-8072 value of 0.025, but fall below the SP-8072 curve at high frequency (Figs. 5–8, p. 515–516). Neither the maximum levels nor the spectra change with distance as spherical spreading plus absorption predicts. Below about 123 dB the maximum OASPL falls faster than spherical spreading, even where absorption is negligible, while high-frequency levels fall less than absorption predicts. The author suggests nonlinear propagation as a possible cause of both (p. 514–516). Nothing is computed beyond the empirical prediction chain.

## Key findings
- **Maximum OASPL against the η = 0.5%, Q = 8 dB prediction** (Table 1, p. 514; errors are my arithmetic, prediction − measurement):
  - Scout: 116.0–117.7 dB normalised against 122.4 dB predicted, 4.7–6.4 dB too high.
  - Delta: 123.4–126.1 against 129.6 dB, 3.5–6.2 dB too high.
  - Peacekeeper: 126.0–127.5 against 128.2 dB, 0.7–2.2 dB too high.
  - Titan IV, first launch: 136.8 dB at 0.5 km (1.5 dB too low), 129.5–131.3 dB at 12.6–15.7 km (4.0–5.8 dB too high).
  - Titan IV, second launch: 135.2–140.0 against 135.3 dB, up to 4.7 dB too low.
  - Over all 19 stations the error runs from +6.4 to −4.7 dB, with a mean of +2.0 dB, a mean absolute error of 3.6 dB and an rms of 4.1 dB. These match the "+6.4/−4.7 dB, rms 4.0 dB, N = 19" that the [Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) quotes for McInerny's fit (p. 53).
  - The author's reading is that η is below 0.5% for small motors and above it for large ones. She cites Guest (1964): 0.5% is a good estimate for T > 2.2 MN but overestimates smaller motors. Delta's strap-ons are only 380 kN each (p. 513–514, 516).
  - The text on p. 514 says "η = 0.005%"; the value used everywhere else is 0.005, i.e. 0.5%.
- **Maximum OASPL falls faster than spherical spreading at low levels** (p. 514):
  - Where measured OASPLs are below 123 dB (one Scout station and several Titan IV stations), the maximum OASPL decays faster than spherical spreading. For the Titan IV, whose peak one-third-octave bands are below 50 Hz, absorption cannot explain this.
  - In numbers (my arithmetic from Table 1):
    - Titan IV, second launch: the normalised level drops 4.8 dB from 0.82 to 13.15 km. That is 24 dB per decade of distance, about r⁻¹·².
    - Titan IV, first launch: it drops 5.5–7.3 dB from 0.5 km to 12.6–15.7 km.
    - Scout: it drops 1.7 dB from 0.36 to 1.22 km, nearly all of it in the last step.
  - Linear absorption below 50 Hz is under about 0.1 dB/km (ISO 9613-1 at 20 °C, my estimate), so under about 1.5 dB at 15 km.
  - The 123 dB threshold is loose (my reading). The raw maxima at Scout 0.64 and 0.94 km (121.0 and 118.0 dB) are also below 123 dB, yet they follow spherical spreading.
- **The two Titan IV launches differ by about 4 dB** once normalised to 1 km, with the second louder. Calibration signals were recorded in all cases, so the author thinks instrumentation alone is unlikely to explain it (p. 514).
  - My suggestions: the second campaign used sound-level meters standing on the ground with the microphone about 37 cm up ([McInerny & Ölçmen 2005](mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation.md) p. 578–579), which gives pressure doubling at low frequency. The first used a tower (0.5 km) and unstated mounts.
  - The Table 1 d/D_e column also implies different exit diameters: D_e ≈ 3.2 m for the first launch and ≈ 3.35 m for the second (my arithmetic). Whether the motors differed is not stated.
- **Directivity factors tested by timing** (Figs. 2–3, p. 514–515; first Titan IV launch, trajectory known):
  - Horizontal static-firing factors (Cole et al. 1957, their Fig. 46; 5 dB peak for 50° ≤ θ ≤ 55°) put the predicted OASPL peak substantially later than measured at all four stations. At 0.5 km the prediction is about 136 dB at t ≈ 13–14 s, against a measured 140–143 dB at t ≈ 10–11 s (read from Fig. 2).
  - Vertical-launch factors (8 dB peak for 70° ≤ θ ≤ 75°) "substantially improved" timing and trend at all four stations: about 140 dB at t ≈ 9–10 s at 0.5 km (read from Fig. 2).
  - They still overpredict at the distant stations. At 12.62 km the prediction is about 113 dB at t ≈ 75–80 s against a measured 107–108 dB at t ≈ 90–100 s; the two agree on the decay after about 110 s (read from Fig. 3a).
  - The author puts the far overprediction down to the prediction ignoring the nonlinear transfer of energy from the low-frequency spectral peak to high frequencies (refs. 10–11, Pestorius & Blackstock 1974; Webster & Blackstock 1978) (p. 514–515). No absorption was applied, since almost none is expected in the bands that control the Titan IV OASPL (p. 515).
  - Erratum to the earlier version: the predictions in AIAA 93-4384 were 3 dB too high because the ½ in the mechanical power was omitted (p. 515).
  - The early levels in Fig. 2 (ignition overpressure, about 125–127 dB at t ≈ 2–4 s) are "misleading". One-third-octave Butterworth filtering and 1 s averaging do not suit a transient (p. 514–515).
- **Why vertical and horizontal directivities differ** (p. 512):
  - Cole et al. (1957) found peak angles of 50–60° from the exhaust axis for horizontally fired rockets and 70–80° for vertical launches.
  - They considered and rejected four explanations: source changes from vehicle motion, the procedure for deriving directivity from launches, blast deflectors, and interaction with the ground. They offered no explanation.
  - McInerny's view, stated as an opinion: the horizontal ground-test data are themselves influenced by ground effects.
    - Her evidence is a deflector study with horizontally fired 1000 lb-thrust model rockets (Cole, England & Powell 1960). In it, on-vehicle SPLs were sometimes higher on the side away from the deflected plume.
    - She also compares it with vertical scale-model deflector tests (Van Ert et al. 1963) and with launch data.
- **Ground reflection is not in the model** (p. 513). Eq. 1 has no ground-reflection term. The author suggests the effect may already be built into the larger vertical-launch directivity factors.
- **Spectra** (Figs. 4–8, p. 515–516):
  - **Titan IV, first launch, one-third-octave sound power** (Fig. 4, p. 515):
    - The 0.5 km tower spectra are lobed, which the author attributes to ground reflection; the tower heights are unknown.
    - High-frequency SPLs fall with distance less than absorption plus spreading would give, while the low-frequency peak falls more.
    - At fD_e/V_e ≈ 1 (≈ 0.8–0.9 kHz) the 12.6–15.7 km curves sit about 25–30 dB below the 0.5 km curves (read from the figure). Linear absorption at about 4 dB/km over the extra 13–16 km would give about 50–65 dB (ISO 9613-1 at 20 °C, my estimate).
    - The low-frequency peak sits about 5–7 dB lower at the far stations (read from the figure), matching the Table 1 excess.
  - **Dimensionless PSDs** (all read from the figures):
    - Scout: a broad plateau of about +8 to +10 dB between fD_e/V_e ≈ 0.008 and 0.035, peaking near 0.015 (Fig. 5).
    - Delta: about +5 to +11 dB at ≈ 0.02 (Fig. 6).
    - Peacekeeper: about +12 dB between 0.012 and 0.025 (Fig. 7).
    - Titan IV: about +18 dB (0.82 km) down to +12 dB (13.15 km) at ≈ 0.02 (Fig. 8).
    - With η = 0.005 the normalised PSDs come out too low for Scout and Delta and too high for Titan IV (p. 515), as Table 1 implies.
  - **Absorption is visible only at low levels** (p. 516). Spectra fall with frequency and distance, as absorption would make them, only where the 6 dB-down average OASPL was below 120 dB: the three farther Scout spectra and the Titan IV spectra at 5.79 and 13.15 km. Above 120 dB the spectra overlay at high frequency whatever the distance.
  - **High-frequency slope** (my reading of Fig. 8): about −20 dB/decade (f⁻²) above fD_e/V_e ≈ 0.3 at the nearest Titan IV station. This is the slope [McInerny & Ölçmen 2005](mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation.md) found in the same records (p. 586–587).
  - **Against SP-8072** (Eldred 1971, ref. 8) (p. 516). Peak frequencies and peak levels agree once corrected for the actual efficiencies. At high frequency, however, the launch PSDs are "deficient in energy" relative to SP-8072. It is not known whether SP-8072's PSD, which was built from one-third-octave SPLs, had linear absorption corrections applied.
  - **Delta diameter** (p. 515). Using D instead of √2 D would raise the Delta curves by a little more than 1 dB and shift them slightly to lower Strouhal number.
  - **Unexplained dips** (my reading). The PSDs have dips or kinks near fD_e/V_e ≈ 0.12 (Scout), 0.2–0.25 (Delta), 0.15 (Peacekeeper) and 0.4–0.5 (Titan IV). The paper does not discuss them.
    - They fit a first ground-reflection null near 330 Hz for the typical 1.5 ms delay found in the same records ([McInerny & Ölçmen 2005](mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation.md) p. 580).
    - Converted with the D_e and V_e implied by Table 1, 330 Hz falls at 0.10, 0.15, 0.18 and 0.38 respectively (my arithmetic).
- **Source region and geometry criteria** (p. 511–512):
  - **Plume parameters.** The laminar (potential) core is 16–20 D_e long and the supersonic core 25–35 D_e. Exit Mach numbers are typically 3.0–3.5, and the exhaust is at 1800–2100 K. As a result, flow that is subsonic relative to the plume's own sound speed is still supersonic relative to the atmosphere. Mach wave radiation and the long source region give rockets their high radiation efficiency.
  - **Dominant source region.** It is centred downstream of the laminar-core tip and upstream of the supersonic-core tip, and is about (L_c + L_s)/2 long. The geometric far field therefore needs d ≫ 30 D_e.
  - **Undeflected plume.** Radiation counts as coming from an undeflected plume once the nozzle is above h ≈ 1.5 L_s = 45 D_e. That gives d ≥ 45 D_e tan θ_p ≈ 125 D_e for θ_p = 70°.
  - **Vertical trajectory.** The approximation holds out to d ≈ 2000 D_e. The 70° cone reaches the ground at 2000 D_e when the vehicle is at 750 D_e.
  - My checks: 45 tan 70° = 123.6 and 750 tan 70° = 2061. ✓
  - Every station satisfies d ≥ 125 D_e (160–4900 D_e). The second Titan IV's 13.15 km station (3920 D_e) lies beyond the 2000 D_e limit, yet it was processed with the vertical-trajectory assumption (my observation). The first launch's far stations used the measured trajectory.
- **Strouhal number and clusters** (p. 513):
  - Rocket constant-bandwidth PSDs peak near fD_e/V_e ≈ 0.025 (SP-8072). That is an order of magnitude below subsonic jets (refs. 1, 3).
  - For n closely clustered identical motors, D_eq = √n D.
    - Titan IV's two motors are well separated, so a single D_e is used.
    - Delta's lit solids come in pairs separated by an unlit motor, so √2 D is used.
    - Delta's liquid core supplies about 1/5 of the lift-off thrust. It is counted in the sound power but assumed not to affect the spectrum shape, since the solid plumes shield it.
  - The one-third-octave peaks quoted on p. 513 sit higher in Strouhal number than the narrowband peaks (my arithmetic, using the D_e and V_e implied by Table 1). They are 100–125 Hz for Scout, 50–80 Hz for Peacekeeper and Delta, and about 20 Hz for Titan IV. These give fD_e/V_e ≈ 0.024–0.037, 0.027–0.043, 0.022–0.035 and 0.023 respectively, against the 0.015–0.02 of the constant-bandwidth PSD peaks. This is the usual offset between band and narrowband peaks.

## Setup / method
**Launches and stations** (p. 511–513; d/D_e from Table 1):

| Launch | Stations, km from pad | d/D_e | Instruments and records |
|---|---|---|---|
| Titan IV, first | 0.5 (two microphones on a tower, heights unknown); 12.62, 13.58, 15.73 (within a 9° sector) | 160; 3940–4900 | At 0.5 km: Endevco 2510 piezoelectric microphones on FM tape (upper limit 2500 Hz), one-third-octave bands 8–2000 Hz only. At 12.6–15.7 km: B&K 2143 real-time analysers with 4165 microphones, 1 s one-third-octave levels written to floppy disk every second. Timing coordinated with the launch; trajectory data available. |
| Peacekeeper | 0.30, 0.61, 1.22 | 210–840 | B&K 2230 sound-level meters with 4155 microphones; timing not coordinated with launch |
| Delta | 0.46, 0.61, 0.92 | 400–800 | As above |
| Scout | 0.36, 0.64, 0.94, 1.22 | 420–1410 | As above |
| Titan IV, second | 0.82, 2.04, 3.41, 5.79, 13.15 | 245–3920 | As above |

- **Background data:** six unpublished Titan IIID stations (3.32–18.35 km, three launches, mid-1970s), first studied while developing a noise prediction scheme for Advanced Launch System designs. Their octave-band data showed "anomalously low absorption" at high frequencies (p. 511). They are not shown.
- **Instrument response** (p. 512–513):
  - Sound-level meters (measured without the microphone): −1 dB at 3.5–7 Hz and −3 dB at 2–3.5 Hz. The meter at the second Delta station was −1 dB at 22 Hz and −3 dB at 4.5 Hz, as printed.
  - The 4155 microphone calibration curves go down only to 20 Hz. B&K state that the 4155 is acoustically similar to the 4165, which is nominally −1 dB at 5 Hz and −3 dB at 2 Hz.
  - Peak one-third-octave bands are 50–80 Hz (Peacekeeper, Delta), 100–125 Hz (Scout) and close to 20 Hz (Titan IV). Titan IV bands below the peak may be affected by roll-off.
- **Not given here:** sample rate, recorder, microphone heights for the second series, launch sites and dates.
- **Same records as McInerny & Ölçmen 2005.** That paper reanalysed the Scout and second Titan IV records (my comparison).
  - The station distances match, except 2.04 km here against 2.00 km there.
  - Its 3 dB-down L_eq values sit −0.1 to 1.6 dB above the 6 dB-down averages here, as a shorter window around the peak should (the −0.1 dB is Titan IV at 3.41 km).
  - It gives the recording details missing here: TEAC DAT at 48 kHz, and sound-level meters standing on the ground with the microphone about 37 cm up ([McInerny & Ölçmen 2005](mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation.md) p. 578–579).
- **Processing** (p. 513–514):
  - **Maximum OASPL:** the maximum 1 s OASPL at each station, normalised to 1 km by spherical spreading (Table 1).
  - **6 dB-down window:** FFTs averaged over the time during which the 1 s OASPL was within 6 dB of its maximum. This was typically 7–13 s for Peacekeeper, Delta and Scout and 12–36 s for Titan IV.
    - Hanning window, 50% overlap.
    - Spectra shown in 4 Hz bands up to fD_e/V_e ≈ 0.1, 20 Hz bands for 0.1–1.0 and 100 Hz bands above.
    - Block length and number of averages are not given.
  - **Directivity in the averaged spectra:** a constant 10 log₁₀ Q(θ) = 5 dB at all frequencies. Q varies from 2 to 8 dB across the 6 dB window, taking Cole et al.'s 7–8 dB vertical-launch peak as 8 dB. The source distance is R = d/sin 70°.
  - **Efficiency:** η = 0.005 for every vehicle.
  - **One-third-octave sound power:** levels averaged over the 6 dB-down period and normalised with eq. 3.
  - **OASPL against time (first Titan IV only):** R(t) and θ(t) from the trajectory, eq. 5 (eq. 1 integrated over frequency), the two directivity sets, and no absorption.
- **How the methods depend on the data:**
  - Maximum OASPL, OASPL against time and one-third-octave spectra need only running band levels. The far stations of the first launch recorded nothing else, so no narrowband PSD or waveform statistic exists for them.
  - The narrowband PSDs need continuous pressure records.
  - Both are block averages over a non-stationary event. Across the 12–36 s Titan window the emission angle and source distance change, and with them Q by about 6 dB, but the method treats the window as stationary with one Q (p. 513).
  - Nothing here applies to non-time-resolved data such as PIV.
- **Modelling side:** the empirical source model of the SP-8072 family. It is not run as a distributed source.
  - **Model.** Acoustic power ηW_m with W_m = ½TV_e; a normalised spectrum PSD(f) on D_e/V_e; a directivity q(f, θ), reduced to an overall Q(θ); spherical spreading (eqs. 1–5).
  - **Assumptions:** statistically stationary data, spherical spreading, an observer in the geometric far field, and a vertical trajectory (except for the first Titan IV launch). There is no ground-reflection, absorption, refraction, nonlinear or flight-effect term (p. 513).
  - **Inputs:** both directivity sets come from Cole et al. (1957, WADC TR 57-354). The source-region geometry (core lengths) sets only the far-field and undeflected-plume criteria, not the source distribution.
  - **Agreement with measurement:** rms 4.1 dB for the maximum OASPL (my arithmetic), and correct timing with the vertical-launch directivity. Nonlinear propagation is invoked only qualitatively; nothing is computed.

## Key equations
Checked against pages rendered at 300 dpi.

- **Narrowband far-field spectrum** (eq. 1, p. 513):
  $$\frac{p'^2(R,f,\theta)}{\rho_0c_0}=\frac{1}{4\pi R^2}\,q(f,\theta)\left[\left(\eta\,\tfrac12TV_e\right)\mathrm{PSD}(f)\,\frac{D_e}{V_e}\right]$$
  Here p'² is the sound pressure spectral density (Pa² Hz⁻¹) and PSD(f) the dimensionless sound power spectral density. The text does not state the normalisation. Consistency with eq. 5 needs $\int \mathrm{PSD}\,(D_e/V_e)\,df = 1$ when q is frequency-independent (my inference).
- **Window-averaged form** (eq. 2a, p. 513), with Q(θ) replacing q(f, θ):
  $$\frac{\langle p'^2[R(t),f,\theta(t)]\rangle}{\rho_0c_0}=\frac{1}{4\pi R^2}\,Q(\theta)\left[\left(\eta\,\tfrac12TV_e\right)\mathrm{PSD}(f)\,\frac{D_e}{V_e}\right]$$
- **Dimensionless PSD from data** (eq. 2b, p. 513):
  $$\mathrm{PSD}(f)=\frac{\langle p'^2[R(t),f,\theta(t)]\rangle}{\rho_0c_0}\,\frac{4\pi R^2}{\eta\,\tfrac12TV_e}\,\frac{V_e}{D_e}\,\frac{1}{Q(\theta)}$$
  The paper uses 10 log₁₀ Q = 5 dB and R = d/sin 70°.
- **Normalised one-third-octave power** (eq. 3, p. 513):
  $$\text{dimensionless }\tfrac13\text{-OBPWL}=\tfrac13\text{-OBSPL}+10\log_{10}(4\pi R^2/\mathrm{m}^2)-\mathrm{OAPWL}-5\ \mathrm{dB}$$
- **Overall sound power** (eq. 4, p. 513):
  $$\mathrm{OAPWL}=10\log_{10}\!\left(\eta\,\tfrac12TV_e/10^{-12}\,\mathrm{W}\right)\ \mathrm{dB}$$
- **Overall mean-square pressure** (eq. 5, p. 514), eq. 1 integrated over frequency:
  $$\frac{p'^2(R,\theta)}{\rho_0c_0}=\eta\left(\tfrac12TV_e\right)\frac{1}{4\pi R^2}\,Q(\theta)$$
  In dB (with ρ₀c₀ ≈ 400 rayl so that the pressure and power references match):
  $$\mathrm{OASPL}_{max}=\mathrm{OAPWL}-10\log_{10}(4\pi R^2/\mathrm{m}^2)+8\ \mathrm{dB}$$
  This is the McInerny formula as restated by [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (eq. 2, p. 8).

> **Checks (my arithmetic, not in the paper).**
> - The "Predicted OASPL at 1 km" column of Table 1 is reproduced to 0.1 dB with R = 1 km/sin 70° = 1064 m, e.g. Scout 185.9 − 71.53 + 8 = 122.4 dB. With R = 1 km it would be 0.5 dB higher.
> - Inverting eq. 4 with η = 0.005 recovers the exit velocities the author used: Titan IV 2890 m/s (W_m = 1.52 × 10¹⁰ W, matching the 1.5 × 10¹⁰ W in McInerny & Ölçmen 2005), Peacekeeper 2690 m/s, Delta 2635 m/s.
> - Scout's 185.9 dB with T = 0.44 MN gives V_e ≈ 3540 m/s, out of line with the statement that exit velocities of these solids are about the same (p. 514). McInerny & Ölçmen 2005 give W_m = 6.4 × 10⁸ W for Scout, which with η = 0.005 gives 185.0 dB. The Scout OAPWL, and so its predicted 122.4 dB, may be a misprint or use a different thrust. **Verify.**
> - The normalised maxima and the 6 dB-down averages in the figure captions agree: each raw maximum (Table 1 value − 20 log₁₀ d/km) exceeds the corresponding window average by 0.9–4.1 dB. For example, Titan IV at 0.82 km has a maximum of 141.7 dB against an average of 139.5 dB.

## Data tables
**Table 1 (p. 514)**, with my derived columns. The raw maximum is the Table 1 value − 20 log₁₀(d/1 km). The error is prediction − measurement. The implied η = 0.005 × 10^(−error/10) keeps Q = 8 dB, so ground reflection stays inside the efficiency.

| Vehicle (OAPWL, motors) | d (km) | d/D_e | Max 1 s OASPL at 1 km (dB) | Predicted at 1 km (dB) | Raw max (dB) | Error (dB) | Implied η (%) |
|---|---|---|---|---|---|---|---|
| Scout (185.9 dB, one solid) | 0.36 | 420 | 117.7 | 122.4 | 126.6 | +4.7 | 0.17 |
| | 0.64 | 740 | 117.1 | | 121.0 | +5.3 | 0.15 |
| | 0.94 | 1100 | 117.5 | | 118.0 | +4.9 | 0.16 |
| | 1.22 | 1410 | 116.0 | | 114.3 | +6.4 | 0.11 |
| Delta (193.1 dB, six solids and liquid core) | 0.46 | 400 | 123.4 | 129.6 | 130.1 | +6.2 | 0.12 |
| | 0.61 | 530 | 126.1 | | 130.4 | +3.5 | 0.22 |
| | 0.92 | 800 | 125.0 | | 125.7 | +4.6 | 0.17 |
| Peacekeeper (191.7 dB, one solid) | 0.30 | 210 | 127.2 | 128.2 | 137.7 | +1.0 | 0.40 |
| | 0.61 | 420 | 126.0 | | 130.3 | +2.2 | 0.30 |
| | 1.22 | 840 | 127.5 | | 125.8 | +0.7 | 0.43 |
| Titan IV, first launch (198.8 dB, two solids) | 0.50 | 160 | 136.8 | 135.3 | 142.8 | −1.5 | 0.71 |
| | 12.62 | 3940 | 129.5 | | 107.5 | +5.8 | 0.13 |
| | 13.58 | 4240 | 130.9 | | 108.2 | +4.4 | 0.18 |
| | 15.73 | 4900 | 131.3 | | 107.4 | +4.0 | 0.20 |
| Titan IV, second launch | 0.82 | 245 | 140.0 | 135.3 | 141.7 | −4.7 | 1.48 |
| | 2.04 | 605 | 137.6 | | 131.4 | −2.3 | 0.85 |
| | 3.41 | 1020 | 139.7 | | 129.0 | −4.4 | 1.38 |
| | 5.79 | 1725 | 137.5 | | 122.2 | −2.2 | 0.83 |
| | 13.15 | 3920 | 135.2 | | 112.8 | +0.1 | 0.49 |

Mean errors by vehicle (my arithmetic): Scout +5.3 dB (η ≈ 0.15%), Delta +4.8 dB (≈ 0.17%), Peacekeeper +1.3 dB (≈ 0.37%), first Titan IV +3.2 dB (≈ 0.24%, dominated by the 12–16 km stations), second Titan IV −2.7 dB (≈ 0.93%). These follow the paper's convention: Q = 8 dB, which includes the ground, applied to unadjusted levels. According to the [Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) (p. 52–53), that convention corresponds to halving η once the ground is removed and Q = 5 dB is used. On that basis Scout is about 0.08% and Titan IV within 3.4 km about 0.4–0.7%.

Exit diameters implied by d/D_e (my arithmetic): Scout ≈ 0.86 m, Delta (√2 D) ≈ 1.15 m, Peacekeeper ≈ 1.45 m, Titan IV ≈ 3.2 m (first launch) and ≈ 3.35 m (second). The text (p. 512) puts the first launch's 0.5 km station at 150 nozzle diameters, which implies 3.33 m, whereas Table 1 lists 160.

**OASPL averaged over the 6 dB-down period** (figure captions, p. 515–516):

| Launch | Station: OASPL (dB) |
|---|---|
| Titan IV, first (one-third-octave sums) | 0.5 km: 141.6 and 138.7 (two microphones); 12.62–15.73 km: 104.6–105.1 |
| Scout | 0.36 km: 125.7; 0.64: 118.9; 0.94: 115.2; 1.22: 111.5 |
| Delta | 0.46 km: 128.7; 0.61: 128.3; 0.92: 122.8 |
| Peacekeeper | 0.31 km (0.30 km in Table 1): 134.9; 0.61: 128.2; 1.22: 123.3 |
| Titan IV, second | 0.82 km: 139.5; 2.04: 129.0; 3.41: 127.1; 5.79: 119; 13.15: 109.2 |

## Figures worth remembering
- **Fig. 1 (p. 512):** the geometry: cone of maximum directivity θ_p, vehicle height h, pad distance d and source distance R.
- **Fig. 2 (p. 514):** OASPL against time at 0.5 km from the first Titan IV: two microphones, predictions with vertical-launch factors (ellipses) and with horizontal-test factors (hourglasses). The horizontal set peaks about 3–4 s late and about 5 dB low (read from the figure).
- **Fig. 3 (p. 515):** OASPL against time at 12.62, 13.58 and 15.73 km over 0–350 s. Sound arrives at t ≈ 38 s; the measured peak of about 107–108 dB comes at ≈ 90–100 s, while the vertical-launch prediction peaks at about 113 dB near 75–80 s (read from Fig. 3a).
- **Fig. 4 (p. 515):** normalised one-third-octave PWL of the first Titan IV against fD_e/V_e, with 8 Hz and 1000 Hz markers (8 Hz at fD_e/V_e ≈ 0.01, read from the figure). The 0.5 km spectra are lobed and stay high at high frequency; the 12.6–15.7 km spectra are 5–7 dB lower at the peak and 25–30 dB lower near St 1.
- **Figs. 5–8 (p. 515–516):** dimensionless constant-bandwidth PSDs for Scout, Delta, Peacekeeper and Titan IV (second launch) at each station. These are the key figures for the Strouhal peak (≈ 0.015–0.025), the f⁻²-like high-frequency slopes, and the separation of curves only at stations below 120 dB.

## Notation
- T: thrust; V_e, C_e: exit velocity and exhaust sound speed at the exit; M_e = V_e/C_e; D_e: exit diameter; D_eq = √n D: equivalent diameter for n closely clustered motors.
- W_m = ½TV_e: mechanical power, approximate for imperfectly expanded nozzles; η: acoustic efficiency; OAPWL: overall sound power level re 10⁻¹² W.
- L_c, L_s: laminar (potential) and supersonic core lengths; θ_p: peak directivity angle from the downstream exhaust axis; h: vehicle (nozzle) height.
- d: pad-to-observer distance; R: source-to-observer distance, R = d/sin 70° here.
- p'²(f): sound pressure spectral density (pressure squared per Hz); PSD(f): dimensionless sound power spectral density; ρ₀c₀: characteristic impedance of air; ⟨ ⟩: time average over the 6 dB-down period.
- Q(θ): overall directivity factor; q(f, θ): frequency-dependent directivity factor. The 8 dB and 5 dB quoted are 10 log₁₀ Q.
- OBSPL / OBPWL: (one-third-)octave-band sound pressure / power level; 6 dB-down period: the time during which the 1 s OASPL is within 6 dB of its maximum.

## Relevance to this project
This is the source of the maximum-OASPL formula that later rocket-noise papers test against every new vehicle: OAPWL from η = 0.5% of ½TV_e, spherical spreading, plus an 8 dB peak directivity factor ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 8; [Mathews 2021](mathews-2021-falcon-9-far-field-noise.md) p. 628; [Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) p. 372–375; [Kellison 2026](kellison-2026-falcon-9-noise-two-campaigns.md) p. 7). For the user's rocket-noise work (CLAUDE.md, second research area), it sets the baseline that SATURN-type models are measured against: about 4 dB rms over 19 stations. It also records the assumptions that later work unpicked. It belongs on [rocket-noise-measurements](../Topics/rocket-noise-measurements.md) (far-field launch levels, spectra, distance trends) and [rocket-noise-models](../Topics/rocket-noise-models.md) (η, directivity, OASPL_max, dimensionless spectrum).

**How it sits with the other notes**
- **The 8 dB includes the ground.** The author already suspected that the vertical-launch directivity factors absorb the ground reflection (p. 513).
  - [Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) make this explicit. They split 8 dB into Q_max = 5 dB plus a ground factor 20 log δ, and note that McInerny used 5 dB for 6 dB-down averages and 8 dB for 1 s maxima (p. 375).
  - Both values are confirmed here (p. 513, Table 1).
- **Error baseline.** My recomputation of Table 1 reproduces the thesis's statistics for McInerny's fit exactly: +6.4/−4.7 dB, rms 4.1 dB, N = 19 ([Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 53). The thesis's Atlas V fit has an rms of 1.6 dB.
  - Part of the 4 dB comes from mixing vehicles of different motor size under one η, and from including stations at 12–16 km.
  - [Kellison 2026](kellison-2026-falcon-9-noise-two-campaigns.md) finds the same formula good only to about 4–5 km (p. 7–8). Here the excess decay starts beyond about 3–5 km for Titan IV.
- **Does η depend on motor size?** This paper offers the earliest version of the open question on both topic pages ("Does η depend on clustering?" / "Is η constant?").
  - Its answer: small motors sit below 0.5% and the 10.5 MN Titan IV above it. Delta's 380 kN strap-ons behave like small motors even though the vehicle's total thrust is 3.1 MN (p. 513–514).
  - The implied efficiencies (≈ 0.15% Scout and Delta, ≈ 0.4% Peacekeeper, ≈ 0.9% for the second Titan IV launch, my arithmetic) span a factor of six. The modern near-pad values are about 0.3–0.4% ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 8; [Kellison 2026](kellison-2026-falcon-9-noise-two-campaigns.md) p. 14).
  - This contradicts [Varnier 2001](varnier-2001-rocket-engine-freejet-noise-model.md), who finds η size-independent at 0.6–0.7%. It agrees in direction with Vulcan's separated plumes needing half the Atlas V efficiency ([Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) p. 375).
  - McInerny's per-motor-thrust reading is a hypothesis the modern data could test. It has not been tested.
- **Directivity: 70°, and why static firings read 50°.** The paper's 70° (from Cole et al.'s 70–80° for vertical launches) sits at the top of the modern 64–72° range ([James 2012](james-2012-directivity-curves-rocket-noise-model.md) p. 8; [Mathews 2021](mathews-2021-falcon-9-far-field-noise.md) p. 625; [Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 82).
  - Its explanation for the 50–60° of horizontal firings is ground effects (p. 512). That is a third account, beside two later ones:
    - James 2012: nozzle-centred arcs at 80 D_e are not in the geometric far field.
    - [Gee 2012](gee-2012-reusable-srm-noise-spectral-statistical.md) (p. 10–11) and SATURN (thesis p. 79): the RSRM plume hits a hillside.
  - The three accounts are compatible, not exclusive. The RSRM-based directivity of [Haynes & Kenny 2009](haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md) inherits all three issues.
  - The timing test in Figs. 2–3 is independent of level calibration and anticipates [Kellison 2026](kellison-2026-falcon-9-noise-two-campaigns.md)'s use of the trajectory to turn one microphone's time history into a directivity: the wrong directivity puts the peak 3–4 s late at 0.5 km.
- **Peak Strouhal number and how it is normalised.** The constant-bandwidth PSDs peak at fD_e/V_e ≈ 0.015–0.02 (figures), close to SP-8072's 0.025 (p. 513, 516). The one-third-octave peak bands of the same launches convert to about 0.022–0.043 (my arithmetic).
  - This gives a concrete case for the open question on the topic pages: narrowband and band spectra are mixed, and band peaks sit 1.5–2× higher in Sr.
  - The peaks also lie below Falcon 9's 0.019 on D_e,equiv ([Mathews 2021](mathews-2021-falcon-9-far-field-noise.md) p. 629) and above SATURN's ≈ 0.01 on D_eff ([Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 76–77).
  - The paper already notes the order-of-magnitude gap to subsonic jets (p. 513), which is still unexplained ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 10).
- **High frequencies against SP-8072.** The launch PSDs are deficient at high frequency relative to the SP-8072 PSD (p. 516). The [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) note cites Park (2019) for the opposite, that SP-8072 underestimates high-frequency levels (p. 4). The [Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) finds SP-8072's spectral peak an octave too high (p. 91–98).
  - The paper's own caveat explains part of the conflict: it is not known whether SP-8072's one-third-octave-based PSD was corrected for absorption, and band and narrowband conversions differ.
- **High-frequency levels decay slower than absorption predicts.** This agrees with the later nonlinear-propagation evidence:
  - [McInerny & Ölçmen 2005](mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation.md) find the same records keep f⁻² slopes, with spreading-corrected spectra nearly unchanged at the three nearest Titan IV stations (p. 586–587).
  - [Gee 2008](gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md) shows a linear model 7–12 dB low at 4 kHz (p. 9–10).
  - Atlas V loses about 15 dB at 1 kHz over 7 km against 26 dB from linear absorption ([Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 84–85).
  - The paper's threshold for this behaviour is a 6 dB-down average OASPL of about 120 dB (p. 516). It is a level, not a distance, so it is a candidate for a simple "nonlinear regime" criterion, but it rests on two vehicles.
- **Maximum OASPL decays faster than spherical spreading at long range: disputed cause.** The Titan IV maximum falls as about r⁻¹·² out to 13–16 km (my arithmetic; the 2005 note finds the same for the 3 dB-down L_eq). Absorption cannot explain this below 50 Hz.
  - The paper suggests nonlinear transfer out of the spectral peak (p. 514–516).
  - Against this, [Gee 2008](gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md) finds nonlinearity changes OASPL by only about 1 dB at 305 m (p. 12).
  - The atmosphere is the other candidate: a foggy Atlas V launch decayed at r⁻¹·¹ and a clear one at r⁻¹ ([Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) p. 375). Refraction, ground impedance at grazing incidence and the different emission times seen by each station are not considered here.
  - Kilometre-range shock dissipation could still act over 10+ km. Settling the question needs a nonlinear propagation calculation with the launch-day atmosphere.
- **Same records, different conventions.** [McInerny & Ölçmen 2005](mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation.md) analyse the Scout and second Titan IV records with a 3 dB-down window, θ_p = 60° (R = d/sin 60°) and Guest efficiencies (0.4% and 0.53%). This paper uses a 6 dB-down window, 70° and 0.5%. Distances and levels from the two papers should not be mixed without converting.
  - The 6 dB-down window here is the one [Gee 2023](gee-2023-sls-artemis-i-far-field-noise.md) contrasts with the modern 3 dB-down practice.
  - The "high sidedness" (positive skewness) that [Kenny 2009](kenny-2009-space-shuttle-srm-plume-acoustics.md) cites from McInerny (1996) is not in this paper. It is presumably Part 2 (McInerny 1996b, waveform statistics, cited in the Lubert, Baars and Langenais notes), which is not in the library.
- **Core lengths.** The source lengths quoted by [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) as "McInerny 1996a" (p. 13) and noted in [Varnier 2001](varnier-2001-rocket-engine-freejet-noise-model.md) are here L_c = 16–20 D_e and L_s = 25–35 D_e (p. 511). The Lubert note writes L_c 16–25 D_e, which should be checked.
  - Taking (L_c + L_s)/2 as the source-region length gives about 20–27 D_e. That brackets the 17–22 D_e source location later measured by intensity ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 12–14).

**Modelling side**
- The model is the SP-8072 chain reduced to one compact source per vehicle: ηW_m, a Strouhal-scaled spectrum, an overall directivity factor, and spherical spreading from R = d/sin θ_p.
- It has no propagation physics: no absorption, refraction, ground or nonlinearity. Its misfit pattern (too high far away, wrong for small or clustered motors) is exactly where later models added terms:
  - ground factors ([Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md));
  - an empirical propagation-loss filter and a frequency-dependent directivity map (SATURN, [Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md));
  - source-centred arcs ([James 2012](james-2012-directivity-curves-rocket-noise-model.md)).
- For LES or CAA of rocket plumes ([rocket-noise-models](../Topics/rocket-noise-models.md)), the paper's far-field criteria are a quick check on where a compact-source extrapolation is valid: d ≫ (L_c + L_s)/2 ≈ 30 D_e, and d ≥ 125 D_e for an undeflected plume.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Data needs.** Every analysis here needs time-resolved pressure, except the OASPL and band-level products, which a real-time analyser with 1 s averages also provides. None applies to PIV.
- **A normalisation worth adopting (step 1, basic statistics).** Eq. 2b puts any jet's narrowband spectrum on a sound-power, Strouhal-number axis given η, D_e and V_e. Applied to the group's heated or high-NPR lab-jet microphone spectra, it would place lab and full-scale data on one axis to test the 0.02 against 0.2 Strouhal gap.
  - Report both narrowband and band spectra: the one-third-octave peaks here sit 1.5–2× higher in Sr than the narrowband peaks.
- **Non-stationarity.** The 6 dB-down average is a crude handling of a source whose angle, distance and Q change by 6 dB within the window (p. 513).
  - Short-time spectra, wavelets or Hilbert envelopes of band-passed signals would resolve how the spectrum changes with emission angle.
  - On an array, SPOD-based band filtering followed by HPOD (the user's SPOD → reconstruction → HPOD pipeline) could track the amplitude and frequency of the dominant band as the vehicle climbs.
  - The same caution as in the 2005 note applies: compute high-frequency or shock metrics on the raw signal, not on a low-rank reconstruction.
- **Ground-reflection dips** at a fixed delay (≈ 330 Hz for about 37 cm microphones) appear in all four PSD sets (my reading). Lab microphone stands and floor reflections produce the same artefact, so mounting height should be recorded and the first null checked before interpreting spectral features.

**PyFR staging LES.** Not directly relevant: the LES is of a cold, near-field screech problem.

**Related works cited, candidates for `/add-paper`:**
- Cole, von Gierke, Kyrazis, Eldred & Humphrey 1957 (WADC TR 57-354, noise from fourteen rocket types; the directivity factors).
- Cole, England & Powell 1960 (WADC TR 60-6, blast-deflector effects).
- Van Ert, McGregor & Hart 1963 (Martin Marietta, 624A scale-model flame deflector).
- Eldred 1971 (NASA SP-8072).
- Guest 1964 (NASA TN D-1999, efficiency trends).
- Potter & Crocker 1966 (NASA CR-566, clustered and deflected exhausts).
- von Gierke 1961 (WADC TR 59-676).
- Pestorius & Blackstock 1974 and Webster & Blackstock 1978 (NASA CR-2992), on finite-amplitude noise propagation.
- McInerny's own earlier papers: 1992 (Noise Control Eng. J. 38(1), far-field rocket noise characteristics and predictions); 1992 (2nd Int. Congress, broadband noise of very hot, fast exhausts); AIAA 93-4384; 1994 (3rd Int. Congress).
- The companion Part 2 (McInerny 1996b). None of these is in the library.
