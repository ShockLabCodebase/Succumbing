---
key: "lubert-2022-supersonic-jet-noise-launch-vehicles-review"
title: "Supersonic jet noise from launch vehicles: 50 years since NASA SP-8072"
authors: ["Lubert, Caroline P.", "Gee, Kent L.", "Tsutsumi, Seiji"]
year: 2022
type: "review"
venue: "JASA 151(2), 752–791"
bib: {"journal": "The Journal of the Acoustical Society of America", "volume": "151", "number": "2", "pages": "752--791"}
doi: "10.1121/10.0009160"
arxiv: ""
pdf: "rocket-noise-models/Lubert-EtAl_2022_Supersonic-Jet-Noise-From-Launch-Vehicles-50-Years-Since-NASA-SP-8072.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["none"]
methods: ["empirical-model", "vector-intensity", "beamforming"]
flow: ["rocket-plume", "launch-vehicle", "supersonic", "heated", "overexpanded", "impinging-jet"]
phenomena: ["mixing-noise", "Mach-wave-radiation", "directivity", "source-location", "acoustic-efficiency", "nonlinear-propagation", "noise-control"]
params: {}
topics: ["rocket-noise-models", "rocket-noise-measurements", "impinging-jets-and-edge-tones"]
related: ["mathews-2021-falcon-9-far-field-noise", "james-2012-directivity-curves-rocket-noise-model", "gee-2016-near-field-intensity-static-rocket-firings", "kenny-2009-space-shuttle-srm-plume-acoustics", "casalino-2009-hybrid-empirical-caa-rocket-noise", "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "tsutsumi-2015-epsilon-liftoff-acoustics", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn"]
cites: ["casalino-2009-hybrid-empirical-caa-rocket-noise", "gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft", "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "henderson-2002-flow-structure-supersonic-impinging-jets", "kandula-2005-near-field-acoustics-clustered-rocket-engines", "kenny-2009-space-shuttle-srm-plume-acoustics", "mathews-2021-falcon-9-far-field-noise", "mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "panda-2013-noise-sources-rocket-test-firings-launch-phased-array", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "ranow-2021-acoustic-prediction-rocket-flame-deflector", "schmidt-2018-spectral-analysis-jet-turbulence", "taira-2017-modal-analysis-fluid-flows-overview", "taira-2020-modal-analysis-applications-outlook", "tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "towne-2018-spod-relationship-dmd-resolvent", "tsutsumi-2015-epsilon-liftoff-acoustics"]
summary: "Rocket-noise review 50 years after SP-8072: η≈0.5%, source 17–22 D_e (SP-8072 curve wrong), Oertel-M_c directivity ~65°; no screech, BBSAN or impingement tones at full scale"
---
# Supersonic jet noise from launch vehicles: 50 years since NASA SP-8072

- **Authors:** Caroline P. Lubert (James Madison Univ.; partly at Univ. of Plymouth), Kent L. Gee (Brigham Young Univ.), Seiji Tsutsumi (JAXA)
- **Source:** J. Acoust. Soc. Am. 151(2), 752–791 (2022), review article in the JASA Special Issue on Supersonic Jet Noise. Received 26 Mar 2021, published online 4 Feb 2022. doi:10.1121/10.0009160
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Lubert-EtAl_2022_Supersonic-Jet-Noise-From-Launch-Vehicles-50-Years-Since-NASA-SP-8072.pdf` (41 pp.). PDF p. 1 is a publisher cover sheet. **Page refs below are PDF pages; journal page = PDF page + 750** (e.g. p. 14 = JASA p. 764). PDF pp. 35–41 are the reference list.
- **Tags:** rocket noise, launch vehicle acoustics, NASA SP-8072, DSM-1/DSM-2, acoustic radiation efficiency, sound power, Mach wave radiation, convective Mach number, Oertel convective Mach number, peak directivity, source location, near-field vector intensity, acoustical holography, beamforming, nonlinear propagation, acoustic shocks, similarity spectra (LSS/FSS), clustered nozzles, plume shielding, impinging supersonic jet, flame deflector, flame duct, launch platform, water injection, subscale testing, LES/CAA of launch pads, reduced-order models, wavepackets, SPOD, resolvent, review

## Summary
A review of what has been learned since Eldred's 1971 NASA SP-8072, the empirical distributed-source model that still underpins most launch-vehicle liftoff noise prediction (p. 2, 4). The paper is organised around free-plume noise (how much sound, what kind, where it comes from, where it goes; Sec. III), impinging-plume noise on deflectors (Sec. IV), pad noise mitigation (deflector, flame duct, launch platform, water injection; Sec. V) and modelling (SP-8072 and its derivatives, subscale testing, LES/CAA, ROMs; Sec. VI). Its main physics messages are that rocket noise is dominated by Mach wave radiation from turbulent mixing, with peak directivity set by an (Oertel) convective Mach number, that the noise originates around 17–22 D_e downstream (not in the subsonic plume as SP-8072 assumes, owing to a propagated plotting error in Potter 1968), and that screech, impingement tones, BBSAN and spatiospectral lobes are not seen in full-scale rocket data (p. 9, 12–16). Impinging-jet noise sources are known mainly from cold Me 1.8–2.0 lab jets on inclined plates plus LES, which identify five wave types (p. 17–19). The authors conclude that ad hoc SP-8072 corrections are a dead end and call for a new physics-based model built on near-field measurements, high-fidelity CFD and wavepacket/SPOD/resolvent-type ROMs (p. 27, 31–33).

## Key findings
### Context and scale of the problem (Sec. I)
- Liftoff is the most severe vibroacoustic (VAL) environment for most spacecraft: the M-V solid launcher reached OASPL 158 dB outside and 144 dB inside the fairing; Shuttle peak vibration occurred ~5 s after SRB ignition (~90 m altitude), above transonic/Max-Q levels (p. 3, Fig. 2).
- Payload-bay noise causes up to 60% of satellite first-day failures, and up to 40% of satellite mass can be devoted to surviving VAL (p. 3).
- Saturn V first-stage static fires reached OAPWL 204 dB (p. 4). SP-8072-derived OASPL errors exceed 10 dB at some angles (Fukuda et al. 2009) and SP-8072 underestimates high-frequency levels (Park 2019) (p. 4). McInerny's Shuttle data disagree with SP-8072 sound-power spectra (Fig. 3, p. 4).
- Orbital launches planned for 2022 exceed 200 (p. 5, Fig. 4).

### How rockets differ from other jets (Sec. II)
- Table I (p. 6): rocket plume static temperature 1350–2200 K, exit velocity 2400–4000 m/s, M_e ≈ 3.2–4.7, against M_e ≈ 1.5–1.8 (turbojet) and 2.0–2.3 (afterburning). See the Table I caveat below on M_a.
- Most rockets are **overexpanded at sea level** (optimised for altitude); the Shuttle RSRM was slightly **underexpanded**; RS-25 plumes show a Mach disk and contraction (p. 6, Figs. 6–7). Appendix B quantifies M_j/M_e and D_j/D_e (p. 34).
- Launch pads add a deflector, flame duct, launch platform with exhaust hole and umbilical tower; as the vehicle rises the dominant source moves from the flame duct (deflector impingement, wall plume) to above the platform (free-plume Mach waves, plume–platform interaction) (p. 7, Fig. 8).

### Free-plume noise (Sec. III)
- **Sound power:** rockets follow W ∝ U_e³ rather than Lighthill's U_e⁸ (Chobotov & Powell 1957; Ffowcs Williams 1963) (p. 7–8, Fig. 9). Via W = ηW_m with W_m = ½TU_e, the radiation efficiency η ≈ 0.5% is the accepted value (Guest 1964; Lighthill's upper bound 0.6%) (p. 8). Modern estimates: RSRM 0.43%, Orion 50S XLG ≈0.4%, Falcon 9 0.34%, so SP-8072's assumed 1% is overly conservative; ground reflections remain a source of uncertainty (p. 8, Fig. 10).
- **Max OASPL:** McInerny (1996a) formula, Eq. 2 with an 8 dB peak directivity factor; it and the Greska et al. (2008) curve match Falcon 9 data at 8 km within ~2 dB (p. 8–9).
- **Noise components:** mixing noise (large-scale, fine-scale, Mach wave) plus shock-associated noise (BBSAN, screech). Rocket spectra at sideline/forward angles **do not show BBSAN**, possibly because BBSAN saturates with stagnation temperature and Mach wave generation is so efficient; the review therefore treats only mixing noise (p. 9).
- **Spectra:** RSRM at 80 D_e: one-third-octave peak 16 Hz at 45°, ~100 Hz at 125° (p. 9, Fig. 11). Tam et al. (1996) LSS fits the 45° peak only, and FSS fits 125° only at low frequency; measured slopes are shallower. Several groups find LSS/FSS unsuitable for rockets (p. 10).
- **Nonlinearity:** acoustic shocks appear at all angles; shock-laden waveforms give an f⁻² spectral slope, close to that measured at 45° and 85° (p. 10). Whether far-field shocks are radiated as shocks or form by steepening is unresolved (p. 10).
- **Frequency scaling:** rocket sound-power spectra peak at Sr = fD_e/U_e ≈ 0.02–0.025, against ≈0.2 for lab supersonic jets; RSRM at 45°: 16 Hz → Sr ≈ 0.025, He = fD_e/c_a ≈ 0.18, Cole's fD_e/c_e ≈ 0.08 (p. 10). The physical reason for the order-of-magnitude shift is "still unclear" (p. 10). Eldred's (1959) throat-based Sr* (Eq. 3) looks most promising for collapsing lab, turbojet and rocket spectra, with peaks near Sr* ≈ 0.3 (p. 10–11, Fig. 12).
- **Clustered nozzles:** Tedrick (1964): Saturn S-1 eight-engine cluster (≈1 D_e spacing) and a single F-1 with the same 6.7 MN thrust gave nearly identical power and spectra, which justifies SP-8072's single-equivalent-nozzle approach (p. 11). Wider spacing can give two spectral peaks (Kandula 2008a two-zone method) (p. 11). Twin-jet coupling/screech work is of unclear relevance "because screech is not observed in launch vehicle measurements" (p. 11). Plume shielding: Kantola 2–4 dB, Bozak 1.0–1.4 dB, Pineau & Bogey (2021b; twin Mach 3.1 heated jets) ≤2 dB, giving ~2–3 dB azimuthal asymmetry (p. 11–12).
- **Source location:** max OASPL originates **17–20 D_e** downstream for rockets of all sizes, against ~6–15 D_e (holography) or ~8 D_e (near field) for afterburning fighters (p. 12). Potter's (1968) Mach 2.5 cold N₂ power-per-unit-length curve contains a plotting error that propagated through SP-8072 into "literally, every study that has repeated the Eldred curve", wrongly putting the dominant source in the subsonic plume (p. 12–13, Fig. 13; Gee 2021). Core lengths for rockets are poorly defined: L_c 16–25 D_e and L_s 25–35 D_e (McInerny 1996a); for RSRM L_c 7–15 D_e and L_s 31–37 D_e (p. 13).
- **Source measurement:** near-field vector intensity is the only array method yet applied to full-plume rocket source characterisation (GEM-60, 880 kN, D_e 1.09 m; Fig. 14); beamforming has been used on pad environments, not plumes (p. 13). Intensity gives ~22 D_e at Sr ≈ 0.025, starting from Sr ≈ 0.013 (30 Hz), and little justification for sources beyond 40 D_e (p. 13–14, Fig. 15).
- **Peak directivity:** SP-8072 says ~50°; modern view is Mach wave radiation with θ_pk = cos⁻¹(1/M_c) (Eq. 4), where the Oertel convective Mach number (Eq. 6) works best (p. 13–14). Rocket parameters give 62–72° (p. 14). Recentring the RSRM 80 D_e polar array on a 17 D_e source shifts peak directivity from 53° to **65°**, matching the Oertel M_CO; Bassett et al. (2021) confirm ~65° for GEM-63; equivalent κ ≈ 0.32 in Eq. 5 (Falcon 9: 0.31) versus 0.6–0.85 for lab jets; 3 dB-down lobewidth ≈35° (p. 14–15, Fig. 16). Falcon 9: static prediction 69°, measured 63–64° after trajectory correction, consistent with a flight-reduced M_CO (p. 15, Fig. 17). The historical 70–80° launch maxima of Cole et al. (1957) remain unexplained (p. 15).
- **Frequency-dependent directivity:** peak angle rises and the pattern broadens with frequency; high-frequency radiation from solid motors reaches >80°, which existing directivity indices (capped ~65°) miss. Nonlinear propagation may narrow high-frequency patterns around θ_pk against atmospheric absorption (p. 15–16).
- **Spatiospectral lobes** seen in military jet noise have not been found in rocket data, perhaps because arrays were too coarse (p. 16).

### Impinging-plume noise (Sec. IV)
- **No impingement tones** in rocket data: lab supersonic impinging jets show strong tones (Krothapalli 1999; Henderson 2002, 2005; Edgington-Mitchell 2019), but Epsilon launch data (boom mic, nozzle 8.7 D_e above pad at 1.5 s) show none; STOVL aircraft likewise. Proposed reason: intense broadband mixing noise masks them; pad geometry may also suppress them (p. 16–17, Fig. 18).
- SP-8072 models impinging plumes as centreline monopoles along free and wall plumes with reduced efficiency but unchanged spectra and directivity; Potter & Crocker (1966) superpose pre- and post-impingement fields (p. 17).
- Lab/LES canonical case: ideally expanded cold M_e 1.8 or 2.0 jet on a 45° plate 5 D_e downstream (p. 17). **Five acoustic wave types** (p. 18, Fig. 20): (a) Mach waves from the free jet; (b) Mach waves from the supersonic wall jet; (c) impingement-region waves from shear-layer vortices interacting with the plate shock (or vortex distortion); (d) waves from wall-jet vortex/tail-shock interaction, BBSAN-like, one per tail shock; (e) waves from a separation bubble/separation shock.
- Analysis tools used: causality method (Lighthill-based), POD, acoustic-triggered conditional sampling; Kurokawa et al. (2020) 2D Euler with a pulsed shear-layer disturbance found four wave types, two from the ends of the deforming plate shock (p. 18–19).
- Directivity (Tsutsumi 2014 LES, Fig. 21): 4 kHz (Sr ≈ 0.17) wall-jet Mach waves at θ ≈ 75°; 8 kHz (Sr ≈ 0.34) add impingement-region waves at ~120°; 16 kHz (Sr ≈ 0.67) add ~150°; 32 kHz no distinct directivity (p. 19).
- Nozzle–plate distance h = 5–25 D_e (Akamine 2015, 2018): upstream OASPL (R/D_e = 40, θ = 120°) peaks at **h = 15 D_e**, because free-jet Mach waves reflect off the plate back upstream (ray-traced intensity at Sr ≈ 0.54, Fig. 22). So free-plume Mach-wave reflection matters more than impingement sources, and reducing reflections from pad structures is key (p. 19–20).

### Mitigation (Sec. V)
- Nozzle-shape modifications are hard to apply to rocket engines, so mitigation is at the pad (p. 20).
- **Deflector:** lowering plate inclination (45° → 14°) weakens plate and tail shocks, leaving mostly free/wall-jet Mach waves (Fig. 23). A gently curved section avoids separation and tail shocks; a gradient-optimised tail-shock-free deflector (Tsutsumi 2014), plus GA-optimised shapes (Tatsukawa 2016 with LES; Park 2018 with SP-8072) (p. 20–21).
- **Flame duct:** Ariane 5 1/47 scale: extending 10, 15, 30 m cut the 31.5 Hz octave by 4, 5, 8 dB (confirmed in flight); Titan III 1/33: no gain beyond ~15 D_e. Covering the duct: only 1–2 dB below 150 Hz (VEGA). Single vs double ducts: no difference (Gely 2005) versus 6.4–8.9 dB (Xing 2020 CFD), unresolved. Epsilon: a laterally widening duct was worst, a constant-section duct 2.9 dB better than none (beamforming) (p. 21–22, Fig. 24).
- **Launch platform:** H-IIA LES: worst vehicle level at h/D_e ≈ 16 from free-plume Mach waves plus platform interaction (Fig. 25). Covering VEGA platform openings: 1.5–2 dB. Exhaust hole 4 D_e ≈2 dB quieter than 2–3 D_e (at 20 D_e); an optimum hole size is suggested but not found. Vehicle drift onto the platform adds a source (p. 22–23).
- **Water injection:** Shuttle 4 dB OASPL at 200% of propellant mass flow, 8 dB at 500%; rainbirds give 2–3 dB; SLS recommends ~350%, with diminishing returns beyond that. Mechanisms: momentum/heat exchange reducing velocity and turbulence, and droplet scattering/absorption. Best when water just enters the shear layer; deep penetration creates a new source. Droplet effects are exaggerated in subscale tests (p. 23–25, Figs. 26–27). Lab: Krothapalli (2003) 17% mass flow → 2–6 dB (p. 23).
- **Other:** perforated platform plates (M_e 2 cold jet), acoustic liner (−10 dB for M_e 1.3 jet on a plate at 3 D_e), absorbers on duct walls; nozzle start-up separation (FSS/RSS/end-effects regime) causes flapping and base loads, reduced by staggered starts (p. 25).

### Modelling (Sec. VI)
- **SP-8072 pipeline** (p. 25–26): η (≈0.5%) → OAPWL → distribute along plume (DSM-1: each Sr band from one discrete plume slice, using the erroneous Potter curve; DSM-2: slices radiate all frequencies, scaled by an empirical core length, puts Sr 0.025 sources at ~50 D_e) → frequency-dependent directivity index DI(f, θ) assuming incoherent, linearly propagating sources and no ground reflection → log-sum. Impingement handled ad hoc (open scoop / closed bucket curves; Haynes & Kenny 2009 shortened-core fix) (p. 26).
- **Derivatives:** Varnier (2001) core length (probably biased by limited data and the erroneous curve), Casalino et al. (2009) SP-8072 + CFD/CAA hybrid with pad reflections (VEGA), Plotkin et al. (2009), Kumar & Karthikeyan (2013, water and 3D deflector), Park (2017, 2019, diffraction/reflection/impingement source). All are ad hoc and not transferable; the authors state it is "no longer appropriate" to base predictions on SP-8072 (p. 27).
- **Other empirical:** Kenny & Giacomoni (2014) two-source (directional θ < 80°, broadband θ → 80°) Tam-style model fitted to five horizontal static firings, within ~5 dB for 30° ≤ θ ≤ 160°, worse for liquid engines (p. 27–28). Kandula (2008b) generalised similarity spectrum with M_c and θ (p. 29).
- **Subscale testing:** Bies & Franken (1961) similarity criteria; Table II lists campaigns at 1/15–1/100 scale; most lab work uses cold jets, which only give order-of-magnitude trends (p. 28–29).
- **High-fidelity numerics** (p. 29–31): LES for VEGA, SLS, Ares I, H-IIA, M-V, Epsilon, H3 and a 20-engine vehicle. Methods: 5th-order WENO (VEGA, Palmieri 2017 / LAVA), 6th-order compact with 2nd-order shock regions (Tsutsumi, Epsilon/H3), high-order DG (SLS, Ares I); Brès & Lele (2019) Voronoi-mesh wall-modelled LES singled out. Multi-species frozen-flow N–S. Wall treatment by SAS, hybrid RANS/LES or immersed boundary. Rocket noise propagates nonlinearly, so CAA uses full Euler with one-way CFD→CAA coupling; Langenais et al. developing two-way coupling. Water–mixing-noise interaction simulated only by Salehian & Mankbadi (2020) (p. 31).
- **ROMs** (p. 31–32): data-driven wavepacket models fitted to array/holography data (Wall et al. 2018 partial fields → analytical wavepackets; more wavepackets needed as coherence length shrinks, Fig. 31); DMD and SPOD flagged as candidates; model-based: resolvent analysis, momentum potential theory (Doak; Unnikrishnan & Gaitonde), generalised acoustic analogy on RANS (Afsar 2019). **None yet applied to rocket plumes** (p. 32).

### Conclusions and appendices
- Open questions: free-plume source power distribution, spectra and spatial correlation; per-source power/directivity of impingement waves; transferability of lab impinging-plate results and of pad-specific mitigation (p. 32–33).
- Appendix A (p. 33–34): VAL, ignition overpressure (~10 kPa), environmental/sonic boom, measurement techniques (James 2020 protocols for Falcon 9/Heavy, Antares, Delta IV Heavy), infrasound (Saturn V heard ~1500 km away), buffet (<60 Hz bending).
- Appendix B (p. 34): exit vs fully expanded conditions (see Data tables).

## Setup / method
A narrative review; no new experiments. The map below lists sections, page ranges and the core references for each, so the note can serve as a guide to the rocket-noise literature.

| Section | Pages | Core references to chase |
|---|---|---|
| I. Intro, SP-8072 history | 2–5 | Eldred 1971 (SP-8072); McInerny 1990, 1992b; Lubert 2018 review; Himelblau 2001 |
| II. Supersonic jets vs rockets | 5–7 | Tam 2009; Viswanathan 2002, 2009; Oertel 1982; Table I from McInerny 1992b, 2010 |
| III A. Sound power, OASPL_max | 7–9 | Chobotov & Powell 1957; Guest 1964; Sutherland 1993; McInerny 1996a; Greska 2008; Mathews 2021 |
| III B. Spectra, nonlinearity, scaling, clusters | 9–12 | Tam 1996, 2008 similarity spectra; McInerny 1996b; Gee 2013a; Muhlestein 2012; Potter & Crocker 1966; Tedrick 1964; Kandula 2008a; Pineau & Bogey 2021b |
| III C. Source location | 12–14 | Potter 1968; Gee 2021 (plotting error); Gee 2013b, 2016b; James 2014b; Varnier 2001 |
| III D. Directivity | 13–16 | Greska 2005 (M_CO); James 2014b; Bassett 2021; Mathews 2021; Haynes & Kenny 2009; Leete 2021 (lobes) |
| IV. Impinging plumes | 16–20 | Nonomura & Fujii 2010; Tsutsumi 2014; Akamine 2015, 2018, 2021; Brehm 2016; Kurokawa 2020; Jiang 2019 review |
| V. Mitigation | 20–25 | Gely 2000, 2005; Malbequi 2017; Ishii 2012; Tsutsumi 2008a, 2015c; Counter & Houston 2011, 2012; Houston 2015; Panda & Mosher 2013 |
| VI A. SP-8072 and derivatives | 25–28 | James 2014a; Casalino 2009; Plotkin 2009; Park 2019; Kenny & Giacomoni 2014; Ranow 2021 |
| VI B. Subscale testing | 28–29 | Bies & Franken 1961; Nesman 2017; Kandula 2008b; Table II |
| VI C. Numerical methods | 29–31 | Palmieri 2017; Tsutsumi 2015b, 2019; Harris 2015/16; Liever 2017; Brès & Lele 2019; Langenais 2019; Xing 2020 |
| VI D. ROMs | 31–32 | Jordan & Colonius 2013; Wall 2018; Schmidt 2018; Towne 2018; Unnikrishnan & Gaitonde 2016, 2020; Afsar 2019 |
| VII + App. A/B | 32–34 | James 2020 (measurement protocols); Varnier 2001 (fully expanded conditions) |

**Methods and their data needs (as reviewed):**
- *Polar far-field arrays* (time-resolved pressure): give OASPL/spectra/directivity, but the array origin must be at the apparent source (~17 D_e), not the nozzle exit, or peak angles are biased aft (p. 14).
- *Near-field vector intensity* (multi-mic probes, time-resolved, frequency-domain processing): ray-traced source region per frequency (p. 13).
- *Beamforming / acoustical holography* (time-resolved, spatially dense arrays): source maps and partial-field wavepacket fits; applied to pads (beamforming) and to tactical engines (holography) but not rocket plumes (p. 13, 31).
- *Waveform statistics* (time-resolved): acoustic shocks, derivative statistics, joint time–frequency analysis of shocks (Xu 2004, 2005) (p. 10).
- *Impinging-jet analysis* (from LES or high-speed data): POD, causality correlation, acoustic-triggered conditional sampling, octave-band filtering of near-field pressure, ray tracing of intensity vectors (p. 18–19).
- *Proposed ROM tools:* SPOD, DMD (need time-resolved data or LES), resolvent and MPT (need a mean flow, e.g. RANS) (p. 31–32).

## Key equations
(Rebuilt from the rendered pages 8, 10 and 14.)
- Acoustic power from mechanical power (Eq. 1, p. 8): $W=\eta W_m$, with $W_m=\tfrac12 T U_e$ and $T\propto U_e^2$, so $W\propto U_e^3$. Accepted η ≈ 0.5%.
- Max OASPL (Eq. 2, p. 8; McInerny 1996a): $\mathrm{OASPL}_{max}=\mathrm{OAPWL}-10\log_{10}(4\pi R^2)+8$ dB (8 dB = peak directivity factor from Cole et al. 1957; McInerny 1992b used 5 dB).
- Eldred (1959) frequency scaling (Eq. 3, p. 10): $Sr^{*}=\dfrac{fD_t}{c_a}\left[\left(\dfrac{2}{\gamma+1}\right)^{\gamma/(\gamma-1)}\dfrac{p_0}{p_a}\right]^{1/2}$; supersonic-jet power spectra peak near $Sr^*\approx0.3$ (p. 11).
- Peak Mach-wave angle (Eq. 4, p. 14): $\theta_{pk}=\cos^{-1}(1/M_c)$, θ from the downstream plume axis.
- Empirical convective Mach number (Eq. 5, p. 14): $M_c=\kappa U_e/c_a$, κ ≈ 0.6–0.85 for lab jets; ≈0.31–0.32 fits rockets (p. 15).
- Oertel convective Mach number (Eq. 6, p. 14; Greska 2005): $M_{CO}=\dfrac{U_j+0.5c_j}{c_a+c_j}$.

> Check: RSRM at 45°, D_e = 3.80 m, U_e ≈ 2500 m/s, 16 Hz: Sr = 16·3.8/2500 = 0.024 and He = 16·3.8/343 = 0.18, matching p. 10. θ_pk = 65° gives M_c = 2.37, and with U_e/c_a ≈ 7.3 this gives κ ≈ 0.32, consistent with p. 15. Footnote 5 (p. 34): Potter & Crocker used throat total pressure in Eq. 3, equal to p₀ for frozen, calorically perfect flow; footnote 6: McInerny (1992b) dropped the square root.

## Data tables
**Table I (p. 6): representative exhaust parameters** (from McInerny 1992b, 2010)

| Engine | Static T | Exhaust density | Exhaust velocity | c in exhaust | M_e = U_e/c_e | M_a = U_e/c_a |
|---|---|---|---|---|---|---|
| Turbojet, military power | 600–700 K | 0.3–0.5 kg/m³ | 700–800 m/s | 450–500 m/s | ~1.5–1.8 | ~2.0–2.4 |
| Afterburning turbojet | 1200–1600 K | – | 1000–1200 m/s | 700–800 m/s | ~2.0–2.3 | ~2.9–3.5 |
| Rocket | 1350–2200 K | 0.14 kg/m³ | 2400–4000 m/s | 780–960 m/s | ~3.2–4.7 | ~7–11.8 |

> The 0.14 kg/m³ density sits in the rocket row in the rendered table; the afterburning density cell is blank. The text (p. 6) says rocket M_a is "typically between 7 and 8" and that jets are 2.0–2.4, whereas the table gives ~7–11.8; also 2400–4000/(780–960) gives ~2.5–5.1, not exactly 3.2–4.7. Verify against the PDF before quoting.

**Key numbers by vehicle/motor**

| Item | Value | Page |
|---|---|---|
| η: RSRM / Orion 50S XLG / Falcon 9 | 0.43% / ≈0.4% / 0.34% | 8 |
| Max-OASPL source location (rockets) | 17–20 D_e (RSRM ~17 D_e) | 12–13 |
| Intensity-derived source at Sr 0.025 (GEM-60) | ~22 D_e; none beyond ~40 D_e | 13–14 |
| RSRM peak directivity, nozzle-origin vs 17 D_e origin | 53° → 65° (80 D_e array) | 14–15 |
| Falcon 9 peak directivity: static prediction vs measured | 69° vs 63–64° | 15 |
| Rocket peak power-spectrum Strouhal | Sr ≈ 0.02–0.025 (lab supersonic ≈ 0.2) | 10 |
| Twin-jet shielding | 1–4 dB (Kantola, Bozak, Pineau & Bogey) | 11–12 |
| Shuttle water injection | −4 dB at 200%, −8 dB at 500% propellant mass flow | 23 |
| Rainbirds (above-deck) | 2–3 dB | 23 |
| Ignition overpressure | ~10 kPa | 33 |

**Appendix B (p. 34): exit vs fully expanded conditions**

| Motor/engine | D_e | M_e | M_j/M_e | D_j/D_e | Expansion state |
|---|---|---|---|---|---|
| Shuttle RSRM | 3.80 m | 2.95 (area ratio 7.72, γ_e = 1.14) | 1.04 | 1.10 | slightly under |
| Epsilon motor, 1:42 model | 42 mm | 3.7 | 0.89 | 0.75 | over |
| RS-25 (Shuttle/SLS) | 2.29 m | 4.7 | 0.80 | 0.52 | strongly over |

**Table II (p. 29): recent subscale campaigns** (M = mitigation, Q = quantification), condensed from the rendered table: VEGA 1/33 (pad, M) and 1/20 (Q) (Gely 2005), 1/20 (surface loads, Casalino 2012); Orion (vibration response, Houston 2016); Ariane 5 1/20 (fairing, Varnier 1996), 1/47 (water and pad, Gely 2000), 1/20 (Troclet 1995); Ariane 6 1/40 (source localisation, Malbequi 2017); Ares I 1/20 and SLS 1/20 (liftoff environment and above-deck water; Counter & Houston 2012; Houston 2015); Space Shuttle ~1/15 (Guest & Jones 1976; Dougherty & Guest 1984); Indian launch system 1/100 hot jet (Ignatius 2015); Epsilon 1/42 (Tsutsumi 2015a,b); H3 1/42 (Sarae 2016).

> The text extraction misaligned Table II's scale column; values above are read from the rendered page.

## Figures worth remembering
- **Fig. 5 (p. 5):** supersonic jet anatomy with potential core L_c and supersonic core L_s.
- **Fig. 8 (p. 7):** liftoff noise mechanisms versus vehicle elevation (flame duct → above-platform sources).
- **Fig. 9–10 (p. 8):** OAPWL versus jet velocity (U⁸ vs U³) and versus mechanical power with constant-η lines, including RSRM.
- **Fig. 11 (p. 9):** RSRM waveforms (acoustic shocks) and one-third-octave spectra at 45°, 85°, 125° with LSS/FSS fits.
- **Fig. 12 (p. 11):** lab, turbojet and rocket power spectra collapsed with Eldred's Sr*.
- **Fig. 13 (p. 12):** Potter's power-per-unit-length curve as drawn by Eldred (SP-8072, erroneous) and Nagamatsu.
- **Fig. 14–15 (p. 13–14):** GEM-60 near-field intensity source map, and apparent source location versus Sr against SP-8072 curves.
- **Fig. 16–17 (p. 15):** RSRM OASPL directivity as measured and recentred (53° → 65°); Falcon 9 relative OASPL directivity.
- **Fig. 18 (p. 16):** Epsilon launch pad and boom-mic spectrum with no impingement tone.
- **Fig. 19–20 (p. 17–18):** LES of free vs impinging M_e 1.8 jet; schematic of plate shock, tail shocks, separation bubble and wave types (a)–(e). The most useful single figure for impinging-jet noise sources.
- **Fig. 21–23 (p. 19–20):** octave-band SPL fields; ray tracing for h = 5 vs 15 D_e; 45° vs 14° plate.
- **Fig. 24–25 (p. 22):** Epsilon flame-duct configurations; H-IIA platform acoustic waves versus elevation.
- **Fig. 27 (p. 24):** Shuttle above-/below-deck water systems.
- **Fig. 29–30 (p. 30):** VEGA and Epsilon CFD/CAA fields.
- **Fig. 31 (p. 32):** holography partial fields fitted with analytical wavepackets (Wall et al. 2018).

## Notation
- D_e, D_t, D_j: exit, throat and fully expanded diameters. U_e, c_e: exit velocity and sound speed; c_a: ambient sound speed; c_j, U_j: fully expanded values.
- M_e = U_e/c_e; M_a = U_e/c_a; M_j: fully expanded Mach number; M_c = κU_e/c_a; M_CO: Oertel convective Mach number.
- Sr = fD_e/U_e; He = fD_e/c_a; Sr*: Eldred throat-based scaling (Eq. 3).
- θ: polar angle from the downstream plume axis; φ: azimuth about the vehicle; h: vehicle elevation (nozzle exit to pad/plate); R: radial distance.
- W, W_m: acoustic and mechanical power; η: radiation efficiency; T: thrust; OAPWL re 1 pW; OASPL re 20 µPa.
- L_c, L_s: potential and supersonic core lengths. DSM-1/2: SP-8072 distributed source methods; DI(f, θ): directivity index.
- LSS/FSS: large/fine-scale similarity spectra. VAL: vibroacoustic loading; IOP: ignition overpressure; EER: end-effects regime; PF: partial field; MPT: momentum potential theory.

## Relevance to this project
This project studies supersonic jet resonance and feedback (screech, impinging jets) with schlieren, acoustics and PIV, analysed by SPOD/BMD/HPOD (see CLAUDE.md). This review is the entry point to the rocket-noise batch; the sibling notes cover the primary sources it cites.
- **Impinging jets and the feedback loop:** the lab impinging-jet tone literature (including Edgington-Mitchell 2019) is cited, but the review stresses that **impingement tones and screech are absent from full-scale rocket data** (p. 11, 16). That makes "why does the feedback loop not close for hot, Mach 3–5, highly overexpanded plumes on deflectors?" an open question linking the user's resonance work to launch noise. Candidate reasons from this project's notes: guided-jet-mode closure needs the upstream neutral mode to exist in a band that matches the KH frequency, which depends on M_j and temperature ([edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md)); the stand-off shock/plate geometry sets the acoustic path in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md). The review offers only masking by mixing noise and pad geometry as explanations (p. 16–17); that is its own conjecture, not tested.
- **Impingement wave taxonomy (Fig. 20):** waves (c)–(e) (plate shock–vortex, tail shock–vortex, separation shock) parallel the stand-off-shock leakage and wall-jet shocklet mechanisms in Weightman's thesis; the review's cases are inclined plates at 45°/14° and h = 5–25 D_e, ideally expanded and cold, unlike Weightman's normal impingement at NPR 3.4–3.6. Wave (d) is described as BBSAN-like, linking to the user's BBSAN interest.
- **Methods for time-resolved data:** the impinging-jet studies use POD, causality correlation and conditional sampling on LES; the review flags SPOD and DMD as candidate data-driven ROMs and resolvent/MPT as model-based ROMs, none yet applied to rocket plumes (p. 31–32). High-speed schlieren of a scaled hot or cold impinging rocket-like jet, analysed with SPOD (and BMD for the shock–vortex interactions that make waves c–e), is a natural contribution. SPOD-filtered reconstruction plus HPOD could track intermittent Mach-wave bursts and their reflections from a plate, which the review's octave-band and ray-tracing analyses (Fig. 21–22) only resolve on average.
- **Methods for non-time-resolved data:** PIV and hot-wire are noted as impractical in real rocket plumes (p. 12), so field data come from acoustics; in the lab, POD pairs from PIV of a deflected jet could still identify wall-jet Mach-wave structures.
- **Intermittency and nonlinearity:** acoustic shocks, f⁻² slopes, crackle and derivative statistics (p. 10) are time-domain, intermittent features that Welch/SPOD averaging hides; wavelets or Hilbert-based instantaneous amplitude would suit them. See siblings [gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md) and [reichman-2018-qm2-srm-far-field-acoustics.md](reichman-2018-qm2-srm-far-field-acoustics.md).
- **Mach wave radiation and directivity:** the Oertel M_CO directivity (Eq. 6) and the importance of choosing the array origin at the source (p. 14) apply to any far-field microphone array in the lab. Siblings: [mathews-2021-falcon-9-far-field-noise.md](mathews-2021-falcon-9-far-field-noise.md), [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md), [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md).
- **Source location:** near-field intensity ([gee-2010-near-field-vector-intensity-solid-rocket-motor.md](gee-2010-near-field-vector-intensity-solid-rocket-motor.md), [gee-2016-near-field-intensity-static-rocket-firings.md](gee-2016-near-field-intensity-static-rocket-firings.md)) and the RSRM source/directivity work ([kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md)) are the primary sources behind Sec. III C–D.
- **Modelling and simulation side:** SP-8072 and derivatives ([casalino-2009-hybrid-empirical-caa-rocket-noise.md](casalino-2009-hybrid-empirical-caa-rocket-noise.md), [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md)); high-order LES of pads with nonlinear Euler CAA (p. 30–31). Brès & Lele (2019) wall-modelled Voronoi LES is the same family of solver as [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md); the resolvent/SPOD ROM direction matches [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) and [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md). This relates to the planned PyFR LES of a shock-containing jet (user memory): multi-species frozen-flow and shock-capturing choices on p. 30 are relevant if that work moves to hot or impinging cases.
- **Clustered nozzles and twin jets:** the review sets aside twin-jet coupling/screech work as of "unclear" relevance to launch vehicles (p. 11), but cites shielding of 1–4 dB. Compare with [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md) and [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md).
- **Full-scale launch data:** [gee-2023-sls-artemis-i-far-field-noise.md](gee-2023-sls-artemis-i-far-field-noise.md), [gee-2024-starship-super-heavy-far-field-noise.md](gee-2024-starship-super-heavy-far-field-noise.md), [kellison-2026-falcon-9-noise-two-campaigns.md](kellison-2026-falcon-9-noise-two-campaigns.md), [gee-2026-falcon-9-ascent-sonic-boom.md](gee-2026-falcon-9-ascent-sonic-boom.md) postdate or extend this review; [mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) revisits Saturn-era data.
- **Candidates for `/add-paper`:** Gee 2021 (JASA 149, Potter plotting error), Greska 2005/2008 (M_CO, OASPL_max), Akamine 2015/2018/2021 and Tsutsumi 2014 (impinging plates), Kurokawa 2020, Jiang 2019 (impinging-jet review), Pineau & Bogey 2021a,b (nonlinear propagation; heated twin jets), Wall 2018 (holography wavepackets), Langenais 2019 (two-way coupling), Brès & Lele 2019, McInerny 1996b (acoustic shocks).
