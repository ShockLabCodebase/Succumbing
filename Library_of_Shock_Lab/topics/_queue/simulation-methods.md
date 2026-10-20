## gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets (queued 2026-10-20)

- **New row for the LES set-up table.**
  - Solver: EDGE-type second-order central finite volume on structured 64-block meshes, explicit RK4.
  - Implicit LES: a Jameson–Schmidt–Turkel 2nd/4th-order artificial dissipation with a Ducros dilatation/vorticity sensor, (C₂, C₄) = (1.5, 0.04), validated on pulse, shock and shock–vortex tests (p. 5–6).
  - Nozzle and walls: nozzle inside the domain, y⁺ ≈ 1 in the diverging section, adiabatic no-slip, no tripping, no co-flow, sponges by grid stretching (p. 7–8).
  - Size and time: 160M nodes, Δt = 0.00125D_eq/u_j, 500D_eq/u_j per case (≈ 60–180 screech cycles) (p. 10).
  - FW-H: open "loose" surface with no end caps (p. 19).
  - Validation: Cincinnati PIV and far-field microphones.
- **Convergence study (40M/80M/160M).** Refinement improves the shock-cell length and raises the exit turbulence from 1.05 % to 1.75 % (p. 8–10). The acoustic mesh is sized at 11 cells per wavelength for the cold jet (St 3 → 0.041h). By my arithmetic the same mesh resolves only St ≈ 1.8–2.2 in the hot jets.
- **What it got right and wrong.** Screech frequencies are right at all six measured conditions. The screech amplitude trend with temperature is opposite to the experiment (p. 18–19, 27), which adds to the page's point that nozzle details are physics. Like [Brès 2021](../notes/bres-2021-les-twin-rectangular-jets-plasma.md), this LES predicts frequency well, but here without a wall model or a turbulent inflow.
- **Lessons for the PyFR staging runs:** check exit-boundary-layer sensitivity before trusting loop gains or staging limits; size the acoustic mesh on the fastest jet; and use f–k spectra at several radii with guided-mode branch points overlaid as a closure diagnostic.
