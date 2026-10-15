# Three-dimensional coherent structures in a swirling jet undergoing vortex breakdown: stability analysis and empirical mode construction

- **Authors:** K. Oberleithner, M. Sieber, C. N. Nayeri, C. O. Paschereit (TU Berlin, Hermann-Föttinger-Institut), C. Petz, H.-C. Hege (Zuse-Institut Berlin), B. R. Noack (Institut Pprime, Poitiers), I. Wygnanski (University of Arizona)
- **Source:** J. Fluid Mech. 679, 383–414 (2011). Received 25 May 2010, accepted 17 March 2011, first published online 17 May 2011 (p. 1).
- **DOI:** 10.1017/jfm.2011.141
- **PDF:** `References/Paper_PDFs/Oberleithner-EtAl_2011_Three-Dimensional-Coherent-Structures-In-A-Swirling-Jet-Undergoing-Vortex-Breakdown.pdf` (32 pp.). Page refs below are PDF pages; journal page = PDF page + 382. The text layer extracts, but the Read tool reports the file as password-protected, so render pages with `pdftoppm` to see equations.
- **Tags:** swirling jet, vortex breakdown, recirculation bubble, precessing vortex core, self-excited global mode, supercritical Hopf bifurcation, Landau equation, lock-in, absolute/convective instability, wavemaker, local spatial linear stability, mean-flow stability, Gaster integration (WKB-like), Chebyshev collocation, snapshot POD, POD mode pair, phase portrait, POD-based phase averaging, triple decomposition, azimuthal symmetry, 3D reconstruction from 2D PIV, stereo PIV, hot wire

## Summary
A turbulent, strongly swirling free jet (Re_D = 20 000, swirl number S = 1.22) undergoes vortex breakdown, which produces a recirculation bubble on the axis and a swirling ring-jet with inner and outer shear layers (p. 7–8). A hot wire shows one sharp peak at St = 0.49. Its saturated amplitude grows as √(S − S_crit) with S_crit = 0.88, and its lock-in threshold under forcing grows linearly with frequency detuning; both are signatures of a self-excited global mode from a supercritical Hopf bifurcation (p. 9–10). The coherent part of this mode is found in two independent ways. The first is a viscous, local, spatial linear stability analysis (LSA) of an analytic fit to the measured mean flow, at the known real global frequency, with local eigenmodes stitched together along x by integrating the complex wavenumber (p. 11–16, 25–27). The second takes uncorrelated stereo-PIV snapshots, uses the leading POD pair to assign a phase to each snapshot, and phase-averages with an assumed m = 1 azimuthal symmetry to build the full 3D, time-periodic coherent field from 2D planes (p. 16–24). Both give the same co-rotating, counter-winding m = 1 helix wrapped around the recirculation bubble, with good agreement in wavelength, radial shape and streamwise growth and decay, except near the axis close to the nozzle, where the wavemaker sits and a convective (spatial) analysis is not valid (p. 26–29).

## Key findings
- **Self-excited global mode at St = 0.49** (p. 9–10, Fig. 3):
  - A single dominant frequency St_nat = fD/U = 0.49 appears everywhere the hot wire was traversed, strongest in the inner and outer axial shear layers (p. 9).
  - It is the precession of the vortex core, an m = 1 helical instability, attributed to a global mode originating in the reversed-flow region on the axis (p. 9, citing Ruith et al. 2003; Liang & Maxworthy 2005; Gallaire et al. 2006).
- **Supercritical Hopf bifurcation, two tests** (p. 9–11, Fig. 4–5):
  - |A|²_sat is linear in S at fixed Re_D = 20 000, with S_crit = 0.88 (Fig. 4, p. 10). Amplitude is the Fourier amplitude at the dominant frequency from a single wire at (x/D, y/D) = (0.57, 0.38) (p. 9).
  - Under m = 1 acoustic forcing at the lip, the critical loudspeaker voltage for lock-in grows linearly with |St_nat − St_f| (Fig. 5, p. 11; range about St 0.4–0.6, threshold up to about 0.2 V).
  - The authors say both results are consistent with mean-field theory (p. 28).
- **POD of uncorrelated stereo-PIV** (p. 18–21, Fig. 8–12):
  - Crossflow plane (x/D = 0.57): modes 1 and 2 hold 15.0% and 14.9% of TKE (≈30% together); mode 3 holds 3.1%; modes 4 and 5 hold 2.9% and 2.6% (Fig. 9, p. 19).
  - Streamwise plane: modes 1–4 hold 8.1%, 6.1%, 2.0% and 1.6% (Fig. 11, p. 20). The text says the first two hold "more than 14%" (p. 18).
  - Crossflow modes 1–2 are an m = 1 travelling azimuthal wave (π/2 apart); modes 4–5 are m = 2 (π/4 apart) (p. 18).
  - The a1–a4 Lissajous figure is a figure-of-eight, so modes 4–5 are the second harmonic of modes 1–2 and rotate with the same period (Fig. 10, p. 19).
  - Crossflow mode 3 is axisymmetric and uncorrelated with the helix; it is the axial movement of the breakdown location (p. 19).
  - Streamwise modes 3–4 are a coupled pair representing meandering of the recirculation bubble, uncorrelated with the dominant structure (p. 21).
  - The leading pair's lower energy share in the streamwise plane is because the helix occupies only about half that domain; a sub-domain would reduce the difference (p. 20–21).
  - The near-axis structure at x/D < 0.5 in streamwise modes 1–2 is read as the wavemaker (p. 20).
- **POD phase is preferred over band-pass/Hilbert or forcing phase** (p. 22–23):
  - The paper lists three phase sources: the forcing signal, a band-pass-filtered time-resolved point sensor plus Hilbert transform, or POD (p. 22).
  - The POD phase needs no fixed frequency, so frequency jitter is absorbed into v_c rather than left in the stochastic part. It is optimal in the energy sense, and it uses the whole field rather than one point, so it estimates the global phase better (p. 22–23).
  - Amplitude variations of a_k are neglected and attributed to turbulent noise (p. 22).
- **Azimuthal symmetry check** (p. 22, Fig. 13):
  - The crossflow phase average Re{F_1(r, θ)} and the streamwise-plane mode rotated in θ, Re{F_11(r) e^{iθ}}, look very similar, so the m = 1 symmetry used for 3D construction is justified. The remaining differences are put down to too few snapshots (p. 22).
- **Spatial LSA** (p. 24–27, Fig. 15–17):
  - At St = 0.49 only one unstable m = 1 spatial branch exists where the flow is unstable, so it is easy to track (p. 24).
  - In local scaling, St = 0.49 corresponds to ω ≈ 1.6 at x/D = 0.25 rising to ≈3.5 at x/D = 1.5, because R grows faster than V decays (Fig. 15, p. 24–25). *(Own check from Table 2: ω = 2π St (U/V)(R/D) gives 1.59 and 3.50.)*
  - Growth −α_i R falls from about 0.75 near the nozzle to zero at x/D = 1.28 (neutral point), then the mode decays, with the decay rate increasing up to x/D ≈ 2 (Fig. 16a, p. 25).
  - The wavelength Λ = 2πR/α_r falls from about 1.5D near the nozzle to about 0.65D at x/D = 3 (Fig. 16b, p. 25). The authors blame the falling convection velocity in the widening jet (p. 26).
  - At x/D = 0.57 the eigenfunction matches the measured coherent v_r in the outer region (|y/D| > 0.5), where it is most energetic, but is out of phase in the inner region and misses the near-axis motion (Fig. 17b vs Fig. 13, p. 26).
  - The x-integrated global shape (eq. 5.1) agrees with streamwise POD modes 1–2 except in the core upstream of x/D = 0.7. Wavelength, radial shape and overall amplification are well predicted, with peak coherent amplitude at x/D ≈ 1.25 and decay downstream (p. 27).
- **3D structure** (p. 27–28, Fig. 18):
  - Both methods give an m = 1 helix that rotates clockwise with the base flow at St = 0.49. Its roll axis is perpendicular to the mean streamlines, so it is co-rotating but counter-winding, as in Liang & Maxworthy (2005) and the DNS of Ruith et al. (2003) (p. 28).
  - The whole recirculation bubble meanders around the axis in phase with the outer helix (p. 28).
  - The time-averaged ring vortex inside the bubble seen in the LIC surface should not be read as instantaneous structure (p. 28).
- **Interpretation** (p. 29): the flow behaves like a wake, with an absolutely unstable "clock-work" (the precessing vortex core upstream of the bubble) driving convectively amplified structures in the outer shear layer. Absolute instability itself is *not* computed here; saddle points are explicitly not investigated (p. 14).

## Setup / method
- **Facility** (TU Berlin; p. 5–6, Fig. 1): swirling free jet after Chigier & Chervinsky (1965).
  - Axial air passes a deep honeycomb, then a swirler with four tangential slots (80 mm long), a 600 mm tube with a perforated plate, and a contraction to the nozzle. Swirl is set by the ratio of axial to tangential mass flow from two frequency-controlled blowers metered by calibrated orifices.
  - Forcing: eight loudspeakers equally spaced in azimuth, each feeding a waveguide to a narrow slot at the nozzle lip, so azimuthal modes up to m = ±4 can be excited. Speakers are balanced with a centreline microphone at no flow (p. 5).

  | Quantity | Value |
  |---|---|
  | Nozzle diameter | D = 51 mm (p. 5); Fig. 1 also shows 154 mm (likely the tube/contraction inlet) |
  | Re_D = DU/ν | 20 000, with U = Q/(π(D/2)²) the bulk velocity (eq. 2.1, p. 7; figure captions) |
  | Swirl number S | 1.22 (captions of Fig. 2, 5, 18) |
  | Critical swirl | S_crit = 0.88 at Re_D = 20 000 (p. 10) |
  | Global frequency | St = fD/U = 0.49, m = 1 (p. 9) |
  | Local Re = RV/ν in LSA | 3000–8000, varying with x (p. 15) |
  | Velocity | not stated. *Own estimate: U ≈ 20 000 × 1.5×10⁻⁵ / 0.051 ≈ 5.9 m/s for air, so f ≈ 57 Hz* |

- **Diagnostics:**
  - *Hot wire* (time-resolved point probe): single wire aligned with the azimuthal velocity, traversed radially and axially; spectrum by Fourier transform (Fig. 3, p. 9). Sampling rate, record length and spectral parameters are not given.
  - *Stereo PIV* (non-time-resolved): Nd:YAG 532 nm, 25 mJ per pulse; two 1.3 MPx CCD cameras at 45°; cameras and laser on one traverse (p. 6–7). 800 snapshots per plane at about 3 Hz, so snapshots are uncorrelated (p. 7). Planes: crossflow at x/D = 0.57 over −1.1 < y/D, z/D < 1.1; streamwise at z/D = 0 over 0.25 < x/D < 3, −1.1 < y/D < 1.1 (p. 18). Interrogation settings are not given.
- **Mean-flow model for LSA** (p. 11–13, Tables 2–3, Fig. 6):
  - Incompressible, parallel, axial V_x and azimuthal V_θ only; radial mean velocity neglected (p. 11).
  - V_x uses Michalke's (1999) ring-jet-with-backflow profile with Monkewitz & Sohn (1988) shape functions, extended to separate N₁ and N₂ for the inner and outer shear layers. V_θ uses the same form with B = 1, scaled by the local swirl S_loc = V_θ,max/V_x,max (eq. 4.2–4.3).
  - Scales: V = V_x,max and R = radius of that maximum, both varying with x. Fits at x/D = 0.25, 0.5, 1, 1.5; Fig. 6 shows fits against data for 0.5 ≤ x/D ≤ 3 (p. 12). Simpler profiles (Michalke 1999; Gallaire, Chomaz & Huerre 2004) were not accurate enough (p. 12).
- **Stability problem** (p. 13–16):
  - Viscous, incompressible linearised Navier–Stokes about the local profile, normal modes in (x, θ, t) (eq. 4.4–4.5), with far-field decay and Batchelor–Gill-type centreline conditions by |m| (eq. 4.6–4.7).
  - Spatial problem: real ω and m, complex α. Unstable when α_i < 0 (p. 14). Absolute instability and saddle points are not studied (p. 14).
  - Justification for a spatial (signalling) analysis at the known global frequency: in earlier experiments (Oberleithner et al. 2009) the precessing vortex core upstream of breakdown acted as a wavemaker, and outer-shear-layer waves were internally forced and synchronised to it, so they are treated as convectively unstable waves forced at ω_global (p. 4).
  - Non-parallel shape: solve at each x, then integrate α along x from x₀/D = 0.2 (Gaster 1968; eq. 5.1). Eigenvectors normalised by the Euclidean norm, with phase equalised at r = R (p. 26–27). Non-parallel corrections are not included (p. 23).
- **Numerics** (p. 14–16):
  - Chebyshev collocation after Khorrami, Malik & Ash (1989): velocities and momentum equations at collocation points, continuity at mid-points. Radial map of Malik, Zang & Hussaini (1985) (eq. 4.8) to 0 ≤ r ≤ r_max.
  - Linearised in α with X = [F, G, H, αF, αG, αH, P]ᵀ, giving a 7Z × 7Z generalised eigenproblem DX = αEX (eq. 4.9), solved with MATLAB `eig`. The last 14 rows of D hold boundary conditions.
  - Z = 300; convergence gave a = 3 and r_max = 100 (p. 15). The validation case (Fig. 7) used Z = 180, ε₁ = 10⁻¹¹, ε₂ = 10⁻³ (p. 16).
  - Spurious modes removed by (i) a decay test, the energy of F in the outer tenth of points relative to the total below ε₁ (eq. 4.10), and (ii) comparing spectra at two resolutions Z and Z′ (p. 15).
  - Validated against Khorrami et al. (1989) and Parras & Fernandez-Feria (2007) (agree to all digits), and against Gallaire & Chomaz (2003) temporal growth rates for a non-swirling jet (Fig. 7, p. 16).
  - Branch tracking across x and ω: minimise |α − α′| and |1 − X·X′| between successive solutions; checked visually (p. 16).
- **Empirical method** (p. 16–24, Fig. 14):
  1. Fundamental frequency from the hot wire (time-resolved).
  2. Snapshot POD (Sirovich 1987) of each PIV plane, no weighting stated, mean removed (eq. 4.11–4.23).
  3. Phase per snapshot from the leading pair, a_k e^{iφ_k} = a₁ + i a₂ (eq. 4.24). Requires φ_k to be uniformly spread over [0, 2π], which the POD phases satisfy (p. 21).
  4. Fourier projection in θ (homogeneous) and in phase (treated as time via φ_k = ωt_k) to get F_mn (eq. 4.25–4.27). With m = 1, n = 1 this is equivalent to the complex POD pair φ₁ + iφ₂ if the a_k amplitude is ignored (p. 22).
  5. 3D field v_c = Re{F₁₁(x, r) e^{i(θ − ωt)}} (eq. 4.29) from the streamwise plane, rotated in θ; checked against the crossflow plane (Fig. 13).
  - 3D rendering in Amira; azimuthal-vorticity isosurfaces of the phase-averaged field, mean streamlines and LIC surfaces (p. 27–28).

## Key equations
- Swirl number (eq. 2.2, p. 7): $S=\dfrac{\dot G_\theta}{D/2\,\dot G_x}=\dfrac{2\pi\int_0^\infty \rho V_x V_\theta r^2\,dr}{D\pi\int_0^\infty \rho\left(V_x^2-\tfrac{V_\theta^2}{2}\right)r\,dr}$.
- Forced Landau equation and Hopf scaling (eq. 3.1–3.2, p. 9): $\dfrac{d|A|}{dt}=c_1|A|-c_2|A|^3+f$, $\;|A|_{sat}\propto\sqrt{S-S_{crit}}$.
- Triple decomposition (eq. 4.1, p. 11): $\mathbf v(\mathbf x,t)=\mathbf V(\mathbf x)+\mathbf v^c(\mathbf x,t)+\mathbf v^s(\mathbf x,t)$; phase average $\mathbf v^p=\mathbf V+\mathbf v^c$.
- Mean profiles (eq. 4.2–4.3, p. 12): $V_x=4BF_1[1-BF_2]$, $F_j=\left[1+\left(e^{r^2 b_j}-1\right)^{N_j}\right]^{-1}$, $B=0.5[1+(1-V_{cl})^{1/2}]$; $V_\theta=4F_3[1-F_4]S_{loc}$ (all normalised by V and R).
- Normal modes (eq. 4.4, p. 13): $(v_x^c,v_r^c,v_\theta^c,p^c)=\mathrm{Re}\{[H,\,iF,\,G,\,P]\exp[i(\alpha x+m\theta-\omega t)]\}$.
- Linearised equations (eq. 4.5a–d, p. 13), primes = d/dr:
  - Continuity: $F'+\dfrac{F}{r}+\dfrac{mG}{r}+\alpha H=0$.
  - x-momentum: $\dfrac{H''}{Re}+\dfrac{H'}{rRe}+\left[i\omega-\dfrac{imV_\theta}{r}-i\alpha V_x-\dfrac{m^2}{r^2Re}\right]H-iV_x'F-i\alpha P=\dfrac{\alpha^2H}{Re}$.
  - r-momentum: $\dfrac{iF''}{Re}+\dfrac{iF'}{rRe}-\left[\omega-\dfrac{mV_\theta}{r}-\alpha V_x+\dfrac{i(m^2+1)}{r^2Re}\right]F-2\left[\dfrac{im}{r^2Re}-\dfrac{V_\theta}{r}\right]G-P'=\dfrac{i\alpha^2F}{Re}$.
  - θ-momentum: $\dfrac{G''}{Re}+\dfrac{G'}{rRe}+\left[i\omega-\dfrac{imV_\theta}{r}-i\alpha V_x-\dfrac{m^2+1}{r^2Re}\right]G-\left[iV_\theta'+\dfrac{2m}{r^2Re}+\dfrac{iV_\theta}{r}\right]F-\dfrac{imP}{r}=\dfrac{\alpha^2G}{Re}$.
- Centreline conditions (eq. 4.7, p. 14): |m| > 1: F = G = H = P = 0. |m| = 1: H = P = 0, F + mG = 0, 2F′ + mG′ = 0. m = 0: F = G = 0, H and P finite.
- Radial map (eq. 4.8, p. 14): $\dfrac{r}{r_c}=\dfrac{1+\xi}{1-\xi+2r_c/r_{max}}$, half the points in 0 ≤ r ≤ r_c.
- Eigenproblem (eq. 4.9, p. 15): $\mathbf D\mathbf X=\alpha\mathbf E\mathbf X$, $\mathbf X=[F,G,H,\alpha F,\alpha G,\alpha H,P]^T$. Spurious filter (eq. 4.10): $\sum_{i=1}^{Z/10}|F(r_i)|^2\big/\sum_{i=1}^{Z}|F(r_i)|^2<\epsilon_1$.
- Global shape by integration (eq. 5.1, p. 26): $(v_x^c,v_r^c,v_\theta^c,p^c)=\mathrm{Re}\left\{[H,iF,G,P]\exp\left[i\left(\int_{x_0}^{x}\alpha\,dx+m\theta-\omega t\right)\right]\right\}$.
- Snapshot POD (eq. 4.17–4.23, p. 17–18): $R_{kl}=\tfrac1N(\mathbf v'(t_k),\mathbf v'(t_l))_\Omega$, $R\mathbf a_p=\lambda_p\mathbf a_p$, $\langle a_pa_q\rangle=\lambda_p\delta_{pq}$, $\boldsymbol\Phi_p=\dfrac{1}{N\lambda_p}\sum_k a_p(t_k)\mathbf v'(t_k)$, $K=\tfrac12\sum_p\lambda_p$.
- POD phase (eq. 4.24, p. 21): $a_k e^{i\phi_k}=a_1(t_k)+i\,a_2(t_k)$.
- Coherent field and its Fourier coefficients (eq. 4.25–4.27, p. 21): $\mathbf v^c=\mathrm{Re}\{\mathbf F_{mn}(x,r)e^{i(m\theta-n\omega t)}\}$, $\mathbf F_{mn}=\dfrac{1}{2\pi N}\sum_{k=1}^{N}\int_{-\pi}^{\pi}\mathbf v'(x,r,\theta,t_k)e^{-i(m\theta-n\phi_k)}d\theta$.
- Without θ-homogeneity (eq. 4.28, p. 22): $\mathbf F_n(x,r,\theta)=\tfrac1N\sum_k\mathbf v'(x,r,\theta,t_k)e^{in\phi_k}$, with $\boldsymbol\Phi_1+i\boldsymbol\Phi_2\propto\mathbf F_1$. 3D field (eq. 4.29, p. 24): $\mathbf v^c=\mathrm{Re}\{\mathbf F_{11}(x,r)e^{i(\theta-\omega t)}\}$.

> Eq. 2.2, 4.2–4.10 were re-typed from rendered pages 7 and 12–15. Eq. 4.17–4.29 and 5.1 come from the garbled text layer and were rebuilt; check the normalisation of eq. 4.21 (1/(Nλ_p) vs 1/√(Nλ_p)), the prefactor of eq. 4.27 (1/(2πN)) and the sign of the exponent in eq. 4.28 against p. 17, 21–22 before reuse. The paper names the map parameter r_c in eq. 4.8 but reports the converged value as "a = 3" (p. 15); presumably the same parameter.

## Data tables
**Table 2 (p. 13): flow parameters of the mean-flow fit**

| x/D | V/U | S_loc | R/D | B |
|---|---|---|---|---|
| 0.25 | 0.87 | 0.91 | 0.45 | 1.01 |
| 0.50 | 0.76 | 0.90 | 0.50 | 1.03 |
| 1.00 | 0.63 | 0.81 | 0.56 | 1.04 |
| 1.50 | 0.51 | 0.71 | 0.58 | 1.00 |

**Table 3 (p. 13): shape parameters of eq. 4.2–4.3**

| x/D | N₁ | N₂ | N₃ | N₄ | b₁ | b₂ | b₃ | b₄ |
|---|---|---|---|---|---|---|---|---|
| 0.25 | 4.23 | 1.10 | 4.18 | 0.73 | 0.51 | 0.38 | 0.51 | 0.27 |
| 0.50 | 3.14 | 1.35 | 2.23 | 1.09 | 0.56 | 0.52 | 0.73 | 0.66 |
| 1.00 | 2.92 | 1.06 | 1.87 | 0.55 | 0.53 | 0.46 | 0.63 | 0.35 |
| 1.50 | 2.38 | 0.87 | 1.17 | 0.56 | 0.46 | 0.35 | 0.71 | 0.57 |

> B slightly above 1 implies V_cl < 0 (reverse flow on the axis) through eq. 4.2c, consistent with the recirculation bubble. Note that the text says N₁,₂ ≥ 1 (p. 12), but several N values in the table are below 1; check the table against the rendered page 13 before reuse.

**POD energies (% of TKE)**

| Plane | Mode 1 | Mode 2 | Mode 3 | Mode 4 | Mode 5 | Source |
|---|---|---|---|---|---|---|
| Crossflow, x/D = 0.57 | 15.0 | 14.9 | 3.1 | 2.9 | 2.6 | Fig. 9, p. 19 |
| Streamwise, z/D = 0 | 8.1 | 6.1 | 2.0 | 1.6 | — | Fig. 11, p. 20 |

> Fig. 8 (p. 18) plots λ_q, not percentages, despite its caption. Streamwise modes 1+2 sum to 14.2%, matching "more than 14%" (p. 18).

## Figures worth remembering
- **Fig. 1 (p. 6):** facility (swirler, honeycomb, perforated plate, 600 mm tube, eight speakers) and coordinate systems.
- **Fig. 2 (p. 8):** mean V_x and V_z profiles 0.2 ≤ x/D ≤ 3 with streamlines outlining the recirculation bubble.
- **Fig. 3 (p. 9):** hot-wire PSD with the sharp St = 0.49 peak.
- **Fig. 4 (p. 10):** |A|²_sat against S, linear with S_crit = 0.88 (Hopf).
- **Fig. 5 (p. 11):** lock-in threshold voltage against forcing St, V-shaped about St_nat.
- **Fig. 8–9 (p. 18–19):** POD spectra of both planes and crossflow modes 1–5 (m = 1 pair, axisymmetric mode 3, m = 2 pair).
- **Fig. 10 and 12 (p. 19–20):** phase portraits: a1–a2 circle, a1–a4 figure-of-eight (harmonic), a1–a3 uncorrelated.
- **Fig. 11 (p. 20):** streamwise POD modes 1–4 (helix pair, then bubble meandering pair).
- **Fig. 13 (p. 22):** crossflow phase average against the rotated streamwise phase average (symmetry check).
- **Fig. 14 (p. 24):** flow chart of the 2D-to-3D construction.
- **Fig. 15–16 (p. 25):** m = 1 spatial growth against ω at four stations; growth and wavelength against x/D at St = 0.49 (neutral at x/D = 1.28).
- **Fig. 17 (p. 26):** LSA coherent velocity in the streamwise plane and crossflow at x/D = 0.57.
- **Fig. 18 (p. 27):** 3D helix from POD (a) and from LSA (b), with mean streamlines and LIC surface.

## Notation
- V (capital): mean velocity; v^c: coherent; v^s: stochastic; v′ = v − V. Cartesian (x, y, z) in the streamwise plane, cylindrical (x, r, θ) in the crossflow plane (Table 1, p. 11).
- U: bulk velocity from mass flow; St = fD/U. V = V_x,max(x), R = r at V_x,max(x): local LSA scales; ω and α in the LSA are made dimensionless with R and V. Re = RV/ν (local), Re_D = DU/ν.
- S: swirl number (eq. 2.2); S_loc = V_θ,max/V_x,max; S_crit: Hopf threshold.
- H, F, G, P: axial, radial, azimuthal velocity and pressure eigenfunctions. α = α_r + iα_i; −α_i R: local spatial growth; Λ = 2πR/α_r: wavelength.
- λ_p, a_p, Φ_p: POD eigenvalue, temporal coefficient, spatial mode. φ_k: POD phase of snapshot k. F_mn: Fourier coefficient for azimuthal order m and harmonic n.

## Relevance to this project
This project analyses resonance and feedback in jets from lab data (schlieren, acoustics, PIV); see CLAUDE.md. This paper is not a Shock Lab group paper (TU Berlin facility), and the flow is a low-speed swirling jet, but it is the methodological source the group cites for turning a POD pair into a phase and a complex mode.
- **POD-pair phase for non-time-resolved PIV:**
  - This is the origin of the a₁ + i a₂ phase (eq. 4.24) that [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) cites alongside Jaunet et al. (2016) to build its complex screech mode, and that [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md) uses as eq. 4.1. The phase-average binning in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md) is the same idea; Weightman also cites this paper's lock-in result.
  - It needs a dominant, nearly periodic process with a clear POD pair (circle in the a₁–a₂ portrait) and enough snapshots to spread phases evenly over [0, 2π] (p. 21). 800 snapshots per plane were enough for the 3D construction, though the crossflow comparison shows residual noise from too few samples (p. 22).
  - Its limits matter for screech. The method ignores the amplitude a_k (treated as turbulent noise, p. 22) and assumes one frequency. In a screeching or impinging jet with intermittent amplitude or mode switching, the conditioned-amplitude analysis in the Nogueira twin-jet note (r₁₂ against a₃) is a direct extension, and the Hilbert POD of [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) and [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md) gives amplitude and phase without needing a pair to be identified first. Davey et al. compare phase-averaged POD pairs with HPOD modes, which is a direct test of this paper's method.
  - The paper's argument that POD phase beats band-pass + Hilbert phase from a point sensor (p. 22–23) is the PIV-side counterpart of the SPOD → reconstruction → HPOD pipeline. With time-resolved schlieren the same jitter-tolerant phase comes from the HPOD or analytic signal of the SPOD-reconstructed band, and can be compared with a POD-pair phase on the same data.
- **Symmetry to build 3D from 2D:** assuming an azimuthal mode order and rotating a streamwise-plane phase average (eq. 4.29) is cheap and checkable with one crossflow plane (Fig. 13). For round screeching or impinging jets with helical or toroidal modes, this could turn planar PIV or schlieren phase averages into 3D estimates, provided the mode order is known (e.g. from azimuthal microphones). It fails for flapping modes in rectangular or twin jets, where the symmetry-split POD of the Nogueira twin-jet note is the better tool.
- **Global-mode diagnostics usable on lab data:** the Landau/Hopf test (|A|²_sat linear in the control parameter, Fig. 4) and the lock-in threshold test (linear in detuning, Fig. 5) need only a time-resolved point sensor and a control parameter. For screech, NPR plays the role of S, and a microphone gives |A|; forcing via a plasma or acoustic actuator would give lock-in maps (compare [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md)). These tests distinguish a self-excited oscillator from an amplifier responding to noise.
- **Mean-flow LSA, oscillator vs amplifier split:**
  - The modelling recipe is: fit an analytic profile to the measured mean, solve a viscous local spatial problem at the known global frequency, and integrate α(x) to get the wavepacket envelope (eq. 5.1). It predicts wavelength, radial shape and growth/decay in the convective region, but fails near the wavemaker (p. 26–27).
  - This is the same "convective KH driven at a frequency set elsewhere" logic as screech closure models, where the frequency is set by the KH–guided-mode loop. The absolute-instability side, which this paper explicitly does not compute (p. 14), is done for shock-containing jets in [nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md) (saddle point between KH and the guided mode) and as a global mode on a PIV mean flow in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md).
  - The mean flow is incompressible, inviscid-profile-based with molecular Re = 3000–8000 and no eddy viscosity; the overall agreement supports mean-flow stability for turbulent coherent structures, consistent with the wider use of mean-flow models in [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) (which adds eddy viscosity for resolvent). Unlike the Nogueira twin-jet LSA, this model has no compressibility or shock cells.
- **Low-energy modes beside the main pair:** crossflow mode 3 (breakdown-location movement) and streamwise modes 3–4 (bubble meandering) are uncorrelated with the helix (p. 19, 21). This parallels the shear-thickness mode in the Weightman and Nogueira twin-jet notes, which *is* correlated with the screech amplitude there. Phase portraits of the pair against low-order unpaired modes are a quick test for such coupling.
- **Related works cited:** Gallaire et al. 2006 (spiral vortex breakdown as a global mode), Liang & Maxworthy 2005 (swirling-jet experiments), Ruith et al. 2003 (DNS of vortex breakdown), Huerre & Monkewitz 1990 (local and global instabilities), Hussain & Reynolds 1970 (triple decomposition), Gaster 1968, Khorrami et al. 1989 (spectral collocation for swirling flows), Depardon et al. 2007 (POD phase). Candidates for `/add-paper` if the group's notes need the background.
