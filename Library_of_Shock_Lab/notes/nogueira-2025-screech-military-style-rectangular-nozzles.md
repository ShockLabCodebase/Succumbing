---
key: "nogueira-2025-screech-military-style-rectangular-nozzles"
title: "Screech in Military-Style Rectangular Nozzles"
authors: ["Nogueira, Petrônio A. S.", "Weightman, Joel", "Edgington-Mitchell, Daniel"]
year: 2025
type: "article"
venue: "AIAA J. 63(10), 4210–4222"
bib: {"journal": "AIAA Journal", "volume": "63", "number": "10", "pages": "4210--4222"}
doi: "10.2514/1.J065119"
arxiv: ""
pdf: "non-axisymmetric-jets/Nogueira-EtAl_2025_Screech-In-Military-Style-Rectangular-Nozzles.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility (Supersonic Jet Facility in the Combustion Lab: schlieren; Supersonic Jet Anechoic Facility, SJAF: PIV and acoustics)"
data: ["schlieren-TR", "PIV", "microphones-far"]
methods: ["statistics", "PSD", "SPOD", "POD", "POD-pair", "symmetry-decomposition", "wavenumber-filtering", "LSA-local", "LSA-Floquet", "resonance-model"]
flow: ["rectangular-jet", "supersonic", "overexpanded", "ideally-expanded", "underexpanded"]
phenomena: ["screech", "flapping", "multimodal", "guided-jet-mode", "KH-wavepackets", "shock-cells", "axis-switching", "standing-waves"]
params: {"AR": "2", "D_eq": "8.68 mm", "M_d": "≈1.5 (ideally expanded at NPR ≈ 3.7)", "NPR": "2.5–4.5 (schlieren); 2.5, 2.9, 3.3, 3.7, 4.1, 4.5 (PIV)", "M_j": "1.22–1.64 (isentropic, note's arithmetic)", "TR": "≈1 (unheated implied, not stated)", "St": "0.56–0.24 (dominant flapping tone, f D_eq/U_j assumed)"}
topics: ["non-axisymmetric-jets", "screech", "linear-models"]
related: ["mazharmanesh-2025-screech-modes-non-axisymmetric-jets", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "esfahani-2021-coupling-modes-twin-rectangular-jets", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "edgington-mitchell-2022-unifying-theory-jet-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2024-guided-jet-waves", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "suzuki-2026-coherent-structures-axis-switching-elliptical-jets", "mercier-2017-screech-feedback-loop-underexpanded-round-jets"]
cites: ["alkislar-2003-screeching-rectangular-jet-stereo-piv", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "edgington-mitchell-2022-unifying-theory-jet-screech", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "nogueira-2019-large-scale-streaky-structures-jets", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "nogueira-2021-wavepacket-modulation-shock-containing-jets", "nogueira-2024-guided-jet-waves", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "pickering-2020-lift-up-kh-orr-jets", "raman-1998-supersonic-jet-screech-review", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "taira-2020-modal-analysis-applications-outlook", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent", "yeung-2022-3d-spod-twin-rectangular-jet"]
summary: "AR 2 sharp-throat C-D rectangular jet, NPR 2.5–4.5: schlieren SPOD finds two flapping, a varicose and a wagging tone; LSA weakest link on PIV mean predicts flapping St"
---
# Screech in Military-Style Rectangular Nozzles

- **Authors:** Petrônio A. S. Nogueira (Senior Lecturer), Joel Weightman (Research Fellow) and Daniel Edgington-Mitchell (Associate Professor), Department of Mechanical and Aerospace Engineering, Shock Lab, Monash University (p. 4210). Shock Lab group work; the user is the second author.
- **Source:** AIAA Journal 63(10), October 2025, 4210–4222, doi:10.2514/1.J065119. Received 13 Nov 2024, accepted 21 Mar 2025, online 18 Jun 2025 (p. 4210). Funded by ONR grant N00014-22-1-2503, ARC DECRA DE240100933 (Nogueira) and ARC Future Fellowship FT220100679 (Edgington-Mitchell); computing on NCI and MASSIVE (p. 4220). Associate editor C. Bailly.
- **Precursors:** built on two conference papers, Nogueira, Beekman, Weightman & Edgington-Mitchell, AIAA 2023-4488 (*On the waves underpinning screech in rectangular jets*), which supplies the model base flow and LSA boundary conditions, and Nogueira, Weightman & Edgington-Mitchell, AIAA 2024-3144 (*Screech predictions in military-style rectangular nozzles*) (p. 4211, 4221).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/non-axisymmetric-jets/Nogueira-EtAl_2025_Screech-In-Military-Style-Rectangular-Nozzles.pdf` (index key `non-axisymmetric-jets/Nogueira-EtAl_2025_Screech-In-Military-Style-Rectangular-Nozzles.pdf`, 13 pp., publisher's version). Page refs are journal pages; **PDF page = journal page − 4209**. Eqs. 1–8 and Figs. 3–17 were checked against rendered pages; values marked "read" come from the figures.
- **Tags:** screech, rectangular jet, aspect ratio 2, military-style nozzle, sharp-throat converging–diverging nozzle, over- and underexpanded, flapping, wagging, varicose, multimodal screech, axis switching, time-resolved schlieren, empirical dispersion relation, SPOD waterfall, PIV, snapshot POD, POD mode pair, complex POD mode, symmetry-imposed POD, spatial wavenumber spectrum, guided jet mode, Kelvin–Helmholtz mode, spatial linear stability, Floquet ansatz in azimuth, fitted shock-free 3-D mean flow, Crocco–Busemann, weakest-link model, primary and secondary shock wavenumbers k_sh1, k_sh2, far-field acoustics

## Summary
The paper studies screech from a single AR 2, sharp-throat ("military-style") converging–diverging rectangular nozzle, D_eq = 8.68 mm and ideally expanded at NPR ≈ 3.7, over NPR 2.5–4.5 (p. 4211). Time-resolved schlieren (150 kHz) viewed across both the minor and the major axis is decomposed by SPOD. It shows a dominant minor-axis flapping tone at every NPR, a weaker varicose tone, and, mostly when underexpanded, a second flapping tone (minor-axis view only, from NPR ≈ 3.5) and a "wagging" tone (major-axis view only, from NPR ≈ 4) (p. 4214–4215). Non-time-resolved PIV in a second facility gives mean flows and, through symmetry-imposed POD pairs, only the flapping structure; far-field microphones in that facility also hear only the flapping tone (p. 4216–4218). The k_x spectrum of the PIV flapping mode has a KH peak and a subsonic upstream peak that sits near k_KH − k_sh1, so the dominant loop is closed by the antisymmetric guided jet mode via the first shock-cell peak (p. 4218). On the modelling side, the measured mean flows are fitted with a smooth, shock-free 3-D tanh profile and passed to a local spatial LSA with a Floquet ansatz in azimuth. Its KH and guided-jet wavenumbers, with measured k_sh1 and k_sh2, go into a weakest-link model (α_GJM = α_KH − k_sh), which predicts the flapping tones within a few per cent at all six PIV NPRs and places the resonant region near the POD-mode peak (p. 4219–4220). A constant-profile model base flow from the precursor paper works only at low NPR, which the authors take as evidence that the spreading mean flow must be included (p. 4220).

## Key findings
- **Tones in the schlieren SPOD** (§IV.B, p. 4214; Fig. 4, values read from Figs. 4 and 17):
  - Overexpanded (NPR < 3.7): only two fundamental tones, at the same frequencies in both views: **mode 1** (St ≈ 0.56 at NPR 2.5 falling to ≈ 0.29 at 3.7) and **mode 2** (from NPR ≈ 2.7, St ≈ 0.54, about 0.03–0.06 above mode 1).
  - Underexpanded: two more, weaker tones. **Mode 3** appears only in the minor-axis view, "very close to" ideal expansion (symbols start at NPR 3.5, St ≈ 0.37). **Mode 4** appears only in the major-axis view for NPR > 4 (St ≈ 0.27, just above mode 1).
  - At NPR 4.5 all four modes, their harmonics and "nonlinear interactions" are present and the spectrum becomes more broadband. All fundamentals are weaker around ideal expansion but do not vanish; the authors suggest the sharp-throat nozzle still has shocks at NPR 3.7, so ideal expansion is never reached (p. 4214).
  - At NPR 4.0 the four tones are St 0.265 (mode 1), 0.337 (mode 2), 0.308 (mode 3) and 0.272 (mode 4) (Fig. 5–6 captions, p. 4215).
  - Despite the abstract's mention of "modal staging", the dominant tone never jumps over 2.5–4.5 in Fig. 4; extra loops appear alongside it (my reading).
- **Mode shapes** (p. 4214; Figs. 5–6, NPR 4.0):
  - Mode 1 is antisymmetric in the minor-axis view: **minor-axis flapping**, as in rectangular and elliptical jets generally.
  - It also shows in the major-axis view, which a path-integrated antisymmetric field should cancel. The major-axis mode is much less converged and lacks a clear symmetry, so the authors put this down to turbulent disruption of the flapping or a slight schlieren misalignment.
  - Mode 2 is symmetric in both views with non-zero centreline amplitude: **varicose**.
  - Mode 3 is a second minor-axis flapping mode; mode 4, seen only across the major axis, is flapping about the other axis, i.e. **wagging** (citing Morris & Bhat 1995; Suzuki et al. 2023).
  - Modes 3 and 4 are less converged, with lower peaks. The authors suggest they are "not always active" or have lower loop gain and are "easily disrupted" (p. 4214). This is not tested.
  - All modes show lobed |ψ| (standing waves) and shock modulation, clearest near the nozzle (p. 4214).
- **Empirical dispersion relation** (p. 4213–4214; Fig. 3, NPR 2.6, line y/D_eq = 0.1):
  - A broad KH band at positive k with constant slope, so the phase speed hardly changes with frequency.
  - Faint negative-k arcs that start on the acoustic line, read as duct and guided-jet modes as in Towne et al. (2017).
  - Screech at **St = 0.51** in the minor-axis view only, close to one of the faint negative arcs: screech occurs only where the G-JM is supported somewhere in the flow.
- **Mean flow, axis switching and potential core** (§V.A, p. 4215–4216; Figs. 7–9):
  - PIV means at NPR 2.5 and 4.5 show periodic shock cells (stronger at 4.5) in both planes. The jet spreads faster in the minor-axis plane, attributed to the flapping mode, and ends up narrower in the major-axis plane: **axis switching**, clearer and closer to the nozzle at NPR 2.5 (p. 4215).
  - On the fitted shock-free mean flow, x_sw (minor-axis half-width exceeds major-axis half-width) rises with NPR up to 3.7 and falls slightly after it. The authors link the fall to the change to underexpansion (p. 4216).
  - x_pc (centreline velocity down to 0.9 of the exit value) rises with NPR, except that NPR 2.9 sits close to NPR 2.5, possibly a curve-fit artefact (p. 4216). Values read from Fig. 9 are in the Data tables below.
- **Acoustics** (p. 4216–4217; Fig. 10): far-field SPL against NPR in the SJAF shows one tone, at the frequency of schlieren mode 1, in both regimes, weakest near ideal expansion. A very faint mode 2 signature may exist near ideal expansion, so any varicose loop must be very weak (p. 4217). Mode 3 and 4 are not heard; the conclusion suggests weaker loops may be hidden under other noise (p. 4220).
- **POD of PIV** (p. 4217; Fig. 11):
  - Only flapping mode pairs are found, at every NPR; no varicose or wagging pair (p. 4217).
  - The leading pair holds about 10–20 % of the x–y-plane kinetic energy (read from Fig. 11: about 6 % + 5 % at NPR 2.5 and 10 % + 8 % at NPR 4.5), consistent with the helical round jet of Edgington-Mitchell et al. (2014).
  - The phase portrait of a₁, a₂ is a ring, the signature of a travelling wave (Fig. 11 plots only half of each ring, for clarity).
- **Flapping mode structure** (p. 4218; Figs. 12–13):
  - u′ follows the antisymmetry of schlieren mode 1 and v′ is symmetric about the x axis, confirming flapping.
  - Both components show shock-cell modulation (clearer at NPR 4.5) and standing waves from the downstream and upstream waves.
  - The dominant wavenumber falls and the streamwise extent grows with NPR (to about x/D_eq ≈ 12 at NPR 4.5, read).
- **Closure from the wavenumber spectrum** (p. 4218; Fig. 14, FFT in x of v′ of the complex POD mode):
  - A strong positive peak (KH, downstream) and a weaker negative peak at |k| slightly above the acoustic wavenumber, i.e. **subsonic** upstream phase speed: the G-JM signature.
  - The weakest-link line k_KH − k_sh1 falls close to the negative peak, better at NPR 4.5. At NPR 2.5 all peaks are broad because the structure is compact. The authors conclude that the antisymmetric KH and G-J modes interact via the **first** shock-cell peak, and that "secondary/suboptimal shock cells play a minor role" for the dominant mode (p. 4218, 4220).
  - Smaller peaks at k_KH ± n k_sh are also visible, mainly at positive k (p. 4218–4219).
  - Line positions read from Fig. 14 (my reading; see the Data tables): k_KH D_eq ≈ 4.7 (NPR 2.5) and ≈ 2.0 (NPR 4.5), which gives U_c ≈ 0.73U_j and ≈ 0.75U_j. At NPR 4.5 the KH peak sits on the acoustic line (U_c ≈ c∞). The negative peak at NPR 4.5 is near kD_eq ≈ −2.3, a phase speed of about 0.85c∞.
- **LSA mode shapes** (p. 4219; Fig. 15, NPR 2.5, x/D_eq = 1, St 0.55):
  - The flapping KH mode is also the most unstable KH mode in this flow (citing the 2023 precursor and Morris & Bhat 1995).
  - KH pressure decays quickly in y; the flapping G-JM decays much more slowly, with the same symmetry.
  - The precursor showed that flapping, wagging and varicose G-JMs have different regions of existence. The wagging band is mostly at lower frequency, but the bands converge as the shear layer develops.
- **Weakest-link predictions along x** (p. 4219; Fig. 16, values read):
  - The predicted St falls with x, because the G-JM band moves to lower frequency as the shear layer thickens.
  - At low NPR tones are predicted only over a short x range, which the authors blame on holding the KH wavenumber fixed. The range widens with NPR, as does the POD mode.
  - The prediction is "usually slightly lower" than the measured tone, and the predicted region usually lies near the POD-mode maximum. NPR 2.9 is the exception on both counts: the predictions (St ≈ 0.43–0.44, x/D_eq 1.5–2.0) lie above the tone (0.42) and upstream of the POD peak (x/D_eq ≈ 2.9) (my reading).
- **Frequency against NPR** (p. 4219–4220; Fig. 17, values read):
  - *Model base flow* (constant profile, no centreline decay or shear-layer growth, from the 2023 paper): the k_sh1 loop is predicted only for NPR ≤ 2.6, where it matches mode 1. The k_sh2 loop is predicted from NPR 2.7, earlier than mode 3 appears, and closer to the varicose mode 2 than to mode 3, so predictions were stopped at NPR 3.2.
  - *PIV-fitted base flow*: k_sh1 predictions (◇) follow mode 1 at all six NPRs, and k_sh2 predictions (∗) are offered as the second flapping mode, "as in Nogueira et al. [13]" (the A2 mechanism).
  - The authors stress that the PIV-based mean flows give superior agreement, so known flow features should be put into the model (p. 4220).
  - **My reading of Fig. 17:** the PIV-based k_sh2 points (St ≈ 0.42, 0.36, 0.32, 0.29 at NPR 3.3, 3.7, 4.1, 4.5) lie **on mode 2 at NPR 3.3**, where mode 3 does not yet exist, and **between modes 3 and 2** at 3.7–4.5 (mode 3 ≈ 0.34, 0.31, 0.28; mode 2 ≈ 0.37, 0.34, 0.31). Frequency alone does not show that the k_sh2 loop is mode 3 rather than mode 2.
- **Conclusions** (p. 4220): four fundamental modes (two flapping, one varicose, one wagging), which the authors call the first experimental identification of so many screech modes in a rectangular jet tied to the symmetries LSA predicts. Multimodality is stronger at high NPR. The far field and the PIV show only flapping. The dominant mode closes as KH + G-JM + k_sh1, and complex nozzles follow canonical-nozzle screech dynamics.

## Setup / method
- **Nozzle** (p. 4211; Fig. 1): AR 2 converging–diverging rectangular nozzle with a sharp throat, geometry from Ghassemi Isfahani (Esfahani), Webb & Samimy (2021), i.e. a single nozzle of the OSU twin-jet design. D_eq = 8.68 mm; ideally expanded at NPR ≈ 3.7, which is M_d ≈ 1.50 (my isentropic arithmetic, matching the OSU M_d 1.5). The non-contoured interior and sharp throat give a complex shock pattern, and the shock train decays strongly after the 6th cell (p. 4213). Exit dimensions are not given; with AR 2 and D_eq = 8.68 mm the area-equivalent sizes are h ≈ 5.44 mm, w ≈ 10.9 mm (my arithmetic, consistent with Fig. 15). The OSU nozzle is D_e = 19.25 mm ([esfahani-2021-coupling-modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md)), so this is about a 0.45 scale. Lip thickness, exit boundary-layer state and stagnation temperature are not stated.
- **Coordinates:** x streamwise; y across the minor (short) dimension, so the "minor-axis" view and PIV plane is x–y and shows flapping; z across the major dimension (x–z plane, "major-axis" view) (Figs. 2, 7–8, 15).
- **Conditions:** schlieren NPR 2.5–4.5, apparently in steps of 0.1 (21 points in Fig. 4, read); PIV and LSA at NPR 2.5, 2.9, 3.3, 3.7, 4.1, 4.5 (Figs. 9, 16). M_j ≈ 1.22–1.64 (isentropic, my arithmetic). The St definition is not printed; f D_eq/U_j is consistent with the acoustic wavenumbers drawn in Fig. 14 (k_a D_eq ≈ 3.75 at NPR 2.5 against 2π·0.556·U_j/c∞ = 3.75 with T₀ = 293 K; my check).
- **Schlieren** (p. 4211–4212): Toepler Z-type system in the Shock Lab Supersonic Jet Facility at Monash; the Fig. 1 caption places the rig in Monash's combustion laboratory, i.e. the Combustion Lab.
  - Photron SA-Z 2100K at 150 kfps with a high-pulse-rate LED, synchronised by an in-house BeagleBone pulse generator (Fedrizzi & Soria 2015). The knife edge is set for streamwise density gradients.
  - 200 × 512 px at an idealised 0.197 mm px⁻¹, i.e. about 39 × 101 mm or 4.5 × 11.6 D_eq (my arithmetic); figures show x/D_eq 0–8, y/D_eq ±2.
  - Separate views orthogonal to the major and minor axes. Mirror focal length, exposure and whether the two views were simultaneous are not stated (a single camera is named, so probably separate runs).
- **SPOD** (p. 4212): Welch SPOD of the light-intensity fields (streamwise density gradient, path-integrated). **Needs time-resolved data.** 50,000 snapshots at f_s = 150 kHz, n_fft = 4096, 50 % overlap. That is a 0.33 s record, Δf ≈ 36.6 Hz, block ≈ 27.3 ms and 23 blocks (my arithmetic). Window and weights are not stated. The "waterfall" (Fig. 4) plots the leading eigenvalue λ₁ against NPR and St, in log scale.
- **Empirical dispersion relation** (p. 4213; Fig. 3): FFT in time and x of the light intensity along y/D_eq = 0.1, energy over 5 decades. Needs time-resolved data. The window and x extent are not stated.
- **PIV** (p. 4211): Shock Lab Supersonic Jet Anechoic Facility (SJAF), a different rig from the schlieren.
  - 12-bit Imperx B6640M camera, 300 mm Micro-Nikkor lens with extension rings; Quantel Evergreen dual-cavity Nd:YAG (532 nm), sheet ≈ 1 mm thick; paraffin seeding upstream of the nozzle (ambient seeding not mentioned).
  - Image pairs at 1.66 Hz, so **not time-resolved**. Processed in PIVlab with its multigrid algorithm (Soria 1996). Window size and vector spacing are not given.
  - 2500 snapshots in the minor-axis (x–y) plane and 1000 in the major-axis (x–z) plane; more than enough for first-order statistics.
- **Acoustics** (p. 4212): two G.R.A.S. 46BE ¼-inch free-field microphones (4 Hz–80 kHz), pistonphone-calibrated (42AB), NI USB-6356 at 200 kHz for 5 s. Placed at 80 D_eq from the centreline, polar angle 40° (reference direction not stated), one in line with each axis; only the minor-axis microphone is used. Welch PSD with n_fft = 2048 and 75 % overlap (Δf ≈ 98 Hz, my arithmetic). Their role is to tie PIV structures to frequencies and to check that both facilities produce the same tones (p. 4212, 4216).
- **POD** (p. 4212, 4217): snapshot POD of u and v in the minor-axis plane (2500 snapshots), applied to symmetry-imposed velocity data. Mode pairs are confirmed by similar eigenvalues and a ring in the (a₁, a₂) phase portrait. A complex travelling-wave mode is then built from the pair (eq. 2), with ω set from the acoustics. Works on non-time-resolved data, but assumes one steady tone.
- **Spatial wavenumber spectrum** (p. 4218; Fig. 14): FFT in x of v′ of the complex flapping mode, shown as a function of y over 2 decades. The PIV field extends to x/D_eq ≈ 12, so Δk D_eq ≈ 0.5 (my arithmetic).
- **Linear stability analysis** (§III.B, p. 4212):
  - Spatial, inviscid ("compressible inviscid Navier–Stokes"), locally parallel, on a cylindrical 2-D (r, θ) cross-section as in Lajús et al. (2019).
  - Floquet ansatz in azimuth (eq. 5): only half the domain is discretised, and μ = 0 gives even, μ = 1 odd modes.
  - The pressure equation is a polynomial eigenproblem in α, linearised to companion form (eq. 6) and solved in MATLAB with Arnoldi (eigs). Chebyshev in r, Fourier in θ, N_r = N_θ = 100 (converged). Boundary conditions as in the 2023 precursor (not repeated here).
- **Base flows** (§III.C, p. 4212–4213):
  - Major- and minor-axis PIV U are fitted by nonlinear least squares to a product of four tanh profiles (eq. 7), with M_c, y_c, z_c, δ_y, δ_z constrained to be smooth in x. The result is a shock-free, "ideally expanded" equivalent 3-D mean flow that keeps the shear-layer thicknesses and potential-core length (Figs. 7–8).
  - V and W are neglected. Pressure, density and temperature come from Crocco–Busemann and the ideal-gas law (Michalke 1971). The temperature ratio is the isentropic one at the Mach number studied, which implies an unheated jet.
  - Justification: shocks modulate the waves and create the absolute instability (Nogueira et al. 2022, abs. inst.), but the local KH wavenumber barely changes with periodicity (Nogueira et al. 2022, PRF). The shock-free mean therefore gives the relevant wavenumbers, which "can be linked back" to the periodic spectrum (p. 4213).
  - *Reference (model) base flow* from the precursor: equal shear-layer thicknesses δ_y = δ_z = δ. δ = 0.075 for KH modes (thin, easier to find in the eigenspectrum) and δ = 0.150 for the G-JM (wider G-JM bands), the latter justified by screech being triggered 4–6 shock cells downstream (citing Mercier 2017; Mancinelli 2019; Nogueira 2022). M_c is the ideally expanded Mach number for the NPR. No centreline decay or spreading (p. 4213, 4219–4220). The length scale for δ is not stated.
- **Weakest-link model** (§III.D, p. 4213; §VI, p. 4219):
  - It stands in for the absolute instability of spatially periodic LSA (Nogueira et al. 2022, abs. inst.). A frequency is valid where eq. 8 holds.
  - k_sh is taken from experiment, as k_sh1 and k_sh2 (first and second peaks), though it could be predicted by zero-frequency LSA (Pack; Tam, Jackson & Seiner; Tam 1988). Which data and window give k_sh is not stated.
  - α_KH is evaluated once at x/D_eq = 0.25, near the nozzle. α_GJM is allowed to vary with x, because the G-JM's region of existence is very sensitive to the shear layer. Predictions are made for 0 ≤ x/D_eq ≤ 8.
  - Fig. 17 uses the x-averaged predicted St per NPR (p. 4219).
  - Only flapping modes are modelled (p. 4219).

## Key equations
All checked against rendered pages (p. 4212–4213).

- **Snapshot POD** (eq. 1, p. 4212): $\mathbf R\boldsymbol\xi_j=\sigma_j\boldsymbol\xi_j$, with $\mathbf R=\mathbf Q^{T}\mathbf Q$ and spatial modes $\boldsymbol\phi_j=\mathbf Q\boldsymbol\xi_j$ (real; no frequency information).
- **Complex travelling mode from a POD pair** (eq. 2, p. 4212): $\zeta(x,y,t)=(\boldsymbol\phi_1+i\boldsymbol\phi_2)\,e^{-i\omega t}$, with ω the screech frequency from acoustics.
- **SPOD** (eq. 3, p. 4212): $\mathbf C_\omega\boldsymbol\psi_{\omega,j}=\lambda_{\omega,j}\boldsymbol\psi_{\omega,j}$, C_ω the cross-spectral density matrix of the light-intensity fields.
- **Normal-mode ansatz** (eq. 4, p. 4212): $\tilde p(x,r,\theta,t)=\hat p(r,\theta)\,e^{-i\omega t+i\alpha x}$.
- **Floquet ansatz in azimuth** (eq. 5, p. 4212): $\hat p(r,\theta)=p(r,\theta)\,e^{i\mu\theta}$, with μ = 0 (even) or 1 (odd) and p periodic over the half-domain.
- **Companion-form eigenproblem** (eq. 6, p. 4212):
  $$\begin{bmatrix}O&I&O\\O&O&I\\-F_0&-F_1&-F_2\end{bmatrix}\begin{bmatrix}p\\\alpha p\\\alpha^2p\end{bmatrix}=\alpha\begin{bmatrix}I&O&O\\O&I&O\\O&O&F_3\end{bmatrix}\begin{bmatrix}p\\\alpha p\\\alpha^2p\end{bmatrix},$$
  i.e. $(F_0+\alpha F_1+\alpha^2F_2+\alpha^3F_3)\,p=0$ (my expansion), with F_n depending on the mean flow, ω and the r, θ derivative operators.
- **Fitted 3-D mean flow** (eq. 7, p. 4212):
  $$U(x,y,z)=\frac{M_c(x)}{16}\Big[1+\tanh\tfrac{y+y_c(x)}{\delta_y(x)}\Big]\Big[1+\tanh\tfrac{-y+y_c(x)}{\delta_y(x)}\Big]\Big[1+\tanh\tfrac{z+z_c(x)}{\delta_z(x)}\Big]\Big[1+\tanh\tfrac{-z+z_c(x)}{\delta_z(x)}\Big].$$
  Each bracket tends to 2, so the centreline value is M_c(x): velocity in units of the ambient sound speed (my reading). y_c, z_c are half-widths and δ_y, δ_z shear-layer thicknesses.
- **Weakest-link condition** (eq. 8, p. 4213): $\alpha_{GJM}=\alpha_{KH}-k_{sh}$, with α from LSA and k_sh (k_sh1 or k_sh2) from experiment. Fig. 14 draws the family k_KH + n k_sh1,2 (n integer); eq. 8 is n = −1.

> Checked numerically (my arithmetic, assuming St = f D_eq/U_j and T₀ = 293 K): the acoustic lines in Fig. 14 at kD_eq ≈ ±3.75 (NPR 2.5) and ±1.95 (NPR 4.5) match 2πSt·U_j/c∞ = 3.75 (St 0.556) and 1.95 (St 0.235). Red-line spacings in the NPR 4.5 panel are uniform (4.31–4.44), as expected for k_KH + n k_sh1.

## Data tables
**Fundamental tones from schlieren SPOD** (St; NPR 4.0 values printed in the Fig. 5–6 captions, p. 4215; all others read from Figs. 4 and 17, ±0.01):

| NPR | M_j (isentropic) | Mode 1, flapping | Mode 2, varicose | Mode 3, flapping 2 (minor view) | Mode 4, wagging (major view) |
|---|---|---|---|---|---|
| 2.5 | 1.22 | 0.556 | — | — | — |
| 2.6 | 1.25 | 0.515 (text: 0.51, p. 4214) | — | — | — |
| 2.7 | 1.28 | 0.48 | 0.54 | — | — |
| 3.0 | 1.36 | 0.40 | 0.46 | — | — |
| 3.3 | 1.43 | 0.347 | 0.418 | — | — |
| 3.5 | 1.47 | 0.317 | 0.395 | 0.37 | — |
| 3.7 | 1.50 | 0.294 | 0.373 | 0.338 | — |
| 4.0 | 1.56 | **0.265** | **0.337** | **0.308** | **0.272** |
| 4.5 | 1.64 | ≈ 0.24 | ≈ 0.31 | ≈ 0.28 | ≈ 0.25 |

**Weakest-link predictions on the PIV-fitted mean flow** (Fig. 16, p. 4219, and Fig. 17, p. 4220; read):

| NPR | Measured St (Fig. 16) | Predicted St range, k_sh1 (Fig. 16) | x/D_eq where predicted | POD-mode peak x/D_eq | k_sh2 prediction (Fig. 17) |
|---|---|---|---|---|---|
| 2.5 | 0.55 | 0.545–0.52 | 1.0–1.7 | ≈ 1.35 | — |
| 2.9 | 0.42 | 0.44–0.425 | 1.5–2.0 | ≈ 2.9 | — |
| 3.3 | 0.35 | 0.347–0.322 | 3.5–7.5 | ≈ 5.4 | ≈ 0.42 |
| 3.7 | 0.29 | 0.292–0.278 | 5.0–8.0 | ≈ 5.4 | ≈ 0.36 |
| 4.1 | 0.26 | 0.256–0.249 | 6.0–8.0 | ≈ 6.0 | ≈ 0.32 |
| 4.5 | 0.23 | 0.233–0.230 | 6.5–8.0 | ≈ 8 (edge) | ≈ 0.29 |

Model base flow (Fig. 17, read): k_sh1 at NPR 2.5 (≈ 0.54) and 2.6 (≈ 0.51) only; k_sh2 from NPR 2.7 to 3.2 at ≈ 0.57, 0.54, 0.52, 0.49, 0.46, 0.44, which is 0.02–0.03 above mode 2.

**Axis switching and potential core on the fitted mean flow** (Fig. 9, p. 4216; read):

| NPR | 2.5 | 2.9 | 3.3 | 3.7 | 4.1 | 4.5 |
|---|---|---|---|---|---|---|
| x_sw/D_eq | 3.1 | 3.3 | 5.0 | 5.4 | 5.1 | 4.8 |
| x_pc/D_eq | 5.5 | 5.2 | 7.5 | 8.1 | 8.5 | 9.8 |

**Wavenumbers from the Fig. 14 line positions** (p. 4218; my reading, ±0.1–0.2 in kD_eq):

| NPR | k_a D_eq (white) | k_KH D_eq (green) | k_KH − k_sh1 (red) | k_KH − k_sh2 (blue) | k_sh1 D_eq → L_sh1/D_eq | k_sh2 D_eq → L_sh2/D_eq | k_sh2/k_sh1 | U_c/U_j = 2πSt/(k_KH D_eq) |
|---|---|---|---|---|---|---|---|---|
| 2.5 | ±3.75 | 4.72 | −6.02 | −8.81 | 10.7 → 0.585 | 13.5 → 0.464 | 1.26 | 0.73 |
| 4.5 | ±1.95 | ≈ 2.0 | −2.31 | −3.38 | 4.40 → 1.43 | 5.46 → 1.15 | 1.24 | 0.75 |

> For comparison (my arithmetic): Tam's (1988) vortex-sheet first-cell spacing for this geometry (M_d 1.5, h ≈ 5.44 mm, as written in the Gojon 2019 note) gives 0.73 D_eq at NPR 2.5 and 1.53 D_eq at NPR 4.5, i.e. 25 % and 7 % longer than the k_sh1 values above.

## Figures worth remembering
- **Fig. 1 (p. 4211):** rig schematic and the single-nozzle plate.
- **Fig. 2 (p. 4213):** instantaneous and mean schlieren at NPR 2.6 in both views. Flapping is visible in the minor-axis view only; the complex shock pattern fades after about six cells.
- **Fig. 3 (p. 4214):** empirical dispersion relation (St against kD) at NPR 2.6 in both views. KH band, faint negative-k guided and duct arcs, and the screech line at St 0.51 in the minor view only.
- **Fig. 4 (p. 4214):** the key tone map. SPOD λ₁ against NPR and St for both views, with modes 1–4 marked.
- **Figs. 5–6 (p. 4215):** SPOD modes at NPR 4.0. Minor view: modes 1, 2, 3; major view: modes 1, 2, 4. Mode 4 (wagging) is concentrated at x/D_eq ≈ 5–8 (read).
- **Figs. 7–8 (p. 4216):** measured against fitted shock-free mean flows at NPR 2.5 and 4.5, and the 3-D fitted field showing axis switching in (r, θ) slices.
- **Fig. 9 (p. 4216):** x_sw and x_pc against NPR.
- **Fig. 10 (p. 4217):** far-field SPL map against NPR with schlieren modes 1 and 2 overlaid.
- **Fig. 11 (p. 4217):** POD energies and the a₁–a₂ ring at NPR 2.5 and 4.5.
- **Figs. 12–13 (p. 4217–4218):** complex flapping modes (u′ antisymmetric, v′ symmetric) at NPR 2.5 and 4.5.
- **Fig. 14 (p. 4218):** the closure figure. k_x spectra of v′ with the acoustic, KH and k_KH + n k_sh1,2 lines.
- **Fig. 15 (p. 4219):** fitted mean cross-section and LSA pressure of the flapping KH and G-J modes at x/D_eq = 1, NPR 2.5.
- **Fig. 16 (p. 4219):** predicted St against x for each PIV NPR, with the measured tone and the POD-peak position.
- **Fig. 17 (p. 4220):** predictions from both base flows and both k_sh against the SPOD map.

## Notation
- AR = 2 aspect ratio; D_eq = 8.68 mm equivalent diameter; NPR nozzle pressure ratio; St Strouhal number (definition not printed; f D_eq/U_j assumed); U mean streamwise velocity; p pressure.
- x, y, z: streamwise, minor-axis-normal and major-axis-normal coordinates. "Minor-axis" view or plane: x–y; "major-axis": x–z.
- k: streamwise wavenumber from experiment; α: streamwise wavenumber from LSA; k_sh, k_sh1, k_sh2: experimental shock-cell wavenumber and its first and second peaks; α_KH, α_GJM (k_KH in Fig. 14): KH and guided-jet-mode wavenumbers.
- ω: nondimensional angular frequency; μ: Floquet coefficient (0 even, 1 odd).
- Q: snapshot matrix; R: autocovariance; σ_j, ξ_j, φ_j: POD eigenvalue, eigenvector, spatial mode; a₁, a₂: POD coefficients; ζ: complex POD mode. C_ω: CSD matrix; λ_ω,j, ψ_ω,j: SPOD energies and modes.
- M_c(x), y_c(x), z_c(x), δ_y(x), δ_z(x): fit parameters of eq. 7 (centreline Mach number, half-widths, shear-layer thicknesses); δ: common thickness in the model base flow.
- x_sw: axis-switching point; x_pc: end of the potential core (0.9 of exit velocity).
- Modes: 1 = flapping (minor axis), 2 = varicose, 3 = second flapping (minor axis), 4 = wagging (flapping about the major axis). KH: Kelvin–Helmholtz; GJM (G-JM): guided jet mode; WLM: weakest-link model.

## Relevance to this project
This is Shock Lab group work, with the user as second author, on resonance in a non-axisymmetric, sharp-throat nozzle. It runs the CLAUDE.md workflow nearly end to end: statistics (mean flows), SPOD of time-resolved schlieren, POD pairs of non-time-resolved PIV, and a linear model that predicts the tones from the measured mean flow. It is the rectangular, C-D counterpart of [Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) (same PIV + Floquet-LSA recipe on an ellipse) and the single-nozzle version of the OSU twin geometry ([esfahani-2021-coupling-modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md)).

**How it fits the literature**
- **Flapping dominance** agrees with every rectangular-jet study in the library ([Krothapalli 1986](krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet.md); [Raman 1998](raman-1998-supersonic-jet-screech-review.md) p. 54; [Esfahani 2021](esfahani-2021-coupling-modes-twin-rectangular-jets.md) p. 9). The far field here is equally flapping-only, while the schlieren reveals three weaker loops that the microphones miss (p. 4217, 4220).
- **Same geometry elsewhere.** The dominant tone matches the OSU twin jets of the same design to within about 0.02 in St over the whole range: 0.556 / 0.40 / 0.294 / 0.265 at M_j 1.22 / 1.36 / 1.50 / 1.56 here, against 0.60 / 0.40 / 0.30 / 0.27 at M_j 1.20 / 1.35 / 1.50 / 1.55 there ([Esfahani 2021](esfahani-2021-coupling-modes-twin-rectangular-jets.md), Fig. 6, p. 8, values read in that note; my comparison). So the 0.45 scale and twin-jet coupling barely shift the tone. The Cincinnati AR 2, M_d 1.5 C-D nozzle gives cold St 0.37 (NPR 3) and 0.25 (NPR 4) ([Gojon 2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md), Table 4), about 6–8 % below the 0.40 and 0.265 here.
- **Mode 1 seen across the major axis.** The paper cites Gojon 2019 for minor-axis flapping in LES (p. 4211). The Gojon note records that the *cold* LES of the same nozzle type flaps along the **diagonal**, with 180° jumps across both planes, and becomes pure minor-axis flapping only when heated (p. 21–24 there). A partly diagonal (AA) component would project as an antisymmetric pattern in **both** schlieren views. That is an alternative to the misalignment or poor-convergence explanation the authors give for mode 1's major-axis signature (p. 4214). This is my suggestion; it would be settled by rotated views as in [Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md), or cross-plane PIV.
- **Mode 4 and the bi-axial flapping of Mazharmanesh 2025** (not cited by this paper). In the group's AR 2 *convergent* rectangular nozzle (D_e 13.6 mm) at NPR 4.0, Mazharmanesh found tones at 0.23 (flapping), 0.27 ("bi-axial": flapping upstream of the axis switch, wagging downstream) and 0.30 (varicose) ([Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md) p. 11–17).
  - Here at NPR 4.0 the wagging mode 4 (St 0.272) is seen only across the major axis. Its amplitude sits at x/D_eq ≈ 5–8 (Fig. 6, read), downstream of the fitted axis-switch point (≈ 5.1 D_eq at NPR 4.1, Fig. 9).
  - So mode 4 looks like the same "wagging after axis switch" phenomenon (my reading). The nozzles differ (convergent against C-D, different D_e), so the St values cannot be matched one to one.
  - [Suzuki 2026](suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md) (p. 13–15) shows a new flapping family born at the switch point in DNS, which supports this reading.
- **Closure.** The KH–G-JM–k_sh1 triad for the dominant flapping tone matches round jets ([Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [Edgington-Mitchell 2021, waves](edgington-mitchell-2020-waves-in-screeching-jets.md) p. 14–17), twin jets ([Nogueira 2021, twin](nogueira-2021-twin-jet-coupling-spatial-lsa.md)), ellipses ([Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) p. 21–24) and LES of twin rectangular jets ([Jeun 2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) p. 18–21). It is stronger than the band-membership evidence for rectangular jets in [Gojon 2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md), because here the upstream peak is found in the resonant structure itself and lines up with k_KH − k_sh1.
- **Second flapping mode on k_sh2.** This applies the A2 mechanism of [Nogueira 2022](nogueira-2021-closure-mechanism-a1-a2-screech.md) and [Edgington-Mitchell 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) to an AR 2 rectangular jet. The ratio k_sh2/k_sh1 ≈ 1.24–1.26 read from Fig. 14 sits at the top of the 1.1–1.27 range of Edgington-Mitchell 2022 and close to Mercier's 1.28 for A2 ([Mercier 2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md), Table 4).
  - Unlike the round-jet stages, the k_sh1 and k_sh2 loops here **coexist** in block-averaged SPOD (NPR 3.5–4.5) rather than replacing each other, like the multimodal AR 2 elliptical jet of [Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) (loops on k_s2 from NPR 3.4).
  - The mode-3 identification rests only on frequency. Fig. 17 shows the k_sh2 points on mode 2 at NPR 3.3 and between modes 2 and 3 above that (see Key findings).
- **The model side.** Holding α_KH at x/D_eq = 0.25 while α_GJM varies is a pragmatic version of the saddle-point picture ([Nogueira 2021, absolute instability](nogueira-2021-absolute-instability-shock-containing-jets.md)), whose saddle the weakest link approximates (Nogueira 2022, p. 14–15).
  - The result that the spreading PIV mean flow beats a constant profile agrees with the general finding that shear-layer thickness, not shock strength, sets the G-JM band edges ([Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md) p. 16–17; Ivelja 2024, p. 23).
  - Limits: no growth rates, gain or amplitude; no selection between coexisting loops; locally parallel; V, W and shocks dropped from the base flow; inviscid; and k_sh taken from data rather than predicted. Only flapping loops are modelled, so the varicose and wagging tones are unexplained.
  - The upstream wave is subsonic (about 0.85c∞ at NPR 4.5, my reading), consistent with [Nogueira 2024](nogueira-2024-guided-jet-waves.md).
- **Shock spacing.** Tam's (1988) vortex-sheet spacing is 25 % (NPR 2.5) and 7 % (NPR 4.5) longer than the k_sh1 values read from Fig. 14 (my arithmetic). That is in line with Raman's "finite thickness shortens spacing by about 20 %" ([Raman 1998](raman-1998-supersonic-jet-screech-review.md) p. 62) and with the sharp throat's extra internal shocks.

**Methods and data for the lab workflow**
- **Time-resolved schlieren:**
  - SPOD waterfalls (λ₁ against NPR and St) in two views are a quick way to find every loop and its symmetry. A tone present in only one view is a symmetry fingerprint (flapping in the minor view, wagging in the major view, varicose in both).
  - The empirical k–ω dispersion relation along one line (Fig. 3) shows KH, guided and duct branches directly. It needs time resolution in t and a long x window.
  - Path integration can mislead: an antisymmetric mode "should" cancel in the orthogonal view, yet it does not here.
- **Non-time-resolved PIV:** symmetry-imposed POD, a ring check on the pair, a complex mode with ω from a microphone, then an x-FFT split by the sign of k. This is the standard group recipe (Edgington-Mitchell 2018; Nogueira 2021, twin; Ivelja 2024).
  - The pair holds only 10–20 % of the energy here, below the 23.6–35 % of Ivelja's ellipse. That may reflect the turbulent exit of a sharp-throat nozzle; my speculation.
  - The POD only sees the dominant flapping loop. Weaker loops (modes 2–4) need time-resolved data or conditioning.
  - Because PIV and schlieren come from different rigs, the authors tie them through far-field microphones in the PIV rig (Fig. 10). That is a useful habit whenever data come from two facilities.
- **Mean-flow fitting (eq. 7)** is reusable well beyond LSA. It filters the shocks out of a measured mean and gives clean axis-switching and potential-core positions (Fig. 9). It is also the input any 3-D linear model needs, so the code is worth adopting.
- **Intermittency and the SPOD → reconstruction → HPOD pipeline:**
  - Everything here is block-averaged. The authors suggest that modes 3 and 4 may be "not always active" (p. 4214), and at NPR 4.0 modes 1 and 4 are only ΔSt ≈ 0.007 apart (about 13.4 against 13.7 kHz, ≈ 350 Hz, ≈ 10 SPOD bins at Δf = 36.6 Hz; my arithmetic).
  - Reconstruct each tone band separately ([Nekkanti 2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)) with band edges no wider than about ±150 Hz, then track amplitude and frequency with HPOD ([Raiola 2025](raiola-2025-hilbert-pod.md)) or Hilbert transforms in time. Correlating the amplitudes, as in Mazharmanesh 2026, would show whether the flapping, second-flapping and wagging loops coexist, alternate, or simply beat (a 350 Hz beat would have a period of about 2.9 ms, about 40 cycles).
  - Mode 4 lives only in the major view and mode 3 only in the minor view, so a coexistence test between those two needs simultaneous two-view schlieren. Mode 1 against mode 3 can be tested in the minor view alone.
  - Sub-domain SPOD (Mazharmanesh 2025) upstream and downstream of x_sw would test the mode-4/bi-axial hypothesis above.

**Modelling and the PyFR staging LES**
- The LSA–WLM procedure transfers directly to the round-jet LES (`Simulations/PyFR_Staging_Continuation/`). Fit the LES mean of each converged state (A1 at NPR 2.10, A2 at 2.25) with the axisymmetric analogue of eq. 7, keeping M_c(x), r_c(x) and δ(x). Take α_KH near the lip and α_GJM(x), and k_s1 and k_s2 from the LES mean shock spectrum. Then check that A1 closes on k_s1 and A2 on k_s2, and where in x each loop is predicted.
  - This is cheap enough to run on every continuation step. The x-range where eq. 8 holds is a candidate per-state diagnostic next to the frequency.
- The paper also shows the trap of using a constant-profile base flow: it misses loops and misassigns k_sh2 to the wrong tone (Fig. 17). The LES mean should be used as it is, spreading included.
- The LES can supply what the experiment lacked: the cross-plane field, to test diagonal against minor-axis flapping; growth rates; and the near-lip receptivity. A rectangular PyFR case on this nozzle would also give the k_sh values from the full 3-D mean rather than from one plane.

**Rocket noise.** Military-style (sharp-throat, faceted) nozzles are tactical-aircraft geometry rather than launch-vehicle geometry, and screech is absent at full scale ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)). Two points carry over to heated supersonic jet noise: a sharp-throat nozzle is never shock-free even at its design NPR (p. 4214), and at NPR 4.5 the KH wave convects at about c∞ (Fig. 14, my reading), the onset of Mach-wave radiation.

**Items to verify against the PDF**
1. The St definition is not printed. f D_eq/U_j is inferred from the Fig. 14 acoustic lines (my check), and the stagnation temperature is not stated.
2. Mode 3 is said to appear "very close to" ideal expansion (NPR 3.7, p. 4214), but its symbols in Figs. 4 and 17 start at NPR 3.5.
3. Predictions are "usually slightly lower" than the tone and located near the POD-mode peak (p. 4219). At NPR 2.9 Fig. 16 shows predictions above the tone and upstream of the POD peak. At NPR 4.5 the POD peak sits at the x/D_eq = 8 limit of the predictions.
4. Fig. 17 PIV-based k_sh2 points: on mode 2 at NPR 3.3, between modes 2 and 3 at 3.7–4.5 (read). Check whether the text's "both flapping modes" is supported (p. 4220).
5. Fig. 1 caption ("combustion laboratory") against the text ("Shock Lab Supersonic Jet Facility") for the schlieren rig (p. 4211).
6. Reference direction of the 40° microphone angle (p. 4212).
7. Source of the experimental k_sh1, k_sh2: PIV or schlieren mean, centreline or other line, x window (p. 4213). Not stated; the values in the Data tables are back-calculated from Fig. 14 lines.
8. Length scale for δ = 0.075 and 0.150 (presumably D_eq), and the LSA boundary conditions (deferred to the 2023 paper).
9. Fig. 9 values and all Fig. 4, 11, 16 and 17 values are read from figures (±0.01 in St, ±0.1 D_eq).
10. Whether the two schlieren views were recorded simultaneously.
11. The citation of Gojon et al. (2019) for minor-axis flapping in single-jet LES (p. 4211) against the diagonal flapping that note records for cold jets.
12. Window functions for SPOD, the dispersion relation and the Fig. 14 x-FFT are not stated.

**Candidates for `/add-paper`:**
- Nogueira, Beekman, Weightman & Edgington-Mitchell 2023 (AIAA 2023-4488) and Nogueira, Weightman & Edgington-Mitchell 2024 (AIAA 2024-3144): the precursors with the model base flow and the wagging/varicose G-JM bands.
- Tam & Thies 1993 (JFM 248, rectangular vortex sheet); Rodriguez, Prasad & Gaitonde 2021 (3-D PSE); Morris & Bhat 1995 (elliptic jets); Suzuki, Nogueira & Edgington-Mitchell 2023 (AIAA J. 61, elliptic vortex-sheet wavepackets); Edgington-Mitchell & Nogueira 2023 (AIAA 2023-3647, G-JM in compressible jets).
- Rectangular screech data and LES: Gutmark, Schadow & Bicker 1990; Raman & Rice 1994; Alkislar, Krothapalli & Lourenco 2003 (already in `Paper_PDFs/_Unprocessed/` as `Alkislar-EtAl_2003_...`); Jaunet, Collin & Delville 2016; Karnam, Saleem & Gutmark 2023; Wu et al. 2023; Jeun et al. 2022 (AIAA J. 60); Semlitsch et al. 2020; Sellappan & Alvi 2022; Prasad & Unnikrishnan 2024.
- Edgington-Mitchell, Oberleithner, Honnery & Soria 2014 (JFM 748; in `_Unprocessed/` as `EdgingtonMitchell-EtAl_2014_...`); Gojon, Bogey & Mihaescu 2018 (oscillation modes); Tam & Hu 1989; Lajús et al. 2019; Edgington-Mitchell 2019 review.
