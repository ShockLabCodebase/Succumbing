---
key: "huerre-1990-local-global-instabilities-spatially-developing-flows"
title: "Local and global instabilities in spatially developing flows"
authors: ["Huerre, Patrick", "Monkewitz, Peter A."]
year: 1990
type: "review"
venue: "Annu. Rev. Fluid Mech. 22, 473–537"
bib: {"journal": "Annual Review of Fluid Mechanics", "volume": "22", "pages": "473--537", "publisher": "Annual Reviews"}
doi: "10.1146/annurev.fl.22.010190.002353"
arxiv: ""
pdf: "linear-models/Huerre-Monkewitz_1990_Local-And-Global-Instabilities-In-Spatially-Developing-Flows.pdf"
version: "published"
unverified: ["DOI from memory; not printed in this PDF (only the code 0066-4189/90/0115-0473$02.00)"]
group: false
facility: ""
data: ["none"]
methods: ["LSA-local", "LSA-global", "vortex-sheet", "ROM", "PSD"]
flow: ["round-jet", "planar-jet", "wake", "shear-layer", "wall-bounded", "heated", "subsonic", "generic"]
phenomena: ["absolute-instability", "global-mode", "receptivity", "KH-wavepackets", "vortex-shedding", "mixing-enhancement"]
params: {"S_AI round jet (M = 0)": "0.72", "S_AI planar jet": "0.90", "Λ_AI tanh mixing layer": "≥ 1.315", "Λ_AI sech² wake": "≤ −0.904", "R_D cylinder (CI / AI / shedding)": "≈5 / ≈25 / 45–47", "St preferred mode": "0.25 (planar), 0.41 (round)"}
topics: ["linear-models", "linear-operator-methods", "screech"]
related: ["nogueira-2021-absolute-instability-shock-containing-jets", "garnaud-2013-preferred-mode-incompressible-jets", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "towne-2018-spod-relationship-dmd-resolvent", "nogueira-2021-closure-mechanism-a1-a2-screech", "farghadan-2026-wave-interactions-screeching-jet", "gudmundsson-2011-instability-wave-models-near-field-jets", "mancinelli-2021-complex-valued-resonance-model-screech", "taira-2017-modal-analysis-fluid-flows-overview", "taira-2020-modal-analysis-applications-outlook", "rolandi-2025-biglobal-resolvent-naca0012", "raiola-2025-hilbert-pod"]
cites: ["michalke-1984-survey-jet-instability-theory"]
summary: "Review: absolute/convective vs local/global instability; Briggs pinch, WKB saddle X_s sets global frequency; hot jets (S<0.72), wakes as oscillators; Landau tests"
---
# Local and global instabilities in spatially developing flows

- **Authors:** Patrick Huerre (Department of Aerospace Engineering, University of Southern California, Los Angeles; present address Département de Mécanique, École Polytechnique, Palaiseau) and Peter A. Monkewitz (Department of Mechanical, Aerospace and Nuclear Engineering, UCLA) (p. 473). Not Shock Lab group work.
- **Source:** Annual Review of Fluid Mechanics 1990, 22:473–537, © 1990 Annual Reviews (p. 473). Supported by AFOSR grants F49620-85-C-0080 and 87-0329 and an ATT contract (p. 523). No DOI is printed; the one in the frontmatter is from memory.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-models/Huerre-Monkewitz_1990_Local-And-Global-Instabilities-In-Spatially-Developing-Flows.pdf` (66 pp.: the 65 article pages plus the volume's contents page vii as PDF p. 66). It is a scan of the publisher's version with an OCR text layer, downloaded 2006. Page refs are journal pages; **PDF page = journal page − 472**. The OCR garbles almost every equation, and the appendix Tables 1–4 (p. 524–531, rotated pages) have no text layer at all. All equations quoted below and all four tables were read from rendered page images.
- **Tags:** absolute instability, convective instability, impulse response, Green's function, Briggs–Bers pinch criterion, saddle point, branch point, cusp map, spatial branches k⁺/k⁻, branch switching, signalling problem, Galilean invariance, linearised Ginzburg–Landau equation, WKB / weakly non-parallel theory, global mode, wavemaker, turning point, frequency selection (Pierrehumbert, Koch, complex-X saddle), Hopf bifurcation, Landau equation, amplifier vs oscillator, marginally globally stable flows, preferred (jet-column) mode, pressure feedback, computational-box resonance, wakes, base bleed, heated wakes, low-density / hot jets, side jets, capillary jets, lock-in, flow control, noise-sustained structures, velocity-dependent Lyapunov exponents, pattern-propagation fronts (Dee–Langer)

## Summary
This review sets out the theory that classifies open shear flows as **amplifiers** or **oscillators**. Locally, a parallel profile is convectively unstable if its impulse response is swept away from the source and absolutely unstable if it grows at a fixed point. The test is the sign of the absolute growth rate ω₀,ᵢ at the zero-group-velocity saddle k₀, with Briggs' pinch condition deciding which saddles count (p. 478–485). For slowly varying flows (ε = λ/L ≪ 1) the authors join local to global behaviour through a WKB analysis built on the Ginzburg–Landau equation. A finite pocket of absolute instability is necessary but not sufficient for a self-excited global mode. To leading order the global frequency is the local absolute frequency at the saddle point X_s of ω₀(X) in the *complex* X-plane, and ω_G,i ≤ ω₀,ᵢ(X_s) ≤ ω₀,ᵢ|max (p. 487–497). Near onset the global-mode amplitude obeys a Landau equation (p. 497). The second half applies the theory flow by flow:
- mixing layers and flat-plate wakes are amplifiers (p. 497–499);
- homogeneous jets are marginally globally stable, with the preferred mode read as a weakly damped global mode (p. 499–502);
- bluff-body wakes, low-density jets and capillary jets are oscillators. The examples include the von Kármán transitions, base bleed and heating (p. 502–511), hot and helium jets below S ≈ 0.6–0.72 (p. 511–515) and dripping capillary jets (p. 516).

It closes with experimental tests for self-excitation, control, chaos, closed flows and front propagation (p. 516–523).

## Key findings
**Local concepts in parallel flows (§2, p. 477–487)**
- **Definitions from the impulse response.** G(x, t) solves D[−i∂ₓ, i∂ₜ; R]G = δ(x)δ(t) (eq. 3, p. 478). The flow is:
  - *stable* if G → 0 along every ray x/t = const, and *unstable* if G → ∞ along at least one ray (eqs. 4–5, p. 478);
  - *convectively unstable* if G → 0 along x/t = 0, and *absolutely unstable* if G → ∞ along x/t = 0 (eqs. 6–7, p. 478).
- **Two growth rates, two criteria** (p. 481–483).
  - Long-time steepest descent gives a wavepacket in which each ray x/t is dominated by the k* with real group velocity ∂ω/∂k(k*) = x/t. The growth along that ray is σ = ω_i(k*) − (x/t)k*_i (eqs. 11–12, p. 481–482).
  - The maximum, ω_i,max = ω_i(k_max) with real k_max, is reached along x/t = ∂ω_r/∂k(k_max). Its sign separates stable from unstable flow (eqs. 13–14, p. 482).
  - The absolute frequency ω₀ = ω(k₀), with ∂ω/∂k(k₀) = 0 (k₀ complex), is what a fixed station sees as t → ∞. ω₀,ᵢ > 0 means absolute instability, ω₀,ᵢ < 0 convective (eqs. 15–16, p. 482–483).
  - The two rates are bounded: ω₀,ᵢ ≤ ω_i,max (eq. 17, p. 483; attributed to Chomaz et al. 1989a).
- **The Briggs–Bers pinch condition is essential** (p. 483–484).
  - Not every saddle of ω(k) is the absolute frequency. As the Laplace contour L is lowered, the k⁺(ω) and k⁻(ω) branches, which start in opposite half k-planes, move together and pinch the Fourier contour F at k₀ (Fig. 2). Only such a pinch gives ω₀.
  - A branch point formed by two branches from the *same* half-plane (e.g. k₁⁺ and k₂⁺) is not the absolute frequency (p. 484).
  - A cusp in the image of ω(k) marks the branch point (cusp map, Kupfer et al. 1987) (p. 484). This is the "Briggs (1964) criterion", or the Fainberg–Kurilko–Shapiro condition in the Soviet literature.
- **Analytic pitfalls** (p. 484–485).
  - Mixing-layer temporal modes behave like ω ~ |k| as k → 0. A branch cut, or the spatial *analytic signal* Ψ = [δ(x) + i/(πx)] * ψ (spectrum on k_r > 0 only), is needed to handle this (eqs. 19–20, p. 484).
  - The Görtler instability on a concave plate has no finite branch point, so G must be evaluated numerically to show it is convective (Park & Huerre 1988) (p. 485).
- **The signalling problem is meaningful only in convectively unstable flows** (p. 485–486).
  - Forcing at real ω_f switched on at t = 0 gives a transient like G plus steady k⁺(ω_f) waves for x > 0 and k⁻(ω_f) waves for x < 0 (eqs. 21–23).
  - In an absolutely unstable flow the transient swamps the steady response everywhere. "Spatially growing waves at a real frequency" are therefore only of interest in convectively unstable flows (p. 486).
  - **Branch switching** in a spatial calculation (k⁺ and k⁻ swapping as R crosses R_t, Fig. 3) signals the change from convective to absolute (p. 486).
- **Galilean invariance.** Absolute versus convective is frame-dependent for a strictly parallel flow. It becomes physical only when invariance is broken: by forcing at a fixed station, by no-slip walls (plane Poiseuille), or by spatial development (p. 487).
- **The linearised Ginzburg–Landau model** (eq. 8, p. 478; recast as eq. 18, p. 483) is the simplest model with a convective/absolute transition. Its dispersion relation is ω − ω₀ = (ω_kk/2)(k − k₀)², a second-order branch point (p. 483).
  - The general case is stable → convective at R_c (Hopf to a travelling wave), then convective → absolute at R_t > R_c (Fig. 1a–c, p. 479–480).
  - Reflection-symmetric systems (Rayleigh–Bénard, Taylor–Couette) have R_t = R_c and go absolute immediately (Fig. 1d–e).
  - Counter-propagating left- and right-moving waves (binary-fluid convection) are convective just above R_c and absolute beyond some R_t > R_c (Fig. 1f–h).

**Global concepts in slowly developing flows (§3, p. 487–497)**
- **Weak non-parallelism is the key hypothesis.** It needs ε ~ λ/L ≪ 1, with 1/L ≈ θ⁻¹ dθ/dx (θ a momentum or vorticity thickness). The base flow becomes U[y; θ(X)] with X = εx. If ε is not small, no link between local and global properties is possible (eqs. 24–25, p. 487).
- **Four classes of flow** (Fig. 4, p. 488–489):
  - (a) uniformly locally stable;
  - (b) locally convectively unstable (ω_i,max > 0, ω₀,ᵢ < 0 everywhere). These are amplifiers and globally stable, meaning stable to infinitesimal global disturbances, not to all finite ones;
  - (c) "almost absolutely unstable", with ω₀,ᵢ|max < 0 but small. These are *marginally globally stable* and have weakly damped global modes that respond strongly to forcing near the global frequency;
  - (d) a finite pocket of local absolute instability. These may be *globally unstable* and self-excited at ω_G.

  A flow can move between classes as R varies (p. 489).
- **WKB signalling.** For class (b), φ± ~ A±(X) exp[(i/ε)∫k±(X; ω_f)dX] with amplitude equations at O(ε) (eqs. 32–35, p. 490). This is the slowly diverging analysis of Crighton & Gaster (1976) and Gaster et al. (1985). It gives the forcing frequency of maximum total gain (Fig. 5).
- **Global modes and the wavemaker** (eqs. 36–37, p. 491–492).
  - ψ = φ(x; X)e^{−iω_G t}, with ω_G an eigenvalue of the inhomogeneous problem; the flow is globally unstable if ω_G,i > 0.
  - In the GL example (Fig. 6), the global-mode amplitude is still *very small* where ω₀,ᵢ peaks. The picture is a low-amplitude "wavemaker" in the absolutely unstable region feeding downstream waves. Those waves grow like ordinary spatial modes and peak roughly where they become locally neutral (p. 491–492).
- **Absolute instability is necessary but not sufficient** (p. 492–493).
  - Chomaz et al. (1987, 1988) solved a GL model on 0 < x < ∞ with cubic saturation and ω₀(X) = ω₀(0) + ω₀′X (ω₀,ᵢ′ < 0). Raising ω₀,ᵢ(0) took the system through global stability, then "global transient instability" (transient growth in a finite region with no sustained state), then a small absolute pocket that was still only transient. Beyond a critical pocket size came a **Hopf bifurcation to a self-sustained global mode**.
  - The same was found on a doubly infinite domain with parabolic ω₀(X) (Chomaz et al. 1989b).
- **Frequency selection: three candidates** (p. 493–495).
  - *Pierrehumbert (1984)*, for doubly infinite baroclinic flow: ω_G = ω₀,r at the station of maximum ω₀,ᵢ; his global modes grow at ω₀,ᵢ|max.
  - *Koch (1985)*, for semi-infinite wakes: ω_G locks to ω₀(X_t), where X_t is the boundary between absolute and convective instability (ω₀,ᵢ(X_t) = 0).
  - *The authors* (Huerre et al. 1988; Chomaz et al. 1989a): to leading order in ε the most unstable ω_G = ω₀(X_s), where ∂ω₀/∂X(X_s) = 0 at the saddle in the **complex X-plane** closest to the real axis (eq. 38, Fig. 7). In terms of the dispersion relation, ∂ω/∂k = ∂ω/∂X = 0 at (k_s, X_s) (eq. 40, p. 495). "k and X play the same role", and both must be complex.
  - The authors "doubt that any of the above criteria [Pierrehumbert's, Koch's] could be rigorously justified" (p. 493).
  - Bar-Sever & Merkine (1988) had implicitly derived eq. 38 for geophysical flows, and Fuchs et al. (1981) gave a related mode-conversion theory for plasmas (p. 494).
- **Bounds:** ω_G,i ≤ ω₀,ᵢ(X_s) ≤ ω₀,ᵢ|max for any global mode (eq. 39, p. 494). So an amplified global mode requires a real-axis absolute pocket, ω₀,ᵢ|max > 0.
  - The real-axis maximum always sits on a "hill" of the saddle (Fig. 7). As R rises, a pocket can appear on the real axis while ω₀,ᵢ(X_s) is still negative. Only once the pocket is big enough does the saddle reach ω₀,ᵢ(X_s) > 0 and the flow bifurcate (p. 496–497).
- **Next-order theory** (eqs. 41–46, p. 495–496).
  - Outer WKB solutions on the k⁺ and k⁻ branches are matched through an inner turning-point region of size O(ε^{1/2}) around X_s.
  - The inner amplitude obeys a GL-type equation (eq. 45). This is the authors' a posteriori justification for using GL in the first place.
  - A smooth k⁺ → k⁻ conversion requires a discrete set ω_Gn ~ ω_s + ε[δω − (i/2)ω_kk k_0X + (ω_0XX ω_kk)^{1/2}(n + ½)] (eq. 46). The frequencies are spaced O(ε) apart, and δω is a "genuinely nonlocal" correction.
  - The result also holds with the y-structure included, where the cross-stream eigenfunction is slaved to X (Monkewitz et al. 1989b) (p. 496).
  - *Caveats* (p. 496): the theory is linear, so nonlinearity matters away from onset. At large n the double turning point splits into X_s1 and X_s2, eq. 46 fails, and ω_Gn come from integral conditions instead.
- **Landau equation at the global bifurcation:** dB/dt = c₁(R − R_Gc)B − c₂|B|²B + β, with c₂,r > 0 for a supercritical bifurcation (eq. 47, p. 497). This gives |B|_sat ∝ (R − R_Gc)^{1/2} (eq. 58, p. 503).

**Globally stable flows (§4, p. 497–499)**
- In purely convective systems the long-time response to steady-periodic forcing (free-stream disturbances at edges, inhomogeneities) is described by spatial theory, locally parallel or slowly diverging (p. 497). Transient responses that are explicitly convective (Fig. 1b) have been shown for the flat-plate boundary layer (Gaster 1968, 1975; Gaster & Grant 1975), the rotating disk and the mixing layer (Balsa 1988, 1989) (p. 497).
- **Global instability can also come from pressure feedback** (eq. 48, p. 498). Upstream-travelling vorticity waves are not the only route: irrotational pressure feedback, ∇²p = −∂²(u_iu_j)/∂x_i∂x_j in the incompressible inviscid limit, can also close a loop.
  - The strongest sources sit on solid boundaries in or around the flow. This is the class of edge, collar and cavity tones (Rockwell & Naudascher 1979). Electronic feedback works the same way (p. 498).
- **Computational boxes resonate** (p. 498–499; Fig. 8).
  - In spatial mixing-layer simulations (Lowery & Reynolds 1986; Buell & Huerre 1988), the start-up mismatch at the inflow launches a wavepacket. At the outflow (x = 250) it makes a pressure change felt "instantaneously" at the inflow, which launches the next packet.
  - Repeated reflections give a self-sustained, here noisy, state with no intentional forcing. Simulations, like experiments, suffer "facility effects".
- **Secondary absolute instability.** A convectively unstable basic flow can have instantaneous profiles that are absolutely unstable to much smaller-scale secondary waves, e.g. inflectional profiles above low-speed streaks (Landahl 1972) (p. 498–499).

**Marginally globally stable flows (§5, p. 499–502)**
- Forcing the GL model (eq. 49) at x_f, with damping μ ≪ 1, ε² ≪ μ ≪ ε, forcing f = μF and detuning ω_f = ω_G0,r + μΔΩ, gives a Hermite–Gaussian mode shape (eqs. 50–55). Its amplitude is B(T) = F H(x_f)e^{−iΔΩT}/(Ω_s,i + iΔΩ) (eq. 57, p. 501), which is "precisely the response of a slightly damped linear oscillator near resonance".
- **The preferred (jet-column) mode is read as such a weakly damped global mode** (p. 501).
  - Ho & Huerre (1984) defined it negatively, as not the end of a subharmonic sequence from the nozzle. Its St is nearly independent of Re and of the initial shear-layer thickness: St ≈ 0.25 for the two-dimensional jet and St ≈ 0.41 for the axisymmetric, low-subsonic, top-hat jet.
  - Monkewitz et al. (1987) fitted the constants of eq. 50 to two-dimensional-jet data. The global mode's amplitude is tiny at the nozzle, which lies upstream of the ω₀,ᵢ maximum. That justifies ignoring the nozzle and explains why St is insensitive to boundary conditions.
  - The global gain curve (eq. 57) is sharper than the locally parallel total-gain curve. It predicts **St = 0.225 against 0.25 measured** (Fig. 9, p. 501–502).
  - Later contradicted: see Relevance ([Garnaud 2013](garnaud-2013-preferred-mode-incompressible-jets.md)).

**Globally unstable flows (§6, p. 502–516)**
- **Wakes: frequency selection is contested within the paper.** Hannemann & Oertel's (1989) simulation agrees closely with Koch's ω₀(X_t). This "appears to contradict our claim" (eq. 40). The authors conjecture that ω₀,r changes little between X_t and X_s, but have no evidence (p. 502).
- **Transient experiments prove the Hopf bifurcation** (p. 502–503; Fig. 10). Mathis et al. (1984) and Strykowski (1986) stepped Re from just below to just above critical (Fig. 10: R ≈ 43 → 49, R_c ≈ 46). They saw exponential temporal growth, saturation, and Landau dynamics near critical.
  - Global linear stability on computed non-parallel base flows confirmed the critical point (Zebib 1987; Jackson 1987) (p. 503).
- **Cylinder sequence** (Monkewitz 1988a, analytic two-parameter profiles fitted to measured means; p. 504). The transitions run convective at R⁽ᴰ⁾ ≈ 5, first local absolute instability at R⁽ᴰ⁾ ≈ 25, and vortex shedding at R⁽ᴰ⁾ = 45–47, by which point much of the near wake is absolutely unstable.
  - The intermediate absolute transition is not observable, because it belongs to "fictitious" locally parallel profiles (p. 504).
- **Reverse flow is neither necessary nor sufficient in the obvious way.** The half-immersed "floating wake" of Triantafyllou & Dimas (1989) is convectively unstable at low Froude number despite reverse mean flow. As F → ∞ it recovers the von Kármán branch (Fig. 11, p. 504–505).
- **The body barely matters.** G. S. Triantafyllou fed the computed near-wake mean profile in as inflow to a run without the cylinder, and the flow was "virtually indistinguishable" (Fig. 12, p. 505). This supports ignoring the body in wake stability analyses.
- **Vortex-sheet road map** (eqs. 59–60, Fig. 13; Yu & Monkewitz 1988; p. 505–506). An inviscid jet/wake bounded by two vortex sheets, with velocity ratio Λ and density ratio S, is invariant under S → 1/S, Λ → −Λ, s → −s (s = ±1 sinuous/varicose). Its absolute regions show three things, all "verified experimentally" (p. 506):
  - reverse flow (|Λ| > 1) promotes absolute instability, while co-flow and base bleed suppress it;
  - in a wake the sinuous (von Kármán) mode goes absolute first, in a jet the varicose mode;
  - **low density suppresses absolute instability in a wake but promotes it in a jet.**
- **Base bleed.** Wood's (1964) critical bleed agrees with the stability result that the wake is everywhere convective for Λ > −0.84 (Monkewitz & Nguyen 1987) (p. 507).
  - Inoue's (1985) screens at R = 3000 show an abrupt loss of shedding between open-area ratio 0.37 and 0.39 (Fig. 14). A sinuous far-wake instability then remains, but it is noise-driven, not fed by a near-wake wavemaker (p. 507).
- **Heated wakes** (Fig. 15, p. 507–509). Suppression of absolute instability comes mainly from the density change (inertia), not the temperature dependence of viscosity.
  - The measured global-instability boundary (Berger & Schumm 1988) lies "well inside" the region of local absolute instability, as the necessary-not-sufficient argument predicts.
  - Mapping R⁽ᴰ⁾ to the local profile Re is the largest uncertainty in such comparisons (p. 509).
- **Other suppression methods with no stability explanation yet** (p. 509–511):
  - Strykowski's small control cylinder (Fig. 16);
  - Berger & Schumm's high-frequency oscillation of an oblong cylinder, forced at slightly under twice the natural frequency (560 Hz against 313 Hz) at R = 81 with R_Gc = 80. Switching the forcing off and on gives exponential growth to saturation and then decay (Fig. 17).
- **Low-density jets** (p. 511–513).
  - Stability calculations (Monkewitz & Sohn 1986, 1988, axisymmetric; Yu & Monkewitz 1988, planar) show that **homogeneous incompressible jets are everywhere convectively unstable**. The round jet develops local absolute instability below **S = ρ_j/ρ∞ = 0.72**: M = 0, axisymmetric disturbances, near-nozzle profile with δ_ω = 8.4% of D. The zero-group-velocity frequencies scale as St_D = 0.25–0.5. The planar jet goes absolute below S_t = 0.90 (p. 511).
  - Experiments found strong self-excited oscillations below S ≈ 0.6 in a He/N₂ jet (Kyle 1988; Sreenivasan et al. 1989a) and below S = 0.72 in a hot-air jet (Monkewitz et al. 1988a, 1989a) (p. 512).
  - They need a laminar initial shear layer (low Re) and a very quiet facility. At higher Re and Mach number the jets "revert back" to homogeneous-jet behaviour, "for reasons that are not yet completely understood" (p. 512).
  - The hot-jet near-field spectrum peak stands about 30 dB above the background (Fig. 18a). The saturated amplitude against S follows eq. 58 for two modes, MI and MII (Fig. 18b, p. 512–513).
- **Self-excitation spreads the jet dramatically**, with half-angles sometimes over 45° (Fig. 19). The spreading is strongly non-axisymmetric: two to six "side jets", attributed to the Widnall instability of the primary rings (Monkewitz et al. 1989c; Fig. 20, x/D = 3, S = 0.44, R = 7500) (p. 512–515). The authors suggest self-excited states may be "associated with optimum mixing" (p. 513).
- **Capillary jets** (p. 516).
  - The Rayleigh breakup instability becomes absolute for Weber number W = σ/(ρU²r) > 0.32 (inviscid; Leib & Goldstein 1986a, b).
  - Experiments over W ≈ 0.06–0.5 (orifice Re ≈ 500 down to 140) show the breakup length falling sharply beyond W₀ ≈ 0.3 and reaching zero, i.e. dripping, near W₀ ≈ 0.5 (R₀ ≈ 180). This is read as a global mode once the absolute region is long enough: "the dripping of a faucet is in a broad sense related to von Kármán vortex shedding".

**Further considerations (§7, p. 516–523)**
- **How to recognise a global mode** (§7.1, p. 516–518). Only global properties are observable; local absolute instability is a property of fictitious parallel flows. All tests need very low uncontrolled background noise. "Easy" steady-periodic tests give supporting evidence, in rising order of strength:
  1. single-point spectra, the weakest, since a clean spatial instability in a laminar shear layer can look just as peaky (Fig. 18a);
  2. forced **lock-in** sweeps past the suspected global frequency or its rational multiples;
  3. **response against forcing amplitude**: linear (slope 1) for an amplifier, and insensitive for an oscillator far from critical, with |B|_sat(β) ≈ |B|_sat(0) + β/[2|B|²_sat(0)] for β ≪ |B|³_sat(0). Near critical the dependence is stronger. In Fig. 21, a He/N₂ jet at S = 0.22 is flat at M = 0.08 (self-excited) and has slope 1 at M = 0.032 and 0.024 (globally stable);
  4. **saturation amplitude against a control parameter** (Fig. 18b), "strong evidence" for a supercritical Hopf bifurcation. A subcritical bifurcation is "far more complicated", and the authors know of no example.

  "Hard" transient tests give conclusive proof (Mathis et al. 1984; Strykowski 1986). They follow the mode from inception through linear growth to saturation, fit all the complex Landau coefficients, and should check that the *same* Landau equation holds at every point in space (p. 518).
- **Control** (§7.2, p. 518–519). Destabilising a global mode with a single sensor and actuator is easy (round jet: Wehrmann 1957; Reisenthel 1988). Suppressing one is hard, possible only very near critical (Berger 1964, 1967).
  - The explanation (Monkewitz 1989a, GL model): suppression must damp *all* global modes, which are O(ε) apart in frequency (eq. 46), so stabilising one usually destabilises another. Where simple feedback works there was probably only one unstable mode.
  - The best route to suppression is to modify the flow so that no region of absolute instability remains (p. 519).
- **Chaos** (§7.3, p. 519–521).
  - *Globally unstable flows* behave like small closed systems. A single-point time series characterises them, the limit cycle is a reference state, and forcing maps Arnold tongues. Examples are the oscillating-cylinder wake (Olinger & Sreenivasan 1988), the excited helium jet (Sreenivasan et al. 1989a), and forced-wake simulations with lock-in and low-dimensional attractors (Karniadakis & Triantafyllou 1989) (p. 519).
  - *Convectively unstable flows* are extremely noise-sensitive, so intrinsic chaos cannot be told from amplified noise (p. 520). In GL simulations (Deissler 1985, 1987a), broadband noise is selectively amplified and the nonlinear wave train goes sideband-unstable downstream. **Random wandering of the breakup point gives intermittency** ("noise-sustained structures"). A subcritical GL gives spots and slugs (Deissler 1987c).
  - Fixed-point Lyapunov exponents are always negative in convective flows. Deissler & Kaneko (1987) instead use a velocity-dependent exponent, maximised over frame speed (p. 520–521).
- **Closed flows** (§7.4, p. 521–522). In Cross's coupled-GL model of binary-fluid convection, even a convectively unstable finite box holds "confined" travelling-wave states and periodically alternating "blinking" states. Absolute instability marks a full-cell state, all confirmed experimentally. Bensimon et al. (1989) found confined states that local theory cannot explain (p. 522).
- **Fronts** (§7.5, p. 522–523). The Dee–Langer linear marginal-stability speed V_F is the ray along which σ = 0 (eqs. 61–63). It holds only for supercritical bifurcations; subcritical ones follow a nonlinear marginal-stability criterion (Ben-Jacob et al. 1985; van Saarloos 1988, 1989) (p. 523).

## Setup / method
A theory review with no new data. The model chain, assumptions and what each step needs:

| Step | Model | Key assumptions | Output |
|---|---|---|---|
| Local, parallel | Dispersion relation D[k, ω; R] = 0 from Orr–Sommerfeld-type ODEs on U(y; R); the y-dependence is suppressed to work in (x, t) (p. 477) | Strictly parallel base flow; single discrete temporal mode ω(k); single second-order saddle (p. 481, 483) | ω_i,max, k₀, ω₀; class: stable, convective or absolute |
| Impulse response | Double Fourier–Laplace integral (eq. 9), residue in ω, steepest descent in k (eqs. 10–12) | Causal L-contour above all singularities; F deformable through the saddle (p. 480–482) | Wavepacket G(x, t); σ(x/t) |
| Weakly non-parallel | Operator L[−i∂ₓ, i∂ₜ; θ(X), ε dθ/dX, …; R] with X = εx (eqs. 26–27) | ε = λ/L ≪ 1; doubly infinite domain with decay at ±∞; single real-axis maximum of ω₀,ᵢ; analytic ω₀(X) with a saddle X_s (p. 487–495) | Local ω₀(X), ω_max(X); global ω_G |
| Model equation | Linearised GL (eq. 18) with ω₀(X) parabolic and k₀(X) linear about X_s (eqs. 30–31, ω_0XX,i < 0) | Leading Taylor terms only; justified a posteriori as the inner equation of the WKB problem (eq. 45) | Global modes (Fig. 6), eq. 46 |
| Nonlinear amplitude | Landau equation (eq. 47) for the global amplitude B(t) | Near the global bifurcation R_Gc; supercritical (c₂,r > 0) | √(R − R_Gc) saturation, forced response |
| Forced marginal case | Forced GL (eq. 49), multiple scales with damping μ (ε² ≪ μ ≪ ε) | Forcing amplitude O(μ) near resonance | Damped-oscillator response, eq. 57 |
| Wake/jet road map | Two vortex sheets, inviscid and incompressible, uniform velocity and density (eq. 59) | Zero shear-layer thickness; symmetry (eq. 60) lost at finite thickness (p. 506) | Absolute regions in (S, Λ), Fig. 13 |

- **Numerics** are not given for any cited computation. The applied results are local LS on analytic profile families fitted to measured means (wakes: Monkewitz 1988a; jets: Monkewitz & Sohn 1988). Global LS is cited for cylinders (Zebib 1987; Jackson 1987) and the sphere (Kim & Pearlstein 1989, Table 3). The NE results are spatial DNS (Buell & Huerre 1988; Hannemann & Oertel 1989; Karniadakis & Triantafyllou 1989).
- **How each diagnostic depends on the data** (§7.1):
  - The local/global classification needs only *mean* profiles, so non-time-resolved PIV or pitot surveys are enough. The weak link is matching the measured mean to a model profile family and choosing the local Re (p. 504, 509).
  - Single-point spectra, lock-in maps and response-against-forcing curves need time-resolved point sensors (hot wire or microphone) and controlled forcing. The saturation-amplitude curve needs a long time-resolved record at each control-parameter value. It is a block-averaged quantity, with no resolution in time.
  - Transient (Landau) identification needs time-resolved signals through the growth phase, ideally at many points, so that the same Landau coefficients can be checked everywhere (p. 518). This is where an instantaneous amplitude (Hilbert envelope, HPOD) is the natural tool, although the paper predates those methods.
- **Facilities in the reviewed experiments** (from the Appendix): heated axisymmetric jet, 5 × 10³ < R < 5 × 10⁴, 0.03 < M < 0.3 (Monkewitz et al. 1988a, 1989a, c); He–N₂ jet, 0.02 < M < 0.5 (Kyle; Sreenivasan et al.); feedback-forced jet, 3.9 × 10⁴ < R < 8.5 × 10⁴, M ≈ 0, hot wire to acoustic driver (Reisenthel 1988) (Table 4, p. 531).

## Key equations
All read from rendered pages. ψ ∝ e^{i(kx − ωt)}; subscripts r, i are real and imaginary parts.

- **Dispersion relation and operator** (eqs. 1–2, p. 477–478): $D[k,\omega;R]=0$, $\;D\left[-i\partial_x,\,i\partial_t;R\right]\psi(x,t)=0$.
- **Impulse response** (eq. 3, p. 478): $D[-i\partial_x,i\partial_t;R]\,G=\delta(x)\delta(t)$; $\;G(x,t)=\dfrac{1}{(2\pi)^2}\displaystyle\int_F\int_L\dfrac{e^{i(kx-\omega t)}}{D[k,\omega;R]}\,d\omega\,dk$ (eq. 9, p. 480).
- **Single-mode form** (eq. 10, p. 481): $G=-\dfrac{i}{2\pi}H(t)\displaystyle\int_{-\infty}^{\infty}\dfrac{e^{i[kx-\omega(k)t]}}{\partial_\omega D[k,\omega(k);R]}dk$.
- **Wavepacket** (eqs. 11–12, p. 481–482): $\partial\omega/\partial k(k_*)=x/t$, $\;G\sim-(2\pi)^{-1/2}e^{i\pi/4}\dfrac{e^{i[k_*x-\omega(k_*)t]}}{\partial_\omega D[k_*,\omega(k_*)]\,[\omega''(k_*)\,t]^{1/2}}$, with ray growth $\sigma=\omega_i(k_*)-(x/t)k_{*i}$.
- **Criteria** (eqs. 13–17, p. 482–483): $\partial\omega_i/\partial k(k_{max})=0$, $\omega_{i,max}\gtrless0$ (unstable/stable); $\partial\omega/\partial k(k_0)=0$, $\omega_0=\omega(k_0)$, $\omega_{0,i}\gtrless0$ (absolute/convective); $\omega_{0,i}\le\omega_{i,max}$.
- **Linearised Ginzburg–Landau** (eq. 8, p. 478): $\partial_t\psi+\omega_k\partial_x\psi-\tfrac{i}{2}\omega_{kk}\partial_x^2\psi+i\omega_R(R-R_c)\psi=0$, with ω_k real > 0 and ω_kk, ω_R complex, ω_kk,i < 0. Recast form (eq. 18, p. 483): $\partial_t\psi-\omega_{kk}k_0\partial_x\psi-\tfrac{i}{2}\omega_{kk}\partial_x^2\psi+i\left[\omega_0(R)+\tfrac{\omega_{kk}}{2}k_0^2\right]\psi=0$, with dispersion relation $\omega-\omega_0=\tfrac{\omega_{kk}}{2}(k-k_0)^2$.
  > My check: eq. 8 gives ω = ω_k k + ½ω_kk k² + ω_R(R − R_c), so k₀ = −ω_k/ω_kk and ω₀,ᵢ = ω_R,i(R − R_c) + ½ω_k² ω_kk,i/|ω_kk|². Absolute instability needs ω_R,i(R − R_c) > ½ω_k²|ω_kk,i|/|ω_kk|². Eq. 18 follows from eq. 8 exactly.
- **Spatial analytic signal** (eqs. 19–20, p. 484): $\Psi(x,t)=\left[\delta(x)+\dfrac{i}{\pi x}\right]*\psi(x,t)$, $\;\psi=\Psi_r$. Its spectrum holds only k_r > 0, so |k| can be replaced by k.
- **Signalling response** (eqs. 21–23, p. 485): forcing δ(x)H(t)e^{−iω_f t} gives a transient like eq. 12 plus $+i\dfrac{e^{i[k^+(\omega_f)x-\omega_ft]}}{\partial_kD[k^+,\omega_f]}H(x)-i\dfrac{e^{i[k^-(\omega_f)x-\omega_ft]}}{\partial_kD[k^-,\omega_f]}H(-x)$.
- **Slow variation** (eqs. 24–27, p. 487–488): $1/L\simeq\theta^{-1}d\theta/dx$, $\varepsilon\sim\lambda/L\ll1$, $X=\varepsilon x$, $D[k,\omega;X,R]\equiv L[k,\omega;\theta(X),0,\dots;R]$.
- **Local absolute and maximum frequencies** (eqs. 28–29, p. 488): $\partial_k\omega(k_0;X;R)=0$, $\omega_0(X;R)=\omega(k_0;X;R)$; $\partial_k\omega_i(k_{max};X;R)=0$, $\omega_{max}(X;R)=\omega(k_{max};X;R)$.
- **GL with slowly varying coefficients** (eqs. 30–31, p. 488): $\omega_0(X;R)=\omega_s(R)+\tfrac{\omega_{0XX}}{2}(X-X_s)^2$, $k_0(X)=k_s+k_{0X}(X-X_s)$; ω_0XX,i < 0, ω_s,i(R) increasing with R.
- **WKB signalling** (eqs. 32–35, p. 490): $\phi^\pm\sim A^\pm(X)\exp\!\left[\tfrac{i}{\varepsilon}\int k^\pm(X;\omega_f)dX\right]$, $\;i\,\partial_k\omega[k^\pm]\,dA^\pm/dX+p^\pm(X)A^\pm=0$.
- **Global mode** (eqs. 36–37, p. 491): $\psi=\phi(x;X)e^{-i\omega_Gt}$, $\omega_{G,i}\gtrless0$ (globally unstable/stable).
- **Frequency selection** (eqs. 38–40, p. 493–495): $\partial\omega_0/\partial X(X_s)=0$, $\omega_s=\omega_0(X_s)$; $\omega_{G,i}\le\omega_{0,i}(X_s)\le\omega_{0,i}|_{max}$; equivalently $\partial_k\omega=\partial_X\omega=0$ at $(k_s,X_s)$.
- **Higher order** (eqs. 41–46, p. 495–496): $\omega_G\sim\omega_s+\varepsilon\omega_2$. Inner region $\bar X=(X-X_s)/\varepsilon^{1/2}$: $\tfrac12\omega_{kk}\bar A''-i\omega_{kk}k_{0X}\bar X\bar A'+\left[\omega_2-\delta\omega-\tfrac12(\omega_{kk}k_{0X}^2+\omega_{0XX})\bar X^2\right]\bar A=0$ (eq. 45). Discrete spectrum $\omega_{Gn}\sim\omega_s+\varepsilon\left[\delta\omega-\tfrac{i}{2}\omega_{kk}k_{0X}+(\omega_{0XX}\omega_{kk})^{1/2}\left(n+\tfrac12\right)\right]$ (eq. 46).
- **Landau** (eqs. 47, 58, p. 497, 503): $\dfrac{dB}{dt}=c_1(R-R_{G_c})B-c_2|B|^2B+\beta$; $|B|_{sat}\propto(R-R_{G_c})^{1/2}$ for β = 0, R ≥ R_Gc. With forcing (p. 517): $|B|_{sat}(\beta)\approx|B|_{sat}(0)+\beta/[2|B|^2_{sat}(0)]$ for $\beta\ll|B|^3_{sat}(0)$.
- **Pressure Poisson equation** (eq. 48, p. 498): $\nabla^2p=-\dfrac{\partial^2(u_iu_j)}{\partial x_i\partial x_j}$.
- **Forced marginal global mode** (eqs. 49–57, p. 499–501). Forced GL with $f\delta(x-x_f)e^{-i\omega_ft}$, |ψ| → 0 at ±∞. Write $\omega_s=\omega_{s,r}+i\mu\Omega_{s,i}$ and similar for ω_0XX, ω_kk, and $k_{0X}=ik_{0X,i}+\mu K_{0X,r}$ (eq. 50). Then $\omega_{G0}=\omega_{s,r}+\tfrac{\varepsilon}{2}[(\omega_{0XX,r}\omega_{kk,r})^{1/2}+k_{0X,i}\omega_{kk,r}]+i\mu[\Omega_{s,i}+O(\varepsilon)]$ (eq. 51), with $\omega_f=\omega_{G0,r}+\mu\Delta\Omega$ and $f=\mu F$ (eq. 52). The solution is $\psi\sim E(x)e^{-i\omega_{G0,r}t}\{B(T)\phi_1+\mu\phi_2\}$ with $E=\exp[i\int_0^xk_0dx']$ and T = μt (eq. 53); $\phi_1=e^{-\xi^2/4}\mathrm{He}_0(\xi)$, $\xi=C(x-x_s)$, $C=[4\varepsilon^2\omega_{0XX,r}/\omega_{kk,r}]^{1/4}$ (eqs. 54–55); and $B(T)=\dfrac{FH(x_f)e^{-i\Delta\Omega T}}{\Omega_{s,i}+i\Delta\Omega}$, $H(x_f)=iC\omega_{kk,r}(8\pi)^{-1/2}E^{-1}(x_f)e^{-\xi_f^2/4}$ (eq. 57).
  > Eq. 51 follows from eq. 46 with n = 0, δω neglected and the scalings of eq. 50 (my check). Eq. 56 is printed with "dG/dT − Ω_s,i G", where B is presumably meant.
- **Vortex-sheet jet/wake** (eq. 59, p. 506): $S\dfrac{(1+\Lambda-\omega/k)^2}{(1-\Lambda-\omega/k)^2}=\dfrac{e^k+se^{k}}{e^k-se^{k}}$ *as printed*. Here s = +1 is sinuous and s = −1 varicose, $\Lambda=(U_{wake/jet}-U_\infty)/(U_{wake/jet}+U_\infty)$ and $S=\rho_{wake/jet}/\rho_\infty$. Symmetry: S → S⁻¹, Λ → −Λ, s → −s (eq. 60).
  > The printed right-hand side is degenerate, with both exponents +k. My derivation (half-width as length scale, velocities scaled by (U_j + U∞)/2) gives $-\dfrac{e^k+se^{-k}}{e^k-se^{-k}}$, i.e. −coth k (sinuous) and −tanh k (varicose). The minus sign is needed for complex roots, and the eq. 60 symmetry holds either way. Verify against Yu & Monkewitz.
- **Dee–Langer front** (eqs. 61–63, p. 522): $\partial\omega/\partial k(k_F)=V_F$, $\omega_i(k_F)-V_Fk_{F,i}=0$; for eq. 8, $V_F=\omega_k\pm|\omega_{kk}|\left[-2\omega_{R,i}(R-R_c)/\omega_{kk,i}\right]^{1/2}$.
  > My check: σ(v) = ½(v − ω_k)²ω_kk,i/|ω_kk|² + ω_R,i(R − R_c) for eq. 8, and σ = 0 gives eq. 63 exactly. The trailing front speed V_F⁻ = 0 is the same condition as ω₀,ᵢ = 0, so absolute instability means the rear edge of the packet moves upstream.

## Data tables
**Thresholds collected in the review** (text and Appendix Tables 1–4; Λ = (U₁ − U₂)/(U₁ + U₂) or (U_c − U∞)/(U_c + U∞); S density ratio wake or jet/ambient):

| Flow | Model or experiment | Result | Cited source | Page |
|---|---|---|---|---|
| Plane mixing layer, tanh, R = ∞, S = 1 | Local LS | Absolute for Λ ≥ 1.315 | Huerre & Monkewitz 1985 | Table 2, p. 526 |
| Plane mixing layer, broken line | Local LS | Absolute for Λ ≥ 1 | Balsa 1987 | Table 2, p. 526 |
| Mixing layer with wake component, tanh density | Local LS | Probable absolute for Λ = 0.45 and S < about 0.12 | Koochesfahani & Frieler 1987 | Table 2, p. 527 |
| Compressible/inhomogeneous mixing layer | Local LS | Absolute–convective boundary in (M, S, Λ) | Pavithran & Redekopp 1989; Djordjevic et al. 1989; Jackson & Grosch 1989 | Table 2, p. 526 |
| Plane Poiseuille, all R | Local LS | Convective at all R | Deissler 1987b | Table 1, p. 525 |
| Rotating disk, 249 < R < 570 | LE + local LS | Convective | Wilkinson & Malik 1985; Mack 1985 | Table 1, p. 525 |
| Compliant wall | Local LS | Absolute above a critical free-stream velocity | Brazier-Smith & Scott 1984; Carpenter & Garrad 1986 | Table 1, p. 525 |
| 2-D wake, sech², R = ∞ | Local LS | Absolute for Λ ≤ −0.904 (von Kármán mode) | Betchov & Criminale 1966; Mattingly & Criminale 1972; Monkewitz & Nguyen 1987 | Table 3, p. 528 |
| 2-D wake, sech², Λ = −1, finite R | Local LS | Absolute for R > about 45 | Nakaya 1976 | Table 3, p. 528 |
| Blunt-trailing-edge wake profiles | Local LS | Everywhere convective for Λ > −0.84 (matches Wood's critical bleed) | Monkewitz & Nguyen 1987 | p. 507 |
| Cylinder wake (fitted profiles) | Local LS vs LE | Convective at R⁽ᴰ⁾ ≈ 5; absolute at ≈ 25; shedding at 45–47 | Monkewitz 1988a | p. 504 |
| Wake behind screens, R = 3000 | LE | Shedding stops between open-area ratio 0.37 and 0.39 | Inoue 1985 | p. 507 |
| Oblong cylinder | LE | R_Gc = 80; suppression by forcing at 560 Hz vs natural 313 Hz at R = 81 | Berger & Schumm 1988 | Fig. 17, p. 511 |
| Sphere wake | Global LS | Global instability (Hopf) at R = 175 | Kim & Pearlstein 1989 | Table 3, p. 530 |
| Axisymmetric wake | Local LS | Absolute for the first helical mode only | Monkewitz 1988b | Table 3, p. 530 |
| Round jet, vortex sheet | Local LS | Convective for 1.6 < M < 3.8 (Tam 1971); absolute for M = 0, S ≤ 0.6, axisymmetric mode | Michalke 1970; Huerre & Monkewitz 1985 | Table 4, p. 530 |
| Round jet, profile families | Local LS | S_max = 0.72 for absolute instability at M = 0 (δ_ω/D = 8.4%, m = 0); absolute St_D 0.25–0.5 | Monkewitz & Sohn 1986, 1988 | p. 511; Table 4, p. 530 |
| Round jet | Local spatial LS | Implies absolute for S = 0.5 | Michalke 1971, 1984 | Table 4, p. 530 |
| Planar jet, profile families | Local LS | S_max = 0.90 | Monkewitz 1988c; Yu & Monkewitz 1988 | p. 511; Table 4, p. 531 |
| He/N₂ round jet | LE | Self-excited below S ≈ 0.6 | Kyle 1988; Sreenivasan et al. 1989a | p. 512 |
| Hot-air round jet | LE | Self-excited below S = 0.72; MI onset near S ≈ 0.73, MII near 0.62–0.63 at R = 7500 (onsets read from Fig. 18b) | Monkewitz et al. 1988a, 1989a | p. 512–513 |
| Capillary jet | Local LS | Absolute for W > 0.32 (inviscid) | Leib & Goldstein 1986a, b | p. 516 |
| Capillary jet | LE | Breakup length falls beyond W₀ ≈ 0.3; dripping at W₀ ≈ 0.5 (R₀ ≈ 180) | Monkewitz et al. 1988b | p. 516 |
| Preferred mode, homogeneous jets | LE (review) / global GL model | St ≈ 0.25 (2-D), 0.41 (round, top hat); 2-D model 0.225 vs 0.25 | Ho & Huerre 1984; Monkewitz et al. 1987 | p. 501 |

## Figures worth remembering
- **Fig. 1 (p. 479):** the eight impulse-response sketches in the (x, t) plane (single wave, stationary, counter-propagating; stable, convective, absolute). This is the standard picture of the definitions.
- **Fig. 2 (p. 481):** pinching of k⁺(ω) and k⁻(ω) as L is lowered; the cusp in ω(k) at ω₀.
- **Fig. 3 (p. 486):** spatial branches of GL and their interchange when the flow turns absolute.
- **Fig. 4 (p. 489):** the four classes in terms of ω_i,max(X) and ω₀,ᵢ(X).
- **Fig. 6 (p. 492):** GL global mode against ω₀,ᵢ(x). The mode peaks well downstream of the ω₀,ᵢ maximum (the wavemaker).
- **Fig. 7 (p. 494):** contours of ω₀,ᵢ in the complex X-plane with the saddle X_s, hills and valleys, and the O(ε^{1/2}) inner region.
- **Fig. 8 (p. 499):** time traces from Buell & Huerre's spatial mixing-layer simulation, showing the computational-box feedback loop.
- **Fig. 9 (p. 502):** normalised gain against St for the planar jet: global-mode model (peak ≈ 0.225) against locally parallel theory (broader and flatter, peak near St ≈ 0.3; both peaks read from the figure).
- **Fig. 10 (p. 503):** Strykowski's step in Re (43 → 49, R_c ≈ 46): exponential growth of u′ and saturation within about 1–2 s.
- **Fig. 13 (p. 506):** absolute regions of the vortex-sheet jet and wake in the (S, Λ) plane, the "road map".
- **Fig. 15 (p. 509):** absolute boundary of the heated-cylinder wake in (S, R) for Λ = −1 and −1.25. The measured global boundary of Berger & Schumm (squares, labelled R⁽ᴰ⁾ = 48 [Λ_min = −1.05] to R⁽ᴰ⁾ = 80 [Λ_min = −1.35]) lies inside the absolute region.
- **Fig. 17 (p. 511):** switch-off and switch-on of high-frequency forcing on an oblong cylinder, with a log|u′| envelope showing linear growth then saturation. A clean "hard" experiment.
- **Fig. 18 (p. 513):** (a) hot jet (S = 0.47, R = 7500) near-field spectrum at (x/D, r/D) = (0.2, 1.0). The main peak is near St = fD/U_j ≈ 0.45 at about 76 dB, with further peaks near 0.23 and 0.89, against a broadband cold jet (values read from the figure). (b) p′_rms/q_j against S for modes MI and MII with eq. 58 fits.
- **Fig. 19–20 (p. 514–515):** dramatic spreading and side jets of self-excited helium and hot jets.
- **Fig. 21 (p. 517):** jet response (dB) against excitation voltage for a He/N₂ jet at S = 0.22. Flat when self-excited (M = 0.08), slope 1 when globally stable (M = 0.032, 0.024). This is the cleanest graphical test for amplifier against oscillator.

## Notation
- x, y, t: streamwise, cross-stream, time; X = εx: slow coordinate; ε ~ λ/L: non-parallelism parameter; λ: instability wavelength; L: base-flow evolution length; θ: momentum or vorticity thickness.
- D[k, ω; R]: dispersion relation; L[…]: slowly varying operator; R: control parameter (Reynolds number or another); R_c: onset of instability; R_t: convective → absolute transition; R_Gc: global bifurcation.
- k, ω: complex wavenumber and frequency; k±(ω): spatial branches from the upper/lower half k-plane (x > 0 / x < 0); F, L: Fourier and Laplace contours.
- k*: saddle along a ray x/t; σ: growth along a ray; k_max, ω_i,max: maximum temporal growth; k₀, ω₀: absolute wavenumber and frequency (zero group velocity); ω₀,ᵢ: absolute growth rate; ω₀,ᵢ|max: its maximum over real X; X_t: absolute/convective boundary; X_s, k_s, ω_s: complex saddle and its values.
- ω_G, ω_Gn: global frequencies (n = 0, 1, …); φ(x; X): global eigenfunction; A±, Ā: amplitude functions; δω: nonlocal correction.
- GL coefficients: ω_k (group velocity), ω_kk, ω_R, ω_0XX, k_0X; μ: damping parameter of a marginal global mode; F, f, x_f, ΔΩ: forcing amplitude, location and detuning; T = μt; He₀: Hermite polynomial.
- B(t): global-mode amplitude; c₁, c₂: Landau constants; β: forcing.
- Λ: velocity ratio; S: density ratio (ρ_j/ρ∞ or ρ_c/ρ∞); s = ±1: sinuous/varicose; R⁽ᴰ⁾: cylinder Reynolds number; F: Froude number U∞(gD/2)^{−1/2}; W: Weber number σ/(ρU²r); δ_ω: vorticity thickness.
- V_F, k_F: front speed and wavenumber.
- Appendix acronyms: LS linear stability, LE laboratory experiment, NE numerical experiment, CI/AI convective/absolute instability, GLI global instability.

## Relevance to this project
This is the founding reference for the vocabulary used across the library's linear-model and screech notes: absolute/convective, k⁺/k⁻ pinch, oscillator/amplifier, wavemaker, global mode, Landau tests. [Nogueira 2021](nogueira-2021-absolute-instability-shock-containing-jets.md) builds its Floquet saddle criterion on it (p. 6, 13 of that note). [Schmidt 2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md) uses its k⁺–k⁻ pinch for end conditions (p. 19), and [Towne 2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md) treats saddles as WKB turning points in the same spirit (p. 21–28). The CLAUDE.md research focus on "resonance and feedback processes" is exactly the oscillator class defined here.

**Where later work agrees or disagrees**
- **Preferred mode: contradicted.** This review treats the jet-column mode as a weakly damped global mode and gets St 0.225 against 0.25 for a planar jet (p. 501). For the round incompressible jet, [Garnaud 2013](garnaud-2013-preferred-mode-incompressible-jets.md) finds every global mode stable and *no* isolated one. The preferred mode there is a pseudo-resonance of a non-normal operator (p. 5, 12 of that note, which names this conjecture). The library's linear-models page follows Garnaud. The planar-jet result here rests on a GL model with fitted constants, not a global operator.
- **Necessary but not sufficient: confirmed.** The GL resolvent of [Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) needs A > 1.25 for absolute instability at the inlet but A ≈ 1.6 for global instability (p. 19–21 of that note). That is the Chomaz et al. scenario described here (p. 492–493). [Towne 2018](towne-2018-spod-relationship-dmd-resolvent.md) uses the doubly infinite parabolic-μ GL of eq. 30, tuned to be globally stable.
- **Heated turbulent jets stay convective.** [Gudmundsson 2011](gudmundsson-2011-instability-wave-models-near-field-jets.md) rules out absolute instability for its hot jets, citing Monkewitz & Sohn (p. 111 of that note). That fits this review: the S < 0.72 threshold is for M = 0, thin laminar shear layers (δ_ω/D = 8.4%) and quiet facilities, and jets "revert back" at higher Re and M (p. 511–512).
- **Self-excited mode reproduced from a mean flow.** [Oberleithner 2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md) applies the §7.1 tests to a swirling jet: |A|²_sat linear in swirl (Hopf, eq. 58 here) and lock-in thresholds. It shows that local spatial theory at the global frequency reproduces the convective part of a self-excited mode, failing only at the wavemaker. That is the Fig. 6 picture.
- **Frequency selection: still contested.** The authors' complex-X saddle criterion (eq. 38) is contradicted within the paper by Hannemann & Oertel's support for Koch's X_t criterion (p. 502).
  - From memory (not in the library): later fully nonlinear theory (Pier, Huerre, Chomaz and co-workers, around 1998–2002) found that saturated global modes lock to ω₀ at the upstream boundary of the absolute region, which is close to Koch's criterion. The linear X_s rule would then hold only near onset. Treat this as unverified context.

**Screech, the PyFR staging LES and the oscillator question**
- The library's "self-excited or forced?" question for screech is the one this paper frames. Its answer is that only global, not local, properties can be measured (p. 516). [Nogueira 2021](nogueira-2021-absolute-instability-shock-containing-jets.md)'s positive ω₀,ᵢ on a model base flow is a *local* statement. By eq. 39 it is necessary but not sufficient for a global mode, and the global frequency is ω₀ at the complex saddle X_s, not at any real station.
  - The 2–6% agreement of the local saddle with screech then implies that ω₀,r varies little along x. This is the same conjecture the authors make for wakes (p. 502), and it is my inference that it carries over.
  - The slightly stable global mean-flow mode of [Farghadan 2026](farghadan-2026-wave-interactions-screeching-jet.md) is not a direct test of this theory. This paper linearises about base flows near onset, not about the mean of a saturated state.
- **Ranked experimental tests (p. 516–518) map directly onto lab and LES work:**
  1. A single microphone peak is the weakest evidence.
  2. Lock-in maps under plasma or acoustic forcing near St_s (cf. [Esfahani 2021](esfahani-2021-control-twin-rectangular-jet-coupling.md), which forced twin jets at the screech St).
  3. Response against forcing amplitude, slope 1 for an amplifier and flat for an oscillator (Fig. 21).
  4. Saturated amplitude against NPR as a √(R − R_Gc) Hopf test (Fig. 18b, eq. 58).
  5. Transient growth after a step in NPR, fitting c₁ and c₂ of the Landau equation and checking they are the same at every point.

  In the PyFR continuation driver (`Simulations/PyFR_Staging_Continuation/`) each NPR step is a "hard" experiment of this kind. The Hilbert envelope of a probe signal or of SPOD-reconstructed bands gives |B|(t) to fit eq. 47 directly.
- **Staging lies outside this paper's examples.** The theory and all examples are supercritical Hopf; subcritical bifurcations are "far more complicated" and no example was known (p. 517). A1/A2 hysteresis, if it exists, and the saddle-node fit of 1/t_switch in the driver belong to that unexamined subcritical or multi-mode territory. That is my inference; nothing here treats a switch between two saturated global modes.
  - Two pieces do carry over:
    - global modes come in families O(ε) apart (eq. 46), and the hot jet shows two modes MI and MII with different onsets (Fig. 18b);
    - single-sensor feedback that damps one mode tends to destabilise its neighbour (p. 518–519).
- **Feedback class.** The review separates global instability from a local absolute pocket (wakes, hot jets) from global instability by *pressure feedback* from surfaces or boundaries: edge, collar and cavity tones (p. 498). Screech and impinging tones closed by upstream acoustic or guided-jet waves are the compressible version of the second class (my classification). Nogueira 2021 recasts screech as the first, a shock-induced saddle. The two are not exclusive.
- **Computational-box resonance (p. 498, Fig. 8).** A spatial simulation can sustain a spurious global mode through outflow-to-inflow pressure coupling. The PyFR LES should check that A1/A2 states and switch times do not depend on domain length, sponge or outflow treatment.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Non-time-resolved PIV** can supply everything the *local* classification needs: mean U(r), the shear-layer thickness and the density estimate. The two-parameter profile families of Monkewitz & Sohn and Monkewitz & Nguyen are the templates. The weak points are the profile fit and the local Re (p. 504, 509).
  - POD-pair phase-averaged shapes of a self-excited mode can be compared with the Fig. 6 global-mode picture: small amplitude at the wavemaker, peak near local neutrality. They cannot give growth rates.
- **Time-resolved data** (TR schlieren, microphones, LES probes) are needed for every *global* diagnostic: spectra, lock-in, forcing response, saturation against control parameter, transients.
  - The first four are block-averaged (Welch/SPOD-like) quantities and assume stationarity.
  - The transient Landau fit needs instantaneous amplitude. SPOD → reconstruction of the tone band → Hilbert transform or HPOD gives |B|(t) and the instantaneous frequency during growth, and a JPDF of amplitude in stationary records tests limit-cycle against noise-driven behaviour.
- **Intermittency.** In convectively unstable flows intermittency can come from random wandering of the nonlinear breakup point, Deissler's noise-sustained structures (p. 520). An intermittent, noise-sensitive tone therefore points to amplifier dynamics. A tone whose amplitude is insensitive to low-level forcing points to an oscillator.
- **Spatial analytic signal (eq. 19).** This is the space-only Hilbert transform that [Raiola 2025](raiola-2025-hilbert-pod.md) uses for snapshot HPOD. Here it is introduced to keep only k_r > 0 in the dispersion analysis (p. 484). The same property discards upstream (k < 0) guided-jet waves, which matters when HPOD is applied along x in screeching jets.
- **Mean-flow caveat.** Everything here linearises about a base state near onset. Applying it to turbulent mean flows of saturated states needs the cautions of [Taira 2017](taira-2017-modal-analysis-fluid-flows-overview.md) and [Taira 2020](taira-2020-modal-analysis-applications-outlook.md), and of [Rolandi 2025](rolandi-2025-biglobal-resolvent-naca0012.md) (mean-flow eigenvalues miss the frequency by 5–13%).

**Rocket noise.** Rocket plumes are hot and therefore low density, which in this theory promotes absolute instability in jets (Fig. 13, p. 506, 511). But the thresholds are for M = 0 and laminar shear layers, and hot jets "revert" at high Re and M (p. 512). The vortex-sheet table entry is convective for 1.6 < M < 3.8 (Tam 1971; Table 4, p. 530). Nothing here suggests global modes in full-scale plumes. The pressure-feedback class (p. 498) is the relevant one for plume–deflector and launch-pad resonances.

**Items to verify against the PDF**
1. Eq. 59 right-hand side as printed, (e^k + se^k)/(e^k − se^k), is degenerate. The reconstructed form −(e^k + se^{−k})/(e^k − se^{−k}) is mine (p. 506).
2. Eq. 56 prints dG/dT − Ω_s,i G where B is presumably meant (p. 501).
3. Capillary-jet ranges: W 0.06 to about 0.5 and orifice Re about 500 down to 140 in the text (p. 516), against 100 < R < 500 and 0.08 < W < 0.5 in Table 4 (p. 531).
4. The hot-air jet becomes self-excited below S = 0.72 (p. 512), which equals the local absolute threshold S = 0.72 (p. 511). That sits oddly with "absolute instability necessary but not sufficient", unless the experimental profiles were thinner than the δ_ω/D = 8.4% reference profile. Check Monkewitz et al. 1989a.
5. Fig. 18 values (main peak St ≈ 0.45, about 76 dB; side peaks 0.23 and 0.89; MI and MII onsets near S ≈ 0.73 and 0.62–0.63) are read from the figure (p. 513).
6. The length scale for the preferred-mode St of 0.25 (planar) and 0.41 (round) is not stated (p. 501). Probably jet width or diameter.
7. In the OCR text of the Fig. 15 caption the minus sign is lost; the rendered caption reads Λ = −1 (○) and Λ = −1.25 (△) (p. 509).
8. Fig. 21: at S = 0.22 the self-excited case is the highest Mach number (0.08), while the text says jets revert at higher Re and M (p. 512, 517). Probably a low-M regime effect; the paper does not comment.
9. Pierrehumbert's global modes are said to grow at ω₀,ᵢ|max (p. 492), while eq. 39 makes that an upper bound only. This is presumably a leading-order statement for a flat maximum.
10. DOI not printed in the PDF; it is from memory.

**Candidates for `/add-paper`:** Huerre & Monkewitz 1985 (JFM 159, mixing-layer absolute instability, Λ = 1.315); Monkewitz & Sohn 1988 (AIAA J. 26, hot-jet absolute instability); Monkewitz 1988a (Phys. Fluids 31, cylinder-wake sequence); Chomaz, Huerre & Redekopp 1988 (PRL 60); Monkewitz et al. 1990 or 1989a (self-excited heated round jet, JFM); Sreenivasan, Raghu & Kyle 1989a (Exp. Fluids 7, helium jets); Ho & Huerre 1984 (Annu. Rev. Fluid Mech. 16, perturbed free shear layers); Crighton & Gaster 1976 (JFM 77); Rockwell & Naudascher 1979; Buell & Huerre 1988 (CTR summer programme, computational-box resonance); Strykowski & Sreenivasan 1990; Koch 1985 (JSV 99); the later Huerre & Monkewitz-era nonlinear global-mode papers (Pier, Huerre & Chomaz), from memory.
