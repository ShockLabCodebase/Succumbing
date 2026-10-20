---
key: "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets"
title: "On the two components of turbulent mixing noise from supersonic jets"
authors: ["Tam, Christopher K. W.", "Golebiowski, Michel", "Seiner, John M."]
year: 1996
type: "conference"
venue: "AIAA 96-1716 (2nd AIAA/CEAS Aeroacoustics Conf.)"
bib: {"booktitle": "2nd AIAA/CEAS Aeroacoustics Conference", "note": "AIAA Paper 96-1716, State College, PA, 6–8 May 1996"}
doi: "10.2514/6.1996-1716"
arxiv: ""
pdf: "Tam-EtAl_1996_On-The-Two-Components-Of-Turbulent-Mixing-Noise-From-Supersonic-Jets.pdf"
version: "conference"
unverified: ["DOI not printed on the scan; inferred from the AIAA pattern, not checked"]
group: false
facility: "NASA Langley Jet Noise Laboratory"
data: ["microphones-far"]
methods: ["PSD", "empirical-model"]
flow: ["round-jet", "rectangular-jet", "elliptical-jet", "supersonic", "subsonic", "heated", "underexpanded", "overexpanded", "ideally-expanded"]
phenomena: ["mixing-noise", "Mach-wave-radiation", "directivity", "screech"]
params: {"M_j": "0.98–2.24", "M_d": "1.0–2.0", "TR": "1.0–4.9", "AR": "3, 7.6"}
topics: ["jet-noise-mechanisms", "rocket-noise-models"]
related: ["tam-1995-supersonic-jet-noise", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "papamoschou-1988-compressible-turbulent-shear-layer", "gee-2010-near-field-vector-intensity-solid-rocket-motor", "wong-2021-wavepacket-modelling-bbsan"]
cites: ["norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets", "papamoschou-1988-compressible-turbulent-shear-layer", "tam-1995-supersonic-jet-noise"]
summary: "Origin of the large-scale (F) and fine-scale (G) similarity spectra, from 1,900 NASA Langley spectra (M_j 1.37–2.24, T_r/T_∞ 1–4.9); levels scale with V_j/a_∞; strong screech adds ~3 dB"
---
# On the two components of turbulent mixing noise from supersonic jets

- **Authors:** Christopher K. W. Tam, Michel Golebiowski (Florida State University, Tallahassee), John M. Seiner (NASA Langley Research Center)
- **Source:** AIAA Paper 96-1716, 2nd AIAA/CEAS Aeroacoustics Conference, State College PA, 6–8 May 1996. Conference paper; no DOI is printed on the scan (the AIAA DOI would be 10.2514/6.1996-1716; not checked).
- **PDF:** `References/Paper_PDFs/Tam-EtAl_1996_On-The-Two-Components-Of-Turbulent-Mixing-Noise-From-Supersonic-Jets.pdf` (18 pp.). An NTRS scan with an OCR layer. The prose OCRs acceptably, but every displayed equation and Table 1 are garbled, so eqs. (1)–(10) and the table below were transcribed from 130–300 dpi page renders.
- **Page refs:** PDF page numbers. PDF p. 1 is the AIAA cover sheet, so the paper's printed page n is PDF page n+1. Figures are on PDF pp. 13–18.
- **Tags:** jet mixing noise, two-source model, large-scale similarity spectrum (LSS, F), fine-scale similarity spectrum (FSS, G), Mach wave radiation, instability waves, fine-scale turbulence, directivity, cone of silence, heated supersonic jets, velocity exponent, imperfectly expanded jets, screech, broadband noise amplification, subsonic jets, rectangular and elliptic jets, empirical prediction, NASA Langley Jet Noise Laboratory, narrowband far-field spectra

## Summary
The paper argues that turbulent mixing noise from high-speed jets has two independent parts: Mach wave radiation from large turbulence structures (instability waves), which dominates downstream, and noise from fine-scale turbulence, which dominates sideline and upstream. Because the jet core has no intrinsic length or time scale, each part should have a similarity spectrum that depends only on f/f_peak. Two empirical spectra, F(f/f_L) and G(f/f_F), were fitted to a selected subset of the NASA Langley narrowband data and then checked against all 1,900 axisymmetric spectra (M_j 1.37–2.24, T_r/T_∞ 1.0–4.9). They also fit Ahuja's subsonic (M_j 0.98) data and a pilot set of rectangular and elliptic jets. Peak amplitudes collapse on V_j/a_∞ and T_r/T_∞ rather than M_j, and shock cells barely change the mixing noise, except that strong screech raises both components by about 3 dB across the whole spectrum. The authors read this as evidence against Lighthill's single quadrupole source and for two distinct kinds of turbulence with no continuous cascade between them.

## Key findings
- **Two components with overlapping frequencies** (pp. 3, 5; Figs. 3–5):
  - F fits spectra at downstream angles (χ = 138–160°) and G fits sideline/upstream spectra (χ = 83–120°) across M_j 1.5–2.0 and T_r/T_∞ 0.98–4.89 (p. 5).
  - At intermediate angles (χ ≈ 112–127°) the measured spectrum is the sum of both, with A, B, f_L and f_F fitted per case (p. 5, Fig. 5).
  - Both components contribute over almost the same frequency range, which contradicts the usual idea that large scales give low frequencies and fine scales give high frequencies (p. 5).
  - At very high frequency the F fit is sometimes poorer; the cause is unknown (p. 5).
- **Directivity** (pp. 3, 6; Figs. 1, 6, 7):
  - Following Tam & Chen (1994), large-structure noise dominates for χ > 125° and fine-scale noise for χ < 110° in a Mach 2 jet (p. 3, Fig. 1).
  - The large-structure peak amplitude rises linearly in dB with χ up to a plateau of maximum intensity (M_j 1.8, cold: plateau from χ ≈ 145°, read from Fig. 6) (p. 6).
  - The fine-scale peak amplitude also rises linearly with χ, but more gently (M_j 2.24, cold: from ≈ 75 dB at 60° to ≈ 84 dB at 140°, read from Fig. 7) (p. 6).
- **Correlation parameters** (p. 6): V_j/a_∞ and T_r/T_∞ collapse the data better than M_j. The authors argue M_j matters for BBSAN (shock strength) but not for mixing noise, which has nothing to do with shock cells.
- **Large-structure amplitude at χ = 160°** (p. 6, eqs. 7–8, Fig. 8): velocity exponent n = 10.06 − 0.495 T_r/T_∞, about 9.5 cold. At fixed V_j, a jet at T_r/T_∞ = 2 is about 8.6 dB quieter than a cold jet in the peak direction.
- **Fine-scale amplitude at χ = 90°** (p. 6, eqs. 9–10, Fig. 9): n = 6.4 + 1.2/(T_r/T_∞)^1.4, so 7.6 cold (close to the subsonic V⁸ law) and 6.85 at T_r/T_∞ = 2. At fixed V_j, heating to T_r/T_∞ = 2 lowers the level by about 6.7 dB.
- **Peak Strouhal number** (p. 7, Fig. 10): f_L D_j/a_∞ at χ = 160° levels off at about 0.19 as V_j/a_∞ falls towards 1, independent of temperature. At higher velocity it falls (to ≈ 0.12 at V_j/a_∞ ≈ 2.1, read from Fig. 10). The authors can't explain the plateau; Ahuja's subsonic value is 0.2 (p. 9).
- **Which component dominates** (p. 7, Fig. 11): in the (χ, V_j/a_∞) plane the transition band is broad. Hotter jets move it up and to the left, so at fixed V_j large-structure noise dominates a wider sector. At fixed temperature, higher V_j widens the fine-scale sector.
- **Shock cells** (pp. 7–8, Figs. 12–16): under-, perfectly and over-expanded jets at M_j 1.37, 1.5, 1.8 and 2.0 (T_r/T_∞ 1.0–2.26) give nearly the same F and G spectra and levels, once BBSAN is ignored. This agrees with Kim, Krejsa & Khavaran (1994).
- **Strong screech amplifies broadband noise** (p. 8, Figs. 17–18):
  - An underexpanded jet with strong screech (M_j 1.49, M_d 1.0, cold) is about 3 dB louder than the matched perfectly expanded jet at all frequencies, with the same spectral shape. This holds for the fine-scale part at χ = 112.6° and the large-structure part at χ = 139.4°.
  - The authors link it to the "broadband noise amplification" of tone-excited subsonic jets (3–4 dB; Bechert & Pfizenmaier 1975; Moore 1977) and note it hadn't been reported for screech before. They have no explanation.
  - Strong screech is generated between the 3rd and 4th shock cells. Since fine-scale noise is produced together with the turbulence, they infer the dominant fine-scale source is in the core region centred near the 4th shock cell (p. 8).
- **Subsonic jets have both components** (pp. 8–9, Figs. 19–20):
  - Compressibility effects scale with convective Mach number M_c (Papamoschou & Roshko 1988), which is small for static jets up to moderate supersonic speed, so no change of mechanism is expected at M_j = 1 (p. 8).
  - Subsonic Mach wave radiation is possible because rapid spatial growth and decay of an instability wave broadens its wavenumber spectrum, so some components have supersonic phase speed (Tam & Burton 1984). These radiate close to the jet axis (pp. 8–9).
  - Inside the cone of silence of the fine-scale noise the subsonic spectrum is the loudest and has a different shape (Lush 1971; Ahuja 1973) (p. 9).
  - Ahuja's M_j 0.98 cold spectra (converted from 1/3-octave to narrowband at 100 D_j) are fitted by F at χ = 160° and G at χ = 90° (p. 9). His peak levels fall on the supersonic lines of eqs. 7 and 9 (Figs. 8–9), so those formulas hold for subsonic jets too (p. 9).
- **Non-axisymmetric jets** (pp. 10–11, Figs. 21–22): pilot data from a rectangular C-D nozzle (AR 7.6, M_d 2.0) and an elliptic nozzle (AR 3, M_d 1.98) fit F at χ = 130° and G at χ = 89–108°, in both the major- and minor-axis planes. The authors say this is preliminary and that lobed nozzles or streamwise vortices may behave differently.
- **Interpretation** (pp. 10–11):
  - Acoustic analogy theory implies a single quadrupole source and is "not a good starting point" for jet noise prediction (p. 10).
  - Overlapping frequencies plus distinct sources imply distinct spatial scales: very large and very fine scales with little energy in between, i.e. no continuous cascade. The large structures draw energy from and return it to the mean flow as they grow and decay, which is instability-wave behaviour (p. 11).

## Setup / method
- **Facility and data** (p. 3): Jet Noise Laboratory anechoic chamber at NASA Langley; chamber and microphone array as in Seiner et al. (1992, Ref. 5), not described here.
  - 1,900 axisymmetric far-field spectra in all, **narrowband** with 122 Hz bandwidth, scaled to r = 100 D_j (p. 3).
  - Earlier 1/3-octave data (Yu 1971; Yu & Dosanjh; Norum & Seiner 1982; Tanna 1977) were excluded because good frequency resolution was needed (p. 4).
  - Angle χ is measured from the **inlet** (upstream) axis, so χ = 180° is the downstream jet axis. Polar angle from the jet axis is 180° − χ.
- **Nozzles** (Table 1, p. 11): see Data tables. M_j range studied 1.37–2.24, T_r/T_∞ 1.0–4.9 (p. 3).
- **Fully expanded diameter** (p. 4):
  $$D_j = D\left[\frac{1+\frac{\gamma-1}{2}M_j^2}{1+\frac{\gamma-1}{2}M_d^2}\right]^{\frac{\gamma+1}{4(\gamma-1)}}\left(\frac{M_d}{M_j}\right)^{1/2}$$
- **Fitting procedure** (pp. 4–5): F and G were found empirically from a selected set of spectra, then checked against the whole databank. In a log(f/f_peak) plot the peak of 10 log F (or G) is placed on the measured peak; for intermediate angles A, B, f_L and f_F are adjusted case by case. No objective fitting criterion or error measure is given.
- **Non-axisymmetric pilot** (p. 10): rectangular 2-D C-D nozzle, AR 7.6, M_d 2.0, exit 1.355 cm × 10.243 cm; elliptic nozzle AR 3, M_d 1.98, 6.096 cm × 1.016 cm. T_r/T_∞ 1.8–2.28. φ is the azimuth from the minor-axis symmetry plane.
- **Subsonic comparison** (p. 9): Ahuja's (1973) 1/3-octave data, supplied in tabulated form, converted to narrowband and scaled to 100 D_j; the authors accept some loss of accuracy.
- **Theory or simulation:** none in this paper. The physical argument leans on the stochastic instability-wave model of Tam & Chen (1994), the wavy-wall analogy of Tam & Burton (1984) and mean-flow refraction for the cone of silence (Atvars et al. 1965; Schubert 1972). It is a purely empirical, data-driven paper.
- **Time resolution:** only time-averaged narrowband PSDs are used. No time–frequency analysis, coherence or phase information.

## Key equations
- Two-component similarity form (eq. 1, p. 4), with F(1) = G(1) = 1 and A, B in the units of S:
  $$S = \left[A\,F\!\left(\frac{f}{f_L}\right) + B\,G\!\left(\frac{f}{f_F}\right)\right]\left(\frac{D_j}{r}\right)^2$$
- In decibels (eq. 2, p. 4):
  $$10\log\frac{S}{p_{ref}^2} = 10\log\left[\frac{A}{p_{ref}^2}F\!\left(\frac{f}{f_L}\right)+\frac{B}{p_{ref}^2}G\!\left(\frac{f}{f_F}\right)\right] - 20\log\frac{r}{D_j}$$
  Downstream this reduces to 10 log(A/p²_ref) + 10 log F − 20 log(r/D_j) (eq. 3); upstream to the same with B and G (eq. 4). p_ref is printed as "2 × 20⁻⁵ N/m²", evidently a typo for 2 × 10⁻⁵ Pa (p. 4).
- **Large-structure spectrum** (eq. 5, p. 5), log = log₁₀, x = f/f_L:
  $$10\log F = \begin{cases} 5.64174 - 27.7472\log x, & x \ge 2.5\\ \left[1.06617 - 45.29940\log x + 21.40972(\log x)^2\right]\log x, & 2.5 \ge x \ge 1\\ -38.19338(\log x)^2 - 16.91175(\log x)^3, & 1 \ge x \ge 0.5\\ 2.53895 + 18.4\log x, & 0.5 \ge x \end{cases}$$
  Slopes: −27.7 dB/decade above 2.5 f_L and +18.4 dB/decade below 0.5 f_L. The last branch's range is printed as "0.5 ≥ f/f_F", an evident typo for f/f_L.
- **Fine-scale spectrum** (eq. 6, p. 5), y = f/f_F:
  $$10\log G = \begin{cases} 29.77786 - 38.16739\log y, & y \ge 30\\ -11.8 - \left[27.2523 + 0.8091863\log\frac{y}{10} + 14.851964\left(\log\frac{y}{10}\right)^2\right]\log\frac{y}{10}, & 30 \ge y \ge 10\\ -\left[8.1476823 + 3.6523177\log y\right](\log y)^2, & 10 \ge y \ge 1\\ \left[-1.0550362 + 4.9774046\log y\right](\log y)^2, & 1 \ge y \ge 0.15\\ -3.5 + \left[11.874876 + 2.1202444\log\frac{20y}{3} + 7.5211814\left(\log\frac{20y}{3}\right)^2\right]\log\frac{20y}{3}, & 0.15 \ge y \ge 0.05\\ 9.9 + 14.91126\log y, & 0.05 \ge y \end{cases}$$
  Slopes: −38.2 dB/decade above 30 f_F and +14.9 dB/decade below 0.05 f_F.
- **Continuity checks** (my own, evaluated with the coefficients above): F gives −5.40 dB from both sides at x = 2.5, 0 at x = 1 and −3.00 at x = 0.5. G gives 0 at y = 1, −11.8 at y = 10, −3.5 at y = 0.15 and −9.5 at y = 0.05. At y = 30 the first branch gives −26.60 dB, which the second branch matches only if its logs are log(y/10).

> **Verify eq. 6, branch 2, against the PDF (p. 5) or a clean copy:** on the scan its three logs read as log(f/f_F), not log(f/(10 f_F)). As printed, it gives −54.7 dB at y = 10 and about −102 dB at y = 30, so the curve would jump. The log(y/10) form above makes it continuous and is my reconstruction. The other branches were read from a 300 dpi render and pass the continuity checks. The coefficients of eq. 5 confirm the "from memory" values 45.29940 and 38.19338 quoted in the [Mathews & Gee 2025 note](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md), so its printed 42.2994 and 50.19338 are modifications or typos there.

- **Large-structure peak level at χ = 160°, r = 100 D_j** (eqs. 7–8, p. 6), dB per 1 Hz band:
  $$10\log\frac{A}{p_{ref}^2} = 75 + \frac{46}{(T_r/T_\infty)^{0.3}} + 10\log\left(\frac{V_j}{a_\infty}\right)^n,\qquad n = 10.06 - 0.495\,\frac{T_r}{T_\infty}$$
- **Fine-scale peak level at χ = 90°, r = 100 D_j** (eqs. 9–10, p. 6), dB per 1 Hz band:
  $$10\log\frac{B}{p_{ref}^2} = 83.2 + \frac{19.3}{(T_r/T_\infty)^{0.62}} + 10\log\left(\frac{V_j}{a_\infty}\right)^n,\qquad n = 6.4 + \frac{1.2}{(T_r/T_\infty)^{1.4}}$$
- The SPL plotted in Figs. 6–9 is 10 log(A/p²_ref) − 40 dB (or B), i.e. eq. 3/4 with the −20 log(r/D_j) term at r = 100 D_j (p. 6).
- **Checks** (my own): eq. 7 cold at V_j/a_∞ = 1 gives 121 − 40 = 81 dB, matching the Fig. 8 fit line at V_j/a_∞ = 1 (≈ 81–82 dB, read from figure). Eq. 9 gives 102.5 − 40 = 62.5 dB, matching Fig. 9 (≈ 63 dB). The temperature terms reproduce the quoted 8.6 dB (46 − 46/2^0.3 = 8.63) and 6.7 dB (19.3 − 19.3/2^0.62 = 6.74) and n = 7.6 and 6.85.
- Quoted for contrast (p. 6): shock strength for BBSAN ∝ (M_j² − M_d²)²/(1 + ½(γ−1)M_d)², and the instability-wave–shock interaction intensity ∝ M_j²/(1 + ½(γ−1)M_j²) times shock strength. Transcribed as printed; the first denominator may be missing a square on M_d.

## Data tables
**Nozzles used in the NASA Langley experiments** (Table 1, p. 11):

| M_d | D (cm) | Nozzle type | M_j range | T_r/T_∞ range |
|---|---|---|---|---|
| 1.0 | 3.952 | convergent | 1.37–1.8 | 1.0–2.24 |
| 1.5 | 4.267 | C-D | 1.37–1.8 | 1.0–2.35 |
| 2.0 | 4.989 | C-D | 1.5–2.24 | 1.0–2.26 |
| 2.0 | 9.144 | C-D | 2.0 | 1.12–4.9 |

**Spectra shown in the figures** (captions, pp. 13–18), SPL_max at 100 D_j in a 122 Hz band:

| Fig. | Component | M_j (M_d) | T_r/T_∞ | χ (deg) | SPL_max (dB) |
|---|---|---|---|---|---|
| 3a–d | F | 2.0, 2.0, 1.96, 1.49 | 4.89, 1.12, 1.78, 1.11 | 160.1, 160.1, 138.6, 138.6 | 124.7, 121.6, 121.0, 106.5 |
| 4a–d | G | 1.49, 2.0, 1.96, 1.96 | 2.35, 4.89, 0.99, 0.98 | 92.9, 83.8, 83.3, 120.2 | 96, 107, 95, 100 |
| 5a–c | F + G | 1.49, 1.49, 1.96 | 2.25, 1.33, 1.79 | 112.6, 126.9, 120.2 | 101.5, 100.5, 107.0 |
| 14a–d | G, off-design | 1.37 (1.5), 1.37 (1.0), 1.8 (2.0), 1.8 (1.5) | 1.81, 1.87, 2.26, 2.22 | 90 | 98, 104, 106, 111 |
| 15a–d | F, off-design | 1.37 (1.0), 1.37 (1.5), 1.8 (2.0), 1.8 (1.5) | 1.81, 1.87, 2.26, 2.22 | 139.4 | 114, 112, 120, 121 |
| 17 | G, screech | 1.49 (1.49) vs 1.49 (1.0) | 1.0 | 112.6 | ≈ +3 dB broadband |
| 18 | F, screech | same jets | 1.0 | 139.4 | ≈ +3 dB broadband |
| 19, 20 | F, G (Ahuja) | 0.98 | 1.0 | 160, 90 | — |

> The Fig. 14 caption pairs M_d 1.5 with case (a) and 1.0 with (b), while Fig. 15 pairs them the other way round; transcribed as printed (p. 16).

## Figures worth remembering
- **Fig. 1 (p. 13):** directivity of a Mach 2 jet (T_0 = 500 K) at St = 0.067–0.40 (Seiner et al. 1992): flat ~85–90 dB for χ < 110°, rising to a peak near χ ≈ 140–155° that moves upstream as St rises.
- **Fig. 2 (p. 13):** the two similarity spectra against f/f_peak (0.03–30). F is sharply peaked with near-linear roll-offs; G is broad and flat-topped. This is the figure reused in rocket-noise and BBSAN papers.
- **Figs. 3–5 (pp. 13–14):** F, G and F + G fits to measured narrowband spectra.
- **Figs. 6–9 (pp. 14–15):** peak amplitude against χ and against V_j/a_∞, with the fits of eqs. 7 and 9 for T_r/T_∞ 1.0–4.9.
- **Fig. 10 (p. 15):** peak Strouhal f_L D_j/a_∞ at χ = 160°: plateau ≈ 0.19 for V_j/a_∞ ≲ 1.6, falling at higher speed; Ahuja's 0.2 shown as a bar.
- **Fig. 11 (p. 15):** shaded transition bands (χ ≈ 105–135°, V_j/a_∞ ≈ 1–2.5) separating fine-scale-dominant (upper left) and large-structure-dominant (lower right) regions for T_r/T_∞ = 1.0, 1.4, 1.8, 2.2 (read from figure).
- **Figs. 12–16 (pp. 15–16):** off-design vs perfectly expanded jets; BBSAN hump visible on top of an otherwise unchanged G spectrum in Fig. 12b.
- **Figs. 17–18 (p. 17):** strong-screech broadband amplification of about 3 dB.
- **Figs. 19–20 (p. 17):** Ahuja's M_j 0.98 jet fitted by F (160°) and G (90°).
- **Figs. 21–22 (p. 18):** elliptic and rectangular jets fitted by F and G.

## Notation
- F, G: large-structure and fine-scale similarity spectra (often LSS and FSS in later work). f_L, f_F: their peak frequencies. A, B: their amplitudes.
- S: sound power spectrum, dB per 1 Hz band (the paper says "sound power", but it is a pressure PSD at a point).
- χ: angle from the **inlet** axis (χ = 180° is downstream). φ: azimuth from the minor-axis plane for non-axisymmetric jets.
- D, D_j: nozzle exit and fully expanded diameters. M_d, M_j: design and fully expanded Mach numbers. V_j: fully expanded velocity. T_r: reservoir (total) temperature. a_∞, T_∞: ambient sound speed and temperature. St = f D_j/V_j (but Fig. 10 uses f_L D_j/a_∞). M_c: convective Mach number.

## Relevance to this project
This is the source of the Tam large- and fine-scale similarity spectra used throughout rocket-noise modelling (CLAUDE.md, second research area), and it also bears on how the lab interprets screech and impinging-jet acoustics.

- **Rocket noise modelling:**
  - The [Lubert et al. 2022 review](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) cites these spectra (p. 9–10 there) and finds that for the Shuttle RSRM the LSS fits the 45° (from plume axis) peak while the FSS fits 125° only at low frequency, and that several groups find LSS/FSS unsuitable for rockets. Read with this paper's limits in mind: the fits here are for lab jets up to T_r/T_∞ ≈ 4.9 and V_j/a_∞ ≲ 3 and use no nonlinear propagation, while full-scale rockets are much hotter, faster (M_c higher) and measured with acoustic shocks that steepen the high-frequency slope.
  - The [Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) builds on the two-source picture (Tam & Chen 1994; Tam 1995; this paper) and, with the [Mathews & Gee 2025 paper](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md), uses a modified F with slopes f^2.5 / f^−2.2 (vs +18.4 / −27.7 dB/decade here) to compute ground-reflection factors. The original coefficients of eq. 5 here settle the coefficient question flagged in that note.
  - Eqs. 7–10 are the lab-jet amplitude scalings (n ≈ 9.5 cold for large structures, 7.6 for fine scales) and the temperature corrections. Compare them with the acoustic-efficiency approach of SP-8072 and SATURN before using either at rocket conditions.
  - Angle conventions differ: χ here is from the inlet, whereas rocket papers mostly use angle from the plume axis (θ = 180° − χ).
- **Convective Mach number:** the subsonic-jet argument rests on [Papamoschou & Roshko 1988](papamoschou-1988-compressible-turbulent-shear-layer.md): compressibility matters only when M_c approaches 1, so nothing special happens at M_j = 1 for static jets. The same M_c sets Mach-wave directivity in the rocket notes (Oertel M_c in Lubert 2022, [Mathews et al. 2021](mathews-2021-falcon-9-far-field-noise.md)).
- **Screech and shock-containing jets (lab work):**
  - Strong screech raises both broadband components by about 3 dB without changing their shape (Figs. 17–18). This is worth checking in the lab's screeching-jet microphone data before attributing broadband differences to nozzle changes; [Norum & Seiner 1982](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md) is from the same Langley lab and has screech-suppression-tab data for a direct comparison.
  - The placement of strong screech generation between the 3rd and 4th shock cells (p. 8) can be compared with the guided-mode closure studies, which place the upstream-wave peak near the 4th–5th shock cell ([Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [Edgington-Mitchell 2020](edgington-mitchell-2020-waves-in-screeching-jets.md)).
  - For BBSAN modelling on top of G, see [Wong et al. 2021](wong-2021-wavepacket-modelling-bbsan.md).
- **Large structures as instability waves:** the paper's conclusion that large structures are instability waves that grow and decay, radiating through their broadened wavenumber spectrum, is the empirical root of the wavepacket view in later SPOD and resolvent work ([Pickering et al. 2020](pickering-2020-lift-up-kh-orr-jets.md), [Gee et al. 2010](gee-2010-near-field-vector-intensity-solid-rocket-motor.md) for a near-field rocket test of the two-source picture). The "no cascade" claim is an inference from spectral shapes only; the paper presents no turbulence measurement to support it.
- **Methods and data dependence:**
  - Everything here is time-averaged far-field PSD (122 Hz narrowband), so it needs time-resolved acoustic data but no flow-field data. Fitting F + G to a microphone spectrum is a quick way to split a lab jet's mixing noise by angle before modal analysis.
  - The decomposition is by spectral shape and angle only; it gives no time information. Whether the two components are intermittent, or how the 3 dB screech amplification varies with screech amplitude over time, could be tested with the SPOD → reconstruction → Hilbert POD pipeline on time-resolved schlieren plus microphones (see [Raiola & Kriegseis 2025](raiola-2025-hilbert-pod.md)). That is a suggestion, not something in the paper.
  - The pilot result that rectangular and elliptic jets follow the same F and G is relevant to the lab's non-axisymmetric nozzle work, but it covers only design-point AR 3 and AR 7.6 nozzles at a few angles.
- **Candidates for `/add-paper`:** Tam & Chen 1994 (stochastic instability-wave model); Tam & Burton 1984 (Mach wave radiation from instability waves); Tam 1995 (Supersonic jet noise, Annu. Rev.); Seiner, Bhat & Ponton 1994; Seiner et al. 1992 (temperature effects, the data source); Kim, Krejsa & Khavaran 1994; Ahuja 1973; Tam et al. 2008 (the later JFM update of the similarity spectra).
