---
key: "nogueira-2021-closure-mechanism-a1-a2-screech"
title: "Closure mechanism of the A1 and A2 modes in jet screech"
authors: ["Nogueira, P. A. S.", "Jaunet, V.", "Mancinelli, M.", "Jordan, P.", "Edgington-Mitchell, D."]
year: 2022
type: "article"
venue: "JFM (2022), arXiv version held"
bib: {"journal": "Journal of Fluid Mechanics"}
doi: "10.1017/jfm.2022.58"
arxiv: "2107.06429"
pdf: "screech-staging-and-mode-switching/Nogueira-EtAl_2021_Closure-Mechanism-Of-The-A1-And-A2-Modes-In-Jet-Screech.pdf"
version: "preprint"
unverified: ["DOI and year from Library_of_Shock_Lab/group_papers.md (ORCID/OpenAlex/Crossref), not printed in the held arXiv PDF", "volume and article number not known (possibly JFM 936, A10: unchecked)"]
group: true
facility: "Pprime SUCRÉ jet-noise facility"
data: ["PIV", "mic-array"]
methods: ["LSA-local", "LSA-Floquet", "PSD", "symmetry-decomposition", "resonance-model"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "staging", "guided-jet-mode", "shock-cells", "absolute-instability", "KH-wavepackets", "triadic-interaction"]
params: {"M_j": "1.0–1.3 (PIV 1.08–1.22)", "D": "10 mm", "m": "0"}
topics: ["screech-staging-and-mode-switching", "screech", "shock-cell-models", "linear-models", "screech-frequency-and-global-modes"]
related: ["nogueira-2021-absolute-instability-shock-containing-jets", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "farghadan-2026-wave-interactions-screeching-jet"]
cites: ["bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "gojon-2018-oscillation-modes-screeching-jets", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "nogueira-2021-absolute-instability-shock-containing-jets", "raman-1998-supersonic-jet-screech-review", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
summary: "A2 screech closes via a secondary shock wavenumber k_sh2 from downstream-shrinking shock spacing; local LSA (k_kh − k_sh) and Floquet saddles match Pprime A1/A2 tones within 10%"
---
# Closure mechanism of the A1 and A2 modes in jet screech

- **Authors:** P. A. S. Nogueira, V. Jaunet, M. Mancinelli, P. Jordan, D. Edgington-Mitchell (Nogueira and Edgington-Mitchell: LTRAC, Monash; Jaunet, Mancinelli and Jordan: Institut Pprime, Poitiers; p. 1)
- **Source:** arXiv:2107.06429v1 [physics.flu-dyn] (preprint, 13 Jul 2021; JFM-style draft). The file is the 2021 arXiv v1.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech-staging-and-mode-switching/Nogueira-EtAl_2021_Closure-Mechanism-Of-The-A1-And-A2-Modes-In-Jet-Screech.pdf` (16 pp.)
- **Tags:** screech, A1/A2 mode staging, axisymmetric (m = 0) screech, shock-cell wavenumber spectrum, shock-spacing variation, Kelvin-Helmholtz wavepacket, guided jet mode, Tam & Tanna interaction, locally parallel LSA, spatially periodic (Floquet) LSA, absolute instability, saddle point, PIV mean flow, microphone array

## Summary
The A1 and A2 screech stages are both axisymmetric and both close via the upstream guided jet mode, so a change of azimuthal mode or of upstream wave can't explain the frequency jump between them. This paper explains it through the shock-cell structure. The spatial spectrum of the measured centreline mean pressure has a leading peak k_sh1 and a secondary peak k_sh2. The secondary peak comes from the shock spacing shrinking downstream. Two linear models are used. (1) A locally parallel spatial LSA of the PIV mean flow, where the tone is predicted where the interaction wavenumber k_kh − k_sh meets the upstream guided-jet branch. (2) A spatially periodic (Floquet) LSA of an analytical periodic jet, where the tone is the frequency of a KH–guided-jet saddle point (absolute instability). With k_sh1 both models give A1, and with k_sh2 they give A2, matching a Pprime microphone-array Mj sweep. The absolute growth rate ω0i explains which tone dominates where both are possible.

## Key findings
- **Interaction rule** (p. 3, 4): KH × shock interaction energises k_x = k_kh ± k_sh (eq. 2.1). The k_kh − k_sh branch is the candidate upstream closure wave because the KH wavepacket is the most amplified structure.
- **The shock structure isn't one wavenumber** (p. 7–8, Figs 2–3):
  - The centreline mean pressure looks like a Gaussian-modulated cosine. Its spatial FFT has a sharp peak near k_x D ≈ 10 (Mj = 1.16) and secondary peaks at higher k_x.
  - A single-k_sh fit only matches for x/D < 4. A fit with k_sh rising downstream (shock spacing falling) matches the whole domain and reproduces the secondary peaks, like a chirp.
  - The secondary peaks persist across Mj. Both k_sh1 and k_sh2 fall with Mj (as Pack 1950 predicts), and their difference stays roughly constant (p. 8).
  - These secondary peaks don't match Pack's higher-order harmonics. Morris & Miller (2010) saw similar peaks but didn't explore them (p. 8).
- **Locally parallel model** (p. 9–11, Figs 4–5):
  - Mj = 1.08: k_kh − k_sh1 crosses the neutral guided-jet branch once. k_kh − k_sh2 doesn't cross, so there's no A2 (p. 9).
  - Mj = 1.16: both cross, so resonance could close at two frequencies (p. 9). The k_sh2 crossing lies near the top of the neutral-mode band, which rules out closure through higher shock peaks.
  - k_sh1 predicts the A1 tone where A1 dominates (Mj < 1.16). k_sh2 predicts A2 for Mj ≥ 1.12, and gives no crossing at lower Mj, consistent with A2 being a higher-Mj stage (p. 10).
  - Predictions vary only slightly with the upstream-wave station x_ups. The variation is largest near the maximum frequency of the neutral mode, where the group velocity changes steeply (p. 10).
  - The upstream wave is supported at every station from the 4th shock cell to the nozzle for A2. The same holds for A1, except at the highest Mj with x_ups at the first velocity minimum (no crossing), which suggests A1 can't return to the nozzle there (p. 10).
  - The picture that emerges: A1 belongs to the near-nozzle region and A2 to the downstream region where the spacing changes. This agrees with Mercier et al. (2017) (p. 10).
  - Compared with a vortex-sheet model, the guided-mode branch points sit at lower frequency because of the finite shear-layer thickness (p. 9–11).
  - **Limitation:** this model can't say which of A1 or A2 is selected when both are supported (p. 11). It still finds k_sh1 crossings at Mj = 1.16 and 1.22 (St ≈ 0.58 and 0.50, Fig. 5), where no A1 tone is measured.
  - Most predicted tones involve neutral (not weakly stable) upstream modes (p. 9).
- **Spatially periodic model (SPLSA)** (p. 11–14, Figs 6–8):
  - The periodic spectrum brings the KH mode and the guided-jet mode into the same region. With A_sh ≠ 0 they form a saddle; a double root with ω0i > 0 grows both up- and downstream, so the jet acts as an oscillator (p. 5, 11; Brevdo et al. 1996).
  - Saddle frequencies match the measured A1 and A2 tones to **within 10% in St** (p. 12).
  - The saddle St hardly depends on the shear-layer thickness δ (Fig. 7), but ω0i falls strongly as δ grows (Fig. 8, p. 12).
  - **A1 cut-off:** at Mj = 1.12 with δ = 0.15 there is no A1 saddle, because the KH mode crosses the acoustic branch before the guided mode cuts on. A thicker shear layer lowers the cut-on and restores the saddle, so Mj ≈ 1.12 is near the end of A1. There's no A1 saddle at Mj = 1.16 or 1.22 for any δ (p. 12).
  - **A2 cut-on:** with k_sh2 there's no saddle at Mj = 1.08 (k_sh2 too high), but there are saddles for all δ at Mj ≥ 1.12 (p. 12–13).
  - **Dominance:** at Mj = 1.12 both A1 and A2 are absolutely unstable, as in the experiment. The A1 ω0i is much larger (0.223 vs 0.057 at δ = 0.2; Fig. 6), consistent with the measured A1 peak being stronger (p. 13).
  - ω0i rises steeply with Mj for A1 and less steeply for A2, at fixed A_sh. This matches the measured rise of tone amplitude with Mj and hints at a link between ω0i and the saturated amplitude (p. 13).
  - Results are roughly insensitive to A_sh (fixed at 0.02), which also suggests both k_sh1 and k_sh2 can close the loop (p. 11).
  - **Limitation:** SPLSA predicts a strongly amplified A2 at Mj = 1.22, where the measured axisymmetric peak is weak. Possible reasons: facility effects, or the jet not being truly periodic (p. 14).
  - Sources of the ≤10% error the authors list: facility dependence of screech frequency (Gojon et al. 2018), the real ideally expanded profile differing from eq. 2.4, and no jet spreading or shock decay in SPLSA (p. 12). Because the model only needs the shock wavenumber, it's roughly facility-independent and could be a reference value (p. 12).
- **Conclusions** (p. 14–15):
  - The wavenumber match is a necessary but not sufficient condition for screech. Reflection and receptivity are not modelled.
  - The Tam et al. (1986) "weakest link" condition is essentially the saddle-point condition (eq. 5.1). So the energy-transfer argument is realised through an absolute instability.
  - A2 exists because the shock-cell wavenumber varies in space, which is a new result. This explains why A1/A2 staging models have struggled. Mancinelli et al. (2019) captured it only "inadvertently" through parameter choices.

## Setup / method
- **Facility** (p. 6): SUCRÉ (SUpersoniC REsonance) jet-noise facility, Institut Pprime, Poitiers. This is **not** a Shock Lab group facility; the Monash authors contributed the modelling. Details are in Mancinelli et al. (2019).
  - Convergent nozzle, D = 0.01 m, underexpanded. Stagnation temperature 295 K. Exit conditions from isentropic relations.
- **Acoustics** (p. 6): stagnation pressure swept to give Mj = 1.0–1.3 in steps of ΔMj = 0.005.
  - Azimuthal array of 6 microphones in the nozzle exit plane at r/D = 1. The signals are decomposed into azimuthal Fourier modes and only m = 0 is used.
  - Output is a PSD map vs Mj and St (Figs 5, 7). This needs time-resolved microphone signals. Sampling rate, block length and windowing aren't given here (see Mancinelli et al. 2019).
- **PIV** (p. 6): Mj = 1.08, 1.12, 1.16, 1.22. It is **not time-resolved** and only the mean is used.

  | Item | Value |
  |---|---|
  | Seeding | Ondina oil, injected before the stagnation chamber |
  | Laser / camera | 2 × 50 mJ Nd:YAG; one 4 Mpix CCD with a Sigma 105 mm macro lens (planar) |
  | FOV | ≈ 10D × 10D |
  | Rate / Δt / pairs | 7.2 Hz; 1 µs; 10,000 pairs per case |
  | Processing | LaVision DaVis 8.0 multipass, 64×64 → 16×16 px, 50% overlap; ≈ 2.5 vectors/mm (25 per D) |
  | Validation | Correlation peak ratio ≥ 1.4 at every pass; universal outlier detection (Westerweel & Scarano 2005) |
  | Mean p, ρ | Crocco–Busemann (isentropic) plus spatial integration (van Oudheusden et al. 2007) |

  - Mean fields are interpolated onto the LSA radial mesh at each station. Sample mean fields are in Mancinelli et al. (2020).
- **Shock-cell spectrum** (p. 7–8): P_centre(x) = P(x,0) minus its streamwise mean. Spatial FFT over the whole domain with no window; a Hanning window doesn't move the peaks. Needs only the mean field.
- **Model 1: locally parallel spatial LSA** (p. 3–4, 8–9):
  - Inviscid linearised Navier–Stokes in generalised eigenvalue form A q = k_x B q (eq. 2.2). Disturbance q = [ν u_x u_r u_θ p]ᵀ with ν the specific volume, ansatz e^{−iωt + ik_x x + imθ}, m = 0.
  - Base flow: PIV mean at station x0 with U_r = U_θ = 0 (low Mach). Normalised by D, c∞ and ρ∞.
  - Numerics: Chebyshev collocation in r with N_r = 250 (Trefethen 2000), Lesshafft & Huerre (2007) mapping to cluster points in the shear layer and core, and their boundary conditions. Solved in MATLAB.
  - Steps: (i) find k_sh1 and k_sh2 from the mean field; (ii) get k_kh(St) from the LSA at the station of maximum mean velocity (first shock cell), since the near-nozzle KH mode is vortex-sheet-like and the result is insensitive to this choice; (iii) intersect Re(k_kh − k_sh) with the upstream branch, neutral and weakly stable (Fig. 4).
  - The upstream branch is computed at an ensemble of stations x_ups: the local maxima and minima of centreline velocity up to the 4th shock cell. This includes the Mancinelli et al. (2019) reflection point at the 4th shock cell (p. 9).
- **Model 2: spatially periodic LSA (SPLSA)** (p. 4–6):
  - Analytical periodic mean flow U_x = U(r)[1 + A_sh cos(k_sh x)], with a tanh (Michalke-type) radial profile (eqs. 2.3–2.4).
  - Floquet ansatz q̂ = q̃ e^{iμx}, with q̃ periodic and expanded in a Fourier series (eq. 2.5). This gives the eigenproblem Ã q̃ = B̃ μ q̃ (eq. 2.6). The operators are given in Nogueira et al. (2021, absolute instability).
  - Each eigenmode carries energy at k_r ± N k_sh, so the eigenvalues repeat periodically in the complex plane. Briggs criterion: downstream waves amplify if μ_i < 0 (p. 5).
  - Numerics: MATLAB `eigs` (Arnoldi). Chebyshev in r and Fourier in x (Weideman & Reddy 2000), with the same mapping and boundary conditions as above. N_r × N_x = 80 × 31 is enough in most cases (p. 6).
  - Parameters: A_sh = 0.02; δ = 0.15, 0.175, 0.20; k_sh = k_sh1 (A1) or k_sh2 (A2), taken from the measured spectra rather than from Pack (1950) (p. 5, 11).
  - Saddles are located with the Monkewitz (1988) method. The saddle frequency ω0 = ω0r + iω0i gives the tone (ω0r) and the absolute growth rate (ω0i) (p. 5, 11).
  - Only U_x is specified here. Density and temperature handling for the analytical base flow is as in Nogueira et al. (2021); it isn't restated.

## Key equations
- Interaction wavenumbers (eq. 2.1, p. 3): $k_x = k_{kh} \pm k_{sh}$
- Locally parallel eigenproblem (eq. 2.2, p. 3): $\mathbf{A}\mathbf{q} = k_x \mathbf{B}\mathbf{q}$, with $\mathbf{q}(r) = [\nu\ u_x\ u_r\ u_\theta\ p]^T$ and dependence $e^{-i\omega t + i k_x x + i m\theta}$
- Periodic mean flow (eq. 2.3, p. 5): $U_x(x,r) = U(r)\,[1 + A_{sh}\cos(k_{sh}x)]$
- Radial profile (eq. 2.4, p. 5): $U(r) = M\left[0.5 + 0.5\tanh\left(0.5\left(\dfrac{0.5D_j}{r} - \dfrac{r}{0.5D_j}\right)\dfrac{1}{\delta}\right)\right]$, with $M = U_j/c_\infty$
- Floquet ansatz (eq. 2.5, p. 5): $\hat{\mathbf{q}}(x,r) = \tilde{\mathbf{q}}(x,r)\,e^{i\mu x}$, $\mu = \mu_r + i\mu_i$
- Periodic eigenproblem (eq. 2.6, p. 5): $\tilde{\mathbf{A}}\tilde{\mathbf{q}} = \tilde{\mathbf{B}}\mu\tilde{\mathbf{q}}$
- Shock-cell fit (eq. 4.1, p. 7): $P_{fit}(x) = e^{-0.1(x/D-1.1)^2}\cos(k_{sh}x - 0.4608)$, with either $k_{sh}D = 9.2138$ or $k_{sh}(x)D = 9.2138 + 2.544\times10^{-5}(x/D)^6$ (Mj = 1.16)
  - Evaluating the second form (my arithmetic, not in the paper): k_sh D ≈ 9.32 at x/D = 4, 10.4 at 6 and 15.9 at 8. The change is negligible upstream of x/D ≈ 4, consistent with the single-k fit failing only beyond there.
- Saddle condition (eq. 5.1, p. 8): $k_r^- \approx k_{kh} - k_{sh}$ for some complex ω. So model 1 gives a first estimate of the saddle position and real frequency, but not ω0i.
- Strouhal number (p. 9): $St = \omega D/(2\pi U_j)$, based on the nozzle diameter D.

> Equations were checked against rendered page images (pp. 3, 5, 7, 8, 9). Eq. 2.4 was garbled in text extraction; the form above is from the page image.

## Data tables
Values below are **read off the figures** (no tables in the paper). Treat them as approximate (about ±0.01 in St, ±0.3 in k_x D) except where marked as a caption value.

**Shock-cell wavenumbers** (Fig. 3, p. 8):

| Mj | k_sh1 D | k_sh2 D | difference |
|---|---|---|---|
| 1.08 | ≈ 12.8 | ≈ 15.8 | ≈ 3.0 |
| 1.12 | ≈ 10.2 | ≈ 12.5 | ≈ 2.3 |
| 1.16 | ≈ 9.2 (fit: 9.2138, p. 7) | ≈ 11.3 | ≈ 2.1 |
| 1.22 | ≈ 7.6 | ≈ 9.7 | ≈ 2.1 |

**Predicted vs measured St** (Figs 5, 7, 8; p. 11, 13):

| Mj | Measured tone (PSD) | LSA A1 (k_sh1) | LSA A2 (k_sh2) | SPLSA A1 saddle | SPLSA A2 saddle |
|---|---|---|---|---|---|
| 1.08 | A1 ≈ 0.73 | ≈ 0.73–0.77 | no crossing | ≈ 0.76 | no saddle |
| 1.12 | A1 ≈ 0.63, A2 ≈ 0.70 | ≈ 0.62–0.63 | ≈ 0.69–0.73 | 0.627–0.633 (δ = 0.2, caption) | 0.733–0.739 (δ = 0.2, caption) |
| 1.16 | A2 ≈ 0.65 | ≈ 0.58 (no A1 tone) | ≈ 0.64–0.67 | no saddle | ≈ 0.67 |
| 1.22 | weak m = 0 peak | ≈ 0.50 (no A1 tone) | ≈ 0.58–0.61 | no saddle | ≈ 0.59 |

The LSA ranges span the x_ups ensemble.

**Absolute growth rate ω0i of the saddle** (Fig. 8, p. 13):

| Mj | A1 δ=0.15 | A1 δ=0.175 | A1 δ=0.20 | A2 δ=0.15 | A2 δ=0.175 | A2 δ=0.20 |
|---|---|---|---|---|---|---|
| 1.08 | ≈ 0.30 | ≈ 0.15 | ≈ 0.055 | – | – | – |
| 1.12 | no saddle | ≈ 0.35 | 0.223 (caption) | ≈ 0.285 | ≈ 0.145 | 0.057 (caption) |
| 1.16 | – | – | – | ≈ 0.38 | ≈ 0.23 | ≈ 0.12 |
| 1.22 | – | – | – | ≈ 0.455 | ≈ 0.32 | ≈ 0.21 |

> Check the figure readings against the PDF (Figs 3, 5, 7, 8 on pp. 8, 11, 13) before quoting them. The measured-tone column comes from the grey-scale PSD map and is the least certain.

## Figures worth remembering
- **Fig. 1 (p. 4):** sketch of the two models. (a) The locally parallel LSA at station x0 on the turbulent mean flow. (b) The periodic jet with wavelength λ_sh.
- **Fig. 2 (p. 7):** Mj = 1.16 centreline mean pressure with single-k and varying-k fits (a), and their spatial FFTs (b). The varying-k fit reproduces the secondary peaks above the main one at k_x D ≈ 9–10.
- **Fig. 3 (p. 8):** log spatial spectrum of the centreline mean pressure vs Mj with the k_sh1 and k_sh2 tracks.
- **Fig. 4 (p. 10):** upstream neutral and stable branches (circles), k_kh − k_sh1 and k_kh − k_sh2 (crosses) and the acoustic line, for Mj = 1.08 and 1.16. This is the graphical prediction method.
- **Fig. 5 (p. 11):** LSA predictions over the m = 0 PSD map (Mj 1.05–1.25, St 0.45–0.85). Vortex-sheet bounds of the neutral mode from Mancinelli et al. (2020) are shown as yellow lines.
- **Fig. 6 (p. 12):** SPLSA eigenvalue trajectories near the A1 and A2 saddles (Mj = 1.12, δ = 0.2). The KH and guided-jet modes attract and then repel.
- **Fig. 7 (p. 13):** SPLSA saddle St over the PSD map for three δ.
- **Fig. 8 (p. 13):** ω0i vs Mj for A1 and A2 and three δ.

## Notation
- k_kh: KH wavenumber. k_sh: shock-cell wavenumber. k_sh1, k_sh2: leading and secondary (sub-optimal) peaks of the centreline mean-pressure spectrum. k_r⁻: upstream-wave wavenumber.
- A_sh: shock-cell amplitude in the periodic base flow. δ: shear-layer thickness parameter. λ_sh: shock-cell wavelength.
- μ = μ_r + iμ_i: Floquet exponent. ω0 = ω0r + iω0i: saddle-point (absolute) frequency; ω0i > 0 means absolute instability.
- x0: station for the KH LSA. x_ups: station for the upstream-mode LSA.
- ν: specific volume. M = U_j/c∞. Subscript j: ideally expanded. Scales: D, c∞, ρ∞.
- St = ωD/(2πU_j). Screech stages: A1/A2 (m = 0), B/D (flapping), C (helical).
- LSA: locally parallel linear stability analysis. SPLSA: spatially periodic LSA. VS: vortex sheet.

## Relevance to this project
This project analyses resonance and feedback in Shock Lab experiments (schlieren, acoustics, PIV); see CLAUDE.md.
- **Facility:** all data here are from the Pprime SUCRÉ rig, not a Shock Lab group facility. The Monash contribution is the modelling. The Shock Lab equivalent A1/A2 data are in [Waves in screeching jets](edgington-mitchell-2020-waves-in-screeching-jets.md): NPR 2.10 (Mj 1.09, A1) and NPR 2.25 (Mj 1.14, A2). Note the different Strouhal scaling: D here, D_j there.
- **Which data each step needs:**
  - **Mean fields only:** k_sh1 and k_sh2 from the spatial FFT of the centreline mean, and the LSA base flows. Non-time-resolved PIV is enough, which is a cheap first-stage statistic in the user's workflow (p. 6–8).
  - **Time-averaged schlieren** may give the shock-spacing chirp too. It is a line-of-sight density gradient, not centreline pressure, so the peak positions should be checked against PIV.
  - Use the full available length and check windowing, as the paper does with a Hanning window. The secondary peak comes from the downstream region (x/D > 4), so a short field of view will miss it.
  - **Time-resolved acoustics:** the tone map comes from an azimuthal microphone array decomposed into m = 0 over a fine Mj sweep (ΔMj = 0.005). A fine sweep is needed to see where A1 and A2 overlap (Mj ≈ 1.11–1.13 here).
- **A test for time-resolved schlieren:** run SPOD at the A1 and A2 tones, then wavenumber-filter the leading modes, as in [Waves in screeching jets](edgington-mitchell-2020-waves-in-screeching-jets.md). The upstream k_x < 0 content should sit near k_kh − k_sh1 for A1 and near k_kh − k_sh2 for A2. For non-time-resolved PIV, use the POD-pair complex mode instead.
- **Possible tension to check:** the Waves paper matched its A2 case (NPR 2.25) with the leading k_s, with a larger mismatch (k_kh − k_s = −3.5 vs −4.0 observed) than for A1. This paper says A2 should involve k_sh2. Reconciling the two on Shock Lab data would be a worthwhile check.
- **Mode switching and intermittency:** the paper only uses block-averaged PSDs and mean flows. It doesn't look at time variation.
  - However, it predicts that A1 and A2 are both absolutely unstable at Mj ≈ 1.12, with A1 growing faster (p. 13). Near staging, the tones may coexist or switch.
  - That suits the SPOD → reconstruction (A1 and A2 bands separately) → Hilbert POD pipeline. It would track the instantaneous amplitude and frequency of each mode and test whether dominance follows the ω0i ranking. The ω0i ↔ amplitude link (p. 13) is a testable hypothesis.
- **Modelling side:**
  - Model 1 is simple to run on the lab's own PIV mean flows. It needs a 1-D Chebyshev LSA (N_r ≈ 250, Lesshafft–Huerre mapping) at a few shock-cell extrema plus the mean-field spectrum. It gives tone estimates but no mode selection (p. 4, 9–11).
  - Model 2 (Floquet SPLSA) adds the absolute growth rate and so mode selection. It uses an idealised tanh base flow with fixed A_sh and needs δ as an input. δ barely moves the frequency but controls ω0i and the A1 cut-off (p. 11–13). Missing physics: spreading, shock decay and nonlinearity.
  - Both models give necessary, not sufficient, conditions; nozzle receptivity and reflection aren't modelled (p. 14).
- **Wider use:** the idea that a varying shock spacing creates extra wavenumber peaks, and so extra closure paths, should carry over to non-axisymmetric nozzles and impinging jets with shock cells. The authors say it could inform screech models for other configurations (p. 15). Watch for multiple tones that share an azimuthal mode.
- **Related notes:**
  - [Nogueira et al. 2021, absolute instability](nogueira-2021-absolute-instability-shock-containing-jets.md): the SPLSA operators, the A_sh = 0.02 choice and the absolute-instability explanation of screech.
  - [Nogueira et al. 2021, wavepacket modulation](nogueira-2021-wavepacket-modulation-shock-containing-jets.md): companion shock-containing-jet modelling.
  - [Mancinelli et al. 2019](mancinelli-2019-screech-prediction-upstream-modes.md): same Pprime facility and acoustic data. Its model reflects off the 4th shock cell; this paper says that model captured the shock-spacing variation only implicitly through parameter choices (p. 14–15).
  - [Edgington-Mitchell et al. 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md): guided jet mode closes both A1 and A2. This paper agrees and moves the A1/A2 difference to the shock wavenumber (p. 2).
  - [Waves in screeching jets](edgington-mitchell-2020-waves-in-screeching-jets.md): experimental and global-LSA confirmation of k_kh ± k_s with a single k_s (p. 2).
  - [Nogueira & Edgington-Mitchell, twin-jet coupling](nogueira-2021-twin-jet-coupling-spatial-lsa.md): similar spatial-LSA tools.
  - Now in the library: [Mancinelli et al.](mancinelli-2021-complex-valued-resonance-model-screech.md) (arXiv 2020, JFM 2021), the complex-valued resonance model with finite-thickness guided-mode bounds, and [Tam et al. (1986)](tam-1986-bbsan-screech-relationship.md). Not yet in the library: Mercier et al. (2017) on the feedback-loop source near the 4th shock cell; Shen & Tam (2002).
