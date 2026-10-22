---
key: "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet"
title: "Resolvent-based modeling of coherent wave packets in a turbulent jet"
authors: ["Lesshafft, L.", "Semeraro, O.", "Jaunet, V.", "Cavalieri, A. V. G.", "Jordan, P."]
year: 2019
type: "article"
venue: "Phys. Rev. Fluids 4, 063901"
bib: {"journal": "Physical Review Fluids", "volume": "4", "number": "6", "pages": "063901"}
doi: "10.1103/PhysRevFluids.4.063901"
arxiv: "1810.09340"
pdf: "linear-operator-methods/Lesshafft-EtAl_2019_Resolvent-Based-Modelling-Of-Coherent-Wavepackets-In-A-Turbulent-Jet.pdf"
version: "preprint"
unverified: []
group: false
facility: "Pprime Bruit et Vent jet-noise facility"
data: ["PIV-TR", "PIV-stereo", "pressure-probe"]
methods: ["resolvent", "SPOD", "LSA-local"]
flow: ["round-jet", "subsonic"]
phenomena: ["KH-wavepackets", "Orr"]
params: {"M_j": "0.4", "Re": "4.6×10⁵", "D": "50 mm", "m": "0", "St": "0.2–0.7"}
topics: ["linear-operator-methods"]
related: ["pickering-2020-lift-up-kh-orr-jets", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "towne-2018-spod-relationship-dmd-resolvent", "garnaud-2013-preferred-mode-incompressible-jets", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "nogueira-2019-large-scale-streaky-structures-jets", "morra-2021-colour-of-forcing-resolvent-channel"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "garnaud-2013-preferred-mode-incompressible-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "huerre-1990-local-global-instabilities-spatially-developing-flows", "jordan-2013-wave-packets-turbulent-jet-noise", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "schmidt-2018-spectral-analysis-jet-turbulence", "sieber-2016-spectral-proper-orthogonal-decomposition", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Global resolvent (nozzle included, m = 0) of the M 0.4 Pprime jet vs SPOD of TR stereo PIV: optimal = KH fed by Orr forcing in the nozzle BL; SPOD mode 1 matched at St 0.4–0.7, mode 2 not"
---
# Resolvent-based modelling of coherent wavepackets in a turbulent jet

- **Authors:** L. Lesshafft (LadHyX, CNRS / École polytechnique), O. Semeraro (LadHyX; LIMSI, CNRS / Université Paris-Saclay), V. Jaunet (Institut Pprime, Poitiers), A. V. G. Cavalieri (Instituto Tecnológico de Aeronáutica, Brazil), P. Jordan (Institut Pprime)
- **Source:** Phys. Rev. Fluids 4, 063901 (2019), published as *Resolvent-based modeling of coherent wave packets in a turbulent jet*, doi:10.1103/PhysRevFluids.4.063901. This file is the **arXiv version**, arXiv:1810.09340v2 [physics.flu-dyn] (6 Jun 2019), so its layout and page numbers differ from the journal version.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-operator-methods/Lesshafft-EtAl_2019_Resolvent-Based-Modelling-Of-Coherent-Wavepackets-In-A-Turbulent-Jet.pdf` (29 pp.; printed page n = PDF page n)
- **Tags:** global resolvent analysis, optimal forcing and response, sub-optimal modes, Orr mechanism, Kelvin–Helmholtz (shear) instability, nozzle boundary layer receptivity, SPOD from experimental CSD, low-rank CSD model, white-noise forcing hypothesis, rank-1 approximation, partial-state observation, local spatial stability projection, PSE, Mach 0.4 subsonic jet, time-resolved stereo PIV, Bruit et Vent facility

## Summary
The paper builds a linear model of the axisymmetric (m = 0) coherent wavepackets in the Mach 0.4, Re = 460,000 Pprime jet, and tests it directly against experiment rather than LES (p. 1–3). A global resolvent analysis is run on a mean flow fitted to Pitot data, with the nozzle pipe included in the domain; it gives the five leading forcing/response pairs at each Strouhal number (p. 3–9). The optimal mode is shear (Kelvin–Helmholtz) instability in the near-nozzle free jet, fed most efficiently by Orr-type tilted forcing inside the nozzle boundary layer. The sub-optimal modes instead use the Orr mechanism in the free jet, which the authors support with a local stability projection and a parallel Gaussian-jet model problem (p. 9–15). Separately, SPOD modes of the axial velocity are extracted from a two-point CSD assembled from two moveable time-resolved stereo PIV cross-planes, and compared with a low-rank CSD model built from the resolvent modes under a white, equal-amplitude forcing assumption (p. 15–19). The leading SPOD mode is matched well in shape and phase for St ≈ 0.4–0.7, best at St = 0.4, and the model's leading mode is effectively the optimal response alone. The second SPOD mode is not reproduced at any St (p. 19–22, 25–26).

## Key findings
- **Resolvent gains** (Fig. 4, p. 9):
  - Above St = 0.3 the optimal gain σ₁ is well separated from the sub-optimals.
  - The maximum gain is at St = 0.7, where σ₁ is an order of magnitude above σ₂.
  - Read off the plot: σ₁ ≈ 6×10³ at its peak (St ≈ 0.6–0.7) against σ₂ ≈ 2–3×10². σ₁ ≈ 5×10² at St = 0.1 and climbs steeply between St 0.2 and 0.5.
- **Optimal forcing sits inside the nozzle** (Fig. 5, p. 9–10):
  - For St ≥ 0.3 it is confined to a thin layer at the inner pipe wall near the exit, as structures tilted against the flow, typical of the Orr mechanism.
  - At St = 0.2 tilted forcing also protrudes into the free shear layer near the nozzle (p. 9).
- **Optimal response** (Fig. 6, p. 9–10): the classical wavepacket, growing in the potential core with peak amplitude inside it. The wavelength shortens and the peak moves upstream as St rises, consistent with local spatial instability. At St = 0.2 it has two centreline maxima, at x = 5.5 and x = 13, which the authors attribute (after Schmidt et al. 2018) to crossing or merging of mode branches (p. 9).
- **Sub-optimal modes 2–5 at St = 0.7** (Fig. 7, p. 9–11):
  - Forcing is tilted against the flow, a small distance from the pipe wall, and extends far into the free shear layer.
  - Each successive mode adds a zero-amplitude node along r, which makes the modes orthogonal.
  - Responses peak far downstream of the potential core.
  - An earlier conference version (Semeraro et al. 2016) had sub-optimal responses that all looked like the optimal one. That was spurious numerical noise caused by a non-smooth base flow (p. 11–12).
- **Shear instability confirmed by local projection** (Figs. 8–9, p. 12–13):
  - The local k⁺ shear mode at St = 0.7 is unstable only for 0 ≤ x ≤ 2.17. Its phase speed rises from about 0.5 to about 0.8 U_c over 0 < x < 2.8 (read from Fig. 8).
  - Projecting the optimal response onto local modes (Rodriguez et al. 2015 method) shows the k⁺ mode alone reproduces it over 0 ≤ x ≤ 2.17.
  - Downstream no single local mode dominates; the global structure projects onto many continuous-branch modes with strong non-orthogonal cancellation. This contradicts the earlier interpretation in Garnaud et al. (2013) (p. 13).
  - Resolvent mode 2 at St = 0.7 grows to x = 14, far past the unstable region, so its growth cannot be modal (p. 13–14).
- **Orr mechanism in a parallel model jet** (Fig. 10, p. 14–15): for a Gaussian profile at Re = 20,000 (locally stable), optimal forcing that maximises kinetic energy at x = 10 follows material lines that are convected into vertical lines at x = 10. The tilt grows with upstream distance. Mode 2 differs from mode 1 only by a phase reversal at the inflection point r = 0.5, and further modes add more radial phase changes. This matches the compressible sub-optimals (p. 15).
- **Interpretation** (p. 15): (i) optimal = shear instability, most efficiently excited through Orr growth in the inner pipe boundary layer; (ii) sub-optimals = free-jet Orr mechanism, independent of modal shear instability; (iii) the two are cleanly separated at moderate St, but mixed at St = 0.2.
- **Experimental SPOD convergence** (Fig. 12, p. 17): computed from each half of the data, modes 1 and 2 correlate with the full-data modes (α near 1) for St < 0.8; higher modes don't converge, partly because their order swaps between subsets. Only modes 1 and 2 for 0.2 ≤ St ≤ 0.7 are used.
- **Leading SPOD mode: model vs experiment** (Fig. 13, p. 19–20):
  - "Remarkably good" agreement for St = 0.4–0.7. The peak is inside the potential core, and the radial maximum drifts towards the axis with x, which the authors relate to the critical layer of Tissot et al. (2017).
  - At St = 0.2 the agreement is poor. The experimental mode peaks further downstream, possibly beyond the x = 8 window, while the model puts high amplitude in the outer shear layer.
- **Second SPOD mode fails at all St** (Fig. 14, p. 20–21): the model mode sits in the shear layer like the sub-optimal responses of Fig. 7, whereas the experimental mode peaks near the axis with two local maxima along x. Higher modes agree equally poorly and aren't shown.
- **CSD eigenvalue spectra differ** (Fig. 15, p. 21):
  - Experiment: λ₁ peaks at St = 0.1 with another local maximum at St = 0.4. λ₁/λ₂ is 3–7 over 0.4 ≤ St ≤ 0.8, which is where the modes agree.
  - Model: eigenvalues follow the gain curve, peaking at St 0.6 instead of 0.7.
  - The authors blame mainly the assumption that forcing is equal in amplitude across all modes and all St.
- **Rank-1 is enough** (Fig. 16, p. 21–22): at St = 0.4 the five-mode model SPOD mode is "virtually indistinguishable" from the optimal response alone, so sub-optimals add nothing to the leading-mode prediction. The rank-1 approximation of Beneddine et al. (2016) and Schmidt et al. (2018) holds here.
- **Centreline wavepackets** (Fig. 17, p. 22–23):
  - Phase is matched at x = 1 and the model amplitude is fitted over 1 ≤ x ≤ 5.
  - At St = 0.4 amplitude agrees down to the peak and phase is good; the conclusions say amplitude matches over three decades to at least x = 7 (p. 26).
  - Peak amplitude is underpredicted for St < 0.4 (by a large margin at St = 0.2) and overpredicted for St > 0.4.
  - Initial growth near the nozzle is well captured for all St = 0.2–0.7 (p. 26).
  - For St ≥ 0.4 the model underpredicts the downstream decay, increasingly with St. Results are similar at several radial positions (p. 22).
- **Low-St initial growth recovered** (Fig. 18, p. 24–25): earlier PSE models with inflow-only forcing underpredicted near-nozzle growth for St ≤ 0.3. At St = 0.2 the optimal response captures the measured initial growth, because the optimal forcing includes volume forcing in the free shear layer. This suggests Orr-type Reynolds-stress forcing drives low-St growth near the nozzle.
- **PSD vs SPOD downstream** (p. 25): the centreline PSD keeps growing downstream, with a slope break, where linear models decay. The leading SPOD mode doesn't show this (as in Schmidt et al. 2018). The authors conclude that SPOD's spatio-temporal coherence is a sharper criterion for coherent structures than the PSD, which only measures temporal coherence, and that sub-optimal SPOD/resolvent wavepackets contribute strongly beyond x = 4.
- **Differences from Schmidt et al. (2018)** (p. 3, 23–24): their LES-based sub-optimals mix shear and Orr structures; here the two are cleanly separated above St = 0.2. The authors attribute this to including the nozzle, since forcing inside the pipe is so efficient. The nozzle boundary layer is the most receptive region, so its resolution matters, echoing the LES sensitivity in Brès et al. (2018).

## Setup / method

### Experiment (p. 3, 15–16)
- **Facility:** Bruit et Vent jet-noise facility, Institut Pprime, Poitiers (p. 3). Not a Shock Lab group facility. Same jet as Cavalieri et al. (2013) and Jaunet et al. (2017).
- **Jet:** isothermal, Ma = 0.4, convergent-straight nozzle, D = 50 mm, Re = U_j D/ν = 460,000. The boundary layer is tripped by an azimuthally homogeneous carborundum strip so it is fully turbulent at the exit (p. 3).
- **Mean flow:** Pitot data (Cavalieri et al. 2013), with reproducibility confirmed by Jaunet et al. (2017). 21 experimental profiles between x = 0.1D and 10D (p. 3).
- **PIV for the CSD** (Jaunet et al. 2017 database; p. 15–16):
  - Two time-resolved stereo PIV systems, each measuring a cross-plane normal to the jet axis, moveable independently (Fig. 11).
  - Plane positions x₁ ∈ [1, 8] and x₂ ∈ [x₁, 8] in steps of Δx = 0.5, so the full two-point CSD over x is assembled from plane pairs (including co-planar).
  - Each field is interpolated (bicubic) onto a polar grid of 32 radial × 64 azimuthal points for r ≤ 0.8.
  - The **axisymmetric component** of axial velocity is taken by averaging each snapshot in azimuth.
  - CSD over (N_x × N_r) = (15 × 64) points by Welch's method: blocks of 128 samples, 50% overlap. Window type, sampling rate and number of blocks are not given here (see Jaunet et al. 2017).
  - Only the axial velocity enters the SPOD.
- **SPOD procedure** (p. 16–17):
  1. Weight each CSD element by √(r_i r_j) so the matrix is Hermitian (Citriniti & George 2000).
  2. Take its eigenvectors and rescale by r^(−0.5) to get the SPOD modes φ_k(r, x), ordered by eigenvalue.
  3. Check convergence by repeating on each half of the data (eq. 15).
  - This is SPOD in the Picard & Delville / Towne et al. sense, not Sieber et al.'s method (p. 2, 16).

### Mean-flow model (p. 3–5)
- Three regions blended by weighted superposition in overlap zones: parallel pipe flow for x < 0, a near-nozzle fit to the profiles for 0.1 ≤ x ≤ 10, and a self-similar far field beyond x = 10 (eq. 1, Pope 2000 §5.2). Residual roughness is removed with high-order explicit filtering.
- Temperature and density from Crocco–Busemann; radial velocity from continuity (after Rodriguez et al. 2015).
- End of potential core (centreline < 0.95 U_j) at x = 6.2D (p. 4).
- Shear-layer momentum thickness grows at dδ_m/dx ≈ 0.031. Extrapolated to the exit, δ_m(0) = 0.0075D, "significantly thinner" than in the Schmidt et al. (2018) LES. The pipe profile has δ_m = 0.0055D with r_max = D/2 (p. 4–5).
- The mean-flow file is in the supplemental material (ref. [33], p. 4).

### Resolvent analysis (p. 5–8)
- **Equations:** compressible Navier–Stokes in conservative variables (ρ, ρu, ρE), axisymmetric (x, r), no swirl, **m = 0 only**. Sutherland viscosity, Pr = 0.72, γ = 1.4. Scales: D, U_j at the pipe exit centreline, ρ_∞ (p. 5).
- **Viscosity:** molecular only at Re = 460,000; **no eddy viscosity**. The authors mention it as an option they have used before but don't use here (p. 6).
- **Closure:** f collects all nonlinear terms (fluctuating generalised Reynolds stresses) plus boundary forcing, and is treated as an anonymous forcing with frequency coupling neglected (p. 6).
- **Norm:** Chu (1965) energy for both forcing and response, integrated over the domain excluding the absorbing layers (eq. 8, p. 6).
- **Solver:** the eigenproblem eq. 12 is solved with Lanczos (SLEPc), using matrix-free time-stepping for direct and adjoint solves (Garnaud 2012). The discrete adjoint follows Fosas de Pando et al. (2012), which keeps the operator strictly Hermitian (p. 7).
- **Numerics** (p. 7–8):

| Item | Value |
|---|---|
| Spatial scheme | explicit finite differences, 11-point stencil (Berland et al. 2007) |
| Time integration | RK3, Δt = 2.85×10⁻³ |
| Domain | x ∈ [−12.5, 25], r ∈ [0, 20]; nozzle exit at x = 0 |
| Grid | (N_x, N_r) = (750, 380), non-uniform orthogonal; finest at pipe walls, shear layer and lip (Fig. 3) |
| Axis | ghost points; ρ, ρu_x, ρE even in r, ρu_r odd |
| Other boundaries | LODI (Poinsot & Lele 1992) + absorbing layers at r > 16, x < −8, x > 21 |
| Time horizon | t_max = 80 (≈ twice the convection time from exit to end of physical domain) |
| Krylov dimension | N_kr = 12 (4 in convergence tests) |
| Tolerance | residual < 10⁻⁴ for all five modes |
| Cost | 12–16 wall-clock hours on 192 cores (Xeon E5-2690 v3) per St |

- Five leading modes per St; gains are plotted over St = 0.1–1.5 (Fig. 4; the conclusions say 0.2–1.5, p. 25).

### Local stability and model problem (p. 12–15)
- **Local spatial LSA** of the same mean flow at St = 0.7, at Re = 20,000 so that eigenfunctions in the slightly stable regime can be resolved. The authors state that results in the unstable regime are unaffected (p. 12).
- **Projection:** the global response is projected at each x onto the full local basis using adjoint local modes (Rodriguez et al. 2015) (p. 13).
- **Model problem:** parallel incompressible Gaussian jet U(r) = e^{−2r²} (inflection at r = 0.5), Re = 20,000, domain 10D × 10D. Forcing of both velocity components anywhere in the domain; objective is the r-integrated kinetic energy at x = 10. St = 1/π, numerical method of Lesshafft (2018) (p. 14).

### Resolvent-to-SPOD model (p. 17–19)
- Observation operator C selects the axial velocity at the experimental CSD grid points.
- The model CSD is built from the first five resolvent modes, assuming P_ββ = I (eq. 21).
- Model SPOD modes are the left singular vectors of C Q̃ Σ̃ (p. 19).

## Key equations
- **Self-similar far field** (eq. 1, p. 4), with c₁, c₂ and x₀ fitted to the profiles:
  $$\bar u(r,x)=\frac{\bar u(0,x)}{(1+c_1\eta^2)^2},\qquad \eta=\frac{r}{x-x_0},\qquad \bar u(0,x)=\frac{c_2}{x-x_0}$$
- **Momentum thickness** (eq. 2, p. 4):
  $$\delta_m=\int_0^{r_{max}}\frac{\bar\rho\,\bar u}{\rho_\infty U_j}\left(1-\frac{\bar u}{U_j}\right)\mathrm dr$$
- **Total energy** (eq. 4, p. 5): $E=\dfrac{T}{\gamma(\gamma-1)Ma^2}+\tfrac12\left(|u_x|^2+|u_r|^2\right)$.
- **Input–output form and resolvent** (eqs. 5–7, p. 5–6), with q = (ρ, ρu_x, ρu_r, ρE), q = q̄ + q′ and Fourier convention e^{iωt}:
  $$\frac{\partial q'}{\partial t}-Aq'=f,\qquad \hat q=(i\omega I-A)^{-1}\hat f=R(\omega)\hat f$$
- **Chu norm** (eq. 8, p. 6), as printed:
  $$\|\hat q\|^2=\iint_\Omega\left(\bar\rho\left(|u_x|^2+|u_r|^2\right)+\frac{\bar p}{\bar\rho}|\hat\rho|^2+\frac{\bar\rho^2}{\gamma^2(\gamma-1)Ma^4\,\bar p}|\hat T|^2\right)r\,\mathrm dr\,\mathrm dx$$
  Discretely $\|\hat q\|^2=\hat q^HM\hat q$, with $M=N^HN$ (Cholesky).
- **Gain and SVD** (eqs. 9–11, p. 6–7):
  $$\sigma^2=\frac{\|\hat q\|^2}{\|\hat f\|^2}=\frac{\hat v^HN^{-1,H}R^HMRN^{-1}\hat v}{\hat v^H\hat v},\quad \hat v=N\hat f;\qquad NRN^{-1}=U\Sigma V^H$$
  $$F=N^{-1}V,\quad Q=N^{-1}U,\quad F^HMF=Q^HMQ=I,\quad R=Q\Sigma F^HM$$
  "Gain" in the paper means σ, not the energy gain σ² (p. 7).
- **Eigenproblem solved** (eq. 12, p. 7): $R^HMR\hat f_i=\sigma_i^2M\hat f_i$.
- **Experimental CSD** (eq. 14, p. 16): $P_{\hat y\hat y}|_{ij}(\omega)=\mathscr E[\hat y(\mathbf x_i,\omega)\hat y^*(\mathbf x_j,\omega)]$, weighted by √(r_i r_j) before the eigendecomposition.
- **Convergence coefficient** (eq. 15, p. 17): $\alpha_{i,k}=\dfrac{\langle\phi_k,\phi_{i,k}\rangle}{\sqrt{\|\phi_k\|_2\cdot\|\phi_{i,k}\|_2}}$ (as printed).
- **CSD propagation through the resolvent** (eqs. 16–19, p. 18), with $\hat y=C\hat q$ and $\hat f=F\beta$:
  $$P_{\hat y\hat y}=CR\,\mathscr E[\hat f\hat f^H]\,R^HC^H=CQ\Sigma F^HMP_{\hat f\hat f}MF\Sigma Q^HC^H=CQ\Sigma P_{\beta\beta}\Sigma Q^HC^H$$
- **Full-state case** (eq. 20, p. 18): with C = I, $NP_{\hat y\hat y}N^H=NQ\Sigma P_{\beta\beta}\Sigma Q^HN^H$. If P_ββ is diagonal (resolvent forcing modes mutually uncorrelated, the "spatial white-noise hypothesis"), Q is the eigenvector matrix of the weighted CSD $P_{\hat y\hat y}M$, with eigenvalues diag(P_ββ Σ²).
- **Partial-state low-rank model** (eq. 21, p. 18), assuming P_ββ = I:
  $$P_{\hat y\hat y}\approx C\tilde Q\tilde\Sigma^2\tilde Q^HC^H$$
  As σ₁/σ₂ → ∞ the leading SPOD mode tends to $C\hat q_1$.
- **Model jet profile** (eq. 13, p. 14): $U(r)=e^{-2r^2}$.

> Equations were checked against rendered page images (p. 4–7, 16–18) and are transcribed as printed. Points to check against the PDF or the journal version before coding:
> - **Chu norm (eq. 8).** The density term is printed as (p̄/ρ̄)|ρ̂|². The usual dimensional Chu form has p̄/(γρ̄²) (that is, RT̄/ρ̄) there; the difference may come from the nondimensionalisation, which isn't spelled out. Re-derive before implementing.
> - **Eq. 15** prints the square root over the product of 2-norms, not squared norms; as a correlation coefficient it would normally be ‖φ_k‖·‖φ_{i,k}‖ without the root. Probably a typo.
> - **CSD grid size.** The text says the fields are interpolated onto 32 radial points (r ≤ 0.8), but the CSD is said to span (N_x × N_r) = (15 × 64) points (p. 16). Possibly 64 counts both sides of the axis; unresolved.

## Data tables
**Convergence of σ₁ at St = 0.5** (Table I, p. 8; computed with N_kr = 4):

| Case | Δx_min | Δr_min | t_max | σ₁ |
|---|---|---|---|---|
| A | 0.0200 | 0.0075 | 60 | 5117.2 |
| B | 0.0200 | 0.0025 | 60 | 5256.3 |
| C0 | 0.0100 | 0.0025 | 60 | 5264.3 |
| C1 | 0.0100 | 0.0025 | 70 | 5294.4 |
| C2 | 0.0100 | 0.0025 | 75 | 5302.6 |
| C3 | 0.0100 | 0.0025 | 80 | 5306.6 |

C0 is the standard mesh; t_max = 80 is used thereafter (p. 8). Refining Δr_min (A → B) changes σ₁ by 2.7%; extending t_max from 60 to 80 changes it by 0.8%.

## Figures worth remembering
- **Fig. 1–2 (p. 4):** modelled mean axial velocity with the pipe, and the fit against Pitot profiles at x = 0.1–10.
- **Fig. 4 (p. 9):** σ₁–σ₅ against St (0.1–1.5). The big optimal/sub-optimal gap above St 0.3 is the headline.
- **Fig. 5 (p. 10):** optimal forcing at St 0.2–0.7, with close-ups (0.45 < r < 0.5, −5 < x < 0) showing tilted Orr structures in the pipe boundary layer, concentrating towards the lip as St rises.
- **Fig. 6 (p. 10):** optimal response wavepackets at St 0.2–0.7 over −5 < x < 20; the two-lobed St 0.2 case.
- **Fig. 7 (p. 11):** sub-optimal forcing/response pairs 2–5 at St 0.7, with increasing radial nodes.
- **Fig. 8–9 (p. 13):** local k⁺ growth rate and phase speed along x; global optimal response versus its k⁺ projection for x < 2.8.
- **Fig. 10 (p. 14):** Gaussian-jet Orr forcing following convected material lines.
- **Fig. 12 (p. 17):** SPOD convergence α against mode number for two half-datasets at St 0.2–0.8. A useful template for checking SPOD convergence.
- **Fig. 13–14 (p. 19–20):** |SPOD mode 1| and |mode 2|, experiment against model, at St 0.2–0.7 (x = 1–8, r ≤ 0.8).
- **Fig. 15 (p. 21):** five leading CSD eigenvalues, experiment against model.
- **Fig. 16 (p. 22):** interpolated real part of SPOD mode 1 at St 0.4: experiment, five-mode model, optimal response alone.
- **Fig. 17 (p. 23):** centreline real part and envelope, experiment (red) against model (black), St 0.2–0.7.
- **Fig. 18 (p. 24):** centreline PSD along x: hot-wire data, PSE and optimal response, St 0.2–0.7. The data keep growing past x ≈ 5 where both linear models decay.

## Notation
- q = (ρ, ρu_x, ρu_r, ρE); q̄ mean, q′ fluctuation; f forcing (nonlinear terms + boundary forcing); A linearised operator; R(ω) resolvent; ω angular frequency; St = fD/U_j.
- M, N: norm weight matrix and its Cholesky factor. F, Q: forcing and normalised response mode matrices. Σ = diag(σ_i): gains. Resolvent mode i = (σ_i, f̂_i, q̂_i); "optimal" i = 1, "sub-optimal" i > 1.
- C: observation operator; ŷ = Cq̂ observed quantities. P_ŷŷ, P_f̂f̂: CSDs. β: forcing coefficients in the F basis, P_ββ their CSD. Q̃, Σ̃: truncated to five modes.
- φ_k: SPOD mode k. α_{i,k}: correlation between mode k of half-dataset i and the full-data mode.
- k⁺: local spatial shear-instability (KH) mode; k_i growth rate; c_r phase speed; U_c local centreline velocity.
- δ_m: momentum thickness. x, r scaled by D.

## Relevance to this project
This is a clean example of the experiment-plus-model workflow in CLAUDE.md: SPOD of measured data compared mode by mode with a global resolvent model built on the measured mean flow. It is subsonic and shock-free, but the methods and caveats carry over to the group's screech and impinging-jet work.

- **Data requirements for the analysis methods:**
  - *SPOD needs time resolution at each point, but not a simultaneous full field.* The CSD here is assembled from pairs of cross-planes at different x, each time-resolved, measured at different times (p. 15–16). The SPOD is only as good as the pairwise coherence estimates (Welch, 128-sample blocks, 50% overlap). The same trick applies to a traversed microphone pair or a reference-sensor set-up in the lab.
  - The SPOD here uses **one component** (axial velocity), **one azimuthal mode** (m = 0 by azimuthal averaging) and a coarse grid (Δx = 0.5D, 15 stations). The authors suspect that coarse spatial sampling may stop the experiment resolving the fine-scale sub-optimal structures (p. 26).
  - Convergence check: split the data in half and correlate modes (eq. 15, Fig. 12). Only modes 1–2 converged, and only below St 0.8 (p. 17). This is worth copying for schlieren SPOD with limited records.
  - *Non-time-resolved PIV* can't give this CSD, but it can give the mean flow, which is all the resolvent model needs (p. 26). For snapshot PIV the counterpart is the POD-pair route in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), or space-only HPOD ([raiola-2025](raiola-2025-hilbert-pod.md)).
- **Intermittency and time variation:** the model treats each St as an isolated, stationary wavepacket under white forcing (p. 22–23). It says nothing about intermittency or amplitude modulation, and the authors flag inter-frequency and inter-m energy transfer as the open problem (p. 23). That's where the SPOD → reconstruction → Hilbert POD pipeline adds information: SPOD/resolvent fixes the spatial shape, HPOD tracks how its amplitude and frequency wander in time. *(My inference, not discussed in the paper.)*
- **Modelling lessons for screech and impinging-jet work:**
  - **Include the nozzle.** The most receptive region is the inner nozzle boundary layer near the lip (Fig. 5). Including it changes the sub-optimal modes compared with nozzle-free LES-based analyses (p. 23–24). Lip receptivity also matters for screech closure (lip thickness in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); lip geometry selecting helical vs toroidal in [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)).
  - **Molecular viscosity only.** Agreement is good near the preferred St but poor at low St and for sub-optimals. [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md) shows an eddy viscosity "greatly" improves SPOD–resolvent agreement, especially at low St, and [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md) uses Re = 10³ as a crude substitute. Expect to need one for lab mean flows.
  - **White forcing works only where gain separation is large** (σ₁/σ₂ ≈ 10 here, p. 9, 18). [morra-2021](morra-2021-colour-of-forcing-resolvent-channel.md) shows how coloured forcing breaks the sub-optimal predictions in channels and cites this paper as a jet case where white forcing was adequate for the leading mode.
  - **Rank-1 is enough for the leading SPOD mode** (p. 21–22). For a strongly tonal screech or impingement mode with large gain separation, comparing the optimal response directly with the leading SPOD mode at the tone is a reasonable first test.
  - **Mean-flow modelling recipe** (p. 3–4): smooth fit, Crocco–Busemann for T and ρ, continuity for the radial velocity, blending to a self-similar far field, filtering to remove roughness. Non-smooth base flows produced spurious sub-optimal modes (p. 11–12), a warning for PIV-derived mean flows. Shock-containing mean flows need much more care; see [nogueira-2021-wavepacket-modulation](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) and [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md).
  - The model is axisymmetric (m = 0), so it contains no guided-jet modes relevant to screech closure at these subsonic conditions and covers only the toroidal (A1/A2-type) azimuthal order. It has no resonance or feedback; the gain is pure amplifier behaviour.
- **Agreement with and differences from related notes:**
  - [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md): same KH/Orr classification for m = 0 jets from LES SPOD + resolvent; it adds eddy viscosity and lift-up for m ≠ 0. This paper finds the KH and Orr mechanisms cleanly split between optimal and sub-optimal modes, whereas Schmidt et al. (2018) (on whose LES Pickering builds) found them mixed in the sub-optimals (p. 23).
  - [nogueira-2019](nogueira-2019-large-scale-streaky-structures-jets.md): same facility and same Jaunet et al. (2017) dual-plane PIV database, analysed for streaks at m ≥ 1 and St → 0, with near-white forcing also found adequate.
  - [towne-2022](towne-2022-database-reduced-complexity-modeling.md): public M 0.9 jet LES with SPOD/resolvent demos, a benchmark for implementing the same comparison.
  - [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) and [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md): same Pprime nozzle; there, the KH wavepacket is coupled to upstream modes by an edge.
  - [zhu-2021](zhu-2021-recursive-one-way-navier-stokes.md) (OWNS-R) and the PSE comparison in Fig. 18: alternatives to global resolvent at lower cost. Here PSE with inflow forcing misses low-St initial growth that volume forcing recovers.
  - [rolandi-2025](rolandi-2025-biglobal-resolvent-naca0012.md): biglobal resolvent of separated flow, another mean-flow resolvent application.
  - [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md): mean-flow stability against PIV, for a self-excited (global-mode) flow rather than an amplifier.
- **Follow-up candidates for `/add-paper`:**
  - Schmidt, Towne, Rigas, Colonius & Brès 2018, *Spectral analysis of jet turbulence* (JFM 855).
  - Towne, Schmidt & Colonius 2018, SPOD and its relation to DMD and resolvent (JFM 847).
  - Jaunet, Jordan & Cavalieri 2017, *Two-point coherence of wave packets in turbulent jets* (PRF 2), the source database.
  - Cavalieri, Jordan & Lesshafft 2019, *Wave-packet models for jet dynamics and sound radiation* (Appl. Mech. Rev.).
  - Garnaud et al. 2013, *The preferred mode of incompressible jets* (JFM 716).
  - Tissot et al. 2017, *Wave packets and Orr mechanism in turbulent jets* (PRF 2).
