---
key: "yeung-2022-3d-spod-twin-rectangular-jet"
title: "Three-Dimensional Spectral POD of Supersonic Twin-Rectangular Jet Flow"
authors: ["Yeung, B. C. Y.", "Schmidt, O. T.", "Brès, G. A."]
year: 2022
type: "conference"
venue: "AIAA 2022-3345 (Aviation)"
bib: {"booktitle": "AIAA AVIATION 2022 Forum", "note": "AIAA Paper 2022-3345, Chicago, IL, 27 Jun–1 Jul 2022"}
doi: "10.2514/6.2022-3345"
arxiv: ""
pdf: "modal-decomposition/Yeung-EtAl_2022_Three-Dimensional-Spectral-POD-Of-Supersonic-Twin-Rectangular-Jet-Flow.pdf"
version: "conference"
unverified: []
group: false
facility: "Charles LES (Cascade)"
data: ["LES"]
methods: ["SPOD", "symmetry-decomposition"]
flow: ["twin-jet", "rectangular-jet", "supersonic", "ideally-expanded"]
phenomena: ["screech", "flapping", "coupling", "KH-wavepackets"]
params: {"M_j": "1.5", "NPR": "3.671", "AR": "2", "TR": "1", "Re": "1.07×10⁶"}
topics: ["modal-decomposition", "twin-jet-coupling"]
related: ["bres-2021-les-twin-rectangular-jets-plasma", "esfahani-2021-coupling-modes-twin-rectangular-jets", "esfahani-2021-control-twin-rectangular-jet-coupling", "jeun-2024-screech-coupling-closure-rectangular-twin-jets", "nogueira-2021-twin-jet-coupling-spatial-lsa", "yeung-2024-adaptive-spod-broadband-tonal", "schmidt-2020-guide-spod", "suzuki-2026-coherent-structures-axis-switching-elliptical-jets"]
cites: ["bres-2021-les-twin-rectangular-jets-plasma", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "esfahani-2021-control-twin-rectangular-jet-coupling", "esfahani-2021-coupling-modes-twin-rectangular-jets", "schmidt-2018-spectral-analysis-jet-turbulence", "schmidt-2020-guide-spod", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "D2 symmetry split (SS/SA/AS/AA) before 3D SPOD of AR-2 twin-jet LES (M_j 1.5): exact, 4× less memory; St 0.3 screech only in AA/AS (minor-axis flapping)"
---
# Three-Dimensional Spectral POD of Supersonic Twin-Rectangular Jet Flow

- **Authors:** B. C. Y. Yeung, O. T. Schmidt (UC San Diego), G. A. Brès (Cascade Technologies)
- **Source:** AIAA AVIATION 2022 Forum, Chicago IL & virtual, 27 Jun–1 Jul 2022. Conference paper; ONR award N00014-20-1-2311 (p. 17).
- **DOI:** 10.2514/6.2022-3345
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Yeung-EtAl_2022_Three-Dimensional-Spectral-POD-Of-Supersonic-Twin-Rectangular-Jet-Flow.pdf` (18 pp.; local only, not in Git)
- **Tags:** SPOD, 3D SPOD, symmetry decomposition, D2 dihedral symmetry, SS/SA/AS/AA components, twin rectangular jet, AR-2 nozzle, screech, LES, Charles, Chu energy norm, statistical convergence, far-field acoustics, KH wavepackets

## Summary
Non-axisymmetric jets cannot be Fourier-decomposed in azimuth, so SPOD of their full 3D fields is costly and slow to converge. The authors note that rectangular, elliptic and twin jets belong to the dihedral group D2: they are mirror-symmetric about both the major and minor axes. They split each 3D snapshot into four mutually orthogonal symmetry components (SS, SA, AS, AA), which sum exactly to the original field, and run SPOD on one quadrant of each component independently. They demonstrate this "D2-symmetric SPOD" on a new LES (Charles) of the OSU AR-2 twin-rectangular jet at M_j = 1.5, nominally ideally expanded and cold, the same case as Brès et al. (2021). Only the AA and AS components (both antisymmetric about the minor axis, i.e. flapping) show a low-rank screech peak at St = 0.3, which agrees with the OSU microphone data. Without symmetry decomposition, the four leading full-field SPOD modes resemble the leading mode of each component in turn, but they are noisier and the fourth is not converged. The decomposition therefore saves memory (4×), speeds convergence, and makes the far-field acoustics easier to interpret by symmetry.

## Key findings
- **The decomposition is exact and orthogonal** (p. 5, eq. 3–10):
  - The four components sum to the original fluctuation field (eq. 10), and any two of them are orthogonal under the volume inner product (eq. 7–9). This is the D2 analogue of azimuthal Fourier modes for O(2) round jets (p. 5).
  - All four quadrants of each component carry the same information, so SPOD needs only one quadrant: a 4× memory saving for SPOD "or indeed for any modal decomposition technique" (p. 5).
  - The mean is also made SS-symmetric by averaging its four quadrants (eq. 1), with sign flips on v̄ and w̄ (p. 4).
- **Screech lives in AA and AS** (p. 8, Fig. 5):
  - In the pressure SPOD, AA and AS show a distinct peak at St = 0.3 with a large gap between the leading and second eigenvalues (low rank), which the authors read as a physical instability, here screech (p. 8).
  - SS and SA show no such low-rank peak at St = 0.3 (Fig. 5d,e). So screech is antisymmetric about y = 0 (the major-axis plane containing both nozzle centrelines), i.e. "antisymmetric along the minor axis" in the paper's words, and can be either symmetric or antisymmetric about z = 0 (p. 17).
  - Visual reading of Fig. 5: the leading eigenvalue at St 0.3 is about 5 × 10⁻³ for AA and 3 × 10⁻³ for AS, against about 1 × 10⁻³ (SS) and 8 × 10⁻⁴ (SA). AA is the stronger of the two screech components *(read off the log axes; not stated)*.
  - The same AA/AS-only peak appears with the full state vector and Chu energy norm (Fig. 10, p. 8, 14).
- **Full-field SPOD vs symmetric SPOD** (p. 8, Fig. 5a, 6–9):
  - Full-field SPOD also peaks at St = 0.3 in its leading and second eigenvalues. Its volume-integrated PSD is four times the sum of the component PSDs, because it integrates over all four quadrants (p. 8).
  - At St = 0.3, full-field modes 1, 2 and 3 clearly resemble the leading AA, AS and SS modes. Mode 4 is too poorly converged to confirm a match with SA, though both show a doubled wavenumber in z relative to the other three (p. 8, Fig. 9).
  - The symmetric modes are smoother (better converged) and exactly (anti)symmetric by construction (p. 8).
  - The authors stress that with finite data, full-field SPOD is not guaranteed to recover all four symmetries. It must do so only "eventually", given enough realisations (p. 8).
- **Hydrodynamic structure** (p. 8, Fig. 11; isosurface ±0.3 of normalised pressure):
  - All components show KH-type wavepackets in the shear layers, as in round jets (Schmidt et al. 2018).
  - At St = 0.9 the modes peak further upstream and do not extend as far downstream as at St = 0.3 (p. 8).
- **Acoustic radiation by symmetry** (p. 8, Fig. 12; isosurface ±0.025):
  - The radiated fields are well defined and dominated by a single wavenumber, consistent with the most coherent structures being the most efficient radiators (Jordan & Colonius 2013; p. 8).
  - At St = 0.3, AA, AS and SS radiate strongly; SA much less. SS radiation grows with x, whereas AA and AS radiation decays with x, which the authors tie to screech coming from shock–shear-layer interaction and the shocks weakening downstream (p. 8).
  - At St = 0.9, AA, AS and SA radiate distinct far fields; SS does not (p. 8, Fig. 12f).
  - Modes are normalised by their peak, not scaled by energy, so these are shape comparisons only (p. 8).
- **Shock cells despite ideal expansion** (p. 3, Fig. 2): the rectangular nozzles, sharp throats and the actuator groove upstream of each exit produce visible shock cells at the nominal design condition.
- **Future work** (p. 17): D2-symmetric SPOD of a forced (plasma-actuated) twin jet, and D2 decomposition for other modal methods.

## Setup / method
- **Configuration:** OSU twin-rectangular nozzle of aspect ratio 2 (Esfahani et al. 2021), with the nozzle explicitly in the domain, including the lip groove for plasma actuators (Fig. 1, p. 3). Coordinates: x streamwise, y minor axis, z major axis (through both nozzles). The z = 1.8h plane passes through one nozzle's centreline; y = ±0.5h are the lip lines (p. 3–4, 7).
- **LES** (Table 1, p. 3):

  | Quantity | Value |
  |---|---|
  | Solver | Charles (Cascade), unstructured compressible LES (Brès et al. 2017) |
  | M_j = U_j/c_j | 1.5 (nominally ideally expanded) |
  | M_a = U_j/c∞ | 1.25 |
  | Re_j = ρ_j U_j D_e/μ_j | 1.07 × 10⁶ (about matches OSU) |
  | NPR p_t/p∞ | 3.671 |
  | p_j/p∞ | 1 |
  | NTR T_t/T∞ | 1 (cold) |
  | T_j/T∞ | 0.69 |
  | Control volumes N_cv | 77 × 10⁶ |
  | Time step dt c∞/h | 0.002 |
  | Simulated time t_sim c∞/h | 500 |
  | D_e | 1.6h (equivalent diameter; h = nozzle height) |

  Nondimensionalisation: ρ∞, T∞, c∞ = √(γp∞/ρ∞), lengths by h (p. 3). The paper doesn't state SGS model, wall model, mesh details or inflow conditions here; it refers to Brès et al. (2021), which validated this setup against OSU data (p. 3). This LES is a new run (77M CVs, dt 0.002) rather than the 65M-cell run in that paper.
- **Database and SPOD parameters** (Table 2, p. 6):

  | Quantity | Value |
  |---|---|
  | Cartesian grid N_x × N_y × N_z | 469 × 202 × 254 (interpolated from the unstructured LES) |
  | Extent | x ∈ [0, 85h], y ∈ [−16h, 16h], z ∈ [−16h, 16h] |
  | Snapshots N_t | 5000 |
  | Sampling St_s | 12.8 |
  | N_FFT | 256 |
  | N_ovlp | 128 (50%) |
  | N_blk | 38 |
  | SPOD domain per component | first quadrant, x, y, z ∈ [0, 85h] × [0, 16h] × [0, 16h] (p. 8) |

  > Derived checks (own calculations, not stated): N_blk = (5000 − 128)/128 ≈ 38 ✓. ΔSt = 12.8/256 = 0.05, so St 0.3 and 0.9 are exact bins 6 and 18; Nyquist St = 6.4. With D_e/U_j = 1.6h/(1.25c∞) = 1.28 h/c∞, the snapshot spacing is 0.1 h/c∞ (every 50 time steps) and the record is 500 h/c∞ = t_sim ✓. Each block spans 25.6 h/c∞ ≈ 6 screech periods; the record ≈ 117 periods. Window type isn't stated (Schmidt & Colonius 2020 default is Hann; verify). Grid spacing (uniform or stretched) isn't stated.
- **SPOD algorithm** (p. 5–6): temporal FFT per block of the first-quadrant component data, CSD Ĉ = Q̂Q̂ᴴ/(N_blk − 1), solved by the method of snapshots; standard Welch-type SPOD per Schmidt & Colonius (2020). Needs time-resolved data. Two norms:
  - pressure only, W = volume integral, so λ is volume-integrated pressure variance (eq. 13);
  - [ρ, u, v, w, T] with the Chu (1965) compressible energy weights (eq. 14).
- **Preprocessing:** interpolate to Cartesian grid → symmetrised mean (eq. 1) → fluctuations (eq. 2) → four components (eq. 3–6) → SPOD of each quadrant (p. 6). A full-field SPOD without decomposition is run for comparison (p. 8).
- **Nomenclature** follows Rodríguez et al. (2018) for twin jets and later rectangular/twin-round work: first letter = symmetry about y = 0, second = about z = 0 (p. 4).

## Key equations
- Symmetrised mean (eq. 1, p. 4): $\bar{\mathbf q}_{SS}(x,y,z)=\tfrac14\,[\ \bar\rho(x,y,z)+\bar\rho(x,-y,z)+\bar\rho(x,y,-z)+\bar\rho(x,-y,-z),\ \ \bar u:\ ++++,\ \ \bar v:\ +-+-,\ \ \bar w:\ ++--,\ \ \bar T:\ ++++\ ]^T$, where the signs refer to the order (y,z), (−y,z), (y,−z), (−y,−z).
- Reynolds decomposition (eq. 2): $\mathbf q'(x,y,z,t)=\mathbf q(x,y,z,t)-\bar{\mathbf q}_{SS}(x,y,z)$.
- Symmetry components (eq. 3–6, p. 5), signs on the four reflections in the order (y,z), (−y,z), (y,−z), (−y,−z):

  | Component | ρ′, u′, T′ | v′ | w′ |
  |---|---|---|---|
  | SS | + + + + | + − + − | + + − − |
  | SA | + + − − | + − − + | + + + + |
  | AS | + − + − | + + + + | + − − + |
  | AA | + − − + | + + − − | + − + − |

  each multiplied by ¼. (Scalars and u follow the component's parity directly; v flips parity in y and w flips parity in z.)
- Orthogonality (eq. 7–9): $\langle\mathbf q'_{SS},\mathbf q'_{SA}\rangle=0$, using $\mathbf q'_{SS}(z<0)=\mathbf q'_{SS}(z>0)$, $\mathbf q'_{SA}(z<0)=-\mathbf q'_{SA}(z>0)$ and $\mathbf q'_{SA}(z=0)=0$.
- Exact reconstruction (eq. 10): $\mathbf q'=\mathbf q'_{SS}+\mathbf q'_{SA}+\mathbf q'_{AS}+\mathbf q'_{AA}$.
- Data matrix and CSD (eq. 11–12, p. 5–6): $\hat{\mathbf Q}=[\hat{\mathbf q}'^{(1)}\ \cdots\ \hat{\mathbf q}'^{(N_{blk})}]$, $\hat{\mathbf C}=\frac{1}{N_{blk}-1}\hat{\mathbf Q}\hat{\mathbf Q}^H$; inner product $\langle\mathbf q_1,\mathbf q_2\rangle=\mathbf q_1^H\mathbf W\mathbf q_2$.
- Pressure norm (eq. 13): $\mathbf W=\int_0^{z_{max}}\!\int_0^{y_{max}}\!\int_{x_{min}}^{x_{max}}\mathrm dx\,\mathrm dy\,\mathrm dz$.
- Chu norm (eq. 14): $\mathbf W=\int\!\!\int\!\!\int \mathrm{diag}\!\left(\dfrac{\bar T}{\gamma\bar\rho M_j^2},\ \bar\rho,\ \bar\rho,\ \bar\rho,\ \dfrac{\bar\rho}{\gamma(\gamma-1)\bar T M_j^2}\right)\mathrm dx\,\mathrm dy\,\mathrm dz$ over the first quadrant.
- St = f D_e/U_j (Nomenclature, p. 1).

> Equations were re-typed from the rendered pages 4–6 (the text extraction lost all symbols). The sign table was transcribed from eq. 3–6 and checked against the parity rule; still verify against p. 5 before coding it.

## Data tables
Table 1 and Table 2 are reproduced in Setup. Visual readings of leading pressure-SPOD eigenvalues at St = 0.3 (Fig. 5, p. 9; log axes, approximate):

| Data | λ₁ at St 0.3 | Low-rank peak? |
|---|---|---|
| Full field (all quadrants) | ≈ 2 × 10⁻² | yes |
| AA | ≈ 5 × 10⁻³ | yes, large gap |
| AS | ≈ 3 × 10⁻³ | yes, large gap |
| SS | ≈ 1 × 10⁻³ | no |
| SA | ≈ 8 × 10⁻⁴ | no |

> These are read off the figure, not stated in the text.

## Figures worth remembering
- **Fig. 1 (p. 3):** twin-rectangular nozzle in the domain and the lip groove for plasma actuators.
- **Fig. 2 (p. 4):** numerical schlieren |∇ρ| in the single-nozzle (z = 1.8h) and major-axis (y = 0) planes and cross-planes at x = 2h, 10h, 20h. Shock cells are visible in both potential cores.
- **Fig. 3 (p. 6):** schematic of the D2-symmetric SPOD workflow, with the ± sign pattern per quadrant for SS, SA, AS, AA.
- **Fig. 4 (p. 7):** instantaneous u′ split into the four components on several planes.
- **Fig. 5 (p. 9):** pressure SPOD spectra, full field and per component. Screech peak at St 0.3 only in AA and AS.
- **Fig. 6–9 (p. 10–13):** full-field SPOD modes 1–4 at St = 0.3 side by side with the leading AA, AS, SS, SA modes. Shows the convergence gain.
- **Fig. 10 (p. 14):** Chu-norm SPOD spectra per component, same AA/AS screech peak.
- **Fig. 11 (p. 15):** 3D pressure isosurfaces (±0.3) of the leading modes at St 0.3 and 0.9: KH wavepackets.
- **Fig. 12 (p. 16):** 3D pressure isosurfaces (±0.025): radiated acoustic field per symmetry at St 0.3 and 0.9.

## Notation
- D2: dihedral group with two mirror symmetries. O(2): symmetry group of a round jet.
- SS, SA, AS, AA: first letter = symmetric/antisymmetric about y = 0 (major-axis plane holding both nozzle axes), second = about z = 0 (internozzle plane).
- h: nozzle height; D_e = 1.6h; St = fD_e/U_j; M_a = U_j/c∞.
- N_FFT, N_ovlp, N_blk: block length, overlap and number of blocks. St_s: sampling Strouhal number. λ: SPOD eigenvalue; φ: SPOD mode.

## Relevance to this project
This project analyses time-resolved schlieren, acoustics and PIV of resonating jets, including non-axisymmetric nozzles (see CLAUDE.md). This is the SPOD-workflow companion to the LES in [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md).
- **Method (time-resolved data only):** D2 symmetry decomposition before SPOD is directly usable on any time-resolved data from a mirror-symmetric rig: rectangular or elliptic nozzles, twin jets, and planar impinging configurations.
  - For 3D LES data (e.g. the planned PyFR runs), it cuts memory 4× and speeds convergence. The paper's own warning is that full-field SPOD with ~38 blocks may not separate all four symmetries.
  - For 2D planar data, only some components survive in a given plane. In a single-nozzle-centreline plane (z = 1.8h) all four are mixed; in the y = 0 plane the A? components vanish for scalars. Choose the plane with this in mind.
  - For schlieren, line-of-sight integration through the y or z direction cancels components antisymmetric in that direction (see the warning in [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md)). A schlieren view along z (an x–y image, integrating through both jets) sees only the ?S components (SS, AS); it would miss AA, the strongest screech component here. A view along y sees only S? components and would miss both screech components. *(Own reasoning from the parity, not in the paper.)*
  - For microphone rings, the same even/odd split over mirror-image mics gives the acoustic equivalent.
  - The paper uses standard Welch SPOD (N_FFT 256, 50% overlap, 38 blocks; Hann window assumed). For sharper tones with less leakage, see [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md) (same first author) and [von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md).
- **For non-time-resolved PIV:** the same symmetry split works with snapshot POD, as in the symmetry-imposed POD of [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md) (twin round jets, two components visible in-plane). Both papers use the Rodríguez et al. naming, but check the axis convention before mapping labels: Nogueira's 1SS/1AS refer to the xy-plane (both jet axes) and the internozzle plane, which correspond to this paper's y = 0 and z = 0 planes respectively.
- **Physics vs experiment and other models:**
  - The AA/AS screech result (flapping about the major-axis plane) matches the OSU mic data, where the tone is strongest along the minor axis and the jets couple out of phase at M_j 1.5 ([esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md); [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md), St ≈ 0.3 near field).
  - My mapping (not stated in the paper): AA = flapping with the two jets in antiphase (out-of-phase coupling), AS = flapping in phase. The paper finds both present, with AA somewhat stronger by figure reading, which is consistent with Esfahani's out-of-phase coupling at M_j 1.5 and with the intermittent coupling reported there. Verify the sign convention for "in/out of phase" against Esfahani's Φ_c before relying on this.
  - Jeun, Wu & Lele (2024) study screech coupling and closure in rectangular twin jets with LES and models; see [jeun-2024-screech-coupling-closure-rectangular-twin-jets.md](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) for a comparison of coupling-mode selection.
  - No stability, resolvent or closure model is used here; the paper is a data-analysis method. It cites the guided-jet-mode closure ([edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)) only as background. The D2 split is the natural input for Floquet or symmetry-resolved LSA/resolvent work (cf. the μ classification in [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md)).
- **Intermittency and the SPOD → reconstruction → HPOD pipeline:**
  - Time variation is not studied: SPOD is block-averaged, and the record is only ~117 screech periods.
  - The decomposition still helps the pipeline: rebuilding the St 0.3 band separately from AA and AS SPOD modes, then running Hilbert POD on each, would track how the out-of-phase and in-phase flapping components trade amplitude over time. That is exactly the intermittent coupling switching seen with wavelets in [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md). Because the components are orthogonal and sum exactly to the field, the reconstructions stay separable.
- **Related works cited:** Rodríguez et al. 2018 (3D PSE twin jets, SS/SA naming), Rodríguez, Prasad & Gaitonde 2021 (3D PSE rectangular jets), Rodríguez 2021 and Stavropoulos et al. 2021 (twin-jet screech models), Tam & Thies 1993 (rectangular-jet instability symmetries), Schmidt et al. 2018 and Schmidt & Colonius 2020 (SPOD), Nekkanti & Schmidt 2021 (acoustic directivity), Gojon et al. 2018. Candidates for `/add-paper`.
