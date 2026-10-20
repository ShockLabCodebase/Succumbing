---
key: "mancinelli-2019-screech-prediction-upstream-modes"
title: "Screech-tone prediction using upstream-travelling jet modes"
authors: ["Mancinelli, M.", "Jaunet, V.", "Jordan, P.", "Towne, A."]
year: 2019
type: "article"
venue: "Exp. Fluids 60, 22"
bib: {"journal": "Experiments in Fluids", "volume": "60", "pages": "22"}
doi: "10.1007/s00348-018-2673-2"
arxiv: ""
pdf: "screech/Mancinelli-EtAl_2019_Screech-Tone-Prediction-Using-Upstream-Travelling-Jet-Modes.pdf"
version: "published"
unverified: []
group: false
facility: "Pprime SUCRÉ"
data: ["microphones-near", "microphones-far", "mic-array"]
methods: ["PSD", "wavelets", "symmetry-decomposition", "vortex-sheet", "resonance-model", "shock-cell-model"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "staging", "mode-switching", "intermittency", "guided-jet-mode", "triadic-interaction"]
params: {"M_j": "1.0–1.3", "NPR": "1.89–2.77", "Re": "2.86×10⁵–4.3×10⁵", "D": "10 mm", "T_0": "295 K"}
topics: ["screech", "linear-models"]
related: ["edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "mancinelli-2021-complex-valued-resonance-model-screech", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-absolute-instability-shock-containing-jets", "jordan-2018-jet-flap-interaction-tones", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "nogueira-2024-guided-jet-waves"]
cites: ["edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "jordan-2018-jet-flap-interaction-tones", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
summary: "KH + guided-jet-mode vortex-sheet resonance model predicts A1/A2 screech St vs M_j inside the B–S band; wavelets show mutually exclusive A1/A2 switching near M_j 1.12"
---
# Screech-tone prediction using upstream-travelling jet modes

- **Authors:** M. Mancinelli, V. Jaunet, P. Jordan, A. Towne
- **Source:** Experiments in Fluids 60:22 (2019); received 18 Oct 2018, published online 3 Jan 2019
- **DOI:** 10.1007/s00348-018-2673-2
- **PDF:** `References/Paper_PDFs/screech/Mancinelli-EtAl_2019_Screech-Tone-Prediction-Using-Upstream-Travelling-Jet-Modes.pdf` (9 pp.)
- **Tags:** screech, A1/A2 staging, underexpanded round jet, guided jet mode, cylindrical vortex-sheet model, resonance model, Kelvin-Helmholtz wavepacket, branch/saddle points, near-field microphone array, azimuthal decomposition, wavelet transform, mode switching, intermittency, quadratic nonlinear interaction

## Summary
The paper models the axisymmetric A1 and A2 screech modes of an underexpanded jet from a convergent nozzle (M_j = 1.0–1.3) as a resonance between the downstream-travelling Kelvin–Helmholtz (KH) wave and an upstream-travelling **guided jet mode** (Tam & Hu 1989), rather than a free-stream sound wave. Both waves come from a cylindrical vortex-sheet dispersion relation. Resonance is imposed with a phase criterion between the nozzle exit and the fourth shock cell. This is the first screech-frequency *prediction* built on the guided-mode closure that Edgington-Mitchell et al. (2018) and Gojon et al. (2018) had identified. The model reproduces how both A1 and A2 frequencies change with M_j, and it explains why tones exist only between the branch and saddle points of the guided mode. Powell/Tam-type formulae and a free-stream-acoustic closure do much worse. A wavelet analysis of near-field microphone data shows that A1 and A2 switch in a mutually exclusive way during staging, and the A1 amplitude is modulated at the A2−A1 difference frequency. The authors read this as a quadratic nonlinear interaction that drives staging but does not set the frequencies.

## Key findings
- **Classical models fall short** (p. 2–3, 6):
  - Powell (eq. 2), Tam et al. (eq. 4) and Panda (eq. 5) all treat U_c as a constant 0.6–0.8 U_j and close the loop with free-stream sound (p. 3).
  - Tam's formula only roughly matches the data, misses staging, and predicts tones at M_j and St where none are measured (p. 6, Fig. 4).
- **Guided-mode resonance model works** (p. 5–6, Fig. 5, Table 1):
  - Uses k⁺_KH with k⁻_p of azimuthal order m = 0 and **radial order j = 2**.
  - Reflection at the **4th shock cell** (s = 4) with an **out-of-phase** reflection condition (φ = π, eq. 12b).
  - Integer p = 3 for A1 and p = 4 for A2.
  - It captures the St–M_j trend of both modes and gives a better description near the high-frequency cut-off of each (p. 6).
- **Parameter choices were tuned:** the reflection point was varied from the 2nd to the 5th shock cell, and s = 4 fitted best. This agrees with Mercier et al. (2017). φ = π also fitted better than φ = 0 (p. 4–5).
- **Cut-on and cut-off explained** (p. 6, Fig. 5):
  - Both A1 and A2 tones lie inside the St–M_j region bounded by the B(0,2) and S(0,2) tracks, where k⁻_p (j = 2) is propagative. Outside this region the guided mode is evanescent.
  - The free-stream-acoustic closure (k⁻_a) predicts tones in regions where none are observed (p. 6).
- **Shen & Tam (2002) is not supported:** they proposed that A1 is closed by free-stream sound and A2 by a guided mode. Their prediction agrees poorly with the data (p. 2, 6, Fig. 5).
- **Properties of the vortex-sheet waves** (p. 3–4, Fig. 1, M_j = 1.1):
  - k⁻_p modes are dispersive and propagative only in a narrow band between B(m,j) and S(m,j).
  - Their phase speed is subsonic but close to c∞, almost equal to sound near the low-frequency end of the band.
  - B(0,1) lies at the origin of the k_r–St plane.
  - k⁺_KH is slightly dispersive, with a phase speed a little above the usual 0.6–0.8 U_j. From the diamond marker in Fig. 1b (my reading: St ≈ 0.57, k_r ≈ 4) this is about 0.9 U_j.
- **Staging is mutually exclusive switching** (p. 6–7, Fig. 6):
  - The A1→A2 switch occurs near M_j ≈ 1.12 (p. 6).
  - M_j ≤ 1.115: only A1. M_j = 1.12: jumps between A1 and A2. M_j = 1.125: longer dwell times in A2. M_j ≥ 1.13: only A2.
  - No coexistence was seen. This contrasts with Shen & Tam (2002) and with Walker et al. (1997) for a rectangular jet (p. 7).
  - From Fig. 6c (my reading), dwell times are of order 1–4 s, i.e. about 10⁴–10⁵ D/U_j.
- **Nonlinear signature** (p. 7, Figs. 7–8):
  - At M_j = 1.125 the wavelet amplitude |w(St₁, t)| at the A1 frequency (St₁ = 0.63) is modulated at St_d ≈ 0.069. This is close to St₂ − St₁ = 0.70 − 0.63.
  - A weak St_d peak also appears in the m = 0 pressure spectrum, and only at the M_j where switching occurs. This points to a quadratic interaction between A1 and A2, in line with the bicoherence results of Walker & Thomas (1997).
- **Conclusion** (p. 2, 8): a linear model captures frequency selection. Nonlinearity is active in staging and in setting screech amplitudes, but has little effect on which frequencies are selected.
- **The near-field array is non-intrusive:** a far-field microphone (r/D ≈ 90, ψ = 120°) shows the same A1/A2 signature (p. 8–9, Fig. 9).

## Setup / method

### Experiment (SUCRÉ facility, Institut Pprime, Poitiers; not a Shock Lab group facility)
- **Facility** (p. 5):
  - SUCRÉ (SUpersoniC REsonance) jet-noise facility in a fully anechoic chamber of 3 × 3 × 2.5 m³.
  - Supply is 200 bar compressed dry air, regulated by an electrically driven valve.
  - Stagnation T and p are monitored at the nozzle inlet, and a heater holds T₀ = 295 K.
  - A settling chamber with honeycomb and mesh grids sits upstream of the nozzle.
- **Nozzle:** simple convergent, D = 0.01 m. The lip thickness is not given. Exit conditions come from isentropic relations (p. 5).
- **Conditions** (p. 5, 8):

  | Quantity | Value |
  |---|---|
  | NPR (paper writes "stagnation pressure p₀") | 1.89–2.77 |
  | M_j | 1.0–1.3 |
  | Re = U_j D/ν | 2.86×10⁵ – 4.3×10⁵ |
  | ΔM_j (near field) | 0.005 |
  | ΔM_j (far field) | 0.01 |
  | T₀ | 295 K |

  > The p₀ range is dimensionless, so it is the NPR. Check: isentropic relations give M_j = 1.00 and 1.30 at NPR 1.89 and 2.77 (my computation).
- **Acoustics** (p. 5):
  - GRAS 46BP microphones, flat from 4 Hz to 70 kHz. NI PXIe-1071 acquisition at 200 kHz.
  - The maximum resolved St is 2.6–3.2 across the M_j range (consistent with Nyquist; my check).
  - Each condition records **30 s**, which the paper puts at about 10⁶ convective times.
- **Near-field array** (p. 5, Fig. 3):
  - Six microphones equally spaced in azimuth in the nozzle-exit plane at r/D = 1. This resolves m = 0, ±1, ±2.
  - Only m = 0 is analysed, since A1 and A2 are axisymmetric.
- **Far field** (p. 8): one microphone at r/D ≈ 90 and ψ = 120°, measured from the downstream jet axis.
- **Spectra** (p. 5–6):
  - Welch PSD, shown as sound pressure spectrum level SPSL in dB/St (eq. 13), with p_ref = 20 µPa.
  - Block size, overlap and window are **not stated**.
  - Statistics need a long record but not time resolution beyond the tone frequency.
- **Time–frequency analysis** (p. 6–7):
  - Continuous wavelet transform (eq. 14) of the m = 0 pressure signal with a complex **bump** wavelet (eqs. 16–17).
  - The bump parameters μ and σ are **not given**; they are only said to be chosen for the desired frequency resolution and time localisation (Jordan et al. 2018).
  - Scalograms are normalised by the maximum amplitude at each scale, and only the first 10 s are shown. The paper says other time windows give the same picture.
  - The envelope |w_p(St₁, t)| at the A1 frequency is then Fourier-analysed (PSD normalised by U_j/D and divided by p_ref²).
  - This needs **time-resolved** data.

### Model (linear, cylindrical vortex sheet)
- **Normal-mode ansatz** (eq. 6, p. 3): q = q̂(r) e^{i(kx + mθ − ωt)}.
  - k is normalised by D, and ω = 2π St M_a with St = fD/U_j and M_a = U_j/c∞.
  - The procedure follows Jordan et al. (2018) and Towne et al. (2017).
- **Assumptions:**
  - Inviscid, parallel, zero-thickness shear layer (vortex sheet; Lessen et al. 1965, Michalke 1970).
  - **No shock cells in the base flow.** The shocks enter only through the reflection length L_s.
  - **Isothermal**, T = T_j/T∞ = 1, so M_a = M_j (p. 3). Real cold underexpanded jets have T_j/T∞ < 1.
  - Only m = 0 is considered.
- **Solution:** a real ω is specified and the complex k satisfying D(k, ω) = 0 (eq. 7) is found, i.e. a spatial problem (p. 3).
  - The root-finder, the branch-cut choices for γ_i and γ_o, and how waves are classified are not described. The ± group-velocity labelling follows Towne et al. (2017) and Jordan et al. (2018).
- **Waves considered** (p. 3):
  - k⁺_KH.
  - k⁻_p for radial orders j = 1 and 2.
  - The free-stream acoustic wave k^±_a = ±2π St M_a (= ±ω in this normalisation).
- **End conditions** (p. 4):
  - Energy is exchanged at the nozzle exit and at the s-th shock cell.
  - The first shock-cell length comes from Pack (1950) (eq. 9).
  - Shock-cell shortening due to mixing-layer growth uses α = 0.06 from Harper-Bourne (1974) (eq. 10).
- **Resonance criteria** (p. 4):
  - The phase condition is eq. 11b. The magnitude (gain) condition, eq. 11a, is **neglected**, following Jordan et al. (2018).
  - Because the reflection phase φ is unknown, two extremes are tested: φ = 0 (eq. 12a) and φ = π (eq. 12b).
  - The model therefore predicts *which frequencies can resonate*, not their amplitudes, nor which stage dominates where the predictions overlap.
- **Comparison with experiment:** visual only, by overlaying predictions on the SPSL map (Fig. 5). No error metric is given.
- **Fitted discrete choices:** s, φ, j and p (Table 1). The radial order j = 2 and the integers p are selected, not derived.

## Key equations
- **Powell** (eq. 1–2, p. 2): loop time $T=\int \frac{dh}{U_c}+\frac{h}{c_\infty}$, and $\dfrac{N+p}{f_s}=\dfrac{h}{U_c}+\dfrac{h}{c_\infty}$.
  - h is the distance from the nozzle to the reflection point. N is an integer and p a constant; θ = N + p is the number of cycles.
- **Tam et al. (1986)** (eq. 3, p. 3): $f_s=\dfrac{k_{sc}U_c}{2\pi\left(1+\frac{U_c}{c_\infty}\right)}$.
  - With $k_{sc}=2\pi/\lambda_{sc}$ and $h=n\lambda_{sc}$ this becomes $\dfrac{n}{f_s}=\dfrac{h}{U_c}+\dfrac{h}{c_\infty}$ (eq. 4).
- **Panda (1999), standing wave** (eq. 5, p. 3): $\dfrac{1}{\lambda_{sw}}=\dfrac{1}{\lambda_h}+\dfrac{1}{\lambda_a}=\dfrac{f_s}{U_c}+\dfrac{f_s}{c_\infty}\;\Rightarrow\;\dfrac{m}{f_s}=\dfrac{h}{U_c}+\dfrac{h}{c_\infty}$, with $h=m\lambda_{sw}$.
- **Ansatz** (eq. 6, p. 3): $q(x,r,\theta,t)=\hat q(r)\,e^{i(kx+m\theta-\omega t)}$.
- **Vortex-sheet dispersion relation** (eq. 7–8, p. 3):
  $$D(k,\omega;M_a,T,m)=\frac{1}{\left(1-\frac{kM_a}{\omega}\right)^2}+\frac{1}{T}\,\frac{I_m\!\left(\frac{\gamma_i}{2}\right)\left[\frac{\gamma_o}{2}K_{m-1}\!\left(\frac{\gamma_o}{2}\right)+mK_m\!\left(\frac{\gamma_o}{2}\right)\right]}{K_m\!\left(\frac{\gamma_o}{2}\right)\left[\frac{\gamma_i}{2}I_{m-1}\!\left(\frac{\gamma_i}{2}\right)-mI_m\!\left(\frac{\gamma_i}{2}\right)\right]}=0$$
  $$\gamma_i=\sqrt{k^2-\tfrac{1}{T}(\omega-M_ak)^2},\qquad \gamma_o=\sqrt{k^2-\omega^2}$$
  - I and K are modified Bessel functions of the first and second kind. T = T_j/T∞, and M_j = U_j/c_j = M_a/√T.
  - For m = 0, the mK_m and mI_m terms drop out, and K_{−1} = K_1, I_{−1} = I_1.
- **Shock cells** (eq. 9–10, p. 4): $L_1(M_j)=\dfrac{\pi}{2.4048}\sqrt{M_j^2-1}$ (Pack), and the s-th shock-cell location is $L_s(M_j)=L_1\left[(1-\alpha)s+\alpha\right]$ with α = 0.06.
  - Lengths are in units of D, consistent with k being normalised by D.
- **Resonance** (eq. 11–12, p. 4):
  - Magnitude: $e^{\Delta k_i L_s}=|R_1R_2|$ (neglected). Phase: $\Delta k_r L_s+\phi=2p\pi$.
  - With φ = 0: $k^+-k^-=\Delta k_r=\dfrac{2p\pi}{L_s}$ (12a). With φ = π: $k^+-k^-=\Delta k_r=\dfrac{(2p+1)\pi}{L_s}$ (12b), which is the one used.
- **SPSL** (eq. 13, p. 5): $\mathrm{SPSL}=10\log_{10}\!\left(\dfrac{\mathrm{PSD}}{p_{ref}^2}\dfrac{U_j}{D}\right)$ [dB/St].
- **CWT** (eq. 14–15, p. 6):
  - Transform: $w(s,t)=C_\psi^{-1/2}s^{-1/2}\int_{-\infty}^{\infty}p(\tau)\,\Psi^*\!\left(\frac{t-\tau}{s}\right)d\tau$.
  - Admissibility: $C_\psi=\int_{-\infty}^{\infty}|\hat\Psi(\omega)|^2\,\frac{d\omega}{\omega}<\infty$.
- **Bump wavelet** (eq. 16–17, p. 7): $\hat\Psi(\omega)=\exp\!\left(1-\dfrac{1}{1-\sigma^2(\omega-\mu)^2}\right)F(\omega)$, where F = 1 for μ − 1/σ ≤ ω ≤ μ + 1/σ and 0 otherwise.

> Equations were rebuilt from high-resolution renders of pp. 2–7 because the text extraction was garbled; they should be reliable. Eq. 15 is printed with dω/ω, where admissibility conditions are usually written with |ω|; check if it matters. Eq. 1 is printed as written (∫dh/U_c + h/c∞).

## Data tables
**Table 1 (p. 6): parameters for the screech predictions**

| Mode | m | Shock cell s | Reflection condition | p | j of k⁻_p |
|---|---|---|---|---|---|
| A1 | 0 | 4 | Out-of-phase (φ = π) | 3 | 2 |
| A2 | 0 | 4 | Out-of-phase (φ = π) | 4 | 2 |

**Worked check at M_j = 1.1 (my computation from eq. 9, 10 and 12b):**
- L₁ = 0.599D and L₄ = 2.29D.
- Δk_r D = (2p+1)π/L₄ = 4.12, 6.87, 9.62 and 12.37 for p = 1–4. These match the horizontal dashed lines in Fig. 2.
- A1 (p = 3, Δk_r ≈ 9.6) meets the j = 2 curve at St ≈ 0.69 (Fig. 2, p. 5).

**Measured staging values (p. 6–7):**
- The A1→A2 switch is near M_j ≈ 1.12.
- At M_j = 1.125: St₁ (A1) = 0.63, St₂ (A2) = 0.70, St_d ≈ 0.069.
- From Fig. 4 (my reading), A1 spans M_j ≈ 1.07–1.12 with St falling from about 0.77 to 0.62, and A2 spans M_j ≈ 1.12–1.2 with St falling from about 0.71 to 0.60.

## Figures worth remembering
- **Graphical abstract (p. 1):** the Fig. 5-style prediction map above the M_j = 1.125 scalogram, showing A1/A2 switching.
- **Fig. 1 (p. 4):** vortex-sheet eigenvalues at M_j = 1.1, m = 0.
  - (a) k_i vs k_r. (b) St vs k_r, showing k⁺_KH, k^±_p for j = 1 and 2, the acoustic line and a 0.8 U_j line.
  - B and S points are marked. My reading: S(0,1) ≈ (k_r −2.6, St 0.30) and S(0,2) ≈ (−5.8, 0.75); the j = 2 band starts near St ≈ 0.6.
- **Fig. 2 (p. 5):** Δk between k⁺_KH and k⁻_p vs St at M_j = 1.1 (j = 1 solid, j = 2 dash-dotted), with the eq. 12b resonance levels as horizontal lines. This is the graphical recipe for the prediction.
- **Fig. 3 (p. 5):** schematic of the nozzle and microphone positions.
- **Fig. 4 (p. 6):** m = 0 SPSL map (St 0.5–0.9 vs M_j 1–1.3) with Tam's formula overlaid.
  - The A1/A2 tones and the switch are clear.
  - A weaker m = 0 trace at higher St for M_j ≳ 1.18 is visible but not discussed.
- **Fig. 5 (p. 6):** the same map with the predictions overlaid. **The key figure.**
  - Free-stream closure (white dotted) and guided-mode closure (red).
  - B(0,2) and S(0,2) tracks (white dashed), and Shen & Tam (black).
  - My reading: the A2 prediction runs to M_j ≈ 1.25, past where the measured A2 tone fades (≈1.2).
- **Fig. 6 (p. 7):** normalised scalograms at M_j = 1.115, 1.12, 1.125 and 1.13 (first 10 s), showing exclusive A1↔A2 jumps.
- **Fig. 7 (p. 8):** PSD of the A1 wavelet envelope at M_j = 1.125, with a single sharp peak at St_d ≈ 0.069.
- **Fig. 8 (p. 8):** m = 0 spectrum at M_j = 1.125 with St₁, St₂ (about 160 dB/St) and a weak St_d bump (about 120 dB/St).
- **Fig. 9 (p. 8):** far-field SPSL map at ψ = 120°, with the same A1/A2 pattern.

## Notation
- **Wave labels:** superscripts ± give the sign of the **group velocity** (+ downstream, − upstream). k_KH is the KH wave, k_p the guided (acoustic) jet mode and k_a the free-stream sound wave.
- **Mode orders:** (m, j) are the azimuthal and radial orders. B(m,j) and S(m,j) are the branch and saddle points that bound the propagative band of k_p.
- **Non-dimensional groups:**
  - k is normalised by D, and ω = 2π St M_a. St = fD/U_j (nozzle D, **not** D_j).
  - M_a = U_j/c∞ is the acoustic Mach number. M_j = U_j/c_j, and T = T_j/T∞.
- **Loop geometry:** L_s is the location of the s-th shock cell. α is the shock-cell shortening rate. R₁ and R₂ are the end reflection coefficients, φ = arg(R₁R₂), and p is an integer.
- **Classical-model symbols:** U_c is the convection velocity, h the nozzle-to-reflection distance, λ_sc the shock-cell wavelength and λ_sw the standing-wave wavelength.
- **Staging quantities:** St₁ and St₂ are the A1 and A2 frequencies, and St_d is the difference frequency.
- **Wavelet and spectra:** w(s,t) are the wavelet coefficients at scale s. SPSL is the sound pressure spectrum level. ψ is the polar angle from the downstream axis.
- **Screech stages:** A1 and A2 are axisymmetric, B and D flapping, and C helical (Powell et al. 1992; p. 2).

## Relevance to this project
This project centres on resonance and feedback in jets, using acoustics, schlieren and PIV (see CLAUDE.md). The paper is a compact template for linking near-field acoustics to a cheap linear model of the feedback loop.

- **Acoustic workflow for time-resolved microphone data:**
  - Use an azimuthal array in the nozzle-exit plane (6 mics at r/D = 1) to decompose into m = 0, ±1, ±2 (p. 5).
  - Compute a Welch PSD per mode and plot SPSL in dB/St against M_j with **fine M_j steps (ΔM_j = 0.005)**. This resolves staging boundaries that coarser sweeps miss (p. 5).
  - The paper doesn't give the Welch block settings, so choose and record our own.
  - A single far-field mic is a cheap check that the near-field array is not intrusive (p. 8).
- **Cheap model of the screech loop:**
  - The vortex-sheet dispersion relation (eq. 7) is easy to code in MATLAB with `besseli`/`besselk` and a complex root-finder at real ω.
  - Combined with Pack's shock spacing (eq. 9–10) and the phase criterion (eq. 12b), it gives predicted tone frequencies, and the B/S tracks give the cut-on and cut-off limits (Fig. 5).
  - **Limits to keep in mind:**
    - The model is isothermal (T = 1) with no shear-layer thickness and no shocks in the base flow.
    - s, φ, j and p are chosen by best fit (Table 1).
    - The gain criterion is dropped, so it says nothing about amplitude or about which stage wins where predictions overlap.
  - For impinging jets, the same machinery applies with the plate as the downstream end condition (Tam & Ahuja 1990 is cited for impinging resonance, p. 2).
- **How it fits with the other screech notes:**
  - [edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) gives the experimental evidence for guided-mode closure (same co-authors Jaunet, Jordan and Towne). This paper turns it into a prediction (p. 1–2).
  - [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md) shows the upstream guided mode arises as the difference wavenumber k_kh − k_s of the KH–shock interaction. It reproduces f_s to about 1% with a global analysis that **includes** the shocks. That is a more physical treatment of the downstream end condition than the fixed-phase reflection at s = 4 used here.
  - The 2020 note reports A1 at M_j 1.09 (St 0.67) and A2 at M_j 1.14 (St 0.65), using D_j. Here A2 near M_j 1.14 sits at St ≈ 0.69 (my Fig. 4 reading). The nozzles and facilities differ, and D_j ≈ D at these M_j.
  - [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md) revisits the A1/A2 closure. Compare its choices of radial order and reflection point with the j = 2, s = 4 used here.
  - [nogueira-2021-absolute-instability-shock-containing-jets.md](nogueira-2021-absolute-instability-shock-containing-jets.md) relates to the saddle point S(0,2), where the k⁺_p and k⁻_p branches merge and which bounds the tones here.
  - [nogueira-2021-wavepacket-modulation-shock-containing-jets.md](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) treats the KH–shock interaction itself, which this model reduces to an end condition.
- **Mode switching and intermittency (feeds the SPOD → reconstruction → HPOD pipeline):**
  - A1/A2 staging is **intermittent and mutually exclusive**, with dwell times of seconds (Fig. 6). A block-averaged SPOD or Welch spectrum of such a record shows both tones, as if they coexisted (Fig. 8). Only a time-resolved view (wavelet here; Hilbert POD in our workflow) separates switching from coexistence.
  - Suggested test on time-resolved schlieren near a staging boundary: run SPOD, rebuild the A1 and A2 bands separately, then run HPOD on each. Mutual exclusion should show as anti-correlated instantaneous amplitudes, and the quadratic interaction as amplitude modulation at St₂ − St₁. See [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) and [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md).
  - **BMD** on the same data would test the St₁–St₂–St_d triad directly and locate it in space. The paper only infers it from an envelope spectrum and a weak St_d spectral peak (p. 7). Walker & Thomas (1997) used bicoherence.
  - **Record length matters:** switching occurs over 1–4 s and the paper records 30 s per condition. High-speed camera records are often much shorter, so they may catch only one stage near the boundary. Long microphone records taken alongside give the switching statistics.
  - Caveat (mine): an envelope taken at St₁ also shows modulation at St₂ − St₁ by *linear* beating if the wavelet passband takes in St₂. Bump-wavelet μ and σ are not reported. The independent St_d peak in the raw spectrum (Fig. 8) is the stronger evidence of nonlinearity. Check wavelet bandwidth before reading envelope modulation as nonlinear.
- **Methods by data type:**
  - Microphone spectra, wavelet scalograms and envelope PSDs all need **time-resolved** signals. The paper's 200 kHz sampling is far above the tone St.
  - The vortex-sheet model needs no flow-field data beyond M_j (and T). This makes it a useful sanity check alongside non-time-resolved PIV, for which POD mode pairs would identify the A1/A2 structure (see the 2020 note).
- **Facility:** this is not Shock Lab group work. Experiments are at the SUCRÉ facility, Institut Pprime (Poitiers), with a D = 10 mm convergent nozzle at T₀ = 295 K (p. 5). The co-authors overlap with Shock Lab group papers.
- **Candidates for `/add-paper`:**
  - Jordan et al. 2018 (jet–flap interaction tones; source of the resonance criteria).
  - Towne et al. 2017 (acoustic resonance in the potential core).
  - Gojon et al. 2018 (oscillation modes in screeching jets).
  - Mercier et al. 2017 (screech loop characterisation).
  - Tam & Hu 1989 (three families of instability waves).
  - Shen & Tam 2002.
  - Walker & Thomas 1997 and Walker et al. 1997 (nonlinear staging; wavelets).
