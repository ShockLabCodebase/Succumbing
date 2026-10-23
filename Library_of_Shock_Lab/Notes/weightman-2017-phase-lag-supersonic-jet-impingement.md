---
key: "weightman-2017-phase-lag-supersonic-jet-impingement"
title: "An explanation for the phase lag in supersonic jet impingement"
authors: ["Weightman, Joel L.", "Amili, Omid", "Honnery, Damon", "Soria, Julio", "Edgington-Mitchell, Daniel"]
year: 2017
type: "article"
venue: "JFM 815, R1"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "815", "pages": "R1"}
doi: "10.1017/jfm.2017.37"
arxiv: ""
pdf: "impinging-jets-and-edge-tones/Weightman-EtAl_2017_An-Explanation-For-The-Phase-Lag-In-Supersonic-Jet-Impingement.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility (LTRAC Gas Jet Facility; schlieren rig not named)"
data: ["schlieren-TR", "schlieren", "PIV", "microphones-far"]
methods: ["statistics", "PSD", "POD", "POD-pair", "phase-averaging", "resonance-model", "vortex-identification"]
flow: ["impinging-jet", "round-jet", "supersonic", "underexpanded"]
phenomena: ["impingement-tones", "shocklet", "flapping", "source-location", "coherent-structures"]
params: {"NPR": "3.6 (cylinder: PIV and acoustics); 3.4 (cylinder schlieren, Fig. 2); 5.0 (hemisphere schlieren, C-D nozzle of design NPR 4.0)", "M_j": "1.49 (NPR 3.6)", "z/D": "3.5 (cylinder)", "t/D": "0.33", "D": "15 mm converging (cylinder); C-D with 10 mm throat (hemisphere)", "D_c/D": "5.0 (half-cylinder, L_c = 7D; hemisphere of the same diameter)", "Re": "9.2×10⁵", "St": "0.29 (f D_j/U_j with U_j = 460.8 m/s)", "f": "8300 Hz (cylinder); 12250 Hz (hemisphere)", "TR": "1 (unheated; T₀ not stated)"}
topics: ["impinging-jets-and-edge-tones"]
related: ["weightman-2019-sound-production-impinging-supersonic-jets", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "henderson-2002-flow-structure-supersonic-impinging-jets", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "henderson-1993-tones-choked-jet-impinging-flat-plates", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "nogueira-2024-guided-jet-waves", "jordan-2018-jet-flap-interaction-tones", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet"]
cites: ["henderson-1993-tones-choked-jet-impinging-flat-plates", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "krothapalli-1999-flow-field-noise-supersonic-impinging-jet", "mason-smith-2015-underexpanded-jet-impinging-cylindrical-sections", "mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i"]
summary: "500 kfps schlieren finds a wall-jet shocklet that emits the impinging tone; its 29–40 µs life is read as Powell's phase lag; measured loop gives 8230 vs 8300 Hz"
---
# An explanation for the phase lag in supersonic jet impingement

- **Authors:** Joel L. Weightman, Omid Amili, Damon Honnery, Julio Soria, Daniel Edgington-Mitchell. All are at LTRAC, Dept of Mechanical and Aerospace Engineering, Monash University; Amili also at Aerospace Engineering and Mechanics, University of Minnesota, and Soria also at King Abdulaziz University, Jeddah (p. 1). The first author is the user.
- **Source:** J. Fluid Mech. (2017), vol. 815, R1 (JFM Rapids, 11 pp.), doi:10.1017/jfm.2017.37. Received 27 Nov 2016, revised 12 Jan 2017, accepted 13 Jan 2017, first published online 14 Feb 2017 (p. 1). Funded by an ARC Discovery Project, with NCI computing resources (p. 10). Supplementary movies 1 (hemisphere schlieren) and 2 (phase-averaged PIV) (p. 6, 8).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/impinging-jets-and-edge-tones/Weightman-EtAl_2017_An-Explanation-For-The-Phase-Lag-In-Supersonic-Jet-Impingement.pdf` (11 pp., publisher's version). **Page refs "(p. n)" are the journal pages R1-n, which equal the PDF pages.** The same text is reprinted unchanged as thesis Ch. 7 (§7.2), where R1-n is printed thesis page 124 + n. Tables 1–2, both equations and Figs 3–6 were checked against rendered pages.
- **Tags:** impinging supersonic jet, aeroacoustic feedback, Powell feedback equation, phase lag, time delay, wall jet, transient shock, shocklet, sound source, cylindrical and hemispherical impingement surfaces, stationary flapping mode, ultra-high-speed schlieren, Shimadzu HPV-1, PIV, simultaneous two-magnification PIV, snapshot POD, POD phase portrait, Lissajous curve, phase averaging, swirling strength, convective velocity, entrainment-corrected sound speed, x–θ (space–phase) diagram.

## Summary
The paper proposes the first physical explanation for the phase lag *p* that Powell (1988) added to his impinging-jet feedback equation, a term usually tuned to fit (p. 1–2). Ultra-high-speed schlieren of an underexpanded jet on a hemisphere (C-D nozzle, NPR 5.0) shows a transient "shocklet" in the wall jet. It forms as a large vortex passes, rotates towards normal to the wall, creeps upstream and then releases the acoustic wave that returns to the nozzle lip (p. 4–6). Two hypotheses follow: the shocklet is the tone source, and the time from its inception to the emission of the wave, Δt = −p/f, is the phase lag (p. 5). For a jet on a convex half-cylinder (NPR 3.6, z/D 3.5, stationary flapping mode, 8300 Hz), every term of the rewritten equation is measured from POD-phase-averaged PIV: N = 4, the vortex path and u_c(x), an entrainment-corrected U_s = 331 m/s, the shocklet position and Δt = 29.4 µs (p. 7–9). The prediction is 8230 Hz (−0.8%), against 8750 Hz (+5.4%) with Δt = 0, and removing the delay would need an implausibly low mean u_c of 0.43U_j (p. 10). The analysis is experimental and kinematic: there is no stability analysis, LES or source model of the shocklet itself.

## Key findings
- **The shocklet** (§3, p. 4–6):
  - A transient shock in the wall jet above the cylinder is seen in "numerous instantaneous images", at a mean (x/D, y/D) ≈ (3.8, 1.4) (Fig. 2, NPR 3.4; p. 4–5).
  - Life cycle on the hemisphere (Fig. 3, frames 12 µs apart, NPR 5.0; p. 5–6):
    1. It forms as a large vortex passes along the wall (panels a–b).
    2. It rotates to become more perpendicular to the surface while moving slightly upstream against the wall jet (c–d).
    3. The upstream motion ends with the release of an acoustic wave (e–f), shortly before the next structure arrives.
  - Full-field sequences show that wave travelling back to the nozzle lip, i.e. outside the jet (p. 5).
  - The authors call it previously unobserved, and say it "appears to differ" from the wall-jet mechanism of Henderson et al. (2005) (p. 5).
  - It is also seen, though not shown, at other NPRs (under- and overexpanded), standoff distances and surfaces, including flat plates. So it does not appear to be specific to the geometry, although other feedback mechanisms may exist (p. 5).
- **Two hypotheses** (p. 5): (1) the shocklet is the source of the impingement-tone waves; (2) the time between shocklet formation and wave formation is Powell's phase lag. Hypothesis 1 rests on the schlieren and the supplementary movie; hypothesis 2 is tested with the feedback equation (p. 6).
- **Direct delay on the hemisphere** (p. 5): Δt = 40 µs from the schlieren, at a tone of 12,250 Hz, so p = −0.49. It is "not used further". The cylinder's thick wall jet prevented consistent schlieren timing, so Δt there comes from PIV.
- **Lip delay is negligible** (p. 2): in Mitchell, Honnery & Soria (2012) the shear-layer perturbation follows the wave's arrival at the lip in the next frame, so any receptivity delay is at most 2 µs. This is why the whole lag is placed at the source.
- **Measured loop terms for the cylinder** (§4, p. 6–9):
  - *Tone:* St = f D_j/U_j = 0.29, f = 8300 Hz, U_j = 460.8 m/s (Fig. 4; p. 7).
  - *POD:* the leading pair holds 23.3% and 19.0% of the energy; every other mode holds less than 3% and is dropped. The phase portrait is a ring, so the modes are periodic and 90° apart. The transverse fluctuation is symmetric about the axis, so the pair is antisymmetric, a stationary flapping mode fixed by the cylinder (Fig. 5; p. 7–8).
  - *Shocklet position:* (x/D, y/D) = (3.78, 1.43), from a large velocity gradient tangential to the wall during part of the phase cycle in the high-magnification phase average (p. 8).
  - *Vortex path:* swirling-strength centroids, following the peak-TKE ridge where tracking fails; it ends at the shocklet (Fig. 6a; p. 8).
  - *Acoustic leg:* a straight path from the shocklet to the lip. U_s = 340 − 9 = 331 m/s, the speed of sound less the mean axial entrainment velocity (about 9 m/s). Earlier work used the local speed of sound (p. 8).
  - *Convective velocity:* from the trajectory of the peak transverse velocity through the phase cycle (T = 120.5 µs): 0.42–0.52U_j, mean 0.48U_j. Peak detection fails outside 0.75 < x/D < 2.6, where the end-point values are used (p. 8).
  - *N = 4:* four new vortices leave the lip in one feedback cycle (p. 8).
  - *Phase of emission:* the upstream wave in the phase-averaged axial fluctuation at y/D = 1.45 is traced back to x/D = 3.8 at θ = 122.5°. It reaches x/D = 0 at θ = 262.5° (Fig. 6b; p. 9).
  - *Phase of shocklet inception:* taken as the moment the vortex reaches the shocklet, assuming the lip responds instantly. Starting from 262.5° and adding the convection time along the path gives θ = 34.5° (p. 9).
  - *Delay:* Δt = (122.5° − 34.5°)/360° × 120.5 µs = 29.4 µs, assuming inception and emission fall within one cycle. Because it comes from a phase average, its cycle-to-cycle variation cannot be found, although the schlieren shows the process is unsteady (p. 9). This is p ≈ −0.24 (my arithmetic).
- **Frequency prediction** (§5, p. 10):
  - With Δt: 8230 Hz, 0.8% below the measured 8300 Hz. With Δt = 0: 8750 Hz, 5.4% above.
  - The allowed range 0 ≤ Δt ≤ 120.5 µs (−1 ≤ p ≤ 0) spans 8750 to 6920 Hz (Fig. 6c).
  - Matching with Δt = 0 would need the mean u_c to fall by about 0.05U_j, to 0.43U_j (printed "U_c = 0.43"). That is just above the lowest local value measured and well below the literature, so the authors judge it improbable and conclude that the delay is needed (p. 10).
- **Conclusion** (p. 10): close agreement supports the shocklet as "an integral component" of sound production and feedback, and its lifetime as the explanation of Powell's phase lag.

## Setup / method
- **Facility** (p. 3; Fig. 1): the paper names the LTRAC Gas Jet Facility for the PIV (Fig. 1a: plenum with pressure regulator, smoke-generator seeding and the impingement surface above the nozzle). It is a Shock Lab group facility; the paper does not name the lab space or the schlieren rig. Full experimental and acoustic details are deferred to Weightman et al. (2016), AIAA 2016-2800 (p. 3), which is reprinted in thesis App. D.
- **Cylinder case** (Table 1, p. 3; Fig. 1b): converging nozzle, D = 15 mm, lip t/D = 0.33, NPR 3.6, M_j 1.49, Re 9.2 × 10⁵. Convex half-cylinder, D_c = 5D and L_c = 7D, at z/D = 3.5. The cylinder locks the plane of a flapping mode (Mason-Smith et al. 2015), so repeated planar PIV sees the same instability (p. 3). The Re definition and T₀ are not given.
- **Hemisphere case** (p. 3–4): same diameter as the half-cylinder, chosen because the wall jet curves away in all directions and is thin along the line of sight. C-D nozzle, 10 mm throat, design (ideal) NPR 4.0, run underexpanded at NPR 5.0. The standoff distance and the D used to normalise Fig. 3 are not stated.
- **Schlieren** (p. 4): Toepler Z-type; Shimadzu HPV-1 at 500 kfps, 260 × 312 px, 0.5 µs exposure. Fig. 3 shows every sixth frame (12 µs). The frame count per sequence is not given here (the thesis gives at most 102). Fig. 2 is a single high-resolution image supplied by N. Mason-Smith (p. 10).
- **PIV** (Table 2, p. 4): Imperx B6640 (6600 × 4400 px, 12-bit), 200 mm Micro-Nikkor with a PK-12 ring, 11.8 µm/px. ViCount 1300 smoke (≈ 600 nm). Dual-cavity Nd:YAG at 532 nm, 200 mJ, sheet ≈ 1 mm, Δt = 900 ns. Multigrid cross-correlation (Soria 1996), IW 192² → 24² px, for displacements of under 5 up to 45 px. A second camera at 7.2 µm/px recorded simultaneously, centred on the suspected source near the wall. The acquisition rate and snapshot count are not stated (the thesis gives about 1 Hz and about 9,000–10,000 snapshots).
- **Acoustics:** one spectrum (Fig. 4), with microphone position, sampling rate and spectral settings deferred to the 2016 paper (p. 3, 6–7).
- **Analysis chain and how each step depends on the data:**

| Step | Data needed | Parameters and preprocessing | Pages |
|---|---|---|---|
| Tone frequency | Time-resolved microphone | Spectrum in St; settings not stated | 6–7 |
| Snapshot POD | Non-time-resolved PIV | Fluctuating fields (velocity components not stated); first 20 modes shown | 4, 7 |
| Pair check | POD coefficients | Joint PDF of (a₁, a₂)/⟨r_m⟩ with a Lissajous mean-radius curve; ring means a travelling pair | 7–8 |
| Phase average | POD phase θ plus f to map phase to time | 5° sectors with 50% overlap; velocity fields averaged in each sector (supplementary movie 2). No amplitude threshold mentioned | 8 |
| Two-magnification average | Simultaneous high-magnification PIV | The low-magnification phase assignment is reused for the high-magnification fields | 8 |
| Shocklet position | High-magnification phase average | Largest tangential velocity gradient in the wall jet | 8 |
| Vortex path | Phase average | 2D swirling strength (Zhou et al. 1999; Adrian et al. 2000), or the peak-TKE ridge | 8 |
| u_c(x) | Phase average | Peak transverse velocity tracked through θ; valid 0.75 < x/D < 2.6 | 8 |
| U_s | Mean PIV | c = 340 m/s minus about 9 m/s mean axial entrainment | 8 |
| Emission and lip phases | Phase average | x–θ map of ⟨u_x⟩/U_E at y/D = 1.45 (Fig. 6b) | 9 |
| Δt on the hemisphere | Time-resolved schlieren | Frame timing, 2 µs resolution | 5 |

  - The phase average stands in for time resolution. It assumes one steady periodic tone represented by the leading pair, and it averages away cycle-to-cycle variation, so Δt is a cycle-averaged value (p. 7, 9).
  - The phase average uses the total velocity, so it keeps the shocklet's gradient and the upstream acoustic waves (Fig. 6b), which a two-mode reconstruction would smooth out (thesis Ch. 5).
- **Modelling content:** Powell's phenomenological feedback equation, with its terms measured rather than fitted. There is no stability or resolvent analysis, no LES or DNS, and no model of how the shocklet forms or radiates. Modelling work is cited only for context: Gojon, Bogey & Marsden (2016), whose LES of planar ideally expanded impinging jets is quoted for p = 0 (p. 1–2).

## Key equations
- **Powell's feedback equation** (eq. 1.1, p. 2):
  $$\frac{N+p}{f}=\int_0^{h_c}\frac{\mathrm dh}{u_c}+\frac{h_s}{U_s}$$
  N is the number of vortices formed at one azimuth per feedback period; h_c and u_c are the curved vortex path and the local convective velocity; h_s and U_s are the straight acoustic path (source to lip) and the mean lab-frame wave speed; p is the phase lag. Quoted values range from p = 0 (Gojon et al. 2016) to p = −0.4 ([Krothapalli et al. 1999](krothapalli-1999-flow-field-noise-supersonic-impinging-jet.md)) (p. 2).
- **Modified equation** (eq. 3.1, p. 5):
  $$\frac{N}{f}=\int_0^{h_c}\frac{\mathrm dh}{u_c}+\frac{h_s}{U_s}+\Delta t,\qquad \Delta t=-\frac{p}{f},\qquad 0\le\Delta t\le\frac1f\ \Leftrightarrow\ -1\le p\le 0\ \ (\text{p. 10})$$
  Δt is the time from shocklet inception to the formation of the acoustic wave.
- **Phase to time:** $t=\theta\,T/360^\circ$ with $T=1/f=120.5$ µs (p. 8–9), so $\Delta t=(\theta_{emit}-\theta_{arr})\,T/360^\circ=(122.5-34.5)/360\times120.5=29.5$ µs (paper: 29.4 µs).
- **Checks (mine):**
  - Hemisphere: $p=-\Delta t\,f=-40\times10^{-6}\times12{,}250=-0.49$, as printed. Cylinder: $p=-29.4\times10^{-6}\times8300=-0.244$.
  - 4/8750 Hz = 457.1 µs and 4/8230 Hz = 486.0 µs; their difference, 28.9 µs, is Δt to rounding.
  - Slope of Fig. 6(c): $\mathrm df/\mathrm d\Delta t=-f^2/N\approx-17$ Hz per µs at 8300 Hz, about −0.2% per µs. The figure's mean slope from 8750 to 6920 Hz over 120.5 µs is −15 Hz per µs.
- **Loop closure is built into the Δt measurement (my analysis).** The paper defines:
  - the vortex-arrival phase as $\theta_{arr}=\theta_{lip}+360^\circ\,\tau_c/T \pmod{360^\circ}$, with τ_c the convection time from the same u_c and path as the integral;
  - the measured upstream transit as $\tau_a=(\theta_{lip}-\theta_{emit})\,T/360^\circ \pmod T$.

  Then $\tau_c+\Delta t+\tau_a=kT$ for an integer k, identically. Substituting into eq. 3.1 gives
  $$\frac{N}{f_{pred}}=kT+\Big(\frac{h_s}{U_s}-\tau_a\Big),$$
  so for N = k the predicted frequency does not depend on u_c, h_c or the value of Δt at all. It differs from f only by the gap between the straight-path acoustic model and the traced wave.
  - With the paper's numbers: τ_c = 852° = 285.2 µs (2.37 cycles); h_s/U_s = 457.1 − 285.2 = 171.9 µs, i.e. h_s ≈ 56.9 mm ≈ 3.8D, consistent with a straight line from (3.78, 1.43)D to the lip; τ_a = 500° = 167.4 µs. Then 852° + 88° + 500° = 1440° = 4 × 360°, so k = N = 4, and $f_{pred}=4/(482.0+4.5\ \mu s)=8222$ Hz ≈ 8230 Hz.
  - Consequence: the −0.8% agreement checks that the counted N equals the loop integer and that a 331 m/s straight path matches the traced wave to about 4.5 µs. The independent tests of hypothesis 2 are the Δt = 0 deficit (the measured legs fall 0.24 cycle short of N = 4) and the 40 µs delay seen directly on the hemisphere.

> Verify against the PDF: the τ_c, h_s and τ_a values above are back-calculated, not printed, and the closure argument assumes the vortex-arrival phase was computed exactly as described on p. 9.

## Data tables
**Experimental conditions** (Table 1, p. 3; cylinder case):

| NPR | M_j | D | t/D | z/D | Re | D_c/D |
|---|---|---|---|---|---|---|
| 3.6 | 1.49 | 15 mm | 0.33 | 3.5 | 9.2 × 10⁵ | 5.0 |

Check: isentropic NPR 3.6 gives M_j = 1.487 and D_j = 16.2 mm (mine).

**PIV parameters** (Table 2, p. 4; the text extraction misaligns this table, so it was rebuilt from the page image):

| Parameter | Value | Non-dimensional |
|---|---|---|
| Object-space resolution | 11.8 µm/px | — |
| Pulse separation Δt | 900 ns | — |
| IW₀ | 192 × 192 px | 0.151D × 0.151D |
| IW₁ | 24 × 24 px | 0.019D × 0.019D |
| Vector spacing | 6 px | 0.005D |
| Depth of field | 0.55 mm | 0.037D |
| Field of view | 63 mm × 52 mm | 4.2D × 3.4D |

Checks (mine): 192 × 11.8 µm = 2.27 mm = 0.151D; 24 px = 0.28 mm = 0.019D; 6 px = 0.071 mm = 0.0047D; 52 mm = 3.47D. A 63 mm field is about 5340 px, less than the 6600 px sensor, so the image was presumably cropped.

**Feedback-loop budget, cylinder case** (p. 7–10):

| Term | Value | Source |
|---|---|---|
| f, T | 8300 Hz, 120.5 µs | microphone |
| St | 0.29 (U_j = 460.8 m/s) | p. 7 |
| N | 4 | phase average |
| u_c | 0.42–0.52U_j, mean 0.48U_j (0.75 < x/D < 2.6) | phase average |
| U_s | 331 m/s | 340 m/s − 9 m/s entrainment |
| Shocklet position | (3.78, 1.43)D | high-magnification phase average |
| θ_emit, θ_lip, θ_arr | 122.5°, 262.5°, 34.5° | Fig. 6(b) and convection time |
| Δt (p) | 29.4 µs (−0.24, mine) | θ_emit − θ_arr |
| f_pred | 8230 Hz (−0.8%); 8750 Hz with Δt = 0 (+5.4%); 6920 Hz at Δt = T | eq. 3.1, Fig. 6(c) |
| u_c needed if Δt = 0 | 0.43U_j | p. 10 |
| Back-calculated (mine) | τ_c ≈ 285 µs, h_s/U_s ≈ 172 µs, τ_a ≈ 167 µs | see Key equations |

**Hemisphere case** (p. 3–5): C-D nozzle (10 mm throat, design NPR 4.0) at NPR 5.0; f = 12,250 Hz; Δt = 40 µs; p = −0.49. Isentropic M_j = 1.71 at NPR 5.0 and design M_d = 1.56 (mine).

**Normalisation check (mine; see the thesis note, verify item 3):** U_j = 460.8 m/s equals M_j × U_E = 1.487 × 310 m/s. The isentropic value is about 420 m/s for T₀ ≈ 287 K (the thesis's T₀; not stated here). On the isentropic basis:
- St = 0.32 instead of 0.29;
- the measured u_c is 0.46–0.57U_j (mean 0.53) instead of 0.42–0.52 (mean 0.48);
- the "implausible" no-delay value is 0.47U_j instead of 0.43U_j.

The quoted Re = 9.2 × 10⁵ matches the isentropic U_j (about 9.1 × 10⁵ with a Sutherland viscosity, mine); 460.8 m/s would give about 1.0 × 10⁶. The prediction itself uses dimensional speeds, so the predicted frequencies are unaffected.

**Spectrum** (Fig. 4, p. 7; read from figure): the tone at St ≈ 0.29 is ≈ 150 dB, with harmonics at ≈ 0.58 (≈ 138 dB), 0.87 (≈ 132 dB), 1.16 (≈ 125 dB) and a weak 1.45. There are broadband bumps of about 128–130 dB near St 0.1–0.2 and 0.45–0.5. Microphone position unknown, so levels are qualitative.

## Figures worth remembering
- **Fig. 1 (p. 3):** (a) LTRAC Gas Jet Facility schematic; (b) half-cylinder (5.0D) at 3.5D above the 15 mm nozzle, with axes x (streamwise) and y.
- **Fig. 2 (p. 5):** single schlieren of a jet on the cylinder at NPR 3.4; a white arrow marks the shocklet near (3.8, 1.4)D.
- **Fig. 3 (p. 6):** six hemisphere schlieren frames 12 µs apart at NPR 5.0, showing shocklet formation (b), rotation and upstream creep (c–d) and the released wave (e–f). Read from the figure: the shocklet sits near (3.5, 1.6–1.7)D and the wave near (3.1–3.4, 1.5–1.6)D. The clearest picture of the mechanism; see also supplementary movie 1.
- **Fig. 4 (p. 7):** cylinder-case acoustic spectrum, St 0.29 tone with harmonics.
- **Fig. 5 (p. 7):** (a) POD energies (23.3%, 19.0%, then under 3%; cumulative ≈ 65% at 20 modes, read from figure); (b) JPDF ring of (a₁, a₂)/⟨r_m⟩ with a Lissajous curve.
- **Fig. 6 (p. 9):** the key figure. (a) Vortex path (solid, along the peak-TKE ridge at y/D ≈ 0.8, curving up the cylinder) and straight acoustic path (dashed) over TKE. (b) x–θ map of ⟨u_x⟩/U_E at y/D = 1.45: dotted traces of the upstream wave from x/D 3.8 at 122.5° to x/D 0 at 262.5° a cycle later. The axial phase speed is about 330–340 m/s (my estimate). (c) Predicted f against Δt (0–120 µs), crossing the measured 8.3 kHz at Δt ≈ 29 µs.

## Notation
- NPR = p₀/p∞; M_j, U_j, D_j: ideally expanded Mach number, velocity and diameter; U_E: nozzle exit velocity (used only in Fig. 6b, not defined in the text); D: nozzle exit diameter; t: lip thickness; z: standoff; D_c, L_c: cylinder diameter and length.
- St = f D_j/U_j; Re: Reynolds number (definition not given).
- Powell terms: N (integer number of vortices per loop), p (phase lag), f (tone), h_c and u_c (vortex path and local convective velocity), h_s and U_s (acoustic path and speed); Δt = −p/f (shocklet delay); T = 1/f.
- POD: a_i(n), the coefficient of mode i in snapshot n; ⟨r_m⟩ = mean of √(a_i² + a_j²), the normalising mean amplitude; θ, the pair phase angle.
- Phases (mine): θ_emit = 122.5° (emission), θ_lip = 262.5° (wave at x/D = 0), θ_arr = 34.5° (vortex at the shocklet); τ_c, τ_a: convective and traced acoustic transit times.
- TKE: specific turbulent kinetic energy (Fig. 6a).
- "Shocklet": here a transient shock in the wall jet. [rezay-haghdoost-2020](rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet.md) uses the same word for a different short shock in a starting jet.

## Relevance to this project
This is the user's own first-author JFM Rapid and the published core of thesis Ch. 7 ([weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md), p. 123–137). It is the group's founding statement that impinging-tone sources can carry a measurable delay, and that this delay belongs in the feedback-loop phase budget. It bears directly on the lab's resonance and feedback focus (CLAUDE.md), on how a source-side phase enters any phase-criterion model, including the screech staging models behind the PyFR LES, and on the shock-like waves that link impingement to launch-pad noise.

**What this paper adds to the thesis note, and how the thesis differs**
- The thesis note summarises Ch. 7 in a few lines (thesis note, Ch. 7). This note adds the complete phase budget (θ values, the analysis steps and their data needs), the closure identity above, the hemisphere details and the figure readings.
- **Same text, new framing.** The JFM article is reprinted unchanged at thesis pp. 125–135. The thesis wraps it in an introductory statement (§7.1, p. 123–124) and a concluding statement (§7.9, p. 136–137, with Fig. 7.6), which change the framing in three ways:
  1. **Shock leakage.** §7.1 places the shocklet as a second source after the standoff-shock leakage of thesis Ch. 6, which has no phase delay and resembles Gojon et al. (2016). It concludes that several sound mechanisms may produce impingement tones (p. 123). The JFM paper never mentions shock leakage; it cites the 2016 conference paper only for "some debate" over the mechanism (p. 1).
  2. **Henderson's source.** The JFM paper says the shocklet "appears to differ" from Henderson et al.'s (2005) wall-jet model (p. 5). §7.9 instead calls it "the first mechanistic description" of the sound production Henderson observed, because both lie about 1.3D from the axis (thesis p. 136, Fig. 7.6). The JFM position is the one [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) keeps: Henderson's source is listed separately and hypothesised to make diffuse, coalescing waves (p. 4, 23–24). The two readings can be reconciled if "same place, different mechanism" is meant. Note also that the PIV position is y/D = 1.43 and the hemisphere frames put the shocklet near y/D ≈ 1.6–1.7 (read from figure), so "1.3D" is a rounding towards Henderson's value (thesis note, verify item 15).
  3. **Saddle point.** §7.9 says the shocklet moves upstream "near the saddle point of the consecutive vortices" (p. 136). The JFM text only says the upstream motion ends shortly before the next structure arrives (p. 5). The saddle-point wording ties the shocklet to free-jet leakage timing (below).
- **From conference to journal.** The 2016 conference paper assumed p = −0.4 and used Powell's equation to locate the source at (3.50, 1.26)D (thesis note, App. D). The JFM paper inverts this: it measures the source position, (3.78, 1.43)D, and infers the delay.

**Reading it critically**
- **The 0.8% agreement is largely built in** (my analysis, Key equations). Δt is obtained as the phase residual that closes the loop with the same u_c and path used in the integral. So eq. 3.1 returns the measured f up to the difference between the straight acoustic leg (≈ 172 µs) and the traced wave (≈ 167 µs). The paper's "all terms directly measured" check therefore confirms the integer N and the acoustic leg; it does not by itself show that the residual is the shocklet.
- **The real test is the Δt = 0 deficit.** Without a delay, the convective and acoustic legs sum to 457 µs against 4T = 482 µs, a shortfall of 0.24 cycle. Two explanations remain open:
  - The paper attributes the shortfall to the shocklet and rejects a slower vortex (0.43U_j) as implausible (p. 10).
  - But that is only about a 9% lower mean u_c (≈ 25 µs over τ_c ≈ 285 µs). u_c is measured only for 0.75 < x/D < 2.6, and end-point values cover the rest, including the roughly 1.5D turn into the wall jet. So a bias of that size is not excluded; its sign is unknown, since vortices may slow approaching the wall or speed up in the fast wall jet. The topic page makes the same 10% point.
  - The U_j normalisation (460.8 m/s instead of about 420 m/s) further weakens the "lower than the literature" argument: on the isentropic basis the required value is 0.47U_j.
- **Inception is inferred, not seen, for the cylinder.** θ_arr assumes the shocklet forms exactly when the convected vortex reaches (3.78, 1.43)D and that lip receptivity is instantaneous (p. 2, 9). Both come from other configurations: the hemisphere schlieren and Mitchell et al. (2012).
- **Two configurations, one mechanism.** The direct delay (40 µs, p = −0.49) is on a hemisphere at NPR 5.0 with a C-D nozzle. The quantitative test (29.4 µs, p ≈ −0.24) is on a cylinder at NPR 3.6 with a converging nozzle. That they are of the same order is supportive, but not a match. [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (p. 17) finds the shocklet closes the loop consistently only for NPR ≥ 4.5 and z/D ≤ 4.0, and is hidden at NPR ≤ 3.0 in most datasets. The hemisphere case fits that regime, assuming its standoff is short; the cylinder case is below it.
- **NPR of Fig. 2.** Fig. 2 and its text are at NPR 3.4 (p. 4–5), whereas the PIV case is NPR 3.6 (Table 1). The "two flow conditions" sentence (p. 5) refers to the cylinder and hemisphere, so the shocklet position from the instantaneous schlieren, (3.8, 1.4)D, may come from a different NPR than the PIV position (3.78, 1.43)D (thesis note, verify item 2).
- **What a phase average cannot give.** The authors state that Δt varies from cycle to cycle and that the phase average hides this (p. 9).

**Agreements and contradictions with other notes**
- *Phase-lag values.* [henderson-2002](henderson-2002-flow-structure-supersonic-impinging-jets.md) (p. 5–6) needs N + p ≈ 4.4 (p ≈ +0.4) for an NPR 4.03 plate jet. Under this paper's reading a positive p would be a negative delay, outside the allowed −1 ≤ p ≤ 0, so the two loops must be defined differently (different source, path or u_c on the first leg). [bogey-2017](bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets.md) reaches 1–8% with no lag, in ideally expanded jets that probably have no shocklet. That note's systematic under-prediction has the sign a negative lag would correct, but could equally be a u_c bias, the same ambiguity as here. [ho-1981](ho-1981-dynamics-impinging-jet-feedback-phenomenon.md) found zero phase difference at plate and lip (p = 0) in subsonic jets. [henderson-1993](henderson-1993-tones-choked-jet-impinging-flat-plates.md) fits p as a free constant, the practice this paper set out to replace.
- *Shocklet confirmed and extended.* [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (p. 15–17) sees the same life cycle in shadowgraph of an AR 2 rectangular jet on a cylinder (NPR 5.5, z/D 3.5). As the vortex moves on and its induced velocity goes, the shocklet tilts retrograde and moves upstream, launching a nonlinear compression wave. That paper also uses the shocklet formation time to explain p (p. 2, 5), finds the upstream waves are weak shocks (M_s ≈ 1.07), and shows a shocklet wave and a second wave in the same cycle (p. 20–21).
- *Analogy with free-jet leakage* (my synthesis). In [edgington-mitchell-2021](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) (p. 26) emission waits until the saddle point behind a vortex reaches the shock. Here the shocklet forms with the vortex and emits shortly before the next one (p. 5), near the saddle (thesis p. 136). Both are "vortex displaces a shock, emission when the induced velocity relaxes". The thesis gives leakage p ≈ 0 timed from vortex arrival, and the shocklet p ≈ −0.24 timed from inception, so the two values are not directly comparable; the topic page makes the same point.
- *Closure path.* The wave from the shocklet is born in the wall jet, outside the core, and is seen travelling back outside the jet (p. 5). This is the external, free-stream closure that [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 31–33) allows without a guided-mode filter. The guided-mode models of [tam-1990](tam-1990-theoretical-model-discrete-tone-impinging-jets.md) and Bogey & Gojon 2017 have no source delay, and their phase is set by wavenumbers alone. In [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) the phase criterion carries a reflection phase φ = 0 or π, the dispersive-model counterpart of p.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Non-time-resolved PIV.** POD pair, then phase portrait, then a phase-binned average of total velocity. This times events (emission, arrival at the lip, convection) to within the bin width (5°, ≈ 1.7 µs here) without time resolution. It keeps shocks and acoustic fronts, unlike a two-mode reconstruction. Simultaneous high-magnification PIV can reuse the low-magnification phase assignment (p. 8), a cheap way to zoom on a source region. Limits: one steady tone, a clean ring, and only cycle-averaged timing.
- **Time-resolved schlieren** gives the delay directly (40 µs on the hemisphere), but the HPV-1 records are too short for spectral methods (thesis note).
- **SPOD → reconstruction → Hilbert POD.** This is the natural next step for the open question the paper states (p. 9): the distribution of Δt over cycles.
  1. Take long Photron-type schlieren of a hemisphere or cylinder case in the shocklet regime (NPR ≥ 4.5).
  2. Reconstruct the tone band and its harmonics from SPOD ([nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)), keeping the harmonics so the shock-like fronts survive.
  3. Use HPOD in time ([raiola-2025](raiola-2025-hilbert-pod.md)) for the instantaneous KH phase.
  4. Detect shocklet inception and emission frame by frame, then histogram Δt against that phase.

  The derivative of eq. 3.1, df/f = −f dΔt/N ≈ −0.2% per µs here (mine), gives a testable link. If the loop follows the delay cycle by cycle, ±10 µs of Δt jitter should show as about ±2% instantaneous-frequency wander in the Hilbert phase of the microphone signal. A Hilbert or short-time analysis of the existing long microphone records is a first check.
- **u_c from the phase average** is the weakest term. SPOD or HPOD phase gradients along the shear layer, including the turn into the wall jet, would close the gap that decides between "shocklet delay" and "slower vortex".

**Modelling side**
- Powell's equation is kinematic: it constrains timing, not which loop wins (the gain criterion; thesis note). This paper improves the timing side (measured u_c(x), an entrainment-corrected U_s, a measured source position and a source delay). Being phase-only, it inherits the under-determination the topic page describes.
- No model of the shocklet exists in the library. Candidates are: LES of an impinging jet with a curved surface, timing shocklet inception and emission per cycle, with Curle-type source attribution as in Varé & Bogey (cited in the 2025 note); a local Rankine–Hugoniot or moving-shock model of a wall-jet shock unloaded by a passing vortex; or ray tracing as in [edgington-mitchell-2021](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) applied to the wall jet.
- **PyFR staging LES** (`Simulations/PyFR_Staging_Continuation/`): the free-jet A1/A2 loop has the same structure, with a source-side phase in the closure condition. LES can measure what this paper could only infer: the lag between a KH vortex reaching a shock cell and the upstream wave leaving it, cycle by cycle, and whether that lag changes across the A1→A2 switch.
- **Rocket noise:** the shocklet is a shock embedded in a transonic or supersonic wall jet, unloaded by a passing vortex. This is a candidate for shock-like waves from plate and deflector wall jets, although no tones survive at full scale ([lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md); topic page).

**Items to verify against the PDF**
1. Fig. 2 at NPR 3.4 (caption and p. 4) vs Table 1 NPR 3.6. Is the instantaneous shocklet position (3.8, 1.4)D from the NPR 3.4 schlieren?
2. U_j = 460.8 m/s (p. 7) = M_j U_E rather than the isentropic ≈ 420 m/s; Re 9.2 × 10⁵ matches the isentropic value. T₀ is not stated.
3. "U_c = 0.43" (p. 10) is printed without U_j.
4. The phase-average sector width: the text gives "5° sectors, with 50% overlap" (p. 8; the extraction drops the degree sign, but the page image shows it). This implies 2.5° steps, consistent with θ = 122.5° and 262.5°.
5. The back-calculated τ_c ≈ 285 µs, h_s/U_s ≈ 172 µs and τ_a ≈ 167 µs, and the closure identity (Key equations).
6. Fig. 6(b) traces the wave at y/D = 1.45, so "x/D = 0" there is not the lip itself (y/D ≈ 0.5–0.83).
7. The hemisphere standoff and the D used to normalise Fig. 3 (throat, 10 mm, or exit) are not stated (p. 3–6).
8. Microphone position, sampling and spectral settings, PIV rate, snapshot count and the POD variables are not stated; they are deferred to Weightman et al. (2016).
9. Values read from figures: the Fig. 3 positions, Fig. 4 levels and Fig. 5 cumulative energy.

**Candidates for `/add-paper`:** Powell (1988), JASA 83(2) 515–533 (origin of eq. 1.1); Henderson, Bridges & Wernet (2005), JFM 542 (wall-jet source); Krothapalli et al. (1999), JFM 392 (p = −0.4; now [indexed](krothapalli-1999-flow-field-noise-supersonic-impinging-jet.md)); Gojon, Bogey & Marsden (2016), JFM 808 (LES, p = 0); Mitchell, Honnery & Soria (2012), J. Vis. 15 (no lip delay); Mason-Smith et al. (2015), Shock Waves 25 (cylinder locks flapping); Nosseir & Ho (1982), JFM 116; Weightman et al. (2016), AIAA 2016-2800 (in thesis App. D).
