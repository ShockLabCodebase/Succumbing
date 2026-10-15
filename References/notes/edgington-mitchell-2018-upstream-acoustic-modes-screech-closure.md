# Upstream-travelling acoustic jet modes as a closure mechanism for screech

- **Authors:** D. Edgington-Mitchell, V. Jaunet, P. Jordan, A. Towne, J. Soria, D. Honnery (Monash; Institut PPRIME, Poitiers; CTR Stanford)
- **Source:** J. Fluid Mech. 855, R1 (2018), doi:10.1017/jfm.2018.642. This file is the HAL author draft (hal-02351577, JFM LaTeX style), so its page layout differs from the published Rapids version.
- **PDF:** `References/Paper_PDFs/EdgingtonMitchell-EtAl_2018_Upstream-Travelling-Acoustic-Jet-Modes-As-A-Closure-Mechanism-For-Screech.pdf` (12 pp.)
- **Page refs:** PDF page numbers. PDF p. 1 is the HAL cover sheet, so the draft's printed page n is PDF page n+1.
- **Tags:** screech, A1/A2 stages, underexpanded jet, guided jet mode (k_TH⁻), upstream-travelling wave, feedback closure, vortex-sheet model, cut-on/cut-off, POD mode pair, streamwise Fourier transform, non-time-resolved PIV

## Summary
The paper asks what carries the upstream leg of the screech feedback loop in two axisymmetric jets screeching in the A1 and A2 stages. It uses non-time-resolved planar PIV, takes the leading POD pair of the transverse velocity as the screech oscillation, and splits it by the sign of the streamwise wavenumber. A weak component with negative phase speed close to the ambient sound speed appears in both jets. It has little vorticity and its amplitude peaks in the jet core, so it is acoustic, not hydrodynamic. Its radial shape matches the (m, n) = (0, 2) upstream-travelling eigenfunction of a cylindrical vortex-sheet model (the Tam & Hu 1989 k_TH⁻ wave). Far-field acoustic maps from a separate facility show that every A1 and A2 tone sits inside the Mach–Strouhal band where this mode is propagative. The authors conclude that both stages are closed by this intrinsic guided jet mode, not by free-stream sound, contradicting Shen & Tam (2002), who proposed different closures for A1 and A2.

## Key findings
- **An upstream wave with support inside the jet** (p. 6, Fig. 4):
  - Most of the screech energy is in a downstream wave with U_c ≈ 0.7 U_j that peaks in the shear layer.
  - Both jets also show a component with negative phase speed close to the speed of sound. Its radial structure differs from the downstream waves.
  - It has very little vorticity fluctuation, so the authors class it as acoustic, not hydrodynamic.
- **Spatial structure of the two components** (p. 6, 8; Fig. 5–6):
  - Downstream (k_x ≥ 0) part: mostly in the shear layer, peaks around the 4th or 5th shock cell, and is visibly modulated by the shocks even at these low NPRs (citing Tan et al. 2017).
  - Upstream part: much lower peak amplitude (colour scale tops out near 0.2 of the downstream maximum in Fig. 5, read from the figure). It peaks in the jet core, further downstream than the KH wavepacket.
  - At x/D = 2.5 the radial profile has a centreline maximum, a null near y/D ≈ 0.3 and a second peak near the shear layer (y/D ≈ 0.65–0.8; read from Fig. 6). NPR 2.10 has the higher peak; for NPR 2.25 the outer decay starts further from the centreline.
  - The transversely integrated amplitude is similar for the two jets. Its axial envelope peaks at the 5th shock cell for NPR 2.10 and between the 3rd and 4th shock reflection points for NPR 2.25 (p. 6; Fig. 6 right shows peaks near x/D ≈ 3.3 and ≈ 3).
- **Vortex-sheet match** (p. 9–10, Fig. 7):
  - At the screech St only the (0, 2) upstream branch is available. The (0, 1) branch stays below St ≈ 0.3 (read from Fig. 7).
  - The (0, 2) eigenfunction reproduces the measured inner (core) structure at x/D = 3.0 "with excellent accuracy", including the null. The amplitude jump across the shear layer is captured only qualitatively, and outside the jet the model decays more slowly than the data.
  - The authors call the agreement remarkable given the model is parallel, linear and shock-free while the jet is non-parallel, nonlinear and shock-containing.
- **Why the shape match alone is not proof** (p. 10): the continuous branch of the vortex-sheet spectrum (free-stream acoustic waves) has similar eigenfunctions. The decisive evidence is the frequency range.
- **Tones only where the mode propagates** (p. 10, Fig. 8):
  - Far-field SPL maps over M_j ≈ 1.0–1.5 come from the SUCRE semi-anechoic facility at Institut PPRIME.
  - Cut-on and cut-off curves for the (0, 2) k_TH⁻ mode from the vortex-sheet model are overlaid. Between them the mode is propagative; outside it is evanescent.
  - All observed A1 and A2 tones fall inside this band, and no axisymmetric resonance appears outside it.
- **Same closure for A1 and A2** (p. 10–11): this contradicts Shen & Tam (2002), who proposed free-stream acoustic closure for A1 and k_TH⁻ closure for A2.
- **Conclusion** (p. 11): the upstream leg is a discrete, neutrally stable acoustic jet mode supported by both the core and the shear layer. The authors present this as a significant change in how screech is understood.

## Setup / method
- **Facility:** Shock Lab group facility (Monash authors). The paper calls it the LTRAC Gas Jet Facility (Weightman et al. 2017); it is optimised for PIV and is **not anechoic** (p. 4). The SPL map in Fig. 8 comes from a different rig, SUCRE at Institut PPRIME, Poitiers (p. 10); its nozzle isn't described here.
- **Nozzle** (p. 4): purely converging, D = 15 mm, radius of curvature 67.15 mm, parallel section at the exit, external lip thickness 5 mm. This is the same nozzle as in [Waves in screeching jets](edgington-mitchell-2020-waves-in-screeching-jets.md).
- **Cases** (Table 1, p. 5): see Data tables. Each case showed a single screech tone, with no simultaneous peaks and no mode switching (p. 4).
- **Definitions** (p. 4): NPR = p₀/p_∞. M_j, Re = U_j D_j/ν and St = f D_j/U_j use isentropic expansion to ambient pressure. St is the fundamental tone measured by a G.R.A.S. Type 46BE 1/4" pre-amplified microphone in the far field.
- **PIV** (p. 4):
  - Planar, **not time-resolved**: 2 Hz acquisition.
  - One 12-bit Imperx B4820 camera (4872 × 3248 px).
  - Smoke seeding of about 600 nm (Mitchell et al. 2013).
  - Nd:YAG sheet 1 mm thick, a pair of 6 ns pulses of about 160 mJ, Δt = 1 μs.
  - Multigrid cross-correlation (Soria 1996). Final window 0.03D × 0.03D, depth of field 0.04D, field of view 5.7D × 3.8D.
  - The mean field averages 10,000 snapshots (p. 4). The number used in the POD isn't stated separately.
- **POD** (p. 4–5):
  - Snapshot POD (Sirovich 1987) on the **transverse velocity fluctuation only**, because this separates the leading pair more cleanly.
  - The leading pair is symmetric about the centreline, which indicates m = 0 at these NPRs (Fig. 2).
  - The pair holds only a small fraction of the energy, which is typical of high-Re screeching jets (Fig. 3).
  - The phase portrait of the two coefficients, normalised by the mean radius, forms a ring. This is taken as evidence of a periodic phenomenon (Fig. 3).
  - Leading-pair assumption: prior experience with self-forced flows indicates the pair represents the feedback-loop coherent structures (p. 5).
- **Complex mode and streamwise transform** (p. 5–6):
  - Following Oberleithner et al. (2011) and Jaunet et al. (2016), the pair is combined into a complex coefficient and complex mode (eqs. 3.3–3.4). The streamwise sum in eq. 3.5 then gives the wavenumber content at each y.
  - The transform is applied to q^c = [u^c, v^c, ω_z^c] (p. 6, Fig. 4).
  - The sign of k_x is the sign of the phase velocity. It is used as a proxy for the group-velocity direction, which is justified because KH, free-stream acoustic and k_TH⁻ waves all have phase and group velocities of the same sign in supersonic jets (Towne et al. 2017; p. 6).
- **Filtering** (p. 6):
  - Upstream wave: bandpass about the negative sound-speed wavenumber with a bandwidth printed as "Δk_x = 0.45D".
  - Downstream part: high-pass, k_x ≥ 0.
  - The phase cycle of each part is shown in Supplementary Movies 1 and 2.
  - No spatial window or taper for the x-transform is stated.
- **Vortex-sheet model** (p. 8–10):
  - Cylindrical vortex sheet at r = 0.5 (lengths scaled by D). The dispersion relation is from Lessen et al. (1965), as used by Michalke (1970), Tam & Hu (1989), Towne et al. (2017) and Jordan et al. (2018).
  - Assumptions: inviscid, locally parallel, infinitely thin shear layer, no shocks.
  - Spatial problem: complex k(ω) for real ω. Roots are found with Fletcher's version of the Levenberg–Marquardt algorithm, minimising the sum of squares of the residuals.
  - For each m there is a countably infinite set of solutions n = 1, 2, 3, …, ordered by effective radial wavenumber (Towne et al. 2017).
  - The (0, 2) eigenvalue picked for comparison is marked by crosshairs in Fig. 7. It sits at about k_r ≈ −4.5, St ≈ 0.65 for NPR 2.10 and about −4.3, 0.63 for NPR 2.25 (read from the figure).
  - The M and T values used, and the velocity scale, aren't stated in this paper.
  - The model is compared with the experiment at x/D = 3.0, with r mapped to y (p. 9).

## Key equations
- POD (p. 4), with **R** = **V**ᵀ**V** and **R v** = λ **v**:
  $$\boldsymbol\phi_n(x,y) = \frac{\mathbf V\mathbf v_n}{\lVert \mathbf V\mathbf v_n\rVert} \quad (3.1), \qquad \mathbf a_n(t) = \mathbf v_n(t)\,\lVert \mathbf V\mathbf v_n\rVert \quad (3.2)$$
- Coherent screech field from the leading pair (eq. 3.3, p. 5):
  $$\mathbf q^c(x,y,t) = \sum_{n=1}^{2} a_n(t)\,\boldsymbol\phi_n(x,y) = \Re\big(\mathbf a(t)\,\boldsymbol\psi(x,y)\big),\qquad \mathbf a = a_1 - i a_2 = \hat a\,e^{-i\omega_s t},\quad \boldsymbol\psi = \boldsymbol\phi_1 + i\boldsymbol\phi_2$$
  Check: Re[(a₁ − i a₂)(φ₁ + i φ₂)] = a₁φ₁ + a₂φ₂, which matches the sum.
- Streamwise decomposition (eqs. 3.4–3.5, p. 5–6):
  $$\mathbf q^c(x,y,t) = \hat a\,e^{-i\omega_s t}\sum_k \hat{\mathbf q}^c_k(y)\,e^{ikx},\qquad \hat{\mathbf q}^c_k(y) = \sum_x \boldsymbol\psi(x,y)\,e^{-ikx}$$
- Sound-speed reference lines in Fig. 4 (p. 6): $k_x = \pm\,\omega_s / (2\pi\, a_\infty)$, i.e. k_x = ±f_s/a_∞. Fig. 4's k_x D axis is therefore in cycles per D, not radians per D.
- Vortex-sheet dispersion relation (eq. 4.1, p. 9), as printed:
  $$\frac{1}{(\omega - kM)^2} + \frac{1}{T}\,\frac{I_m\!\left(\frac{\gamma_i}{2}\right)\left[\frac{\gamma_o}{2}K_{m-1}\!\left(\frac{\gamma_o}{2}\right) + m K_m\!\left(\frac{\gamma_o}{2}\right)\right]}{K_m\!\left(\frac{\gamma_o}{2}\right)\left[\frac{\gamma_i}{2}I_{m-1}\!\left(\frac{\gamma_i}{2}\right) + m I_m\!\left(\frac{\gamma_i}{2}\right)\right]} = 0$$
- Streamwise-velocity eigenfunction (eq. 4.2, p. 9), as printed:
  $$u_x(r) = \begin{cases} -\dfrac{k\,I_m(\gamma_i r)}{Mk-\omega}, & 0 \le r \le 0.5\\[2mm] -\dfrac{k\,K_m(\gamma_o r)}{Mk-\omega}, & r \ge 0.5\end{cases}$$
- Radial wavenumbers (eq. 4.3, p. 9): $\gamma_i = \sqrt{k^2 - (\omega - Mk)^2}$, $\gamma_o = \sqrt{k^2 - \omega^2}$, with the branch cut chosen so that Re(γ_{i,o}) > 0.

> Equations were checked against a high-resolution render of PDF p. 9 and are transcribed as printed. Points to verify against the published JFM version or Towne et al. (2017) before coding the model:
> - The first term of eq. 4.1 is printed as 1/(ω − kM)². A standard vortex-sheet derivation gives a ratio of the form ω²/(ω − kM)², so this may be a typo.
> - The denominator bracket uses "+ m I_m" with I_{m−1}, whereas x I_m′ = x I_{m−1} − m I_m. This doesn't affect the m = 0 results here because the term vanishes.
> - γ_i and γ_o carry no temperature-ratio factor, and the outer branch of eq. 4.2 shares the inner (Mk − ω) prefactor with no matching constants.
> - The non-dimensionalisation (velocity scale, definitions of M and T) isn't given in this paper.

## Data tables
**Jet conditions** (Table 1, p. 5):

| NPR | M_j | Re | St | Stage |
|---|---|---|---|---|
| 2.10 | 1.09 | 4.4×10⁵ | 0.65 | A1 (m = 0) |
| 2.25 | 1.14 | 4.7×10⁵ | 0.63 | A2 (m = 0) |

[Waves in screeching jets](edgington-mitchell-2020-waves-in-screeching-jets.md) later corrected these to St = 0.67 and 0.65.

**Approximate values read from figures** (not tabulated in the paper; verify before quoting):

| Quantity | Value | Source |
|---|---|---|
| Energy of POD modes 1, 2 (NPR 2.10) | ≈ 0.082, 0.079 | Fig. 3, p. 7 (axis labelled "Energy %", but values look like fractions) |
| Energy of POD modes 1, 2 (NPR 2.25) | ≈ 0.068, 0.066 | Fig. 3, p. 7 |
| Energy of mode 3 onwards | ≈ 0.03 and falling | Fig. 3, p. 7 |
| Sound-speed lines | k_x D ≈ ±0.7 (cycles per D) | Fig. 4, p. 7 |
| (0, 2) k_TH⁻ cut-on (dashed) | St ≈ 0.72 at M_j = 1.0 to ≈ 0.36 at M_j = 1.5 | Fig. 8, p. 10 |
| (0, 2) k_TH⁻ cut-off (solid) | St ≈ 0.87 at M_j = 1.0 to ≈ 0.45 at M_j = 1.5 | Fig. 8, p. 10 |

## Figures worth remembering
- **Fig. 1 (p. 5):** mean axial velocity U/U_e for both NPRs over 0 < x/D < 5.7. Five or six shock cells are visible.
- **Fig. 2 (p. 7):** u and v parts of POD modes 1 and 2. They look almost the same for the two NPRs.
- **Fig. 3 (p. 7):** POD energy spectrum, and the PDF of the (a₁, a₂) phase portrait with its ring. This is the standard check that a POD pair is periodic.
- **Fig. 4 (p. 7):** |u^c|, |v^c|, |ω_z^c| against k_x D and y/D at the screech frequency. The strong KH peak is at k_x > 0 and the weak acoustic lobe sits near the negative sound line. The lobe is almost absent in vorticity.
- **Fig. 5 (p. 8):** amplitude maps of the downstream (|u_d^c|) and upstream (|u_u^c|) components. The upstream component is core-centred and about 5× weaker.
- **Fig. 6 (p. 8):** upstream-mode radial profile at x/D = 2.5, and the axial profile of its transverse integral with the shock reflection points marked.
- **Fig. 7 (p. 9):** vortex-sheet dispersion branches (0, 1) and (0, 2) in k_r–St, with the free-stream sound line in green and the chosen eigenvalue marked. The right panels compare |u_u^c| at x/D = 3.0 with |u_x| from the model.
- **Fig. 8 (p. 10):** SUCRE far-field SPL against M_j (1.0–1.5) and St, with the (0, 2) k_TH⁻ cut-on (dashed) and cut-off (solid) curves. The A1/A2 tones lie between them, near the cut-on edge. Lower-frequency tones at higher M_j lie below the band; the text implies these are non-axisymmetric (p. 10).

## Notation
- k_TH⁻: upstream-travelling acoustic jet mode of Tam & Hu (1989). It is the "guided jet mode", and is called `k_t-` in the 2020 note.
- (m, n): azimuthal and radial order of a vortex-sheet mode. Here (0, 2).
- q^c = [u^c, v^c, ω_z^c]: coherent screech field from the leading POD pair. Subscripts d and u mark the downstream (k_x ≥ 0) and upstream (filtered about −a_∞) components.
- ψ: complex POD mode. â: complex amplitude. ω_s: screech angular frequency. U_c: convection velocity. a_∞: ambient sound speed.
- k_x: streamwise wavenumber (cycles per length in Fig. 4). k_r: real part of the vortex-sheet eigenvalue (Fig. 7).
- Screech stages (p. 3): A1 and A2 (toroidal), B (precessing flapping), C (helical), D (flapping).

## Relevance to this project
This project analyses resonance and feedback in Shock Lab group experiments (schlieren, acoustics, PIV); see CLAUDE.md. This is the founding experimental paper for the guided-jet-mode closure that later group work builds on.

- **A recipe for non-time-resolved PIV:**
  - This is the 2 Hz PIV route from the CLAUDE.md workflow:
    1. Run POD on the transverse velocity only.
    2. Check that the leading pair forms a ring in its phase portrait.
    3. Build the complex mode ψ = φ₁ + iφ₂.
    4. FFT in x.
    5. Split or filter by the sign of k_x to separate upstream and downstream waves.
  - It recovers a component with about 5× lower amplitude than the KH wavepacket (p. 5–6).
  - **Prerequisites:**
    - A single tone with no mode switching, which the paper checks explicitly (p. 4).
    - A streamwise field of view covering several wavelengths: 5.7D here. By my estimate that is about 3–4 acoustic wavelengths at St ≈ 0.65.
    - Treat the sign of k_x as direction of travel only where phase and group velocities share a sign (p. 6). This isn't true for the downstream duct-like `k_t+` mode in the 2020 note, which has positive group velocity despite its relation to the guided-mode branch.
  - With intermittent or mode-switching jets, a POD pair mixes states and the ring breaks down. Use time-resolved schlieren instead:
    - SPOD at f_s gives the complex mode directly, and the same k_x split applies.
    - The SPOD → reconstruction → Hilbert POD pipeline could then track how the upstream (k_x < 0) part's amplitude changes over time. This is a suggestion, not something done in the paper.
  - Adaptive or band-ensemble SPOD may help separate the tone from broadband content: see [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md). For the Hilbert step see [raiola-2025](raiola-2025-hilbert-pod.md).
- **Diagnostics for an acoustic rather than hydrodynamic wave:** the phase speed is about −a_∞, there is almost no vorticity signature (Fig. 4), and the amplitude peaks in the core with a null near y/D ≈ 0.3. These checks transfer directly to impinging-jet and non-axisymmetric PIV or schlieren.
- **Modelling side:**
  - A cheap cylindrical vortex-sheet model (inviscid, parallel, no shocks) predicts the inner radial structure of the upstream wave well (Fig. 7).
  - More usefully, it gives the cut-on/cut-off band of the (0, 2) guided mode as a function of M_j, which brackets where A1/A2 resonance can occur (Fig. 8).
  - Shape agreement alone can't tell the guided mode from free-stream sound, because the continuous spectrum has similar eigenfunctions (p. 10). The frequency-band test is the stronger argument.
  - Before implementing the model, check eq. 4.1 against Towne et al. (2017); see the caveats under Key equations.
  - The model lacks shocks and finite shear-layer thickness, and outside the jet it decays more slowly than the data.
  - The follow-up [Waves in screeching jets](edgington-mitchell-2020-waves-in-screeching-jets.md) replaces it with a global stability analysis on the PIV mean flow, including shocks. That analysis recovers the same upstream wave and explains it as the k_kh − k_s interaction product.
- **Agreement with and differences from related notes:**
  - [Waves in screeching jets (2020)](edgington-mitchell-2020-waves-in-screeching-jets.md): same nozzle and NPR 2.10/2.25 datasets.
    - It confirms the upstream guided mode and adds the downstream duct-like `k_t+` wave.
    - It corrects St to 0.67 and 0.65 (this paper gives 0.65 and 0.63).
    - It reports 9,000 PIV snapshots, whereas this paper averages the mean over 10,000.
    - It places the `k_t-` peak near the 4th shock cell for NPR 2.10; this paper says the 5th.
    - Its wave isolation uses a cosine-tapered filter (half-width 1.9D in radian units) instead of the bandpass here.
  - [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md) turns the upstream-mode idea into a screech-frequency prediction.
  - [nogueira-2021-closure-mechanism-a1-a2-screech](nogueira-2021-closure-mechanism-a1-a2-screech.md) revisits A1/A2 closure. Compare its conclusions with this paper's claim that the same mode closes both stages.
  - [nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md) and [nogueira-2021-wavepacket-modulation-shock-containing-jets](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) extend the stability-theory and shock-modulation sides.
  - [nogueira-2021-twin-jet-coupling-spatial-lsa](nogueira-2021-twin-jet-coupling-spatial-lsa.md) applies vortex-sheet spatial LSA to twin jets, which is relevant for multi-jet and non-axisymmetric configurations.
- **Impinging and other resonant jets:** the paper places screech alongside guided-mode explanations for impinging-jet tones (Tam & Ahuja 1990; Bogey & Gojon 2017), jet-edge tones (Jordan et al. 2018) and subsonic jet tones (Towne et al. 2017; Schmidt et al. 2017) (p. 3). The same cut-on/cut-off test applies to impingement data. Receptivity at the nozzle lip depends on nozzle geometry (Raman 1997; p. 3), so lip thickness (5 mm here) should be recorded when comparing rigs.
- **Facility note:** the PIV facility is not anechoic (p. 4), so the Fig. 8 acoustic band evidence comes from PPRIME, not the Shock Lab group rig.
- **Related works cited, candidates for `/add-paper`:**
  - Tam & Hu 1989 (three families of waves).
  - Towne et al. 2017 (trapped acoustic modes in subsonic jets) and Schmidt et al. 2017.
  - Shen & Tam 2002.
  - Weightman et al. 2017 (phase lag in impingement, same facility).
  - Edgington-Mitchell et al. 2014b (helical screech mode).
  - Tan et al. 2017 (broadband fluctuations in screeching jets).
