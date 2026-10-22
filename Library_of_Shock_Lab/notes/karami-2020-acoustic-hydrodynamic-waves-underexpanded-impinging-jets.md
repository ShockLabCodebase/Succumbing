---
key: "karami-2020-acoustic-hydrodynamic-waves-underexpanded-impinging-jets"
title: "Characteristics of acoustic and hydrodynamic waves in under-expanded supersonic impinging jets"
authors: ["Karami, Shahram", "Edgington-Mitchell, Daniel", "Theofilis, Vassilis", "Soria, Julio"]
year: 2020
type: "article"
venue: "JFM 905, A34"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "905", "pages": "A34"}
doi: "10.1017/jfm.2020.740"
arxiv: ""
pdf: "impinging-jets-and-edge-tones/Karami-EtAl_2020_Characteristics-Of-Acoustic-And-Hydrodynamic-Waves-In-Under-Expanded-Supersonic-Impinging.pdf"
version: "published"
unverified: []
group: true
facility: "ECNSS LES (LTRAC in-house code, Monash); NCI, Pawsey and MASSIVE computers"
data: ["LES"]
methods: ["statistics", "PSD", "coherence", "wavenumber-filtering", "symmetry-decomposition", "LSA-local"]
flow: ["impinging-jet", "round-jet", "supersonic", "underexpanded"]
phenomena: ["impingement-tones", "KH-wavepackets", "receptivity", "guided-jet-mode", "shock-leakage", "source-location", "coherent-structures"]
params: {"NPR": "3.4", "M_j": "1.45", "h/D": "2, 5", "TR": "1 (plenum temperature = ambient)", "Re": "5×10⁴ (LES; non-dimensionalised with d, a_0 and ambient viscosity)", "St": "0.91 (h = 2d), 0.45 (h = 5d) (f d/a_0); St_j = 0.39 at h = 5d", "lip": "infinite (round hole in a flat wall)", "δ_in": "0.04d (inlet tanh profile, called momentum thickness)", "V_s": "0.77 a_0", "grid": "480×432×96 (h = 2d), 608×632×96 (h = 5d)"}
topics: ["impinging-jets-and-edge-tones", "linear-models", "simulation-methods"]
related: ["weightman-2019-sound-production-impinging-supersonic-jets", "bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "henderson-2002-flow-structure-supersonic-impinging-jets", "henderson-1993-tones-choked-jet-impinging-flat-plates", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "tam-1989-three-families-instability-waves-high-speed-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "nogueira-2024-guided-jet-waves", "michalke-1984-survey-jet-instability-theory"]
cites: ["bell-2018-coupled-underexpanded-supersonic-twin-jets", "bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "henderson-1993-tones-choked-jet-impinging-flat-plates", "ho-1981-dynamics-impinging-jet-feedback-phenomenon", "jaunet-2019-dynamics-round-jet-impingement", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "weightman-2017-phase-lag-supersonic-jet-impingement", "weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet", "weightman-2019-sound-production-impinging-supersonic-jets"]
summary: "LES of NPR 3.4 infinite-lip jet on a plate (h 2d, 5d): KH at 0.77a₀, wall-region sound at a₀, St_j 0.39 at 5d; local LSA: most unstable St falls 4→0.5 within 1d"
---
# Characteristics of acoustic and hydrodynamic waves in under-expanded supersonic impinging jets

- **Authors:** Shahram Karami, Daniel Edgington-Mitchell and Julio Soria (Laboratory for Turbulence Research in Aerospace and Combustion (LTRAC), Dept of Mechanical and Aerospace Engineering, Monash University), and Vassilis Theofilis (School of Engineering, University of Liverpool) (p. 1). Corresponding author Karami. Shock Lab group paper through Edgington-Mitchell, but the work is a simulation from Soria's LTRAC LES line (ECNSS code), with no experiment.
- **Source:** J. Fluid Mech. (2020), vol. 905, A34, doi:10.1017/jfm.2020.740, "© The Author(s), 2020". Received 19 March 2020, revised 1 July 2020, accepted 31 August 2020 (p. 1). Funded by the Australian Research Council; computing on NCI (National Computational Merit Allocation Scheme, plus Monash's LIEF partner share), Pawsey and MASSIVE (p. 26). Companion to the receptivity study of the same configuration, Karami, Stegeman, Ooi, Theofilis & Soria (2020), JFM 889, A27 (p. 2–3, 12), cited in [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) as Karami et al. 2020a, b.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/impinging-jets-and-edge-tones/Karami-EtAl_2020_Characteristics-Of-Acoustic-And-Hydrodynamic-Waves-In-Under-Expanded-Supersonic-Impinging.pdf` (33 pp., publisher's version). Page refs are journal pages A34-n, which equal the PDF page numbers. Eqs. 2.1–2.13, 3.1–3.3 and Figs 3–20, 23–24 were checked on rendered pages; the text layer drops Greek letters and mangles the equations.
- **Tags:** impinging underexpanded jet, infinite-lipped nozzle, NPR 3.4, nozzle-to-wall distance h = 2d and 5d, large-eddy simulation, ECNSS, hybrid central/WENO shock capturing, cylindrical coordinates, density-gradient (numerical schlieren) visualisation, space–time (x–t) diagrams, frequency–wavenumber (St–k_x) spectra, upstream-travelling waves, convection velocity, autocorrelation, triple decomposition by bandpass filter, integral time scale, zero-lag cross-correlation (normalised and non-normalised), wavelength, acoustic source location, collective interaction (Ho & Nosseir), vortex pairing (Winant & Browand), compressible Rayleigh equation, local spatial linear stability, companion-matrix method, Mach (Chu) energy norm, azimuthal mode energy, Tam's phase-velocity matching

## Summary
Two LES of a cold NPR 3.4 (M_j 1.45) jet issuing from an infinite-lipped nozzle (a round hole in a flat wall) and impinging on a flat plate at h = 2d and 5d are used to characterise the two halves of the feedback loop (p. 1, 4–6). Space–time diagrams, frequency–wavenumber spectra and correlations show shear-layer wavepackets convecting at 0.77a₀ and sound travelling up and down the gap at a₀, with a single dominant time scale of 1.1 and 2.2 acoustic time units (St = fd/a₀ = 0.91 and 0.45; St_j = 0.39 at h = 5d against 0.385 measured by Weightman et al. 2019) (p. 13–21). The strongest upstream waves are born where coherent structures hit the wall, 0.8d (h = 2d) and 1.1d (h = 5d) from the axis; vortex–oblique-shock and stand-off-shock interactions make weaker waves (p. 9–12). The paper then asks how the broadband, high-frequency instabilities excited at the lip become one low-frequency structure within about 1d. It finds no sign of Ho & Nosseir's "collective interaction", sees vortex pairing but judges it minor, and attributes the change to spatial growth on the rapidly evolving near-nozzle mean flow (p. 12–13, 21). Local spatial stability analysis (compressible Rayleigh equation, m = 0) of the LES mean profiles and a Mach-energy-norm spectrum of the LES both show the most unstable St falling from about 4 at x = 0.1 to about 0.5 at x = 0.9, the LSA getting the trend but not the values (p. 21–25).

## Key findings
- **Flow structures and the loop** (§3.1, Figs 4–6, p. 9–13):
  - *h = 2d* (Fig. 4, frames 0.26 a.t.u. apart): a small-wavelength disturbance grows and has a wavelength of about one nozzle radius 1d downstream. The tracked vortex meets the oblique shock and pushes it downstream (deformed), reaches the stand-off shock, impinges and is stretched radially and compressed axially in the wall jet; a sound wave appears at the impingement region as it hits (p. 9).
  - The wave radiates cylindrically in the (x, r) plane. Traced back to its origin (as in Weightman et al. 2017b), the source is near the wall at **0.8d from the axis** (p. 9). The wave travels to the nozzle wall, reflects and runs along it as a front approaching the jet perpendicular to the flow, as in Weightman et al. 2019, and excites a new instability at the lip (p. 9, 12).
  - The wall-impingement waves are the strongest by density gradient; waves from coherent-structure interaction with the oblique and stand-off shocks exist but are weaker (p. 12).
  - *h = 5d* (Fig. 5, frames 1.3 a.t.u. apart): two waves from the impingement region at once, and a large structure pushing the oblique shock downstream creates a wave outside the shear layer "similar to" the shock-leakage experiments of Edgington-Mitchell et al. 2018b (p. 12). The wall-region source is **1.1d from the axis** (p. 12).
  - Comparisons the authors make (p. 12): Gojon et al. 2015 (LES, NPR 4.03, thin lip) found two sources, the loop-closing one in the shear layer at the wall; Weightman et al. 2017b (cylinder, h = 3.5d) put it near the wall at 1.4d.
  - *Vortex pairing* (Fig. 6, h = 5d; h = 2d said to be the same, p. 12–13): rolling with pairing and rolling without pairing both occur. At most one, occasionally two, pairings happen, halving or quartering the frequency, which is too little for the observed tenfold drop (p. 1, 12–13, 21).
  - *Collective interaction* (Ho & Nosseir 1981; Fig. 1a) is not observed, as in other moderately and highly underexpanded jets; only Diebold & Elliott (2014) report it, for NPR < 2.5 (p. 3, 21).
- **Convection and acoustic speeds** (§3.2.1, Figs 7–10, p. 13–17):
  - Shear-layer u'_x along the line of maximum TKE: organised wavepackets travelling at **V_s = 0.77a₀** for both h, found from the slope of crests in the x–t diagram (p. 13, 15). The paper calls this "approximately 0.7 jet exit velocity" (p. 9, 12, 25); by its own numbers 0.77a₀ = 0.84V_e = 0.63U_j (my arithmetic, verify item 5).
  - At h = 5d the pattern is organised before the first Mach disk and distorted by the first oblique shock, but the high-amplitude wave keeps a nearly constant speed (p. 15).
  - Pressure at r = 2.0: upstream and downstream waves at ±a₀, with reflection off the infinite lip (p. 13–15).
  - St–k_x spectra (Fig. 8, h = 2d; Fig. 10, h = 5d): u'_x in the shear layer is dominated by a downstream branch with ω/k = 0.77; shear-layer pressure adds a low-frequency upstream branch near ω/k = −1; near-field pressure has both ±1 branches, with the upstream one stronger and the downstream one due to the infinite lip (p. 14–16).
  - The authors say the shear-layer upstream waves could be either free-stream acoustic waves (Weightman et al. 2019) or intrinsic upstream jet waves (Jaunet et al. 2019), which overlap when the group velocity is −a₀; they do not separate them (p. 16).
  - Near-field pressure spectra have a wide spread of wavelengths at the dominant St, which the authors attribute to the sharp pressure gradient at the wavefronts (p. 15).
- **Dominant time scale** (§3.2.2, Figs 11–13, 21, p. 16–18, 25–26):
  - Autocorrelations of u'_x at the shear layer have a large undershoot next to the peak (dominant coherent structures, following Brehm et al. 2016); those of u'_r alternate in sign with period **τ ≈ 1.1 a.t.u. (h = 2d)** and **≈ 2.2 (h = 5d)** (p. 16–18).
  - h = 5d: τ = 2.2 gives St = fd/a₀ = 0.45, i.e. **St_j = f d_j/U_j = 0.39**, against **St_j = 0.385** from long microphone records of Weightman et al. 2019 for the infinite lip at 5d (p. 18). h = 2d: St = 0.91 (p. 18); St_j ≈ 0.80 by the same conversion (my arithmetic; the paper gives no experimental value at 2d).
  - The undershoot level changes at the oblique-shock/shear-layer interactions (dashed lines, Figs 11–12, p. 18).
  - Triple decomposition: the coherent part is a bandpass of ±5% around St 0.91 (h = 2d) or 0.45 (h = 5d); the random remainder has integral time scales about an order of magnitude below the coherent τ (Fig. 13c: ≈ 10⁻²–10⁻¹, read from figure) (p. 18). The authors read this scale separation as showing the random part does not affect the coherent dynamics and as justifying linear stability analysis (citing Oberleithner, Rukes & Soria 2014) (p. 18, 25).
- **Wavelengths from zero-lag cross-correlation** (§3.3, Figs 14–15, 22–23, p. 18–21, 27–28):
  - Tam (1986) requires frequency and phase-velocity matching for sound to excite instability waves; here the two waves travel in opposite directions, so only frequency matching (phase lock, Ho & Nosseir 1981) can hold, and the wavelengths must differ (p. 18–19).
  - h = 2d, reference p' at (x, r) = (1.0, 2.0): p'–p' correlation shows the oblique and stand-off shocks correlated with the near-field sound, **λ_a ≈ 1d**; p'–u'_r shows the oblique shock, stand-off shock, wall jet and shear layer, **λ_s ≈ 0.85d**. Both give τ = λ/V ≈ 1.1 (p. 20).
  - h = 5d, reference at (2.5, 4.25): **λ_a ≈ 2d**, **λ_s ≈ 1.7d**, τ ≈ 2.2; the reference pressure correlates strongly with the shear-layer instabilities, unlike at 2d (p. 20–21).
  - Check (mine): λ_s/V_s = 0.85/0.77 = 1.10 and 1.7/0.77 = 2.21, but λ_a/a₀ = 1.0 and 2.0, about 10% short of 1.1 and 2.2; within what can be read off the maps.
  - Both correlations reveal the coherent structures; the non-normalised one shows the acoustic waves more clearly (Brehm et al. 2016 preferred it for source location) (p. 20).
  - **Dominant coherent structures form about 1d downstream of the lip** (p. 21, 25), comparable to Ho & Nosseir's 1.31d for subsonic impinging jets (p. 3).
- **Local linear stability** (§3.4.1, Figs 16–18, p. 21–23):
  - Mean profiles of ū_x at x = 0.1–0.9 are far from tanh: an off-axis overshoot from the expansion (ū ≈ 1.2 near r ≈ 0.45 at x = 0.1, centreline rising to ≈ 1.55 by x = 0.9; read from Fig. 16). The h = 2d shear layer is slightly thicker (p. 22).
  - The analysis is limited to x ≤ 1 and to m = 0, the dominant mode in Weightman et al. 2019 and in Appendix C (p. 22).
  - At x = 0.1 a broad band is unstable (up to St ≈ 7–7.5), with peak −α_i ≈ 18 at St ≈ 4.1 (h = 2d) and ≈ 23 at St ≈ 3.7 (h = 5d) (Fig. 17, read from figure). The peak growth rate falls fast downstream, and the upper unstable St is below 1.2 by x = 0.9 (p. 22).
  - The St of maximum growth falls from ≈ 4 at x = 0.1 to ≈ 2.2 (x = 0.2), ≈ 1.2 (x = 0.4), ≈ 0.8 (x = 0.6) and ≈ 0.5 (x = 0.9), the same for both h, "approaching" St 0.4 (Fig. 18, read from figure; p. 22–23).
- **LES energy-norm spectra** (§3.4.2, Figs 19–20, p. 23–25):
  - A(x, m = 0, St) shows that high-frequency disturbances are "saturated by strong low-frequency disturbances" within 1d (p. 24). Read from Fig. 20: little energy below x ≈ 0.3–0.4; above it the energetic band spans St ≈ 0–3 and narrows to St ≲ 2.5 (h = 2d) or ≲ 2 (h = 5d) by x = 0.9.
  - The LSA "underpredicts" the most unstable St but gets the decreasing trend; the authors blame the parallel-flow assumption and expect PSE to do better (p. 24–25). The abstract says the LSA **over**predicts it (p. 1), a contradiction (verify item 1).
  - Conclusion: unlike subsonic jets, the shear layer of these underexpanded jets supports the drop of the most unstable frequency within 1d, through spatial growth on a streamwise-varying mean flow. The authors warn against vortex-sheet or tanh (parallel, streamwise-uniform) approximations for growth rates and most unstable frequencies (p. 1, 26).
- **Azimuthal content** (App. C, Fig. 24, p. 27–28): over the shear-layer region of Fig. 19 and St ≤ 8, m = 0 holds ≈ 60% (h = 2d) and ≈ 65% (h = 5d) of the disturbance energy, m = 1 ≈ 10%, m = 2 ≈ 6–7%, m ≥ 3 ≤ 5% each (read from figure).

## Setup / method
- **Configuration** (§2.1, Fig. 2, p. 4–6): an infinite-lipped nozzle, i.e. a round hole of diameter d in a flat wall, and a parallel impingement wall at distance h = 2d or 5d. The domain is 12d in radius (24d wide), with non-reflecting outlets at the radial boundaries. No nozzle interior is simulated; the inflow is prescribed at the hole.
  - Inflow (eq. 2.1, p. 5): hyperbolic-tangent velocity profile after Bodony & Lele (2005), δ_in = 0.04d ("momentum thickness"), non-turbulent (no inflow forcing), justified by the high-contraction-ratio experimental nozzles (Edgington-Mitchell et al. 2014a; Amili et al. 2015a, b; Soria & Amili 2015).
  - NPR = 3.4 (choked; critical NPR 1.893), M_j = U_j/a_j = 1.45, plenum temperature = ambient, V_e = 0.912a₀ on the centreline, U_j/V_e = 1.33 (p. 5, 13). NPR 3.4 was chosen to match Risborg & Soria (2009), Cierpka et al. (2014), Weightman et al. (2019) and their own earlier runs, and because a small Mach disk resolvable by the grid begins to form there (p. 5).
  - Re = 50 000, about an order of magnitude below the experiments, chosen for LES cost (p. 5). The definition is implied by the non-dimensionalisation with d, a₀ and ambient viscosity (p. 6), so it is presumably an acoustic Reynolds number (verify item 8).
  - All quantities are non-dimensional: lengths by d, velocities by a₀, time by d/a₀ (the "acoustic time unit") (p. 5–6).
- **LES (ECNSS)** (§2.2, Table 1, Fig. 3, p. 6–7; details in Karami et al. 2019, Comput. Fluids 191):
  - Filtered compressible Navier–Stokes in cylindrical coordinates; Germano dynamic SGS model with Lilly's (1992) modification.
  - Sixth-order central differences in smooth regions; fifth-order WENO with local Lax–Friedrichs flux splitting where a "novel" shock-identification method flags discontinuities.
  - Fourth-order, five-step Runge–Kutta (Kennedy & Carpenter 1994; Kennedy, Carpenter & Lewis 2000). Axis singularity per Mohseni & Colonius (2000).
  - Walls: no-slip, adiabatic, at the midpoint beyond the last grid point; four ghost cells filled by Taylor extrapolation; the convective terms vanish at the wall (p. 6).
  - Grids (Table 1): 480 × 432 × 96 (h = 2d; ≈ 2.0 × 10⁷ points) and 608 × 632 × 96 (h = 5d; ≈ 3.7 × 10⁷ points) in (x, r, θ); uniform in θ. Fine axial spacing near both walls and fine radial spacing in the mixing layer, stretched polynomially towards the axis and the far field (Fig. 3).
  - Read from Fig. 3: δr ≈ 0.002–0.003 at r ≈ 0.5, rising to ≈ 0.06 or 0.15 at r = 12 (two curves, unlabelled); δx peaks at ≈ 0.007 (h = 2d) and ≈ 0.014 (h = 5d) mid-gap. The δx axis label "0.05" must be 0.005.
  - Max mesh spacing 0.04 for r < 4.5 resolves sound up to St = 5 (p. 6). High resolution at the sharp lip edge was found necessary to capture receptivity (Karami et al. 2020) (p. 6).
  - Not stated: time step, total simulated time, sampling interval, number of snapshots N_t, sponge zones, grid-convergence study. The plotted x–t windows are t = 132–145 (h = 2d) and 265–285 (h = 5d) (Figs 7, 9).
- **Analyses of the LES data** (all need time-resolved data, which the LES supplies):
  - *Density-gradient maps* (Figs 4–5): log|∇ρ| with a split colour map (white–black for −1 to 0.5, black–green for 0.5–1) so weak sound and strong hydrodynamic gradients show together (p. 9). A numerical-schlieren analogue.
  - *Space–time diagrams* (Figs 7, 9): u'_x along the max-TKE line and p' along r = 2.0; speeds from the slopes of crests (p. 13).
  - *Frequency–wavenumber spectra* (Figs 8, 10): 2-D Fourier transform in x and t of u'_x and p' at the shear layer and p' at r = 2.0 (0 < x < 1.5 for h = 2d, 0 < x < 4.1 for h = 5d). Windowing, segment length and averaging are not stated. The paper's definitions of phase velocity ω/k and group velocity ∂ω/∂k are given in passing (p. 14).
  - *Autocorrelations* of u'_x and u'_r at shear-layer points (Figs 11–12, 21) and of the random part u''_r (Fig. 13); integral time scale by integrating the autocorrelation (p. 16–18).
  - *Triple decomposition*: coherent part by a ±5% bandpass about the dominant St, random part = total − coherent (p. 18).
  - *Zero-lag cross-correlation maps* (eq. 3.1, B 1): between a reference p' point and p' or u'_r everywhere, averaged over time and azimuth (same θ_j at both points). Half-wavelengths are read between neighbouring lobes (Figs 14–15) (p. 19–21, 27).
  - *Mach energy norm* (eq. 3.2) of azimuthally Fourier-decomposed disturbances, temporally Fourier-transformed and integrated radially between the maximum-velocity-gradient points on the two sides of the shear layer (eq. 3.3, Fig. 19), giving A(x, m, St) (p. 23–24). Integrating over x and St ≤ 8 gives the energy share per m (eqs. C 1–C 2).
- **Linear stability model** (§2.3, §3.4.1, p. 7–8, 22):
  - Local, inviscid, parallel, spatial (real ω, complex α) analysis of the compressible Rayleigh equation for p̂, normal modes in x, θ and t (eqs. 2.2–2.4).
  - Base flow: LES ensemble means of ū_x, p̄ and ρ̄ at each station x = 0.1–0.9 (no radial mean velocity, no streamwise derivatives).
  - The cubic eigenvalue problem in α (eqs. 2.5–2.9) is recast as a linear one by the companion-matrix method (Bridges & Morris 1984; Theofilis 1995). Velocity and density eigenfunctions follow from p̂ (eqs. 2.10–2.13).
  - Only m = 0. The radial discretisation, number of points, boundary conditions and how the KH branch is picked among the supersonic and subsonic families of high-speed jets (Tam & Hu 1989) are not stated.
  - The authors use it for the trend of the most unstable St, explicitly not for growth rates (p. 22).

## Key equations
Read from rendered pages 5, 7–8, 19, 23–24, 27–28.

- **Inflow profile** (eq. 2.1, p. 5): $U_{in}/V_e=-\tanh\!\big[\tfrac{1}{4\delta_{in}}\big(2r-\tfrac{1}{2r}\big)\big]$ for $r<0.5$, and $0$ for $r\ge0.5$.
  > My check: near the lip ($r=0.5-\varepsilon$) this is $\tanh(\varepsilon/\delta_{in})$, a half-tanh from zero at the edge, whose momentum thickness is $(1-\ln2)\,\delta_{in}\approx0.31\,\delta_{in}\approx0.012d$, not 0.04d. Bodony & Lele's form $0.5[1+\tanh(\cdot)]$ has $\theta$ as its true momentum thickness. Verify which profile was used (verify item 4).
- **Normal modes** (eq. 2.3, p. 7): $q'=\hat q(r)\exp\big(\mathrm i(\alpha x+m\theta-\omega t)\big)$, $q'=(\rho',u'_x,u'_r,u'_\theta,p')$, $\alpha=\alpha_r+\mathrm i\alpha_i$ (growth rate $-\alpha_i$).
- **Compressible Rayleigh equation** (eq. 2.4, p. 7):
  $$\frac{\mathrm d^2\hat p}{\mathrm dr^2}+\Big(\frac1r-\frac{2\alpha}{\alpha\bar u_x-\omega}\frac{\partial\bar u_x}{\partial r}-\frac1{\bar\rho}\frac{\partial\bar\rho}{\partial r}\Big)\frac{\mathrm d\hat p}{\mathrm dr}-\Big(\frac{m^2}{r^2}+\alpha^2-\frac{\bar\rho(\alpha\bar u_x-\omega)^2}{\gamma\bar p}\Big)\hat p=0$$
- **Cubic eigenvalue problem** (eqs. 2.5–2.9, p. 8): $(\alpha^3f_3+\alpha^2f_2+\alpha f_1+f_0)\hat p=0$, printed as
  $f_0=-\omega\big[\mathcal L+\omega^2\tfrac{3\bar\rho}{\gamma\bar p}\big]-2\tfrac{\partial\bar u_x}{\partial r}\tfrac{\mathrm d}{\mathrm dr}$, $f_1=\bar u_x\big[\mathcal L+\omega^2\tfrac{\bar\rho}{\gamma\bar p}\big]$, $f_2=-\omega\big[3\bar u_x^2\tfrac{\bar\rho}{\gamma\bar p}-1\big]$, $f_3=\bar u_x\big[\bar u_x^2\tfrac{\bar\rho}{\gamma\bar p}-1\big]$,
  with $\mathcal L=\tfrac{\mathrm d^2}{\mathrm dr^2}+\tfrac1r\tfrac{\mathrm d}{\mathrm dr}-\tfrac{m^2}{r^2}-\tfrac1{\bar\rho}\tfrac{\partial\bar\rho}{\partial r}\tfrac{\mathrm d}{\mathrm dr}$.
  > My check: multiplying eq. 2.4 by $(\alpha\bar u_x-\omega)$ and collecting powers of α reproduces $f_2$ and $f_3$, but gives $f_0=-\omega[\mathcal L+\omega^2\bar\rho/(\gamma\bar p)]$ and $f_1=\bar u_x[\mathcal L+3\omega^2\bar\rho/(\gamma\bar p)]-2(\partial\bar u_x/\partial r)\,\mathrm d/\mathrm dr$. The factor 3 and the shear term printed in $f_0$ belong in $f_1$ (both come from terms linear in α). Probably a typesetting slip; the results may be unaffected (verify item 2).
- **Eigenfunctions** (eqs. 2.10–2.13, p. 8): $\hat u_x=-\dfrac{\partial_r\bar u_x\,\partial_r\hat p+(\alpha\bar u_x-\omega)\alpha\hat p}{\bar\rho(\alpha\bar u_x-\omega)^2}$, $\hat u_r=\dfrac{-1}{\mathrm i\bar\rho(\alpha\bar u_x-\omega)}\partial_r\hat p$, $\hat u_\theta=\dfrac{-1}{\bar\rho(\alpha\bar u_x-\omega)}\dfrac{m\hat p}{r}$, $\hat\rho=\dfrac{-\bar\rho}{\mathrm i(\alpha\bar u_x-\omega)}\Big(\mathrm i\alpha\hat u_x+\dfrac1r\partial_r(r\hat u_r)+\dfrac{m\hat u_\theta}{r}\Big)$.
  > My check: 2.10–2.12 follow from the linearised momentum equations. Eq. 2.13 as printed lacks the mean-density-gradient term $\hat u_r\,\partial_r\bar\rho$ of linearised continuity and has $m\hat u_\theta/r$ where $\mathrm i m\hat u_\theta/r$ is expected (verify item 3). Not used for the results shown.
- **Non-normalised cross-correlation** (eq. 3.1, p. 19): $C_{\phi\chi}=\frac{1}{N_t N_\theta}\sum_{i=1}^{N_t}\sum_{j=1}^{N_\theta}\phi(x_{ref},r_{ref},\theta_j,t_i)\,\chi(x,r,\theta_j,t_i)$. Normalised (eq. B 1, p. 27): $\langle C_{\phi\chi}\rangle=C_{\phi\chi}/(\sqrt{C_{\phi\phi}}\sqrt{C_{\chi\chi}})$, each average over $N_t\times N_\theta$.
- **Mach energy norm** (eq. 3.2, p. 23): $E=\tfrac12\Big(\bar\rho\,u'_iu'^{*}_i+\dfrac{\bar T\rho'\rho'^{*}}{\bar\rho\gamma M^2}+\dfrac{\bar\rho\,T'T'^{*}}{\gamma(\gamma-1)\bar T M^2}\Big)$, with M based on inlet velocity and inlet sound speed; * = complex conjugate.
- **Shear-layer energy** (eq. 3.3, p. 24): $A(x,m,St)=\int_{r_l}^{r_u}\hat E(x,r,m,St)\,r\,\mathrm dr$, with $r_l$, $r_u$ at the maximum velocity gradient on either side of the shear layer (the text labels them "upper and lower" in reverse order).
- **Energy per azimuthal mode** (eqs. C 1–C 2, p. 27–28): $\bar A(m)=\int_0^{8}\int_0^{x_o}A\,\mathrm dx\,\mathrm dSt$, $\Upsilon(m)=100\,\bar A(m)/\sum_{m=0}^{9}\bar A(m)$.
- **Time scale from wavelength** (p. 20): $\tau=\lambda/V$.

## Data tables
**LES grids** (Table 1, p. 7):

| h/d | N_x × N_r × N_θ | Points |
|---|---|---|
| 2 | 480 × 432 × 96 | ≈ 2.0 × 10⁷ (my product) |
| 5 | 608 × 632 × 96 | ≈ 3.7 × 10⁷ (my product) |

**Wave characteristics** (text, p. 13–21; St_j conversions mine except the 0.39):

| Quantity | h = 2d | h = 5d | Page |
|---|---|---|---|
| Shear-layer wavepacket speed V_s | 0.77a₀ | 0.77a₀ | 13, 15 |
| Acoustic speed (near field, both directions) | ±a₀ | ±a₀ | 13–16 |
| Dominant time scale τ (a.t.u. = d/a₀) | 1.1 | 2.2 | 16–18 |
| St = f d/a₀ | 0.91 | 0.45 | 18 |
| St_j = f d_j/U_j | ≈ 0.80 (mine) | 0.39 (paper; exp. 0.385) | 18 |
| λ_s (shear layer) | ≈ 0.85d | ≈ 1.7d | 20–21 |
| λ_a (near-field sound) | ≈ 1d | ≈ 2d | 20–21 |
| Main acoustic source (radius from axis, near wall) | 0.8d | 1.1d | 9, 12 |
| Powell N + p = h f (1/V_s + 1/a₀) | ≈ 4.2 (mine) | ≈ 5.2 (mine) | — |

> My conversions: isentropic M_j = 1.45 with T₀ = T∞ gives d_j/d = 1.070 and U_j/a₀ = 1.217, so St_j = 0.879 St. The Powell estimate assumes the convective and acoustic paths both equal h and ignores the source's radial offset (which lengthens the acoustic path by < 1%). If N = 4 and 5, p ≈ +0.2 in both cases; for comparison Henderson et al. give N + p ≈ 4.4 (h/d 2.02, NPR 4.03).

**Most unstable St from local LSA** (Fig. 18, read from figure; h = 2d / h = 5d): x = 0.1: 4.1 / 3.7; 0.2: 2.2 / 2.1; 0.3: 1.6 / 1.4; 0.4: 1.2 / 1.15; 0.5: 1.0 / 0.95; 0.6: 0.8 / 0.85; 0.7: 0.65 / 0.7; 0.8: 0.55 / 0.6; 0.9: ≈ 0.45–0.5 / ≈ 0.5–0.55.

**Energy share by azimuthal mode** (Fig. 24, read from figure): m = 0: ≈ 60% (h = 2d), ≈ 65% (h = 5d); m = 1: ≈ 10%; m = 2: ≈ 6–7%; m = 3: ≈ 5%; m = 4–9: ≈ 1–3% each.

## Figures worth remembering
- **Fig. 2 (p. 5):** domain: infinite-lipped nozzle wall, impingement wall at h, 24d wide, non-reflecting radial outlets.
- **Fig. 4 (p. 10):** h = 2d density-gradient sequence: a vortex tracked through oblique shock, stand-off shock and wall jet, and the wave it launches at the wall travelling back to the nozzle wall.
- **Fig. 5 (p. 11):** h = 5d: two wall-region waves, a wave outside the shear layer from a vortex–oblique-shock interaction, and receptivity at the lip.
- **Fig. 6 (p. 13):** near-lip vorticity: one rolling-with-pairing and one rolling-without-pairing event.
- **Figs 7, 9 (p. 14, 16):** x–t diagrams: shear-layer u'_x at 0.77a₀; near-field p' at ±a₀ with reflections at the nozzle wall.
- **Figs 8, 10 (p. 15, 17):** St–k_x spectra: downstream KH branch at ω/k = 0.77, upstream branch at −1 in shear-layer pressure, ±1 in the near field.
- **Figs 11–12 (p. 17):** autocorrelation maps along the shear layer with τ = 1.1 and 2.2 marked.
- **Fig. 13 (p. 19):** random-part autocorrelations and integral time scales vs x.
- **Figs 14–15 (p. 20–21):** non-normalised zero-lag correlation maps with λ_a/2 and λ_s/2 marked.
- **Fig. 16 (p. 22):** non-tanh mean ū_x profiles at x = 0.1–0.9.
- **Figs 17–18 (p. 23):** spatial growth rates vs St and the most unstable St vs x for both h.
- **Fig. 20 (p. 25):** LES A(x, St) for m = 0 with the LSA most unstable St overlaid (red circles).
- **Fig. 24 (p. 28):** energy share by azimuthal mode, m = 0 dominant.

## Notation
- d: nozzle (hole) diameter; h: nozzle-to-wall distance; x: axial distance from the nozzle wall; r: radius; θ: azimuth; y: transverse coordinate in the plotted planes (−r < y < r).
- a₀: ambient sound speed; V_e = 0.912a₀: centreline exit velocity at the choked exit; U_j, a_j, d_j: ideally expanded velocity, sound speed and diameter; M_j = U_j/a_j = 1.45.
- St = f d/a₀ (the paper's default); St_j = f d_j/U_j (used to compare with experiment). Acoustic time unit = d/a₀.
- V_s, λ_s: shear-layer (hydrodynamic) wavepacket speed and wavelength; V_a, λ_a: acoustic; τ = λ/V.
- α = α_r + iα_i: complex axial wavenumber (−α_i spatial growth rate); ω: angular frequency; m: azimuthal mode number; k_x, k_s: axial wavenumbers in the k–ω spectra.
- ū_x, ρ̄, p̄, T̄: ensemble means; q′: fluctuations; u″_r: random (non-coherent) part; T_{u″r}: its integral time scale.
- C_{φχ}, ⟨C_{φχ}⟩: non-normalised and normalised zero-lag correlations; N_t: snapshots; N_θ: azimuthal grid points.
- E: Mach (Chu-type) energy norm; A(x, m, St): its radial integral across the shear layer; Ā(m), Υ(m): energy per mode and percentage share.
- δ_in: inlet profile thickness parameter (called momentum thickness).

## Relevance to this project
A Shock Lab group paper (Edgington-Mitchell co-author) from the Soria/Theofilis LES line, and the only impinging-jet LES in the library that targets the group's own experiment: the user's thesis case of NPR 3.4 with an infinite lip at z/D 5 ([weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md), Ch. 4, the JFM 862 paper). It is also the first stability analysis of an impinging-jet mean flow in the library, though only local, near-nozzle and m = 0.

**What it adds and how it fits other notes**
- **Tone frequency.** The h = 5d LES gives St_j 0.39 against the thesis's dominant toroidal tone 0.385 for the infinite lip, with m = 0 dominant (p. 18, 28). That is a reduced-Re (5 × 10⁴), laminar-inflow LES reproducing the measured tone to about 1%. The comparison is of a frequency only. The paper shows no spectrum, no amplitude, and no sign of the infinite lip's secondary helical tone (0.241) or the difference tone (0.144) measured in the thesis (thesis p. 70). Fig. 24's m = 1 share (≈ 10%) is not a test of that.
- **The h = 2d case has no experimental check here.** The thesis App. A case closest to it (NPR 3.4, z/D 2, thick lip) showed no dominant POD pair and a probably intermittent toroidal mode (thesis p. 151), while the LES has one clean time scale (St 0.91, St_j ≈ 0.80, my conversion). Whether the LES is too clean (laminar inflow, no inlet noise, Re 5 × 10⁴) or the cases differ (the thesis lip is a 15D cap, t/D 7, not an infinite wall) is open.
- **Convection speed.** 0.77a₀ = 0.63U_j (my arithmetic) agrees with the LES of [bogey-2017](bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets.md) (0.58–0.62u_j mean, p. 571) and with [ho-1981](ho-1981-dynamics-impinging-jet-feedback-phenomenon.md) (0.62U), but is well above the thesis PIV values: 0.44–0.48U_j from POD wavelength × tone at the same NPR 3.4 and z/D 5 (thesis p. 72), and 0.42–0.52U_j locally on the NPR 3.6 cylinder case (thesis p. 107, 131–134). The methods differ: the slope of the crest from the lip in an x–t diagram versus PIV over 0.75 < x/D < 2.6. This matters for the Powell-equation phase-lag debate on the impinging-jets topic page, where a 10% bias in u_c changes the inferred lag. My N + p ≈ 4.2 (2d) and 5.2 (5d) put p ≈ +0.2 if N = 4 and 5, close to Henderson's N + p ≈ 4.4 ([henderson-2002](henderson-2002-flow-structure-supersonic-impinging-jets.md)) but with the source timed only loosely.
- **Where the upstream wave is born.** The main source is where coherent structures hit the wall, 0.8d and 1.1d from the axis (p. 9, 12). That is between the vortex–wall source on the axis of [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (p. 14–15) and the wall-jet sources at 1.3d (Henderson's 2.6R) and 1.43D (the thesis shocklet, at NPR 3.6 on a cylinder; the paper cites it as NPR 3.4 and 1.4d, p. 12). The waves from vortex–oblique-shock and stand-off-shock interaction look like the leakage of [edgington-mitchell-2021](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) but are judged weaker. The source is located only by eye from cylindrical wavefronts, and the LES fields were not used for source attribution (surface pressure, dilatation budgets), which the impinging topic page lists as a way to separate leakage from vortex–wall impact.
- **Guided or free-stream closure.** The shear-layer upstream waves at about −a₀ (Figs 8b, 10b) are the same signature [bogey-2017](bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets.md) found inside the core, but the paper does not look inside the core and states that free-stream and guided waves cannot be told apart there (p. 16). Its introduction calls a guided mode in a supersonic core "unexpected" because the core is supersonic (p. 3). That is contradicted by [tam-1989](tam-1989-three-families-instability-waves-high-speed-jets.md), [tam-1990](tam-1990-theoretical-model-discrete-tone-impinging-jets.md), [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [nogueira-2024](nogueira-2024-guided-jet-waves.md): guided waves are waves of the whole jet, and their upstream group velocity does not need a subsonic core. The LES would settle the question for this configuration with a k_x split on the axis and a comparison of the tones with the guided-mode band (Nogueira 2024, eqs. 4.7–4.8). Neither is done.
- **Shock-like fronts.** The wide spread of wavelengths at the dominant St in near-field pressure, put down to sharp fronts (p. 15), fits the weak-shock upstream waves of [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) (M_s ≈ 1.07).
- **Frequency drop near the lip.** It contradicts Ho & Nosseir's collective interaction for this supersonic case ([ho-1981](ho-1981-dynamics-impinging-jet-feedback-phenomenon.md) inferred it from one near-lip spectrum, without visualisation) while confirming their observation that the structures settle at the loop frequency within about 1d (1.31d there). The replacement, a most-unstable frequency that falls as the layer thickens, is the classic picture of [michalke-1984](michalke-1984-survey-jet-instability-theory.md) (most amplified St falls as θ/R grows, p. 169–170). What is new is that it happens within 1d on a strongly non-parallel, shock-containing mean flow.

**Reading it critically**
- **The LSA cannot pick the tone.** The most unstable St falls continuously with x and is the same for both h (Fig. 18), yet the tones differ by a factor of two (0.91 and 0.45). The h = 5d tone matches the local most unstable St near x ≈ 0.9 and the h = 2d tone near x ≈ 0.5, so any tone between St ≈ 0.4 and 4 matches some station. The loop selects the frequency, as Michalke anticipated (feedback puts the natural frequency below the most amplified, michalke-1984 p. 194–196). This bears on the open question "What fixes the recurring St ≈ 0.25 and 0.39" on the impinging topic page: a local most-unstable frequency near the lip is not enough (my reading; the paper does not draw this conclusion).
- **The LSA–LES comparison is not like for like.** Fig. 20 compares the peak of local growth rate (LSA) with the St where accumulated energy A is largest (LES). Energy at x reflects growth integrated from the lip, which favours frequencies that grew earlier, so the LES peak should sit above the local most unstable St even if the LSA were exact. That alone could explain the "underprediction" the authors attribute to non-parallelism (my reading). The abstract and body also disagree on its sign (verify item 1).
- **Inflow and Reynolds number set the high-frequency end.** The lip-region physics (initial St ≈ 4, pairing or no pairing) depends on the laminar, unforced inflow and Re 5 × 10⁴. The authors cite Bogey & Bailly (2010) on this sensitivity (p. 3) but do not test it. If the printed profile is what was used, the true exit momentum thickness is ≈ 0.012d (my calculation, verify item 4), comparable to Bogey & Gojon's 0.008D.
- **Single-tone, stationary view.** Everything is averaged: autocorrelations, one bandpass at ±5%, Fourier transforms over the whole record (length not stated). The x–t diagrams at h = 5d show "a wide range of flow features" (p. 15), and pairing is intermittent (Fig. 6), but neither is quantified. There is no test of tone stability or switching over time.
- **Undocumented processing.** Record length, sampling rate, N_t, k–ω windowing, the LSA discretisation and boundary conditions, and whether Ê is formed from Fourier coefficients or by transforming E(t) are not given (verify item 7). Transforming E(t) would put energy at sum and difference frequencies.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Time-resolved only:** x–t diagrams, St–k_x spectra, autocorrelation time scales, the bandpass triple decomposition and the energy-norm St–x map all need time-resolved records. With long Photron TR-schlieren records, intensity along the lip line and along a line outside the jet gives the same x–t diagrams and St–k_x maps (sign of k separates the ±a₀ waves), and an St–x map of shear-layer intensity spectra from the lip to 1d would test the "frequency drop by spatial growth" directly in the lab.
- **SPOD instead of a bandpass:** the ±5% bandpass is a crude single-frequency reconstruction. SPOD of the TR schlieren or LES, then reconstruction of the tone and its harmonics, then Hilbert POD would give cycle-by-cycle amplitude and phase. That would turn the paper's averaged picture into the time-resolved one the user's pipeline targets: intermittency of pairing near the lip, wandering of the wall source between 0.8d and 1.1d, and whether h = 2d is really a single steady tone (the thesis App. A suggests intermittency).
- **Works on non-time-resolved PIV:** zero-lag reference-point correlation maps (eq. 3.1) need only simultaneous snapshots. For a single dominant tone they give the wavelength from the lobe spacing, as Bell et al. (2018) did for twin jets. The thesis PIV could give λ_s this way and cross-check the u_c discrepancy above. Local LSA needs only a mean flow: PIV means with a Crocco–Busemann density, or BOS density, would do. The authors' warning against tanh or vortex-sheet base flows near the nozzle (p. 26) applies to the group's guided-mode estimates for impinging jets.

**Modelling side and the PyFR staging LES**
- **Set-up lessons** for `Simulations/PyFR_Staging_Continuation/`:
  - Reduced Re (5 × 10⁴) and a laminar, unforced inflow still gave the measured impinging tone (St_j 0.39 vs 0.385). That is indirect support for the PyFR plan of Re_D ≈ 10⁵ with a laminar exit layer, though for an impinging loop, not free-jet A1/A2 staging.
  - Grid near the lip: high resolution at the sharp edge was needed to capture receptivity (p. 6); δr ≈ 0.002–0.003d there and ≤ 0.04d out to r = 4.5 for sound to St 5 (Fig. 3). These are useful targets for the PyFR mesh around the lip.
  - Lip geometry: the infinite-lip wall reflects sound back along the nozzle face (p. 9, 14–15). The PyFR nozzle exterior must match the experiment's, since the lip sets the impinging mode (thesis) and moves screech staging.
- **Analysis lessons:** the x–t diagram, St–k_x split at the lip line and r = 2, and zero-lag correlation maps are cheap diagnostics to compute from PyFR probe lines for A1 and A2. They would show the upstream waves' speed and whether they appear inside the core. A local LSA of the PyFR mean in the first diameter would show the same rapid fall of the most unstable St, and PSE or a global analysis would be needed for quantitative growth.
- **Rocket noise:** the dominant source is vortex impact in the wall-jet region at 1.6–2.2 jet radii, the laboratory analogue of plume–pad interaction ([lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)). But this is a cold, normal-plate, low-Re, tonal case, far from hot plumes on inclined deflectors.

**Items to verify against the PDF**
1. Abstract: LSA "overpredicts" the most unstable frequency (p. 1); §3.4.2: it "underpredicts" (p. 24). Fig. 20 shows the LSA St at the low-St edge of the LES energy for x ≥ 0.4.
2. Eqs. 2.6–2.7: the factor 3 and the −2(∂ū/∂r) d/dr term should be in f₁, not f₀, by my expansion of eq. 2.4.
3. Eq. 2.13: missing û_r ∂ρ̄/∂r term and the factor i on m û_θ/r.
4. Eq. 2.1: the printed profile's momentum thickness is ≈ 0.31δ_in ≈ 0.012d, not the stated 0.04d.
5. "0.7 jet exit velocity (0.77a₀)" (p. 9, 12, 25): 0.77a₀ = 0.84V_e = 0.63U_j. Also "0.28 characteristic time of the jet" for 0.26 a.t.u. (p. 9) equals 0.26/0.912, whereas 0.26 a.t.u. is 0.24 d/V_e.
6. λ_a/a₀ = 1.0 and 2.0 vs the stated common τ = 1.1 and 2.2 (p. 20–21).
7. How Ê in eq. 3.3 is formed (Fourier coefficients of the fluctuations, or the transform of E(t)) (p. 23–24).
8. Definition of Re = 5 × 10⁴ (velocity and density scales) (p. 5–6).
9. Values read from figures: Fig. 3 spacings (and the "0.05" tick on Fig. 3b), Fig. 13c time scales, Fig. 16 profiles, Figs 17–18, Fig. 20 bands, Fig. 24 shares.
10. Figs 16–17 legends list x = 0.1–0.4 and 0.6–0.9, without 0.5, but Fig. 18 has a point at x = 0.5.
11. Weightman et al. 2017b is cited as NPR 3.4 on a cylinder at h = 3.5d (p. 12); the thesis note gives NPR 3.6 for that case.

**Candidates for `/add-paper`:** Karami, Stegeman, Ooi, Theofilis & Soria 2020 (receptivity, JFM 889, A27); Karami et al. 2019 (ECNSS, Comput. Fluids 191); Gojon & Bogey 2017 (AIAA J. 55); Gojon, Bogey & Marsden 2015 (AIAA 2015-2210); Jaunet et al. 2019 (AIAA 2019-2769); Diebold & Elliott 2014 (AIAA 2014-3094); Brehm, Housman & Kiris 2016 (JFM 797); Winant & Browand 1974; Bogey & Bailly 2010 (JFM 663); Tam 1986 (JSV 105, excitation of instability waves by sound); Oberleithner, Rukes & Soria 2014 (JFM 757); Edgington-Mitchell 2019 review (IJA 18); Weightman et al. 2017a (AIAA 2017-3031, covered by the thesis note).
