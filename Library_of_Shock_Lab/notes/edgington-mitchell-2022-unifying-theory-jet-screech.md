---
key: "edgington-mitchell-2022-unifying-theory-jet-screech"
title: "A unifying theory of jet screech"
authors: ["Edgington-Mitchell, D.", "Li, X.", "Liu, N.", "He, F.", "Wong, T. Y.", "Mackenzie, J.", "Nogueira, P."]
year: 2022
type: "article"
venue: "JFM 945, A8"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "945", "pages": "A8"}
doi: "10.1017/jfm.2022.549"
arxiv: ""
pdf: "screech/EdgingtonMitchell-EtAl_2022_A-Unifying-Theory-Of-Jet-Screech.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility; Tsinghua University"
data: ["schlieren-TR", "microphones-far"]
methods: ["SPOD", "DMD", "POD-pair", "wavenumber-filtering", "PSD"]
flow: ["round-jet", "elliptical-jet", "rectangular-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "staging", "guided-jet-mode", "shock-cells", "triadic-interaction", "mode-switching", "shock-leakage", "multimodal", "standing-waves"]
params: {"NPR": "2.1–4", "D": "10 mm", "AR": "1; 2 (elliptical, rectangular); 4 (rectangular)", "TR": "1 (unheated)"}
topics: ["screech", "non-axisymmetric-jets"]
related: ["edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "tam-1982-shock-associated-noise-cd-nozzles", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech"]
cites: ["alkislar-2003-screeching-rectangular-jet-stereo-piv", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "nogueira-2021-absolute-instability-shock-containing-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance", "schmid-2010-dynamic-mode-decomposition", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Staging unified: guided jet mode closes at k_kh − k_s1 (A1, B) or suboptimal shock peaks k_s2/k_s3 (A2, C); Tsinghua DMD + Monash SPOD schlieren; explains multimodal tones"
---
# A unifying theory of jet screech

- **Authors:** D. Edgington-Mitchell, X. Li, N. Liu, F. He, T. Y. Wong, J. Mackenzie, P. Nogueira (Edgington-Mitchell, Wong, Mackenzie, Nogueira: Monash University; Li, Liu, He: Tsinghua University, Beijing; p. 1)
- **Source:** J. Fluid Mech. 945, A8 (2022), doi:10.1017/jfm.2022.549. Open access (CC BY 4.0). Received 12 Nov 2021, accepted 3 Jun 2022.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/EdgingtonMitchell-EtAl_2022_A-Unifying-Theory-Of-Jet-Screech.pdf` (24 pp.). Page refs below are the journal pages A8-n, which equal the PDF page numbers.
- **Tags:** screech, mode staging (A1/A2/B/C), multimodal screech, guided jet mode (G-JM), triadic interaction, Tam & Tanna (1982), shock-cell wavenumber spectrum, suboptimal shock peaks, standing waves, duct-like mode, high-speed schlieren, SPOD, DMD, streamwise Fourier transform, sliding-window wavenumber transform, elliptical and rectangular jets, shock leakage, screech directivity

## Summary
The paper proposes one mechanism for every screech stage. The streamwise Fourier transform of the mean shock structure has a primary peak k_s1 plus "suboptimal" peaks k_s2, k_s3, … that come from the shock spacing shrinking downstream (p. 5, 7–8). The KH wavepacket interacts triadically with any of these peaks, and the upstream guided jet mode (G-JM) that closes the loop sits at k_kh − k_s1 in the A1 and B stages and at k_kh − k_s2 in the A2 and C stages (p. 11–12). Evidence comes from high-speed schlieren of two converging-nozzle jets (D = 10 mm, NPR 2.1–4), one from Tsinghua (DMD) and one from Monash (SPOD), plus earlier elliptical-jet data (p. 6, 18). Allowing for suboptimal peaks reconciles the shock-spacing model of Powell and Tam (eq. 1.1) with Panda's standing-wave model (eq. 1.3), because the standing wave matches whichever shock peak the active loop uses (p. 5, 11). Multiple simultaneous tones come from different shock peaks, different azimuthal modes, or both (p. 14–17). Staging is absent in high-aspect-ratio jets because their shocks decay too quickly to give a suboptimal peak (p. 18–19). The far-field sound is attributed to both linear radiation from acoustically matched wavenumbers and nonlinear shock leakage. In axisymmetric jets the radiated sound is not part of the loop (p. 20–22).

## Key findings
- **The mean shock structure has several spectral peaks** (p. 7–8, Fig. 3–4):
  - Centreline FFTs of the mean schlieren images show a primary peak k_s1 from the region of near-constant spacing and a series of suboptimal peaks from the faster change in spacing further downstream (p. 7–8). Harmonics of k_s1 also appear (p. 8).
  - The two facilities give very similar spectra despite different nozzles (Fig. 3, p. 8).
  - In the flapping B mode, k_s2 is much weaker and the k_s1 harmonic stronger. At other conditions k_s2 is stronger (p. 8–9, 11–12).
- **Standing wave matches k_s1 or k_s2 depending on the stage** (p. 11, Fig. 6):
  - k_sw (from the FFT of |φ| at y/D = 0.5) agrees with k_s1 for the A1 and B modes and with k_s2 for the A2 and C modes, in both datasets.
  - This holds even at conditions that switch quickly between two modes: Tsinghua NPR 2.4 (B on k_s1, A2 on k_s2) and 3.18 (B on k_s1, C on k_s2), and Monash NPR 2.3 (B on k_s1, A2 on k_s2) (p. 11).
  - The authors read the stage-dependent strength of k_s2 as **two-way coupling**: the resonance's standing wave helps set the mean shock structure. Otherwise the jump in shock spectrum between NPR 3.1 and 3.18 (Tsinghua) or 2.8 and 2.9 (Monash) would be unexpected (p. 12).
- **G-JM wavenumber = k_kh − k_s1 or k_kh − k_s2** (p. 12–13, Fig. 7–8):
  - At y/D = 0.5 the most energetic negative wavenumber matches k_kh − k_s1 in A1 and B and k_kh − k_s2 in A2 and C, across both NPR sweeps.
  - The acoustic wavenumber −k_a (phase speed a∞) sits consistently below the energy peak in magnitude, so the measured wave is the slightly subsonic G-JM, not free-stream sound (p. 12).
  - **Precursors of mode switches:** at Tsinghua NPR 2.15 there is already a secondary peak at k_kh − k_s2. By NPR 2.2 it is stronger than the k_kh − k_s1 peak, before the A1→A2 switch at NPR 2.25. The Monash data show the same growth at NPR 2.8, before its switch, though still weaker than k_kh − k_s1 (p. 13).
- **Radial structure separates the waves** (p. 13–14, Fig. 9–10):
  - At NPR 2.15 (A1), both k_kh − k_s1 and k_kh − k_s2 carry energy in the shear layer. The k_s1 product extends well outside the jet, but the k_s2 product decays quickly outside the shear layer.
  - The authors interpret the k_kh − k_s2 wave at A1 as a **duct-like mode** with negative phase velocity but positive group velocity (Towne et al. 2017), which cannot close the loop (p. 13).
  - At NPR 2.3 (A2), the k_kh − k_s2 energy is no longer confined to the jet, which is the signature of a G-JM that can support resonance. There is little energy at k_kh − k_s1 in A2 (p. 13). This is clearer in the Tsinghua data; Monash NPR 2.3 is the least clear case in the paper (p. 13).
  - In every case, the peak energy moves to −k_a by |y/D| > 2. So the triadic interaction energises the G-JM but does not directly produce the upstream sound; that comes from energy leaked to supersonic (acoustically matched) wavenumbers, a Mach-wave-like mechanism as in Tam & Tanna (1982) (p. 13–14).
- **Many standing waves, not one** (p. 9–11, Fig. 5): the near field holds standing waves from every pair of the KH wavepacket, the G-JM, upstream acoustic waves and downstream acoustic waves. KH + G-JM dominates at the lipline and decays fast. KH + upstream acoustic wave is at lower k, weaker at the lipline but decays more slowly, so it dominates further out. Furthest out, the standing wave is between upstream and downstream acoustic waves (p. 10–11).
- **Multimodal screech** (p. 14–17, Fig. 11–12):
  - Monash NPR 2.3: St = 0.62 (m = 0, A2, closed via k_kh − k_s2) coexists with St = 0.45 (m = 1, probably B, closed via k_kh − k_s1) (p. 14, Fig. 11). Tsinghua shows the same at NPR 2.4, and simultaneous B and C (both m = 1) at NPR 3.18 (p. 14).
  - Monash NPR 3.3 has four SPOD peaks in 0.25 ≤ St ≤ 0.4, none harmonics of another (p. 15–16, Fig. 12). Ordered by SPOD energy:
    1. St 0.36: m = 0, closed via k_kh − k_s2.
    2. St 0.39: closed via **k_kh − k_s3** (third shock peak).
    3. St 0.33: m = 1, closed via k_kh − k_s2.
    4. St 0.28: closed via k_kh − k_s3.
    - The text says the k_s3 cases occur for both m = 0 and m = 1 (p. 17). From the mode shapes in Fig. 12, St 0.39 looks symmetric (m = 0) and St 0.28 antisymmetric (m = 1).
    - None of the four uses k_s1 (p. 17). The k_s3 modes are almost as energetic as the k_s2 ones.
  - A dominant m = 0 mode at NPR 3.3 is unusual (classically only A1/A2 are m = 0). The authors attribute it to the Monash facility's upstream reflecting plate (p. 16).
  - So multimodality can come from a change of shock peak, a change of azimuthal mode, or both (p. 1, 17).
- **Suboptimal peaks are local quasi-periodicities** (p. 17–18, Fig. 13):
  - A sliding short-window FFT along x (window about two shock cells) finds, for each condition, the window that best matches k_s1, k_s2 and k_sw.
  - k_s1 is always reproduced by a two-shock-cell window, often but not always the first two cells.
  - k_s2 corresponds to a local quasi-periodicity in windows starting between the **5th and 8th shock cell** (p. 17).
  - A local window also reproduces k_sw closely, sometimes better than the global k_s2 of Fig. 6, except at the highest NPR where the shock train runs past the imaging domain (p. 17).
  - So the closure condition is k_G = k_KH − k_sL, where k_sL is a local quasi-periodicity that can sit at different axial positions (p. 17).
- **Non-axisymmetric jets** (p. 18–19, Fig. 14–15):
  - AR = 2 elliptical jet (Edgington-Mitchell et al. 2015): at NPR 2.6 the G-JM sits at k_kh − k_s1; after the jump to higher frequency at NPR 3.2 it sits near k_kh − k_s2. This stage jump happens **without a change in dominant azimuthal symmetry**, unlike most staging other than A1–A2 (p. 18).
  - AR = 2 rectangular jet has a strong secondary shock peak; AR = 4 has one broad peak with no clear suboptimal (one might be hidden under it) (Fig. 15a, p. 19). Strong flapping at high AR breaks the shocks down quickly (shocks displaced by up to half a jet width by the third cell; Fig. 15c), so there is no k_s2 and no staging. This matches reports of no staging for rectangular and elliptical jets with AR ≥ 4 and a single stage change at AR = 3 (p. 18–19).
  - A sharp peak is not required for resonance: all shock wavenumbers transfer energy, but a neutral or weakly damped G-JM must exist at the product wavenumber and frequency, with a sufficiently unstable KH wave. The triadic interaction is one necessary part of the global stability of the system (p. 19).
- **Far-field sound** (p. 20–22, Fig. 16):
  - Applying Tam & Tanna's wavy-wall analogy to the acoustically matched part of the schlieren wavenumber spectrum (|k| ≤ k_a) gives a directivity whose upstream/downstream balance agrees with Norum (1983). This supports a distributed, Mach-wave-type source (Tam et al. 1986) (p. 20). The authors stress this is qualitative, since schlieren intensity is not a sound-radiating quantity (p. 20).
  - Single-source localisations (Raman 1997; Mercier et al. 2017; Semlitsch et al. 2020) relied on assuming one source and are inconclusive; direct visualisations of shock leakage are extensive (p. 20–21).
  - Both linear radiation and nonlinear shock leakage contribute to the far field; the linear model gives no amplitude (p. 21). In axisymmetric and low-AR jets the triadic mechanism sets the frequency and shock leakage is a correlated by-product. In high-AR jets shock-leakage sound might close the loop (p. 21–22).
- **Proposed theory** (p. 22): KH × local shock quasi-periodicity (peaks of the streamwise wavenumber spectrum) energises many wavenumbers, including the G-JM, which closes the loop. Nonlinear KH–shock interaction also radiates high-amplitude sound, but in axisymmetric jets this sound is not part of the resonance.

## Setup / method
- **Facilities:**
  - **Tsinghua data** (Li et al. 2021): converging nozzle, D = 10 mm, contraction from 25 to 10 mm, lip thickness 0.5D (p. 6).
  - **Monash data** (previously unpublished): Shock Lab group facility (the paper names Monash University but not the lab space). Converging nozzle, D = 10 mm; a single-jet version of the Bell et al. (2018) twin-jet geometry. Lip thickness 0.15D, short, smaller contraction. A large solid plate sits about 2D upstream of the exit, which changes entrainment and strongly reflects upstream acoustic waves (p. 6). This plate is blamed for the many extra peaks and the complex behaviour for NPR ≥ 2.9 (p. 6–7, 14–16).
  - **Elliptical jet:** AR = 2, from Edgington-Mitchell, Honnery & Soria (2015); the analysis uses the complex POD mode pair (Fig. 14, p. 19). Five stages in 2 ≤ NPR ≤ 5 (p. 18).
  - **Rectangular jets:** AR = 2 and 4, mean and instantaneous colour schlieren (Fig. 15). The source of these data is not stated.
- **Conditions:** unheated jets, NPR = p₀/p∞ = 2.1–4 (p. 6); the Monash sweep plots start near 2.0 (Fig. 1, 4, 8).

| Stage | Tsinghua NPR | Monash NPR | m | Closure (G-JM at) |
|---|---|---|---|---|
| A1 | 2.1–2.2 (switch at 2.25) | 2.1–2.2 | 0 | k_kh − k_s1 |
| A2 | from 2.25 | slightly lower than Tsinghua; at 2.3 | 0 | k_kh − k_s2 |
| B (precessing flapping) | to ≈ 3.2 | to ≈ 2.8 | 1 | k_kh − k_s1 |
| C (helical) | from 3.18 | from ≈ 2.9 (not a true m = 1 helix; complex) | 1 (Tsinghua) | k_kh − k_s2 (also k_s3 at Monash NPR 3.3) |

Stage ranges from p. 8, 11, 13; the Fig. 4 transition lines sit at about NPR 2.2, 2.4 and 3.2 (Tsinghua) and 2.15, 2.3 and 2.85 (Monash), read from the figure.

- **Schlieren (both):** Photron SA-Z cameras with pulsed LED illumination (Willert et al. 2010), knife-edge giving ∂ρ/∂x. The knife-edge is rotated 180° between facilities, so the sign of intensity vs gradient flips (p. 6–7). Field of view about 0 ≤ x/D ≤ 8–10 (figures; the shock FFT uses 0 ≤ x/D ≤ 10).
  - Tsinghua: 2,000 images at 80,000 fps per condition; **DMD** (Schmid 2010) gives the mode at the resonance frequency (p. 6).
  - Monash: 50,000 images at 150,000 fps per condition; **SPOD** (Towne et al. 2018) gives the modes (p. 6). SPOD block size, overlap and window are not stated.
  - Both are time-resolved. The elliptical data use a POD pair instead.
- **Acoustics (Monash):** G.R.A.S. Type 46BE 1/4" microphone, described as 10D downstream and 50D radially at 45° from the downstream axis (Stavropoulos et al. 2021). 500,000 samples at 200 kHz per condition; Welch PSD with 4096-point windows and 75% overlap (p. 6). Fig. 1 shows the SPOD peaks line up with the acoustic tones.
- **Wavenumber analyses** (all streamwise FFTs; no spatial window or taper is stated):
  1. *Mean shock spectrum* |Î(k)|: FFT of the time-averaged schlieren intensity along y/D = 0 over 0 ≤ x/D ≤ 10. The peak wavenumber was insensitive to the radial line, the second peak's amplitude somewhat sensitive (p. 7). k_s1 and k_s2 are picked from these spectra (p. 9).
  2. *Standing wave* k_sw: FFT of |φ| (modulus of the DMD/SPOD mode) along y/D = 0.5, chosen to capture the KH + G-JM standing wave (p. 11).
  3. *Travelling waves:* FFT of the complex mode φ along x, at y/D = 0.5 (Fig. 7–8) or at every y (Fig. 9–12), following Edgington-Mitchell et al. (2021a); energy per wavenumber ∝ |φ̂_k| (p. 12). The KH wave gives k > 0; the G-JM gives k < 0. Spectra are normalised so that the positive-k and negative-k peaks each equal 1 (Fig. 7–8).
  4. *Local quasi-periodicity:* sliding short-window FFT along x, "in the manner of a spectrogram"; the window that best matches each target wavenumber is kept (p. 17).
- **No stability or model calculation in this paper.** The theoretical side is borrowed: Tam & Tanna (1982) triadic interaction (eq. 1.5), Nogueira et al. (2022a) local LSA and spatially periodic LSA for A1/A2, Nogueira et al. (2022b) absolute instability, Towne et al. (2017) for the duct-like mode, Tam & Hu (1989) for G-JM radial decay, and Tam & Tanna's wavy-wall analogy for Fig. 16 (p. 4–5, 10, 13, 20). The paper's argument is experimental: it tests the wavenumber-matching prediction across all stages.

## Key equations
Checked against rendered pages 2–5.

- **Powell / Tam et al. (1986) screech frequency** (eq. 1.1, p. 2):
  $$f_s=\frac{U_c\,k_S}{2\pi(1+M_c)}$$
  In Tam et al. (1986) k_S is really a series k_n, n = 1, 2, 3, …, but higher-order terms were usually neglected (p. 2).
- **Panda (1999) standing wave** (eq. 1.2, p. 2): $k_{sw}=k_u+k_d$, with $k_u=\omega_s/u_u$, $k_d=\omega_s/u_d$.
- **Standing-wave frequency** (eq. 1.3a,b, p. 3):
  $$f_s=\frac{U_c\,k_{sw}}{2\pi(1+M_c)}\quad\text{(acoustic upstream wave)},\qquad f_s=\frac{u_d\,k_{sw}}{2\pi(1+u_d/u_u)}\quad\text{(general)}$$
  Check: ω_s(1/u_u + 1/u_d) = k_sw gives ω_s = u_d k_sw/(1 + u_d/u_u); u_u = a∞ and u_d = U_c recover (a). With constant wave speeds this is an identity, not a model (p. 3). (1.1) and (1.3) both hold only if k_s = k_sw, which A1 satisfies and A2 does not (p. 3).
- **Gao & Li (2010) empirical multi-stage formula** (eq. 1.4, p. 3), as printed:
  $$f_s=\frac{m}{nL}\,\frac{CD}{1+M_c}$$
  m = number of concurrent waves (5 for A1/B, 6 for A2/C), n = 5 shock cells in the effective source region, L = mean shock spacing, C relates convective Mach number to ideally expanded velocity, D = diameter.
- **Tam & Tanna interaction from the linearised convective term** (eq. 1.5, p. 5), as printed:
  $$\tilde u\,\partial_x\tilde u-U\partial_xU\approx \mathrm ik_xUu'\,e^{-\mathrm i\omega t+\mathrm ik_xx+\mathrm im\theta}+\mathrm iu'U_{sh}\tfrac12\Big(k_s\,e^{-\mathrm i\omega t+\mathrm i(k_x+k_s)x+\mathrm im\theta}-k_s\,e^{-\mathrm i\omega t+\mathrm i(k_x-k_s)x+\mathrm im\theta}\Big)$$
  with U = U_sm + U_sh·½(e^{ik_s x} + e^{−ik_s x}) as in the 2020 note.
- **Closure condition** (p. 12, 17): $k_{G\text{-}JM}=k_{kh}-k_{s_{1,2}}$, generalised to $k_G=k_{KH}-k_{s_L}$ for a local quasi-periodicity k_sL. Acoustic reference: $k_a=\omega/a_\infty$.

> Points to check against the PDF:
> - **Eq. 1.5:** the second line keeps only the u′∂_xU part of the shock term. A full linearisation also gives U_sh terms from U∂_x u′, so the sum and difference terms would carry (k_x ± k_s) rather than ±k_s. The first term may be meant with the full U(x). The structure of the exponents, which is what the paper uses, is unaffected.
> - **Eq. 1.4** is dimensionally odd as printed (C D/(nL) is dimensionless, so f_s would need a velocity). Check against Gao & Li (2010) before using it.
> - **Window length (p. 17):** printed as "π/k_s1, i.e. a length of two shock cells". One shock cell is 2π/k_s1, so two cells would be 4π/k_s1. Which one was used is unclear.
> - **Units of kD:** not stated. Fig. 6 values (k_s1 D ≈ 4.5 at NPR 4, ≈ 13 at NPR 2.1) match shock spacings of about 1.4D and 0.5D only in radians per D, so these figures appear to be in rad/D, unlike the cycles-per-D axis of the 2018 paper (my check against Prandtl–Pack spacing, not stated in the paper).
> - **Microphone position (p. 6):** "10D downstream and 50D in the radial direction at an angle of 45°" is not geometrically consistent as written.

## Data tables
**Wavenumbers read from Fig. 6 (p. 11)** (approximate; verify before quoting):

| Dataset | NPR | k_s1 D | k_s2 D | Stage |
|---|---|---|---|---|
| Tsinghua | 2.1 | ≈ 12.8 | ≈ 15.4 | A1 (k_sw ≈ k_s1) |
| Tsinghua | 3.0 | ≈ 5.5 | ≈ 7.0 | B (k_sw ≈ k_s1) |
| Tsinghua | 4.0 | ≈ 4.2 | ≈ 5.3 | C (k_sw ≈ k_s2) |
| Monash | 2.05 | ≈ 13.7 | ≈ 15.0 | A1 |
| Monash | 4.0 | ≈ 4.5 | ≈ 5.5 | "C" (k_sw ≈ k_s2) |

**Wave peaks read from Fig. 7–8 (p. 12–13):** KH peak at kD ≈ 7 near NPR 2 falling to ≈ 3 at NPR 4; G-JM peak at kD ≈ −4 to −5 near NPR 2 rising to ≈ −3 at NPR 4.

**Multimodal SPOD peaks, Monash** (Fig. 11–12, p. 15–16):

| NPR | St | m | Closure | SPOD energy rank |
|---|---|---|---|---|
| 2.3 | 0.62 | 0 (A2) | k_kh − k_s2 | – |
| 2.3 | 0.45 | 1 (B?) | k_kh − k_s1 | – |
| 3.3 | 0.36 | 0 | k_kh − k_s2 | 1 |
| 3.3 | 0.39 | 0 (from figure) | k_kh − k_s3 | 2 |
| 3.3 | 0.33 | 1 | k_kh − k_s2 | 3 |
| 3.3 | 0.28 | 1 (from figure) | k_kh − k_s3 | 4 |

## Figures worth remembering
- **Fig. 1 (p. 7):** Monash acoustic spectra and SPOD spectra vs NPR, with SPOD peaks overlaid on the acoustics. Many extra tones, up to four in 0.25 ≤ St ≤ 0.4 at higher NPR.
- **Fig. 2 (p. 8):** Tsinghua DMD modes (real part and |φ|) for A1, A2, B and C at NPR 2.2, 2.3, 2.6 and 3.4. Standing-wave modulation is visible in the shear layer and near field.
- **Fig. 3–4 (p. 9):** mean shock schlieren from both facilities and centreline wavenumber spectra; the k_s1 ridge with suboptimal and harmonic ridges vs NPR, with stage transitions marked.
- **Fig. 5 (p. 10):** wavenumber spectra of |φ| vs y at NPR 2.6 and 3.0, with six predicted standing waves from pairs of KH, G-JM, upstream and downstream acoustic waves.
- **Fig. 6 (p. 11):** the key plot: k_s1, k_s2 and k_sw vs NPR for both datasets; k_sw jumps between the k_s1 and k_s2 curves with the stage.
- **Fig. 7–8 (p. 12–13):** wavenumber spectra of the modes at y/D = 0.5 vs NPR, with k_kh − k_s1, k_kh − k_s2 and k_a markers; the negative-k peak follows the stage's predicted wavenumber.
- **Fig. 9–10 (p. 14–15):** radial structure of the wavenumber spectra for each stage; k_kh − k_s2 confined to the jet at A1 (duct-like), radiating at A2.
- **Fig. 11–12 (p. 15–16):** multimodal SPOD modes at NPR 2.3 and 3.3, each with its closure line.
- **Fig. 13 (p. 18):** global vs local (sliding-window) shock wavenumbers.
- **Fig. 14 (p. 19):** AR = 2 elliptical jet, POD-pair modulus and wavenumber spectra at NPR 2.6 (k_s1) and 3.2 (k_s2).
- **Fig. 15 (p. 20):** AR = 2 vs AR = 4 rectangular shock spectra and schlieren; AR = 4 lacks a suboptimal peak.
- **Fig. 16 (p. 21):** NPR 2.6 wavenumber spectrum and the directivity from its acoustically matched part (wavy-wall analogy), with both upstream and downstream lobes.

## Notation
- G-JM: guided jet mode (upstream, slightly subsonic, discrete; Tam & Hu 1989). Called k_TH⁻ in the 2018 note and `k_t-` in the 2020 note.
- k_kh (also k_KH): KH wavepacket wavenumber. k_s1: primary shock peak; k_s2, k_s3: suboptimal peaks (k_s2:n for the set). k_sL: local quasi-periodicity. k_sw: standing-wave wavenumber (k_swG for the KH + G-JM one). k_a = ω/a∞. Primes (k′) mark sliding-window values (Fig. 13).
- k_u, k_d, u_u, u_d: upstream and downstream wavenumbers and phase speeds. U_c, M_c: convection velocity and convective Mach number. U_sh: shock-cell velocity amplitude.
- φ: DMD or SPOD (or POD-pair) spatial mode; φ̂: its streamwise Fourier transform. Ī, Î: mean schlieren intensity and its transform.
- Screech stages: A1, A2 (m = 0); B (m = 1, precessing flapping); C (m = 1, helical). NPR = p₀/p∞. AR: aspect ratio.

## Relevance to this project
This is the central current theory for screech staging and multimodality, from the Shock Lab group itself, and is directly usable on lab schlieren data (see CLAUDE.md).

- **Recipe for time-resolved schlieren** (the paper's own pipeline, p. 6–13):
  1. Mean image → centreline FFT over about 10D → k_s1, k_s2, k_s3. Check sensitivity to the radial line; the peak location is robust (p. 7).
  2. SPOD (or DMD) at each tone → complex mode φ.
  3. FFT of |φ| at the lipline → k_sw; compare with the shock peaks to identify which loop is active.
  4. FFT of φ along x at each y → KH (k > 0) and G-JM (k < 0) peaks; mark k_kh − k_s1,2,3 and ±k_a. A G-JM peak at |k| slightly above k_a that extends outside the jet indicates the closing wave; energy at a k_kh − k_s product that stays inside the jet suggests a duct-like mode that cannot close the loop (p. 13).
  5. Optional: sliding-window FFT to locate where in x each shock peak lives (p. 17).
- **Data needs:**
  - Steps 1 and 5 need only mean fields, so any schlieren, BOS or PIV mean works.
  - Steps 2–4 need a complex mode at the tone. Time-resolved schlieren gives it via SPOD or DMD; non-time-resolved PIV can use the POD-pair complex mode, as done for the elliptical jet here (Fig. 14) and in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md). A POD pair cannot separate coexisting tones, so multimodal conditions (Fig. 11–12) need time-resolved data.
  - Wavenumber resolution: an FFT over about 8–10D gives Δk ≈ 0.6–0.8 rad/D, and k_s2 − k_s1 is only about 1–3 rad/D (Fig. 6). Field of view therefore limits how well the shock peaks and their KH products can be separated; the paper does not discuss windowing or padding. *(My estimate.)*
  - SPOD of schlieren ranks modes by intensity variance, not by any flow energy (p. 16).
- **Intermittency and mode switching:** the paper works with block-averaged SPOD/DMD and so treats coexisting tones statistically. It notes that whether multimodal tones are simultaneous or mutually exclusive is still debated (p. 7), and that some conditions switch quickly between modes (p. 11, citing Li et al. 2021). Its precursor result (energy at k_kh − k_s2 growing before the A1→A2 switch, p. 13) is a natural target for the **SPOD → reconstruction → Hilbert POD** pipeline: reconstruct each tone's SPOD band, run HPOD in time ([raiola-2025](raiola-2025-hilbert-pod.md)), and track instantaneous amplitude of each loop near transitions. Taking the Hilbert transform along x would reject the upstream G-JM (k < 0), so use HPOD_t, or HPOD_x along −x to isolate the G-JM. *(Suggestions, not done in the paper.)* [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) found A1 and A2 to be mutually exclusive in wavelet analyses, which this approach could test on schlieren.
- **Modelling side:**
  - No new model is computed; the paper is an experimental test of the triadic-interaction/wavenumber-matching idea across all stages. The theory it relies on is in [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) (published as Nogueira et al. 2022a: local LSA on a PIV mean flow and spatially periodic LSA; A1 from k_sh1, A2 from k_sh2) and [nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md) (2022b: screech as absolute instability of a periodic jet).
  - This paper extends that result from A1/A2 to B and C, to k_s3, to multimodality and to elliptical jets. It answers the gap flagged in the absolute-instability note, which had no explanation for B–C switching.
  - Matching is necessary but not sufficient: a neutral or weakly damped G-JM must exist at the product wavenumber, as in the cut-on/cut-off band of [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) (p. 19).
  - A practical model test for lab data: feed the measured k_s1, k_s2, k_s3 into a vortex-sheet or finite-thickness LSA and check where k_kh − k_s crosses the neutral G-JM branch, as in Nogueira et al.
- **Agreement and tension with related notes:**
  - [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md): agrees that one wave (the G-JM) closes both A1 and A2; this paper adds that the G-JM's wavenumber, not its type, changes at staging. It also explains staging, which the 2018 cut-on/cut-off band alone could not (p. 4).
  - [edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md) (JFM 913 A7, "2021a" here): same k_x-splitting method. The 2020 duct-like `k_t+` is at k_kh + k_s (positive k); the duct-like wave here is at k_kh − k_s2 (negative phase velocity, positive group velocity) (p. 13). Both are Towne et al. (2017) duct modes, but on different branches.
  - [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md): its best-fit reflection point is the 4th shock cell (s = 4) for both A1 and A2. Here the k_s2 quasi-periodicity sits in windows starting at the 5th–8th shock cell (p. 17), consistent with A2 drawing on the downstream shock train. The Mancinelli et al. (2021) complex-valued model is cited as reproducing staging only by changing the number of concurrent waves, which this paper says lacks a mechanism (p. 4).
  - [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md): fully consistent (A1 near-nozzle, A2 downstream where spacing changes). It found k_sh2 − k_sh1 roughly constant with M_j; Fig. 6 here shows a similar near-constant gap for 2.5 ≲ NPR ≲ 4 (read from figure).
  - [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md): cited as showing only G-JM-propagative symmetries appear in twin jets (p. 4).
  - Rectangular and twin rectangular jets: [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), [esfahani-2021 coupling modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md), [esfahani-2021 control](esfahani-2021-control-twin-rectangular-jet-coupling.md), [bres-2021](bres-2021-les-twin-rectangular-jets-plasma.md) and [yeung-2022](yeung-2022-3d-spod-twin-rectangular-jet.md) all use AR = 2 nozzles, where this paper predicts a suboptimal shock peak and possible staging. [samimy-1998](samimy-1998-rectangular-jet-trailing-edge-control.md) and [kerechanin-2001](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md) use AR = 3, where a single stage change is expected (p. 18).
  - [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md): cited for upstream reflecting surfaces changing staging in impinging jets (p. 6). It also covers shock leakage, which this paper treats as a correlated sound source rather than the loop closure in axisymmetric jets (p. 21–22).
  - [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) and [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md): guided-mode closure and linear vs nonlinear frequency selection in jet–edge tones, a close analogue of the triadic selection argued here.
- **Lab design notes:** the Monash rig's upstream plate (about 2D upstream) produced unusual multimodality and a dominant m = 0 mode at NPR 3.3 (p. 6, 16). Record upstream surfaces and lip thickness (0.15D vs 0.5D here) when comparing staging between rigs.
- **Rocket-noise link:** the wavy-wall argument for screech directivity is the same Tam & Tanna machinery used for broadband shock-associated noise; see [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) and [mathews-2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) for BSN at full scale.
- **Follow-up candidates for `/add-paper`:** Li et al. 2021 (Tsinghua staging data, Exp. Therm. Fluid Sci. 122); Mancinelli et al. 2021 (complex-valued resonance model, JFM 928); Edgington-Mitchell et al. 2021b (shock leakage, JFM 908); Edgington-Mitchell, Honnery & Soria 2015 (elliptical staging); Mercier, Castelain & Bailly 2017; Panda 1999; Gao & Li 2010; Towne et al. 2017; Tam & Tanna 1982.
