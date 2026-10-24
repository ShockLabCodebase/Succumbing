---
key: "settles-2017-recent-developments-schlieren-shadowgraph"
title: "A review of recent developments in schlieren and shadowgraph techniques"
authors: ["Settles, Gary S.", "Hargather, Michael J."]
year: 2017
type: "review"
venue: "Meas. Sci. Technol. 28, 042001"
bib: {"journal": "Measurement Science and Technology", "volume": "28", "pages": "042001", "note": "Topical review, 25 pp."}
doi: "10.1088/1361-6501/aa5748"
arxiv: ""
pdf: "schlieren-and-density-imaging/Settles-Hargather_2017_A-Review-Of-Recent-Developments-In-Schlieren-And-Shadowgraph-Techniques.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["schlieren", "schlieren-TR", "shadowgraph", "BOS", "full-scale", "LES", "synthetic"]
methods: ["optical-modelling", "calibration", "feature-tracking", "Abel-inversion", "tomography"]
flow: ["generic", "round-jet", "subsonic", "impinging-jet", "supersonic", "shock-tube", "wind-tunnel", "jet-aircraft"]
phenomena: ["shock-waves", "shock-cells"]
params: {"cameras": "CMOS ≤ 20 kfps at 1 Mpx, ≥ 1 Mfps segmented; 5–10 Mfps for 100–few hundred frames", "LED pulse": "down to ~100 ns", "BOS dots": "2–5 px", "velocimetry example": "propane jet d 0.75 mm, U_j 54.8 m/s, Re_d 7460, 3000 fps, Δt 1 ms"}
topics: ["schlieren-and-density-imaging", "diagnostics-and-facilities"]
related: ["raffel-2015-background-oriented-schlieren-review", "tan-2015-bos-density-axisymmetric-jets", "molnar-2023-physics-informed-bos-supersonic", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "karami-2020-acoustic-hydrodynamic-waves-underexpanded-impinging-jets", "powis-2016-impingement-tones-shock-instabilities-plug-nozzle", "rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet", "edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance", "mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren", "johnston-2016-underexpanded-jet-intrusive-tab-visualisation", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech"]
cites: ["raffel-2015-background-oriented-schlieren-review"]
summary: "Schlieren/shadowgraph since 2001: CMOS cameras, ≤100 ns LEDs, BOS practice, digital x–t streaks, path-biased schlieren velocimetry, calibrated and CFD schlieren"
---
# A review of recent developments in schlieren and shadowgraph techniques

- **Authors:** Gary S. Settles (FloViz Inc., Port Matilda, PA) and Michael J. Hargather (Mechanical Engineering, New Mexico Tech, Socorro, NM) (p. 1). Not Shock Lab group work. Settles runs FloViz, one of the three companies whose instruments are described in section 10 (p. 1, 19).
- **Source:** Measurement Science and Technology 28 (2017) 042001, 25 pp., Topical Review, doi:10.1088/1361-6501/aa5748. Received 9 March 2016, revised 22 December 2016, accepted 6 January 2017, published 15 February 2017 (p. 1). Partly drawn from two earlier conference papers: Settles 2010 (14th ISFV) and Hargather & Settles 2010 (AIAA 2010-4206) (p. 21).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/schlieren-and-density-imaging/Settles-Hargather_2017_A-Review-Of-Recent-Developments-In-Schlieren-And-Shadowgraph-Techniques.pdf` (index key `schlieren-and-density-imaging/Settles-Hargather_2017_A-Review-Of-Recent-Developments-In-Schlieren-And-Shadowgraph-Techniques.pdf`, 26 pp., publisher's version). PDF p. 1 is an IOP download cover sheet. **Page refs below are journal pages; PDF page = journal page + 1.** The text layer drops Greek letters and garbles eqs. 2–3 and the Fig. 12 ranges; these were read from rendered pages.
- **Tags:** schlieren, shadowgraph, review, digital imaging, high-speed CMOS cameras, DSLR, rolling shutter, pulsed LED, light sources, background-oriented schlieren (BOS), synthetic schlieren, temporal BOS, image subtraction, colour BOS, natural backgrounds, laser speckle, optical flow, cross-correlation, digital streak schlieren, x–t diagrams, shock tracking, slit-scan schlieren, SLES, schlieren velocimetry, path averaging, Abel transform, quantitative schlieren, calibration lens, rainbow schlieren, Gladstone–Dale, tomography, Zemax ray tracing, computed schlieren from CFD, measuring range vs sensitivity, retroreflective (Edgerton) shadowgraphy, focusing / projection schlieren, commercial instruments, MATLAB

## Summary
Settles and Hargather review what changed in schlieren and shadowgraphy in the 15 years after Settles' 2001 book, and argue that the change is mostly digital (p. 1). High-speed CMOS cameras replaced film, and pulsed LEDs replaced sparks and xenon lamps as the best incoherent source (p. 3–6). Background-oriented schlieren is called the most significant new technique; the review lists its advantages (cheap, huge fields of view) and its drawbacks (resolution set by the interrogation window, no live image, blur of the flow, non-parallel rays, vibration), and gives practice for backgrounds, cameras and software (p. 6–11). Laptop-scale image processing has also made new quantitative tools routine (p. 11–15):
- digital streak (x–t) images and automatic shock tracking;
- schlieren velocimetry, whose path-integrated velocities are biased low;
- density from calibrated grey-scale, rainbow and BOS images.

Two modelling sections cover ray-traced design of a schlieren system in Zemax and the rendering of CFD solutions as schlieren and shadowgrams, including a variable-range example on an impinging-jet LES (p. 15–18). The last sections cover retroreflective shadowgraphy for large fields and the few commercial instruments (p. 18–20). There is no error analysis of its own beyond the worked examples.

## Key findings
- **What the images measure** (p. 2–3, 6). Schlieren shows the first spatial derivative of n normal to the knife edge, and shadowgraphy the Laplacian. Both integrate along the optical path. A focused schlieren system cannot also make a shadowgram: that needs the knife edge removed and the camera defocused (p. 3). The knife edge is a half-plane spatial-frequency mask, so a schlieren system is a Fourier optical processor (p. 2).
- **Cameras** (p. 3–4):
  - CMOS high-speed cameras give megapixel images at up to 20 000 fps and segmented frames at 1 Mfps or more (Photron SA-Z and Phantom V2512 named). Shimadzu and Kirana cameras reach 5–10 Mfps but only for 100 to a few hundred frames, and need a hard-wired trigger (p. 3).
  - A rolling memory buffer removes most triggering problems for single events: stop recording on the bang (p. 3). Cameras cost US$20 000–200 000 (p. 3).
  - DSLRs are fine for stills, HD video and BOS, used fully manual with the aperture wide open to avoid vignetting the schlieren beam. Their rolling-shutter CMOS sensors respond poorly to 1 µs pulsed exposures; global-shutter scientific cameras are needed for that (p. 4).
- **LEDs** (p. 4–6):
  - The LED is "poised to become" the ideal incoherent source. It pulses repeatably down to about 100 ns, better and cheaper than any other source (p. 4–5).
  - Sparks are made obsolete by LEDs. Xenon tubes have a long pulse tail that confuses PIV and schlieren velocimetry (p. 5).
  - Willert et al. (2010) overdrove an LED at 200 A in short pulses; a later do-it-yourself pulsed source costs about US$125 (p. 5). The bonding wires can melt at high pulse currents (p. 5).
  - The Luminus CBT-120 (2.6 × 4.6 mm emitter, 800–2100 lm) is too large for shadowgraphy but suits schlieren (p. 5). This is the LED of the group's TR-schlieren rigs (see Relevance).
  - Emitter size sets shadowgram sharpness (1 mm or less); for schlieren choose the narrowest beam angle, matched to the mirror f-number, then the highest intensity (p. 4–5). LEDs are also the safest source for eyes (p. 6).
- **BOS advantages** (p. 6–7):
  - No precision optics. A candle-plume BOS image (camera 2.4 m from the candle, candle 0.6 m from the background) has a 0.5 m field, twice that of the mirror system of Fig. 2 at about the same overall length. A two-mirror 0.5 m system would be sharper and less noisy, but at orders of magnitude higher cost (p. 6).
  - Very large fields: aircraft in flight against the desert floor (NASA AirBOS) or the solar disc (CaKBOS: 11 km camera-to-object, a 100 m diameter field) (p. 6, 10–11).
  - Access through small ports to large slotted transonic test sections, up to 5 m across (p. 6–7).
- **BOS drawbacks** (p. 7–8):
  - Resolution is always below traditional schlieren because correlation averages over the interrogation window. Higher sensitivity needs larger windows and so costs resolution. The loss is worst at shocks (p. 7).
  - No live image: an FFT cross-correlation takes 30 s or more per megapixel pair on a laptop. Subtracting the tare image ("poor-man's BOS") runs in real time but is only qualitative (p. 7–8).
  - Background and flow cannot both be sharp. Blur must stay well below the window size; put the background at the far end and the flow at the near end of the depth of field (p. 8).
  - Non-parallel rays complicate quantitative work; a telecentric lens fixes this but removes the main advantage (p. 8).
  - Vibration between tare and flow-on images. Elsinga et al. warn that tunnel motion and vibration are inherent to supersonic wind tunnels; flight tests needed image registration (p. 8).
  - **Temporal BOS:** correlating two flow-on images 0.1 s apart instead of a tare shows only what changed (the turbulence, not the laminar plume). It must not be used for quantitative work, since only relative deflection is known (p. 8).
- **BOS practice** (p. 8–10):
  - Use random dots: regular patterns alias (p. 8). Dot size counts in pixels: 3–5 px (Raffel), 2–3 px better if attainable; Vinnichenko et al. also favour 2–3 px random dots (p. 9).
  - A wavelet-noise background did not respond well to blur in Vinnichenko et al.'s trials (p. 9).
  - Colour BOS gives up to 8 channels for blur at strong gradients. Retroreflective dots help in large tunnels, and continuous-gradient backgrounds avoid correlation altogether (p. 9).
  - Cameras: raw or TIFF output, megapixel resolution, telephoto lenses, high ISO and kW-range floodlights at f/22 or smaller (p. 9).
  - Software: cross-correlation codes resolve 0.1 px shifts. Choose the window just larger than the largest displacement (p. 10).
  - Optical flow (Lucas–Kanade, Horn–Schunck, Brox, total variation) gives better resolution than MatPIV-type correlation if its parameters are tuned and the illumination does not change. On balance the authors favour optical flow (p. 9–10).
- **Digital streak schlieren and shock tracking** (p. 11–12):
  - Stacking one pixel row from each frame gives an x–t diagram whose slopes are speeds (Katayama's idea). A ~1 g PETN/RDX streak shadowgram over ½ m and ¾ ms shows the primary shock decaying from Mach 8–9 to a sound wave (Fig. 6, p. 11).
  - The MATLAB recipe is a loop that copies the chosen row of frame i into row i of a new image (p. 11).
  - Shock tracking skips the streak image and locates the shock automatically in each frame (e.g. Timmerman et al. 2008's light–dark boundary detector) (p. 11).
  - Streak schlieren is also used on oscillating supersonic cavity flows (p. 11).
- **Schlieren velocimetry** (p. 12–14). Refractive eddies serve as seedless tracers for PIV-like correlation.
  - **Path integration** is the first limit. In the propane-jet example (d = 0.75 mm, U_j = 54.8 m/s, Re_d = 7460), the measured centreline speed follows the Abel-transformed Gaussian profile, about 46% of the true U_CL, and agrees with it only for 0.2 < x < 0.5 m (Fig. 8, p. 13).
  - **One Δt cannot cover the range.** Δt = 1 ms is too long near the exit and too short beyond 0.5 m, so a 2–3 decade velocity range needs several Δt (p. 13).
  - Focusing schlieren cuts the depth to about ±40 mm, but a narrower depth loses too much sensitivity. Some path averaging is unavoidable (p. 13).
  - **Intermittency of the seeding** is the second limit. A boundary-layer measurement failed for y/δ > 0.6, where the eddies become intermittent (p. 14).
  - Shadowgraphy gives crisper eddies without over-ranging, which helps correlation (p. 14).
  - **It tracks the fine-scale substructure**, not the large structures, which can move at speeds different from the local convective velocity (Thurow et al. 2008) (p. 14). It is "a work in progress" and a niche tool (p. 14).
- **Quantitative schlieren** (p. 14–15). Density used to need interferometry. Calibrated schlieren is simpler, free of coherent noise and less sensitive to vibration (p. 14).
  - **Grey-scale schlieren:** a weak lens of known focal length (10 m in Fig. 9) in the field of view maps intensity to refraction angle. Its focal length must exceed that of the schlieren optics and sets the sensitivity range (p. 14–15).
  - Then integrate to n and apply Gladstone–Dale. This needs a single gas of known k; a mixture needs a mixture k (p. 15).
  - **Rainbow schlieren** carries no more information than grey-scale. It can colour-code direction (four-quadrant) or magnitude (bulls-eye), but loses resolution to diffraction by the narrow colour bands (p. 15).
  - **BOS** is quantitative from the geometry alone. Because of the non-parallel rays, the optical axis must lie on the heated-plate surface, whereas in parallel-light z-type schlieren the object can sit anywhere (p. 15).
  - Multi-camera tomography (e.g. 20 lens-type schlieren systems) is the coming direction (p. 15).
- **Simulated optics** (p. 15–16). A Zemax model of a small z-type system:
  - Set-up: 54 mm f/21 mirrors at ±4°, a sub-millimetre source, 50% cut-off, a 25 mm sphere in air of n = 1.000293, and 50–100 million rays, a few minutes each on a laptop.
  - Results: Δn = 10⁻⁶ is barely visible, Δn = 10⁻⁴ is clear, and Δn = 10⁻³ grossly over-ranges. A knife edge 10 mm off focus gives an uneven background (Fig. 10). Zemax also predicts the slight astigmatism of the off-axis mirrors, with sagittal and tangential foci at different positions (p. 16).
- **CFD rendered as schlieren** (p. 16–18):
  - Numerical schlieren began with Yates (1992–93). Many CFD papers now show density gradients without saying why (p. 16).
  - The |∇ρ| "bright-field" image that CFD favours (after Quirk) is seldom used experimentally. The shadowgram shows vortex cores better than any schlieren view (Fig. 11, Hadjadj & Kudryavtsev 2005) (p. 17).
  - **Measuring range against sensitivity** (Fig. 12, Dauptain et al. 2010 impinging supersonic jet LES, p. 17–18):

    | Range | What is visible |
    |---|---|
    | 0 ≤ \|∇ρ\| ≤ 1000 kg m⁻⁴ | mainly the shocks |
    | 0–100 kg m⁻⁴ | shear layers and wall jet; the shocks over-range |
    | 0–10 kg m⁻⁴ | the impingement acoustics; everything inside the jet over-ranges |

    Experiments seldom vary the cut-off this way (p. 17–18).
- **Retroreflective (Edgerton) shadowgraphy** (p. 18–19):
  - Set-up: a point source, the object about halfway to a retroreflective screen, and a camera beside the source. 3M Scotchlite 7610 returns about 900 times the light of a diffuse white surface (p. 18). The field of view is about half the screen (p. 18).
  - Parallax: a rod mirror ahead of the lens removes the double image (p. 18).
  - Its images are low-contrast and need a contrast stretch or tare subtraction. An AK-47 example (1 µs frame, 3 × 3 m screen about 6 m behind) shows rich weak-shock detail after tare subtraction (Fig. 14, p. 19).
  - **Against BOS:** BOS is better for weak gradients, quantitative work and natural backgrounds. Shadowgraphy is better for shocks and thermal turbulence, and gives a live image (p. 19).
- **Commercial instruments** (p. 19–20): Aerolab (z-type, a 76 mm benchtop unit), FloViz (lens and mirror schlieren, retroreflective systems up to 3 × 3 m, a 250 mm single-mirror unit), and Spectabit (SLES; a slit-scan streak camera; projection focusing schlieren with a digitally adjusted source grid; SchlierenView software). Home-made instruments remain the rule (p. 19).
- **Conclusions** (p. 20–21):
  - BOS is not a general replacement for schlieren optics but has its own role.
  - Always record uncompressed raw/TIFF images and **always shoot tare images**.
  - CFD can be explored with schlieren principles (Figs. 11–12).
  - Outlook: pulsed white-light lasers, real-time BOS, cheaper high-speed cameras with larger buffers, compact MHz streak cameras and 3D-printed optics. Plenoptic cameras are flagged for tomographic BOS (p. 20–21).

## Setup / method
A review with worked examples, mostly from the authors' own set-ups (locations not stated):

| Example | Set-up (page) | Data type |
|---|---|---|
| Colour schlieren of a candle plume (Fig. 2) | FloViz 250 mm single-mirror "Foucault" system, tricolour LED (472/525/630 nm) and adjustable-slit cut-off; the slit passes the red emitter and blocks most blue and green (p. 5, 19) | single image |
| BOS candle plume, four processing routes (Fig. 3) | Photron Mini UX100, camera–candle 2.4 m, candle–background 0.6 m, commercial correlation software; (a) tare correlation, (b) two flow-on frames 0.1 s apart, (c)–(d) subtraction, (e) shadowgram (p. 6–8, 10) | stills / video |
| BOS of a rifle bullet's wake (Fig. 5) | Photron SA-5 at 30 000 fps, 1 µs exposure, 800 mm lens, posterboard background (p. 11) | TR |
| Streak shadowgram of a ~1 g charge (Fig. 6) | Biss & Settles 2010 (p. 11) | TR, x–t |
| Schlieren velocimetry of a propane jet (Fig. 8) | 1 m single-mirror system with a 5 mm graded filter instead of a knife edge, for range; Photron Fastcam at 3000 fps, megapixel, 33 µs exposure; five pairs with Δt = 1 ms taken at random from several thousand frames; commercial materials-testing image-correlation code (p. 12–13) | TR pairs |
| Calibrated grey-scale, rainbow and BOS of a free-convection plate (Fig. 9) | Hargather & Settles 2012; 10 m focal-length calibration lens (p. 14–15) | stills |
| Zemax z-type model (Fig. 10) | 54 mm f/21 spherical mirrors, ±4° off-axis, horizontal knife edge at 50%, 25 mm sphere, 1 Mpx images from 50 M or 100 M rays; ray tracing only, **no diffraction** (p. 15–16) | synthetic |
| CFD renderings (Figs. 11–12) | Hadjadj & Kudryavtsev 2005 (supersonic jet exit) and Dauptain et al. 2010 (LES of a supersonic jet impinging on a flat plate) (p. 17) | CFD |
| Retroreflective shadowgrams (Figs. 13–14) | FloViz laboratory system, 3 × 3 m screen, rod mirror, Photron Fastcam with 1 µs frames (p. 18–19) | TR |

**What each processing route needs:**
- *Tare-referenced BOS* (cross-correlation or optical flow): no time resolution. Each image is processed against a tare image, so single shots or uncorrelated ensembles work. Parameters: dot size in pixels, window size (just above the largest displacement), and the S–B distance (sensitivity against blur) (p. 8–10).
- *Temporal BOS and frame-to-frame subtraction:* need two frames close in time. The gap must be short but not so short that it freezes the turbulence. The output is qualitative only (p. 8, 10).
- *Digital streak / x–t diagrams and shock tracking:* need a TR sequence at a frame rate that resolves the motion along the chosen row. The result is a space–time map or a position time series (p. 11).
- *Schlieren velocimetry:* needs image pairs at a set Δt (double-pulsed LED or TR camera), not long records. Δt must suit the local speed, and the result is path-averaged (p. 6, 12–14).
- *Quantitative density* (calibrated schlieren, rainbow schlieren, BOS): single images plus a calibration (lens or geometry). Then integrate the gradient and apply Gladstone–Dale. Axisymmetric objects need Abel inversion, and fully 3D ones need multi-view tomography (p. 6, 14–15).

**Modelling and simulation side.**
- *Optical theory* is geometrical optics with diffraction as a correction (p. 3). Eq. 2 assumes small deflections and, for its simplified form, a 2D object with a gradient constant along a path length Z (p. 6).
- *Zemax* traces rays through mirrors and a spherical phase object with no diffraction. The grainy background from finite ray counts falls from 50 M to 100 M rays (p. 16). The refraction theory of the sphere is Weinstein's (p. 16). The model is a design tool: it predicts over-ranging, background non-uniformity from a misplaced knife edge, and astigmatism. The software can also output a parts list and cost (p. 16).
- *CFD rendering* turns a computed density field into derivative images that mimic each instrument (Figs. 11–12). The paper does not state the line-of-sight integration or knife-edge model used by Hadjadj & Kudryavtsev or Dauptain et al. Fig. 12 is a saturation (range) sweep on |∇ρ| (p. 17).
- *Validation:* computed and experimental schlieren at the same conditions are compared to check the computation, the experiment or both. No quantitative metric is described (p. 16).

## Key equations
Read from the rendered pages.

- **Gladstone–Dale** (eq. 1, p. 3): $n - 1 = k\rho$, k constant for a given gas.
- **Deflection angle** (eq. 2, p. 6): $\varepsilon_y = \dfrac{1}{n}\displaystyle\int \dfrac{\partial n}{\partial y}\,dz = \dfrac{Z}{n_\infty}\dfrac{\partial n}{\partial y}$. The second form holds for a planar 2D object of length Z along the optical axis z, with the gradient constant along the path. The same ε_y sets the grey level in a knife-edge schlieren image and the BOS displacement Δy (p. 6).
- **Round-jet centreline decay** (eq. 3, p. 13, "based on" Pope 2000, eq. 5.6): $\dfrac{U_{CL}(y)}{U_j} \propto \dfrac{d}{y}$.

> **To verify against the PDF.**
> - Eq. 3 is printed with y as the axial coordinate, while the text and Fig. 8 use x. It is a proportionality; the constant used for the dashed line of Fig. 8 is not given.
> - With Pope's B ≈ 5.8 (my recollection, not stated in the paper), U_CL = 5.8 × 54.8 × 0.75 mm / x gives 1.2 m s⁻¹ at x = 0.2 m and 0.30 m s⁻¹ at 0.8 m, close to the dashed curve read from Fig. 8 (my check).
> - Eq. 3 uses the nozzle d, not a density-weighted effective diameter for the heavier propane. Using d√(ρ_j/ρ_∞) would raise the line by about 20% (my estimate; the paper does not discuss it).
> - The 46% path-averaging factor (p. 13) comes from an Abel transform of a Gaussian mean-velocity profile, but the weighting along the path and the integration length are not given, so it cannot be rebuilt from the paper.
> - Re_d = 7460 implies ν ≈ 5.5 × 10⁻⁶ m² s⁻¹, of the order of propane's kinematic viscosity rather than air's, so it is presumably based on the jet gas (my arithmetic).
>
> **Scale checks (my arithmetic).**
> - CaKBOS: 11 km × tan(0.5°) ≈ 96 m, matching the stated field of about 100 m diameter for a ½° solar disc (p. 10–11).
> - Zemax: f = 54 mm × 21 ≈ 1.13 m. A 0.5 mm source at 50% cut-off (source size assumed; the paper says only "sub-millimeter") gives a linear range of about 0.25 mm / 1.13 m ≈ 2 × 10⁻⁴ rad. Deflections of order Δn (10⁻⁶, 10⁻⁴, 10⁻³) therefore fall well inside, near the limit of, and far beyond the range, as Figs. 10(a)–(c) show.

## Data tables
None worth reusing beyond the parameter lists above.

## Figures worth remembering
- **Fig. 1 (p. 2):** the five instruments discussed: Toepler lens schlieren, z-type mirror schlieren, direct shadowgraphy, BOS, and lens-and-grid focusing schlieren.
- **Fig. 3 (p. 7):** one candle plume processed five ways: tare-correlated BOS, temporal BOS (turbulence only), tare subtraction, frame subtraction, and a shadowgram. The quickest visual guide to what each BOS route shows.
- **Fig. 4 (p. 7):** NASA AirBOS of a transonic T-38 against the desert floor, and CaKBOS against the sun.
- **Fig. 6 (p. 12):** digital streak shadowgram of a ~1 g charge, with primary and secondary shocks and the combustion-products boundary.
- **Fig. 7 (p. 13):** SLES of a 737 take-off: jet exhaust and landing-gear wakes.
- **Fig. 8 (p. 13):** schlieren-velocimetry centreline speeds of a propane jet against the similarity law and its Abel-transformed (path-averaged) version.
- **Fig. 9 (p. 14):** calibrated grey-scale, rainbow and BOS images of the same free-convection plate with a calibration lens.
- **Fig. 10 (p. 16):** Zemax schlieren images of a sphere at Δn = 10⁻⁶, 10⁻⁴, 10⁻³ and with a defocused knife edge.
- **Fig. 11 (p. 17):** one supersonic jet-exit CFD solution rendered as bright-field, vertical-edge, horizontal-edge schlieren and shadowgraph.
- **Fig. 12 (p. 17):** impinging supersonic jet LES rendered at three |∇ρ| ranges, from shocks only to impingement acoustics only.
- **Fig. 14 (p. 19):** retroreflective shadowgram of a rifle shot before and after tare subtraction.

## Notation
- n, n_∞: refractive index and its ambient value; k: Gladstone–Dale constant; ρ: density.
- ε_x, ε_y: refraction (deflection) angles; Δy: BOS image displacement; Z: path length of a 2D object; S, B: schlieren object and background.
- LS, L1/L2, PM1/PM2, KE, C, SC: light source, lenses, parabolic mirrors, knife edge, camera, screen; SG, CG, FL, SL, RL: source grid, cutoff grid, Fresnel lens, schlieren lens and relay lens of focusing schlieren (Fig. 1).
- U_CL, U_j, d, Re_d: jet centreline velocity, exit velocity, nozzle diameter and Reynolds number; Δt: image-pair separation; δ: boundary-layer thickness.
- CBOS: colour BOS; CaKBOS (also BOSCO): calcium-K-line BOS against the sun; SLES: synthetic limb-edge schlieren.

## Relevance to this project
TR schlieren is the lab's main diagnostic (CLAUDE.md), and this review is the standard practical reference for the instrument behind it. It sits beside [Raffel 2015](raffel-2015-background-oriented-schlieren-review.md), which covers BOS in more depth. The two agree on BOS dot size (3–5 px, 2–3 px better), on blur kept below the window, and on optical flow as an accuracy gain (Raffel p. 4–6; here p. 8–10). Settles and Hargather add the schlieren and shadowgraph side, the imaging hardware and the CFD rendering, which Raffel leaves out.

**How it sits with the group's practice**
- **Light source.** The group's TR-schlieren rigs use overdriven, pulsed Luminus/Phlatlight CBT-120 LEDs:
  - [Mitchell et al. 2012](mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren.md), [Johnston & Edgington-Mitchell 2016](johnston-2016-underexpanded-jet-intrusive-tab-visualisation.md) and [Berry et al. 2017](berry-2017-pod-time-resolved-schlieren-multi-stream-rectangular-jet.md) name the LED;
  - pulses of 0.5–1 µs are used in [Mazharmanesh et al. 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) and [Rezay Haghdoost et al. 2020](rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet.md).
  - The review's ref. 18, which assesses exactly this LED for high-frame-rate schlieren, is the group's own Willert, Mitchell & Soria 2012 (Exp. Fluids 53; PDF held, not yet indexed).
  - The review confirms the choice: suitable for schlieren, too large for shadowgraphy (p. 5), and pulses to about 100 ns are possible (p. 5).
- **Shadowgraph from a schlieren rig.** The rule that a shadowgram needs the knife edge removed *and* the camera defocused (p. 3) is what [Edgington-Mitchell et al. 2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md) did (p. 7). The review adds that the shadowgram resolves vortex cores and shocks better (p. 17, 19).
- **Digital streak (x–t) images** are already a group tool:
  - [Knast et al. 2018](knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md) built x–t diagrams from 102-frame bursts and took U_c/U_j ≈ 0.58 from Hough-transform slopes (p. 10).
  - [Karami et al. 2020](karami-2020-acoustic-hydrodynamic-waves-underexpanded-impinging-jets.md) do the same on LES density.
  - Shock tracking as reviewed here (p. 11) is what [Powis et al. 2016](powis-2016-impingement-tones-shock-instabilities-plug-nozzle.md) did by edge detection.
- **Convection speed: a caution.** Correlating schlieren eddies picks up the fine-scale substructure rather than the large structures, which can travel at a different speed (Thurow et al. 2008, Phys. Fluids 20; p. 14). It is also path-averaged: about 46% of the centreline speed in the round-jet example (p. 13). Schlieren-based U_c for KH wavepackets (Knast et al. 2018; the wavenumber-based U_c of [Mercier et al. 2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md), p. 212) is therefore a line-of-sight-weighted phase speed, not the local fluid velocity. The bias is probably smaller for phase speeds taken at a tone from coherent wavepackets than for broadband correlation, but the paper does not test that (my inference).
- **Tension with the group's BOS recipe.** [Tan et al. 2015](tan-2015-bos-density-axisymmetric-jets.md) used a wavelet-noise background (Atcheson et al. 2009). The review reports that such backgrounds responded poorly to flow-induced blur in Vinnichenko et al.'s trials and recommends 2–3 px random dots (p. 9). Tan et al.'s 4–9% density errors, measured in helium jets without shocks, may not carry over to shock-containing jets, where blur is worst (p. 7). That is my link; neither paper compares the two backgrounds directly.
- **Quantitative density.** The review's routes (calibrated schlieren, rainbow schlieren, BOS) are the single-image, mean-field counterparts of the BOS–Abel and physics-informed routes on the topic page ([Molnar et al. 2023](molnar-2023-physics-informed-bos-supersonic.md)). All rest on Gladstone–Dale for one known gas (p. 15), which is fine for the lab's cold air jets but not for helium or heated mixtures.

**An answer to an open question on the topic page.** The page asks whether schlieren amplitudes can be compared across cases. The review's calibration lens (p. 14–15) is a cheap route that the group does not use: a long-focal-length lens in a corner of the field converts intensity to refraction angle ε. SPOD eigenvalues, POD energies and HPOD amplitudes from TR schlieren would then be in rad (a path-integrated ∂n/∂x) and comparable across set-ups, knife-edge settings and cut-offs (my proposal).
- **Caveats:**
  - The lens calibration holds only within the linear range of the cut-off. Shocks often over-range it (p. 13, 17), so record a lens image per set-up and per cut-off.
  - It does not remove path integration or view dependence.
  - A graded filter in place of the knife edge extends the range, at lower sensitivity (p. 13).

**Measuring range is a choice, not a fixed setting.** Fig. 12 (p. 17) shows that shocks, shear layers and acoustics need sensitivities a decade apart. This is the sensitivity–range trade the group's papers mention for screech (Johnston & Edgington-Mitchell 2016, p. 52). For SPOD or BMD of the acoustic field, a high-sensitivity run that over-ranges the shock cells is legitimate, but over-ranged pixels are clipped. Clipping makes the intensity nonlinear and adds spurious harmonics and triads, so mask or flag saturated pixels before BMD (my inference).

**Modelling side and the PyFR staging LES**
- Write the LES output in the experiment's own terms: ∫∂ρ/∂x dz (the knife edge normal to the axis) and ∫∇²ρ dz (shadowgraph), not the |∇ρ| "bright-field" view that the review notes experiments seldom use (p. 17).
- Render it at several ranges (a Fig. 12-style sweep), with clipping at the experiment's calibrated range, so that like is compared with like with the axisymmetric A1/A2 schlieren of Mazharmanesh et al. 2026.
- A ray-traced forward model (Zemax-type, p. 15–16; Molnar et al. 2023's synthetic BOS) is the step that makes such a comparison quantitative rather than by eye. Its stated limits are geometrical optics only, with no diffraction.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Need time resolution:** x–t (streak) diagrams, shock tracking, temporal BOS and frame-differencing, and the TR-schlieren SPOD/BMD that feeds the SPOD → reconstruction → HPOD pipeline.
  - x–t diagrams are a cheap check on that pipeline: an x–t diagram of the SPOD-rebuilt field along the lip line should show one phase speed per selected mode, and a 2D FFT of it gives the St–k_x content.
  - Feature tracking on the raw images (shock position against time) gives an independent amplitude and phase time series to set against the HPOD output. Mode switching or intermittency should show in both.
- **Pairs only:** schlieren velocimetry needs pairs at a chosen Δt, double-pulsed, not long records (p. 6). Its 2–3 decade dynamic-range problem means one Δt per region (p. 13).
- **No time resolution needed:** quantitative density from calibrated schlieren or BOS, means and RMS, Abel inversion of averaged data, and tomography. These are suited to non-TR ensembles, as with PIV.
- **Practice to adopt:** always record a no-flow tare and uncompressed images (p. 20–21). The tare gives window and background non-uniformity separately from the flow mean that SPOD subtracts. It is a cleaner reference than POD-based drift removal for steady artefacts (cf. Berry et al. 2017).
- The turbulent intermittency that starves schlieren velocimetry at a boundary-layer edge (p. 14) is a seeding issue, not resonance intermittency. The review does not discuss mode switching or time–frequency methods.

**Rocket noise.** Large-field methods are the ones that scale to static firings and launches: natural-background BOS (AirBOS), solar-limb and CaK-line BOS, SLES and retroreflective shadowgraphy (p. 6–7, 10–12, 18). Shocks from explosions are routine targets (p. 11, 18–19), and the Orion launch-abort jettison-motor BOS (Reinholtz et al. 2010) is cited (p. 6). Imaging of Mach wave radiation or near-field shocks at full scale is not shown here, so whether it is feasible remains open (my comment).

**Related works cited, candidates for `/add-paper`:**
- Settles 2001 (*Schlieren and Shadowgraph Techniques*, Springer, the base reference).
- Willert, Mitchell & Soria 2012 (Exp. Fluids 53, 413–421; group LED paper; PDF held, not yet indexed); Willert et al. 2010 (MST 21, 075402).
- Jonassen, Settles & Tronosky 2006 (Opt. Lasers Eng. 44, schlieren "PIV"); Hargather et al. 2011 (AIAA J 49, seedless schlieren velocimetry); Hargather & Settles 2012 (Opt. Lasers Eng. 50, three quantitative schlieren techniques).
- Thurow et al. 2008 (Phys. Fluids 20, 066101, convective velocity of large structures); Doty & McLaughlin 2005 (Exp. Fluids 38, space–time correlations of high-speed jets by optical deflectometry); Garg & Settles 1998 and Garg & Cattafesta 2001 (focusing / quantitative schlieren of coherent structures).
- Dauptain, Cuenot & Gicquel 2010 (AIAA J 48, LES of an impinging supersonic jet); Hadjadj & Kudryavtsev 2005 (J. Turbul. 6); Yates 1993 (AIAA J 31, images from computed flowfields).
- Timmerman et al. 2008 (Opt. Eng. 47, automated shock tracking); Weinstein 2010 (Eur. Phys. J. Spec. Top. 182, lens-and-grid and motion-camera schlieren); Kleine 2010 and Versluis 2013 (time-resolved and high-speed imaging reviews).
- Atcheson et al. 2009 (Exp. Fluids 46, optical flow for BOS); Vinnichenko et al. 2012 (BOS background patterns); Elsinga et al. 2004 (Exp. Fluids 36, calibrated colour schlieren and BOS).
