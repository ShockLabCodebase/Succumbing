---
key: "gudmundsson-2011-instability-wave-models-near-field-jets"
title: "Instability wave models for the near-field fluctuations of turbulent jets"
authors: ["Gudmundsson, K.", "Colonius, T."]
year: 2011
type: "article"
venue: "JFM 689, 97–128"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "689", "pages": "97--128"}
doi: "10.1017/jfm.2011.401"
arxiv: ""
pdf: "linear-models/Gudmundsson-Colonius_2011_Instability-Wave-Models-For-The-Near-Field-Fluctuations-Of-Turbulent-Jets.pdf"
version: "published"
unverified: []
group: false
facility: "NASA Glenn SHJAR"
data: ["PIV", "PIV-stereo", "mic-array", "microphones-near"]
methods: ["PSE", "POD", "SPOD", "wavenumber-filtering", "symmetry-decomposition"]
flow: ["round-jet", "subsonic", "heated"]
phenomena: ["KH-wavepackets"]
params: {"M_a": "0.5, 0.9", "T_j/T_inf": "0.85–1.76", "Re": "2e5–1.6e6", "m": "0–2", "St": "0.2–0.65 (agreement)"}
topics: ["linear-models"]
related: ["cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "schmidt-2018-spectral-analysis-jet-turbulence", "towne-2018-spod-relationship-dmd-resolvent", "pickering-2020-lift-up-kh-orr-jets", "zhu-2021-recursive-one-way-navier-stokes", "nogueira-2021-wavepacket-modulation-shock-containing-jets"]
cites: []
summary: "Linear PSE on Gaussian-fitted PIV mean flows (M 0.5/0.9, cold/hot) matches POD-filtered near-field array pressure for 0.2<St<0.65, m 0–2: wavepackets are linear on the mean flow"
---
# Instability wave models for the near-field fluctuations of turbulent jets

- **Authors:** K. Gudmundsson, T. Colonius (California Institute of Technology, Pasadena; Gudmundsson later at the University of Twente)
- **Source:** J. Fluid Mech. 689, 97–128 (2011), doi:10.1017/jfm.2011.401. Received 16 Nov 2010, accepted 17 Sep 2011, published online 15 Nov 2011 (p. 97). This file is the published JFM version.
- **PDF:** `References/Paper_PDFs/linear-models/Gudmundsson-Colonius_2011_Instability-Wave-Models-For-The-Near-Field-Fluctuations-Of-Turbulent-Jets.pdf` (32 pp.)
- **Page refs:** printed journal page numbers (97–128). PDF page = printed page − 96.
- **Tags:** wavepackets, linear parabolised stability equations (PSE), mean-flow stability analysis, Kelvin–Helmholtz instability, subsonic turbulent round jet, heated jet, near-field pressure, hydrodynamic vs acoustic pressure, phase-speed (wavenumber) filtering, caged microphone array, frequency-domain POD of array data (precursor of SPOD), snapshot POD of non-time-resolved stereo PIV, amplitude matching, Crocco–Busemann, marginal theory of turbulence, NASA Glenn SHJAR

## Summary
The paper tests whether the large-scale structures in natural (unforced), fully turbulent subsonic round jets can be modelled as linear instability waves of the turbulent mean flow. Linear PSE are marched on Gaussian fits of measured PIV mean flows for four jets: acoustic Mach number 0.5 and 0.9, each cold and heated (p. 102–105). The predictions are compared with a 78-microphone caged array placed just outside the shear layer, where the pressure is hydrodynamic but linear (p. 98–99, 105). Raw array data match only up to the amplitude peak, but after a frequency-domain POD filter of the array (essentially what is now called SPOD) the PSE reproduces the phase and amplitude envelope of the wavepackets for 0.2 < St < 0.65 and m = 0–2, up to one free constant per (m, ω) (p. 109–113, 121). The amplitudes found from the array are then shown to be roughly consistent with POD modes of non-time-resolved cross-stream PIV, including downstream of the potential core (p. 114–121). The conclusion is that, on average, wavepackets evolve linearly on the turbulent mean flow, with nonlinearity entering only through the mean flow (p. 122–123).

## Key findings
- **POD filtering is what makes the comparison work** (p. 109–113; Figs. 8–13):
  - Unfiltered array amplitude agrees with PSE up to saturation, then diverges, more so for higher m and St. The authors attribute this to uncorrelated acoustic contamination (p. 109).
  - Ensemble-averaged phase sometimes implies very high phase speeds, which is the signature of sound crossing the array, not of a convecting wave (p. 109).
  - After keeping only the leading array POD mode, PSE phase and amplitude agree closely, even at St = 0.65, far from the most amplified frequency (p. 110).
- **Valid frequency range** (p. 110, 113, 121):
  - Upper limit St ≈ 0.65 is set by microphone spacing (0.625D), which becomes comparable to the instability wavelength. The authors expect a denser array to extend it.
  - Below St ≈ 0.2, and especially for m = 0, PSE under-predicts growth. They attribute this to non-parallel effects: these wavelengths are comparable to the potential-core length, and m = 0 is non-zero inside the core, so it feels the core more (p. 110). They suggest global modes for these frequencies (p. 110, 113, 121).
- **Second POD mode sometimes matches PSE** (p. 111, 113; Figs. 10, 13, 20–25):
  - Cold M∞ = 0.9 at the highest frequency (St 0.65) with m > 0 per the text (p. 111); Fig. 20's caption says only m = 2 used the second mode.
  - Hot M∞ = 0.9 at m = 2 for St = 0.35, and for all m at higher frequencies (p. 113).
  - In those cases the leading mode has a phase speed consistent with acoustics uncorrelated with the instability wave (p. 113–114).
- **Hydrodynamic vs acoustic content of the array** (p. 107–108; Figs. 6–7):
  - Splitting the axial wavenumber spectrum into c_p < a∞ and c_p ≥ a∞ gives components convecting at about 0.6 U_jet and at a∞.
  - The subsonic (hydrodynamic) part dominates in all four jets, but the acoustic part grows with speed and temperature. Hydrodynamic and acoustic power scale roughly as M∞² and M∞⁴ (p. 107).
  - This split is limited by the array's axial resolution and extent (long-wave error especially), so the authors use POD instead to separate the instability wave (p. 107–108).
- **Heating destabilises, mostly m = 0** (p. 111–112; Fig. 11):
  - At St = 0.35 the m = 0 PSE growth rate of the hot M∞ = 0.5 jet is "nearly doubled" relative to the cold jet (peak −α_i ≈ 3.1 vs ≈ 1.8 near x/D ≈ 1, read from Fig. 11). m = 1 and 2 change less.
  - The heated jets remain convectively unstable; absolute instability is ruled out for these temperatures and speeds (Monkewitz & Sohn 1988; Lesshafft & Huerre 2007) (p. 111).
  - Measured hot-to-cold peak-amplitude ratios are about 1, 0.7, 0.7 for m = 0, 1, 2, even though the array was moved 0.25D further out for the hot jets (p. 112).
- **Nozzle resonance contaminates the cold M∞ = 0.9 jet** (p. 111, 117–118): ring-to-ring oscillations in the first half of the potential core, attributed by Suzuki & Colonius (2006) to duct-acoustic modes of the nozzle. Its first m = 0 peak is at St = 0.35. Intermittent, energetic near-lip centreline fluctuations also appear in the PIV. They are absent in the hot jets and are removed by POD, so they are not correlated with instability waves (p. 117–118).
- **Velocity (PIV) comparison** (p. 114–121; Figs. 14–19):
  - The instability wave is a small part of the total velocity fluctuation energy, much smaller than its share of near-field pressure (p. 115). Pressure is a convolution of velocity and so decays faster spectrally (−7/3 vs −5/3 in the inertial range; p. 114).
  - The frequency-summed PSE mean square (eq. 5.4) gets radial peak locations right but not the full profile. It sometimes exceeds the data (e.g. m = 2, x/D = 8), which is impossible; the cause is overestimated A_m at the lowest St. Dropping St = 0.05 fixes the m = 2, x/D = 3.5 case (Fig. 15; p. 115–116).
  - The leading velocity POD mode matches the frequency-summed PSE "excellent[ly]" near the nozzle lip and only in trend further downstream (p. 118).
  - Projecting PSE eigenfunctions onto POD modes (β_j, eq. 5.5) finds a best-fit frequency per mode. At that frequency the radial shapes match very well except where β_j < 0.5 (p. 120; Figs. 18–19).
  - β_j shows that different low-order POD modes correspond to instability waves at different frequencies: for m = 0 at x/D = 3.5, β₁ is high at high St and β₂ is high at low St (Fig. 16; p. 119).
  - Best-fit frequency is low at x/D = 0.5, higher at 3.5 and low again at 8 (except m = 0). Fig. 17's PSE amplitude evolution explains this: low-St waves are largest near the nozzle; higher-St waves grow then decay sooner (p. 119–120).
- **Interpretation** (p. 122–123):
  - Linearity holds only in a statistical, averaged sense, not instantaneously. Receptivity "jitter" gives different phasing in each realisation.
  - Feedback through the mean flow sets an equilibrium: a stronger-than-average wavepacket raises Reynolds stresses and the spread rate, which lowers the growth of later wavepackets. This is Malkus's (1956) marginal theory.
  - This contrasts with forced or transitional jets (Strange & Crighton 1983; Gaster et al. 1985; Mohseni et al. 2002), where higher initial amplitudes and growth rates make wave–wave interactions matter (p. 122).
- **Outlook** (p. 123–124): time-resolved PIV, denser arrays and simultaneous PIV + pressure; RANS mean flow + PSE + linear wave equation as a cheap alternative to LES or acoustic analogies for jet noise (Colonius et al. 2010; Reba et al. 2010; Rodriguez et al. 2011).

## Setup / method
- **Facility:** Small Hot Jet Acoustic Rig (SHJAR), NASA Glenn Research Center (p. 103, 105). Not a Shock Lab group facility. The data are from Bridges & Wernet (2003) (PIV) and Suzuki & Colonius (2006) (array).
- **Jets** (Table 1, p. 103): round, subsonic; see Data tables. M∞ = U_jet/a∞ is the acoustic Mach number. Nozzle diameter and geometry aren't given in this paper.
- **Stereo PIV** (Bridges & Wernet 2003; p. 103–104, 114):
  - Streamwise (x–y) and cross-stream (y–z) planes; resolution 0.04D streamwise and 0.03D cross-stream.
  - **Not time-resolved:** 200 snapshots per condition, 0.1 s apart, i.e. uncorrelated (the slowest jet travels about 350D in 0.1 s; U_jet Δt ≈ 600D for the cold M∞ = 0.9 jet).
  - Instantaneous cross-stream snapshots only for the cold M∞ = 0.9 jet, at several x; only the means for the others.
  - Jet centre found per x from the velocity-weighted centroid (eq. 3.1); cubic-spline interpolation onto a cylindrical grid; azimuthal FFT at each r.
- **Mean-flow model** (p. 104–105):
  - Gaussian fit of ū_x (eq. 3.2) with core radius R(x), shear-layer width δ(x) and centreline velocity u_c(x) by least squares, then each parameter fitted by a cubic polynomial in x for smoothness (Figs. 3–4). This avoids numerical trouble from non-smooth data in the PSE.
  - Temperature from the Crocco–Busemann relation (eq. 3.3); no temperature data were available. ū_r from continuity.
- **Microphone array** (Suzuki & Colonius 2006; p. 105–106):
  - 13 rings × 6 microphones = 78, on a cone of half-angle 11.2°, slightly more than the shear-layer spread angle. First ring r = 0.875D; rings shifted 30° azimuthally and 0.625D axially; total axial span 8.125D. Resolves m = 0–2.
  - Placed in the linear hydrodynamic (evanescent) region of Fig. 1. The array moves axially; for the heated jets it was shifted upstream, dropping the first two rings and placing the rest 0.25D further out (p. 112).
  - **Time-resolved.** Spectra from 250 bins with Δf = 25 Hz (ΔSt = 0.0043 at M∞ = 0.9), averaged. Sampling rate, window and overlap aren't stated here (see SC).
- **Phase-speed decomposition** (eq. 4.1, p. 107): axial wavenumber transform along the array, inverse-transformed separately for c_p < a∞ and c_p ≥ a∞ (cf. Tinney & Jordan 2008). Needs time-resolved data.
- **Array POD** (eqs. 4.2–4.6, p. 108–109): for each (m, ω), the array CSD matrix over the 13 rings is ensemble-averaged over the time bins and diagonalised. Filtered data = √λ₁ x₁. This is a frequency-domain POD of time-resolved data over a 1D spatial set, i.e. the same construction as SPOD over the array (my reading; the paper calls it POD).
- **Amplitude matching** (eqs. 3.5–3.7, p. 106–107): PSE shape functions are normalised at x₀ (û_r real at r = 1/2, max|q̂| = 1). A_{m,ω} minimises the squared error between measured and predicted pressure over the rings.
- **PSE** (§ 2.2, p. 102–103):
  - Linearised compressible Navier–Stokes about the measured mean flow, with the generalised Reynolds stresses R_{m,ω} set to zero; q = (u_x, u_r, u_θ, ρ, T).
  - Parabolised ansatz (eq. 2.4) with normalisation (eq. 2.7) and an α update iterated with the marching step (eq. 2.8).
  - Radial: fourth-order central differences, Thompson (1987) characteristic boundary conditions (chosen over LST asymptotic-decay conditions because they allow a smaller domain). Streamwise: first-order implicit Euler (eq. 2.6).
  - Initial condition: locally parallel LST eigenfunction at x₀ (Day et al. 2001 found little gain from non-parallel corrections).
  - A viscous term (1/Re)E is kept; the paper doesn't say whether Re is molecular or turbulent (no eddy-viscosity model is mentioned). Operators, grid sizes, Δx and domain extent are in Gudmundsson (2010), not here.
  - Limitations noted: not fully parabolic (Li & Malik 1996, 1997); captures only the KH-type instability-wave part of the solution; non-parallel effects degrade it at low St (p. 101–102, 110).
- **Velocity POD** (eqs. 5.1–5.2, p. 114–115): snapshot POD of streamwise velocity per azimuthal mode m, at each cross-stream plane, with a radial inner product weighted by r dr. Two comparisons, because the PIV has no frequency information:
  1. Frequency-summed PSE mean square, weighted by the array amplitudes A_m(nω) (eq. 5.4), against the unfiltered mean square and the leading POD mode. This tacitly assumes one dominant frequency per m (p. 115).
  2. Correlation β_j(ω) between each normalised PSE eigenfunction and each POD mode (eq. 5.5), to find the frequency each mode represents.

## Key equations
- Fourier decomposition and split of the Navier–Stokes equations (eqs. 2.1–2.3, p. 100–101):
  $$\mathbf q'(\mathbf x,t)=\sum_m\int \tilde{\mathbf q}_{m,\omega}(x,r)\,e^{im\theta}e^{-i\omega t}\,d\omega,\qquad \mathcal N(\bar{\mathbf q})=R_{0,0},\qquad \mathcal L(\tilde{\mathbf q}_{m,\omega})=R_{m,\omega},\ \omega\neq0$$
  R_{m,ω} holds double and triple convolutions of the Fourier components except those with ω′ = 0. The model sets R_{m,ω} = 0.
- PSE ansatz (eq. 2.4, p. 102):
  $$\mathbf q'(\mathbf x,t)=\hat{\mathbf q}(x,r)\,e^{i\int^x\alpha(\xi)\,d\xi}\,e^{im\theta}\,e^{-i\omega t}$$
- PSE system (eq. 2.5) and marching step (eq. 2.6), p. 102:
  $$\big(\mathbf A(\bar{\mathbf q},\alpha,\omega)+\mathbf B(\bar{\mathbf q})\big)\hat{\mathbf q}+\mathbf C(\bar{\mathbf q})\frac{\partial\hat{\mathbf q}}{\partial x}+\mathbf D(\bar{\mathbf q})\frac{\partial\hat{\mathbf q}}{\partial r}=\frac{1}{Re}\mathbf E(\bar{\mathbf q})\hat{\mathbf q}$$
  $$\Big(\Delta x\big(\mathbf A+\mathbf B+\mathbf D\tfrac{d}{dr}-\tfrac{1}{Re}\mathbf E\big)+\mathbf C\Big)_{j+1}\hat{\mathbf q}_{j+1}=\mathbf C_{j+1}\hat{\mathbf q}_j$$
- Normalisation and α update (eqs. 2.7–2.8, p. 103):
  $$\int_0^\infty\hat{\mathbf q}\,\frac{\partial\hat{\mathbf q}^*}{\partial x}\,r\,dr=0,\qquad \alpha^{j+1}_{n+1}=\alpha^{j+1}_n-\frac{i}{\Delta x}\,\frac{\int_0^\infty(\hat{\mathbf q}^{j+1}_n)^*(\hat{\mathbf q}^{j+1}_n-\hat{\mathbf q}^j)\,r\,dr}{\int_0^\infty|\hat{\mathbf q}^{j+1}_n|^2\,r\,dr}$$
- Jet centre (eq. 3.1, p. 104): $y_c(x)=\sum_i\sum_j y_i\bar u_x(x,y_i,z_j)\big/\sum_i\sum_j\bar u_x(x,y_i,z_j)$, and likewise z_c.
- Mean-velocity fit (eq. 3.2, p. 104):
  $$\frac{\bar u_x}{U_{jet}}=\begin{cases}1, & r<R(x)\\ u_c(x)\exp\!\Big(-\dfrac{(r-R(x))^2}{\delta(x)^2}\Big), & \text{otherwise}\end{cases}$$
- Crocco–Busemann (eq. 3.3, p. 105), as printed:
  $$\frac{T}{T_\infty}=-\frac{\bar u_x^2}{2}+\Big(\frac{1}{\gamma-1}\Big(\frac{T_{jet}}{T_\infty}-1\Big)+\frac{M_\infty^2}{2}\Big)\frac{\bar u_x}{M_\infty}+\frac{1}{\gamma-1}$$
- Pressure decomposition and PSE prediction (eqs. 3.4–3.5, p. 106):
  $$P(x,r,\theta,t)=\sum_m\int\tilde P_{m,\omega}(x,r)\,e^{-i\omega t}\,d\omega\,e^{im\theta},\qquad \tilde p_{m,\omega}(x,r)=A_{m,\omega}\,\hat p_{m,\omega}(x,r)\,e^{i\int^x\alpha_{m,\omega}(\xi)\,d\xi}$$
- Amplitude matching (eqs. 3.6–3.7, p. 106–107), as printed:
  $$E(A_{m,\omega})=\sum_{j=1}^{N_{ring}}\big|\tilde P^j_{m,\omega}-\tilde p^j_{m,\omega}\big|^2,\qquad A_{m,\omega}=\frac{\sum_j|I^j_{m,\omega}\tilde P^j_{m,\omega}|}{\sum_j|I^j_{m,\omega}|^2},\quad I^j_{m,\omega}=\hat p_{m,\omega}\,e^{i\int^{x_j}\alpha_{m,\omega}\,d\xi}$$
- Phase-speed split (eq. 4.1, p. 107): $P=P\{c_p<a_\infty\}+P\{c_p\ge a_\infty\}$, with $c_p=\omega/\alpha_r$.
- Array POD (eqs. 4.2–4.6, p. 109):
  $$R^k_{ij}=\tilde P^{k*}_i\tilde P^k_j,\quad \mathbf R=\frac{1}{N_{ens}}\sum_{k=1}^{N_{ens}}R^k,\quad \mathbf R\,\mathbf x=\lambda\,\mathbf x,\quad R_{ij}=\sum_n\lambda_n\,x_i(n)^*x_j(n),\quad \mathrm{POD}(\tilde P)=\sqrt{\lambda_1}\,\mathbf x_1$$
- Velocity snapshot POD (eqs. 5.1–5.2, p. 115):
  $$\phi_j(r)=\sum_{k=1}^{N}c^j_kU_m(r,t_k),\qquad M_{kl}=\int_0^\infty U_m(r,t_k)\,U_m^*(r,t_l)\,r\,dr,\qquad \Lambda_j=\|\phi_j\|^2$$
- Frequency-summed instability wave and its mean square (eqs. 5.3–5.4, p. 115):
  $$u_m=\sum_{n=1}^{N_i}A_m(n\omega)\,\hat u_m(x,r,n\omega)\,e^{i\int^x\alpha_m\,d\xi}e^{-in\omega t},\qquad \frac1N\sum_k|u_m|^2=\sum_{n=1}^{N_i}A_m(n\omega)^2|\hat u_m|^2e^{-2\int^x\alpha_{im}\,d\xi}$$
- Projection coefficient (eq. 5.5, p. 119): $\beta_j(\omega)=\langle\hat u(x,r,\omega),\phi_j(r)\rangle$, with $\|\hat u\|=\|\phi_j\|=1$ so $0\le|\beta_j|\le1$.

> Equations were checked against renders of PDF pages 4–7, 9–11, 13 and 19–21 (printed pp. 100–103, 105–107, 109, 115–117). Points to verify before coding:
> - Eqs. 2.1–2.3 were rebuilt from garbled text and the surrounding prose; only the start of § 2.1 was checked visually.
> - Eq. 3.7 is printed with magnitudes, giving a real, positive A. The complex least-squares minimiser of eq. 3.6 would be $\sum_j I^{j*}\tilde P^j/\sum_j|I^j|^2$. The printed form is presumably intentional (amplitude only, phase reference arbitrary), but it is not the exact minimiser of eq. 3.6.
> - Eq. 3.3 as printed gives T/T∞ = 1/(γ−1) at ū_x = 0 and T_jet/T∞/(γ−1) at ū_x = M∞. It is consistent only if ū_x is in units of a∞ and T in units of a∞²/c_p = (γ−1)T∞, so the left side is really T/((γ−1)T∞). The non-dimensionalisation isn't stated.
> - Eq. 3.2 puts ū_x/U_jet = 1 for r < R but u_c(x) outside; this is continuous only while u_c = 1 (i.e. while R > 0).
> - Eq. 2.7 is printed with q̂ ∂q̂*/∂x (not q̂* ∂q̂/∂x); the two differ only by conjugation, which doesn't change the zero condition.

## Data tables
**Flow conditions** (Table 1, p. 103; set points from Tanna 1977):

| Set point | M∞ = U_jet/a∞ | T_jet/T∞ | Re | Label in paper |
|---|---|---|---|---|
| 3 | 0.5 | 0.96 | 7 × 10⁵ | cold M∞ = 0.5 |
| 23 | 0.5 | 1.76 | 2 × 10⁵ | hot M∞ = 0.5 |
| 7 | 0.9 | 0.85 | 16 × 10⁵ | cold M∞ = 0.9 |
| 27 | 0.9 | 1.76 | 4 × 10⁵ | hot M∞ = 0.9 |

**Array and PIV parameters** (p. 103, 105–106, 112, 114):

| Quantity | Value |
|---|---|
| Microphones | 13 rings × 6 = 78; resolves m = 0–2 |
| Cone half-angle | 11.2° |
| First-ring radius | 0.875D (hot jets: rings 3–13 only, 0.25D further out) |
| Ring spacing | 0.625D axial, 30° azimuthal rotation; span 8.125D |
| Spectral estimate | 250 bins, Δf = 25 Hz (ΔSt = 0.0043 at M∞ = 0.9) |
| PIV snapshots | 200, 0.1 s apart (uncorrelated) |
| PIV resolution | 0.04D streamwise, 0.03D cross-stream |
| Valid PSE–data agreement | 0.2 < St < 0.65, m = 0–2 |

**Values read from figures** (verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| Convection speed of subsonic pressure component | ≈ 0.6 U_jet | text, p. 107; Fig. 6 |
| Peak growth rate −α_i, St 0.35, m = 0 | ≈ 1.8 cold vs ≈ 3.1 hot (M∞ = 0.5), near x/D ≈ 1 | Fig. 11, p. 112 |
| Hot/cold peak amplitude ratio (array) | ≈ 1, 0.7, 0.7 for m = 0, 1, 2 | text, p. 112 |
| Cold M∞ = 0.9 profile fits | R → 0 near x/D ≈ 8; u_c starts falling near x/D ≈ 8–9, ≈ 0.6 at x/D = 15; δ from ≈ 0.05 to ≈ 1.2 over x/D = 0–15 | Fig. 3, p. 105 |
| Best-fit St of POD mode 1 (m = 0, 1, 2) | x/D 0.5: 0.10, 0.05, 0.05; x/D 3.5: 0.70, 0.25, 0.15; x/D 8: 0.30, 0.10, 0.05 | Fig. 18, p. 118 |

> Fig. 19 (POD mode 2, p. 119) carries the same St labels as Fig. 18. That conflicts with Fig. 16, where β₂ for m = 0 at x/D = 3.5 peaks at low St, not 0.70. The Fig. 19 labels may be copied from Fig. 18; check before using them. Fig. 24's caption mentions "St = 0.25 and 0.35" while the panels are St 0.20 and 0.35; probably a typo.

## Figures worth remembering
- **Fig. 1 (p. 99):** cartoon of radial r.m.s. pressure decay: nonlinear hydrodynamic → linear hydrodynamic (evanescent, exponential decay) → acoustic (1/r). The basis for placing a near-field array in the linear region.
- **Fig. 2 (p. 104):** mean axial-velocity contours for the four jets; heating shortens the potential core.
- **Figs. 3–4 (p. 105):** Gaussian-fit parameters R, δ, u_c against x with cubic fits, and the fitted profiles at x/D = 1, 4, 8 for the cold M∞ = 0.9 jet.
- **Fig. 5 (p. 106):** photo of SHJAR with the caged hydrodynamic array.
- **Figs. 6–7 (p. 108):** x–t pressure along the array split into subsonic (slope 0.6U_jet) and supersonic (slope a∞) parts; r.m.s. of each for all four jets.
- **Figs. 8–9 (p. 110–111):** cold M∞ = 0.5 amplitude and phase along the array, raw vs POD mode 1 vs PSE, at St = 0.20, 0.35, 0.5, 0.65 and m = 0, 1, 2. The key result figure.
- **Fig. 10 (p. 112):** same for cold M∞ = 0.9 at St 0.35; raw phase slope too shallow downstream, POD mode 1 follows PSE.
- **Fig. 11 (p. 112):** PSE growth rates, hot vs cold M∞ = 0.5, St 0.35.
- **Figs. 12–13 (p. 113–114):** hot jets at St 0.35, including the second POD mode.
- **Figs. 14–15 (p. 116):** mean-square velocity (PIV), frequency-summed PSE and POD mode 1 against r at x/D = 0.5, 3.5, 8.
- **Fig. 16 (p. 117):** β₁ and β₂ against St for m = 0–2 at three stations; the m = 0, x/D = 3.5 cross-over.
- **Fig. 17 (p. 117):** PSE amplitude A_m exp(−∫α_i) against x at St 0.15, 0.35, 0.70; shows which frequency dominates where.
- **Figs. 18–19 (p. 118–119):** radial shapes of POD modes 1 and 2 against PSE eigenfunctions at the best-fit St.
- **Figs. 20–25 (p. 120–125, Appendix):** amplitude and phase along the array for the cold M∞ = 0.9 and both hot jets at St 0.20–0.65.

## Notation
- M∞ = U_jet/a∞: acoustic Mach number. T_jet/T∞: jet-to-ambient static temperature ratio. St = fD/U_jet.
- q = (u_x, u_r, u_θ, ρ, T): state vector. q̄: mean. q′: fluctuation. q̃_{m,ω}: Fourier component. q̂: PSE shape function.
- α(x) = α_r + iα_i: complex local wavenumber; −α_i is the growth rate; c_p = ω/α_r.
- 𝒩, 𝓛: Navier–Stokes operator and its linearisation about q̄. R_{m,ω}: generalised Reynolds stresses (nonlinear forcing).
- A_{m,ω}: amplitude from array matching. Upper case (P̃) = measured, lower case (p̃) = predicted.
- R, λ_n, x_n: array CSD matrix, eigenvalues and eigenvectors. φ_j, Λ_j, c^j: velocity POD modes, energies and coefficients. β_j: PSE–POD projection.
- SC: Suzuki & Colonius (2006).

## Relevance to this project
This project analyses resonance and feedback in Shock Lab group experiments (schlieren, acoustics, PIV) and supplements them with reduced-order models; see CLAUDE.md. This paper is a foundation of the "wavepackets as linear instability waves of the mean flow" view that underlies most later modelling of jet coherent structures, including the screech models in the library.

- **Modelling side:**
  - Shows that a linear model about the measured turbulent mean flow, with no nonlinear forcing, predicts phase, wavelength and amplitude envelope of averaged wavepackets in natural turbulent jets, up to one constant per (m, ω). The cost is a Gaussian fit of the PIV mean flow plus a PSE march.
  - Where it fails: low St (non-parallel effects; global modes suggested), downstream of the potential core where the second POD mode or acoustics take over, and anything not of KH type.
  - PSE marches downstream, so it cannot represent upstream-travelling waves. It therefore cannot model the guided-jet-mode closure of screech in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md), or the feedback loop of impinging jets. For those, use vortex-sheet or local LSA, Floquet LSA ([nogueira-2021-absolute-instability](nogueira-2021-absolute-instability-shock-containing-jets.md)), global LSA ([edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md)) or resolvent analysis.
  - Successors: [nogueira-2021-wavepacket-modulation](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) generalises the parabolised approach to shock-containing jets (parabolised Floquet equations on a PSE shock-cell base flow). [zhu-2021](zhu-2021-recursive-one-way-navier-stokes.md) (OWNS-R) keeps all downstream modes at PSE-like cost, removing PSE's KH-only restriction. [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md) moves to global resolvent with eddy viscosity and separates KH from Orr and lift-up mechanisms; the Orr-type structures downstream of the core may explain why PSE degrades there. [nogueira-2019](nogueira-2019-large-scale-streaky-structures-jets.md) finds lift-up streaks (St → 0, m ≥ 3), which this KH-type PSE model doesn't address.
  - The R_{m,ω} = 0 assumption is the point later questioned by [morra-2021](morra-2021-colour-of-forcing-resolvent-channel.md): the nonlinear forcing is coloured, not zero or white. Here the linear model works for amplitude envelopes only because the free constant absorbs the forcing.
  - The mean-flow-stability idea parallels [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md), which validates mean-flow LSA against a POD pair from non-time-resolved PIV, but for a globally unstable oscillator rather than this convectively unstable amplifier.
- **How each method depends on the data:**
  - *Time-resolved (microphones):* the frequency-domain array POD (eqs. 4.2–4.6) needs Fourier blocks, i.e. time resolution; it is SPOD over a 1D sensor set and is the direct route for the lab's microphone arrays. The phase-speed split (eq. 4.1) also needs time resolution plus enough axial extent and resolution; it is limited by long-wave error with a short array.
  - *Non-time-resolved (PIV):* snapshot POD per azimuthal mode at a cross-stream plane gives modes with no frequency. The β_j projection onto model eigenfunctions assigns each POD mode a frequency; this is a model-based way to put frequency on 2 Hz PIV. It needs an azimuthal Fourier decomposition (cross-stream planes, centre correction by eq. 3.1) and uncorrelated snapshots.
  - Comparison is only meaningful for statistics (PSD, mean square): the paper explicitly says instantaneous realisations need not follow the linear model (p. 122–123).
- **Intermittency and the SPOD → reconstruction → Hilbert POD pipeline:** the paper treats jitter and intermittency (p. 98, 122–123) as averaged out, not as something to resolve. The pipeline in CLAUDE.md could test its marginal-theory picture directly: reconstruct the leading SPOD mode at one (m, St) from time-resolved schlieren or LES, then use Hilbert POD ([raiola-2025](raiola-2025-hilbert-pod.md)) to track wavepacket amplitude over time and check whether strong bursts are followed by weaker ones. This is a suggestion, not something done in the paper. [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md) offer SPOD estimators with better frequency resolution than the 25 Hz Welch bins used here.
- **Practical lessons for lab data:**
  - Separate hydrodynamic from acoustic content before comparing with a stability model; raw near-field spectra are contaminated downstream, more so at higher M and temperature (p. 107, 111).
  - Check whether the first or second POD mode is the instability wave; at higher St and m it is sometimes the second (p. 113).
  - Nozzle-internal duct resonance can appear as near-lip fluctuations and ring-to-ring oscillations (p. 111, 117); look for it in the lab's rigs before attributing near-nozzle tones to the jet.
  - The Gaussian mean-flow fit (eq. 3.2) and Crocco–Busemann temperature (eq. 3.3) are a cheap way to build a smooth base flow from PIV for LSA.
- **Data source:** the M∞ = 0.9 jet database in [towne-2022](towne-2022-database-reduced-complexity-modeling.md) (LES with SPOD and resolvent demos) is a natural place to repeat this comparison with time-resolved data.
- **Rocket noise:** the closing proposal (RANS mean flow + PSE + linear wave equation for wavepacket noise, p. 124) is one of the reduced-order models that [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) notes have not yet been applied to rocket plumes. [mathews-2025-thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) links KH wavepackets upstream of the core end and Orr structures downstream to Mach-wave and large-scale noise in heated jets.
- **Related works cited, candidates for `/add-paper`:**
  - Suzuki & Colonius 2006 (JFM 565; the array and locally parallel LST comparison this paper extends).
  - Gudmundsson 2010 (PhD thesis, Caltech; PSE operators and numerics).
  - Bridges & Wernet 2003 (AIAA 2003-3130; PIV data).
  - Herbert 1997 (PSE review); Crighton & Gaster 1976 (slowly diverging jets).
  - Tinney & Jordan 2008 (near pressure field, wavenumber filtering).
  - Colonius, Samanta & Gudmundsson 2010; Reba, Narayanan & Colonius 2010; Rodriguez et al. 2011 (PSE wavepacket noise models).
  - Malkus 1956 (marginal theory).
