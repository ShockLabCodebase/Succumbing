---
key: "schmidt-2019-streaming-spod"
title: "An efficient streaming algorithm for spectral proper orthogonal decomposition"
authors: ["Schmidt, O. T.", "Towne, A."]
year: 2019
type: "article"
venue: "Comput. Phys. Commun. 237, 98–109"
bib: {"journal": "Computer Physics Communications", "volume": "237", "pages": "98--109"}
doi: "10.1016/j.cpc.2018.11.009"
arxiv: "1711.04199"
pdf: "Schmidt-Towne_2019_An-Efficient-Streaming-Algorithm-For-Spectral-Proper-Orthogonal-Decomposition.pdf"
version: "preprint"
unverified: []
group: false
facility: ""
data: ["LES", "PIV-TR"]
methods: ["SPOD"]
flow: ["round-jet", "subsonic", "generic"]
phenomena: ["coherent-structures"]
params: {"M_j": "0.9", "Re": "1.01×10⁶"}
topics: ["modal-decomposition"]
related: ["schmidt-2020-guide-spod", "towne-2018-spod-relationship-dmd-resolvent", "schmidt-2018-spectral-analysis-jet-turbulence", "towne-2022-database-reduced-complexity-modeling", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "yeung-2024-adaptive-spod-broadband-tonal", "von-saldern-2026-band-ensemble-spod", "yeung-2022-3d-spod-twin-rectangular-jet"]
cites: ["schmidt-2018-spectral-analysis-jet-turbulence", "taira-2017-modal-analysis-fluid-flows-overview", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Streaming SPOD: running DFT sums + rank-1 incremental SVD of each CSD, truncated to d modes; one snapshot in memory, gaps allowed; d = 5 matches batch on M 0.9 jet LES"
---
# An efficient streaming algorithm for spectral proper orthogonal decomposition

- **Authors:** O. T. Schmidt (University of California San Diego), A. Towne (University of Michigan)
- **Source:** Comput. Phys. Commun. 237, 98–109 (2019), doi:10.1016/j.cpc.2018.11.009. This file is the **arXiv preprint** (arXiv:1711.04199v3 [physics.flu-dyn], 11 Jan 2019, Elsevier preprint layout), so page numbers and possibly wording differ from the published version.
- **PDF:** `References/Paper_PDFs/Schmidt-Towne_2019_An-Efficient-Streaming-Algorithm-For-Spectral-Proper-Orthogonal-Decomposition.pdf` (30 pp.). Page refs are PDF pages, which equal the preprint's printed page numbers.
- **Tags:** SPOD, streaming / incremental / online algorithm, Welch's method, cross-spectral density (CSD), incremental SVD (Brand 2006), rank-1 update, modified Gram–Schmidt, eigenbasis truncation, memory cost, convergence metrics, turbulent jet LES (M 0.9, Charles), optical flow, stepped spillway, measurement noise, time-resolved data, TR-PIV

## Summary
Batch SPOD needs all n_freq snapshots of a block in memory for the FFT, then all n_blk Fourier realisations of a frequency in memory for the eigendecomposition, which becomes infeasible for large 3D or very long datasets (p. 2–3, 7, 27). The authors replace the FFT by running DFT partial sums, so each snapshot is used once and discarded (§3.1, p. 7–9), and replace the batch eigendecomposition by a rank-1 incremental update of a truncated (rank-d) eigenbasis of the CSD at each frequency, adapted from Brand's incremental SVD (§3.2–3.3, p. 9–14). The Fourier sums are exact and the update is exact until the basis is truncated to d vectors (p. 8–9, 13–14). On a 10,000-snapshot M 0.9 jet LES and a 19,782-frame optical-flow record of a stepped spillway, the d = 5 leading SPOD modes match batch SPOD closely, with the leading-mode errors small and the subdominant-mode errors dominated by statistical convergence (jet) or measurement noise (spillway) rather than by truncation (§5–6, p. 15–27). Because blocks are assumed independent realisations, gaps between blocks are allowed, so SPOD statistics can in principle be converged from arbitrarily long or intermittently acquired records, e.g. TR-PIV bursts (p. 28).

## Key findings
- **Fourier step is exact and snapshot-by-snapshot.** Each new snapshot is multiplied by the DFT kernel values and added to the partial sum of every block it belongs to (more than one block when blocks overlap) (eq. 15–18, p. 8). Memory for the Fourier step drops by about a factor n_freq relative to FFT (p. 8). Cost rises from n_freq log n_freq to n_freq² for all frequencies, but only frequencies of interest need be computed, which partly offsets this (p. 9).
- **CSD update is exact before truncation.** The new Fourier realisation is split into its projection on the current basis and an orthogonal remainder (one MGS step, eq. 27); a small (d+1)×(d+1) matrix K is built and its SVD rotates the augmented basis (eq. 28–35, p. 12–13). The n×n CSD is never formed (p. 13).
- **Truncation to d modes is the only approximation.** After each update the (d+1)-th vector is discarded (eq. 36–37, p. 13–14). Batch SPOD keeps all n_blk vectors mutually orthogonal; streaming keeps only d (p. 14).
- **Jet LES results (d = 5)** (Fig. 4–6, p. 17–20):
  - Streaming and batch spectra of the five leading modes are "almost indistinguishable" (Fig. 4b, p. 18).
  - Eigenvalue error falls by about one order of magnitude over the run and is below the per-mil level after the first iteration; eigenvalue convergence falls by about two orders after initialisation (Fig. 6a,b, p. 19).
  - Eigenvector error falls monotonically: about 0.6% for mode 1 and 25% for mode 5 at the end. Since mode-5 eigenvalues are accurate, the authors put the large mode-5 error down to slow statistical convergence of subdominant modes (p. 19).
  - After about 50 iterations (blocks) the convergence measures of most modes are below 1% (Fig. 6d inset, p. 19).
  - Mode 1 dominates over 0.1 ≲ f ≲ 0.6 (low-rank range), consistent with [schmidt-2018-spectral-analysis-jet-turbulence.md](schmidt-2018-spectral-analysis-jet-turbulence.md) (p. 18).
- **Spillway optical flow (high noise)** (Fig. 8–10, p. 21–25):
  - SPOD spectra plateau for f ≳ 200, which is the measurement noise floor; modes there show no structure (p. 21–22).
  - Low-frequency modes show surface waves and shear-layer oscillation between step ridges; high-frequency modes are surface waves; noise grows in lower-ranked modes (p. 22).
  - Eigenvector error ends between 10% (mode 1) and 44% (mode 5), with jumps (e.g. at m = 45) when a basis vector is replaced by a different structure; these coincide with spikes in the convergence metric (p. 22, 25). Mode shapes still match batch SPOD visually, so the authors attribute the errors mainly to noise (p. 25).
- **Effect of d** (Fig. 11–12, p. 25–27):
  - Even d = 1 gives small errors for mode 1. For d ≥ 5 the mode-1 metrics are almost identical for the jet (p. 26).
  - Spillway mode-1 eigenvector error goes from about 10% (d = 5) to about 2% (d = 20) (p. 26). *(As printed; Fig. 11 lists d = 1, 5, 10, 25, not 20.)*
  - Mode 5: d = 10 noticeably lowers the jet errors, more does not help; for the spillway, going from d = 10 to 25 still lowers errors (p. 26–27).
  - Recommendation: choose d "somewhat larger" than the number of modes wanted (p. 27). The batch reference is itself not fully converged, so the error metrics are only relative (p. 27).
- **Memory** (p. 27–28):
  - Batch: n_x n_var n_t data plus n_x n_var (n_freq/2 + 1) n_blk Fourier coefficients for a real signal.
  - Streaming: n_x n_var n′_freq (partial sums) plus n_x n_var (n′_freq/2 + 1) d (bases), where n′_freq ≤ n_freq is the number of frequencies analysed, plus small fields.
  - My estimate for the jet case (n = 175 × 39 = 6825, n_var = 1): batch ≈ 6.8×10⁷ + 6.8×10⁷ ≈ 1.4×10⁸ values; streaming with all frequencies ≈ 1.7×10⁶ + 4.4×10⁶ ≈ 6×10⁶, about 20× less. *(My arithmetic, not in the paper.)*
- **Gaps between blocks are allowed** because ergodicity makes blocks independent realisations: e.g. acquire n_freq consecutive TR-PIV snapshots, process them, update the SPOD, then sample again (p. 28).

## Setup / method

### Batch SPOD (§2, p. 3–7)
1. Mean-subtract the n_t snapshots (eq. 1–2).
2. Split into n_blk blocks of n_freq snapshots overlapping by n_ovlp (Welch; eq. 3–4). If the data are already independent realisations (repeated experiments), no segmentation is needed (p. 4).
3. Window (optional; Hanning in the examples, p. 16) and DFT each block in time (eq. 5).
4. For each frequency k, collect the n_blk realisations into Q̂_k and weight: X_k = n_blk^(−1/2) W^(1/2) Q̂_k (eq. 6–7).
5. Economy SVD X_k = U_k Σ_k V_k* (eq. 11). SPOD modes Φ_k = W^(−1/2) U_k, energies Λ_k = Σ_k² (eq. 12–13), W-orthonormal (eq. 14).

### Streaming SPOD (§3, p. 7–14; Fig. 2, p. 10)
1. **Running DFT:** for each arriving snapshot q_p, find each block l it belongs to (index j = p − (l−1)(n_freq − n_ovlp)) and add q_j^(l) f_jk to the partial sum for each wanted k (eq. 15–17). When j = n_freq the Fourier realisation is complete (eq. 18).
2. **Running mean** over completed blocks (eq. 19).
3. **Rank-1 basis update** for each k with the new weighted realisation x_k^(m):
   - MGS: u⊥ = x − U U* x (eq. 27).
   - Build K (eq. 32) and take its SVD K = Ũ Σ̃ Ṽ*.
   - Rotate: U^(m) = [U^(m−1), u⊥/‖u⊥‖] Ũ, Σ^(m) = Σ̃ (eq. 34–35).
4. **Truncate** to the leading d columns (eq. 36–37).
5. **Initialise** with the first realisation as a rank-1 basis padded with zeros; truncation starts at m = d + 1. Alternatively start from an earlier SPOD basis (batch, or streaming with larger d) to reduce truncation error (p. 14).
6. **Modes:** Φ_k^(m) = W^(−1/2) U_k^(m) (p. 14).

> Mean handling: eq. 4 and 17 use the mean-subtracted snapshot, but the mean (eq. 19) is only known as blocks complete. The paper does not say what mean is used inside the partial sums. With a window, any residual mean leaks into the lowest bins only. *(My reading; check the published version or the authors' code.)*

### Example databases and SPOD parameters (Table 1, p. 16)

| Case | q | n_x1 × n_x2 | n_t | n_freq | n_ovlp | n_blk (Table 1) | d |
|---|---|---|---|---|---|---|---|
| Jet LES | p (axisymmetric, m = 0 azimuthal Fourier component) | 175 × 39 | 10,000 | 256 | 128 | 78 | 5 |
| Spillway optical flow | [u, v] | 224 × 160 | 19,782 | 512 | 256 | 77 | 5 |

> Block counts do not agree. The jet text says n_blk = 77 and 129 positive frequencies (p. 16) and Fig. 4 caption says 77, but Table 1 prints 78. With floor((n_t − n_ovlp)/(n_freq − n_ovlp)) I get 77 for the jet and 76 for the spillway. Check Table 1 in the published version.

- **Jet LES** (p. 16): M 0.9, Re_D = 1.01×10⁶, unstructured compressible LES with Charles (Brès et al. 2017, 2018; ref. [19], [24]). Only pressure of the axisymmetric component is used. Turbulent nozzle boundary layer; potential core ends at about 5D (Fig. 3, p. 17). The LES numerics are not described here; this is the same database family as [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md) and [schmidt-2018-spectral-analysis-jet-turbulence.md](schmidt-2018-spectral-analysis-jet-turbulence.md).
- **Spillway** (p. 19–21): laboratory stepped spillway, University of Queensland hydraulics lab (Kramer & Chanson), high-speed video processed by optical flow to (u, v) of the air–water mixture. Chosen as a high-noise test (p. 21). Frame rate and spatial scale are not given here.
- **No physics models** (stability, resolvent) are used; the paper is purely algorithmic. The link of SPOD to DMD and resolvent analysis is referred to Towne et al. (2018) (p. 3–4).
- **Data requirements:** standard SPOD needs time-resolved, statistically stationary data at uniform sampling within each block; streaming SPOD keeps the same requirement within blocks but allows arbitrary gaps between blocks (p. 4, 28). Key user parameters: n_freq, n_ovlp, window, d, and the list of frequencies to retain (p. 9, 16, 25).

## Key equations
Retyped from rendered pages. k is the frequency index, m the number of completed blocks (iteration level), * the conjugate transpose.

- **Weighted data matrix and CSD** (eq. 7–9, p. 6):
  $$\mathbf X_k=\frac{1}{\sqrt{n_\mathrm{blk}}}\mathbf W^{1/2}\hat{\mathbf Q}_k,\qquad \langle\mathbf a,\mathbf b\rangle_E=\mathbf a^*\mathbf W\mathbf b,\qquad \mathbf S_k=\mathbf X_k\mathbf X_k^*$$
- **SPOD** (eq. 10–13, p. 6–7): $\mathbf S_k=\mathbf U_k\boldsymbol\Lambda_k\mathbf U_k^*$, $\mathbf X_k=\mathbf U_k\boldsymbol\Sigma_k\mathbf V_k^*$, $\boldsymbol\Phi_k=\mathbf W^{-1/2}\mathbf U_k$, $\boldsymbol\Lambda_k=\boldsymbol\Sigma_k^2$.
- **Streaming DFT** (eq. 15–18, p. 8):
  $$\hat{\mathbf q}_k^{(l)}=\sum_{j=1}^{n_\mathrm{freq}}\mathbf q_j^{(l)}f_{jk},\quad f_{jk}=z^{(k-1)(j-1)},\quad z=e^{-i2\pi/n_\mathrm{freq}};\qquad \hat{\mathbf q}^{(l)}_{k,n_p}=\hat{\mathbf q}^{(l)}_{k,n_p-1}+\mathbf q^{(l)}_{n_p}f_{n_pk}$$
- **Running mean** (eq. 19, p. 9): $\bar{\mathbf q}^{(m)}=\frac{m-1}{m}\bar{\mathbf q}^{(m-1)}+\frac1m\Big[\frac{1}{n_\mathrm{freq}}\sum_{j}\mathbf q_j^{(m)}\Big]$
- **Rank-1 CSD update** (eq. 20, p. 11): $\mathbf S_k^{(m)}=\frac{m-1}{m}\mathbf S_k^{(m-1)}+\frac{m-1}{m^2}\mathbf x_k^{(m)}\mathbf x_k^{*(m)}$, described as the unbiased sample CSD.
- **Orthogonal complement** (eq. 27, p. 12): $\mathbf u_k^{\perp(m)}=\mathbf x_k^{(m)}-\mathbf U_k^{(m-1)}\mathbf U_k^{*(m-1)}\mathbf x_k^{(m)}$
- **Small matrix** (eq. 32, p. 12):
  $$\mathbf K=\sqrt{\frac{m-1}{m^2}}\begin{bmatrix}\sqrt m\,\boldsymbol\Sigma_k^{(m-1)} & \mathbf U_k^{*(m-1)}\mathbf x_k^{(m)}\\ \mathbf 0 & \|\mathbf u_k^{\perp(m)}\|\end{bmatrix}=\tilde{\mathbf U}\tilde{\boldsymbol\Sigma}\tilde{\mathbf V}^*$$
- **Update** (eq. 34–35, p. 13): $\mathbf U_k^{(m)}=\big[\mathbf U_k^{(m-1)}\;\;\mathbf u_k^{\perp(m)}/\|\mathbf u_k^{\perp(m)}\|\big]\tilde{\mathbf U}$, $\boldsymbol\Sigma_k^{(m)}=\tilde{\boldsymbol\Sigma}$.
- **Error vs batch** (eq. 38–39, p. 15), summed over frequencies:
  $$e_j^{\phi,\mathrm{batch}}(m)=\sum_{k=1}^{n_\mathrm{freq}}\Big(1-\max_{j'}\big\langle\boldsymbol\phi_{k_j}^{(m)},\boldsymbol\phi_{k_{j'}}^{\mathrm{batch}}\big\rangle_E\Big),\qquad e_j^{\lambda,\mathrm{batch}}(m)=\sum_{k=1}^{n_\mathrm{freq}}\left|\frac{\lambda_{k_j}^{(m)}-\lambda_{k_j}^{\mathrm{batch}}}{\lambda_{k_j}^{\mathrm{batch}}}\right|$$
  The max over mode index handles modes swapping rank (p. 15). Convergence metrics (eq. 40–41) are the same with the previous iterate in place of batch and can be monitored at run time.

> Check against the PDF before implementing:
> - Normalisation: batch uses 1/n_blk (eq. 7), while eq. 20 is called the unbiased sample CSD with a (m−1)/m² factor, and eq. 22 scales x by 1/√m. As printed these are not obviously consistent with each other, and eq. 38 as printed sums (1 − ⟨·,·⟩) over k without dividing by n_freq even though the text says the metric is 0–1, and the inner product presumably needs an absolute value for complex modes. Use the authors' released code (or the published CPC version) for the exact scaling.
> - Eq. 38 and 40 index notation (j vs the max index) was rebuilt from the rendered page.

## Data tables
See Table 1 under Setup. Final errors quoted in the text:

| Case | Mode 1 eigenvector error | Mode 5 eigenvector error | Page |
|---|---|---|---|
| Jet LES, d = 5 | ≈ 0.6% | ≈ 25% | 19 |
| Spillway, d = 5 | ≈ 10% | ≈ 44% | 25 |
| Spillway, mode 1, d = 20 (text) | ≈ 2% | – | 26 |

## Figures worth remembering
- **Fig. 1 (p. 5) and Fig. 2 (p. 10):** schematic flow of batch and streaming SPOD, labelled with equation numbers; a good teaching figure.
- **Fig. 4 (p. 17):** jet SPOD spectra, all 77 batch eigenvalues and d = 5 streaming vs batch.
- **Fig. 5 (p. 18):** batch vs streaming pressure modes j = 1, 3, 5 at f = 0.1 and 0.6.
- **Fig. 6 (p. 20):** eigenvalue and eigenvector error and convergence vs m for the jet; shaded initial rank-deficient region 1 ≤ m ≤ d + 1.
- **Fig. 8–10 (p. 22–24):** same for the spillway, with the noise plateau above f ≈ 200 and error jumps from mode replacement.
- **Fig. 11–12 (p. 25–26):** errors of modes 1 and 5 for d = 1, 5, 10, 25.

## Notation
- n = n_x n_var: state length; n_t: snapshots; n_freq: snapshots per block (DFT length); n_ovlp: overlap; n_blk: number of blocks; n′_freq: frequencies retained; d: retained modes per frequency.
- q_j^(l): j-th snapshot of block l; q̂_k^(l): Fourier coefficient at frequency k of block l; Q̂_k, X_k: unweighted and weighted Fourier data matrices; W: quadrature weight matrix.
- S_k: CSD; U_k, Σ_k, V_k: SVD of X_k; Φ_k, Λ_k: SPOD modes and energies.
- m: iteration level (number of completed blocks); u⊥: orthogonal complement; K, Ũ, Σ̃: small update matrix and its SVD.
- f: frequency as plotted (jet: presumably St-like; spillway: in Hz or frame-based units, not stated in the text).

## Relevance to this project
- **Where it fits in the workflow (CLAUDE.md):** SPOD is the step 2 tool for time-resolved schlieren and acoustics, and the first stage of the SPOD → reconstruction → Hilbert POD pipeline. Streaming SPOD is the way to run SPOD when a high-speed schlieren record (tens of thousands of megapixel frames) or a 3D LES does not fit in memory, or to converge subdominant modes from very long records (p. 19, 27). It needs time-resolved data inside each block; it does not help non-time-resolved PIV, where POD pairs or space-only HPOD ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)) are the tools.
- **Limit for the reconstruction step:** streaming SPOD keeps only the d leading modes and discards the per-block expansion coefficients (V_k), so it cannot by itself give the time-resolved reconstruction needed before HPOD. A second pass projecting each block onto the converged modes would be required. *(My inference; the paper does not address reconstruction.)* For that step see the frequency–time SPOD work of [Nekkanti & Schmidt (2021)](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md).
- **Intermittent acquisition:** the point that blocks can be separated by arbitrary gaps (p. 28) suits lab practice: several short high-speed schlieren or TR-PIV runs at the same condition can be pooled into one SPOD, provided each run is longer than n_freq and the condition is the same. This is also how repeated-run data should be treated in batch SPOD (no segmentation needed, p. 4).
- **Intermittency and mode switching:** streaming SPOD, like batch SPOD, is block-averaged and spectrally pure, so it does not resolve A1/A2 mode switching or amplitude modulation in screech or impinging tones. Its convergence metrics (eq. 40–41) and the jumps seen when a basis vector is replaced (p. 22) only show statistical non-convergence. For time-local behaviour use HPOD ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)), wavelets or Hilbert transforms of SPOD-filtered data. Running streaming SPOD over a long record that contains switching would average the two states into one CSD, which is the same caveat as batch SPOD.
- **Noise:** the spillway case shows that measurement noise sets a flat SPOD floor and slows convergence of subdominant modes (p. 21–25), directly relevant to schlieren and optical-flow data; leading coherent modes are still captured with d = 5.
- **Modelling and simulation side:** the paper has no stability or resolvent model; the physics of the jet SPOD (low-rank KH range, comparison with resolvent modes) is in [schmidt-2018-spectral-analysis-jet-turbulence.md](schmidt-2018-spectral-analysis-jet-turbulence.md), and trapped acoustic modes in the same LES in [schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md). For PyFR LES in `Simulations/PyFR_Staging_Continuation/`, streaming SPOD could run in situ (snapshots consumed as they are written), avoiding large snapshot storage on M3 scratch. *(Suggestion, not tested.)*
- **Related SPOD-variant notes:** [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md) (multitaper SPOD for sharp tones; streaming SPOD keeps Welch's leakage trade-off), [von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md) (band-ensemble alternative to Welch blocks), [yeung-2022-3d-spod-twin-rectangular-jet.md](yeung-2022-3d-spod-twin-rectangular-jet.md) (symmetry split to cut 3D SPOD memory, a complementary saving), [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md) (jet LES database and SPOD demos), [schmid-2010-dynamic-mode-decomposition.md](schmid-2010-dynamic-mode-decomposition.md) (DMD, which also has streaming variants, refs. [9, 10], p. 2–3).
- **Facility:** not Shock Lab group work. The spillway data are from the University of Queensland hydraulics laboratory (p. 28).
- **Follow-up candidates for `/add-paper`:** Towne, Schmidt & Colonius (2018) SPOD (#69), Schmidt & Colonius (2020) SPOD guide (#71), Nekkanti & Schmidt (2021) (#74), Brand (2006) incremental SVD.
