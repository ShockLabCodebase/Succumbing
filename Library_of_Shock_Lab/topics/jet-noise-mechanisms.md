# Jet noise mechanisms

_Last updated: 2026-10-20 · 12 papers_

## Scope
How turbulent and shock-containing jets make broadband noise: mixing noise from large-scale structures (Mach wave radiation) and fine-scale turbulence, the similarity spectra that describe it, broadband shock-associated noise (BBSAN) from Tam & Tanna's interaction model to modern wavepacket source models, and the nonlinear steepening of high-amplitude jet noise into acoustic shocks (crackle). The last section says how these mechanisms carry over to rockets.

Left to other pages: the screech loop, staging and the guided jet mode ([screech](screech.md)); PSE and resolvent operators in their own right ([linear-operator-methods](linear-operator-methods.md)) and Floquet and wavepacket models ([linear-models](linear-models.md)); SP-8072, SATURN and other empirical rocket models ([rocket-noise-models](rocket-noise-models.md)); full-scale launch data and long-range propagation ([rocket-noise-measurements](rocket-noise-measurements.md)); impinging-jet tones ([impinging-jets-and-edge-tones](impinging-jets-and-edge-tones.md)); rectangular and twin jets ([non-axisymmetric-and-twin-jets](non-axisymmetric-and-twin-jets.md)); SPOD practice ([modal-decomposition](modal-decomposition.md)).

**Angle conventions.** Here θ is measured from the downstream jet axis. Tam et al. 1996 (χ) and Norum & Seiner 1982 (ψ) measure from the inlet axis, so θ = 180° − χ. The sign in the BBSAN peak-frequency formula flips with the convention ([Tam 1995](../notes/tam-1995-supersonic-jet-noise.md) note, eqs. 10–11).

## Current understanding
1. **Three components.** An imperfectly expanded jet radiates mixing noise (dominant downstream), BBSAN (sideline and upstream) and screech tones ([Tam 1995](../notes/tam-1995-supersonic-jet-noise.md), p. 18). A tab removes the tones and leaves the BBSAN hump ([Norum & Seiner 1982](../notes/norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md), App. E p. 149, 162).
2. **Mixing noise has two parts:** Mach waves from large-scale structures, which behave statistically as instability waves (wavepackets), and flatter sideline noise from fine-scale turbulence. Two empirical similarity spectra, F and G, fit both ([Tam 1995](../notes/tam-1995-supersonic-jet-noise.md), p. 19–20; [Tam et al. 1996](../notes/tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md), p. 3–5).
3. **The radiating part of the turbulence is low-energy, low-order and linear.** Linear models on the mean flow reproduce the m = 0 and 1 wavepackets that carry the sound ([Cavalieri et al. 2013](../notes/cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md), p. 566–585), and resolvent modes reproduce the Mach waves seen in SPOD of an M_j 1.5 LES ([Schmidt et al. 2018](../notes/schmidt-2018-spectral-analysis-jet-turbulence.md), p. 21–23).
4. **Mach wave radiation is acoustic matching**: only supersonic-phase-speed wavenumbers radiate, the peak is at θ = cos⁻¹(1/M_c), and jitter matters far less for supersonic than for subsonic jets ([Cavalieri et al. 2019](../notes/cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md), p. 11–16). The convective Mach number also governs shear-layer growth ([Papamoschou & Roshko 1988](../notes/papamoschou-1988-compressible-turbulent-shear-layer.md), p. 19–20).
5. **BBSAN is a difference-wavenumber Mach wave** from instability waves interacting with the shock cells, with one spectral peak per shock-cell mode ([Tam & Tanna 1982](../notes/tam-1982-shock-associated-noise-cd-nozzles.md), p. 8–11; [Tam et al. 1986](../notes/tam-1986-bbsan-screech-relationship.md), p. 3–6). An inside-out wavepacket model predicts the peaks within ±2 dB/St ([Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md), p. 20–23), and the peak-frequency relation holds at full scale with measured shock spacing ([Mathews 2025](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 36, 40). Screech lies at its upstream limit ([Tam et al. 1986](../notes/tam-1986-bbsan-screech-relationship.md), p. 7–8).
6. **High-amplitude jet noise propagates nonlinearly**, steepening into acoustic shocks that keep high-frequency energy linear absorption would remove, while OASPL barely changes ([Gee et al. 2008](../notes/gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md), p. 9–12; [Gee et al. 2012](../notes/gee-2012-reusable-srm-noise-spectral-statistical.md), p. 8).
7. **At rocket scale** Mach waves dominate, BBSAN and screech are absent, and the lab calibrations (similarity spectra, κ, peak St) do not transfer ([Lubert et al. 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 9–15).

## Mixing noise: two sources and similarity spectra
Tam's stochastic model treats the large structures as instability waves seeded at the lip, with one free constant. Fitted, it matches Mach 2 hot-jet directivities within about 2.5 dB, and the constant implies a large-structure u_rms of only 1.2–1.5% of U_j at the exit ([Tam 1995](../notes/tam-1995-supersonic-jet-noise.md), p. 25–30). The 1996 paper is purely empirical. F (sharp, +18.4/−27.7 dB per decade) and G (broad) fit 1,900 Langley spectra by shape ([Tam et al. 1996](../notes/tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md), p. 5):
- Large-structure noise dominates for χ > 125° and fine-scale noise for χ < 110° in a Mach 2 jet (p. 3).
- Peak levels collapse on V_j/a_∞ and T_r/T_∞, not M_j. The velocity exponents are about 9.5 (large scale) and 7.6 (fine scale) for cold jets; heating to T_r/T_∞ = 2 at fixed V_j lowers them by 8.6 and 6.7 dB (p. 6).
- Shock cells barely change F and G once BBSAN is set aside (p. 7–8). That is the assumption Tam & Tanna needed to subtract mixing noise ([Tam & Tanna 1982](../notes/tam-1982-shock-associated-noise-cd-nozzles.md), p. 17).
- The same spectra fit an M_j 0.98 jet and pilot AR 3 and AR 7.6 non-axisymmetric nozzles (p. 9–11).

F and G cover almost the same frequencies, so "large scales make low frequencies" is wrong (p. 5). The authors also infer, from spectral shape alone, two distinct kinds of turbulence with no cascade between them, and reject a Lighthill single-quadrupole source (p. 10–11). The lab baseline in [Norum & Seiner 1982](../notes/norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md) is a maximum OASPL 22.5–30° from the jet axis, up to 139.1 dB, with near-design C-D jets broadband only (p. 50, 175, 190).

**Wavepackets as the large-scale source.** Cavalieri et al. explain why low-energy structures dominate. Lipline velocity energy peaks at m ≈ 4–11, but high m radiate weakly at low St because the source is radially compact; the m = 0 velocity–pressure correlation is about 10% ([Cavalieri et al. 2013](../notes/cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md), p. 566–571). Their review turns this into a line-source model ([Cavalieri et al. 2019](../notes/cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md)):
- A Gaussian wavepacket gives superdirectivity for subsonic M_c (matching measured m = 0 data) and Mach waves for supersonic M_c (p. 10–13).
- Coherence decay (jitter) adds about 30 dB at M 0.6 but barely changes the M 2 peak (p. 15). Subsonic jets need three SPOD modes for their sound; supersonic jets need one (p. 16–18).
- At supersonic Mach numbers the first resolvent gain separates as a Mach-wave mode (p. 26, 28).

PSE wavepackets match the leading SPOD mode of an M_j 1.5 LES, Mach waves included ([Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md), p. 17). Tam's "instability waves" and the modern "wavepackets" are the same object; SPOD and resolvent analysis now show it directly.

**Control evidence.** Forcing m = ±1 at St_DF ≈ 0.3 adds about 4–5 dB, while forcing at high St_DF or high m cuts about 0.6–1 dB ([Samimy et al. 2006](../notes/samimy-2006-plasma-actuators-high-speed-jet-flow-noise-control.md), p. 19). That is the radial-compactness argument used as a design rule. Trailing-edge cutouts cut 30° noise from an underexpanded AR 3 jet by up to 12 dB through faster mixing ([Kerechanin et al. 2001](../notes/kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md), p. 3).

## Mach wave radiation and the convective Mach number
Papamoschou & Roshko defined M_c in the frame of the large structures; for a jet into still air with equal γ, M_c = U_j/(a_j + a_∞) (the note's derivation). Their findings ([Papamoschou & Roshko 1988](../notes/papamoschou-1988-compressible-turbulent-shear-layer.md)):
- Normalised growth starts falling at M_c ≈ 0.25 and levels at about 0.2 by M_c ≈ 0.6–0.8 (p. 19–20).
- Large structures persist up to M_c ≈ 1.8 (p. 8).
- A vortex sheet stabilises above a critical M_c, but finite-thickness layers do not (p. 14–15). They read the growth reduction as energy radiated away (p. 21–22).

The peak noise direction follows the Mach angle of the most amplified instability wave. Its growth and decay broaden the wavenumber spectrum, so even subsonic-phase-speed waves radiate a little ([Tam 1995](../notes/tam-1995-supersonic-jet-noise.md), p. 27–28; [Tam et al. 1996](../notes/tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md), p. 8–9). Cavalieri et al. give the closed form, PSD ∝ exp[−½k_h²L²(1 − M_c cos θ)²], with M_c ≈ 0.6M for cold lab jets ([Cavalieri et al. 2019](../notes/cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md), p. 9, 11). Heating broadens the dominant sector and adds low-St noise ([Tam 1995](../notes/tam-1995-supersonic-jet-noise.md), p. 20). For rockets, M_c = κU_e/c_a needs κ ≈ 0.31–0.32, against 0.6–0.85 for lab jets ([Lubert et al. 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 14–15; [Mathews et al. 2021](../notes/mathews-2021-falcon-9-far-field-noise.md), p. 627).

## BBSAN: from Tam & Tanna to wavepacket models
**Mechanism (1982).** Tam & Tanna replaced Harper-Bourne & Fisher's point-source array with the product of an instability wave and Pack shock cells ([Tam & Tanna 1982](../notes/tam-1982-shock-associated-noise-cd-nozzles.md)):
- Only k − λ₁ radiates effectively. The k + λ_n waves are subsonic, and k − λ₂ is 7.2 dB weaker for a uniform train (p. 9).
- On an M_d 1.672 C-D nozzle, f_p = u_c/[L_s(1 − M_c cos θ)] with u_c = 0.7u_j lands within one third-octave band at 75–135° (p. 16–18).
- Under- and overexpanded jets fall on one (M_j² − M_d²)² line; cold jets are up to 3 dB quieter (p. 17–20).
- At design the nozzle is about 9 dB quieter than a convergent one at 120° (p. 12–13), matching the dip at design in [Norum & Seiner 1982](../notes/norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md) (p. 37, 40).

The authors called the model "still quite tentative"; it gives no absolute level or spectral shape (p. 21).

**Multiple peaks (1986) and stochastic theory (1995).** Narrowband spectra show second and third peaks, set by the shock-cell Fourier wavenumbers rather than harmonics; one-third-octave bands hide them ([Tam et al. 1986](../notes/tam-1986-bbsan-screech-relationship.md), p. 3–5). The peak narrows upstream as (1 − M_c cos θ)⁻², the basis of the "weakest link" screech argument (p. 6–10; see [screech](screech.md)). Tam's four-parameter stochastic theory reaches engineering accuracy for M_j and M_d of 1–2, but misses dips at small inlet angles ([Tam 1995](../notes/tam-1995-supersonic-jet-noise.md), p. 34–36). Linear shock cells with an empirical initial amplitude suffice there, but shock-cell solvers missed the rapid shock decay of strongly screeching jets (p. 32).

**Inside-out wavepacket model (2021).** [Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md) built the source from flow data only. Wavepackets come from an ideally expanded M_j 1.5 LES or PSE on its mean flow. Shock cells are Pack–Prandtl modes corrected with mean PIV of a screeching M_j 1.45 jet from a Shock Lab group facility (k_s,mod = 0.79 k_s + 1.02) (p. 6, 9–14). The results:
- m = 0–2 peaks match azimuthally decomposed measurements within ±2 dB/St; the n = 2 peak comes from the second shock-cell mode (p. 20–23, 29).
- Perfectly coherent PSE leaves dips up to 20 dB/St deep between peaks; imposing the LES coherence (jitter) recovers up to 15 dB/St (p. 24–25). This is the shock-noise counterpart of the subsonic jitter result: k − k_s components can be subsonic even in a supersonic jet.
- The source sits inside the plume, two lobes per shock cell, strongest at cells 3–5 (2D–8D) (p. 27).
- Peak frequency is under-predicted at 115–125°, St_p is 0.6 against 0.55 measured near 80° with a screech harmonic on the peak, and nothing is predicted below St ≈ 0.4, where mixing noise was excluded (p. 20, 23).

The shocks are steady and the wavepackets come from a shock-free jet. Shock modulation lengthens the envelope that shock-free PSE predicts to decay too fast ([Nogueira et al. 2022](../notes/nogueira-2021-wavepacket-modulation-shock-containing-jets.md), p. 18–19), consistent with Wong's PSE falling below the LES beyond x ≈ 6D (p. 17).

**Full scale (2025).** Holography of an afterburning F404 (M_j 1.46, M_d 1.55, TTR 7, overexpanded) gives the following ([Mathews 2025](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md)):
- BSN sources sit at shock cells II–VIII; cell I is silent and VI–VII are loudest (p. 32).
- Spacing shrinks from about 0.97 to 0.72 D_j along the train. The spacing formulas all fail for overexpanded C-D jets, yet the Harper-Bourne–Fisher peak frequency agrees "excellently" with the measured spacing (p. 34, 36).
- Each shock source is coherent with both forward BSN and aft Mach waves, and coherence islands between shocks show one wavepacket meeting several shocks (p. 38–40). This matches Wong's distributed, partially coherent source (Wong p. 28–29).

On an overexpanded AR 3 jet, symmetric cutouts raise BBSAN along with stronger screech ([Kerechanin et al. 2001](../notes/kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md), p. 4–5).

## Crackle and nonlinear steepening
The library holds no laboratory study of how crackle is generated in heated supersonic jets (Ffowcs Williams et al. 1975 and later shocklet work are not indexed; not in the library). It holds the propagation side:
- **F-22A run-ups.** At 90% rpm and afterburner, a generalised Burgers model from 23 m matches 305 m spectra within 2–7 dB to 20 kHz; the linear model is 120–140 dB low at 20 kHz ([Gee et al. 2008](../notes/gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md), p. 9–10). Nonlinearity spans 90–145°, contradicting an earlier F/A-18E bispectral result at 90° (p. 11). OASPL and loudness metrics barely change (p. 12).
- **Rocket waveforms.** Rocket noise is positively skewed near the peak direction (Sk{p} ≈ 0.6–0.75), and Sk{∂p/∂t} exceeds 30 and grows with distance ([Gee et al. 2012](../notes/gee-2012-reusable-srm-noise-spectral-statistical.md), p. 7–8). At 2.5 km from an SLS booster firing it is still 21–32 at 80–100° ([Reichman et al. 2018](../notes/reichman-2018-qm2-srm-far-field-acoustics.md), p. 8–9).
- **Spectra and losses.** Launch waveforms are shock-dominated, with a weak-shock 10 dB/decade roll-off to 10 kHz ([Kellison et al. 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md), p. 5–6). Over 7 km, Atlas V loses about 15 dB at 1 kHz against 26 dB predicted by linear absorption ([Mathews 2025](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 84–85).

The source link is indirect. Gee et al. propose that plume impingement breaks up the Mach-wave-radiating structures, which would explain a downstream zone of unskewed, low-frequency noise; this is untested ([Gee et al. 2012](../notes/gee-2012-reusable-srm-noise-spectral-statistical.md), p. 10). In the lab, upstream waves from impinging jets are shocks at birth (M_s ≈ 1.07) or coalesce within 10D, too soon for propagation steepening ([Edgington-Mitchell et al. 2025](../notes/edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md), p. 3, 10–11).

## Carry-over to rocket noise
Details are on [rocket-noise-models](rocket-noise-models.md) and [rocket-noise-measurements](rocket-noise-measurements.md); the mechanism-level points are these.
- **Mach waves dominate**, with sound power ∝ U_e³ and η ≈ 0.3–0.5% ([Lubert et al. 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 7–9; [Kellison et al. 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md), p. 14). Near-field intensity vectors of a solid motor fit the two-source picture, but only by inspection ([Gee et al. 2010](../notes/gee-2010-near-field-vector-intensity-solid-rocket-motor.md), p. 6–7).
- **The similarity spectra fit poorly.** F fits only the RSRM 45° peak ([Lubert et al. 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 10), and a modified F with f^2.5/f^−2.2 slopes is used instead ([Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md), p. 377). The 1996 fits stop at T_r/T_∞ ≈ 4.9 and include no nonlinear propagation.
- **Peak Strouhal number falls about tenfold**, to Sr ≈ 0.01–0.025 against about 0.2, for reasons "still unclear" ([Lubert et al. 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 10; [Kellison et al. 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md), p. 15–16). The F404 at TTR 7 already puts much energy below Sr 0.1 ([Mathews 2025](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 16).
- **No BBSAN or screech** at sideline and forward angles, perhaps because BBSAN saturates with temperature or is buried under Mach waves ([Lubert et al. 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 9). Yet the afterburning F404 shows BSN clearly ([Mathews 2025](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 6, 32).
- **Installation:** reflected free-jet Mach waves in the flame path, not deflector impingement, set Epsilon fairing levels at H/D_e = 14 ([Tsutsumi et al. 2015](../notes/tsutsumi-2015-epsilon-liftoff-acoustics.md), p. 15–16).

## Disagreements and open questions
**Two sources or one jittering wavepacket?** [Tam et al. 1996](../notes/tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) infer two kinds of turbulence from spectral shape alone (p. 10–11). [Cavalieri et al. 2019](../notes/cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) show that jitter spreads wavepacket radiation to wider angles (p. 14–16), so part of the fitted "fine-scale" noise might be jittering wavepackets. Projecting measured sideline spectra onto a few SPOD or coupled-resolvent modes of the same jet would test how much of G they recover.

**Which convective Mach number sets the rocket peak angle?** The candidates disagree:
- The Oertel M_CO is favoured by [Lubert et al. 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (p. 13–15) and [Mathews et al. 2021](../notes/mathews-2021-falcon-9-far-field-noise.md) (p. 625–627), but Falcon 9's 64° matches it only after subtracting the vehicle Mach number.
- [Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) revise that angle to 71° after a 3-D geometry fix (p. 375, 378).
- [Kellison et al. 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) measure 64° again and prefer the "supersonic" Tam & Hu M_c (66°) to Oertel (69°) (p. 11–13).

Ray-traced near-pad arrays, plus wavenumber-filtered SPOD of heated-jet LES to see which instability family radiates, would decide it.

**What fills the BBSAN dips?** Tam (1987, as cited by Wong) blamed shock unsteadiness; [Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md) attribute most of it to jitter (p. 25). Time-resolved schlieren of screeching and tab-suppressed jets at the same β, or a model with oscillating shocks, would separate the two.

**Where are the BBSAN sources?** The candidates are cells 3–5 inside the plume ([Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md), p. 27), cells VI–VII near the end of the core at full scale ([Mathews 2025](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 32), and screech generation between cells 3 and 4 ([Tam et al. 1996](../notes/tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md), p. 8). The conditions differ (TTR, under- against overexpanded), so one rig with a β and TTR sweep and both flow and array data is needed.

**Why is BBSAN absent from rockets** when the F404 at TTR 7 shows it? Forward-arc measurements of strongly overexpanded motors and high-TTR lab jets with β sweeps would test the saturation and masking explanations.

**Shock spacing in overexpanded C-D jets** has no working formula ([Mathews 2025](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 34–35). Wong's correction is fitted to one jet, and Tam & Tanna's uniform-train assumption ([Tam & Tanna 1982](../notes/tam-1982-shock-associated-noise-cd-nozzles.md), p. 9) is contradicted by trains that shrink downstream.

**Screech-driven broadband amplification** of about 3 dB is unexplained ([Tam et al. 1996](../notes/tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md), p. 8).

**Is crackle radiated as shocks or formed in propagation?** [Lubert et al. 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) leave it unresolved (p. 10). Skewness tracked from near to far field, with Burgers propagation from near-field inputs as in [Gee et al. 2008](../notes/gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md), on a heated lab jet with simultaneous schlieren would locate where shocks form.

## Methods and data
- **Far-field spectra** are the core data, and time-averaged PSDs suffice for F/G fits and BBSAN checks. Narrowband resolution is needed for multiple BBSAN peaks; plotting a_∞/(f_p D) against cos θ gives U_c/a_∞ and k₁ from an arc ([Tam et al. 1986](../notes/tam-1986-bbsan-screech-relationship.md), p. 3, 8). Azimuthal decomposition needs only two microphones, one traversed ([Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md), p. 8).
- **Shock cells come from mean fields.** Non-time-resolved PIV is enough for a BBSAN shock model (Wong p. 10–11). Spacing inferred from a screech tone with a fixed M_c is just 1/f ([Kerechanin et al. 2001](../notes/kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md), p. 5).
- **Wavepackets and jitter need time-resolved data**: SPOD, two-point coherence and flow–acoustic correlation. PSE or resolvent need only a mean flow plus one amplitude per (m, ω). Higher SPOD modes, which carry the jitter, converge slowly ([Cavalieri et al. 2019](../notes/cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md), p. 29).
- **Full-scale sources** come from holography, partial fields and vector intensity, all on synchronous arrays ([Mathews 2025](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 13–16).
- **Nonlinearity** is measured by skewness of p and ∂p/∂t (sampling-rate dependent), spectral slopes and Burgers propagation, all from single-point pressure.

## Relevance to our work
- **Lab acoustics.** F + G fits split mixing noise by angle before modal analysis. Narrowband BBSAN peaks against angle, with shock spacing measured from mean schlieren rather than Prandtl–Pack, test Tam & Tanna on our nozzles. Check screech strength (+3 dB broadband) before attributing broadband changes to geometry.
- **SPOD → reconstruction → HPOD.** Streamwise transforms of SPOD modes isolate the radiating band |k| < ω/c_∞ (Mach waves) and the k_kh − k_s products (BBSAN; the same products close screech). Hilbert POD on a multi-mode reconstruction would show jitter, which Wong et al. could only treat statistically, as amplitude and phase modulation, and could track the shock oscillation they left unmodelled. This is a suggestion, not something in these papers.
- **Group data.** Wong et al.'s shock model was built from the group's PIV, so the lab's mean PIV and BOS fields feed BBSAN models directly.
- **PyFR staging LES.** At M_j ≈ 1.1, β and hence BBSAN are small and Tam's screech formula fails. An FW-H surface would still give BBSAN and screech from one run, to compare with the inside-out model.
- **Rocket noise.** Lab jets are cold (κ 0.6–0.85) and show BBSAN and screech; rockets are hot (κ ≈ 0.31) and show neither. Lab mechanisms transfer through Mach-wave directivity, wavepacket source models and nonlinear propagation. Derivative skewness is a cheap step-1 statistic for heated or impinging cases.

## Papers
- [Norum & Seiner 1982](../notes/norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md): Langley benchmark data (shock-cell pressure, OASPL, narrowband spectra, tab on/off) behind BBSAN and screech models.
- [Tam & Tanna 1982](../notes/tam-1982-shock-associated-noise-cd-nozzles.md): origin of the BBSAN mechanism, peak-frequency formula and β⁴ law.
- [Michalke 1984](../notes/michalke-1984-survey-jet-instability-theory.md): spatial LSA review of round jets: Michalke profiles, R/θ, Mach number, heating, flight, divergence, nozzle feedback (synthesis pending).
- [Tam et al. 1986](../notes/tam-1986-bbsan-screech-relationship.md): multiple BBSAN peaks from shock Fourier modes; screech as the BBSAN upstream limit.
- [Papamoschou & Roshko 1988](../notes/papamoschou-1988-compressible-turbulent-shear-layer.md): defines the convective Mach number behind Mach-wave directivity.
- [Tam 1995](../notes/tam-1995-supersonic-jet-noise.md): pre-wavepacket synthesis of mixing noise, BBSAN and screech.
- [Tam et al. 1996](../notes/tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md): large- and fine-scale similarity spectra and amplitude scalings.
- [Kerechanin et al. 2001](../notes/kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md): trailing-edge cutouts change mixing noise, BBSAN and screech of an AR 3 jet.
- [Ray 2005](../notes/ray-2005-instability-wave-shock-cell-interaction-sound.md): LEE with PSE-wave × shock-mode sources; BBSAN lobe at the local Mach angle of k_t − k_s; ring-source lobes at high St (synthesis pending).
- [Samimy et al. 2006](../notes/samimy-2006-plasma-actuators-high-speed-jet-flow-noise-control.md): forcing shows low-m structures at St ≈ 0.3 amplify noise and high-m forcing reduces it.
- [Cavalieri et al. 2013](../notes/cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md): low-energy m = 0/1 linear wavepackets carry the low-angle sound.
- [Cavalieri et al. 2019](../notes/cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md): wavepacket review; Mach waves, superdirectivity, jitter.
- [Gojon 2019](../notes/gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md): LES far field of heated rectangular jets; BBSAN and Mach-wave angles against semi-empirical formulas (synthesis pending).
- [Wong et al. 2021](../notes/wong-2021-wavepacket-modelling-bbsan.md): group's inside-out wavepacket × shock-cell BBSAN model; jitter fills the dips.
- [Mathews 2025](../notes/mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md): full-scale BSN sources at shock cells, failed spacing formulas, rocket Mach waves and nonlinear losses.

Discussed but not tagged with this topic:
- [Gee et al. 2008](../notes/gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md) (not tagged): full-scale nonlinear steepening of jet noise.
- [Gee et al. 2010](../notes/gee-2010-near-field-vector-intensity-solid-rocket-motor.md) (not tagged): near-field intensity hint of two sources in a rocket plume.
- [Gee et al. 2012](../notes/gee-2012-reusable-srm-noise-spectral-statistical.md) (not tagged): skewness and derivative-skewness maps of rocket noise.
- [Tsutsumi et al. 2015](../notes/tsutsumi-2015-epsilon-liftoff-acoustics.md) (not tagged): reflected free-jet Mach waves set fairing levels.
- [Reichman et al. 2018](../notes/reichman-2018-qm2-srm-far-field-acoustics.md) (not tagged): crackle-level derivative skewness at 2.5 km.
- [Schmidt et al. 2018](../notes/schmidt-2018-spectral-analysis-jet-turbulence.md) (not tagged): SPOD and resolvent both show Mach waves at M_j 1.5.
- [Mathews et al. 2021](../notes/mathews-2021-falcon-9-far-field-noise.md) (not tagged): Falcon 9 peak angle against Oertel M_c; κ ≈ 0.31.
- [Lubert et al. 2022](../notes/lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (not tagged): rocket review; no BBSAN or screech at full scale.
- [Nogueira et al. 2022](../notes/nogueira-2021-wavepacket-modulation-shock-containing-jets.md) (not tagged): shock modulation of wavepackets, left out of BBSAN models.
- [Edgington-Mitchell et al. 2025](../notes/edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (not tagged): lab upstream waves that are shocks at birth.
- [Mathews & Gee 2025](../notes/mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) (not tagged): modified large-scale spectrum; revised Falcon 9 angle.
- [Kellison et al. 2026](../notes/kellison-2026-falcon-9-noise-two-campaigns.md) (not tagged): Falcon 9 directivity, Sr ≈ 0.010, crackle-laden waveforms.
