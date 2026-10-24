---
key: "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer"
title: "The underexpanded jet Mach disk and its associated shear layer"
authors: ["Edgington-Mitchell, D.", "Honnery, D. R.", "Soria, J."]
year: 2014
type: "article"
venue: "Phys. Fluids 26, 096101"
bib: {"journal": "Physics of Fluids", "volume": "26", "pages": "096101"}
doi: "10.1063/1.4894741"
arxiv: ""
pdf: "screech/EdgingtonMitchell-EtAl_2014_The-Underexpanded-Jet-Mach-Disk-And-Its-Associated-Shear-Layer.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility"
data: ["PIV", "schlieren"]
methods: ["POD", "POD-pair", "statistics"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["Mach-disk", "shock-cells", "screech", "helical"]
params: {"NPR": "4.2", "M_j": "1.59", "Re": "8.3×10⁵"}
topics: ["screech", "diagnostics-and-facilities", "screech-frequency-and-global-modes"]
related: ["edgington-mitchell-2023-screeching-jet-seen-from-all-sides", "henderson-2002-flow-structure-supersonic-impinging-jets", "weightman-2019-sound-production-impinging-supersonic-jets", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "ragni-2011-particle-tracer-response-shocks-piv", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "papamoschou-1988-compressible-turbulent-shear-layer", "rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet"]
cites: ["edgington-mitchell-2014-coherent-structure-helical-screech-mode", "mitchell-2011-particle-relaxation-piv-cross-correlation", "mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren", "mitchell-2013-near-field-structure-underexpanded-elliptic-jets", "oberleithner-2011-swirling-jet-vortex-breakdown-stability"]
summary: "NPR 4.2 screeching underexpanded jet, PIV + schlieren: slip line grows into an inner shear layer lasting 4–5 cells; helical POD pair reaches it; no recirculation behind the Mach disk"
---
# The underexpanded jet Mach disk and its associated shear layer

- **Authors:** D. Edgington-Mitchell, D. R. Honnery, J. Soria (Laboratory for Turbulence Research in Aerospace and Combustion (LTRAC), Monash University; Soria also King Abdulaziz University, Jeddah; p. 1)
- **Source:** Phys. Fluids 26, 096101 (2014), doi:10.1063/1.4894741. Received 3 Apr 2014, accepted 20 Aug 2014, published 9 Sep 2014 (p. 1). Funded by the Australian Research Council (p. 18).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/EdgingtonMitchell-EtAl_2014_The-Underexpanded-Jet-Mach-Disk-And-Its-Associated-Shear-Layer.pdf` (index key `screech/EdgingtonMitchell-EtAl_2014_The-Underexpanded-Jet-Mach-Disk-And-Its-Associated-Shear-Layer.pdf`, 19 pp.: an AIP cover page plus 18 printed pages)
- **Page refs:** printed page numbers 096101-N, written "p. N". **PDF page = printed page + 1** (PDF p. 1 is the publisher's cover sheet).
- **Tags:** underexpanded jet, convergent nozzle, NPR 4.2, Mach disk, Mach reflection, triple point, slip line, internal annular shear layer, recirculation zone behind the Mach disk, shock–turbulence interaction, Reynolds-stress amplification, anisotropy, screech, helical mode, planar PIV (non-time-resolved), schlieren, snapshot POD, POD mode pair, phase portrait, triple decomposition, restricted-domain POD, particle lag across shocks, velocity PDF

## Summary
High-resolution planar PIV (8000 snapshots) and Z-type schlieren are used to study the region just downstream of the Mach disk in a screeching, strongly underexpanded jet from a convergent nozzle at NPR 4.2 (M_j = 1.59) (p. 1, 4). The slip line from the triple point grows into an internal annular shear layer that persists over several shock cells before merging with the outer shear layer (p. 5, 17). Snapshot POD of the transverse velocity gives one dominant mode pair (≈ 17 % of transverse fluctuating energy), identified as the helical screech mode; it carries a coherent signature on the inner slip line, of opposite sign and larger magnitude than in the outer shear layer (p. 8–9). A POD-based triple decomposition shows that this helical mode explains much of the axial fluctuation in the inner layer near the Mach disk, which the authors attribute to coherent transverse translation and tilting of the Mach disk as outer vortices pass, but almost none of the transverse fluctuation; further downstream stochastic fluctuations dominate (p. 13–14). POD restricted to the core region shows many inner-layer modes, mostly helical plus an axisymmetric pair coupled to a tiny (≈ 0.01D) axial Mach-disk motion (p. 14–15). No upstream velocity is found in 200,000 samples behind the Mach disk, so there is no evidence for the recirculation zone predicted by several Navier–Stokes simulations (p. 16–17). No model or simulation is run.

## Key findings
- **Global structure** (p. 5, Fig. 2–3):
  - Mach disk at x/D = 1.2. Centreline U/U_e rises to ≈ 1.85 before it and drops to ≈ 0.3 behind it (read from Fig. 3, p. 7), then recovers to supersonic speed before the next cell.
  - U/U_e falls below 1 again after the second shock cell, but neither schlieren nor PIV shows a second normal shock (p. 5).
  - u′ in the outer shear layer is modulated with the wavelength and position of shock reflection points; cells of high v′ sit on the downstream oblique shocks, showing radial shock oscillation (p. 5).
  - The internal shear layer is visible from a short distance behind the Mach disk "until at least the fifth shock cell" (p. 5). The conclusions say "around the fourth shock cell" (p. 17); see the check list below.
- **Anisotropy** A = u′/v′ (p. 5, 7, Fig. 4–5): largest around the Mach disk (A up to ≈ 6, partly from artificial shock-induced fluctuation in the PIV window). Axial fluctuations dominate in both shear layers and are modulated by the shock cells; in parts of the core v′ > u′. The transversely integrated A_I sits at ≈ 1.6, peaks ≈ 2.3 at the Mach disk and oscillates with the shock cells (read from Fig. 5, p. 7).
- **Whole-field POD** (p. 8–9, Fig. 6–8):
  - Leading pair ≈ 17 % of transverse fluctuating energy; mode 3 < 1 %; no coherent large-scale motion in modes 3–20 (p. 8).
  - Axial component antisymmetric, transverse symmetric → helical instability. Antisymmetry rules out the A1/A2 toroidal modes, and a single pair rules out a precessing flapping mode (p. 8–9).
  - The pair's coefficients form a circle in phase space (Fig. 8), so it is one oscillation (p. 9).
  - A coherent component sits on the inner slip line and shear layer, of opposite sign and larger magnitude than in the outer layer, so the screech-driven helical vortex reaches the jet interior (p. 9).
- **Schlieren of the Mach disk** (p. 9, Fig. 9): standard-deviation images show little fluctuation of ∂ρ/∂x across most of the disk (small axial motion and strength change) but more at the disk edges, triple point and oblique shocks, so the shock system oscillates mainly transversely. Instantaneous ∂ρ/∂y shows a sinuous perturbation on the slip line. Streamwise vortices from the nozzle lip are visible (Krothapalli et al. 1991). The core behind the disk is shock-heated and of lower density than the annulus; this density ratio, plus compressibility, slows instability growth on the slip line (p. 9, citing Yip et al., Rangel & Sirignano).
- **Inner-layer statistics** (p. 10–11, Fig. 10–12):
  - Axial fluctuations start immediately behind the disk and are strongest there; strong transverse fluctuations do not appear until x/D ≈ 1.8 (p. 10).
  - v′ is first strongest at the layer edges; by the second shock it peaks on the centreline (p. 11).
  - Integrated stresses (over −0.3 ≤ y/D ≤ 0.3): sharp rise in axial stress across the Mach disk with little change in the others; the axial stress then decays while the transverse and shear components grow. The second shock cell (centreline x/D ≈ 2.7) amplifies all three, the axial most; re-energised fluctuations at x/D = 3.5 (p. 10–11).
- **Expansion then contraction of the inner core** (p. 11–13, Fig. 13): with no pressure jump across the slip line, the authors propose a kinematic mechanism. The Mach disk is concave seen from upstream (a classical Mach reflection), because lip expansion waves are still accelerating and turning the centreline flow outwards. Flow behind the disk keeps an outward V (V/U_e ≈ 0.18 at y/D ≈ 0.16, x/D = 1.2, read from Fig. 13), so the slip line first bends outwards. Outside it the flow has been turned inwards by the oblique shock cone (V/U_e ≈ −0.19 at x/D = 1.3, y/D ≈ 0.22), which contracts both the jet boundary and the inner core. Outward motion has almost stopped by x/D = 1.5 and is inward by x/D = 1.8 (p. 13).
- **Triple decomposition** (p. 13–14, Fig. 14): coherent = leading POD pair; everything else is "stochastic" (assumption stated, p. 13). A significant fraction of inner-layer **axial** fluctuation near the disk is coherent; downstream stochastic dominates. The helical mode contributes almost nothing to inner-layer **transverse** fluctuation (p. 14). Suggested mechanism: outer vortices translate and tilt the Mach disk (seen in ultra-high-speed schlieren in Mitchell's 2013 thesis), and that transverse shock motion makes large apparent axial fluctuations at the disk edge (p. 14).
- **Restricted-domain POD** (1.0 ≤ x/D ≤ 3.5, −0.3 ≤ y/D ≤ 0.3; p. 14–15, Fig. 15–17):
  - Mode 1 resembles the outer screech mode (similar wavelength); other modes show helical vortices of various wavelengths and a toroidal (axisymmetric) pair (p. 14).
  - Results (energies, ordering) are "quite sensitive to domain choice", not all modes appear in pairs, and energies are illustrative only (p. 14).
  - The axisymmetric pair shows coherent axial velocity at the Mach disk, i.e. an axial motion (≈ 0.01D from schlieren and the thesis) or a strength change coupled to it. The authors suggest the shock motion forces an m = 0 inner-layer instability alongside the helical ones (p. 15).
- **No recirculation behind the Mach disk** (p. 16–17, Fig. 18–19):
  - No upstream velocity in the mean (Fig. 3; agrees with André et al. 2014) and not one negative sample among 200,000 values (8000 snapshots × a 5 × 5 vector region) (p. 16).
  - The centreline velocity PDF broadens only over Δx/D ≈ 0.2 at x/D = 1.2, symmetrically about the mean (in-window shock effect on the correlation peak); this is much smaller than the numerically predicted bubbles, so particle lag cannot hide one (p. 16–17).
  - Possible reasons for the numerical bubbles: continuum breakdown near strong shocks (DSMC predicts none, Skovorodko 2011); Frey & Hagemann's argument that only an inverse Mach reflection (convex disk) can trap a vortex by baroclinic torque, while experiments show Mach reflection but simulations often give inverse ones. Even cap-shock (inverse Mach reflection) experiments found no recirculation (Ramsey et al. 2012) (p. 2, 17).
  - Conclusion: the bubble is "purely an artifact" of the numerical methods used (p. 17), at least at this NPR.
- **Background claims from the introduction** (p. 2): regular reflection of a shock on an axis of symmetry is impossible (Rylov 1990; Hornung & Schwendeman 2001), so "regular reflection" cases have a Mach stem only a few cells long (Gribben et al. 2000).

## Setup / method
- **Facility:** LTRAC Supersonic Jet Facility (p. 3, Fig. 1) = **Shock Lab group facility** (Monash authors; the Shock Lab, Combustion Lab or TABLE Lab is not named). Monash compressed air at ≈ 288 K, mixing chamber with smoke inlet, 600 mm × 50 mm tube, conical diffuser, plenum with honeycomb and four meshes (p. 3). Fairchild 100 regulator (±1 %), RS-461 transducer 0–10 bar (±0.25 %) (p. 4). The rig is described in Mitchell et al. 2013 (Exp. Fluids 54) and Edgington-Mitchell et al. 2014 (JFM 748).
- **Nozzle / condition** (p. 4): converging axisymmetric, M_e = 1, U_e = 310 m/s. NPR 4.2, M_j = 1.59, Re = ρU_jD_j/μ = 8.3 × 10⁵ (ideally expanded). Check: (1 + 0.2 × 1.59²)^3.5 = 4.19. **D is not stated**; Table I's 150 mm = 10D gives D ≈ 15 mm (my inference). Lip thickness, screech frequency and screech mode letter are not given.
- **Schlieren** (p. 4): Z-type Toepler, f = 2032 mm mirrors, razor blade, PCO Dimax 2016 × 2016 px, pulsed LED (Willert et al. 2012). Both ∂ρ/∂x and ∂ρ/∂y knife orientations shown (Fig. 9). Frame rate and number of images are not stated; used for instantaneous, mean and standard-deviation images only.
- **PIV** (p. 4–5, Table I): two PCO 4000 (4008 × 2760 px) side by side, combined FOV 10D × 2.2D; 105 mm Micro Nikkor at f/5.6; New Wave Solo Nd:YAG 532 nm, 120 mJ. Multigrid cross-correlation (Soria 1996), 64 → 16 px, 8 px grid. Outliers by dynamic mean value operator, replaced by neighbour interpolation. **8000 samples** (Fig. 2 caption, p. 6). **Not time-resolved** (acquisition rate not stated; PCO 4000 is a low-rate camera).
- **Seeding** (p. 4–5): Vicount 1300 smoke, mono-disperse, mean 600 nm; both jet and ambient seeded. τ_p = 2.0 µs behind the Mach disk; predicted artificial velocity fluctuation ≥ 8 % across the normal shock (Mitchell et al. 2011, 2013). Particle images ≈ 1.2 px (diffraction limited).
- **POD** (p. 5–8): snapshot method (Sirovich 1987) on the **transverse velocity only**, because that separated modes most clearly; axial mode shapes are rebuilt from the transverse eigenvectors, so energies and orthogonality refer to v′ only (p. 7–8). Whole field 0 ≤ x/D ≤ 10, −1.1 ≤ y/D ≤ 1.1; restricted field as above. No windowing or filtering in time (snapshots are uncorrelated in time).
- **Phase / coherent part:** POD pair phase portrait (Fig. 8); triple decomposition following Edgington-Mitchell et al. 2014 (JFM) and Oberleithner et al. 2011 (p. 13).
- **Modelling side:** none. The paper cites, but does not run, Navier–Stokes simulations predicting a recirculation bubble (Gribben et al. 2000; Maté et al. 2001), shock-dynamics theory (Hornung & Schwendeman 2001) and DSMC (Skovorodko 2011). No stability analysis of the inner shear layer is attempted; the growth-rate discussion is qualitative (compressibility and density ratio).

## Key equations
- POD expansion (eq. 1, p. 5): $\mathbf u'(\mathbf x,t_k) = \sum_{i=1}^{M} a_i(t_k)\,\boldsymbol\psi_i(\mathbf x) + \mathbf u_{res}(\mathbf x,t)$.
- Snapshot correlation and eigenproblem (eqs. 2–3, p. 6): $\mathbf R = \mathbf U^T\mathbf U$, $\mathbf R\,\mathbf a_i = \lambda_i\,\mathbf a_i$.
- Spatial modes (eq. 4, p. 7): $\boldsymbol\psi_i(\mathbf x) = \frac{1}{\sqrt{N\lambda_i}}\sum_{j=1}^{N} a_i(t_j)\,\mathbf u'(\mathbf x,t_j)$ (checked against a render of PDF p. 8).
- Triple decomposition (eq. 5, p. 13; Hussain & Reynolds 1970): $\mathbf u(\mathbf x,t) = \mathbf U(\mathbf x) + \mathbf u_c(\mathbf x,t) + \mathbf u''(\mathbf x,t)$, with $\mathbf u_c$ rebuilt from POD modes 1–2.
- Anisotropy (Fig. 4, p. 7): $A = u'/v'$; integrated (Fig. 5): $A_I = \int_{0}^{1} u'\,d(y/D) \big/ \int_{0}^{1} v'\,d(y/D)$.
- Integrated stresses (Fig. 12, p. 12): $2\pi\int_0^{0.3}\overline{u_iu_j}/U_e^2\;y\,dy$ (axisymmetric weighting; read from the axis labels of the PDF p. 13 render).

## Data tables
**PIV parameters** (Table I, p. 4; checked against a render of PDF p. 5):

| Parameter | Value | Non-dimensional |
|---|---|---|
| IW₀ | 64 px | 0.10 D |
| IW₁ | 16 px | 0.026 D |
| Grid spacing | 8 px | 0.013 D |
| Depth of field | 2.4 mm | 0.17 D |
| Light sheet thickness | 1.5 mm | 0.1 D |
| Field of view | 150 mm × 35 mm | 10 D × 2.2 D |
| Max resolvable velocity | 830 m/s | 2.6 U_e |
| Min resolvable velocity | 6 m/s | 0.02 U_e |

Max velocity from a 25 % IW₀ displacement; min from 0.1 px (p. 4).

**Axial landmarks** (p. 5, 10–13): Mach disk x/D = 1.2; inner-core outward V stops by 1.5, inward by 1.8; strong inner-layer v′ from 1.8; second shock cell on the centreline ≈ 2.7; re-energised fluctuations at 3.5; inner layer visible to the 4th–5th shock cell.

## Figures worth remembering
- **Fig. 2 (p. 6):** U, V, u′, v′, ω_z over 0–10D with the approximate sonic line; the inner slip-line shear layer is clear in u′ and ω_z.
- **Fig. 3 (p. 7):** centreline U/U_e, u′/U_e, v′/U_e; spike in u′ at the disk is the artificial in-window shock effect.
- **Fig. 4–5 (p. 7):** anisotropy map and its transverse integral, modulated by the shock cells.
- **Fig. 6–8 (p. 8–9):** leading POD modes, eigenspectrum and the circular phase portrait of the helical pair.
- **Fig. 9 (p. 10):** instantaneous, mean and std schlieren of the Mach disk region (∂ρ/∂x, ∂ρ/∂y).
- **Fig. 13 (p. 12):** transverse velocity profiles at x/D = 1.2, 1.3, 1.5, 1.8 showing the inner-core expansion then contraction.
- **Fig. 14 (p. 13):** total, coherent and stochastic axial and transverse stresses near the Mach disk.
- **Fig. 15–17 (p. 14–15):** restricted-domain POD modes, including the toroidal pair with Mach-disk motion.
- **Fig. 18–19 (p. 16–17):** histogram and centreline PDF of axial velocity behind the disk: no negative samples.

## Notation
- D: nozzle exit diameter; D_j, U_j, M_j: ideally expanded diameter, velocity, Mach number; U_e = 310 m/s exit velocity; NPR: nozzle pressure ratio.
- U, V: mean axial and transverse velocity; u′, v′: RMS fluctuations; ω_z: out-of-plane vorticity.
- ψ_i, a_i, λ_i: POD mode, coefficient, eigenvalue; N: snapshots; u_c, u″: coherent and stochastic parts.
- A, A_I: anisotropy and its transverse integral; τ_p: particle relaxation time; IW₀, IW₁: initial and final window sizes.

> Checks against the PDF: the inner shear layer persists "until at least the fifth shock cell" in §III A (p. 5) but "until around the fourth shock cell" in the conclusions (p. 17). Fig. 12 caption gives −0.3 ≤ y ≤ 0.3 without /D. D (≈ 15 mm) is inferred from Table I, not stated. Values read from Fig. 3, 5 and 13 are approximate. The paper names the screech mode only as "helical"; the C-mode label comes from [edgington-mitchell-2023](edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md), not this paper.

## Relevance to this project
A Shock Lab group paper on a screeching, strongly underexpanded jet, with the group's standard non-time-resolved PIV + POD-pair workflow. It is the main experimental reference in the library for the Mach disk, the slip-line shear layer and the "no recirculation bubble" result.

- **Method and data dependence:**
  - PIV here is **not time-resolved** (8000 uncorrelated snapshots). The POD mode pair and its phase portrait recover the screech oscillation phase without time information, the CLAUDE.md route for PIV. The triple decomposition built from that pair is the same procedure as in [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md) and the [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md) thesis.
  - Lessons for POD on shock-containing PIV: POD on v′ alone gave the cleanest mode separation (energies then refer to v′ only); restricted-domain POD is sensitive to domain choice and breaks mode pairing, so treat it as qualitative (p. 14); shocks inside an interrogation window create symmetric spurious fluctuation over ≈ 0.2D (p. 16–17), which inflates u′ and anisotropy at the Mach disk.
  - Schlieren here gives only mean/std images. Time-resolved schlieren of the same region with SPOD would separate the inner-layer modes by frequency, and the SPOD → reconstruction → Hilbert POD pipeline ([raiola-2025](raiola-2025-hilbert-pod.md), [nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)) could track whether Mach-disk translation/tilting follows the screech amplitude in time. This is a suggestion, not done in the paper. Intermittency and mode switching are not addressed here.
- **Modelling side:** the paper is a check on simulations: LES or RANS of strongly underexpanded jets (e.g. the PyFR work in `Simulations/PyFR_Staging_Continuation/`, if pushed to Mach-disk NPRs) should give a concave (Mach-reflection) disk, no recirculation bubble and an inner shear layer lasting 4–5 cells. When comparing with this PIV, allow for particle lag (τ_p ≈ 2 µs) and the in-window shock smearing over ≈ 0.2D at the disk. A local stability model of the inner shear layer (compressible, with core-to-annulus density ratio) is an open gap; [papamoschou-1988](papamoschou-1988-compressible-turbulent-shear-layer.md) gives the convective-Mach growth suppression the authors invoke qualitatively.
- **Agreement with and differences from related notes:**
  - [henderson-2002](henderson-2002-flow-structure-supersonic-impinging-jets.md): in an NPR 4.03 *impinging* jet, phase-averaged PIV shows recirculation zones forming behind an axially oscillating Mach disk. This paper finds no recirculation in a *free* jet at NPR 4.2 and only ≈ 0.01D axial Mach-disk motion. The two are not contradictory (the plate creates a stagnation region), but the contrast is worth noting.
  - [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md): same seeding (Vicount, ≈ 600 nm, ≈ 2 µs) and same POD-pair / triple-decomposition approach in the same facility family.
  - [ragni-2011](ragni-2011-particle-tracer-response-shocks-piv.md): τ_p ≈ 2 µs is consistent with Ragni's DEHS and powder values (2–3 µs).
  - [edgington-mitchell-2023](edgington-mitchell-2023-screeching-jet-seen-from-all-sides.md): cites this paper's schlieren (its Fig. 2) and its C-mode PIV, saying helicity was claimed but not proven rigorously from planar data. Indeed, here helicity is inferred from antisymmetry plus a single POD pair (p. 8–9), which cannot exclude a flapping mode with a fixed plane aligned with the laser sheet; later tomography and LES confirmed the helix.
  - [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md): later group PIV work on A1/A2 (toroidal) jets, D = 15 mm, consistent with the D ≈ 15 mm inferred here.
  - [rezay-haghdoost-2020](rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet.md): KH eddies on the slipstream behind the triple point in a transient jet, the unsteady analogue of the inner shear layer here.
  - [nogueira-2026](nogueira-2026-flapping-motion-screeching-round-jets.md): streamwise (lift-up) structures in screeching round jets; this paper sees streamwise lip vortices in schlieren (p. 9) but does not analyse them.
  - Rocket plumes with Mach disks ([lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)): the no-bubble result and the inverse-Mach-reflection / cap-shock discussion (p. 2, 17) bear on thrust-optimised rocket nozzle plumes.
- **Related works cited, candidates for `/add-paper`:** Edgington-Mitchell, Oberleithner, Honnery & Soria 2014 (JFM 748, helical screech mode, coherent structure and sound); Mitchell, Honnery & Soria 2011 (Exp. Fluids 51, particle relaxation and PIV correlation, now [indexed](mitchell-2011-particle-relaxation-piv-cross-correlation.md)), 2012 (J. Vis. 15, impinging-jet ultra-high-speed schlieren), 2013 (Exp. Fluids 54, elliptic jets); Mitchell 2013 PhD thesis; Hornung & Schwendeman 2001; Gribben et al. 2000; André, Castelain & Bailly 2014 (Shock Waves 24); Panda & Seasholtz 1999; Yip et al. 1989; Skovorodko 2011 (DSMC).
