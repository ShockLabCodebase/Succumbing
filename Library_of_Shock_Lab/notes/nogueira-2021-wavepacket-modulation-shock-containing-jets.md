---
key: "nogueira-2021-wavepacket-modulation-shock-containing-jets"
title: "Wavepacket modulation in shock-containing jets"
authors: ["Nogueira, P. A. S.", "Self, H. W. A.", "Towne, A.", "Edgington-Mitchell, D."]
year: 2022
type: "article"
venue: "Phys. Rev. Fluids 7, 074608"
bib: {"journal": "Physical Review Fluids", "volume": "7", "pages": "074608"}
doi: "10.1103/PhysRevFluids.7.074608"
arxiv: "2110.04914"
pdf: "shock-cell-models/Nogueira-EtAl_2021_Wavepacket-Modulation-In-Shock-Containing-Jets.pdf"
version: "preprint"
unverified: ["DOI and year from Library_of_Shock_Lab/group_papers.md (ORCID/OpenAlex/Crossref), not printed in the held arXiv PDF; volume and article number read from the DOI"]
group: true
facility: "Charles LES (Cascade)"
data: ["LES"]
methods: ["PSE", "LSA-Floquet", "shock-cell-model", "SPOD", "wavenumber-filtering"]
flow: ["round-jet", "supersonic", "underexpanded", "overexpanded", "heated"]
phenomena: ["KH-wavepackets", "shock-cells", "BBSAN"]
params: {"M_j": "1.086 (model), 1.35 (LES)", "M_d": "1.5 (LES)", "TR": "2.53 (LES NTR)", "Re": "7.6×10⁵ (LES)", "m": "0, 1"}
topics: ["shock-cell-models", "linear-models", "linear-operator-methods", "screech-frequency-and-global-modes"]
related: ["nogueira-2021-absolute-instability-shock-containing-jets", "edgington-mitchell-2020-waves-in-screeching-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "zhu-2021-recursive-one-way-navier-stokes", "wong-2021-wavepacket-modelling-bbsan", "tam-1982-shock-associated-noise-cd-nozzles", "nogueira-2026-flapping-motion-screeching-round-jets"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "morra-2021-colour-of-forcing-resolvent-channel", "nogueira-2019-large-scale-streaky-structures-jets", "pickering-2020-lift-up-kh-orr-jets", "raman-1998-supersonic-jet-screech-review", "schmidt-2018-spectral-analysis-jet-turbulence", "tam-1982-shock-associated-noise-cd-nozzles", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent", "wong-2021-wavepacket-modelling-bbsan"]
summary: "Parabolised Floquet equations on a zero-frequency-PSE shock-cell base flow model shock modulation of KH wavepackets (α ± jα_s); vs M_j 1.35 LES SPOD; no upstream waves"
---
# Wavepacket modulation in shock-containing jets

- **Authors:** P. A. S. Nogueira, H. W. A. Self, A. Towne, D. Edgington-Mitchell (Monash LTRAC; Towne at University of Michigan)
- **Source:** arXiv:2110.04914v1 (preprint, 10 Oct 2021; JFM style). Funded by ARC DP190102220 (p. 24).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/shock-cell-models/Nogueira-EtAl_2021_Wavepacket-Modulation-In-Shock-Containing-Jets.pdf` (30 pp.)
- **Tags:** shock-containing jet, wavepacket modulation, Kelvin-Helmholtz wavepacket, parabolised Floquet equations (PFE), PSE, zero-frequency PSE shock cells, spatially periodic LSA, Floquet ansatz, SPOD, LES, broadband shock-associated noise (BBSAN), overexpanded jet, underexpanded jet

## Summary
The paper proposes a cheap linear model for how shock cells modulate Kelvin-Helmholtz (KH) wavepackets in imperfectly expanded jets. The shock-cell structure is computed with zero-frequency PSE on a modelled ideally expanded mean flow, and added to that mean flow to give a quasi-periodic shock-containing base flow. The linearised Navier-Stokes equations around this base flow are solved with a Floquet ansatz: a central KH wavenumber plus harmonics at α ± jα_s, where α_s is the slowly varying local shock-cell wavenumber. Parabolising gives the parabolised Floquet equations (PFE, from Ran et al. 2019), which are marched downstream like PSE. The method is tested on a modelled M_j = 1.086 underexpanded jet and validated against leading SPOD modes from an LES of an overexpanded M_j = 1.35 jet (m = 1, off-screech frequencies). PFE captures much of the modulation near the centreline and the envelope length better than PSE, but it cannot represent upstream-travelling waves, so screech frequencies are excluded and the near acoustic field is poorly predicted.

## Key findings
- **Physical mechanism** (abstract, p. 1; p. 24): the KH mode extracts energy from the mean flow, and the interaction with the shock cells redistributes energy into modulation wavenumbers α ± jα_s, as Tam & Tanna (1982) predicted.
- **Modulation components are slaved to the KH mode** (p. 12): q̂_{+1} and q̂_{−1} follow the KH growth/saturation/decay, because the KH mode is the only structure that extracts energy from the mean flow. q̂_0 is the most energetic component and resembles a PSE wavepacket.
- **Radial structure of the components** (p. 12, Fig. 4–5):
  - q̂_{+1} (higher wavenumber): single peak near the centreline and almost zero amplitude in the subsonic region of the jet. The shock effect is strongest where the shocks are.
  - q̂_{−1} (lower wavenumber, longer wavelength): similar single-peak shape at St = 0.4.
  - At St = 0.7, q̂_{−1} develops a double peak that closely resembles the second radial-order guided jet mode (Edgington-Mitchell et al. 2018). The authors attribute this to the neutral upstream mode contaminating the march, not to KH modulation (p. 13).
- **Positive vs negative modulation** (p. 14, Fig. 6), M_j = 1.086 centreline:
  - |p_{+1}| > |p_{−1}| at all x for St = 0.4; positive modulation dominates up to St ≈ 0.6.
  - The guided jet mode is propagative for St > 0.67 at x/D = 0 and becomes stable there at St = 0.8, where the Andersson damping had to be increased. Above St ≈ 0.6 the negative component is likely contaminated.
  - For low St, |p_{+1}| dominates until close to the shear layer, so positive modulation decays faster radially. For St ≥ 0.7 there is a peak near r/D = 0.2 tied to the neutral upstream wave.
- **Step-size restriction is new and stricter than PSE** (p. 6–7, eq. 2.20, Table 1): the harmonics replicate the upstream acoustic branch at ±Nα_s, so the minimum march step can grow by up to an order of magnitude. The problem worsens as M_j increases (α_s falls), so highly underexpanded jets are hard. This is the first derivation of the PFE step-size limit (p. 7).
- **Initial condition = truncated SPLSA** (p. 6): neglecting ∂/∂x in PFE gives the spatially periodic stability problem of Nogueira et al. (2021a). Its spectrum repeats at α_p ± nα_s, which puts upstream modes near the KH mode; that interaction underlies screech, but must be avoided here (p. 6, 9).
- **Zero-frequency PSE shock cells** (p. 8–9, 16–17):
  - The spatial eigenspectrum at ω = m = 0 has duct-like modes near the real axis matching Pack (1950).
  - Shear-layer growth moves the sonic line inward, so α_s increases and the shock amplitude decays downstream (Fig. 1).
  - For the LES case, amplitude and spacing of the shock cells after the first are well predicted up to x/D ≈ 6. PSE misses the Mach reflection in the first cell (over-predicting velocity), and the LES shocks decay faster beyond x/D ≈ 6 (Fig. 8).
- **Validation against LES SPOD** (M_j = 1.35, m = 1 pressure; p. 17–22):
  - St = 0.19 is the most favourable case (no nearby upstream waves): envelope captured to the end of the domain; modulation good near the KH peak and centreline, poor near the nozzle (p. 17).
  - St = 0.4: the SPOD mode shows a clear standing wave (strong upstream waves); PFE cannot capture it and under-predicts shear-layer modulation (p. 17). St = 0.74 similar, with upstream acoustic waves in the outer shear layer.
  - St = 0.91: acoustic beams in both SPOD and PFE; a second downstream structure in the SPOD is not captured (p. 17).
  - Peak positions at r/D = 0.1 are in fair agreement; at low St they are the same or slightly downstream, attributed to small wavenumber errors in PSE/PFE that shift the interference pattern (p. 18).
- **PFE beats PSE on the envelope** (p. 18–19, Fig. 11): shock-free PSE wavepackets decay too fast at higher St. Since PSE matches SPOD in ideally expanded jets (Sinha et al. 2014), the authors suggest the shock cells cause the longer wavepacket, through energy flux between wavenumbers.
- **Near acoustic field poorly predicted** (p. 18–20): PFE stabilisation damps acoustic waves; PSE may be better for Mach-wave radiation (Appendix B, p. 27).
- **Wavenumber spectra** (p. 20, Fig. 13): PSE captures only the peak wavenumber, with negative-k energy orders of magnitude lower. PFE spectra share several peaks with SPOD. Both PFE and SPOD carry strong energy at negative *propagative* (acoustically matched) wavenumbers, consistent with BBSAN being generated by wavepacket–shock modulation.
- **Positive-wavenumber filtered comparison** (p. 21–22, Fig. 14–16): filtering the SPOD to k_x > 0 and rebuilding PFE from q̂_0 and q̂_{+n} (n = 1–4) improves agreement substantially, especially near the nozzle. The second harmonic places both the medium and large peaks. The filtered SPOD modulation is weaker for all St, so either negative-wavenumber modulation is stronger than positive, or upstream waves cause much of the observed modulation; the authors state it is impossible to separate the two at this point (p. 21).
- **No experimental input needed** (p. 21, 24): only an equivalent ideally expanded mean flow. An experimentally measured shock-containing mean flow, decomposed the same way, could be used instead (p. 24).

## Setup / method
- **Cases** (p. 7, 8, 14–16):

  | Case | Nozzle | M_j | Other | Mean-flow model | Re (zero-freq. PSE) | m | St analysed |
  |---|---|---|---|---|---|---|---|
  | Model problem (§3) | converging, underexpanded | 1.086 | conditions mimic Edgington-Mitchell et al. 2021 | Crighton & Gaster (3.1), a₁ = 10, a₂ = 2.5, a₃ = 1 | 200 | 0 | 0.4, 0.7 (Fig. 6: 0.2–1) |
  | Validation (§4) | C-D, M_d = 1.5, overexpanded, heated | 1.35 | NTR = 2.53, Re_j = 7.6×10⁵ | Sandham & Salgado (4.2–4.4), κ = 1.475 | 175 | 1 | 0.19, 0.4, 0.74, 0.91 |

  - Initial shock-cell wavenumber α_s = 11.6 for M_j = 1.086 (p. 9); Pack (1950) gives k_shock D = 5.3 for M_j = 1.35 (p. 17).
  - The low Re acts as a turbulent Reynolds number for the zero-frequency (mean-flow) equation, damping the shock cells and setting their spacing variation; close to the value of Tam et al. (1985) (p. 8, 16).
  - Mean temperature from Crocco–Busemann, density from the ideal gas law; mean radial velocity neglected (p. 7, 16). D_j from Tam et al. (1985) (p. 16). The coefficients in (4.4) were tuned to match the LES sonic line, because zero-frequency PSE is very sensitive to it (p. 16). κ from a least-squares fit to the LES centreline velocity.
- **Linear operator** (p. 3–4): compressible linearised N-S in the form of Towne (2016), state q = [ν u v w p]ᵀ (specific volume, three velocities, pressure). Lengths by D, velocity by c∞, specific volume by ν∞. Second x-derivatives neglected (parabolisation).
- **Numerics** (p. 7–8):
  - Radial: Chebyshev collocation (Weideman & Reddy 2000) with the Lesshafft & Huerre (2007) mapping and boundary conditions; N_r = 200; r_max/D = 50.
  - Streamwise march: first-order implicit Euler (p. 4). Shock-cell PSE step Δx = 1/k_shock (Pack wavenumber). PFE step from (2.20) with α₀ = 2πSt/0.7 (KH phase speed 0.7U_j).
  - Andersson et al. (1998) stabilisation implemented to relax the step limit (damping proportional to the minimum step) (p. 7).
  - Harmonics: N = 0 (= PSE) and N = 4; N > 4 changes nothing significant (p. 8).
  - Initial eigenproblem (2.15) solved with Arnoldi via MATLAB `eigs`; the KH eigenmode is the initial condition. Slowly varying outputs are interpolated onto a finer equispaced mesh to rebuild the modulated wavepacket (p. 8).
  - Only one shock-cell mode is used; amplitude and phase could come from the nozzle-exit pressure mismatch (Tam et al. 1985). More shock-cell modes and an eddy-viscosity model may improve the spacing variation (p. 8, 17).
- **LES database** (p. 14; acknowledgement p. 24): supplied by G. Brès; similar to Brès et al. (2017), solver "Charles" (Cascade Technologies). Differences: Re_j = 760 000, wall modelling inside the nozzle and near-wall adaptive mesh refinement (Brès et al. 2018). Run time t c∞/D = 500, sampled at f D/c∞ = 10 → 5000 snapshots. Interpolated onto a cylindrical grid N_x × N_r × N_θ = 698 × 136 × 128 over 0 ≤ x/D ≤ 30, 0 ≤ r/D ≤ 6; azimuthal FFT with n_fft,θ = 128.
- **SPOD** (p. 15): needs time-resolved data. Eq. (4.1) (Towne et al. 2018) on m = 1 pressure, CSD over a reduced domain 0 ≤ x/D ≤ 10, 0 ≤ r/D ≤ 2. Welch: n_fft = 512, 75% overlap → 36 blocks, ΔSt ≈ 0.01. Window not stated.
- **Wavenumber analysis** (p. 20–21): spatial FFT of SPOD and PFE modes at r/D = 0.1 over x/D ≤ 10 with a Hann window to limit truncation effects. Positive-k filtering of SPOD modes uses a simple rectangular bandpass filter.
- **Stated model limitations** (p. 20–21): (i) modelled mean flow differs from the LES; (ii) shock train approximated as a linear duct-like mode; (iii) truncation to finite harmonics; (iv) no turbulent forcing or eddy viscosity in the wavepacket model; (v) applied where it is not expected to perform ideally.

> Arithmetic checks (mine): 5000 snapshots with n_fft = 512 and 75% overlap gives ⌊(5000 − 512)/128⌋ + 1 = 36 blocks ✓. Δ(fD/c∞) = 10/512 ≈ 0.020; with U_j/c∞ ≈ 1.84 (M_j = 1.35, NTR = 2.53) this is ΔSt ≈ 0.011 ✓. M_j = 1.086 corresponds to NPR ≈ 2.10.

## Key equations
All from p. 3–7 and 15–16; re-typed from rendered page images.
- Linearised N-S (eq. 2.1, p. 3): $\dfrac{\partial \mathbf q}{\partial t} + \mathbf A\mathbf q + \mathbf B\dfrac{\partial \mathbf q}{\partial x} + \mathbf C\dfrac{\partial \mathbf q}{\partial r} + \mathbf D\dfrac{\partial \mathbf q}{\partial \theta} + \dfrac{1}{Re}\mathbf E_{r,\theta}\mathbf q = 0$.
- Fourier form and PSE ansatz (eq. 2.2–2.4, p. 4): $\mathbf q = \tilde{\mathbf q}(x,r,m,\omega)e^{-i\omega t + im\theta}$, $\tilde{\mathbf q} = \hat{\mathbf q}(x,r)\,\Gamma(x)$, $\Gamma(x) = e^{i\int^x \alpha(x_1)dx_1}$.
- PSE (eq. 2.6, p. 4): $-i\omega\hat{\mathbf q} + \mathbf L\hat{\mathbf q} + \mathbf B\dfrac{\partial\hat{\mathbf q}}{\partial x} + i\alpha\mathbf B\hat{\mathbf q} = 0$, with $\mathbf L = \mathbf A + \mathbf C\,\partial_r + im\mathbf D + Re^{-1}\mathbf E_{r,m}$.
- Normalisation (eq. 2.7, p. 4): $\int_0^{r_{max}} \hat{\mathbf q}\,\dfrac{\partial\hat{\mathbf q}}{\partial x}\,r\,dr = 0$.
- Shock-containing mean flow (eq. 2.8–2.10, p. 4–5): $\bar{\mathbf q} = \bar{\mathbf q}_0 + \mathbf q_s\Gamma_s + \mathbf q_s^*\Gamma_s^*$, with $\mathbf q_s = \hat{\mathbf q}(x,r,\omega=m=0)\,e^{-\int^x\alpha_i dx_1}$ and $\Gamma_s = e^{i\int^x \alpha_s dx_1}$ (α_i, α_s: imaginary and real parts of the zero-frequency PSE wavenumber).
- Floquet ansatz (eq. 2.11, p. 5): $\mathbf q(x,r) = \sum_{j=-N}^{N} \hat{\mathbf q}_j(x,r)\,\Gamma(x)\,\Gamma_s^j(x)$, i.e. wavenumbers α ± jα_s.
- PFE (eq. 2.12, p. 5): $-i\omega\hat{\mathbf q} + \mathbf L_t\hat{\mathbf q} + \mathbf B_t\dfrac{\partial\hat{\mathbf q}}{\partial x} + i\alpha\mathbf B_t\hat{\mathbf q} + i\alpha_s\mathbf B_{st}\hat{\mathbf q} = 0$, with $\hat{\mathbf q} = [\hat{\mathbf q}_{-N}\dots\hat{\mathbf q}_0\dots\hat{\mathbf q}_N]^T$. α is updated from (eq. 2.13) $\int_0^{r_{max}}\hat{\mathbf q}_0\,\partial_x\hat{\mathbf q}_0\,r\,dr = 0$, a small-modulation approximation of (2.7).
- Initial condition (eq. 2.14–2.15, p. 5–6): drop ∂/∂x → $\mathbf F\hat{\mathbf q} = i\alpha\mathbf B_t\hat{\mathbf q}$ (truncated SPLSA).
- Step-size limit (eq. 2.16–2.20, p. 6–7): $\Delta x > \Delta x_0 = \max\!\left(-2\,\dfrac{\mathrm{Im}[\alpha_u-\alpha_0]}{|\alpha_u-\alpha_0|}\right)$ over upstream modes α_u. With the acoustic branch $\alpha_u = -\omega\sqrt{1-z^2}$ this gives the PSE limit $\Delta x_0 = 1/|\mathrm{Re}[\alpha_0]|$. PFE replicates the branch, $\alpha_u = -\omega\sqrt{1-z^2} \pm N\alpha_s$, giving $\Delta x_0 = \max\!\left(1/|\mathrm{Re}[\alpha_0] \pm N\alpha_s|\right)$.
- Crighton & Gaster mean flow (eq. 3.1, p. 8): $U(x,r) = \dfrac{M}{2}\left\{1 + \tanh\!\left[\dfrac{a_1}{a_2x + a_3}\left(\dfrac{0.5}{r} - \dfrac{r}{0.5}\right)\right]\right\}$, M = U_j/c∞.
- SPOD (eq. 4.1, p. 15): $\int_\Omega \mathbf S(x,x',r,r',m,\omega)\,\boldsymbol\psi(x',r',m,\omega)\,r'dr'dx' = \sigma(m,\omega)\,\boldsymbol\psi(x,r,m,\omega)$.
- Sandham & Salgado mean flow (eq. 4.2–4.4, p. 16): $U = \dfrac{M}{2}\left[\tanh\!\left(\dfrac{r+a(x)}{\delta(x)}\right) - \tanh\!\left(\dfrac{r-a(x)}{\delta(x)}\right)\right]$, $a(x) = D_j\left[0.59 + 0.09\tanh\!\left(\sqrt{x/\kappa} - 2.9\right)\right]$, $\delta(x) = \dfrac{7 + 70(x/\kappa) + 0.15(x/\kappa)^4}{1000 + (x/\kappa)^3}$.
- Block structure for N = 1 (eq. A4–A5, p. 25): $\mathbf L_t = \begin{bmatrix}\mathbf L_0 & \mathbf L_{s^*} & O\\ \mathbf L_s & \mathbf L_0 & \mathbf L_{s^*}\\ O & \mathbf L_s & \mathbf L_0\end{bmatrix}$, $\mathbf B_t$ the same with B, and $\mathbf B_{st} = \begin{bmatrix}-\mathbf B_0 & O & O\\ -\mathbf B_s & O & \mathbf B_{s^*}\\ O & O & \mathbf B_0\end{bmatrix}$. Derived from continuity (A1–A3) by dropping Γ_s^{±2} terms and collecting powers of Γ_s station by station; Re → ∞ in the appendix. Operators L₀, L_s, L_{s*}, B₀, B_s, B_{s*} in (A6–A11), p. 26–27.

> (2.7) and (2.13) are printed without a complex conjugate on the first q̂; Herbert's standard form uses q̂^H. **F** in (2.15) is not written out; by comparison with (2.14) it is presumably −iωI + L_t + iα_s B_st. The matrix entries of (A6–A11) were not transcribed; check p. 26–27 if needed.

## Data tables
**Table 1 (p. 7):** minimum PFE step Δx₀ (D units) for a KH mode at 0.7U_j, St = 0.7.

| M_j | N = 0 | N = 1 | N = 2 |
|---|---|---|---|
| 1.086 | 0.1592 | 0.1972 | 0.1972 |
| 1.2 | 0.1592 | 1.0335 | 1.0335 |
| 1.7 | 0.1592 | 0.3591 | 1.4010 |

> My check: N = 0 is 1/(2π·0.7/0.7) = 1/(2π) = 0.1592 ✓. The N ≥ 1 entries are reproduced (to ~0.5%) by α_s D_j from the Prandtl–Pack spacing L/D_j = 1.306√(M_j² − 1): α_s ≈ 11.36, 7.25, 3.50 for M_j = 1.086, 1.2, 1.7, giving 1/|2π − α_s| = 0.197, 1.03, 0.359 and, for M_j = 1.7, 1/|2π − 2α_s| = 1.40. The paper does not say how α_s was obtained for this table.

## Figures worth remembering
- **Fig. 1 (p. 9):** M_j = 1.086 mean U with and without zero-frequency-PSE shock cells, and the centreline velocity. Shock cells are weak (centreline U/c∞ oscillating roughly 0.93–1.04 near the nozzle, read from the plot), confined to the potential core, and decay by x/D ≈ 6.
- **Fig. 2 (p. 10):** truncated SPLSA spectra (N = 4) at St = 0.4 and 0.7. Acoustic branch, discrete upstream mode and KH mode all repeat at α_s = 11.6.
- **Fig. 3 (p. 10):** initial KH eigenfunctions; centreline modulation is identical in wavenumber at both St and weak at the first station.
- **Fig. 4–5 (p. 11–12):** PFE u and p fields, total and q̂₀, q̂₊₁, q̂₋₁ at St = 0.4 and 0.7. Shows the centreline-confined positive component and the guided-mode-like double peak in q̂₋₁ at St = 0.7.
- **Fig. 6 (p. 15):** centreline |p₀|, |p₊₁|, |p₋₁| vs x (St = 0.4, 0.7) and log(|p₊₁|/|p₋₁|) maps in (x, St) and (r, St) with ΔSt = 0.1. Read-off: at St = 0.4, |p₊₁| peaks ≈ 0.3 and |p₋₁| ≈ 0.15 of the |p₀| peak; at St = 0.7, |p₋₁| (≈ 0.36) overtakes |p₊₁| (≈ 0.26).
- **Fig. 7 (p. 16):** first six SPOD eigenvalues, m = 1; sharp screech peak at St ≈ 0.26 over a broadband floor.
- **Fig. 8 (p. 17):** LES vs model shock-containing mean flow and centreline velocity.
- **Fig. 9–10 (p. 18–19):** SPOD vs PFE mode, absolute value and real part, St = 0.19/0.4/0.74/0.91.
- **Fig. 11–12 (p. 19–20):** |p| along r/D = 0.1 and 0.7 for SPOD, PFE (N = 4) and shock-free PSE; PFE gets the longer envelope at high St.
- **Fig. 13 (p. 21):** log wavenumber spectra of SPOD, PFE and PSE at r/D = 0.1 with acoustic wavenumbers marked.
- **Fig. 14–16 (p. 22–23):** same comparisons with SPOD restricted to k_x > 0 and PFE rebuilt from non-negative components; best agreement in the paper.
- **Fig. 17 (p. 27):** PSE run directly on the LES shock-containing mean flow: smooth, PSE-like wavepackets with weak modulation, but better near-field sound.

## Notation
- α: central (KH) complex wavenumber; α_s: real local shock-cell wavenumber; α_i: decay rate of the zero-frequency PSE solution; k_shock: Pack (1950) shock wavenumber.
- Γ, Γ_s: phase functions of the KH and shock-cell wavenumbers. q̂_j: slowly varying shape function of harmonic j (wavenumber α + jα_s); p₀, p₊₁, p₋₁: their pressure parts.
- N: number of harmonics retained (N = 0 is PSE). SPLSA: spatially periodic linear stability analysis.
- St = fD/U_j. p. 7 prints "St = 2πωD/U_j", which appears to be a typo; α₀ = 2πSt/0.7 implies St = fD/U_j.
- M = U_j/c∞ (acoustic Mach number); M_j: ideally expanded Mach number; M_d: design Mach number; NTR: nozzle temperature ratio.

## Relevance to this project
This project analyses resonance and feedback in shock-containing and impinging jets from Shock Lab experiments (schlieren, acoustics, PIV); see CLAUDE.md.

- **How it relates to [Waves in screeching jets](edgington-mitchell-2020-waves-in-screeching-jets.md)** (published as Edgington-Mitchell et al. 2021, JFM 913 A7, which this paper cites):
  - *Agrees:* both papers attribute the spatial modulation to the KH–shock interaction producing energy at k_kh ± k_s (Tam & Tanna 1982). The PFE q̂₊₁ has the k_kh + k_s wavenumber and the core-confined radial shape of the `k_t+` duct-like wave in that note (p. 12). PFE's q̂₋₁ at St = 0.7 turns into the guided jet mode, the `k_t-` wave (p. 13). The authors themselves say their St = 0.7 modulation components look very like the waves in Edgington-Mitchell et al. (2021) (p. 13).
  - *Differs in interpretation:* Waves in screeching jets treats the k_kh ± k_s content as separate waves (trapped duct-like mode and guided jet mode) whose superposition with the KH wave gives the modulation, and found *no evidence that the shocks directly modulate KH growth*. Here the same content is Floquet harmonics of one KH wavepacket, slaved to the KH growth (p. 12). PFE also lengthens the wavepacket envelope relative to shock-free PSE at higher St, and the authors suggest the shock cells cause this (p. 18–19). So in this model the shocks do change the KH envelope.
  - *Not a direct contradiction:* the earlier paper studies the screech frequency (PIV, POD, global LSA), whereas this one deliberately avoids screech because PFE cannot carry upstream waves (p. 9, 13, 15), and its envelope result comes from an overexpanded LES at off-screech frequencies. The authors also concede that they cannot yet separate negative-wavenumber modulation from upstream waves (p. 21), or the modulation structure from the different waves the flow supports (p. 13). The question the earlier note raised is therefore still open.
  - The M_j = 1.086 model case mimics the NPR 2.10 (A1) jet of that study. No experimental data are used directly; that experiment came from a Shock Lab group facility.
- **Other related notes:**
  - [Absolute instability in shock-containing jets](nogueira-2021-absolute-instability-shock-containing-jets.md) (Nogueira et al. 2021a) supplies the SPLSA used as the PFE initial condition and the absolute-instability explanation of screech that rules PFE out at resonance.
  - [Upstream-travelling acoustic modes as screech closure](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) gives the guided jet mode that contaminates q̂₋₁ above St ≈ 0.67. See also [Mancinelli et al. 2019](mancinelli-2019-screech-prediction-upstream-modes.md) and [closure of A1/A2 screech](nogueira-2021-closure-mechanism-a1-a2-screech.md).
  - The proposed fix, a Floquet one-way Navier–Stokes (OWNS) method that filters upstream waves explicitly (p. 24), connects to [recursive one-way Navier–Stokes](zhu-2021-recursive-one-way-navier-stokes.md).
  - Resolvent/SPOD context in the introduction: [Pickering et al. 2020](pickering-2020-lift-up-kh-orr-jets.md), [Nogueira et al. 2019](nogueira-2019-large-scale-streaky-structures-jets.md), [Morra et al. 2021](morra-2021-colour-of-forcing-resolvent-channel.md) (p. 2).
  - The LES is from G. Brès / Cascade "Charles", the same group and solver as [Brès et al. LES of twin rectangular jets](bres-2021-les-twin-rectangular-jets-plasma.md); not Shock Lab data.
- **Methods and data type:**
  - *SPOD* (time-resolved; here LES with 5000 snapshots, n_fft = 512, 75% overlap, ΔSt ≈ 0.01): directly transferable to high-speed schlieren or time-resolved acoustics. The tonal screech peak sits on a broadband floor (Fig. 7); see [adaptive SPOD](yeung-2024-adaptive-spod-broadband-tonal.md) and [band-ensemble SPOD](von-saldern-2026-band-ensemble-spod.md) for handling that.
  - *Wavenumber splitting of modes* (works on any spatial mode, POD or SPOD): Hann-windowed x-FFT and a rectangular k_x > 0 bandpass (p. 20–21). This complements the cosine-tapered filter used on POD modes in Waves in screeching jets. Removing k_x < 0 strips upstream waves and the negative modulation, leaving the KH and positive-shock-harmonic content.
  - *PFE/PSE* need no time-resolved data, only a mean flow (p. 21, 24). A PIV mean field (non-time-resolved) split into a smooth part and a shock-cell part could replace the modelled input (p. 24). Density would need an assumption such as Crocco–Busemann (used here) or constant stagnation density checked with BOS ([Tan et al. 2015](tan-2015-bos-density-axisymmetric-jets.md)). This would give off-resonance wavepacket predictions where PIV alone cannot resolve frequency (p. 13).
  - *Time variation:* the paper is purely frequency-domain and block-averaged; it says nothing about intermittency, mode switching or time-varying amplitude. For the SPOD → reconstruction → Hilbert POD pipeline (see [Hilbert POD](raiola-2025-hilbert-pod.md)), a natural extension (my suggestion, not tested in the paper) would be to rebuild schlieren data from off-screech SPOD modes, split k_x > 0 from k_x < 0, and track with HPOD whether the shock-harmonic (k_kh ± n k_s) content varies in time.
- **Practical diagnostics for lab data:**
  - Off-resonance modulation of SPOD/POD modes near the centreline is expected from shock–KH interaction. A standing-wave pattern in the shear layer (as at St = 0.4 here) points to upstream waves instead (p. 17).
  - Check eq. 2.20 / Table 1 before trusting any parabolised model: Shock Lab underexpanded jets from convergent nozzles at higher NPR (e.g. NPR 3.4, M_j ≈ 1.45) have small k_s, where PFE step limits become severe (p. 7, 14).
  - Energy at negative supersonic (acoustically matched) wavenumbers in PFE and SPOD links wavepacket–shock modulation to BBSAN (p. 20). This is relevant when interpreting acoustic spectra and far-field directivity.
- **Modelling–experiment link:** PFE sits between the cheap shock-free PSE (misses modulation and envelope length) and global stability analysis on a measured shock-containing mean flow (Waves in screeching jets: captures screech but expensive). Its weaknesses (no upstream waves, poor near acoustic field, step-size limits) are the parts most relevant to resonance, so for feedback loops it is a tool for off-resonance wavepackets and BBSAN sources rather than the loop itself.
