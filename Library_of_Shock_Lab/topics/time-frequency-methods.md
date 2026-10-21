# Time–frequency methods: Hilbert POD, EMD, wavelets, SPOD reconstruction and intermittency tracking

_Last updated: 2026-10-20 · 10 papers_

## Scope
How to follow the amplitude, phase and frequency of coherent structures through time, rather than averaged over blocks. The page covers:
- the analytic signal and Hilbert transform;
- Hilbert POD (complex POD) in time and in space;
- empirical mode decomposition (EMD);
- wavelets and cross-wavelets;
- SPOD-based reconstruction, denoising and spectrograms;
- Sieber's time-filtered SPOD;
- how the library's resonance papers used these tools to track intermittency, mode switching and coupling.

It is organised around the group's SPOD → reconstruction → Hilbert POD pipeline (CLAUDE.md). The SPOD, BMD and DMD algorithms themselves are in [modal-decomposition](modal-decomposition.md). The physics of staging, coupling and switching is in [screech-staging-and-mode-switching](screech-staging-and-mode-switching.md), [twin-jet-coupling](twin-jet-coupling.md) and [impinging-jets-and-edge-tones](impinging-jets-and-edge-tones.md).

## Current understanding
1. **Instantaneous frequency needs a narrow-band signal.** A Hilbert instantaneous frequency means something only for a locally symmetric, single-component signal. A local offset or a "riding" second component gives spurious or even negative frequency ([Huang 1998](../notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), p. 12–14). Every Hilbert step therefore needs a narrow-banding step first. In the library that step is one of:
   - Horel's band-pass weight W(ω) ([Horel 1984](../notes/horel-1984-complex-principal-component-analysis.md), p. 1662);
   - EMD sifting;
   - in our pipeline, a frequency-domain SPOD reconstruction ([Nekkanti 2021](../notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)).
2. **HPOD is POD of the analytic signal.** It descends from complex principal components (Horel 1984). One complex mode replaces a POD pair: in a cylinder wake, about 95% of the energy is in one HPOD structure, against 50% and 46% in POD modes 1 and 2 ([Raiola 2025](../notes/raiola-2025-hilbert-pod.md), p. 14–15).
3. **The transform direction decides what data HPOD needs.** With the Hilbert transform in time (HPOD_t), HPOD needs time-resolved data, and on shuffled snapshots it quietly falls back towards POD. With the transform along x (HPOD_x), it works on snapshot PIV but gives no dynamics (Raiola 2025, p. 15–16, 24; [Davey 2025](../notes/davey-2025-hpod-sphere-wake.md), p. 35).
4. **HPOD reduces to SPOD for a stationary, homogeneous field of non-dispersive waves** (Raiola 2025, p. 11–13). This is consistent with Horel's statement that complex PCA is frequency-domain PCA averaged over frequency, and that the two are identical for one dominant frequency (p. 1661). What HPOD adds is time-local amplitude and frequency.
5. **All FFT-based tools have end effects.** Horel tapers about 10% at each end (p. 1662) and Raiola trims about 15% (p. 16). The inverse SPOD over-predicts in its first and last half-block (Nekkanti 2021, p. 12). Morlet wavelets have a cone of influence of √2 s ([Torrence 1998](../notes/torrence-1998-practical-guide-wavelet-analysis.md), p. 65, 67).
6. **One parameter sets the time–frequency trade-off in each method:** n_fft for SPOD spectrograms, the number of cycles for a Morlet wavelet, N_f for Sieber SPOD, and the reconstruction band for HPOD. The competing tones in resonant jets are 0.3–15% apart, so this choice decides what can be seen ([Wong 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md), p. 1, 7–8; [Mancinelli 2019](../notes/mancinelli-2019-screech-prediction-upstream-modes.md), p. 6–7).
7. **Block-averaged spectra and SPOD cannot tell switching from coexistence.** Time-resolved tracking with a joint statistic can ([Raman 1998](../notes/raman-1998-supersonic-jet-screech-review.md), p. 55–56; Mancinelli 2019, p. 7; [Mazharmanesh 2026](../notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), p. 11).
8. **Two detuned tones beat, and the beat looks like intermittency or alternating coupling in any narrow-band envelope.** The test is that the envelope period equals 1/Δf (Wong 2023, p. 18, 36; [Esfahani 2021, coupling](../notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md), p. 10–11).

## The analytic signal: when instantaneous frequency means something
[Huang 1998](../notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md) is the reference for this step. The phase portrait of α + sin t is a circle offset by α. For 0 < α < 1 the instantaneous frequency fluctuates spuriously, and for α > 1 it goes negative (p. 12–13). EMD sifts data into locally symmetric intrinsic mode functions (IMFs) before the Hilbert transform. Several of its practical numbers carry over to HPOD:
- At least five samples per period are needed (p. 89).
- Amplitude modulation alone causes about ±1.5% of spurious frequency wiggle (p. 39, 42).
- Two tones at 1/30 and 1/34 Hz could not be separated even after 3000 siftings (p. 45–47).

Huang argues that Fourier band-passing of nonlinear data imports spurious harmonics (p. 12). In his view a distorted wave is one IMF with *intrawave* frequency modulation, not a fundamental plus harmonics (p. 15–16, 35–41). Horel's matching warning is that the Hilbert transform of a pulse peaks at its edges. Spikes and sharp transitions therefore dominate complex correlations unless both u and its Hilbert transform are low-passed (Horel 1984, p. 1662).

Sign conventions differ. The Horel note's own check is that Horel's û is minus the MATLAB `hilbert` transform. Raiola finds that HPOD_t and HPOD_x modes are complex conjugates of each other (p. 19). Fix the convention before reading the sign of a phase speed. On the modelling side, Huang checks IMF frequencies against theory: the Hamiltonian average for the Duffing oscillator and the linearised eigenvalue for the Lorenz system (p. 49, 56). This is the same comparison we make between measured tones and stability predictions.

## Hilbert POD in time and in space
**Origin.** The method runs from [Horel 1984](../notes/horel-1984-complex-principal-component-analysis.md), through Kriegseis et al. 2021 (cited by Raiola; not in the library), to [Raiola 2025](../notes/raiola-2025-hilbert-pod.md). Horel's synthetic tests set its character:
- One complex PC holds a travelling wave that real PCA splits 54/46% (p. 1665–1666).
- A standing wave at another frequency gets its own mode (73/27%, p. 1667).
- Unrelated regions give spurious domain-wide modes (p. 1667–1668).
- Irregular short pulses are captured poorly: 75% in the first mode, with spurious events at the domain edges (p. 1668–1670).

So HPOD handles modulation of a quasi-periodic structure well and isolated bursts badly. Complex PC phases are arbitrary, so lead and lag between fields need one joint decomposition (p. 1663).

**HPOD_t on time-resolved data.** Raiola proves that HPOD_t temporal modes contain only positive frequencies (p. 10–11). This contradicts Horel's claim that complex PCs are not Hilbert pairs (p. 1663); the Horel note attributes his claim to finite, tapered records. In an M 0.9 jet LES, the HPOD temporal modes leave the unit circle. Their STFT spectrograms show active bursts at a preferred frequency, separated by quiet periods, which SPOD would spread over several frequencies and modes (p. 3, 19–21).

**HPOD_x on snapshot data.** HPOD_x gives the same modes on shuffled snapshots as on ordered ones (Raiola 2025, p. 15–16), and its temporal coefficients from jet PIV fill a disc at random (p. 24).

[Davey 2025](../notes/davey-2025-hpod-sphere-wake.md) applies HPOD_x to 12,600 PIV fields of a sphere wake taken at 1 Hz:
- HPOD needs about 0.58× as many modes as POD to reach 25–95% of the turbulent kinetic energy (p. 10).
- It identifies the POD pairs 1–2, 4–5, 6–8 and 9–10.
- A cheaper test finds the same pairs: Hilbert-transform each POD mode in x and keep the mutual best matches at ∓0.5π (p. 12–14, 19–21).

Davey also lists HPOD_x's artefacts (p. 11–18, 34):
- it suppresses non-propagating content near the body;
- it makes the modes look more symmetric than the data;
- it distorts the modes at the domain ends;
- the cheaper test "forcibly propagates" structures that may not propagate.

Raiola presents the choice of direction as a deliberate filter for waves moving that way (p. 13, 26). Both notes infer that in screeching or impinging jets, an HPOD_x along +x would suppress, or fold in, the upstream guided-jet waves and the standing-wave pattern ([Edgington-Mitchell 2020](../notes/edgington-mitchell-2020-waves-in-screeching-jets.md)). This is untested.

**Limits of the theory.** The reduction to SPOD assumes a non-dispersive wave equation (Raiola 2025, p. 13). Systems with several dispersive waves, such as KH plus guided modes, lie outside the proof.

## SPOD reconstruction, filtering and spectrograms
[Nekkanti 2021](../notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md) covers step 2 of the pipeline. It compares two ways of reconstructing data from SPOD modes:
- **Time-domain oblique projection.** It gives the better low-rank snapshots: 75% error against 84% with one mode per frequency, and 15% against 33% with ten modes (p. 14). But it mixes frequencies and reconstructs noise (p. 14, 25).
- **Frequency-domain inverse SPOD.** It keeps each mode at its own frequency, so only it suits denoising and frequency–time analysis (p. 26). Three practical points:
  - Stitch overlapping blocks with the window-weighted mean, which cuts the 1 × 129 error from about 145% to about 36% (p. 26–27).
  - Drop the over-predicted first and last half-blocks (p. 12).
  - The Hamming window leaks energy from retained into other modes. A rectangular window with no overlap removes this leakage but brings spectral leakage instead (p. 13–14, 27).

Two further uses come from the same paper:
- **Denoising.** Hard-thresholding the eigenvalues just above the noise floor keeps 74 of 9933 modes and 92.7% of the clean energy at a lipline SNR of 1 (p. 15).
- **SPOD spectrograms.** Convolving the modes with the data gives time-continuous coefficients without the 3.6 TB that a sliding-window SPOD would need (p. 18–19). In the M 0.4 jet, bursts of the leading modes coincide with peaks of total energy (p. 19–20).

The Nekkanti note infers that a single-bin reconstruction can only change amplitude and frequency from one block to the next. HPOD on it is therefore smoothed over about n_fft; keep neighbouring bins if faster switching matters. Huang's critique also implies that reconstructing only the fundamental strips the intrawave modulation of a strongly nonlinear tone, so harmonic bins should be included when waveform shape matters (an inference in the Huang note).

**Resolving close tones.** Sharp peaks converge slowly with Welch SPOD ([Towne 2018](../notes/towne-2018-spod-relationship-dmd-resolvent.md), p. 23). Wong needed NFFT = 9600 to split St 0.632 from 0.636 (p. 22). Two newer SPOD variants keep tones sharp with shorter records, but neither has been tested as input to a reconstruction:
- adaptive multitaper SPOD ([Yeung 2024](../notes/yeung-2024-adaptive-spod-broadband-tonal.md), p. 16);
- band-ensemble SPOD with frequency attribution ([von Saldern 2026](../notes/von-saldern-2026-band-ensemble-spod.md), p. 22, 28–29).

**Sieber's SPOD as a one-step alternative.** [Sieber 2016](../notes/sieber-2016-spectral-proper-orthogonal-decomposition.md) filters the snapshot correlation matrix along its diagonals (p. 5–6):
- **Output.** Pairs of smooth coefficients form an analytic signal, b_i + i b_j, which gives instantaneous amplitude and frequency directly (eq. 2.26, p. 8).
- **The filter width N_f** plays the role of the reconstruction bandwidth. One to three periods of the target mode worked best (p. 16–17); the note flags an ambiguity in how N_f is defined.
- **Intermittency.** In the Gurney-flap wake, an intermittent event of varying frequency fell into one pair, while the DFT showed nothing (p. 16–17).
- **Caveats.** The method rests on a locally linear, *normal* model (p. 6–9), but jets are strongly non-normal. Pairing can produce spurious pairs (p. 11).

## Wavelets, short-time spectra and coherence for point signals
[Torrence 1998](../notes/torrence-1998-practical-guide-wavelet-analysis.md) supplies what the resonance papers rarely report:
- **Scale to period.** For a Morlet wavelet with ω₀ = 6, the equivalent Fourier period is 1.03 times the scale (p. 67–68).
- **Edge effects.** The cone of influence is √2 times the scale (p. 65, 67).
- **Significance.** Wavelet power is χ²₂-distributed about a white or AR(1) background (p. 69–70). About 5% of a pure-noise map exceeds the 95% level, so the evidence is significant regions that cluster, not their total area (p. 71).
- **Band power.** Scale-averaged power gives a time series of band variance with known degrees of freedom (p. 73–74).
- **Coherence.** Unsmoothed wavelet coherence is identically 1, so coherence maps depend on how they were smoothed. The cross-wavelet phase is the robust output (p. 75–76).

The Torrence note estimates the default Morlet's relative bandwidth at about 17%, enough to blur A1 and A2 together. The papers that tracked close tones used narrower or tunable wavelets:
- Wong used complex Morlet wavelets with c = 600 cycles to resolve shifts of 0.3–0.6%, and c = 3 to resolve beats (p. 7–8).
- [Jordan 2018](../notes/jordan-2018-jet-flap-interaction-tones.md) used a bump wavelet with μ = 5 and σ = 0.6 (p. 16–17).
- [Stavropoulos 2026](../notes/stavropoulos-2026-jet-edge-interaction.md) used the same wavelet, written as σ = 1/0.6 under the reciprocal convention (p. 25–26).
- Mancinelli 2019 gives no bump parameters.

Both Esfahani papers report wavelet coherence without the smoothing or cone-of-influence details that Torrence shows to be decisive (coupling p. 7; [control](../notes/esfahani-2021-control-twin-rectangular-jet-coupling.md) p. 7). Wong found the CWT of raw schlieren pixels too noisy and fed it a POD coefficient instead, using POD as a spatial filter (p. 9).

Raman's "instantaneous spectra", short-time FFT waterfalls, were the earliest screech example of this kind of tracking (p. 55–56). Huang sets the limits of wavelets: they resolve tone-to-tone changes but not intrawave modulation, and in his test they locate a sudden frequency switch less sharply than the Hilbert spectrum (p. 6–7, 42–44).

## Tracking intermittency and mode switching: what the library did

| Paper | Flow, data | Tool | Finding |
|---|---|---|---|
| [Raman 1998](../notes/raman-1998-supersonic-jet-screech-review.md) | rectangular jets, mics | short-time FFT, Morlet, bicoherence | tones coexist or alternate depending on nozzle; Walker's coexist (p. 55–59) |
| [Jordan 2018](../notes/jordan-2018-jet-flap-interaction-tones.md) | jet–flap, mic | bump CWT | one dominant loop, slow or fast switching, or coexistence (p. 16–17) |
| [Mancinelli 2019](../notes/mancinelli-2019-screech-prediction-upstream-modes.md) | round jet, m = 0 array | bump CWT, envelope PSD | A1↔A2 exclusive near M_j 1.12, dwell 1–4 s; envelope modulated at St₂ − St₁ ≈ 0.069 (p. 6–7) |
| [Esfahani 2021, coupling](../notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md) | AR 2 twin jets, mics | Morlet coherence | "intermittent" screech at M_j 1.35 is a 33 Hz beat (p. 8, 10–11) |
| [Wong 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md) | twin round jets, TR schlieren | symmetry-split POD → CWT, SPOD, conditional POD | steady, SS↔SA switching (0.30–0.63% St shift) and uncoupled states; illusory coupling (p. 1, 16–22, 36) |
| [Jeun 2024](../notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) | AR 2 twin jets, LES | Hilbert phase difference, D2 amplitudes | out-of-phase plateaus broken by AA/AS competition (p. 9–10) |
| [Mazharmanesh 2026](../notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) | round, elliptical jets, 150 kHz schlieren | SPOD spectrogram, JPDF, St = 0 coefficient | A1/A2 exclusive (ρ = −0.82); each loop has its own short-time mean (ρ = 0.96 / −0.82) (p. 11–12) |
| [Nogueira 2026](../notes/nogueira-2026-flapping-motion-screeching-round-jets.md) | heated round jet, LES | phase of SPOD expansion coefficients | m = ±1 phase difference drifts with the m = 2 streak phase: the flapping axis precesses (p. 18–24) |

**Switching or coexistence.** Mazharmanesh made Mancinelli's observation into a test. The JPDF of the two tones' spectrogram amplitudes has corner peaks, and the paper notes that "intermittency alone does not imply exclusivity" (p. 11). Their window spans about 78 screech cycles (the note's estimate), and windows that straddle a switch form a ridge in the JPDF (p. 11). [Ponton 1992](../notes/ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md)'s "coexisting" B and C tones with a thick lip come from averaged spectra only (p. 538).

**Labelling states.** Three approaches appear:
- Wong picked cycles from the scalograms and ran POD on each subset. This gave clean SS and SA pairs that POD of the full record mixed (p. 19–20).
- Jeun kept only the phase-locked plateaus, at the cost of 2–4 SPOD blocks and ΔSt = 0.007 (p. 11).
- Mazharmanesh used the St = 0 SPOD coefficient as the state label (p. 12).

In SPOD, competition between states shows up as a large suboptimal eigenvalue at the transitional frequency (Wong 2023, p. 22, 26).

**Azimuthal phase.** A single viewing plane cannot tell m = +1 from m = −1. The helicity reversals reported by [Edgington-Mitchell 2023](../notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md) needed a six-view tomographic measurement (p. 4). In data without an azimuthal decomposition, a precessing flapping mode splits the screech peak across SPOD modes 1 and 2 (Nogueira 2026, p. 21–22).

**Without time resolution.** [Weightman 2019](../notes/weightman-2019-sound-production-impinging-supersonic-jets.md) found an unpaired "shear thickness mode" in PIV POD:
- Its coefficient correlates at 0.74 with the amplitude of the helical pair, against less than 0.15 for every other mode (p. 47).
- Its quintiles change the shear-layer thickness by up to 27% (p. 48–49).
- It therefore measures amplitude intermittency, but it gives no frequency.

[Knast 2018](../notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md), working with Welch phase, could only hypothesise switching from the scatter (p. 5, 8).

**Models behind the tracking:**
- Mancinelli's resonance model bounds the A1 and A2 bands, and the St₂ − St₁ modulation points to quadratic interaction (p. 7).
- Wong's lower SS frequency matches twin-jet stability predictions (p. 19).
- Nogueira's Floquet-in-azimuth stability analysis predicted flapping and wagging modes locked to the streaks, which the phase tracking confirmed (p. 7–12, 20–21).
- Torrence's AR(1) null model and the jitter (coherence-length) model of [Cavalieri 2019](../notes/cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) (p. 14–15) set the background against which bursts and loss of coherence should be judged.

## Disagreements and open questions
- **Harmonics: physical modes or intrawave modulation?** Huang treats harmonics as artefacts of Fourier superposition (p. 15–16, 33–41). Bicoherence and BMD treat them as quadratic triads ([Kim 1979](../notes/kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions.md), p. 123; [Schmidt 2020](../notes/schmidt-2020-bispectral-mode-decomposition.md), p. 23–24). The answer decides whether harmonic bins belong in the HPOD input. To settle it, run HPOD on reconstructions with and without the harmonics, alongside BMD of the same record.
- **Does HPOD_x work for flows with feedback?** Raiola sees the directional filter as a feature (p. 13, 26). Davey shows it removing real structure and adding spurious structure (p. 34). Neither tested upstream waves. To settle it, compare HPOD_t and HPOD_x with SPOD modes filtered by streamwise wavenumber on time-resolved schlieren of a screeching jet.
- **Supply pressure or competing attractors?**
  - Wong's fine NPR sweeps change monotonically at s/D = 3, consistent with supply drift, but non-monotonically at s/D = 4, which suggests stochastic switching between attractors (p. 39–41).
  - Mazharmanesh shows that a supply drift can mimic a correlation between tone and mean flow (ρ = −0.49, p. 26–28).
  - To settle it, log plenum pressure synchronised with the record and condition the HPOD amplitudes on it.
- **Beating or interrupted coupling at one condition?** At M_j 1.35, Esfahani (coupling) reports a 33 Hz mismatch and a phase that wraps every 0.030 s (p. 8, 10–11). Esfahani (control) reports tones at 8.25 and 8.40 kHz, with in-phase coupling interrupted at about 123 Hz and "no phase drift" (p. 10). Wong's beat test, applied to separate signals from each jet, would decide.
- **How fast a switch can be resolved?** Every tool smooths in time: over n_fft (about 78 cycles in Mazharmanesh), c cycles, N_f, or the reconstruction band. No paper benchmarks the tools on a synthetic switch with known timing, as Huang did for wavelets (p. 42–44).
- **Which way does energy flow?** Mazharmanesh argues for two-way coupling between screech and the shock structure (p. 3, 19). Nogueira leaves open whether screech feeds the streaks or the streaks anchor screech (p. 25). The lag between HPOD amplitudes of the tone and of the St = 0 or m = 2 coefficient would constrain both questions.

## Methods and data

| Method | Data | Gives | Main pitfalls |
|---|---|---|---|
| HPOD_t (Horel 1984, Raiola 2025) | time-resolved fields | complex modes; instantaneous amplitude and frequency | needs a narrow band; trim 10–15% each end; reverts to POD without time resolution |
| HPOD_x (Raiola 2025, Davey 2025) | snapshots | quadrature modes; automatic pairing | no dynamics; filters non-propagating and upstream content |
| EMD + Hilbert spectrum (Huang 1998) | one time-resolved series | IMFs, a(t), ω(t), degree of stationarity | mode mixing; end effects; close tones |
| Inverse SPOD (Nekkanti 2021) | time-resolved fields | band- and mode-selected series; denoising; spectrograms | edge half-blocks; window leakage; smoothing over n_fft |
| Sieber SPOD (Sieber 2016) | ordered time-resolved fields | analytic coefficient pairs | choice of N_f; non-orthogonal modes; spurious pairs |
| CWT, cross-wavelet (Torrence 1998) | time-resolved point series | scalograms, band power, phase | cone of influence; bandwidth vs tone spacing; coherence needs smoothing |
| POD pairs, shear thickness mode, conditional POD (Weightman 2019, Wong 2023) | snapshots, or labels from a time-resolved sensor | phase, amplitude intermittency, conditioned modes | no frequency; POD unconverged for close tones (Wong, p. 34–38) |

Time-resolved schlieren, microphones and LES support every row. Non-time-resolved PIV is limited to HPOD_x, POD pairs (with Davey's pairing test), the shear thickness mode, and conditioning on a simultaneous time-resolved sensor. It gives no frequency–time information.

## Relevance to our work
**Checklist for the pipeline, drawn from the notes:**
1. Plan n_fft from a point PSD ([Schmidt 2020 guide](../notes/schmidt-2020-guide-spod.md), p. 6). It must resolve the competing tones (0.3–0.6% for twin-jet symmetries, 10–15% for A1 and A2) while keeping blocks shorter than the dwell times.
2. Reconstruct in the frequency domain, stitch with the window-weighted mean, and drop n_fft/2 snapshots at each end.
3. Choose the band deliberately. Either make it wide enough for every tone to be followed, or reconstruct each tone separately: a band that holds two tones will beat.
4. Run HPOD_t, trim 10–15%, and check the phase portraits. Trust dφ/dt only where the signal is single-component and sampled at five or more points per period.
5. Test exclusivity with JPDFs of the tone amplitudes and their correlation with the St = 0 coefficient. Judge bursts against a χ² background.

**PIV:** use Davey's ∓0.5π test or HPOD_x for pairing, and the shear thickness mode for amplitude intermittency. Do not attempt instantaneous frequency.

**PyFR staging LES:** records are short. Nogueira's LES ran about 240 screech cycles (the note's estimate) and covered only a quarter-turn of the streaks (p. 14), so cones of influence and n_fft windows use up much of a record. The St = 0 SPOD coefficient and the A1 and A2 band powers are the cheapest switch detectors (Mazharmanesh 2026; suggestion in the Torrence note).

**Rocket noise:** the Torrence note suggests scale-averaged wavelet power with significance levels to track band levels through a nonstationary launch. No rocket-noise paper in the library does this yet.

## Papers
- [Horel 1984](../notes/horel-1984-complex-principal-component-analysis.md): origin of complex (Hilbert) PCA, i.e. HPOD_t. Band-pass and taper first; separates travelling from standing waves; weak for isolated pulses.
- [Huang 1998](../notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md): EMD and the Hilbert spectrum. Sets the conditions for meaningful instantaneous frequency; intrawave modulation versus harmonics.
- [Torrence 1998](../notes/torrence-1998-practical-guide-wavelet-analysis.md): wavelet practice. Cone of influence, χ² significance, band-averaged power, cross-wavelet phase.
- [Rilling 2008](../notes/rilling-2008-one-or-two-frequencies-emd-two-tones.md): EMD resolution of two tones; constant-Q cutoff f_c(n) ≈ 0.66 at 10 siftings, independent of record length; explains Huang's close-tone failure (synthesis pending).
- [Daubechies 2011](../notes/daubechies-2011-synchrosqueezed-wavelet-transforms-emd.md): synchrosqueezed CWT; proof that IF of well-separated slowly modulated components is recoverable; separation set by wavelet bandwidth (synthesis pending).
- [Sieber 2016](../notes/sieber-2016-spectral-proper-orthogonal-decomposition.md): time-filtered SPOD. Analytic coefficient pairs that keep intermittency within one pair.
- [Kriegseis 2021](../notes/kriegseis-2021-hilbert-transform-revisited-hpod.md): first HPOD paper in fluids (ISPIV abstract). Time-direction HPOD as an automatic POD-pair finder; adds no information; shuffled snapshots give POD (synthesis pending).
- [Nekkanti 2021](../notes/nekkanti-2021-spod-reconstruction-denoising-frequency-time.md): SPOD reconstruction, denoising and convolution spectrograms. Step 2 of the pipeline.
- [Bell 2021](../notes/bell-2021-intermittent-modal-coupling-screeching-twin-jets.md): band-pass Hilbert envelope and phase of microphone signals track intermittent twin-jet coupling; interruption statistics (synthesis pending).
- [Wong 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md): POD → CWT, conditional POD and the beat test, applied to twin-jet coupling.
- [Davey 2025](../notes/davey-2025-hpod-sphere-wake.md): space-only HPOD on PIV. A POD-pairing test and its artefacts.
- [Raiola 2025](../notes/raiola-2025-hilbert-pod.md): HPOD_t versus HPOD_x, the reduction to SPOD, and intermittent temporal modes. Step 3 of the pipeline.
- [Mazharmanesh 2026](../notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md): SPOD spectrograms, the JPDF exclusivity test and short-time means at A1/A2 staging.
- [Nogueira 2026](../notes/nogueira-2026-flapping-motion-screeching-round-jets.md): phase tracking of SPOD coefficients shows the precession of screech flapping.
- Also discussed (not tagged): [Ponton 1992](../notes/ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md), [Raman 1998](../notes/raman-1998-supersonic-jet-screech-review.md), [Jordan 2018](../notes/jordan-2018-jet-flap-interaction-tones.md), [Knast 2018](../notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md), [Mancinelli 2019](../notes/mancinelli-2019-screech-prediction-upstream-modes.md), [Weightman 2019](../notes/weightman-2019-sound-production-impinging-supersonic-jets.md), [Esfahani 2021, coupling](../notes/esfahani-2021-coupling-modes-twin-rectangular-jets.md), [Esfahani 2021, control](../notes/esfahani-2021-control-twin-rectangular-jet-coupling.md), [Edgington-Mitchell 2023](../notes/edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md), [Jeun 2024](../notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [Stavropoulos 2026](../notes/stavropoulos-2026-jet-edge-interaction.md).
