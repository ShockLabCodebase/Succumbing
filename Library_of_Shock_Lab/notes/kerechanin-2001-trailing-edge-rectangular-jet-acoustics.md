---
key: "kerechanin-2001-trailing-edge-rectangular-jet-acoustics"
title: "Effects of Nozzle Trailing Edges on Acoustic Field of Supersonic Rectangular Jet"
authors: ["Kerechanin, II, C. W.", "Samimy, M.", "Kim, J.-H."]
year: 2001
type: "article"
venue: "AIAA J. 39(6), 1065–1070"
bib: {"journal": "AIAA Journal", "volume": "39", "number": "6", "pages": "1065--1070"}
doi: "10.2514/2.1418"
arxiv: ""
pdf: "non-axisymmetric-and-twin-jets/Kerechanin-EtAl_2001_Effects-Of-Nozzle-Trailing-Edges-On-Acoustic-Field-Of-Supersonic-Rectangular-Jet.pdf"
version: "published"
unverified: []
group: false
facility: "OSU GDTL anechoic chamber"
data: ["microphones-far"]
methods: ["PSD"]
flow: ["rectangular-jet", "supersonic", "underexpanded", "ideally-expanded", "overexpanded"]
phenomena: ["screech", "BBSAN", "mixing-noise", "noise-control"]
params: {"M_d": "2.0 (1.93 measured)", "M_j": "1.75, 2.0, 2.5", "AR": "3", "D_eq": "18.6 mm"}
topics: ["non-axisymmetric-and-twin-jets", "jet-noise-mechanisms", "screech"]
related: ["samimy-1998-rectangular-jet-trailing-edge-control", "esfahani-2021-coupling-modes-twin-rectangular-jets", "esfahani-2021-control-twin-rectangular-jet-coupling", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets", "krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet", "samimy-2006-plasma-actuators-high-speed-jet-flow-noise-control"]
cites: []
summary: "AR-3 Mach 2 rectangular jet with trailing-edge cutouts: up to 12 dB quieter at 30° when underexpanded; overexpanded screech removed by one-sided cuts, amplified by symmetric ones"
---
# Effects of Nozzle Trailing Edges on Acoustic Field of Supersonic Rectangular Jet

- **Authors:** C. W. Kerechanin II, M. Samimy, J.-H. Kim (The Ohio State University)
- **Source:** AIAA Journal 39(6), 1065–1070, June 2001. DOI 10.2514/2.1418. Received May 2000. An earlier version is AIAA Paper 2000-0086, and the full data set is in Kerechanin's 2000 M.S. thesis (refs. 27–28).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/non-axisymmetric-and-twin-jets/Kerechanin-EtAl_2001_Effects-Of-Nozzle-Trailing-Edges-On-Acoustic-Field-Of-Supersonic-Rectangular-Jet.pdf` (6 pp.). Page refs below are PDF pages: p. 1 = journal p. 1065, through p. 6 = p. 1070.
- **Tags:** rectangular jet, non-axisymmetric nozzle, aspect ratio 3, Mach 2, screech, broadband shock-associated noise, mixing noise, passive control, trailing-edge cutouts, streamwise vortices, nozzle symmetry, anechoic chamber, far-field acoustics, OASPL, perceived noise level

## Summary
The paper reports far-field acoustic measurements of an aspect-ratio-3, Mach 2 rectangular jet. The nozzle's trailing-edge extensions had rectangular or oblique cutouts, either at the centre or at the side, and on one wall (asymmetric) or on both walls (symmetric). The jets were run underexpanded (M_j = 2.5), ideally expanded (M_j = 2.0) and overexpanded (M_j = 1.75). The measurements were made in a new modular anechoic chamber at OSU, using three microphones in a plane normal to the jet at 90°, 60° and 30°. When the jet is underexpanded, streamwise vortices generated at the cutouts increase mixing and lower the noise at 30° by up to 12 dB. When the jet is ideally expanded, nothing changes. When it is overexpanded, the effect on screech depends on symmetry: single-side cutouts reduce or remove the screech tone, while double-side cutouts (except OS) amplify it and raise its frequency. The authors put this down to breaking or keeping the symmetry of the shock cells about the major axis. They support the explanation only by turning screech frequencies into shock spacings with a Harper-Bourne & Fisher relation. The work is entirely experimental, with no modelling or simulation.

## Key findings
- **Flow-field context** (from Kim & Samimy 1999, shown as Fig. 4 at x = 1 D_eq; p. 3):
  - At M_j = 2.5, a spanwise pressure gradient over the cutouts makes streamwise vortices. Side cutouts (RS, OS) make kidney-type vortices that pull ambient air in. Centre cutouts (RC, OC) make mushroom-type vortices that push jet fluid out.
  - At M_j = 1.75, an adverse pressure gradient separates the flow inside the nozzle. This prevents streamwise vortices, and mixing increases only slightly.
  - At M_j = 2.0, there are no vortices and no extra mixing.
- **Underexpanded, 30°, double-side** (Fig. 5, p. 3): noise falls by up to 12 dB over most of the spectrum. OC, OS and RC give the largest drop over 1.5–80 kHz. RS drops less above about 10 kHz. The authors link this to lower jet velocity from faster mixing, because large-scale mixing noise dominates at 30° (p. 3).
- **Why RS behaves differently** (Fig. 6, p. 4): RS mixes strongly early, but the mixing area stops growing downstream because its growing kidney vortices interfere destructively. The authors argue that this early cascade to small scales adds high-frequency noise, which explains why RS is louder than the others above 10 kHz.
- **Underexpanded, other angles** (p. 4): at 60°, noise above 10 kHz falls substantially for every nozzle except RS, with a slight rise at low frequencies. At 90°, there are only small changes between 4 and 10 kHz (slightly lower amplitude and a shift in frequency).
- **Ideally expanded** (Fig. 7, p. 4): no measurable change at any angle, consistent with no change in mixing.
- **Overexpanded, 30°** (p. 4): a small reduction in low-frequency mixing noise, mostly for OC and RC.
- **Overexpanded, 90°, single-side (asymmetric)** (Fig. 8, p. 4):
  - Screech is reduced for RS and practically eliminated for OS, RC and OC.
  - Mechanism proposed: the cutout breaks the symmetry of the shock cells about the major axis, which weakens the shocks and the acoustic feedback.
  - BBSAN falls for RC and OC, and only slightly for RS and OS.
  - Mixing noise falls by up to 7 dB in the 2–10 kHz range for every modification.
- **Overexpanded, 90°, double-side (symmetric)** (Fig. 9, p. 4–5):
  - Screech is stronger than for BB with RS, RC and OC. OS still reduces it. The authors attribute the return of screech to the restored symmetry.
  - Every nozzle except OS raises the screech frequency.
  - For RC and OC, BBSAN rises above the BB level, adding high-frequency noise as tabbed nozzles do. The paper ties this to the stronger screech. RS and OS leave BBSAN almost unchanged.
- **Screech frequencies and inferred shock spacing** (eq. 4, p. 5):
  - Tones: BB 7600 Hz, RS 8100 Hz, RC/OC 11 kHz, OS 7100 Hz.
  - Inferred spacing L_SS: 20.3, 19.0, 14.0 and 21.7 mm.
  - Interpretation: RS, RC and OC compress the shock cells, possibly making the shocks stronger. OS stretches them, possibly making them weaker, and does so for both single- and double-side versions (p. 5). The OS tone drops by 500 Hz (p. 6).
- **OASPL, underexpanded, 30°, double-side** (Fig. 10, p. 5):
  - Large reductions on both minor-axis microphones for every modification.
  - On the sideline microphone (mic 2), only RS and OS lower the noise, by up to about 5 dB. These are the nozzles that pull in ambient air and flatten the mixing layer on that side.
  - OASPL changes at 60° and 90° are small.
- **OASPL, overexpanded** (p. 5): at 90°, OASPL falls slightly for asymmetric nozzles and rises for symmetric ones. At 30°, both types reduce it.
- **PNL at full scale** (Fig. 11, p. 5–6):
  - PNL exceeds OASPL by about 10 dB. The authors attribute this to the heavy weighting of high frequencies.
  - The underexpanded reductions are about the same size as in OASPL. Overexpanded changes from BB are smaller than in OASPL.
  - Their conclusion: a full-size nozzle would see less screech reduction but would keep the large mixing-noise reduction downstream.

## Setup / method
- **Facility:** a modular anechoic chamber in the Gas Dynamics and Turbulence Laboratory at OSU (p. 1–2). This is not Shock Lab group work.
  - Eckel wedges give a 250 Hz cutoff.
  - Wedge blocks can be removed for camera access, so flow and acoustic measurements can be taken together. The floor is removable for hemi-anechoic tests.
  - Qualified to ANSI S12.35 using eight microphone paths from a central white-noise source. SPL decay follows the inverse-square law to within 1.0–1.5 dB (Fig. 1, p. 1–2).
- **Air supply** (p. 2):
  - Storage: two four-stage compressors filling 42.5 m³ of tanks at 16.5 MPa. A 10.2 cm main line feeds a 5.1 cm line to the jet.
  - Pressure: a pressure regulator sets the stagnation-chamber pressure.
  - Flow conditioning: a 24.1 cm-diameter pipe, 91.4 cm long, with a perforated plate (37% porosity) and two screens. This contracts into a 6.0 cm pipe, 40.6 cm long.
  - Nozzle mounting: a circular-to-rectangular adapter feeds the nozzle, which is mounted with its major axis vertical.
- **Nozzle** (p. 2):
  - AR 3, h × W = 0.95 × 2.86 cm (3/8 × 1 1/8 in.), D_eq = 18.6 mm. Re is of order 1.3×10⁶.
  - Design Mach 2.0, measured Mach 1.93. The same nozzle was used in refs. 24 and 26.
  - The cutouts are on **trailing-edge extensions** so that the flow is fully expanded before it reaches them (Fig. 2a).
  - From Fig. 2b, the extensions are on the wide walls. A single-side cutout therefore breaks symmetry about the major-axis plane.
  - The four cutouts were chosen as the best performers from earlier visualisation and preliminary acoustics (refs. 23–24): rectangular centre (RC), rectangular side (RS), oblique centre (OC) and oblique side (OS). The oblique cuts are at 45° (Fig. 2b).
  - Each cutout was made single-side and double-side, giving 8 modified nozzles plus the baseline BB.
- **Conditions** (p. 2): M_j = 1.75, 2.0 and 2.5. The paper gives no NPR. Isentropic values (γ = 1.4, my calculation) are about 5.3, 7.8 and 17.1.

  > Because the measured exit Mach number is 1.93, the "ideally expanded" M_j = 2.0 case is really slightly underexpanded (p_e/p_∞ ≈ 1.11, my estimate). The paper doesn't comment on this.
- **Microphones** (p. 2, Fig. 3):
  - Three 1/4-in. B&K 4135 microphones with 2670 preamplifiers and 5935 supplies.
  - They sit in a plane normal to the jet: mics 1 and 3 on opposite sides along the minor axis, and mic 2 on the floor along the major axis (the "sideline" microphone).
  - The whole plane was moved to three streamwise stations so the microphones are at 90°, 60° and 30° from the jet axis. The radial distance is 40 D_eq (74.5 cm) from the nozzle axis.
  - The 43.0 cm and 129.0 cm dimensions in Fig. 3 match the streamwise offsets 74.5/tan 60° and 74.5/tan 30°. So the polar distance from the exit grows from 74.5 cm at 90° to about 149 cm at 30°. The paper doesn't mention any correction to a common radius.
- **Acquisition** (p. 2–3):
  - 3 microphones × 3 angles × 9 nozzles × 3 conditions = 81 data sets.
  - NI PC-416 board sampling at 190 kHz. 100 blocks of 8192 points per microphone (4.31 s), giving Δf = 23.2 Hz.
  - Low-pass filter (DL Instruments 4302) at 125 kHz, used for anti-aliasing.
  - Calibrated with a B&K 4231 before each set. The protective grids were removed to cure an anomalous signal above 50 kHz.

  > As printed, a 125 kHz anti-alias cutoff is above the 95 kHz Nyquist frequency of 190 kHz sampling (p. 3). Check the PDF and thesis before relying on content near 95 kHz.
- **Data reduction** (p. 3):
  - Block-averaged FFT spectra from an in-house MATLAB code. Window and overlap are not stated.
  - OASPL is the logarithmic sum of SPL over frequency.
  - Frequencies are scaled to a full-size nozzle (800 K, 0.3 m exit) by Strouhal similarity (eq. 1), taking the test jet as 288 K.
  - The scaled spectra are converted to third-octave bands (50–8000 Hz, 23 bands) and then to noys, which give PNL through eqs. 2–3.
  - No amplitude or distance scaling is described for the full-size PNL.
- **Time resolution:** the microphone signals are time-resolved, but only block-averaged spectra, OASPL and PNL are reported. There are no cross-spectra, coherence or phase between microphones, and no time-local (Hilbert or wavelet) analysis. The flow images (Fig. 4, and the mixing area in Fig. 6) are cross-sectional snapshots of condensed water from ref. 24. They are not time-resolved, and the normalisation of the mixing area is defined in ref. 24, not here.
- **Modelling and simulation:** none. The only theory used is semi-empirical:
  - Strouhal scaling (eq. 1).
  - The SAE-style PNL procedure (eqs. 2–3).
  - The Harper-Bourne & Fisher (1974) screech/shock-spacing relation, used backwards to infer L_SS from the measured tone frequency (eq. 4).

## Key equations
- Equivalent diameter (nomenclature, p. 1): $D_{eq} = (4hW/\pi)^{1/2}$, which gives 18.6 mm for h = 0.95 cm and W = 2.86 cm (checked).
- Frequency scaling to full size (eq. 1, p. 3): $f_{actual} = 0.1033\, f_{experimental}$. This matches $(D_{eq}/D_{actual})(T_{actual}/T_{exp})^{1/2} = (18.6/300)(800/288)^{1/2} = 0.1033$. I derived this check from the stated quantities; the paper doesn't write the formula out.
- Total perceived noise (eq. 2, p. 3): $N = 0.85\,n_{max} + 0.15\sum_{i=1}^{23} n_i$, where n_i are the noy values in the 23 third-octave bands from 50 to 8000 Hz.
- Perceived noise level (eq. 3, p. 3): $\mathrm{PNdB} = 40 + \dfrac{10}{\log_{10}2}\log_{10}N$.
- Shock-cell spacing from screech frequency (eq. 4, p. 5; Harper-Bourne & Fisher 1974): $L_{SS} = \dfrac{c\,M_c}{f_f(1+M_c)}$, where c is the ambient sound speed and M_c the convective Mach number. This is the Powell-type relation $f = U_c/[L_{SS}(1+M_c)]$ with $U_c = cM_c$.

> Eqs. 1–4 were rebuilt from garbled text and checked against rendered page images. The paper doesn't give the M_c value used in eq. 4. All four quoted L_SS values satisfy L_SS·f_f ≈ 1.54×10² m s⁻¹, so one fixed M_c was used, about 0.83 if c = 340 m/s (my back-calculation). The "shock-cell compression" is therefore just 1/f by construction. It isn't an independent measurement of shock spacing.

## Data tables
**Overexpanded (M_j = 1.75) primary screech tone at 90°, double-side nozzles** (p. 5)

| Nozzle | f_f (Hz) | L_SS from eq. 4 (mm) | St = f D_eq/U_j (my est.) | Screech level vs BB |
|---|---|---|---|---|
| BB | 7600 | 20.3 | 0.30 | reference |
| RS | 8100 | 19.0 | 0.32 | higher |
| RC | 11000 | 14.0 | 0.44 | higher |
| OC | 11000 | 14.0 | 0.44 | higher |
| OS | 7100 | 21.7 | 0.28 | lower |

> The paper's text places these frequencies in its discussion of the double-side nozzles. St assumes T₀ = 288 K, so U_j ≈ 469 m/s (my calculation, not in the paper). The jump from 7.6 to 11 kHz (×1.45) for RC/OC is large for a shock-spacing change alone. A change of screech mode or stage is an alternative that the paper doesn't consider.

**OASPL and PNL, underexpanded (M_j = 2.5), 30°, double-side** (Figs. 10–11, p. 5). Values are read from the figures, to about ±0.5 dB.

| Nozzle | OASPL mic 1 / 2 / 3 (dB) | PNL mic 1 / 2 / 3 (PNdB) |
|---|---|---|
| BB | 134.8 / 137.5 / 134.8 | 142.6 / 145.4 / 142.5 |
| RC | ~127.3 / 138.5 / ~127 | 135.1 / 146.6 / 134.0 |
| RS | ~127.3 / 133.2 / 126.5 | 137.1 / 143.3 / 136.0 |
| OC | ~127.6 / ~138 / 127.4 | 134.2 / 147.0 / 133.7 |
| OS | 126.9 / 135.5 / 127.0 | 134.8 / 144.4 / 135.2 |

> These are figure read-offs; check against the figure before quoting. On the minor-axis microphones, OASPL falls by about 7–8 dB. On the sideline microphone (mic 2), RC and OC are about 0.5–1 dB louder than BB. Fig. 11 labels its axis "PNL, noys", but the values are in PNdB.

## Figures worth remembering
- **Fig. 1 (p. 2):** SPL decay along one chamber path against the inverse-square law, at 250 Hz–10 kHz.
- **Fig. 2 (p. 2):** the nozzle block, showing that the cutouts are on the extensions, and sketches of BB/RC/RS/OC/OS in single- and double-side versions.
- **Fig. 3 (p. 2):** the microphone ring and the 90°/60°/30° stations.
- **Fig. 4 (p. 3):** condensation images of the cross-section at 1 D_eq for every nozzle and M_j (from ref. 24). Shows kidney vortices for side cuts and mushroom vortices for centre cuts at M_j = 2.5.
- **Fig. 5 (p. 3):** underexpanded spectra at 30° for the double-side nozzles. Each is offset by 20 dB and overlaid on a smoothed (Butterworth-filtered) BB spectrum.
- **Fig. 6 (p. 4):** normalised mixing area at x/D_eq = 1, 2, 4, 8 (underexpanded, double-side; from ref. 24). Approximate values:
  - BB: about 1.4–1.7.
  - RS: about 3.2 early, falling to about 2.9.
  - OS: rises to about 3.5 at 4 D_eq.
  - RC: rises to about 3.15 at 8 D_eq.
  - OC: rises from about 1.7 to 2.5.
- **Fig. 7 (p. 4):** ideally expanded spectra at 30°, single-side, showing no change from BB.
- **Fig. 8 (p. 4):** overexpanded spectra at 90°, single-side. The BB tones at about 7.6 kHz and its harmonics disappear or weaken.
  > From the figure, the BB tone near 15 kHz looks at least as strong as the 7.6 kHz fundamental at mic 1. Check the PDF.
- **Fig. 9 (p. 5):** overexpanded spectra at 90°, double-side. RC and OC have strong tones near 11 and 22 kHz, and RS near 8.1 and 16 kHz. Only OS stays tone-weak.
- **Fig. 10–11 (p. 5):** OASPL and PNL for each microphone (underexpanded, 30°, double-side).

## Notation
- BB: baseline nozzle. RC/RS: rectangular centre/side cutout. OC/OS: oblique (45°) centre/side cutout.
- Single-side means asymmetric; double-side means symmetric about the major-axis plane.
- D_eq: equivalent diameter. h, W: exit height and width. M_j: fully expanded Mach number.
- f_f: primary screech frequency. L_SS: shock-cell spacing. M_c: convective Mach number. c: ambient sound speed.
- N, n, n_max: total, band and maximum perceived noise (noys).
- Mics 1 and 3 are on the minor axis on opposite sides; mic 2 is the major-axis (sideline) microphone. All spectra shown are from mic 1.
- Polar angle is measured from the downstream jet axis.

## Relevance to this project
This project analyses resonance and feedback in experimental data (schlieren, acoustics, PIV), including from non-axisymmetric nozzles; see CLAUDE.md.
- **Non-axisymmetric screech control by geometry:** the main result is that the trailing-edge geometry's **symmetry about the major axis** decides whether screech is suppressed (asymmetric) or amplified with a higher frequency (symmetric) (p. 4–6). This is a clean test case for feedback-loop thinking.
  - In the guided-jet-mode closure picture ([edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md); [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md); [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md)), a one-sided cutout also moves the receptivity point (the effective lip) on one wall only. That would put the two sides of a flapping or varicose loop out of phase, independently of any change in shock strength. **This is my interpretation, not the paper's.**
  - It parallels the lip-geometry sensitivity of impinging-jet resonance noted in the Edgington-Mitchell 2020 note (Weightman et al. 2019).
- **Treat the shock-spacing argument with care:** the L_SS values come from inverting eq. 4 with a fixed M_c, so they carry no information beyond the tone frequency (p. 5). With time-resolved schlieren you can do this properly:
  - Measure the shock spacing directly from the mean image.
  - Measure U_c from wavenumber–frequency spectra or SPOD mode phase.
  - Then test the Powell / Harper-Bourne & Fisher relation and check whether the 7.6 → 11 kHz jump is a change of stage rather than a change of shock cells.
- **Methods by data type:**
  - The acoustic signals here are time-resolved (190 kHz, 100 × 8192-point blocks), but the paper only uses averaged spectra, OASPL and PNL. With the same three-microphone layout (mics 1 and 3 opposite on the minor axis), the user's workflow would add:
    - Cross-spectral phase between mics 1 and 3, to tell symmetric from antisymmetric (flapping) screech.
    - SPOD or BMD across the microphones, to separate the tone from BBSAN and find harmonic (triadic) coupling.
    - A Hilbert envelope or HPOD on band-passed or SPOD-reconstructed tone data. This would show whether a "reduced" tone (e.g. RS single-side) is weaker but steady, or intermittent or switching between modes. Averaged spectra can't tell these apart.
  - The condensation images (Fig. 4, Fig. 6; ref. 24) are not time-resolved snapshots. For such data, POD (with mode pairs for phase) would be the route for coherent structure, and the mixing area is just a statistic.
- **Modelling side:** the paper has none. To model trailing-edge asymmetry and screech in rectangular jets, see:
  - LES: [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md).
  - Spatial LSA of twin-jet coupling: [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md).
  - Later work from the Samimy group on rectangular-jet coupling and control: [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md) and [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md).
  - A local or global stability analysis of a rectangular base flow with a one-sided lip extension, or one built from the measured mean flow, would be the natural way to test the symmetry-breaking explanation.
- **Prequel:** [samimy-1998-rectangular-jet-trailing-edge-control.md](samimy-1998-rectangular-jet-trailing-edge-control.md) (ref. 23) gave preliminary, qualitative acoustics in a non-anechoic room. This paper is the quantitative anechoic follow-up.
  - According to this paper's introduction (p. 1), the earlier work found that overexpanded cutouts substantially reduced screech and left mixing noise unchanged.
  - Here, only **asymmetric** cutouts reduce screech; symmetric ones amplify it. Mixing noise falls by up to 7 dB at 90° for single-side nozzles.
  - Check whether this is a refinement or a contradiction against the 1998 note.
- **Facility qualification:** the anechoic chamber was checked against the inverse-square law under ANSI S12.35 (within 1.0–1.5 dB, 250 Hz cutoff; p. 1–2). Compare with [mayer-2019-bristol-aeroacoustic-wind-tunnel.md](mayer-2019-bristol-aeroacoustic-wind-tunnel.md) when qualifying the lab's acoustic setup.
- **Caveats when reusing the numbers:**
  - The microphones are at fixed radius from the jet axis, so the polar distance differs between angles.
  - The anti-alias cutoff is above Nyquist as printed.
  - No amplitude scaling is described for the full-scale PNL.
  - Which side of a single-side nozzle faces mic 1 is not stated.
- **Candidates for `/add-paper`:** Kim & Samimy 1999 (Phys. Fluids 11, 2731) and 2000 (AIAA J 38, 935), the flow-field companions. Raman 1997 (JFM 330), on rectangular-jet screech with oblique shock cells. Harper-Bourne & Fisher 1974, the source of eq. 4.
