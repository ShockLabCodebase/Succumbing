---
key: "seiner-1988-dynamic-pressure-loads-twin-supersonic-plume-resonance"
title: "Dynamic Pressure Loads Associated with Twin Supersonic Plume Resonance"
authors: ["Seiner, John M.", "Manning, James C.", "Ponton, Michael K."]
year: 1988
type: "article"
venue: "AIAA J. 26(8), 954–960"
bib: {"journal": "AIAA Journal", "volume": "26", "number": "8", "pages": "954--960", "note": "Presented as AIAA Paper 86-1539"}
doi: "10.2514/3.9996"
arxiv: ""
pdf: "twin-jet-coupling/Seiner-EtAl_1988_Dynamic-Pressure-Loads-Associated-With-Twin-Supersonic-Plume-Resonance.pdf"
version: "published"
unverified: []
group: false
facility: "NASA Langley Research Center (1/40-scale F-15 twin-nozzle nacelle model)"
data: ["microphones-near", "schlieren", "pressure-probe"]
methods: ["PSD", "coherence", "phase-averaging", "resonance-model"]
flow: ["twin-jet", "round-jet", "supersonic", "underexpanded", "jet-aircraft"]
phenomena: ["screech", "coupling", "staging", "multimodal", "flapping", "helical", "toroidal", "shock-cells", "directivity", "noise-control", "mixing-enhancement"]
params: {"M_d": "1 (choked straight tubes)", "M_j": "1.01–1.88 single, 1.02–1.81 twin (figure ranges)", "NPR": "≈1.93–6.4 (isentropic from M_j, my conversion; M_j is set from the tube-exit static pressure, not the reservoir)", "s/D": "1.9", "D": "15.7 mm", "TR": "≈1 (dry, unheated air; T_0 not stated)", "St": "0.32 (f D_j/U_j, coupled B mode at M_j 1.32, f_s 7.62 kHz; my calculation)", "vehicle": "F-15 / B-1B nozzle spacing, 1/40 scale"}
topics: ["twin-jet-coupling", "screech-staging-and-mode-switching", "screech-frequency-and-global-modes", "screech", "shock-cell-models"]
related: ["knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "bell-2018-coupled-underexpanded-supersonic-twin-jets", "bell-2021-intermittent-modal-coupling-screeching-twin-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets", "nogueira-2021-twin-jet-coupling-spatial-lsa", "rodriguez-2023-preferred-flapping-round-twin-jets", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "stavropoulos-2024-upstream-waves-merging-twin-jets", "esfahani-2021-control-twin-rectangular-jet-coupling", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance", "powell-1992-oscillation-modes-choked-circular-jets", "raman-1998-supersonic-jet-screech-review", "raman-1999-supersonic-jet-screech-half-century-powell-present", "tam-1986-bbsan-screech-relationship", "tam-1982-shock-associated-noise-cd-nozzles", "johnston-2016-underexpanded-jet-intrusive-tab-visualisation", "edgington-mitchell-2022-unifying-theory-jet-screech", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "panda-1999-experimental-investigation-screech-noise-generation"]
cites: []
summary: "1/40-scale F-15 twin choked jets, s/D 1.9: mirror-coupled B-mode flapping gives 162 dB between the nozzles, 2–4× a single jet; a tab on one nozzle decouples the pair"
---
# Dynamic Pressure Loads Associated with Twin Supersonic Plume Resonance

- **Authors:** John M. Seiner, James C. Manning, Michael K. Ponton, NASA Langley Research Center, Hampton, Virginia (p. 954). Not Shock Lab group work.
- **Source:** AIAA Journal 26(8), August 1988, 954–960, DOI 10.2514/3.9996 (printed in the download stamp). Received 8 April 1986; presented as AIAA Paper 86-1539 at the 22nd Joint Propulsion Conference, Huntsville, 16–18 June 1986; revision received 10 February 1988 (p. 954). Later papers that cite "Seiner et al. (1986)" for twin-plume resonance at s/D 1.9 mean the conference version of this work.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/twin-jet-coupling/Seiner-EtAl_1988_Dynamic-Pressure-Loads-Associated-With-Twin-Supersonic-Plume-Resonance.pdf` (index key `twin-jet-coupling/Seiner-EtAl_1988_Dynamic-Pressure-Loads-Associated-With-Twin-Supersonic-Plume-Resonance.pdf`, 7 pp., publisher's scan with a 2003 FineReader OCR layer and an ARC download stamp). Page refs are journal pages; **PDF page = journal page − 953**.
- **Scan quality:** the prose OCRs well, but the text layer garbles two key numbers: it reads the tone as "1.62 kHz" (the page and Fig. 3 say **7.62 kHz**) and Eq. (2) as "0.1V_j" (the page says **0.7V_j**). All equations, figure labels and plotted values here were read from page renders at 300–600 dpi; numbers taken from plots are marked as such.
- **Tags:** twin supersonic jets, twin plume resonance, screech, F-15 / B-1B internozzle loads, sonic fatigue, choked tube nozzles, s/D 1.9, B-type helical mode, flapping, coupled flapping, mirror-symmetric coupling, coherence and transfer-function phase, phase-locked loop, phase-averaged strobe schlieren, directivity, staging map (A0, A1, A2, B, C, D, E), Powell / Tam frequency formula, convection velocity 0.7V_j, centreline static-pressure shock spacing, shock-cell stretching, passive suppression (tab, notch), decoupling

## Summary
The paper ties the nozzle-flap fatigue failures of the F-15 and B-1B, whose engines sit about two diameters apart, to screech of the two plumes locking together (p. 954). A 1/40-scale F-15 empennage with two powered, choked straight tubes (D = 1.57 cm, centreline spacing 1.9D, unheated air) was instrumented with three exit-plane pressure sensors along the line joining the nozzles, and imaged with strobe schlieren phase-locked to the internozzle pressure (p. 954–955). At M_j = 1.32 a 7.62 kHz tone with harmonics to fifth order dominates the internozzle pressure. The two outer sensors are in phase with each other and in antiphase with the internozzle sensor, with coherence near 1, and the schlieren shows each plume flapping in the plane of the nozzles with the two plumes coupled (p. 955–957). Staging maps (acoustic wavelength against M_j) for one tube alone and for the pair show that the pair has fewer modes and is dominated by the B (helical/flapping) mode over M_j ≈ 1.1–1.6, at up to 162.5 dB between the nozzles. Over 1.15 ≤ M_j ≤ 1.5 its amplitude is more than twice that of the single jet (p. 957–958). Tone frequencies are predicted with Powell's formula, V_c = 0.7V_j and an empirical twin-plume shock spacing from static-pressure surveys, which is 10–15 % longer than the single jet's. The formula works except for the B mode at low M_j (p. 958–959). A tiny tab on one nozzle decouples the plumes and brings the load below a 155 dB fatigue threshold; a notch of the same area does not (p. 959–960). There is no stability model, simulation or amplitude model; the modelling content is the Powell/Tam frequency formula with an empirical spacing.

## Key findings
- **Motivation** (p. 954). Aircraft with engine centreline spacing of two nozzle diameters or less (F-15, B-1B) have suffered fatigue failures of outer nozzle flaps in the internozzle region. On the F-15 the USAF removed the flaps from active aircraft, at a believed cost of 5–7 drag counts. Berndt's (1984) B-1A model measurements had found a high-energy narrow-band process between the nozzles. The paper proposes that this process is plume resonance (screech), and that coupled shear-layer instabilities of two plumes would scatter more energy at the shocks.
- **Internozzle spectrum at M_j 1.32** (Fig. 3, p. 955). One discrete tone, f_s = 7.62 kHz, with harmonics "through the fifth order", dominates.
  - Read from the figure: fundamental ≈ 159 dB (narrow band); harmonics near 15.2 kHz (≈ 141 dB), 22.9 (≈ 131), 30.5 (≈ 132) and 38.1 kHz (≈ 129 dB). Broadband humps sit near 4.8 kHz (≈ 120 dB), 8.6 kHz (≈ 124 dB) and 12 kHz (≈ 118 dB) on a floor of about 101–112 dB. The paper does not discuss the humps. Those above f_s are where BBSAN would be expected near the nozzle ([Tam 1986](tam-1986-bbsan-screech-relationship.md), screech as the lower bound of BBSAN); the one at 4.8 kHz is not (my reading).
  - My conversions (T_0 = T_∞ = 293 K assumed): U_j ≈ 390 m s⁻¹, St = f D_j/U_j ≈ 0.32 (f D/U_j ≈ 0.31), λ/D = a_∞/(fD) ≈ 2.87, consistent with the twin B point of Fig. 10 (λ/D ≈ 2.84 at M_j 1.33).
- **Coherence and phase across the pair** (Figs 4–5, p. 955–956). Sensors: LH (outer side of one nozzle), C (between the nozzles) and RH (outer side of the other), all in the exit plane on one line.
  - Coherence is essentially 1 at f_s for both RH–C and RH–LH; "all wave motion is perfectly correlated" around f_s (p. 955).
  - Phase at f_s: RH against C is near π (read: ≈ 0.85–0.9π over about 6.7–9.4 kHz); RH against LH is near 0 (read: over about 6.2–7.9 kHz). The waves along the outer peripheries are in phase with each other and in antiphase with those between the plumes. The authors conclude that the governing instability wave is antisymmetric (p. 955).
  - Off the tone (my readings, not discussed in the paper): a coherent band over ≈ 3–5 kHz (coherence 0.5–0.8 for RH–C, 0.4–0.65 for RH–LH) with outer sensors in phase; and a narrower band near 5.0–5.8 kHz with RH–LH coherence up to 0.7 and phase ≈ −π, i.e. outer sensors in antiphase. That would be a broadband component antisymmetric about the midplane, the opposite symmetry from the tone.
- **What the coupled state is** (p. 955–957).
  - The phase-averaged schlieren (Fig. 6, two phases 180° apart) shows a helical mode "identified as a B-mode type". Each plume holds "two equal but oppositely rotating B-type helicies", so it flaps in a preferred plane. The authors say that when the plumes couple, the flapping plane is "imposed by boundary conditions"; when they are uncoupled, its orientation is arbitrary (p. 955–956).
  - The shock-cell pattern reverses between the two phases, and the video shows "intense pressure waves emanating from a region near the fourth shock cell" travelling upstream, between and outside the plumes. Wavefronts generated by different plumes "arrive at each nozzle's exit simultaneously" (p. 956–957).
  - **Directivity** (Fig. 7, p. 957). With the model rotated 90°, so that the schlieren now sees waves travelling normal to the plane of the nozzles, the waves fall below the schlieren's resolution. Hence high pressure along the axis containing both nozzles and minima normal to it. This matches Berndt's circumferential nozzle-surface pressures from model transonic-tunnel tests.
  - **My mapping to modern labels.** The sensor phases (each jet's inner and outer sides in antiphase; outer sensors in phase) and the directivity mean that each jet flaps in the plane containing both nozzle axes, mirror-symmetrically about the midplane: the jets move towards and away from each other together. That is **1SS** in the convention of [Rodríguez 2023](rodriguez-2023-preferred-flapping-round-twin-jets.md) and [Nogueira 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md) ("varicose" lateral flapping in the nozzle plane). It is "symmetric" (0° raw opposing-microphone phase) in [Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), and the 0° phase that [Knast 2018](knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md) label "antisymmetric". The paper's "antisymmetric" refers to each jet about its own axis. A symmetric pressure field puts an antinode at the midplane, which is why this state loads the internozzle flaps; a midplane-antisymmetric state would put a node there.
  - The text says the flapping plane "lies normal to the photographic plane in Fig. 6" (p. 955–956), yet Fig. 6 views the plane containing both plumes, and the sensor phases and Fig. 7 put the flapping in that plane. I read the sentence as loosely worded; check the conference version.
- **Single choked tube** (one tube's flow blocked; Figs 8–9, p. 957–958).
  - λ/D against M_j (Fig. 8) shows A0, A1 and A2 (toroidal), B, C and D (helical) and a new **E** mode, "unknown", which "does not appear to have been measured by previous investigators". Modes are labelled after Seiner (1984). "Many resonant modes exist, often appearing simultaneously with this type of nozzle" (p. 957).
  - Read from Fig. 8: A0 at M_j ≈ 1.02–1.06 (λ/D 1.33–1.46); A2 1.07–1.12 (1.43–1.55); A1 (open squares) from ≈ 1.06 to 1.37 (1.4 → 2.2); B 1.02–1.49 (1.85 → 3.02); C 1.25–1.68 (2.19 → 3.30); E 1.38–1.88 (2.07 → 3.26); D 1.71–1.87 (3.69 → 4.27). Two series are drawn but not labelled or discussed: filled circles at M_j 1.01–1.07 (λ/D 3.1–3.4) and filled triangles at 1.33–1.59 (λ/D 1.40–1.76).
  - Amplitude at the internozzle sensor (Fig. 9; only modes above 130 dB shown). Read: A1 rises to 149 dB at M_j 1.12 and drops to ≈ 127 dB by 1.15. B jumps from 134 to 147.5 dB between 1.12 and 1.14 and stays at 147–152 dB to 1.37 (peak 152 at 1.20), then drops to ≈ 133 dB. C peaks at 144 dB at 1.39–1.40 and falls to 132.5 dB at 1.68. D is 133–130 dB over 1.72–1.88. One mode dominates at any M_j; toroidal structure dominates only "a very small region at low values of M_j" (p. 958).
- **Twin tubes** (Figs 10–11, p. 957–958).
  - Fewer modes than the single jet: A0, A1 and A2 only up to M_j ≈ 1.10, B 1.08–1.63, C 1.36–1.59, D 1.56–1.81, and no E (Fig. 10, read). B and D nearly form one line and overlap in M_j 1.56–1.63, with D about 3 % shorter in λ there (read).
  - Acoustic wavelengths grow longer than the single jet's as M_j rises, "presumably due to shock wave stretching caused by mutual interaction of the twin plumes" (p. 958). Read: twin/single B λ ratio ≈ 1.03 at M_j 1.20, 1.07 at 1.30, 1.09 at 1.40–1.49. In St (my conversion) the twin B tone is 3–9 % lower than the single B tone at the same M_j.
  - Amplitude (Fig. 11, read): A1 peaks at 143.5 dB (M_j 1.09). B jumps from ≈ 123 to 151.5 dB at M_j ≈ 1.09, climbs to **162.5 dB at M_j 1.28–1.33**, then falls to 156 dB at 1.45, 147.5 at 1.485, 140.5 at 1.515 and 130 at 1.63. C rises from 130 dB (1.36) to 141.5 dB (1.485) and falls to 129.5 (1.585). D is 133–134 dB near 1.56–1.67 and falls to 125.5 dB at 1.81. The A → B switch is therefore at M_j ≈ 1.09 for the pair against ≈ 1.13 for the single jet (my reading; isentropic NPR ≈ 2.11 against 2.22).
- **Coupling amplifies more than two jets would** (Fig. 12, p. 958). B-mode amplitude on a linear scale (psi, RMS by my check: 0.385 psi ↔ 162.5 dB, 0.16 psi ↔ 155 dB). For 1.15 ≤ M_j ≤ 1.5 the twin amplitude exceeds the single-jet amplitude by "a factor of greater than 2" (p. 958); read: ≈ 2.1 at M_j 1.20, ≈ 4 at 1.30 (0.375 against 0.09 psi, about 12 dB), and much more above 1.38, where the single-jet B mode has given way to C. The levels are "beyond what could be justified by simply doubling the radiated power" (p. 959).
- **Frequency prediction** (Fig. 14, p. 958–959). Eq. (3) "adequately" predicts the twin-jet tones over a wide range of M_j, but it gives one value per M_j and deviates "substantially" from the B mode below M_j 1.2 (p. 959).
  - My digitisation of Fig. 14 against my reconstruction of Eq. (3): the curve runs through the A modes (M_j < 1.1), lies 5–9 % below the C points (M_j 1.36–1.59) and on the D points (1.56–1.81). The B points lie below it all the way to M_j ≈ 1.5: by ≈ 27 % at 1.08, 17 % at 1.19, 11 % at 1.30, 7 % at 1.40 and ≤ 4 % from 1.5. The paper's "below 1.2" understates the gap.
  - The amplitude cannot yet be predicted (p. 958).
- **Shock spacing of the coupled pair** (Fig. 13, Eq. 5, p. 958–959). Pack's linear analysis and the numerical (SCIPVIS) and multiple-scales methods "severely underestimate the shock wavelength found in a twin-plume model whose wave field is coupled" (p. 958–959). So L was measured from centreline static-pressure traverses (method of Seiner, Dash & Wolf 1985), giving L/D = 2.06M_j − 1.6, 10–15 % longer than the single choked jet of that reference (p. 959).
  - My arithmetic: Eq. (5) lies 1–7 % *below* Prandtl–Pack, L = 1.306D_j√(M_j² − 1), for 1.2 ≤ M_j ≤ 1.6 (0.99 at 1.2, 0.95 at 1.4, 0.93 at 1.6), and above it only for M_j ≲ 1.18, where a linear fit cannot follow Pack to zero. So the "severe underestimate" can only refer to *average*-spacing predictions (cells shrink downstream), not to Pack's first-cell value.
  - Fig. 13 (M_j 1.42, read): P/P_a peaks of 1.67, 1.70, 1.68, 1.47, 1.25 and 1.08 at x/D ≈ 1.0–1.2, 2.54, 3.82, 5.06, 6.23 and 7.37. Peak-to-peak spacing falls from ≈ 1.4D to ≈ 1.15D, mean ≈ 1.25D against 1.325D from Eq. (5) and 1.40D from Pack. The trace levels off near P/P_a ≈ 0.92 by x/D 10. Whether this traverse is of a twin plume or a single plume is not stated.
- **Suppression by modifying one nozzle** (Figs 15–16, p. 959–960). Concept 1 is a small tab at the exit (projected area ≈ 0.023 cm², ≈ 1.2 % of the exit area by my arithmetic). Concept 2 is a notch of the same area. Either goes on one nozzle only, and "the azimuthal location for either method appears arbitrary".
  - The dashed line at 0.16 psi (155 dB) is a level above which "sonic fatigue and crack growth problems usually can be expected" (Guinn, Balena & Soovere 1976). Unsuppressed, the twin B mode exceeds it over M_j ≈ 1.13–1.46 (read).
  - Concept 1 (read): all suppressed points stay ≤ 0.092 psi (150 dB, at M_j 1.26). At M_j 1.30 the tone falls from 0.375 to 0.047 psi (about −18 dB); at 1.26, from 0.34 to 0.092 psi (−11 dB). These suppressed levels are comparable to or below the single-jet B levels of Fig. 12 (≤ 0.12 psi), so the tab returns the pair to roughly uncoupled behaviour rather than silencing screech (my comparison).
  - Concept 2 ("not optimized"; read): the tone *rises* at M_j 1.14–1.18 (0.19 → 0.22 and 0.21 → 0.295 psi), drops only modestly at 1.28–1.40 (0.385 → 0.257 psi at 1.33, ≈ −3.5 dB) and stays above 0.16 psi from M_j ≈ 1.14 to 1.41. It falls well below only from M_j ≈ 1.43.
  - Fig. 16 (concept 1 at M_j 1.32): the wave structures of the two plumes are no longer equal, the plumes are uncoupled, and the intense inner and outer pressure waves are "practically eliminated". Suppressing the B mode in one plume "drastically diminishes the plume spread rate of both plumes" (p. 960). Neither concept is expected to cost significant thrust; thrust was not measured (p. 959).
- **Conclusions** (p. 960). The B-type instability is "distinguished from others in that its axial wavelength is a near-integer multiple of the shock wave spacing", and when selected it gives "the fastest natural spread rate". Its range of influence in the twin study is M_j 1.15–1.50. The minimum spacing that prevents coupling was not investigated. Model-scale C-D axisymmetric and 2-D twin nacelles, and static and full-scale F-15 tests, are planned, because forward flight and temperature change mode selection.
  - My check of the "near-integer multiple": with V_c = 0.7V_j and the twin L of Eq. (5), the twin B mode has λ_h/L = 0.7(D_j/D)/(St·L/D) ≈ 2.0 ± 0.05 over M_j 1.24–1.63 (2.1–2.3 below 1.2). Twin C gives ≈ 1.70–1.77, D ≈ 1.9–2.0, and the twin A points ≈ 1.6–1.8. The claim holds for B on these assumptions; it rests on the assumed V_c.

## Setup / method
- **Model** (Fig. 1, p. 954–955). A 1/40-scale F-15 empennage ("twin-jet nacelle") with two powered choked axisymmetric nozzles. The F-15 and B-1B share the same engine centreline spacing. Spacing 1.9D, centreline to centreline. Dry, unheated air from a common reservoir.
  - The "nozzles" are choked tubes 45.72 cm long and 1.57 cm in diameter (L/D ≈ 29), so the exit flow is a developed pipe flow with large axial pressure loss (my inference from the length). A static port 0.12 cm upstream of each exit, on the outer side, gives the exit pressure from which M_j is computed, "to account for the large axial tube pressure gradient" (p. 954). The reservoir pressure ratio is therefore not the isentropic NPR of M_j; the params field gives isentropic equivalents only.
  - The lip thickness and outer nozzle shape are not given. Fig. 1 shows each tube end inside a larger ring of the nacelle. [Ponton 1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md) later showed, in the same laboratory, that the lip changes the mode ranges.
  - The test environment (anechoic or not) is not stated.
- **Single-jet reference.** One tube's flow path was blocked (p. 957), so the "single jet" still has the blocked twin nozzle and the nacelle 1.9D away.
- **Pressure sensors** (p. 954–955; Fig. 1 and the insets of Fig. 4). A B&K 4136 pressure microphone sits between the nozzles at the exit plane. Two others are in the exit plane on the same line, on the far side of each nozzle. Exact distances from the lips are not given. All autospectra and amplitudes are from the internozzle sensor. Coherence and transfer functions use it as the reference.
  - Spectral parameters (sampling rate, block length, averages, bandwidth) are not stated. Fig. 3 is narrow band on a log frequency axis (1–60 kHz).
  - Amplitudes are tone levels in dB re 20 µPa (Figs 9, 11) or psi (Figs 12, 15). The two sets agree with RMS pressure (my check above).
- **Phase-averaged schlieren** (Fig. 2, p. 955).
  - The internozzle signal is buffered, band-pass filtered "100 Hz around" f_s and fed to a phase-locked loop. Its pulse train is locked in phase and frequency to the tone, with the phase offset to the strobe stepped from 0 to 2π.
  - The strobe fires at a submultiple of f_s (typically 1/4 to 1/5), because the lamp driver could not follow f_s. Xenon flashlamp with a 1.5 mm spark gap and pulses of "a few µs" (about 2–4 % of a 131 µs period at 7.62 kHz, my arithmetic).
  - Two 30.5 cm parabolic mirrors with 183 cm focal length. Knife edge vertical, so density gradients along the plume axis are shown. Images are focused onto a vidicon (video) and 70 mm film.
  - Each record **averages 32 phase-locked flashes photographically**, so turbulence unrelated to the tone averages to a constant contrast (p. 955).
  - Data dependence: no high-speed camera is needed, only a time-resolved reference signal and steady phase locking. The method assumes a single steady tone and a steady coupling state. Intermittent coupling or switching between symmetries (as later found by [Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md) and [Wong 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md)) would blur the average, and the paper reports no test of this. At M_j 1.32, coherence ≈ 1 at f_s argues for steady coupling there.
- **Static-pressure surveys** (p. 959). Centreline traverses of plume static pressure P/P_a (Fig. 13), reduced to an average shock-cell spacing by the method of Seiner, Dash & Wolf (1985). Probe type and resolution are not given here.
- **Modelling side.** No stability analysis, simulation or amplitude model.
  - The frequency model is Powell's (1953) monopole-array formula (eq. 1). The authors note that Tam, Seiner & Yu's quasilinear instability-wave analysis (AIAA 84-2276; journal version [Tam 1986](tam-1986-bbsan-screech-relationship.md)) reproduces it, with V_c and M_c the convection parameters of the axisymmetric or helical structures that interact with the shocks (p. 958).
  - V_c = 0.7V_j comes from Harper-Bourne & Fisher's (1973) crossed-beam data, D_j from [Tam & Tanna 1982](tam-1982-shock-associated-noise-cd-nozzles.md) (eq. 4), and L from the twin-plume fit (eq. 5) rather than from a shock-cell model.
  - M_c is not defined explicitly. With M_c = V_c/a_∞ and T_0 = T_∞, my reconstruction of eq. (3) reproduces the plotted curve within about 5 % (0.85 at M_j 1.02, 0.47 at 1.2, 0.24 at 1.6, 0.18 at 2.0).

## Key equations
All read from the rendered pages (p. 958–959). γ = 1.4 implied.

- **Powell's screech frequency** (eq. 1, p. 958): $f_s=\dfrac{V_c}{L\,(1+M_c)}$, with L the shock wavelength and V_c, M_c the convection velocity and Mach number of a "turbulent eddy".
- **Convection velocity** (eq. 2, p. 958): $V_c=0.7\,V_j$.
- **Strouhal form** (eq. 3, p. 958): $St=\dfrac{f_sD_j}{V_j}=\dfrac{0.7\,(D_j/D)}{(L/D)\,(1+M_c)}$.
- **Fully expanded diameter** (eq. 4, p. 958, from Tam & Tanna 1982): $\dfrac{D_j}{D}=\left\{\dfrac{1+\frac{\gamma-1}{2}M_j^2}{1+\frac{\gamma-1}{2}M_d^2}\right\}^{\frac{\gamma+1}{4(\gamma-1)}}\left(\dfrac{M_d}{M_j}\right)^{1/2}$, with M_d = 1 here.
- **Twin-plume average shock spacing** (eq. 5, p. 959): $L/D=2.06\,M_j-1.6$. The fitted M_j range is not stated.
- **Conversions used in this note** (mine, T_0 = T_∞): $V_j/a_\infty=M_j\big/\sqrt{1+\frac{\gamma-1}{2}M_j^2}$; $St=\dfrac{D_j/D}{(\lambda/D)\,(V_j/a_\infty)}$ from the plotted λ/D = a_∞/(fD); $\lambda_h/L=\dfrac{0.7\,(D_j/D)}{St\,(L/D)}$ for the hydrodynamic wavelength V_c/f_s. The St from Fig. 10's λ/D agrees with Fig. 14 within ≈ 0.005 (e.g. twin B 0.320 against 0.319 read at M_j 1.33), which supports T_0 = T_∞.

## Data tables
**Twin-jet modes, read from Fig. 14 (St = f_sD_j/V_j as plotted) and Fig. 10 (λ/D)**, with Eq. (3) as I reconstruct it. "fig" = read from the figure.

| Mode | M_j | λ/D (Fig. 10, fig) | St (Fig. 14, fig) | Eq. (3) St (mine) | λ_h/L (mine) |
|---|---|---|---|---|---|
| A (A0/A1/A2) | 1.02 | 1.36 | 0.79 | 0.85 | 1.8 |
| A (A1/A2) | 1.10 | 1.57 | 0.645 | 0.62 | 1.6 |
| B | 1.08 | 2.07 | 0.49 | 0.67 | 2.3 |
| B | 1.20 | 2.44 | 0.39 | 0.47 | 2.1 |
| B | 1.30 | 2.75 | 0.333 | 0.375 | 2.0 |
| B | 1.40 | 3.04 | 0.29 | 0.314 | 1.97 |
| B | 1.49 | 3.29 | 0.265 | 0.277 | 1.95 |
| B | 1.63 | 3.77 | 0.229 | 0.234 | 1.98 |
| C | 1.36 | 2.56 | 0.35 | 0.335 | 1.73 |
| C | 1.49 | 2.88 | 0.304 | 0.277 | 1.71 |
| C | 1.59 | 3.25 | 0.264 | 0.245 | 1.77 |
| D | 1.67 | 3.80 | 0.225 | 0.226 | 1.94 |
| D | 1.81 | 4.41 | 0.193 | 0.200 | 2.04 |

> The λ_h/L column assumes V_c = 0.7V_j and the twin L of Eq. (5) for every mode. The A-mode symbols at M_j < 1.1 are hard to tell apart in Fig. 14.

**Single-jet modes, λ/D read from Fig. 8, St converted by me** (T_0 = T_∞):

| Mode | M_j | λ/D (fig) | St = fD_j/U_j (mine) |
|---|---|---|---|
| A0 | 1.02 | 1.33 | 0.81 |
| A2 | 1.12 | 1.55 | 0.65 |
| A1 | 1.30 | 1.96 | 0.47 |
| B | 1.20 | 2.36 | 0.41 |
| B | 1.30 | 2.57 | 0.36 |
| B | 1.49 | 3.02 | 0.29 |
| C | 1.25 | 2.19 | 0.43 |
| C | 1.68 | 3.30 | 0.26 |
| D | 1.71 | 3.69 | 0.23 |
| D | 1.87 | 4.27 | 0.20 |
| E | 1.38 | 2.07 | 0.43 |
| E | 1.87 | 3.26 | 0.26 |

> Cross-check with [Ponton 1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md) (same laboratory, D = 25.4 mm conical nozzle): their A2 tone "about 8.5 kHz" at M_j 1.14 gives λ/D ≈ 1.59, against 1.55 at 1.12 here; their B tone "near 5 kHz" at 1.34 gives ≈ 2.70, against 2.71 here (my conversion with a_∞ = 343 m s⁻¹).

**Peak tone levels at the internozzle sensor** (Figs 9, 11, 12, 15; read):

| Configuration | Mode | Peak level | At M_j |
|---|---|---|---|
| Single | A1 | 149 dB | 1.12 |
| Single | B | 152 dB (0.12 psi) | 1.20 |
| Single | C | 144 dB | 1.39–1.40 |
| Single | D | ≈ 133 dB | 1.72 |
| Twin | A1 | 143.5 dB | 1.09 |
| Twin | B | 162.5 dB (0.385 psi) | 1.28–1.33 |
| Twin | C | 141.5 dB | 1.485 |
| Twin | D | ≈ 134 dB | 1.585 |
| Twin, tab on one nozzle | B | 150 dB (0.092 psi) | 1.26 |
| Twin, notch on one nozzle | B | ≈ 160.4 dB (0.305 psi) | 1.21 |
| Fatigue reference | – | 155 dB (0.16 psi) | – |

> Fig. 3 gives ≈ 159 dB at M_j 1.32 in a narrow-band spectrum, against 162.5 dB at 1.33 in Fig. 11; the analysis bandwidths, or different runs, may explain the 3–4 dB.

## Figures worth remembering
- **Fig. 1 (p. 955):** the 1/40-scale F-15 empennage with the 1.9D spacing, D = 1.57 cm and the three sensor positions.
- **Fig. 2 (p. 955):** phase-averaged schlieren chain: microphone multiplexer, band-pass filter, phase-locked loop, strobe, knife edge, video.
- **Fig. 3 (p. 955):** internozzle spectrum at M_j 1.32, f_s = 7.62 kHz and four harmonics.
- **Figs 4–5 (p. 956):** coherence and transfer-function phase, RH–C and RH–LH, 1–10 kHz. The key evidence for the coupled symmetry.
- **Fig. 6 (p. 956):** phase-averaged schlieren at relative phases 0 and π: two plumes with reversed shock-cell patterns and upstream-propagating bands outside them.
- **Fig. 7 (p. 957):** the same condition viewed at 90°: shock cells but no visible waves (directivity).
- **Figs 8–9 (p. 957):** single-tube staging map (λ/D against M_j, modes A0–E) and modal amplitudes.
- **Figs 10–11 (p. 957–958):** the same for the pair.
- **Fig. 12 (p. 958):** B-mode amplitude, twin against single, linear scale. The key load figure.
- **Fig. 13 (p. 958):** centreline P/P_a at M_j 1.42, about six strong cells.
- **Fig. 14 (p. 959):** twin St against M_j with Eq. (3).
- **Fig. 15 (p. 959):** B-mode amplitude with and without the tab (a) and the notch (b), with the 0.16 psi fatigue line.
- **Fig. 16 (p. 959):** phase-averaged schlieren of the tab-suppressed pair at M_j 1.32: unequal, uncoupled plumes without the outer waves.

## Notation
- D: tube exit diameter (1.57 cm); D_j: fully expanded diameter (eq. 4); s: centreline spacing (1.9D); x: axial distance.
- M_d, M_j: design (1) and fully expanded Mach numbers; V_j: fully expanded velocity; V_c, M_c: convection velocity and Mach number of the large-scale structure; a_∞: ambient sound speed; γ: ratio of specific heats.
- f_s: resonance (screech) frequency; St = f_sD_j/V_j; λ: acoustic wavelength a_∞/f_s (Figs 8, 10); L: average shock-cell spacing (eq. 5); λ_h: hydrodynamic wavelength V_c/f_s (my notation).
- P, P_a: plume static and ambient pressure.
- LH, C, RH: left-hand outer, centre (internozzle) and right-hand outer exit-plane sensors.
- Mode labels A0, A1, A2 (toroidal), B, C, D (helical), E (unknown), after Seiner (1984).

## Relevance to this project
This is the founding twin-jet coupling paper behind the [twin-jet-coupling](../Topics/twin-jet-coupling.md) thread, and the source of the "Seiner et al. (1986)" results quoted by [Bell 2018](bell-2018-coupled-underexpanded-supersonic-twin-jets.md) and [Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md) and of the F-15/B-1B motivation in [Raman 1999](raman-1999-supersonic-jet-screech-half-century-powell-present.md) (p. 559). It fits the CLAUDE.md research area as resonance in multi-jet configurations studied with acoustics and phase-locked schlieren, and it bears on near-field loads in clustered nozzles.

**How it fits the twin-jet thread**
- **The coupled state is 1SS lateral flapping, at close spacing.** At s/D 1.9 the loud state is mirror-symmetric about the midplane, with flapping in the nozzle plane (my mapping above). At s/D 3 the Monash pair is loudest in the *antisymmetric* band (Bell's 180°, NPR 3.0–3.5, ≈ 172 dB) and turns symmetric only above NPR ≈ 4.4 ([Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), p. 9–12). [Nogueira 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md) find 1SS at NPR 5. So the symmetry chosen at a given M_j depends on spacing.
  - [Rodríguez 2023](rodriguez-2023-preferred-flapping-round-twin-jets.md)'s KH maps favour SA1 below s/D 3 near St 0.3 (that note, p. 12), but the B mode here (St ≈ 0.33–0.5, St·s/D ≈ 0.6–0.9) is 1SS. This is another case where KH growth alone picks the wrong symmetry, as with Nogueira's 1SS (topic page).
  - [Stavropoulos 2024](stavropoulos-2024-upstream-waves-merging-twin-jets.md) find that the SA guided-mode band shifts as the jets approach while SS barely moves. A guided-mode reason for SS at 1.9D is therefore plausible (my inference, untested).
- **Coupling does move the tone at this spacing.** The topic page's "coupling barely moves the tone" (within about 0.02 in St) comes from s/D ≥ 2 round twins and rectangular twins. Here the twin B tone is 3–9 % (≈ 0.01–0.027 in St) below the single-jet B tone over M_j 1.2–1.5, with 10–15 % longer shock cells (p. 958–959). The single jet runs in the same nacelle with the other tube blocked, so installation is matched.
- **Staging shifts too.** The A → B switch moves from M_j ≈ 1.13 (single) to ≈ 1.09 (twin), and the B range widens to about 1.09–1.6. By contrast, [Wong 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md) find A1/A2 staging NPRs nearly unchanged for s/D ≥ 2. The two results concern different transitions (A → B against A1 → A2) and different spacings.
- **Loads, not just tones.** The B tone is up to ≈ 4× (12 dB) the single-jet level at the midplane. That is more than coherent doubling (6 dB) would give, which suggests the coupled loop itself is stronger, not just the superposition of two jets (the paper's argument, p. 958–959). [Raman 1998](raman-1998-supersonic-jet-screech-review.md) report ≈ 15 dB between coupling modes midway between rectangular twins (p. 90–91); this paper is the round-jet counterpart.
- **Decoupling by breaking one jet.** A tab of ≈ 1.2 % blockage on one nozzle suppresses the coupled mode by 11–18 dB and returns the levels to single-jet values. A notch of the same area fails over most of the range. This parallels [Esfahani 2021, control](esfahani-2021-control-twin-rectangular-jet-coupling.md), where decoupling coincides with screech being disrupted on one jet, and [Johnston 2016](johnston-2016-underexpanded-jet-intrusive-tab-visualisation.md), where a single tab (2 % blockage) changes mode selection without silencing the tone. The azimuthal position of the tab "appears arbitrary" here (p. 959), which is worth testing against Johnston's mode change.
- **Frequency model.** Eq. (3) with V_c = 0.7V_j is the [Tam 1986](tam-1986-bbsan-screech-relationship.md)/[Panda 1999](panda-1999-experimental-investigation-screech-noise-generation.md) formula, except that L is the measured mean spacing (without Tam's 0.8 factor). It overpredicts the twin B tone by 7–27 % for M_j < 1.45 (my digitisation).
  - Using U_c = 0.6U_j, near [Knast 2018](knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md)'s measured 0.57–0.60U_j in round twins (that note, p. 10), fits the twin B tone within 3 % at M_j 1.30–1.45, but not at lower M_j (my arithmetic).
  - The twin B mode has λ_h ≈ 2L. In guided-jet-mode closure, k_s = k_h + |k_u|, so λ_h = 2L means an upstream wave whose phase speed is about U_c in magnitude. [Jeun 2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) measured a guided-mode phase speed of −0.71U_j in rectangular twins (p. 18–19). On that reading the "near-integer multiple" of the conclusions is a by-product of guided-mode closure, not an integer-locking rule (my inference; it depends on the assumed U_c).
  - C at λ_h/L ≈ 1.7 against B at ≈ 2.0 fits B and C closing on different shock wavenumbers (k_s1 against k_s2; [Edgington-Mitchell 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 11–13), with the same caveat.
- **Source near the 4th shock.** Upstream waves leave "near the fourth shock cell" (p. 956). This agrees with [Mercier 2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md) (4th shock) and the 3rd–4th shock sources in [Panda 1999](panda-1999-experimental-investigation-screech-noise-generation.md) and [Raman 1999](raman-1999-supersonic-jet-screech-half-century-powell-present.md).

**Methods and data for the lab workflow (CLAUDE.md)**
- **Time-resolved signals.** Exit-plane microphones with cross-spectral coherence and phase need time-resolved pressure, and the phase-locked strobe needs a time-resolved reference signal (but not a high-speed camera). Both deliver only block-averaged or phase-averaged pictures that assume one steady tone and one steady coupling.
  - The paper says nothing about intermittency, how long the coupling persists, or switching, though later work finds all of these at s/D 2–3 ([Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md); [Wong 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md)). The off-tone 5.0–5.8 kHz band with antiphase outer sensors (my reading of Fig. 5b) hints that the opposite symmetry is present as a coherent broadband component.
  - A modern redo would band-pass the three sensors at each tone and track Hilbert envelopes and the inter-sensor phase (Bell's method, with a beat test and a Rayleigh null). On time-resolved schlieren of a close-spaced pair, SPOD → reconstruction of the tone band from even and odd fields → Hilbert POD would give instantaneous amplitude per symmetry and per jet, and show whether the 1SS state at s/D ≈ 2 ever switches.
- **Non-time-resolved data.** The 32-flash phase-locked average is a precursor of phase-averaged PIV/schlieren conditioned on a reference microphone. It suits non-time-resolved diagnostics when the tone is steady. When coupling is intermittent, conditional sampling or symmetry-imposed POD pairs ([Nogueira 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md)) are safer.
- **Rig lessons.** The single-jet baseline here has a blocked tube 1.9D away; the tubes are long (L/D ≈ 29) with lips not recorded; M_j is set from exit static pressure; and the enclosure is not described. Each of these can move staging limits ([Ponton 1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md); [Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), p. 6, 17–18). Comparisons with Monash twin data at matched M_j should allow for them.

**Modelling side and the PyFR staging LES**
- No model here predicts coupling symmetry or amplitude, and that is still true of the twin-jet models on the topic page. The paper's data (1SS at s/D 1.9, M_j 1.1–1.6, B tone 3–9 % below the single jet) are a test case for twin vortex-sheet or Floquet guided-mode analysis at close spacing ([Stavropoulos 2023](stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa.md); [Stavropoulos 2024](stavropoulos-2024-upstream-waves-merging-twin-jets.md)). They also test whether the longer twin shock cells alone explain the tone shift.
- For the single-jet PyFR staging LES (`Simulations/PyFR_Staging_Continuation/`), the single-tube map (Fig. 8) is another A/B/C/D reference with an unusual "E" branch. The twin result is a reminder that a nearby surface (here a blocked tube at 1.9D) can be part of the staging map. The λ_h/L diagnostic (U_c from the LES, k_s from the centreline pressure) would test whether B is the k_s1, λ_h ≈ 2L branch in a jet without the assumed U_c.

**Rocket noise.** Screech itself is absent at full scale ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)). The paper's point that coupled plumes can load the structure between nozzles at levels above the sum of two jets bears qualitatively on clustered-nozzle near fields ([Kandula 2008](kandula-2008-near-field-acoustics-clustered-rocket-engines.md)); the link is mine.

**Items to verify against the PDF**
1. All plotted values: the Fig. 3 levels and humps, the coherence and phase bands in Figs 4–5, the λ/D and St readings of Figs 8, 10 and 14, the amplitude readings of Figs 9, 11, 12 and 15, and the Fig. 13 peak positions.
2. The flapping-plane sentence (p. 955–956, "normal to the photographic plane") against Fig. 6 and the sensor phases.
3. Whether Fig. 13 is a twin-plume or single-plume traverse, and the M_j range fitted by Eq. (5).
4. The definition of M_c (taken here as V_c/a_∞) and the stagnation temperature (taken as ambient).
5. Whether the psi amplitudes are RMS (consistent with the dB figures by my check) and the bandwidth of the dB tone levels.
6. The unlabelled filled-circle and filled-triangle series in Fig. 8.

**Candidates for `/add-paper`** (cited, not in the library): Berndt 1984 (SAE TP-841540, B-1A internozzle pressures); Powell 1953 (Proc. Phys. Soc. B66, choked-jet mechanism); Seiner 1984 (AIAA 84-2275, high-speed jet aeroacoustics, the mode labels); Pack 1950; Harper-Bourne & Fisher 1973 (AGARD CP-131); Dash, Wolf & Seiner 1985 and Seiner, Dash & Wolf 1985 (AIAA J. 23, SCIPVIS Parts I and II); Tam, Jackson & Seiner 1985 (JFM 153, multiple-scales shock cells); Guinn, Balena & Soovere 1976 (NASA CR-144996, sonic fatigue). Tam, Seiner & Yu (AIAA 84-2276) is in the library as its journal version, [Tam 1986](tam-1986-bbsan-screech-relationship.md).
