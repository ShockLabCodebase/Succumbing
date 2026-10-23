## gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets (queued 2026-10-20)

- **New row for the LES set-up table.**
  - Solver: EDGE-type second-order central finite volume on structured 64-block meshes, explicit RK4.
  - Implicit LES: a Jameson–Schmidt–Turkel 2nd/4th-order artificial dissipation with a Ducros dilatation/vorticity sensor, (C₂, C₄) = (1.5, 0.04), validated on pulse, shock and shock–vortex tests (p. 5–6).
  - Nozzle and walls: nozzle inside the domain, y⁺ ≈ 1 in the diverging section, adiabatic no-slip, no tripping, no co-flow, sponges by grid stretching (p. 7–8).
  - Size and time: 160M nodes, Δt = 0.00125D_eq/u_j, 500D_eq/u_j per case (≈ 60–180 screech cycles) (p. 10).
  - FW-H: open "loose" surface with no end caps (p. 19).
  - Validation: Cincinnati PIV and far-field microphones.
- **Convergence study (40M/80M/160M).** Refinement improves the shock-cell length and raises the exit turbulence from 1.05 % to 1.75 % (p. 8–10). The acoustic mesh is sized at 11 cells per wavelength for the cold jet (St 3 → 0.041h). By my arithmetic the same mesh resolves only St ≈ 1.8–2.2 in the hot jets.
- **What it got right and wrong.** Screech frequencies are right at all six measured conditions. The screech amplitude trend with temperature is opposite to the experiment (p. 18–19, 27), which adds to the page's point that nozzle details are physics. Like [Brès 2021](../Notes/bres-2021-les-twin-rectangular-jets-plasma.md), this LES predicts frequency well, but here without a wall model or a turbulent inflow.
- **Lessons for the PyFR staging runs:** check exit-boundary-layer sensitivity before trusting loop gains or staging limits; size the acoustic mesh on the fastest jet; and use f–k spectra at several radii with guided-mode branch points overlaid as a closure diagnostic.

## bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets (queued 2026-10-22)

A new row for "How the jet LES in the library were set up": in-house OpenMP solver (LMFA) in cylindrical coordinates. It uses 11-point low-dispersion finite differences with a six-stage RK, a sixth-order selective filter as the SGS model (relaxation filtering) and a sensor-switched second-order shock filter. Boundaries are Tam & Dong radiation conditions and a sponge for r ≥ 15r0, with the Mohseni–Colonius axis treatment (p. 566). The nozzle is a straight pipe with a Blasius layer, δ_θ = 0.016r0, and weak random vortical forcing (α = 0.03); the walls and plate are adiabatic, with no co-flow stated. Grids are 202–240 × 10⁶ points, Δz_min = Δr_min = 0.0075r0 and Δr_max = 0.06r0 (St 6.1), with Δt = 0.005r0/u_j and 500r0/u_j recorded, about 40–95 tone cycles (my arithmetic) (p. 564–567). Validation is by tone frequencies only, against Krothapalli et al. (1999) (Fig. 14a). The paper bears on the open question "Is ILES at reduced Re enough for staging?": at Re 6 × 10⁴ with a laminar exit layer, a filter-based ILES reproduces measured impingement-tone frequencies and their staging paths with L. That is modest support for the PyFR set-up, for frequencies though not amplitudes. A practical point for the page is that exit turbulence rose from 2.6% to 5.2% as L fell with fixed forcing (p. 565), because in a resonant LES the exit state is partly an output of the feedback. It does not change the page's consensus.

## gojon-2018-oscillation-modes-screeching-jets (queued 2026-10-22)

The LES (from Gojon & Bogey 2017, IJA) uses Bogey's in-house OpenMP solver in cylindrical coordinates: explicit six-stage Runge–Kutta, low-dispersion low-dissipation finite differences, high-order relaxation filtering as the SGS model, an adaptive shock-capturing filter, Tam & Dong radiation conditions with a sponge, and no-slip adiabatic nozzle walls (p. 2920). The grid has 400M points with Δ_min = 0.0075r₀ at the exit and in the shear layers and Δ_max = 0.06r₀, resolving acoustics to St 5.3; the run covers 500 D_j/u_j after the transient (p. 2920). Exit boundary-layer state, inflow forcing and domain size are not given in this Note. It is a reference point for the resolution and record length a round-jet screech LES needs: 500 D_j/u_j is about 140 cycles at St 0.28, far short of the seconds-long dwell times of staging. The post-processing (azimuthally split frequency–wavenumber spectra along axial lines inside the jet) is directly reusable on the PyFR fields. The note warns that the line length (10r₀ ≈ 4.5D_j, Δk D_j ≈ 1.4, no window stated) limits wavenumber resolution, as already flagged for Gojon 2019's 10h lines; ≥ 10D_j with a taper is advisable. It agrees with the page's LES entries for Gojon 2019 (same first author, same approach to band-based mode identification).

## karami-2020-acoustic-hydrodynamic-waves-underexpanded-impinging-jets (queued 2026-10-22)

- New row for "How the jet LES in the library were set up":
  - ECNSS (LTRAC in-house): cylindrical coordinates; sixth-order central differences switched to fifth-order WENO-LLF by a shock sensor; Germano–Lilly dynamic SGS; RK4, five stages; Mohseni–Colonius axis treatment; ghost-cell no-slip adiabatic walls (p. 6).
  - Infinite-lip nozzle wall with no nozzle interior; laminar, unforced tanh inflow, "δ_in = 0.04d" (my calculation: true θ ≈ 0.012d if the printed profile was used); Re 5 × 10⁴ (p. 5).
  - Grids 480 × 432 × 96 (≈ 2.0 × 10⁷) and 608 × 632 × 96 (≈ 3.7 × 10⁷), max spacing 0.04 for r < 4.5 (sound to St 5), fine resolution at the lip edge needed for receptivity (p. 6–7). Non-reflecting radial outlets; no sponge, co-flow, time step, record length or grid study stated.
  - Validation: only the h = 5d tone, St_j 0.39 vs 0.385 measured (p. 18).
- It breaks the page's claim that "the nozzle is always meshed and its exit boundary layer is deliberately set turbulent": this is a reduced-Re, laminar-inflow LES without a nozzle that still reproduces a measured impinging tone frequency to ≈ 1%. That is indirect support for the PyFR plan (Re_D ≈ 10⁵, laminar exit layer) in the open question "Is ILES at reduced Re enough for staging?", although for an impinging loop rather than free-jet A1/A2 staging, and with an SGS model.
- It is a third "high order away from shocks, local capturing at shocks" scheme alongside PyFR's entropy filter and the JAXA compact/SLAU solver. The library still compares none of them on one jet.

## shen-2002-three-dimensional-numerical-simulation-jet-screech (queued 2026-10-23)

- **A pre-LES approach for the "How the jet LES in the library were set up" table** (p. 33–35, 39–40). Unsteady RANS with an axisymmetric k–ε (Thies & Tam constants) and azimuthal Fourier expansion. Only five modes are kept, which turns the 3-D problem into coupled x–r problems. The scheme is Tam & Kurbatskii's multiple-size-mesh multiple-time-step DRP (7-point stencils).
  - Possible table row: round convergent nozzle, M_j 1.1–1.5; domain 35D × 17D with D/64 → D/8 in four subdomains; axisymmetric inflow per Ref. 1; time step and lip not stated; spectra at 134 Hz bandwidth (≈ 100 D/a∞ blocks, inferred); validated against Ponton & Seiner wavelengths and levels.
- **Numerics.**
  - Selective artificial damping per mode, with variable damping for shock capturing (inverse stencil Reynolds number 0.35).
  - Tam's radiation condition with entrainment flow (n = 0 only) and a nonlinearised outflow condition.
  - A high-order analytic-continuation axis condition (parity rules plus symmetric interpolation), replacing the O(Δr) azimuthal-average treatment of Shih et al. and Morris et al.
- **Run procedure.** Every run is self-excited from zero initial conditions and run "until a periodic state", one cold start per M_j.
- **Lessons for the PyFR staging LES** (note's analysis):
  - Cold starts at ΔM_j 0.1 cannot test hysteresis.
  - A deterministic URANS cannot show noise-driven switching, so switching seen in ILES but absent here would be informative.
  - The driver's r(t) = ln(A_in/A_out) classifier should allow a "coexisting" outcome: a dominant tone with a steady partner 9–13 dB down, with the A2 − A1 band phase-locked to a₁a₂*.
  - The probe radius 0.642D matches Ponton & Seiner's lip-face transducers.
- **Short records.** This adds to the "Records are short" paragraph: the analysis block is about one real switch long.

## bres-2017-unstructured-les-supersonic-jets (queued 2026-10-24)

This is the Charles solver's reference paper, which most of the library's LES databases defer to for numerics. Flux: a central/HLLC blend with a per-face α = c‖D + Dᵀ‖ (c = 2) fixed by the mesh's lack of skew-symmetry. Shock capturing: a Hill–Pullin hybrid switch with second-order ENO. SGS: Vreman (c = 0.07). Time: TVD-RK3 (p. 1165–1166). It documents the 2017 baseline, which qualifies Current understanding claim 1 ("every jet LES in the library" has a turbulent exit layer). The nozzle is meshed, but the exit layer is laminar at Re_j 1.3–3 × 10⁵, about 5.5× below the experiment, with δ_θ/D 0.0017–0.003 matched to a RANS estimate. Other settings: co-flow M 0.1, 42M (axisymmetric) or 55M (adapted, isotropic) cells, Δt c∞/D 1–4 × 10⁻⁴, records 112–280 c∞/D (Tables 1, 3, p. 1167–1169). Blind against UTRC: potential core within 5 %, OASPL typically within 1.5–2.5 dB, but a tilted directivity with mid-St over-prediction and under-predicted peaks, the same symptoms that later disappeared for the M 0.9 jet with wall modelling (p. 1173, 1176). This is the same strategy the PyFR staging run has adopted (Re_D 10⁵, laminar exit layer), so it bears on the open question "Is ILES at reduced Re enough for staging?": the broadband biases are documented, but nothing is said about tones. On "Does shock-capturing dissipation bias resonance?", it is the nearest evidence in the library. In the overexpanded case the near-field St ≲ 0.4 levels are 5–6 dB low, which the authors attribute to the dissipative shock flux damping wavepackets near the nozzle (p. 1175). A compression-only (Ducros/Bhagatwala–Lele) sensor removed the deficit in later work, and the wall-modelled re-run of the same A3 condition screeches at St 0.265 ([Nogueira et al. 2026](../Notes/nogueira-2026-flapping-motion-screeching-round-jets.md), p. 16). This is broadband evidence, not a tone test. The FW-H and mesh practices are worth a short section or table row:
- isotropic cells, with St_lim = D/(8 Δl M_a) ≈ 2–3 (p. 1168);
- 16 end-caps, since open or single-cap disks add up to 10 dB of spurious low-St noise upstream (p. 1179);
- a pressure-based surface, and insensitivity to the surface position S0–S2 (p. 1177–1178);
- an open surface continued through the sponge, which matches the end-caps (p. 1179);
- at least 10 periods of the lowest frequency, a Hanning window, and sampling at least twice the grid cut-off (p. 1170, 1179).
Suggested new table row: "Round M_d 1.5 C-D, M_j 1.5 cold/hot and 1.35 hot overexpanded (UTRC B118/B122/B122 OD) | Charles, Vreman, Hill–Pullin + ENO shock capture | Nozzle in domain; laminar exit BL at Re_j 1.3–3 × 10⁵; co-flow M 0.1 | 42M/55M cells; Δt c∞/D 1–4 × 10⁻⁴; 112–280 c∞/D; FW-H every 0.02 | Blind UTRC: OASPL 1.5–2.5 dB, tilted directivity".

## bres-2019-modelling-jet-noise-les-perspective (queued 2026-10-24)

Brès & Lele 2019 is the review behind the "reference LES recipe" that claim 1 of the page attributes to Brès et al. 2021. It explains why the nozzle must be in the domain at realistic Re: pre-2008 RANS-emulated inflows needed arbitrary axial shifts and showed quasi-laminar artefacts (p. 2). It also sets out the Charles combination of synthetic turbulence, near-wall refinement and a wall-stress model, which gives sub-dB spectra to St ≈ 2 on 16M cells for the Pprime M 0.4–0.9 jets (p. 5, Fig. 3). It quantifies the grid check that the page calls "coarse": doubling the plume resolution raised the St limit from 2 to 4 at 69M against 16M cells, with Δt halved and 10× the CPU (p. 15). Two points bear directly on the open question "Is ILES at reduced Re enough for staging?":
- An initially laminar exit layer radiates 3–4 dB more at high frequency, with different near-nozzle KH growth (p. 5–6). Above Re ≈ 10⁵, Re acts mainly through the exit layer, and it also changes intermittency and high-order statistics (p. 2–3).
- Minimum-dissipation schemes need an SGS model, while schemes with built-in dissipation (upwind fluxes, filtering) tend to over-dissipate when one is added (p. 15). PyFR's Rusanov-flux FR belongs to the second class, which supports ILES in principle (my inference; no FR evidence in the paper).

The review also names end-cap FW-H (Shur et al. 2005) and the Ikeda et al. 2017 single-cap correction (p. 7–8), lists the main solvers (NTS, JENRE, LAVA, LBM, AVBP, Charles with Voronoi meshing, CABARET on GPUs; p. 3–4, 16), and states the main remaining problems: SGS–numerics interplay, bandwidth, heated multi-species gas and installation (p. 14–16). In 2019 no LES study reproduced screech intensity variation, staging or twin-jet coupling (p. 11). Brès 2021 and Jeun 2024 have since covered twin coupling; staging remains open, which is the PyFR project's niche. This confirms the page's current understanding and changes nothing in it. It adds the cost–bandwidth numbers and the SGS caution to the ILES open question.

## langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation (queued 2026-10-24)

Add a row to "How the jet LES in the library were set up":

| Case | Solver, models | Nozzle and wall | Size, Δt, record | Validation | Notes |
|---|---|---|---|---|---|
| Hot round M_e 3.1 C-D, overexpanded | ONERA CEDRE FV LES (MUSCL + HLLC, implicit RK2 + GMRES, Smagorinsky C_s 0.1, van Driest, no wall model), two-way coupled every step via CWIPI to SPACE nodal-DG full Euler (order 2 → 4 by p-adaptation, PPW 5) | Nozzle meshed; axisymmetric step trip h = 0.01D in the convergent | 235M FV + 55M DG cells; Δt not stated; 650 D/u_j usable (11 Welch blocks); 4.5 × 10⁶ CPU-h | MARTEL LDV and far-field mics; OASPL within ~1 dB for St ≤ 0.22 | [Langenais 2019](../Notes/langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation.md), p. 3–6, 16 |

- **Lessons** (p. 4–9, 25–27):
  - Trip turbulence relaminarises through the throat, and only about 2% survives to the exit.
  - Wall refinement produced a lip separation that the Morrisette–Goldberg criterion forbids, so the paper rescales on D_j = 0.97D.
  - The cut-off rule St_c = c_∞D_j/(PPW·K·Δ·u_j) with K = 1.2 sizes the mesh.
  - Nonlinear DG Euler and linear FW-H give the same OASPL but different S(ṗ) and WSF.
- **Agreement with the page.** The paper supports claim 2: nozzle-exit state is physics. The earlier run with an untripped, coarser lip was 4–6 dB high. It offers a geometric-trip alternative to the Charles synthetic-turbulence and wall-model recipe.
- **DG relevance.** It is the library's only DG acoustic-propagation solver. Nodal DG is the same family as PyFR's FR, so it is indirect evidence that fourth-order DG at 5 PPW propagates cleanly. It is not PyFR validation, so claim 5 stands.
- **Records.** The short record (≈43 periods at St 0.066) fits the "records are short" caution.

## nonomura-2011-supersonic-jet-impinging-inclined-plate-acoustic-waves (queued 2026-10-24)

This is a second JAXA/ISAS LES for the "How the jet LES in the library were set up" table. The scheme is a seventh-order WCNS (WENO-like node-to-midpoint interpolation, AUSM-type flux, eighth-order midpoint-to-node difference), sixth-order viscous terms, and GCL-preserving metrics. It is MILES with no SGS model, with second-order backward implicit time stepping and three ADI-SGS sub-iterations at CFL up to 10, below 1 at shocks and shear layers (p. 406–408).

Like the Tsutsumi 2015 compact/SLAU LES and PyFR's entropy filter, it switches to nonlinear shock-capturing weights only where a density smoothness sensor fires (eq. 7: max/min IS > 5 and max IS > 10⁻⁶). This cuts a roughly tenfold WCNS cost penalty (p. 406–407), so the page's "high order away from shocks" paragraph gains a third instance.

Set-up: 11 overlapping structured zones with a square core grid at the axis; 28 M (L/D = 5) and 55 M (L/D = 10) points; spacing 0.006–0.06D, 6 × 10⁻⁴ D at the wall; buffers of 450–600D. The record is 400D/a_∞ in all cases (80,000 × 0.005 and 200,000 × 0.002). The far field uses a frequency-domain Kirchhoff integral on the slab top (Pan, Uzun & Lyrintzis 2004) (p. 407–409). The resolved band, St ≈ 0.02–1.7 (cold), is stated from grid and record length, but there is no grid-convergence test, no inflow-disturbance specification and no comparison with experiment.

It reinforces two items on the page: records are short (single FFT, 5-point smoothing, no Welch averaging), and the propagation step is linear and free-space (here a Kirchhoff surface that ignores plate reflection outside the slab). It does not change the current understanding.
