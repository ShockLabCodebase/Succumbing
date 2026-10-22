---
key: "samimy-1998-rectangular-jet-trailing-edge-control"
title: "Passive Control of Supersonic Rectangular Jets via Nozzle Trailing-Edge Modifications"
authors: ["Samimy, M.", "Kim, J.-H.", "Clancy, P. S.", "Martens, S."]
year: 1998
type: "article"
venue: "AIAA J. 36(7), 1230–1239"
bib: {"journal": "AIAA Journal", "volume": "36", "number": "7", "pages": "1230--1239"}
doi: "10.2514/2.504"
arxiv: ""
pdf: "non-axisymmetric-jets/Samimy-EtAl_1998_Passive-Control-Of-Supersonic-Rectangular-Jets-Via-Nozzle-Trailing-Edge.pdf"
version: "published"
unverified: []
group: false
facility: "OSU Aeronautical and Astronautical Research Laboratory"
data: ["condensation-imaging", "microphones-far"]
methods: ["statistics", "PSD"]
flow: ["rectangular-jet", "supersonic", "underexpanded", "overexpanded", "ideally-expanded"]
phenomena: ["noise-control", "screech", "axis-switching", "BBSAN", "mixing-enhancement"]
params: {"M_d": "2", "M_j": "1.5–2.5", "AR": "3", "TR": "1 (cold)"}
topics: ["non-axisymmetric-jets", "screech", "axis-switching-and-mean-flow"]
related: ["kerechanin-2001-trailing-edge-rectangular-jet-acoustics", "raman-1998-supersonic-jet-screech-review", "krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance", "esfahani-2021-coupling-modes-twin-rectangular-jets"]
cites: []
summary: "AR 3 Mach 2 half-nozzle with one-sided trailing-edge cutouts: off-design streamwise vortices raise mixing up to ~50%; V-notch removes M_j 1.75 screech; condensation imaging, mics"
---
# Passive Control of Supersonic Rectangular Jets via Nozzle Trailing-Edge Modifications

- **Authors:** M. Samimy, J.-H. Kim, P. S. Clancy, S. Martens (The Ohio State University)
- **Source:** AIAA Journal 36(7), 1230–1239, July 1998. DOI 10.2514/2.504. Received Sept. 1997, revised March 1998. More detailed noise results (far and near field) are in AIAA Paper 97-0146 (ref. 45); Kim's 1998 OSU PhD thesis is ref. 36.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/non-axisymmetric-jets/Samimy-EtAl_1998_Passive-Control-Of-Supersonic-Rectangular-Jets-Via-Nozzle-Trailing-Edge.pdf` (10 pp.). Page refs below are PDF pages: p. 1 = journal p. 1230, through p. 10 = p. 1239.
- **Tags:** rectangular jet, non-axisymmetric nozzle, aspect ratio 3, Mach 2, half-nozzle with splitter plate, trailing-edge cutouts, streamwise vortices, skew-induced vorticity, vorticity transport, mixing enhancement, axis switching, oblique instability, screech, nozzle lip thickness, OASPL, condensation (laser-sheet) visualisation, passive control

## Summary
The paper tests whether simple in-plane cutouts in one trailing edge of an aspect-ratio-3, Mach 2 rectangular nozzle can generate large-scale streamwise vortices that raise mixing and lower noise, with little thrust penalty. The nozzle is a half-nozzle: a 1 mm splitter plate on one wide side carries the cutouts, and a thick nozzle block forms the other side. Ten modified edges (V-notches, rectangular cutouts/tabs and oblique cuts at 35–90°) were run at M_j = 1.5–2.5 and studied with laser-sheet condensation imaging of the jet cross-section and two far-field microphones in a non-anechoic room. When the jet is not ideally expanded, the cutouts produce a counter-rotating vortex pair whose sign flips between over- and underexpanded flow and whose strength grows as the cutout edge becomes parallel to the flow; mixing area at 2 D_eq rises by up to about 50%. At the design condition nothing changes, and the cutouts do not excite the predicted oblique spanwise instabilities. In the screeching overexpanded case (M_j = 1.75) a 45° V-notch removes the screech tone and lowers OASPL by about 2.7 dB. Modelling is limited to a qualitative argument from the mean streamwise vorticity transport equation; there is no stability analysis or simulation.

## Key findings
- **Vorticity source** (p. 2–3):
  - Seven spanwise pressure taps just upstream of the cutouts (nozzles 3 and 4) showed no appreciable spanwise pressure gradient. This rules out the "source 1" mechanism of protruding tabs (Zaman et al. 1994), because the cutouts lie in the wall plane.
  - The vorticity is instead shed from the cutout edges ("source 2"): boundary-layer vorticity (2a), plus extra vorticity from the pressure gradient across the cutout edge when the jet is not ideally expanded (2b) (p. 3).
  - The shed spanwise vorticity Ω_z is tilted into Ω_x by the shear-layer gradient ∂U/∂z (skew-induced generation, Bradshaw 1987). A 90° cutout edge is already streamwise, so it needs no tilting and gives the strongest vortices; this prediction is confirmed qualitatively by the images (p. 3, 5).
- **Cutout depth and spacing** (Fig. 3, p. 3; M_j = 2.2): nozzle 1 (two shallow 45° notches) makes two small, closely spaced vortex pairs that merge by 5 D_eq and stop mixing well. Nozzle 4 (one notch, twice as deep) makes one pair that keeps growing. Depth was then fixed at 3.8 cm and only the angle varied.
- **Sign and strength of the vortex pair** (Figs. 4–6, p. 4–5):
  - Underexpanded (M_j = 2.2, 2.5): group A nozzles (3, 5, 9, 10) make a pair rotating toward the minor axis that entrains ambient air. Group B (4, 6, 7, 8, the inverted cutouts) make the opposite sign and eject jet fluid.
  - Overexpanded (M_j = 1.75): the signs reverse, because the pressure gradient across the cutout edge reverses with the exit boundary condition (p. 5).
  - Overexpanded vortices are weaker and closer together because the jet cross-section is compressed. At M_j = 1.5 the picture is unclear, except that nozzle 6 still gives strong vortices (p. 5).
  - Entrainment (or ejection) rate of a pair scales as Γ₀/r₀ (Zaman 1996; p. 5). Small r₀ acts in the near field, large r₀ farther downstream.
- **Corner vortices and axis switching** (p. 4, 6): the baseline shows corner-vortex deformation only at M_j = 2.5. At 8 D_eq every modified nozzle has axis-switched at M_j = 2.5; adjacent vortices interact strongly in nozzles 3 and 5, while those of nozzles 4 and 6 keep stretching the jet along the minor axis (p. 6). In the ideally expanded case there is no axis switching up to 15 D_eq (p. 7).
- **No oblique-mode excitation** (p. 6–7): the convective Mach number is about 0.85, for which linear theory (Sandham & Reynolds 1991) gives most-amplified oblique waves at about 45°. The 35–55° cutouts were meant to excite them, but at M_j = 2.0 none of nozzles 1–4 or 7–10 changes the mixing layer measurably. Local thickening behind cutouts is attributed to the shear layer simply starting earlier there. The authors note that experiments show a transition to disorganised 3-D structures rather than organised oblique waves.
- **Mixing area at 2 D_eq** (Fig. 10, p. 7–8): small effects at M_j = 2.0, up to about 50% enhancement off-design. Nozzle 5 is best underexpanded and nozzle 6 best overexpanded. Group A generally wins underexpanded and group B overexpanded, i.e. the group whose vortices **entrain** ambient air wins, so entrainment beats ejection in the near field.
- **Mixing area at 8 D_eq** (Fig. 11, p. 8): over 50% enhancement remains. Nozzles 6 and 4 (group B) beat 3 and 5 even underexpanded, so the near-field rule does not carry downstream.
  > The text says nozzle 6 outperforms nozzle 5 "even in the overexpanded flow regime" (p. 8). Since group B is expected to win overexpanded, "underexpanded" may have been meant; Fig. 11 shows nozzle 6 ahead at M_j = 2.5 (≈2.5 vs ≈1.84). Check the PDF wording.
- **Mean images mislead for a flapping jet** (p. 7): the screeching M_j = 1.75 baseline is flapping, so its *mean* mixing layer looks thick. Mixing area was therefore computed per instantaneous image and then averaged.
- **Noise** (p. 8–9; baseline and nozzles 1–4 only):
  - Mics on major and minor axes gave similar spectra; OASPL differences were within the 0.6 dB repeatability, so only the minor-axis mic is shown.
  - Screech appears only at M_j = 1.75 (fundamental plus 1st–5th harmonics noticeable). At 1.5, 2.2 and 2.5 BBSAN is well defined but no tone, possibly because the loop is not closed or because the 90° mic sits where the fundamental is weak (fundamental peaks near 150° from the jet axis, 2nd harmonic at 90°; Norum 1983) (p. 8).
  - At M_j = 1.75, nozzle 3 eliminates screech and nozzle 4 substantially reduces it; nozzles 1 and 2 have little effect (p. 8).
  - Nozzle 3 is the only one to lower OASPL in all off-design cases: about 2.7 dB overexpanded and 1.2 dB underexpanded, reducing BBSAN as well as removing the tone (p. 9). No nozzle changes OASPL at M_j = 2.0.
- **Lip thickness** (p. 8): replacing the 1 mm splitter plate with a 4.4 cm thick lip leaves OASPL within repeatability, but a weak screech tone appears at M_j = 2.2. The authors attribute this to stronger scattering of upstream-travelling shock noise by the larger lip, i.e. stronger receptivity.
- **Outlook** (p. 9): only one side was modified, to isolate the physics. Modifying all four sides "judiciously" should give larger, though not additive, effects.

## Setup / method
- **Facility** (p. 1): Aeronautical and Astronautical Research Laboratory, OSU. Not Shock Lab group work.
  - Air from two four-stage compressors, filtered, dried and stored in 42.5 m³ at 16.5 MPa; throttled by control valves.
  - Stagnation chamber 19 cm diameter, 120 cm long, axial inlet, two sets of perforated plates.
  - **Not anechoic:** the chamber face and nearby surfaces were covered in acoustic foam, and the authors state the acoustics are for comparison between nozzles only (p. 2).
- **Nozzle** (p. 1–2, Fig. 1):
  - Rectangular, AR 3, exit 2.54 cm high × 7.52 cm wide; design Mach 2. D_eq = (4A_e/π)^{1/2}, quoted as 4.96 cm.
  - Half-nozzle: 1 mm splitter plate on one wide side (where the nozzle centre-plane would be in a full nozzle), and the contoured nozzle block (44 mm thick at the exit) on the other. The short sides are 19 mm thick.
  - Mach 2 is reached at the exit on the block side and 4.4 cm upstream of the exit on the splitter side, along the last characteristic (30° Mach line). The cutouts end 3.8 cm upstream of the exit, i.e. 0.6 cm downstream of where Mach 2 is established, so the flow is at design Mach before it meets them (p. 1).
  - Thick-lip variant: splitter replaced by a 4.4 cm lip plate (p. 2, 8).
- **Trailing-edge geometries** (Fig. 1, p. 2):

  | Nozzle | Cut | Angle | Group | Notes |
  |---|---|---|---|---|
  | Baseline | none | – | – | thin (1 mm) or thick (4.4 cm) lip |
  | 1 | two shallow notches | 45° | – | half the depth of nozzle 4; preliminary |
  | 2 | single oblique cut across the span | 45° | – | preliminary; mixing dropped off downstream (ref. 40) |
  | 3 | V-notch | 45° | A | depth 3.8 cm |
  | 4 | inverted V (nozzle 3 inverted) | 45° | B | |
  | 5 | rectangular cutout | 90° | A | cutout/tab width 2.54 cm (⅓ span) |
  | 6 | inverted rectangular (tab) | 90° | B | |
  | 7 | inverted V | 55° | B | |
  | 8 | inverted V | 35° | B | |
  | 9 | V-notch | 55° | A | |
  | 10 | V-notch | 35° | A | |

  > The shapes (V vs inverted V, which of 5/6 is the cutout vs the tab) are my reading of the small Fig. 1 sketches plus the group A/B pairing in the text. Angles are measured from the spanwise direction (35–90°, p. 2). Check Fig. 1 before relying on the shape names.
- **Conditions** (p. 2): five NPRs giving M_j = 1.5, 1.75, 2.0 (design), 2.2, 2.5. NPRs and temperatures are not given; the jet is cold (unheated, dry) air into warm, moist ambient air. Isentropic NPR (γ = 1.4, my calculation): about 3.7, 5.3, 7.8, 10.7 and 17.1.
- **Flow visualisation** (p. 2):
  - Laser-sheet scattering from condensed water particles (~50 nm) formed where moist ambient air mixes with the cold, dry jet air. Frequency-doubled Nd:YAG, 532 nm, 9 ns pulse (flow frozen).
  - Intensified CCD; **50 instantaneous images per case**, not time-resolved. Mean images are ensemble averages of the 50.
  - Cross-sections at x/D_eq = 1, 2, 5, 8, 10, 15 (Figs. 3–9); streamwise images were also taken but not shown.
  - The marker shows only the mixed region, so streamwise vortices are inferred from cross-section deformation, a practice the authors say was validated against vorticity measurements behind a single tab (ref. 39) (p. 3).
- **Mixing-area metric** (p. 7):
  - Threshold at about 4× background intensity; count pixels above it in each instantaneous image; ensemble-average the 50 areas.
  - Normalisation at 2 D_eq: split the M_j = 2.0 image along the major axis, double the area of the unmodified half, and use that as the reference for that nozzle at all M_j. This removes the effect of uncontrolled ambient temperature and humidity over several months of tests.
  - At 8 D_eq the cutouts affect the whole cross-section, so each nozzle is normalised by its own M_j = 2.0 area (so all points equal 1 at M_j = 2.0 in Fig. 11). The authors estimate this changes values by 5–10% but not trends (p. 8).
  - The authors call it an approximate comparison tool, "by no means" a quantitative mixing measurement (p. 7).
- **Acoustics** (p. 2):
  - Two B&K 4135 6.35 mm microphones, 2633A preamps, 5935 amplifier. Omnidirectional to within 3/6/12 dB up to 12.5/20/31.5 kHz; here within 1 and 2.5 dB up to 20 and 31.5 kHz because the incidence angle to the sources was below 40°.
  - 100 kHz per channel; 100 blocks of 4096 samples (4.096 s total), so Δf ≈ 24.4 Hz (my calculation). Window, overlap and anti-alias filtering not stated.
  - B&K 4231 calibrator (1 kHz) after each data set.
  - Far field: both mics 30 D_eq from the jet centreline in the exit plane (90° to the jet axis), one on the major axis and one on the minor axis. Limited near-field measurements of screech mode were also made but are deferred to ref. 45.
  - Outputs: SPL spectra (not shown) and OASPL (Fig. 12). Repeatability about 0.6 dB.
- **Time resolution:** the acoustics are time-resolved but only block-averaged spectra and OASPL are reported; no cross-spectra between the two microphones, no phase, no time-local analysis. The images are uncorrelated snapshots.
- **Modelling and simulation:** none beyond a qualitative argument from the mean vorticity transport equation (eqs. 1–2). Assumptions (p. 3):
  - Baroclinic term small relative to stretching and tilting, justified by earlier tab studies showing similar cross-section effects in compressible and incompressible jets.
  - Stretching term also neglected relative to tilting. The authors note that in a 2-D expansion or compression the density change would outweigh the stretching effect (ref. 16), but say the 3-D case is hard to assess.
  - So the model reduces to "tilting of shed Ω_z by ∂U/∂z", with cutout angle setting how much tilting is needed. "Good agreement" with the visualised trends is offered as support; there is no quantitative prediction.
  - Oblique-mode reasoning uses published linear stability / DNS results for compressible mixing layers (Sandham & Reynolds 1991; Jackson & Grosch 1989; refs. 42–44); no calculation is made here.

## Key equations
- Mean vorticity transport for compressible flow (eq. 1, p. 3):
  $$\frac{D(\boldsymbol{\Omega}/\rho)}{Dt} = \frac{\boldsymbol{\Omega}}{\rho}\cdot\nabla\mathbf{V} - \frac{1}{\rho}\nabla\!\left(\frac{1}{\rho}\right)\times\nabla P + \text{viscous term}$$
  The second term is the baroclinic term (equivalent to $\nabla\rho\times\nabla P/\rho^3$).
- Streamwise component (eq. 2, p. 3):
  $$\frac{D(\Omega_x/\rho)}{Dt} = \frac{\Omega_x}{\rho}\frac{\partial U}{\partial x} + \frac{\Omega_y}{\rho}\frac{\partial U}{\partial y} + \frac{\Omega_z}{\rho}\frac{\partial U}{\partial z} + \text{baroclinic term} + \text{viscous term}$$
  First term: stretching; third term: tilting of Ω_z by the shear-layer gradient, the term the paper keeps.
- Equivalent diameter (p. 2): $D_{eq} = (4A_e/\pi)^{1/2}$, quoted as 4.96 cm.
- Pair entrainment rate (p. 5, from Zaman 1996): $\propto \Gamma_0/r_0$.

> Eqs. 1–2 were rebuilt from garbled text and checked against the rendered page. From the stated exit 2.54 × 7.52 cm, $D_{eq} = (4 \times 19.10/\pi)^{1/2} = 4.93$ cm, not 4.96 cm (my calculation); 30 D_eq is then about 1.48–1.49 m either way.

## Data tables
**OASPL at the minor-axis microphone (90°, 30 D_eq), thin-lip baseline and nozzles 1–4** (Fig. 12, p. 9). Read from the figure, to about ±0.3 dB.

| M_j | Baseline thin lip | Baseline thick lip | Nozzle 1 | Nozzle 2 | Nozzle 3 | Nozzle 4 |
|---|---|---|---|---|---|---|
| 1.5 | ~125.8 | ~125.0 | ~125.5 | ~123.6 | ~123.1 | ~123.3 |
| 1.75 | ~130.6 | ~131.2 | ~130.3 | ~130.6 | ~127.9 | ~128.8 |
| 2.0 | ~127.8 | ~127.3 | ~127.9 | ~127.7 | ~127.7 | ~128.0 |
| 2.2 | ~133.8 | ~134.1 | ~133.9 | ~133.7 | ~132.7 | ~133.4 |
| 2.5 | ~138.2 | ~138.2 | ~138.0 | ~137.6 | ~136.9 | ~138.4 |

> Figure read-offs; symbols overlap at M_j = 2.0 and 2.5, so check before quoting. They are consistent with the text: nozzle 3 is ≈2.7 dB below the thin-lip baseline at M_j = 1.5 and 1.75, and ≈1.1–1.3 dB below at 2.2 and 2.5 (p. 9). Note OASPL at M_j = 1.75 (screeching) exceeds that at 2.0 by ~3 dB, and nozzle 2 removes ~2 dB at M_j = 1.5 but nothing at 1.75.

**Normalised mixing area, selected values** (Figs. 10–11, p. 8). Read from the figures, about ±0.02.

| x/D_eq | M_j | Baseline | Best nozzle(s) |
|---|---|---|---|
| 2 | 1.5 | 1.32 | 6: 1.65 |
| 2 | 1.75 | 0.98 | 6: 1.53; 5: 1.39 |
| 2 | 2.0 | 0.97 | all 1.03–1.12 |
| 2 | 2.2 | 1.05 | 5: 1.44 |
| 2 | 2.5 | 1.56 | 3 and 5: ≈2.04 |
| 8 | 1.75 | (overlapping symbol, ≈1.13?) | 6: 1.65; 4: 1.52 |
| 8 | 2.2 | 0.96 | 5: 1.34; 6: 1.32 |
| 8 | 2.5 | 1.64 | 6: 2.50; 4: 1.99 |

> Two different normalisations (see Setup), so 2 D_eq and 8 D_eq values are not directly comparable. In Fig. 11 at M_j = 1.75 two points (≈1.65 and ≈1.13) carry similar symbols; which nozzle the lower one is (baseline, nozzle 5 or nozzle 6) is unclear from the scan.

## Figures worth remembering
- **Fig. 1 (p. 2):** baseline half-nozzle with splitter plate (side and end views) and the ten trailing-edge geometries.
- **Fig. 2 (p. 3):** sketch of vorticity sheets shed from the cutout sides and reoriented into a streamwise pair.
- **Fig. 3 (p. 3):** mean cross-sections at 1 and 5 D_eq, M_j = 2.2, nozzles 1 vs 4: two merging small pairs vs one growing pair.
- **Figs. 4–5 (p. 4):** instantaneous and mean cross-sections at 2 D_eq for baseline and group A, all five M_j. Rectangular at M_j = 2.0; strong notch-shaped entrainment at 2.2–2.5; minor-axis stretching at 1.75; baseline corner deformation at 2.5.
- **Fig. 6 (p. 5):** mean cross-sections at 2 D_eq for group B (signs reversed relative to group A).
- **Figs. 7–8 (p. 6):** instantaneous and mean cross-sections at 8 D_eq for baseline and nozzles 3–6; axis switching at M_j = 2.5; instantaneous images often unidentifiable by nozzle.
- **Fig. 9 (p. 7):** mean cross-sections at M_j = 2.0 for baseline and nozzles 1–4 at x/D_eq = 1, 5, 10, 15: no measurable effect and no axis switching.
- **Figs. 10–11 (p. 8):** normalised mixing area vs M_j at 2 and 8 D_eq.
- **Fig. 12 (p. 9):** OASPL vs M_j for baseline (thin and thick lip) and nozzles 1–4.

## Notation
- Nozzles 1–10 as in the geometry table; group A = 3, 5, 9, 10; group B = 4, 6, 7, 8 (opposite vortex sign at a given M_j).
- M_j: fully expanded jet Mach number. D_eq: equivalent diameter. A_e: exit area.
- Ω = (Ω_x, Ω_y, Ω_z): vorticity, x streamwise, z spanwise (along the major axis), y normal to the splitter plate (Fig. 2). U: mean streamwise velocity. ρ, P: density, pressure. V: velocity vector.
- Γ₀, r₀: circulation and separation of a vortex pair.
- Polar angle measured from the downstream jet axis; both far-field mics at 90°.

## Relevance to this project
This project analyses resonance and feedback in experimental data (schlieren, acoustics, PIV), including from non-axisymmetric nozzles; see CLAUDE.md.
- **Companion to Kerechanin et al. 2001** ([kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md)): same group, same AR 3, Mach 2 concept, same overall message (cutouts matter only off-design; nothing changes at M_j = 2.0). Differences to keep in mind:
  - **Different nozzle:** here a 2.54 × 7.52 cm half-nozzle with one modified splitter-plate edge and a non-anechoic room; Kerechanin used a smaller 0.95 × 2.86 cm full nozzle with cutouts on trailing-edge extensions, in an anechoic chamber.
  - **Symmetry:** every modified nozzle here is one-sided, i.e. asymmetric about the major-axis plane. That screech is removed or reduced here (nozzles 3, 4 at M_j = 1.75; p. 8) is therefore **consistent** with Kerechanin's finding that single-side (asymmetric) cutouts suppress screech while double-side (symmetric) ones can amplify it. It refines rather than contradicts this paper.
  - Kerechanin's note says its ref. 23 found that cutouts reduced screech while leaving mixing noise unchanged. This paper reports OASPL only, so it does not separate mixing noise; whether Kerechanin's ref. 23 is this paper or AIAA 97-0146 (ref. 45 here) should be checked.
  - Vortex sense: here the centre V-notch / centre cutout (group A) entrains ambient air when underexpanded; Kerechanin (via Kim & Samimy 1999) reports centre cutouts making mushroom vortices that eject jet fluid at M_j = 2.5. The geometries differ (extensions vs splitter plate) and my reading of Fig. 1 is uncertain, so treat this as a point to check, not a contradiction.
- **Feedback-loop interpretation:**
  - The thick-lip result (screech appearing at M_j = 2.2 with a 4.4 cm lip; p. 8) is a direct receptivity effect and fits the guided-jet-mode closure picture ([edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md); [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)), where lip geometry sets how well the upstream wave regenerates the KH wavepacket. It parallels the lip sensitivity of impinging-jet resonance (Weightman et al. 2019: [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md)).
  - A one-sided cutout both moves the effective receptivity point on one wall and adds streamwise vorticity that disorganises the KH wave. The paper attributes suppression to the vortices/mixing; the receptivity/phase explanation is **my interpretation**, not the paper's. With schlieren you could tell them apart (tone gone but KH wavepacket still coherent → loop phase; wavepacket itself weakened → vortex/mixing).
  - The screeching baseline at M_j = 1.75 is described as **flapping** (p. 7), with alternating one-sided entrainment. This is exactly the case where block-averaged views mislead.
- **Methods by data type:**
  - The images are 50 uncorrelated condensation snapshots, the non-time-resolved case. The paper's "instantaneous-then-average" mixing area is a sensible statistic for a flapping jet. In the user's workflow, POD of such snapshots (or of PIV), using mode pairs to recover the flapping phase, would extract the antisymmetric screech structure that the mean image smears.
  - The microphone data (100 kHz, 100 × 4096 blocks, two mics on major and minor axes) are time-resolved but only OASPL is reported. With the same setup one could add cross-spectral phase between the mics, SPOD/BMD across mic arrays to separate tone, harmonics and BBSAN, and Hilbert envelopes or HPOD of SPOD-reconstructed tone content. The latter would show whether "substantially reduced" screech (nozzle 4) is weaker-but-steady or intermittent / mode-switching — something averaged spectra cannot reveal.
  - Caveats: non-anechoic room, a single 90° station (screech fundamental peaks near 150°, p. 8), and mixing areas that depend on ambient humidity.
- **Modelling side:** the paper's only model is the inviscid tilting argument; it does not test the oblique-mode prediction with any stability calculation. Natural extensions are a local/biglobal stability or resolvent analysis of a rectangular base flow with a one-sided cutout (cf. [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md) for biglobal resolvent machinery), and LES of rectangular jets ([bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md)). The lift-up mechanism ([pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md)) offers a linear framework for how streamwise vortices produce streaks and cross-section deformation, complementary to this paper's vorticity-tilting picture. Later Samimy-group rectangular-jet work: [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md), [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md).
- **Candidates for `/add-paper`:** Samimy, Kim & Clancy AIAA 97-0146 (ref. 45, fuller noise data); Kim, Samimy & Erskine AIAA 98-0696 (ref. 16, thrust and further stations); Zaman 1996 JFM 316 (ref. 32, axis switching and corner vortices); Raman 1996 AIAA 96-0643 (ref. 23, rectangular-jet screech with oblique shock cells); Norum 1983 (ref. 18, screech suppression and directivity).
