---
key: "kriegseis-2021-hilbert-transform-revisited-hpod"
title: "Hilbert transform revisited – Proper orthogonal decomposition applied to analytical signals of flow fields"
authors: ["Kriegseis, Jochen", "Kinzel, Matthias", "Nobach, Holger"]
year: 2021
type: "conference"
venue: "ISPIV 2021 (14th Int. Symp. Particle Image Velocimetry), extended abstract"
bib: {"booktitle": "14th International Symposium on Particle Image Velocimetry (ISPIV 2021)", "note": "August 1--5, 2021; two-page extended abstract"}
doi: "10.18409/ispiv.v1i1.113"
arxiv: ""
pdf: "time-frequency-methods/Kriegseis-EtAl_2021_Hilbert-Transform-Revisited-Proper-Orthogonal-Decomposition-Applied-To-Analytical.pdf"
version: "conference"
unverified: ["DOI 10.18409/ispiv.v1i1.113 is not printed in the PDF (supplied with the indexing request)", "proceedings volume, issue and pages are not printed in the PDF"]
group: false
facility: "Reused datasets: Laier 2015 (KIT Institute of Fluid Mechanics), Hehner et al. 2019, Mattern et al. 2017"
data: ["schlieren-TR", "PIV", "PIV-TR", "PIV-stereo"]
methods: ["HPOD", "Hilbert-transform", "POD", "POD-pair"]
flow: ["generic", "wall-bounded"]
phenomena: ["coherent-structures"]
params: {}
topics: ["time-frequency-methods", "modal-decomposition"]
related: ["raiola-2025-hilbert-pod", "horel-1984-complex-principal-component-analysis", "davey-2025-hpod-sphere-wake", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "edgington-mitchell-2020-waves-in-screeching-jets", "sieber-2016-spectral-proper-orthogonal-decomposition"]
cites: ["horel-1984-complex-principal-component-analysis", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i"]
summary: "First HPOD paper in fluids (2-p. abstract): snapshot POD of the time-Hilbert analytic signal merges POD pairs; 1C–3C test data; shuffled snapshots give POD"
---
# Hilbert transform revisited – Proper orthogonal decomposition applied to analytical signals of flow fields

- **Authors:** Jochen Kriegseis (Institute of Fluid Mechanics (ISTM), Karlsruhe Institute of Technology), Matthias Kinzel (BlackSky, Spaceflight Industries, Seattle), Holger Nobach (Max Planck Institute for Dynamics and Self-Organization, Göttingen)
- **Source:** 14th International Symposium on Particle Image Velocimetry, ISPIV 2021, August 1–5, 2021. Two-page extended abstract. The DOI (10.18409/ispiv.v1i1.113) is not printed in the PDF; it came with the indexing request.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Kriegseis-EtAl_2021_Hilbert-Transform-Revisited-Proper-Orthogonal-Decomposition-Applied-To-Analytical.pdf` (2 pp.; no printed page numbers, so "p. 1" and "p. 2" are PDF pages). p. 1 is the whole text up to the test-case description; p. 2 holds Fig. 1, the results paragraph, the closing remark and the references.
- **Tags:** Hilbert POD (HPOD), conventional (time-direction) HPOD, analytic signal, complex snapshot POD, automatic POD-pair identification, cyclograms (Lissajous figures), shuffled snapshots as a stand-in for undersampling, schlieren of a flickering candle, phase-resolved PIV over a plasma-actuator array, time-resolved stereo PIV in a side-channel pump

## Summary
This extended abstract introduced Hilbert POD to the PIV community; Raiola 2025 credits it as the method's introduction to fluids (Raiola p. 3–4). Each quantity at each point (and each velocity component separately) is turned into an analytic signal along the snapshot direction, X_i + i HT{X_i}, and the complex data then go through ordinary snapshot POD, giving real eigenvalues and complex modes (p. 1). The motivation is POD pairs: travelling periodic structures appear as two POD modes in temporal and/or spatial quadrature, and identifying pairs by experience, visual inspection or cyclograms is subjective and harder when the data are noisy (p. 1). The authors stress that the analytic signal adds **no information** to the data; HPOD only regroups it, merging each pair into one complex mode that carries amplitude and phase in space and time (p. 1). Tested on three 2D datasets with one, two and three velocity or intensity components, HPOD merged the related POD pairs automatically. Its temporal coefficients kept their "helical" (circular-in-time) character through intensity fluctuations, frequency sweeps and noise, and with shuffled snapshots HPOD fell back to "quasi-standard" POD (p. 2). The abstract gives no numbers: no energies, sampling rates, record lengths or frequencies.

## Key findings
All of these are qualitative; the abstract reports no numerical results.
- **The Hilbert transform adds no information** (p. 1). The original and the complexified data hold identical information, so the HPOD result holds equivalent information to the POD result. What changes is the grouping: pairs of coupled POD modes become single complex modes (p. 1).
- **The phase shift does not depend on frequency** (p. 1). Following Horel (1984), the Hilbert transform is presented as a "straight forward" way to get a 90° phase-shifted copy of the signal that is "independent of the fundamental frequencies". So the user need not know or select the oscillation frequency. No band-pass or other narrow-banding before the transform is mentioned. The transform is described as "the only modification of the original data" (p. 1), applied to the "raw data" (p. 2).
- **What the complex modes capture** (p. 1). They "uniquely capture amplitude and phase of both spatial and temporal evolution of moving flow patterns" (citing Barnett 1983), and can expose the phase drift of travelling waves. The main advantage claimed is easier, less subjective interpretation of the modes.
  - The abstract does **not** define or compute an instantaneous frequency. Its time-local claims are about amplitude, phase and phase drift only.
- **Automatic pairing works** (p. 2). Compared with standard POD, HPOD combined two related POD modes into one complex mode in the test cases. This held for single- and multi-component data (1C, 2C, 3C) (p. 2).
- **Robustness of the temporal coefficients** (p. 2). The histories of the reconstructed coefficients suggest that the analytic signal keeps its "helical character" (a circle traced in the complex plane over time) despite intensity fluctuations, frequency sweeps and noise. *My reading of "helical":* the coefficient circles the origin of the complex plane as time advances, i.e. the phase keeps winding. The authors state that this "does not suffer from low signal-to-noise ratios" (p. 2). No SNR values or amount of frequency sweep are given, so the claim cannot be checked from the abstract.
- **Shuffled snapshots** (p. 1–2). To mimic temporally undersampled data, the snapshots were put in arbitrary order before the Hilbert transform (p. 1). The result had "arbitrary imaginary patterns" but kept the main mode shapes in the real part of the eigenvectors, so HPOD on undersampled data "effectively only reduced to quasi-standard POD results" that remain meaningful in the POD sense (p. 2). Raiola 2025 reproduces this with a shuffled cylinder-wake DNS and cites this paper for it (Raiola p. 3, 15–16).
- **Conclusion** (p. 2). Converting raw data to an analytic signal is presented as a robust, simple preprocessing step beyond classical POD, promising for "periodical and/or fluctuating flow scenarios".
- **Not addressed anywhere in the abstract:** edge effects of the (discrete) Hilbert transform, trimming or tapering, the discrete implementation, mean subtraction, sampling-rate requirements, time or frequency resolution, multiple tones in one dataset, and any comparison with SPOD.

## Setup / method

### Algorithm (p. 1)
1. Take a set of snapshots (Sirovich 1987 snapshot POD).
2. For each spatial point, and for each component at that point separately, form the analytic signal along the snapshot (time) direction: X_i + i HT{X_i}, where HT is the discrete Hilbert transform (p. 1).
3. Run "complex, but otherwise usual" snapshot POD on the complexified data. The output is real eigenvalues and complex modes (p. 1).
4. Compare with standard POD of the real data, and inspect the histories of the reconstructed coefficients in cyclograms (p. 1–2).

Not stated: the discrete Hilbert transform implementation (FFT-based or otherwise), whether the mean was removed, any filtering, the number of snapshots, the sampling rate, the treatment of record ends, or how energies were normalised.

### Test cases (p. 1–2, Fig. 1)
All three are 2D fields "known to be dominated by periodic (oscillatory) convection of flow patterns" (p. 1). They were chosen to show that HPOD works whatever the number of quantities per point.

| Case | Data | Source | Time resolution as stated | Notes |
|---|---|---|---|---|
| (a) Burning (flickering) candle | 2D1C schlieren images; a white box marks the region of interest | Laier 2015 (bachelor's project, KIT Institute of Fluid Mechanics) | not stated. The Hilbert transform along the snapshot sequence, and the separate "undersampled" test, imply an ordered, adequately sampled sequence | buoyant plume above a flame |
| (b) Discharge-based Stokes layer | 2D2C **phase-resolved** planar PIV above an oscillating plasma-actuator array | Hehner et al. 2019 | phase-resolved (phase-locked), not time-resolved; Fig. 1b axes are x/λ = 0–4 and y/λ = 0–0.8 | λ is not defined in the abstract; presumably the actuator's spatial wavelength |
| (c) Side-channel flow | 2D3C **time-resolved** stereo PIV in the side channel of a regenerative pump | Mattern et al. 2017 | time-resolved | rotating impeller (Ω in Fig. 1c); colour shows out-of-plane velocity |

Each dataset was also run with snapshots in arbitrary order (p. 1).

- **Simulation and modelling side:** none. There are no simulations, stability analyses, resolvent analyses or reduced-order models; the datasets are all experimental and reused from earlier work.

## Key equations
The abstract prints one expression (p. 1): the analytic signal of a real signal X_i,
$$\tilde X_i = X_i + \mathbf{i}\,\mathrm{HT}\{X_i\},$$
with HT{·} the (discrete) Hilbert transform and **i** the imaginary unit. Snapshot POD of the complex data then gives real eigenvalues and complex modes (p. 1).

> Not in this paper: the continuous Hilbert transform, the FFT recipe (zero the negative-frequency bins, double the positive ones) and the instantaneous-frequency definition f = (1/2π) dφ/dt are written out in [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) (eq. 2.15–2.21, Raiola p. 8). Horel's FFT-based construction with a band-pass weight W(ω) is in [horel-1984-complex-principal-component-analysis.md](horel-1984-complex-principal-component-analysis.md) (Horel p. 1661–1662).

## Data tables
None; the abstract reports no numbers.

## Figures worth remembering
- **Fig. 1 (p. 2):** one random snapshot from each test case. (a) Schlieren of a flickering candle with the region of interest boxed. (b) PIV vectors above the plasma-actuator array over x/λ = 0–4. (c) Stereo-PIV vectors in the curved side channel of the pump, coloured by out-of-plane velocity. No results figures are included.

## Notation
- X_i: real input signal (any measured quantity at a point; each velocity component is treated separately). HT{X_i}: its discrete Hilbert transform. X_i + i HT{X_i}: the analytic ("analytical") signal (p. 1).
- HPOD: Hilbert POD, here the conventional variant with the transform along the snapshot direction (HPOD_t in Raiola 2025's terms).
- 1C, 2C, 3C: one-, two- and three-component data. ROI: region of interest. Cyclogram: Lissajous figure of two POD coefficients.
- λ (Fig. 1b): length scale for the axes, undefined in the abstract. Ω (Fig. 1c): impeller rotation.

## Relevance to this project
- **Place in the HPOD lineage.** This is the step between Horel's complex PCA ([horel-1984-complex-principal-component-analysis.md](horel-1984-complex-principal-component-analysis.md)) and the full method paper ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)). It brought the time-direction variant (HPOD_t) to PIV data and framed it as an automatic POD-pair finder (p. 1–2). The space-only variant, the proof that the modes are analytic, the reduction to SPOD, the 15% end trimming and the spectrogram reading of instantaneous frequency all came later in Raiola 2025. [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md) cites it as ref. [35].
- **Which data it suits.**
  - HPOD_t as described here needs **ordered, time-resolved** (or at least phase-ordered) snapshots. On shuffled snapshots it gives a meaningless imaginary part but a POD-like real part (p. 2). This is a quiet failure, not a crash. For the lab's non-time-resolved PIV, use HPOD_x (Raiola 2025) or Davey's spatial-Hilbert pairing test instead.
  - Case (b) applies the transform along a **phase-resolved** sequence (p. 2, Fig. 1b). *My inference:* the same could be done along phase-sorted screech or impinging-jet PIV (e.g. after POD-pair phase sorting, as in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)). Since the "time" axis is then a phase imposed by the sorting, the result can merge pairs but carries no information on instantaneous frequency.
  - For time-resolved schlieren, acoustics or LES, this is the HPOD step of the SPOD → reconstruction → HPOD pipeline in CLAUDE.md.
- **Raw data or narrow-banded data.** The authors apply the Hilbert transform to raw data with no filtering (p. 1–2) and report robustness to noise and frequency sweeps (p. 2). They read the result only as merged pairs and circular coefficient histories, never as an instantaneous frequency. Their test flows were each dominated by one periodic convective process (p. 1). So the abstract does not test what happens when several tones or broadband turbulence share the analytic signal. For instantaneous frequency in resonant jets, the narrow-banding step of the pipeline (SPOD reconstruction, or Horel's W(ω)) is still needed ([Huang 1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md), p. 12–14).
- **Edge effects** are not mentioned here (p. 1–2). Apply the 10–15% end trimming from Horel (p. 1662) and Raiola (p. 16) in any implementation.
- **Comparison with POD pairs.** For a clean periodic flow, HPOD and the complex POD pair Φ = φ₁ + iφ₂ used in the group's screech PIV ([edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)) describe the same structure. HPOD's advantage is that the pairing is automatic (p. 1–2). [sieber-2016-spectral-proper-orthogonal-decomposition.md](sieber-2016-spectral-proper-orthogonal-decomposition.md) reaches analytic coefficient pairs by a different route, filtering the correlation matrix.
- **Modelling side:** the paper has none, so it offers no comparison with stability or resolvent predictions.
- **Follow-up candidates for `/add-paper`:** Barnett (1983), complex EOFs of monsoon and trade-wind data (Mon. Wea. Rev. 111); Pfeffer et al. (1990), complex PCA of laboratory baroclinic waves (J. Atmos. Sci. 47), the earliest laboratory-fluids use cited here.
