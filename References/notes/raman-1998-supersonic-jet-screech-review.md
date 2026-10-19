# Advances in understanding supersonic jet screech: review and perspective

- **Authors:** Ganesh Raman (NYMA, Inc., Experimental Fluid Dynamics Section, NASA Lewis Research Center Group, Brook Park, Ohio; p. 45)
- **Source:** Progress in Aerospace Sciences 34, 45–106 (1998), doi:10.1016/S0376-0421(98)00002-5 (PII S0376-0421(98)00002-5).
- **PDF:** `References/Paper_PDFs/Raman_1998_Advances-In-Understanding-Supersonic-Jet-Screech-Review-And-Perspective.pdf` (62 pp.)
- **Page refs:** the journal's printed page numbers (45–106). PDF page = printed page − 44 (PDF p. 1 is printed p. 45). The text layer extracts well with `pdftotext`; equations are garbled in the text layer and were read from page renders.
- **Tags:** screech, review, Powell feedback loop, phase and amplitude criteria, limit cycle, receptivity, staging (A1, A2, B, C, D), symmetric vs antisymmetric rectangular modes, shock modulation of instability waves, multiple tones, mode switching, wavelets, bicoherence, shock-cell spacing (vortex sheet, multiple scales, waveguide modes), screech frequency formulas (Powell, Tam, Massey, flight, hot jets), unsteady shock motion, broadband shock-associated noise (BBSAN), acoustic near field, standing waves, feedback shock, source location, nozzle lip thickness, reflectors, bevelled/complex rectangular nozzles, twin-jet coupling, mixing enhancement, induced screech, Euler simulation (FCT), modular screech model

## Summary
This is the first review devoted only to screech (p. 47). It organises the subject around the four steps of Powell's loop: instability-wave growth, its interaction with the shock cells, acoustic feedback to the lip, and receptivity there, and asks which step controls the tone amplitude (p. 47–49). Raman's main thesis is that screech **frequency** is now predictable from the shock-cell wavenumber and the convection speed (Powell, Tam, Massey formulas), but **amplitude** is not, even though broadband shock-associated noise (made by the same eddy–shock process without feedback) is well predicted; so the feedback path and receptivity, set by the acoustic near field, lip thickness and reflective surfaces, must hold the key (p. 48, 67, 101). The review covers staging in round jets (still unexplained), shock modulation of the instability wave (which undermines linear-growth arguments), multiple-tone jets studied with wavelets and bicoherence, the weak link between shock strength and screech amplitude, near-field standing waves and the feedback shock, source location at the 3rd–4th shock, screech of bevelled rectangular nozzles explained by Tam's waveguide modes, twin rectangular jet coupling, screech for mixing enhancement, and the simulation state of the art in 1998 (Euler FCT and a modular semi-analytic model). Much of the experimental material is Raman's own NASA Lewis rectangular-jet work.

## Key findings
- **Powell's model and its two criteria** (p. 48–49):
  - Sources are a phased array of regularly spaced monopoles at the shock cells; the phasing sets the directivity (eqs. 1–2). The fundamental peaks upstream (α = 180°); the harmonic has a narrow lobe at 90°.
  - Frequency formula f = U_c / [s(1 + M_c)] (eq. 3). It can be derived from either the **phase criterion** (convection time plus acoustic return time = integer number of periods) or the **amplitude criterion** (maximum directivity upstream). This has caused confusion; strong screech needs both, but screech can occur with only the phase criterion met (p. 49).
  - Limit-cycle condition: product of instability growth q, shock–instability interaction η_s, feedback efficiency η_t and receptivity η_d equals 1 (eq. 4, p. 49).
  - Uncertainties: the convection speed must be known accurately; the speed of sound along the feedback path is not uniform (Envia & Raman); and which shock spacing to use is unclear when spacing varies (p. 49).
- **Staging** (p. 49, 51–52):
  - Merle split stage A into A1 (unstable) and A2 (stable); B very unstable, C very stable, D unstable and not always visible. Davies & Oldfield identified A1/A2 as axisymmetric, B sinuous (flapping), C helical; D resisted classification (p. 49).
  - Fig. 2 (Norum; Norum & Shearin) shows distinct frequency jumps and mode-dependent peak amplitudes. Raman states that **no one had yet explained the mode jumps** (p. 52), and lists staging as unresolved in the conclusions (p. 101).
  - Powell et al.'s C/B frequency ratio varies with NPR, about 1.18 to 1.23 to 1.14 over NPR 3–5.4 (read from Fig. 3, p. 52).
- **Shocks modulate the instability wave** (p. 52–54):
  - Westley & Woolley's shadowgraph films show disturbances accelerate between shocks and decelerate approaching a shock (p. 52).
  - Raman & Rice hot-film data along the M = 0.4 line of an AR 9 rectangular jet at M_j = 1.44: amplitude dips before each shock and recovers after, with no stretch of sustained exponential growth (Fig. 4, p. 52–53). On the M = 0.4 surface, three islands of coherent velocity û/U_j ≈ 0.14, 0.167, 0.17 straddle the shocks (Fig. 5, p. 53).
  - Walker & Thomas attribute the nonlinearity to the violent wave–shock interactions and to the very high near-field SPL, which limit the region of linear growth (p. 53–54).
  - Raman's open question: how useful is linear stability theory when the wave is nonlinear and shock-modulated (p. 54)?
- **Symmetric modes in rectangular jets** (p. 54–55):
  - The usual mode is antisymmetric (flapping). Symmetric (varicose) modes appear near choking: Gutmark et al. saw a switch from symmetric to antisymmetric at M_j = 1.15; Suda et al. and Kaji & Nishijima show both (e.g. 8.8 kHz antisymmetric, 22 kHz symmetric, Fig. 6). Lin & Powell saw symmetric modes at NPR 2.05–2.16 (AR 4.8).
  - Lin & Powell's transmission (feedback efficiency) parameter is very low for the symmetric mode, which may explain why it is weak (Fig. 7, p. 55).
  - A true symmetric jet mode differs from the symmetric-looking harmonic of the antisymmetric tone (p. 55).
- **Multiple tones and mode switching** (p. 55–57):
  - Raman's "instantaneous spectra" (FFT of short blocks of a 4.816 s record, 1024-point blocks, 40% overlap, 25.6 kHz sampling, 25 Hz resolution) shown as waterfalls separate coexisting tones (straight-exit nozzle, M_d 1.3, M_j 1.4) from mutually exclusive, switching tones (single-bevelled nozzle, M_d 1.5, M_j 1.4) (Fig. 8, p. 55–56).
  - Walker et al.: 2D C-D nozzle, underexpanded, two primary tones (symmetric 3125 Hz, antisymmetric 9668 Hz) plus their products. A Morlet wavelet transform showed the tones **coexist without switching** and can reveal resonant phase locking (Fig. 9, p. 56).
  - Walker & Thomas: acoustic autobicoherence peaks at 0.99 for the self-interaction of the primary tone; cross-bicoherence from two hot films (separated by 1/50 of a wavelength on the M = 0.4 line, x/h = 4.63–6.87) distinguishes sum from difference interactions and identifies a difference interaction as the source of a low-frequency shear-layer modulation (Figs 10–11, p. 57–59).
- **Shock-cell spacing** (p. 58–60):
  - Prandtl's linear vortex-sheet cell length (equivalent, as Rayleigh showed, to acoustic modes of a gas column); the Prandtl wavelength is shorter than the diamond spacing of choked jets (p. 58).
  - Tam's eigenfunction-expansion vortex-sheet model and Morris et al.'s boundary-element version (arbitrary cross-sections) give a good average spacing for rectangular jets (Fig. 12a). Finite mixing-layer thickness shortens the spacing by about 20% over the potential core (Morris et al., p. 59).
  - Tam et al.'s multiple-scales model matches measured axial pressure in a round jet (M_j 1.67, M_d 2.0; Fig. 13a, p. 59–61).
  - These models do well for weak shocks; after Mach-disk formation, spacing and strength vary in ways the models miss, and a "second generation" model is called for (p. 59–60).
- **Screech frequency formulas** (p. 60–63): Tam's eq. 5 with k from the shock-cell model; rectangular jets via the lowest waveguide mode (eq. 6), where U_c = 0.55 U_j fits data better than 0.7 (Fig. 12b, Shih et al.); hot jets (eq. 7, Tam et al., with u_c = 0.7 u_j and k scaled by 1.25 for finite mixing-layer thickness; matches Rosfjord & Toms and Krothapalli et al., Fig. 14a); flight (Bryce & Pinker correction; Tam's eq. 8; Fig. 14b); and Massey's separate axisymmetric and helical formulas (eqs. 9–10, Fig. 15). Tam's prediction for round jets is reasonable above M_j ≈ 1.2 (p. 62).
- **Shock strength does not set screech amplitude** (p. 64; Fig. 16):
  - Shock strength θ = (p₁ − p₀)/p₀ rises steadily with M_j for shocks 1–4, while screech amplitude at the exit rises sharply from M_j ≈ 1.1 to a plateau near 154–155 dB from M_j ≈ 1.3 to 1.65 and then collapses near M_j ≈ 1.7 (values read from Fig. 16, AR 9 rectangular jet).
  - So some shock strength is needed to start screech, beyond which more has no effect, and screech stops at high M_j even with very strong shocks (p. 64).
- **Unsteady shock motion** (p. 64–67): Westley & Woolley first saw double ("infant") shocks; Suda et al. (laser schlieren, 2D jet) describe a travelling shock in the 3rd cell that rotates about alternate ends and sweeps downstream each half cycle, which they propose as the actual screech source (Fig. 18); Panda's phase-averaged laser shock detection in an M_j 1.19 round jet shows the 3rd shock moving downstream while a new weak shock grows upstream (Fig. 19). The source mechanism is still "elusive" (p. 67).
- **Screech versus BBSAN** (p. 67–68):
  - Both need shock cells and come from eddy–shock interaction; Harper-Bourne & Fisher's BBSAN model is a Powell-like phased point-source array. Screech is BBSAN amplified by feedback.
  - Differences: screech frequency is independent of observer angle, BBSAN frequency is not; screech frequency equals the upstream BBSAN peak frequency (Fisher & Morfey); screech is the limit of the BBSAN peak (Tam et al., Fig. 20).
  - Norum: screech and BBSAN amplitudes are inversely related, by baffle position (Fig. 21, at 20° from upstream, β = 0.6); BBSAN is independent of screech only when screech is below 90 dB (p. 67).
  - BBSAN intensity scales as β⁴ before the Mach disk and depends little on temperature or angle, unlike screech (p. 67).
  - Low-Re jets can suppress BBSAN but not screech-like tones; whether low-Re spectral peaks are a Reynolds-number effect or a resonance from weak wave cells is unresolved (p. 67–68).
- **Acoustic near field** (p. 68–74):
  - Westley & Woolley (axisymmetric mode): 160 dB at the jet boundary falling to about 130 dB at 6D, a standing-wave pattern, and lobes between shocks with maxima at shocks 3 and 4 (Fig. 22, p. 68).
  - Chan's dipole model (shock and expansion interactions of opposite sign) reproduces the standing wave without needing hydrodynamic–acoustic interference, but cannot predict the 90° harmonic lobe (Fig. 23, p. 68–69).
  - Norum: Powell's model reproduces far-field directivity of B (3 harmonics) and C (4 harmonics) stages with U_c = 0.7 U_j and source spacing 0.9 × the 3rd cell length; spacing and U_c dominate, number and strength of sources are secondary (Figs 24–25, p. 69–70).
  - **Two kinds of feedback** (p. 70–71): classical reinforcement of many sources (round jets and rectangular jets of AR ≲ 5), and a single dominant source sending a **feedback shock** upstream (rectangular AR ≳ 9 at M_j ≈ 1.4), presumably by nonlinear steepening. Why a single-source feedback shock still gives strong upstream directivity is unresolved (p. 73).
  - **Source location:** an equivalent monopole at y = h/2 fits the measured transverse phase at the exit when placed at the 3rd shock for M_j = 1.45 and the 4th for M_j = 1.75 (Fig. 26, p. 71–73). Cain & Bower's linear stability shows lower amplification at higher M_j, so the wave peaks further downstream, explaining the shift (Fig. 27, p. 72–74).
  - **Panda's standing-wave formula** (eqs. 11–12, p. 73–74): the hydrodynamic–acoustic standing wave has 1/L_sw = 1/λ_s + 1/λ_h, giving Powell's formula with L_sw in place of shock spacing; also holds for rectangular and elliptic jets.
- **Lip thickness and reflectors** (p. 75–78):
  - Ponton & Seiner (round convergent): screech stopped at M_j 1.6 with t/D = 0.2 but persisted to M_j 1.9 with t/D = 0.625, with a C→D mode switch complicating it (Fig. 28, p. 75).
  - Raman's rectangular jets (one antisymmetric mode, no switching): oscillation strength grows with lip thickness from t/h = 0.2 to 1.0, no change beyond (M_j 1.45, Fig. 29); at M_j 1.75 a thick lip (t/h 2) **reactivates** screech that had stopped, raising SPL over the whole near field (Figs 30–31, p. 75–77). Lip thickness may explain lab-to-lab amplitude differences, and suppression devices must not thicken the lip (p. 75–76).
  - Reflectors: Harper-Bourne & Fisher found a reflector steadies but strengthens screech, absorbing foam reduces and steadies it; Nagel et al. cancelled screech with a reflector at odd multiples of λ/4 upstream of the exit (p. 76–77).
  - Raman et al. (M_j 1.8): moving an upstream reflector changes both amplitude and frequency; cancellation is abrupt just before the minimum position, implying **detuning** of the loop phase, not just lower pressure at the lip (Fig. 32, p. 77). Maximum screech when the standing wave has a node upstream of the exit and an antinode downstream; minimum when reversed (Figs 33–34, p. 77–78). Hence the standing wave is the forcing field for receptivity, and coupling may occur over a small region downstream of the lip, not only at the trailing edge (p. 78).
- **Complex-geometry rectangular nozzles** (p. 79–87):
  - Raman's AR 5 C-D rectangular nozzles (M_d 1.4): straight, single-bevelled and double-bevelled exits (Fig. 35). Microphones at x/h = −1.2 (Δz = 2.5h, Δy = 1.5h) show the transverse phase is always 180° (antisymmetric), and the spanwise phase defines type I (0°, spanwise symmetric), II (180°, antisymmetric) and III (oblique) modes (p. 81–82, Fig. 40).
  - Near-field source maps at y/h = 1.5, M_j = 1.5: islands on the centreline for the straight exit, off-centre oblique islands for the single bevel, two rows for the double bevel; peak source levels 166.6, 158.3 and 153.2 dB; shock 3 and 4 strengths 1.213 & 0.645, 0.699 & 0.174, 0.259 & 0.133 (Fig. 41, p. 82–84). Shock strength tracks source amplitude only when growth, feedback and receptivity are not limiting (p. 84).
  - Tam et al.'s waveguide approach (eqs. 13–14) fits the measured tones with higher-order spanwise modes: n = 1, 3, 5 (straight), n = 1, 2, 4 (single bevel), n = 6, 7 (double bevel) (Fig. 42, p. 85–87). Several feedback loops and tones can coexist in this framework (p. 85).
- **Twin rectangular jet coupling** (Raman & Taghavi; p. 87–93):
  - Side-by-side rectangular nozzles, narrow dimensions parallel, spacing s/h = 5.5 (Figs 43–45). Mode I: jets flap 180° out of phase; mode II: in phase. Switch from I to II at M_j ≈ 1.5 (p. 88–91).
  - Coupled jets pick a new frequency, different from either single jet (closer to the stronger jet 1), i.e. a new loop overrides the individual loops (p. 89–90).
  - Mode I gives about 15 dB **lower** SPL midway between the nozzles than a single jet (strong cancellation); switching to mode II raises it by about 20 dB but without strong amplification beyond the sum of the single jets (p. 90–91).
  - Phase-averaged near-field maps in the yz, xy and xz planes; mode I narrows and mode II widens the max–min pressure spread on the symmetry plane (Figs 46–50, p. 91–93).
- **Screech and mixing** (p. 93–97):
  - Glass: centreline velocity without feedback can be 50–100% higher than with feedback (p. 93–94). Ahuja et al.: cutting screech by 13 dB raised centreline velocity by 10% at x/D = 15 (Fig. 51). Rice & Raman: a 30 dB change in screech changes potential-core length by a factor of 4 (p. 95).
  - Zaman: B-mode (helical/flapping) screech raises mass flux by about 60% at X/D = 14; A1, A2, C and D do not do so significantly (Fig. 54, p. 94, 97). So mixing depends on screech mode as well as amplitude.
  - Synchronising screech in four rectangular jets enhances mixing (Taghavi & Raman), but in an ejector screech amplitude drops and frequency shifts, so phased feedback cannot be kept in a mixer–ejector (p. 96).
  - **Induced screech:** obstacles beside an on-design rectangular jet set up a supersonic edgetone, giving about 30% mass-flux gain at a thrust penalty near 20%, reducible by shaping (Fig. 55, p. 97).
- **Simulation** (p. 97–101):
  - NRL (Kolbe et al.): FAST3D 3D unsteady Euler with flux-corrected transport and virtual cell embedding, 216 × 104 × 136 grid, 30,000 steps of 5 μs (printed "5 s"), 4 days on 32 nodes. For induced screech at M 1.4: 5043 Hz and 156.4 dB versus 5248 Hz and 157 dB measured; mass flux underpredicted with obstacles, blamed on the absent obstacle supports (Figs 56–57, p. 98).
  - McDonnell Douglas modular model (FLUMES programme, Cain, Bower et al.): instability waves on tanh velocity and temperature profiles, with semi-empirical nonlinear mean-flow spreading and integral entrainment constraints; Kerschen & Cain's analytical shock–wave sound model; cylindrical far-field decay for feedback; Wiener–Hopf receptivity at the lip. Reasonable fundamental frequency and amplitude for Raman's AR 9 jet at M_j 1.44 (Figs 58–59, p. 98–101).
  - Other efforts listed: Umeda & Yasuda, Tam & Shen, Shen & Tam, Scott et al., Manning & Lele (p. 97–98).
- **Unresolved issues** (p. 101–102): staging; models of shock-modulated, amplitude-limited instability waves (including shocks weakened by mean-flow spreading); feedback and receptivity (including reflectors) as the gate to amplitude prediction; Reynolds-number susceptibility; multiple modes; the anomalous symmetric mode in 2D jets; the feedback shock.

## Setup / method
This is a review. The data it reproduces come mainly from:

| Source | Configuration | Diagnostics | Pages |
|---|---|---|---|
| Raman & Rice; Raman (NASA Lewis) | Rectangular C-D, AR 9 (M_d 1.0 in Fig. 59), M_j 1.1–1.9 | Hot-film on M = 0.4 surface, near-field microphone maps, spark schlieren, pitot | 52–53, 64, 70–78 |
| Raman (bevelled nozzles) | AR 5 rectangular C-D, M_d 1.4, straight / single / double bevel | 3-mic phase at x/h = −1.2, xz near-field maps, schlieren | 79–87 |
| Raman & Taghavi | Twin rectangular jets, s/h = 5.5 | Nozzle-mounted mics, phase-averaged near-field maps in three planes, schlieren from 3 views | 87–93 |
| Norum; Norum & Shearin; Seiner & Norum (NASA Langley) | Round convergent and C-D | Far-field directivity, staging amplitudes | 51, 69–72 |
| Walker et al.; Walker & Thomas | 2D C-D nozzle, underexpanded, multiple tones | Mics, hot-film pairs; Morlet wavelets, auto- and cross-bicoherence | 56–59 |
| Westley & Woolley; Chan (NRC Canada) | Round jets | Schlieren films, near-field SPL maps; dipole model | 64–69 |
| Panda | Round, M_j 1.19 | Phase-averaged laser shock detection; standing-wave formula | 66, 73–74 |
| Kolbe et al. (NRL); Cain & Bower (McDonnell Douglas) | Induced screech; AR 9 rectangular | Euler FCT; modular semi-analytic model | 98–101 |

**Analysis methods and their data needs** (as described in the review):
- *Instantaneous spectra* (short-time FFT waterfalls) and *Morlet wavelets* of single-point microphone or hot-film signals: need time-resolved point data; resolve whether tones coexist or switch (p. 55–56).
- *Autobicoherence* (one point) finds quadratic phase coupling but cannot separate sum and difference interactions; *cross-bicoherence* (two closely spaced probes) can (p. 57).
- *Phase averaging* against a reference microphone gives the near-field maps (Figs 47–49) and Panda's shock positions (Fig. 19); this works with non-time-resolved field measurements when the tone is single and steady.
- *Multi-microphone phase differences* classify modes (transverse/spanwise or twin-jet symmetric/antisymmetric) (p. 81–82, 91).
- Linear stability: Cain & Bower's locally parallel analysis on tanh profiles for growth band and phase speed (Fig. 27); vortex-sheet and multiple-scales models for shock cells (p. 58–59).

## Key equations
Checked against page renders (p. 49, 61–63, 74, 86). Printed notation: M_c convective Mach number, λ_c disturbance wavelength, α angle from the downstream axis.

- Powell directivity of fundamental and harmonic, three-source array (eqs. 1–2, p. 49):
  $$D_f = \tfrac13 + \tfrac23\cos\!\big[2\pi (s/\lambda_c)(1 - M_c\cos\alpha)\big],\qquad D_h = \tfrac13 + \tfrac23\cos\!\big[4\pi (s/\lambda_c)(1 - M_c\cos\alpha)\big]$$
- Powell frequency (eq. 3, p. 49), with M_c = U_c/a_∞:
  $$f = \frac{U_c}{s\,(1 + M_c)}$$
- Limit cycle (eq. 4, p. 49): $q\,\eta_s\,\eta_t\,\eta_d = 1$.
- Tam's peak (screech) frequency (eq. 5, p. 61); k = 2π/s recovers eq. 3:
  $$f_p = \frac{u_c\,k}{2\pi\,[1 + u_c/a_\infty]}$$
- Rectangular jet, lowest waveguide mode (eq. 6, p. 62); b_j, h_j fully expanded large and small dimensions:
  $$k = k_{11} = \left(\frac{1}{b_j^2} + \frac{1}{h_j^2}\right)^{1/2}\frac{\pi}{(M_j^2 - 1)^{1/2}}$$
- Hot jets (eq. 7, p. 62; Tam et al.), T_r/T_∞ reservoir-to-ambient temperature ratio:
  $$\frac{f_s D_j}{u_j} \approx \frac{0.67}{(M_j^2-1)^{1/2}}\left[1 + \frac{0.7 M_j}{\big[1 + \tfrac{\gamma-1}{2}M_j^2\big]^{1/2}}\left(\frac{T_r}{T_\infty}\right)^{1/2}\right]^{-1}$$
- Flight (eq. 8, p. 62; Tam), M_∞ flight Mach number:
  $$f = \frac{u_c}{S\,\big(1 + M_c/(1 - M_\infty)\big)}$$
  Bryce & Pinker instead use U_c = 0.7(U_j − U_a) + U_a and feedback speed a − U_a (p. 62).
- Massey, axisymmetric (eq. 9, 1.0 < M_j ≤ 1.35) and helical (eq. 10, 1.2 ≤ M_j < 1.8) modes (p. 62–63), as printed:
  $$\frac{fD_j}{U_j} = (1.25)\frac{0.63}{1.1\,(M_j^2-1)^{1/3}}\left[1 + 0.63 M_j\Big(1+\tfrac{\gamma-1}{2}M_j^2\Big)^{-1/2}\sqrt{\frac{T_r}{T_a}}\right]^{-1}$$
  $$\frac{fD_j}{U_j} = \frac{0.615}{1.1\,(M_j^2-1)^{1/3}}\left[1 + 0.615 M_j\Big(1+\tfrac{\gamma-1}{2}M_j^2\Big)^{-1/2}\sqrt{\frac{T_r}{T_a}}\right]^{-1}$$
- Panda's standing wave (eqs. 11–12, p. 74), λ_s = a_∞/f_s, λ_h = u_c/f_s:
  $$\frac{1}{L_{sw}} = \frac{1}{\lambda_s} + \frac{1}{\lambda_h},\qquad f_s = \frac{u_c}{L_{sw}(1 + u_c/a_\infty)}$$
- Waveguide modes for complex rectangular nozzles (eqs. 13–14, p. 86); for large aspect ratio only m = 1 matters:
  $$k_{n,m} = \left(\frac{n^2}{b_j^2} + \frac{m^2}{h_j^2}\right)^{1/2}\frac{\pi}{(M_j^2-1)^{1/2}},\qquad f_n = \frac{0.55\,u_j}{2\pi[1 + 0.55\,u_j/a_\infty]}\left(\frac{n^2}{b_j^2}+\frac{1}{h_j^2}\right)^{1/2}\frac{\pi}{(M_j^2-1)^{1/2}}$$

> Verify against the PDF / originals before coding:
> - Massey's eqs. 9–10 print the exponent on (M_j² − 1) as **1/3**, unlike the 1/2 in Tam's eq. 7 and the vortex-sheet spacing; the "1.1 *" factor and the (1.25) prefactor in eq. 9 are also as printed. Check Massey (1997) before use.
> - Eq. 7: the text says k from the vortex-sheet model was multiplied by 1.25 and u_c = 0.7u_j (p. 62); the bracket structure above is from the render and looks consistent with eq. 5 under those assumptions.
> - The Kolbe et al. time step is printed as "5 s"; almost certainly 5 μs (symbol lost).

## Data tables
**Quantities quoted in the text** (not tabulated in the paper):

| Quantity | Value | Page |
|---|---|---|
| Coherent velocity peaks on M = 0.4 surface, AR 9, M_j 1.44 | û/U_j = 0.14, 0.167, 0.17 | 53 |
| Primary tones, Walker et al. 2D jet | 3125 Hz (symmetric), 9668 Hz (antisymmetric) | 56 |
| Max autobicoherence (f₁ self-interaction) | 0.99 | 57 |
| Near-field SPL, Westley & Woolley | 160 dB at jet boundary → ≈130 dB at 6D | 68 |
| Norum directivity fit | U_c = 0.7U_j; source spacing 0.9 × 3rd cell | 69–70 |
| Source shock (equivalent monopole) | 3rd at M_j 1.45, 4th at M_j 1.75 | 71–72 |
| Ponton & Seiner screech cessation | M_j 1.6 at t/D 0.2; persists to 1.9 at t/D 0.625 | 75 |
| Bevelled-nozzle peak source SPL (straight / single / double) | 166.6 / 158.3 / 153.2 dB | 83 |
| Shock 3 & 4 strengths at M_j 1.5 (straight / single / double) | 1.213 & 0.645 / 0.699 & 0.174 / 0.259 & 0.133 | 83–84 |
| Twin jets s/h 5.5: mode I vs single, mid-plane | ≈15 dB lower; I→II +20 dB; switch at M_j ≈ 1.5 | 90–91 |
| Mixing: screech −13 dB | +10% centreline velocity at x/D 15 | 94 |
| Mixing: Δscreech 30 dB | potential core length × 4 | 95 |
| Zaman B-mode mass flux gain | ≈60% at X/D 14 | 94 |
| Induced screech | +30% mass flux, ≈20% thrust penalty | 97 |
| NRL Euler vs experiment (M 1.4) | 5043 Hz, 156.4 dB vs 5248 Hz, 157 dB | 98 |

**Read from figures (approximate, verify before quoting):**

| Quantity | Value | Source |
|---|---|---|
| C/B frequency ratio vs NPR | ≈1.18 at NPR 3, peak ≈1.23 near NPR 3.5–4, ≈1.14 at 5.4 | Fig. 3, p. 52 |
| Staging amplitude ranges (40° from upstream axis) | A1 ≈ 95–100 dB near β ≈ 0.5; A2 ≈ 110 dB near β ≈ 0.65; B, C ≈ 120 dB near β ≈ 0.85 and 1.05; D ≈ 105 dB near β ≈ 1.6 | Fig. 2b, p. 51 |
| Screech exit amplitude plateau, AR 9 | ≈154–155 dB for M_j ≈ 1.3–1.65; cut-off near 1.1 and 1.7 | Fig. 16b, p. 64 |
| Rectangular St = fh/U_j | ≈0.35 at M_j 1.2 to ≈0.13 at 1.6 | Fig. 12b, p. 60 |
| Round St = f_sD_j/U_j | ≈0.4 at M_j 1.1 to ≈0.15 at 2.4 | Fig. 13b, p. 61 |
| Lip-receptivity LSA band (Cain & Bower) | max α_i(δ_ω/2) ≈ 0.18 at M_j 1.0, smaller at higher M_j; C_r ≈ 0.5–0.6 | Fig. 27, p. 74 |

## Figures worth remembering
- **Fig. 1 (p. 47):** schlieren of an AR 9 rectangular jet at M_j 1.5 with rods: shock cells, flapping and upstream feedback waves in one image.
- **Fig. 2 (p. 51):** round-jet staging: λ/D against β = √(M_j² − 1) with A1, A2, B, C, D bands (Norum compilation), and their amplitudes (Norum & Shearin).
- **Fig. 4–5 (p. 53):** shock modulation of the screech instability wave on the M = 0.4 line and surface.
- **Fig. 8–11 (p. 56–59):** instantaneous spectra (coexisting vs switching tones), Morlet transform, auto- and cross-bicoherence.
- **Fig. 12–13 (p. 60–61):** shock spacing and screech St against M_j for rectangular and round jets with Tam / Morris et al. predictions.
- **Fig. 16 (p. 64):** shock strength against screech amplitude: the key evidence that the two are uncorrelated once screech is established.
- **Fig. 18–19 (p. 65–66):** travelling shock in the 3rd cell (Suda et al.) and Panda's phase-averaged shock motion.
- **Fig. 21 (p. 68):** inverse relation between screech and BBSAN amplitude with baffle position.
- **Fig. 26–27 (p. 73–74):** feedback shock from the 3rd cell; equivalent-source phase model; LSA explaining the 3rd→4th shock source shift.
- **Fig. 28–31 (p. 75–78):** lip-thickness effects, including screech reactivated at M_j 1.75.
- **Fig. 32–34 (p. 79–80):** reflector position against screech amplitude and frequency; node/antinode placement for max and min screech.
- **Fig. 40–42 (p. 86–87):** mode diagram for bevelled rectangular nozzles; source maps; waveguide-mode frequency fits.
- **Fig. 44–50 (p. 89–94):** twin rectangular jet coupling modes I (out of phase) and II (in phase), with near-field amplitude and phase.
- **Fig. 54 (p. 97):** Zaman's mode-dependent mass-flux gain.
- **Fig. 58–59 (p. 100):** McDonnell Douglas modular screech model and its SPL comparison.

## Notation
- s, S: shock-cell spacing. k: shock-cell wavenumber (2π/s). k_{n,m}: waveguide-mode wavenumber.
- U_c, u_c: convection velocity; M_c = U_c/a_∞; λ_c: disturbance wavelength. U_j, u_j: fully expanded jet velocity; M_j: fully expanded Mach number; M_d: design Mach number; β = √(M_j² − 1).
- b_j, h_j: fully expanded large and small dimensions of a rectangular jet; h: small nozzle dimension; t: lip thickness.
- α: angle from the downstream axis. θ: shock strength (p₁ − p₀)/p₀ in Fig. 16 (p − p̄ notation in the list).
- η_s, η_t, η_d, q: Powell's limit-cycle factors (shock interaction, feedback, receptivity, growth).
- L_sw: standing-wave wavelength; λ_s, λ_h: acoustic and hydrodynamic wavelengths.
- Rectangular-jet modes: type I spanwise symmetric, II spanwise antisymmetric, III oblique (bevelled nozzles); twin-jet mode I out of phase, mode II in phase.

## Relevance to this project
The project studies resonance and feedback in Shock Lab group experiments (schlieren, acoustics, PIV) on round, impinging and non-axisymmetric jets; see CLAUDE.md. This review is the pre-2000 baseline for screech: almost every open question it lists has since been addressed by the guided-jet-mode literature in this library, so it is most useful as a map of the old evidence and of what the newer work overturned or confirmed.

- **What later work answered:**
  - *Closure path and staging* (p. 52, 101): Raman's loop closes through free-stream sound and calls staging unexplained. The guided jet mode closure ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md), [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md)) and the secondary shock-cell wavenumber from shrinking shock spacing ([nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md), [edgington-mitchell-2022-unifying-theory-jet-screech](edgington-mitchell-2022-unifying-theory-jet-screech.md)) now explain the A1/A2 and B/C jumps. Raman's remark that non-uniform shock spacing makes the choice of s ambiguous (p. 49, 59–60) is exactly the effect that later explains staging.
  - *Shock modulation of instability waves* (p. 52–54): modelled by Floquet/parabolised analyses in [nogueira-2021-wavepacket-modulation-shock-containing-jets](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) and [nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md); the latter recasts screech as an absolute instability, which speaks to Raman's question about the limits of linear theory.
  - *Standing waves* (p. 68–74): Panda's L_sw formula is the hydrodynamic–acoustic interference that [edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md) and the 2022 unifying theory reinterpret with the guided mode (k_kh − k_s) and the duct-like mode, rather than free-stream sound.
  - *BBSAN as screech without feedback* (p. 67): consistent with the wavepacket BBSAN model in [wong-2021-wavepacket-modelling-bbsan](wong-2021-wavepacket-modelling-bbsan.md) and with the shock-cell data report [norum-1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md) (same NASA Langley programme as Figs 2, 13, 21, 24–25).
- **Still relevant for experiments:**
  - **Lip thickness and reflective surfaces** change screech amplitude by tens of dB and can reactivate screech (p. 75–78). Record lip thickness and baffle/flange geometry for every rig, and expect amplitude (not frequency) differences between Shock Lab group facilities and others for nominally identical nozzles. The node/antinode argument for receptivity is directly relevant to impinging jets, where the plate is the reflector; see [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md) (lip geometry selecting helical vs toroidal modes) and [henderson-2002](henderson-2002-flow-structure-supersonic-impinging-jets.md).
  - **Shock strength ≠ screech amplitude** (Fig. 16) and the source moving from the 3rd to the 4th shock with M_j (Fig. 26–27) are useful checks for schlieren-based source location.
  - **Feedback shock** in high-AR rectangular jets (p. 70–73) is visible in schlieren and would show up as a steepened upstream wave in SPOD modes of rectangular-jet data.
- **Method implications for the CLAUDE.md workflow:**
  - Time-resolved data (high-speed schlieren, microphones): Raman's short-time spectra and Walker's Morlet wavelets were the 1990s tools for **coexisting vs switching tones** (p. 55–56); today SPOD plus the SPOD → reconstruction → Hilbert POD pipeline does the same job in the field rather than at a point ([raiola-2025](raiola-2025-hilbert-pod.md), [nekkanti-2021-spod-reconstruction-denoising-frequency-time](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md); wavelets: [torrence-1998](torrence-1998-practical-guide-wavelet-analysis.md)). Bicoherence (p. 57–59) is the point-measurement ancestor of BMD ([schmidt-2020-bispectral-mode-decomposition](schmidt-2020-bispectral-mode-decomposition.md)); cross-bicoherence's sum/difference distinction maps onto BMD's triad identification.
  - Non-time-resolved PIV: phase-averaging against a microphone (Figs 19, 47–49) is the classical alternative to POD-pair phase recovery; both need a single, steady tone, which the mode-switching evidence here warns is not guaranteed near staging boundaries.
- **Modelling side:** the review documents the 1990s model chain (vortex-sheet / multiple-scales shock cells, locally parallel LSA on tanh profiles, analytical shock–wave sound, cylindrical feedback decay, Wiener–Hopf receptivity) and the first Euler simulations. The modular McDonnell Douglas model is the only amplitude prediction shown and was compared at a single condition (Fig. 59). The PyFR staging LES in `Simulations/PyFR_Staging_Continuation/` is the modern counterpart; Raman's emphasis that lip thickness and near-field reflectors control amplitude implies the LES nozzle-lip geometry and far-field boundary treatment should match the experiment if amplitudes or staging limits are to be compared.
- **Non-axisymmetric and twin jets:** the bevelled-nozzle waveguide fits (higher-order spanwise modes n up to 7) and twin rectangular coupling (out of phase at lower M_j, in phase above about M_j 1.5) are the early versions of [esfahani-2021-coupling-modes-twin-rectangular-jets](esfahani-2021-coupling-modes-twin-rectangular-jets.md) (out of phase overexpanded, in phase underexpanded), [jeun-2024-screech-coupling-closure-rectangular-twin-jets](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [yeung-2022-3d-spod-twin-rectangular-jet](yeung-2022-3d-spod-twin-rectangular-jet.md), [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md) and [bres-2021-les-twin-rectangular-jets-plasma](bres-2021-les-twin-rectangular-jets-plasma.md). The review does not give the Raman & Taghavi nozzle aspect ratio, so check the original before comparing with the AR 2 twin nozzle of those papers. Trailing-edge modifications for rectangular jets: [samimy-1998](samimy-1998-rectangular-jet-trailing-edge-control.md), [kerechanin-2001](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md).
- **Rocket noise:** Lubert et al. report no screech at full scale ([lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)); Raman's points that heating, lip thickness and Reynolds number all change screech susceptibility are part of the reason lab-scale tones need not carry over.
- **Related works cited, candidates for `/add-paper`:** Powell 1953 (discovery and directivity); Tam 1995 (supersonic jet noise review) and Tam, Seiner & Yu 1986 (multiple-scales shock cells, screech frequency); Panda 1998/1999 (standing waves, shock oscillation); Walker & Thomas 1997 (bicoherence); Raman 1997 (bevelled nozzles, JFM) and Raman & Taghavi 1996 (twin-jet coupling, JFM); Ponton & Seiner 1992 (lip thickness); Massey 1997 (screech frequency formulas); Shen & Tam (screech simulation).
