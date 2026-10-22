---
key: "edgington-mitchell-2021-generation-screech-tones-shock-leakage"
title: "The generation of screech tones by shock leakage"
authors: ["Edgington-Mitchell, Daniel", "Weightman, Joel", "Lock, Samuel", "Kirby, Rhiannon", "Nair, Vineeth", "Soria, Julio", "Honnery, Damon"]
year: 2021
type: "article"
venue: "JFM 908, A46"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "908", "pages": "A46"}
doi: "10.1017/jfm.2020.945"
arxiv: ""
pdf: "screech/EdgingtonMitchell-EtAl_2021_The-Generation-Of-Screech-Tones-By-Shock-Leakage.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility (LTRAC Supersonic Jet, Gas Jet and SAJF anechoic facilities)"
data: ["schlieren-TR", "schlieren", "PIV", "microphones-far"]
methods: ["statistics", "PSD", "POD", "POD-pair", "wavenumber-filtering", "ray-tracing", "FTLE"]
flow: ["round-jet", "twin-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "shock-leakage", "shock-cells", "KH-wavepackets", "source-location", "directivity", "intermittency", "flapping", "helical", "coherent-structures"]
params: {"NPR": "2.10, 2.25, 3.4 (PIV and model); 2.25, 2.6, 2.8, 3.1 twin (schlieren)", "M_j": "1.09, 1.14, 1.45", "Re": "4.4–8.1×10⁵", "St": "0.67, 0.65, 0.30", "D": "15 mm (8 mm for far-field acoustics)", "t/D": "0.33", "s/D": "3.0 (twin jet)", "TR": "1 (T₀ ≈ 298 K)"}
topics: ["screech", "impinging-jets-and-edge-tones", "screech-staging-and-mode-switching"]
related: ["weightman-2019-sound-production-impinging-supersonic-jets", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "edgington-mitchell-2022-unifying-theory-jet-screech", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "nogueira-2024-guided-jet-waves", "raman-1998-supersonic-jet-screech-review", "tam-1986-bbsan-screech-relationship", "mancinelli-2019-screech-prediction-upstream-modes", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "nogueira-2021-absolute-instability-shock-containing-jets", "rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet"]
cites: ["bell-2018-coupled-underexpanded-supersonic-twin-jets", "bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "gojon-2018-oscillation-modes-screeching-jets", "jordan-2018-jet-flap-interaction-tones", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "mancinelli-2019-screech-prediction-upstream-modes", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren", "mitchell-2013-near-field-structure-underexpanded-elliptic-jets", "nogueira-2019-large-scale-streaky-structures-jets", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "powell-1992-oscillation-modes-choked-circular-jets", "raman-1998-supersonic-jet-screech-review", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "suzuki-2003-shock-leakage-vortex-laden-mixing-layer-screech", "taira-2017-modal-analysis-fluid-flows-overview", "tam-1986-bbsan-screech-relationship", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "tam-1995-supersonic-jet-noise", "tan-2017-broadband-velocity-fluctuations-screeching-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "weightman-2017-phase-lag-supersonic-jet-impingement", "weightman-2018-signatures-shear-layer-unsteadiness-pod", "weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet", "weightman-2019-sound-production-impinging-supersonic-jets"]
summary: "k<0-filtered 1 Mfps schlieren shows shock leakage in A2, B, twin-jet screech; ray tracing on POD-phase PIV: leaks at vortex saddles, cells 3–5, set by vortex strength"
---
# The generation of screech tones by shock leakage

- **Authors:** Daniel Edgington-Mitchell, Joel Weightman, Samuel Lock, Rhiannon Kirby, Vineeth Nair, Julio Soria, Damon Honnery. All are at Monash University (Dept of Mechanical and Aerospace Engineering) except Nair (IIT Bombay, Dept of Aerospace Engineering) (p. 1). The second author is the user.
- **Source:** J. Fluid Mech. 908, A46 (2021), doi:10.1017/jfm.2020.945, "© The Author(s), 2020". Received 15 Mar 2020, revised 15 Oct 2020, accepted 23 Oct 2020 (p. 1). Funded by ARC Discovery Project DP190102220 (p. 30). The conference precursor is Edgington-Mitchell, Weightman, Honnery & Soria (2018b), AIAA 2018-3147, "Sound production by shock leakage in supersonic jet screech" (p. 3, 31). Supplementary movies 1–6 (p. 14–23).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/EdgingtonMitchell-EtAl_2021_The-Generation-Of-Screech-Tones-By-Shock-Leakage.pdf` (33 pp., publisher's version). Page refs are the journal pages A46-n, which equal the PDF page numbers. Tables 1–2, eqs. 2.1–2.13 and Figs 2–4, 9, 11–14, 16–18 were checked against rendered pages.
- **Tags:** screech, shock leakage, shock–vortex interaction, sonic line, total internal reflection, saddle point, geometrical acoustics, ray tracing (Shariff & Manning 2013), eikonal, finite-time Lyapunov exponent (FTLE), Lagrangian coherent structures (LCS), POD phase reconstruction, POD-pair amplitude scatter, ultra-high-speed schlieren, upstream-wavenumber (k < 0) Fourier filtering, colour schlieren, A1/A2 (toroidal), B (flapping), C (helical), twin jet, screech directivity (Norum 1983), distributed vs single source, sharp (shock-like) acoustic wavefronts

## Summary
The paper gives direct experimental evidence for the shock-leakage mechanism of Manning & Lele, in which a shear-layer vortex lets the tip of a shock cell escape past the sonic line and become an upstream-propagating acoustic wave (p. 1–3). Ultra-high-speed schlieren at about 1 Mfps, Fourier-filtered to keep only components with negative streamwise wavenumber, shows the shock tip moving upstream and then emitting a wave. This is seen in a twin jet with a fixed flapping plane (NPR 3.1), a single flapping B-mode jet (NPR 2.6, 2.8) and, less clearly, an A2 (m = 0) jet (NPR 2.25) (p. 13–19). The ray-tracing model of Shariff & Manning (2013) is then run on POD phase-reconstructed PIV of A1 (NPR 2.10), A2 (2.25) and C (3.4) jets. It puts the first leakage at the 3rd shock cell for A1 and C and the 4th for A2, at saddle points between vortices rather than at the peak of wave amplitude or vorticity fluctuation, with waves from several cells (p. 19–28). Rescaling the reconstruction to the ±2σ spread of the POD-pair amplitude moves the first leakage site by about one shock cell either way, which explains the 3rd–5th cell scatter seen in the schlieren (p. 28–30). A single leakage source already radiates anisotropically, with wavefronts lining up with Norum's 160° peak directivity, so the authors argue phased superposition of many sources is not needed for the directivity (p. 21–23). The paper does not test whether the leaked waves close the feedback loop.

## Key findings
- **Shock leakage seen directly** (§3, p. 13–19):
  - *Twin jet* (s/D = 3.0, NPR 3.1, fixed flapping plane; Fig. 6, p. 13–14). A large KH vortex arrives just upstream of the 5th shock. The outer part of the shock tilts upstream as the vortex front arrives, then extends radially well past its quasi-steady position. A small arc of the shock tip separates and propagates away while the shock inside the jet stops moving upstream. The sharp front then travels back upstream, while the opposite side starts tilting in preparation for its own event (p. 13). Three separate events in both jets in one sequence (Fig. 7, p. 14–15). In the twin jet, leakage is seen at every shock cell in frame, but wave strength varies from sequence to sequence (p. 19).
  - *Single flapping B mode*: colour schlieren at NPR 2.6 shows a sharp wavefront whose fitted circle centres on the tip of the 4th shock cell at its greatest radial extension (Fig. 1, p. 4–5). At NPR 2.8, with flapping almost normal to the view, the 4th shock cell emits a strong upstream wave (Fig. 8, p. 14, 16).
  - *A2 (m = 0)*, NPR 2.25: leakage at the 4th shock cell (Fig. 9, p. 14–17) and at the 3rd and 4th, top and bottom, in another sequence (Fig. 10, p. 16–18). It is much harder to see: the wavefront forms around the whole azimuth, so the path-integrated image smears it quickly (p. 16).
- **What the shocks do** (p. 18–19):
  - With a toroidal vortex the whole shock moves upstream first, more so at larger radius (consistent with Panda 1998 and André et al. 2012).
  - With a flapping vortex the first few cells translate radially and rotate. Further downstream the conical shock "does not really exist in an instantaneous sense": shocks form, split, translate and dissipate as vortices pass.
  - In both cases a small section of the shock tip separates, spreads cylindrically and decays as it expands. The vortex leaves the tip beyond the sonic line, so once it moves on that part must propagate upstream (Manning & Lele 2000).
- **Leakage is stochastic and intermittent** (p. 19): in the m = 0 jet, leakage appears sometimes at the 3rd shock cell, sometimes the 4th, sometimes the 5th, sometimes all three, and sometimes more strongly on one side (supplementary movie 5). The authors caution that absence in a visualisation is not proof of absence.
- **Shock-like from inception** (p. 3–4, 18–19): leakage makes waves that are sharp from birth, rather than steepening nonlinearly as Raman (1998) suggested for planar jets. Smooth sinusoidal fronts in earlier axisymmetric images (Seiner 1984) are put down to phase-averaging jitter and path integration (p. 3–4).
- **Model reproduces the shock pattern best at NPR 3.4** (Fig. 11, p. 19–20): ray streaks match the shock reflection points at the sonic line for the first three cells and fairly well at the 4th. The match is poorer at NPR 2.10 and 2.25, where much of the compression is through near-isentropic compression waves rather than discrete shocks (Fig. 12, p. 19–21).
- **First leakage site from the model** (mean POD amplitude; p. 19–20, 23, 26):
  - NPR 2.10 (A1): 3rd shock cell, x/D ≈ 1.8. In the phase sequence, leakage starts at x/D ≈ 1.9 and the wave is back at x/D ≈ 1.4 two-thirds of a cycle later (Fig. 15, p. 23, 25).
  - NPR 2.25 (A2): 4th shock cell, x/D ≈ 3.0. The front forms at x/D ≈ 3 and is at x/D ≈ 2.5 a third of a cycle later, resembling the schlieren of Fig. 9(c) (Fig. 14, p. 23–24).
  - NPR 3.4 (C): 3rd shock cell (red arrows in Fig. 11 at x/D ≈ 4.3, read from figure). Leakage from the 4th reflection point appears in a movie, but with few particles. The strongest waves from further downstream come from a ray that represents an expansion fan, not a shock (p. 19).
- **Mechanism in the model** (Fig. 16, p. 23, 26–27): a ray that reaches the shear layer with a vortex is rotated back into the core (total internal reflection). A ray that reaches it at the saddle point between vortices, where vorticity is lowest, can leak past the sonic line if the vorticity fluctuation is strong enough, and then travels upstream. The vortex drives the upstream translation of the shock, but emission waits until the saddle point arrives, i.e. after the vortex is well past the shock, as in the schlieren (p. 26).
- **Not at the peak of the wavepacket or the vorticity** (Fig. 17, p. 26–28):
  - Coherent vorticity fluctuations are much weaker at NPR 2.25 than at NPR 2.10 or 3.4, and there leakage is pushed to the 4th cell.
  - At NPR 2.25 leakage occurs well downstream of the vorticity-fluctuation maximum. At NPR 3.4 the first leak coincides with the maximum. At NPR 2.10 the peak is slightly lower at the leak point but the radial integral is near its maximum (p. 26).
  - This revises the group's earlier claim (Edgington-Mitchell et al. 2014c) that leakage occurs where coherent vorticity fluctuations peak (p. 26). Suzuki & Lele's two parameters (incidence angle, local vorticity strength) both matter. At NPR 2.25 the weakened vorticity at the 3rd reflection cannot release a ray, but it rotates the ray enough that it leaks at the 4th (p. 26–28).
- **Many sources** (p. 20, 28): vorticity fluctuations decay slowly compared with the shock spacing and shocks persist for many diameters, so leakage must occur at several stations. The model probably under-predicts this because streaks blur after many reflections (p. 28).
- **Vortex strength sets the first leakage site** (Fig. 18, p. 28–30):
  - The POD-pair radius r = √(a₁² + a₂²) is roughly normally distributed, so reconstructions scaled to r̄ ± 2σ cover 95% of snapshots (p. 29).
  - NPR 2.25: weak vortices (r̄ − 2σ) give most leakage at about the 6th cell, with small events at the 4th and 5th. Average vortices give the 4th. Strong vortices (r̄ + 2σ) give about the 3rd (p. 29–30). The schlieren shows first leakage between the 3rd and 5th cells, which the authors call surprisingly good agreement (p. 30).
  - Because KH wavepackets are modulated by turbulence and possibly by streaks (Nogueira et al. 2019), the authors expect a varying source location to be "the rule rather than the exception" (p. 30).
- **Directivity** (Figs 2 and 13, p. 5–6, 21–23):
  - Far-field spectra (50D, φ = 60°, 90°, 120°): at NPR 3.4 the fundamental strengthens upstream, has a minimum at 90°, and the first harmonic peaks at 90°, as Norum (1983) found for m = 1 modes. At NPR 2.25 the upstream increase is much weaker and there is no 90° minimum (p. 6).
  - In the model, waves from the strongest (first) leakage site travel mainly upstream. Lines at φ = 160° (Norum's peak) bisect the largest coherent groups of escaped rays for both NPR 2.10 and 2.25 (p. 21–23).
  - The authors conclude that the source is not isotropic, so superposition of many sources is not *needed* for the observed directivity, although several sources exist and superposition may still contribute (p. 23). They stress that the model is linear, the shocks are infinitesimal and no amplitude is computed (p. 21).
  - The model shows no qualitative m = 0 vs m = 1 difference that could explain the directivity difference in Fig. 2, but it is planar (p. 23).
- **Synchronisation of sources left open** (p. 20): some schlieren sequences show waves from downstream sources synchronising with upstream ones, as in Powell's model, but the model's shock spacing does not exactly match the flow's, so the authors draw no conclusion. The spacing between successive waves from one source equals the acoustic wavelength, but that only checks the model, since f_s was used to build it (p. 20–21).

## Setup / method
- **Facilities** (p. 4–6): Shock Lab group facilities, which the paper calls the LTRAC Supersonic Jet Facility (all schlieren; NPR 3.4 PIV), the LTRAC Gas Jet Facility (NPR 2.10 and 2.25 PIV; Perspex walls 60D from the centreline) and the LTRAC Supersonic Anechoic Jet Facility (far-field acoustics; called both "SJAF", p. 5, and "SAJF", p. 6). The paper does not name the lab space. The optical facilities have many hard reflecting surfaces and are "in no way" anechoic (p. 4).
  - Dry air, T₀ ≈ 298 K, regulated to 1% by a Fairchild 100; plenum pressure from an RS-461 transducer, ±0.25% (p. 4).
- **Nozzle** (p. 4): one nozzle "for all measurements": purely converging, D = 15 mm, radius of curvature 67.15 mm, 5 mm parallel exit section, external lip 5 mm (t/D = 0.33), contraction ratio over 100:1, so a very thin, probably laminar exit boundary layer. It is the nozzle of [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md). The anechoic rig has a smaller nozzle (D = 8 mm) with a lower contraction ratio and perhaps a thicker boundary layer (p. 5). The twin-jet nozzles are not described.
- **Conditions** (Table 1, p. 6): NPR = p₀/p∞; M_j from isentropic expansion; Re = U_j ρ_j D_j/μ; St uses ideally expanded conditions (printed as "St = f_s U_j/D_j", which must mean f_s D_j/U_j). Strouhal numbers are slightly corrected from Edgington-Mitchell et al. 2018a (p. 6). Extra schlieren cases: B mode at NPR 2.6 and 2.8, twin jet at s/D = 3.0 and NPR 3.1 (p. 4, 13–14).
- **Acoustics** (p. 5–6): G.R.A.S. 46BE 1/4" microphone, NI DAQ at 250 kHz, 50D from the exit, φ = 60°, 90°, 120° from the downstream axis. Record length and spectral parameters are not stated. The rig cannot reach Norum's extreme upstream angles (p. 6).
- **Schlieren** (p. 6–7, 10):
  - Z-type Toepler system, mirrors f = 2032 mm (Mitchell, Honnery & Soria 2012).
  - High-speed: Shimadzu HPV-1, 312 × 260 px, 250 ns exposure, Metz Mecablitz flash, razor-blade cutoff for ∂ρ/∂x, so I(x, y) ∝ ∫ ∂ρ/∂x dz. Run "at the limit of its capacity at one million frames per second", where signal-to-noise is poor (p. 10). The figure sequences show frames 8 µs apart (Figs 6, 8–10) or 10–20 µs apart (Fig. 7). The number of frames per sequence is not stated; the thesis note gives at most 102 frames for this camera.
  - Colour: pulsed white LED (Willert, Mitchell & Soria 2012), four-colour mask and iris cutoff, so colour encodes gradient direction (Fig. 1).
  - Sensitivity trade-off: resolving the weak acoustic waves saturates the image on the downstream hydrodynamic structures (p. 10).
- **Upstream filtering of schlieren** (eqs. 2.7–2.8, p. 10): 2-D Fourier transform of I(x, y, t) in x and t at each y; keep k < 0 at the screech frequency and invert. No window, padding or frequency bandwidth is stated. This needs time-resolved data, but only over the short HPV-1 record.
- **PIV** (Table 2, p. 7): not time-resolved (1–2 Hz). A modes (NPR 2.10, 2.25): Gas Jet Facility, data from Edgington-Mitchell et al. 2018a. C mode (NPR 3.4): Supersonic Jet Facility, data from Edgington-Mitchell et al. 2014c and Tan et al. 2017. 600 nm smoke, multigrid cross-correlation (Soria 1996). Snapshot counts and the velocity components used in the POD are not stated (the 2020 note gives 9,000 and 8,000 snapshots and transverse-only POD for the same data).
- **POD phase reconstruction** (§2.2, p. 7–9):
  - Triple decomposition u = U + u^c + u″ (Hussain & Reynolds 1970).
  - Snapshot POD; the leading pair forms a ring in the JPDF of (a₁, a₂)/⟨r_m⟩, with a Lissajous mean-radius curve, which marks a travelling wave (Fig. 4). NPR 2.10 and 2.25 pairs are symmetric; NPR 3.4 is antisymmetric (helical) (Fig. 4, read from figure).
  - Phase from a₁ − i a₂ = â e^{−iω_s t} (Oberleithner et al. 2011; Jaunet et al. 2016). The scatter of the radius about its mean is read as variation in vortex strength between snapshots (Weightman et al. 2018) (p. 9, 29).
  - Needs only non-time-resolved data, plus the tone frequency to map phase to time; assumes a single steady tone represented by one pair.
- **FTLE / LCS** (§2.3, p. 10–11): backward-time FTLE (attracting LCS, which mark the shear layer and the saddle points between vortices), following Premchand et al. (2019) and Haller (2015), with integration time T = 1.5/f_s on the time-periodic reconstructed field. Needs a time-resolved or periodic velocity field.
- **Geometrical-acoustics shock-leakage model** (§2.4–2.5, p. 11–13): the shocks are treated as standing acoustic waves (Manning & Lele 2000), and rays are shown as streaks of continuously injected particles (Shariff & Manning 2013).
  1. Reconstruct the screech cycle at 2000 phases (0.18° steps) from the POD pair at the mean radius.
  2. Smooth with a 3 × 3 Gaussian kernel.
  3. At each step inject particles on the centreline of the first shock cell, with wave angle θ_k = tan⁻¹(k₂/k₁) set to the local Mach angle.
  4. Advance all particles with eqs. 2.12–2.13.
  5. Repeat over 20 cycles, which gives 40,000 particles per case.
  - Assumptions and caveats stated by the authors (p. 12–13):
    - Constant sound speed: the ∂c/∂x term is dropped because PIV has no temperature. Attempts to model the temperature from PIV made the spurious effect of the shocks worse.
    - The reconstructed fields already contain shocks, which steer the rays in ways the model never intended.
    - Planar 2-D model on planar data. For NPR 3.4 (m = 1) the significant azimuthal velocity is missing; a cylindrical formulation would be more appropriate. Planar was kept for comparison with Shariff & Manning.
    - Wave energy and amplitude are ignored.
    - The model is sensitive to small variations in the data, so symmetry about the centreline was enforced by mirroring the NPR 2.10 and 2.25 fields. This reduces spurious streaks without changing any result.
    - Velocity is set to zero where there are no data (x/D ≤ 0, |y|/D ≥ 1.5), and the model knows nothing of the nozzle and flange (p. 20).
    - Fig. 11 removes particles with too few neighbours, for clarity (p. 19).
  - So the predictive power is "obviously limited", but the model agrees well with the visualisations (p. 13).
- **Modelling and simulation context** (p. 2–3): Manning & Lele (1998) DNS of a single oblique shock and instability waves in a finite-thickness shear layer showed a cylindrical wave from the shock tip, whose tip moves on a circular path with the vortex's sense of rotation and "leaks" past the sonic line. A near-isentropic compression toy problem behaved the same, but one interaction was not as directional as experiment. Manning & Lele (2000) simplified this step by step, keeping the mechanism each time:
  - linearised Euler with the shock as a boundary condition, which agreed quantitatively on wave amplitude;
  - a Gaussian wave in place of the shock;
  - a Stuart-vortex mixing layer as the base flow;
  - geometrical acoustics. When vorticity is strong the wavefront normal is rotated back into the core, like total internal reflection, and leaking needs a strong enough perturbation.

  Suzuki & Lele (2003) found, with DNS and the eikonal equation, that leakage depends on the incidence angle at the shear layer and on the vorticity strength at the reflection point, and occurs at the vorticity minimum (saddle point) between vortices. Shariff & Manning (2013) extended the ray model and found that a strong vortex leaks at the first reflection while moderate vortex trains need several reflections, with strong upstream directivity from one source. Berland, Bogey & Bailly (2007) saw leakage in LES of a planar jet (p. 3, 10, 21, 26). No new LES, DNS or stability analysis is done here.

## Key equations
Checked against rendered pages 7–12.

- **Triple decomposition** (eq. 2.1, p. 7): $\mathbf u(\mathbf x,t)=\mathbf U(\mathbf x)+\mathbf u^c(\mathbf x,t)+\mathbf u''(\mathbf x,t)$.
- **Snapshot POD** (eqs. 2.2–2.5, p. 8): $\mathbf R=\mathbf V^{T}\mathbf V$, $\mathbf R\mathbf v=\lambda\mathbf v$, $\boldsymbol\phi_n=\mathbf V\mathbf v_n/\lVert\mathbf V\mathbf v_n\rVert$, $\mathbf a_n=\mathbf v_n\lVert\mathbf V\mathbf v_n\rVert$.
- **Coherent field and phase** (eq. 2.6, p. 9): $\mathbf u_c(\mathbf x,t)=\sum_{n=1}^{2}\boldsymbol\phi_n(\mathbf x)\,a_n^{T}(t)$, with $a_1-\mathrm i a_2=\hat a\,e^{-\mathrm i\omega_s t}$. Pair amplitude $r=\sqrt{a_1^2+a_2^2}$; Fig. 18 scales the reconstruction by $\bar r\pm2\sigma$ (p. 29).
- **Upstream filter for schlieren** (eqs. 2.7–2.8, p. 10):
  $$I(x,y,t)=\sum_k\sum_\omega \hat I_{k,\omega}\,e^{\mathrm ikx}e^{-\mathrm i\omega t},\qquad I^{-}(x,y,t)=\hat a\,e^{-\mathrm i\omega_s t}\sum_{k<0}\hat I_{k,\omega_s}e^{\mathrm ikx}$$
  The paper writes the left side of eq. 2.8 as I(x, y, t); the superscript is added here.
- **FTLE** (eqs. 2.9–2.10, p. 10–11):
  $$\sigma_{t_0}^{T}(\mathbf x_0,t_0)=\frac{1}{|T|}\ln\sqrt{\lambda_{max}\big(C_{t_0}^{t}(\mathbf x_0,t_0)\big)},\qquad C_{t_0}^{t}=\big[\nabla F_{t_0}^{t}(\mathbf x_0)\big]^{\mathsf T}\nabla F_{t_0}^{t}(\mathbf x_0),$$
  with flow map $F_{t_0}^{t}:=\mathbf x(t:t_0,\mathbf x_0)$ and $T=t_0-t=1.5/f_s$ (backward in time).
- **Ray tracing** (eqs. 2.11–2.13, p. 11–12):
  $$\frac{\mathrm dx_i}{\mathrm dt}=\frac{\partial\omega}{\partial k_i},\quad \frac{\mathrm dk_i}{\mathrm dt}=-\frac{\partial\omega}{\partial x_i};\qquad \frac{\mathrm dx_i}{\mathrm dt}=V_i+\frac{k_i\,c(\mathbf x,t)}{|\mathbf k|},\quad \frac{\mathrm dk_i}{\mathrm dt}=-k_j\frac{\partial V_j}{\partial x_i}-|\mathbf k|\frac{\partial c(\mathbf x,t)}{\partial x_i}$$
  Check (mine): eqs. 2.12–2.13 follow from 2.11 with the Doppler-shifted dispersion relation ω = V·k + c|k|. The second term of 2.13 is dropped here (constant c). This printed form confirms that the thesis's eq. 6.10 sign and index order were typos (thesis note, verify item 9).
- **Initial ray angle** (p. 12): θ_k = tan⁻¹(k₂/k₁) "set to the local Mach angle" μ = sin⁻¹(1/M).

> To verify against the PDF: whether θ_k (the angle of the **wavevector**) is set to μ or to 90° − μ. An oblique shock front lies at about μ to the flow, so its normal is at 90° − μ = cos⁻¹(1/M). The thesis note flags the same arcsin/arccos ambiguity (verify item 9).

## Data tables
**Jet conditions** (Table 1, p. 6):

| NPR | M_j | Re | St | Screech mode |
|---|---|---|---|---|
| 2.1 | 1.09 | 4.4 × 10⁵ | 0.67 | A1 |
| 2.25 | 1.14 | 5.2 × 10⁵ | 0.65 | A2 |
| 3.4 | 1.45 | 8.1 × 10⁵ | 0.30 | C |

> The same PIV datasets are listed in the 2020 note (arXiv version of JFM 913 A7) with Re 4.7 × 10⁵ at NPR 2.25 and **St 0.26** and Re 8.6 × 10⁵ at NPR 3.40. The St 0.30 vs 0.26 difference is about 15%. Check which is right, against the published JFM 913 and Edgington-Mitchell et al. 2014c, before quoting the C-mode tone.

**PIV parameters** (Table 2, p. 7):

| Screech mode | IW₁ | Δx | Z | FOV | Sample rate |
|---|---|---|---|---|---|
| A (NPR 2.10, 2.25) | 0.03D | 0.01D | 0.04D | 5.7D × 3.8D | 2 Hz |
| C (NPR 3.4) | 0.03D | 0.01D | 0.1D | 10.0D × 2.2D | 1 Hz |

IW₁: final interrogation window; Δx: vector spacing; Z: light-sheet thickness or depth of field. Figs 3–4 show the C-mode field only to x/D ≈ 6.5.

**Where leakage is first seen** (text and figures as cited):

| Case | Mode | Evidence | First leakage | x/D | Page |
|---|---|---|---|---|---|
| NPR 2.10 | A1 (m = 0) | model, mean amplitude | 3rd shock cell | ≈ 1.8 (start ≈ 1.9) | 20, 23 |
| NPR 2.25 | A2 (m = 0) | model, mean amplitude | 4th | ≈ 3.0 | 20, 23 |
| NPR 2.25 | A2 | model, r̄ − 2σ / r̄ / r̄ + 2σ | ≈ 6th / 4th / ≈ 3rd | ≈ 4.0 / 3.0 / 2.4 (read from Fig. 18) | 29–30 |
| NPR 2.25 | A2 | schlieren | 3rd, 4th, 5th or all three | — | 16–19, 28 |
| NPR 3.4 | C (m = 1) | model | 3rd (4th weakly) | ≈ 4.3 (read from Fig. 11) | 19–20 |
| NPR 2.6 | B (flapping) | colour schlieren | tip of 4th cell | — | 4–5 |
| NPR 2.8 | B | schlieren | 4th | — | 14 |
| Twin, s/D 3.0, NPR 3.1 | flapping | schlieren | 5th shown; every cell in frame | — | 13, 19 |

**Far-field tone levels** (Fig. 2, p. 6; read from figure, D = 8 mm anechoic rig, 50D, dB/St):

| NPR | Fundamental St | φ = 60° | φ = 90° | φ = 120° | Notes |
|---|---|---|---|---|---|
| 2.25 | ≈ 0.64 | ≈ 133 | ≈ 137 | ≈ 139 | weak upstream increase; harmonic (St ≈ 1.29) seen at 90° |
| 3.40 | ≈ 0.33 | ≈ 147 | ≈ 136 | ≈ 154 | minimum at 90°; first harmonic (St ≈ 0.66) ≈ 158 at 90° |

## Figures worth remembering
- **Fig. 1 (p. 5):** colour schlieren of a B-mode jet at NPR 2.6, with a circle fitted to a sharp wavefront that centres on the tip of the 4th shock cell.
- **Fig. 2 (p. 6):** far-field spectra at 60°, 90° and 120° for NPR 2.25 and 3.40; the m = 1 directivity pattern at 3.40.
- **Fig. 3 (p. 8):** mean axial velocity for the three PIV cases.
- **Fig. 4 (p. 9):** leading POD pair (axial velocity) and the JPDF ring of the coefficients for each case; the scatter about the ring is the vortex-strength variation used in §5.
- **Fig. 6 (p. 14):** twin jet, raw and k < 0 filtered schlieren every 8 µs: shock tilts, extends and releases a front. The clearest visual of the mechanism.
- **Fig. 7 (p. 15):** three separate leakage events tracked in one twin-jet sequence.
- **Fig. 9 (p. 17):** A2 jet at NPR 2.25: raw, filtered and zoomed with a schematic of the emerging front at the 4th cell.
- **Fig. 10 (p. 18):** A2 leakage at the 3rd and 4th cells on both sides of the jet.
- **Fig. 11 (p. 20):** NPR 3.4 rays over U + u^c: leakage at the 3rd shock cell and the upstream wave from the opposite side.
- **Fig. 12 (p. 21):** first leakage site for NPR 2.10 and 2.25.
- **Fig. 13 (p. 22):** model wave field over −5 ≤ x/D ≤ 5, with Norum's 160° lines bisecting the strongest upstream waves.
- **Figs 14–15 (p. 24–25):** three phases (120° apart) of rays over FTLE for NPR 2.25 and 2.10.
- **Fig. 16 (p. 27):** close-up at the 4th cell, NPR 2.25: one particle reflected by a vortex (green), one leaking through a saddle point (red), over coherent vorticity and FTLE contours.
- **Fig. 17 (p. 28):** coherent vorticity magnitude with the first leakage point marked, for all three cases.
- **Fig. 18 (p. 29):** NPR 2.25 first leakage site for r̄ − 2σ, r̄ and r̄ + 2σ reconstructions.

## Notation
- NPR = p₀/p∞; M_j, U_j, ρ_j, D_j: ideally expanded quantities; U_E: exit velocity; St = f_s D_j/U_j; Re = U_j ρ_j D_j/μ.
- φ: polar angle from the downstream axis (Norum's 160° peak is 20° from upstream).
- U, u^c, u″: mean, coherent and stochastic velocity; φ_n, a_n: POD modes and coefficients; â: complex amplitude; r, r̄, σ: pair radius, its mean and standard deviation; ⟨r_m⟩: mean radius.
- I: schlieren intensity ∝ ∫ ∂ρ/∂x dz; Î_{k,ω}: its (x, t) Fourier coefficients; k < 0: upstream phase velocity.
- σ_{t₀}^T: FTLE; C: right Cauchy–Green tensor; F: flow map; T = 1.5/f_s.
- x_i, k_i, V_i, c: ray position, wavevector, base-flow velocity and sound speed; θ_k: wavevector angle.
- ω_z^c: coherent out-of-plane vorticity.
- Screech stages: A1, A2 (toroidal, m = 0), B (flapping), C (helical, m = 1).
- LTRAC: Laboratory for Turbulence Research in Aerospace and Combustion; SJAF/SAJF: its supersonic anechoic jet facility.

## Relevance to this project
This is a Shock Lab group paper with the user as second author, and the free-jet companion to the shock-leakage chapter of his thesis, [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md) (Ch. 6, leakage at the impinging-jet stand-off shock). It is the group's main reference for *where and how* screech sound is emitted. The later group papers ask instead what closes the loop.

**Reading it critically**
- **"Generation of screech tones" means the radiated sound, not the loop.**
  - The paper treats tone generation as the "downstream-reflection" step of the loop (p. 2). It shows that leaked waves are born outside the shear layer and travel upstream as free-stream sound.
  - It never tests whether they close the loop: there is no phase, receptivity or frequency-selection analysis.
  - Its own introduction accepts that the upstream link is the guided jet mode ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); p. 2).
  - The later group view settles the reading. [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) (p. 20–22) calls leakage a correlated by-product of the KH–shock triad in round and low-AR jets. [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 31–32) shows that sound generated outside the core cannot become a guided mode, and leaves the split between loop and radiation open.
  - A detail that fits this reading (my comparison): for the same NPR 2.10 PIV dataset, the first leakage is at x/D ≈ 1.8 (3rd cell), while the guided-mode amplitude peaks near the 4th–5th cell ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) p. 6; [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md) p. 14–15). The two do not coincide.
- **The ray model already contains a guided-mode analogue** (my observation, not in the paper). Rays totally reflected at the sonic line stay trapped in the core (p. 2–3, 26). That is the geometrical-acoustics limit of the in-jet sound that Nogueira 2024 describes as the guided jet mode. So one shock–vortex interaction can feed both a trapped (guided) part and a leaked (radiated) part, which would reconcile this paper with the triadic picture. The model has no frequency selection or modal content, so this is only qualitative.
- **Model limits beyond those the authors list:**
  - Its scale-separation assumptions are violated (convective Mach ≈ 1; thesis note).
  - Expansion-fan rays "leak" as if they were compressions (p. 19).
  - The shocks are represented twice, by the injected rays and by the real shocks in the PIV field.
  - The NPR 3.4 helical case is the best match for shock positions but the least valid physically: the planar model omits the azimuthal velocity, and a helical source rotates around the jet.
  - The ±2σ test rescales a fixed mode shape. Real strong and weak cycles may also differ in shape, phase speed and shear-layer thickness, which is what the shear thickness mode in the thesis (Weightman et al. 2018) shows.
- **The schlieren filter is coarse** (my estimate). At 1 Mfps the HPV-1 records about 100 µs, about 1.5 periods at NPR 2.25 (f_s ≈ 15 kHz from St 0.65, U_j ≈ 350 m/s, D_j ≈ 15 mm). The temporal resolution (about 10 kHz) is then comparable to f_s, so eq. 2.8 is really a sign-of-phase-velocity filter. The filtered images keep sharp fronts, which a single frequency could not, so more than ω_s must have been kept. The number of frames and the windowing are not stated.
- **Directivity: two group explanations of the same Norum data.** Here a single anisotropic leakage source is enough (p. 23). In [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) (p. 20), a distributed Mach-wave-type source from the acoustically matched wavenumbers (wavy-wall analogy) gives the upstream/downstream balance. Both are qualitative, and neither predicts amplitude. The far-field data here come from a different nozzle (D = 8 mm) at only three angles, none near 160°.
- **Agreements and contradictions with other notes:**
  - *Source position.* First leakage at cells 3–4, and a 3rd–5th spread, is consistent with the best-fit 4th-cell reflection of [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) (p. 4–5) and with Raman's equivalent source at the 3rd cell for M_j 1.45 ([raman-1998](raman-1998-supersonic-jet-screech-review.md) p. 71–73). It contradicts placing the source at the peak of the instability wave ([tam-1986](tam-1986-bbsan-screech-relationship.md) p. 4), at least for NPR 2.25.
  - *Single vs distributed sources.* It gives a mechanism for Raman's unexplained single-source "feedback shock" with upstream directivity in high-AR rectangular jets (raman-1998 p. 70–73): leakage makes shock-like waves at birth with anisotropic radiation. It also shows that single-source localisations are an idealisation, since there are several sources and the first one wanders.
  - *Shock strength.* Leakage depends on vortex strength and incidence angle, not shock strength. This fits [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md) (p. 23) and Raman's finding that amplitude does not follow shock strength.
  - *Thesis (Ch. 6, App. C).* Same method on impinging jets, and the same 3rd–5th cell range for free jets (thesis p. 118). There are two tensions:
    - (1) Thesis App. C (p. 163) says leakage depends on a sufficiently positive sonic-line angle "rather than the saddle point"; this paper attributes it to saddle points (Fig. 16). The two may describe the same geometry, since the sonic line tilts most at the saddle.
    - (2) The thesis says leakage has no delay between vortex arrival and emission (p ≈ 0, thesis p. 122). Here emission waits until the saddle point reaches the shock, after the vortex has passed (p. 26). The phase lag of leakage therefore depends on how "arrival" is defined, which adds to the phase-lag definition problem on the impinging-jets topic page.
    - Implementation also differs: here rays are injected every step for 20 cycles (40,000 particles), with smoothing and mirroring; the thesis injected for one cycle and tracked for 9 more.
  - *Impinging jets* ([edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md)): impinging leakage "begins just after the large KH vortex passes, as in screech" (p. 18), which matches the timing here. Its split leaked front is new to impinging jets, and its M_s ≈ 1.07 weak shocks support this paper's claim that leaked waves are shock-like at birth. Its "unpublished" ray tracing on measured fields refers to impinging data; this paper is the published free-jet version.
  - *Twin jets.* s/D = 3.0 at NPR 3.1 sits in the antisymmetric-flapping coupling regime of [knast-2018](knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md) (NPR 3.0–3.3), which is why the flapping plane is fixed.
  - *Transient jets.* [rezay-haghdoost-2020](rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet.md) (p. 10–12) sees the same leakage end a triple point in a starting jet, and [thethy-2022](thethy-2022-shock-diffraction-non-quiescent-medium.md) cites this paper for shock–vortex sound.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Non-time-resolved PIV:** POD pair, then phase reconstruction (any number of phases), then FTLE and ray tracing. It needs one steady tone and a clean ring. Scaling the reconstruction to r̄ ± 2σ is a cheap way to probe cycle-to-cycle variation without time resolution, but it gives no timescale. Mirroring and smoothing were needed to keep the rays clean (p. 12–13).
- **Time-resolved schlieren:** the k < 0 filter isolates upstream waves that are much weaker than the hydrodynamic field. With long Photron SA-Z records, SPOD at f_s followed by a k_x split is the frequency-resolved version ([edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md)). But leakage is intermittent, sharp-fronted and wanders between cells, which block-averaged SPOD at one frequency smears. Keep the harmonics (BMD, [schmidt-2020-bispectral-mode-decomposition](schmidt-2020-bispectral-mode-decomposition.md)) if the front shape matters.
- **SPOD → reconstruction → Hilbert POD:** this is the time-resolved test of §5.
  1. Reconstruct the tone band (with harmonics) from SPOD ([nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)).
  2. Run HPOD in time ([raiola-2025](raiola-2025-hilbert-pod.md)) for the instantaneous KH amplitude of each cycle.
  3. Condition the upstream (k < 0) field, or the first leakage cell, on that amplitude.

  This replaces the static r̄ ± 2σ rescaling with the real distribution and its time correlation. It would also show whether the wandering source follows streak-like modulation (Nogueira et al. 2019; [nogueira-2019](nogueira-2019-large-scale-streaky-structures-jets.md)). Take the Hilbert transform in time, not along +x, which would discard the k < 0 waves.
- **FTLE** needs velocity, not schlieren: a time-resolved or reconstructed periodic field from TR-PIV, a POD/SPOD reconstruction or LES.

**Modelling side and the PyFR staging LES**
- The ray model needs a sound-speed field, which PIV lacks. Options are constant stagnation enthalpy (as the 2020 global analysis did for density), BOS-derived density ([tan-2015](tan-2015-bos-density-axisymmetric-jets.md)), or LES fields.
- The PyFR LES (`Simulations/PyFR_Staging_Continuation/`) runs A1 at NPR 2.10 and A2 at NPR 2.25, the same NPRs as here. It could:
  - (a) see leakage directly in dilatation fields and test whether the first leakage cell moves from the 3rd (A1) to the 4th (A2) on staging;
  - (b) run the ray model with the full ∂c/∂x term and an axisymmetric or 3-D formulation;
  - (c) correlate cycle-by-cycle leakage position and strength with KH amplitude and with the guided-mode amplitude near the lip, separating radiated sound from loop closure, the open question above.
- **Rocket noise:** leakage makes shock-like waves from shock–vortex interaction. That links to nonlinear near-field waves and to shock–vortex sources at deflectors and pads (impinging-jets topic; [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)). Screech itself is absent at full scale.

**Items to verify against the PDF**
1. Table 1 St 0.30 (NPR 3.4) vs St 0.26 in the 2020 note for the same dataset; Re at NPR 2.25 (5.2 vs 4.7 × 10⁵) and NPR 3.4 (8.1 vs 8.6 × 10⁵).
2. St definition printed as f_s U_j/D_j (p. 6).
3. Initial ray angle: wavevector at μ or at 90° − μ (p. 12).
4. Eq. 2.8 keeps only ω_s, yet the filtered images show sharp fronts. The number of frames, record length and any window are not stated (p. 10).
5. "The same nozzle was used for all measurements" (p. 4), yet the twin-jet case needs two nozzles; the Bell et al. 2018 and Knast et al. 2018 twin nozzles are D = 10 mm (knast-2018 note). The twin-jet geometry is not given.
6. Anechoic facility named SJAF (p. 5) and SAJF (p. 6). The Gas Jet Facility walls are 60D from the centreline here, but the thesis gives a cage 42D a side (thesis note).
7. "95% of coherent fluctuations will produce leakage between the third and the fifth cell" (p. 30), while the r̄ − 2σ case puts most leakage at about the 6th cell, with only small events at the 4th and 5th (p. 30).
8. Values read from figures: Fig. 2 levels and St, Fig. 11 leak at x/D ≈ 4.3, Fig. 18 positions.
9. POD variable and snapshot count are not stated here (axial velocity is plotted in Fig. 4); the C-mode FOV is 10.0D × 2.2D in Table 2 but plotted only to x/D ≈ 6.5.

**Candidates for `/add-paper`:** Suzuki & Lele 2003 (JFM 490, already in `Paper_PDFs/_Unprocessed/`); Shariff & Manning 2013 (Phys. Fluids 25, 076103); Manning & Lele 1998, 2000; Edgington-Mitchell et al. 2014c (helical mode, JFM 748, also in `_Unprocessed/`); Tan et al. 2017 (AIAA J. 55); Berland, Bogey & Bailly 2007; Panda 1998; André, Castelain & Bailly 2012; Norum 1983; Mercier, Castelain & Bailly 2017; Premchand et al. 2019 (FTLE); Edgington-Mitchell 2019 review.
