# Frequency–time analysis, low-rank reconstruction and denoising of turbulent flows using SPOD

- **Authors:** A. Nekkanti, O. T. Schmidt (Dept. of Mechanical and Aerospace Engineering, UC San Diego)
- **Source:** J. Fluid Mech. 926, A26 (2021), doi:10.1017/jfm.2021.681. This file is the **arXiv version**, arXiv:2011.03644v2 [physics.flu-dyn] (4 May 2021, JFM style), so page layout and possibly wording differ from the JFM article. Page refs below are arXiv PDF pages (printed page n = PDF page n).
- **PDF:** `References/Paper_PDFs/Nekkanti-Schmidt_2021_Frequency-Time-Analysis-Low-Rank-Reconstruction-And-Denoising-Of-Turbulent-Flows.pdf` (index key `Nekkanti-Schmidt_2021_Frequency-Time-Analysis-Low-Rank-Reconstruction-And-Denoising-Of-Turbulent-Flows.pdf`, 35 pp.)
- **Tags:** SPOD (Welch / Towne–Schmidt), inverse SPOD, frequency-domain reconstruction, time-domain reconstruction, oblique projection, expansion coefficients, overlap ambiguity, window-weighted overlap-add, Hamming window, edge effects, low-rank reconstruction, denoising, eigenvalue hard-thresholding, noise floor, data compression, frequency–time analysis, SPOD spectrogram, convolution / sliding-window SPOD, intermittency, prewhitening, trapped acoustic modes, M 0.4 turbulent jet LES, time-resolved data

> JFM volume/article number and DOI (926, A26, 10.1017/jfm.2021.681) are from my knowledge of the published paper, not from this PDF, which only carries the arXiv stamp. Check before citing.

## Summary
The paper turns SPOD from a purely analytic tool into a basis for rebuilding data, and shows four uses of that: low-rank reconstruction, denoising, frequency–time analysis and prewhitening (p. 1, 8). It compares two ways of getting expansion coefficients. The **frequency-domain** route inverts the Welch-based SPOD block by block: project each block's Fourier realisation onto the modes, zero unwanted coefficients, inverse-FFT, undo the window and stitch overlapping blocks (p. 6, 26). The **time-domain** route takes a weighted oblique projection of each snapshot onto the whole set of SPOD modes at all frequencies (p. 7–8). The time-domain route is optimal per snapshot in a least-squares sense and gives better low-rank reconstructions, but it loses the one-to-one link between mode and frequency. The frequency-domain route keeps that link, which makes it better for denoising and frequency–time analysis (p. 12–14, 25–26). For time-continuous coefficients, the paper replaces an intractable sliding-window SPOD (n_ovlp = n_fft − 1, 3.6 TB here) with an equivalent **convolution** of the data with each mode (p. 18–19). Applied to an M 0.4 jet LES, the SPOD spectrogram shows that bursts of large-scale coherent structures coincide with peaks in total flow energy (p. 19–20, 26).

## Key findings
- **Two reconstruction routes, two optima** (p. 6–8, 11–14, 25–26):
  - Frequency-domain (inversion) preserves SPOD orthogonality and mode–frequency correspondence. Low-rank reconstructions recover the block-wise (space–time) energy and track the summed eigenvalues, but miss detail in each snapshot (Fig. 4a,b, 6, p. 11–13).
  - Time-domain (oblique projection) gives the best rank-limited approximation of each snapshot, captures more energy for the same number of modes, and can be applied to new data or single snapshots. Coefficients are no longer tied to one frequency (p. 6–7, 11–12, 25).
  - Reason for the gap: leading SPOD modes are spatially confined (e.g. the KH wavepacket), so other structures at the same frequency cannot be represented in a frequency-domain rank-1 reconstruction; the oblique projection borrows modes from other frequencies (p. 12).
- **Error versus rank** (Fig. 8, p. 14; values read off the plot): with 1 mode per frequency the 2-norm error is about 84% (frequency domain) and 75% (time domain); with 10 modes about 33% and 15%. The time-domain error reaches machine precision at about 40 modes per frequency; the frequency-domain error only does so with all 77 modes.
- **Energy content of the jet SPOD** (Fig. 2, p. 9): the leading mode holds 30% and the leading 10 modes 80% of the total energy. Energy is concentrated in few modes at low St and spread over many at high St. St = 0.5 has the largest λ₁/λ₂ gap, with a KH wavepacket as the leading mode (p. 9).
- **Windowing causes the edge effect and the spectral contamination** (p. 12, 14, 27):
  - Frequency-domain reconstruction strongly over-predicts the norm in the first 32 snapshots, and likewise at the end, because the two outermost blocks have no overlapping neighbour on one side (Fig. 4b, p. 12).
  - A 1 × n_freq frequency-domain reconstruction should reproduce λ₁ exactly and have zero higher eigenvalues. With the Hamming window it does not: the leading spectrum deviates at low St and higher eigenvalues are non-zero (Fig. 7a, p. 13–14).
  - With a rectangular window and no overlap, both problems vanish: no jumps at block switches or at the record ends, and the higher eigenvalues are zero to machine precision (Fig. 20–21, p. 27). The authors still advise against rectangular windows because of spectral leakage (p. 27).
  - The time-domain reconstruction is much less sensitive to the window choice (p. 27).
  - Adding back the truncated eigenvalues collapses the frequency-domain norms onto the total energy, apart from the windowing effect (Fig. 5, p. 12).
- **Resolving the overlap ambiguity** (App. A, Fig. 19, p. 26–27): six ways to assign a snapshot covered by two blocks were tested (left block, right block, plain mean, larger window value, window-weighted mean, distance-weighted mean). The **window-weighted mean** (eq. A 1) gave the smallest error and is used throughout. The choice matters only for truncated reconstructions; full reconstructions are accurate either way (p. 27). From Fig. 19a, the 1 × 129 error drops from about 145% (single block) to about 37% (weighted mean).
- **Denoising by hard-thresholding SPOD eigenvalues** (§3.2, p. 14–17):
  - Gaussian white noise with standard deviation equal to the lipline-mean pressure standard deviation (average lipline SNR = 1) adds a noise floor at λ ≈ 4 × 10⁻⁵, which cuts off the spectrum near St ≈ 1.5 (p. 15–16).
  - Modes above the floor (λ₁ at St 0.5) are indistinguishable from the clean ones; modes below (5th mode at St 0.5, λ₁ at St 1.5) are noise (Fig. 9, p. 15).
  - Keeping all eigenpairs with λ ≥ 5 × 10⁻⁵ (just above the floor) retains 92.7% of the clean-flow energy but only 2.6% of the noisy-field energy, with 74 of 9933 modes (n_freq × n_blk), a 99.26% storage saving (p. 15).
  - The denoised leading spectrum follows the noisy one until it hits the threshold and then drops sharply, so the filter acts like a low-pass filter (p. 15).
  - Against a long-time Fourier low-pass filter at St 0.8: the low-pass filter has higher lipline SNR for x ≲ 10, the SPOD filter beyond; very near the nozzle (x ≲ 2.5) the SPOD filter slightly lowers SNR. The SPOD filter has consistently lower error over time (Fig. 11, p. 16–17). With tuned thresholds both give qualitatively similar results, leaving compression as the SPOD advantage (p. 17).
  - The frequency-domain route is required: the local-in-time optimality of the oblique projection makes it reconstruct the noise (p. 14).
- **Frequency–time analysis** (§3.3, p. 17–23):
  - Time-domain spectrogram: |Σ_{j≤n_modes} ã_l^{(j)}(t)| from the oblique projection onto the **full** basis (all n_blk × 129 modes), keeping only the leading n_modes per frequency (Fig. 12, p. 17–18). Projecting onto only the 1 × 129 basis gives a banded, wrong spectrogram with broad coefficient spectra (App. B, Fig. 22, p. 28–30).
  - Convolution spectrogram (eq. 3.4) is smoother and looks like a Hamming-weighted 256-point moving average of the time-domain one (Fig. 13, 15, 23, p. 18–21, 30). Zero-lag cross-correlation between the two leading-mode coefficients at St 0.5 is 0.77 (Fig. 15b, p. 20).
  - Convolution coefficients with 50% overlap modes are "virtually indistinguishable" from the exact sliding-window SPOD coefficients (n_ovlp = n_fft − 1), checked on every third grid point in x and r (App. C, Fig. 24, p. 19, 30–31).
  - Convolution coefficients have much narrower spectral peaks than the time-domain ones and their expected power reproduces the SPOD eigenvalue spectrum (eq. 3.5; Fig. 16, p. 20–22). Peaks are not sharp because of leakage and amplitude modulation (p. 21).
  - Most energy sits at St ≲ 0.2. High-energy low-frequency events occur at 550 ≲ t ≲ 590 and 1370 ≲ t ≲ 1400; the global maximum of instantaneous energy is at t = 1380 (Fig. 13b caption, p. 18–19). At St 0.5 the leading-mode coefficient peaks at t = 1150 (p. 20).
  - The pressure norm of the data and of every 1 × 129 reconstruction peaks at the same instant (Fig. 14, p. 19–20). So times when the flow resembles the leading SPOD modes are times of high total energy. The authors stress this is not self-evident, since SPOD optimality is only statistical (p. 20, 26).
  - Mode contributions at the energy peak (t = 1150): the St 0.5 leading mode matches the KH wave near the nozzle in phase; the St 0.05 mode matches a long wave (λ ≈ 5D) at 12 ≲ x ≲ 20, less cleanly (Fig. 17, p. 22–23).
- **Prewhitening** (§3.4, p. 23–24): rescaling frequency-domain coefficients so the summed energy is one at each frequency emphasises high-frequency shear-layer structures and reveals the low-energy **trapped acoustic modes** in the potential core (Towne et al. 2017; Schmidt et al. 2017b), while preserving spatial coherence, unlike point-wise prewhitening (p. 24).
- **Recommendation** (p. 26): time-domain route for low-rank reconstruction of individual snapshots; frequency-domain route (with convolution for time-continuous coefficients) for denoising and frequency–time analysis.

## Setup / method

### Data
| Item | Value | Page |
|---|---|---|
| Flow | isothermal subsonic round jet, M_j = 0.4, Re = ρ_jU_jD/μ_j = 0.45 × 10⁶, T_j/T∞ = 1 | 8 |
| Source | LES of Brès & Lele (2019), compressible unstructured finite-volume solver "Charles" (Brès et al. 2017) | 8 |
| Snapshots | n_t = 10,000 at Δt c∞/D = 0.2 | 8 |
| Domain | interpolated to cylindrical grid, x ∈ [0, 30], r ∈ [0, 6] (D units) | 8 |
| Variable | pressure only, azimuthal Fourier component m = 1 (complex data) | 8 |
| Scaling | velocity by U_j, pressure by ρ_jU_j², time by D/U_j; St = fD/U_j | 8 |
| SPOD | n_fft = 256, 50% overlap (n_ovlp = 128), n_blk = 77, Hamming window, n_freq = n_fft/2 + 1 = 129 | 8, 10 |

Check: (10,000 − 128)/128 = 77.1 → 77 blocks; 77 × 129 = 9933 modes, as quoted on p. 15.

- **Simulation side:** the LES is used as-is; the paper gives only the solver and refers to Brès et al. (2017, 2018, 2019) for numerics (p. 8). There is no stability, resolvent or reduced-order modelling. The same M 0.4 jet database underlies [towne-2018](towne-2018-spod-relationship-dmd-resolvent.md), [schmidt-2018](schmidt-2018-spectral-analysis-jet-turbulence.md) and [schmidt-2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md).
- **Denoising test data:** surrogate data, LES pressure plus additive Gaussian white noise, mimicking heavily contaminated PIV whose noise variance equals the signal variance (p. 15–16).

### SPOD (Welch) as used here (§2.1, p. 4–5)
1. Subtract the temporal mean; stack snapshots into Q = [q₁ … q_{n_t}] (eq. 2.1).
2. Split into n_blk blocks of n_fft snapshots overlapping by n_ovlp (eq. 2.4–2.5).
3. Apply the Hamming window **only when n_ovlp ≠ 0** (following Harris 1978), then DFT each block (eq. 2.6–2.8).
4. Gather the n_blk realisations at each frequency l into Q̂_l (eq. 2.9); solve the snapshot eigenproblem (eq. 2.10); recover the modes (eq. 2.11).

### Frequency-domain reconstruction (inverse SPOD; §2.2.1, App. A, p. 6, 26)
1. Expansion coefficients at frequency l: A_l = Φ_l^* W Q̂_l (eq. 2.13). Column k of A expands Fourier realisation (block) k; row i expands mode i in terms of the realisations (eq. 2.14).
2. **Truncate or reweight** by zeroing (or scaling) chosen entries of A_l: whole modes, whole frequencies, or eigenvalue-thresholded pairs.
3. Rebuild each block's Fourier data Q̂^(k) = Σ_i a_ik φ^(i) at every frequency (eq. 2.15) and inverse-DFT it, dividing by the window: q_j^(k) = F⁻¹{q̂_j^(k)} / w(j) (eq. 2.16).
4. **Stitch overlapping blocks** with the window-weighted mean (eq. A 1). For n_ovlp = 0 with a rectangular window, the blocks simply concatenate.
5. The first and last half-blocks have only one block covering them, so they keep the 1/w(j) division without a partner: this is where the edge over-prediction appears (p. 12).

### Time-domain reconstruction (oblique projection; §2.2.2, p. 6–8)
1. Collect modes at all frequencies, frequency-major, into Φ̃ (eq. 2.18).
2. Coefficients by weighted oblique projection Ã = (Φ̃^*WΦ̃)⁻¹Φ̃^*WQ (eq. 2.19); for one snapshot q̃ = Φ̃(Φ̃^*WΦ̃)⁻¹Φ̃^*Wq (eq. 2.20). Oblique because SPOD modes at different frequencies are not orthogonal in the spatial inner product (p. 7).
3. If Φ̃^*WΦ̃ is rank-deficient or ill-conditioned, use its eigendecomposition and keep k eigenvalues (eq. 2.22–2.23). Full-rank work uses the cut-off d_k/d₁ = 10⁻⁶ (p. 8).
4. Low-rank: Φ̃ contains only n_modes per frequency (an n_modes × n_freq basis, p. 10). For frequency–time analysis, use the **full** basis and then keep the leading coefficients (p. 17, App. B).
- Works on any snapshot, including data not used to build the SPOD (p. 6–7).

### Convolution (time-continuous coefficients; §3.3.2, p. 18–19)
- Sliding-window SPOD with n_ovlp = n_fft − 1 gives a coefficient at every time step (Towne & Liu 2019), interpreted as the frequency content at the block centre (p. 18–19). Memory: 3.6 TB here (p. 19).
- Instead, convolve each mode, expanded in time as φ_l^{(i)} e^{−i2πf_l t}, with the data, including the window and W (eq. 3.4). This uses space–time orthogonality, so coefficients are computed one at a time. With modes from a 50%-overlap SPOD it is equivalent in practice; it is "most efficiently computed using the FFT" (p. 19).

### Data dependence
All four applications need **time-resolved, uniformly sampled** data, since everything rests on Welch-type SPOD (p. 4–5). The time-domain projection of a single snapshot (eq. 2.20) does not itself need time resolution, but the SPOD basis it projects onto does (p. 6–7). Key parameters: n_fft, n_ovlp, window, n_modes per frequency, eigenvalue threshold (denoising), rank cut-off d_k/d₁.

## Key equations
Checked against rendered page images (p. 5–8, 19, 24, 26).

- **Hamming window** (eq. 2.6, p. 5):
  $$w(i+1)=0.54-0.46\cos\!\left(\frac{2\pi i}{n_{\rm fft}-1}\right),\qquad i=0,1,\dots,n_{\rm fft}-1$$
- **Block j-th column** (eq. 2.5, p. 4): $\mathbf q_j^{(k)}=\mathbf q_{j+(k-1)(n_{\rm fft}-n_{\rm ovlp})}$.
- **Windowed DFT** (eq. 2.7, p. 5): $\hat{\mathbf q}_j^{(k)}=\mathcal F\{w(j)\mathbf q_j^{(k)}\}$.
- **SPOD eigenproblem and modes** (eq. 2.10–2.11, p. 5):
  $$\frac{1}{n_{\rm blk}}\hat{\mathbf Q}_l^*\mathbf W\hat{\mathbf Q}_l\boldsymbol\Psi_l=\boldsymbol\Psi_l\boldsymbol\Lambda_l,\qquad \boldsymbol\Phi_l=\frac{1}{\sqrt{n_{\rm blk}}}\hat{\mathbf Q}_l\boldsymbol\Psi_l\boldsymbol\Lambda_l^{-1/2}$$
- **Inverse SPOD** (eq. 2.12–2.13, p. 6):
  $$\hat{\mathbf Q}_l=\boldsymbol\Phi_l\mathbf A_l,\qquad \mathbf A_l=\sqrt{n_{\rm blk}}\,\boldsymbol\Lambda_l^{1/2}\boldsymbol\Psi_l^*=\boldsymbol\Phi_l^*\mathbf W\hat{\mathbf Q}_l$$
  and equivalently $\boldsymbol\Phi_l=\frac{1}{n_{\rm blk}}\hat{\mathbf Q}_l\mathbf A_l^*\boldsymbol\Lambda_l^{-1}$ (p. 6).
- **Block rebuild and un-windowing** (eq. 2.15–2.16, p. 6):
  $$\hat{\mathbf Q}^{(k)}=\Big[\big(\textstyle\sum_i a_{ik}\boldsymbol\phi^{(i)}\big)_{l=1},\dots,\big(\sum_i a_{ik}\boldsymbol\phi^{(i)}\big)_{l=n_{\rm fft}}\Big],\qquad \mathbf q_j^{(k)}=\frac{1}{w(j)}\mathcal F^{-1}\{\hat{\mathbf q}_j^{(k)}\}$$
- **Window-weighted overlap stitching** (eq. A 1, p. 26):
  $$\mathbf q_i\approx\frac{\mathbf q_j^{(k)}w(j)+\mathbf q_{j-n_{\rm ovlp}}^{(k+1)}w(|j-n_{\rm ovlp}|)}{w(j)+w(|j-n_{\rm ovlp}|)},\quad j=i-(k-1)(n_{\rm fft}-n_{\rm ovlp})$$
- **Oblique projection** (eq. 2.17–2.21, p. 7):
  $$\mathbf Q\approx\tilde{\boldsymbol\Phi}\tilde{\mathbf A},\qquad \tilde{\mathbf A}=(\tilde{\boldsymbol\Phi}^*\mathbf W\tilde{\boldsymbol\Phi})^{-1}\tilde{\boldsymbol\Phi}^*\mathbf W\mathbf Q,\qquad \tilde{\mathbf q}=\tilde{\boldsymbol\Phi}(\tilde{\boldsymbol\Phi}^*\mathbf W\tilde{\boldsymbol\Phi})^{-1}\tilde{\boldsymbol\Phi}^*\mathbf W\mathbf q$$
- **Rank-k regularisation** (eq. 2.22–2.23, p. 7–8):
  $$\tilde{\boldsymbol\Phi}^*\mathbf W\tilde{\boldsymbol\Phi}=\mathbf U\mathbf D\mathbf U^*,\qquad \tilde{\mathbf A}_{\{k\}}=\mathbf U_{\{k\}}\mathbf D_{\{k\}}^{-1}\mathbf U_{\{k\}}^*\tilde{\boldsymbol\Phi}^*\mathbf W\mathbf Q,\quad d_k/d_1=10^{-6}$$
- **Convolution coefficients** (eq. 3.4, p. 19):
  $$\mathbf a_l^{(i)}(t)=\big((\boldsymbol\phi_l^{(i)}e^{-i2\pi f_lt})\circledast\mathbf q\big)(t)=\int_{\Delta T}\!\int_\Omega(\boldsymbol\phi_l^{(i)}(x))^*\mathbf W(x)\mathbf q(x,t+\tau)\,w(\tau)\,e^{-i2\pi f_l\tau}\,\mathrm dx\,\mathrm d\tau$$
- **Coefficient statistics** (eq. 3.5 = 3.6, p. 21, 23): $E\{a_f^{(i)}a_f^{(j)*}\}=\lambda_f^{(i)}\delta_{ij}$ (conjugate implied).
- **Prewhitening scalings** (eq. 3.7–3.8, p. 24):
  $$\text{scaling 1: }\frac{\sqrt{\sum_f\sum_i\lambda_f^{(i)}}}{\sqrt{\lambda_f^{(i)}}}\,\mathbf a_f^{(i)},\qquad \text{scaling 2: }\frac{1}{\sqrt{\sum_i\lambda_f^{(i)}}}\,\mathbf a_f^{(i)}$$
  Scaling 1 flattens every eigenvalue to the same value; scaling 2 keeps the mode hierarchy within each frequency.
- **Denoising metrics** (eq. 3.2–3.3, p. 17): SNR = P_signal/P_noise = σ²_signal/σ²_noise; error = ‖q − q̄‖_x/‖q‖_x.

> My observations, to check against the PDF before relying on them:
> - Eq. 3.4 as printed has no normalisation (no √n_blk or DFT scaling) and is written as a sum over x with a time integral; it should match eq. 2.13 only up to the DFT normalisation convention used in eq. 2.7. In discrete form it is the short-time Fourier transform, with the Hamming window of length n_fft, of the scalar series b(t) = ⟨φ_l^{(i)}, q(t)⟩_W. That is, project each snapshot onto the mode in space, then STFT the result. This reading is mine, but consistent with "computed using the FFT" (p. 19).
> - Scaling 1 as printed makes Σ_i over all modes at each frequency equal to n_blk × Σ_f Σ_i λ, not one, so the text's "sum of all eigenvalues equal to one at each frequency" (p. 24) fits scaling 2 but not scaling 1 literally. Fig. 18a shows all lines collapsed to one level (about 10⁻²) with the sum near 10⁰.
> - The low-pass comparison uses St 0.8 "inferred from figure 9", while the noise floor is said to cut the spectrum at St ≈ 1.5 (p. 15–16). Check which cut-off the threshold actually implies.
> - Fig. 16 statements on p. 21 ("all but the low frequencies St ≲ 0.2"; leading eigenvalue "under predicts … for St ≳ 1.0") had garbled inequality signs in extraction; confirm direction.

## Data tables
Errors of frequency-domain reconstruction by stitching option (Fig. 19a, p. 27; read off the bar chart, truncated energy subtracted, %):

| Option | 1 × 129 | 3 × 129 | 10 × 129 |
|---|---|---|---|
| Left block | ~145 | ~127 | ~58 |
| Right block | ~144 | ~122 | ~57 |
| Plain mean | ~82 | ~74 | ~35 |
| Larger window value | ~37 | ~30 | ~21 |
| Window-weighted mean (eq. A 1) | ~36 | ~28 | ~20 |
| Distance-weighted mean | ~37 | ~28 | ~20 |

Denoising (p. 15): threshold λ = 5 × 10⁻⁵; 74/9933 modes kept; 2.6% of noisy energy, 92.7% of clean energy retained; 99.26% storage saving.

## Figures worth remembering
- **Fig. 1 (p. 7):** blocks, Hamming windows, n_t, n_fft, n_ovlp, n_blk. The reference sketch for overlap stitching.
- **Fig. 2 (p. 9):** SPOD spectrum (m = 1), cumulative energy by mode, and per-frequency energy share with 50%/90% contours.
- **Fig. 4 (p. 11):** space–time and spatial norms of 1/3/10/all × 129 reconstructions, frequency vs time domain; edge over-prediction in the first block.
- **Fig. 6 (p. 13):** instantaneous pressure for each reconstruction rank and route.
- **Fig. 7 / 21 (p. 13, 29):** eigenspectra of 1 × 129 reconstructions with Hamming vs rectangular window: the cleanest demonstration of window-induced contamination.
- **Fig. 8 (p. 14):** reconstruction error vs modes per frequency.
- **Fig. 9–11 (p. 15–16):** noisy SPOD spectrum with threshold, signal and noise modes, denoised vs low-pass fields, SNR along the lipline and error over time.
- **Fig. 12–13 (p. 18):** SPOD spectrograms, time-domain vs convolution.
- **Fig. 14–15 (p. 20–21):** pressure norm near the energy peak, and coefficient traces with cross-correlation.
- **Fig. 17 (p. 23):** mode contributions at a high-energy instant.
- **Fig. 18 (p. 24):** prewhitened spectra and fields showing trapped acoustic modes.
- **Fig. 19–20 (p. 27–28):** stitching options and rectangular-window reconstructions.
- **Fig. 22–24 (p. 29–31):** reduced vs full basis projection; moving-mean time-domain spectrogram; convolution vs n_ovlp = n_fft − 1.

## Notation
- n_t snapshots, n_fft block length, n_ovlp overlap, n_blk blocks, n_freq = n_fft/2 + 1 (with zero frequency), n_modes modes kept per frequency; "n_modes × n_freq reconstruction".
- Q snapshot matrix; Q̂_l Fourier realisations at frequency l; Φ_l modes; Λ_l eigenvalues λ_l^{(i)}; Ψ_l snapshot-eigenproblem coefficients; A_l expansion coefficients (frequency domain); Φ̃, Ã full basis and oblique-projection coefficients (time domain); W weight matrix; w(j) window.
- ⟨·,·⟩_x spatial inner product (eq. 2.2); ⟨·,·⟩_{x,t} space–time inner product (eq. 2.3).
- "Frequency domain" = coefficients from eq. 2.13; "time domain" = from eq. 2.19 (p. 5).

## Relevance to this project
This is the methods reference for **step 2 of the SPOD → reconstruction → Hilbert POD pipeline** in CLAUDE.md: how to rebuild a time series from a chosen subset of SPOD modes and frequencies, and what the windowing does to it.

- **Which reconstruction feeds HPOD:**
  - Use the **frequency-domain** route. It keeps each retained mode at its own frequency, so the rebuilt signal is band-limited around the chosen tones, which is what a Hilbert step needs (p. 25–26). The time-domain projection mixes frequencies and reconstructs noise (p. 14, 25), so it would undo the band-limiting.
  - The truncation step is exactly "zero the coefficients you do not want" in A_l (p. 6). Selecting a screech tone and its harmonics, or the leading mode over a band, are both one-line masks on A.
  - The analytic signal can be built inside the reconstruction by keeping only positive-frequency bins (for real data) before the inverse DFT, which avoids a separate FFT Hilbert transform. *(My inference; not done in the paper. For complex azimuthal-mode data such as m = 1 here, positive and negative frequencies are distinct and both carry physics.)*
- **What the reconstruction can and cannot resolve in time** *(my inference from eq. 2.15–2.16 and A 1)*: within one block, a single-bin reconstruction is a constant-amplitude, fixed-frequency complex exponential (before the 1/w division). Amplitude and phase changes therefore enter only through the block-to-block variation of a_ik, blended by the window-weighted overlap. Instantaneous amplitude and frequency from HPOD on such a reconstruction are smoothed on the block length n_fft (256 snapshots here). Keep several neighbouring bins, or shorten n_fft, if faster modulation (e.g. mode switching) matters. The convolution coefficients show the same smoothing: they look like a Hamming-weighted n_fft moving average of the time-domain ones (p. 20, 30).
- **Edge effects and windowing, practically:**
  - The first and last ~half-blocks are over-predicted because they are divided by small window values with no overlapping partner (p. 12, Fig. 4b). With the Hamming window, w(1) = 0.08, so the edge amplification is up to 1/0.08 = 12.5 *(my arithmetic from eq. 2.6)*. Discard the first and last n_fft/2 snapshots of any rebuilt record, analogous to the 15% trim used before HPOD in [raiola-2025](raiola-2025-hilbert-pod.md) and the end effects discussed by [huang-1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md).
  - Stitch with the window-weighted mean (eq. A 1), not a single block or plain mean (Fig. 19, p. 27).
  - The Hamming window leaks energy from the retained modes into others (Fig. 7a vs 21a). If exact rank-1 behaviour matters more than leakage, a rectangular window with no overlap avoids it (p. 27). For a sharp screech tone, the multitaper SPOD of [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md) or the band-ensemble SPOD of [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md) are alternatives for the leakage problem; their reconstruction behaviour is not covered here.
- **SPOD spectrogram as an alternative or check on HPOD:** the convolution coefficients (eq. 3.4) give |a_l^{(1)}(t)| for each frequency, i.e. the intermittency of one spatially coherent structure. For screech or impingement tones this directly shows on/off bursts and mode switching between A1/A2 or helical/toroidal staging, at the cost of n_fft time smoothing. It is cheap: one spatial inner product per snapshot per mode, then an STFT. HPOD then refines it to instantaneous amplitude and frequency. Compare with wavelet scalograms of single signals ([torrence-1998](torrence-1998-practical-guide-wavelet-analysis.md)), which are local, whereas SPOD spectrograms are global (p. 17).
- **Denoising experimental data:** eigenvalue hard-thresholding just above the noise floor in the SPOD spectrum is directly usable on time-resolved schlieren (camera noise) and TR-PIV, and compresses the data by ~99% (p. 15). Use the frequency-domain route (p. 14).
- **Data types:** everything here needs time-resolved data. For non-time-resolved PIV, the analogous low-rank denoising is POD truncation (Raiola et al. 2015, Brindise & Vlachos 2017, cited p. 3), and frequency–time information is unavailable. The time-domain projection could project single PIV snapshots onto an SPOD basis from simultaneous time-resolved data of the same flow (p. 6–7); that is a possible bridge, *not tested in the paper*.
- **Prewhitening** could help find low-energy resonant structures in lab data, e.g. trapped or guided acoustic modes inside screeching or impinging jets, which are masked by energetic low-frequency structures (p. 24; cf. [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md), [schmidt-2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md), [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)).
- **Modelling side:** no stability or resolvent comparison. The finding that energetic bursts coincide with resemblance to the leading SPOD mode (p. 20) supports the wavepacket-intermittency picture used with resolvent models ([lesshafft-2019](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md), [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md), [cavalieri-2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md)).
- **Related notes:**
  - [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md): step 3 of the pipeline; HPOD's temporal modes give instantaneous amplitude and frequency without block smoothing.
  - [huang-1998-empirical-mode-decomposition-hilbert-spectrum.md](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md): conditions for meaningful instantaneous frequency; the SPOD reconstruction plays EMD's narrow-banding role. Cited here as one of the frequency–time tools (p. 3).
  - [towne-2018-spod-relationship-dmd-resolvent.md](towne-2018-spod-relationship-dmd-resolvent.md), [schmidt-2020-guide-spod.md](schmidt-2020-guide-spod.md): the SPOD theory and parameter guidelines followed here (p. 4, 8).
  - [schmidt-2019-streaming-spod.md](schmidt-2019-streaming-spod.md): streaming SPOD; the convolution approach has the same memory motive.
  - [sieber-2016-spectral-proper-orthogonal-decomposition.md](sieber-2016-spectral-proper-orthogonal-decomposition.md): a different "SPOD" whose time-domain filtered coefficients give continuous phase and frequency directly; an alternative route to time-resolved coefficients.
  - [schmidt-2018-spectral-analysis-jet-turbulence.md](schmidt-2018-spectral-analysis-jet-turbulence.md): physics of the same jet's SPOD modes.
- **Facility:** UC San Diego, LES data only; not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:** Towne & Liu (2019), sliding-window SPOD time–frequency analysis (APS abstract); Citriniti & George (2000), inverse SPOD reconstruction; Raiola, Discetti & Ianiro (2015), POD-based PIV denoising; Schmidt, Colonius & Brès (2017a), wavepacket intermittency.
