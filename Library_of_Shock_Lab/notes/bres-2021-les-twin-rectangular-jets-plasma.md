---
key: "bres-2021-les-twin-rectangular-jets-plasma"
title: "Towards large-eddy simulations of supersonic jets from twin rectangular nozzle with plasma actuation"
authors: ["Brès, G. A.", "Yeung, B. C. Y.", "Schmidt, O. T.", "Esfahani, A.", "Webb, N.", "Samimy, M.", "Colonius, T."]
year: 2021
type: "conference"
venue: "AIAA 2021-2149 (Aviation)"
bib: {"booktitle": "AIAA Aviation 2021 Forum"}
doi: "10.2514/6.2021-2149"
arxiv: ""
pdf: "twin-jet-coupling/Bres-EtAl_2021_Towards-Large-Eddy-Simulations-Of-Supersonic-Jets-From-Twin-Rectangular-Nozzle.pdf"
version: "conference"
unverified: ["PDF prints no paper number or venue: AIAA 2021-2149, DOI and Aviation 2021 Forum inferred, not verified"]
group: false
facility: "OSU GDTL; Charles LES (Cascade)"
data: ["LES", "microphones-near", "microphones-far"]
methods: ["PSD", "FW-H", "numerics"]
flow: ["twin-jet", "rectangular-jet", "supersonic", "ideally-expanded", "wall-bounded"]
phenomena: ["screech", "directivity", "shock-cells", "noise-control"]
params: {"M_d": "1.5", "M_j": "1.5", "NPR": "3.671", "TR": "1", "AR": "2", "s/D": "2.25 (centre-to-centre, D_e)", "D_e": "19.25 mm", "Re": "≈10⁶"}
topics: ["twin-jet-coupling", "simulation-methods", "screech-frequency-and-global-modes"]
related: ["esfahani-2021-coupling-modes-twin-rectangular-jets", "esfahani-2021-control-twin-rectangular-jet-coupling", "yeung-2022-3d-spod-twin-rectangular-jet", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "samimy-2006-plasma-actuators-high-speed-jet-flow-noise-control", "yeung-2024-adaptive-spod-broadband-tonal", "nogueira-2021-twin-jet-coupling-spatial-lsa"]
cites: []
summary: "Blind wall-modelled LES (Charles, 65M cells) of OSU AR-2 twin jets, M_d 1.5: mic spectra match to St≈1 incl. screech, OASPL ~1 dB; LAFPA heat-source model grid study"
---
# Towards large-eddy simulations of supersonic jets from twin rectangular nozzle with plasma actuation

- **Authors:** G. A. Brès (Cascade Technologies), B. C. Y. Yeung, O. T. Schmidt (UC San Diego), A. Esfahani, N. Webb, M. Samimy (Ohio State University), T. Colonius (Caltech)
- **Source:** AIAA conference paper, 2021 (AIAA Aviation 2021 Forum by date; the PDF prints no paper number or venue. Likely AIAA 2021-2149, DOI 10.2514/6.2021-2149, but this is unverified). Funded by ONR (N00014-19-1-2207 for OSU experiments, N00014-20-1-2311 for the LES) (p. 16).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/twin-jet-coupling/Bres-EtAl_2021_Towards-Large-Eddy-Simulations-Of-Supersonic-Jets-From-Twin-Rectangular-Nozzle.pdf` (17 pp.)
- **Tags:** LES, wall-modelled LES, twin rectangular jets, aspect ratio 2, supersonic jet (M_j = 1.5), screech, jet noise, FW-H, far-field and near-field acoustics, non-axisymmetric nozzle, plasma actuation (LAFPA), heat-source model, Voronoi mesh, Charles solver, grid resolution study, OSU

## Summary
The paper reports a first "blind" LES (run without seeing the data) of the Ohio State University (OSU) twin rectangular jet experiment. It has two aspect-ratio-2, bi-conical, sharp-throat nozzles at the design Mach number 1.5, run cold (NTR = 1), and the LES keeps geometric details such as the plasma-actuator grooves and electrodes. The simulation uses Cascade's unstructured compressible solver Charles on a 65-million-cell Voronoi mesh, with a Vreman sub-grid model, an equilibrium wall model inside the nozzle and a permeable FW-H surface for far-field noise. Near-field (nozzle-exit plane) and far-field spectra match the microphones well up to St ≈ 1, including the screech tone frequencies and amplitudes. The OASPL is mostly within 1 dB, apart from upstream angles and high frequencies, where the experiment shows a plateau the LES lacks. In a separate test, a localized arc filament plasma actuator (LAFPA) is modelled as a volumetric heat source in a groove under a Mach 1.5 flat-plate turbulent boundary layer. A three-mesh grid study tentatively shows that the twin-jet near-wall resolution is enough to carry the plasma-added energy downstream, though not the details near the groove.

## Key findings
- **Blind LES vs experiment, near field** (nozzle-exit microphone array; p. 9–11, Fig. 10):
  - Broadband and screech-tone spectra agree up to St ≈ 1. Above that the experimental spectra show a plateau (about 130–133 dB/St up to St ≈ 1.5–2 by visual reading), while the LES keeps a "traditional" decay. The cause is under investigation (p. 9, 11).
  - OASPL agrees to within 1 dB at all six microphones according to the text (p. 11). (Visual reading of Fig. 10c gives about 1.3 dB at mic 1.)
  - The main screech tone is at **St ≈ 0.3**, radiating mainly in the **minor-axis** direction. It raises the OASPL there by about **5 dB** (p. 11). By visual reading, the minor-axis mics (2, 3, 5, 6) are at about 138–140 dB and the major-axis mics (1, 4) at about 134–135 dB, and the minor-axis tone peaks at about 150–152 dB/St.
- **Blind LES vs experiment, far field** (polar arc, θ from the downstream axis ≈ 30–120°; p. 11–13, Fig. 11):
  - Good agreement at aft angles (θ ≈ 40°) on both the major and minor axes.
  - At sideline and upstream angles (θ ≈ 75° and above) the agreement is "satisfactory" and within the experimental block-to-block scatter, except at the highest frequencies. The experiment again shows a high-frequency plateau there (p. 11, 13).
  - The cabling, acoustic insulation and probes upstream of the nozzle are not modelled, so upstream agreement isn't expected to be as good (p. 11).
  - The far-field main tone is at **St ≈ 0.6**, not 0.3, and is again strongest on the minor axis. Spectra show the screech tone and its super- and subharmonics (p. 13).
  - OASPL along the major axis is within the block-to-block variation, at under 1 dB for all angles except θ ≈ 30° (about 1.7 dB by visual reading). The minor axis is equally good at aft angles. At the other angles, which Fig. 11f shows to be the sideline/upstream ones (θ ≈ 90–120°), the LES is 2–4 dB low (p. 13).
- **Experimental scatter as the yardstick:** block-to-block variation in short-time-averaged experimental spectra is about **±0.5 to 1.5 dB** for most relevant angles and frequencies (p. 11).
- **Shocks at design conditions:** the sharp-throat bi-conical nozzles produce shock cells even at nominally ideally expanded conditions (Fig. 9, p. 9–10).
- **Nozzle-exit boundary layer:** it is thin because the flow accelerates in a short nozzle. However, it *appears* turbulent at the exit, because of the high Re and the groove 1 mm upstream of the exit. This is to be verified in a future grid study (p. 9).
- **Plasma model grid study** (p. 13–15, Fig. 15):
  - The finer meshes (Δ_min ≈ 0.06 and 0.03 groove widths) capture prominent TKE and temperature peaks near the actuator. The twin-jet-equivalent mesh (Δ_min ≈ 0.12) shows no TKE peaks there and is the coolest far downstream.
  - With the baseline subtracted, the temperature *added by the plasma* far from the actuator agrees across all three meshes. So the injected energy, measured downstream, is much less sensitive to grid than the near-groove physics (p. 14).
  - Conclusion (tentative): the twin-jet nozzle-exit resolution is adequate if the region of interest is well downstream of the actuator. Fully converged comparisons are left for future work (p. 14).
- **Groove cavity dynamics:** at Δ_min ≈ 0.03 the baseline (unactuated) test case resolves pressure waves from the groove trailing edge, which the authors call a Rossiter mode, and recirculating vortices inside the groove (Fig. 13, p. 13–14).
- **Planned next steps** (p. 14): validate the baseline LES against more OSU data, including PIV. Validate the plasma model in the twin-jet configuration against OSU data. Then collect full LES databases, baseline and actuated, for **SPOD** analysis.

## Setup / method

### Experiment (OSU Gas Dynamics and Turbulence Laboratory; not a Shock Lab group facility)
- **Facility** (p. 2–3):
  - Anechoic chamber 6.2 × 5.6 × 3.4 m, lined with fibreglass wedges, cut-off 160 Hz.
  - Air supply: three five-stage compressors filling two 43 m³ tanks at up to 16 MPa. The air is dried, filtered and passed through screens before the plenum.
  - Heating up to TTR = 2.5. This study is cold (NTR = 1).
  - The nozzle assembly mounts on a circular plate and can be rotated in azimuth φ in 15° steps relative to the far-field array (Fig. 1).
  - The assembly sits inside a co-flow channel. The co-flow is inactive here and the channel is not in the LES domain (p. 3).
- **Diagnostics available** (p. 3):
  - Velocity on planes parallel to the major and minor axes.
  - Schlieren.
  - A nozzle-exit-plane microphone array (six mics, built to study jet coupling).
  - A traversable linear near-field array.
  - A far-field polar arc.
  - This paper compares only the nozzle-exit array and the far-field array. Full details are in Esfahani et al. 2021 (ref. 12).
  - Nozzle-exit array (Fig. 2a): mics 1 and 4 lie on the major axis (z) and mics 2, 3, 5 and 6 on the minor axis (y).
  - Far-field arc (Fig. 2b): θ = 30, 40, 50, 60, 75, 90, 105 and 120°.
- **Acoustic acquisition** (p. 11):
  - 400 blocks of 8,192 samples at 200 kHz, i.e. a sampling rate of St = 8.9 in Strouhal units.
  - Each block lasts t_exp c∞/h ≈ 1131, nearly twice the LES record. The total record is about 16 s (derived: 400 × 41 ms).
- **Plasma actuators** (p. 3–4):
  - Each actuator is a pair of 1 mm tungsten electrodes, with tips about 3 mm apart, driven by an in-house arc generator. Breakdown is at about 7 kV, and each actuator's repetition rate can be set independently up to 20 kHz.
  - The thermal perturbations excite KH instabilities (Samimy et al. 2018).
  - The diverging nozzle section is boron nitride, to prevent arcing to metal. The electrodes sit in grooves 1 mm wide and 0.5 mm deep, about 1 mm upstream of the exit. Earlier work found the groove does not reduce control authority (Hahn et al. 2011).
  - Layout: six actuators along the major axis (three top, three bottom) and two along the minor axis (p. 4). The text says "the nozzle"; it is unclear whether this count is per nozzle.

### Nozzle geometry (p. 4)
| Quantity | Value |
|---|---|
| Type | bi-conical, sharp throat |
| Design Mach M_d | 1.5 |
| Height h | 12.065 mm |
| Aspect ratio w/h | 2 (w ≈ 24.13 mm, derived) |
| Equivalent diameter D_e (area-based) | 19.25 mm = 1.6h |
| Inner spacing between nozzle sidewalls | = D_e (1.6h) |
| Centre-to-centre spacing | 2.25 D_e (= 3.6h; exits at z = ±1.8h) |

- **CAD clean-up** (p. 4, Fig. 3):
  - Bolt holes and internal structures in the trapezoidal support are filled, but the external cutouts are kept.
  - Electrode passages and the seams between nozzle pieces are filled.
  - The groove is kept exactly. Electrode tips are modelled as cylinders flush with the wall, so they don't protrude into the flow.
  - The text refers to an Appendix with more geometry detail (p. 4), but this 17-page PDF has none.

### Mesh generation: Voronoi (p. 4–6)
- The mesh is defined only by the surface geometry and a cloud of generating points. Connectivity follows uniquely from the points via Euclidean distance, so refining an area just means adding points there, and smoothing just means moving them (p. 4).
- Three steps, repeated as needed:
  1. Seed the points.
  2. Build the Voronoi diagram in parallel, clipped by the surface (which may be non-convex).
  3. Smooth or refine by moving points, then rebuild.
- Seeding follows a hexagonal close-packed (HCP) lattice, which avoids the degenerate point sets that trouble 3D Delaunay methods (p. 6).
- Smoothing uses Lloyd iteration: move each point to the centroid of its cell, rebuild, and repeat towards a centroidal Voronoi mesh. It can be restricted to a subset of points (p. 6, Fig. 5).
- Face normals are orthogonal to the vectors joining cell points, which helps both the mesher and the solver (p. 4). The point cloud is independent of the surface tessellation, so surfaces can move without cells folding.

### LES numerics (p. 7, 9)
| Item | Value / choice |
|---|---|
| Solver | Charles (Cascade Technologies), unstructured compressible finite volume; details in refs. 18–21 (Brès et al. 2017, 2018, 2019) |
| Non-dimensionalization | h and c∞; p = ρT/γ, γ = 1.4 |
| NPR = P_t/P∞ | 3.671 (ideally expanded for M = 1.5) |
| NTR = T_t/T∞ | 1 (cold; T_j/T∞ = 0.69) |
| M_j = U_j/c_j | 1.5 |
| Acoustic Mach M_a = U_j/c∞ | 1.25 |
| Re_j = ρ_j U_j D_e/μ_j | ≈ 10⁶ (matched to experiment) |
| Domain | truncated cone: inflow plane about 30h upstream of the exit (29.61h in Fig. 6), outflow 110h downstream; radius 40h at the inflow growing to 80h at the outflow |
| Co-flow | M∞ = 0.01, to prevent spurious recirculation and help entrainment |
| Boundary treatment | sponge layers and damping functions (Freund 1997; Mani 2012) |
| SGS model | Vreman (2004) |
| Wall treatment | near-wall refinement plus an equilibrium wall model on the convergent-duct, divergent and divergent-lip zones (Fig. 7c). The internal duct is split into zones where the area gradient changes, so refinement and boundary conditions can be set per zone, with the same settings on both nozzles |
| Far-field noise | frequency-domain permeable FW-H (Lockard 2000), with outflow "end-caps" (Shur et al. 2005); the surface is shown in Fig. 6b |
| Mesh | about 65M cells, refined along walls and in the shear layer; finest Δ = 0.01h near walls and in the groove (about 8 cells across its width and 4 across its depth) |
| Time step | dt c∞/h = 0.001 |
| Statistics record | t_sim c∞/h ≈ 611 after the transient, as **one block** (derived: ≈ 480 D_e/U_j, or ≈ 145 periods of the St = 0.3 tone) |
| FW-H sampling | St = 12.8 (derived: every ≈ 0.1 h/c∞, i.e. every 100 time steps) |
| Cost | ≈ 240k CPU-hours (36 h on 6,600 cores), Cray XC40/50 "Onyx", ERDC DSRC (p. 9, 16) |

### Spectral processing and comparison method (p. 9–11)
- FW-H pressure is computed at the **exact experimental microphone positions**.
- PSD for both experiment and LES is bin-averaged in Strouhal number with ΔSt = 0.025. OASPL is integrated over 0.05 ≤ St ≤ 3.
- The LES spectrum comes from one 611 h/c∞ block, so its raw resolution is ΔSt ≈ 0.002 (derived); the 0.025 bins provide the smoothing.
- Experimental spectra are averaged over 400 blocks.
- To put a short LES record against a long experiment, the authors show the **block-to-block spread** of short-time-averaged experimental spectra as error bars (Fig. 11).
- Every analysis here (PSD, OASPL, FW-H) needs **time-resolved** signals. The planned future SPOD of the LES database will too.
- Near-field statistically equivalent mics are plotted together: 1 and 4 on the major axis, and 2, 3, 5 and 6 on the minor axis (p. 9).

### Plasma actuation model and test case (p. 8–9, 13–15)
- **Model:** identical to Kim et al. 2009, which descends from Utkin et al. 2007 (1D, axisymmetric N–S with a cylindrical heat source), then Kleinman et al. 2009 (2D), then Kim et al. 2009 (3D, inside an axisymmetric nozzle) (p. 2).
  - The plasma filament is represented as a purely **thermal** volumetric source S added to the energy equation (eq. 1–4). There is no body force or electrical model.
- **Test domain** (Fig. 8; lengths in groove widths):
  - A flat plate 50 long, with a domain height of 8 (Fig. 8b) and a spanwise-periodic span. The groove is 1 wide and 0.5 deep, starting 20 from the inlet, with 29 downstream.
  - Inflow: synthetic turbulence. Top boundary: symmetry. Outflow: characteristic boundary.
  - Walls: adiabatic with a wall model upstream and downstream of the groove; adiabatic and wall-resolved (no wall model) in the groove.
  - The real filaments have finite length. The test is made spanwise-periodic for simplicity (p. 8).
- **Conditions:**
  - M∞ = 1.5, Re_θ = 31,000.
  - Actuator: V = 400, I = 0.25 ("loosely based" on Utkin et al.), r0 = 0.25, z_l = −1.5, z_r = 1.5, σ_xy = σ_z = 5.
  - Timing: P_act = 2, t_i = 0.4, t_f = 0.8, t_r,i = t_r,f = 0.04, i.e. a 20% duty cycle (derived) (p. 8).
- **Validation vs verification:** there are no boundary-layer measurements in the nozzle, so the model is only *verified* by grid refinement, not validated (p. 8). The Δ_min ≈ 0.03 case is treated as the reference solution (p. 13).
- **Run length:** after the transient, each mesh is run for 12 actuation periods, by which time the first pulse has about reached the outlet (p. 13).
- **Diagnostics:**
  - Spanwise-averaged temperature (log scale, Fig. 14).
  - Spanwise-averaged temperature and TKE after 12 periods, integrated over the wall-normal direction, as functions of x (Fig. 15a); and the same with the baseline (unactuated) values subtracted (Fig. 15b).
  - Numerical schlieren ∂ρ/∂x and streamlines in the groove for the baseline (Fig. 13).

## Key equations
Plasma heat source added to the energy equation (p. 8; re-typed from the page image):
- Eq. 1: $S(x,y,z,t) = n(t)\, l(r)\, m(z)\, \dfrac{V I}{\pi r_0^2 L}$
- Eq. 2, radial profile: $l(r) = \tfrac12\left[\tanh\!\left(-\sigma_{xy}\left(r - \tfrac12\right)\right) + 1\right]$, with $r = \sqrt{((x-x_{act})/r_0)^2 + ((y-y_{act})/r_0)^2}$
- Eq. 3, axial top-hat between z_l and z_r: $m(z) = -\tfrac12\left[\tanh\!\left(-\sigma_z \dfrac{z-z_l}{r_0}\right)+1\right] + \tfrac12\left[\tanh\!\left(-\sigma_z \dfrac{z-z_r}{r_0}\right)+1\right]$
- Eq. 4, smoothed square pulse: $n(t) = \tfrac12\left[\tanh\!\left(\dfrac{t-t_i}{t_{r,i}}\right) - \tanh\!\left(\dfrac{t-t_f}{t_{r,f}}\right)\right]$, repeated with period P_act (repetition implied).
- Notation: V is voltage, I current, L filament length (presumably z_r − z_l), r0 filament radius, and σ_xy and σ_z sharpness parameters.
- Checks:
  - m(z) evaluates to 0 outside [z_l, z_r] and 1 inside.
  - n(t) is 1 for t_i < t < t_f.
  - Because r is normalised by r0, the radial step of l(r) sits at r = 1/2, i.e. a physical radius of r0/2. The volume integral of S is then about n·VI/4, not n·VI. Either r0 acts as a diameter or the normalisation differs from what is printed.

> Equations re-typed from the rendered page (p. 8). The r0/2 step and VI/4 integral are my own reading of eq. 1–2 as printed; check before reusing the model.

## Data tables
**Grid study for the plasma test case** (p. 13; Δ in groove widths)

| Mesh | Δ_min | Cells | Notes |
|---|---|---|---|
| Coarse | ≈ 0.12 | ≈ 0.15M | matches the twin-jet near-wall resolution (0.01h ≈ 0.12 mm ≈ 0.12 groove widths) |
| Medium | ≈ 0.06 | ≈ 0.62M | |
| Fine | ≈ 0.03 | ≈ 2.5M | reference; resolves Rossiter waves and recirculation in the groove |

**Values read from figures** (visual; approximate):
- Fig. 15a, peak integral mean temperature just downstream of the actuator: about 2.9 (fine), 2.4 (medium) and 2.2 (coarse). Far downstream: about 2.1–2.2 (fine and medium) vs about 2.0–2.05 (coarse).
- Fig. 15b, plasma-added peak: about 0.85, 0.33 and 0.25 respectively. All three are about 0.1 by x ≳ 30.
- Fig. 15b, plasma-added TKE: noisy, ±4×10⁻³, with no clear trend. This is consistent with the unconverged statistics the authors mention.
- Fig. 11d, minor axis at θ ≈ 105°: the experimental tone peak at St ≈ 0.6 is about 125 dB/St against about 121 dB/St in the LES.

> All figure readings are visual estimates. The Fig. 15 legends are inconsistent: Δ ≈ 0.03 is listed as black in three panels but plotted in blue. Check against the PDF (p. 11–15).

## Figures worth remembering
- **Fig. 1 (p. 3):** twin-jet assembly, with minor axis y, major axis z and azimuthal angle φ.
- **Fig. 2 (p. 3):** nozzle-exit six-mic array (photo) and the far-field polar arc, θ = 30–120°.
- **Fig. 3 (p. 5):** hardware vs wetted CAD surface, including groove and electrode details.
- **Fig. 4–5 (p. 6):** how a Voronoi mesh is built; one Lloyd iteration.
- **Fig. 6–7 (p. 7–8):** domain dimensions, mesh with the FW-H surface and end-caps, and the boundary-condition zones.
- **Fig. 8 (p. 9):** plasma test domain and its boundary conditions.
- **Fig. 9 (p. 10):** instantaneous temperature cuts through both jets (major-axis plane y = 0, minor-axis plane z = 1.8h, and cross-sections at x = 0, 2h, 5h and 10h). Shock cells are visible in both cores. The jets are still distinct at x = 10h.
- **Fig. 10 (p. 11):** near-field PSD and OASPL, experiment vs LES. The minor-axis screech peak is at St ≈ 0.3.
- **Fig. 11 (p. 12):** far-field PSD at θ ≈ 40° and 105° on both axes, with block-to-block error bars, and OASPL directivity against 180° − θ.
- **Fig. 12–14 (p. 13–14):** plasma test meshes, groove Rossiter waves and recirculation, and the actuated temperature field.
- **Fig. 15 (p. 15):** grid convergence of integrated temperature and TKE, with and without the baseline subtracted.

## Notation
- h: nozzle height. w: width. D_e: area-equivalent diameter. St = f D_e/U_j.
- Subscripts: j for fully expanded, ∞ for ambient, t for stagnation, act for actuator, i and f for the signal turning on and off, r for rise time.
- NPR = P_t/P∞. NTR = T_t/T∞. TTR is the facility's total temperature ratio. M_a = U_j/c∞.
- Coordinates: x streamwise, y minor axis, z major axis, origin midway between the nozzle exits. θ is the polar angle from the downstream jet axis and φ the azimuthal angle.
- Δ: grid spacing (in h for the jet, in groove widths for the plasma test). σ: sharpness parameter.
- LAFPA: localized arc filament plasma actuator. FW-H: Ffowcs Williams–Hawkings. OASPL: overall sound pressure level.

## Relevance to this project
This project analyses experimental resonance and feedback data (schlieren, acoustics, PIV) from the Shock Lab, including non-axisymmetric nozzles (see CLAUDE.md). This is not Shock Lab group work: the experiments are at the OSU Gas Dynamics and Turbulence Laboratory.

- **Screech in non-axisymmetric twin jets:**
  - The configuration is a closely spaced pair of AR-2 rectangular jets that screech, with the tone directed mainly along the minor axis (p. 11, 13).
  - The near-field main tone is at St ≈ 0.3, but the far field is dominated by St ≈ 0.6 (p. 11, 13). The paper does not say which tone is the fundamental, or why the far-field directivity favours the higher one.
  - This is the kind of question the user's acoustic and schlieren SPOD/BMD workflow addresses. BMD would test whether St 0.6 is a quadratic harmonic of St 0.3, and phase across the near-field ring would show the coupling mode.
  - Compare with the companion experiments in [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md) (ref. 12 here) and [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md) (plasma control of coupling), and with the stability-theory view in [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md).
- **Shocks at "ideal" expansion:** sharp-throat bi-conical nozzles produce shock cells at the design NPR (p. 9). Screech-relevant shock–KH interaction can therefore exist without any mismatch in expansion. Bear this in mind when calling a lab nozzle "ideally expanded". See the shock–KH interaction mechanism in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md) and screech-closure notes [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md). None of these closure mechanisms is analysed in this paper.
- **Nozzle details matter:**
  - The electrode groove 1 mm upstream of the exit appears to make the exit boundary layer turbulent (p. 9).
  - At fine resolution the groove supports its own Rossiter-type cavity waves (p. 13). Since a cavity could add its own acoustic feedback, this is worth remembering when interpreting tones from instrumented or modified nozzle lips.
  - Related OSU rectangular-nozzle trailing-edge studies: [samimy-1998-rectangular-jet-trailing-edge-control.md](samimy-1998-rectangular-jet-trailing-edge-control.md) and [kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md).
- **Simulation side (assumptions to keep in mind when comparing with lab data):**
  - Wall-modelled LES with an equilibrium wall model and Vreman SGS.
  - The co-flow channel and upstream hardware are left out, which is blamed for the upstream-angle deficits (p. 3, 11).
  - The exit boundary-layer state is not yet verified (p. 9).
  - One short record of 611 h/c∞ (p. 9).
  - The good aft-angle and OASPL agreement (≤ 1 dB) and the correct screech frequency and amplitude in a *blind* run are a benchmark for what high-fidelity LES can deliver on complex, shock-containing, non-axisymmetric nozzles.
  - The high-frequency experimental plateau (near and far field) is unexplained (p. 11). If the lab's microphone spectra show a similar plateau, it is worth checking for facility or instrumentation sources.
  - For other solver approaches see [greenshields-2010-central-schemes-polyhedral-fv.md](greenshields-2010-central-schemes-polyhedral-fv.md) (rhoCentralFoam); for open reduced-modelling datasets see [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md).
- **Comparing a short simulation with a long experiment:** showing the block-to-block spread of short-time-averaged experimental spectra (±0.5–1.5 dB here, p. 11) is a simple, transferable way to judge whether simulation–experiment differences matter. It applies equally to comparing lab acoustics with an ROM or LES, or comparing SPOD spectra from short and long records.
- **Method vs data type:**
  - Everything in this paper (PSD, OASPL, FW-H) needs **time-resolved** pressure.
  - The planned LES database is meant for **SPOD** (p. 14). That is the time-resolved branch of the user's workflow, and the same database would support BMD and the SPOD → reconstruction → Hilbert POD pipeline, e.g. to track the screech amplitude and the coupling between the jets over time.
  - The planned PIV comparisons (p. 14) would be non-time-resolved. The POD-pair route is the one that applies there.
  - [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md) (Yeung & Schmidt, co-authors here) targets exactly the mixed broadband-plus-tonal spectra seen in Fig. 10–11.
- **Intermittency and mode switching:** these are not examined here. The LES is one block (about 145 screech periods at St 0.3, derived), too short to study switching. The experiment's 400 × 8,192-sample record could support a Hilbert-transform or HPOD look at how tone amplitude varies between blocks. The visibly larger error bar at the St ≈ 0.6 peak in Fig. 11d (visual reading) hints at some tonal amplitude variability.
- **Forcing models:** the LAFPA heat-source model (eq. 1–4) is a compact parametrisation of localized, pulsed thermal forcing. It is relevant if lab actuation or forcing-based (resolvent-type) comparisons are ever needed. Its grid study shows that the downstream energy injection can be captured on coarse near-wall grids even when the near-groove physics is not (p. 14).
