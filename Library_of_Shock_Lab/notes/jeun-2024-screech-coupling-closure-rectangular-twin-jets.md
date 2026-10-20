---
key: "jeun-2024-screech-coupling-closure-rectangular-twin-jets"
title: "A closure mechanism for screech coupling in rectangular twin jets"
authors: ["Jeun, Jinah", "Wu, Gao Jun", "Lele, Sanjiva K."]
year: 2024
type: "article"
venue: "JFM 987, A5"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "987", "pages": "A5"}
doi: "10.1017/jfm.2024.376"
arxiv: ""
pdf: "non-axisymmetric-and-twin-jets/Jeun-EtAl_2024_A-Closure-Mechanism-For-Screech-Coupling-In-Rectangular-Twin-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "charLES LES (Stanford CTR)"
data: ["LES"]
methods: ["SPOD", "Hilbert-transform", "symmetry-decomposition", "wavenumber-filtering", "coherence", "resonance-model"]
flow: ["twin-jet", "rectangular-jet", "supersonic", "overexpanded"]
phenomena: ["screech", "coupling", "intermittency", "guided-jet-mode", "flapping", "triadic-interaction"]
params: {"NPR": "3", "M_d": "1.5", "AR": "2", "s/h": "3.5", "St": "0.373"}
topics: ["non-axisymmetric-and-twin-jets", "screech"]
related: ["yeung-2022-3d-spod-twin-rectangular-jet", "esfahani-2021-coupling-modes-twin-rectangular-jets", "esfahani-2021-control-twin-rectangular-jet-coupling", "bres-2021-les-twin-rectangular-jets-plasma", "nogueira-2021-twin-jet-coupling-spatial-lsa", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets"]
cites: ["bell-2021-intermittent-modal-coupling-screeching-twin-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "esfahani-2021-control-twin-rectangular-jet-coupling", "esfahani-2021-coupling-modes-twin-rectangular-jets", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "mancinelli-2019-screech-prediction-upstream-modes", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "nogueira-2024-guided-jet-waves", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1995-supersonic-jet-noise", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent", "wong-2023-steady-unsteady-coupling-twin-round-jets", "yeung-2022-3d-spod-twin-rectangular-jet"]
summary: "charLES LES of AR-2 twin rectangular jets (NPR 3): intermittent out-of-phase coupling (Hilbert Δφ, D2 AA vs AS); phase-locked SPOD k_x split shows guided-jet-mode closure"
---
# A closure mechanism for screech coupling in rectangular twin jets

- **Authors:** Jinah Jeun (Center for Turbulence Research, Stanford; correspondence address KTH), Gao Jun Wu, Sanjiva K. Lele (Stanford)
- **Source:** J. Fluid Mech. 987, A5 (2024). Received 28 Sep 2022, revised 28 Feb 2024, accepted 10 Apr 2024. Open access (CC BY 4.0).
- **DOI:** 10.1017/jfm.2024.376
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/non-axisymmetric-and-twin-jets/Jeun-EtAl_2024_A-Closure-Mechanism-For-Screech-Coupling-In-Rectangular-Twin-Jets.pdf` (26 pp.; local only, not in Git)
- **Tags:** twin jets, rectangular jet, aspect ratio 2, screech, jet coupling, out-of-phase coupling, intermittency, Hilbert transform, instantaneous phase, D2 symmetry decomposition, SPOD, ensemble-averaged SPOD, streamwise Fourier decomposition, guided jet mode, free-stream acoustic mode, duct-like mode, spatial cross-correlation, points of return, LES (charLES), overexpanded jet, NPR 3

## Summary
The paper asks whether twin rectangular jet screech is closed by free-stream acoustic waves or by the upstream guided jet mode. It uses existing wall-modelled LES (charLES) of overexpanded AR-2 twin rectangular jets (M_d = 1.5, NPR = 3, centre spacing 3.5h), validated against Cincinnati experiments. Each jet has a self-excitation loop (its own upstream wave returning to its own lip) and a cross-excitation loop (free-stream sound from the other jet arriving at its lip). A Hilbert transform of near-lip pressure shows that the screech is intermittent: long plateaus of out-of-phase coupling are broken by bursts where out-of-phase (AA) and in-phase (AS) components compete. To build a phase-locked model, the authors keep only the three out-of-phase plateaus, run SPOD on each, average the leading modes, and split them by streamwise wavenumber into KH (k+), guided jet mode (k−) and free-stream acoustic (c−) parts using a KH-minus-shock-wavenumber bandpass and a phase-speed cut. A two-probe spatial cross-correlation of each wave gives time delay and gain relative to the nozzle lip, and from these the "points of return" satisfying the loop phase condition. The guided jet mode has much larger gain, more points of return lying at peaks of shock/KH interaction, and its points coincide with the cross-excitation points; so the guided jet mode is the preferred closure, as for single jets.

## Key findings
- **Coupling mode and intermittency** (p. 5–10, Figs. 2–8):
  - SPOD of both jets' minor-axis mid-planes in one data matrix shows a sharp tonal peak at St_sc = 0.37 with large separation between mode 1 and the rest. The leading mode holds almost 96% of the energy at that frequency (p. 7). Mode shapes show out-of-phase coupling of the two jets about the centre axis z/h = 0 (Fig. 3); v′-SPOD in the major-axis plane y/h = 0 shows the same directly (Fig. 4).
  - The Hilbert-transform phase difference Δφ between the two jets' near-lip pressure (x/h, y/h) = (0, 1) sits on plateaus at odd multiples of π (out-of-phase), joined by irregular jumps through even multiples of π. Jumps coincide with drops in screech amplitude on the scalograms (p. 9, Figs. 6–7).
  - D2 symmetry decomposition (Yeung, Schmidt & Brès 2022) at (x/h, y/h, z/h) = (0, 1, 1.75): the components symmetric about the major axis (SS, SA) are much weaker than the antisymmetric (flapping) ones (AA, AS) (p. 10, Fig. 8). AA = out-of-phase, AS = in-phase coupling. AA dominates most of the time; when phase locking breaks, AA and AS are about equally strong. The authors attribute intermittency to this competition, as in round twin jets (Bell et al. 2021) (p. 10).
- **Wave content of the ensemble-averaged SPOD mode** (p. 12–14, Figs. 10–12, Table 1):
  - Downstream (k+) band centred at k_x h = 2.20, phase speed about 0.7U_j (KH) (p. 13).
  - Upstream peak at k_x h = −2.51 (p′) and −2.20 (v′), slightly beyond the ambient sound wavenumber k_c h = −1.80. The p′/v′ difference is within the wavenumber resolution Δk_x h = 2π/20 ≈ 0.31 set by the 20h domain (p. 13).
  - Mean centreline U Fourier transform gives shock wavenumbers k_s1 h = 4.71 and k_s2 h = 9.42 (Fig. 12). The main upstream blob sits at k+ − k_s1 = −2.51 (guided jet mode); weaker lobes confined to the jet sit at k+ − k_s2 = −7.22 (duct-like mode, as in Edgington-Mitchell et al. 2022) (p. 13–14).
  - The main upstream blob has strong support inside the jet and extends beyond the shear layers (p. 13).
- **Separated upstream modes** (p. 15, Fig. 13): the guided jet mode k− peaks at x/h ≈ 7.5 (fifth–sixth shock cell) and is maximal in the jet core for v′; the free-stream acoustic mode c− peaks further upstream at x/h ≈ 5 and extends further downstream.
- **Cross-correlation results** (p. 18–20, Fig. 14, Tables 3–4):
  - Time delay varies almost linearly with x. Phase speeds: guided jet mode u_p/U_j ≈ −0.71 (in "reasonable agreement" with LSA of Edgington-Mitchell & Nogueira 2023); KH u_p/U_j ≈ 0.78; c− supersonic (p. 18–19).
  - c− amplitude decays as ~1/r; c− delay changes quickly near the nozzle because of scattering at the nozzle (p. 19).
  - Gain α of k− rises downstream, peaks at x/h ≈ 7.5 and then decays fast; it is "appreciably larger" than c−. KH amplitude is very large for 5 < x/h < 12 (p. 20).
  - At St = 0.373, max gain (p′): c−,1 = 1.16, k−,1 = 10.10, k+,1 = 74.71; cross-excitation c−,2→1 = 0.63 in both CA and CG cases. At the neighbouring non-resonant St = 0.367 and 0.380 the guided-mode gain drops (8.05, 3.13) and c− gains relative importance (Table 3, p. 20). v′ gives the same trend (Table 4).
- **Points of return** (p. 20–21, Fig. 15):
  - Searched over 2.5 ≤ x/h ≤ 12.5. The guided-mode loop (SG) has more eligible points than the acoustic loop (SA), and they sit mostly at troughs of (V/U_j)α_k+, i.e. at peaks of the magnitude of shock/KH interaction strength.
  - Cross-excitation points (out-of-phase condition) synchronise with SG points (CG–SG, arrows in Fig. 15) but not with SA points (CA–SA). The authors read this as evidence that the sources feeding cross-excitation are where the guided jet mode is excited, so the guided jet mode closes the coupled loop (p. 21).
  - Points for cross-excitation differ slightly between the two jets; the authors blame sensitivity of the k−/c− filter rather than SPOD convergence. Self-excitation points are almost identical for both jets (p. 21).
- **Non-resonant frequencies** (p. 21–23, Figs. 16–18): at St = 0.367 and 0.383 the SG/CG synchronisation rarely happens; the extracted "guided modes" lose the y/h = 0 and jet-to-jet symmetry, wavenumber spectra are dispersed and the upstream peak often lies at |k| < |k_c| (supersonic), which is not guided-mode behaviour. The authors accept these may not be true guided jet modes (which exist only in a narrow band; Towne et al. 2017) and say LSA is needed, but argue their absence off-resonance still supports the guided mode's role (p. 22–24).

> Inconsistency: the off-peak frequencies are St = 0.367/0.380 in Tables 3–4 (p. 20) but St = 0.367/0.383 in Figs. 16–18 (p. 22–23). The screech is quoted as St = 0.37 (p. 5) and 0.373 (Tables 3–4).

## Setup / method
- **LES database** (p. 3–4; Jeun et al. 2022, AIAA J 60):
  - charLES (Cascade Technologies; Brès et al. 2017), fully compressible, unstructured. Details of grid, SGS model and wall model are in Jeun et al. (2022), not repeated here.
  - Validated against experiments at the University of Cincinnati (Gutmark group, Karnam et al.). Of three simulated cases, NPR = 3 (overexpanded) had the strongest screech and is used here (p. 4).

  | Quantity | Value |
  |---|---|
  | Nozzle | Twin rectangular C-D, aspect ratio 2, sharp throat (internal oblique shocks) |
  | Design Mach M_d | 1.5 |
  | NPR (P_t/P∞) | 3 (overexpanded) |
  | M_j | ≈ 1.36 *(own isentropic estimate; not stated)* |
  | Centre-to-centre spacing | 3.5h (jets at z/h = ±1.75) |
  | Length scale | nozzle exit height h; origin at the middle of the nozzle exits |
  | Axes | x streamwise, y minor axis, z major axis |
  | Run length | 1400 h/c∞ ≈ 400 screech cycles |
  | Data planes | minor-axis mid-planes of each jet (z/h = ±1.75), 0 ≤ x/h ≤ 20, −5 ≤ y/h ≤ 5, Δx = Δy = 0.05h; also major-axis plane y/h = 0 |
  | Sampling | every 0.1 h/c∞ (time-resolved) |
  | St | f D_e/U_j (equivalent diameter, fully expanded velocity) |
  | Screech | St_sc = 0.37 (0.373 in Tables 3–4) |

- **SPOD (time-resolved)** (p. 4–6, 11):
  - State q = [ρ, u, v, w, T]ᵀ with Chu's compressible energy norm (eq. 2.5); method of snapshots; Welch CSD, 75% overlap. Both jets' planes stacked in one data matrix to keep their cross-correlation. Pressure modes rebuilt from ρ and T via the linearised equation of state (p. 6).
  - Major-axis-plane SPOD uses v′ only (L2 norm).
  - **Ensemble-averaged SPOD:** three phase-locked out-of-phase windows, t c∞/h ∈ [5.5, 366], [407, 725], [1074, 1320] (grey in Fig. 6). SPOD on each, then the leading modes for each jet are averaged. Block size 1888 snapshots, Hann window, 75% overlap, giving 2–4 blocks per window and ΔSt = 0.007. Convergence was checked by varying block size (p. 11).
  - The block length was chosen so that a frequency bin falls exactly on the measured screech frequency (p. 11).
- **Hilbert transform** (p. 8): analytic signal of near-lip pressure for each jet; Δφ(t) = φ1 − φ2. Scalograms (wavelets) are reproduced from Jeun et al. (2022). The signal is not band-pass filtered before the Hilbert transform as far as the text says.
- **D2 decomposition** (p. 9–10): four-way reflection split of p′ about y = 0 and z = 0 (eq. 4.6–4.9).
- **Wave separation** (p. 12–15):
  - Streamwise FFT of the ensemble-averaged SPOD mode (domain 20h, so Δk_x h ≈ 0.31). Sign of k_x (phase velocity) is used as a proxy for group-velocity direction.
  - KH band: modulus > 10% of the positive-k maximum, giving k_x h = [1.38, 3.58], i.e. convection speeds 0.43–1.12U_j, matching the shock-cell-region speeds in 2.5 ≤ x/h ≤ 12 (Jeun et al. 2022).
  - Upstream band = KH band − k_s1: k_x h = [−3.33, −1.13]. Within it, supersonic phase speeds → c−; subsonic → k−.
- **Spatial cross-correlation** (p. 15–18; after Wu, Lele & Jeun 2020, 2023):
  - Model q(x2, t) = α q(x1, t − τ) + noise; with the leading SPOD mode at f_sc as a harmonic signal, τ and α follow from ζ = q̂1* q̂2 / (q̂1* q̂1) (eq. 6.10).
  - Probe lines: k+ and k− along y/h = 0.4 (p′) or y/h = 0 (v′), reference at the nozzle exit on the same line. c− (self and cross) along y/h = 5, reference at (x/h, y/h) = (0, 0.5) (p. 18).
  - Phase condition: self-excitation loop delay = N T_sc; cross-excitation = N T_sc (in-phase) or (N + ½) T_sc (out-of-phase) (eq. 6.11–6.12). Maximum receptivity is assumed at the nozzle exit.
  - Shock/KH interaction strength proxy: (V/U_j)·α_k+ along the probe line (Fig. 15).
  - The authors present this as Powell's phased-array model with the equal-spacing assumption relaxed, compatible with distributed sources (Tam & Tanna 1982) (p. 18).
- **No stability or model analysis is run here.** Guided-mode existence off-resonance is left to future LSA (p. 22–24). The authors contrast their "two isolated jets plus imposed phase" view with the Floquet LSA of Nogueira & Edgington-Mitchell (2021), which gives naturally coupled modes (p. 8).

## Key equations
- SPOD: $\hat{\mathbf C}=\frac{1}{N-1}\hat{\mathbf Q}^H\hat{\mathbf Q}$, $\hat{\mathbf C}\mathbf W\hat{\boldsymbol\Phi}=\hat{\boldsymbol\Phi}\boldsymbol\Lambda$ (eq. 2.3–2.4, p. 5).
- Chu norm (eq. 2.5, p. 5): $\langle\mathbf q_1,\mathbf q_2\rangle_E=\iiint\mathbf q_1^*\,\mathrm{diag}\!\left(\dfrac{\bar T}{\gamma\bar\rho M_j^2},\bar\rho,\bar\rho,\bar\rho,\dfrac{\bar\rho}{\gamma(\gamma-1)\bar T M_j^2}\right)\mathbf q_2\,\mathrm dx\,\mathrm dy\,\mathrm dz$, $\mathbf q=[\rho,u,v,w,T]^T$.
- Hilbert transform and phase (eq. 4.1–4.5, p. 8): $\tilde x=x*\frac{1}{\pi t}$, $\tilde z=x+i\tilde x=a(t)e^{i\phi(t)}$, $\phi=\arctan(\tilde x/x)$, $\Delta\phi=\phi_1-\phi_2$ (jet 1 at z/h = +1.75).
- D2 split (eq. 4.6–4.9, p. 9–10), e.g. $p'_{AA}=\tfrac14[p'(x,y,z)-p'(x,-y,z)-p'(x,y,-z)+p'(x,-y,-z)]$; first subscript about the major axis y = 0, second about the centre axis z = 0; the four parts sum to p′.
- Two-probe model and correlation (eq. 6.1–6.5, p. 16): $q(\mathbf x_2,t)=\alpha q(\mathbf x_1,t-\tau)+n(t)$, $R_{12}(\tau')=\alpha R_{11}(\tau'-\tau)$, with Wiener–Khinchin $R=\int S e^{i2\pi f\tau}\mathrm df$.
- Harmonic signal $q=\hat\phi_1(\mathbf x,f_{sc})e^{i2\pi f_{sc}t}$ (6.6) gives (6.8–6.9) and (eq. 6.10a–c, p. 17): $\tau=-\dfrac{\arg\zeta}{2\pi f},\quad\alpha=|\zeta|,\quad\zeta=\dfrac{\hat q_1^*\hat q_2}{\hat q_1^*\hat q_1}$.
- Self-excitation points of return (eq. 6.11, p. 17): $x$ s.t. $[\tau_{k_+}(x)-\tau_-(x)]/T_{sc}=N$, with τ− = τ_k− or τ_c−.
- Cross-excitation (eq. 6.12, p. 17): $x_2$ s.t. $[\tau_{k_+,1}(x_1)-\tau_{c_-,2\to1}(x_2)]/T_{sc}=N$ (in-phase) or $N+\tfrac12$ (out-of-phase).

> Equations checked against rendered pages 5, 9 and 17. Eq. 6.7 as printed gives S12 = 0 "if f = f_sc" and the q̂*q̂/T_sc term "otherwise"; the cases look swapped (typo in the paper). Eq. 6.1 omits α in the extracted text; the α is implied by "α measures the growth/decay" (p. 16) — check the PDF.

## Data tables
**Table 1 (p. 14): peak wavenumbers at the screech frequency** (same for both jets)

| SPOD mode | k_c h | k−,max h | k+,max h | k_s1 h | k_s2 h | k+ − k_s1 | k+ − k_s2 |
|---|---|---|---|---|---|---|---|
| p′ | −1.80 | −2.51 | 2.20 | 4.71 | 9.42 | −2.51 | −7.22 |
| v′ | −1.80 | −2.20 | 2.20 | 4.71 | 9.42 | −2.51 | −7.22 |

> Check: 2.20 − 4.71 = −2.51 and 2.20 − 9.42 = −7.22. k_s2 = 2k_s1. Shock spacing 2π/4.71 ≈ 1.33h, so x/h = 7.5 ≈ 5.6 cells, matching "fifth–sixth shock cell" (own calculation).

**Tables 3–4 (p. 20): maximum gain of each loop component**

| St | c−,1 | k−,1 | k+,1 | c−,2→1 given c−,1 | c−,2→1 given k−,1 |
|---|---|---|---|---|---|
| p′ 0.367 | 2.25 | 8.05 | 48.56 | 2.30 | 2.39 |
| p′ **0.373** | 1.16 | 10.10 | 74.71 | 0.63 | 0.63 |
| p′ 0.380 | 1.13 | 3.13 | 65.11 | 1.07 | 0.96 |
| v′ 0.367 | 2.68 | 6.90 | 33.11 | 1.32 | 2.68 |
| v′ **0.373** | 1.11 | 9.18 | 141.44 | 0.58 | 0.58 |
| v′ 0.380 | 2.08 | 4.68 | 49.71 | 1.18 | 1.20 |

**Derived (own calculations, not in paper):** M_j ≈ 1.36 for NPR 3. Phase-locked window lengths ≈ 360, 318 and 246 h/c∞ (≈ 3600, 3180, 2460 snapshots), which with 1888-snapshot blocks at 75% overlap give 4, 3 and 2 blocks, consistent with "2–4" (p. 11). k+,max = 2.20 with u_p ≈ 0.7U_j and the KH band edges 1.38/3.58 → 1.12/0.43U_j both imply D_e ≈ 1.5h (fully expanded equivalent diameter, if AR-2 exit area 2h²; exit-area D_e would be 1.60h).

## Figures worth remembering
- **Fig. 1 (p. 4):** mean U/U_j in the major- and minor-axis planes.
- **Fig. 2 (p. 5):** SPOD eigenspectra (both jets in one matrix): sharp tone at St 0.37, large gap to mode 2.
- **Fig. 3–4 (p. 6):** leading SPOD modes (p′, v′) for each jet and the major-axis-plane v′ mode: out-of-phase flapping.
- **Fig. 5 (p. 7):** schematic of self-excitation (internal probe array, k−) and cross-excitation (external array, c−,21).
- **Fig. 6 (p. 9):** Hilbert phase difference Δφ/π over 1400 h/c: plateaus at odd multiples, red-shaded switching bursts. Key intermittency figure.
- **Fig. 7 (p. 9):** wavelet scalograms of each jet's signal showing screech dropouts.
- **Fig. 8 (p. 10):** instantaneous amplitude of p′_AA vs p′_AS: AA dominant except during switching.
- **Fig. 10–11 (p. 13–14):** upstream/downstream split of the v′ mode; k_x–y wavenumber spectra with guided (k+ − k_s1), duct-like (k+ − k_s2) and ±k_c lines.
- **Fig. 12 (p. 15):** Fourier transform of mean centreline U giving k_s1, k_s2.
- **Fig. 13 (p. 16):** |k−| (peak x/h ≈ 7.5, in the core) vs |c−| (peak x/h ≈ 5).
- **Fig. 14 (p. 19):** for c−,1, k−,1, k+,1, c−,2→1: probe line, τ/T_sc(x), α(x) with points of return (SA, SG, CA, CG symbols).
- **Fig. 15 (p. 21):** points of return on (V/U_j)α_k+ for each jet; arrows mark CG–SG synchronisation (by eye, one arrow for jet 1 and two for jet 2).
- **Fig. 16–18 (p. 22–23):** off-resonance points of return, asymmetric "guided modes" and dispersed wavenumber spectra.

## Notation
- h: nozzle exit height. D_e: equivalent diameter. U_j: fully expanded velocity. c∞ (c): ambient sound speed. T_sc, f_sc: screech period and frequency. St = f D_e/U_j.
- k+: downstream KH wave; k−: upstream guided jet mode; c−: upstream free-stream acoustic wave; c−,21 (c−,2→1): sound from jet 2 reaching jet 1. k_s1, k_s2: primary and second-harmonic shock wavenumbers.
- τ: time delay; α: gain (relative amplitude); N: positive integer.
- SA/SG: self-excitation closed by acoustic/guided mode. CA/CG: cross-excitation relative to SA/SG (Table 2, p. 20). Not to be confused with the D2 subscripts.
- D2 subscripts XY: X = symmetry about the major axis plane y = 0 (the plane containing both jet axes), Y = about the centre (internozzle) plane z = 0 (Rodríguez et al. 2018 convention). AA = out-of-phase flapping, AS = in-phase flapping.
- "In-phase/out-of-phase" refers to jet-to-jet coupling; "symmetric/antisymmetric" to each jet's own response (p. 8).

## Relevance to this project
This project studies resonance and feedback in jets with experimental data (schlieren, acoustics, PIV), including non-axisymmetric nozzles; see CLAUDE.md. This paper is not Shock Lab group work: it is a Stanford LES study validated against University of Cincinnati experiments.
- **Methods and data requirements:**
  - *SPOD at the tone → streamwise FFT → wavenumber bandpass (k+ − k_s) + phase-speed cut* needs time-resolved data. Schlieren from the lab would suit it directly, with schlieren intensity standing in for p′/v′. Domain length sets Δk_x (here 2π/20h); short fields of view blur the guided/acoustic split, which the authors admit is the sensitive step (p. 13, 21).
  - The k_s values come from the FFT of the mean centreline velocity; for schlieren, the mean intensity along the axis could serve the same purpose.
  - *Two-probe cross-correlation from a single SPOD mode* (eq. 6.10) gives τ(x) and α(x) along any line, i.e. phase speed and gain maps per wave, and the points-of-return test (eq. 6.11–6.12). It is a cheap check to run on the lab's SPOD outputs (e.g. via SPODPlayer files). Because it uses one harmonic mode, it carries no information on temporal variation.
  - *Non-time-resolved PIV* could only reach the wave split through a POD pair at the tone (as in [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md)); the cross-correlation of a POD-pair complex mode would work the same way.
- **Intermittency and mode switching (for the SPOD → reconstruction → HPOD pipeline):**
  - The Hilbert phase difference between two near-lip signals, plus D2-decomposed instantaneous amplitudes of AA vs AS, is a simple way to label coupled vs switching periods (Figs. 6, 8). Note the Hilbert transform is applied to raw (apparently unfiltered) pressure; band-pass filtering around St_sc first, or SPOD-based reconstruction of the screech band, would make the phase cleaner.
  - The "segment by phase plateau, then ensemble-average SPOD modes" trick is a way to get clean phase-locked modes from intermittent data. Its cost is coarse frequency resolution (ΔSt = 0.007) and only 2–4 blocks per window. HPOD on SPOD-reconstructed data would track the AA/AS competition continuously rather than discarding the switching periods.
  - It is a twin rectangular analogue of round-twin-jet intermittent coupling (Bell et al. 2021, cited but not in the library; [Wong et al. 2023](wong-2023-steady-unsteady-coupling-twin-round-jets.md), which has Weightman as co-author).
- **Modelling side:** no LSA or resolvent analysis is run; the guided-mode identification rests on phase speed and wavenumber matching. Its guided-mode phase speed (−0.71U_j) is only checked against an AIAA LSA paper (Edgington-Mitchell & Nogueira 2023). The off-resonance modes fail guided-mode checks and the authors call for LSA (cf. the band-of-existence argument in [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md) and the narrow-band existence in Towne et al. 2017). The "two isolated jets plus imposed phase" model contrasts with the coupled Floquet LSA there.
- **Agreement with other notes:**
  - Guided-mode closure agrees with round-jet evidence ([edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md)) and the absolute-instability view ([nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md)).
  - The guided (k+ − k_s1) and duct-like (k+ − k_s2) upstream waves follow the triadic picture of [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md) and [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md). Here the duct-like wave is upstream (k+ − k_s2), whereas the 2020 note's duct-like wave is downstream at k_kh + k_s.
  - Out-of-phase coupling in this overexpanded case (M_j ≈ 1.36) agrees with the OSU AR-2 twin-jet survey in [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md) (overexpanded → out-of-phase; M_j 1.35 phase drifting, i.e. intermittent). OSU spacing is about 3.6h vs 3.5h here. Forcing to set coupling: [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md). Same LES code family (charLES) on the OSU geometry: [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md).
  - The D2 decomposition comes from Yeung, Schmidt & Brès (2022): [yeung-2022-3d-spod-twin-rectangular-jet.md](yeung-2022-3d-spod-twin-rectangular-jet.md), whose SPOD also found AA and AS tonal and SS/SA damped (p. 10).
  - Symmetry labels: by my mapping, AA here is the same symmetry class as 1AA in [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md) (both letters refer to the plane containing both jets, then the internozzle plane). The round twin jets there locked into 1SS (flapping in the plane of both jets), while these rectangular jets flap normal to it (minor axis), so AA/AS dominate. Check this mapping before relying on it.
- **Related works cited, candidates for `/add-paper`:** Jeun et al. 2022 (AIAA J, the LES database); Wu, Lele & Jeun 2020/2023 (cross-correlation method, single rectangular jet); Bell et al. 2021 and Wong et al. 2023 (intermittent/unsteady twin-jet coupling); Webb et al. 2023 (empirical coupling-mode model); Samimy et al. 2023 (JFM, twin-jet control); Edgington-Mitchell et al. 2022 (unifying theory of screech); Gojon et al. 2019 (rectangular screech modes); Stahl et al. 2022 (dual impinging jet resonance model); Towne et al. 2017 (guided modes).
