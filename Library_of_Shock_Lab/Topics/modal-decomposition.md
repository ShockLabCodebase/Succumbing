# Modal decomposition in practice: POD, SPOD, BMD and DMD

_Last updated: 2026-10-25 · 37 papers_

## Scope
A practitioner's guide to step 2 of the lab workflow (CLAUDE.md): snapshot POD and POD pairs for non-time-resolved PIV, SPOD (Welch and variants) and BMD for time-resolved schlieren, acoustics and LES, and how DMD, Koopman and resolvent analysis relate to SPOD. Hilbert POD, EMD, wavelets, SPOD reconstruction and intermittency tracking are on [time-frequency-methods](time-frequency-methods.md); resolvent and global stability on [linear-operator-methods](linear-operator-methods.md), local stability on [linear-models](linear-models.md); what these tools found about screech and flapping on [screech](screech.md) and [non-axisymmetric-jets](non-axisymmetric-jets.md) and [twin-jet-coupling](twin-jet-coupling.md).

## Current understanding
1. **Snapshot POD needs no time resolution, but its modes mix frequencies.** Its coefficients are uncorrelated, and its first n modes hold at least as much energy as n modes of any other basis ([Berkooz et al. 1993](../Notes/berkooz-1993-proper-orthogonal-decomposition-turbulent-flows.md), p. 543–545). Snapshots need only be a correlation time apart ([Sirovich 1987](../Notes/sirovich-1987-turbulence-dynamics-coherent-structures-part-i.md), p. 567–568). But the coefficients are uncorrelated only at zero lag, and each POD eigenvalue integrates SPOD eigenvalues over all frequencies ([Towne et al. 2018](../Notes/towne-2018-spod-relationship-dmd-resolvent.md), p. 8–9). DNS ([Rowley et al. 2009](../Notes/rowley-2009-spectral-analysis-nonlinear-flows-koopman.md), p. 11) and schlieren ([Berry et al. 2017](../Notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md), p. 6) show the same mixing.
2. **Uncorrelated is not independent, and energy is not importance.** POD removes only second-order correlation (Berkooz et al. 1993, p. 557). So an unpaired low-energy mode can carry the pair's snapshot-by-snapshot amplitude, with an energy and rank that depend on the POD variable ([Weightman et al. 2018](../Notes/weightman-2018-signatures-shear-layer-unsteadiness-pod.md), p. 7, 12–13). A limit cycle can have infinitely many nonzero POD eigenvalues, so a mode count measures spread, not dimension (Berkooz et al. 1993, p. 556).
3. **A POD pair is a single-frequency mode only on a clean limit cycle**, where it equals the real and imaginary parts of the leading DMD mode ([Taira et al. 2020](../Notes/taira-2020-modal-analysis-applications-outlook.md), p. 6). One pair holds a helical C-mode screech, but a B mode whose flapping plane precesses out of the PIV plane needs 18 modes ([Tan et al. 2017](../Notes/tan-2017-broadband-velocity-fluctuations-screeching-jets.md), p. 2325–2328).
4. **SPOD is the default for stationary time-resolved data.** Its modes are coherent in space and time and energy-ranked per frequency. They are the optimally averaged ensemble-DMD modes, and they equal resolvent modes only under white forcing (Towne et al. 2018, p. 8, 14–15, 18–19). Stationarity is homogeneity in time, hence Fourier modes in time (reading of Berkooz et al. 1993, p. 546, in that note).
5. **Welch SPOD trades bias against variance, and tones are the hard case** (Towne et al. 2018, p. 23, 38; [Schmidt & Colonius 2020](../Notes/schmidt-2020-guide-spod.md), p. 6). Multitaper and band-ensemble estimators ease this.
6. **The λ₁–λ₂ gap is the key diagnostic.** In jets it marks the KH band (0.2 ≲ St ≲ 2), the only band where SPOD and resolvent modes match ([Schmidt et al. 2018](../Notes/schmidt-2018-spectral-analysis-jet-turbulence.md), p. 6, 16–17).
7. **Impose symmetries rather than wait for the data to learn them, once a run has shown it respects them.** Homogeneous directions give Fourier modes, and other symmetry groups give their own splits (Berkooz et al. 1993, p. 546): azimuthal modes for round jets, D2 parts for rectangular, elliptical and twin jets (Schmidt & Colonius 2020, p. 2–3; [Yeung et al. 2022](../Notes/yeung-2022-3d-spod-twin-rectangular-jet.md), p. 5, 8). But unconstrained modes that lack the set-up's symmetry prove a run non-ergodic, which imposed symmetry would hide (Berkooz et al. 1993, p. 550–551).
8. **BMD tells which triads interact** and separates sum from difference interactions ([Schmidt 2020](../Notes/schmidt-2020-bispectral-mode-decomposition.md), p. 14–15).
9. **DMD of stationary turbulence is essentially a DFT.** It has no mode ranking and is biased by noise. It is most useful for transients, limit cycles and linearised data (Towne et al. 2018, p. 12–13, 33; [Taira et al. 2017](../Notes/taira-2017-modal-analysis-fluid-flows-overview.md), p. 21).
10. **All of these are record averages.** Switching and intermittency need [time-frequency-methods](time-frequency-methods.md). Short of that, conditioning snapshots before POD separates states, on pair amplitudes in PIV ([Bell et al. 2021](../Notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), p. 23–26) or on wavelet scalograms in schlieren ([Wong et al. 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 19–20).

## Which method answers which question

| Question | Data | Method | References |
|---|---|---|---|
| Energetic structures, no time information | independent snapshots (PIV) | snapshot POD or direct SVD | Sirovich 1987; Berkooz et al. 1993; Taira et al. 2017, p. 10–12 |
| Phase cycle of one dominant oscillation | snapshots plus a tone frequency | POD pair, θ = arg(a₁ + i a₂) | Oberleithner et al. 2011; Edgington-Mitchell et al. 2014; Weightman 2019 |
| Hidden amplitude modulation of that cycle | independent snapshots | correlate r₁₂ with each a_n | Weightman et al. 2018 |
| Broadband statistics with the tone removed | independent snapshots | POD-subspace subtraction | Tan et al. 2017 |
| Intermittent or coupled states | independent snapshots | sub-domain and conditional POD | Bell et al. 2021 |
| Structures ranked by energy at each frequency | long time-resolved record | Welch SPOD | Towne et al. 2018; Schmidt & Colonius 2020 |
| Tones on broadband, or a short record | one long record | adaptive multitaper SPOD, band-ensemble SPOD | Yeung & Schmidt 2024; von Saldern et al. 2026 |
| Data too large, or acquired in bursts | time-resolved blocks | streaming SPOD | Schmidt & Towne 2019 |
| Smooth coefficients that keep jitter in one pair | ordered series | time-domain (Sieber) SPOD | Sieber et al. 2016 |
| Which frequencies interact | many time-resolved blocks | bicoherence (probe), BMD (field) | Kim & Powers 1979; Schmidt 2020 |
| Growth rates, transients, linearised runs | uniformly sampled sequence | DMD | Schmid 2010; Rowley et al. 2009 |
| Test a linear model | converged SPOD and a mean flow | SPOD vs resolvent | Towne et al. 2018; Schmidt et al. 2018 |

## Snapshot POD and POD pairs
The modes span exactly the realisations, so they inherit closed linear properties of the data such as zero divergence (Berkooz et al. 1993, p. 543–545); how many snapshots are enough is left open (p. 556). Sirovich calls his modes energy-optimal but "not necessarily" the coherent structures seen in experiments (p. 564). His energy Σλ has no factor ½ (p. 565). Direct SVD is more robust than the M × M route. A travelling wave needs a π/2-shifted pair, and noise collects in the high-order modes (Taira et al. 2017, p. 10–14).

POD–Galerkin models show the limits of energy ranking. They need a closure for the neglected modes (Smagorinsky-type in the wall-layer model) and lose FFT efficiency, and one basis served a range of parameters for Ginzburg–Landau better than for the cylinder wake (Berkooz et al. 1993, p. 561–564). In Deane et al.'s cylinder models four modes grew without bound, six were accurate, and neither transferred across Re (Taira et al. 2020, p. 9). A three-mode POD Galerkin model fails where balanced POD succeeds, and the choice of norm changes the second pair (p. 13–14, 18).

The group's phase-recovery route comes from [Oberleithner et al. 2011](../Notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md). They used 800 uncorrelated stereo-PIV snapshots per plane, with the leading pair at 15.0% and 14.9% of TKE (p. 7, 19). A figure-of-eight Lissajous figure identified the harmonic pair (p. 19). They preferred POD phase to a band-passed Hilbert phase from a point sensor, because it absorbs jitter and uses the whole field, but it discards amplitude (p. 22–23). [Edgington-Mitchell et al. 2014](../Notes/edgington-mitchell-2014-coherent-structure-helical-screech-mode.md) carried it to a screeching jet. POD of the transverse velocity alone, from 8000 fields, separated the pair "much" more cleanly (15.3% + 13.7%, against 2.5% for mode 3), and everything outside the pair counted as random (p. 834–835). Planar PIV of the C mode claimed a helix but could not prove one ([Edgington-Mitchell 2023](../Notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md), p. 3–4). [Weightman 2019](../Notes/weightman-2019-sound-production-impinging-supersonic-jets.md) gives the snapshot budget: about 500 snapshots for the leading pair and 1000 for modes 3–4 in resonant flows, and about 2500 when no mode dominates (p. 56–57). Phase averages in 5° bins keep shocks and acoustic fronts that a pair reconstruction smears (p. 102–105). Fourier-splitting the complex pair in x isolates the upstream guided jet mode ([Edgington-Mitchell et al. 2018](../Notes/edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), p. 6; [Ivelja et al. 2024](../Notes/ivelja-2024-modal-analysis-screeching-elliptical-jets.md), p. 14–17, both not tagged).

The POD variable decides what the low-energy modes show. Weightman et al. 2018 explain the unpaired **shear thickness mode** (STM) of impinging-jet PIV. The correlation of its coefficient with the pair amplitude r₁₂ = √(a₁² + a₂²), 0.74 against < 0.15 for the other first 20 modes, identifies it, not its shape (p. 7). Snapshots sorted by it differ by 27% in vorticity thickness at x/D = 3.6 (p. 8). Synthetic Stuart vortices give an STM only when the layer width varies, not when they merely translate (p. 9–12). Every basis has it, but in synthetic data v-only POD nearly hides it (≈ 0.3%, rank 14) and u-only POD inflates it (≈ 23.6%) (p. 12–14). So the group's v-only pairs (Edgington-Mitchell et al. 2014, p. 834; Bell et al. 2021, p. 19–20) are clean partly because the amplitude marker is suppressed (reading in the Weightman et al. 2018 note). The STM converges more slowly than the pair (p. 5), and [Nogueira et al. 2021](../Notes/nogueira-2021-twin-jet-coupling-spatial-lsa.md) found it in twin-jet PIV too (p. 11–13, not tagged).

Tan et al. 2017 use POD as a tone filter for broadband statistics. The tonal part of each snapshot is its projection onto the leading N_M modes, with N_M the fewest whose removal flattens the screech peak in streamwise spatial spectra (p. 2323–2324). The leading pair suffices for the helical C mode. The precessing B mode needs N_M = 18 (38% of the energy), which already removes non-screech energy at 0.2 < λ_x/D < 0.6 (p. 2325–2328). Residual length scales need at least 3000 snapshots, SNR > 500 and Δx/L < 0.1 for 1% accuracy (p. 2332), several times the leading-pair budget. Because the pair is subtracted, not phase-averaged, amplitude jitter counts as tonal and an STM stays in the residual (inferences in the Tan and Weightman et al. 2018 notes).

Pairs can be identified objectively. One way is to Hilbert-transform each POD mode in x and look for mutual matches at ∓0.5π ([Davey et al. 2025](../Notes/davey-2025-hpod-sphere-wake.md), p. 20–21). Another is space-only HPOD, which puts a pair into one complex mode: 95% of the energy against POD's 50/46% split in a cylinder wake ([Raiola & Kriegseis 2025](../Notes/raiola-2025-hilbert-pod.md), p. 14–15). Time-direction HPOD also merges pairs, but it needs ordered snapshots: shuffled data give POD-like real modes with meaningless imaginary parts ([Kriegseis et al. 2021](../Notes/kriegseis-2021-hilbert-transform-revisited-hpod.md), p. 1–2). Near-degenerate eigenvalues make modes unstable from sample to sample (RMS loading difference 0.21 against 0.04 after rotation), and orthogonality can create domain-wide modes that are not in the data ([Horel 1984](../Notes/horel-1984-complex-principal-component-analysis.md), p. 1667–1671).

On time-resolved schlieren, Berry et al. built the basis from decimated snapshots and projected the full record onto it (p. 4). They also used POD to remove light-intensity drift (p. 4–5). Their results show the pitfalls: 200–300 modes for 50% of the content, and a 34.4 kHz tone aliased to 15.6 kHz at 50 kHz sampling (p. 5–8).

## SPOD estimation: parameters and pitfalls
The algorithm is: subtract the mean, impose symmetries, split into blocks, window and FFT each block, then solve an N_blk × N_blk weighted eigenproblem per frequency (Schmidt & Colonius 2020, p. 4–5). Δf = f_s/N_FFT.
- **Planning.** Plan from a point PSD (p. 6). For bicoherence, Δf must be much smaller than the spacing of the interacting tones ([Kim & Powers 1979](../Notes/kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions.md), p. 124).
- **Bias against variance.** On VAWT PIV, N_FFT = 256 (69 blocks) gives a narrow 99% band but leaks the blade-passing tone. N_FFT = 2048 (7 blocks) resolves the tone, but its band is good only to a factor of about 2. λ₁ also rises at small N_FFT, so compare eigenvalues only at equal Δf (Schmidt & Colonius 2020, p. 6).
- **Overlap.** 50% overlap reduces variance by about 11/18; more only adds dependent blocks (p. 4, 6–7).
- **Window.** The `spod` default is Hamming (p. 7); Towne et al. 2018 (p. 22, 29) and BMD (Schmidt 2020, p. 22) use Hann. Hann reduces far leakage but smears next to tones ([von Saldern et al. 2026](../Notes/von-saldern-2026-band-ensemble-spod.md), p. 22).
- **Confidence intervals.** χ² with 2N_blk degrees of freedom (Schmidt & Colonius 2020, p. 7). Report N_FFT, overlap, window, N_blk and Δf.
- **Blocks need not be contiguous.** Camera bursts can serve as blocks (p. 6), streaming SPOD allows gaps ([Schmidt & Towne 2019](../Notes/schmidt-2019-streaming-spod.md), p. 28), and separate fields of view can be phase-stitched (Schmidt & Colonius 2020, p. 9).
- **Reading spectra.** A gap means one mechanism. A continuous λ₁ curve does not mean the same mechanism across frequencies, and multi-lobe sub-optimal modes may only reflect orthogonality (p. 8). A high-frequency plateau is the noise floor (p. 10). Thresholding eigenvalues above the floor (SNR 1) kept 92.7% of the clean energy with 74 of 9933 modes ([Nekkanti & Schmidt 2021](../Notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md), p. 15).
- **Convergence.** Sub-optimal modes converge slowly: eigenvector error was 0.6% for mode 1 against 25% for mode 5 (Schmidt & Towne 2019, p. 19). Two checks:
  - a jackknife over blocks: with half the blocks, leading β > 0.98 and sub-optimal β > 0.8 ([Suzuki et al. 2026](../Notes/suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md), p. 18–19);
  - record doubling: β > 0.95 and λ_s within 6% ([Mazharmanesh et al. 2025](../Notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md), p. 22–23, not tagged).
- **Lab settings.** Group schlieren at 150 kHz used n_fft = 1024 with 780 blocks from 400,000 frames ([Mazharmanesh et al. 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), p. 5–6). Twin-jet states 0.3–0.6% apart in St forced N_FFT = 4800 and only about 19 blocks (Wong et al. 2023, p. 7).

## SPOD variants
- **Time-domain SPOD** ([Sieber et al. 2016](../Notes/sieber-2016-spectral-proper-orthogonal-decomposition.md)) is a different method that shares the name (Towne et al. 2018, p. 2).
  - It low-pass filters the snapshot correlation matrix along its diagonals. N_f = 0 gives POD; a periodic full-length filter gives the DFT (p. 5–6).
  - Pairs keep jitter and intermittent events together (p. 16–17).
  - Costs: non-orthogonal modes (p. 6), possible spurious DMD-based pairs (p. 11), and an ambiguous N_f rule of one to three periods (p. 16–17).
- **Streaming SPOD** uses running DFT sums and a rank-d incremental basis, with one snapshot in memory (Schmidt & Towne 2019, p. 7–14).
  - d = 5 matches batch SPOD; choose d a little larger than the number of modes needed (p. 19, 27).
  - It keeps no block coefficients, so a second pass is needed for reconstruction (note's inference).
- **Adaptive multitaper SPOD** ([Yeung & Schmidt 2024](../Notes/yeung-2024-adaptive-spod-broadband-tonal.md)) applies sine tapers to the whole record via one zero-padded FFT, adding tapers until the leading mode stops changing (p. 4–8).
  - Settings: tol = 10⁻⁶ for tonal flows; constant N_win ≈ 100 for broadband flows. It matched Welch with 25% of the data (p. 13–16).
  - Caveats: Parseval is off by about 2%, low-frequency modes are biased toward k → 0, and runs take hours (18 h for the cavity) (p. 15–17).
  - With symmetries the gap may lie between λ₂ and λ₃ (p. 10).
- **Band-ensemble SPOD** (von Saldern et al. 2026) takes one full-record DFT and solves the eigenproblem over N_f neighbouring bins (p. 9–11).
  - Leakage is about ten times lower than Welch (p. 22).
  - Frequency attribution keeps tones sharp at Δf of 50–100 Hz. Use ℓ = ∞ for tonal bands and ℓ = 1 for broadband (p. 23, 29).
  - N_f can vary with frequency without redoing the FFT (p. 13–14).
  - It needs one long stationary record and cannot pool separate runs (p. 16).

## Norms, sub-domains and symmetry
- **Choice of W** (Schmidt & Colonius 2020, p. 4–5):
  - identity for microphones;
  - area weights on non-uniform grids;
  - TKE for incompressible velocity;
  - the Chu norm for compressible LES.
- **Schlieren.** The eigenvalues are intensity variance, not flow energy (Mazharmanesh et al. 2026, p. 5).
- **PIV.** The variable (u, v, both or ω_z) and the region change mode ranks and energies, so report both (Weightman et al. 2018, p. 12–13).
- **Sub-domains.** Zero weights select a sub-domain while the modes keep their full extent (Schmidt & Colonius 2020, p. 5).
  - Restricted SPOD separates shear-layer from developing-jet dynamics (Schmidt et al. 2018, p. 17–19).
  - Suzuki et al. used it to show that a low-frequency elliptical-jet mode has no support upstream of the axis switch, so it is a new instability (p. 14–17). Cropping the image, as in Mazharmanesh et al. 2025 (p. 14), loses that test.
  - In intermittently coupled twin jets, full-field POD gave four unpaired modes, and POD of each jet's half gave one clean pair per jet (Bell et al. 2021, p. 21–22).
- **D2 symmetry split.** Splitting into SS, SA, AS and AA parts is exact and saves 4× memory. Full-field SPOD finds the symmetric modes only "eventually", and its fourth mode did not converge (Yeung et al. 2022, p. 5, 8).
  - For PIV, the analogue is symmetry-imposed POD (Nogueira et al. 2021, p. 6–8).
  - **Test before imposing.** Check the symmetry of unconstrained modes from each run first (Berkooz et al. 1993, p. 550). Enlarging the ensemble with mirrored snapshots, as Sirovich advocated, "may obscure the true nature" of a system whose ergodic components are finer than its symmetries (p. 551). Symmetry-imposed POD is equivalent to that enlargement (inference in the Berkooz note).
  - Uncoupled jets that beat give "illusory coupling" in both symmetries. Conditional sampling before POD removes it (Wong et al. 2023, p. 16–20).
- **Conditional POD**, as Berkooz et al. proposed (p. 568–569). Snapshots in the upper quartile of both jets' pair amplitudes (≈ 650, converged at about 500) gave distinct symmetric and antisymmetric coupled pairs, the PIV counterpart of Wong's scalogram conditioning (Bell et al. 2021, p. 23–26).
  - Selecting on both jets partly forces the empty corners of Bell's exclusivity plot, and 650 snapshots against 594 for independent jets show how weak the coupling is (derivations in the Bell note).
  - POD wavelengths with u_c = 0.6u_j matched each coupled pair to its tone within 0.01 in St (p. 25–27).
  - LSE is the conditional mean under independent Gaussian POD coefficients, so every LSE event is a combination of POD modes (Berkooz et al. 1993, p. 565–567).

## Bispectrum and BMD
- **Origins.** The two-point correlation fixes only the spectrum of a structure, not its phase. Lumley sought the phase from the triple correlation, but Berkooz et al. judged this unconvincing, since nobody had measured whether the bispectrum factorises (p. 546–549).
- **Bicoherence.** The squared bicoherence b² is the fraction of power at f_k + f_l that comes from quadratic coupling, and var(b̂) ≤ 1/M (Kim & Powers 1979, p. 123–125).
- **What BMD computes.** BMD extends this to fields through the numerical radius of an N_blk × N_blk bispectral density matrix, built from the SPOD Welch blocks (Schmidt 2020, p. 11–14, 22).
- **What it finds.**
  - It separates sum from difference triads (p. 14–15).
  - It found a single triad at SNR 1 where the point bispectrum gave spurious peaks (p. 20–21).
  - The difference self-interaction (f, −f, 0) flags mean-flow distortion by a saturated instability (p. 24).
  - Its fundamental modes almost coincide with the SPOD modes (p. 26).
- **Removing the mean is a choice.**
  - Kim & Powers remove it from each record (p. 124), which deletes the (f, −f, 0) triad.
  - Mazharmanesh et al. 2026 kept it. Their St_s − 0 interaction maps located the shock cells that close each screech loop and gave a k_S closer to k_kh − k_GJM than the mean-flow shock peaks (p. 16, 19–22). They add that the BMD modes alone gave "little new insight" (p. 18).

## DMD, Koopman and resolvent relative to SPOD
- **Koopman.** Companion-matrix DMD approximates the Koopman modes of the attractor, and periodic data give the DFT (Rowley et al. 2009, p. 4–7).
  - Amplitudes scale with the first snapshot (p. 7).
  - Global modes about the steady state mispredicted the wall frequency: St 0.043 against 0.017 (p. 11).
  - Linear observables often limit DMD (Taira et al. 2017, p. 25).
- **DMD practice** ([Schmid 2010](../Notes/schmid-2010-dynamic-mode-decomposition.md)):
  - Use the SVD-projected operator, since the companion matrix fails on noisy data (p. 6).
  - Sample at about 3× the Nyquist rate of the target process (p. 12).
  - Subdomain and spatial DMD are possible (p. 8–9, 15, 18).
  - There are no amplitudes, so mode ranking is ad hoc (p. 13–14).
  - Noise biases the eigenvalues, so split records by regime first. A forced amplifier gives neutral eigenvalues, not stability eigenvalues (Taira et al. 2020, p. 7, 16–17).
- **Stationary data.**
  - Zero-mean DMD is the DFT, ensemble DMD gives the block DFTs, and SPOD is their optimal average. On the M 0.4 jet no DMD/DFT mode isolated the wavepackets (Towne et al. 2018, p. 12–15, 33).
  - For non-chaotic flows DMD and SPOD pick the same frequencies ([Towne et al. 2022](../Notes/towne-2022-database-reduced-complexity-modeling.md), p. 23–24).
  - SPOD ranks modes and resists noise, but it needs more data and has a fixed frequency grid (Towne et al. 2018, p. 38).
- **Resolvent.**
  - The two mode sets coincide only if the resolvent expansion coefficients are uncorrelated. Deterministic coefficients can only give a rank-one CSD (Towne et al. 2018, p. 18–21).
  - Leading modes matched at St 0.6 but not at St 0.2, and sub-optimal modes did not match (p. 35).
  - The resolvent overstates trapped and upstream acoustic waves compared with SPOD (Schmidt et al. 2018, p. 21–25).

## Disagreements and open questions
- **Subtract the mean before DMD?**
  - Towne et al. say yes for stationary flows, "contrary to prevailing wisdom" (p. 13).
  - Schmid (p. 18, 22), Rowley et al. (p. 8–10) and Taira et al. 2020 (p. 5) keep the mean as a zero-frequency mode.
  - The two positions suit stationary turbulence and transients respectively.
  - To settle it for screech, run both on one staging record and check whether either finds a tone frequency that fine-Δf SPOD misses.
- **Which estimator for tonal-plus-broadband data?**
  - Adaptive multitaper and band-ensemble SPOD both beat Welch on the same cavity PIV, but they have never been compared directly (von Saldern et al. 2026, p. 18–19).
  - A shared test on that data set, or on a screech record with known A1/A2 tones, would settle it.
- **Time-domain or Welch SPOD for intermittent tones?**
  - Sieber pairs keep intermittent events together (p. 16–17). Welch spreads them over frequencies and sub-optimal modes.
  - Untested on jets. A comparison on the NPR 2.20 staging record of Mazharmanesh et al. 2026, with microphone wavelets as ground truth, would decide.
- **When can a POD-pair phase be trusted?**
  - Oberleithner et al. discard amplitude (p. 22). Yet the ring's width goes with a 27% spread in vorticity thickness (Weightman et al. 2018, p. 8), so phase bins pool snapshots of different amplitude and mean flow, and v-only POD hides that marker (p. 12–13). Beating can fake pairs (Wong et al. 2023, p. 16–17).
  - The cause is open. Weightman et al. read structure size as setting the thickness (p. 9), which their imposed-thickness synthetic test cannot decide (reading in that note). Nogueira et al. 2021 link the same mode to streaks that modulate KH (p. 11–13).
  - Simultaneous time-resolved schlieren and PIV would show where the pair phase departs from an SPOD or Hilbert phase. Phase averages within r₁₂ quintiles would show what pooling costs (suggestion in the Weightman et al. 2018 note).
- **When is imposing symmetry safe?**
  - Imposed symmetry speeds convergence (Yeung et al. 2022, p. 5, 8) but can hide a run that has not visited all its symmetric states (Berkooz et al. 1993, p. 550–551).
  - Twin jets are the risk: one jet can oscillate alone (Bell et al. 2021, p. 14–16, 23), and beating jets look coupled in both symmetries (Wong et al. 2023, p. 16–20). A C-mode jet whose helicity reverses often (Edgington-Mitchell 2023, p. 4) is the safe, ergodic case (reading in the Berkooz note).
  - Checking unconstrained modes run by run would show which case applies, notably for bistable or hysteretic runs.
- **POD-subspace or SPOD-frequency tone removal?**
  - Tan et al.'s N_M rule is visual, and since POD modes mix frequencies, the residual depends on it (Tan et al. 2017, p. 2326–2328; Towne et al. 2018, p. 8–9).
  - The alternatives are objective pairing (space-only HPOD, Davey's test) and, on time-resolved data, removing only the tone's SPOD modes (suggestions in the Tan note). Broadband length scales computed both ways on one schlieren or LES record would show whether they agree.
- **What are sub-optimal SPOD modes?**
  - Three readings: wavepacket jitter (Towne et al. 2018, p. 30), Orr packets (Schmidt et al. 2018, p. 7–8), or orthogonality artefacts (Schmidt & Colonius 2020, p. 8).
  - Settling this needs better-converged records and coloured-forcing models.

## Methods and data
- **Non-time-resolved PIV:**
  - snapshot POD, POD pairs and the r₁₂ test for unpaired modes;
  - POD-subspace tone removal;
  - sub-domain, conditional and symmetry-imposed POD;
  - space-only HPOD. Time-direction HPOD needs ordered snapshots.
- **Time-resolved schlieren, microphones, TR-PIV and LES:**
  - SPOD and its variants;
  - BMD and bicoherence;
  - DMD and Sieber SPOD.

  All of these need contiguous, uniformly sampled blocks. Multitaper and band-ensemble SPOD need one long record; Welch and streaming SPOD can pool runs.
- **Models:**
  - resolvent analysis of PIV or LES mean flows, compared mode by mode with converged SPOD. The Towne et al. 2022 database and the Ginzburg–Landau case (Towne et al. 2018, p. 22) are code benchmarks;
  - POD–Galerkin models, which need a closure and transfer poorly across parameters (Berkooz et al. 1993, p. 561–564).

## Relevance to our work
- **Step 2 for PIV.** Correlate r₁₂ with the first 20 coefficients before discarding low-energy modes, and report the POD variable and region (Weightman et al. 2018, p. 7, 12–13). Check unconstrained modes for symmetry before imposing it, and plan at least 3000 snapshots for broadband statistics (Tan et al. 2017, p. 2332).
- **Step 2 (SPOD and BMD).**
  - Long 150 kHz schlieren records support SPOD with hundreds of blocks and BMD at fine Δf (Mazharmanesh et al. 2026). The thesis schlieren (at most 102 frames; Weightman 2019, p. 24–26) does not.
  - For screech, choose N_FFT from a microphone PSD, and switch to band-ensemble or adaptive SPOD when tones, harmonics and broadband all matter.
  - Plot χ² bands, and compare eigenvalues only at equal Δf. These parameters belong in the metadata of SPOD files read by the SPODViewer (suggestion).
- **Step 3 (SPOD → reconstruction → HPOD).** The estimator decides what can be rebuilt (inferences in the variant notes):
  - Welch keeps block coefficients;
  - streaming discards them;
  - multitaper indexes realisations by taper, not by time;
  - band-ensemble keeps full-record Fourier coefficients.

  A1/A2 switching shows up as anticorrelated mode amplitudes, a fourth-order statistic that POD and SPOD eigenvalues cannot see, which is why this step is needed (inference in the Berkooz note). See [time-frequency-methods](time-frequency-methods.md).
- **Non-axisymmetric jets.** Split by D2 symmetry first, and use zero-weight sub-domains to find where a mode is born.
- **PyFR staging LES.** Untested suggestions in the notes:
  - streaming SPOD in situ, to save M3 storage;
  - DMD of transient segments, for the growth rates of the competing A1/A2 modes;
  - projecting each new NPR step onto the previous step's POD basis, where a sharp drop in captured energy would mark a change of state independently of the 1/t_switch fit (Berkooz note).
- **Rocket noise.**
  - The bispectrum integrates to skewness (Kim & Powers 1979, p. 122). BMD of near-field arrays could therefore map crackle-related skewness by frequency and position (inference in the Schmidt 2020 note).
  - POD-filtered PIV gives screech-free turbulence length scales for broadband source models (Tan et al. 2017, p. 2330–2332).

## Papers
- [Kim & Powers 1979](../Notes/kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions.md): bicoherence; ancestor of BMD.
- [Horel 1984](../Notes/horel-1984-complex-principal-component-analysis.md): complex PCA; frequency-domain PCA as proto-SPOD; degeneracy.
- [Sirovich 1987](../Notes/sirovich-1987-turbulence-dynamics-coherent-structures-part-i.md): method of snapshots.
- [Berkooz et al. 1993](../Notes/berkooz-1993-proper-orthogonal-decomposition-turbulent-flows.md): POD theory: optimality, span, Fourier modes in homogeneous directions, symmetry test of ergodicity, uncorrelated vs independent, conditional POD, LSE, POD–Galerkin models.
- [Rowley et al. 2009](../Notes/rowley-2009-spectral-analysis-nonlinear-flows-koopman.md): Koopman basis of DMD.
- [Schmid 2010](../Notes/schmid-2010-dynamic-mode-decomposition.md): founding DMD; subdomain and spatial DMD.
- [Oberleithner et al. 2011](../Notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md): POD-pair phase averaging of PIV.
- [Edgington-Mitchell et al. 2014](../Notes/edgington-mitchell-2014-coherent-structure-helical-screech-mode.md): first POD-pair triple decomposition of a screeching jet; origin of the group's v-only POD.
- [Sieber et al. 2016](../Notes/sieber-2016-spectral-proper-orthogonal-decomposition.md): time-domain SPOD.
- [Berry et al. 2017](../Notes/berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md): POD of time-resolved schlieren; aliasing, drift.
- [Taira et al. 2017](../Notes/taira-2017-modal-analysis-fluid-flows-overview.md): tutorial overview of all methods.
- [Tan et al. 2017](../Notes/tan-2017-broadband-velocity-fluctuations-screeching-jets.md): POD-subspace tone removal for PIV; 2 modes (C) against 18 (B); snapshot budget for residual statistics.
- [Edgington-Mitchell et al. 2018](../Notes/edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md): k_x split of a POD pair isolates the guided jet mode (not tagged).
- [Schmidt et al. 2018](../Notes/schmidt-2018-spectral-analysis-jet-turbulence.md): low-rank diagnostic; restricted SPOD; SPOD vs resolvent.
- [Towne et al. 2018](../Notes/towne-2018-spod-relationship-dmd-resolvent.md): SPOD theory; links to POD, DMD, resolvent.
- [Weightman et al. 2018](../Notes/weightman-2018-signatures-shear-layer-unsteadiness-pod.md): shear thickness mode; r₁₂ correlation test; dependence on POD variable and region.
- [Schmidt & Towne 2019](../Notes/schmidt-2019-streaming-spod.md): streaming SPOD.
- [Weightman 2019](../Notes/weightman-2019-sound-production-impinging-supersonic-jets.md): POD-pair practice; snapshot budget; phase averages.
- [Schmidt 2020](../Notes/schmidt-2020-bispectral-mode-decomposition.md): BMD.
- [Schmidt & Colonius 2020](../Notes/schmidt-2020-guide-spod.md): Welch SPOD guide.
- [Taira et al. 2020](../Notes/taira-2020-modal-analysis-applications-outlook.md): interpreting outputs; POD pair = DMD on limit cycles.
- [Kriegseis et al. 2021](../Notes/kriegseis-2021-hilbert-transform-revisited-hpod.md): time-direction HPOD merges POD pairs; needs ordered snapshots.
- [Nekkanti & Schmidt 2021](../Notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md): SPOD denoising; reconstruction (time-frequency page).
- [Bell et al. 2021](../Notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md): sub-domain and conditional PIV POD separate twin-jet coupling states.
- [Nogueira et al. 2021](../Notes/nogueira-2021-twin-jet-coupling-spatial-lsa.md): symmetry-imposed POD; shear thickness mode in twin jets (not tagged).
- [Towne et al. 2022](../Notes/towne-2022-database-reduced-complexity-modeling.md): benchmark database with SPOD/DMD/resolvent demos.
- [Yeung et al. 2022](../Notes/yeung-2022-3d-spod-twin-rectangular-jet.md): D2 split before 3-D SPOD.
- [Edgington-Mitchell 2023](../Notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md): planar PIV pairs could not prove helicity; helicity reversals (not tagged).
- [Wong et al. 2023](../Notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md): illusory coupling; scalogram-conditioned POD (not tagged).
- [Ivelja et al. 2024](../Notes/ivelja-2024-modal-analysis-screeching-elliptical-jets.md): v-only and symmetry-imposed POD pair, k_x split (not tagged).
- [Yeung & Schmidt 2024](../Notes/yeung-2024-adaptive-spod-broadband-tonal.md): adaptive multitaper SPOD.
- [Davey et al. 2025](../Notes/davey-2025-hpod-sphere-wake.md): POD pairing via spatial Hilbert transforms.
- [Mazharmanesh et al. 2025](../Notes/mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md): SPOD convergence by record doubling; cropped domains (not tagged).
- [Raiola & Kriegseis 2025](../Notes/raiola-2025-hilbert-pod.md): HPOD replaces POD pairs; space-only version.
- [Mazharmanesh et al. 2026](../Notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md): Shock Lab schlieren SPOD and mean-retaining BMD.
- [Suzuki et al. 2026](../Notes/suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md): D2 SPOD, zero-weight sub-domains, jackknife.
- [von Saldern et al. 2026](../Notes/von-saldern-2026-band-ensemble-spod.md): band-ensemble SPOD.
