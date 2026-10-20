---
key: "edgington-mitchell-2015-multimodal-instability-weakly-underexpanded-elliptic-jet"
title: "Multimodal Instability in the Weakly Underexpanded Elliptic Jet"
authors: ["Edgington-Mitchell, Daniel", "Honnery, Damon R.", "Soria, Julio"]
year: 2015
type: "article"
venue: "AIAA J. 53(9), 2739–2749"
bib: {"journal": "AIAA Journal", "volume": "53", "number": "9", "pages": "2739--2749"}
doi: "10.2514/1.J053738"
arxiv: ""
pdf: "non-axisymmetric-jets/EdgingtonMitchell-EtAl_2015_Multimodal-Instability-In-The-Weakly-Underexpanded-Elliptic-Jet.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility (LTRAC supersonic jet facility)"
data: ["schlieren", "schlieren-TR", "PIV", "microphones-far"]
methods: ["statistics", "PSD", "coherence", "POD", "POD-pair"]
flow: ["elliptical-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "flapping", "helical", "axis-switching", "multimodal", "shock-cells", "KH-wavepackets", "shock-leakage", "coherent-structures"]
params: {"NPR": "2.2", "M_j": "≈1.12 (isentropic, my calculation; not stated)", "AR": "2", "D_e": "14.14 mm (2√(ab), 20 × 10 mm ellipse)", "Re": "≈4×10⁵ (on D_e)", "St": "0.52 (f D_e/U_j)", "TR": "≈1 (air at ambient temperature)"}
topics: ["non-axisymmetric-jets", "screech", "screech-staging-and-mode-switching"]
related: ["ivelja-2024-modal-analysis-screeching-elliptical-jets", "mazharmanesh-2025-screech-modes-non-axisymmetric-jets", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "suzuki-2026-coherent-structures-axis-switching-elliptical-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "rodriguez-2023-preferred-flapping-round-twin-jets", "nogueira-2026-flapping-motion-screeching-round-jets", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "mercier-2017-screech-feedback-loop-underexpanded-round-jets"]
cites: ["edgington-mitchell-2014-coherent-structure-helical-screech-mode", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "papamoschou-1988-compressible-turbulent-shear-layer", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i"]
summary: "AR 2 elliptic jet, NPR 2.2, schlieren + PIV POD: flapping (λ 1.2D) gives the St 0.52 screech; a slower helical-like pair (λ 2.4D) peaks after the shocks, no tone"
---
# Multimodal Instability in the Weakly Underexpanded Elliptic Jet

- **Authors:** Daniel Edgington-Mitchell, Damon R. Honnery, Julio Soria, Department of Mechanical and Aerospace Engineering, Monash University, Melbourne (Soria also at King Abdulaziz University, Jeddah) (p. 2739). Shock Lab group work; the experiments are in the "Laboratory for Turbulence Research in Aerospace and Combustion supersonic jet facility" (p. 2740), so the facility field reads "Shock Lab group facility (LTRAC supersonic jet facility)". No lab space (Shock Lab, Combustion Lab, TABLE Lab) is named.
- **Source:** AIAA Journal 53(9), September 2015, 2739–2749, doi:10.2514/1.J053738. Presented as AIAA Paper 2014-2891 at the 20th AIAA/CEAS Aeroacoustics Conference, Atlanta, 16–20 June 2014. Received 29 July 2014, revised 24 Oct 2014, accepted 28 Oct 2014, online 28 Jan 2015. Associate editor D. Papamoschou (p. 2739, 2749).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/non-axisymmetric-jets/EdgingtonMitchell-EtAl_2015_Multimodal-Instability-In-The-Weakly-Underexpanded-Elliptic-Jet.pdf` (index key `non-axisymmetric-jets/EdgingtonMitchell-EtAl_2015_Multimodal-Instability-In-The-Weakly-Underexpanded-Elliptic-Jet.pdf`, 11 pp., publisher's version with an ARC download stamp). Page refs are journal pages; **PDF page = journal page − 2738**. The text layer scrambles Table 1, the equations and all figure labels. Table 1, eqs. 1–7 and Figs 2–16 were checked on rendered pages.
- **Tags:** elliptical jet AR 2, weakly underexpanded, screech, flapping about the major-axis plane, helical-like mode, multimodal instability, axis switching, three-dimensional shock structure, high-resolution and ultra-high-speed schlieren, two-point spatial correlation, coherent-structure spacing, convective velocity, planar PIV (major- and minor-axis planes), snapshot POD of transverse velocity, POD-pair phase portrait, triple decomposition, coherent vorticity, shock leakage

## Summary
The paper studies one weakly underexpanded jet (NPR 2.2) from an AR 2 converging elliptical nozzle (D_e = 14.14 mm), using schlieren, a single microphone and planar PIV in the major- and minor-axis planes (p. 2739–2741). Two-point correlations of the schlieren images and the PIV statistics point to one dominant mode: flapping about the major-axis plane (seen in the minor-axis plane). Its structures are 1.2D apart, convect at 0.65U_j and so imply St 0.54, close to the measured screech tone at St 0.52 (p. 2743–2745). Snapshot POD of the transverse velocity finds that mode as the leading pair in the minor-axis plane (15 % of the transverse-velocity energy). It also finds a second, uncorrelated antisymmetric pair with twice the wavelength (2.4D), present in both planes and saturating far downstream (x/D ≈ 7). The authors call this pair helical and attribute it to the shock-driven axis switching (p. 2745–2747). Coherent vorticity rebuilt from each pair shows that flapping peaks just upstream of the third shock, while the helical-like mode stays weak until the shock train has ended. The authors use this to explain why only flapping produces a tone (p. 2747–2748). No stability model or simulation is solved; the modelling content is a convected-wave frequency estimate and an appeal to published linear stability and shock-leakage results.

## Key findings
- **Single screech tone, louder in the minor-axis plane** (Fig. 8, p. 2743). One fundamental at St ≈ 0.52 with harmonics in the minor-axis plane (θ = 90°), and only a weaker fundamental in the major-axis plane (θ = 0°). The room is not anechoic, so the spectra are only for comparing the two planes.
  - Read from the figure: about 136 dB at St 0.52 and 135 dB at 1.04 in the minor-axis plane, against about 120 dB and 112 dB in the major-axis plane. Further minor-axis peaks sit near St 1.15 (≈ 118 dB), 2.08 (≈ 118 dB) and 3.12 (≈ 102 dB), with smaller bumps near St 0.2 (both planes, ≈ 113 dB) and 0.75. The paper does not discuss the peaks at 0.2, 0.75 and 1.15.
  - There is **no peak at St ≈ 0.27**, where the helical-like mode would be expected (p. 2747).
- **Schlieren: flapping vortices and a three-dimensional shock system** (Figs 3–5, p. 2741–2742).
  - The instantaneous dρ/dx image of the minor-axis plane shows a sinuous train of large vortices, with bright and dark bands extending into the near field. There are no such structures near the nozzle in the major-axis plane, though a sinuous pattern appears there from x/D ≳ 3.0 in dρ/dr (p. 2741).
  - The incident (barrel) shock appears in the major-axis plane but not in the minor-axis plane. The slower expansion of the major-axis boundary makes the characteristics converge earlier there (p. 2741–2742, citing Menon & Skews).
  - Bright, shock-like lines start shortly downstream of the first shock reflection at x/D ≈ 1.1 in the major-axis plane. They are the reflection of minor-axis expansion waves, not a shock reflected from the boundary. The shocks fade after a few cells, a much shorter potential core than in round jets at similar NPR (p. 2742).
  - The standard deviation of image intensity is much larger in the minor-axis plane: along the boundary for dρ/dx and on the centreline for dρ/dr (p. 2742).
  - **Receptivity in the high-speed sequence** (Fig. 5, p. 2742). An acoustic wave reaches the lip at t = 0. By t = 32 µs the instability is at x/D ≈ 0.5 and starting to roll up, and the vortex then grows in radial and axial extent. Vortices form alternately on the two sides of the shear layer, each side at St ≈ 0.5 (p. 2743).
    - From the boxes in Fig. 5 (my reading), the vortex moves from x/D ≈ 0.45 at 32 µs to ≈ 1.9 at 128 µs, about 210 m s⁻¹ or 0.6U_j with my U_j estimate. This is consistent with the stated U_c.
- **Two-point correlation** (Fig. 6, p. 2743). With X placed in the shear layer downstream of the second shock cell, the minor-axis correlation is antisymmetric about the centreline, with strong covariance in both the shear layer and the near field. The major-axis correlation is weaker and symmetric. Hence "a uniaxial flapping mode about the major axis plane".
- **Structure spacing and frequency** (Fig. 7, p. 2743–2744). λ_c from 1-D correlation along the minor-axis shear layer rises from 1.05D to 1.25D between x/D = 1 and 5, mean 1.2D. Time–space correlation of the high-speed schlieren gives U_c = 0.65U_j. Then St = 0.54, against 0.52 measured (my arithmetic: 0.65/1.2 = 0.542, 4 % high).
- **Mean velocity and axis switching** (Figs 9–11, p. 2744–2745).
  - The approximate sonic line (isothermal assumption) contracts slightly faster in the major-axis plane, but ends at x/D ≈ 5.2 in both planes (p. 2744).
  - The U = 0.5U_e line grows slightly in the major-axis plane until x/D ≈ 2.5 and then contracts; in the minor-axis plane it grows steadily to x/D ≈ 8 (Fig. 10). The two half-widths are equal at **x/D ≈ 4.3**, and the axes then switch completely (p. 2745).
    - Read from Fig. 10: 0.67D (major) and 0.34D (minor) at the exit, a ratio of about 2. At x/D = 10 they are 0.44D and 0.9D, so the ratio has inverted to about 0.5.
  - Centreline v_rms peaks in the first few diameters of the minor-axis plane sit at the embedded shocks: vortices displace and tilt the shocks, which produces centreline transverse velocity. There are no such peaks in the major-axis plane, which shows that the flapping is uniaxial, since a helix would displace the shocks equally in both planes (p. 2744). Read from Fig. 11: minor-axis v_rms/U_e reaches about 0.12 by x/D ≈ 2.5, while the major-axis value climbs only from x/D ≈ 2.5 to about 0.11 at x/D ≈ 5.
  - The u_rms peak at the first shock in both planes is "likely artificial", caused by non-uniform particle displacement in a window that contains a shock (p. 2744–2745, citing Mitchell, Honnery & Soria 2011).
- **POD, minor-axis plane** (Figs 12–13, p. 2745–2746).
  - Modes 1–2 hold 7.5 % each (15 % of the transverse-velocity fluctuations). Their axial velocity is antisymmetric and cellular and their transverse velocity symmetric about the centreline, i.e. flapping or helical. They saturate between 2 ≤ x/D ≤ 3 and then decay.
  - Modes 3–4 hold 2.5 % each (5 %). They have the same symmetry but grow much more slowly and saturate at x/D ≈ 7.
  - Phase portraits: a₁ against a₂ is a ring, so modes 1 and 2 are one oscillation. a₁ against a₃ shows no correlation, so the second pair is "not a harmonic or subharmonic" of the first (p. 2745).
- **POD, major-axis plane** (Fig. 14, p. 2745–2746). There is only one coherent pair (2.5 % each). It resembles minor-axis modes 3–4 in shape, growth and wavelength, and has none of the minor-axis modes 1–2 structure. The same antisymmetric mode appearing in both planes, with a cardioid transverse-velocity shape like the helical mode of round jets, is taken as strong evidence of a **helical mode**. The authors add that cross-plane (r, θ) velocity data would be needed to show this "categorically" (p. 2745–2747).
- **Against linear stability theory** (p. 2740, 2745). The linear stability analyses of Morris (1988, 2010) and Morris & Bhat (1995) predict that flapping about the major-axis plane is the most unstable mode, with varicose, wagging and se₂ modes less unstable. They also predict that every mode is locked to an axis, with no spinning helical mode. The helical-like pair "appears to contradict" this. The authors reply that the analysis used profiles of an ideally expanded jet with no axis switching (Kinzie & McLaughlin 1999), whereas here the shocks drive a rapid switch, and the switched geometry "may allow the jet to support a helical oscillation further downstream" (p. 2745).
- **Wavelengths and expected St** (Table 2, p. 2747). The minor-axis 1–2 pair has λ ≈ 1.2D (St 0.54). The minor-axis 3–4 and major-axis 1–2 pairs have λ ≈ 2.4D (St 0.27, if U_c = 0.65U_j). The authors could not explain the factor of 2 from these data (p. 2747).
- **Why only flapping screeches** (Figs 15–16, p. 2747–2748).
  - The extra energy of the flapping mode is not enough to explain why the helical-like mode makes no tone (p. 2747).
  - The argument instead uses shock leakage (Suzuki & Lele 2003). Strong vorticity at the sonic line totally reflects the shock, and the weak vorticity at the saddle between vortices lets it leak as sound. Large coherent vorticity fluctuations in the shear layer were also found to coincide with tone production in a round jet (Edgington-Mitchell et al. 2014, JFM 748) (p. 2747).
  - The flapping mode's coherent vorticity is largest between the 1st and 3rd shock cells. Its radial integral peaks just before the 3rd shock (x/D ≈ 1.6; centreline shocks at x/D ≈ 0.5, 1.2, 1.8, 2.4 from the dashed lines, my reading).
  - The helical-like pairs stay weak until well after the shock train ends. By x/D ≈ 5 their integrated vorticity exceeds that of the flapping mode, still growing while flapping decays (p. 2747).
  - Conclusion: the helical-like mode grows too slowly. By the time it is strong, turbulent mixing has ended the shock train, so there is no mechanism left to make screech (p. 2747–2748).

## Setup / method
- **Facility** (Fig. 1, p. 2740). Continuous high-pressure air. Seeded and unseeded air mix in a chamber (smoke generator in Fig. 1), then pass through a straight pipe into a plenum with screens and honeycombs. Stagnation pressure is measured with an RS-461 transducer (0–10 bar, ±0.25 %). Air is supplied at ambient temperature (p. 2740–2741).
- **Nozzle** (Fig. 2, p. 2740–2741).
  - Purely converging. A smooth transition from a circular section to an AR 2 ellipse over 70 mm; major and minor exit diameters 20 mm and 10 mm. Mild steel, hand polished, Ra ≈ 1.6 µm.
  - The internal length varies with azimuth, so the exit momentum thickness θ_e varies too. The lip thickness also varies with azimuth, which may change how upstream waves scatter (citing Ponton & Seiner 1992).
  - Fig. 2 shows an outer diameter of 25 mm at the exit, which would make the lip about 2.5 mm thick at the ends of the major axis and 7.5 mm at the ends of the minor axis (my derivation). The inlet dimension label reads "725" in the text layer, probably 72.5 mm.
  - This is the nozzle and the PIV database (Mitchell, Honnery & Soria 2013) later used by [Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) at NPR 2.6 and 3.4. It is not the D_e = 10 mm elliptical nozzle of [Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md).
- **Length scale and coordinates** (p. 2741). Cylindrical coordinates, θ = 0° on the major axis and θ = 90° on the minor axis. D = 2(ab)^½ = 14.14 mm, which is the area-equivalent diameter when a and b are the semi-axes (10 mm and 5 mm). Re = ρUD/μ ≈ 4 × 10⁵.
- **Condition.** NPR 2.2 only. M_j, U_j and the tone frequency in Hz are not stated.
  - My isentropic estimate: M_j ≈ 1.12; with T₀ ≈ 293 K, U_j ≈ 345 m s⁻¹ and U_j/a∞ ≈ 1.00. That gives f_s ≈ 12.7 kHz from St 0.52.
  - Velocities in the figures are normalised by U_e, the jet exit velocity (≈ 313 m s⁻¹ for a sonic exit at T₀ = 293 K, my estimate).
- **Schlieren** (p. 2741). Toepler Z-type, mirrors of 2032 mm focal length. Knife edge set for dρ/dx or dρ/dr. Two cameras:
  - High resolution: PCO DiMax, 2016 × 2016 px, with 1.6 µs pulses from an LED (Willert, Mitchell & Soria 2012). The images are statistically independent (p. 2743). The number of images is not stated.
  - Ultra-high speed: Shimadzu HPV-1, 312 × 260 px at 250–500 kHz, i.e. about 20–40 frames per screech period with my f_s estimate. Sequence length and number of sequences are not stated.
- **Acoustics** (p. 2741, 2743). One G.R.A.S. Type 46BE 1/4" pre-amplified microphone, frequency range printed as 4–80 kHz. It was aimed at a point 4D downstream of the lip (a rough screech source position) from 8D away, at ψ = 60° from the upstream direction, in each plane. The room is not anechoic. Sampling rate, record length and PSD parameters are not stated.
- **PIV** (Table 1, p. 2741; details in Mitchell, Honnery & Soria 2013).
  - Two PCO 4000 cameras (4008 × 2760 px) side by side give a combined 2.2D × 10D field. 105 mm Micro Nikkor lenses at f/5.6; New Wave Solo Nd:YAG at 532 nm; multigrid cross-correlation (Soria 1996).
  - Two components (u, v) in the major- and minor-axis planes, measured separately. Not time-resolved: 1000 snapshots per plane are used for POD (p. 2745).
- **Analysis chain and data requirements.**
  - *Mean and standard-deviation schlieren* (Figs 3–4): any schlieren.
  - *Two-point spatial correlation* (eq. 2): the high-resolution images are statistically independent, so δt = 0. The result depends strongly on the reference point X, which is placed in the shear layer downstream of the second shock cell because shock–vortex interaction produces the sound (p. 2743). X = (2.08D, 0.66D) in the major-axis plane and (1.76D, 0.31D) in the minor-axis plane (Fig. 6). This works on non-time-resolved data.
  - *Structure spacing λ_c*: peak-to-peak spacing of a 1-D correlation along the shear layer (Fig. 7). Non-time-resolved.
  - *Convective velocity*: time–space correlation of the high-speed sequences (p. 2744). This needs time-resolved data; the line, lag range and averaging are not given.
  - *Velocity statistics*: mean and RMS fields and centreline profiles (Figs 9–11).
  - *Snapshot POD* (eqs. 3–6; Sirovich 1987) on the **transverse velocity only**, which separates the modes more clearly (p. 2745). Modes are ranked by incompressible kinetic energy. The authors note two caveats (p. 2745): POD orthogonality need not match physical structures, and planar velocity without density weighting is not a true energy norm, so a density-weighted or 3-D POD could differ. Fig. 12 shows axial-velocity mode shapes as well, but the paper does not say how they were obtained from a v-only POD. Projecting the v-based temporal coefficients onto the u snapshots is the likely route (my inference).
  - *Phase portrait* of a₁/⟨r_m⟩ against a₂/⟨r_m⟩ and a₃/⟨r_m⟩, with r_m = √(a₁² + a₂²) (Fig. 13). This tests that two modes form one travelling oscillation without time resolution.
  - *Coherent vorticity*: triple decomposition (eq. 7; Hussain & Reynolds 1970), with the coherent part taken as the rebuild from each POD pair (p. 2747). Contours of ω_z^c/U_e (Fig. 15) and the radial integral ∫₀¹ (ω^c/U_e) r dr (Fig. 16) are plotted against the centreline shock positions. Whether the contours show an RMS or a magnitude, and how vorticity was normalised (dimensionally ω/U_e needs a length scale), are not stated.
- **Modelling side.** No model is solved.
  - The frequency check is the convected-wave relation St = (U_c/U_j)(D/λ_c) (my form of the text's calculation, p. 2744, 2747). It confirms that the correlated structures are the tone-carrying ones but contains no feedback loop: no Powell or Tam formula, no shock spacing, no closure wave.
  - Linear stability results come from Morris (1988), Morris & Bhat (1995) and Morris (2010) for an ideally expanded elliptic jet. That base flow is the explanation the authors offer for the mismatch with the helical-like mode (p. 2740, 2745).
  - The sound-production argument rests on the shock-leakage DNS of Suzuki & Lele (2003), with coherent vorticity used as a proxy for leakage strength (p. 2747).

## Key equations
All checked against rendered pages (p. 2741, 2743, 2745, 2747).

- **Equivalent diameter** (p. 2741): $D = 2(ab)^{1/2}$, with a = 10 mm and b = 5 mm, so D = 14.14 mm.
- **Two-point correlation of schlieren intensity** (eq. 1, p. 2743): $R(I')(\boldsymbol X;\delta\boldsymbol X,t;\delta t)=\dfrac{\overline{I'(\boldsymbol X,t)\,I'(\boldsymbol X+\delta\boldsymbol X,t+\delta t)}}{\sigma_{I'(\boldsymbol X,t)}\,\sigma_{I'(\boldsymbol X+\delta\boldsymbol X,t+\delta t)}}$.
- **Zero-lag form** (eq. 2, p. 2743): $R(I')(\boldsymbol X;\delta\boldsymbol X)=\dfrac{\overline{I'(\boldsymbol X)\,I'(\boldsymbol X+\delta\boldsymbol X)}}{\sigma_{I'(\boldsymbol X)}\,\sigma_{I'(\boldsymbol X+\delta\boldsymbol X)}}$.
- **POD expansion** (eq. 3, p. 2745): $\boldsymbol u'(\boldsymbol x,t_k)=\sum_{i=1}^{M}a_i(t_k)\,\boldsymbol\psi_i(\boldsymbol x)+\boldsymbol u_{res}(\boldsymbol x,t)$.
- **Snapshot correlation matrix** (eq. 4): $\boldsymbol R=\boldsymbol U^{T}\boldsymbol U$, where U holds all snapshots (here transverse velocity only).
- **Eigenproblem** (eq. 5): $\boldsymbol R\,\boldsymbol a_i=\lambda_i\,\boldsymbol a_i$, with $\boldsymbol a(t_k):=[a_i(t_1),\dots,a_i(t_k)]$ the temporal modes.
- **Spatial modes** (eq. 6): $\boldsymbol\psi_i(\boldsymbol x)=\dfrac{1}{\sqrt{N\lambda_i}}\sum_{j=1}^{N}a_i(t_k)\,\boldsymbol u'(\boldsymbol x,t_k)$. As printed, the summation index is j but the summand uses k.
- **Phase-portrait radius** (p. 2745): $r_m=\sqrt{a_1^2+a_2^2}$.
- **Triple decomposition** (eq. 7, p. 2747): $\boldsymbol u(\boldsymbol x,t)=\boldsymbol U(\boldsymbol x)+\boldsymbol u^{c}(\boldsymbol x,t)+\boldsymbol u''(\boldsymbol x,t)$. The coherent part u^c is the rebuild from one POD pair; ω^c is its vorticity.
- **Convected-wave Strouhal estimate** (implicit, p. 2744, 2747): $St=\dfrac{fD}{U_j}=\dfrac{U_c}{U_j}\dfrac{D}{\lambda_c}$. This gives 0.65/1.2 = 0.54 and 0.65/2.4 = 0.27.

> The nomenclature defines St = fD_j/U_j and Re = UρD_j/μ (p. 2739), but D_j is never defined and the text uses D. The St check above only works with D, so St here is on the equivalent nozzle diameter.

## Data tables
**PIV parameters** (Table 1, p. 2741; rebuilt from the rendered page):

| Parameter | Value | Nondimensional |
|---|---|---|
| Initial window IW₀ | 64 px | 0.10D |
| Final window IW₁ | 16 px | 0.026D |
| Grid spacing | 8 px | 0.013D |
| Depth of field | 2.4 mm | 0.17D |
| Light-sheet thickness | 1.5 mm | 0.1D |
| Field of view | 150 × 35 mm | 10 × 2.2D |
| Maximum inter-image displacement | 12 px | 0.02D |

> The pixel values are self-consistent: 1 px ≈ 0.0016D ≈ 23 µm, and 64 and 12 px give 0.10D and 0.02D. However, 150 × 35 mm is 10.6 × 2.5D with D = 14.14 mm, slightly larger than the 10 × 2.2D printed. Ivelja 2024 quotes the same 0.013D spacing, 0.026D window and 0.1D sheet for this database.

**POD pairs and wavelengths** (Figs 12, 14 and Table 2, p. 2746–2747):

| Plane | Modes | Energy (transverse velocity) | Shape | Saturation | λ (D) | Expected St (U_c = 0.65U_j) | Interpretation |
|---|---|---|---|---|---|---|---|
| Minor axis (θ = 90°) | 1, 2 | 7.5 % + 7.5 % | u antisymmetric, v symmetric | 2 ≤ x/D ≤ 3 | 1.2 | 0.54 | flapping about the major-axis plane; the screech mode |
| Minor axis | 3, 4 | 2.5 % + 2.5 % | same symmetry | x/D ≈ 7 | 2.4 | 0.27 | helical-like; uncorrelated with modes 1–2 |
| Major axis (θ = 0°) | 1, 2 | 2.5 % + 2.5 % | antisymmetric, cardioid v | grows from x/D ≈ 3.5 (Fig. 14) | 2.4 | 0.27 | same helical-like mode |

**Shock and flow landmarks** (various pages; "fig" = read from the figure):

| Quantity | Value | Source |
|---|---|---|
| First shock reflection, major-axis plane | x/D ≈ 1.1 | p. 2742 |
| Centreline shock positions marked in Figs 15–16 | x/D ≈ 0.52, 1.19, 1.79, 2.39 (fig), mean spacing 0.62D | p. 2747–2748 |
| End of sonic region (both planes) | x/D ≈ 5.2 | p. 2744 |
| Major-axis half-width starts to contract | x/D ≈ 2.5 | p. 2744 |
| Minor-axis half-width keeps growing to | x/D ≈ 8 | p. 2744 |
| Equal half-widths (axis switch) | x/D ≈ 4.3 | p. 2745 |
| Flapping coherent vorticity peak | x/D ≈ 1.6 (fig), "just before the third shock" | p. 2747 |
| Helical-like vorticity overtakes flapping | x/D ≈ 5 | p. 2747 |

> Mean schlieren (Fig. 3, my reading of a 300 dpi render) gives a spacing of about 0.6–0.7D in both planes, in line with the Fig. 16 lines.

## Figures worth remembering
- **Fig. 2 (p. 2740):** nozzle drawing. The major- and minor-axis contours over 70 mm, a 25 mm outer diameter and the 20 × 10 mm exit.
- **Figs 3–4 (p. 2741–2742):** instantaneous, mean and standard-deviation schlieren (dρ/dx, dρ/dr) in both planes. Vortex train only in the minor-axis plane; barrel shock only in the major-axis plane.
- **Fig. 5 (p. 2742):** Shimadzu sequence (t = 32–128 µs) of a lip-triggered vortex rolling up and growing in the minor-axis plane. A direct view of the receptivity and growth links of the loop.
- **Fig. 6 (p. 2743):** two-point correlation maps: antisymmetric in the minor-axis plane, weak and symmetric in the major-axis plane. This is the basis of the "uniaxial flapping" conclusion.
- **Fig. 7 (p. 2743):** λ_c/D against x/D (1.05 → 1.25).
- **Fig. 8 (p. 2743):** spectra in both planes. The key acoustic figure.
- **Figs 9–11 (p. 2744–2745):** mean and RMS velocity fields with the sonic line, U = 0.5U_e half-widths (axis switch at 4.3D), and centreline profiles.
- **Fig. 12 (p. 2746):** minor-axis POD modes 1–4 (u and v). Modes 1–2 are short-wavelength and upstream; modes 3–4 long-wavelength and downstream.
- **Fig. 13 (p. 2746):** phase portraits. A ring for a₁–a₂, no structure for a₁–a₃.
- **Fig. 14 (p. 2746):** major-axis POD pair, similar to minor-axis modes 3–4.
- **Figs 15–16 (p. 2747–2748):** coherent vorticity of each pair, and its radial integral against the shock positions. The key figure for the sound-production argument.

## Notation
- D: equivalent nozzle diameter 2(ab)^½ = 14.14 mm (written D_e in this library's CSVs); a, b: semi-axes; x: axial distance; r: radial; θ: azimuth (0° major axis, 90° minor axis); ψ: microphone angle from the upstream jet axis.
- U, V and u, v: mean and instantaneous axial and radial velocity; u′_rms, v′_rms: RMS fluctuations; U_e: exit velocity; U_j: ideally expanded velocity; U_c: convective velocity; M_j: ideally expanded Mach number (not given).
- St = fD/U_j; Re = ρUD/μ.
- I: schlieren pixel intensity; σ_I: its standard deviation; R: correlation coefficient; X: reference point; λ_c: coherent-structure spacing.
- **U**: snapshot matrix; **R** = **U**ᵀ**U**; λ_i, a_i, ψ_i: POD eigenvalues, temporal coefficients and spatial modes; r_m: phase-portrait radius.
- u^c, u″: coherent and turbulent fluctuations; ω^c (ω_z^c in Fig. 15): coherent vorticity.

## Relevance to this project
This is the first Shock Lab group paper on the AR 2 elliptical jet, and the low-NPR anchor of a thread that runs through [Edgington-Mitchell 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md) (staging of the same family of elliptical jets), [Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) (same nozzle and PIV database at NPR 2.6 and 3.4), and [Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md) and [Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) (a D_e = 10 mm elliptical nozzle). It fits the CLAUDE.md research area directly: resonance in non-axisymmetric jets, studied with schlieren, acoustics and PIV and the statistics-then-POD workflow.

**How it fits and what has changed since**
- **Flapping dominance holds across NPR in this nozzle.** The minor-axis flapping pair holds 15 % of the transverse-velocity energy at NPR 2.2 (p. 2746). [Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) finds 23.6 % at NPR 2.6 and 35 % at 3.4 against 6.8 % and 10.3 % on the major axis (that note, p. 15). The tone St falls from 0.52 (here) to 0.38 (NPR 2.6) and 0.27 (NPR 3.4) (Ivelja's figures, read in that note).
  - [Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md) find a varicose-to-flapping jump at NPR ≈ 2.2 in a different AR 2 ellipse, with the flapping branch starting near St 0.55–0.6 (that note, p. 7). This jet is already on the flapping side at NPR 2.2 and shows no varicose tone. The thicker, azimuthally varying lip (about 2.5–7.5 mm by my reading of Fig. 2, against 0.05D_e there) may shift the jump.
- **The "helical" pair is the origin of the quasi-helical thread.** Mazharmanesh 2025 cite this paper (their 2015b) as the first suggestion that axis switching lets an elliptical jet support a helical-looking mode (that note, p. 3, 20–21). [Suzuki 2026](suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md) cite it in the same way. The evidence is weaker than the label:
  - The two planes were measured separately, so nothing tests whether the minor-axis 3–4 pair and the major-axis 1–2 pair are phase-locked by π/2, which is what a helix requires. They could equally be two independent wavepackets of the AS (flapping) and SA (wagging) families.
  - Suzuki 2026 show that a switched mean flow can host a new SA-family "flapping" mode born at the switch point with no upstream support (that note, p. 13–15). In the original major-axis plane this would look exactly like the pair in Fig. 14, which grows only from x/D ≈ 3.5 and has its strongest vorticity near and after the 4.3D switch.
  - The symmetry-breaking view of [Rodríguez 2023](rodriguez-2023-preferred-flapping-round-twin-jets.md) and [Nogueira 2026](nogueira-2026-flapping-motion-screeching-round-jets.md) gives a mechanism for the authors' idea. Where the cross-section passes through AR ≈ 1 (x/D ≈ 4.3 here), the se₁ and ce₁ eigenvalues become nearly degenerate, so a helical superposition can survive locally. Upstream, the ellipse splits them and flapping wins. This is my reading; the paper has no stability analysis.
  - The authors' own test (a₁ against a₃ uncorrelated, p. 2745) rules out linear correlation only. A subharmonic at St_s/2 ≈ 0.26 with λ = 2λ_c is exactly what vortex pairing would give, and it would be quadratically, not linearly, related to the flapping pair. A bispectral test (below) has not been done.
- **The source argument foreshadows direct leakage imaging.** The flapping coherent vorticity peaks just before the 3rd shock (x/D ≈ 1.6; p. 2747). That agrees with leakage first appearing at the 3rd cell for A1 and C in round jets ([Edgington-Mitchell 2021, shock leakage](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md), p. 19–30) and with Mercier's single source at the 3rd–4th shock ([Mercier 2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md), p. 221). Here it is only a proxy: coherent vorticity magnitude, not leaked fronts.
- **"No tone" is argued from the source side only.** The paper predates guided-jet-mode closure ([Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)). The modern requirement is also an upstream wave that exists at the tone. For this nozzle the se₁ G-JM is neutral only over a short x band ([Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md), p. 22–24). Whether any upstream mode of the helical-like family exists near St 0.27 on this mean flow is untested, so the slow-growth explanation is one of two possible reasons.
  - At higher NPR the shock train is longer, and the quasi-helical tone does appear (St 0.28 at NPR 3.6 in [Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md); St 0.273, weak and intermittent, in [Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md)). That is consistent with the authors' explanation, though the nozzles differ. The closeness of those St values to the 0.27 expected here is a coincidence of different NPRs and should not be read as the same mode.
- **Frequency check against a loop model** (my arithmetic). The paper's St = 0.54 check uses only λ_c and U_c. A Tam & Tanna-type closure, 1/L_s = 1/λ_c + 1/λ_a with λ_a = a∞/f = 1.91D (my f and a∞), needs L_s ≈ 0.74D. The marked shock lines give 0.62D, and the mean schlieren about 0.6–0.7D. Equivalently, Powell's formula with L_s = 0.62D and U_c = 0.65U_j gives St ≈ 0.63, about 20 % above 0.52. The gap may come from the complex 3-D shock system (which "spacing" the loop uses) or from a lower U_c near the nozzle (cf. Mercier's 0.52–0.59U_j). This is worth redoing with the k_x spectra of [Edgington-Mitchell 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md).
- **Axis-switch location against NPR, same nozzle** (my comparison). Equal half-widths at x/D ≈ 4.3 for NPR 2.2 (here). Ivelja's fitted flow AR reaches 1 near x/D ≈ 5 at NPR 2.6, and farther downstream at 3.4 (that note, p. 10–11). The metrics differ, but within the screeching range the switch moves downstream as NPR rises. The paper's introduction (p. 2739–2740) quotes the opposite trend from subsonic to underexpanded (x/D ≈ 23 → 3 for an AR 3 nozzle); the two are different ranges.
- **Two-point correlation as a mode classifier.** The antisymmetric or symmetric correlation pattern (Fig. 6) is the same tool [Knast 2018](knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md) used for twin jets, with the same limitation noted on the topic page: one plane cannot separate a helix from flapping. Here the second plane and the centreline v_rms (shocks displaced in one plane only) do that job for the dominant mode, but not for the downstream pair.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Non-time-resolved (PIV, single-shot schlieren).** Everything except U_c and Fig. 5 works on independent snapshots: zero-lag two-point correlation, the λ_c spacing estimate, snapshot POD of transverse velocity only (the group's standard choice since; cf. Ivelja 2024), the POD-pair ring test, and coherent vorticity from a rank-2 rebuild. The weak points are that frequency is never measured, only inferred from λ and an assumed U_c (St 0.27 for the helical-like pair is an assumption), and that the two planes cannot be correlated with each other.
  - *A cheap test the data allow* (my suggestion): form complex coefficients α = a₁ + ia₂ and β = a₃ + ia₄ in the minor-axis plane and check the phase statistics of β²/α or β/α^{1/2}. A subharmonic would show a fixed phase relation; independent modes would give a uniform phase. This is a snapshot-based stand-in for the bispectrum. Then apply streamwise Fourier filtering to the complex modes (k_x > 0 and k_x < 0) as in Ivelja 2024 and Edgington-Mitchell 2018, to look for an upstream wave belonging to each pair.
- **Time-resolved (Shimadzu 250–500 kHz schlieren, microphone).** U_c and the receptivity sequence need time resolution, and so does every question about whether the helical-like mode is intermittent. The paper gives only block-averaged spectra and ensemble POD; nothing resolves how amplitude or frequency change in time.
  - SPOD of minor- and major-axis TR schlieren would test directly whether there is coherent energy near St 0.26–0.27 downstream of x/D ≈ 4. A subharmonic would appear as a phase-locked St_s/2 component; BMD would show a (St_s/2, St_s/2) → St_s triad.
  - SPOD → reconstruction → Hilbert POD: rebuild the St 0.52 band and the St ≈ 0.27 band separately, then track instantaneous amplitudes. Anti-correlated amplitudes would mean competition (as in Mazharmanesh 2026). A lag between them, or bursts of the low band when flapping weakens, would test the "slow growth" picture. A rotating-view or two-camera set-up would test helicity (π/2 phase between views) without cross-plane PIV, following Mazharmanesh 2025's multi-view approach.
- **Facility caveats.** The room is not anechoic (p. 2743), so the levels in the two planes are only comparative. The microphone sits at 120° from the downstream axis, where a non-resonant downstream wavepacket would radiate weakly anyway, so the absence of an St 0.27 peak does not on its own show that the mode is silent.
  - My observation: for a pure flapping mode the first harmonic is symmetric and should radiate into the major-axis plane, yet it is about 23 dB weaker there (Fig. 8). Directivity or room effects may explain it, but it is worth checking in an anechoic set-up.

**Modelling side and the PyFR staging LES**
- The paper's challenge to Morris & Bhat (1995) has never been settled with a non-parallel model on an axis-switching mean flow. OWNS or global analysis on this jet's mean flow, or an LES of the same nozzle, could check: whether the ce₁ and se₁ branches merge near x/D ≈ 4.3, whether a helical-like or new-flapping wave is amplified downstream, and whether it has an upstream partner near St 0.27.
- For the round-jet PyFR staging LES (`Simulations/PyFR_Staging_Continuation/`), two diagnostics transfer.
  - *Coherent vorticity at the shock tips against x* (Fig. 16) is a cheap proxy for which mode's loop is radiating. In 3-D LES it can be computed per azimuthal mode, or per D2 component.
  - *The POD caveat* (p. 2745): a planar velocity norm is not an energy norm in a compressible jet, so SPOD of the LES should use a compressible (Chu-type) norm or report the norm used.
- The convected-wave check (St = U_cD/(λ_cU_j)) is a minimal consistency test for any LES mode, but it says nothing about which loop is closed.

**Rocket noise.** Screech is absent at full scale ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)). The introduction's point, that non-circular nozzles enhance mixing and are louder in the minor-axis plane (p. 2739–2740), bears on non-axisymmetric plumes only qualitatively.

**Items to verify against the PDF**
1. Fig. 8 levels, and the extra peaks near St 0.2, 0.75 and 1.15, are read from the figure.
2. The centreline shock positions in Figs 15–16 (x/D ≈ 0.52, 1.19, 1.79, 2.39) are read from the figure. Check whether the lines mark every shock or alternate between the two planes' shock systems; this matters for the 0.62D spacing and the loop check above.
3. D = 2(ab)^½ gives 14.14 mm only with semi-axes, but Fig. 2 places "a" and "b" against the full 20 mm and 10 mm dimensions.
4. Table 1's field of view (150 × 35 mm against 10 × 2.2D).
5. How the axial-velocity POD modes (Fig. 12, left) were obtained from a POD of transverse velocity only. Which vorticity component (ω_z label), what normalisation, and whether the Fig. 15 contours are an RMS or a magnitude.
6. Whether the POD percentages are of transverse velocity only (p. 2745–2746) or of "total fluctuating energy" (conclusion, p. 2748).
7. The microphone range is printed as "4–80 kHz" (probably 4 Hz–80 kHz). The PSD parameters and the number of schlieren images and Shimadzu frames are not stated.
8. Ref. [16] (Mitchell, Honnery & Soria, Exp. Fluids) is printed as "Vol. 57, July 2013, Article ID 1578" (p. 2748). My recollection is volume 54 for 2013; check before citing.
9. Ref. [24] (Sirovich 1987) is printed with the title "Proper Orthogonal Decomposition Applied to Turbulent Flow in a Square Duct" and pages 561–671 (p. 2749). Volume 45 of Q. Appl. Math. matches the library's [Sirovich 1987](sirovich-1987-turbulence-dynamics-coherent-structures-part-i.md) note, so the printed title and pages look wrong.
10. The lip thickness of 2.5–7.5 mm is derived from the Ø25 mm label in Fig. 2.

**Candidates for `/add-paper`** (cited, not yet in the library): Mitchell, Honnery & Soria 2013 (near-field structure of underexpanded elliptic jets, the PIV database); Edgington-Mitchell, Oberleithner, Honnery & Soria 2014 (JFM 748, helical mode and sound production); Suzuki & Lele 2003 (JFM 490, shock leakage); Kinzie & McLaughlin 1997 and 1999; Morris 1988; Morris & Bhat 1995; Morris 2010; Hussain & Husain 1989; Zaman 1996; Schadow et al. 1989; Menon & Skews 2010; Mitchell, Honnery & Soria 2011 (particle relaxation) and 2012 (J. Vis., impinging feedback schlieren); Willert, Mitchell & Soria 2012 (LED schlieren); Hussain & Reynolds 1970; Moreno et al. 2004.
