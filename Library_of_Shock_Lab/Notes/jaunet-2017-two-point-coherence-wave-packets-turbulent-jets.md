---
key: "jaunet-2017-two-point-coherence-wave-packets-turbulent-jets"
title: "Two-point coherence of wave packets in turbulent jets"
authors: ["Jaunet, V.", "Jordan, P.", "Cavalieri, A. V. G."]
year: 2017
type: "article"
venue: "Phys. Rev. Fluids 2, 024604"
bib: {"journal": "Physical Review Fluids", "volume": "2", "number": "2", "pages": "024604"}
doi: "10.1103/PhysRevFluids.2.024604"
arxiv: ""
pdf: "linear-models/Jaunet-EtAl_2017_Two-Point-Coherence-Of-Wave-Packets-In-Turbulent-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "PPrime Bruit et Vent"
data: ["PIV-TR", "PIV-stereo"]
methods: ["statistics", "PSD", "coherence", "symmetry-decomposition", "acoustic-analogy"]
flow: ["round-jet", "subsonic"]
phenomena: ["KH-wavepackets", "coherent-structures", "mixing-noise", "acoustic-efficiency"]
params: {"M_j": "0.4 (M = U_j/c)", "T_j/T_∞": "≈1 (isothermal)", "Re": "4.6×10⁵", "D": "50 mm", "St": "0.05–0.9", "x/D": "1–8 (plane pairs, Δx step 0.5D)", "r/D": "0.5 (bulk), 0.42 (m = 0)"}
topics: ["linear-models", "jet-noise-mechanisms"]
related: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "nogueira-2019-large-scale-streaky-structures-jets", "jordan-2013-wave-packets-turbulent-jet-noise", "schmidt-2018-spectral-analysis-jet-turbulence", "pickering-2020-lift-up-kh-orr-jets", "garnaud-2013-preferred-mode-incompressible-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "towne-2018-spod-relationship-dmd-resolvent", "wong-2019-coherence-decay-wavepacket-bbsan", "wong-2021-wavepacket-modelling-bbsan"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "garnaud-2013-preferred-mode-incompressible-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "jordan-2013-wave-packets-turbulent-jet-noise", "prasad-2000-stereoscopic-piv-review", "tam-1984-sound-instability-waves-supersonic-axisymmetric-jets", "willert-1997-stereoscopic-dpiv-wind-tunnel-flows"]
summary: "M 0.4 jet, dual-plane TR stereo PIV: |m|≤2 give <10% of bulk coherence; m=0 coherence length ≤1.9D (≈12δω) where linear theory works, eddy-like past the core"
---
# Two-point coherence of wave packets in turbulent jets

- **Authors:** V. Jaunet and P. Jordan (Institut PPRIME, CNRS / Université de Poitiers / ENSMA), A. V. G. Cavalieri (Instituto Tecnológico de Aeronáutica, São José dos Campos) (p. 1). Not Shock Lab group work.
- **Source:** Physical Review Fluids 2(2), 024604 (24 pp.), 2017, doi:10.1103/PhysRevFluids.2.024604. Received 4 Feb 2016, published 24 Feb 2017 (p. 1). Funded by the ANR project COOLJAZZ (p. 22).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-models/Jaunet-EtAl_2017_Two-Point-Coherence-Of-Wave-Packets-In-Turbulent-Jets.pdf` (index key `linear-models/Jaunet-EtAl_2017_Two-Point-Coherence-Of-Wave-Packets-In-Turbulent-Jets.pdf`, 24 pp., publisher's version). Page refs are article pages 024604-N, written "p. N"; PDF page = N. The file carries an owner password that blocks the Read tool, so the text came from `pdftotext`, and every equation and figure cited below was checked on pages rendered with `pdftoppm`.
- **Tags:** subsonic round jet, wavepackets, two-point coherence, magnitude-squared coherence, coherence length scale, azimuthal Fourier decomposition, two-ring coherence, cumulative coherence, energy-containing eddies, vorticity-thickness scaling, coherence asymmetry, phase velocity, dual-plane time-resolved stereo PIV, two-wavelength crosstalk suppression, Welch cross-spectra, linear-theory validity map, jitter, kinematic line-source model, acoustic matching

## Summary
The experiment was built to measure the two-point statistics that linear wavepacket models leave out, since linear modes have unit coherence by construction (p. 1–2). In the same isothermal M 0.4 jet as [Cavalieri 2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md), two synchronised time-resolved stereo PIV systems image two cross-planes. Each system moves independently, so every plane pair from x/D = 1 to 8 in 0.5D steps was acquired (p. 2–4). The azimuthal Fourier decomposition of u_x gives two-ring cross-spectra. A cumulative coherence shows that the acoustically important modes m = 0, ±1, ±2 make up less than 10% of the bulk two-point coherence, which is set by the energetic m ≈ 2–8 eddies (p. 9–10). Exponential fits of the magnitude-squared coherence give length scales L(x, St). For the energy-containing eddies, L ≈ 3δω, peaking at fδω/U_c = 0.07 (p. 11–12). For the m = 0 wavepacket, L is up to about 1.9D (≈ 12δω) inside the (x, St) region where linear stability theory works, and falls to eddy-like values with eddy-like δω scaling beyond the end of the potential core, where linear theory fails (p. 14–17). The wavepacket coherence is also asymmetric, decaying faster downstream (p. 17–19). The m = 0 phase speed exceeds that of the eddies for St ≲ 0.3, and near the nozzle it can exceed U_j (p. 20–21). A Cavalieri–Agarwal line-source model is used to argue that a higher phase speed alone makes a wavepacket a more efficient radiator (p. 18–20).

## Key findings
- **Validation** (Figs 3–6, p. 4–8).
  - Mean u_x at x/D = 2 matches the earlier PIV and Pitot data. The RMS peak is lower, about 0.13–0.14U_j against about 0.16U_j (read from Fig. 3), which the authors put down to the higher magnification of the earlier PIV (p. 4–5).
  - Inside the potential core the upstream system S1 reads higher RMS than S2: up to about 2.5% on the centreline near the nozzle (p. 5). The authors suspect S1's longer laser pulse or a sheet-thickness difference (p. 4). The two systems collapse outside the core and everywhere beyond x/D = 5, and across repeated runs (p. 5).
  - Lipline u_x energy against m (Fig. 5, r/D = 0.5): the peak moves from m ≈ 7–8 at x/D = 1 to m = 2 at x/D = 6–8, and its level rises from ≈ 0.2 to ≈ 2.5 × 10⁻³U_j² (read from figure). Rescaled as mδω/D, the peaks fall near 0.8–1.4 (read from Fig. 5b), so the dominant m follows the local vorticity thickness, as in Cavalieri 2013 with δ₂ (p. 5–7).
  - The m = 0 u_x PSD profiles at x/D = 2.5, St 0.4–0.7, match those of Cavalieri 2013, with the lipline kink near r/D ≈ 0.5. S1 is again high in the core (Fig. 6, p. 7–8).
- **Bulk coherence is not wavepacket coherence** (Figs 7–8, p. 9–10).
  - With all modes, the cumulative coherence Γ²_p equals the standard MSC, as it must (p. 9).
  - At x/D = 3, r/D = 0.5, the first three azimuthal modes (p = 2, i.e. m = 0, ±1, ±2) contribute "less than 10%" of the complete two-point coherence (p. 9). Read from Fig. 7 at Δx = 0: Γ²₂ ≈ 0.035 (St 0.2), 0.04 (0.4) and ≈ 0.02 (0.6), against γ² ≈ 0.95, 0.93 and 0.90. Γ²₅ ≈ 0.27, 0.26, 0.16 and 0.10 for St 0.2–0.8, and Γ²₁₅ ≈ 0.86, 0.82, 0.75 and 0.69.
  - *My reading of Fig. 7:* the "< 10%" holds at small separations only. At St 0.2, Γ²₂ stays near 0.02–0.03 out to Δx ≈ 3D while the total has fallen to ≈ 0.04, and p = 5 carries most of the total from Δx ≈ 1.5D on (≈ 0.11 of 0.14). The long-range coherence is therefore increasingly low-m.
  - *My derivation:* at Δx = 0, Γ²_p is the square of the energy fraction in |m| ≤ p, so Γ²₂ ≈ 0.035–0.04 means that m = 0, ±1, ±2 hold about 19–20% of the u_x PSD at St 0.2–0.4. This agrees in order with the ≈ 15% for the first three modes quoted by [Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md) (p. 180 there, citing Michalke & Fuchs).
  - The per-mode CSD at St 0.3, Δx = 0 (Fig. 8) peaks at mδω/D ≈ 1 at every x. The m = 0 value is of order 10⁻³ of the squared total, against peaks of ≈ 3–22 × 10⁻³ (read from figure; p. 9–10).
  - Implication drawn by the authors: source models built on bulk two-point statistics (the length-scale models of refs. 25, 26, 37–41) carry "much acoustically redundant information", because those statistics are set by eddies that are not acoustically matched (p. 9).
- **Energy-containing eddies (ECE)** (Figs 9–11, p. 11–13).
  - γ² of u_x at x/D = 3 decays as exp(−Δx/L). The fits give L/D = 0.73, 0.52, 0.28 and 0.15 at St 0.2, 0.4, 0.6 and 0.8 (Fig. 9). γ²(Δx = 0) ≈ 0.87–0.95 rather than 1, because of uncorrelated measurement noise between the two systems and slight misalignment, so the MSC is slightly under-estimated (p. 11).
  - L(St, x) has a peak St at each x, moving to lower St and larger L downstream (Fig. 10). The maximum is ≈ 1.5–2D at x/D ≈ 7, St ≲ 0.1 (read from colour map).
  - Scaled as L/δω against St_δω = fδω/U_c (U_c = 0.6U_j), the data collapse onto L/δω ≈ 3 for St_δω ≲ 0.1, with a peak of ≈ 3.2 near St_δω ≈ 0.05–0.07. L/δω falls to ≈ 1–1.5 at St_δω = 0.25. The x/D = 1.5–2.5 curves fall away faster above St_δω ≈ 0.1 (Fig. 11, read from figure).
  - The St_δω = 0.07 peak agrees with two-point LDV in single- and dual-stream, heated and isothermal jets (Kerhervé & Fitzpatrick 2006; Kerhervé et al. 2006). The eddies live about 3δω and convect at about 0.6U_j (p. 12).
  - Moving from r/D = 0.5 to 0.42 shortens the ECE L slightly: 0.73/0.73, 0.52/0.65, 0.28/0.37 and 0.15/0.22 (r/D = 0.42/0.5) at St 0.2–0.8 (Fig. 13, p. 13–14).
- **Axisymmetric wavepacket (m = 0, r/D = 0.42)** (Figs 12, 14–18, p. 12–17).
  - r/D = 0.42 lies outside the core, where S1 is noisy, and away from r/D = 0.5, where the m = 0 u_x amplitude has its minimum and phase jump (p. 12).
  - At x/D = 3 the fits give L/D = 0.92, 1.54, 0.84 and 0.26 at St 0.2, 0.4, 0.6 and 0.8 (Fig. 12), against 0.73, 0.52, 0.28 and 0.15 for the ECE. At St 0.4–0.6 the wavepacket is 3× as coherent as the eddies.
  - The L map (Fig. 14) peaks at ≈ 2D near x/D ≈ 2, St ≈ 0.4–0.45 (read from colour map), with a second high region at x/D ≈ 6–7, St ≲ 0.15. The peak St falls with x, as expected for high-frequency instability waves saturating upstream, but the peak L does not grow steadily with x as the ECE scale does (p. 14).
  - Direct comparison (Fig. 15, read from figure):

    | x/D | m = 0 peak L/D (at St) | Total (ECE) L/D at that St | ECE peak L/D (at St) |
    |---|---|---|---|
    | 2.0 | ≈ 1.9 (0.40–0.45) | ≈ 0.45 | ≈ 0.5 (≤ 0.3) |
    | 3.0 | ≈ 1.68 (≈ 0.37) | ≈ 0.6 | ≈ 0.75 (≈ 0.15) |
    | 4.0 | ≈ 1.36 (≈ 0.3) | ≈ 0.7 | ≈ 1.0 (≈ 0.15) |
    | 5.0 | ≈ 1.48 (≈ 0.15) | ≈ 1.2 | ≈ 1.22 (≈ 0.1) |

    Below St ≈ 0.25 at x/D = 2 and 3, the m = 0 and total L coincide.
  - Morris & Zaman (2010) found longer scales with a centreline probe than on the lipline. The authors reinterpret this: on the axis, u_x contains only m = 0, so the centreline probe "inadvertently" measured the wavepacket (p. 14).
  - **ΔL = L_WP − L_ECE against the linear-theory template** (Fig. 16, p. 14–16). The polygon marks where linear stability models describe the m = 0 wavepacket in this jet, built from Figs 15 and 26(b) of Cavalieri 2013. Read from the figure, its vertices are (x/D, St) ≈ (1.2, 0.7), (4.5, 0.7), (7, 0.3) and (2, 0.3). ΔL peaks at ≈ 1.5D near x/D ≈ 2, St ≈ 0.4–0.45. It is large inside the polygon and near zero outside it.
  - **Two families** (Figs 17–18, p. 16–17). Scaled with D and U_c, L does not collapse. The curves split into an upstream family (x/D < 5), peaking at St ≈ 0.3–0.5 with L/D up to ≈ 1.9, and a downstream family (x/D > 5), peaking at St ≲ 0.15 with L/D up to ≈ 2.2. Scaled as L/δω against St_δω (the ECE scaling), the downstream family collapses at L/δω ≈ 3–3.7, within the ECE range. The upstream family does not collapse. It reaches L/δω ≈ 13 (x/D = 1.5), 12 (2.0), 9.5 (2.5), 7 (3.0), 5.5 (3.5) and 4.5 (4.0) near St_δω ≈ 0.06–0.09 (read from Fig. 18a); the text says "up to 12 times the vorticity thickness" (p. 17).
  - Interpretation (p. 17): past the end of the potential core the wavepacket decoheres like the turbulence, which suggests significant nonlinear interaction between wavepackets and energetic eddies there. That is where linear models disagree with experiment.
- **Asymmetry of the coherence** (Figs 19–20, p. 17–19). Separate exponential fits upstream (Δx < 0) and downstream (Δx > 0) of the reference station.

  | x₀/D | St | ECE L_down / L_up (D) | m = 0 L_down / L_up (D) |
  |---|---|---|---|
  | 4 | 0.4 | 0.49 / 0.52 | 1.19 / 1.77 |
  | 4 | 0.6 | 0.25 / 0.26 | 0.44 / 0.97 |
  | 4 | 0.8 | 0.13 / 0.14 | 0.17 / 0.20 |
  | 6 | 0.4 | 0.47 / 0.47 | 0.66 / 1.01 |
  | 6 | 0.6 | 0.23 / 0.24 | 0.31 / 0.34 |
  | 6 | 0.8 | 0.12 / 0.13 | 0.13 / 0.17 |

  - The ECE coherence is symmetric. The wavepacket coherence decays faster downstream, by factors of 1.5–2.2 at x/D = 4, St 0.4–0.6 (my arithmetic). Baqui et al. (2015) assumed a symmetric Gaussian coherence, so this is a correction to that model (p. 17).
  - Two candidate causes: the spatially developing, spreading flow, or growing nonlinearity downstream (p. 17). *My reading:* if spreading acted through a coherence length that grows with δω (as the ECE scale does), the downstream side should decay more slowly, not faster. The observed sense therefore fits the nonlinear-decorrelation explanation better.
  - At x/D = 6 the asymmetry is smaller at high St. The authors suggest the high-St wavepackets there are already past the point where the KH mode is neutral, where nonlinear and/or non-normal effects take over (p. 17; refs. Tissot et al. 2017 and Zhang 2016).
  - The asymmetry "will be important in determining the acoustic efficiency" but is not modelled (p. 17). The amplitude-envelope asymmetry (Papamoschou 2011) is a different thing (p. 17).
- **Phase velocity** (Fig. 22, p. 20–21; only St ≤ 0.5 is plotted because the 0.5D axial spacing cannot resolve the phase gradient at higher St).
  - m = 0 is faster than the full signal (ECE) for St ≲ 0.3, especially for x/D ≤ 5 (p. 20). Read from Fig. 22:
    - x/D = 2: m = 0 at ≈ 0.92 to above 1.0U_j for St ≈ 0.05–0.08, ≈ 0.84 at St 0.1 and ≈ 0.7 for St 0.25–0.5. The full signal is ≈ 0.75 at St 0.05, ≈ 0.62 for St 0.1–0.2 and ≈ 0.68 at St 0.5.
    - x/D = 3.5: m = 0 at ≈ 0.83 near St 0.07 and ≈ 0.64–0.70 above St 0.12. The full signal rises from ≈ 0.49 at St 0.05 to ≈ 0.7 at 0.5.
    - x/D = 5: m = 0 ≈ 0.58–0.67 (a spike to 0.8 at St 0.48); full signal ≈ 0.47 → 0.67.
    - x/D = 6.5: both ≈ 0.55–0.64, nearly equal.
  - Phase speeds above U_j near the nozzle agree with linear stability theory and with the forced-jet observations of Bechert & Pfizenmaier (1975) (p. 21).
  - The faster-than-eddy region (St ≲ 0.3, x/D ≲ 5) is where the m = 0 and ECE coherence lengths are similar (Fig. 15). Where wavepackets are not more coherent, they are faster, and both raise acoustic efficiency (p. 21).
- **Model illustration** (Fig. 21, eqs. 7–10, p. 18–20). With a Cavalieri & Agarwal (2014) jittering Gaussian line source at St = 0.4, L_w/D = 5 and L_c/D = 2, raising V_φ/U_j from 0.5 to 0.6 moves the peak of the double wavenumber transform Ŝ_ω towards the origin, so more of it falls inside the supersonic-phase-speed (radiating) circle. The figure is qualitative; the paper gives no far-field number.
  - *My calculation from eqs. 8–10* (in the far field, along the anti-diagonal where Ŝ is sampled): at φ = 0, M = 0.4 and those parameters, the radiated PSD rises by about 24 dB from V_φ/U_j = 0.5 to 0.6. That comes from exp[−½L_m²κ²(1 − M_φ cos φ)²], with L_m = 1.36D, κD = 5.03 → 4.19 and M_φ = 0.20 → 0.24. The phase-speed differences measured here (≈ 0.1U_j at low St) are therefore acoustically large for a subsonic jet.

## Setup / method
- **Facility and jet** (p. 2). Bruit et Vent jet-noise facility, Institut PPRIME, Poitiers (anechoic room visible in Fig. 1, p. 3). Isothermal jet, M = U_j/c = 0.4, D = 0.05 m, Re = U_jD/ν = 4.6 × 10⁵.
  - Same convergent section, nozzle and boundary-layer trip as Cavalieri 2013. The flow-generation system and ducting have changed since (p. 4).
  - The end of the potential core is at x/D = 5 (p. 5).
  - My estimate: U_j ≈ 137 m s⁻¹ (c ≈ 343 m s⁻¹), consistent with the stated Re.
- **Dual-plane time-resolved stereo PIV** (Figs 1–2, p. 2–4).

  | Item | S1 (upstream plane) | S2 (downstream plane) |
  |---|---|---|
  | Cameras | 2 × Photron SA-Z | 2 × Photron SA1 |
  | Laser | Continuum MESA, 527 nm, 30 mJ | Continuum TERRA, 532 nm, 6 mJ |
  | Lenses | 100 mm, f/2.8, Scheimpflug adaptors | same |
  | Stereo angle | 30° between lens axis and sheet (the maximum the optical access allowed near the nozzle) | same |
  | Scattering | forward scatter, cameras opposite their own laser | same |
  | Plane positions | x₁/D = 1–8 | x₂/D = x₁–8, steps of 0.5D |

  - Crosstalk is removed by the two wavelengths, with 3 nm band-pass filters at each laser line (after Schreyer et al. 2015). In addition, each camera sees the other system's sheet only in back-scatter (p. 4).
  - Glycerine smoke, 1–2 µm, seeded in the jet and ambient. Sheet thickness 3 mm; Δt = 4 µs, giving at most 5–6 px displacement (p. 4).
  - Images at 10 kHz, i.e. 5000 PIV samples per second, 768 × 768 px. 19,414 image pairs per acquisition, 20 TB of images in total (p. 4). *My count:* 15 positions of x₁ with x₂ ≥ x₁ gives 120 plane-pair acquisitions.
  - Processing: commercial multipass iterative algorithm (Scarano 2002), 32 × 32 px windows refined to 16 × 16 px with 50% overlap. One vector every 0.85 mm (0.017D); 140 × 110 vectors. Outliers replaced with universal outlier detection (Westerweel & Scarano 2005). Bicubic interpolation onto a polar grid of 32 radial × 64 azimuthal points for r/D < 0.8 (p. 4).
  - *My notes on resolution.* The radial grid step is 0.025D (1.25 mm), coarser than the 0.85 mm vectors, although the text says the interpolated resolution matches the original. 64 azimuthal points resolve |m| ≤ 32, which is why p = 30 in Fig. 7 already equals the full sum. At r/D = 0.5 the azimuthal spacing is ≈ 0.05D.
- **Spectral estimation** (p. 7–9). Welch periodogram, 128-sample blocks, 50% overlap. Window type not stated.
  - *My arithmetic:* the sampling St is ≈ 1.82, so the Nyquist St is ≈ 0.91 (the maps stop at St 0.9). Δf ≈ 39 Hz, i.e. ΔSt ≈ 0.014. Blocks per acquisition ≈ (19,414 − 128)/64 + 1 ≈ 300. The coherence noise floor (≈ 1/n_d) is therefore of order 0.003–0.005.
  - **Time-shift alignment.** The second signal is shifted by the convective delay at 0.6U_j, so that an event at one plane falls in the same block at the other. The maximum shift is 20 samples. A change in convection speed along x changes this by 1–2 samples, against 128-sample blocks. Results were checked to be consistent across shifts (p. 8–9). *My check:* 7D at 0.6U_j is ≈ 4.3 ms ≈ 21 samples.
- **Coherence definitions** (p. 8–9). MSC of u_x between two points (eq. 3).
  - The jet is axisymmetric, so the CSD depends only on Δθ = θ₂ − θ₁. Taking Δθ = 0 and averaging over θ improves convergence (eq. 4).
  - Bulk (ECE) coherence is computed point to point at r/D = 0.5, the radius of maximum turbulence intensity.
  - Wavepacket coherence is computed ring to ring, from the m = 0 azimuthal coefficient at r/D = 0.42 (p. 8, 12).
- **Length-scale extraction** (p. 11, 14). A single-parameter least-squares fit of exp(−Δx/L) to γ²(Δx), for every reference x and St. Kerhervé et al. (2006) fitted Gaussian × exponential and Jordan et al. (2004) / O'Hara et al. (2004) an exponential–parabola convolution. Those forms target small separations, which the 0.5D axial resolution cannot resolve, so the exponential is used (p. 11).
  - *My caveat:* for L ≲ 0.25D (high St) the fit is set by the Δx = 0 and 0.5D points only. Since γ²(0) < 1 from noise, the fitted L there mixes noise and decay, and is close to the resolution limit.
- **Phase velocity** (eq. 11, p. 20): V_φ = ω(∂φ/∂x)⁻¹, from a linear regression of the measured cross-spectral phase against separation. The fit range is not given, nor how the imposed convective time shift is removed from the phase.
- **Data requirements.** Everything here needs **time-resolved, simultaneous two-plane data**. The coherence and phase speed are frequency resolved, and the m-decomposition needs full cross-planes (or azimuthal rings of sensors). Snapshot PIV cannot provide any of it.
- **Modelling side.** No stability calculation is run; the linear-theory side comes from earlier work.
  - The "linear theory works" polygon (Fig. 16) is taken from the PSE/PIV agreement of Cavalieri 2013 (its Figs 15 and 26b).
  - Unit coherence of linear modes is the reference against which decoherence is read (p. 1, 17). Equivalently, a single deterministic linear mode, as in PSE or LSA, has γ² = 1 at every separation.
  - The Cavalieri & Agarwal (2014) kinematic model (eqs. 7–10) is reproduced to show how coherence length L_c, envelope length L_w and phase speed V_φ enter the radiated sound. The source is a line of axial quadrupoles in a free-space Lighthill formulation. Only wavenumbers below k (supersonic phase speed) radiate (eq. 8, citing Crighton 1975). The source CSD is Gaussian in both the envelope and the coherence, which makes it symmetric about the reference point. The measured coherence is exponential and asymmetric, so the paper itself shows that this functional form is an approximation.
  - Modelling remedies listed for nonlinearity: Sandham & Salgado 2008; Jordan et al. 2014 (intermittent wavepackets, CTR); Tissot et al. 2017 (critical layer); Malik & Chang 2000 (nonlinear PSE); Towne et al. 2015 (stochastic and nonlinear forcing) (p. 2, 22).
  - Context from the introduction (p. 1–2): extrapolating a single POD mode (unit coherence), or a PSE solution, from near-field pressure under-predicts the sound by 25 dB, and higher POD modes recover it (Breakey et al. 2013). The coherence-matched linear source of Baqui et al. (2015) recovers the same 25 dB.

## Key equations
All checked against rendered pages (p. 5, 7–9, 11, 19–20).

- **Azimuthal decomposition** (eq. 1, p. 5): $\mathbf u(x,r,\theta,t)=\sum_m\tilde{\mathbf u}_m(x,r,t)\,e^{im\theta}$.
- **Modal PSD** (eq. 2, p. 7): $\hat{\mathbf u}_{m,\omega}(x,r)=\int_{-\infty}^{+\infty}\langle\tilde{\mathbf u}_m(x,r,t)\,\tilde{\mathbf u}^*_m(x,r,t+\tau)\rangle\,e^{-i\omega\tau}\,d\tau$, evaluated by Welch's method. The paper calls û the "modal coefficient" although it is a PSD.
- **Two-point MSC** (eq. 3, p. 8): $\gamma^2(\mathbf z_1,\mathbf z_2,\omega)=\dfrac{|\langle\tilde u_\omega(\mathbf z_1)\,\tilde u^*_\omega(\mathbf z_2)\rangle|^2}{\langle|\tilde u_\omega(\mathbf z_1)|^2\rangle\,\langle|\tilde u_\omega(\mathbf z_2)|^2\rangle}$.
- **Azimuthally averaged MSC** (eq. 4, p. 9): $\gamma^2(x,\Delta x,\omega)=\dfrac{1}{2\pi}\int_0^{2\pi}\gamma^2(x_1,x_2,r/D=0.5,\Delta\theta=0,\omega)\,d\theta$, with Δx = x₂ − x₁.
- **CSD as a sum over azimuthal modes** (eq. 5, p. 9; Baqui et al. 2015): $C_\omega(x_1,x_2)=\sum_{m=-\infty}^{\infty}C_{\omega,m}(x_1,x_2)=\sum_{m=-\infty}^{\infty}\langle\tilde u_{\omega,m}(x_1)\,\tilde u^*_{\omega,m}(x_2)\rangle$.
- **Cumulative coherence** (eq. 6, p. 9): $\Gamma_p^2(x_1,x_2,\omega)=\dfrac{\big|\sum_{m=-p}^{p}\langle\hat u_{\omega,m}(x_1)\,\hat u^*_{\omega,m}(x_2)\rangle\big|^2}{\langle|\tilde u_\omega(x_1)|^2\rangle\,\langle|\tilde u_\omega(x_2)|^2\rangle}$. p counts |m|, so p = 2 means m = 0, ±1, ±2. As printed the numerator uses û and the denominator ũ for the same Fourier coefficients. Γ² is a squared modulus of a sum, so the per-mode contributions are not additive.
- **Coherence-length fit** (p. 11, 14): $\gamma^2(\Delta x)\approx\exp(-\Delta x/L)$; for the asymmetry, $\exp(\Delta x/L_{up})$ for Δx < 0 and $\exp(-\Delta x/L_{down})$ for Δx > 0 (Figs 19–20).
- **Local Strouhal number** (p. 12): $St_{\delta_\omega}=f\delta_\omega/U_c$, with U_c = 0.6U_j; the ECE peak is at St_δω = 0.07. The Fig. 10 caption prints "St = 0.07fδω(x)/U_c"; the circles mean St_δω = 0.07, i.e. $fD/U_j=0.07\,(U_c/U_j)\,(D/\delta_\omega)$ (my rewriting).
- **Jittering line source** (eq. 7, p. 19; Cavalieri & Agarwal 2014): $\langle S_\omega(y)S^*_\omega(z)\rangle=\exp\!\Big(i\dfrac{\omega}{V_\phi}(y-z)\Big)\exp\!\Big(-\dfrac{y^2+z^2}{L_w^2}\Big)\exp\!\Big(-\dfrac{(y-z)^2}{L_c^2}\Big)$, with the e^{−iωt} factor omitted.
  > The paper prints the envelope term as exp[−(y² − z²)/L_w²]. That is a typo: eqs. 9–10 follow only from y² + z². I re-derived eq. 9 from y² + z², using sum and difference coordinates and a 1/√(2π)-per-dimension transform with kernel e^{+ik_y y + ik_z z}, and recovered the printed eq. 9 exactly, prefactor included. The same model in [Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) (eq. 46) uses −y²/L² − z²/L².
- **Far-field PSD** (eq. 8, p. 20): $\langle p(\mathbf x,\omega)p^*(\mathbf x,\omega)\rangle\simeq\dfrac{1}{8\pi x^2}\,\hat S_\omega(-k\cos\varphi,\,k\cos\varphi)$, with k the acoustic wavenumber and φ the observer angle from the downstream axis.
- **Double wavenumber transform of the source CSD** (eq. 9, p. 20): $\hat S_\omega(k_y,k_z)=\dfrac{L_mL_w}{2}\exp\Big\{-\dfrac{L_m^2}{4}\Big[\dfrac{(k_y+k_z)^2L_w^2}{L_c^2}+\Big(\dfrac{\omega}{V_\phi}+k_y\Big)^2+\Big(\dfrac{\omega}{V_\phi}-k_z\Big)^2\Big]\Big\}$.
- **Effective length** (eq. 10, p. 20): $L_m^2=\dfrac{L_w^2L_c^2}{2L_w^2+L_c^2}$. For L_w = 5D and L_c = 2D, L_m = 1.36D (my arithmetic).
- **Radiated PSD in closed form** (my substitution of eq. 8 into eq. 9): $\langle pp^*\rangle\simeq\dfrac{L_mL_w}{16\pi x^2}\exp\!\Big[-\tfrac12L_m^2\Big(\dfrac{\omega}{V_\phi}\Big)^2(1-M_\phi\cos\varphi)^2\Big]$, $M_\phi=V_\phi/c$. This is the superdirectivity form of [Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) (eqs. 47–48), with k_h = ω/V_φ.
- **Phase velocity** (eq. 11, p. 20): $V_\phi=\dfrac{\omega}{k}=\omega\Big(\dfrac{\partial\phi}{\partial x}\Big)^{-1}$, with $\phi(x)=\arg[\hat u_{\omega,m}(x_1)\,\hat u^*_{\omega,m}(x_1)]$ as printed. The second argument should be x (or x₂); with x₁ twice the phase would be zero.

## Data tables
**MSC coherence lengths at x/D = 3** (Figs 9, 12, 13, p. 11, 13–14; printed fit values):

| St | ECE, Fig. 9 (caption r/D = 0.5) | ECE, Fig. 13, r/D = 0.42 | ECE, Fig. 13, r/D = 0.5 | m = 0, Fig. 12, r/D = 0.42 |
|---|---|---|---|---|
| 0.2 | 0.73D | 0.73D | 0.73D | 0.92D |
| 0.4 | 0.52D | 0.52D | 0.65D | 1.54D |
| 0.6 | 0.28D | 0.28D | 0.37D | 0.84D |
| 0.8 | 0.15D | 0.15D | 0.22D | 0.26D |

> The Fig. 9 values (captioned r/D = 0.5) equal the Fig. 13 values labelled r/D = 0.42, not those labelled 0.5; the γ² points at Δx = 0.5D match too (≈ 0.37 at St 0.4). Either Fig. 9 (and probably Fig. 7, also captioned r/D = 0.5) shows r/D = 0.42 data, or the Fig. 13 legend is swapped. The text ("slightly faster decay" at 0.42, p. 13) supports the Fig. 13 legend. Fig. 15 at x/D = 3 gives m = 0 L ≈ 1.0D at St 0.6 against the 0.84D printed in Fig. 12 (read from figure).

The asymmetry table and the Fig. 15 peak table are under Key findings. The Fig. 7 cumulative-coherence values, the Fig. 11/18 L/δω values and the Fig. 22 phase speeds are figure readings, also given there.

## Figures worth remembering
- **Fig. 2 (p. 3):** schematic of the two moveable cross-plane stereo PIV systems (S1 at x₁, S2 at x₂). The template for measuring two-point statistics with two synchronised planes.
- **Fig. 5 (p. 7):** lipline u_x energy against m and against mδω/D for x/D = 1–8.
- **Fig. 7 (p. 10):** cumulative coherence Γ²_p for p = 0, 1, 2, 5, 15, 30, N at St 0.2–0.8. The "< 10%" figure.
- **Fig. 8 (p. 10):** per-mode CSD contribution at St 0.3 against mδω/D.
- **Figs 10–11 (p. 12–13):** ECE coherence-length map and its collapse at L/δω ≈ 3, St_δω = 0.07.
- **Fig. 14 (p. 15):** m = 0 coherence-length map. **Fig. 15 (p. 15):** m = 0 against total L(St) at x/D = 2–5.
- **Fig. 16 (p. 16):** ΔL map with the linear-theory polygon. The key figure of the paper.
- **Figs 17–18 (p. 16–17):** the two wavepacket families and the δω collapse of the downstream one.
- **Figs 19–20 (p. 18–19):** upstream and downstream coherence at x/D = 4 and 6, ECE against m = 0.
- **Fig. 21 (p. 20):** |Ŝ_ω| in (k_yU_c/ω, k_zU_c/ω) for V_φ/U_j = 0.5 and 0.6, with the radiating circle (radius U_c/c = 0.24, my calculation).
- **Fig. 22 (p. 21):** phase speed of m = 0 against the full signal for St ≤ 0.5 at x/D = 2, 3.5, 5 and 6.5.

## Notation
- x, r, θ: axial, radial and azimuthal coordinates; z: position vector; x₁, x₂: upstream and downstream plane positions; Δx = x₂ − x₁; x₀: reference station; Δθ = θ₂ − θ₁.
- U_j: jet velocity; c: ambient sound speed; M = U_j/c; U_c = 0.6U_j: convection velocity; D = 50 mm; δω: vorticity thickness.
- St = fD/U_j; St_δω = fδω/U_c; St_D in Fig. 17 (the axis values coincide with St = fD/U_j, my reading of Figs 15 and 17).
- m: azimuthal mode number; ũ_m: azimuthal coefficient; û_{m,ω}: its spectral quantity; C_ω, C_{ω,m}: total and per-mode CSD.
- γ²: magnitude-squared coherence; Γ²_p: cumulative coherence of |m| ≤ p; L: exponential coherence length of γ²; L_WP, L_ECE: wavepacket and energy-containing-eddy L; ΔL = L_WP − L_ECE; L_up, L_down: upstream and downstream fits.
- S_ω: line source; L_w: envelope length; L_c: Gaussian coherence length of the source CSD; L_m: effective length; V_φ: phase velocity; Ŝ_ω(k_y, k_z): double wavenumber transform; k: acoustic wavenumber; φ: observer angle from the downstream axis (also the phase in eq. 11).
- S1, S2: upstream and downstream PIV systems; ECE: energy-containing eddies; WP: wavepacket; MSC: magnitude-squared coherence.

## Relevance to this project
The paper supplies the second-order statistic that linear wavepacket theory cannot. It measures, as a function of x and St, how far along the jet the m = 0 wavepacket stays phase-locked to itself, and contrasts that with the turbulence. It is subsonic, shock-free and not group work, but the method and the "linear region = long coherence" result carry over to the lab's resonance work, the SPOD → reconstruction → HPOD pipeline and source modelling.

**How it fits the library**
- **Same jet, same thread.** It takes its validity polygon from [Cavalieri 2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md) and provides the simultaneous multi-plane data that paper said were needed (its p. 587).
  - Cavalieri 2013 favoured the view that downstream wavepackets are present but hold too small a share of the energy for single-plane radial POD to extract. Here, beyond x/D ≈ 5, the m = 0 field itself decoheres on eddy scales. The alternative is supported: past the core the m = 0 content is not one long coherent packet. Later SPOD and resolvent work attributes it to Orr-type packets driven by distributed forcing ([Schmidt 2018](schmidt-2018-spectral-analysis-jet-turbulence.md); [Pickering 2020](pickering-2020-lift-up-kh-orr-jets.md)).
  - The same PIV database later fed the SPOD–resolvent comparison of [Lesshafft 2019](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md) (m = 0, mode 1 matched at St 0.4–0.7) and the streak study of [Nogueira 2019](nogueira-2019-large-scale-streaky-structures-jets.md). [Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) shows SPOD modes of these data (its Fig. 17) and cites them for "L_c ≈ L".
- **Coherence as a low-rank test (my inference).** Ring-to-ring coherence of one m is an integral measure of how close the CSD is to rank 1: a single SPOD mode gives γ² = 1 at every pair.
  - The ΔL map (Fig. 16) peaks at St ≈ 0.4–0.45. That matches the gain-separation peak of the jet resolvent (σ₁ ≫ σ₂ near St ≈ 0.4, [Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md), p. 22) and the preferred-mode pseudo-resonance at St ≈ 0.43–0.46 of [Garnaud 2013](garnaud-2013-preferred-mode-incompressible-jets.md).
  - The polygon's lower edge, St ≈ 0.3, matches the m = 0 low-rank cut-off and KH → Orr transition near St 0.2–0.35 in [Schmidt 2018](schmidt-2018-spectral-analysis-jet-turbulence.md) and [Pickering 2020](pickering-2020-lift-up-kh-orr-jets.md).
  - So "linear theory works", "long coherence" and "large gain separation" are three views of the same region. The model–experiment link that later papers drew through SPOD is already visible here in two-point statistics.
- **Source models.**
  - L_c here varies by a factor of ten with x and St (≈ 0.2–1.9D for m = 0). [Wong 2019](wong-2019-coherence-decay-wavepacket-bbsan.md) used a constant 1.0D, as its note already flags. [Wong 2021](wong-2021-wavepacket-modelling-bbsan.md) took the coherence from LES instead.
  - *My mapping:* the measured L is the e-folding length of γ² for an exponential, whereas the model L_c is Gaussian in the CSD, so γ² = exp(−2Δ²/L_c²). Matching e-folding gives L_c ≈ √2 L, so L ≈ 1.5–1.9D corresponds to L_c ≈ 2.1–2.7D, consistent with the paper's own choice of L_c = 2D in Fig. 21.
  - The functional form matters too (my inference). An exponential coherence has algebraic (Lorentzian-type) wavenumber tails, a Gaussian one exponential tails. For a subsonic source the radiating wavenumbers sit in those tails, so the choice of form could change predicted levels; this has not been tested.
  - The measured asymmetry (L_up ≈ 1.5–2.2 L_down at x/D = 4) is absent from every symmetric model in the library (Baqui et al.; Cavalieri & Agarwal; Wong 2019).
- **Phase speed and acoustic efficiency.** The m = 0 wavepacket at low St and near the nozzle travels at 0.8–1.0U_j against ≈ 0.6U_j for the eddies. In eq. 9 this alone changes the superdirective radiation by tens of dB (≈ 24 dB for 0.5 → 0.6U_j at St 0.4 in my calculation). Using a fixed U_c = 0.6U_j for wavepackets, as most kinematic models and the M_c ≈ 0.6M of [Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) do, is therefore questionable at the low St that dominate low-angle noise.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Needs time-resolved, simultaneous two-point data.** Frequency-resolved coherence, its length scales, asymmetry and phase speeds all need TR data at both points. The lab's TR schlieren and microphone arrays qualify; snapshot PIV does not.
  - With snapshot PIV only broadband (zero-lag) spatial correlation is possible, dominated by the energetic eddies, as in Fig. 7 at the bulk level.
  - *Snapshot workaround (my suggestion):* separate low-order content by symmetry. On the axis u_x is pure m = 0, the trick Morris & Zaman used without knowing it (p. 14). In a streamwise plane, the parts of u_x that are symmetric and antisymmetric about the axis carry even and odd m. Zero-lag correlations of these parts give a crude, frequency-integrated wavepacket length scale.
- **TR schlieren.** Line-of-sight integration cancels high-m density fluctuations, so schlieren is naturally weighted towards low m (my inference). Two-point coherence between pixels along the shear layer of TR schlieren should therefore behave more like L_WP than L_ECE. That is a testable claim on the lab's subsonic or shock-free baseline data. For the parameters: 128-sample blocks were enough at Δx up to 7D only because a convective time shift was applied first (p. 8–9). The same alignment, or long blocks, is needed for long separations in schlieren.
- **Coherence decay and the SPOD → reconstruction → HPOD pipeline.** Coherence decay is the statistical footprint of jitter: cycle-to-cycle phase and amplitude wander between stations.
  - A reconstruction from SPOD mode 1 alone has unit coherence by construction, exactly like a linear model. Reconstructions from several modes keep the decay, and the number needed is set by the gain separation (see above and [Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md), Figs 18–20).
  - Hilbert POD on such a reconstruction ([Raiola 2025](raiola-2025-hilbert-pod.md); [Nekkanti 2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md) for reconstruction) gives the time-domain version of these statistics (my suggestions):
    - The instantaneous phase difference between two stations gives an instantaneous phase speed and its spread, the dynamic counterpart of Fig. 22.
    - The time-local coherence shows whether decoherence is a steady drift or bursts, which bears on the intermittency question in [Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md).
    - Checking the γ² of the reconstructed field against the raw γ² tells how much of the decay a given rank keeps.
  - The paper itself is purely block-averaged and stationary.
- **Resonant jets.** At a screech or impingement tone the loop locks the wavepacket, so the coherence length at f_s should be far longer than at neighbouring broadband frequencies (my inference). The ratio L(f_s)/L(f_s ± Δf) is a cheap, model-free measure of how strongly the loop organises the flow.
  - Near a staging boundary, switching within a Welch block would show as reduced coherence at both tones. That makes γ²(Δx, f) a block-averaged precursor to the HPOD switch tracking.

**Modelling side and the PyFR staging LES**
- The paper's conclusion, that nonlinearity past the core decorrelates wavepackets, motivates operator models with stochastic forcing (resolvent with eddy viscosity, [Pickering 2020](pickering-2020-lift-up-kh-orr-jets.md)) rather than single-mode PSE. A resolvent model with forcing statistics P_ff can predict γ²(x₁, x₂) directly from P_qq = RP_ffR^H, and this paper's maps are the matching validation target (my inference). No published comparison of that kind is in the library.
- For `Simulations/PyFR_Staging_Continuation/` (my suggestion): azimuthal probe rings at r/D ≈ 0.42–0.5 every 0.5D from x/D = 1 to 8 would allow the same Γ²_p, L(x, St) and V_φ analysis.
  - At the screech tone and its neighbours this gives a direct measure of how loop locking changes coherence across A1/A2.
  - At broadband St it checks the LES against these subsonic wavepacket statistics: U_c < a∞ at M_j ≈ 1.1, so the broadband part should follow this subsonic, jitter-sensitive behaviour.

**Rocket noise.** For supersonic phase speeds the dominant wavenumbers already lie inside the radiating circle, so coherence decay matters much less ([Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md), p. 15–16). Hot rocket plumes are in that regime, so this paper's coherence lengths bear mainly on the subsonic-phase-speed, low-St and sideline parts of launch noise, and on any wavepacket source model that is meant to be valid across Mach number. SP-8072-type models have no coherence parameter at all.

**Items to verify against the PDF**
1. Fig. 9 (and Fig. 7) caption r/D = 0.5 against the Fig. 13 legend; see the note under Data tables.
2. Eq. 7's envelope term printed as (y² − z²); I take it to be y² + z², which reproduces eq. 9.
3. Eq. 11's φ(x) = arg[û(x₁)û*(x₁)]: the second argument should be x or x₂. Also how the imposed convective time shift is removed before the phase regression, and over which Δx range the regression is made.
4. All values marked "read from figure" (Figs 3, 5, 7, 8, 10, 11, 14–18, 22), especially the polygon vertices in Fig. 16 and the L/δω peaks in Fig. 18.
5. The Fig. 18 caption ("for x/D > 5 and St_δω < 0.04 the local length scales collapse") reads ambiguously: the plot shows the x/D ≥ 4.5 curves collapsing at all St_δω, with the upstream curves joining them only below St_δω ≈ 0.04.
6. Fig. 17's abscissa St_D is described as built on U_c = 0.6U_j, but its peak positions coincide with those of Fig. 15 plotted against St = fD/U_j.
7. Fig. 10's black-circle formula ("St = 0.07fδω(x)/U_c") is garbled; the meaning is St_δω = 0.07.
8. The Welch window type and the number of blocks are not stated; my ≈ 300 blocks and ΔSt ≈ 0.014 assume 19,414 samples at 5 kHz. U_j is not stated (≈ 137 m s⁻¹ is my estimate).

**Candidates for `/add-paper`** (cited, not in the library): Cavalieri & Agarwal 2014 (JFM 748, coherence decay and sound); Baqui et al. 2015 (JFM 776, coherence-matched linear source); Breakey et al. 2013 (AIAA 2013-2083, near-field wavepackets and the 25 dB deficit); Tissot et al. 2017 (JFM 811, critical layer); Towne et al. 2015 (AIAA 2015-2217, stochastic and nonlinear forcing); Kerhervé, Fitzpatrick & Jordan 2006 (JSV 296); Morris & Zaman 2010 (JSV 329); Pokora & McGuirk 2015 (JFM 778); Cavalieri et al. 2011 (JSV 330, jittering wavepackets); Cavalieri et al. 2012 (JFM 704, axisymmetric superdirectivity); Suzuki & Colonius 2006 (JFM 565); Bechert & Pfizenmaier 1975 (JFM 72, waves faster than the jet).
