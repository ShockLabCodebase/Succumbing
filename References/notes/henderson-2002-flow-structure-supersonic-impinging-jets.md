---
key: "henderson-2002-flow-structure-supersonic-impinging-jets"
title: "An experimental investigation of the flow structure of supersonic impinging jets"
authors: ["Henderson, Brenda", "Bridges, James", "Wernet, Mark"]
year: 2002
type: "conference"
venue: "AIAA conference preprint 2002 (NTRS 20020088423)"
bib: {"note": "AIAA 2002 conference preprint, paper number not printed; NTRS 20020088423; precursor of JFM 542 (2005)"}
doi: ""
arxiv: ""
pdf: "Henderson-EtAl_2002_An-Experimental-Investigation-Of-The-Flow-Structure-Of-Supersonic-Impinging-Jets.pdf"
version: "conference"
unverified: []
group: false
facility: "NASA Glenn SHJAR (AAPL)"
data: ["PIV", "shadowgraph", "microphones-far"]
methods: ["phase-averaging", "PSD", "resonance-model"]
flow: ["round-jet", "impinging-jet", "supersonic", "underexpanded"]
phenomena: ["impingement-tones", "Mach-disk"]
params: {"NPR": "4.03", "h/D": "1–4 (detail at 2.02 and 3.00)", "D": "25.4 mm", "lip": "12.7 mm"}
topics: ["impinging-jets-and-edge-tones"]
related: ["weightman-2019-sound-production-impinging-supersonic-jets", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "jordan-2018-jet-flap-interaction-tones", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: []
summary: "NPR 4.03 jet on a large plate (SHJAR): phase-averaged PIV and shadowgraph of L1 tones; oscillating Mach disk moves recirculation zones; wall-jet source at 2.6R; Powell N+p ≈ 4.4"
---
# An experimental investigation of the flow structure of supersonic impinging jets

- **Authors:** Brenda Henderson (Kettering University, Mechanical Engineering), James Bridges and Mark Wernet. The title block lists only Kettering; the footnotes behind the asterisks are not in this copy. Bridges and Wernet were at NASA Glenn Research Center, where the work was done (p. 2, 6).
- **Source:** AIAA conference preprint, 2002 (header "AIAA 2002-", with the paper number left blank; NTRS 20020088423). It is the precursor of the journal paper Henderson, Bridges & Wernet (2005), *An experimental study of the oscillatory flow structure of tone-producing supersonic impinging jets*, J. Fluid Mech. 542, doi:10.1017/S0022112005006385, which is **not held** in this library (entry #39 in `References/download_candidates.md`).
- **PDF:** `References/Paper_PDFs/Henderson-EtAl_2002_An-Experimental-Investigation-Of-The-Flow-Structure-Of-Supersonic-Impinging-Jets.pdf` (12 pp.). It is an OCR'd scan (Acrobat Paper Capture), so `pdftotext` output is garbled and the Read tool reports it as password-protected; render pages to images instead.
- **Page refs:** PDF pages. Text is on p. 1–6 (printed page numbers match); the figures are on p. 7–12, which carry no page numbers.
- **Tags:** supersonic impinging jet, large-plate impingement tones, L1 tones, zones of silence, Mach disk oscillation, standoff shock, annular shock, recirculation (stagnation) bubble, contact surface, wall-jet sound source, Powell feedback criterion, phase-locked shadowgraph, phase-averaged PIV, subtracted (coherent) velocity fields, non-time-resolved PIV, NASA Glenn SHJAR

## Summary
The paper looks for the flow mechanism behind the large-plate tones of a moderately underexpanded impinging jet: a 25.4 mm convergent nozzle at NPR 4.03 against a large flat plate at h/d ≈ 1–4 (p. 1–2). Far-field acoustics give the tone wavelength against spacing, with an "L1" family of axisymmetric tones and two zones of silence (p. 3, Fig. 5). At h/d = 2.02, shadowgraphs phase-locked to a microphone and PIV phase-averaged against that microphone signal show the oscillation cycle (p. 3–4). The Mach disk oscillates axially; a recirculation zone forms behind it, moves to the plate and collapses; and compression and expansion regions in the outer supersonic flow move downstream, with the annular shock appearing and vanishing in step. Subtracting the mean from each phase average isolates counter-rotating unsteady structures that convect to the wall and collapse near r ≈ 1.6R (p. 5, Fig. 11). The wall jet oscillates strongly at r ≈ 2.6R (≈ 1.3d), and the authors propose that its boundary acts as a simple source spread over an annulus there (p. 4, 6). Feeding the measured cycle into Powell's feedback criterion with a three-leg loop (nozzle to Mach disk, Mach disk to wall source, acoustic return) gives N + p ≈ 4.4 at h/d = 2.02 (eq. 1–2, p. 5–6).

## Key findings
- **Tone and spectrum** (p. 3, Fig. 4): at NPR 4.03, h/d = 2.02, a single intense fundamental with harmonics; the text says the fundamental is often at least 20 dB above the broadband. Read from Fig. 4 (axis units cut off in the scan): fundamental ≈ 10.2 kHz at ≈ 115 (dB, presumably), broadband ≈ 95–100, first harmonic ≈ 20.3 kHz.
- **Tone wavelength against spacing** (p. 3, Fig. 5):
  - The L1 tones, previously shown to be axisymmetric (ref. 11 in the text, p. 3), lie on a straight line; the authors use λ/d ≈ 0.69 h/d (p. 5).
  - First zone of silence starts at h/d ≈ 2.70 and a second at h/d ≈ 3.8 (text, p. 3). In Fig. 5 the hatched bands sit at about 2.75–3.55 and 3.7–4.0, with one tone at h/d ≈ 3.6 between them (read from the figure).
  - Below h/d ≈ 1.6 the tones flatten at λ/d ≈ 0.8–0.9, and there is an isolated tone at λ/d ≈ 2.45 near h/d ≈ 1.7 (read from Fig. 5; not discussed in the text).
  - Tones reappear at larger spacing (p. 4).
- **Cycle from shadowgraphs** (p. 3, Fig. 6; t/T = 0–0.8):
  - At t/T = 0 there is a Mach disk meeting a conical shock, plus an annular shock in the outer flow.
  - The annular shock moves downstream while waves behind the Mach disk travel towards the plate. The annular shock nearly vanishes by t/T = 0.6, and both it and the central waves are gone by 0.8.
  - Upstream-travelling sound waves appear to start in the near-wall region; the near-wall region thickens periodically as the annular shock moves downstream. Line-of-sight integration through the wall jet may distort the view near the axis (p. 3).
- **Cycle from phase-averaged PIV** (p. 4, Fig. 8; t/T = 0–0.836 in six bins):
  - A recirculation zone sits in the subsonic flow next to the plate at t/T = 0, with a contact surface (region 4) upstream of it that turns the oncoming flow outwards towards the shear layer.
  - The Mach disk moves downstream; a new contact surface and recirculation zone form behind it while the old zone moves outward. By t/T = 0.334 the near-plate zone collapses (printed "0.0334", a typo); the Mach disk starts back upstream at t/T ≈ 0.52.
  - Compression and expansion regions in the outer supersonic flow move towards the plate; the two expansion regions merge at t/T = 0.502, about when the annular shock starts to fade in the shadowgraphs.
  - The cycle looks much the same for all L1 spacings in 1.59 ≤ h/d ≤ 2.34 (p. 4).
- **Wall-jet source at 2.6R** (p. 4, 6):
  - The wall jet oscillates strongly at r ≈ 2.6R (2.6 jet radii, about 1.3d). There the velocity is lowest at t/T = 0.334 with entrainment directed into the wall jet; by t/T = 0.836 the entrained flow is pushed outward, tangent to the wall.
  - The authors propose that the fluctuating wall-jet boundary acts as a simple source distributed over an annulus centred there.
- **Recirculation alone does not make tones** (p. 4, Fig. 9): at h/d = 3.00 (in the zone of silence) a second, dome-shaped standoff shock stands in front of the plate and a stagnation region still forms near the plate, but there is no tone. The authors note this matches Semiletenko et al., who saw shock oscillations stop when two shocks stood in front of the plate (p. 1, 4).
- **Coherent (subtracted) fields** (p. 5, Figs. 10–11):
  - Each phase average minus the 800-pair mean shows unsteady clockwise (region 1) and counter-clockwise (region 2) rotating components behind the Mach disk.
  - They convect to the wall and collapse at r ≈ 1.6R, at t/T ≈ 0.502 (clockwise) and 0.836 (counter-clockwise).
  - At 2.6R the unsteady wall-jet velocity points outward for t/T < 0.502 and inward after, which is the oscillation seen in Fig. 8.
  - Henderson's earlier unsteady plate-pressure data show a secondary pressure maximum near 1.6R at h/d = 1.74, which the authors tie to this collapse (p. 5).
- **Feedback loop as proposed** (p. 4–5): small Mach-disk oscillations send pressure waves (likely the acoustic and entropy waves of Kuo & Dowling 1996) through the region between the standoff shock and the plate. These move the recirculation zones; the moving zones and the distorted sonic line drive a wave in the outer supersonic flow that moves, then collapses, the annular shock. The wall jet oscillates near 2.6R and radiates; the sound travels upstream to the nozzle, and the disturbances it seeds there convect down and oscillate the Mach disk.
- **Powell criterion** (p. 5–6): with measured inputs at h/d = 2.02, N = 4 and p ≈ 0.4 (N + p ≈ 4.4). Krothapalli et al. (1999) found p = −0.4 for an ideally expanded impinging jet, but without a standoff shock that loop is presumably different (p. 6).
- **Limits stated by the authors:** particle lag will bias velocities behind the shocks, but should not hide the main features (p. 4). Jet disturbances upstream of the Mach disk could not be tracked at this small spacing, so the first leg uses a convection Mach number of 0.7–0.75 taken from Powell (1988) and Henderson & Powell (1993) (p. 5).

## Setup / method
- **Facility** (p. 2): Small Hot Jet Acoustic Rig (SHJAR; printed "Small Hot Jet Aeroacoustics Rig") in the Aeroacoustic Propulsion Laboratory (AAPL), NASA Glenn Research Center. The AAPL is a 20 m radius geodesic dome with fibreglass wedges on the walls and about half the floor. Not Shock Lab group work.
- **Flow path** (p. 2): 1034 kPa supply through a 102 mm line; two low-noise control valves plus a vernier valve set NPR; two 90° elbows; 356 mm plenum 3.05 m above the floor with total-pressure probes; ASME bellmouth; 152 mm pipe with three screens.
- **Nozzle and plate** (p. 2): convergent nozzle with a cubic contour, d = 25.4 mm exit. External contour a 30° cone, **lip thickness 12.7 mm** (0.5d). Plate 533 mm × 610 mm aluminium, normal to the jet axis and traversed along it.
- **Conditions:** NPR = p₀ / p at the nozzle lip (ambient) (p. 1). Abstract quotes NPR 4 and h/d 1–5 (p. 1); all figures are at NPR = 4.03, with h/d = 2.02 (tone) and h/d = 3.00 (no tone), and Fig. 5 covers h/d = 1–4 (p. 7). The jet is presumably unheated: no stagnation temperature is given.
- **Acoustics** (p. 2–3): one Brüel & Kjær type 4135 microphone in the far field, filtered and recorded on a Yokogawa DL708E digital oscilloscope. Its position, sampling rate and spectral settings are not given.
- **Phase-locked shadowgraph** (p. 2–3):
  - Photonics Analysis Pal Flash, ≈ 1 µs spark, focused on a pinhole; two 508 mm spherical mirrors, f = 2.54 m; Kodak DX1 digital camera (as printed). The optics ride on the plate traverse.
  - The microphone signal triggers the oscilloscope; a Stanford Research DG535 delay generator sets the phase. **Each image comes from a different cycle** (p. 2, 3), so the sequence assumes the cycle repeats.
  - Five phases, t/T = 0, 0.2, 0.4, 0.6, 0.8 (Fig. 6).
- **PIV ("DPIV")** (p. 2):
  - Continuum Surelite III Nd:YAG dual head, 400 mJ, **at most 10 Hz**, so **not time-resolved**. Inter-frame delay 1.2 µs; sheet ≈ 0.2 mm thick (one cylindrical and one spherical lens).
  - Redlake ES 4.0 camera, 2048 × 2048 px. Field of view 80 mm for spacings below 75 mm, otherwise 136 mm (p. 2; later printed as 133 mm, see below).
  - Seeding: jet with 0.6 µm olive-oil droplets (two TSI 9306 six-jet atomisers); ambient with 0.2–0.3 µm smoke (Vicount 5000).
  - Processing with NASA GRC PIVPROC (Wernet 1999): image shifting, two passes, 64 × 64 px then 32 × 32 px, both at 50% overlap. Vector spacing 0.6 mm (80 mm field) and 1.06 mm (larger field).
- **Phase averaging** (p. 2, 5):
  - The filtered microphone signal and the laser Q-switch signal were recorded together (RC Electronics Datamax), giving the tone phase of each PIV pair. How the phase was extracted (zero crossing, Hilbert, etc.) and the bin width are not stated.
  - 800 image pairs per tonal condition; **20–60 vector fields averaged per phase bin**. Six bins are shown, at t/T = 0, 0.167, 0.334, 0.502, 0.669, 0.836.
  - "Subtracted" fields = phase average minus the 800-pair mean, i.e. the coherent part of a triple decomposition (p. 5).
  - Displacement of the region-1 rotating structure is tracked across phases to get a convection speed (Fig. 12).
- **Modelling and theory side:** there is no simulation or stability calculation in this paper. The model content is:
  - Powell's (1953) feedback criterion, split into three legs (eq. 1–2), with the inputs measured where possible (p. 5).
  - A qualitative mechanism for the recirculation zone (Ginzburg et al. 1973): more total-pressure loss through the Mach disk than through the oblique shock gives low pressure on the plate centre and a peripheral pressure maximum that some near-plate flow cannot overcome (p. 3, Fig. 3).
  - Review of linear models (p. 1–3): Morch's (1964) one-dimensional shock–plate model gave no strong resonance; Kuo & Dowling (1996) added entropy waves and got strong resonance matching **small-plate** tones but not large-plate ones. The authors attribute that to the missing upstream forcing of the Mach disk by nozzle-lip disturbances. Iwamoto & Deckker (1981) computed a toroidal vortex during impingement start-up.
  - Annular shock formation (p. 3): the expansion fan at the jet boundary–oblique shock junction (region 6) reflects from the subsonic/supersonic constant-pressure boundary as compression waves that merge into the annular shock (region 7); Carling & Hunt (1974) found the compression/expansion pattern persists several radii into the wall jet, modified by reflection at the plate.

## Key equations
**Powell feedback criterion, three-leg form** (eq. 1, p. 5):
$$\frac{N+p}{f}=\int_0^{h_1}\frac{\mathrm dh}{u_{1con}}+\int_{h_1}^{h_2}\frac{\mathrm dh}{u_{2con}}+\int_s^{0}\frac{\mathrm dh}{c}$$
- h₁: nozzle to Mach disk; h₂: distance travelled by the unsteady rotational components through the impingement and near-wall regions; s: distance from the near-wall source back to the nozzle exit.
- u₁con, u₂con: convection velocities before and after the Mach disk; c: ambient sound speed (taken constant).
- N integer, p non-integer phase term accounting for the phase difference between disturbance and sound at the source and at the nozzle (p. 5).
- The second integral is replaced by a constant-speed term, because Fig. 12 shows a nearly constant convection speed.

**Non-dimensional form** (eq. 2, p. 5), after multiplying by c / d and setting λ/d = 0.69 h/d from Fig. 5:
$$(N+p)\left[(0.7)\frac{h}{d}\right]=\frac{h_1/d}{\bar M_{1con}}+\frac{h_2/d}{\bar M_{2con}}+\frac{s}{d},\qquad \bar M_{i\,con}=\frac{\bar u_{i\,con}}{c}$$
- Check: c/(f d) = λ/d, so the left side is (N + p) λ/d. With N + p = 4.4 at h/d = 2.02 it equals 4.4 × 0.69 × 2.02 ≈ 6.1 (6.2 with the rounded 0.7), so the three right-hand terms must sum to about 6.1–6.2. The paper does not list the individual h₁, h₂, s or M values it used.
- Consistency check (mine): λ/d = 0.69 × 2.02 = 1.39 gives f ≈ 343 / (1.39 × 0.0254) ≈ 9.7 kHz, close to the ≈ 10.2 kHz peak read from Fig. 4.

> Equations were retyped from a 250 dpi render of p. 5. Points to check against the PDF (or the JFM 2005 version) before using them:
> - The text replaces the second integral by "Δx_max d / (u₁con d)", but the integral is over u₂con, and the next sentence says u₂con comes from the slope of Fig. 12. Read it as Δx_max / u₂con.
> - The text defines "M̄₂con = ū_con1 / c = 0.7–0.75" for the leg *upstream* of the Mach disk; that should be M̄₁con. A few lines later it correctly writes M̄₂con = ū₂con / c.
> - The last integral is printed from s to 0; it is used as +s/c in eq. 2.
> - The text says the rotational component "disappears at t/T = 2" and takes Δx_max there, while Fig. 11 shows the structures collapsing at t/T ≈ 0.502 and 0.836 and Fig. 12's time axis (label cut off) runs 0–2. The tracked structure may span about two periods; this is unclear.

## Data tables
**Operating points shown** (p. 3–4, Figs. 4–9):

| NPR | h/d | Tone? | Diagnostics | Notes |
|---|---|---|---|---|
| 4.03 | 2.02 | yes, L1 | spectrum, phase-locked shadowgraph (5 phases), phase-averaged PIV (6 phases), subtracted fields | f ≈ 10.2 kHz (read from Fig. 4); N = 4, p ≈ 0.4 |
| 4.03 | 3.00 | no (zone of silence) | single shadowgraph, mean PIV | second (dome-shaped) shock; recirculation still present |
| 4.03 | 1.59–2.34 | yes, L1 | phase-averaged PIV (not shown) | cycle "quite similar" to h/d = 2.02 (p. 4) |

**My estimates, not in the paper** (assuming a cold jet at T₀ ≈ 293 K, γ = 1.4, isentropic expansion to ambient):
- NPR 4.03 gives M_j ≈ 1.56, U_j ≈ 440 m/s, D_j/d ≈ 1.08 (convergent nozzle, fully expanded).
- f ≈ 10.2 kHz gives St = f d / U_j ≈ 0.59.
- Fig. 12 slope (Δ ≈ 0.003 → 0.043 over t ≈ 0.15 → 1.65, units not stated; if metres and periods) gives about 0.027 m per period, ≈ 270 m/s at 10 kHz. Treat this only as an order-of-magnitude check of u₂con.

## Figures worth remembering
- **Fig. 3 (p. 7):** schematic of the impingement region with numbered regions: 1 subsonic flow behind the Mach disk, 2 supersonic flow behind the oblique shock, 3 shear layer between them, 4 contact surface, 5 near-plate recirculation zone, 6 expansion fan, 7 annular shock. The best one-picture summary.
- **Fig. 4 (p. 7):** far-field spectrum at NPR 4.03, h/d = 2.02, tone ≈ 10 kHz plus harmonic.
- **Fig. 5 (p. 7):** λ/d against h/d (1–4): L1 line, two hatched zones of silence, and the spacings used for Figs. 6 & 8 (h/d ≈ 2) and 7 & 9 (h/d = 3).
- **Fig. 6 (p. 8):** phase-locked shadowgraphs at t/T = 0–0.8, labelled Mach disk, annular shock, sound waves, downstream-propagating waves and the 2.6R location.
- **Fig. 7 (p. 8) and Fig. 9 (p. 10):** non-tonal h/d = 3.00 case: shadowgraph and mean PIV with the second, dome-shaped shock.
- **Fig. 8 (p. 9):** phase-averaged velocity-magnitude maps (0–540 m/s) over six phases, with the contact surface (4) and the 2.6R wall-jet location marked.
- **Fig. 10 (p. 10):** schematic of the loop lengths h₁, h₂ and s, and of rotating regions 1 and 2.
- **Fig. 11 (p. 11):** subtracted (coherent) velocity maps (colour 0–100, presumably m/s) over six phases, with the Mach disk, 1.6R and 2.6R marked.
- **Fig. 12 (p. 12):** displacement of the region-1 structure against time, a near-linear fit used for u₂con.

> Typos and inconsistencies in the scan, to check against the PDF before quoting: "t/T = 0.0334" for Fig. 8(c) (should be 0.334, p. 4); "Fig. 5 (d)" for the Mach-disk reversal (should be Fig. 8(d), p. 4); the larger PIV field of view is 136 mm on p. 2 but 133 mm later on p. 2 (136 mm fits the 1.06 mm vector spacing: 136/2048 × 16 px ≈ 1.06 mm); Semiletenko et al. is cited as ref. 12 on p. 4 but is ref. 5; the Fig. 8 and Fig. 11 captions label two panels "(e)"; Fig. 5's y-axis label and Figs. 4 and 12's x-axis labels are cut off. Ref. 7 is listed only as "Henderson – 2002 ASA article" (p. 6).

## Notation
- d, R: nozzle exit diameter and radius (d = 25.4 mm). h: nozzle-to-plate spacing. λ: tone wavelength. f: tone frequency; T: its period; t/T: phase.
- NPR = p₀ / p_lip (ambient).
- L1: the family of axisymmetric large-plate tones on the λ/d–h/d line in Fig. 5.
- N, p: Powell's integer and phase term. h₁, h₂, s: loop legs (eq. 1). u₁con, u₂con: convection velocities upstream and downstream of the Mach disk; M̄ᵢcon = ūᵢcon / c. Δx_max: maximum displacement in Fig. 12.
- Regions 1–7 as in Fig. 3; regions 1 and 2 in Figs. 10–11 are clockwise and counter-clockwise rotating structures (different meaning from Fig. 3).
- "Small plate" (plate diameter ≤ 2d) vs "large plate" (≥ 4d) tones (p. 1).

## Relevance to this project
Impinging supersonic jets are one of the lab's core resonance problems (CLAUDE.md), and this is the conference precursor of the Henderson et al. (2005) JFM study that the user's thesis cites for the wall-jet source.

- **Link to the user's thesis ([weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)):**
  - The 2.6R ≈ 1.3d wall-jet source here is the "r ≈ 1.3D" Henderson et al. (2005) source. The thesis's shocklet, measured at (x/D, y/D) = (3.78, 1.43) on a hemisphere at NPR 5.0, is offered there as the first mechanistic explanation of it. This paper only proposes a "simple source" at the wall-jet boundary driven by moving recirculation and compression/expansion regions; it does not see a shocklet (shadowgraph and coarse phase bins may simply not resolve one).
  - Phase term: this paper fits p ≈ +0.4 (N = 4) at h/d = 2.02; the thesis measures Δt equivalent to p ≈ −0.24 and lists earlier values from 0 (Gojon) to −0.4 (Krothapalli 1999). Sign conventions and loop definitions differ (three legs here, with the source at the wall, vs a convective plus straight acoustic leg in the thesis), so compare loop by loop, not p alone.
  - The thesis's second mechanism, leakage at the standoff shock, would place the source at the shock rather than in the wall jet; this paper's shadowgraphs show sound coming from the near-wall region (p. 3). Different NPR, lip (12.7 mm here, a thick lip) and mode (axisymmetric L1 here) may favour different sources.
  - Zones of silence: here tied to a second, dome-shaped shock standing in front of the plate (p. 3–4), which suits the thesis's summary that silence occurs when the shocks sit at free-jet positions.
- **Return path:** the paper assumes free-stream sound at c closes the loop (eq. 1). Later work puts the upstream leg inside the jet as a guided jet mode ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) for screech; Gojon & Bogey for impingement, as summarised in the thesis note). For axisymmetric impinging tones at NPR ≈ 4 the cut-on/cut-off band test of that paper could be applied to the L1 data in Fig. 5. Powell-equation fitting is under-determined in the same way discussed in [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) and the thesis note.
- **Methods and how they depend on the data:**
  - Everything here is **non-time-resolved** (10 Hz PIV, single-shot shadowgraph), made periodic by conditioning on a microphone. That works only for a single, steady tone (p. 1, 3) and blurs any cycle-to-cycle jitter or intermittency; with 20–60 fields per bin the convergence of each phase average is modest.
  - For lab PIV the group's alternative is a POD pair with a phase-portrait check, then phase averaging or low-order reconstruction ([weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md); [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)). That needs no microphone reference, and the ring in the phase portrait tests the periodicity this paper assumes.
  - The "subtracted" fields are the coherent part of a triple decomposition; the same subtraction applied to a POD-pair reconstruction should reproduce Fig. 11.
  - With **time-resolved schlieren** the same cycle could be obtained from SPOD at the tone, and the SPOD → reconstruction → Hilbert POD pipeline would show whether the Mach-disk and wall-jet amplitudes, and the tone frequency, drift or switch in time ([raiola-2025](raiola-2025-hilbert-pod.md)). The mode switching near zones of silence (Fig. 5) is where that would matter most; this paper does not address intermittency.
  - An x-direction wavenumber split of the schlieren (as in the thesis Ch. 6) would separate the downstream waves behind the Mach disk from the upstream sound seen in Fig. 6.
- **Modelling side:** no simulation; the physics model is Powell's criterion plus qualitative arguments, and the review of linear shock–plate models (Morch; Kuo & Dowling 1996, which captures small-plate tones only) is useful context. The paper's own suggestion is that a large-plate model needs upstream forcing of the Mach disk by nozzle disturbances (p. 2–3). Modern LES of impinging jets and the guided-mode stability models in the screech notes are the natural tests of the proposed cycle.
- **Rocket noise:** [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) cites Henderson 2002 and 2005 as examples of strong lab impingement tones that are absent from full-scale launch data. The recirculation/standoff-shock picture here is also the background for the plate-shock source qualitatively described in [ranow-2021](ranow-2021-acoustic-prediction-rocket-flame-deflector.md).
- **Other edge/plate feedback notes:** [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) and [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md) (subsonic jets grazing an edge).
- **Facility:** NASA Glenn SHJAR/AAPL; not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:**
  - Henderson, Bridges & Wernet 2005, JFM 542 (listed in `References/Papers_to_get.md`), the full version.
  - Henderson & Powell 1993, JSV 168 (#37) and Krothapalli et al. 1999, JFM 392 (#38).
  - Powell 1988, JASA 83; Kuo & Dowling 1996, JFM 315; Henderson 2001, AIAA 2001-2145.
