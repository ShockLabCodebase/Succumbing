---
key: "mayer-2019-bristol-aeroacoustic-wind-tunnel"
title: "Design and performance of an aeroacoustic wind tunnel facility at the University of Bristol"
authors: ["Mayer, Y. D.", "Kamliya Jawahar, H.", "Szőke, M.", "Showkat Ali, S. A.", "Azarpeyvand, M."]
year: 2019
type: "article"
venue: "Appl. Acoust. 155, 358–370"
bib: {"journal": "Applied Acoustics", "volume": "155", "pages": "358--370"}
doi: "10.1016/j.apacoust.2019.06.005"
arxiv: ""
pdf: "diagnostics-and-facilities/Mayer-EtAl_2019_Design-And-Performance-Of-An-Aeroacoustic-Wind-Tunnel-Facility-At-The-University.pdf"
version: "published"
unverified: []
group: false
facility: "University of Bristol aeroacoustic wind tunnel"
data: ["hot-wire", "microphones-far", "RANS"]
methods: ["facility-design", "statistics", "PSD", "coherence", "empirical-model"]
flow: ["wind-tunnel", "subsonic", "airfoil"]
phenomena: ["mixing-noise", "vortex-shedding"]
params: {"U": "≤120 m/s (Nozzle 1), ≤40 m/s (Nozzle 2)", "nozzle exit": "600 × 200 mm, 500 × 775 mm", "TI": "0.09%, 0.12%", "anechoic cut-off": "160 Hz"}
topics: ["diagnostics-and-facilities"]
related: ["rolandi-2025-biglobal-resolvent-naca0012", "kerechanin-2001-trailing-edge-rectangular-jet-acoustics"]
cites: []
summary: "Bristol closed-circuit open-jet anechoic tunnel (160 Hz cut-off, ≤120 m/s, TI 0.09%): Su contraction, silencers, jet-noise background, plate, cylinder and NACA 0012 benchmarks"
---
# Design and performance of an aeroacoustic wind tunnel facility at the University of Bristol

- **Authors:** Y. D. Mayer, H. Kamliya Jawahar, M. Szőke, S. A. Showkat Ali, M. Azarpeyvand (corresponding author); all at the University of Bristol
- **Source:** Applied Acoustics 155 (2019) 358–370; doi:10.1016/j.apacoust.2019.06.005. Received 19 Feb 2019, accepted 3 Jun 2019. A preliminary version appeared as AIAA 2018-3138 at the 2018 AIAA/CEAS Aeroacoustics Conference (p. 1; ref. [1], p. 13).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/diagnostics-and-facilities/Mayer-EtAl_2019_Design-And-Performance-Of-An-Aeroacoustic-Wind-Tunnel-Facility-At-The-University.pdf` (13 pp.). Page refs below are PDF pages, and journal page = PDF page + 357. The Read tool reports this PDF as password-protected, so use `pdftotext -layout`, or render pages with `pdftoppm` to see the figures and tables.
- **Tags:** aeroacoustic wind tunnel, anechoic chamber, open-jet test section, facility design, contraction nozzle design, splitter silencers, rectangular nozzle, hot-wire, turbulence intensity, background (jet) noise, far-field microphone arc, coherence, velocity scaling exponent, trailing-edge noise, cylinder vortex-shedding tone, NACA 0012, BPM model, RANS k–ω SST (OpenFOAM)

## Summary
The paper describes the design and commissioning of the University of Bristol's aeroacoustic facility. It is a temperature-controlled, closed-circuit wind tunnel whose open-jet test section sits inside an anechoic chamber that is certified anechoic down to 160 Hz. Four splitter silencers and lined ducts attenuate the noise from the centrifugal fan. Two interchangeable rectangular nozzles share a common first contraction section: 600 × 200 mm (up to 120 m/s) and 500 × 775 mm (up to 40 m/s). The contractions were designed with Su's two-polynomial method and checked with steady RANS (k–ω SST) in OpenFOAM. Hot-wire measurements give top-hat exit profiles with turbulence intensities of 0.09% and 0.12%. Far-field microphones show that the background noise is jet-mixing noise (velocity exponent above 7), is not contaminated by the fan (coherence below 0.05), and is at or below that of other university facilities once scaled. Three benchmarks (a tripped flat plate, a cylinder and a tripped NACA 0012 airfoil) sit clearly above the background. The airfoil spectra match the Brooks et al. (1989) data and the BPM model at mid and high frequencies.

## Key findings
- **Headline performance** (abstract, p. 1):
  - The chamber is anechoic down to 160 Hz.
  - Free-stream turbulence intensity (TI) is 0.09% for Nozzle 1 and 0.12% for Nozzle 2.
  - Maximum speeds are 120 m/s for Nozzle 1 and 40 m/s for Nozzle 2. These correspond to Re per metre of 8.1×10⁶ and 2.7×10⁶. Check: these values imply ν ≈ 1.48×10⁻⁵ m²/s. 120 m/s is about Mach 0.35 (my estimate).
- **Chamber qualification** (p. 4):
  - The chamber passed the ISO 26101 free-field qualification. It is anechoic down to 160 Hz under ISO 3745 for both pure-tone and broadband tests, for characteristic source sizes of 0.65 m or less.
  - The empty-chamber background noise is equivalent to noise rating NR8.
  - The measured wall transmission loss exceeds the manufacturer's prediction in every band from 125 Hz up. For example, at 4 kHz it is 64 dB against 51 dB predicted (Table 5, p. 5).
- **Exit flow from CFD** (p. 8): steady RANS predicts the exit velocity is uniform over at least 93% (Y) and 97% (Z) of the Nozzle 1 extent, and over 97% (Y) and 96% (Z) of the Nozzle 2 extent. There is no separation in either contraction (Fig. 8).
- **Exit flow from the hot-wire**, all at U∞ = 30 m/s:
  - **Nozzle 1 velocity** (p. 8): the profiles are top-hat near the exit and become Gaussian downstream. At X/D_h = 2.8 the constant-velocity region still covers 75% of the horizontal extent and 40% of the vertical extent. The authors conclude the potential core is longer than 3 D_h, with D_h = 300 mm. Note that the measurements only go to X/D_h = 2.8.
  - **Nozzle 1 TI** (p. 9): as low as 0.09%. TI rises downstream as the shear layers grow.
  - **Nozzle 2 velocity** (p. 9): at X/D_h = 1.4 the velocity is constant over 77.5% of the horizontal and 80% of the vertical extent. The potential core is "well in excess" of 1.5 D_h, with D_h = 608 mm.
  - **Nozzle 2 TI** (p. 10): 0.12%, almost constant over 90% of the horizontal extent at X/D_h = 0.1.
- **Background (jet) noise from Nozzle 1** (p. 10):
  - Noise rises with speed at all frequencies.
  - Up to 25 m/s, the high-frequency background reaches the chamber noise floor, which is about −9 dB in the narrowband spectra (8 Hz bins).
- **Fan contamination check** (p. 10): the coherence between a microphone near the fan and motor and one in the chamber above the nozzle is below 0.05. This holds for 10–70 m/s and 160 Hz–20 kHz, so there is essentially no contamination from external sources.
- **Velocity scaling** (p. 10, Fig. 14):
  - The background-noise exponent N(f) is above 7 at both θ = 45° and 90°. N is the mean over U₁ = 30–65 m/s against U₂ = 70 m/s.
  - This is close to the U⁸ expected for quadrupole jet-mixing noise and follows the same trend as Chong et al. (2009).
- **Scaled A-weighted OASPL** (p. 11, Fig. 15):
  - Bristol matches or is slightly below the other university tunnels at θ = 45° and 90°, except at 10 m/s. The other tunnels are Southampton, Brandenburg, Adelaide and Florida; their data are taken from refs. [19, 20].
  - From 30 m/s up, the scaled OASPL is linear in log U.
  - Below 30 m/s the trend is nonlinear. The authors suggest this is because the high-frequency jet noise reaches the chamber floor.
- **Flat plate benchmark** (p. 11–12, Fig. 16):
  - Trailing-edge noise is about 10 dB above the background at low frequencies, and the margin shrinks at higher frequencies.
  - The scaling factor is N ≈ 6 across the whole band (U₁ = 30, U₂ = 40 m/s). The authors read this as confirming that turbulent-boundary-layer trailing-edge noise is the dominant source.
- **Cylinder benchmark** (p. 11, Fig. 17):
  - The cylinder noise is well above the background across the whole band.
  - There is a vortex-shedding tone at St_d ≈ 0.2, attributed to the fluctuating lift.
  - A second tone at St_d ≈ 0.4 is attributed to the fluctuating drag (ref. [41]).
- **NACA 0012 benchmark** (p. 11–12, Fig. 18):
  - The airfoil noise is more than 10 dB above the background at all speeds.
  - It agrees with Brooks et al.'s data, corrected for span and distance.
  - It matches BPM at mid and high frequencies.
  - At low frequencies the measured noise exceeds BPM. Other facilities have reported the same mismatch, and it is attributed to low-frequency amplification of jet noise when an airfoil sits in the flow (refs. [19–21, 45]).
- **Intended uses** (p. 12): airfoil noise, bluff-body noise and "instability noise" studies. Removing the in-chamber components gives a fully anechoic chamber (p. 5).

## Setup / method

### Facility layout (p. 2–3, Figs. 1–3)
- **Footprint:** the facility had to fit an existing space of 16.6 × 6.8 × 4.6 m (L × W × H) (p. 2).
- **Circuit:** the circuit runs as follows.
  1. Direct-drive centrifugal fan (A).
  2. Forward-leg silencers (B, C).
  3. Lined duct (D).
  4. Settling chamber (E).
  5. Contraction nozzle (F).
  6. Open jet in the anechoic chamber (G).
  7. Bell-mouth collector (H).
  8. Return-leg silencers (I, J).
  9. Heat exchanger (K), then back to the fan (p. 2; Fig. 2, p. 3).
- **Turning vanes:** all corners have turning vanes with a 192 mm chord, made from 1.5 mm rolled mild steel with chamfered edges. The ductwork is airtight to avoid leakage noise (p. 2).
- **Control:** closed-loop feedback sets and holds the velocity, using the pressure drop across the contraction as input (p. 3). The same applies to temperature, settable over 10–30 °C (p. 3). Control panels are in the chamber and in a separate control room (L).

### Fan and heat exchanger (p. 2–3, Tables 1–2)
- **Fan:** a direct-drive Ferrari FQ1121/N4A centrifugal fan (single inlet and outlet, up to 55 kW).
  - It sits about 6 m from the chamber, in an acoustically isolated room, on anti-vibration mounts. Two thick high-TL walls separate the fan room from the chamber.
  - It runs stably from 1.5 m³/s up to each nozzle's design point.
  - Nozzle 2 sets the fan specification: 15.3 m³/s and more than 3000 Pa.
- **Heat exchanger:** finned-tube with chilled water, removing up to 50 kW (p. 3).

### Silencers (p. 4)
- **Design basis:** the silencers are sized on *dynamic insertion loss*, which includes regenerated flow self-noise. The predictions use the manufacturer's experimental data for each silencer's face velocity and flow direction.
- **Splitter construction:** aerodynamically shaped solid leading and trailing edges made from 1.5 mm galvanised perforated steel. Between the edges, perforated galvanised steel is filled with compressed acoustic-grade mineral wool.
- **Forward leg (B, C):** each silencer is 2800 × 920 × 1710 mm (L × W × H).
  - Each has two 120 mm top and bottom modules and two 300 mm central splitters, giving three 290 mm airways.
  - The perforations are 3 mm holes at 5 mm pitch.
  - Splitter C2 has a symmetric-airfoil leading edge.
  - A plain-weave mesh screen ahead of guide vanes GV2 reduces their leading-edge noise. The top of duct D is lined in the same way.
- **Return leg:**
  - The collector inlet is 2.3 m wide × 1.9 m high and lined with foam. It is sized to capture the spreading jet and downward-deflected flow.
  - Silencer I is 3500 × 1800 × 1350 mm, with two 150 mm side modules and two 300 mm central modules.
  - Silencer J is 2900 × 1200 × 1200 mm, with two 150 mm side modules and one 300 mm central splitter.
  - Both have vertical splitters with 300 mm airways.

### Anechoic chamber and microphone arc (p. 4–5)
- **Chamber:** external size 7.9 × 5.0 × 4.6 m; airtight walls four inches thick.
  - The wedges have 300 × 300 mm bases. Ceiling wedges are 800 mm long and all others 340 mm.
  - Tip-to-tip internal size is 6.7 × 4.0 × 3.3 m.
  - The floor is an open-mesh, raised plastic-fibreglass grating.
  - Exposed duct surfaces (E, F) are acoustically lined. External contraction and settling-chamber surfaces have 10 cm absorbing foam (p. 5).
  - Transmission loss was tested to ISO 140-4 (p. 4).
- **Microphone arc** (p. 5):
  - 1/4" GRAS 40PL microphones with a 32–150 dB(A) dynamic range and a flat response from 10 Hz to 20 kHz.
  - Arc radius is 1.75 m, spanning 125° at 2.5° spacing. That allows up to 51 microphones (125/2.5 + 1 = 51 ✓) covering θ = 25°–150°.
  - θ = 0° points downstream and θ = 90° is directly above the jet (p. 10).
  - The arc's focal point can be moved along the nozzle axis. The jet does not impinge on the microphones.

### Settling chamber (p. 6)
- **Size and access:** 1.8 × 1.8 m cross-section. Two inspection hatches upstream give duct access and an entry point for **PIV seeding**.
- **Flow conditioning sequence:**
  1. Screen 1: plain weave, 1 mm opening, 0.5 mm stainless wire.
  2. Honeycomb: 80 mm thick steel, hexagonal cells with 5.5 mm side length.
  3. Screens 2 and 3: plain weave, described as having "a mesh opening of 1.95 mm and 0.58 mm".
- **Lining:** the walls are lined with the same perforated steel and mineral wool as the silencers.

> The wording for screens 2–3 is ambiguous. It most likely means a 1.95 mm opening and 0.58 mm wire, by analogy with screen 1. Check p. 6.

### Contraction design (theory; p. 6–7)
- **Method:** Morel's (1975) method joins two polynomials at a match point. Su (1991) extended it to rectangular sections, with separate height and width profiles H(X) and B(X); see eqs. 1–4.
- **Contour powers:** Su used a common contour power (n₁ = n₂). Here the aft polynomial has the higher power (n₂ = 5 against n₁ = 3), which improves exit uniformity (citing Su).
  - Unequal powers leave a slope discontinuity at the match point. A third-order spline bridges the two polynomials, and its extent is chosen so the gradients match at both ends.
- **Shared section:** both nozzles share a 1 m common first section, with the two first polynomials averaged. The overall length is L = 2.0 m.
- **Inlet and contraction ratios:** the inlet is 1.8 × 1.8 m. The contraction ratios are 27.0:1 for Nozzle 1 and 8.4:1 for Nozzle 2. Check: 3.24/0.12 = 27.0 ✓ and 3.24/0.3875 = 8.36 ✓.
- **Geometry:** Table 6 (p. 7) gives the parameters.
  - Nozzle 1 is 600 mm wide × 200 mm high.
  - Nozzle 2 is 500 mm wide × 775 mm high (Fig. 6, p. 7).
  - The coordinate origin is at the centre of the nozzle exit plane.
  - Nozzle 2 has the lower blockage and is meant for high-lift devices, high angles of attack and bluff bodies. Nozzle 1 is faster and suits airfoils at low angles of attack, flat plates and boundary-layer noise studies (p. 5).
  - Angle brackets welded around each nozzle exit are used to mount models (p. 5).

### CFD of the contractions (modelling side; p. 6–8)
- **Model:** 3-D **steady RANS, k–ω SST**, in OpenFOAM.
- **Grid:** about 4.7×10⁶ structured cells, with **wall functions** and an average y⁺ ≈ 30 on the nozzle walls.
- **Conditions:** exit velocities of 60 m/s (Nozzle 1) and 40 m/s (Nozzle 2). Inlet TI was set to 5% to test whether the contraction suppresses fluctuations and avoids separation.
- **Outputs:**
  - Near-wall profiles at X/L = −0.2, −0.1 and 0 (Fig. 7, p. 7). The figures put the origin at the exit, so X/L runs from −1 to 0.
  - Exit uniformity of 93–97% (p. 8).
  - No separation in the X–Z or X–Y planes (Fig. 8, p. 8).
- **Validation:** no direct CFD-against-hot-wire comparison is shown. The CFD is used only as a design check. The hot-wire tests were at 30 m/s, not at the CFD speeds (p. 8–10).

### Hot-wire (p. 8)
- **Probe and electronics:** a Dantec 55P16 probe with a 5 µm platinum-plated tungsten wire, run on a Dantec StreamLine Pro with a CTA91C10 module. It was calibrated with a Dantec 54H10.
- **Acquisition:** **time-resolved**, at 2¹⁶ Hz (65,536 Hz) for 8 s, on an NI PXIe-4499.
- **Traverse:** two ThorLabs LTS300M stages, each with 300 mm travel and 5 µm accuracy.
- **TI definition:** TI = U′_rms/U_mean (eq. 5). The fluctuations are **high-pass filtered at f = U∞/(2L_TS)**, where L_TS is the largest test-section dimension. This removes large-scale facility unsteadiness (Cattafesta et al. 2010).
  - For example, at 30 m/s the cutoff is about 25 Hz for Nozzle 1 (L_TS = 0.6 m) and about 19 Hz for Nozzle 2 (L_TS = 0.775 m). These are my calculations.
- **Stations:**
  - Nozzle 1 mean velocity: X/D_h = 0.2, 0.8, 1.5, 2.2, 2.8 (Fig. 9). TI: 0.2, 0.8, 1.5 (Fig. 10).
  - Nozzle 2 mean velocity and TI: X/D_h = 0.1, 0.4, 0.7, 1.1, 1.4 (Fig. 11). TI: 0.1, 0.4, 0.7, 1.1 (Fig. 12).
  - D_h is 300 mm for Nozzle 1 and 608 mm for Nozzle 2. Check: 4A/P = 0.48/1.6 = 0.300 ✓ and 1.55/2.55 = 0.608 ✓.

### Acoustic acquisition and processing (p. 9–11)
- **Hardware:** three synchronised NI PXIe-4499 cards in a PXIe-1062Q chassis.
- **Records:** **16 s** per point. The microphone sampling rate is not stated.
- **PSD:** **Welch's method with 8 Hz bins** (unless stated otherwise), referenced to 20 µPa. The window type and overlap are not stated.
- **Contamination check:** coherence between a reference microphone near the fan and motor and a chamber microphone (p. 10).
- **Source-type diagnostic:** the velocity exponent N(f), eq. 6, computed at fixed frequency (not at fixed Strouhal number).
- **Facility comparison:** A-weighted OASPL integrated from 160 Hz (the chamber cut-off) to 20 kHz, then scaled by the nozzle exit area and distance (eq. 7, p. 10–11).
- **Airfoil spectra:** 1/3-octave bands (p. 11).

### Benchmark cases (all on Nozzle 1; p. 11–12)

| Case | Model | Placement | U∞ [m/s] | Microphones | Outcome |
|---|---|---|---|---|---|
| Flat plate | 50 cm chord; zig-zag trip 0.5 mm high, 10 mm tip-to-tip | On the lip-line | 20, 30, 40 | θ = 90°, r ≈ 1.75 m | About 10 dB above background at low f; N ≈ 6 |
| Cylinder | d = 10 mm, span 600 mm (L/d = 60) | In the jet | 10–60 (plotted: 20, 40, 60) | θ = 45°, 90°, r ≈ 1.75 m | Tones at St_d ≈ 0.2 (lift) and 0.4 (drag) |
| NACA 0012 | c = 15 cm, span 60 cm, between side plates; α ≈ 1.5°; trip at 10% c (6 mm wide, 0.5 mm thick zig-zag, 70°) | 30 cm (2c) downstream of the exit | 30, 40 | θ = 90°, r/c = 11.7 | More than 10 dB above background; matches Brooks et al. and BPM at mid and high f |

- **NACA 0012 reference data:** Brooks et al.'s data are for c = 15.24 cm, α = 0°, at 32 and 40 m/s, corrected to this span and distance (p. 11).
- **BPM model:** the semi-empirical turbulent-boundary-layer trailing-edge noise model of Brooks, Pope & Marcolini (1989). Its input boundary-layer thickness comes from **XFoil** (p. 11).
- **Cylinder Reynolds number:** about 4×10⁴ at 60 m/s, which is subcritical (my estimate).

## Key equations
- **Su's rectangular contraction (eqs. 1–4, p. 6).** H is the half-height and B the half-width. Subscript 1 is the inlet and 2 the outlet. χ is the relative match-point location and X is measured from the inlet.

$$\frac{H(X)-H_2}{H_1-H_2} = 1-\frac{(X/L)^{n_1}}{\chi^{\,n_1-1}},\quad 0\le \frac{X}{L}\le\chi \qquad (1)$$

$$\frac{H(X)-H_1}{H_2-H_1} = 1-\frac{(1-X/L)^{n_2}}{(1-\chi)^{\,n_2-1}},\quad \chi\le \frac{X}{L}\le 1 \qquad (2)$$

  - Eqs. (3)–(4) are identical with B in place of H.
  - Check: both branches give (H−H₂)/(H₁−H₂) = 1−χ at X/L = χ, so the profile is continuous. The slopes there are −n₁(H₁−H₂)/L and −n₂(H₁−H₂)/L, which match only if n₁ = n₂. This is why the paper inserts a cubic spline when n₁ = 3 and n₂ = 5.
- **Turbulence intensity (eq. 5, p. 8):** $TI = U'_{rms}/U_{mean}$, with U′ high-pass filtered at $f = U_\infty/(2L_{TS})$.
- **Velocity scaling exponent (eq. 6, p. 10):**

$$N(f) = \log_{10}\!\left(\frac{S_{pp,U_1}(f)}{S_{pp,U_2}(f)}\right)\Big/\log_{10}\!\left(\frac{U_1}{U_2}\right)$$

  - S_pp,U is the PSD at speed U.
  - Expected values: N ≈ 8 for jet quadrupole noise (p. 10). The flat plate gave N ≈ 6, which the authors take as trailing-edge noise (p. 11).
- **Scaled A-weighted OASPL (eq. 7, p. 10):**

$$OASPL_{sc,A} = OASPL_A - 10\log_{10}\!\left(\frac{A}{r^2}\right)$$

  - r is the distance from the microphone diaphragm to the centre of the nozzle exit, and A is the nozzle exit area.

> Eqs. 1–7 were checked against rendered images of p. 6, 8 and 10 (the text extraction garbled them).

## Data tables

**Fan design conditions (Table 1, p. 3)**

| Nozzle | Exit (W × H) | Design U at exit [m/s] | ΔP [Pa] | Q [m³/s] |
|---|---|---|---|---|
| 1 | 600 mm × 200 mm | 60 (120 achievable) | 2970 | 7.2 |
| 2 | 500 mm × 775 mm | 40 | 3104 | 15.3 |

**Contraction geometry (Table 6, p. 7).** These are half-dimensions, in metres.

| Nozzle | H₁ | H₂ | B₁ | B₂ | L | n₁ | n₂ |
|---|---|---|---|---|---|---|---|
| 1 | 0.9 | 0.1 | 0.9 | 0.3 | 2 | 3 | 5 |
| 2 | 0.9 | 0.3875 | 0.9 | 0.25 | 2 | 3 | 5 |

> The match-point location χ is not given in Table 6. Fig. 5 (p. 6) shows the 1st polynomial ending, and the splines starting, at about X/L ≈ −0.5 in exit-origin coordinates. That is consistent with the 1 m common section.

**Octave-band acoustic data, in dB (Tables 2–5, p. 3–5)**

| f [Hz] | 63 | 125 | 250 | 500 | 1000 | 2000 | 4000 | 8000 |
|---|---|---|---|---|---|---|---|---|
| Fan sound power, Nozzle 1 at 60 m/s, inlet (T2) | 87 | 89 | 90 | 91 | 88 | 86 | 86 | 83 |
| Fan sound power, Nozzle 1 at 60 m/s, outlet (T2) | 90 | 92 | 93 | 94 | 91 | 89 | 89 | 86 |
| Fan sound power, Nozzle 2 at 40 m/s, inlet (T2) | 97 | 99 | 100 | 101 | 98 | 96 | 96 | 93 |
| Fan sound power, Nozzle 2 at 40 m/s, outlet (T2) | 100 | 102 | 103 | 104 | 101 | 99 | 99 | 96 |
| Insertion loss, with flow, fan to chamber, Nozzle 1 (T3) | 33 | 39 | 58 | 61 | 54 | 48 | 41 | 41 |
| Insertion loss, with flow, Nozzle 2 (T3) | 29 | 38 | 54 | 58 | 54 | 46 | 43 | 41 |
| Insertion loss, against flow (return leg), Nozzle 1 (T4) | 24 | 41 | 51 | 52 | 43 | 36 | 46 | 45 |
| Insertion loss, against flow, Nozzle 2 (T4) | 23 | 42 | 56 | 56 | 50 | 43 | 47 | 45 |
| Wall TL, predicted (T5) | 29 | 34 | 36 | 40 | 45 | 49 | 51 | – |
| Wall TL, measured (ISO 140-4) (T5) | 29 | 42 | 52 | 53 | 54 | 57 | 64 | – |

> In the text extraction, Table 2 was scrambled. It was rebuilt from a rendered image of p. 3. Consistency check: outlet = inlet + 3 dB in every band, and Nozzle 2 = Nozzle 1 + 10 dB in every band. The fan data come from the manufacturer, and the insertion losses are manufacturer-based predictions, not measurements.

## Figures worth remembering
- **Figs. 1–3 (p. 2–3):** isometric view, plan view and side section of the circuit. They label parts A–L and the guide vanes GV1–GV9.
- **Fig. 4 (p. 5):** photo of the chamber showing the nozzle, collector and far-field microphone arc.
- **Fig. 5 (p. 6):** height and width profiles of both nozzles (common section, splines, 2nd polynomials).
- **Fig. 6 (p. 7):** nozzle geometry and coordinate system.
- **Fig. 7 (p. 7):** RANS near-wall velocity profiles at X/L = −0.2, −0.1 and 0.
- **Fig. 8 (p. 8):** RANS velocity contours in the contractions; no separation.
- **Figs. 9 and 11 (p. 8–9):** hot-wire mean-velocity profiles for Nozzles 1 and 2 at 30 m/s.
- **Figs. 10 and 12 (p. 9–10):** TI profiles. TI rises steeply toward the shear layers, to about 15% at the edges.
- **Fig. 13 (p. 10):** Nozzle 1 background narrowband spectra, 10–70 m/s in 5 m/s steps, at θ = 90° and 45°, with the chamber noise floor marked.
- **Fig. 14 (p. 10):** velocity exponent N(f) for 0.2–10 kHz. It sits at about 7–8 for both angles.
- **Fig. 15 (p. 11):** scaled OASPL_A against U∞ for Bristol and for the Southampton, Brandenburg, Adelaide and Florida tunnels.
- **Fig. 16 (p. 12):** flat-plate spectra against background, and N(f) ≈ 6.
- **Fig. 17 (p. 12):** cylinder spectra against St_d, showing the 0.2 and 0.4 tones.
- **Fig. 18 (p. 12):** NACA 0012 1/3-octave spectra compared with BPM, Brooks et al. and the background, at 30 and 40 m/s.

## Notation
- **Flow and geometry:**
  - U∞: jet exit (free-stream) velocity.
  - D_h: nozzle hydraulic diameter.
  - L_TS: largest test-section dimension.
  - TI: turbulence intensity.
- **Contraction design:**
  - H(X), B(X): contraction half-height and half-width.
  - Subscripts 1 and 2: inlet and outlet.
  - n₁, n₂: contour powers.
  - χ: match-point location.
  - L: contraction length.
- **Coordinates:**
  - Eqs. 1–4 measure X from the inlet.
  - Figs. 5–7 put the origin at the exit (X/L ∈ [−1, 0]).
  - Y is vertical and Z horizontal (spanwise for Nozzle 1).
- **Acoustics:**
  - θ: polar angle (0° downstream, 90° overhead).
  - r: microphone distance.
  - St_d = f d/U∞.
  - S_pp: pressure PSD.
  - N(f): velocity scaling exponent.
  - OASPL_A, OASPL_sc,A: A-weighted and area/distance-scaled overall SPL.
  - TL: transmission loss.
- **Models:** BPM is the Brooks–Pope–Marcolini airfoil self-noise model.

## Relevance to this project
This project analyses experimental resonance and feedback data (schlieren, acoustics, PIV) from the Shock Lab; see CLAUDE.md. This paper is about a **low-speed (≤ 120 m/s), subsonic, open-jet facility at the University of Bristol**. It is not Shock Lab group work and contains no screech, shocks or modal decomposition. Its value here is as a reference for facility acoustics and acoustic data-quality checks.
- **Checks that transfer to the lab's acoustic data:**
  - **Coherence with a reference microphone at the noise source:**
    - The paper places a microphone near the fan and motor and requires a coherence of less than 0.05 with the measurement microphones (p. 10).
    - The same test could rule out compressor, valve or plenum noise in jet-rig far-field or near-field acoustic data before resonance tones are attributed to the jet.
  - **Velocity scaling exponent N(f), eq. 6:**
    - It separates source types: about 8 for jet mixing (quadrupole) noise and about 6 for trailing-edge (edge-scattering) noise (p. 10–11).
    - An analogous scaling with U_j or NPR could test whether a spectral band is mixing noise or an edge, impingement or feedback source.
    - Caveat (mine): the paper evaluates N at fixed frequency, not fixed Strouhal number. For sources whose frequency scales with velocity, such as tones, N at fixed f is not meaningful near the peaks.
  - **Chamber cut-off:**
    - Spectra below the ISO 3745 qualification frequency (here 160 Hz) are not free-field, and the paper integrates OASPL only above it (p. 4, 11).
    - Worth knowing the equivalent cut-off for the lab's own anechoic space.
  - **Scaled OASPL, eq. 7:** a simple way to compare background noise across facilities with different nozzle areas and microphone distances (p. 10).
  - **TI filtering:** high-pass at U∞/(2L_TS) before computing TI, so facility unsteadiness doesn't inflate it (p. 8).
- **How each method depends on the data:**
  - Everything in the paper is **time-resolved**: hot-wire at 2¹⁶ Hz for 8 s, and microphones for 16 s with Welch PSDs in 8 Hz bins (p. 8–9).
  - There is no PIV and no POD. The only statistics are means, TI, PSDs, coherence and OASPL. This is the "basic statistics" stage of the CLAUDE.md workflow.
  - The window, overlap and microphone sampling rate are not reported (p. 9). Record those for the lab's own spectra.
  - **Possible extension, not in the paper:**
    - A synchronous 51-microphone polar arc (p. 5, 9) is exactly the kind of array that suits SPOD, or BMD for triadic interactions.
    - The cylinder's St 0.2 lift tone and St 0.4 drag tone (p. 11) are a textbook fundamental-plus-harmonic pair for BMD.
    - The shedding tone's amplitude and frequency wander could be tracked with the SPOD → reconstruction → HPOD pipeline.
    - The paper gives only block-averaged spectra, with no treatment of intermittency or time variation.
- **Modelling side:**
  - **Contraction design:** design used the Morel/Su polynomial theory (eqs. 1–4) plus steady RANS k–ω SST in OpenFOAM (wall functions, y⁺ ≈ 30, about 4.7×10⁶ cells, inlet TI 5%) (p. 6–8).
  - **Limits of the CFD:**
    - RANS was used only as a design screen: it checked uniformity and separation.
    - It cannot predict TI reduction quantitatively in the way the hot-wire measures it.
    - There is no direct CFD-to-experiment comparison (p. 8–10).
  - **BPM with XFoil** inputs predicts the airfoil trailing-edge noise well at mid and high frequencies. It underpredicts at low frequencies, where the airfoil amplifies the jet's own noise (installation effect) (p. 11).
  - There is no stability, resolvent, LES or DNS work in the paper.
- **Resonance and feedback link:**
  - The conclusion lists "instability noise studies" (p. 12), and the group cites its own Tollmien–Schlichting-wave work on the NACA 0012 (ref. [37], p. 11, 13).
  - Airfoil tonal noise involves a feedback loop between boundary-layer instability waves and trailing-edge acoustic scattering. That is general background, not stated in this paper. It makes this facility type a subsonic analogue of the lab's feedback problems.
  - For the modelling side of separated or transitional NACA 0012 flow, see [rolandi-2025-biglobal-resolvent-naca0012.md](rolandi-2025-biglobal-resolvent-naca0012.md).
- **Rectangular nozzles:**
  - The open jets here are rectangular: aspect ratio 3:1 for Nozzle 1 and about 1.55:1 for Nozzle 2. They are low-speed and designed *not* to resonate, so they share only the geometry with the supersonic rectangular-jet notes ([kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md), [samimy-1998-rectangular-jet-trailing-edge-control.md](samimy-1998-rectangular-jet-trailing-edge-control.md), [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md)). Don't carry over results.
  - The measured potential-core lengths (more than 3 D_h for Nozzle 1 and more than 1.5 D_h for Nozzle 2, at 30 m/s) are facility-specific (p. 8–9).
- **Facility attribution:** University of Bristol aeroacoustic facility (p. 1–2). It is not a Shock Lab group facility.
- **Related works cited:**
  - Chong et al. 2009 (Southampton) and Sarradj et al. 2009 (Brandenburg): open-jet facility design and characterisation; Bristol's background noise is compared against both.
  - Devenport et al. 2013: Kevlar-walled anechoic tunnel.
  - Brooks, Pope & Marcolini 1989: BPM airfoil self-noise.
  - Mayer et al. 2019: Kevlar-walled test section with oscillating airfoil (ref. [40]).
  - These are candidates for `/add-paper` only if facility design becomes a focus.
