---
key: "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn"
title: "Acoustic Characterization and Modeling of Heated Supersonic Tactical Jet Aircraft and Launched Rockets"
authors: ["Mathews, Logan Troy"]
year: 2025
type: "thesis-phd"
venue: "PhD thesis, Brigham Young University"
bib: {"school": "Brigham Young University", "note": "BYU ScholarsArchive ETD 11034, https://scholarsarchive.byu.edu/etd/11034"}
doi: ""
arxiv: ""
pdf: "rocket-noise-models/Mathews_2025_Acoustic-Characterization-And-Modeling-Of-Heated-Supersonic-Tactical-Jet.pdf"
version: "thesis"
unverified: []
group: false
facility: "Full-scale field data (T-7A F404 run-ups at Holloman AFB; Atlas V launch at Vandenberg SFB)"
data: ["mic-array", "microphones-far", "full-scale"]
methods: ["beamforming", "coherence", "PSD", "shock-cell-model", "empirical-model", "propagation-model", "acoustic-holography"]
flow: ["jet-aircraft", "rocket-plume", "launch-vehicle", "supersonic", "heated", "overexpanded"]
phenomena: ["BBSAN", "Mach-wave-radiation", "mixing-noise", "shock-cells", "source-location", "directivity", "acoustic-efficiency", "ignition-overpressure", "nonlinear-propagation"]
params: {"M_j (F404 AB)": "1.46", "M_d (F404)": "1.55", "NPR (F404 AB)": "3.3", "TTR (F404 AB)": "7.0", "vehicles": "Atlas V 401, Firefly Alpha, Starship"}
topics: ["rocket-noise-models", "jet-noise-mechanisms", "rocket-noise-measurements", "shock-cell-models"]
related: ["mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "mathews-2021-falcon-9-far-field-noise", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "gee-2016-near-field-intensity-static-rocket-firings", "gee-2024-starship-super-heavy-far-field-noise", "kellison-2026-falcon-9-noise-two-campaigns", "tam-1982-shock-associated-noise-cd-nozzles", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets"]
cites: ["gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft", "gee-2023-sls-artemis-i-far-field-noise", "gee-2024-starship-super-heavy-far-field-noise", "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "james-2012-directivity-curves-rocket-noise-model", "kandula-2008-near-field-acoustics-clustered-rocket-engines", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2021-falcon-9-far-field-noise", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "towne-2018-spod-relationship-dmd-resolvent", "tsutsumi-2015-epsilon-liftoff-acoustics", "wong-2021-wavepacket-modelling-bbsan"]
summary: "Installed F404 at afterburner: holography + OLVR show quasi-independent lipline sources; BBSAN at shock cells II–VIII; Atlas V launch; SATURN SP-8072 update, ≈1 dB RMSE within 20 km"
---
# Acoustic Characterization and Modeling of Heated Supersonic Tactical Jet Aircraft and Launched Rockets

- **Author:** Logan Troy Mathews. PhD, Department of Physics and Astronomy, Brigham Young University, 2025 (posted 2025-08-20; BYU ScholarsArchive ETD 11034, https://scholarsarchive.byu.edu/etd/11034). Chair: Kent L. Gee.
- **Source:** PhD thesis (multiple-paper format; Ch. 2–5 are reprints of published papers, Ch. 6 is a stand-alone paper with no venue given).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Mathews_2025_Acoustic-Characterization-And-Modeling-Of-Heated-Supersonic-Tactical-Jet.pdf` (130 pp.)
- **Page refs:** printed page numbers throughout. **PDF page = printed page + 11** (printed p. 1 = PDF p. 12). Front matter is cited by roman numeral.
- **Funding:** ONR N00014-21-1-2069 (Code 351 Jet Noise Reduction); T-7A measurements by the Advanced Pilot Training System Program Office and AFRL; DoD ORISE appointment (pp. 22, 40). Ch. 3 thanks Daniel Edgington-Mitchell (Monash) for discussion (p. 40).
- **Code:** SATURN (MATLAB) at https://github.com/logmath/saturn (p. 109).
- **Tags:** full-scale jet noise, rocket launch noise, GE F404 / T-7A afterburner, acoustical holography (SONAH), partial-field decomposition (OLVR/MUSIC), BBSAN/BSN, shock-cell spacing, Atlas V, acoustic efficiency, SATURN, SP-8072, nonlinear propagation.

> Merged from three chapter-range drafts (front matter + Ch. 1–3; Ch. 4–5; Ch. 6–7 + appendices). Sections below follow the thesis chapters.

## Summary
The thesis has two halves. Ch. 2–3 characterise the sources of a full-scale, installed, afterburning GE F404-GE-103 on the T-7A Red Hawk from a 120-microphone ground array. Ch. 2 uses SONAH holography (with UPAINT bandwidth extension to Sr ≈ 0.5) and OLVR coherence-based decomposition to show quasi-harmonic, quasi-independent lipline sources behind full-scale "spatiospectral lobing". Ch. 3 locates BSN sources at shock cells II–VIII (cell I silent, loudest near the potential-core end). It shows that standard shock-spacing formulas fail for overexpanded C-D jets, while the Harper-Bourne–Fisher peak-frequency model works once the measured spacing is used. Ch. 4–6 turn to rockets:
- **Ch. 4:** Atlas V JPSS-2 launch measurements show a ~30 dB flame-trench-driven ignition-overpressure asymmetry and an azimuth-dependent peak frequency that collapses with a view-dependent diameter.
- **Ch. 5:** simple OAPWL / max-OASPL predictors from exit flow parameters, with RMSE < 2 dB.
- **Ch. 6:** SATURN, an open, modular update of NASA SP-8072 built from Atlas V data with a modern spectrum, source location, directivity and an empirical propagation-loss term. It is validated blind on Firefly Alpha and Starship with ≈1 dB RMSE within 20 km, against 2.2–2.7 dB for SP-8072 (pp. ii–iii, 91, 95).

## Structure
| Ch. | Topic | Printed pp. | Published as |
|---|---|---|---|
| 1 | Introduction (history, jet-noise theory, modelling, objectives) | 1–9 | — |
| 2 | SONAH + OLVR source decomposition, installed F404 at afterburner | 10–24 | Mathews & Gee, AIAA J. 62(6), 2186–2199 (2024), doi:10.2514/1.J063543 |
| 3 | BSN source/radiation, installed F404 at afterburner | 25–43 | Mathews & Gee, AIAA Aviation 2025, doi:10.2514/6.2025-3008 (the chapter preface says SciTech 2025) |
| 4 | Atlas V JPSS-2 launch acoustics | 44–56 | Mathews et al., Proc. Mtgs. Acoust. 51, 040003 (2023), doi:10.1121/2.0001768 (the preamble says 2025) |
| 5 | OAPWL / max-OASPL prediction | 57–67 | Mathews & Gee, JASA 158, 371–379 (2025): own note [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) |
| 6 | SATURN empirical rocket-noise model | 68–100 | stand-alone paper, venue not stated |
| 7 | Conclusions | 101–105 | |
| App. A | Other contributions (Saturn V, convective Mach number, afterburning lab rig, Starship) | 106–108 | |
| App. B | SATURN appendices | 109–112 | |

## Chapter 1 — Introduction (pp. 1–9)

### Objectives (Sec. 1.5, pp. 7–9)
1. Explain **spatiospectral lobing** (multiple radiation lobes at different frequencies, seen at full scale but not in lab jets or simulations, suggesting a scale-dependent physics difference) via holography and coherence-based decomposition of the F404 (Ch. 2) (pp. 7–8).
2. Characterise **BSN sources at full scale**, where near-field flow measurements are impractical, so most BSN source knowledge is lab-scale or simulated (Ch. 3) (p. 8).
3. Test whether multi-nozzle, non-axisymmetric rocket layouts (dual-nozzle Atlas V) give **azimuthal noise asymmetry**, e.g. in spectral peak frequency (Ch. 4) (p. 8).
4. Predict OAPWL and max OASPL from basic jet parameters; evidence for different apparent acoustic efficiencies between two rockets (Ch. 5) (pp. 8–9).
5. SATURN (Ch. 6; the text on p. 9 mistakenly says "Chapter 5").

### Jet-noise theory covered in Ch. 1 (Secs. 1.2–1.4, pp. 2–7)
- **History:** Lighthill's analogy (1952, 1954); early experiments (Hubbard & Lassiter, Ribner, Howes, Franken, Nagamatsu, Harper-Bourne & Fisher 1974); theory by Ffowcs Williams & Hawkings, Lilley, Tam (1975). Rocket noise: Cole 1957, Tedrick, Manhart; predictive studies (Chobotov & Powell, Wilhold & Guest, Potter & Crocker), culminating in **NASA SP-8072 (Eldred 1971)**, still widely cited (pp. 2–3).
- **Two-source model (Tam & Chen 1994; Tam 1995; Tam et al. 1996):** dominant aft noise = large-scale structures (instability waves / wavepackets driven by K-H) + fine-scale turbulence (p. 4). Large-scale structures that convect supersonically relative to ambient radiate efficient, coherent, highly directional **Mach wave radiation (MWR)**, which dominates plume output; directivity is set by the convective Mach number (definitions compared in the co-authored Gee et al. 2025a) (p. 5). Beyond the supersonic core, structures decelerate and become convectively subsonic: radiation shifts aft, efficiency drops, energy stays hydrodynamic (subsonic-jet-like behaviour) (p. 5). Fine-scale turbulence gives higher-frequency, less coherent, near-omnidirectional sideline noise (p. 5).
- **Shock-associated noise (pp. 5–6):** off-design C-D nozzle → shock cells ("Mach diamonds"; Fig. 1.3 overexpanded schematic). Turbulence–shock interaction gives (i) **screech** (Powell 1953), tonal resonance "common in laboratory-scale jets" but **"generally absent in full-scale, afterburning-capable engines"** (p. 6); and (ii) **BSN/BBSAN** (Harper-Bourne & Fisher 1974), forward-directed (inlet angles < 90°), significant in the forward field of full-scale aircraft engines; its relevance in **rocket plumes "has yet to be definitively demonstrated"** (p. 6).
- **Modelling (Sec. 1.4, p. 7):** empirical models (Franken 1957; Eldred 1971) remain useful for far-field prediction; recent rocket measurements (Gee 2023; Gee et al. 2024, 2025b) expose deficiencies. CFD/CAA is mostly useful for the near field and flow–acoustic coupling; far-field validation of simulations is lacking and costs are high, so empirical models retain merit (p. 7).

---

## Chapter 2 — Acoustical holography and coherence-based noise source characterisation of an installed F404 engine (pp. 10–24)
**Published:** L. T. Mathews & K. L. Gee, AIAA J. 62(6), 2186–2199 (2024), doi:10.2514/1.J063543 (p. 10); presented as AIAA Paper 2023-3212, Aviation 2023 (p. 11).

### Summary
SONAH reconstructs the radiated field of the T-7A/F404 at afterburner (AB) onto the nozzle lipline from a 120-mic ground array. A coherence-based phase-unwrapping and interpolation scheme (UPAINT) extends usable bandwidth from ~400 Hz to ~1 kHz (Sr ≈ 0.5). The lipline reconstruction shows **quasi-harmonic local maxima (LMs)** distinct in frequency and space; between LMs the field shows multilobe radiation. OLVR decomposition (MUSIC-power virtual references, coherence-separated, partial-coherence/Cholesky decomposition) needs few partial fields at LM frequencies but many between them, so the authors argue LMs are distinct, quasi-independent subsources and spatiospectral lobes arise where two subsources overlap (pp. 11, 18–22).

### Key findings
- **Lipline LMs at AB (Table 1, p. 18):** LM I Sr = 0.067, LM II 0.13, LM III 0.19 (plus LM IV ~0.26 and more at higher Sr where SONAH degrades; only I–III analysed) (pp. 17–18). LM centres are **quasi-harmonic**, like the spatiospectral lobes; shock-cell interaction has been proposed but "no definitive explanation" exists (p. 17). LMs move upstream with increasing frequency (p. 21).
- **Energetic order:** II > III > I > IV. LM II lies midway between the estimated potential-core tip L̃c and supersonic-core tip L̃s (historic region of maximum sound-power production); LM II + III combined peak just downstream of L̃c, consistent with Baars et al. lab heated jets (instability peaks just past Lc) (p. 18). Fig. 8 gives SPLmax = 136.2 dB on the lipline; L̃c ≈ 7 Dj, L̃s ≈ 12–13 Dj (read off Fig. 8b, p. 18).
- **Coherence length:** wavelength-normalised coherence length (distance for γ² to fall from 1 to 0.5) is **larger at the LMs and drops between them**, supporting distinct, quasi-independent radiators; consistent with Harker et al. and Swift et al. (p. 18).
- **Model order:** number of OLVR PFs K = 4 (LM I), 6 (I–II), 7 (II), **13 (II–III)**, 9 (III); PFs within 10 dB of lipline max M = 3, 4, 4, **7**, 4 (Table 1, p. 18). So LM frequencies are local minima in required reduced-order-model order; between LMs higher order is needed (p. 19).
- **Decompositions (Fig. 10, p. 19):** LM I is one dominant PF (others ≥ 6 dB down) peaking near L̃s with the most aft directivity → attributed to **LSN from convectively subsonic large-scale structures (possibly Orr-type)** (pp. 19–20). Between I and II: two PFs within 2–3 dB, low mutual coherence (γ² ≤ 0.30), peaking just before L̃c and just before L̃s. LM II: dominant PF between L̃c and L̃s plus a weaker one in the potential-core region. LM III: dominant PF near L̃c, second PF in potential-core region only 2–3 dB lower → mainly **shear-layer MWR (K-H)** (p. 19). (The text gives LM III as Sr ≈ 0.23 in one place, p. 19, but 0.19 in Table 1 and the Discussion.)
- **At LM frequencies, PFs share similar directivity** (one lobe split because the source is several coherence lengths long — coherence length shrinks faster than source extent, Harker et al.); **between LMs, PFs have different directivities** and each mainly feeds one lobe while sharing some energy with the other (lobes have low but finite mutual coherence) (p. 20).
- First M OLVR PFs reproduce the ground-plane field accurately in the −10 dB region; largest error upstream where coherence is low (handled elsewhere by adding wavepackets or a compact monopole) (p. 19).
- **Interpretation (p. 21):** with Liu et al. LES (MWR peaks ~Sr 0.2 at AB-like conditions; LSN dominates below Sr 0.1) and Schmidt et al. 2018 (K-H wavepackets upstream of Lc, Orr downstream), LM I ↔ LSN/Orr; LM II and III ↔ MWR/K-H from the shear layer and the region just past the potential-core collapse but before L̃s. Christian et al. found a K-H convective Mach number best predicts the peak radiation angle. Causality is "strictly corollary"; simulations are needed (p. 20).
- Much energy below Sr 0.1 at AB (TTR ≈ 7), unlike classic Sr 0.1–0.3 jet-noise peaks; consistent with Liu et al. for high-TTR jets; rockets peak about an order of magnitude lower in Sr still. This shift with TTR/velocity is called an open question (p. 16).
- BSN visible on the array map above Sr ≈ 0.3 near the nozzle as a "j"-shaped feature (p. 16).

### Setup / method
- **Aircraft/engine:** T-7A, F404-GE-103 afterburning turbofan; measured at Holloman AFB, August 2019 (details in Leete et al.). Five conditions (75, 82, 88 % N2, MIL, max AB) over **six run-ups**, all six concatenated for averaging; analysis at **AB: overexpanded, Mj ≈ 1.46, TTR ≈ 6.9** (p. 12).
- **Array:** 120-element ground "imaging array", ~70 m aperture from 15 m upstream of the exit plane to 55 m downstream; non-uniform spacing chosen from prior full-scale studies, dense near and ahead of the MARP (x ≈ 3.96 m) for BSN/high frequencies and sparse far downstream for low-frequency MWR/LSN. Spatial Nyquist peaks ~580 Hz near x = 0 (Fig. 1c, p. 12); holography conventionally limited to **≤ 400 Hz** at the densest part (p. 13).
- **Data:** synchronous time series at all mics (**time-resolved**); CSMs from Fourier-transformed blocks, averaged over the six run-ups. Sampling rate, block length, window and overlap are **not stated** in the chapter (cites Leete et al.).
- **Bandwidth extension — UPAINT** (unwrapped phase array interpolation, adapted from Goates et al.; used for beamforming by Harker et al.): interpolate CSM magnitude and **phase unwrapped across frequency, pair by pair** (spatial 2-D unwrapping at a single frequency gives no consistent cross-frequency phase). Coherence-based unwrapping (Cook et al.): pairs above a coherence threshold are unwrapped conventionally; sub-threshold points by least squares from nearest super-threshold neighbours (p. 13). Validated to **1 kHz (Sr ≈ 0.5)** (p. 13). Improves reconstruction error inside the −10 dB contour but adds error up/downstream where levels are low; installation scattering near the airframe may corrupt phase (pp. 16–17, Fig. 6).
- **SONAH (pp. 13–14):** SVD of the CSM into self-coherent PFs → each PF holographed separately → energetic sum. Numerical aperture extension (analytic continuation) and edge tapering. Equivalent wave model of **cylindrical wavefunctions about the jet axis, only l = 0 (axisymmetric)** because the array is confined to the ground (justified by Leete et al.'s good azimuthal coherence up to several hundred Hz); reference surface r0 = 0.5 mm; modified Tikhonov regularisation acts as wavenumber low-pass filter (p. 14). Reconstruction on the **nozzle lipline** as a source proxy (difference from the shear layer is small over this region) (p. 17).
- **OLVR (optimised-location virtual reference; Wall et al., after Kim, Bolton & Kwon 2004) (pp. 14–16):**
  1. Candidate VRs on the lipline, restricted to where lipline level is within 20 dB of max.
  2. MUSIC power at each candidate: CSM of reconstructed pressures → SVD → noise subspace from singular vectors K+1…N; K = number of singular values within **20 dB** of max (Wall et al. used 40 dB) — "a heuristic" since turbulence is not a finite set of sources (p. 15). Trial vector = unit vector (monopole assumption).
  3. Select VRs greedily: highest MUSIC power first, then next highest with γ² to already-chosen VRs below γ²_crit; raise γ²_crit if fewer than K found (p. 16). Values used: γ²_crit 0.30–0.36 (Table 1).
  4. Partial coherence decomposition (Bendat) by Cholesky of the VR CSM; PFs then reordered by integrated energy (p. 16).
- **Coherence length:** from the SONAH reconstruction; distance for γ² to drop to 0.5, normalised by acoustic wavelength (p. 18).

### Key equations (Ch. 2)
- CSM: $\mathbf C(f) = \frac{1}{m}\,\mathbf p_h\mathbf p_h^H$, entries $G_{ij}(f)$ (p. 13).
- Equivalent wave model (eqs. 1–7, p. 14): $\mathbf A\mathbf c = \mathbf p_h$ (1);
  $\Psi_{l,k_x}(r,\phi,x) = \dfrac{H_l^{(1)}(k_r r)}{H_l^{(1)}(k_r r_0)}e^{il\phi}e^{ik_x x},\ r\ge r_0$ (2);
  $k_r = \sqrt{k^2-k_x^2}$ for $|k|\ge|k_x|$, $k_r = i\sqrt{k_x^2-k^2}$ for $|k|<|k_x|$ (evanescent) (3);
  $\mathbf A = [\Psi_n(r_{h,v})]_{N\times m}$ (4); $\mathbf c = \mathbf A^{-1}\mathbf p_h$ via regularised pseudo-inverse (5); $\boldsymbol\alpha = [\Psi_n(r_{q,w})]_{N\times n}$ (6);
  $\mathbf p_q^T = \mathbf c\,\boldsymbol\alpha = \mathbf p_h^T \mathbf R_{A^HA}\mathbf A^H\boldsymbol\alpha$ (7).
- Transfer form: $\mathbf Y' = \mathbf H_{YP}\mathbf P$ (p. 15).
- MUSIC (p. 15): $\mathbf S_{yy} = \mathbf Y\mathbf Y^H = \mathbf W\boldsymbol\Sigma\mathbf W^H$; $\mathbf R_{noise} = \sum_{n=K+1}^{N}\mathbf w_n\mathbf w_n^H$; $P_{MUSIC} = 1/(\mathbf u^T\mathbf R_{noise}\mathbf u)$, $\mathbf u = [0\cdots1\cdots0]^T$.
- Coherence: $\gamma_{ij}^2 = |S_{ij}|^2/(S_{ii}S_{jj})$ (p. 16).
- PCD (p. 16): $\mathbf S_{xx} = \mathbf X\mathbf X^H = \mathbf L\mathbf L^H$ (Cholesky); $\mathbf S_{xy} = \mathbf X\mathbf Y^H$; OLVR PFs $\mathbf P_x^{M\times K} = \mathbf S_{xy}^H(\mathbf L^H)^{-1}$.
> Eqs. 1–7 checked against the rendered page image (p. 14). The unnumbered MUSIC/PCD matrices were rebuilt from garbled text plus the rendered p. 16; check superscript dimensions against the PDF.

### Data table (Table 1, p. 18) — OLVR parameters at AB
| LM | Sr | γ²_crit | K | M |
|---|---|---|---|---|
| I | 0.067 | 0.33 | 4 | 3 |
| I–II | 0.089 | 0.30 | 6 | 4 |
| II | 0.13 | 0.31 | 7 | 4 |
| II–III | 0.17 | 0.36 | 13 | 7 |
| III | 0.19 | 0.32 | 9 | 4 |

### Figures worth remembering (Ch. 2)
- **Fig. 1 (p. 12):** photo, array schematic (inlet angles 20°–165° marked) and spatial Nyquist vs x.
- **Fig. 2 (p. 13):** coherence-based pairwise CSM phase unwrapping illustration.
- **Fig. 5 (p. 16):** measured spatiospectral maps along the array at MIL and AB (lobes; BSN "j" shape above Sr 0.3).
- **Fig. 6 (p. 17):** SONAH reconstruction error with/without UPAINT.
- **Fig. 7 (p. 17):** ground-plane field at five frequencies: single lobe at LM frequencies, multilobe between.
- **Fig. 8 (p. 18):** lipline spatiospectral reconstruction with LM contours, and lipline SPL of LMs I–IV vs x/Dj with L̃c, L̃s.
- **Fig. 9 (p. 18):** wavelength-normalised coherence length along the lipline vs Sr — high at LMs.
- **Figs. 10–12 (pp. 19–21):** OLVR PFs along the lipline; error of M-PF sum; ground-plane maps of total + PFs 1–4.

---

## Chapter 3 — On BSN source and radiation characteristics from an installed, afterburning GE F404 engine (pp. 25–43)
**Published:** L. T. Mathews & K. L. Gee, AIAA Aviation Forum & ASCEND 2025, doi:10.2514/6.2025-3008 (reprint header, p. 26). The chapter preface (p. 25) says "AIAA SciTech Forum, 2025" — inconsistent. Same dataset and holography as Ch. 2, but applied to a higher-frequency band and without OLVR (p. 25).

### Summary
Lipline SONAH reconstructions of the T-7A/F404 at AB show vertical "striations" in 0.35 ≤ Sr ≤ 0.5. Integrated over that band, they become a train of peaks (BSN apparent sources II–VIII) that line up with shock cells in a scaled in-situ photograph. The first shock cell is silent; source amplitude grows roughly linearly downstream and peaks at cells VI–VII near the potential-core end. The measured shock spacing matches similar overexpanded lab and LES jets but not the Prandtl–Pack or Harper-Bourne–Fisher formulas (or a β-generalised Prandtl–Pack). The Harper-Bourne–Fisher peak-frequency model fails with analytic spacing but agrees "excellently" with the measured spacing. Coherence shows each shock source is linked to both forward BSN and aft MWR, and that shock cells are mutually coherent. BSN should therefore be modelled as a distributed, partially coherent source rather than as independent monopoles (pp. 26, 39–40).

### Key findings
- **Source location:** BSN apparent sources at shock cells II–VIII along the lipline, at about x/Dj ≈ 1.6, 2.6, 3.5, 4.5, 5.2, 6.0, 6.7 (read off Fig. 4, p. 32), aligned with in-situ photo shock cells; the **estimated potential core end is ~7.2 Dj** (Fig. 4, p. 32). **Shock cell I has no significant acoustic source**, matching Harper-Bourne's acoustic-mirror lab result. The authors attribute this to underdeveloped turbulence near the exit (Nagamatsu: sound power grows ~linearly through the potential core) (p. 32). Integrated SPL grows roughly linearly from ~145 dB (II) to ~150 dB (VI/VII); **strongest at VI and VII**, matching Podboy et al. (downstream cells loudest) (p. 32).
- **Band:** below Sr ≈ 0.35 the lipline is mixing-noise dominated (≥ 3 LMs, Ch. 2); BSN striations from 0.35 up to the reconstruction limit Sr = 0.5 (p. 30). Peak BSN at the array ≈ 800–900 Hz; closest mics ≈ 9 Dj from the jet axis, > 10 acoustic wavelengths at these frequencies, so reconstructions contain **only radiated (not hydrodynamic) energy** (pp. 28, 30).
- **Shock spacing (Fig. 5, p. 34):** T-7A L_n/Dj falls from ~0.97 (II–III) through ~0.91 (V–VI) to ~0.78 (VII) and ~0.72 (VIII) (read off the figure). Comparison (legend of Fig. 5; % diff is in β relative to T-7A):

  | Source | Type | Condition | β_conv | β | % diff in β |
  |---|---|---|---|---|---|
  | Eq. (4) Prandtl–Pack | model | – | 1.06 | – | – |
  | Eq. (5) HB–F | model | – | 1.06 | – | – |
  | Eq. (6) β-generalised | model | – | – | 0.52 | 0 |
  | Norum & Seiner [8] | exp. | overexp. | 0.80 | 0.78 | 40 |
  | Liu et al. [29] (TTR 7) | LES | underexp. | 1.20 | 0.43 | 19 |
  | Podboy et al. [45] | exp. | overexp. | 0.81 | 0.77 | 39 |
  | Liu et al. [30] (TTR 2.9) | LES | overexp. | 1.08 | 0.75 | 36 |
  | Harper-Bourne [43] (cold, mirror) | exp. | overexp. | 0.90 | 0.67 | 25 |
  | T-7A (this study) | exp. | overexp. | 1.06 | 0.52 | 0 |

  - Eq. (4) gives a constant L/Dj ≈ 1.39; Eq. (5) decays from 1.39 to ~0.95; Eq. (6) gives a constant ≈ 0.68. None tracks T-7A; Eqs. (4)–(5) fit the **underexpanded** jets but fail for **overexpanded C-D** jets (p. 34).
  - The overexpanded TTR 2.9 LES (Liu et al. [30]), closest to T-7A apart from TTR, agrees "excellently" for shocks IV–VIII (p. 33). The underexpanded TTR 7 LES (closest β) has much larger spacing (p. 34).
  - The cold Harper-Bourne jet (similar β, overexpanded) closely resembles T-7A → **shock spacing/BSN source positions look insensitive to TTR**, governed first by **over- vs under-expansion**, then by β; but β alone is insufficient (closest matches still differ by up to 36 % in β) (p. 34).
  - The trend of **larger spacing for underexpanded than overexpanded** jets is not captured by existing formulas; a C-D-specific model spanning both regimes is called for (p. 35).
- **Peak frequency vs angle (Figs. 6–7, pp. 35–37):** SNRP (shock noise reference point) at x/Dj = 5.6 (between VI and VII) is the origin for angles. BSN peak frequency rises with inlet angle and is most prominent at 40°–60° (p. 35). BSN dominates for θ < ~85°, mixing noise for θ > 90° (p. 36). The measured peak rises from ~400–500 Hz at 30° to ~1300 Hz near 85°–88° (Fig. 7b) and peak Sr from ~0.3 to ~0.55 (Fig. 7c) (read off the figure).
  - The HB–F model (Eq. 7) with analytic spacing (Eq. 4) "performs poorly"; with **L̄_meas it gives excellent agreement** (pp. 36, 40).
  - Full-scale comparisons: F-35B/F135 at AB [26] and F/A-18E/F414 at AB [28] follow the same trend, but T-7A frequencies are ~**half an octave higher** (diameter/velocity). In Sr, [26] agrees (assumed Uj ≈ 1400 m/s, Dj ≈ 1.0 m); [28] is lower (Uj ≈ 1210 m/s, Dj ≈ 0.62 m, scaled +150 % from MIL values of Seiner et al., so uncertain) (p. 37).
  - Lab-scale cold jets [8, 17, 23] differ markedly. Norum & Seiner is most discrepant; [17] and [23] imply more forward radiation. The likely cause is TTR: Kuo et al. found an 18 % drop in peak Sr at 120° from TTR 1 → 2.2 for overexpanded jets, and AB is TTR ≈ 7. There are no open afterburner-like lab data (p. 37).
  - LES of an F404-like TTR 7 jet (Leete et al. [32]) has a similar trend but lower frequencies (p. 37).
- **Coherence source→field (Fig. 8, p. 38):** coherence between each lipline shock-source reconstruction and array mics (Sr 0.25–0.5) shows two regions: **aft 90°–130° (mixing/MWR, highest γ² up to ~0.7–0.8)** and **forward 30°–90° (BSN, moderate)**. The authors read this as turbulence that interacts with shocks radiating Mach-wave-like energy downstream *and* exciting upstream-directed components, consistent with Swift et al. (full scale) and Leete et al. (TTR 7 LES) (p. 38). Sources V–VIII have the strongest, broadest coherence; II–IV are weaker, especially at high Sr (p. 38).
- **Coherence source↔source (Fig. 9, p. 39):** lipline-to-lipline coherence map has box-like regions and **off-diagonal diagonal striations ("islands")**, e.g. III coherent with IV–VII. Interpreted as one wavepacket interacting coherently with several successive shocks, as in Seiner & Yu (near-field coherence over several shock wavelengths) and wavepacket BSN models with spatial-coherence factors [22, 24]. Location II is incoherent with the others (p. 39).
- **Conclusion:** BSN is a distributed, partially correlated source; better C-D shock-spacing prediction would improve both spectral and spatial BSN prediction (p. 40).

### Setup / method
- Same T-7A campaign (Holloman AFB, Aug 2019; Leete et al.); 120-element quasi-linear ground array of ¼" GRAS 46BD/46BG mics; averaged over **six AB run-ups** (p. 28). Array y/Dj ≈ 10 near the aircraft, rising to ~20–25 Dj at x/Dj ≈ 90 (Fig. 2b, p. 28).
- **Engine parameters at AB (Table 1, pp. 28–29)** from a numerical propulsion-system simulation code driven by test ambient conditions and engine data: **Mj = 1.46, Md = 1.55, β_conv = 1.07, β = 0.52, NPR = 3.3, TTR = 7.0**; overexpanded. Check: √(1.46²−1) = 1.064; √|1.46²−1.55²| = 0.520 ✓ (Fig. 5 legend lists β_conv = 1.06). Dj (fully expanded diameter) is **not given numerically** in this chapter.
- **Holography:** identical to Ch. 2 (SVD partial fields → aperture extension and tapering → cylindrical EWM → regularised pseudo-inverse, here **underdetermined, minimum-norm** → reconstruct → energetic sum), presumably with UPAINT since results extend to Sr 0.5 (p. 30). No OLVR here.
- **BSN analysis band:** 0.35 ≤ Sr ≤ 0.5; reconstruction amplitude integrated over the band to give a spatial source distribution (pp. 31–32).
- **Peak-frequency extraction:** per array mic, the spectral peak of the autospectrum mapped vs inlet angle from the SNRP (Figs. 6–7).
- **Coherence:** magnitude-squared coherence between reconstructed lipline pressures at shock maxima and measured array pressures (Fig. 8), and between all lipline reconstruction points (Fig. 9). Data are time-resolved mic records; block/averaging parameters not stated.

### Key equations (Ch. 3) (checked against rendered pp. 29, 32–33, 35)
- Design Mach number from area ratio (1), p. 29: $\dfrac{A_e}{A_t} = \dfrac{1}{M_d}\left[\dfrac{2}{\gamma+1}\left(1+\dfrac{\gamma-1}{2}M_d^2\right)\right]^{\frac{\gamma+1}{2(\gamma-1)}}$.
- Off-design parameter, convergent (Harper-Bourne & Fisher) (2), p. 29: $\beta_{conv} = \sqrt{M_j^2-1}$.
- Generalised off-design parameter for C-D (Tam & Tanna, giving $I_{BSN}\propto\beta^4$) (3), p. 29: $\beta = \sqrt{|M_j^2-M_d^2|}$; reduces to β_conv for Md = 1.
- Prandtl–Pack shock spacing (4), p. 32: $\dfrac{\bar L}{D_j} = \dfrac{\pi}{\mu_1}\sqrt{M_j^2-1} = 1.306\,\beta_{conv}$, with $J_0(\mu_1)=0$ ($\mu_1 \approx 2.405$; π/2.405 = 1.306). Lossless, so valid for the first cell only.
- Harper-Bourne & Fisher spacing with losses (5), p. 33: $\dfrac{\bar L_n}{D_j} = 1.306\,\beta_{conv}\,[1-(n-1)\epsilon]$, $\epsilon \approx 0.06$.
- β-generalised Prandtl–Pack for C-D (6), p. 33: $\dfrac{\bar L}{D_j} = \dfrac{\pi}{\mu_1}\beta = 1.306\,\beta$. (The printed middle term $=\sqrt{|M_j^2-M_d^2|}$ omits the π/μ1 factor — a typo in the thesis.)
- HB–F BSN peak frequency (7), p. 35: $f_{pk}(\theta) = \dfrac{U_c}{\bar L\,(1-M_c\cos\phi)}$, $U_c \approx 0.7U_j$, $\phi = 180^\circ-\theta$ (θ = inlet angle). In Strouhal form $Sr_{pk} = 0.7/[(\bar L/D_j)(1-M_c\cos\phi)]$. Check: with L̄_meas/Dj ≈ 0.88 (mean of Fig. 5 values), Sr_pk(θ = 90°) ≈ 0.8, which matches where the L̄_meas curve in Fig. 7c ends. M_c's numerical value and reference sound speed are not stated.
> The text near Fig. 7 says the comparison uses "Eq. (6)" with three spacings; it should be Eq. (7). The Fig. 7 legend lumps "Eqs. (4) & (6)" as one curve, although Eq. 4 and Eq. 6 give different L̄ (1.39 vs 0.68 Dj). Check against the PDF which spacing that orange curve uses.

### Figures worth remembering (Ch. 3)
- **Fig. 1 (p. 27):** schematic of the shock structure in an overexpanded jet.
- **Fig. 2 (p. 28):** aircraft photo and array schematic in x/Dj, y/Dj with MARP.
- **Fig. 3 (p. 31):** lipline spatiospectral SONAH map (Sr 0.02–0.5, x/Dj 0–15) — mixing-noise LMs below Sr 0.35, vertical BSN striations above, with the L̃c line.
- **Fig. 4 (p. 32):** **key figure** — band-integrated (0.35–0.5 Sr) lipline SPL vs x/Dj with peaks II–VIII under a scaled photo of the afterburning plume's shock diamonds; L̃c marker.
- **Fig. 5 (p. 34):** shock spacing L_n/Dj by shock index vs Eqs. 4–6 and five literature datasets (table above).
- **Fig. 6 (p. 36):** SNRP geometry and spectra at 20°–80° showing the BSN hump moving up in frequency with angle.
- **Fig. 7 (p. 37):** (a) array SPL map vs angle and frequency with peak trace; (b) peak f vs θ with models and F-35B/F/A-18E data; (c) peak Sr vs θ with lab-scale and LES data.
- **Fig. 8 (p. 38):** source-to-field coherence maps for each shock source II–VIII (θ vs Sr).
- **Fig. 9 (p. 39):** lipline–lipline coherence map with shock grid lines (off-diagonal islands).

---
---

## Chapter 4 — An overview of acoustical measurements made of the Atlas V JPSS-2 rocket launch (pp. 44–56)

**Publication status.** Reprint of L. T. Mathews, M. C. Anderson, C. D. Gardner, B. W. McLaughlin, B. M. Hinds, M. R. McCullah-Boozer, L. K. Hall & K. L. Gee, "An overview of acoustical measurements made of the Atlas V JPSS-2 rocket launch", *Proc. Mtgs. Acoust.* **51**, 040003, doi:10.1121/2.0001768 (pp. 44–45). Presented at the 184th ASA meeting, Chicago, May 2023 (paper 1aNS9); POMA Student Paper Competition winner (p. 46). Co-authors include the CSU Bakersfield biology group (Hinds, McCullah-Boozer, Hall), i.e. a wildlife-noise collaboration (p. 46).
> Year conflict: the chapter preamble cites it as "(2025)" (p. 44), but the reprinted cover and running footers say *Proc. Mtgs. Acoust.* 51 (2023), published 15 Sep 2023 (pp. 45–56), and Ch. 5's reference list also gives 2023 (p. 66). Use **2023**.

**Erratum stated in the thesis (p. 44).** Eqs. (1)–(3) print the spreading term as 20 log10(4πR²); it should be 10 log10(4πR²). Corrected in Ch. 5. (My check: with 10 log10(4πR²), η = 0.5 %, Q_max = 8 dB and W_m = 6.06 GW (Ch. 5 Table III) the prediction at station 1, R = 239 m, is ≈144.2 dB vs 146.7 dB measured, i.e. ≈ −2.5 dB, matching the Fig. 7 error bar. So the plotted curves seem to use the correct term and only the printed equation is wrong.)

### Key findings
- **First open-literature documentation of azimuthal dependence of spectral peak frequency** for a rocket at peak directivity (thesis preamble, p. 44). Peak 1/3-octave frequency is lower when the observer sees the RD-180's two nozzles broadside (φ̃ = 0°: mean 32.2 Hz, median 31.5 Hz) than when one nozzle shields the other (φ̃ = 90°: mean 42.9 Hz, median 45 Hz) (Tables 3–4, pp. 54–55).
- **Strouhal collapse with a view-dependent diameter:** using D_c = D_e = D√2 = 2.02 m at 0° (merged plume) and D_c = D = 1.43 m at 90° (single plume) gives near-identical peak Sr: mean 0.0195 vs 0.0184, median 0.0191 vs 0.0193 (Table 4, p. 55). Interpreted as merged- vs single-plume radiation; authors say more data are needed (pp. 54–55).
- The shift is not a rigid translation of the spectrum: at 0° a **low-frequency "bump"** is added (merged plume) while the rest of the spectrum is nearly unchanged, clearest in the mid-field (Fig. 8a) (p. 55). Consistent with Coltrin et al. 2014 lab twin-jet data and the Eldred et al. 1963 / Kandula 2008 two-zone clustered-jet model (double-peaked spectrum); no explicit double peak here, likely because S/D ≈ 1.14 makes the plumes merge quickly and the peaks are not separated (p. 55). The two-zone model has no azimuthal dependence (p. 55).
- **No azimuthal asymmetry in OASPL_max** beyond the scatter within each angular group: scaled-to-100 D_e levels span 144.7–148.5 dB, deviations −1.9 to +1.9 dB about the mean, with 0° and 90° groups overlapping (Table 2, p. 53; conclusion p. 55). Contrast with lab/LES twin-jet shielding of 2–3 dB in OASPL cited in the intro (Kantola 1981, Pineau & Bogey 2021, Greska & Krothapalli 2007, Bozak 2014) (p. 47).
- **Ignition overpressure (IOP) strongly asymmetric, set by the flame trench:** distance-scaled (to 100 D_e = 202 m) peak level L_pk is up to +16 dB re the 9-station mean near the trench-exit azimuth (station 8) and −14 dB opposite, i.e. ~30 dB spread (Fig. 6, p. 51; conclusion p. 55). Same trench-linked IOP asymmetry seen for SLS Artemis I (Gee et al. 2023) (p. 51).
- **Atlas V IOP waveform is unusual:** a "whooshing" signature, not the impulse-like IOP of Falcon 9 or SLS; shared with Antares (RD-181, near-identical engine), so the cause may be flame-trench resonance or the engine itself (p. 50). This is the only Falcon 9 comparison in the chapter (qualitative).
- **Simple OASPL_max model** (McInerny 1996 form: η W_m → OAPWL, spherical spreading, + Q_max) fits all 11 stations within ±2.5 dB once ground effects are handled: η ≈ 0.25 %, Q_max = 5 dB with measured levels reduced 6 dB for pressure doubling; equivalent to the historical η = 0.5 %, Q_max = 8 dB applied to unadjusted data (Fig. 7, pp. 52–53). Error stats: max/min +1.3/−2.5 dB, mean signed/absolute −0.6/1.3 dB, rms 1.6 dB, N = 11; McInerny's earlier fit to 5 launches (4 vehicles) had +6.4/−4.7 dB, rms 4.0 dB, N = 19 (footnotes i–ii, p. 53).
- **Nonlinear propagation evidence (spectral only):** max-level spectra show the ≈ f⁻² high-frequency slope (−10 dB/decade in 1/3-octave terms) associated with acoustic shocks; it persists to 20 kHz in the mid-field but rolls off at ~2–3 kHz in the far field as absorption overtakes shock steepening (Fig. 8, pp. 53–54). No waveform statistics (skewness, ASF, etc.) are reported here.
- Not covered in this chapter: source-location / apparent-source modelling, full directivity curves (only a fixed 65° max-radiation angle is assumed), or time-domain nonlinearity metrics (pp. 46–55).

### Setup / method
- **Vehicle:** Atlas V 401 (4 m fairing, no SRBs, single RL10C-1 Centaur), first stage powered solely by one RD-180: one engine, two closely spaced nozzles, D = 1.43 m each, total sea-level thrust 3.83 MN; equivalent single-nozzle diameter D_e = D√2 = 2.02 m; centre-to-centre spacing ≈ 1.63 m → S/D ≈ 1.14 (p. 47). RP-1/LOX (Ch. 5 Table V, p. 66).
- **Launch:** JPSS-2 (+ LOFTID), SLC-3E, Vandenberg SFB, 10 Nov 2022, 01:49 PST / 09:49 UTC (p. 48). Surface weather (from Ch. 5 Table II, p. 63): 8 °C, 76 % RH, wind 2.1 m/s from 70°, clear.
- **Azimuthal coordinate φ̃** fixed to the nozzle pair: φ̃ = 0° sees both nozzles/cores broadside; φ̃ = 90° sees one nozzle end-on (other shielded) (Fig. 2, p. 48). Stations binned to φ̃ ≈ 0°, 30°, 45°, 90° (±~10°) (p. 49). An earlier Landsat 9 campaign at the same pad (Cunningham et al.) defined axes from the Mobile Service Tower, but the vehicle is rotated ~22° relative to it; corrected here (p. 48).
- **Stations:** 11 primary, 217 m – 7.25 km from the pad (Table 1, p. 49; full numbers in Data tables).
- **Hardware:** BYU PUMA systems (NI CompactDAQ + laptop + batteries) and Larson Davis 831C sound level meters recording 51.2 kHz uncompressed WAV (adequate for rocket noise per James et al. 2020); all microphones in BYU "COUGAR" ground-plate/windscreen mounts (ground-level mics); portable weather stations (pp. 49–50, Fig. 4). **No GPS time sync** between stations (hardware shortage), so no cross-station timing / array analysis (p. 49).
- **Processing:**
  - IOP: peak SPL L_pk per station, scaled for spherical spreading to 100 D_e = 202 m, shown relative to the 9-station mean (stations 1–9) (p. 51).
  - OASPL_max: maximum **1-s averaged** OASPL (block overlap not stated here; Ch. 5 uses 1-s blocks, 50 % overlap, p. 63) (p. 51). Source distance R = d / sin 65°, assuming 65° peak overall directivity (pp. 51–52). Ground correction: subtract 6 dB (pressure doubling at low frequency, Hart & Gee 2022) (p. 51).
  - Spectra: 1/3-octave, averaged over the period within 3 dB of OASPL_max, scaled to 100 D_e (p. 53).
- No time-resolved field data or modal decomposition; all single-point microphone statistics. No time–frequency analysis of the launch (spectra are a single averaged window around peak level).

### Key equations
Printed versions (p. 52–53) use 20 log10(4πR²); the thesis says the correct term is 10 log10(4πR²) (p. 44). Corrected forms:

$$\mathrm{OASPL}_{max} = 10\log_{10}\!\left(\frac{\eta W_m}{10^{-12}\,\mathrm{W}}\right) - 10\log_{10}(4\pi R^2) + Q_{max} = \mathrm{OAPWL} - 10\log_{10}(4\pi R^2) + Q_{max} \quad (1)$$

with η = W_a/W_m, W_m ≈ ½ T U_e (T total thrust, U_e exit velocity), R = d/sin 65° (p. 52). Eq. (2) "half-space" replaces 4πR² by 2πR² (no ground correction to data); Eq. (3) "free-space" keeps 4πR² and applies to ground-corrected data. In both, η ≈ 0.25 % and Q_max = 5 dB, argued to be source properties independent of the ground (p. 53).
> The labelling in the reprint reads "without accounting for ground effects (half-space)" for Eq. (2) and "accounting for ground effects (free space)" for Eq. (3) (p. 53). Note that the move from 8 dB to 5 dB is 3 dB = 10 log10 2, which only follows from the 4πR² → 2πR² change if spreading is 10 log10; another sign that the 20 log10 is a typo.

$$Sr = \frac{f D_c}{U_c} \quad (4)$$

D_c = D_e = D√2 at φ̃ = 0°, D_c = D at φ̃ = 90° (p. 54).
> The velocity used for Sr is not stated. Back-calculating from Table 4 gives U_c ≈ 3.33 km/s (32.2 × 2.02 / 0.0195 and 42.9 × 1.43 / 0.0184), whereas W_m = 6.06 GW and T = 3.83 MN in Ch. 5 Table III imply U_e ≈ 3.16 km/s. Check against the PDF / sibling note.

### Data tables
Table 1 + Table 2 (pp. 49, 53). d = horizontal distance from pad, R = d/sin 65°, φ̃ actual / nominal. OASPL in dB re 20 µPa (ground-level mics, not ground-corrected).

| Stn | d (m) | R (m) | φ̃ actual | φ̃ nominal | OASPL_max (dB) | scaled to 100 D_e (dB) | re mean (dB) |
|---|---|---|---|---|---|---|---|
| 1 | 217 | 239 | 2° | 0° | 146.7 | 148.1 | 1.5 |
| 2 | 656 | 724 | 4° | 0° | 137.4 | 148.5 | 1.9 |
| 3 | 2800 | 3090 | 2° | 0° | 121.8 | 145.5 | −1.1 |
| 4 | 1080 | 1192 | 47° | 45° | 132.6 | 148.0 | 1.4 |
| 5 | 2650 | 2924 | 47° | 45° | 121.5 | 144.7 | −1.9 |
| 6 | 283 | 312 | 89° | 90° | 143.2 | 147.0 | 0.4 |
| 7 | 1118 | 1234 | 87° | 90° | 129.9 | 145.6 | −1.0 |
| 8 | 1368 | 1509 | 79° | 90° | 128.0 | 145.5 | −1.1 |
| 9 | 3625 | 4000 | 82° | 90° | 119.9 | 145.9 | −0.7 |
| 10 | 7250 | 8000 | 24° | 30° | 112.8 | 144.8 | −1.8 |
| 11 | 6430 | 7095 | 31° | 30° | 117.6 | 148.5 | 1.9 |

> Checked: mean of the scaled column = 146.55 dB, so station 1 = +1.55 ✓; station 1 scaling 146.7 + 20 log10(239/202) = 148.2 ✓; R = 217/sin 65° = 239 ✓.

Tables 3–4 (pp. 54–55): 1/3-octave peak frequency.

| Stn | φ̃ | f_pk (Hz) |
|---|---|---|
| 1 | 0° | 40 |
| 2 | 0° | 31.5 |
| 3 | 0° | 25 |
| 6 | 90° | 50 |
| 7 | 90° | 50 |
| 8 | 90° | 40 |
| 9 | 90° | 31.5 |

| φ̃ | mean f_pk | median f_pk | D_c | mean Sr_pk | median Sr_pk |
|---|---|---|---|---|---|
| 0° | 32.2 | 31.5 | D_e = D√2 | 0.0195 | 0.0191 |
| 90° | 42.9 | 45 | D | 0.0184 | 0.0193 |

> f_pk falls with distance within each group (40 → 31.5 → 25 Hz at 0°; 50 → 31.5 Hz at 90°), so the group means mix range effects with azimuth (near and far stations are not at matched distances). Not discussed by the authors; worth flagging. Means check: (40+31.5+25)/3 = 32.2 ✓; (50+50+40+31.5)/4 = 42.9 ✓.

### Figures worth remembering
- Fig. 2 (p. 48): nozzle-fixed azimuth definition (broadside vs end-on view of RD-180 nozzle pair).
- Fig. 3 (p. 49): station map with rocket axes.
- Fig. 5 (p. 50): IOP waveforms, stations 1–9 (the "whoosh" signature).
- Fig. 6 (p. 51): polar map of distance-scaled IOP L_pk re mean (colour scale ±15 dB) with flame-trench exit direction — strongest near trench azimuth.
- Fig. 7 (p. 52): OASPL_max vs R, measured and −6 dB ground-corrected, with η = 0.5 %/Q_max = 8 dB and η = 0.25 %/Q_max = 5 dB curves; error panel within ±2.5 dB.
- Fig. 8 (p. 54): 1/3-octave max spectra at φ̃ = 0° vs 90°, (a) mid-field stations 2 & 7 (656 m, 1118 m), (b) far-field stations 3 & 9 (2.8 km, 3.6 km), scaled to 100 D_e; shows the lower-frequency bump at 0° and the f⁻² slope persisting to 20 kHz mid-field vs roll-off at 2–3 kHz far-field.

---

## Chapter 5 — Methods for predicting overall sound power and maximum OASPL from heated supersonic jets, including rockets (pp. 57–67)

**Publication status.** Reprint of L. T. Mathews & K. L. Gee, *J. Acoust. Soc. Am.* **158**(1), 371–379 (2025), doi:10.1121/10.0037192, published online 14 Jul 2025 (pp. 57–58). Full detail in the sibling note [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md); summary only here.

- **Main result:** OAPWL from elementary exit flow parameters, W_m ≈ ½ ρ_e U_e³ A_e, gives OAPWL ≈ 115.9 + 10 log10(η ρ_e U_e³ D_e²) dB (Eq. 6), or 117.0 + 10 log10(η F U_e) from thrust (Eq. 8), or a pressure-thrust-inclusive form (Eq. 7); OASPL_max(r) ≈ OAPWL − 10 log10(4πr²) + Q_max,OA + 20 log10 δ (Eq. 11), δ = ground factor (1 free field, 2 rigid ground) (pp. 59–61).
- δ from a modified Tam et al. 1996 large-scale similarity spectrum (low-freq slope f^2.5, high-freq f^−2.2, Eq. A1) with the Embleton et al. 1983 ground model, receiver height 6 mm: δ ≈ 1.9 for rockets with f_pk < 30 Hz on dirt/vegetation (Fig. 1, pp. 61, 63, 65).
- Validation: Atlas V 401 (Landsat 9, JPSS-2) and Vulcan Centaur Cert-2 launches with η = 0.33 % (Kellison & Gee 2023), Q_max,OA = 5 dB, δ = 1.9, θ_max = 71° (Atlas V) / 69° (VC2): RMSE < 1.8 dB for Atlas V; VC2 needs η halved to 0.17 % (RMSE 1.7 dB), possibly because its separated plumes radiate less efficiently than the tightly clustered RD-180 pair; T-7A/F404 at 38 % → AB, RMSE < 1.7 dB with the full model (pp. 63–65).
- Landsat 9 OASPL_max decays faster (≈ r^−1.1, weak-shock-like) than JPSS-2 (r^−1); hypothesis: humid/foggy Landsat 9 conditions (15 °C, 88 % RH) reduce absorption so shocks persist (p. 63).
- **Differences from / evolution of Ch. 4:** Ch. 5 replaces Ch. 4's 65° max-radiation angle with 71° (corrected 3-D Falcon 9 analysis of Mathews et al. 2021, and θ_max ≈ cos⁻¹[(c0/U_e)^½] from Gee et al. 2025), the −6 dB ground correction with δ = 1.9 (≈ −5.6 dB), and η ≈ 0.25 % with 0.33 %; Q_max = 5 dB is retained (p. 63). Footnote 2 notes the Falcon 9 θ_max was revised from 64° to 71° (p. 65). Ch. 5 also corrects Ch. 4's spreading-term typo (p. 44).
- No content differences from the journal version are visible: it is a page-for-page reprint with the ASA cover page. Minor internal inconsistency (likely also in the journal): the F404 low-power condition is "55 % thrust" in Table I but "56 %" in Table IV and text (pp. 62, 64).

---

---

**Publication status of Ch. 6:** the chapter is written as a stand-alone paper (its own abstract, "This paper introduces…", p. 68; App. B.3 still cites "Section IIIC1", a leftover journal-style section number, p. 110), but neither the chapter nor the thesis front matter gives a venue or a submitted/accepted status. Treat it as unpublished at thesis time (2025). The MATLAB code is public at https://github.com/logmath/saturn (p. 109).

---

## Chapter 6: SATURN, a modern empirical model for predicting rocket launch noise (pp. 68–100)

### Summary
SATURN (Scientific Acoustic Tool for Understanding Rocket Noise) is an open, modular MATLAB re-implementation of the NASA SP-8072 (Eldred 1971) "source-power → spectrum → directivity → spreading" chain, with three changes: (i) the normalised power spectrum, directivity indices and axial source-location curve are replaced with modern full-scale data (Atlas V 401 JPSS-2 within 1 km of the pad; GEM-60 vector-intensity source locations from Gee et al. 2016); (ii) an explicit, empirical, frequency- and distance-dependent propagation-loss term (a "double Butterworth filter") is added, which SP-8072 lacks; (iii) it outputs time-resolved spectra (spectrograms) along a real trajectory, from which any metric can be computed (pp. 68–71, 88). It is validated blind against two vehicles two orders of magnitude apart in thrust, Firefly Alpha Flight 5 (0.73 MN) and Starship Flight 6 (73.5 MN), 34 measurement points in total (p. 68). Within 20 km the unweighted maximum-level RMSE is ≈1 dB (1.1 dB Alpha, 0.9 dB Starship), against 2.2 and 2.7 dB for SP-8072 (pp. 91, 95).

### Key findings
- **Atlas V spectral peak is about one decade/octave lower than SP-8072.** The Atlas V normalised power spectrum peaks near Sr ≈ 0.01 (the fitted Eq. 6.4 peaks at Sr ≈ 0.011 at ≈ +14.3 dB re W_OA D_eff/U_e, my calculation), whereas SP-8072 peaks higher in Sr and is broader (Fig. 6.2, p. 77). The text says "near a Strouhal number of 0.1 — approximately an octave below" SP-8072 (p. 76; cites Kellison et al. 2024).
  > Check: text "Sr of 0.1" conflicts with Fig. 6.2 and Eq. 6.4 (peak ≈ 0.01). Likely a typo for 0.01. Also check "octave" vs the visible gap in Fig. 6.2 (SP-8072 peak looks ≈ Sr 0.02–0.03, i.e. 1–1.5 octaves).
- **Spectral slopes:** 20 dB/decade on both sides of the peak, same as SP-8072, but narrower and lower in frequency (p. 77).
- **Acoustic efficiency η:** Eldred's range 0.1–1% (0.5% "conservative average"); Atlas V best fit 0.33% (Mathews & Gee 2025, Ch. 5); validation used η = 0.34% for Alpha and 0.4% for Starship (pp. 75, 90, 94). η may depend on engine type/clustering (two configurations needed different η) and, for a tactical aircraft engine, on engine condition (Christian et al. 2023) (p. 75). A 5% error in W_m gives only 0.2 dB in L_W,OA (p. 75).
- **W_m ≈ ½ F U_e** is within 0.3 dB of the full mechanical-power expression for representative engines, but may fail when p_e differs from p_a by more than ~50% (p. 74).
- **Source location:** a compact source per frequency, positioned along the plume axis by s(Sr) = 9.85 Sr^−0.21 D_eff (power-law fit to mean GEM-60 source location of Gee et al. 2016) (p. 80). The James et al. (2012) Shuttle-SRB curve was rejected because the horizontal static firing likely includes plume–ground impingement (p. 79). SP-8072's single-nozzle undeflected curves lie well downstream (≈ 2× further at low Sr) (Fig. 6.4, p. 80). Source region extends ~10–20 D_eff at dominant frequencies, so compact-source treatment is only good at ≳100–200 D_eff (p. 78).
- **Directivity:** broadband Q(θ, Sr) from Atlas V within 1 km, computed with a fixed source origin of 18 D_eff; nearest station 240 m = 119 D_eff, so angles are expected to be accurate to within ±5° for Sr > 0.004 (p. 81). Peak directivity is shallow at the lowest Sr and settles at ≈ 72° from the plume axis for Sr > 0.03 (p. 82). SP-8072's five-frequency directivity indices peak 15–20° further aft (Fig. 6.5b, p. 82), possibly due to undocumented source-origin assumptions (Lubert et al. 2022); too-aft directivity makes peak noise arrive later in the launch than measured (p. 83). Q assumes azimuthal symmetry (cluster treated as one equivalent plume); multi-core asymmetry is future work (pp. 81–82).
- **Linear absorption grossly overestimates rocket-noise losses.** Atlas V max spectra lose ≈ 15 dB at 1 kHz over 7 km, vs 26 dB from linear absorption (≈ 11 dB less); at 10 kHz, 30–40 dB measured vs > 1200 dB predicted (pp. 84–85). Attributed to nonlinear harmonic generation compensating absorption (Reichman et al. 2016; Miller & Gee 2018; Gee et al. 2018) (p. 85).
- **Source data deliberately restricted to < 1 km** so that propagation effects are not baked into the source model; averaging over all distances would bias the model to the mean sampling distance (pp. 72, 84). Below 1 km fewer than three stations would remain (p. 72). Near-spherical decay within this range (Durrant et al. 2023; Mathews et al. 2023; Gee et al. 2025b) (pp. 72–73).
- **Spherical spreading** matches measured rocket decay beyond ~10 km (p. 83); changing the spreading law requires recalibrating all inputs (p. 83).
- **Alpha Flight 5 validation** (140 m–7.3 km, pp. 90–94):
  - L_Z,max: SATURN within ±2 dB at all sites except the closest (140 m); RMSE 1.1 dB, st. dev. 1.2 dB, min/max error −2.6/2.0 dB. SP-8072: half the sites outside ±2 dB, RMSE 2.2 dB, st. dev. 1.7 dB, min/max −2.7/4.6 dB, and its error trend diverges with distance (Fig. 6.8, p. 91).
  - L_A,max: SATURN within ±2 dB at all but three sites, RMSE 2.0 dB (st. dev. 1.6, min/max −2.0/4.6 dB); every SP-8072 prediction is outside ±2 dB, RMSE 8.8 dB (st. dev. 4.1, min/max 2.4/20.2 dB), i.e. 2.2× smaller pressure error for SATURN (pp. 91–92). (The chapter conclusion calls it a "fourfold reduction", p. 99, which is the dB ratio 8.8/2.0.)
  - Time histories at 300 m (393 D_eff), 1.0 km (1313 D_eff), 7.3 km (9609 D_eff): SATURN matches the peak-directivity window but its peak is broader in time, and it overpredicts late-launch (> 60 s) levels by up to 5 dB at 300 m and 1 km. SP-8072's peak arrives late and late-launch levels are 10+ dB high (p. 92).
  - Max spectra: SATURN gets the peak frequency (slight overprediction at the closest site); SP-8072's peak is too high in frequency, by one octave at 7.3 km. At 7.3 km and 1 kHz SATURN overpredicts by ≈ 15 dB, SP-8072 by ≈ 40 dB, so more absorption occurred than modelled (pp. 93–94).
- **Starship Flight 6 validation** (1–35.5 km, measurements from Gee et al. 2025b, pp. 94–98):
  - L_Z,max: SATURN within ±2 dB to 20 km (~2660 D_eff); error then grows to 12.3 dB at 35.5 km (text says 13 dB). RMSE 3.9 dB overall, 0.9 dB for d < 20 km; st. dev. 3.6 dB; min/max −1.7/12.3 dB. SP-8072: outside ±2 dB from 5 km (~660 D_eff), max 17.9 dB at 35.5 km (text: 18 dB); RMSE 6.6 dB overall, 2.7 dB for d < 20 km; st. dev. 4.9 dB (Fig. 6.10, pp. 95–96). The fast measured decay at 10–20 km was attributed by Gee et al. (2025b) to launch-day atmospheric conditions not in SATURN (p. 95).
  - L_A,max: measured values scatter more (A-weighting stresses ~1 kHz, which is sensitive to long-range propagation and turbulence). SP-8072 never better than ±6.5 dB; SATURN within ±2 dB at five sites. RMSE 9.1 dB overall / 5.7 dB for d < 20 km (SATURN) vs 24.5 / 11.8 dB (SP-8072); min/max −15.1/19.8 dB vs 6.5/55.4 dB (Fig. 6.10d, p. 96).
  - Time histories at 1 km (133 D_eff), 2.9 km (388 D_eff), 10.2 km (1353 D_eff): SATURN tracks measurements within 2–3 dB after the first ~8 s (deflected plume and ground-level propagation not modelled). At 10.2 km the first 10–15 s are overpredicted, the peak window (45–55 s) agrees within 0–2 dB, and later the measured levels fall faster than predicted (refraction by temperature/wind gradients suspected; ray tracing suggested) (pp. 96–98). SP-8072's peak is late and late-launch levels are 5–10 dB high (p. 96).
  - Max spectra: SATURN gets the shape and peak frequency but is 2–3 dB low at high frequency (peak slightly too narrow); at 10.2 km it is ≈ 3 dB low at 100 Hz, while SP-8072 has a peak one octave too high and is ≈ 12 dB high at 100 Hz (p. 98).
- **Scale generality:** an Atlas V–derived model (medium lift, 2 nozzles, RP-1/LOX) predicts a 4-engine small launcher and a 33-engine methalox super-heavy within ~1 dB inside 20 km, which supports Strouhal scaling with D_eff = D_e √N_e despite its known uncertainties (Mathews et al. 2021; Lubert et al. 2022) (pp. 76, 89, 98–99).

### Setup / method
**Model chain (pp. 73–88).**
1. Geometry: fixed ENU frame (x east, y north, z up), origin at the bottom centre of the vehicle on the pad; observer P = (x, y, z); trajectory T(t) (p. 73). Distance r and plume angle θ come from App. B.2.
2. Overall sound power from thrust and exit velocity via η (Eqs. 6.1–6.3).
3. Power spectrum: fitted normalised spectrum L̄_W(Sr) (Eq. 6.4) de-normalised by W_OA D_eff/U_e (Eq. 6.5). Sr = f D_eff/U_e with D_eff = D_e √N_e (p. 76).
4. Per-frequency compact source at s(Sr) downstream of the nozzle along the velocity vector (Eq. 6.6, B.2).
5. Directivity Q(θ, Sr) from the Atlas V map (Fig. 6.5a), azimuthally symmetric.
6. Spherical spreading S(r) (Eq. 6.7) and empirical attenuation A(r, f) (Eqs. 6.8–6.9).
7. Sum (Eq. 6.10) per time step → spectrogram; metrics (SPL, SEL, L_eq, A-weighting, max levels) left to the user (p. 88).
- No ground reflection/ground-effect term appears in Eq. 6.10, although p. 78 lists "ground effects from receiver geometry" as step four of the SPL procedure.
  > Check whether the code includes a ground term; the chapter text never defines one.

**Model data source (pp. 71–73).** Atlas V 401 JPSS-2 launch, Vandenberg SFB; stations 220 m–7.2 km from the pad (Fig. 6.1 map; campaign in Mathews et al. 2023, i.e. thesis Ch. 4). Cool, clear, light steady winds (Mathews & Gee 2025). Source parameters (spectrum, directivity) use only the three stations within 1 km; the attenuation model uses all stations to 7.2 km (Fig. 6.6 stations: r ≈ 240 m, 300 m, 700 m, 1.1, 1.2, 1.5, 2.8, 3.0, 3.9, 6.8, 7.7 km; d = ground distance) (p. 85). Max spectra are averaged over the "period of maximum directivity", defined as the time within 3 dB of the maximum recorded level (Fig. 6.6 caption, p. 85). Data below 10 Hz (Sr = 0.0064) are excluded for microphone low-frequency uncertainty (p. 84).

**Validation inputs (p. 89–90, 94).** Vehicle parameters (Table 6.1), the actual flight trajectory, η = 0.34% (Alpha) and 0.4% (Starship). Error stats are on L_Z,max and L_A,max at each site; ±2 dB band is the accuracy criterion; trend fits log-linear for Alpha and "exponential" for Starship (p. 94; the Fig. 6.10 caption says "logarithmic").

**Data dependence.** Everything is built from time-resolved full-scale microphone records (spectra during the max-directivity window, slow-time level histories). No modal decomposition is used; spectral estimation parameters (block length, window, averaging time) are not given in this chapter.
  > Check Ch. 4 / Mathews et al. 2023 for spectral-processing parameters.

### Key equations
Notation: F thrust (N), U_e nozzle exit velocity (m/s), η acoustic efficiency, W_ref = 10⁻¹² W, D_e single-nozzle exit diameter, N_e number of nozzles.

- Mechanical power (Eq. 6.1, p. 74): $W_m \approx \tfrac12 F U_e$
- Overall acoustic power (Eq. 6.2, p. 75): $W_{OA} = \eta W_m \approx \tfrac{\eta}{2} F U_e$
- OAPWL (Eq. 6.3, p. 75): $L_{W,OA} = 10\log_{10}(W_{OA}/W_{ref}) = 10\log_{10}\!\left(\tfrac12\tfrac{\eta}{W_{ref}} F U_e\right)$
- Strouhal number and effective diameter (p. 76): $\mathrm{Sr} = f D_{eff}/U_e$, $D_{eff} = D_e\sqrt{N_e}$
- Normalised power spectrum, dB re $W_{OA}D_{eff}/U_e$ (Eq. 6.4, p. 77), with ln the natural log:
$$\bar L_W(\mathrm{Sr}) = \begin{cases} 8.686\ln\mathrm{Sr} + 58.6, & \mathrm{Sr} < 3.6\times10^{-3}\\ 0.26(\ln\mathrm{Sr})^3 - 15.98\ln\mathrm{Sr} - 33.88, & 3.6\times10^{-3} \le \mathrm{Sr} \le 4.8\times10^{-2}\\ -8.686\ln\mathrm{Sr} - 19, & \mathrm{Sr} > 4.8\times10^{-2}\end{cases}$$
  > Checked: the branches are continuous (≈ 9.7 dB at 3.6e-3, ≈ 7.4 dB at 4.8e-2); 8.686 ln = 20 log₁₀ gives the stated ±20 dB/decade; the cubic peaks at ln Sr = −√(15.98/0.78) = −4.53, i.e. Sr ≈ 0.0108, at ≈ 14.3 dB, matching Fig. 6.2.
- De-normalisation (Eq. 6.5, p. 77), as printed:
$$L_W(\mathrm{Sr}) = \bar L_W(\mathrm{Sr}) - 10\log_{10}\!\left(W_{OA}\frac{D_{eff}}{U_e}\right) = \bar L_W(\mathrm{Sr}) - 10\log_{10}\!\left(\frac{\eta}{2W_{ref}} F D_{eff}\right)$$
  > Check sign: since L̄_W is "PWL re W_OA D_eff/U_e" (Fig. 6.2 axis), the physically consistent form is L_W = L̄_W **+** 10 log₁₀(W_OA D_eff/(U_e W_ref)). The printed minus (and missing W_ref in the first line) looks like a typo; the code should be checked. The second line follows from W_OA D_eff/U_e = (η/2) F D_eff.
- Axial source location, metres from the nozzle exit plane (Eq. 6.6, p. 80): $s(\mathrm{Sr}) = 9.85\,\mathrm{Sr}^{-0.21} D_{eff}$
  (e.g. ≈ 26 D_eff at Sr 0.01, ≈ 16 D_eff at Sr 0.1, my calculation; cf. the fixed 18 D_eff used to build Q.)
- Spherical spreading (Eq. 6.7, p. 83), printed as $S(r) = 10\log_{10}(4\pi r^2)$ and **added** in Eq. 6.10.
  > Check sign: physically this must be subtracted (S(r) = −10 log₁₀ 4πr²) for Eq. 6.10 to give SPL from PWL + Q. Probably a sign-convention slip in the text.
- Butterworth-type loss filter (Eq. 6.8, p. 86): $B(f,r) = 10\log_{10}\!\left(\dfrac{1}{[1 + f/f_c]^{\,n}}\right)$, $n = \sqrt{r/r_c}$
  (note it is $1 + f/f_c$, not $1 + (f/f_c)^2$; filter order grows as √r, so B → 0 as r → 0.)
- Double-filter attenuation (Eq. 6.9, p. 86): $A(f,r) = B_1(f,r) + B_2(f,r)$, with $f_{c1} = 8$, $r_{c1} = 12\,000$, $f_{c2} = 8\,000$, $r_{c2} = 3\,000$ (p. 87).
  > Check units: text calls f_c a "critical Strouhal number" (p. 86), but the values (8, 8000) and "rolloff starting at 10 Hz" imply Hz, and Fig. 6.7 uses dimensional f. r_c presumably in metres (Fig. 6.7 axis is labelled "r (km)" but runs 1000–7000, i.e. metres). Sanity check with Hz/m: at 1 kHz, 7 km, A ≈ −16.0 − 0.8 = −16.8 dB (measured ≈ −15 dB); at 10 kHz, 7 km, A ≈ −23.7 − 5.4 ≈ −29 dB (measured 30–40 dB). Consistent.
- Received SPL spectrum (Eq. 6.10, p. 88): $L(r,\theta,\mathrm{Sr}) = L_W(\mathrm{Sr}) + A(r,f) + S(r) + Q(\theta,\mathrm{Sr})$
- Directivity index definition (p. 81): Q = 10 log₁₀ of intensity at (θ, f) over that of an omnidirectional source of equal power (Beranek & Mellow 2012); θ is measured from the plume axis.

### Data tables
**Table 6.1 (p. 89): vehicles.**

| Vehicle | Class | Configuration | Total thrust (MN) | U_e (approx., m/s) | D_e / D_eff (approx., m) |
|---|---|---|---|---|---|
| Firefly Alpha | small | 1 core, 4 engines | 0.73 | 2900 | 0.38 / 0.76 |
| ULA Atlas V 401 (model basis) | medium | 1 core, 2 nozzles | 3.83 | 3160 | 1.43 / 2.02 |
| SpaceX Starship | super-heavy | 1 core, 33 engines | 73.5 | 3340 | 1.31 / 7.53 |

> Checked: D_eff = D_e √N_e for all three (0.38·2, 1.43·√2, 1.31·√33).

**SATURN model constants (pp. 75–87).** η = 0.33% (Atlas V fit), 0.34% (Alpha run), 0.4% (Starship run); W_ref 10⁻¹² W; Eq. 6.4 breakpoints Sr = 3.6×10⁻³ and 4.8×10⁻²; s(Sr) = 9.85 Sr^−0.21 D_eff; Q built with source origin 18 D_eff; attenuation f_c1 = 8, r_c1 = 12 000, f_c2 = 8000, r_c2 = 3000; peak directivity ≈ 72° for Sr > 0.03.

**Validation statistics (Figs. 6.8, 6.10, pp. 91, 95; errors are model − measured, dB).**

| Case | Metric | SATURN RMSE | SATURN st.dev | SATURN min/max | SP-8072 RMSE | SP-8072 st.dev | SP-8072 min/max |
|---|---|---|---|---|---|---|---|
| Alpha F5 (0.14–7.3 km) | L_Z,max | 1.1 | 1.2 | −2.6 / 2.0 | 2.2 | 1.7 | −2.7 / 4.6 |
| Alpha F5 | L_A,max | 2.0 | 1.6 | −2.0 / 4.6 | 8.8 | 4.1 | 2.4 / 20.2 |
| Starship F6 (1–35.5 km) | L_Z,max | 3.9 (0.9 for d < 20 km) | 3.6 | −1.7 / 12.3 | 6.6 (2.7 for d < 20 km) | 4.9 | −0.3 / 17.9 |
| Starship F6 | L_A,max | 9.1 (5.7 for d < 20 km) | 9.3 | −15.1 / 19.8 | 24.5 (11.8 for d < 20 km) | 15.3 | 6.5 / 55.4 |

> Read from the statistics boxes in Fig. 6.8(b,d) and 6.10(b,d); verify against the PDF. Sign convention (model − measured) inferred from the plots.

### Figures worth remembering
- Fig. 6.1 (p. 72): map of Atlas V JPSS-2 stations around SLC-3E, Vandenberg.
- Fig. 6.2 (p. 77): normalised PWL spectrum, Atlas V min/max band and mean vs SP-8072 vs the SATURN fit; SP-8072 peak higher and broader.
- Fig. 6.3 (p. 78): schematic of frequency-dependent source location s(Sr) and plume angle θ.
- Fig. 6.4 (p. 80): apparent source location x/D vs Sr: SP-8072 single-nozzle curves (≈ 40–80 D at low Sr), James et al. (2012) fit (rolls off sharply above Sr ≈ 0.1), Gee et al. (2016) GEM-60, and the 9.85 Sr^−0.21 fit (≈ 40 D at Sr 10⁻³ to ≈ 9 D at Sr 1).
- Fig. 6.5 (p. 82): (a) Q(θ, Sr) map, Sr 10⁻³–10¹; (b) Q at SP-8072's five Sr (0.004, 0.0125, 0.04, 0.125, 0.4): SP-8072 peaks ≈ 30–50°, SATURN ≈ 55–75°.
- Fig. 6.6 (p. 85): ΔL(f, r) of max spectra relative to the 240 m station for all Atlas V stations to 7.7 km; up to −20 to −30 dB at 10 kHz.
- Fig. 6.7 (p. 87): measured vs double-filter A(r, f) maps with −6/−12/−18 dB contours; model smoother and slightly more aggressive.
- Fig. 6.8 (p. 91) and Fig. 6.10 (p. 95): max-level validation with statistics boxes (above).
- Fig. 6.9 (p. 93) and Fig. 6.11 (p. 97): time histories and max spectra at close/mid/long sites for Alpha and Starship.

---

## Chapter 7: Conclusions (pp. 101–105)

### Key findings (synthesis of the whole thesis)
- Ch. 2: coherence-based decomposition of acoustical-holography source maps of an installed afterburning GE F404 shows distinct local maxima along the lipline separated in space and frequency, possibly from different mechanisms (subsonic large-scale turbulence, Mach-wave radiation) behind multi-lobe radiation; phase unwrapping extends usable holography bandwidth (p. 101–102).
- Ch. 3: BSN sources aligned with visible shock cells in the overexpanded afterburning F404; peak-frequency trends agree with other full-scale engines but not lab-scale/simulated jets; full-scale BSN radiates ≈ 10° further forward than an afterburning-like F404 LES; convergent-nozzle shock-spacing/BSN models need empirical correction for C-D nozzles; BSN sources are spatially distributed and partially correlated (p. 102).
- Ch. 4: Atlas V near-to-far-field acoustics; strong azimuthal asymmetry of ignition overpressure tied to flame-trench orientation; directional source model with ground reflections predicts SPLs with little tuning; azimuthal peak-frequency differences linked to nozzle-cluster geometry and visibility (pp. 102–103).
- Ch. 5: empirical OAPWL / max OASPL model incl. near-ground effects, typically within 2 dB for jets and rockets; low sensitivity to parameters unless far off-design; apparent η differs between similar launches (p. 103).
- Ch. 6: SATURN summary (pp. 103–104). Note: p. 104 says SATURN "accurately reproduced measured sound levels from a Falcon 9 launch", which conflicts with Ch. 6 (validated on Alpha and Starship only).
  > Check: likely an error in the thesis text (or a reference to unpublished work).

### Future work (pp. 104–105)
- Lab-scale afterburning-like jets (Kumar et al. 2025) to test whether full-scale multi-lobe sources appear; combine with simulations (p. 104).
- Better shock-spacing models for C-D nozzles; lab vs LES vs full-scale afterburning BSN comparisons (p. 104).
- **Synchronised flow diagnostics (schlieren or flow measurements) with acoustics**, at lab and full scale, to tie radiation to flow features (pp. 104–105).
- BSN appears absent in rockets; unknown whether multi-lobe radiation occurs in rockets; Strouhal scaling fails to collapse across regimes and temperature should enter the scaling (p. 105).
- Multicore/asymmetric rocket sources; absorption–nonlinearity interplay in long-range propagation; extend SATURN with ray tracing and nonlinear propagation; aggregate more launch data; apply SATURN to aircraft jet noise (p. 105).

---

## Appendix A: Other notable contributions (pp. 106–108)
- A.1 Gee, Mathews, Anderson & Hart (2022), "Saturn-V sound levels: A letter to the Redditor", JASA 152(2), 1068–1073, doi:10.1121/10.0013216: historical review of Saturn V acoustics for an education special issue; author did historical research, data extraction, figures/multimedia and homework problems (p. 106).
- A.2 Gee, Olaveson & Mathews (2025a), "Convective Mach number and full-scale supersonic jet noise directivity", AIAA J. 63(4), 1393–1404, doi:10.2514/1.J064208: review of convective Mach number as the predictor of Mach-wave-radiation directivity; equal co-authorship (p. 107).
- A.3 Kumar, Meadows, Olaveson, Gee, Mathews & Pratt (2025), "Far-field noise measurements of a supersonic jet operating near afterburning conditions", Aerosp. Sci. Technol. 157, 109842, doi:10.1016/j.ast.2024.109842: first acoustics of the Virginia Tech Advanced Propulsion and Power Laboratory lab-scale afterburning jet rig; author designed the intensity-scanning apparatus (p. 107).
- A.4 Gee et al. (2024), "Starship super heavy acoustics: Far-field noise measurements during launch and the first-ever booster catch", JASA Express Lett. 4, 113601, doi:10.1121/10.0034453; Gee et al. (2025b), "Starship Super Heavy acoustics: Comparing launch noise from Flights 5 and 6", JASA Express Lett. 5, 023602, doi:10.1121/10.0035925. First published Starship far-field data; the author helped plan, collect and write (p. 108). Flight 6 data from 2025b are the Ch. 6 Starship validation set. See [gee-2024-starship-super-heavy-far-field-noise.md](gee-2024-starship-super-heavy-far-field-noise.md).

## Appendix B: SATURN appendices (pp. 109–112)

### B.1 Archive (p. 109)
MATLAB code at https://github.com/logmath/saturn.

### B.2 Computing θ and r (pp. 109–110)
- Unit velocity (Eq. B.1): $\hat{\mathbf V}(t) = \mathbf V(t)/\lVert\mathbf V(t)\rVert$, with V from the trajectory or $\dot{\mathbf T}$.
- Frequency-dependent source position (Eq. B.2): $\mathbf S(t,\mathrm{Sr}) = \mathbf T(t) + s(\mathrm{Sr})\,\hat{\mathbf V}(t)$
  > Check sign: as written the source is placed *ahead* of the vehicle along its velocity; the plume lies opposite to V, so one would expect $\mathbf T - s\hat{\mathbf V}$ (unless V is defined as the plume direction). Verify in the code.
- Observer vector (Eq. B.3): $\mathbf R(t,\mathrm{Sr}) = \mathbf P - \mathbf S(t,\mathrm{Sr})$, $r = \lVert\mathbf R\rVert$
- Plume angle (Eq. B.4): $\theta(t,\mathrm{Sr}) = \cos^{-1}\!\left(\dfrac{\mathbf R\cdot\mathbf V}{\lVert\mathbf R\rVert\lVert\mathbf V\rVert}\right)$
  > Same orientation question: with R·V, θ = 0 is forward of the vehicle, whereas Q is defined from the plume (downstream) axis with peak at ~72°. Check the convention.
- Retarded-time/observer-time handling is not described in the appendix (Figs. 6.9/6.11 use "observer time").

### B.3 Source-location angular errors (pp. 110–112)
- "True" source from Eq. 6.6; tested fixed sources at (1) the nozzle exit and (2) 18 D_eff downstream; flat ground, vertical launch, dominant source at 30° elevation for each observer distance (pp. 110–111).
- Nozzle-exit assumption underestimates the angle, worst at low Sr: at the rocket max-spectrum peak, Sr ≈ 0.01–0.02, errors exceed 5° except beyond ~200 D_eff (p. 112).
- 18 D_eff assumption: error < 5° beyond ~70 D_eff at Sr 0.01–0.02; sign changes near Sr ≈ 0.1 (overestimate above, underestimate below; Fig. A.1b) (pp. 111–112).
- Beyond ~1000 D_eff the assumption barely matters (p. 112).
- Fig. A.1 (p. 111): error maps vs d/D_eff (60–1000) and Sr (10⁻³–1); contours to ≈ −20° at Sr 10⁻³, d ≈ 60 D_eff.
- Note: Ch. 6 text (p. 79) says this appendix is "B.3"; the figure is labelled "A.1".

---

---

## Notation

**Ch. 1–3**
- Dj: fully expanded jet diameter; Uj: fully expanded jet velocity; Sr = f Dj/Uj (Strouhal).
- Mj, Md: fully expanded and design Mach numbers; Mc, Uc: convective Mach number and velocity; NPR: nozzle pressure ratio; TTR: total temperature ratio.
- β_conv = √(Mj²−1); β = √|Mj²−Md²|; L̄, L̄_n: average and nth shock-cell spacing; L̄_meas: measured average spacing; μ1 ≈ 2.405 (first zero of J0); ε ≈ 0.06.
- θ: inlet angle (0° = upstream axis); φ = 180° − θ.
- L̃c, L̃s: estimated potential-core and supersonic-core lengths.
- AB: maximum afterburner; MIL: military power; N2: engine high-pressure spool speed.
- MARP: microphone array reference point (x ≈ 3.96 m); SNRP: shock noise reference point (x/Dj = 5.6; also written "SCRP" in Fig. 7's caption).
- CSM: cross-spectral matrix; SONAH: statistically optimised near-field acoustical holography; NAH: near-field acoustical holography; EWM: equivalent wave model; UPAINT: unwrapped phase array interpolation.
- PF / PFD: partial field / partial field decomposition; VR: virtual reference; OLVR: optimised-location virtual reference; MUSIC: multiple signal classification; PCD: partial coherence decomposition; K: number of VRs/PFs; M: number of PFs within 10 dB.
- γ²: magnitude-squared coherence; γ²_crit: VR coherence criterion; L_γ²/λ: coherence length (γ² drops to 0.5) over acoustic wavelength.
- LM: local maximum; MWR: Mach wave radiation; LSN / FSN: large-/fine-scale structure noise; BSN = BBSAN: broadband shock-associated noise.

**Ch. 4–5**
- φ̃ — azimuth about the vehicle axis relative to the RD-180 nozzle pair (0° broadside to both nozzles, 90° end-on) (Ch. 4, p. 48).
- d — horizontal pad-to-station distance; R — distance to source, R = d/sin θ_max (65° in Ch. 4) (pp. 49, 52).
- D = 1.43 m single-nozzle exit diameter; D_e = D√2 = 2.02 m equivalent diameter; S — nozzle centre spacing (S/D ≈ 1.14) (p. 47).
- L_pk — peak SPL of the IOP; OASPL_max — maximum 1-s-averaged OASPL (dB re 20 µPa) (pp. 51).
- T or F — total thrust; U_e — exit velocity; W_m — mechanical (stream) power; W_a — acoustic power; η = W_a/W_m acoustic efficiency; OAPWL re 10⁻¹² W (p. 52; Ch. 5 p. 59).
- Q_max (Ch. 4) / Q_max,OA (Ch. 5) — maximum overall directivity index; δ — ground-reflection pressure factor (Ch. 5 p. 61).
- Sr = f D_c/U_c — Strouhal number with characteristic diameter D_c and velocity U_c (p. 54).
- f_pk — 1/3-octave spectral peak frequency (p. 54).

**Ch. 6, App. B**
- F: total thrust (N); U_e: nozzle exit velocity; D_e: single-nozzle exit diameter; N_e: number of engines; D_eff = D_e√N_e
- W_m: mechanical power; W_OA: overall acoustic power; η: acoustic efficiency; W_ref = 10⁻¹² W; L_W,OA: OAPWL
- Sr = f D_eff/U_e (Strouhal); L̄_W(Sr): normalised relative power spectrum (dB re W_OA D_eff/U_e); L_W(Sr): absolute power spectrum
- s(Sr): apparent axial source distance downstream of the nozzle exit; θ: plume angle between plume axis and source–observer line; r: source–observer distance; d: ground distance from pad
- Q(θ, Sr): directivity index; S(r): spherical-spreading term; B(f, r): Butterworth-type loss; A(f, r) = B₁ + B₂: double-filter attenuation; f_c, r_c, n: critical frequency, critical distance, filter order (n = √(r/r_c))
- T(t), V(t), V̂(t): trajectory, velocity, unit velocity; P: observer; S(t, Sr): source position; R: source-to-observer vector (ENU frame, origin at vehicle base on pad)
- L_Z,max, L_A,max: unweighted and A-weighted maximum (slow-time) levels; L_Z,OA: overall level vs time
- MWR: Mach-wave radiation; BSN: broadband shock-associated noise (thesis uses BSN, not BBSAN)

## Relevance to this project

**Ch. 1–3 (F404 holography, BSN)**
- **BBSAN source localisation without flow access (Ch. 3):** BSN sources appear at discrete shock cells; cell I is silent and the loudest cells are near the end of the potential core (VI–VII). This is a full-scale, TTR 7 counterpart to the user's schlieren work on shock-cell/shear-layer interaction. Shock-cell positions from mean schlieren (or the in-situ-photo approach here) can be compared directly with acoustic source maps. The finding that shock spacing is set mainly by over- vs under-expansion and only secondarily by β, and is insensitive to TTR, is testable in lab rigs.
- **Shock-spacing models:** Prandtl–Pack (1.306 β_conv), HB–F with ε = 0.06, and the β-generalised form all fail for overexpanded C-D jets. The user's screech closure models need the shock wavenumber k_s = 2π/L̄ (cf. [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md), [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md)), so this is another argument for **measuring L̄ (e.g. from schlieren) rather than using Prandtl–Pack**. The decrease of L_n downstream (~0.97 → 0.72 Dj) matches the shrinking shock spacing invoked for A1/A2 staging in Nogueira et al.
- **Peak-frequency model:** f_pk = Uc/[L̄(1 − Mc cos φ)] is the same shock-wavenumber/KH-convection interference picture that underlies screech (screech is the upstream limit of this relation). Ch. 3 shows the relation works at full scale once L̄ is measured. The thesis says screech is generally absent in full-scale afterburning engines (p. 6), in contrast with the lab jets the user studies.
- **Partially coherent, multi-shock BSN source (Fig. 9):** supports wavepacket–shock-train interaction models (Tam stochastic model; wavepacket BSN models with coherence factors). One caveat (my own, not raised by the authors): coherence between *holographic reconstructions* can be inflated by the limited resolution of a ground-only, l = 0 SONAH, so the off-diagonal "islands" deserve an independent check. The user could do this with SPOD/BMD on schlieren: BMD triads between KH and the shock wavenumber are the natural lab analogue of "one wavepacket coherent with several shocks".
- **Coherence between upstream BSN and downstream MWR from the same shock source (Fig. 8):** a full-scale hint of shock-mediated coupling between forward- and aft-radiating components. This is relevant to feedback and upstream-propagating disturbances in screech and impinging jets (cf. [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md); Edgington-Mitchell 2018 upstream modes).
- **Methods (Ch. 2):** all methods here need **time-resolved, synchronous multi-mic data** (CSMs per frequency). OLVR/MUSIC/PCD is a frequency-domain, reference-based partial-field decomposition: a cousin of SPOD (the SVD of the CSM is effectively an SPOD of the array data at each frequency), but it adds physically placed virtual references to pull out incoherent subsources. It could be applied to schlieren SPOD outputs or acoustic arrays in the lab. UPAINT shows how to extend sparse-array bandwidth by unwrapping phase **across frequency per pair** with a coherence threshold, which is useful for the group's microphone arrays. Coherence length normalised by wavelength is a cheap diagnostic of how many independent subsources are active.
- **Spatiospectral lobes / quasi-harmonic LMs (Ch. 2):** the possible shock-cell origin of the near-harmonic lobe spacing is left open. If the lobes are shock-related, they are a full-scale, high-TTR analogue of the multiple wavepacket–shock interaction peaks. The K-H vs Orr attribution (LM II/III vs LM I) links to [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) and Schmidt et al. 2018 SPOD. Intermittency or time variation of the lobes (Ch. 2 cites temporal-structure studies, p. 17) is not analysed here; an SPOD → reconstruction → Hilbert POD pipeline could track it.
- **Rocket link:** Ch. 1 notes that BSN's importance in rocket plumes is unproven (p. 6), and rockets peak about an order of magnitude lower in Sr than heated jets (p. 16). Both are useful context for the sibling rocket-noise notes ([mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md), [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)).
- **Modelling/simulation side:** no new simulation in Ch. 2–3; comparisons are with LES (Liu et al. TTR 2.9 overexpanded, TTR 7 underexpanded; Leete et al. TTR 7 F404-like). LES captures the trends but underpredicts BSN peak frequency, and the overexpanded LES reproduces the measured shock spacing for IV–VIII. The SONAH model assumes axisymmetric (l = 0) cylindrical waves, a ground-only array, and the lipline as the source surface.

**Ch. 4–5 (Atlas V, sound-power model)**
- **Twin-jet coupling / shielding at full scale.** The RD-180 is effectively a closely spaced twin jet (S/D ≈ 1.14). The azimuth-dependent peak frequency (merged vs single plume, Sr collapse with D_e vs D) is a full-scale analogue of the twin-jet questions in [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md) and the AR-2 twin rectangular jets in [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md) / [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md). There is no evidence of screech/coupling tones here (broadband mixing noise at Sr ≈ 0.02 by D_e, U_c); the link is plume merging and shielding, not resonance. Lab twin-jet schlieren with azimuthally distributed mics (shielded vs broadside) could test whether the low-frequency "bump" comes from the merged region, e.g. by SPOD of schlieren split into pre- and post-merging zones.
- **Impinging / deflected jet: IOP and flame trench.** The ~30 dB azimuthal spread of IOP set by the trench exit, and the "whoosh" IOP possibly due to trench resonance, relate to impinging-jet acoustics and duct/cavity resonance; cf. [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md) and [ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md). A trench-resonance hypothesis is testable with time–frequency analysis (wavelets / Hilbert) of the IOP transient, which the chapter does not do.
- **Methods vs data type.** Everything here is single-point microphone statistics (peak levels, 1-s OASPL, 1/3-octave spectra), which need time-resolved pressure but no spatial resolution. No synchronised array (no GPS) means no coherence, beamforming or SPOD across stations; a lab equivalent with a synchronised mic arc would allow SPOD/BMD of the far field. Averaging spectra only over the ±3 dB-of-max window is a crude handling of non-stationarity (vehicle ascent); Hilbert-based instantaneous amplitude/frequency or wavelets would track the peak-frequency drift over time.
- **Nonlinear propagation.** The f⁻² slope persisting to 20 kHz mid-field, and Ch. 5's weak-shock-like decay for the humid Landsat 9 launch, are reminders that far-field spectra of heated supersonic jets are shaped by propagation as well as source physics; relevant if the group compares lab far-field mic spectra with full-scale data.
- **Scaling tools.** The η–Q_max–δ model (Ch. 5) gives a quick OASPL_max check for lab heated/unheated jets from exit conditions, and the ground-factor discussion matters for any outdoor or ground-plate measurement. See also [mathews-2021-falcon-9-far-field-noise.md](mathews-2021-falcon-9-far-field-noise.md) (θ_max), [gee-2023-sls-artemis-i-far-field-noise.md](gee-2023-sls-artemis-i-far-field-noise.md) (IOP asymmetry with trench), [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (η range, exit vs fully-expanded parameters), [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md).
- **No modelling/simulation in Ch. 4** beyond the empirical OASPL model and a qualitative appeal to the Eldred/Kandula two-zone clustered-jet model; Ch. 5 is empirical/semi-analytic (Lighthill-style efficiency, spherical spreading, Embleton ground impedance, CEA (CEARUN) and NPSS for engine parameters).

**Ch. 6 (SATURN)**
- **Source-location and directivity models for heated supersonic jets.** s(Sr) ∝ Sr^−0.21 D_eff and the ≈ 72° (from the plume axis, i.e. ≈ 108° from the upstream axis convention) high-Sr directivity peak are direct full-scale counterparts of what the user's schlieren/acoustic SPOD sees in lab jets: low-Sr energy sourced further downstream, high-Sr energy near the nozzle with MWR-dominated aft directivity. The frequency-dependent compact-source idea and the B.3 angle-error maps are useful when placing microphones near a lab jet (near-field: ~10–200 D_eff), where the same errors apply. Compare with [james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md) (vector-intensity source locations, rejected here because of ground impingement) and [lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (which flagged SP-8072's source-origin problem and Strouhal-scaling doubts).
- **Impingement link.** SATURN deliberately excludes deflected-plume and ground-impingement effects, and these are exactly where it fails (first ~8–15 s of Starship; closest Alpha site). The Shock Lab impinging-jet feedback work ([weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md)) addresses this missing physics; SATURN has no tonal/resonance component at all (and Ch. 7 notes BSN appears absent in rockets), so screech/impingement tones would have to be added as a separate source.
- **Nonlinear propagation.** The measured vs linear-absorption gap (15 vs 26 dB at 1 kHz; 30–40 vs > 1200 dB at 10 kHz over 7 km) is a strong full-scale demonstration of nonlinear steepening transferring energy upward; relevant to any far-field use of lab acoustics and to the intermittency/shock-content statistics in the sibling notes.
- **Data dependence.** SATURN is purely spectral, built from time-resolved microphone records (max spectra in the −3 dB window, slow-time levels). It does not use SPOD/BMD/POD, and gives no information on intermittency or instantaneous frequency; its time resolution is only the slow motion of the source along the trajectory. The thesis itself (p. 104–105) calls for synchronised schlieren + acoustics, which is the user's group's core capability.
- **Modelling vs experiment.** It is a semi-empirical model, not LES/LSA. Physics enters only through η, Strouhal scaling with D_eff = D_e√N_e, and the compact-source/azimuthally symmetric directivity assumptions; propagation is a curve fit to one launch with no weather. Its stated domain of validity is ≈ 1 dB within 20 km, degrading beyond with atmospheric refraction. The intro (pp. 69–70) argues that LAVA-type CFD/CAA is best for near-field plume/pad interactions, leaving far-field prediction to empirical tools.
- Cross-links: Ch. 6 uses η and W_m from Ch. 5 ([mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md)); Starship validation data from Gee et al. 2025b (see [gee-2024-starship-super-heavy-far-field-noise.md](gee-2024-starship-super-heavy-far-field-noise.md)); Falcon 9 Strouhal-scaling caveats in [mathews-2021-falcon-9-far-field-noise.md](mathews-2021-falcon-9-far-field-noise.md); near-field source location from vector intensity in [gee-2016-near-field-intensity-static-rocket-firings.md](gee-2016-near-field-intensity-static-rocket-firings.md) (GEM-60, the basis of Eq. 6.6); nonlinear propagation in [reichman-2018-qm2-srm-far-field-acoustics.md](reichman-2018-qm2-srm-far-field-acoustics.md).
