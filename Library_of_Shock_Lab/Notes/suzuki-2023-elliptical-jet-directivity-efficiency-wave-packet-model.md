---
key: "suzuki-2023-elliptical-jet-directivity-efficiency-wave-packet-model"
title: "Analysis of Elliptical-Jet Acoustic Directivity and Efficiency Using a Vortex-Sheet-Based Wave-Packet Model"
authors: ["Suzuki, Naia", "Nogueira, Petronio", "Edgington-Mitchell, Daniel"]
year: 2023
type: "article"
venue: "AIAA J. 61(6), 2570–2580"
bib: {"journal": "AIAA Journal", "volume": "61", "number": "6", "pages": "2570--2580"}
doi: "10.2514/1.J062541"
arxiv: ""
pdf: "non-axisymmetric-jets/Suzuki-EtAl_2023_Analysis-Of-Elliptical-Jet-Acoustic-Directivity-And-Efficiency-Using-A-Vortex.pdf"
version: "published"
unverified: []
group: true
facility: ""
data: ["model-only"]
methods: ["vortex-sheet", "LSA-local", "acoustic-analogy"]
flow: ["elliptical-jet", "round-jet", "subsonic", "supersonic", "jet-edge"]
phenomena: ["KH-wavepackets", "flapping", "varicose", "mixing-noise", "directivity", "acoustic-efficiency", "installation-effects", "compressibility-effects"]
params: {"AR": "1–2 (stability maps); 1–3 (azimuthal directivity); 1.001–5 (Fig. 10)", "M_j": "0–2 (vortex sheet); 0.6 (acoustics)", "St": "0.2, 0.4, 0.6 (vortex sheet, fD/U_j); 0.2 (acoustics)", "T_j/T_∞": "1/(1 + 0.2M²) (unheated, eq. 27)", "y_s/D": "1–3", "x_s/D": "−1, 0, 1", "α (ellipse rotation)": "0–90°", "k_hL": "6 (round-jet validation)", "R_obs": "35D (polar arc, sphere); ring at x = 4D, r = 14.3D"}
topics: ["non-axisymmetric-jets", "jet-noise-mechanisms", "linear-models"]
related: ["ivelja-2024-modal-analysis-screeching-elliptical-jets", "suzuki-2026-coherent-structures-axis-switching-elliptical-jets", "mazharmanesh-2025-screech-modes-non-axisymmetric-jets", "tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets", "edgington-mitchell-2015-staging-screeching-elliptical-jets", "edgington-mitchell-2015-multimodal-instability-weakly-underexpanded-elliptic-jet", "mitchell-2013-near-field-structure-underexpanded-elliptic-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "jordan-2013-wave-packets-turbulent-jet-noise", "jaunet-2017-two-point-coherence-wave-packets-turbulent-jets", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "michalke-1984-survey-jet-instability-theory", "tam-1989-three-families-instability-waves-high-speed-jets", "jordan-2018-jet-flap-interaction-tones", "rodriguez-2023-preferred-flapping-round-twin-jets", "lu-2026-rectangular-jet-screech-dimensional-reduction", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "edgington-mitchell-2019-aeroacoustic-resonance-review"]
cites: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "edgington-mitchell-2015-staging-screeching-elliptical-jets", "edgington-mitchell-2019-aeroacoustic-resonance-review", "jaunet-2017-two-point-coherence-wave-packets-turbulent-jets", "powell-1992-oscillation-modes-choked-circular-jets"]
summary: "Compressible elliptic vortex sheet (Mathieu modes) + wavepacket/half-plane Green's function, M 0.6: ce₀ far more efficient; se₁ quieter, ce₁ louder as AR rises"
---
# Analysis of Elliptical-Jet Acoustic Directivity and Efficiency Using a Vortex-Sheet-Based Wave-Packet Model

- **Authors:** Naia Suzuki, Petronio Nogueira and Daniel Edgington-Mitchell, Monash University, Melbourne (p. 2570). Shock Lab group work, model only (no experiment). The footnotes as printed attach "Associate Professor" to Suzuki, "Research Fellow" to Nogueira and "Undergraduate Student" to Edgington-Mitchell; the first and last are evidently swapped (my reading). Funded by ARC Discovery Project DP220103873; the authors thank Michael Stavropoulos for discussions on the compressible vortex sheet (p. 2579).
- **Source:** AIAA Journal 61(6), 2570–2580, June 2023, doi:10.2514/1.J062541. Received 13 Oct 2022, revised 21 Jan 2023, accepted 19 Feb 2023, published online 22 Mar 2023 (p. 2570). Associate editor C. Bailly.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/non-axisymmetric-jets/Suzuki-EtAl_2023_Analysis-Of-Elliptical-Jet-Acoustic-Directivity-And-Efficiency-Using-A-Vortex.pdf` (index key `non-axisymmetric-jets/Suzuki-EtAl_2023_Analysis-Of-Elliptical-Jet-Acoustic-Directivity-And-Efficiency-Using-A-Vortex.pdf`, 11 pp., publisher's version). **Page refs are journal pages; PDF page = journal page − 2569.** The text layer garbles every equation and the matrix E; they were rebuilt from pages rendered at 130–300 dpi. All numbers for Figs. 5–15 are read from colour maps or line plots.
- **Tags:** elliptical jet, installed jet, jet–wing interaction, trailing-edge scattering, half-plane tailored Green's function, Lighthill acoustic analogy, kinematic wavepacket, compressible elliptic vortex sheet, Mathieu functions, modified Mathieu–Hankel functions, ce₀ varicose, se₁ flapping, ce₁ wagging, growth rate, phase velocity, superdirectivity, acoustic efficiency, azimuthal directivity, exponential jet–plate decay, nozzle orientation, equal-area aspect ratio

## Summary
The paper asks whether an elliptical nozzle could make a jet quieter, free or installed beside a wing, and which instability mode would carry the sound. It first builds what the authors call the first compressible vortex-sheet stability model of an elliptical jet. Pressure inside and outside the sheet is written as Mathieu-function series, and the matching conditions are solved for the complex wavenumber (p. 2572–2573). It maps growth rate and phase velocity of the varicose ce₀, flapping se₁ and wagging ce₁ Kelvin–Helmholtz modes for M 0–2, AR 1–2 and St 0.2–0.6. As in Morris's finite-thickness models, ce₀ and ce₁ growth falls with AR and se₁ growth rises, so se₁ is usually the most unstable for AR > 1.5 (p. 2573–2575). The real wavenumber then feeds a kinematic wavepacket source on an elliptical cylinder of fixed area. It is radiated with a free-field or semi-infinite-plate Green's function, extending the round-jet installed model of Nogueira, Cavalieri & Jordan (2017) (p. 2571–2572). At M 0.6, St 0.2 and unit amplitude for every mode, ce₀ radiates far more efficiently than se₁ or ce₁, free or installed, and its level hardly changes with AR or nozzle rotation. se₁ gets quieter and ce₁ louder as AR rises, and scattered sound still falls exponentially with jet–plate distance (p. 2576–2579). The authors infer that measured noise reductions of elliptical jets come from lower wavepacket amplitude rather than lower efficiency. If se₁ matters, they suggest mounting the major axis normal to the wing (p. 2579).

## Key findings
**Stability (compressible elliptic vortex sheet)**
- **Validation** (p. 2573; Figs. 3–4).
  - At M = 0 the model overlays the incompressible elliptic vortex sheet (Morris 1988) for ce₀, se₁ and ce₁ at St 0.2, 0.4, 0.6 and AR 1–2.
  - At AR = 1.001, m = 0 it overlays Michalke's (1970) compressible round vortex sheet in phase velocity and −α_i/α_r for M 0–2.
  - At AR = 1 the incompressible values in Fig. 3 match my own round vortex-sheet solve (Data tables), which fixes the normalisation: −k_i is per equivalent radius, St = fD/U_j, U_c over U_j.
- **Growth rate against AR, M and St** (Fig. 5, p. 2573–2575):
  - **ce₀** falls with AR. At St 0.2 the maximum (−k_i ≳ 0.29) sits at M ≈ 1–1.3 and AR ≈ 1–1.2. It moves to lower M as St rises and reaches M = 0 at St 0.6 (p. 2575).
    - Colour-bar ranges (my reading): St 0.2: −k_i 0.24–0.29. St 0.4: 0.69–0.88. St 0.6: 1.15–1.6.
  - **ce₁** also falls with AR at every St studied. Its maximum is at AR = 1: at M = 0 for St 0.2 and 0.4, and at M ≈ 0.3–0.8 for St 0.6 (p. 2575).
  - **se₁** rises monotonically with AR, with its maximum at the largest AR studied (AR 2) and low M (0–0.5) (p. 2575).
    - My reading at St 0.2: about 0.45–0.67 overall, and from about 0.53 at AR 1 to about 0.63 at AR 2 at M 0.6.
  - **Mach number.** For se₁ and ce₁ at St 0.2 and 0.4, growth falls with M. At St 0.6 their peak lies near M ≈ 0.6, more clearly at low AR (p. 2575).
  - **Which mode leads.** For AR > 1.5 se₁ usually has the largest growth, less so at higher St, where the vortex sheet is known to misjudge growth rates (Michalke 1965) (p. 2575). Higher-order Mathieu modes grow faster in a vortex sheet but are observed to decay sooner, so only ce₀, se₁ and ce₁ are kept (p. 2573).
- **Phase velocity** (Fig. 6, p. 2575–2576):
  - U_c/U_j falls monotonically with AR for ce₀ and se₁ and rises for ce₁. With St the ce₀ fall gets steeper, while the ce₁ and se₁ changes get weaker. It falls with M for every mode and St.
  - ce₀ is much faster than se₁ and ce₁. My readings at M = 0: ce₀ ≈ 1.12, ≳ 1.22 and ≈ 1.2 at St 0.2, 0.4, 0.6, against ≈ 0.93, 1.0 and 1.07 for se₁/ce₁ at AR 1.
  - At M 0.6, St 0.2 (my reading): ce₀ ≈ 1.07 (AR 1) to ≈ 1.06 (AR 2); se₁ ≈ 0.90 to ≈ 0.85; ce₁ ≈ 0.90 to ≈ 0.95.
  - The authors argue that ce₀'s higher phase velocity may make it the more efficient radiator despite se₁'s larger growth (citing Cavalieri et al. 2019). They also argue that the falling phase velocity of ce₀ and se₁ with AR should cut efficiency (p. 2576).

**Acoustics (M 0.6, St 0.2, unit amplitude for every mode and AR; growth rate not used)** (p. 2576)
- **The levels are trends of directivity and efficiency, not predictions.** Amplitude would change with AR through growth rate, and setting it needs experiments or simulations the authors did not have (p. 2576). All levels are in dB relative to an arbitrary unit source.
- **Spherical directivity, AR 2, r = 35D** (Figs. 7–8, p. 2576):
  - *Free jet:* ce₀ is nearly axisymmetric and superdirective, peaking at low polar angles as for round jets (Cavalieri et al. 2012). se₁ and ce₁ are also superdirective, possibly because only T₁₁ is kept, with deep cancellation in the y = 0 (se₁) and z = 0 (ce₁) planes.
    - My colour readings: ce₀ peak ≈ −38 dB, se₁ ≈ −80 dB, ce₁ ≈ −67 dB.
  - *Installed:* ce₀ still dominates, including at high polar angles where scattering dominates. All modes show the plate-plane silent zone, hidden for ce₀ by its strong downstream free-field lobe. For ce₁ it combines with the mode's own null into a cross-shaped pattern.
- **Jet–plate distance** (Figs. 9–10, p. 2577; plate at y_s/D = 1, 1.5, 2; polar arc R_obs = 35D centred on the trailing edge):
  - The scattered level falls exponentially with y_s for every mode, as for round jets (Cavalieri et al. 2014; Nogueira et al. 2017).
    - My readings at θ = −150°: ce₀ −41.6, −45.1, −47.6 dB (≈ 6 dB per D); se₁ −60.2, −65.5, −70.3 dB (≈ 10 dB per D); ce₁ −97.3, −100.9, −104.3 dB (≈ 7 dB per D).
    - The polar arc lies in the z = 0 plane, the ce₁ null plane, so ce₁ levels there are very low (p. 2577).
  - At θ = −90° (normal to the plate, towards the ground), ce₀ SPL is a straight line in y_s for AR 1.001–5 at a fixed centreline, slightly steeper at higher AR (Fig. 10).
    - My readings: −40.3 → −51.4 dB over y_s/D 1–3 for AR ≤ 2 (≈ 5.6 dB per D), −52.1 dB at y_s/D 3 for AR 5 (≈ 5.9 dB per D).
  - The model ignores source deformation by the plate, which occurs only at very close spacing (Zaman et al. 2013). At these distances the velocity field is essentially unaffected (Cavalieri et al. 2014), and similar models matched experiments (p. 2577).
- **Streamwise source position** (Fig. 11, p. 2577). Moving the wavepacket centre downstream of the trailing edge (x_s/D −1 → 1) deepens the ce₀ and ce₁ cancellation lobe near θ ≈ −30°: the scattered and free fields become closer in amplitude and interfere more, as in Nogueira et al. (2017).
  - My readings: ce₀ −38 → −46 dB; ce₁ −96 → −108 dB.
  - se₁ barely changes in directivity or efficiency.
- **Azimuthal directivity against AR** (Figs. 12–13; ring at x_azim = 4D, r_azim = 14.3D, as in Piantanida et al. 2016; p. 2577–2578). The source centreline is fixed, so raising AR moves the top of the ellipse away from the plate and the bottom closer.
  - *Free jet, ce₀:* the loudest mode for AR 1–3 by "several orders of magnitude" in efficiency (p. 2578). Peaks at φ = 90°, 270° for AR > 1, but the azimuthal variation stays a fraction of a decibel even at AR 3.
    - My reading: about −59.6 dB at AR ≈ 1 to −60.0/−60.3 dB at AR 3.
  - *Free jet, se₁ and ce₁:* se₁ has nulls at φ = 0°, 180° and falls with AR, much more strongly than ce₀. ce₁ has nulls at 90°, 270° and rises with AR.
    - My readings: se₁ from ≳ −90 dB (colour saturated) to ≈ −97 dB; ce₁ from ≈ −86 dB to ≳ −75 dB over AR 1–3.
    - The authors tie these trends to the phase velocity (Fig. 6) and conclude that efficiency changes are "likely driven by" it (p. 2578).
  - *Installed:* the same trends. ce₀ is unchanged with AR, so phase-velocity and source-position changes have only minor effects on it. ce₁ gains extra nulls at φ = 0°, 180°, giving four lobes and lower overall levels (p. 2578).
    - My readings: ce₀ ≳ −35 dB at all AR; se₁ ≈ −50 → −55 dB; ce₁ ≈ −57 → −50 dB.
    - So installation raises the ring levels by roughly 25 dB (ce₀), 35–45 dB (se₁) and 25–30 dB (ce₁) against the free jet (my comparison of the two figures).
  - **Dominance despite growth.** The efficiency gap means ce₀ will likely dominate an installed elliptical jet even with reduced growth, "at least at this Mach number" (p. 2578).
- **Rotated AR 2 nozzle** (Figs. 14–15, p. 2578–2579). α is the angle of the major axis from the plate plane: α = 0 parallel, α = 90° normal.
  - *ce₀* is "essentially invariant" with rotation. The closer approach of the source to the plate at α = 90° is offset by its smaller spanwise extent (p. 2579).
  - *se₁* falls with α and *ce₁* rises. The authors attribute this to oscillation in the plate's plane (z) radiating less (Nogueira et al. 2017).
    - My readings: se₁ ≈ −52 → −60 dB; ce₁ ≈ −57 → −46 dB.
  - *Nulls:* both modes keep plate-plane nulls at φ = 0°, 180° for every α. The modal and plate nulls start perpendicular for ce₁ at α = 0 (four peaks) and align as α grows. The opposite happens for se₁, which has four peaks at α = 90°.
  - *Recommendation:* if se₁ dominates the free jet, mount the major axis normal to the wing. This agrees with Proença & Lawrence (2022), who found benefits with the trailing edge parallel to the minor axis but did no mode decomposition, so experiments must confirm it (p. 2570–2571, 2579).
- **Conclusions** (p. 2579):
  - ce₀ efficiency hardly changes with AR. The reductions measured by Kinzie & McLaughlin (1999) may therefore come mainly from lower wavepacket amplitude.
  - The model is cheap, but ignores amplitude. PSE-educed wavepackets and the boundary-element method (Nogueira et al. 2019) would allow general source shapes and plate geometries.

## Setup / method
**Nature of the study.** Theory and computation only, run in MATLAB (lsqnonlin for the dispersion relation, p. 2573). No new experiment or high-fidelity simulation. The only comparisons are with earlier models (Figs. 2–4).

**1. Compressible elliptic vortex sheet** (p. 2572–2573)
- **Geometry.** Elliptic cylindrical coordinates (μ, ν), with the sheet at μ = μ₀ and foci ±a (eqs. 8–12). The semi-major axis r_z is along z (= y₃) and the semi-minor axis r_y along y (= y₂). The area is held at that of the round jet, π r_z r_y = π r_cyl², to compare at constant thrust (eqs. 5–7, p. 2570–2571).
- **Flow.**
  - Top-hat jet with velocity U and Mach number M_j, inside a quiescent ambient. The temperature ratio is T, from the isentropic relation for an unheated jet (eq. 27).
  - Inviscid and locally parallel, with spatial stability: real ω, complex k_h.
- **Solution.**
  - Inner pressure is a sum of modified Mathieu functions Ce/Se times angular Mathieu functions ce/se (eq. 23). Outer pressure is a sum of modified Mathieu–Hankel functions of the third kind Mc⁽³⁾/Ms⁽³⁾ (eq. 24). The Mathieu parameters q_i and q_o carry the convected and ambient wave equations.
  - Pressure continuity (eq. 25) and particle-displacement continuity (eq. 26) are projected on the Fourier coefficients a of the angular functions.
  - The ce₂ₘ family truncated at three terms (ce₀, ce₂, ce₄) gives a 6 × 6 system E x = 0 (eqs. 28–29). The other families (b = 1, odd) follow the same way.
  - The dispersion relation det E = 0 is solved for k_h with lsqnonlin. The coefficients come from the right singular vector of E for the smallest singular value (eq. 30).
- **Parameter space:** M 0–2, AR 1–2, St 0.2, 0.4, 0.6. Only the KH branch of ce₀, se₁ and ce₁ is computed; guided or upstream modes are not.
- **Why a vortex sheet.** It is accepted to give reasonable KH phase velocities in round jets, is expected to do so for ellipses, and is cheap enough for large parameter sweeps. It serves as a preliminary prediction tool (p. 2572).

**2. Kinematic wavepacket source and propagation** (p. 2571–2572)
- **Source.**
  - Lighthill's analogy in the frequency domain (eq. 1), keeping only T₁₁ (eq. 2, after Cavalieri et al. 2014).
  - Nogueira et al.'s (2017) cylindrical source (eq. 3) is carried over to an elliptical cylinder. The azimuthal factor e^{imφ} is replaced by the Mathieu pressure eigenfunction on the sheet, p(m, μ₀, ν) (eq. 13), since Fourier modes no longer fit elliptical eigenfunctions (p. 2571).
  - Inputs: k_h (real part of the vortex-sheet wavenumber), amplitude A = 1, envelope length L, centre x_c.
  - The growth rate is deliberately not used, because it would change both amplitude and centre (p. 2576).
  - L (or k_hL) for the elliptical runs is not stated. The validation used k_hL = 6 (p. 2572).
- **Propagation.** A Green's-function integral over the elliptical surface (eq. 14) with scale factor h_ν (eq. 15).
  - Free jet: G₀ (eq. 16).
  - Installed: the semi-infinite flat-plate (half-plane) tailored Green's function of Ffowcs Williams & Hall (1970) (eqs. 17–22). It is written in cylindrical coordinates about the edge, with source, image and edge-path distances R, R′ and B.
  - The plate is rigid, of zero thickness and semi-infinite (x < 0, at y = y_s). The source is not deformed by it.
- **Validation** (Fig. 2, p. 2572). AR = 1.001, M = 0.6, St = 0.2, "Mc = 0.97M", k_hL = 6, axisymmetric mode, free and y_s/D = 1, 1.5, 2. The model reproduces Nogueira et al. (2017) "in close agreement".
  - My readings: free-jet peak ≈ 103 dB near θ ≈ 5–10°; installed levels at θ = −150° of ≈ 98.6, 94.8 and 91.1 dB.
- **Observers** (Fig. 1, p. 2572):
  - Sphere of radius 35D (Figs. 7–8).
  - Polar arc of radius R_obs = 35D centred on the trailing edge, in the x–y plane (Figs. 9–11).
  - Azimuthal ring at x_azim = 4D, r_azim = 14.3D (Figs. 12–13, 15). By my arithmetic the ring sits about 74° from the jet axis at k|x| ≈ 11, only moderately in the far field.
- **Case matrix** (p. 2576–2579):

| Study | AR | y_s/D | x_s/D | α | Observers | Figure |
|---|---|---|---|---|---|---|
| Round-jet validation | 1.001 | free, 1, 1.5, 2 | — | — | polar arc | 2 |
| Spherical directivity | 2 | free; 1 | — | 0 | sphere 35D | 7, 8 |
| Jet–plate distance | 2 (all modes); 1.001–5 (ce₀) | 1–3 | — | 0 | polar arc; θ = −90° | 9, 10 |
| Source position | 2 | 1 | −1, 0, 1 | 0 | polar arc | 11 |
| Aspect ratio | 1–3 | free; 1 | — | 0 | ring | 12, 13 |
| Rotation | 2 | 1 | — | 0–90° | ring | 15 |

- **Assumptions and limits stated by the authors** (p. 2576, 2579):
  - Unit amplitude, with no growth-rate or amplitude change with AR.
  - T₁₁ only, which may be why the m ≠ 0 modes look superdirective.
  - A single coherent wavepacket per mode.
  - No plate-induced source deformation.
  - M 0.6 only for the acoustics.
- **Limits the authors do not state (my reading):** no jitter or coherence decay, a cold jet only, a constant-area top-hat jet with no spreading, and k_h taken from a vortex sheet whose ce₀ phase velocity exceeds U_j (Data tables).

## Key equations
Rebuilt from rendered pages; page refs are journal pages.

- **Helmholtz–Lighthill equation** (eq. 1, p. 2571): $\nabla^2\hat p+k^2\hat p=-\dfrac{\partial^2\hat T_{ij}}{\partial y_i\partial y_j}$.
- **Line-source T₁₁** (eq. 2, p. 2571, from Cavalieri et al. 2014): $\hat T_{11}\approx2\rho_0U_0\hat u_x\,e^{\left(-x^2/L^2+ik_hx\right)}$. Here ρ₀ is the density, U₀ the exit velocity, û_x the peak axial velocity amplitude and L the envelope length.
- **Cylindrical source** (eqs. 3–4, p. 2571, from Nogueira et al. 2017): $T_{11}=A\,r_{cyl}\,e^{-\left(\frac{x-x_c}{L}\right)^2}e^{-ik_h(x-x_c)}e^{im\phi}$, with $A=2\rho_0U_0\hat u_x(\omega,m)$. Here r_cyl is the jet radius, x_c the packet centre and φ the azimuth. Note the sign of ik_h differs from eq. 2 (a time convention change).
- **Equal-area ellipse** (eqs. 5–7, p. 2571): $r_z=\sqrt{AR}\,r_{cyl}$, $r_y=r_{cyl}/\sqrt{AR}$, $AR=r_z/r_y$.
- **Elliptic coordinates** (eqs. 8–12, p. 2571): $y_1=y_1$, $y_2=a\sinh\mu_0\sin\nu=r_y\sin\nu$, $y_3=a\cosh\mu_0\cos\nu=r_z\cos\nu$, with $a^2=r_z^2-r_y^2$ and $\mu_0=\tanh^{-1}(1/AR)$ (printed as μ).
- **Elliptical source** (eq. 13, p. 2571): $T_{11}=A\,r_{cyl}\,e^{-\left(\frac{x-x_c}{L}\right)^2}e^{-ik_h(x-x_c)}\,p(m,\mu_0,\nu)$, where p is the vortex-sheet pressure eigenfunction on the sheet (eqs. 23–24).
- **Radiated pressure** (eqs. 14–15, p. 2571): $\hat p(\vec x,\omega)=\dfrac{1}{4\pi}\displaystyle\int_{y_1}\!\int_0^{2\pi}h_\nu\,S(y_1,\nu,\omega)\,G(\vec x,y_1,\nu,\omega)\,dy_1\,d\nu$, with $h_\nu=a\sqrt{\sinh^2\mu+\sin^2\nu}$. S is not defined explicitly; presumably it is ∂²T₁₁/∂y₁².
- **Green's functions** (eqs. 16–22, p. 2571–2572; Ffowcs Williams & Hall 1970):
  - $G_0=\dfrac{e^{-ikR}}{R}$
  - $G_t=\dfrac{e^{i\pi/4}}{\sqrt\pi}\left[\dfrac{e^{-ikR}}{R}\displaystyle\int_{-\infty}^{u_R}e^{-iu^2}du+\dfrac{e^{-ikR'}}{R'}\int_{-\infty}^{u_{R'}}e^{-iu^2}du\right]$
  - $u_R=2\left(\dfrac{kr_sr_o}{B+R}\right)^{1/2}\cos\dfrac{\theta_o-\theta_s}{2}$, $u_{R'}=2\left(\dfrac{kr_sr_o}{B+R'}\right)^{1/2}\cos\dfrac{\theta_o+\theta_s}{2}$
  - $R=\left[r_o^2+r_s^2-2r_or_s\cos(\theta_o-\theta_s)+(z_o-z_s)^2\right]^{1/2}$, $R'$ the same with $\theta_o+\theta_s$, $B=\left[(r_o+r_s)^2+(z_o-z_s)^2\right]^{1/2}$
  - (r, θ, z) are cylindrical coordinates about the plate edge; subscripts o and s denote observer and source.
- **Pressure inside and outside the sheet** (eqs. 23–24, p. 2572), b = 0, 1:
  - $p_i=\sum_{m=0}^\infty C_{2m+b}\,\mathrm{Ce}_{2m+b}(\mu,q_i)\,\mathrm{ce}_{2m+b}(\nu,q_i)$ (even) or $\sum D_{2m+b}\,\mathrm{Se}_{2m+b}(\mu,q_i)\,\mathrm{se}_{2m+b}(\nu,q_i)$ (odd).
  - $p_o=\sum_{m=0}^\infty A_{2m+b}\,\mathrm{Mc}^{(3)}_{2m+b}(\mu,q_o)\,\mathrm{ce}_{2m+b}(\nu,q_o)$ or $\sum B_{2m+b}\,\mathrm{Ms}^{(3)}_{2m+b}(\mu,q_o)\,\mathrm{se}_{2m+b}(\nu,q_o)$.
  - $q_i=-\dfrac{a^2}{4}\left(k_h^2-M_j^2(\omega-k_h)^2\right)$, $q_o=-\dfrac{a^2}{4}\left(k_h^2-\rho_oM_j^2\omega^2\right)$.
- **Matching** (eqs. 25–26, p. 2572–2573), for each n:
  - $\sum_m C_{2m+b}\mathrm{Ce}_{2m+b}(\mu_0,q_i)a^{2m+b}_{2n+b}(q_i)=\sum_m A_{2m+b}\mathrm{Mc}^{(3)}_{2m+b}(\mu_0,q_o)a^{2m+b}_{2n+b}(q_o)$ (pressure)
  - $\sum_m C_{2m+b}\mathrm{Ce}'_{2m+b}(\mu_0,q_i)a^{2m+b}_{2n+b}(q_i)=\dfrac1T\left(1-\dfrac{k_hU}{\omega}\right)^2\sum_m A_{2m+b}\mathrm{Mc}^{(3)\prime}_{2m+b}(\mu_0,q_o)a^{2m+b}_{2n+b}(q_o)$ (displacement)
  - Unheated-jet temperature ratio (eq. 27): $T=\dfrac{1}{1+0.5(\gamma-1)M^2}$.
- **System** (eqs. 28–30, p. 2573): $E\,x=0$ with $x=[C_0,C_2,C_4,A_0,A_2,A_4]^T$. Rows 1–3 are pressure projections onto n = 0, 2, 4 ($\mathrm{Ce}_{2m}a^{2m}_{2n}(q_i)$ and $-\mathrm{Mc}^{(3)}_{2m}a^{2m}_{2n}(q_o)$). Rows 4–6 are the displacement projections with primes and the factor $-\frac1T(1-k_hU/\omega)^2$. k_h solves det E = 0; then $E=U\Sigma V^T$, and the column of V for the smallest singular value gives the coefficients.

> **Checks (my derivations and arithmetic, not in the paper).**
> - Eqs. 5–7 keep π r_z r_y = π r_cyl². Eq. 12 follows from tanh μ₀ = r_y/r_z = 1/AR. ✓
> - Eq. 26: displacement continuity gives ∂p_i/∂n = (ρ_j/ρ_∞)(1 − k_hU/ω)² ∂p_o/∂n, and ρ_j/ρ_∞ = T_∞/T_j = 1/T with T = T_j/T_∞. For an unheated jet T_0 = T_∞, which is eq. 27. ✓
> - In q_o, with velocities scaled by U_j, the ambient term should be (U_j/c_∞)²ω² = M_j² T ω². So the undefined "ρ_o" must be the ambient-to-jet density ratio ρ_∞/ρ_j = T. Verify against Morris & Bhat (1995).
> - The validation's "Mc = 0.97M" is ambiguous (U_c = 0.97U_j?). Check against Nogueira et al. (2017).

## Data tables
**Round-jet limit of the vortex sheet: my solve against Fig. 3** (incompressible, equal density, spatial). I solved $(\omega-kU)^2I_m(kR)K_m'(kR)=\omega^2I_m'(kR)K_m(kR)$ for complex k with R = U = 1, at ωR/U = π St. The "Fig. 3" columns are my readings at AR → 1.

| St (fD/U_j) | m = 0: −k_iR (solve) | ce₀, Fig. 3a | m = 0: c_ph/U_j (solve) | ce₀ at M = 0, Fig. 6 | m = 1: −k_iR (solve) | se₁, Fig. 3b | m = 1: c_ph/U_j (solve) | se₁/ce₁ at M = 0, Fig. 6 |
|---|---|---|---|---|---|---|---|---|
| 0.2 | 0.257 | ≈ 0.26 | 1.131 | ≈ 1.12 | 0.534 | ≈ 0.53 | 0.940 | ≈ 0.93 |
| 0.4 | 0.802 | ≈ 0.80 | 1.282 | ≳ 1.22 | 1.000 | ≈ 1.00 | 1.000 | ≈ 1.0 |
| 0.6 | 1.620 | ≈ 1.62 | 1.237 | ≈ 1.2 | 1.537 | ≈ 1.53 | 1.062 | ≈ 1.07 |

> **What the table settles, and what it doesn't (my checks).**
> - The agreement confirms that −k_i is per equivalent radius, St = fD/U_j and phase velocity is in U_j.
> - The vortex-sheet ce₀ phase velocity exceeds U_j at low St (my solve peaks near 1.31U_j at ωR/U ≈ 1.5). That is above the ≈ 0.6U_j of eddies but within the near-nozzle wavepacket speeds of 0.8–1.0U_j and above, measured by [Jaunet 2017](jaunet-2017-two-point-coherence-wave-packets-turbulent-jets.md) (p. 21).
> - **Fig. 4 does not match the same solve.** Reading St = 0.5/π, 1/π, 2/π as ωR/U = 0.5, 1, 2, my M = 0 values are c_ph/U_j = 1.10, 1.22, 1.20 and −k_i/k_r = 0.39, 0.67, 1.06. Fig. 4 shows about 1.18, 1.49, 1.20 and 0.52, 1.01, 1.44. The m = 0 incompressible phase speed never exceeds about 1.31U_j in my scan, so Fig. 4 must use another frequency or velocity normalisation, or another temperature ratio. Verify against Michalke (1970).
> - **Fig. 3c looks like a copy of Fig. 3b.** It shows ce₁ growth rising with AR (0.53 → 0.68 at St 0.2), but the text (p. 2575) and Fig. 5c at M = 0 have ce₁ falling (≈ 0.53 → ≈ 0.42). Check the PDF.

**Acoustic levels read from the figures** (dB relative to a unit source; M 0.6, St 0.2; my readings):

| Case | ce₀ | se₁ | ce₁ |
|---|---|---|---|
| Free, sphere, AR 2, peak (Fig. 7) | ≈ −38 | ≈ −80 | ≈ −67 |
| Installed, polar arc, y_s/D 1, θ = −150° (Fig. 9) | −41.6 | −60.2 | −97.3 (in its null plane) |
| Slope with y_s at θ = −150° (Fig. 9) | ≈ 6 dB/D | ≈ 10 dB/D | ≈ 7 dB/D |
| Slope with y_s at θ = −90°, AR ≤ 2 / AR 5 (Fig. 10) | ≈ 5.6 / 5.9 dB/D | — | — |
| Free ring, AR 1 → 3 (Fig. 12) | −59.6 → −60.0/−60.3 | ≳ −90 → ≈ −97 | ≈ −86 → ≳ −75 |
| Installed ring, AR 1 → 3 (Fig. 13) | ≳ −35, no change | ≈ −50 → ≈ −55 | ≈ −57 → ≈ −50 |
| Installed ring, AR 2, α 0 → 90° (Fig. 15) | ≳ −35, no change | ≈ −52 → ≈ −60 | ≈ −57 → ≈ −46 |

> **Reading the trends (my estimates, not the paper's).**
> - **Radial compactness likely sets the ce₀ lead.** The cross-section is acoustically compact: k r_cyl = π St M ≈ 0.38, and k r_z ≈ 0.65 even at AR 3. A |m| = 1 source on a circle radiates with a factor J₁(k r sin θ)/J₀ relative to m = 0. That gives about −15 dB at the ring (θ ≈ 74°) and about −24 dB at θ = 20°. This is the Michalke–Fuchs compactness that keeps round-jet sound in m = 0–2 ([Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md), p. 176). It probably explains most of the 15–40 dB ce₀ lead, more than the phase velocity does.
> - **Phase speed alone gives a few dB.** In the Cavalieri et al. (2019) line source, exp[−½k_h²L²(1 − M_c cos θ)²], ce₀ at 1.07U_j (M_c ≈ 0.64) against se₁ at 0.90U_j (M_c ≈ 0.54) gives only about 6.5 dB at θ = 0 for k_hL = 6.
> - **Geometry acts in the same direction as phase velocity.** At fixed area, the dipole-like se₁ source scales with r_y ∝ AR^{−1/2} and ce₁ with r_z ∝ AR^{1/2}. That alone gives about ∓4.8 dB from AR 1 to 3, against ≈ −7 and ≈ +11 dB read from Fig. 12. So the paper's attribution of the AR trends to phase velocity (p. 2578) is not isolated from this effect. A run with k_h held fixed across AR would separate the two.
> - **The slower ce₀ decay with y_s fits the vortex-sheet k_h.** The near field decays radially as √(k_h² − k²). With the vortex-sheet ce₀ speed (≈ 1.07U_j) instead of the validation's 0.97U_j, that rate falls from about 1.05/D to about 0.89/D. This scales the validation's ≈ 7 dB per D at −90° (Fig. 2) to about 6 dB per D, close to the ≈ 5.6 dB per D of Fig. 10.

## Figures worth remembering
- **Fig. 1 (p. 2572):** coordinate systems: the Green's function about the plate edge, the polar arc centred on the trailing edge, and the azimuthal ring.
- **Fig. 2 (p. 2572):** validation against Nogueira et al. (2017): free and installed SPL against θ for a round jet.
- **Fig. 3 (p. 2573):** M = 0 validation against the incompressible elliptic sheet; −k_i against AR for ce₀, se₁, ce₁. Panel c appears to duplicate panel b (Data tables).
- **Fig. 4 (p. 2574):** AR 1.001, m = 0 against Michalke's compressible round sheet; phase velocity and −α_i/α_r against M.
- **Fig. 5 (p. 2574):** the key stability figure. Growth-rate maps over (AR, M) for the three modes at St 0.2, 0.4, 0.6.
- **Fig. 6 (p. 2575):** phase-velocity maps (U_c/U_j) for the same cases.
- **Figs. 7–8 (p. 2576):** spherical directivity at AR 2, free and installed. Note the nulls in the y = 0 (se₁) and z = 0 (ce₁) planes and the plate-plane silent zone.
- **Figs. 9–10 (p. 2577):** installed polar directivity for y_s/D 1–2, and the exponential decay at −90° for AR 1.001–5.
- **Fig. 11 (p. 2577):** effect of the wavepacket's streamwise position relative to the trailing edge.
- **Figs. 12–13 (p. 2578):** azimuthal directivity against AR (1–3), free and installed. ce₀ is flat to within a fraction of a dB; se₁ falls and ce₁ rises.
- **Figs. 14–15 (p. 2578–2579):** nozzle rotation α and the installed ring maps. ce₀ is invariant; se₁ falls and ce₁ rises with α.

## Notation
- AR = r_z/r_y: aspect ratio (r_z semi-major along z = y₃, r_y semi-minor along y = y₂); r_cyl: radius of the equal-area round jet; D: equivalent diameter.
- μ, ν: elliptic radial and angular coordinates (μ₀ on the sheet); a: focal distance; h_ν: scale factor.
- ce_n, se_n: even and odd angular Mathieu functions; Ce_n, Se_n: modified Mathieu functions; Mc_n⁽³⁾, Ms_n⁽³⁾: modified Mathieu–Hankel functions of the third kind; a_{2n}^{2m+b}: Fourier coefficients of the angular functions; q_i, q_o: Mathieu parameters inside and outside the sheet.
- ce₀: varicose (m = 0 analogue, SS in D2 labels); se₁: flapping across the minor axis (AS); ce₁: wagging along the major axis (SA). The D2 correspondence is from the labels on the [non-axisymmetric-jets](../Topics/non-axisymmetric-jets.md) page.
- k_h: hydrodynamic wavenumber (real part used); −k_i: spatial growth rate (per equivalent radius, by my check); U_c/U_j: phase velocity; k = ω/c_∞: acoustic wavenumber; M, M_j: jet Mach number; M_c: convective Mach number; T: jet-to-ambient static temperature ratio.
- T₁₁: axial Lighthill stress; A: wavepacket amplitude; L: envelope length; x_c: packet centre; û_x: axial velocity amplitude.
- G₀, G_t: free-field and half-plane tailored Green's functions; R, R′, B: source–observer, image–observer and edge-path distances; (r, θ, z)_{o,s}: observer and source coordinates about the edge.
- y_s: jet-axis-to-plate distance; x_s: streamwise offset of the packet centre from the trailing edge; θ: polar angle (−90° is normal to the plate, towards the ground); φ: azimuth on the ring; α: rotation of the major axis from the plate plane.

## Relevance to this project
**Where it sits.** This is the library's first far-field noise model for single elliptical jets, and its only installed-jet (trailing-edge scattering) model. It belongs to the group's elliptical-jet thread (CLAUDE.md: non-axisymmetric nozzles, resonance). That thread has so far been about screech: [Mitchell 2013](mitchell-2013-near-field-structure-underexpanded-elliptic-jets.md), [Edgington-Mitchell 2015](edgington-mitchell-2015-multimodal-instability-weakly-underexpanded-elliptic-jet.md), [Edgington-Mitchell 2015, staging](edgington-mitchell-2015-staging-screeching-elliptical-jets.md), [Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md), [Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md) and [Suzuki 2026](suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md). Its subject is subsonic (M 0.6) mixing noise, not screech.

**How it fits the other notes**
- **Agrees: flapping is the most unstable mode.** se₁ growth rising with AR, while ce₀ and ce₁ fall (Fig. 5), gives a shock-free, subsonic-to-supersonic basis for why minor-axis flapping dominates AR 2 jets. Experiments, Floquet LSA and DNS show the same ([Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md), p. 15, 17–18; [Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md); [Suzuki 2026](suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md), p. 10). It is the elliptical counterpart of the m = ±1 splitting in [Rodríguez 2023](rodriguez-2023-preferred-flapping-round-twin-jets.md). [Suzuki 2026](suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md) cites this paper's phase-velocity trend (ce₁ slower at lower AR) to explain the wagging wavenumber rising near the axis switch.
- **New: the most unstable mode is not the loudest.** In this model the radiated field is ce₀-dominated by 15–40 dB and almost axisymmetric (Figs. 7, 12). The authors cite Tam & Zaman (2000) for measured near-axisymmetric noise from non-round jets (p. 2576). For screech, where flapping is the closing mode, locked flapping makes the directivity strongly azimuthal ([Edgington-Mitchell 2019](edgington-mitchell-2019-aeroacoustic-resonance-review.md), p. 134). The two pictures concern different sources (mixing noise against the screech loop) and do not conflict.
- **Phase speed and efficiency.** The claim that phase velocity drives efficiency follows the line-source result of [Cavalieri 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) (p. 10–12) and the strong sensitivity found by [Jaunet 2017](jaunet-2017-two-point-coherence-wave-packets-turbulent-jets.md) (≈ 24 dB for 0.5 → 0.6U_j in that note's calculation). My checks (Data tables) suggest that radial compactness, and source extent along the antisymmetry axis, matter at least as much here. The source is fully coherent, whereas jitter adds about 30 dB to subsonic wavepacket noise (Cavalieri 2019, p. 15). That could also narrow the efficiency gaps between modes (my inference).
- **Vortex-sheet faults.** The authors accept the vortex sheet for phase speed and doubt its high-St growth rates (p. 2572, 2575), in line with [Tam & Hu 1989](tam-1989-three-families-instability-waves-high-speed-jets.md) (p. 467) and [Michalke 1984](michalke-1984-survey-jet-instability-theory.md) on finite thickness.
- **Other elliptic Mathieu models.** [Tam 1988](tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets.md) used elliptic Mathieu modes for shock cells. This paper adds the KH waves of the compressible elliptic sheet, but not its guided-mode bands. Those bands could be computed cheaply with the same matrix, and [Lu 2026](lu-2026-rectangular-jet-screech-dimensional-reduction.md) shows that AR 2 band edges are exactly where planar models fail (my suggestion).
- **Installation.** [Jordan 2018](jordan-2018-jet-flap-interaction-tones.md) treats tones when the jet grazes an edge. Here the plate is outside the jet (y_s/D ≥ 1) and only scattering is modelled, with no resonance.

**Modelling side, for the lab's elliptical rigs**
- **A cheap KH input for the AR 2 ellipses.** The compressible elliptic vortex sheet needs only M_j, T, AR and St; no mean flow. It could give se₁, ce₁ and ce₀ KH wavenumbers for the group's AR 2 ellipses at the screech conditions (M_j ≈ 1.1–1.5, cold). Those wavenumbers could set k_x filters or sign splits on PIV POD pairs or schlieren SPOD modes, as [Ivelja 2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) did with finite-thickness Floquet LSA.
- **Its known biases:** ce₀ phase speed above U_j, poor growth rates at high St, no shear-layer thickness and no shocks. Use it for trends only.
- **Microphones.** The far field of an elliptical jet decomposes into Mathieu, not Fourier, azimuthal functions (p. 2571). For ring arrays around the lab's elliptical nozzles:
  - Record the nozzle orientation.
  - Avoid the y = 0 plane (the major-axis plane, where se₁ has its null) when the flapping mode is the target.
  - Project ring data onto ce/se functions rather than e^{imφ}.

**Methods and data (CLAUDE.md workflow)**
- **The model itself needs no data:** no snapshots, windows or filters.
- **Calibrating it would need data.** Amplitude, envelope length L, centre x_c and coherence for each Mathieu mode at each St need time-resolved fields.
  - Time-resolved schlieren or LES: SPOD with a D2 split (ce₀ ↔ SS, se₁ ↔ AS, ce₁ ↔ SA), as in [Suzuki 2026](suzuki-2026-coherent-structures-axis-switching-elliptical-jets.md).
  - Near-field microphone arrays: also time-resolved.
  - Non-time-resolved PIV can give the shape and wavenumber of a dominant tone through POD pairs, but not broadband amplitude spectra or coherence.
- **Time variation.** Every element here is stationary and single-frequency: no intermittency, mode switching or time-varying amplitude.
  - The model maps mode amplitudes to azimuthal far-field patterns. So in the SPOD → reconstruction → HPOD pipeline, HPOD-tracked amplitudes of se₁ and ce₁ (or AS and SA) could be turned into predicted, time-varying azimuthal directivity, then tested against a microphone ring.
  - In the multimodal AR 2 jets ([Mazharmanesh 2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md); [Gojon 2019](gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets.md) for diagonal against minor-axis flapping), a switch between flapping planes would show as nulls jumping between φ = 0/180° and 90/270° (my suggestion).

**PyFR staging LES.** Not directly relevant: that jet is round and screeching, with no plate. At AR = 1.001 the vortex sheet reduces to Michalke's round sheet, and its KH phase speeds near or above U_j at low St are a reason not to take vortex-sheet k_h at face value in screech phase models.

**Rocket noise.** Indirect only. The half-plane Green's function and the exponential jet–surface law are the aircraft-installation analogue of pad and deflector scattering ([rocket-noise-models](../Topics/rocket-noise-models.md)). The small azimuthal variation of the varicose mode suggests that any azimuthal directivity of a non-round exhaust comes from its antisymmetric modes. But this holds only at subsonic M_c, not for Mach-wave-dominated rockets (my inference).

**Related works cited, candidates for `/add-paper`:** Morris & Bhat 1995 (Phys. Fluids 7, compressible elliptic-jet stability); Morris 1988 (AIAA J 26) and 1984 (AIAA 84-0399), incompressible elliptic vortex sheet; Nogueira, Cavalieri & Jordan 2017 (JSV 391, the installed-jet model extended here); Cavalieri et al. 2014 (JSV 333, exponential jet–plate scattering); Piantanida et al. 2016 (JASA 140, swept trailing edge); Nogueira et al. 2019 (JASA 146, inclined plate, BEM); Cavalieri et al. 2012 (JFM 704, axisymmetric superdirectivity); Kinzie & McLaughlin 1999 (JFM 395, supersonic elliptic-jet acoustics); Tam & Zaman 2000 (AIAA J 38, non-axisymmetric and tabbed nozzles); Proença & Lawrence 2022 (IOP Conf. Ser. 1226, elliptic jets near a wing); Ffowcs Williams & Hall 1970 (JFM 40, half-plane Green's function); Michalke 1970 (DLR report 70-51) and 1965 (JFM 23); Zaman, Brown & Bridges 2013 (AIAA 2013-2184).
