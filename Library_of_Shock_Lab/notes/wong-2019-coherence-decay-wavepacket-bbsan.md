---
key: "wong-2019-coherence-decay-wavepacket-bbsan"
title: "Impact of coherence decay on wavepacket models for broadband shock-associated noise in supersonic jets"
authors: ["Wong, Marcus H.", "Jordan, Peter", "Honnery, Damon R.", "Edgington-Mitchell, Daniel"]
year: 2019
type: "article"
venue: "JFM 863, 969–993"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "863", "pages": "969--993"}
doi: "10.1017/jfm.2018.984"
arxiv: ""
pdf: "jet-noise-mechanisms/Wong-EtAl_2019_Impact-Of-Coherence-Decay-On-Wavepacket-Models-For-Broadband-Shock-Associated-Noise.pdf"
version: "published"
unverified: []
group: true
facility: ""
data: ["model-only", "microphones-far"]
methods: ["acoustic-analogy", "shock-cell-model", "coherence", "wavenumber-filtering", "PSD"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["BBSAN", "KH-wavepackets", "shock-cells", "triadic-interaction", "directivity", "acoustic-efficiency"]
params: {"NPR": "3.4", "M_j": "1.45", "M_d": "1.0", "β": "1.04", "u_c": "0.6U_j (0.5–0.8 in App. A)", "k_hL": "5 (3–7 in App. A)", "L_c": "1.0D (0.5D–∞ in App. A)", "C_2": "0.58 (0.5–2.0 in App. A)", "n": "1, or the first 10 shock-cell modes", "St": "0.3, 0.4, 0.6 (spectra to 2.0)", "R": "100D", "m": "0 (line source)", "TR": "1 for the comparison data (Norum & Seiner 1982, unheated)"}
topics: ["jet-noise-mechanisms", "shock-cell-models", "linear-models"]
related: ["wong-2021-wavepacket-modelling-bbsan", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "ray-2005-instability-wave-shock-cell-interaction-sound", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "tan-2019-equivalent-bbsan-source-reconstruction-screeching-jets", "tan-2019-correlation-analysis-piv-screeching-jets", "nogueira-2021-wavepacket-modulation-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "andre-2013-bbsan-screeching-non-screeching-underexpanded-jets", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "edgington-mitchell-2014-coherent-structure-helical-screech-mode"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "gudmundsson-2011-instability-wave-models-near-field-jets", "jaunet-2017-two-point-coherence-wave-packets-turbulent-jets", "jordan-2013-wave-packets-turbulent-jet-noise", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise"]
summary: "Line-source wavepacket × Pack shock-cell BBSAN model: coherence decay lowers the peak 2–5 dB, broadens directivity, and lets n ≥ 2 modes fill high-St upstream sound"
---
# Impact of coherence decay on wavepacket models for broadband shock-associated noise in supersonic jets

- **Authors:** Marcus H. Wong, Damon R. Honnery and Daniel Edgington-Mitchell (Laboratory for Turbulence Research in Aerospace and Combustion, Dept of Mechanical and Aerospace Engineering, Monash University); Peter Jordan (Institut Pprime, CNRS – Université de Poitiers – ENSMA) (p. 969). R. Kirby is thanked for checking the mathematics (p. 988). Funded by an Australian Government RTP scholarship and an ARC Discovery Project (p. 988).
- **Source:** J. Fluid Mech. 863, 969–993 (2019), doi:10.1017/jfm.2018.984, © Cambridge University Press 2019. Received 25 May 2018, revised 27 November 2018, accepted 1 December 2018, first published online 29 January 2019 (p. 969). `Library_of_Shock_Lab/group_papers.md` also lists a HAL copy (hal-02351740), not checked.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/jet-noise-mechanisms/Wong-EtAl_2019_Impact-Of-Coherence-Decay-On-Wavepacket-Models-For-Broadband-Shock-Associated-Noise.pdf` (25 pp., publisher's version). Page references are the journal pages 969–993; PDF page = journal page − 968. Eqs. 2.4–2.16, 4.1–4.9 and B 1, Table 1 and Figs 1–9 were checked against rendered pages.
- **Tags:** broadband shock-associated noise (BBSAN), kinematic wavepacket source model, Lighthill acoustic analogy, line source, two-point cross-spectral density (CSD), coherence decay, wavepacket jitter, Cavalieri & Agarwal (2014) model, Lele (2005) phased-array model, Prandtl–Pack vortex-sheet shock cells, higher-order shock-cell modes, Tam & Tanna sum/difference interaction, acoustic matching, radiation square, double wavenumber transform, Harper-Bourne & Fisher peak frequency, directivity, NASA Norum & Seiner (1982) data, Ray & Lele (2007) "missing sound", Suzuki (2016)

## Summary
The paper asks whether wavepacket jitter, represented statistically as a decay of two-point coherence, matters for BBSAN as much as it does for subsonic jet noise (p. 969, 971–973). It extends the Cavalieri & Agarwal (2014) kinematic line-source model to a shock-containing jet. The source is the product of a Gaussian-envelope wavepacket and Prandtl–Pack shock-cell modes (Lele 2005), its two-point CSD is multiplied by a Gaussian coherence function of length L_c, and Lighthill's analogy with a free-field Green's function gives the far field (p. 973–976). For a model jet at NPR 3.4 (M_j 1.45), coherence decay does not amplify the sound as in subsonic jets. It lowers the BBSAN peak by about 2–5 dB and broadens the directivity (p. 978). A double wavenumber transform of the source CSD shows why: the acoustically matched difference-wave lobe (k_h − k_s) already lies inside the radiation square, and jitter smears some of its energy out (p. 980–983). With ten shock-cell modes, the perfectly coherent model gives narrow-banded secondary peaks and deep gaps at high frequency and upstream angles. Coherence decay stretches the n = 2 lobe into the radiation square and fills this "missing sound", which the authors take as evidence that the coherence decay in earlier BBSAN models is the statistical signature of jittering wavepackets (p. 984–988). The comparison with Norum & Seiner's spectra tests spectral shape only, since model peaks are matched to the data (p. 979).

## Key findings
- **Coherence decay is not an amplifier for BBSAN** (Fig. 2, p. 978). With one shock-cell mode (n = 1), at 100D:
  - Both models peak slightly upstream of 90° at St = 0.3 and move downstream with less amplitude at St = 0.6 (p. 977–978).
  - L_c = 1.0D lowers the peak by about 2–5 dB and broadens the lobe, raising levels downstream (low θ) (p. 978). Read from Fig. 2: at St = 0.3 the peak falls from about −24 dB (θ ≈ 113°) to about −27.5 dB, and at θ = 0° the level rises from below −50 dB to about −40 dB. At St = 0.6 the peak falls from about −29.5 dB to about −31.5 dB near θ ≈ 70°.
  - This is the opposite of subsonic jets, where jitter raises the level across the spectrum (Cavalieri et al. 2011; Baqui et al. 2015) (p. 969, 978).
- **Why, from the wavenumber transform** (Fig. 4, p. 980–983):
  - The source CSD in physical space has a "freckled" pattern like Suzuki's (2016) LES two-point pressure correlations. The diagonal peaks are about one shock cell apart, and the off-diagonal peaks are the wavepacket meeting neighbouring cells. Coherence decay concentrates the CSD along y₁ = y₂ (p. 981).
  - In wavenumber space the source has four lobes. Coherence decay stretches them along k_y1 = −k_y2 (p. 981–982), as in subsonic jets (Cavalieri & Agarwal 2014; Jaunet et al. 2017).
  - Only components with supersonic phase speed relative to c₀ radiate: |k_y1|/k_h, |k_y2|/k_h ≤ M_c (eq. 4.4). Unlike the subsonic case, one lobe already lies inside the radiation square, as in ideally expanded supersonic jets (p. 982). Stretching it moves some energy out, which lowers the peak, and spreads the rest over more angles, which broadens the directivity (p. 982).
- **Which interaction radiates** (eqs. 4.6–4.9, p. 983):
  - The sum wave A⁺ (k_h + k_s) is always slower than sound.
  - The difference wave A⁻ (k_h − k_s) can be subsonic or supersonic, and it is the only radiating part, as Tam & Tanna (1982) found.
  - The mixed terms B⁺ and B⁻ lie off the k_y1 = −k_y2 line and outside the radiation square, so they are silent. Similar off-diagonal lobes appear in Baqui et al. (2015) and Sandham, Morfey & Hu (2006).
- **Peak frequency** follows Harper-Bourne & Fisher in both models: it rises as θ decreases, more clearly with unit coherence (Fig. 1, p. 977–978).
- **Against Norum & Seiner (NPR 3.4), one shock mode** (Fig. 3, p. 979–980):
  - Model amplitudes are adjusted to the data, so only shape is compared, and the authors call the agreement "moderate".
  - Both models capture the peak-frequency trend and the narrowing of the peak at larger θ. Coherence decay broadens the peak and agrees better above the peak frequency.
  - Below θ = 75° both miss the peak frequency. The authors blame the choice of u_c and L, or mixing noise near the axis.
  - Both lose the high-frequency sound at upstream angles, as Ray & Lele (2007) did. The authors argue this is not a breakdown of linear theory, which works to St = 4 (Sasaki et al. 2017a), but the neglect of higher-order shock-cell modes, which Suzuki's (2016) empirical shock model also lacked (p. 980).
- **Higher-order shock-cell modes** (§5, Figs 5–7, p. 984–987):
  - Tam et al. (1985) argued for four modes and Ray & Lele (2007) for one. Here the spectrum and source structure stop changing beyond ten modes, so ten are used (p. 984).
  - Adding modes improves the spectral shape at all angles above the broadband peak, as Tam et al. (1985) found. Both models get the peak frequency reasonably at θ ≥ 75°, and coherence decay slightly under-predicts it (p. 984).
  - With unit coherence, oscillations and narrow-banded secondary peaks appear at higher St. Coherence decay smooths them, which the authors link to Ray & Lele's suggestion that nonlinear effects remove such peaks and to Lele's (2005) localised-source result (p. 984).
  - In the unit-coherence model the n = 1 interaction still dominates. At St = 0.4 the n = 2 lobe lies outside the radiation square, which is why Ray & Lele kept only n = 1. At St = 0.6 the lobes become more compact and the n = 2 lobe enters the square (Fig. 6a,c, p. 984). Adding modes does not raise SPL below the broadband peak (p. 985).
  - With L_c = 1.0D the n = 1 and n = 2 lobes merge, so n = 2 also radiates. Coherence decay "spreads and smooths" source energy and levels the spectrum and directivity (Fig. 6b,d, p. 985).
  - Along k_y1 = −k_y2 (Fig. 7, p. 986–987): at St = 0.4, just above the BBSAN peak, coherence decay raises the upstream sound and removes the artificial peaks. At St = 0.6, where n = 2 already radiates, it changes little. Read from Fig. 7(a): near θ = 150° (k_y1/k_h ≈ 0.75) the transform is about 2 with unit coherence and about 20 with L_c = 1.0D, while at θ = 90° it falls from about 700 to about 380.
  - The over-prediction below the spectral peak remains at all angles; the authors attribute it to the constant L_c (p. 985).
- **Parametric study** (App. A, Figs 8–9, p. 988–990), at θ = 150°, 100D:
  - Raising u_c moves the peak to higher St; raising C₂ steepens the high-St fall. Neither changes the secondary peaks much (p. 988–989).
  - Neither L nor L_c moves the peak frequency. A longer envelope raises the peak level and makes the artificial peaks more prominent; a shorter one suppresses them, as finite L_c does (p. 989).
  - Small L and small L_c both destroy the dependence of peak frequency on angle (Fig. 9, p. 990). Since BBSAN has that dependence, which needs k_hL ≫ 1 (non-compact wavepackets; Cavalieri et al. 2012), and since Suzuki (2016) found wavepackets several diameters long, short envelopes are not plausible. Coherence decay is therefore what removes the peaks (p. 990).
  - Suppression of the narrow peaks cannot be obtained by tuning u_c, A(ω) or L within values realistic for underexpanded jets (p. 987).
- **Interpretation** (p. 987–988):
  - Bulk two-point turbulence statistics, as used by Harper-Bourne & Fisher (1973) and Morris & Miller (2010), contain much acoustically inefficient, high-azimuthal-order content. Only the coherence decay of the low-order wavepackets matters for the far field (p. 972, 987).
  - The coherence decay across sources in existing BBSAN models therefore results from wavepacket jitter (Williams & Kempton 1978; Cavalieri et al. 2011) (p. 987).
  - Dynamic models (wavepackets and shock cells from linear stability) will need stochastic forcing to produce jitter, and several shock-cell modes (p. 988).

## Setup / method
This is a theory paper with no new data. The model is kinematic: the source is postulated, not computed, and sound follows from an acoustic analogy (p. 971). The authors stress that the aim is a model problem to test coherence decay, not a predictive tool (p. 977).

**Model problem** (Table 1, p. 976–977, 989):

| Parameter | Value | Source of the choice |
|---|---|---|
| Jet | convergent nozzle, M_d = 1.0, NPR = 3.4, M_j = 1.45, β = 1.04 | to match Norum & Seiner (1982) (p. 977–979) |
| Convection velocity u_c | 0.6U_j | literature average: Harper-Bourne & Fisher 1973, Lau 1980, Troutt & McLaughlin 1982, Kerhervé et al. 2006, Morris & Zaman 2010 (p. 976) |
| Wavepacket amplitude A(ω) = C₁e^{−C₂ω} | C₁ = 3.4 × 10⁻⁷, C₂ = 0.58 (normalised on St = fD/U_j) | energy-spectrum form of Antonialli et al. (2018), fitted to the LDV velocity spectra of Savarese et al. (2013) on the shear layer at y/D ≈ 3 for NPR 2.5; normalised to unit source strength at the peak frequency (p. 977) |
| Envelope length | k_hL = 5 (text: "L = 1.0D and k_hL = 5") | frequency-independent averages, after Cavalieri & Agarwal (2014) (p. 977) |
| Coherence length L_c | 1.0D | as Cavalieri & Agarwal (2014) and Baqui et al. (2015); Jaunet et al. (2017) show L_c depends on frequency and position in an M 0.4 jet, but Suzuki (2016) found a near-constant L_c in an underexpanded LES (p. 977) |
| Shock-cell modes | n = 1 (§3–4) or the first 10 (§5, Fig. 1) | Pack (1950) vortex sheet; spectrum converged at 10 modes (p. 977, 984) |
| Observer | 100D | (Figs 2, 3, 5, 8) |

**Assumptions** (p. 973–976):
- Lighthill's analogy with a free-field Green's function. There is no refraction by the mean flow, no nozzle, and the source is centred at the origin, extending both ways along the axis (p. 973, 981).
- Line source: azimuthal and radial dependence dropped, so only axisymmetric (m = 0) wavepackets are represented (p. 974). The source term S itself is modelled as u_s u_t (eq. 2.4), not the stress tensor whose double divergence it is.
- Shock cells: Prandtl–Pack vortex-sheet waveguide modes with no axial decay. The authors note that the measured decay of shock strength is not represented (p. 974).
- Wavepacket: Gaussian envelope, constant k_h = ω/u_c. Jitter is not modelled by temporal modulation, as Lele did, but by the two-point coherence function, which Cavalieri & Agarwal showed is an equivalent statistical description (p. 974–975).
- Coherence: Gaussian in separation, the same at all positions and frequencies (p. 975–977).
- Interaction: the shocks are steady and the wavepacket is unaffected by them. The source is a product of independent shock and turbulence parts (Tam 1990; Lele 2005) (p. 974).

**Numerics** (p. 977): the far field is obtained by numerical evaluation of the double integral in eq. 2.16. The integration domain, grid and quadrature are not stated. The wavenumber maps come from the closed-form transforms eq. 4.3 and B 1 (p. 980–981, 991).

**Comparison data** (p. 979, 984–985): far-field spectra of Norum & Seiner (1982), NASA TM 84521, at θ = 60°–150° from the downstream axis, offset by 25 dB per angle. Whether these are narrowband or one-third-octave spectra, and whether the tabbed (screech-free) or plain nozzle was used, is not stated.

**Methods and their data requirements:** none of the analysis uses measured time series. The model inputs, however, map onto measurable quantities: u_c and the envelope L (time-resolved schlieren or PIV, or linear models), the coherence length L_c (two-point statistics at one frequency, which need time-resolved or simultaneous two-point data), A(ω) (velocity spectra, here LDV), and the shock train (mean fields; non-time-resolved data suffice). The double wavenumber transform (eq. 4.1) is a streamwise Fourier decomposition of the source CSD in both arguments.

**Modelling context:** the paper sorts BBSAN models into
- empirical phased arrays of point sources (Harper-Bourne & Fisher 1973), which predict spurious harmonic peaks and only the axisymmetric mode (p. 970);
- RANS-informed acoustic analogies with bulk two-point turbulence statistics (Morris & Miller 2010; Miller & Morris 2010; mixed-scale models of Kalyan & Karabasov 2017 and Tan et al. 2017) (p. 970);
- dynamic instability-wave models (Tam & Tanna 1982; Tam 1987; Ray & Lele 2007), where wavepackets and sound come together from linearised equations. Tam's model gives spurious narrow-band peaks at upstream angles near the nozzle (p. 971), and Ray & Lele could not capture the higher frequencies, which they put down to "some combination of nonlinear and non-modal effects" (p. 973);
- kinematic wavepacket models (Lele 2005; Suzuki 2016), the class this paper belongs to (p. 971–972).

## Key equations
Notation as printed; implicit e^{−iωt}; θ from the downstream axis.

- **Lighthill / Helmholtz and integral solution** (eqs. 2.1–2.3, p. 973): $\nabla^2p-\frac{1}{c_0^2}\frac{\partial^2p}{\partial t^2}=S(\boldsymbol y,t)$, $\nabla^2p+k^2p=S(\boldsymbol y,\omega)$ with $k=\omega/c_0$, and $p(\boldsymbol x,\omega)=\int_V S(\boldsymbol y,\omega)G(\boldsymbol x,\boldsymbol y,\omega)\,\mathrm d\boldsymbol y$.
- **Line source** (eq. 2.4, p. 974): $S(\boldsymbol y,t)\simeq\hat S(y,t)=u_s(y)\,u_t(y,t)$.
- **Prandtl–Pack shock cells** (eqs. 2.5–2.7, p. 974):
  $$u_s(y)=U_s\sum_n c_{s_n}\tfrac12\{e^{\mathrm ik_{s_n}y}+e^{-\mathrm ik_{s_n}y}\},\qquad k_{s_n}=\frac{2\sigma_n}{D_j(M_j^2-M_d^2)^{1/2}},\qquad c_{s_n}=\frac{2\Delta p}{\sigma_np_\infty},$$
  with σ_n the nth zero of J₀ and Δp the pressure mismatch at the nozzle exit (printed "throat").
- **Wavepacket** (eq. 2.8, p. 974): $u_t(y,t)=U_te^{-(y/L)^2}e^{\mathrm i(k_hy-\omega t)}$, $k_h=\omega/U_c$.
- **Single-point source** (eq. 2.9, p. 975): $\hat S(y,\omega)=A(\omega)e^{-(y/L(\omega))^2}e^{\mathrm ik_h(\omega)y}\sum_nc_{s_n}\{e^{\mathrm ik_{s_n}y}+e^{-\mathrm ik_{s_n}y}\}$.
- **Far-field PSD** (eqs. 2.10–2.11, p. 975): $\langle p(\boldsymbol x,\omega)p^*(\boldsymbol x,\omega)\rangle\approx\int_V\int_V\langle S(y_1,\omega)S^*(y_2,\omega)\rangle G(\boldsymbol x,y_1,\omega)G^*(\boldsymbol x,y_2,\omega)\,\mathrm dy_1\mathrm dy_2$, with $G=\frac{1}{4\pi}\frac{e^{\mathrm ik|\boldsymbol x-\boldsymbol y|}}{|\boldsymbol x-\boldsymbol y|}$.
- **Coherence and its model** (eqs. 2.13–2.14, p. 975):
  $$\gamma^2(y_1,y_2,\omega)=\frac{|\langle S(y_1,\omega)S^*(y_2,\omega)\rangle|^2}{\langle|S(y_1,\omega)|^2\rangle\langle|S(y_2,\omega)|^2\rangle},\qquad \gamma^2=\exp\Big(-2\frac{(y_1-y_2)^2}{L_c^2(\omega)}\Big)$$
- **Two-point source CSD** (eq. 2.15, p. 976; eq. 2.12 is the same without the coherence factor, i.e. L_c → ∞):
  $$\langle S(y_1)S^*(y_2)\rangle=A^2e^{-(y_1/L)^2}e^{-(y_2/L)^2}e^{\mathrm ik_h(y_1-y_2)}e^{-(y_1-y_2)^2/L_c^2}\sum_nc_{s_n}\{e^{\mathrm ik_{s_n}y_1}+e^{-\mathrm ik_{s_n}y_1}\}\sum_mc_{s_m}\{e^{\mathrm ik_{s_m}y_2}+e^{-\mathrm ik_{s_m}y_2}\}$$
- **Fraunhofer far field** (eq. 2.16, p. 976), as printed: $\langle pp^*\rangle\approx\frac{A^2(\omega)}{4\pi x^2}\int\int\langle S(y_1)S^*(y_2)\rangle e^{\mathrm ik\cos\theta(y_1-y_2)}\,\mathrm dy_1\mathrm dy_2$.
- **Double wavenumber transform** (eq. 4.1, p. 980): $\mathcal F(k_{y_1},k_{y_2})=\frac{1}{(\sqrt{2\pi})^2}\int\int F(y_1,y_2)e^{\mathrm ik_{y_1}y_1}e^{\mathrm ik_{y_2}y_2}\mathrm dy_1\mathrm dy_2$.
- **Unit-coherence transform, one shock mode** (eq. 4.3, p. 980):
  $$\mathcal F=\frac{A^2_{n=1}}{8}\Big(e^{-\frac14(k_h-k_s+k_{y_1})^2L^2}+e^{-\frac14(k_h+k_s+k_{y_1})^2L^2}\Big)\Big(e^{-\frac14(k_h+k_s-k_{y_2})^2L^2}+e^{-\frac14(-k_h+k_s+k_{y_2})^2L^2}\Big)L^2$$
  The coherence-decay version is eq. B 1 (p. 991); its prefactor is $1/[8\sqrt{1/L^2+1/L_c^2}\sqrt{(2L^2+L_c^2)/(L^4+L^2L_c^2)}]$, which tends to L²/8 as L_c → ∞, as the paper states (p. 981).
- **Radiation criterion and observer mapping** (eqs. 4.4–4.5, p. 982): $|k_{y_1}|/k_h\le M_c$, $|k_{y_2}|/k_h\le M_c$ with $M_c=\omega/(k_hc_0)$; an observer at θ reads $(k_{y_1},k_{y_2})/k_h=(-M_c\cos\theta,\,M_c\cos\theta)$.
- **Interaction terms** (eqs. 4.6–4.9, p. 983), envelopes and amplitudes dropped: $A^\pm_{1,2}=e^{\mathrm i(y_1-y_2)(k_h\pm k_s)}$, $B^+_{1,2}=e^{\mathrm iy_1(k_s+k_h)+\mathrm iy_2(k_s-k_h)}$, $B^-_{1,2}=e^{\mathrm iy_1(-k_s+k_h)+\mathrm iy_2(-k_s-k_h)}$, with phase speeds $v^\pm=\omega/(k_h\pm k_s)$.

> My checks (verify against the PDF before reuse):
> - **Eq. 4.3** follows from eq. 2.12 with ∫e^{−y²/L²+iay}dy = √π L e^{−a²L²/4}, with the factor ¼ from the ½ in eq. 2.5. It confirms the printed signs.
> - **Lobe positions in Fig. 4.** From eq. 4.3 the lobes sit at k_y1 = −k_h ± k_s, k_y2 = k_h ± k_s. With D_j/D = 1.069 at NPR 3.4, k_s1D ≈ 4.33 (β = 1.04), and k_hD = 2πSt/0.6 = 4.19 at St = 0.4, so k_s/k_h ≈ 1.03. That puts the lobes at (−2.0, 2.0) (A⁺), (0, 0) (A⁻), (−2, 0) and (0, 2) (B terms), which is what Fig. 4(c,d) shows.
> - **Sign in eq. 2.16.** With |x − y| ≈ |x| − x̂·y, G(y₁)G*(y₂) ∝ e^{−ik cos θ (y₁−y₂)}, not e^{+ik cos θ (y₁−y₂)}. The minus sign is the one consistent with eq. 4.5 under the transform eq. 4.1, and with the Harper-Bourne & Fisher trend in Fig. 1. With the printed + sign the peak frequency would rise upstream. The printed prefactor A²/(4πx²) also repeats the A² already in eq. 2.15, and G G* gives 1/(16π²x²). Levels are in arbitrary dB, so neither affects the figures.
> - **Shock-mode amplitude.** c_sn in eq. 2.7 is Tam & Tanna's coefficient A_n = 2Δp/(μ_np_a) without its radial shape J₀(2σ_nr/D_j)/J₁(σ_n) ([tam-1982](tam-1982-shock-associated-noise-cd-nozzles.md) note, eq. 4). On the axis the n = 2 to n = 1 amplitude ratio would be −0.66, not +0.44 as used here. At the vortex sheet r = D_j/2 every mode vanishes. A line source has no unique radius, so this is a modelling choice, but it weakens the higher modes by about 3.7 dB (n = 2) and drops their alternating sign.
> - **Eq. 2.14** defines γ², so γ = exp(−(y₁ − y₂)²/L_c²), which is the factor in eq. 2.15. This is consistent, and it is the same form as Cavalieri et al. 2019 (eq. 46 in that note).
> - Eq. B 1 writes k_y and k_z for k_y1 and k_y2 and omits A².

## Data tables
**Model parameters** (Table 1, p. 989): NPR 3.4; u_c = 0.6U_j; C₂ = 0.58; k_hL = 5.0; L_c = 1.0D.

**Parametric ranges** (Fig. 8, p. 989; θ = 150°, 100D, NPR 3.4): u_c/U_j = 0.5, 0.6, 0.7, 0.8; C₂ = 0.5, 1.0, 1.5, 2.0; k_hL = 3, 4, 5, 6, 7; L_c/D = 0.5, 1.0, 1.5, 2.0, ∞. Fig. 9 (p. 990) crosses L_c = 0.5D, 1.0D, ∞ with k_hL = 3, 5, 7.

**Derived quantities** (mine, from the printed parameters; not in the paper):

| Quantity | Value | How |
|---|---|---|
| D_j/D at NPR 3.4 | 1.069 | isentropic, M_j = 1.447 |
| Pack spacing L_s = πD_jβ/σ₁ | 1.36D_j = 1.45D | eq. 2.6, β = 1.04 |
| k_s1D, k_s2/k_s1 | 4.33, 2.30 | σ₂/σ₁ = 5.520/2.405 |
| k_hD | 10.47 St | u_c = 0.6U_j |
| L = 5/k_h | 0.48D/St: 1.59D, 1.19D, 0.80D at St 0.3, 0.4, 0.6 | k_hL = 5 |
| Shock cells spanned by 2L | 2.2, 1.6, 1.1 at St 0.3, 0.4, 0.6 | 2L/L_s |
| M_c used in Figs 4, 6, 7 | 0.6M_j = 0.87 | captions, radiation square |
| u_c/c_∞ for the cold (TR = 1) jet | 0.73 | U_j/c_∞ = 1.21 |
| n = 1 peak St, Harper-Bourne & Fisher, M_c = 0.87 | 0.73, 0.41, 0.29, 0.26, 0.24 at θ = 60°, 90°, 120°, 135°, 150° | St_p = u_ck_s1D/[2πU_j(1 − M_c cos θ)] |
| n = 1 radiating band | St ≥ 0.22 (all angles) | \|k_h − k_s1\| ≤ k |
| n = 2 radiating band | St ≥ 0.51; at St 0.6 it radiates at θ ≈ 132° | \|k_h − k_s2\| ≤ k |
| n = 1 peak angle | 116° (St 0.3), 92° (St 0.4), 69° (St 0.6) | k_h − k_s1 = k cos θ; Fig. 2 shows ≈ 113° and ≈ 70°, which supports M_c = 0.87 (0.73 would give 121° and 65°) |
| Peak drop from L_c = 1.0D | −3.9 dB (St 0.3), −2.9 dB (St 0.4), −1.8 dB (St 0.6) | 10 log₁₀(L_m/L), L_m² = L²L_c²/(2L² + L_c²) (Cavalieri et al. 2019, eqs. 47–48, applied to the k_h − k_s wave); Fig. 2 shows ≈ 3.5 and ≈ 2 dB |

## Figures worth remembering
- **Fig. 1 (p. 978):** St–θ SPL maps for unit coherence and L_c = 1.0D with ten shock modes, and the Harper-Bourne & Fisher peak line. Unit coherence shows a secondary ridge at higher St; coherence decay smooths it.
- **Fig. 2 (p. 978):** n = 1 directivity at St 0.3 and 0.6: coherence decay lowers and broadens the lobe.
- **Fig. 3 (p. 979):** n = 1 spectra at θ = 60°–150° against Norum & Seiner: the missing upstream high-frequency sound.
- **Fig. 4 (p. 981):** source CSD in (y₁, y₂) and its double wavenumber transform with the radiation square. This is the key explanatory figure: one lobe (A⁻) inside the square, and coherence decay stretches it out.
- **Fig. 5 (p. 985):** ten-mode spectra against Norum & Seiner. Unit coherence oscillates with narrow secondary peaks and dips; L_c = 1.0D follows the data above the peak.
- **Fig. 6 (p. 986):** ten-mode wavenumber maps at St 0.4 and 0.6. The n = 2 lobe enters the square at St 0.6, or at St 0.4 with coherence decay.
- **Fig. 7 (p. 987):** transform along k_y1 = −k_y2 with observer angles marked: how coherence decay fills upstream angles at St 0.4.
- **Fig. 8 (p. 989):** sensitivity of the θ = 150° spectrum to u_c, C₂, k_hL and L_c. Only L and L_c control the secondary peaks.
- **Fig. 9 (p. 990):** St–θ maps over L_c and k_hL. Short L or L_c destroys the peak-frequency directivity.

## Notation
- y, y₁, y₂: axial source positions; x, θ: observer position and polar angle from the downstream axis; c₀: ambient sound speed; k = ω/c₀.
- S, Ŝ: source term and its line-source model; u_s, u_t: shock-cell and turbulent (wavepacket) velocity; U_s, U_t, A(ω): amplitudes; C₁, C₂: amplitude-spectrum constants.
- k_sn, c_sn, σ_n: shock-cell-mode wavenumber, amplitude and nth zero of J₀; Δp: exit pressure mismatch; p_∞: ambient pressure.
- k_h = ω/u_c: wavepacket wavenumber; u_c (U_c): convection velocity; M_c = ω/(k_hc₀) = u_c/c₀ (an eddy Mach number, not Papamoschou & Roshko's convective Mach number; see the convention note on [jet-noise-mechanisms](../topics/jet-noise-mechanisms.md)); L: envelope length; L_c: coherence length.
- γ²: two-point coherence; CSD/PSD: cross- and power-spectral density; 𝓕(k_y1, k_y2): double wavenumber transform of the CSD.
- A⁺, A⁻: sum and difference interaction terms; B⁺, B⁻: mixed terms; v⁺, v⁻: phase speeds.
- β = (M_j² − M_d²)^{1/2}: off-design parameter; M_j, M_d, D_j, U_j: ideally expanded Mach number, design Mach number, ideally expanded diameter and velocity; St = fD/U_j.

## Relevance to this project
A Shock Lab group paper (Edgington-Mitchell, Honnery; Wong's PhD work with Jordan) on the BBSAN side of the wavepacket–shock interaction whose resonant side is screech. It is theory only, with no group facility or data.

**How it relates to Wong et al. 2021** ([wong-2021-wavepacket-modelling-bbsan](wong-2021-wavepacket-modelling-bbsan.md)). That paper cites this one as Wong et al. 2019b and is its sequel.
- *What 2021 took over.* The 2019 conclusion asks for wavepackets and shock cells from linear stability, several shock-cell modes and stochastic (jittering) wavepackets (p. 988). The 2021 paper delivers most of this. It uses PSE wavepackets on an LES mean flow, three PIV-corrected Pack modes, and the coherence measured in the LES rather than an analytic L_c. It also replaces the line source with a volumetric source for m = 0–2, with absolute levels set by one amplitude per (m, ω) instead of levels matched to the data.
- *Where they agree.* Coherence is not needed for the peak level: here jitter lowers the peak by 2–5 dB (p. 978), and in 2021 a perfectly coherent PSE source puts the peaks within ±2 dB/St (2021, p. 24). The high-frequency upstream deficit of Ray & Lele (2007) and Suzuki (2016) comes from missing higher shock-cell modes (here p. 980, 986; 2021, p. 23, 29). Jitter fills the gaps between shock-mode lobes (here p. 985–987; 2021, up to 15 dB/St, p. 25). The freckled source CSD appears in both (here Fig. 4a,b; 2021, Fig. 15).
- *Where the emphasis shifts.* Here the secondary peaks of the unit-coherence model are called "artificial", and coherence decay smooths them away (p. 984, 987). In 2021 the n = 2 peak is a real, measured feature, and the defect of the coherent model is the dips between peaks. Tam et al. (1986) also found real secondary peaks, which one-third-octave bands hide ([tam-1986](tam-1986-bbsan-screech-relationship.md) note, p. 3–5). So "artificial" probably means too narrow and too deep rather than absent, and the answer depends on the spectral resolution of the Norum & Seiner data used here, which is not stated (my reading).
- *Parameters.* Here u_c = 0.6U_j is assumed and gives the peak frequency "reasonably" only at θ ≥ 75° (p. 979, 984). The 2021 LES and PSE give 0.7–0.8U_j (2021, p. 18–19), which would move the downstream peaks up, the direction needed at θ = 60° (Fig. 3).
- *Not yet tested.* The stochastically forced dynamic model proposed here (p. 988) is still open after 2021, which imposed LES coherence on PSE rather than forcing a linear operator. A resolvent model with a forcing CSD would be the natural test (cf. [cavalieri-2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md), §4–5).

**A unifying reading** (mine, from Cavalieri et al. 2019's closed form):
- The A⁻ term is a Gaussian wavepacket of wavenumber k_h − k_s. Its far field is therefore Cavalieri's jittering-wavepacket result with k_h replaced by k_h − k_s: ⟨pp*⟩ ∝ L_mL exp[−½L_m²(k_h − k_s − k cos θ)²], with L_m² = L²L_c²/(2L² + L_c²) ([cavalieri-2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) note, eqs. 47–48).
- Where the difference wave is acoustically matched (inside the BBSAN band), the exponential is 1 at the peak angle, and jitter only lowers the prefactor. That gives −3.9, −2.9 and −1.8 dB at St 0.3, 0.4 and 0.6 with the paper's parameters, close to the 2–5 dB of Fig. 2.
- Where the difference wave is subsonic at every angle, jitter acts as the subsonic amplifier. That covers the n = 1 wave below St ≈ 0.22 and the n = 2 wave below St ≈ 0.51.
- So "not an amplifier at the peak" and "fills the missing sound with higher modes" are one mechanism. The persistent low-frequency over-prediction with L_c = 1.0D (p. 985) is the same amplification of a subsonic n = 1 wave below the BBSAN band, made worse by a coherence length that real jets probably make longer at low frequency (Jaunet et al. 2017, p. 977).
- The [jet-noise-mechanisms](../topics/jet-noise-mechanisms.md) page states the 2021 version of this ("k − k_s components can be subsonic even in a supersonic jet"); this paper is its first demonstration.

**Agreements and contradictions with other notes:**
- [tam-1982](tam-1982-shock-associated-noise-cd-nozzles.md): the same product model; this paper confirms that only k − k_s radiates (p. 983), and adds the statistics.
- [ray-2005](ray-2005-instability-wave-shock-cell-interaction-sound.md) (conference precursor of Ray & Lele 2007): n = 2 radiates only at higher St (St 0.9 there); here n = 2 enters at St ≈ 0.5–0.6 for β = 1.04. Ray et al. also found that a longer envelope makes the lobe louder and narrower (p. 4–5 there), as Fig. 8(c) does here.
- [shock-cell-models](../topics/shock-cell-models.md) topic: the measured secondary shock wavenumbers k_s2, k_s3 come from cells that shrink downstream and are not Pack's higher modes ([nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) note, p. 7–8). This model uses Pack's uniform, non-decaying modes with k_s2 = 2.30k_s1, so its "n = 2" is an idealisation of the train's Fourier content. The 2021 paper's PIV fit (k_mod = 0.79k + 1.02, with decay) is the correction.
- [nogueira-2021-wavepacket-modulation-shock-containing-jets](nogueira-2021-wavepacket-modulation-shock-containing-jets.md): shocks lengthen the wavepacket envelope. By App. A here, a longer L sharpens the BBSAN peaks and their spurious structure, so the need for jitter would grow (my inference).
- [tan-2019-correlation-analysis-piv-screeching-jets](tan-2019-correlation-analysis-piv-screeching-jets.md) and [tan-2019-equivalent-bbsan-source-reconstruction-screeching-jets](tan-2019-equivalent-bbsan-source-reconstruction-screeching-jets.md): far-field-fitted statistical models need streamwise length coefficients about ten times the PIV ones. This paper's claim that only the wavepacket's coherence matters, not the bulk statistics (p. 972, 987), supports the topic page's reading that the long fitted coherence belongs to the wavepacket.
- [mathews-2025-thesis-supersonic-jet-rocket-noise-saturn](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md): at full scale, coherence islands between shocks show one wavepacket meeting several shocks. That is the partially coherent, multi-cell source modelled here, although the source here spans only 1–2 cells at k_hL = 5 (derived table).
- [andre-2013](andre-2013-bbsan-screeching-non-screeching-underexpanded-jets.md): screech changes BBSAN. The model has no screech, and the data's screech state is not given.
- The introduction places screech production between the 2nd and 4th shock cells ([edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md); p. 970).

**Methods and data for the lab workflow (CLAUDE.md):**
- *Shock-cell input:* mean fields only, so non-time-resolved PIV, mean schlieren or BOS suffice (as in the 2021 paper).
- *Wavepacket inputs:* u_c and L can come from SPOD modes of time-resolved schlieren or from POD-pair phase reconstruction of non-time-resolved PIV, the latter at the tone only. L_c at a given frequency needs time-resolved or simultaneous two-point data. Coherence decay in a CSD means more than one SPOD mode is active ([cavalieri-2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md), p. 16–18), so the SPOD eigenvalue spectrum of the m = 0 field gives a direct, frequency-resolved check of the constant L_c = 1.0D assumption.
- *Jitter is the time-domain face of coherence decay*, and this paper treats it only statistically. The SPOD → reconstruction → Hilbert POD pipeline ([nekkanti-2021-spod-reconstruction-denoising-frequency-time](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md), [raiola-2025-hilbert-pod](raiola-2025-hilbert-pod.md)) could measure it in time: the instantaneous amplitude and phase of the BBSAN-band wavepacket, and the phase drift between axial stations, which sets L_c, in a screech-free jet (suggestion, not in the paper). Line-of-sight schlieren mixes azimuthal modes, so the m = 0 assumption of the line source must be borne in mind.
- *Wavenumber maps:* the radiation-square analysis of eq. 4.4 is the same streamwise-wavenumber split the group applies to SPOD modes of schlieren (k_x filtering). The k_h − k_s and k_h + k_s lobes here are the BBSAN counterparts of the screech triad products.

**Modelling side and the PyFR staging LES:** the model costs almost nothing once u_c, L, L_c and k_s are known. The PyFR A1/A2 runs (`Simulations/PyFR_Staging_Continuation/`, NPR 2.10–2.25, β ≈ 0.43–0.55 from M_j 1.09–1.14) would give all four directly: u_c and L from SPOD, L_c from the azimuthally decomposed CSD, and k_s from the mean. They would also test the Gaussian, frequency-independent coherence assumption in a shock-containing jet, which the paper had to borrow from subsonic data (p. 977). The screech tones would have to be removed first.

**Rocket noise:** BBSAN is absent from full-scale rocket spectra according to [lubert-2022-supersonic-jet-noise-launch-vehicles-review](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), but shock noise is found at full scale for a jet engine in [mathews-2025-thesis-supersonic-jet-rocket-noise-saturn](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md). The general lesson carries over to Mach-wave-dominated rocket plumes: jitter matters little for the acoustically matched component and much for the subsonic remainder.

**Items to verify against the PDF:**
1. Sign of the exponent in eq. 2.16 (+ik cos θ printed; − is consistent with eq. 4.5 and Fig. 1), and the A²/(4πx²) prefactor (p. 976).
2. "L = 1.0D and k_hL = 5" (p. 977): Table 1 lists only k_hL = 5.0, so L probably varies with frequency. The derived table assumes L = 5/k_h.
3. Radiation square at 0.6M_j = 0.87 (Figs 4, 6, 7). For the unheated Norum & Seiner jet, u_c/c_∞ = 0.6U_j/c_∞ ≈ 0.73. The Fig. 2 peak angles suggest 0.87 was used in the computation too.
4. c_sn = 2Δp/(σ_np_∞) without 1/J₁(σ_n) (p. 974); Δp is described as at the "throat" of the nozzle.
5. β printed as 1.04; √(M_j² − 1) = 1.045 for NPR 3.4.
6. Norum & Seiner data: narrowband or one-third-octave, tabbed or not, and which nozzle (p. 979). This decides whether the secondary peaks are "artificial".
7. A(ω): units of C₁, and whether C₂ multiplies ω, St or 2πSt (p. 977). It is fitted to NPR 2.5 LDV data for an NPR 3.4 model.
8. Quadrature, integration limits and grid for eq. 2.16 are not stated.
9. Values read from Figs 2, 7 and 8 (peak levels, angles, the transform at 90° and 150°).

**Candidates for `/add-paper`:** Cavalieri & Agarwal 2014 (JFM 748, the model extended here); Lele 2005 (AIAA 2005-2841, phased-array shock-noise models); Ray & Lele 2007 (JFM 587); Suzuki 2016 (AIAA 2016-4047, LES wavepacket shock noise); Tam 1987 (JSV 116) and Tam 1990 (JSV 140); Tam, Jackson & Seiner 1985 (JFM 153, multiple-scales shock cells); Harper-Bourne & Fisher 1973 (AGARD CP 11); Morris & Miller 2010 (AIAA J. 48); Kalyan & Karabasov 2017 (JSV 394); Savarese et al. 2013 (AIAA 2013-2080, LDV of shock-cell noise); Sinha et al. 2014 (JFM 742); Baqui et al. 2015 (JFM 776); Jaunet, Jordan & Cavalieri 2017 (PRF 2); Tan et al. 2017 (AIAA 2017-3028, shock-noise models on PIV).
