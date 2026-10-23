---
key: "bres-2017-unstructured-les-supersonic-jets"
title: "Unstructured Large-Eddy Simulations of Supersonic Jets"
authors: ["Brès, Guillaume A.", "Ham, Frank E.", "Nichols, Joseph W.", "Lele, Sanjiva K."]
year: 2017
type: "article"
venue: "AIAA J. 55(4), 1164–1184"
bib: {"journal": "AIAA Journal", "volume": "55", "number": "4", "pages": "1164--1184"}
doi: "10.2514/1.J055084"
arxiv: ""
pdf: "simulation-methods/Bres-EtAl_2017_Unstructured-Large-Eddy-Simulations-Of-Supersonic-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "Charles LES (Cascade Technologies); experiments in the UTRC acoustic research tunnel"
data: ["LES", "microphones-near", "microphones-far"]
methods: ["numerics", "FW-H", "statistics", "PSD", "shock-cell-model"]
flow: ["round-jet", "supersonic", "ideally-expanded", "overexpanded", "heated"]
phenomena: ["mixing-noise", "Mach-wave-radiation", "BBSAN", "shock-cells", "directivity"]
params: {"M_d": "1.5", "M_j": "1.5 (A1, A2); 1.35 (A3)", "NPR": "3.67 (A1, A2); 2.97 (A3)", "TR": "1.45 (A1); 2.53 (A2, A3)", "T_j/T_∞": "1.0, 1.74, 1.85", "Re": "Re_j 3.0×10⁵, 1.55×10⁵, 1.3×10⁵ (≈5.5× below the experiment)", "D": "2 in. (50.8 mm)", "M_∞": "0.1 (co-flow)", "δ_θ/D": "0.0017–0.0030", "cells": "42×10⁶ (axisymmetric), 55×10⁶ (adapted)"}
topics: ["simulation-methods", "jet-noise-mechanisms", "shock-cell-models"]
related: ["bres-2021-les-twin-rectangular-jets-plasma", "nogueira-2021-wavepacket-modulation-shock-containing-jets", "nogueira-2026-flapping-motion-screeching-round-jets", "wong-2021-wavepacket-modelling-bbsan", "schmidt-2018-spectral-analysis-jet-turbulence", "pickering-2020-lift-up-kh-orr-jets", "towne-2022-database-reduced-complexity-modeling", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "tam-1982-shock-associated-noise-cd-nozzles", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "tam-1995-supersonic-jet-noise", "jordan-2013-wave-packets-turbulent-jet-noise", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "witherden-2014-pyfr-flux-reconstruction-framework", "tsutsumi-2015-epsilon-liftoff-acoustics", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "yeung-2022-3d-spod-twin-rectangular-jet", "bres-2019-modelling-jet-noise-les-perspective"]
cites: ["jordan-2013-wave-packets-turbulent-jet-noise", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise"]
summary: "Charles LES of an M_d 1.5 C-D round jet (cold, hot, hot overexpanded): laminar exit BL at reduced Re, isotropic mesh, FW-H with end-caps; blind OASPL within 1.5–2.5 dB"
---
# Unstructured Large-Eddy Simulations of Supersonic Jets

- **Authors:** Guillaume A. Brès and Frank E. Ham (Cascade Technologies, Palo Alto), Joseph W. Nichols (University of Minnesota), Sanjiva K. Lele (Stanford) (p. 1164). Not Shock Lab group work.
- **Source:** AIAA Journal 55(4), April 2017, 1164–1184, doi:10.2514/1.J055084. Presented as AIAA Paper 2012-2695 (42nd AIAA Fluid Dynamics Conference, New Orleans, June 2012); received 3 Feb 2016, revised 7 Sep 2016, accepted 12 Sep 2016, online 15 Feb 2017. Associate editor C. Bailly (p. 1164, 1184). Funded by NAVAIR (grant N68335-11-C-0026); computed on DoD CRAY XE6 machines (p. 1181).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/simulation-methods/Bres-EtAl_2017_Unstructured-Large-Eddy-Simulations-Of-Supersonic-Jets.pdf` (index key `simulation-methods/Bres-EtAl_2017_Unstructured-Large-Eddy-Simulations-Of-Supersonic-Jets.pdf`, 21 pp., publisher's version with an ARC download stamp). Page refs are journal pages; **PDF page = journal page − 1163**. The text layer garbles all equations and Tables 1–3; these were rebuilt from rendered pages (300 dpi for the equations, Figs 8, 10c, 11c, 12 and 16).
- **Tags:** Charles unstructured finite-volume LES, skew-symmetry-based flux blending, HLLC, hybrid shock capturing, Vreman SGS, adaptive mesh refinement, grid isotropy, nozzle included, laminar exit boundary layer at reduced Re, characteristic BCs and sponges, co-flow, frequency-domain permeable FW-H with uniform-flow Green's function, pressure-based FW-H, end-caps, FW-H surface location, Mach wave radiation, BBSAN, shock-cell spacing in an overexpanded C-D jet, blind comparison with UTRC data, best-practice guidelines

## Summary
The paper reviews the numerics of Cascade's unstructured compressible LES solver Charles and uses it, as a worked example of best practice, on a 2 in. round converging–diverging nozzle (M_d = 1.5) from the UTRC acoustic research tunnel at three conditions: isothermal ideally expanded (A1, M_j 1.5), heated ideally expanded (A2, M_j 1.5, T_j/T∞ 1.74) and heated overexpanded (A3, M_j 1.35, T_j/T∞ 1.85) (p. 1164, 1166–1167). The nozzle is meshed, on either a 42M-cell "axisymmetric" grid or a 55M-cell grid built by directional adaptive refinement for isotropic cells, and its boundary layer is laminar: the Reynolds number is lowered about 5.5× so that a laminar layer has the momentum thickness RANS estimates for the experiment's turbulent one (p. 1167–1169). Far-field sound comes from a frequency-domain, pressure-based permeable FW-H solver with 16 averaged outflow end-caps (p. 1166, 1177–1181). Blind comparisons give a potential core within about 5 %, near-field spectra that match over St 0.05–2 for the ideally expanded jets, far-field OASPL typically within 1.5–2.5 dB, and a well-placed BBSAN peak for A3. The errors are a tilted directivity (high-St over-prediction at intermediate angles, peak under-prediction downstream), low-St deficits from the short records, and a 5–6 dB near-field deficit at St ≲ 0.4 in the overexpanded jet that the authors blame on dissipative shock capturing (p. 1172–1176). There is no modelling beyond the Prandtl–Pack spacing, the fully expanded diameter and the BBSAN peak-frequency formula. The paper ends with ten guidelines on mesh, numerics, nozzle modelling, signal processing and FW-H practice (p. 1179).

## Key findings
- **Flux blending set by the mesh, not tuned** (eqs. 1–2, p. 1165; Fig. 3, p. 1168). The face flux blends a central and an upwind (HLLC) flux with a local α = c‖D + Dᵀ‖, the row 2-norm of the symmetric part of the discrete gradient operator; c = 2 was found stable by eigenvalue tests on small grids. α depends only on the grid and is computed once. It is near zero over most of the domain and large only at the first cells off walls, at polyhedral or tetrahedral transition cells (axisymmetric grid) and at hanging-node transitions and skewed cells on the nozzle exterior (adapted grid) (p. 1167).
- **Grid isotropy is the main meshing rule** (p. 1166). Earlier Charles rectangular-jet LES over-predicted high-frequency upstream noise (St ≳ 2 at φ = 60–90°) on both an 11M and an 86M grid with strong downstream stretching, but not on a 45M grid with near-unit aspect ratio in the jet. Hence isotropic cells in the source region, by design or by adaptation.
- **Adaptation pays off in time step, not cell count** (p. 1168; Table 3). The adapted grid is 30 % larger (55M vs 42M) but avoids tiny cells, so Δt is 2–4× larger: Δt c∞/D = 0.0004 against 0.0001–0.0002. On the lip line for 0 ≤ x/D ≤ 0.5 it gives Δx/D ≈ 0.0026, Δr/D ≈ 0.0035, rΔθ/D ≈ 0.0031, i.e. more than 1000 cells round the circumference. A side effect is abrupt length-scale jumps between refinement zones (p. 1168).
  - My arithmetic from the core-hour figures (p. 1170): A2 costs about 1540 core-h per c∞/D time unit, A2_55M about 590 (2.6× cheaper); A3 about 1210 and A3_55M about 930 (1.3× cheaper).
- **Laminar exit layer at reduced Re** (p. 1169). There is no tripping, forcing, synthetic turbulence or wall model in the nozzle; the nozzle grid only supports laminar flow. RANS of the isothermal case gave δ_θ/D ≈ 2 × 10⁻³, and Re was lowered (about 5.5×, staying above 10⁵) so that a laminar layer has that thickness. The measured exit δ_θ/D is 0.0017–0.0030 (Table 1). Peak exit fluctuations are 0.2–2.5 % of U_j and are driven by mesh details, so "qualitative" (p. 1169).
  - In A3 the overexpanded nozzle carries a shock anchored inside the nozzle at x/D ≈ −0.1, which separates the flow at the wall and raises exit fluctuations (p. 1169; Fig. 5b peak u′_rms/U_j ≈ 0.024 on the axisymmetric grid, ≈ 0.016 adapted, figure reading).
- **Mean flow matches, grids agree** (Figs 8–9, p. 1172–1173). Potential-core length (u > 0.95U_j): 9.7D LES vs 10.2D experiment for A1; 8.4D vs 8.5D for A2. The heating trend follows Lau's (T₀/T∞)^−0.2 (p. 1173). The maximum velocity at x/D = 15 is within 5 %. Axisymmetric and adapted grids are "essentially identical", apart from RMS for x/D > 10 (averaging time) and small RMS jumps at x/D ≈ 2 and 10 on the adapted grid (zone transitions) (p. 1172).
  - The lip-line u′_rms has a transition spike, peaking 0.6D–1.3D downstream, earlier on the adapted grid (p. 1174). Read from Fig. 8: peak about 0.17 (A1), 0.18 (A2) and 0.19–0.20 (A3, and A2_55M), against a turbulent-shear-layer level of about 0.15.
- **Residual shocks in the "ideally expanded" jets** (p. 1172). Weak shock cells sit in the potential core of A1 and A2 (Fig. 7a; centreline ripples for 0 ≤ x/D ≤ 5, Fig. 8). The experiment's quietest (shock-free) condition was NPR 3.55, NTR 1.49, M_j 1.477, not the nominal 3.67/M_j 1.5 used in the LES. The shock-capturing scheme is not active in A1, A2 and A2_55M.
- **Overexpanded shock train** (Fig. 8c, p. 1173–1174). Ten shock cells are visible on the centreline. D_j/D ≈ 0.953 from the mean flow against 0.962 from mass conservation (eq. 9). The first cell is L₁ ≈ 0.93D, and later cells shrink linearly with a 6–7 % slope. Prandtl–Pack (eq. 10) with D_j gives L_s = 1.14D, so L₁/L_s ≈ 0.82, the same ratio as in Norum & Seiner's measurements ([Norum & Seiner 1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md)) and de Cacqueray et al.'s LES (2011) for other overexpanded jets. Pack is good for M_d = 1 nozzles but over-predicts for M_d > 1 (citing Munday et al. 2011) (p. 1174).
- **Near field: FW-H equals the direct LES** (Fig. 10, p. 1174–1175). At six probes (x/D 5–14, φ = 163–169°), FW-H and direct pressure agree up to St ≈ 1 everywhere and up to St ≈ 2 near the nozzle; beyond that, the direct signal loses to mesh coarsening outside the FW-H surface (faster on the adapted grid), and the FW-H may lack quadrupole contributions.
  - Against experiment: good for A1 and A2 from St 0.05 to the experimental cut-off St ≈ 2–3.
  - **A3 low-St deficit:** both grids and both methods under-predict St ≲ 0.4 between the exit and the end of the potential core. The experiment is 5–6 dB higher for A3 than for A2 there, the LES only slightly higher (p. 1175; Fig. 10c at x/D = 5 shows the experimental plateau at St 0.1–0.45 about 5 dB above the LES, figure reading). The authors' explanation is the more dissipative shock flux, active exactly there, damping wavepacket growth (citing Jordan & Colonius 2013). Later Charles runs that switch to a Ducros-type sensor restricted to compressions (Bhagatwala & Lele) do not show the deficit (p. 1175).
- **Far field** (Figs 11–12, p. 1175–1176). FW-H at the UTRC microphones (60–78D from the exit, my arithmetic from Table 2), 72 azimuthal stations averaged, OASPL integrated over 0.05 ≤ St ≤ 3.
  - Near-systematic under-prediction below St ≈ 0.15, put down to the short records.
  - Ideally expanded jets: slight over-prediction at 1 ≤ St ≤ 4 for φ = 100–130°.
  - OASPL "typically within 1.5 to 2.5 dB", but the directivity is tilted: too high at low φ, too low at high φ, from the mid-St over-prediction plus an under-predicted peak (0.1 ≤ St ≤ 0.3, φ ≥ 140°) (p. 1176). By my reading of Fig. 12, the largest gaps are about +4 dB for A2 near 130° and about −5 dB for A3 at 155°.
  - The same four symptoms appeared in the Charles M 0.9 jet with laminar exit layers and disappeared, to within 0.5 dB at most angles, once near-wall refinement, synthetic turbulence and a wall model gave a turbulent exit layer (citing Brès et al. 2014, 2015). The authors' hypothesis is that nozzle-interior modelling, plus better shock capturing, would fix these jets too (p. 1176).
- **BBSAN of the overexpanded jet** (Fig. 11c, eq. 11, p. 1176). The hump at 0.5 ≤ St ≤ 1 at φ = 90° is captured. Eq. 11 with U_c = 0.7U_j gives St 0.61 with Pack's L_s and 0.75 with the measured L₁, against 0.78 (LES) and 0.75 (experiment). In the LES the BBSAN level falls off more slowly with angle than measured, giving over-prediction around St 1–2 at φ = 110–120°.
- **Mach waves and shock noise in the instantaneous fields** (Fig. 7, p. 1170–1171). Mach waves radiate aft (φ ≈ 135–150°) in all three jets, strongest in A2 (highest M_a = 1.98). A3 adds circular waves from the stationary shocks between the exit and the end of the core, radiating to φ ≈ 50–90°. A similar circular pattern appears just past the potential core in all three jets.
- **Co-flow in the FW-H propagation** (Fig. 13, p. 1176–1177). The experiment has no shear-layer correction: sound crosses the 10D-diameter co-flow jet and its mixing layer. The FW-H uses the M∞ = 0.1 surface data but propagates through fluid at rest (M∞ = 0). Propagating with M∞ = 0.1 instead changes spectra subtly and does not improve agreement overall.
- **FW-H parametric study at 100D** (Figs 14–16, p. 1177–1179).
  - *Pressure-based vs density-based:* identical here (with end-caps there is no low-St over-prediction to cure), but the pressure-based form is kept because it needs only u and p on the surface (p. 1177–1178).
  - *Surface location:* tight S0, default S1 and loose S2 (flare slopes 0.095, 0.11, 0.13 from (x/D, r/D) = (0, 0.6)) give nearly identical spectra at φ = 60, 90 and 150°, although S0 sees about twice S1's u′_rms (Fig. 15, figure reading: peak u′_rms/c∞ ≈ 0.032, 0.016, 0.011 for S0, S1, S2). The authors credit the isotropic, unstretched mesh (p. 1178).
  - *Outflow disk:* open at x/D = 20, open at 30, or one cap at 30 all over-predict low frequencies by up to 10 dB at upstream and sideline angles; at 150° real noise masks it. The spurious noise is worse for the cold A1 than for the hot A2 (p. 1179). Averaging 16 end-caps over x/D = 20–30 (Shur et al. 2005) removes it.
  - *Surface S3*, extended through the sponge to x/D = 45 and left open, matches S1 with end-caps: the sponge and coarse grid damp eddies before they cross the surface. The authors' hypothesis: open surfaces are safe when vortex–surface interaction is weak (p. 1179).
- **Grid study** (App. A, Fig. A1, p. 1180). A 2× coarser adapted grid (9M cells) for A3 shortens the core, raises and moves forward the centreline RMS peak, and lowers downstream RMS; low-St noise is unchanged. A spurious hump at St ≈ 10 (55M) moves to St ≈ 5 (9M) at 150°, tying it to the grid transitions; it is 25–30 dB below the peak.
- **Shock capturing and load balance** (p. 1170). The shock sensor fired on < 1 % of faces, yet A3 ran about a third fewer time units than A1 on the same mesh, cores and core-hours, because processors without shocks idled. Weighting shock cells in the partitioning restored linear scaling in later runs.

## Setup / method
**Configuration** (p. 1166–1167; Table 1; Fig. 2). UTRC 2 in. round C-D nozzle designed by the method of characteristics for M_d = 1.5, conditions B118 (A1), B122 (A2) and B122 OD (A3) of Schlinker et al. (2008, 2009). The nozzle geometry, data and the blind comparison were provided by UTRC (p. 1181). Experimental microphones D2M1–D2M12 and near-field probes D2P1–D2P17 match the LES stations (Table 2).

**Solver** (p. 1165–1166).
- Spatially filtered compressible Navier–Stokes, density-based finite volume on arbitrary unstructured grids; nondimensionalised by D, ρ∞, T∞, c∞, so p = ρT/γ, γ = 1.4; μ ∝ T^0.7 (p. 1167).
- Time: explicit third-order TVD Runge–Kutta (Gottlieb & Shu 1998; printed as "time-variation-diminishing").
- Space: nominally second order. Left- and right-biased reconstructions to each face barycentre, quadratic in the face-normal direction and linear tangentially, fitted by constrained least squares over face neighbours so that each integrates exactly to the L and R cell values (eqs. 3–7); coefficients stored per face, computed once. Flux: blend of central and HLLC upwind fluxes with mesh-dependent α (eqs. 1–2).
- Shock capturing: a hybrid switch (Hill & Pullin 2004) flags discontinuities; there, α = 1 and a second-order unstructured ENO reconstruction feeds HLLC. Later work replaces the switch with a Ducros sensor modified by Bhagatwala & Lele to flag only negative dilatation (p. 1175, 1179).
- SGS: Vreman, c = 0.07, Pr_t = 0.9; it gives zero eddy viscosity in laminar and fully resolved regions (p. 1166).

**Grids** (p. 1167–1168; Fig. 4).
- *Axisymmetric:* about 42M control volumes, 95 % hexahedra; a fully unstructured polyhedral core transitioning to an axisymmetric grid with 380 to 160 azimuthal points inside the FW-H surface, stretched towards the boundaries. Based on earlier Charles resolution studies.
- *Adapted:* "Adapt" refines a 0.15M-cell skeletal hexahedral grid directionally to target lengths, with surface projection to keep curved boundaries. Zones: 0.04D for 0 ≤ x/D ≤ 30 (enclosing the FW-H surface); 0.02D to x/D = 10 (potential core); 0.01D near the exit; 0.005D along the lip line. Total about 55M, 96 % hexahedra.
- Resolution limit: St_lim = D/(8 Δl M_a), with Δl the cube root of cell volume on the FW-H surface for 0 < x/D ≲ 10 and eight points per wavelength (after Shur et al. 2005 and Mendez et al. 2012), gives St_lim ≈ 2–3 (p. 1168).
- *Coarse check grid* (App. A): the adapted recipe at 2× coarser targets, about 9M cells (94 % hexahedra).

**Boundary conditions** (p. 1168–1169).
- Domain about 45D × 20D (Fig. 2a: 30D physical plus a 15D outflow buffer; 8D + 12D radially). Characteristic BCs (Poinsot & Lele 1992) on inlet, radial and outflow boundaries.
- Nozzle inlet: constant plug flow with p, u, T from NPR and NTR assuming isentropic nozzle flow. Walls: adiabatic no-slip.
- Co-flow M∞ = 0.1 at inlet and radial boundaries, as in the UTRC tunnel, where it stops the anechoic chamber overheating.
- Outflow sponge: source −σ(q − q_target) (Freund 1997) with q_target the running average, σ ∝ x² from 0 at x/D = 30 to 1 at 45. The length follows Mani (2012): at least one wavelength of the lowest frequency of interest, i.e. 15D for St 0.05. Upstream and radial sponges switch to lower-order dissipative operators.

**Conditions and run parameters** (Tables 1 and 3, p. 1167–1168): see Data tables. All runs on 1024 cores: about 172,000 core-h for each of A1, A2 and A3, 75,000 for A2_55M and 260,000 for A3_55M (p. 1170).

**Procedure and signal processing** (p. 1169–1170, 1181).
- Restart from a statistically steady coarser solution; discard 60–90 time units (two to three acoustic transits from the exit to the buffer); then collect statistics and FW-H surface data at Δt c∞/D = 0.02 for t_sim (112–280 c∞/D).
- St_max = ΔSt/2 (Nyquist of the FW-H sampling); St_min = D/(t_sim U_j), which is also the narrowband width. Re-processing with every second snapshot shows the high-St cut-off is set by the grid, not the sampling (p. 1169–1170).
- **No Welch blocks.** Each FW-H input (F_i, Q_n) has its mean removed, one Hanning window is applied over the whole record and it is Fourier transformed once (p. 1181). Narrowband PSDs (eq. B11) are then bin-averaged in frequency with ΔSt_bin = 0.05, the same treatment applied to the experimental data, and ensemble-averaged over azimuthal stations (48 near-field, 72 far-field) (p. 1170, 1174–1175). Without the window, leakage contaminates low frequencies at quiet angles φ < 120° (p. 1181).
- Convergence: the records give 11–26 periods at St = 0.05; at least 10 periods of the lowest frequency are needed (p. 1170). The authors call the short records a limitation; later Charles databases run 700–2000 acoustic times, which would also allow study of the temporal intermittency of the radiated noise (p. 1170).
- Experimental far-field spectra are "lossless" (atmospheric-absorption corrected), which raises St > 2; for A1 the correction is 1.5–5 dB above St 2 (p. 1175–1176). St = 2 is about 20 kHz here.

**FW-H solver** (App. B, p. 1180–1181). Convective FW-H for a stationary surface in a uniform subsonic stream (Lockard's frequency-domain formulation), with the exact uniform-flow Green's function (eqs. B6–B9), no far-field approximation (so it serves near-field probes too), volume (quadrupole) term dropped. Fourier transforms are done once per surface face; the surface integral is then evaluated per observer and frequency, with analytic Green's-function derivatives. MPI load balance is over surface faces. Default surface S1: follows the nozzle exterior, flares from (0, 0.6D) with slope 0.11, 16 end-caps over x/D 20–30 (Fig. 14, p. 1177).

**Modelling side.** No stability, wavepacket or reduced-order model is solved. The analytic content is (i) the fully expanded diameter by mass conservation (eq. 9), (ii) Prandtl–Pack spacing (eq. 10) and (iii) the BBSAN peak-frequency relation (eq. 11) with an assumed U_c = 0.7U_j, the co-flow's effect on U_c (≤ 2 %) neglected (p. 1176). The paper's physical interpretation of the low-St A3 deficit (damped wavepackets) is an argument, not a test.

## Key equations
Rebuilt from rendered pages and checked (my checks in the blockquote).

- **Flux blending** (eq. 1, p. 1165): $F=(1-\alpha)F_{\rm central}+\alpha F_{\rm upwind}$, $0\le\alpha\le1$.
- **α heuristic** (eq. 2, p. 1165): $\alpha=c\,\lVert D+D^{T}\rVert$ (row 2-norm of the symmetric part of the volume-integrated gradient operator D), c = 2. Motivation: energy stability needs $D+D^T=0$ (skew-symmetry).
- **Biased reconstruction** (eqs. 3–7, p. 1166): $P_l(x',y')=c_0+c_1x'+c_2x'^2+c_3y'$; constraints $\int P_l\,d\Omega_L=p_LV_L$, $\int P_l\,d\Omega_R=p_RV_R$; face values $p_{f,l}=\sum_{i\in L,R,L_{nbr}}w_{f,l,i}\,p_i$, $p_{f,r}=\sum_{i\in L,R,R_{nbr}}w_{f,r,i}\,p_i$.
- **Operating parameters** (eq. 8, p. 1167): ${\rm NPR}=p_0/p_\infty$, ${\rm NTR}=T_0/T_\infty$, $M_j=U_j/c_j$, $Re_j=\rho_jU_jD/\mu_j$; $M_a=U_j/c_\infty$; $St=fD/U_j$.
- **Resolution and spectral limits** (p. 1168–1170): $St_{\rm lim}=D/(8\,\Delta l\,M_a)$; $St_{\max}=\Delta St/2$ with $\Delta St=D/(\Delta t\,U_j)$; $St_{\min}=D/(t_{\rm sim}U_j)$.
- **Fully expanded diameter** (eq. 9, p. 1173): $\dfrac{D_j}{D}=\sqrt{\dfrac{M_d}{M_j}}\left[\dfrac{1+\frac{\gamma-1}{2}M_j^2}{1+\frac{\gamma-1}{2}M_d^2}\right]^{\frac{\gamma+1}{4(\gamma-1)}}$.
- **Prandtl–Pack spacing** (eq. 10, p. 1174): $L_s=\pi\sqrt{M_j^2-1}\,D_j/\mu_1$, $\mu_1=2.40483$.
- **BBSAN peak frequency** (eq. 11, p. 1176): $f_{\rm BBSN}=\dfrac{U_c}{L_s\,[1+M_c\cos\phi]}$, φ from the inlet (upstream) axis, $M_c=U_c/c_\infty$, $U_c=0.7U_j$.
- **Sponge** (p. 1168): source $-\sigma(q-q_{\rm target})$, $\sigma\propto x^2$.
- **Convective FW-H** (eq. B1, p. 1180): $\left(\dfrac{\partial^2}{\partial t^2}-c_\infty^2\dfrac{\partial^2}{\partial x_j\partial x_j}+2U_j\dfrac{\partial^2}{\partial t\,\partial x_j}+U_iU_j\dfrac{\partial^2}{\partial x_i\partial x_j}\right)[(\rho-\rho_\infty)H(S)]=\dfrac{\partial}{\partial t}[Q_n\delta(S)]-\dfrac{\partial}{\partial x_i}[F_i\delta(S)]+\dfrac{\partial^2}{\partial x_i\partial x_j}[T_{ij}H(S)]$.
- **Surface terms** (eqs. B2–B3): $Q_n=[\rho(u_i+U_i)-\rho_\infty U_i]\hat n_i$; $F_i=[P_{ij}+\rho(u_i-U_i)(u_j+U_j)+\rho_\infty U_iU_j]\hat n_j$; $T_{ij}=\rho u_iu_j+P_{ij}-c_\infty^2(\rho-\rho_\infty)\delta_{ij}$, $P_{ij}=(p-p_\infty)\delta_{ij}-\sigma_{ij}\approx(p-p_\infty)\delta_{ij}$.
- **Frequency domain** (eq. B4): $\left(\dfrac{\partial^2}{\partial x_j\partial x_j}+k^2-2iM_jk\dfrac{\partial}{\partial x_j}-M_iM_j\dfrac{\partial^2}{\partial x_i\partial x_j}\right)[c_\infty^2\tilde\rho'H(S)]=-i\omega\tilde Q_n\delta(S)+\dfrac{\partial}{\partial x_i}[\tilde F_i\delta(S)]-\dfrac{\partial^2}{\partial x_i\partial x_j}[\tilde T_{ij}H(S)]$, with $k=\omega/c_\infty$, $M_i=U_i/c_\infty$ and the transform pair (B5) $\tilde g(\omega)=\int g(t)e^{-i\omega t}dt$.
- **Green's function in uniform flow** (eqs. B6–B9, p. 1181), U = (U∞, 0, 0): $G(\boldsymbol x,\boldsymbol y)=\dfrac{-1}{4\pi R^*}e^{-ikR}$, $R=\dfrac{-M_\infty(x_1-y_1)+R^*}{\beta^2}$, $R^*=\sqrt{(x_1-y_1)^2+\beta^2[(x_2-y_2)^2+(x_3-y_3)^2]}$, $\beta=\sqrt{1-M_\infty^2}$.
- **Solution** (eq. B10): $\tilde p'(\boldsymbol x,\omega)=-\int_S\tilde F_i\,\dfrac{\partial G}{\partial y_i}dS-\int_S i\omega\tilde Q_n\,G\,dS-\int_V\tilde T_{ij}\dfrac{\partial^2G}{\partial y_i\partial y_j}dV$; the volume term is not computed. Outside S, $c_\infty^2\tilde\rho'$ is replaced by $\tilde p'$. The authors note a typo in Lockard (2002) eq. 17: $\partial G(y;\xi)/\partial y_i$ should be $\partial G(y;\xi)/\partial\xi_i$.
- **Pressure-based variant** (p. 1177): on S, $\rho=\rho_\infty+p'/c_\infty^2$ (Spalart & Shur 2009; Morfey & Wright 2007).
- **Spectra** (eqs. B11–B12): ${\rm PSD}(\boldsymbol x,St)=10\log_{10}\!\left(\dfrac{2\tilde p'\tilde p'^{\dagger}}{p_{\rm ref}^2St_{\min}}\right)$; ${\rm OASPL}(\boldsymbol x)=10\log_{10}\!\left(\sum_{St_{\min}}^{St_{\max}}\dfrac{2\tilde p'\tilde p'^{\dagger}}{p_{\rm ref}^2}\right)$.

> My checks. Table 1 is self-consistent: NPR = (1 + 0.2M_j²)^3.5 gives 3.67 and 2.97; T_j/T∞ = NTR/(1 + 0.2M_j²) gives 1.00, 1.74, 1.85; M_a = M_j√(T_j/T∞) gives 1.5, 1.98, 1.84. Eq. 9 gives D_j/D = 0.962 and eq. 10 gives 1.185D_j = 1.14D for A3, so L₁/L_s = 0.93/1.14 = 0.82, and eq. 11 at φ = 90° gives 0.7/1.14 = 0.61 and 0.7/0.93 = 0.75, all as printed. Table 3's St_min and St_max follow from the formulas with M_a (e.g. A1: 1/(215 × 1.5) = 0.0031; 1/(2 × 0.02 × 1.5) = 16.7). Periods at St 0.05 = 0.05 M_a t_sim: 16 (A1), 11 (A2), 13 (A3), 13 (A2_55M), 26 (A3_55M), matching "11 to 26". The PSD normalisation (B11) implies a particular scaling of p̃′ (e.g. a DFT divided by N) that the paper does not state.

## Data tables
**Table 1: conditions and grids** (p. 1167):

| Case | Description | Grid | Cells | NPR | NTR | M_j | M_a | T_j/T∞ | Re_j | δ_θ/D |
|---|---|---|---|---|---|---|---|---|---|---|
| A1 | isothermal, ideally expanded | axisymmetric | 42 × 10⁶ | 3.67 | 1.45 | 1.5 | 1.5 | 1.0 | 300,000 | 0.0017 |
| A2 | heated, ideally expanded | axisymmetric | 42 × 10⁶ | 3.67 | 2.53 | 1.5 | 1.98 | 1.74 | 155,000 | 0.0022 |
| A2_55M | heated, ideally expanded | adapted | 55 × 10⁶ | 3.67 | 2.53 | 1.5 | 1.98 | 1.74 | 155,000 | 0.0021 |
| A3 | heated, overexpanded | axisymmetric | 42 × 10⁶ | 2.97 | 2.53 | 1.35 | 1.84 | 1.85 | 130,000 | 0.0029 |
| A3_55M | heated, overexpanded | adapted | 55 × 10⁶ | 2.97 | 2.53 | 1.35 | 1.84 | 1.85 | 130,000 | 0.0030 |

Experimental Re_j is about 5.5× these (p. 1169), i.e. roughly 1.7 × 10⁶, 8.5 × 10⁵ and 7.2 × 10⁵ (my arithmetic).

**Table 3: time parameters** (p. 1168), all with FW-H sampling Δt c∞/D = 0.02:

| Case | dt c∞/D | t_sim c∞/D | St_min | St_max | Steps (my arithmetic) | FW-H samples (my arithmetic) |
|---|---|---|---|---|---|---|
| A1 | 0.0002 | 215 | 0.0031 | 16.7 | 1.08 × 10⁶ | 10,750 |
| A2 | 0.0001 | 112 | 0.0045 | 12.6 | 1.12 × 10⁶ | 5,600 |
| A3 | 0.0002 | 142 | 0.0038 | 13.6 | 0.71 × 10⁶ | 7,100 |
| A2_55M | 0.0004 | 128 | 0.0039 | 12.6 | 0.32 × 10⁶ | 6,400 |
| A3_55M | 0.0004 | 280 | 0.0019 | 13.6 | 0.70 × 10⁶ | 14,000 |

**Table 2: probe and microphone positions** (p. 1168):

| Name | D2P5 | D2P9 | D2P11 | D2P12 | D2P14 | D2P16 | D2M1 | D2M2 | D2M3 | D2M5 | D2M7 | D2M9 | D2M11 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| x/D | 5 | 8 | 9 | 10 | 12 | 14 | 0 | 10.58 | 21.84 | 34.64 | 50.35 | 57.5 | 57.5 |
| r/D | 1.49 | 1.86 | 1.98 | 2.11 | 2.35 | 2.60 | 60 | 60 | 60 | 60 | 60 | 48.25 | 33.20 |
| φ (deg) | 163 | 167 | 168 | 168 | 169 | 169 | 90 | 100 | 110 | 120 | 130 | 140 | 150 |

**Flow and acoustic landmarks** ("fig" = read from the figure):

| Quantity | A1 | A2 | A3 | Source |
|---|---|---|---|---|
| Potential core x_c/D, LES / experiment | 9.7 / 10.2 | 8.4 / 8.5 | — | p. 1173 |
| Lip-line u′_rms/U_j peak (fig) | ≈ 0.17 | ≈ 0.18 (0.20 adapted) | ≈ 0.19–0.20 | Fig. 8, p. 1173 |
| Location of lip-line RMS peak | 0.6D–1.3D (all cases) | | | p. 1174 |
| D_j/D, LES / eq. 9 | — | — | 0.953 / 0.962 | p. 1173 |
| First shock cell L₁; Pack L_s | — | — | 0.93D; 1.14D | p. 1173–1174 |
| BBSAN St at φ = 90°: LES / exp / eq. 11 (L₁) / eq. 11 (L_s) | — | — | 0.78 / 0.75 / 0.75 / 0.61 | p. 1176 |
| Peak OASPL, LES / exp (fig) | ≈ 126.5 dB at 145° / ≈ 126 dB at 150° | ≈ 132.5 dB at 130° / ≈ 128.5 dB at 130–140° | ≈ 129 dB at 135° / ≈ 129 dB at 140° | Fig. 12, p. 1176 |

## Figures worth remembering
- **Fig. 2 (p. 1167):** domain, sponge zone and 15D outflow buffer, FW-H surface, near-field probe line and far-field arc, and the 10D co-flow region the microphones sit outside.
- **Fig. 3 (p. 1168):** the blending parameter α on both grids; where the scheme is forced dissipative.
- **Fig. 4 (p. 1169):** mesh spacing (Δx, Δr, rΔθ) at x/D = 0 and 2, along the lip line and along the FW-H surface for both grids; the adapted grid's overlapping (isotropic) curves.
- **Fig. 5 (p. 1170):** exit boundary-layer mean and RMS profiles; the separated A3 layer.
- **Fig. 6 (p. 1171):** vorticity and mesh in axial and cross-flow cuts (x/D 0.5–20); transition within 1D.
- **Fig. 7 (p. 1172):** instantaneous temperature and pressure for A1–A3: aft Mach waves, and shock-generated circular waves in A3.
- **Figs 8–9 (p. 1173):** centreline, lip-line and radial mean and RMS velocity against experiment; the ten shock cells of A3.
- **Fig. 10 (p. 1174):** near-field spectra, direct LES vs FW-H vs experiment; the A3 low-St deficit.
- **Figs 11–12 (p. 1175–1176):** far-field spectra (90–150°) and OASPL directivity; the BBSAN hump of A3 at 90°.
- **Fig. 13 (p. 1177):** FW-H with and without co-flow in the propagation.
- **Figs 14–16 (p. 1177–1178):** FW-H surfaces S0–S3, the turbulence crossing them, and spectra at 100D for surface location and outflow-disk treatment. The key FW-H practice figure.
- **Fig. A1 (p. 1180):** 9M vs 55M grid for A3; the grid-transition hump at St 10 → 5.

## Notation
- D: nozzle-exit diameter (2 in.); D_j: fully expanded diameter; x, r, θ: axial, radial, azimuthal; φ: "jet inlet angle", measured from the upstream jet axis (φ = 180° is downstream), origin at the nozzle exit.
- M_d, M_j: design and fully expanded Mach numbers; M_a = U_j/c∞: acoustic Mach number; M∞: co-flow Mach number; M_c = U_c/c∞ (eddy Mach number, not Papamoschou–Roshko's); U_c: convection velocity; U_j: fully expanded velocity.
- NPR = p₀/p∞; NTR = T₀/T∞ (the library's `TR`); T_j/T∞: static temperature ratio; Re_j = ρ_jU_jD/μ_j; δ_θ: exit momentum thickness; x_c: potential-core length (u > 0.95U_j).
- St = fD/U_j; St_lim: grid cut-off; St_min, St_max: narrowband width (and lowest St) and Nyquist; ΔSt: sampling Strouhal; ΔSt_bin = 0.05: bin width for plotted spectra.
- α: flux blending parameter; D (operator): volume-integrated gradient operator; c: blending constant (2) or Vreman constant (0.07), by context; Δl: cube root of cell volume.
- S, V, H(S), δ(S): FW-H surface, exterior volume, Heaviside and Dirac functions; Q_n, F_i, T_ij, P_ij: FW-H source terms; G: Green's function; R, R*, β: effective acoustic distance, auxiliary distance, √(1 − M∞²); ~ Fourier transform; † complex conjugate.
- L_s: Prandtl–Pack spacing; L₁: first shock-cell length; μ₁ = 2.40483: first zero of J₀.
- Cases: A1 (UTRC B118), A2 (B122), A3 (B122 OD); "_55M" = adapted grid.

## Relevance to this project
This is the reference paper for the Charles solver, cited for numerics by most LES databases in the library: the round-jet family ([Schmidt et al. 2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md), [Schmidt et al. 2018](schmidt-2018-spectral-analysis-jet-turbulence.md), [Pickering et al. 2020](pickering-2020-lift-up-kh-orr-jets.md), [Towne et al. 2022](towne-2022-database-reduced-complexity-modeling.md)), the twin-rectangular runs ([Brès et al. 2021](bres-2021-les-twin-rectangular-jets-plasma.md), [Yeung et al. 2022](yeung-2022-3d-spod-twin-rectangular-jet.md), [Jeun et al. 2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md)), and the supersonic UTRC cases. Its A1 and A3 cases are the ancestors of two databases used in the library: the wall-modelled isothermal M_j 1.5 LES of [Wong et al. 2021](wong-2021-wavepacket-modelling-bbsan.md) (40M cells, 1000 c∞/D) and the wall-modelled heated overexpanded M_j 1.35 LES of [Nogueira et al. 2022](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) and [Nogueira et al. 2026](nogueira-2026-flapping-motion-screeching-round-jets.md) (Re_j 7.6 × 10⁵, 500 c∞/D), which screeches at St 0.265 with |m| = 1. Within the CLAUDE.md scope it sits on the simulation side of the resonance work and on the heated-supersonic-jet side of rocket noise.

**How it fits and what has changed since**
- **The 2017 recipe is the "before" of the Charles story.** Here the exit layer is laminar at Re ≈ 1.3–3 × 10⁵ and the LES shows the four symptoms the authors themselves list: a lip-line transition spike, mid-St over-prediction at intermediate angles, an under-predicted downstream peak and a tilted directivity (p. 1176). Later Charles runs add near-wall refinement and a wall model at the experimental Re (Wong 2021; Nogueira 2022; [Brès et al. 2021](bres-2021-les-twin-rectangular-jets-plasma.md), OASPL within about 1 dB). The topic page's claim that the whole library uses a turbulent-exit-layer recipe is therefore true of these later runs, not of this paper.
- **Screech in the A3 family.** This paper never mentions screech, and its A3 spectra show a BBSAN hump at φ = 90° but no tone (Fig. 11c, my reading of bin-averaged spectra with ΔSt 0.05). The wall-modelled re-run of the same condition screeches at St 0.265, |m| = 1 (Nogueira 2026 note, p. 16). Two things changed between the runs: the exit boundary layer and Re (laminar at 1.3 × 10⁵ vs wall-modelled at 7.6 × 10⁵), and the shock sensor (Hill–Pullin switch vs compression-only Ducros-type). This paper's own diagnosis of A3 (shock-flux dissipation damping wavepackets in the near-nozzle shock region, p. 1175) and the 5–6 dB near-field deficit at St ≲ 0.4 point to the second. That reading is my inference: the near-field probes sit at φ ≈ 163–169°, far from screech's upstream lobe, and the paper does not report the experiment's tones, so whether UTRC's B122 OD jet screeched is not known from this paper.
- **Overexpanded shock spacing.** L₁/L_s = 0.82, cells shrinking 6–7 % each, and a BBSAN peak that is right only with the measured first-cell length (p. 1174, 1176) are the lab/LES counterpart of [Mathews 2025](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md)'s full-scale F404 result: Pack fails for overexpanded C-D jets, but the Harper-Bourne–Fisher frequency formula works with measured spacing (that note, p. 34–40). [Tam & Tanna 1982](tam-1982-shock-associated-noise-cd-nozzles.md) assume a uniform train, which this LES contradicts. [Nogueira et al. 2022](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) quote Pack as k_shock D = 5.3 (L_s ≈ 1.19D) for the same condition, which is Pack evaluated with D instead of D_j (my arithmetic: 1.185D vs 1.14D here); the 4 % difference matters when matching k_kh − k_s to a tone.
- **Mach waves in heated jets.** Aft Mach waves strongest at M_a 1.98 (A2) agree with the convective-Mach picture on [jet-noise-mechanisms](../Topics/jet-noise-mechanisms.md) ([Tam 1995](tam-1995-supersonic-jet-noise.md); [Gojon et al. 2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md), where Mach waves appear once U_c/a∞ > 1). The paper adds no source analysis.
- **FW-H practice.** End-caps (Shur et al. 2005), pressure-based surface data and the frequency-domain uniform-flow Green's function are the practice later Charles papers cite as "Brès et al. 2017" (e.g. Nogueira 2026's 100D sphere, that note p. 13). The S3 result (open surface through a sponge gives the same answer) is a useful fallback when end-caps are inconvenient.

**Methods and data for the lab workflow (CLAUDE.md)**
- Everything here is time-resolved, but the only analyses are statistics and PSDs; there is no POD, SPOD or BMD. Spectral estimation is a single Hanning-windowed transform of the whole record, smoothed by frequency-bin averaging (ΔSt 0.05) and azimuthal ensemble averaging, not Welch blocks (p. 1170, 1181). This is worth remembering when comparing SPOD of short LES records: 112–280 c∞/D gives only 11–26 periods at St 0.05, so Welch SPOD at low St would have very few blocks. The later 500–2000 c∞/D databases exist for that reason.
- The authors flag "temporal intermittency of the radiated noise" as needing longer records (p. 1170; taken up for the M 0.9 jet in Brès et al. 2016, AIAA 2016-3050, not in the library). For the SPOD → reconstruction → HPOD pipeline, the descendants of these cases (Nogueira 2026's 5000-snapshot A3, about 240 screech cycles) are the usable data, not these runs.
- Non-time-resolved analogue: the azimuthal ensemble average over statistically identical stations (48 or 72) is the same trick as averaging POD statistics over symmetric planes in PIV.

**For the PyFR staging LES** (`Simulations/PyFR_Staging_Continuation/`)
- **Reduced Re with a laminar exit layer is exactly what this paper did,** and what the staging run has chosen (Re_D = 1 × 10⁵, laminar nozzle boundary layer; M3_SETUP.md §9). This paper is the library's clearest record of what that costs: an early transition spike (lip-line u′_rms ≈ 0.17–0.20 at 0.6–1.3D), mesh-dependent exit fluctuations (p. 1169), and spectra and directivity that are biased in a known way. It also supports Re ≳ 10⁵ as the floor above which jet noise is Re-insensitive (p. 1169, citing Viswanathan 2004 (PDF held, not yet indexed) and Bogey et al.). It does not say whether screech staging survives the change; set the exit δ_θ deliberately and report it, as Table 1 does.
- **Shock capturing can damp the very wavepackets a resonance needs.** The A3 near-field deficit (p. 1175) and the PyFR pilot's large-dt arms, where the entropy filter kept the shear layer laminar to x ≈ 3 and nearly removed the shock cells (M3_SETUP.md §8), are the same warning. The paper's remedies transfer: log where and how often the shock treatment acts (here < 1 % of faces), and restrict it to compressions so shear-layer vortices are not flagged. This gives partial evidence for the open question "Does shock-capturing dissipation bias resonance?" on [simulation-methods](../Topics/simulation-methods.md), but on broadband near-field noise, not on a tone.
- **Mesh rules.** Keep cells isotropic in the source region and avoid abrupt size jumps (they made spurious high-St humps, App. A). A rough transfer of St_lim = D/(8 Δl M_a) (my estimate, which treats each of PyFR's p + 1 solution points per element direction as one cell, ignoring that FR needs fewer points per wavelength than second-order FV): 0.2D elements at p = 3 in the acoustic near field give Δl ≈ 0.05D and, at M_a ≈ 1.0 for a cold M_j 1.12 jet, St_lim ≈ 2.5, well above A1/A2 (St 0.6–0.7). The paper also warns against meshes whose azimuthal resolution coarsens with radius (p. 1168); a mesh revolved with a fixed 96 azimuthal elements does that (at r = 7D the azimuthal element size is about 0.46D, my arithmetic), so check it wherever probes or an FW-H surface sit.
- **Boundaries and run length.** Sponge length of at least one wavelength of the lowest frequency of interest, quadratic σ, running-average target (p. 1168–1169); discard two to three acoustic transits after any restart (p. 1169), relevant to each NPR visit's `transient`; at least 10 periods of the lowest frequency for converged spectra (p. 1170). The co-flow here is M 0.1 to match the UTRC tunnel, kept in the UTRC-matched follow-up ([Wong et al. 2021](wong-2021-wavepacket-modelling-bbsan.md)); the subsonic and twin-rectangular Charles runs use 0.009–0.01 ([simulation-methods](../Topics/simulation-methods.md) table).
- **Acoustics, if an FW-H surface is added:** flare the surface with the jet (slope ≈ 0.11 from r = 0.6D), keep it in isotropic cells, use end-caps or run it through the sponge, store u and p only (pressure-based), window before transforming, sample at least twice the grid cut-off (p. 1179).
- **Contrast with the PyFR solver note:** [Witherden et al. 2014](witherden-2014-pyfr-flux-reconstruction-framework.md) validates high-order FR without shock capturing, SGS or absorbing layers; this paper is a second-order unstructured FV LES that has all three, so neither validates the other's choices.

**Rocket noise.** The heated, Mach-wave-dominated A2 and A3 jets (M_a 1.84–1.98) are the closest lab-scale analogues of rocket plumes in this paper. The LES + FW-H error level (OASPL within 1.5–2.5 dB, up to about 4–5 dB at some angles by my reading of Fig. 12, and a tilted directivity) is similar to the zonal RANS/LES + FW-H lift-off prediction of [Tsutsumi et al. 2015](tsutsumi-2015-epsilon-liftoff-acoustics.md) (up to 4 dB high). The paper's propagation caveats (atmospheric-absorption correction above St 2, no shear-layer correction, microphones at 60–78D rather than at a common radius) apply to any comparison of LES with field data. See [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) for how lab jets differ from rockets.

**Items to verify against the PDF**
1. Fig. 12 OASPL values and the largest LES–experiment gaps (≈ +4 dB at A2 130°, ≈ −5 dB at A3 155°) are figure readings; the paper says "typically within 1.5 to 2.5 dB".
2. Lip-line RMS peaks (Fig. 8), exit-layer RMS peaks (Fig. 5b) and FW-H-surface RMS levels (Fig. 15) are figure readings. Fig. 15 does not say which case it shows.
3. The text says A1 ran "almost 35 % greater" t_sim than A3 (p. 1170), but Table 3 gives 215 against 142, i.e. 51 % greater (or A3 34 % shorter).
4. Fig. 16's legend labels the single-cap case "S₂ (1 cap at x = 30D)" while the text says the single end-cap was on the default surface S₁ (p. 1179).
5. The experimental mean-velocity probe type ("single probe acquisition", p. 1172) is not stated.
6. Whether "172,000 core hours for cases A1, A2, and A3" is per case (assumed in my per-time-unit costs) or for all three.
7. The PSD normalisation in eq. B11 assumes a scaling of p̃′ that is not stated.

**Candidates for `/add-paper`** (cited, not in the library): Bodony & Lele 2008 (AIAA J 46, LES jet-noise review); Mendez et al. 2012 (AIAA J 50, unstructured LES of ideally expanded supersonic jets) and 2013 (IJA 12, FW-H for jet LES); Shur, Spalart & Strelets 2005 Parts I–II (IJA 4, end-caps); Spalart & Shur 2009 (IJA 8, FW-H variants for hot jets); de Cacqueray, Bogey & Bailly 2011 (AIAA J 49, overexpanded high-Mach jet LES); Munday et al. 2011 (PoF 23, C-D conical nozzles); Lau 1981 (JFM 105); Bogey & Bailly 2010 (JFM 663, exit boundary-layer effects); Viswanathan 2004 (JFM 516, hot jets; PDF held, not yet indexed); Brès et al. 2013 (AIAA 2013-2142, nozzle wall modelling for hot supersonic jets), 2014 (AIAA 2014-2601), 2015 (AIAA 2015-2535) and 2016 (AIAA 2016-3050, azimuthal decomposition and intermittency); Nichols et al. 2013 (crackle); Lockard 2000/2002 (frequency-domain FW-H); Schlinker et al. 2008/2009 (the UTRC experiments); Ducros et al. 1999 and Bhagatwala & Lele 2009 (shock sensors); Freund 1997 and Mani 2012 (sponges); Papamoschou 1997 and Tam 2009 (Mach waves). The later perspective by Brès & Lele 2019 (Phil. Trans. A) is now [indexed](bres-2019-modelling-jet-noise-les-perspective.md).
