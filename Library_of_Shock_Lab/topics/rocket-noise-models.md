# Rocket noise models

_Last updated: 2026-10-20 · 14 papers_

## Scope
How launch-vehicle and rocket-motor noise is predicted. This covers the NASA SP-8072 chain (Eldred 1971) and its distributed source methods; the corrections added to it (core length, source location, directivity, acoustic efficiency, clustered nozzles, deflectors and pads); the acoustic-efficiency and maximum-OASPL formulas and the SATURN model that are replacing it; and hybrid CAA and LES prediction. Each model is set against the measurements that test it. The measurements themselves (static firings, launches, near-field intensity, nonlinear propagation, sonic booms) are on [rocket-noise-measurements](rocket-noise-measurements.md). The physics of mixing noise, Mach wave radiation and BBSAN in lab and aircraft jets is on [jet-noise-mechanisms](jet-noise-mechanisms.md), and lab impinging-jet feedback is on [impinging-jets-and-edge-tones](impinging-jets-and-edge-tones.md). SP-8072 itself is not in the library; it is known here through the notes that restate it, mainly [Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), [Haynes & Kenny 2009](../notes/haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md), [Casalino 2009](../notes/casalino-2009-hybrid-empirical-caa-rocket-noise.md) and [Ranow 2021](../notes/ranow-2021-acoustic-prediction-rocket-flame-deflector.md).

## Current understanding
1. **Every engineering model is still the SP-8072 chain:** acoustic power = η × mechanical power, distributed along the plume, given a spectrum and a directivity, spread spherically and summed incoherently ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 25–26; [Ranow 2021](../notes/ranow-2021-acoustic-prediction-rocket-flame-deflector.md) p. 9–15). SATURN keeps the chain and replaces its inputs with modern full-scale data ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 68–71).
2. **Acoustic efficiency of modern rockets is about 0.3–0.4%,** below the SP-8072 value: RSRM 0.43%, Falcon 9 0.34% and then 0.30%, Atlas V 0.33% ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 8; [Mathews 2021](../notes/mathews-2021-falcon-9-far-field-noise.md) p. 627–628; [Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) p. 14; [Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) p. 375).
3. **The dominant source sits about 17–22 D_e downstream,** not in the subsonic plume where SP-8072 puts it. The SP-8072 curve inherits a plotting error from Potter (1968) ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 12–14).
4. **Peak directivity is about 64–72° from the plume axis,** set by Mach wave radiation and a convective Mach number. SP-8072's ~50° is an artefact of nozzle-centred arcs at 80 D_e, which are not in the geometric far field ([James 2012](../notes/james-2012-directivity-curves-rocket-noise-model.md) p. 8, 11; [Mathews 2021](../notes/mathews-2021-falcon-9-far-field-noise.md) p. 625; [Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 82).
5. **With these inputs, far-field maximum levels are predicted to about 1–2 dB within 20 km** ([Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) p. 375–377; [Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 91, 95). Beyond that, the atmosphere dominates and errors reach about 10 dB in either direction.
6. **The near-pad environment is not solved.** Empirical pad corrections that fix one vehicle break another ([Haynes & Kenny 2009](../notes/haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md) vs [Ranow 2021](../notes/ranow-2021-acoustic-prediction-rocket-flame-deflector.md)). Hybrid CAA and LES find the right mechanisms (pad-cavity confinement, ground-reflected Mach waves) but still overpredict by 2–4 dB ([Casalino 2009](../notes/casalino-2009-hybrid-empirical-caa-rocket-noise.md) p. 15; [Tsutsumi 2015](../notes/tsutsumi-2015-epsilon-liftoff-acoustics.md) p. 12–13).
7. **No model has a tonal or shock-associated term.** This fits the full-scale data, where screech, impingement tones and BBSAN are not seen ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 9, 16–17; [Tsutsumi 2015](../notes/tsutsumi-2015-epsilon-liftoff-acoustics.md) p. 13).

## SP-8072 and its distributed source methods
SP-8072 offers extrapolation from similar pads (Method 1), a single-point source per frequency band (Method 2, SAM) and the distributed source method (Method 3) ([Ranow 2021](../notes/ranow-2021-acoustic-prediction-rocket-flame-deflector.md) p. 9). DSM-1 assigns each Strouhal band to one plume slice using the Potter curve. DSM-2 lets every slice radiate a full spectrum, with source power peaking at 1.5 core lengths ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 25–26; [Casalino 2009](../notes/casalino-2009-hybrid-empirical-caa-rocket-noise.md) p. 4).

The two variants do not agree. Users found DSM-2 5–10 dB below DSM-1 and below data ([Haynes & Kenny 2009](../notes/haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md) p. 15). DSM-2's power allocation also had to be shifted by about 2 dB to conserve energy, an undocumented flaw ([James 2012](../notes/james-2012-directivity-curves-rocket-noise-model.md) p. 8). The two methods agree in the far field but differ strongly in the near field, which is where launch loads matter ([James 2012](../notes/james-2012-directivity-curves-rocket-noise-model.md) p. 8, 11).

Against modern data, SP-8072 gets unweighted overall levels roughly right but spectra and timing wrong. Its Ares I OASPL is within 0–2 dB of the data ([Ranow 2021](../notes/ranow-2021-acoustic-prediction-rocket-flame-deflector.md) p. 41–44). Within 20 km, its L_Z,max RMSE is 2.2 dB (Firefly Alpha) and 2.7 dB (Starship). But its spectral peak is an octave too high, its peak noise arrives late and its A-weighted RMSE is 8.8 dB for Alpha ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 91–98). Lubert et al. cite OASPL errors above 10 dB at some angles, and conclude that basing predictions on SP-8072 is "no longer appropriate" ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 4, 27).

## Core length and source location
Eldred scaled the source distribution on a core length L_c = 3.45 D_e(1 + 0.38M_e)². In his model the acoustic power per unit length peaks at 1.5 L_c and is effective out to about 5 L_c ([Casalino 2009](../notes/casalino-2009-hybrid-empirical-caa-rocket-noise.md) p. 4).

Varnier halved the constant to 1.75 and used fully expanded M_j and D_j ([Casalino 2009](../notes/casalino-2009-hybrid-empirical-caa-rocket-noise.md) p. 4; [Ranow 2021](../notes/ranow-2021-acoustic-prediction-rocket-flame-deflector.md) p. 19–20). [Haynes & Kenny 2009](../notes/haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md) adopted the halving but kept exit variables. Their evidence was:
- Shirie's (1967) observation that shocks shorten both the potential and supersonic cores (p. 2).
- An RSRM RANS with a 24 m low-turbulence core and 57 m of supersonic flow, which puts the peak source at 36 m (Varnier) rather than 75 m (Eldred) (p. 9).
- Static-test agreement within 0–3 dB, against 5–7 dB with Eldred's length (slides, p. 25).

Measurements of where the sound comes from tell a different story:
- RSRM firings trace peak OASPL back to 17–18D ([Gee 2012](../notes/gee-2012-reusable-srm-noise-spectral-statistical.md) p. 4).
- GEM-60 near-field intensity puts the 50 Hz source at 17–32D, moving to 10–20D above 600 Hz ([Gee 2016](../notes/gee-2016-near-field-intensity-static-rocket-firings.md) p. 1, 5).
- Rockets of all sizes radiate peak OASPL from 17–20 D_e, and the source is about 22 D_e at Sr ≈ 0.025 ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 12–14).

For the 3.88 m RSRM, the Varnier peak at 36 m is about 9 D_e, while Eldred's 75 m is about 19 D_e. The correction that improves vehicle levels therefore moves the source away from where it is measured. The Haynes note flags this, and Lubert suspects Varnier's length is biased by limited data and the Potter error ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 27).

The frequency-dependent location laws show the same factor of two:
- Casalino's fit to Eldred's undeflected curve is s/D_j ≈ 17.4 St^−0.24 ([Casalino 2009](../notes/casalino-2009-hybrid-empirical-caa-rocket-noise.md) p. 6).
- SATURN's fit to the GEM-60 intensity data is s = 9.85 Sr^−0.21 D_eff ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 80).
- At Sr = 0.025 they give about 42 and 21 diameters (my calculation; the diameter definitions differ), which matches the thesis's statement that SP-8072 sits about 2× further downstream at low Sr (p. 80).

SATURN rejected James's RSRM curve ([James 2012](../notes/james-2012-directivity-curves-rocket-noise-model.md) p. 3–4) because that plume hit a hillside ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 79). The hillside at about 40D does strip high-frequency energy and skewness ([Gee 2012](../notes/gee-2012-reusable-srm-noise-spectral-statistical.md) p. 10–11). SATURN's own law therefore rests on a single horizontal GEM-60 firing. The compact-source-per-frequency idea holds only beyond about 100–200 D_eff, because the dominant region is 10–20 D_eff long ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 78).

## Directivity and the convective Mach number
Static RSRM arcs centred on the nozzle put the peak at about 50° ([Kenny 2009](../notes/kenny-2009-space-shuttle-srm-plume-acoustics.md) p. 16) or 56° ([Gee 2012](../notes/gee-2012-reusable-srm-noise-spectral-statistical.md) p. 4), close to SP-8072. The RSRM directivity indices that [Haynes & Kenny 2009](../notes/haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md) put into DSM-2 peak near 42° at 10 Hz and near 55–62° above 50 Hz (p. 12–13).

[James 2012](../notes/james-2012-directivity-curves-rocket-noise-model.md) showed that an 80 D_e arc is not in the far field at low frequency. The source sits about 31 D_e downstream at 10 Hz (p. 5–6). Re-referencing each microphone to a frequency-dependent source rotates the predicted OASPL peak from 51° to 65°, matching the Oertel–Patz estimate θ = cos⁻¹(1/M_c) with M_c ≈ 2.3 (p. 8). DSM-1 and DSM-2 only agree beyond 200–300 D_e, about 1 km for the RSRM (p. 11). The two papers disagree on why the directivity narrows above 500 Hz: Haynes & Kenny suspect terrain (p. 13), and James suggests nonlinear propagation (p. 6).

Which convective Mach number to use is the live question:
- Lubert et al. favour Oertel's M_CO. The equivalent empirical κ is about 0.31–0.32 for rockets, against 0.6–0.85 for lab jets ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 14–15).
- For Falcon 9, the static M_CO gives 69°, 5° high. Subtracting the vehicle Mach number (0.55) gives the measured 64° ([Mathews 2021](../notes/mathews-2021-falcon-9-far-field-noise.md) p. 625–627).
- [Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) measured the same 64° (1 dB-down band 58–72°) from stations 240–750 m from the pad, with no flight correction. Of Tam & Hu's instability-wave families, the "supersonic" M_c (66°) came closest, and Oertel's gave about 70–72° (p. 11–12).
- That supersonic M_c is the Papamoschou–Roshko form U_j/(a_j + a_∞) ([Papamoschou & Roshko 1988](../notes/papamoschou-1988-compressible-turbulent-shear-layer.md) p. 1, 16). The note on that paper derives from it κ ≈ 0.27 for Falcon 9, close to the empirical 0.31 (a note-writer's calculation, not a published one).
- Against all this, [Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) revise the Falcon 9 angle to 71° after a 3-D geometry fix and use θ ≈ cos⁻¹√(c₀/U_e) (p. 375, footnote 2 p. 378). SATURN's Atlas V directivity also settles at about 72° for Sr > 0.03, with SP-8072's indices 15–20° further aft ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 82).

Peak angle rises with frequency, from 10–30° below Sr 0.004 to 60–75° above Sr 0.0125 ([Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) p. 13). Near-field intensity vectors reach 80–85° at high frequency, beyond every model's directivity index, all of which peak below 70° ([Gee 2016](../notes/gee-2016-near-field-intensity-static-rocket-firings.md) p. 5).

The measured lobe is narrow: about 30° wide at 3 dB down, against 56–57° in the Sutherland and SP-8072 models ([Mathews 2021](../notes/mathews-2021-falcon-9-far-field-noise.md) p. 627). The peak directivity index is about 5 dB ([Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) p. 13).

## Sound power, efficiency and maximum OASPL
Rocket sound power scales as U_e³, i.e. W = ηW_m with W_m = ½TU_e ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 7–8).

The η used in models has drifted down:
- Casalino used Sutherland's law, which gives 0.53% for Vega ([Casalino 2009](../notes/casalino-2009-hybrid-empirical-caa-rocket-noise.md) p. 2).
- Ranow found Sutherland gives 0.60% and the Requena-Plens variant 0.17% for the same engine. Moving from SP-8072's 1% to 0.60% lowers levels by about 2 dB ([Ranow 2021](../notes/ranow-2021-acoustic-prediction-rocket-flame-deflector.md) p. 18–19, 36).
- Full-scale fits give lower values still. Atlas V is 0.25% if 6 dB is removed for ground doubling ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 52–53), or 0.33% with a ground factor δ = 1.9 ([Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) p. 375).
- Near-pad Falcon 9 data give 0.30% ± 0.05%. Kellison et al. argue that the earlier 196 dB (0.34%) would fall to 193–194 dB if ground reflection were removed ([Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) p. 14–15).

How the ground is treated thus moves η by 1–3 dB. Kellison et al. also find that level stops rising with Oertel M_CO at rocket conditions: Falcon 9 sits well below the extrapolated Greska fit. They take this as η saturating (p. 17).

The maximum-OASPL formula descends from McInerny: OAPWL − 10 log(4πR²) + 8 dB ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 8).
- It predicted 144 dB at 100 D_e,equiv for Falcon 9, against 143 dB measured ([Mathews 2021](../notes/mathews-2021-falcon-9-far-field-noise.md) p. 628).
- [Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) wrote OAPWL in exit-flow variables, OAPWL = 115.9 + 10 log(ηρ_eU_e³D_e²) (p. 372). They split McInerny's 8 dB into Q_max = 5 dB plus a ground factor 20 log δ (p. 375).
- With these, RMSE is 1.8 dB for Atlas V, 1.7 dB for Vulcan once η is halved, and below 1.7 dB for an F404 (p. 375–377).
- The Atlas V fit has an rms error of 1.6 dB, against 4.0 dB for McInerny's original fit to older launches ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 53).
- The formula has no absorption, so it holds to about 4–5 km and overpredicts beyond ([Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) p. 7–8).

Regulatory environmental-assessment (EA) models have done far worse. SLS was about 20 dB louder than its EA prediction ([Gee 2023](../notes/gee-2023-sls-artemis-i-far-field-noise.md) p. 3–4). For Starship, the RNOISE-based EA underpredicted L_Z,max by up to 9 dB but overpredicted SEL_A by up to 18 dB ([Gee 2024](../notes/gee-2024-starship-super-heavy-far-field-noise.md) p. 5).

## Spectrum and frequency scaling
Rocket spectra peak at Sr = fD_e/U_e ≈ 0.02–0.025, about ten times lower than lab supersonic jets, for reasons still unclear. Eldred's throat-based Sr* collapses lab, turbojet and rocket spectra best ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 10–11). For Falcon 9 (Sr ≈ 0.019 on the equivalent diameter), the Cole and Potter & Crocker scalings do better than the classic Strouhal number ([Mathews 2021](../notes/mathews-2021-falcon-9-far-field-noise.md) p. 628–629).

SATURN's Atlas V power spectrum peaks near Sr ≈ 0.01 on D_eff = D_e√N, roughly an octave below SP-8072 ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 76–77). Falcon 9 gives 0.010 measured and 0.011 from SATURN, against 0.015 for SLS and 0.02 for SP-8072 ([Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) p. 15–16).

Tam's large- and fine-scale similarity spectra were fitted to lab jets up to T_r/T_∞ ≈ 4.9 ([Tam 1996](../notes/tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) p. 5–7). Rocket slopes are shallower, and several groups find these spectra unsuitable ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 10). Mathews & Gee use a modified large-scale spectrum (f^2.5, f^−2.2) only to compute the ground factor (p. 377). Scaling on D_eff = D_e√N carried the Atlas V model (2 nozzles) to Alpha (4 engines) and Starship (33) within about 1 dB inside 20 km ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 98–99).

## Clustered engines
SP-8072 replaces a cluster with one equivalent nozzle. Tedrick's (1964) Saturn S-1 eight-engine cluster supports this: it matched a single F-1 of equal thrust ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 11).

The Eldred two-zone model, as implemented by [Kandula 2005](../notes/kandula-2005-near-field-acoustics-clustered-rocket-engines.md) and [Kandula 2008](../notes/kandula-2008-near-field-acoustics-clustered-rocket-engines.md), covers intermediate spacing. Isolated jets near the nozzles are added to a merged equivalent jet downstream, giving a double-peaked near-field spectrum. The equivalent-diameter approach is said to carry 10–15 dB uncertainty there (2008, p. 853). The validation is one four-nozzle case with no vehicle, spacing or microphone details and no error metric (2008, p. 856). The 2008 paper corrects the merging-length equation (p. 854–855).

Full-scale data give a mixed picture:
- Atlas V's RD-180 (S/D ≈ 1.14) shows a low-frequency bump when viewed broadside, not a double peak. Its peak frequency depends on azimuth (32 vs 43 Hz) and collapses with a view-dependent diameter. The two-zone model has no azimuthal dependence ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 54–55).
- Neither Atlas V (±1.9 dB) nor Falcon 9 shows the 2–3 dB shielding asymmetry found for lab and LES twin jets ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 53; [Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) p. 8; [Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 11–12).
- Clustering may instead act through η. Vulcan's separated plumes need η halved ([Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) p. 375). The clustered Saturn V made 2 dB more power than SLS despite less thrust ([Gee 2024](../notes/gee-2024-starship-super-heavy-far-field-noise.md) p. 7). Starship's 33 tightly packed engines were run in SATURN with 0.4% ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 94).

## Deflectors, ducts, pads and impingement
SP-8072 treats impingement ad hoc. DSM-1 has open-scoop and closed-bucket source curves, while DSM-2 merely turns the plume axis, so the two methods disagree for vertical launch ([Haynes & Kenny 2009](../notes/haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md) p. 10).

Haynes & Kenny ended the core at the deflector. Against lift-off spectra from five Saturn V flights, the terminated core matches level and shape (about 145 against 143–144 dB at 85 m), while the full core is about 7 dB low and peaks at too low a frequency (p. 11–12). For Ares I it raised the predictions by 5–7 dB, with no Ares I data to compare (p. 15, 32–33).

[Ranow 2021](../notes/ranow-2021-acoustic-prediction-rocket-flame-deflector.md) then compared Ares I data with the full set of modifications (p. 41–44):
- With the terminated core, OASPL is overpredicted by 7–10 dB: 146.1 against 139.1 dB at 45 m, and 144.4 against 134.6 dB at 78 m.
- With an intact core, the overprediction is 2–4.4 dB.
- Plain SP-8072 is within 0–2 dB.

Ranow blames deluge water and shielding by the launch structure (p. 42). He also adds the Plotkin–Sutherland directivity (−3 dB), cylinder diffraction (+2.7 dB) and ray-traced flame-duct reflections (up to +3.2 dB). The reflection result means that lengthening a duct can backfire (p. 39–47). The image-source ground reflection of [Kandula 2008](../notes/kandula-2008-near-field-acoustics-clustered-rocket-engines.md) adds up to 5 dB (p. 857).

Pad measurements show sources that no plume model contains:
- In the Antares static fire, water quenched the plume and the flame-duct exit dominated at all frequencies ([Panda 2013](../notes/panda-2013-noise-sources-rocket-test-firings-launch-phased-array.md) p. 17, 23).
- At lift-off the dominant source moved from the launch mount to the duct, then the deck, then the free plume (p. 19–20).
- Ignition overpressure is aimed by the trench and is not modelled at all. SATURN comparisons start at T+5 s because it omits the deflected plume ([Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) p. 5, 9).

Mitigation data are pad-specific. Duct extensions cut the 31.5 Hz octave by 4–8 dB, and Shuttle water injection cut OASPL by 4 dB at 200% and 8 dB at 500% of propellant flow ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 21–23).

On mechanisms, lab plates and LES identify five impingement wave types ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 18). At intermediate heights, however, three JAXA studies agree that free-jet Mach waves reflected from the ground dominate the vehicle load: the worst cases are h ≈ 15 D_e (plate study) and h/D_e ≈ 16 (H-IIA) ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 19–22), and H/D_e = 14 for Epsilon at 149.1 dB ([Tsutsumi 2015](../notes/tsutsumi-2015-epsilon-liftoff-acoustics.md) p. 15–16).

## Hybrid and high-fidelity prediction
[Casalino 2009](../notes/casalino-2009-hybrid-empirical-caa-rocket-noise.md) keeps Eldred's source strengths but replaces spherical spreading and the directivity index with Green's functions of the real Vega pad. These come from a frequency-domain solution of Pierce's convected wave equation on a RANS mean flow, with immersed boundaries.
- The hybrid reproduces the measured peak frequency and the fairing-versus-free-field level difference, through low-frequency confinement in the pad cavity, which the empirical variants miss. It still overestimates by 2–3 dB (p. 12–15).
- Its limits are stated: the Pierce model is valid only for St ≳ 0.1 (p. 5–6). A mean flow containing shock cells made the solution "stiff", so an equivalent fully expanded plume was used (p. 12). The 60 uncorrelated point sources cause interference ripples (p. 15).

[Tsutsumi 2015](../notes/tsutsumi-2015-epsilon-liftoff-acoustics.md) computes generation and propagation together. It uses a zonal RANS/LES with sixth-order compact differencing and SLAU at shocks, an FW-H surface, about 100 M points and two months on 1280 cores (p. 12).
- It overpredicts the 1/42-scale data by up to 4 dB and puts the 150° spectral peak at St 0.023 against 0.045 measured. The authors blame grid resolution and linear FW-H propagation (p. 12–13).
- Its value was diagnosis: the reflected Mach waves, and a front cover worth −3 dB (p. 16).
- The paper also sets the subscale similarity rule: same U_e and Re > 10⁵, which keeps SPL unchanged and scales frequency with size. A 1/42 model then carries about 1.8 dB of extra absorption and about 3 dB of refraction uncertainty (p. 5–8).

Lubert et al. list LES of seven launch systems, using WENO, compact and DG schemes with one-way coupling to nonlinear Euler CAA. Water injection is simulated in only one study, and wavepacket, SPOD or resolvent ROMs have not yet been applied to rocket plumes ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 29–32). The emerging division of labour is CFD/CAA for the near-field pad environment and empirical models for the far field ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 69–70).

## Disagreements and open questions
- **Core termination at the deflector.** It fixes Saturn V ([Haynes & Kenny 2009](../notes/haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md)) but causes a 7–10 dB overprediction for Ares I ([Ranow 2021](../notes/ranow-2021-acoustic-prediction-rocket-flame-deflector.md)). Settling it needs a source map of a deflected plume: near-pad intensity or beamforming at a launch, or LES, together with full pad and engine parameters.
- **Is the halved core physical?** Varnier's length improves vehicle levels but puts the RSRM peak source at about 9 D_e, while measurements put it at 17–22 D_e. Near-field intensity on a vertical launch, and mean-flow core lengths of shock-containing jets, would separate the two.
- **Falcon 9 peak angle and its cause.** The candidates are 64° explained by flight effects ([Mathews 2021](../notes/mathews-2021-falcon-9-far-field-noise.md)), 64° explained by the supersonic-wave M_c ([Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md)), and 71–72° ([Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md); SATURN). Needed: one source-origin and 3-D angle convention applied to all data sets, ray-traced propagation, and the same engine measured static and in flight.
- **Does η depend on clustering?** Separated plumes (Vulcan, 0.17%) sit below tightly clustered ones (Atlas V 0.33%, Starship 0.4%), and ground handling shifts each value. A near-pad, ground-corrected sound-power survey across vehicles, done the Kellison way, would test this.
- **Peak Strouhal number and its normalisation.** SP-8072 gives 0.02 and SATURN about 0.01, with D_e versus D_eff and narrowband versus band spectra used inconsistently (see the Kellison note). Why rockets peak ten times lower than lab jets is unexplained ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 10).
- **Beyond 20 km.** SATURN overpredicts Starship Flight 6 by 12 dB at 35.5 km, while the EA model underpredicted Flight 5 by 9 dB at the same range ([Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) p. 95; [Gee 2024](../notes/gee-2024-starship-super-heavy-far-field-noise.md) p. 5). Ray tracing with launch-day meteorology and nonlinear propagation is needed (thesis p. 105).
- **Missing physics.** No model covers ignition overpressure, the deflected-plume phase, water, the impingement wave types, or the sideline near-field radiation seen by [Gee 2016](../notes/gee-2016-near-field-intensity-static-rocket-firings.md). Lubert et al. call for a physics-based source model built from wavepacket, SPOD and resolvent tools (p. 31–33).
- **No tones at full scale.** Lubert et al. propose that broadband masking and pad geometry suppress them (p. 16–17); this is untested.

## Methods and data
The models are built and validated with time-resolved microphone records reduced to block statistics: 1 s running OASPL, maximum one-third-octave spectra and sound power integrated over a moving source's trajectory ([Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md); [Mathews 2021](../notes/mathews-2021-falcon-9-far-field-noise.md)). Source location comes from near-field vector intensity, the only array method applied to full rocket plumes ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 13). Beamforming has mapped pad sources, but SEM-type deconvolution breaks distributed plume sources into spurious points ([Panda 2013](../notes/panda-2013-noise-sources-rocket-test-firings-launch-phased-array.md) p. 16). Engine inputs come from thermochemistry codes ([Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) p. 378).

Four cautions recur: polar arcs must be centred on the source ([James 2012](../notes/james-2012-directivity-curves-rocket-noise-model.md)); static firings near the ground include impingement; ground reflection must be removed consistently; and metrics disagree, since a model can be right on L_Z,max and wrong on SEL_A.

No model uses modal decomposition or anything time-resolved beyond slow-time levels. SPOD and DMD (which need time-resolved data or LES) and resolvent analysis (which needs a mean flow) are proposed but not yet applied. PIV is impractical in real plumes, so POD of PIV is limited to model scale ([Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 12, 31–32). Values are being collected in `Library_of_Shock_Lab/data/rocket_noise.csv`.

## Relevance to our work
- **Source location and convection speed from lab data.** Time-resolved schlieren with SPOD gives what the models assume: source location against frequency (mode envelopes) and convection speed (phase speed from a streamwise FFT of the mode). The phase speed tests which M_c sets the directivity. The M_c families separate only when a_j/a_∞ is large ([Papamoschou & Roshko 1988](../notes/papamoschou-1988-compressible-turbulent-shear-layer.md) note), so heated jets are needed.
- **Core length.** Mean schlieren or PIV of the group's under-expanded jets can test the 1.75 against 3.45 core coefficient at lab NPRs. This is the basic-statistics step of the workflow.
- **Impingement.** Inclined-plate impingement with SPOD and BMD would show where sources sit after impingement, which is the core-termination dispute. Why the lab feedback loop ([impinging-jets-and-edge-tones](impinging-jets-and-edge-tones.md)) does not close at full scale is a question the group is placed to answer.
- **Coherent source models.** A spatially coherent SPOD wavepacket source could replace Casalino's uncorrelated points. For clusters, twin-jet SPOD split into pre- and post-merging zones would test the two-zone model.
- **Non-stationarity.** Lift-off changes the nozzle height continuously. Tsutsumi et al. sample it at three fixed heights; SPOD → reconstruction → HPOD, or wavelets, could track the reflected Mach-wave band (St ≈ 0.02–0.07) as height changes.
- **PyFR LES.** If the staging LES moves to hot or impinging cases, the multi-species and shock-capturing choices of the pad LES apply. Tsutsumi's linear FW-H shortfall argues for nonlinear far-field propagation.
- **Synchronised flow and acoustics.** The SATURN thesis lists synchronised schlieren and acoustics as future work (p. 104–105), which is the group's core capability.

## Papers
- [Papamoschou & Roshko 1988](../notes/papamoschou-1988-compressible-turbulent-shear-layer.md): origin of the convective Mach number; its M_c is the "supersonic" family closest to the Falcon 9 peak angle.
- [Tam 1996](../notes/tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md): lab large- and fine-scale similarity spectra; found unsuitable for rockets, but a modified form is used for ground factors.
- [Kandula 2005](../notes/kandula-2005-near-field-acoustics-clustered-rocket-engines.md): two-zone clustered-nozzle model on SP-8072 with ground reflection; RAPT tool.
- [Kandula 2008](../notes/kandula-2008-near-field-acoustics-clustered-rocket-engines.md): journal version with the corrected merging-length equation; the citable source.
- [Casalino 2009](../notes/casalino-2009-hybrid-empirical-caa-rocket-noise.md): Eldred and Varnier sources with CAA Green's functions of the Vega pad; captures pad confinement, still 2–3 dB high.
- [Haynes & Kenny 2009](../notes/haynes-2009-sp-8072-dsm-ii-ares-i-lift-off.md): DSM-2 with halved core, core terminated at the deflector and RSRM directivity; checked against Saturn V.
- [Kenny 2009](../notes/kenny-2009-space-shuttle-srm-plume-acoustics.md) (not tagged): RSRM static-firing data behind the Haynes–Kenny directivity indices.
- [Gee 2012](../notes/gee-2012-reusable-srm-noise-spectral-statistical.md) (not tagged): RSRM source at 17–18D; hillside impingement that later disqualified the RSRM curve.
- [James 2012](../notes/james-2012-directivity-curves-rocket-noise-model.md): 80 D_e arcs are not far field; recentring moves the SP-8072 OASPL peak from 51° to 65°.
- [Panda 2013](../notes/panda-2013-noise-sources-rocket-test-firings-launch-phased-array.md) (not tagged): phased array shows flame-duct and deck sources that SP-8072 omits.
- [Tsutsumi 2015](../notes/tsutsumi-2015-epsilon-liftoff-acoustics.md): subscale similarity rules, 1/42 tests and RANS/LES + FW-H; ground-reflected Mach waves; LES up to 4 dB high.
- [Gee 2016](../notes/gee-2016-near-field-intensity-static-rocket-firings.md) (not tagged): GEM-60 near-field intensity source locations, the basis of SATURN's source law; radiation more sideline than all model directivity indices.
- [Mathews 2021](../notes/mathews-2021-falcon-9-far-field-noise.md): Falcon 9 test of the directivity, η, OASPL_max and Strouhal models; flight-reduced Oertel M_c.
- [Ranow 2021](../notes/ranow-2021-acoustic-prediction-rocket-flame-deflector.md): modular SP-8072 with efficiency, core, directivity, diffraction and duct-reflection changes; 7–10 dB high against Ares I.
- [Lubert 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md): review and entry point; Potter plotting error, η, source location, M_CO directivity, pad mitigation, LES and ROM outlook.
- [Gee 2023](../notes/gee-2023-sls-artemis-i-far-field-noise.md) (not tagged): SLS about 20 dB above its environmental-assessment prediction.
- [Gee 2024](../notes/gee-2024-starship-super-heavy-far-field-noise.md) (not tagged): Starship against the RNOISE-based EA model (L_Z,max low, SEL_A high); clustering and η.
- [Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md): OAPWL and OASPL_max from exit-flow variables with a ground factor; RMSE < 2 dB; Falcon 9 angle revised to 71°.
- [Mathews 2025 thesis](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md): SATURN, an open SP-8072 replacement built on Atlas V data; about 1 dB RMSE within 20 km on Alpha and Starship.
- [Kellison 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md): near-pad Falcon 9 sound power (η 0.30%), 64° directivity, SATURN validation, η saturation.
