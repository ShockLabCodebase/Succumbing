---
key: "wong-2021-wavepacket-modelling-bbsan"
title: "Wavepacket Modelling of Broadband Shock-Associated Noise in Supersonic Jets"
authors: ["Wong, M. H.", "Jordan, P.", "Maia, I. A.", "Cavalieri, A. V. G.", "Kirby, R.", "Fava, T. C. L.", "Edgington-Mitchell, D."]
year: 2021
type: "article"
venue: "JFM 918"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "918"}
doi: "10.1017/jfm.2021.324"
arxiv: "2012.04818"
pdf: "jet-noise-mechanisms/Wong-EtAl_2021_Wavepacket-Modelling-Of-Broadband-Shock-Associated-Noise-In-Supersonic-Jets.pdf"
version: "preprint"
unverified: ["DOI from References/group_papers.md (ORCID/OpenAlex/Crossref), not printed in the held arXiv PDF", "article number not known"]
group: true
facility: "Shock Lab group facility (LTRAC supersonic jet facility PIV; SJAF anechoic chamber); Charles LES (Cascade)"
data: ["LES", "PIV", "microphones-far", "mic-array"]
methods: ["PSE", "shock-cell-model", "coherence", "SPOD", "symmetry-decomposition", "PSD", "acoustic-analogy"]
flow: ["round-jet", "supersonic", "underexpanded", "ideally-expanded"]
phenomena: ["BBSAN", "KH-wavepackets", "shock-cells"]
params: {"M_j": "1.45–1.5", "NPR": "3.40–3.67", "T_j/T_∞": "0.69–1.0", "m": "0–2"}
topics: ["jet-noise-mechanisms", "linear-models"]
related: ["tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "edgington-mitchell-2020-waves-in-screeching-jets", "nogueira-2021-wavepacket-modulation-shock-containing-jets", "pickering-2020-lift-up-kh-orr-jets", "tan-2015-bos-density-axisymmetric-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "gudmundsson-2011-instability-wave-models-near-field-jets", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "schmidt-2018-spectral-analysis-jet-turbulence", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1995-supersonic-jet-noise", "tan-2015-bos-density-axisymmetric-jets", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Inside-out BBSAN model: PSE/LES wavepackets × PIV-corrected Pack–Prandtl shock cells in Lighthill's analogy; m = 0–2 peaks within ±2 dB/St; LES coherence decay (jitter) fills up to 15 dB/St"
---
# Wavepacket Modelling of Broadband Shock-Associated Noise in Supersonic Jets

- **Authors:** M. H. Wong (Monash LTRAC), P. Jordan (Institut PPRIME, Poitiers), I. A. Maia (PPRIME), A. V. G. Cavalieri (ITA, São José dos Campos), R. Kirby (Monash), T. C. L. Fava (KTH), D. Edgington-Mitchell (Monash)
- **Source:** J. Fluid Mech. 918 (2021). This file is the arXiv version, arXiv:2012.04818v1 [physics.flu-dyn] (9 Dec 2020, JFM LaTeX style), so its page layout differs from the published article. The article number and DOI are not printed in this file and were not checked.
- **PDF:** `References/Paper_PDFs/jet-noise-mechanisms/Wong-EtAl_2021_Wavepacket-Modelling-Of-Broadband-Shock-Associated-Noise-In-Supersonic-Jets.pdf` (37 pp.; 36 MB because of the figures). PDF page numbers equal the printed page numbers.
- **Tags:** broadband shock-associated noise (BBSAN), Tam & Tanna mechanism, wavepacket source model, Lighthill acoustic analogy, two-point (CSD) source, Pack–Prandtl vortex-sheet shock cells, parabolised stability equations (PSE), coherence decay, wavepacket jitter, inside-out source eduction, LES (Charles, M_j 1.5), non-time-resolved PIV, azimuthally decomposed far-field acoustics, SPOD, underexpanded jet, screech

## Summary
The paper builds a BBSAN source from flow data alone ("inside-out") and tests it against azimuthally decomposed acoustics, instead of fitting source parameters to the far field. Following Tam & Tanna (1982), BBSAN is taken to come from the interaction of downstream-travelling wavepackets with stationary, quasi-periodic shock cells. The Lighthill stress is linearised to keep only the turbulence–shock cross terms (p. 6, 30). The shock component is a Pack–Prandtl vortex-sheet model whose wavenumbers and axial amplitude are corrected with mean PIV of a screeching M_j 1.45 jet (p. 9–11). The wavepacket component comes either directly from an ideally expanded M_j 1.5 LES or from PSE on the LES mean flow, scaled to the LES at one axial station, with or without two-point coherence taken from the LES (p. 12–14). Far-field predictions for m = 0, 1, 2 match measurements of an M_j 1.5 underexpanded jet in an anechoic chamber to within about ±2 dB/St at the BBSAN peaks (p. 20–23, 29). Perfectly coherent PSE wavepackets get the peaks right but leave deep dips between shock-cell-mode peaks; adding LES coherence decay (wavepacket jitter) fills most of them, which the authors take as the explanation for the "missing sound" in earlier models (p. 24–25, 29).

## Key findings
- **Peaks need only a linear wavepacket.** A perfectly coherent PSE source, which needs only a mean flow, shock-cell data and one amplitude constant, predicts the primary (n = 1) and secondary (n = 2) BBSAN peaks in frequency and amplitude (p. 24, 29). The authors conclude that second-order flow statistics do not matter for the far-field peak level (p. 24).
- **Accuracy at the peaks:**
  - LES model: within ±2 dB/St of the measurements in the sideline direction, for both amplitude and peak frequency (p. 20).
  - All models: peak amplitude of the n = 1 lobe within ±2 dB/St across the directivity range for the total of m = 0–2 (p. 22), and for each azimuthal mode (p. 22). The half-width is best at θ = 95° (p. 22).
  - The n = 2 lobe is less well predicted in the total signal, because 4–5 azimuthal modes are needed to rebuild it (p. 22, citing Wong et al. 2020).
- **Between the peaks, jitter matters** (p. 24–25):
  - Perfectly coherent PSE (γ = 1) under-predicts by up to 20 dB/St at upstream angles, and the primary-peak amplitude is off by up to 10 dB/St at downstream angles (p. 24).
  - Imposing the LES coherence (γ ≠ 1) recovers up to 15 dB/St of the "missing sound" (p. 25).
  - The dips are not fully removed even in the LES model (e.g. St = 0.6 at θ = 115°). The authors attribute what is left to shock-cell unsteadiness, which the model cannot represent because the shocks are zero-frequency (p. 25). Tam (1987) had attributed the dips to shock unsteadiness; this paper says most of the broadening is jitter instead (p. 25).
- **Missing sound at high frequency comes from higher shock-cell modes.** The secondary BBSAN peak is the wavepacket interacting with the n = 2 shock-cell mode, absent from Ray & Lele (2007) and Suzuki (2016) (p. 23, 29).
- **Where the models fail** (p. 20, 23):
  - At upstream angles (θ = 115° and 125°) peak frequency is under-predicted, although amplitude stays within ±2 dB/St.
  - At θ = 80° the n = 1 lobe is too broad, and the LES model over-predicts at St ≳ 1. Neglecting the entropy term in T_ij (cancellation, cf. Bodony & Lele 2008, who found the momentum term alone over-predicts by over 20 dB/St at high frequency for an M_j 2.0 jet) is offered as a possible reason (p. 20, 22).
  - Models peak at St_p ≈ 0.6 against ≈ 0.55 measured near θ = 80°. The second screech harmonic sits on the BBSAN peak, and screech is known to shorten the downstream shock train (André et al. 2013) (p. 23).
  - Below St ≈ 0.4 the models under-predict heavily, as expected, because mixing noise is excluded from the source (p. 20).
  - No screech tones appear in the predictions, since the resonance is not modelled (p. 20).
- **PSE with coherence decay sometimes beats the LES model** at upstream angles (p. 26). The explanation (p. 28): PSE misses the incoherent downstream fluctuations, so its source stops at about x = 8D while the LES source extends further. With identical coherence, any difference must come from the mean wavepacket envelope.
- **Source maps** (Fig. 14, p. 27): the source PSD (S_11, m = 0) is not a smooth Gaussian envelope as in subsonic jets. It is semi-distributed, with two lobes per shock cell: just upstream of the compression-wave focus and before the shock reflection point. It lies **inside the plume**, not on the sonic line in the shear layer (unlike Kalyan & Karabasov 2017 and Tan et al. 2018). Intensity spans 2D ≤ x ≤ 8D and is strongest between the 3rd and 5th shock cells, a little upstream of Norum & Seiner (1980) and Seiner & Yu (1984). It moves upstream as frequency rises (p. 27).
- **Coherence decay is invisible in the source PSD but shows in the CSD.** The radially integrated CSD of the LES source is "freckled", with discrete peaks from the shock cells; perfectly coherent PSE gives a broader CSD, and coherence decay makes it more compact and LES-like (Fig. 15, p. 28–29).
- **Wavepacket checks** (p. 17–19):
  - PSE and the leading SPOD mode of the LES agree in shape, wavelength and phase for St = 0.4–0.8, m = 0, including Mach-wave radiation (Fig. 5).
  - Centreline u_x energy rises by about four orders of magnitude from the nozzle exit to the peak at x_0 ≈ 5D; PSE under-estimates the LES beyond x ≈ 6D (Fig. 7, p. 17).
  - PSE shows a drop in u_x amplitude near the lip line from the phase jump of a perfectly coherent wavepacket; the LES does not, because of jitter (Fig. 6, p. 17).
  - Convection velocity u_c ≈ 0.7–0.8 U_j over most of the domain for both PSE and LES, with disagreement within the first diameter (Fig. 8, p. 18–19).
  - PSE is poor for St ≲ 0.3 because the Orr mechanism competes with weak KH growth, so only St > 0.4 is compared (p. 16).
- **Modified shock model** (Fig. 4, p. 15): the corrected Pack–Prandtl model matches the PIV shock perturbations [u_x, u_r, ρ]_s in phase and amplitude, including their axial decay, but not in the shear layer (vortex-sheet assumption). Shock perturbations are weak by x = 10D, so the source domain stops there (p. 15).
- **Database mismatch is small** (Appendix B, p. 31–32): M_j 1.45 vs 1.5 gives about 5% shorter shock spacing, a slight shift of the primary peak and 1–2 dB/St in level (β⁴ scaling). Temperature (TTR 1.45 vs 1) changes peak frequency only slightly (Fig. 16b). All three databases have Re > 4×10⁵.

## Setup / method

### Databases (Table 1, p. 7)

| Database | Role | M_j | M_d | NPR | T_j/T_∞ | D_j/D | Re | β |
|---|---|---|---|---|---|---|---|---|
| LES | wavepacket q_t, mean flow | 1.50 | 1.5 | 3.67 | 1.0 | 1.0 | 1.76×10⁶ | 0 |
| PIV | shock cells q_s | 1.45 | 1.0 | 3.40 | 0.70 | 1.07 | 8.51×10⁵ | 1.05 |
| Acoustic | target far field | 1.50 | 1.0 | 3.67 | 0.69 | 1.09 | 4.50×10⁵ | 1.12 |

> Table read from a rendered image of p. 7. My checks: β = √(M_j² − M_d²) gives 1.05 and 1.12; isentropic NPR and D_j/D for a convergent nozzle give 3.42/1.07 (M_j 1.45) and 3.67/1.09 (M_j 1.5); cold T_j/T_∞ = 1/(1 + 0.2M_j²) gives 0.70 and 0.69. All consistent.

- **LES** (p. 8, Table 2): extension of Brès et al. (2017), compressible solver *Charles* (Cascade Technologies), unstructured adapted grid of 40 million cells, isothermal ideally expanded M_j 1.5 jet from a round converging–diverging nozzle, matching the UTRC anechoic facility experiment (Schlinker et al. 2009). Near-wall adaptive refinement inside the nozzle gives turbulent exit boundary layers (Brès et al. 2018). Co-flow M_co = 0.1. Interpolated to a cylindrical grid 0 ≤ x/D ≤ 30, 0 ≤ r/D ≤ 6, (n_x, n_r, n_θ) = (698, 136, 128). Time step Δt c/D = 0.0004, saved every Δt c/D = 0.1 (every 250 steps), 10,000 snapshots over a duration of 1000 acoustic times; Nyquist St = fD/U_j = 3.33. Numerics and SGS model are in Brès et al. (2017), not here.
- **PIV** (p. 8): high-resolution 2D-2C PIV of a cold, screeching underexpanded M_j 1.45 jet from the LTRAC supersonic jet facility (Edgington-Mitchell et al. 2014a,b). **Shock Lab group facility**; the paper does not name the lab space. The facility is not anechoic and had no noise measurements. Field of view 10D × 2.2D, (N_x, N_y) = (1000, 75), optical resolution 0.001D/px. Only the **mean** axial and radial velocity are used. Mean density is reconstructed with the ideal gas law from temperatures and pressures by the method of Tan et al. (2018), and it agrees with mean BOS (Tan et al. 2015) (p. 11).
- **Acoustics** (p. 8–9): the Supersonic Jet Anechoic Facility (SJAF) at Monash University, a different rig from the PIV one (also a **Shock Lab group facility**; the paper names SJAF but not the lab space). Fully enclosed anechoic chamber, 400 mm foam wedges, cut-off 500 Hz, interior 1.5 m × 1.2 m × 1.4 m (wedge tip to tip). Converging round nozzle, D = 8 mm, unheated air at NPR 3.67. Two G.R.A.S. 46BE 1/4" microphones (4 Hz–100 kHz) on an azimuthal ring of radius 11D, one fixed and one traversed in azimuth; the CSD against azimuthal separation is decomposed into azimuthal modes (method of Wong et al. 2020). The ring is traversed axially, so measurements lie on a cylinder r = 11D and R varies. The polar-angle origin is moved to X_o = 5D (p. 19). Screech fundamental at St = 0.31 (p. 20).

### Source model (p. 4–7, 9–15)
1. **Acoustic analogy:** Lighthill's equation with free-field Green's function (eq. 2.1–2.5). The derivatives are moved onto the Green's function by the divergence theorem, which reduces sensitivity to numerical noise (p. 5). The far-field PSD of azimuthal mode m comes from the two-point CSD of the stress tensor (eq. 2.6–2.8). A **full volumetric source** is used, not a line source (p. 7).
2. **Stress tensor:** T_ij ≈ ρu_iu_j, entropy term and viscous stresses neglected (eq. 2.3). Decompose q = q̄ + q_t + q_s, with q = [u_x, u_r, u_φ, T, ρ]ᵀ and q̄ the mean of the ideally expanded jet (eq. 2.9). Keep only first-order turbulence–shock cross terms (eq. 2.11, Appendix A). All velocity components are retained, to improve sideline predictions (p. 7). Mixing noise is excluded by construction (p. 7).
3. **Domain:** 0 ≤ x ≤ 15D with a spatial Hann window to truncate smoothly (Martínez-Lera & Schram 2008); r ≤ 2D; contributions beyond x = 10D negligible (p. 7).
4. **Shock component q_s** (p. 9–11): Pack–Prandtl vortex-sheet model, stationary (ω_s = 0) and axisymmetric (m_s = 0), sum of Bessel modes (eq. 4.1–4.4). Then:
   - q_s ≈ q_PIV − q_LES, the PIV shock-containing mean minus the LES ideally expanded mean, with the LES interpolated onto the coarser PIV grid (eq. 4.5).
   - Shock wavenumbers adjusted by a linear fit to the Fourier transform of q_s downstream of the exit (eq. 4.6, after Morris & Miller 2010).
   - Axial amplitude variation b(x; n) by projecting the PIV q_s onto each vortex-sheet mode at each x, with a weighted inner product (temperature weight zero) up to the PIV domain edge (eq. 4.7–4.9).
   - Three shock-cell modes, n = 1, 2, 3 (p. 11).
5. **Wavepacket component q_t, LES model** (p. 12): Fourier transform in azimuth and in time. Blocks of N_fft = 128 samples, Hann window, 75% overlap, N_B = 310 blocks. ±m combined (no swirl). Each block's Fourier field goes directly into T_ij, and the source CSD is the block average (eq. 4.11). No further filtering.
6. **Wavepacket component q_t, PSE model** (p. 12–14):
   - Inviscid linearised equations with the multiple-scales ansatz (eq. 4.12–4.13; operators from Fava & Cavalieri 2019). LES mean flow as the base flow, linearly interpolated.
   - Chebyshev collocation in r; first-order finite differences in x, marched downstream with step size limited by Li & Malik (eq. 4.14); each frequency on its own axial grid. Normalisation condition eq. 4.15. Dirichlet conditions as r → ∞; parity-based centreline treatment (Mohseni & Colonius 2000).
   - Inflow: locally parallel KH eigenfunction at the nozzle exit.
   - Amplitude: project each LES block onto the PSE solution at the PSE wavepacket peak x_0 (eq. 4.16–4.18), average A over blocks. This is the single empirical constant per (m, ω).
   - Perfectly coherent source (eq. 4.19), or with coherence γ² computed between all source points directly from the LES source CSD and imposed on the PSE source (eq. 4.20–4.21). The coherence is not modelled with an analytic envelope (p. 14).
7. **SPOD** (p. 16–17): used only to check the PSE wavepacket shapes, on the LES with the snapshot method of Towne et al. (2018) (eq. 5.1). Block parameters for the SPOD are not stated separately.
8. **Convection velocity** (p. 18): from Re(α) for PSE (eq. 5.2), from the axial gradient of the CSD phase for the LES (eq. 5.3, after Maia et al. 2019).

> My derivations, not stated in the paper: with N_fft = 128 and Δt c/D = 0.1, the frequency resolution is Δf D/c = 0.078, i.e. ΔSt ≈ 0.052 (U_j/c = 1.5 for the isothermal LES). 10,000 snapshots with 75% overlap give 309 full blocks, not 310 as printed; check against the PDF (p. 12) if exact block counts matter.

### Stated limitations (p. 15, 25–26, 29)
- q_t and q_s are educed separately from different jets, so wavepacket–shock interaction (shock effect on wavepacket growth, convection, coherence; turbulence effect on shocks) is excluded by construction.
- PSE on a shock-containing base flow (Ansaldi et al. 2016) is not attempted because the slowly-diverging assumption fails near shocks (p. 15).
- Shocks are steady. Shock oscillation from screech, from upstream-travelling acoustic waves (Panda 1998; Edgington-Mitchell et al. 2018) or from shock coupling is not represented (p. 25).
- Coherence in a shock-containing jet may differ from that of the ideally expanded LES (p. 26).
- Accurate coherence, resolved in frequency and azimuth, is hard to obtain in practice (p. 29).

## Key equations
Lengths scaled by D, velocities by U_j unless stated; implicit e^{−iωt}.

- **BBSAN peak frequency** (Harper-Bourne & Fisher 1973; eq. 1.1, p. 2) and its Tam & Tanna form with shock-cell modes (eq. 1.2, p. 3):
  $$f_p=\frac{u_c}{L_s(1-M_c\cos\theta)},\qquad f_p=\frac{u_c k_n}{2\pi(1-M_c\cos\theta)},\quad n=1,2,3,\dots$$
  with L_s ≈ 2π/k_1, θ from the downstream axis, and off-design parameter β² = M_j² − M_d². Intensity ∝ β⁴ (p. 2). Non-dimensional form (eq. B1, p. 31): $St_p=\frac{u_cD_j}{U_j}\,\frac{1}{L_s(1-u_c/u_j\cos\theta)}$, L_s ≈ 1.3β.
- **Far-field PSD per azimuthal mode** (eq. 2.7–2.8, p. 6):
  $$\langle p(R,\theta;m,\omega)p^*(R,\theta;m,\omega)\rangle=\int_V\!\int_V\langle S_{ij}(m,\omega)\rangle\,\frac{\partial^2G_{0,1}(m,\omega)}{\partial x_i\partial x_j}\frac{\partial^2G^*_{0,2}(m,\omega)}{\partial x_i\partial x_j}\,\mathrm d\boldsymbol x_1\mathrm d\boldsymbol x_2,\qquad S_{ij}=T_{ij}(x_1,r_1;m,\omega)\,T^*_{ij}(x_2,r_2;m,\omega)$$
  with $G_0=\frac{1}{4\pi}\frac{e^{ik_a|\boldsymbol x-\boldsymbol y|}}{|\boldsymbol x-\boldsymbol y|}$, k_a = ω/c_∞ (eq. 2.5).
- **BBSAN stress tensor** (eq. 2.11, p. 6; derived in eq. A1–A3, p. 30):
  $$T_{ij}\approx\bar\rho\,(u_{i,t}u_{j,s}+u_{i,s}u_{j,t})+\rho_s(\bar u_iu_{j,t}+\bar u_ju_{i,t})+\rho_t(\bar u_iu_{j,s}+\bar u_ju_{i,s})$$
- **Pack–Prandtl shock cells** (eq. 4.2–4.4, p. 10):
  $$q_{s,vortex}(x,r)=\sum_{n=1}^{\infty}A_nJ_0(\alpha_nr)\,e^{-ik_{s_n}x},\qquad J_0(\alpha_n)=0,\qquad k_{s_n}=\frac{\alpha_n}{\sqrt{M_j^2-1}}$$
- **Empirical wavenumber correction** (eq. 4.6, p. 11): $k_{s_n,mod}=0.79\,k_{s_n,vortex}+1.02$.
- **Shock amplitude correction** (eq. 4.7–4.9, p. 11):
  $$\boldsymbol q_{s,mod}=b(x;n)\,\boldsymbol q_{s,vortex}(x,r;n),\qquad b(x;n)=\frac{\langle\boldsymbol q_{s,vortex},\boldsymbol q_s\rangle}{\|\boldsymbol q_{s,vortex}\|^2},\qquad \langle\boldsymbol a,\boldsymbol b\rangle=\int_0^R\boldsymbol a\,\boldsymbol b^*\,\boldsymbol W\,r'\,\mathrm dr'$$
- **PSE ansatz** (eq. 4.12–4.15, p. 12–13):
  $$\boldsymbol q_t=\hat{\boldsymbol q}_t(x,r)\,e^{i\int\alpha(x')\mathrm dx'}e^{-i\omega t}e^{im\theta},\qquad \mathbf A\hat{\boldsymbol q}_t+\mathbf C\frac{\partial\hat{\boldsymbol q}_t}{\partial x}+\mathbf D\frac{\partial\hat{\boldsymbol q}_t}{\partial r}=0,\qquad \Delta x\geqslant\frac{1}{|\mathrm{Re}\{\alpha_{m,\omega}(x)\}|},\qquad \int_0^\infty\hat{\boldsymbol q}_t^*\frac{\partial\hat{\boldsymbol q}_t}{\partial x}r\,\mathrm dr=0$$
- **PSE amplitude from LES** (eq. 4.17–4.18, p. 13–14): $\boldsymbol q^{(J)}_{t,LES}=\mathcal A\,\boldsymbol q_{t,PSE}$, $\mathcal A^{(J)}=\langle\boldsymbol q_{t,PSE},\boldsymbol q^{(J)}_{t,LES}\rangle/\|\boldsymbol q_{t,PSE}\|^2$, evaluated at x_0 (PSE peak) and averaged over blocks.
- **Coherence-matched source** (eq. 4.20–4.21, p. 14):
  $$\langle T_{ij}(\boldsymbol x_1)T^*_{ij}(\boldsymbol x_2)\rangle=\gamma^2(\boldsymbol x_1,\boldsymbol x_2;m,\omega)\,\check T_{ij}(\boldsymbol x_1)\check T^*_{ij}(\boldsymbol x_2),\qquad \gamma^2=\frac{|\langle S_{ij,LES}(\boldsymbol x_1,\boldsymbol x_2)\rangle|^2}{\langle|S_{ij,LES}(\boldsymbol x_1)|^2\rangle\langle|S_{ij,LES}(\boldsymbol x_2)|^2\rangle}$$
- **Convection velocity** (eq. 5.2–5.3, p. 18): $u_c=\omega/k_h=2\pi St/\mathrm{Re}(\alpha_{m,\omega})$ (PSE); $u_c=\omega\,(\partial\phi/\partial x_2)^{-1}$ (LES CSD phase).
- **Heated convection velocity** (Tam 1990; eq. B2, p. 31): $u_c/U_j=0.7-0.025(TTR-1)$.

> Equations were checked against rendered images of p. 2, 3, 6, 10, 11, 13, 14, 18 and 31. Points to verify before reuse:
> - **Units in eq. 4.2–4.6.** J₀(α_n) = 0 at the jet edge implies r is scaled by the jet radius in eq. 4.2–4.4. My check: k_{s1} = 2.405/√1.25 = 2.15 per radius gives a spacing of 2.92 R_j = 1.46 D_j, which matches L_s ≈ 1.3β = 1.45. The paper does not say whether the 0.79 and 1.02 in eq. 4.6 apply to wavenumbers per radius or per D, so the fit cannot be reused without the PDF or the authors' code.
> - **Eq. 4.21** is printed with S_ij,LES at single points in the denominator; it presumably means the source PSD at x_1 and x_2 (the usual magnitude-squared coherence). The square on |·|² in the denominator terms may be a typo.
> - My check of eq. 1.2 at θ = 90°: u_c = 0.7U_j and L_s ≈ 1.45 D_j give St_p ≈ 0.48; at θ = 120° (M_c ≈ 0.87 for the cold M_j 1.5 jet, U_j/c_∞ ≈ 1.25) St_p ≈ 0.34. Both are close to the dashed n = 1 curve in Fig. 9 as I read it.

## Data tables
**LES sampling** (Table 2, p. 8): (n_x, n_r, n_θ) = (698, 136, 128); duration 1000; sampling period 0.1; Nyquist St 3.33; 10,000 snapshots (time in acoustic units D/c).

**Model performance** (text; p. 20–25):

| Quantity | Value | Page |
|---|---|---|
| LES-model error, sideline, amplitude and peak frequency | within ±2 dB/St | 20 |
| Primary-peak amplitude error, all models, all angles | within ±2 dB/St | 22–23 |
| Perfectly coherent PSE, inter-peak deficit at upstream angles | up to 20 dB/St | 24 |
| Perfectly coherent PSE, primary-peak error at downstream angles | up to 10 dB/St | 24 |
| Sound recovered by coherence decay (jitter) | up to 15 dB/St | 25 |
| Peak St near θ = 80° | model ≈ 0.6, experiment ≈ 0.55 | 23 |
| Screech fundamental (acoustic jet) | St = 0.31 | 20 |
| Measured BBSAN lobe | St > 0.4, 65° < θ < 120° | 20 |
| Wavepacket convection velocity | 0.7–0.8 U_j | 19 |
| Source extent / maximum | 2D–8D; 3rd–5th shock cells | 27 |
| M_j 1.45 vs 1.5 effect on level | 1–2 dB/St | 31 |

**Values read from figures** (verify before quoting): measured peaks in Fig. 10 (total of m = 0–2) are about 140–145 dB/St at θ = 80–95° and about 135–140 dB/St at θ = 115–125°, with the PSE γ = 1 dips falling to roughly 105–110 dB/St near St ≈ 0.55–0.6 at θ = 115° (p. 23). Fig. 8 shows u_c/U_j rising to about 0.85 near x ≈ 8D at St = 0.8 (p. 19).

## Figures worth remembering
- **Fig. 1 (p. 5):** source (x, r, φ) and observer (R, θ, φ) coordinates with the azimuthal microphone ring.
- **Fig. 2 (p. 9):** LES (ideally expanded) and PIV (shock-containing) mean u_x, u_r and ρ.
- **Fig. 3 (p. 15):** flowchart of the two source constructions (LES-based and PSE-based).
- **Fig. 4 (p. 16):** PIV q_s against the modified Pack–Prandtl model for u_x, u_r, ρ over 0–10D. Good agreement in the core; poor in the shear layer.
- **Fig. 5 (p. 17):** Re(u_x) of leading SPOD mode vs PSE, m = 0, St 0.4–0.8, including Mach-wave radiation.
- **Fig. 6–7 (p. 18):** radial profiles at x = 4D (PSE lip-line phase-jump dip) and centreline PSD vs x (PSE falls below LES beyond about 6D).
- **Fig. 8 (p. 19):** u_c(x) from PSE and LES at St 0.4, 0.6, 0.8.
- **Fig. 9 (p. 21):** St–θ SPL maps at R = 11D for m = 0, 1, 2: experiment, LES model, PSE γ = 1, PSE γ ≠ 1, with eq. 1.2 curves for n = 1–3 (u_c = 0.7U_j). The single most useful summary figure.
- **Fig. 10 (p. 23):** total-signal spectra (m = 0–2 summed) at θ = 80°, 95°, 115°, 125° for all models. **Fig. 11–13 (p. 24–26):** the same per azimuthal mode.
- **Fig. 14 (p. 27):** x–r source PSD maps (S_11, m = 0, St 0.6 and 0.8) with sonic line and shock-reflection points; two lobes per shock cell inside the plume.
- **Fig. 15 (p. 28):** radially integrated source CSD (x_1, x_2) for LES, PSE γ = 1 and PSE γ ≠ 1, showing the narrowing from coherence decay.
- **Fig. 16 (p. 32):** eq. 1.2 peak curves for M_j 1.45 vs 1.5 and for TTR 1 vs 1.45.

## Notation
- q̄, q_t, q_s: mean, turbulent (wavepacket) and shock-cell components; q = [u_x, u_r, u_φ, T, ρ]ᵀ.
- T_ij: Lighthill stress (momentum part only); S_ij: its two-point CSD; Š_ij, Ť_ij: statistical (PSE-based) source.
- γ: two-point coherence of the source; γ = 1 is the perfectly coherent PSE model.
- k_{s_n}, α_n, A_n: shock-cell-mode wavenumber, Bessel zero and amplitude; n: shock-cell mode number; b(x; n): axial amplitude correction; W: weight matrix of the inner product.
- α_{m,ω}(x): complex PSE wavenumber; k_h = Re(α): hydrodynamic wavenumber; u_c, M_c: convection velocity and Mach number; 𝒜: PSE amplitude constant; x_0: PSE wavepacket peak.
- β = √(M_j² − M_d²): off-design parameter; L_s: shock spacing; TTR: total temperature ratio.
- θ: polar angle from the downstream axis (origin at X_o = 5D for the data); R: observer distance; St = fD/U_j; SPL in dB/St.
- N_fft, N_B: block length and number of blocks.

## Relevance to this project
This is the group's own BBSAN modelling paper (Monash authors, Shock Lab group facilities) and the reference for how wavepacket–shock interaction radiates sound. It complements the screech-closure papers, which deal with the resonant (tonal) side of the same interaction.

- **Link to screech physics:**
  - Eq. 1.2 is the condition that the difference wave k_h − k_{s_n} radiates at angle θ. The same KH-minus-shock interaction (k_kh − k_s) produces the upstream guided-mode component in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md) *(my connection; the paper does not make it)*. BBSAN is the non-resonant, broadband radiating part; screech closure uses the part matched to the guided jet mode.
  - The paper cites shock oscillation from upstream acoustic waves ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)) as one unmodelled effect (p. 25). Its jets screech (St = 0.31 in the acoustic rig; p. 20), and the second screech harmonic biases the BBSAN peak (p. 23).
  - The source sitting inside the plume and peaking at shock cells 3–5 (p. 27) is a target for schlieren or PIV comparison: shock-cell positions from mean fields can be overlaid on source maps.
- **Which methods suit which data:**
  - *Non-time-resolved PIV is enough for the shock part.* Only mean u_x, u_r and a reconstructed mean density are used (p. 10–11). The user's non-TR PIV of shock-containing jets could build q_s directly, with density from Tan et al. (2018) or BOS ([tan-2015-bos-density-axisymmetric-jets.md](tan-2015-bos-density-axisymmetric-jets.md)).
  - *Mean flow is enough for the PSE wavepacket*, plus one amplitude per (m, ω). Here the amplitude came from LES; with experiments it would need some time-resolved or multi-point data to set it.
  - *Time-resolved data are needed for the LES model and for the coherence* γ²(x_1, x_2; m, ω): Welch blocks (N_fft = 128, Hann, 75% overlap) in time plus an azimuthal FFT (p. 12). From experiments this would require time-resolved, azimuthally resolved fields, which planar schlieren cannot supply. The paper itself notes coherence is hard to obtain (p. 29).
  - *SPOD* is used only as a check that PSE wavepackets are right (p. 16–17). The same check (leading SPOD mode vs a linear model) applies to time-resolved schlieren.
  - *Azimuthal decomposition of acoustics* uses only two microphones, one traversed in azimuth (p. 8). It needs stationarity, not simultaneous array data, which is a cheap route for the lab's acoustic rigs.
- **Intermittency and jitter:**
  - Here jitter is represented only statistically through coherence decay, not tracked in time. The finding that jitter accounts for up to 15 dB/St between peaks (p. 25) gives a reason to measure wavepacket amplitude and phase modulation directly.
  - The SPOD → reconstruction → Hilbert POD pipeline ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)) could give instantaneous amplitude and phase of the wavepacket in time-resolved schlieren of a shock-containing jet, and could also track shock-cell oscillation, which the paper names as the remaining unmodelled source of broadening (p. 25–26). *(Suggestion, not done in the paper.)* Edge-trimming and the positive-wavenumber property of space-only HPOD would need care with stationary shock cells (see the caution in the Raiola note).
- **Modelling and simulation side:**
  - The model is linear in each component and keeps only cross terms; mixing noise, entropy noise, screech and shock unsteadiness are absent (p. 7, 20, 25).
  - PSE on an ideally expanded mean flow cannot capture shock modulation of the wavepacket. [nogueira-2021-wavepacket-modulation-shock-containing-jets.md](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) addresses this with parabolised Floquet equations; its finding that shock-free PSE wavepackets decay too fast agrees with this paper's under-prediction beyond x ≈ 6D (Fig. 7) and the truncated PSE source beyond 8D (p. 28).
  - The PSE breakdown below St ≈ 0.3 is attributed to the Orr mechanism, consistent with [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md). Pickering et al. used an M_j 1.5 Charles LES too, but with 31 million cells; this paper describes its LES as an extension of Brès et al. (2017) with 40 million cells, so they may not be the same run.
  - The Charles solver also underlies the twin-rectangular LES in [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md).
- **Rocket noise:** BBSAN is absent from full-scale rocket spectra at sideline and forward angles according to [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), and its relevance in rocket plumes "has yet to be definitively demonstrated" according to [mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md). That thesis does find BSN at full scale for the afterburning F404, with sources at discrete shock cells, cell I silent and the loudest near the end of the potential core. This agrees qualitatively with Fig. 14 here (little source in the first cell, maximum at cells 3–5), at a much higher TTR. The heating trend here (eq. B2; little change in peak frequency, p. 31) is one input to that question. For non-axisymmetric nozzles, BBSAN changes with trailing-edge geometry are in [kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md).
- **Facility notes:** the PIV comes from the LTRAC supersonic jet facility (not anechoic) and the acoustics from the SJAF anechoic chamber (D = 8 mm nozzle, 500 Hz cut-off). Both are Shock Lab group facilities; the paper does not name the Shock Lab, Combustion Lab or TABLE Lab. The PIV jet is the same rig family as [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md) (Weightman et al. 2019 is cited as using it; p. 8).
- **Follow-up candidates for `/add-paper`:**
  - Tam & Tanna (1982) and Tam (1987), the original BBSAN models.
  - Wong et al. (2019b, JFM 863), coherence decay in a line-source BBSAN model.
  - Wong et al. (2020, JASA 148), azimuthal decomposition of supersonic jet noise (the acoustic method used here).
  - Ray & Lele (2007), instability wave / shock-cell interaction.
  - Cavalieri & Agarwal (2014), coherence decay and sound radiation; Maia et al. (2019), two-point wavepacket modelling.
  - Tan et al. (2018), equivalent BBSAN source from PIV of screeching jets.
