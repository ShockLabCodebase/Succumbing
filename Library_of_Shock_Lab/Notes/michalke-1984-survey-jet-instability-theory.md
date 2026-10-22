---
key: "michalke-1984-survey-jet-instability-theory"
title: "Survey on jet instability theory"
authors: ["Michalke, Alfons"]
year: 1984
type: "review"
venue: "Prog. Aerosp. Sci. 21, 159–199"
bib: {"journal": "Progress in Aerospace Sciences", "volume": "21", "pages": "159--199", "publisher": "Pergamon Press"}
doi: "10.1016/0376-0421(84)90005-8"
arxiv: ""
pdf: "linear-models/Michalke_1984_Survey-On-Jet-Instability-Theory.pdf"
version: "published"
unverified: ["DOI built from the PII 0376-0421(84)90005-8 in the PDF metadata; the printed paper shows only the code 0376-0421/84 and no DOI", "issue number not printed (page footers read 'JPAS 21/3')"]
group: false
facility: ""
data: ["none"]
methods: ["LSA-local", "vortex-sheet"]
flow: ["round-jet", "shear-layer", "subsonic", "supersonic", "ideally-expanded", "heated"]
phenomena: ["KH-wavepackets", "compressibility-effects", "Mach-wave-radiation", "receptivity", "triadic-interaction", "coherent-structures", "absolute-instability"]
params: {"M_j": "0–1.2 (M = U_o/a_o, centreline values)", "T_j/T_∞": "1–2 (static, centreline)", "R/θ": "2.185–∞; θ/R = 0.06 x/D + 0.04 (Crighton & Gaster)", "Re": "2RU_o/ν; critical 43–49 (m = 1), 68.3–110.6 (m = 0)", "U_∞/ΔU": "0–0.5 (flight)", "St": "fD/U_o = ωR/(πU_o); St < 0.35 unstable over the whole potential core", "m": "0, 1, 2"}
topics: ["linear-models", "jet-noise-mechanisms"]
related: ["huerre-1990-local-global-instabilities-spatially-developing-flows", "papamoschou-1988-compressible-turbulent-shear-layer", "garnaud-2013-preferred-mode-incompressible-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "tam-1995-supersonic-jet-noise", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "mancinelli-2021-complex-valued-resonance-model-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "rodriguez-2023-preferred-flapping-round-twin-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance", "mathews-2021-falcon-9-far-field-noise"]
cites: []
summary: "Classic review of inviscid spatial LSA of round jets: R/θ, M ≤ 1.2, heating, flight, Re; profiles 1–4; divergence caps gain; Kutta and feedback set natural St"
---
# Survey on jet instability theory

- **Authors:** Alfons Michalke, Hermann-Föttinger-Institut für Thermo- und Fluiddynamik, Technische Universität Berlin (p. 159). Not Shock Lab group work.
- **Source:** Prog. Aerospace Sci. Vol. 21, pp. 159–199, 1984, Pergamon Press (p. 159). No DOI is printed; 10.1016/0376-0421(84)90005-8 is built from the PII in the PDF metadata (in `unverified`). A review of mostly the author's own group's results (refs [32]–[40]) plus Morris, Crighton & Gaster, Plaschko, Haertig and Bechert.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-models/Michalke_1984_Survey-On-Jet-Instability-Theory.pdf` (41 pp., publisher's version, a 2002 scan with an OCR layer). Page refs are journal pages; **PDF page = journal page − 158**. The OCR layer garbles every equation and most figure labels, so all 59 equations and the figure values below were read from rendered pages (110–300 dpi).
- **Tags:** jet instability, Kelvin–Helmholtz, spatial vs temporal stability, inviscid compressible Rayleigh (pressure) equation, locally parallel, Michalke profiles 1–4 (tanh, R/r − r/R, Gaussian, fully developed), Haertig analytic approximation, momentum thickness θ vs compressible θ_c, vorticity thickness, Crocco–Busemann, plug flow / cylindrical vortex sheet, regular and irregular modes, upstream-travelling waves, Mach number effect, convection Mach number, near-field Mach-wave fronts, heated jets, mode mixing, flight / external stream, stretching factor σ, Reynolds number, critical Reynolds number, roll-up, vortex pairing, subharmonic resonance, m = 0/m = 1 interaction, jitter, slowly diverging jet, multiple scales, adjoint eigenfunction, critical layer, complex r-plane, linear saturation, Kutta condition, spatially initial-value problem, receptivity, feedback, natural frequency selection, circulation criterion

## Summary
Michalke reviews the linear, mostly inviscid, **spatial** instability theory of axisymmetric jets, written around a single pressure equation for a parallel, compressible, heated jet (eq. 16, p. 164) and four standard velocity profiles, one of which (profile 2, eq. 9) became the "Michalke profile" used across the later LSA literature (p. 162). He shows parameter by parameter how shear-layer thickness R/θ, jet Mach number (to 1.2), heating (T_o/T∞ = 2), a flight stream and viscosity change growth rate and phase speed, and how the Strouhal number of maximum growth falls from about 0.8 to 0.2 along the potential core (Figs 9–28, p. 166–184). Three sections then go past parallel linear theory: nonlinear effects (roll-up is already in linear theory; subharmonic resonance explains pairing; p. 184–188), the slowly diverging jet by multiple scales (the divergence alone caps the gain at about 20–80 by x/R ≈ 4–6; p. 188–192), and the nozzle as a spatially initial-value problem (Kutta condition, receptivity, and a feedback argument for why the natural frequency lies below the most amplified one; p. 192–196). Several questions are left open and later became research programmes: the "irregular" modes and hot-jet mode mixing (now read as absolute instability), the validity of local parallel phase speeds, and whether a nozzle-corner feedback loop can sustain the instability.

## Key findings
**Base flow and thickness measures** (§2.1, p. 161–164)
- Parallel, inviscid, Pr = 1 ideal gas at constant pressure, with temperature from Crocco–Busemann (eq. 3). The parallel model is valid for supersonic jets only if they are ideally expanded (p. 161).
- The jet is homenergetic only if T∞/T_o = 1 + (γ−1)M²/2, i.e. an unheated jet has a static centreline temperature below ambient (eq. 4, p. 161). Holding T_o = T∞ at finite M therefore needs heating upstream of the nozzle (p. 173). At the shear-layer centre aerodynamic heating gives T(R)/T_o = 1 + (γ−1)M²/8 (p. 173).
- **θ, not θ_c, should label the velocity profile.** θ_c (eq. 7, density weighted) depends on T∞/T_o strongly and on M weakly, so it "is not suitable to characterize the thickness of the velocity shear layer" (p. 162). At M = 1.2 a fixed R/θ_c = 100 corresponds to R/θ = 95.5 (p. 173; I reproduce 95.46 with profile 1).
- Four profiles (eqs. 8–11, p. 162; table below). Profile 1 (tanh in r) suits only large R/θ, since U(0) = 1 needs b₁ ≫ 1. Profile 2 also works near the end of the potential core. Profile 3 (Mattingly & Chang) is limited to R/θ ≥ 3.2 and has a curvature discontinuity. Profile 4 is the fully developed jet (R/θ = 2.185).
- Profiles with equal R/θ still differ in vorticity: at R/θ = 12.5, profiles 1 and 2 peak at Ω_max R/U_o ≈ 3.1 and profile 3 lower (Figs 2–3, p. 163, 171).
- Thickness growth used throughout: θ/R = 0.06 x/D + 0.04 (eq. 13, Crighton & Gaster, Plaschko). Michalke warns it depends on the nozzle exit conditions (p. 163). So R/θ = 10, 5, 2.5 sit at x/D = 1, 2.67, 6 (p. 169).
- In flight, ΔU = U_o − U∞ is the velocity scale (eq. 14, p. 164).

**Equations and numerics** (§2.2, p. 164–165)
- Normal modes exp[i(αx + mφ − ωt)] with real ω and m and complex α (eq. 15) reduce the linear Euler and entropy equations to one ODE for the pressure amplitude (eqs. 16–17). Bounded I_m and decaying K_m solutions at r → 0 and ∞ (eqs. 23–24) define the eigenvalue problem, solved by shooting.
- Real-axis integration finds only amplified modes. Damped modes (α_i > 0) need a contour in the complex r-plane passing above the critical-layer singularity W = 0, whose branch cut points down (Tam 1975; p. 165). The eigenfunctions on the real axis can then jump at the cut (p. 165).
- **Haertig's analytic approximation** (eqs. 25–26, p. 165): an expansion about the neutral plane tanh layer in δ, M and Υ, giving a cubic for K = αRδ. It reproduces the plane tanh eigenvalues to three decimals as δ → 0 (p. 167). It is reliable for large R/θ and gives the growth-rate peak at R/θ = 12.5 (δ = 0.158), but is poor at low frequency (p. 169, 173). Spurious roots violate |Υ| ≪ 1 (p. 165).

**Incompressible, isothermal jets** (§2.3, p. 166–172)
- **Plug flow (vortex sheet).** It is unstable at all frequencies. Unlike the temporal problem, the spatial phase speed is mostly *above* U_o: for m = 0 it peaks at about 1.31U_o near ωR/U_o ≈ 1.5; for m = 1 it starts at U_o as ω → 0, dips to about 0.93U_o near ωR/U_o ≈ 0.5 and rises above U_o from ωR/U_o ≈ 1.2 to about 1.09U_o (Fig. 5, p. 166; values read from the figure). At low frequency m = 1 grows faster than m = 0. Both tend to c_ph = U_o and −α_iU_o/ω = 1 at high frequency, the plane spatial vortex-sheet values (Fig. 5).
- **"Irregular" modes.** These have finite growth as ω → 0 and α_r → 0 at some finite frequency, so c_ph → ∞. Their pressure decays fast inside the jet and their wavefronts outside are almost radial (Figs 6–7, p. 166–167). For m = 0 the first irregular mode has U_o/c_ph ≤ about 0.17 (peak near ωR/U_o ≈ 1.4) and reaches U_o/c_ph = 0 near ωR/U_o ≈ 2.3 (Fig. 6, read). For ω < 0 there are upstream-travelling solutions (Bechert 1972), and for M > 0 several irregular modes and upstream-travelling waves (Neuwerth 1974; Haertig 1979; p. 177). They exist for continuous profiles too (Fig. 8, p. 167–168). Their "physical meaning … is quite uncertain" (p. 166). From here on only regular modes are discussed, except in §2.5.
- **Finite thickness** confines instability to a finite band (p. 167). For large R/θ, θ is the length scale: profile 1 at R/θ ≥ 50 gives −α_iθ ≈ 0.11 peaking at ωθ/U_o ≈ 0.11, and neutral near 0.25 (Fig. 9, p. 168, read from the figure). R/θ matters only at low frequency, where the wave is long compared with R.
- m = 1 has nearly the same growth rate as m = 0 for R/θ > 25, but c_ph < U_o always. R/θ matters for R/θ < 12, where R becomes an equally valid length scale (p. 169).
- **Downstream evolution, profile 2** (Fig. 10, p. 169): growth falls as the layer thickens. m = 0 is slightly more unstable at R/θ = 10, m = 1 for R/θ ≤ 5, and m = 1 always for ωθ/U_o < 0.1. Phase speeds stay below U_o; that of m = 0 rises as R/θ falls (Fig. 11, p. 170).
- **Strouhal numbers along the core** (Fig. 12, p. 170): St = ωR/(πU_o) = fD/U_o. The St of maximum growth falls from about 0.75–0.8 at θ/R = 0.05 to about 0.21 (m = 0) and 0.11 (m = 1) at θ/R = 0.4. The neutral St falls from about 1.8 to 0.43 (m = 0) and 0.35 (m = 1). **Disturbances below St ≈ 0.35 are unstable over the whole potential core**; high St are unstable only near the nozzle (p. 169). For θ/R > 0.1, m = 1 peaks at a lower St than m = 0.
- **Profile sensitivity** (Figs 13–14, p. 171–172): profiles 1 and 2 at R/θ = 12.5 differ noticeably at high frequency despite similar vorticity. Mattingly & Chang's profile 3 gives a lower peak growth even at R/θ = 18.6 with higher Ω_max (4.1 vs 3.1). Michalke suspects a faulty eigenfunction match at the curvature discontinuity, since their eigenfunctions show "unusual dips" (p. 171).
- **Fully developed jet** (profile 4): stable to m = 0 (Batchelor & Gill 1962) but unstable to m = 1, with the same peak −α_iθ (≈ 0.015) as profile 2 at R/θ = 2.5. Profile 2 has a wider unstable band (Fig. 15, p. 172–173).

**Mach number, T_o = T∞** (§2.4, p. 172–177)
- Michalke compares the same velocity profiles and lets any Mach dependence enter only through R/θ(x/D). The real profile thickens with M (p. 173).
- **Thin layer** (profile 1, R/θ_c = 100; Fig. 16, p. 174): raising M from 0 to 1.2 lowers the peak −α_iθ from about 0.113 to 0.065 and the neutral ωθ/U_o from about 0.25 to 0.19. Phase speed depends on M only at low frequency, where growth becomes independent of M. m = 1 behaves almost identically. Haertig's approximation (which ignores the temperature profile) agrees closely. At still higher M the m = 0 mode may stabilise, but new modes linked to the temperature profile may appear, as in plane shear layers (p. 174).
- **Thick layer** (profile 2, R/θ_c = 6.25; Fig. 17, p. 175): the Mach number stabilises **m = 0 more than m = 1**. From M = 0 to 1.2 the m = 0 peak falls from about 0.061 to 0.025 and the m = 1 peak from about 0.061 to 0.042 (read from the figure). At M = 1.2, m = 1 is the more unstable mode at all frequencies (p. 174). Phase speeds hardly change with M.
- **Near-field pressure waves** (eqs. 27–31, p. 174–176). With M_c = c_ph/a∞ (an ambient-frame phase Mach number, not the Papamoschou–Roshko convective Mach number), the outer K_m solution gives oblique cylindrical wavefronts at angle μ to the axis and wave speed c_w = a∞M_c cos μ.
  - c_w = a∞ exactly only if k = −α_i/α_r = 0 and M_c > 1, i.e. at the neutral (and zero) frequency. Amplified waves have c_w < a∞ but can approach it (p. 176).
  - At M = 1.2 and R/θ_c = 6.25, M_c > 1 at low frequency and c_w ≈ a∞. At R/θ_c = 100, c_w stays well below a∞, yet μ reaches 30–40° (Fig. 18, p. 176; the figure shows up to about 45° at the lowest frequencies).
  - The density fluctuation outside the jet is ρ′ = M²p′/U_o², so these fronts "should become visible in Schlieren pictures for high subsonic jet Mach numbers". But they "should not be denoted as sound waves", since c_w < a∞ (p. 176).
  - St of maximum growth: 3.37 and 2.70 (profile 1, M = 0.4 and 1.2), 0.34 and 0.24 (profile 2) (Fig. 18).

**Heating, M = 0** (§2.5, p. 177–178)
- In the spatial plug-flow problem heating destabilises, the opposite of Gill & Drazin's temporal long-wave result (p. 177).
- For T_o/T∞ > 1.6 regular and irregular modes can no longer be separated: they "mix" (plug flow, and Michalke 1971 for continuous profiles).
- Fig. 19 (profile 1, T_o/T∞ = 2): at R/θ = 27720 the hot jet has a slightly lower phase speed, a higher peak growth (−α_iθ ≈ 0.14 against 0.113 isothermal at R/θ = 20000) at a slightly lower frequency, and a narrower unstable band. Similar results hold for plane layers (Gropengiesser; Maslowe & Kelly; Kapur & Morris).
- At R/θ = 69.3 and 34.7 the modes mix. The growth rate falls from its peak to a minimum and then rises to a **finite value at ω = 0**, with c_ph → ∞. The two ω = 0 values read from Fig. 19 are about 0.072 and 0.036 in −α_iθ; assigned to R/θ = 34.7 and 69.3 respectively, both give −α_iR ≈ 2.5 (my check), as expected for a plug-flow-like long wave scaled by R. A second branch has zero growth at ω = 0, growth that rises with ω, and c_ph > U_o up to a frequency where α_r = 0. "The physical meaning … is quite unclear", and no hot-jet instability data existed (p. 177).
- The R/θ values are θ_c-based runs (20000, 50, 25) replotted with θ: for a thin layer at T_o/T∞ = 2, θ_c = 2 ln 2 · θ = 1.386θ, and 1.386 × 20000 = 27720 (my check).
- Chan & Leong's helium-jet results are "questionable" (wrong temperature distribution; p. 177).

**Flight** (§2.6, p. 177–181)
- With U∞ > 0 (profile 2, R/θ = 5), the peak −α_iθ falls (m = 0: about 0.044 → 0.025 at U∞/ΔU = 0.5; m = 1: 0.053 → 0.031), while the unstable band widens (neutral ωθ/ΔU 0.34 → 0.59). Phase speed always rises, and can exceed ΔU (Figs 20–21, p. 179).
- **Stretching collapse** (eq. 32, Figs 22–25, p. 178–182): −α_iθσ_n and (c_ph − U∞)/ΔU against ωθ/(ΔUσ_n), with σ_n = 1 + A_nU∞/ΔU and A_n = U_o/c_ph,n (the inverse neutral phase speed of the static jet), collapse the flight curves. A universal A = 1.4 works for R/θ = 5 and 2.5. Physically, the flow field is stretched axially and the frequency raised by σ (p. 179). This matches Monkewitz & Huerre (1982) for plane layers.
- **Turbulent jets follow the same similarity.** Michel & Michalke's pressure spectra at r = D/2, x = 3.8Dσ collapse for (U_f, U_j) = (6, 122) and (40, 161) m s⁻¹ with σ = 1 + 1.4U_f/ΔU; coherence collapses equally well (Fig. 26, p. 181–182). The spectral peak is at fD/(ΔUσ) ≈ 0.4 (read from the figure).

**Reynolds number** (§2.7, p. 181–184; mainly Morris 1976)
- Viscosity adds strongly oscillating viscous solutions (eq. 33), so special numerics are needed at high Re, and an infinite set of eigenvalues exists, of which the least stable matters (p. 182–183).
- **Fully developed jet** (profile 4, m = 1): the phase speed approaches the inviscid value from below, and the growth rate can *exceed* the inviscid value at finite Re while the unstable band shrinks, a "rather unexpected" destabilising effect (Fig. 27, p. 183). Re = 2RU_o/ν is constant along a self-similar jet, since U_o ∝ 1/x and R ∝ x.
- Thinner layers (profile 2, R/θ = 6.25): viscosity only damps, and only weakly above Re = 1000 (Fig. 28, p. 184). At lower Re m = 0 is damped near the end of the core.
- **Critical Re:** 43–49 for m = 1, almost independent of R/θ (2.2 ≤ R/θ ≤ 50); for m = 0, 68.3 at R/θ = 50 and 110.6 at R/θ = 6.25, and infinite for the fully developed jet (p. 184). Lessen & Singh and Mollendorf & Gebhart missed the least stable eigenvalues. Whether the irregular modes survive viscosity is unknown (p. 184).

**Nonlinear effects** (§2.8, p. 184–188)
- **Roll-up is already linear.** Streaklines computed from the linear velocity field of the most amplified tanh-layer wave (Fig. 30, p. 185, from Michalke & Freymuth 1966) and lines of constant vorticity r − R + εh = const from the linear displacement (eqs. 37–40, Fig. 31, p. 186) both roll up like the smoke picture (Fig. 29). Nonlinearity only modifies the detail (p. 186).
- **Subharmonic resonance.** Two frequencies ω₁, ω₂ generate 2ω₁, 2ω₂, ω₁ ± ω₂ unless ω₁ = 2ω₂ (p. 187). Then the subharmonic obeys a Mathieu-like equation (eqs. 42–45). An expansion in ε₁ (eqs. 46–48) always solves unless α₁ − α̃₂ = α₂, i.e. α_r1 = 2α_r2 (c_ph1 = c_ph2) and α_i1 = 0. That cannot hold in a parallel jet, but nearly does in a diverging jet where the fundamental reaches its neutral point (Fig. 12). This is the pairing mechanism of Petersen (1978) and Ho & Huang (1982) (p. 187).
- **m = 0 with m = 1.** A strong ring vortex in an m = 1 field is shifted off axis, deformed and tilted. With no fixed phase relation between the two, successive rings "jitter", as seen in experiments (eq. 49, Fig. 32, p. 187–188). By analogy, azimuthal modes m and n resonate for m = 2n, so m = 2 would resonate m = 1 (p. 188).

**Slowly diverging jet** (§3, p. 188–192)
- Local parallel properties along θ(x) (Chan 1974) miss the O(ε) terms from the mean radial velocity εV and ∂U/∂x (p. 188). The multiple-scales theory (Crighton & Gaster 1976, m = 0; Plaschko 1979, m ≠ 0) writes p′ = [A(s)p₀ + εp₁ + …]e^{i(g(x)+mφ−ωt)} with s = εx (eq. 50). The O(ε) solvability condition (eqs. 52–54, with the adjoint F_p) fixes the slow amplitude A(s) (eq. 55).
- **The local wavenumber depends on r and on the variable** (eq. 56): phase speed and gain differ for p′, u′, etc. and with radius (p. 189–190).
- At the local neutral point the adjoint is singular at the critical layer. Continuing past it means going around poles in the complex r-plane (Fig. 33, p. 190). At St = 0.5 the poles cross the real axis between x/R = 6 and 5.5 for m = 0, at x/R ≈ 6 for m = 1 and just below x/R = 4 for m = 2 (read from the figure). Fig. 12 with eq. 13 puts the m = 0 and m = 1 neutral points at x/R ≈ 5.3 and 5.0 (my conversion), close to these. For St < 0.35 all modes stay unstable to the end of the core (x/R ≤ 12), in line with Fig. 12.
- **Linear saturation by divergence** (Plaschko 1983; Fig. 34, p. 190–191): at St = 0.5, r = 1.05R, the pressure gain relative to x = 0 peaks at about 90 (m = 0, x/R ≈ 6), 57 (m = 1, x/R ≈ 5.7) and 26 (m = 2, x/R ≈ 4.5) and then falls, to about 36, 28 and 4 at x/R = 12 (read from the log-scale figure). The peak sits near the local neutral point, as the Fig. 33 crossings confirm. "The growth of the disturbances is limited by the slow divergence of the jet flow, a fact that in the past has mostly been attributed to nonlinear effects"; Crow & Champagne saw this at low forcing levels (p. 190).
- The local phase speed at r = 1.05R, St = 0.5 starts at about 0.75, 0.69 and 0.61U_o (m = 0, 1, 2) at x = 0, has a minimum near x/R = 2 (about 0.54, 0.515 and 0.495U_o) and then rises to about 0.84, 0.76 and 0.72U_o at x/R = 12 (Fig. 35, p. 191, read from the figure). Higher m is always slower (p. 191).
- **Limits and controversy** (p. 192): the expansion is not uniformly valid far from the shear layer (Tam & Morris 1980; Morris & Tam 1979), because the highest radial derivative appears in the O(ε) term. Crighton & Gaster call discussing c̄_ph(x) from local parallel theory "meaningless", whereas Morris & Tam find the "gross features" given by the locally parallel approximation. Michalke suggests the difference in Mach number (low subsonic vs supersonic) may explain the clash.

**Nozzle and initial-value problem** (§4, p. 192–196)
- **Kutta condition.** Experiment (Bechert & Pfizenmaier 1972, 1975) suggests a full Kutta condition h′(0) = 0. Orszag & Crow's theory gave h = O(x^{1/2}) (no Kutta condition). Crighton & Leppington (compressible) and Bechert & Michel (incompressible) found the full Kutta condition only with an external exciting source. Crighton (1981) supports the full condition at high Re (p. 192–193).
- **Bechert–Michel semi-infinite plate, vortex sheet + source** (Fig. 37). The vortex-sheet model fits measurements at small St_θ (Fig. 38, Bechert 1983, St_θ = fθ/U_o = 0.0011–0.0063). Five results (p. 194):
  1. h = O(x^{3/2}) is the only solution meeting all boundary conditions.
  2. The edge influence vanishes about one wavelength λ = 2π/α_r downstream.
  3. The far amplitude is set only by the source; for r₀ > λ only the excitation just downstream of the edge matters.
  4. Upstream sources (φ > 90°) excite much more strongly than downstream ones.
  5. Without the source there is no instability wave.
- **No self-sustained wave without feedback** (eqs. 57–58, p. 194). The displacement obeys a one-way wave equation, like sound in a 1D supersonic duct. After the source is switched off at T_o, h = 0 for x/U_o < t − T_o: the wave train convects away with "silence behind the wave tail", so no feedback acts between the instability wave and the bare edge.
- **A wall at the edge closes a loop** (p. 194–195). A corner wall (dashed in Fig. 37), i.e. a nozzle face, needs a source distribution q_w that induces a normal velocity v_w at the sheet, driven by the wave itself. This forms a feedback loop that may keep the sheet excited after switch-off, but Michalke could not solve the integral equation. Maestrello & Bayliss (1982), with linearised Euler equations, an experimental spreading mean flow and a thick pipe lip, found a small sustained vortex shedding at the lip long after an acoustic pulse had passed. That supports both the feedback and the adequacy of linear equations (p. 195).
- **Natural vs most-amplified frequency** (p. 195–196):
  - Measured natural frequencies are fδ*/U_o = 0.0234 for Re_D > 10⁴ (Schade & Michalke), i.e. fθ/U_o = 0.0119 with Freymuth's θ, and 0.0128 (Pfizenmaier). The plane tanh profile peaks at fθ/U_o = 0.0164.
  - Two explanations: the profile changes quickly from wall boundary layer to free shear layer, which affects high frequencies more (Michalke 1969); or a feedback loop.
  - In the feedback argument the velocity induced back at the nozzle scales with the circulation per wavelength |Γ|/(λU_o) (eq. 59). For a fixed local amplitude this peaks at the measured natural frequency, below the maximum-growth frequency (Fig. 39, p. 196). For a fixed initial amplitude and x_o = 2λ the maximum moves to very low frequency. "In any case" the selected frequency lies below that of maximum growth.

## Setup / method
**Model assumptions (parallel theory, §2):** axisymmetric, swirl-free jet of the same gas as the ambient; constant pressure p∞; thermally ideal gas with constant heat capacities; Pr = 1; inviscid, non-conducting disturbances (high Re); mean T from Crocco–Busemann (eq. 3) with T_o/T∞ and M as parameters; ideal expansion if supersonic (p. 161). Mach effects are studied with T_o = T∞ (p. 172). Heating is studied with M = 0 (p. 177). Flight is studied with an incompressible, isothermal jet (p. 178). Viscous results are incompressible and isothermal (p. 181).

**Disturbances:** spatial normal modes (eq. 15), real ω, integer m (0, 1, 2), complex α; growth rate −α_i, phase speed c_ph = ω/α_r. Boundary conditions: p bounded on the axis, p → 0 as r → ∞ (eqs. 23–24). Damped modes are integrated along a complex-r contour (p. 165).

**Velocity profiles** (eqs. 8–12, p. 162):

| Profile | Form | Parameter | Used by | Limits |
|---|---|---|---|---|
| 1 | U = ½{1 + tanh[b₁(1 − r/R)]} | b₁ = 0.5R/θ ≫ 1 | Michalke 1971, Morris 1976 | large R/θ only; θ → 0 gives the vortex sheet |
| 2 | U = ½{1 + tanh[b₂(R/r − r/R)]} | b₂ = 0.25R/θ | Michalke 1971, Chan & Leong, Morris, Crighton & Gaster, Plaschko, Michalke & Hermann | whole potential core |
| 3 | U = exp{n[b₃(r/R − 1) + 1]²}; n = 0 for r/R ≤ 1 − 1/b₃, else n = −ln 2 | b₃ = 0.312R/θ | Mattingly & Chang, Morris 1974 | R/θ ≥ 3.2; U″ discontinuous |
| 4 | U = [1 + b₄(r/R)²]⁻² | b₄ = √2 − 1, R/θ = 2.185 | Lessen & Singh, Mollendorf & Gebhart, Morris | fully developed jet |
| Haertig | U = [1 + (r/R)^{2/δ}]⁻¹ | R/θ = 4 sin(πδ/2)/(πδ²) | Haertig 1981 | equals profile 2 to 3 decimals at R/θ = 12.5 |

> My checks: U(R) = ½ for all four; b₁, b₂ and b₃ reproduce R/θ numerically (b₂ = 0.25R/θ is exact at R/θ = 2.5–12.5, and b₃ = 0.312 follows from the Gaussian integral); profile 4 gives R/θ = 2.1852; Haertig's δ for R/θ = 12.5 is 0.1584 (p. 169 prints 0.158).

**Parameter coverage**

| Effect | Profile(s) | Fixed | Range | Figs (pages) | Source |
|---|---|---|---|---|---|
| Thickness | 1, 2, 3, 4, Haertig | M = 0, T_o = T∞ | R/θ 2.185–∞ | 5–15 (166–173) | [34], [35], [38], [31], [44], [21] |
| Mach | 1 (R/θ_c = 100), 2 (R/θ_c = 6.25) | T_o = T∞ | M 0–1.2 | 16–18 (174–176) | [35] |
| Heating | plug, 1 | M = 0 | T_o/T∞ = 2 | 19 (178) | [34], [35] |
| Flight | 2 (R/θ = 5, 2.5) | M = 0, T_o = T∞ | U∞/ΔU 0–0.5 | 20–26 (179–182) | [38], [40] |
| Viscosity | 2 (R/θ = 6.25), 4 | M = 0 | Re = 2RU_o/ν 50–∞ | 27–28 (183–184) | [44] |
| Divergence | 2 with eq. 13 | M = 0 | St = 0.5, m = 0–2, x/R ≤ 12 | 33–35 (190–191) | [12], [51], [52] |
| Nozzle edge | plane vortex sheet + source | incompressible | St_θ 0.0011–0.0063 (exp.) | 37–38 (193) | [3]–[5] |

**Numerics** (as described, no grids given): shooting integration of eq. 16 with iteration on α (p. 165); complex-r contour for damped modes; "special numerical methods" for the stiff viscous problem (p. 183); multiple scales with the mean radial velocity V(r, s) computed from continuity, ε = dθ/dx small (p. 189); analytic Green's-function solutions for the vortex sheet (eq. 58).

**Experimental material reproduced** (not new): smoke visualisation of a 10 cm, 2 m s⁻¹ jet (Wille 1963; Fig. 1, p. 160) and of roll-up (Fig. 29); turbulent pressure spectra and coherence from a probe in a jet with external flow (Michel & Michalke 1981; Fig. 26), which need time-resolved data (spectral estimates with filter bandwidth Δf); hot-wire-type |u₂| amplitudes in an excited shear layer (Bechert 1983; Fig. 38). Michalke states that no hot-jet instability data existed (p. 177).

## Key equations
All read from rendered pages; numbering and pages as printed.

- **Profile normalisation** (eq. 1, p. 161): $\bar U(r)/U_o = U(r/R)$, U(0) = 1, U(1) = ½.
- **Equation of state at constant pressure** (eq. 2): $\bar T/T_o = [\bar\rho/\rho_o]^{-1}$.
- **Crocco–Busemann** (eq. 3, p. 161): $\dfrac{\bar T}{T_o} = \dfrac{T_\infty}{T_o} + \Big(1-\dfrac{T_\infty}{T_o}\Big)U + \dfrac{\gamma-1}{2}M^2U(1-U)$, with $M = U_o/a_o$.
- **Total enthalpy** (eq. 4): $\bar H/H_\infty = 1 + (T_o/T_\infty)\,[1 + (\gamma-1)M^2/2 - T_\infty/T_o]\,U$; homenergetic iff $T_\infty/T_o = 1+(\gamma-1)M^2/2$.
- **Vorticity** (eq. 5): $\bar\Omega R/U_o = -U'(r/R)$; vorticity thickness $\bar\Omega_{max} = U_o/\delta_\omega$, so $R/\delta_\omega = |U'_{max}|$.
- **Momentum thicknesses** (eqs. 6–7, p. 162): $\theta = \int_0^\infty (\bar U/U_o)(1-\bar U/U_o)\,dr$; $\theta_c = \int_0^\infty (\bar\rho/\rho_o)(\bar U/U_o)(1-\bar U/U_o)\,dr$. With flight, U is replaced by $(\bar U - U_\infty)/\Delta U$ (eq. 14).
- **Thickness growth** (eq. 13, p. 163): $\theta/R = 0.06\,(x/D) + 0.04$.
- **Normal modes** (eq. 15, p. 164): $[c_x', c_r', c_\phi', p', \rho'] = [u, v, w, p, \rho](r)\,\exp[i(\alpha x + m\phi - \omega t)]$, $\alpha = \alpha_r + i\alpha_i$.
- **Pressure equation** (eqs. 16–17, p. 164):
  $$L(p) \equiv \frac{d^2p}{dr^2} + \Big[\frac1r - \frac1W\frac{dW}{dr}\Big]\frac{dp}{dr} - \Big[\alpha^2(1-M^2W) + \Big(\frac mr\Big)^2\Big]p = 0,\qquad W(r) = \frac{[(\bar U(r)-\omega/\alpha)/U_o]^2}{\bar T(r)/T_o}.$$
  This is the compressible Rayleigh (Pridmore-Brown-type) equation: $-W'/W = -2\bar U'/(\bar U - c) + \bar T'/\bar T$, and $M^2W$ is the squared local relative Mach number (my reading).
- **Other amplitudes** (eqs. 18–22, p. 164–165): $\bar\rho v = i\,\dfrac{dp}{dr}\Big/(\alpha\bar U-\omega)$; $\bar\rho u = -\dfrac{dp}{dr}\dfrac{d\bar U}{dr}\Big/(\alpha\bar U-\omega)^2 - p/(\bar U-\omega/\alpha)$; $\bar\rho w = -(m/r)\,p/(\alpha\bar U-\omega)$; $\rho = -\dfrac{1}{\bar\rho}\dfrac{d\bar\rho}{dr}\dfrac{dp}{dr}\Big/(\alpha\bar U-\omega)^2 + p/\bar a^2$; $\bar a^2 = a_o^2(\bar T/T_o)$.
  > I re-derived eqs. 18–19 from the linearised radial and axial momentum equations; they are consistent.
- **Boundary conditions** (eqs. 23–24, p. 165): $p \propto I_m(\alpha\sqrt{1-M^2W(0)}\,r)$ as r → 0; $p \propto K_m(\alpha\sqrt{1-M^2W(\infty)}\,r)$ as r → ∞, Re(argument) > 0.
- **Haertig approximation** (eqs. 25–26, p. 165), with $K = \alpha R\delta$:
  $$\Upsilon = [2\omega R\delta/U_o - (1+\delta)K]/K,\qquad K = 1 + (0.101 - m^2/2)\delta^2 - M^2/8 + (i\pi/2 + 0.1035\delta^2)\Upsilon - 0.6302\Upsilon^2 + i\pi(m/K)^2\delta^3/2,$$
  a cubic for K, valid for |Υ| ≪ 1.
- **Convection Mach number** (eq. 27, p. 174): $M_c = c_{ph}/a_\infty = (c_{ph}/U_o)\,M\,(T_o/T_\infty)^{1/2}$.
- **Outer pressure field** (eqs. 28–31, p. 175), with $k = -\alpha_i/\alpha_r$:
  $$p' \sim r^{-1/2}\exp(-\lambda_r r - \alpha_i x)\exp[i(\alpha_r x - \lambda_i r + m\phi - \omega t)],\qquad \lambda_r + i\lambda_i = \alpha_r(1 - M_c^2 - k^2 - 2ik)^{1/2},$$
  $$\cos^2\mu = \Big\{1 + \big[\sqrt{(M_c^2-1+k^2)^2+4k^2} + M_c^2 - 1 + k^2\big]/2\Big\}^{-1},\qquad c_w/a_\infty = M_c\cos\mu .$$
  > My checks: eq. 29 follows from $\alpha^2(1-M^2W_\infty) = \alpha^2 - \omega^2/a_\infty^2$ with $\alpha = \alpha_r(1-ik)$; eq. 30 is $\cos^2\mu = 1/(1+\lambda_i^2/\alpha_r^2)$ with $\lambda_i^2/\alpha_r^2 = (|z| - \mathrm{Re}\,z)/2$; for k = 0 and M_c > 1 it gives $\cos\mu = 1/M_c$ and $c_w = a_\infty$, as stated on p. 176 (so μ is the complement of the Mach angle).
- **Flight stretching** (eq. 32, p. 178): $\sigma_n = 1 + A_nU_\infty/\Delta U$, $A_n = U_o/c_{ph,n}$ (static neutral mode); universal $\sigma = 1 + 1.4\,U_\infty/\Delta U$ (p. 180–181).
- **Viscous outer solution** (eqs. 33–34, p. 182–183): $u(r) = C_1K_m(\alpha r) + C_2K_m(\beta r)$, $\beta^2 = \alpha^2 + i\alpha[\bar U(\infty) - \omega/\alpha]/\nu$; $Re = 2RU_o/\nu$.
- **Axisymmetric vorticity** (eqs. 35–36, p. 184): $\dfrac{\partial}{\partial t}\dfrac{\Omega}{r} + c_x\dfrac{\partial}{\partial x}\dfrac{\Omega}{r} + c_r\dfrac{\partial}{\partial r}\dfrac{\Omega}{r} = 0$; Ω/r is conserved along particle paths, and at an instant constant along streaklines.
- **Vorticity displacement** (eqs. 37–40, p. 186), for R/θ ≫ 1:
  $$\Omega = \bar\Omega(r + \varepsilon h),\quad \frac{\partial h}{\partial t} + \bar U\frac{\partial h}{\partial x} + c_r' + \varepsilon\Big[c_x'\frac{\partial h}{\partial x} + c_r'\frac{\partial h}{\partial r}\Big] = 0,\quad r - R + \varepsilon h = \text{const},\quad h = \Re\Big\{\frac{iv(r)}{\alpha\bar U(r)-\omega}e^{i(\alpha x-\omega t)}\Big\}.$$
  > Consistent: the linearised eq. 38 gives exactly eq. 40. Note the sign convention: constant-vorticity lines sit at r = const − εh.
- **Subharmonic resonance** (eqs. 41–48, p. 186–187): $\Psi' = \varepsilon_1\Re[F_1e^{-i\omega_1t}] + \varepsilon_2\Re[F_2e^{-i\omega_2t}]$; for $\omega_1 = 2\omega_2$,
  $$L(F_2,\omega_2) + \varepsilon_1[N(F_1, D^2\tilde F_2) + N(\tilde F_2, D^2F_1)]/2 = 0,\quad L = \Big[\Big(\bar U\frac{\partial}{\partial x} - i\omega_2\Big)D^2 - D^2\bar U\frac{\partial}{\partial x}\Big],$$
  $$N(F,G) = \Big[\frac{\partial F}{\partial r}\frac{\partial G}{\partial x} - \frac{\partial F}{\partial x}\frac{\partial G}{\partial r}\Big]\Big/r,\qquad D^2 = \frac{1}{r^2}\frac{\partial^2}{\partial x^2} + \frac1r\frac{\partial}{\partial r}\Big[\frac1r\frac{\partial}{\partial r}\Big],$$
  $$F_2 = f_{20}e^{i\alpha_2x} + \varepsilon_1f_{21}e^{i(\alpha_1-\tilde\alpha_2)x} + O(\varepsilon_1^2);\quad L_2(f_{20},\alpha_2,\omega_2)=0;\quad L_2(f_{21},\alpha_1-\tilde\alpha_2,\omega_2) = N_2(f_1,\tilde f_{20}) + N_2(\tilde f_{20},f_1).$$
  Tilde = complex conjugate. Resonance when $\alpha_1 - \tilde\alpha_2 = \alpha_2$, i.e. $\alpha_{r1} = 2\alpha_{r2}$ and $\alpha_{i1} = 0$. ($D^2$ equals $E^2/r^2$ for the Stokes operator E², so $D^2\Psi \propto \Omega/r$; my reading.)
- **m = 1 cross-plane velocity** (eq. 49, p. 188): $\underline c_n \equiv c_y + ic_z = \underline c_1(x,r,t) + \underline c_2(x,r,t)e^{2i\phi}$ (a uniform translation plus a deformation).
- **Multiple scales** (eqs. 50–56, p. 189):
  $$p' = [A(s)p_0(r,s) + \varepsilon p_1(r,s) + \dots]\,e^{i(g(x)+m\phi-\omega t)},\quad dg/dx = \alpha(s),\ s = \varepsilon x;\qquad L(p_0) = 0;\qquad L(p_1) = \frac{dA}{ds}H_1 + A(s)H_2;$$
  $$\frac{dA}{ds}k(s) + A(s)l(s) = 0,\quad k = \int_0^\infty F_pH_1\,dr,\quad l = \int_0^\infty F_pH_2\,dr,\quad F_p = \frac{rp_0(r)}{(\bar U-\omega/\alpha)^2};$$
  $$p' = A_op_0(r,\varepsilon x)\exp\Big\{i\Big[\int_0^x\alpha(\varepsilon x')dx' + m\phi - \omega t\Big] - \int_0^{\varepsilon x}\frac{l(s)}{k(s)}ds\Big\},\qquad \bar\alpha = \alpha(\varepsilon x) - i\Big[\frac{\partial\ln p_0(r,\varepsilon x)}{\partial x} - \varepsilon\frac{l(\varepsilon x)}{k(\varepsilon x)}\Big].$$
  > F_p is printed as $rp_0/(\bar U - \omega\,\alpha)^2$; the Fig. 33 caption has $(\bar U - \omega/\alpha)^{-1}$, so "ω α" is a misprint for ω/α. Eq. 56 follows from eq. 55 with $\bar\alpha = -i\,\partial(\ln p')/\partial x$ (checked).
- **Vortex sheet with source** (eqs. 57–58, p. 194):
  $$\Big[\Big(\frac{\partial}{\partial t} + U_o\frac{\partial}{\partial x}\Big)^2 + \frac{\partial^2}{\partial t^2}\Big]h(x,t) = 2\frac{\partial v_Q(x,t)}{\partial t},$$
  $$h(x,t) = \frac{i}{U_o}\int_0^x dx'\,\big[v_Q(x', t - (1+i)(x-x')/U_o) - v_Q(x', t - (1-i)(x-x')/U_o)\big].$$
  > I checked that eq. 58 satisfies eq. 57 exactly: the operator factorises as $[(1+i)\partial_t + U_o\partial_x][(1-i)\partial_t + U_o\partial_x]$, and for harmonic h it gives the spatial vortex-sheet root $\alpha = \omega(1\pm i)/U_o$, i.e. c_ph = U_o and −α_iU_o/ω = 1 (the Fig. 5 high-frequency limit).
- **Circulation per wavelength** (eq. 59, p. 196): $\Gamma = \varepsilon e^{-i\omega t}\int_{x_o-\lambda/2}^{x_o+\lambda/2}dx\,e^{i\alpha x}\int_{-\infty}^{\infty}dy\,\zeta(y)$, with local amplitude $\varepsilon_o = \varepsilon\exp(-\alpha_ix_o)$.

## Data tables
**Growth-rate peaks read from figures** (approximate, ±5% of the axis span; not printed as numbers):

| Fig. (p.) | Profile, R/θ | M, T_o/T∞, U∞/ΔU | m | peak −α_iθ | at ωθ/U_o | neutral ωθ/U_o |
|---|---|---|---|---|---|---|
| 9 (168) | 1, ≥ 50 | 0, 1, 0 | 0 | ≈ 0.11 | ≈ 0.11 | ≈ 0.25 |
| 10 (169) | 2, 10 | 0, 1, 0 | 0 / 1 | 0.090 / 0.077 | 0.145 / 0.14 | 0.30 / 0.29 |
| 10 (169) | 2, 5 | 0, 1, 0 | 0 / 1 | 0.043 / 0.052 | 0.195 / 0.14 | 0.34 / 0.325 |
| 10 (169) | 2, 2.5 | 0, 1, 0 | 0 / 1 | 0.011 / 0.015 | 0.27 / 0.15 | 0.55 / 0.45 |
| 15 (173) | 4, 2.19 | 0, 1, 0 | 0 / 1 | damped / 0.015 | — / ≈ 0.12 | — / ≈ 0.27 |
| 16 (174) | 1, R/θ_c = 100 | 0, 0.4, 0.8, 1.2 (T_o = T∞) | 0 | 0.113, 0.107, 0.089, 0.065 | 0.11 → 0.09 | 0.25, 0.245, 0.225, 0.19 |
| 17 (175) | 2, R/θ_c = 6.25 | 0, 0.4, 0.8, 1.2 (T_o = T∞) | 0 | 0.061, 0.056, 0.043, 0.025 (×θ_c) | 0.18 → 0.12 (ωθ_c/U_o) | ≈ 0.33 → 0.25 |
| 17 (175) | 2, R/θ_c = 6.25 | 0, 0.4, 0.8, 1.2 (T_o = T∞) | 1 | 0.061, 0.058, 0.051, 0.042 (×θ_c) | 0.14 → 0.10 | ≈ 0.33 → 0.28 |
| 19 (178) | 1, 27720 (hot) vs 20000 | 0, 2 vs 1, 0 | 0 | 0.14 vs 0.113 | 0.09 vs 0.11 | 0.20 vs 0.25 |
| 20 (179) | 2, 5 | 0; U∞/ΔU 0, 0.1, 0.3, 0.5 | 0 | 0.044, 0.038, 0.030, 0.025 | 0.19 → 0.32 (ωθ/ΔU) | 0.34, 0.385, 0.48, 0.59 |
| 20 (179) | 2, 5 | 0; U∞/ΔU 0, 0.1, 0.3, 0.5 | 1 | 0.053, 0.046, 0.037, 0.031 | 0.14 → 0.26 | 0.33, 0.38, 0.48, 0.57 |

> My check of the flight collapse: at U∞/ΔU = 0.5, σ = 1.7, and m = 0 gives 0.025 × 1.7 = 0.0425 and 0.59/1.7 = 0.35, against the static 0.044 and 0.34. Converting Fig. 10 peaks with St = (ωθ/U_o)(R/θ)/π reproduces Fig. 12 (R/θ = 10: 0.46 against ≈ 0.44; R/θ = 2.5, m = 0: 0.21 against ≈ 0.21).

**Strouhal numbers along the potential core** (Fig. 12, p. 170, profile 2, M = 0; read from the figure; x/D from eq. 13):

| θ/R | x/D (eq. 13) | St max growth m = 0 | m = 1 | St neutral m = 0 | m = 1 |
|---|---|---|---|---|---|
| 0.05 | 0.17 | ≈ 0.74 | ≈ 0.82 | ≈ 1.77 | ≈ 1.77 |
| 0.10 | 1.0 | ≈ 0.44 | ≈ 0.44 | ≈ 1.0 | ≈ 0.98 |
| 0.20 | 2.67 | ≈ 0.29 | ≈ 0.22 | ≈ 0.53 | ≈ 0.52 |
| 0.40 | 6.0 | ≈ 0.21 | ≈ 0.11 | ≈ 0.43 | ≈ 0.35 |

**St of maximum amplification with Mach number** (Fig. 18, p. 176; printed on the figure): profile 1 (R/θ_c = 100): 3.37 (M = 0.4), 2.70 (M = 1.2); profile 2 (R/θ_c = 6.25): 0.34 (M = 0.4), 0.24 (M = 1.2). At M = 1.2, profile 2: c_ph/a∞ ≈ 1.07 at the lowest frequency and ≈ 0.85 at St_max; profile 1: ≈ 0.9 falling to ≈ 0.6 (read).

**Critical Reynolds numbers** (Morris 1976; p. 184): m = 1: 43–49 for 2.2 ≤ R/θ ≤ 50; m = 0: 68.3 (R/θ = 50), 110.6 (R/θ = 6.25), ∞ (fully developed). Re = 2RU_o/ν.

**Shear-layer natural frequency vs maximum growth** (p. 195–196):

| Quantity | Value | ωθ/U_o (my conversion) | Source |
|---|---|---|---|
| fδ*/U_o natural, Re_D > 10⁴ | 0.0234 | — | Schade & Michalke 1962 |
| fθ/U_o natural (Freymuth θ) | 0.0119 | 0.075 | Freymuth 1966 |
| fθ/U_o natural | 0.0128 | 0.080 | Pfizenmaier 1973 |
| fθ/U_o max growth, plane tanh | 0.0164 | 0.103 | Michalke 1965 |

> 0.0164 with U_o = 2Ū (Ū the mean of the two streams) is fθ/Ū ≈ 0.033, the most-amplified value quoted via Ho & Huerre in the [ponton-1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md) note; Fig. 39's maximum of |Γ|/(λU_o) ≈ 1.27 sits at ωθ/U_o ≈ 0.075 (read).

**Thickness conversions** (my calculations, γ = 1.4): R/θ_c = 100 at M = 0, 0.4, 0.8, 1.2 (T_o = T∞, profile 1) is R/θ = 100, 99.5, 97.9, 95.5 (paper: 100 to 95.5). R/θ_c = 6.25 at M = 1.2 (profile 2) is R/θ = 5.97. A thin layer with T_o/T∞ = 2, M = 0 has θ_c = 2 ln 2 · θ = 1.386θ. An *unheated* (homenergetic) M = 1.2 jet with profile 2 and R/θ = 12.5 has θ_c/θ = 0.84.

## Figures worth remembering
- **Fig. 5 (p. 166):** plug-flow c_ph/U_o and −α_iU_o/ω against ωR/U_o (0–10) for m = 0 (solid) and 1 (dashed). It shows the m = 0 phase speed overshoot to 1.31U_o and m = 1 dominance at low frequency.
- **Figs 6–8 (p. 167–168):** "irregular" modes: reciprocal phase speed, pressure amplitude and phase lines (radial wavefronts outside the jet), and their persistence for profile 1 at R/θ = 50.
- **Fig. 9 (p. 168):** profile 1, R/θ = 12.5–∞: θ is the length scale except at low frequency.
- **Figs 10–12 (p. 169–170):** profile 2, m = 0 vs 1 as R/θ falls; **Fig. 12** is the reference St(θ/R) map for maximum growth and neutral frequency along the core.
- **Figs 13–14 (p. 171–172):** profile sensitivity at R/θ ≈ 12.5. The Fig. 13 growth-rate axis reads 0–1.0, apparently 10 × (−α_iθ) (see the check list).
- **Fig. 15 (p. 173):** fully developed jet: m = 0 damped, m = 1 unstable.
- **Figs 16–17 (p. 174–175):** Mach-number effect for a thin and a thick layer; m = 1 takes over at M = 1.2 in the thick layer.
- **Fig. 18 (p. 176):** M_c, c_w/a∞ and the wavefront angle μ of the near-field pressure, with St_max marked, and a sketch of the oblique fronts.
- **Fig. 19 (p. 178):** hot jet (T_o/T∞ = 2): higher growth, and mode mixing at R/θ = 69.3 and 34.7.
- **Figs 20–25 (p. 179–182):** flight effect and its collapse with σ = 1 + 1.4U∞/ΔU. **Fig. 26 (p. 182)**: the same collapse in measured turbulent pressure spectra.
- **Figs 27–28 (p. 183–184):** viscous growth rates (Morris 1976).
- **Figs 29–31 (p. 185–186):** smoke roll-up against linear-theory streaklines and constant-vorticity lines.
- **Fig. 32 (p. 188):** m = 1 cross-plane velocity: translation plus e^{2iφ} deformation of a ring.
- **Figs 33–35 (p. 190–191):** slowly diverging jet at St = 0.5: pole paths in the complex r-plane (neutral crossings x/R ≈ 5.8, 6, 3.9 for m = 0, 1, 2), pressure gain G(p′) for m = 0, 1, 2 (peaks ≈ 90, 57, 26), and local phase speed with a minimum at x/R ≈ 2.
- **Figs 36–38 (p. 192–193):** nozzle-exit initial conditions, the semi-infinite-plate problem with a source Q (and the optional corner wall), and Bechert's data against the vortex-sheet theory.
- **Fig. 39 (p. 196):** circulation per wavelength against ωθ/U_o for the tanh layer, peaking at the measured natural frequency, below maximum growth.

## Notation
- x, r, φ: axial, radial, azimuthal; R: jet radius where U = ½ (½(U_o + U∞) in flight); D: nozzle diameter.
- U_o, T_o, ρ_o, a_o: centreline values; T∞, a∞, U∞: ambient; ΔU = U_o − U∞ (U_j − U_f in Fig. 26); M = U_o/a_o.
- Ū, T̄, ρ̄, ā, H̄: mean quantities; U(r/R): normalised profile; Ω̄: mean azimuthal vorticity; δ_ω: vorticity thickness; θ, θ_c: incompressible and density-weighted momentum thickness; δ*: displacement thickness; δ: Haertig's profile parameter; b₁–b₄: profile constants.
- u, v, w, p, ρ: disturbance amplitudes; α = α_r + iα_i: complex axial wavenumber; −α_i: spatial growth rate; ω: angular frequency; m: azimuthal order; c_ph = ω/α_r; W: eq. 17.
- St = ωR/(πU_o) = fD/U_o; St_θ, S_θ = fθ/U_o.
- M_c = c_ph/a∞ (Michalke's "convection Mach number"); k = −α_i/α_r; λ = λ_r + iλ_i: outer radial wavenumber; μ: wavefront-normal angle to the axis; c_w: wave speed.
- σ_n, A_n: stretching factor and parameter (universal σ, A = 1.4).
- Re = 2RU_o/ν (Re_c: critical; Re = U_jD/ν in the text on p. 181).
- Ω/r, Ψ: vorticity and stream function; h: displacement of vorticity lines or of the vortex sheet; ε, ε₁, ε₂: amplitudes; F₁, F₂, f₁, f₂₀, f₂₁: stream-function amplitudes; L, N, D²: eqs. 43–45; tilde: complex conjugate.
- s = εx: slow variable; A(s): slow amplitude; p₀, p₁: O(1) and O(ε) pressure; H₁, H₂, k(s), l(s), F_p: eqs. 52–54; ᾱ, c̄_ph: local wavenumber and phase speed of the diverging jet; G(p′): gain relative to x = 0; x_n: local neutral position; r_c: critical layer.
- v_Q, Q, r₀, φ: source-induced normal velocity, source, its distance and angle from the edge; v_w, q_w: wall-induced velocity and source distribution; u_i: induced axial velocity; Γ: circulation per wavelength λ = 2π/α_r centred at x_o.

## Relevance to this project
**Where it sits.** This is the reference behind the "Michalke profile" and the momentum-thickness conventions used across the library's local stability work, so most of the group-thread LSA notes stand on it:
- [Rodríguez 2023](rodriguez-2023-preferred-flapping-round-twin-jets.md) (eq. 3.1), [Stavropoulos 2023](stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa.md), [Stavropoulos 2024](stavropoulos-2024-upstream-waves-merging-twin-jets.md), [Nogueira 2021](nogueira-2021-absolute-instability-shock-containing-jets.md), [Nogueira 2022](nogueira-2021-closure-mechanism-a1-a2-screech.md) and [Nogueira 2026](nogueira-2026-flapping-motion-screeching-round-jets.md) all use profile 2 with Crocco–Busemann temperature (eqs. 3, 9).
- The vortex-sheet dispersion relation behind the guided-jet-mode work cites Michalke's plug-flow analysis (1970) ([Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md); [Jordan 2018](jordan-2018-jet-flap-interaction-tones.md)).
- [Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md) took its R/θ_R from "the Michalke (1984) compressible definition", i.e. θ_c of eq. 7. Michalke himself says θ_c is unsuitable for characterising the velocity layer (p. 162). For a cold jet the two differ by about 16% (θ_c/θ ≈ 0.84 at M = 1.2 for profile 2, R/θ = 12.5, in my calculation), which matters because that paper finds the guided-mode band sensitive to thickness below R/θ ≈ 30. Whoever builds a profile-2 base flow from the group's PIV should state which θ sets b₂ = 0.25R/θ.
- [Nogueira 2021](nogueira-2021-absolute-instability-shock-containing-jets.md) and [Suzuki 2026](suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md) cite it for "KH growth falls and moves to low St as the layer thickens", which Figs 10 and 12 show directly.

**Agreements and contradictions with later work**
- *Preferred mode.* Fig. 12's St of maximum growth, about 0.44 at θ/R = 0.1 (x/D ≈ 1), matches the global-resolvent preferred mode St ≈ 0.43–0.46 of [Garnaud 2013](garnaud-2013-preferred-mode-incompressible-jets.md) and the Crow & Champagne value. Michalke's §4 point that the observed shear-layer frequency is *not* the most amplified one, and that the nozzle and feedback select it, is the qualitative ancestor of Garnaud's pseudo-resonance and of the Orr forcing in the nozzle boundary layer in [Lesshafft 2019](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md).
- *Hot jets.* The "mode mixing" for T_o/T∞ = 2 (finite growth at ω → 0, c_ph → ∞; p. 177) is the signature that [Huerre & Monkewitz 1990](huerre-1990-local-global-instabilities-spatially-developing-flows.md) (Table 4, p. 530) read as absolute instability ("implies absolute for S = 0.5", citing Michalke 1971 and 1984). Their branch-switching criterion (p. 486) explains why a purely spatial calculation sees two branches swap. Michalke calls the behaviour "quite unclear". So the phenomenon tag here is the later interpretation, not the author's. The thresholds line up (my comparison): Michalke's mixing sets in above T_o/T∞ ≈ 1.6 in the plug flow (p. 177), i.e. a density ratio S = ρ_j/ρ∞ = T∞/T_o below about 0.63 at M = 0. Huerre & Monkewitz list the vortex sheet as absolute for S ≤ 0.6 (Michalke 1970) and continuous profiles below S = 0.72 (Monkewitz & Sohn), and the Fig. 19 case T_o/T∞ = 2 is S = 0.5.
- *Irregular and upstream waves.* The irregular modes (radial wavefronts outside the jet) and the upstream-travelling waves of Bechert (1972), Neuwerth (1974) and Haertig (1979) (p. 166, 177) are early sightings of the non-KH roots of the vortex-sheet relation. For M > 0 these include the upstream neutral waves now called guided jet modes ([Towne 2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md); [Nogueira 2024](nogueira-2024-guided-jet-waves.md)). This is my reading; the paper does not classify them.
- *Compressibility.* Growth falls with M, more for m = 0 than m = 1 in thick layers (Figs 16–17). This agrees in trend with [Papamoschou & Roshko 1988](papamoschou-1988-compressible-turbulent-shear-layer.md). Note the different M_c: Michalke's is c_ph/a∞, not the structure-frame convective Mach number.
- *Non-parallel growth.* The multiple-scales results (gain capped by divergence near the local neutral point, Fig. 34) are the precursor of the PSE wavepacket models in [Gudmundsson 2011](gudmundsson-2011-instability-wave-models-near-field-jets.md) (which cites Crighton & Gaster) and [Cavalieri 2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md), whose growth–saturation–decay envelope is the same linear mechanism. The Crighton & Gaster versus Morris & Tam dispute over local phase speeds (p. 192) was settled in practice by PSE.
- *Mach waves.* The oblique near-field fronts with c_w < a∞ whenever the wave grows or decays (eqs. 28–31) are the near-field image of the envelope-driven radiation in [Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) and of the instability-wave Mach-wave model in [Tam 1995](tam-1995-supersonic-jet-noise.md). Michalke's refusal to call them sound (p. 176) is a near-field statement; the radiated part needs the uniformly valid treatment of Tam & Morris (1980), which he cites (p. 192).

**Modelling side and how it informs the lab's work**
- *Base flows from non-time-resolved PIV.* Everything in §2 needs only a mean velocity profile and a temperature model, so the group's snapshot PIV (or the PyFR mean) is enough. Fit R/θ(x) with profile 2 (eq. 9), get T̄ from eq. 3 (with T∞/T_o = 1 + 0.2M_j² for unheated jets, eq. 4), and solve eq. 16. Fig. 12 and the tables above are a quick sanity check on any such solver at M = 0. Michalke's θ/R(x) relation (eq. 13) is nozzle-specific (p. 163); measure it, do not adopt it.
- *Comparing with time-resolved data.* Growth rates and phase speeds need time-resolved schlieren or microphones (or phase-locked forcing). The slowly diverging theory warns that local phase speed and gain depend on radius and on the variable (p. 189–190). A U_c from schlieren (integrated density gradient) and one from near-field pressure, or SPOD wavenumbers at different radii, need not agree even for a perfectly linear wavepacket. This bears on the U_c estimates compared across screech papers (e.g. [Mercier 2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md)).
- *Schlieren visibility.* At high subsonic M, the pressure fronts of growing waves outside the jet carry ρ′ ∝ M²p′ and should be visible in schlieren, yet they are not sound (p. 176). Waves seen in the group's TR schlieren outside a subsonic or weakly supersonic shear layer need a phase-speed check before they are called acoustic.
- *PyFR staging LES (rough estimate, mine).* At the A1/A2 Strouhal numbers (about 0.6–0.7), Fig. 12 makes the KH wave neutral near θ/R ≈ 0.15–0.17. Fig. 34 says linear gain peaks there. With the LES's own θ(x) this predicts where the KH wavepacket saturates. That can be set against the 3rd/4th-shock source positions of [Mercier 2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md), as a cheap check on the LES shear-layer development. Compressibility (M_j ≈ 1.1) and the shocks shift this; it is an order-of-magnitude test only.
- *Feedback and receptivity.* §4 frames the screech and impingement questions cleanly. A bare edge transmits a wave and forgets it (eqs. 57–58). A wall at the edge (a lip face) closes a loop that Michalke could not solve (p. 194–195). That is the mechanism by which lip thickness matters for screech and plume resonance ([Ponton 1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md)) and for the reflection coefficients fitted by [Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md). The natural-frequency argument (Fig. 39) explains why a loop selects a frequency below maximum growth. It parallels the impinging-jet stage limits of [Ho 1981](ho-1981-dynamics-impinging-jet-feedback-phenomenon.md), which cites Michalke for the initial-instability St (3–5, consistent with St_max 2.7–3.4 for the thin layer in Fig. 18). Ho's M^{1/2} scaling of that St does not come from Fig. 18, where St_max *falls* with M at fixed R/θ_c (3.37 → 2.70). It follows from a fixed fθ/U_o with a laminar exit layer θ ∝ (νD/U_o)^{1/2}, so that fD/U_o ∝ Re_D^{1/2} (my reading).

**Intermittency, jitter and the SPOD → reconstruction → Hilbert POD pipeline**
- Everything here is single-frequency and stationary, with no time-frequency analysis. Two results still bear on intermittency.
  - *Jitter* (p. 188): an m = 0 ring in an m = 1 field with random relative phase moves and tilts irregularly. This is a mechanism for the amplitude and phase wander that HPOD of an SPOD-reconstructed m = 0 band would show, and for m = 0/m = 1 phase decorrelation.
  - *Switch-off* (eq. 58, p. 194): without feedback, an instability wave convects away with "silence behind". A loop that briefly loses its feedback should therefore show its amplitude dropping on a convective time scale x/U_c rather than a damping time. HPOD envelopes across a mode switch could test this; this is my suggestion, not in the paper.
- *Subharmonic resonance* (eqs. 41–48) is the triad (ω, ω/2) that BMD measures, with phase locking expected where the fundamental becomes neutral. That gives a predicted location for BMD peaks in a natural or forced jet.

**Rocket noise.** Heating destabilises in spatial theory (p. 177), raising growth by roughly 25% at T_o/T∞ = 2 in Fig. 19. Low-density jets also move towards absolute instability (Huerre & Monkewitz), though the review's results are for M = 0 and laminar layers. The flight stretching factor σ = 1 + 1.4U∞/ΔU (eq. 32, Fig. 26) is the instability-wave basis of Michel & Michalke's flight model, which [Mathews 2021](mathews-2021-falcon-9-far-field-noise.md) (p. 629) uses to estimate a downward peak-frequency shift for an ascending Falcon 9. The Mach-wave discussion (eqs. 27–31) covers only M ≤ 1.2 and the near field; rocket Mach-wave modelling needs the radiation treatments in [Tam 1995](tam-1995-supersonic-jet-noise.md) and [Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md).

**Items to verify against the PDF**
1. The Fig. 13 lower panel (p. 171) labels its axis −α_iθ with ticks to 1.0, while Fig. 9 (same profile 1, R/θ = 12.5) peaks near 0.10. The axis is presumably 10 × (−α_iθ).
2. Fig. 26 caption σ = 1.06 for U_f = 6, U_j = 122 m s⁻¹; σ = 1 + 1.4U_f/ΔU gives 1.07. The second case (1.46) checks.
3. F_p printed as rp₀/(Ū − ω α)² (p. 189); read as ω/α (Fig. 33 caption).
4. Mollendorf & "Gebhardt" (p. 162) against "Gebhart" (p. 181, ref. 41).
5. Fig. 18 μ curves: the assignment of the four curves to (profile, M) is inferred from their neutral frequencies matching Figs 16–17. The printed labels have two leaders each.
6. Fig. 33 neutral crossings at St = 0.5 (≈ 5.8, 6 and 3.9 for m = 0, 1, 2), Fig. 34 gain peaks (≈ 90, 57, 26 on a log axis) and Fig. 35 phase speeds: all read from small figures at 300 dpi.
7. Every value marked "read" or "≈" in the Data tables is from figures.
8. The "irregular mode" curves of Fig. 6 (U_o/c_ph ≤ about 0.15) and the low-frequency end of Fig. 19 are hard to read in the scan.
9. Issue number not printed; the DOI is from the PII in the file metadata.

**Candidates for `/add-paper`:** Michalke 1965 (JFM 23, spatial tanh layer, the source of fθ/U_o = 0.0164); Michalke 1971 (Z. Flugwiss. 19, compressible round jet with thickness; NASA TM 75190 translation), the source of profiles 1–2 and Figs 16–19; Crighton & Gaster 1976 (JFM 77, slowly diverging jet); Morris 1976 (JFM 77, viscous spatial instability); Michalke & Hermann 1982 (JFM 114, flight effect); Plaschko 1979 (JFM 92, helical modes of diverging jets); Crow & Champagne 1971 (JFM 48); Tam & Morris 1980 (JFM 98); Batchelor & Gill 1962 (JFM 14); Bechert 1983 (AIAA 83-0724); Michel & Michalke 1981 (AIAA 81-2025, flight jet-noise spectra; also cited by Mathews 2021); Maestrello & Bayliss 1982 (AIAA J. 20).
