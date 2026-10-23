---
key: "rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet"
title: "Dynamic evolution of a transient supersonic trailing jet induced by a strong incident shock wave"
authors: ["Rezay Haghdoost, M.", "Edgington-Mitchell, D.", "Nadolski, M.", "Klein, R.", "Oberleithner, K."]
year: 2020
type: "article"
venue: "Phys. Rev. Fluids 5, 073401"
bib: {"journal": "Physical Review Fluids", "volume": "5", "pages": "073401"}
doi: "10.1103/PhysRevFluids.5.073401"
arxiv: "1911.06530"
pdf: "simulation-methods/RezayHaghdoost-EtAl_2020_Dynamic-Evolution-Of-A-Transient-Supersonic-Trailing-Jet-Induced-By-A-Strong.pdf"
version: "preprint"
unverified: ["journal volume, article number and DOI not printed in the held arXiv preprint"]
group: true
facility: "TU Berlin hydrogen–air PDE run as a shock tube; LSC_AMR cut-cell Euler"
data: ["schlieren-TR", "Euler", "pressure-probe"]
methods: ["shock-relations"]
flow: ["shock-tube", "round-jet", "underexpanded", "supersonic"]
phenomena: ["Mach-disk", "shock-leakage", "shock-diffraction", "shocklet"]
params: {"M_s": "1.71–2.15", "D": "30 mm"}
topics: ["simulation-methods"]
related: ["rezay-haghdoost-2022-shock-dividers", "thethy-2022-shock-diffraction-non-quiescent-medium", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "weightman-2019-sound-production-impinging-supersonic-jets", "edgington-mitchell-2022-unifying-theory-jet-screech"]
cites: ["edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "edgington-mitchell-2019-aeroacoustic-resonance-review"]
summary: "Shock-tube starting jet, M_s 1.71–2.15: TR schlieren and cut-cell Euler show a second triple point and shocklet, set by reflected-shock rotation (transient oblique-shock model)"
---
# Dynamic evolution of a transient supersonic trailing jet induced by a strong incident shock wave

- **Authors:** M. Rezay Haghdoost (TU Berlin, Laboratory for Flow Instabilities and Dynamics), D. Edgington-Mitchell (Monash University), M. Nadolski and R. Klein (Freie Universität Berlin), K. Oberleithner (TU Berlin) (p. 1)
- **Source:** Phys. Rev. Fluids 5, 073401 (2020), doi:10.1103/PhysRevFluids.5.073401. This file is the arXiv preprint (arXiv:1911.06530v1, dated 18 Nov 2019, REVTeX layout), so its page layout and possibly some wording differ from the published version.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/simulation-methods/RezayHaghdoost-EtAl_2020_Dynamic-Evolution-Of-A-Transient-Supersonic-Trailing-Jet-Induced-By-A-Strong.pdf` (21 pp.). Page refs are PDF page numbers, which equal the preprint's printed page numbers.
- **Tags:** transient underexpanded jet, starting jet, shock tube / pulse detonation engine (PDE) exhaust, shock diffraction, vortex ring, vortex-ring-embedded shock (VRES), counter-rotating vortex rings (CRVRs), Mach reflection, triple point, second triple point, shocklet, shock leakage, time-resolved schlieren, numerical schlieren, Euler simulation, cut-cell AMR, transient oblique shock (TOS) model, Rankine–Hugoniot

## Summary
The paper studies the first few tube diameters of the jet that follows a strong shock out of the open end of a pulse detonation engine run as a shock tube. It combines high-speed (up to 80 kHz) schlieren with 3D inviscid Euler simulations whose inflow is matched to the measured shock Mach number and total-pressure trace. Besides the known features (diffracted shock, Mach disk, VRES, CRVRs from slipstream KH instability), both data sets show a second triple point where the reflected shock meets the VRES, joined by a new short-lived shock, the "shocklet". This has no steady-jet analogue. Re-running the simulation with constant (Riemann-problem) inflow still gives the second triple point, so it comes from the jet's own transient dynamics, not from the decaying tube supply. A simple transient oblique shock (TOS) model, which applies Rankine–Hugoniot relations in a frame moving with each local piece of shock, shows that rotation of the reflected shock (driven by the convecting vortex ring) produces a falling pressure behind it, while the nearly axially translating VRES produces a high pressure; the jump between them at the kink is resolved by the shocklet.

## Key findings
- **Early-stage sequence** (Ms = 1.76; Fig. 1, p. 2–4): shock diffraction with a pseudo-steady Prandtl–Meyer fan at the lip; a second shock forms from over-expansion (Friedman 1961) and coalesces into a curved shock that becomes the Mach disk; a VRES forms in the primary vortex ring, then a vortex-induced shock and CRVRs (Ms > 1.6, after Brouillette & Hebert 1997). Unlike a steady jet, the slipstream behind the first triple point is inclined outward (p. 4).
- **Eddy pairing on the slipstream** (Fig. 3, p. 4–5): close-ups show eddies along the slipstream growing and pairing, supporting Dora et al. (2014) that CRVRs come from KH instability of the slipstream shear layer.
- **Experiment and simulation agree closely** (Ms = 2.15; Fig. 6, p. 8–9): experimental and numerical ∂ρ/∂x schlieren match "excellent[ly]" through τ = 4.08–8.15 (qualitative visual comparison; no quantitative metric is given).
- **Formation of the second triple point** (p. 8–10, Fig. 6–7):
  - Up to τ ≈ 4.08 the reflected shock and the VRES are one shock, set by the vortex.
  - By τ = 5.43 the angle set by the first triple point differs from that required in the vortex ring, though the surface stays contiguous.
  - At τ = 6.79 a sharp kink separates the VRES from the reflected shock; by τ = 8.15 the kink is a triple point (T2) with a shocklet between the reflected shock and the CRVRs.
  - In a steady jet the reflected shock reflects as expansions from the sonic line; here the vortex ring distorts the sonic line so a simple reflection cannot occur (Fig. 7, p. 10).
- **Termination by shock leakage** (Ms = 1.76; Fig. 8, p. 10–12): the reflected shock angle reaches roughly its steady value while the VRES shrinks and T2 moves downstream and outward. As the vortex ring convects on, the sonic line shifts inward, part of the reflected shock becomes upstream-propagating and decays into an acoustic wave, which the authors liken to shock leakage in screech (citing the [Edgington-Mitchell 2019](edgington-mitchell-2019-aeroacoustic-resonance-review.md) review). This ends the second triple point. Small vortex rings shed from T2, and the shocklet interacts with the primary-slipstream CRVRs, producing lambda shocks (p. 12).
- **Not caused by the decaying supply** (Fig. 9, p. 12): with constant inflow from the Riemann problem for Ms = 1.71 (a different Ms, to rule out shock strength), the second triple point still forms. The reflected shock is non-stationary beforehand: it elongates and rotates, and a growing region of negative pressure gradient (−∇p) develops along its downstream face, from core to shear layer.
- **TOS model validated on translation** (τ = 2.66; Table I, Fig. 11, p. 14–15): S = 188 m/s at all three points (pure translation), predicted p2 = 1.2 bar uniform, and the CFD at τ = 3.15 shows uniform pressure behind the shock. The agreement is qualitative.
- **Rotation creates the −∇p** (τ = 3.88; Table II, Fig. 13, p. 15–17): after the vortex ring passes the Mach disk the inner reflected shock tilts. S rises from 123 to 161 m/s from x1 to x4, M1s stays ≈ 1.97–1.99 (the faster shock offsets the rising M1), β^s drops 66.6° → 58.3°, so p2 falls 1.35 → 1.06 bar, matching the non-uniform CFD pressure at τ = 4.36.
- **Growth with time** (Tables II–IV, p. 17):
  - p2(x1)/p2(x4) rises about 8% from τ = 3.88 to 4.60 and 86% from 4.60 to 5.81 (checks: 1.274 → 1.373 → 2.56).
  - S(x4)/S(x1) is said to rise about 26% from τ = 3.88 to 4.60 and 1800% from 4.60 to "5.09" (see the check note under Data tables).
  - Changes in upstream p1 and flow angle α also contribute but are small compared with the shock-motion effect (p. 17).
- **Positive gradient behind the VRES** (Tables III–IV, Figs. 14–15, p. 17–19): the VRES (region B, x5–x7) barely tilts and translates axially (S ≈ 168–186 m/s) into flow with small α, giving large β^s (75–84°) and p2/p1 ≈ 4.3–5.0, so p2 there exceeds p2 just below the kink in region A. p2(x5)/p2(x4) increases by 102% from τ = 4.60 to 5.81 (check: 1.216 → 2.46). The resulting abrupt pressure rise at the A–B interface (the kink K) forms the shocklet, and K becomes the triple point (p. 18–19).
- **Conclusion** (p. 19): the second triple point forms by a different mechanism from the classical Mach reflection of the first one: transient rotation of the reflected shock, driven by vortex-ring convection. The shocklet also generates further KH vortices.

## Setup / method
- **Facility** (p. 5–6, Fig. 4): a hydrogen–air PDE; experiments are by the TU Berlin authors (affiliation-based; the paper doesn't name the lab). Not a Shock Lab group facility; Edgington-Mitchell's contribution isn't specified.
  - DDT section 40.3 mm diameter, 685 mm long, with orifices for flame acceleration; exhaust tube **D = 30 mm**, 825 mm long (Fig. 4a, p. 6).
  - H2 through 8 circumferential lines at the rear; air just upstream of the DDT section; spark ignition.
  - The tube is only partly filled with a lean mixture, so the shock decouples from the reaction front and reaches the exit well before the combustion products. The flow studied is therefore essentially shock-tube-like (p. 5).
- **Instrumentation** (p. 5):
  - Shock speed by time of flight from PCB 112A05 piezoelectric sensors: 3 in the DDT section, 5 in the exhaust tube, the last 4D upstream of the exit.
  - Ion probes track the flame to confirm decoupling.
  - Kulite XCE-062 total-pressure probe on the centreline at x/D = −0.3 (i.e. inside the tube exit; Fig. 4c), with Kulite KSC-2 frequency-response correction.
  - NI MXI-Express DAQ, 11 channels at 1 MHz.
- **Schlieren** (p. 5–6): **time-resolved**. Z-type, two 6-inch f/8 parabolic mirrors (off-axis angle 6°, Fig. 4b); overdriven pulsed LED (Willert et al. 2012); 1 μs exposure; Photron SA-Z at up to 80 kHz. Knife edge aligned to give ∂ρ/∂x or ∂ρ/∂y. Each run is a single transient event; no ensemble averaging, statistics or modal decomposition is applied. Spatial resolution and field of view aren't stated.
- **Non-dimensional time** (p. 2): τ = t Ms a0 / D, with t after the shock leaves the exit and a0 the sound speed ahead of the leading shock. (Fig. 1's caption instead counts t from the shock passing the probe near the exit.) With D = 30 mm and a0 ≈ 343 m/s (my assumption), the 50 μs spacing of Fig. 1 is Δτ ≈ 1.0 at Ms = 1.76, and an 80 kHz frame interval is Δτ ≈ 0.25 at Ms = 1.76 or ≈ 0.31 at Ms = 2.15.
- **Cases** (p. 5, 11–12): Ms = 2.15 (experiment–CFD comparison, Fig. 5–6); Ms = 1.76 (schlieren only, Fig. 1, 3, 8); Ms = 1.71 (CFD with constant inflow, Fig. 9, 11, 13–15, Tables I–IV).
- **3D simulation** (p. 6–7):
  - **Inviscid** 3D Euler equations, perfect gas, γ = 1.4 (no viscosity, no turbulence model; shear-layer roll-up comes from numerical dissipation).
  - Explicit second-order Godunov finite-volume scheme with an **exact Riemann solver**, MUSCL reconstruction on conservative variables, van Leer limiter, Strang (directional) splitting. Second order in smooth regions, first order non-oscillatory at discontinuities.
  - Tube wall as a level set on a Cartesian grid via the cut-cell method (Klein et al. 2009; Gokhale et al. 2018); block-structured AMR (Berger & Oliger 1984) around shocks and cut cells. Solver: LSC_AMR from Nikiforakis' group, Cambridge (p. 20).
  - Grid spacing, AMR levels, domain size and run time aren't stated.
  - Domain covers the full PDE length plus a large region outside; outside air initially at rest at atmospheric conditions.
- **1D reactive simulation for inflow** (p. 7):
  - 1D reactive Euler with species balance laws; H2–O2 mechanism of Burke et al. (2011); Strang splitting for chemistry; HLLE flux (Einfeldt).
  - The fill fraction and equivalence ratio aren't known, so they are varied until the 1D solution matches the measured leading-shock Ms and the total-pressure history at x/D = −0.3 (Fig. 5: peak ≈ 13 bar decaying to ≈ 3 bar over 0.35 ms, read from figure).
  - The 3D run starts from this 1D solution just after all mixture is consumed, before the shock reaches the exit.
- **Constant-inflow run** (p. 11): inflow at the exit from the Riemann problem for a planar shock at constant Ms = 1.71.
- **Numerical schlieren** (p. 8): S(x, y) = ∫ ∂ρ/∂x dz over the 3D field, plus Mach-number slices at z = 0.
- **TOS model** (p. 12–14, Fig. 10):
  - Assumption: a moving, rotating shock is quasi-steady in a frame moving with the local shock element.
  - Shock position at two times (C1D1 at t1, C2D2 at t2). For a point x upstream, intersect its velocity vector v with C1D1 at I1; drop a perpendicular to C2D2 at I2; S = |I1I2| / Δt.
  - Relative Mach number M1s = (v − S)/a (vector difference); β is the angle between C1D1 and M1, β* the angle between C1D1 and M1s; the shock angle used is β^s = mean of β and β* (valid for infinitesimal |I1I2|).
  - Normal Mach number Mn1s = M1s sin β^s, then Rankine–Hugoniot (eqs. 5–8).
  - Inputs M1, p1, α (flow angle, degrees) are read from the CFD; Δτ = 0.24 between the two shock positions (τ = 2.66 → 2.90); validation compares with CFD Δτ = 0.48 later.
  - The model is applied only to the CFD (not to the schlieren), and only qualitatively (trends in p2) against CFD pressure fields.

## Key equations
- 3D Euler equations (eq. 1, p. 6), with ρE = p/(γ − 1) + ½ ρ v·v (eq. 2), γ = 1.4.
- 1D reactive species balance (eq. 3, p. 7): ∂t(ρY) + ∂x(ρuY) = ρω̇_Y; mixture energy (eq. 4) E = ∫_{T0}^{T} c_v(τ, Y) dτ + Q0(Y) + u²/2.
- Non-dimensional time (p. 2): $\tau = t\,M_s\,a_0/D$.
- Numerical schlieren (p. 8): $S(x,y) = \int_{z_0}^{z_1} \frac{\partial\rho}{\partial x}(x,y,z)\,dz$.
- TOS frame change (p. 13): $M_1 = v/a$, $M_1^s = (v - S)/a$, $Mn_1^s = M_1^s \sin\beta^s$, $S = \overline{I_1 I_2}/\Delta t$. In scalar form on p. 16: $M_1^s = M_1 - S/a(x)$.
- Rankine–Hugoniot with the relative normal Mach number (eqs. 5–8, p. 13–14):
  $$M_2^2 = \frac{1 + \frac{\gamma-1}{2}(M_1^s\sin\beta^s)^2}{\gamma (M_1^s\sin\beta^s)^2 - \frac{\gamma-1}{2}} \quad (5)$$
  $$\frac{p_2}{p_1} = 1 + \frac{2\gamma}{\gamma+1}\big((M_1^s\sin\beta^s)^2 - 1\big) \quad (6)$$
  $$\frac{\rho_2}{\rho_1} = \frac{(\gamma+1)(M_1^s\sin\beta^s)^2}{2 + (\gamma-1)(M_1^s\sin\beta^s)^2} \quad (7)$$
  $$\frac{T_2}{T_1} = \frac{p_2}{p_1}\,\frac{\rho_1}{\rho_2} \quad (8)$$

> Checked against a render of PDF p. 13–14. Eq. 5 is transcribed as printed; it is the standard normal-shock relation, so the M2 it gives is the downstream **normal** Mach number (in the shock frame), not the full oblique-shock M2 — the paper doesn't say so. Eq. 7's denominator renders as "1 + (γ − 1)(…)²" in the arXiv PDF; the standard normal-shock relation has 2 + (γ − 1)Mn², which is what is written above. Verify eq. 7 against the published PRF version. Eq. 6 reproduces the tabulated p2/p1 values (e.g. Mn1s = 1.81 → 3.66, Table II gives 3.65), so p2 does not depend on eq. 7.

## Data tables
**TOS results, constant-inflow CFD, Ms = 1.71** (Tables I–IV, p. 15–18). Inputs: M1, p1 [bar], α [°] from CFD. Outputs: Mn1s, M1s, β^s [°], S [m/s], p2/p1, p2 [bar]. Points x1–x4 lie upstream of the reflected shock (region A, core → shear layer); x5–x7 upstream of the VRES (region B).

| τ | Pt | M1 | p1 | α | Mn1s | M1s | β^s | S | p2/p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| 2.66 | x1 | 2.22 | 0.43 | 9.7 | 1.60 | 1.62 | 79.9 | 188 | – | 1.2 |
| 2.66 | x2 | 2.24 | 0.43 | 10.8 | 1.60 | 1.64 | 78.5 | 188 | – | 1.2 |
| 2.66 | x3 | 2.28 | 0.4 | 12.5 | 1.63 | 1.68 | 76.2 | 188 | – | 1.2 |
| 3.88 | x1 | 2.33 | 0.37 | −1.3 | 1.81 | 1.97 | 66.6 | 123 | 3.65 | 1.35 |
| 3.88 | x2 | 2.36 | 0.36 | 0.2 | 1.77 | 1.97 | 64.3 | 134 | 3.51 | 1.27 |
| 3.88 | x3 | 2.40 | 0.35 | 2.4 | 1.73 | 1.97 | 61 | 149 | 3.33 | 1.16 |
| 3.88 | x4 | 2.44 | 0.33 | 4.2 | 1.69 | 1.99 | 58.3 | 161 | 3.18 | 1.06 |
| 4.60 | x1 | 2.23 | 0.42 | −7.9 | 1.74 | 2.04 | 58.5 | 70 | 3.35 | 1.40 |
| 4.60 | x2 | 2.29 | 0.41 | −4.3 | 1.68 | 2.07 | 54.1 | 81 | 3.13 | 1.27 |
| 4.60 | x3 | 2.37 | 0.37 | −1.0 | 1.64 | 2.14 | 49.9 | 91 | 2.95 | 1.09 |
| 4.60 | x4 | 2.4 | 0.35 | 0.4 | 1.61 | 2.17 | 48.1 | 95 | 2.87 | 1.02 |
| 4.60 | x5 | 2.57 | 0.29 | 5.1 | 1.96 | 2.00 | 78.1 | 169 | 4.31 | 1.24 |
| 4.60 | x6 | 2.63 | 0.27 | 7.1 | 1.97 | 2.04 | 75.3 | 177 | 4.36 | 1.16 |
| 4.60 | x7 | 2.73 | 0.23 | 10.2 | 2.06 | 2.07 | 83.5 | 185 | 4.79 | 1.12 |
| 5.81 | x1 | 2.09 | 0.46 | −14.3 | 1.61 | 2.09 | 50.6 | 2 | 2.87 | 1.33 |
| 5.81 | x2 | 2.05 | 0.59 | −9.2 | 1.40 | 2.01 | 44.3 | 20 | 2.13 | 1.26 |
| 5.81 | x3 | 2.31 | 0.42 | −2.1 | 1.31 | 2.24 | 35.9 | 39 | 1.84 | 0.78 |
| 5.81 | x4 | 2.52 | 0.32 | 2.3 | 1.24 | 2.43 | 30.6 | 51 | 1.62 | 0.52 |
| 5.81 | x5 | 2.65 | 0.27 | 4.7 | 2.06 | 2.08 | 82.6 | 168 | 4.81 | 1.28 |
| 5.81 | x6 | 2.73 | 0.24 | 6.6 | 2.09 | 2.12 | 80.0 | 178 | 4.91 | 1.18 |
| 5.81 | x7 | 2.79 | 0.22 | 8.3 | 2.10 | 2.15 | 77.7 | 186 | 4.98 | 1.09 |

> Transcribed from renders of p. 15–18 and spot-checked: Mn1s = M1s sin β^s, p2/p1 from eq. 6 and p2 = p1·(p2/p1) all agree to rounding (e.g. Table III x5: 0.29 × 4.31 = 1.25 vs 1.24). Table I has no p2/p1 column. Two text claims don't match the tables: (i) "S(x4)/S(x1) increases by approximately 26% from τ = 3.88 to 4.60" — the tables give 1.31 → 1.36, about 4%; (ii) the "1800% from τ = 4.60 to τ = 5.09" figure matches Table IV, which is at τ = 5.81 (1.36 → 25.5), so "5.09" is probably a slip for 5.81. Also Table IV x1 has S = 2 m/s with M1s = M1 = 2.09, i.e. the inner reflected shock is almost stationary there. Check these against the published version.

## Figures worth remembering
- **Fig. 1 (p. 3):** six ∂ρ/∂y schlieren frames at Ms = 1.76, 50 μs apart: diffraction, second shock, curved shock → Mach disk, VRES, CRVRs and the shocklet.
- **Fig. 2 (p. 4):** labelled overview of all flow features at τ = 6.13 — the best single reference image for nomenclature.
- **Fig. 3 (p. 5):** eddy pairing along the slipstream.
- **Fig. 4 (p. 6):** PDE, schlieren and total-pressure-probe schematics with dimensions.
- **Fig. 5 (p. 8):** measured vs 1D-simulated total pressure at x/D = −0.3, Ms = 2.15.
- **Fig. 6 (p. 9):** experiment vs numerical schlieren vs Mach slices at τ = 4.08, 5.43, 6.79, 8.15, with a zoom on the shocklet (m).
- **Fig. 7 (p. 10):** schematic: transient jet (T1, T2, shocklet, VRES, CRVRs) vs steady underexpanded jet.
- **Fig. 8 (p. 11):** ∂ρ/∂y schlieren at Ms = 1.76 showing T2 moving out and terminating via the upstream-propagating part of the reflected shock.
- **Fig. 9 (p. 12):** constant-inflow CFD pressure sequence, Ms = 1.71, with the developing −∇p region.
- **Fig. 10 (p. 13):** TOS geometry (C1D1, C2D2, I1, I2, β, β*, α, S, M1, M1s).
- **Fig. 12 (p. 15):** translation gives uniform S; rotation gives S1 < S2 < S3 along the shock.
- **Figs. 11, 13–15 (p. 14–20):** CFD pressure fields at τ = 2.66/3.15, 3.88/4.36, 4.60/5.09, 5.81/6.30 with TOS points, T1, O (VRES tail), K (kink) and regions A, B.

## Notation
- Ms: leading-shock Mach number in the tube. D: exhaust-tube diameter (30 mm). a0: sound speed ahead of the leading shock. τ = t Ms a0/D.
- VRES: vortex-ring-embedded shock. CRVR: counter-rotating vortex ring. PM: Prandtl–Meyer fan. LC: leading characteristic. SP: separation point (Fig. 1).
- T1: first triple point (barrel shock, Mach disk, reflected shock). T2: second triple point (reflected shock, VRES, shocklet). K: the kink that becomes T2. O: tail of the VRES. Regions A (behind reflected shock) and B (behind VRES).
- TOS: transient oblique shock model. S: local shock speed. M1, M1s: upstream Mach number in lab and shock frames. Mn1s: normal component. β, β*, β^s: shock angles relative to M1, M1s and their mean. α: upstream flow angle. Π = (p2/p1)(x1)/(p2/p1)(x4).

## Relevance to this project
This project analyses resonance and feedback in Shock Lab group experiments (schlieren, acoustics, PIV); see CLAUDE.md. This paper is about a single transient event, not a resonance, but it touches the group's work through shock–vortex interaction and shock leakage.

- **Shock leakage and shocklets:** the termination of T2 — a vortex shifting the sonic line so part of a shock escapes upstream and decays to sound (p. 10) — is the same mechanism invoked for screech and impingement-tone generation. Compare with the standoff-shock leakage and wall-jet shocklet in [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md), the shock-leakage discussion in [Edgington-Mitchell et al. 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md), and the steady-jet shock-cell/KH interaction in [Edgington-Mitchell et al. 2020](edgington-mitchell-2020-waves-in-screeching-jets.md). The TOS idea (Rankine–Hugoniot in a locally moving, rotating shock frame) could be reused to estimate the pressure jump across an oscillating Mach disk or standoff shock in the steady resonant jets, given shock positions tracked in time-resolved schlieren. It needs the upstream state (M1, p1, α), so in experiments it would need PIV or a simulation mean field.
- **Methods vs data type:**
  - Everything here is **time-resolved** schlieren of one transient: interpretation is by inspection of frame sequences, with no statistics or modal decomposition. SPOD/BMD don't apply directly to a non-stationary single event; HPOD or other instantaneous (Hilbert, wavelet) methods would be the natural route if repeated firings were available, and phase-locking to the shock arrival (τ) would let an ensemble of firings be averaged.
  - The 80 kHz frame rate gives Δτ ≈ 0.25–0.31, comparable to the Δτ = 0.24 used in the TOS analysis, so in principle the shock-motion input to TOS could be measured from schlieren rather than CFD (my estimate).
  - Numerical schlieren by path-integrating ∂ρ/∂x is a simple way to compare CFD with schlieren like for like; it's worth reusing for the PyFR staging LES (`Simulations/PyFR_Staging_Continuation/`).
- **Modelling side:** inviscid Euler with cut-cell AMR reproduces the shock structure and even slipstream KH roll-up and pairing (via numerical dissipation), but resolution isn't reported, so the vortex details shouldn't be over-read. The inflow is calibrated by a 1D reactive model against one total-pressure probe; the constant-inflow run is a clean way to separate supply transients from jet dynamics. The TOS model is a qualitative, 1D, locally quasi-steady estimate; its validation is agreement in trends of p2 with the CFD, not quantitative errors.
- **Rocket noise:** transient starting jets are relevant to ignition overpressure at launch (cf. the ignition-overpressure discussion in [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) and the SLS ignition overpressure in [Gee et al. 2023](gee-2023-sls-artemis-i-far-field-noise.md)), although this paper says nothing about the radiated pressure.
- **Related:** the same group's shock-divider study ([Rezay Haghdoost et al. 2022](rezay-haghdoost-2022-shock-dividers.md), *Numerical and experimental evaluation of shock dividers*) uses the same PDE/shock-tube rig and solver. The Mach disk shear layer of a steady underexpanded jet is in [Edgington-Mitchell, Honnery & Soria (2014)](edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md) (ref. [16]). [Tan et al. 2015](tan-2015-bos-density-axisymmetric-jets.md) gives a route to quantitative density in such jets.
- **Related works cited, candidates for `/add-paper`:** Ishii et al. 1999 (pulse jets, Mach disk in the trailing jet); Dora et al. 2014 (slipstream instability and CRVRs); Zhang et al. 2019 (JFM 871, initial structures of a highly underexpanded jet); Brouillette & Hebert 1997; Kleine et al. 2010; Edgington-Mitchell 2019 (IJA review of screech and impinging-jet resonance, now [indexed](edgington-mitchell-2019-aeroacoustic-resonance-review.md)); Rezay Haghdoost et al. 2019 (AIAA SciTech, PDE exhaust schlieren and PIV).

- **See also:** [rezay-haghdoost-2022](rezay-haghdoost-2022-shock-dividers.md), the shock-divider follow-up from the same PDC programme.
