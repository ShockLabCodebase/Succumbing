---
key: "casalino-2009-hybrid-empirical-caa-rocket-noise"
title: "Hybrid Empirical/Computational Aeroacoustics Methodology for Rocket Noise Modeling"
authors: ["Casalino, D.", "Barbarino, M.", "Genito, M.", "Ferrara, V."]
year: 2009
type: "article"
venue: "AIAA J. 47(6), 1445–1460"
bib: {"journal": "AIAA Journal", "volume": "47", "number": "6", "pages": "1445--1460"}
doi: "10.2514/1.38634"
arxiv: ""
pdf: "rocket-noise-models/Casalino-EtAl_2009_Hybrid-Empirical-Computational-Aeroacoustics-Methodology-For-Rocket-Noise-Modeling.pdf"
version: "published"
unverified: []
group: false
facility: "Avio BEAT 1/20-scale Vega/ELA-1 mock-up; CIRA GFD CAA"
data: ["subscale", "microphones-near", "CAA", "RANS"]
methods: ["empirical-model", "propagation-model", "numerics", "PSD"]
flow: ["rocket-plume", "launch-vehicle", "impinging-jet", "supersonic", "heated"]
phenomena: ["source-location", "directivity", "acoustic-efficiency", "Mach-wave-radiation", "installation-effects"]
params: {"vehicle": "Vega (P80 SRM), ELA-1 pad", "M_e": "≈3.5", "T_e": "≈1700 K", "Re_D": "≈7×10⁷", "scale": "1/20", "f": "25–1000 Hz (1/3-octave)", "altitude": "10 m"}
topics: ["rocket-noise-models"]
related: ["lubert-2022-supersonic-jet-noise-launch-vehicles-review", "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "james-2012-directivity-curves-rocket-noise-model", "ranow-2021-acoustic-prediction-rocket-flame-deflector", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "tsutsumi-2015-epsilon-liftoff-acoustics", "weightman-2019-sound-production-impinging-supersonic-jets"]
cites: []
summary: "Vega lift-off: Eldred/Varnier empirical sources propagated by immersed-boundary GFD CAA Green's functions of the real pad; pad-cavity confinement sets the peak, still +2–3 dB"
---
# Hybrid Empirical/Computational Aeroacoustics Methodology for Rocket Noise Modeling

- **Authors:** D. Casalino, M. Barbarino (CIRA, Italian Aerospace Research Center, Capua), M. Genito (European Launch Vehicle S.p.A., Colleferro), V. Ferrara (Avio S.p.A., Colleferro)
- **Source:** AIAA Journal 47(6), 1445–1460, June 2009. Presented as AIAA Paper 2008-2939 at the 14th AIAA/CEAS Aeroacoustics Conference, Vancouver, May 2008 (p. 1). The conference paper is ref. [29].
- **DOI:** 10.2514/1.38634
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Casalino-EtAl_2009_Hybrid-Empirical-Computational-Aeroacoustics-Methodology-For-Rocket-Noise-Modeling.pdf` (16 pp.). Page refs below are PDF pages; journal page = PDF page + 1444.
- **Tags:** rocket noise, launch vehicle lift-off, Vega, P80 solid rocket motor, Eldred NASA SP-8072, Varnier reference length, acoustic efficiency, Mach wave radiation, source distribution along plume, jet deflector, launch pad scattering, frequency-domain CAA, Green's function discretization (GFD), immersed boundary, Pierce wave equation, Lilley/Pridmore-Brown, RANS mean flow, PML, one-third octave spectra, source localisation

## Summary
The paper predicts lift-off noise around the Vega launcher on the ELA-1 pad in two ways. The first is Eldred's NASA empirical rocket-noise model (NASA SP-8072), in two variants: one where each plume slice radiates in one frequency band, and one (with Varnier's reference-length correction) where each slice radiates a full spectrum weighted by its distance from the exhaust. Both are compared, untuned, with one-third-octave spectra from a 1/20-scale mock-up tested at Avio's BEAT facility. The second, new approach keeps Eldred's empirical source strengths but replaces the analytical propagation factors (spherical spreading plus an empirical directivity curve) with tailored Green's functions. These come from a frequency-domain CAA code (Green's function discretization, GFD) that solves Pierce's convected wave equation on a RANS mean flow, with an immersed-boundary treatment of the real launcher and pad geometry. Sixty uncorrelated point sources on two symmetric jet lines are convolved with these Green's functions. The hybrid model reproduces the experimental peak frequency and the growing difference between fairing-mounted and free-field microphones, which the empirical models cannot. It attributes this to low-frequency confinement in the semi-closed pad cavity. Levels are still overestimated by 2–3 dB. The authors see the main value as a basis of elementary fields for a future source-localisation (inverse) method.

## Key findings
- **Acoustic efficiency** η (ratio of acoustic to mechanical jet power) is 0.1–1% for undeflected jets, clustered at 0.2–0.5% (p. 2). Sutherland's law (eq. 5) gives η ≈ 0.53% for Vega, which the paper says it uses (p. 2); the results section states 0.5% (p. 10).
- **Overall power scales as ρ_j U_j³ D_j²** (eq. 3), i.e. the M_j³ law of Ffowcs Williams for Mach wave radiation; this group is proportional to the mechanical power (p. 2).
- **Eldred's source location:** acoustic power per unit length peaks at about 1.5 L_ref from the exhaust and the jet is acoustically effective to about 5 L_ref (Fig. 5, p. 4). Eldred took L_ref as the "laminar" core length L_c = 3.45 D_e(1 + 0.38 M_j)²; Varnier found the peak lies between the end of the core L_c and the end of the supersonic cone L_s, and used the shorter L_ref = 1.75 D_j(1 + 0.38 M_j)² with fully expanded M_j and D_j (eq. 15–17, p. 4).
- **Fit of peak-source position vs frequency** (undeflected data of Fig. 3): log(s/D_j) = −0.2365 log(St) + 1.2405 (p. 6), i.e. s/D_j ≈ 17.4 St^−0.24 *(own rearrangement)*.
- **Validity of the Pierce wave model** (p. 5–6, Fig. 8): comparison with Lilley's (Pridmore-Brown) operator for a parallel fully expanded jet gives an error parameter χ that is small at high frequency. Requiring χ ≤ 0.1 gives conservative limits f ≳ 120 Hz, St ≳ 0.1 and St(s/D_j)(c_j/c_a) ≳ 6, i.e. only the decreasing branch of the spectrum above its peak. χ grows with s/D_j (Fig. 8b).
- **Immersed-boundary verification** (p. 7–9, Table 1): earlier duct and sphere tests gave L2 magnitude and phase errors ≤ 2 × 10⁻³ with about 10 nodes per wavelength (p. 7). Against body-fitted solutions for scattering by a Cheops-sized pyramid, the magnitude error is 6.7–10.5% and the phase error 1.3–1.9%. Only the low-frequency case on z = 72.5 m exceeds 10%; the pyramid vertex is the hardest feature (p. 8–9).
- **Empirical model 1 vs experiment** (Fig. 17a, p. 10–11): peak frequency is predicted fairly well, but fairing and free-field microphones get the same level (no diffraction by the launcher). The measured fairing-minus-free-field difference grows with frequency from 0 to about 3 dB. Low frequencies are overestimated by 3–4 dB; high frequencies underestimated by 2–3 dB (fairing) and about 5 dB (free field). An abrupt jump near 250 Hz comes from the narrow-band-per-slice assumption combined with the bend in the jet line.
- **Fix for model 1** (Fig. 17b, p. 11): deflecting the vertical jet-line segment by 10° removes the jump; free-field levels then agree to about 2 dB.
- **Empirical model 2 (Varnier)** (Fig. 17c, p. 12): spectral levels within 3–5 dB over the range and about 2 dB in overall sound power level, but the peak frequency is clearly underestimated.
- **Hybrid empirical/CAA results** (p. 12–15, Fig. 18–22):
  - At low frequency the semi-closed pad cavity confines sound, so levels at the fairing are lower than free-field propagation would give; at high frequency the field is almost uniformly diffuse (Fig. 19–20, p. 15).
  - This raises the predicted peak frequency; the peak frequency is then predicted "quite well", and the fairing/free-field level difference increases with frequency as measured. Both are still overestimated by 2–3 dB throughout (Fig. 21, p. 15).
  - At microphones 3–6 the empirical spectra are nearly identical apart from a distance offset, while the hybrid spectra depend strongly on location and become smoother farther from the pad; the measurements show the same trend, less strongly (Fig. 22, p. 14–15).
  - Spectral scatter ("dispersion") comes from interference between the discrete, uncorrelated point sources. The undeflected-jet source distribution cannot represent all the source mechanisms of a deflected SRM plume, so without a better source model the method cannot be improved as a predictive tool (p. 15).
  - No effect of the Pierce model's low-frequency unreliability was seen, even though runs went down to 25 Hz. The authors argue that mean-flow refraction errors mainly affect directivity, and the pad cavity redistributes the energy anyway (p. 15).
- **Pad–plume interaction** (p. 14–15, Fig. 18): animations show wavefronts reflected off the pad-cavity walls being "backinjected" into the plume. The authors suggest this could drive a feedback loop that enhances certain frequencies, but have no experimental evidence. The same back-reflection causes diffraction at the nozzle edge. A rhombus texture from characteristic lines appears in the plume at some frequencies.
- **Shock cells in the CAA mean flow** (p. 12): an earlier run [29] with the real overexpanded plume (with shock cells) made the hybrid model too "stiff", giving irregular spectra. Here an equivalent fully expanded plume is used: shock-cell noise is assumed to be already inside the empirical source strengths, and the wave model is not reliable across mean-flow discontinuities.

## Setup / method
- **Vehicle and pad** (p. 1, 9–10): Vega, four stages, first stage the P80 solid rocket motor (carbon-epoxy filament-wound case). Launch from the refurbished ELA-1 pad (Kourou). Launcher height about 30 m. The deflector base and edge are about 15 m and 10.5 m below the exhaust. Altitude h = 10 m above the pallet in the CAA runs.
- **Experiment** (p. 1, 9–10): earlier Avio/ELV/ONERA campaign [16,17] on a 1/20-scale mock-up of Vega and ELA-1 at Avio's BEAT (Banco Esperimenti Acustici) facility, Colleferro. The P80 simulator matches chamber pressure and nozzle expansion ratio, so the plume has the same Strouhal number, velocity, pressure, density and temperature as full scale. Covers altitudes 0–75 m (full scale), i.e. the first 4 s of ascent. A new campaign was scheduled for early 2009 (Italian Space Agency project CAST).

  | Item | Value |
  |---|---|
  | Scale | 1/20 |
  | Flush-mounted mics (on launcher) | G.R.A.S. 40BP, ~1.4 mV/Pa, 10 Hz–70 kHz, < 174 dB |
  | Free-field mics (ring coaxial with mock-up, same axial/azimuthal positions) | G.R.A.S. 40BE, ~4 mV/Pa, 4 Hz–100 kHz, < 166 dB |
  | Output | One-third octave SPL spectra; 6 microphones used (mic 1 free field, mic 2 fairing, mics 3–6 lower on launcher; Fig. 16b) |
  | Exhaust (CFD) | M_e ≈ 3.5, T ≈ 1700 K, Re_D ≈ 7 × 10⁷ (p. 12) |

  > The spectra are plotted from 25 Hz to 1000 Hz (Fig. 17, 21–22), matching the CAA bands for the 30 m full-scale launcher, so the scale-model data seem to be shown at full-scale-equivalent frequencies. The paper does not say this explicitly; check before reusing numbers. No time-series statistics, block sizes or averaging are given: the measurements enter only as one-third-octave spectra.

- **Empirical model** (p. 2–5): dimensional analysis gives mean-square pressure, intensity, power and PSD in terms of ρ_j, U_j, D_j and unknown functions F_i of (θ, p_j/p_a, ρ_j/ρ_a, c_j/c_a, M_j, Re_j). Empirical curves from Eldred [10]: reduced PSD w̃(St) (Fig. 1), source distance vs St (Fig. 3), directivity factor 10 log D(θ, St) with peaks at about 30–50° from the downstream axis (Fig. 4), relative power along the jet (Fig. 5), and reduced power density vs modified Strouhal number St(s/D_j)(c_j/c_a) (Fig. 6). Each source and its ground image (Fig. 2) are summed incoherently. No tuning of the model constants.
- **Hybrid method** (p. 5–9):
  - Wave model: Pierce's convected wave equation for the velocity potential with a rotational mean flow, valid for slowly varying mean flows (high-frequency limit), used as a cheaper alternative to linearised Euler (eq. 22–23).
  - Discretisation: GFD, an unstructured, wave-based finite-difference scheme. At each node, the field is fitted (least squares, N > M) to a combination of analytic Green's functions of the locally uniform convected Helmholtz equation, valid for subsonic and supersonic flow (eq. 31–32). It is spectral-like, accurate to 3–4 points per wavelength (p. 6).
  - Immersed boundary (p. 7): ray tracing marks cut and buried cells; extra inner nodes are added at intersections so thin septa (single grid layer) can be represented; a slip condition is imposed at the projected surface point (eq. 33). Extra nodes are generated only near edges (normals differing by > 45°).
  - Mean flow: FLUENT RANS, Spalart–Allmaras with wall functions, adaptive tetrahedral mesh, for an equivalent fully expanded plume; projected onto the CAA grid (p. 12).
  - Sources: 30 Dirac sources uniformly spaced along one jet line from the nozzle to 16 m from the symmetry plane; a mirror jet line, offset by one nozzle radius, handles the plume split on the deflector and is obtained by symmetry. Each line carries half the mechanical power. Strengths from eq. 21 (second Eldred variant). All 60 sources are assumed uncorrelated (p. 9).
  - Grid: Cartesian, generated automatically per frequency, spacing Δ = min(λ_a/5, 0.68 m) (λ_a/5 = 0.68 m at 100 Hz). One-third-octave bands 14 (25 Hz) to 30 (1000 Hz). Domain sizes from Table 2, which fits L_x = max(8λ_a, 32 m + 5λ_a), L_y = 46 m + 3λ_a + h, L_z = max(4 m, 6λ_a) with c_a ≈ 346 m/s *(own check against Table 2)*. PML buffers of thickness 2λ_a with parabolic damping on the far-field boundaries (p. 9).
  - Cost: NEC-SX9; highest-frequency run peaks at about 20 GB of memory and about 780 CPU hours in total (p. 12).
  > The text extraction of the domain-size formulas and the PML maximum damping constant is garbled. The formulas above were reconstructed from Table 2; check the PML constant on p. 9.

## Key equations
- Overall acoustic power (eq. 3–4, p. 2): $W_{ac}=\rho_jU_j^3D_j^2\,\mathcal F_3[\ldots]=W_m\,\eta[\ldots]$, η = acoustic efficiency.
- Sutherland's efficiency law (eq. 5, p. 2): $\eta = 0.0012\,(\gamma_j/\gamma_a)(c_t/c_a)^3(c_t/U_e)^2$.
- Reduced PSD (eq. 7, p. 3): $\tilde w(St)\equiv \dfrac{w(St)}{W_{ac}}\dfrac{U_j}{D_j}=\mathcal F_5(St)$, with $\int_0^\infty \tilde w\,dSt=1$; St = f D_j/U_j.
- Equivalent monopole strength, model 1 (eq. 8, p. 3): $A_i=\sqrt{(\rho_ac_a/2\pi)\,\eta W_m (D_j/U_j)\Delta f_i\,\tilde w(St)}$.
- Slice SPL and OASPL (eq. 11–12, p. 4): $\mathrm{SPL}_i=\mathrm{PWL}_i-10\log r_i^2+10\log\mathcal D_i(\theta_i,St_i)-10\log\!\left(\dfrac{p_{ref}^2\,4\pi}{W_{ref}\rho_ac_a}\right)$; $\mathrm{OASPL}=10\log\!\left(\sum_{i+}10^{\mathrm{SPL}_{i+}/10}+\sum_{i-}10^{\mathrm{SPL}_{i-}/10}\right)$ (direct plus ground-image sources).
- Varnier reference length and fully expanded quantities (eq. 15–17, p. 4): $L_{ref}=1.75D_j(1+0.38M_j)^2$; $M_j=\left\{\dfrac{2}{\gamma_j-1}\left[\left(1+\dfrac{\gamma_j-1}{2}M_e^2\right)\left(\dfrac{p_e}{p_a}\right)^{(\gamma_j-1)/\gamma_j}-1\right]\right\}^{1/2}$; $D_j=\dfrac{2}{M_j}\sqrt{\dfrac{F}{\pi p_a\gamma_j}}$ (F = thrust).
- Model 2 reduced power density (eq. 18, p. 4): $\tilde{\tilde w}(s_k,St_i)=\dfrac{w(s_k,f_i)}{w(s_k)}\dfrac{U_jc_a}{s_kc_j}$, a function of $St\,(s/D_j)(c_j/c_a)$ (Fig. 6). Source strength (eq. 21, p. 5): $A_{ik}=\sqrt{\dfrac{\rho_ac_a}{2\pi}\eta W_m\,\tilde{\tilde w}(s_k,St_i)\,\sigma(s_k/L_{ref})\dfrac{s_kc_j}{L_{ref}U_jc_a}\Delta s_k\Delta f_i}$.
- Pierce's wave equation (eq. 22, p. 5): $(1/\rho_0)\nabla\cdot(\rho_0\nabla\phi)-D_t(D_t\phi/c_0^2)=0$, $D_t=\partial_t+\mathbf U_0\cdot\nabla$. Frequency domain (−iωt), with $\tilde\rho=\rho_0/\rho_a$, $\tilde T=T_0/T_a$, $\tilde{\mathbf U}=\mathbf U_0/c_a$, $k=\omega/c_a$ (eq. 23): $(\nabla\tilde\rho/\tilde\rho)\cdot\nabla\hat\phi+\nabla^2\hat\phi-\tfrac{1}{\tilde T}(-ik+\tilde{\mathbf U}\cdot\nabla)^2\hat\phi+[(\tilde{\mathbf U}\cdot\nabla\tilde T)/\tilde T^2](-ik+\tilde{\mathbf U}\cdot\nabla)\hat\phi=0$.
- Lilley/Pridmore-Brown comparison for a parallel jet, axial wavenumber α (eq. 25 vs 28, p. 5): Lilley gives $\check p_{yy}+\left(\dfrac{dU_x}{dy}\dfrac{2\alpha}{\omega-\alpha U_x}-\dfrac{1}{\rho_0}\dfrac{d\rho_0}{dy}\right)\check p_y+\left[\dfrac{(\omega-\alpha U_x)^2}{c_0^2}-\alpha^2\right]\check p=0$; Pierce gives the same with $\alpha^2\to\alpha^2(1+\chi)$, χ given by eq. 29. The models agree when χ ≪ 1. χ is evaluated with α = k_0/(1 + M_x).
- Model jet for the χ estimate (p. 6): $U_x/(M_jc_j)=1$ in the core ($x<L_c, y<d$), $\exp[-\ln2\,(y-d)^2/b^2]$ in the shear layer ($x<L_c, y\ge d$), and $\{1-\exp[0.5/(1-x/L_c)]\}\exp(-\ln 2\,y^2/b^2)$ for $x\ge L_c$, with $d=0.5D_j(1-x/L_c)$, $b=D_jx/L_c$; density from Crocco–Busemann (eq. 30).
- GFD interpolation (eq. 31–32, p. 7): $\hat\phi(\mathbf x)=\sum_{m=1}^{M}\sum_{n=1}^{N}G^I_{nm}G(\mathbf x,\mathbf x_n)\hat\phi_m$, with the convected free-space Green's function $G=\dfrac{\exp[ikr(-M_r+\sqrt\Theta)/\beta^2]}{r\sqrt\Theta}+H(-\beta^2)\dfrac{\exp[ikr(-M_r-\sqrt\Theta)/\beta^2]}{r\sqrt\Theta}H(\Theta)$, β² = 1 − M², Θ = M_r² + β², G^I the least-squares pseudoinverse of $G_{mn}=G(\mathbf x_m,\mathbf x_n)$. The second term (only for supersonic flow, inside the Mach cone) is what lets the scheme handle supersonic mean flow.
- Immersed-boundary slip condition (eq. 33, p. 7): $\sum_m\sum_n G^I_{nm}\hat\phi^i_m\nabla G(\mathbf x^\dagger_i,\mathbf x_n)\cdot\mathbf n^\dagger=0$.

> Equations were re-typed from rendered pages 2–7, not from the garbled text. The exponent in eq. 16, the χ expression (eq. 29) and the 1/T̃ factor in eq. 23 should be checked against the PDF before reuse.

## Data tables
**Table 1 (p. 9): immersed boundary vs body-fitted, pyramid scattering** (L2 errors × 10²)

| Plane | λ (m) | Err_M | Err_φ |
|---|---|---|---|
| y = 0 | 34.6 | 7.3 | 1.3 |
| z = 72.5 m | 34.6 | 7.8 | 1.9 |
| z = 150 m | 34.6 | 6.7 | 1.6 |
| y = 0 | 69.2 | 9.8 | 1.9 |
| z = 72.5 m | 69.2 | 10.5 | 1.9 |
| z = 150 m | 69.2 | 7.8 | 1.6 |

Pyramid: base 230.9 m, height 147 m; monopole at (−10³ m, −10³ m); Δ = 5 m and 10 m; PML 2λ (p. 7).

**Table 2 (p. 9): CAA domain and grid per one-third-octave band** (SI units; Δ = grid spacing)

| f (Hz) | L_x | L_y | L_z | Δ | Nodes |
|---|---|---|---|---|---|
| 25 | 110.76 | 97.53 | 83.07 | 0.68 | 729 313 |
| 50 | 66.61 | 76.77 | 41.53 | 0.68 | 347 252 |
| 100 | 49.31 | 66.38 | 20.77 | 0.68 | 224 665 |
| 125 | 45.84 | 64.31 | 16.61 | 0.55 | 304 201 |
| 200 | 40.65 | 61.19 | 10.38 | 0.35 | 652 879 |
| 400 | 36.33 | 58.60 | 5.19 | 0.17 | 2 220 300 |
| 630 | 34.75 | 57.65 | 4.00 | 0.11 | 6 237 258 |
| 900 | 33.92 | 57.15 | 4.00 | 0.08 | 17 434 381 |
| 1000 | 33.73 | 57.04 | 4.00 | 0.07 | 23 678 929 |

(Selected rows; the full table has every band from 25 to 1000 Hz. It lists 900 Hz where the standard band is 800 Hz; check p. 9.)

## Figures worth remembering
- **Fig. 1 (p. 3):** Eldred's reduced PSD w̃(St) collapsing many rockets, peaking around St ≈ 0.02–0.05 (read off the figure), undeflected vs bucket-deflected jets.
- **Fig. 3 (p. 3):** source distance s/D_e vs St for single/multiple nozzles, undeflected, open-scoop and closed-bucket deflectors.
- **Fig. 4 (p. 4):** directivity factor vs θ for St = 0.004–0.4; peak near 30–50°, moving to smaller angles at higher St.
- **Fig. 5 (p. 4):** relative power σ(s/L_ref), peaking at s ≈ 1.5 L_ref.
- **Fig. 6 (p. 5):** reduced power density vs St(s/D_j)(c_j/c_a), broad peak near 0.5–2 (read off the figure).
- **Fig. 8 (p. 6):** χ vs f, s/D_j, St and modified St, defining the validity limits.
- **Fig. 16 (p. 10):** Vega/ELA-1 geometry, RANS velocity field, 30 + 30 source positions and the six microphones.
- **Fig. 17 (p. 10):** empirical models vs fairing and free-field spectra.
- **Fig. 18 (p. 11):** acoustic potential from source 15 (near the deflector edge) at several frequencies: asymmetric diffraction, refraction through the plume, rhombus pattern from shock-like characteristic lines.
- **Fig. 19–20 (p. 12–13):** relative SPL maps 32–1000 Hz: confinement in the pad cavity at low frequency, diffuse field at high frequency.
- **Fig. 21–22 (p. 13–14):** hybrid model vs measurements at mics 1–2 and 3–6.

## Notation
- Subscripts: e nozzle exit, j fully expanded, a ambient, t throat, 0 mean flow. W_m mechanical power, W_ac acoustic power, η acoustic efficiency.
- St = f D_j/U_j. s: curvilinear distance along the jet line. L_c core length, L_s supersonic-cone length, L_ref reference length. σ(s/L_ref): relative power along the jet. D(θ, St): directivity factor; θ measured from the downstream jet axis (Fig. 2).
- i: frequency band, k: jet slice; + / − superscripts: direct source and ground image. A: equivalent source strength.
- χ: Pierce-vs-Lilley error parameter. GFD: Green's function discretization. PML: perfectly matched layer. BEAT: Banco Esperimenti Acustici (Avio). CAST: Italian Space Agency project.

## Relevance to this project
This project studies resonance and feedback in supersonic jets, including impinging jets, with schlieren, acoustics and modal decomposition (see CLAUDE.md). This paper is mainly a modelling paper: an empirical source model coupled to a frequency-domain propagation solver, with only one-third-octave spectra from a scale model for validation.
- **Impingement and feedback:** the plume hits a flame deflector inside a semi-closed pad cavity. The CAA shows reflected waves re-entering the plume and diffracting at the nozzle lip, and the authors raise the possibility of a feedback loop at certain frequencies (p. 14–15) but have no data. This is the same closure path (acoustic waves returning to the nozzle via the impingement surface) as in impinging-jet resonance; compare [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md), where lip geometry and acoustic path select helical vs toroidal modes. The Eldred source model has no such loop: it assumes uncorrelated broadband sources, so tones from impingement feedback are outside it.
- **Shock cells and BBSAN:** the CAA deliberately uses a fully expanded plume because the shock-cell mean flow made the result stiff and irregular (p. 12). The shock-related noise (BBSAN, screech) is assumed to sit in the empirical source term, which is a weak point given the screech and shock-cell work in the library ([edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), [nogueira-2021-wavepacket-modulation-shock-containing-jets.md](nogueira-2021-wavepacket-modulation-shock-containing-jets.md)).
- **Source model vs wavepackets:** Eldred's "each slice radiates its own band" picture, with the source drifting downstream as St falls (Fig. 3) and power scaling as U_j³ (Mach wave radiation), is the empirical counterpart of convected wavepacket models. The 60 mutually uncorrelated point sources cause interference ripples (p. 15); an SPOD-derived, spatially coherent wavepacket source would be the natural replacement, linking to [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md) and [pickering-2020-lift-up-kh-orr-jets.md](pickering-2020-lift-up-kh-orr-jets.md). Time-resolved schlieren of a scaled rocket or heated jet could supply the source shape and coherence that this model lacks.
- **Propagation modelling:** GFD on Pierce's equation is valid only at high frequency (χ ≤ 0.1 gives St ≳ 0.1 here), yet results looked fine down to 25 Hz because the cavity dominates (p. 15). Compare one-way and parabolised propagation approaches in [zhu-2021-recursive-one-way-navier-stokes.md](zhu-2021-recursive-one-way-navier-stokes.md). The immersed-boundary verification (Table 1) gives a sense of the 7–10% magnitude errors to expect from cut-cell treatments of sharp edges.
- **Data dependence:** the measurements are averaged one-third-octave spectra only, so no time-resolved analysis (SPOD, BMD, intermittency, Hilbert amplitude) is possible from what is reported. Rocket noise statistics and intermittency are covered in sibling notes ([gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md), [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md)).
- **Related rocket-noise notes:** directivity curves in Eldred-type models ([james-2012-directivity-curves-rocket-noise-model.md](james-2012-directivity-curves-rocket-noise-model.md)); sound-power and OASPL prediction ([mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md)); flame-deflector acoustics ([ranow-2021-acoustic-prediction-rocket-flame-deflector.md](ranow-2021-acoustic-prediction-rocket-flame-deflector.md)); review ([lubert-2022-supersonic-jet-noise-launch-vehicles-review.md](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)).
- **Related works cited:** Eldred 1971 (NASA SP-8072), Varnier 2001 and Varnier & Raguenet 2002 (impinging supersonic jet sound power), Candel (Ariane), Berland et al. 2006 (LES of planar screech), Bodony et al. 2006 (LES of BBSAN), Casalino et al. 2008 (AIAA 2008-2939, shock-cell mean-flow version). Candidates for `/add-paper`.
