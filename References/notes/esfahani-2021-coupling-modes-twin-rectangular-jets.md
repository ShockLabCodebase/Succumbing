---
key: "esfahani-2021-coupling-modes-twin-rectangular-jets"
title: "Coupling Modes in Supersonic Twin Rectangular Jets"
authors: ["Esfahani, A.", "Webb, N.", "Samimy, M."]
year: 2021
type: "conference"
venue: "AIAA SciTech 2021 Forum"
bib: {"booktitle": "AIAA SciTech 2021 Forum", "note": "Authors' final manuscript; AIAA paper number not printed"}
doi: ""
arxiv: ""
pdf: "non-axisymmetric-and-twin-jets/Esfahani-EtAl_2021_Coupling-Modes-In-Supersonic-Twin-Rectangular-Jets.pdf"
version: "conference"
unverified: []
group: false
facility: "OSU GDTL"
data: ["microphones-near", "microphones-far", "schlieren", "schlieren-TR"]
methods: ["PSD", "coherence", "wavelets", "statistics"]
flow: ["twin-jet", "rectangular-jet", "supersonic", "overexpanded", "ideally-expanded", "underexpanded"]
phenomena: ["screech", "coupling", "flapping", "intermittency", "directivity", "BBSAN", "standing-waves"]
params: {"M_j": "1.20–1.85", "M_d": "1.5", "NPR": "2.97, 3.67, 5.0 (detailed cases)", "AR": "2", "s/D_e": "2.25", "TR": "1"}
topics: ["non-axisymmetric-and-twin-jets", "screech"]
related: ["esfahani-2021-control-twin-rectangular-jet-coupling", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "wong-2023-steady-unsteady-coupling-twin-round-jets", "nogueira-2021-twin-jet-coupling-spatial-lsa", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "bres-2021-les-twin-rectangular-jets-plasma", "edgington-mitchell-2020-waves-in-screeching-jets", "samimy-1998-rectangular-jet-trailing-edge-control"]
cites: ["knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "samimy-2006-plasma-actuators-high-speed-jet-flow-noise-control", "tam-1995-supersonic-jet-noise"]
summary: "Baseline AR-2 twin rectangular jets, M_j 1.20–1.85: each jet flaps; out-of-phase coupling near design, in-phase underexpanded; apparent intermittency at M_j 1.35 is a 33 Hz beat"
---
# Coupling Modes in Supersonic Twin Rectangular Jets

- **Authors:** A. Esfahani, N. Webb, M. Samimy (Gas Dynamics and Turbulence Laboratory (GDTL), Aerospace Research Center, The Ohio State University)
- **Source:** AIAA SciTech 2021 Forum (virtual), 11–15 Jan 2021. This copy is the authors' final manuscript; no AIAA paper number or DOI is printed in it.
- **PDF:** `References/Paper_PDFs/non-axisymmetric-and-twin-jets/Esfahani-EtAl_2021_Coupling-Modes-In-Supersonic-Twin-Rectangular-Jets.pdf` (21 pp.)
- **Tags:** twin jets, rectangular nozzle, non-axisymmetric, screech, jet coupling, flapping (anti-symmetric) mode, frequency mismatch, beating, intermittency, standing waves, wavelet coherence, near-field acoustics, far-field directivity, BBSAN, schlieren, LAFPA baseline

## Summary
This paper gives the baseline (unforced) characterisation of a new OSU facility: two closely spaced, AR = 2, Md = 1.5 converging-diverging rectangular nozzles, built to test later plasma-actuator (LAFPA) control of twin-jet coupling. Six near-field microphones give wavelet coherence and phase between pairs of microphones over Mj = 1.20–1.85. A microphone pair above and below one jet identifies that jet's screech mode, and a pair above both jets identifies the coupling between them. Each jet flaps (anti-symmetric screech) at almost every Mj. The jets couple out of phase in the overexpanded regime near design and in phase when underexpanded. No coupling is seen in the major-axis (horizontal) plane. At low overexpanded Mj the two jets screech at slightly different frequencies (33 Hz apart at Mj = 1.35). The result is a beat pattern, apparently intermittent screech and a phase that keeps drifting, even though the time-averaged coherence is high. Far-field maps show how the coupling changes noise directivity. Time-averaged schlieren statistics show standing waves only in the Mj ranges where screech coherence is rising. The paper is purely experimental and contains no modelling or simulation.

## Key findings
- **Strouhal scaling** (p. 7–8, 18; Fig. 6):
  - Using the area-equivalent diameter, St = f De/u_j, collapses screech data from this facility and from published single and twin rectangular jets with AR = 2–5, both C and C-D nozzles. Scaling with the nozzle height h does not collapse them as well.
  - High-AR data (AR = 9.63, 10, 16.7) collapse with neither scaling. St rises with AR at fixed Mj, so De becomes a less useful length scale as AR grows (p. 7–8).
  - C-D nozzle data scatter more when overexpanded, and this facility's screech frequency varies more from day to day there. The authors suggest the cause may be unsteady boundary-layer separation inside the nozzle at overexpanded conditions (p. 7–8).
- **Screech onset and frequency mismatch** (p. 8):
  - Screech first appears at Mj = 1.20.
  - From Mj = 1.20 to 1.35 the two jets screech at different frequencies. The difference is about 140 Hz at Mj = 1.20 and falls to a minimum of 33 Hz at Mj = 1.35.
  - From Mj = 1.40 upwards the frequencies match.
- **Coupling mode, from mics 2–3 above the two jets** (p. 8; Fig. 7a):
  - Mj = 1.40–1.50: coherence stays high and the text describes the phase difference as steady at about ±π, i.e. out-of-phase coupling. However, the plotted time-averaged phase only reaches ±π at Mj = 1.50 (see the data table).
  - Mj = 1.55: coherence drops sharply just above design.
  - Mj ≥ 1.65 (underexpanded): coherence recovers to about 1 by Mj = 1.70, and the jets are strongly coupled **in phase** (0°).
  - The lower time-averaged coherence at Mj = 1.20–1.30 comes mostly from intermittent screech, which alternates between high- and low-coherence periods.
- **No coupling in the major-axis plane** (p. 9): neither the microphones nor the high-speed schlieren (not shown) gave any sign of lateral flapping or horizontal coupling. This contrasts with reports of lateral modes by Zilz & Wlezien (1990) and Walker (1990).
- **Screech mode of each jet, from mics 2–6 and 3–5 above and below one jet** (p. 9; Fig. 7b–c):
  - The phase is close to π at almost every Mj, even where coherence is low (e.g. Mj = 1.20, 1.30, 1.50, 1.65). Each jet therefore flaps anti-symmetrically throughout the test range.
  - A symmetric mode never appears. This agrees with Raman & Taghavi's (1998) high-AR twin jets but not with single-jet studies that saw both modes (p. 9).
  - The coupling coherence between the jets is almost never much higher than either jet's own screech coherence (p. 9).
  - The two jets' coherences differ markedly only in the frequency-mismatch range Mj = 1.20–1.35. In the underexpanded range they never do (p. 9).
- **Screech amplitude** (p. 9; Fig. 7d): the near-field screech amplitude tracks each jet's screech coherence.
  - Where coherence is high, switching from out-of-phase to in-phase coupling raises the screech peak by about 5 dB. Zilz & Wlezien reported a 15 dB rise for this switch and Raman & Taghavi 20 dB; Walker found little change.
  - No single-jet reference was measured (p. 9).
  - Screech amplitude and coherence are lowest near the design Mach number (p. 19).
- **Mj = 1.35: beating, not true intermittency** (p. 10–11; Figs. 8–9):
  - The screech peak is at St = 0.40 and is strongly intermittent in the mic 2 spectrogram.
  - Time-averaged coherence is high, but the error bars on the phase are large.
  - The time-resolved wavelet phase cycles 0 → −π → +π → 0 with a period of about 0.030 s, which matches the 33 Hz mismatch.
  - Each microphone hears both jets. The two slightly detuned tones interfere, so the beat amplitude is largest when the phase difference is 0 and smallest at ±π.
  - So despite high coherence, each jet keeps its own frequency. This contradicts Raman & Taghavi's statement that coupled jets always share one frequency. The authors suggest each jet's own screech is too coherent for the coupling to override (p. 11).
- **Mj = 1.50 (design)** (p. 11–13; Fig. 10): screech peaks are weaker than at Mj = 1.35 but steadier, with no frequency mismatch. The coupling phase stays at ±π, with small error bars.
- **Mj = 1.70 (underexpanded)** (p. 13; Fig. 11): screech at St = 0.2 is steady in time, coherence is high, and the phase is steady at 0 (in phase).
  - The individual screech peak amplitudes are similar to those at Mj = 1.35, but they are steadier in time. This holds for all Mj from 1.70 to 1.85.
- **Far-field directivity** (p. 15; Fig. 12):
  - *Mj = 1.35:*
    - The directivity of mixing noise barely depends on φ, so shielding has little effect on it. Its peak is slightly higher at φ = 0°.
    - The fundamental f is strong at φ = 0°. At φ = 90°, 2f (the paper's "first harmonic") and some 3f dominate, and 2f radiates mainly to the sideline. The authors explain this as the out-of-phase flapping giving two pressure events per cycle at φ = 90°, θ = 75–120°.
    - Weak BBSAN appears only at θ = 100–120°, φ = 90°.
  - *Mj = 1.50:*
    - The mixing-noise lobe is louder than at Mj = 1.35 even though the jet spreads less, so spreading rate and mixing noise are not directly linked.
    - The minor-axis lobe is larger, which suggests shielding along the major axis.
    - Harmonics peak along the minor axis at θ = 80–120°. A stronger higher-frequency BBSAN lobe appears at θ = 90–120° along the minor axis only, so shielding may also block shock-associated noise.
    - A secondary BBSAN lobe sits near the second screech harmonic at θ = 105–120° (Fig. 12d).
  - *Mj = 1.70:*
    - The screech tone has strong downstream directivity.
    - The mixing-noise peak at St = 0.1–0.3 is broader at φ = 90°.
    - Unexpectedly, the screech fundamental and harmonic are stronger along the **major** axis, even though the jets are coupled in phase.
    - BBSAN (St = 0.3–0.5) spans θ = 90–120° at φ = 0° but only θ = 105–120° at φ = 90°. It becomes comparable to mixing noise.
  - The conclusions summarise the BBSAN trend as higher on the minor axis at Mj = 1.35 and 1.50 and reversed at Mj = 1.70 (p. 19).
- **Standing waves, from time-averaged schlieren statistics** (p. 15–17; Figs. 14–15):
  - Standing waves (SWs) appear at Mj = 1.20–1.35 and 1.65–1.80. Those are the ranges where screech coherence is *rising*. SWs disappear where coherence and amplitude peak in each regime: absent from Mj ≈ 1.40 to 1.60 and reappearing at 1.65.
  - The authors believe this is the first report linking SWs to screech coherence, and the first observation of SWs in a rectangular jet (p. 16).
  - SWs appear only in the minor-axis (vertical, flapping) plane. They never appear in the view showing both jets side by side (Fig. 15), which is consistent with the lack of horizontal screech or flapping (p. 16).
  - **Mj = 1.35** (p. 16; Fig. 14a):
    - Centreline fluctuations start to fall at about 6De, the likely end of the potential core.
    - SW crests generally sit *between* shock-cell tips; one nearly coincides with a tip at x/De = 1.8. This matches Panda (1999).
    - The intensity fluctuation differs by about 20% between crest and trough.
  - **Mj = 1.50** (p. 16; Fig. 14b):
    - There are no SWs, and the furthest fluctuation maximum is at x/De = 7, i.e. a longer core.
    - At x/De = 9 the jet edge is at about 2.3De, against 2.9De at Mj = 1.35. That is a 20.7% lower spreading rate, which checks: (2.9 − 2.3)/2.9 = 0.207.
  - **Mj = 1.70** (p. 16–17; Fig. 14c):
    - SWs are well defined, and the furthest fluctuation maximum is at x/De = 8.2.
    - The crest (x/De = 3.4) and trough (x/De = 4.7) differ by 9.7%.
    - Crest spacing is about 2De, against about 1De at Mj = 1.35. It grows with shock-cell length, as Knast et al. (2018) found for twin round jets, but unlike Panda's (1999) single converging round jet (p. 17).
- **Spreading and coupling claim** (p. 1, 16–17): the abstract states that vertical-plane spreading is higher when the jets are coupled out of phase, citing Shih et al. (1992) and Alkislar et al. (2003). The supporting comparison is Mj = 1.35 against Mj = 1.50 (see the flags under Figures).

## Setup / method
- **Facility:** OSU GDTL jet anechoic chamber (not a Shock Lab group facility) (p. 5).
  - The chamber is 6.2 × 5.6 × 3.4 m with a 160 Hz cut-off.
  - Air supply: 43 m³ storage at up to 16 MPa, dried and filtered, with a computer-controlled plenum valve.
  - The rig can heat to a total temperature ratio of 2.5, but all tests here are at TTR = 1 (unheated).
  - The nozzle sits in a co-flow duct (up to 100 m/s) wrapped in acoustic foam. The co-flow speed used in these tests is not stated; treat the tests as static.
  - The nozzle assembly rotates in 15° steps of the azimuthal angle φ (p. 5).
- **Nozzles** (p. 4; Figs. 2–3):
  - Two sharp-throated, "military-style" C-D rectangular nozzles with Md = 1.5 and AR = 2.
  - Exit w = 24.13 mm and h = 12.06 mm, giving De = 19.25 mm. Check: √(4wh/π) = 19.25 mm.
  - Centre-to-centre spacing s = 43.38 mm = 2.25De, so s/w ≈ 1.80 and s/h ≈ 3.6.
  - The design is modular, so spacing, Md and actuators can be changed.
  - Boron-nitride actuator blocks hold the LAFPA electrodes (1 mm tungsten, flush with the wall) in a groove 1 mm wide and 0.5 mm deep, about 1 mm upstream of the exit.
  - The grooves and electrodes are present in this baseline so that it matches the later forced cases. Earlier work [29] found the groove does not affect control authority.
- **Ideal expansion:** a far-field sweep from Mj = 1.40 to 1.60 in steps of 0.05 was run at φ = 90°, θ = 30°, 90° and 120°.
  - From the trends in screech and BBSAN (spectra not shown), the authors put ideal expansion at Mj ≈ Md = 1.50.
  - The throat shock system makes this harder to judge (p. 4).
  - Shock cells and screech are still present at Mj = 1.50 (Figs. 10, 14b, 15b).
- **Coordinates** (Fig. 3a, p. 5): x is streamwise, y is the minor axis (vertical) and z is the major axis (horizontal, through both jets). φ is measured from z towards y, so φ = 0° is the major-axis plane and φ = 90° the minor-axis plane. The polar angle θ is measured from the downstream jet axis.
- **Conditions:** acoustic sweep from Mj = 1.20 to 1.85 and schlieren sweep from 1.20 to 1.90, both in steps of 0.05 (p. 5, 15). Three cases are examined in detail (p. 5):

  | Case | NPR | Mj | Regime | Coupling | Screech St |
  |---|---|---|---|---|---|
  | 1 | 2.97 | 1.35 | overexpanded | phase drift (33 Hz mismatch) | 0.40 |
  | 2 | 3.67 | 1.50 | ~ideally expanded | out of phase (±π) | ≈0.30 (Fig. 6) |
  | 3 | 5.0 | 1.70 | underexpanded | in phase (0) | 0.2 |

  > NPR 5.0 does not quite match Mj = 1.70: isentropic NPR(1.70) = 4.94, and NPR 5.0 gives Mj ≈ 1.71. NPR 2.97 and 3.67 match Mj = 1.35 and 1.50 exactly.
- **Near-field array** (p. 5; Fig. 4):
  - Six B&K 4939 ¼-in. microphones on a 38 × 38 cm frame, wrapped in foam.
  - All are at x/De = 0 (the exit plane) and r/De = 4 from the nearest jet centreline. This is taken to be outside the hydrodynamic near field, so the microphones record only acoustics.
  - Numbering runs counter-clockwise looking upstream: 1 right horizontal, 2 above the right jet, 3 above the left jet, 4 left horizontal, 5 below the left jet, 6 below the right jet.
  - Pairs used: **2–3** gives the inter-jet coupling (0 = in phase, π = out of phase in the vertical plane). **2–6** and **3–5** give each jet's screech mode (π = anti-symmetric/flapping, 0 = symmetric).
- **Far-field array** (p. 6; Fig. 5):
  - Eight B&K 4939 ¼-in. microphones at θ = 30°, 40°, 50°, 60°, 75°, 90°, 105° and 120°, aimed at the midpoint between the nozzles.
  - Distances are 1.90–3.78 m (98.9–196.5De). Data are propagated spherically to 100De.
  - Measurements are at φ = 0° and 90°.
- **Acquisition** (p. 7):
  - Nexus 2690 conditioners, band-pass 20 Hz–100 kHz; calibration with a B&K 4231 calibrator.
  - Sampling at 200 kHz.
  - Near field: 100 blocks of 32,768 samples, i.e. 0.164 s per block and 16.4 s in total. The 0.16 s window in Figs. 8–11 matches one block.
  - Far field: 400 blocks of 8,192 samples, giving Δf = 24.4 Hz and 16.4 s in total.
  - PSD is given as SPL in dB re 20 µPa.
- **Wavelet coherence and phase** (p. 7):
  - Morlet wavelet coherence and phase are computed between microphone pairs, so this needs **time-resolved** signals.
  - Time averages of coherence and phase use only instants where coherence > 0.7. This conditional average keeps phase only where it is reliable.
  - Phase is shown as phase/π, with error bars (presumably the standard deviation in time).
  - Wavelet scales, smoothing and cone-of-influence handling are not reported.
  - Coherence is shown as zero below St ≈ 0.1 in Figs. 8c, 10c and 11c, which looks like a masked low-frequency region.
- **Time-averaged schlieren** (p. 6–7):
  - Z-type system with a vertical knife edge, so it is sensitive to the axial gradient dρ/dx.
  - 5.5 MP LaVision Imager sCMOS camera: 300 images of 2500 × 2150 px at 50 fps, so **not time-resolved**.
  - Light source: HPLS-36 pulsed LED with a 500 ns pulse, short enough to freeze the highest screech frequency.
  - DaVis 8.2 computes the mean and the standard deviation σ of intensity; MATLAB then plots log₁₀σ to show standing waves.
  - This is the method of Edgington-Mitchell et al. (2015) for schlieren and Bell et al. (2018) for PIV (p. 16).
- **High-speed schlieren** (p. 6):
  - Phantom v1210 at 60,000 fps: 1000 frames of 512 × 340 px per case, cropped to the shock system with a Nikon zoom lens.
  - It is used only qualitatively here, to rule out lateral flapping (p. 9, 16). No modal analysis is done.
- **Modelling and simulation:** none in this paper.
  - The text names numerical studies of the very similar Cincinnati AR = 2 twin-jet geometry (Karnam et al. 2019/2020): the LES of Jeun, Wu & Lele (2020) [33], the simulations of Viswanath et al. (2020) [19] and OVERFLOW RANS/URANS by Kalagotla et al. (2020) [18] (p. 3, 7).
  - It does not compare with any of them.

## Key equations
The paper has no numbered equations. The definitions it uses:
- Screech Strouhal number: $St = \dfrac{f D_e}{u_j}$, where $u_j$ is the fully expanded jet velocity (Nomenclature, p. 1; p. 7).
- Area-equivalent diameter: $D_e = \sqrt{4wh/\pi}$ (implied by "area-based", p. 4). It gives 19.25 mm from w = 24.13 mm and h = 12.06 mm.
- Beat between detuned jets (p. 11, Fig. 9): the two tones superpose at microphone 2 as $p \approx A_1\cos(2\pi f_1 t) + A_2\cos(2\pi f_2 t + \phi_0)$. This gives an envelope period of $1/|f_1-f_2|$, about 0.030 s for 33 Hz. The paper describes this in words; the formula is mine.
- Powell's screech formula is cited (via Panda's argument that the standing-wave wavelength is the right length scale) but not written out (p. 16).

## Data tables
**Mach-number sweep** (read off Figs. 6 and 7, p. 8, 10).

| Mj | St (Fig. 6) | coupling coh. (2–3) | coupling phase/π (2–3) | right-jet coh. (2–6) | left-jet coh. (3–5) | right-jet phase/π (2–6) | screech SPL, mic 2 (dB) |
|---|---|---|---|---|---|---|---|
| 1.20 | 0.60 | 0.70 | +0.15 | 0.73 | 0.76 | +0.82 | 130 |
| 1.25 | 0.52 | 0.39 | −0.13 | 0.42 | 0.78 | +0.29 | 129 |
| 1.30 | 0.46 | 0.73 | +0.35 | 0.72 | 0.98 | +0.91 | 143 |
| 1.35 | 0.40 | 0.94 | +0.24 | 0.97 | 0.99 | +0.97 | 144 |
| 1.40 | 0.36 | 0.94 | +0.58 | 0.93 | 0.99 | −0.90 | 144 |
| 1.45 | 0.33 | 0.95 | +0.87 | 0.93 | 0.98 | −0.80 | 142 |
| 1.50 | 0.30 | 0.90 | −0.97 | 0.77 | ≈0.90 | −0.78 | 138 |
| 1.55 | 0.27 | 0.32 | −0.68 | 0.49 | 0.44 | −0.64 | 131 |
| 1.60 | 0.25 | 0.52 | −0.79 | 0.78 | 0.79 | −0.75 | 135 |
| 1.65 | 0.22 | 0.73 | 0 | 0.78 | 0.81 | −0.78 | 133 |
| 1.70 | 0.20 | ≈1 | 0 | 0.98 | ≈1 | −0.95 | 144 |
| 1.75 | 0.19 | ≈1 | 0 | ≈0.99 | ≈1 | −0.96 | 148 |
| 1.80 | 0.18 | ≈1 | 0 | ≈0.99 | ≈1 | −0.97 | 151 |
| 1.85 | 0.17 | ≈1 | 0 | ≈0.99 | ≈1 | −0.97 | 152 |

> These values were digitised by eye from a 220 dpi render. Expect errors of about ±0.02 in St and coherence, ±0.05π in phase and ±1–2 dB in SPL. Check against Figs. 6–7 (p. 8, 10) before quantitative use. Phase is wrapped, so +0.97π and −0.90π both mean anti-symmetric. Time-averaged phases at Mj ≤ 1.35 are not meaningful because of the phase drift (p. 8, 10–11).
>
> As a rough guide (my estimate, not in the paper): with T₀ ≈ 293 K, St = 0.40 at Mj = 1.35 gives f ≈ 8.2 kHz, so the 33 Hz mismatch is about 0.4%. St = 0.30 at Mj = 1.50 gives ≈ 6.7 kHz and St = 0.20 at Mj = 1.70 gives ≈ 4.8 kHz.

**Earlier twin rectangular jet studies** (Table 1, p. 3):

| Study | Nozzles | Spacing | Mj range |
|---|---|---|---|
| Zilz & Wlezien 1990 | C-D, Md = 1.25 and 1.45, AR = 1.15 and 2.86 | s/w = 1.55–3.2 | 1.26–1.55 |
| Walker 1990 | C-D, Md = 1.40, AR = 3.71 | s/w = 2.50–3.7 | 1.1–1.7 |
| Zeierman et al. 1992 | C-D, Md = 1.8, AR = 3 | s/De = 1–4 | 1.6–2.1 |
| Raman & Taghavi 1996 (four-jet array) | C, AR = 5 | s/h = 4–13.7 | 1.2–1.75 |
| Raman & Taghavi 1998 | C, AR = 5 | s/h = 5.5, 9, 15 | 1.0–1.6 |
| Bozak 2014 | C, AR = 2 and 8 | s/De = 2.45, 3.32, 5.26 | 0.9–1.33 |
| **This paper** | C-D, Md = 1.5, AR = 2 | s/De = 2.25 | 1.20–1.85 |

## Figures worth remembering
- **Fig. 3a (p. 5):** axes and the azimuthal angle φ. y is the minor axis and z the major axis.
- **Fig. 4 (p. 6):** near-field microphone numbering (1–6).
- **Fig. 6 (p. 8):** St = f De/u_j against Mj for this facility and for single and twin rectangular jets (AR = 2–5) from the literature. One Karnam AR = 2 outlier sits at Mj = 1.55.
- **Fig. 7 (p. 10):** the key regime map. (a) Inter-jet coherence and phase, (b) both jets' coherence plus coupling, (c) right-jet coherence and phase, (d) right-jet coherence against screech SPL.
- **Figs. 8–9 (p. 11–12):** Mj = 1.35. The spectrogram shows an intermittent screech peak. The time-resolved wavelet coherence stays high while the phase wraps every ~0.03 s. Fig. 9 has a schematic of interference at mic 2 and the beat in the spectrogram aligned with the phase.
- **Fig. 10 (p. 12):** Mj = 1.50, steady ±π coupling with weak screech.
- **Fig. 11 (p. 13):** Mj = 1.70, steady in-phase coupling. Coherence is close to 1 over a broad band around St = 0.2.
- **Fig. 12 (p. 14):** far-field SPL maps (θ against St) at φ = 0° and 90° for Mj = 1.35, 1.50 and 1.70. They show the screech tone and harmonics, the mixing-noise lobe at low θ and BBSAN at high θ.
- **Fig. 14 (p. 17):** log₁₀σ of schlieren intensity (top) and an instantaneous or mean schlieren image (bottom) for Mj = 1.35, 1.50 and 1.70, viewed so that the vertical (flapping) plane is visible. Standing-wave lobes outside the jet are clear at 1.35 and 1.70 and absent at 1.50.
- **Fig. 15 (p. 18):** the same statistic in the plane showing both jets side by side. It shows shock diamonds and no standing waves.

> Points to check against the PDF:
> - There is no Fig. 13; numbering jumps from 12 to 14.
> - The text calls Fig. 14 the "major axis" view and labels its vertical axis z/De, but it is discussed as the minor-axis (vertical-plane) spread. The view is along the major axis, so the plane shown is presumably x–y.
> - p. 16 says the Mj = 1.70 spreading angle "has not significantly changed compared to Mj = 1.70", which is presumably a typo for 1.35 or 1.50.
> - The evidence for "higher spreading when coupled out of phase" compares Mj = 1.35 (phase drifting, time-averaged ≈ 0.25π) with Mj = 1.50 (steady ±π), and 1.35 spreads *more*. The cited support (Shih 1992; Alkislar 2003) is about single-jet flapping. The far-field section does call Mj = 1.35 "an out-of-phase coupling mode" (p. 15).
> - p. 13 says earlier studies found *out-of-phase* coupling gives higher near-field screech amplitude. p. 9 says those same studies found a 15–20 dB *rise* on switching to in-phase. The p. 9 version matches the literature summary on p. 2.
> - Several citation numbers in the introduction look wrong (e.g. "Bozak [9]" should probably be [13], "Walker [11]" [15], and "twin supersonic circular jets [12]" [16]).

## Notation
- AR = w/h; De is the area-equivalent diameter; s is the centre-to-centre spacing; Md is the design Mach number; Mj is the fully expanded Mach number; NPR is the nozzle pressure ratio; u_j is the fully expanded velocity.
- θ is the polar angle from the downstream jet axis. φ is the azimuthal angle: 0° is the major-axis (twin-jet) plane and 90° the minor-axis (vertical) plane.
- σ is the standard deviation. k ~ dρ/dx is the schlieren intensity. The nomenclature lists ρ as "near-field density".
- Harmonic naming: the paper calls 2f the "first harmonic" and 3f the "second harmonic".
- Coupling vocabulary from Zilz & Wlezien (p. 2): *normal symmetric* is in-phase and *normal anti-symmetric* is out-of-phase coupling in the vertical plane. *Lateral symmetric* and *lateral anti-symmetric* are out-of-phase and in-phase coupling in the horizontal plane. "Anti-symmetric screech mode" here means single-jet flapping about its own major-axis plane.
- BBSAN: broadband shock-associated noise. LAFPA: localised arc filament plasma actuator. GDTL: Gas Dynamics and Turbulence Laboratory, OSU.

## Relevance to this project
This project studies resonance and feedback in non-axisymmetric and supersonic jets from Shock Lab experiments (see CLAUDE.md). This paper is a twin rectangular-jet screech study done with acoustics and schlieren alone. It is the baseline for the companion control paper [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md), which applies LAFPA forcing to the same nozzles.
- **Methods and how they depend on the data:**
  - *Time-resolved acoustics (200 kHz):*
    - Wavelet (Morlet) coherence and phase between microphone pairs give coupling and screech mode as functions of time and frequency (p. 7).
    - The conditional average (keep instants with coherence > 0.7) is a simple way to report the phase only when it is reliable.
    - The microphone-pair logic is cheap and reusable for any twin or flapping jet in the lab: a pair across one jet gives its symmetric or anti-symmetric mode, and a pair across both jets gives the inter-jet phase (p. 5, 9).
    - The key wavelet parameters (scales, smoothing) are not reported, so the method cannot be reproduced exactly.
  - *Non-time-resolved schlieren statistics (300 images at 50 fps):*
    - log₁₀σ of intensity is the "basic statistics first" step. It shows standing waves, the end of the potential core and spreading without any time resolution (p. 7, 16).
    - Standing waves show only in the plane of flapping, so view orientation matters.
    - The same statistic applied to PIV (Bell et al. 2018) would carry over to lab PIV.
  - *Time-resolved schlieren (60 kfps, 1000 frames):*
    - This data would suit SPOD or BMD, but the paper does not use it beyond qualitative viewing.
    - A 1000-frame record lasts 16.7 ms, so the finest resolution is Δf ≈ 60 Hz. That cannot separate the two jets' tones 33 Hz apart at Mj = 1.35. A block of at least 30 ms (≳ 1800 frames at 60 kfps) is needed, plus several blocks for averaging (my inference).
    - The far-field Δf = 24.4 Hz only marginally resolves the split (p. 7). The near-field blocks (0.164 s, Δf ≈ 6 Hz) resolve it.
- **Intermittency and how frequency and amplitude change over time:** this is the most useful lesson for the SPOD → reconstruction → HPOD pipeline.
  - At low overexpanded Mj, what looks like intermittent screech in one microphone is mostly a **beat between two jets locked to slightly different frequencies**. The phase between them wraps every 1/Δf ≈ 0.03 s even though the time-averaged coherence is high (p. 10–11).
  - In HPOD or a Hilbert transform this would appear as instantaneous amplitude modulated at Δf and a steadily drifting relative phase between modes localised on each jet.
  - So before reading amplitude modulation as true intermittency or mode switching, separate the jets in space: for example, use SPOD modes or reconstructions restricted to each jet, then compare the instantaneous frequency of each.
  - Genuine low-coherence or switching regions also occur, at Mj = 1.25 and 1.55–1.60, where the phase is ambiguous and coherence low. These are candidate cases for HPOD (see [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) and [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md)).
  - For separating close tonal peaks from broadband content, see [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md).
- **Standing waves compared with theory:**
  - Two observations here match the wave picture in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md). First, SW crests fall between shock tips (p. 16). Second, SW wavelength tracks shock-cell spacing (p. 17; Knast et al. 2018).
  - In that picture the standing wave is the interference of the KH wave with the upstream guided jet mode k_t− ≈ k_kh − k_s. Its wavenumber is therefore ≈ k_s, and its nodes need not line up with the shocks.
  - The closure-mode background is in [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md). This paper still frames SWs through Panda's (1999) "upstream acoustic wave" picture.
  - The new claim that SWs appear only while screech coherence is rising is a hypothesis worth testing on Shock Lab schlieren of twin or rectangular jets.
- **Modelling side (missing here):**
  - The selection of coupling mode against Mj (out of phase when overexpanded near design, in phase when underexpanded) is a direct test case for twin-jet stability models. See [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md) for spatial LSA of twin-jet coupling in round jets. Its predictions of which symmetry is selected could be compared with Fig. 7a, with the caveat that the geometry here is rectangular.
  - For LES of twin rectangular jets with plasma actuation, see [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md). Check whether it uses this nozzle.
  - For screech-frequency prediction that could be tested against the Fig. 6 St(Mj) data, see [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md).
  - In the mismatch regime the jets do not share a frequency, which a single-frequency linear global mode of the coupled system cannot represent. A weakly coupled oscillator (frequency-locking) view would be needed (my inference).
- **Non-axisymmetric nozzle context:** this is an earlier Samimy-group rectangular-jet study; see [samimy-1998-rectangular-jet-trailing-edge-control.md](samimy-1998-rectangular-jet-trailing-edge-control.md) and [kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md).
  - Results of note: De gives the best St collapse for AR ≤ 5 but fails for high AR (p. 7–8). A sharp-throated C-D nozzle still screeches at its design Mj, because of throat shocks (p. 4).
  - Both are useful when choosing scalings and conditions for non-axisymmetric nozzles in the lab.
- **Facility:** OSU GDTL. This is not Shock Lab group work.
- **Shock Lab group works cited, candidates for `/add-paper`:**
  - Edgington-Mitchell, Honnery & Soria 2015, staging in screeching elliptical jets (σ of schlieren for standing waves).
  - Bell et al. 2018, coupled underexpanded twin jets (PIV, log₁₀σ).
  - Knast et al. 2018, coupling modes of underexpanded twin axisymmetric jets (SW wavelength follows shock spacing).
- **Other cited works worth indexing:** Raman & Taghavi 1998 (JFM, twin rectangular coupling), Panda 1999 (JFM, standing waves) and Jeun, Wu & Lele 2020 (LES of twin rectangular jets).
