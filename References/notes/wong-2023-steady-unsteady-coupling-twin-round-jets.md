# Steady and unsteady coupling in twin weakly underexpanded round jets

- **Authors:** Tsz Y. M. Wong, M. N. Stavropoulos, J. R. Beekman, A. Towne, P. A. S. Nogueira, J. Weightman, D. Edgington-Mitchell (Monash, LTRAC; University of Michigan)
- **Source:** J. Fluid Mech. 964, A2 (2023). Received 20 Oct 2022, revised 21 Mar 2023, accepted 26 Mar 2023. Open access (CC BY 4.0), published version.
- **DOI:** 10.1017/jfm.2023.275
- **PDF:** `References/Paper_PDFs/Wong-EtAl_2023_Steady-And-Unsteady-Coupling-In-Twin-Weakly-Underexpanded-Round-Jets.pdf` (43 pp.; local only, not in Git)
- **Page refs:** PDF page n is printed page 964 A2-n.
- **Not to be confused with** [wong-2021-wavepacket-modelling-bbsan](wong-2021-wavepacket-modelling-bbsan.md), which is by Marcus Wong.
- **Tags:** twin jets, round jets, screech, A1/A2 staging, coupling symmetry (SS/SA), intermittency, symmetry switching, uncoupling, illusory coupling, beating, time-resolved schlieren, snapshot POD, SPOD, continuous wavelet transform, complex Morlet, symmetry imposition, half-domain POD, conditional sampling, facility sensitivity

## Summary
The paper asks how steady the coupling between two screeching round jets is when each jet screeches in the axisymmetric (m = 0) A1 or A2 stage, where only two coupling symmetries (SS, in phase; SA, out of phase in the imaged plane) are possible. High-speed schlieren (100–150 kHz, about 0.3–0.4 s per case) was taken for nozzle spacings s/D = 2, 3, 4 and 6 over NPR 2.02–2.41. The analysis splits each snapshot set either into top and bottom halves (half domain, HD) or into even and odd parts about the internozzle plane (symmetry imposition, SI), runs snapshot POD, and passes the leading POD temporal coefficient through a complex-Morlet continuous wavelet transform (CWT); full-domain SPOD gives the spatial modes. Three kinds of behaviour appear: steady coupling in one symmetry; competition between SS and SA, with switches every O(10²)–O(10³) screech cycles and a small (0.30–0.63 %) frequency shift per symmetry; and complete or intermittent uncoupling, seen only at s/D = 6, where each jet screeches at its own frequency (about 0.5–0.6 % apart). Two uncoupled jets with slightly different frequencies beat between in-phase and anti-phase, so SI-POD shows "illusory coupling" in both symmetries; a synthetic-wave appendix shows how to detect this from the beat frequency. Coupling is most intermittent around the A1→A2 staging and tends to steady SS coupling as NPR rises in A2.

## Key findings
- **Three coupling behaviours across the parameter space** (p. 9–12, Fig. 3):
  - A1/A2/B staging NPRs are almost the same in twin and single jets: screech starts at NPR 2.07, A1 runs to 2.17, A2 from 2.22 to 2.36, with A1→A2 staging between 2.17 and 2.22 and A2→B staging around 2.31–2.36 (p. 9–10). This agrees with the acoustic data of Knast et al. (2018).
  - Early A1 (NPR 2.07, 2.12): competition between symmetries, with an SA preference at five of eight points (p. 11).
  - A2 (2.22 ≤ NPR ≤ 2.36): SS dominates at seven of ten classified points (p. 12).
  - Every spacing changes its dominant symmetry or coupling state at the A1→A2 staging: s/D = 2 goes SA→SS, s/D = 3 goes SS→SA, s/D = 6 uncouples (p. 12).
  - Least unsteady: A2 at s/D = 2 and 3. Most unsteady: s/D = 6 (p. 12).
  - At s/D = 3 alone, four distinct coupling forms appear across six data points (p. 10).
- **Steady coupling, s/D = 2, NPR 2.17** (p. 12–15, Fig. 4–6):
  - Top and bottom HD POD energies and scalograms match: the jets are always coupled.
  - The odd (SA) SI field has a leading POD pair; the even field has none. The dominant symmetry's wavelet power is typically at least ten times the other's (p. 13).
  - One tone at St = 0.636, wandering slightly in time (attributed to supply-pressure fluctuations). The SPOD peak is at least two orders of magnitude above the suboptimal modes (p. 14).
- **Complete uncoupling, s/D = 6, NPR 2.22** (p. 15–19, Fig. 7–10):
  - HD scalograms show the two jets at slightly different frequencies (attributed to machining tolerances; p. 17).
  - SI-POD shows a leading pair in both even and odd fields, and high-frequency-resolution SI scalograms (c = 600) show both frequencies in both symmetries. Taken at face value this looks like simultaneous SS and SA coupling; it is not (p. 16–17).
  - A high-time-resolution CWT (c = 3) shows a regular beat in the even and odd powers. A PSD of the wavelet power over time at St = 0.692 peaks at ΔSt ≈ 0.0036, the top–bottom frequency difference (p. 18, Fig. 9).
  - FD SPOD has two peaks, St = 0.689 (bottom jet) and 0.693 (top jet); each leading mode shows mainly one jet, with a weak trace in the other jet, perhaps from cross-forcing (p. 18–19, Fig. 10).
  - No recoupling was seen in O(10³) screech cycles at this condition (p. 19).
- **Symmetry competition, fast and slow** (s/D = 3, NPR 2.12; p. 19–20, Fig. 11–13):
  - SA (St = 0.672) is steady for t* ≈ 1–1700, then rapid switching for t* ≈ 1700–3000, then SS (St = 0.670) for t* > 3700. No switch back to SA was recorded (p. 19–20).
  - SPOD has two peaks, St = 0.670 (SS mode) and 0.673 (SA mode) (p. 19, Fig. 12).
  - The rapid-switching interval is too short for converged SPOD at the needed frequency resolution, so the authors use the scalogram to conditionally sample snapshots belonging to each frequency and run POD on each subset. Each subset gives a clean leading pair, SS at 0.670 and SA at 0.672 (p. 19–20, Fig. 13).
  - SS sits at a lower frequency than SA, consistent with stability-theory screech predictions for twin jets (Stavropoulos et al. 2022; p. 19).
- **Persistent symmetry competition** (s/D = 4, NPR 2.17; p. 20–22, Fig. 14–15):
  - SA at St = 0.636 dominates, interrupted throughout by SS bursts at St = 0.632; after t* ≈ 6000 the balance becomes more even (p. 20).
  - SPOD with NFFT = 9600 resolves SS at 0.632 and SA at 0.636. A large suboptimal SPOD eigenvalue near St = 0.634, the frequency crossed during transitions, is the SPOD signature of competition (p. 22; conclusion p. 26).
  - At s/D = 4, NPR 2.22 the record is punctuated by short bursts of SS (St = 0.690) and SA (St = 0.691) (p. 22, Fig. 16).
- **Intermittent uncoupling and recoupling** (s/D = 6, NPR 2.26; p. 24–25, Fig. 17–19):
  - Mostly SS coupling (SPOD peak St = 0.659), but over t* ≈ 1400–2500 the jets uncouple: bottom jet St ≈ 0.656, top jet St ≈ 0.659–0.660. SPOD on that window (NFFT = 2400) gives single-jet modes at each frequency (p. 24).
  - The jets recouple at the top jet's frequency (p. 25).
  - Full-record POD does not capture the uncoupled interval at all, probably because it is short (p. 32).
- **Frequency shifts** (abstract, p. 1): switching symmetry shifts the screech frequency by 0.30–0.63 %; uncoupled jets differ by about 0.6 %.
  - Check (my arithmetic): 0.670 vs 0.672 is 0.30 %, 0.632 vs 0.636 is 0.63 %; 0.689 vs 0.693 is 0.58 %, ΔSt 0.0036/0.69 ≈ 0.52 %.
- **Is intermittency driven by supply pressure or by competing global modes?** (Appendix E, p. 39–41, Fig. 36–37), with NPR re-measured in 0.01 steps:
  - s/D = 3, NPR 2.07 → 2.08 → 2.09 goes SA → intermittent → SS. A monotonic trend, so supply-pressure fluctuations could explain the intermittency there.
  - s/D = 4, NPR 2.11 → 2.12 → 2.13 goes SA → SS transitions → SA. Not monotonic, so supply-pressure drift cannot explain it; the authors point to stochastic switching between competing global modes (attractors) of similar gain.
  - The twin jet adds sensitivity within one facility on top of the known between-facility sensitivity of screech (p. 41).
- **Conclusions** (p. 26):
  - Uncoupling at s/D = 6 is put down to the large spacing approaching the single-jet limit plus staging weakening any single global mode; coupled SS, coupled SA and uncoupled states may be attractors of similar strength.
  - The specific NPRs of each state are facility-specific (cf. Bell et al. 2021 in two facilities), but intermittency itself is expected to be general (p. 4, 12, 26).
- **Method lessons from synthetic waves** (Appendix C, p. 32–38):
  - Two uncoupled waves at slightly different frequencies periodically fall in and out of phase; SI then shows alternating apparent SS and SA ("illusory coupling").
  - Litmus test: the beat frequency of the even/odd wavelet power equals the frequency difference of the two waves (5 Hz for 55 and 60 Hz waves; p. 36).
  - POD separated 55/60 Hz waves only imperfectly (each leading mode has a weak trace of the other wave), whereas SPOD separated them cleanly (p. 34–35).
  - At 59.75 vs 60 Hz, POD over the same 10 s record is clearly unconverged: both waves in every leading mode and inconsistent phase between pairs (p. 38, Fig. 34). Close frequencies need long records for POD and high NFFT (hence few blocks) for SPOD.

## Setup / method
- **Facility:** Shock Lab group facility. The paper names LTRAC at Monash, not the lab space (p. 5). Temperature-controlled room (fluctuations of order 0.1 K over the three test days). Set-up similar to Knast et al. (2018).
- **Nozzles** (p. 5–6, Fig. 2):
  - Two purely converging round nozzles sharing one plenum, mounted through a plate (Fig. 2b).
  - D (nozzle inner diameter) isn't stated in the text. Fig. 2(c) gives internal-geometry dimensions of 5.00, 1.50, 37.00 and 9.00 mm.
  - The single-jet comparison data are the Monash dataset of [edgington-mitchell-2022-unifying-theory-jet-screech](edgington-mitchell-2022-unifying-theory-jet-screech.md) (p. 9). That note records D = 10 mm and lip thickness 0.15D (1.5 mm) for that single-jet version of the twin geometry.
  - Machining tolerances make the two jets' screech tones differ slightly (p. 12, 17).
- **Conditions:**
  - s/D = 2, 3, 4, 6 (s = centre-to-centre spacing).
  - NPR 2.02–2.41 in steps of about 0.05 (p. 5–6). Classified points are at about 2.07, 2.12, 2.17, 2.22, 2.26, 2.31 (Fig. 3).
  - Isentropic M_j for NPR 2.02–2.41 is about 1.05–1.20 (my calculation, γ = 1.4; not tabulated in the paper). The paper says single jets screech in m = 0 for 1 < M_j ≲ 1.2 (p. 2).
  - Plenum stagnation pressure from an RS-461 transducer, 0–10 bar, ±0.25 % (p. 5).
  - St = f D/U_j with U_j the ideally expanded velocity. t* = t f_t, time in top-jet screech periods (p. 6).
- **Schlieren** (p. 5–6):
  - Z-type Toepler system, two parabolic mirrors of 2032 mm focal length.
  - Pulsed LED (Willert et al. 2012), 1 μs pulse. Photron FASTCAM SA-Z.
  - Knife edge set for streamwise density gradient ∂ρ/∂x. Only the (x, y) plane containing both jets is imaged, so only the coupling in that plane (SS vs SA) is observed.
  - s/D = 2, 3, 4: 256 × 384 px at 150 kHz. s/D = 6: 384 × 384 px at 100 kHz.
  - Recordings are 0.5 s long, O(10³) screech cycles (p. 12). Analysis uses N = 50,000 snapshots (s/D = 2–4) or 40,000 (s/D = 6) (p. 7), i.e. about 0.33 s and 0.40 s (my arithmetic). Scalogram axes run to t* ≈ 7000 and 10,000 respectively.
  - Schlieren intensity is treated as a proxy for path-integrated density gradient; absolute POD/SPOD "energies" are not comparable between cases (p. 13).
- **Data transforms** (p. 8–9):
  - FD: full-domain snapshots.
  - HD: top half (y ∈ T) and bottom half (y ∈ B) analysed separately, one jet each (eqs. 3.8–3.9).
  - SI: even and odd parts about y = 0, following Nogueira & Edgington-Mitchell (2021) (eqs. 3.10–3.11). Even ⇒ SS, odd ⇒ SA.
- **POD** (p. 6–7): snapshot POD (Sirovich 1987) of mean-subtracted intensity; needs no time resolution. Here it serves as a spatial noise filter: its leading temporal coefficient is the time series fed to the CWT, because CWT of raw pixel data gives noisy scalograms (p. 9). Only mode 1's coefficient is used; summing the pair's powers made negligible difference (p. 9).
- **SPOD** (p. 7): uniform weight, Hann window, 50 % overlap, NFFT = 4800 (default), 9600 (s/D = 4, NPR 2.17) or 2400 (s/D = 6, NPR 2.26 sub-window). Applied to FD data only. Needs time-resolved data.
  - My estimates (not in the paper): NFFT 4800 gives about 19 blocks and Δf = 31.25 Hz at 150 kHz, or about 15 blocks and Δf ≈ 20.8 Hz at 100 kHz. NFFT 9600 at 150 kHz gives about 9 blocks. The 2400 sub-window case has very few blocks.
- **CWT** (p. 7–8): complex Morlet with B_c = c/(k_sd f_c), k_sd = 5 (following Moca et al. 2021).
  - c = 600 cycles for high frequency resolution, c = 3 for high time resolution.
  - My estimate of the relative frequency spread k_sd/(2πc): about 0.13 % for c = 600, enough to separate the 0.3–0.6 % shifts here, versus about 26 % for c = 3, which smears the two tones together but resolves beats.
  - Wavelet power P = |T|² from the POD temporal coefficient scaled by its modal energy (eq. 3.12).
- **Pipeline summary** (Table 1, p. 10): FD-POD and FD-SPOD for dominant structures and frequencies; HD-POD-CWT to track each jet's frequency over time; SI-POD-CWT to track which symmetry dominates over time.
- **Symmetry classification** (Appendix A, p. 27): power ratio PR (eq. A1) of even to odd squared wavelet power summed over the fundamental frequencies. PR > 2 is strong SS, PR < 0.5 strong SA, confirmed by inspecting SPOD modes.
- **Conditional sampling** (p. 19–20, 39): scalogram-based selection of screech-cycle intervals, then POD on each subset. Used for the fast-switching interval at s/D = 3, NPR 2.12, for SS-only cycles t* = 4300–5300 (Fig. 27b), and for transition intervals at s/D = 4, NPR 2.17 (t* = 260–500, 2000–2200, 3200–3430, 4930–5200; Appendix D).
- **Synthetic test case** (Appendix C, p. 32–38): g₁,₂ = A sin(kx − ω₁,₂ t) + Gaussian white noise, stacked as "top" and "bottom" waves. f₁ = 55, f₂ = 60 Hz, A = 1, wavenumber 112.5 m⁻¹, sampled at 3600 Hz for 10 s; SPOD Δf = 0.5 Hz with 50 % overlap. Variants: 59.75 vs 60 Hz (Fig. 34) and 975 vs 1000 Hz (Fig. 23, reproduces the s/D = 6 POD modes).
- **No modelling or simulation** in this paper. The only theory link is the citation of vortex-sheet/LSA predictions that SS and SA screech frequencies differ slightly (Stavropoulos et al. 2021, 2022) and the global-mode competition argument (Nogueira & Edgington-Mitchell 2021; Bell et al. 2021; Jeun et al. 2021a).

## Key equations
- Snapshot POD (eqs. 3.1–3.3, p. 6–7):
  $$\mathbf q(\mathbf x,t)-\bar{\mathbf q}(\mathbf x)=\sum_j a_j(t)\,\boldsymbol\phi_j(\mathbf x),\qquad \mathbf Q^{\mathrm T}\mathbf Q\,\boldsymbol\psi_j=\lambda_j\boldsymbol\psi_j,\qquad \boldsymbol\phi_j=\mathbf Q\boldsymbol\psi_j\frac{1}{\sqrt{\lambda_j}}$$
- SPOD eigenproblem (eq. 3.4, p. 7): $\hat{\mathbf C}\mathbf W\hat{\boldsymbol\Phi}=\hat{\boldsymbol\Phi}\hat{\boldsymbol\Lambda}$.
- CWT (eq. 3.5, p. 7): $T(a,b)=\frac{1}{\sqrt a}\int_{-\infty}^{\infty} q(t)\,\psi^*\!\left(\frac{t-b}{a}\right)dt$, with $a=f_c/f$ (p. 8).
- Complex Morlet (eq. 3.6, p. 7):
  $$\psi_m(t)=\frac{1}{B_c\sqrt{2\pi}}\exp\!\left(-\frac{t^2}{2B_c^2}\right)\exp(j2\pi f_c t),\qquad B_c=\frac{c}{k_{sd}f_c}$$
- Wavelet power (eq. 3.7, p. 8): $P(a,b)=T\,T^*=|T(a,b)|^2$.
- HD/SI wavelet power of POD mode j (eq. 3.12, p. 9): $P_j^{HD}=|T_j^{HD}|^2$, with $T_j^{HD}$ the CWT of $\lambda_j^{HD} a_j^{HD}(t)$ (coefficient scaled by its modal energy). Same form for SI (even/odd).
- Symmetry imposition (eqs. 3.10–3.11, p. 8): $Q_e(x,y)=\tfrac12[Q(x,y)+Q(x,-y)]$, $Q_o(x,y)=\tfrac12[Q(x,y)-Q(x,-y)]$.
- Symmetry ratio (eq. A1, p. 27): $PR=\sum_{i\in F}|P_{1e,i}|^2\big/\sum_{i\in F}|P_{1o,i}|^2$, F = set of fundamental screech frequencies (two for uncoupled cases).
- Synthetic waves (eq. C1, p. 33): $g_{1,2}(x,t)=A\sin(kx-\omega_{1,2}t)+\epsilon_{1,2}$, $k=2\pi\kappa$, $\omega=2\pi f$. Even/odd SI fields are ½(g₁ + g₂) and ½(g₁ − g₂), which beat at |f₁ − f₂| (p. 36).

> Eqs. 3.1–3.6 were checked against a render of p. 6–7. Eq. 3.12 and A1 come from garbled text: verify the λ-scaling inside the CWT in eq. 3.12, the squared magnitudes in A1 (P is already a power, so |P|² is a squared power as printed), and the wavenumber symbol in eq. C1 (rendered here as κ) against the PDF.

## Data tables
**Coupling state by condition** (Fig. 3, p. 11; marker colour/shape read from the figure, St approximate):

| s/D | NPR ≈ 2.07 | 2.12 | 2.17 | 2.22 | 2.26 | 2.31 |
|---|---|---|---|---|---|---|
| 2 | SA comp. | SA comp. | SA steady (St 0.636) | SS steady | SS steady | not classified (A2/B switching) |
| 3 | SA comp. | equal comp. (St ≈ 0.67) | SS steady | SA steady | SS steady | SA steady |
| 4 | SS comp. | SA comp. | equal comp. (St ≈ 0.634) | SS steady | SS steady | not classified (A2/B switching) |
| 6 | uncoupled (St ≈ 0.71) | SA comp. | SS steady | uncoupled (St ≈ 0.69) | SS + uncoupled comp. | SS steady |

Checks against the text: SA preference at five of eight NPR 2.07/2.12 points and SS at seven of ten A2 points (p. 11–12) both match this table. The s/D = 6, NPR 2.07 uncoupled marker is not discussed in the text.

**Exemplar tones** (text values):

| Case | State | St |
|---|---|---|
| s/D = 2, NPR 2.17 | steady SA | 0.636 (p. 13–14) |
| s/D = 6, NPR 2.22 | uncoupled | 0.689 bottom, 0.693 top (SPOD); ΔSt ≈ 0.0036 from beat (p. 18) |
| s/D = 3, NPR 2.12 | SA → fast switching → SS | SA 0.672 (CWT) / 0.673 (SPOD); SS 0.670 (p. 19) |
| s/D = 4, NPR 2.17 | SA dominant, SS bursts | SA 0.636, SS 0.632, transitional 0.634 (p. 20–22) |
| s/D = 4, NPR 2.22 | SS/SA bursts | SS 0.690, SA 0.691 (p. 22) |
| s/D = 6, NPR 2.26 | SS with uncoupled interval t* ≈ 1400–2500 | SS 0.659; uncoupled 0.655–0.656 bottom, 0.659–0.660 top (p. 24) |

## Figures worth remembering
- **Fig. 1 (p. 3):** schlieren of SS (s/D = 2) and SA (s/D = 4) coupling at NPR 3.86, outside the m = 0 range studied.
- **Fig. 2 (p. 6):** HD domains T and B, set-up with the two imaged planes, and nozzle internal geometry.
- **Fig. 3 (p. 11):** leading-mode SPOD spectra against NPR for the single jet and each spacing, with coupling-state markers. The best one-page map of the parameter space.
- **Fig. 4 (p. 14):** HD and SI POD energies, temporal coefficients and FD spatial modes for the steady SA case: the template for a clean coupled case.
- **Fig. 8–9 (p. 16–17):** uncoupled case. Two HD frequencies; both appear in both SI scalograms at c = 600; c = 3 shows the beat; PSD of wavelet power peaks at the frequency difference.
- **Fig. 10 (p. 18):** SPOD modes at 0.689 and 0.693, each essentially one jet.
- **Fig. 11–13 (p. 20–21):** slow and fast symmetry switching; conditionally sampled POD gives clean SS and SA pairs.
- **Fig. 14–15 (p. 22–23):** persistent competition with large suboptimal SPOD energy at the transitional frequency.
- **Fig. 17–19 (p. 24–25):** uncoupling then recoupling at s/D = 6, NPR 2.26.
- **Fig. 21, 24, 27 (p. 28–31):** POD phase portraits: ring for steady coupling, no clean ring for uncoupled or switching cases until conditionally sampled.
- **Fig. 30–34 (p. 34–38):** synthetic-wave POD, SPOD and CWT signatures of illusory coupling and of unconverged POD.
- **Fig. 35 (p. 39):** ambiguous transition-interval modes with about 90° offset between the jets; could be competing symmetries or unconverged POD.
- **Fig. 36–37 (p. 40–41):** fine NPR sweeps used to test the supply-pressure explanation.

## Notation
- SS / SA: symmetric / antisymmetric coupling. First letter is the plane normal to the jets' common plane (z), second the parallel plane (y), after Rodríguez et al. (2018). Only the second is observed here; for m = 0 jets only SS and SA exist (p. 2).
- FD / HD / SI: full domain, half domain (top/bottom), symmetry imposed (even/odd).
- Q_t, Q_b, Q_e, Q_o: top, bottom, even, odd snapshot matrices. a_j: POD temporal coefficient. λ_j: POD energy.
- P_1e, P_1o, P_1t, P_1b: wavelet power of the leading POD mode in each field.
- c: Morlet cycles. k_sd: Gaussian standard deviations (5). f_c: centre frequency. B_c: time spread.
- t* = t f_t: time in top-jet screech periods. PR: even/odd power ratio.
- Λ: SPOD eigenvalue (Fig. 3 plots ln Λ).

## Relevance to this project
Shock Lab group paper on resonance and feedback in twin jets, using exactly the time-resolved schlieren data and modal tools in CLAUDE.md. It is the time-resolved follow-up to Bell et al. (2021), which used non-time-resolved PIV.

- **Data dependence of each method:**
  - Time-resolved schlieren is essential: CWT, SPOD, beat-frequency PSDs and conditional sampling by scalogram all need it. Snapshot POD and SI/HD transforms do not, and they are the route Bell et al. (2021) and [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md) took with PIV.
  - The paper shows what non-time-resolved POD gets wrong for intermittent twin jets: four leading modes with no clean pairing, apparent SS and SA together, and 90°-offset modes (Fig. 22, 25–27, 35). With PIV alone, uncoupled, switching and genuinely mixed states are hard to tell apart.
  - Frequency resolution matters: the differences between states are 0.3–0.6 % in St, so SPOD needs large NFFT (few blocks) and the CWT needs c of order hundreds.
- **For the SPOD → reconstruction → Hilbert POD pipeline:**
  - This paper's POD-coefficient CWT is a cheap substitute for tracking amplitude and frequency in time. Hilbert POD on SPOD-reconstructed data in a narrow band around the screech tone, applied separately to the even and odd (or top and bottom) fields, would give instantaneous amplitude and frequency per symmetry without choosing c. That is a suggestion, not in the paper.
  - The illusory-coupling trap carries over: if two uncoupled jets sit inside one reconstruction band, the even/odd amplitudes will beat at Δf. Use the paper's litmus test (beat frequency = frequency difference) and check the HD fields separately. See [raiola-2025-hilbert-pod](raiola-2025-hilbert-pod.md) and [nekkanti-2021-spod-reconstruction-denoising-frequency-time](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md).
  - The SPOD reconstruction band must be wider than the 0.3–0.6 % shifts if the aim is to follow switching, or split per state if the aim is to isolate one state. Band-ensemble and adaptive SPOD ([von-saldern-2026](von-saldern-2026-band-ensemble-spod.md), [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md)) are relevant to resolving such close tones with short records.
  - For Morlet parameter choices compare [torrence-1998-practical-guide-wavelet-analysis](torrence-1998-practical-guide-wavelet-analysis.md).
- **Experimental lessons:** record lengths of O(10³) cycles may not be enough to see recoupling (p. 19); classifications depend on supply-pressure stability (p. 12, 39–41); results are facility-specific (p. 4, 12).
- **Modelling side:** none in this paper. The link to theory is that symmetry-dependent screech frequencies are predicted by vortex-sheet and stability models of round twin jets (Stavropoulos et al. 2021, 2022) and that competing global modes of similar gain are the proposed cause of switching. [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md) shows KH growth rates are almost the same for all symmetries at NPR 5, with guided-jet-mode existence bands deciding the coupling; this paper's frequency shift between SS and SA at A1/A2 is consistent with that picture. The A1/A2 closure itself: [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md), [edgington-mitchell-2022-unifying-theory-jet-screech](edgington-mitchell-2022-unifying-theory-jet-screech.md) (cited here for shock-structure changes behind staging, p. 3), and [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) / [mancinelli-2021](mancinelli-2021-complex-valued-resonance-model-screech.md) for stage competition in single jets.
- **Agreement with related notes:**
  - Twin rectangular jets show the same intermittent coupling: [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) (LES, Hilbert-transform phase, plateaus broken by competition bursts), [esfahani-2021 coupling modes](esfahani-2021-coupling-modes-twin-rectangular-jets.md) and [esfahani-2021 control](esfahani-2021-control-twin-rectangular-jet-coupling.md) (wavelet coherence), [yeung-2022](yeung-2022-3d-spod-twin-rectangular-jet.md) (D2 symmetry split, the 3D analogue of SI) and [bres-2021](bres-2021-les-twin-rectangular-jets-plasma.md). This paper notes that intermittency in those rectangular studies is qualitatively different between facilities (p. 4).
  - Mode switching and intermittency tools elsewhere: wavelets in [jordan-2018](jordan-2018-jet-flap-interaction-tones.md) and [stavropoulos-2026](stavropoulos-2026-jet-edge-interaction.md); the shear-thickness mode and POD-pair approach in [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md).
- **Related works cited, candidates for `/add-paper`:** Bell et al. 2021 (JFM 910 A20, intermittent twin-jet coupling, NPR 4.6/5.0); Bell et al. 2018 (Exp. Fluids); Knast et al. 2018 (AIAA J, coupling modes of twin axisymmetric jets); Stavropoulos et al. 2021, 2022 (twin-jet vortex-sheet and LSA screech); Jeun et al. 2021a (AIAA 2021-2103); Raman & Taghavi 1998; Raman et al. 2012 (twin-jet review); Morris 1990.

> **Check against the PDF:**
> - Uncoupled frequency difference is given as ≈ 0.6 % (abstract), ≈ 0.3 % (p. 17) and 0.03 % (p. 12, "manufacturing tolerances"); the reported St values give 0.5–0.6 %. Fig. 9 caption marks St = 0.00346 and 0.00398 while the text gives 0.0036.
> - p. 24 attributes complete uncoupling to "s/D = 6, NPR = 2.17", but Fig. 3 shows 2.17 as steady SS and §4.3 uses 2.22; probably a typo for 2.22.
> - §4.4.2 (p. 20) says "Similar to s/D = 3, NPR = 2.17"; the comparable case is NPR 2.12.
> - Fig. 3 marks s/D = 4, NPR 2.17 as equal competition (black), while §4.4.2 calls SA "clearly dominant"; Fig. 3 marks s/D = 4, NPR 2.22 as steady SS, while Fig. 16 describes bursts of both symmetries.
> - The NPR definition on p. 2 is printed as ambient over stagnation pressure (inverted); NPR = p₀/p_∞ elsewhere.
> - D and the nozzle-plate geometry are not stated in the text; the D = 10 mm / 1.5 mm lip link to the 2022 single-jet data is my inference from Fig. 2(c) and that note.
