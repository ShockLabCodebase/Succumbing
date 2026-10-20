## mercier-2017-screech-feedback-loop-underexpanded-round-jets (queued 2026-10-20)

Mercier 2017 gives two measurement recipes that transfer to the lab.

**Thin-strip TR schlieren** (Table 3, p. 207–208, 212):
- Set-up: Phantom V12 on a Z-type system (two 200 mm f/8 mirrors 2.5 m apart, focused Cree XP-L LED, knife edge perpendicular to the jet axis at about 50% cut-off).
- The strip is only 16–24 px across y/D 0.44–0.55, by 640–1024 px over 4.2–4.9D, at 220–430 kfps, chosen by Veltin et al.'s rule of at least 15U_j/D_j. That is enough for lip-line phase and wavenumber at f_s.
- Wavenumber peaks over short (2–4 wavelength) windows are refined with a Gaussian window, ×2 zero padding and a three-point Gaussian fit (Gasior & Gonzalez; error below 1% of an 80 rad m⁻¹ bin).

**Near-field two-microphone phase averaging** (p. 218–219):
- Zero-lag FIR band-pass (±10% f_s) on a fixed reference, 20 phase bins per period over two periods, and zero-crossing wavefront tracking.
- This avoids the 2π ambiguity where hydrodynamic and acoustic pressure mix.
- Limits: a radial traverse in the exit plane cannot separate the 3rd–5th shock tips, and reflections dominate once the tone is 20 dB down (y ≈ 5.5D), even in a 10 × 8 × 8 m anechoic room (p. 216–218). For the group's non-anechoic rigs, the schlieren-phase route is therefore the safer choice.

**Repeatability** (p. 206): the same M_j 1.15 jet measured in 2011 and 2016 gives matching screech and BBSAN spectra, with a 1.3% difference in shock spacing.

This complements the page's long-record SA-Z table: a much faster rate on a thin strip, at the cost of SPOD capability. It adds a non-group anechoic jet facility (D = 38 mm, 0.85 kg s⁻¹ continuous, NPR ≤ 3.9, contraction 4.4:1, 0.5 mm lip) to the facilities section. It does not change the current understanding.

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
