## suzuki-2003-shock-leakage-vortex-laden-mixing-layer-screech (queued 2026-10-21)

- **Total internal reflection is Snell's law.** The analysis (eqs. 2.21–2.23, p. 146) uses trace-wavenumber matching across a parallel layer, so the result holds for any profile and thickness. The condition |a₂k̄ₓ| > 1 is the outer (sonic-line) bound of the total-reflection band in nogueira-2024-guided-jet-waves (p. 15–17), whose standing waves are the guided jet mode. Suzuki & Lele's "reflected" rays are therefore the ray limit of that in-jet sound (my comparison).
- **Why standing shocks are trapped.** A standing shock has zero frequency, so its trace phase speed is subsonic relative to the ambient and it is always evanescent outside. That is what θ₁^cr < θ₁^M says.
- **Fig. 5 quantifies the margin** (my calculation from eq. 2.23). The gap is about 29° at M₁ = 1.2 and about 7° at M₁ = 2.5. Heating narrows it further: at M₁ = 1.2, θ^cr − 90° is 25.1°, 27.0° and 29.7° for T₁/T₂ = 0.75, 1.0 and 1.5.
- **Ray models are legitimate for shocks.** The paper's main modelling contribution (p. 142–145) is to show that the steep-front limit of a weak shock equals the high-frequency limit of geometrical acoustics. This answers Manning & Lele's doubt about ray models for standing shocks. The Blokhintzev-type invariant (eq. 2.14) gives shock strength along 4-D ray tubes.
- **The base flow is the unsteady coherent field, not the mean.** The model runs on the unsteady DNS field, in the same spirit as the POD-reconstructed fields of edgington-mitchell-2021. Inflow forcing used local spatial stability eigenfunctions (Table 2; growth rates in Fig. 8).
- **Limits.** The front geometry is robust, but the amplitude directivity is not, because of the isentropic jump and the missing hydrodynamic response (p. 164).
- **Contrast with wavepacket × shock-cell models.** The linear models of tam-1982-shock-associated-noise-cd-nozzles and ray-2005-instability-wave-shock-cell-interaction-sound (same Stanford group, later) describe the same KH × shock interaction globally, in wavenumber space. This paper is its localised, sharp-front counterpart.

## tam-1989-three-families-instability-waves-high-speed-jets (queued 2026-10-21)

- The linear-models page says "The idea goes back to Tam & Hu (1989, not in the library)". This note fills that gap and should become the head of the "Guided-jet waves and trapped acoustic modes" section.
- **What the paper establishes.** It solves the cylindrical vortex-sheet dispersion relation (eq. 2.7, p. 453) and a finite-thickness half-Gaussian Rayleigh model (eqs. 2.8–2.11, p. 454). With Briggs's contour deformation (p. 459–460) it shows three families of waves:
  - KH waves.
  - Supersonic instability waves: trapped Mach waves, existing only for u_j > a_j + a_o (eq. 2.13, p. 456).
  - Subsonic waves: neutral on a vortex sheet, unstable only with finite thickness (p. 478–479).
- **The upstream branch.** It finds the neutral upstream-propagating subsonic waves of supersonic jets in narrow bands along ω/k ≈ −a_o (p. 462–463, 475–476).
  - The bands run from a sonic-line branch point to a double zero where the upstream and downstream branches coalesce (p. 475–476).
  - For n = 0 the branch point is J₁(η_iR_j) = 0 in closed form (eqs. 6.1–6.3, p. 476), and for n ≠ 0 it is an impedance-type condition (eq. 6.5, p. 476).
  - This is exactly the hard-duct branch point for m = 0 and the mixed-impedance branch point for m = 1 found by nogueira-2024-guided-jet-waves (p. 30). It is also the B/S-point structure used by mancinelli-2019 and mancinelli-2021.
- **Reading caution.** Figs 28–30 plot ω < 0 against k > 0, so "frequencies lower than the minimum" (p. 476) means physically higher frequencies. The double zero is the *upper* band edge, which the note's own recomputation of eq. 2.7 confirms. Its vortex-sheet bands agree with edgington-mitchell-2018 (cut-on ≈ 0.72 at M_j 1.0) and with the Tam & Ahuja 1990 note.
- **Agreements and disagreements with later notes.**
  - It agrees with towne-2017 (p. 33), who note that Tam & Hu's "subsonic waves" are their core modes but that Tam & Hu did not study 0.82 < M < 1. Tam & Hu's claim that every subsonic wave of a subsonic jet goes upstream (p. 473) holds only below M ≈ 0.82.
  - Its finding of "little or no" finite-thickness effect on the upstream waves, and phase speeds unchanged up to b/R_j = 0.5 (R_j/θ ≈ 6, note's conversion θ ≈ 0.31b; p. 479), is in tension with mancinelli-2021 (band moves below R/θ ≈ 30) and with the Tam & Ahuja 1990 note (the (0, 2) hump disappears at b/R_j = 0.5). This bears on the open question "Do guided-mode bands survive heating and thick layers?".
  - Tam & Hu's physical argument that the upstream wave must live mainly outside the jet (p. 476) is confirmed by nogueira-2024's energy-flux analysis (p. 26–27).
- **Other items for the page.**
  - The vortex sheet gives good KH phase speeds and wavefront angles but poor growth rates (p. 467).
  - The KH mode merges into the supersonic family above a critical M_j that falls with jet temperature (Fig. 9, p. 459). This extends the "vortex-sheet faults" list next to papamoschou-1988's critical M_c.
  - The note also observes (its own derivation) that the ω → 0 end of each (0, m) branch is the Pack shock-cell wavenumber, j_{0,s}/(M_j² − 1)^{1/2}. One branch thus joins shock cells, downstream subsonic waves and the upstream guided mode, which may be worth a sentence near the Floquet discussion, clearly flagged as an inference.

## tam-1990-theoretical-model-discrete-tone-impinging-jets (queued 2026-10-21)

Tam & Ahuja 1990 is the first application of the Tam & Hu (1989) upstream neutral family, which the page says "goes back to Tam & Hu (1989, not in the library)". It also supplies closed-form cut-offs on the line C = −1:
- For m = 0 the cut-off is J₁(ξ̄₋α) = 0 (eqs. 21–22), which is the hard-wall-duct condition J₀′ = 0.
- For m ≥ 1, eq. 19 reduces to J_n′/J_n = −nA/z, an impedance condition between hard and soft walls.
- These are exactly the branch-point results of [Nogueira 2024](../notes/nogueira-2024-guided-jet-waves.md) (p. 30–31): the m = 0 branch point lies on the hard-duct curve and the m = 1 one above it, from a mixed soft/hard relation.
- The (0, 1) branch passes through the origin (eqs. 23–24, p. 80–81), which is the B(0, 1) at the origin in [Mancinelli 2019](../notes/mancinelli-2019-screech-prediction-upstream-modes.md).
- For supersonic jets the upstream waves are the part of each branch "right of the maximum" (p. 77). That is the branch-point-to-saddle band later used for A1/A2 screech ([Edgington-Mitchell 2018](../notes/edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), p. 10). The paper's own Fig. 10 puts the (0, 2) band at St 0.43–0.54 at M_j 1.4 (note's calculation), although its text names only (0, 1) and (1, 1) as supersonic candidates.

The least-dispersive criterion (eq. 25) is a precursor of the saddle-point picture. In the note's calculation the two zero-group-velocity points split off the inflection at M_j ≈ 0.81. At M_j 0.9 (cold) they sit at St 0.369 (kD −9.7) and 0.436 (kD −3.2), against Towne's isothermal vortex sheet 0.37 (−9.6) and 0.43 (−3.5) ([Towne 2017](../notes/towne-2017-acoustic-resonance-potential-core-subsonic-jets.md), Table 2). The inflection (0.417) lies between them, where the group velocity is positive. The section "Guided-jet waves and trapped acoustic modes" could add one line: the subsonic (0, 1) family, its cut-offs and the first frequency prediction from it (Fig. 16, M_j 0.7–0.95) date from this paper.

**Open question "Do guided-mode bands survive heating and thick layers?".** The paper's finite-thickness check (Gaussian profile, b/R_j 0.5 and 0.8; Fig. 17, p. 84) is the earliest datum. The (0, 1) branch moves by no more than 5% at b/R_j 0.5. The (0, 2) branch loses its hump, i.e. its zero-group-velocity points, and its plateau drops by up to about 10% (read from figure). So thickening can erase the S1/S2 band of higher radial modes, and not merely shift it. This partly supports the claim that [Gojon 2019](../notes/gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md) attributes to Tam & Ahuja (p. 26). All calculations are for cold jets (T₀ = T∞), and temperature enters only through a_j/a∞ in eq. 16, so the same relation extends directly to heated jets.

Notation trap for the page: Tam & Ahuja write (n, m) = (azimuthal, radial), whereas Towne and Edgington-Mitchell write (m, n).
