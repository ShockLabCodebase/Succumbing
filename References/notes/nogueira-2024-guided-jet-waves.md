---
key: "nogueira-2024-guided-jet-waves"
title: "Guided-jet waves"
authors: ["Nogueira, P. A. S.", "Cavalieri, A. V. G.", "Martini, E.", "Towne, A.", "Jordan, P.", "Edgington-Mitchell, D."]
year: 2024
type: "article"
venue: "JFM 999, A47"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "999", "pages": "A47"}
doi: "10.1017/jfm.2024.797"
arxiv: ""
pdf: "Nogueira-EtAl_2024_Guided-Jet-Waves.pdf"
version: "published"
unverified: []
group: true
facility: ""
data: ["model-only"]
methods: ["vortex-sheet", "LSA-local"]
flow: ["round-jet", "subsonic", "supersonic", "planar-jet"]
phenomena: ["guided-jet-mode", "screech", "impingement-tones", "edge-tones"]
params: {"M": "0.6–1.2 (acoustic Mach U/c∞)", "T": "1 (isothermal)"}
topics: ["linear-models", "screech", "impinging-jets-and-edge-tones"]
related: ["edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "jordan-2018-jet-flap-interaction-tones", "mancinelli-2021-complex-valued-resonance-model-screech", "edgington-mitchell-2022-unifying-theory-jet-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "weightman-2019-sound-production-impinging-supersonic-jets", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "henderson-2002-flow-structure-supersonic-impinging-jets", "jordan-2018-jet-flap-interaction-tones", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "nogueira-2021-wavepacket-modulation-shock-containing-jets", "raman-1998-supersonic-jet-screech-review", "samimy-1998-rectangular-jet-trailing-edge-control", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "wong-2021-wavepacket-modelling-bbsan"]
summary: "Guided-jet mode is in-jet sound totally reflected by the shear layer (impedance duct); fits vortex-sheet branches; screech always needs it, impingement only for in-core sources"
---
# Guided-jet waves

- **Authors:** P. A. S. Nogueira, A. V. G. Cavalieri, E. Martini, A. Towne, P. Jordan, D. Edgington-Mitchell (Monash; ITA, São José dos Campos; Institut PPrime, Poitiers; University of Michigan)
- **Source:** J. Fluid Mech. 999, A47 (2024), doi:10.1017/jfm.2024.797. Published open-access version (CC BY 4.0). Received 19 Nov 2023, accepted 25 Jun 2024.
- **PDF:** `References/Paper_PDFs/Nogueira-EtAl_2024_Guided-Jet-Waves.pdf` (39 pp.)
- **Page refs:** PDF page n = printed page "999 A47-n".
- **Tags:** guided jet mode (k_TH⁻, k_p⁻), duct-like modes, upstream-travelling wave, acoustic scattering, total internal reflection, shear-layer impedance, soft/hard-wall duct, vortex sheet (single, double, cylindrical), branch point, saddle point, energy flux, screech, impingement tones, subsonic jet resonance, oblique waves, theory only

## Summary
The paper explains what the guided-jet mode, the upstream wave that closes screech and many impingement and edge-tone loops, actually is. Instead of treating it only as an eigenvalue of a vortex-sheet stability problem, the authors pose an acoustic-scattering problem: plane acoustic waves hitting a single planar vortex sheet from either side, with reflection coefficient χ and transmission coefficient τ (p. 4–9). Waves from outside the jet cannot put energy into the core when travelling directly upstream, but waves generated inside the flow are totally reflected over a triangle of (ω, α) space. Their standing-wave pattern, forced to fit an integer number of half-wavelengths across the jet, reproduces the double-vortex-sheet (DVS) guided-jet dispersion relation exactly (p. 14–22, App. A). The shear layer acts as a duct wall whose impedance runs from hard-wall at the sonic line to soft-wall at large |α|, so the branch points sit on hard-wall duct curves and the high-|α| part follows the soft-duct mode of Towne et al. 2017 (p. 19–22). A streamwise energy-flux calculation shows the evanescent field transmitted outside carries enough upstream energy near the sonic line to make the net flux upstream, which sets the group-velocity sign and approximately locates the saddle points (p. 23–28). Oblique and round-jet extensions follow (p. 28–30), and a closing section argues that screech always needs the guided-jet mode because its upstream wave is generated inside the jet, whereas impingement tones need it only when the upstream source sits in the jet core (p. 30–33).

## Key findings
- **Nature of the wave** (p. 30, 32, 34): the guided-jet mode is "an acoustic wave generated within the flow" (p. 32) that is totally reflected by the shear layer, which behaves like a duct wall with a given impedance. Only discrete α are allowed because the standing wave inside the jet must fit between the two shear layers. Guided-jet and duct-like modes in the negative-α half-plane are unified as "acoustic duct-like modes", extending Martini et al. (2019) (p. 34).
- **Waves from outside can't create it** (p. 14): for waves incident from the quiescent side, τ_o → 0 and χ_o → −1 as c → −1 (wave travelling directly upstream), so incident and reflected waves cancel. No linear mechanism lets a plane wave travelling parallel to the jet produce pressure inside it, so the core-dominated guided-jet structure cannot come from external free-stream sound.
- **There is a no-reflection angle** for outside-incident waves; those (ω, α) pairs are also solutions of the single-vortex-sheet (SVS) dispersion relation (p. 14, Fig. 8).
- **Waves from inside: total reflection band** (p. 15–17, Fig. 9–10):
  - Between the sonic line α = −ω and α = −ω/(√T − M), waves are oscillatory in the flow but decaying in y outside; there |χ_i| = 1 (total reflection, as in Keller 1955 and Miles 1957).
  - At α = −ω, χ_i = 1 and τ_i = 2, the maximum transmission. |τ_i| then drops quickly as |α| increases (p. 16).
  - |τ| > 1 is possible because the model does not enforce energy conservation; energy is drawn from the mean flow (p. 16).
  - The response amplitude inside the flow is much larger for subsonic c (c > −1) than for supersonic c, i.e. trapped waves give the highest flow response (p. 17, Fig. 12).
- **Standing-wave argument recovers the DVS exactly** (p. 19–22, Fig. 15; App. A p. 35–36): with χ_i = e^{iφ}, imposing symmetric/antisymmetric fit across width h gives eq. (4.5), the planar impedance-duct dispersion relation. The resulting (ω, α) pairs (red squares, Fig. 15) lie on the DVS guided-jet branches for M = 0.8 and 1.2, which the authors call "final proof" for the planar jet (p. 22). Appendix A shows (4.5) and (2.23) are algebraically identical.
- **Impedance of the shear layer** (p. 20–21, Fig. 13–14): in the total-reflection region Z is purely imaginary; φ goes from 0 near the sonic line (Z_im → −∞, hard wall) to −π for incidence near 90° (Z → 0, soft wall). For supersonic phase speeds Z_im ≈ 0 except near c = −1, where Z_re and Z_im both blow up.
- **Branch points sit on hard-wall duct curves** (p. 21–23, Fig. 15–16): the branch point (always on α = −ω) is where the hard-wall duct relation meets the sonic line; closed forms are eqs. (4.7)–(4.8). No branch point exists for M < √T − 1. These are the planar equivalents of Tam & Norum (1992) and agree with Gojon et al. (2019) (p. 23). The high-|α| end follows the soft-wall duct, as Towne et al. (2017) found for round jets (p. 20).
- **Direction of propagation from energy flux** (p. 23–28, Fig. 17–19):
  - The transmitted outside field always carries energy upstream (90° ≤ θ_o ≤ 180°) (p. 23).
  - Inside the flow, the sign depends on incidence angle; eq. (5.2) gives the phase speed c₀ for zero streamwise energy transport (p. 23–24).
  - Near the sonic line the outside flux dominates (zone 1, Fig. 17c); its magnitude peaks at α = −ω because transmission is maximal and the wave is still oscillatory in y (p. 24).
  - Net-flux sign matches the slope (group velocity) of the DVS branches: negative slope sits in negative-flux regions, positive slope in positive (p. 26, Fig. 17d). Zero-net-flux lines lie close to, but not exactly on, the DVS saddle points; the mismatch may come from the Rienstra & Hirschberg flux definition (p. 27).
  - This explains why the guided-jet mode travels upstream even in supersonic jets, where all waves inside the flow carry energy downstream: near the sonic line the outside flux outweighs the inside flux (p. 26–27).
- **Mach-number regimes** (p. 26, Fig. 18–19): M = 0.6: c₀ lies beyond the sonic line, so all subsonic waves are upstream and all DVS discrete modes are upstream (cf. Jordan et al. 2018). As M rises (0.7, 0.9) the c₀ line crosses the sonic line and downstream (duct-like) parts appear. At M = 1.2 every wave inside the flow carries energy downstream. The interesting regime is 0.8 ≤ M < 1 (p. 26).
- **Oblique waves** (p. 28–30, Fig. 20): with spanwise wavenumber β, the total-reflection region becomes a curved shape, the first branch starts at (ω, α) = (β, 0), the first symmetric mode loses its upstream-travelling region near the branch point (soft-duct-like only), and no guided-jet mode exists under (ω − αM)²/T − (α² + β²) = 0. The conclusions suggest that breaking spanwise symmetry in high-aspect-ratio rectangular jets (chevrons, vortex generators, as in Samimy et al. 1998) might mitigate resonance (p. 34).
- **Round jets** (p. 30–31, Fig. 21): the cylindrical vortex sheet (CVS) matches the soft-duct relation at higher frequency. For m = 0 the branch point is bounded by the hard-duct relation J₀′(γ_i/2) = 0, matching the cut-off points of Tam & Hu (1989) and Tam & Ahuja (1990). For m = 1 the branch point lies at a clearly higher frequency than the hard-duct prediction: eq. (6.3) mixes soft- and hard-duct terms, i.e. a duct with complex impedance between −i∞ and 0 (p. 30).
- **Why screech needs the guided-jet mode, impingement only sometimes** (p. 31–33):
  - No published case shows screech where the guided-jet mode is not supported; impingement evidence is mixed (p. 31).
  - Earlier argument (Edgington-Mitchell & Nogueira 2023): the guided-jet mode is a more "efficient" upstream carrier, and strong impingement tones can afford a less efficient free-stream wave. The authors now offer a different explanation (p. 32).
  - In screech, the Tam & Tanna (1982) triadic KH–shock interaction (evidence in Edgington-Mitchell et al. 2022) happens inside the shear layer, bounded by the sonic line, so the upstream wave is generated inside the jet and must pass through the total-reflection/transmission filter. Screech therefore needs a flow region that supports the guided-jet mode (p. 32).
  - Resonance closure is distinguished from far-field sound generation, which may be shock leakage (Suzuki & Lele 2003; Shariff & Manning 2013; Edgington-Mitchell et al. 2021b); the split between them is open (p. 32).
  - The discrete nature of the mode is essential to treating screech as an absolute instability (Nogueira et al. 2022c) (p. 32).
  - Impinging jets: Henderson et al. (2005) placed the upstream source at wall-jet fluctuations 1.3D from the impingement point, and Weightman et al. (2017) saw a transient shocklet there producing an upstream wavefront, i.e. outside the jet, so the guided-jet mode is irrelevant. In the nearly ideally expanded LES of Bogey & Gojon (2017) and Varé & Bogey (2023) the source is at the impingement point inside the core, so the mode is required (p. 33).
- **Credit to Tam:** the authors stress that triadic interaction and the waveguide picture of the jet were predicted or suggested in Tam's work (Tam & Tanna 1982; Tam et al. 1986; Tam & Hu 1989; Tam & Ahuja 1990; Tam & Norum 1992) (p. 32).

## Setup / method
Purely theoretical; no new experiments or simulations.

- **Governing equations** (p. 4): 2-D Cartesian linearised compressible Euler equations in (ν, u, v, p), with ν specific volume, mean flow U(y) only, normal-mode ansatz q(y) exp(−iωt + iαx). Normalised by ambient sound speed c∞, specific volume ν∞ and length h (distance between the two shear layers of a planar jet). Splitting the domain into uniform-velocity regions gives eq. (2.5).
- **Parameters:** acoustic Mach number M = U/c∞; temperature ratio T. Outer region M_o = 0, T_o = 1; inner M_i = M, T_i = T. All results are isothermal (T = 1); the authors state the guided-jet features are essentially independent of T (p. 5). Most plots use M = 0.8, chosen because two saddle points appear near it (p. 13); M = 0.6, 0.7, 0.9, 1.2 for the Mach study (p. 26).
- **Three models** (Fig. 1, p. 5):
  - **SVS acoustic scattering**: input real (ω, α), output χ and τ. Pressure and sheet displacement matched at y = 0. Two cases: waves from the quiescent side (§ 2.1.1, following Campos & Kobayashi 2000) and from the flow side (§ 2.1.2). No nozzle edge or Kutta condition, to stay consistent with the local stability problem (p. 7).
  - **DVS (planar jet) stability**: input real ω, output complex α; Lessen et al. (1965) symmetric/antisymmetric dispersion relation (2.23), as in Martini et al. (2019).
  - **CVS (round jet) stability**: eq. (2.24), as in Lessen et al. 1965, Michalke 1970, Towne et al. 2017.
- **Assumptions:** inviscid, locally parallel, infinitely thin shear layer, no shocks. The paper notes locally parallel shock-free models still predict the guided-jet mode well for shock-containing jets (Edgington-Mitchell et al. 2018; Gojon et al. 2018; Mancinelli et al. 2019, 2021; Nogueira et al. 2022b, which compared mean-flow, vortex-sheet and periodic models), though shock-cell modulation can alter its shape (Nogueira et al. 2022a) (p. 12).
- **Classification of waves** (p. 13): "oscillatory" vs "decaying" refers to y behaviour (propagative/evanescent in acoustics terminology); chosen to avoid confusion with x-stability.
- **Energy flux** (p. 24): Rienstra & Hirschberg (2002) intensity, eq. (5.4), integrated over y ∈ [−h/2, 0] in the flow and [0, ∞) outside. The authors note intensity is not well defined in linearised acoustics with flow (Morfey 1971), so it is a proxy for the Briggs–Bers direction.
- **Oblique extension** (p. 28): add e^{iβz}; γ² gains + β².

## Key equations
Notation: ω, α real in the scattering problem; γ_{i,o} radial (y) wavenumber-like parameters; χ reflection, τ transmission coefficient.

- Pressure equation in each uniform region (eq. 2.5, p. 4) and solution (eqs. 2.6–2.7, p. 5):
  $$\frac{d^2 p_{i,o}}{dy^2} - \left[\alpha^2 - \frac{(\omega-\alpha M_{i,o})^2}{T_{i,o}}\right]p_{i,o} = 0,\qquad p_{i,o} = A_{i,o}e^{\gamma_{i,o}y} + B_{i,o}e^{-\gamma_{i,o}y},\qquad \gamma_{i,o} = \sqrt{\alpha^2 - \frac{(\omega-\alpha M_{i,o})^2}{T_{i,o}}}$$
  (2.7 is printed as γ = i·√((ω − αM)²/T − α²); same thing. Branch cut Im(γ) ≥ 0, p. 5.)
- SVS, outside-incident (eqs. 2.10–2.12, p. 7): $\chi_o = -\dfrac{1-E_{SVS}}{1+E_{SVS}}$, $\tau_o = \chi_o + 1$, with impedance-like term
  $$E_{SVS} = \left(1 - \frac{\alpha M}{\omega}\right)^2 \frac{1}{T}\frac{\gamma_o}{\gamma_i}.$$
- SVS, flow-incident (eqs. 2.15–2.16, 2.18, p. 7–8): $\chi_i = (1 - E_{SVS})/(1 + E_{SVS})$ for |α| ≤ ω; $\chi_i = (1 + E_{SVS})/(1 - E_{SVS})$ in the decaying-outside band −ω/(√T − M) ≤ α < −ω. Summary in Table 1 (p. 9).
- DVS dispersion relation (eq. 2.23, p. 9), upper/lower signs symmetric/antisymmetric:
  $$\frac{1}{T}\left(1-\frac{\alpha M}{\omega}\right)^2 + \frac{\gamma_i}{\gamma_o}\left(\frac{e^{\gamma_i/2}\mp e^{-\gamma_i/2}}{e^{\gamma_i/2}\pm e^{-\gamma_i/2}}\right) = 0$$
- CVS dispersion relation (eq. 2.24, p. 9):
  $$\frac{1}{\left(1-\frac{\alpha M}{\omega}\right)^2} + \frac{1}{T}\frac{I_m(\gamma_i/2)}{K_m(\gamma_o/2)}\left(\frac{\gamma_o K_{m-1}(\gamma_o/2) + 2m K_m(\gamma_o/2)}{\gamma_i I_{m-1}(\gamma_i/2) - 2m I_m(\gamma_i/2)}\right) = 0$$
- Standing wave in the flow under total reflection, χ_i = e^{iφ} (eq. 4.1, p. 19): $p_i = 2e^{i\phi/2}\cos(\gamma_i y/\mathrm i - \phi/2)$. Fit across h (eqs. 4.3–4.4): γ_i h/i = −φ + 2nπ (symmetric), −φ + (2n+1)π (antisymmetric).
- Impedance-duct dispersion relation (eq. 4.5, p. 19), k even/odd for symmetric/antisymmetric, h absorbed in the scaling:
  $$\omega = M\alpha + \sqrt{T}\sqrt{\alpha^2 + (k\pi - \phi)^2}$$
  φ = −π is the soft wall (p = 0), φ = 0 the hard wall (∂p/∂y = 0) (p. 20).
- Shear-layer impedance (eq. 4.6, p. 20): $Z = \dfrac{p}{v}\Big|_{y=0} = \left(\dfrac{1+e^{i\phi}}{1-e^{i\phi}}\right)\dfrac{i\omega - i\alpha M}{\gamma_i T}$.
- Branch-point Strouhal numbers, St = ωL/(2πU) (eqs. 4.7–4.8, p. 22), n ≥ 0:
  $$St_{br,S} = \frac{2n}{2M\sqrt{(M+1)^2/T - 1}},\qquad St_{br,A} = \frac{2n+1}{2M\sqrt{(M+1)^2/T - 1}}$$
  Check: at α = −ω, |γ_i| = ω√((1+M)²/T − 1); hard-wall fit |γ_i| = kπ with h = 1 and St = ω/(2πM) gives exactly these. The same γ_i gives θ_i = 180° − atan(1/√((1+M)²−1)) ≈ 146° at M = 0.8, T = 1, matching Fig. 3 (p. 8).
- Streamwise velocity of a flow-region plane wave in the lab frame (eq. 5.1, p. 23) and zero-transport phase speed (eqs. 5.2–5.3, p. 23–24):
  $$v_x = \sqrt T\,[M - \sin(\pi-\theta_i)],\qquad c_0 = M - \sqrt{T(b^{-2}+1)},\quad b = \tan(\pi - \arcsin M)$$
  My simplification: b⁻² + 1 = 1/M², so c₀ = M − √T/M. For T = 1: c₀ ≈ −1.07 (M = 0.6), −0.45 (0.8), −0.21 (0.9), +0.37 (1.2); c₀ crosses the sonic line (c₀ = −1) at M ≈ 0.62. This fits the M = 0.6 vs 0.7 change described on p. 26.
- Streamwise energy flux (eq. 5.4, p. 24):
  $$I_{x,(i,o)} = \int \frac{1}{T_{i,o}}\,\mathrm{Re}\left[(1+M_{i,o}^2)\,p_{i,o}u_{i,o}^* + M_{i,o}u_{i,o}u_{i,o}^* + M_{i,o}p_{i,o}p_{i,o}^*\right]dy$$
- Oblique waves (eqs. 6.1–6.2, p. 28–29): replace α² by α² + β² in the bracket and in γ.
- Round-jet branch points for m > 0 (eq. 6.3, p. 30), γ_i at ω = −α:
  $$2m I_m\!\left(\frac{\gamma_i}{2}\right) + \frac{\gamma_i}{2}\frac{T}{(1+M)^2}\left[I_{m+1}\!\left(\frac{\gamma_i}{2}\right) + I_{m-1}\!\left(\frac{\gamma_i}{2}\right)\right] = 0$$
  First term soft-duct, second hard-duct; for m = 0 it reduces to J₀′(γ_i/2) = 0.

> Equations above were checked against 110 dpi renders of PDF p. 7, 9, 19, 20, 22, 23, 24, 30 and are transcribed as printed. Points to verify:
> - Eq. (2.16) is printed τ_i = χ_o + 1; by analogy with (2.11) it should probably be τ_i = χ_i + 1 (p. 7).
> - Eq. (5.1) puts √T in front of M as well as the sine term; that looks odd dimensionally (with T = 1 it doesn't matter, and all results are T = 1).
> - The c₀ simplification and the c₀ values are my own algebra, not in the paper.
> - In (2.24) the first term is written 1/(1 − αM/ω)², i.e. ω²/(ω − αM)², and the denominator bracket has "− 2m I_m", consistent with x I_m′ = x I_{m−1} − m I_m. This supports the suspicion in the [Edgington-Mitchell 2018 note](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) that its eq. 4.1 (printed 1/(ω − kM)² and "+ m I_m") has typos.

## Data tables
**Branch-point Strouhal numbers from eqs. (4.7)–(4.8), T = 1** (my computation; consistent with Fig. 15–16 by eye; St based on planar-jet width h and U):

| M | St_br,A (n = 0) | St_br,S (n = 1) | St_br,A (n = 1) | St_br,S (n = 2) |
|---|---|---|---|---|
| 0.8 | 0.42 | 0.84 | 1.25 | 1.67 |
| 1.2 | 0.21 | 0.43 | 0.64 | 0.85 |

The first symmetric branch point (n = 0) is at zero frequency (Fig. 16 caption, p. 23).

**Regions of the (ω, α) plane, SVS, T = 1** (p. 8, 15; Fig. 3, 9):

| Range of α (α < 0) | Flow side | Quiescent side | Reflection of flow-incident wave |
|---|---|---|---|
| −ω ≤ α < 0 | oscillatory | oscillatory (upstream radiation) | partial, real χ_i |
| −ω/(√T − M) ≤ α < −ω | oscillatory | decaying (evanescent) | total, abs(χ_i) = 1 |
| α < −ω/(√T − M) | decaying | decaying | not a scattering problem |

## Figures worth remembering
- **Fig. 1 (p. 5):** sketch of the SVS (scattering), DVS and CVS (stability) models with their inputs and outputs.
- **Fig. 3 (p. 8):** limit angles: outside θ_o from 180° to 90°; inside θ_i from 180° to ≈146° at α = −ω.
- **Fig. 4 (p. 10):** DVS and CVS neutral negative-α branches n = 1–3 at M = 0.8, T = 1 (St to 2), and pressure eigenfunctions with n peaks inside the jet (cosine-like for DVS, Bessel-like for CVS) at c = −0.9.
- **Fig. 5 (p. 11):** DVS eigenfunction |p| vs phase speed: large outside amplitude near c = −1, progressively confined as |c| falls.
- **Fig. 6 (p. 12):** DVS dispersion relations at M = 0.9 and 1.2: guided-jet (upstream) and duct-like (downstream) parts meeting at saddle points.
- **Fig. 8 (p. 15):** χ_o, τ_o for outside-incident waves: τ_o → 0 and χ_o → −1 as θ_o → 90°.
- **Fig. 10 (p. 17):** |χ_i|, |τ_i| for flow-incident waves: |χ_i| = 1 band, |τ_i| peak of 2 at the sonic line.
- **Fig. 11–12 (p. 18):** scattered fields at c = −1.01, −1, −0.99 and |p| vs c at ω = 1: standing wave in the flow and evanescent field outside once c > −1.
- **Fig. 13–14 (p. 21):** reflection phase φ and shear-layer impedance (hard wall at sonic line → soft wall at large |α|).
- **Fig. 15 (p. 22):** key figure: standing-wave predictions (red squares) lie on DVS guided-jet branches; soft- and hard-wall duct curves bracket them; branch points on the hard-duct curve at the sonic line. M = 0.8 and 1.2, symmetric and antisymmetric.
- **Fig. 16 (p. 23):** St_br vs M (0.5–2) for n = 0–4.
- **Fig. 17 (p. 25):** energy flux outside (always upstream), inside (sign set by c₀), log flux ratio with zones 1–3, and total flux with DVS branches overlaid (group-velocity sign matches flux sign).
- **Fig. 18–19 (p. 27–28):** inside and total flux at M = 0.6, 0.7, 0.9, 1.2; zero-net-flux lines near the saddle points.
- **Fig. 20 (p. 29):** oblique waves (β = 5, M = 0.8): curved total-reflection region, branch shifted.
- **Fig. 21 (p. 31):** CVS m = 0, 1 at M = 0.8, 1.2 with hard/soft duct curves and Tam & Ahuja (1990) branch points; m = 0 branch point on hard duct, m = 1 above it.

## Notation
- ω, α, β: frequency and streamwise/spanwise wavenumbers (normalised by c∞ and h); c = ω/α phase speed (c = −1 is upstream sonic).
- M = U/c∞ acoustic Mach number; T temperature ratio (inner/outer specific volume); subscripts i (flow) and o (quiescent).
- γ_{i,o}: y-wave parameter; Im(γ) is the y-wavenumber of oscillatory waves, Re(γ) the decay rate of evanescent ones.
- χ, τ: reflection and transmission coefficients (subscript = side of incidence); φ: reflection phase; Z = Z_re + iZ_im shear-layer impedance; E_SVS impedance-like term.
- θ_{i,o}: propagation angles relative to the shear layer (180° = straight at the layer, 90° = straight upstream).
- SVS, DVS, CVS: single, double (planar jet) and cylindrical vortex sheets. St_br: branch-point Strouhal number. c₀: phase speed with zero streamwise energy transport in the flow region. I_x: streamwise energy flux.
- Guided-jet mode = upstream (negative group velocity) part of the negative-α neutral branch; duct-like mode = its downstream part; they meet at a saddle point (p. 12). Same wave as k_TH⁻ ([Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)), k_p⁻ ([Jordan 2018](jordan-2018-jet-flap-interaction-tones.md), [Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md)), G-JM ([Edgington-Mitchell 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md)), k_t⁻ ([Edgington-Mitchell 2020](edgington-mitchell-2020-waves-in-screeching-jets.md)).

## Relevance to this project
The user's work centres on resonance and feedback in screeching and impinging jets (CLAUDE.md). This paper is the group's physical explanation of the upstream leg of those loops, and the reference to cite when asking "why does this tone need a guided-jet mode?".

- **No data analysis here, but direct use in data analysis:**
  - The cut-on band (branch point to saddle point) is what experimental tones are tested against, e.g. Fig. 8 of [Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and the finite-thickness bands of [Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md). Eqs. (4.7)–(4.8) and (6.3)/J₀′ = 0 give cheap closed-form branch points (planar or m = 0 round jets) to overlay on St–NPR or St–M_j maps from acoustics or schlieren SPOD.
  - The energy-flux picture explains the sign test used when separating waves: in experiment the guided-jet mode appears at negative k_x with |c| slightly below a∞ (cf. [Edgington-Mitchell 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md), upstream waves almost always slower than sound). Wavenumber filtering of POD-pair modes (non-time-resolved PIV) or SPOD modes (time-resolved schlieren) should therefore use a band just inside the sonic line, not centred on −a∞, and expect most of the amplitude inside the core with an evanescent tail outside (Fig. 5, 12).
  - Near the branch point the outside tail decays slowly and carries most of the upstream energy (p. 24); deep in the band it is confined to the core. So near-field microphones or schlieren outside the shear layer see the guided-jet mode best near cut-on, while PIV inside the core sees it everywhere in the band.
  - Intermittency and mode switching aren't modelled (linear, neutral, single-frequency). Tracking how close a tone sits to the cut-on/saddle edges as conditions drift, e.g. with the SPOD → reconstruction → Hilbert POD pipeline ([raiola-2025](raiola-2025-hilbert-pod.md)), is a natural use of these band edges, but that is my suggestion, not the paper's.
- **Impinging jets (most directly relevant):** § 7 (p. 31–33) splits impingement resonance by where the upstream wave is born. If it is born outside the jet, e.g. the wall-jet shocklet at ~1.3D in [Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md) / Weightman et al. 2017, the guided-jet mode is not needed and free-stream acoustic closure applies (consistent with Weightman et al. 2019, cited on p. 3). If it is born at the impingement point inside the core (near-ideally expanded LES of Bogey & Gojon 2017, Varé & Bogey 2023), it is required. This gives a testable criterion for the user's impinging-jet data: check whether tones fall inside the guided-jet band and where the upstream wavefront originates (schlieren, PIV).
- **Screech:** consistent with and extends [Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) (A1 and A2 both closed by the guided-jet mode; tones only inside its band), [Edgington-Mitchell 2020](edgington-mitchell-2020-waves-in-screeching-jets.md) and [Edgington-Mitchell 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) (triadic KH–shock generation at k_kh − k_s inside the shear layer, which this paper uses as the reason screech needs the mode). The discrete nature of the mode underpins the absolute-instability view of [nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md) and the A1/A2 closure of [nogueira-2021-closure-mechanism-a1-a2](nogueira-2021-closure-mechanism-a1-a2-screech.md). [Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md)/[2021](mancinelli-2021-complex-valued-resonance-model-screech.md) supply the predictive resonance models; this paper supplies the physics behind the upstream wave they use. Shock leakage ([Weightman 2019](weightman-2019-sound-production-impinging-supersonic-jets.md)) is placed as a far-field sound mechanism, separate from loop closure (p. 32).
- **Subsonic resonance and edge tones:** recovers the soft-duct and saddle-point structure of [Towne 2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md) (resonance for 0.82 < M < 1 in round isothermal jets) and explains it via the energy flux; agrees with [Jordan 2018](jordan-2018-jet-flap-interaction-tones.md) that at low M all discrete negative-α modes travel upstream. Jordan's trapped-wave cut-off picture (the k_TH⁻ wave confined to the core at high frequency) matches the confinement with increasing |α| shown here (Fig. 5).
- **Non-axisymmetric and rectangular jets:** the oblique-wave result suggests that breaking spanwise symmetry in high-aspect-ratio rectangular jets could remove neutral upstream modes and mitigate resonance (p. 34), linking to the trailing-edge cutouts of [samimy-1998](samimy-1998-rectangular-jet-trailing-edge-control.md) and [kerechanin-2001](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md), and to twin rectangular-jet coupling ([jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [nogueira-2021-twin-jet](nogueira-2021-twin-jet-coupling-spatial-lsa.md)). The DVS/standing-wave model is the natural one for planar/rectangular nozzles; for round jets helical modes (m = 1) don't follow the hard-duct branch-point rule (p. 30).
- **Modelling caveats:** inviscid, parallel, zero-thickness shear layer, no shocks, isothermal only; the energy flux is approximate (zero-flux lines miss the saddle points slightly, p. 27); the round-jet scattering problem is not solved (p. 30). [Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md) shows shear-layer thickness and temperature shift the bands noticeably, so use a finite-thickness model before comparing quantitatively with data.
- **Internal inconsistencies to keep in mind:** see the flagged items below the equations, plus: § 6.1 says the oblique-wave branch point occurs at supersonic streamwise wavenumbers (p. 30), while the conclusions say subsonic (p. 34); § 6.2 shows the round-jet deviation already for m = 1 (p. 30), while the conclusions say "mainly for azimuthal modes m > 1" (p. 34). Fig. 5 labels branches n = 0, 1 whereas Fig. 4 uses n = 1–3.
- **Related works cited, candidates for `/add-paper`:** Tam & Hu 1989; Tam & Ahuja 1990; Tam & Norum 1992; Martini, Cavalieri & Jordan 2019 (acoustic modes in jet and wake stability); Schmidt et al. 2017; Gojon et al. 2016, 2018, 2019; Bogey & Gojon 2017; Varé & Bogey 2023; Bogey 2021, 2022a,b; Zaman et al. 2022; Edgington-Mitchell & Nogueira 2023 (AIAA 2023-3647); Edgington-Mitchell et al. 2021b (screech by shock leakage); Edgington-Mitchell 2019 review; Mancinelli et al. 2022 (acoustic modes in vortex-sheet eigenbasis); Keller 1955; Miles 1957; Campos & Kobayashi 2000; Rienstra & Hirschberg 2002.
