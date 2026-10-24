## baars-2014-cumulative-nonlinear-waveform-distortions-high-speed-jets (queued 2026-10-24)

This is the first laboratory study in the library of whether jet noise steepens *cumulatively* in propagation, as opposed to being radiated already steepened. It fills the gap "No laboratory study of crackle generation is indexed" in the "Crackle and nonlinear steepening" section. For an unheated, ideally expanded M_j 3 jet (D_j 25.4 mm), Hamilton's effective Gol'dberg number for spherical waves is Λ ≈ 0.15 and the shock formation distance r̄ ≈ 18 m (708 D_j), five times the chamber's 3.5 m reach (Table 4, p. 353; p. 361). Spectra, cross-correlations and Morfey–Howell Q and Q/S collapse along rays from the post-potential-core region out to 140 D_j, so the steepness seen in the lab (S(ṗ) up to 1.96, WSF down to 0.64; Fig. 24, p. 362) is local or source-side, not cumulative (p. 354–362).
- This answers the open question "Is crackle radiated as shocks or formed in propagation?" for lab scale: radiated, or formed near the source. The paper's model, however, predicts cumulative steepening at full scale (below).
- It agrees with the near-field shocklet picture of the LES accounts (bres-2019-modelling-jet-noise-les-perspective, p. 9–10).
- It also explains why langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation still sees steepening in a subscale M 3.1 jet. Eq. 4.13 makes x̄/r₀ ∝ 1/(U_j⁵ St), independent of D_j, and heating (U_e ≈ 1.7 km/s against 608 m/s here) cuts x̄/r₀ by roughly 13–170 times (my estimate).
- It cautions that the plane-wave Γ used in that note overstates nonlinearity for spreading waves: here Γ_L ≈ 1070 but Λ_L ≈ 0.15 (my arithmetic).
- Methodological point for the page: a single-point Morfey–Howell Q/S is non-zero even for a near-Gaussian input (Fig. 22, p. 358–359). It can only be read as a change along a ray that obeys p ∝ 1/r (p. 360, 364). Along rays from the nozzle exit, spectra fail to collapse purely from geometry (Fig. 19a, p. 355).
- Suggested addition to current-understanding item 8 (nonlinear propagation): cumulative distortion needs Λ ≫ 1, which cold lab jets do not reach. Pre-steepened Mach waves at the source remain the main untested factor (p. 348, 363–364).

## viswanathan-2004-aeroacoustics-hot-jets (queued 2026-10-24)

- **Extends the two-source picture.** Tam et al.'s 1996 G spectrum fits subsonic heated jets at 90°, M 0.4–1.0 and TR up to 3.2, once Re is above about 4 × 10⁵ (p. 49–56). F fits cold jets at 155–160° down to M 0.4 (p. 58).
  - The author explains the low-speed aft noise by rapid decay of instability waves past the potential core, which broadens the wavenumber spectrum (Tam & Burton 1984), with Panda & Seasholtz 2002 as evidence. He calls the mechanism unresolved (p. 61–62).
  - Agrees with: tam-1996-two-components-turbulent-mixing-noise-supersonic-jets, tam-2008-sources-of-jet-noise-experimental-evidence (which reuses these data). It anticipates jordan-2013-wave-packets-turbulent-jet-noise and cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation (end-of-core breakdown, jitter).
- **Refutes the dipole account of hot-jet spectra.** The extra hump near the peak, modelled by Tester & Morfey 1976 and Morfey et al. 1978 as temperature-fluctuation dipoles, appears only with the 1.5 in nozzle. The author attributes it to low Re (p. 50–56, Fig. 16).
  - My check in the note: the hump orders by nozzle size better than by the quoted Re. The 1.5 in nozzle keeps it at Re ≈ 3.8 × 10⁵, and the 3.46 in nozzle lacks it at ≈ 2.1 × 10⁵. That points to the exit state, consistent with the dispute noted in jordan-2013 (p. 175). bres-2019-modelling-jet-noise-les-perspective cites the 4 × 10⁵ threshold as settled.
- **No V⁶ law.** The OAPWL exponent falls only from 8.74 (cold) to 7.98 (TR 3.2) (Fig. 24, p. 64). The V⁶ in the older literature came from rig-contaminated low-velocity data (p. 66–72).
  - The OASPL exponent falls from 7.83 to 5.53 at 90° and from 9.67 to 7.67 at 160° (Figs. 32–33, p. 75–77).
  - Cold exponents agree with Tam 1996's formulas; hot ones fall faster (my arithmetic in the note).
  - Tension with tam-2008 (n ≈ 7.2–7.65 at TR 2.7 near 90–110°). The fit ranges differ.
- **Density effect at fixed V_j** (Fig. 31, p. 74–75). Heating raises power at V_j/a 0.53–0.62, is neutral near 0.73–0.80 and lowers it at 0.9–1.2 (−2.3 dB at 1.2). Tam 1996's amplitude formulas give about twice that reduction (p. 75; my arithmetic).
- **Aft peak fixed in raw frequency.** For V_j/a < 1 the aft peak stays at one frequency (Lush 1971; p. 58, 62). This supports Tam 1996's fD/a∞ scaling and conflicts with tam-2008's fD/u_j collapse at 150°. Heating broadens the peak sector and the peak, in agreement with tam-1995-supersonic-jet-noise.
- **Changes the topic page: yes.**
  - Add the subsonic hot-jet exponents and the V⁶ refutation.
  - Add the low-Re (or exit-state) origin of the "dipole" hump, as a disputed point.
  - Add the aft-peak scaling conflict with tam-2008 to the disagreements.
  - Add the density-effect crossover at V_j/a ≈ 0.75.

## suzuki-2023-elliptical-jet-directivity-efficiency-wave-packet-model (queued 2026-10-25)

- **Wavepacket model carried to a non-round, installed jet.** The kinematic wavepacket source (T₁₁ only, Gaussian envelope, fixed k_h) moves from a round cylinder to an equal-area elliptical cylinder. The azimuthal shape is the Mathieu pressure eigenfunction rather than e^{imφ}. Sound is radiated with the free-field Green's function or the Ffowcs Williams & Hall half-plane Green's function (p. 2571–2572).
- **Validation.** It reproduces the round installed-jet results of Nogueira, Cavalieri & Jordan (2017, JSV) at AR 1.001 (Fig. 2, p. 2572).
- **Scattering findings that extend round-jet results:**
  - Scattered sound decays exponentially with jet–plate distance for every mode: ≈ 6, 10 and 7 dB per D for ce₀, se₁ and ce₁ at θ = −150° (Fig. 9). The ce₀ slope rises only slightly with AR: ≈ 5.6 → 5.9 dB per D for AR 1–5 at −90° (Fig. 10, p. 2577). This agrees with Cavalieri et al. 2014 (not held).
  - Moving the packet downstream of the trailing edge deepens the cancellation lobe near θ ≈ −30° for ce₀ and ce₁, but not for se₁ (Fig. 11, p. 2577).
- **Efficiency and phase speed.** The paper attributes efficiency changes to phase velocity (p. 2576, 2578), in line with `cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation` (p. 10–12) and `jaunet-2017-two-point-coherence-wave-packets-turbulent-jets`.
  - My checks suggest radial compactness explains most of the ce₀ lead: k r_cyl ≈ 0.38, giving J₁/J₀ ≈ −15 dB at the ring and −24 dB at θ = 20°. That is the m = 0–2 compactness argument of `jordan-2013-wave-packets-turbulent-jet-noise` (p. 176).
  - Phase speed alone gives only ≈ 6.5 dB, and the source's extent along r_y or r_z alone gives ≈ ∓4.8 dB over AR 1–3. Mark these as the note's estimates, not the paper's.
- **Caveat for the page.** The source has no jitter, while `cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation` (p. 15) finds jitter adds ≈ 30 dB for subsonic jets. Absolute efficiency ratios between modes are therefore model-dependent.
- **Existing claim.** This supports the page's line that non-axisymmetric exhausts have azimuth-dependent directivity, but sharpens it: in this model the varicose mode is nearly axisymmetric. The azimuthal dependence comes from se₁ and ce₁, with nulls at φ = 0/180° and 90/270°, and from the plate's own silent plane.
