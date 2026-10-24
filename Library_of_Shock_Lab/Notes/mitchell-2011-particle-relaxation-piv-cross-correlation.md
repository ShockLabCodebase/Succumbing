---
key: "mitchell-2011-particle-relaxation-piv-cross-correlation"
title: "Particle relaxation and its influence on the particle image velocimetry cross-correlation function"
authors: ["Mitchell, Daniel", "Honnery, Damon", "Soria, Julio"]
year: 2011
type: "article"
venue: "Exp. Fluids 51, 933–947"
bib: {"journal": "Experiments in Fluids", "volume": "51", "pages": "933--947", "publisher": "Springer-Verlag"}
doi: "10.1007/s00348-011-1116-0"
arxiv: ""
pdf: "diagnostics-and-facilities/Mitchell-EtAl_2011_Particle-Relaxation-And-Its-Influence-On-The-Particle-Image-Velocimetry-Cross.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility (LTRAC, Monash)"
data: ["synthetic", "PIV", "schlieren-TR"]
methods: ["calibration", "statistics", "shock-relations"]
flow: ["generic", "round-jet", "supersonic", "underexpanded"]
phenomena: ["shock-waves", "shock-cells", "Mach-disk"]
params: {"M (normal shock, model)": "1.5, 3, 5", "SR": "0.5–10", "IW": "64 px", "pre-shock displacement": "16 px", "d_p (geometric mean)": "0.8 µm (σ_g = 0, 0.3, 0.5)", "NPR (experiment)": "2.0, 2.5 (throat-to-ambient)", "τ_p (Aerosil R974, measured)": "2.1 µs", "final window": "0.056D"}
topics: ["diagnostics-and-facilities"]
related: ["ragni-2011-particle-tracer-response-shocks-piv", "mitchell-2013-near-field-structure-underexpanded-elliptic-jets", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "edgington-mitchell-2015-multimodal-instability-weakly-underexpanded-elliptic-jet", "bell-2018-coupled-underexpanded-supersonic-twin-jets", "tan-2017-broadband-velocity-fluctuations-screeching-jets", "alkislar-2003-screeching-rectangular-jet-stereo-piv", "henderson-2002-flow-structure-supersonic-impinging-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "weightman-2019-sound-production-impinging-supersonic-jets", "krothapalli-1999-flow-field-noise-supersonic-impinging-jet"]
cites: ["krothapalli-1999-flow-field-noise-supersonic-impinging-jet", "ragni-2011-particle-tracer-response-shocks-piv"]
summary: "Noiseless-correlation model of PIV across a normal shock: polydisperse seed lags more; in-window shock adds artificial u_rms up to 0.3U; 35% behind a jet Mach disc"
---
# Particle relaxation and its influence on the particle image velocimetry cross-correlation function

- **Authors:** Daniel Mitchell, Damon Honnery, Julio Soria, Laboratory for Turbulence Research in Aerospace and Combustion (LTRAC), Department of Mechanical and Aerospace Engineering, Monash University, Melbourne (p. 933). D. Mitchell is D. Edgington-Mitchell's earlier name, so this is Shock Lab group work. The jet experiments are described in Mitchell et al. 2007a,b (PIV symposium and AFMC papers, not in the library); the paper does not name a lab space, so: Shock Lab group facility. Funded by the Australian Research Council; first author on an Australian Postgraduate Award (p. 946).
- **Source:** Exp. Fluids (2011) 51:933–947, doi:10.1007/s00348-011-1116-0. Received 17 November 2009, revised 17 February 2011, accepted 29 April 2011, published online 17 May 2011 (p. 933). Expands Mitchell, Honnery & Soria 2009 (8th PIV symposium) (p. 934).
- **PDF:** index key `diagnostics-and-facilities/Mitchell-EtAl_2011_Particle-Relaxation-And-Its-Influence-On-The-Particle-Image-Velocimetry-Cross.pdf`, 15 pp., publisher's version. Page refs are journal pages; **PDF page = journal page − 932**. The Read tool reports the file as password-protected, so the text came from `pdftotext`; equations 1–10 and Figs 2–16 were checked on rendered pages.
- **Tags:** PIV tracer response, particle lag, normal shock, relaxation time τ_p, relaxation length ξ_p, Tedeschi–Gouin drag law, polydisperse (log-normal) seeding, noiseless cross-correlation function (NCCF, Soria 2006), spatial ratio SR = IW/ξ_p, correlation-peak broadening and bifurcation, artificial velocity fluctuation, image deformation, Aerosil R974 silica, underexpanded jet, Mach disc, correlation-coefficient map as shock detector

## Summary
The paper asks what a shock inside a PIV interrogation window does to the correlation itself, beyond the familiar mean-velocity lag. It first integrates a one-dimensional drag law (Tedeschi & Gouin 1999, with rarefaction and compressibility corrections) for particles crossing a normal shock. Log-normal seed with the same 0.8 µm geometric mean as a monodisperse seed relaxes measurably more slowly, because larger particles both lag more and contribute more to the correlation (p. 937–939). It then uses Soria's (2006) noiseless cross-correlation function, which keeps only the particle self-correlation terms, on synthetic windows with a shock at the window centre or at its upstream edge (p. 935–943). Where the correlation peak lands depends on the random particle positions, so the shock creates an artificial shot-to-shot velocity fluctuation: up to 0.32U for a Mach 3 shock at the window centre at SR = 10 (Fig. 8, p. 942), set by shock strength, shock position, spatial ratio and size spread. An idealised image-shift deformation removes most of the artefact for monodisperse seed but little for polydisperse seed (p. 943–944). PIV of an underexpanded jet (NPR 2.5, Aerosil R974, τ_p = 2.1 µs) shows u_rms ≈ 0.35U_e behind the Mach disc and ≈ 0.1U_e behind the weaker oblique shocks, while 1 MHz schlieren shows the shocks do not move (p. 944–945). The authors conclude that turbulent statistics in shock-containing windows are "essentially impossible" to measure with PIV (p. 946).

## Key findings
- **Motivation** (p. 933–934): in their earlier PIV of an underexpanded jet, centreline u′_rms spiked behind each shock. Ultra-high-speed schlieren showed only small axial shock oscillations, too small to explain the spikes. Correlation coefficient and signal-to-noise ratio had minima at the same places, and stricter vector validation did not remove the spikes.
- **Relaxation time and Mach number** (Fig. 3, p. 937, 939): τ_p falls steeply with upstream Mach number ("logarithmic decrease") and levels off above M ≈ 2, and the spread between particle sizes shrinks in both ratio and absolute value. Read from Fig. 3: at M ≈ 1.1, τ_p ≈ 31, 10 and 4.5 µs for d_p = 1.6, 0.8 and 0.4 µm; at M = 5 about 1.8, 1.0 and 0.5 µs. The particle density behind these numbers is not stated.
- **Polydispersity and τ_p** (Fig. 2, p. 937–938): for a Mach 1.5 normal shock, >500,000 samples per distribution. All three distributions share the same median τ_p (that of the geometric-mean particle), but the log-normal cases are much broader. Read: Case 2 has its mode near 4.5 µs, Case 3 near 3 µs with a long tail out to the 20 µs axis limit.
- **Measured relaxation is slower than the median particle's** (Fig. 4, p. 938–939): the NCCF velocity across a series of windows behind an M = 3 shock relaxes much more slowly for the log-normal cases, despite equal geometric mean and median diameters. Read at x/ξ = 1: U/U_f1 ≈ 0.62 (Case 1), 0.70 (Case 2), 0.79 (Case 3); at x/ξ = 2: ≈ 0.49, 0.53, 0.65. Hence τ_p quoted from a manufacturer's mean diameter "of little value"; measure it in situ, as Urban & Mungal (2001) did (p. 939, 946).
- **Shock at the window centre** (Figs 5–8, p. 939–941):
  - Particles fall into three groups: pre-shock (uniform displacement, a sharp peak at the upstream value), trans-shock (crossing between exposures, a ridge between the two values) and post-shock (decelerating, contributing to the ridge or to a downstream peak, depending on SR and position) (p. 939).
  - As SR rises the mean correlation peak first broadens, then bifurcates into a second, downstream peak, which tends to parity with the upstream one as SR → ∞. Polydispersity widens the broadening range and delays the bifurcation (Fig. 5, p. 939–940).
  - Single realisations (SR = 10, Fig. 6) put the highest peak at either the upstream or the downstream displacement, depending on where the ~10 particles happen to sit (p. 940–941). Fig. 7 (SR 2.5, M 3) shows the most frequent measured value is the pre-shock displacement for all three cases; Case 1 has a second cluster near 0.4 (normalised), and the log-normal cases spread over intermediate values (p. 941).
  - **u′_rms grows monotonically with SR** and is largest when the two mean peaks are equally strong; it rises with shock strength nonlinearly and saturates, being slightly higher at M 3 than M 5. **Polydispersity lowers it** here, because more measurements land at intermediate values (Fig. 8, p. 941). See Data tables.
- **Shock at the window's upstream edge** (Figs 9–12, p. 941–942): every particle has already crossed the shock, so the gradient is pure post-shock deceleration.
  - No bifurcation: the mean peak broadens (SR 2.5) and then re-forms at the downstream value (SR 10). Polydispersity broadens it and delays the downstream peak (Fig. 9).
  - **u′_rms is non-monotonic in SR:** small at SR 0.5, largest at intermediate SR, tending to zero as SR → ∞ (p. 942). Here **polydispersity raises it**, because slow large particles keep the downstream peak from forming. Fig. 11 (SR 2.5, M 3): Case 1 a sharp PDF peak near 0.33 (normalised), Case 3 a broad spread from ≈ 0.3 to 0.9 (read).
  - The M = 1.5 shock gives no maximum within SR ≤ 10 (Fig. 12, read).
- **Idealised image deformation** (eq. 10, Fig. 13, p. 943–944): modelled as an image shift v_i from a five-point piecewise-linear fit of the mean particle velocity across the window, i.e. a perfect final pass at 75% overlap, without particle-image distortion. It cuts u′_rms strongly for monodisperse seed (M 3: peak ≈ 0.07 → ≈ 0.02, read) but much less for Cases 2–3 (M 3, Case 3: ≈ 0.15 → ≈ 0.12). The authors call this an "absolute best case" (p. 943). Even then, instantaneous velocity and turbulence statistics are impossible except for monodisperse seed or very low SR (p. 944).
- **Experiment** (Figs 14–16, p. 944–946):
  - NPR 2.5 (throat-to-ambient), one Mach disc then weaker oblique shocks: a "significant spike" in u′_rms behind the Mach disc (≈ 0.335U_e at x ≈ 1.5, read) and smaller spikes behind the later shocks (≈ 0.08–0.11U_e, read) (Fig. 14). 1 MHz schlieren showed the Mach disc and the next three cells stable, with "no measurable axial oscillation" (p. 944–945).
  - NPR 2.0, no Mach disc: spikes at every shock but much smaller (≈ 0.095U_e at the first, ≈ 0.07U_e later, on a ≈ 0.03–0.04U_e background, read) (Fig. 15). Schlieren showed no axial oscillation of the first three cells and a "helical oscillation" of later cells (p. 945).
  - The conclusion quotes "as high as 35%" behind the strong normal shock and 10% behind the oblique shocks (p. 946).
  - The mean correlation coefficient from 2,000 images (Fig. 16) drops sharply at the normal and oblique shocks. The authors attribute this to peak-height loss from in-window gradients (Soria 2006), aero-optical distortion (Elsinga et al. 2005), agglomerate break-up at the shock losing particle pairs (Rumpf 1990), and ordinary PIV error; they propose the drop as a **shock detector** (p. 945–946).
  - They cannot say what fraction of the measured u′_rms is the NCCF effect, because of these other sources (p. 946).
- **Conclusions** (p. 946): a shock within or upstream of a window does not just bias the mean; it adds an artificial fluctuating component and more outliers. It can be removed entirely only by keeping the shock on a window edge and making SR "significantly larger than ten" with small enough particles. Since neither is practical, accurate turbulence statistics in shock-containing flow by PIV are "essentially impossible".

## Setup / method
- **Particle model** (§2.1, §3.1, p. 934–937):
  - One-dimensional force balance (eq. 1) with the Tedeschi & Gouin (1999) drag law (eq. 2), which corrects for rarefaction (slip k, Knudsen function ζ), compressibility (C) and inertia; valid for Re_p < 200 and particle Mach number M_p < 1 (p. 934). Solved numerically, since the drag depends nonlinearly on Re_p and compressibility (p. 935).
  - Shock: a zero-thickness step in velocity, pressure and temperature (normal shock relations), with the upstream air at standard laboratory conditions (SLC). With T fixed upstream, the particle's initial velocity changes with M (p. 937).
  - τ_p is the time to reach a 1/e reduction of the lag U_p − U_f (p. 934); ξ_p is the distance travelled in that time (p. 938).
  - Particle density is the same for all particles; its value is not stated (p. 936).
- **Size distributions** (Table 1, p. 936–937): log-Gaussian with geometric mean μ_g(d_p) = 0.8 µm. Case 1: σ_g = 0 (monodisperse; loosely Merck Monosphere, Voges et al. 2007). Case 2: σ_g = 0.3 (similar to a distribution in Kähler, printed as 1995). Case 3: σ_g = 0.5 (to show the trend). Figure 1 histograms span 0–3 µm. Neither 2 nor 3 is a specific seed.
- **NCCF computation** (§2.2, §3.2, p. 935–939):
  - The cross-correlation of two particle images is split into self-correlation terms (which build the displacement peak) and particle–particle cross terms (pure noise) (eq. 3). The NCCF keeps only the first (eq. 5), so the study isolates the effect of the gradient with no other noise (p. 935–936).
  - Gaussian particle images (eq. 6) whose intensity scales with d_i² and whose image diameter d_ei is diffraction-limited (value not stated); uniform illumination; unit magnification; y-motion neglected for a normal shock (p. 936).
  - Particles placed by a Poisson process with diameters drawn from the distributions; the shock sits on a pixel boundary (lab shocks are a few microns thick) (p. 938).
  - Window 64 px; magnification set so the pre-shock displacement is 16 px; shock at 0 IW (upstream edge) or 0.5 IW (centre); SR = 0.5, 1, 2.5, 5, 10; M = 1.5, 3, 5 (p. 939).
  - Statistics from more than 10,000 samples over these parameters (p. 938). Particles may leave the window between exposures and still contribute (p. 940–941). The particle count per window is not stated (Figs 6, 10 show about 8–12).
  - Multigrid, window offset and deformation are deliberately left out, except the idealised image-shift test of §3.2.4 (p. 935, 943).
- **Experiment** (§3.2.5, p. 944): set-up in Mitchell et al. 2007a,b. Seed Aerosil R974, a "highly polydisperse" hydrophobic fumed silica with 12 nm primary grains; measured mean τ_p = 2.1 µs, spread unknown. Processing: Soria (1996) iterative multigrid with image deformation by third-order B-spline interpolation; smallest window 0.056D. Fig. 16 averages 2,000 image pairs. Nozzle geometry, D, Δt, U_e and the SR of the experiment are not given.
- **Data requirements of the analyses:** everything is single-snapshot statistics (mean, rms, PDFs, correlation coefficient) over independent realisations; nothing needs time-resolved data. The schlieren used for shock stability was time-resolved at 1 MHz, but only its conclusions are reported.

## Key equations
Checked on rendered pages; notation as printed.

- **Particle drag** (eq. 1, p. 934): $\dfrac{dU_p}{dt}=-\dfrac{3}{4}C_D Re_p\dfrac{\mu}{\rho_p d_p^2}(U_p-U_f)$.
- **Drag coefficient** (eq. 2, p. 934; Tedeschi & Gouin 1999): $C_D=\dfrac{24}{Re_p}\,k\left[1+0.15(kRe_p)^{0.687}\right]\zeta C$, valid for $Re_p<200$, $M_p<1$.
- **PIV cross-correlation** (eq. 3, p. 935): $R_{12}(\eta,\xi)=\sum_{i=1}^{N}R_{ii}(\eta-\Delta x_i,\xi-\Delta y_i)+\sum_{i\ne j}R_{ij}\big(\eta-(x_j-x_i+\Delta x_i),\,\xi-(y_j-y_i+\Delta y_i)\big)$; the first sum is the displacement peak, the second noise. Eq. 4 is the same with uniform Δx, Δy.
- **NCCF** (eq. 5, p. 936): $R_{12}=R^*_{12}(\eta,\xi)=\sum_{i=1}^{N}R_{ii}(\eta-\Delta x_i,\xi-\Delta y_i)$.
- **Particle image** (eq. 6, p. 936): $\Gamma_1(x,y,d_i)=\Gamma_{0i}\exp\!\left[-18(x^2+y^2)/d_i^2\right]$.
- **NCCF for a normal shock** (eq. 7, p. 936): $R^*_{12}(\eta,\xi)=\sum_{i=1}^{N}\dfrac{d_i^2}{72}\exp\!\left[\dfrac{-9\big((\eta-\Delta x_i)^2+\xi^2\big)}{d_{ei}^2}\right]$.
- **Eq. 8** (p. 936) substitutes Δx_i from integrating eq. 1 twice between the exposures t₁ and t₂, with $U_f=U_{f1}$ for $x<\psi$ and $U_{f2}$ for $x\ge\psi$ (ψ = shock distance from the window's left edge).
  > As printed, the double integral contains only the drag term, not the particle's initial velocity × (t₂ − t₁); the displacement presumably includes it. Check the typeset form on p. 936.
- **Spatial ratio** (eq. 9, p. 938; after Ragni et al. 2011): $SR=\mathrm{IW}/\xi_p$.
- **Image-shift deformation** (eq. 10, p. 943): $R_{12}=R^*_{12}=\sum_i R_{ii}(\eta-\Delta x_i+v_i,\ \xi-\Delta y_i)$, with v_i a linear or piecewise-linear shift.

> My consistency checks (not in the paper):
> - The exponents in eqs 6 and 7 are consistent: the self-correlation of a Gaussian with exponent −18r²/d² has exponent −9r²/d².
> - Normal-shock velocity ratios (γ = 1.4) are U₂/U₁ = 0.54, 0.26 and 0.20 for M = 1.5, 3 and 5. A 50/50 split between the two displacements gives the largest possible rms, ΔU/2 = 0.23, 0.37 and 0.40U₁. The Fig. 8 maxima (0.12, 0.32 and 0.28, Case 1, SR 10) stay below these bounds, and the saturation of the bound above M ≈ 3 fits the "asymptotic" growth with shock strength.
> - The Case 1 secondary cluster near 0.4 in Fig. 7 sits above the fully relaxed 0.26 for M = 3, as expected for SR = 2.5 with the shock mid-window (post-shock half-window ≈ 1.25ξ_p).

## Data tables
**Artificial fluctuation u′_rms/U_e, shock at window centre** (Fig. 8, p. 942; read from the rendered figure; SR = 0.5, 1, 2.5, 5, 10):

| M | Case | SR 0.5 | 1 | 2.5 | 5 | 10 |
|---|---|---|---|---|---|---|
| 1.5 | 1 | ≈0.005 | ≈0.008 | 0.022 | 0.061 | 0.117 |
| 1.5 | 2 | – | – | – | 0.044 | 0.087 |
| 1.5 | 3 | – | – | – | 0.031 | 0.064 |
| 3 | 1 | 0.038 | 0.10 | 0.193 | 0.265 | 0.322 |
| 3 | 2 | 0.03 | 0.07 | 0.148 | 0.22 | 0.29 |
| 3 | 3 | 0.02 | 0.05 | 0.115 | 0.178 | 0.245 |
| 5 | 1 | 0.012 | 0.045 | 0.112 | 0.19 | 0.28 |
| 5 | 2 | – | 0.03 | 0.087 | 0.15 | 0.228 |
| 5 | 3 | – | 0.025 | 0.062 | 0.116 | 0.19 |

**Shock at the window's upstream edge, without / with idealised deformation** (Figs 12 and 13, p. 944–945; read):

| M | Case | SR 0.5 | 1 | 2.5 | 5 | 10 |
|---|---|---|---|---|---|---|
| 1.5 | 1 | 0.004 / ≈0.001 | 0.009 / 0.003 | 0.019 / 0.006 | 0.029 / 0.011 | 0.034 / 0.016 |
| 1.5 | 3 | ≈0.006 / 0.016 | 0.012 / 0.028 | 0.029 / 0.055 | 0.050 / 0.076 | 0.076 / 0.079 |
| 3 | 1 | 0.040 / ≈0 | 0.070 / 0.003 | 0.054 / 0.010 | 0.035 / 0.016 | 0.016 / 0.020 |
| 3 | 2 | 0.043 / 0.015 | 0.084 / 0.028 | 0.111 / 0.056 | 0.091 / 0.059 | 0.051 / 0.049 |
| 3 | 3 | 0.043 / 0.025 | 0.084 / 0.052 | 0.139 / 0.104 | 0.148 / 0.121 | 0.130 / 0.111 |
| 5 | 1 | 0.018 / ≈0 | 0.046 / 0.002 | 0.092 / 0.009 | 0.075 / 0.015 | 0.040 / 0.017 |
| 5 | 2 | 0.021 / 0.016 | 0.047 / 0.031 | 0.112 / 0.058 | 0.135 / 0.062 | 0.107 / 0.050 |
| 5 | 3 | 0.020 / 0.026 | 0.048 / 0.055 | 0.108 / 0.113 | 0.158 / 0.127 | 0.171 / 0.118 |

> For Case 3 at M = 1.5 (and at low SR for M = 5), the "with deformation" values read higher than those without. The text claims only that deformation gives "smaller improvements" for polydisperse seed (p. 943). Check the two figures against each other.

**Jet centreline readings** (Figs 14–15, p. 945; read; x as labelled, presumably x/D):

| Quantity | NPR 2.5 | NPR 2.0 |
|---|---|---|
| First-cell peak U/U_e (x) | 1.57 (1.05) | 1.34 (0.65) |
| Post-shock minimum U/U_e (x) | 0.75 (1.5), Mach disc | 0.85 (1.05) |
| Later U/U_e peaks at x ≈ | 2.48, 4.03, 5.53, 7.0 | 1.98, 3.3, 4.5, 5.6, 6.6 |
| Peak u′_rms/U_e behind first shock | ≈0.335 (x ≈ 1.5) | ≈0.095 (x ≈ 0.8) |
| Later u′_rms/U_e spikes | ≈0.11, 0.085, 0.09 | ≈0.07, 0.072, 0.074 |
| Background u′_rms/U_e | ≈0.05 | ≈0.03–0.04 |

> The peak spacings (≈ 1.5 at NPR 2.5, ≈ 1.2–1.3 at NPR 2.0) are about twice the 0.57D that [Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) gives for a round convergent nozzle at NPR 2.1. Also, U/U_e = 1.57 implies a pre-shock Mach number of about 1.9 if U_e is sonic (my arithmetic). Either the nozzle is not a plain convergent one ("throat-to-ambient" NPR hints at a throat upstream of the exit), or x is not x/D. The paper does not say, so these spacings are not added to `shock_cell_spacing.csv`.

## Figures worth remembering
- **Fig. 3 (p. 939):** τ_p against upstream Mach number for 0.4, 0.8 and 1.6 µm particles at SLC; steep fall to M ≈ 2, then flat.
- **Fig. 4 (p. 939):** NCCF-measured velocity behind an M = 3 shock for the three distributions; the polydisperse seed relaxes much more slowly.
- **Fig. 5 (p. 940):** mean correlation planes, shock mid-window, SR 0.5 / 2.5 / 10: one peak, broadening, bifurcation.
- **Fig. 6 (p. 940):** two single realisations at SR 10; the tallest peak flips between upstream and downstream displacement.
- **Figs 7 and 11 (p. 941, 944):** measured-velocity PDFs, shock at the centre and at the edge.
- **Figs 8, 12, 13 (p. 942, 944, 945):** u′_rms/U_e against SR for M 1.5, 3, 5 and three distributions; the core result.
- **Fig. 14 (p. 945):** NPR 2.5 jet centreline: 0.335U_e u′_rms spike behind the Mach disc.
- **Fig. 16 (p. 946):** mean correlation-coefficient map (2,000 images); the shock pattern appears as low-correlation bands.

## Notation
- U_p, U_f: particle and fluid velocity; U_f1, U_f2: fluid velocity before and after the shock; d_p (d_i): particle diameter; ρ_p: particle density; μ: gas viscosity; Re_p: particle Reynolds number on the slip velocity; M_p: particle Mach number.
- C_D: drag coefficient; k: slip coefficient; ζ: Knudsen-number function; C: compressibility correction.
- τ_p: relaxation time (1/e of the lag); ξ_p: relaxation length; SR = IW/ξ_p; IW: interrogation-window size (64 px).
- R₁₂(η, ξ): cross-correlation at shift (η, ξ); R_ii, R_ij: self- and cross-particle correlations; R*₁₂: NCCF; Δx_i: displacement of particle i; Γ₀ᵢ: peak image intensity; d_ei: diffraction-limited image diameter; ψ: shock distance from the window's left edge; v_i: deformation image shift.
- μ_g(d_p), σ_g(d_p): geometric mean and standard deviation of the log-normal size distribution.
- u′_rms = E[u′u′]^{1/2}; U_e: jet exit velocity (also used for the free-stream velocity in Figs 8, 12, 13).
- NPR: throat-to-ambient pressure ratio (p. 944).

## Relevance to this project
This is the group's own reference for why u_rms spikes at shocks in its PIV are artefacts. Later group papers apply its model: [Mitchell 2013](mitchell-2013-near-field-structure-underexpanded-elliptic-jets.md) (Table 2, p. 5: predicted 1–5% monodisperse, 1–8% narrow log-normal, against 2–10% measured, at SR ≈ 0.4), [Edgington-Mitchell 2014, helical mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md) (p. 829: 4–7% predicted behind a first-cell normal shock, 3% measured with no normal shock), [Edgington-Mitchell 2014, Mach disk](edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md) (≥ 8% across the NPR 4.2 Mach disk), [Edgington-Mitchell 2015, multimodal](edgington-mitchell-2015-multimodal-instability-weakly-underexpanded-elliptic-jet.md) (p. 2744–2745) and [Bell 2018](bell-2018-coupled-underexpanded-supersonic-twin-jets.md) (p. 8).

**How it fits with Ragni et al. 2011**
- [Ragni 2011](ragni-2011-particle-tracer-response-shocks-piv.md) asks how to *measure* the relaxation profile without bias and recommends windows no larger than ξ_p (SR ≤ 1) and Δt ≤ τ_p (p. 56). This paper asks how to avoid an artificial *fluctuation* and finds the artefact small at SR ≤ 1 but rising with SR when the shock is mid-window; it removes the artefact entirely only at SR ≫ 10 with the shock on a window edge (p. 946). The two are compatible: low SR keeps the fluctuation down at the cost of smearing the mean jump over several windows, which the authors call "typically undesirable" (p. 944). The group's settings (SR ≈ 0.4–0.75) sit in the low-artefact corner, consistent with the few-percent artefacts measured later.
- Both papers stress that τ_p must be measured in situ. Ragni finds a fourfold τ_p spread within one sample by PTV (p. 63); this paper shows why a spread matters for PIV: the correlation is weighted by d², so the measured relaxation follows the larger particles (Fig. 4). Aerosil R974 at τ_p = 2.1 µs here matches Ragni's stored powders (2.4–3.3 µs) and the group's later smoke (2.0 µs).
- Alkislar et al. 2003 report PIV agreeing with probes through six shock cells with 0.3 µm oil ([Alkislar 2003](alkislar-2003-screeching-rectangular-jet-stereo-piv.md), p. 134). That is a mean-velocity check; this paper shows the fluctuation can be corrupted even when the mean is right.

**Limits of the model**
- One-dimensional normal shock of zero thickness in uniform flow; no oblique shocks (which are what most group jets have), no shock curvature or motion, no turbulence, no out-of-plane loss, no particle–particle noise terms, and no sub-pixel peak fitting or validation described. The peak-location rule is not stated. These choices make it a best case, as the authors say (p. 946).
- Particle density, image diameter and particles per window are not given, so the numbers cannot be reproduced exactly.
- The experiments cannot separate the NCCF effect from aero-optics, agglomerate break-up and peak-height loss (p. 946).

**Methods and data for the lab workflow (CLAUDE.md)**
- *Non-time-resolved PIV (POD, POD pairs).* The artefact is random from shot to shot, so it lands in the residual u″ after a POD-pair reconstruction, not in the coherent part, as long as the shock stays put. Two consequences: (1) random-stress maps and noise-model inputs from PIV ([Tan 2017](tan-2017-broadband-velocity-fluctuations-screeching-jets.md); Tan et al. 2019a,b) carry spurious peaks at every shock; (2) where shocks oscillate with the tone (A-mode and C-mode jets), the shock's position inside the windows varies with phase, so the artefact could be phase-modulated and leak into phase-binned random stresses. This bears on the anti-phase coherent/random k at shock reflections in Tan et al. 2019a (open question on the diagnostics topic page). Masking the shock core (Tan 2017, p. 2324–2325) is the practical guard.
- *Time-resolved data (SPOD → reconstruction → HPOD).* Schlieren has no tracer lag, so the shock-region dynamics in the pipeline should come from TR schlieren; PIV-derived amplitudes near shocks should not be read as fluctuation energy.
- *Shock detection.* The correlation-coefficient map (Fig. 16) is a free by-product of PIV processing and locates normal and oblique shocks, which could be used to build masks automatically.

**Modelling and simulation**
- The drag-law ODE plus NCCF is a cheap forward model of PIV. It could be run on LES fields (e.g. the PyFR staging LES in `Simulations/PyFR_Staging_Continuation/`) by seeding Lagrangian particles with a measured τ_p distribution and building synthetic PIV. That would separate the artefact from real shock-associated turbulence at the reflection points and give LES–PIV comparisons a fair basis for u_rms near shocks.
- Rocket noise: not directly relevant, except that PIV of heated or impinging plumes with strong normal shocks (Mach discs, plate shocks) will have the largest artefacts (M ≥ 3 shocks in Fig. 8).

**Items to verify against the PDF**
1. The double integral in eq. 8 (p. 936): whether the initial-velocity term is meant to be included.
2. Particle density and d_ei used for Figs 2–4 and 8–13; the window size for Fig. 4 (not stated).
3. Figs 12 vs 13 at M = 1.5 Case 3 (deformation appears to raise u′_rms; see Data tables).
4. x in Figs 14–15 is unlabelled; Fig. 16 uses x/d. The shock spacing seems about twice that expected for a sonic round nozzle at NPR 2–2.5 (Data tables). Nozzle type and D are in Mitchell et al. 2007a,b.
5. "Helical oscillation" of later cells at NPR 2.0 (p. 945). Round jets at NPR ≈ 2 usually screech in the axisymmetric A1 mode; this may reflect the nozzle or the schlieren view.
6. The Kähler reference is printed as 1995, Exp. Fluids 33:736–742; volume 33 of Exp. Fluids is from 2002 (my recollection), so the year is probably a misprint.
7. Every value marked "read" comes from rendered figures.

**Candidates for `/add-paper`:** Mitchell, Honnery & Soria 2007a (7th PIV symposium, high-resolution measurements of an underexpanded jet) and 2007b (16th AFMC, optical techniques); Mitchell, Honnery & Soria 2009 (8th PIV symposium, shock-induced gradients and the correlation function); Soria 2006 (NCCF, World Scientific); Tedeschi & Gouin 1999 (Exp. Fluids 26, tracer motion in supersonic flow); Melling 1997 (Meas. Sci. Technol. 8, tracer particles); Scarano 2002 (Meas. Sci. Technol. 13, image deformation); Elsinga et al. 2005 (Exp. Fluids 39, aero-optical distortion in PIV); Urban & Mungal 2001 (JFM 431, compressible mixing layers, in-situ τ_p); Kähler et al. (tracer generation, Exp. Fluids 33); Voges et al. 2007 (powder seeding assessment); Westerweel 2007 (velocity gradients in PIV interrogation). [Krothapalli 1999](krothapalli-1999-flow-field-noise-supersonic-impinging-jet.md) (cited for liquid seeding, p. 935) is already indexed.
