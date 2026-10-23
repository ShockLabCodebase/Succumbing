---
key: "bell-2018-coupled-underexpanded-supersonic-twin-jets"
title: "An experimental investigation of coupled underexpanded supersonic twin-jets"
authors: ["Bell, Graham", "Soria, Julio", "Honnery, Damon", "Edgington-Mitchell, Daniel"]
year: 2018
type: "article"
venue: "Exp. Fluids 59, 139"
bib: {"journal": "Experiments in Fluids", "volume": "59", "pages": "139", "publisher": "Springer-Verlag GmbH Germany, part of Springer Nature"}
doi: "10.1007/s00348-018-2593-1"
arxiv: ""
pdf: "twin-jet-coupling/Bell-EtAl_2018_An-Experimental-Investigation-Of-Coupled-Underexpanded-Supersonic-Twin-Jets.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility (LTRAC gas jet facility, PIV enclosure)"
data: ["PIV", "microphones-near"]
methods: ["statistics", "PSD", "coherence", "resonance-model"]
flow: ["twin-jet", "round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "coupling", "standing-waves", "staging", "shock-cells", "Mach-disk", "jet-merging", "coherent-structures"]
params: {"NPR": "4.6 and 5.0 (PIV); 2.0–5.5 (acoustic sweep, Fig. 3)", "M_j": "≈1.65 and ≈1.71 (isentropic, my calculation; not stated)", "s/D": "3", "D": "10 mm converging nozzles, shared plenum", "t/D": "0.15 (1.5 mm lip)", "Re": "7.8×10⁵ (NPR 4.6), 8.5×10⁵ (NPR 5.0), ideally expanded", "St": "0.22 (NPR 4.6), 0.19 (NPR 5.0), f D_j/U_j", "T0": "≈298 K (cold)", "snapshots": "≈9000 PIV fields per NPR at 0.5 Hz"}
topics: ["twin-jet-coupling", "screech-frequency-and-global-modes", "screech-staging-and-mode-switching", "diagnostics-and-facilities"]
related: ["bell-2021-intermittent-modal-coupling-screeching-twin-jets", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "nogueira-2021-twin-jet-coupling-spatial-lsa", "panda-1999-experimental-investigation-screech-noise-generation", "tan-2017-broadband-velocity-fluctuations-screeching-jets", "tan-2019-correlation-analysis-piv-screeching-jets", "wong-2023-steady-unsteady-coupling-twin-round-jets", "stavropoulos-2023-axisymmetric-screech-round-twin-jets-lsa", "rodriguez-2023-preferred-flapping-round-twin-jets", "esfahani-2021-coupling-modes-twin-rectangular-jets", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2022-unifying-theory-jet-screech", "alkislar-2003-screeching-rectangular-jet-stereo-piv", "raman-1998-supersonic-jet-screech-review"]
cites: ["alkislar-2003-screeching-rectangular-jet-stereo-piv", "bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2015-staging-screeching-elliptical-jets", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "panda-1999-experimental-investigation-screech-noise-generation", "powell-1992-oscillation-modes-choked-circular-jets", "raman-1998-supersonic-jet-screech-review", "tam-1995-supersonic-jet-noise", "tan-2017-broadband-velocity-fluctuations-screeching-jets", "weightman-2017-phase-lag-supersonic-jet-impingement"]
summary: "Round twin jets s/D 3, PIV at NPR 4.6/5.0: steady symmetric coupling and a standing wave only at 5.0; Panda relation fits the tone; standing wave modulates ILS"
---
# An experimental investigation of coupled underexpanded supersonic twin-jets

- **Authors:** Graham Bell, Julio Soria, Damon Honnery, Daniel Edgington-Mitchell, Laboratory for Turbulence Research in Aerospace and Combustion (LTRAC), Dept of Mechanical and Aerospace Engineering, Monash University (p. 1). Shock Lab group work (Edgington-Mitchell is an author). The rig is called the "LTRAC gas jet facility" with a PIV enclosure (p. 2); no lab space (Shock Lab, Combustion Lab, TABLE Lab) is named, so it is recorded as a Shock Lab group facility. Funding: Australian Research Council; computing on NCI (p. 17).
- **Source:** Experiments in Fluids (2018) 59:139, research article, doi:10.1007/s00348-018-2593-1. Received 10 Feb 2018, revised 19 July 2018, accepted 3 Aug 2018, online 20 Aug 2018; © Springer-Verlag GmbH Germany (p. 1). The issue number is not printed in the PDF.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/twin-jet-coupling/Bell-EtAl_2018_An-Experimental-Investigation-Of-Coupled-Underexpanded-Supersonic-Twin-Jets.pdf` (index key `twin-jet-coupling/Bell-EtAl_2018_An-Experimental-Investigation-Of-Coupled-Underexpanded-Supersonic-Twin-Jets.pdf`, 19 pp., publisher's version). Page refs are the article's "Page N of 19", which equal PDF pages. The Read tool reports the PDF as password-protected, so the text came from `pdftotext -layout`. Tables 1–3, eqs 1–7 and Figs 2–3, 7–8, 11–14, 20, 22–24, 27–31 were checked on 110–400 dpi renders.
- **Tags:** twin round jets, s/D = 3, underexpanded converging nozzles, screech, coupling mode, symmetric coupling, discrete frequency jump, planar PIV (not time-resolved), bootstrap confidence intervals, laser-sheet diffraction by the Mach disk, local Mach number from velocity, shear-layer thickness (10 % threshold), jet merge point, skewness, turbulent kinetic energy as a mixing proxy, two-point spatial correlation maps (R11, R22), integral length scales (1/e cutoff), standing wave in log₁₀ rms maps, detrended rms, Panda's standing-wave relation, turbulence intensity and coherence modulation, shock structure vs standing wave

## Summary
Bell et al. give the first high-resolution PIV survey of two underexpanded round jets from 10 mm converging nozzles at a centre spacing of 3D. They measure at NPR 4.6 and 5.0, either side of a discrete jump in screech frequency at NPR ≈ 4.85 (p. 3). About 9000 statistically independent velocity fields per case give mean and rms fields, shear-layer thickness, three estimates of where the jets first interact (x/D ≈ 4–4.5), a turbulent-kinetic-energy proxy for inter-nozzle mixing, two-point correlation maps and integral length scales (p. 5–13). At NPR 5.0 a standing wave appears as lobes of axial-velocity rms beside the jets. Panda's relation, with the standing wavelength from those lobes and the hydrodynamic wavelength from correlation crests, predicts the screech wavelength within 6.1 ± 17.1 % (Table 2, p. 15), which the authors take as evidence that a screech loop drives the coupling. The correlation maps show a clear symmetric coupling mode at NPR 5.0 and only a weak one at 4.6, where no standing wave is seen; the authors suggest, among other explanations, that NPR 4.6 switches between modes in time (p. 15). Comparing the two cases, they conclude that the standing wave, not the shock structure, modulates the integral length scales (turbulence "coherence") near the jet, and that it also modulates the intensity (Table 3, p. 16–17). There is no modelling beyond Panda's kinematic relation and an isentropic local-Mach formula.

## Key findings
- **Staging map in this rig** (Fig. 3, p. 3):
  - The fundamental screech St (f D_j/U_j) falls smoothly with NPR from 2.3 to 5.5, with two discrete jumps. The first is at NPR 2.2 → 2.3 (St ≈ 0.60 → 0.39, read), which the authors call Raman's "weak complex interaction" region and exclude.
  - The second is the jump the study is built on. The text puts it at NPR 4.85 (p. 3); the plotted points drop between NPR 4.7 (St ≈ 0.21) and 4.8 (≈ 0.19) (my reading).
  - Following other twin-jet studies, the authors *assume* the jump marks a change of coupling mode (p. 3, 5).
- **Acoustic tones** (Fig. 2, p. 3; p. 15): St = 0.22 at NPR 4.6 and 0.19 at NPR 5.0 (Table 2), at 122.5 and 125 dB respectively, measured 23D from the jets. NPR 5.0 also shows a harmonic near St ≈ 0.37 (Fig. 2, read). The vertical tone lines in Fig. 2 sit at St ≈ 0.21 and 0.19 (read), slightly below the tabulated 0.22 at NPR 4.6.
- **Mean flow** (Figs 7–11, p. 5–8):
  - Both cases have a large Mach disk in the first cell, Mach disks in the first two cells, and a cellular shock-expansion train that has not ended by x/D ≈ 11 (p. 5, 7–8).
  - The peak axial velocity is 1.87U_e (NPR 4.6) and 1.92U_e (NPR 5.0), reached before the first shock (p. 5). U_e ≈ 310 m/s is the sonic exit velocity (p. 3).
  - Locally subsonic pockets sit at x/D ≈ 1.8 and 3.2 (Fig. 11, p. 8); the text also places the second-Mach-disk pocket at x/D ≈ 3.8 (p. 8).
  - The Mach disk is larger at NPR 5.0, and the sliplines from its edges persist downstream (Fig. 10, p. 7).
  - At s/D = 3 the shock cells and jets are not drawn towards each other. Seiner et al. (1986) and Goparaju & Gaitonde (2017) reported that distortion at s/D = 1.9 (p. 5).
  - Shock-reflection points, from sign changes of the axial-velocity gradient at the jet boundary, give a shock spacing of about 1.59D (NPR 4.6) and 1.67D (NPR 5.0), averaged over the first four intervals (Figs 7–8; my reading).
  - The upper- and lower-jet centreline profiles of mean and rms velocity are nearly identical, so the jets are symmetric (Figs 11, 13, p. 8).
- **Measurement artefacts** (p. 5–9):
  - The Mach disk diffracts the grazing light sheet after it crosses the lower jet. The upper jet is therefore lit inconsistently, and only lower-jet statistics are shown from Sect. 3.4 on (p. 5–6, 8–9).
  - A high-rms artefact at x/D ≈ 1.0, y/D ≈ −1.0 comes from that diffraction. Shock-generated fluctuations are small and probably a particle-lag artefact (Mitchell et al. 2011) (p. 8).
  - The bootstrap 95 % confidence interval on the axial rms is largest upstream of the first shock and about ±2 % in the near field (Figs 4–5, p. 4).
- **Shear layers** (Fig. 14, p. 9):
  - Thickness grows almost linearly. Beyond the second shock-reflection point the interior (I) layers grow faster than the exterior (E) layers, in both cases.
  - Along the lip lines, the I and E maximum velocities match until x/D ≈ 8, where the I maximum decays more slowly (p. 9–10).
- **First interaction between the jets** (p. 9–11, 17). Three estimates:
  - Extrapolating the I outer edges to the symmetry line gives x/D = 8.5 (NPR 4.6) and 7.5 (NPR 5.0) (p. 9).
  - The rms on the symmetry line first rises above the quiescent level between x/D = 4.0 and 5.0 (NPR 4.6; Fig. 16, p. 10).
  - A band of positive axial-velocity skewness at the I shear-layer edge, taken as the edge of the coherent structures, reaches the symmetry line at x/D ≈ 4 (NPR 4.6) and ≈ 4.5 (NPR 5.0), then runs parallel to it (Fig. 17, p. 10–11).
  - The conclusion adopts x/D = 4–4.5 (p. 17). The two kinds of estimate differ by about a factor of two.
- **Inter-nozzle mixing** (Fig. 18, p. 11): the specific TKE on the symmetry line (y/D = 0) stays below that on an equidistant exterior line (y/D = −3, 1D outside the lip) until x/D ≈ 10, then overtakes it with a steeper gradient. By figure reading the crossover is at x/D ≈ 9.5–10 for NPR 5.0 but near 12 for NPR 4.6. The authors conclude that intense inter-nozzle mixing starts much further downstream (x/D ≳ 10) than usually assumed, and attribute this to the low velocity gradients in the merged inner shear layers (p. 11, 17).
- **Coupling mode from correlation maps** (Figs 19–22, p. 12):
  - The R11 reference point (x/D = 4.76, y/D = 0) on the symmetry line gives the greatest contrast; other points show the same pattern, more weakly.
  - At NPR 5.0, R11 is mirror-symmetric about the midplane, with a second region above 1/e at (x/D, y/D) ≈ (3, −3) far from the reference point (Fig. 20). The "opposing banded structure" of R22 indicates symmetric coupling (Fig. 22).
  - At NPR 4.6 both maps show only a very weak pattern of the same kind (Figs 19, 21).
  - R11 and R22 have the same streamwise modulation wavelength (p. 12).
- **Integral length scales** (Figs 23–26, p. 12–13):
  - L11 exceeds L22, and the two L22 directions nearly coincide.
  - Strong axial modulation of the ILS appears at NPR 5.0. At NPR 4.6 it appears only far downstream (L11) or not at all (L22).
  - The text says the I L11⁽¹⁾ is "consistently larger" than the E value, consistent with the thicker I shear layer (p. 13). In Figs 23–24 the E curve (red) lies above the I curve (green) at both NPRs (my reading). See "Parts to check".
  - By figure reading, the NPR 5.0 L11⁽¹⁾ modulation has a period of about 1.7D, with minima near the shock-reflection lines.
- **Standing wave** (Figs 27–28, p. 13–15):
  - It is visible in log₁₀ of the axial rms at NPR 5.0 only, as lobes beside the jet in both the I and E regions. It is absent from the transverse-velocity rms, so the interfering waves travel mainly axially (p. 14).
  - Detrended profiles show a sinusoidal modulation of about ±0.02–0.04U_e along the E shear-layer outer line −0.32D and along the symmetry line (Fig. 28, read).
  - The modulation is larger in the I region. Two reasons are offered: both jets' upstream waves add in phase between the jets (Seiner et al. 1986), and it is hard to choose equivalent lines in the two regions (p. 14).
  - NPR 4.6 shows no repeatable modulation (p. 14).
  - The standing-wave lobes coincide with the inter-nozzle nodes of R11, so the axial modal pattern of the near field is the standing wave (p. 14–15).
- **Why NPR 4.6 looks weak** (p. 15). The authors list four possibilities without choosing:
  1. The NPR 4.6 state switches between modes in time, which would blur the standing wave in the averages.
  2. The coupling mode lies out of the measurement plane.
  3. Frequency jumps in twin jets need not mean a change of coupling mode.
  4. Both cases couple symmetrically, and the jump is a change of screech mechanism.
  - The conclusion (p. 17) says the jump is "understood" as a change of screech feedback mechanism accompanied by a change of coupling mode, although p. 15 says the analysis had not yet tied the jump to a change in modal behaviour.
- **Panda's relation in a twin jet** (Table 2, p. 15–16):
  - At NPR 5.0, λ_sw = 1.7 ± 0.12D (crest spacing of the rms along the jet edge and symmetry line) and λ_h = 3.2 ± 0.15D (crest spacing in R11) give λ_s,est = 3.7 ± 0.17D. The measured λ_s is 3.9D (a/f with a ≈ 345 m/s), a 6.1 ± 17.1 % difference.
  - At NPR 4.6 only λ_h = 3.0 ± 0.18D is available.
  - The authors take this as evidence that screech, with its usual single-jet length and frequency characteristics, is part of the twin-jet coupling, at least where the coupling is in-plane and the standing wave measurable (p. 15–16).
- **Turbulence modulation** (Table 3, Figs 29–31, p. 16–17):
  - Along the E shear-layer centre (shock-dominated), intensity is modulated at both NPRs, but coherence (ILS) only at NPR 5.0.
  - Along the E shear-layer outer line −0.32D (standing-wave-dominated), both are modulated at NPR 5.0 and neither at NPR 4.6.
  - Conclusions: the standing wave, not the shocks, drives the coherence modulation near the jet. The standing wave contributes to both intensity and coherence modulation. Near the jet at NPR 5.0 the intensity modulation is the sum of shock and standing-wave effects (p. 16–17).
  - This answers the question that Tan et al. (2017) left open, whether ILS modulation comes from the shocks or the standing wave (p. 16).

## Setup / method
- **Facility** (p. 2–3):
  - Compressed air at ≈ 298 K enters a mixing chamber, where a Viscount 1300 smoke generator seeds it. The smoke soon fills the enclosure too, so one source seeds both the jets and the ambient.
  - The plenum has a honeycomb and wire screens. The jets exhaust into a PIV enclosure 60 × 60 × 200 D with no acoustic treatment, validated in earlier studies (Weightman et al. 2016, 2017).
  - **Nozzles:** two converging round nozzles, D = 10 mm, 1.5 mm lip, sharing one plenum (so matched NPR). The internal contour is elliptical (37 mm semi-major, 4 mm semi-minor axes), tangent at the exit. They are choked (M_e = 1, U_e ≈ 310 m/s). Centre spacing s/D = 3 (p. 2–3).
  - Earlier qualitative work in the lab found strong coupling at s/D = 3 for NPR ≈ 2.0–5.4 (p. 3).

| Quantity | NPR 4.6 | NPR 5.0 | Source |
|---|---|---|---|
| M_j | ≈ 1.65 | ≈ 1.71 | isentropic, my calculation |
| D_j/D | 1.138 | 1.160 | isentropic, my calculation |
| U_j (T₀ = 298 K) | ≈ 460 m/s | ≈ 470 m/s | my calculation |
| Re (ideally expanded) | 7.8 × 10⁵ | 8.5 × 10⁵ | p. 3 |
| Screech St (f D_j/U_j) | 0.22 | 0.19 | Table 2, p. 15 |
| Tone level at 23D | 122.5 dB | 125 dB | p. 15 |
| Peak ⟨u_x⟩ | 1.87U_e | 1.92U_e | p. 5 |

- **Acoustics** (p. 3):
  - One G.R.A.S. 46BE ¼-inch microphone (20 Hz–100 kHz), referenced against a 42AB calibrator. Recorded on a National Instruments DAQ at 250 kHz and 16 bit.
  - Placed between the jets, 23D away at lip height, out of the plane of the nozzles: y/D = 23, θ = 90°, φ = 90° in the coordinates of Kuo et al. (2017b).
  - Spectra use a 2¹³-sample sliding window (Δf ≈ 30.5 Hz, my arithmetic), 25 % overlap and a Hann window. Record length is not stated.
  - The enclosure is not anechoic, so amplitudes are indicative only.
- **PIV** (Table 1, p. 3–4):
  - A 12-bit Imperx B6640 CCD (6600 × 4400 px) recorded single-exposure pairs at 0.5 Hz. About 9000 fields were used for all statistics, so snapshots are independent and **not time-resolved**.
  - Optics: 19.9 µm/px with a 200 mm Micro-Nikkor lens. Field of view 129.3 × 86.2 mm (12.9 × 8.6 D).
  - Illumination: a diverging sheet about 1 mm thick from a dual-cavity Nd:YAG (532 nm, 200 mJ), entering from the bottom of the field.
  - Δt = 0.9 µs, which displaces particles by about 0.5 px in the slow near field and about 30 px in the core, against an assumed 0.1 px resolution limit (p. 4).
  - Processing: multigrid cross-correlation (Soria 1996), from 128 × 128 px (0.255D) windows down to a final "12 × 12 px", with 8 px vector spacing (0.016D) and 50 % overlap, giving 1092 × 726 vectors. Depth of field 0.66 mm (0.066D).
  - Outliers are found by a Chauvenet 3σ test on the temporally stacked fields and replaced by cubic interpolation when at least 3 neighbours are good; otherwise they are excluded (p. 3).
  - Reflections are masked (white regions in the figures) (p. 5).
  > Table 1 is internally inconsistent. At 19.9 µm/px, 12 px is 0.024D, not the tabulated 0.032D (which is 16 px). An 8 px spacing over 6600 px gives about 825 vectors across, not 1092. 1092 × 726 implies about 6 px spacing, i.e. a 12 px window at 50 % overlap. Check against the PDF; the 12 px / 6 px reading fits the vector count.
- **Uncertainty** (eqs 1–2, p. 4): bootstrap resampling (Benedict & Gould 1996) with B = 1000 resamples of n fields drawn with replacement. Applied to the axial rms; the 95 % interval is θ̂ ± 1.96[var(θ̂_boot)]^{1/2}.
- **Regions and lines** (Fig. 6, p. 5):
  - Origin midway between the nozzles at the exit plane. Jet axes at y/D = ±1.5; lip lines at y/D = ±1.0 and ±2.0.
  - I = inter-nozzle near field; E = exterior near field.
  - Shear-layer centre = line of maximum velocity variance; shear-layer outer = the 10 % threshold of eq. 4.
  - "Half–half" plots show the lower jet of NPR 4.6 below the axis and the mirrored lower jet of NPR 5.0 above it (p. 6).
- **Statistics computed** (all from the non-time-resolved PIV; no spectra or phase information):
  - Mean, rms, skewness, specific TKE ⟨u_x'²+u_y'²⟩/2 (definition assumed from the axis label, Fig. 18) and out-of-plane vorticity.
  - Local Mach number from velocity (eq. 3), assuming uniform total temperature, after André et al. (2014).
  - Shear-layer thickness by the 10 % rms threshold (eq. 4).
  - Two-point correlation maps R11 and R22 from a single reference point (eq. 5).
  - Integral length scales along the shear-layer centre and outer lines, integrated up to R = 1/e (eq. 6, p. 12).
- **Detrending for the standing wave** (p. 14): the monotonic rise of the rms with shear-layer growth is removed with a 1D Gaussian filter ("mean calculated over 200 samples, standard deviation of 10"), and the filtered trend is presumably subtracted. Fig. 28 shows the detrended rms; Figs 29–30 also detrend L11⁽¹⁾.
  > The filter description is ambiguous. A Gaussian with σ = 10 vectors (about 0.12–0.16D) is much shorter than λ_sw ≈ 1.7D, and subtracting it would remove little of the trend. The 200-sample window (about 2.4–3.2D) is the scale that would. Check how the trend was formed.
- **Length scales for Panda's relation** (p. 15): λ_sw is the mean crest spacing of the axial rms along the jet edge and the symmetry line. λ_h is the mean crest spacing in the R11 maps. λ_s = a/f with a ≈ 345 m/s (T = 298 K). Each comes with a 95 % interval.
- **Modelling:** none beyond Panda's kinematic relation (eq. 7) and isentropic relations. Twin-jet stability theory (Morris 1990) is cited only as the "hydrodynamic" alternative to a screech-driven coupling mechanism (p. 15).

## Key equations
- **NPR** (p. 2): NPR = p₀/p∞ (the extraction garbles the symbols).
- **Bootstrap mean and variance** (eqs 1–2, p. 4), with θ̂_boot,k = ⟨u'_{x,k}u'_{x,k}⟩^{1/2} for resample k:
  $$\langle\hat\theta_{\rm boot}\rangle=\frac1B\sum_{k=1}^{B}\hat\theta_{{\rm boot},k},\qquad \mathrm{var}(\hat\theta)_{\rm boot}=\frac{1}{B-1}\sum_{k=1}^{B}\big(\hat\theta_{{\rm boot},k}-\langle\hat\theta_{\rm boot}\rangle\big)^2$$
  The 95 % interval is $\hat\theta\pm1.96\,[\mathrm{var}(\hat\theta_{\rm boot})]^{1/2}$ (p. 4).
- **Local Mach number from velocity** (eq. 3, p. 7), adiabatic flow with uniform T₀ = 298 K, γ = 1.4, R = 287.06 J kg⁻¹ K⁻¹:
  $$M=\left[\frac{u^2}{\gamma R T_0-u^2(\gamma-1)/2}\right]^{1/2}$$
  This is $M=u/a$ with $a^2=\gamma R(T_0-u^2/2c_p)$. So u = U_e (the sonic speed at T₀) maps to M = 1, and u = 2U_e to M ≈ 3.16 (Fig. 11 axes).
- **Shear-layer thickness** (eq. 4, p. 9):
  $$\delta(x)=y\Big(\max\big[\langle u_x'u_x'\rangle^{1/2}\big]\Big)-y\Big(0.1\max\big[\langle u_x'u_x'\rangle^{1/2}\big]\Big)$$
  This is the transverse distance from the rms peak to the point where the rms falls to 10 % of it, taken on the side facing the region concerned (I or E). The 10 % threshold follows Alkislar et al. (2003), Tan et al. (2017), André et al. (2014) and Weightman et al. (2016) (p. 9).
- **Two-point spatial correlation** (eq. 5, p. 11):
  $$R_{ij}(\boldsymbol x,\boldsymbol\xi)=\frac{\langle u_i'(\boldsymbol x,t)\,u_j'(\boldsymbol x+\boldsymbol\xi,t)\rangle}{\sigma_i(\boldsymbol x)\,\sigma_j(\boldsymbol x+\boldsymbol\xi)}$$
- **Integral length scale** (eq. 6, p. 12), with the integral truncated where R_ij first falls to 1/e ≈ 0.368 (Nicolaides et al. 2004; Tritton 1977):
  $$L_{ij}^{k}(\boldsymbol x)=\frac12\int_0^{\infty}R_{ij}(\boldsymbol x,\xi_k)\,\mathrm d\xi_k$$
  > The ½ with a one-sided integral is as printed. The authors say the 1/e cutoff consistently underestimates the full-domain value (p. 12–13). With the ½ and the 1/e cutoff, these L values are not directly comparable with [Tan 2017](tan-2017-broadband-velocity-fluctuations-screeching-jets.md), which integrates to R = 0.1. Check whether Tan's definition carries the ½.
- **Panda's standing-wave relation** (eq. 7, p. 15; [Panda 1999](panda-1999-experimental-investigation-screech-noise-generation.md)):
  $$\frac{1}{\lambda_{sw}}=\frac{1}{\lambda_s}+\frac{1}{\lambda_h}$$
  Here λ_sw is the standing wavelength, λ_s the upstream acoustic (screech) wavelength and λ_h the hydrodynamic wavelength.
  > Check: 1/(1/1.7 − 1/3.2) = 3.63D, against the tabulated 3.7 ± 0.17D. That is consistent within rounding of λ_sw (1.72D would give 3.72D). The ±0.12D uncertainty on λ_sw alone moves λ_s,est across 3.1–4.2D (my arithmetic).
- **Strouhal number** (p. 3): St = f D_j/U_j with the ideally expanded diameter and velocity.

## Data tables
**Table 2**, screech metrics (p. 15; layout rebuilt from the render):

| Quantity | NPR 4.6 | NPR 5.0 |
|---|---|---|
| Screech Strouhal number | 0.22 | 0.19 |
| Screech λ_s (a ≈ 345 m/s, T = 298 K) | 3.4D | 3.9D |
| Avg. standing wavelength λ_sw (± 95 % conf.) | – | 1.7 ± 0.12D |
| Avg. hydrodynamic wavelength λ_h (± 95 % conf.) | 3.0 ± 0.18D | 3.2 ± 0.15D |
| Estimated screech wavelength | – | 3.7 ± 0.17D |
| Nominal λ_s,est/λ_s,meas relative error | – | 6.1 ± 17.1 % |

> **Units of λ_s.** With isentropic D_j and U_j (T₀ = 298 K), St = 0.19 and 0.22 based on D_j give f ≈ 7.7 kHz and 8.9 kHz, so a/f = 4.48D (3.86D_j) and 3.88D (3.41D_j). The tabulated 3.9D and 3.4D therefore match a/f only if they are in units of D_j, or if the tabulated St is based on D rather than D_j (f ≈ 8.9 and 10.1 kHz) (my arithmetic). In the first reading, the NPR 5.0 comparison is 3.7D against 4.5D, about 19 % low and just outside the stated ±17.1 %. In the second it is 3.7D against 3.9D, as published. [Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md) uses St = 0.19 for this condition with D_j-based Strouhal numbers (that note's check of its Table 2). The tone of [Knast 2018](knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md) at NPR 5.0, 8.8 kHz with the same nozzles in the other (schlieren) rig, fits the second reading. Unresolved: check against the PDF and Bell's thesis if available.

**Implied convection speed** (my arithmetic): u_c/U_j = St·λ_h/D_j = 0.58 (NPR 4.6) and 0.52 (NPR 5.0) with the R11 wavelengths. That compares with 0.60 from Knast's x–t schlieren in the other rig (Knast 2018 note, Table 3). With the 3.5D POD wavelength of the same NPR 5.0 data ([Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), Table 2; k_x D ≈ 1.8 in [Nogueira 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md)), it is 0.57, and Panda's relation then gives λ_s,est = 3.3D instead of 3.7D. The Panda check is sensitive to how λ_h is measured.

**Table 3**, turbulence modulation (p. 16):

| Zone | Intensity, NPR 4.6 (no SW) | Intensity, NPR 5.0 (SW) | Coherence, NPR 4.6 | Coherence, NPR 5.0 |
|---|---|---|---|---|
| Shock-dominated (E SL centre) | Yes | Yes | No | Yes |
| SW-dominated (E SL outer) | No | Yes | No | Yes |

**Shock-reflection-point positions** (vertical lines in Figs 7–8, p. 6; my reading on a 300 dpi render, ±0.03D):

| NPR | x/D of reflection points | Spacings (D) | Mean of first four |
|---|---|---|---|
| 4.6 | 1.65, 3.24, 4.87, 6.50, 8.00, 9.31 | 1.59, 1.63, 1.63, 1.50, 1.31 | 1.59D |
| 5.0 | 1.73, 3.38, 5.08, 6.80, 8.40, 9.95 | 1.65, 1.70, 1.72, 1.60, 1.55 | 1.67D |

These are close to Knast's schlieren values in the other rig, 1.65D and 1.69D (Knast 2018 note, Table 4). Pack's formula, 1.306√(M_j²−1)·D_j, gives 1.96D and 2.10D, about 25 % too long for these Mach-disk jets (my arithmetic). At NPR 5.0, λ_sw/L_s ≈ 1.7/1.67 ≈ 1.02.

**Fig. 3 staging map** (p. 3; read from a 400 dpi render, ±0.01 in St): NPR 2.0: 0.67; 2.1: 0.58; 2.2: 0.60; 2.3: 0.39; 2.5: 0.35; 3.0: 0.28; 3.5: 0.25; 4.0: 0.24; 4.5: 0.21; 4.6: 0.21 (blue marker); 4.7: 0.21; 4.8: 0.19; 5.0: 0.18–0.19 (orange marker); 5.5: 0.18.

## Figures worth remembering
- **Fig. 2 (p. 3):** spectra at NPR 4.6 and 5.0 with the tone lines. NPR 5.0 has a harmonic near St 0.37, and both have a broadband hump near St 0.4–0.45.
- **Fig. 3 (p. 3):** St against NPR in the PIV enclosure: the rig's staging map, with jumps at NPR 2.2–2.3 and 4.7–4.8.
- **Fig. 6 (p. 5):** schematic of the I/E regions and line conventions. Useful template for twin-jet near-field analysis.
- **Figs 7–8 (p. 6):** mean axial velocity with sonic line, shear-layer centre and outer lines, and shock-reflection lines.
- **Fig. 11 (p. 8):** centreline velocity with a parallel local-Mach axis, showing the subsonic pockets behind the Mach disks.
- **Fig. 14 (p. 9):** shear-layer thickness of the I and E layers against x/D.
- **Fig. 17 (p. 11):** skewness map. A positive-skewness band at the I shear-layer edge meets the symmetry line at x/D ≈ 4.
- **Fig. 18 (p. 11):** TKE on the symmetry line against the exterior line, crossing near x/D ≈ 10.
- **Figs 19–22 (p. 12):** R11 and R22 maps. Symmetric banding at NPR 5.0, faint at 4.6.
- **Figs 23–26 (p. 13):** L11 and L22 along the shear-layer lines with shock-reflection lines.
- **Fig. 27 (p. 14):** half–half log₁₀ rms contours. Standing-wave lobes beside the NPR 5.0 jet only. Same diagnostic as the log σ schlieren maps of [Esfahani 2021](esfahani-2021-coupling-modes-twin-rectangular-jets.md).
- **Fig. 28 (p. 14):** detrended rms along y = 0 and the E outer line: the standing-wave modulation.
- **Figs 29–31, Table 3 (p. 16–17):** detrended ILS against detrended rms, and the summary sketch of where intensity and coherence are modulated.

## Notation
- D: nozzle exit diameter (10 mm). D_j, U_j: ideally expanded diameter and velocity. U_e ≈ 310 m/s: exit (sonic) velocity. M_e = 1. s: centre-to-centre spacing.
- NPR = p₀/p∞. T₀ = 298 K. St = f D_j/U_j.
- x streamwise; y transverse, in the plane of both jet axes; z out of plane. Origin midway between the nozzle exits.
- I, E: inter-nozzle and exterior regions. SL: shear layer. SRP: shock-reflection point. SW: standing wave.
- "E SL outer −0.32D": a line 0.32D inside the E shear-layer outer edge (from the labels; the paper says it has lower baseline fluctuations, p. 14).
- LJC, UJC, Sym: lower-jet centreline, upper-jet centreline, symmetry line.
- R_ij: two-point correlation of velocity components i, j (1 = axial, 2 = transverse). L_ij^k: integral length scale of R_ij in direction k (1 = x, 2 = y).
- λ_sw, λ_s, λ_h: standing, acoustic (screech) and hydrodynamic wavelengths.
- **Coupling labels:** "symmetric" means the flow pattern mirrors about the midplane: R11 is mirror-symmetric and R22 is opposed across the midplane (p. 12). This is Bell 2021's "symmetric", Nogueira 2021's 1SS (same NPR 5.0 data) and Knast's "symmetric flapping" (180° in Knast's jet frame). See the naming table on [twin-jet-coupling](../Topics/twin-jet-coupling.md).

## Relevance to this project
- **Place in the group's twin-jet thread.**
  - This is the first paper on the group's second twin-jet rig, the PIV enclosure ("facility two" in [Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md)). [Knast 2018](knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md) used the same nozzles in the schlieren rig.
  - The NPR 4.6 and 5.0 PIV sets appear to be the data reanalysed later: same rig, NPRs and roughly 9000 fields. [Nogueira 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md) used them for symmetry-imposed POD and Floquet LSA (NPR 5.0, about 9000 fields, 1SS). [Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md) used them for conditional POD (about 9500 fields per NPR).
  - The questions this paper leaves open were answered on those data. Bell 2021 showed that NPR 4.6 alternates between symmetric coupling, antisymmetric coupling and one jet oscillating alone, with POD wavelengths of 3.1D and 2.8D and tones of St 0.22 and 0.23. That is the first of the four explanations listed here (p. 15), and it explains why no standing wave survives the ensemble average. Nogueira 2021 showed that the 1SS guided jet mode closes the NPR 5.0 loop, which turns the "screech-based coupling" inferred here from Panda's relation into a specific mechanism.
- **Label mismatch to check.** The Bell 2021 note summarises this paper as finding "clear antisymmetry with a strong near-field standing wave at the steady condition" (Bell 2021, p. 3–4). This paper calls NPR 5.0 symmetric throughout (p. 12, 15, 17). Either Bell 2021 used another convention there or the note misquotes it.
- **Methods and data type.**
  - Everything flow-side here suits **non-time-resolved PIV**: mean, rms, skewness, TKE, bootstrap intervals, single-reference two-point correlation maps and integral length scales.
  - Single-reference correlation maps show only the dominant symmetric or antisymmetric pattern, with no phase and no separation of intermittent states. On the same kind of data, POD pairs with symmetry imposition ([Nogueira 2021](nogueira-2021-twin-jet-coupling-spatial-lsa.md)) or conditional POD ([Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md)) recover phase and states.
  - The log₁₀ rms map (Fig. 27) is a cheap standing-wave diagnostic that works on PIV or on 1 Hz schlieren ([Esfahani 2021](esfahani-2021-coupling-modes-twin-rectangular-jets.md)). This paper shows its main failure mode: an average over switching states blurs or erases the pattern. A missing standing wave in averaged statistics of a loud screeching jet (122.5 dB here) should be read as a possible sign of intermittency, not as no resonance.
  - Only the microphone is time-resolved (250 kHz). The spectra are plain Welch averages, with no time–frequency analysis.
- **SPOD → reconstruction → HPOD.**
  - With time-resolved schlieren of these nozzles at NPR 4.6 (facility two), SPOD of the tone band, reconstruction per tone and HPOD would give instantaneous amplitude and phase. Conditioning the rms or log-rms maps on HPOD amplitude per coupling state would recover each state's standing wave and its λ_sw.
  - That would allow Panda's relation to be tested per state, where this paper could test it only at the steady NPR 5.0.
  - The same conditioning would separate shock and standing-wave modulation of the integral length scales in time rather than by comparing two NPRs.
- **Strength of the turbulence-modulation conclusion** (the note's analysis).
  - The shock-versus-standing-wave argument compares NPR 5.0 (steady coupling, standing wave visible) with NPR 4.6, treated as having no standing wave. But NPR 4.6 still screeches at 122.5 dB and, per Bell 2021, switches between states. So the "no SW" case is really an unsteady standing wave averaged out, not the absence of resonance.
  - At NPR 5.0, λ_sw (1.7D) is almost equal to the shock spacing (≈ 1.67D, figure reading), so the two cannot be separated by modulation wavelength. The separation rests on the choice of line (E SL centre against E SL outer −0.32D).
  - The ILS come from the total fluctuations, including the coherent screech motion. The correlation-length modulation at NPR 5.0 may partly be the coherent standing-wave pattern itself. [Tan 2017](tan-2017-broadband-velocity-fluctuations-screeching-jets.md) remove that motion with a POD triple decomposition. [Tan 2019](tan-2019-correlation-analysis-piv-screeching-jets.md) then find ILS maxima at the shock-reflection points in the screech-removed field along the lip line, so the shocks do modulate the broadband coherence there (that note, p. 32–33). Applying that decomposition to these data would test this paper's conclusion directly.
- **Screech frequency models.** Here λ_sw and λ_h are measured independently from PIV statistics, so Panda's relation is a genuine consistency check, not the identity it becomes when λ_sw is computed from f ([Edgington-Mitchell 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 3). But the check is loose (±17 %), depends on how λ_h is measured (3.2D from R11 against 3.5D from POD), and may be affected by a unit ambiguity (see Data tables). It also cannot tell free-stream sound from the slightly subsonic guided jet mode as the upstream wave.
  - λ_sw/L_s ≈ 1.0 at NPR 5.0 (figure reading) compares with Knast's 1.04–1.05 at the same NPRs in the other rig and Panda's ≈ 0.8 for single jets ([Panda 1999](panda-1999-experimental-investigation-screech-noise-generation.md)). The staging page reads these ratios through the k_s1/k_s2 picture; see [screech-staging-and-mode-switching](../Topics/screech-staging-and-mode-switching.md).
- **Rig dependence.** The jump to the post-jump (symmetric) stage falls at NPR 4.7–4.8 in this enclosure (Fig. 3). In the schlieren rig the steady symmetric process starts at NPR 4.4 ([Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), Fig. 5). This adds to the evidence that identical nozzles in different enclosures (here hard, untreated walls) stage at different NPRs. Record the enclosure, flange and plenum geometry with any twin-jet data.
- **PIV practice.** The paper documents a failure mode for planar PIV of twin Mach-disk jets: the sheet, grazing the first jet, is diffracted by its Mach disk and lights the second jet inconsistently, which corrupts its higher-order statistics (p. 5–8). Light the jet of interest first, or check symmetry before using both jets. The other parameters fit the group's practice on [diagnostics-and-facilities](../Topics/diagnostics-and-facilities.md): smoke seeding, 0.9 µs Δt, about 9000 independent fields and bootstrap intervals of about ±2 % on the rms.
- **Rocket noise and clustered plumes.** The merge-point estimates (x/D ≈ 4–4.5 hydrodynamic contact against 7.5–8.5 from shear-layer extrapolation), the late onset of inter-nozzle mixing (x/D ≳ 10) and the stronger standing wave between the jets bear on multi-nozzle near-field loads. The paper cites the F-15 fatigue damage from twin-plume resonance (Seiner et al. 1986, p. 1). Screech itself is absent at full scale.
- **PyFR staging LES.** The jump studied here is a twin-jet m = 1 type transition, not the axisymmetric A1/A2 staging of the PyFR runs. The transferable idea is diagnostic: a standing wave smeared in time-averaged rms can signal switching between states. In LES, conditioning rms maps on the HPOD amplitude of each state tests that directly.
