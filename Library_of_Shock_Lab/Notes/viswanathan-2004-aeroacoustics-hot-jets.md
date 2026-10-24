---
key: "viswanathan-2004-aeroacoustics-hot-jets"
title: "Aeroacoustics of hot jets"
authors: ["Viswanathan, K."]
year: 2004
type: "article"
venue: "JFM 516, 39–82"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "516", "pages": "39--82"}
doi: "10.1017/S0022112004000151"
arxiv: ""
pdf: "jet-noise-mechanisms/Viswanathan_2004_Aeroacoustics-Of-Hot-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "Boeing Low Speed Aeroacoustic Facility (LSAF), Seattle: compact heated-jet rig (propane combustor) with simultaneous thrust measurement"
data: ["microphones-far"]
methods: ["PSD", "statistics", "empirical-model", "acoustic-analogy", "facility-design"]
flow: ["round-jet", "subsonic", "heated"]
phenomena: ["mixing-noise", "directivity", "acoustic-efficiency", "Mach-wave-radiation", "KH-wavepackets"]
params: {"M_j": "0.18–1.0 (convergent nozzles; M 1.24 underexpanded in Figs 7, 17)", "TR": "1.0–3.2 (T_t/T_a); 1.0–3.05 in the constant-velocity series", "V_j/a": "0.32–1.64", "D": "1.5, 2.45, 3.46 in (3.81, 6.2, 8.79 cm) conic; ASME 4.93 in (12.52 cm) for thrust", "Re": "2.04–6.43 × 10⁵ quoted (ν at plenum stagnation conditions); critical ≈ 4 × 10⁵, transition 3.0–3.5 × 10⁵", "θ": "50–160° from the inlet axis", "r": "15 ft (4.572 m) sideline; 12.75 ft at 155°; 9.17 ft extra mics at large angles", "f": "1/3-octave to 80 kHz from 23.4 Hz narrowband"}
topics: ["jet-noise-mechanisms", "diagnostics-and-facilities"]
related: ["tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "tam-2008-sources-of-jet-noise-experimental-evidence", "jordan-2013-wave-packets-turbulent-jet-noise", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "tam-1984-sound-instability-waves-supersonic-axisymmetric-jets", "bres-2019-modelling-jet-noise-les-perspective", "bres-2017-unstructured-les-supersonic-jets", "mayer-2019-bristol-aeroacoustic-wind-tunnel", "tsutsumi-2015-epsilon-liftoff-acoustics", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "michalke-1984-survey-jet-instability-theory", "tam-1995-supersonic-jet-noise", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: ["tam-1984-sound-instability-waves-supersonic-axisymmetric-jets", "tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets"]
summary: "Hot subsonic jets, 3 nozzle sizes: the 'dipole' hump is a low-Re effect (Re_crit ≈ 4×10⁵); no V⁶; OAPWL exponent 8.74→7.98 with TR; rig noise faked old trends"
---
# Aeroacoustics of hot jets

- **Authors:** K. Viswanathan, The Boeing Company, Seattle (p. 39). Single author. Not Shock Lab group work.
- **Source:** J. Fluid Mech. (2004) 516, 39–82, doi:10.1017/S0022112004000151. Received 23 July 2002, revised 15 November 2003 (p. 39). No funding statement; thanks to M. C. Joshi and P. J. Morris (p. 81).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/jet-noise-mechanisms/Viswanathan_2004_Aeroacoustics-Of-Hot-Jets.pdf` (index key `jet-noise-mechanisms/Viswanathan_2004_Aeroacoustics-Of-Hot-Jets.pdf`, 44 pp., publisher's version with a Cambridge "published online" stamp). **Page refs below are journal pages; PDF page = journal page − 38.** The text layer drops every Greek letter and most plot symbols and the "≈" and "∼" signs, so eqs. 1–6 were rebuilt from a 110 dpi page render, and figure readings come from 80–110 dpi renders.
- **Tags:** heated jets, hot-jet noise, subsonic jet noise, temperature ratio, Reynolds-number effect, critical Reynolds number, nozzle size, scale model testing, rig noise, internal noise, data quality, contraction ratio, fine-scale similarity spectrum (FSS, G), large-scale similarity spectrum (LSS, F), dipole source, quadrupole source, Tester–Morfey master spectra, velocity exponent, V⁸ law, V⁶ law, sound power, density effect, constant-velocity tests, aft-angle noise, end of potential core, instability-wave decay, discharge coefficient, thrust, Boeing LSAF

## Summary
Viswanathan measured the far-field noise and thrust of round convergent jets at Mach 0.18–1.0 and stagnation temperature ratios up to 3.2. He used three nozzle sizes at the same conditions to separate Reynolds-number effects from temperature effects (p. 39–41). Data quality is the first theme. Classic NGTE and Tanna data sets carry rig noise that adds up to 5 dB or more at high frequencies and low velocities, while their OASPL differs by under 2 dB, so overall levels cannot validate data (p. 43–47, 68–70). Second, the extra hump near the spectral peak of heated jets, long taken as evidence of dipole sources, appears only with the smallest nozzle. The author attributes it to low Reynolds number (heating at fixed Mach lowers Re) and puts the critical value at about 4 × 10⁵ (p. 50–56, 74). Once Re is high enough, heating leaves the spectral shape unchanged and the sideline spectra fit Tam's fine-scale similarity spectrum. Even cold M 0.4 jets fit the large-scale spectrum at 155–160°, which the author explains by rapid decay of instability waves past the potential core (p. 56–62). The sound-power velocity exponent falls only from 8.74 (cold) to 7.98 (TR 3.2), so the V⁶ law claimed for hot jets is a product of contaminated low-velocity data (p. 64–73). At fixed jet velocity, heating raises the noise below V_j/a ≈ 0.7, leaves it unchanged near 0.73–0.8 and lowers it above (p. 73–77). No model is computed. Theory enters through the empirical similarity spectra, the old quadrupole-plus-dipole master spectra and a qualitative instability-wave argument.

## Key findings
**Nozzle aerodynamics and thrust (§3, p. 41–43)**
- **Discharge coefficient** (Fig. 1, p. 42). Cold, the 1.5 in nozzle has lower C_d than the 3.46 in nozzle until NPR ≈ 2. At TR 3.2 the small nozzle's C_d falls further, and the large nozzle's falls at low NPR. Read from the figure, C_d is about 0.925–0.94 at NPR 1.1 rising to about 0.985 cold, and 0.87 rising to 0.97 for the hot 1.5 in nozzle. The author offers this as a warning of a Reynolds-number effect on noise (p. 42–43).
- **Thrust depends on NPR only** (Fig. 2, p. 43). Cold and two hot cycles (up to 944 K) of an ASME 4.93 in nozzle fall on one line. With propane, γ drops from 1.4 to about 1.34 at 944 K, which lowers thrust by 0.5% at fixed NPR (p. 43).
- **Constant-velocity comparisons are not at constant thrust**, since reaching the same V_j hotter needs a lower NPR (p. 43).

**Data quality and rig noise (§4.1, p. 43–47; §4.4, p. 66–71)**
- **NGTE (Ahuja 1973), 90°, cold, V_j 600 and 1000 ft s⁻¹** (Figs. 3–4, p. 44–45). After correction to the same 6 ft arc and standard day (Shields & Bass 1977 absorption), the NGTE levels are higher, more so at high frequency. The excess is about 5 dB at the lower velocity and smaller at the higher one.
  - The current 2.45 in nozzle itself had 3 dB of high-frequency contamination at 600 ft s⁻¹ (M 0.55), so the larger NGTE nozzle could be off by more than 5 dB (p. 46).
- **Tanna et al. (1975) and Tanna (1977), 2.0 in nozzle, 12 ft arc, lossless** (Fig. 5, p. 46). They agree at low frequency. Tanna's levels are higher above about 6 kHz and 5 dB higher above 13 kHz, more so at low Mach (p. 69). Yet the OASPL of the three cases differs by only 1.7 dB (p. 70).
- **Contraction ratio is no guarantee** (p. 46–47). NGTE used 250 and 100 for its two nozzles, the current rig 28 and 10.7, yet the NGTE spectra are louder and less smooth. Fittings, gaps, steps and screw heads downstream of the plenum spoil data. A compact rig can match a blow-down tunnel if designed with care (Viswanathan 2003).
- **Larger nozzles are noisier rigs** (p. 45–46). At fixed exit velocity a larger nozzle needs a higher internal velocity for its mass flow. Rig noise grows with a high power of internal velocity, faster than the jet noise.
- **Rig noise sits at fixed raw frequency**, so plotting spectra against frequency rather than Strouhal number exposes it (p. 70). The contamination resembles that of "facility 3" in Viswanathan (2003), above 10 kHz (p. 70).
- **Overall levels hide contamination.** Integrating over frequency to get OASPL or OAPWL "hides a multitude of problems" (p. 68). Spectra 4–5 dB off across the band were seen before rig fixes (p. 68), and smooth spectra can hide 10 dB or more (p. 68). Gross quantities "must be avoided" for data validation (p. 70; conclusion 1, p. 77).

**Spectral shape at 90° and the "dipole" hump (§4.2, p. 47–57)**
- **Nozzle-size collapse** (Fig. 6a, p. 47–48). For SPL − 80 log(V_j/a) − 10 log A against St, cold jets at M 0.6–1.0 from all three nozzles collapse within 1 dB up to St 4.0. Above that the 3.46 in nozzle rises with frequency, more at low M (rig noise). The low-frequency collapse rules out a near-field effect for the largest nozzle.
  - Heated, M 0.8, TR 2.2 at 145°: the three nozzles agree over the whole spectrum at 20 ft, lossless (Fig. 6b, p. 47).
  - OAPWL − 10 log A agrees within 0.5 dB across nozzles at four cycles (Fig. 7, p. 49; Data tables).
- **Cold spectra fit the FSS** (G) at 90° for M ≥ 0.6. At M 0.5 the highest frequencies are slightly high, at M 0.4 the spectrum departs above 20 kHz (band 43), and M 0.3 "does not resemble that of jet noise at all" (rig noise) (Fig. 8, p. 49–50).
- **The hump with the small nozzle** (Figs. 9–10, p. 50–52). With D = 1.5 in at M 0.5 and 0.6, heating to TR 1.8–3.2 shifts the peak lower and adds an "extra hump" near it, growing with temperature.
  - This is what Tester & Morfey (1976) and Morfey, Szewczyk & Tester (1978) modelled as a dipole term from temperature fluctuations, with a master spectrum peaking lower than the quadrupole one (Fig. 11, p. 50–51). Their data came from Tanna's 2.0 in nozzle, and the view had been accepted "for the past 25 years" (p. 51).
- **No hump with the larger nozzles.** With D = 2.45 in (M 0.6 at 70°, 90° and 100°), the hump is absent or barely visible at the two highest TR (Fig. 12, p. 52–55). With D = 3.46 in at 90°, the shape stays on the FSS at every TR (Fig. 13, p. 52, 56).
  - At TR 3.2 the 1.5 in nozzle shows the hump at every Mach number, strongest at low M (Fig. 14, p. 52, 57). The 3.46 in nozzle shows none, even at M 0.4 (Fig. 15, p. 52, 58).
- **Reynolds number is the stated cause** (Fig. 16a, p. 53, 59). At M 0.7, TR 3.2 the hump is obvious at Re 204 000 (1.5 in), weaker at 333 200 (2.45 in) and almost gone at 470 600 (3.46 in). The author states that Re is the only parameter that differs (p. 53).
- **Normalised comparison** (Fig. 16b, p. 53–55). With SPL − 55.3 log(V_j/a) − 10 log A (the 90° exponent at TR 3.2, Fig. 32), M 0.5–1.0 spectra collapse onto one curve per nozzle. The small nozzle is higher near and just below the peak. At the high-St end (St 8, 80 kHz on the small nozzle at M 0.5) the large nozzle is 2 dB higher. The same 2 dB excess over the FSS appears at 35 kHz in Fig. 15, so the large nozzle has rig noise there (p. 55).
- **Conclusion on dipoles** (p. 55–56). The hump "has nothing to do with the presence of dipoles": heating at fixed M lowers Re. The FSS fits without a hump because Tam et al. (1996) built it from supersonic jets, whose Re stays high even when hot (p. 55–56).
  - The author also points to his other angles (Figs. 12a, c here; Figs. 15–16 of Viswanathan 2002) against the objection that dipoles do not radiate at 90° (p. 56).
- **The low-Re jet is louder** (Fig. 17, p. 56, 60). At TR 3.2 the 1.5 in nozzle radiates more power per unit area than the 2.45 in one until the jet is supersonic. Read from the figure, the excess is about 0.5 dB at M 0.5–0.7, about 0.9 dB at 0.9 and about 0.1 dB at 1.24 (where shock noise dominates).
- **Tam & Ganesan (2003)** added a density-fluctuation term to the k–ε model, so that the mean flow, not the acoustic model of Tam & Auriault (1999), carries the heating effect. This matched Seiner et al.'s (1992) hot supersonic data much better. The author asks for validation against these subsonic data (p. 56–57) and calls it a "welcome departure" from adding source terms when a model fails (p. 73).

**Aft angles: large-scale noise from low-speed jets (§4.3, p. 57–63)**
- **Cold M 0.4 and 0.5** (Fig. 18, p. 58, 60; standard day, 20 ft): the FSS fits 90° and the LSS (F) fits 155°.
  - At 160° (D = 2.45 in, M 0.4–1.0) the LSS fits "even at the lower Mach numbers of 0.4 and 0.5". The high-frequency misfit is atmospheric absorption (Fig. 19, p. 58, 61).
  - **The peak frequency is the same for every velocity** (dashed line in Fig. 19, p. 58), as Lush (1971) first noted. Read from the figure, it is band 29 (about 0.8 kHz).
  - Exhaust-collector reflections add low-frequency tones at the largest angles (p. 58).
- **Two views of the aft-angle change** (p. 58–61):
  - Traditional: convective amplification at low frequency, plus mean-flow refraction cutting high frequencies.
  - Tam (1991): direct radiation by large-scale structures. The fine-scale component has uniform directivity, so the aft increase is not fine-scale noise.
- **Proposed mechanism** (p. 61–62). With U_c = 0.7V_j, the structures of a cold M 0.4 jet travel at U_c/a ≈ 0.3 and cannot radiate as Mach waves.
  - Instead, rapid amplitude modulation broadens an instability wave's wavenumber spectrum and gives it supersonic-phase-speed components (Tam & Burton 1984). The decay must be severe at low Mach.
  - Low-St waves peak near the end of the potential core. Just beyond it the shear layer vanishes, so the waves can no longer draw energy from the mean flow and are damped, which would be "rapid decay … due to nonlinear mechanisms" (p. 62).
  - The author cites Panda & Seasholtz (2002) as "tantalizing evidence". They found that centreline density fluctuations just past the core correlate at low St with an aft microphone over M 0.6–1.8, while shear-layer correlation appears only at supersonic convective Mach number (p. 62).
  - He states the issue remains unresolved (p. 62).
- **Heating at aft angles** (Fig. 20, p. 62–63; M 0.7, 155°, TR 1.0–3.2).
  - The spectrum becomes more peaked than the LSS, already at TR 1.8, where Re is 642 600, so this is not a low-Re effect.
  - The peak frequency rises at TR 2.7 and 3.2, where V_j/a = 1.11 and 1.2 (confirmed in narrowband).
  - At 155° and 160° the peak frequency stays fixed while V_j/a < 1, for hot as well as cold jets (p. 62).
- **TR 3.2 at 155°** (Figs. 21–22, p. 63–65; 23.4 Hz narrowband). The peak broadens greatly at higher M, and no consistent (St-scaling) peak could be found. The low-frequency level rises well above the LSS (p. 63).

**Sound power and the velocity exponent (§4.4, p. 63–73)**
- **Data**: M 0.5–1.0 at TR 1.0, 1.8, 2.2, 2.7 and 3.2, D ≥ 2.45 in "to avoid Reynolds number effects" (p. 63). Levels are per unit nozzle area (p. 64).
- **OAPWL exponents** (Figs. 23–24, p. 64, 66–67): 8.74 (TR 1.0), 8.34 (1.8), 8.34 (2.2), 8.03 (2.7), 7.98 (3.2). The exponent is close to 8 when hot.
  - Adding cold M 0.3 and 0.4 (rig-noise affected) gives 8.41 instead of 8.74 (p. 64).
  - At TR 3.2, adding M 0.3, 0.4 and the 1.5 in nozzle gives 7.32 instead of 7.98 (p. 64).
- **No V⁶** (Fig. 25, p. 65, 67). OAPWL − 80 log(V_j/a) at TR 2.7 and 3.2 has fitted slopes of 0.028 and −0.013 relative to 8, with points within ±0.5 dB of the fits.
- **Power spectra** (D = 3.46 in, TR 3.2, M 0.5–1.0; Figs. 26–27, p. 65–66, 68–69) collapse with 80 log(V_j/a).
  - The peaks broaden at high M because the peak-angle spectra broaden once V_j/a > 1. The peak angles are about 16 dB above 90° at M 1.0 (p. 65).
  - At St ≈ 0.5 the M 1.0 jet (V_j/a = 1.64) is about 3 dB above M 0.5 and 0.6 (V_j/a = 0.88 and 1.05).
  - M 0.5 is highest at St 10 (rig noise). The rest collapse within 2 dB over St 1.5–10, tightest over 3–7, and V⁸ holds best below the peak (p. 65–66).
- **Where V⁶ came from** (p. 66–71). Its proponents (e.g. Lilley 1996) cite the same two data sets, Tanna et al. (1975) and Hoch et al. (1973).
  - Those data reached velocity ratios of 0.44 (NGTE), 0.35 (Tanna) and 0.25 (ISVR) (Morfey et al. 1978, Fig. 20), where the "dipoles" were detected (p. 70). Hoch's hot data also used a small nozzle, D = 1.78 in (p. 70).
  - Supersonic C-D points anchor the high end of a power-law fit, while contaminated low-velocity points pull the exponent down (p. 71).
- **Low-velocity test** (Figs. 28–29, p. 70–72; TR 3.2).
  - Points: M 0.18, 0.22, 0.25 and 0.28 (V_j/a 0.32, 0.39, 0.44, 0.49), plus M 0.4, 0.5 and 0.6.
  - Fitted exponents: 5.9 for OAPWL and 5.2 for OASPL at 90°; 6.3 with M 0.7–1.0 added.
  - The spectra show why: at 90° the low-Mach spectra are up to 20 dB high at low frequency. The author reads this as rig noise, not dipoles (p. 71).
  - He notes "a few uncertainties remain" and calls for clean low-velocity, high-Re data from a large nozzle (p. 71).
- **Source terms are not unique** (p. 73). Morris & Farassat (2002) showed that the source interpretation depends on how the equations are cast. Goldstein's (2002) linearised inhomogeneous Euler equations give monopoles and quadrupoles and, in his words, no analogy identifies sources unambiguously.

**Constant velocity: the density effect (§4.5, p. 73–77)**
- **Crossover** (Fig. 30, p. 73–74). The TR 1.0 and 3.2 power fits could cross near V_j/a ≈ 0.8. Hoch et al. (1973) and Tanna et al. (1975) quoted 0.73, but a single value is hard to pin down.
- **Test points** (p. 74): V_j/a = 0.53, 0.62, 0.73, 0.80, 0.90 and 1.2 (600, 700, 820, 900, 1010 and 1350 ft s⁻¹, i.e. 183–412 m s⁻¹), at eight reservoir temperatures, TR 1.0–3.05. At 1.2 only heated points were run, to stay shock-free with convergent nozzles.
- **Critical Reynolds number** (p. 74). There is no sharp boundary: the shape changes gradually as Re falls (as in Fig. 16a and the C_d trend of Fig. 1). In general Re = 400 000 is adequate and 500 000 or more desirable, with the transition spanning 300 000–350 000. Only points with Re ≥ 335 000 are used in §4.5.
- **OAPWL against temperature** (Fig. 31, p. 74–75; Data tables). Heating raises power at V_j/a 0.53 and 0.62 (+2.2 and +1.6 dB), barely changes it at 0.73 and 0.80, and lowers it at 0.90 (−0.8 dB) and 1.2 (−2.3 dB) (changes are my arithmetic from the printed bar values).
- **Intensity at 90°** (Fig. 32, p. 75–76). The exponent falls continuously from 7.83 (cold) to 5.53 (TR 3.2).
  - At V_j/a ≈ 1.12, 1.24 and 1.37 hotter jets are quieter, but only by about 1 dB.
  - The curves are not the parallel lines of Tam et al. (1996), and the heating reduction is smaller than their formula gives. The author notes that formula is for peak amplitude, which differs from intensity by a scale factor when spectral shapes agree (p. 75).
- **Intensity at 160°** (Fig. 33, p. 75–77): 9.67 (cold) to 7.67 (TR 3.2). At supersonic acoustic Mach numbers and fixed V_j, heating lowers the level most in the peak direction.
- **Spectra at fixed V_j** (Figs. 34–36, p. 77–80):
  - V_j/a = 1.2 (TR 1.71, 2.29, 3.05) at 90° and 150°: the whole spectrum drops with heating, most at 150°.
  - V_j/a = 0.73 (TR 1.51, 1.71, 1.90) at 90° and 155°: at 90°, low frequencies rise and high frequencies fall, by 1 dB or less; even less in the peak direction.
  - V_j/a = 0.62 (same TRs) at 90° and 145°: the low-frequency and peak levels rise with heating; no high-frequency change at 90°, a minor one at 145°.

**Conclusions** (p. 77, 81): ten items. The main ones are:
- spectra, not overall levels, decide data quality;
- the hot-jet hump is a low-Re effect, Re_crit ≈ 4 × 10⁵, and dipoles are not needed;
- the subsonic spectral shapes at near-normal and forward angles are universal, so "any jet noise theory or a model must predict this shape";
- aft-angle spectra of cold low-Mach jets match those of hot supersonic jets;
- heating broadens the peak sector and the peak;
- the aft peak frequency is velocity-independent for V_j/a < 1, though the mechanism of the aft change in shape is still open;
- the velocity exponent depends weakly on temperature;
- the density effect reverses with velocity.

The author also asks for boundary-layer, plume-turbulence and optical measurements to explain the remaining differences (p. 77, 81).

## Setup / method
- **Facility** (p. 41): Boeing Low Speed Aeroacoustic Facility (LSAF), with a compact jet simulator; details are in Viswanathan (2003, AIAA J. 41). Thrust and noise were measured simultaneously. The jet is heated by propane combustion (p. 43), and an exhaust collector sits downstream (p. 41, 58).
- **Nozzles:** three conic convergent nozzles of D = 1.5, 2.45 and 3.46 in (3.81, 6.2, 8.79 cm) (p. 44, 47), plus an ASME nozzle of D = 4.93 in (12.52 cm) for thrust (p. 43). The contraction ratios are 28 and 10.7 for the two nozzles compared with NGTE (p. 47), and 10.7 and 3.6 for the primary and secondary streams of the dual-stream tests in Viswanathan (2003).
- **Microphones** (p. 41):
  - B&K Type 4939, at normal incidence without the grid, flat to 100 kHz.
  - On a 15 ft (4.572 m) sideline from the jet axis over 50–155° from the inlet axis; the 155° microphone sits at 12.75 ft (3.886 m).
  - For some points, extra microphones on a 9.17 ft (2.79 m) sideline at large angles (e.g. 160°), at a different azimuth, to avoid the collector.
- **Spectra** (p. 41, 49):
  - Narrowband with 23.4 Hz bins, synthesised into 1/3-octave bands up to 80 kHz (band number = 10 log₁₀ f).
  - The FFT length, window, averages and sampling rate are not given here. A 23.4 Hz bin is consistent with 8192 points at 192 kHz (my inference).
  - Corrections: to a polar arc (6, 12 or 20 ft), to standard day (59 °F, 70% RH), or to lossless form, with absorption from Shields & Bass (1977) (p. 44, 46–47).
  - As-measured data are used for qualitative shape comparisons with the similarity spectra, because the FSS was fitted to as-measured data. Corrected data are used for direct comparisons (p. 49).
- **Overall levels**: OASPL at an angle and OAPWL (dB re 10⁻¹² W) "per unit nozzle area", i.e. minus 10 log₁₀ A (p. 46, 49, 64). How OAPWL is integrated over the arc, and the units of A, are not stated.
- **Test matrix** (p. 41, 63, 70, 74):
  - Constant M with TR stepped through 1.0, 1.8, 2.2, 2.7 and 3.2, for M 0.3–1.0, plus 0.18–0.28 at TR 3.2 and 1.24 in two figures.
  - Constant V_j at six values of V_j/a with eight TRs between 1.0 and 3.05.
- **Re definition** (p. 42): "the values of the kinematic viscosity are evaluated with the plenum stagnation conditions". The velocity and length are not stated; V_j D/ν_t reproduces the quoted values (my check below).
- **Similarity-spectrum fitting** (p. 49). The peaks of the FSS or LSS of Tam et al. (1996) are placed on the measured peaks, so only shape is tested, not level ("not to be confused with" the Tam & Auriault 1999 prediction). The author recalls that atmospheric absorption distorts the high-frequency shape of the 1996 spectra, so they should be refitted from data normalised to standard conditions (Viswanathan 2002; p. 49).
- **Normalisations** (p. 47, 53, 65): SPL − 80 log(V_j/a) − 10 log A against St, and the same with 55.3 for the TR 3.2 spectra at 90°. OAPWL and PWL use 80 log(V_j/a). Exponents come from least-squares fits of level against log(V_j/a), per TR group.
- **Method dependence on data.** Everything here is block-averaged stationary spectra from time-resolved far-field microphone signals, one microphone at a time. There are no cross-spectra, correlations or time–frequency analyses. The rig-noise checks need high-bandwidth spectra (to 80 kHz here) and several nozzle sizes or velocities. Plots against raw frequency (fixed in Hz) separate rig noise, while plots against Strouhal number collapse jet noise.
- **Modelling side.** No model is computed. Theory enters as follows:
  - **Empirical:** Tam et al.'s (1996) F and G spectra, used as shape references.
  - **Acoustic analogy:** Lighthill's V⁸ law for quadrupoles, against the V⁶ law and lower-peaking master spectrum claimed for temperature-fluctuation dipoles (Tester & Morfey 1976; Morfey, Szewczyk & Tester 1978, a geometric-acoustics model; Lilley 1996). Neither is evaluated beyond reproducing the master spectra (Fig. 11).
  - **Instability-wave argument** for aft noise of low-speed jets (p. 61–62). It is qualitative. It assumes U_c = 0.7V_j and relies on Tam & Burton's (1984) wavenumber-broadening result. Growth rates and decay lengths are not computed.
  - **Model match to data:**
    - G fits all sideline spectra above Re ≈ 4 × 10⁵.
    - F fits cold aft spectra from M 0.4 but not hot ones, which are more peaked at V_j/a < 1 and broader with low-frequency excess at V_j/a > 1.
    - Tam's 1996 amplitude formulas overstate the heating reduction.
    - The dipole master spectrum is needed only for low-Re data.

## Key equations
Rebuilt from the rendered pages (Greek letters are missing from the text layer).

- **Throat Mach number** (eqs. 1–2, p. 41): $M=\sqrt{\dfrac{2}{\gamma-1}\left[\left(\dfrac{p_t}{p_a}\right)^{(\gamma-1)/\gamma}-1\right]}$ for $\dfrac{p_t}{p_a}<\left(1+\dfrac{\gamma-1}{2}\right)^{\gamma/(\gamma-1)}$; $M=1$ otherwise.
- **Ideal mass flow** (eq. 3, p. 41): $\dot m=p_tAM\sqrt{\dfrac{\gamma}{RT_t}}\left[1+\dfrac{\gamma-1}{2}M^2\right]^{-(\gamma+1)/[2(\gamma-1)]}$.
- **Ideal jet velocity** (eq. 4, p. 41): $V_j=\sqrt{2RT_t\left(\dfrac{\gamma}{\gamma-1}\right)\left[1-\left(\dfrac{p_t}{p_a}\right)^{-(\gamma-1)/\gamma}\right]}$ (fully expanded).
- **Ideal thrust** (eqs. 5–6, p. 42): $F=\dot mV_j=p_tAM\gamma\left[1+\dfrac{\gamma-1}{2}M^2\right]^{-(\gamma+1)/[2(\gamma-1)]}\sqrt{\dfrac{2}{\gamma-1}\left[1-\left(\dfrac{p_t}{p_a}\right)^{-(\gamma-1)/\gamma}\right]}$.
  - My check: eq. 3 × eq. 4 gives eq. 6 exactly. So F depends on NPR (through M and the bracket) and on T_t only through γ, as the author argues (p. 43).
- **Band number** (p. 49): band # = 10 log₁₀ f (f in Hz); band 43 ≈ 20 kHz, band 49 ≈ 80 kHz.
- **Power law** (implicit, Figs. 23–25, 32–33): $\mathrm{OAPWL}-10\log A = C + 10n\log(V_j/a)$, with n fitted per TR.

> **My additions (not in the paper).**
> - Acoustic Mach number: $V_j/a=M\sqrt{(T_t/T_a)/[1+\tfrac{\gamma-1}{2}M^2]}$. With γ = 1.4 it reproduces the paper's values: 0.873, 1.04 and 1.63 for M 0.5, 0.6 and 1.0 at TR 3.2 (printed 0.88, 1.05, 1.64; p. 65); 1.10 and 1.20 for M 0.7 at TR 2.7 and 3.2 (printed 1.11, 1.2; p. 62); 0.32 for M 0.18 at TR 3.2 (p. 70).
> - At fixed TR the quoted Re scales as $Re\propto D\,M(1+0.2M^2)^3$, using V_j ∝ M/√(1 + 0.2M²) and ν_t ∝ 1/p_t.

## Data tables
**Overall power from three nozzles** (Fig. 7, p. 49; values printed on the bars). OAPWL − 10 log A, dB re 10⁻¹² W.

| Condition | D = 1.5 in | 2.45 in | 3.46 in | Spread |
|---|---|---|---|---|
| M 0.9, TR 1.0 | 132.7 | 132.8 | 133.2 | 0.5 |
| M 0.8, TR 2.2 | 142.4 | 142.1 | 142.2 | 0.3 |
| M 1.0, TR 3.2 | 154.5 | 154.7 | 154.4 | 0.3 |
| M 1.24, TR 2.7 | 158.9 | 158.9 | 158.9 | 0 |

**Density effect** (Fig. 31, p. 75; values printed on the bars). OAPWL − 10 log A (dB) against reservoir temperature T_t in °R. Dividing by 525 °R gives the TR values of Figs. 34–36 (900 → 1.71, 1000 → 1.90, 1200 → 2.29, 1600 → 3.05; my check), so 525 °R is the cold case. The last column is my arithmetic.

| V_j/a (V_j) | 525 °R | 800 | 900 | 1000 | 1100 | 1200 | 1300 | 1600 | Coldest → hottest |
|---|---|---|---|---|---|---|---|---|---|
| 0.53 (183 m/s) | 115.9 | 116.6 | 118.1 | | | | | | +2.2 dB |
| 0.62 (213 m/s) | 121.5 | 121.9 | 122.7 | 123.1 | | | | | +1.6 dB |
| 0.73 (250 m/s) | 127.2 | 127.4 | 127.5 | 127.6 | | | | | +0.4 dB |
| 0.80 (274 m/s) | 131.7 | 131.3 | 131.2 | 131.6 | 131.5 | | | | −0.2 dB (no trend) |
| 0.90 (308 m/s) | | 135.0 | 134.7 | 134.7 | 134.5 | 134.6 | 134.2 | | −0.8 dB |
| 1.2 (412 m/s) | | | 146.2 | | | 144.8 | 144.5 | 143.9 | −2.3 dB |

**Velocity exponents** (p. 64, 67, 75, 77). The Tam et al. (1996) columns are my arithmetic from that note's eqs. 7 and 9 (peak amplitudes, not OASPL).

| TR | OAPWL (Fig. 24, D 2.45 in) | OASPL 90° (Fig. 32) | OASPL 160° (Fig. 33) | Tam 1996 G, 90° | Tam 1996 F, 160° |
|---|---|---|---|---|---|
| 1.0 | 8.74 | 7.83 | 9.67 | 7.60 | 9.57 |
| 1.8 | 8.34 | | | 6.93 | 9.17 |
| 2.2 | 8.34 | | | 6.80 | 8.97 |
| 2.7 | 8.03 | | | 6.70 | 8.72 |
| 3.2 | 7.98 | 5.53 | 7.67 | 6.64 | 8.48 |

Contaminated fits, for contrast (p. 64, 70):
- cold with M 0.3 and 0.4 added: 8.41;
- TR 3.2 with M 0.3, 0.4 and the 1.5 in nozzle: 7.32;
- TR 3.2 at V_j/a 0.32–1.05 (seven points): 5.9 for OAPWL and 5.2 for OASPL at 90°;
- TR 3.2 with all points: 6.3.

The 90° fits in Fig. 32 cover V_j/a ≈ 0.49–0.92 cold but 0.88–1.64 at TR 3.2 (read from the figure). The exponents therefore come from different velocity ranges.

**Reynolds numbers.** Quoted values:
- M 0.7, TR 3.2: 204 000 (D 1.5 in), 333 200 (2.45 in), 470 600 (3.46 in) (p. 53).
- M 0.7, TR 1.8: 642 600, at 155°, nozzle not stated (p. 62).
- Thresholds: transition 300 000–350 000; 400 000 adequate; 500 000 desirable; §4.5 cut-off 335 000 (p. 74).

> **Checks on Re (my arithmetic).**
> - **Definition.** Re = V_jD/ν(p_t, T_t) reproduces the quoted values. Using Sutherland viscosity, γ = 1.4 and T_a ≈ 292–296 K, M 0.7, TR 3.2, D 1.5 in gives ≈ 2.06 × 10⁵ (quoted 2.04 × 10⁵).
> - **Nozzle for the 642 600 case.** Scaling the 2.45 in TR 3.2 value to TR 1.8 gives ≈ 6.4 × 10⁵, so that case is the 2.45 in nozzle.
> - **The §4.5 cut-off.** At V_j/a 0.53 on the 2.45 in nozzle, the 900 °R point has Re ≈ 3.36 × 10⁵ and the 1000 °R point ≈ 2.8 × 10⁵. At V_j/a 0.62 the 1000 °R point has ≈ 3.38 × 10⁵. This is exactly why Fig. 31a stops at 900 °R and Fig. 31b at 1000 °R. It confirms both the definition and that §4.5 used the 2.45 in nozzle (Figs. 34–36 state it).
> - **Heating lowers Re strongly.** Heating from TR 1 to 3.2 at fixed M cuts Re about fourfold (M 0.7, D 2.45 in: ≈ 1.3 × 10⁶ cold).
> - **Estimates at TR 3.2** from Re ∝ D M(1 + 0.2M²)³ and the quoted values (these assume the same T_t; γ = 1.34 hot changes them by a few per cent):
>
> | D | M 0.4 | M 0.5 | M 0.6 | M 0.7 (quoted) | M 1.0 |
> |---|---|---|---|---|---|
> | 1.5 in | 0.90 × 10⁵ | 1.27 × 10⁵ | 1.63 × 10⁵ | 2.04 × 10⁵ | 3.8 × 10⁵ |
> | 2.45 in | 1.46 × 10⁵ | 2.08 × 10⁵ | 2.66 × 10⁵ | 3.33 × 10⁵ | 6.2 × 10⁵ |
> | 3.46 in | 2.07 × 10⁵ | 2.94 × 10⁵ | 3.75 × 10⁵ | 4.71 × 10⁵ | 8.8 × 10⁵ |
>
> **Three consequences.**
> 1. **The hump follows nozzle size more closely than Re.** The 1.5 in nozzle shows a hump at M 1.0, TR 3.2 (Fig. 14, "humps at all Mach numbers", p. 55) at Re ≈ 3.8 × 10⁵. The 3.46 in nozzle shows none at M 0.4, TR 3.2 (Fig. 15, p. 52) at Re ≈ 2.1 × 10⁵. Fig. 16b's spectra also collapse into one family *per nozzle*, although their Re ranges overlap (1.3–3.8 × 10⁵ against 2.9–8.8 × 10⁵). So Re alone, as defined, does not order the data. Something that scales with the nozzle (its exit boundary-layer state or internal geometry) fits better. The author's call for boundary-layer measurements (p. 77–81) and the later contraction-ratio sensitivity (Harper-Bourne 2010; Zaman 2011, in [Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md), p. 175) point the same way.
> 2. **Some "clean" data are below the paper's own threshold.** The 2.45 in nozzle at TR 3.2 and M 0.5–0.7 (Re ≈ 2.1–3.3 × 10⁵) is below the threshold, yet §4.4 uses D ≥ 2.45 in "to avoid Reynolds number effects" (p. 63). Fig. 12 at M 0.6 (Re ≈ 2.7 × 10⁵) also shows almost no hump. Low-Re points raise the low-M levels (Fig. 17), so the TR 3.2 exponent of 7.98 may if anything be slightly low.
> 3. **Definitions differ between papers.** For a cold supersonic jet, stagnation ν is smaller than exit-static ν. At M_j 1.1, Re on this definition is about 1.5 times the exit-based Re.
>
> **Other checks.**
> - **Strouhal number** is not defined in the text. With St = fD/V_j, 80 kHz on the 1.5 in nozzle at M 0.5, TR 3.2 (V_j ≈ 300 m s⁻¹) is St ≈ 10, not the 8 stated (p. 55). The quoted 35 kHz on the 3.46 in nozzle is the same St, so the two are consistent with each other. fD/a_∞ gives about 8.8. Check which St is plotted.
> - **Aft peak frequency.** Band 29 (≈ 0.8 kHz) on the 2.45 in nozzle (Fig. 19) is fD/a_∞ ≈ 0.14 (708–891 Hz band edges: 0.13–0.16). As fD/V_j it is 0.37 at M 0.4 and 0.16 at M 1.0 (my readings and arithmetic).
> - **Fig. 25 slopes.** "0.028 and −0.013 relative to 8" equals exponents of 8.03 and 7.99, against 7.98 printed in Fig. 24 for TR 3.2: a rounding-level difference.

## Figures worth remembering
- **Fig. 1 (p. 42):** discharge coefficient against NPR for the 1.5 and 3.46 in nozzles, cold and at TR 3.2. The hot small nozzle sits well below the rest.
- **Figs. 3–5 (p. 44–46):** NGTE and Tanna spectra against the current data at 90°, with high-frequency excesses up to about 5 dB.
- **Fig. 6 (p. 48):** the nozzle-size collapse at 90° (cold) and at 145° (heated).
- **Fig. 7 (p. 49):** OAPWL per unit area agrees within 0.5 dB across the nozzles.
- **Fig. 8 (p. 50):** cold 90° spectra at M 0.3–1.0 against the FSS. M 0.3 is pure rig noise.
- **Figs. 9–10, 14 (p. 51–52, 57):** the "extra hump" with the 1.5 in nozzle when heated.
- **Fig. 11 (p. 53):** the Tester–Morfey quadrupole and dipole master spectra against the FSS.
- **Figs. 12, 13, 15 (p. 54–56, 58):** no hump with the 2.45 and 3.46 in nozzles.
- **Fig. 16 (p. 59):** the key figure. (a) M 0.7, TR 3.2 at Re 2.04, 3.33 and 4.71 × 10⁵. (b) Normalised spectra, one family per nozzle.
- **Fig. 17 (p. 60):** the small nozzle is louder per unit area at TR 3.2 until the jet is supersonic.
- **Figs. 18–19 (p. 60–61):** cold M 0.4–1.0 spectra fit the LSS at 155° and 160°, with the peak fixed at band 29.
- **Fig. 20 (p. 63):** M 0.7 at 155°: heating makes the peak sharper than the LSS and moves it up once V_j/a > 1.
- **Figs. 21–22 (p. 64–65):** TR 3.2 at 155°: peak broadening and low-frequency excess, in 1/3-octave and narrowband.
- **Figs. 23–25 (p. 66–67):** OAPWL against log(V_j/a); exponents 8.74 → 7.98; the residual from 80 log is flat.
- **Figs. 26–27 (p. 68–69):** power spectra at TR 3.2 collapse with V⁸.
- **Figs. 28–29 (p. 71–72):** low-velocity hot points give a "V⁵·⁹" law from contaminated spectra, up to 20 dB high at low frequency.
- **Fig. 30 (p. 73):** OAPWL against V_j/a on linear axes; the cold and hot fits cross near 0.8.
- **Fig. 31 (p. 75):** OAPWL against temperature at six fixed velocities.
- **Figs. 32–33 (p. 76):** OASPL at 90° and 160° against V_j/a, with exponents falling with TR.
- **Figs. 34–36 (p. 78–80):** spectra at fixed V_j/a of 1.2, 0.73 and 0.62 for three TRs.

## Notation
- M: nozzle exit (throat) Mach number of the convergent nozzle; NPR = p_t/p_a; TR = T_t/T_a (plenum stagnation over ambient temperature); γ: ratio of specific heats; R: gas constant; A: throat area.
- V_j: ideal (fully expanded) jet velocity; a: ambient speed of sound; V_j/a: acoustic Mach number; U_c (V in the text): convection speed of large structures.
- ṁ, F: ideal mass flow and thrust; C_d: discharge coefficient (actual over ideal mass flow).
- Re: Reynolds number with ν at plenum stagnation conditions (V_jD/ν_t by my check).
- SPL, OASPL: 1/3-octave and overall sound pressure level; PWL, OAPWL: sound power spectrum and overall sound power (dB re 10⁻¹² W); "− 10 log A": per unit nozzle area.
- St: Strouhal number (not defined in the text; see the checks); band #: 10 log₁₀ f.
- FSS / LSS: fine- and large-scale similarity spectra of Tam et al. (1996), the G and F of that note.
- Angles: polar angle from the jet **inlet** axis, so 90° is sideline and 155–160° are 25–20° from the downstream jet axis.

## Relevance to this project
This is the reference subsonic hot-jet data set behind the two-source picture. It is the subsonic counterpart of [Tam et al. 1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md), and [Tam et al. 2008](tam-2008-sources-of-jet-noise-experimental-evidence.md) reuse its data (Table 1 there). It belongs on [jet-noise-mechanisms](../Topics/jet-noise-mechanisms.md) and, for its data-quality rules, on [diagnostics-and-facilities](../Topics/diagnostics-and-facilities.md). For CLAUDE.md it bears on three things: the lab's acoustic measurements, heated-jet scaling for rocket-noise modelling, and the Reynolds number of LES.

**How it sits with the other notes**
- **Extends Tam et al. 1996.** G fits subsonic heated jets at 90° (M 0.4–1.0, TR to 3.2), and F fits cold jets down to M 0.4 at 155–160° (p. 49–58). The cold velocity exponents agree with the 1996 formulas within about 0.25. The hot ones fall faster (5.53 against 6.64 at 90°, TR 3.2; 7.67 against 8.48 at 160°; Data tables, my arithmetic).
  - At V_j/a 1.2, TR 1.71 → 3.05 lowers OAPWL by 2.3 dB (Fig. 31f). Tam's 1996 terms (that note's eqs. 7 and 9) give about 4.4 dB at 90° and 6.8 dB at 160° for the same change (my arithmetic, for peak amplitude). The author's "lower than the formula" (p. 75) is therefore a factor of about two.
- **Peak scaling at aft angles.** The aft peak is fixed in raw frequency for V_j/a < 1 (p. 58, 62), i.e. it scales on fD/a_∞, as in Tam 1996's plateau of f_LD_j/a_∞ ≈ 0.19 as V_j/a_∞ → 1.
  - This is in tension with Tam et al. 2008, where the large-structure peak at 150° collapses on fD_j/u_j ≈ 0.15–0.17 "insensitive" to Mach (0.6 and 1.0) and temperature (that note, p. 262–263). Here fD/V_j at the fixed band 29 would vary from 0.37 to 0.16 between M 0.4 and 1.0 (my arithmetic).
  - The angles differ (150° against 155–160°) and the 2008 note already flags the scaling tension, so this sharpens rather than settles it.
  - My reading of band 29 gives fD/a_∞ ≈ 0.14, below the 1996 0.19. That is an approximate figure reading from 1/3-octave bands.
- **Power-law tension with Tam et al. 2008.** For T_r/T_a = 2.7 the 2008 note reads n ≈ 7.2–7.65 near 90–110° inlet (Fig. 9b there), well above the 5.53 here at TR 3.2. Interpolating this paper's 7.83 → 5.53 gives about 6.0 at TR 2.7 (my arithmetic). The fits use different velocity ranges (here V_j/a 0.88–1.64 at TR 3.2), so this is a check, not a contradiction.
- **Anticipates the wavepacket view.** The proposed aft-angle mechanism is wavenumber broadening by the rapid decay of instability waves at the end of the potential core (p. 61–62). It is the qualitative form of the subsonic wavepacket models: superdirective radiation from amplitude-modulated (jittering) wavepackets ([Cavalieri et al. 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md), p. 10–16), and loud events at wavepacket breakdown near the end of the core ([Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md), p. 180–181). Both rest on [Tam & Burton 1984](tam-1984-sound-instability-waves-supersonic-axisymmetric-jets.md).
  - This paper's peak at fixed raw frequency fits a wavepacket picture in which a compact, end-of-core source radiates at a Helmholtz number set by the jet diameter (my reading, not the author's).
- **Heating broadens the peak sector and the peak** (p. 62–63, conclusion 7). This agrees with [Tam 1995](tam-1995-supersonic-jet-noise.md) (p. 20). Heating destabilises the KH wave ([Michalke 1984](michalke-1984-survey-jet-instability-theory.md), p. 177–178), but this paper offers no stability analysis to test it.
- **Re threshold used by LES.** The 4 × 10⁵ value is cited as an Re-independence argument for jet LES ([Brès & Lele 2019](bres-2019-modelling-jet-noise-les-perspective.md), p. 2–3). [Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md) (p. 175) record it as disputed. The rocket subscale rule of [Tsutsumi et al. 2015](tsutsumi-2015-epsilon-liftoff-acoustics.md) uses Re > 10⁵ (exit-based), four times lower. My check above suggests the effect is tied to nozzle size and exit state, not Re alone, which fits the later boundary-layer and contraction-ratio results.

**For the lab's acoustic measurements**
- **Rig-noise checks before amplitude claims.** The group's rigs are not anechoic and use contraction ratios of 81 to above 100 ([diagnostics-and-facilities](../Topics/diagnostics-and-facilities.md)). This paper's evidence is that a high contraction ratio does not guarantee clean spectra (p. 46–47). Its checks transfer directly:
  - plot spectra against raw frequency;
  - scale by 80 log(V_j/a) + 10 log A and compare nozzle sizes or velocities;
  - compare shapes with F/G;
  - never validate with OASPL.

  They complement Mayer's coherence and N(f) > 7 checks ([Mayer et al. 2019](mayer-2019-bristol-aeroacoustic-wind-tunnel.md), p. 10). Hot jets genuinely have exponents as low as 5.5 at 90° (Fig. 32), so N(f) > 7 is a cold-jet criterion and would wrongly flag clean hot-jet data (my inference).
- **Reynolds number of the group's jets.** A cold 15 mm nozzle at A1/A2 conditions (NPR ≈ 2.1) is at Re ≈ 7 × 10⁵ on this paper's stagnation definition, or about 5 × 10⁵ on exit conditions (my estimate). That is above 4 × 10⁵. Small or heated nozzles would fall below.
- **Screech rigs.** Tonal work is less exposed: the hump changes broadband shape near the peak by a few dB, and the OAPWL by under 1 dB (Fig. 17). But the exit-layer dependence flagged above is the same lever that moves the A1 cut-off in models (see [simulation-methods](../Topics/simulation-methods.md)).

**For rocket-noise modelling**
- **Heated-jet scaling.** The sound-power exponent falls with temperature (8.74 → 7.98 subsonic, Fig. 24). At 90°, heating takes it from 7.83 to 5.53. This is the subsonic start of the trend that ends in the constant-efficiency U³ law of rockets ([Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md), p. 372; my link).
- **Lab heated data need Re control.** Subscale hot-jet or motor tests used to calibrate efficiency or spectra must keep Re high. At fixed M, heating cuts Re about fourfold from TR 1 to 3.2 (my check).
- **Hot aft spectra depart from F** (sharper at V_j/a < 1, broader with low-frequency excess above, p. 62–63). This is the lab-scale beginning of the poor F fits at rocket scale ([Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 10), where modified slopes are used ([Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md), p. 377).
- **Density effect.** Heating at fixed V_j reverses sign near V_j/a ≈ 0.75 (Fig. 31). For rocket exhausts (U_e/c₀ ≈ 7), only the high-velocity branch (quieter when hotter at fixed V_j) is relevant.

**Modelling and LES**
- The data set was built as a validation base for prediction methods (p. 39). Its key constraints are:
  - spectral shape universal with heating above the critical Re;
  - aft peak frequency fixed for V_j/a < 1;
  - exponents falling with TR;
  - the density-effect crossover.
- Tam & Ganesan's (2003) mean-flow route (a density-fluctuation term in k–ε, with the acoustic model unchanged) is the modelling alternative to extra source terms (p. 56–57, 73).
- **PyFR staging LES.** The run uses Re_D = 10⁵ with a laminar exit layer ([simulation-methods](../Topics/simulation-methods.md)). That is a quarter of this paper's threshold, and lower still against its stagnation-based definition. The run is cold, so the heating-driven loss of Re does not apply.
  - The effect documented here is on broadband spectral shape near the peak, not on tone frequency.
  - If the hump is really an exit-state effect (my check), the relevant control is the exit boundary layer. That is the same open "reduced Re for staging" question already on the topic page.

**Methods and data for the lab workflow (CLAUDE.md)**
- All the analysis is step 1 (basic statistics): stationary, block-averaged spectra and overall levels from time-resolved far-field microphones. There are no modal or time-frequency methods. None of it applies to non-time-resolved PIV.
- The open aft-angle mechanism is a natural target for time-resolved data.
  - SPOD of TR schlieren at low St would isolate the end-of-core wavepacket.
  - Reconstruction from the leading modes, followed by Hilbert POD, would give its instantaneous envelope, and so test directly whether "rapid decay" (envelope modulation) is what radiates.
  - Conditioning far-field pressure on HPOD envelope events, in the way Panda & Seasholtz correlated density with sound, would add the causal link.
  - These are suggestions, not results of the paper.
- To separate Re from exit-state effects with group data: compare SPOD spectra and mean-flow growth near the lip between nozzles of different D at matched Re, or the same D with tripped and untripped exit layers.

**Related works cited, candidates for `/add-paper`:**
- Viswanathan 2002 (AIAA J. 40, 1735–1744, two similarity components) and 2003 (AIAA J. 41, 1674–1689, jet aeroacoustic testing: the rig-noise and facility details);
- Tanna, Dean & Fisher 1975 (JSV 39) and Tanna 1977 (JSV 50); Hoch et al. 1973 (JSV 28); Ahuja 1973 (JSV 29); Lush 1971 (JFM 46); Bushell 1971 (JSV 17); Fisher, Lush & Harper Bourne 1973 (JSV 28);
- Tester & Morfey 1976 (JSV 46) and Morfey, Szewczyk & Tester 1978 (JSV 61), the dipole master spectra;
- Lilley 1996 (JSV 190); Goldstein 2002 (Int. J. Aeroacoust. 1); Morris & Farassat 2002 (AIAA J. 40); Tam & Auriault 1999 (AIAA J. 37); Tam & Ganesan 2003 (AIAA 2003-1064);
- Panda & Seasholtz 2002 (JFM 450), the density–sound correlations behind the aft-angle mechanism;
- Seiner et al. 1992 (DGLR/AIAA 92-02-046); Tam 1991 (NASA RP-1258); Shields & Bass 1977 (NASA CR 2760);
- Tam & Burton 1984 Part 1 (two-dimensional mixing layers). Part 2 is indexed as [Tam & Burton 1984](tam-1984-sound-instability-waves-supersonic-axisymmetric-jets.md).
