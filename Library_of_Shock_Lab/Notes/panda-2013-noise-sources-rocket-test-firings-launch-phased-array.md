---
key: "panda-2013-noise-sources-rocket-test-firings-launch-phased-array"
title: "Identification of noise sources during rocket engine test firings and a rocket launch using a microphone phased-array"
authors: ["Panda, Jayanta", "Mosher, Robert N.", "Porter, Barry J."]
year: 2013
type: "report"
venue: "NASA/TM-2013-216625"
bib: {"institution": "NASA Ames Research Center", "number": "NASA/TM-2013-216625"}
doi: ""
arxiv: ""
pdf: "rocket-noise-measurements/Panda-EtAl_2013_Identification-Of-Noise-Sources-During-Rocket-Engine-Test-Firings-And-A-Rocket-Launch.pdf"
version: "report"
unverified: []
group: false
facility: "Wallops pad 0A (Antares); NASA Ames hybrid rocket test"
data: ["mic-array", "full-scale", "infrared-imaging"]
methods: ["beamforming", "coherence"]
flow: ["rocket-plume", "launch-vehicle", "impinging-jet", "supersonic", "heated"]
phenomena: ["source-location", "noise-control", "installation-effects"]
params: {"vehicle": "Antares stage 1 (2 × AJ26), 25,000 lbf hybrid", "thrust": "3265 kN (Antares)", "array range": "400 ft"}
topics: ["rocket-noise-measurements"]
related: ["lubert-2022-supersonic-jet-noise-launch-vehicles-review", "casalino-2009-hybrid-empirical-caa-rocket-noise", "ranow-2021-acoustic-prediction-rocket-flame-deflector", "gee-2016-near-field-intensity-static-rocket-firings", "gee-2010-near-field-vector-intensity-solid-rocket-motor", "tsutsumi-2015-epsilon-liftoff-acoustics"]
cites: ["tam-2008-sources-of-jet-noise-experimental-evidence"]
summary: "70-mic phased array at Wallops pad 0A: Antares static-fire noise comes from the water-quenched flame-duct exit, not the plume; at liftoff sources move mount → duct → deck → free plume"
---
# Identification of noise sources during rocket engine test firings and a rocket launch using a microphone phased-array

- **Authors:** Jayanta Panda (NASA Ames Research Center), Robert N. Mosher (NASA Langley Research Center), Barry J. Porter (Aerospace Computing Inc.)
- **Source:** NASA/TM-2013-216625, NASA Ames Research Center, December 2013. No DOI on the TM. The same study appeared as Panda, Mosher & Porter, "Noise source identification during rocket engine test firings and a rocket launch", *J. Spacecraft and Rockets* 51 (2014); that journal version is not held (download-candidates #95). Precursor: Panda & Mosher 2013, *J. Spacecr. Rockets* 50(5), doi:10.2514/1.A32433 (model-scale Ares I array, ref. [2], p. 23).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-measurements/Panda-EtAl_2013_Identification-Of-Noise-Sources-During-Rocket-Engine-Test-Firings-And-A-Rocket-Launch.pdf` (24 pp.). The Read tool reports it as password-protected; use `pdftotext`/`pdftoppm`. **Page refs below are PDF pages; printed page = PDF page − 4** (PDF pp. 1–4 are the cover, STI page, title page and acknowledgments). PDF pp. 23–24 are the reference list.
- **Tags:** rocket noise, launch pad acoustics, microphone phased array, beamforming, conventional beamforming, cross-spectral matrix, spectral estimation method (SEM), coherence, CLEAN-SC, point-spread function, array design, Antares, AJ26/NK-33, static fire, liftoff, flame duct, J-deflector, plume impingement, water injection, rainbirds, sound suppression, infrared imaging, time-dependent source maps, ground reflection, hybrid rocket

## Summary
NASA built a portable 10 ft × 10 ft, 70-microphone planar phased array with visible and infrared cameras at its centre, and used it to map noise sources at full scale for the first time from the ground (p. 5–6). After shake-down tests on a 25,000 lbf hybrid rocket at Ames, it was placed 400 ft from Wallops pad 0A, 40 ft up on a scissor lift, for the Antares first-stage static fire (22 Feb 2013) and the maiden Antares launch (21 Apr 2013) (p. 5, 16–18). In the static fire, heavy water injection into the flame duct made the **duct exit** the dominant source at all frequencies; the plume leaving the duct radiated little, contrary to the distributed-plume source of SP-8072 (p. 17, 23). During liftoff the dominant source moved with time: launch-mount openings at ignition, then duct inlet and exit, then a broad source over the pad deck when the hot plume spilled out of the duct inlet during the TEL-avoidance tilt before the rainbirds reached full flow, and finally the free plume itself (p. 19–20, 23). Processing used conventional beamforming with radial shading, plus a spectral estimation method (SEM, non-negative least squares on the cross-spectral matrix) modified to include measured inter-microphone coherence; SEM fragmented distributed plume sources into spurious points and was useful only for compact sources (p. 13–16).

## Key findings
### Array design and verification
- Aperture chosen from the Rayleigh criterion (Eq. 1); the new array has three times the aperture of the model-scale array of Panda & Mosher (p. 7).
- Layout: microphones on five logarithmic spirals starting on an ellipse, plus extra microphones on two diagonal ellipses to fill the corners, then optimised by simulated annealing in MATLAB on a cost of 3 dB beamwidth plus side-lobe rejection at **750 Hz**; the central ellipse became a circle (p. 10). Result at 750 Hz: 3 dB resolution **4.12°**, side-lobe rejection **14.8 dB** (p. 10). Designed for best resolution over **400 Hz–2 kHz**, at the cost of more side lobes near 5 kHz (p. 10).
- Constraints: ≥0.5 in between microphones; a 6 in diameter clear zone at the centre for the cameras (p. 10).
- The authors suggest the coordinates (Table I) can be scaled linearly to other array sizes with 70 microphones, with the 750 Hz design frequency scaling accordingly (p. 10).
- Measured point-spread function from a loudspeaker 61.5 ft away in an anechoic chamber agreed well with the computed one (p. 10, Fig. 4).
- Mylar film windows over each microphone protected against rain, steam, sand and debris with <0.1 dB transmission loss; all sensors survived rainstorms and the launch (p. 12).

### Hybrid rocket test (NASA Ames)
- The concrete-and-steel floor acted as a reflector: each map showed the plume source and its floor image, which could not be separated because the plume was close to the ground (p. 15–16, Fig. 7).
- **Modified SEM broke the long distributed plume source into several discrete spots**, even after smoothing, as CLEAN-SC had done on a different rocket plume in earlier work [1] (p. 16, Fig. 7c–d). SEM suits compact sources, not distributed ones (p. 16).

### Antares first-stage static fire (7K test, 22 Feb 2013)
- 29 s burn with gimballing; maps were computed from the peak 14.5 s of data (p. 17, Fig. 8). Water was injected inside the flame duct and on the deflector (p. 17).
- **Duct exit was the most prominent source at all frequencies** (500 Hz and 2 kHz shown); the SEM map (20 dB range) also showed the engine mount, **16 dB weaker** (p. 17, Fig. 9).
- Interpretation: the duct water quenched the plume, so noise from deflector impingement, turning and mixing inside the duct radiated out through the exit, while the emerging plume was too cooled and slowed to radiate much (p. 17, 23). Suggested fix: lengthen the duct to move its exit further from the vehicle (p. 17–18). This agrees with the subscale duct-extension gains summarised in [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (p. 21–22 there).
- Array vibration (thermal camera rated 2 g failed) caused phase jitter and coherence loss; the long burn allowed enough averaging (p. 17).

### Antares A-ONE launch (21 Apr 2013)
- Six of 70 channels were accidentally off, so it was a 64-microphone array; more guy wires were needed on a lighter lift; the IR camera survived the first ~10–15 s (p. 10, 18).
- Liftoff about 2 s after ignition; about 70 m altitude and 65 km/h at 10 s after ignition (8 s after liftoff). The slow ascent made Doppler correction unnecessary (p. 18). The vehicle pitched away from the TEL early in flight (TEL-avoidance manoeuvre, Fig. 10b) (p. 19).
- Background before ignition ~90 dB (wind, bleeds); peak **>150 dB** at the array when the vehicle was ~120 m up and the whole plume had left the duct (p. 19, Fig. 10d).
- Time-resolved maps from **0.2 s segments**, at 2 kHz (80 Hz band), 10 dB auto-scaled range, overlaid on IR frames, with acoustic propagation delay from pad to array removed (p. 19–20, Fig. 11). Sequence (p. 20, 23; Fig. 11, p. 21–22):
  - t = 0.6 s, 1.7 s: openings in the launch mount (plume visible through them) are the source, plus a ground-reflection image.
  - t = 2.9 s: engines near full power; duct inlet and duct exit are both sources.
  - t = 4.5–6.1 s: sources spread over the pad deck; the tilt and eastward drift spilled hot plume from the duct inlet over the pad. The rainbirds started late and reached full flow only when the vehicle was ~40 ft up.
  - t = 7.1–8.7 s: rainbirds quench the deck; the exposed free plume becomes the main source (with a weak ground reflection); the duct exhaust is no longer a source.
- Map peak levels (colour-bar tops, 80 Hz band at 2 kHz) rise from ~81 dB (0.6 s) to ~100 (1.7 s), ~106 (2.9 s), ~112 (4.5–7.1 s) and ~114 dB (8.7 s) (Fig. 11, p. 21–22).
- Outcome: Orbital planned an earlier rainbird start for later Antares launches (p. 20, 23).
- SEM maps of the launch again discretised the plume and had higher side lobes (short records, jitter, missing channels), so they are not shown (p. 20).

## Setup / method
| Item | Value | Page |
|---|---|---|
| Vehicle | Antares stage 1: twin AJ26 (NK-33-based) LOX/RP-1, 3265 kN total thrust; stage 2 ATK Castor solid | 7 |
| Pad | Wallops pad 0A (MARS): single-hole flame duct with J-deflector; duct outlet tilted up ~10° to clear a sea wall | 7 |
| Water suppression | (1) ports round duct inlet, (2) spray inside duct onto deflector (started before ignition), (3) on-deck "rainbirds" (short ones early, long ones delayed) | 7 |
| Array | 70 G.R.A.S. ¼ in condenser mics, flush on a 10 ft × 10 ft aluminium honeycomb box; 1.3 MP visible camera; 640 × 480 long-wave IR camera; 2-axis accelerometer | 10 |
| Placement | ~400 ft from pad, 40 ft above ground on a scissor lift (guy-wired), outside the hazard fence | 5, 16–18 |
| Acquisition | 80-channel 24-bit PXI, 20,480 S/s per channel (>8 kHz usable), 60 s from t − 30 s, ignition pulse recorded for sync | 12 |
| Static-fire record | 14.5 s window at peak thrust | 17 |
| Launch record | 0.2 s segments | 19 |
| Calibration | pistonphone per mic, phase checked against a reference mic; loudspeaker placed around the pad to register camera look-angle (pitch, yaw, roll) | 10, 15, 18 |
| Hybrid test | paraffin–N₂O hybrid, ~25,000 lbf (Peregrine programme), NASA Ames | 15 |

**Processing chain** (p. 12–16):
1. Fourier transform each microphone over overlapping blocks and average to get the cross-spectral matrix (CSM, Eq. 3); diagonal (auto-spectra) removed to suppress wind and electronic noise. Block length, window and overlap are **not stated** for the static fire; for the launch the record is cut into 0.2 s segments (5 Hz bins if one block per segment), and results are reported in an 80 Hz band.
2. Interrogation grid on the camera frame after fish-eye (barrel) correction (Eq. 13); a 2D grid because a planar array has little depth resolution; spacing 6–20 times finer than the Rayleigh limit at the highest frequency.
3. Conventional beamforming with monopole steering vectors (Eq. 2, 4), radial amplitude shading (Eq. 5–6).
4. SEM (Blacodon & Élias): non-negative source strengths α_j² fitted to the measured CSM by least squares (Eq. 7–9), with MATLAB `lsqnonneg` (max 500 iterations). Number of grid points ~ number of unknowns J (after Papamoschou).
5. Modified SEM: model CSM scaled by the measured coherence (Eq. 10–12), which converges faster but fails again at high frequency when coherence is poor.
6. Savitzky–Golay smoothing (`sgolayfilt`) of SEM maps so isolated points are visible.
7. Implemented in MATLAB with the Distributed Computing Toolbox on a six-core PC: CSM 0.5–3 min; each beamformed frequency bin a few seconds (p. 14).

Assumptions (stated, p. 13): sources are sums of uncorrelated monopoles and propagation is linear. No Doppler correction (slow vehicle). No account of the depth (range) of sources or of directivity, so the array sees only what radiates towards it, upward from 40 ft.

## Key equations
(Rebuilt from rendered PDF pages 7, 12–15.)
- Rayleigh resolution (Eq. 1, p. 7): $\sin\theta_R = 1.22\,\lambda/d$.
- Steering vector (Eq. 2, p. 12): $w_{j,m}=\dfrac{r_{jm}}{r_{jc}}\,e^{-ik r_{jm}}$, normalised so $\mathbf w_j^{\dagger}\mathbf w_j=1$; $r_{jm}$ distance from grid point j to mic m, $r_{jc}$ to the array centre.
- Cross-spectral matrix (Eq. 3, p. 13): $G_{mm'}=\langle P_m^{*}P_{m'}\rangle$.
- Conventional beamforming (Eq. 4, p. 13): $b_{jj}(f)=w_{j,m}^{\dagger}G_{m,m'}w_{j,m'}$.
- Shading (Eq. 5, p. 13): $S_m=S_1+(1-W_1)R_m/R_0$, with $S_1=W_1=0.1$ and $R_0$ the outermost radius; shaded output (Eq. 6): $b_{jj}(f)=\dfrac{w_{j,m}^{\dagger}(SGS^{T})w_{j,m'}}{(\sum_m S_m)^2}$.
- SEM model CSM (Eq. 7, p. 14): $G^{mod}_{mm'}=\sum_{j=1}^{N} w_{j,m}\,\alpha_j^2\,w_{j,m'}^{*}$; cost (Eq. 8): $E(\alpha_j,f)=\sum_{m,m'=1}^{J}\left|G_{mm'}-\sum_{j}w_{j,m}\alpha_j^2w_{j,m'}^{*}\right|^2$; number of real unknowns (Eq. 9): $J=M^2-M$ (from $(M^2-M)/2$ independent complex off-diagonal terms).
- Coherence (Eq. 10, p. 14): $\Gamma^2_{mm'}=G_{mm'}/(|P_m||P_{m'}|)$. Modified SEM (Eq. 11–12): $G^{mod}_{mm'}=\Gamma_{mm'}\sum_j w_{j,m}\alpha_j^2 w_{j,m'}^{*}$ and the same cost with $\Gamma_{mm'}$ inside.
- Barrel correction (Eq. 13, p. 15): $s=r+\alpha r^3$ (α a lens constant found by trial and error).

> Verify against the PDF: Eq. 10 is printed with $\Gamma^2$ on the left but a magnitude-type ratio on the right (not the usual squared coherence $|G_{mm'}|^2/(G_{mm}G_{m'm'})$), and Eq. 11 then uses $\Gamma$; the TM's notation is loose. Eq. 7 in the TM writes the model with a complex conjugate on the second steering factor, which is reproduced here.

> Check: at 750 Hz with c ≈ 1125 ft/s, λ ≈ 1.5 ft, so Eq. 1 with d = 10 ft gives θ_R ≈ 10.5°, larger than the quoted 4.12° 3 dB beamwidth (a different measure). At 2 kHz, θ_R ≈ 3.9°, i.e. ~27 ft at the 400 ft range; at 400 Hz, ~20° (~140 ft). These are my calculations, not the paper's.

## Data tables
**Table I (p. 11):** x, y coordinates (in) of all 70 microphones; worth reusing for an array design. The text-extracted version is clean (e.g. mic 1 at (39.038, 54.320), mic 70 at (−46.127, 52.126)).

> The text says 56 mics on spirals plus 16 on ellipses (= 72), yet the array has 70; check the layout description on p. 10.

## Figures worth remembering
- **Fig. 1 (p. 8):** pad 0A layout, array location, Antares at liftoff and static fire (duct-exit steam plume).
- **Fig. 2 (p. 9):** duct-inlet water ports and on-deck rainbirds.
- **Fig. 3 (p. 9):** microphone layout and array face.
- **Fig. 4 (p. 11):** computed vs measured point-spread functions.
- **Fig. 5 (p. 13):** beamforming schematic (grid on camera image, steering vectors).
- **Fig. 7 (p. 16):** hybrid-rocket maps; conventional vs modified SEM, showing floor reflection and SEM fragmentation.
- **Fig. 9 (p. 18):** static-fire maps at 500 Hz and 2 kHz: duct exit dominant.
- **Fig. 10 (p. 19):** vehicle height, pitch angle, one microphone's pressure trace and OASPL vs time (array-averaged).
- **Fig. 11 (p. 21–22):** the key figure: 2 kHz maps on IR frames at t = 0.6–8.7 s next to high-speed video, showing the source moving from mount to duct to deck to plume.

## Notation
- M: number of microphones (m, m′ indices); N, N_s: grid points (j index); J = M² − M real unknowns.
- w: steering vector; G: cross-spectral matrix; P_m: microphone spectrum; b: beamformed output (dB); S_m: shading weight; R_m, R_0: mic radius and outermost radius; S_1, W_1: shading constants (0.1).
- α_j²: monopole strength at grid point j; Γ: coherence; E: SEM cost.
- θ_R: Rayleigh resolution; λ: wavelength; d: aperture; k = 2πf/c.
- TEL: Transporter Erector Launcher; psf: point-spread function; SEM: spectral estimation method (Blacodon & Élias, ref. [11]; "spectral element method" in the TM heading).

## Relevance to this project
This connects the rocket-noise strand of CLAUDE.md with the lab impinging-jet work: it is the only full-scale source map of a launch pad environment in the library, and shows that at full scale the pad (duct, deflector, deck impingement) can dominate, not the free plume.
- **Pad and impingement sources:** the static-fire result (duct exit dominant, plume quenched) and the deck spill during liftoff are full-scale evidence for the impingement and flame-duct sources reviewed in [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (Sec. IV–V, Fig. 8 there: duct sources at low elevation, above-platform sources later). They contradict SP-8072's distributed free-plume source at low altitude, as the hybrid empirical/CAA approach of [casalino-2009-hybrid-empirical-caa-rocket-noise.md](casalino-2009-hybrid-empirical-caa-rocket-noise.md) and the flame-duct reflection model in [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md) try to account for. The TM gives no spectra, sound power or directivity, so it cannot test those models quantitatively.
- **Impinging-jet feedback:** the maps show only broadband sources at the duct and deck, with no sign of tones, consistent with Lubert's point that impingement tones are not seen at full scale. The lab mechanisms in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md) and [henderson-2002-flow-structure-supersonic-impinging-jets.md](henderson-2002-flow-structure-supersonic-impinging-jets.md) concern clean, dry jets; here water quenching and a closed duct change the problem.
- **Comparison with intensity methods:** [gee-2016-near-field-intensity-static-rocket-firings.md](gee-2016-near-field-intensity-static-rocket-firings.md) and [gee-2010-near-field-vector-intensity-solid-rocket-motor.md](gee-2010-near-field-vector-intensity-solid-rocket-motor.md) locate free-plume sources by ray-tracing intensity; beamforming here instead images pad sources but, as SEM shows, struggles with distributed, partly coherent plume sources. The two approaches agree in finding that source locations change with conditions, but they look at different things.
- **Methods and data needs:** beamforming needs synchronised, time-resolved microphone signals and known positions to a fraction of a wavelength (p. 6). The CSM is the same object SPOD diagonalises (see [schmidt-2020-guide-spod.md](schmidt-2020-guide-spod.md)): SPOD of a lab microphone array would give its coherent, low-rank parts, which may be a better model of a distributed jet source than independent monopoles, and the coherence-scaled SEM is a crude step in that direction. Block-averaged maps over a 14.5 s steady window suit stationary sources; for the launch, short 0.2 s segments trade spectral resolution and convergence for time resolution. This is a coarse version of what wavelets, SPOD-filtered reconstruction plus Hilbert POD, or instantaneous-amplitude tracking ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md), [torrence-1998-practical-guide-wavelet-analysis.md](torrence-1998-practical-guide-wavelet-analysis.md)) would do for a source that moves and switches. Not applicable to non-time-resolved PIV.
- **Lab practice:** the array design recipe (log spirals + simulated annealing on beamwidth and side-lobe level, Table I coordinates scalable with aperture), pairing with a camera, loudspeaker look-angle calibration and reflections from the floor all transfer to a microphone array in a Shock Lab group facility, e.g. to separate jet, nozzle-lip and plate sources in impinging-jet tests. Floor reflections (hybrid test) are a reminder to account for image sources near a plate or wall.
- **Modelling and simulation side:** no modelling in this TM. It is cited as a comparison case for CFD/CAA of launch pads (Fukuda 2009; Brehm 2013 LAVA flame-trench prediction, refs. [6–7], p. 6), which Lubert reviews (p. 29–31 there).
- **Candidates for `/add-paper`:** the J. Spacecr. Rockets 2014 version (#95), Panda & Mosher 2013 (model-scale Ares I array, J. Spacecr. Rockets 50(5)), Panda & Mosher 2011 (AIAA 2011-974), Casalino et al. 2012 (AIAA J 50(10), tailored beamforming for rocket noise), Papamoschou 2011 (JSV 330, directional distributed sources), Tam et al. 2008 (JFM 615, sources of jet noise, now [indexed](tam-2008-sources-of-jet-noise-experimental-evidence.md)), Brooks & Humphreys 2004 (DAMAS).
