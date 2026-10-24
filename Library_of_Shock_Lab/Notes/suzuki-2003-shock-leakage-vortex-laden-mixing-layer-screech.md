---
key: "suzuki-2003-shock-leakage-vortex-laden-mixing-layer-screech"
title: "Shock leakage through an unsteady vortex-laden mixing layer: application to jet screech"
authors: ["Suzuki, Takao", "Lele, Sanjiva K."]
year: 2003
type: "article"
venue: "JFM 490, 139–167"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "490", "pages": "139--167"}
doi: "10.1017/S0022112003005214"
arxiv: ""
pdf: "screech/Suzuki-Lele_2003_Shock-Leakage-Through-An-Unsteady-Vortex-Laden-Mixing-Layer-Application-To-Jet-Screech.pdf"
version: "published"
unverified: []
group: false
facility: "Stanford University 2-D compressible DNS (sixth-order compact scheme)"
data: ["DNS"]
methods: ["ray-tracing", "LSA-local"]
flow: ["shear-layer", "supersonic", "underexpanded", "heated"]
phenomena: ["shock-leakage", "screech", "shock-cells", "KH-wavepackets", "directivity", "source-location", "BBSAN"]
params: {"M_j": "1.2 (high-speed side M₁ of a 2-D mixing layer against still air)", "T_j/T_∞": "0.75, 1.0, 1.5 (T₁/T₂, cases A, B, C)", "Re": "Re₁ = ρ₁u₁δ_V/μ₁ = 3000, 2000, 1200; Re₂ = ρ₂a₂δ_V/μ₂ ≈ 1650–1720", "Δp/p∞": "≈ 0.10 (DNS compression wave); → 0 in the theory", "ω": "0.3927 (forcing f = 1/16 in δ_V/a₂ units)"}
topics: ["screech", "linear-models", "jet-noise-mechanisms"]
related: ["edgington-mitchell-2021-generation-screech-tones-shock-leakage", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2015-multimodal-instability-weakly-underexpanded-elliptic-jet", "weightman-2019-sound-production-impinging-supersonic-jets", "nogueira-2024-guided-jet-waves", "edgington-mitchell-2022-unifying-theory-jet-screech", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "raman-1998-supersonic-jet-screech-review", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1995-supersonic-jet-noise", "ray-2005-instability-wave-shock-cell-interaction-sound", "alkislar-2003-screeching-rectangular-jet-stereo-piv", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets"]
cites: ["krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet", "norum-1983-screech-suppression-supersonic-jets", "panda-1999-experimental-investigation-screech-noise-generation", "raman-1999-supersonic-jet-screech-half-century-powell-present", "samimy-1998-rectangular-jet-trailing-edge-control", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets"]
summary: "2-D DNS + eikonal, M 1.2 mixing layer: weak shocks leak at inter-vortex saddles where the vorticity barrier is weak; heating eases leakage, tilts it downstream"
---
# Shock leakage through an unsteady vortex-laden mixing layer: application to jet screech

- **Authors:** Takao Suzuki and Sanjiva K. Lele, Department of Aeronautics and Astronautics, Stanford University. Suzuki's present address is Caltech (p. 139).
- **Source:** J. Fluid Mech. (2003) 490, 139–167, doi:10.1017/S0022112003005214. Received 9 May 2002, revised 9 January 2003 (p. 139). Funded by NASA Ames (grant NAG 2-1373); thanks to T. A. Manning, T. Colonius and A. B. Cain (p. 165). The DNS code and validation are in Suzuki's 2001 Stanford PhD thesis (p. 151).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/Suzuki-Lele_2003_Shock-Leakage-Through-An-Unsteady-Vortex-Laden-Mixing-Layer-Application-To-Jet-Screech.pdf` (29 pp., publisher's version). Page refs are journal pages; PDF page = journal page − 138. Eqs. 2.1–2.31, 3.1–3.3, 4.1, Tables 1–3 and Figs 5, 8–9, 14, 19–27 were checked against rendered pages.
- **Tags:** shock leakage, shock–vortex interaction, weak-shock geometrical theory, time-dependent eikonal equation, ray tracing in space–time, Blokhintzev invariant (ray-tube amplitude), Pridmore-Brown / Lilley equation, total internal reflection, critical angle vs Mach angle, saddle points between vortices, vorticity as a barrier, rotation/strain/dilatation split of the velocity-gradient tensor, entropic (temperature) effects, compression and expansion branches, 2-D DNS of a forced supersonic mixing layer, sixth-order compact (Padé) scheme, sponge layers, temperature ratio and directivity, screech source location (2nd–4th shock cell), broadband shock noise, noise suppression by disrupting large-scale structures

## Summary
The paper explains how a shock-cell reflection inside a supersonic jet can radiate sound through the mixing layer, which a steady layer forbids. In a steady layer a weak shock lies at the Mach angle, which always exceeds the critical angle for total internal reflection, so the shock stays inside the jet (p. 145–147). The authors show that a weak shock with a steep, tanh-like profile obeys the same eikonal (ray) equation as high-frequency sound, and that its strength obeys an analogue of the Blokhintzev invariant, so geometrical acoustics in space–time follows both the shock front and its amplitude through an unsteady base flow (p. 142–145). Splitting the velocity-gradient tensor shows that local vorticity rotates the wavefront normal back into the jet, acting as a barrier, so shocks leak where vorticity is weak, near the saddle points between vortices; the strain term matters as much (p. 147–149, 155–156). They test this on a 2-D DNS of a forced M₁ = 1.2 mixing layer, with and without an imposed compression wave, at three jet-to-ambient temperature ratios (p. 150–153). The eikonal fronts match the DNS fronts well, the amplitudes only qualitatively, and heating makes leakage easier and tilts the radiated shock noise slightly downstream (p. 153–164).

## Key findings
- **Steady layers never leak** (§2.2, p. 145–147).
  - For plane waves crossing a parallel mixing layer, the streamwise trace wavenumber is the same on both sides, so the upper side carries no wave when |a₂k̄ₓ| > 1. This gives the critical wavefront-normal angle θ₁^cr = arccos[−1/(a₂/a₁ + M₁)] (eq. 2.23).
  - A weak standing shock has its normal at the Mach angle θ₁^M = arccos(−1/M₁). Since θ₁^cr < θ₁^M for every a₂/a₁ > 0, shock leakage "never occurs" in a steady layer and needs unsteady disturbances (p. 147).
  - Fig. 5 (p. 147): with M₁ fixed, θ₁^cr rises towards the Mach angle in a hot jet (a₂/a₁ < 1) and falls in a cold one. Hypothesis: hotter jets leak more easily and radiate more downstream (p. 147). My check of eq. 2.23 reproduces the curves: at M₁ = 1.2, θ₁^cr − 90° = 25.1°, 27.0° and 29.7° for T₁/T₂ = 0.75, 1.0, 1.5, against θ₁^M − 90° = 56.4°. The gap closes with Mach number (≈ 7° at M₁ = 2.5).
- **Vorticity is a barrier; leakage is at the saddles** (§2.3, p. 147–149).
  - In the frame of the vortices, with the flow frozen, the wavenumber vector obeys d(φₓ, φ_y)/dt = (A_v + A_t)(φₓ, φ_y)ᵀ + B (eq. 2.26). For an isothermal flow only the velocity-gradient tensor A_v remains, and its antisymmetric part rotates the wavefront normal at ω/2 (eqs. 2.27–2.28).
  - Strong local vorticity makes rays loop back (total internal reflection); where vorticity is weak, near saddle points, refraction weakens and rays get through (p. 148–149).
  - Temperature terms: the compressible (isothermal-jet) part of the extra rotation ϖ is much smaller than ω (Fig. 17, p. 157). In non-isothermal jets the entropic part is comparable to ω in its variation, though both are small near the saddles (Figs 16, 18). It alleviates the rotation in a hot jet and enhances it in a cold jet, the same trend as the steady analysis (p. 149, 156–157).
  - The inhomogeneous term B mainly stretches or compresses the wavenumber vector and barely rotates the front (p. 149–150).
- **Where the rays leak in the DNS base flow** (§4.1, Figs 11–13, p. 153–155):
  - Rays leak between the saddle point and the trailing edge of a vortex (p. 153–154).
  - More rays leak as the vortices develop: more at the downstream saddle (x ≈ 33–37) than the upstream one (x ≈ 28) (p. 154).
  - First saddle (x ≈ 27): 4, 6 and 8 of the 251 rays get through for T₁/T₂ = 0.75, 1.0 and 1.5, following the steady analysis. Second saddle: 11, 12 and 9. Once vortices are fully developed, their spacing matters more than temperature, and heating instead tilts the leaked rays downstream (p. 155).
  - This agrees with Manning & Lele (2000) (linearised Euler with Stuart vortices) and with the authors' subsonic (M₁ = 0.3) scattering study, where plane waves beyond the critical angle leaked near saddles (Suzuki & Lele 1999) (p. 154).
- **Strain matters as much as rotation** (§4.2, Table 3, Fig. 14, p. 155–156):
  - Trajectory 1 turns by +71.4° (R_v 43.0° + S_v 28.4°) and is totally reflected. Trajectory 2 turns by −41.6° (18.9° − 60.5°) and penetrates (my sums of Table 3 match the text).
  - Near the saddle the strain term S_v can weaken the rotation; it acts in opposite senses on the two trajectories because their normals lie on opposite sides of the principal axis of S_v (p. 155).
  - For the isothermal case the temperature terms R_t, S_t turn the rays by only 0.9°/1.5° and −0.2°/−2.0° (Table 3). In the cold and hot cases they are larger but still small: A, 4.2° + 0.2°; C, −2.7° − 4.0° (p. 156–157).
- **Shock fronts form two branches** (§4.3, Figs 21–23, p. 158–161):
  - The leaking oblique shock develops a kink and splits into a compression branch followed by an expansion branch. The fronts become nearly circular and spread over wide angles, upstream included (p. 158–159).
  - The kink is the shock-cell reflection point. The branch point moves at about the speed of sound, is not a characteristic, and the compression branch reflects into the expansion branch there (p. 159).
  - Weak shocks: the two branches superpose. Finite shocks: the expansion branch should spread while the compression branch keeps its strength, as the DNS confirms (p. 159).
  - Eikonal and DNS fronts agree "fairly" well: leakage starts near the saddle and forms the compression–expansion pair. The DNS fronts run ahead and spread over a wider angle, which the authors put down to the finite amplitude (Δp/p∞ ≈ 0.10, against → 0 in the theory) (p. 159).
- **Amplitude agrees only qualitatively** (§4.4, Figs 24–27, p. 159–164):
  - At R ≈ 14 δ_V the overall level of the leaked compression wave is comparable in DNS and theory, but the detailed directivity is not predicted well (p. 163). The leaked jump is up to roughly 0.1 of the incident jump (read from Figs 24–26).
  - The theory has spiky lobes, such as a strong shallow downstream lobe in case B and two lobes in case C, that the DNS does not show (read from Figs 25–26).
  - The hot-jet DNS pattern resembles the peak tonal radiation pattern measured by Walker & Thomas (1997) (p. 163).
  - DNS amplitudes are uncertain by up to about ±15%, because acoustic and hydrodynamic pressure are hard to separate at R ≈ 14 δ_V; mean-flow distortion and nonlinear propagation add discrepancies (p. 163, 165–166).
  - The authors blame the amplitude mismatch on the isentropic jump condition and on neglecting any hydrodynamic response to the interaction (p. 164).
- **Temperature and directivity** (p. 163–164):
  - Heating weakly shifts the intensity downstream (Fig. 27). The integrated intensity vectors point at about 84°, 75° and 74° from the downstream axis for T₁/T₂ = 0.75, 1.0 and 1.5 (read from Fig. 27).
  - Heating also widens the vortex spacing (Re[kₓ] falls from 0.617 to 0.531, Table 2), which may add to the directivity change (p. 163).
  - Total amplitude falls with heating, which seems to contradict the analysis. The forced disturbance levels were not perfectly matched (Fig. 9), so the authors call for a fuller parametric study (p. 163).
  - Shen & Tam (2000) found a similar downstream trend in a round jet, but their dipole-like pattern is absent here. Theirs sums many sources over a whole round jet, while this is one source in 2-D, and superposition changes the pattern "considerably" (p. 163–164).
- **Implications drawn for screech** (§5, p. 164):
  - Experiments put the strongest shock noise between the 2nd and 4th shock cells (Walker & Thomas 1997; Panda 1999). The authors explain this: leakage needs well-developed vortices, while further downstream smaller eddies destroy the organised saddle points and the tone weakens.
  - Shock fronts are far thinner than any vortical scale, so turbulence scatters them easily (Lee, Lele & Moin 1993), giving broadband shock noise instead.
  - Disrupting the organised large-scale structure, e.g. by the streamwise vortices of tabs, slots or trailing-edge modifications ([Norum 1983](norum-1983-screech-suppression-supersonic-jets.md); Krothapalli et al. 1990; Samimy et al. 1998), should reduce shock noise. (This grouping is Suzuki & Lele's reading: Norum attributes his large cuts from long slots and the bevel to breaking the axisymmetric shock train, not to streamwise vortices, and his thin lip leaves the first cells unchanged; [Norum 1983](norum-1983-screech-suppression-supersonic-jets.md), p. 239.) Small exit changes that alter the initial instability waves could change screech amplitude strongly.

## Setup / method
**Theory: weak shocks as geometrical acoustics** (§2.1, p. 142–145)
- Assumptions:
  - Weak shock (Δp/p∞ ≪ 1), so the flow is isentropic across it and the shock does not disturb the base flow. The steady flow deflection θ_d ≡ (2√(M₁² − 1)/(γM₁²))(Δp/p∞) is ignored (p. 142).
  - The pressure obeys the third-order convective wave equation of Pridmore-Brown/Lilley (eq. 2.1), with each variable split into mean, unsteady vortical and acoustic parts, the acoustic part much the smallest (p. 142). Strictly that equation is for transversely sheared parallel flow; the authors expect it to hold here.
  - Scales: velocity scaled by the jet sound speed a_j and length by the vorticity thickness δ_V (p. 142).
- **The key analogy:** in geometrical acoustics the phase factor exp(iωφ) has ω → ∞. A compression wave of strength P• and width ε is written P• h[φ/ε], with h a monotone ramp (e.g. Taylor's tanh weak-shock profile). The steep limit ε → 0 is the counterpart of ω → ∞, and the leading order gives the same eikonal equation (eqs. 2.2–2.5, p. 142–143). φ = 0 marks the shock front.
- **Ray system:** the method of characteristics in space–time (eqs. 2.6–2.10) has τ normalised to time. The instantaneous front is a constant-time cut of a bundle of characteristics, not the projection of a ray (p. 143).
- **Amplitude:** the next order gives a conservation law (eq. 2.13). The Blokhintzev-type invariant (eq. 2.14) holds along 4-D ray tubes, so the shock strength field equals the amplitude field of sound launched at the Mach angle. The tube area S is tracked with neighbouring rays a small distance Δw apart (p. 144).
- **Initial conditions** (eqs. 2.15–2.20, p. 144–145): a standing shock in the free stream (φ_t = 0) with the wavefront normal at the Mach angle. The rays then start along the Mach line, tan θ_s = 1/√(M_s² − 1). My check: these values satisfy eq. 2.5, and eq. 2.7 gives the ray direction 1/√(M² − 1) at speed a√(M² − 1).

**Theory: total internal reflection** (§2.2, Fig. 4, p. 145–147)
- 2-D parallel mixing layer: lower side supersonic (M₁ > 1, a₁ = a_j ≡ 1), upper side quiescent (M₂ = 0, sound speed a₂). θ is the angle of the wavefront normal from the +x (flow) direction, and θ₁ differs from the ray direction (p. 146).
- Plane waves Π ~ exp[−iω(t − k̄ₓx − k̄_yy)] give k̄ₓ on each side (eqs. 2.21–2.22). k̄ₓ does not depend on the profile, so the result holds for any layer thickness (p. 146, 149).

**Theory: mechanism of leakage** (§2.3, p. 147–150)
- The wavenumber equations (2.8–2.9) are rewritten as a 3 × 3 linear system (eq. 2.24).
- In a frame moving at the vortex convection speed u_c, the flow is taken as frozen when the instability-wave time scale 1/(u_c Im[kₓ^IN]) is much longer than the acoustic time δ_V/a (p. 147–148). The result is eq. 2.25–2.26, with A_v the velocity-gradient tensor, A_t a temperature-gradient matrix and B a temperature-gradient forcing vector.
- A_v = D_v + S_v + R_v (dilatation, strain, rotation; eq. 2.27). R_v gives rotation at ω/2 (eq. 2.28). Equivalently dφᵢ/dt = ε_ijk ω_j φ_k − φ_j ∂uᵢ/∂x_j for isothermal flow (Whitham 1974; Pierce 1989) (p. 148).
- A_t splits the same way, with rotation rate ϖ/2 (eqs. 2.29–2.30). The compressible part of the temperature variation is secondary when ((M₁ − M_c)/2)² is small (Meiron, Moore & Pullin 2000) (p. 149).
- For B, the unsteady temperature field near a saddle is approximated as the steady one rotated by −α (Fig. 6). The change in B is then (−sin α, 1 − cos α)ᵀ times the steady value (eq. 2.31). For 0 < α < π/4 that vector lies in the same or opposite quadrant as the leaking-ray normal, so B mainly stretches it (p. 149–150).

**DNS** (§3.1, Tables 1–2, Figs 7–9, p. 150–153)
- 2-D compressible Navier–Stokes, fourth-order Runge–Kutta at constant Δt, sixth-order compact Padé differences in the interior and third/fourth order at boundaries (Lele 1992) (p. 150).
- Grid and domain (Table 1, p. 150):
  - Grid 1200 × 450, Δx = 0.03–0.17, Δy = 0.04–0.12, Δt = 1/96 (in δ_V/a₂).
  - x from X_in = 5.00 through X_exit = 54.71 to X_max = 83.00. y from Y_min = −11.62 and Y_bottom = −8.62 to Y_top = 17.00 and Y_max = 20.00. The grid is stretched in x in the exit buffer.
- Base flow (p. 150–151):
  - M₁ = 1.2, p₁ = 1, T₁ = 1 at y = −∞; M₂ = 0, p₂ = 1 at y = +∞. T₂ and the Reynolds numbers are in Table 2.
  - Initial velocity from the compressible boundary-layer equations, temperature from Crocco–Busemann, Pr = 0.7.
  - Re chosen so the ambient-side viscous effects match across cases (Re₂ ≈ 1650–1720).
  - All quantities are normalised by δ_V and the ambient sound speed a∞ = a₂. δ_V = U_x/(∂U_x/∂y)_max is taken at x = 20 δ_V, with the profile's peak shear at y = 0 (eq. 3.1).
- Boundaries (p. 151):
  - Giles non-reflecting conditions, with Freund damping sponges at the inflow, top and bottom.
  - Exit zone: grid stretched at 1.04, Freund's "supersonic convection terms", and an explicit low-pass filter (eqs. 3.2–3.3; c = 3, x_p = 53 δ_V, x_t = 58 δ_V). There is no filtering in the physical domain.
- Forcing (p. 151–152):
  - Kelvin–Helmholtz waves at a single frequency f^IN = 1/16 (ω = 0.3927), forced through the inflow sponge. This is slightly below the most unstable frequency (peak growth near ω ≈ 0.5, Im k ≈ 0.28–0.30, read from Fig. 8), to avoid vortex pairing in the region of interest.
  - Eigenfunctions are found by shooting on the inflow (x = 5 δ_V) profile, so this is local spatial stability.
  - Forcing levels were tuned to give similar pressure-disturbance levels in all cases (Fig. 9): exponential growth from about 10⁻² at x = 10 to saturation near 0.3 by x ≈ 25–30 (read from figure).
- Compression wave (p. 152–153):
  - Imposed from the bottom sponge only after the vortices are fully developed (t ≳ 100), aimed to hit (35.0, 0) if the layer were steady.
  - Δp/p∞ ≈ 0.10, tanh profile, width Δw/δ_V = 1.8 cos(−θ₁^M), about 40 grid points across. An expansion wave of the same strength was imposed downstream on the bottom sponge to stop the layer deflecting.
- Measurement: 60 observer points on an arc R ≈ 14 δ_V about (35.0, 0) record the pressure jumps (p. 153).
- Post-processing (Appendix, p. 165–166):
  - Pressure is sampled every Δt = 1/16. The record plotted in Fig. 28 spans t = 0–16, one forcing period.
  - It is Fourier transformed, the lowest three modes are removed to suppress the hydrodynamic pressure, it is transformed back, and the local max−min is taken as Δp.
  - This lowers the jump by about 15% for a tanh profile of the same slope, which was corrected. Cross-checked against time-integrated dilatation (Fig. 29); estimated error up to about 15%.
  - This is a time-domain filter that needs time-resolved data at each observer.

**Time-dependent geometrical acoustics** (§3.2, Fig. 10, p. 153)
- The ray ODEs are integrated by fourth-order Runge–Kutta at the DNS time step through the unsteady DNS base flow without the compression wave. Velocity and temperature come from the six nearest DNS points by second-order interpolation.
- Initial conditions at the bottom sponge with a_s = a₁, M_s = M₁.
- Leakage threshold (Figs 11–13): 251 rays from x_s ∈ [10, 35], y_s = −7.5.
- Fronts and amplitude: 200 rays on each of two lines ±0.02 cos(−θ₁^M) δ_V from the wave centreline. The ray-tube area uses six adjacent rays (three per line), and the amplitude directivity is fitted with an eighth-order polynomial.
- Rays issued only after t ≳ 100.
- So the theory uses the real unsteady DNS field (velocity and temperature), not a model vortex array. The frozen-frame §2.3 analysis is only for interpretation; for it the convection speed is taken as M₁a₁/2 (p. 156).

**Conditions** (Table 2, p. 150):

| Case | T₁/T₂ | Re₁ = ρ₁u₁δ_V/μ₁ | Re₂ = ρ₂a₂δ_V/μ₂ | ω | Re[kₓ] | Im[kₓ] |
|---|---|---|---|---|---|---|
| A (cold jet) | 0.75 | 3000 | 1721 | 0.3927 | 0.6166 | −0.2603 |
| B (isothermal) | 1.0 | 2000 | 1667 | 0.3927 | 0.5795 | −0.2656 |
| C (hot jet) | 1.5 | 1200 | 1648 | 0.3927 | 0.5310 | −0.2763 |

Derived (mine): KH wavelength 2π/Re[kₓ] = 10.2, 10.8, 11.8 δ_V; phase speed ω/Re[kₓ] = 0.64, 0.68, 0.74 (in a₂ units). For case B (a₁ = a₂) that is 0.57 U₁, against the assumed u_c = 0.6 = U₁/2. The vortices convect subsonically relative to both streams, so they do not radiate Mach waves themselves. The compression wave meets the layer about 2.8 KH wavelengths downstream of the inflow.

## Key equations
Checked against rendered pages 142–151 and 155.

- **Governing wave equation** (eq. 2.1, p. 142), with $\Pi\equiv\gamma^{-1}\log(p/p_\infty)$ and $\mathrm D/\mathrm Dt=\partial_t+u_j\partial_j$:
  $$\frac{\mathrm D}{\mathrm Dt}\left[\frac{\mathrm D^2\Pi}{\mathrm Dt^2}-\frac{\partial}{\partial x_j}\Big(a^2\frac{\partial\Pi}{\partial x_j}\Big)\right]+2\frac{\partial u_k}{\partial x_j}\frac{\partial}{\partial x_k}\Big(a^2\frac{\partial\Pi}{\partial x_j}\Big)=-2\frac{\partial u_i}{\partial x_j}\frac{\partial u_j}{\partial x_k}\frac{\partial u_k}{\partial x_i}$$
- **Acoustic vs compression-wave ansatz** (eqs. 2.2–2.4, p. 142–143):
  $$\Pi^{ac}=P^\bullet e^{\mathrm i\omega\phi},\qquad \Pi^{comp}=P^\bullet(t,\mathbf x)\,h[\phi/\epsilon],\qquad \lim_{\epsilon\to0}h[\phi/\epsilon]=H(\phi)$$
  with $P^\bullet\equiv P/(\gamma p)$, Taylor's profile $h=[1+\tanh(x/\epsilon)]/2$ and $\epsilon\equiv\frac{4}{\gamma+1}\big(\frac43+\frac{\gamma-1}{Pr}\big)\mu a/\Delta p$.
- **Eikonal** (eq. 2.5, p. 143): $(\phi_t+u_j\phi_j)^2-a^2\phi_j^2=0$.
- **Ray (characteristic) system** (eqs. 2.6–2.10, p. 143):
  $$\frac{\mathrm dt}{\mathrm d\tau}=1,\quad \frac{\mathrm dx_i}{\mathrm d\tau}=-\frac{a^2}{\phi_t+u_k\phi_k}\phi_i+u_i,\quad \frac{\mathrm d\phi_t}{\mathrm d\tau}=-\frac{\partial u_k}{\partial t}\phi_k+\frac{\phi_t+u_k\phi_k}{2a^2}\frac{\partial a^2}{\partial t},\quad \frac{\mathrm d\phi_i}{\mathrm d\tau}=-\frac{\partial u_k}{\partial x_i}\phi_k+\frac{\phi_t+u_k\phi_k}{2a^2}\frac{\partial a^2}{\partial x_i},\quad \frac{\mathrm d\phi}{\mathrm d\tau}=0$$
- **Amplitude transport** (eqs. 2.13–2.14, p. 144):
  $$\frac{\partial}{\partial t}\Big[\frac{(P^\bullet)^2p}{\phi_t+u_k\phi_k}\frac{\mathrm dt}{\mathrm d\tau}\Big]+\frac{\partial}{\partial x_j}\Big[\frac{(P^\bullet)^2p}{\phi_t+u_k\phi_k}\frac{\mathrm dx_j}{\mathrm d\tau}\Big]=0,\qquad \frac{P^2S}{p(\phi_t+u_k\phi_k)}\sqrt{a_\infty^2\Big|\frac{\mathrm dt}{\mathrm d\tau}\Big|^2+\Big|\frac{\mathrm d\mathbf x}{\mathrm d\tau}\Big|^2}=\text{const}$$
  S is the 4-D ray-tube cross-section (Fig. 2).
- **Initial conditions** (eqs. 2.15–2.20, p. 144–145): $x(0)=x_s$, $y(0)=y_s$, $\phi_t(0)=0$, $\phi_x(0)=-1/(a_sM_s)$, $\phi_y(0)=a_s^{-1}\sqrt{1-1/M_s^2}$, $\phi(0)=0$; ray angle $\tan\theta_s=1/\sqrt{M_s^2-1}$.
- **Trace wavenumber and critical angle** (eqs. 2.21–2.23, p. 146):
  $$\bar k_x=\frac{\cos\theta_1}{a_1(1+M_1\cos\theta_1)}\ (y=-\infty),\qquad \bar k_x=\frac{\cos\theta_2}{a_2}\ (y=+\infty),\qquad \theta_1^{cr}\equiv\arccos\Big(\frac{-1}{a_2/a_1+M_1}\Big)$$
  Mach angle (wavefront normal) $\theta_1^M\equiv\arccos(-1/M_1)$, so $\theta_1^M-90^\circ=\sin^{-1}(1/M_1)$, the usual Mach angle; Fig. 5 plots $\theta-90^\circ$.
  > Verify: eq. 2.23 is printed as the total-reflection condition "θ₁ < θ₁^cr". My derivation from eqs. 2.21–2.22 (|a₂k̄ₓ| > 1) gives reflection for θ₁^cr < θ₁ ≤ θ₁^M, i.e. normals closer to the Mach angle. That matches Fig. 5 ("Total reflection" above the critical curves), the text on p. 145 ("exceeds the critical angle") and p. 147. The printed inequality looks reversed.
- **Wavenumber dynamics** (eq. 2.24, p. 147, full; eqs. 2.25–2.26, p. 148, frozen convective frame, u → u − u_c):
  $$\frac{\mathrm d}{\mathrm dt}\begin{pmatrix}\phi_x\\ \phi_y\end{pmatrix}=(A_v+A_t)\begin{pmatrix}\phi_x\\ \phi_y\end{pmatrix}+B,\quad A_v=\begin{pmatrix}-u_x&-v_x\\-u_y&-v_y\end{pmatrix},\quad A_t=\frac{1}{2a^2}\begin{pmatrix}u\,\partial_xa^2&v\,\partial_xa^2\\ u\,\partial_ya^2&v\,\partial_ya^2\end{pmatrix},\quad B=-\frac{1}{2a^2}\begin{pmatrix}\partial_xa^2\\ \partial_ya^2\end{pmatrix}$$
  B is the φ_t column of eq. 2.24; the normalisation of φ_t in the moving frame is not stated (it acts as φ_t = −1).
- **Decomposition** (eqs. 2.27–2.30, p. 148–149):
  $$A_v=\underbrace{\tfrac12(\lambda_1+\lambda_2)I}_{D_v}+\underbrace{\tfrac12\big[(A_v+A_v^T)-(\lambda_1+\lambda_2)I\big]}_{S_v}+\underbrace{\tfrac12(A_v-A_v^T)}_{R_v},\qquad R_v=\frac12\begin{pmatrix}0&-\omega\\ \omega&0\end{pmatrix},\qquad R_t=\frac12\begin{pmatrix}0&-\varpi\\ \varpi&0\end{pmatrix},\ \varpi\equiv\frac{1}{2a^2}\Big(u\frac{\partial a^2}{\partial y}-v\frac{\partial a^2}{\partial x}\Big)$$
  My check: with ω = v_x − u_y, A_v − A_vᵀ gives R_v as printed, and A_t − A_tᵀ gives ϖ as printed.
- **Unsteady correction to B** (eq. 2.31, p. 149): $B^{un}-B^{st}=\big(\frac{1}{2a^2}\frac{\partial a^2}{\partial y}\big)^{st}(-\sin\alpha,\ 1-\cos\alpha)^T$ as α → 0.
- **Vorticity thickness and exit filter** (eqs. 3.1–3.3, p. 151): $\delta_V=U_x/(\partial U_x/\partial y)_{max}$; $\hat f_n\equiv a(x)f_n-\tfrac23[a(x)-1](f_{n+1}+f_{n-1})+\tfrac16[a(x)-1](f_{n+2}+f_{n-2})$, $a(x)=\tfrac58+\tfrac38\,[1+e^{-c(x-x_t)/(x_p-x_t)}]^{-1}$.
- **Strain rotation rate** (eq. 4.1, p. 155): $\dot\theta(S_v)\equiv\mathbf n_\phi\times[S_v\mathbf n_\phi-(S_v\mathbf n_\phi\cdot\mathbf n_\phi)\mathbf n_\phi]$, $\mathbf n_\phi=(\phi_x,\phi_y)^T/|(\phi_x,\phi_y)^T|$; $\dot\theta(R_v)=\omega/2$.
- **Integrated intensity** (Fig. 27 caption, p. 163): $(\tilde I_x,\tilde I_y)\equiv\big(\int_0^\pi p^2(\theta)\cos\theta\,\mathrm d\theta,\ \int_0^\pi p^2(\theta)\sin\theta\,\mathrm d\theta\big)$.

## Data tables
**Net rotation of the wavefront normal by each term, degrees** (Table 3, p. 156):

| Trajectory | R_v | S_v | R_t | S_t | B (steady) | Outcome |
|---|---|---|---|---|---|---|
| Case B, 1 | 43.0 | 28.4 | 0.9 | 1.5 | 4.3 | reflected (R_v + S_v = 71.4) |
| Case B, 2 | 18.9 | −60.5 | −0.2 | −2.0 | −9.2 | leaks (R_v + S_v = −41.6) |
| Case A, 3 | 10.5 | −96.5 | 4.2 | 0.2 | 2.1 (26.2) | leaks (Fig. 12) |
| Case C, 4 | 26.8 | −64.4 | −2.7 | −4.0 | −37.8 (−44.5) | leaks (Fig. 13) |

Positive is counterclockwise (towards reflection for these rays). Rows 3–4 outcomes are from the figures, where these thick trajectories cross the layer.
> Verify: the text says the net rotation from B "does not change significantly" between unsteady and steady (p. 157–158), but for case A the table gives 2.1° against 26.2°.

**Rays penetrating each saddle** (p. 155): first saddle (x ≈ 27): 4 / 6 / 8; second saddle: 11 / 12 / 9, for T₁/T₂ = 0.75 / 1.0 / 1.5 (of 251 rays from x_s ∈ [10, 35]).

## Figures worth remembering
- **Fig. 3 (p. 146):** plane waves at a mixing layer: leakage through a vortex-laden layer against total reflection by a steady one. The caption labels (a) steady and (b) unsteady, but the panels show the reverse.
- **Fig. 5 (p. 147):** θ₁^cr − 90° against M₁ for cold, isothermal and hot jets, below the Mach angle at every M₁. The one-glance reason steady shocks stay trapped.
- **Fig. 6 (p. 150):** temperature contour of case A at a saddle, with the angle α used in eq. 2.31.
- **Fig. 8 (p. 152):** spatial growth rates for the three profiles and the forcing frequency.
- **Figs 11–13 (p. 154–155):** ray trajectories over vorticity for the three temperature ratios; leaking rays pass between the saddle and the vortex trailing edge, more downstream.
- **Fig. 14 (p. 156):** rotation rates from R_v and S_v along the reflected and leaking rays.
- **Figs 16–18 (p. 157–158):** vorticity and ϖ fields for each case.
- **Fig. 21 (p. 159):** eikonal shock-front evolution every 2 δ_V/a₂: kink, compression and expansion branches, nearly circular fronts.
- **Figs 22–23 (p. 160–161):** eikonal fronts over DNS dilatation and vorticity, against the DNS with the imposed compression wave, at Δt = 5. The direct visual of shock leakage in a computation.
- **Figs 24–26 (p. 162):** polar plots of leaked-jump ratio at R ≈ 14 δ_V, DNS against theory.
- **Fig. 27 (p. 163):** integrated intensity vectors tilting downstream with heating.
- **Figs 28–29 (p. 165):** extraction of Δp from DNS pressure histories and the dilatation cross-check.

## Notation
- Subscripts 1, 2: lower (supersonic jet) and upper (ambient) sides; s: initial ray position; c: convective frame; j: jet.
- M₁ = u₁/a₁; a: local sound speed (a² ∝ local temperature); T₁/T₂: jet-to-ambient static temperature ratio (cold 0.75, isothermal 1.0, hot 1.5); δ_V: vorticity thickness at x = 20 δ_V.
- Π = γ⁻¹ log(p/p∞); P, P• = P/(γp): wave strength; ε: compression-wave width; h: ramp profile; H: Heaviside; φ: phase/eikonal (φ = 0 is the shock front); φ_t: local frequency; φᵢ: wavenumber vector; τ: ray parameter (= time).
- θ: angle of the wavefront normal from +x; θ₁^cr: critical angle; θ₁^M = arccos(−1/M₁): Mach angle of the normal; θ_s: initial ray angle; k̄ₓ: trace wavenumber per unit frequency.
- A_v, A_t, B: velocity-gradient matrix, temperature-gradient matrix and vector; D_v, S_v, R_v: dilatation, strain and rotation parts; ω: vorticity; ϖ: temperature-induced rotation rate; α: rotation of the temperature contour at a saddle.
- S: 4-D ray-tube area; Δw: ray-line spacing or compression-wave width; R: observer radius (≈ 14 δ_V).
- kₓ^IN, ω^IN, f^IN: forced instability wavenumber and frequency.

## Relevance to this project
This is the theoretical basis for the shock-leakage thread of the Shock Lab group. Its two criteria are the ones the group applies: the incidence angle at the shear layer, and weak local vorticity at the saddle point between vortices. [edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md) (p. 843–845) took the critical-angle and rotation results to propose that sources sit where coherent vorticity fluctuations peak. [edgington-mitchell-2015-multimodal-instability-weakly-underexpanded-elliptic-jet](edgington-mitchell-2015-multimodal-instability-weakly-underexpanded-elliptic-jet.md) (p. 2747) used it for an elliptic jet. [edgington-mitchell-2021-generation-screech-tones-shock-leakage](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) tested both criteria with ray tracing on PIV (p. 26–28), and the user's thesis used them for impinging jets ([weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)). It is not group work, and has no experiment.

**Reading it critically**
- **What is tested is narrow.**
  - One planar mixing layer at one Mach number (M₁ = 1.2), not a jet: no second shear layer, no core, no shock-cell train, and one imposed compression wave in place of a shock reflection.
  - Laminar, single-frequency forced 2-D vortices with pairing suppressed, at low Re (Re₁ 1200–3000).
  - One interaction measured in the near field (R ≈ 14 δ_V, about 1.3 KH wavelengths), where hydrodynamic pressure is still large (p. 165).
  - So the paper establishes the local mechanism, not the feedback loop or the far-field tone. It also says nothing about closure: the leaked wave is shown to radiate, not to reach the lip or excite KH waves.
- **The steep-front analogy is checked against DNS only partly in its own limit** (my reading).
  - The theory needs Δp/p∞ → 0 and ε ≪ δ_V. The DNS uses Δp/p∞ ≈ 0.10 and a compression wave about 1.8|cos θ₁^M| ≈ 1.5 δ_V wide (p. 152–153), comparable to the layer thickness.
  - Fronts still agree well, which supports the authors' claim that front geometry is robust. Amplitude agrees only qualitatively, and the authors blame the isentropic jump and the missing hydrodynamic response (p. 164).
  - Amplitude prediction, the stated second objective (p. 140), is therefore not achieved.
- **The frozen-frame argument is interpretive.** The quantitative ray tracing uses the unsteady DNS field. The "≪" condition for freezing is only modest here (my estimate: M_c Im[kₓ] ≈ 0.6 × 0.27 ≈ 0.16 against 1/δ_V = 1).
- **Strain, not only vorticity.** The saddle is a strain-dominated point. Table 3 shows that the strain term rotates the leaking rays by −60° to −97°, more than vorticity's +11° to +27°. So "vorticity is a barrier" is half the story: the saddle's strain actively turns the normal outward. This fits [edgington-mitchell-2021](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md), where leaking rays pass the FTLE ridges that mark the saddles (p. 26–27). It also fits the sonic-line-tilt criterion of the user's thesis ([weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md), App. C, p. 163, as quoted in the 2021 note), since the sonic line tilts most at the saddle.
- **Directivity of one source: not the same as the group's claim** (my comparison).
  - Here a single 2-D leakage event radiates mainly sideline. The integrated intensity points 74–84° from the downstream axis (Fig. 27), with amplitude falling towards zero beyond roughly 120–130° (read from Figs 24–26). The eikonal fronts do spread "including the upstream direction" (p. 159).
  - [edgington-mitchell-2021](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) (p. 21–23) argues that one leakage source already sends its strongest waves upstream, along Norum's 160°. That rests on ray streaks (no amplitude) from the Shariff & Manning model.
  - The two can be reconciled only partly: different flows (jet vs single layer), near field vs far field, and amplitude vs ray density. The DNS's sideline pattern would push back towards the "superposition of many sources" explanation of upstream directivity, which Suzuki & Lele themselves raise (p. 163–164).
- **Same physics as the triad, seen locally** (my observation).
  - A standing shock has zero frequency, so its trace phase speed is subsonic relative to the ambient and it cannot radiate. That is the content of θ₁^cr < θ₁^M.
  - Leakage needs the vortices to give the reflected wave a time dependence, i.e. the KH × shock interaction. In wavenumber space that is the Tam & Tanna difference wave k_kh − k_s with supersonic phase speed ([tam-1982](tam-1982-shock-associated-noise-cd-nozzles.md); [ray-2005](ray-2005-instability-wave-shock-cell-interaction-sound.md), the later linear-Euler study from the same Stanford group).
  - The ray picture is its localised, high-frequency (sharp-front) version. This is consistent with reading leakage as a correlated by-product of the triad ([edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 20–22).
- **Total internal reflection links to the guided jet mode** (my observation).
  - The critical-angle condition |a₂k̄ₓ| > 1 is the outer (sonic-line) edge of the total-reflection band in [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 15–17), whose standing waves between the two shear layers are the guided jet mode.
  - So the rays this paper calls "reflected" (trajectory 1, Fig. 11) are the geometrical-acoustics limit of in-jet sound that can feed the G-JM, while the leaked rays radiate.
  - One interaction can therefore feed both, the reading the [edgington-mitchell-2021](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) note proposes. Nogueira 2024 (p. 32) cites this paper for the radiation side.
- **Source location.** The explanation of 2nd–4th cell sources is qualitative: vortices must have developed, and downstream disorder destroys clear saddles (p. 164). It agrees with:
  - the 4th-shock-tip source of [mercier-2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md), which cites this paper (p. 203–204);
  - Raman's 3rd-cell equivalent source ([raman-1998](raman-1998-supersonic-jet-screech-review.md) p. 71–73);
  - the 3rd–5th cell scatter in [edgington-mitchell-2021](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) (p. 19–30), where leakage also grows with vortex strength;
  - the circulation peak at the 3rd cell in [alkislar-2003](alkislar-2003-screeching-rectangular-jet-stereo-piv.md) (p. 123).
  The ray counts here (first saddle 4–8, second 9–12) show the same growth with vortex development.
- **Heating.**
  - The prediction that hot jets leak more easily and radiate further downstream is weakly supported: DNS directivity tilts by about 10°, while total amplitude falls, against the analysis (p. 163).
  - Tam reports lower screech intensity with heating ([tam-1995](tam-1995-supersonic-jet-noise.md) p. 39–40), consistent with the falling total amplitude here but not with "easier leakage". The heated rectangular LES of [gojon-2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md) gets the opposite amplitude trend.
  - The temperature question is open.
- **Paper inconsistencies to keep in mind** (see verify list): normalisation by a_j (p. 142, 145) against a∞ = a₂ (p. 151); T₁/T₂ described on p. 141 as "ambient to the jet" although subscript 1 is the jet side and case C (1.5) is the hot jet; the eq. 2.23 inequality; the Fig. 3 caption.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Inputs the criteria need.** The criteria (critical angle, local ω, strain at the saddle, ϖ) need instantaneous or phase-resolved velocity, plus temperature for A_t and B. The frozen-frame form needs only one field translated at u_c.
  - *Non-time-resolved PIV* qualifies once it is phase-reconstructed from a POD pair, as in the 2021 ray tracing; a single phase-averaged field in the convective frame suffices for the §2.3 analysis.
  - *Time-resolved fields* (TR-PIV, LES) allow the full time-dependent eikonal of §3.2.
  - *PIV gives no temperature.* Unheated lab jets are not isothermal in Suzuki & Lele's sense: T_j/T∞ = 1/(1 + 0.2M_j²) ≈ 0.81, 0.79 and 0.70 at M_j 1.09, 1.14 and 1.45 (my calculation). They sit near the cold case A (0.75), where the entropic terms vary as much as ω (Fig. 16), though their net rotation is small (4.4° of about −80° for trajectory 3, Table 3).
  - So the constant-c assumption of the 2021 ray model costs a few degrees, not the mechanism. A temperature field from constant stagnation enthalpy, BOS, or LES would remove it.
- **Time-resolved schlieren.** Look for the predicted compression branch followed by an expansion branch, meeting at a kink at the reflection point (Figs 21–23). In knife-edge schlieren this should show as a paired dark/light front.
  - The k < 0 filter of [edgington-mitchell-2021](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) keeps both branches.
  - A single-frequency SPOD reconstruction smears the sharp pair; keep harmonics (BMD) if the front shape matters.
- **Acoustic/hydrodynamic separation.** The appendix removes the lowest three Fourier modes of each one-period pressure record, which needs time-resolved probes. It is a crude version of the k_x-sign and SPOD filtering the group uses, with an error of about 15%.
- **Intermittency and the SPOD → reconstruction → HPOD pipeline.**
  - The DNS is strictly periodic, so it has no intermittency.
  - Its conclusion predicts that leakage strength follows the organisation of the vortices (clear saddles), so cycle-to-cycle KH amplitude and coherence should modulate the tone.
  - HPOD of an SPOD-reconstructed tone band gives that instantaneous amplitude. Conditioning k < 0 schlieren leakage events, or the first leaking cell, on it would test the vortex-strength dependence this paper and the 2021 r̄ ± 2σ rescaling infer.

**Modelling side and the PyFR staging LES**
- The PyFR LES (`Simulations/PyFR_Staging_Continuation/`) supplies what this paper lacked for a real jet: axisymmetric 3-D vortices, a shock-cell train, the temperature field and turbulence.
- It could run the full time-dependent eikonal of §3.2 with the R_t, S_t and B terms on LES fields.
- It could test whether the first leaking cell moves on A1 → A2 staging as the saddle-point organisation changes.
- It could measure the single-source directivity against Fig. 27 and Norum's 160° claim.
- It could separate reflected (G-JM-feeding) from leaked rays at each cell.

**Rocket noise**
- The critical-angle margin θ₁^M − θ₁^cr shrinks for hot jets (a₂/a₁ < 1) and at higher Mach number (Fig. 5; about 7° at M₁ = 2.5, my calculation). So hot rocket plumes should leak shocks easily and radiate them further downstream.
- Yet the paper's own conclusion, that turbulence scrambles thin shock fronts into broadband shock noise once organised saddles are lost (p. 164), is consistent with screech being absent at full scale while BBSAN remains ([lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)).
- The shock–vortex front splitting also bears on shock-like waves from plume–deflector interaction ([edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md)).

**Items to verify against the PDF**
1. Eq. 2.23 is printed as "θ₁ < θ₁^cr" for total reflection; Fig. 5 and the derivation imply θ₁ > θ₁^cr (p. 146–147).
2. Fig. 3 caption ((a) steady, (b) unsteady) against the panels, which show leakage in (a) and total reflection in (b) (p. 146).
3. Normalisation: a_j ≡ 1 (p. 142, 145) against a∞ = a₂ and T₁ = 1 at y = −∞ (p. 151; Table 1 Δt in δ_V/a₂). For cases A and C these cannot all hold.
4. p. 141 calls T₁/T₂ the ratio "of the ambient to the jet"; everywhere else T₁ is the jet side.
5. Table 3, case A, B column: 2.1° unsteady against 26.2° steady, while the text says the change is not significant (p. 157–158).
6. Compression-wave width Δw/δ_V = 1.8 cos(−θ₁^M) is negative as written (θ₁^M > 90°); magnitude ≈ 1.5 δ_V at M₁ = 1.2 (p. 153).
7. Values read from figures: Fig. 8 peak growth, Fig. 9 levels, Figs 24–26 amplitude ratios and angular extent, Fig. 27 vector angles. Fig. 27 says it is built "from figures 24–26" without saying whether from the DNS or the theory curves.
8. The convective speed for the ϖ analysis is taken as M₁a₁/2 for all three cases (p. 156), though the forced phase speeds differ (0.64–0.74).

**Candidates for `/add-paper`:** Manning & Lele 2000 (AIAA 2000-2081, linearised Euler and Stuart-vortex ray model); Shariff & Manning 2013 (Phys. Fluids 25, ray-tracing extension); Suzuki & Lele 1999 (AIAA 99-0228, subsonic scattering); Suzuki 2001 (Stanford PhD thesis); Kerschen & Cain 1995 (AIAA 95-0507); Shen & Tam 2000 (AIAA J. 38, temperature and lip thickness); Walker & Thomas 1997 (Phys. Fluids 9); Panda 1998, 1999 (JFM 363, 378); Kevlahan 1996 (JFM 327, weak shocks in non-uniform flow); Lee, Lele & Moin 1993 (JFM 251).
