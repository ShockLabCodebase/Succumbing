# Modification of directivity curves for a rocket noise model

- **Authors:** M. M. James (Blue Ridge Research and Consulting, corresponding), A. R. Salton, K. L. Gee, T. B. Neilsen, S. A. McInerny, R. J. Kenny. Affiliations other than the corresponding author are not printed; the acknowledgements name a Blue Ridge Research and Consulting / Brigham Young University team, with NASA Stennis SBIR support (p. 12).
- **Source:** Proc. Mtgs. Acoust. 18, 040008 (2012); talk 3aNS3 at the 164th ASA Meeting, Kansas City, 22–26 Oct 2012. The proceedings paper was received 20 Jan 2014 and published 31 Mar 2014, and the page footers print "(2014)" (p. 1). The citation year 2012 is used here.
- **DOI:** 10.1121/1.4870986
- **PDF:** `References/Paper_PDFs/Rocket_Noise_Papers/James-EtAl_2012_Modification-Of-Directivity-Curves-For-A-Rocket-Noise-Model.pdf` (13 pp., no cover sheet). Page references below are the paper's printed page numbers, which equal the PDF page numbers in this file.
- **Repaired file:** the publisher's download (kept alongside as `pma.v18.i1.040008_1.online.pdf.orig`, 14 pp. with a cover sheet) has a broken final incremental update (the download stamp) that points pages 2–13 at missing content objects, so they render blank. The indexed PDF is that download truncated at its first `%%EOF` (byte 1367157), i.e. the original 13-page article; it renders correctly. Re-downloading does not help, as the publisher's file has the same fault.
- **Tags:** rocket noise, solid rocket motor, Space Shuttle RSRM, NASA SP-8072, distributed source method (DSM-1, DSM-2), directivity index, apparent source location, geometric far field, OASPL prediction, convective Mach number, Mach-wave radiation, nonlinear propagation, launch-vehicle vibroacoustics, empirical model

## Summary
NASA SP-8072 (Eldred 1971) predicts rocket noise by splitting the plume into slices, giving each a sound power, and radiating it with a far-field directivity index DI(f, θ). Haynes & Kenny (2009) updated the DI from Space Shuttle RSRM static-firing data measured on an arc of 80 D_e centred on the nozzle exit. This paper argues that 80 D_e is not the geometric far field at low frequency, because the low-frequency sources sit tens of diameters downstream (e.g. about 31 D_e at 10 Hz). The authors estimate a frequency-dependent apparent source position from RSRM near-field spectra, re-reference each microphone's angle and distance to that position (spherical spreading correction), and so obtain modified DI curves. Fed into the SP-8072 DSM-1 and DSM-2 models, the modified DI rotate the predicted OASPL peak from about 51° to 65° from the exhaust axis, which agrees with the Oertel–Patz convective-Mach estimate (≈65°). The DSM-1 and DSM-2 peak angles only converge at 200–300 D_e, about 1 km for the RSRM.

## Key findings
- **Apparent source location vs Strouhal number** (p. 3–4, Fig. 2):
  - Following DSM-1, each frequency is assigned one axial source location. It is taken as the position of the peak level at that frequency along a line parallel to the plume axis, offset by 18 D_e (p. 3).
  - St = f D_e/U_e with D_e = 3.88 m and U_e = 2454 m/s (p. 3).
  - The RSRM points follow the SP-8072 undeflected-plume curves where they overlap. At high frequency they follow the "deflected, open scoop" curve, unlike the Orion-50S XLG data of the companion paper. The authors note this may be coincidental, or may reflect the plume impinging on the hillside it was fired towards (Gee et al. 2009) (p. 3).
  - Fig. 2 puts the source at roughly 50 D_e at the lowest St (≈10⁻²) and falling steeply to near the nozzle by St ≈ 0.3 (read from the figure).
- **Measurement assumptions behind a polar-arc DI** (p. 4): (1) r ≫ l, the source length (geometric far field, compact source); (2) the arc is centred on the source; (3) no significant wind or terrain effects; (4) linear propagation. The last is called "particularly onerous" because military-jet and large-rocket noise propagates nonlinearly, and the nonlinear loss varies with angle for a directional source (p. 4).
- **Example of the geometric error at 10 Hz** (p. 5–6, Fig. 3–4): at St ≈ 0.016 the dominant source is about 31 D_e downstream. Relative to it, the 22°–142° microphones (nozzle-referenced) are at about 35°–153° and at unequal distances (Fig. 4).
- **Going further out is no fix** (p. 5): larger radii would be in the geometric far field, but there wind, terrain, absorption and cumulative nonlinear propagation are more likely to violate the other assumptions.
- **Modified DI** (p. 6–7, Fig. 5–7):
  - The data are 11 angles at 80 D_e from 22° to 142° (10° steps), OTO bands 10–40.
  - Low frequencies change most. Above OTO band 20 (100 Hz, St ≈ 0.16) original and modified DI hardly differ, because the source is close to the nozzle (p. 6).
  - Fig. 7 shows differences up to about ±8 dB below band ~20: higher levels near 70°–100° and lower near 20°–50° after modification (read from the colour bar).
  - Original 10 Hz DI peaks near 40° (≈ +8 dB); modified 10 Hz DI peaks near 65°–70° (≈ +6 dB) (Fig. 5–6, read from the figure).
  - The DI narrows above OTO band 30 (1000 Hz, St ≈ 1.6), as Haynes & Kenny noted. This contradicts the SP-8072 curves. The authors suggest nonlinear propagation: angle-dependent high-frequency attenuation that further emphasises the peak radiation direction (p. 6).
- **OASPL prediction** (p. 8–10, Fig. 8–11):
  - Original and modified DI were each used in DSM-1 and DSM-2, with L_W,i(f) from a DSM-1 model based on the Fig. 2 source locations (p. 8).
  - For both source models the modified DI move the OASPL peak by about 14°, from 51° to 65° (p. 8).
  - In the far field DSM-1 and DSM-2 agree closely; in the near field the source-allocation choice matters a lot (p. 8).
  - With DSM-2, the SP-8072 power allocation L_W,i (Fig. 13 of SP-8072) had to be shifted by about 2 dB to conserve energy. The authors call this an apparently undocumented flaw in the original model (p. 8).
- **Convective-Mach check** (p. 8): θ_rad = cos⁻¹(1/M_c), with the Oertel–Patz M_c (eq. 2) giving M_c ≈ 2.3 and θ_rad ≈ 65°, consistent with the modified-DI prediction.
- **Onset of the far field** (p. 11, Fig. 12): the DSM-1 and DSM-2 peak-directivity angles converge (to ≈64°–65°) at 200–300 D_e, about 1 km for the RSRM. DSM-2 starts near 20° at 50 D_e and DSM-1 near 48°.
- **Conclusion** (p. 11–12): 80 D_e RSRM data are not far field and must be geometrically corrected before use in SP-8072. Full-spectrum DI that satisfy both far-field and linear-propagation assumptions will be hard to get, so near-field vector-intensity methods are recommended.

## Setup / method
- **Data source:** Space Shuttle RSRM static firings (Kenny et al. 2009; Gee et al. 2009), as compiled by Haynes & Kenny (AIAA 2009-3160). No new measurements are presented. Companion paper (ref. 7) does the same for an Orion-50S XLG motor.

  | Quantity | Value |
  |---|---|
  | Nozzle exit diameter D_e | 3.88 m (p. 3) |
  | Exit velocity U_e | ≈ 2454 m/s (p. 3, 8) |
  | Exit sound speed c_e | ≈ 780 m/s (p. 8) |
  | Ambient sound speed c_0 | ≈ 345 m/s (p. 8) |
  | Far-field arc | 80 D_e (≈ 310 m) from the nozzle exit, 22°–142° in 10° steps, 11 mics (p. 4–6) |
  | Thrust vector | nozzle/exhaust axis vectored 4° from the centreline; angles are relative to the exhaust axis (Fig. 3, p. 5) |
  | Near-field line | parallel to the plume axis, offset 18 D_e, several downstream stations (p. 3) |
  | Bands | one-third octave, bands 10–40 (10 Hz–10 kHz) (Fig. 5–7) |

- **Model (empirical, SP-8072):** the plume is cut into conical slices; each slice i radiates power L_W,i(f) with directivity DI(f, θ), and contributions are summed (eq. 1, p. 2).
  - *DSM-1:* each frequency radiates from a single axial location (here the Fig. 2 curve fit).
  - *DSM-2:* power is distributed over slices using SP-8072's allocation curve (needed a ≈2 dB correction, p. 8).
  - No CFD, stability or LES model is used here. Haynes & Kenny's updates drew on CFD (p. 2), and Plotkin & Vu built launch-pad models on them.
- **DI correction procedure** (p. 5): for each frequency, move the origin to the apparent source position from Fig. 2, recompute each microphone's angle and distance from it, and correct the levels to a common radius by spherical spreading (20 log R). Repeat for each band.
- **Time resolution:** only band spectra (OTO levels) of long static-firing records are used; no time-resolved or statistical analysis appears in this paper.

## Key equations
- Slice contribution (eq. 1, p. 2):
  $L_{p,i}(f,r,\theta)=L_{W,i}(f)-10\log\!\left[4\pi R_i^2\right]+\mathrm{DI}(f,\theta)$,
  where R_i is the distance from slice i to the observer at (r, θ). The total L_p(f, r, θ) is the (energetic) sum over slices.
- Peak radiation angle: $\theta_{rad}=\cos^{-1}(1/M_c)$ (p. 8).
- Oertel–Patz convective Mach number (eq. 2, p. 8): $M_c=\dfrac{U_e+0.5\,c_e}{c_0+c_e}$.

> Check eq. 2 against the PDF. With the printed values, (2454 + 0.5·780)/(345 + 780) = 2844/1125 ≈ 2.53 and cos⁻¹(1/2.53) ≈ 67°, not the M_c ≈ 2.3 and 65° stated. M_c = 2.3 would correspond to different inputs or a different form of the Oertel–Patz expression. Either way the conclusion (peak near 65°) is not much affected.

## Data tables
**Strouhal conversions used in the text** (D_e = 3.88 m, U_e = 2454 m/s)

| f | St = f D_e/U_e | Note |
|---|---|---|
| 10 Hz | 0.016 | source ≈ 31 D_e downstream (p. 5) |
| 100 Hz (OTO band 20) | 0.16 | little DI change above this (p. 6) |
| 1000 Hz (OTO band 30) | 1.6 | DI narrows above this (p. 6) |

**Fig. 3 vs Fig. 4 angles at 10 Hz** (nozzle-referenced → source-referenced, read from Fig. 4, p. 6)

| Nozzle-ref. | 22° | 32° | 42° | 52° | 62° | 72° | 82° | 92° | 102° | 112° | 122° | 132° | 142° |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Source-ref. | 35° | 50° | 63° | 74° | 85° | 95° | 105° | 113° | 122° | 130° | 138° | 145° | 153° |

> Fig. 3–4 show 13 arc positions (22°–142°) while the text says 11 angular positions from 22° to 142° (p. 6). Check which mics carried data.

**Peak OASPL direction** (p. 8, 11): original DI 51°; modified DI 65°; Oertel–Patz estimate 65°; far-field convergence 200–300 D_e (≈ 0.8–1.2 km, own conversion).

## Figures worth remembering
- **Fig. 1 (p. 2):** geometry of observer, nozzle and plume slice i (r, θ from the nozzle; R_i from the slice).
- **Fig. 2 (p. 4):** apparent axial source position x/D_e vs St for RSRM (circles + red curve fit) over the SP-8072 curves (single/multiple nozzles, undeflected; open-scoop and closed-bucket deflectors).
- **Fig. 3 (p. 5):** the 80 D_e RSRM arc referenced to the nozzle.
- **Fig. 4 (p. 6):** the same arc re-referenced to the 10 Hz source at ≈31 D_e (angles in red).
- **Fig. 5–6 (p. 7):** original and modified DI maps (angle vs OTO band) and DI line plots for 10 Hz–10 kHz.
- **Fig. 7 (p. 7):** modified − original DI (±8 dB), confined below OTO band ~20.
- **Fig. 8–11 (p. 9–10):** OASPL maps to 600 D_e for DSM-1/DSM-2 with original/modified DI.
- **Fig. 12 (p. 11):** peak directivity angle vs distance for DSM-1 and DSM-2, converging at 200–300 D_e.

## Notation
- D_e: nozzle exit diameter; U_e, c_e: exit velocity and sound speed; c_0: ambient sound speed; St = f D_e/U_e.
- DI(f, θ): directivity index (dB relative to the angle-averaged level) at angle θ from the exhaust axis.
- L_W,i(f): sound power level of plume slice i; L_p: sound pressure level; R_i: slice-to-observer distance.
- DSM-1/DSM-2: SP-8072 distributed source methods I (one source location per frequency) and II (power allocated over plume slices).
- OTO: one-third octave; OASPL: overall sound pressure level; M_c: Oertel–Patz convective Mach number; θ_rad: peak radiation angle.

## Relevance to this project
The user's work is on supersonic jet resonance and feedback (screech, impinging jets) with schlieren and acoustics (CLAUDE.md). This paper sits on the empirical-modelling side of rocket noise and has no modal analysis, but several points carry over.
- **Mic arcs and source location:** any polar-arc directivity of a supersonic jet in the lab assumes r ≫ source length and an arc centred on the source. For large-scale Mach-wave sources several shock cells or potential-core lengths downstream, a lab arc at 30–50 D can be in the geometric near field at low St. The re-referencing step here (shift origin to a frequency-dependent apparent source, then spherical-spreading correction) is a cheap fix for existing lab arcs. Schlieren SPOD/BMD mode shapes or near-field microphone/intensity maps could supply the apparent source location per frequency, instead of the peak-level line used here.
- **Convective Mach number and Mach-wave angle:** θ_rad = cos⁻¹(1/M_c) for heated rocket plumes is the same Mach-wave argument used for heated lab jets; compare with [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md).
- **Impingement and deflection:** the RSRM high-frequency source locations match SP-8072's "open scoop" deflector curve, possibly because the plume hit a hillside (p. 3). This links rocket flame-deflector noise to the impinging-jet work in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md) and [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md), though the empirical model contains no feedback physics.
- **Nonlinear propagation:** high-frequency DI narrowing is attributed to angle-dependent nonlinear loss (p. 6). The statistical side (skewness, crackle) is in [gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md) and [reichman-2018-qm2-srm-far-field-acoustics.md](reichman-2018-qm2-srm-far-field-acoustics.md), which uses this paper's model for the expected directivity.
- **Near-field intensity as the recommended alternative:** [gee-2010-near-field-vector-intensity-solid-rocket-motor.md](gee-2010-near-field-vector-intensity-solid-rocket-motor.md) and [gee-2016-near-field-intensity-static-rocket-firings.md](gee-2016-near-field-intensity-static-rocket-firings.md) locate the low-frequency source at about 20–30 D, consistent with the ≈31 D_e at 10 Hz used here. Gee 2016 also finds broader, more sideline radiation in the near field than far-field DI suggest.
- **Data type:** everything here is from long-record band spectra; it is not time-resolved analysis in the SPOD/HPOD sense, and nothing on intermittency or mode switching is reported. Time-resolved lab acoustics or schlieren with SPOD could give frequency-dependent source locations and directivity directly.
- **Modelling side:** the only model is SP-8072 (empirical source allocation + directivity), with an energy-conservation flaw in DSM-2 (≈2 dB). Related prediction work: [casalino-2009-hybrid-empirical-caa-rocket-noise.md](casalino-2009-hybrid-empirical-caa-rocket-noise.md), [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md), [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md).
- **Related works cited, candidates for `/add-paper`:** Eldred 1971 (NASA SP-8072); Haynes & Kenny 2009 (AIAA 2009-3160, DSM-II for Ares I); Plotkin & Vu 2011, 2012 (launch-pad noise model); Giraud & Gee 2010 (DI measurement considerations); James et al. companion paper on Orion-50S XLG (POMA 2014); Gee et al. 2008 (nonlinear jet-aircraft propagation); McInerny & Ölçmen 2005 (rocket-noise nonlinearity).
