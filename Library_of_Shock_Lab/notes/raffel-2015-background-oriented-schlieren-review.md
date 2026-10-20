---
key: "raffel-2015-background-oriented-schlieren-review"
title: "Background-oriented schlieren (BOS) techniques"
authors: ["Raffel, M."]
year: 2015
type: "review"
venue: "Exp. Fluids 56, 60"
bib: {"journal": "Experiments in Fluids", "volume": "56", "pages": "60", "note": "Open access"}
doi: "10.1007/s00348-015-1927-5"
arxiv: ""
pdf: "schlieren-and-density-imaging/Raffel_2015_Background-Oriented-Schlieren-BOS-Techniques.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["none"]
methods: ["Abel-inversion", "tomography"]
flow: ["generic"]
phenomena: []
params: {}
topics: ["schlieren-and-density-imaging"]
related: ["tan-2015-bos-density-axisymmetric-jets", "molnar-2023-physics-informed-bos-supersonic", "edgington-mitchell-2020-waves-in-screeching-jets"]
cites: []
summary: "BOS review: displacement/blur optics (f/11, 3–5 px dots), 2–3% full-scale error, 50:1 range; Abel, Poisson and tomographic density, stereo, RBOS, kHz–MHz BOS, velocimetry"
---
# Background-oriented schlieren (BOS) techniques

- **Authors:** M. Raffel (Institute of Aerodynamics and Flow Technology, DLR Göttingen)
- **Source:** Experiments in Fluids 56:60 (2015), review article, open access. Received 27 Jan 2015, published online 6 Mar 2015.
- **DOI:** 10.1007/s00348-015-1927-5
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/schlieren-and-density-imaging/Raffel_2015_Background-Oriented-Schlieren-BOS-Techniques.pdf` (index key `schlieren-and-density-imaging/Raffel_2015_Background-Oriented-Schlieren-BOS-Techniques.pdf`, 17 pp.; local only, not in Git)
- **Tags:** background-oriented schlieren, BOS, review, synthetic schlieren, cross-correlation, image blur, depth of field, Gladstone–Dale, Poisson integration, Abel inversion, tomographic BOS, filtered back-projection, ART, stereo BOS, epipolar geometry, pulsed LED, retroreflective BOS (RBOS), high-framing-rate BOS, BOS velocimetry, density tagging velocimetry, colour BOS (CBOS), natural-background BOS, reference-free BOS, free-surface BOS

## Summary
A short review of BOS by one of its originators, written 15 years after the first papers (Dalziel et al. 2000; Raffel et al. 2000; Meier 2002) (p. 3). BOS images a random dot background through the flow and cross-correlates a flow-on image against a flow-off reference, so the displacement field measures the line-of-sight-integrated refractive-index (density) gradient (p. 2–3). The paper gives the paraxial displacement relation and the focusing/blur trade-off that drives the choice of small apertures (p. 3–4), a typical setup recipe and accuracy figures (p. 5), and then surveys variants: applications in large facilities, stereo and multi-camera localisation, 2D/axisymmetric/tomographic density reconstruction, pulsed and retroreflective illumination, high-framing-rate recording, BOS velocimetry, colour BOS, natural-background and reference-free BOS, and free-surface BOS (p. 6–13). It is a literature guide with no new data, no error analysis of its own and no modelling or simulation content beyond the optical relations and the tomographic reconstruction formulae.

## Key findings
- **What BOS measures** (p. 2–3): image displacement ∝ first spatial derivative of density integrated along the line of sight, like Toepler schlieren (intensity ∝ first derivative) and unlike shadowgraphy (∝ second derivative) (p. 2). Closest relative is laser speckle density photography, with the laser speckle replaced by a printed/painted dot pattern under incoherent light (p. 2–3).
- **Displacement scaling** (p. 3–4, eq. 1–3): displacement grows with background distance Z_D and shrinks with lens–object distance Z_A; it saturates at Δy = f ε_y as Z_D → ∞ (p. 4).
- **Focus/blur dilemma** (p. 4, eq. 4–8, Fig. 4): the camera is focused on the background, so the flow (phase object) is out of focus. Larger aperture reduces diffraction blur d_d but increases geometric blur d_i of the flow; geometric blur usually dominates, hence small apertures and the need for intense illumination. Blur is acceptable while the total blur d_Σ is much smaller than the interrogation window (p. 4).
- **Typical practice** (p. 5): background placed nearer the object than the camera but of the same order; f-number ~11; dot images 3–5 px (2–3 px better but often blocked by diffraction and small pixel pitch); adapt the peak fit to the dot size (3-point fits used in PIV add noise for larger BOS dots); use uncompressed images; PIV software works; subtract the mean displacement to see structures in vector plots.
- **Accuracy** (p. 5): dynamic range ~50:1; measurement error ~2–3% of full scale (Elsinga et al. 2004; Hargather & Settles 2012; Vinnichenko et al. 2012), versus ~1% for PIV, because BOS displacements are small (often < 0.5 px) (p. 5). Thermal applications show blur at strong gradients, contrast loss and data dropout (laser-plasma example, Fig. 5, p. 5).
- **Accuracy improvements cited** (p. 5–6): continuously varying projected patterns plus ensemble correlation (Schröder et al. 2009); optical-flow algorithms (Atcheson et al. 2009); laser-speckle illumination (Meier & Rösgen 2013); multi-camera calibration for 3D BOS (Le Sant et al. 2014); a near-field correction factor demonstrated on an underexpanded jet (van Hinsberg 2014).
- **Single-view limits** (p. 6): for quasi-2D flows one camera suffices, but accuracy is below conventional schlieren/shadowgraph because of the coarser displacement analysis and divergent (non-parallel) viewing. Its strength is that 3D/multi-camera setups are easy (p. 6).
- **Density reconstruction** (p. 7–9): 2D flows by finite differences or a Poisson solver plus one known reference density, distorted by any three-dimensionality (p. 7–8); axisymmetric flows by Abel or Fourier inversion (Venkatakrishnan 2005; Venkatakrishnan & Suriyanarayanan 2009; Sourgen et al. 2004, 2012) (p. 8); asymmetric flows by tomography, e.g. filtered/convolution back-projection (Goldhahn & Seume 2007) or ART, which suits cases with a model in the line of sight (Ota et al. 2011) (p. 8–9). The author says the ideal recording and evaluation methods for quantitative density "have not yet been found" (p. 6).
- **Illumination** (p. 9): pulsed Xenon lamps (5–10 µs), stroboscopes behind semi-transparent backgrounds (~8 µs), Nd:YAG (25 ns, with band-pass filters against self-luminous flow; laser speckle must be suppressed), and increasingly over-driven pulsed LEDs where the pulse sets the exposure. Retroreflective backgrounds (RBOS) avoid inverse-square losses with on-axis lighting and enabled full-scale rotor and aircraft-jet (A320) measurements (p. 9).
- **Time resolution** (p. 9): CMOS high-speed cameras give kHz rates with good temporal resolution: 1 kHz hydrogen explosion, 10 kHz shock-tube vortex rings, 20 kHz laser-speckle RBOS of a sweeping jet, 100 kHz explosion waves, and 5 MHz for a laser-induced shock in a liquid-filled tube, with pressure from a Poisson solve (p. 9).
- **BOS velocimetry** (p. 10): PIV-style correlation of successive BOS displacement fields gives the convection speed of density structures (vortices, shocks), not necessarily the fluid velocity. Density tagging velocimetry uses a laser-induced plasma as a tracer; its weak shock gives temperature via C_s ≈ 20.06√T (eq. "12", p. 10), but the ignition is intrusive and expansion not symmetric (p. 10).
- **Colour BOS** (p. 10–11): splitting an RGB raw image into eight elementary dot patterns (Fig. 9) helps where strong gradients blur the background (p. 10).
- **Natural backgrounds and reference-free BOS** (p. 11–12): background quality indicators (autocorrelation SNR; Bauknecht et al. 2014's inverse variance of the rotation of the displacement field between two cameras, Fig. 11). Larger windows lower correlation noise at the cost of resolution; small-scale scree was the best natural background, evaluated at 8–16 px windows (p. 11). Reference-free BOS (stereoscopic or monoscopic/paraxial, Fig. 12) uses undisturbed image regions as the reference; it suits moving cameras but the density can't easily be integrated because the reference isn't flow-free (p. 11–12).
- **Trends** (p. 13–14, Fig. 13, Table 1): publications still growing; trend towards high-framing-rate cameras with LEDs and retroreflective material, and combining BOS with PIV (7 listed papers), LIF/others (9), BOS velocimetry (6), advanced schlieren/holography (6), conventional schlieren/shadowgraph (5) (p. 13–14).

## Setup / method
This is a review; no experiment is reported. The canonical arrangement (Fig. 3, p. 4):

| Quantity | Meaning (p. 3–4) |
|---|---|
| Z_B | lens to background distance |
| Z_D | flow (density gradient) to background distance |
| Z_A | lens to flow distance |
| z_i, Z_i′ | lens to image plane (focused on background / on flow) |
| f, d_A | focal length, aperture diameter; f-number f/d_A ~ 11 typical (p. 5) |
| M = z_i/Z_B | background magnification; M′ = Z_i′/Z_A flow magnification |

Recording: (1) reference image of the background through still air, before or after the run; (2) flow-on image; (3) cross-correlate (PIV algorithms) to get displacement at many points (p. 3). Interrogation window choice trades noise against resolution (p. 11, Fig. 11).

Applications listed that touch this project's flows (p. 6, 8): underexpanded supersonic free jets (Richard's diamond pattern in the Meier patent, p. 3; Venkatakrishnan 2005 axisymmetric underexpanded jet; van Hinsberg & Rösgen 2014), asymmetric underexpanded jets from a double-hole orifice (Goldhahn & Seume 2007), a supersonic impinging jet with microjet control (Venkatakrishnan et al. 2011), BOS of supersonic jets alongside far-field acoustics (Clem et al. 2013), Orion launch-abort jettison-motor plumes (Reinholtz et al. 2010), rocket near-wakes (Wolf et al. 2012), and an early Monash BOS density measurement (Vasudeva, Honnery & Soria 2005).

## Key equations
- Displacement, paraxial and small-angle (eq. 1, p. 3): $\Delta y = Z_D M \varepsilon_y$, with $M = z_i/Z_B$.
- Deflection angle (eq. 2, p. 3): $\varepsilon_y = \dfrac{1}{n_0}\displaystyle\int \dfrac{\partial n}{\partial y}\,dz$.
- Displacement in lens terms (eq. 3, p. 3): $\Delta y = f\left(\dfrac{Z_D}{Z_D + Z_A - f}\right)\varepsilon_y$; $\Delta y \to f\varepsilon_y$ as $Z_D \to \infty$ (p. 4).
- Focus on background (eq. 4) and best focus for the flow (eq. 5), p. 4: $\dfrac{1}{f} = \dfrac{1}{z_i} + \dfrac{1}{Z_B}$, $\dfrac{1}{f} = \dfrac{1}{Z_i'} + \dfrac{1}{Z_B}$.
- Geometric blur of the flow (eq. 6, p. 4): $d_i = d_A\left[1 - \dfrac{1}{f}M'(Z_A - f)\right]$, $M' = Z_i'/Z_A$.
- Diffraction-limited dot image (eq. 7, p. 4): $d_d = 2.44\,(f/d_A)(M+1)\lambda$, λ ≈ 0.5 µm.
- Total blur (eq. 8, p. 4): $d_\Sigma = \sqrt{d_d^2 + d_i^2}$.
- Epipolar constraint (eq. 9, p. 7): $[x_A\; y_A\; 1]\,F\,[x_B\; y_B\; 1]^T = 0$, F the 3×3 fundamental matrix, estimable from ≥ 7 point pairs.
- Gladstone–Dale (eq. 10, p. 8): $n = G\rho + 1$.
- Deflection in density form (eq. 11, p. 8): $\varepsilon_y = \dfrac{G}{n_0}\displaystyle\int \dfrac{\partial\rho}{\partial y}\,dz$.
- Projection on rotated axes (eq. 12, p. 8; Liu et al. 1989): $\varepsilon(s,\Theta) = G\displaystyle\int \dfrac{\partial\rho}{\partial s}\,dt$, with $s = z\cos\Theta + y\sin\Theta$.
- Filtered (convolution) back-projection (eq. 13, p. 9): $\rho(z,y) = \displaystyle\int_0^{\pi} \varepsilon(s,\Theta) * q(s)\,d\Theta$, q(s) a filter function.
- Speed of sound for DTV (second eq. "12", p. 10): $C_s = \sqrt{\gamma R T} \approx 20.06\ \text{m s}^{-1}\sqrt{T[\mathrm{K}]}$. (Checked: √(1.4 × 287) = 20.04.)

> Equations were read from the rendered pages. The PDF numbers two equations as (12) (p. 8 and p. 10); they are kept as printed. Eq. 2 prints the derivative as ∂n/∂_y (typo). Eq. 11 is eq. 2 with ∂n = G ∂ρ substituted; eq. 12 omits 1/n₀ (n₀ ≈ 1 for gases). Eq. 13 is written as a product "×" in the PDF but described as a convolution; shown here as a convolution. Check against p. 8–10 before implementing.

## Figures worth remembering
- **Fig. 1–2 (p. 2):** family tree: heat haze, shadowgraphy, Toepler schlieren, laser speckle photography, BOS.
- **Fig. 3 (p. 4):** BOS geometry with Z_D, Z_A, Z_B, z_i and the deflection ε_y.
- **Fig. 4 (p. 4):** focus position and blur of the out-of-focus phase object.
- **Fig. 5 (p. 5):** laser-plasma example: reference, flow-on image and displacement field with dropout at the core.
- **Fig. 6–7 (p. 7):** epipolar geometry and the reconstructed 3D tip-vortex system of a BO 105 helicopter (Bauknecht et al. 2015).
- **Fig. 8 (p. 8):** rotated s–t axes for tomographic projections.
- **Fig. 9 (p. 11):** eight elementary dot patterns of colour BOS.
- **Fig. 10–11 (p. 12):** natural backgrounds and the Bauknecht quality indicator vs interrogation window size.
- **Fig. 12 (p. 13):** stereoscopic reference-free BOS setup.
- **Fig. 13 / Table 1 (p. 13):** BOS publications per year; combined-technique counts.

## Notation
- n, n₀: refractive index, reference value; ρ: density; G: Gladstone–Dale constant.
- ε_y: deflection angle; Δy: image displacement; ε(s, Θ): projection at angle Θ.
- Z_A, Z_B, Z_D, z_i, Z_i′: optical distances (table above); f: focal length; d_A: aperture.
- M, M′: background and flow magnification; d_i, d_d, d_Σ: geometric, diffraction and total blur; λ: wavelength.
- F: fundamental matrix; P_A, P_B: projections of point P in cameras A and B; q(s): back-projection filter.
- C_s, γ, R, T: speed of sound, adiabatic index, gas constant, temperature; ω_z: rotation of the displacement field (quality indicator).

## Relevance to this project
This project analyses resonance and feedback in jets using schlieren, acoustics and PIV from the Shock Lab; see CLAUDE.md.
- **Entry point to BOS:** the review is the general map of BOS variants; the group's own quantitative recipe is [Tan et al. 2015](tan-2015-bos-density-axisymmetric-jets.md) (single camera, AFH Abel inversion, Gladstone–Dale, error map), and [Molnar et al. 2023](molnar-2023-physics-informed-bos-supersonic.md) replaces the deflection–tomography–Poisson chain with a physics-informed network for shock-containing flows. Raffel's 2–3% full-scale accuracy and 50:1 dynamic range (p. 5) are consistent with Tan's 4–9% density errors once Abel inversion is added. Raffel lists Abel/Fourier inversion and filtered back-projection as the standard routes (p. 8–9); Molnar shows these struggle at shocks, which Raffel only notes qualitatively (blur and dropout at strong gradients, p. 5, 10). Edgington-Mitchell et al. used tomographic BOS to check the density field fed into global stability ([note](edgington-mitchell-2020-waves-in-screeching-jets.md)).
- **Setup choices for the lab's supersonic jets:** the Z_D/Z_A trade-off (eq. 3) and the blur budget (eq. 6–8) set sensitivity versus sharpness of shock cells and shear layers; keep total blur well below the interrogation window (p. 4). Expect blurring and data dropout at strong shocks (p. 5), where colour BOS or schlieren may do better (p. 10).
- **Data requirements by method:**
  - Mean density (Abel, Poisson, tomography) works on averaged, non-time-resolved image sets (p. 7–9); Tan et al. used 1000 independent images.
  - Time-resolved BOS needs high-speed CMOS cameras with short pulsed (LED or laser) illumination; kHz to 100 kHz is already demonstrated (p. 9), which covers screech and impinging-jet tones. Time-resolved BOS displacement fields can be fed straight into SPOD/BMD, and into the SPOD → reconstruction → Hilbert POD pipeline ([Raiola & Kriegseis 2025](raiola-2025-hilbert-pod.md)) to track intermittency and mode switching, as with schlieren. They are line-of-sight projections, so only axisymmetric (m = 0) mode shapes can be Abel-inverted; helical/flapping modes need tomography.
  - BOS velocimetry (correlating successive displacement fields, p. 10) gives structure convection speeds, which could give KH wavepacket or shock-cell oscillation phase speeds from time-resolved data without seeding, but not fluid velocity.
- **Non-axisymmetric and twin jets:** multi-camera tomographic BOS (p. 8–9) and stereo localisation (p. 6–7) are the routes for rectangular and twin-jet geometries (cf. [Esfahani et al. 2021](esfahani-2021-coupling-modes-twin-rectangular-jets.md), [Yeung et al. 2022](yeung-2022-3d-spod-twin-rectangular-jet.md)).
- **Rocket noise:** the outdoor variants (natural-background, reference-free, retroreflective; p. 9, 11–12) are the ones applicable at full-scale static firings or launches, alongside acoustic measurements such as [Gee et al. 2016](gee-2016-near-field-intensity-static-rocket-firings.md). Cited plume work: Orion jettison motors (Reinholtz et al. 2010) and rocket near-wakes (Wolf et al. 2012) (p. 6).
- **Modelling side:** none in the paper beyond the optical relations and tomographic formulae; it notes BOS's role is increasingly CFD validation (p. 14). Ray tracing through gradient-index media (Sharma et al. 1982; van Hinsberg & Rösgen 2014) is the route to forward-model BOS from LES or stability solutions for direct comparison (p. 3, 8).
