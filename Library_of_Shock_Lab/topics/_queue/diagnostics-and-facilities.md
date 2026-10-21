## mercier-2017-screech-feedback-loop-underexpanded-round-jets (queued 2026-10-20)

Mercier 2017 gives two measurement recipes that transfer to the lab.

**Near-field two-microphone phase averaging** (p. 218–219):
- Zero-lag FIR band-pass (±10% f_s) on a fixed reference, 20 phase bins per period over two periods, and zero-crossing wavefront tracking.
- This avoids the 2π ambiguity where hydrodynamic and acoustic pressure mix.
- Limits: a radial traverse in the exit plane cannot separate the 3rd–5th shock tips, and reflections dominate once the tone is 20 dB down (y ≈ 5.5D), even in a 10 × 8 × 8 m anechoic room (p. 216–218). For the group's non-anechoic rigs, the schlieren-phase route is therefore the safer choice.

**Repeatability** (p. 206): the same M_j 1.15 jet measured in 2011 and 2016 gives matching screech and BBSAN spectra, with a 1.3% difference in shock spacing.

It adds a non-group anechoic jet facility (D = 38 mm, 0.85 kg s⁻¹ continuous, NPR ≤ 3.9, contraction 4.4:1, 0.5 mm lip) to the facilities section. It does not change the current understanding.

## alkislar-2003-screeching-rectangular-jet-stereo-piv (queued 2026-10-21)

Alkislar 2003 belongs in *From phase-locking to long records* and *PIV in shock-containing jets*. It is the microphone-triggered alternative to POD-pair phasing, applied to stereo PIV.
- **Trigger chain.** A near-field microphone feeds a band-pass filter and a frequency tracker (400 Hz – 12 kHz). The trigger is divided by up to 10,000 to match the 30 Hz cameras and delayed in 0.1 µs steps (±1 ns) to give 16 phases at 22.5° (Fig. 4, p. 129).
- **Half-cycle mirroring.** Only 8 phases are measured; the other half-cycle is their mirror image. This was validated by eye at one phase pair (Fig. 5, p. 130–131), and it assumes exact antisymmetry.
- **Samples.** About 35 image pairs per phase; N = 30 was judged to converge to 5% of the maximum velocity at 90% confidence (p. 128–129). That is comparable with Henderson 2002 (20–60 per bin) and far below the ≈130 per 5° bin of POD-phase binning in Weightman 2019.
- **Processing.** The Lourenco & Krothapalli mesh-free algorithm: particle masking, adaptive windows, particle pairing, and a least-squares second-order polynomial (eq. 1) on at least 10 displacements. The quoted error is 0.03 px, about ±2.5 m s⁻¹ (p. 125–126). Four 65 × 105 mm zones are stitched with linear weights over 30 mm overlaps (p. 126).
- **Stereo set-up.** Scheimpflug mounts with motorised focus, about 90° between the camera axes, and same-side imaging for cross-planes (p. 126–127).
- **Seeding.** 0.3 µm oil in the jet and 1–5 µm smoke in the ambient, the reverse of Henderson 2002's sizes. Lag was checked by matching centreline PIV against pitot/static velocities through six shock cells (Fig. 11, p. 134). My Stokes estimate of τ_p ≈ 0.25 µs is well inside the ragni-2011-particle-tracer-response-shocks-piv criteria.
- **Cautions for the page.** The random part u″ of a triggered phase average includes vortex-to-vortex jitter (p. 146). With 35 samples the R_uu > 0.6 threshold is noisy (standard error ≈ 0.1, my estimate).

## edgington-mitchell-2014-coherent-structure-helical-screech-mode (queued 2026-10-21)

This paper is the primary source for the group's smoke-seeding numbers, which the page currently attributes to the 2014 Mach-disk note:
- Vicount 1300 smoke, nominally 300 nm (theoretical τ_p 0.48 µs), has a measured **τ_p = 2.0 µs** across a Mach disk at NPR 4.2, equivalent to 600 nm (Fig. 3, p. 828).
- Stk = τ_p/(D/U_e) ≈ 0.04. At the C-mode screech frequency (≈ 7.7 kHz, my arithmetic) 2πfτ_p ≈ 0.1, right at the guideline. That is half the ≈ 0.2 estimated for the A modes in the Ragni note.
- Table 2 (p. 829) gives the predicted artificial u′ behind a first-cell normal shock (U/U_e 1.7, M 2.2): 4% for monodisperse and 7% for log-normal particles, against 7% measured in an elliptic jet. Only 3% was measured here, where no normal shock is resolvable. An artificial peak extends at most about 0.2D (p. 831).
- PIV settings (Table 1, p. 827):
  - two stitched PCO 4000 cameras (7.5% overlap, adaptive Gaussian window), field 10D × 2.2D (the stated 35 mm is actually 2.33D);
  - windows from 0.10D to 0.026D on a 0.013D grid, maximum displacement 0.02D, 1.5 mm sheet;
  - 8000 fields at 0.5 Hz, jet and ambient both seeded, 1.2 px particle images, minimal peak locking.
- The final window (≈ 0.39 mm) is smaller than the relaxation length U τ_p ≈ 1 mm, so the set-up is inside [Ragni 2011](../notes/ragni-2011-particle-tracer-response-shocks-piv.md)'s no-bias criteria (my arithmetic).
- The acoustic measurement was made in a reflective, non-anechoic room (p. 829).

It confirms rather than changes the page's "Tracer response" and "Group settings" paragraphs, and it supplies the τ_p value at its origin. It bears on the open question of whether particle lag distorts the modes: at C-mode frequency the Stokes number is lower than for A modes.

## tan-2017-broadband-velocity-fluctuations-screeching-jets (queued 2026-10-22)

Group PIV settings for the LTRAC Supersonic Jet Facility (a Shock Lab group facility; lab space not named), 15 mm convergent nozzle, 5 mm lip, T₀ ≈ 288 K, U_e = 310 m/s (p. 2324–2325, Table 1):
- two stitched PCO 4000 cameras (7.5% overlap, adaptive Gaussian window), 23 µm/px, FOV 10D × 2.2D;
- Δt = 480 ns, shorter than the 0.88–1 µs listed under "Group settings";
- 600 nm oil (τ_p ≈ 2.0 µs), IW 64 → 16 px (0.025D), 8 px grid, 1.5 mm sheet;
- 8500 non-time-resolved fields per case.

The degradation study on the hardest case (B mode, N_M = 18) gives a budget for second-order *residual* statistics:
- **Snapshots:** < 1% error in integral length scales for ≥ 3000 snapshots (≈ 8% at 1000, read from figure).
- **Noise:** < 1% for SNR > 500 with Gaussian noise added.
- **Resolution:** < 1.5% for vector sampling ≥ 80%; error exceeds 1% once Δx/L > 0.1 (Table 4, Fig. 16, p. 2332).

This extends the page's "Sample size and phase" section, whose budgets (≈ 500–1000 snapshots for leading pairs) are for modes, not for statistics of what remains. Masking the shock-containing core did not change the POD modes (p. 2324–2325). That is evidence that, at this window size, shocks do not bias the modal content, though it does not address particle lag (the page's open question). Important caveat for group tone data: Table 2's Sr (0.31, 0.26, 0.22) is reproduced to 1% by U_j = M_j a∞ rather than isentropic U_j, which gives 0.36, 0.31 and 0.27 (note author's arithmetic, T₀ = 288 K). Re_j is also 13–19% below the isentropic values. So the "St 0.26 vs 0.30" for the NPR 3.4 dataset is a definitional difference (see Inconsistencies below).

## tan-2019-correlation-analysis-piv-screeching-jets (queued 2026-10-22)

- **PIV set-up:** a fully specified group PIV configuration for strongly underexpanded jets in the LTRAC Supersonic Jet Facility. Two stitched PCO 4000 cameras, 23 µm/px, Δt = 480 ns, IW 64 → 16 px (0.025D), 8 px grid, 10D × 2.2D field, 8500 independent fields, oil smoke seeding (Table 2, p. 15–16). It sits alongside the group settings on the page ([edgington-mitchell-2014-coherent-structure-helical-screech-mode], [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure]).
- **Sample size:** it reports Tan et al. 2017's sensitivity result. Integral length scales from the POD-filtered field converge to within 1% with at least 3000 fields and SNR > 500, and change by about 1.5% when the mesh is coarsened to 146 × 800 vectors (p. 18). This is a sample-size rule for *second-order spatial statistics*, complementing the page's POD-pair convergence numbers.
- **Planar-PIV workarounds:** k and ε are estimated with axisymmetric-turbulence assumptions for the missing component and gradients, with ν at normal conditions. The paper acknowledges, without correcting, that the resolution limits ε (Atkinson et al. 2014; p. 19). The sonic line uses constant total temperature (p. 20). The integration limit is set at r = 0.1 to avoid screech-induced negative lobes (p. 19).
- **Possible artefact:** the random-stress rise at reflection points (p. 22) may partly be shock-induced PIV artefact, as warned on the page; the paper does not discuss this.
- **Does it change the page?** It adds a data point to "PIV fields as model input": non-time-resolved PIV can calibrate noise-source length scales, but not time scales or convection speeds.

## tan-2019-equivalent-bbsan-source-reconstruction-screeching-jets (queued 2026-10-22)

The paper is a worked example of "PIV fields as model input" beyond stability base flows. Group PIV settings for the LTRAC Supersonic Jet Facility C-mode data (p. 15–17):
- 8,500 independent fields; two stitched PCO 4000 cameras at 23 µm/px with a 7.5% overlap; Δt = 480 ns (shorter than the 0.88–1 µs on the page).
- IW 64 → 16 px (0.025D), grid 0.013D, 1.5 mm sheet, FOV 10D × 2.2D.

What the paper shows non-time-resolved PIV can supply:
- k and ε from 2D-2C data through a statistical-axisymmetry closure for the unmeasured components and gradients (eqs. 22–23, p. 22), with ν taken at ambient conditions. Resolution-limited ε is acknowledged but not quantified.
- Integral length scales up to the r = 0.1 crossing, to avoid the negative lobes of screeching jets (eq. 24).
- Mean static pressure from the mean velocity (eqs. 13–20). The Reynolds-stress divergence is neglected, and there is no Mach-disk treatment.

Sample-size guidance from Tan et al. 2017, quoted here (p. 20): length scales converge within 1% for ≥ 3,000 fields and SNR > 500, and change about 1.5% when the mesh is down-sampled to 146 × 800 vectors. That complements the POD-convergence numbers on the page (Weightman 2019). PIV k, ε and shock pressure agree with k–ω SST RANS except near the exit, where the shear layer is thin, and at M_j 1.59 beyond x/D ≈ 1.5 (p. 31–33). What PIV cannot give is the integral time scale and the convection velocity, which are modelled (eq. 25; lip-line mean velocity). Time-resolved data would remove that assumption.
