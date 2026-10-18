# Flow and noise control in high speed and high Reynolds number jets using plasma actuators

- **Authors:** M. Samimy, J. Kastner, J.-H. Kim, Y. Utkin, I. Adamovich (Gas Dynamics and Turbulence Laboratory (GDTL), The Ohio State University); C. A. Brown (NASA Glenn Research Center)
- **Source:** NASA/TM-2006-214367, December 2006; also AIAA Paper 2006-2846, 3rd AIAA Flow Control Conference, San Francisco, 5–8 June 2006 (cover and title pages). It is a preliminary conference paper, reviewed only by NASA "technical management" (title-page verso).
- **Related journal paper (not held):** Samimy, Kim, Kastner, Adamovich & Utkin 2007, *Active control of high-speed and high-Reynolds-number jets using plasma actuators*, J. Fluid Mech. 578 (entry #33 in `References/download_candidates.md`). This TM is its precursor. The JFM paper presents the fuller GDTL study with the same localized arc filament plasma actuators; *my reading from the citations here (refs Samimy et al. 2006a, b) is that it builds on the Mach 0.9 and Mach 1.3 GDTL work, not on the NASA scale-up tests, but check that once the JFM paper is held.*
- **PDF:** `References/Paper_PDFs/Samimy-EtAl_2006_Flow-And-Noise-Control-In-High-Speed-And-High-Reynolds-Number-Jets-Using-Plasma.pdf` (29 pp.: NASA cover, STI page, title page, acknowledgements, 22 numbered pages, SF-298 report page, blank pages)
- **Page refs:** printed TM page numbers. PDF page = printed page + 4 (printed p. 1 is PDF p. 5).
- **Tags:** active flow control, localized arc filament plasma actuators (LAFPA), jet noise, subsonic jet, high Reynolds number, jet column (preferred-mode) instability, initial shear-layer instability, azimuthal mode forcing (m = 0, ±1, 1–3, ±2, ±4, 4, 8), actuator scaling, NASA Nozzle Acoustic Test Rig (NATR), GDTL, near-field pressure, far-field acoustics, PIV, potential-core length, TKE

## Summary
LAFPAs had until then been used only on GDTL's 2.54 cm (1 in.) jets at Re_D ≈ 10⁶. This paper is a first test of whether the technique scales to a 19.05 cm (7.5 in.) jet in NASA Glenn's Nozzle Acoustic Test Rig (abstract, p. 1, 4). The in-house plasma generator drives 8 actuators at 0–200 kHz, with the phase and duty cycle of each set independently. At GDTL this allowed azimuthal modes m = 0, 1, 2, 3, ±1, ±2 and ±4; at NASA, 32 actuators were fitted (60 would be needed for linear scaling) but only 8 could fire at once, giving only m = ±1, 4 and 8 (p. 4, 9). At GDTL, forcing m = ±1 near the jet-column preferred Strouhal number (St_DF ≈ 0.3) roughly halves the potential core, raises centreline TKE about tenfold and amplifies far-field noise, while forcing at high St_DF or high m lowers OASPL by about 0.6–1 dB (p. 15, 19). At NASA the trends were similar at Ma = 0.5, but at Ma = 0.84 the response was weaker and the high-St_DF noise reduction disappeared. The authors attribute this to too few actuators (p. 18, 21). The paper is experimental, with only scaling arguments on the modelling side; no stability analysis or simulation.

## Key findings
- **Actuator energy budget** (GDTL, single actuator at 20 kHz and 20% duty cycle in an ideally expanded M = 1.3 jet; M = 0.9 is similar) (p. 10–11, Fig. 4):
  - Breakdown overshoot of about 4 kV, then the arc holds at about 400 V; after the switch closes, the plasma is blown off and the floating anode sits at about 600–700 V.
  - Current is nearly a step, about 250 mA during the pulse.
  - Peak power about 100 W; time-averaged power about 20 W per actuator, or 160 W for all eight. The jet's total enthalpy flux at that condition is about 28 kW (p. 11). So the actuators use roughly 0.6% of the flow power (*my ratio*).
  - Emission spectroscopy (N₂ second positive system, fitted to synthetic spectra) shows the gas temperature reaching about 1700 °C within several microseconds of breakdown. The authors suggest this rapid heating is why the actuator has so much authority (p. 11).
  - All eight actuators give essentially the same traces. At NASA the duty cycle was kept to about 1–3% because the forcing frequencies were much lower (p. 11).
- **Near-field growth and decay of the forced perturbation at GDTL, Ma = 0.84, m = ±1** (Kulite on the lip line, x/D = 0.5–7.5; Fig. 5–6, p. 11–13):
  - On the flapping plane the peak level is about the same for all St_DF (p. 11).
  - At St_DF = 0.36 (preferred mode), the perturbation saturates at x/D ≈ 2.5 and stays high downstream (p. 11). Values read from Fig. 5: about 120 dB at saturation, against a baseline of about 89 dB at the same frequency and position, so about 30 dB above baseline.
  - Higher St_DF saturates closer to the nozzle and then decays fast: St_DF = 0.91 peaks at x/D ≈ 1 (about 124 dB, read from Fig. 5), and St_DF = 1.81 has probably peaked upstream of x/D = 0.5 (p. 11).
  - On the non-flapping plane (the node of the m = ±1 mode) the peak is 10–25 dB lower but follows the same trends (p. 13, Fig. 6).
- **NASA near-field response** (16-transducer ring on the lip line, x/D = 0.4–6.0; Fig. 7–8, p. 13):
  - Ma = 0.5, St_DF = 0.3: clear amplification over baseline in both planes; saturation between x/D = 2 and 3 on the flapping plane, followed by slow decay (p. 13).
  - Ma = 0.5, St_DF = 1.8: response only near the nozzle (x/D < 2) on the flapping plane, none elsewhere. The NASA jet is "fairly insensitive" to this frequency (p. 13).
  - Ma = 0.84, St_DF = 0.3: saturation around x/D = 5, only **3 dB** above baseline on the flapping plane; a smaller increase and a broad peak (x/D ≈ 3–5) on the non-flapping plane. No response at St_DF = 1.8 (p. 13).
  - Compared with GDTL, the forced-minus-baseline difference is smaller and saturation is further downstream (p. 13).
- **Mean flow and TKE from PIV at GDTL, m = ±1, St_DF ≈ 0.3** (Fig. 9–10, p. 14–15):
  - Actual St_DF: 0.31, 0.33 and 0.27 for Ma = 0.5, 0.7 and 0.84 (p. 14).
  - Potential-core length L_p/D falls from 5.0, 6.1 and 6.5 (baseline) to about 3.0, 3.3 and 3.5 (forced) (p. 15).
  - Downstream of the core, the centreline decay rate is much higher when forced and about the same for all three Ma. The text says the forced centreline Mach number at x/D = 9 is "about 40 percent" of baseline (p. 15); see the check below.
  - Centreline TKE rises "by several folds" over much of the jet (p. 15). The baseline Ma = 0.5 jet has much higher TKE than Ma = 0.7 and 0.84, possibly because its exit boundary layer is laminar (p. 15).
- **Effect of forcing frequency at Ma = 0.84, m = ±1** (St_DF = 0.09–1.8 shown; text says 0.1–3.0 was tested) (Fig. 11–12, p. 15):
  - The core shortens and the centreline decays fastest as St_DF approaches 0.27 from either side. This matches the trend in an ideally expanded Mach 1.3 jet (Samimy et al. 2006a) (p. 15).
  - At St_DF = 0.27 the centreline TKE is about an order of magnitude above baseline and above forcing at much higher or lower St_DF (p. 15).
  - Read from Fig. 11: at x/D ≈ 9.4 the centreline Mach number is about 0.75 (baseline and St_DF = 1.8), 0.68 (0.91), 0.62 (0.09), 0.58 (0.54) and 0.44 (0.27).
  - The authors expect the large, phase-coherent structures seen with flow visualisation in the forced Mach 1.3 jet to exist in these subsonic jets too, and to cause the extra entrainment (p. 15–17). They are not visualised here.
- **Far-field noise, Ma = 0.5, m = ±1** (GDTL Fig. 13, NASA Fig. 14, p. 17–18):
  - GDTL: the jet is "overwhelmed" by the forcing. The actuation tone and its harmonics appear, and broadband noise rises at 90° and 30° in most cases, most strongly when forcing near the preferred mode. Only St_DF = 1.7 and 5.0 reduce broadband noise slightly over part of the spectrum (p. 17).
  - NASA: the jet is not overwhelmed, and forcing tones are hardly visible until high forcing frequencies. The shared trends are amplification at low St_DF, maximum amplification at St_D ≈ 0.3, and slight reduction at much higher St_DF (p. 17).
  - Non-flapping-plane microphones show similar trends (p. 17).
- **Far-field noise, Ma = 0.84, m = ±1** (Fig. 15–16, p. 18): GDTL looks like Ma = 0.5. At NASA, low-St_DF forcing still raises noise but the high-St_DF reduction is gone, which the authors attribute to lack of actuator authority (p. 18).
- **ΔOASPL summary for GDTL, Ma = 0.84** (Fig. 17, reproduced from Samimy et al. 2006b; ΔOASPL integrated over St_D = 0.01–5.0, St_DF = 0.1–5, all modes) (p. 18–19):
  - Significant increase when forcing near the jet-column preferred frequency, St_DF = 0.2–0.5, in line with acoustic-driver studies (Jubelin 1980; Ahuja et al. 1982; Lu 1983) (p. 19). Read from Fig. 17: peaks of about +4 to +5 dB at 90° and up to about +4 dB at 30°.
  - Reduction of 0.6 to over 1.0 dB over a wide band of St_DF, peaking at St_DF ≈ 1.5–2.0 at 30° and ≈ 3.0–3.5 at 90° (p. 19).
  - m = 3 and ±4, the highest modes available with 8 actuators, have a "clear advantage" (p. 19).
- **Higher azimuthal modes at NASA, Ma = 0.5** (Fig. 18–19, p. 20): for m = 4 at 30°, noise falls at every forcing frequency; at 90° the broadband level is about baseline. m = 8 gives a similar broadband reduction at 30°. At higher Ma, m = 4 and 8 forcing (not shown) again lacked authority (p. 20).
- **Interpretation** (p. 2, 20): higher azimuthal modes are less efficient radiators (Michalke & Fuchs 1975), so pushing energy into them is a plausible route to noise reduction. The results at both facilities are said to support this.
- **Conclusion** (p. 21): frequency and azimuthal-mode trends carry over from the small to the large jet, most clearly at Ma = 0.5, but authority falls short at higher Ma in the large jet. LAFPA design itself needn't change with scale, but the number of actuators is expected to grow linearly with D. Actuation-tone amplitudes appear similar in both jets.

## Setup / method

### Facilities (p. 5–7)
| | GDTL (OSU) | NASA Glenn NATR (Aeroacoustic Propulsion Laboratory) |
|---|---|---|
| Supply | Compressed dried air, two tanks, up to 16 MPa, 36 m³; continuous running from low subsonic to Mach 2.5 | Dual-flow engine simulator, up to 65 kg/s; 1.35 m free jet capable of M = 0.35 flight stream |
| Nozzle | Axisymmetric converging, D = 2.54 cm, boron-nitride extension housing the actuators | Internally mixed exhaust nozzle with confluent axisymmetric splitter, both streams at the same pressure ratio, unheated, no flight stream (a single-stream static jet). Final section replaced by boron nitride with the same internal lines but a much thicker lip, D = 19.05 cm |
| Discharge | Horizontally into an anechoic chamber | NATR (anechoic dome implied, not described) |
| Exit boundary layer | Not measurable. From Kastner et al. (2004) on a similar nozzle at M = 0.9: turbulent, δ ≈ 1 mm, θ₀ ≈ 0.1 mm. Probably laminar at Ma = 0.5 (p. 6) | Not measured; assumed fully turbulent because of the small contraction (p. 7) |
| Actuators | 8, uniformly spaced | 32, uniformly spaced (60 for linear scaling); only 8 fire at once, each transistor switching 4 actuators (p. 9–10) |
| Forcing modes | m = 0, 1, 2, 3, ±1, ±2, ±4 | m = ±1, 4, 8 |

### Jet conditions (Table I, p. 6)
| Facility | D (cm) | Ma = U_j/c₀ | M = U_j/c_j | Re_D | U_j (m/s) | f_F (kHz) at St_DF = 0.3 | f_F (kHz) at St_DF = 1.8 |
|---|---|---|---|---|---|---|---|
| GDTL | 2.54 | 0.5 | 0.51 | 3.8×10⁵ | 166 | 2.0 | 11.8 |
| GDTL | 2.54 | 0.7 | 0.74 | 5.7×10⁵ | 235 | 2.8 | 16.6 |
| GDTL | 2.54 | 0.84 | 0.9 | 7.2×10⁵ | 285 | 3.4 | 20.2 |
| NASA | 19.05 | 0.5 | 0.51 | 2.9×10⁶ | 166 | 0.3 | 1.6 |
| NASA | 19.05 | 0.7 | 0.74 | 4.3×10⁶ | 235 | 0.4 | 2.2 |
| NASA | 19.05 | 0.84 | 0.9 | 5.5×10⁶ | 285 | 0.4 | 2.7 |
| NASA | 19.05 | 0.9 | 0.99 | 6.4×10⁶ | 301 | 0.5 | 2.8 |

Check: f_F = St_DF U_j / D gives 0.3 × 166 / 0.0254 = 1.96 kHz and 1.8 × 166 / 0.0254 = 11.8 kHz for GDTL Ma = 0.5, and 0.26 kHz and 1.57 kHz for NASA Ma = 0.5, matching the table. The text rounds the NASA value to 300 Hz (p. 6). The Re_D ratio NASA/GDTL is 7.6, consistent with D scaling by 7.5.

### Plasma actuators and generator (p. 8–10, Fig. 3)
- Each actuator is a pair of 1 mm pin electrodes (steel or, more erosion-resistant, tungsten), 3 mm apart centre-to-centre, about 1 mm upstream of the exit plane, sitting in a ring groove 0.5 mm deep and 1 mm wide. The groove shields and stabilises the arc; without it the plasma was swept downstream (p. 8).
- Generator: each actuator in series with a liquid-cooled Behlke high-voltage MOSFET switch, two ≈15 kΩ ceramic ballast resistors, and a 10 kV, 1 A Glassman DC supply (two supplies for eight actuators; 0.25 A per actuator when all run). Switch control by an 8-channel PCI DAC and LabView. Pulses up to 10 kV, 0–200 kHz, rise/fall ≈ 0.1 µs, duty cycle 0–100%. Optical isolation on the low-voltage side against EMI (p. 9). Several minutes of continuous operation of all eight actuators at M = 0.9 (p. 9).
- **Drive waveform and mode emulation** (p. 9):
  - The input is a rectangular wave with variable duty cycle, not a sine. The forcing amplitude can't be varied directly; the duty cycle changes energy per cycle, but the "effective forcing amplitude" isn't directly tied to it.
  - Pure modes (m = 0, 1, 2, …, up to the number of actuators) are straightforward because there is no amplitude variation.
  - Mixed modes (m = ±1, ±2, …) need amplitude modulation, which plasma actuators can't do. They are mimicked by grouping actuators. For m = ±1 the top three (1, 2, 8) and bottom three (4–6) fire 180° out of phase and actuators 3 and 7 are off, creating nodes there. The plane through the active groups is the "flapping plane"; through 3 and 7, the "non-flapping plane".
  - Two acknowledged side effects: the square wave contains harmonics, and each actuator may create a weak pair of streamwise vortices. Neither is quantified here (p. 9).

### Diagnostics (p. 7–8)
| Diagnostic | GDTL | NASA | Time-resolved? | Processing |
|---|---|---|---|---|
| Near-field pressure | One Kulite, axis normal to the jet so it reads static pressure; on the lip line at the azimuth of actuator 7 (a node of m = ±1 forcing on the non-flapping plane); traversed by hand x/D = 0.5–7.5. Grazes the shear layer at x/D = 0.5, well inside it further downstream | Ring of 16 Endevco transducers (8 × 50 psia, 8 × 50 psig, alternating), 22.5° apart, on the lip line; traversed x/D = 0.4–6.0; measures **total** pressure | Yes | GDTL: amplified, band-pass filtered, average of 100 short-time spectra; level at f_F (baseline read at the same frequencies), re 2×10⁻⁵ Pa. NASA: 16-bit DataMax at 200 kHz (190 kHz anti-alias), 10 s records, 8192-point blocks with 50% overlap, about 485 averages |
| Far field | Two ¼-in. B&K mics at 83D (30°) and 45D (90°), scaled to 80D; 200 kHz sampling | Overhead arc of 24 ¼-in. B&K mics at 72D, 20°–135°; 190 kHz, 16-bit DataMax | Yes | GDTL: 100 short-time spectra, 8192 points, Δf = 24.4 Hz. NASA: actuator EMI on timing lines left only the first **10 ms** of most records usable, limiting frequency resolution; uncertainty ±0.7 dB |
| PIV | Planar 2C in the x–y plane through the axis; LaVision system, 2000 × 2000 px Redlake CCD, 75–300 mm zoom, 532 nm filter; dual-head Spectra-Physics PIV-400 Nd:YAG; DEHS seeding upstream of the stagnation chamber plus fog in a 15 in. co-annular low-speed co-flow; field about 9D; Δt = 2.0 µs; multi-pass 64 → 32 px windows with 50% overlap; 115 × 65 vectors, about 2 mm spacing | none | **No** (≈5 Hz) | Mean centreline Mach number and centreline TKE only. Number of image pairs and TKE normalisation are not stated |

Checks: 10 s × 200 kHz / (8192 × 0.5) ≈ 488 blocks, consistent with "about 485" (p. 8). 200 kHz / 8192 = 24.4 Hz (p. 8).

### Scaling arguments (the paper's "model" side) (p. 3–4)
- **Two instabilities to target** (p. 3):
  - Initial shear-layer instability: scales with the exit momentum thickness θ₀, most amplified at St_θ = f₀θ₀/U_j ≈ 0.013. With θ₀ ∝ D Re^{-1/2}, this is about 40 kHz for a 1 in. jet at Mach 0.5.
  - Jet-column instability: scales with D, dominant peak near St_D ≈ 0.3 around and beyond the end of the potential core; several azimuthal modes, successively less amplified with higher m. In small, low-speed rigs the shear-layer mode can directly reinforce the jet-column mode, which the authors say is less likely in large jets and partly explains why actuators have struggled at high Re (p. 3).
- **Energy scaling** (p. 3): shear-layer excitation acts on the nozzle perimeter (∝ s) and the boundary-layer thickness (∝ s^{1/2}), so required energy grows as s^{1.5} for scale factor s. Keeping actuator density on the lip constant covers most of that. Jet-column excitation may need energy ∝ jet area, which is much harder at large scale.
- **Actuator self-noise** (p. 3): if actuators scale with perimeter, their self-noise grows linearly with D while jet noise (and noise removed) grows with area, so self-noise matters less at full scale.
- **Frequency flexibility** (p. 7): at fixed St_DF the forcing frequency drops by the scale factor (e.g. 2.0 kHz → 0.3 kHz), so the same hardware must cover a very wide range.
- No stability analysis, resolvent, ROM or simulation appears. The instability values above are quoted from the literature (Crow & Champagne 1971; Zaman & Hussain 1981; Ho & Huerre 1984).

## Key equations
The paper has no numbered equations. Definitions used (nomenclature, p. 4):
$$St_D = \frac{fD}{U_j},\qquad St_{DF} = \frac{f_F D}{U_j},\qquad St_\theta = \frac{f_0\,\theta_0}{U_j}\approx 0.013,\qquad Ma = \frac{U_j}{c_0},\qquad M = \frac{U_j}{c_j},\qquad Re_D = \frac{U_j D}{\nu}$$
Energy-scaling argument (p. 3), written out (*my notation*): $E_{\text{act}} \propto (\text{perimeter}) \times \delta \propto s \cdot s^{1/2} = s^{3/2}$.

## Data tables
**Potential-core length, GDTL, m = ±1 at St_DF ≈ 0.3** (p. 15)

| Ma | L_p/D baseline | L_p/D forced |
|---|---|---|
| 0.5 | 5.0 | ≈ 3.0 |
| 0.7 | 6.1 | ≈ 3.3 |
| 0.84 | 6.5 | ≈ 3.5 |

**Actuator power** (p. 11): peak ≈ 100 W, mean ≈ 20 W per actuator at 20% duty; 160 W for eight; jet enthalpy flux ≈ 28 kW (M = 1.3 jet).

## Figures worth remembering
- **Fig. 2 (p. 6):** photo of the 32-actuator ring on the NATR nozzle.
- **Fig. 3 (p. 7):** plasma generator schematic and the 8-actuator numbering used for mode grouping.
- **Fig. 4 (p. 10):** switch input, voltage, current and power traces over one cycle at 20 kHz, 20% duty.
- **Fig. 5–6 (p. 12):** GDTL Ma = 0.84 near-field growth and decay at St_DF = 0.36, 0.91, 1.81 vs baseline, flapping and non-flapping planes. The cleanest picture of how forcing frequency moves the saturation point.
- **Fig. 7–8 (p. 13–14):** NASA equivalents at Ma = 0.5 and 0.84 (relative dB scale, 5 dB bar).
- **Fig. 9–10 (p. 14–15):** centreline Mach number and TKE, baseline vs forced, Ma = 0.5/0.7/0.84.
- **Fig. 11–12 (p. 16):** centreline Mach number and TKE at Ma = 0.84 for St_DF = 0.09–1.8. St_DF = 0.27 is the clear outlier.
- **Fig. 13–16 (p. 17–19):** far-field spectra at 90° and 30°, GDTL vs NASA, Ma = 0.5 and 0.84. GDTL spectra are dominated by actuation tones and harmonics; NASA spectra much less so.
- **Fig. 17 (p. 19):** ΔOASPL vs St_DF for m = 0, 1, ±1 (both planes), 2, 3, ±4 at 90° and 30°. The standard summary figure of LAFPA noise control in this jet.
- **Fig. 18–19 (p. 20):** NASA Ma = 0.5 spectra for m = 4 and m = 8 forcing.

> **Check against the PDF before quoting.** These are inconsistencies in the paper itself or figure readings of mine:
> - **Fig. 16 caption** (p. 19) says "at GDTL", but the text (p. 18) says Fig. 16 is the NASA Ma = 0.84 case, and its axes and smooth spectra match the NASA plots (Fig. 14). It is almost certainly NASA.
> - **Fig. 8 caption** (p. 14) says Ma = 0.9; the text (p. 13) says Ma = 0.84. The caption probably gives the gas-dynamic M = 0.9 (Table I).
> - **"x/D = 40"** for the NASA Ma = 0.5 non-flapping saturation (p. 13) is a typo; Fig. 7b peaks near x/D ≈ 4.
> - **"about 40 percent of the corresponding baseline at x/D = 9"** (p. 15): reading Fig. 9 at x/D ≈ 9.4 gives forced/baseline ≈ 0.21/0.36 and 0.44/0.75, i.e. about 60% of baseline (a ≈ 40% reduction). The text probably means a 40% reduction.
> - **Fig. 12** y-axis is labelled "Mach number", but the caption and text say centreline TKE. Fig. 10 says "Normalized TKE" without stating the normalisation.
> - **Legend labels:** in Fig. 9–10 "m = 0.5/0.7/0.9" means the forced jet at that Mach number, not an azimuthal mode; in Fig. 5–6 and 11–12 "St_D" means the forcing St_DF.
> - The power trace is said to be in "the bottom graph of figure 3" (p. 11); it is Fig. 4.
> - Pulse timing on p. 11 (the switch opens "50 µs later" after a 10 µs pulse at 20 kHz) doesn't add up exactly with a 50 µs period; µ symbols are lost in the text layer, so check the units.
> - All dB values read from Fig. 5–6, 11 and 17 are my readings, not values stated in the text.

## Notation
- LAFPA: localized arc filament plasma actuator. GDTL: Gas Dynamics and Turbulence Laboratory (OSU). NATR: NASA Glenn Nozzle Acoustic Test Rig.
- Ma: acoustic Mach number U_j/c₀. M: gas-dynamic (jet) Mach number U_j/c_j. U_j: exit (potential-core centreline) velocity.
- St_D: Strouhal number of the spectrum; St_DF: forcing Strouhal number; St_θ: momentum-thickness Strouhal number. f₀: most amplified shear-layer frequency; f_p: preferred-mode frequency; f_F: forcing frequency.
- m: azimuthal mode. "m = ±1" etc. denote standing (mixed) modes emulated by grouping actuators; "m = 1" etc. are travelling (helical) modes.
- FP / NFP: flapping / non-flapping plane of the m = ±1 forcing. BL: baseline (unforced) at the same frequency.
- θ: observer polar angle from the downstream axis. θ₀: exit momentum thickness. L_p: potential-core length.

## Relevance to this project
The project focuses on resonance and feedback in Shock Lab group experiments, with rocket noise as a second strand (CLAUDE.md). This is not Shock Lab group work: the experiments are at GDTL (OSU) and NASA Glenn NATR. Its value is as the origin of LAFPA forcing, which the group's collaborators and later twin-jet screech studies use.

- **Forcing as a diagnostic for resonance studies:**
  - The actuator gives a known frequency and azimuthal mode with independent phase per actuator, at up to 200 kHz (p. 4, 9). That is the same capability [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md) later uses to set shear-layer and jet-to-jet phase in screeching twin rectangular jets.
  - The near-field growth curves (Fig. 5–8) show how strongly receptivity and saturation location depend on St_DF. The same response test could check whether an impinging or screeching jet's loop can be entrained by an external input.
  - Caveat for spectral analysis: the square-wave drive puts tones at f_F and its harmonics into the far field (GDTL, Fig. 13, 15), and Esfahani et al. later call this "self-noise". In SPOD or BMD of forced data these appear as sharp peaks unrelated to the flow's response; bicoherence or BMD would show the harmonics as phase-locked to f_F.
- **Data and method dependence:**
  - The near-field and far-field spectra are time-resolved (Welch-type averaging of 100 or about 485 blocks of 8192 points). Nothing here resolves how the response changes in time: there are no spectrograms, wavelets or phase-conditioned statistics.
  - The PIV is non-time-resolved (≈5 Hz) and is used only for mean and TKE statistics. Forcing makes structures periodic and phase-locked to the actuator, so phase-locked PIV or POD-pair analysis would work well on such data. The paper doesn't do this; the authors point to flow visualisation in the Mach 1.3 jet (Samimy et al. 2006a) for the structures themselves (p. 15).
  - The NASA far-field records were cut to 10 ms by EMI (p. 8). Plasma EMI on acquisition lines is a practical risk for any rig adding LAFPAs.
- **Modelling and simulation side:**
  - The paper's model content is the instability scaling (St_θ ≈ 0.013 for the shear layer, St_D ≈ 0.3 for the jet column) and the s^{1.5} energy and perimeter-vs-area self-noise arguments (p. 3). These are untested here beyond the observed loss of authority at NATR.
  - The response peak at St_DF ≈ 0.27–0.36 for m = ±1 is consistent with the jet-column (KH wavepacket) preferred mode. Mean-flow linear stability or resolvent analysis would give the gain against St and m directly; see [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) for the KH regime in turbulent jets. A natural modelling question the paper leaves open is whether resolvent gain predicts the measured receptivity ranking of St_DF and m.
  - For a simulation of LAFPAs, [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md) models them as a purely thermal volumetric heat source. The fast heating to about 1700 °C measured here (p. 11) is the physical basis for that choice.
- **Noise reduction by higher azimuthal modes:** m = 3, ±4 at GDTL and m = 4, 8 at NASA give the best reductions, about 1 dB (p. 19–20). The argument that high-m motions radiate inefficiently (Michalke & Fuchs 1975; p. 2, 20) matches later wavepacket views that low-m KH wavepackets dominate jet noise.
- **Rocket-noise link (weak):** the scale-up difficulty, with energy ∝ s^{1.5} and authority lost at larger D and higher Ma, suggests why active forcing of instability waves is not among the launch-pad mitigation methods in [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md). *(My inference; the paper doesn't discuss rockets.)*
- **Related notes:**
  - [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md) and [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md): later GDTL LAFPA work on screech coupling.
  - [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md): LAFPA heat-source model in LES.
  - [samimy-1998-rectangular-jet-trailing-edge-control.md](samimy-1998-rectangular-jet-trailing-edge-control.md) and [kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md): earlier GDTL passive control, the background to the move to active control.
- **Follow-up candidates for `/add-paper`:**
  - Samimy et al. 2007, JFM 578 (the journal paper this TM precedes; #33 in `download_candidates.md`).
  - Samimy et al. 2006a (AIAA 2006-0711) and 2006b (AIAA 2006-2703), the source of Fig. 17.
  - Samimy et al. 2004, Exp. Fluids 37 (LAFPA development).
  - Crow & Champagne 1971 (preferred mode), and Kastner, Kim & Samimy 2006 (AIAA 2006-2650, noise sources in controlled jets).
