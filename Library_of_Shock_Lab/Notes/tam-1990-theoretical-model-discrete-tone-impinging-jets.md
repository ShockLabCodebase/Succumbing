---
key: "tam-1990-theoretical-model-discrete-tone-impinging-jets"
title: "Theoretical model of discrete tone generation by impinging jets"
authors: ["Tam, Christopher K. W.", "Ahuja, K. K."]
year: 1990
type: "article"
venue: "JFM 214, 67–87"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "214", "pages": "67--87"}
doi: "10.1017/S0022112090000052"
arxiv: ""
pdf: "impinging-jets-and-edge-tones/Tam-Ahuja_1990_Theoretical-Model-Of-Discrete-Tone-Generation-By-Impinging-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "LASC-Georgia, Marietta (photos and tone data; facility not described)"
data: ["model-only", "schlieren"]
methods: ["vortex-sheet", "LSA-local", "resonance-model"]
flow: ["round-jet", "impinging-jet", "subsonic", "supersonic"]
phenomena: ["impingement-tones", "guided-jet-mode", "staging", "KH-wavepackets", "helical"]
params: {"M_j": "0.5–2.0 (cut-off model, Fig. 14); 0.69–1.0 (least-dispersive prediction, Fig. 16); 0.8 and 1.4 (dispersion curves, photos)", "TR": "1 (cold, T0 = T∞, in all calculations)", "Re": "> 2×10⁵ (stated scope)", "h/D": "L/D 2, 4 (M 0.8 photos); 6, 10 (M 1.4 photos); ≈2.3–5.2 (Neuwerth ladder, Fig. 15)", "St": "0.33–0.75 (least-dispersive (0,1) wave, M_j 0.69–1.0; St = fD/U_j)", "b/R_j": "0 (vortex sheet), 0.5, 0.8 (Gaussian profile)", "D": "50 mm (Neuwerth data, Fig. 15); not stated for the present study"}
topics: ["impinging-jets-and-edge-tones", "linear-models"]
related: ["ho-1981-dynamics-impinging-jet-feedback-phenomenon", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "jordan-2018-jet-flap-interaction-tones", "stavropoulos-2026-jet-edge-interaction", "nogueira-2024-guided-jet-waves", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "mancinelli-2019-screech-prediction-upstream-modes", "weightman-2019-sound-production-impinging-supersonic-jets", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "henderson-2002-flow-structure-supersonic-impinging-jets", "michalke-1984-survey-jet-instability-theory", "tam-1984-sound-instability-waves-supersonic-axisymmetric-jets"]
cites: ["ho-1981-dynamics-impinging-jet-feedback-phenomenon"]
summary: "Upstream neutral vortex-sheet jet modes close impinging-tone loops; least-dispersive (0,1) wave (d²ω/dk²=0) gives mean St(M_j), axisymmetry, low-M cut-off"
---
# Theoretical model of discrete tone generation by impinging jets

- **Authors:** Christopher K. W. Tam (Department of Mathematics, Florida State University, Tallahassee) and K. K. Ahuja (LASC-Georgia, Marietta) (p. 67). Tam was a consultant to LASC-Georgia; funded by NASA Contract NAS3-23708 (p. 87). Not Shock Lab group work.
- **Source:** J. Fluid Mech. (1990), vol. 214, pp. 67–87, doi:10.1017/S0022112090000052. Received 28 March 1989, revised 20 September 1989 (p. 67).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/impinging-jets-and-edge-tones/Tam-Ahuja_1990_Theoretical-Model-Of-Discrete-Tone-Generation-By-Impinging-Jets.pdf` (21 pp., publisher's scan with an OCR layer). Page refs are journal pages 67–87; **PDF page = journal page − 66**. The Read tool reports the file as password-protected, and the OCR layer garbles every displayed equation, so eqs. 1–25 and all figure labels were read from 170–400 dpi renders.
- **Tags:** impingement tones, subsonic and supersonic impinging jets, feedback loop, upstream-propagating neutral acoustic waves, guided jet mode (founding paper for impinging jets), vortex-sheet dispersion relation, (n, m) azimuthal/radial modes, cut-off at C = −1, hard-wall duct analogy, least-dispersive wave d²ω/dk² = 0, average Strouhal number, low-Mach-number cut-off, axisymmetric vs helical resonance, twin-jet coupling, Gaussian finite-thickness profile, Neuwerth ladder, Wagner standing wave, in-jet vs external feedback, Lepicovsky & Ahuja coflow test

## Summary
Impingement tones of high-subsonic jets were known to come from a feedback loop, but Wagner and Neuwerth said the upstream leg travels inside the jet, while Ho & Nosseir and Umeda et al. said it travels outside (p. 67–68). Tam and Ahuja propose that the upstream leg is carried by the intrinsic **upstream-propagating neutral acoustic modes of the jet** (Tam & Hu 1989), with set radial and azimuthal shapes fixed by the mean flow, just as for Kelvin–Helmholtz (KH) waves (p. 72–73). They compute these modes from the vortex-sheet dispersion relation of a cold round jet (eqs. 2–18), classify them as (n, m) modes, and derive closed-form cut-off (minimum) Strouhal numbers at phase speed C → −1 (eqs. 19–24, p. 74–81). The tone frequency must also fall in the KH band, St = fD/U_j < 0.6–0.7. In cold subsonic jets only the axisymmetric (0, 1) mode qualifies, which explains why subsonic impinging resonance is axisymmetric; at supersonic M_j the helical (1, 1) mode enters the band too (p. 81–82). The **average tone Strouhal number is predicted as that of the least-dispersive (0, 1) wave**, d²ω/dk² = 0 (eq. 25). It agrees with five data sets over M_j 0.7–0.95, and it exceeds 0.7 at low M_j, which the authors offer as the first explanation of the low-Mach cut-off of impingement tones (p. 82–86). The subsonic eigenfunction is confined to the jet, supporting in-jet feedback; the supersonic one extends far outside but is "guided by the jet" (p. 77–79, 84). The experimental part is limited to unexplained photographs and a few average Strouhal numbers.

## Key findings
- **The upstream wave is a mode of the jet, not free sound** (p. 72–75):
  - Neuwerth's phase condition (eq. 1) leaves the upstream speed C_a unspecified. Wagner's plane-vortex-sheet refraction model never matched experiment or predicted the Strouhal number, and Ho & Nosseir's waves had "no particular spatial mode structure" (p. 72–73).
  - Tam & Hu (1989) had found, in the vortex-sheet dispersion relation, a family of neutral (real k and ω) waves in subsonic jets that propagate upstream and resemble the acoustic modes of a hard-walled circular duct, formed by reflection of pressure waves at the mixing layer (p. 75).
  - Proposed loop: KH waves impinge on the wall and excite these upstream neutral waves, which travel to the nozzle "guided by the jet" and excite new KH waves at the lip (p. 73). The authors identify them with the in-jet upstream waves seen by Wagner (1971), Neuwerth (1974) and Umeda et al. (1987) (p. 75).
- **Mode structure** (Figs 6–7, p. 75–76):
  - The modes are labelled (n, m): n the azimuthal and m the radial order, where m counts the maxima of |p|. For n = 0, |p| peaks on the axis; for n ≥ 1 it is zero there (p. 75–76).
  - Unless C is close to −1, |p| is almost entirely confined to the jet (p. 76–77). At M_j 0.8 the (0, 1) wave at α = kR_j = −4 (St 0.574, C = −0.34) decays from 1 on the axis to about 0.1 at r = R_j (Fig. 6a; value read from figure).
- **Dispersion curves** (Figs 8–11, p. 77–79):
  - Subsonic (M_j 0.8): each branch ω(α) runs from large negative α to a cut-off on the line C = −1 (ω/k = −a∞), marked by circles (Fig. 8 for (0, 1)–(0, 4); Fig. 9 for (1, 1)–(1, 3)) (p. 77).
  - Only the (0, 1) branch lies in the hatched band St < 0.7 at M_j 0.8. It runs from ωR_j/U_j ≈ 2.8 at α = −10 to about 1.8 near α ≈ −1.5, then drops to the origin (Fig. 8; read from figure).
  - Supersonic (M_j 1.4; Figs 10–11): each branch rises to a maximum and then falls to its cut-off on C = −1. Following Tam & Hu, only the part to the right of the maximum, where the group velocity is negative, propagates upstream, with C ≈ −1; the part to the left propagates downstream (p. 77).
  - The supersonic eigenfunctions extend "over a long distance outside the jet", so the wave is mostly outside but guided by the jet, which the authors call necessary for a supersonic jet (Figs 12–13, p. 79).
- **Cut-off Strouhal numbers** (§2.3, p. 80–81):
  - The cut-off St as C → −1⁺ is also, essentially, the minimum St of each (n, m) mode (p. 80).
  - For n ≠ 0 the cut-off follows from eq. 19 (Newton iteration). For n = 0 there are two kinds of solution: the (0, m ≥ 2) cut-offs at J₁ = 0 (eqs. 21–22), and a special (0, 1) solution with ω → 0 as α → 0, so the (0, 1) branch passes through the origin (eqs. 23–24, p. 80–81).
  - The helical (1, 1)–(1, 3) cut-offs fall with M_j (Fig. 14). Below M_j 0.7 they are all above St = 1, and they "decrease gradually" into the supersonic range (p. 81). By eye the (1, 1) curve reaches St = 0.7 near M_j ≈ 0.9–0.95 (Fig. 14); the text says only that (1, 1) falls into the band for supersonic jets (p. 82).
- **Mode selection by frequency matching** (§3, p. 81–82):
  - KH waves in the core region are limited to St < 0.6–0.7 by measurement and theory; higher-St waves decay before reaching the wall, unless the wall is extremely close (p. 81–82).
  - Only neutral modes in that band can close the loop. For cold subsonic jets that is the (0, 1) mode alone, so subsonic resonance "must possess axisymmetry". This is consistent with Neuwerth (1981), whose free jet turned helical above M 0.8 but returned to axisymmetric when the plate was inserted, and with the azimuthal correlations of Nosseir & Ho (1982), which peak at τ = 0 (p. 68–70, 82).
  - At supersonic M_j the (1, 1) mode also qualifies, so both axisymmetric and helical (flapping) resonance occur, as in Neuwerth (1974) and the present photos at M_j 1.4: axisymmetric at L/D 6 (Fig. 3) and helical at L/D 10 (Fig. 4) (p. 70–71, 82).
  - **Twin jets:** coupled twin-jet resonance needs coordinated flapping, which is an equal sum of left- and right-handed helical modes. Since a single subsonic impinging jet cannot flap, twin subsonic impinging jets are unlikely to couple (p. 70–71).
- **Average Strouhal number from the least-dispersive wave** (p. 82–83, Figs 15–16):
  - Neuwerth's M_j 0.8 data show the ladder of eq. 1 against L/D, with a jump at L/D ≈ 2.8, but the frequencies stay in a narrow band around f_m ≈ 3 kHz (St_av = 0.568, D = 5 cm; Fig. 15, p. 82; f_m read from figure). Neuwerth (1973, 1974) had noted that the tones do not cover the full range allowed by eq. 1, and that their average St is independent of L/D and depends on Mach number alone (p. 82).
  - Since an L-independent quantity cannot come from eq. 1, the authors argue that the feedback wave must form "a coherent system against perturbations and fluctuations". That favours the least-dispersive wave, d²ω/dk² = 0 on the (0, 1) branch (eq. 25, p. 83).
  - The predicted St(M_j) agrees "excellent[ly]" with Neuwerth (1974), Wagner (1971), Ho & Nosseir (1981), Umeda et al. (1987) and the present data over M_j 0.7–0.95 (Fig. 16, p. 83). Read from the figure, the curve is ≈ 0.75 at M_j 0.69, 0.63 at 0.75, 0.55 at 0.8, 0.48 at 0.85, 0.42 at 0.9, 0.37 at 0.95 and 0.32 at 1.0. The data match it within about 0.01–0.02 up to M_j 0.85, but at M_j 0.9 the four points (0.36–0.40) sit 5–15% below it (my reading).
- **Finite mixing-layer thickness** (Fig. 17, p. 83–84):
  - Recomputed with the Gaussian velocity profile of [Tam & Burton (1984)](tam-1984-sound-instability-waves-supersonic-axisymmetric-jets.md) for b/R_j = 0.5 and 0.8, the (0, 1) branch differs from the vortex sheet by no more than 5% at b/R_j = 0.5 in the relevant frequency range, so the vortex sheet is "a good first approximation" (p. 84). This was also checked at other Mach numbers (calculations not shown).
  - Read from the figure: thickening raises the (0, 1) curve at large |α| (≈ 2.4 → 2.7 at α = −8), and the curves nearly coincide over α ≈ −4 to −1. The (0, 2) branch changes more: its flat hump near α ≈ −3.5 disappears, so the curve falls monotonically to the cut-off, lying up to about 10% below the vortex sheet near α ≈ −3.
- **In-jet feedback** (p. 84–85):
  - The (0, 1) eigenfunction at the average St is "for all intents and purposes" confined to the jet in every case computed, supporting Wagner and Neuwerth (p. 84).
  - The external waves measured by Ho & Nosseir and Umeda et al. are read as sound radiated by the impingement, not part of the loop, because they are "not the primary mechanism" that excites the shear layer at the lip (p. 84–85).
  - Wagner's standing wave in the jet is the superposition of the downstream KH wave and the upstream neutral wave. The present video records (not shown) show it too (p. 85).
  - Lepicovsky & Ahuja (1985) ran an M 0.79 jet in an open wind tunnel with coflow up to M 0.23. External feedback would have slowed the upstream wave and, through eq. 1, lowered the tone frequency substantially; they found "little frequency shift" (p. 85).
- **Low-Mach-number cut-off** (p. 85–86): the least-dispersive St rises rapidly as M_j falls. The paper says it exceeds the KH band (0.7) below M_j 0.65, so the loop cannot sustain itself, matching the observed absence of stable tones below M ≈ 0.6 (Wagner 1971; Neuwerth 1974; Ho & Nosseir 1981). The authors call this the "first concrete theoretical explanation" (p. 71, 85). My reproduction and Fig. 16 put the crossing of St = 0.7 at M_j ≈ 0.72, not 0.65 (see Key equations).
- **Scope and caveats stated by the authors** (p. 85–86):
  - The model covers high-Re (> 2 × 10⁵) round jets. Low-Re jets are so receptive that weaker feedback paths make tones well below M 0.6 (Karamcheti et al. 1969).
  - Geometry matters: a circular jet supports helical and flapping motion, a planar or elliptic jet only flapping. Non-circular jets should have the same kind of loop with modified tones.
  - The mechanism is an ansatz: "We have by no means proven that the ansatz is correct", though the agreement supports it (p. 86).
  - Broadband impingement noise and tone directivity are out of scope (p. 72, 86).

## Setup / method
- **Model** (§2.1, p. 73–75): a uniform round jet of velocity U_j and radius R_j bounded by a vortex sheet, with small-amplitude disturbances (inviscid, linear, locally parallel; Fig. 5). Ambient and jet sound speeds a∞, a_j and densities ρ∞, ρ_j. The derivation follows Tam (1972), Chan & Westley (1973) and Tam & Hu (1989).
- **Mode search** (§2.2, p. 75): neutral waves have real k and ω. Eq. 15 is rewritten with modified Bessel functions (eq. 16), and its roots are sought on the negative real C axis between the branch points C = −1 (ξ₊ = 0) and C = (a_j/a∞)(M_j − 1) (ξ₋ = 0). The numerical method is not described beyond Newton iteration for eq. 19 (p. 80).
- **Conditions:**

| Quantity | Value | Page |
|---|---|---|
| Temperature | "cold": total temperature equal to ambient (T₀ = T∞) | p. 76 |
| M_j | 0.8 (Figs 6–9, 17); 1.4 (Figs 10–13); 0.5–2.0 (Fig. 14); 0.69–1.0 (Fig. 16) | figures |
| α = kR_j | −10 to 0 (−8 to 0 in Fig. 17) | Figs 8–11, 17 |
| St | fD/U_j = 2fR_j/U_j = ωR_j/(πU_j) | p. 76 |
| KH band assumed | St < 0.6–0.7 (hatched St < 0.7 in Figs 8–9, 14, 17) | p. 81–82 |
| Finite thickness | Gaussian profile, half-width b/R_j = 0.5, 0.8; eigenvalue search as Tam & Burton (1984); no critical point because the waves travel upstream | p. 84 |
| Reynolds number | high-Re jets, Re > 2 × 10⁵ | p. 67, 85 |

- **Frequency prediction procedure (as used for Fig. 16):** (i) solve eq. 16 with n = 0 for the (0, 1) branch ω(k) at the given M_j and a_j/a∞; (ii) find the point where d²ω/dk² = 0 (eq. 25); (iii) report St = ωR_j/(πU_j) there as the average tone St. No L/D, convection speed, receptivity or loop phase enters. The staging itself is left to eq. 1, which is not evaluated with the computed waves.
- **Experiments ("present study"):** photographs of an M 0.8 jet at L/D 2.0 and 4.0 (Fig. 2) and an M 1.4 jet at L/D 6.0 and 10.0 (Figs 3–4), unseen video records (p. 85), and average Strouhal numbers plotted in Fig. 16. The paper describes no facility, nozzle, optics, sensors, stagnation conditions or record lengths. The imaging is not identified, but the text groups it with the "schlieren and shadowgraphic pictures" of earlier studies (p. 68). Whether the M 1.4 jet was ideally expanded is not stated.
- **Data requirements of the analysis:** the model needs only M_j and the temperature ratio (plus b/R_j for the finite-thickness check). Validating it needs time-averaged tone spectra over a Mach sweep, from any time-resolved pressure sensor, and an azimuthal-mode identification (photographs or azimuthal correlations). No modal decomposition is used.

## Key equations
All read from rendered pages; my checks follow each group.

- **Loop timing** (eq. 1, p. 72; Neuwerth 1974): $f_n=\dfrac{n}{L\left([1/C_\mathrm{i}]+[1/C_\mathrm{a}]\right)}$, n = 1, 2, 3, …, with L the nozzle–wall distance, C_i the phase velocity of the downstream instability wave and C_a that of the upstream feedback wave. Reflection and excitation are assumed to take negligible time; staging is a jump in n as L grows.
- **Vortex-sheet jet** (eqs. 2–6, p. 73):
  $$\frac{1}{a_\infty^2}\frac{\partial^2p_+}{\partial t^2}-\nabla^2p_+=0\ (r\ge R_\mathrm j),\qquad \frac{1}{a_\mathrm j^2}\Big(\frac{\partial}{\partial t}+U_\mathrm j\frac{\partial}{\partial x}\Big)^2p_--\nabla^2p_-=0\ (r\le R_\mathrm j)$$
  At r = R_j: $p_+=p_-$, $\dfrac{\partial^2\zeta}{\partial t^2}=-\dfrac{1}{\rho_\infty}\dfrac{\partial p_+}{\partial r}$, $\Big(\dfrac{\partial}{\partial t}+U_\mathrm j\dfrac{\partial}{\partial x}\Big)^2\zeta=-\dfrac{1}{\rho_\mathrm j}\dfrac{\partial p_-}{\partial r}$; p₊ outgoing or bounded as r → ∞. Eq. 2a is printed with $\partial p_+^2/\partial t^2$, a typo for $\partial^2p_+/\partial t^2$.
- **Normal modes** (eqs. 7–14, p. 74): $[p_+,p_-,\zeta]=[\hat p_+(r),\hat p_-(r),\hat\zeta]\,e^{\mathrm i(kx+n\theta-\omega t)}$, n = 0, ±1, ±2, …, ω > 0. Eliminating ζ̂ gives (eqs. 8–9)
  $$\frac{d^2\hat p_+}{dr^2}+\frac1r\frac{d\hat p_+}{dr}-\frac{n^2}{r^2}\hat p_++\Big[\frac{\omega^2}{a_\infty^2}-k^2\Big]\hat p_+=0,\qquad \frac{d^2\hat p_-}{dr^2}+\frac1r\frac{d\hat p_-}{dr}-\frac{n^2}{r^2}\hat p_-+\Big[\frac{(\omega-U_\mathrm jk)^2}{a_\mathrm j^2}-k^2\Big]\hat p_-=0,$$
  with $\hat p_+=\hat p_-$ and $\dfrac{1}{\rho_\infty\omega^2}\dfrac{d\hat p_+}{dr}=\dfrac{1}{\rho_\mathrm j(\omega-U_\mathrm jk)^2}\dfrac{d\hat p_-}{dr}$ at r = R_j (eqs. 10–11). Solutions: $\hat p_+=AH_n^{(1)}(\eta_+r)$, $\eta_+=(\omega^2/a_\infty^2-k^2)^{1/2}$, 0 ≤ arg η₊ ≤ π (eq. 12); $\hat p_-=J_n(\eta_-r)$, $\eta_-=[(\omega-U_\mathrm jk)^2/a_\mathrm j^2-k^2]^{1/2}$, 0 ≤ arg η₋ < π (eq. 13); $\hat p_+=\dfrac{J_n(\eta_-R_\mathrm j)}{H_n^{(1)}(\eta_+R_\mathrm j)}H_n^{(1)}(\eta_+r)$ (eq. 14).
- **Dispersion relation** (eq. 15, p. 74–75):
  $$\eta_+J_n(\eta_-R_\mathrm j)\frac{H_n^{(1)\prime}(\eta_+R_\mathrm j)}{H_n^{(1)}(\eta_+R_\mathrm j)}-\frac{a_\mathrm j^2}{a_\infty^2}\frac{C^2}{(C-M_\mathrm ja_\mathrm j/a_\infty)^2}\,\eta_-J_n'(\eta_-R_\mathrm j)=0,\qquad C=\frac{\omega}{ka_\infty},\ M_\mathrm j=\frac{U_\mathrm j}{a_\mathrm j}.$$
- **Real form for neutral waves** (eqs. 16–18, p. 75), with $\xi_+=|C^2-1|^{1/2}$, $\xi_-=|(a_\infty C/a_\mathrm j-M_\mathrm j)^2-1|^{1/2}$, α = kR_j:
  $$|\xi_+|\,J_n(|\xi_-\alpha|)\frac{K_{n-1}(|\xi_+\alpha|)+K_{n+1}(|\xi_+\alpha|)}{K_n(|\xi_+\alpha|)}+\frac{C^2|\xi_-|}{(a_\infty C/a_\mathrm j-M_\mathrm j)^2}\big[J_{n-1}(|\xi_-\alpha|)-J_{n+1}(|\xi_-\alpha|)\big]=0,\quad\omega>0,$$
  $$\hat p_+=\frac{J_n(|\xi_-\alpha|)}{K_n(|\xi_+\alpha|)}K_n\Big(\frac{|\xi_+\alpha|r}{R_\mathrm j}\Big),\qquad \hat p_-=J_n\Big(\frac{|\xi_-\alpha|r}{R_\mathrm j}\Big).$$
  Upstream neutral modes are roots on the negative real C axis between C = −1 and C = (a_j/a∞)(M_j − 1).
- **Cut-off, n ≠ 0** (eq. 19, p. 80): $2nJ_n(|\bar\xi_-\alpha|)+\dfrac{|\bar\xi_-\alpha|}{((a_\infty/a_\mathrm j)+M_\mathrm j)^2}\big[J_{n-1}(|\bar\xi_-\alpha|)-J_{n+1}(|\bar\xi_-\alpha|)\big]=0$, with $\bar\xi_-=|((a_\infty/a_\mathrm j)+M_\mathrm j)^2-1|^{1/2}$.
- **Cut-off, n = 0** (eqs. 20–22, p. 80): $\lim_{C\to-1^+}\dfrac{J_0(|\bar\xi_-\alpha|)}{|\alpha|\ln|\xi_+\alpha|}+\dfrac{|\bar\xi_-|}{((a_\infty/a_\mathrm j)+M_\mathrm j)^2}J_1(|\bar\xi_-\alpha|)=0$. For α ≠ 0 this gives $J_1(|\bar\xi_-\alpha|)=0$, so $|\bar\xi_-\alpha|=\sigma_i$ with $J_1(\sigma_i)=0$ and
  $$\frac{\omega R_\mathrm j}{U_\mathrm j}\to-|\alpha|\frac{C\,a_\infty}{M_\mathrm ja_\mathrm j}=\frac{\sigma_i}{M_\mathrm j(a_\mathrm j/a_\infty)\big[((a_\infty/a_\mathrm j)+M_\mathrm j)^2-1\big]^{1/2}}.$$
- **(0, 1) through the origin** (eqs. 23–24, p. 80–81): as |α| → 0⁺, $C\to-1+\beta e^{-\mu/|\alpha|^2}+\dots$ with β > 0 and (unnumbered) $\mu=\dfrac{2((a_\infty/a_\mathrm j)+M_\mathrm j)^2}{|((a_\infty/a_\mathrm j)+M_\mathrm j)^2-1|}$, so ωR_j/U_j → 0⁺ (eq. 24).
- **Least-dispersive wave** (eq. 25, p. 83): $\dfrac{d^2\omega}{dk^2}=0$ on the (0, 1) branch; its St is the predicted average tone St.

> **My checks** (cold jet, γ = 1.4, $a_\mathrm j/a_\infty=(1+0.2M_\mathrm j^2)^{-1/2}$; eq. 16 solved with SciPy):
> - Eq. 16 follows from eq. 15 with $H_n^{(1)}(\mathrm iz)\propto K_n(z)$, $K_n'=-(K_{n-1}+K_{n+1})/2$, $J_n'=(J_{n-1}-J_{n+1})/2$ and $\rho_\infty/\rho_\mathrm j=a_\mathrm j^2/a_\infty^2$. Eqs. 19–22 follow from its small-ξ₊ limit.
> - Eq. 16 reproduces every printed eigenvalue of Figs 6–7 to three digits: at M_j 0.8, (0, 1) α −4 gives C −0.3396, St 0.574; (0, 2) α −6 gives −0.5115, 1.297; (0, 3) α −8 gives −0.6148, 2.078; (1, 1) α −6 gives −0.3591, 0.911; (1, 2) α −7 gives −0.5632, 1.666; (1, 3) α −8 gives −0.7378, 2.494.
> - Eqs. 19 and 22 reproduce the cut-off circles: (0, 2) at M_j 0.8, α −2.44, St 1.03 (Fig. 8); (1, 1) at M_j 0.8, α −1.93, St 0.81 (Fig. 9). At M_j 1.4 they give (1, 1) 0.376, (1, 2) 0.702, (1, 3) 1.037, (0, 2) 0.432, against the near-cut-off eigenfunctions of Figs 12–13.
> - **Eq. 25 reproduces Fig. 16.** The least-dispersive (0, 1) St is 0.854, 0.733, 0.632, 0.548, 0.519, 0.477, 0.417, 0.364 and 0.328 at M_j 0.65, 0.70, 0.75, 0.80, 0.82, 0.85, 0.90, 0.95 and 0.99, always near α ≈ −2.2 to −2.8. This matches the curve read from Fig. 16 to ±0.01, so St = 0.7 is crossed at **M_j ≈ 0.72**, not the "less than 0.65" of p. 85–86.
> - Eq. 23: my small-α expansion ($\ln|\xi_+\alpha|\approx-\mu/2|\alpha|^2$, $J_1(z)\approx z/2$, $K_1/K_0\approx-1/(z\ln z)$) gives $\mu=4A/|A-1|$ with $A=((a_\infty/a_\mathrm j)+M_\mathrm j)^2$, not 2A/|A − 1|. This does not affect eq. 24 or any result.
> - Eq. 21 ($J_1=-J_0'=0$) is exactly the hard-wall-duct cut-off for m = 0, while eq. 19 can be written $J_n'(z)/J_n(z)=-nA/z$, an impedance condition between hard (A → 0) and soft (A → ∞) walls. This matches the branch-point findings of [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 30).

## Data tables
**Printed eigenvalues of the neutral modes** (cold jets; Figs 6–7, 12–13, p. 76, 79–80; St = fD/U_j):

| M_j | Mode | α = kR_j | St | C |
|---|---|---|---|---|
| 0.8 | (0, 1) | −4.0 | 0.574 | −0.34 |
| 0.8 | (0, 2) | −6.0 | 1.3 | −0.511 |
| 0.8 | (0, 3) | −8.0 | 2.08 | −0.615 |
| 0.8 | (1, 1) | −6.0 | 0.911 | −0.359 |
| 0.8 | (1, 2) | −7.0 | 1.67 | −0.563 |
| 0.8 | (1, 3) | −8.0 | 2.49 | −0.738 |
| 1.4 | (0, 1) | −0.9 | 0.219 | −0.906 |
| 1.4 | (0, 2) | −2.1 | 0.54 | −0.958 |
| 1.4 | (0, 3) | −3.3 | 0.87 | −0.983 |
| 1.4 | (1, 1) | −1.43 | 0.378 | −0.986 |
| 1.4 | (1, 2) | −2.7 | 0.711 | −0.982 |
| 1.4 | (1, 3) | −2.7 (printed) | 1.05 | −0.98 |

> St = Cα/(π M_j a_j/a∞) reproduces every row except (1, 3) at M_j 1.4, where −2.7 gives St 0.71. St 1.05 and C −0.98 need α ≈ −4.0, which is where the (1, 3) branch ends (cut-off at α −3.86, my eq. 19). The printed −2.7 is probably repeated from panel (b).

**Upstream bands at M_j 1.4** (my calculation from eq. 16: from the cut-off on C = −1 to the branch maximum; St = fD/U_j): (0, 1) 0–0.22; (0, 2) 0.43–0.54; (0, 3) 0.79–0.88; (1, 1) 0.376–0.379; (1, 2) 0.70–0.71; (1, 3) 1.04–1.05. All six eigenfunctions of Figs 12–13 are plotted at or near these band maxima (α grid 0.05, so maxima are ±0.01 in St). At M_j 1.42 the bands are (0, 1) 0–0.22, (0, 2) 0.42–0.53, (1, 1) 0.369–0.371.

**Average impingement-tone Strouhal numbers in Fig. 16** (p. 83; read from a 400 dpi render, ±0.01):

| M_j | Neuwerth ○ | Wagner □ | Present △ | Ho & Nosseir ▽ | Umeda + | Least-dispersive curve |
|---|---|---|---|---|---|---|
| 0.70 | 0.72 | 0.70 | | | | 0.73 |
| 0.75 | | 0.63 | 0.63 | | | 0.63 |
| 0.80 | 0.55 | 0.54 | 0.56 | | | 0.55 |
| 0.85 | 0.45 | 0.48 | | | | 0.48 |
| 0.90 | | 0.38–0.40 | | 0.37 | 0.36 | 0.42 |
| 0.95 | 0.36 | 0.33 | | | | 0.37 |

> Symbol assignments at M_j 0.75 and 0.80 are uncertain where markers overlap. The legend says "Neuwerth (1972)", but the reference list has Neuwerth 1973 (thesis) and 1974 (NASA TT F-15719), and the text cites 1974.

**Neuwerth's ladder** (Fig. 15, p. 82; M_j 0.8, D = 5 cm, St_av = 0.568; frequencies read from figure). The fundamental falls from ≈3.55 kHz at L/D ≈ 2.3 to ≈3.05 kHz at 2.7, jumps to ≈3.45 kHz at L/D ≈ 2.8, falls to ≈3.05 kHz by L/D ≈ 3.4, then stays at ≈2.85–3.1 kHz to L/D ≈ 5. The first harmonic (≈6–7.2 kHz) jumps with it, and f_m ≈ 2.97 kHz. With St_av = 0.568 this implies U_j ≈ 261 m/s, so the stage range is St ≈ 0.55–0.68 (my arithmetic).

## Figures worth remembering
- **Fig. 1 (p. 68):** loop schematic: KH waves down, "feedback waves" inside the jet, "acoustic waves" radiated outside.
- **Fig. 2 (p. 69):** M 0.8 impinging jet at L/D 2.0 and 4.0, axisymmetric large-scale structures.
- **Figs 3–4 (p. 70–71):** M 1.4 impinging jet, axisymmetric resonance at L/D 6.0 and helical at L/D 10.0.
- **Fig. 5 (p. 74):** vortex-sheet jet with sheet displacement ζ(x, θ, t).
- **Figs 6–7 (p. 76):** |p|(r) of (0, 1)–(0, 3) and (1, 1)–(1, 3) at M_j 0.8, confined inside r = R_j.
- **Fig. 8 (p. 77):** axisymmetric dispersion curves at M_j 0.8 with the C = −1 line and the hatched St < 0.7 band, which only (0, 1) enters. **This is the key figure.**
- **Fig. 9 (p. 78):** helical branches at M_j 0.8, all above the band.
- **Figs 10–11 (p. 78–79):** supersonic (M_j 1.4) branches with maxima and cut-offs; the upstream part lies right of the maximum.
- **Figs 12–13 (p. 79–80):** supersonic eigenfunctions with long tails outside the jet.
- **Fig. 14 (p. 81):** (1, 1)–(1, 3) cut-off St against M_j 0.5–2.0, with the St = 0.7 line.
- **Fig. 15 (p. 82):** Neuwerth's frequency ladder and average f_m at M_j 0.8.
- **Fig. 16 (p. 83):** least-dispersive (0, 1) St against M_j with five data sets. **This is the paper's prediction.**
- **Fig. 17 (p. 84):** vortex sheet against Gaussian profiles b/R_j = 0.5, 0.8 for (0, 1) and (0, 2) at M_j 0.8.

## Notation
- L: nozzle–wall distance; D = 2R_j: nozzle exit (jet) diameter; U_j, M_j = U_j/a_j: jet velocity and Mach number; a∞, a_j, ρ∞, ρ_j: ambient and jet sound speed and density.
- f_n: tone frequency of stage n (eq. 1); C_i, C_a: phase velocities of the downstream instability and upstream feedback waves; f_m, St_av: average tone frequency and Strouhal number.
- p₊, p₋: pressure outside and inside the jet; ζ: radial sheet displacement; (r, x, θ): cylindrical coordinates; k, ω: axial wavenumber and angular frequency; n: the stage integer in eq. 1, and the azimuthal order from eq. 7 on; m: radial order (number of |p| maxima).
- C = ω/(ka∞): phase velocity over a∞, negative for upstream waves; α = kR_j; η±, ξ±: radial wavenumbers (eqs. 12–13, 16); ξ̄₋: ξ₋ at C = −1; σ_i: zeros of J₁.
- St = fD/U_j = ωR_j/(πU_j); b: Gaussian mixing-layer half-width.
- (n, m) here is (azimuthal, radial); later work writes (m, n) for the same modes ([towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md), [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)). Tam & Ahuja's (0, 1) branch at M_j ≤ 0.82 is the k_TH⁻ wave of [jordan-2018](jordan-2018-jet-flap-interaction-tones.md).

## Relevance to this project
This is the founding paper of the "guided-mode" school for impinging tones, cited for that role by [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 32), [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) (p. 3), [jordan-2018](jordan-2018-jet-flap-interaction-tones.md), [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) (p. 2) and [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md). It is pure linear theory (vortex sheet, one finite-thickness check) compared with other people's tone data; its own experiments are a handful of photographs.

**What later work kept and what it changed**
- **Kept: the mode family and its band edges.** The cut-off on C = −1 is the branch point of the guided-jet mode. For m = 0 it lies on the hard-duct curve (eq. 21), and for m = 1 it does not (eq. 19 is an impedance condition), exactly as [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 30–31) found by a different route. The supersonic band "right of the maximum" (p. 77) is the branch-point-to-saddle band of the (0, 2) mode that brackets A1/A2 screech ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) p. 10; [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md)).
- **Missed: the (0, 2) mode at supersonic speed.** The summary names only (0, 1) and (1, 1) as resonance candidates for supersonic jets (p. 82, 86). Yet the paper's own Fig. 10 puts the (0, 2) upstream band at St ≈ 0.43–0.54 at M_j 1.4 (my calculation from eq. 16), inside its KH band. Later screech work shows the (0, 2) mode closing A1/A2 (Edgington-Mitchell 2018).
- **The least-dispersive criterion, reread (my analysis).** Solving eq. 16 finely shows what the inflection point is:
  - At M_j ≲ 0.81 (cold) the (0, 1) branch is monotonic. The inflection is where the upstream group velocity is smallest: dω/dk ≈ −0.21U_j at M_j 0.70, −0.11U_j at 0.75 and **−0.02U_j at 0.80**.
  - Near M_j ≈ 0.81 the group velocity at the inflection passes through zero, and two zero-group-velocity points split off it. These are the neutral saddles S1 and S2 of [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md), whose bifurcation is at M = 0.82 for an isothermal jet (p. 31–32).
  - At M_j 0.9 my cold-jet saddles are St 0.369 (α −4.84) and 0.436 (α −1.62), against Towne's isothermal vortex sheet 0.37 (kD −9.6) and 0.43 (kD −3.5) (Table 2). The inflection, St 0.417, lies between them, on the stretch where the group velocity is positive (+0.12U_j).
  - So above M_j ≈ 0.82 the "least-dispersive upstream wave" does not carry energy upstream at all, a point the paper never checks for subsonic jets. Its success is better explained by the flatness of the branch: near St 0.55 at M_j 0.8, a small change in frequency allows a large change in upstream wavenumber.
  - Inserting the (0, 1) branch into the phase condition (k_KH − k_up)L = 2πn with U_c = 0.6–0.7U_j gives, for every n = 4–9, a plateau at **St ≈ 0.54–0.56 over part of L/D ≈ 2.5–5** at M_j 0.8. Solutions for successive n crowd together near that plateau as L/D grows: at L/D 2.5, n = 4–9 give St 0.55–0.75, at L/D 4 they give 0.42–0.58 (U_c = 0.62U_j). That is Neuwerth's ladder in Fig. 15, and the "frequency squeezing" of [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) (p. 9).
  - On this reading, the L-independent average St comes from the dispersive phase condition. It is not a separate coherence principle, and eq. 25 is a good one-number summary of where that plateau sits.
- **Confinement: help or hindrance?** Tam & Ahuja read the confinement of the (0, 1) eigenfunction inside the jet as evidence of in-jet feedback (p. 84). [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) (p. 10–14) finds instead that when the same k_TH⁻ wave becomes trapped in the core (St ≳ 1, M ≤ 0.82) it misses the lip and is transmitted into the nozzle, ending the tones. Both can hold: at St ≈ 0.5–0.7 the wave still has enough amplitude at r = R_j (about 0.1 of the axis value in Fig. 6a) to force the lip shear layer. But the paper has no receptivity model to show this.
- **The "two schools" are not settled here.** The rejection of external feedback rests on eigenfunction shape and on the coflow test of Lepicovsky & Ahuja (1985).
  - The coflow test is weak (my estimate). With C_i ≈ 0.6U_j at M 0.79, external closure in M 0.23 coflow lowers f by only about 8% through eq. 1, before allowing for coflow speeding up C_i, and the coflow also alters the guided mode.
  - Ho & Nosseir's lip phase count of 5 × 2π at M 0.8, x0/d 4, f_r 5.5 kHz ([ho-1981](ho-1981-dynamics-impinging-jet-feedback-phenomenon.md), p. 132–133) does not discriminate either. At L/D 4 and U_c = 0.62U_j, the guided-wave phase condition gives St 0.543 for n = 6, with n = 7–8 within 4% (0.55, 0.56), against Ho's St ≈ 0.54 (my calculation, with U_j from T₀ ≈ 293 K).
  - [edgington-mitchell-2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) and [nogueira-2024](nogueira-2024-guided-jet-waves.md) (p. 31–33) resolve this by source location: sound generated inside the core needs the guided mode, sound generated outside does not.
- **Low-Mach cut-off.** The mechanism is a frequency mismatch between the least-dispersive wave and the KH band, which is different from [towne-2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md)'s free-jet lower bound M 0.82 (saddles leaving the real axis). The impinging data reach M 0.7, below Towne's free-jet bound, because the plate replaces the downstream turning point. Ho & Nosseir's own explanation was the forcing amplitude needed for collective interaction ([ho-1981](ho-1981-dynamics-impinging-jet-feedback-phenomenon.md), p. 138). Both are compatible, and neither has been tested on the same data. The St = 0.7 crossing is at M_j ≈ 0.72, so the theory fits Wagner's "difficult below 0.7" better than the paper's own "0.65" suggests.
- **Mode selection.** The axisymmetry argument is marginal near M_j 1. My eq. 19 gives the (1, 1) cut-off St as 0.69 at M_j 0.9 and 0.60 at 1.0, already within "0.6 to 0.7". The claim holds cleanly only for M_j ≲ 0.85 with the 0.7 bound.
- **Agreement with other notes:**
  - At M_j 0.85, [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md)'s jet–edge tones switch between k⁻_d (St ≈ 0.52) and k⁻_p (St ≈ 0.46) loops of the same (0, 1) branch (p. 15–18), bracketing the least-dispersive 0.477.
  - [gojon-2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md) (p. 26) cites this paper for thickness lowering the band limits. Fig. 17 supports that only partly: (0, 1) moves ≤ 5%, and the (0, 2) plateau drops by up to about 10% (read from figure) and loses its hump, i.e. its zero-group-velocity points. This bears on whether S1/S2 bands survive realistic shear layers (linear-models open question).

**For the lab's impinging-jet work**
- **Band check of the thesis tones (my calculation, cold vortex sheet, M_j 1.42).** The (0, 1) band is St 0–0.22, (0, 2) 0.42–0.53 and (1, 1) 0.369–0.371. [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)'s tones at NPR 3.4, z/D 5 are helical at 0.241–0.255 and toroidal at 0.383–0.385 (p. 68–72; f D_j/U_j). **Neither falls in a guided-mode band**: the helical tones are 31–35% below the (1, 1) cut-off, and the toroidal ones 9–10% below the (0, 2) cut-off.
  - This supports the thesis conclusion of closure by external waves (p. 75, 81, 89), independent of the foam tests.
  - Caveats: the vortex sheet ignores shocks, the thickness of the impinging shear layer (which lowers bands; Fig. 17, Mancinelli 2021) and the plate. The toroidal case is therefore not decisive, while the helical one is robust.
  - This is the "place each tone against the guided-mode band" test proposed on the impinging-jets topic page.
- **Eigenfunction test with data.** The supersonic modes have long tails outside the jet (Figs 12–13), while the subsonic ones are confined (Fig. 6). A k_x < 0 split of SPOD modes from time-resolved schlieren, or of POD pairs from PIV ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)), compared with |p̂|(r) from eqs. 17–18, would show whether the upstream energy sits in a guided mode. SPOD needs time-resolved data, and the POD-pair route works with non-time-resolved PIV. The model needs only M_j, a_j/a∞ and optionally R/θ.
- **Time-frequency view.** The paper treats the tone as an "average St" over a ladder of stages. Stage jumps and intermittent switching (Ho & Nosseir's alternating N = 2/3 tones) are outside it, but a dispersive phase model built from eq. 16 predicts the whole ladder. The SPOD → reconstruction → HPOD pipeline could test this cycle by cycle, tracking the instantaneous frequency against L/D and checking whether it stays on the plateau.
- **Reusable tool.** Eq. 16 with SciPy (jv, kve, brentq; about 40 lines) reproduces every printed value here. It accepts any a_j/a∞, so hot jets and rocket-like temperature ratios are a parameter change. Heating lowers the bands relative to cooling ([mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md)), which bears on the topic page's question of why full-scale pads show no tones.
- **PyFR staging LES.** No direct link: the A1/A2 jets (M_j 1.09, 1.14) need the (0, 2) band, which this vortex-sheet machinery gives directly.
- **Twin jets.** The claim that subsonic impinging twin jets should not couple, because flapping needs (1, 1) (p. 70–71), is untested in the library.

**Candidates for `/add-paper`:** Tam & Hu 1989 (JFM 201, 447–483; the three wave families, the source of the mode family); Tam & Burton 1984 (JFM 138, 273–295; Gaussian-profile method; now [indexed](tam-1984-sound-instability-waves-supersonic-axisymmetric-jets.md)); Neuwerth 1974 (NASA TT F-15719) and Wagner 1971 (NASA TT F-13942), the in-jet feedback papers; Nosseir & Ho 1982 (JFM 116, 379–391; Part 2, noise generation); Umeda, Maeda & Ishii 1987 (Phys. Fluids 30, 2380–2388); Lepicovsky & Ahuja 1985 (AIAA J. 23, 1463–1468; coflow test, titled as edge-tone work); Tam 1972 (JFM 51, 69–95).

**Items to verify against the PDF**
1. Eq. 2a printed as ∂p₊²/∂t² (p. 73).
2. Fig. 13(c) label kR_j = −2.7 for the (1, 3) mode (p. 80); St 1.05 and C −0.98 need ≈ −4.0.
3. μ in the expansion after eq. 23 (p. 81): 2A/|A − 1| printed against 4A/|A − 1| from my expansion.
4. "Less than 0.65" (p. 85, 86) against the Fig. 16 curve, which crosses St 0.7 near M_j 0.72.
5. Fig. 16 legend "Neuwerth (1972)" against references 1973/1974; overlapping symbols at M_j 0.75–0.80.
6. Lepicovsky & Ahuja (1985) is described as an impinging-jet experiment (p. 85), but its title in the reference list says edge-tone oscillations (p. 87).
7. Values read from figures: Fig. 8 curve levels, Fig. 15 ladder, Fig. 16 points, Fig. 17 differences.
8. The (1, 1) cut-off entering St < 0.7 at M_j ≈ 0.9 by my eq. 19, against the Fig. 14 curve, which by eye crosses 0.7 near M_j 0.9–0.95.
