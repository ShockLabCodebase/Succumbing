---
key: "ragni-2011-particle-tracer-response-shocks-piv"
title: "Particle tracer response across shocks measured by PIV"
authors: ["Ragni, D.", "Schrijer, F.", "van Oudheusden, B. W.", "Scarano, F."]
year: 2011
type: "article"
venue: "Exp. Fluids 50, 53–64"
bib: {"journal": "Experiments in Fluids", "volume": "50", "pages": "53--64"}
doi: "10.1007/s00348-010-0892-2"
arxiv: ""
pdf: "diagnostics-and-facilities/Ragni-EtAl_2011_Particle-Tracer-Response-Across-Shocks-Measured-By-PIV.pdf"
version: "published"
unverified: []
group: false
facility: "TU Delft ST-15 supersonic wind tunnel"
data: ["PIV"]
methods: ["calibration", "statistics"]
flow: ["supersonic", "wind-tunnel"]
phenomena: []
params: {"M": "2", "wedge": "9°", "T_0": "275 K"}
topics: ["diagnostics-and-facilities"]
related: ["weightman-2019-sound-production-impinging-supersonic-jets", "henderson-2002-flow-structure-supersonic-impinging-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "tan-2015-bos-density-axisymmetric-jets"]
cites: []
summary: "Mach 2 oblique-shock test: exponential slip gives τ_p; unbiased if window ≤ ξ_p and Δt ≤ τ_p; DEHS and stored powders ≈ 2–3 µs, dried filtered TiO₂/SiO₂ 0.56/0.37 µs; PTV 4× spread"
---
# Particle tracer response across shocks measured by PIV

- **Authors:** D. Ragni, F. Schrijer, B. W. van Oudheusden, F. Scarano (Faculty of Aerospace Engineering, Delft University of Technology)
- **Source:** Exp. Fluids 50:53–64 (2011), doi:10.1007/s00348-010-0892-2. Open access (published online 20 May 2010).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/diagnostics-and-facilities/Ragni-EtAl_2011_Particle-Tracer-Response-Across-Shocks-Measured-By-PIV.pdf` (12 pp.)
- **Page refs:** printed journal page numbers (53–64). PDF page = printed page − 52.
- **Tags:** PIV in supersonic flow, seeding, particle slip, particle relaxation time τ_p and length ξ_p, oblique shock wave (OSW) test, spatial and temporal resolution bias, ensemble correlation, PTV, aero-optical aberration, TiO₂, SiO₂, DEHS, dehydration, particle filter

## Summary
The paper sets out how to measure a seeding particle's response time reliably with the standard oblique-shock test, then applies it to many seeding materials. A particle crossing a shock relaxes to the post-shock velocity along a single exponential (Stokes drag), so ln of the normalised shock-normal velocity falls linearly with distance and its slope gives the relaxation length ξ_p and time τ_p (p. 54–55). Synthetic-image simulations show how PIV's finite window size and pulse separation bias this measurement; plotted on a log axis, the slope stays unbiased for interrogation window up to ξ_p and pulse separation up to τ_p (SR, TR ≤ 1) (p. 55–56). Experiments at Mach 2 in the TU Delft ST-15 tunnel, across a 9° wedge shock, give τ_p ≈ 2–3 µs for most materials and DEHS, but only 0.37 µs (SiO₂) and 0.56 µs (TiO₂) when the powder is dried and passed through a 1 µm filter (p. 59–61). A PTV analysis of individual particles shows that τ_p within one sample spreads by up to a factor of four, skewed towards larger, slower particles (p. 62–63).

## Key findings
- **Previously reported τ_p** (p. 54): ≈ 7 µs for olive oil (Lang 2000); 3–4 µs for TiO₂ and > 20 µs for Al₂O₃ (Urban & Mungal 2001); < 2 µs for TiO₂ (Scarano & van Oudheusden 2003). Samimy & Lele (1991) concluded that accurate tracing in compressible shear layers needs particle Stokes number ≤ 0.1 (p. 53).
- **Temporal-resolution bias** (Fig. 2, p. 55–56): TR > 1 distorts the exponential and shifts the apparent shock upstream, because central-difference window shifting attributes post-shock deceleration to a vector centred upstream of the shock. In log scale the downstream slope is still correct away from the shock. Usable range: u_n* < 0.9 at TR = 0.5, but only u_n* < 0.25 at TR = 2 (p. 56).
- **Spatial-resolution bias** (Fig. 3, p. 56): the window filters the profile symmetrically. It matters once SR > 2. With SR and TR ≈ 1, much of the log plot is still usable.
- **Acceptance criterion** (p. 56, 63): SR, TR ≤ 1 (window ≤ ξ_p, Δt ≤ τ_p) give an unbiased τ_p.
- **Dynamic range** (Fig. 4, p. 56–57): the usable data are bounded on the left by resolution (shock region) and from below by the measurement error. Ensemble-averaged or ensemble-correlation PIV is limited by bias error (possibly < 0.01 px), not the ≈ 0.1 px instantaneous precision error (p. 56). Higher digital resolution DR or higher normal Mach number M_n widen the range; the gain is largest for M_n between 1 and 1.5, with little benefit above (Fig. 4b, p. 57). Higher M_n also brings stronger aero-optical aberration and seeding inhomogeneity (p. 56–57).
- **Fit accuracy** (p. 57): measuring τ_p to within 5% needs about 8 points and a velocity error below 0.1 px (0.3%) (Draper & Smith regression variance).
- **PTV is harder** (p. 57): individual-particle precision ≈ 0.3 px (Cowen & Monismith 1997) cannot be reduced by averaging, so the usable range shrinks, and separating particles with different τ_p needs the difference between relaxation paths (Fig. 5).
- **Aero-optics** (p. 57–58): the shock acts as a refractive interface and blurs particle images; tilting the line of sight 2–5° upstream (4° here) and a higher f# reduce this. Residual distortion was still visible (Fig. 6). Shock motion of ≈ 100 px (free-stream Mach drift, vibration) was cut to < 20 px by realigning images on the blurred line found from where the auto-correlation peak broadens (Elsinga et al. 2005) (p. 58).
- **Measured τ_p** (Table 3, p. 61; see Data tables):
  - DEHS (PIVTEC Laskin atomiser, 1 µm median): 1.92–2.02 µs over two runs, with ≈ 400 ns scatter, attributed to weak scattering; f# lowered from 11 to 8 (p. 59).
  - Stored solid powders: 2.4–3.3 µs. Dried at ≈ 130 °C for 2 h: 0.4–2.3 µs for 12–50 nm crystal sizes, except the smallest TiO₂ (14 nm, 3.71 µs) (p. 59, 61). Scatter ≈ 100 ns (p. 59).
  - Best: dried powder from the cyclone with a 1 µm (3M 2135 P3) filter: **0.56 µs (TiO₂, 50 nm)** and **0.37 µs (SiO₂ R104)** in Table 3; the text gives 0.36 µs (p. 61, 63). Claimed as the first measured τ_p below 0.4 µs (p. 53).
  - The filter strongly reduces seeding density and must be watched (p. 62). Larger-crystal powders (170–550 nm) got *slower* after drying (p. 62), and agglomerates remained visible after drying, attributed to prolonged storage (p. 59).
  - PIVTEC fluidised bed with dried TiO₂ 50 nm: 1.36 µs (low) and 1.67 µs (high mass flow) (Table 3).
- **PTV distribution** (TiO₂ 50 nm, dried) (p. 62–63; Fig. 12–14):
  - ≈ 10⁵ particle pairs from 200 images. The upstream scatter shows ≈ 0.2 px tracking precision.
  - Spread rises quickly over the first relaxation length; the maximum spread is at x_n ≈ ξ_p, and the distribution is still wide 6 mm downstream.
  - Distribution skewed towards larger τ_p (larger particles). Normalised by τ_ref = 2 µs, profiles at x_n/ξ_ref = 1, 2, 3 collapse to within ≈ 0.1 τ_ref (200 ns) over 5ξ_ref = 5 × 0.53 mm.
  - τ_p at the occurrence peak is slightly below the ensemble-correlation PIV value (Table 4), attributed to ensemble averaging plus stronger scattering from large particles. Spread narrows as τ_p falls for TiO₂, so filtering and drying narrow the distribution as well as shortening it (p. 63).
  - τ_p "can easily vary within a factor four" within one sample (p. 63).

## Setup / method

### Model and simulation (p. 54–57)
- **Particle model:** sphere with ρ_p ≫ ρ, drag law in terms of Re_p and C_D (eq. 1). With constant K (Stokes regime) the step response across a shock is a single exponential (eq. 2–3). For M_n ≲ 1.5, position and time are related almost linearly, so ln u_n* against x_n/ξ_p gives τ_p directly (eq. 4).
- **Assumptions:** no unsteady (Basset, added-mass) or rarefaction terms; a single exponent per particle; gas velocity a perfect step at the shock.
- **Numerically simulated experiment:** synthetic particle images across a shock, processed by cross-correlation; SR and TR each varied from 0.1 to 4 (Fig. 2–3 at SR = 0.5 or TR = 0.5; SR up to 8 in Fig. 3) (p. 55–56). Image-generation details (particle image size, density, noise) are not given.
- **Error budget** (Table 1, p. 57): built for τ_p = 4 and 2 µs with the experiment's FOV and DR.

### Experiment (p. 58–59)
| Item | Value |
|---|---|
| Facility | ST-15 supersonic blow-down tunnel, Aerodynamics Laboratories, TU Delft; test section 16 × 15 cm² |
| Flow | M = 2; P₀ = 3.4 bar, T₀ = 275 K |
| Shock generator | 2D wedge, 13.0 cm span (Fig. 7 says L = 140 mm), θ = 9° → OSW at 37.2° |
| Laser | Big Sky CFR-PIV-200 Nd:YAG, 200 mJ, 7 ns, 532 nm; sheet ≈ 1.5 mm |
| Camera | LaVision Imager Intense CCD, 1376 × 1040 px, 12 bit, 6.45 µm pitch; Zeiss Jena f = 120 mm lens detached from camera |
| Magnification / FOV / DR | M = 1.12; 7.9 × 6.0 mm²; 174 px/mm (Table 1 lists 170) |
| Timing | single-exposure double-frame or double-exposure single-frame; Δt 800 down to 400 ns; LaVision PTU8, DaVis 7.2 |
| Geometry | FOV rotated so its vertical axis lies along the shock (windows stretched along the shock); line of sight tilted 4° |
| Acquisition | 200 images at 10 Hz (not time-resolved) |
| Processing | ensemble auto-correlation (Meinhart et al. 2000), DaVis 7.4; profiles averaged along the shock, ≈ 20,000 samples per shock-normal point; ξ_p from least-squares fit over ln u_n* ∈ [−1.5, −0.5] (p. 59) |
| PTV | custom super-resolution code (Keane et al. 1995), detection and pairing after Cowen & Monismith (1997); PIV field as predictor, 2 px search radius; occurrence maps with a 0.2 mm × 4 m/s kernel (p. 58, 62) |
| Seeders | custom cyclone (7 cm diameter, 12.5 cm tall, tangential inlet), 4.5 bar, with or without 3M 2135 P3 filter; PIVTEC fluidised bed at 7.5 bar; PIVTEC PIVpart 45 DEHS atomiser (12 Laskin nozzles). Seed injected upstream of the settling chamber (p. 59) |

**Data dependence:** the method needs only a statistically steady shock and many uncorrelated image pairs. It is a mean-field (ensemble) technique; no time resolution is needed, but realignment of each image on the shock is needed when the shock moves.

## Key equations
Notation as in the paper: subscript n is shock-normal, 1 upstream and 2 downstream.

- **Particle equation of motion** (eq. 1, p. 54):
  $$\frac{\mathrm d\boldsymbol V}{\mathrm dt}=-\frac34\,C_D\,\mathrm{Re}_p\,\frac{\mu}{\rho_p d_p^2}\,(\boldsymbol V-\boldsymbol U)=-K(\boldsymbol V-\boldsymbol U)$$
  With Stokes drag C_D = 24/Re_p this gives K = 18μ/(ρ_p d_p²), i.e. the familiar τ_p = ρ_p d_p²/(18μ). *(My substitution; the paper does not write τ_p in terms of d_p.)*
- **Exponential relaxation** (eq. 2, p. 55):
  $$\ln u_n^*=\ln\!\left(\frac{u_n-u_{n2}}{u_{n1}-u_{n2}}\right)=-Kt=-\frac{t}{\tau_p}$$
- **Position and relaxation length** (eq. 3, p. 55):
  $$x_n=u_{n2}\tau_p\ln\!\left(\frac{u_{n1}-u_{n2}}{u_n-u_{n2}}\right)+\tau_p(u_{n1}-u_n),\qquad \xi_p=\tau_p\left[u_{n1}-(u_{n1}-u_{n2})e^{-1}\right]$$
- **Linear approximation for weak shocks** (eq. 4, p. 55): $\ln u_n^*=-t/\tau_p\cong-x_n/\xi_p$.
- **Resolution ratios** (eq. 5, p. 55): $\mathrm{SR}=\mathrm{WS}/\xi_p$, $\mathrm{TR}=\Delta t_p/\tau_p$.

> Equations checked against the rendered page (p. 54–55). My consistency check: at M = 2, T₀ = 275 K the free-stream speed is ≈ 496 m/s, so u_n1 ≈ 300 m/s across a 37.2° shock (M_n ≈ 1.21) and u_n2 ≈ 221 m/s from the normal-shock relation. Eq. 3 then gives ξ_p ≈ 0.54 mm for τ_p = 2 µs, matching the paper's ξ_ref = 0.53 mm (p. 62). Table 1 lists M_n = 1.25, slightly above my 1.21.

## Data tables
**Seeding materials** (Table 2, p. 59):

| Seeding | Material | Primary crystal (nm) | Bulk density (g/l) |
|---|---|---|---|
| Degussa Aerosil R104 | SiO₂ | 12 | ~50 (tapped) |
| Degussa Aerosil R972 | SiO₂ | 16 | ~50 (tapped) |
| Kemira P170 | TiO₂ | 14 | 150 |
| Kemira P580 | TiO₂ | 30 | 150 |
| Kemira L830 | TiO₂ | 50 | 200 |
| Kemira 300 | TiO₂ | 170 | 800 |
| XRDI-S | TiO₂ | 240 | 800 |
| DuPont R931 | TiO₂ | 550 | 3,636 |

**Time response** (Table 3, p. 61). Seeder: C cyclone, C_F cyclone + 1 µm filter, A atomiser, F_L/F_H fluidised bed at low/high mass flow.

| Material | Seeder | τ_p stored (µs) | τ_p dried (µs) | σ stored (µs) | σ dried (µs) |
|---|---|---|---|---|---|
| DEHS | A | 1.92–2.02 | – | 0.40–0.38 | – |
| SiO₂ R104 | C | 2.49 | 2.21 | 0.22 | 0.17 |
| SiO₂ R972 | C | 2.64 | 2.29 | 0.19 | 0.28 |
| TiO₂ 14 | C | 3.25 | 3.71 | 0.12 | 0.12 |
| TiO₂ 30 | C | 2.56 | 2.20 | 0.11 | 0.07 |
| TiO₂ 50 | C | 2.77 | 2.09 | 0.18 | 0.09 |
| TiO₂ 50 | C_F | – | 0.56 | – | 0.10 |
| SiO₂ R104 | C_F | – | 0.37 | – | 0.10 |
| TiO₂ 50 | F_L | – | 1.36 | – | 0.05 |
| TiO₂ 50 | F_H | – | 1.67 | – | 0.08 |
| TiO₂ 170 | C | 2.50 | 3.13 | 0.13 | 0.19 |
| TiO₂ 240 | C | 2.52 | 2.64 | 0.09 | 0.15 |
| TiO₂ 550 | C | 2.43 | 2.78 | 0.07 | 0.22 |

**PTV vs PIV** (Table 4, p. 63): τ_p at peak occurrence ± σ, against ensemble-correlation PIV.

| Case | Ti50 F_H | Ti50 C_F | TiO₂50 H | TiO₂50 Dh | SiO₂R972 H | DEHS | TiO₂300 Dh |
|---|---|---|---|---|---|---|---|
| PTV τ_p,max ± σ (µs) | 1.2 ± 1.2 | 1.0 ± 0.8 | 2.0 ± 1.1 | 1.8 ± 1.4 | 2.0 ± 1.5 | 1.8 ± 1.4 | 2.4 ± 1.4 |
| PIV τ_p (µs) | 1.67 | 1.08 | 2.77 | 2.09 | 2.64 | 1.92 | 2.64 |

**Error budget** (Table 1, p. 57), for τ_p = 4 µs / 2 µs: FOV 1376 × 1040 px, 7.9 × 6.0 mm; DR 170 px/mm; M, M_n = 2, 1.25; SR 0.1 / 0.2; TR 0.2 / 0.3; u_n∞, Δu_n 15, 5 px / 31, 9 px; ε(u_n∞) 0.1 px, 0.3% / 0.05 px, 0.2%; ln(u*_n,lim) −1.9 / −1.9; Δln required 1.5 / 1.6; N uncorrelated 4 / 12; ε_τ = σ(p = 2) 7% / 3%.

> **Check against the PDF:**
> - Text extraction scrambled Tables 1 and 3; both were re-read from the rendered page and should be right, but Table 1 is not self-consistent with my estimate: 300 m/s × 0.8 µs × 170 px/mm ≈ 41 px, not 15 px, so its displacement entries may assume a different Δt or reference velocity.
> - Inconsistent labels in the paper: Table 3 gives SiO₂ R104 (12 nm crystal per Table 2) as 0.37 µs; the text says 0.36 µs "for the SiO₂ with a 16-nm crystal size" (p. 61) and the conclusions call R104 16 nm (p. 63). Table 4's "Ti50 C_I" heading is presumably C_F.
> - Table 4's "TiO₂300 Dh" doesn't match Table 2, which has no 300 nm grade (Kemira 300 is 170 nm crystal size).

## Figures worth remembering
- **Fig. 1 (p. 55):** gas step, particle exponential and PIV-measured (smoothed) velocity across a shock; defines ξ_p at u_n = u_n2 + (u_n1 − u_n2)e⁻¹.
- **Fig. 2–3 (p. 55–56):** synthetic profiles for TR 0.1–4 (SR = 0.5) and SR 0.1–8 (TR = 0.5), linear and log. The log plots show the downstream slope survives moderate TR and SR.
- **Fig. 4 (p. 57):** (a) usable data window in ln u_n*–x_n; (b) minimum measurable ln u_n* against M_n (1–3) for 2–16 px upstream displacement.
- **Fig. 6 (p. 58):** double-exposure image showing aero-optical blur along the shock.
- **Fig. 7–9 (p. 59–60):** test section, imaged region, seeding system and seeders.
- **Fig. 11 (p. 61):** log-velocity profiles with fitted τ for SiO₂ R972, TiO₂ 50 and 240 (stored vs dried), DEHS runs, fluidised bed, and filtered cyclone. The best case (TiO₂ 50 C_F, SiO₂ R104 C_F) reaches ln u_n* = −3 within ≈ 0.4 mm.
- **Fig. 12–14 (p. 62–63):** PTV scatter, occurrence contours and τ_p distributions normalised by τ_ref = 2 µs.

## Notation
- u_n: shock-normal velocity; u_n* = (u_n − u_n2)/(u_n1 − u_n2), normalised.
- τ_p: particle relaxation (response) time; ξ_p: relaxation length; K = 1/τ_p.
- WS: interrogation window size; Δt_p: pulse separation; SR = WS/ξ_p, TR = Δt_p/τ_p.
- DR: digital imaging resolution (px/mm); M_n: normal Mach number upstream of the shock.
- H / Dh: stored (humid) / dehydrated powder.

## Relevance to this project
This is the standard reference for quoting a particle response time and the resulting slip error in PIV of shock-containing flows, which covers the Shock Lab group's PIV of screeching and impinging jets.

- **Direct application to jet PIV:**
  - The group's smoke seeding (≈ 600 nm) is quoted with τ_p ≈ 2 µs in [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md); this paper shows 2 µs is the typical value for DEHS and stored powders, so that figure is consistent with it (p. 61).
  - A rough scale for screech PIV *(my estimate)*: with u_n ≈ 300 m/s through a shock, ξ_p ≈ 0.6 mm for τ_p = 2 µs. For D = 15 mm ([Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), final window 0.03D ≈ 0.45 mm) that gives SR ≈ 0.75 for a shock normal to the flow, inside the paper's SR ≤ 1 criterion. Velocities within roughly 2–3 ξ_p (≈ 0.1D) behind each shock-cell compression or Mach disk will be biased by slip.
  - For coherent structures, the relevant measure is the particle Stokes number. At a screech frequency of ≈ 16 kHz (St 0.65, U_j ≈ 380 m/s, D = 15 mm), 2πfτ_p ≈ 0.2 for τ_p = 2 µs *(my estimate)*, above the 0.1 guideline of Samimy & Lele (1991) cited on p. 53. The amplitude and phase of the screech mode near shocks may therefore be slightly attenuated and lagged. Dried, filtered powders (0.4–0.6 µs) would bring this below 0.1.
  - Particle slip also ejects tracers from high-acceleration regions such as vortex cores (p. 53), a possible cause of seeding voids in impinging-jet wall-jet vortices.
- **Effect on POD/SPOD/HPOD:** slip acts as a first-order low-pass filter on velocity, applied along particle paths. Mean-field and POD-pair analyses of non-time-resolved PIV (the CLAUDE.md PIV route) inherit this bias in shock regions, and the k_x-filtering of upstream acoustic waves ([Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [2020](edgington-mitchell-2020-waves-in-screeching-jets.md)) relies on small-amplitude content that is most sensitive to it. Time-resolved schlieren has no particle lag and is the cross-check. *(Inference; the paper only treats steady shocks.)*
- **Method notes:** the OSW test is itself an ensemble-mean method (200 non-time-resolved pairs, ensemble correlation, averaging along the shock) and needs no time resolution, but it needs SR, TR ≤ 1, M_n ≈ 1.2–1.5, image realignment on the shock and a tilted line of sight. It could be run in-house on a Shock Lab group wind tunnel or a jet's oblique shock to characterise the group's own smoke. The PTV result (factor-four spread, tail to large particles) means a single τ_p is a mean value; slip correction methods (Schrijer & Scarano 2007) using one τ_p will not remove the broadening.
- **Modelling side:** the particle model is the simplest Stokes-drag ODE with constant K, with no rarefaction (Knudsen) or compressibility corrections in C_D, which matter for sub-micron particles in low-density post-expansion flow. The synthetic-image study is the only simulation; it does not model particle polydispersity or the shock as a finite-thickness structure. LES/DNS studies that seed Lagrangian particles into screeching jets could use these τ_p values to estimate PIV bias for comparison with experiment.
- **Related notes:**
  - [henderson-2002-flow-structure-supersonic-impinging-jets.md](henderson-2002-flow-structure-supersonic-impinging-jets.md) states particle lag biases velocities behind the shocks in impinging-jet PIV; this paper gives the numbers to quantify it.
  - [cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md) treats lag as negligible for subsonic jets (no shocks), consistent with the small accelerations there.
  - [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) uses PIV from Raiola & Ragni (2019), the same first author's later jet experiment, with 1 µm DEHS.
  - [tan-2015-bos-density-axisymmetric-jets.md](tan-2015-bos-density-axisymmetric-jets.md) and [molnar-2023-physics-informed-bos-supersonic.md](molnar-2023-physics-informed-bos-supersonic.md) use BOS, which has no particle lag, as an alternative in shock-containing flows.
- **Facility:** TU Delft ST-15, not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:** Melling (1997) on tracer particles and seeding; Samimy & Lele (1991) on particle motion in compressible shear layers; Schrijer & Scarano (2007) on particle slip compensation; Elsinga et al. (2005) on aero-optical distortion in PIV; Mitchell et al. (2013) on the group's smoke seeding.
