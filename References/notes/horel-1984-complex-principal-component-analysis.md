---
key: "horel-1984-complex-principal-component-analysis"
title: "Complex Principal Component Analysis: Theory and Examples"
authors: ["Horel, J. D."]
year: 1984
type: "article"
venue: "J. Clim. Appl. Meteorol. 23(12), 1660–1673"
bib: {"journal": "Journal of Climate and Applied Meteorology", "volume": "23", "number": "12", "pages": "1660--1673", "publisher": "American Meteorological Society"}
doi: ""
arxiv: ""
pdf: "time-frequency-methods/Horel_1984_Complex-Principal-Component-Analysis-Theory-And-Examples.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["synthetic", "field-data"]
methods: ["HPOD", "Hilbert-transform", "POD"]
flow: ["generic"]
phenomena: ["coherent-structures"]
params: {}
topics: ["time-frequency-methods", "modal-decomposition"]
related: ["raiola-2025-hilbert-pod", "davey-2025-hpod-sphere-wake", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "towne-2018-spod-relationship-dmd-resolvent", "schmidt-2020-guide-spod", "sieber-2016-spectral-proper-orthogonal-decomposition", "torrence-1998-practical-guide-wavelet-analysis"]
cites: []
summary: "Origin of complex (Hilbert) PCA, i.e. HPOD_t: band-passed analytic signals, complex-correlation EOFs, complex varimax; one mode per travelling wave; spike and end-effect caveats"
---
# Complex Principal Component Analysis: Theory and Examples

- **Authors:** J. D. Horel (Climate Research Group, Scripps Institution of Oceanography, UC San Diego)
- **Source:** Journal of Climate and Applied Meteorology 23(12), 1660–1673, December 1984 (American Meteorological Society). JSTOR stable URL 26181146; DOI not printed in the PDF (it is the JSTOR copy).
- **PDF:** `References/Paper_PDFs/time-frequency-methods/Horel_1984_Complex-Principal-Component-Analysis-Theory-And-Examples.pdf` (15 pp.: a JSTOR cover page, then printed pp. 1660–1673). **Page refs below are printed journal pages; PDF page = printed page − 1658.**
- **Tags:** complex principal components (CPC), complex EOF, Hilbert EOF, Hilbert POD (HPOD) origin, analytic signal, Hilbert transform, quadrature function, travelling vs standing waves, frequency-domain PCA (FDPC, proto-SPOD), complex correlation matrix, varimax rotation of complex PCs (RCPC), regionalisation, end effects and tapering, band-pass Hilbert transform, intermittent pulses, sampling errors, eigenvalue degeneracy, phase ambiguity, synthetic test cases, climate data

## Summary
Horel sets out the properties and limits of time-domain complex principal component (CPC) analysis, which is what fluid dynamicists now call conventional Hilbert POD (HPOD_t), before the method became widely used (p. 1661). Each real time series is augmented by i times its Hilbert transform, here built from FFT coefficients with an optional band-pass weight W(ω). The complex cross-correlation matrix is then diagonalised, giving complex eigenvectors (spatial amplitude and phase) and complex PCs (temporal amplitude and phase) (p. 1661–1663). He adds a complex generalisation of varimax rotation (RCPC) to bring out regional features, and tests both on four synthetic 11-point line arrays: a nonstationary travelling wave, travelling plus standing waves, opposing waves in two halves of the domain, and irregular travelling pulses (p. 1664–1670). CPC analysis isolates travelling waves in one mode where conventional PCA needs a quadrature pair, and it separates travelling from standing waves at different frequencies. But it inherits the drawbacks of PCA (domain-wide orthogonal patterns, degeneracy of near-equal eigenvalues) and of spectral methods (end effects), and its amplitude-and-phase patterns are harder to interpret (p. 1672). A sampling-error section gives eigenvalue and eigenvector standard errors and shows that rotated solutions can be far more reproducible than unrotated ones (p. 1670–1672).

## Key findings
- **CPC vs other methods** (p. 1660–1661, 1672):
  - Conventional PCA detects standing oscillations only; a travelling wave is split into two standing waves in quadrature (Example 1: PC1/PC2 = 54/46%, p. 1665–1666).
  - Frequency-domain PCA (FDPC: Wallace & Dickinson 1972; Brillinger 1981) diagonalises the cross-spectral matrix at each frequency. It is the most general method, but awkward when power is spread over many frequencies, because one map is needed per frequency band (p. 1660).
  - CPC analysis is "essentially" FDPC averaged over all frequency bands, and the two are identical when the data are dominated by one frequency (citing Brillinger 1981, p. 353) (p. 1661). Conventional PCA is FDPC applied to contemporaneous data only (p. 1660).
  - Lagged-covariance (extended) EOFs (Weare & Nasstrom 1982) become expensive as lags increase. Treating (u, v) wind as one complex series works only if the components are near quadrature (p. 1660).
- **The Hilbert transform weights sharp events** (p. 1662): the Hilbert transform of a pulse peaks at its onset and end (Fig. 1c–d), so the envelope |U| is largest at the pulse edges. Because correlations are dominated by high-amplitude periods, CPC gives more weight to sharp transitions and noisy spikes. The Hilbert transform carries as much noise as the data and can redistribute it in time. **Remedy:** low-pass (or band-pass) both u and û with W(ω) before the analysis.
- **End effects** (p. 1662): FFT-based Hilbert transforms suffer more from end effects than the Fourier transforms do; taper about 10% of the record at each end (after Madden & Julian 1971). In Example 1 the first and last 30 of 301 steps were tapered with a cosine bell and then omitted from the correlation matrix (p. 1666).
- **Example 1, nonstationary travelling wave** (p. 1665–1667): one CPC explains 100% of the variance, is perfectly correlated with every grid point, and captures the amplitude doubling at t = 151. The eigenvector phase steps by 36° per grid point (wavelength 10 points), and the CPC period is 50 steps, giving a phase speed of 0.20 grid points per step. So frequency from the PC and wavenumber from the eigenvector give the phase speed directly.
- **Example 2, standing plus travelling wave at different frequencies** (p. 1667): CPC1 (73%) is the travelling wave and CPC2 (27%) the standing wave, separated by their distinct frequencies. This answers the worry that CPC would split standing waves into pro- and retrogressive parts. The travelling wave gets more variance only because the standing wave has nodes at points 1, 6 and 11. Varimax fails here (ν = 30, RCPCs 50/50, one per antinode).
- **Example 3, opposing waves in two half-domains** (p. 1667–1668): the CPCs show domain-wide patterns that do not exist in the data. CPC1 (65%) mostly describes point 6 where the waves overlap, and CPC2 (35%) is an artefact of spatial orthogonality. Both are needed to see that the halves are unrelated (eq. 13). Varimax recovers one RCPC per half (50/50%, ν = 65).
- **Example 4, irregular travelling pulses** (p. 1668–1670): the first CPC explains only 75% (CPC2 20%) despite an obvious single signal. Correlations between distant points are weak because the pulse duration (about 5 steps) is short relative to the transit time (about 20 steps). The real part of the CPC1 reconstruction (eq. 8) has weaker, longer pulses and **spurious events at the domain edges**, where the edge series are in quadrature with the central-weighted CPC (Fig. 13, p. 1669–1670). RCPC1/2 = 60/35% with ν = 20, so it is not trustworthy. Lesson: slow, irregularly spaced pulses over large distances are poorly captured by complex correlations unless the phenomenon is nearly periodic (p. 1669).
- **Mixed cases** (pulses travelling opposite ways in each half): the RCPCs identify regional pulses but the CPCs do not (ν > 60) (p. 1670). For Barnett's (1983) equatorial wind data, ν = 52, so the RCPC solution is only marginally useful (p. 1670).
- **Phase ambiguity** (p. 1663): eigenvector and PC phases are defined only up to an additive constant in [0, 2π) (vs a sign for real PCs). Lead–lag between CPCs from separate analyses cannot be found by cross-correlating them, so all fields should go into one joint analysis. The convention used is that the largest element of the first eigenvector points "up" (p. 1666).
- **Claim that complex PCs are not Hilbert pairs** (p. 1663): Horel states that the real and imaginary parts of the CPCs are not Hilbert transforms of each other, because they need not explain the same variance in every frequency band, so the real part alone does not hold all the information (unlike FDPC). Yet he also says the real and imaginary parts of each reconstruction U′_j = e*_jn P_n are Hilbert transforms of each other (p. 1663).
  > My check: P_n is a complex-weighted sum of analytic signals, so with an exact (one-sided) Hilbert transform it is itself analytic, and its real and imaginary parts are a Hilbert pair. This is what Raiola & Kriegseis prove for HPOD_t. Horel's statement can only hold for the finite, tapered and truncated records used in practice. Read p. 1663 before relying on either statement.
- **Sampling errors** (p. 1670–1672):
  - For a complex Wishart sample covariance, the eigenvalue standard error is λ_n(1/τ)^{1/2}, with τ the number of independent time steps. Real PCA's error is √2 larger because complex series have twice the degrees of freedom (eq. 24).
  - The eigenvector error grows as λ_{n+1} → λ_n (eq. 25), which is the complex form of North et al. (1982). Near-equal eigenvalues mean that "a myriad of linear combinations" are equally likely in another sample.
  - **Rotation test:** 10 series with neighbour correlations ρ = 0.8 ×4, 0.1, 0.8 ×4 (two built-in regions), 3000-step population, 20 samples of 300 steps. Population PC1/PC2 = 37/36%, so the PCs are degenerate and wrongly suggest domain-wide in-phase and see-saw patterns (Fig. 14). The RMS loading difference between samples is about 0.21 for the PCs against about 0.04 for the varimax RPCs (5× smaller), with ν > 95 (Fig. 15, eq. 27).
- **Conclusions and advice** (p. 1672):
  - CPC analysis reduces the data to the fewest modes and lets propagating features be split into spatial and temporal behaviour; varimax extracts regional ones.
  - Drawbacks: modes are hard to interpret (amplitude and phase), reconstructions mislead where a CPC explains little, spikes are emphasised unless the data are low-passed, separate analyses are hard to compare, information at the record ends is lost, and degeneracy remains.
  - Always plot raw and complex time series at key points and their (complex) correlation maps alongside the CPCs, and check the result against the original fields.

## Setup / method

### Algorithm (p. 1661–1664)
1. **Complexify** each series u_j(t) (eq. 1–4): FFT, then for each positive ω form û_j(t) = Σ W(ω)[b_j cos ωt − a_j sin ωt].
   - W(ω) = 1 for all ω gives the full-band analysis; W = 1 near ω₀ and tapering to 0 at ω₀ ± δω gives a band-limited CPC. The same filter must be applied to u_j. The DOF of the estimates depend on W (p. 1662).
   - Taper about 10% at each end (p. 1662).
2. **Normalise:** subtract the mean and divide by the standard deviation at each point, so the analysis uses the **complex correlation** matrix r_jk (eq. 5), not the covariance (energy) matrix used in fluids POD. The choice follows Kutzbach (1970) and simplifies the rotation (p. 1662).
3. **Eigen-decompose** the Hermitian matrix: real eigenvalues λ_n, complex eigenvectors e_jn, complex PCs P_n(t) with unit variance (eq. 6–7).
   - Alternatively, correlate maps instead of time series (the method of snapshots; PCs become maps and eigenvectors time series). Horel recommends this when there are fewer independent time steps than grid points (p. 1663).
4. **Interpret:** e_jn = s_jn e^{iθ_jn} is the complex correlation between series j and PC n (amplitude s, phase θ); P_n(t) = T_n(t) e^{iφ_n(t)} gives the temporal amplitude and phase (p. 1663). Reconstruct with eq. 8–9.
5. **Truncate** to N′ components with the Guttman lower bound (keep components with λ > 1, i.e. more than one normalised series' worth of variance). Err on keeping too many (p. 1663).
6. **Rotate** with complex varimax (eq. 14–19). In IMSL-style varimax code, replace 2xy with xy* + x*y and x² − y² with xx* − yy* (p. 1664). The criterion uses only loading amplitudes, not phases. The transformation matrix T is **real**, so phases are not rotated (eq. 17).

### Properties of rotated CPCs (p. 1665)
- RCPCs are temporally orthogonal, so their variance fractions add.
- Their loading vectors are not spatially orthogonal, and are less likely to be "predictable geometric patterns" than CPC eigenvectors.
- They depend less on the analysis domain.
- They are one of infinitely many alternative solutions (Thurstone simple structure); physical meaning must be checked.

### Test cases (all on an 11-point line, 1 ≤ t ≤ 301 unless stated)

| Example | Signal | Eq. | Page | CPC variance % | RCPC % (ν) |
|---|---|---|---|---|---|
| 1 | travelling sine, λ = 10 points, T = 50 steps, A = 1 → 2 at t = 150 | 20 | 1665 | 100 (one CPC); PCA 54/46 | same as PCA (ν = 54) |
| 2 | travelling (λ 5, T 30) + standing (λ 10, T 60) | 21 | 1667 | 73 / 27 | 50 / 50 (ν = 30) |
| 3 | rightward (λ 5, T 50) for j ≤ 6, leftward (λ 5, T 60) for j > 6 | 22 | 1667 | 65 / 35 | 50 / 50 (ν = 65) |
| 4 | 12 Gaussian pulses at 0.5 points/step, random start times (t_i = 5ε + 40i, t′_i = 20 + 40i + 5ε′) | 23 | 1668 | 75 / 20 | 60 / 35 (ν = 20) |
| Sampling | AR-type chain eq. 26, 10 series, 3000-step population, 20 × 300-step samples | 26–27 | 1670–1671 | PCA 37 / 36 (population) | RPC ≈ 36 / 36 (ν > 95) |

> Variance percentages were read off the right margins of Fig. 3, 7, 9, 12, 14 and 15 on the rendered pages. The pulse speed (0.5 points/step) is my reading of eq. 23 and matches the 20-step transit quoted on p. 1669.

- **No real data are analysed in depth.** The only real case is a rotation of Barnett's (1983) equatorial wind CPCs (p. 1670). There is no modelling or simulation side: the "models" are prescribed analytic wave fields. Their value is as ground-truth tests of what the decomposition recovers.

## Key equations
Retyped from rendered pages 1661–1671. Notation: j spatial index (1…J), n mode index, [·]_t time average, * complex conjugate.

- **Fourier representation and complexification** (eq. 1–3, p. 1661):
  $$u_j(t)=\sum_\omega a_j(\omega)\cos\omega t+b_j(\omega)\sin\omega t,\qquad U_j(t)=\sum_\omega c_j(\omega)e^{-i\omega t},\; c_j=a_j+ib_j$$
  $$U_j(t)=\sum_\omega\big[a_j\cos\omega t+b_j\sin\omega t\big]+i\big[b_j\cos\omega t-a_j\sin\omega t\big]=u_j(t)+i\hat u_j(t)$$
- **Filtered Hilbert transform** (eq. 4, p. 1662): $\hat u_j(t)=\sum_\omega W(\omega)\big[b_j(\omega)\cos\omega t-a_j(\omega)\sin\omega t\big]$.
  > **Sign convention differs from MATLAB `hilbert`.** With e^{−iωt}, cos ωt maps to û = −sin ωt and sin ωt to +cos ωt (Fig. 1a uses this). Horel calls this a phase advance of π/2, and U rotates clockwise (p. 1662). The standard transform (H[cos] = sin, MATLAB `hilbert` = u + iH[u]) gives the complex conjugate, U_Horel = u − iH[u]. Phases, phase-speed signs and lead/lag read off Horel-style CPCs are therefore reversed relative to an HPOD computed with `hilbert`. This is my check from eq. 3; it is not stated in the paper.
- **Complex correlation** (eq. 5, p. 1662): $r_{jk}=[U_j(t)^*U_k(t)]_t$ on normalised anomalies.
- **Expansion and loadings** (eq. 6–7, p. 1663):
  $$U_j(t)=\sum_{n=1}^N e_{jn}^*P_n(t),\quad [P_n^*P_m]_t=\delta_{nm},\quad \sum_j e_{jn}^*e_{jm}=\lambda_n\delta_{nm},\quad e_{jn}=[U_j^*P_n]_t=s_{jn}e^{i\theta_{jn}}$$
  $P_n(t)=T_n(t)e^{i\phi_n(t)}$.
- **Reconstruction** (eq. 8–9, p. 1663): $U'_j(t)=e_{jn}^*P_n(t)$ for one mode; $U'_j(t)=\sum_{n=1}^{N'}e_{jn}^*P_n(t)$ for N′ ≪ N modes.
- **Rotated form** (eq. 10, p. 1663): $U'_j(t)=\sum_{m=1}^{N'}g_{jm}^*F_m(t)$, where F_m is an RCPC and g_jm its complex loading.
- **Variance maximised by the first mode** (eq. 11–12, p. 1664): $\lambda_1=\sum_j e_{j1}^2$ (real); $\lambda_1=\sum_j e_{j1}^*e_{j1}$ (complex).
- **Correlation from modes** (eq. 13, p. 1664): $r_{jk}=\sum_n e_{jn}e_{kn}^*$.
- **Varimax** (eq. 14–16, p. 1664). Real:
  $$\sigma_1^2=\frac1J\sum_{j}\Big(\frac{g_{j1}^2}{h_j^2}-\sum_{j}\frac{g_{j1}^2}{Jh_j^2}\Big)^2,\qquad h_j^2=\sum_{n=1}^{N'}e_{jn}^2$$
  Complex: replace $g^2/h^2$ by $g^*_{j1}g_{j1}/(h_jh_j^*)$.
- **Rotation** (eq. 17–19, p. 1664): $g_{jm}=\sum_{n=1}^{N'}t_{mn}e_{jn}$ with T real; $\sigma^2=\sum_n\sigma_n^2\le(N'-1)/N'$ (Kaiser 1958); effectiveness $\nu=100\,\sigma^2N'/(N'-1)$. ν > 60 means efficient regional factors; ν < 40 means varimax is inappropriate.
- **Sampling errors** (eq. 24–25, p. 1670):
  $$l_n=\lambda_n\Big(\frac1\tau\Big)^{1/2},\qquad \eta_n(j)=\Big(\frac{\lambda_n\lambda_{n+1}}{\tau}\Big)^{1/2}\frac{s_{jn+1}}{\lambda_{n+1}-\lambda_n}$$
  Here τ is the number of independent time steps and η_n(j) is the error in e_jn due to the next eigenvector.
- **Test chain and RMS difference** (eq. 26–27, p. 1670–1671):
  $$U_{j+1}=\rho_{j+1}U_j(t)+(1-\rho_{j+1}^2)^{1/2}\epsilon_{j+1}(t),\qquad ER^2(n)=\frac{1}{1900}\sum_{j=1}^{10}\sum_{y=1}^{20}\sum_{z=y+1}^{20}\big[|e_{jn}(y)|-|e_{jn}(z)|\big]^2$$
  Check: 1900 = 10 points × 190 sample pairs (20 choose 2), so it is a mean square.

## Figures worth remembering
- **Fig. 1 (p. 1662):** a sine and a top-hat pulse with their Hilbert transforms, and the complex series as clock-hand vectors. The pulse's Hilbert transform has log singularities at its edges, so the envelope is largest at the edges. This is the key warning about spikes.
- **Fig. 2–3 (p. 1665):** Example 1 with real PCA: two standing-wave PCs in quadrature (54/46%).
- **Fig. 4–5 (p. 1666):** Example 1 CPC: one mode, constant-modulus loadings, phase stepping 36° per point.
- **Fig. 6–7 (p. 1667):** Example 2: CPC1 travelling, CPC2 standing; RCPCs split at the antinodes.
- **Fig. 8–9 (p. 1668):** Example 3: spurious domain-wide CPCs; RCPCs regionalise.
- **Fig. 10–13 (p. 1668–1670):** Example 4: x–t contours of pulses; CPC1 reconstruction with weaker, broader pulses and edge artefacts.
- **Fig. 14–15 (p. 1671):** sample-to-sample variability of degenerate PCs vs stable RPCs.

## Notation
- U_j(t) = u_j + iû_j: complex (analytic, with the sign caveat above) series at point j. û_j: quadrature function / Hilbert transform.
- a_j, b_j, c_j: Fourier coefficients. W(ω): filter weight.
- r_jk: complex correlation. λ_n: eigenvalue (variance; with J normalised series the total is J). e_jn = s_jn e^{iθ_jn}: complex eigenvector element / loading. P_n(t) = T_n e^{iφ_n}: complex PC.
- N, N′: total and retained modes. F_m, g_jm: rotated CPC and its loading. T = [t_mn]: real rotation matrix. h_j²: communality. σ², ν: varimax criterion and effectiveness.
- τ: independent time steps. l_n, η_n(j): eigenvalue and eigenvector standard errors. ER: RMS loading difference between samples.
- FDPC: frequency-domain PCs. CPC / RCPC: (rotated) complex PCs. PC / RPC: real (rotated) PCs.

## Relevance to this project
This is the origin paper of the method the project calls Hilbert POD. It is cited as such by [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) (p. 3–4 there) and [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md) (ref. 32). It underpins step 3 of the **SPOD → reconstruction → HPOD** workflow in CLAUDE.md.

- **Data requirements:** CPC/HPOD_t needs time-resolved, uniformly sampled records, because the Hilbert transform is taken in time at each point. It suits high-speed schlieren, microphone arrays and LES, not snapshot PIV. For PIV use the space-only variant (HPOD_x) of Raiola & Kriegseis, or POD pairs. Horel's map-correlation option (p. 1663) is just the method of snapshots, not a fix for missing time resolution.
- **Horel's W(ω) is the first form of the user's pipeline.** Eq. 4 band-passes both u and û before the complex PCA, to suppress noise and spikes (p. 1662). The SPOD → reconstruction step is a sharper version of this filter: it selects modes as well as frequencies. The paper's warning explains why the step is needed. Unfiltered Hilbert transforms amplify spikes and sharp transitions, and these would dominate the complex correlation (p. 1662). That warning is directly relevant to schlieren with shock motion or intermittent tone bursts.
  - If the reconstruction already keeps only positive-frequency content, the analytic signal comes "for free", as noted in [nekkanti-2021-spod-reconstruction-denoising-frequency-time.md](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md) (my inference).
- **Ends of the record:** Horel tapers about 10% at each end and drops the tapered part (p. 1662, 1666). Raiola & Kriegseis independently found about 15% per end necessary. Use about 10–15% trimming on the HPOD input record. Nekkanti & Schmidt's frequency-domain reconstruction also has its own window-edge effects to stack on top.
- **Relation to SPOD:** CPC is "FDPC averaged over all frequency bands", and FDPC (Wallace & Dickinson 1972; Brillinger) is the cross-spectral eigen-decomposition that became SPOD ([towne-2018-spod-relationship-dmd-resolvent.md](towne-2018-spod-relationship-dmd-resolvent.md), [schmidt-2020-guide-spod.md](schmidt-2020-guide-spod.md)). For a single-frequency (tonal) signal they coincide (p. 1661). This agrees with Raiola & Kriegseis' formal reduction of HPOD to SPOD under stationarity and a single phase speed.
  - For screech, a narrow SPOD-reconstructed band makes HPOD close to SPOD at the tone, but with time-varying amplitude and phase. That is exactly what is wanted for A1/A2 switching and intermittency ([mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md)).
- **Contrasts with the fluids HPOD literature:**
  - **Correlation vs covariance:** Horel normalises each point by its standard deviation (p. 1662). Fluids HPOD and SPOD use energy (covariance) norms. On schlieren this choice matters, because normalisation would inflate quiet ambient regions and noise. Use a covariance/energy weighting unless regional coherence is the goal.
  - **Hilbert-pair property:** Horel says complex PCs are not Hilbert pairs (p. 1663). Raiola & Kriegseis prove that HPOD_t temporal modes contain only positive frequencies. The disagreement is resolved by my check above: exact analytic inputs give analytic PCs, so any departure is a finite-record or taper artefact.
  - **Sign convention:** Horel's û is minus the standard Hilbert transform, so his complex signals are conjugates of MATLAB `hilbert` output. Fix the convention before comparing mode phases or the sign of instantaneous frequency (cf. the sign caveats in the Raiola note and [huang-1998-empirical-mode-decomposition-hilbert-spectrum.md](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md)).
- **Wave identification for resonance flows:**
  - Frequency from the PC plus wavenumber from the eigenvector phase gives the phase speed (p. 1666–1667). This is a time-domain counterpart of the k_x filtering of SPOD/POD modes used to separate KH and guided-jet waves ([edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)).
  - Example 2 shows that a standing component at a *different* frequency lands in its own CPC (p. 1667). At screech, however, the downstream KH wave and the upstream guided mode share one frequency, so one CPC would hold their superposition: a partially standing pattern with a modulated |e_jn| and a non-linear phase. Fourier-filter in x afterwards to separate them (my inference).
  - Example 3 warns that orthogonality makes domain-wide modes even when regions are unrelated. That is relevant to schlieren windows containing both the jet and reflected or near-field acoustics, and to twin jets.
- **Rotation and sub-domains:** complex varimax (RCPC) is an early alternative to sub-domain SPOD for regional structure (cf. sub-domain SPOD in [mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md) and [suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md](suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md)). Report the ν diagnostic if it is used.
  - Rotated solutions are much more stable between samples when eigenvalues are nearly degenerate (0.04 vs 0.21 RMS, p. 1671). This suggests rotation for near-equal flapping/helical pairs or twin-jet SS/SA modes, but only where distinct regional features exist (ν high).
- **Intermittency limits:** Example 4 shows that irregular, short-lived travelling pulses are captured poorly. The first CPC explains only 75% and its reconstruction smears pulses and creates edge artefacts (p. 1669–1670). HPOD of intermittent bursts, such as staging switches, should be checked against the raw data, and reconstructions masked where a mode explains little (Horel's own advice, p. 1670, 1672).
  - Complementary time–frequency tools: [torrence-1998-practical-guide-wavelet-analysis.md](torrence-1998-practical-guide-wavelet-analysis.md) and [sieber-2016-spectral-proper-orthogonal-decomposition.md](sieber-2016-spectral-proper-orthogonal-decomposition.md) (smooth analytic POD pairs).
- **Uncertainty:** the complex eigenvalue error λ_n/√τ (eq. 24) and the near-degeneracy eigenvector error (eq. 25) are the time-domain analogue of SPOD's χ² confidence bands ([schmidt-2020-guide-spod.md](schmidt-2020-guide-spod.md)). Estimate τ as the number of *independent* samples (record length over the integral time scale), not the number of frames.
- **Phase reference across runs:** because the CPC phase is arbitrary (p. 1663), comparisons across NPRs or between schlieren and microphones should be made in one joint decomposition or referenced to a common sensor. This matters for staging studies such as the PyFR continuation runs.
- **Modelling side:** the paper has no physical model, LSA, resolvent or simulation; its synthetic wave fields are tests of the method. Its value for modelling is as a way to extract phase speeds and wavenumbers from data to compare with vortex-sheet or Floquet LSA predictions (e.g. [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md)).
- **Follow-up candidates for `/add-paper`:** Barnett (1983) complex EOFs (Mon. Wea. Rev. 111); Wallace & Dickinson (1972) frequency-domain EOFs; North et al. (1982) sampling errors of EOFs; Merrifield & Guza (1990) on the limits of complex EOFs for broadband waves (cited in the Raiola note); Kriegseis, Kinzel & Nobach (2021), the first HPOD paper in fluids.
