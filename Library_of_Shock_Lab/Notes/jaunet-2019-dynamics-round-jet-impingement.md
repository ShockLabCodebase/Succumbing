---
key: "jaunet-2019-dynamics-round-jet-impingement"
title: "Dynamics of round jet impingement"
authors: ["Jaunet, Vincent", "Mancinelli, Matteo", "Jordan, Peter", "Towne, Aaron", "Edgington-Mitchell, Daniel", "Lehnasch, Guillaume", "Girard, Stève"]
year: 2019
type: "conference"
venue: "AIAA 2019-2769 (25th AIAA/CEAS Aeroacoustics Conf.)"
bib: {"booktitle": "25th AIAA/CEAS Aeroacoustics Conference", "publisher": "American Institute of Aeronautics and Astronautics", "note": "AIAA paper 2019-2769"}
doi: "10.2514/6.2019-2769"
arxiv: ""
pdf: "impinging-jets-and-edge-tones/Jaunet-EtAl_2019_Dynamics-Of-Round-Jet-Impingement.pdf"
version: "conference"
unverified: ["AIAA paper number 2019-2769 and DOI not printed in the PDF (its footer reads 'Paper AIAA-2029', apparently a template placeholder); both taken from a Crossref search (title, authors, conference and year match)", "authors' full given names (Vincent, Matteo, Peter, Aaron, Daniel, Guillaume, Stève) from Crossref; the PDF prints initials only"]
group: true
facility: "Pprime SUCRE anechoic jet facility (PROMETEE platform, Poitiers)"
data: ["microphones-near"]
methods: ["PSD", "vortex-sheet", "resonance-model"]
flow: ["round-jet", "impinging-jet", "subsonic", "supersonic", "underexpanded"]
phenomena: ["impingement-tones", "guided-jet-mode", "KH-wavepackets", "staging", "screech"]
params: {"M_j": "0.7–1.5", "NPR": "≈1.39–3.67 (isentropic from M_j, my calculation)", "h/D": "2–8 (maps at 2, 4, 6, 8)", "Re": "1.37–5.5×10⁵ (ρ_j U_j D/μ)", "D": "10 mm (convergent-straight)", "t/D": "0.03 (lip)", "TR": "1 (T0 = 293 K, room temperature)", "St": "0–0.8 mapped (f D/U_j)", "mic": "one, exit plane, r/D = 1; 200 kHz, 30 s"}
topics: ["impinging-jets-and-edge-tones", "linear-models"]
related: ["tam-1990-theoretical-model-discrete-tone-impinging-jets", "bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "jordan-2018-jet-flap-interaction-tones", "mancinelli-2019-screech-prediction-upstream-modes", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "tam-1989-three-families-instability-waves-high-speed-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "weightman-2019-sound-production-impinging-supersonic-jets", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "nogueira-2024-guided-jet-waves", "stavropoulos-2026-jet-edge-interaction", "henderson-1993-tones-choked-jet-impinging-flat-plates", "henderson-2002-flow-structure-supersonic-impinging-jets", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "mancinelli-2021-complex-valued-resonance-model-screech"]
cites: ["bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "henderson-1993-tones-choked-jet-impinging-flat-plates", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "jordan-2018-jet-flap-interaction-tones", "mancinelli-2019-screech-prediction-upstream-modes", "raman-1998-supersonic-jet-screech-review", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "weightman-2017-phase-lag-supersonic-jet-impingement", "weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet"]
summary: "Pprime mic maps, M_j 0.7–1.5, H/D 2–8: impinging tones die at the (0,1) guided-mode limit S(0,1); KH + guided-mode vortex-sheet phase model beats Powell's"
---
# Dynamics of round jet impingement

- **Authors:** V. Jaunet, M. Mancinelli, P. Jordan, A. Towne, D. Edgington-Mitchell, G. Lehnasch, S. Girard. Jaunet, Jordan, Lehnasch and Girard are at Institut Pprime (CNRS, Université de Poitiers, ENSMA); Mancinelli at Pprime and CNES (Direction des Lanceurs); Towne at the University of Michigan; Edgington-Mitchell at Monash (p. 1). It counts as group work through Edgington-Mitchell, but the experiment is at Pprime, not a Shock Lab group facility. It cites two of the user's papers: Weightman et al. 2017 (phase lag, JFM 815) and 2019 (nozzle external geometry, JFM 862) (p. 5, 10–11).
- **Source:** 25th AIAA/CEAS Aeroacoustics Conference, 2019, "Copyright © 2019 by The Authors" (p. 1). The PDF footer reads "Paper AIAA-2029", which looks like a template placeholder. Crossref gives AIAA 2019-2769, doi:10.2514/6.2019-2769 (not printed, see `unverified`). PDF built 27 Apr 2019 (pdfinfo).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/impinging-jets-and-edge-tones/Jaunet-EtAl_2019_Dynamics-Of-Round-Jet-Impingement.pdf` (11 pp., conference paper; index key `impinging-jets-and-edge-tones/Jaunet-EtAl_2019_Dynamics-Of-Round-Jet-Impingement.pdf`). Text came from pdftotext. Equations 1–5 and Figs 2–6 were checked against pages rendered at 220–400 dpi.
- **Tags:** impingement tones, guided jet mode, upstream neutral acoustic mode of the jet (Tam & Hu 1989), k_p⁻, S(0,1) existence limit, tone extinction, vortex sheet, dispersive KH wave, phase-only resonance criterion, φ = 0 / π end conditions, Powell (1988) model, frequency–Mach maps, staging, zones of silence, A1/A2/B screech with a plate, SUCRE.

## Summary
A cold, thin-lipped 10 mm convergent jet impinges on a large flat plate at H/D = 2–8, swept over M_j = 0.7–1.5. One microphone in the nozzle-exit plane gives frequency–Mach PSD maps (p. 2–4). At H/D = 2 the tones are disorganised and stage near M_j 1.05. From H/D = 4 they fall into ordered families, and each tone dies out above a certain M_j along a curve in the (M_j, St) plane, as the jet–edge tones of Jordan et al. (2018) did (p. 2–3). The authors compare two phase-only resonance models, Δk_r = (2nπ + φ)/L with φ = 0 or π (p. 3). In the first, the KH wave is closed by free-stream sound (Powell 1988). In the second, it is closed by the upstream neutral m = 0, lowest-radial-order acoustic jet mode of a vortex-sheet model (Tam & Ahuja 1990) (p. 5–7). The free-stream model can be tuned to any single peak but never fits all of them, and it predicts tones where none exist (p. 7). The upper existence limit S(0,1) of the guided mode matches the extinction curve "almost perfect[ly]". With the vortex-sheet KH dispersion relation, the guided-mode model follows the trends across M_j and H/D, though no line falls exactly on a peak (p. 7). The authors conclude that guided jet modes close the loop of underexpanded as well as ideally expanded impinging jets (Bogey & Gojon 2017). The unknown reflection coefficients remain the obstacle to prediction (p. 10).

## Key findings
- **Tone maps** (Fig. 2, p. 2–4; levels in dB/St on a 120–160 colour scale):
  - *H/D = 2*: the dominant peaks have St > 0.5 and fall with M_j. Staging near M_j ≈ 1.05 switches the dominant mode suddenly to a lower St (p. 2–3). Read from Fig. 2(a): St ≈ 0.62 at M_j 0.91, falling to ≈ 0.57 at 1.02, then a peak at ≈ 0.52 at M_j 1.06. A second line runs from ≈ 0.70 at M_j 1.07 to ≈ 0.64 at 1.25.
  - *Quiet bands at H/D = 2*: bands of lower level occur at M_j ≈ 1.28 and 1.35, as in the subsonic jet–edge maps. The authors link them to the zones of silence of Henderson et al. (2005) (p. 3). The bands span M_j ≈ 1.23–1.30 and 1.34–1.39, with an isolated strong peak at St ≈ 0.33, M_j ≈ 1.32 between them (read from figure). Other isolated peaks "do not show a clear organization" (p. 3).
  - *H/D ≥ 4*: some peaks persist over wider M_j ranges, and a hierarchy of modes in St emerges. It grows clearer with H/D (p. 3).
  - *Extinction*: a peak near St 0.3 at M_j 1.0 (H/D 6 or 8) stops above a certain M_j. The extinction points of all peaks form curves in the (M_j, St) plane, which first suggests guided jet modes (p. 3). At H/D = 4 the strongest low tone runs from St ≈ 0.38 at M_j 0.71 to ≈ 0.31 at M_j 1.0 and ends near M_j ≈ 1.1, where it meets the S(0,1) line of Fig. 6 (read from figures).
  - *Screech appears with the plate far away* (Fig. 2d, H/D = 8, p. 3): the A1 and A2 signatures appear for 1.0 < M_j < 1.15 and B for M_j > 1.15. A close plate prevents the shock-cell pattern that screech needs, as Henderson & Powell (1993) found. The A1/A2 signature looks like a vertical streak at M_j ≈ 1.10 with isolated spots at St ≈ 0.6–0.75 for M_j 1.08–1.2 (read from figure). A strong line from St ≈ 0.45 at M_j 1.19 to ≈ 0.35 at 1.30 and ≈ 0.27 at 1.5 (read from figure) is probably the B-mode screech. That is my identification; the paper labels no line. It lies above S(0,1), so the m = 0 guided-mode model cannot produce it.
- **Two waves, real wavenumbers only** (p. 3): every model pairs a downstream wave (+) with an upstream wave (−). Only real wavenumbers are used, so the KH wave is treated as neutral; following Jordan et al. (2018), this "should not greatly affect" the predicted frequencies.
- **End conditions bracket the phase** (p. 3): the reflection coefficients are unknown, so φ = 0 (nozzle and plate both rigid) and φ = π (one rigid, one soft) are taken as the extremes. Powell's phase-lag parameter p (usually −0.5 to 0, Weightman et al. 2017) is the same end condition in another guise (p. 5).
- **KH wave models** (Fig. 3, p. 5): non-dispersive with phase speed 0.5 or 0.8 times the jet velocity, or the vortex-sheet KH branch. The 0.5 value matches measured convection speeds (Krothapalli et al. 1999; Weightman et al. 2017), and 0.8 is close to the vortex-sheet value. The text writes "0.5M_j or 0.8M_j", but the slopes in Figs 3–4 correspond to U_c/U_j = 0.5 and 0.8 (my check: St = k_rD·(U_c/U_j)/2π gives 0.40 and 0.64 at k_rD = 5, as plotted). My reading of Fig. 3: the vortex-sheet KH phase speed is ≈ 0.97U_j at k_rD = 1 and ≈ 0.88U_j (M_j 1.2) to ≈ 1.0U_j (M_j 0.6) at k_rD = 5. That is faster than 0.8 and well above measured impinging-jet convection speeds.
- **Guided-mode band** (§IV.D, Fig. 4, p. 6–7):
  - Only the lowest azimuthal (m = 0) and lowest radial order waves are kept (p. 6).
  - *Supersonic M_j*: the branch has a maximum Strouhal number S(0,1), above which the jet supports no neutral wave. To its left the waves have positive group velocity and are discarded (p. 6). Read from Fig. 4: S(0,1) ≈ 0.255 at k_rD ≈ −2.3 for M_j 1.2.
  - *0.82 < M_j < 1.0*: S(0,1) is only a local maximum (Towne et al. 2017). The higher-St upstream neutral waves behave like duct modes with little support outside the jet, so they are disqualified (Jordan et al. 2018) (p. 6). Read from Fig. 4: local maximum ≈ 0.425 at M_j 0.9.
  - *M_j < 0.82*: k_p⁻ waves exist at all St, with no maximum, and are dispersive. Their high-St part is again discarded as duct-like (p. 6–7).
  - Over a wide range the guided mode's dispersion relation is close to the free-stream sound's, so the two models agree there: both give the same first resonance in Fig. 4 (St ≈ 0.14). They diverge near or above S(0,1) (p. 7).
- **Free-stream closure (Powell) fails as a predictor** (Fig. 5, p. 7–8): the first six n are plotted.
  - It predicts some dominant peaks at every H/D but never all at once.
  - Changing φ only shifts the lines rigidly, and a faster KH wave shifts them to higher St. Since some combination of phase lag and KH speed matches any given frequency, any one peak can be "predicted". No fixed parameter set fits all the dominant peaks.
  - It predicts tones where none occur, or after a tone has died out.
  - For M_j < 0.8 it follows the peak trends "particularly well".
- **Guided-mode closure** (Fig. 6, p. 7, 9):
  - *Extinction*: the black lines mark the upper existence limits of the (m, n) = (0,1), (1,1), (0,2) and (1,2) modes. There is "almost a perfect match" between tone extinction and S(0,1), which the authors call strong evidence, as for screech (Edgington-Mitchell et al. 2018; Mancinelli et al. 2019).
  - *KH speed 0.5U_j* (left column): the predicted lines do not follow the data. Some measured peaks cross several prediction lines (Fig. 6a), so this model is rejected (p. 7).
  - *Vortex-sheet KH* (right column): accuracy improves at every H/D. No prediction "perfectly collapse[s]" onto a peak, but the trends are followed across M_j and H/D. Given a phase-only criterion and unknown reflection coefficients, this is read as "a clear indication" that the KH wave and an intrinsic jet mode are involved (p. 7).
  - The improvement comes from the dispersion of both the KH wave and the guided wave, which moves the frequencies where the criterion is met (p. 10).
- **Limits acknowledged** (p. 10): the model ignores the internal shock structure (Henderson et al. 2005) and the external nozzle geometry (Weightman et al. 2019). The phase lag remains a free parameter that "technically allows to tune the model" to any observation, and knowing the plate and nozzle reflection coefficients is the next step.
- **My checks of the model** (see Data tables for numbers):
  - *The model jet is isothermal; the experiment's is cold.* I solved the m = 0 vortex-sheet dispersion relation (Key equations). With T_j = T_∞ it reproduces the traced S(0,1) line of Fig. 6 to within 0.003 at M_j 0.9–1.5 (e.g. 0.257 at M_j 1.2, 0.198–0.199 at 1.4), and the Fig. 4 maxima within reading error. With the experiment's T₀ = T_∞ the jet is cold (T_j/T_∞ = 0.69–0.83 for M_j 1.0–1.5), which puts S(0,1) 4–12% higher (0.366 at M_j 1.0 and 0.199 at M_j 1.5; the latter equals the cold A1 limit in the [bogey-2017](bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets.md) note). The free-stream sound in Fig. 4 also uses U_j/a∞ = M_j (slope k_aD = −2π St M_j), which is exact only for an isothermal jet. The paper does not state the temperature ratio of its model. So the "almost perfect" extinction match was obtained with an isothermal band, and whether the tones also die at the cold band edge has to be checked on the maps.
  - *The phase criterion is weakly selective at large H.* For H/D = 8 near M_j 1.0, St 0.3, consecutive n are about ΔSt ≈ 0.06 apart, and adding φ = π halves that to ≈ 0.03 (my estimate from dΔk/dSt ≈ 2π(U_j/c⁺ + U_j/|c⁻|) ≈ 13). Any tone is then within about ±0.015 of some line, so the evidence lies in the slopes and the extinction limit, not in hitting individual peaks.

## Setup / method
- **Facility** (p. 2): SUCRE (SUpersoniC REsonance) anechoic wind tunnel, PROMETEE platform, Pprime, Poitiers. This is the facility of [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md), which also used a D = 10 mm convergent nozzle and T₀ = 295 K; the paper does not say whether the nozzle is the same. The chamber size is not given here.
- **Conditions** (p. 2):

  | Quantity | Value |
  |---|---|
  | Nozzle | convergent-straight, D = 0.01 m, lip thickness 0.03D (0.3 mm) |
  | Contraction | stagnation-chamber to nozzle diameter ratio ≈ 6 ("for space saving"), said with Re to ensure turbulent mixing layers; exit boundary layer not measured |
  | Plate | flat, "large dimensions compared to the nozzle diameter" (size not stated), normal to the jet |
  | H/D | 2–8 with an automated traverse; step not stated; maps shown at 2, 4, 6, 8 |
  | M_j | 0.7–1.5, stabilised by computer control of NPR; step not stated |
  | NPR | ≈ 1.39–3.67 (isentropic from M_j, my calculation; not given) |
  | Supply | desiccated air at 200 bar, expanded to the stagnation pressure |
  | T₀ | 293 K (room temperature), held by an electric heater with PID control to avoid condensation and freezing |
  | Re = ρ_jU_jD/μ | 1.37–5.5 × 10⁵ |
  | Microphone | one, in the nozzle-exit plane at r/D = 1 (type not stated) |
  | Sampling | 200 kHz; 6 × 10⁶ samples (30 s) per (M_j, H) |
  | Max resolved St | quoted as 2.34–8 (St = fD/U_j) |

  > Checks (mine): the Nyquist limit of 100 kHz gives St_max = 2.34 at M_j 1.5 (U_j ≈ 428 m/s), but ≈ 4.4 at M_j 0.7 (U_j ≈ 229 m/s), not 8. Re from isentropic exit conditions is ≈ 5.6 × 10⁵ at M_j 1.5, matching the paper, but ≈ 1.8 × 10⁵ at M_j 0.7, against 1.37 × 10⁵. Both lower-end values should be checked.
- **Spectra** (Fig. 2): PSD in dB/St from the single microphone, plotted against St and M_j. The Welch block size, window, overlap and reference pressure are not stated. Thirty seconds is said to be "orders of magnitude" longer than the longest convective time, which ensures convergence (p. 2). The analysis needs time-resolved point data only; it has no spatial or azimuthal resolution, so the azimuthal order of each tone is inferred, not measured (Mancinelli 2019 used a six-microphone ring in the same facility).
- **Resonance models** (§IV, p. 3–7):
  - *Criterion:* eq. 3, phase only, real wavenumbers, φ ∈ {0, π}, first six n (p. 3, 7). The resonance length is L in eq. 3 and H in eq. 5, so presumably L = H for the comparisons (not stated explicitly).
  - *Downstream wave:* non-dispersive KH at U_c/U_j = 0.5 or 0.8, or the vortex-sheet KH branch (Fig. 3, p. 5).
  - *Upstream wave, model 1:* free-stream sound (Powell 1988), eqs. 4–5 (p. 5).
  - *Upstream wave, model 2:* the upstream neutral acoustic jet mode k_p⁻ (Tam & Hu 1989; Tam & Ahuja 1990) of a cylindrical vortex sheet, m = 0, lowest radial order, on the negative-group-velocity part of the branch (right of S(0,1)); duct-like high-St waves are excluded (p. 6–7).
  - The vortex-sheet dispersion relation, the jet temperature ratio and the solver are not given. The flow is a parallel vortex sheet: no shear-layer thickness, no shock cells, no plate or nozzle geometry, and no amplitude or growth-rate information.
  - No LES, PIV, schlieren or stability analysis beyond the vortex sheet.

## Key equations
Checked against rendered pages 2, 3 and 5.

- **Fully expanded Mach number** (eq. 1, p. 2): $\dfrac{P_a}{P_0}=\left(1+\dfrac{\gamma-1}{2}M_j^2\right)^{-\gamma/(\gamma-1)}$.
- **Fully expanded velocity** (eq. 2, p. 2): $U_j=\sqrt{\gamma r T_0}\,\dfrac{M_j}{\sqrt{1+\frac{\gamma-1}{2}M_j^2}}$, with r the gas constant.
- **Resonance criterion** (eq. 3, p. 3): $\Delta k_r=k_r^{+}-k_r^{-}=\dfrac{2n\pi+\phi}{L}$, with n an integer and φ = 0 (rigid–rigid) or π (rigid–soft).
- **Powell's model** (eq. 4, p. 5): $\dfrac{N+p}{St}=\dfrac{M_j}{D}\left(\dfrac{h_c}{M_c}+h_a\right)$, with M_c = U_c/a, h_c and h_a the path lengths of the KH and acoustic waves, N the number of disturbances between lip and plate, and p the phase lag.
- **Powell as a wavenumber condition** (eq. 5, p. 5), with h_c ≃ h_a = H: $k_c^{+}-k_a^{-}=\dfrac{2\pi(N+p)}{H}$.
  - Check (mine): eq. 5 follows from eq. 4 with k_c⁺ = ω/U_c and k_a⁻ = −ω/a only if M_j = U_j/a, i.e. an isothermal jet. Then p = φ/2π, so φ = π corresponds to p = ±0.5.
  - The slopes in Figs 3–4 confirm k_rD = 2π St (U_j/U_c) for the KH wave and k_rD = −2π St M_j for free-stream sound (Fig. 4: the M_j 1.2 sound line reaches St 0.6 at k_rD ≈ −4.5), so wavenumbers are scaled by D.
- **Vortex-sheet relation used for my checks** (not printed in the paper; standard cylindrical vortex sheet, m = 0, D = 1, U_j = 1, inside wave propagating and outside evanescent for upstream neutral waves):
  $$-\beta\,\frac{J_1(\beta R)}{J_0(\beta R)}\,\frac{1}{(\rho_j/\rho_\infty)(\omega-k)^2}+\gamma_o\,\frac{K_1(\gamma_o R)}{K_0(\gamma_o R)}\,\frac{1}{\omega^2}=0,\qquad \beta^2=\frac{(\omega-k)^2}{a_j^2}-k^2,\quad \gamma_o^2=k^2-\frac{\omega^2}{a_\infty^2},$$
  with R = 1/2, a_j = 1/M_j, and a_∞/a_j = (T_∞/T_j)^{1/2} = ρ_j/ρ_∞ raised to ½ (1 when isothermal; (1 + 0.2M_j²)^{1/2} for T₀ = T_∞). S(0,1) is the maximum ω/2π of the lowest root over k < 0.

## Data tables
**Upper existence limit S(0,1) of the m = 0 guided mode, St = fD/U_j**

| M_j | Fig. 4 (read) | Fig. 6 lowest black line (traced) | My vortex sheet, isothermal (k_rD) | My vortex sheet, cold T₀ = T_∞ (k_rD) |
|---|---|---|---|---|
| 0.9 | ≈ 0.425 (local max) | ≈ 0.427 | 0.426 (−3.45) | 0.436 (−3.23) |
| 1.0 | — | ≈ 0.352 | 0.352 (−2.90) | 0.366 (−2.73) |
| 1.1 | — | ≈ 0.300 | 0.298 (−2.58) | 0.314 (−2.42) |
| 1.2 | ≈ 0.255 (k_rD ≈ −2.3) | ≈ 0.256–0.262 | 0.257 (−2.35) | 0.275 (−2.20) |
| 1.3 | — | ≈ 0.225 | 0.225 (−2.17) | 0.244 (−2.03) |
| 1.4 | — | ≈ 0.198 | 0.199 (−2.03) | 0.220 (−1.89) |
| 1.5 | — | ≈ 0.181 (at M_j 1.48) | 0.178 (−1.92); 0.188 at M_j 1.45 | 0.199 (−1.77); 0.209 at M_j 1.45 |

> Fig. 4 values are read by eye (±0.01). Fig. 6 values come from tracing the black pixels of the lowest dash-dot line in a 300 dpi render (±0.005; same in all six panels). The last two columns are my calculation (scratchpad script, not in the repo). It reproduces the cold M_j 1.5 limit of 0.199 found in the Bogey 2017 note, and its isothermal values match the traced line to within 0.003 at every M_j. In Fig. 6 the lowest black line continues below M_j 0.82 (traced: 0.513 at 0.82, 0.546 at 0.80, 0.606 at 0.75, 0.669 at 0.72), although the text says the branch has no maximum there (p. 6). That segment may be a different limit, such as the duct-like trapping or cut-on line of Jordan 2018, which is ≈ 0.53 at M 0.82. Verify against the PDF.

**Example resonance in Fig. 4 (M_j 1.2, KH at 0.8U_j)**

| Arrow | St | k_r⁻D (start) | k_r⁺D (end) | L/D implied (mine) |
|---|---|---|---|---|
| Δk_r = 2π/L | ≈ 0.14 | ≈ −0.98 (guided mode and sound coincide) | ≈ 1.11 | ≈ 3.0 |
| Δk_r = 4π/L | ≈ 0.275 | ≈ −2.06 (sound only; above S(0,1)) | ≈ 2.14 | ≈ 3.0 |
| Δk_r = 6π/L | ≈ 0.41 | ≈ −3.16 (sound) | ≈ 3.16 | ≈ 3.0 |

The paper calls L "arbitrary" (p. 6); all three arrows imply L ≈ 3D.

**Tones read from Fig. 2** (approximate; single microphone; azimuthal mode not measured): see the results file for the CSV rows. H/D 2: St ≈ 0.62 (M_j 0.91), 0.57 (1.02), 0.52 (1.06, after staging), 0.33 (1.32, between the quiet bands). H/D 4: ≈ 0.38 (0.71), 0.31 (1.0). H/D 6 and 8: ≈ 0.3 at M_j 1.0 (text, p. 3). H/D 8: B-like line ≈ 0.35 at M_j 1.30.

## Figures worth remembering
- **Fig. 1 (p. 3):** sketch of the nozzle, plate and coordinates; H is the nozzle–plate distance.
- **Fig. 2 (p. 4):** PSD maps (St 0–0.8 against M_j 0.7–1.5) for H/D = 2, 4, 6, 8. They show the move from scattered tones to ordered families, the staging at M_j 1.05 and the quiet bands at H/D 2, the extinction curves, and screech at H/D 8.
- **Fig. 3 (p. 5):** KH dispersion: non-dispersive U_c = 0.5 and 0.8, and vortex-sheet curves for M_j 0.6, 0.9, 1.2.
- **Fig. 4 (p. 6):** the key construction. It plots the guided-mode branches with their S(0,1) maxima, upstream free-stream sound and the KH line for M_j 0.6, 0.9, 1.2, with Δk_r = 2π/L, 4π/L, 6π/L arrows. It shows where guided-mode and free-stream closure agree (low St) and where they differ (near and above S(0,1)).
- **Fig. 5 (p. 8):** maps at H/D 4, 6, 8 with free-stream (Powell) predictions for U_c = 0.5 and 0.8, φ = 0 and π.
- **Fig. 6 (p. 9):** the same maps with guided-mode predictions (left U_c = 0.5, right vortex-sheet KH), and the limits of the (0,1), (1,1), (0,2), (1,2) modes. Tone extinction along S(0,1) is the paper's main evidence.

## Notation
- D: nozzle diameter (10 mm); H: nozzle–plate distance; L: resonance length in eq. 3 (presumably H); r: radial coordinate, x: streamwise (Fig. 1).
- M_j, U_j: fully expanded Mach number and velocity; St = fD/U_j (nozzle diameter, not D_j); Re = ρ_jU_jD/μ; T₀: stagnation temperature; P₀/P_a: NPR.
- k_r: real part of the wavenumber (plotted as k_rD); superscripts + and −: downstream and upstream waves; k_c⁺: KH; k_a⁻: free-stream sound; k_p⁻: upstream neutral acoustic jet mode (guided jet mode).
- Δk_r: wavenumber difference; φ: end-condition phase; n: integer in eq. 3. The paper also uses n for the radial order in (m, n), where m is the azimuthal order. N, p: Powell's integer and phase lag; M_c = U_c/a: convective Mach number; h_c, h_a: path lengths.
- S(m, n): maximum Strouhal number (upper existence limit) of the (m, n) neutral upstream mode. It is the "S(0,j)" point of [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) and corresponds to the S2-type saddle of [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md) for 0.82 < M_j < 1. Bogey 2017 calls the same band "A1", which clashes with the screech stage names.

## Relevance to this project
This is the Pprime group's extension of the jet–edge guided-mode model ([jordan-2018](jordan-2018-jet-flap-interaction-tones.md)) and the screech model ([mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md)) to impinging jets, with Edgington-Mitchell as co-author. It is the experimental counterpart, for underexpanded jets, of the LES of [bogey-2017](bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets.md). It is a short conference paper: one microphone, maps read by eye, and no quantitative error metric.

**How it fits the guided-mode argument**
- *Agreements.* The upper band limit as a tone cut-off is the impinging-jet version of the k_p⁻ saddle cut-off for jet–edge tones (Jordan 2018, p. 12–14) and of the B(0,2)–S(0,2) band for A1/A2 screech (Mancinelli 2019, p. 6). It supports [tam-1990](tam-1990-theoretical-model-discrete-tone-impinging-jets.md) and Bogey 2017 for M_j 0.7–1.5 including underexpanded jets.
- *Tam & Ahuja comparison* (my comparison). Their least-dispersive (0,1) wave sets a mean tone St of ≈ 0.42 at M_j 0.9 and ≈ 0.32 at 1.0. That lies just below S(0,1) here (≈ 0.43 and ≈ 0.35), as an inflection point right of the maximum must.
- *Which band limit.* Bogey 2017 found tones close to the *lower* limits of the A2 and H1 bands. For the (0,1) branch the lower limit is St = 0, so only the upper limit can be tested; the two results are compatible.
- *In-core sources.* [nogueira-2024](nogueira-2024-guided-jet-waves.md) shows that a guided mode carries only sound generated inside the core. The extinction at S(0,1) therefore implies an in-core source for these low-St m = 0 tones, such as the on-axis vortex–wall sound of [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (p. 14–17).
- *Unexplained tones* (my reading of Figs 2 and 6). At supersonic M_j many strong tones sit above S(0,1): the H/D 4 tones at St ≈ 0.35–0.7, and the B-like line at H/D 6–8. An m = 0, lowest-order model cannot produce them. They could be (1,1) or (0,2) loops, screech, or external closure by shock leakage or the shocklet (Edgington-Mitchell 2025). The paper draws the higher limits but does not discuss these tones, and a single microphone cannot give their azimuthal order.
- *Discarded duct-like waves.* The paper excludes them as having too little support outside the jet (p. 6–7). Later work contradicts this: nonlinear duct-like waves are seen in M 0.86–0.90 impinging jets at z/D 2 (Edgington-Mitchell 2025, p. 8), and k_d⁻ loops close jet–edge tones at M_j 0.82–0.89 ([stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md), p. 15–18). The exclusion may cost tones in the 0.82 < M_j < 1 range.
- *Temperature.* The band edges appear to come from an isothermal vortex sheet, while the jet is cold (see Key findings, my checks). A consistent comparison would raise S(0,1) by 4–12% for M_j 1.0–1.5, which may tighten or loosen the "almost perfect" match.

**Link to the user's thesis** ([weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md))
- The thesis tones at NPR 3.4 (M_j ≈ 1.45), z/D 5 are 0.385 (toroidal, infinite lip) and 0.255 (helical, thin lip) in f D_j/U_j, about 0.36 and 0.24 in fD/U_j. Both lie well above S(0,1) ≈ 0.19–0.21 at M_j 1.45 (my calculation). So they cannot be (0,1) guided-mode loops of the kind modelled here, which is consistent with the thesis's external-closure conclusion (p. 75, 81).
- The toroidal tone does sit near the (0,2) band: the cold A2 band at M_j 1.5 is 0.390–0.491 in the Bogey 2017 note. A (0,2) loop is not excluded.
- The paper's own caveat that nozzle external geometry is ignored (p. 10) cites the thesis lip result. That is exactly the boundary condition this phase-only, parallel model cannot represent.

**Methods and data for the lab workflow**
- *Point microphones (time-resolved).* Fine M_j sweeps at several H/D with long records are a cheap way to find band-limited tone families and extinction curves. They need a cold, finite-thickness band model drawn with the correct temperature ratio. A ring of microphones, as Mancinelli 2019 used in the same facility, would give m, which this paper lacks.
- *Intermittency.* Near an extinction or staging boundary, 30 s PSDs cannot tell switching from coexistence. Wavelets (as in Jordan 2018 and Mancinelli 2019) or the SPOD → reconstruction → Hilbert POD pipeline ([nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md), [raiola-2025](raiola-2025-hilbert-pod.md)) on time-resolved schlieren would give the instantaneous frequency and amplitude of each loop as the band edge is crossed.
- *Telling guided from free-stream closure.* With time-resolved schlieren or LES, SPOD at the tone followed by a k_x sign split, as in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), shows whether the upstream wave sits inside the core with phase speed near −a∞ (guided) or outside. That separates the closure mechanisms directly, where this paper can only infer them from frequencies. With non-time-resolved PIV, a POD-pair phase reconstruction followed by a k_x split does the same at one tone.

**Modelling side and the PyFR staging LES**
- The phase-only vortex-sheet model is the simplest member of the family that runs from here through [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md) (complex ω, fitted |R₁R₂|) to [nogueira-2024](nogueira-2024-guided-jet-waves.md).
- The PyFR LES (`Simulations/PyFR_Staging_Continuation/`) is a free jet at NPR 2.10 and 2.25 (M_j ≈ 1.09, 1.14). There the (0,1) limit is ≈ 0.30–0.31, far below the A1/A2 screech tones (St ≈ 0.6–0.7), which belong to the (0,2) band (Mancinelli 2019). The cold-versus-isothermal shift of the band edges computed here (about 5% at M_j 1.1) is relevant to any staging-limit prediction built on those bands.
- A plate added to the LES at H/D ≥ 6 would reproduce the regime where screech and impingement tones coexist (Fig. 2d).

**Rocket noise.** The guided-mode band depends on M_j and temperature; heating lowers the round-jet band (linear-models topic). For hot, overexpanded rocket plumes on inclined deflectors, where no tones are seen, the band edges have not been computed. Doing so would test whether "no guided mode in the KH band" explains the absence of tones at full scale, which is still an open question on the impinging-jets topic page.

**Items to verify against the PDF**
1. The paper number: the footer prints "AIAA-2029"; Crossref gives 2019-2769.
2. Whether the vortex-sheet model is isothermal (my reproduction of Figs 4 and 6 says yes) or cold, as the experiment is.
3. The lowest black line in Fig. 6 continues below M_j 0.82, although the text says there is no maximum there (p. 6–7).
4. The quoted maximum St "2.34–8" (Nyquist gives ≈ 2.34–4.4) and the lower Re 1.37 × 10⁵ (≈ 1.8 × 10⁵ from isentropic relations at M_j 0.7).
5. L = H in eq. 3 is assumed, not stated; first six n plotted (p. 7).
6. All tone St values and the S(0,1) line positions are read from figures.
7. "0.5M_j or 0.8M_j" (p. 5, captions of Figs 5–6) must mean 0.5U_j and 0.8U_j (Fig. 3 legend: U_c = 0.5, 0.8).

**Candidates for `/add-paper`:** Powell 1988 (JASA 83, sound-producing oscillations of impinging jets); Henderson, Bridges & Wernet 2005 (JFM 542); Gojon, Bogey & Marsden 2016 (JFM 808, planar impinging LES); Krothapalli et al. 1999 (JFM 392); Weightman et al. 2017 (JFM 815, phase lag) and 2019 (JFM 862), both partly covered by the thesis note; Edgington-Mitchell 2019 review (Int. J. Aeroacoust.); Shen & Tam 2002 (AIAA J. 40); Neuwerth 1974; Wagner 1971.
