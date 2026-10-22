---
key: "nogueira-2021-absolute-instability-shock-containing-jets"
title: "Absolute instability in shock-containing jets"
authors: ["Nogueira, P. A. S.", "Jordan, P.", "Jaunet, V.", "Cavalieri, A. V. G.", "Towne, A.", "Edgington-Mitchell, D."]
year: 2021
type: "article"
venue: "JFM (2021), arXiv version held"
bib: {"journal": "Journal of Fluid Mechanics"}
doi: "10.1017/jfm.2021.887"
arxiv: "2106.12690"
pdf: "screech-frequency-and-global-modes/Nogueira-EtAl_2021_Absolute-Instability-In-Shock-Containing-Jets.pdf"
version: "preprint"
unverified: ["DOI from Library_of_Shock_Lab/Misc/group_papers.md (ORCID/OpenAlex/Crossref), not printed in the held arXiv PDF", "volume and article number not known (possibly JFM 930, A10, 2022: unchecked)"]
group: true
facility: "Shock Lab group facility"
data: ["PIV"]
methods: ["LSA-Floquet", "LSA-local", "shock-cell-model", "wavenumber-filtering", "POD-pair"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "absolute-instability", "guided-jet-mode", "KH-wavepackets", "shock-cells", "triadic-interaction", "global-mode"]
params: {"NPR": "2.1, 2.4", "M_j": "≈1.09, ≈1.19 (isentropic estimate)", "m": "0, 1"}
topics: ["screech-frequency-and-global-modes", "screech", "shock-cell-models", "linear-models", "linear-operator-methods", "screech-staging-and-mode-switching"]
related: ["edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2020-waves-in-screeching-jets", "nogueira-2021-closure-mechanism-a1-a2-screech", "nogueira-2021-wavepacket-modulation-shock-containing-jets", "mancinelli-2019-screech-prediction-upstream-modes", "nogueira-2024-guided-jet-waves", "edgington-mitchell-2022-unifying-theory-jet-screech", "nogueira-2021-twin-jet-coupling-spatial-lsa"]
cites: ["cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "garnaud-2013-preferred-mode-incompressible-jets", "gojon-2018-oscillation-modes-screeching-jets", "huerre-1990-local-global-instabilities-spatially-developing-flows", "jordan-2013-wave-packets-turbulent-jet-noise", "jordan-2018-jet-flap-interaction-tones", "lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "michalke-1984-survey-jet-instability-theory", "nogueira-2021-closure-mechanism-a1-a2-screech", "panda-1999-experimental-investigation-screech-noise-generation", "pickering-2020-lift-up-kh-orr-jets", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance", "powell-1992-oscillation-modes-choked-circular-jets", "raman-1998-supersonic-jet-screech-review", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "schmidt-2018-spectral-analysis-jet-turbulence", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1995-supersonic-jet-noise", "tan-2017-broadband-velocity-fluctuations-screeching-jets", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "Floquet LSA of a sinusoidal shock-cell jet: a KH–guided-mode saddle gives absolute instability; saddle St within 2–6% of screech (NPR 2.1 m = 0, 2.4 m = 1); nozzle sets amplitude only"
---
# Absolute instability in shock-containing jets

- **Authors:** P. A. S. Nogueira, P. Jordan, V. Jaunet, A. V. G. Cavalieri, A. Towne, D. Edgington-Mitchell
- **Source:** arXiv:2106.12690v1 [physics.flu-dyn] (preprint, 23 Jun 2021; JFM style). Funded by ARC Discovery Project DP190102220 (p. 25).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech-frequency-and-global-modes/Nogueira-EtAl_2021_Absolute-Instability-In-Shock-Containing-Jets.pdf` (28 pp.)
- **Tags:** screech, absolute instability, spatially periodic linear stability (SP-LSA), Floquet analysis, Briggs–Bers saddle point, Kelvin-Helmholtz wavepacket, guided jet mode, shock-cell modulation, oscillator vs amplifier, POD comparison, underexpanded jet

## Summary
The paper linearises the compressible inviscid equations about a model jet mean flow whose streamwise velocity varies sinusoidally in x. This sinusoid stands in for the shock-cell train. A Floquet ansatz turns the problem into an eigenvalue problem for a complex Floquet exponent μ at about the cost of a locally parallel analysis. With zero shock amplitude it recovers locally parallel LSA exactly, repeated every k_sh. A small shock amplitude (A_sh = 0.02) barely changes the eigenvalues but modulates the eigenfunctions. Its main effect is to create a saddle point between the downstream Kelvin-Helmholtz (KH) mode and the upstream guided jet mode with positive temporal growth rate. This is an **absolute instability**: the impulse response grows both upstream and downstream, so the jet acts as an oscillator. The saddle frequencies match measured or simulated screech for m = 0 (NPR 2.1) and m = 1 (NPR 2.4), and the saddle mode shapes and wavenumber spectra match PIV POD modes. The authors conclude that screech can be selected without a nozzle: the nozzle sets the tone amplitude, not its frequency.

## Key findings
- **Equivalence with locally parallel LSA** (p. 7–8, Fig. 2): with A_sh = 0 the SP-LSA spectrum is the LSA spectrum repeated at μ = k + N k_sh. All modes fall within 0 ≤ μ_r ≤ k_sh. The few unmatched eigenvalues on the real axis are higher-wavenumber soft-duct modes (Towne et al. 2017). Modes are identified by continuation from an auxiliary LSA run (p. 8).
- **Shock cells barely move the eigenvalues:** at A_sh = 0.02 the growth rate and wavenumber change by less than 0.01% at real frequencies, but the eigenfunctions change non-trivially (p. 8).
- **How the shocks modulate each wave** (p. 9–11, Fig. 4–6):
  - m = 0 (NPR 2.1, St 0.7): modulation of u is mainly near the centreline, with little in the shear layer. The KH v-component is modulated in the shear layer. The guided-mode v-component is modulated between the centreline and its first radial node (p. 10).
  - m = 1 (NPR 2.4, St 0.47): slight modulation of KH u in the shear layer and outer region. It is stronger in KH v and in both components of the upstream wave. Some regions respond in antiphase to the shock pattern (Fig. 5c) (p. 10).
  - For both m, the **upstream guided mode is modulated more strongly than the KH mode** (p. 10).
  - On the centreline, a maximum in the mean velocity coincides with a maximum of KH |u| but a *minimum* of guided-mode |u|. The authors suggest this is because the two waves cross the shocks from opposite directions (p. 10, Fig. 6a).
  - The trends match the NPR 2.1 complex POD mode: |u| maxima align with mean-velocity maxima, and similar oscillations appear near the 3rd shock cell (p. 11–12). For this comparison the KH growth rate was cut to 20% of its value, and no quantitative growth-rate match is claimed (p. 11–12, Fig. 6c).
- **How the modes move as ω_i increases** (p. 13, Fig. 7, NPR 2.1, m = 0, St 0.685): at ω_i = 0 the KH mode is the only unstable mode (μ_i < 0), and its μ_i rises as ω_i increases. The guided jet mode (the discrete mode nearest the neutral acoustic branch) moves the opposite way, so the two approach each other.
- **Saddle point, so absolute instability** (p. 13–14, Fig. 8):
  - With A_sh = 0 the KH and guided-mode trajectories pass each other without interacting. With A_sh = 0.02 they deform around a point μ_s, approach each other along one direction and are repelled perpendicular to it. That is a double root of ω(μ), i.e. a saddle.
  - The saddle meets the Briggs–Bers pinch condition: the KH mode is k⁺ and the guided mode is k⁻, and their Floquet multipliers lie on opposite sides of the unit circle as ω_i → ∞ (Brevdo et al. 1996) (p. 14).
  - Saddles were found with the Monkewitz (1988) method (p. 13). The Fig. 8 runs used ω_i = 0.436 and 0.446 for m = 0 (0.682 ≤ St ≤ 0.689) and ω_i = 0.180 and 0.204 for m = 1 (0.442 ≤ St ≤ 0.452) (p. 13).
  - There are **two nearby saddles** formed by the same pair of modes, at lower and higher ω_0,i. The higher one dominates the large-t response and is used from then on (p. 14).
  - Unlike ideally expanded jets, where absolute instability needs low density (Monkewitz & Sohn 1988), the shock-cell periodicity lets a *cold* jet go absolutely unstable by pairing modes that cannot interact in the locally parallel case (p. 14, 24).
  - Fig. 8c shows an apparent KH interaction with the acoustic continuum. The authors set it aside: that branch is a branch cut whose contribution decays in time, the mode identities swap at the saddle, and no acoustic saddle exists away from the guided-mode saddles (p. 14).
- **Frequency prediction** (Table 1, p. 15): saddle St_0 ≈ 0.684 against St_screech = 0.67 measured for NPR 2.1, m = 0 (Edgington-Mitchell et al. 2018). Saddle St_0 ≈ 0.447 against 0.4237 simulated for NPR 2.4, m = 1 (Li et al. 2020). That is about +2% and +5.5% (my calculation). The model needs no empirical input apart from the operating condition and δ (p. 16).
- **Sensitivity** (p. 15–16, Fig. 9; NPR 2.1, m = 0):
  - The two saddles **merge as A_sh → 0**, and no saddle exists at A_sh = 0 (p. 16).
  - ω_0,i and St_0 are **insensitive to shock amplitude**. Over 0 < A_sh ≤ 0.02, St_0 stays within about 0.6841–0.6846 and ω_0,i within about 0.436–0.447 (read off Fig. 9a,b).
  - They are **strongly sensitive to the shear-layer thickness δ**. ω_0,i falls monotonically from about 0.44 at δ = 0.15 to about 0.07 at δ = 0.22, consistent with KH growth falling as the shear layer thickens (Michalke 1984). St_0 rises slightly, from about 0.684 to 0.70, and stays inside the band where screech is observed (Mancinelli et al. 2019) (p. 16, Fig. 9c,d; values read off the axes).
  - Implication: in a real, spreading jet the instability is a **pocket of absolute instability**, with downstream thickening restoring convective, then stable, behaviour. This is analogous to wakes (Chomaz et al. 1988), except that here the periodicity, not backflow, triggers it (p. 16, 23–24).
- **Saddle mode shapes vs POD** (p. 16–18, Fig. 10–11):
  - Near the saddle, the interference between KH and guided waves dominates, and the direct shock-cell modulation is minor (compare Fig. 4 with Fig. 10) (p. 16, 23).
  - m = 0 (St 0.6841, ω_i 0.4465): the modulation pattern matches the NPR 2.1 POD mode, especially near the centreline and outside the shear layer. The model does not capture wavepacket growth or decay, or the radial spreading, because it has no shear-layer thickening (p. 16).
  - m = 1 (NPR 2.4, St 0.448, ω_i 0.204): it was compared with the NPR 3.4 helical POD mode, because Li et al. (2020) show only the real parts of their DMD modes. NPR 3.4 has a small Mach disk and longer shock cells, so the comparison is qualitative. There is a "remarkable" match in radial velocity, including the alternation of peaks between centreline and shear layer (p. 17–18).
- **Wavenumber content at the saddle** (p. 18–20, Fig. 12):
  - Method: reconstruct u over the first ten shock cells, ignoring μ_i, then FFT in x. Only μ_r + N k_sh can carry energy. Energy at other wavenumbers is leakage from domain truncation, because λ_sh and 2π/μ_r are incommensurate (p. 18).
  - As ω_i grows, the KH mode picks up energy at the upstream wavenumber, and vice versa. At the saddle the single mode has peaks at both, with **k_kh − k_sh = k_upstream** (N = 0, −1). This is the Tam & Tanna (1982) relation (p. 19).
  - The spectrum of the NPR 2.1 POD mode has the same structure (Fig. 12f) (p. 20).
- **Cut-on and cut-off of A1 with NPR** (p. 21, Fig. 13):
  - At low M_j, k_sh is too large and the KH and guided modes are too far apart to interact.
  - At moderate M_j, a saddle forms.
  - At higher M_j, the KH mode crosses the acoustic branch before the guided mode cuts on, so there is no saddle. Secondary shock wavenumbers may still give other routes (Nogueira et al. 2020).
  - Lower k_sh then allows the m = 1 interaction, which gives the B-mode "scar".
  - The model gives **no reason for the B–C–D mode switching** (p. 21).
- **Role of the nozzle** (p. 22):
  - Frequency selection does not need nozzle reflection: ω_0,r sets the tone.
  - Lip thickness changes tone amplitude but not frequency (Ponton & Seiner 1992; Raman 1997, 1998). The authors conjecture the nozzle acts on the amplification, ω_0,i, in a global sense.
  - Non-periodic flow near the nozzle decouples the upstream and downstream waves and can add reflected amplification.
  - This is analogous to wake absolute instability without a bluff body (Monkewitz & Nguyen 1987).
- **Insensitivity to shock strength agrees with prior work** (p. 23): the shock-leakage models (Manning & Lele 1998, 2000; Shariff & Manning 2013) and the experiments of Raman (1997, 1999) both show little link between shock strength and tone amplitude.
- **Scope** (p. 21, 23–24): the claim is made for free jets, "at least in cases where the position of a downstream reflection point is not clear". The authors suggest rectangular, elliptical and twin-jet screech may also be absolute instabilities of the equivalent modes.
- **Control** (p. 24–25): change the mean flow to shift the guided-mode existence band or weaken KH growth, so that ω_0,i falls. Microjets suppressing twin-jet screech (Alkislar et al. 2005) and streaks reducing KH growth (Marant & Cossu 2018; Lajús et al. 2019; Nogueira & Cavalieri 2021) are read as attacks on this absolute instability.

## Setup / method
- **Type:** theory and linear model (SP-LSA). There are no new experiments. The comparison data are existing PIV POD modes, from Edgington-Mitchell et al. (2014b, 2018, 2021a), and the screech frequency from simulations by Li et al. (2020).
- **Experimental data used for comparison:** PIV of Monash screeching jets at NPR 2.1 and 3.4, taken in a **Shock Lab group facility** (the paper gives no details and refers to Edgington-Mitchell et al. 2021a; see [waves note](edgington-mitchell-2020-waves-in-screeching-jets.md) for the D = 15 mm nozzle and PIV details). The PIV is **not time-resolved**, so the screech mode is the complex mode built from the leading POD pair, as in 2021a (p. 11).
- **Governing equations** (p. 4): compressible, **inviscid** linearised equations (linearised Euler) for q' = [ν, u_x, u_r, u_θ, p]ᵀ, where ν is specific volume. Mean radial and azimuthal velocities are neglected. Normal modes are taken in t and θ.
- **Base flow** (p. 4–5, 7):
  - The model mean flow is U_x = U(r)[1 + A_sh cos(k_sh x)], with a Michalke (1971) tanh profile for U(r) of thickness δ, based on the ideally expanded diameter D_j. Only the leading term of the Pack (1950) shock-cell series is kept.
  - Temperature comes from Crocco–Busemann (Lesshafft & Huerre 2007). Pressure comes from integrating the streamwise momentum equation (van Oudheusden et al. 2007). Specific volume comes from the ideal-gas law.
  - Variables are scaled by D, c∞ and ρ∞. The shear layer has no other streamwise variation, so there is no spreading (p. 7).
  - A_sh = 0.02 was chosen to match the velocity oscillation seen around the **4th shock cell** in experiments, and it keeps the whole shock region supersonic (p. 7).
  - The shock spacing is from Pack (1950) (p. 7). Figure 1 (p. 7) shows the resulting NPR 2.1 mean flow, which differs in shape from measured mean flows (p. 7).
- **Cases** (p. 7, 9, 13, 15–17):

  | NPR | M_j (my calc.) | m | Expected screech mode | δ (saddle analysis) | δ (modulation analysis) | St, modulation | St window, saddle | Comparison |
  |---|---|---|---|---|---|---|---|---|
  | 2.1 | ≈1.09 | 0 | A1 | 0.15 | 0.15 | 0.7 | 0.682–0.689 | 0.67, experiment (Edgington-Mitchell et al. 2018) |
  | 2.4 | ≈1.19 | 1 | A2/B competition (Li et al. 2020) | 0.25 | 0.15 | 0.47 | 0.442–0.452 | 0.4237, simulation (Li et al. 2020) |

  - δ = 0.25 for m = 1 follows Powell et al. (1992), who found that B modes go with a larger spread angle (see also Tan et al. 2017) (p. 7).
  - The modulation analysis uses δ = 0.15 for both cases so they can be compared fairly (p. 7).
  - At these frequencies, the guided jet modes are of radial order 2 (m = 0) and order 1 (m = 1) (p. 9).
  > M_j is not given in the paper. I computed it from NPR with the isentropic relation (γ = 1.4); the 1.09 matches the waves note.
- **Floquet formulation** (p. 5–6): q̂ = q̃(x,r)e^{iμx}, where q̃ has the base-flow period and is expanded in Fourier harmonics e^{ink_sh x}. Exponents μ and μ + N k_sh describe the same solution. Up- and downstream modes are classified with Briggs' criterion (p. 6).
- **Absolute and convective instability** (p. 6, 13): this follows Briggs (1964), Bers (1975) and Huerre & Monkewitz (1985, 1990), extended to periodic flows by Brevdo et al. (1996); see also Brancher & Chomaz (1997).
  - The flow is absolutely unstable if a saddle in the (ω, μ) plane has ω_0,i > 0 and is formed by a k⁺ and a k⁻ mode.
  - At large t, the impulse response at fixed x goes as exp(−iω_0 t), with spatial structure q̂ at the saddle.
- **Numerics** (p. 6):
  - Chebyshev collocation in r, with the mapping and boundary conditions of Lesshafft & Huerre (2007). Fourier collocation in x over the periodic cell (Weideman & Reddy 2000, MATLAB differentiation suite).
  - Solved with Arnoldi (`eigs` in MATLAB).
  - N_r × N_x = 80 × 31 converges the relevant modes, especially at low A_sh.
  - 400 eigenvalues take about **180 s on a laptop** per parameter set.
- **Saddle search procedure** (p. 13):
  1. Find the complex ω at which the KH eigenvalue approaches an upstream eigenvalue in locally parallel LSA.
  2. Re-run SP-LSA at A_sh = 0 and at A_sh = 0.02.
  3. Locate the saddle with the method of Monkewitz (1988).
- **Wavenumber analysis of the modes** (p. 18): build the mode over 10 shock cells, ignoring μ_i, and take a spatial FFT. This is the same post-processing as was applied to POD and global modes in Edgington-Mitchell et al. (2021a).

## Key equations
- Linearised operator form (eq. 2.1, p. 4): $\partial_t \mathbf{q}' + \mathbf{L}_x\partial_x\mathbf{q}' + \mathbf{L}_r\partial_r\mathbf{q}' + \mathbf{L}_\theta\partial_\theta\mathbf{q}' + \mathbf{L}_0\mathbf{q}' = 0$, with $\mathbf{q}'=[\nu\;u_x\;u_r\;u_\theta\;p]^T$.
- Normal modes (eq. 2.2–2.3, p. 4): $\mathbf{q}'=\hat{\mathbf{q}}(x,r)\,e^{-i\omega t+im\theta}$, which gives $-i\omega\mathbf{I}\hat{\mathbf{q}} + \mathbf{L}_x\partial_x\hat{\mathbf{q}} + \mathbf{L}_r\partial_r\hat{\mathbf{q}} + im\mathbf{L}_\theta\hat{\mathbf{q}} + \mathbf{L}_0\hat{\mathbf{q}}=0$.
- Shock-cell surrogate (eq. 2.4, p. 4): $U_x(x,r)=U(r)\,[1+A_{sh}\cos(k_{sh}x)]$, with $k_{sh}=2\pi/\lambda_{sh}$.
- Radial profile (eq. 2.5, p. 4): $U(r)=M\left[0.5+0.5\tanh\!\left(0.5\left(\dfrac{0.5D_j}{r}-\dfrac{r}{0.5D_j}\right)\dfrac{1}{\delta}\right)\right]$, with the acoustic Mach number $M=M_j\sqrt{T_j/T_\infty}$ (p. 5).
- Periodicity (eq. 2.6, p. 5): $U_x(x,r)=U_x(x+N\lambda_{sh},r)$.
- Floquet ansatz (eq. 2.7–2.8, p. 5): $\hat{\mathbf{q}}=\tilde{\mathbf{q}}(x,r)e^{i\mu x}$, with $\tilde{\mathbf{q}}=\sum_{n=-\infty}^{\infty}\tilde{\mathbf{q}}_n(r)e^{ink_{sh}x}$. Here $\mu=\mu_r+i\mu_i$ is the Floquet exponent and $e^{i\mu\lambda_{sh}}$ the Floquet multiplier. Eq. 2.9 shows that μ and μ + N k_sh describe the same solution with the Fourier coefficients re-indexed.
- Periodic stability equation (eq. 2.10, p. 5): $-i\omega\mathbf{I}\tilde{\mathbf{q}}+\mathbf{L}_x\left[\partial_x+i\mu\right]\tilde{\mathbf{q}}+\mathbf{L}_r\partial_r\tilde{\mathbf{q}}+im\mathbf{L}_\theta\tilde{\mathbf{q}}+\mathbf{L}_0\tilde{\mathbf{q}}=0$.
- Eigenvalue problem (eq. 2.11, p. 5): $\mathbf{L}\tilde{\mathbf{q}}=\mathbf{L}_\mu\,\mu\,\tilde{\mathbf{q}}$.
  - $\mathbf{L}=\mathbf{L}_c-i\omega\mathbf{I}$ (eq. A 1, p. 25). $\mathbf{L}_c$ holds the mean-flow advection $U_xD_x$, the mean-gradient terms ($\partial_xU_x$, $\partial_rU_x$, $\partial_xP$, $\partial_rP$, $\partial_x\bar\nu$, $\partial_r\bar\nu$) and the γP compressibility terms. The full 5×5 matrix is on p. 25.
  - $\mathbf{L}_\mu=-\begin{bmatrix} iU_x & -i\bar\nu & 0&0&0\\ 0& iU_x&0&0&i\bar\nu\\ 0&0&iU_x&0&0\\ 0&0&0&iU_x&0\\ 0&i\gamma P&0&0&iU_x\end{bmatrix}$ (eq. A 2, p. 25).
- Shock-cell spacing (p. 7), **as printed**: $\lambda_{sh}=\pi/2.4048\,\sqrt{M_j-1}$.
  > This is probably a typo for Pack's $\lambda_{sh}/D_j=\pi\sqrt{M_j^2-1}/2.4048$. With $M_j^2$, NPR 2.1 gives $k_{sh}D\approx 11$, which matches k_s D ≈ 11 in the waves note and the KH/upstream peak spacing of about 11 in Fig. 12 (k_x D ≈ +7 and ≈ −4). Without the square it gives ≈ 16. Check p. 7.
- Saddle and absolute-instability condition (p. 6, 13): a double root $\partial\omega/\partial\mu=0$ at $\mu_s$, with $\omega_0=\omega(\mu_s)$. The flow is absolutely unstable if $\omega_{0,i}>0$ and the saddle pinches a k⁺ and a k⁻ branch. The impulse response goes as $e^{-i\omega_0 t}$.
- Saddle Strouhal number (p. 15): $St_0=\omega_{0,r}/(2\pi M)$.
- Wavenumber selection at the saddle (p. 19): $k_{kh}-k_{sh}=k_{upstream}$, the Tam & Tanna (1982) difference wavenumber.

> Equations were rebuilt from page images (p. 4–5, 25) after garbled text extraction. The only doubtful one is the shock-spacing formula above.

## Data tables
Table 1 (p. 15): saddle frequency against screech.

| NPR | m | SP-LSA St_0 | Reference St_screech | Source | Difference (my calc.) |
|---|---|---|---|---|---|
| 2.1 | 0 | ≈0.684 | 0.67 | Edgington-Mitchell et al. 2018 (experiment) | +2.1% |
| 2.4 | 1 | ≈0.447 | 0.4237 | Li et al. 2020 (simulation) | +5.5% |

Saddle parameters quoted in the text and captions:

| Case | St_0 | ω_0,i | Source |
|---|---|---|---|
| NPR 2.1, m = 0, second saddle | 0.6841 | 0.446 (0.4465) | p. 16, Fig. 12 caption |
| NPR 2.4, m = 1 | 0.448 | 0.204 | p. 17 |

## Figures worth remembering
- **Fig. 1 (p. 7):** model mean u for A_sh = 0 and 0.02 at NPR 2.1. This is the simplest surrogate for a shock-cell train.
- **Fig. 2 (p. 8):** SP-LSA spectrum (A_sh = 0, St 0.7) overlaid on LSA at μ = k and k ± k_sh. It shows the folded spectrum: acoustic branch near μ_r = 0 and k_sh, and the KH mode also at μ_r < 0.
- **Fig. 3–5 (p. 9–11):** KH and guided-mode eigenfunctions for m = 0 and m = 1. |u| and |v| are shown with growth removed, so the shock modulation is visible.
- **Fig. 6 (p. 12):** centreline |u| of the KH and guided modes against the mean velocity (the two waves are modulated in antiphase), with the POD-mode comparison.
- **Fig. 7–8 (p. 13, 15):** μ-plane trajectories as ω_i and St change. Panel 8 is the key evidence of the saddle (A_sh = 0 vs 0.02).
- **Fig. 9 (p. 17):** ω_0,i and St_0 against A_sh (flat) and against δ (ω_0,i falls steeply).
- **Fig. 10–11 (p. 18–19):** saddle-mode |u| and |v| against PIV POD modes (NPR 2.1, m = 0; NPR 3.4, m = 1).
- **Fig. 12 (p. 20):** k_x–r wavenumber spectra of the KH and guided modes at ω_i = 0 and 0.4, the saddle mode, and the POD mode (red lines mark the modulation wavenumbers).
- **Fig. 13 (p. 21):** sketch of A1 cut-on and cut-off as NPR increases, showing KH, acoustic and upstream eigenvalues.

## Notation
- μ = μ_r + iμ_i: Floquet exponent (it reduces to the streamwise wavenumber k when the flow is locally parallel). e^{iμλ_sh}: Floquet multiplier.
- k_sh = 2π/λ_sh: shock-cell wavenumber. A_sh: shock-cell amplitude. δ: shear-layer thickness parameter.
- ω_0 = ω_0,r + iω_0,i: saddle-point (absolute) frequency. St_0 = ω_0,r/(2πM).
- M = M_j√(T_j/T∞): acoustic Mach number. D_j: fully expanded diameter.
- k⁺ / k⁻: downstream- / upstream-travelling branches (Briggs criterion). "KH" is the Kelvin-Helmholtz mode. "Ups" is the upstream guided jet mode. "Ac" is the acoustic continuum.
- SP-LSA: spatially periodic linear stability analysis. LSA: locally parallel linear stability analysis.
- Screech modes: A1/A2 (m = 0), B (m = 1 flapping), C (helical), D.

## Relevance to this project
This project analyses resonance and feedback in Shock Lab experimental data (schlieren, acoustics, PIV); see CLAUDE.md. This paper is the main mechanistic model for **why** a free shock-containing jet screeches.
- **Modelling the user can run directly:**
  - SP-LSA is cheap: about 3 min per parameter set on a laptop, using MATLAB `eigs` with Chebyshev/Fourier collocation and an 80 × 31 grid (p. 6).
  - Its inputs could come straight from lab data: δ fitted to measured shear-layer profiles, λ_sh from the shock spacing measured in schlieren or PIV mean fields, and A_sh from the mean-velocity oscillation near the 4th shell cell (p. 7).
  - The saddle frequency is barely affected by A_sh but strongly by δ (Fig. 9). Accurate shear-layer thickness matters more than shock strength.
  - Assumptions to keep in mind: inviscid, a single shock-cell harmonic, no jet spreading, and a model rather than measured mean flow. Growth rates are therefore not quantitative (p. 11, 16), while frequencies are within about 2–6% (Table 1).
  - Compare with the global stability on the measured NPR 2.1 mean flow in the [waves note](edgington-mitchell-2020-waves-in-screeching-jets.md), which gave St 0.667 against 0.67. Both reproduce the screech frequency. SP-LSA gives the *mechanism* (a KH–guided-mode saddle); the global mode gives the full spatial structure, including growth and the duct-like k_t+ wave.
- **Data requirements of the methods:**
  - The comparison data are **non-time-resolved PIV**. The screech mode is the complex mode formed from the leading POD pair, as in the waves note (p. 11).
  - The diagnostic in Fig. 12 needs only a single complex spatial mode: FFT it in x and look for energy at k_kh and k_kh − k_sh. It therefore applies equally to POD-pair modes from PIV and to SPOD modes at the screech frequency from **time-resolved schlieren**.
  - Expect leakage between the allowed wavenumbers when the window is not a whole number of shock cells (p. 18).
  - Li et al. (2020) published only the real part of their DMD modes, which made the m = 1 comparison impossible (p. 17). This argues for keeping complex modes (magnitude and phase) when analysing data.
- **Links to the SPOD → reconstruction → HPOD pipeline:**
  - The paper separates frequency, set by ω_0,r, from amplification, set by ω_0,i, which nozzle geometry and lip reflections may change (p. 22).
  - Hilbert POD on SPOD-filtered screech data could test this: frequency should stay steady while instantaneous amplitude varies with nozzle or lip changes.
  - The model **cannot explain mode switching** (B–C–D, or A2/B competition at NPR 2.4) (p. 7, 21). Time-resolved tracking of instantaneous frequency and amplitude through staging transitions (see [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)) would address a gap the authors leave open.
  - The two saddles 0.0005 apart in St (Fig. 9b) are not separable experimentally. Treat them as one tone.
- **Interpreting spatial modulation:**
  - Near the saddle, the KH–guided-mode interference dominates over direct shock modulation of each wave (p. 16, 23). This agrees with the [waves note](edgington-mitchell-2020-waves-in-screeching-jets.md), which found no evidence that the shocks modulate KH growth directly.
  - SP-LSA cannot assess the duct-like k_t+ wave that the waves paper found, because a saddle needs one upstream and one downstream mode (p. 23).
  - Before attributing PIV or schlieren modulation to the shocks, check the wavenumber spectrum.
- **Impinging jets:**
  - The claim that no nozzle reflection is needed is restricted to free jets "where the position of a downstream reflection point is not clear" (p. 21).
  - For impinging jets the plate is a clear reflector, so classic feedback-loop and resonance-model views (Mancinelli et al.) remain the natural framework.
  - The lip-thickness argument (amplitude, not frequency; p. 22) is still a useful hypothesis for impinging-jet nozzle studies.
- **Non-axisymmetric and twin nozzles:** the authors propose that rectangular, elliptical and twin-jet screech are also absolute instabilities of the equivalent modes (p. 23). Related notes: [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md); twin rectangular jets in [esfahani-2021-coupling-modes-twin-rectangular-jets.md](esfahani-2021-coupling-modes-twin-rectangular-jets.md), [esfahani-2021-control-twin-rectangular-jet-coupling.md](esfahani-2021-control-twin-rectangular-jet-coupling.md) and [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md); rectangular-nozzle trailing-edge control in [samimy-1998-rectangular-jet-trailing-edge-control.md](samimy-1998-rectangular-jet-trailing-edge-control.md) and [kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md](kerechanin-2001-trailing-edge-rectangular-jet-acoustics.md). The control idea, lowering ω_0,i through mean-flow distortion such as microjets or streaks (p. 24–25), links to [nogueira-2019-large-scale-streaky-structures-jets.md](nogueira-2019-large-scale-streaky-structures-jets.md).
- **Where it agrees or differs with other notes:**
  - **Agrees:** guided-jet-mode closure ([edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), the source of St 0.67). It also agrees with the Tam & Tanna difference-wavenumber relation confirmed in the [waves note](edgington-mitchell-2020-waves-in-screeching-jets.md).
  - **Refines:** the wavenumber-matching screech model in [nogueira-2021-closure-mechanism-a1-a2-screech.md](nogueira-2021-closure-mechanism-a1-a2-screech.md) (cited as Nogueira et al. 2020) is described as a first approximation to the saddle location (p. 22).
  - **Contrasts:** the [Mancinelli et al. 2019](mancinelli-2019-screech-prediction-upstream-modes.md) and 2020 resonance models are locally parallel, long-range feedback loops with reflection coefficients and a chosen source length. Here, by contrast, the loop closes through absolute instability with no reflections (p. 22).
  - **Companion:** the shock modulation of wavepackets is treated in more detail in [nogueira-2021-wavepacket-modulation-shock-containing-jets.md](nogueira-2021-wavepacket-modulation-shock-containing-jets.md).
- **Candidates for `/add-paper`:**
  - Brevdo, Bridges & Smith (1996), on absolute instability of periodic flows.
  - Li et al. (2020), *JFM* 902 A17, on feedback loops for different screech modes.
  - Beneddine et al. (2015), global stability of screeching jets.
  - Edgington-Mitchell et al. (2014b), *JFM* 748, the helical screech mode at NPR 3.4.
  - Edgington-Mitchell (2019), a review of screech and impinging-jet resonance.
  - Mancinelli et al. (2020), a complex-valued resonance model.
