---
key: "nogueira-2019-large-scale-streaky-structures-jets"
title: "Large-scale streaky structures in turbulent jets"
authors: ["Nogueira, P. A. S.", "Cavalieri, A. V. G.", "Jordan, P.", "Jaunet, V."]
year: 2019
type: "article"
venue: "JFM 873, 211–237"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "873", "pages": "211--237", "note": "HAL author version hal-02351588"}
doi: "10.1017/jfm.2019.365"
arxiv: ""
pdf: "linear-operator-methods/Nogueira-EtAl_2019_Large-Scale-Streaky-Structures-In-Turbulent-Jets.pdf"
version: "preprint"
unverified: []
group: false
facility: "PPRIME Bruit et Vent jet-noise facility"
data: ["PIV-TR", "PIV-stereo"]
methods: ["SPOD", "PSD", "symmetry-decomposition", "resolvent", "transient-growth"]
flow: ["round-jet", "subsonic"]
phenomena: ["streaks"]
params: {"M_j": "0.4", "Re": "4.6×10⁵", "D": "50 mm"}
topics: ["linear-operator-methods"]
related: ["pickering-2020-lift-up-kh-orr-jets", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "morra-2021-colour-of-forcing-resolvent-channel", "marshall-2024-prediction-streaks-rectangular-jets", "nogueira-2026-flapping-motion-screeching-round-jets", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "jaunet-2017-two-point-coherence-wave-packets-turbulent-jets", "jordan-2013-wave-packets-turbulent-jet-noise", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "schmidt-2018-spectral-analysis-jet-turbulence", "tam-1984-sound-instability-waves-supersonic-axisymmetric-jets", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "First evidence of lift-up streaks in an M 0.4 jet: dual-plane TR stereo PIV, SPOD (St→0, m≥3), matched by local resolvent and transient growth (rolls → streaks)"
---
# Large-scale streaky structures in turbulent jets

- **Authors:** P. A. S. Nogueira, A. V. G. Cavalieri (ITA, Brazil), P. Jordan, V. Jaunet (Institut PPRIME, Poitiers)
- **Source:** J. Fluid Mech. 873, 211–237 (2019); doi:10.1017/jfm.2019.365. This copy is the HAL author version (hal-02351588) in JFM draft style, not the typeset article.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/linear-operator-methods/Nogueira-EtAl_2019_Large-Scale-Streaky-Structures-In-Turbulent-Jets.pdf` (28 pp.)
- **Tags:** streaks, lift-up, streamwise vortices, subsonic jet, M = 0.4, SPOD, resolvent analysis, transient growth, non-modal stability, dual-plane time-resolved stereo PIV, Taylor's hypothesis, azimuthal Fourier decomposition, wall-turbulence analogy

> **Page convention:** page refs are **PDF page numbers**. PDF p. 1 is the HAL cover sheet, so PDF p. N = manuscript p. N−1. They are not the JFM 211–237 page numbers.

## Summary
The paper re-analyses the dual-plane, time-resolved stereo PIV database of a M = 0.4 round jet (Jaunet et al. 2017) and shows that the turbulent jet contains large-scale, streamwise-elongated **streaks**, like those in wall-bounded turbulence. Two views of the streamwise velocity are used: wavenumber spectra in single cross-sections (time turned into a pseudo-axial coordinate by Taylor's hypothesis), and an SPOD built from the two-plane cross-spectral density over the whole 1 ≤ x/D ≤ 8 domain. The leading SPOD modes for m ≥ 3 peak at St → 0, extend several diameters in x, and have an axial-to-azimuthal aspect ratio of about 15. Local (parallel) resolvent and transient-growth analyses about the measured mean flow at x/D = 2, at ω = 0 and k_x = 0, reproduce the radial shape of the leading SPOD modes, and both give streamwise vortices (rolls) as the optimal forcing / initial condition. The lift-up mechanism is therefore active in turbulent jets: a wall is not needed, only mean shear.

## Key findings
- **Streaks are visible directly** in (x_t, z) maps of u′ at r/D = 0.55, x/D = 3, 5, 7. They meander and widen downstream, and look like LES superstructures in a turbulent boundary layer at y⁺ = 120 (Fig. 2, p. 10).
- **Wavenumber spectra** (Fig. 3, p. 11–12):
  - At r/D = 0.42 (near the lipline/potential core edge), energy sits both at the KH wavepacket (non-zero k_x, low k_z) and at k_x ≈ 0, k_z ≈ 1 (scaled by momentum thickness θ). The wavepacket part decays downstream as KH saturates; the k_x ≈ 0 part grows.
  - At r/D = 0.55, the peak is at k_x ≈ 0, k_zθ ≈ 1, i.e. streaks dominate there, not wavepackets.
  - The low-k_x peak position matches the turbulent boundary layer of Tomkins & Adrian (2005) despite very different Reynolds numbers (p. 11).
- **Streak energy grows monotonically downstream** at k_x = 0, r/D = 0.55, with the peak always at the same k_zθ (Fig. 4, p. 11–13).
- **SPOD spectrum** (Fig. 5, p. 13–14):
  - m = 0 high-energy region is the KH wavepacket (not studied here).
  - For m ≥ 3 the leading-mode energy peaks at **St = 0** (interpreted as the St → 0 limit, i.e. time scales longer than a Welch block). For m = 1, 2 the peak is still at low St.
  - At St = 0, the leading-mode energy peaks at **m = 3**, matching pipe-flow POD (Hellström et al. 2015), with a large gap between mode 1 and the suboptimals at low m.
- **Streamwise self-similarity** (Fig. 6, p. 13–14): with azimuthal wavelength λ_θ = 2π/m and length scale λ_θR (R = D/2), the radially integrated leading SPOD modes collapse in x for m ≥ 3. Pipe flow (Hellström et al. 2016) shows self-similarity in the radial direction instead.
- **Size:** m = 10 structures are about 5D long; lower m are longer. Aspect ratio (axial/azimuthal) ≈ 15 for m ≥ 3 (p. 13–14).
- **Mode shapes** (Figs 7–8, p. 14–15): modes start near the nozzle near the shear layer and grow strongly in x. Higher m sits closer to the nozzle and the lipline; m = 1, 2 sit at r/D < 0.5 and large x/D and do not decay inside the measured domain. Second SPOD modes oscillate in x (phase opposition upstream/downstream), read as streak meandering.
- **Snapshots contain the streaks:** the m = 10 leading SPOD mode overlaid on an instantaneous field at x/D = 2 matches its azimuthal pattern and radial support (Fig. 9, p. 16).
- **Resolvent vs SPOD at x/D = 2** (Fig. 10, p. 17; p. 18):
  - Good agreement in peak position (relative to the lipline) and radial support for m = 7, 10.
  - For m = 3 only the peak position matches; the width differs. Attributed to the m = 3 SPOD mode being weak at x/D = 2 and growing downstream, which a k_x = 0 local model cannot represent.
  - Agreement implies the nonlinear forcing at this station behaves roughly like spatially **white noise**, at least for high m (p. 18, 23). Conclusions note discrepancies for r/D > 0.6 (p. 23).
- **Lift-up in the forcing** (Fig. 11, p. 18–19): optimal forcing is almost entirely radial + azimuthal (streamwise component negligible) and forms streamwise vortices. Positive streaks are always where the rolls push fast inner fluid outward to slower regions.
- **Transient growth** (Figs 12–14, p. 18–22):
  - Response at optimal time matches SPOD peak position for all m, and radial support for m = 7, 10. Matches resolvent responses closely.
  - Optimal initial conditions are streamwise vortices, as in Jiménez-González & Brancher (2017) and Cossu et al. (2009).
  - Times of peak growth are very long (order 10³–10⁴ D/U_x; Fig. 13a) and decrease with m. Growth weakens and optimal time increases as the base-flow station moves downstream (thicker shear layer; Fig. 13b, m = 7).
  - Caveat: in a local parallel model the "time" refers to a vortex created at the same station as the streak, so it is not the true space–time evolution from the nozzle (p. 20).
- **Downstream of the potential core** (x/D = 7, m = 3, 4, 5; Fig. 15, p. 21–22): SPOD modes extend beyond the r/D ≤ 0.8 window, so about half the radial information is lost. Both models qualitatively reproduce the steep radial rise from the axis; transient growth does better, especially at higher m.
- **Outlook** (p. 23–24): streak–KH interaction could cause wavepacket jitter and coherence decay (Cavalieri et al. 2011; Cavalieri & Agarwal 2014). Chevrons/serrations generate steady streaks that stabilise KH wavepackets; the optimal forcings could guide nozzle design for azimuthal inhomogeneity.

## Setup / method
- **Facility:** "Bruit et Vent" jet-noise facility, Institut PPRIME, Poitiers. Database from Jaunet et al. (2017) (p. 5). Not a Shock Lab group facility.
- **Jet:**

  | Quantity | Value |
  |---|---|
  | Mach number | 0.4 |
  | D | 0.05 m |
  | Re_D | 4.6×10⁵ |
  | Re_θ (exit momentum thickness) | 4×10³ |
  | Nozzle | convergent-straight; BL tripped inside, confirmed turbulent at exit |
  | Potential-core end | x/D ≈ 5.5 (p. 21) |

  (p. 5)
- **PIV** (p. 5):
  - Two independent time-resolved stereo PIV systems in cross-stream (x = const) planes. The first plane fixed at x₁, the second traversed to x₂ > x₁; 1 ≤ x₁/D ≤ 8, x₁ < x₂ ≤ 8, Δx = 0.5D.
  - Acquisition stated as "5 kHz (10 kHz for each PIV system)"; sampling interval Δt U_jet/D = 0.548. 19 414 image pairs per (x₁, x₂) pair.
  - Glycerine smoke, 1–2 μm, response up to St = 20.
  - Multipass iterative algorithm (Scarano 2001): 32×32 → 16×16 px, 50% overlap; one vector per 0.85 mm, 140×110 vectors. Universal outlier detection (3×3, threshold 2). No peak-locking seen (attributed to dewarping blur).
  - Interpolated (bicubic) to a polar grid of 32 radial × 64 azimuthal points for r/D ≤ 0.8, then Fourier-transformed in θ.
  - Only the **streamwise** component u was accurate enough with the dual-plane configuration, so all SPOD energies are u-only (p. 6).
- **Spectral estimation** (p. 5): Welch, n_fft = 128, 50% overlap, Hann window; ΔSt = 0.015.
  > Check: f_s D/U = 1/0.548 = 1.825, so ΔSt = 1.825/128 ≈ 0.014, consistent with the quoted 0.015. About (19414−128)/64 + 1 ≈ 302 blocks per point pair (my estimate; not stated in the paper).
- **Taylor's hypothesis analysis** (p. 9–11): x_t = t U_ref with U_ref the local mean velocity at the chosen radius (r/D = 0.42 or 0.55); pseudo-span z = rθ. 2D FFT in (x_t, z); axes scaled by local momentum thickness θ. Needs time-resolved data.
- **SPOD** (p. 6–7, 13): domain-wide SPOD over (x, r) for each (m, ω), using the two-point CSD R(x, x′, r, r′, m, ω) assembled from all plane pairs. Unlike earlier slice-by-slice POD (Jung et al. 2004; Tinney et al. 2008; Cavalieri et al. 2013), the modes span the whole axial domain. Requires time-resolved data and the two-plane cross-correlation. St = ωD/(2πU_jet).
- **Resolvent analysis** (p. 7–8; App. A, p. 24–25):
  - Locally parallel, incompressible linearised NS about the measured mean U(x₁, r) at **x₁/D = 2** (other stations gave similar results); Fourier in x (k_x), θ (m), t (ω). Analysed at ω = 0, k_x = 0, m = 3, 7, 10 (and m = 3–5 at x/D = 7).
  - Forcing f = [f_x f_r f_θ] stands for the nonlinear terms; continuity unforced. Output matrix C keeps u only (results barely change with all components).
  - Chebyshev collocation in r (Trefethen 2000) with the Lesshafft & Huerre (2007) mapping that clusters nodes in the shear layer and core; m-dependent axis conditions from the same work.
  - Output weight W_u localises responses to r/D < 1 to suppress free-stream modes (Dergham et al. 2013); W_f = W_cheb. SVD of W_u^{1/2} R W_f^{−1/2} (Tissot et al. 2017; Towne et al. 2018).
  - **Molecular Reynolds number only; no eddy viscosity** (p. 9, 16).
- **Transient growth** (p. 8–9): same operator, unforced initial-value problem; optimal gain G(t) by eigenfunction expansion (Schmid & Henningson 2012), discarding spurious eigenvalues; pressure excluded from the energy norm; t scaled by D/U_x (U_x = peak mean velocity at that station); k_x = 0.

## Key equations
- Decomposition: $\tilde u(\mathbf x,t) = U(x,r) + u'(\mathbf x,t)$ (eq. 3.1, p. 6); $u'(\mathbf x,t) = \sum_m \int \hat u(x,r,m,\omega)\,e^{im\theta}e^{-i\omega t}\,d\omega$ (eq. 3.2, p. 6).
- SPOD integral eigenproblem (eq. 3.3, p. 6):
  $\int_\Omega R(x,x',r,r',m,\omega)\,\psi(x',r',m,\omega)\,r'\,dr'\,dx' = \lambda(m,\omega)\,\psi(x,r,m,\omega)$
- Input–output LNS (eqs 3.4–3.5, p. 7): $\partial_t H \mathbf q = L \mathbf q + B\mathbf f$, $\mathbf u = C \mathbf q$, with $\mathbf q = [u\ v\ w\ p]^T$.
- Resolvent (eqs 3.6–3.8, p. 7–8): $\mathbf u = C(-i\omega H - L)^{-1}B\,\mathbf f = \mathcal R \mathbf f$; optimal gain $\sigma_1^2 = \max_{\mathbf f} \langle \mathcal R\mathbf f,\mathcal R\mathbf f\rangle_u / \langle \mathbf f,\mathbf f\rangle_f$ (eq. 3.9).
- Output weight (eq. 3.10, p. 8): $W_u = \mathrm{diag}\big[0.5(1-b)(1+\tanh(r_p/D - r/D)) + b\big]W_{cheb}$, with r_p/D = 1 and small b.
- Transient growth (eqs 3.11–3.13, p. 8–9): $\partial_t H\mathbf q = L\mathbf q$, $\mathbf q(t) = e^{Lt}\mathbf q(0)$, $G(t) = \max_{\mathbf q(0)\neq 0} \|\mathbf q(t)\|/\|\mathbf q(0)\|$.
- Operators (App. A, eqs A1–A10, p. 24–25): A contains $-ik_xU + \Delta/Re$ terms with $-\partial_r U$ coupling (lift-up term) and the cylindrical $(1+m^2)/r^2$ and $2im/r^2$ couplings; $\Delta = -k_x^2 - (m^2+1)/r^2 + \partial_r^2 + r^{-1}\partial_r$.
> Equations were re-typed from garbled extraction. Check eq. 3.9 (whether G is squared, σ₁² vs σ₁), the exact A matrix (A1), the form of Δ, and the m-dependent axis conditions (A8–A10) against p. 24–25 before reuse.

## Data tables
No reusable quantitative tables in the paper. Key numbers are collected under Setup and Key findings.

## Figures worth remembering
- **Fig. 1 (p. 6):** dual-plane PIV layout and coordinates (from Jaunet et al. 2017).
- **Fig. 2 (p. 10):** u′ in (x_t, rθ) at x/D = 3, 5, 7 vs TBL LES at y⁺ = 120. The visual case for streaks.
- **Fig. 3 (p. 12):** (k_x, k_z)θ energy spectra at r/D = 0.42 and 0.55 vs Tomkins & Adrian (2005).
- **Fig. 4 (p. 13):** premultiplied k_x = 0 spectra and peak energy vs x/D (monotonic growth).
- **Fig. 5 (p. 14):** leading SPOD energy over (St, m), and SPOD eigenvalues n = 1–4 vs m at St = 0 (peak m = 3).
- **Fig. 6 (p. 14):** radially integrated leading SPOD modes vs x/D and vs x/(λ_θR); collapse for m ≥ 3.
- **Figs 7–8 (p. 15):** first and second SPOD modes (u, St = 0) in (x, r) for several m.
- **Fig. 9 (p. 16):** 3D isosurfaces of the m = 10 SPOD mode with an instantaneous cross-section.
- **Fig. 10 (p. 17):** SPOD vs resolvent cross-sections at x/D = 2, m = 3, 7, 10.
- **Fig. 11 (p. 19):** optimal resolvent forcing (rolls, arrows) on response streaks.
- **Fig. 12 (p. 20):** radial profiles: SPOD vs resolvent vs transient growth at x/D = 2.
- **Fig. 13 (p. 21):** G(t) for m = 3, 7, 10 at x/D = 2, and m = 7 at several stations.
- **Fig. 14 (p. 22):** optimal initial disturbance (streamwise vortices) and response.
- **Fig. 15 (p. 22):** as Fig. 12 at x/D = 7 for m = 3, 4, 5.

## Notation
- x, r, θ: axial, radial, azimuthal; m: azimuthal wavenumber; k_x: axial wavenumber; ω: angular frequency; St = ωD/(2πU_jet).
- x_t = tU_ref: Taylor pseudo-axial coordinate; z = rθ: pseudo-span; k_z: spanwise wavenumber; θ (in spectra): local momentum thickness.
- λ_θ = 2π/m: azimuthal wavelength; R = D/2.
- λ, ψ: SPOD eigenvalue and eigenfunction; R (bold/calligraphic): resolvent operator; σ₁: leading resolvent gain; G(t): optimal transient growth; U_x: peak mean velocity at a station.
- Lipline: r/D = 0.5.

## Relevance to this project
The project studies resonance and feedback in jets with schlieren, acoustics and PIV (see CLAUDE.md). This paper is about broadband, non-resonant turbulence, but it matters for the background dynamics that coexist with resonant wavepackets.
- **Not every energetic SPOD peak is a wavepacket.** At m ≥ 3 (or non-zero spanwise wavenumber in non-axisymmetric jets) and St → 0, the most energetic SPOD content is streaks generated by lift-up, not KH waves (p. 13–14). When SPOD of lab data shows energy piling up at the lowest frequency bin, this is a likely explanation; it is distinct from the tonal screech/impingement peaks, which are KH-driven. The lowest bin of a Welch-based SPOD lumps together all dynamics slower than the block length (p. 13); keep this in mind when choosing n_fft.
- **Method vs data type:**
  - Domain-wide SPOD and the Taylor-hypothesis spectra need **time-resolved** data; the SPOD here also needs simultaneous two-plane data to get the cross-plane CSD. Time-resolved schlieren can do SPOD over (x, y) directly, but integrates along the line of sight, so azimuthal decomposition is not available as it is here.
  - For **non-time-resolved PIV**, only snapshot POD is possible. Earlier slice-by-slice POD (Jung et al. 2004; Tinney et al. 2008) already found energy peaking at non-zero m that shifts to lower m downstream (p. 4); this paper ties that to streaks. Planar PIV in the x–r plane would see streaks only as slow, long u′ patches, so they could contaminate low-order POD modes; transverse-velocity-only POD (as in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)) partly avoids them because streaks are mostly a u-component signature (forcing is v, w; response is u; p. 18).
  - Streak meandering appears as an x-oscillating second SPOD mode (p. 14). Their time variation (St → 0, slow) is the kind of low-frequency modulation that the SPOD → reconstruction → Hilbert POD pipeline could track if it modulates the resonant wavepacket amplitude. The paper does not use Hilbert or wavelet methods.
- **Modelling side:**
  - Local resolvent and transient growth on a measured mean-flow slice, with molecular Re only and a radially localising output norm, are enough to match the SPOD radial shapes for high m (p. 17–20). This is a cheap template for checking whether a measured low-frequency PIV structure is lift-up.
  - Limitations to remember: k_x = 0 parallel model cannot capture axial growth (fails in width for m = 3); measurement window r/D ≤ 0.8 truncates modes downstream (p. 21–22); no eddy viscosity. Compare with the eddy-viscosity choice (Re = 10³) used for the global analysis of screeching jets in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md).
  - SPOD ≈ resolvent implies near-white forcing at high m (p. 18). [morra-2021-colour-of-forcing-resolvent-channel.md](morra-2021-colour-of-forcing-resolvent-channel.md) examines when this whiteness assumption fails (in channels).
- **Follow-ups and related notes:** [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md) extends this to the full (St, m) map of lift-up, KH and Orr mechanisms in jets with LES and eddy-viscosity resolvent; check whether its conclusions refine the white-forcing and no-eddy-viscosity choices here. The SPOD estimator choices (block length vs low-frequency resolution) connect to [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md).
- **Non-axisymmetric and impinging jets:** the outlook links streaks to chevrons and non-circular nozzles, where steady streamwise vortices stabilise KH wavepackets (p. 23–24). For the lab's non-axisymmetric nozzles, nozzle corners or trailing-edge features (cf. [kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md)) may seed such streaks and alter the KH wave that drives screech.
- **Jitter:** a proposed streak–wavepacket interaction as a source of wavepacket jitter and coherence decay (p. 23) is relevant to intermittency and amplitude modulation of resonant tones.
