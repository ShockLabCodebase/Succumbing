---
key: "ponton-1992-nozzle-exit-lip-thickness-plume-resonance"
title: "The effects of nozzle exit lip thickness on plume resonance"
authors: ["Ponton, M. K.", "Seiner, J. M."]
year: 1992
type: "article"
venue: "J. Sound Vib. 154(3), 531–549"
bib: {"journal": "Journal of Sound and Vibration", "volume": "154", "number": "3", "pages": "531--549"}
doi: "10.1016/0022-460X(92)90784-U"
arxiv: ""
pdf: "screech/Ponton-Seiner_1992_The-Effects-Of-Nozzle-Exit-Lip-Thickness-On-Plume-Resonance.pdf"
version: "published"
unverified: []
group: false
facility: "NASA Langley Anechoic Noise Facility"
data: ["microphones-near", "microphones-far", "pressure-probe"]
methods: ["PSD", "statistics"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "staging", "mode-switching", "helical", "BBSAN", "receptivity"]
params: {"M_j": "1.0–2.0", "D": "25.4 mm", "t/D": "0.015–0.625", "TR": "1 (unheated)"}
topics: ["screech", "screech-staging-and-mode-switching", "screech-frequency-and-global-modes"]
related: ["raman-1998-supersonic-jet-screech-review", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "nogueira-2021-absolute-instability-shock-containing-jets", "mancinelli-2021-complex-valued-resonance-model-screech", "edgington-mitchell-2022-unifying-theory-jet-screech", "weightman-2019-sound-production-impinging-supersonic-jets", "samimy-1998-rectangular-jet-trailing-edge-control"]
cites: ["norum-1983-screech-suppression-supersonic-jets", "tam-1986-bbsan-screech-relationship"]
summary: "Lip thickness t/D 0.015–0.625 on an underexpanded sonic jet: thick lips widen the helical C range, revive the B mode above M_j 1.7 and blur the B→C switch; lip-face tones up to 154 dB"
---
# The effects of nozzle exit lip thickness on plume resonance

- **Authors:** M. K. Ponton, J. M. Seiner (NASA Langley Research Center, Hampton, Virginia)
- **Source:** Journal of Sound and Vibration 154(3), 531–549 (1992). Received 30 January 1990, revised 12 March 1991. DOI 10.1016/0022-460X(92)90784-U (from the PII on the PDF).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/Ponton-Seiner_1992_The-Effects-Of-Nozzle-Exit-Lip-Thickness-On-Plume-Resonance.pdf` (19 pp.)
- **Page refs:** printed journal pages (531–549). PDF page = printed page − 530.
- **Scan quality:** a 2003 Elsevier scan with an OCR layer. The prose OCRs well. Figures, both momentum-thickness equations and all axis numbers were read from page renders; numbers taken from plots are marked as such.
- **Tags:** jet screech, nozzle lip thickness, receptivity, feedback loop, screech staging (A0, A1, A2, B, C, D modes), mode switching, toroidal vs helical modes, underexpanded sonic jet, near-field microphone, nozzle-lip surface pressure, broadband shock-associated noise (BBSAN), mixing noise, compressible momentum thickness, Pitot and static-pressure probes, initial shear layer, NASA Langley Anechoic Noise Facility

## Summary
A cold, underexpanded jet from a 1-inch (2.54 cm) conical convergent nozzle was run with five external lip thicknesses, t/D = 0.015, 0.100, 0.200, 0.400 and 0.625. The extra thickness came from precision collars slid over the same nozzle, so only the exit-face area changed (p. 532). For each lip the screech wavelength and amplitude of every mode were tracked from M_j ≈ 1.0 to 2.0 with one exit-plane microphone. The authors also measured pressure on the lip face itself (t/D 0.2 and 0.625), took spectra on a linear array at 20°, 81.5° and 135°, and made fine Pitot/static traverses of the initial shear layer (X/D ≤ 1) at M_j = 1.49 (p. 532–536). A thicker lip changes which modes exist over which Mach-number range: the helical C mode covers a wider range, and the helical B mode comes back as the dominant mode at high M_j (≈1.7–1.95) only with thick lips. Screech wavelength also shifts slightly (longer for A1 and B, shorter for C). Mixing noise and BBSAN change too, not just the tone. The compressible momentum thickness at M_j 1.49 is slightly larger with the thick lip (p. 536–548). The proposed mechanism is that the larger exit face reflects the upstream-travelling screech sound back into the shear layer, which strengthens receptivity (p. 548). There is no modelling or simulation in the paper.

## Key findings
- **Mode ranges depend on lip thickness** (Fig. 6–7, p. 536–538; conclusion 1, p. 547):
  - Modes are labelled as in Seiner (1984): A0, A1, A2 toroidal (axisymmetric); B, C helical. The old "D" mode is grouped with B, because the wavelength plots show it as a B mode re-emerging at high M_j (p. 537).
  - With thin lips the B mode can't be detected at high M_j. With t/D 0.4 and 0.625 it re-emerges and dominates above about M_j 1.7 (Fig. 6d–e, 7d–e; p. 537, 547).
  - Thicker lips give many more unidentified tones and a wider Mach-number range of screech (p. 537). Read from Fig. 7: screech stops near M_j 1.6–1.7 for t/D ≤ 0.2 but persists to about 1.95 for t/D 0.625. Raman (1998) quotes this as cessation at M_j 1.6 (t/D 0.2) vs persistence to 1.9 (t/D 0.625).
  - The C mode covers a wider M_j range, has a more uniform amplitude, and stays louder at high M_j as the lip thickens (p. 538).
  - The A2 mode dominates to higher M_j with thin lips. At M_j 1.15 the A2 amplitude falls as the lip thickens (p. 538).
- **B → C switch** (Fig. 7–9, p. 538–539):
  - The B-to-C switch is at M_j ≈ 1.44 for t/D 0.015 and ≈ 1.40 for t/D 0.625 (p. 538).
  - With the thin lip it is abrupt: B dominates at M_j 1.43, C at 1.44 (Fig. 8). With the thick lip both tones coexist over M_j 1.38–1.41, with C gradually overtaking B (Fig. 9). The authors call this transition "slightly slower" with the thick lip (p. 538).
- **Small frequency shifts** (Fig. 10, p. 538–539; conclusion 2, p. 547–548):
  - Going from t/D 0.015 to 0.625 lengthens the screech wavelength of A1 and B and shortens that of C. The error band is two analyser bandwidths (50 Hz).
  - The authors suggest a change in the most-amplified wave, the convection velocity or the shock structure (p. 538).
  - In the array spectra the B-mode tone near 5 kHz at M_j 1.34 (Fig. 14) and the C-mode tone at M_j 1.49 (Fig. 15) shift in opposite directions with lip thickness (p. 541).
- **Lip-face pressures exceed the near-field microphone** (Fig. 11–12, p. 538–540; conclusions 3–4):
  - The axisymmetric modes at low M_j rise rapidly in amplitude on the lip face compared with the microphone. The first-appearing B and C modes are also louder on the lip face (p. 538–539).
  - For the re-emerging B mode on the 0.625 lip, lip and microphone amplitudes are very similar (p. 539).
  - Helical-mode amplitudes are slightly higher on the thicker lip, and amplitude rises slightly closer to the jet (R/D 0.642 vs 0.889), except for the re-emerging B mode (p. 539).
  - Peak values at the transducers nearest the jet are about **154 dB** for helical modes and **148 dB** for axisymmetric modes (p. 540).
  - Lip-face levels are more uniform across modes and M_j than at any microphone position. The authors argue the lip face is a better metric of the upstream acoustic waves that excite the shear layer (p. 539–540).
- **Broadband noise changes too** (Fig. 13–16, p. 541; conclusion 5):
  - M_j 1.14 (A2): the A2 tone at about 8.5 kHz doesn't change with lip thickness. The thick lip adds narrowband peaks at about 3.5 and 5 kHz (θ = 20°) and 6 and 7.5 kHz (θ = 135°), and slightly raises low-frequency mixing noise at 81.5°. The mixing-noise peak is near 2 kHz at 20° and the BBSAN peak near 20 kHz at 81.5° (p. 541).
  - M_j 1.34 (B dominant): the thick lip clearly raises the high-frequency (BBSAN) content at 81.5°, where the second harmonic near 10 kHz dominates (p. 541).
  - M_j 1.49 (C dominant): the thick lip raises low-frequency noise around 3 kHz at 81.5°, by about 5 dB, and lowers BBSAN. This is the opposite of the B-mode case (p. 541).
  - M_j 1.69: the re-emerging B mode appears with the thickest collar at 135°, and BBSAN falls (p. 541).
- **Momentum thickness** (Fig. 20, p. 547; conclusion 6):
  - At M_j 1.49, θ is slightly larger for the 0.625 lip at all six stations X/D 0.02–1.0. The differences are small.
  - The authors read this as more mixing, which might shorten the shock spacing. That would fit the shorter C-mode wavelength (p. 547). This is a hypothesis, not a demonstrated link.
  - Read from Fig. 20: θ/D grows roughly linearly from ≈ 0.005 at X/D 0.02 to ≈ 0.025 at X/D 1.0.
  - Choosing the reference point matters. Taking it inside the potential core instead of at the velocity maximum would reduce θ by 5–25 %, depending on X/D but not on lip thickness (p. 544, 547).
- **Proposed mechanism** (p. 548): thick lips may change initial entrainment, and/or amplify initial shear-layer disturbances because upstream-propagating sound reflects off the larger exit face and stimulates the jet. Lip thickness changes the initial boundary conditions only through the external geometry.

## Setup / method
- **Facility** (p. 532): Langley Anechoic Noise Facility (LANF), 27.5 × 27 × 24 ft inside the wedge tips, cut-off 100 Hz. Continuous dry unheated air, NPR held within 0.3 % of set point.
- **Nozzle** (p. 532, Fig. 1):
  - A contoured transition takes a 7.875 in (20.00 cm) supply pipe down to a 1.500 in (3.81 cm) ID straight pipe, 26.01 in (66.07 cm) long with a 2.250 in OD. It is long so that flanges don't affect entrainment.
  - Conical convergent nozzle, 5° convergence, D = 1.000 in (2.54 cm), base lip 0.015 in.
  - Collars raise the lip to 0.100, 0.200, 0.400 and 0.625 in. Since D = 1 in, these equal t/D. They were designed with no extra outer protrusions. The thin lip stands for a "high-quality" research nozzle, the thick lip for a choked tube (p. 532).
- **Operating condition** (p. 536): the long assembly loses total pressure, so a Pitot probe in a supersonic probe wing calibrated exit total pressure against plenum pressure. M_j comes from the corrected NPR by the isentropic relation. M_j ≈ 1.0–2.0 (Fig. 6–7).
- **Diagnostics:**

  | Measurement | Details | Page |
  |---|---|---|
  | Near-field microphone | one 1/4 in mic in the exit plane, 2 in (2D) from the centreline; spectra in 25 Hz bands (Fig. 8–9) | 532, 538–539 |
  | Lip-face transducers | 0.095 in diameter, 0.400 in long; on the 0.200 lip at R/D 0.642, on the 0.625 lip at R/D 0.642 and 0.889 (Fig. 3) | 533–534 |
  | Linear array | three 1/4 in mics at radius 20.0 in, parallel to the axis, θ = 20°, 81.5°, 135° from the downstream axis (R/D 58.5, 20.2, 28.3); 50 Hz bands | 533–534, 542 |
  | Pitot probe | modified commercial boundary-layer probe, radial measuring height ≈ 0.002 in, stiffened with two supports; changed screech by < 1 dB | 534–535 |
  | Static probe | dual-cone short probe after Pinckney (1975), four 0.010 in holes near the tip, in a supersonic wing; it **did** modify screech | 534–535 |
  | Traverse | remote, 0.0000394 in (0.0001 cm) steps; X/D = 0.02, 0.2, 0.4, 0.6, 0.8, 1.0; beyond X/D 1 and at small R/D the Pitot probe deflected too much | 534–535 |

- **Tone identification** (p. 536–537): an algorithm scanned each spectrum for points sufficiently above a local average. Screech wavelength λ_s is normalised by D. The text doesn't say which sound speed converts f_s to λ_s; ambient is the usual choice.
- **Directivity assumption** (p. 533, Fig. 2): f_s radiates mainly at small angles to the axis, upstream and downstream; 2f_s radiates normal to the axis. The apparent source of both is about the third shock cell. The exit-plane microphone was therefore placed to catch the fundamental at every NPR.
- **Shear-layer reduction** (p. 535, 544):
  - Static and total pressure are combined into velocity and mass flux. Where only static pressure exists (inner points), the Pitot asymptote is used. At the outermost points the total pressure is taken as ambient.
  - Fig. 17 sketches the region measured: inner edge, sonic line and outer edge of the shear layer. The first shock reflection at the sonic line is expected near X/D 1.45 (Harper-Bourne & Fisher), so all stations lie in the first shock cell (p. 542).
  - Why probes and not a laser velocimeter: an LV couldn't resolve the thin layer and wouldn't give density (p. 535).
- **No modelling or simulation.** The introduction cites Michalke (1965) for using momentum thickness as the shear-layer scale, Ho & Huerre for St_θ = fθ/u_c ≈ 0.033 in subsonic jets, and Tam & Morris (1980) for frequency-selective amplification (p. 532). None is applied to the data.

## Key equations
- Compressible momentum thickness, general form (p. 544; White 1974):
  $$\Theta = \int_0^\infty \frac{\rho u}{(\rho u)_0}\left(1 - \frac{u}{u_0}\right)\mathrm{d}R$$
- Form actually used, referenced to the radius of maximum velocity (p. 544):
  $$\Theta = \int_{R@u_{max}}^\infty \frac{\rho u}{(\rho u)_{@u_{max}}}\left(1 - \frac{u}{u_{max}}\right)\mathrm{d}R$$
  - The reason: moving inward from the lip line, ρu drops 2–6 % while u rises to a maximum (supersonic expansion), and turbulence production depends on the velocity gradient. So (ρu) at u_max is not the maximum ρu. The integrand stays non-negative (p. 544).
- Subsonic shear-layer instability scaling quoted in the introduction (p. 532): St = fθ/u_c ≈ 0.033 (u_c is the centreline velocity).

> Both momentum-thickness equations were rebuilt from the page render (p. 544). The OCR dropped them.

## Data tables
**Lip configurations** (p. 532, Fig. 3):

| Lip t (in) | t/D | Outer diameter / D | Lip transducers (R/D) |
|---|---|---|---|
| 0.015 | 0.015 | 1.03 | – |
| 0.100 | 0.100 | 1.20 | – |
| 0.200 | 0.200 | 1.40 | 0.642 |
| 0.400 | 0.400 | 1.80 | – |
| 0.625 | 0.625 | 2.25 | 0.642, 0.889 |

> The outer diameter is my calculation, D + 2t. The 0.625 lip's outer diameter equals the 2.250 in pipe OD.

**Mode dominance at the Mach numbers chosen for the array study** (p. 541): M_j 1.14 → A2; 1.34 → B; 1.49 → C; 1.69 → re-emerging B (thick lip only).

**Consistency check (mine):** with a_∞ ≈ 343 m/s, the A2 tone at 8.5 kHz (M_j 1.14) gives λ_s/D ≈ 1.6, and the B tone near 5 kHz (M_j 1.34) gives λ_s/D ≈ 2.7. Both agree with Fig. 6 as read from the render.

## Figures worth remembering
- **Fig. 1 (p. 533):** collar positions on the nozzle. **Fig. 2 (p. 534):** sketch of f_s (upstream and downstream lobes) and 2f_s (normal) directivity relative to the exit-plane microphone. **Fig. 3 (p. 534):** lip-face transducer positions.
- **Fig. 6 (p. 536):** λ_s/D against M_j for each lip, by mode. Read from the render: A1/A2 at λ_s/D ≈ 1.5–2.1 near M_j 1.05–1.2; B ≈ 2.3–3.2 at M_j 1.2–1.5; C slightly shorter than B at the same M_j; the re-emerging B ≈ 3.5–4.6 at M_j 1.7–1.95 (panels d–e).
- **Fig. 7 (p. 537):** SPL (dB re 20 µPa) of each mode against M_j at the near-field microphone, for each lip. Peaks are about 150–155 dB. This is the key staging picture: A1/A2 drop out near M_j 1.2, B dominates to about 1.44, then C, then (thick lips) B again.
- **Fig. 8–9 (p. 538–539):** spectra across the B → C switch. Abrupt between M_j 1.43 and 1.44 for the thin lip; coexisting tones over M_j 1.38–1.41 for the thick lip.
- **Fig. 10 (p. 539):** λ_s/D for t/D 0.015 vs 0.625, showing the small frequency shifts.
- **Fig. 11–12 (p. 540):** mode amplitudes on the lip face. 154 dB helical, 148 dB axisymmetric; flatter than the microphone curves.
- **Fig. 13–16 (p. 542–543):** array spectra, thin vs thick lip, at M_j 1.14, 1.34, 1.49 and 1.69.
- **Fig. 17 (p. 544):** sketch of the initial shear layer and first shock cell.
- **Fig. 18 (p. 545):** velocity profiles at M_j 1.49 for X/D 0.02–1.0, both lips. Read from the render: core velocity about 1400–1500 ft/s, with the shear layer near R/D ≈ 0.5 spreading to about 0.7 by X/D 1.
- **Fig. 19 (p. 546):** ρu profiles. **Fig. 20 (p. 547):** Θ/D against X/D for both lips (values above).

## Notation
- D: nozzle exit diameter (1 in). t: lip thickness (quoted in inches, numerically equal to t/D). R: radius. X: axial distance from the exit (to the probe tip).
- M_j: fully expanded Mach number from the corrected NPR. f_s, λ_s: screech frequency and wavelength. θ: polar angle from the **downstream** jet axis.
- A0, A1, A2: toroidal (axisymmetric) screech modes. B, C: helical (the paper's labels; Seiner 1984). The old D mode is treated as a re-emerging B mode.
- Θ (θ in the text): compressible momentum thickness. ρu: mass flux. u_max: maximum velocity in the profile. SPL: sound pressure level, dB re 20 µPa.

## Relevance to this project
This project centres on resonance and feedback in Shock Lab group jets, including screech staging (CLAUDE.md). This paper is the standard citation for "lip thickness matters for screech".

- **Lip thickness as a rig parameter:**
  - Many group and comparison nozzles have thick lips: 5 mm on D = 15 mm (t/D ≈ 0.33) in [Edgington-Mitchell et al. 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); 0.15D vs 0.5D compared in [Edgington-Mitchell et al. 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md); 0.5D in [Henderson et al. 2002](henderson-2002-flow-structure-supersonic-impinging-jets.md); 0.3–0.6 D_e in [Edgington-Mitchell et al. 2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md). Pprime's nozzle in [Mancinelli et al. 2021](mancinelli-2021-complex-valued-resonance-model-screech.md) has a 0.3 mm lip (t/D 0.03).
  - This paper shows such differences shift staging boundaries by a few hundredths in M_j and can add or remove whole modes at high M_j. Record t/D whenever comparing staging points between rigs, or between experiment and the PyFR staging LES (`Simulations/PyFR_Staging_Continuation/`), whose nozzle lip should match the rig it is compared with.
- **Agreement and disagreement with other notes:**
  - Agrees with [Raman 1998](raman-1998-supersonic-jet-screech-review.md), which summarises this paper (cessation at M_j 1.6 vs 1.9) and adds Raman's rectangular-jet result that thick lips strengthen or reactivate screech. Agrees with [Samimy et al. 1998](samimy-1998-rectangular-jet-trailing-edge-control.md), where a thick lip gives a weak tone at M_j 2.2.
  - [Nogueira et al. 2021 (absolute instability)](nogueira-2021-absolute-instability-shock-containing-jets.md) cites this paper as showing lip thickness changes amplitude but not frequency. That is only approximately true: Fig. 10 shows small but systematic λ_s shifts (opposite in sign for B and C), and the M_j ranges of the modes change.
  - [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md) finds that lip geometry selects helical vs toroidal modes in impinging jets through the acoustic path. This paper gives the free-jet analogue: lip thickness widens the helical C range and brings back the helical B mode.
  - Same NASA Langley group, facility and Pinckney static probe as [Norum & Seiner 1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md). Ponton & Seiner (1995) on B-mode precession is cited in [Nogueira et al. 2026](nogueira-2026-flapping-motion-screeching-round-jets.md) and is not yet indexed.
- **Modelling side:**
  - The paper has no model, but its mechanism is the receptivity leg of the loop. In the guided-jet-mode resonance models ([Mancinelli et al. 2019](mancinelli-2019-screech-prediction-upstream-modes.md), [2021](mancinelli-2021-complex-valued-resonance-model-screech.md)), lip thickness would enter through the nozzle reflection coefficient and the loop phase. The 2021 model's fitted |R₁R₂| is where a lip effect would appear.
  - Global resolvent work that includes the nozzle ([Lesshafft et al. 2019](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md), [Garnaud et al. 2013](garnaud-2013-preferred-mode-incompressible-jets.md)) shows the inner nozzle boundary layer near the lip is the most receptive region. Adding a thick outer lip as a reflecting or scattering surface is the obvious extension, and an LES with matched lips could test it.
  - The momentum-thickness hypothesis (thicker shear layer → shorter shock cells → shorter λ_s) bears on the k_s used in [Nogueira et al. 2021 (A1/A2 closure)](nogueira-2021-closure-mechanism-a1-a2-screech.md) and [Edgington-Mitchell et al. 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md). The measured θ differences are small and not separated from probe effects, so treat it as weak evidence.
- **Mode switching and intermittency:**
  - The B → C switch is abrupt with the thin lip and shows coexisting tones over ΔM_j ≈ 0.03 with the thick lip. Lip thickness may therefore change how intermittent the switching is.
  - This paper has only averaged spectra (25/50 Hz bands; averaging time not stated), so it can't tell coexistence from alternation. That needs time-resolved data: wavelets, or the SPOD → reconstruction → Hilbert POD pipeline (CLAUDE.md; [Raiola & Kriegseis 2025](raiola-2025-hilbert-pod.md)), as done for A1/A2 in [Mazharmanesh et al. 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md).
- **Data dependence of the methods:**
  - Everything here is time-averaged statistics (step 1 of the workflow): PSDs from time-resolved microphones and transducers, plus mean Pitot/static profiles. Mean profiles don't need time resolution. They are the kind of base flow that linear stability or resolvent models use, at a resolution (0.05 mm) that PIV in a shock-containing jet can't reach near the lip ([Ragni et al. 2011](ragni-2011-particle-tracer-response-shocks-piv.md)).
  - The lip-face transducer idea is directly reusable: a flush sensor on the nozzle face measures the upstream wave at the receptivity point. It also gives a clean time-resolved reference signal for conditioning or phase-locking schlieren or PIV.
- **Rocket noise:** small and unheated, so only indirect. Lip and base geometry around a nozzle cluster could matter for any lab-scale launch-pad tones, but [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) report that screech is not seen at full scale.
