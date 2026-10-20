---
key: "esfahani-2021-control-twin-rectangular-jet-coupling"
title: "Control of Coupling in Twin Rectangular Supersonic Jets"
authors: ["Esfahani, A.", "Webb, N.", "Samimy, M."]
year: 2021
type: "conference"
venue: "AIAA Aviation 2021 Forum"
bib: {"booktitle": "AIAA Aviation 2021 Forum", "note": "Authors' final manuscript; AIAA paper number not printed"}
doi: ""
arxiv: ""
pdf: "non-axisymmetric-and-twin-jets/Esfahani-EtAl_2021_Control-Of-Coupling-In-Twin-Rectangular-Supersonic-Jets.pdf"
version: "conference"
unverified: []
group: false
facility: "OSU GDTL"
data: ["microphones-near", "schlieren-TR"]
methods: ["PSD", "coherence", "wavelets", "SPOD"]
flow: ["twin-jet", "rectangular-jet", "supersonic", "overexpanded"]
phenomena: ["screech", "coupling", "flapping", "intermittency", "noise-control"]
params: {"M_j": "1.35", "M_d": "1.5", "NPR": "2.97", "AR": "2", "s/D_e": "2.25", "TR": "1", "St_e": "0.41"}
topics: ["non-axisymmetric-and-twin-jets", "screech"]
related: ["esfahani-2021-coupling-modes-twin-rectangular-jets", "bres-2021-les-twin-rectangular-jets-plasma", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "nogueira-2021-twin-jet-coupling-spatial-lsa", "samimy-2006-plasma-actuators-high-speed-jet-flow-noise-control", "samimy-1998-rectangular-jet-trailing-edge-control", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure"]
cites: ["esfahani-2021-coupling-modes-twin-rectangular-jets", "nogueira-2021-twin-jet-coupling-spatial-lsa", "samimy-2006-plasma-actuators-high-speed-jet-flow-noise-control", "schmidt-2020-guide-spod", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "LAFPA forcing at screech (St_e 0.41) of AR-2 twin jets at M_j 1.35: symmetric in-phase forcing ends intermittency (+8 dB); anti-symmetric out-of-phase forcing decouples the jets"
---
# Control of Coupling in Twin Rectangular Supersonic Jets

- **Authors:** A. Esfahani, N. Webb, M. Samimy (Gas Dynamics and Turbulence Laboratory (GDTL), Aerospace Research Center, The Ohio State University)
- **Source:** AIAA Aviation 2021 Forum, 2–6 Aug 2021 (conference paper; author's final manuscript, PDF created 23 Jun 2021). The AIAA paper number and DOI are not printed in this PDF. Funded by ONR (N00014-19-1-2207) (p. 18).
- **PDF:** `References/Paper_PDFs/non-axisymmetric-and-twin-jets/Esfahani-EtAl_2021_Control-Of-Coupling-In-Twin-Rectangular-Supersonic-Jets.pdf` (20 pp.)
- **Tags:** twin jets, rectangular nozzle, low aspect ratio, overexpanded supersonic jet, screech, jet coupling, feedback loop, intermittency, active flow control, plasma actuators (LAFPA), near-field acoustics, wavelet coherence, high-speed schlieren, SPOD
- **Companion paper:** [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md) (SciTech 2021, ref. [23]). It holds the baseline coupling-mode survey over M_j that this paper summarises in Fig. 8.

## Summary
The paper uses localized arc filament plasma actuators (LAFPAs) as both a control device and a diagnostic probe on closely spaced twin rectangular jets (AR = 2, M_d = 1.5, spacing 2.25 D_e) at an overexpanded M_j = 1.35. At this condition the baseline jets each screech in an anti-symmetric (flapping) mode and couple in-phase, but only intermittently. Two closely spaced tones (8.25 and 8.40 kHz) compete, and the in-phase coupling is interrupted at about 123 Hz. Forcing at the screech frequency (St_e = 0.41) lets the authors set the top/bottom shear-layer phase (Φ_sl) and the jet-to-jet phase (Φ_c) independently. Forcing a symmetric shear-layer mode with the jets in-phase (Φ_sl = 0°, Φ_c = 0°) removes the intermittency, raises the screech tone by 8 dB and strengthens coupling. Forcing the natural anti-symmetric mode with the jets out-of-phase (Φ_sl = 180°, Φ_c = 180°) decouples the jets, removes the screech tone on the monitored jet and raises the first harmonic by 14 dB. The working hypothesis is that shifting the time of arrival of feedback waves in the coupling loop decouples the jets. The paper is purely experimental and contains no modelling or simulation.

## Key findings
- **Two coexisting feedback loops** (p. 3, 11, Fig. 10):
  - The *screech loop*: KH large-scale structures (LSS) in jet A interact with its shocks, and the upstream acoustic waves re-excite jet A's lip.
  - The *coupling loop*: the same upstream waves also reach jet B's lip. If they arrive in phase with jet B's naturally generated LSS, the jets couple.
  - The two loops can be closed from different shock cells (X_h1 ≠ X_h2 in Fig. 10, p. 11). Acoustic generation is described as KH–shock interaction with "shock leakage" (Manning & Lele) playing a major part (p. 11).
- **Baseline coupling map, M_j = 1.20–1.90** (Fig. 8, p. 9; from the companion paper). With increasing M_j:
  1. Intermittent in-phase coupling in the minor-axis plane, from the first screech at M_j = 1.20.
  2. Out-of-phase coupling in the minor-axis plane at moderately overexpanded M_j.
  3. Loss of minor-axis coherence just above M_d, with a narrow region of minimum screech amplitude and coupling coherence.
  4. In-phase coupling in both major- and minor-axis planes at slightly to moderately underexpanded M_j.
  5. In-phase coupling in the minor-axis plane only, up to M_j = 1.90.
  - The M_j of the transition from intermittent in-phase to out-of-phase coupling shifts with stagnation and ambient temperature; the cause is unresolved (p. 9).
  - The individual-jet screech mode is anti-symmetric at every M_j tested (p. 3, 9).
- **Baseline at M_j = 1.35** (p. 10, Fig. 9):
  - Two closely spaced peaks at 8.25 and 8.40 kHz (St = 0.3992 and 0.4065). Following Raman & Rice, the authors read this as rapid switching between two screech frequencies.
  - Mics 2 and 3 show strong coherence in the vertical (minor-axis) plane with phase ≈ 0° (in-phase coupling).
  - The Morlet wavelet coherence shows the in-phase coupling being interrupted at about 123 Hz, with no phase drift. This differs from the phase mismatch seen in the companion paper.
  - The intermittency is attributed to slightly different screech-loop frequencies in the two jets, which compete for dominance.
  - > My own observation, not in the paper: the beat frequency of the two tones is 8.40 − 8.25 = 150 Hz, which is close to the 123 Hz interruption rate.
- **Experiment 1: symmetric, in-phase forcing** (St_e = 0.41, Φ_sl = 0°, Φ_c = 0°) (p. 11–14, Figs. 11–13):
  - The SPOD mode-1 lobes change from alternating to symmetric. The external standing-wave pattern is no longer staggered, but its wavelength is unchanged; only the top/bottom phase changes (p. 12).
  - In the major-axis plane the forced mode is far more coherent and strongly in-phase between the jets (p. 12).
  - The screech tone rises by **8 dB** with a much narrower base, and the spectrogram becomes continuous with the intermittency gone (p. 13, Fig. 12). The LAFPA "self-noise" tone at f_e sits on top of the screech tone (p. 13).
  - Coherence between mics 2 and 6 (not shown) indicates a strengthened screech loop (p. 13).
  - The time-averaged coherence between the jets rises considerably and the phase error bars shrink (p. 14, Fig. 13).
  - Takeaways: organised LSS shedding strengthens the screech loop, and this in turn strengthens coupling when Φ_c matches the natural coupling preference. Forcing the jets into the "wrong" (symmetric) shear-layer mode is *not* disruptive (p. 14).
- **Experiment 2: anti-symmetric, out-of-phase forcing** (St_e = 0.41, Φ_sl = 180°, Φ_c = 180°) (p. 15–18, Figs. 14–16):
  - Minor-axis SPOD is uninformative: line-of-sight integration through two out-of-phase jets cancels the lobes and blurs the standing waves (p. 15, Fig. 14c).
  - In the major-axis plane the "top" jet responds more coherently than the other. The suggested reason is that f_e = 8.4 kHz matches the dominant jet's tone but is above the other jet's 8.25 kHz (p. 15).
  - The tone near f_s falls by **7 dB**. The remaining narrow, baseless peak is probably LAFPA self-noise only (p. 16).
  - Coherence between mics 2 and 6 (not shown) indicates that screech is absent and completely disrupted on the right-hand jet (p. 16).
  - The first harmonic rises by **14 dB**, possibly from strong flapping that follows the Φ_sl = 180° pattern (p. 16).
  - The competing 8.25/8.40 kHz tones and the intermittency are gone (p. 16). The jets **decouple** along the minor axis (p. 16, Fig. 16).
- **Working hypothesis** (p. 18): decoupling comes from changing the time of arrival of feedback waves in the coupling loop, through the relative excitation phase Φ_c. The authors plan to test this over a range of NPR, with near-field and far-field acoustic measurements (p. 18).
- **Control philosophy** (p. 4): suppressing or weakening screech would decouple the jets, but decoupling is also possible *without* suppressing screech. Both serve the end goals of lower near-field pressure loads and less far-field noise.
- **Passive control** with tabs has had very limited success at decoupling twin rectangular jets (Walker 1990; p. 3). There had been no prior active-control attempt on twin rectangular jets (p. 3).

## Setup / method
- **Facility:** GDTL jet anechoic chamber at OSU (not a Shock Lab group facility) (p. 5):
  - 6.2 × 5.6 × 3.4 m, fibreglass wedges, cut-off 160 Hz.
  - Air from 2 × 43 m³ tanks at up to 16 MPa, dried and filtered. TTR up to 2.5.
  - A co-flow duct gives up to 100 m/s for forward-flight simulation. Whether co-flow was on in these tests is not stated.
  - The co-flow duct, nozzle assembly and actuator cart were covered in acoustic foam (p. 5–6).
- **Nozzles** (p. 4, Figs. 2–3):

  | Parameter | Value |
  |---|---|
  | Type | military-style converging–diverging rectangular, twin, side by side along the major axis |
  | M_d | 1.5; the ideally expanded M_j was found to be close to 1.5 |
  | AR | 2 |
  | Exit w × h | 24.13 × 12.07 mm (0.95 × 0.475 in.) |
  | D_e (area-based) | 19.25 mm (0.758 in.) |
  | Centre-to-centre spacing | 43.38 mm = 2.25 D_e |
  | Coordinates | x streamwise, y minor axis (vertical), z major axis; φ azimuth (Fig. 3a) |

  The internal geometry, AR and spacing are "virtually identical" to the University of Cincinnati twin rectangular facility (Karnam et al. 2021, ref. [41]) (p. 4). The facility is modular, so the spacing, M_d and actuator layout can be changed (p. 4).
- **Operating point** (p. 7): M_j = 1.35 (overexpanded), NPR = 2.97, TTR = 1, spacing 2.25 D_e. A wider excitation sweep from over- to underexpanded was run, but only M_j = 1.35 is reported (p. 7).
- **Actuators (LAFPAs)** (p. 4, 6):
  - 8 per nozzle (16 in total): 3 on the top and 3 on the bottom major-axis lips, and 2 on the outer minor-axis lip.
  - 1 mm tungsten electrodes, tips about 3.5 mm apart, recessed in 1 × 0.5 mm grooves in boron-nitride blocks about 1 mm upstream of the exit. The groove does not reduce control authority (ref. [42]).
  - The arc breaks down at about 7 kV. Each actuator's frequency and phase is set independently, up to 20 kHz. The pulsers sit inside the chamber to limit cable voltage drop (p. 6).
  - Mechanism: periodic thermal perturbation that seeds KH instability, giving perturbation-level control of LSS shedding (p. 4).
  - Fig. 7 (p. 8) appears to show only the top and bottom (major-axis-lip) rows firing in both forcing patterns.
- **Control parameters** (p. 8, Fig. 6): f (LSS shedding frequency), Φ_sl (top/bottom shear-layer phase within a jet; 0° gives a symmetric mode and 180° an anti-symmetric mode) and Φ_c (jet-to-jet phase).
  - f_e = f_s = 8.4 kHz, St_e = f_e D_e/u_j = 0.41. Forcing is placed in the jet-column range 0.2 < St < 0.6 (p. 8). The companion paper showed that D_e is the right length scale for screech in low-AR rectangular jets (p. 8).
  - Because the jets respond across 0.2 < St < 0.6, the two competing baseline tones do not make frequency matching critical (p. 10).
  - Only Φ_sl and Φ_c are varied here. Frequency-only and frequency + Φ_c cases are left for a future paper (p. 11).
- **Near-field microphones** (p. 5–6, Fig. 4):
  - Six B&K 4939 ¼-in. microphones on a 15 × 15 in. frame in the nozzle-exit plane (x/D_e = 0), at r/D_e = 4 from the nearest jet centreline.
  - Numbering (Fig. 4): mics 3 and 2 on top, 5 and 6 on the bottom, 4 and 1 at the outer sides. Mics 2 and 6 sit above and below the "right" jet (p. 13).
  - Mics above and below each jet give the screech mode (Φ_sl). The pair across the jets (2 and 3) gives the coupling (Φ_c) (p. 5).
  - B&K Nexus 2690 conditioning with a 20 Hz–100 kHz band-pass and 1 mV/Pa gain, calibrated in situ with a B&K 4231 (p. 7).
  - Sampling at 200 kHz, 100 blocks × 32,768 samples (Δf = 6.1 Hz). FFT per block, averaged over 100 blocks, then PSD converted to SPL re 20 µPa (p. 7).
- **Wavelet coherence** (p. 7): in-house MATLAB code computing the magnitude and phase of the Morlet wavelet coherence between mic pairs, as functions of time and frequency.
  - Time averages of coherence and phase use only regions where coherence > 0.7, so phase is reported only where it is reliable.
  - The wavelet plots span about 0.16 s, roughly one 32,768-sample block. Coherence below about 2 kHz is blank in Figs. 9, 13 and 16, which suggests a lower frequency limit or cone-of-influence mask. Neither is stated in the paper.
- **Spectrograms** (Figs. 12b,d and 15b,d): waterfall plots of "relative amplitude" over 0–0.2 s and 0–60 kHz. The time–frequency method and window are not described.
- **Schlieren** (p. 6–7): Z-type system with a vertical knife edge (axial/horizontal density gradients), imaged in the minor-axis and major-axis planes. HPLS-36 pulsed LED with 500 ns pulses.
  - *Time-averaged:* LaVision Imager sCMOS (5.5 MP), 300 images at 50 fps, 2500 × 2150 px. Mean and std of density gradient computed in DaVis 8.2, then log₁₀(std) in MATLAB for spreading rate and standing waves. None of these maps is shown in this paper.
  - *High-speed:* Phantom v1210 at 40 kfps, 2000 frames at 512 × 340 px (50 ms of record) per case.
  - The facility can also run tomographic PIV and linear near- and far-field arrays, but these were not used here (p. 6).
- **SPOD** (p. 7):
  - O. Schmidt's code, following Towne et al. (2018) and Schmidt & Colonius (2020), applied to 1000 of the 2000 high-speed schlieren frames, which gives a 625 Hz frequency bin.
  - That bin implies 64-frame blocks (my inference: 40,000/625). The window, overlap and number of blocks are not stated.
  - All lower-ranked modes were examined, but mode 1 holds most of the energy, so only mode 1 at the screech frequency is shown.
  - > With 625 Hz bins, the 8.25 and 8.40 kHz tones fall in the same or adjacent bins (bin edges at 8125 and 8750 Hz), so SPOD cannot separate the two competing tones. The paper does not state which bin it plots.
- **Modelling / simulation:** none. The only model is the conceptual two-loop schematic (Fig. 10). There is no phase-criterion calculation, stability analysis or LES. The paper cites the LES and OVERFLOW studies of the Cincinnati geometry (Jeun et al. 2021 [45]; Kalagotla et al. 2020 [21]) and the numerical study of AR = 2 screech by Gojon et al. (2019, [27]) for comparison (p. 3, 9).

## Key equations
The paper has no numbered equations. The definitions it uses, and my consistency checks:
- $St = f D_e/u_j$ and $St_e = f_e D_e/u_j$, with $u_j$ the fully expanded jet velocity (p. 2, 8).
- Area-based equivalent diameter: $D_e = \sqrt{4wh/\pi}$. The formula is my own; the paper gives only the value. Check: $\sqrt{4(24.13)(12.07)/\pi} = 19.26$ mm, matching 19.25 mm.
- Isentropic NPR check (mine): $NPR = \left(1+\tfrac{\gamma-1}{2}M_j^2\right)^{\gamma/(\gamma-1)} = 1.3645^{3.5} = 2.97$ at M_j = 1.35, matching p. 7.
- The quoted St = 0.4065 at 8.40 kHz implies u_j ≈ 398 m/s, i.e. T₀ ≈ 295 K at TTR = 1 (my inference).
- Spectral resolution: $\Delta f = 200\,000/32\,768 = 6.1$ Hz (p. 7).
- **Loop-closure condition** (p. 3, 11): stated only in words. A loop closes when the LSS generated by the arriving upstream wave are in phase with the structures that produced the wave.
  - > Standard form, not given in the paper: $X_h/u_c + X_a/a_\infty = N/f$ for the screech loop (X_h1, X_a1). For the coupling loop (X_h2, X_a2), the imposed jet-to-jet phase would add a term $\Phi_c/(2\pi f)$. This is the quantitative version of the paper's "time-of-arrival" hypothesis, but the paper never evaluates it.

## Data tables
**Forcing cases at M_j = 1.35, f_e = 8.4 kHz, St_e = 0.41** (p. 10–18). Coherence values were read off the figures and are approximate.

| Case | Φ_sl | Φ_c | Relation to natural state | Tone at f_s (mic 2) | 1st harmonic | Coupling (mics 2 and 3) |
|---|---|---|---|---|---|---|
| Baseline | (anti-sym., natural) | (≈0°, intermittent) | — | twin peaks 8.25/8.40 kHz, wide base, ≈137 dB (Fig. 9a) | — | in-phase, interrupted at ≈123 Hz; time-avg coh ≈0.8 at f_s (Fig. 9b) |
| Exp. 1 | 0° | 0° | opposes shear-layer mode; matches coupling | **+8 dB**, narrow, continuous (p. 13) | not discussed | strengthened; time-avg coh ≈0.9–1 at f_e and smaller phase scatter (Fig. 13d) |
| Exp. 2 | 180° | 180° | matches shear-layer mode; opposes coupling | **−7 dB**; remaining peak probably LAFPA self-noise; screech disrupted on right jet (p. 16) | **+14 dB** (p. 16) | **decoupled**; time-avg coh ≈0.3 at f_e (Fig. 16d) |

> The "≈" coherence and SPL values were read from 80–200 dpi renders of Figs. 9, 13 and 16. Check against the PDF before quoting.

## Figures worth remembering
- **Fig. 1 (p. 3):** symmetric vs anti-symmetric screech modes of a single rectangular jet.
- **Fig. 4 (p. 6):** layout and numbering of the near-field microphone array.
- **Fig. 6–7 (p. 8):** definitions of f, Φ_sl and Φ_c, and the two actuation patterns used.
- **Fig. 8 (p. 9):** baseline coupling mode against M_j (colour bands from overexpanded to underexpanded, with M_d marked).
- **Fig. 9 (p. 10):** baseline at M_j = 1.35: SPL spectrum with the twin screech peaks, time-averaged coherence and phase, and the wavelet coherence and phase maps that show periodic dropouts of coupling.
- **Fig. 10 (p. 11):** schematic of the screech and coupling loops (X_h1, X_a1 vs X_h2, X_a2).
- **Fig. 11 (p. 13):** SPOD mode 1 at f_s, baseline vs Exp. 1, in the minor- and major-axis planes. The alternating lobes and staggered standing waves become symmetric.
- **Fig. 12–13 (p. 14–15):** Exp. 1 spectra, spectrograms and wavelet coherence.
- **Fig. 14 (p. 16):** SPOD for Exp. 2. Panel (c) shows the line-of-sight cancellation in the minor-axis plane.
- **Fig. 15–16 (p. 17):** Exp. 2 spectra (tone removed, harmonic up) and wavelet coherence (decoupling).

## Notation
- Φ_sl: phase between LSS in the top and bottom shear layers of one jet (0° symmetric, 180° anti-symmetric or flapping). Φ_c: phase between LSS in the two jets (0° in-phase, 180° out-of-phase).
- f_s: screech frequency. f_e: excitation frequency. St, St_e: Strouhal numbers based on D_e and u_j.
- M_d: design Mach number. M_j: fully expanded Mach number. NPR: nozzle pressure ratio. TTR: total temperature ratio. AR: aspect ratio. D_e: area-based equivalent diameter.
- LSS: large-scale structures. LAFPA: localized arc filament plasma actuator. "Self-noise": the compression-wave tone the LAFPAs produce at f_e.
- Minor-axis plane: the x–y (vertical) plane. Schlieren in this plane looks along z, through both jets. Major-axis plane: x–z; both jets are visible, drawn one above the other in Figs. 11b,d and 14b,d.
- X_h1/X_a1 and X_h2/X_a2: hydrodynamic and acoustic path lengths of the screech and coupling loops (Fig. 10).

## Relevance to this project
This project analyses experimental resonance and feedback data (schlieren, acoustics, PIV), including flows from non-axisymmetric nozzles; see CLAUDE.md. This paper is a twin, low-AR rectangular screeching jet in which the resonance is probed by *forcing* it.
- **Intermittency and mode switching are central.** The baseline coupling is intermittent (≈123 Hz dropouts) and there are two competing screech tones (p. 10).
  - *Time-resolved acoustics:* the paper's tool is the Morlet wavelet coherence between mic pairs, giving coherence and phase as functions of time, with phase averaged only where coherence > 0.7 (p. 7). This works directly on lab microphone data from twin, impinging or rectangular jets: one pair across the jets for Φ_c, and a pair above and below one jet for its mode.
  - *Time-resolved schlieren:* the SPOD here (625 Hz bins, about 64-frame blocks, 1000 frames, about 25 ms) block-averages over several intermittency cycles and cannot separate the 150 Hz-spaced tones. This is where the SPOD → reconstruction → Hilbert POD pipeline adds value:
    1. Rebuild the schlieren from the f_s-band SPOD modes.
    2. Run HPOD on the rebuilt data.
    3. Track the instantaneous amplitude and phase of each jet, and so the instantaneous Φ_c and Φ_sl, through the dropouts.

    See [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) and [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md). [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md) is an alternative for resolving close tonal peaks without very long blocks.
  - Record length matters: 2000 frames at 40 kHz is only 50 ms, about 6 dropout cycles at 123 Hz.
- **A caution for schlieren of multi-jet or non-axisymmetric flows:** line-of-sight integration through two jets doubles in-phase features (Fig. 11a) and cancels out-of-phase ones (Fig. 14c). Pick the view direction to suit the expected symmetry, or cross-check with microphones or PIV (p. 12, 15).
- **Non-time-resolved PIV:** none is used here, although the facility has tomographic PIV (p. 6). For the user's PIV, the leading POD pair (transverse velocity) would give the shear-layer phase and the jet-to-jet phase without time resolution, following the method in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md). Under periodic forcing, phase-averaging on the actuator trigger would also work (my suggestion, not in the paper).
- **Mode diagnosis from acoustics:** the 6-mic azimuthal array at x/D_e = 0, r/D_e = 4 separates the screech mode (above and below one jet) from the coupling mode (across the jets) (p. 5–6). The LAFPA self-noise tone sits exactly at f_e. The authors use coherence between mics above and below a jet, not spectral peak height, to decide whether screech is actually present (p. 13, 16). That check carries over to any forced-resonance experiment.
- **Modelling side (gap):** there is no stability analysis, resolvent analysis, reduced-order model or LES in this paper.
  - The "time-of-arrival" hypothesis is qualitative. It could be tested with a phase-criterion model of the coupling loop (X_h2, X_a2, Φ_c), or with the spatial LSA of twin-jet coupling in [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md) (cited as ref. [13]).
  - For a simulation counterpart with plasma forcing, see [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md). Check there whether the nozzle, M_j and forcing match this experiment before comparing.
  - The paper describes closure by "upstream travelling acoustic waves" from shock leakage. It does not distinguish free-stream acoustic waves from the upstream guided jet mode that the Shock Lab group identified as the closure path ([edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md)). Which wave closes the *coupling* loop is an open question that guided-mode analysis could answer.
- **A caveat on the interpretation:** in Exp. 2 the decoupling coincides with screech being disrupted on the right-hand jet (p. 16, 18). The authors' own reasoning (p. 4) is that suppressing screech alone decouples the jets, so the coupling-loop timing effect is not cleanly isolated from screech suppression.
  - Exp. 2 also raises the first harmonic by 14 dB, and no OASPL or far-field data are given. Any net benefit to near-field load or noise is therefore not yet shown.
  - The "top" jet in the major-axis SPOD is not mapped to the "right" jet of the microphones.
- **Facility attribution:** GDTL, Ohio State University. This is not Shock Lab group work, although Samimy co-authored the Monash–OSU twin-jet study by Bell et al. (2021, JFM 910; ref. [12]).
- **Related notes:** the companion baseline study [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md). Earlier GDTL rectangular-jet passive control in [samimy-1998-rectangular-jet-trailing-edge-control.md](samimy-1998-rectangular-jet-trailing-edge-control.md) and [kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md).
- **Candidates for `/add-paper`:**
  - Bell et al. 2021 (intermittent modal coupling in circular twin jets, Monash–OSU).
  - Kuo, Cluts & Samimy 2017 (control of twin circular jets with LAFPAs).
  - Jeun et al. 2021 (LES of the Cincinnati twin rectangular jets).
  - Karnam et al. 2021 (experiments on the same geometry).
  - Gojon, Gutmark & Mihaescu 2019 (anti-symmetric modes in AR = 2 jets).
  - Raman & Taghavi 1998 (coupling of twin rectangular jets).
  - Edgington-Mitchell 2019 (review of screech and impingement resonance; ref. [46]).
