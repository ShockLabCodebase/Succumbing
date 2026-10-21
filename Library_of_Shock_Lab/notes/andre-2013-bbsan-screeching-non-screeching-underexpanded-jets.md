---
key: "andre-2013-bbsan-screeching-non-screeching-underexpanded-jets"
title: "Broadband Shock-Associated Noise in Screeching and Non-Screeching Underexpanded Supersonic Jets"
authors: ["André, Benoît", "Castelain, Thomas", "Bailly, Christophe"]
year: 2013
type: "article"
venue: "AIAA J. 51(3), 665–673"
bib: {"journal": "AIAA Journal", "volume": "51", "number": "3", "pages": "665--673"}
doi: "10.2514/1.J052058"
arxiv: ""
pdf: "jet-noise-mechanisms/Andre-EtAl_2013_Broadband-Shock-Associated-Noise-In-Screeching-And-Non-Screeching-Underexpanded.pdf"
version: "published"
unverified: []
group: false
facility: "LMFA anechoic room, École Centrale de Lyon"
data: ["microphones-far", "microphones-near", "schlieren", "pressure-probe"]
methods: ["PSD", "statistics", "empirical-model"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["BBSAN", "screech", "staging", "multimodal", "shock-cells", "mean-flow-deformation", "noise-control", "receptivity", "directivity", "source-location", "mixing-noise"]
params: {"M_j": "1.10, 1.15, 1.35, 1.50 (peak-frequency traverse 1.0–1.55)", "NPR": "≈2.14, 2.27, 2.97, 3.67 (isentropic from M_j; not printed)", "D": "38.25 mm baseline, 38.7 mm notched", "t/D": "0.013 (0.5 mm lip)", "notches": "24 × (1 mm azimuthal × 4 mm axial)", "TR": "≈1 (unheated; T₀ measured but not given)", "St": "screech Sr_s ≈ 0.65 (M_j 1.10, 1.15), 0.32 (1.35), f D_j/U_j", "U_c/U_j": "0.42–0.65 screeching, 0.65–0.66 screech-free"}
topics: ["jet-noise-mechanisms", "screech", "shock-cell-models", "screech-staging-and-mode-switching"]
related: ["mercier-2017-screech-feedback-loop-underexpanded-round-jets", "tam-1986-bbsan-screech-relationship", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1995-supersonic-jet-noise", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "wong-2021-wavepacket-modelling-bbsan", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "farghadan-2026-wave-interactions-screeching-jet", "krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet", "kerechanin-2001-trailing-edge-rectangular-jet-acoustics", "samimy-1998-rectangular-jet-trailing-edge-control", "raman-1998-supersonic-jet-screech-review", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "lubert-2022-supersonic-jet-noise-launch-vehicles-review"]
cites: ["norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "powell-1992-oscillation-modes-choked-circular-jets", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship"]
summary: "Notched lip kills screech, keeps shock spacing: shock train lasts longer, BBSAN ≤ 4 dB louder and higher; U_c/U_j fixed at 0.65; screeching peak tracks 2St_s"
---
# Broadband Shock-Associated Noise in Screeching and Non-Screeching Underexpanded Supersonic Jets

- **Authors:** Benoît André (PhD student), Thomas Castelain, Christophe Bailly. All at Université de Lyon, LMFA (UMR CNRS 5509), École Centrale de Lyon; Castelain also at Université Lyon 1, Bailly also at Institut Universitaire de France (p. 665). Not Shock Lab group work.
- **Source:** AIAA Journal 51(3), March 2013, 665–673, doi:10.2514/1.J052058. Received 30 April 2012, revised 23 August 2012, accepted 7 September 2012, online 23 January 2013 (p. 665). Funded jointly by Airbus Operations S.A.S. and Snecma (p. 672). Associate editor A. Lyrintzis.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/jet-noise-mechanisms/Andre-EtAl_2013_Broadband-Shock-Associated-Noise-In-Screeching-And-Non-Screeching-Underexpanded.pdf` (9 pp., publisher's version downloaded from arc.aiaa.org). Page refs are journal pages; PDF page n = journal page 664 + n. The Read tool refused the PDF as "password-protected", so text came from `pdftotext`, and all figures (Figs 2–13), eqs. 1–3 and Table 1 were checked on rendered pages. Many numbers below are read from figures and say so.
- **Tags:** broadband shock-associated noise (BBSAN), screech suppression, notched nozzle lip, nonintrusive suppression, screech tab, baffle, shock-cell damping, shock-train extension, mean schlieren, centreline static pressure (Pinckney probe), BBSAN peak Strouhal number, Gaussian hump fit, staging, tuning of BBSAN peak to 2St_s, convection velocity from BBSAN directivity (Seiner & Yu), Doppler factor, near-field BBSAN source distribution, Viswanathan mixing-noise subtraction, BBSAN directivity, receptivity, dual-stream engines at cruise

## Summary
The paper asks how screech changes broadband shock-associated noise (BBSAN), using a convergent round nozzle whose lip carries 24 shallow notches as a screech suppressor (p. 665–666). Mean schlieren and centreline static-pressure surveys show that the notches leave the first shock cells, their spacing and their strength almost unchanged, and that the Mach 1.0 mixing noise is unchanged, so the notched nozzle is taken as a screech-free twin of the baseline (p. 667–668). Without screech the time-averaged shock train extends much further downstream, so screech itself damps the mean shock cells (p. 668). In the far field the screech-free BBSAN hump is louder by up to about 4 dB and higher in frequency. In the screeching jet the hump's peak Strouhal number follows twice the screech Strouhal number through every stage jump, and the convection velocity inferred from BBSAN directivity varies with M_j (0.42–0.65U_j) rather than staying at about 0.65U_j (p. 669–671). Near-field microphones show that the downstream cells are the strongest and highest-frequency BBSAN sources, and that these are the cells screech removes, which the authors use to explain the lower and weaker far-field hump of screeching jets (p. 669–670). The work is purely experimental and time-averaged; it has no model or simulation of its own.

## Key findings
- **Notches suppress screech at M_j 1.15, 1.35 and 1.50 but less at 1.10** (Fig. 2, p. 666–667; θ = 110°, values read from figure):
  - M_j 1.10: baseline tone ≈ 120 dB/Sr at Sr ≈ 0.65, harmonic at ≈ 1.30 (≈ 113 dB/Sr); the notched nozzle keeps a weaker tone (≈ 112 dB/Sr) at a slightly higher Sr ≈ 0.69.
  - M_j 1.15: baseline tone ≈ 125 dB/Sr at Sr ≈ 0.65; only small residual peaks with notches.
  - M_j 1.35: baseline tones at Sr ≈ 0.32, 0.64, 0.96 and 1.27 (≈ 135, 132, 125, 118 dB/Sr); none with notches.
  - M_j 1.50: the baseline tones are weak and "unsettled between two modes" (p. 669), and the two spectra nearly coincide, with the hump at ≈ 129 dB/Sr, Sr ≈ 0.45.
- **Direct effect of the notches is small** (§III.B, p. 668):
  - The shock system stays axisymmetric and the spacing is unchanged at M_j 1.10. At M_j 1.35 the second cell is shorter with notches, but the spacing is about the same afterwards. The first cell is more complex at 1.35, because the larger pressure difference drives an ejection through the slots, most visible on those in the vertical plane.
  - With the probe in the first cells, where it suppresses screech for both nozzles, the static-pressure oscillation amplitude (shock-cell strength) is very similar for the two nozzles.
  - Instantaneous schlieren shows the slots thicken the mixing layers, but sonic-jet (M_j 1.0) spectra at 30° and 110° barely change (Fig. 6, p. 668; within about 1 dB, read from figure), so the turbulence that makes mixing noise is taken as preserved.
  - At M_j 1.50, where neither nozzle screeches strongly, the BBSAN humps are close (Fig. 2d), so the notches by themselves barely change BBSAN.
- **Screech damps the time-averaged shock train** (§III.C, p. 667–668):
  - Schlieren: more shocks are visible with the notched nozzle, slightly at M_j 1.10, clearly at 1.35 (Figs 3–4). My count from the figures: about 10 against 13 cells at M_j 1.10, and about 6 against 11 at 1.35.
  - Static pressure (Fig. 5): at M_j 1.35 the baseline oscillation collapses just downstream of x/D ≈ 5.3, the probe position from which strong screech first appeared during the traverse; the notched oscillation lasts to x/D ≈ 11. At M_j 1.10 the baseline decays from x/D ≈ 3 and the notched one lasts to ≈ 6.5 (read from figure).
  - Strong tones appear only with the probe downstream of that point, and the notched nozzle never screeched there, so the shock-cell breakdown is correlated with strong screech.
  - The stronger the suppression (1.35 versus 1.10), the longer the extension. This agrees with Glass (1968) shadowgrams, Norum's (1991) rectangular jet and Raman's (1997) screech-cessation profiles (p. 668).
  - High-speed schlieren of the probe in the jet at M_j 1.35 (not shown) suggests that the screech-induced jet oscillation causes the faster damping; the mechanism "probably involves" screech-enhanced mixing (p. 668).
- **Why the notches work** (§III.D, p. 668; offered as a hypothesis): the slots change the initial shear layer, where Raman et al. (1997) found the acoustic–shear-layer coupling (receptivity) concentrated, and so probably disrupt receptivity. The smaller change of the initial shear layer at M_j 1.10 would explain the weaker suppression there. The ejection through the notches could also block the upstream waves, as in Raman's explanation of screech cessation. "This remains to be verified."
- **BBSAN peak frequency and its tuning to screech** (§IV.A, Fig. 8, p. 669):
  - The first hump at θ = 90° was fitted with a Gaussian (eq. 1) over a detailed M_j 1.0–1.55 traverse. Sr_p falls with M_j as the cells lengthen, from ≈ 2.9 at M_j 1.03 to ≈ 0.55 at 1.55 (read from figure).
  - Sr_p is usually higher for the notched nozzle, as in Norum's (1984) baffle experiments. At M_j 1.35, for example, Sr_p ≈ 0.65 baseline against ≈ 0.76 notched (read from Fig. 8b).
  - In the baseline jet Sr_p follows 2Sr_s through the staging, jumping when the tone jumps; with notches it varies smoothly. (The notched jump above M_j 1.20 is a change in which part of a continuously evolving hump was fitted.)
  - Where two screech tones coexist (around M_j 1.25 and 1.40) the hump "seems to settle in-between" (p. 669).
  - The authors relate the tuning to changes in shock spacing or convection velocity produced by staging, which should not occur without screech.
- **BBSAN directivity and convection velocity** (Fig. 9, Table 1, p. 669–670):
  - λ_p/D is linear in cos θ for both nozzles, as the Doppler factor in eq. 2 requires, and smaller with notches over all θ and M_j. At 90°, λ_p/D ≈ 0.72 against 0.58 (M_j 1.10), 0.78/0.71 (1.15), 1.36/1.15 (1.35) and 1.48/1.41 (1.50), baseline/notched (read from figure).
  - A linear fit of λ_p(θ)/λ_p(90°) = 1 − M_c cos θ gives U_c/U_j = 0.42, 0.58, 0.61, 0.65 (baseline) and 0.66, 0.65, 0.65, 0.65 (notched) at M_j 1.10, 1.15, 1.35, 1.50 (Table 1). They are equal at 1.50 because the baseline screech is weak there.
  - Without screech the ratio is independent of M_j and close to the classical 2/3 (p. 669). The baseline 0.42 at M_j 1.10 is low compared with the literature, perhaps because there are few points and the hump stands only slightly above the mixing noise (p. 669). Panda et al. (1997) also found convection velocity depending on the screech mode.
- **Near field: the downstream cells are the louder, higher-frequency BBSAN sources** (§IV.B, Figs 10–12, p. 669–671; only M_j 1.10 shown, 1.35 is said to agree):
  - At x/D = 5.8 the notched hump (≈ 137 dB/Sr at Sr ≈ 1.4) is more pronounced than the baseline's flatter one (≈ 133 dB/Sr) (Fig. 10, read from figure).
  - The hump peak amplitude grows downstream for both nozzles, as in Seiner & Yu (1984), and peaks near x/D ≈ 4.5–5 (Fig. 11; read). The notched hump dominates everywhere except near x/D ≈ 4, where the notched spectra "inexplicably dropped". By my reading, the gap is about 1–3 dB upstream of x/D 5, grows to about 4–6 dB at x/D 6.5–7.3, and the baseline hump disappears beyond x/D ≈ 7.3 while the notched one extends to ≈ 8.2.
  - Near-field Sr_p is ≈ 0.9–1.0 up to x/D ≈ 4 and then rises downstream, to ≈ 2.6 (baseline, x/D 7.3) and ≈ 2.35 (notched, x/D 8.2) (Fig. 12; read). This agrees with Norum & Seiner (1982, AIAA J., the paper's ref. 11).
  - Interpretation (p. 670): the downstream cells emit higher frequencies. Strong screech weakens them, so they contribute less and the far-field peak frequency drops.
- **Far-field BBSAN level** (§IV.C, Fig. 13, p. 670–671; levels read from figure with the 1 dB scale bars):
  - At M_j 1.35 and 1.50 BBSAN is roughly omnidirectional, with an undulation of about 1–2 dB also seen in Viswanathan et al. (2010) for a cold M_j 1.36 jet; the authors offer no explanation. At M_j 1.10 and 1.15 the level rises upstream and is omnidirectional for θ ≥ 100°.
  - The notched (screech-free) jet is louder: by ≈ 2.5–4 dB at M_j 1.10, ≈ 0–2 dB at 1.15 (growing upstream), ≈ 0–2.5 dB at 1.35 (equal at 70–90°), and within ≈ 0.5 dB at 1.50.
  - The increase is smaller at M_j 1.35 than at 1.10, even though 1.35 had the stronger tones. "Screech reduces the BBSAN levels to an extent depending on the operating condition and the polar angle" (p. 671).
- **Open questions they name** (p. 672): turbulence measurements with and without screech, and how the motion of the vortical structures relative to the shocks drives BBSAN, since in a screeching jet the shocks oscillate at the screech frequency.

## Setup / method
- **Facility** (p. 666): unheated supersonic jet into an anechoic room, at LMFA, École Centrale de Lyon (from the affiliation; the room is not described here, but Mercier 2017 gives 10 × 8 × 8 m for the LMFA room). No total-pressure probe could be placed near the exit, so the wall static pressure about 15D upstream of the exit, with an estimated local Mach number, gives the stagnation pressure and NPR. T₀ is measured by a thermocouple but not reported. Conditions are given only as M_j.
- **Nozzles** (p. 666, Fig. 1): two contoured convergent nozzles, both ending in a 5 mm parallel section with a 0.5 mm lip.
  - *Baseline*: D = 38.25 mm, smooth lip.
  - *Notched*: D = 38.7 mm, 24 notches, each 1 mm wide (azimuthally) and 4 mm deep (axially), cut into the parallel section. The size came from a small parametric study for good suppression. The shallow-notch idea follows NASA (Bridges & Wernet 2008), in place of the deep axial slots of Norum (1983), Wlezien & Kibens (1988) and Krothapalli et al. (1990), which would change the BBSAN too.
  - The diameter D in x/D and λ_p/D is "the nozzle diameter" (Fig. 5 caption); which of the two diameters is used for the notched nozzle is not stated.
- **Conditions:**

  | M_j | NPR (my calc.) | D_j/D (my calc.) | U_j (m/s, my calc., T₀ = 293 K) | Used in |
  |---|---|---|---|---|
  | 1.0–1.55 | 1.89–3.9 | — | — | Fig. 8 traverse |
  | 1.10 | 2.14 | 1.004 | 339 | Figs 2–3, 5, 9–13 |
  | 1.15 | 2.27 | 1.009 | 351 | Figs 2, 9, 13 |
  | 1.35 | 2.97 | 1.044 | 397 | Figs 2, 4–5, 7, 9, 13 |
  | 1.50 | 3.67 | 1.085 | 427 | Figs 2, 9, 13 |

  NPR and D_j/D are isentropic (γ = 1.4) for a convergent nozzle. U_j assumes T₀ = 293 K, which the paper does not give. The NPRs match Mercier 2017's Table 2 for the same M_j.
- **Far-field acoustics** (p. 666): 13 PCB 6.35 mm condenser microphones on a polar arc of radius 2020 mm (≈ 53D) centred on the nozzle, every 10° from 30° to 150° from the downstream axis, normal incidence, no grid. Sampled at 102.4 kHz (NI PXI 5733). Record length, block size, window and averaging are not stated. Spectra are plotted in dB/Sr against Sr = f D_j/U_j (Fig. 2) and in dB/Hz (Fig. 7).
- **Near-field acoustics** (p. 666, 669): four 3.175 mm G.R.A.S. transducers about one diameter from the lip line ("4.9 mm away from the lip line" for M_j 1.10, i.e. y = D/2 + 4.9 mm), perpendicular to the jet axis, on an axial traverse. Same sampling.
- **Schlieren** (p. 666–667): Z-type; LED source, two f/8 203.2 mm parabolic mirrors, knife edge, high-speed camera, off-axis angle 2α = 10°. Mean images are averages of 500 frames at 500 Hz, stitched from four axial stations; the first shocks of the two nozzles are aligned axially because the notched nozzle's shock origin is unclear. Knife-edge orientation and exposure are not stated. The images are not time-resolved, and the paper uses them only as means.
- **Static pressure** (p. 666–667): short biconical probes after Pinckney (1975), outer diameter 1.5 mm, holes ≈ 4.7 mm from the tip, traversed on the centreline at M_j 1.10 and 1.35. The notched profiles are shifted downstream so their first shocks line up with the baseline. *Intrusiveness:* with the probe in the first few cells neither nozzle screeches. Further downstream a tone appears whose level and frequency depend on probe position, although the free-jet screech frequency prevails. So the upstream part of each profile is a screech-free comparison and the downstream part shows the screech effect.
- **BBSAN analysis:**
  - *Peak frequency*: a Gaussian (eq. 1) fitted to the first hump; Fig. 7 shows the fit at θ = 90°, M_j 1.35, notched (f_p ≈ 7.7 kHz, read). Uncertainty bars for the notched nozzle at M_j 1.05, 1.24, 1.53 (Fig. 8) and on the extreme angles (Fig. 9); how they were estimated is not stated.
  - *Convection velocity*: linear fit of λ_p(θ)/λ_p(90°) against cos θ (Seiner & Yu 1981), with λ_p the wavelength at f_p, presumably λ_p = c∞/f_p.
  - *Levels*: Viswanathan's (2006) decomposition. Mixing noise is assumed unaltered by shocks and to have a universal shape per angle and stagnation temperature, built from each nozzle's M_j 1.0 spectra with the eq. 3 normalisation. It is subtracted from the total spectrum, screech tones are removed "numerically", and the remainder is integrated over Sr (p. 670–671). The integration range and the tone-removal method are not stated.
- **Data dependence:** every analysis is a time average: PSDs, mean images and mean pressures. None needs time-resolved data, and no time–frequency, modal or phase analysis is done, so the intermittency of screech near the stage jumps and the two-tone ranges is invisible here.
- **Modelling context** (p. 665, 669): no model is solved. The interpretation uses the Harper-Bourne & Fisher (1973) and Tam & Tanna (1982) peak-frequency relation (eq. 2) and cites Tam's (1990) suggestion, from Norum & Seiner's pressure data, that strong screech makes the shock cells disintegrate quickly and so attenuates BBSAN. It also cites Morris & Miller's (2010) RANS-based BBSAN model, which needs separate calibration constants for screeching and non-screeching jets. The paper's results give the physical reason for both.

## Key equations
Checked against rendered pages 669–670.
- **Gaussian hump fit** (eq. 1, p. 669): $A\exp\!\left[-\dfrac{(f-f_p)^2}{2\sigma^2}\right]$, with A the hump maximum, f_p the peak frequency and σ the hump width.
  > In Fig. 7 the fitted curve drops as a parabola on the dB axis, which suggests the Gaussian was fitted to the spectrum in linear units (a Gaussian is a parabola in dB). Verify against the PDF; the fitting window is not stated.
- **BBSAN peak frequency** (eq. 2, p. 669; Harper-Bourne & Fisher, Tam & Tanna): $f_p=\dfrac{U_c}{L\,(1-M_c\cos\theta)}$, with U_c the convection velocity of the structures, M_c = U_c/c∞ and L the shock spacing; θ from the downstream axis.
- **Seiner & Yu convection-velocity estimate** (p. 669): $\dfrac{\lambda_p(\theta)}{\lambda_p(\theta=90^\circ)}=1-M_c\cos\theta$. This follows from eq. 2 with λ_p = c∞/f_p (my check), so it needs neither L nor U_j.
- **Mixing-noise master-shape normalisation** (eq. 3, p. 670): $\mathrm{SPL}-10\log_{10}(A_j/A_{ref})-10n\log_{10}(U_j/c_\infty)-10\log_{10}(D_j/U_j)$ plotted against Sr, with A_j the fully expanded area (from D_j), A_ref = 1 m², n a velocity exponent depending on θ and T₀ (Viswanathan 2006), and c∞ the ambient sound speed.
- **Checks** (my arithmetic, T₀ = 293 K assumed):
  - Sr_p for Fig. 7: 7.7 kHz × 0.0399 m / 396.5 m s⁻¹ ≈ 0.77, matching the notched point at M_j 1.35 in Fig. 8 (≈ 0.76).
  - Table 1 from Fig. 9c: an all-angle linear fit to my readings gives the slope −0.89 (notched) and −0.99 (baseline). Dividing by the measured λ_p(90°) (1.15, 1.36) gives M_c ≈ 0.77 and 0.73, i.e. U_c/U_j ≈ 0.67 and 0.63 with U_j/c∞ = 1.156. Table 1 gives 0.65 and 0.61.
  - Screech tones agree with Mercier 2017 on the same-size nozzle and lab: Sr_s ≈ 0.65 at M_j 1.10 gives f_s ≈ 5.7 kHz (Mercier: 5882 Hz), and Sr_s ≈ 0.32 at 1.35 gives ≈ 3.2 kHz (Mercier: 3270 Hz).

## Data tables
**Convection velocity from BBSAN directivity** (Table 1, p. 670; linear fit of λ_p(θ)/λ_p(90°)):

| M_j | 1.10 | 1.15 | 1.35 | 1.50 |
|---|---|---|---|---|
| U_c/U_j, baseline (screeching) | 0.42 | 0.58 | 0.61 | 0.65 |
| U_c/U_j, notched (screech-free) | 0.66 | 0.65 | 0.65 | 0.65 |

**Screech and BBSAN peaks** (read from Figs 2, 8, 9; baseline/notched):

| M_j | Sr_s (baseline, Fig. 2) | 2Sr_s | Sr_p at 90° (Fig. 8) | λ_p/D at 90° (Fig. 9) | BBSAN level change with notches (Fig. 13) |
|---|---|---|---|---|---|
| 1.10 | ≈ 0.65 | ≈ 1.31 | ≈ 1.3 / ≈ 1.6 | 0.72 / 0.58 | +2.5 to +4 dB |
| 1.15 | ≈ 0.65 | ≈ 1.31 | ≈ 1.3 / ≈ 1.4 | 0.78 / 0.71 | 0 to +2 dB |
| 1.35 | ≈ 0.32 | ≈ 0.64 | ≈ 0.65 / ≈ 0.76 | 1.36 / 1.15 | 0 to +2.5 dB |
| 1.50 | weak, two modes | — | ≈ 0.58 / ≈ 0.58 | 1.48 / 1.41 | within ±0.5 dB |

> The Sr_p values at M_j 1.10 and 1.15 are hard to read from Fig. 8a, where the points crowd together near the stage jumps; treat them as ±0.1. The Fig. 9 values convert to Sr_p = (D_j/D)(c∞/U_j)/(λ_p/D) (my conversion, T₀ = T∞ assumed). At M_j 1.35 this gives 0.66 (baseline) and 0.79 (notched), and at 1.15 1.27 and 1.39, consistent with Fig. 8. At M_j 1.10 it gives 1.41 and 1.75, about 8% above my Fig. 8 readings, where Sr_p changes steeply with M_j. Check whether Fig. 8 and Fig. 9 use the same angle and D.

**Shock spacing** (my readings of the Ps maxima in Fig. 5 and of the shock marks in Fig. 11; nozzle diameter D):

| M_j | Nozzle | Cells | L_s/D | Source |
|---|---|---|---|---|
| 1.10 | baseline | 1–6 | ≈ 0.54 | Fig. 5a, p. 667 (maxima at x/D ≈ 0.53 … 3.22) |
| 1.10 | notched | 1–10 | ≈ 0.53 | Fig. 11, p. 670 (shock marks at x/D ≈ 0.49 … 5.24) |
| 1.35 | baseline | 1–4 | ≈ 1.2 | Fig. 5b, p. 667 (maxima at x/D ≈ 1.1, 2.4, 3.6, 4.7) |

These match Mercier 2017's mean spacing over the first four cells (0.57 at M_j 1.10 and 1.20 at 1.35).

## Figures worth remembering
- **Fig. 1 (p. 666):** photograph of the notched and baseline nozzles.
- **Fig. 2 (p. 667):** far-field spectra at 110° for M_j 1.10, 1.15, 1.35, 1.50, both nozzles: tone removal, the shifted and raised hump, and (my observation) about 2–4 dB lower broadband levels at Sr < 0.6 without screech at M_j 1.10–1.35.
- **Figs 3–4 (p. 667):** mean schlieren of both nozzles at M_j 1.10 and 1.35; the screech-free shock train is visibly longer at 1.35. The clearest picture of the paper's main point.
- **Fig. 5 (p. 667):** centreline static pressure for both nozzles; the dashed line at x/D ≈ 5.3 (M_j 1.35) marks where strong baseline screech began, just upstream of where the baseline oscillation collapses.
- **Fig. 6 (p. 668):** M_j 1.0 spectra at 30° and 110° nearly identical for both nozzles.
- **Fig. 7 (p. 669):** Gaussian fit of the first BBSAN hump (θ = 90°, M_j 1.35, notched).
- **Fig. 8 (p. 669):** Sr_p of both nozzles and 2Sr_s against M_j (1.0–1.55), with an enlargement for M_j 1.2–1.6. The baseline Sr_p follows the stage jumps of 2Sr_s; the key figure for staging.
- **Fig. 9 (p. 670):** λ_p/D against cos θ for four M_j; source of Table 1.
- **Figs 10–12 (p. 670–671):** near-field spectrum at x/D 5.8, hump amplitude and Sr_p along the jet at M_j 1.10; the screech-free source region is longer and louder downstream.
- **Fig. 13 (p. 671):** integrated BBSAN level against θ for both nozzles at four M_j.

## Notation
- M_j, D_j, U_j: fully expanded Mach number, diameter and velocity; A_j: fully expanded area; D: nozzle diameter; NPR = p₀/p_amb.
- Sr = f D_j/U_j; Sr_s: screech; Sr_p: BBSAN peak; f_p: BBSAN peak frequency; λ_p: wavelength at f_p (= c∞/f_p).
- θ: polar angle from the downstream jet axis.
- U_c, M_c = U_c/c∞: convection velocity and Mach number of the shock-noise structures; L: shock spacing; c∞: ambient sound speed.
- A, σ: amplitude and width of the Gaussian hump fit; n: velocity exponent (Viswanathan).
- P_s, P_amb: static and ambient pressure; x: axial coordinate.
- "Baseline" = smooth-lip nozzle (screeching); "notched" = 24-notch nozzle (screech-free).

## Relevance to this project
This is the reference for **how screech changes the shock train and its broadband noise**. It is a clean experiment: one lab, two near-identical nozzles, and a suppressor shown not to change the first shock cells. Its main result is that screech damps the mean shock train, cutting the downstream BBSAN sources. That matters for any comparison of lab BBSAN, shock-cell models or BBSAN source models with screeching jets, which is most of the lab's data.

**Agreements and contradictions with other notes**
- *Same lab and nozzle as [mercier-2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md)* (D = 38 mm, 0.5 mm lip; Mercier's M_j 1.10 and 1.35 data are André's 2011 campaign). The tones match (Mercier Table 2), the shock spacings match (≈ 0.54 and 1.2D against 0.57 and 1.20; my readings), and the screeching-jet U_c/U_j = 0.61 at M_j 1.35 equals Mercier's lip-line value upstream of the source (0.61, his Table 4). André's screech-free 0.65 sits between Mercier's upstream (≈ 0.6) and downstream (≈ 0.7) values. So the BBSAN U_c of a screeching jet looks like the in-loop U_c, and removing screech removes the dependence on mode.
- *Tam's mechanism for rapid shock decay is confirmed.* [tam-1995](tam-1995-supersonic-jet-noise.md) (p. 32) notes that shock-cell solvers miss the rapid decay of strongly screeching jets. This paper shows that screech itself produces the decay, so linear or PNS shock models are the right ones for non-screeching jets and need a screech-induced correction for screeching ones. [farghadan-2026](farghadan-2026-wave-interactions-screeching-jet.md) supplies that correction in a model: the harmonic resolvent's St = 0 component, the screech self-interaction, reproduces the mean shock-cell change (p. 20–25). [mazharmanesh-2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) measures it in schlieren as one short-time mean per loop (p. 3, 16–19). [krothapalli-1986](krothapalli-1986-screech-tones-mixing-underexpanded-rectangular-jet.md) is the spreading-rate counterpart in a rectangular jet.
- *Staging-locked BBSAN as a far-field sign of two-way coupling* (my reading). Sr_p jumping with each stage (Fig. 8) means the mean shock train or U_c changes with the loop, the "shock spacing both selects the loop and is changed by it" picture of Mazharmanesh 2026 (p. 3, 19). The hump settling between two coexisting tones (M_j ≈ 1.25, 1.40) is what a long-time average over two exclusive states, each with its own mean, would give. This is untested.
- *Tension with [tam-1986](tam-1986-bbsan-screech-relationship.md)* (my arithmetic, from figure readings). Tam's screech-as-BBSAN-limit implies f_p(90°)/f_s = 1 + M_c, about 1.7 with Table 1's baseline U_c. The measured "tuning" gives f_p(90°) ≈ 2f_s: λ_p/D at 90° is 0.72 against λ_s/(2D) ≈ 0.76 at M_j 1.10, and 1.36 against 1.41 at 1.35. A straight line through the baseline λ_p/D points of Fig. 9c reaches only ≈ 2.3 at cos θ = −1, against λ_s/D ≈ 2.8 for the tone (≈ 1.0 against 1.5 at M_j 1.10). Tam tested only strongly underexpanded C-D jets (M_j 1.8, 2.24) and calls his formula approximate below M_j 1.3, so this is a low-M_j limit of his picture rather than a refutation.
- *The 2St_s tuning matches the harmonic-radiation picture* (my reading). f_p(90°) = 2f_s means that the KH wavenumber at the screech harmonic equals the shock wavenumber, k_kh(2St_s) − k_s1 ≈ 0, which radiates sideways. That is the near-zero product [farghadan-2026](farghadan-2026-wave-interactions-screeching-jet.md) finds behind the harmonic's sideline beam (p. 23; loop closing on k_s2). [wong-2021](wong-2021-wavepacket-modelling-bbsan.md) (p. 23) sees a screech harmonic sitting on the measured BBSAN peak near 80° in the group's SJAF jet, and cites this paper for the shortened shock train. So "tuning" may be partly nonlinear, harmonic radiation pulling the hump, rather than only a change in L or U_c. Separating the two needs BMD or bicoherence at (St_s, St_s).
- *Tabs are not a clean screech-free reference.* The paper (p. 665) cites loss of symmetry and shorter shock spacing with tabs. The tab-on spectra in [norum-1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md) (App. E, p. 162) therefore mix both effects. Lip cutouts can go either way: a V-notch removes rectangular-jet screech ([samimy-1998](samimy-1998-rectangular-jet-trailing-edge-control.md)), while symmetric trailing-edge cutouts raise both BBSAN and screech in an overexpanded AR 3 jet ([kerechanin-2001](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md), p. 4–5). That runs opposite to "screech lowers BBSAN", but those cutouts change the shock structure strongly, so it is not a clean test.
- *Screech-raised broadband noise* (my reading of Fig. 2). Without screech the broadband level below Sr ≈ 0.6 falls by about 2–4 dB at M_j 1.10–1.35, consistent with the ≈ 3 dB amplification by strong screech of [tam-1996](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md) (p. 8). The paper does not discuss this. It matters for §IV.C: the mixing-noise master shape comes from the screech-free M_j 1.0 jet, so screech-raised mixing noise in the baseline would be counted as baseline BBSAN. If so, the BBSAN reduction by screech in Fig. 13 is a lower bound.
- *Receptivity.* The notches-act-on-receptivity hypothesis fits the lip-geometry sensitivity in [ponton-1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md) and [raman-1998](raman-1998-supersonic-jet-screech-review.md) (p. 75–78), but the paper has no shear-layer or upstream-wave measurement to test it.

**Methods and data for the lab workflow (CLAUDE.md)**
- Everything here is step 1 of the workflow (spectra, mean images, mean pressures), and it suits both time-resolved and non-time-resolved data. Mean schlieren or mean PIV shows the shock-train extension; far-field arcs give f_p(θ) and U_c via Seiner & Yu without any flow data.
- The paper cannot see *when* screech damps the shocks. Time-resolved schlieren could:
  - SPOD at St = 0 and St_s, and BMD of St_s − St_s → 0 ([schmidt-2020-bispectral-mode-decomposition](schmidt-2020-bispectral-mode-decomposition.md)), as in Mazharmanesh 2026, give the screech-driven mean-flow change directly.
  - SPOD → reconstruction of the tone band ([nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md)) → Hilbert POD ([raiola-2025](raiola-2025-hilbert-pod.md)) gives the instantaneous screech amplitude. Conditioning the short-time mean shock train (or the downstream shock strength) on that amplitude would test whether the damping scales with instantaneous screech level. That is a time-resolved version of the paper's nozzle-versus-nozzle comparison, available in one jet.
  - Near stage jumps and in two-tone ranges, short-time far-field spectra conditioned on which tone is on (from HPOD or a spectrogram) would show whether the BBSAN peak jumps with the tone or genuinely sits between.
- A notched or tabbed twin of a lab nozzle is a cheap way to get a screech-free reference with the same first shock cells. Check the first cells with mean schlieren and the M_j 1.0 spectra as the paper did.

**Modelling side, the PyFR staging LES and rocket noise**
- *BBSAN models.* [wong-2021](wong-2021-wavepacket-modelling-bbsan.md) built its shock cells from mean PIV of a screeching M_j 1.45 jet (p. 9–11). By this paper, such a shock train under-represents the downstream cells of a non-screeching jet, which carry the loudest, highest-frequency BBSAN. A screech-free (or LES) shock train would be the right input for full-scale prediction. Shock unsteadiness at f_s, the paper's last suggestion (p. 672), is also absent from Wong's steady shocks.
- *PyFR staging LES* (`Simulations/PyFR_Staging_Continuation/`, A1 at NPR 2.10 and A2 at 2.25, i.e. M_j ≈ 1.09–1.14, the range of this paper's 1.10 and 1.15 cases). The LES could check whether its mean centreline pressure decays like Fig. 5a, whether the BBSAN peak near 90° on an FW-H surface sits at 2f_s, and whether it jumps between the A1 and A2 states. A run with screech suppressed (a notched lip in the mesh, or damping of the upstream wave) would provide the screech-free reference. β ≈ 0.46 makes BBSAN weak there, as on the jet-noise topic page.
- *Rocket noise.* Full-scale jets do not screech ([lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 9), so screeching lab jets give BBSAN that is up to a few dB too low and too low in frequency, with a mode-dependent U_c. Screech-free lab data are the better calibration (U_c/U_j ≈ 0.65 here). Measured spacing plus the Harper-Bourne–Fisher relation already works at full scale ([mathews-2025](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 36). The paper's own motivation is dual-stream engines at cruise, where a cold underexpanded fan stream does not screech in flight (p. 665–666).

**Items to verify against the PDF**
1. All values read from figures: tone and hump levels (Fig. 2), Ps collapse points (Fig. 5), Sr_p (Fig. 8), λ_p/D (Fig. 9), near-field levels and Sr_p (Figs 10–12), BBSAN level differences (Fig. 13), and the shock-count and spacing readings.
2. The Fig. 8 and Fig. 9 Sr_p readings at M_j 1.10 disagree by about 8% (≈ 1.3 against 1.41 baseline, ≈ 1.6 against 1.75 notched): check the angle (90°) and D used.
3. Whether the Gaussian (eq. 1) was fitted in linear units or dB, and over what band (Fig. 7, p. 669).
4. Which diameter normalises x/D and λ_p/D for the notched nozzle (38.25 or 38.7 mm).
5. Spectral parameters (record length, block size, window) and how the screech tones were "numerically removed" before integration (p. 671); the Sr integration range.
6. T₀ is not given, so U_j, D_j-based Sr and my arithmetic assume ambient stagnation temperature.
7. "This trend was observed consistently for the various values of M_j and θ" (p. 672) against Fig. 13c, where the two nozzles are equal at 70–90° and the notched 40° point is the lowest.

**Candidates for `/add-paper`:** Nagel, Denham & Papathanasiou 1983 (AIAA J. 21, baffle cancellation); Norum 1984 (AIAA 84-2279, reflector control of shock noise); Tam 1990 (JSV 140, BBSAN of moderately imperfectly expanded jets); Morris & Miller 2010 (AIAA J. 48, RANS BBSAN); Viswanathan, Alkislar & Czech 2010 (AIAA J. 48, shock-noise characteristics); Seiner & Yu 1984 (AIAA J. 22, near-field BBSAN); Norum & Seiner 1982 (AIAA J. 20, broadband shock noise); Glass 1968 (AIAA J. 6, feedback and jet spread); Raman 1997 (JFM 336, screech cessation); Panda 1998 (JFM 363, shock oscillation); André, Castelain & Bailly 2011 (Phys. Fluids 23, flight effects) and 2012 (AIAA J. 50, shock oscillations, antisymmetric screech); Bridges & Wernet 2008 (NASA TM 215274).
