---
key: "tam-2008-sources-of-jet-noise-experimental-evidence"
title: "The sources of jet noise: experimental evidence"
authors: ["Tam, Christopher K. W.", "Viswanathan, K.", "Ahuja, K. K.", "Panda, J."]
year: 2008
type: "article"
venue: "JFM 615, 253–292"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "615", "pages": "253--292"}
doi: "10.1017/S0022112008003704"
arxiv: ""
pdf: "jet-noise-mechanisms/Tam-EtAl_2008_The-Sources-Of-Jet-Noise-Experimental-Evidence.pdf"
version: "published"
unverified: []
group: false
facility: "GTRI anechoic chamber (two-microphone arc); NASA Glenn single-stream jet rigs (Rayleigh scattering); Boeing Low Speed Aeroacoustics Facility (elliptic mirror); archived far-field data"
data: ["microphones-far", "Rayleigh-scattering"]
methods: ["statistics", "PSD", "coherence", "empirical-model", "beamforming"]
flow: ["round-jet", "subsonic", "supersonic", "heated"]
phenomena: ["mixing-noise", "Mach-wave-radiation", "directivity", "source-location", "KH-wavepackets", "coherent-structures"]
params: {"M_j": "0.3–2.0", "TR": "1.0–3.2 (T_r/T_a)", "D": "1.6 in convergent (M 0.9) and 2 in C-D (M 1.67) at GTRI; other rigs not stated", "St": "St_peak = f_p D_j/u_j ≈ 0.15–0.39", "r": "100 D_j (scaled spectra); 10 ft (GTRI); 50D and 100D (Glenn)"}
topics: ["jet-noise-mechanisms", "rocket-noise-models"]
related: ["tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "tam-1995-supersonic-jet-noise", "jordan-2013-wave-packets-turbulent-jet-noise", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "jaunet-2017-two-point-coherence-wave-packets-turbulent-jets", "tam-1989-three-families-instability-waves-high-speed-jets", "samimy-2006-plasma-actuators-high-speed-jet-flow-noise-control", "gee-2010-near-field-vector-intensity-solid-rocket-motor", "gee-2016-near-field-intensity-static-rocket-firings", "panda-2013-noise-sources-rocket-test-firings-launch-phased-array", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "tam-1984-sound-instability-waves-supersonic-axisymmetric-jets", "tam-1994-turbulent-mixing-noise-supersonic-jets", "viswanathan-2004-aeroacoustics-hot-jets"]
cites: ["tam-1994-turbulent-mixing-noise-supersonic-jets", "tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "viswanathan-2004-aeroacoustics-hot-jets"]
summary: "Spectra, power laws, 2-mic and Rayleigh flow–sound correlations, mirror maps: coherent aft large-structure noise vs incoherent sideline fine-scale noise"
---
# The sources of jet noise: experimental evidence

- **Authors:** Christopher K. W. Tam (Florida State University, Tallahassee), K. Viswanathan (The Boeing Company, Seattle), K. K. Ahuja (Georgia Institute of Technology, Atlanta), J. Panda (NASA Ames Research Center, Moffett Field) (p. 253). Not Shock Lab group work.
- **Source:** J. Fluid Mech. (2008) 615, 253–292, doi:10.1017/S0022112008003704. Received 24 July 2007, revised 16 July 2008 (p. 253). Partly funded by Boeing (Viswanathan as technical monitor); the Georgia Tech work by the NASA Vehicle Systems Program and DDR&E URETI (p. 290).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/jet-noise-mechanisms/Tam-EtAl_2008_The-Sources-Of-Jet-Noise-Experimental-Evidence.pdf` (index key `jet-noise-mechanisms/Tam-EtAl_2008_The-Sources-Of-Jet-Noise-Experimental-Evidence.pdf`, 40 pp., publisher's version with a Cambridge "published online" stamp). Page refs are journal pages; **PDF page = journal page − 252**. The text layer drops every Greek letter and scrambles the displayed equations and the Table 1 layout, so eqs. (1)–(10), Table 1 and all figure readings were taken from 110–250 dpi page renders.
- **Tags:** jet mixing noise, two-source model, large turbulence structures, fine-scale turbulence, similarity spectra (F/LSS, G/FSS), Mach wave radiation, instability waves as wavepackets, Gaussian amplitude envelope, directivity, peak Strouhal number, generalized power law, velocity exponent, dimensional analysis, two-microphone far-field correlation, autocorrelation, cross-correlation, radial and polar coherence of the sound field, molecular Rayleigh scattering, flow–acoustic (causality) correlation, elliptic mirror microphone, source location, heated jets, low-Mach jets, acoustic analogy critique

## Summary
The paper collects four kinds of experimental evidence that turbulent jet mixing noise comes from two distinct sources: large turbulence structures (instability waves/wavepackets), which radiate a coherent, highly directional field into the downstream arc, and fine-scale turbulence, which radiates a nearly omnidirectional, incoherent field (p. 253, 256–258). (1) Archived single-microphone spectra (M_j 0.3–2.0, T_r/T_a 1.0–3.2) show two different trends with angle in OASPL, peak Strouhal number and the velocity exponent of a dimensionless power law, with the change-over near inlet angle θ ≈ 120–130° (p. 261–267). (2) New two-microphone measurements on a 10 ft arc show that the downstream field (θ > 130°) is correlated radially (≈ 2.4 D_j) and between microphones 10° apart (R up to ≈ 0.6), while the sideline field is not (p. 267–278). (3) Point Rayleigh-scattering density/velocity signals inside the jet correlate with the far-field pressure by up to ≈ 22 % at 150°, falling to the facility noise floor below 120° (p. 278–284). (4) An elliptic mirror microphone shows sideline sources peaking at one position just downstream of the end of the potential core for all sideline angles, while the downstream-arc source peak moves upstream as θ increases (p. 284–289). There is no new model or simulation: the theory content is a Gaussian-envelope wavepacket argument for subsonic Mach-wave radiation (eqs. 1–3) and a dimensional-analysis derivation of the power law (eqs. 6–7).

## Key findings
**Background and the two-source picture (§1, p. 253–261)**
- Laufer, Schlinker & Kaplan (1976) proposed an earlier, different two-source model from mirror-microphone data: source distributions differed between 90° and 150°, and the 150° signal carried "numerous shock-like spikes" while the 90° signal was smooth (p. 254). (The spikes are what is now called crackle.)
- **Similarity spectra** (Tam, Golebiowski & Seiner 1996; Fig. 2, p. 255–256): F (peaky, large-structure) fits all spectra inside a downstream cone, G (broad, fine-scale) fits upstream and sideline spectra, and transitional angles need a sum of both. Fig. 3 re-demonstrates this on Seiner et al. (1992) and [Viswanathan (2004)](viswanathan-2004-aeroacoustics-hot-jets.md) data at T_r/T_a = 1.8 for M_j = 0.7, 1.5 and 1.96: G at 80–100°, F at 130–140°, F + G at 110–120° (p. 256–257).
  - Other confirmations quoted (p. 256): Dahl & Papamoschou (2000, coaxial jets); Viswanathan (2002, 2004, subsonic over a range of temperature ratios); Tam (1998, Yamamoto et al. 1984 data from C-D, plug and suppressor nozzles, static and in simulated flight; NASA AR 3 elliptic and AR 7.6 rectangular nozzles); Tam & Zaman (2000, elliptic, rectangular, tabbed and six-lobe subsonic nozzles).
- **Fine-scale source** (p. 256–258): after Tam & Auriault (1999), fine-scale turbulence exerts a turbulence pressure equal to 2/3 of the turbulence kinetic energy, and its fluctuations radiate. Each blob is small and radiates statistically isotropically. Convection gives a slight downstream bias, and refraction through the shear layer gives a cone of relative silence, strongest for hot high-speed jets (Atvars, Schubert & Ribner 1965).
- **Large-structure source** (p. 258–260): axial coherence over a diameter or more gives highly directional radiation. For supersonic convection it is a wavy wall producing Mach waves (Fig. 4). Statistically, large structures behave as instability waves (Tam & Chen 1979). Growth and decay broaden the wavenumber spectrum (eqs. 1–3, Fig. 5), so even a wave with subsonic phase speed has a supersonic-phase-speed tail that radiates ([Tam & Burton 1984](tam-1984-sound-instability-waves-supersonic-axisymmetric-jets.md)). Kopiev et al. (2006) measured instability waves and their noise in a supersonic jet, which the authors call a direct validation (p. 260).
- **Earlier flow–acoustic correlations** (p. 260): Panda & Seasholtz (2002) and Panda, Seasholtz & Elam (2005) correlated point Rayleigh-scattering signals near the end of the potential core with a 150° microphone and found normalised correlations of **22 %, 19 % and 7 % at M 1.8, 1.4 and 0.95**. These stayed about the same over the jet half-width radially and a few diameters axially, and fell to the facility noise level at 90°. Consistent results: Hurdle, Meecham & Hodder (1974), Schaffar (1979), and Bogey & Bailly's (2005) causality analysis of LES data.
- **Data used** (Table 1, p. 261): see Setup / method.

**§2 Single far-field microphone (p. 261–267)**
- **Directivity** (Fig. 6, p. 261–262). Spectra at transitional angles were split into F and G parts and each OASPL computed (open symbols large-structure, filled fine-scale). Large-structure noise is highly directional and drops off rapidly between θ = 120° and 140°, which the authors read as the Mach-wave cut-off. Fine-scale noise rises gently with θ, attributed to source convection. Heating (T_r/T_a = 2.2) strengthens the large-structure part and widens its lead (p. 262). Values read from Fig. 6 are in Data tables.
- **Peak Strouhal number** St_peak = f_p D_j/u_j (Fig. 7, p. 262–263). Where fine-scale noise dominates, St_peak rises slowly with θ and falls with heating (cold jets highest). Where large-structure noise dominates, St_peak falls steeply with θ and is insensitive to temperature and to Mach number (M_j 0.6 and 1.0). Fine-scale St_peak is slightly higher at the lower Mach number (p. 262–263).
  - Read from Fig. 7: fine scale, M_j 0.6: 0.31→0.39 (cold, 50→130°), 0.25→0.32 (1.8), 0.21→0.29 (2.7); M_j 1.0: 0.27→0.35 (cold, 50→120°), 0.20→0.28 (2.2), 0.18→0.275 (3.2). Large structures at both Mach numbers: ≈ 0.29–0.32 at 110–120°, 0.21–0.24 at 130°, 0.19 at 140°, 0.15–0.17 at 150°.
- **Generalized power law** (eqs. 4–7, Figs. 8–10, p. 263–266). With the dimensionless form I/p∞² = A(u_j/a∞)ⁿ/(r/D_j)², each temperature ratio lies on a straight line in log–log axes at both 90° and 150° (Fig. 8, five temperature ratios 1.0–3.2).
  - Cold (Fig. 9a): n ≈ 8 for θ < 120° (Lighthill's u⁸), rising rapidly beyond 120° to **n ≈ 9.9 at 150°** (p. 265). Read from the figure: 7.9–8.3 over 50–110°, 8.5 at 120°, 8.9 at 130°, 9.6 at 140°, 9.9 at 150°.
  - T_r/T_a = 2.7 (Fig. 9b): n rises linearly from ≈ 6.4 at 50–60° to ≈ 7.65 at 110°, then to 8.25 (120°), 8.85 (130°), 9.0 (140°), 9.1 (150°) (read from figure). The text says "for hot jets, n is usually smaller than 8" and that Lighthill's u⁸ law "is not valid for hot jets" (p. 265).
  - The factor A has the same two-branch behaviour (Fig. 10, p. 266): cold, A × 10⁵ ≈ 0.2→1.0 over 50–120° then 1.7, 3.8, 6.0 at 130, 140, 150°; T_r/T_a = 2.7, ≈ 0.1→0.45 over 50–110° then 0.65, 1.4, 2.2, 2.95 at 120–150° (read from figure).
- **Low-Mach jets** (Fig. 11, p. 266–267): for an M_j 0.3 cold jet (Norum & Brown 1993) the G spectrum fits every angle from 50° to 150°, including the downstream ones. At low Mach number the supersonic-phase-speed part of the wavenumber spectrum shrinks, so fine-scale noise dominates everywhere. With Tam & Zaman's six-lobe nozzle (which suppressed large structures), this is offered as "indirect confirmation" that one source can be removed to expose the other (p. 267). Viswanathan (2007) did see F-shaped spectra in low-Mach jets beyond 150° (p. 267).

**§3 Two-microphone far-field correlations (p. 267–278)**
- **Autocorrelations** (eq. 8, Figs. 14–15, p. 269–270): at both M 1.67 and M 0.9 they fall into two families, broad at 140–160° and a narrow spike at ≤ 130°. The authors note this is expected, since the autocorrelation is the Fourier transform of the spectrum (p. 269). Small wiggles at 80–100° are chamber-wall reflections (p. 270).
- **Negative lobes** (Figs. 16–18, p. 271–272): at M 0.9, T_r/T_a = 3.2 the 150° autocorrelation has negative lobes about twice as deep as at 90° (≈ −0.17 against ≈ −0.1, read from Fig. 16). The 120° curve matches 90° except for deeper lobes, which the authors call the first sign of large-structure noise. A compression–expansion pulse explains the lobes (Fig. 18).
- **Radial correlation length** (eq. 9, Fig. 17, p. 272–273): for M 1.67 at 150°, the most negative value (≈ −0.23, read from figure) is at τ_neg max = 1.8 × 10⁻⁴ s, so λ_corr ≈ 2τ_neg max a₀ ≈ **2.4 D_j**. Because sound is non-dispersive, the authors take this as the coherence length of both the sound field and the source (p. 272–273).
  - My check: 2 × 1.8 × 10⁻⁴ s × 340 m s⁻¹ = 0.122 m = 2.4 × 50.8 mm, so D_j ≈ the 2 in exit diameter, i.e. the jet was close to design.
- **Cross-correlation in polar angle** (eq. 10, Figs. 19–22, p. 273–278). Microphones are numbered 1 (150°) to 8 (80°); −1 is 160°. The peak value of R_mn(τ) is used as the coherence indicator.
  - Fig. 19 (M 1.67, reference 150°): clear correlation only with the 160° (peak ≈ 0.38) and 140° (≈ 0.32) neighbours; ≤ 0.05 for all others (read from figure).
  - When both microphones are in θ > 130°, the maximum normalised cross-correlation reaches ≈ 0.6 (M 0.9: R₁₂ ≈ 0.59, R₂₃ ≈ 0.30, R₁₃ ≈ 0.18). Outside that sector, neighbours 10° apart give "no more than 0.1", and beyond the immediate neighbour the values are near the facility noise (p. 274).
  - M 1.67 is less coherent than M 0.9 in the aft arc (R₁₂ ≈ 0.32, R₂₃ ≈ 0.11, read from Fig. 22); the paper does not comment on this.
  - Interpretation (Figs. 23–24, p. 274–278): fine-scale noise is a field of narrow random pulses, so two microphones rarely see the same pulse at a fixed delay. Large-structure noise consists of wide pulses (of the order of the structure size) confined to the radiation zone. The decisive difference is pulse width, not intensity (p. 278).
- **Conclusion of §3** (p. 278): for high subsonic to moderately supersonic jets the field within θ > 130° has a radial correlation length of about two diameters and significant polar correlation; outside it the field has little spatial correlation in either direction. The authors call these results new.

**§4 Direct correlation of turbulence and far-field sound (p. 278–284)**
- **Directivity of the correlation** (Figs. 25–26, p. 279–280). With the probe on the centreline (x/D = 12 for M 1.8, 10 for M 1.4 and 0.95), the normalised correlations at 150° are ≈ 0.22, 0.19 and 0.068 for ⟨ρuu, p′⟩ and ≈ 0.21, 0.17 and 0.028 for ⟨ρ′, p′⟩ (read from figures). They fall to the noise floor (≈ 0.005–0.01) for θ < 120°, with the main drop between 140° and 130°.
  - These figures **correct errors in Panda et al. (2005) figs 12(a,b)** (p. 280).
  - The pattern does not change when the probe moves over the jet half-width or a few diameters axially (p. 280).
- **Interpretation** (Fig. 27, p. 280–281): a 90° microphone hears the sum of all the small blobs, so one blob's contribution is negligible; a 150° microphone hears mainly the large structures, of which the probe signal is representative. The correlation therefore measures the large-structure noise only. Its 130–140° cut-off matches the change-over angles of §§2–3, which the authors take as the validation for tying the F spectrum to large structures (p. 281–282).
- **Correlation as source strength** (Fig. 28, p. 282–283): normalising by a common reference (ρ′_rms at r/D = 0, x/D = 7; p′_rms at 150° for the cold jet), the M 0.9 correlation rises with temperature ratio (1.0, 1.43, 1.82, 2.7), as does far-field noise. So ⟨ρ′, p′⟩_max/(ρ′_rms p′_rms)_ref measures relative source strength.
  - Read from Fig. 28: lip-line (r/D = 0.5) peaks ≈ 0.055, 0.07, 0.12, 0.163 at x/D ≈ 6, 6–7, 6, 5; centreline peaks ≈ 0.085, 0.118, 0.17, 0.195 at x/D ≈ 7, 9, 8, 7.
- **Source maps, M 1.48, T_r/T_a = 2.27** (Fig. 29, p. 283). Reference ρ′_rms at r/D = 0.5, x/D = 3.
  - Along the lip line, strength rises steeply with θ and is insignificant below 120°. **The lip-line peak moves upstream as θ increases**, which the authors call new: read from the figure, ≈ 0.106 at x/D ≈ 3 (150°), ≈ 0.06 at 3–5 (140°), ≈ 0.022 at 5–7 (130°), and still rising at x/D 11 (120°).
  - On the centreline the peak lies slightly downstream of the end of the potential core and moves downstream with θ (≈ 0.04–0.05 at x/D ≈ 11 for 140–150°, ≈ 0.026 at x/D ≈ 9 for 130°, read from figure).
  - Shear-layer sources are somewhat louder than centreline ones for moderately supersonic jets (p. 283).
- **M 0.6, T_r/T_a = 2.27** (Fig. 30, p. 283–284): much weaker, significant only at 150°, with the dominant source on the centreline slightly downstream of the core end (≈ 0.052 at x/D ≈ 9, read from figure). The lip-line data stop at x/D = 5, still rising. The authors suggest that rapid decay of the large structures near the end of the core creates supersonic wavenumber components (p. 284).

**§5 Elliptic mirror source distributions (p. 284–289)**
- **Instrument** (Fig. 31, p. 284–285): Boeing LSAF elliptic mirror, aperture 1.5 m, semi-major axis 2 m, microphone at the near focus and far focus on the jet centreline. It rejects sources displaced transversely, but not along its own major axis, so it "listens" to a whole axial slice of the jet (near and far shear layers). Resolution improves with frequency. Unlike direct correlation, it hears both sources.
- **M 1.9, cold** (Fig. 32, p. 285–286): source strength (OASPL per unit length) drops sharply between 140° and 110°. The 90–110° distributions all peak at the same place, x/D ≈ 17 (read from figure), "slightly downstream of the end of the potential core", consistent with statistically isotropic fine-scale sources. The 130–150° distributions do not: the peak moves upstream as θ increases (≈ x/D 14.5, 13 and 11 at 130°, 140° and 150°, read from the arrows). This agrees with Fig. 29(a); "we do not know the reason" (p. 286).
  - Peak levels read from Fig. 32: ≈ 99.5 dB (90°), 100 (100°), 100 (110°), 103.7 (120°), 109.5 (130°), 114 (140°), 114.5 (150°).
- **M 1.9, T_r/T_a = 2.2** (Fig. 33, p. 287): same pattern. Sideline peaks at x/D ≈ 17; 120° at ≈ 16.4; 150° at ≈ 13.8 (read from a 200 dpi render). Here the 120° peak (≈ 118 dB) slightly exceeds 150° (≈ 117 dB).
- **Subsonic, T_r/T_a = 3.2** (Figs. 34–35, p. 287–289): M 0.9 sideline (90°, 110°) and 130° peaks at x/D ≈ 8.5, with 140° and 150° at ≈ 5.7 and ≈ 3 (read from the arrows). M 0.5: sideline peaks at x/D ≈ 5.7, with 140° and 150° at ≈ 4.7 and ≈ 2.7. The same two behaviours as at M 1.9 (p. 287).

**§6 Conclusions (p. 287–290)**
- All four data sets point to two sources: fine-scale turbulence and large turbulence structures (p. 287–288). The downstream field is coherent radially and along any polar arc; the sideline field is random, broadband and has little spatial correlation (p. 288).
- Hileman et al. (2003, 2004, 2005), using simultaneous acoustics and real-time flow visualisation, saw only the large-structure noise and are "similar and complementary" to the direct correlations (p. 288).
- CAA practice extends computed fields to the far field with acoustic analogies and so labels the sources "quadrupoles"; Bogey & Bailly (2005) are the exception that processed LES data to find the sources, and their conclusion supports the two-source model (p. 289).
- The inverse-problem non-uniqueness of equivalent sources does not apply to direct source–sound correlations (p. 290). Noise suppression should target the large turbulence structures as the dominant sources (p. 290).

## Setup / method
**Experiments and data** (Table 1, p. 261; rebuilt from the rendered page):

| Experiment | M_j range | T_r/T_a | Source of data |
|---|---|---|---|
| Single far-field microphone | 0.3–2.0 | 1.0–3.2 | Seiner et al. (1992); Viswanathan (2004); Norum & Brown (1993) |
| Two far-field microphone correlation | 0.9 and 1.67 | 1.0 and 3.2 | Present investigation (GTRI) |
| Direct correlation, in-jet turbulence vs far-field microphone | 0.6–1.8 | 1.0–2.7 | Panda et al. (2005) and present investigation (NASA Glenn) |
| Mirror-microphone source distribution | 0.5–1.9 | 1.0–3.2 | Present investigation (Boeing LSAF) |

- **Angle convention:** θ is the **inlet angle**, measured from the upstream jet axis (θ = 180° is downstream), used throughout (p. 254, 264). The polar angle from the jet axis is θ′ = 180° − θ. (The jet-noise-mechanisms topic page measures from the downstream axis.)
- **Single-microphone analysis** (§2): archived spectra, scaled to r = 100 D_j and plotted as 10 log₁₀(S u_j D_j⁻¹ p_ref⁻²) against f D_j/u_j (Fig. 3). Transitional spectra were split into F and G parts by fitting the two similarity spectra, peak to peak (p. 256, 261). Then OASPL per component, St_peak, and power-law fits of n and A (from slope and intercept at u_j/a∞ = 1). Expansion state, nozzle geometry and facilities are not restated here.
- **GTRI two-microphone experiment** (§3.1, p. 268): static anechoic chamber; convergent nozzle of 1.6 in exit diameter for M 0.9 and a 2 in C-D nozzle for M 1.67. Microphones on an arc of radius 10 ft, 10° apart from θ = 80° to 160° (Figs. 12–13). Acquisition: Δf = 24 Hz, span 0–76.8 kHz, 512 averages, 25 % overlap.
  - The arc is ≈ 75 D (1.6 in) and ≈ 60 D (2 in) (my arithmetic), short compared with source regions extending 10–20 D downstream.
  - The temperature ratio for Figs. 14, 15, 17, 19, 21 and 22 is not stated (Fig. 16 is T_r/T_a = 3.2).
  - Correlations are in the time domain; no frequency-resolved coherence is shown.
- **NASA Glenn direct correlation** (§4, p. 278–280): two single-stream rigs, one unheated (high subsonic and supersonic) and one heated with a hydrogen combustor (no soot), which supplied most of the data. Filtered primary air and a ≈ 15 m s⁻¹ clean co-flow keep dust out of the Rayleigh probe volume. Microphones on a 50D arc (unheated) or 100D arc (heated). The laser probe volume was traversed in an (x, r) plane through the axis with the microphone fixed; signals acquired simultaneously and the synchronisation independently checked.
  - Molecular Rayleigh scattering (Seasholtz, Panda & Elam 2001, 2002; Panda 2007) gives near-point density and velocity fluctuations without seeding or intrusive probes (p. 278).
  - The positive maximum of the cross-correlation is used. Panda et al. (2002, 2005) normalised by local RMS values; here some data are normalised by a common reference RMS so that levels compare across positions and angles. Day-to-day variations in ρ′_rms and p′_rms were small and random and were left in (p. 280, 282).
- **Boeing mirror** (§5, p. 284–285): details of facility and processing in Viswanathan (2003). Output: relative OASPL per unit jet length against x/D, whose area is the OASPL in that direction. x/D presumably uses the nozzle exit diameter; nozzle sizes are not given.
- **Data requirements of each method** (my summary):
  - Similarity-spectrum fits, St_peak, power laws and mirror maps need only time-averaged spectra (time-resolved microphone signals averaged into PSDs).
  - Auto- and cross-correlations need simultaneous time-resolved microphone signals.
  - Direct (causality) correlation needs a simultaneous time-resolved flow quantity at a point (Rayleigh scattering here) and a far-field pressure signal; the time lag absorbs the propagation delay.
  - None of the analyses resolves how amplitude or frequency change over time: all are long-time averages.
- **Theory and modelling content:** no simulation and no new source model. The paper relies on Tam & Chen's (1979) stochastic instability-wave model, Tam & Burton's (1984) growth-and-decay radiation mechanism (illustrated by eqs. 1–3), Tam & Auriault's (1999) fine-scale theory, and Tam's (2006) dimensional analysis (eqs. 6–7). None of these models is run against the new data; the comparisons are qualitative.

## Key equations
All checked against rendered pages.

- **Instability wave** (eq. 1, p. 259): $p = A\,e^{i(kx-\omega t)}$. If ω/k > a₀ (ambient sound speed) it radiates Mach waves, otherwise nothing.
- **Gaussian amplitude envelope** (eq. 2, p. 259): $A(x)=A_0\,e^{-(\ln 2)\left((x-x_0)/b\right)^2}$, with b the half-width at half maximum.
- **Wavenumber spectrum of the modulated wave** (eq. 3, p. 259):
  $$p(x,t)=A_0e^{-(\ln 2)((x-x_0)/b)^2+i(kx-\omega t)}=\frac{A_0 b}{(4\pi\ln 2)^{1/2}}\int_{-\infty}^{\infty}e^{-(\alpha-k)^2b^2/4\ln 2+i(\alpha x-\omega t)+i(k-\alpha)x_0}\,d\alpha .$$
  The spectrum is a Gaussian in α centred on k. Components with ω/α > a₀ (shaded in Fig. 5b) radiate even when ω/k < a₀.
  - My checks: the Fourier pair and prefactor are correct. The spectral half-width at half maximum is |α − k| = 2 ln 2/b ≈ 1.39/b, so shorter envelopes radiate more. Evaluating the spectrum at the radiating wavenumber α = (ω/a₀)cos θ′ gives a far-field amplitude ∝ exp[−k²b²(1 − M_c cos θ′)²/(4 ln 2)] with M_c = (ω/k)/a₀, which is the coherent (no-jitter) Gaussian line-source result of [Cavalieri et al. 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md): their envelope e^{−y²/L²} (eq. 34) gives a far-field PSD ∝ exp[−½k_h²L²(1 − M_c cos θ)²] (eq. 37, p. 11), the square of the amplitude here with L = b/√ln 2.
  - Fig. 5's axis label reads "ω/α₀"; it is presumably ω/a₀, the sonic wavenumber.
- **Lighthill and generalized power laws** (eqs. 4–5, p. 263): $I\propto u^8$; $I\propto u^n$ (Viswanathan 2004, 2006).
- **Dimensional analysis** (p. 263–264): six independent inputs p∞, a∞, u_j, T_r, ν, D_j, after using the equation of state and p_j ≈ p∞. The groups are u_j/a∞, T_r/T∞ and Re = u_jD/ν. The printed dimension of p∞ is M/(LT³), a typo for M/(LT²); T_r is given dimensions L²/(T²R).
- **Buckingham Π form** (eq. 6, p. 264): $\dfrac{I(r,\theta)}{p_\infty^2}=\dfrac{K\left(\frac{u_j}{a_\infty},\frac{T_r}{T_\infty},Re,\theta\right)}{(r/D_j)^2}$, with the r⁻² far-field decay built in. Re is dropped for high-Reynolds-number jets.
- **Generalized power law** (eq. 7, p. 264): $\dfrac{I(r,\theta)}{p_\infty^2}=A\dfrac{(u_j/a_\infty)^n}{(r/D_j)^2}$, with n(θ, T_r/T∞) and A(θ, T_r/T∞) fitted from slope and intercept at u_j/a∞ = 1 (Fig. 8). I is the OASPL in pressure-squared units, total, not split into components.
- **Normalised autocorrelation** (eq. 8, p. 269): $R_{nn}(\tau)=\dfrac{\langle p_n(t)p_n(t+\tau)\rangle}{\langle p_n^2(t)\rangle}$, with ⟨ ⟩ a time or ensemble average (stationary field).
- **Radial correlation length** (eq. 9, p. 272): $\lambda_{corr}\cong 2\,\tau_{neg\,max}\,a_0$, where τ_neg max is the lag of the most negative autocorrelation. The factor 2 comes from taking the pulse coherence time as twice that lag (p. 272).
- **Normalised cross-correlation** (eq. 10, p. 273): $R_{mn}(\tau)=\dfrac{\langle p_m(t)p_n(t+\tau)\rangle}{\langle p_m^2(t)\rangle^{1/2}\langle p_n^2(t)\rangle^{1/2}}$. Its maximum over τ is the coherence indicator.
- **Direct-correlation normalisations** (p. 280, 282): $\langle\rho uu,p'\rangle_{max}/[(\rho uu)_{rms}\,p'_{rms}]$ and $\langle\rho',p'\rangle_{max}/(\rho'_{rms}p'_{rms})$, local RMS (Figs. 25–26); $\langle\rho',p'\rangle_{max}/(\rho'_{rms}p'_{rms})_{ref}$, common reference RMS (Figs. 28–30).
- **Peak Strouhal number** (p. 262): $St_{peak}=f_pD_j/u_j$.

> **My check on the autocorrelation results.** Using the Tam et al. (1996) F and G formulas (as transcribed in [that note](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md)), the autocorrelation of a pure F spectrum has its most negative value −0.26 at τ f_p ≈ 0.34, and that of a pure G spectrum −0.06 at τ f_p ≈ 0.28 (numerical Fourier transform, my calculation). Fig. 17 (≈ −0.23 at 0.18 ms) therefore matches an F spectrum with f_p ≈ 0.34/1.8 × 10⁻⁴ s ≈ 1.9 kHz, i.e. St ≈ 0.21 for a cold M 1.67 jet (u_j ≈ 459 m s⁻¹, D = 50.8 mm, assuming T_r = 293 K). Equivalently λ_corr = 2τ_neg max a₀ ≈ 0.68 a₀/f_p: the "radial correlation length" is about two-thirds of the acoustic wavelength at the spectral peak. So the autocorrelation evidence restates the spectral shape, as the authors concede (p. 269); the polar cross-correlations and the flow–acoustic correlations are the independent evidence. The measured 150°/90° lobe ratio at M 0.9 (≈ 2, Fig. 16) is smaller than the pure F/G ratio (≈ 4.6), consistent with a mixed spectrum at 150° for that jet.

## Data tables
**OASPL by component at r = 100 D_j** (Fig. 6, p. 262; read from a 200 dpi render, ±1 dB). FSS = fine-scale (filled), LSS = large-structure (open); θ = inlet angle.

| T_r/T_a | M_j | FSS (dB) | LSS (dB) |
|---|---|---|---|
| 1.0 | 2.0 | 118 at 87° → 124 at 135° | 122 (131°), 132 (140°), 134.5 (150°), 133 (160°) |
| 1.0 | 1.5 | 110.5 (90°) → 112.5 (130°) | 112.5 (130°), 116.5 (140°), 124.5 (150°), 126.5 (160°) |
| 1.0 | 0.9 | 89 (50°) → 95.5 (130°) | 91.5 (120°), 95 (130°), 100 (140°), 100.5 (150°) |
| 1.0 | 0.6 | 78 (50°) → 82.5 (140°) | 77.5 (120°), 81 (130°), 85 (140°), 86 (150°) |
| 1.0 | 0.3 | 55.5 (50°) → 60.5 (150°), one component only | — |
| 2.2 | 1.5 | 112 (60°) → ≈ 116 (120°) | 112 (100°), 117.5 (110°), 124 (120°), 131.5 (130°), 133.5 (140–150°) |
| 2.2 | 1.0 | 100.5 (50°) → 108.5 (130°) | 102.5 (110°), 107.5 (120°), 115.5 (130°), 119.5 (140°), 121 (150°) |
| 2.2 | 0.8 | 95 (50°) → 103 (130°) | 97.5 (110°), 101 (120°), 108 (130°), 111 (140°), 112 (150°) |
| 2.2 | 0.6 | 89 (50°) → 96 (130°) | 89 (110°), 93 (120°), 98 (130°), 102 (140°), 103 (150°) |

> At the large-structure maximum, the lead over the fine-scale line is ≈ 3 dB (M 0.6), ≈ 5 dB (M 0.9) and ≈ 10 dB (M 2.0) cold, and ≈ 6.5 dB (M 0.6) and ≈ 17 dB (M 1.5) at T_r/T_a = 2.2 (my reading).

**Velocity exponent n of eq. 7** (Fig. 9, p. 265; read from figure):

| θ (inlet) | 50° | 60° | 70° | 80° | 90° | 100° | 110° | 120° | 130° | 140° | 150° |
|---|---|---|---|---|---|---|---|---|---|---|---|
| T_r/T_a = 1.0 | 8.1 | 7.9 | 7.95 | 8.25 | 8.15 | 8.1 | 8.3 | 8.5 | 8.9 | 9.6 | 9.9 |
| T_r/T_a = 2.7 | 6.45 | 6.4 | 6.6 | 6.8 | — | 7.3 | 7.65 | 8.25 | 8.85 | 9.0 | 9.1 |

**Maximum two-microphone cross-correlation** (Figs. 21–22, p. 275–276; read from figure). Microphones: 1 = 150°, 2 = 140°, …, 8 = 80°.

| Pair | 1–2 | 2–3 | 1–3 | 3–4 | 4–5 | 5–6 | 6–7 | 7–8 |
|---|---|---|---|---|---|---|---|---|
| M 0.9 | 0.59 | 0.30 | 0.18 | 0.18 | 0.13 | 0.12 | 0.10 | 0.08 |
| M 1.67 | 0.32 | 0.11 | 0.05 | 0.05 | 0.07 | 0.06 | 0.05 | 0.07 |

> For M 0.9 the 120–110° and 110–100° pairs read slightly above the "no more than 0.1" stated in the text (p. 274).

**Normalised flow–acoustic correlation at 150°** (Figs. 25–26, p. 279–280; probe on the centreline):

| M | Probe x/D | ⟨ρuu, p′⟩ normalised | ⟨ρ′, p′⟩ normalised | Below 120° |
|---|---|---|---|---|
| 1.8 | 12 | 0.22 (0.148 at 140°) | 0.21 (0.217 at 140°) | ≈ 0.005–0.01 |
| 1.4 | 10 | 0.19 (0.09 at 140°) | 0.17 (0.075 at 140°) | ≈ 0.005–0.01 |
| 0.95 | 10 | 0.068 | 0.028 | ≈ 0.003–0.005 |

**Source-peak locations** (my readings of the arrows and maxima):

| Jet | Method | Sideline (90–110°) peak x/D | 120° | 130° | 140° | 150° | Page |
|---|---|---|---|---|---|---|---|
| M 1.9, cold | mirror | ≈ 17 | ≈ 17 | ≈ 14.5 | ≈ 13 | ≈ 11 | p. 286 |
| M 1.9, T_r/T_a 2.2 | mirror | ≈ 17 | ≈ 16.4 | — | — | ≈ 13.8 | p. 287 |
| M 0.9, T_r/T_a 3.2 | mirror | ≈ 8.5 | — | ≈ 8.3 | ≈ 5.7 | ≈ 3 | p. 288 |
| M 0.5, T_r/T_a 3.2 | mirror | ≈ 5.7 | — | ≈ 5.5 | ≈ 4.7 | ≈ 2.7 | p. 289 |
| M 1.48, T_r/T_a 2.27 | correlation, lip line | — | > 11 | 5–7 | 3–5 | 3 | p. 283 |
| M 1.48, T_r/T_a 2.27 | correlation, centreline | — | ≈ 9 | ≈ 9 | ≈ 11 | ≈ 11 | p. 283 |
| M 0.6, T_r/T_a 2.27 | correlation, centreline | — | 9–11 | ≈ 9 | ≈ 9 | ≈ 9 | p. 284 |

## Figures worth remembering
- **Fig. 2 (p. 256):** the F and G similarity spectra against f/f_p, the figure most reused downstream.
- **Fig. 3 (p. 257):** F, G and F + G fits at 80–140° for M_j 0.7, 1.5 and 1.96 at T_r/T_a = 1.8.
- **Fig. 5 (p. 259):** wavenumber spectrum of a constant-amplitude wave (a line) against a growing–decaying wave (a Gaussian) with its supersonic tail shaded. The wavepacket radiation mechanism in one picture.
- **Figs. 6–7 (p. 262–263):** component OASPL and St_peak against inlet angle: two branches crossing near 120–130°.
- **Figs. 9–10 (p. 265–266):** velocity exponent n and factor A against angle, cold and T_r/T_a = 2.7.
- **Fig. 11 (p. 267):** M 0.3 spectra at 50–150°, all fitted by G.
- **Figs. 14–17 (p. 269–272):** autocorrelations at nine angles (M 1.67, M 0.9), the 150/120/90° comparison and the enlarged 150° curve used for λ_corr.
- **Figs. 19, 21–22 (p. 273–276):** cross-correlation shapes and bar charts of the maximum cross-correlation for every microphone pair.
- **Figs. 25–26 (p. 279–280):** directivity of the flow–acoustic correlation, the paper's strongest evidence.
- **Figs. 28–30 (p. 282–284):** relative source-strength maps from direct correlation, along the lip line and the centreline.
- **Figs. 32–35 (p. 286–289):** mirror source distributions for M 1.9 (cold and hot), M 0.9 and M 0.5 (hot).

## Notation
- θ: inlet angle from the upstream jet axis; θ′ = 180° − θ (polar angle from the jet axis); φ: azimuth.
- F, G: large-structure and fine-scale similarity spectra; f_p: peak frequency; St_peak = f_pD_j/u_j.
- M_j, u_j, D_j, T_j, p_j, ρ_j: fully expanded Mach number, velocity, diameter, temperature, pressure and density; T_r: reservoir (total) temperature; T_a = T∞: ambient temperature; a₀ = a∞: ambient sound speed; p∞, ρ∞: ambient pressure and density; ν: kinematic viscosity; Re = u_jD/ν.
- I(r, θ): OASPL as mean-square pressure; n, A: velocity exponent and factor of the generalized power law; K: unknown function in eq. 6.
- p, A, k, ω, b, x₀, α: wave pressure, amplitude, wavenumber, frequency, envelope half-width, envelope centre, spectral wavenumber (eqs. 1–3).
- R_nn, R_mn: normalised auto- and cross-correlations; τ: time delay; τ_neg max: lag of the most negative autocorrelation; λ_corr: radial correlation length.
- ρ′, ρuu: density fluctuation and the ρuu product from Rayleigh scattering; p′: far-field pressure fluctuation; ⟨a, b⟩_max: maximum of the cross-correlation over lag; subscript ref: common reference RMS.
- D: nozzle exit diameter; x/D, r/D: axial and radial position.

## Relevance to this project
The paper is the experimental case for the two-source model behind the similarity spectra of [Tam et al. 1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) and the instability-wave picture of [Tam 1995](tam-1995-supersonic-jet-noise.md). Those spectra and that picture are inputs to the rocket-noise models (CLAUDE.md, second research area) and to how the lab reads far-field spectra of its own jets.

**How it fits with the 1995 and 1996 papers (same author)**
- **The 1996 spectra re-tested on other data.** Tam 1996 fitted F and G to Langley supersonic data (M_j 1.37–2.24). Here the fits are shown on Seiner et al. and Viswanathan data down to M_j 0.7 (Fig. 3), and on M_j 0.3, where G fits everywhere (Fig. 11). The change-over angle agrees: 1996 puts large-structure dominance at χ > 125° and fine-scale at χ < 110° for M 2 ([Tam 1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md), p. 3); here n changes slope at 120° and the correlation cut-off is 130–140°.
- **Velocity exponents agree within about 0.4** (my comparison). Tam 1996's component fits give n = 7.6 (fine scale, 90°) and ≈ 9.5 (large scale, 160°) cold, and 6.70 and 8.72 at T_r/T∞ = 2.7 (from its eqs. 8 and 10). This paper's total-OASPL exponents are ≈ 8.15 (90°) and 9.9 (150°) cold, and ≈ 7.0 (90°, interpolated) and 9.1 (150°) at 2.7. The definitions differ: total OASPL here, component peak level there; different angles too.
- **An unresolved normalisation question** (my comparison). Here the large-structure St_peak = f_pD_j/u_j at 150° is ≈ 0.17 at M_j 1.0 for T_r/T_a = 1.0, 2.2 and 3.2 alike (Fig. 7b), i.e. u_j-scaling collapses it. Tam 1996 reports instead that f_LD_j/a∞ at 160° plateaus near 0.19 independent of temperature as V_j/a∞ falls towards 1 (that note, Fig. 10, p. 7). With u_j/a∞ = 0.91, 1.35 and 1.63 for these three jets (my isentropic estimates), u_j-scaling gives f_pD_j/a∞ = 0.155, 0.23 and 0.28, which cannot also be temperature-independent. Different angles (150° against 160°) and Mach ranges may reconcile them; the angle-dependence of LSS peak frequency in hot jets is worth checking before using either scaling at rocket temperatures.
- **What is new** is evidence beyond spectral shape: polar coherence of the aft field (Figs. 21–22), the flow–acoustic correlation directivity (Figs. 25–26, correcting Panda et al. 2005), and source maps by angle (Figs. 29, 32–35).

**The "two sources or one jittering wavepacket?" debate** (open question on the jet-noise-mechanisms topic page)
- [Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md) reject the two-source reading of the 1996 spectra because spectral shape changes smoothly with angle (that note, p. 181), and count this paper among flow–acoustic correlation studies whose insight is limited because wavepackets are extensive and a causal reading needs a source model in a locally measurable quantity (p. 186). [Cavalieri et al. 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) show that jitter spreads wavepacket radiation to wider angles (p. 14–16).
- What this paper establishes firmly is that the aft field (θ > 130°) is coherent, low-St and correlated with extensive structures, and that the sideline field is incoherent in time, radius and polar angle. Both camps agree on the first. The second fits fine-scale sources, but it would equally fit a jittering wavepacket whose coherence length is short ([Jaunet et al. 2017](jaunet-2017-two-point-coherence-wave-packets-turbulent-jets.md): in an M 0.4 jet, |m| ≤ 2 carry less than 10 % of the two-point coherence, p. 9, and bulk coherence lengths reach only ≈ 2D, p. 16–17). A single point probe can't separate these: low correlation at 90° means only that no single probe volume dominates the sideline sound. This is my reading; the paper does not discuss jitter.
- Two results here are harder for a one-source view and deserve weight:
  - The sideline source peak sits at the same x for 90–110° while the aft peak moves with angle (Figs. 32–35).
  - The velocity exponent changes abruptly near 120° (Fig. 9).
- A decisive test remains the one on the topic page: project measured sideline spectra onto SPOD or resolvent modes of the same jet, or compare a wavepacket model with measured coherence decay against G in shape and level. Note also that the paper's time-domain peak correlations conflate spectral coherence with the spread of arrival times from a source distributed over x/D ≈ 5–20 at a microphone only 60–75 D away. Frequency-domain coherence between microphones would separate the two.

**Methods for the lab workflow (CLAUDE.md)**
- **Far-field spectra (time-averaged PSD):** splitting a measured spectrum into F and G, and fitting n and A of eq. 7 per angle, are cheap first-pass analyses for the lab's microphone arcs. Remember that for shock-containing jets BBSAN and screech must be removed first, and strong screech raises both components by ≈ 3 dB ([Tam 1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md), p. 8).
- **Two-microphone correlations need time-resolved, simultaneous signals.** The polar cross-correlation map (Figs. 21–22) is easy with any arc, but frequency-domain coherence (and SPOD of the microphone array) is the better estimator. The autocorrelation width alone adds nothing beyond the PSD (my check above).
- **Flow–acoustic correlation needs time-resolved flow data synchronised with the microphones.** Time-resolved schlieren is a field version of the Rayleigh point probe: correlate (or compute frequency-resolved coherence between) each pixel's intensity and a far-field microphone, with the propagation delay as lag. This gives Fig. 25/29-type maps over the whole near field in one run. Non-time-resolved PIV cannot do this; it gives only the statistics.
- **Intermittency.** All the paper's statistics are long-time averages, yet Laufer's spiky 150° signal (p. 254) and Hileman et al.'s loud events (p. 288) point to intermittent radiation. The SPOD → reconstruction → Hilbert POD pipeline could track the instantaneous amplitude of the low-St aft wavepacket band in schlieren and correlate its envelope with the microphone envelope at 150° and at 90°. A strong 150° envelope correlation with a weak 90° one would reproduce Figs. 25–26 in time-resolved form and show whether the aft noise is bursty (my suggestion).
- **Source location against angle.** The aft-source peak moving upstream as θ grows (Figs. 29a, 32) is what a convection speed falling downstream would give for Mach-wave-like radiation: the shallowest angles need the fastest (upstream) structures (my hypothesis; the authors give no reason). The phase speed from a streamwise FFT of SPOD modes would test it directly.
  - Caveat (my reading of p. 285): the mirror cannot separate sources along its own major axis, which at θ = 150° is inclined only 30° to the jet. Its axial resolution therefore worsens at the aft angles where the shift is seen, especially at low frequency. The direct-correlation result (Fig. 29a) does not share this limitation and shows the same trend along the lip line, but the opposite trend on the centreline (Fig. 29b).
  - The 150° peaks at x/D ≈ 3 for the hot M 0.9 and M 0.5 jets (Figs. 34–35) are well upstream of the end of the potential core. For M 0.5, u_j/a∞ ≈ 0.87 (my estimate), so near-nozzle structures convect well below a∞ and Mach-wave radiation from there is unlikely. These peaks should be checked against the mirror's aft-angle resolution before being used.

**Modelling side**
- Eqs. 1–3 are the Gaussian wavepacket line source of the modern wavepacket literature, without jitter (my check above). The paper's physical model of the large structures (statistical instability waves) is therefore the same object that PSE, resolvent and SPOD studies now compute ([Tam 1995](tam-1995-supersonic-jet-noise.md); [Cavalieri et al. 2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md)). For hot jets, which instability family the aft radiation belongs to follows from [Tam & Hu 1989](tam-1989-three-families-instability-waves-high-speed-jets.md).
- The fine-scale side (Tam & Auriault 1999) is invoked but not tested. No model prediction is compared with any of the new data, so the paper supports the two-source *classification* rather than either source *model*.
- **PyFR staging LES** (`Simulations/PyFR_Staging_Continuation/`): an FW-H far field plus causality correlations between near-field LES quantities and far-field pressure, as in Bogey & Bailly (2005, cited p. 289), would reproduce Figs. 25–30 with full fields instead of a point probe. For the cold M_j ≈ 1.1 jet the aft change-over should sit near θ ≈ 120–130° (inlet). Mixing noise there will be mixed with screech and BBSAN in the forward arc.
- [Samimy et al. 2006](samimy-2006-plasma-actuators-high-speed-jet-flow-noise-control.md) is the control-side counterpart of the closing recommendation (p. 290) to suppress the large structures.

**Rocket noise modelling**
- **Two-source rocket models.** The empirical two-source rocket models (a directional large-structure part plus a broadband sideline part fitted to static firings) and the use of F as a reference spectrum rest on this classification. [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) cites the 1996 and 2008 spectra together (section III B, p. 9–12) and describes Kenny & Giacomoni's two-source fit to five static firings (p. 27–28); the [Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) builds on the two-source picture (p. 4). The same review finds the lab spectra fit rockets poorly; this paper's data stop at T_r/T_a = 3.2 and M_j = 2.0, far colder and slower than rocket plumes.
- **Source location.** At M 1.9 the sideline (fine-scale) source peaks at x/D ≈ 17 and the 150° source at x/D ≈ 11 (cold) to 14 (hot). Rocket measurements place the peak OASPL source at 17–20 D_e ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 12–14), and GEM-60 near-field intensity puts the 50 Hz source at 17–32D, moving to 10–20D above 600 Hz ([Gee 2016](gee-2016-near-field-intensity-static-rocket-firings.md), p. 1, 5). The angle-dependence here is a reminder that "the" apparent source location depends on the observation angle as well as frequency, which SP-8072-type distributed-source methods treat only through frequency.
- **Velocity scaling.** n ≈ 9–10 aft (cold) and ≈ 9 (hot) are lab-jet OASPL exponents, whereas rocket sound power in the Mach-wave regime scales as U_e³ with η ≈ 0.3–0.5 % ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 7–9). Neither eq. 7 nor its coefficients should be extrapolated to rockets.
- **Near-field intensity.** [Gee et al. 2010](gee-2010-near-field-vector-intensity-solid-rocket-motor.md) cite this paper for reading sideline-pointing intensity vectors *near the nozzle* as fine-scale noise. Here the fine-scale source distributions peak well downstream of the nozzle, at or beyond the end of the potential core (x/D ≈ 6–17), so near-nozzle sideline vectors are not obviously fine-scale on this paper's evidence (my comparison).
- [Panda et al. 2013](panda-2013-noise-sources-rocket-test-firings-launch-phased-array.md) is J. Panda's later rocket work, using phased arrays rather than flow–acoustic correlation.
- **Crackle.** Laufer et al.'s shock-like spikes at 150° (p. 254) are the lab precursor of the crackle and nonlinear steepening measured at full scale.

**Items to verify against the PDF**
1. The text says n is "as small as 5.5 for θ = 60°" and cites figure 10(b) (p. 265), but Fig. 10(b) shows A, and Fig. 9(b) reads n ≈ 6.4 at 60°.
2. Fig. 21 values for the 120–110° and 110–100° pairs (≈ 0.12–0.13) against the "no more than 0.1" in the text (p. 274).
3. The printed dimension of p∞ (M/LT³, p. 263) should be M/LT².
4. The mirror's semi-major axis is given as "2 m (6.73 ft)" (p. 284); 2 m is 6.56 ft.
5. The temperature ratios of the GTRI jets in Figs. 14, 15, 17, 19, 21 and 22, and the expansion state of all supersonic jets, are not stated.
6. All values marked "read from figure" (Figs. 6, 7, 9, 10, 16, 17, 19, 21, 22, 25, 26, 28–30, 32–35), especially the mirror peak positions (small arrows) and Fig. 33's arrow positions (≈ 13.8 and 16.4 D from a 200 dpi render).
7. Whether the mirror x/D uses the nozzle exit diameter or D_j; nozzle sizes for the Glenn and Boeing tests are not given here.
8. Fig. 16's τ axis: the left end label reads "−0.1" where −1.0 ms is expected.

**Candidates for `/add-paper`** (cited, not in the library): Panda & Seasholtz 2002 (JFM 450); Panda, Seasholtz & Elam 2005 (JFM 537; figs 12a,b corrected here); Panda 2007 (JFM 591); Viswanathan 2004 (JFM 516, aeroacoustics of hot jets; now [indexed](viswanathan-2004-aeroacoustics-hot-jets.md)); Viswanathan 2002, 2003, 2006, 2007; Tam & Chen 1994 (AIAA J 32, now [indexed](tam-1994-turbulent-mixing-noise-supersonic-jets.md)); Tam & Burton 1984a,b (JFM 138; Part 2 now [indexed](tam-1984-sound-instability-waves-supersonic-axisymmetric-jets.md)); Tam & Chen 1979; Tam & Auriault 1999 (AIAA J 37); Tam 1998; Tam & Zaman 2000; Tam 2006 (dimensional analysis of jet noise data); Laufer, Schlinker & Kaplan 1976; Hileman, Caraballo, Thurow & Samimy 2005 (JFM 544); Bogey & Bailly 2005 (AIAA 2005-2885); Kopiev et al. 2006; Seiner et al. 1992 (AIAA 92-2046); Norum & Brown 1993; Lighthill 1952, 1954.
