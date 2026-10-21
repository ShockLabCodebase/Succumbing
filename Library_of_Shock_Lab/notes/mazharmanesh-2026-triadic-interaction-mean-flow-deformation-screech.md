---
key: "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech"
title: "Triadic interaction and mean-flow deformation in screeching jets"
authors: ["Mazharmanesh, S.", "Nogueira, P. A. S.", "Weightman, J.", "Yeung, B.", "Schmidt, O. T.", "Edgington-Mitchell, D."]
year: 2026
type: "article"
venue: "JFM 1039, A24"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "1039", "pages": "A24"}
doi: "10.1017/jfm.2026.11796"
arxiv: ""
pdf: "screech-staging-and-mode-switching/Mazharmanesh-EtAl_2026_Triadic-Interaction-And-Mean-Flow-Deformation-In-Screeching-Jets.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab"
data: ["schlieren-TR"]
methods: ["SPOD", "BMD", "statistics", "wavenumber-filtering"]
flow: ["round-jet", "elliptical-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "staging", "mode-switching", "intermittency", "triadic-interaction", "mean-flow-deformation", "shock-cells", "guided-jet-mode"]
params: {"NPR": "2.19–2.25 (round), 2.3–4.9 (elliptical)", "AR": "2 (elliptical)", "D_e": "16 mm (round), 10 mm (elliptical)", "St_s": "0.27–0.69"}
topics: ["screech-staging-and-mode-switching", "screech", "shock-cell-models", "time-frequency-methods", "modal-decomposition", "axis-switching-and-mean-flow", "non-axisymmetric-jets", "screech-frequency-and-global-modes"]
related: ["mazharmanesh-2025-screech-modes-non-axisymmetric-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "mancinelli-2019-screech-prediction-upstream-modes", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "schmidt-2020-bispectral-mode-decomposition", "farghadan-2026-wave-interactions-screeching-jet", "nogueira-2021-closure-mechanism-a1-a2-screech", "ivelja-2024-modal-analysis-screeching-elliptical-jets"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "gudmundsson-2011-instability-wave-models-near-field-jets", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "mancinelli-2019-screech-prediction-upstream-modes", "mazharmanesh-2025-screech-modes-non-axisymmetric-jets", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "nogueira-2024-guided-jet-waves", "schmidt-2018-spectral-analysis-jet-turbulence", "schmidt-2020-bispectral-mode-decomposition", "towne-2018-spod-relationship-dmd-resolvent", "wong-2023-steady-unsteady-coupling-twin-round-jets"]
summary: "150 kHz schlieren of A1/A2 staging (NPR 2.20) and an AR 2 elliptical jet (NPR 3.6): mutually exclusive tones each set their own short-time mean; BMD-derived k_S matches k_kh − k_GJM"
---
# Triadic interaction and mean-flow deformation in screeching jets

- **Authors:** S. Mazharmanesh, P. A. S. Nogueira, J. Weightman, B. Yeung, O. T. Schmidt, D. Edgington-Mitchell (Mazharmanesh, Nogueira, Weightman, Edgington-Mitchell: Monash University; Yeung, Schmidt: UC San Diego; p. 1)
- **Source:** J. Fluid Mech. 1039, A24 (2026), doi:10.1017/jfm.2026.11796. Published open-access version (CC BY 4.0). Received 18 Dec 2025, revised 10 Jun 2026, accepted 11 Jun 2026 (p. 1). Funded by ARC DP220103873 and ONR N00014-23-1-2457 (p. 24).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech-staging-and-mode-switching/Mazharmanesh-EtAl_2026_Triadic-Interaction-And-Mean-Flow-Deformation-In-Screeching-Jets.pdf` (index key `screech-staging-and-mode-switching/Mazharmanesh-EtAl_2026_Triadic-Interaction-And-Mean-Flow-Deformation-In-Screeching-Jets.pdf`, 29 pp.)
- **Page refs:** PDF page n is printed page 1039 A24-n.
- **Supplementary:** Jupyter notebook and video of the reconstructed short-time mean for Fig. 7 (JFM Notebooks; p. 12, 24).
- **Tags:** screech, A1/A2 staging, multimodal screech, intermittency, mutual exclusivity, mean-flow distortion, short-time mean, difference self-interaction, triadic interaction, guided jet mode, shock-cell wavenumber, suboptimal shock peak, elliptical jet AR 2, flapping and quasi-helical modes, high-speed schlieren, SPOD, SPOD frequency–time analysis, JPDF of SPOD coefficients, bispectral mode decomposition (BMD), bicoherence BMD, interaction map, two-way coupling

## Summary
The paper uses intermittent and multimodal screech as a natural on/off switch to see how each screech loop deforms the mean flow, and then uses that link to find where in the jet each loop closes. Long (400,000-frame) 150 kHz schlieren records of an axisymmetric jet at A1–A2 staging (NPR 2.20) and an AR 2 elliptical jet (NPR 3.60) are analysed with SPOD frequency–time analysis. In both, the screech tones are almost perfectly mutually exclusive, and the zero-frequency SPOD coefficient tracks which tone is on (|ρ| ≥ 0.8), so each loop has its own short-time mean and the long-time mean is a state the jet never occupies. Bicoherence-normalised BMD shows that the dominant triads producing this distortion are the difference self-interactions of the screech modes (St_s − St_s = 0). The BMD interaction maps for St_s − 0 = St_s localise where each tone interacts with the mean (shock) flow; a streamwise FFT of the y-integrated map gives a shock wavenumber k_S specific to each loop. Across NPR 2.3–4.9 in the elliptical jet, k_S matches the standing-wave wavenumber k_kh − k_GJM as well as or better than the peaks k_s1, k_s2 of the time-averaged shock spectrum, which lets the authors name the shock cells that close each loop. Apart from the triadic wavenumber relation (eq. 5.1), no stability or simulation model is solved.

## Key findings
- **Mutually exclusive tones at A1–A2 staging, axisymmetric jet** (p. 8–12, Fig. 3–6):
  - NPR 2.19: single A1 tone St_1 = 0.607 (harmonic 1.221). NPR 2.25: single A2 tone St_1 = 0.665 (harmonic 1.324). NPR 2.20: two non-harmonic tones, St_1 = 0.694 (A2) and St_2 = 0.606 (A1), both axisymmetric (p. 8–10).
  - The modes look alike; only the wavenumber spectra separate A1 (KH × primary shock peak k_s1) from A2 (KH × first suboptimal peak k_s2), following Nogueira et al. 2022a (p. 9–10).
  - Frequency–time diagrams: with one loop the tone is steady (Fig. 5a); at NPR 2.20 the tones switch (Fig. 5b), as in Mancinelli et al. 2019 (p. 11).
  - JPDF of |a_1(St_1)| and |a_1(St_2)| has two corner peaks; Pearson ρ = −0.82. The weak ridge between them is put down to windows that span a switch (p. 11, Fig. 6a).
  - The authors argue intermittency alone does not imply exclusivity; the JPDF test is needed (p. 11).
- **Each loop has its own short-time mean** (p. 11–13, Fig. 5c, 6b–c, 7):
  - The St = 0 SPOD coefficient is large only when screech is intermittent; with a steady loop the self-interaction is absorbed into the long-time mean, so the St = 0 bin is quiet (p. 11–12).
  - ρ(Re a_1(St_0), |a_1(St_1)|) = 0.96 and ρ(Re a_1(St_0), |a_1(St_2)|) = −0.82 (Fig. 6b–c).
  - |Re a_1(St_0)| ≳ 0.6 most of the time, so the short-time mean almost never resembles the long-time mean (p. 12).
  - One St = 0 SPOD mode suffices: a_1 > 0 gives the St_1 (A2) mean, a_1 < 0 the St_2 (A1) mean; shock-cell modification is stronger when the A1 tone (St_2) is on (p. 12, Fig. 7).
  - Claimed as the first clear demonstration that different screech loops at one condition sit on different short-time means (p. 13). Both tones on together, or neither on, never occurs in this dataset (p. 12).
- **Elliptical jet, NPR 3.60: one switch plus an intermittent third tone** (p. 13–16, Fig. 8–10):
  - Dominant St = 0.269 is replaced by St = 0.314 at t/T ≈ 1.45 × 10⁴ (T from St 0.269). A weaker, intermittent St = 0.273 appears after the switch (p. 13, 15).
  - The record is not statistically stationary (one switch). Appendix A shows SPOD and BMD modes from the full record match the pre- or post-switch subsets with normalised inner products > 0.99 (p. 13, 24–26, Fig. 20–23).
  - ρ(|a_1(St 0.269)|, |a_1(St 0.314)|) = −0.92; ρ(Re a_1(St_0), |a_1(0.269)|) = 0.97; ρ(Re a_1(St_0), |a_1(0.314)|) = −0.91 (Fig. 9a–c).
  - Two St = 0 modes are needed. Mode 1 switches sign at the switch: a_1 > 0 (shock cells contracted relative to the long-time mean) before, a_1 < 0 (cells extended) after. Mode 2 tracks the intermittency of St 0.314 after the switch: ρ(Re a_2(St_0), |a_1(0.314)|) = 0.83, and ρ < 0.05 with St 0.269 (p. 14–15, Fig. 9d).
  - a_2(St = 0) from the full record equals a_1(St = 0) from the post-switch subset (p. 15).
  - All three screech modes are antisymmetric in the minor-axis view; St 0.269 and 0.314 are flapping, St 0.273 quasi-helical (from Mazharmanesh et al. 2025; p. 15–16, 18).
- **BMD: mean-flow distortion comes from difference self-interaction** (p. 16–18, Fig. 11–12):
  - Mode bispectrum with mean removed vs retained: retaining the mean raises |β| along St_l = 0 and St_j = 0 and gives local maxima on St_l = 0 at the two screech frequencies; the rest of the bispectrum is unchanged (p. 16). All later BMD keeps the mean (p. 16).
  - St 0.273 − 0 is present but not a separate peak because it is so close to 0.269 (p. 16).
  - Bispectral modes φ_{k+l} for St_j = St_s look like the SPOD modes; the difference self-interaction modes (St_s − St_s = 0) of all three tones look alike and like the St = 0 SPOD modes, strongest further downstream (p. 17–18, Fig. 12d). "The BMD modes themselves provide little new insight" (p. 18).
  - Caveat: on schlieren, |β| measures relative strength of path-integrated density fluctuations and cannot give the direction of energy transfer; that needs volumetric velocity and density (Nekkanti et al. 2025; p. 16).
- **Interaction maps localise each loop** (p. 18, Fig. 13; p. 23, Fig. 19):
  - Despite similar modes, the St_s − 0 maps peak at different places: St 0.314 at x/D_e ≈ 5, St 0.269 at ≈ 6, St 0.273 at ≈ 8, consistent with the wavepacket peaks (p. 18).
  - In shock-cell terms (Fig. 19d): St 0.314 peaks at the 5th cell with a roughly symmetric envelope over about eight cells; St 0.273 rises slowly to the 7th cell then decays quickly; St 0.269 peaks at the 4th cell, with non-trivial amplitude from the 2nd to 6th and the fastest decay (p. 23).
- **BMD-derived shock wavenumber k_S closes the triad better** (p. 19–22, Fig. 14–18):
  - NPR 3.6, St 0.269 (Fig. 16d, values read from the plot): k_S D_e ≈ 5.2, k_kh − k_GJM ≈ 5.1, k_s1 D_e ≈ 4.95, k_s2 D_e ≈ 6.25, so k_S is the closest (p. 20–21).
  - k_s1,2 change by < 1 % whether taken from the post-switch or long-time mean (p. 20).
  - NPR sweep 2.3–4.9 (Fig. 17–18): single flapping loop for 2.3 ≤ NPR ≤ 3.3, closed by k_s1. Multimodal and highly intermittent for 3.4 ≤ NPR ≤ 4.9, both loops closed by k_s2; the higher-frequency (flapping) tone dominates for 3.4–4.0 and the lower-frequency (quasi-helical) tone for 4.1–4.9 (p. 21–22).
  - k_S agrees with k_sw = k_kh − k_GJM as well as or better than k_s1 and k_s2 in both regimes (p. 22). The abstract adds that agreement is weaker for the weaker, intermittent tones (p. 1).
- **Two-way coupling** (p. 3, 19): shock spacing selects the screech mode, and the screech loop's mean-flow distortion in turn changes the shock spacing. Existing models take k_s from the limit-cycle mean and assume one-way coupling; k_s is in fact tied to where the triad happens, which also sets which GJM frequencies are supported (Ivelja et al. 2024; p. 19).
- **Not every St = 0 signal is screech-driven** (Appendix B, p. 26–28, Fig. 24): at NPR 2.19 (single A1 tone) a slow drift of the tone strength correlates with the St = 0 coefficient (ρ = −0.49), but this is attributed to supply-pressure fluctuation, not intermittency. Frequency–time plots must be read alongside the spatial modes.

## Setup / method
- **Facility:** Supersonic Gas-Jet Facility at the **Shock Lab**, Monash University (named in the paper, p. 4). Continuous high-pressure air, NPR 2.0–5.0, screens and honeycombs in the plenum (p. 4, Fig. 2a).
- **Nozzles** (Table 1, p. 5):

| Exit geometry | Internal | D_e (mm) | l/D_e (mean lip thickness) |
|---|---|---|---|
| Axisymmetric | converging | 16 | 0.31 |
| Elliptical, AR 2.0 | converging | 10 | 0.05 |

  D_e is the equivalent (area-matched) diameter. AR 2.0 comes from the Fig. 17 caption (p. 21). The elliptical nozzle is the one in Mazharmanesh et al. 2025.
- **Cases:** axisymmetric NPR 2.19, 2.20, 2.25 (staging A1 → A2); elliptical NPR 3.60 in the minor-axis view (main case) and an NPR 2.30–4.90 sweep (p. 8, 13, 21).
- **Definitions:** St = f D_e/U_j with U_j the ideally expanded velocity (p. 8). Lipline taken as y/D_e = ±0.35 for the elliptical jet (p. 20, Fig. 16).
- **Schlieren** (p. 4):
  - Z-type Toepler, two mirrors f = 2032 mm. Knife edge set for the streamwise density gradient (∂ρ/∂x).
  - Photron Fastcam SA-Z 2100k at **150 kHz**, 512 × 200 px. Pulsed LED, 0.5 µs pulse (Willert et al. 2012).
  - **400,000 images per condition** for the main cases (≈ 2.7 s, my arithmetic); **50,000** per NPR for the elliptical sweep (p. 21).
  - Field of view about 0–8 D_e for the axisymmetric jet and 0–14 D_e for the elliptical jet (read from Fig. 4, 10).
- **SPOD** (p. 5–6):
  - Applied to light intensity, so eigenvalues measure intensity fluctuation, not a flow variable (p. 5).
  - Welch blocks n_fft = 1024, 50 % overlap (n_ovlp = 512), n_blk = 780 for n_t = 400,000 (check: (400,000 − 512)/512 ≈ 780). Window type not stated.
  - Frequency resolution Δf = 150,000/1024 ≈ 146 Hz (my arithmetic). For a cold NPR 3.6 jet (U_j ≈ 425 m/s assuming T₀ ≈ 293 K) that is ΔSt ≈ 0.0034, so St 0.269 and 0.273 are only about one bin apart. My estimate, not in the paper.
- **SPOD frequency–time analysis** (Nekkanti & Schmidt 2021; p. 6):
  - Time-continuous expansion coefficients from a sliding n_fft window advanced one snapshot at a time (eq. 2.1).
  - |a_i(St, t)| normalised by its maximum over all frequencies at each NPR (range 0–1); at St = 0 a_i is real and normalised to −1…1 (p. 6).
  - Window length 1024 frames ≈ 6.8 ms ≈ 78 screech periods at St 0.269 (my arithmetic; f_s ≈ 11.4 kHz from t/T and record length), which sets the time resolution of switching events.
- **Correlation diagnostics:** JPDFs and Pearson ρ between |a_1(St_s)| for pairs of tones, and between |a_1(St_s)| and Re a_{1,2}(St = 0) (p. 11–14).
- **Short-time mean reconstruction:** Ī + a_max(St_0) φ(St_0) and Ī + a_min(St_0) φ(St_0) (axisymmetric, Fig. 7), with a second St = 0 mode for the elliptical jet (Fig. 19a–c).
- **BMD** (Schmidt 2020, bicoherence form of Yeung & Schmidt 2025; p. 6–8):
  - Uses the Mengi & Overton (2005) iterative numerical-radius algorithm, which converges to the global maximum (p. 6).
  - Realisations from the same Welch blocks (n_blk) as SPOD (p. 7); block parameters for BMD are not stated separately.
  - Run with the long-time mean both removed and retained; retained for the main results (p. 16).
  - Exploits the reflection symmetry about y = 0 to save memory and speed convergence (p. 18), cf. the symmetry split of [yeung-2022](yeung-2022-3d-spod-twin-rectangular-jet.md).
- **Shock wavenumbers** (p. 19–20, Fig. 14–15):
  - Conventional k_s1, k_s2: axial FFT along the centreline of the time-averaged schlieren image.
  - New k_S: axial FFT of |ψ_{k,l}| for the St_s − 0 = St_s triad, after integrating over y. The peak near k_x D_e ≈ 0 from the map's growth–decay envelope is ignored; the next peak is k_S.
- **KH and GJM wavenumbers** (p. 20–22): axial FFT of the SPOD modes at each y; k_kh and k_GJM read at the lipline (Fig. 16). For the NPR sweep the authors instead take k_sw = k_kh − k_GJM from the standing-wave wavelength in the SPOD mode (Edgington-Mitchell et al. 2022), which reduces scatter (p. 22).
- **Modelling side:** the only model is the triadic closure relation (eq. 5.1) from the unifying theory; no linear stability, resolvent or LES is run here. Sign of k_x is used as a proxy for propagation direction (p. 20).

## Key equations
- Triad condition (eq. 1.1, p. 3): $St_j \pm St_k \pm St_l = 0$; sum $St_j = St_k + St_l$, difference $St_j = St_k - St_l$; difference self-interaction $St_j = St_k - St_k = 0$ is mean-flow distortion (p. 3, Fig. 1).
- SPOD (p. 6): $\frac{1}{n_{blk}}\hat{\mathbf Q}_l^*\mathbf W\hat{\mathbf Q}_l\boldsymbol\Psi_l = \boldsymbol\Psi_l\boldsymbol\Lambda_l$, modes $\boldsymbol\Xi_l = \frac{1}{\sqrt{n_{blk}}}\hat{\mathbf Q}_l\boldsymbol\Psi_l\boldsymbol\Lambda_l^{-1/2}$.
- Time-continuous expansion coefficients (eq. 2.1, p. 6): $\mathbf A_l^{\{j\}} = \boldsymbol\Xi_l^*\mathbf W\hat{\mathbf Q}_l^{\{j-n_{fft}/2,\dots,j+n_{fft}/2\}}$.
- Classical bispectrum (eq. 2.2, p. 7): $S_{yyy}(f_1,f_2) = \iint R_{yyy}(\tau_1,\tau_2)\,e^{-i2\pi(f_1\tau_1+f_2\tau_2)}\,d\tau_1 d\tau_2$, $R_{yyy} = E[y(t)\,y(t-\tau_1)\,y(t-\tau_2)]$.
- Spatially integrated bispectrum (eq. 2.3, p. 7): $b(f_k,f_l) = E\left\{\int_\Omega \hat q^*(\mathbf x,f_k)\,\hat q^*(\mathbf x,f_l)\,\hat q(\mathbf x,f_k+f_l)\,d\mathbf x\right\} = E\{\langle \hat{\mathbf q}_{k+l},\hat{\mathbf q}_{k\circ l}\rangle_x\}$, with $\hat{\mathbf q}_{k\circ l} = \hat{\mathbf q}_k\circ\hat{\mathbf q}_l$ and $\langle\mathbf q_1,\mathbf q_2\rangle_x = \mathbf q_2^*\mathbf W\mathbf q_1$.
- Bicoherence normalisation (eqs. 2.4–2.5, p. 7): $\hat{\mathbf Q}_{k\circ l} = \mathbf W^{1/2}[\hat{\mathbf q}^{(1)}_{k\circ l},\dots,\hat{\mathbf q}^{(n_{blk})}_{k\circ l}]\,/\,\lVert\mathbf W^{1/2}[\dots]\rVert_F$, and likewise $\hat{\mathbf Q}_{k+l}$, so both have unit Frobenius norm.
- Cross-frequency field and bispectral mode: $\boldsymbol\phi_{k\circ l} = \mathbf W^{-1/2}\hat{\mathbf Q}_{k\circ l}\boldsymbol\alpha_{k,l}$, $\boldsymbol\phi_{k+l} = \mathbf W^{-1/2}\hat{\mathbf Q}_{k+l}\boldsymbol\alpha_{k,l}$ (p. 7).
- Optimal coefficients (eq. 2.6, p. 7–8): $\boldsymbol\alpha_{k,l} = \arg\max_{\lVert\boldsymbol\alpha\rVert=1}\left|\langle\hat{\boldsymbol\phi}_{k+l},\hat{\boldsymbol\phi}_{k\circ l}\rangle_x\right| = \arg\max_{\boldsymbol\alpha}\left|\frac{\boldsymbol\alpha^*\mathbf B_{k,l}\boldsymbol\alpha}{\boldsymbol\alpha^*\boldsymbol\alpha}\right|$, $\mathbf B_{k,l} = \hat{\mathbf Q}^*_{k\circ l}\hat{\mathbf Q}_{k+l}$; mode bispectrum $\beta_{k,l} = \boldsymbol\alpha^*_{k,l}\mathbf B_{k,l}\boldsymbol\alpha_{k,l}$, $|\beta_{k,l}| \le 1$ (p. 8).
- Interaction map (p. 8): $\boldsymbol\psi_{k,l} = |\boldsymbol\phi_{k\circ l}\circ\boldsymbol\phi_{k+l}|$.
- Screech triad (eq. 5.1, p. 19): $k_{GJM} = k_{kh} - k_{s1,2}$, so the standing-wave wavenumber $k_{sw} = k_{kh} - k_{GJM}$ should equal the closing shock wavenumber (p. 22).
- Subset-vs-full similarity (eq. A1, p. 24): $\gamma_{i,k} = \langle\boldsymbol\xi_k,\boldsymbol\xi_{i,k}\rangle / (\lVert\boldsymbol\xi_k\rVert\,\lVert\boldsymbol\xi_{i,k}\rVert)$.

> Equations 2.2–2.6 were checked against a render of PDF p. 7. Eq. 2.1, the SPOD eigenproblem and eq. A1 were rebuilt from garbled text and the p. 6 render; verify eq. A1 (symbols lost in extraction) against PDF p. 24. The paper calls k_kh − k_GJM "the sum of k_kh and |k_GJM|" (p. 22), consistent with k_GJM < 0.

## Data tables
**Screech tones** (p. 8–15):

| Jet | NPR | Tones (St) | Notes |
|---|---|---|---|
| Axisymmetric | 2.19 | 0.607 (A1), 2St 1.221 | steady; Appendix B drift from supply pressure |
| Axisymmetric | 2.20 | 0.694 (A2), 0.606 (A1) | mutually exclusive, ρ = −0.82 |
| Axisymmetric | 2.25 | 0.665 (A2), 2St 1.324 | steady |
| Elliptical (minor-axis view) | 3.60 | 0.269 (flapping), 0.314 (flapping), 0.273 (quasi-helical, weak, intermittent) | one switch 0.269 → 0.314 at t/T ≈ 1.45 × 10⁴ |

**Correlation coefficients** (Fig. 6, 9, 24):

| Pair | ρ |
|---|---|
| Axi NPR 2.20: \|a_1(0.694)\| vs \|a_1(0.606)\| | −0.82 |
| Axi 2.20: Re a_1(St_0) vs \|a_1(0.694)\| | 0.96 |
| Axi 2.20: Re a_1(St_0) vs \|a_1(0.606)\| | −0.82 |
| Ell 3.60: \|a_1(0.269)\| vs \|a_1(0.314)\| | −0.92 |
| Ell 3.60: Re a_1(St_0) vs \|a_1(0.269)\| | 0.97 |
| Ell 3.60: Re a_1(St_0) vs \|a_1(0.314)\| | −0.91 |
| Ell 3.60: Re a_2(St_0) vs \|a_1(0.314)\| | 0.83 |
| Ell 3.60: Re a_2(St_0) vs \|a_1(0.269)\| | < 0.05 |
| Axi 2.19: Re a_1(St_0) vs \|a_1(0.607)\| (supply drift) | −0.49 |

**Subset vs full-record similarity, elliptical NPR 3.6** (Appendix A, Fig. 20, 22, 23): SPOD modes 0.9998 (St 0.314), 0.9923 (0.273), 0.9992 (0.269); bispectral modes 0.9951, 0.9913, 0.9944; interaction maps 0.9892, 0.9902, 0.9910.

**Approximate values read from figures** (verify before quoting): Fig. 16d (p. 21) k_S D_e ≈ 5.2, (k_kh − k_GJM) D_e ≈ 5.1, k_s1 D_e ≈ 4.95, k_s2 D_e ≈ 6.25 for St 0.269. Fig. 18 (p. 22) k_x D_e falls from ≈ 10 at NPR 2.3 to ≈ 5 at NPR 4.9; k_s2 sits above the others at low NPR (≈ 13 at NPR 2.3). Max |β| ≈ 0.3 (Fig. 11 colour scale, p. 17).

## Figures worth remembering
- **Fig. 1 (p. 4):** schematic of sum, difference, harmonic and mean-distortion (difference self-interaction) triads.
- **Fig. 3–4 (p. 8–9):** SPOD spectra and modes across A1 → A2 staging; the St = 0 mode at NPR 2.20 shows shock-cell-like structure on the centreline.
- **Fig. 5 (p. 10):** SPOD frequency–time diagrams, steady A2 at NPR 2.25 vs switching at NPR 2.20, with time traces of |a(0.606)|, |a(0.694)| and Re a(St = 0).
- **Fig. 6 (p. 11):** JPDFs showing mutual exclusivity and the tone ↔ mean-distortion correlation. A compact template for testing exclusivity.
- **Fig. 7 (p. 12):** long-time mean vs reconstructed short-time means for each loop (notebook and video linked).
- **Fig. 8–10 (p. 13–15):** elliptical NPR 3.6 frequency–time diagram with the single switch; coefficient traces of two St = 0 modes; JPDFs; SPOD modes.
- **Fig. 11 (p. 17):** mode bispectrum with mean removed vs retained.
- **Fig. 12–13 (p. 17–18):** bispectral modes and interaction maps; maps peak at different x for the three tones.
- **Fig. 14–16 (p. 19–21):** centreline shock spectrum (k_s1, k_s2), interaction-map wavenumber spectra (k_S), and SPOD-mode k_x–y spectra with k_kh and k_GJM; Fig. 16d is the key comparison.
- **Fig. 17–18 (p. 21–22):** SPOD spectra vs NPR (2.3–4.9) for the elliptical jet and the k_S / k_s1 / k_s2 / k_sw comparison.
- **Fig. 19 (p. 23):** interaction maps overlaid on short-time mean shock structure; y-integrated maps on the long-time mean, naming the shock cells that close each loop.
- **Fig. 24 (p. 27):** cautionary case where St = 0 tracks supply-pressure drift.

## Notation
- St_s, St_1, St_2: screech Strouhal numbers; St_0: zero-frequency bin; T: screech period.
- a_i(St, t): time-continuous SPOD expansion coefficient of mode i; λ: SPOD eigenvalue; Ξ / ξ: SPOD modes.
- β: complex mode bispectrum (bicoherence-normalised); φ_{k+l}: bispectral mode; φ_{k∘l}: cross-frequency field; ψ_{k,l}: interaction map.
- k_kh, k_GJM: KH and guided-jet-mode wavenumbers; k_s1, k_s2: primary and suboptimal peaks of the time-averaged shock spectrum; k_S (k_S_BMD): BMD-derived shock wavenumber; k_sw: standing-wave wavenumber.
- Ī: long-time-mean schlieren intensity; ρ: Pearson correlation; γ: normalised inner product (Appendix A).
- St_L, St_H: lower- and higher-frequency tones in the elliptical NPR sweep.

> Checks against the PDF: §5 refers to "figure 13(d)" for the y-integrated maps (p. 23) but Fig. 13 has only panels a–c; the integrated curves are Fig. 19(d). Fig. 16 caption writes y/D = ±0.35 where D_e is presumably meant. The interaction-map peaks are given as x/D_e ≈ 5, 6, 8 in §4 but as 5th, 4th and 7th shock cells in §5; both are from the paper and consistent in order only for 0.273.

## Relevance to this project
This is a Shock Lab paper (Weightman is a co-author) on resonance and feedback in screeching jets, built entirely on time-resolved schlieren, so it sits squarely in the CLAUDE.md workflow.

- **Method and data dependence:**
  - SPOD, SPOD frequency–time analysis and BMD all **need time-resolved data** and long records: 400,000 frames at 150 kHz here, with n_fft 1024 and 50 % overlap. Short records (50,000 frames, NPR sweep) were enough for k_S, but the mean-distortion and JPDF analysis rely on many switching events.
  - The St = 0 SPOD mode only carries screech information when the loop is intermittent; for a steady loop the distortion is buried in the long-time mean (p. 11–12). Non-time-resolved PIV can't separate short-time means this way unless snapshots can be conditioned on which tone is active (e.g. a simultaneous microphone).
  - Windowing of the sliding SPOD (6.8 ms ≈ 78 cycles) smears switching events, which shows up as a ridge in the JPDF (p. 11). Neighbouring tones only one or two bins apart (0.269 vs 0.273) are hard to separate; adaptive or band-ensemble SPOD ([yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md), [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md)) may help.
- **SPOD → reconstruction → Hilbert POD pipeline:** the paper's frequency–time coefficients do the "how do amplitudes change in time" step at block resolution. Reconstructing each tone and the St = 0 mode, then applying Hilbert POD ([raiola-2025](raiola-2025-hilbert-pod.md)), could give the instantaneous amplitude and frequency through each switch and the lag between tone amplitude and mean-flow change. That would test the two-way coupling claim more directly. This is a suggestion, not something done in the paper. Frequency–time method: [nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md); wavelet alternative: [torrence-1998](torrence-1998-practical-guide-wavelet-analysis.md).
- **BMD in practice:** this is a direct application of [schmidt-2020-bispectral-mode-decomposition](schmidt-2020-bispectral-mode-decomposition.md) to schlieren. Lessons: keep the mean in the data if you want shock–wavepacket triads (St_s − 0); the bispectral modes mostly duplicate SPOD, and the useful output is the interaction map; on path-integrated data BMD gives where and between which frequencies, not the direction of energy transfer. Bicoherence at a point ([stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md)) is a cheaper check.
- **k_S as a measurement tool:** k_S from the interaction map is a data-driven way to pick which shock peak closes a loop, instead of choosing k_s1 or k_s2 post hoc ([edgington-mitchell-2022-unifying-theory-jet-screech](edgington-mitchell-2022-unifying-theory-jet-screech.md)). It agrees with the unifying theory (k_s1 for single-loop, k_s2 for multimodal) and sharpens it with a location. It is less reliable for weak intermittent tones (p. 1).
- **Modelling side:** the paper challenges models that use the limit-cycle mean with one-way coupling (p. 2–3, 19). Mean-flow-based stability or resolvent screech models ([nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md), [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md), [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md), [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md)) could be run on each short-time mean rather than the long-time mean, which the paper shows is never realised in a switching jet. The harmonic-resolvent study [farghadan-2026](farghadan-2026-wave-interactions-screeching-jet.md) predicts the St_s − St_s → 0 and St_s + St_s triads that BMD measures here; comparing its mean-distortion forcing with Fig. 12d is a natural next step. The localised GJM support idea links to [ivelja-2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md).
- **PyFR staging work:** the A1/A2 staging driver in `Simulations/PyFR_Staging_Continuation/` targets exactly the NPR ≈ 2.2 regime of Fig. 3–7. The finding that the two loops are mutually exclusive, each with its own mean shock structure, supports treating staging as switching between states, and suggests LES diagnostics: St = 0 SPOD coefficient, JPDF of tone amplitudes, and BMD interaction maps / k_S per state. Note this nozzle has D_e = 16 mm and l/D_e = 0.31 (p. 5).
- **Agreement with and differences from related notes:**
  - [mazharmanesh-2025-screech-modes-non-axisymmetric-jets](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md): same elliptical nozzle and NPR 3.6. The 2025 note records the quasi-helical tone at St 0.28 and the flapping tone at 0.32; here the longer record gives three tones, 0.269 and 0.314 (flapping) and 0.273 (quasi-helical). Check whether the 2025 "0.28" corresponds to 0.269 or 0.273 here.
  - [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md): earlier group A1/A2 work on a D = 15 mm nozzle with 5 mm lip at NPR 2.10/2.25, St 0.65–0.67; this paper's axisymmetric nozzle is listed as D_e = 16 mm, l/D_e = 0.31 (≈ 5 mm), possibly the same hardware (not stated).
  - [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md): reported A1/A2 switching without coexistence; this paper agrees and quantifies exclusivity via JPDF.
  - [edgington-mitchell-2022-unifying-theory-jet-screech](edgington-mitchell-2022-unifying-theory-jet-screech.md): source of k_sw and of the two-way-coupling hypothesis; this paper supplies direct evidence (distinct short-time means).
  - [edgington-mitchell-2023-screeching-jet-seen-from-all-sides](edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md) and [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md): other intermittency/closure analyses.
- **Facility:** Shock Lab (named in the paper, p. 4).
- **Related works cited, candidates for `/add-paper`:** Yeung & Schmidt 2025 (bicoherence BMD, twin-rectangular jet, JFM 1018 A34); Nekkanti et al. 2025 (bispectral energy transfer, arXiv:2502.15091); Nogueira et al. 2024 (Guided-jet waves, JFM 999 A47); Wong et al. 2023 (twin-jet coupling, JFM 964 A2); Kinjangi & Foti 2023; Gao & Li 2010; Walker et al. 1997 (wavelets on screech); Panda 1999; Wang et al. 2025 (hot jet screech modes).
