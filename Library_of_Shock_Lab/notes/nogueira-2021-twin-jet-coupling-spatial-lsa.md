---
key: "nogueira-2021-twin-jet-coupling-spatial-lsa"
title: "Investigation of supersonic twin-jet coupling using spatial linear stability analysis"
authors: ["Nogueira, P. A. S.", "Edgington-Mitchell, D. M."]
year: 2021
type: "article"
venue: "JFM 918, A38"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "918", "pages": "A38"}
doi: "10.1017/jfm.2021.366"
arxiv: ""
pdf: "twin-jet-coupling/Nogueira-EdgingtonMitchell_2021_Investigation-Of-Supersonic-Twin-Jet-Coupling-Using-Spatial-Linear-Stability.pdf"
version: "accepted-manuscript"
unverified: ["volume, article number and online date from the Cambridge Core listing, not printed in the PDF", "DOI from Library_of_Shock_Lab/group_papers.md (ORCID/OpenAlex)"]
group: true
facility: "Shock Lab group facility"
data: ["PIV", "microphones-far"]
methods: ["POD", "POD-pair", "symmetry-decomposition", "wavenumber-filtering", "LSA-local", "LSA-Floquet", "PSD"]
flow: ["twin-jet", "round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "coupling", "guided-jet-mode", "KH-wavepackets", "flapping"]
params: {"NPR": "5.0", "M_j": "≈1.71 (isentropic estimate)", "s/D": "3", "D": "10 mm", "St": "0.19"}
topics: ["twin-jet-coupling", "screech", "linear-models"]
related: ["stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "stavropoulos-2024-upstream-waves-merging-twin-jets", "rodriguez-2023-preferred-flapping-round-twin-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "nogueira-2021-absolute-instability-shock-containing-jets"]
cites: ["bell-2021-intermittent-modal-coupling-screeching-twin-jets", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "mancinelli-2019-screech-prediction-upstream-modes", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "raman-1998-supersonic-jet-screech-review", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "taira-2017-modal-analysis-fluid-flows-overview", "taira-2020-modal-analysis-applications-outlook", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1995-supersonic-jet-noise", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
summary: "Twin round jets, NPR 5, s/D 3: symmetry-imposed POD + k_x split give KH and k_kh − k_s upstream waves; azimuthal-Floquet LSA: guided-mode bands, not KH, select 1SS coupling"
---
# Investigation of supersonic twin-jet coupling using spatial linear stability analysis

- **Authors:** P. A. S. Nogueira, D. M. Edgington-Mitchell (Monash, LTRAC)
- **Source:** J. Fluid Mech. 918, A38 (2021; published online 14 May 2021, per Cambridge Core listing). The PDF is the JFM-style author manuscript with no date header. Its revisions are marked in red (p. 5, 9, 16), and its PDF creation date is 12 Mar 2021. The newest reference it cites is from 2021 (Nogueira & Cavalieri 2021, JFM 907).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/twin-jet-coupling/Nogueira-EdgingtonMitchell_2021_Investigation-Of-Supersonic-Twin-Jet-Coupling-Using-Spatial-Linear-Stability.pdf` (25 pp.)
- **Tags:** twin jets, jet coupling, screech, underexpanded jet, NPR 5, guided jet mode, Kelvin-Helmholtz wavepacket, spatial linear stability, Floquet ansatz, symmetry-imposed POD, POD phase portrait, shear-thickness mode, wavenumber spectrum, PIV

## Summary
The paper revisits PIV and acoustic data from Bell et al. (2020) for two round, underexpanded twin jets at NPR 5.0 (D = 10 mm, centre spacing 3D), screeching at St = 0.19. A symmetry-imposed POD splits the field into parts that are symmetric or antisymmetric about the internozzle plane. It finds that one symmetric (1SS) mode pair dominates, and that a third, unpaired mode (shear-thickness mode, STM) modulates the amplitude of the screech cycle. A spatial Fourier transform of the complex POD mode separates the downstream KH wave (k_x D ≈ 1.8) from an upstream wave whose wavenumber matches Tam & Tanna's k_kh − k_s. A locally parallel, inviscid spatial LSA uses a Floquet ansatz in azimuth on the PIV mean flow, which is assumed axisymmetric for each jet. It shows that the four m = 1 KH coupling symmetries have almost the same growth rates and phase speeds, so KH properties alone cannot explain why one coupling mode "locks". The upstream guided jet modes differ sharply between symmetries: only 1SS and 1AS have a usable frequency band of existence near the screech frequency. The LSA 1SS guided-mode eigenfunction matches the POD upstream wave almost exactly. The authors therefore conclude that a guided jet mode closes the screech loop in twin jets even at this high NPR, and that it sets the coupling mode.

## Key findings
- **One symmetric POD pair dominates** (p. 9–12, Fig. 5–6):
  - POD-SS modes 1 and 2 hold about 11.4% of the SS energy (about 6% of the total). They are a travelling pair with m = 1 in each jet and strong support outside the jets, especially between them.
  - SS energy is 10.4% higher than SA energy (Fig. 5 caption, p. 11), so SS dynamics dominate.
  - The leading SA mode holds about 5% of the SA energy (2.4% of the total) and has no partner. It looks like an STM (p. 10–11).
- **A third mode modulates the screech cycle** (p. 11–13, Fig. 7):
  - POD-SS mode 3 has no partner. It varies slowly in x, peaks downstream and sits at the shear layer, with little amplitude on the centreline. This matches the shear-layer-unsteadiness (STM) mode of Weightman et al. (2018).
  - Its energy is "around half" that of the leading pair (p. 9). Fig. 5(a) suggests about 3.2% against 6.0% and 5.3% for modes 1 and 2.
  - The (a1, a2, a3) portrait is half an ellipsoidal shell along a3. The cycle radius r12 = √(a1² + a2²) grows with a3, so low a3 gives a small screech cycle (Fig. 7b).
  - Conditioning on a3 (|a3 − 0.02| < 0.01) puts (a1, a2) on a single circle (Fig. 7c), confirming that modes 1 and 2 are a pair.
  - The authors link this to streaks stabilising or destabilising KH (Marant & Cossu 2018; Lajús et al. 2019; Nogueira & Cavalieri 2021).
- **Wavenumber spectrum of the complex POD mode** (p. 12–14, Fig. 8):
  - The KH peak is at k_x D ≈ 1.8 for both u and v.
  - The negative-k_x peak (upstream wave) sits on the Tam & Tanna (1982) k_kh − k_s line.
  - Coupling raises u amplitude between the jets and cancels v there, as the SS symmetry requires.
- **KH modes cannot explain the mode selection** (p. 15–17, Fig. 9–10):
  - At every station there are about 3 unstable modes per Floquet coefficient μ: two m = ±1 modes (dominant) and one m = 0 mode with no POD counterpart. Higher-m modes are stable or marginal (p. 14).
  - The four m = 1 symmetries (1SS, 1AA, 1SA, 1AS) have growth rates peaking near St ≈ 0.14. 1SA is slightly the most unstable, and Fig. 10(a) shows 1SS as the least unstable.
  - All four fall on one α_kh–St line, so their phase speeds are the same. The trends hold over 3 ≤ x/D ≤ 5 (Fig. 10c,d).
  - The LSA KH wavenumber is within 3.5% of the POD peak at St = 0.19 (p. 16).
- **Upstream guided jet modes decide** (p. 16–19, Fig. 11–12):
  - There are four upstream modes with the same symmetries. All are first radial order, with a single node at each jet centre.
  - Each is neutral between its branch point (on the sound-speed line) and a saddle point with a soft-duct mode. Beyond the saddle it becomes a stable wave of similar shape.
  - The 1AA and 1SA neutral bands are tiny at every station, with x/D = 5 the widest. The 1SS and 1AS bands are much wider and lie close to St_s = 0.19 (p. 18).
  - The bands shift with the shock cells. x/D = 3 and 5 are near velocity minima, which raises the branch and saddle St; x/D = 4 is near a maximum, which lowers them (p. 17–18).
- **Interpretation** (p. 18–19, 21):
  - 1SS and 1AS can both close the loop. This could give 1SS flapping, 1AS flapping or a 1SS/1AS helical motion.
  - The PIV plane cannot see 1AS, because it has zero amplitude in the xy-plane. The data are therefore consistent with 1SS flapping or a 1SS/1AS helix.
  - The authors think 1AS is also likely present, because its phase speed and band match those of 1SS (p. 21). Cross-plane (r–θ) measurements are needed to settle this.
- **Comparison of LSA and POD** at x/D = 5, St = 0.2075, the best match (p. 19–21, Table 2, Fig. 13):
  - The KH wavenumber is 1.80 (POD) against 1.90 (LSA). The text calls this within 5%, although 0.10/1.80 = 5.6%.
  - The upstream wavenumber is −1.93 in both (under 1% error).
  - The KH radial shapes from POD are wider than from LSA. The authors put this down to viscous or turbulent diffusion and to the LSA leaving out mean-flow spreading, and they suggest an eddy viscosity as in Pickering et al. (2020, resolvent).
  - LSA still reproduces several features of the KH shape. It has the inner u oscillation from the Mach-disk wake and the π phase jump between the interjet and outer regions. It also captures the asymmetry about the jet axis (y/D = 1.5), which a single-jet LSA could not.
  - The upstream wave shows "remarkable agreement": every peak, node and decay rate matches. The only exception is a small v mismatch between the jets, attributed to the missing mean radial velocity or to the axisymmetric assumption.
  - So the guided mode seems less sensitive than KH to spreading and viscosity.
- **Link to Bell et al. (2020)** (p. 20–21): at NPR 5 the tone is steady and one symmetric process dominates. The LSA explains why 1SS is active, because the upstream wave supports that symmetry.

## Setup / method
- **Facility:** a Shock Lab group facility. The data are from Bell et al. (2020), supplied by G. Bell (Acknowledgements, p. 22); the paper doesn't name the lab space. Two converging round nozzles (p. 6):

  | Quantity | Value |
  |---|---|
  | Nozzle | Converging, D = 10 mm (each) |
  | Centre spacing | D_c = 3D (D_c/2 = 1.5D from the system centre) |
  | NPR | 5.0 (Mach disk in the first shock cell, p. 8) |
  | Screech | St = ω_s D/(2π U_j) = 0.19 (p. 6) |
  | M_j | ≈ 1.71 *(own isentropic estimate; not given)* |
  | U_j/a∞ | ≈ 1.36 for a cold jet, T0 = T∞ *(own estimate; matches Fig. 3d peaks U/a∞ ≈ 1.4 and the Fig. 12 sound-speed line)* |

- **Acoustics** (p. 6, Fig. 2; time-resolved):
  - One G.R.A.S. 46BE 1/4" microphone at 23D from the origin of the twin-jet system, in the internozzle plane, sampled at 250 kHz.
  - PSD by Welch's method with 2048-sample segments, 75% overlap and a Hann window. This gives Δf ≈ 122 Hz (ΔSt ≈ 0.003 if U_j ≈ 466 m/s; own estimate).
  - Fig. 2 also shows a second peak near St ≈ 0.38, about the screech harmonic, which the text doesn't discuss.
- **PIV** (p. 6, 8):
  - About 9000 two-component (u, v) fields in the xy-plane, which contains both jet axes. The fields shown cover 0 ≤ x/D ≲ 10–12 and |y/D| ≤ 4.
  - The acquisition rate isn't stated here (see Bell et al. 2020). The analysis treats the snapshots as uncorrelated (POD, phase portraits), with no spectra computed from the PIV.
  - Mean-flow quality checks: V is zero on the system centreline, which shows alignment and convergence. Small asymmetries come from misalignment and from the bottom jet's Mach disk diffracting the laser sheet (p. 8).
- **Symmetry-imposed POD** (p. 6–8):
  - Each snapshot is split into even and odd parts about y = 0 (eq. 3.1–3.2), following Sano et al. (2019).
  - SS data: q_SS = [u_e, v_o]ᵀ. SA data: q_SA = [u_o, v_e]ᵀ. The two sets are orthogonal by construction, and each uses half the domain, which cuts cost and improves convergence.
  - Snapshot POD (Sirovich 1987) is run separately on each set. No weights or scaling are used, since no reconstruction is attempted (p. 8).
  - Modes antisymmetric about the xy-plane (1AA, 1AS) have zero amplitude in the PIV plane and can't be seen (p. 7).
- **Wave extraction** (p. 12–13):
  - The complex screech mode is ζ = (φ_SS1 + iφ_SS2)e^{−iω_s t} (eq. 4.1), following Jaunet et al. (2016) and Edgington-Mitchell et al. (2018).
  - It is Fourier-transformed in x with n_fft = 4096, zero-padding beyond N_x = 1036 points. The padding refines the k_x resolution without changing the spectrum.
  - Radial shapes of each wave are taken at the peak wavenumbers (p. 19).
- **Stability model** (p. 3–6):
  - Inviscid, compressible linearised equations, locally parallel, with only the streamwise mean velocity U. The mean P and ρ̄ and their radial and azimuthal derivatives are kept, to represent the shock cells.
  - These reduce to one pressure equation (eq. 2.3). Floquet theory with a 2π/N mean-flow periodicity (N = 2) lets the problem be solved on half the cross-plane (0 ≤ θ < π).
  - The result is a cubic eigenvalue problem in α, linearised in companion form (eq. 2.12). The formulation follows Gudmundsson (2009), Lajús et al. (2019) and Rodríguez et al. (2018).
- **Base flow** (p. 5, 8–9):
  - The single-jet profile Û(r_j) comes from PIV over 1.5 ≤ y/D ≤ 4, i.e. the outer side of the upper jet. It is rotated about each jet axis on the assumption of axisymmetry, with an even symmetry imposed, then interpolated onto the system-centred (r, θ) grid.
  - Mean P and ρ̄ come from a Crocco–Busemann approximation based on isentropic relations, plus spatial integration (Van Oudheusden et al. 2007).
  - Interaction between the jets is ignored, so the model is valid only before the jets merge. U at y = 0 stays near zero up to x/D ≈ 5 and then rises (Fig. 3c).
  - Stations near the Mach disk are avoided, because its inner shear layer can add unstable modes (Edgington-Mitchell et al. 2014a). The LSA therefore covers 3 ≤ x/D ≤ 5 and St = 0.12–0.23.
- **Numerics** (p. 5–6, 14–15):
  - Fourier (azimuth) and Chebyshev (radius) collocation: N_r = 180 with the Bayliss & Turkel (1992) mapping to cluster points at the shear layers, and N_θ = 180 equispaced. Differentiation matrices from Weideman & Reddy (2000).
  - Domain 0 < r ≤ 2.5D_c (= 7.5D). Enlarging it didn't change the eigenvalues.
  - Centreline condition (eq. 2.13) follows Gudmundsson (2009). Using ∂p/∂r = 0 instead (Lajús 2019) changed nothing perceptible. The far field uses Dirichlet p = 0, and the modes decay fast enough that no reflections were seen.
  - Sparse matrices with MATLAB `eigs`. One shift is placed near typical KH phase speeds and a separate run uses a shift for the upstream waves, because the full spectrum can only be obtained in parts. Symmetries are sorted in post-processing.
  - Velocity eigenfunctions are rebuilt from pressure for comparison with the POD (p. 19).

## Key equations
- Normal-mode ansatz: $\tilde{\mathbf q}(x,r,\theta,t)=\hat{\mathbf q}(r,\theta)\,e^{-i\omega t+i\alpha x}$ with $\tilde{\mathbf q}=[\tilde\rho\ \tilde u\ \tilde v\ \tilde w\ \tilde p]^T$ (eq. 2.2, p. 4). Complex α; −α_i is the spatial growth rate.
- Pressure equation (eq. 2.3, p. 4):
  $\dfrac{1}{r}\dfrac{\partial}{\partial r}\!\left(r\dfrac{\partial \hat p}{\partial r}\right)+\dfrac{1}{r^2}\dfrac{\partial^2\hat p}{\partial\theta^2}-\hat f\dfrac{\partial\hat p}{\partial r}-\hat g\dfrac{1}{r^2}\dfrac{\partial\hat p}{\partial\theta}-\hat h\hat p=0$, with
  $\hat f=\dfrac{2\alpha}{\alpha U-\omega}\dfrac{\partial U}{\partial r}+\dfrac{1}{\bar\rho}\dfrac{\partial\bar\rho}{\partial r}-\dfrac{1}{\gamma P}\dfrac{\partial P}{\partial r}$ (2.4), $\hat g$ the same with ∂/∂θ (2.5), and $\hat h=\alpha^2-\dfrac{\bar\rho(\alpha U-\omega)^2}{\gamma P}$ (2.6).
- Floquet ansatz: $\hat p(r,\theta)=p(r,\theta)\,e^{i\mu\theta}$, where p is 2π/N-periodic (eq. 2.7, p. 4). Substituting gives eq. 2.8 with $f=\hat f$ (2.9), $g=\hat g-2i\mu$ (2.10) and
  $h=\alpha^2-\dfrac{\bar\rho(\alpha U-\omega)^2}{\gamma P}+\dfrac{\mu^2}{r^2}+i\left(\dfrac{2\alpha}{\alpha U-\omega}\dfrac{\partial U}{\partial\theta}+\dfrac{1}{\bar\rho}\dfrac{\partial\bar\rho}{\partial\theta}-\dfrac{1}{\gamma P}\dfrac{\partial P}{\partial\theta}\right)\dfrac{\mu}{r^2}$ (2.11).
- Companion-form eigenproblem (eq. 2.12, p. 5): $\begin{bmatrix}0&I&0\\0&0&I\\-F_0&-F_1&-F_2\end{bmatrix}\begin{bmatrix}p\\\alpha p\\\alpha^2p\end{bmatrix}=\alpha\begin{bmatrix}I&0&0\\0&I&0\\0&0&F_3\end{bmatrix}\begin{bmatrix}p\\\alpha p\\\alpha^2p\end{bmatrix}$.
- Centreline condition: $\left[r^2\partial_r^2p+r\,\partial_r p-\mu^2p\right]_{r\to0}=0$ (eq. 2.13, p. 5).
- Even/odd split: $u_{e,o}(x,y,t)=\tfrac12[u(x,y,t)\pm u(x,-y,t)]$ (eq. 3.1–3.2, p. 7).
- Snapshot POD: $R_{SS}=Q_{SS}^TQ_{SS}$, $R_{SS}\xi_{SSj}=\sigma_{SSj}\xi_{SSj}$, $a_{SSj}(t)=\xi_{SSj}$, $\phi_{SSj}=Q_{SS}\xi_{SSj}$ (eq. 3.3–3.4, p. 8).
- Complex screech mode: $\zeta(x,y,t)=(\phi_{SS1}+i\phi_{SS2})e^{-i\omega_s t}$ (eq. 4.1, p. 12). Cycle radius: $r_{12}=\sqrt{a_1^2+a_2^2}$ (p. 11).

> Equations were re-typed from rendered pages 4–5, 7–8 and 12, not from the garbled text extraction. Check the sign conventions in eq. 2.10–2.11 and the F₃ block in eq. 2.12 against the PDF before reusing them.

## Data tables
**Table 1 (p. 7): twin-jet mode symmetries** (xy-plane holds both jet axes; xz-plane is the internozzle plane y = 0)

| Mode | xy-plane | xz-plane | μ | Visible in PIV plane? |
|---|---|---|---|---|
| 1SS | Symmetric | Symmetric | 0 | Yes (q = [u_e, v_o]) |
| 1AA | Antisymmetric | Antisymmetric | 0 | No |
| 1SA | Symmetric | Antisymmetric | 1 | Yes (q = [u_o, v_e]) |
| 1AS | Antisymmetric | Symmetric | 1 | No |

**Table 2 (p. 20): peak wavenumbers, POD vs LSA** (LSA at x/D = 5, St = 0.2075)

| Wave | POD k_x D | LSA α D |
|---|---|---|
| Kelvin–Helmholtz | 1.80 | 1.90 |
| Upstream (guided jet) | −1.93 | −1.93 |

**POD energies (p. 9–11, Fig. 5)**

| Quantity | Value |
|---|---|
| SS modes 1+2 | ≈11.4% of SS energy (≈6% of total) |
| SS mode 3 | "around half" of the pair (Fig. 5a reads ≈3.2% of SS) |
| SA mode 1 | ≈5% of SA energy (≈2.4% of total) |
| SS vs SA total energy | SS is 10.4% higher |

> Check: SS/SA = 1.104 gives SS ≈ 52.5% of the total, so 11.4% × 0.525 ≈ 6.0% and 5% × 0.475 ≈ 2.4%, which agree with the text. The mode-3 value is read off the figure.

**Derived quantities** (my own calculations, assuming α and St are normalised with D and U_j, as the Fig. 12 sound-speed line implies): KH phase speed u_p ≈ 2πSt/α ≈ 0.66–0.69 U_j. Upstream wave |u_p| ≈ 0.62–0.68 U_j ≈ 0.84–0.92 a∞, just below the ambient sound speed, as expected for the guided mode. The implied shock wavenumber is k_s D ≈ 1.80 + 1.93 ≈ 3.7, i.e. a spacing of about 1.7D. None of these numbers is stated in the paper.

## Figures worth remembering
- **Fig. 1 (p. 6):** coordinate systems: (r, θ) centred on the system and (r_j, θ_j) on each jet, with inner and outer shear layers marked.
- **Fig. 2 (p. 7):** acoustic PSD with the screech peak at St ≈ 0.19.
- **Fig. 3 (p. 9):** mean U and V, U and V on the system centreline (merging starts after x/D ≈ 5), and U profiles at x/D = 3, 4, 5 with the Mach-disk-wake dip on the jet axis.
- **Fig. 5 (p. 11):** POD spectra (SS, SA) with cumulative energy.
- **Fig. 6 (p. 12):** POD-SS modes 1–3 (u, v). Modes 1 and 2 are oscillatory with interjet support; mode 3 is the slowly varying STM.
- **Fig. 7 (p. 13):** a1–a2–a3 phase portrait, r12 against a3, and the conditional a1–a2 circle. This is the key evidence of amplitude modulation.
- **Fig. 8 (p. 14):** k_x–y wavenumber spectra of the complex mode. The KH peak is at +1.8 and the upstream peak lies on the Tam & Tanna line.
- **Fig. 9 (p. 16):** cross-plane pressure of the four KH modes (St = 0.19, x/D = 4).
- **Fig. 10 (p. 17):** KH −α_i and α_kh against St (x/D = 4) and against x/D (St = 0.19). The symmetries are nearly indistinguishable.
- **Fig. 11 (p. 18):** cross-plane pressure of the four upstream modes (St = 0.19/0.20, x/D = 4).
- **Fig. 12 (p. 19):** neutral and stable upstream-mode branches in α–St for each symmetry at x/D = 3, 4, 5, with the sound-speed line. This is the band-of-existence argument.
- **Fig. 13 (p. 21):** radial |u| and |v| of the KH and upstream waves, POD against LSA 1SS.

## Notation
- mXY: m is the dominant azimuthal wavenumber in each jet. X and Y give the symmetry about the xy-plane (both jet axes) and the xz-plane (internozzle plane). S = symmetric, A = antisymmetric. μ is the Floquet coefficient (Table 1).
- N: number of jets in the azimuthal period (N = 2). D_c: distance between jet centres. (r, θ): system-centred coordinates. (r_j, θ_j): single-jet coordinates.
- α = α_kh + iα_i (KH) or α_ups (upstream); −α_i is the growth rate. k_x: wavenumber from the spatial FFT of the POD mode.
- STM: shear-thickness mode (shear-layer unsteadiness). St = ωD/(2πU_j). Cross-plane plots use −z/D for an observer looking upstream (p. 9).

## Relevance to this project
This project analyses experimental resonance and feedback data (schlieren, acoustics, PIV) from the Shock Lab; see CLAUDE.md. This paper is Shock Lab group work on twin-jet screech coupling.
- **Methods for non-time-resolved PIV:**
  - *Symmetry-imposed POD* (even/odd split about a symmetry plane) is a cheap first step for any configuration with mirror symmetry. Examples are twin nozzles, rectangular or other non-axisymmetric nozzles about their minor and major planes, and impinging jets. Each set needs only half the domain and converges better (p. 7).
  - With in-plane data, only some symmetries can be seen, so state which ones the measurement plane cannot detect (Table 1).
  - *Complex POD pair → spatial FFT* separates the downstream KH wave from the upstream guided-mode wave. This is the same route as [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), but here both u and v go into the POD (that paper used transverse velocity only) and n_fft = 4096 with zero-padding (p. 12–13).
  - That note's three waves include a downstream duct-like wave at k_kh + k_s. This paper reports only the KH and upstream peaks and doesn't discuss a k_kh + k_s peak (Fig. 8 spans |k_x D| ≤ 8).
  - With time-resolved schlieren, SPOD at f_s would give the same complex mode directly.
- **Amplitude modulation without time resolution:** the a1–a2–a3 phase portrait and r12(a3) give an instantaneous screech amplitude per snapshot and show that it correlates with an STM/streak mode (p. 11–13). This is the PIV analogue of the Hilbert amplitude in the SPOD → reconstruction → HPOD pipeline.
  - With time-resolved schlieren, one could rebuild the screech band (and the low-frequency STM band) from SPOD and then run HPOD. That would test whether STM activity drives changes in screech amplitude over time.
  - It would also link to the "intermittent modal coupling" of Bell et al. (2020). This paper only notes that the NPR 5 tone is steady (p. 20–21).
  - The STM interpretation comes from Weightman et al. (2018), reprinted in the [Weightman 2019 thesis](weightman-2019-sound-production-impinging-supersonic-jets.md).
- **Modelling recipe (spatial LSA on PIV mean flow):**
  - Take a one-sided single-jet profile from PIV, rotate it on the assumption of axisymmetry, and place copies at each nozzle. Get ρ̄ and P from Crocco–Busemann/isentropic relations. Solve an inviscid, locally parallel pressure equation with a Floquet ansatz in a Fourier–Chebyshev discretisation (p. 4–6).
  - Limits: no mean-flow spreading, no radial mean velocity, no viscosity or eddy viscosity, valid only before the jets merge and away from the Mach disk. The KH shapes come out too narrow; the upstream-wave shapes come out nearly exact (p. 19–20).
  - This contrasts with the global LSA in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), which used Re = 10³ as an eddy-viscosity surrogate. The eddy-viscosity reference here is Pickering et al. (2020, *optimal eddy viscosity for resolvent models*), a different paper from [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md).
  - The Floquet approach applies to any nozzle with discrete azimuthal symmetry (N jets, serrated or corrugated nozzles), and the conclusion says so (p. 22).
- **Mode-selection criterion for resonance:** when competing coupling or azimuthal symmetries have near-identical KH gain and phase speed, compare instead the frequency band in which each symmetry's guided jet mode is propagative (between branch and saddle points) against the observed tone (Fig. 12).
  - This extends guided-mode closure ([edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md)) to twin jets at high NPR (M_j ≈ 1.7), where the authors note that vortex-sheet predictions had been doubted (Gojon et al. 2018; p. 3).
  - The x-dependence of the bands, driven by the shock cells (p. 17–18), connects to [nogueira-2021-wavepacket-modulation-shock-containing-jets.md](nogueira-2021-wavepacket-modulation-shock-containing-jets.md), [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md) and [nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md).
- **Streak/STM modulation of KH:** see [nogueira-2019-large-scale-streaky-structures-jets.md](nogueira-2019-large-scale-streaky-structures-jets.md) for the streak side of the argument in Fig. 7.
- **Twin rectangular jets:** compare the mXY/μ classification and the guided-mode selection argument with the coupling modes found experimentally and in LES for twin rectangular jets ([esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md), [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md), [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md)). Check those notes to see whether their symmetric and antisymmetric coupling labels map onto 1SS/1AA/1SA/1AS here.
- **Experimental design:** telling 1SS from 1AS needs cross-plane (r–θ) PIV, or out-of-plane information such as azimuthal microphone phase, followed by symmetry-imposed POD (p. 21). A single microphone in the internozzle plane (p. 6) can't separate them.
- **Related works cited:** Bell et al. 2017, 2018, 2020 (twin-jet PIV, intermittent modal coupling), Knast et al. 2018 (twin-jet coupling modes vs spacing and Mach number), Rodríguez et al. 2018 (twin-jet LSA/PSE), Morris 1990 (twin-jet vortex-sheet model), Lajús et al. 2019 (Floquet LSA of corrugated jets), Weightman et al. 2018 (STM in POD) and Gojon et al. 2018 (oscillation modes and guided-mode bands). All are candidates for `/add-paper`.
