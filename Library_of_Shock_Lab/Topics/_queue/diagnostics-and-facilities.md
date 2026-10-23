## wong-2020-azimuthal-decomposition-radiated-noise-shock-containing-jets (queued 2026-10-22)

This paper is the primary description and qualification of the group's SJAF anechoic chamber (p. 2016–2018, 2023–2025).
- **The chamber and rig.** The chamber is 1.5 × 1.2 × 1.4 m wedge tip to tip, with 400 mm wedges, a 500 Hz nominal cut-on and a lined floor. It runs continuously up to NPR 5 from a 5 m³ reservoir shared with the supersonic wind tunnel. NPR is set with a Fairchild 100 regulator and held to about ±1%. The nozzle is an 8 mm convergent with a 0.5 mm lip and a contraction ratio of 10.
- **Claim 4 needs qualifying.** It says "The group's jet rigs are not anechoic". That holds for the optical rigs (edgington-mitchell-2021-generation-screech-tones-shock-leakage, p. 4), but not for SJAF.
- **Cut-on and contraction.** SJAF's cut-on (500 Hz) is well above that of mayer-2019-bristol-aeroacoustic-wind-tunnel (160 Hz) and of the Syracuse and OSU rooms (150–160 Hz). Its contraction ratio (10) belongs in the page's contraction list, which has 81, 93 and >100 for the other group rigs. The edgington-mitchell-2021 note (p. 5) already suspects a thicker exit boundary layer in this nozzle.
- **Qualification.** An ISO 3745 inverse-square test used a 45 mm speaker at 500, 750, 5000 and 12 000 Hz along 60°, 90° and 140°, at about 12.5–75D (App. A, Fig. 7, p. 2024–2025). The paper calls it within tolerance except for slight deviations near the source at 140°, blamed on upstream piping (p. 2024).
- **The note's reading of the qualification.** Fig. 7 shows points out of tolerance at 12.5D (90°, 5 and 12 kHz) and 25D (140°, 12 kHz; 500 Hz off-scale). The test stops at 12 kHz, below the BBSAN band at roughly 15–74 kHz (derived with an assumed T₀ ≈ 293 K). The midfield ring at R ≈ 11–14D is therefore not formally qualified.
- **Acquisition practice** (p. 2018, 2024): G.R.A.S. 46BE 1/4-in. microphones; 2 s at 200 kHz; 80 kHz low-pass; mean and linear trend removed; N_fft 2048 with a Hann window; 974 blocks, which implies about 80% overlap (not stated); dB/St scaled with U_j/D_j.
- **Azimuthal method** (App. C, p. 2024–2026). One microphone is fixed and one is traversed in 10° steps over ±90°. Re and Im of R_pp are fitted with sinc-type forms and Fourier transformed in azimuth. It is a cheap alternative to an array (Suzuki & Colonius 2006). It assumes stationarity, so it cannot track switching in time, and the sinc fit shapes the modal spectrum (note's caution).
- **Re and later use.** Re is 2.8–4.5 × 10⁵, in the transitional range (p. 2018). Later group papers use this facility: wong-2021-wavepacket-modelling-bbsan, edgington-mitchell-2021-generation-screech-tones-shock-leakage, stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa and nogueira-2025-screech-military-style-rectangular-nozzles. The page could list it under "Anechoic facilities".

## bell-2018-coupled-underexpanded-supersonic-twin-jets (queued 2026-10-22)

Bell 2018 documents planar PIV of twin Mach-disk jets in the group's PIV enclosure (p. 2–4):
- **Parameters:**
  - jet and ambient seeded by one Viscount 1300 smoke generator;
  - Imperx B6640 camera at 19.9 µm/px;
  - Δt 0.9 µs, giving 0.5 px in the near field and 30 px in the core against a 0.1 px resolution floor;
  - about 9000 independent fields at 0.5 Hz;
  - multigrid correlation to "12 px" windows and a Chauvenet 3σ outlier filter.
- **Uncertainty.** Bootstrap 95 % intervals (B = 1000) on the axial rms are about ±2 % in the near field and largest upstream of the first shock (Figs 4–5, p. 4).
- **New failure mode for the page.** The grazing light sheet is diffracted by the first jet's Mach disk, so the second jet is lit inconsistently from snapshot to snapshot and its higher-order statistics are unreliable. Only the lower jet is analysed from Sect. 3.4 on (p. 5–9). Shock-generated fluctuations are put down to particle lag (Mitchell et al. 2011, p. 8).
- **Table 1 is internally inconsistent.** 12 px is 0.024D, not 0.032D, and 1092 × 726 vectors implies about 6 px spacing, not 8 px. Quote the resolution as about 0.012–0.016D vector spacing until checked.
- **Enclosure.** 60 × 60 × 200 D with untreated walls and a single microphone at 23D; not anechoic (p. 2–3). Bell 2021 later blamed these walls and the flush plenum face for the different state NPRs.
- **Fit with the page.** This agrees with current-understanding item 1 (group PIV is not time-resolved; Δt 0.48–1 µs; 8000–10000 snapshots) and item 4 (rigs are not anechoic). It adds the Mach-disk sheet diffraction as a twin-jet-specific caveat: light the jet of interest first, or check symmetry before using both jets.

## mitchell-2013-near-field-structure-underexpanded-elliptic-jets (queued 2026-10-23)

This is the "Mitchell et al. 2013, not in the library" source in the page's "group's smoke matches Ragni's DEHS" paragraph. Melling's relation gives 0.48 µs for the nominal 300 nm (Kn_d ≈ 0.4, eq. 1). Measured across the Mach disc of a strongly underexpanded **round** jet, **τ_p = 2.0 µs (≈ 600 nm)**, twice the nominal size, attributed to injecting the smoke into a mixing chamber (p. 4). The Stokes number is τ_p/τ_f ≈ 0.07 with τ_f ≈ 29 µs (smallest shock spacing over U_e, eq. 2), and SR ≈ 0.4 (eq. 3, p. 4–5).

**Table 2 (p. 5) is the full version** of the row the helical-mode paper adapts. The predicted artificial fluctuation behind the first shock is 1/2/4/5 % (monodisperse) or 1/3/7/8 % (log-normal) at NPR 2.2/2.6/3.4/4.2, against 2/2.5/7/10 % measured, so the NPR 4.2 measurement exceeds both predictions. The authors note the model is a lower bound (noiseless correlation, no peak broadening). Low SR gives one broad PDF peak across a shock rather than peak splitting (Fig. 4). The artefact behind a round-jet NPR 4.2 normal shock is +0.093U_e over ≈ 0.2d (Mitchell 2013 thesis, p. 6), the "≈ 0.2D" the page already quotes.

The note's tone-scale Stokes numbers for this elliptic database are 2πfτ_p ≈ 0.16, 0.13 and 0.10 at NPR 2.2, 2.6 and 3.4 (St 0.52, 0.38, 0.27). That puts them at or above the 0.1 guideline, alongside the page's 0.1 (C mode) and 0.2 (A modes) for round jets.

Two printing issues should be noted on the page:
- Eq. 3 is printed as ξ/IW, but Ragni's WS/ξ and the paper's own value fit IW/ξ.
- Fig. 3's time axis (0–0.5 µs, with the curve crossing a 0.63 line near 0.06 µs) does not display the stated 2.0 µs.

The value has been reused unchanged by every later group PIV paper, and the page's suggested oblique-shock test of the smoke would settle it.

Practice details: two PCO 4000 cameras stitched with an adaptive Gaussian window and 7.5 % overlap; 23 µm px⁻¹; 1.2 px particle images with little peak locking; MCCDPIV, 64 → 16 px windows, 50 % overlap; 1.5 mm sheet; 1,100 samples (p. 3, 5).

## weightman-2018-signatures-shear-layer-unsteadiness-pod (queued 2026-10-23)

This is the published source of the thesis PIV settings the page quotes: Imperx B6640, 11.8 µm/px, final window 24 px = 0.019D with 6 px (0.005D) spacing, ΔT = 884 ns, DOF 0.55 mm against a ≈ 1 mm sheet, 18 µm (1.5 px) particle images, ViCount smoke ≈ 600 nm from τ_p ≈ 2 µs (Mitchell et al. 2013; Melling 1997), 10,000 pairs, multigrid 192 → 24 px, median 3.0 / dynamic-mean 1.0 validation (p. 4–5, Table 2). These are consistent with the page's ranges (Δt 0.88–1 µs; windows 0.019–0.034D). The page's POD convergence paragraph cites the thesis §3.7; the article's own test is 200 random resamples at N = 100–5000, with < 1.7% (pair) and 2.6% (STM) 95% ranges at 5000 (p. 5, Fig. 4). The STM converges more slowly than the pair at every N ≥ 250. Caveat (note): "jackknife" here is random subsampling; if drawn without replacement from 10,000, the spread at N = 5000 is understated by ≈ √(1 − N/N_tot) ≈ 0.71, and E₉₅% is not defined as half or full width. Most importantly, the page states that "POD of the transverse velocity alone separates the pair more cleanly than POD of both components" (helical-mode paper, p. 834; Tan et al. 2017, p. 2325). This paper shows why, and its cost: the v basis suppresses the amplitude-linked STM (p. 12–14). Basis and ROI should therefore be reported with every POD energy, and (u, v) or u-only POD run before calling a flow a clean single-mode oscillation.

## krothapalli-1999-flow-field-noise-supersonic-impinging-jet (queued 2026-10-23)

- **PIV processing and seeding.** The FAMU–FSU mesh-free PIV of 1999: particle images as interrogation regions, and a second-order polynomial least-squares fit on scattered points with analytic gradients (eqs 2–3, p. 161–162). Δt = 2 µs, 15 Hz, 40 snapshots per condition (the authors call this insufficient for a true mean, p. 170), presented at 0.8 mm ≈ 0.03D_j spacing (p. 166).
  - Seeding is the reverse of [Henderson 2002](../Notes/henderson-2002-flow-structure-supersonic-impinging-jets.md): ≈ 1 µm oil in the jet and ≈ 5 µm fog-generator smoke in the ambient (p. 160). The note's Stokes estimates are τ_p ≈ 3 µs and ≈ 80 µs, so the ambient entrainment speeds (8–50 m s⁻¹) may lag.
  - Particle lag smears the stand-off shock (Fig. 13b, p. 172). Without shocks the mean exit velocity matches the isentropic value to ±1 % (p. 162).
- **Convection velocity from single snapshots.** C_i is taken from vorticity-identified structures in individual non-time-resolved snapshots (p. 166–167). This is a third estimator to set beside the POD-wavelength and LES x–t values whose 30–40 % disagreement the page discusses.
  - Its limits: it assumes the vortex moves at its centre velocity; the centre definition (peak or vorticity-weighted) is not stated; and there are no data within ≈ 1d of the wall (p. 167).
- **Acoustic environment.** A near-field microphone at 90°, 25 cm, with foam over nearby metal; the room is not anechoic (p. 160).
  - A flush 10d lift plate raises screech amplitude and turns a BBSAN hump into a tone, without changing St above NPR ≈ 3.3 (Figs 17–18, p. 174–175). The note's reading is that the plate does change the convergent nozzle's stage at NPR 2.9–3.3.
  - This is a facility-geometry effect of the same kind as the group's cross-facility discrepancies.
