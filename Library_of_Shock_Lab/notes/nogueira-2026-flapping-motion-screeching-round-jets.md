---
key: "nogueira-2026-flapping-motion-screeching-round-jets"
title: "Flapping motion in screeching round jets"
authors: ["Nogueira, P.", "Yeung, B.", "Nekkanti, A.", "Schmidt, O.", "Colonius, T.", "Brès, G.", "Jordan, P.", "Edgington-Mitchell, D."]
year: 2026
type: "article"
venue: "JFM 1045, A10"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "1045", "pages": "A10"}
doi: "10.1017/jfm.2026.12061"
arxiv: ""
pdf: "screech/Nogueira-EtAl_2026_Flapping-Motion-In-Screeching-Round-Jets.pdf"
version: "published"
unverified: []
group: true
facility: "CharLES LES (Cadence, formerly Cascade)"
data: ["LES"]
methods: ["LSA-Floquet", "SPOD", "symmetry-decomposition", "FW-H", "PSD"]
flow: ["round-jet", "supersonic", "overexpanded", "heated"]
phenomena: ["screech", "flapping", "streaks", "guided-jet-mode", "KH-wavepackets", "mean-flow-deformation", "precession"]
params: {"M_j": "1.35", "M_d": "1.5", "TR": "2.53", "Re": "7.6×10⁵", "St": "0.265", "m": "±1"}
topics: ["screech", "linear-models", "time-frequency-methods"]
related: ["nogueira-2019-large-scale-streaky-structures-jets", "rodriguez-2023-preferred-flapping-round-twin-jets", "nogueira-2021-twin-jet-coupling-spatial-lsa", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "nogueira-2021-wavepacket-modulation-shock-containing-jets", "edgington-mitchell-2023-screeching-jet-seen-from-all-sides", "mazharmanesh-2025-screech-modes-non-axisymmetric-jets", "ivelja-2024-modal-analysis-screeching-elliptical-jets"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "nogueira-2019-large-scale-streaky-structures-jets", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "nogueira-2024-guided-jet-waves", "pickering-2020-lift-up-kh-orr-jets", "rodriguez-2023-preferred-flapping-round-twin-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "schmidt-2020-guide-spod", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "stavropoulos-2024-upstream-waves-merging-twin-jets", "tam-1982-shock-associated-noise-cd-nozzles", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent", "yeung-2022-3d-spod-twin-rectangular-jet"]
summary: "Weak |m| = 2 streaks split m = ±1 KH and guided-jet modes into flapping/wagging (azimuthal-Floquet LSA); M_j 1.35 heated LES: screech flapping axis precesses with the streaks"
---
# Flapping motion in screeching round jets

- **Authors:** P. Nogueira (Monash), B. Yeung (UC San Diego), A. Nekkanti (Caltech), O. Schmidt (UC San Diego), T. Colonius (Caltech), G. Brès (Cadence Design Systems), P. Jordan (Institut Pprime, Poitiers), D. Edgington-Mitchell (Monash) (p. 1)
- **Source:** J. Fluid Mech. 1045, A10 (2026), doi:10.1017/jfm.2026.12061. Published open-access version (CC BY 4.0). Received 30 May 2025, revised 5 May 2026, accepted 25 Aug 2026 (p. 1). Funding: ARC DECRA DE240100933 (Nogueira), ARC Future Fellowship FT220100679 (Edgington-Mitchell), ONR, NAVAIR (p. 25).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/Nogueira-EtAl_2026_Flapping-Motion-In-Screeching-Round-Jets.pdf` (index key `screech/Nogueira-EtAl_2026_Flapping-Motion-In-Screeching-Round-Jets.pdf`, 30 pp.)
- **Page refs:** PDF page n = printed page A10-n.
- **Tags:** screech, flapping vs helical, |m| = 1 screech (stages B/C/D), precession of the flapping axis, streaks, lift-up, |m| = 2 mean-flow distortion, triad (±1, St) ↔ (2, 0), Floquet-in-azimuth spatial LSA, guided jet (GJ) mode, Kelvin–Helmholtz (KH), wagging vs flapping, heated overexpanded jet, CharLES LES, FW-H, SPOD, SPOD expansion coefficients (convolution / frequency–time analysis), phase tracking, cylindrical-shell SPOD, time-resolved data

## Summary
The paper explains why a jet from a round nozzle can screech in a *flapping* |m| = 1 mode with a fixed (slowly precessing) axis, when the axisymmetric linear operator supports m = +1 and m = −1 equally and a helix is just as valid. A Floquet-in-azimuth spatial linear stability analysis (LSA) on a tanh base flow shows that adding even a weak steady |m| = 2 streak makes the base flow π-periodic, couples m = ±1, splits the repeated |m| = 1 eigenvalue into a "flapping" and a "wagging" mode locked to the streaks, and shifts the guided-jet-mode existence band up (flapping) or down (wagging) in frequency. The hypothesis that streaks set the flapping axis is then tested on a CharLES LES of a heated, overexpanded M_j = 1.35 jet from a round C-D nozzle that screeches at St = 0.265 with |m| = 1. The time-averaged LES flow is visibly |m| = 2-distorted downstream of x/D ≈ 6 because lift-up streaks rotate only about π/2 over the whole record, and the screech pressure r.m.s. is modulated in azimuth in step with the streaks. SPOD expansion coefficients show the m = +1/−1 screech phase difference and the m = 2 streak phase drifting together over ~250 screech cycles, and a cylindrical-shell SPOD without azimuthal decomposition recovers two orthogonal flapping/wagging modes whose axes track the meandering streaks. The direction of energy transfer (screech feeding streaks, or streaks anchoring screech) is left open.

## Key findings
- **Why a round jet can flap: Floquet argument** (p. 7–8):
  - A 2π/N-periodic base flow couples azimuthal wavenumbers m = μ + jN (eq. 3.10). The smallest N that puts m = 1 and m = −1 in one mode is N = 2, i.e. a π-periodic (|m| = 2) distortion (p. 7).
  - Streaks are at ω → 0 and fall in the zeroth or first SPOD frequency bin, orders of magnitude slower than the KH wavepacket, so screech sees them as a steady mean-flow deformation. |m| = 2 streaks are therefore the natural candidate to fix the m = ±1 phase (p. 8).
  - This links to forced-jet experiments (Long & Petersen 1992; Corke & Kusek 1993) where phase-matched |m| = 1 forcing produced a quasi-elliptical mean flow, i.e. the triad (m, St) = (±1, St) ↔ (2, 0) (p. 4).
- **KH mode with streaks** (p. 9–10, Fig. 3; St = 0.3, δ = 0.15):
  - At A_s = 0 the flapping and wagging eigenvalues coincide (α ≈ 3.86 − 1.14i, read from Fig. 3a), so helices and flapping modes are interchangeable linear combinations (citing Rodríguez et al. 2023) (p. 10).
  - Any non-zero streak splits them; pure helical modes are then not solutions (p. 10). The axis-fixing effect appears even at A_s = 0.01 (p. 12).
  - Wagging: monotonic stabilisation and drop in wavenumber with A_s. Flapping: slight destabilisation at low A_s, then stabilisation; its wavenumber first rises then falls (p. 10).
  - Normalised difference (eq. 3.13): Δ_e α_r rises monotonically to ≈ 0.09 at A_s = 0.3; Δ_e α_i peaks ≈ 0.05 at A_s ≈ 0.1 and turns negative (≈ −0.015) by A_s = 0.3 (values read from Fig. 3b). So flapping is more unstable than wagging for low-to-moderate A_s, and always has the larger wavenumber (p. 10).
  - Suggested causes (not proven): changes in radial shear, new inflection points at different radii on the new major and minor axes, and azimuthal shear as in elliptical jets (p. 10).
- **GJ mode with streaks** (p. 11, Fig. 4; δ = 0.30):
  - Without streaks the neutral GJ mode exists for 0.274 ≲ St ≲ 0.294 (p. 11).
  - With streaks the whole dispersion relation splits: flapping shifted to higher St, wagging to lower St, as also seen in rectangular jets (Nogueira et al. 2023). Both branch and saddle points move, which could change screech frequency selection (p. 11).
- **Mode shapes** (p. 11–12, Fig. 5): at A_s = 0 the KH mode looks like a mix of flapping and helical with a spinning outer structure; the GJ mode looks like flapping at a random axis. With streaks both modes become elliptical-jet-like flapping/wagging modes with the axis locked to the streaks; rotating the streaks rotates the axis (p. 11).
- **Sensitivity** (Appendix B, p. 25–26, Figs. 20–21):
  - LSA on the actual LES mean flow at x/D = 2, filtered to m = 0 and |m| = 2: the |m| = 2 part is tiny and noisy but peaks near r/D ≈ 0.45, and still splits the |m| = 1 KH eigenvalues into flapping modes aligned with the streak (p. 25). Not done further downstream because the KH mode goes stable shortly after x/D = 2 (p. 25).
  - Isothermal model, M = 0.6–2, A_s = 0.01: the two wavenumbers differ across the whole range and the flapping mode is the more unstable one, so axis fixing does not depend on M (p. 25).
- **LES mean flow is not axisymmetric** (p. 13–14, Fig. 7, r/D = 0.6):
  - From x/D ≈ 6 onward the time-averaged U_x and U_r are modulated in azimuth, mainly |m| = 2, with u_x and u_r disturbances of the same sign, the lift-up signature (p. 14).
  - The streaks rotate only ≈ π/2 over the whole simulation, so a record at least 4× longer would be needed to average them out (p. 14).
  - The pressure r.m.s. shows a streamwise standing wave (peak near x/D ≈ 5) that is also modulated in azimuth; its azimuthal minima align with the low-speed streaks, whose peak is at x/D ≈ 12 for this radius (p. 14).
  - High-m streaks (dominated by m = 12) appear near the nozzle exit, possibly from the nozzle-internal boundary layer (p. 15).
- **Acoustic field** (p. 15–16, Fig. 8; FW-H sphere at 100D):
  - Sharp screech peak at polar angle φ = 160°; OASPL peaks at low φ (downstream, likely Mach-wave radiation from an extended wavepacket) and is mostly axisymmetric there (p. 15).
  - The screech fundamental radiates mainly upstream and downstream, with an m = 1 azimuthal modulation; the first harmonic is faint near φ ≈ 100° (p. 15–16).
  - The screech-frequency SPL shows four peaks, at |m| = 1 upstream and downstream, of similar but unequal amplitude, which the authors read as a slight dominance of one sign of m and so a slow precession (p. 16).
- **SPOD** (p. 16–18, Figs. 9–11):
  - Screech at |m| = 1, St = 0.265, almost all in SPOD mode 1 for both signs of m; energy at +m and −m differs (p. 16).
  - The harmonic (St = 0.53) is at |m| = 2 and is barely visible in the spectrum (p. 16).
  - Very-low-frequency structures carry far more energy than screech (p. 17).
  - The fundamental mode (density) shows acoustic beams upstream and downstream, a shock-modulated wavepacket and a KH–GJ standing wave; the harmonic radiates to the sideline and its peak lies downstream where the mode looks unconverged (p. 17).
  - The leading |m| = 2, St ≈ 0 mode is a lift-up streak (u_x and u_r of the same sign), with rolls visible in cross-planes at x/D = 5 and 10; it peaks where the mean-flow distortion was seen (p. 18).
  - Convergence check (Appendix A, Fig. 19): halving the record (16 vs 36 blocks) leaves the screech and m = 2 streak energies virtually unchanged (p. 25).
- **Phase locking of screech to streaks** (p. 18–21, Figs. 12–14):
  - SPOD expansion coefficients (Nekkanti & Schmidt 2021): m = 1 is consistently stronger than m = −1, and both amplitudes vary strongly but without correlation with each other or with the streak amplitude (p. 19–20).
  - The phase difference between the m = +1 and m = −1 screech coefficients drifts very slowly, ≈ π/2 over ≈ 100 screech cycles, plus small random jitter (p. 20).
  - The m = 2 streak phase drifts at the same rate, apart from an outlier near t/T_sc ≈ 75 that the authors attribute to a turbulent disruption of the streak (p. 20).
  - Reconstructions at t/T_sc = 24.4 and 219.7 (Fig. 14) show the flapping plane on the positive streak and the cancellation plane on the negative streak, with the whole pattern rotated ≈ 90° between the two times (p. 20–21).
  - The relative positions match the *wagging* mode of the LSA, which the authors suggest is favoured for closure through the shifted GJ band and KH wavenumber (p. 21).
- **Without azimuthal decomposition** (p. 21–24, Figs. 15–18; cylindrical shell r/D = 0.6):
  - Pressure SPOD finds a strong screech peak in mode 2 as well as mode 1, which the azimuthally decomposed SPOD did not show (p. 21).
  - Modes 1 and 2 have the same standing-wave pattern but are rotated π/2 in azimuth: two orthogonal flapping/wagging modes, as predicted by the LSA (p. 22). Mode 1 (the wagging mode) dominates most of the time; the two are similar in amplitude at the start of the record (p. 22).
  - Energy in both modes is a consequence of precession, because the cancellation plane rotates (p. 22). The authors compare this with twin-jet 3-D SPOD where unimposed D2 symmetries show up in suboptimal modes (Yeung et al. 2022).
  - The zero-frequency streamwise-velocity SPOD mode on the shell, read as the meandering part of the mean streaks, is |m| = 2-dominated downstream and varies at the same slow rate (p. 22–23).
  - Fig. 18: reconstruction from pressure SPOD modes 1–2 at x/D = 5 overlaid on the streak reconstruction at x/D = 15 shows cancellation/peak positions of the flapping mode following the negative/positive streaks through the whole record (p. 23–24).
- **Open question** (p. 25): energy could flow from screech to streaks (screech as forcing, as in Long & Petersen 1992) or the other way, or both. The dataset does not allow energy-flux computation; forced LES is proposed. The authors also suggest that stage C (helical) might correspond to weaker or differently placed streaks.

## Setup / method
- **No experiment.** Theory (LSA) plus LES. The Monash authors are from the Shock Lab group, but no Shock Lab group facility is used. The LES comes from Cadence (formerly Cascade Technologies) and is analysed with UCSD/Caltech SPOD tools (p. 12–13).

**Linear stability analysis** (p. 6–9):
- Compressible, *inviscid* Navier–Stokes linearised about a steady, locally parallel 2-D cross-plane base flow (r, θ). Normal-mode ansatz q(r, θ) exp(−iωt + iαx); spatial problem (real ω, complex α). Non-dimensionalised with D and c_∞ (p. 6).
- Single pressure equation (eqs. 3.1–3.4); Floquet ansatz in azimuth (eqs. 3.5–3.9); see Key equations.
- Numerics as in Nogueira & Edgington-Mitchell (2021): Fourier differences in θ, Chebyshev in r with mapping to cluster points in the shear layer (Bayliss & Turkel 1992); solved as an eigenvalue problem for α (p. 7).
- Base flow: Michalke tanh profile (eq. 3.11) plus a Gaussian |m| = 2 streak (eq. 3.12). M = U_j/c_∞ = 1.838, T* = T_j/T_∞ = 1.854 (LES values). δ = 0.15 for KH, 0.30 for GJ, chosen to match the LES vorticity thickness at x/D = 1 and 2. Streak r_s = 0.45, δ_s = 0.1, m_s = 2. A_s = 0–0.3 in steps of 0.05; the LES steady |m| = 2 amplitude is A_s ≈ 0.04 (p. 8). The thicker GJ profile is used because the GJ existence region is tiny for thin shear layers (Ivelja et al. 2024) (p. 8). Streak parameters chosen to peak near the shear-layer centre without reverse flow (p. 8).
- Check: M_j √T* = 1.35 × √1.854 ≈ 1.838, consistent.
- Nomenclature: "flapping" = oscillation mainly along the new minor axis, "wagging" = along the new major axis, as for elliptical jets (p. 9).
- KH modes at St = 0.3 (the |m| = 1 mode involved in screech, not necessarily the most unstable; Nogueira et al. 2022b). GJ modes compared at roughly fixed phase speed (|c_ph| ≈ 0.94): St = 0.29 (A_s = 0) and 0.282, 0.299 (A_s = 0.3) (p. 11–12).

**LES** (p. 12–13):
- CharLES (compressible, unstructured), round C-D nozzle, design M_d = 1.5, operated at M_j = 1.35, NTR = 2.53 (T* = 1.854): heated, overexpanded, shock-cell train with a small Mach disk near the nozzle. Re_j = 760 000 (p. 12–13).
- Nozzle-wall modelling and near-wall adaptive mesh refinement (Brès et al. 2018). Extension of Brès et al. (2017) case "A3", validated there against experiment at the same conditions (p. 13).
- Sampling f D/c_∞ = 10, 5000 snapshots (≈ 500 D/c_∞; ≈ 240 screech cycles by my estimate, consistent with Fig. 13's axis). Interpolated to a cylindrical grid N_x × N_r × N_θ = 698 × 136 × 128 on 0 ≤ x/D ≤ 30, 0 ≤ r/D ≤ 6 (p. 13).
- Far field: FW-H (Brès et al. 2017) to a 100D sphere, 36 azimuthal (0–180°) × 35 polar (5–175°) observers (p. 13, 15).

**SPOD and frequency–time analysis** (p. 5–6) — needs time-resolved data:
- Welch SPOD, block n_fft = 512, 75% overlap → 36 blocks, Hamming window, mean subtracted (p. 6). By my calculation ΔSt ≈ 0.0106 (U_j-based), so screech at St 0.265 is ≈ bin 25.
- Full domain: azimuthal FFT first (n_fft,θ = 128), state q = [ρ, u_x, u_r, u_θ, T], compressible-energy (Chu) norm (p. 5, 13).
- Cylindrical shell r/D = 0.6: no azimuthal decomposition; pressure and u_x analysed separately, interpolated to a uniform mesh, unit weights (p. 21).
- Expansion coefficients a_ω,j(t) by convolving the time-evolving SPOD mode with the data (Nekkanti & Schmidt 2021a), eq. 2.3. Used for amplitude (Fig. 12–13a) and, crucially here, **phase** tracking (Fig. 13b).
- Fourier symmetry: |a| of (m, −St) equals that of (−m, St), so the negative-St half of the m = 1 plot is m = −1 (p. 18).

## Key equations
- SPOD eigenproblem (eq. 2.2, p. 5): $\int_\Omega \mathbf C(\mathbf x,\mathbf x')\,\boldsymbol\psi_{\omega,j}(\mathbf x')\,d\mathbf x' = \sigma_{\omega,j}\,\boldsymbol\psi_{\omega,j}(\mathbf x)$.
- Convolution expansion coefficient (eq. 2.3, p. 6):
  $$\mathbf a_{\omega,j}(t) = \big((\boldsymbol\psi_{\omega,j}e^{-i\omega t})\circledast\mathbf q\big)(t) = \int_{\Delta T}\int_\Omega \boldsymbol\psi_{\omega,j}^*(\mathbf x)\,\mathbf W(\mathbf x)\,\mathbf q(\mathbf x,t+\tau)\,e^{-i\omega\tau}\,d\mathbf x\,d\tau,\qquad \sigma_{\omega,j}\approx\overline{\mathbf a_{\omega,j}\mathbf a_{\omega,j}^*}$$
- Pressure equation (eq. 3.1–3.4, p. 6–7):
  $$\frac1r\frac{\partial}{\partial r}\Big(r\frac{\partial p}{\partial r}\Big)+\frac1{r^2}\frac{\partial^2p}{\partial\theta^2}+A\frac{\partial p}{\partial r}+B\frac{\partial p}{\partial\theta}+Cp=0$$
  $$A=\frac1{\gamma\bar p}\frac{\partial\bar p}{\partial r}-\frac1{\bar\rho}\frac{\partial\bar\rho}{\partial r}-\frac{2\alpha}{\alpha\bar u_x-\omega}\frac{\partial\bar u_x}{\partial r},\quad B=\frac1{\gamma\bar p}\frac{\partial\bar p}{\partial\theta}-\frac1{\bar\rho}\frac{\partial\bar\rho}{\partial\theta}-\frac{2\alpha}{\alpha\bar u_x-\omega}\frac{\partial\bar u_x}{\partial\theta},\quad C=\frac{\bar\rho(\alpha\bar u_x-\omega)^2}{\gamma\bar p}-\alpha^2$$
- Floquet ansatz $p(r,\theta)=\hat p(r,\theta)e^{i\mu\theta}$ (eq. 3.5) gives (eq. 3.6–3.9):
  $$\frac1r\partial_r(r\,\partial_r\hat p)+\frac1{r^2}\partial_\theta^2\hat p+\hat A\,\partial_r\hat p+\hat B\frac1{r^2}\partial_\theta\hat p+\hat C\hat p=0,\quad \hat A=A,\ \hat B=B+2i\mu,$$
  $$\hat C=C-\frac{\mu^2}{r^2}-i\Big(\frac{2\alpha}{\alpha\bar u_x-\omega}\frac{\partial\bar u_x}{\partial\theta}+\frac1{\bar\rho}\frac{\partial\bar\rho}{\partial\theta}-\frac1{\gamma\bar p}\frac{\partial\bar p}{\partial\theta}\Big)\frac{\mu}{r^2}$$
- Coupled azimuthal wavenumbers for a 2π/N-periodic flow (eq. 3.10): m ∈ {…, μ − N, μ, μ + N, …}, μ = 0 … N − 1.
- Base flow (eqs. 3.11–3.12, p. 8): $U_x=\frac M2+\frac M2\tanh\!\Big(\frac1{2\delta}\big(\frac{r_j}{r}-\frac{r}{r_j}\big)\Big)$, $U_s=\mathrm{Re}\{A_sM\,e^{-((r-r_s)/\delta_s)^2}e^{im_s\theta}\}$, $\bar u_x=U_x+U_s$.
- Strouhal number (p. 9): presumably St = ωD/(2πU_j) = fD/U_j. The low-resolution render reads like "St = 2πD/U_j", so the symbols are garbled or it is a typo; check.
- Splitting measure (eq. 3.13, p. 10): $\Delta_e\alpha_{r,i}(A_s)=\big[\alpha_{r,i}^{\text{flap}}(A_s)-\alpha_{r,i}^{\text{wag}}(A_s)\big]/\alpha_{r,i}(A_s=0)$.

> Equations were rebuilt from rendered PDF pages 6–8 and 10; the text extraction was unusable. Points to check against the PDF before coding: the sign convention inside Ĉ (eq. 3.9) and that B̂ multiplies (1/r²)∂_θ in eq. 3.6 while B in eq. 3.1 has no 1/r² (as printed). r_j is not given a value in the text; it is presumably 0.5 (D-scaled). The mean ρ̄ and p̄ for the model base flow (Crocco–Busemann or similar) are not stated here; the paper defers to Nogueira & Edgington-Mitchell (2021).

## Data tables
**LES operating point** (p. 12–13):

| Quantity | Value |
|---|---|
| Nozzle | round C-D, M_d = 1.5 |
| M_j | 1.35 (overexpanded) |
| NTR / T_j/T_∞ | 2.53 / 1.854 |
| U_j/c_∞ | 1.838 |
| Re_j | 7.6 × 10⁵ |
| Screech | St = 0.265, |m| = 1 (harmonic St = 0.53, |m| = 2) |
| Snapshots / sampling | 5000 at f D/c_∞ = 10 |
| Grid (interpolated) | 698 × 136 × 128, x/D ≤ 30, r/D ≤ 6 |
| SPOD | n_fft 512, 75% overlap, 36 blocks, Hamming |

**LSA model parameters** (p. 8): M = 1.838, T* = 1.854, δ = 0.15 (KH) / 0.30 (GJ), r_s = 0.45, δ_s = 0.1, m_s = 2, A_s = 0–0.3 (step 0.05). Neutral GJ band at A_s = 0: 0.274 ≲ St ≲ 0.294 (p. 11).

**Values read from figures** (verify before quoting): Fig. 3a eigenvalue at A_s = 0 ≈ 3.86 − 1.14i; at A_s = 0.3 wagging ≈ 3.48 − 0.94i, flapping ≈ 3.82 − 0.93i. Fig. 3b Δ_eα_r ≈ 0.09 and Δ_eα_i ≈ −0.015 at A_s = 0.3. Fig. 20b LES-mean-flow eigenvalues α ≈ 3.17–3.19 − 0.245…0.255i.

## Figures worth remembering
- **Fig. 1 (p. 3):** sketches of varicose (A1/A2), flapping (B/D) and helical (C) screech KH structure.
- **Fig. 2 (p. 9):** model base flow, streak, streaky mean flow (quasi-elliptical) and its radial derivative (shear raised/lowered, new inflection points).
- **Fig. 3 (p. 10):** KH |m| = 1 eigenvalue splitting with A_s and the normalised difference.
- **Fig. 4 (p. 11):** GJ dispersion curves vs α_r and c_ph for A_s = 0, 0.15, 0.3: flapping shifted up in St, wagging down.
- **Fig. 5 (p. 12):** pressure eigenfunctions, KH and GJ, with and without streaks.
- **Fig. 7 (p. 14):** mean u_x, u_r, non-axisymmetric u_x and p_rms vs θ and x at r/D = 0.6 — the key evidence that streaks persist in the time average and line up with the screech standing wave.
- **Fig. 8 (p. 15):** far-field SPL, OASPL(θ, φ), screech-frequency SPL(θ, φ) and SPL(m, φ).
- **Fig. 12–13 (p. 19):** SPOD spectrograms for m = 1, 2; screech ±m and streak amplitudes; phase difference of m = ±1 vs streak phase (the central result).
- **Fig. 14 (p. 20):** 3-D reconstruction of flapping mode plus streak at two times, rotated ≈ 90°.
- **Fig. 16 (p. 22):** shell pressure SPOD modes 1 and 2 at screech, π/2 apart in azimuth.
- **Fig. 18 (p. 23):** θ–t map of the flapping-mode reconstruction at x/D = 5 with streak contours at x/D = 15: the precession follows the streaks.

## Notation
- m: azimuthal wavenumber; μ: Floquet exponent; N: azimuthal periodicity order; α = α_r + iα_i: complex streamwise wavenumber (α_i < 0 growing); ω: angular frequency (D/c_∞ units).
- A_s, r_s, δ_s, m_s: streak amplitude, radius, width and azimuthal order; δ: shear-layer thickness; r_j: jet radius parameter.
- Flapping / wagging: |m| = 1 mode oscillating along the new minor / major axis of the streak-distorted flow.
- KH: Kelvin–Helmholtz wavepacket; GJ: guided jet mode (upstream); T_sc: screech period; φ: polar angle; θ: azimuth.
- a_ω,j(t): SPOD expansion coefficient; ψ_ω,j: SPOD mode; σ_ω,j: SPOD eigenvalue.

## Relevance to this project
This project studies resonance and feedback in Shock Lab group experiments (schlieren, acoustics, PIV); see CLAUDE.md. This paper is about *why* an |m| = 1 screech mode picks a flapping axis in a round jet, which matters for interpreting any single-plane measurement of B/C/D-stage screech.

- **Data-side lessons:**
  - Single-view schlieren or planar PIV of an |m| = 1 screeching round jet sees a flapping mode whose axis precesses slowly (≈ π/2 over ~100 cycles here). The apparent amplitude in a fixed plane will drift over a run. Before calling a jet "helical" or "flapping" from one plane, check over a long record or use several view angles, as in [mazharmanesh-2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md).
  - The mean field itself may be non-axisymmetric (|m| = 2 streaks) if the record is shorter than a streak rotation. Azimuthally averaging is then not a neutral step.
  - The paper's precession tracking — phase difference of SPOD expansion coefficients at ±m against the phase of the St ≈ 0, m = 2 coefficient — is a direct template for the SPOD → reconstruction → Hilbert POD pipeline. It needs **time-resolved** data and an azimuthal basis (multi-view schlieren, azimuthal mic arrays, or 3-D data). With azimuthal microphone arrays alone one can still form m = ±1 at the screech frequency and track their phase difference over time.
  - For data without azimuthal decomposition, the same physics shows up as a screech peak split across SPOD modes 1 and 2 (orthogonal flapping axes). A strong second SPOD mode at the tone in planar or shell data may mean precession, not a second mechanism. The same caveat applies to non-time-resolved PIV POD pairs: a pair at the screech tone could mix flapping axes.
  - Hilbert POD or the Nekkanti–Schmidt convolution coefficients ([nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)) give instantaneous phase; see [raiola-2025](raiola-2025-hilbert-pod.md). The streak phase needs records long enough to resolve its slow rotation: here even 500 D/c_∞ covered only a quarter turn, and the streak sits at the zeroth or first SPOD bin, so low-frequency resolution (long n_fft) matters.
- **Modelling side:**
  - The Floquet-in-azimuth LSA is the same machinery used for twin and non-round jets ([nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md), [ivelja-2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md), [stavropoulos-2023](stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa.md), [stavropoulos-2024](stavropoulos-2024-upstream-waves-merging-twin-jets.md)). It is inviscid, locally parallel and shock-free; streaks are imposed analytically with an amplitude much larger than the LES value for clarity.
  - The predicted GJ band shift (flapping up, wagging down) gives a testable link to the [unifying theory](edgington-mitchell-2022-unifying-theory-jet-screech.md) and [A1/A2 closure](nogueira-2021-closure-mechanism-a1-a2-screech.md) arguments: which axis wins should depend on whether k_kh − k_s lands inside its GJ band.
  - A tension worth noting: the LSA says the flapping mode is the more unstable KH mode at low A_s (and in Appendix B), but the LES dominant mode matches the *wagging* orientation; the authors attribute this to closure (GJ band and KH wavenumber), not growth rate (p. 21–22).
  - Streaks: lift-up streaks in round jets are from [nogueira-2019](nogueira-2019-large-scale-streaky-structures-jets.md) and [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md); [marshall-2024](marshall-2024-prediction-streaks-rectangular-jets.md) does the rectangular-jet case. The LES spectrum structure matches [schmidt-2018](schmidt-2018-spectral-analysis-jet-turbulence.md).
- **Agreement with and differences from related notes:**
  - [rodriguez-2023](rodriguez-2023-preferred-flapping-round-twin-jets.md): same idea of degenerate m = ±1 eigenvalues split by an azimuthal non-homogeneity; there the second jet breaks the symmetry, here the streaks do.
  - [edgington-mitchell-2023](edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md) (on Léon et al. 2022): stage C helical screech with frequent helicity switching. This paper's mechanism suggests stage C corresponds to weak or unanchoring streaks, which it leaves as an open question (p. 25).
  - [yeung-2022](yeung-2022-3d-spod-twin-rectangular-jet.md) and [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md): symmetry splitting before SPOD; unimposed symmetries reappear in suboptimal SPOD modes, as for the shell SPOD here.
  - [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md), [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md), [nogueira-2021-wavepacket-modulation](nogueira-2021-wavepacket-modulation-shock-containing-jets.md): the KH–GJ standing wave and shock modulation seen in the LES SPOD modes. The Nogueira et al. 2024 *Guided-jet waves* paper (cited for the GJ radial support vs phase speed, p. 11) has its own note: [nogueira-2024](nogueira-2024-guided-jet-waves.md).
  - [bres-2021](bres-2021-les-twin-rectangular-jets-plasma.md): same CharLES solver family.
  - [mazharmanesh-2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md) and [ivelja-2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md): flapping/wagging nomenclature from non-axisymmetric jets that this paper borrows.
- **Impinging jets:** helical vs toroidal selection in impinging jets ([weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)) may have the same ambiguity for |m| = 1; the streak argument gives a reason to look at the low-frequency |m| = 2 content when an impinging jet flaps.
- **Related works cited, candidates for `/add-paper`:** Ponton & Seiner 1995 (B mode precession); Powell, Umeda & Ishii 1992 (round-jet oscillation modes); Long & Petersen 1992 and Corke & Kusek 1993 (helical forcing and mean-flow distortion); Wu & Huerre 2009; Léon et al. 2022; Brès et al. 2017 (the LES baseline); Nogueira & Cavalieri 2021 (triadic energy transfer); Nogueira et al. 2023 AIAA (rectangular-jet screech waves).
