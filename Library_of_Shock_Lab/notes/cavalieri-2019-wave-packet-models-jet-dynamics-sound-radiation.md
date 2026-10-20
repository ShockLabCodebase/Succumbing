---
key: "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation"
title: "Wave-packet models for jet dynamics and sound radiation"
authors: ["Cavalieri, A. V. G.", "Jordan, P.", "Lesshafft, L."]
year: 2019
type: "review"
venue: "Appl. Mech. Rev. 71(2), 020802"
bib: {"journal": "Applied Mechanics Reviews", "volume": "71", "number": "2", "pages": "020802"}
doi: "10.1115/1.4042736"
arxiv: ""
pdf: "linear-models/Cavalieri-EtAl_2019_Wave-Packet-Models-For-Jet-Dynamics-And-Sound-Radiation.pdf"
version: "accepted-manuscript"
unverified: ["volume, issue, article number and DOI from memory, not printed in this accepted manuscript"]
group: false
facility: ""
data: ["model-only"]
methods: ["resolvent", "SPOD", "LSA-local", "LSA-global", "coherence", "FW-H", "acoustic-analogy"]
flow: ["round-jet", "subsonic", "supersonic"]
phenomena: ["KH-wavepackets", "mixing-noise", "Mach-wave-radiation", "directivity"]
params: {}
topics: ["linear-models", "linear-operator-methods", "jet-noise-mechanisms"]
related: ["towne-2018-spod-relationship-dmd-resolvent", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "pickering-2020-lift-up-kh-orr-jets", "garnaud-2013-preferred-mode-incompressible-jets", "wong-2021-wavepacket-modelling-bbsan", "morra-2021-colour-of-forcing-resolvent-channel"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "garnaud-2013-preferred-mode-incompressible-jets", "huerre-1990-local-global-instabilities-spatially-developing-flows", "jordan-2018-jet-flap-interaction-tones", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "schmidt-2018-spectral-analysis-jet-turbulence", "taira-2017-modal-analysis-fluid-flows-overview", "tam-1995-supersonic-jet-noise", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Tutorial review: wavepacket line sources (superdirectivity, Mach waves, jitter adds ~30 dB subsonic) and Ginzburg–Landau resolvent; SPOD = resolvent only for white forcing"
---
# Wave-packet models for jet dynamics and sound radiation

- **Authors:** A. V. G. Cavalieri (Instituto Tecnológico de Aeronáutica, São José dos Campos, Brazil), P. Jordan (Institut Pprime, CNRS / Université de Poitiers / ENSMA), L. Lesshafft (LadHyX, CNRS / École polytechnique)
- **Source:** Applied Mechanics Reviews 71(2), 020802 (2019), doi:10.1115/1.4042736 (journal details from memory, not printed in this file; verify). This file is the **accepted manuscript** (ASME manuscript ID AMR-18-1137, LaTeX, created 1 Feb 2019), so layout and page numbers differ from the journal version. Page refs below are PDF pages.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-models/Cavalieri-EtAl_2019_Wave-Packet-Models-For-Jet-Dynamics-And-Sound-Radiation.pdf` (33 pp.: text p. 1–29, references p. 29–33)
- **Code:** Matlab/Octave scripts example1.m–example14.m reproduce nearly every figure (ftp://161.24.15.247/Andre/AMR_Wavepackets and the journal's supplementary material; p. 1).
- **Tags:** review/tutorial, wavepackets, Lighthill acoustic analogy, line-source model, acoustic matching, superdirectivity, Mach wave radiation, convective Mach number, jitter, coherence decay, two-point CSD, SPOD, low-rank reconstruction, resolvent analysis, input–output analysis, stochastic forcing, white-noise hypothesis, gain separation, non-normality, linearised Ginzburg–Landau equation, local/absolute/global stability, Chebyshev collocation, coupled flow–acoustic resolvent, subsonic vs supersonic jets, installed jets, trapped acoustic waves

## Summary
A tutorial review that puts kinematic and dynamic wavepacket models of jet noise into one input–output (resolvent) framework (p. 1–3). The kinematic side uses Lighthill's analogy with a postulated line source: a harmonic Gaussian wavepacket shows superdirectivity and Mach-wave radiation through acoustic matching, and a two-point CSD with coherence decay (jitter) shows why subsonic wavepacket noise depends strongly on jitter but supersonic noise does not (§3, p. 9–18). The dynamic side replaces the linearised Navier–Stokes operator with a linearised Ginzburg–Landau (GL) equation whose growth parameter decays linearly in x. Its local, global and resolvent properties mimic a convectively unstable jet: the optimal resolvent response is a Gaussian wavepacket, and under weakly coherent stochastic forcing the SPOD modes equal the resolvent modes, while coherent forcing reproduces only the leading one (§4, p. 18–24). A coupled GL–Helmholtz resolvent then links nonlinear forcing straight to far-field sound. Many SPOD modes of the flow are needed to recover subsonic radiation, but only one to three resolvent modes of the coupled operator, and supersonic cases are dominated by a single Mach-wave mode (§5, p. 24–28). The outlook covers noise prediction, control, installed jets and resonance (trapped waves, edge, impinging and screech tones) (p. 27–29).

## Key findings
- **Turbulence vs sound organisation** (p. 1–2): low-angle jet noise is mostly axisymmetric (also at full engine scale, Faranosov et al. 2016). The energetic turbulence scales with local momentum thickness, but the sound is driven by larger, organised wavepackets. The leading SPOD mode of the Brès et al. M 0.9 LES at St = 0.3 is a wavepacket with a low-angle sound beam (Fig. 2, p. 3).
- **SPOD = resolvent under white forcing** (eq. 33, p. 8): if P_ff = I, SPOD modes equal the resolvent response modes and SPOD eigenvalues equal σ². With large gain separation σ₁ ≫ σ₂, any forcing with non-zero projection on v₁ gives a CSD dominated by u₁ (p. 8). Same result as [towne-2018](towne-2018-spod-relationship-dmd-resolvent.md).
- **Resolvent does not identify triads** (p. 9): the forcing lumps all triads ω_a + ω_b = ω₀, m_a + m_b = m₀ into one term, so nonlinear mechanisms stay hidden. Alternatives: a few explicit triads (Wu & Huerre 2009; Suponitsky et al. 2010, 2011) or probing forcing statistics from LES (Towne et al. 2017).
- **Five observations behind the line-source model** (p. 10): far field dominated by m = 0, ±1, ±2; higher m are cancelled azimuthally (Michalke & Fuchs 1975); wavepackets are non-compact in x (envelope comparable to the acoustic wavelength) but radially compact at low frequency; low-angle, low-frequency sound is dominated by the m = 0, T₁₁ source term. Hence a line of axial quadrupoles.
- **Compact vs extended source** (Figs. 5, 7, p. 10–12): k_hL = 0.1 radiates omnidirectionally; k_hL = 5 beams sound to low angles. Far-field PSD ∝ exp[−½k_h²L²(1 − M_c cos θ)²] (eq. 37, p. 11).
  - Supersonic M_c: peak at the Mach angle θ = cos⁻¹(1/M_c).
  - Subsonic M_c: peak at θ = 0 and exponential decay with angle (superdirectivity, Laufer & Yen 1983; Crighton & Huerre 1990). Matches the measured m = 0, St = 0.2 SPL of the M 0.6 tripped jet of Cavalieri et al. (2012) when plotted against (1 − M_c cos θ)² (Fig. 8, p. 12).
- **Convective Mach number used throughout:** M_c ≈ 0.6M, so M = 0.6 → M_c = 0.36 and M = 2 → M_c = 1.2 (p. 9).
- **Acoustic matching** (eqs. 40–43, Fig. 9, p. 12–13): the far field is a Fourier transform of the source at k_y = k cos θ, so only source wavenumbers with |k_y|/k_h ≤ M_c (supersonic phase speed) radiate.
  - Subsonic: only a small tail of the source spectrum radiates, and shortening the wavepacket (smaller k_hL) raises the sound.
  - Supersonic: the spectral peak already lies in the radiation range; the most energetic wavelength equals the radiated wavelength, so k_hL barely changes peak levels (Fig. 10 LES, M 0.9 vs 1.5, p. 13).
- **Jitter model** (eqs. 46–48, p. 14): adding a coherence length L_c to the CSD gives the same directivity form with an effective length L_m, L_m² = L²L_c²/(2L² + L_c²). L_c ≪ L tends to omnidirectional (L_m → 0), L_c ≫ L to the harmonic wavepacket (L_m → L).
- **Jitter raises subsonic noise by ~30 dB** (Fig. 12, p. 15): for L_c ≈ L (the realistic case, Breakey et al. 2017; Jaunet et al. 2017) the M 0.6 source stays superdirective but is almost 30 dB louder than the L_c = 10L case. At M = 2 jitter barely changes the peak low-angle SPL and mainly raises levels at θ > 60° (p. 15).
- **Why** (eqs. 49–51, Fig. 13, p. 15–16): in the double wavenumber transform of the CSD, coherence decay smears energy into the subsonic "radiation square" |k_y|, |k_z| ≤ M_c k_h; for supersonic M_c much of the CSD is already inside.
- **Corollary for supersonic jets** (p. 16): their dominant noise may be captured by Navier–Stokes linearised about the mean with only an inflow amplitude and no volume source (as in Sinha et al. 2014). Subsonic jets need volume forcing (nonlinear/stochastic) to represent jitter.
- **SPOD of the source CSD** (Figs. 14–20, p. 16–18; M 0.6, k_hL = 5):
  - L_c = 10L is almost rank 1; L_c = L/10 needs many modes; L_c = L is low rank (Fig. 14).
  - Mode 1 is the "average wavepacket"; higher modes add streamwise oscillations and π phase jumps (orthogonality). Measured SPOD modes of Jaunet et al. (2017), radially integrated, look similar (Fig. 17).
  - One mode has unit coherence and captures only a small fraction of subsonic sound; three modes recover the coherence over −2 < y/L < 2 and nearly all low-angle radiation (Figs. 18, 20a). Breakey et al. (2017) near-field data show the same (Fig. 19).
  - Supersonic: one SPOD mode suffices for the dominant radiation (Fig. 20b, p. 18).
  - General lesson: leading SPOD modes (optimal for fluctuation energy) often contribute little to subsonic radiated sound; many modes are needed (Freund & Colonius 2009; Towne et al. 2015) (p. 18).
- **GL calibration** (p. 19): with U = 1, γ = (1 − i)/10 and μ(x) = A(1 − x/10), the system is locally unstable for x < 10. Absolute instability at the inlet needs A > 1.25, so A ≤ 1.25 for the local examples (in jets absolute instability needs strong density differences, Monkewitz & Sohn 1988). The k⁺ growth rate decays monotonically, roughly linearly for ω = 1, A = 0.6, so the predicted envelope is Gaussian peaking where k_i⁺ = 0 (Fig. 21, p. 19–20).
- **Global stability** (eq. 60, Fig. 22, p. 20–21): eigenvalues from Airy roots ζ_n. Global instability needs A > 1.6. With N = 200 Chebyshev points on [0, 20] the seven least-stable eigenvalues match the exact ones; the rest are spoiled by spurious feedback from the outflow Dirichlet condition (as in truncated jet global-mode calculations, Lesshafft 2018). Globally unstable settings are excluded because turbulent jets are amplifiers, not oscillators (p. 21).
- **Harmonic resolvent of GL** (Figs. 23–24, p. 21–22):
  - ω = 1, A = 1: σ₁ exceeds the rest by more than two orders of magnitude; A = 0.6 gives σ₁/σ₂ ≈ 10.
  - Optimal forcing sits near the inlet (but not at it, because of the Dirichlet condition); optimal response is a near-Gaussian wavepacket peaking at x = 8.55, close to the local neutral point x = 8.73 for ω = 1 (p. 22).
  - Suboptimals add lobes in phase opposition, each forcing resembling the previous response, with gains of order 1; the same shapes as the kinematic SPOD modes of Fig. 15.
  - Limitation: GL has one k⁺ branch, so it cannot represent the Orr mechanism from many stable non-orthogonal jet k⁺ modes, which can dominate jet suboptimals (Schmidt et al. 2018; Lesshafft et al. 2019) (p. 22).
- **Stochastic forcing of GL** (eq. 62, Figs. 25–26, p. 22–24; A = 0.6, ω = 1, k_h = 1):
  - Forcing coherence L_c (0.1 to 10) barely changes the response CSD; only its tails differ.
  - L_c = 0.1 (nearly white): the four leading SPOD modes reproduce the resolvent response modes.
  - L_c = 10 (coherent): only SPOD mode 1 matches the optimal response; suboptimals differ, since σ₁ ≈ 10σ₂ dominates whatever the forcing.
  - Jets show σ₁ ≫ σ₂ near St ≈ 0.4 ("preferred mode"). In the M 0.4, Re 460,000 jet the optimal resolvent mode matches the leading measured SPOD mode at St 0.4 but the suboptimals do not (Fig. 27, data from [lesshafft-2019](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md)); coherent Reynolds-stress forcing may be why (p. 22).
- **Coupled GL–acoustic problem, subsonic M = 0.6** (§5, Figs. 28–30, p. 24–27):
  - Using SPOD modes of q as sources converges slowly: SPOD mode 1 underpredicts the peak by about 17 dB, and five modes are needed at low angles (Fig. 28, p. 25).
  - Using resolvent modes of R_coupled converges fast: one mode gives accurate low-angle radiation, three recover virtually all (Fig. 29, p. 26).
  - Coupled forcing mode 1 has a small inlet peak plus distributed long-wavelength (supersonic phase speed) forcing; mode 2 has nearly constant forcing (near-infinite phase speed) that radiates to θ = 90° (Fig. 30, p. 26).
  - Similar to Jeun et al. (2016) for an M 0.9 jet at St 0.56: acoustic wavelength 2D, forcing wavelengths ≈ 6 radii, optimal superdirective downstream, first suboptimal double-beamed (Fig. 31, p. 26–27).
- **Gain separation vs Mach number** (Fig. 32, p. 26, 28): subsonic coupled gains are relatively flat; at supersonic M the first gain separates strongly and is Mach-wave radiation, as in the jet gains of Jeun et al. (M_j 0.7–1.7).
- **Outlook** (p. 27–29):
  - LES now predicts jet noise within 1 dB (Brès et al. 2018). Linear models are still useful for cheap prediction (Neilsen et al. 2016 military aircraft; Papamoschou 2018), noise-control design (chevrons, microjets), estimation from sensors and closed-loop control.
  - Installed jets: wavepacket near field scattered by a trailing edge; swept edges predicted beneficial and confirmed (Piantanida et al. 2016).
  - Resonance: trapped acoustic waves in high-subsonic potential cores modelled by vortex-sheet or soft-duct models (Towne et al. 2017); the same ideas explain jet–edge tones (Jordan et al. 2018), impinging tones and screech (Edgington-Mitchell et al. 2018) (p. 28–29).
  - Data challenge: higher-order SPOD modes, which carry jitter and much of the sound, converge slowly and need large datasets (p. 29).

## Setup / method
This is a review with model problems only; no new experiments or simulations. Experimental and LES data shown are borrowed (Brès et al. 2018 LES M 0.9 [Charles]; Breakey et al. 2017 near-field arrays; Jaunet et al. 2017 TR-PIV; Cavalieri et al. 2012 acoustics; Sinha et al. 2014 M 1.5 LES; Jeun et al. 2016 resolvent; Lesshafft et al. 2019 resolvent vs SPOD). None are Shock Lab group data.

### Kinematic model (§3, p. 9–18)
| Item | Value | Page |
|---|---|---|
| Operator | Helmholtz equation (Lighthill, frequency domain), free-space Green's function | 4, 11 |
| Source | line distribution of axial quadrupoles S_xx(y), harmonic (eq. 34) or two-point CSD (eq. 46) | 10, 14 |
| Cases | M = 0.6 (M_c 0.36) and M = 2 (M_c 1.2); k_hL = 0.1, 5, 10; L_c = L/10, L, 10L | 9, 10–15 |
| Discretisation | y ∈ [−5, 5], N = 1001 (example1); y ∈ [−10, 10], 401 points (example2, 3, 5); y, z ∈ [−6, 6], 1201 points (example4); y ∈ [−10, 10], 400 points (example7) | 10–17 |
| Observers | arc R = 20(M_c k_h L)⁻¹, θ ∈ [0°, 180°] in 10° steps | 11, 14 |
| SPOD | eigendecomposition of the analytical source CSD; n-mode reconstructions propagated to the far field (example8) | 16–17 |

### Dynamic model (§4, p. 18–24)
| Item | Value | Page |
|---|---|---|
| Equation | linear GL ∂_t q + U∂_x q − γ∂_xx q − μ(x) q = f | 18, 21 |
| Parameters | U = 1, γ = (1 − i)/10, μ(x) = A(1 − x/10); A = 0.6, 1, 1.25 (local), 1.6 (marginal global), 1 and 0.6 (resolvent) | 19–21 |
| Justification of μ(x) | max growth rate ∝ 1/θ (momentum thickness), and θ grows linearly in x | 19 |
| Domain/BC | x ∈ [0, 20], Dirichlet q = 0 at both ends; x ∈ [0, 30] for the SPOD (example13) | 20–23 |
| Numerics | Chebyshev collocation, N = 200 (Weideman & Reddy 2000 suite); Clenshaw–Curtis quadrature weights in the SVD | 20–21 |
| Resolvent | R = (−iωI + U∂_x − γ∂_xx − μ)⁻¹, B = C = I, ω = 1 | 21 |
| Stochastic forcing | analytical CSD eq. 62, k_h = 1, L_c = 0.1, 1, 10; P_qq = R P_ff R^H (no time stepping) | 22 |

### Coupled problem (§5, p. 24–28)
- Wave equation forced by q, q from forced GL (eqs. 63–64); R_coupled = R_Helmholtz R_GL (eq. 67). A = 0.6, k_h = 1, ω = 1, L_c = 0.1, M = 0.6; observers at R = 200/k, 0°–180° in 10° steps (example14, p. 25).
- Akin to hybrid CAA (flow solution → Lighthill source → sound) but cast as one input–output operator; a compressible LNS resolvent with an acoustic C operator is the full version (Garnaud et al. 2013 AIAA; Jeun et al. 2016) (p. 25).

### Method dependence on data
- **SPOD** needs time-resolved data (or two-point time-resolved CSDs, as from sensor pairs or the moveable dual-plane PIV of Jaunet et al.) and enough blocks to converge higher modes (p. 7, 29).
- **Resolvent** needs only a mean flow (from RANS, experiment or LES) and an assumed forcing CSD (p. 8).
- **Kinematic models** need a few parameters (k_h, L, L_c, amplitude) that can be fitted to near-field arrays, PIV or far-field spectra (p. 27–28).
- Coherence (eq. 26) measures cycle-to-cycle loss of synchronisation between two points; it is what jitter models must reproduce (p. 7).

## Key equations
Fourier convention: f̂(ω) = ∫ f(t) e^{iωt} dt, time dependence e^{−iωt} (eqs. 5–6, p. 4).
- **Lighthill** (eq. 1, p. 4): $\dfrac{\partial^2\rho}{\partial t^2}-c_0^2\nabla^2\rho=\dfrac{\partial^2 T_{ij}}{\partial x_i\partial x_j}$, $T_{ij}=\rho u_iu_j+\delta_{ij}(p-c_0^2\rho)+\tau_{ij}$ (sign of τ_ij as printed; check).
- **Resolvent of Helmholtz** (eqs. 8–11, p. 4): $\hat p=R_{\rm Helmholtz}[\hat S]$, discretely $R=GW$.
- **Linearised incompressible NS with forcing** (eq. 13, p. 5):
  $$-i\omega\hat u_i+U_j\frac{\partial\hat u_i}{\partial x_j}+\hat u_j\frac{\partial U_i}{\partial x_j}+\frac{\partial\hat p}{\partial x_i}-\frac1{Re}\nabla^2\hat u_i=-\left[\hat u_j*\frac{\partial\hat u_i}{\partial x_j}\right]_{\omega\neq0}$$
  with the convolution over triads (eq. 14).
- **State space and transfer function** (eqs. 17–18, p. 6): $q_t=Aq+Bf$, $y=Cq$, $y(\omega)=C(-i\omega I-A)^{-1}Bf(\omega)$; $\tilde R=CRB$.
- **SVD** (eqs. 20–23, p. 6): $R=USV^H$, $U^HU=V^HV=I$, $U^Hq=SV^Hf$.
- **CSD and coherence** (eqs. 24–26, p. 7): $P_{qq}=E(qq^H)$, $P(y_1,z_1)=\sqrt{P(y_1,y_1)P(z_1,z_1)}\,\gamma\,e^{i\Delta\phi}$, $\gamma^2=|P(y_1,z_1)|^2/[P(y_1,y_1)P(z_1,z_1)]$.
- **SPOD** (eqs. 28–30, p. 7): $P_{qq}Wq_{SPOD}=\lambda q_{SPOD}$; with weights, solve $W^{1/2}P_{qq}W^{1/2}$ and recover $Q=W^{-1/2}\tilde Q$, orthonormal in $Q^HWQ=I$ (footnote 5).
- **Stochastic resolvent** (eqs. 31–33, p. 7–8): $P_{qq}=RP_{ff}R^H=USV^HP_{ff}VSU^H$; white forcing $P_{ff}=I$ gives $P_{qq}=US^2U^H$.
- **Harmonic line source** (eq. 34, p. 10): $S_{xx}(y)=e^{ik_hy}e^{-y^2/L^2}$.
- **Far-field PSD, harmonic** (eq. 37, p. 11): $\langle pp^*\rangle\approx\dfrac{L^2}{16\pi|\mathbf x-y|^2}e^{-\frac12k_h^2L^2(1-M_c\cos\theta)^2}$.
- **Acoustic matching** (eqs. 40–43, p. 12): $p(\mathbf x)=\dfrac{e^{ik|\mathbf x|}}{4\pi|\mathbf x|}\int S(y)e^{-iky\cos\theta}dy$; radiating wavenumbers $|k_y|/k_h\le M_c$, with $M_c=k/k_h$.
- **Jittering line source** (eq. 46, p. 14): $\langle S(y)S^*(z)\rangle=e^{ik_h(y-z)}e^{-y^2/L^2-z^2/L^2}e^{-(y-z)^2/L_c^2}$.
- **Far-field PSD, jittering** (eqs. 47–48, p. 14): $\langle pp^*\rangle\approx\dfrac{L_mL}{16\pi x^2}e^{-\frac12k_h^2L_m^2(1-M_c\cos\theta)^2}$, $L_m^2=\dfrac{L^2L_c^2}{2L^2+L_c^2}$.
- **Acoustically relevant source matrix** (eq. 52, p. 16): $E=V^HP_{ss}V$.
- **Ginzburg–Landau** (eqs. 53–57, p. 18–19): $\partial_tq+U\partial_xq-\gamma\partial_{xx}q-\mu q=0$; dispersion $\omega=kU-i\gamma k^2+i\mu$; group velocity $\partial\omega/\partial k=U-2i\gamma k$; absolute pair $\omega_0=i(\mu-U^2/4\gamma)$, $k_0=-iU/2\gamma$; $\mu(x)=A(1-x/10)$.
- **Global eigenvalues** (eq. 60, p. 20): $\omega_n=i\left\{A-\dfrac{U^2}{4\gamma}+\gamma^{1/3}\left(\dfrac{A}{10}\right)^{2/3}\zeta_n\right\}$, ζ_n Airy-function roots, ζ₁ ≈ −2.338.
- **GL resolvent** (eq. 61, p. 21): $\hat q=(-i\omega+U\partial_x-\gamma\partial_{xx}-\mu)^{-1}\hat f$.
- **Forcing CSD** (eq. 62, p. 22): $\langle f(x_1)f^*(x_2)\rangle=e^{ik_h(x_1-x_2)}e^{-(x_1-x_2)^2/L_c^2}$.
- **Coupled resolvent** (eqs. 63–67, p. 25): $\nabla^2p-\frac1{c_0^2}\partial_t^2p=q$, GL with forcing f; $p=R_{\rm Helmholtz}R_{\rm GL}f=R_{\rm coupled}f$.

> Checks: eqs. 37, 46–48, 54–57 and 60 were read from rendered page images (p. 11, 14, 19, 20). With U = 1 and γ = (1 − i)/10, U²/4γ = 1.25(1 + i), so ω₀,i = μ(0) − 1.25 (absolute for A > 1.25 ✓), and eq. 60 gives ω₁,i ≈ A − 1.25 + 0.5035(A/10)^{2/3}ζ₁ ≈ 0 at A = 1.6 ✓. Eqs. 1, 13, 63 come from garbled extracted text: check signs (τ_ij term, the wave-equation sign convention in eq. 63) against the PDF before use.

## Figures worth remembering
- **Fig. 1–2 (p. 3):** Brès et al. M 0.9 LES, turbulence (colour) vs sound (grey), and m = 0 pressure snapshot vs leading SPOD mode at St 0.3.
- **Fig. 3 (p. 8):** Tissot et al. schematic of the jet resolvent loop (nonlinear term recycles responses as forcing).
- **Fig. 6 (p. 11):** x–t diagram of axisymmetric near-field pressure (Breakey et al. 2017) showing jittering wavepackets.
- **Fig. 8 (p. 12):** superdirectivity: model vs measured m = 0 SPL at St 0.2 against (1 − M_c cos θ)².
- **Fig. 9 (p. 13):** directivity and wavenumber spectra for M 0.6/2, k_hL 5/10, with acoustic-matching limits.
- **Fig. 10 (p. 13):** LES m = 0 wavepackets at St 0.2, M 0.9 vs M 1.5 (Mach-wave wavelength match).
- **Fig. 11–13 (p. 14–16):** jittering CSD for three L_c; directivities; double wavenumber spectra with radiation squares.
- **Fig. 14–20 (p. 17–18):** SPOD eigenvalues/energy, mode shapes and phases, comparison with Jaunet et al. SPOD, coherence of 1/2/3-mode reconstructions (model and Breakey data), sound from n-mode reconstructions.
- **Fig. 21–22 (p. 20–21):** GL local k⁺/k⁻ branches; global spectrum and marginal eigenfunction.
- **Fig. 23–24 (p. 21, 23):** GL resolvent gains and first four forcing/response modes.
- **Fig. 25–26 (p. 23–24):** forcing and response CSDs; SPOD modes vs resolvent modes for L_c 0.1 and 10.
- **Fig. 27 (p. 24):** M 0.4 jet, leading measured SPOD mode vs optimal resolvent mode at St 0.4.
- **Fig. 28–30 (p. 25–27):** coupled problem: sound from n SPOD modes vs n resolvent modes; coupled resolvent modes.
- **Fig. 31–32 (p. 27–28):** Jeun et al. M 0.9 acoustic-output resolvent modes; gain spectra vs Mach number for GL model and jets.

## Notation
- S: Lighthill source; S_xx line source; G Green's function; k = ω/a acoustic wavenumber; k_h hydrodynamic wavenumber; L envelope length; L_c coherence length; L_m effective length; M jet Mach number; M_c ≈ 0.6M convective Mach number; θ polar angle from the downstream axis; Θ = (1 − M_c cos θ)².
- q state, f forcing, A linear operator, B/C input/output operators, R resolvent, U/S/V SVD factors (u_i responses, v_i forcings, σ_i gains), W quadrature weights.
- P_qq, P_ff, P_ss: CSDs; γ² coherence (also γ = GL diffusion coefficient, context-dependent); λ SPOD eigenvalue.
- GL: U advection speed, γ complex diffusion, μ(x) growth parameter, A its amplitude; k⁺/k⁻ downstream/upstream spatial branches; ω₀, k₀ absolute frequency/wavenumber; ζ_n Airy roots.

## Relevance to this project
The best single entry point for the "why" behind SPOD-vs-resolvent comparisons and wavepacket noise models in the reference library. It is subsonic- and mixing-noise-focused, but its framework underlies the group's resonance work and the rocket-noise source models.

- **SPOD and its data needs:** SPOD (Towne/Schmidt sense) needs time-resolved data, and its higher modes, which carry jitter and much of the radiated sound, converge slowly (p. 29). For the lab's time-resolved schlieren and acoustics, check convergence of modes beyond the first before interpreting them (cf. the half-data test in [lesshafft-2019](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md) and [schmidt-2020-guide-spod](schmidt-2020-guide-spod.md)). Non-time-resolved PIV cannot give the CSD but can give the mean flow for a resolvent model; POD pairs remain the route to phase there.
- **Jitter, intermittency and the SPOD → reconstruction → HPOD pipeline:** jitter here is a statistical coherence decay (L_c), represented by superposing SPOD modes 1–3 (Figs. 18, 20). That is exactly what the pipeline's reconstruction step keeps: rebuilding from several SPOD modes at a tone, then Hilbert POD, should show jitter as instantaneous amplitude/phase modulation, where a single mode has unit coherence and no jitter. The paper gives no time-domain view; HPOD would supply it (*my inference*). Related views: [sieber-2016](sieber-2016-spectral-proper-orthogonal-decomposition.md), [nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md), [raiola-2025](raiola-2025-hilbert-pod.md).
- **Resonance (screech, impingement):** the GL model is deliberately an amplifier; globally unstable settings (A > 1.6) are excluded (p. 21). Screech and impinging tones are the opposite case, closed by upstream guided jet modes; the GL k⁻ branch (Fig. 21) is the analogue of an upstream wave but no feedback is closed here. For the oscillator view see [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md), [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md), [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md), [jordan-2018](jordan-2018-jet-flap-interaction-tones.md). The coherent-forcing result (only the leading SPOD mode matches the optimal when σ₁/σ₂ is large, p. 22) supports comparing the leading SPOD mode at a tone directly with an optimal resolvent or Floquet response.
- **Modelling side:** the GL toy model is the same one used in [towne-2018](towne-2018-spod-relationship-dmd-resolvent.md), but with a linearly decaying μ(x) on a half-line (jet-like, convective) instead of Bagheri's parabolic μ(x) (wake-like pocket). Both agree that coloured forcing breaks SPOD = resolvent for suboptimals. The single k⁺ branch cannot show the Orr mechanism, which [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md) and [lesshafft-2019](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md) find dominates jet suboptimals; nor lift-up streaks ([nogueira-2019](nogueira-2019-large-scale-streaky-structures-jets.md)). The preferred mode near St ≈ 0.4 agrees with [garnaud-2013](garnaud-2013-preferred-mode-incompressible-jets.md). Resolvent origins: [mckeon-2010](mckeon-2010-critical-layer-framework-turbulent-pipe-flow.md); white-forcing limits: [morra-2021](morra-2021-colour-of-forcing-resolvent-channel.md); LES SPOD vs resolvent: [schmidt-2018](schmidt-2018-spectral-analysis-jet-turbulence.md); trapped modes as weakly stable global modes: [schmidt-2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md); PSE wavepackets: [gudmundsson-2011](gudmundsson-2011-instability-wave-models-near-field-jets.md), [cavalieri-2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md) (radial compactness and m = 0 dominance used in §3.1); overview: [taira-2017](taira-2017-modal-analysis-fluid-flows-overview.md).
- **Shock-containing jets / BBSAN:** [wong-2021](wong-2021-wavepacket-modelling-bbsan.md) applies the same two-point wavepacket source idea to BBSAN and finds coherence decay (jitter) adds up to 15 dB/St between peaks. Consistent in spirit with this paper's subsonic result; note that BBSAN components k − k_s can be subsonic even in a supersonic jet, so jitter matters there although this paper says it matters little for supersonic mixing noise.
- **Rocket noise:** the Mach-wave result θ_pk = cos⁻¹(1/M_c) (p. 11) is the same as the rocket peak-angle formula in [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) and [mathews-2021](mathews-2021-falcon-9-far-field-noise.md) (with the Oertel M_c instead of 0.6M). The supersonic corollary (one coherent wavepacket per frequency, little jitter, no volume source, p. 16, 26) supports single-mode wavepacket ROMs for heated supersonic plumes, cf. [tam-1995](tam-1995-supersonic-jet-noise.md) and the convective Mach number of [papamoschou-1988](papamoschou-1988-compressible-turbulent-shear-layer.md). The approximation M_c ≈ 0.6M is for cold lab jets; rocket plumes need a heated-jet M_c.
- **Follow-up candidates for `/add-paper`:** Cavalieri & Agarwal 2014 (JFM 748, coherence decay); Cavalieri et al. 2011 (JSV 330, jittering wavepackets); Jaunet, Jordan & Cavalieri 2017 (PRF 2); Breakey et al. 2017 (PRF 2); Jeun, Nichols & Jovanović 2016 (PoF 28); Jordan & Colonius 2013 (Annu. Rev. Fluid Mech. 45); Sinha et al. 2014 (JFM 742); Tissot et al. 2017 (JFM 811; PRF 2).
