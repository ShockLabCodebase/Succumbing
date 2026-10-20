---
key: "farghadan-2026-wave-interactions-screeching-jet"
title: "Wave interactions in a screeching jet"
authors: ["Farghadan, A.", "Beekman, J.", "Nogueira, P.", "Edgington-Mitchell, D.", "Towne, A."]
year: 2026
type: "article"
venue: "JFM 1040, A40"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "1040", "pages": "A40"}
doi: "10.1017/jfm.2026.11818"
arxiv: ""
pdf: "screech/Farghadan-EtAl_2026_Wave-Interactions-In-A-Screeching-Jet.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility"
data: ["PIV"]
methods: ["LSA-global", "resolvent", "harmonic-resolvent", "POD", "POD-pair", "eddy-viscosity", "wavenumber-filtering"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "guided-jet-mode", "KH-wavepackets", "shock-cells", "triadic-interaction", "mean-flow-deformation", "global-mode"]
params: {"M_j": "1.12", "St": "0.714", "m": "0", "Re": "3.41e5", "D": "10 mm", "TR": "1"}
topics: ["screech", "linear-operator-methods", "linear-models"]
related: ["edgington-mitchell-2022-unifying-theory-jet-screech", "nogueira-2021-closure-mechanism-a1-a2-screech", "edgington-mitchell-2020-waves-in-screeching-jets", "nogueira-2021-wavepacket-modulation-shock-containing-jets", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "nogueira-2024-guided-jet-waves", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
cites: ["edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "nogueira-2025-screech-military-style-rectangular-nozzles", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "pickering-2021-optimal-eddy-viscosity-resolvent-jets", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "schmidt-2018-spectral-analysis-jet-turbulence", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Global, resolvent and bilinear harmonic-resolvent models on a PIV mean flow (M_j 1.12, m = 0): screech St 0.72 via k_kh − k_s2; self-interaction gives the harmonic sideline beams"
---
# Wave interactions in a screeching jet

- **Authors:** A. Farghadan, J. Beekman, P. Nogueira, D. Edgington-Mitchell, A. Towne (Farghadan, Towne: University of Michigan; Beekman, Nogueira, Edgington-Mitchell: Monash University; p. 1)
- **Source:** J. Fluid Mech. 1040, A40 (2026), doi:10.1017/jfm.2026.11818. Published open-access (CC BY) version. Received 5 Mar 2026, accepted 17 Jun 2026 (p. 1).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/Farghadan-EtAl_2026_Wave-Interactions-In-A-Screeching-Jet.pdf` (30 pp.)
- **Page refs:** PDF page n = printed page A40-n.
- **Tags:** screech, A1/A2-type axisymmetric (m = 0) screech, global stability, resolvent analysis, harmonic resolvent analysis, bilinear Navier–Stokes (specific volume–pressure), triadic interaction, nonlinear self-interaction forcing, multiple shock-cell wavenumbers (k_s1, k_s2, k_s3), guided jet mode, duct modes, screech harmonics, RSVD-Δt, eddy viscosity, PIV mean flow, non-time-resolved PIV, POD pair

## Summary
The paper builds a chain of four mean-flow-based global models of an m = 0 screeching round jet (M_j = 1.12) whose mean flow comes from non-time-resolved PIV in a Shock Lab group facility. Global stability analysis finds the screech mode as the least-damped eigenvalue at St = 0.72 (measured 0.714), plus two other lightly damped "screech-like" modes at St = 0.66 and 0.77 and a duct/guided-mode resonance at St = 0.31. Resolvent analysis gives sharp gain peaks at the same frequencies; the wavenumber spectra show that each peak is a KH–shock triad k_gj = k_kh − k_s with a *different* shock-cell wavenumber, and that the observed tone uses the first suboptimal shock peak k_s2, which is hidden in the broad primary peak of the mean-pressure spectrum. The resolvent screech mode (matched to the PIV POD pair in amplitude) is then added to the mean flow as a periodic base for harmonic resolvent analysis, written in a bilinear form so all inter-frequency coupling is purely triadic. This reproduces the mean-flow (shock-cell) correction and the sideline acoustic beams at 2St_s and 3St_s seen in experiments, which plain resolvent analysis misses. Finally, feeding the known self-interaction forcing B(q_T, q_T) through the harmonic resolvent gives responses that match the optimal harmonic modes frequency by frequency, so no unknown turbulent forcing is needed to explain the energy transfer to harmonics.

## Key findings
- **Eigenspectrum** (p. 11–13, Fig. 2–4):
  - Least-stable eigenvalue at St = 0.72, within 1 % of the acoustic screech St = 0.714 (p. 11). It is stable (ω_i slightly below zero in Fig. 2), so the screech must be sustained by forcing (p. 14).
  - Two more lightly damped discrete modes at St = 0.66 and 0.77 (green in Fig. 2), with KH wavepacket in the shear layer and guided jet mode in the core, like the screech mode but with different wavepacket length and wavenumber (p. 11–13).
  - A fourth discrete mode at St = 0.31 (cyan) has no KH component; it is a duct-mode / guided-jet-mode resonance in the potential core (Towne et al. 2017), with a centreline peak near x ≈ 7 at the turning point where the core contracts (p. 13–14).
  - Wavenumbers near screech: k_kh ∈ [5, 8] (phase speed ≈ 0.7U_j), peaking near the shear layer; k_gj ∈ [−6, −4] in the core, phase speed slightly below a_∞ (p. 13–14).
- **Resolvent gain** (p. 14–15, Fig. 5):
  - Leading gain has the broad subsonic-jet-like hump plus sharp peaks at St = 0.66, 0.72 and 0.77; the 0.72 peak is the highest.
  - Suboptimal gains are more than an order of magnitude lower; their main feature is a peak at the St = 0.31 duct resonance, which sits in the suboptimal direction because it is uncorrelated with broadband KH amplification (p. 15).
- **Multiple shock-cell wavenumbers close different loops** (p. 15–17, Fig. 1, 7):
  - The KH envelope moves upstream as St rises (lip-line pressure peaks closest to the nozzle for St = 0.77; Fig. 7a). All three show a standing-wave pattern (p. 15).
  - Shock-cell wavenumbers from a transform of the lip-line standing wave (method of Edgington-Mitchell et al. 2022): k_s = 10.7, 12.3, 13.2 for St = 0.66, 0.72, 0.77 (p. 15–16).
  - The mean centreline pressure spectrum shows visible peaks only at k_s = 11.0 and 13.1 (resolution Δk_s = π/25 ≈ 0.126). The authors argue the apparent first suboptimal peak (13.1) is actually the *second* suboptimal; the first is buried in the broad primary peak, because shock spacing shrinks downstream (p. 16–17).
  - The highest-gain mode (St = 0.72, the observed tone) is the KH interaction with k_s2; the 0.66 and 0.77 modes use the primary peak and the second suboptimal (p. 17). The authors say this is the first global stability/resolvent analysis to find modes tied to multiple shock-cell wavenumbers, and that the evidence rests on the standing-wave extraction, not on a resolved three-peak shock spectrum (p. 17).
- **Resolvent vs PIV** (p. 17, Fig. 8): the leading resolvent response at St_s closely matches the leading PIV POD mode (u and v). Normalised Chu inner products: eigenmode–resolvent 0.998; eigenmode–POD 0.89; resolvent–POD 0.89 (u, v only, on the PIV mesh).
- **Harmonic resolvent** (p. 18–22, Fig. 9–12):
  - Leading harmonic gain is more than 10× the second, but almost 10× smaller than the leading resolvent gain at St_s (p. 19).
  - The optimal mode spreads energy over St = 0, ±St_s, ±2St_s, ±3St_s; the zeroth and first (±St_s) components hold "nearly half" the energy (p. 20; Fig. 9b).
  - At St_s the harmonic and standard resolvent responses are near-collinear (inner product 0.97): the easiest thing to force is a modification of the screech mode itself (p. 20).
  - At St = 0 the response is a shock-cell modification confined to where the screech mode is active; standard resolvent at St = 0 gives low-gain, poorly converged, partly unphysical structures (p. 20–21).
  - At 2St_s (called the "first harmonic" in the paper) the harmonic mode has a wavepacket plus acoustic waves radiating perpendicular to the jet axis, seen in Powell (1953b) but never before captured by linearised models; standard resolvent gives a near-nozzle KH wavepacket and higher-radial-order guided modes instead (p. 21).
  - At 3St_s (the "second harmonic") the harmonic mode has a concentrated wavepacket and an acoustic beam consistent with Tam et al. (2014); standard resolvent gives direct acoustic radiation (p. 21).
  - Forcing modes: at St_s both analyses give slanted near-nozzle structures (KH receptivity) plus distributed acoustic-like structures (guided-mode receptivity). At 2St_s and 3St_s the resolvent forcing is direct acoustic forcing, whereas the harmonic forcing shows tilted KH-forcing structures, so the harmonic responses come from energy transfer via the screech mode, not direct linear amplification (p. 21–22).
- **Wavenumber content of harmonic modes** (p. 22–23, Fig. 12):
  - St_s: like the resolvent spectrum, with weaker core-confined peaks at k_kh − (k_s1 + k_s2) and k_kh + k_s1, consistent with downstream duct modes.
  - St = 0: real, mirror-symmetric spectrum with peaks at k_s2, k_s3 and sum/difference combinations, regularly spaced by Δk ≈ 11 starting at k_mod = 15 = 2k_kh (k_kh ≈ 7.5). Interpreted as two-way coupling: shocks modulate the wavepacket, and the modulated wavepacket's self-interaction modifies the mean flow (p. 22–23).
  - 2St_s: KH at twice the fundamental wavenumber plus peaks at k_kh − k_s1 (strong outside the jet) and k_kh − k_s2 (strongest in the core); these near-zero wavenumbers match the sideline beam. **k_s2 closes the loop, but most sideline radiation of the harmonic comes from k_kh − k_s1** (p. 23). Also upstream radiation at k_kh − (k_s1 + k_s2).
  - 3St_s: KH peak at k_x ≈ 21 (≈3× fundamental); strongest secondary peaks at k_kh − (k_s1 + k_s2) and k_kh − (2k_s1 + k_s2) (p. 23).
- **Nonlinear self-interaction forcing** (p. 23–25, Fig. 13–14):
  - f_nl = B(q_T, q_T) is non-zero only at St = 0 and ±2St_s; ‖f_nl‖² = 38.0, response ‖q_nl‖² = 25.6 (attenuated) (p. 23–24).
  - Triadic coupling in H puts response energy at St_s and 3St_s even though f_nl is zero there (p. 24).
  - Per-frequency inner products between q_nl and the optimal harmonic response exceed 0.95 for |i| ≤ 3, but the full concatenated inner product is only 0.36, because the SVD picks the inter-frequency phases that maximise gain whereas q_nl inherits the phases of the real self-interaction; the authors call this phase difference meaningful (p. 24–25).
  - Conclusion: the screech mode's self-interaction plus triads explain the shock-cell modification, the screech-mode modification and the harmonic acoustic beams, with no appeal to background turbulence (p. 25).
- **Cost** (p. 18–19, 26): harmonic resolvent with RSVD-Δt took < 2 h on 200 cores with ≈ 50 GB; RSVD-LU needed ≈ 3.5 TB for just {0, St_s}. Applying H to f_nl takes several minutes.

## Setup / method
- **Experiment** (p. 4–5): Shock Lab group facility. The paper calls it the Supersonic-Jet Anechoic Facility at Monash University (Beekman et al. 2024; Nogueira et al. 2024b) and doesn't name the lab space.
  - Round converging nozzle, D = 10 mm, 3D-printed in Phrozen Aqua 8K resin (Phrozen Sonic Mighty 8K), on a plenum. Unheated.
  - M_j = 1.12, M_a = U_j/a_∞ = 1, Re = ρ_j U_j D_j/μ_j ≈ 3.41 × 10⁵ (Sutherland viscosity). Screech St = fD_j/U_j = 0.714 from acoustic measurements; m = 0 (p. 4). NPR is not stated.
  - **PIV, not time-resolved:** 3000 single-exposure image pairs at 1.66 Hz; 12-bit Imperx B6640M (6600 × 4400 px), 300 mm Nikkor lens, 45 mm extension rings, 16.4 µm/px; Quantel Evergreen Nd:YAG at 532 nm, 1 mm sheet; atomised paraffin seeding 0.6–0.8 µm in the settling chamber (p. 4).
  - Processing in PIVLab (multigrid, Soria 1996): 128 → 32 px windows; CLAHE and Wiener filter (3 px) preprocessing; normalised median test threshold 2.5; vectors > 5σ from the mean replaced by the mean (p. 4–5). Field of view to x ≈ 10D_j (p. 10, Fig. 1).
  - Mean u, v from PIV; mean pressure and specific volume via Crocco–Busemann plus equation of state (p. 5).
  - Snapshot POD on velocity; the leading pair (u symmetric about the axis for m = 0) is identified as the screech mode by matching to the acoustic spectrum, since the PIV has no time information (p. 5).
- **Linear operator** (p. 10–11):
  - State q = [ξ, u, v, w, p] with ξ = 1/ρ, scaled by 1/ρ̄_∞, a_∞, ρ̄_∞a_∞², lengths by D_j. With T ∝ pξ, every nonlinear term is a product of two state components, so NS is exactly bilinear (Towne 2016).
  - Axisymmetric m = 0, normal modes in θ and t.
  - Domain x × r ∈ [0, 15] × [0, 3]. PIV mean flow extended from x = 10 to 15 with a self-similar profile (Pope 2000 §5.2). Sponge layers at inlet, outlet and far field.
  - Grid N_x × N_r = 700 × 300, refined (350 × 65 non-uniform) in [0, 4] × [0, 0.7]. Fourth-order summation-by-parts FD (Mattsson & Nordström 2004). Mesh check on 400 × 200: small differences.
  - Eddy-viscosity surrogate: reduced Re = 1000 in the linear operator, after Pickering et al. (2021). The POD match is the a posteriori justification (p. 11).
  - Chu energy norm for both forcing and response, transformed to the ξ–p variables via a Jacobian (Appendix A). Non-diagonal weight, so Cholesky factors used (Herrmann et al. 2021). Output C over [0, 15] × [0, 3]; input B over [0, 15] × [0, 1]; sponge excluded (p. 11).
- **Resolvent** (p. 14): St ∈ [0.2, 1], ΔSt = 0.01; RSVD-LU with k = 5 test vectors, q = 2 power iterations.
- **Harmonic resolvent** (p. 18–19):
  - Periodic base q̄_T = q̄ + q_T, q_T = A_s Re(q̂₁ᴿ e^{i2πSt_s t}), St_s = 0.72, A_s ≈ 0.29, set by matching the u, v norm of the resolvent mode to the leading POD mode on the PIV mesh.
  - Because the base has one frequency and the system is bilinear, T has only Â_{p,0} and Â_{p,±1} blocks.
  - RSVD-Δt (Farghadan et al. 2024a,b): k = 10, q = 1; RK4, Δt = 0.011, transient T_t = 250, with transient removal. Frequencies {0, St_s, 2St_s, 3St_s, 4St_s} (and conjugates), converged by 3St_s. N = 5 × 700 × 300 = 1.05 × 10⁶ per frequency, 9N ≈ 9.45 × 10⁶ rows.
- **Nonlinear forcing** (p. 9–10, 23): q̂_nl = H f̂_nl with f̂_nl = B(q_T, q_T), action of H computed by time stepping.

## Key equations
- Bilinear NS (eq. 2.1, p. 5): $\partial_t \mathbf q = \mathcal B(\mathbf q, \mathbf q)$.
- Mean-flow linearisation (eqs. 2.3–2.6, p. 6): $\partial_t \mathbf q' = \mathbf A(\bar{\mathbf q})\mathbf q' + \mathbf B\mathbf f$, with $\mathbf A\mathbf q' = \mathcal B(\bar{\mathbf q},\mathbf q') + \mathcal B(\mathbf q',\bar{\mathbf q})$ and $\mathbf B\mathbf f = \mathcal B(\bar{\mathbf q},\bar{\mathbf q}) + \mathcal B(\mathbf q',\mathbf q')$.
- Eigenproblem (eq. 2.9): $\mathbf A\hat{\mathbf q} = -i\omega\hat{\mathbf q}$, ω_i > 0 unstable.
- Resolvent (eqs. 2.10–2.11): $\hat{\mathbf y} = \mathbf C\mathbf R(\omega)\mathbf B\hat{\mathbf f}$, $\mathbf R = (-i\omega\mathbf I - \mathbf A)^{-1}$; gain $\sigma^2 = \|\hat{\mathbf y}\|_y^2/\|\hat{\mathbf f}\|_f^2$ (2.12).
- Weighted operator with Cholesky factors $\mathbf W = \mathbf F^*\mathbf F$ (eq. 2.15, p. 7): $\tilde{\mathbf R} = \mathbf F_y\mathbf C(-i\omega\mathbf I - \mathbf A)^{-1}\mathbf B\mathbf F_f^{-1}$; modes $\mathbf U = \mathbf F_y^{-1}\tilde{\mathbf U}$, $\mathbf V = \mathbf F_f^{-1}\tilde{\mathbf V}$ (2.17).
- Periodic-base linearisation (eqs. 2.18–2.22, p. 8): $\mathbf q = \bar{\mathbf q} + \mathbf q_T + \mathbf q'$; $\partial_t\mathbf q' = \mathbf A_T(t)\mathbf q' + \mathbf B\mathbf f$ with $\mathbf A_T\mathbf q' = \mathcal B(\bar{\mathbf q}+\mathbf q_T,\mathbf q') + \mathcal B(\mathbf q',\bar{\mathbf q}+\mathbf q_T)$ and $\mathbf B\mathbf f = \mathcal B(\bar{\mathbf q},\bar{\mathbf q}) + \mathcal B(\mathbf q_T,\mathbf q_T) - \mathbf f_T + \mathcal B(\mathbf q',\mathbf q')$, where $\mathbf f_T = \partial_t\mathbf q_T - \mathbf A(\bar{\mathbf q})\mathbf q_T$ (a mathematical residual, not a physical forcing).
- Fourier expansion (eq. 2.23): $\mathbf A_T = \sum_j \hat{\mathbf A}_{p,j}e^{-ij\omega_f t}$, $\mathbf q' = \sum_j \hat{\mathbf q}_j e^{-ij\omega_f t}$; harmonic system $\mathbf T\hat{\mathbf q} = \mathbf B\hat{\mathbf f}$, $\mathbf H = \mathbf T^{-1}$, $\hat{\mathbf y} = \mathbf C\mathbf H\mathbf B\hat{\mathbf f}$ (2.24–2.25); SVD of $\mathbf F_y\mathbf C\mathbf H\mathbf B\mathbf F_f^{-1}$ (2.26).
- Nonlinear forcing response (eqs. 2.28–2.29, p. 9): $\hat{\mathbf f}_{nl} = \mathcal B(\mathbf q_T,\mathbf q_T)$, $\hat{\mathbf q}_{nl} = \mathbf H\hat{\mathbf f}_{nl}$.
- Triad (eq. 3.3, p. 16): $k_{gj} = k_{kh} - k_s$, with $k_s \in \{k_{s1}, k_{s2}, k_{s3}\}$ (primary, first and second suboptimal).
- Periodic base (eq. 3.4, p. 18): $\bar{\mathbf q}_T = \bar{\mathbf q} + \mathbf q_T$, $\mathbf q_T = A_s\,\mathcal R(\hat{\mathbf q}^R_1 e^{i2\pi St_s t})$, A_s ≈ 0.29. Note the sign of the exponent is positive here, opposite to the e^{−iωt} convention of eq. 2.8.
- Total energy over harmonics (eq. 3.5, p. 24): $\|\hat{\mathbf q}\|^2 = \sum_{i=-3}^{3}\|\hat{\mathbf q}_i\|^2$.
- Chu weight in (ρ, u_a, v_a, w_a, T) variables (eq. A1, p. 27) and the transformed weight W = J* W_c J (A6) with the Jacobian (A8) and final W (A9), using T = γ p ξ-type relation (A5).

> Equations were rebuilt from garbled text extraction, with eq. 3.4 checked against a render of p. 18. The Appendix A matrices (A1, A8, A9) did not extract cleanly and are not transcribed; read them from p. 27–28 before coding the Chu norm in ξ–p variables. The exact form of (A5) (where γ and M_a appear) also needs checking on p. 27.

## Data tables
**Case** (p. 4): M_j 1.12, M_a 1.0, Re 3.41 × 10⁵, St_s 0.714 (acoustic), m = 0, D = 10 mm, unheated.

**Modes and wavenumbers**

| St | Eigen/resolvent role | k_s used (from lip-line standing wave) | Triad |
|---|---|---|---|
| 0.31 | duct / guided-mode resonance (suboptimal resolvent peak) | — | no KH |
| 0.66 | lightly damped, resolvent peak | 10.7 | k_kh − k_s1 (primary) |
| 0.72 | least damped, highest gain, observed tone | 12.3 | k_kh − k_s2 (first suboptimal) |
| 0.77 | lightly damped, resolvent peak | 13.2 | k_kh − k_s3 (second suboptimal) |

Sources: p. 11–17. The assignment of 0.66 to the primary and 0.77 to the second suboptimal is my reading of "the others correspond to interactions between the primary shock peak and the second suboptimal" (p. 17) together with the k_s ordering; check Fig. 7(b,d).

Mean-pressure centreline spectrum peaks: k_s ≈ 11.0 and 13.1, Δk_s = π/25 ≈ 0.126 (p. 16–17). Shock-cell spacings marked in Fig. 1a: 0.63, 0.60, 0.60, 0.56, 0.56, 0.54, 0.50, 0.45, 0.45, 0.45, 0.36 (x/D_j, read from figure; p. 5).

**Approximate values read from figures** (verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| Leading resolvent gain σ₁² at St 0.72 / 0.66 / 0.77 | ≈ 2 × 10⁵ / 3 × 10⁴ / 8 × 10³ | Fig. 5, p. 14 |
| Broadband hump in σ₁² | ≈ 3.5 × 10⁴ at St ≈ 0.42 | Fig. 5 |
| Suboptimal peak at St 0.31 | ≈ 1.2 × 10³ | Fig. 5 |
| Leading harmonic gain σ₁² | ≈ 4 × 10⁴ (second ≈ 6 × 10³) | Fig. 9a, p. 19 |
| Optimal harmonic response energy at ±St_s | ≈ 0.4 each (total = 1) | Fig. 9b |
| Lip-line |p| peak (resolvent, r = 0.5) | x ≈ 2–2.6, 0.77 closest to nozzle | Fig. 7a, p. 16 |
| Least-damped eigenvalue ω_i a_∞/D_j | ≈ −0.01 (St 0.72); ≈ −0.06, −0.07 for 0.66, 0.77; ≈ −0.03 for 0.31 | Fig. 2, p. 12 |

## Figures worth remembering
- **Fig. 1 (p. 5):** PIV mean u with shock-cell spacing labels (spacing shrinks downstream), and the centreline mean-pressure wavenumber spectrum with its broad peak near 11.
- **Fig. 2 (p. 12):** global eigenspectrum, St 0.2–1; red screech mode, green 0.66/0.77, cyan 0.31.
- **Fig. 3–4 (p. 12–13):** eigenmode u, p and their k_x–r spectra with ±a_∞ lines.
- **Fig. 5 (p. 14):** resolvent gain spectrum with three sharp screech peaks on the broadband KH hump.
- **Fig. 7 (p. 16):** lip-line |p| standing waves and k_x spectra with k_kh − k_sn lines; the key evidence for multiple shock wavenumbers.
- **Fig. 8 (p. 17):** PIV POD mode vs resolvent mode at St_s (u and v).
- **Fig. 9 (p. 19):** harmonic gains vs mode index and energy distribution over St/St_s.
- **Fig. 10–11 (p. 20–21):** resolvent vs harmonic resolvent response and forcing at 0, St_s, 2St_s, 3St_s; sideline beams at harmonics.
- **Fig. 12 (p. 22):** harmonic-mode k_x spectra with acoustic and triad lines.
- **Fig. 13–14 (p. 23–24):** f_nl and q_nl energy over frequency and their pressure fields.

## Notation
- ξ = 1/ρ specific volume; q = [ξ, u, v, w, p]; 𝓑 bilinear NS operator; A linearised operator; A_T time-periodic operator; T block harmonic operator; H = T⁻¹ harmonic resolvent.
- k_kh, k_gj, k_s: KH, guided-jet-mode and shock-cell streamwise wavenumbers (rad per D_j). k_s1, k_s2, k_s3: primary, first suboptimal, second suboptimal shock peaks.
- St_s = 0.72 model screech St; "first harmonic" = 2St_s and "second harmonic" = 3St_s in the paper's wording.
- A_s: screech amplitude relative to the mean; f_nl: self-interaction forcing; q_nl: its response.
- RSVD-LU / RSVD-Δt: randomised SVD with LU solves / with time stepping.

## Relevance to this project
This is a Shock Lab group collaboration (Monash experiments, Michigan modelling) and the most complete linear-model account so far of how the screech loop, the shock cells and the screech harmonics interact. See CLAUDE.md for the research scope.

- **Data dependence of the methods:**
  - Only a mean flow and a POD pair are needed from experiment, so **non-time-resolved PIV** is enough: 3000 pairs at 1.66 Hz (p. 4). The POD pair is tied to the screech frequency by the acoustic spectrum, not by the PIV (p. 5). The paper does not show the POD-pair phase portrait or energy; check this ring before trusting a pair (see [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)).
  - The POD pair also sets the amplitude A_s of the periodic base (u, v norms on the PIV mesh only; p. 18). This is a simple, reusable way to calibrate a model amplitude from snapshot PIV.
  - Thermodynamic mean fields come from Crocco–Busemann, a common assumption for unheated jets that is not checked here.
  - The k_x spectra of complex modes, and the lip-line standing-wave transform for k_s, apply equally to a **time-resolved schlieren SPOD mode** at the tone. On schlieren the standing-wave trick avoids having to resolve the broad shock spectrum.
- **Multiple shock wavenumbers:** this backs [edgington-mitchell-2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) (the standing wave picks the k_s that closes the loop) with global models, and extends [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) (A1/A2 jump via a secondary shock wavenumber): the 0.66, 0.72 and 0.77 modes are candidate loops on k_s1, k_s2, k_s3 that coexist in the linear operator. That is relevant to staging, mode switching and intermittency in lab data: competing loops appear as nearby lightly damped eigenvalues and resolvent peaks. The paper does not analyse time variation; tracking which loop is active over time would need SPOD → reconstruction → Hilbert POD ([raiola-2025](raiola-2025-hilbert-pod.md)) or wavelets ([torrence-1998](torrence-1998-practical-guide-wavelet-analysis.md)) on time-resolved data.
- **Harmonics and triads:** the harmonic-resolvent result (harmonic beams from k_kh − k_s1, with k_s2 closing the loop; p. 23) is a model prediction to test in data. With time-resolved schlieren or microphones, **BMD** ([schmidt-2020-bispectral-mode-decomposition](schmidt-2020-bispectral-mode-decomposition.md)) can measure the St_s + St_s → 2St_s and St_s − St_s → 0 triads directly and compare the cross-frequency fields with Fig. 10–12. Bicoherence ([stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md)) is a cheaper point-measurement check.
- **Modelling side:**
  - Agrees with [edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md) (global stability on a PIV mean flow, k_kh − k_s guided mode) but finds several discrete screech-like modes, not one.
  - Uses the duct-mode resonance of [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md) and [schmidt-2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md) to explain the St = 0.31 mode.
  - Eddy viscosity as a constant Re = 1000 follows [pickering-2021](pickering-2021-optimal-eddy-viscosity-resolvent-jets.md); resolvent jet background in [schmidt-2018](schmidt-2018-spectral-analysis-jet-turbulence.md), [lesshafft-2019](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md) and [towne-2018](towne-2018-spod-relationship-dmd-resolvent.md).
  - The nonlinear-forcing step is the screech analogue of [morra-2021](morra-2021-colour-of-forcing-resolvent-channel.md): using a known part of the forcing instead of assuming white forcing.
  - Shock modulation of the wavepacket (the Δk ≈ 11 comb at St = 0) is the mechanism of [nogueira-2021-wavepacket-modulation-shock-containing-jets](nogueira-2021-wavepacket-modulation-shock-containing-jets.md); the self-excited view is [nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md). Phase-model alternatives: [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md), [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md).
  - Limits: m = 0 only, 2D axisymmetric operator, mean flow from PIV (resolution near the lip and in the shocks), eddy viscosity tuned only a posteriori, harmonic truncation at 4St_s. The screech eigenmode is stable, so the model needs forcing to sustain screech.
- **Impinging and non-axisymmetric jets:** the bilinear harmonic-resolvent workflow is pitched for any flow dominated by a periodic mode (p. 26), e.g. impinging-jet tones ([weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)) and rectangular or twin-jet screech, where 3D operators would need RSVD-Δt scaling.
- **Candidates for `/add-paper`:** Padovan, Otto & Rowley 2020 (harmonic resolvent); Farghadan et al. 2024a,b (RSVD-Δt); Nogueira et al. 2024a (Guided-jet waves, JFM 999); Tam, Parrish & Viswanathan 2014 (screech harmonics); Beneddine et al. 2015; Islam & Sun 2024; Beekman et al. 2024 and Nogueira et al. 2024b (same Monash facility); Karban et al. 2020.
