# Band-Ensemble Spectral Proper Orthogonal Decomposition with Frequency Attribution

- **Authors:** J. G. R. von Saldern (Caltech; TU Berlin), O. T. Schmidt (UC San Diego), P. Godbersen (DLR Göttingen), J. M. Reumschüssel (Cambridge; TU Berlin), T. Colonius (Caltech)
- **Source:** arXiv:2602.06588v2 [physics.flu-dyn] (preprint, v2 25 Jun 2026; APS style). Open-source MATLAB code: `https://github.com/jakobvonsaldern/bspod` (p. 12, ref. 49)
- **PDF:** `References/Paper_PDFs/VonSaldern-EtAl_2026_Band-Ensemble-Spectral-Proper-Orthogonal-Decomposition-With-Frequency.pdf` (36 pp.)
- **Tags:** SPOD, band-ensemble SPOD (bSPOD), frequency smoothing, Welch segmentation, multitaper, spectral leakage, bias–variance trade-off, frequency attribution, broadband–tonal flows, open cavity, Rossiter modes, time-resolved PIV, method of snapshots

## Summary
The paper proposes band-ensemble SPOD (bSPOD), a way to estimate SPOD modes without splitting the record into time blocks. It takes one DFT of the whole record and runs the POD eigenproblem on N_f *neighbouring* fine-resolution Fourier modes, rather than on N_b block realisations at one frequency. This is the SPOD version of classical frequency smoothing (Daniell/Blackman–Tukey). With N_f = N_b, the CSD matrix has the same size and effective bandwidth as Welch SPOD, and the cost is comparable. The long transform reduces spectral leakage. Because each column of the data matrix sits at a known fine frequency, the method-of-snapshots expansion coefficients can be turned into frequency weights, which give each mode a data-driven in-band frequency ("frequency attribution"). On a synthetic broadband–tonal signal and on time-resolved PIV of a Mach 0.6 open-cavity flow, bSPOD keeps tones sharp at coarse resolution (low variance in broadband regions, low bias at tones). Mode shapes and convergence are otherwise similar to Welch SPOD. The paper is purely about signal processing: it has no stability, resolvent or simulation component beyond noting that bSPOD keeps SPOD's link to resolvent analysis (p. 12).

## Key findings
- **Algorithm** (p. 9–11, 15; Fig. 1, p. 14):
  - Take one DFT of the full record with no taper, which gives a fine grid Δf̃ = 1/(N_t Δt).
  - Group N_f consecutive Fourier modes into Q̃_j and solve the N_f × N_f method-of-snapshots problem.
  - With N_f = N_b (no overlap), both methods have effective bandwidth Δf = N_f Δf̃ and use the same number of samples per estimate (p. 10, 15).
  - The bSPOD frequency grid is shifted by about Δf/2 relative to the Welch grid. The authors say this matters little (p. 16).
- **What the expansion coefficients mean** (p. 15): in Welch SPOD, Θ weights the *time blocks*. In bSPOD, Θ weights the *neighbouring Fourier coefficients*, which is what makes frequency attribution possible.
- **Frequency attribution** (eq. 15–16, p. 11–12):
  - The weights β = |θ|^ℓ are normalised over the band.
  - ℓ = 0 gives the band centre. ℓ = 1 gives a power-weighted mean frequency. ℓ = ∞ gives the frequency of the single largest contributor.
  - Because the weights are normalised, the attributed frequency always stays inside the band, so it "can only improve" on a fixed grid (p. 29).
- **Limits of N_f** (p. 12–13): N_f = 1 gives the normalised DFT mode (temporal coherence only). N_f = N_t gives space-only POD (eq. 18–20). Welch SPOD (1 block, or N_t blocks of length 1) and Sieber's time-filtered POD reach the same end points (p. 13).
- **Variable resolution** (p. 13–14, 16–17, 31): N_f can change with frequency (for example, narrow bands at low frequency or where wavelength varies strongly with frequency), and so can the overlap, without redoing the FFT. Welch needs full reprocessing to change the block length.
- **Artificial data, Δf = 0.5 Hz (N_b = N_f = 50)** (p. 20–22; Fig. 3 top): both methods recover the tone frequencies and powers and the two broadband branches, but with high variance. In bins that contain a tone, the tone takes mode 1 and the broadband ranks shift down by one (p. 20). The third mode, which is pure leakage, is about **one order of magnitude lower** for bSPOD than for Welch (p. 22).
- **Artificial data, Δf = 2 Hz (N_b = N_f = 200)** (p. 22; Fig. 3 middle):
  - bSPOD still captures the tones and the broadband spectra, with much lower variance.
  - Welch can't resolve the tones and leaks badly. This includes the 23 and 25 Hz pair, which are only one 2 Hz bin apart (Fig. 3).
  - The leakage also contaminates subleading modes at higher frequencies.
- **Hann taper on Welch** (p. 22; Fig. 3 bottom): it cuts far-field leakage, but its wider main lobe *increases* smearing next to the tones. The spurious subleading branch is still stronger than for untapered bSPOD. Tapering inside bSPOD is possible and would lower that branch further (p. 10, 22).
- **Cavity, eigenvalue spectra** (p. 23; Fig. 4):
  - At Δf = 25 Hz both methods capture the three Rossiter peaks (940, 1540, 2130 Hz), but the broadband part is noisy.
  - At Δf = 50 and 100 Hz, bSPOD (ℓ = ∞) keeps accurate tonal frequencies. Hann-tapered Welch loses in-band frequency information, and leakage from neighbouring tones biases its tonal estimates.
- **Mode shapes** (p. 25–27; Figs. 5–7):
  - Tonal mode at 1540 Hz (band 1525–1550 Hz, Δf = 25 Hz): nearly identical in both methods and well converged despite the noisy spectrum, because the tone dominates the CSD (p. 25).
  - Broadband mode at 425–450 Hz: equally noisy in both. At 400–500 Hz (N_f = N_b = 100), both are cleaner (p. 25–26).
  - Convergence as the record is cut to 75/50/25% at fixed Δf = 100 Hz, measured by the alignment in eq. 28: comparable for the two methods (p. 26–27).
- **Caveat on convergence** (p. 26): adding blocks or Fourier modes widens the effective band. If mode shape changes strongly with frequency (for example, a strongly dispersive wavelength), dissimilar dynamics get mixed. Only a longer record helps then.
- **Cavity, frequency weights** (p. 28–29; Fig. 8):
  - In broadband bands, β fluctuates around 1/N_f with no pattern. In tonal bands, β peaks at the tone.
  - ℓ = ∞ estimates land very close to the Rossiter frequencies. When a tone sits near a band edge, the adjacent band also gets a frequency at its edge next to the tone, which makes the spectra spikier (p. 28).
  - ℓ = 1 is less sharp for tones but still better than the band centre. In broadband bands it sits near the centre, while ℓ = ∞ can jump to the band edges (p. 28–29).
  - **Recommendation:** use ℓ = ∞ in tonal bands and ℓ = 1 in broadband bands, switched by the local variation of eigenvalue PSD with frequency. The authors propose this but do not implement it (p. 29, 31).
- **Band overlap** (p. 30–31; Fig. 9): N_f = 100 with 75% overlap refines the grid 4×.
  - With ℓ = 0 the tones show up as block-shaped steps, as in classical frequency smoothing. The authors suggest this is why Welch is preferred over smoothing for PSDs (p. 30).
  - ℓ = ∞ keeps the tonal peaks sharp. ℓ = 1 gives a smooth broadband spectrum.
  - Overlapping estimates are correlated, and the overlap factor must be accounted for when integrating PSD to recover total power (p. 30).
- **Cost** (p. 16): one length-N_t FFT costs more than N_b short ones, but there is no segmentation, tapering or block looping. bSPOD always uses the method of snapshots, which costs more when N_x is small relative to N_f. The eigenproblem is the same size as Welch's, so the overall cost is comparable.
- **Assumptions and limitations** (p. 7, 16):
  - bSPOD needs **one long, statistically stationary record**. It is "not directly suited" to combining several shorter records of the same process (p. 16).
  - It relies on neighbouring Fourier coefficients being approximately independent. This holds only for long records, since finite-record leakage correlates them (p. 16).
  - For broadband–tonal data, results should be read operationally: a finite record can't distinguish a line spectrum, a narrowband stochastic process and cyclostationary dynamics (p. 7).
- **Not tested here:** the paper compares only against Welch SPOD. There is no quantitative comparison with multitaper or adaptive SPOD (Yeung & Schmidt 2024), even though the cavity data set is the same one used there (p. 18–19).

## Setup / method
- **Welch SPOD baseline** (eq. 2–9, p. 7–8): N_t samples are split into N_b blocks of length N_w, optionally overlapped and tapered with w. Each block is DFT'd. For each frequency bin j, Q_j = [q̂_j^(1) … q̂_j^(N_b)] (N_x × N_b). The CSD is C_j = (α/N_b) Q_j Q_j^*, with α normalising window energy so eigenvalues are PSD (Parseval). The method of snapshots gives N_b modes per bin.
- **bSPOD algorithm** (eq. 10–16, p. 9–12):
  1. Take one DFT of the mean-subtracted full record, untapered (eq. 10).
  2. Form Q̃_j from N_f consecutive Fourier modes (eq. 11).
  3. Solve the N_f × N_f snapshot eigenproblem (eq. 13).
  4. Recover the modes (eq. 14).
  5. Compute the frequency weights from |Θ̃| (eq. 15) and the attributed frequencies (eq. 16).
  - The main parameter is N_f, which plays the role of N_b. Other choices are the band overlap and ℓ.
- **Requirements:** time-resolved and stationary data, ideally as one long continuous record (p. 16). There is no time-resolution-free variant. The N_f = N_t limit is ordinary POD (p. 13).
- **Artificial data** (Section III A, p. 17–18):
  - Periodic 1-D domain with two convecting broadband wavepacket branches. Each branch has the spectrum of a damped oscillator (eq. 22), random complex Gaussian Fourier coefficients (eq. 23), linear dispersion k = ω/c + k₀ (eq. 24) and a random spatial shift. Five pure tones are added (eq. 26–27).
  - Parameters are in the tables below.
- **Experimental data** (Section III B, p. 18–19; Fig. 2):
  - High-speed mono-PIV of a turbulent **Mach 0.6 open cavity** (Zhang, Cattafesta & Ukeiley 2020, Exp. Fluids). The same data set was used to benchmark adaptive SPOD (Yeung & Schmidt 2024).
  - The facility isn't described in this paper beyond its geometry. It is not Shock Lab group data.
  - Rossiter modes 2–4 appear at 940, 1540 and 2130 Hz, identified from a single-point Welch PSD of u′_y (1600-sample window, 50% overlap) (p. 19).
- **Comparison protocol:**
  - Always N_f = N_b with no overlap, so both methods give the same number of estimates at the same Δf (p. 20, 23).
  - Artificial data: no taper and ℓ = 1, then a Hann taper on Welch only (p. 20, 22).
  - Cavity: Hann taper on Welch, ℓ = ∞ for bSPOD (p. 23).
  - Mode alignment (eq. 28) for convergence; a 75%-overlap test with ℓ = 0/1/∞ (p. 30).
- **Modelling and simulation:** none. The authors stress that bSPOD and Welch SPOD approximate the same CSD operator. Once the estimate is converged, bSPOD modes therefore inherit SPOD's theoretical properties, including the SPOD–resolvent link of Towne, Schmidt & Colonius (2018) (p. 12).

## Key equations
- Welch block DFT: $\hat q^{(b)}(x_l,f_j)=\frac{1}{N_w}\sum_{n=0}^{N_w-1} w(t_n)\,q^{(b)}(x_l,t_n)\,e^{-i2\pi jn/N_w}$, with $\Delta f = 1/(N_w\Delta t)$ (eq. 2, p. 7).
- Welch CSD: $\mathbf C_j=\frac{\alpha}{N_b}\mathbf Q_j\mathbf Q_j^*$ (eq. 4). Normalisation: $\alpha=\frac{1}{\Delta f\,U}$, $U=\frac{1}{N_w}\sum_{n=0}^{N_w-1}w^2(t_n)$ (eq. 5, p. 8).
- Eigenproblem: $\mathbf C_j\mathbf W\boldsymbol\Phi_j=\boldsymbol\Lambda_j\boldsymbol\Phi_j$ with $\boldsymbol\Phi^*\mathbf W\boldsymbol\Phi=\mathbf I$ (eq. 6). Snapshot form: $\frac{\alpha}{N_b}\mathbf Q_j^*\mathbf W\mathbf Q_j\boldsymbol\Theta_j=\boldsymbol\Lambda_j\boldsymbol\Theta_j$ (eq. 7). Modes: $\boldsymbol\Phi_j=\sqrt{\frac{\alpha}{N_b}}\,\mathbf Q_j\boldsymbol\Theta_j\boldsymbol\Lambda_j^{-1/2}$ (eq. 8, p. 8).
- Full-record DFT: $\tilde q(x_l,f_\gamma)=\frac{1}{N_t}\sum_{n=0}^{N_t-1}q(x_l,t_n)\,e^{-i2\pi\gamma n/N_t}$, with $\widetilde{\Delta f}=1/(N_t\Delta t)=\Delta f/N_f$ (eq. 10, p. 9–11).
- Band ensemble: $\tilde{\mathbf Q}_j=[\tilde q_{j+1},\dots,\tilde q_{j+N_f}]$, $j=bN_f$ (eq. 11, p. 10).
- bSPOD CSD: $\tilde{\mathbf C}_j\approx\frac{\tilde\alpha}{N_f}\tilde{\mathbf Q}_j\tilde{\mathbf Q}_j^*$, $\tilde\alpha=1/\widetilde{\Delta f}$ (eq. 12, p. 10).
  - So $\tilde\alpha/N_f = 1/\Delta f$, while Welch with U = 1 has $\alpha/N_b = 1/(N_b\Delta f)$. Both represent the same total power in band Δf (p. 10–11).
- bSPOD snapshot problem: $\frac{\tilde\alpha}{N_f}\tilde{\mathbf Q}_j^*\mathbf W\tilde{\mathbf Q}_j\tilde{\boldsymbol\Theta}_j=\tilde{\boldsymbol\Lambda}_j\tilde{\boldsymbol\Theta}_j$ (eq. 13). Modes: $\tilde{\boldsymbol\Phi}_j=\sqrt{\frac{\tilde\alpha}{N_f}}\,\tilde{\mathbf Q}_j\tilde{\boldsymbol\Theta}_j\tilde{\boldsymbol\Lambda}_j^{-1/2}$ (eq. 14, p. 11).
- **Frequency weights:** $\beta_{\eta,\gamma}=\dfrac{|\theta_{\gamma,\eta}|^{\ell}}{\sum_{\gamma'=1}^{N_f}|\theta_{\gamma',\eta}|^{\ell}}$, so that $\sum_{\gamma'}\beta_{\eta,\gamma'}=1$ (eq. 15). **Attributed frequencies:** $\tilde{\mathbf f}_j=\boldsymbol\beta\,\mathbf f_j$ with $\mathbf f_j=[f_{j+1},\dots,f_{j+N_f}]^\top$ (eq. 16, p. 11). Here η is the mode rank and γ the Fourier mode within the band.
- POD limit (N_f = N_t): with the unitary DFT $F_{l,n}=\frac{1}{\sqrt{N_t}}e^{-i2\pi nl/N_t}$, $\tilde{\mathbf Q}=\mathbf X\mathbf F$, so $\tilde{\mathbf C}=\frac{\Delta t}{N_t}\mathbf X\mathbf F\mathbf F^*\mathbf X^*=\frac{\Delta t}{N_t}\mathbf X\mathbf X^*$. This is the covariance matrix up to Δt (eq. 18–20, p. 13).
- Synthetic broadband spectrum: $S(\omega)=\dfrac{4\zeta^2\omega_0^4}{(\omega_0^2-\omega^2)^2+(2\zeta\omega_0\omega)^2}$ (eq. 22, p. 17), which gives S(ω₀) = 1. Coefficients: $A(\omega_j)=\sqrt{S(\omega_j)\Delta f}\,z_j$, $z_j=(z_{re}+iz_{im})/\sqrt2$ (eq. 23).
- Dispersion and fields: $k_m=\omega_j/c_m+k_{0,m}$ (eq. 24). $y_m=\sum_{j=1}^{N_t/2}A_m(\omega_j)\exp\{i[k_m(\omega_j)(x_l-x_{0,m})+\omega_jt_n]\}$ (eq. 25). Tones: $o_r=B_r\exp\{i[k_rx_l/L_x+\omega_rt_n+\phi_r]\}$ (eq. 26). Total: $y=\sum_{m=1}^{2}g_my_m+\sum_{r=1}^{5}o_r$ (eq. 27, p. 18).
- Mode alignment: $A=\dfrac{|\varphi_{red}^*\varphi_{ref}|}{\|\varphi_{red}\|\,\|\varphi_{ref}\|}$ (eq. 28, p. 27).

> Eq. 5, 7, 8, 13–16 and 24–27 were checked against rendered page images. Eq. 2, 4, 10–12, 20, 22, 23 and 28 were rebuilt from garbled text, and the tildes on Δf were lost in extraction. Eq. 22's denominator and the square root in eq. 23 were inferred from E[|A|²] = SΔf (p. 17) and the "4ζ²ω₀⁴" numerator. Note that eq. 26 has no 2π (k_r x_l/L_x as printed, p. 18). Check these against the PDF.

## Data tables

**Artificial signal** (p. 18)

| Parameter | Value |
|---|---|
| N_x, L_x | 250, 10 (periodic) |
| N_t, Δt | 100,000, 10⁻³ (T = 100, so Δf̃ = 0.01 Hz and Nyquist = 500 Hz; derived) |
| Broadband oscillator | f₀ = 100, ζ = 0.2 |
| Branch 1 (g, c, k₀) | (1.0, 200, 0.5) |
| Branch 2 (g, c, k₀) | (0.5, 150, 1.5) |
| Tones (B, f, k) | (5, 23, 3), (3, 25, 8), (6, 30, 5), (5, 75, 3), (5, 125, 6) |
| Runs | N_b = N_f = 50 (Δf = 0.5 Hz); 200 (Δf = 2 Hz); 200 with Hann on Welch |

**Cavity PIV** (Zhang et al. 2020 data; p. 19, 23, 26, 30)

| Parameter | Value |
|---|---|
| Flow | Mach 0.6 turbulent open cavity |
| Geometry | depth H = 26.5 mm, length 6H, span 3.85H |
| PIV | high-speed mono-PIV, centre plane, u_x and u_y, 154 × 54 grid |
| Record | N_t = 16,000 snapshots, Δt = 6.25×10⁻⁵ s (16 kHz, 1 s; so Δf̃ = 1 Hz, derived) |
| Rossiter modes | 940, 1540, 2130 Hz (modes 2, 3, 4) |
| SPOD/bSPOD runs | N_b = N_f = 25, 50, 100 → Δf = 25, 50, 100 Hz; no overlap; Hann (Welch); ℓ = ∞ (bSPOD) |
| Convergence test | record cut to 75/50/25%, Δf = 100 Hz fixed |
| Overlap test | N_f = 100, 75% band overlap, ℓ = 0/1/∞ |

## Figures worth remembering
- **Fig. 1 (p. 14):** schematic of how the data matrices are built. Welch segments, then DFTs, then forms Q_j per bin. bSPOD does one DFT, then forms Q̃ from N_f neighbouring bins.
- **Fig. 2 (p. 19):** cavity mean u_x and u_y, an instantaneous u′_y snapshot, and a single-point PSD with the three Rossiter peaks.
- **Fig. 3 (p. 21):** artificial data. The top, middle and bottom panels are Δf = 0.5 Hz, 2 Hz, and 2 Hz with Hann on Welch. They show the bSPOD leakage advantage, bSPOD resolving close tones at coarse Δf, and how a Hann taper smears the tones.
- **Fig. 4 (p. 24):** cavity, leading three eigenvalues at Δf = 25, 50 and 100 Hz, Welch (blue) vs bSPOD (orange). This is the core result for broadband–tonal data.
- **Fig. 5 (p. 25):** the 1540 Hz Rossiter mode (Re u_y) from bSPOD and Welch, which are nearly identical.
- **Fig. 6 (p. 26):** a broadband mode at 425–450 Hz vs 400–500 Hz. It is noisy at fine Δf and cleaner at coarse Δf, for both methods.
- **Fig. 7 (p. 27):** mode alignment against the full record for 75/50/25% records. The two methods are comparable.
- **Fig. 8 (p. 29):** frequency weights β(ℓ = 1) over 800–1700 Hz, with the ℓ = 1 and ℓ = ∞ attributed frequencies and the Rossiter lines.
- **Fig. 9 (p. 31):** 75% band overlap, comparing ℓ = 0 (block steps), ℓ = 1 (smooth broadband) and ℓ = ∞ (sharp tones, jumpy broadband).

> Fig. 8 caption (p. 29) says blue = ℓ = 1 and yellow = ℓ = ∞, but the legend and the text (p. 28) say blue = ℓ = ∞ and yellow = ℓ = 1. This note follows the legend and text. The same caption's "(see Fig. 5)" for the Rossiter frequencies is probably meant to be Fig. 2, and "Fig. 6, middle" on p. 28 is probably Fig. 4 middle. Check against the PDF.

## Notation
- N_t: record length (samples). N_w: Welch block length. N_b: number of blocks. N_f: band-ensemble filter length (consecutive Fourier modes per band).
- Δf: effective bandwidth / Welch bin spacing. Δf̃ = 1/(N_t Δt): fine full-record spacing. Ñ_w: number of bSPOD bands.
- Q_j, Q̃_j: data matrices. C_j, C̃_j: CSD estimates. W: inner-product weight matrix. Φ: modes. Λ: eigenvalues (modal PSD). Θ: snapshot expansion coefficients.
- β_{η,γ}: frequency weight of Fourier mode γ in bSPOD mode η. ℓ: weighting exponent (0 = band centre, 1 = weighted mean, ∞ = arg-max).
- α, α̃: PSD normalisation prefactors. U: window energy. w(t_n): taper.
- Synthetic signal: g_m, c_m, k_{0,m} (branch weight, convection speed, wavenumber offset); B_r, f_r, k_r, φ_r (tone amplitude, frequency, wavenumber, phase).

## Relevance to this project
This project analyses resonance and feedback data from the Shock Lab (time-resolved schlieren, acoustics, PIV); see CLAUDE.md. Screech and impingement tones sitting on broadband jet noise are exactly the **broadband–tonal** case this paper targets.
- **Which data it suits:**
  - bSPOD needs **time-resolved, stationary data in one long continuous record** (p. 16). That fits high-speed schlieren, microphone arrays and TR-PIV.
  - It does not suit non-time-resolved PIV. There the workflow stays with POD and POD mode pairs, as in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), which notes that SPOD couldn't be used on its 2 Hz PIV. bSPOD with N_f = N_t collapses to exactly that space-only POD (p. 13).
  - The cavity data set's origin paper (Zhang et al. 2020, SAMMs) estimates spectral modes from non-time-resolved PIV plus high-speed pressure (p. 19). That is a possible route for lab PIV with simultaneous microphones, and a candidate for `/add-paper`.
- **Practical gains over Welch SPOD for tonal jets:**
  - **Tone frequency at coarse resolution:** with ℓ = ∞ the attributed frequency stays close to the true tone even at Δf = 50–100 Hz (p. 23, 28). This would help track screech-stage jumps or closely spaced tones (A1/A2, twin-jet coupling) without needing long blocks. In the synthetic case, tones 2 Hz apart were separated at Δf = 2 Hz (Fig. 3).
  - **Less leakage without a taper:** the leakage-driven spurious subleading branch is about 10× lower (p. 22). This matters when judging whether a second mode at the screech frequency is physical (for example, a second azimuthal or flapping component) or just leakage.
  - **Re-tuning without redoing the FFT:** N_f and overlap can change after the transform and vary across the spectrum (p. 13–14, 31). For example, use narrow bands at the tones and wide bands in the broadband, or narrow bands where KH wavelengths vary fast with frequency (the Heidt & Colonius 2024 argument for jets; p. 14).
  - **Recommended settings from the paper:** start from N_f equal to the N_b you would use in Welch. Use ℓ = ∞ at tonal bands and ℓ = 1 in broadband (p. 29, 31). Use overlap only together with frequency attribution (p. 30–31). The code is MATLAB, which fits the lab tool chain (p. 12).
- **Caveats for lab data:**
  - Welch's ability to average several separate short runs is lost (p. 16). If schlieren or acoustic data come as many short acquisitions, Welch SPOD (or concatenation, untested here) is still needed.
  - Mode-switching or intermittent screech violates the stationarity bSPOD relies on. The paper says tonal results should be read operationally, since line, narrowband and cyclostationary processes can't be told apart in finite data (p. 7).
- **Link to the SPOD → reconstruction → HPOD pipeline:**
  - bSPOD is still a stationary, record-averaged estimate. Frequency attribution sharpens *where in frequency* a mode sits, but gives no time-local amplitude or frequency, so it does not replace Hilbert POD. See [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) and [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md).
  - Because bSPOD works on the full-record Fourier coefficients, a band-limited reconstruction (projecting the fine-grid coefficients q̃_γ of selected bands onto selected bSPOD modes, then inverse-DFT of the whole record) is a natural, block-free filter to feed HPOD. This avoids the block-edge and overlap issues of rebuilding from Welch SPOD. *This is an inference, not something the paper demonstrates.*
  - The spread of β across a tonal band (Fig. 8) may also serve as a quick diagnostic. A tone that drifts or switches during the record should spread its weight over more fine bins than a steady tone would. *This is also an inference to test.*
- **Modelling side:** the paper has no stability or resolvent component. It only states that converged bSPOD modes keep SPOD's equivalence to resolvent/stability modes (p. 12). Sharper tonal frequency estimates make it easier to compare SPOD modes with global or local stability or resolvent predictions at the screech frequency, as in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md) (global LSA matched St to about 1%). Jet SPOD/resolvent studies where bSPOD could replace Welch include [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) and [nogueira-2019-large-scale-streaky-structures-jets.md](nogueira-2019-large-scale-streaky-structures-jets.md).
- **Related SPOD variants and how this paper relates to them:**
  - [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md) is the closest comparator: the same cavity data set and the same broadband–tonal goal. Adaptive SPOD uses a single zero-padded FFT with sine tapers and an iterative, frequency-dependent taper count. The authors call that iterative and costly (p. 5–6) and pitch bSPOD as non-iterative at Welch cost. They don't show a head-to-head comparison, but suggest combining bSPOD with adaptive N_f selection (p. 32). The two papers are complementary, not contradictory.
  - Other variants cited (p. 4–5), all candidates for `/add-paper`:
    - Multitaper and hybrid SPOD (Schmidt 2022, TCFD)
    - Robust SPOD (Colanera et al. 2025)
    - Time-shifted SPOD (Blanco et al. 2022)
    - Cyclostationary SPOD (Heidt & Colonius 2024)
    - Optimal SPOD frequency resolution (Heidt & Colonius 2024, arXiv:2402.15775)
    - Time-filtered POD (Sieber et al. 2016)
    - Multiscale POD (Mendez et al. 2019)
    - The SPOD guide (Schmidt & Colonius 2020)
    - The SPOD–DMD–resolvent paper (Towne, Schmidt & Colonius 2018)
- **Facility:** not Shock Lab group data. The PIV comes from Zhang et al. (2020), and the facility isn't described here.
