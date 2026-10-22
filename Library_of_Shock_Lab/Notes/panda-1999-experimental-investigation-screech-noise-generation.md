---
key: "panda-1999-experimental-investigation-screech-noise-generation"
title: "An experimental investigation of screech noise generation"
authors: ["Panda, J."]
year: 1999
type: "article"
venue: "JFM 378, 71–96"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "378", "pages": "71--96"}
doi: "10.1017/S0022112098003383"
arxiv: ""
pdf: "screech/Panda_1999_An-Experimental-Investigation-Of-Screech-Noise-Generation.pdf"
version: "published"
unverified: []
group: false
facility: "NASA Lewis free jet facility"
data: ["schlieren", "microphones-near", "laser-scattering"]
methods: ["statistics", "PSD", "coherence", "phase-averaging", "resonance-model"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "standing-waves", "source-location", "KH-wavepackets", "shock-cells", "coherent-structures", "directivity", "helical", "installation-effects"]
params: {"NPR": "2.4, 3.3", "M_j": "1.19, 1.42", "f_s": "8400 Hz, 5400 Hz", "St": "≈ 0.60, 0.33 (f D/U_j; derived here assuming T₀ = T_a, not stated)", "Re": "0.93×10⁶, 1.26×10⁶ (U_j, D)", "D": "25.4 mm", "M_c": "0.70, 0.68 (u_c/c_∞)", "mode": "axisymmetric (A2 per Mercier 2017), helical"}
topics: ["screech", "screech-frequency-and-global-modes", "screech-staging-and-mode-switching"]
related: ["mercier-2017-screech-feedback-loop-underexpanded-round-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "raman-1998-supersonic-jet-screech-review", "tam-1986-bbsan-screech-relationship", "mancinelli-2019-screech-prediction-upstream-modes", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2024-guided-jet-waves", "farghadan-2026-wave-interactions-screeching-jet", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "esfahani-2021-coupling-modes-twin-rectangular-jets", "ivelja-2024-modal-analysis-screeching-elliptical-jets"]
cites: ["tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise"]
summary: "Phase-averaged near-field mics + phase-locked spark schlieren, M_j 1.19/1.42: KH–sound standing wave L_sw ≈ 0.8L; sound born at 3rd–4th shock; L_sw screech formula"
---
# An experimental investigation of screech noise generation

- **Authors:** J. Panda, Modern Technologies Corporation (Middleburg Heights, OH) and NASA Lewis Research Center, Cleveland (p. 71). The rocket-noise note [panda-2013](panda-2013-noise-sources-rocket-test-firings-launch-phased-array.md) is by Jayanta Panda at NASA Ames, probably the same author; this PDF prints only the initial.
- **Source:** J. Fluid Mech. 378, 71–96 (1999), © 1999 Cambridge University Press. Received 10 April 1996, revised 17 March 1998 (p. 71). DOI 10.1017/S0022112098003383 (printed in the page margin). A video animation of the phase-averaged pressure field, "Pressure wave propagation in a screech cycle", is NASA CR-198467 (p. 93).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/Panda_1999_An-Experimental-Investigation-Of-Screech-Noise-Generation.pdf` (26 pp., publisher's version). The Read tool reports it as password-protected; use `pdftotext`/`pdftoppm`. **Page refs are journal pages 71–96; PDF page = journal page − 70.** Tables 1–2, eqs. 1–8 and Figs 1, 4–9 and 11 were checked against rendered pages.
- **Tags:** screech, underexpanded round jet, partial standing wave, hydrodynamic–acoustic interference, standing wavelength L_sw, Powell feedback loop, Fisher & Morfey phased array, Tam et al. (1986) frequency formula, Prandtl–Pack shock spacing, spark schlieren, phase-locked schlieren, phase-averaged near-field pressure, cross-spectral phase, convective velocity modulation, laser light scattering (PMT), sound source location, "pause-and-go" wave motion, screech harmonic directivity, nozzle-flange reflection

## Summary
Panda maps the near field of two screeching underexpanded jets from a 25.4 mm convergent nozzle: NPR 2.4 (M_j 1.19, 8400 Hz, axisymmetric) and NPR 3.3 (M_j 1.42, 5400 Hz, helical) (p. 71, 74). He combines phase-locked spark schlieren, narrowband r.m.s. and phase-averaged pressure maps from a traversed 3.18 mm microphone, and cross-spectral phase from laser light scattering in the shear layer (p. 74–75, 79, 83–89). Along the jet boundary the r.m.s. at f_s has crests and troughs 20 dB apart, which he explains as a partial standing wave between the downstream hydrodynamic field and upstream sound. The crest spacing L_p equals L_sw from 1/L_sw = 1/λ_s + 1/λ_h, which is about 80 % of the shock spacing (Table 1, p. 79–82). Rewriting that relation gives an "exact" screech formula with L_sw in place of the shock spacing, and it reproduces Tam et al.'s 0.8-factor formula (eqs. 3–7, p. 82–83). The phase velocity of the organised structures, measured inside and just outside the shear layer, swings between subsonic and supersonic with period L_sw, not the shock spacing, and he cannot say why (p. 84–87, 94). Phase-averaged pressure maps show sound being born between the 3rd and 4th shocks at M_j 1.19: a radial bulge of a passing hydrodynamic compression or rarefaction shears off and travels upstream in a "pause-and-go" motion, gaining strength from the hydrodynamic field as it goes (p. 89–93). There is no simulation or stability analysis; the models are kinematic wave superposition and existing frequency formulas.

## Key findings
- **Organised structures and shocks in schlieren** (Fig. 3, p. 75–77): 12 spark images at 30° steps over a cycle (M_j 1.19) show fixed shocks and 3–4 doughnut-shaped structures convecting over them, moving one hydrodynamic wavelength λ_h per cycle. They grow up to the 2nd shock, are clearest between the 2nd and 5th, and lose coherence beyond about 4D (5th shock) (p. 77). Spark phase jitter is about ±15° (p. 77).
- **The hydrodynamic pressure field extends outside the shear layer** (Fig. 4, p. 77–79; Fig. 10, p. 90–91). With a larger knife-edge cut-off, phase-averaged schlieren of the helical M_j 1.42 jet shows compression zones beyond the jet boundary. A weak upstream and a strong downstream compression zone merge in Fig. 4(c–g), and the upstream one ends up stronger. Panda reads this as the hydrodynamic field passing energy to the upstream sound (p. 79).
- **Time-averaged near field: a partial standing wave** (Fig. 5, Table 1, p. 79–82):
  - The r.m.s. at f_s differs by 20 dB between crests and troughs along the jet boundary (p. 79). Crests generally lie between adjacent shock tips; an exception is the crest over the first shock at M_j 1.42 (p. 81).
  - The crest spacing L_p (0.67D, 1.02D) equals the standing wavelength L_sw (0.66D, 1.03D) from eq. 2, and differs from the average shock spacing L (0.77D, 1.28D) (Table 1, p. 81).
  - The standing wave is partial because the amplitudes are unequal. Along the boundary the hydrodynamic fluctuations are "an order of magnitude" larger than the acoustic ones, but they decay exponentially with r, so sound dominates further out (p. 81). (See Relevance: a 20 dB crest–trough contrast is not consistent with a 10:1 amplitude ratio in a two-wave model.)
  - A second, diagonal red–blue pattern is attributed to interference between incident sound and its reflection from the 305 mm nozzle flange. It is not analysed (analysed in Raman, Panda & Zaman 1997) (p. 81–82).
- **Standing-wave screech formula** (eqs. 3–7, p. 82–83):
  - With λ_s = c/f_s and λ_h = u_c/f_s, eq. 2 becomes f_s = u_c/[L_sw(1 + u_c/c)], which Panda calls exact because no approximation is made (p. 82).
  - Setting L_sw ≈ L recovers Powell's (1953a) feedback formula and Fisher & Morfey's (1976) phased-array formula. Both put line sources one shock spacing apart; Panda concludes that the correct spacing is L_sw (p. 82).
  - Here L_sw ≈ 0.8L, matching the 80 % of shock spacing that Tam et al. (1986) used empirically. With u_c = 0.7u_j and Prandtl–Pack spacing, eq. 3 gives Tam et al.'s formula, with D in place of D_j (eqs. 5–7, p. 82–83). Panda et al. (1997) found that L_sw can be smaller than, larger than or equal to L, depending on conditions (p. 82).
  - Panda finds it "somewhat puzzling" that the exact relation needs no shock spacing, since only shock-containing jets screech (p. 82).
- **Screech harmonic is generated by the flow** (Fig. 6, p. 83–84): at 2f_s there are two beams, at 90° and about 120° from the downstream axis. The 90° beam is stronger at M_j 1.42 and the forward beam at M_j 1.19. Near the boundary there are standing-wave crests at a shorter spacing. With the 2f_s velocity fluctuations measured in shear layers by Walker et al. (1995) and Raman & Rice (1994), Panda concludes that nonlinear propagation of the fundamental plays only a secondary role (p. 83).
- **Convective speed inside the shear layer** (Fig. 7, p. 84–85): from the cross-spectral phase between the laser-scattering signal at r/D = 0.48 and a fixed microphone, the least-squares mean is M_c = u_c/c = 0.70 (M_j 1.19) and 0.68 (M_j 1.42) (p. 85). Superimposed on the linear phase rise is a sinuous modulation. The local M_c swings by roughly 0.4–1.3 at M_j 1.19 and more at M_j 1.42 (read from Fig. 7), with periods of 0.68D and 1.07D, which equal L_sw rather than L (p. 85). Points where the beam meets a shock are missing, because shock scattering is about three orders of magnitude stronger (p. 75, 84).
- **The same periodicity in other people's data** (Table 2, p. 86): the spacing L_u of the screech-frequency velocity-fluctuation modulation in Raman & Rice (1994, rectangular), Raman (private communication, rectangular) and Hu & McLaughlin (1990, round, excited low-Re jet) matches the L_sw expected from their f_s and M_c to within about 5 % (2.57 vs 2.61, 3.17 vs 3.24, 2.0 vs 1.9). In those jets L_sw is about 1.3 times the shock spacing (my ratio), the opposite of the present jets.
- **Convective speed just outside the boundary** (Fig. 8, p. 86–87): along a line from r/D = 0.6 (M_j 1.19) or 0.7 (M_j 1.42) at the lip, inclined at 5.71°, the microphone phase gives M_c swinging from about 0 to above 1.6 with period L_sw (read from Fig. 8). Minima of the standing-wave amplitude coincide with minima of convective speed (p. 86). Here Panda attributes the modulation to partial interference of the oppositely moving waves (Wiegel & Wlezien 1993; Panda et al. 1997). Close to the boundary the hydrodynamic part dominates, so the net fluctuation still moves downstream (p. 87).
- **Sound generation in the phase-averaged near field** (Figs 9–11, p. 87–93), M_j 1.19:
  - Two kinds of wave: short-wavelength, high-amplitude waves within about 1D of the boundary that move downstream (hydrodynamic, arrow I), and longer, weaker waves above them that move upstream or downstream depending on where they start (acoustic, arrows II and III) (p. 89–90). Phase-matched schlieren confirm that the near-boundary waves are the pressure field of the organised structures (Fig. 10, p. 90).
  - A **demarcation region between the 3rd and 4th shocks, 2.37 < x/D < 3.07**, separates downstream-going sound (to its right) from upstream-going sound (p. 90). Davis & Oldfield (1962) put the sources within the first five shocks (p. 89).
  - **Inception:** the boundary of a hydrodynamic compression or rarefaction bulges out radially, to about half a screech wavelength. It then splits: the upper part, at the acoustic length scale, moves upstream, and the lower part continues downstream with the hydrodynamic field (Fig. 11a–c, p. 90–93). The compression and rarefaction parts start half a cycle apart (p. 90).
  - **"Pause and go":** the acoustic rarefaction dwells on rarefaction parts of the hydrodynamic field and jumps quickly over compression parts, three times between inception and the nozzle (p. 93). Panda calls this, with the amplitude modulation, the telltale sign of a partial standing wave (p. 93).
  - **Growth:** after one cycle the wave nearing the nozzle is much stronger than at inception, and a new one is forming between the 3rd and 4th shocks (Fig. 11i). The wave loses a little over regions of opposite sign and gains more over regions of the same sign, so "various parts of the hydrodynamic field act as multiple sources" (p. 93). The compression part and the M_j 1.42 data behave the same way (p. 93).
- **Facility effect** (p. 73): everything near the jet except the nozzle flange was wrapped in polyurethane foam. The 305 mm flange is the main reflector, and covering it partly or fully changes both screech amplitude and frequency.
- **Open question left by the paper** (p. 94): why the vortices are modulated at L_sw rather than the shock spacing. Panda suggests detailed flow-field measurements and shock–vortex interaction analysis.

## Setup / method
- **Facility** (Fig. 1, p. 73): NASA Lewis free air jet. Plenum about 200 mm in diameter with acoustic treatment and coarse and fine screens (Fig. 1a). Nozzle block (Fig. 1b): convergent, D = 25.4 mm, with stepped external diameters of 102, 76 and 38 mm and a 305 mm flange (read from the figure; the 38 mm step suggests an exit lip of about 6 mm, t/D ≈ 0.25, but the lip is not stated). Underexpanded jets with M_j 1.1–1.65 can be produced (p. 73).
- **Conditions** (p. 71, 74):

  | NPR | M_j | f_s (Hz) | Mode | Re (U_j, D) | M_c = u_c/c (p. 85) |
  |---|---|---|---|---|---|
  | 2.4 | 1.19 | 8400 | axisymmetric | 0.93 × 10⁶ | 0.70 |
  | 3.3 | 1.42 | 5400 | helical | 1.26 × 10⁶ | 0.68 |

  The conditions were chosen for a stable screech tone, which accurate phase averaging needs (p. 74). The reservoir temperature is not stated. The plenum pressure was held within ±0.5 %, giving a screech-frequency drift of ±25 Hz (p. 89). Tone frequencies and mode shapes over the whole M_j range are in Panda (1995a); shock shapes and motion for the same jets in Panda (1998) (p. 72, 74).
- **Spark schlieren** (p. 74): two spherical mirrors, 152 mm diameter, f = 914 mm; spark of about 1 µs; vertical knife edge (axial density gradient); Nikon F4 with open shutter in a dark room.
  - *Phase-locked:* the reference microphone upstream of the nozzle exit is band-passed around f_s; positive-slope zero crossings are the phase reference; a delay generator and single-pulse circuit fire the spark at a chosen delay. Phase-averaged images expose one frame to six flashes at the same delay. The spark recharges for several seconds between flashes, so this is phase-locked, non-time-resolved imaging (p. 74).
  - *Time-averaged:* one negative exposed to eight random flashes (p. 79).
  - Limits: ±15° phase jitter and cycle-to-cycle differences between single images (p. 77); coma at the second focus with the large cut-off reduces sensitivity beyond about 3D in Fig. 4 (p. 79).
- **Laser light scattering for convective speed** (Fig. 2, p. 74–75): an argon-ion 514 nm beam (printed "0.514 mm") through a fibre probe, 2 mm wide, focused to a 0.16 mm spot at the jet centreline, crosses the jet. A beam stop, aperture stop, 60 mm lens and pinhole pass the light scattered by refractive-index fluctuations to a PMT. The same set-up detects shocks (Panda 1995a, b, 1998). Shock signals are about 1000 times stronger, so a voltage threshold removes them. The whole set-up traverses along the shear layer. The signal is line-of-sight.
- **Cross-spectral phase** (p. 83–84): between a traversing probe R(x, t) (PMT or microphone) and a fixed microphone P(t). The phase φ(x) of the cross-spectrum at f_s is averaged over 128 K samples in 6.4 s on a Spectral Dynamics analyser (about 20 kS/s, my arithmetic). Then M_c = 2πf_s/(c dφ/dx), with a three-point compact derivative, which amplifies random phase error where M_c is highly supersonic (p. 84–85). For the outside measurement the fixed microphone sits on the nozzle lip (p. 86).
- **Near-field microphone surveys** (p. 79, 87–89): a 3.18 mm microphone stepped over 51 axial × 21 radial points (M_j 1.19, Δx = 0.12D) or 53 × 19 (M_j 1.42, Δx = 0.15D), with radial spacing growing from 0.2D to 0.4D. That is 16 to 5 points per acoustic wavelength. The grid's lower edge follows a 5.7° line from the lip, taken as the jet boundary to keep the microphone out of the flow (p. 75, 79).
  - *R.m.s. maps:* levels at f_s from narrowband spectra, dB re 20 µPa (p. 79). The 2f_s maps (Fig. 6) are the same, at twice the frequency.
  - *Phase-averaged maps:* at each point the signal is phase-averaged over more than 100 screech cycles against the band-passed upstream reference microphone, the same reference as for the schlieren (p. 87–89). Sampling at 200 kS/s gives about 24 points per cycle at 8400 Hz, which Panda quotes as a ±8 % phase uncertainty (p. 89).
  - *Repeatability:* the survey was repeated three times, twice with the 3.18 mm and once with a 6.35 mm microphone. Results repeat closely except near the boundary (±5 %), where levels approach the microphone's 165 dB range and change by 20 dB over 0.7D (p. 89).
- **Data dependence of the methods.** Every field here is built from sequential point measurements, phase-referenced to one fixed microphone, so no simultaneous field data are needed. Each point signal must be time-resolved at f_s (cross-spectra, phase averaging), and the spark images are single shots locked to the reference. All of it assumes one steady tone and gives cycle-averaged pictures: cycle-to-cycle variation is averaged out (p. 74, 77). Panda states that the hydrodynamic and acoustic parts cannot be separated because they share a frequency, and separates them only by eye, from their direction of propagation (p. 89).
- **Modelling side.** There is no CFD or stability analysis. The models used are:
  - two counter-propagating waves of equal frequency and unequal amplitude (eq. 1), whose mean square gives the standing wave (p. 81);
  - Powell's (1953a) feedback-loop timing and Fisher & Morfey's (1976) phased line sources (eq. 4, p. 82);
  - Tam, Seiner & Yu's (1986) formula (u_c = 0.7u_j, 80 % of the shock spacing) and Prandtl–Pack spacing (eqs. 5–7, p. 82–83).

  The assumptions are constant wave speeds and amplitudes along x, sound at the ambient c, and one convective speed. The standing-wave fit to experiment is L_p = L_sw to 0.01D (Table 1). The paper cites Cain et al. (1995) vortical instability-wave modelling as the computational partner the database is meant for (p. 72).

## Key equations
Checked against rendered pages 81–83.

- **Two-wave superposition** (eq. 1, p. 81): $R = A\sin(k_s x+\omega t) + B\sin(k_h x-\omega t)$: sound travelling upstream, hydrodynamic wave downstream.
- **Its mean square** (unnumbered, p. 81): $\bar R^2 = \dfrac{\omega}{2\pi}\displaystyle\int_0^{2\pi/\omega} R^2\,\mathrm dt = \dfrac{A^2}{2}+\dfrac{B^2}{2}-AB\cos\big((k_s+k_h)x\big)$, a standing wave with $k_{sw}=k_s+k_h$. Check (mine): the cross term averages to $-AB\cos((k_s+k_h)x)$, as printed.
- **Standing wavelength** (eq. 2, p. 81): $\dfrac{1}{L_{sw}}=\dfrac{1}{\lambda_s}+\dfrac{1}{\lambda_h}$.
- **"Exact" screech frequency** (eq. 3, p. 82): with $\lambda_s=c/f_s$, $\lambda_h=u_c/f_s$, $\;f_s=\dfrac{u_c}{L_{sw}(1+u_c/c)}$.
- **Powell / Fisher & Morfey** (eq. 4, p. 82): $f_s=\dfrac{u_c}{L(1+M_c)}$, $M_c=u_c/c$, obtained by setting $L_{sw}\approx L$.
- **Tam et al. form** (eq. 5, p. 82): $f_s=\dfrac{0.7u_j}{L_{sw}}\left[1+0.7M_j\left(1+\dfrac{\gamma-1}{2}M_j^2\right)^{-1/2}\left(\dfrac{T_r}{T_a}\right)^{1/2}\right]^{-1}$. Check (mine): $0.7u_j/c = 0.7M_j\sqrt{T_j/T_a}$ and $T_j=T_r/(1+\frac{\gamma-1}{2}M_j^2)$ give the bracket.
- **Prandtl–Pack with the 0.8 factor** (eq. 6, p. 83): $L_{sw}\approx0.8L=0.8\,[1.306\,(M_j^2-1)^{1/2}D]$.
- **Combined** (eq. 7, p. 83): $\dfrac{f_sD}{u_j}=\dfrac{0.67}{(M_j^2-1)^{1/2}}\left[1+0.7M_j\left(1+\dfrac{\gamma-1}{2}M_j^2\right)^{-1/2}\left(\dfrac{T_r}{T_a}\right)^{1/2}\right]^{-1}$. Check: 0.7/(0.8 × 1.306) = 0.670.
- **Convective Mach number from phase** (eq. 8, p. 83): $M_c=\dfrac{u_c}{c}=\dfrac{2\pi f_s}{c\,\mathrm d\phi/\mathrm dx}$.

> Eq. 3 is "exact" only in the sense of being a rearrangement: L_sw is defined from λ_s and λ_h, both of which contain f_s, so eq. 3 is an identity, as [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) (p. 3) also says. Its empirical content is the measured L_p = L_sw (Table 1) and L_sw ≈ 0.8L. It predicts nothing unless L_sw is known independently of f_s.

## Data tables
**Length scales along the jet boundary** (Table 1, p. 81; last column mine):

| M_j | L_p/D (crest spacing) | λ_s/D | λ_h/D | L_sw/D | L/D (mean shock spacing) | L_sw from eq. 2 (mine) |
|---|---|---|---|---|---|---|
| 1.19 | 0.67 | 1.59 | 1.15 | 0.66 | 0.77 | 0.667 |
| 1.42 | 1.02 | 2.49 | 1.74 | 1.03 | 1.28 | 1.024 |

Checks (mine): λ_s f_s gives c = 339 and 341 m/s, so λ_s is ambient sound. λ_h/λ_s = 0.72 and 0.70 agree with the laser-scattering M_c of 0.70 and 0.68. L_sw/L = 0.86 and 0.80. Prandtl–Pack with nozzle D (eq. 6) gives L = 0.84D and 1.32D, 8 % and 3 % above the measured spacing.

**Modulation of shear-layer fluctuations in other jets** (Table 2, p. 86; h is the small nozzle dimension for rectangular jets, D for round):

| Source | Jet | M_j | f_s (Hz) | M_c | Expected L_sw/h | L_u/h (modulation) | L/h (shock spacing) |
|---|---|---|---|---|---|---|---|
| Raman & Rice 1994 | rectangular | 1.44 | 7936 | 0.78 | 2.61 | 2.57 | 2.0 |
| G. Raman, pers. comm. | rectangular | 1.55 | 6336 | 0.78 | 3.24 | 3.17 | 2.5 |
| Hu & McLaughlin 1990 | round (excited, low Re) | 2.1 | 9450 | 1.02 | 1.9 | 2.0 | 1.5 |

> The M_j of 2.1 for Hu & McLaughlin, whose title says "low Mach number", is as printed; check against the original. In all three rows L_sw/L ≈ 1.27–1.30 (my ratio), the opposite of Table 1.

**Derived quantities** (mine, not in the paper; T₀ = T_a assumed, with c from λ_s f_s):

| M_j | U_j (m/s) | St = f_s D/U_j | u_c/U_j (from M_c; from λ_h) | k_s,avg D = 2π/L | k_sw D = 2π/L_sw | k_h D + k_a D |
|---|---|---|---|---|---|---|
| 1.19 | ≈ 356 | ≈ 0.60 | 0.67; 0.69 | 8.2 | 9.5 | 5.46 + 3.95 = 9.41 |
| 1.42 | ≈ 409 | ≈ 0.33 | 0.57; 0.58 | 4.9 | 6.1 | 3.61 + 2.52 = 6.13 |

The quoted Re follow ρ_jU_jD/μ_j to about 5 % with T₀ ≈ 288 K, and their ratio exactly (my check), so T₀ was probably near ambient.

## Figures worth remembering
- **Fig. 1 (p. 73):** facility and nozzle block, with the 305 mm flange that is the main reflector.
- **Fig. 3 (p. 76):** 12 spark schlieren images over one cycle, M_j 1.19. Fixed shocks; toroidal structures convect one λ_h per cycle (chain line).
- **Fig. 4 (p. 78):** six-flash phase-averaged schlieren of the helical M_j 1.42 jet: near-field compression waves outside the jet, and the merging of two compression zones (arrows in c).
- **Fig. 5 (p. 80):** r.m.s. pressure at f_s over r/D up to 6–7 with time-averaged schlieren below, both jets. Crests along the boundary between shock tips, and the diagonal flange-reflection pattern. The key standing-wave figure.
- **Fig. 6 (p. 84):** r.m.s. at 2f_s: beams at 90° and about 120°.
- **Fig. 7 (p. 85):** phase and local M_c in the shear layer (r/D = 0.48); shock positions marked. The caption swaps the Mach numbers (see verify item 1).
- **Fig. 8 (p. 87):** phase, local M_c and r.m.s. just outside the boundary; troughs of r.m.s. coincide with minima of M_c. The caption swaps the Mach numbers too.
- **Fig. 9 (p. 88):** phase-averaged pressure at eight phases (150 Pa contours, colour scale −7.0 to +5.6 kPa), M_j 1.19. Arrow I is hydrodynamic, II and III acoustic, and the star marks the rarefaction at its inception.
- **Fig. 10 (p. 91):** phase-matched schlieren and pressure at four phases: the hydrodynamic pressure outside the jet is the footprint of the organised structures.
- **Fig. 11 (p. 92):** one rarefaction tracked from inception between the 3rd and 4th shocks to the nozzle over a full cycle: bulge, split, pause-and-go, growth.

## Notation
- D: nozzle diameter (25.4 mm); D_j: fully expanded diameter; h: small nozzle dimension (Table 2). NPR: plenum to ambient pressure ratio. M_j, u_j (= U_j): fully expanded Mach number and velocity. T_r, T_a: reservoir and ambient temperatures; γ: ratio of specific heats.
- f_s, ω: screech frequency; T: screech period; τ/T: phase time in the cycle.
- c: **ambient** sound speed. u_c: convective (phase) speed of the organised structures. **M_c = u_c/c is relative to ambient sound, not the compressible-shear-layer convective Mach number.**
- λ_s, k_s: wavelength and wavenumber of upstream sound (in this paper k_s is **not** a shock wavenumber). λ_h, k_h: hydrodynamic wave. L_sw, k_sw = k_s + k_h: standing wave. L_p: measured crest spacing. L: average shock spacing at the shear layer. L_u: spatial period of the modulation of velocity fluctuations.
- A, B: amplitudes of the acoustic and hydrodynamic waves; R: their sum. φ: relative cross-spectral phase between traversing and fixed sensors.
- "Jet boundary": the edge of turbulent motion seen in schlieren, taken as a 5.7° line from the lip (p. 75).

## Relevance to this project
This is the classic phase-resolved study of the acoustic side of the screech loop. It introduced the near-field standing wave as a measurable quantity, put the sound source between the 3rd and 4th shocks, and turned Powell's formula into one written in L_sw. It sits directly behind the group's later work: [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) uses Panda's k_sw as one of its two diagnostics, and [mercier-2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md), [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md), [knast-2018](knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md), [esfahani-2021](esfahani-2021-coupling-modes-twin-rectangular-jets.md) and [ivelja-2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) all quote it. The user's data (schlieren, near-field acoustics) are the same kinds of data, now time-resolved and modally decomposed.

**Reading it critically**
- **The formula is an identity; the length scale is the result.** Eq. 3 holds by construction (see the note under Key equations; [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) p. 3). The finding is that the near-field crests sit at L_sw, and that L_sw ≈ 0.8L, which is why Tam's empirical 0.8 factor works for these jets.
- **Panda's puzzle has since been resolved, though he could not explain it** (p. 94). In the Tam & Tanna triad the upstream wave sits at k_kh − k_s, so the shock wavenumber that closes the loop is k_s,closure = k_kh + k_up, which is k_sw (Panda's k_s + k_h). The standing wavelength is therefore the effective shock wavelength of the active loop. [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) (p. 5, 11) states this reconciliation: k_sw follows k_s1 in A1 and B and the suboptimal peak k_s2 in A2 and C. Panda's two jets fit it (my comparison):
  - M_j 1.19 is axisymmetric above the A1 range and is listed as A2 by Mercier (2017, Table 1, p. 204). [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) (p. 9–10) finds A2 on k_sh2 for M_j ≥ 1.12.
  - M_j 1.42 is helical, i.e. stage C, which closes on k_s2 (edgington-mitchell-2022, p. 11–12).
  - In both, k_sw exceeds the average shock wavenumber by factors of 1.17 and 1.24. The k_s2/k_s1 ratios are about 1.25 (Nogueira 2022, M_j 1.16–1.22) and about 1.27 (edgington-mitchell-2022, Tsinghua NPR 3–4).
  - The match is only approximate. Panda's L averages the termination points of 5–6 shocks rather than giving a spectral peak, the nozzles differ, and the guided jet mode is slightly subsonic (edgington-mitchell-2022, p. 12). So the closure k_s is slightly above k_sw computed with c_∞.
  - Table 2's jets, with L_sw ≈ 1.3L, do not fit: a suboptimal peak gives L_sw < L. Two are rectangular, which have no suboptimal peak (edgington-mitchell-2022, p. 18–19), and the Hu & McLaughlin case was excited. This remains unexplained.
- **The upstream wave is not identified.** Panda takes the upstream wave to be free-stream sound at c. Outside the jet, a free wave and the evanescent outer part of the guided jet mode (G-JM) look alike at this resolution. Mercier (2017, p. 213) could not separate them either (c₀ ± 10 %). Later work shows several standing waves: KH + G-JM dominates at the lipline, KH + upstream sound further out, and upstream + downstream sound furthest out ([edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) p. 9–11). Panda's traverse starts at r/D 0.6–0.7, where both of the first two contribute. His diagonal "flange" pattern may be the third kind.
- **The "modulated vortices" are probably interference in the phase, not real changes in speed** (my reading). Panda attributes the outside modulation to interference (p. 87), but reads the shear-layer one as the vortices really speeding up and slowing down (p. 85). The PMT signal is a line-of-sight density integral, so it also sees the upstream wave (and the G-JM inside the jet).
  - For two counter-propagating waves with amplitude ratio ε, the phase-derivative speed varies by u_c/[1 ∓ (k_sw/k_h)ε/(1 ± ε)].
  - The M_c range at M_j 1.19 (about 0.45–1.25 about a mean of 0.70, read from Fig. 7) needs ε ≈ 0.25–0.35. That is close to the upstream-to-KH ratio of about 1:5 in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) (Fig. 5, p. 8).
  - [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md) (p. 20–23) likewise attributes most PIV modulation to KH–G-JM interference rather than shock modulation of KH growth. Panda's convective-speed and turbulence-modulation evidence (Table 2) cannot tell these apart.
- **The amplitude claims are inconsistent** (my check). An "order of magnitude" hydrodynamic-to-acoustic ratio at the boundary (p. 81) would give a crest-to-trough contrast of only about 1.7 dB in a two-wave model. The 20 dB contrast (p. 79) needs ε ≈ 0.8, and the 8–15 dB swings in Fig. 8(c, f) need ε ≈ 0.4–0.7. Either the upstream wave is much stronger near the boundary than stated, or the r.m.s. pattern contains more than two waves.
- **Source location agrees with later work.** Inception between the 3rd and 4th shock tips (2.37 < x/D < 3.07) for an A2 jet agrees with:
  - Mercier's 4th-shock source for A2 ([mercier-2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md) Table 1 and p. 219–222);
  - the 4th-cell shock leakage at the saddle between vortices for A2 at NPR 2.25 ([edgington-mitchell-2021-generation-screech-tones-shock-leakage](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) p. 23–27). Panda's radial bulge of a hydrodynamic zone that shears off is the near-field pressure signature of that event, seen without k < 0 filtering;
  - the A2 G-JM envelope peak between the 3rd and 4th shock reflections (edgington-mitchell-2018, p. 6).

  It does not support Tam 1986's source at the instability-wave peak ([tam-1986](tam-1986-bbsan-screech-relationship.md) p. 4) any more than the leakage paper does. Panda's "multiple sources" that nurture the wave (p. 93) parallel the several emitting cells of the leakage paper (p. 28) and the distributed radiation of edgington-mitchell-2022 (p. 20–22). Whether the gain is real energy transfer, or the near-field interference changing apparent amplitude, cannot be told from phase-averaged contours.
- **Closure is not tested.** As in the leakage paper, Panda follows the radiated wave outside the jet. [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 14, 32) shows that sound travelling upstream outside the jet cannot feed the core-supported G-JM. So the "fully formed acoustic wave approaching the nozzle exit" (p. 93) is radiation and the outer near field, not necessarily the loop's return path.
- **Harmonic.** Flow-generated 2f_s beams at 90° and about 120° (p. 83) agree with the m = 1 first-harmonic peak at 90° ([edgington-mitchell-2021-generation-screech-tones-shock-leakage](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) p. 6). They also agree with [farghadan-2026](farghadan-2026-wave-interactions-screeching-jet.md) (p. 20–23), where the harmonic resolvent forced by the screech self-interaction radiates perpendicular to the axis. Panda's evidence is near-field and qualitative; it does not exclude nonlinear propagation over longer ranges.
- **Other notes.** [esfahani-2021](esfahani-2021-coupling-modes-twin-rectangular-jets.md) (p. 16) confirms crests between shock tips in twin rectangular jets. Its claim that crest spacing grows with shock-cell length "unlike Panda" (p. 17) does not match Table 1, where L_p grows from 0.67D to 1.02D as L grows from 0.77D to 1.28D. [raman-1998](raman-1998-supersonic-jet-screech-review.md) (p. 66, 73–74) reviews this paper and its companion, Panda 1998, on shock motion.
- **Facility.** The flange changes amplitude and frequency (p. 73), one more case of the reflector detuning described on the screech topic page (Raman 1998, p. 77–78).

**Methods and data for the lab workflow (CLAUDE.md)**
- **What Panda could not do, and SPOD and k_x filtering now can.** He states that hydrodynamic and acoustic parts at the same frequency cannot be separated (p. 89). With time-resolved schlieren or LES, SPOD at f_s followed by a split on the sign of k_x separates them ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md)). Panda's L_p measurement corresponds to the FFT of |φ| along the lipline (edgington-mitchell-2022, p. 11), which is an easy check on any SPOD mode.
- **Non-time-resolved and sequential data.** Panda's toolkit is phase-locked single-shot imaging, plus sequential point surveys phase-referenced to one fixed microphone. It is the acoustic analogue of the PIV POD-pair phase reconstruction: it needs one steady tone and gives a cycle-averaged picture. His choice of stable-tone conditions (p. 74) is the same restriction.
- **A warning for the Hilbert step of SPOD → reconstruction → HPOD.** Any local phase-gradient speed from a field that holds counter-propagating waves (an HPOD along x, a Hilbert transform in x, or the cross-spectral phase as here) shows Panda's sinuous modulation at L_sw. Its size is set by the amplitude ratio: M_c swings 0.45–1.25 inside the shear layer and 0–1.6+ outside (Figs 7–8). Split by the sign of k_x before reading instantaneous wavenumber or convective speed, as the time-frequency-methods topic page already suspects.
- **Time variation.** Phase-averaging over more than 100 cycles (p. 89) and six-flash images hide what Panda calls "natural differences and jitter" (p. 77). Time-domain HPOD of the SPOD-reconstructed f_s band would give cycle-by-cycle amplitude. The inception cell (3rd to 4th shock here) could then be conditioned on it, as suggested for the leakage source (3rd–5th cell).

**Modelling side and the PyFR staging LES**
- The models are kinematic, and none predicts L_sw. The modern triad models predict it as the active shock peak.
- The PyFR LES (`Simulations/PyFR_Staging_Continuation/`) at NPR 2.10 (A1) and 2.25 (A2) could repeat Panda's diagnostics in a few lines of post-processing:
  - (a) r.m.s. at f_s along a 5.7° line from the lip, with the crest spacing compared with 2π/(k_s1) and 2π/(k_s2) from the mean shock spectrum. k_sw should jump from k_s1 to k_s2 across the A1 → A2 switch, which Panda's data (both k_s2 stages) cannot show;
  - (b) the hydrodynamic-to-acoustic amplitude ratio at the boundary after a k_x split, to settle the inconsistency above;
  - (c) phase-conditioned near-field pressure to see whether sound inception moves from the 3rd to the 4th cell on staging.
- Panda's flange result means the nozzle exterior in the LES (lip, flange or none) can change amplitude and frequency, so it should be reported with the staging limits.

**Rocket noise.** Screech is absent at full scale. The transferable points are two. First, near-field pressure inside the hydrodynamic near field holds partial standing waves between hydrodynamic and acoustic parts, which affects any near-field array or intensity measurement close to a plume. Second, the harmonic is generated in the flow at lab scale, which says nothing about the long-range nonlinear steepening that dominates rocket noise ([lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)).

**Items to verify against the PDF**
1. Figs 7 and 8 captions label (a, b) and (a–c) as M_j 1.42, but the text (p. 84–85) and the shock arrows (spacing about 0.75D in Figs 7b and 8c, about 1.23D in Figs 7d and 8f) show that the left panels are M_j 1.19. This note follows the text.
2. The laser wavelength is printed "0.514 mm" (p. 74), certainly 0.514 µm.
3. The ±8 % phase uncertainty quoted for 24 points per cycle (p. 89); one sample is 4 % of a cycle.
4. The "order of magnitude" hydrodynamic-to-acoustic ratio (p. 81) against the 20 dB crest–trough contrast (p. 79).
5. Table 2: the M_j of 2.1 for Hu & McLaughlin (1990), and the source of the Raman (personal communication) row.
6. The text calls the added frame "figure 11(c)" (p. 90); the figure labels it (c′) at τ/T = 0.33.
7. Nozzle exterior dimensions and the implied lip thickness, read from Fig. 1(b).
8. Values read from figures: M_c ranges (Figs 7–8), r.m.s. swings (Fig. 8), the −7.0 to +5.6 kPa colour range (Fig. 9) and shock positions from the arrows.
9. Stage labels A2 and C come from Mercier 2017 and from my reading, not from Panda, who says only "axisymmetric" and "helical".

**Candidates for `/add-paper`:** Panda 1998 (JFM 363, shock oscillation in the same jets); Panda, Raman & Zaman 1997 (AIAA 97-1623, standing waves in round, rectangular and elliptic jets); Raman, Panda & Zaman 1997 (AIAA 97-0144, upstream reflector and receptivity); Westley & Woolley 1968–1970 (near-field screech pressures); Davis & Oldfield 1962 (cell structure and source location); Hu & McLaughlin 1990 (JSV 141); Raman & Rice 1994 (Phys. Fluids 6); Wiegel & Wlezien 1993 (phase modulation of partial standing waves); Powell 1953a, b; Yu & Seiner 1983; Fisher & Morfey 1976.
