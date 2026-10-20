---
key: "gee-2024-starship-super-heavy-far-field-noise"
title: "Starship super heavy acoustics: Far-field noise measurements during launch and the first-ever booster catch"
authors: ["Gee, K. L.", "Pulsipher, N. L.", "Kellison, M. S.", "Mathews, L. T.", "Anderson, M. C.", "Hart, G. W."]
year: 2024
type: "article"
venue: "JASA Express Lett. 4(11), 113601"
bib: {"journal": "JASA Express Letters", "volume": "4", "number": "11", "pages": "113601"}
doi: "10.1121/10.0034453"
arxiv: ""
pdf: "rocket-noise-measurements/Gee-EtAl_2024_Starship-Super-Heavy-Acoustics-Far-Field-Noise-Measurements-During-Launch.pdf"
version: "published"
unverified: []
group: false
facility: "Starbase OLP-A, Boca Chica, Texas (Starship Flight 5)"
data: ["full-scale", "microphones-far"]
methods: ["statistics", "empirical-model"]
flow: ["launch-vehicle", "rocket-plume", "heated", "clustered-jets"]
phenomena: ["sonic-boom", "crackle", "nonlinear-propagation", "infrasound"]
params: {"vehicle": "Starship Super Heavy (Flight 5)", "thrust": "74.4 MN", "engines": "33 Raptor 2", "distance": "9.7–35.5 km"}
topics: ["rocket-noise-measurements"]
related: ["gee-2023-sls-artemis-i-far-field-noise", "gee-2026-falcon-9-ascent-sonic-boom", "mathews-2021-falcon-9-far-field-noise", "kellison-2026-falcon-9-noise-two-campaigns", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: ["gee-2023-sls-artemis-i-far-field-noise", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2021-falcon-9-far-field-noise"]
summary: "Starship Flight 5 at 9.7–35.5 km: EA model 9 dB under on L_Z,max, 18 dB over on SEL_A; flyback boom near 10 psf; landing burn as loud as liftoff; ≈4–6 SLS launches"
---
# Starship super heavy acoustics: Far-field noise measurements during launch and the first-ever booster catch

- **Authors:** K. L. Gee, N. L. Pulsipher, M. S. Kellison, L. T. Mathews, M. C. Anderson, G. W. Hart (Department of Physics and Astronomy, Brigham Young University)
- **Source:** JASA Express Letters 4(11), 113601 (2024). Received 23 Oct 2024, accepted 4 Nov 2024, published online 15 Nov 2024 (p. 2). Editor: A. Loubeau.
- **DOI:** 10.1121/10.0034453
- **PDF:** `References/Paper_PDFs/rocket-noise-measurements/Gee-EtAl_2024_Starship-Super-Heavy-Acoustics-Far-Field-Noise-Measurements-During-Launch.pdf` (9 pp.). Page refs below are PDF pages: p. 1 is a publisher cover sheet, so article page 113601-n is PDF page n+1.
- **Tags:** rocket noise, launch vehicle, Starship Super Heavy, Raptor 2, clustered nozzles, far-field acoustics, crackle, infrasound, sonic boom, flyback boom, booster landing burn, environmental assessment, RNOISE, SEL, A-weighting, perceived level, SLS, Falcon 9, field measurements

## Summary
A short field-measurement letter from the BYU acoustics group on SpaceX Starship Flight 5 (Oct 2024), which included the first booster catch at the launch tower. Eight synchronised ground stations at 9.7–35.5 km from the pad recorded the launch noise, the booster's flyback sonic boom, the landing-burn noise and a sonic boom from the falling hot-staging ring. The authors compute the single-event metrics used in the FAA environmental assessment (EA) (L_Z,max, L_A,max, SEL_A, plus SEL_Z) and boom metrics (overpressure, Stevens Mark VII perceived level, SEL_A), fit log-distance decay curves, and compare them with the EA's RNOISE-based predictions and with SLS and Falcon 9 data treated the same way. The EA model underpredicts the unweighted maximum level (by up to 9 dB at 35.5 km) but overpredicts SEL_A (by up to 18 dB), which the authors read as the model mishandling the spectral and level changes during ascent. Starship is clearly louder than SLS (equivalent to about 4–6 SLS launches) and at least ten times louder than a Falcon 9 launch at 10–20 km. There is no modelling or simulation of the plume itself; the only "model" is the empirical community-noise prediction used in the EA.

## Key findings
- **Vehicle** (p. 2): 33 Raptor 2 engines give 74.4 MN liftoff thrust, about 2× SLS (39.1 MN) and about 10× Falcon 9 Block 5 (7.6 MN). The closely spaced nozzles make the plumes interact and merge early; photos show a vehicle-width shock-cell diamond during ascent (Fig. 1c, p. 2–3).
- **Four acoustic events at every station** (p. 4–5, Fig. 3): launch L_Z,max, flyback sonic boom, landing burn and hot-staging-ring boom.
  - The L_Z,max segment is shock-like and heard as crackle; at Station 2 car alarms went off during maximum launch noise (p. 4–5).
  - Landing-burn peak noise (13 inner engines lit, then down to 3) is on par with maximum liftoff noise with all 33 engines, which the authors find surprising. They point to the complex aeroacoustics of a supersonic plume firing forward into the direction of travel (Vos et al. 2022) (p. 5).
  - The flyback boom is the largest-amplitude event at all eight stations: 7.1 psf (0.34 kPa) at Station 3 (10.5 km), a clean triple-shock signature like Falcon 9's (p. 5). It set off car alarms at Stations 2 (10.1 km) and 4 (16.6 km) (p. 5).
  - Hot-staging-ring boom: classic N-wave about 30 s after the catch, peak 0.70 psf (34 Pa); at Station 8 (35.5 km) about 0.27 psf (13 Pa) with a much longer rise time; shape distorted by turbulence (p. 5).
- **Infrasound persistence** (p. 5, Fig. 3f): running L_A returns to ambient by about 350 s, but L_Z, dominated by near-lossless infrasound, takes 16–17 min (960–1020 s) to reach prelaunch levels. Similar persistence was seen for Falcon 9 and SLS.
- **Launch noise against the EA prediction** (p. 5, Fig. 4a–d):
  - L_Z,max shows large scatter about any decay trend, which the authors attribute to short, high-amplitude events within the liftoff noise. Measured exceeds predicted by 2 dB near 10 km, 4–5 dB by 20 km and 9 dB at Station 8 (35.5 km).
  - L_A,max follows the EA decay well, with scatter of roughly ±5 dBA (text garbled; see flag). About 105 dBA at Port Isabel (~10 km), about 90 dBA at Laguna Vista (~20 km, near EA value), about 75–80 dBA in Brownsville (30–35 km).
  - SEL_Z and SEL_A decay smoothly with distance over 9.7–35.5 km. SEL_A is 113 dBA at 10 km, comparable to large airliners at takeoff measured 61 m away (p. 5).
  - EA overpredicts SEL_A by about 10 dBA at 20 km and about 18 dBA at 35.5 km. The authors call this a shortcoming of the EA model in handling the changes in spectrum and level during launch (p. 5).
- **Flyback boom against the EA** (p. 6, Fig. 4e): updated EA (FAA 2024) overpressures match from Station 3 (10.5 km) outward, but the two nearest stations measure appreciably more, near or above 10 psf (0.48 kPa), a level linked with glass breakage (p. 6). The conclusion puts this at 1–4 psf above the model around 10 km (p. 7). Impacts were asymmetric (trajectory or meteorology) (p. 6).
- **Boom perception** (p. 6–7, Fig. 4f): PL ≈ 125 dB at 10 km and ≈ 110 dB at 20 km; ≈ 91 dB at 35.5 km. At 20 km this is about 5 dB above a Concorde boom (~105 dB), i.e. about 50% louder (9 dB = loudness doubling). Starship's PL at 20 km ≈ Falcon 9's at 10 km (about 110 dB), so equal level occurs at roughly double the distance (p. 7).
- **Launch vs boom energy** (p. 7): launch SEL_A is about 5 dB above the flyback-boom SEL_A; Falcon 9 shows 5–12 dB.
- **Vehicle comparison** (p. 7, Table 1): SLS is 5–10.5 dB quieter and Falcon 9 9–17 dB quieter than Starship across the four metrics at 10 and 20 km. A Starship launch is equivalent to about 4–6 SLS launches and more than 10 Falcon 9 launches. The authors suggest the gap relative to SLS (which has more than half of Starship's thrust) may partly come from the clustered nozzle layout, citing Kellison & Gee (2023), where the clustered Saturn V produced 2 dB more sound power than SLS despite less thrust (p. 7).

## Setup / method
- **Event:** Starship Flight 5, Starbase Orbital Launchpad A (OLP-A), Boca Chica, Texas; booster returned about 7 min after liftoff and was caught by the tower (p. 2).
- **Stations** (Fig. 2, p. 3):

  | Station | Location | Range from OLP-A |
  |---|---|---|
  | 1 | Margaritaville Hotel roof, South Padre Island | 9.7 km |
  | 2 | Park off Port Rd, Port Isabel | 10.1 km |
  | 3 | Lower Rio Grande Valley NWR | 10.5 km |
  | 4 | Beach Access 3, South Padre Island | 16.6 km |
  | 5 | Zapata Memorial Boat Ramp | ~14.5 km |
  | 6 | Laguna Atascosa NWR | 20.2 km |
  | 7 | Port of Brownsville region | 21.3 km |
  | 8 | Private residence, Brownsville | 35.5 km |

  Station 1 was on a roof; the rest were at ground level. Stations 3 and 6 were in quieter wildlife refuges (p. 3).
- **Hardware** (p. 3): BYU PUMA units (rugged computer, Masterclock GPS-500 time sync, NI 9250 24-bit DAQ at 102.4 kHz, battery). GRAS 47AC 1/2" mics (0.09 Hz–20 kHz) at all stations except Station 8 (GRAS 146AE, 3.15 Hz–20 kHz). Ground-plate/windscreen system designed for launch and sonic-boom measurements. Digital pole-shift filtering extends the low-frequency response, compensating the NI 9250's 0.43 Hz cut-off and the 146AE roll-off.
- **Metrics** (p. 4): all from time-resolved pressure, but only level statistics, no spectra or modal analysis.
  - Running 1-s equivalent levels L_Z and L_A; L_Z,max and L_A,max are the maxima of the 1-s running levels.
  - SEL_Z and SEL_A integrate over the whole event (sensitive to duration).
  - Boom: peak overpressure, Stevens Mark VII PL (NASA implementation, Shepherd & Sullivan 1991) and SEL_A.
  - Distance trends: logarithmic (level vs log range) curve fits to the eight stations (Fig. 4, dashed).
- **Model compared against:** the FAA EA predictions, read off coarse contour plots (FAA 2022 for launch; FAA 2024 updated boom contours, fitted with ellipses and evaluated at the stations) (p. 5–6). Launch noise in the EA uses RNOISE, built on Sutherland (1993) and Plotkin et al. (1997, 2010) (p. 5). The letter does not describe RNOISE's source model; see the sibling notes on rocket-noise models.
- **Cross-vehicle comparison:** SLS (Artemis-I: Gee et al. 2023, Kellison et al. 2023) and three Falcon 9 launches (Anderson et al. 2024) refit with the same curve form, evaluated at 10 and 20 km (p. 7).

## Key equations
None are given. The metrics are standard: $L_{eq,1s}=10\log_{10}\!\big(\tfrac{1}{T}\int_T p_w^2\,dt/p_{ref}^2\big)$ with T = 1 s and weighting w ∈ {Z, A}; $\mathrm{SEL}=10\log_{10}\!\big(\int p_w^2\,dt/(p_{ref}^2\,T_0)\big)$ with T_0 = 1 s, p_ref = 20 µPa (Fig. 4 axis labels, p. 6). These forms are textbook definitions, not written in the paper.

## Data tables
**Table 1 (p. 7): SLS and Falcon 9 launch levels relative to Starship curve fits (dB; negative = quieter than Starship)**

| Data | ΔL_Z,max | ΔL_A,max | ΔSEL_Z | ΔSEL_A |
|---|---|---|---|---|
| SLS (10 km) | −5.1 | −7.5 | −5.0 | −8.6 |
| SLS (20 km) | −10.5 | −9.4 | −6.5 | −10.4 |
| Falcon 9 (10 km) | −12.9 | −17.3 | −11.2 | −14.6 |
| Falcon 9 (20 km) | −10.5 | −11.9 | −12.6 | −9.0 |

> Minus signs were lost in extraction (shown as a replacement character); they are restored from the caption and text, which say both vehicles are quieter. Check against the PDF.

**Approximate measured ranges read from Fig. 4 (p. 6):** L_Z,max about 117–125 dB; L_A,max about 76–106 dBA; SEL_Z about 127–138 dB; SEL_A about 85–116 dBA; boom overpressure about 0.7–11 psf; boom PL about 92–125 dB. *(Read off the figure; not stated in the text.)*

## Figures worth remembering
- **Fig. 1 (p. 3):** size and thrust comparison of Falcon 9, SLS Block 1 and Starship; liftoff, ascent with a single vehicle-width shock diamond (merged plumes), booster descent and catch sequence.
- **Fig. 2 (p. 3):** map of the eight stations with ranges and location table.
- **Fig. 3 (p. 4):** full 500 s waveform at Station 3 with 1-s inserts: crackle-like launch peak (±~100 Pa), triple-shock flyback boom (~+340 Pa), landing-burn noise, ring N-wave; running L_Z and L_A (L_Z peaks ≈ 120+ dB at ~70 s).
- **Fig. 4 (p. 6):** six panels of metric vs range (log axis) with EA predictions and log fits: (a) L_Z,max, (b) L_A,max, (c) SEL_Z, (d) SEL_A, (e) boom overpressure, (f) boom PL and SEL_A.

## Notation
- L_Z, L_A: running 1-s equivalent levels, unweighted (Z) and A-weighted. L_Z,max, L_A,max: their maxima. SEL_Z, SEL_A: sound exposure levels.
- PL: Stevens Mark VII perceived level. psf: pounds per square foot (1 psf ≈ 47.9 Pa).
- EA: FAA environmental assessment. OLP-A: Orbital Launchpad A. NWR: national wildlife refuge. PUMA: Portable Unit for Measuring Acoustics.

## Relevance to this project
This project centres on supersonic jet resonance and feedback (screech, impinging jets), BBSAN and full-field schlieren/acoustic analysis with SPOD/BMD/HPOD (CLAUDE.md). This letter is a field-metrics paper, so its direct methodological overlap is small, but several points connect.
- **Clustered and merging plumes:** the early coalescence of 33 closely spaced plumes into one vehicle-width shock-cell structure (p. 2) and the speculation that nozzle clustering raises noise beyond thrust scaling (p. 7) are open questions that lab-scale multi-jet experiments could address. The twin-jet coupling work ([nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md), [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md)) is the nearest small-scale analogue of how neighbouring plumes interact.
- **Landing burn / plume into the oncoming flow:** a retro-firing supersonic plume against the freestream is equally loud as full liftoff (p. 5). This is a counter-flow / impingement-like configuration where feedback could plausibly matter; compare the impinging-jet feedback loop in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md). The paper gives no mechanism.
- **Crackle and intermittency:** the paper links liftoff crackle to shock-like waveforms and attributes L_Z,max scatter to short, high-amplitude events (p. 4–5), but quantifies neither (no skewness, derivative skewness or event statistics). Those statistics, and time-local tools (wavelets, Hilbert envelopes, or SPOD → reconstruction → HPOD on full-field schlieren), would be the way to resolve such intermittent events in lab jets. All the metrics here need time-resolved pressure; there is no modal decomposition and no non-time-resolved (PIV-type) analysis.
- **Model validation gap:** the empirical RNOISE-based EA model gets L_A,max about right but misses SEL_A by up to 18 dB and L_Z,max by up to 9 dB (p. 5), showing that source models built on legacy data may not capture spectrum and directivity changes over the trajectory. See the sibling notes on rocket-noise models ([james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md), [casalino-2009-hybrid-empirical-caa-rocket-noise.md](casalino-2009-hybrid-empirical-caa-rocket-noise.md), [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md)) and the review [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md). No LES or physics-based modelling is attempted.
- **Companion field datasets** from the same group and hardware: [gee-2023-sls-artemis-i-far-field-noise.md](gee-2023-sls-artemis-i-far-field-noise.md), [mathews-2021-falcon-9-far-field-noise.md](mathews-2021-falcon-9-far-field-noise.md), [kellison-2026-falcon-9-noise-two-campaigns.md](kellison-2026-falcon-9-noise-two-campaigns.md) and [gee-2026-falcon-9-ascent-sonic-boom.md](gee-2026-falcon-9-ascent-sonic-boom.md) (flyback/ascent booms).
- **Related works cited:** Kellison & Gee 2023 (SLS vs Saturn V sound power), Anderson et al. 2024 (Falcon 9 flyback booms), Mathews et al. 2020 (three Falcon 9 launches), Pilger et al. 2021 (infrasound from 1001 launches), Rasband et al. 2023 (pole-shift filtering), Vos et al. 2022 (retro-propulsion CFD/wind tunnel), and the later Flights 5 vs 6 comparison (JASA EL 2025, listed on the cover sheet). Candidates for `/add-paper`.
