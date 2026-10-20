---
key: "berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet"
title: "Application of POD on time-resolved schlieren in supersonic multi-stream rectangular jets"
authors: ["Berry, M. G.", "Magstadt, A. S.", "Glauser, M. N."]
year: 2017
type: "article"
venue: "Phys. Fluids 29, 020706"
bib: {"journal": "Physics of Fluids", "volume": "29", "pages": "020706"}
doi: "10.1063/1.4974518"
arxiv: ""
pdf: "modal-decomposition/Berry-EtAl_2017_Application-Of-POD-On-Time-Resolved-Schlieren-In-Supersonic-Multi-Stream-Rectangular.pdf"
version: "published"
unverified: []
group: false
facility: "Syracuse Skytop Turbulence Laboratory"
data: ["schlieren-TR"]
methods: ["POD", "POD-pair", "PSD"]
flow: ["rectangular-jet", "multi-stream-jet", "supersonic", "ideally-expanded"]
phenomena: ["coherent-structures", "flapping"]
params: {"M_j": "1.6 (bulk), 1.0 (third stream)", "Re": "2.74×10⁶", "D_h": "44.1 mm", "f_s": "50–100 kHz"}
topics: ["modal-decomposition", "non-axisymmetric-and-twin-jets", "diagnostics-and-facilities"]
related: ["sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "towne-2018-spod-relationship-dmd-resolvent", "schmidt-2020-guide-spod", "mazharmanesh-2025-screech-modes-non-axisymmetric-jets", "samimy-1998-rectangular-jet-trailing-edge-control", "kerechanin-2001-trailing-edge-rectangular-jet-acoustics"]
cites: ["krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i"]
summary: "Snapshot POD of 50–100 kHz schlieren of a three-stream SERN jet (M_j 1.6, aft deck): mode pair holds St 3.4 splitter-plate tone, aliased at 50 kHz; flapping at St 0.46–0.70"
---
# Application of POD on time-resolved schlieren in supersonic multi-stream rectangular jets

- **Authors:** M. G. Berry, A. S. Magstadt, M. N. Glauser (Department of Mechanical and Aerospace Engineering, Syracuse University; p. 1)
- **Source:** Physics of Fluids 29, 020706 (2017), doi:10.1063/1.4974518. Received 18 Jul 2016, accepted 16 Dec 2016, published online 13 Feb 2017 (p. 1). Funded by AFOSR grant FA9550-15-1-0435 (p. 9).
- **PDF:** `References/Paper_PDFs/modal-decomposition/Berry-EtAl_2017_Application-Of-POD-On-Time-Resolved-Schlieren-In-Supersonic-Multi-Stream-Rectangular.pdf` (index key `modal-decomposition/Berry-EtAl_2017_Application-Of-POD-On-Time-Resolved-Schlieren-In-Supersonic-Multi-Stream-Rectangular.pdf`, 11 PDF pages = AIP cover page + 10 printed pages)
- **Page refs:** printed page 020706-N, written "p. N" below, is PDF page N + 1.
- **Tags:** rectangular supersonic jet, three-stream engine, single expansion ramp nozzle (SERN), aft deck, sonic wall jet, splitter-plate shedding, Kelvin–Helmholtz, time-resolved schlieren, pulsed LED, snapshot POD, POD of scalar (schlieren intensity) fields, POD mode pairs, POD as a filter for light-intensity drift, time-resolved POD coefficients by projection, aliasing, flapping mode, corner vortices, anechoic chamber

## Summary
The paper applies Sirovich snapshot POD to high-speed schlieren of an idealised military three-stream nozzle: a rectangular, asymmetric convergent–divergent SERN (bulk flow, ideally expanded M_j,1 = 1.6) with a sonic wall jet (third stream, M_j,3 = 1.0) entering in the divergent section and an aft-deck plate on one side (p. 1–2). Three schlieren set-ups are decomposed: a small side-view window over the deck at 100 kHz and two larger windows (side and top view) at 50 kHz (p. 4, Table II). The POD basis is built from snapshots decimated in time for statistical independence, and the full time-resolved record is then projected onto it to recover time-resolved coefficients whose spectra are examined (p. 4). In the 100 kHz window, modes 1–2 form a near-quadrature pair holding a narrowband St ≈ 3.4 (34.4 kHz) signal that the group's LES attributes to Kelvin–Helmholtz shedding from the splitter plate between the main and bypass streams, carried along the shocks and radiated as acoustic waves; higher modes are broadband (St 0.4–2.2) and are associated with corner and shear-layer vortices (p. 6–7). The study is descriptive and exploratory: there is no stability or reduced-order model, and the LES (Stack et al. 2016) is cited, not presented.

## Key findings
- **POD convergence is slow for schlieren** (p. 5, Fig. 6): 50% of the mean-squared content needs 200 modes (set-up 1, smallest window), 250 (set-up 2) and 300 (set-up 3, largest window). Convergence is slower than in earlier POD of velocity fields from the same group (ref. 50), which the authors attribute to large windows taking in several shear layers and the acoustic field (p. 5).
- **Set-up 1 (100 kHz, x/D_h ≲ 2.5, over the deck)** (p. 6–7, Fig. 7–9):
  - Modes 1–9 hold 11% of the total mean-squared value; modes 1–20 hold 16% (p. 6).
  - Modes 1–2 show acoustic radiation and structures leaving the nozzle exit lips. A small-scale event runs along the top shear layer, through the acoustic field and down the first oblique shock, and interacts with a structure in the bottom mixing layer (p. 6).
  - **Dominant peak at St = 3.4 (f = 34.4 kHz) in all modes' coefficient PSDs.** The same peak appears in near-field pressure and far-field acoustics (p. 6). LES (Stack et al. 2016, ref. 31) puts its source at KH shedding from the splitter plate separating main jet and third stream, where the zero-velocity zone behind the plate convolves several KH instabilities that then travel along the bottom mixing layer and up the internal recompression shock (p. 6).
  - Modes 3–4: large structure in the upper shear layer at the deck edge, steered by a shock reflecting off the deck edge; modes 7–9: smaller structures in the same area from the shock reflection off the top shear layer (p. 6).
  - Modes 3–9: broadband content from St = 0.39 (4.0 kHz), matching side-shear-layer near-field pressure (Berry et al. 2016), so assigned to nozzle-corner and shear-layer vortices; a further band of peaks between St = 1.0 (10 kHz) and St = 2.16 (22 kHz). Peak frequency rises with mode number as the structures get smaller (p. 6).
  - **Mode pairing:** modes 1–2, 3–4 and 5–6 look alike spatially and spectrally. Modes 1–2 have almost identical spectra at St 3.40; modes 3–4 share frequency bands and a common peak at St 1.93 (Fig. 8). Pairing fades for higher modes (p. 6).
  - **Time series (Fig. 9, first 0.6 ms of a_1–a_8):** a_1, a_2 are quasi-periodic at 34 kHz and consistently out of phase by about 10 µs, which is one sample at 100 kHz, so only approximate (p. 7). a_3, a_4 are consistently out of phase by about 30 µs. Higher modes are more stochastic and the phase shift is less clear (p. 7).
- **Set-up 2 (50 kHz, side view to x/D_h ≈ 5.5)** (p. 7–8, Fig. 10):
  - Modes 1–2 show the same structures as at 100 kHz, with the acoustic waves followed further; the eigenfunctions in the overlapping region look very like the 100 kHz ones. The authors' argument: POD eigenfunctions come from statistically independent snapshots, so the sampling rate does not matter for them, only for a_n(t) (p. 7–8).
  - Only modes 1–2 carry the acoustic waves here. Their PSD peaks at St = 1.5 (15.6 kHz), which is the 34.4 kHz signal aliased by the 50 kHz sampling (Nyquist folding agrees; p. 8). (Check: 50 − 34.4 = 15.6 kHz.)
  - Modes 3–4 look like flapping modes, with a broad PSD peak around St = 0.46 (quoted as f = 3.13 kHz, see the flag below). Modes 4–9 are linked to shear-layer or corner vortices; peak frequency rises with mode number; mode 9 looks like a column mode. Modes 3–9 are strongest from the deck edge onwards (p. 8).
- **Set-up 3 (50 kHz, top view through a polycarbonate deck)** (p. 8, Fig. 11):
  - Mode 1 is a clear flapping mode; modes 2–4 show flapping turning into corner and shear-layer vortices; modes 5–9 show corner and shear-layer vortices. Traces of crossing oblique shocks appear in all nine (p. 8).
  - The highest-energy structures only start after the deck edge (x/D_h ≈ 2): the deck suppresses structures upstream and this view does not show streamwise gradients of the exit shocks well (p. 8–9).
  - All modes have a broad peak between St = 0.46 (4.7 kHz) and 0.70 (7 kHz), again rising with mode number (p. 8).
- **POD as a pre-filter** (p. 4–5): refraction through the clear deck and reflections from transducers made the light intensity drift during a run, and mean subtraction could not equalise the snapshots. POD put these drifts into modes whose eigenfunction was spatially uniform; those modes were removed and the field reconstructed before analysis. Which modes, and how many, is not stated.
- **Core length from a POD reconstruction** (p. 3, Table I): L_c ≈ 3.5 D_h, estimated from the RMS of centreline density gradient in a reconstruction from modes 3–10 (modes taken to exclude the acoustics and the structures riding the shocks and mixing layer).

## Setup / method
- **Facility** (p. 2–3, Fig. 2): Skytop Turbulence Laboratory, Syracuse University. Anechoic chamber 7.9 m × 6.1 m × 4.3 m, fibreglass wedges, 150 Hz cut-off. Blowdown: 100 hp Joy reciprocating compressor and 45 m³ storage, runs up to 1 min, Re ≈ 2.7 × 10⁶. Microphone arrays in plane and offset (Fig. 2). Not a Shock Lab group facility.
- **Nozzle** (p. 2, Fig. 3–4): idealised three-stream nozzle; core and fan assumed fully mixed upstream (the "bulk flow"), exiting through a rectangular asymmetric CD SERN. The third stream is drawn from the bulk flow far upstream, throttled with butterfly valves, passed through a convergent section and re-enters the divergent section of the SERN as a sonic wall jet. An extended plate on one side models the aft deck (ends at x/D_h ≈ 2, p. 6). The nozzle can be rotated between runs for above-deck, below-deck and sideline views. Full dimensions are in Magstadt et al. 2015 (ITAR-restricted, ref. 22).
- **Conditions and scales** (Table I, p. 4):

| Quantity | Value | Source |
|---|---|---|
| M_j,1 (bulk), M_j,3 (third stream) | 1.6, 1.0 | design, ideally expanded |
| U_j | 450 m/s | |
| Re_j | 2.74 × 10⁶ | exit conditions, scaled to D_h |
| D_h (hydraulic diameter) | 44.1 mm | |
| L_c | ≈ 3.5 D_h | POD reconstruction, modes 3–10 |
| TI | ≈ 13% | from CFD/LES (Ruscher et al. 2016) |
| u_Dh, t_Dh | 59 m/s, 0.75 ms | large-scale estimates from LES |
| Kolmogorov η, u_η, τ_η | 3.0 µm, 2.4 m/s, 1.3 µs | from Re of the fluctuations |

  > Table I symbols are garbled in the extracted text; the Kolmogorov symbols were assigned by units. Check: t_Dh = D_h/u_Dh = 44.1 mm / 59 m/s = 0.75 ms and τ_η = η/u_η = 3.0 µm / 2.4 m/s = 1.25 µs, both consistent. Jet temperature (heated or cold) is not stated in this paper.
- **Schlieren** (p. 4): vertical z-type; two 318 mm parabolic mirrors, f = 2.54 m; pulsed Luminus CBT-120 green LED (after Willert et al. 2012 and Wilson et al. 2015); vertical knife edge at 80% cut-off, so the image is the path-integrated ∂ρ/∂x. Photron SA-Z at 50–400 kHz, up to 2.5 × 10⁶ images; windows x/D_h 0.5 to 6; exposures 8.93 × 10⁻⁷ to 4.84 × 10⁻⁵ s.
- **Set-ups analysed** (Table II, p. 4; Fig. 5, p. 5):

| | Set-up 1 | Set-up 2 | Set-up 3 |
|---|---|---|---|
| Sampling | 100 kHz | 50 kHz | 50 kHz |
| Exposure | 3.75 µs | 3.75 µs | 3.75 µs |
| Grid | 384 × 384 px | 888 × 384 px | 712 × 512 px |
| Images | 257,862 | 134,337 | 117,924 |
| View | side (x–y) | side (x–y) | top (x–z), through clear deck |
| Extent (Fig. 5) | x/D_h ≈ 0–2.5 | ≈ 0–5.5 | ≈ 0.5–4 |

  Record lengths (my arithmetic): ≈ 2.6 s, 2.7 s, 2.4 s. Nyquist St (my arithmetic, St = f D_h/U_j): 4.9 for set-up 1, 2.45 for set-ups 2–3.
- **St definition** (Fig. 7b axis label): St = f D_h/U_j. Check: 34.4 kHz × 0.0441 m / 450 m/s = 3.37.
- **Snapshot POD** (p. 4):
  - Scalar variable written as the refractive-index fluctuation n′, in practice the schlieren intensity. Mode ranking is by mean-squared density gradient, (dρ/dx)², "units" (kg/m⁴)², called the mean-squared value (p. 5).
  - Snapshots are first down-sampled in time to make them statistically independent; the decimation factor and number of snapshots are not stated. Fig. 6a shows cumulative content reaching 100% at about 1400 modes, which suggests about 1400 snapshots (my inference, not stated).
  - The full time-resolved record is then projected onto the eigenfunctions to get time-resolved a_n(t) (p. 4).
  - PSD method (segment length, window) not stated. Coefficient amplitudes in Fig. 9 are arbitrarily scaled ("procedure defined units").
  - Requirements: the eigenfunctions do not need time-resolved data; the coefficient spectra and phase lags do, and are aliased otherwise (set-up 2).
- **Modelling and simulation side:** none is run in this paper. LES of the same nozzle by Stack, Gaitonde et al. (AIAA 2016-2058, ref. 31) and the companion TSFP paper (Berry et al., ref. 51) are cited for the splitter-plate source of the 34 kHz tone and compared "extensively" with this schlieren set (p. 2), but no LES numerics, resolution or comparison figures are given here. TI comes from CFD by Ruscher et al. 2016 (p. 3).

## Key equations
Snapshot POD as written in the paper (p. 4), with n′(x, t) the fluctuating field, D the spatial domain, T the record (number of snapshots):
- Temporal eigenproblem (eq. 1): $\int_T C(t,t')\,a_n(t')\,dt' = \lambda^{(n)} a_n(t)$
- Two-time correlation (eq. 2): $C(t,t') = \frac{1}{T}\int_D n'(\mathbf x,t)\,n'(\mathbf x,t')\,d\mathbf x$
- Coefficient normalisation (eq. 3): $\langle a_m(t), a_n(t)\rangle = \lambda^{(m)}\delta_{mn}$
- Spatial eigenfunctions (eq. 4): $\phi^{(n)}(\mathbf x) = \frac{1}{T\lambda^{(n)}}\int_T a_n(t)\,n'(\mathbf x,t)\,dt$
- Reconstruction (eq. 5): $n'(\mathbf x,t) = \sum_{n=1}^{N} a_n(t)\,\phi^{(n)}(\mathbf x)$

> Equations rebuilt from garbled extraction. Check eq. 2 (a 1/T factor in front of a spatial integral, as extracted) and the placement of T and λ in eq. 4 against PDF p. 5 (printed p. 4).

## Data tables
**Spectral peaks of the POD coefficients** (p. 6–8):

| Set-up | Modes | St | f (kHz) | Interpretation |
|---|---|---|---|---|
| 1 (100 kHz) | all, strongest 1–2 | 3.4 | 34.4 | splitter-plate KH shedding (LES) + radiated acoustics |
| 1 | 3–9 | from 0.39 (broadband) | 4.0 | corner and shear-layer vortices (near-field pressure) |
| 1 | 3–9 | 1.0–2.16 | 10–22 | smaller structures; peak rises with mode number |
| 1 | 3–4 | 1.93 (shared peak) | ≈ 19.7 (my arithmetic) | pair |
| 2 (50 kHz) | 1–2 | 1.5 | 15.6 | 34.4 kHz aliased |
| 2 | 3–4 | ≈ 0.46 (broad) | 3.13 as printed | flapping |
| 3 (50 kHz, top) | all | 0.46–0.70 (broad) | 4.7–7 | flapping, corner/shear-layer vortices |

**Phase lags between paired coefficients** (p. 7; ratios are my arithmetic): a_1–a_2 ≈ 10 µs, about 0.34 of the 29 µs period at 34.4 kHz (quadrature would be 7.3 µs, below the 10 µs sample spacing). a_3–a_4 ≈ 30 µs, which is not a quarter period of the St 1.93 peak (period ≈ 51 µs), so the lag probably reflects the broadband content, not a single frequency.

## Figures worth remembering
- **Fig. 1 (p. 2):** AFRL/GE three-stream turbofan concept.
- **Fig. 3–4 (p. 3):** idealised flow (supersonic rectangular jet + sonic wall jet) and the nozzle cross-section with splitter plate and aft deck.
- **Fig. 5 (p. 5):** time-averaged schlieren with the three windows marked; side view shows the shock train over and beyond the deck, top view the crossing oblique shocks.
- **Fig. 6 (p. 5):** cumulative mean-squared content to 1400 modes and per-mode bars for the first 20 modes, all three set-ups.
- **Fig. 7 (p. 6):** set-up 1 eigenfunctions 1–9 and coefficient PSDs, with the sharp St 3.4 peak.
- **Fig. 8 (p. 7):** eigenspectra (coefficient PSDs) of the first 20 modes, showing paired spectra.
- **Fig. 9 (p. 7):** 0.6 ms of a_1–a_8 time series, showing the quasi-periodic 34 kHz pair and the lag between partners.
- **Fig. 10 (p. 8):** set-up 2 eigenfunctions and PSDs; the aliased St 1.5 peak in a_2.
- **Fig. 11 (p. 8):** set-up 3 top-view eigenfunctions (flapping mode 1) and broad St 0.46–0.70 PSDs.

## Notation
- D_h: hydraulic diameter at the exit (44.1 mm); D_e: effective diameter (defined, not used in results); x streamwise, y minor axis, z major axis (Nomenclature, p. 1).
- M_j,1, M_j,3: ideally expanded Mach numbers of bulk flow and third stream; U_j: ideally expanded bulk velocity; a: ambient sound speed.
- St = f D_h / U_j. L_c: core length. TI: turbulence intensity.
- n′: refractive-index (schlieren) fluctuation; φ^(n)(x): spatial eigenfunction; a_n(t): time-dependent POD coefficient; λ^(n): eigenvalue ("mean-squared value").
- SERN: single expansion ramp nozzle; CD: convergent–divergent; PSD: power spectral density; PDU: procedure-defined units.

> Nomenclature symbols on p. 1 are scrambled in the extracted text; the list above is reassembled from context.

## Relevance to this project
Not a Shock Lab group paper (Syracuse University, Skytop Turbulence Laboratory). It is an early application of POD to time-resolved schlieren of a non-axisymmetric supersonic jet, so it is mainly useful as a methods precedent for the group's schlieren analysis and for the rectangular and non-axisymmetric jet work in CLAUDE.md.

- **Method and data dependence:**
  - Snapshot (space-only) POD eigenfunctions need no time resolution; the coefficient PSDs, mode-pair phase lags and any frequency attribution do. Set-up 2 shows the trap: the dominant 34.4 kHz signal folds to 15.6 kHz at 50 kHz sampling (p. 8). For the group's schlieren and for non-time-resolved PIV, check the tone of interest against Nyquist, and treat spatial modes from decimated snapshots as frequency-agnostic.
  - The "decimate to build the basis, then project the full time-resolved record" approach (p. 4) is cheap and is the right pattern when schlieren records are too long for one SVD. It is also what Hilbert POD on raw data would need as a first step. The paper does not say how far it decimates.
  - Space-only POD mixes frequencies: here only modes 1–2 come out narrowband, and modes 3–9 are broadband with peak frequency rising with mode number. This is the behaviour [towne-2018](towne-2018-spod-relationship-dmd-resolvent.md) predicts (each POD mode is an integral over SPOD frequencies), and [rowley-2009](rowley-2009-spectral-analysis-nonlinear-flows-koopman.md) and [taira-2017](taira-2017-modal-analysis-fluid-flows-overview.md) show the same. SPOD ([schmidt-2020-guide-spod](schmidt-2020-guide-spod.md)) on the same record would have separated the St 3.4 tone from the broadband corner-vortex content directly, as [mazharmanesh-2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md) does for AR 2 rectangular and elliptical jets with 150 kHz schlieren.
  - Mode pairs: the near-quadrature a_1–a_2 pair is the same signature the group uses to recover phase from POD pairs ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md), [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)). The paper only reports a lag in µs at one-sample resolution and does not use the pair for phase averaging or a phase portrait.
  - Intermittency and amplitude modulation are not examined: the 0.6 ms time series (Fig. 9) is the only time-domain view. The record (≈ 2.6 s at 100 kHz) would support the SPOD → reconstruction → Hilbert POD pipeline: rebuild the St 3.4 band (or the a_1, a_2 pair) and use HPOD ([raiola-2025](raiola-2025-hilbert-pod.md)) or SPOD frequency–time analysis ([nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)) to see whether the splitter-plate tone is steady or intermittent. That is a suggestion, not something done here.
- **Practical schlieren lessons:**
  - Using POD to strip spatially uniform light-intensity drift (from deck-plate refraction and reflections) before analysis (p. 4–5) is a useful pre-processing step for any long schlieren run with LED or window drift. The modes removed are not reported, so the effect on the remaining modes cannot be judged.
  - Mean-squared content of schlieren POD converges slowly, and more slowly for larger windows (p. 5). Expect this in group data, and do not read low per-mode percentages as a lack of coherent structure.
  - The paper ranks modes by "(dρ/dx)²", but schlieren intensity is path-integrated and only proportional to ∂ρ/∂x under the usual assumptions; [mazharmanesh-2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) is more careful, treating eigenvalues as intensity fluctuation only.
- **Physics links:**
  - The 34 kHz tone is not screech: the bulk jet is run at design (ideally expanded) and the tone is attributed to splitter-plate shedding carried along shocks (p. 6). It is still a resonance-like narrowband feature in a shock-containing jet that appears in schlieren, near-field and far-field data alike, comparable in that sense to the tones in [mazharmanesh-2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md).
  - The flapping modes at St ≈ 0.46–0.70 (top and large side views) connect to flapping in rectangular jets ([esfahani-2021-coupling-modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md), [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [yeung-2022](yeung-2022-3d-spod-twin-rectangular-jet.md)) and to the corner and streak structures in [marshall-2024](marshall-2024-prediction-streaks-rectangular-jets.md). Here they are identified by eye from eigenfunctions, without a symmetry split or wavenumber analysis.
  - Jet–surface (aft deck) interaction parallels the plate-edge and jet–flap tone work ([jordan-2018](jordan-2018-jet-flap-interaction-tones.md), [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md)), though no feedback mechanism is proposed here.
  - Other Mach-2-class rectangular-nozzle data in the library: [samimy-1998](samimy-1998-rectangular-jet-trailing-edge-control.md) and [kerechanin-2001](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md) (AR 3, trailing-edge cutouts).
- **Modelling side:** the paper offers nothing that can be compared with a model: there is no linear stability, resolvent or ROM, and the LES is cited only for the source attribution. A mean-flow stability or resolvent analysis of a SERN with a wall jet and splitter-plate wake would be needed to test the KH-shedding explanation for St 3.4; that LES is in Stack et al. 2016 and Berry et al. (TSFP 10), which are not in the library.
- **Related works cited, candidates for `/add-paper`:** Stack et al. 2016 (LES of this nozzle, AIAA 2016-2058); Berry et al. 2016 (acoustics, AIAA 2016-1883) and TSFP 10 (LES vs experiment); Magstadt et al. 2016 (near-field PIV/density, AIAA 2016-1639); Tenney et al. 2016 (coherent structures from the same schlieren, AIAA 2016-1108); Tinney, Glauser & Ukeiley 2008 (transonic jet POD, JFM 612 and 615); Willert, Mitchell & Soria 2012 (high-power LED schlieren, Exp. Fluids 53).

> Check against the PDF: (1) set-up 2 quotes St = 0.46 as f = 3.13 kHz (p. 8), but St = f D_h/U_j gives 4.7 kHz for St 0.46 (as set-up 3 states) and St ≈ 0.31 for 3.13 kHz, so one number is wrong. (2) The Fig. 6 caption reads "at 100 kHz, setup 1" but the figure shows all three set-ups. (3) Fig. 7b peak values were read from a low-resolution render.
