# Wavepackets and trapped acoustic modes in a turbulent jet: coherent structure eduction and global stability

- **Authors:** O. T. Schmidt, A. Towne, T. Colonius, A. V. G. Cavalieri, P. Jordan, G. A. Brès (Caltech; CTR Stanford; ITA São José dos Campos; Institut Pprime, Poitiers; Cascade Technologies)
- **Source:** J. Fluid Mech. 825, 1153–1181 (2017). This file is the Caltech Library author copy in JFM layout (received 12 May 2016, accepted 7 June 2017; p. 1). Its pages carry no journal page numbers.
- **DOI:** 10.1017/jfm.2017.407 (not printed in this copy; verify).
- **PDF:** `References/Paper_PDFs/Schmidt-EtAl_2017_Wavepackets-And-Trapped-Acoustic-Modes-In-A-Turbulent-Jet-Coherent-Structure.pdf` (29 pp.)
- **Page refs:** PDF page numbers (p. 1 is the title page).
- **Tags:** subsonic jet (M_j 0.9), trapped acoustic waves, duct modes, potential-core resonance, Kelvin–Helmholtz wavepacket, global linear stability of the mean flow, adjoint modes, direct–adjoint product (wavemaker), local spatio-temporal stability, saddle points / zero group velocity, frequency–wavenumber diagram, SPOD, cross-spectral density, LES (Charles), Bruit et Vent near-field microphones, Reynolds-number sensitivity

## Summary
The paper educes coherent structures from the time-resolved Brès et al. LES of an isothermal M_j = 0.9 jet and compares them with global linear stability modes of its mean flow, for azimuthal wavenumbers m = 0–4 (p. 1–2). Spectral POD picks out the familiar KH wavepacket, while a cross-spectral density (CSD) referenced to a point near the nozzle on the axis reveals a second family: acoustic waves trapped in the potential core (p. 5–8). In the global spectrum these waves appear both on a continuous branch, coupled to the KH wave, and as branches of lightly damped discrete modes, ordered by an azimuthal, radial and streamwise index (m, n_r, n_x) (p. 8–11). A dispersion relation rebuilt from the global modes matches the empirical frequency–wavenumber diagram of the LES (p. 15–17). Each discrete mode holds two upstream-phase waves with opposite group velocities (k⁺ and k⁻). Between the nozzle and a downstream end condition, a zero-group-velocity saddle point of local theory set by the contracting potential core, they beat, giving a resonance (p. 17–20). The resonance explains near-nozzle tones in experiments that earlier work had blamed on the rig. The authors present them as intrinsic to high-subsonic jets (p. 1, 12–13).

## Key findings
- **Two coherent families in the LES** (p. 5–8, Fig. 2–4):
  - KH wavepackets are the most energetic structure (leading SPOD mode). Wavenumber rises and streamwise support shrinks with St, and the phase speed is c_ph ≈ 0.8U_j for all cases (p. 7).
  - A monochromatic, high-wavenumber wave with negative phase velocity sits inside the potential core. A CSD referenced to (x₀, r₀) = (0.1, 0.1) brings it out best (p. 6–7).
  - The core waves are strongly correlated with the KH wave (p. 6, 8). Their radial order n_r (number of radial anti-nodes) is 1, 2 or 3 depending on St and m (p. 8, Fig. 4).
- **Global spectrum** (p. 8, Fig. 5): all eigenvalues are stable. Discrete branches rise out of a continuous branch, and the pattern shifts to higher St with m. The least-damped mode is (0, 1, 1) at St ≈ 0.37.
- **Continuous modes = KH plus core acoustics** (p. 8–9, Fig. 6): continuous-branch modes couple a downstream KH wave train to a trapped core wave. For m = 0, St ≈ 0.5 the global mode matches the LES CSD in support and wavenumber of both parts. Their eigenvalues move along the branch with discretisation or domain changes (p. 9).
- **Discrete modes = trapped acoustic modes** (p. 9–11, Fig. 7–8):
  - They are confined to x ≲ 2 near the nozzle and carry only a weak KH part. Their spatial extent and waveforms match the CSD for all m studied (p. 10).
  - Along the axis the pressure has n_x anti-nodes, which defines the streamwise order (p. 11, Fig. 8a).
  - The axial phase speed jumps from c_p ≈ −0.2 near the nozzle to ≈ 0.8U_j further downstream (p. 11, Fig. 8c).
  - The radial structure follows Bessel functions, as for a cylindrical duct with a pressure-release wall. The authors therefore call them **duct modes** (p. 11; theory in Towne et al. 2017).
- **LES PSD confirms the structure** (p. 11–12, Fig. 9): with 1024-snapshot blocks, the LES PSD along the (0, 1) branch shows the same number of maxima as n_x for modes (0, 1, 1)–(0, 1, 6), St ≈ 0.374–0.41. The support grows with St, from 0 ≤ x ≤ 2 for (0, 1, 1) to 0 ≤ x ≤ 3.5 for (0, 1, 6) (p. 12).
- **Experimental tones** (p. 12–13, Fig. 10): near-nozzle six-microphone ring spectra from the "Bruit et Vent" facility (M = 0.9) and from Suzuki & Colonius (2006; M_j = 0.98, T_j/T∞ = 0.84) have peaks at the St of the leading discrete modes, for m = 0 and m = 1. Suzuki & Colonius had attributed their tones to a duct upstream of the nozzle (p. 13).
- **Empirical dispersion relation** (p. 13–16, Fig. 11–12):
  - In the k–St plane, KH energy follows ω/k ≈ 0.8U_j.
  - For negative phase speeds, −a_j ≲ c_p ≲ U_j − a_j, curved bands appear, one per radial order. Each band's ends approach the lines c_p = U_j − a_j (duct behaviour) and c_p = −a_j (free-stream acoustic behaviour) (p. 14).
  - A band can host several negative-phase-speed waves at one frequency (p. 14).
  - Onset moves to higher St with m. The local minima (valleys) of the bands fall at the St of the leading global mode of each branch. For m = 0 and 1 the n_r = 1 band holds most energy; for m > 1 higher radial orders do (p. 15–16).
- **Dispersion relation rebuilt from global modes** (p. 16–17, Fig. 13): applying the same axial Fourier transform to each global mode gives three peaks, labelled k⁻, k⁺ and KH. Joining them reproduces the LES bands "remarkably" well (p. 17). The concave part of the lowest band belongs to the (0, 1) discrete branch; the band at St ≳ 0.8 belongs to (0, 2) (p. 16–17).
- **Resonance by beating** (p. 17, eq. 5.1):
  - k⁺ has positive group velocity and k⁻ negative; both have negative phase velocity.
  - The ends of the k⁺ segment, S1 (the leading mode) and S2 (where the discrete branch meets the continuous one), have zero group velocity.
  - Example: for mode (0, 1, 3), k⁺ = −7.1, k⁻ = −13.0, so Δk = 5.9 and the beat wavelength 4π/Δk = 2.1. This matches twice the spacing of the axial maxima in Fig. 8a (p. 17).
  - Below the lowest discrete branch (St ≲ 0.37 for m = 0) the core supports no duct modes, and the global eigenvalues drop sharply. For m = 3, every mode is heavily damped up to St ≈ 1 (p. 17).
- **Discreteness not seen in the LES** (p. 17): LES energy is smooth along each band. The authors suspect a much longer record would be needed to converge individual discrete modes.
- **Direct–adjoint product isolates the trapped waves** (p. 18–19, Fig. 14, 21): adjoint trapped modes have almost no KH part, because KH non-normality separates the direct and adjoint supports. The local product |q̂†||q̂| therefore removes the KH wavepacket and matches the LES PSD. The authors read this as the trapped mechanism being nearly self-adjoint (p. 19, 28).
- **Local theory sets the end condition** (p. 19–20, Fig. 15–16):
  - The n_r = 1 acoustic core mode of the locally parallel problem has two saddles, S1 and S2, on the real k axis near the nozzle.
  - They approach each other with x and collide. Downstream of that, no real-k₀ saddle exists, so there is no k⁺ wave and no resonance (Fig. 15, x = 0, 1.5, 2.5, 3.8).
  - Plotted against x, the S1 saddle frequency bounds the axial extent of the isolated global modes for branches (0, 1), (1, 1) and (0, 2) (Fig. 16).
  - Resonance starts with n_x = 1 at the lowest St where k⁺ ≈ k⁻ can interact. The highest-n_x mode sits near the minimum St of the S2 saddle, beyond which no resonant core modes exist (p. 19).
  - S2 is tied to a k⁻ wave that seems to reflect less at the nozzle than the duct modes (p. 19–20).
- **Mach-number window** (p. 22, quoting Towne et al. 2017): a cylindrical vortex-sheet model predicts two neutral saddles, and so resonance, only for 0.82 < M_j < 1 in isothermal jets. Outside that range it agrees with Tam & Hu (1989).
- **Local and global analyses complement each other** (p. 20): the global analysis links phenomena and predicts the resonance, while the local analysis identifies the waves and the end conditions.

## Setup / method
- **No experiments of the authors' own beyond Fig. 10.** The core data are the LES; the experimental spectra come from Bruit et Vent (Institut Pprime, Poitiers) and Suzuki & Colonius (2006) (p. 12–13). Not Shock Lab group work.
- **LES** (p. 2–3; Brès et al. 2014–2017):
  - Compressible solver Charles (Cascade Technologies). M_j = U_j/a_j = 0.9, Re = ρ_j U_j D/μ_j ≈ 10⁶, isothermal (T_j/T∞ = 1).
  - The convergent-straight nozzle is included. Synthetic turbulence plus a wall model give a turbulent exit boundary layer matching the tripped experiment (p. 3).
  - Database: 10⁴ snapshots at Δt c∞/D = 0.2, interpolated to a 656 × 138 × 128 cylindrical grid over (x, r, θ) ∈ [0, 30] × [0, 6] × [0, 2π], excluding the nozzle (p. 3).
  - A smaller-domain set sampled at Δt c∞/D = 0.05 is used only for the k–St diagrams of Fig. 11–13 (p. 3).
  - Scales: velocities by centreline nozzle values, pressure by ρ_j U_j², lengths by D, time by D/U_j. St = ω/(2πM_j) (p. 3).
- **Spectral estimation** (p. 5; needs time-resolved data):
  - Azimuthal Fourier transform, then Welch's method in time.
  - Default: blocks of 256 snapshots, 50% overlap, N_b = 78. For the closely spaced (0, 1) modes: 1024 snapshots, N_b = 19 (p. 11).
  - My estimate of the resolution: ΔSt ≈ 0.022 (256) and ≈ 0.0054 (1024). The (0, 1, n_x) modes are about 0.008 apart (Fig. 9), so only the long blocks separate them. Nyquist St ≈ 2.8 for the main database.
  - The window function isn't stated.
  - Three eduction tools are compared (Fig. 2, p. 6): single Fourier realisations, CSD against a reference point (eq. 2.10), and SPOD (eq. 2.11). The conclusion: SPOD is best for the KH wavepacket (most energetic), and a pressure CSD referenced near the nozzle on the axis is best for the trapped waves (p. 6–7). Fig. 2's POD uses a volume-weighted 2-norm (p. 6).
- **Frequency–wavenumber diagrams** (p. 13): for each (m, ω), the pressure p̃_{m,ω} on a line inside the potential core (0 ≤ x ≤ 5, r₀ = 0.1) is Fourier-transformed in x. No window or padding is used; the authors say segment length and radial position barely matter as long as the line stays in the core. PSD from eq. 2.9.
- **Global stability** (p. 3–5, 22–23):
  - Linearised compressible continuity, Navier–Stokes and energy equations for an ideal gas, in cylindrical coordinates, about the LES mean flow. Normal modes q̂_m(x, r) e^{i(mθ − ωt)} (eq. 2.2–2.4).
  - Rationale: the mean flow carries the mean Reynolds stresses; fluctuating Reynolds stresses are treated as stochastic forcing and then neglected, i.e. modal analysis in advance of a resolvent study (p. 3).
  - Fourth-order summation-by-parts finite differences (Mattsson & Nordström 2004), polar-axis treatment of Mohseni & Colonius (2000), sponge non-reflecting boundaries (p. 4).
  - Shift-and-invert Arnoldi. For each m = 0–4, 43 shifts over 1.5 ≤ ω ≤ 12 with 35 converged pairs per shift (p. 8).
  - Discrete adjoint (Chandler et al. 2012) in the Chu energy norm (eq. 2.6). Adjoint modes normalised so ⟨q̂†, q̂⟩_E = 1 (p. 4–5).
  - Re = 10⁵ for the stability operator (molecular viscosity, not an eddy viscosity) (p. 5).
  - Domain (App. A, p. 22–23): solution region x, r ∈ [0, 25] × [0, 2.25]; total with sponge [−1.2, 26.2] × [0, 2.8]; 1150 × 250 Cartesian points. Exponential stretching in the sponge (printed exp(1.5…); the variable is lost in extraction). Parallel inlet profile q̄(0, r) for x < 0.
  - Sponge forcing −ε_sponge(6η⁵ − 15η⁴ + 10η³), ramped to ε_sponge = 5 (p. 23).
  - Resolution: δ_inlet/Δr = 0.08/0.010 = 8 points across the inlet boundary layer; λ_KH/Δx = 0.39/0.023 ≈ 17 points per KH wavelength at St = 2 (p. 23).
- **Local spatio-temporal stability** (p. 19): locally parallel ansatz q̂_m(r) e^{i(kx + mθ − ωt)} at each x₀ with complex k. Saddles are found as zeros of ∂ω/∂k over a grid of complex k (Fig. 15). Saddle points between a k⁺ and a k⁻ branch give end conditions (Huerre & Monkewitz 1990).
- **Sensitivity checks (appendices):**
  - **Inlet sponge (App. B, p. 23–24, Fig. 17):** without a nozzle in the domain, the inlet sponge stands in for the unknown nozzle impedance. Mode shapes agree with the LES for 0.25 ≤ ε_sponge ≤ 50. At ε = 0.25 the wave leaks into the sponge and the axial peak moves upstream. ε = 5 balances reflection and impedance.
  - **Radial extent (App. C, p. 23–25, Fig. 18):** r_end = 2.25 vs 3.25 (N_r = 350) agree except for St ≲ 0.35, where eigenvectors are truncated radially.
  - **Axial extent (App. C, p. 24–25, Fig. 19):** x_end = 20, 25, 30 shift the continuous KH branches but not the trapped-mode eigenvalues, as Nichols & Lele (2011) and Garnaud et al. (2013a) found for upstream subsonic modes.
  - **Reynolds number (App. D, p. 25–27, Fig. 20):** at Re = 10³ the spectrum is more damped and **the trapped modes disappear**. They appear from Re = 10⁴, and the first branch is effectively Re-independent for Re ≳ 5 × 10⁴. Over 10³–10⁶ the St of (0, 1, 1) changes only in the third significant digit. Continuous branches move up with Re (cf. Garnaud et al. 2013b). The right effective Re for turbulent mean flows is left open.

## Key equations
- Reynolds decomposition q = q̄(x) + q′(x, t) (eq. 2.1, p. 3); state q = [ρ, u_x, u_r, u_θ, T]ᵀ (p. 2).
- Global eigenproblem (eq. 2.3–2.5, p. 3–4):
  $$\mathbf q'(x,r,\theta,t)=\hat{\mathbf q}_m(x,r)\,e^{i(m\theta-\omega t)},\qquad (\omega\mathbf I+\mathbf L_m)\hat{\mathbf q}_m=0,\qquad (\omega^*\mathbf I+\mathbf L_m^\dagger)\hat{\mathbf q}_m^\dagger=0$$
  The continuous form (2.3) is printed (−iω + L_m)q̂_m = 0.
- Chu energy norm (eq. 2.6, p. 4), checked against a render of the page:
  $$\langle q,q\rangle_E=\iiint q^H\,\mathrm{diag}\!\left(\frac{\bar T}{\gamma\bar\rho M_j^2},\ \bar\rho,\ \bar\rho,\ \bar\rho,\ \frac{\bar\rho}{\gamma(\gamma-1)\bar T M_j^2}\right)q\,r\,\mathrm dx\,\mathrm dr\,\mathrm d\theta=q^H\mathbf W q$$
- Fourier expansions (eq. 2.7–2.8, p. 5): q′ = Σ_m q̃_m(x, r, t) e^{imθ}, and q̃_m = Σ_ω q̃̃_{m,ω}(x, r) e^{imθ} e^{iωt} (the e^{imθ} factor appears again as printed).
- PSD and CSD over N_b blocks (eq. 2.9–2.10, p. 5):
  $$\bar P_{qq}(x,r)=\frac{1}{N_b}\sum_{n=1}^{N_b}\big|\tilde{\tilde q}^{(n)}_{m,\omega}(x,r)\big|^2,\qquad \bar C_{qq}(x,r,x_0,r_0)=\frac{1}{N_b}\sum_{n=1}^{N_b}\tilde{\tilde q}^{(n)}_{m,\omega}(x,r)\,\tilde{\tilde q}^{(n)*}_{m,\omega}(x_0,r_0)$$
- SPOD (eq. 2.11, p. 5), with Q_{m,ω} = [q̃̃⁽¹⁾, …, q̃̃⁽ᴺᵇ⁾]:
  $$\mathbf Q_{m,\omega}\mathbf Q_{m,\omega}^H\mathbf W\,\boldsymbol\Phi_{m,\omega}=\boldsymbol\Phi_{m,\omega}\boldsymbol\Lambda_{m,\omega}$$
  The extraction lost the operator; this is the standard SPOD form (the CSD matrix times the weight). Check p. 5 for the 1/N_b factor.
- Beating of the two trapped waves (eq. 5.1, p. 17), checked against a render:
  $$e^{ik^+x}+e^{ik^-x}=2\cos\!\left(\frac{\Delta k^\pm}{2}x\right)\exp\!\left(i\,\frac{k^++k^-}{2}\,x\right),\qquad \lambda^\pm=\frac{4\pi}{\Delta k^\pm}$$
  Check: 4π/5.9 = 2.13, matching the quoted 2.1.
- Direct–adjoint product used as a filter (eq. 5.2, p. 18): ‖q̂†_m(x₀, r₀)‖ · ‖q̂_m(x₀, r₀)‖, the structural-sensitivity map of Giannetti & Luchini (2007).
- Local normal mode (eq. 5.3, p. 19): q′ = q̂_m(r) e^{i(kx + mθ − ωt)}, with saddles at ∂ω/∂k = 0, ω₀ = ω(k₀).
- Sponge ramp (App. A, p. 23): −ε_sponge(6η⁵ − 15η⁴ + 10η³), 0 ≤ η ≤ 1.

> Check against the PDF:
> - **St and ω scaling.** The text says time is scaled by D/U_j and St = ω/(2πM_j) (p. 3), which only holds if ω is scaled by a∞/D (as the snapshot spacing Δt c∞/D suggests). Yet the shift range 1.5 ≤ ω ≤ 12 is quoted as 0.24 ≤ St ≤ 1.91 (p. 8), which is ω/2π. With ω/(2πM_j) it would be 0.27–2.12. Confirm the scaling before reusing ω values.
> - **Typos in the PDF:** App. B calls the least-damped mode "(0, 0, 1)" (p. 23); elsewhere it is (0, 1, 1). Mode (0, 1, 6) is said to be in "figure 9(a)" (p. 12); it is Fig. 9(f). Fig. 15's caption says "S1 and S1" for the merged saddles (p. 20).
> - The phase speed "c_p ≈ −0.2" (p. 11) is given without a unit; Fig. 8(c) plots ω/(∂θ_p/∂x), presumably in U_j units.
> - The exponential stretching law in App. A lost its argument in extraction.

## Data tables
**Leading discrete global modes** (St of the first mode of each branch, read from Fig. 5 and the red lines in Fig. 12, p. 10, 15; ±0.02, verify before quoting):

| m | n_r = 1 | n_r = 2 | n_r = 3 | n_r = 4 |
|---|---|---|---|---|
| 0 | 0.37 (text, p. 8) | 0.87 (text, p. 12) | ≈ 1.38 | ≈ 1.87 |
| 1 | ≈ 0.60 (text, p. 12) | ≈ 1.10 | ≈ 1.62 | – |
| 2 | ≈ 0.82 | ≈ 1.33 | ≈ 1.84 | – |
| 3 | ≈ 0.98 | ≈ 1.53 | – | – |
| 4 | ≈ 1.20 | ≈ 1.75 | – | – |

Growth rates of the leading discrete modes are ω_i ≈ −0.01 to −0.02 (read from Fig. 5 and 8b).

**Branch (0, 1) modes** (Fig. 9 caption, p. 14):

| Mode | (0,1,1) | (0,1,2) | (0,1,3) | (0,1,4) | (0,1,5) | (0,1,6) |
|---|---|---|---|---|---|---|
| St | 0.374 | 0.382 | 0.39 | 0.397 | 0.405 | 0.41 |

**Parameter summary**

| Item | Value | Page |
|---|---|---|
| LES snapshots / spacing | 10⁴ at Δt c∞/D = 0.2 (0.05 for k–St sets) | 3 |
| Stored grid | 656 × 138 × 128 over 30D × 6D | 3 |
| Welch blocks | 256 snapshots, 50% overlap, N_b = 78; or 1024, N_b = 19 | 5, 11 |
| Global grid | 1150 × 250; solution domain 25 × 2.25 | 22 |
| Stability Re | 10⁵ (trapped modes absent at 10³) | 5, 27 |
| Sponge | ε = 5 (tested 0.25–50) | 23 |
| KH phase speed | ≈ 0.8U_j | 7, 13 |

## Figures worth remembering
- **Fig. 2 (p. 6):** Fourier realisations, CSD with two reference points, and SPOD for m = 0, St ≈ 0.5. A compact guide to which eduction tool shows which wave.
- **Fig. 3–4 (p. 7, 9):** SPOD pressure modes (KH) and near-nozzle CSD (trapped waves) over St for m = 0, 2 and 4.
- **Fig. 5 (p. 10):** global spectra for m = 0–4, with labelled discrete branches (m, n_r, 1) rising from continuous branches.
- **Fig. 7 (p. 12):** LES CSD vs discrete global modes (0,1,1), (0,2,1), (0,3,1), (1,1,1).
- **Fig. 8 (p. 13):** axial |p̂| with n_x anti-nodes, (0, 1) branch detail, axial phase speed jumping from about −0.2 to 0.8, and Bessel-like radial profiles.
- **Fig. 10 (p. 14):** near-nozzle SPL of Bruit et Vent and Suzuki & Colonius against discrete-mode St, for m = 0 and 1.
- **Fig. 11 (p. 15):** the key empirical k–St map for m = 0 up to St 10, with lines for −a_j, U_j − a_j, U_j + a_j, a_j and 0.8U_j and stacked trapped-wave bands.
- **Fig. 12 (p. 15):** the same for m = 0–4 up to St 4, with discrete-mode St overlaid.
- **Fig. 13 (p. 16):** dispersion relation rebuilt from global modes (k⁺, k⁻, KH, S1, S2, branch intersection) over the LES map.
- **Fig. 14 (p. 18):** direct–adjoint product vs LES PSD for (0, 1, 1)–(0, 1, 6).
- **Fig. 15–16 (p. 20–21):** saddle points S1/S2 in the complex k plane at x = 0–3.8, and saddle frequency vs x bounding the trapped modes.
- **Fig. 20 (p. 26):** spectra for Re = 10³–1.5 × 10⁵; trapped branches vanish at Re = 10³.

## Notation
- (m, n_r, n_x): azimuthal wavenumber, radial order (radial anti-nodes), streamwise order (axial anti-nodes) of a discrete trapped mode. A "branch" (m, n_r) collects modes of increasing n_x.
- k⁺, k⁻: trapped waves with positive and negative group velocity; both have negative phase velocity. Δk^± = k⁺ − k⁻.
- S1, S2: zero-group-velocity saddle points (ends of the k⁺ segment). S1 goes with the leading mode, S2 with the discrete–continuous branch intersection.
- KH: Kelvin–Helmholtz wavepacket. Duct mode: trapped acoustic wave with Bessel radial shape.
- q̂_m, q̂†_m: direct and adjoint global modes. L_m: linear operator. W: Chu-norm weight matrix.
- q̃̃_{m,ω}: block Fourier coefficient. P̄_qq, C̄_qq: PSD and CSD estimates. N_b: number of blocks.
- M_j = U_j/a_j, Re = ρ_j U_j D/μ_j, St = ω/(2πM_j) (see the scaling caveat above).

## Relevance to this project
The paper is a reference case for resonance in subsonic jets. It is also an early demonstration that linear global stability of a turbulent mean flow reproduces SPOD/CSD structures. Both points bear on the feedback focus in CLAUDE.md.

- **Methods and the data they need:**
  - *Time-resolved data* (schlieren, microphone arrays, LES): Welch spectra, the referenced CSD, SPOD and the x–t Fourier k–St diagram all need time resolution. The block length must resolve closely spaced resonances: 256-snapshot blocks smeared the (0, 1, n_x) family, and 1024-snapshot blocks were needed (p. 11). Even then the LES bands look continuous, so discrete modes need much longer records (p. 17).
  - *Choosing the tool:* SPOD favours the most energetic structure (KH). Weak resonant waves in the core come out better from a CSD with a reference point placed where the wave dominates (p. 6–7). In schlieren this suggests correlating against a pixel in the core near the nozzle when looking for trapped or guided waves.
  - *Non-time-resolved PIV:* only the mean flow is needed for the global or local stability analysis, so this route suits PIV. A POD-pair complex mode can then stand in for the CSD in comparisons. The structure comparison here, however, used time-resolved LES.
  - The direct–adjoint product is a model-side filter that separates weak, nearly self-adjoint acoustic waves from the non-normal KH wavepacket (p. 18–19). It needs no extra data.
- **Intermittency and frequency change:** the paper doesn't address intermittency or mode switching. Its spectra are block-averaged, and it notes that discrete modes aren't converged in the LES. My suggestion: the SPOD → reconstruction → Hilbert POD pipeline, applied to a band around one trapped branch, could test whether the resonance is steady or bursts in time. See [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md). Note that HPOD_x along +x would reject these negative-phase-speed waves. Multitaper or band-ensemble SPOD ([yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md), [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md)) could resolve the closely spaced tones with less variance than long Welch blocks.
- **Modelling side:**
  - The global operator uses molecular viscosity at an effective Re. The trapped modes vanish at Re = 10³ and converge for Re ≳ 5 × 10⁴ (App. D). [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md) used this same code at Re = 10³ as a crude eddy viscosity on a supersonic PIV mean flow. By this paper's result, weakly damped acoustic modes could be over-damped at that Re. That caution is my inference, not something either paper tests.
  - [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) uses a TKE eddy viscosity instead and sees a trapped-mode spike at St ≈ 0.4 in the M_j 0.9 resolvent, close to the (0, 1) branch at St ≈ 0.37–0.41 here.
  - The inlet sponge mimics nozzle impedance (App. B). Any global or resolvent model of a lab jet that omits the nozzle needs the same check, because the nozzle is one end of the resonator.
  - The vortex-sheet window 0.82 < M_j < 1 (p. 22) is the theory behind [jordan-2018-jet-flap-interaction-tones.md](jordan-2018-jet-flap-interaction-tones.md). There, the k_p⁻ wave is the S2 saddle of this family and k_T⁺ the duct-like downstream wave; the edge replaces the potential-core end condition.
- **Link to screech and impinging jets:**
  - Same wave family as the guided jet modes that close screech: [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md) (the `k_t+` duct-like wave), and the prediction model of [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md).
  - In screech and impingement, the loop is closed by a KH wave plus an upstream guided mode. Here the resonance is purely acoustic, between two trapped waves inside the core, with no KH leg. The KH wave is only coupled through the continuous branch.
  - [nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md) also uses saddle points, but between KH and the guided mode with shocks present, giving absolute instability. Here the saddles are neutral, on the real k axis, and act as turning points (end conditions).
  - [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md): the same k–St and guided-mode tools apply to impinging-jet feedback.
  - [stavropoulos-2026-jet-edge-interaction.md](stavropoulos-2026-jet-edge-interaction.md) extends jet–edge tones built on these subsonic wave families.
- **Same LES database elsewhere:** this is the Brès et al. M_j 0.9 jet in [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md), whose jet demo summarises this paper and Towne et al. (2017). It is also used in [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md), [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) and [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md). The stored grid is 656 × 138 × 128 here and in the Raiola note, but 626 × 138 × 128 in the Towne 2022 note; one of them is a typo. The trapped waves make it a good test case for a schlieren-style pipeline, since the k–St bands of Fig. 11 are a known target.
- **Facility:** the experimental spectra are from Bruit et Vent at Institut Pprime (the same nozzle as Jordan et al. 2018) and from Suzuki & Colonius (2006). No Shock Lab group facility is involved.
- **Related works cited, candidates for `/add-paper`:**
  - Towne et al. 2017, *Acoustic resonance in the potential core of subsonic jets* (JFM 825, 1113–1152), the companion local/weakly non-parallel theory paper.
  - Tam & Hu 1989 (three families of waves); Suzuki & Colonius 2006 (near-field array tones).
  - Nichols & Lele 2011 (global modes of a supersonic jet); Garnaud et al. 2013a,b.
  - Brès et al. 2017/2018 (the LES); Schmidt et al. 2018 (*Spectral analysis of jet turbulence*); Towne, Schmidt & Colonius 2018 (SPOD).
