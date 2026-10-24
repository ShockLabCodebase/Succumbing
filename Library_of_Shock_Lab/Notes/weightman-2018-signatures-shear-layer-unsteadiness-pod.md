---
key: "weightman-2018-signatures-shear-layer-unsteadiness-pod"
title: "Signatures of shear-layer unsteadiness in proper orthogonal decomposition"
authors: ["Weightman, Joel L.", "Amili, Omid", "Honnery, Damon", "Soria, Julio", "Edgington-Mitchell, Daniel"]
year: 2018
type: "article"
venue: "Exp. Fluids 59, 180"
bib: {"journal": "Experiments in Fluids", "volume": "59", "number": "12", "pages": "180", "publisher": "Springer"}
doi: "10.1007/s00348-018-2639-4"
arxiv: ""
pdf: "modal-decomposition/Weightman-EtAl_2018_Signatures-Of-Shear-Layer-Unsteadiness-In-Proper-Orthogonal-Decomposition.pdf"
version: "published"
unverified: ["issue number 12 taken from the Weightman 2019 thesis note; this PDF prints only 59:180"]
group: true
facility: "Shock Lab group facility (LTRAC gas jet facility)"
data: ["PIV", "synthetic"]
methods: ["statistics", "POD", "POD-pair", "conditional-sampling"]
flow: ["impinging-jet", "round-jet", "supersonic", "underexpanded", "shear-layer"]
phenomena: ["coherent-structures", "helical", "intermittency", "mean-flow-deformation", "impingement-tones"]
params: {"NPR": "3.4 (case 1 and the Fig. 1a free jet); 3.6 (Fig. 1b cylinder case)", "M_j": "1.42 (as printed; isentropic value for NPR 3.4 is 1.45)", "z/D": "5.0, flat plate of side 17.7D (case 1); 3.5 on a cylindrical section of radius 2.5D (Fig. 1b)", "t/D": "0.1", "D": "15 mm", "Re": "8.5×10⁵ (M_j c_j D_j/ν)", "N": "10,000 PIV image pairs; 10,000 synthetic fields per case", "δ_y": "N(0.4, 0.05²) in the varying synthetic case; σ = 0.04–0.08 in the sweep"}
topics: ["modal-decomposition", "time-frequency-methods", "impinging-jets-and-edge-tones", "diagnostics-and-facilities"]
related: ["weightman-2019-sound-production-impinging-supersonic-jets", "weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet", "weightman-2017-phase-lag-supersonic-jet-impingement", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "tan-2017-broadband-velocity-fluctuations-screeching-jets", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "nogueira-2021-twin-jet-coupling-spatial-lsa", "bell-2021-intermittent-modal-coupling-screeching-twin-jets", "ivelja-2024-modal-analysis-screeching-elliptical-jets", "raiola-2025-hilbert-pod", "davey-2025-hpod-sphere-wake", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "taira-2020-modal-analysis-applications-outlook", "sieber-2016-spectral-proper-orthogonal-decomposition"]
cites: ["alkislar-2003-screeching-rectangular-jet-stereo-piv", "berkooz-1993-proper-orthogonal-decomposition-turbulent-flows", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "mitchell-2013-near-field-structure-underexpanded-elliptic-jets", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "tan-2017-broadband-velocity-fluctuations-screeching-jets", "weightman-2017-phase-lag-supersonic-jet-impingement"]
summary: "Unpaired POD 'shear thickness mode' in NPR 3.4 impinging-jet PIV tracks helical-pair amplitude (ρ 0.74) and δ_ω; Stuart-vortex test; v-only POD hides it"
---
# Signatures of shear-layer unsteadiness in proper orthogonal decomposition

- **Authors:** Joel L. Weightman, Omid Amili, Damon Honnery, Julio Soria, Daniel Edgington-Mitchell (Laboratory for Turbulence Research in Aerospace and Combustion, Dept of Mechanical and Aerospace Engineering, Monash University) (p. 1). This is the user's own paper. The experiment is in the "LTRAC gas jet facility" (p. 4); no lab space is named, so the facility field reads "Shock Lab group facility".
- **Source:** Experiments in Fluids (2018) 59:180, doi:10.1007/s00348-018-2639-4. Received 19 Feb 2018, revised 24 Oct 2018, accepted 27 Oct 2018, published online 9 Nov 2018 (p. 1). Funded by ARC Discovery Project DP160102833, with NCI computing (p. 15).
- **PDF:** index key `modal-decomposition/Weightman-EtAl_2018_Signatures-Of-Shear-Layer-Unsteadiness-In-Proper-Orthogonal-Decomposition.pdf`, 15 pp., Springer version of record (password-protected against the Read tool; text taken with `pdftotext`). The text layer drops all Greek letters and equation symbols, so the equations, tables and figure values here were checked on page images rendered at 300 dpi.
- **Page refs:** "(p. N)" is the journal page ("Page N of 15"), which equals the PDF page. The paper is reprinted as Ch. 3 of the [Weightman 2019 thesis](weightman-2019-sound-production-impinging-supersonic-jets.md), which adds a POD convergence section (§3.7) not in this paper.
- **Tags:** snapshot POD, method of snapshots, POD mode pair, phase portrait, joint PDF of POD coefficients, shear thickness mode (STM), pair amplitude r₁₂, Pearson correlation of POD coefficients, quintile conditioning, conditional mean velocity, vorticity thickness, amplitude modulation, intermittency, POD basis variable (u, v, ω_z), region of interest, mode matching by spatial correlation, jackknife/resampling convergence, Stuart vortices, synthetic data, PIV, underexpanded impinging jet, helical mode.

## Summary
POD of non-time-resolved PIV of resonating jets often gives, besides the energetic travelling-wave pair, a low-energy mode with clear structure and no partner. The paper names it the **shear thickness mode (STM)** and explains it with 10,000 PIV snapshots of an underexpanded jet (NPR 3.4) impinging on a flat plate at z/D = 5 (case 1), and with synthetic Stuart-vortex shear layers (case 2). In the jet, the STM coefficient correlates with the per-snapshot amplitude r₁₂ of the dominant helical pair (Pearson 0.74, against < 0.15 for every other mode); conditioning on it shows that it describes snapshot-to-snapshot changes in shear-layer thickness, with a 27% spread in vorticity thickness at x/D = 3.6. Synthetic fields produce the mode only when the layer width varies between snapshots, not when vortices merely translate, and its energy grows with both the size and the frequency of occurrence of that variation. The mode appears whatever variable POD is run on, but its energy and rank do not: transverse-velocity-only POD nearly hides it, so energy ranking and a single basis can hide physically important modes.

## Key findings

### The mode and why it is easy to miss
- **It recurs in the group's PIV:** underexpanded free and impinging jets, flat and curved impingement surfaces. When present it is usually within the 10 most energetic modes but carries little energy (p. 3).
- **Its shape and rank vary with the flow.** Fig. 1 shows it as mode 2 of a free jet at NPR 3.4 and as mode 10 of an NPR 3.6 jet impinging on a cylindrical section of radius 2.5D at z/D = 3.5. Only the boxed region looks alike, so identifying it by shape is unreliable (p. 3).
- **Energy is not the whole story.** Keeping one pair, or enough modes for an energy fraction (Tinney et al. 2008), or adding modes until a measured parameter changes (Tan et al. 2017), can miss physics held in low-energy modes (p. 3).

### Case 1: the pair and the STM (impinging jet, NPR 3.4, z/D 5)
- **Statistics:** three shock cells before the stand-off shock; high variance of both velocity components along the shear layer (p. 5, Fig. 3).
- **Leading pair:** modes 1–2 hold ≈ 33.7% together (p. 5; ≈ 17.7% and 16.1% read from Fig. 5a). The joint PDF of (a₁, a₂)/⟨r_m⟩ is an annulus, so they are a pair, mode 2 90° out of phase with mode 1 (p. 6). Mode 2's shear-layer extrema sit at mode 1's nodes (p. 6).
- **Helical, single mode:**
  - The axial component of modes 1–2 is antisymmetric, so the instability is asymmetric. Energy concentrated in one pair, with the nozzle and plate geometry, makes a helical mode (m = ±1) more likely than a precessing flapping mode (Edgington-Mitchell et al. 2014a) (p. 6).
  - No symmetric POD pair appears in the first 20 modes, and the acoustic spectrum (not shown) has one peak. Since m = 0 and m = 1 would likely give different tones, the authors conclude only one instability mode is active, unlike the helical–toroidal switching of Kumar et al. (2013) and the coexistence in Weightman et al. 2017b (p. 6).
- **Modes 3 and 4 are not a pair.** They hold 3.9% and 1.7%, their shapes differ, and their phase portrait (not shown) is not an annulus (p. 6). (The JFM version describes it as a cardioid; [Weightman et al. 2019](weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet.md), p. 430–431.)
- **Mode 3 is the STM** (p. 6, Fig. 6c, g):
  - It varies along the whole jet rather than oscillating at the vortex wavelength, and its transverse component continues into the radial wall flow (Fig. 6g).
  - Its spatial extent is too large for it to describe individual shear-layer vortices.
  - Read from Fig. 6 (p. 7): its axial component is symmetric about the axis (negative lobes along both outer shear-layer edges, growing downstream, positive inside), and its transverse component is antisymmetric. The helical pair has the opposite symmetry (antisymmetric φ_x).

### STM coefficient against pair amplitude (p. 6–8, Fig. 7)
- On the (a₁, a₂) portrait coloured by the STM coefficient, strongly negative values lie on the outside of the ring and strongly positive ones near the origin (p. 6–7). Snapshots with a weak helical contribution tend to have a positive STM coefficient (p. 7).
- **Pearson correlation of r₁₂ = √(a₁² + a₂²) with the coefficients of modes 1–20:** 0.74 for the STM, below 0.15 for all others (p. 7). The authors propose this correlation, not spatial shape, as the way to identify the STM (p. 7).
  - Read from Fig. 7b: modes 1, 2 and 4 ≈ 0.00–0.02; modes 5, 6, 7, 10, 16 ≈ 0.10–0.11; mode 17 ≈ 0.13 (the largest of the rest).

> Fig. 7b plots 0.74 as positive although Fig. 7a shows the STM coefficient falling as r₁₂ grows, and all 20 plotted values are ≥ 0. So |ρ| is probably plotted (POD signs are arbitrary anyway). The p. 7 text also refers to "the phase portrait of Fig. 7b" where Fig. 7a is meant.

### STM against shear-layer thickness (p. 8–9, Figs. 8–9)
- The snapshots are split into quintiles of the STM coefficient (set 1 most negative, set 5 most positive) (p. 8).
- **Conditional mean axial velocity at x/D = 3.6:** the transverse gradient steepens as the STM coefficient rises, so the STM is tied to jet spreading. The station maximises the difference between sets while avoiding the wall's radial flow (p. 8).
- **Conditional vorticity thickness δ_ω(x), x/D = 0–4** (p. 8, Fig. 8b):
  - Equal for all sets up to x/D ≈ 1.4, then diverging, more so after the second shock reflection. The humps in each curve lie just downstream of the reflection points at x/D ≈ 1.4 and ≈ 2.8.
  - At x/D = 3.6 sets 1 and 5 differ by ≈ 0.12D, which is 27% of the full-set δ_ω there.
  - Set 5 (most positive STM coefficient, weakest pair) has the thinnest layer; thickness rises steadily as the coefficient falls (p. 8–9).
  - Read from Fig. 8b at x/D ≈ 3.6: set 1 ≈ 0.44D, set 2 ≈ 0.43D, set 3 ≈ 0.40D, set 4 ≈ 0.38D, set 5 ≈ 0.32D, full set ≈ 0.44D (0.12/0.44 = 27%, consistent with the text).
- **Instantaneous vorticity** (Fig. 9, p. 9): at the 95th percentile of the STM coefficient the vorticity sheets are almost straight; at the 5th percentile the peak vorticity meanders across the jet, with larger vorticity "packets" at x/D ≈ 2.4 (upper layer) and 3.2 (lower layer).
- **The paper's three conclusions** (p. 9): the STM cannot describe individual vortex size; its coefficient correlates strongly with the pair amplitude; it correlates with shear-layer thickness.
- **Interpretation** (p. 9): the snapshots differ by the amplitude of one helical mode, not by switching between modes. The STM is the change in shear-layer thickness between snapshots caused by unsteadiness in the size of the large-scale structures that drive the feedback loop.

### Case 2: synthetic Stuart-vortex shear layer (p. 9–12, Figs. 10–15)
- **Base case** (constant vortex amplitude and layer width; vortices displaced only in x):
  - u/U_E = 1 at the bottom of the domain and 0 at the top; v/U_E spans ±0.12 (p. 9, Fig. 10).
  - Modes 1–2 hold ≈ 99% (p. 10; ≈ 49.9% and 49.1% read from Fig. 11a), and the phase portrait is an almost perfect circle, reflecting strict periodicity, a large sample and no noise (p. 9–10).
  - Modes 3–4 (≈ 0.5% each, Fig. 11a) are also a pair: the first harmonic of modes 1–2. The mode-3 colour on the portrait goes through two cycles per cycle of the pair (p. 10, Fig. 11b).
  - **No STM.** Pure translation is captured entirely by the 90°-shifted pair (p. 10).
- **Varying case:** δ_y drawn per snapshot from a Gaussian with mean 0.4 and standard deviation 0.05; A and δ_x fixed (p. 9).
  - δ_x is fixed because a spectrogram of the impinging-jet acoustics (not shown) gave a nearly constant tone frequency, which sets the vortex spacing (p. 9).
  - In the Stuart model, changing δ_y changes both the vortex shape and the mean velocity profile across the layer (p. 9).
  - The pair loses energy and mode 3 takes "≈ 6%" (p. 11). The colour pattern on the portrait matches Fig. 7 (p. 11, Fig. 13b).
  - Mode 3 has the STM's structure for a single layer (Fig. 14c): read from the figure, its axial component is uniform in x and a dipole across the layer. Its transverse component looks like those of modes 1–2 but is an order of magnitude weaker than its axial component, so it hardly changes the transverse fluctuations (p. 11). Mode 4 has the harmonic structure (Fig. 14d, h).
  - **Quintiles repeat the experiment:** the transverse gradient of u rises and δ_ω falls with the STM coefficient (p. 11–12, Fig. 15). With no spreading the statistics are averaged over x as well as over snapshots, so each set has one δ_ω (p. 11).

> Synthetic STM energy: the text says ≈ 6% (p. 11), but Fig. 13a reads ≈ 7.2%, Fig. 17b (u, v) ≈ 7.3% and Fig. 18a at σ = 0.05 ≈ 7.4%. Quote ≈ 7% from the figures, or check.

- **Note's check (not in the paper): the quintiles sort snapshots by δ_y almost perfectly.** For the mean Stuart profile, δ_ω = 2δ_y/√(1 + A²). With A ≈ 0.24 (from v_max/U_E = A/2 = 0.12 if δ_x = δ_y; Fig. 10 gives a vortex wavelength ≈ 2.5 = 2π × 0.4, so δ_x ≈ 0.4 = mean δ_y), the conditional means of N(0.4, 0.05²) quintiles predict δ_ω = 0.914, 0.830, 0.778, 0.726, 0.642 and 0.765 for the full set (where E[1/δ_y] sets the slope). Fig. 15b reads 0.908, 0.828, 0.776, 0.725, 0.638 and 0.765. So in the model the STM coefficient is close to a monotonic proxy for δ_y.

### POD basis variable and region of interest (p. 12–14, Figs. 16–17)
- **Bases:** (u, v) as reference, u only, v only, and ω_z = ∂v/∂x − ∂u/∂y. Each mode of a basis is matched to the first three reference modes by the cross-correlation of mode shapes, always above 0.95 for like modes (p. 12).
- **PIV, full field** (p. 12, Fig. 16a):
  - ω_z gives much lower relative energies than the velocity bases. The pair stays first and second, but the STM drops to rank 4.
  - u-only keeps the reference order; v-only swaps the order of the pair.
  - All three velocity bases rank the STM 3rd, but its energy in u-only POD is almost twice that in v-only, because the STM's mode values are larger in the axial component (p. 12). Read from Fig. 16a: ≈ 5.4% (u) against ≈ 2.85% (v), 3.9% (u, v) and ≈ 0.75% (ω_z).
- **PIV, reduced ROI excluding x/D > 3.6** (removing the wall's radial flow; Fig. 16b): the v-based STM falls to less than ≈ ¼ of the u-based mode 3 and ranks 6th (p. 12); read ≈ 0.9% against ≈ 4.3%. The impinging jet is unusual because the mean flow turns at the wall, unlike a free jet, wake or mixing layer (p. 12).
- **Synthetic** (full field only, since there is no strong radial flow; p. 13, Fig. 17):
  - Base case: energies barely change with basis; the u and ω_z bases swap the order of modes 1–2, but the harmonic mode 3 keeps its rank (p. 13).
  - Varying case: the pair order swaps again (read from Fig. 17b: in the u and ω_z bases, not the v basis that swapped in the PIV). The STM energy ranges widely: ≈ 23.6% (u), ≈ 7.3% (u, v), ≈ 3.0% (ω_z), ≈ 0.3% (v, "almost zero", ranked 14th by the colour bar) (p. 13).
- **Conclusion** (p. 13–14): every basis captures the pair as its two leading modes and the STM lower down, with the same spatial structure. The STM's presence does not depend on the basis, but its energy does, so look beyond the most energetic modes and decompose with several variables before choosing the modes that describe the flow.

### What sets the STM energy (p. 14, Fig. 18)
- **Size of the variation:** as σ(δ_y) rises from 0.04 to 0.08 (the base varying case is 0.05), STM energy rises from ≈ 5% to ≈ 17% (Fig. 18a). The further vortex size departs from the mean, the more energy the STM takes (p. 14).
- **"Intermittency in the statistical sense":** a growing percentage of snapshots is given a δ_y that deviates from the mean. At 0% there is no STM; its energy grows steadily to ≈ 7.4% at 100% (Fig. 18b). The authors read STM energy as a possible indicator of intermittent unsteadiness (p. 14).
- They conclude that both the amplitude and the intermittency of vortex-size variation set the STM's share (p. 14).
- **Note's check (not in the paper): one variable explains both panels.** Let f be the STM energy fraction. f/(1 − f) = k Var(δ_y) with one fitted k ≈ 32 reproduces all 11 points within 0.35 percentage points: 4.9, 6.0, 7.5, 9.5, 12.5, 17.1% at σ = 0.04, 0.044, 0.05, 0.057, 0.067, 0.08 (read 5.0, 5.9, 7.4, 9.3, 12.9, 17.0); and, if the deviating snapshots draw from N(0.4, 0.05²) and the rest sit at 0.4 (Var = pσ²; not stated in the paper), 1.6, 3.1, 4.6, 6.1, 7.5% at p = 20–100% (read 1.6, 3.2, 4.7, 6.0, 7.4).
  - So, in this model, STM energy measures the **variance** of the layer width. It cannot tell rare large excursions from frequent small ones; that needs the distribution of the STM coefficient (kurtosis, bimodality), not its eigenvalue.
  - The six σ values are 0.4/10, 0.4/9, …, 0.4/5 (read from tick positions), i.e. coefficients of variation of 10–20%.

### Convergence (p. 5, Fig. 4)
- For each sample count N = 100, 250, 500, 1000, 2500 and 5000, POD is computed on 200 random resamples of the data set ("jackknife", Efron 1982); like modes are matched by correlation, and a 95% confidence range of relative energy is formed from the variance over the 200 resamples (p. 5).
- At N = 5000 the range is below 1.7% of the energy of modes 1–2 and 2.6% for mode 3. Higher N was not tested because of processing limits; with 10,000 snapshots the energies are judged converged (p. 5).
- Read from Fig. 4 (E₉₅%/E_Full): ≈ 0.2 for all three modes at N = 100; modes 1–2 ≈ 0.11, 0.07, 0.045, 0.029, 0.015–0.017 and mode 3 ≈ 0.14, 0.10, 0.07, 0.041, 0.026 at N = 250–5000. The STM's range is ≈ 1.3–1.7× wider than the pair's from N = 250 on.

> "Jackknife" here means random subsampling, not leave-one-out. Whether resamples are drawn with or without replacement is not stated. If without, the spread at N = 5000 of 10,000 understates that of an independent 5000-snapshot set (finite-population factor √(1 − N/N_tot) ≈ 0.71). Whether E₉₅% is the full width or the half-width is also not stated.

## Setup / method

### Flow and facility (p. 4, Fig. 2, Table 1)
- LTRAC gas jet facility (details in Weightman et al. 2016): compressed air through a pressure regulator into a plenum with a pressure transducer and a smoke-generator inlet, then a nozzle of exit diameter D = 15 mm (contracting in the Fig. 2 schematic), onto a square plate of side 17.7D at stand-off z.
- NPR is plenum to ambient. Re = M_j c_j D_j/ν, with c_j the sound speed at ideally expanded conditions and D_j the exit diameter of a C-D nozzle of throat D that would expand ideally (p. 4). Temperature is not stated.

| NPR | M_j | z/D | t/D | Re |
|---|---|---|---|---|
| 3.4 | 1.42 | 5.0 | 0.1 | 8.5 × 10⁵ |

> M_j = 1.42 is as printed; the isentropic value for NPR 3.4 is 1.45 (the thesis and JFM notes record the same pair).

### PIV (p. 4–5, Table 2)
| Parameter | Value | Non-dimensional |
|---|---|---|
| Camera | Imperx B6640, 12-bit, 6600 × 4400 px; 200 mm Micro-Nikkor + Nikon PK-12 extension ring | — |
| Laser | dual-cavity pulsed Nd:YAG, 532 nm; diverging sheet ≈ 1 mm thick | — |
| IW₀ (first window) | 192 × 192 px | 0.151D × 0.151D |
| IW₁ (final window) | 24 × 24 px | 0.019D × 0.019D |
| Spatial resolution | 11.8 µm/px | — |
| Vector spacing | 6 px | 0.005D |
| Depth of field | 0.55 mm | 0.037D |
| Field of view | 78 × 52 mm | 5.2D × 3.4D |
| Time delay ΔT | 884 ns | — |

- **Seeding:** ViCount 1300 smoke in both jet and entrained air. Particles ≈ 600 nm, from a relaxation time of ≈ 2 µs measured in this facility (Mitchell et al. 2013; Melling 1997), assumed monodisperse. Particle images are diffraction-limited at 18 µm (1.5 px), giving minimal pixel locking (p. 4).
- **Processing:** 10,000 "time-independent" single-exposure image pairs; multigrid cross-correlation (Soria 1996) with 0.1 px minimum resolvable displacement, needed for the large velocity range between core and entrainment field. Validation by normalised median test (threshold 3.0) and dynamic mean test (1.0, standard deviation 1.0) (p. 5).
- Derived: 6 px spacing on a 24 px final window is 75% overlap; the depth of field (0.55 mm) is about half the sheet thickness (≈ 1 mm).

### POD and its diagnostics
- **POD:** method of snapshots (Sirovich 1987) on fluctuating fields, u′ and v′ stacked in each column (eqs. 1–5, p. 3–4). No weighting is mentioned; the PIV grid is uniform. Variables are (u, v) unless stated (p. 4).
- **Pair test:** phase portrait of a₁ against a₂; a ring means a pair describing a periodic phenomenon (Oberleithner et al. 2011), turbulence spreads it into an annulus (p. 4). Joint PDF with bins of 0.4⟨r_m⟩ in each direction and 75% overlap, coefficients normalised by ⟨r_m⟩ (p. 6).
- **STM identification:** Pearson correlation between r₁₂ (eq. 9) and the coefficients of modes 1–20 (p. 7).
- **Conditional statistics:** quintiles of the STM coefficient; conditional mean u at x/D = 3.6 and δ_ω(x) (eq. 10) per quintile; vorticity snapshots at the 5th and 95th percentiles (p. 8–9).
- **Basis comparison:** POD of (u, v), u, v and ω_z, matched by spatial cross-correlation (> 0.95); u and v repeated on an ROI excluding x/D > 3.6 (p. 12).
- **Convergence:** resampling as above (p. 5).

### Synthetic model (p. 5, 9, 14)
- A single row of Stuart vortices of amplitude A convected at U_c, giving a half-jet with maximum mean velocity 2U_c (= U_E in Fig. 10). Layer width δ_y, vortex spacing 2πδ_x, layer centre at y = 0 (eqs. 6–8, p. 5; Stuart 1967, Shariff & Manning 2013).
- Two sets of 10,000 statistically independent two-component fields (p. 9): **base** (fixed A, δ_y, δ_x; vortices displaced only in x) and **varying** (δ_y ∼ N(0.4, 0.05²) per snapshot).
- Sweeps (p. 14): σ(δ_y) = 0.04–0.08; 0–100% of snapshots given a deviating δ_y.
- **Not stated:** A, δ_x, domain size and grid, how vortex positions are drawn, and the δ_y distribution of the deviating snapshots in the intermittency sweep. From Fig. 10 (read): domain x ≈ 0–16, y ≈ ±1.5 (lengths unscaled); vortex wavelength ≈ 2.5, so δ_x ≈ 0.4; and A ≈ 0.24 from the v range (note's inference, see the quintile check above).
- **Modelling assumptions:** the Stuart solution is an exact steady inviscid solution in the convected frame, used purely kinematically. It is 2D, parallel (no spreading), noise-free, with one row of identical vortices at fixed spacing. There is no dynamics, so it shows what POD does with a prescribed kinematic change but cannot say why the layer thickness varies.
- **Agreement with experiment:** it reproduces the STM's shape for a single layer, its correlation with r₁₂ and the δ_ω trend across quintiles. It cannot reproduce the growth of the thickness difference with x (no spreading), the STM's transverse component (no wall jet or spreading), or the noise level (pair at 99% vs 34%).

### What each analysis needs from the data
| Analysis | Time-resolved? | Key parameters / preprocessing | Pages |
|---|---|---|---|
| Mean and variance | No | 10,000 snapshots | 5 |
| Snapshot POD | No | mean subtracted; (u, v), u, v or ω_z; full field or ROI | 3–4, 12 |
| POD-pair phase portrait / joint PDF | No | ring test; bins 0.4⟨r_m⟩, 75% overlap | 4–6 |
| r₁₂ and Pearson correlation with a_n | No | first 20 modes | 7 |
| Quintile conditioning, δ_ω | No | conditional means at each x; U₁ = 0, U₂ = U_E | 8 |
| Percentile vorticity snapshots | No | ω_z of single snapshots | 9 |
| Resampling convergence | No | 200 resamples, N = 100–5000 | 5 |
| Constant-tone assumption behind fixed synthetic δ_x | Yes (acoustics) | spectrogram of the acoustic signal (not shown) | 9 |

## Key equations
Method of snapshots (eqs. 1–3, p. 3):
$$\boldsymbol R\boldsymbol\nu=\lambda\boldsymbol\nu,\qquad \boldsymbol R=\boldsymbol V^{\mathrm T}\boldsymbol V,\qquad \boldsymbol V=\big[\boldsymbol u'^1\;\boldsymbol u'^2\;\cdots\;\boldsymbol u'^N\big],$$
each column stacking $u'_{11}\dots u'_{lm}$ then $v'_{11}\dots v'_{lm}$ for an $l\times m$ vector grid with $l\,m\gg N$. Eigenvalues sorted $\lambda_n>\lambda_{n+1}$ (p. 4). R has no 1/N factor.

Spatial modes and coefficients (eqs. 4–5, p. 4):
$$\boldsymbol\phi_n(\boldsymbol x)=\frac{\boldsymbol V\boldsymbol\nu_n(t)}{\lVert\boldsymbol V\boldsymbol\nu_n(t)\rVert},\qquad \boldsymbol a_n(t)=\boldsymbol\nu_n(t)\,\lVert\boldsymbol V\boldsymbol\nu_n(t)\rVert .$$
With unit-norm ν_n, ‖Vν_n‖ = √λ_n, so Σ_k a_n(t_k)² = λ_n (derived).

Pair phase (p. 4): $\hat a_k\,e^{i\theta_k}=a_1(t_k)+i\,a_2(t_k)$. Normalisation (p. 6): $\langle r_m\rangle=\big\langle\sqrt{a_1^2+a_2^2}\big\rangle$.

Pair amplitude per snapshot (eq. 9, p. 7):
$$r_{12}(t)=\sqrt{a_1^2(t)+a_2^2(t)} .$$

Vorticity thickness (eq. 10, p. 8):
$$\delta_\omega=\frac{U_2-U_1}{\left(\mathrm dU/\mathrm dy\right)_{\max}},$$
with U₂ = U_E (jet exit velocity) and U₁ = 0 (ambient), from the full-set or conditional mean axial velocity at each x/D from 0 to 4.0. Because U₂ − U₁ is fixed, the set-to-set differences come only from (dU/dy)_max.

Stuart vortex row (eqs. 6–8, p. 5):
$$u(\boldsymbol x,t)=U_c\left(1-\frac{\sinh\tilde y}{\cosh\tilde y+\tilde A\cos\tilde x}\right),\qquad v(\boldsymbol x,t)=-U_c\left(\frac{\tilde A\,\sin\tilde x}{\cosh\tilde y+\tilde A\cos\tilde x}\right),$$
$$\tilde x=\frac{x-U_c t}{\delta_x},\qquad \tilde y=\frac{y}{\delta_y},\qquad \tilde A=\frac{A}{\sqrt{A^2+1}} .$$

> Eq. 7 is printed with $\tilde A\sinh(\tilde x)$; Stuart's solution has $\sin\tilde x$ (sinh would not be periodic); the thesis note flags the same typo. The streamfunction $\psi=U_c[\,y-\delta_y\ln(\cosh\tilde y+\tilde A\cos\tilde x)]$ gives $v=-U_c(\delta_y/\delta_x)\tilde A\sin\tilde x/(\cdot)$, so the printed form is divergence-free only for δ_x = δ_y. That holds in the base case if δ_x ≈ 0.4 as Fig. 10 suggests, but not snapshot by snapshot in the varying case. Whether the code included δ_y/δ_x affects the varying-case v statistics and the v-basis result; check the code if available.

Derived for the mean Stuart profile (note's calculation): $\overline u=U_c\big[1-\sinh\tilde y/\sqrt{\cosh^2\tilde y-\tilde A^2}\big]$, so $\delta_\omega=2\delta_y/\sqrt{1+A^2}$, and $v_{\max}=U_cA$ at y = 0 when δ_x = δ_y.

Vorticity basis (p. 12): $\omega_z=\partial v/\partial x-\partial u/\partial y$.

## Data tables

**Case 1 POD energies, (u, v) basis** (% of fluctuating kinetic energy; p. 5–6, Fig. 5a)

| Mode | 1 | 2 | 3 (STM) | 4 | 1–2 | 1–20 |
|---|---|---|---|---|---|---|
| Energy | ≈ 17.7 (fig.) | ≈ 16.1 (fig.) | 3.9 | 1.7 | ≈ 33.7 | ≈ 53 (fig.) |

**Like-mode energies by POD basis** (%; read from Figs. 16–17 unless noted; rank within that basis in brackets)

| Data | Reference mode | (u, v) | u | v | ω_z |
|---|---|---|---|---|---|
| PIV, full field | 1 | ≈ 17.7 [1] | ≈ 18.5 [1] | ≈ 17.1 [2] | ≈ 4.2 [1] |
| PIV, full field | 2 | ≈ 16.1 [2] | ≈ 12.1 [2] | ≈ 22.3 [1] | ≈ 2.5 [2] |
| PIV, full field | 3 (STM) | 3.9 [3] (text) | ≈ 5.4 [3] | ≈ 2.85 [3] | ≈ 0.75 [4] |
| PIV, ROI x/D ≤ 3.6 | 1 | — | ≈ 28.0 [1] | ≈ 23.4 [2] | — |
| PIV, ROI x/D ≤ 3.6 | 2 | — | ≈ 14.1 [2] | ≈ 27.0 [1] | — |
| PIV, ROI x/D ≤ 3.6 | 3 (STM) | — | ≈ 4.3 [3] | ≈ 0.9 [6] | — |
| Synthetic base | 1 / 2 | ≈ 50 / 49 [1/2] | ≈ 48 / 51 [2/1] | ≈ 50.5 / 49 [1/2] | ≈ 47 / hidden behind other markers (≈ 49–51) [2/1] |
| Synthetic base | 3 (harmonic) | ≈ 0.5–2 in all bases [3] | | | |
| Synthetic varying | 1 | ≈ 46.1 [1] | ≈ 36.5 [2] | ≈ 50.5 [1] | ≈ 45.2 [2] |
| Synthetic varying | 2 | ≈ 45.1 [2] | ≈ 38.4 [1] | ≈ 48.5 [2] | ≈ 47.5 [1] |
| Synthetic varying | 3 (STM) | ≈ 7.3 [3] | ≈ 23.6 [3] | ≈ 0.3 [14] | ≈ 3.0 [3] |

Fig. 16b plots the (u, v) circles at the full-field values; no (u, v) POD on the ROI is shown.

**STM energy against the δ_y variation** (synthetic, read from Fig. 18, p. 14)

| σ(δ_y) | 0.040 | 0.044 | 0.050 | 0.057 | 0.067 | 0.080 |
|---|---|---|---|---|---|---|
| STM energy (%) | ≈ 5.0 | ≈ 5.9 | ≈ 7.4 | ≈ 9.3 | ≈ 12.9 | ≈ 17.0 |

| Snapshots with deviating δ_y (%) | 0 | 20 | 40 | 60 | 80 | 100 |
|---|---|---|---|---|---|---|
| STM energy (%) | 0 | ≈ 1.6 | ≈ 3.2 | ≈ 4.7 | ≈ 6.0 | ≈ 7.4 |

**Quintile vorticity thickness** (read from Figs. 8b and 15b)

| Data | All | Set 1 | Set 2 | Set 3 | Set 4 | Set 5 |
|---|---|---|---|---|---|---|
| PIV, δ_ω/D at x/D ≈ 3.6 | ≈ 0.44 | ≈ 0.44 | ≈ 0.43 | ≈ 0.40 | ≈ 0.38 | ≈ 0.32 |
| Synthetic varying, δ_ω (x-averaged) | ≈ 0.765 | ≈ 0.908 | ≈ 0.828 | ≈ 0.776 | ≈ 0.725 | ≈ 0.638 |

**Resampling convergence** (E₉₅%/E_Full read from Fig. 4; 1.7% and 2.6% at N = 5000 from the text)

| N | 100 | 250 | 500 | 1000 | 2500 | 5000 |
|---|---|---|---|---|---|---|
| Modes 1–2 | ≈ 0.20 | ≈ 0.11 | ≈ 0.07 | ≈ 0.045 | ≈ 0.029 | < 0.017 |
| Mode 3 (STM) | ≈ 0.21 | ≈ 0.14 | ≈ 0.10 | ≈ 0.07 | ≈ 0.041 | 0.026 |

## Figures worth remembering
- **Fig. 1 (p. 3):** the STM in two other datasets: mode 2 of a free jet at NPR 3.4 (x/D 0–10) and mode 10 of an NPR 3.6 jet on a cylindrical section at z/D 3.5; only the boxed regions are alike.
- **Graphical abstract (p. 2) = Fig. 6 (p. 7):** axial and transverse components of case-1 modes 1–4. The pair has antisymmetric φ_x with alternating lobes; the STM (c, g) is long and smooth along the shear layers and turns into the wall jet.
- **Fig. 3 (p. 5):** mean u/U_E (to ≈ 1.8), v/U_E (±1.1) and variances (⟨u′u′⟩/U_E² to 0.15, ⟨v′v′⟩/U_E² to 0.07).
- **Fig. 4 (p. 5):** resampling convergence of modes 1–3, N = 100–5000.
- **Fig. 5 (p. 6):** energy spectrum of 20 modes with cumulative curve, and the annular joint PDF of (a₁, a₂)/⟨r_m⟩.
- **Fig. 7 (p. 8):** the key figure. (a) phase portrait coloured by the STM coefficient (a₃/r_m, ±1): positive inside, negative on the outer ring. (b) Pearson correlation of r₁₂ with modes 1–20, a single 0.74 spike at mode 3.
- **Fig. 8 (p. 8):** quintile mean profiles at x/D = 3.6 (peak U_con/U_E ≈ 1.45 on the axis) and δ_ω(x) diverging after the shock reflections.
- **Fig. 9 (p. 9):** vorticity (ω_z D/U_E, ±10) at the 95th (straight sheets) and 5th (meandering, large packets) STM percentiles.
- **Figs. 10–12 (p. 9–10):** base synthetic field and its POD: a 99% pair and a harmonic pair, no STM.
- **Figs. 13–15 (p. 11–12):** varying synthetic POD: the STM as mode 3, the same colour pattern as Fig. 7, the same quintile trend. The Fig. 15 caption describes panel (b) as "centreline, upper and lower shear-layer boundaries", but the panel shows one δ_ω per set.
- **Figs. 16–17 (p. 13):** like-mode energies for the four bases (PIV full field and ROI; synthetic base and varying), colour = rank within the basis.
- **Fig. 18 (p. 14):** STM energy against σ(δ_y) and against the percentage of deviating snapshots.

## Notation
- u, v: axial and transverse velocity; u′, v′: fluctuations. U_E: jet exit velocity. U_con: conditional mean axial velocity. U_c: Stuart convection velocity.
- l × m: vector grid; N: number of snapshots. V: snapshot matrix; R: N × N autocovariance; λ_n, ν_n: eigenvalues and eigenvectors.
- φ_n (φ_x^n, φ_y^n): spatial mode n and its axial and transverse components; a_n: coefficient of mode n.
- θ_k, â_k: pair phase and amplitude of snapshot k; r₁₂: pair amplitude (eq. 9); ⟨r_m⟩: mean pair amplitude; ρ_{r₁₂N}: Pearson correlation of r₁₂ with a_N.
- STM: shear thickness mode. Sets 1–5: quintiles of the STM coefficient, set 1 most negative.
- δ_ω: vorticity thickness; ω_z: out-of-plane vorticity.
- A, Ã: Stuart amplitude and its normalised form; δ_x, δ_y: streamwise and transverse length scales (spacing 2πδ_x, layer width δ_y); σ: standard deviation of δ_y.
- NPR, M_j, z/D, t/D, D, D_j, c_j, ν, Re: Table 1. E₉₅%/E_Full: 95% confidence range relative to the full-set mode energy.
- The paper's citation labels: Weightman et al. 2017a = JFM 815 R1 (phase lag); 2017b = AIAA 2017-3031 (lip thickness); Edgington-Mitchell et al. 2014a = Phys. Fluids Mach-disk paper; 2014b = JFM helical-mode paper.

## Relevance to this project

### PIV and the POD-pair workflow (CLAUDE.md step 2, non-time-resolved data)
Everything in this paper works on independent snapshots: POD, the pair portrait, r₁₂, the correlation test, quintile conditioning and δ_ω need no time resolution. It is the group's methodological reference for reading PIV POD beyond the leading pair. Checks it implies for every PIV dataset:
1. **Do not stop at the pair.** Correlate r₁₂ with a_n for at least the first 20 modes (p. 7). A single spike flags an STM even when its shape or rank differs from published examples (ranks 2, 3 and 10 in Fig. 1 and case 1).
2. **Linear decorrelation is not independence (note's framing).** POD coefficients are uncorrelated by construction, so ρ(a₃, a₁) ≈ 0, and Fig. 7b shows near-zero values for modes 1–2. Yet a₃ is strongly tied to √(a₁² + a₂²). POD removes only second-order correlation, so quadratic dependence survives, and that dependence is the amplitude-modulation signal. "No correlation between modes 1 and 3" (as in [Edgington-Mitchell et al. 2014, helical mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md), p. 834) is therefore not evidence against it.
3. **Adjacent ranks are not pairs.** Modes 3 and 4 (3.9%, 1.7%) are not a pair; test candidates with the phase portrait or an objective test ([Davey et al. 2025](davey-2025-hpod-sphere-wake.md), p. 20–21). In clean synthetic data modes 3–4 were the harmonic pair: two colour cycles per pair cycle on a coloured portrait (Fig. 11b) mark a harmonic, an inside–outside colour split marks an STM.
4. **The STM has the mean flow's symmetry (reading of Fig. 6).** Its axial component is symmetric and its transverse component antisymmetric, the opposite of the helical pair, as expected for a mean-flow distortion from the |m = 1|² self-interaction. A symmetric, unpaired, axially elongated mode is therefore not evidence of a toroidal (m = 0) instability; the paper's test asks for a symmetric *pair* (p. 6).
5. **The basis and ROI change ranks and energies.** v-only POD keeps the pair clean but nearly hides the STM (synthetic ≈ 0.3%, rank 14; PIV ROI rank 6); u-only inflates it (synthetic ≈ 23.6%); ω_z lowers all energies (p. 12–13). Report the basis and the ROI with any mode energy. Order swaps inside a near-degenerate pair (which basis swaps differs between PIV and synthetic data) carry no physical meaning.
   - Why v-only hides it (note's inference): in a near-parallel layer a mean-profile change is a u-change, and continuity gives it almost no v. The synthetic STM is x-invariant (Fig. 14c), so its v component is weak (p. 11). In the jet the STM's v comes mainly from spreading and the wall's radial flow, which is why cutting x/D > 3.6 removes most of it (p. 12).
   - This explains and qualifies the group's v-only choice ([Edgington-Mitchell et al. 2020](edgington-mitchell-2020-waves-in-screeching-jets.md), p. 9; [Bell et al. 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), p. 19–20; [Ivelja et al. 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md)), and the observation that transverse POD separates the pair more cleanly (helical-mode paper, p. 834; [Tan et al. 2017](tan-2017-broadband-velocity-fluctuations-screeching-jets.md), p. 2325): the pair is cleaner because the amplitude marker is suppressed.
6. **The annulus width is physics, not only noise.** The spread of r₁₂ goes with a 27% spread in δ_ω at x/D = 3.6 (p. 8). POD-phase bins that pool all r₁₂, as in the thesis 5° phase averages, mix snapshots of different amplitude and mean thickness. Suggestion: repeat phase averages within r₁₂ (or STM) quintiles and compare.
7. **Residual ("broadband") statistics after removing the pair contain the STM** (note's inference). A two-mode triple decomposition, as in Tan et al. 2017, leaves this coherent-structure-related mode in the residual.
8. **STM energy measures the variance of thickness changes, not intermittency as such** (Fig. 18 check above). To separate rare large from frequent small excursions, use the PDF of the STM coefficient or of r₁₂.
9. **Convergence.** The STM's confidence range is ≈ 1.3–1.7× the pair's (Fig. 4). The thesis (§3.7) gives the budget: ≈ 500 snapshots for the leading pair and ≈ 1000 for modes 3–4 in resonant flows ([thesis note](weightman-2019-sound-production-impinging-supersonic-jets.md)).

### Time-resolved data and the SPOD → reconstruction → HPOD pipeline
- **What PIV cannot give.** r₁₂ and the STM give a per-snapshot amplitude and its mean-flow signature, but no timescale of the modulation. With time-resolved schlieren or LES, the instantaneous amplitude comes from the Hilbert transform or HPOD of an SPOD reconstruction of the tone band ([Raiola & Kriegseis 2025](raiola-2025-hilbert-pod.md)). This paper says what to correlate that amplitude with: shear-layer thickness, i.e. the slowly varying mean-flow distortion.
- **Keep the low-frequency band** (thesis note's inference). STM content sits at f ≈ 0 or in low-frequency sidebands of the tone, so a reconstruction that keeps only the tone frequency drops it.
- **The spectral analogue is the (f, −f, 0) triad.** Mean-retaining BMD maps this difference self-interaction, and the St = 0 SPOD coefficient tracks which screech tone is on with |ρ| ≥ 0.8 ([Mazharmanesh et al. 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), p. 12, 16–18). That is the time-resolved counterpart of the STM's 0.74 correlation with r₁₂.
- **Space-only HPOD is a PIV alternative.** It merges the pair into one complex mode with a modulus per snapshot (Raiola & Kriegseis 2025), which could replace r₁₂; its residual modes could be checked for an STM.
- **Synthetic tests.** Stuart-vortex fields with prescribed amplitude, thickness, spacing or intermittency changes are a cheap check of what POD, SPOD or HPOD return. They suit the HPOD_Switch_Benchmark in `Codebase/` (suggestion), e.g. with switched vortex spacing (frequency) instead of width. Fix the v-component typo (eq. 7) first.

### Modelling and simulation
- There is no stability analysis, LES or dynamical model; the synthetic model is kinematic.
- **Mean-field view (note's inference).** The STM behaves like the "shift mode" of mean-field Galerkin models ([Taira et al. 2020](taira-2020-modal-analysis-applications-outlook.md), p. 9–10; a low-frequency shift mode is POD mode 1 in [Sieber et al. 2016](sieber-2016-spectral-proper-orthogonal-decomposition.md), p. 15): the mean-flow distortion whose amplitude scales with the square of the oscillation amplitude. Comparing ρ(r₁₂², a_STM) with ρ(r₁₂, a_STM) on the PIV would test this.
- **Causality is open.** The paper reads amplitude as driving thickness (structure size → thickness, p. 9). The synthetic test imposes thickness and shows only the kinematic signature, so it cannot set the direction. [Nogueira et al. 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md) found the same unpaired mode in twin jets at NPR 5 and linked it to streaks stabilising or destabilising KH (p. 11–13), the reverse direction.
- **Linear models (suggestion).** Local stability or resolvent on quintile-conditioned mean flows, rather than the full mean, would show how much the KH gain varies over the observed amplitude range (27% δ_ω spread at x/D = 3.6).
- **PyFR staging LES.** Snapshot POD of LES fields near the A1/A2 boundary should show an STM-like mode whenever the screech amplitude wanders, and the LES supplies the timescale PIV cannot. The basis and ROI caveats apply when comparing LES POD with group PIV.

### Cross-links: agreements and differences
- **[Weightman 2019 thesis](weightman-2019-sound-production-impinging-supersonic-jets.md):** Ch. 3 reprints this paper with the same numbers, adds the §3.7 convergence study, and flags the same 6% vs ≈ 7% inconsistency.
- **[Weightman et al. 2019, JFM](weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet.md):** the same thin-lip case (NPR 3.4, z/D 5, t/D 0.1), with the tone (St 0.255) and the pair energies 17.7% and 16.1%. Its thick-lip cases hold both toroidal and helical pairs, where this paper's single-mode argument (one pair, one acoustic peak) would not apply.
- **[Weightman et al. 2017](weightman-2017-phase-lag-supersonic-jet-impingement.md):** the cylinder dataset (NPR 3.6, z/D 3.5, cylinder diameter 5D, stationary flapping) whose mode 10 is the Fig. 1b STM.
- **[Oberleithner et al. 2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md):** source of the ring test (p. 4). Its low-energy modes beside the helix (breakdown-bubble motion) were reported uncorrelated with it (p. 19, 21); a coloured portrait or r₁₂ correlation would show whether they are amplitude-linked as here.
- **[Edgington-Mitchell et al. 2021](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md):** its ±2σ amplitude test rescales a fixed mode shape (p. 28–30). The STM shows that strong and weak cycles also differ in mean shear-layer thickness.
- **[Edgington-Mitchell et al. 2014, Mach disk](edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md):** cited for the precessing-flapping alternative to the helical reading (p. 6). One plane cannot strictly separate the two; the paper's argument is indirect (energy concentration, geometry, one acoustic peak).
- **[Sirovich 1987](sirovich-1987-turbulence-dynamics-coherent-structures-part-i.md):** the method of snapshots (eqs. 1–5).
