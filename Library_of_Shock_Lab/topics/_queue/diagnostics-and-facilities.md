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
