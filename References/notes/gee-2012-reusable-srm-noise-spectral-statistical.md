# Spectral and statistical analysis of noise from reusable solid rocket motors

- **Authors:** K. L. Gee, R. J. Kenny, T. B. Neilsen, T. W. Jerome, C. M. Hobbs, M. M. James (BYU Physics & Astronomy; NASA MSFC; Wyle; Blue Ridge Research and Consulting). Corresponding author K. L. Gee, BYU (p. 1).
- **Source:** Proc. Mtgs. Acoust. 18, 040002 (2012), 164th ASA Meeting, Kansas City, 22–26 Oct 2012, session 3aNS (paper 3aNS9). Received 8 Nov 2012, published 10 Jan 2013, so the page footers say "(2013)"; the citation year is 2012. DOI: 10.1121/1.4789401. Short conference proceedings paper (11 pp. of text), no equations.
- **PDF:** `References/Paper_PDFs/Rocket_Noise_Papers/Gee-EtAl_2012_Spectral-And-Statistical-Analysis-Of-Noise-From-Reusable-Solid-Rocket-Motors.pdf` (13 pp.: PDF p. 1 is the AIP cover sheet; page refs below use the paper's printed page numbers, so printed p. N = PDF p. N+1).
  > The downloaded PDF has a broken incremental update (its page objects point at missing content objects 153–174), so pages 3–13 render blank in poppler and the Read tool reports it as "password-protected". It was read from a scratch copy with those references re-pointed to the q/Q wrapper objects 139/138. The original file in the repo is unchanged apart from the rename.
- **Tags:** rocket noise, solid rocket motor, RSRM, Space Shuttle, SLS, static firing, full-scale measurement, OASPL maps, one-third-octave maps, directivity, source location, waveform skewness, derivative skewness, acoustic shocks, nonlinear propagation, crackle, Mach wave radiation, plume impingement, thrust vectoring, running statistics, BYU

## Summary
The paper reanalyses near- and far-field microphone data from three horizontal static firings of four-segment Space Shuttle RSRMs (TEM-13, FVM-2, FSM-15) at ATK, Promontory, Utah, which NASA funded to update launch-vehicle acoustic-loading models for SLS (p. 2). Data from an 18D sideline line and an 80D polar arc (D ≈ 3.87 m) are combined into cubic-spline maps of OASPL, one-third-octave band levels, waveform skewness Sk{p} and derivative skewness Sk{∂p/∂t}. Peak OASPL radiates at about 56° from the jet axis and traces back to an apparent source 17–18D downstream; the dominant source moves upstream and the directivity moves sideline as frequency rises (p. 4, 6). Pressure waveforms are mildly positively skewed (Sk{p} up to ~0.7), while Sk{∂p/∂t} exceeds 30 near the peak direction and grows with distance, which signals acoustic shocks from nonlinear propagation (p. 7–8). Far downstream (beyond 40D on the sideline, below ~46° on the arc), high-frequency levels and both skewness measures collapse; the authors attribute this to the plume impinging on the hillside at the end of a carved "bowl" ~40D downstream, which they suggest breaks up the large-scale structures that generate Mach wave radiation (p. 10–11). This is a purely experimental, descriptive paper with no modelling.

## Key findings
- **OASPL map and source location** (p. 4, Fig. 4): averaged over 50–60 s of the ~120 s burn, peak directivity is ~56° from the centreline (measured from the nozzle exit), and tracing it back puts the maximum source region at 17–18D downstream on the axis. The authors warn that the spline between the 18D and 80D arrays is only a visual aid, and that geometric spreading can't be assumed because the extent of the geometric near field is uncertain.
- **Test-to-test consistency** (p. 4, Fig. 5): spread between firings is largest (±2–3 dB) in the peak region. The 3 dB-down region spans x/D ≈ 10–35 on the 18D line and 45–70° on the 80D arc. Fig. 5 shows peaks of ~155–159 dB on the 18D line (x/D ≈ 20–30) and ~144–145 dB on the 80D arc (~45–60°) (read from figure).
- **Time variation of OASPL** (p. 5, Fig. 6; TEM-13 at x/D = −31, −1, 16, 34 on the 18D line):
  - Nozzle vectoring affects level more than thrust variation does. Horizontal vectoring early in the burn gives ±1–2 dB oscillations, largest far upstream and downstream.
  - Vertical vectoring (50–70 s and 90–110 s), which lifts the plume off the pad, raises level, most at x/D = 34 but also unexpectedly at x/D = −31.
  - Level falls quickly at ~110 s with the thrust tail-off.
- **Spectral maps** (p. 6, Fig. 7; bands 5, 10, 20, 80, 630 and 10 000 Hz):
  - Higher frequencies peak further upstream and more to the sideline, as in jet noise and in the NASA SP-8072 loading model.
  - The source is spatially extended at low frequency, so the 80D arc is probably not in the geometric far field. This matters if the arc data are used as directivity indices (refs 5, 8).
  - An anomalous downstream "hole" (beyond 40D on the 18D line, below 46° on the 80D arc) appears from about 20 Hz and deepens with frequency. It is much less visible in OASPL.
- **Waveform skewness** (p. 7–8, Fig. 8–9): Sk{p} is positive overall, largest near the peak OASPL direction (map colour scale to 0.7; ~0.7 at x/D ≈ 28–35 on the 18D line and ~0.6–0.75 at ~45–60° on the arc, read from Fig. 9). It varies a lot across the aperture and between firings, especially in the peak downstream direction. FSM-15 drops to ≈0 at x/D 40–46 (Fig. 9, read from figure).
- **Derivative skewness** (p. 8, Fig. 10–11):
  - Sk{∂p/∂t} is largest around the peak radiation direction and grows with distance at almost all angles, which indicates nonlinear propagation (ref. 17). The map scale reaches ~40; Fig. 11 shows up to ~35 on the 18D line (x/D ≈ 34) and ~43 on the 80D arc (~60°).
  - The three firings agree much better in Sk{∂p/∂t} than in Sk{p}. The authors speculate that environmental conditions affect the near-field evolution of Sk{p} more than shock formation.
  - Values above 30 that keep increasing mean a highly non-Gaussian, nonlinear process (a Gaussian process has zero skewness).
  - It also drops off at the farthest downstream positions.
- **Running derivative skewness** (p. 9, Fig. 12; TEM-13): Sk{∂p/∂t} is roughly constant in time except at x/D = 34. There it follows the horizontal vectoring and is much larger during vertical vectoring, i.e. when the plume is angled up and impinges less. OASPL at the same point (Fig. 6) doesn't change in the same way, so plume impingement or ground scrubbing changes how the noise is generated and how shocks form during propagation, without a clear level signature.
- **Plume impingement explains the downstream hole** (p. 10–11, Fig. 13–15; FSM-15, 80D arc):
  - Channel 28 at 26° (inside the hole) looks like random, low-frequency noise, Sk{p} = −0.05. Channel 31 at 56° (peak direction) is shock-like and positively skewed, Sk{p} = 0.64 (Fig. 13 legend).
  - PSDs over 50–60 s (Fig. 14): OASPL 138.2 dB (26°) against 143.2 dB (56°). The 26° peak frequency is lower (as expected: ~4–5 Hz against ~10–25 Hz, read from figure), but the striking difference is the fast drop in energy above the peak and the steeper roll-off above 2 kHz at 26°.
  - The 40D change coincides with the downstream end of the "bowl" carved into the hillside by years of firings (Fig. 15), so impingement is likely much stronger beyond 40D.
  - Proposed mechanism (hypothesis, not tested): strong impingement breaks up the large turbulent structures that produce Mach wave radiation, leaving a more random, spatially incoherent source with less high-frequency content and less skewness (p. 10).
- **Conclusion** (p. 11): the data serve as a baseline for other launch vehicles and high-amplitude jets. Vertical launches and static tests with much stronger impingement are expected to change the noise generation process and the loads on the pad, vehicle and payloads even more.

## Setup / method
- **Facility and motors** (p. 2–3, Fig. 2–3): horizontal static firings of four-segment Shuttle RSRMs at ATK Space Systems, Promontory, UT, fired towards a hillside. The map shows the plume boundary (with vectoring), line of fire and 5 m elevation contours. Thrust profiles and vectoring schedules are in Kenny et al. 2009 (ref. 2; see [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md)).

  | Quantity | Value |
  |---|---|
  | Tests | TEM-13, FVM-2, FSM-15 |
  | Nozzle exit diameter | D ≈ 3.87 m (p. 3) |
  | Burn | ~120 s (p. 4) |
  | Analysis window for maps | 50–60 s (10 s) (p. 4–5) |
  | Vertical vectoring (TEM-13) | 50–70 s and 90–110 s (p. 5) |
  | Microphones | Type 1, 6.35 mm (1/4") pressure mics (p. 3) |
  | Sampling | 48 and 96 kHz (p. 3) |
  | Arrays | sideline line at y ≈ −18D, x/D ≈ −31 to 46; polar arc at ~80D, ~20°–160° from the jet axis; a few extra far points (Fig. 3) |
  | Origin | nozzle exit; angles from the jet centreline (p. 4) |

  > Own conversions (not in the paper): 18D ≈ 70 m and 80D ≈ 310 m, consistent with the 67–75 m near-field line and 304 m arc in Kenny et al. 2009; 40D ≈ 155 m; the 17–18D source ≈ 66–70 m downstream. Jet exit velocity, temperature and Mach number are not given, so no Strouhal numbers can be formed from this paper.

- **Spatial maps** (p. 4): values at microphones common to more than one firing are averaged and then interpolated with a cubic spline over the (x/D, y/D) region between the arrays. The interpolation is explicitly only a visualisation.
- **Running statistics** (p. 5, 9): OASPL and Sk{∂p/∂t} computed over the whole burn in short running windows. The window length is not stated.
- **Spectra** (p. 6, 11): one-third-octave band levels for the maps; narrowband PSDs (dB re 20 µPa/√Hz) over 50–60 s for two channels. Window, block length and overlap are not stated.
- **Statistics** (p. 7): skewness (normalised third central moment of the PDF) of p(t) and of a first-order forward-difference estimate of ∂p/∂t.
- **Data type:** all single-point, time-resolved microphone signals. Nothing needs a field measurement; there are no cross-spectra, coherence or array processing here.
- **No modelling or simulation:** the paper only mentions that the data feed SP-8072-based and related prediction models (refs 1, 3–6) and that ref. 17 (Muhlestein et al. 2012) predicts nonlinear propagation from a solid rocket motor.

## Key equations
The paper prints no equations. The quantities used are the standard definitions (written out here, not copied):
- Skewness: $\mathrm{Sk}\{x\}=\dfrac{\langle (x-\bar x)^3\rangle}{\sigma_x^3}$ (p. 7, defined in words as the normalised third central moment).
- Derivative estimate: $\left.\dfrac{\partial p}{\partial t}\right|_n\approx\dfrac{p_{n+1}-p_n}{\Delta t}$, with Δt = 1/f_s (f_s = 48 or 96 kHz) (p. 7, "first-order forward time derivative estimate").
- OASPL and band levels in dB re 20 µPa.

> Sk{∂p/∂t} depends on sampling rate and on the microphone's high-frequency response, because a finite difference only resolves shock rise times longer than Δt. The paper mixes 48 and 96 kHz data and doesn't say which channels used which, so treat cross-test comparisons of Sk{∂p/∂t} with some care (own remark).

## Data tables
**Spot values quoted in the text** (FSM-15, 80D arc, 50–60 s; p. 10–11, Fig. 13–14)

| Channel | Angle from jet axis | OASPL | Sk{p} | Character |
|---|---|---|---|---|
| 28 | 26° | 138.2 dB | −0.05 | random, low-frequency; steep roll-off above 2 kHz |
| 31 | 56° (peak) | 143.2 dB | 0.64 | shock-like, positively skewed |

**Summary values** (p. 4–8; peak values read from Fig. 5, 9, 11)

| Quantity | 18D sideline | 80D arc |
|---|---|---|
| Peak OASPL | ~155–159 dB at x/D ≈ 20–30 | ~144–145 dB at ~45–60° |
| 3 dB-down region | x/D 10–35 | 45–70° |
| Test-to-test spread at peak | ±2–3 dB | ±2–3 dB |
| Peak Sk{p} | ~0.7 | ~0.6–0.75 |
| Peak Sk{∂p/∂t} | ~35 (x/D ≈ 34, FSM) | ~43 (~60°, FVM) |
| Downstream "hole" | beyond x/D ≈ 40 | below ~46° |

> Figure-read values are approximate; check against Fig. 5, 9 and 11 before reusing.

## Figures worth remembering
- **Fig. 2 (p. 3):** satellite map of the test site with all microphone positions, plume boundary, line of fire and elevation contours.
- **Fig. 3 (p. 3):** simplified microphone layout in x/D–y/D for the three tests.
- **Fig. 4 (p. 4):** combined OASPL map, peak ~56° and apparent source at 17–18D.
- **Fig. 5 (p. 4):** OASPL per test along the 18D line and the 80D arc.
- **Fig. 6 (p. 5):** running OASPL for TEM-13 at four sideline positions with thrust and vectoring schedule. (The right axis reads "Vacuum Thrust / Min Thrust" here but "Thrust / Max Thrust" in Fig. 12; check.)
- **Fig. 7 (p. 6):** one-third-octave maps at 5, 10, 20, 80, 630 and 10 000 Hz showing the upstream/sideline shift with frequency and the downstream hole.
- **Fig. 8–9 (p. 7–8):** Sk{p} map and per-test values.
- **Fig. 10–11 (p. 8–9):** Sk{∂p/∂t} map and per-test values; much better test-to-test agreement.
- **Fig. 12 (p. 9):** running Sk{∂p/∂t} for TEM-13; x/D = 34 rises during vertical vectoring.
- **Fig. 13 (p. 10):** 0.5 s waveform segments at 26° and 56° (FSM-15), random against shock-like.
- **Fig. 14 (p. 11):** PSDs at 26° and 56°.
- **Fig. 15 (p. 11):** Google Earth view of the hillside "bowl" ending ~40D downstream.

## Notation
- D: nozzle exit diameter (≈ 3.87 m). x/D: axial distance from the nozzle exit; y/D: lateral distance. Angles are measured from the jet centreline at the nozzle exit (0° = downstream axis).
- RSRM: reusable solid rocket motor (four-segment Shuttle booster here; SLS uses a five-segment version). TEM, FVM, FSM: Technical Evaluation, Flight Verification and Flight Support Motor.
- OASPL: overall sound pressure level. PSD: power spectral density. Sk{p}: waveform skewness. Sk{∂p/∂t}: derivative skewness. "X/Dn" in Fig. 6 and 12 is x/D.

## Relevance to this project
This project centres on resonance and feedback in supersonic jets studied with time-resolved schlieren and acoustics (see CLAUDE.md). This paper sits at the far end of that range (a full-scale, heated, highly supersonic solid-rocket plume) and is about noise statistics, not resonance.
- **Methods (all time-resolved, single-point):**
  - Running OASPL and running Sk{∂p/∂t} are simple tools for tracking how a source changes over a long record, here driven by nozzle vectoring. They are a crude, block-wise version of what the SPOD → reconstruction → Hilbert POD pipeline would do with field data. In lab tests with a varying condition (NPR sweeps, standoff changes, actuation), the same running statistics on microphones would be a cheap check before modal analysis.
  - Sk{∂p/∂t} is a cheap indicator of acoustic shocks. It needs time-resolved data at high sampling rate and is sensitive to the sampling rate (see Key equations). Sk{p} alone is less consistent between runs (p. 8).
  - Waveform statistics pick up a change in the source (the impingement "hole") that OASPL hides (p. 6, 9). Block-averaged spectra and SPOD would also average this away, so it is worth computing skewness alongside them when studying intermittency or impingement.
  - None of these methods apply to non-time-resolved PIV.
- **Impingement:** the downstream collapse of high-frequency content and skewness where the plume hits terrain is the clearest link to impinging-jet work. The proposed mechanism (impingement breaks up the large-scale structures that radiate Mach waves) is a hypothesis without flow measurements. This is a very different regime from the resonant, near-field impinging jets in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md), where impingement drives a feedback tone rather than randomising the source. Neither paper tests the other's mechanism. Schlieren of a lab jet impinging on an inclined ramp far downstream, with SPOD of the shear layer and far-field skewness, could test it.
- **No screech or BBSAN:** spectra are broadband with a low-frequency hump. As in [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md), "shocks" here are steepened acoustic waves (crackle-like), not shock cells.
- **Source location and directivity:** the upstream and sideline shift of the source with frequency, the ~56° peak and the 17–18D source agree with the large-scale-structure (Mach wave) picture used in launch-vehicle models. Compare with:
  - [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md): same three firings; it reported peak far-field OASPL near 50° on the 304 m arc and positive skewness. This paper adds the spatial maps, derivative skewness and the impingement explanation.
  - [gee-2010-near-field-vector-intensity-solid-rocket-motor.md](gee-2010-near-field-vector-intensity-solid-rocket-motor.md) and [gee-2016-near-field-intensity-static-rocket-firings.md](gee-2016-near-field-intensity-static-rocket-firings.md): intensity-based source location on smaller motors at the same site.
  - [reichman-2018-qm2-srm-far-field-acoustics.md](reichman-2018-qm2-srm-far-field-acoustics.md): far-field Sk{∂p/∂t} of 20–30 from the five-segment SLS booster, which it says is similar to values measured near the rocket here.
  - james-2012-directivity-curves-rocket-noise-model.md (planned): uses these RSRM data to revise SP-8072 directivity curves. The present paper warns that the 80D arc is likely not in the geometric far field at low frequency.
  - [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) and lubert-2022-supersonic-jet-noise-launch-vehicles-review.md (planned) for the broader heated-jet context.
- **Nonlinear propagation statistics:** the growth of Sk{∂p/∂t} with distance links to the full-scale launch notes ([gee-2023-sls-artemis-i-far-field-noise.md](gee-2023-sls-artemis-i-far-field-noise.md), [gee-2024-starship-super-heavy-far-field-noise.md](gee-2024-starship-super-heavy-far-field-noise.md)). Refs 14–17 (nonlinear sinusoid statistics, military jet shock formation, lab supersonic jet skewness, SRM nonlinear propagation prediction) are candidates for `/add-paper`.
