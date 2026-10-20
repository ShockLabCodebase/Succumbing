---
key: "stavropoulos-2026-jet-edge-interaction"
title: "Jet-edge interaction: linear and non-linear frequency-selection mechanisms"
authors: ["Stavropoulos, M. N.", "Cavalieri, A. V. G.", "Lesshafft, L.", "Jordan, P."]
year: 2026
type: "preprint"
venue: "arXiv:2603.24135"
bib: {"note": "Under consideration for publication in J. Fluid Mech."}
doi: ""
arxiv: "2603.24135"
pdf: "impinging-jets-and-edge-tones/Stavropoulos-EtAl_2026_Jet-Edge-Interaction-Linear-And-Non-Linear-Frequency-Selection-Mechanisms.pdf"
version: "preprint"
unverified: []
group: false
facility: "Pprime Bruit & Vent"
data: ["microphones-far"]
methods: ["PSD", "bispectrum", "vortex-sheet", "resonance-model", "wavelets"]
flow: ["jet-edge", "round-jet", "subsonic"]
phenomena: ["edge-tones", "guided-jet-mode", "mode-switching", "triadic-interaction", "intermittency"]
params: {"M_j": "0.40–1.00", "TR": "1", "L/D": "2", "R/D": "0.50–0.80", "D": "50 mm"}
topics: ["impinging-jets-and-edge-tones"]
related: ["jordan-2018-jet-flap-interaction-tones", "nogueira-2024-guided-jet-waves", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "mancinelli-2019-screech-prediction-upstream-modes", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "schmidt-2020-bispectral-mode-decomposition", "kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions", "weightman-2019-sound-production-impinging-supersonic-jets"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "jordan-2018-jet-flap-interaction-tones", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "nogueira-2024-guided-jet-waves", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets"]
summary: "Subsonic jet grazing a plate edge, M_j 0.4–1: PSD, bicoherence and guided-mode phase model split linear vs non-linear frequency selection; abrupt switch at M_j 0.87; k⁻_p vs k⁻_d loops"
---
# Jet-edge interaction: linear and non-linear frequency-selection mechanisms

- **Authors:** M. N. Stavropoulos (Institut Pprime), A. V. G. Cavalieri (ITA, Brazil), L. Lesshafft (LadHyX, École Polytechnique), P. Jordan (Institut Pprime)
- **Source:** arXiv:2603.24135v1 [physics.flu-dyn], 25 Mar 2026; "under consideration for publication in J. Fluid Mech." (p. 1). Preprint in JFM template; no DOI yet.
- **PDF:** `References/Paper_PDFs/impinging-jets-and-edge-tones/Stavropoulos-EtAl_2026_Jet-Edge-Interaction-Linear-And-Non-Linear-Frequency-Selection-Mechanisms.pdf` (29 pp.; local only, not in Git). The old file name misspelt the first author as "Stravropoulos".
- **Tags:** installed jet, jet-edge interaction, jet-flap tones, subsonic jet, resonance, feedback loop, guided jet modes, k⁻_th / k⁻_d / k⁻_p, saddle points, cylindrical vortex-sheet model, phase criterion, bicoherence, bispectrum, triadic interaction, harmonics, mode switching, hysteresis, wavelet (bump), intermittency, single far-field microphone

## Summary
A round, isothermal, subsonic turbulent jet (D = 50 mm) grazes the sharp edge of a thick rigid plate inclined at 45°, with the edge fixed at L/D = 2 downstream. One far-field microphone is swept over a fine (M_j, R/D) grid: M_j = 0.40–1.00 and R/D = 0.50–0.71 in 0.01 steps, plus R/D = 0.8. Spectra are classified with the PSD, the bicoherence (threshold b > 0.35, set from a purely broadband case) and the Jordan et al. (2018) linear resonance model: KH wave k⁺ to the edge, upstream guided jet mode k⁻ back to the lip, phase condition Δk = (2pπ + φ)/L with wavenumbers from a cylindrical vortex sheet. Four regimes emerge: broadband; linear frequency selection (LFS: several inharmonic tones, zero bicoherence); LFS with weak triads; and non-linear frequency selection (NLFS: one LFS tone saturates into a strong oscillator with harmonics and passive non-harmonic triads). The LFS → NLFS boundary at M_j = 0.87–0.88 is abrupt (two orders of magnitude in tone amplitude within ΔM_j = 0.01) and free of hysteresis. A mode switch at M_j ≈ 0.84 is explained by cut-on at M_j ≈ 0.82 of a second upstream guided wave (k⁻_p), which opens a competing feedback loop that overtakes the k⁻_d loop; a duct-acoustic reflection-coefficient ratio and the wider radial support of k⁻_p are offered to explain why it wins.

## Key findings
- **Four spectral regimes** (p. 8–12, Fig. 5–11):
  - *Broadband* (Fig. 5, p. 8): near M_j = 1, and over all M_j at R/D = 0.8. Bicoherence zero.
  - *LFS* (Fig. 6, p. 8): several tones at non-harmonic frequencies, zero bicoherence, each matched by the linear model. The inharmonic spacing comes from the dispersion of the upstream wave. Example (M_j, R/D) = (0.70, 0.56), three tones, p = 2, 3, 4, φ = 0, closed by k⁻_th.
  - *NLFS* (Fig. 7–8, p. 9–10): a strong fundamental plus harmonics. At (0.87, 0.5) the fundamental at St = 0.44 self-interacts to give 0.88, then 0.44 + 0.88 → 1.32, etc. The fundamental sits on the same model line (k⁻_p, p = 2, φ = 0) as an LFS tone at M_j = 0.88, so the NLFS fundamental is an amplified LFS tone. Its level exceeds LFS tones by more than 15 (units presumably dB; p. 9).
  - At (0.83, 0.5) NLFS shows harmonic and non-harmonic triads (Fig. 8, p. 9–10): fundamental (k⁻_p) + a k⁻_d tone → a tone near St ≈ 0.95; that tone + fundamental → a further sum tone. The non-harmonic triads are orders of magnitude weaker than the oscillator, so the authors call them *passive*.
  - *LFS with weak non-linearity* (Fig. 9–10, p. 10–11): e.g. (0.70, 0.55), three LFS tones, only the strongest (St = 0.66) shows a harmonic at 1.32; (0.78, 0.57), one non-harmonic triad with a very weak sum tone (model uses p = 2, 3, φ = 0.2).
- **Regime map** (Fig. 11–12, p. 11–12):
  - Non-linear dynamics only for R/D ≲ 0.57 and 0.56 ≲ M_j ≲ 0.87. LFS everywhere else below the broadband region, and LFS for M_j < 0.55 at all R/D.
  - The broadband region grows with R/D (onset M_j > 0.99 at R/D = 0.5).
  - Upper boundary (decreasing M_j): direct LFS → NLFS jump. Lower boundary: a gradual band of "LFS with weak triads".
  - The count of non-harmonic triads peaks (up to 11) near M_j = 0.84 and 0.69 at R/D = 0.5 (Fig. 12, 24).
- **Regime transitions** (§4, p. 13–15):
  - Broadband → LFS: (0.89, 0.8) vs (0.89, 0.5). Two LFS tones emerge: lower closed by k⁻_p (p = 2), higher by k⁻_d (p = 9) (Fig. 13).
  - LFS → NLFS between M_j = 0.88 and 0.87 at R/D = 0.5: fundamental grows by two orders of magnitude; bicoherence goes from zero to a harmonic series. The k⁻_d tone of M_j = 0.88 is suppressed. A tone near St ≈ 0.73 is attributed to m = 1 resonance, deferred to future work (Fig. 14, p. 13–14).
  - NLFS → LFS between 0.78 and 0.77 at R/D = 0.56: amplitude drop of one order of magnitude, less abrupt. The NLFS case shows one harmonic and two non-harmonic triads, one involving an m = 1 tone near St ≈ 0.8 (Fig. 15, p. 14–15).
  - All transitions are repeatable and show no hysteresis with increasing or decreasing M_j (p. 14–15, App. B).
- **Competing feedback loops / mode switching, 0.82 ≤ M_j ≤ 0.86** (§4.1, Fig. 16–18, p. 15–18):
  - At M_j = 0.82 the higher-frequency tone (St ≈ 0.52) dominates; by 0.86 the lower one (St ≈ 0.46) dominates and the higher is suppressed, i.e. one NLFS limit cycle is replaced by another over ΔM_j = 0.04.
  - The two tones lie on either side of the S1–S2 saddle-point band (shaded). Below S1 only k⁻_p is propagative; above S2 only k⁻_d (p. 7, 17). Lower tone ↔ k⁻_p loop (p = 2, φ = 0); higher tone ↔ k⁻_d loop (p = 4–6, φ = 0) (Fig. 18).
  - For M_j = 0.80–0.81 only k⁻_th exists and closes the loop; at 0.82 both k⁻_d and k⁻_p exist and k⁻_d fits the fundamental best (Fig. 17).
  - Switch persists for R/D = 0.5–0.65, at slightly lower M_j and lower amplitude; gone beyond R/D = 0.7 (Fig. 19, p. 18).
- **Tone amplitudes** (§5, Fig. 20–21, p. 18–20):
  - Peak levels ≈ 150 dB/St (text says "150 dB") in the NLFS region. Dip at M_j = 0.85, R/D ≤ 0.55, attributed to m = 1 resonance.
  - At R/D = 0.5 the fundamental varies exponentially with M_j by up to three orders of magnitude; the k⁻_p tone rises from ≈122 to ≈148 dB/St and falls again within ≈0.82–0.89, mirroring the decay of the k⁻_d tone (Fig. 21; values read from the figure).
- **Why k⁻_p wins** (App. C, p. 23–25):
  - Duct-acoustic model (nozzle = hard duct, jet = soft duct; Jordan et al. 2018 App. C) gives the reflected/incident amplitude at the nozzle plane. The ratio R* of the k⁻_p to the k⁻_d loop is > 1 for all M_j in 0.82–0.86 and rises steeply above 0.84 (≈ 4.8, 5.5, 5.4, 10.2, 13.8 for M_j = 0.82–0.86; read from Fig. 25).
  - k⁻_p has much wider radial support (|P| non-zero outside r/D = 0.5) than the duct-like k⁻_d (Fig. 26), so it is more receptive at the lip and at the edge.
  - Caveat stated by the authors: KH and k⁻_p are not truly duct modes; a non-parallel model with nozzle and plate geometry is needed (p. 24–25).
- **Repeatability** (App. B, p. 21–23): four acquisitions (one three months earlier; two sweeps up and down without stopping the jet) give the same mode competition and LFS/NLFS boundary. One exception: in run "Third" at M_j = 0.84 the low tone overtook the high tone earlier, 10 dB lower overall. Authors suggest multiple states may coexist and that triggering the switch earlier could reduce noise. Non-harmonic triad counts differ between runs but follow the same trend (Fig. 24).
- **Intermittency** (App. D, p. 25–27, Fig. 27): wavelet spectra show steady tones in NLFS; at (0.84, 0.5) the axisymmetric tone vanishes briefly near t ≈ 22 s while an m = 1 tone appears, then returns. Overall little intermittency compared with an earlier flexible-plate data set (Amaral et al. 2023; Stavropoulos et al. 2024), so plate flexibility may promote intermittency.

## Setup / method
- **Facility:** Bruit & Vent anechoic jet facility, Institut Pprime (p. 2). Not a Shock Lab group facility.

  | Quantity | Value |
  |---|---|
  | Nozzle | Convergent + constant-diameter section, D = 50 mm (same as Cavalieri et al. 2012, 2013; Jordan et al. 2018) |
  | Boundary layer | Tripped 2.7D upstream; turbulent at exit |
  | Thermal | Isothermal (jet–ambient within 0.3 K), so acoustic Mach = M_j |
  | Plate | Rigid, span S = 15D, chord C = 5D, thickness τ = 8 mm, chamfered sharp edge |
  | Edge position | L/D = 2 (streamwise), angle α = 45°, R/D = 0.50–0.71 (step 0.01) and 0.8 |
  | M_j | 0.40–1.00, step 0.01, swept downward from 1 (upward checks in regions of interest) |
  | Microphone | One B&K 4944-B 1/4" at 14.3D, 90° to the plate edge; B&K 4231 calibrator |
  | Sampling | 200 kHz, 30 s |

- **PSD** (p. 3–4): Welch, Hann window, 16 384-point blocks, 75% overlap, 1461 blocks, Δf ≈ 12 Hz. Scaled as in Brès et al. (2018) to dB/St with St = fD/U_j (eq. 2.1). (Own check: 200 000/16 384 = 12.2 Hz; ΔSt ≈ 0.002 at M_j = 0.8.)
- **Bicoherence** (p. 4, App. A): same blocks, window and overlap as the PSD. Threshold b > 0.35 from the broadband case at R/D = 0.8 (mean max b = 0.29, overall max 0.32). Peaks leak only 2–3 frequency bins, so contour plots are overlain with markers (Fig. 22, which also compares 16 384- and 4096-point FFTs). Needs time-resolved data and long records (≈1460 blocks).
- **Linear model** (p. 4–7):
  - Feedback between k⁺ (KH) and k⁻ (upstream guided wave), reflection points R1 (nozzle lip) and R2 (plate edge), separation L. Only the phase condition is used (gain neglected), as in Jordan et al. (2018) and Mancinelli et al. (2019).
  - φ = 0 (in-phase) or π (out-of-phase); almost all predictions use φ = 0 (Fig. 10 uses φ = 0.2).
  - Wavenumbers from the cylindrical vortex sheet (Euler, parallel, T = 1), mode (m, n) = (0, 1).
  - Upstream waves: k⁻_th for M_j < 0.82 (one wave available); for M_j ≥ 0.82 both k⁻_d (duct-like) and k⁻_p (guided, studied in Nogueira et al. 2024) exist, joined to k⁺_T at saddle points S1 and S2 (Fig. 3–4).
- **Wavelets** (App. D): continuous wavelet transform with a bump wavelet, σ = 1/0.6, μ = 5 (Jordan et al. 2018), coefficients normalised by their maximum.

## Key equations
- PSD scaling (eq. 2.1, p. 3): $PSD(St)=10\log_{10}\!\left(\dfrac{PSD(f)}{p_{ref}}\dfrac{U_j}{D}\dfrac{1}{M_j^4}\right)$, p_ref = 2×10⁻⁵ Pa.
- Bispectrum (eq. 2.2, p. 4): $B(f_1,f_2)=\dfrac1N\sum_{i=1}^N |X_i(f_1)X_i(f_2)X_i^*(f_1+f_2)|$; normaliser (eq. 2.3) $B_R=\dfrac1N\sum_i |X_i(f_1)|^2|X_i(f_2)|^2|X_i(f_1+f_2)|^2$; bicoherence (eq. 2.4) $b=B/\sqrt{B_R}$, 0 ≤ b ≤ 1.
  > As printed, the modulus bars in eq. 2.2 appear inside the sum, which would remove the phase cancellation the text relies on. The text's argument requires the modulus of the ensemble sum. Check against the PDF before reusing.
- Phase criterion (eq. 2.5, p. 5): $\Delta k=\dfrac{2p\pi+\phi}{L}$, Δk = Re(k⁺) − Re(k⁻), p a positive integer.
  > Mancinelli et al. (2019) write $\Delta k_r L_s+\phi=2p\pi$; the sign of φ differs. Immaterial for φ = 0 (used here). With L/D = 2 and φ = 0, Δk D = pπ: 6.28 (p = 2), 12.57 (p = 4), 15.71 (p = 5), consistent with the Fig. 18 Δk axes (own check).
- Normal mode (eq. 2.6): $\tilde P(x,r,\theta,t)=P(r)e^{i(kx-\omega t+m\theta)}$.
- Vortex-sheet dispersion relation (eq. 2.7–2.8, p. 5–6):
  $\mathcal D=\dfrac{1}{(1-kM/\omega)^2}+\dfrac1T\dfrac{I_m(\gamma_i/2)\left[\frac{\gamma_0}{2}K_{m-1}(\gamma_0/2)+mK_m(\gamma_0/2)\right]}{K_m(\gamma_0/2)\left[\frac{\gamma_i}{2}I_{m-1}(\gamma_i/2)-mI_m(\gamma_i/2)\right]}=0$, with $\gamma_i=\sqrt{k^2-\tfrac1T(\omega-Mk)^2}$, $\gamma_0=\sqrt{k^2-\omega^2}$.
  Eigenfunction (eq. 2.9): $P=A_mI_m(\gamma_i r/D)$ for r/D ≤ 0.5, $B_mK_m(\gamma_0 r/D)$ for r/D ≥ 0.5.
  > Re-typed from the rendered page; the non-dimensionalisation (k and ω scaled by D and ambient sound speed?) is not stated explicitly. Check before reuse.
- Reflection ratio (App. C, eq. C1–C4, p. 23–24): $\dfrac RI=\left(\dfrac{1-k_j^+M/\omega}{1-k_j^-M/\omega}\right)\left(\dfrac{k_n^--k_j^-}{k_j^+-k_n^-}\right)$; transmitted duct wave $k_n^-=\dfrac{-\omega M-\sqrt{\omega^2}}{1-M^2}=-2\pi MSt\left(\dfrac{M+1}{1-M^2}\right)$ (as printed); $R^*=(R/I)_{k_p^-}/(R/I)_{k_d^-}$, written out in eq. C4 in terms of St_p, St_d, KH_p, KH_d.
  > eq. C2 as printed is dimensionally odd (−2πMSt for −ωM − |ω|); verify against Jordan et al. (2018) App. C.
- Bump wavelet (eq. D1–D2, p. 25–26): $\hat\Psi(\omega)=\exp\!\left(1-\dfrac{1}{1-\sigma^2(\omega-\mu)^2}\right)F(\omega)$, F = 1 for μ − 1/σ ≤ ω ≤ μ + 1/σ.

## Data tables
**Resonance closures used in the figures** (all φ = 0 unless noted)

| (M_j, R/D) | Regime | Upstream wave, p | Page/Fig |
|---|---|---|---|
| (0.70, 0.56) | LFS | k⁻_th, p = 2, 3, 4 | p. 8, Fig. 6 |
| (0.87, 0.5) | NLFS, fundamental St = 0.44 | k⁻_p, p = 2 | p. 9, Fig. 7 |
| (0.83, 0.5) | NLFS + non-harmonic triads | k⁻_d p = 4; k⁻_p p = 2 | p. 10, Fig. 8 |
| (0.70, 0.55) | LFS + one harmonic (St 0.66 → 1.32) | k⁻_th, p = 2, 3, 4 | p. 10–11, Fig. 9 |
| (0.78, 0.57) | LFS + one triad | k⁻_th, p = 2, 3 (φ = 0.2) | p. 11, Fig. 10 |
| (0.89, 0.5) | LFS (two tones) | k⁻_p p = 2; k⁻_d p = 9 | p. 13, Fig. 13 |
| 0.83–0.86, 0.5 | Competing loops | k⁻_p p = 2 (low tone); k⁻_d p = 4–6 (high tone) | p. 18, Fig. 18 |

**R* from Fig. 25** (read off the figure): M_j 0.82 → 4.8; 0.83 → 5.5; 0.84 → 5.4; 0.85 → 10.2; 0.86 → 13.8.

## Figures worth remembering
- **Fig. 1 (p. 3):** installed-jet geometry (D, L, R, S, C, α, τ, microphone).
- **Fig. 2 (p. 5):** feedback loop sketch (k⁺ lip → edge R2, k⁻ edge → lip R1).
- **Fig. 3–4 (p. 6–7):** vortex-sheet (0,1) dispersion curves for M_j 0.6–0.9 showing k⁻_th, k⁻_d, k⁻_p, k⁺_T; complex-k sketch of saddle points S1, S2.
- **Fig. 11 (p. 12):** regime map in (M_j, R/D). The key summary figure.
- **Fig. 12 / 24 (p. 12, 23):** number of non-harmonic triads across the map and across four acquisitions.
- **Fig. 14 (p. 14):** LFS (0.88) vs NLFS (0.87) PSD and bicoherence.
- **Fig. 16 (p. 16):** mode switching 0.82–0.86: PSD, zoom with S1–S2 band, dispersion curves with tone frequencies.
- **Fig. 18 (p. 18):** Δk(St) for k⁻_d and k⁻_p with the two tone frequencies.
- **Fig. 20–21 (p. 19–20):** max SPL over the regime map; fundamental amplitude vs M_j split by closure wave.
- **Fig. 25–26 (p. 24–25):** reflection ratio R*; radial |P| of k⁻_d (confined) vs k⁻_p (extends outside).
- **Fig. 27 (p. 26):** wavelet spectrograms for NLFS, LFS and the brief axisymmetric ↔ m = 1 switch.

> Fig. 19's caption says "M_j 0.83–0.86" but its panels are 0.82–0.86.

## Notation
- M_j: jet Mach number (= acoustic Mach number M for T = 1). R/D: radial edge position; L/D: streamwise edge position; α: plate angle.
- k⁺ (= k⁺_KH): downstream KH wave; k⁺_T: downstream guided wave between S1 and S2. k⁻_th: upstream guided wave for M_j < 0.82; k⁻_d: duct-like upstream wave; k⁻_p: upstream guided wave with support outside the jet, cut on for M_j ≥ 0.82.
- S1, S2: saddle points bounding the band where k⁺_T exists. (m, n): azimuthal and radial order. p: number of resonance cycles; φ: reflection phase difference.
- LFS / NLFS: linear / non-linear frequency selection. b: bicoherence. R*: ratio of reflection coefficients of the k⁻_p and k⁻_d loops.

## Relevance to this project
This is a subsonic installed-jet resonance study, not shock-containing, but the closure physics is the same guided-jet-mode feedback that drives screech and impinging-jet tones (CLAUDE.md research area: resonance and feedback).
- **Modelling side:** the Jordan et al. (2018) vortex-sheet phase model ([jordan-2018-jet-flap-interaction-tones.md](jordan-2018-jet-flap-interaction-tones.md)) is reused unchanged. It is the same model family as screech prediction in [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md), here with a physical edge as R2 instead of a shock cell. New here: two upstream waves (k⁻_d and k⁻_p) coexisting above M_j ≈ 0.82, giving two loops on either side of the S1–S2 band, and a crude gain argument (R*, radial support) to pick the winner. The saddle-point / band-of-existence reasoning parallels screech mode selection ([nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md), where the saddle point is read as an absolute instability) and the guided-mode closure evidence of [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md). The model has no gain condition, no non-parallel effects and no nozzle/plate geometry; the authors call for a non-parallel model, for which a global or resolvent approach with the edge in the domain would be the natural step (cf. [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md) for biglobal resolvent with a sharp trailing edge).
- **Impinging jets:** the impinging-jet feedback in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md) uses a plate as the downstream reflector too. The LFS → NLFS strong-oscillator jump and the hysteresis-free switching across 0.01 in M_j suggest checking the lab's impinging and screech data for the same amplitude cliff when sweeping NPR or standoff.
- **Methods and data requirements:**
  - PSD + bicoherence need time-resolved signals and long records (here 30 s, ≈1460 blocks of 16 384 points). Bicoherence needs a significance threshold from a tone-free baseline (b > 0.35 here). This maps directly onto BMD in the user's workflow: BMD is the spatial extension of the bispectrum and would show *where* the triads and harmonics of NLFS live, from time-resolved schlieren.
  - The classification uses a single microphone, so it cannot resolve azimuthal order. The m = 1 tones are identified only indirectly (deferred to future work); an azimuthal array or SPOD of time-resolved schlieren would settle this.
  - Non-time-resolved PIV could not separate LFS from NLFS, since both need spectra and phase coupling in time.
- **Intermittency and mode switching:** only wavelets are used (bump wavelet, as in Jordan et al. 2018 and Mancinelli et al. 2019); one brief axisymmetric → m = 1 → axisymmetric excursion at (0.84, 0.5), and one run where the switch happened at lower M_j. The SPOD → reconstruction → Hilbert POD pipeline would give instantaneous amplitude and frequency of each competing loop and could test whether the two loops coexist or alternate in the 0.82–0.86 window. The authors' note that a flexible plate gave more intermittency is a useful hint for any facility with compliant surfaces.
- **Related works cited** (candidates for `/add-paper`): Jordan et al. 2018 (jet-flap interaction tones; being indexed), Nogueira et al. 2024 (k⁻_p wave), Towne et al. 2017 (trapped acoustic waves), Gojon et al. 2018, Amaral et al. 2023 and Stavropoulos et al. 2024 (flexible-plate data set), Stavropoulos et al. 2023 (twin-jet screech with the same model), Mancinelli et al. 2021.
