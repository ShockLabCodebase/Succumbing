---
key: "rezay-haghdoost-2022-shock-dividers"
title: "Numerical and experimental evaluation of shock dividers"
authors: ["Rezay Haghdoost, M.", "Thethy, B. S.", "Nadolski, M.", "Seo, B.", "Paschereit, C. O.", "Klein, R.", "Edgington-Mitchell, D.", "Oberleithner, K."]
year: 2022
type: "article"
venue: "Shock Waves 32, 195–211"
bib: {"journal": "Shock Waves", "volume": "32", "pages": "195--211"}
doi: "10.1007/s00193-021-01062-2"
arxiv: ""
pdf: "simulation-methods/RezayHaghdoost-EtAl_2022_Numerical-And-Experimental-Evaluation-Of-Shock-Dividers.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility"
data: ["schlieren-TR", "Euler", "pressure-probe"]
methods: ["GSD"]
flow: ["shock-tube"]
phenomena: ["shock-diffraction"]
params: {"M_s": "1.61", "D": "8.5 mm", "width ratio": "1, 2, 4"}
topics: ["simulation-methods"]
related: ["rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet", "thethy-2022-shock-diffraction-non-quiescent-medium", "greenshields-2010-central-schemes-polyhedral-fv"]
cites: ["rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet"]
summary: "M_s 1.61 shock split by a two-branch duct (width ratio 1/2/4): 2D cut-cell Euler and GSD vs 210 kHz schlieren; separation 0.53→1.37 D at a 5–20% total-pressure loss"
---
# Numerical and experimental evaluation of shock dividers

- **Authors:** M. Rezay Haghdoost, B. S. Thethy, M. Nadolski, B. Seo, C. O. Paschereit, R. Klein, D. Edgington-Mitchell, K. Oberleithner (TU Berlin; LTRAC, Monash; FU Berlin)
- **Source:** Shock Waves 32, 195–211 (2022), doi:10.1007/s00193-021-01062-2. Published open-access version (CC BY 4.0). Received 30 March 2020, published online 17 January 2022.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/simulation-methods/RezayHaghdoost-EtAl_2022_Numerical-And-Experimental-Evaluation-Of-Shock-Dividers.pdf` (17 pp.)
- **Page refs:** PDF page numbers. PDF p. N is printed journal page N + 194 (PDF p. 1 = p. 195).
- **Tags:** shock tube, shock divider, bifurcated duct, shock diffraction, Mach reflection, Prandtl–Meyer expansion, geometrical shock dynamics (GSD), Euler CFD, MUSCL, cut-cell method, high-speed schlieren, LED schlieren, time-resolved total pressure probe, pulse detonation combustor (PDC), pressure gain combustion

## Summary
The paper tests a passive "shock divider" meant to soften the exhaust pressure pulse of a pulse detonation combustor before it reaches a turbine. The divider splits an incident shock (M_s = 1.61, from an open-end shock tube) between a straight lower duct and a longer, curved upper duct whose width first grows and then shrinks, so the two shocks reach the shared exit duct at different times. Three dividers with upper-to-lower width ratios of 1, 2 and 4 are studied with 2D Euler CFD (dimensionally split MUSCL, Cartesian cut cells) and a cheap geometrical shock dynamics (GSD) front-tracking model. These are validated against 210 kHz LED schlieren and an in-house fast total-pressure probe at the exit. Wider upper branches decelerate the upper shock more by diffraction, so the shock separation (and the delay τ to peak total pressure) grows with width ratio, but the plateau total pressure falls by 5–20% relative to the undivided shock. Spreading the energy in time therefore costs total pressure (p. 14–15).

## Key findings
- **Validation of both models** (p. 7–9, Figs. 9–10):
  - CFD numerical schlieren reproduces the separated shocks and the post-shock structures (expansions, reflected shocks) in divider I "excellent[ly]" (p. 7).
  - GSD tracks only the leading fronts, yet matches their shape and position well. The authors infer that post-shock flow barely affects front propagation in the divider, and from the inviscid CFD matching that turbulence/viscosity effects are marginal (p. 7).
  - Both models slightly over-predict shock speed, more so in the upper branch where diffraction and reflections generate entropy (p. 7, 9).
  - Shock separation ξ at the divider exit (divider I, Fig. 10): EXP 0.55, CFD 0.53, GSD 0.39 (in x/D). The text says CFD is 4% and GSD 20% smaller than experiment (p. 7).
- **Flow inside the divider** (CFD, divider II; p. 9–11, Fig. 11):
  - The lower-branch shock stays planar; the upper-branch shock is slightly curved after diffracting at the convex inlet corner (x/D = 0) (p. 9).
  - Part of the incident shock reflects off the centre-body leading edge and travels upstream; with the Mach stem and diffracted shock it forms a single Mach reflection (p. 9).
  - Although post-shock flow behind an M_s = 1.61 shock is subsonic, the diffraction-induced upstream expansion accelerates flow to supersonic at the convex corner. A growing steady Prandtl–Meyer fan forms there, terminated by a quasi-steady normal shock; a second PM fan forms at a slight convex corner at x/D = 1 (p. 9).
  - In the diverging part of the upper branch (x/D = 1 → 6) the shock weakens; at the turning point (x/D = 6) a strong Mach reflection forms on the outer wall and its triple point bounces between the walls, making the converging section (x/D = 6–11) highly non-uniform, while the shock strengthens again as the duct narrows (p. 11).
  - The lower-branch shock barely changes speed. An empirical shock-tube attenuation fit (Nativel et al. 2020, extrapolated to the duct width) gives 7.9%/m, i.e. only about 0.8% over the lower branch (p. 11).
  - At the centre-body trailing edge (x/D = 12) the lower shock diffracts into the width step D/2 → D; a recirculation forms, sheds a vortex, and that vortex later interacts with the upper-branch shock (p. 11, Fig. 13d).
- **Width ratio controls separation** (p. 11–12, Fig. 12):
  - Lower-branch x–t lines coincide for all three dividers, at essentially the incident speed (p. 12).
  - The upper shock slows more as width ratio increases. Exit separation ξ = 0.53, 0.99, 1.37 (x/D) for dividers I, II, III (Fig. 12c). The text gives divider III as 2.6× divider I at the moment the upper shock reaches the trailing edge (p. 12); 1.37/0.53 ≈ 2.6, consistent.
- **Recombination in the exit duct** (p. 12–13, Fig. 13):
  - Once in the exit duct the trailing (upper) shock accelerates continuously, because the leading shock has raised the sound speed and set the gas moving. With a long enough duct the two must merge (Bull 1954) (p. 12).
  - Each diffracting shock partly enters the exit duct (as a strong Mach reflection) and partly runs back into the other branch (p. 12–13). Separation is larger and lasts longer for larger width ratio (p. 13).
- **Total pressure and energy redistribution** (p. 13–14, Fig. 14):
  - Probe at x/D = 12.5. Measured plateau after the first shock is 8% below CFD; the second shock and subsequent duct-reflection oscillations agree well with CFD; divider II settles to about 3.7 bar (p. 13–14).
  - About 9 µs between shock arrival and plateau is the sensor rise time (p. 13).
  - τ (time from first pressure rise to maximum pressure) from CFD: 15, 19, 27 µs for dividers I, II, III; τ = 0 without a divider. Divider II: τ_EXP = 25 µs vs τ_CFD = 19 µs, the gap attributed to sensor rise time (p. 14).
  - Plateau total pressure behind the second shock is 5, 12 and 20% below the undivided normal-shock reference for dividers I–III (p. 14). More separation means more loss.
- **Cost** (p. 15): about 5 min for GSD and 10 min for CFD on a 2.9 GHz i7 workstation, so both suit design iteration.

## Setup / method
- **Facility:** open-end shock tube (stainless steel) plus the divider, schlieren and probe. The authors include Monash LTRAC members (Thethy, Edgington-Mitchell) and the facility description points to Thethy et al. 2019 [14]; the paper doesn't say where the experiments were run, so treat it as a Shock Lab group facility.
- **Shock tube** (p. 1–2, Fig. 1):
  - Driver: 35.1 mm diameter, 250 mm long, plus a 90 mm unsealed solenoid section. Gas: air–helium mixture.
  - Driven: 12.5 mm diameter, 675 mm long, atmospheric air; contains a 25 mm conical converging section starting 50 mm from the diaphragm.
  - Diaphragm: 0.1 mm polyester (Mylar) film burst by a Ledex linear solenoid and plunger triggered from a 16-bit NI DAQ. Driver gauge pressure from a Gems 3100 transducer.
- **Divider assembly** (p. 3, Figs. 2–3):
  - Round-to-square transition with a seventh-order spline (Wilson 2005), then square cross-section throughout. Square side D = 8.5 mm (Fig. 3b).
  - Perspex side walls around a machined aluminium centre section for optical access.
  - Origin at the centre-body leading edge, which sits at the divider inlet before the branches separate, so the shock does not diffract before entering.
  - Lower branch: straight, width 0.5D, for all dividers. Upper branch: curved, longer, maximum width 0.5D, D, 2D (dividers I, II, III), giving width ratios 1, 2, 4 (p. 11).
  - Angle α = 19° (fixed); β = 19°, 13°, 7° for dividers I–III (Fig. 3a). Upper centreline 5, 4, 2% longer than the lower branch (p. 3).
  - Upper branch geometry (divider II, p. 9): constant width for x/D = 0–1, linear widening to the turning point at x/D = 6, converging to the centre-body trailing edge at x/D = 12, then a single exit duct.
  - Incident M_s = 1.61 at the inlet for all cases.
- **Schlieren** (p. 3–4, Fig. 4):
  - Toepler Z-type, 8" parabolic mirrors, f = 1219 mm.
  - Photron FASTCAM SA-Z 2100K at up to 210 kHz; pulsed LED (Willert et al. 2012) with 1 µs exposure.
  - Triggered by a PCB transducer 50 mm upstream of the divider inlet; timing by a BeagleBone Black pulse generator (Fedrizzi & Soria 2015).
  - At 210 kHz the shock (≈ 550 m/s, my estimate from M_s = 1.61 in room air) moves about 2.6 mm ≈ 0.3D between frames.
- **Total-pressure probe** (p. 4, Fig. 5):
  - In-house, after Paxson & Dougherty (2005). Kulite XCE-062 at the probe head (1.7 mm head), in an L-shaped tube; Kulite KSC-2 conditioner.
  - Mounted at x/D = 12.5. Schlieren confirms no bow shock ahead of the sensor.
  - Signal band-pass filtered 50 Hz–150 kHz (p. 13). Sensor rise time ≈ 9 µs.
- **GSD** (p. 4–5):
  - Whitham's theory: shock front split into ray-tube elements whose Mach number depends only on local ray-tube area (A–M relation), ignoring the flow behind the shock.
  - Front-tracking implementation after Henshaw, Smyth & Schwendeman (1986): N points on the front advance along normals; explicit second-order two-step leap-frog in time with CFL-adapted Δt; area from one-sided differences at the ends and centred differences inside.
- **CFD** (p. 5–6, Figs. 7–8):
  - 2D compressible Euler, calorically perfect gas, γ = 1.4, no viscosity.
  - Fully conservative second-order dimensionally split finite-volume MUSCL scheme (van Leer 1997; Toro 2009) with van Leer limiter.
  - Structured Cartesian grid; walls embedded by a level set with a conservative cut-cell method stable for arbitrarily small cells (Klein et al. 2009; Gokhale et al. 2018).
  - Initial condition: air at atmospheric pressure and room temperature; a Riemann problem at the shock-tube exit with the left state set from Rankine–Hugoniot for M_s = 1.61. Transmissive upstream and downstream boundaries.
  - Resolution: N_D = 46 cells across the channel width D (≈ 0.18 mm cells, my estimate); 198,603, 204,846 and 216,297 cells for dividers I–III. Domain dimensions in Fig. 7a include 20.3D, 11.8D and 6.8D.
  - Grid study (divider III, N_D = 11–184, Fig. 8): the shock is smeared over 4–6 cells regardless of N_D; N_D = 11 overpredicts post-shock pressure by about 5%, while N_D = 23–184 agree in shock position and pressure (p. 6–7).
- **Not stated:** how the round shock tube and round-to-square transition are represented in a 2D domain, the CFL number, and the number of GSD front points. Experiment repeatability (number of runs, shot-to-shot scatter in M_s) isn't given.

## Key equations
- GSD A–M relation (eqs. 1–5, p. 4–5):
  $$\frac{A_i(t)}{A_i(0)} = \frac{f(M_i(t))}{f(M_i(0))}\ (1),\qquad f(M)=\exp\!\big(-f_e(M)\big)\ (2),\qquad f_e(M)=\int_{M_\text{min}}^{M}\frac{M\lambda(M)}{M^2-1}\,dM\ (3)$$
  $$\lambda(M)=\Big(1+\frac{2}{\gamma+1}\,\frac{1-\mu^2}{\mu}\Big)\Big(1+2\mu+\frac{1}{M^2}\Big)\ (4),\qquad \mu^2=\frac{(\gamma-1)M^2+2}{2\gamma M^2-(\gamma-1)}\ (5)$$
  μ is the post-shock Mach number relative to the shock.
- Ray kinematics (eqs. 6–8, p. 5), with α = a₀t along rays and θ the ray angle:
  $$\frac{\partial x}{\partial\alpha}=M\cos\theta,\quad \frac{\partial y}{\partial\alpha}=M\sin\theta,\quad \frac{d\mathbf x_i}{dt}=a_0M_i(t)\,\mathbf n_i(t)$$
- Leap-frog update and discrete area (eqs. 9–11, p. 5):
  $$\mathbf x_i(t+\Delta t)=\mathbf x_i(t-\Delta t)+2\Delta t\,a_0M_i(t)\,\mathbf n_i(t)$$
  $$A_i=\tfrac12(s_{i+1}-s_i)\ (i=1),\quad \tfrac12(s_{i+1}-s_{i-1})\ (1<i<N),\quad \tfrac12(s_i-s_{i-1})\ (i=N);\qquad s_1=0,\ s_i=s_{i-1}+|\mathbf x_i-\mathbf x_{i-1}|$$
- 2D Euler equations in conservative form (eq. 12, p. 5) for (ρ, ρu, ρv, ρE), E = e + |u|²/2, p = ρ(γ − 1)e.
- Lower-branch shock attenuation (unnumbered, p. 11), extrapolated from Nativel et al. (2020):
  $$\text{attenuation}\ (\%/\text{m}) = 0.73 + 4.12\,\big(p_1^{-0.14}\sqrt{M_s}\big)$$
  > Units of p₁ aren't stated. With p₁ = 0.1 MPa and M_s = 1.61 this gives 7.9%/m, matching the paper; p₁ in bar or atm gives ≈ 6.0%/m. So p₁ is evidently in MPa. Over ≈ 0.1 m (12D) this gives the quoted ≈ 0.8%.

> Equations 1–12 were checked against renders of PDF p. 4–5 and are transcribed as printed.

## Data tables
**Divider geometry and results** (p. 3, 7, 12, 14; Figs. 3, 10, 12, 14):

| Divider | Upper max width | Width ratio | β | Upper path longer by | ξ at exit (x/D, CFD) | τ (CFD) | Plateau p₀ loss vs no divider |
|---|---|---|---|---|---|---|---|
| I | 0.5D | 1 | 19° | 5% | 0.53 | 15 µs | 5% |
| II | D | 2 | 13° | 4% | 0.99 | 19 µs (EXP 25 µs) | 12% |
| III | 2D | 4 | 7° | 2% | 1.37 | 27 µs | 20% |

Lower branch width 0.5D in all; α = 19° in all; D = 8.5 mm.

**Divider I validation** (Fig. 10, p. 9): ξ_EXP = 0.55, ξ_CFD = 0.53, ξ_GSD = 0.39.
> 0.53 vs 0.55 is 4% smaller, as the text says, but 0.39 vs 0.55 is about 29% smaller, not the 20% stated on p. 7. Check Fig. 10 against the text.

**Approximate values read from Fig. 14 (p. 14), verify before quoting:** undivided M_s = 1.61 reference total pressure ≈ 4.1 bar (dash-dot line); first-shock plateau ≈ 2.6 bar (CFD); peak after second shock ≈ 4.5 (I), 4.8 (II CFD), 4.6 (II EXP), 4.4 bar (III). My own normal-shock estimate (moving M_s = 1.61 shock into still air at 1 bar, γ = 1.4) gives p₀₂ ≈ 3.96 bar, ≈ 4.0 bar at 1.013 bar ambient.

## Figures worth remembering
- **Fig. 1 (p. 2):** shock-tube layout with solenoid, Mylar diaphragm, convergent driven section and divider on a linear rail.
- **Fig. 2 (p. 3):** cross-section of the divider assembly: shock-tube exit, round-to-square transition, divider, exit duct.
- **Fig. 3 (p. 3):** the three divider geometries in x/D, with angles α and β.
- **Fig. 4–5 (p. 4):** Z-type schlieren layout; photo and mounting of the Kulite total-pressure probe.
- **Fig. 6 (p. 5):** GSD shock-front and ray coordinates (α, β).
- **Fig. 7 (p. 6):** CFD domain and the Cartesian cut-cell grid (N_D = 46).
- **Fig. 8 (p. 7):** grid convergence: pressure next to the centre body in divider III at t = 0.156 ms for N_D = 11–184.
- **Fig. 9 (p. 8):** side-by-side EXP schlieren, CFD numerical schlieren and GSD fronts for divider I, t = −0.0045 to 0.183 ms.
- **Fig. 10 (p. 9):** x–t diagram of both branch shocks for divider I (EXP, CFD, GSD) with ξ.
- **Fig. 11 (p. 10):** pressure and Mach-number (subsonic blue / supersonic red) contours in divider II at four times: single Mach reflection at the inlet, PM fans, quasi-steady normal shock, Mach reflection at the turning point, trailing-edge vortex.
- **Fig. 12 (p. 12):** CFD x–t diagrams for all dividers: whole divider, inlet and outlet close-ups with ξ.
- **Fig. 13 (p. 13):** numerical schlieren of the shocks entering the exit duct at two times for all dividers.
- **Fig. 14 (p. 14):** total pressure at x/D = 12.5: two-step rise, τ, sensor rise time, comparison with the undivided reference.

## Notation
- M_s: incident shock Mach number (1.61). D: divider square side (8.5 mm). N_D: cells across D.
- Width ratio: maximum upper-branch width over lower-branch width.
- ξ: streamwise separation of the two branch shocks at the divider exit, in x/D, measured on the outer walls.
- τ: time from first total-pressure rise to maximum total pressure at the probe.
- α, β: divider angles in Fig. 3a; separately, α = a₀t and β label GSD ray coordinates (Fig. 6). θ: ray angle. μ: post-shock Mach number relative to the shock. a₀: sound speed ahead of the shock.
- GSD: geometrical shock dynamics. PM: Prandtl–Meyer. PDC/PDE: pulse detonation combustor/engine.

## Relevance to this project
This is a transient internal shock-dynamics paper from a TU Berlin–Monash collaboration, outside the core resonance and feedback scope in CLAUDE.md. Nothing here is a jet, a feedback loop or a modal analysis. Its value is in the measurement and modelling tools.

- **Experimental side:**
  - The 210 kHz LED schlieren with shock-tube triggering and a BeagleBone timing unit is the same toolkit as the group's time-resolved schlieren. At ≈ 0.3D shock travel per frame, it resolves front positions well enough for x–t diagrams but each event is a single transient, so there is no statistical ensemble for SPOD or POD here. Methods suited to this data are front tracking, x–t diagrams and numerical-vs-experimental schlieren comparison, not modal decomposition.
  - The fast total-pressure probe (Kulite XCE-062 at the head) shows how to check probe validity in transient supersonic flow: simultaneous schlieren to rule out a bow shock, and comparison of plateaus against CFD. Its ≈ 9 µs rise time sets a floor on timing quantities such as τ (p. 13–14).
  - Repeated runs could support phase (trigger)-averaged schlieren, but the paper doesn't report this.
- **Modelling side:**
  - A 2D inviscid Euler cut-cell solver captures the shock patterns in minutes and matches experiment closely; GSD gets front positions even cheaper but under-predicts the branch separation (Fig. 10). Both ignore viscosity, and the shock-tube attenuation estimate (≈ 0.8% over the branch) justifies that here (p. 11).
  - Compare with the shock-capturing FV approach in [greenshields-2010](greenshields-2010-central-schemes-polyhedral-fv.md) (rhoCentralFoam) and the high-order PyFR route used for the screech LES ([witherden-2014](witherden-2014-pyfr-flux-reconstruction-framework.md)); this paper's dimensionally split MUSCL with cut cells is a cheaper, lower-order alternative for wave-dominated internal flows.
- **Physics with links to jet work:**
  - Shock diffraction at a convex corner producing supersonic flow, PM fans and a quasi-steady normal shock behind a nominally subsonic post-shock state is the same starting process as the transient supersonic jets that shock tubes produce at an open end (cf. the Rezay Haghdoost et al. 2020 PRF trailing-jet paper and Thethy et al. 2019 on nozzle geometry, both cited).
  - Mach reflection and triple-point dynamics connect to the impinging-jet shock structures in [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md) and [henderson-2002](henderson-2002-flow-structure-supersonic-impinging-jets.md).
  - For schlieren-derived quantitative density, see [tan-2015](tan-2015-bos-density-axisymmetric-jets.md) and [raffel-2015](raffel-2015-background-oriented-schlieren-review.md); for PIV tracer lag across shocks, [ragni-2011](ragni-2011-particle-tracer-response-shocks-piv.md).
  - K. Oberleithner is also an author of [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md) (POD pair and stability of a swirling jet).
- **Related works cited, candidates for `/add-paper`:**
  - Rezay Haghdoost et al. 2020, *Dynamic evolution of a transient supersonic trailing jet induced by a strong incident shock wave* (PRF 5, 073401); possibly the unindexed `36_Haghdoost_2020.pdf`.
  - Rezay Haghdoost et al. 2020, *Mitigation of pressure fluctuations from an array of pulse detonation combustors* (J. Eng. Gas Turbines Power).
  - Thethy et al. 2019, *Influence of nozzle geometry on detonation-driven and shock-driven transient supersonic jet flow* (ISABE); see also the unindexed `54_Thethy_2022.pdf`.
  - Henshaw, Smyth & Schwendeman 1986 (numerical GSD); Whitham 1957/1958 (GSD theory).
  - Willert, Mitchell & Soria 2012 (high-power LED schlieren).
