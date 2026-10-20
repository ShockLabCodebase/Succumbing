## gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets (queued 2026-10-20)

- **Planar vortex sheet with closed-form band edges.** The paper uses Tam & Norum's (1992) planar vortex sheet (eqs. 10–11, p. 24) for an ideally expanded rectangular jet of height h_j, ignoring the major dimension.
  - The lower limits of the upstream-propagating segments of the symmetric and antisymmetric neutral modes are closed-form (eqs. 15–16, p. 25). They are identical to the planar branch points of [Nogueira 2024](../notes/nogueira-2024-guided-jet-waves.md) (eqs. 4.7–4.8 there, with n shifted by one; both give 0.21 at M 1.2, T 1).
  - Upper limits are read from the dispersion curves.
  - Eqs. 13–14 are misprinted ("/π" for "×π").
- **Heating lowers the bands.** At M_j 1.36, the A1 lower limit is St_hj 0.186, 0.157 and 0.141 for TR 1, 2 and 3 (my eq. 16). This matches the round-jet finding that cooling raises the guided-mode band ([Mancinelli 2021](../notes/mancinelli-2021-complex-valued-resonance-model-screech.md), p. 15–16).
- **Where the band test works and fails** (Fig. 21, p. 26):
  - the NPR 3 LES tones sit 16–24 % above the A1 lower limit;
  - the cold underexpanded tone sits just above it;
  - the hot underexpanded tones, and by eye the cold experiments above M_j ≈ 1.45, fall below.

  The authors invoke finite shear-layer thickness (after Tam & Ahuja 1990) without computing it. The page's point that thickness lowers the band supports the remedy, but no finite-thickness or LES-mean-flow planar model has been run.
- **What the model gives.** It gives bands only: no growth rates, no phase criterion and no spanwise structure. It cannot distinguish minor-axis from diagonal flapping. Nogueira 2024's oblique-wave bands (p. 28–30) are the natural 3-D extension.

## huerre-1990-local-global-instabilities-spatially-developing-flows (queued 2026-10-20)

- **Theoretical root of the page.** This review underlies the "Global stability: amplifier or oscillator" section and the Briggs–Bers saddle machinery used by `towne-2017-acoustic-resonance-potential-core-subsonic-jets`, `schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet` (p. 19) and `nogueira-2021-absolute-instability-shock-containing-jets` (p. 6, 13).
  - It defines absolute and convective instability from the impulse response (eqs. 4–7, p. 478).
  - The test is the sign of ω₀,ᵢ at the pinch of k⁺ and k⁻, with ω₀,ᵢ ≤ ω_i,max (eqs. 15–17, p. 482–484). Saddles formed by two branches from the same half k-plane do not count (p. 484), and branch switching in spatial calculations flags the transition (Fig. 3, p. 486).
- **Weakly non-parallel theory** (ε = λ/L ≪ 1).
  - It gives the four classes: uniformly stable, convective amplifier, marginally globally stable, and absolute pocket (Fig. 4, p. 488–489).
  - The leading-order global frequency is ω_G = ω₀(X_s) at the saddle of ω₀(X) in the *complex* X-plane, with ω_G,i ≤ ω₀,ᵢ(X_s) ≤ ω₀,ᵢ|max (eqs. 38–40, p. 493–495). A real-axis absolute pocket is therefore necessary but not sufficient.
  - The Ginzburg–Landau equation arises as the inner turning-point equation and yields a ladder of global modes O(ε) apart (eqs. 45–46, p. 496).
  - This agrees with the GL example of `cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation` (absolute at the inlet for A > 1.25, globally unstable only near A ≈ 1.6) and with the WKB turning-point reading of saddles in `towne-2017-acoustic-resonance-potential-core-subsonic-jets`.
- **Superseded preferred-mode view.** The review reads the jet "preferred mode" as a weakly damped global mode (planar-jet GL model: St 0.225 against 0.25 measured; Fig. 9, p. 501–502). `garnaud-2013-preferred-mode-incompressible-jets` explicitly refutes this conjecture for the incompressible round jet: there is no isolated mode, and the preferred mode is a pseudo-resonance. Point 2 of "Current understanding" can cite this paper as the superseded view.
- **Jet thresholds.**
  - Homogeneous incompressible jets are everywhere convective.
  - Round jets go absolute below S = ρ_j/ρ∞ = 0.72 at M = 0 (δ_ω/D = 8.4%, m = 0), with absolute St_D 0.25–0.5; planar jets go absolute below S = 0.90 (p. 511).
  - Low density promotes absolute instability in jets but suppresses it in wakes (vortex-sheet map, Fig. 13, p. 506).
  - This is consistent with the convective hot jets of `gudmundsson-2011-instability-wave-models-near-field-jets`, since the thresholds need thin laminar shear layers and low M, and hot jets "revert" at high Re and M (p. 512).
- **Tests for "Oscillator or not?"** §7.1 ranks the evidence (p. 516–518): spectra, then lock-in, then response against forcing amplitude (slope 1 for an amplifier, flat for an oscillator; Fig. 21), then saturation against a control parameter (eq. 58), then a transient Landau fit checked at every point. These are the tests `oberleithner-2011-swirling-jet-vortex-breakdown-stability` applied.
- **Other routes to global instability** (p. 498):
  - pressure feedback from surfaces (edge, collar and cavity tones; eq. 48);
  - outflow-to-inflow pressure coupling in spatial simulations, a spurious "computational box" resonance (Buell & Huerre 1988; Fig. 8).
- **Frequency-selection debate.** Pierrehumbert (max ω₀,ᵢ), Koch (ω₀ at the absolute/convective boundary) and the authors (complex saddle) disagree. Hannemann & Oertel's simulation supports Koch, which the authors concede "appears to contradict" them (p. 502). This is linear-theory background to "What selects the screech frequency?". It does not change the page's consensus.

## ray-2005-instability-wave-shock-cell-interaction-sound (queued 2026-10-21)

The paper is the library's earliest use of linear PSE wavepackets as a BBSAN source, and a precursor of wong-2021-wavepacket-modelling-bbsan.
- **Model structure.** Axisymmetric PSE and locally parallel "quasi-viscous" zero-frequency shock modes (Tam, Jackson & Seiner 1985) share a RANS mean. They are coupled one-way, as quadratic product sources, in an inhomogeneous LEE solved with a Chebyshev–Fourier spectral code (eqs. 2–3, p. 2–3).
- **Check against a parallel solution.** A locally parallel inhomogeneous Rayleigh-equation (Lilley–Goldstein) Green's function, with the mean profile from one station (x/D ≈ 4), matches the LEE at St 0.6. At St 0.9 the lobe angles still match but the amplitudes do not (Fig. 6, p. 9). This is either a non-parallel effect or, as the authors argue, ring-source interference.
- **Radial structure of the PSE wavepacket matters.** At St 0.6 the u_x eigenfunction moves onto the axis by x/D 6; at St 0.9 it stays in the shear layer and peaks near x/D 1.5 (Fig. 2, p. 5–6). So the radial shape of the wavepacket, and not only its wavenumber, sets the directivity.
- **Shock mode.** The first shock-mode eigenvalue hardly changes with heating (Fig. 8, p. 10). Its wavelength at the nozzle, about 1.02D, is close to the vortex-sheet 1.04D_j (my arithmetic).
- **Contrast with PFE.** In nogueira-2021-wavepacket-modulation-shock-containing-jets the shocks modulate the wavepacket inside the operator and lengthen its envelope. Here the wavepacket is unmodulated: one-way coupling on a presumably shock-free mean. Eq. 8a makes level and directivity depend strongly on the envelope length L (p. 5), which shows why the PFE lengthening matters for BBSAN predictions.
- **Caveat for forced linear runs.** The forced LEE also excites its own KH waves, which radiate a downstream Mach-wave lobe (p. 7).
- **Link to the screech questions** (my derivation, not the paper's claim). The local condition θ_M = 180° is c_s1 = −1, i.e. k_t − k_s = −ω/a∞. That is Tam's screech closure condition (mercier-2017-screech-feedback-loop-underexpanded-round-jets, eq. 3.3). A Fig. 7-style θ_M(x) map from SPOD k_t(x) and mean k_s(x) would be a cheap test of "which shock wavenumber closes which stage". The paper itself does not change the page's open questions.

## michalke-1984-survey-jet-instability-theory (queued 2026-10-21)

Michalke 1984 is the review that most of the local spatial LSA on this page rests on. It sets up the inviscid compressible pressure (Rayleigh-type) equation with a Crocco–Busemann temperature profile (eqs. 3, 16–17, p. 161–164). It also gives the tanh "profile 2", U = ½{1 + tanh[¼(R/θ)(R/r − r/R)]} (eq. 9, p. 162), which the group's LSA papers use as their base flow (rodriguez-2023-preferred-flapping-round-twin-jets, stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa, stavropoulos-2024-upstream-waves-merging-twin-jets, nogueira-2021-absolute-instability-shock-containing-jets, nogueira-2021-closure-mechanism-a1-a2-screech, nogueira-2026-flapping-motion-screeching-round-jets). Its parameter maps are the baseline trends:
- As θ/R grows from 0.05 to 0.4, the St of maximum growth falls from about 0.75 to 0.21 (m = 0) and 0.11 (m = 1). Every St below 0.35 is unstable over the whole potential core (Fig. 12, p. 169–170).
- In a thick layer, raising M to 1.2 stabilises m = 0 more than m = 1: peak −α_iθ_c falls from 0.061 to 0.025 for m = 0 and from 0.061 to 0.042 for m = 1 (Fig. 17, p. 174–175).
- Heating destabilises spatial waves (p. 177).
- Flight curves collapse with σ = 1 + 1.4U∞/ΔU (p. 178–181).

The slowly diverging theory of §3 (Crighton & Gaster, Plaschko) shows that divergence alone caps the linear pressure gain near the local neutral point, at about 90, 57 and 26 for m = 0, 1 and 2 at St 0.5 (Fig. 34, p. 190–191). It also shows that the local phase speed depends on radius and on which variable is used (eq. 56, p. 189). That is the linear growth, saturation and decay envelope that PSE later matched to data in gudmundsson-2011-instability-wave-models-near-field-jets and cavalieri-2013-wavepackets-velocity-field-turbulent-jets. The Crighton–Gaster versus Morris–Tam dispute over local phase speeds (p. 192) was in practice settled by PSE.

§4 anticipates the forcing and receptivity problem in the Resolvent section. A bare edge passes a wave on and keeps no memory of it (eqs. 57–58, p. 194), while a lip wall closes a feedback loop that Michalke could not solve (p. 194–195). The natural shear-layer frequency (fθ/U_o ≈ 0.012–0.013) lies below the frequency of maximum growth (0.0164), and he selects it with a feedback/circulation argument (p. 195–196). This is the qualitative ancestor of the pseudo-resonance in garnaud-2013-preferred-mode-incompressible-jets and of the nozzle boundary-layer Orr forcing in lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.

The "irregular" modes and the hot-jet "mode mixing" (finite growth as ω → 0, c_ph → ∞; p. 166, 177) are early sightings of two later findings. Huerre & Monkewitz read the mixing as absolute instability (huerre-1990-local-global-instabilities-spatially-developing-flows, Table 4: S = 0.5). The non-KH vortex-sheet roots are now called guided jet modes (towne-2017-acoustic-resonance-potential-core-subsonic-jets, nogueira-2024-guided-jet-waves). That second link is my reading; the paper does not classify them.

One point bears on the page's thickness-sensitivity remarks under *Local stability*. Michalke warns that the density-weighted θ_c is unsuitable for characterising the velocity layer (p. 162). Yet mancinelli-2021-complex-valued-resonance-model-screech took its θ from this "compressible definition". For a cold jet at M = 1.2 the two differ by about 16% (θ_c/θ ≈ 0.84, my calculation), which matters where guided-mode bands are sensitive to R/θ below about 30.

## nogueira-2025-screech-military-style-rectangular-nozzles (queued 2026-10-21)

- **Model and base flow.** The group's azimuthal-Floquet spatial LSA is applied to a rectangular jet: μ = 0/1, Chebyshev × Fourier with N_r = N_θ = 100, inviscid, a polynomial eigenproblem in α in companion form solved with eigs (p. 4212). The base flow is a least-squares product of four tanh profiles (eq. 7) fitted to minor- and major-axis PIV, with smooth M_c, y_c, z_c, δ_y, δ_z(x), Crocco–Busemann density, and no V, W or shocks (p. 4212–4213). It is the rectangular counterpart of Ivelja 2024's fitted elliptical mean, and it reproduces centreline decay, shear-layer growth and axis switching (Figs. 7–8, p. 4216).
- **Modes.** The flapping KH mode is the most unstable KH mode. The flapping G-JM has the same symmetry but decays far more slowly in y (Fig. 15, p. 4219).
- **Weakest link.** With α_GJM = α_KH − k_sh, α_KH taken at x/D_eq = 0.25 and α_GJM varying in x, the flapping tone is predicted to within a few per cent at NPR 2.5–4.5 (Fig. 16, read).
  - The predicted St falls with x as shear-layer thickening moves the G-JM band to lower frequency.
  - The predicted region lies near the POD-mode peak, except at NPR 2.9, where predictions sit above the tone and upstream of the peak (note's reading).
- **Constant-thickness base flow.** It fails above NPR 2.6 (δ = 0.075 for KH, 0.150 for the G-JM; Fig. 17, p. 4220). This is another case where shear-layer development, not shock amplitude, controls the G-JM band (cf. Mancinelli 2021, p. 16–17; Ivelja 2024, p. 23).
- **Limits.** The model is local and gives no growth, gain or loop selection. k_sh comes from data, not from a zero-frequency LSA. Only flapping modes are computed, so the varicose and wagging tones stay unmodelled; their G-JM bands are in the AIAA 2023-4488 precursor, which is not in the library.
