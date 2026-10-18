# Spectral analysis of nonlinear flows

- **Authors:** C. W. Rowley (Princeton), I. Mezić (UC Santa Barbara), S. Bagheri, P. Schlatter, D. S. Henningson (Linné Flow Centre, KTH)
- **Source:** J. Fluid Mech. 641, 115–127 (2009), doi:10.1017/S0022112009992059. The PDF is the early-view version ("page 1 of 13"), so the volume page range is from the bibliographic record, not the PDF; page refs below use the printed 1–13 numbering, which equals the PDF page number.
- **PDF:** `References/Paper_PDFs/Rowley-EtAl_2009_Spectral-Analysis-Of-Nonlinear-Flows.pdf` (13 pp.)
- **Tags:** Koopman operator, Koopman modes, dynamic mode decomposition (DMD), Arnoldi / Krylov methods, companion matrix, Ritz values, Vandermonde matrix, DFT equivalence, attractor, global modes vs Koopman modes, POD comparison, jet in crossflow, DNS, self-sustained oscillation, quadratic frequency interactions, time-resolved data

## Summary
The paper gives the theoretical footing for DMD. It introduces the Koopman operator, a linear but infinite-dimensional operator that advances any observable of a nonlinear system by one time step, and defines Koopman modes as the vector coefficients of an observable expanded in the operator's eigenfunctions (p. 2–3). For a linear system these modes are the ordinary eigenvectors, and on a periodic orbit or attractor they reduce to the discrete temporal Fourier transform (p. 3–4). The authors show that a snapshot-only variant of the Arnoldi algorithm, built on a companion matrix and identical to the DMD of Schmid & Sesterhenn (2008), returns approximations of the Koopman eigenvalues and modes even when the data come from a nonlinear system (p. 4–7, Theorem 1). Applied to a DNS of a jet in crossflow, the method picks out the shear-layer (St ≈ 0.141) and wall-vortex (St ≈ 0.017) shedding frequencies and their interaction harmonics, and each mode has a single frequency (p. 9–10). Linear global modes about the unstable steady state get the wall frequency badly wrong (St 0.043), and POD mixes the two frequencies within one mode (p. 11).

## Key findings
- **DMD finds Koopman modes.** The companion-matrix Arnoldi variant needs only a sequence of snapshots, not the operator (p. 4–6). Theorem 1 shows that the data are reproduced exactly as $x_k=\sum_j\lambda_j^k v_j$ for k = 0 … m − 1, with a residual only at the last snapshot, and that residual is orthogonal to the data span (eq. 3.9–3.10, p. 6). The same expansion form as the Koopman expansion (eq. 2.5) is why the empirical Ritz values and vectors are read as approximate Koopman eigenvalues and modes (p. 7).
- **The residual is the best possible.** When r ≠ 0 the error equals the smallest error in projecting the last snapshot onto any combination of the first m snapshots, so m modes cannot do better on m + 1 snapshots (p. 7).
- **The modes are scaled.** The empirical vectors approximate the Koopman modes multiplied by φ_j(x₀), the eigenfunction value at the first snapshot (p. 7). So the mode "magnitude" depends on the initial snapshot, not only on the mode's energy.
- **Periodic data give the DFT.** If the last snapshot equals the first, then c₀ = 1 and all other c_j = 0, the Ritz values are the m-th roots of unity, the Vandermonde matrix is the DFT matrix, and the modes are the DFT of the data at frequencies 2πj/m (p. 4, 7).
- **Eigenvalue location.** For a system on an attractor, the Koopman eigenvalues lie on the unit circle (p. 3). For the jet in crossflow nearly all Ritz values sit on |λ| = 1, which shows the sampled states lie on or near an attracting set (Fig. 2a, p. 9).
- **The mean flow is a mode.** The data were not mean-subtracted. The first Koopman mode, at λ = 1 (blue symbol in Fig. 2a), is the time-averaged flow and contains the steady counter-rotating vortex pair and horseshoe vortices (Fig. 1b, p. 8–10).
- **Jet-in-crossflow frequencies** (p. 9–10):
  - Probe 1 near the wall downstream of the orifice: peak at St = 0.0174 (wall-vortex shedding). Probe 2 on the jet shear layer: peak at St = 0.141 (shear-layer vortices), about ten times higher (p. 9).
  - Ranked by magnitude, mode pair 2–3 is at St = 0.141, pair 4–5 at St = 0.136 and pair 6–7 at St = 0.017 (p. 10).
  - Every linear combination of these frequencies excites further modes. The fourth pair, mode 8 at St = 0.157, is the interaction of the first and third pairs (p. 10); 0.141 + 0.017 = 0.158.
  - Koopman frequencies match the probe spectral peaks and several harmonics "very good" (Fig. 1e–f, p. 10). Probe peaks shift slightly with probe position, whereas each Koopman eigenvalue is a global quantity (p. 9–10).
- **Mode shapes** (Fig. 3, p. 10):
  - Mode 2 (‖v₂‖ = 400, St 0.141): ring-like shear-layer vortices along the trajectory that break down into small scales, plus upright vortices on the leeward side reaching to the wall. The shear-layer and upright vortices therefore oscillate together. Modes 4 and 8 look similar to mode 2.
  - Mode 6 (‖v₆‖ = 218, St 0.0175): large streamwise-velocity patches near the wall (wall-vortex shedding), but also structure along the jet trajectory. The whole jet body moves at the low frequency.
- **Koopman vs linear global modes** (p. 11, Table 1): Bagheri et al. (2009b) found 22 unstable complex-conjugate global modes about the unstable steady state. The most unstable (antisymmetric, shear-layer) mode is at St = 0.169, near the DNS value of 0.141. The lowest-frequency (wall) mode is at St = 0.043, far from the observed 0.017. Global modes describe only the neighbourhood of the fixed point; Koopman modes describe the attractor.
- **Koopman vs POD** (p. 11–12, Table 1, Fig. 4): the POD spatial modes look like the Koopman modes, but POD time coefficients are multi-frequency.
  - POD mode 1 oscillates mainly at St = 0.138 but beats at 0.138 ± 0.017 because of the shear-layer/wall interaction.
  - POD mode 6 holds the wall oscillation but is "polluted" with the shear-layer frequencies.
  - Each Koopman mode has one frequency by construction, so it separates low- and high-frequency dynamics better (p. 11–12).

## Setup / method

### Algorithm (p. 5–6, §3.1.1)
For a sequence {x₀, …, x_m} of snapshots, x_j ∈ ℝⁿ, sampled at a constant interval:
1. Stack $K=[x_0\;x_1\;\cdots\;x_{m-1}]$ (n × m).
2. Find c = (c₀, …, c_{m−1}) so that the residual $r=x_m-Kc$ is orthogonal to the span of the columns of K: a least-squares fit of the last snapshot onto the earlier ones (eq. 3.7).
3. Build the companion matrix C from c (eq. 3.6) and diagonalise it, $C=T^{-1}\Lambda T$, with Λ = diag(λ₁, …, λ_m) and eigenvectors in the columns of T⁻¹ (eq. 3.8).
4. The modes are the columns of $V=KT^{-1}$. The frequency of mode j is $\omega_j=\mathrm{Im}\{\log\lambda_j\}/\Delta t$ and |λ_j| gives its growth or decay per step (p. 3, 10).
5. Rank modes by their norm ‖v_j‖ (global energy norm in the example, p. 10).

- If the snapshots really are Krylov iterates, x_j = Aʲx₀, the outputs are the usual Arnoldi Ritz values and vectors of A (p. 6).
- The authors note that the full Arnoldi method, which reduces A to upper Hessenberg form, is more numerically stable than this companion-matrix version (p. 5). The paper does not discuss noise, conditioning or truncation.
- **Data requirements:** a time-ordered, uniformly sampled sequence; there is no ensemble averaging, windowing or overlap. The observable can be any vector of measurements, for example PIV velocities on a grid, with p = grid points × components (p. 4).

### Theory (p. 2–4)
- Discrete-time map $x_{k+1}=f(x_k)$ on a manifold M (eq. 2.1). The Koopman operator U acts on scalar observables, $Ug(x)=g(f(x))$ (eq. 2.2). It is linear even though f is nonlinear, and infinite-dimensional even if M is finite-dimensional (p. 2).
- A vector observable is expanded in Koopman eigenfunctions φ_j, assuming its components lie in their span (eq. 2.4). Otherwise U is split into regular and singular parts and g is projected (Mezić 2005; p. 2–3). This continuous-spectrum case is not treated further.
- Linear case: with A v_j = λ_j v_j and adjoint eigenvectors w_j, the functions φ_j(x) = ⟨x, w_j⟩ are Koopman eigenfunctions (eq. 2.6–2.10, p. 3). U has a countably infinite set of eigenvalues because λ_j^k is also an eigenvalue, with eigenfunction φ_j^k (p. 3).

### Test case: jet in crossflow DNS (p. 7–9)

| Item | Value |
|---|---|
| Flow | Jet issuing normal to a flat-plate boundary layer, same parameters and code as Bagheri et al. (2009b) |
| Velocity ratio | R ≡ V_jet/U_∞ = 3 |
| Reynolds number | Re_{δ₀*} ≡ U_∞ δ₀*/ν = 165 (δ₀*: crossflow displacement thickness at the inflow) |
| Geometry ratio | δ₀*/D = 1/3 |
| Equations | Incompressible Navier–Stokes |
| Numerics | Fourier–Chebyshev spectral method (Chevalier et al. 2007) |
| Jet model | Parabolic profile imposed as an inhomogeneous wall-normal velocity BC at the wall, y = 0 |
| Grid / box | 256 × 201 × 144 points; (L_x, L_y, L_z) = (75, 20, 30) δ₀* |
| Trigger | Asymmetric localised perturbation at t = 0 |
| Snapshots | u(t = 200), u(202), …, u(700), Δt = 2, stated as m = 251; transient t < 200 discarded |
| Probes | x_P¹ = (10.7, 1, 0) near wall; x_P² = (12, 6, 2) on shear layer |
| Frequency scale | St ≡ f D / V_jet |

- **Flow physics** (p. 8–9): two steady vortex systems (the counter-rotating vortex pair and the horseshoe vortex), two unsteady ones (shear-layer vortices and upright vortices) and one quasi-steady one (wall vortices). The wall vortices oscillate at low frequency because the separation zone just downstream of the orifice sheds.
- **Simulation detail is minimal.** Resolution checks, the time scale and boundary conditions other than the jet inflow are deferred to Bagheri et al. (2009b) (p. 8).
- **Global stability** (from Bagheri et al. 2009b, p. 11): linearised Navier–Stokes about the unstable steady solution, with Arnoldi plus a time-stepper. 22 unstable complex-conjugate modes.
- **POD** of the same snapshots is from Bagheri, Schlatter & Henningson (2009a); spatial modes are not shown here (p. 11).

## Key equations
- **Koopman operator and eigenfunctions** (eq. 2.2–2.3, p. 2):
  $$Ug(x)=g(f(x)),\qquad U\varphi_j(x)=\lambda_j\varphi_j(x)$$
- **Koopman-mode expansion and its evolution** (eq. 2.4–2.5, p. 2–3):
  $$g(x)=\sum_{j=1}^{\infty}\varphi_j(x)\,v_j,\qquad g(x_k)=\sum_{j=1}^{\infty}U^k\varphi_j(x_0)\,v_j=\sum_{j=1}^{\infty}\lambda_j^k\,\varphi_j(x_0)\,v_j$$
  The phase of λ_j sets the frequency and |λ_j| the growth rate (p. 3).
- **Periodic orbit** (eq. 2.11–2.13, p. 4): with $x_k=\sum_{j=0}^{m-1}e^{2\pi ijk/m}\hat x_j$, the functions $\varphi_j(x_k)=e^{2\pi ijk/m}$ are Koopman eigenfunctions with $\lambda_j=e^{2\pi ij/m}$.
- **Companion-matrix relation** (eq. 3.4–3.6, p. 5):
  $$x_m=Ax_{m-1}=c_0x_0+\cdots+c_{m-1}x_{m-1}=Kc,\qquad AK=KC\;\;(\text{or }AK=KC+re^{T}\text{ with }r\neq0)$$
  $$C=\begin{bmatrix}0&0&\cdots&0&c_0\\1&0&&0&c_1\\0&1&&0&c_2\\\vdots&&\ddots&&\vdots\\0&0&\cdots&1&c_{m-1}\end{bmatrix},\qquad e=(0,\dots,1)\in\mathbb R^m$$
  If Ca = λa then v = Ka is an eigenvector of A with eigenvalue λ (p. 5).
- **Theorem 1** (eq. 3.9–3.12, p. 6–7), for distinct λ_j:
  $$x_k=\sum_{j=1}^{m}\lambda_j^k v_j\;(k=0,\dots,m-1),\qquad x_m=\sum_{j=1}^{m}\lambda_j^m v_j+r,\quad r\perp\operatorname{span}\{x_0,\dots,x_{m-1}\}$$
  $$K=V\tilde T,\qquad \tilde T=\begin{bmatrix}1&\lambda_1&\lambda_1^2&\cdots&\lambda_1^{m-1}\\\vdots&&&&\vdots\\1&\lambda_m&\lambda_m^2&\cdots&\lambda_m^{m-1}\end{bmatrix},\qquad [x_1\;\cdots\;x_m]=V\Lambda\tilde T+re^{T}$$
  The Vandermonde matrix T̃ diagonalises C, so T̃ = T in eq. 3.8.
- **Frequency from a Ritz value** (p. 10): $\omega_j=\mathrm{Im}\{\log\lambda_j\}/\Delta t$, with Δt = 2 here. Only ω_j ≥ 0 are shown because the eigenvalues of real data come in conjugate pairs.

> Equations were checked against rendered images of p. 5–7 and 10; the text extraction drops Λ, λ and ≠, so use the rendered PDF if copying. Two points to verify before coding:
> - The paper gives ω_j as an angular frequency but plots St = fD/V_jet. If time is scaled by δ₀*/U_∞ (not stated here), then D/V_jet = δ₀*/U_∞ because D = 3δ₀* and V_jet = 3U_∞, so St equals f in code units, St = ω/2π. The Nyquist value for Δt = 2 is then St = 0.25, which matches the axis limit of Fig. 1e–f and 2b. This is my consistency check, not a statement in the paper.
> - The snapshot list u(200) … u(700) at Δt = 2 contains 251 fields, and the paper calls this {u₀, …, u_{m−1}} with m = 251 (p. 9). The algorithm in §3.1.1 uses m + 1 snapshots for m modes, so the exact count of modes is ambiguous (250 or 251).

## Data tables
**Frequencies, St = fD/V_jet** (Table 1, p. 11; checked against the rendered page):

| Mode | DNS probes | Linear global mode | POD | Koopman |
|---|---|---|---|---|
| Shear layer | 0.141 | 0.169 | 0.138, 0.158, 0.121 (POD mode 1) | 0.141 |
| Wall | 0.017 | 0.043 | 0.0188, 0.0094, 0.158, 0.121 (POD mode 6) | 0.017 |

Additional values from the text (p. 9–10): wall probe peak St = 0.0174; Koopman pairs at St 0.141 (‖v₂‖ = 400), 0.136, 0.017 (Fig. 3 caption gives 0.0175, ‖v₆‖ = 218) and 0.157 (mode 8, interaction of the 0.141 and 0.017 pairs).

> The text and Fig. 3 caption disagree slightly on the wall-mode frequency (0.017 vs 0.0175), and the second pair (St 0.136) is labelled St₄ on p. 10. From Fig. 2b, the bar at St ≈ 0.136 is about 300 high (read off the plot; verify).

## Figures worth remembering
- **Fig. 1 (p. 8):** (a) λ₂ = −0.1 isosurfaces (red) and u = 0.2 near the wall (grey) at t = 400; (b) the same for the time average, which is the first Koopman mode; (c–d) probe time traces u¹ (near-wall probe) and u² (shear-layer probe), t = 200–650; (e–f) probe spectra (black) with the magnitudes of the first seven Koopman pairs (red bars), both normalised by their maxima. The red bars land on the spectral peaks.
- **Fig. 2 (p. 9):** (a) empirical Ritz values in the complex plane, almost all on the unit circle, a few inside; (b) ‖v_j‖ against St over 0–0.25, with dominant bars at 0.141 (≈ 400), ≈ 0.136 and 0.017 above a floor of ≈ 50–80 (read from the plot).
- **Fig. 3 (p. 10):** streamwise-velocity contours of Koopman modes 2 (shear-layer vortices plus upright vortices) and 6 (near-wall streaks plus jet-body motion).
- **Fig. 4 (p. 11):** time coefficient of the first POD mode (black) beating against the pure sinusoid of the leading Koopman mode (grey), t = 200–400. It is the clearest picture of why POD mixes frequencies.

## Notation
- f: the (nonlinear) map, x_{k+1} = f(x_k). M: state manifold. U: Koopman operator. φ_j, λ_j: Koopman eigenfunctions and eigenvalues. g: vector observable in ℝᵖ. v_j: Koopman modes.
- K: snapshot (Krylov) matrix. c: least-squares coefficients. C: companion matrix. r: residual. e: last unit vector. T, T̃: Vandermonde matrix. Λ: diagonal matrix of empirical Ritz values. V = KT⁻¹: empirical Ritz vectors (DMD modes). Tildes on λ and v in eq. 3.13–3.14 mark empirical values computed from observables.
- R = V_jet/U_∞; δ₀*: inflow displacement thickness; D: jet diameter; St = fD/V_jet; λ₂: vortex-identification criterion of Jeong & Hussain (1995), not an eigenvalue.

## Relevance to this project
This is the founding reference for DMD and its Koopman interpretation. CLAUDE.md lists SPOD and BMD as the main tools for time-resolved data; DMD is the alternative single-frequency decomposition that reviewers will expect to see discussed. There is no experiment here and nothing from the Shock Lab group; all data come from DNS.

- **Which data it suits:**
  - DMD needs a time-ordered sequence at constant Δt (p. 4, 6). It suits **time-resolved schlieren, acoustic arrays and LES/DNS**, not the 2 Hz PIV used for POD-pair work (see [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)). The paper's frequency range is set by Δt (Nyquist) and its resolution by the record length; neither is discussed explicitly.
  - For non-time-resolved PIV, keep POD pairs or space-only HPOD ([raiola-2025](raiola-2025-hilbert-pod.md)). Later DMD variants that use snapshot *pairs* rather than a continuous sequence (e.g. exact DMD, Tu et al. 2014) could in principle use double-pulse PIV pairs. That is outside this paper.
- **Single-frequency modes vs intermittency:**
  - Each mode has one fixed λ over the whole record (p. 10–11). Like SPOD, it is therefore a "spectrally pure" view: intermittency, mode switching between screech stages, or frequency drift are averaged out or spread over several nearby modes. The paper itself finds two close shear-layer pairs at St 0.141 and 0.136 with near-identical shapes (p. 10). Reading that as one oscillation with jitter, split across two modes, is my interpretation, not the authors'.
  - For time-varying amplitude and frequency, the SPOD → reconstruction → Hilbert POD pipeline in CLAUDE.md is the better route. A DMD-based reconstruction of selected modes could replace the SPOD step, but DMD amplitudes include the φ_j(x₀) scaling (p. 7), so the choice of modes by ‖v_j‖ depends on the first snapshot. *(My inference.)*
- **Nonlinear interactions:** the paper shows sum frequencies (St 0.157 ≈ 0.141 + 0.017) appearing as separate Koopman modes (p. 10). In screeching or impinging jets, harmonics and sum/difference tones would show up the same way. DMD lists them but does not say which pairs interact; BMD and bicoherence do that (compare the triad analysis in [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md)).
- **Relation to POD and SPOD:**
  - The POD time coefficient beats at f₁ ± f₂ (Fig. 4, p. 11), the same problem that motivates SPOD and HPOD. It parallels the multi-frequency POD modes in [raiola-2025](raiola-2025-hilbert-pod.md) and the mixed POD pairs warned about in the screech PIV notes.
  - The DFT equivalence for periodic data (p. 4, 7) is the link to SPOD. A later result not in this paper (Chen, Tu & Rowley 2012) shows that companion-matrix DMD of mean-subtracted data reduces to a DFT, which is a reason to keep the mean in or use an optimised or SVD-based variant.
  - For SPOD variants built for tonal-plus-broadband flows, see [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md). The SPOD–DMD–resolvent relationship paper (Towne, Schmidt & Colonius 2018) is cited in several notes but not yet indexed.
- **Modelling and simulation side:**
  - Linear global modes about the unstable *steady* state mispredict the wall frequency by a factor of about 2.5 (0.043 vs 0.017) and the shear-layer frequency by about 20% (0.169 vs 0.141) (p. 11). This is the base-flow vs attractor problem; mean-flow stability (as in [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md)) and resolvent analysis on the mean flow ([rolandi-2025](rolandi-2025-biglobal-resolvent-naca0012.md), [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md)) are the usual fixes.
  - The DNS is a low-Re laminar-to-transitional flow with two clean limit-cycle frequencies, an easy case. Behaviour on broadband turbulence or noisy experimental data, and sensitivity to snapshot count, are not tested. [towne-2022](towne-2022-database-reduced-complexity-modeling.md) applies this companion-matrix DMD to 16,000 airfoil-wake snapshots and notes that projected (POD-based) DMD is more stable, consistent with this paper's own remark on numerical stability (p. 5).
  - For the PyFR staging LES in `Simulations/PyFR_Staging_Continuation/`, DMD of transient snapshots (rather than the attractor-only sampling used here, which discards t < 200, p. 9) would give growth or decay rates |λ_j| of competing A1/A2 modes near the switching point. *(Suggestion only; not tested in the paper.)*
- **Related notes:**
  - [brunton-2020-machine-learning-fluid-mechanics.md](brunton-2020-machine-learning-fluid-mechanics.md): reviews DMD, extended DMD and Koopman autoencoders as system identification, and notes DMD's reliance on linear observables.
  - [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md): DMD vs SPOD spectra and sum/difference frequencies on public datasets, a ready benchmark.
  - [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md): flags DMD and SPOD as untried ROM tools for rocket plumes.
  - [nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md): a screech comparison hampered because a DMD study published only real parts of its modes; keep DMD modes complex.
- **Follow-up candidates for `/add-paper`:** Schmid (2010, JFM 656) DMD; Mezić (2005, Nonlinear Dyn. 41); Bagheri et al. (2009b, JFM 624) global stability of the jet in crossflow; Chen, Tu & Rowley (2012) and Tu et al. (2014) on DMD variants; Towne, Schmidt & Colonius (2018) SPOD–DMD–resolvent.
