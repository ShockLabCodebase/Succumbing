---
key: "schmidt-2020-guide-spod"
title: "Guide to spectral proper orthogonal decomposition"
authors: ["Schmidt, O. T.", "Colonius, T."]
year: 2020
type: "article"
venue: "AIAA J. 58(3), 1023–1033"
bib: {"journal": "AIAA Journal", "volume": "58", "number": "3", "pages": "1023--1033"}
doi: "10.2514/1.J058809"
arxiv: ""
pdf: "modal-decomposition/Schmidt-Colonius_2020_Guide-To-Spectral-Proper-Orthogonal-Decomposition.pdf"
version: "published"
unverified: ["volume/issue/pages from memory, not in this Article in Advance PDF"]
group: false
facility: ""
data: ["LES", "PIV-TR"]
methods: ["SPOD", "PSD"]
flow: ["round-jet", "subsonic", "wake"]
phenomena: ["KH-wavepackets"]
params: {"M_j": "0.4", "Re": "4.5×10⁵ (jet), 0.8×10⁵ (VAWT)"}
topics: ["modal-decomposition"]
related: ["towne-2018-spod-relationship-dmd-resolvent", "schmidt-2019-streaming-spod", "schmidt-2018-spectral-analysis-jet-turbulence", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "yeung-2024-adaptive-spod-broadband-tonal", "von-saldern-2026-band-ensemble-spod", "sieber-2016-spectral-proper-orthogonal-decomposition", "towne-2022-database-reduced-complexity-modeling"]
cites: ["berkooz-1993-proper-orthogonal-decomposition-turbulent-flows", "schmid-2010-dynamic-mode-decomposition", "schmidt-2018-spectral-analysis-jet-turbulence", "schmidt-2019-streaming-spod", "sieber-2016-spectral-proper-orthogonal-decomposition", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "taira-2017-modal-analysis-fluid-flows-overview", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Practical SPOD–Welch guide: N_FFT bias vs variance, 50% overlap, Hamming + a_w, chi-squared CIs, norms, reading λ₁–λ₂ gaps; M 0.4 jet LES and VAWT PIV examples"
---
# Guide to spectral proper orthogonal decomposition

- **Authors:** O. T. Schmidt (University of California San Diego), T. Colonius (California Institute of Technology)
- **Source:** AIAA Journal 58(3), 1023–1033 (2020), doi:10.2514/1.J058809. Open Access. This file is the "Article in Advance" version (published online 27 Jan 2020), paginated 1–11; page refs below are those numbers, which equal the PDF page numbers.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Schmidt-Colonius_2020_Guide-To-Spectral-Proper-Orthogonal-Decomposition.pdf` (11 pp.)
- **Tags:** SPOD, Welch's method, cross-spectral density, Karhunen–Loève, method of snapshots, block length N_FFT, overlap, Hamming window, window correction factor, spectral leakage, aliasing, bias–variance trade-off, confidence intervals (chi-squared), low-rank behaviour, inner product / norms (Chu energy norm), large data, streaming SPOD, turbulent jet LES, VAWT PIV, MATLAB `spod`

> Volume/issue/page numbers (58(3), 1023–1033) are from my knowledge of the published issue, not from this PDF, which only shows "Article in Advance / 1–11". Check before citing.

## Summary
A practitioner's tutorial on SPOD as computed with the authors' open-source MATLAB `spod` code. Section II places SPOD within Lumley's general POD (Karhunen–Loève) framework: imposing statistical stationarity on space–time POD decouples the problem into one eigenproblem per frequency whose kernel is the cross-spectral density (CSD) tensor, so SPOD modes are coherent in space and time, orthogonal under a space–time inner product, and optimal in energy (p. 1–3). Section III gives the discrete algorithm: estimate the CSD at each frequency with Welch's method (segment one long record into overlapping, windowed blocks, FFT each, and treat each block as a realisation), then solve a small N_blk × N_blk method-of-snapshots eigenproblem (p. 4–5). The core of the paper is the guidance on choosing Δt, N_t, N_FFT and N_ovlp in terms of bias (aliasing, bin smearing), variance (number of blocks), leakage (windowing) and confidence intervals, plus memory strategies for large data (p. 5–7). Two examples, an M = 0.4 jet LES and planar PIV of a vertical-axis wind turbine (VAWT) wake, show how to read SPOD spectra (low-rank gaps, tonal spikes, noise floor) and modes (p. 7–10).

## Key findings
- **SPOD vs standard POD vs DMD** (p. 1, 3):
  - Standard (space-only) POD uses the covariance at zero time lag, so the modes carry no temporal correlation; its expansion coefficients are not correlated in time (p. 3, 10).
  - SPOD modes oscillate at a single frequency and are orthogonal under the space–time inner product (eq. 6); modes at different frequencies are not spatially orthogonal (p. 3–4).
  - For stationary, centred data SPOD modes are DMD modes and represent an optimal average of an ensemble of DMD modes (Towne et al. 2018) (p. 3).
  - Sieber et al.'s (2016) "SPOD" is a different technique (filtered correlation matrix) and is not discussed (p. 2).
- **The fundamental requirement** is many independent realisations, enough that the eigenvectors converge; this must be hoped for and then verified (p. 2). Welch's method builds these from one long record by assuming ergodicity (p. 4).
- **Dependent realisations do no harm**: inflating the ensemble with dependent blocks just adds zero or very small eigenvalues at the end of the spectrum (p. 4).
- **Symmetries should be imposed, not learned**: homogeneous, rotational, reflectional or M-fold rotational symmetry should be enforced in the ansatz (Fourier in a homogeneous direction, azimuthal Fourier modes, symmetric/antisymmetric split, Fourier–Floquet), because finite data express them only imperfectly. The reduced problems are still globally optimal (p. 2–3).
- **Complex input data** (e.g. after azimuthal FFT): positive and negative frequencies are not redundant in the sample, but should have identical true statistics, so it is advisable to average positive/negative frequencies (p. 4).
- **Block length (N_FFT) trade-off** on VAWT PIV window 3, N_t = 9000, 50% overlap (Fig. 2, p. 6):
  - N_FFT = 256 → N_blk = 69: smooth spectrum, narrow 99% confidence band, but wide bins, so the blade-passing frequency (BPF) peak and harmonics leak into neighbouring bins.
  - N_FFT = 2048 → N_blk = 7: BPF and harmonics well resolved, but the 99% confidence bounds are only good to "about a factor of 2" (p. 6).
  - The leading-mode spectrum is lifted for N_FFT = 256 because the same total energy is shared among 8× fewer frequency bins (Fig. 2 caption).
- **Overlap**: 50% (N_ovlp = N_FFT/2) is the accepted best practice from Welch (1967); it reduces the variance of the estimate by about a factor of 11/18 for fixed N_FFT and N_t. Overlaps above 50% give no further gain because blocks become increasingly dependent; they only add tiny eigenvalues (p. 6–7).
- **Use powers of 2 for N_FFT** for classical FFT implementations (footnote, p. 6).
- **Plan parameters from a point PSD**: before an SPOD, study the PSD of one or a few well-resolved time series (hot wire, pressure probe, a single LES grid point) at representative locations (p. 6).
- **Independent realisations need no segmentation**: e.g. high-speed PIV limited by camera memory, where each recorded burst is a realisation (p. 6).
- **Windowing**: the default in `spod` is a Hamming window (eq. 29), with an amplitude correction factor a_w (eq. 30), stated as a_w = 2.0 for Hamming (p. 7). See the check below.
- **Confidence intervals**: assuming Gaussian data and independent blocks, SPOD eigenvalues are chi-squared distributed with 2N_blk degrees of freedom (eq. 31); `[L,P,F,Lc] = spod(...)` returns the bounds in `Lc` (p. 7).
- **Large data** (p. 7):
  - Memory is the bottleneck because all block FFTs must be held to form the CSD at each frequency; with overlap this exceeds the size of the raw data.
  - Remedy in `spod` (optional): save the Fourier realisations to disk and reload frequency by frequency; slower but trades memory for I/O and secondary storage.
  - The eigenproblem (eq. 23) is N_blk × N_blk, independent of the spatial degrees of freedom.
  - For data too large to store, the streaming algorithm of Schmidt & Towne (2019) (`sspod`) updates the CSD eigendecomposition one snapshot at a time using partial Fourier sums, so SPOD can be converged during a simulation or PIV campaign.
- **Reading SPOD spectra** (p. 8, 10):
  - A large gap between λ₁ and λ₂ (low rank) means one mechanism dominates; in the jet this occurs around fD/U ≈ 0.6 (KH wavepackets). Very low and very high frequencies are not low-rank; modes there are better seen as a basis of comparable importance (p. 8).
  - A continuous line through λ₁ across frequency does not mean the same mechanism at neighbouring frequencies (p. 8).
  - Spikes indicate tonal oscillations and harmonics; the global peak gives the most energetic frequencies (p. 10).
  - For experiments, a flattening of the spectrum at high frequency signals SNR of order one (p. 10).
  - Modes and spectrum should always be interpreted together (p. 10).
- **Jet LES result** (Figs. 4–5, p. 8–9): leading modes are wavepackets that move upstream as frequency rises; KH-type for fD/U ≳ 0.2, Orr-type waves downstream of the potential core at lower frequency (citing Schmidt et al. 2018). Subdominant modes show a multi-lobe axial structure, read as a way of achieving orthogonality rather than new physics (p. 8).
- **VAWT PIV result** (Figs. 7–8, p. 8–9): a low-frequency peak at fD/u∞ = 0.238 in all seven windows is a bluff-body-like wake (asymmetric because rotation adds shear on the lower side); BPF at fD/u∞ ≈ 1.59 with two harmonics in window 3 is periodic blade vortex shedding (p. 8–9).
  - SPOD acts as an efficient filter of measurement noise, which is largely uncorrelated in space and/or time; outliers and rare events have broad frequency content and are poorly represented by SPOD modes (p. 9). Conditional space–time POD (Schmidt & Schmid 2019) is suggested for rare events.
  - Against phase averaging: SPOD captures structures at frequencies both commensurate and incommensurate with the BPF, but treats BPF harmonics as mutually uncorrelated in time (p. 7).
  - **Stitching non-simultaneous windows**: SPOD was computed independently in each of the 7 PIV windows; the leading modes were stitched by finding one complex constant per window that best matched the phase with its neighbour (at the location of maximum amplitude, Fig. 8 caption). The close match at window boundaries is taken as evidence of a converged global structure (p. 9).

## Setup / method

### Algorithm (SPOD–Welch, Fig. 1, p. 4–5)
1. **Centre the data** (subtract the mean); POD/SPOD assume zero-mean fluctuations (p. 2, 4).
2. **Impose symmetries first**, e.g. azimuthal FFT for a round jet, then treat each azimuthal mode separately (p. 2–3, 7).
3. **Segment** the N_t snapshots into N_blk blocks of N_FFT snapshots overlapping by N_ovlp (eq. 28).
4. **Window** each block (default Hamming, eq. 29), FFT in time (eq. 18), and multiply by a_w (eq. 30).
5. **Reorder by frequency**: for each f_k, collect the N_blk Fourier realisations into Q̂ ∈ ℂ^{M×N_blk} (eq. 20).
6. **Solve the weighted method-of-snapshots eigenproblem** Q̂ᴴWQ̂Ψ̂ = Ψ̂Λ̂ (with 1/(N−1) scaling, eq. 21, 23), and form modes Φ̂ = Q̂Ψ̂Λ̂^{-1/2} (normalisation implied by Φ̂ᴴWΦ̂ = I, p. 4).
7. **Report** λ_i(f) with confidence intervals (eq. 31) and the modes; check convergence.

### Choice of norm (W) (p. 4–5)
| Norm | q | W | When |
|---|---|---|---|
| Variance | any | I | every point an equally important signal; hot-wire or pressure-probe arrays, or whenever an integral energy is not meaningful |
| Weighted 2-norm | any | ∫_V dV (cell volumes/areas) | discretised fields; quadrature of the continuous inner product, makes modes mesh-independent; trapezoidal rule usually enough; for uniform grids differs from variance only by a constant shift of the spectrum |
| TKE | [u, v, w] | ∫_V diag(1,1,1) dV | incompressible velocity; integral TKE |
| Compressible energy (Chu 1965) | [ρ, u, v, w, T] | ∫_V diag( T̄/(γρ̄M²), ρ̄, ρ̄, ρ̄, ρ̄/(γ(γ−1)T̄M²) ) dV | compressible flows |

- Zero weights select a sub-domain or subset of variables while the excluded parts stay in the modes for interpretation; the spectrum is unchanged versus removing them (p. 5).

### Spectral-estimation parameters (p. 5–7)
| Parameter | Controls | Guidance in the paper |
|---|---|---|
| Δt (f_s = 1/Δt) | Nyquist f_max = f_s/2; aliasing bias | anti-aliasing filters or oversampling then discarding affected frequencies (p. 6) |
| N_FFT | block period T = N_FFT Δt; bin width Δf = f_s/N_FFT (lowest non-zero frequency); bin-smearing bias | larger N_FFT → finer bins but fewer blocks and higher variance; powers of 2 (p. 6) |
| N_ovlp | number of blocks, variance | 50% standard; >50% not useful (p. 6–7) |
| N_t | total record; N_blk via eq. 28 | longer records needed especially to converge subdominant modes (p. 10) |
| Window | spectral leakage of sharp peaks | Hamming default with amplitude correction a_w (p. 7) |
| Zero frequency | — | should be close to zero if the block mean is close to the true mean (p. 6) |

### Example databases (Table 1, p. 8)
| Case | Variables | Grid | N_t | f_s D/U | N_FFT | N_ovlp | N_blk | Norm |
|---|---|---|---|---|---|---|---|---|
| Jet LES (Brès et al. 2018; Schmidt et al. 2018) | ρ, u, v, w, T | N_x = 228, N_r = 51 | 10,000 | 12.5 | 256 | 128 | 77 | Compressible energy |
| VAWT PIV (Araya et al. 2017) | u, v | 7 windows, N_x = 49, 49, 48, 38, 48, 38, 48; N_y = 88 | 9,000 | 40.68 | 512 | 256 | 34 | Planar TKE |

- Normalisation: D = 50 mm (jet) or 0.3 m (turbine); U = 131.43 m/s (jet) or 0.253 m/s (freestream) (Table 1 note).
- **Jet LES**: M = 0.4 isothermal jet, Re = 4.5 × 10⁵, compressible solver "Charles", extension of Brès et al. (2018). Only the axisymmetric (m = 0) component, analysed for pressure (recovered from the ρ and T components of the modes via the linearised equation of state, Fig. 5 caption). Non-equidistant cylindrical grid, so trapezoidal quadrature weights (p. 7). No other numerics given here; see [schmidt-2018-spectral-analysis-jet-turbulence.md](schmidt-2018-spectral-analysis-jet-turbulence.md).
- **VAWT PIV**: three-bladed lab-scale model, Re = 0.8 × 10⁵ (rotor diameter, freestream); planar 2C time-resolved PIV in 7 independently recorded windows, each analysed separately; weighted 2-norm on q = [u, v] as a partial TKE (p. 7–8).
- The Fig. 2 illustration uses window 3 with N_FFT = 256 (N_blk = 69) and 2048 (N_blk = 7), both 50% overlap, unlike Table 1's 512 (p. 6).

> Block counts checked with eq. 28: ⌊(10000−128)/128⌋ = 77, ⌊(9000−256)/256⌋ = 34, ⌊(9000−128)/128⌋ = 69, ⌊(9000−1024)/1024⌋ = 7, all as printed. Note that [schmidt-2018-spectral-analysis-jet-turbulence.md](schmidt-2018-spectral-analysis-jet-turbulence.md) records 78 blocks for the same 10,000-snapshot, 256/128 set in that paper's Table 2; this guide's 77 is the standard Welch count.

### Derived resolutions (my calculation, from Table 1 and eq. 25, 27)
| Case | Δf D/U = (f_s D/U)/N_FFT | Nyquist f D/U |
|---|---|---|
| Jet LES, N_FFT = 256 | 0.049 | 6.25 |
| VAWT PIV, N_FFT = 512 | 0.079 | 20.3 |
| VAWT Fig. 2, N_FFT = 256 / 2048 | 0.159 / 0.020 | 20.3 |

## Key equations
Notation as in the paper; ᴴ is the Hermitian transpose; checked against rendered pages 4–7.

- **Inner product and KL expansion** (eq. 1–3, p. 2): ⟨q₁, q₂⟩ = ∫_Ω q₁*(z) W(z) q₂(z) dz; q(z) = Σ_j a_j φ_j(z); kernel C(z, z′) = E{q(z) q*(z′)}.
- **Space–time inner product and CSD** (eq. 6–7, p. 3):
  $$\langle q_1,q_2\rangle=\int_{-\infty}^{\infty}\!\int_V q_1^*(x,t)\,W(x,t)\,q_2(x,t)\,\mathrm dx\,\mathrm dt,\qquad S(x,x',f)=\int_{-\infty}^{\infty}C(x,x',\tau)\,e^{-i2\pi f\tau}\,\mathrm d\tau,\ \tau=t-t'$$
- **Discrete POD** (eq. 9–17, p. 3–4): C = QQᴴ/(N−1); CWΦ = ΦΛ; method of snapshots QᴴWQΨ = (N−1)ΨΛ_nz, Φ = QΨ. Maximum number of non-zero eigenvalues min(M, N). φ, ψ, λ are the (generalised) left/right singular vectors and squared singular values of Q.
- **Block DFT** (eq. 18, p. 4):
  $$\hat q^{(k)}(f_m)=\sum_{j=0}^{N_{FFT}-1}q^{(k)}(t_{j+1})\,e^{-i2\pi jm/N_{FFT}}$$
- **Per-frequency SPOD** (eq. 20–23, p. 4):
  $$\hat C=\frac{1}{N-1}\hat Q\hat Q^H,\qquad \hat C W\hat\Phi=\hat\Phi\hat\Lambda\quad\text{or}\quad \hat Q^HW\hat Q\hat\Psi=\hat\Psi\hat\Lambda,\ \hat\Phi=\hat Q\hat\Psi,\qquad \hat\Phi^HW\hat\Phi=I$$
- **Sampling** (eq. 24–27, p. 5–6): f_s = 1/Δt; f_max = f_s/2; T = N_FFT Δt = N_FFT/f_s; Δf = 1/T = f_s/N_FFT.
- **Number of blocks** (eq. 28, p. 6):
  $$N_{blk}=\left\lfloor\frac{N_t-N_{ovlp}}{N_{FFT}-N_{ovlp}}\right\rfloor$$
- **Hamming window and correction** (eq. 29–30, p. 7):
  $$w(j)=0.54-0.46\cos\!\left(\frac{2\pi j}{N_{FFT}-1}\right),\ j=0,\dots,N_{FFT}-1;\qquad a_w=\frac{N_{FFT}}{\sum_{j=0}^{N_{FFT}-1}w(j)}$$
- **Confidence interval** for λ_i at level (1−α)×100% (eq. 31, p. 7):
  $$\left[\frac{2N_{blk}\lambda_i}{\chi^2_{2N_{blk}}(1-\alpha/2)},\ \frac{2N_{blk}\lambda_i}{\chi^2_{2N_{blk}}(\alpha/2)}\right]$$
  with χ²_{2N_blk}(p) read as the p-quantile (inverse CDF) of the chi-squared distribution with 2N_blk degrees of freedom.

> Items to verify against the PDF:
> - **a_w for Hamming.** By my calculation Σw ≈ 0.54 N_FFT, so eq. 30 gives a_w ≈ 1/0.54 ≈ 1.85, not the 2.0 stated on p. 7 (2.0 is the Hann value, 1/0.5). Check which window/correction `spod` actually applies before relying on absolute SPOD energies.
> - **Discrete frequencies** (p. 4): printed as f_m = m N_FFT/T; with eq. 26–27 this should be f_m = m/T = m Δf. Eq. 18 also prints the index range as "k = −N_FFT/2+1, …" where m is meant.
> - **Scaling.** The 1/(N−1) factor in eq. 21 and the a_w factor set the absolute eigenvalue level; the Δf scaling to a density is not written out in the paper. Compare against `spod` output before quoting PSD levels.
> - **Chi-squared quantile convention** in eq. 31 is my reading (lower bound uses the larger quantile). My numbers: for N_blk = 7 at 99%, the interval is about [0.45, 3.4] λ; for N_blk = 69 or 77, about [0.77, 1.4] λ (normal approximation to χ², my calculation, not in the paper).

## Data tables
Table 1 is reproduced under Setup. Fig. 2 parameter pairs (VAWT window 3, N_t = 9000, 50% overlap):

| N_FFT | N_ovlp | N_blk | Δf D/U (derived) | Outcome (p. 6) |
|---|---|---|---|---|
| 256 | 128 | 69 | 0.159 | smooth, narrow 99% CI, BPF peaks leak |
| 2048 | 1024 | 7 | 0.020 | BPF and harmonics resolved, CI ~factor 2 |

## Figures worth remembering
- **Fig. 1 (p. 5):** schematic of the SPOD–Welch algorithm: segment → FFT each block → reorder by frequency → eigendecompose the CSD per frequency. The standard picture for explaining SPOD.
- **Fig. 2 (p. 6):** VAWT SPOD spectra with 99% confidence shading for N_FFT = 2048 vs 256, and their leading modes overlaid; the clearest illustration of the bias–variance trade-off and of the leading-mode "lift" at small N_FFT.
- **Fig. 3 (p. 8):** instantaneous and mean pressure of the M = 0.4 jet LES.
- **Fig. 4 (p. 8):** jet SPOD spectrum (all λ_i in grey, λ₁–λ₂ gap shaded red, PSD = Σλ_i in blue); gap largest near fD/U ≈ 0.6.
- **Fig. 5 (p. 9):** first and second pressure modes at fD/U = 0.1, 0.6, 1.5; wavepackets moving upstream and shortening with frequency; multi-lobe second modes.
- **Fig. 7 (p. 9):** VAWT PSD (sum of modes) and λ₁ per unit area for all 7 windows, with −5/3 line; peaks at 0.238 and 1.59.
- **Fig. 8 (p. 9):** phase-stitched leading modes across the 7 PIV windows at fD/u∞ = 0.238 (wake) and 1.58 (BPF).

## Notation
- q: state vector (fluctuations); M: degrees of freedom (points × variables); N (or N_blk): number of realisations.
- Q, Q̂: data matrix and its per-frequency Fourier counterpart; C, Ĉ: sample covariance / CSD; S: CSD tensor; W: weight matrix.
- Φ̂ (φ): SPOD modes; Ψ̂: expansion coefficients from the method of snapshots; Λ̂, λ_i: eigenvalues (modal energies), λ₁ ≥ λ₂ ≥ ….
- N_t, N_FFT, N_ovlp, N_blk: snapshots, block length, overlap, blocks. Δt, f_s, f_max, T, Δf: sampling interval, sampling and Nyquist frequencies, block period, bin width.
- w(j), a_w: window and its correction factor. χ²_{2N_blk}: chi-squared distribution; α: significance level.
- fD/U: Strouhal number based on jet diameter/velocity or rotor diameter/freestream velocity.

## Relevance to this project
This is the practical reference for the SPOD step of the workflow in CLAUDE.md and for the SPOD → reconstruction → Hilbert POD pipeline, and it describes the MATLAB `spod` code the group's analysis presumably builds on.

- **Data requirements:**
  - Welch SPOD needs **time-resolved**, uniformly sampled data with a record long enough for many blocks: high-speed schlieren, microphone arrays, LES. It is not applicable to snapshot PIV, which should use POD or POD pairs ([edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)) or space-only HPOD ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)).
  - Burst-mode high-speed recordings limited by camera memory can be used directly as independent realisations without segmentation (p. 6), as long as each burst is long enough for the desired Δf.
  - Non-simultaneous fields of view (several schlieren or PIV windows recorded separately) can each be analysed and then phase-stitched with one complex constant per window, as for the VAWT (p. 9). Useful for multi-window schlieren or PIV of long jets.
- **Parameter checklist for screech, impingement and resonance data:**
  - Start from a point PSD (one microphone or one schlieren pixel) to choose f_s, N_FFT and the record length (p. 6).
  - Tonal flows need a bin width small enough to resolve the tone and to separate staging modes (A1/A2, B, C) and harmonics; with Welch this costs blocks and widens the confidence interval (Fig. 2). Report N_FFT, overlap, window, N_blk and Δf in every analysis, and plot the eq. 31 confidence band.
  - The leading-mode level depends on N_FFT (Fig. 2 caption), so compare SPOD energies only at the same Δf.
  - 50% overlap with a Hamming (or Hann) window is the default; more overlap gains nothing (p. 6–7).
  - For experiments, the high-frequency flattening of the SPOD spectrum marks the noise floor (p. 10); SPOD modes are themselves a good noise filter (p. 9).
  - For axisymmetric jets, decompose azimuthally first (m = 0, ±1, …); for twin or rectangular jets use the reflection-symmetry split, as in [yeung-2022-3d-spod-twin-rectangular-jet.md](yeung-2022-3d-spod-twin-rectangular-jet.md).
  - Choose W deliberately: identity for microphone arrays or schlieren intensity (no energy meaning), area weights on non-uniform grids, Chu norm for compressible LES (p. 4–5).
- **Intermittency and mode switching:** the paper assumes stationarity and gives each mode a single frequency over the whole record; it says nothing about time-local behaviour except to note that rare events with broad spectra are poorly captured (p. 9). Intermittent staging or mode switching therefore needs the follow-on tools: SPOD-based reconstruction and frequency–time analysis (Nekkanti & Schmidt 2021, not yet indexed), then HPOD ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)), or wavelets. The block choice here directly sets the frequency selectivity available to that reconstruction step.
- **Alternatives to Welch for tonal and broadband data:** multitaper/adaptive SPOD ([yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md)) and band-ensemble SPOD ([von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md)) remove much of the N_FFT trade-off shown in Fig. 2; both use this paper's Welch SPOD as the baseline.
- **Modelling side:** the paper is about estimation, not models, but it points to the SPOD–resolvent link (Towne et al. 2018) that makes SPOD modes directly comparable with resolvent and stability predictions (p. 1–3, 10). The jet example's KH/Orr interpretation is developed in [schmidt-2018-spectral-analysis-jet-turbulence.md](schmidt-2018-spectral-analysis-jet-turbulence.md) and [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md); the SPOD–DMD relation connects to [schmid-2010-dynamic-mode-decomposition.md](schmid-2010-dynamic-mode-decomposition.md) and [rowley-2009-spectral-analysis-nonlinear-flows-koopman.md](rowley-2009-spectral-analysis-nonlinear-flows-koopman.md). The Towne et al. database ([towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md)) provides jet LES with the same kind of parameters for testing an implementation.
- **Facility:** not Shock Lab group work (Caltech/UCSD; VAWT data from Araya et al. 2017).
- **Follow-up candidates for `/add-paper`:** Towne, Schmidt & Colonius (2018), SPOD and its relation to DMD and resolvent; Schmidt & Towne (2019), streaming SPOD; Nekkanti & Schmidt (2021), SPOD-based frequency–time analysis and reconstruction; Schmidt & Schmid (2019), conditional space–time POD for intermittent events; Welch (1967).
