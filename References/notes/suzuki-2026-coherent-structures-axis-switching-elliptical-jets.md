# Coherent structures in axis-switching elliptical jets

- **Authors:** N. Suzuki, A. V. G. Cavalieri, D. M. Edgington-Mitchell, P. A. S. Nogueira (Monash University; Instituto Tecnológico de Aeronáutica, São José dos Campos)
- **Source:** arXiv:2604.17851v1 [physics.flu-dyn], 20 April 2026. This is a **preprint**, not peer-reviewed. It extends the authors' AIAA/CEAS 2024 conference paper (Suzuki et al. 2024, *Effect of axis switching on the coherent structures of an elliptical jet*), which studied one case with SPOD and PSE (p. 2).
- **PDF:** `References/Paper_PDFs/Suzuki-EtAl_2026_Coherent-Structures-In-Axis-Switching-Elliptical-Jets.pdf` (index key `Suzuki-EtAl_2026_Coherent-Structures-In-Axis-Switching-Elliptical-Jets.pdf`, 22 pp., ~15 MB because of the figures)
- **Page refs:** PDF page numbers, which equal the printed page numbers.
- **Tags:** elliptical jet AR 2, axis switching, incompressible DNS (Dedalus, Re_D 400), forced jet, D2 symmetry (SS/AS/SA/AA), varicose / flapping / wagging (ce₀ / se₁ / ce₁), Mathieu modes, SPOD of pressure, pySPOD, weighted (sub-domain) SPOD, Kelvin–Helmholtz wavepacket, double wavepacket, Orr, St ∝ 1/√x scaling, vorticity thickness, jackknife convergence, harmonic / triadic interaction, simulation-only (no experiment)

## Summary
The paper asks how axis switching in an elliptical jet changes its coherent structures. It runs three incompressible DNS of an AR 2 elliptical jet at Re_D = 400 in which only the amplitude of a near-nozzle forcing changes. Low forcing gives no axis switch; medium and high forcing switch at x/D_eq ≈ 12 and ≈ 8 (p. 4, 6). The pressure field is split into the four D2 symmetry families before SPOD. The flapping (AS) mode dominates at all forcing levels and looks like a KH wavepacket. With stronger forcing it saturates and decays earlier, which the authors link to axis switching (flapping becomes wagging relative to the switched mean flow) and to faster minor-axis shear-layer growth (p. 10–11). The main new result is in the SA family. Below a crossover frequency (St ≈ 0.2 medium, ≈ 0.4 high) its leading mode is a "new flapping" mode that is born near the axis-switch point. Above that, it is the usual wagging mode from the nozzle. Zero-weight sub-domain SPOD separates the two (p. 13–17). The flow is incompressible, so sound radiation is not addressed (p. 17).

## Key findings
- **Forcing moves the axis switch upstream** (p. 6; Fig. 2–4):
  - Mean profiles are almost identical at x/D_eq = 5 for all three cases.
  - Low forcing slowly becomes more circular and does not switch.
  - Medium and high forcing spread faster in the minor axis and contract in the major axis.
  - High forcing ends up as an ellipse of higher aspect ratio than the nozzle, rotated by 90°. Near the end of the domain it starts spreading again in the major axis. The authors note jets can switch several times (p. 6).
- **Axis-switch point defined from half-widths** (p. 6): the x where the minor-axis half-width first exceeds the major-axis half-width. It comes several diameters before a full 90° switch but tracks the changes in the coherent structures better. Values: x/D_eq ≈ 12 (medium) and ≈ 8 (high).
- **Vorticity thickness separates shear-layer growth from shear-layer shift** (p. 7–8; Fig. 5):
  - Upstream (x/D_eq < 5), δ_ω is the same in both axes for all cases and grows as √x. The authors say Ho & Gutmark (1987) saw similar scaling of momentum thickness in experiment.
  - Low forcing keeps the √x scaling to the end of the domain.
  - Medium forcing leaves it at x/D_eq ≈ 7. The major-axis δ_ω then levels off and dips slightly; the minor-axis δ_ω grows faster.
  - High forcing leaves it at x/D_eq ≈ 5. The major-axis δ_ω dips slightly at x/D_eq ≈ 5 and grows again from ≈ 8, but stays below the low-forcing curve.
  - The contraction of the major-axis half-width is therefore mostly an inward shift of the shear layer, not a thinner shear layer (p. 8).
- **Symmetry families at St = 0.4, low forcing** (p. 8; Fig. 6):
  - SS: varicose; grows significantly further downstream than the others (see Appendix C).
  - AS: flapping (top and bottom halves in phase opposition).
  - SA: wagging (flapping rotated 90°). It decays much faster than flapping and lives only upstream.
  - AA: an se₂-like structure, also predicted by LSA. It grows and decays more slowly and extends further in x.
  - The 3-D flapping and wagging shapes agree with the 3-D OWNS results of Nogueira et al. (2023) (p. 8).
- **Low-rank behaviour** (p. 9; Fig. 7):
  - The leading AS SPOD mode is well above the others at all frequencies and all forcing levels. Other symmetries are also low rank.
  - Low forcing: three modes stand clear of the rest.
  - The gap shrinks with forcing. The authors suggest the thicker shear layer damps KH further downstream.
  - The authors stress that this incompressible Re 400 jet is as low rank as the high-Re compressible jets of Schmidt et al. (2018).
- **More forcing can mean less mode energy** (p. 9–10; Fig. 7–8):
  - The leading AS mode of the high-forcing case has less energy than the medium case, most visibly for 0.05 < St < 0.3.
  - At St = 0.2 the high-forcing wavepacket starts higher but decays much earlier.
  - Normalised by its value at x/D_eq = 0.5, growth is the same exponential for all cases for x/D_eq < 4. After that, high forcing quickly stops growing and decays. Low and medium keep similar growth rates across the domain.
  - Higher frequencies are affected less because their wavepackets are shorter.
- **Ranking of symmetries** (p. 10; Fig. 9–10):
  - AS dominates in all cases, consistent with LSA (Morris 1988; Morris & Bhat 1995; Suzuki et al. 2023) and with experiments (Edgington-Mitchell et al. 2015a,b; Mazharmanesh et al. 2025).
  - In the medium and high cases SS overtakes AS at the lowest frequencies (Fig. 9, roughly St ≲ 0.05–0.1 read from the figure).
  - The spread between families shrinks as forcing rises.
  - At St = 0.2 every wavepacket peaks further upstream with more forcing. AS and SS are cut short and lose energy. SA and AA gain energy because more of their wavepacket now fits inside the domain (Fig. 10).
- **AS (flapping) modes** (p. 11–12; Fig. 11–14):
  - Upstream of x/D_eq ≈ 5 the mode shape barely depends on forcing.
  - Saturation moves upstream and decay steepens with forcing. A sharper decay appears near the axis-switch point. The authors cannot say whether this comes from the switched mean flow or the thicker shear layer. As the axes switch, flapping becomes wagging relative to the local mean flow, and LSA predicts a lower growth rate for wagging (p. 11).
  - The first suboptimal mode has a double-wavepacket structure at St = 0.2 and 0.4, as in Schmidt et al. (2018). A possible Orr link is suggested but not shown. In the high-forcing case the node between the two packets is very close to the axis-switch point (p. 11–12).
  - The double wavepacket shows for St < 0.45 at all forcing levels. The first packet is not affected by forcing. The second packet moves upstream with frequency but stops moving near the axis-switch point in the medium and high cases (p. 12; Fig. 14).
  - Axis-switching effects are strongest at low frequencies, which have the longest streamwise support (p. 12).
- **Frequency scales as 1/√x, not 1/x** (p. 12; Fig. 13):
  - The peak frequency of the leading AS mode follows St ∝ 1/√x for x/D_eq < 5.
  - Explanation: St ∝ u_c/δ_ω with u_c roughly constant and δ_ω ∝ √x. In the high-Re round jet of Schmidt et al. (2018) δ grows linearly, giving St ∝ 1/x.
  - With more forcing the peak leaves this scaling at St < 0.2 and near the axis-switch point, following the change in minor-axis shear-layer growth.
- **Two structures share the SA family** (p. 13–14; Fig. 15–16):
  - St = 0.4 and 0.6: a wagging KH wavepacket that starts at the nozzle, in all three cases.
  - St = 0.2, low forcing: the same wagging wavepacket, starting near the nozzle.
  - St = 0.2, medium and high forcing: growth starts much further downstream, at a position strongly correlated with the axis-switch point.
  - The authors call the second structure the "new flapping" mode. It is flapping relative to the switched mean flow, and dominates at low St, possibly because flapping grows faster.
  - AS flapping cannot turn into SA new flapping by a linear mechanism, because the families are orthogonal. A nonlinear route would need a triad with an AA mode, which is weak in pressure. The authors add that AA may be stronger in velocity (p. 13–14).
- **Sub-domain SPOD separates wagging from new flapping** (p. 14–17; Fig. 17–21):
  - SPOD was rerun with zero weight on either the region after or the region before the axis-switch point.
  - Pre-switch (wagging): a broad peak, a clear gap between modes 1 and 2 at all St, and little change with forcing.
  - Post-switch (new flapping): low rank only at low St, with a faster roll-off at high St. This fits LSA: a thicker shear layer is unstable only at low frequency (Michalke 1984; Morris 2010).
  - New-flapping energy for St < 0.3 rises strongly from medium to high forcing. The authors explain this with the switched equivalent aspect ratio: high forcing ends as a higher-AR ellipse than the nozzle, medium forcing as a lower one. LSA predicts higher flapping growth at higher AR (p. 15).
  - The full-domain leading SA mode follows the post-switch spectrum at low St, then switches to the pre-switch (wagging) mode at St ≈ 0.2 (medium) and St ≈ 0.4 (high). The switch shows as a discontinuity in the frequency–x map (p. 15; Fig. 21).
  - At St = 0.2 the pre-switch wagging mode keeps its coherence across the switch point, and its wavenumber rises near the switch. This fits LSA, which predicts lower phase velocity at lower AR (Suzuki et al. 2023).
  - The post-switch mode at St = 0.2 has no support upstream of the switch point. The authors read this as a **new instability created by the switched mean flow**, not a re-energised wagging mode. At St = 0.4 it is somewhat more coherent with the upstream region, which may mean the upstream wagging mode feeds it (p. 15).
  - Pre-switch SA peaks also follow St ∝ 1/√x for x/D_eq < 5. High forcing departs from this downstream, but less than the AS mode does, because the major-axis shear layer changes less with forcing than the minor-axis one (p. 16).
- **SS (varicose) modes** (Appendix C, p. 19–20; Fig. 25–27):
  - Two structures appear in the SS spectra at all forcing levels. S1 dominates for St < 0.2. S2 peaks at St ≈ 0.27 and decays with frequency.
  - S1 is suggested to be a ce₂ KH mode (the m = 2 analogue as AR → 1) rather than ce₀. In round jets m = 2 beats m = 0 at low St (Schmidt et al. 2018; Pickering et al. 2020), and ce₂ growth depends less on AR than ce₀ does (Morris & Bhat 1995; Ivelja et al. 2024).
  - S2 sits at twice the AS peak frequency (2f₀). It is proposed to be a harmonic from a sum interaction of two flapping modes, which gives SS symmetry. Its minor-axis shape resembles the self-interaction mode of cylinder-wake flapping in Schmidt (2020). BMD or nonlinear PSE are suggested to test this (p. 20).
  - The low-St SS mode (St = 0.16) peaks near the end of the domain for low and medium forcing, and at x/D_eq ≈ 10 for high forcing. It is much stronger in the major axis than the minor axis.
- **Conclusions** (p. 17): at Re 400, results are meant to be qualitative. Linear stability and resolvent analysis on the axis-switched mean flow are proposed next, and acoustic effects are left for compressible simulations or ROMs.

## Setup / method
- **Nature of the study:** simulation only. No experiment, and no stability model is solved here. Model comparisons are qualitative, citing earlier LSA (Morris 1988; Morris & Bhat 1995; Ivelja et al. 2024; Suzuki et al. 2023).
- **Solver** (p. 2–3): Dedalus spectral code, incompressible Navier–Stokes, formulation as in Cavalieri (2023).
  - **No nozzle.** Boundary-layer fluctuations are mimicked by forcing in the shear layer, following Colonius & Freund (2000) and Freund (2001).
  - The authors note that Brès et al. (2018) showed the internal nozzle boundary layer matters for matching experiments. Here the aim is to compare axis-switch positions, not to match an experiment (p. 3).
  - **Fringe region** (sponge, Chevalier et al. 2007) absorbs outgoing waves and makes the flow periodic in x. Δ_rise = 7, Δ_fall = 0.25 (p. 3). σ_max, x_start, x_end, x_blend, Δ_blend and U_o are not given.
  - **Discretisation:** Fourier sine/cosine in y and z, so free-slip on the side walls; standard Fourier in x (p. 4).
  - **Inlet profile:** tanh profile in elliptic-cylindrical coordinates, eq. 4. The shear-layer thickness parameter is not separately stated; it is set by the μ₀/μ − μ/μ₀ form.
  - **Forcing:** applied to the y- and z-momentum equations only. Gaussian in x and in μ, times a sum of azimuthal harmonics (in ν) with complex random coefficients B(k_ν), following Schlatter & Örlü (2012). x_f, μ_f, L_x, L_μ, N_k and how B is updated in time are not given. Only the amplitude A changes between cases.
  - The TKE budget has a spike in its residual at x/D_eq ≈ 0.3 because the forcing is not included in the budget (p. 17). This suggests x_f ≈ 0.3, but the paper doesn't state it.
- **Scaling** (p. 4): U_j and D_eq = √(D_maj D_min). St = f D_eq/U_j.
- **Runs** (Table I, p. 4): see Data tables. Figures show only x/D_eq ≤ 15 of the 24 D_eq domain; the rest presumably holds the fringe region (not stated).
- **Verification** (Appendix A, p. 17–18): no elliptical DNS exists to compare with, so they follow Freund (2001):
  - Cross-plane integrated TKE budget for the medium case (Fig. 22): production rises from x/D_eq ≈ 3 and is balanced by dissipation and advection; viscous dissipation dominates downstream.
  - Cross-plane wavenumber spectra of TKE at x/D_eq = 5, 10, 15 roll off at high wavenumber (Fig. 23).
  - Other cases are said to behave similarly.
- **SPOD** (p. 5; Table II, p. 6):
  - Applied to **pressure only**, to save memory and because pressure modes are easy to interpret. Weighted by a pressure 2-norm (W). Code: pySPOD (Mengaldo & Maulik 2021).
  - Needs **time-resolved** data: snapshots every dt = 0.2 D_eq/U_j (every 20 solver steps), N_FFT = 256, 50 % overlap, 31–44 blocks. Δf gives St resolution ≈ 0.02. Window type is not stated.
  - A fixed bin width was used. The authors note frequency-dependent bin widths would be more accurate (Pickering et al. 2020; Heidt & Colonius 2024), but too costly here.
  - Azimuthal Fourier decomposition is impossible for an ellipse, which is why long time series were needed (p. 2–3).
  - **D2 symmetry split before SPOD** (eq. 16): SS, AS, SA, AA, in Rodríguez's (2021) notation. First letter: symmetry about y = 0 (minor axis); second: about z = 0 (major axis). Axes are defined at the inlet.
  - **Sub-domain SPOD** (p. 14; Fig. 17): zero weight in W over the excluded region (before or after the axis-switch point). This keeps the full-domain spatial coherence of the mode, which helps interpretation (Schmidt & Colonius 2020).
  - **Frequency–x maps** (Fig. 13–14, 21): |mode| integrated over each cross-plane, not taken on the lip line as in Schmidt et al. (2018), because the cross-section changes shape.
  - **Convergence** (Appendix B, p. 18–19; Fig. 24): jackknife over FFT blocks, 20 random subsets per block count, normalised inner product β with the all-block mode (eq. B1). Worst case shown (SA, St = 0.4, medium): leading mode β > 0.98 and suboptimal β > 0.8 with only 50 % of the blocks.
- **Mean-flow diagnostics** (p. 6–8): axial slices and major/minor-plane maps of ū (Fig. 2–3), half-widths y_½ and z_½ (Fig. 4), and vorticity thickness from eq. 17 in each plane (Fig. 5). Vorticity thickness is used instead of momentum thickness because the jet entrains strongly.

## Key equations
- Momentum equation with fringe and forcing (eq. 1, p. 3):
  $$\frac{\partial\mathbf u}{\partial t} + \mathbf u\cdot\nabla\mathbf u = -\nabla p + \frac{1}{Re}\nabla^2\mathbf u - \sigma(x)(\mathbf u - \mathbf u_{ref}) + \mathbf f$$
- Fringe profile (eq. 2) and reference flow (eq. 3), with S a smooth step:
  $$\sigma(x) = \sigma_{max}\Big[S\Big(\tfrac{x-x_{start}}{\Delta_{rise}}\Big) - S\Big(\tfrac{x-x_{end}}{\Delta_{fall}}\Big)\Big],\qquad \mathbf u_{ref} = U_o + (U_i - U_o)\,S\Big(\tfrac{x-x_{blend}}{\Delta_{blend}}\Big)$$
- Inlet profile (eq. 4, p. 3):
  $$U_i = \tfrac12\Big(1 + \tanh\Big(\frac{\mu_0}{\mu} - \frac{\mu}{\mu_0}\Big)\Big)$$
- Elliptic-cylindrical coordinates (eqs. 5–7):
  $$y = a\cosh\mu\cos\nu,\quad z = a\sinh\mu\sin\nu,\qquad \mu_0 = \operatorname{arctanh}(1/\mathrm{AR}),\qquad a = \tfrac12\sqrt{\mathrm{AR} - 1/\mathrm{AR}}$$
  Check: with D_eq = 1 the semi-axes are √AR/2 and 1/(2√AR). Their ratio gives tanh μ₀ = 1/AR, and the focal distance √(A² − B²) equals eq. 7. For AR 2: a ≈ 0.612, μ₀ ≈ 0.549. Note that eq. 5 puts the cosh (major) direction on y while y = 0 is called the minor axis in the symmetry definitions (p. 5). The text calls y = 0 the "minor axis" as a line and plots the minor-axis plane as y. Check the convention against the figures before reusing the code.
- Forcing (eqs. 8–10, p. 3):
  $$\mathbf f = A\,\phi(\mathbf x)\,g(\mathbf x,t),\quad \phi = \exp\Big(\frac{-(x-x_f)^2}{L_x^2}\Big)\exp\Big(\frac{-(\mu-\mu_f)^2}{L_\mu^2}\Big),\quad g = \sum_{k_\nu=0}^{N_k}\Re\big(B(k_\nu)\,e^{ik_\nu\nu}\big)$$
- SPOD (eqs. 11–15, p. 5): block DFT, $\hat{\mathbf C} = \frac{1}{N-1}\hat{\mathbf Q}\hat{\mathbf Q}^H$, method of snapshots $\hat{\mathbf Q}^H\mathbf W\hat{\mathbf Q}\hat{\boldsymbol\Psi} = \hat{\boldsymbol\Psi}\hat{\boldsymbol\Lambda}$, modes $\hat{\boldsymbol\Phi} = \hat{\mathbf Q}\hat{\boldsymbol\Psi}$. As printed, eq. 15 has no Λ^{−1/2} normalisation, unlike [schmidt-2020-guide-spod](schmidt-2020-guide-spod.md). Eq. 13 writes the CSD with 1/(N − 1).
- D2 symmetry components (eq. 16, p. 5):
  $$p_{SS} = \tfrac14[p(y,z) + p(-y,z) + p(y,-z) + p(-y,-z)],\quad p_{AS} = \tfrac14[p(y,z) - p(-y,z) + p(y,-z) - p(-y,-z)]$$
  $$p_{SA} = \tfrac14[p(y,z) + p(-y,z) - p(y,-z) - p(-y,-z)],\quad p_{AA} = \tfrac14[p(y,z) - p(-y,z) - p(y,-z) + p(-y,-z)]$$
  The four sum to p.
- Vorticity thickness (eq. 17, p. 8): $\delta_\omega = U_c / (\partial U/\partial r)_{max}$, with r = y (minor) or z (major) and U_c the centreline velocity.
- Frequency scaling (p. 12): $St \sim u_c/\delta_\omega \sim 1/\sqrt{x}$ when δ_ω ∝ √x and u_c is about constant.
- Jackknife convergence (eq. B1, p. 18): $\beta_i = |\langle\phi_i,\tilde\phi_i\rangle| / (\lVert\phi_i\rVert\,\lVert\tilde\phi_i\rVert)$ (the absolute value is my reading of a garbled extraction).

> Equations were checked against a render of PDF p. 3. Verify against the PDF before use: the y/z versus major/minor convention noted above, the normalisation of eq. 15, and the exact form of eq. B1 (p. 18), which was read from extracted text only.

## Data tables
**DNS parameters** (Table I, p. 4):

| Case | A | t_sim U_j/D_eq | N_x × N_y × N_z | (L_x × L_y × L_z)/D_eq | Re_D | dt U_j/D_eq | Axis-switch point x/D_eq |
|---|---|---|---|---|---|---|---|
| Low forcing | 1 | 850 | 1024 × 256 × 256 | 24 × 12 × 12 | 400 | 0.01 | none |
| Medium forcing | 10 | 1200 | 1024 × 256 × 256 | 24 × 12 × 12 | 400 | 0.01 | ≈ 12 (p. 6) |
| High forcing | 50 | 1150 | 1024 × 256 × 256 | 24 × 12 × 12 | 400 | 0.01 | ≈ 8 (p. 6) |

Grid spacing is uniform at 24/1024 ≈ 0.023 D_eq in x and 12/256 ≈ 0.047 D_eq in y and z, assuming uniform spacing (my estimate; the paper doesn't give spacing).

**SPOD parameters** (Table II, p. 6):

| Case | N_FFT | N_ovlp | N_blk | N_t | dt (D_eq/U_j) | Record N_t·dt | Δ St = 1/(N_FFT dt) | Nyquist St |
|---|---|---|---|---|---|---|---|---|
| Low | 256 | 128 | 31 | 4096 | 0.2 | 819 | 0.0195 | 2.5 |
| Medium | 256 | 128 | 44 | 5760 | 0.2 | 1152 | 0.0195 | 2.5 |
| High | 256 | 128 | 42 | 5504 | 0.2 | 1101 | 0.0195 | 2.5 |

The last three columns are mine. N_blk checks out as (N_t − N_FFT)/N_ovlp + 1 for all three. Each record is a little shorter than t_sim in Table I, which suggests an initial transient was discarded (not stated).

**Crossovers and values read from figures** (approximate):

| Quantity | Value | Source |
|---|---|---|
| Half-widths at inlet | minor ≈ 0.4, major ≈ 0.7 D_eq | Fig. 4, p. 7 |
| High-forcing minor half-width at x/D_eq = 15 | ≈ 2.5 D_eq | Fig. 4c, p. 7 |
| δ_ω at x/D_eq = 15, low forcing | ≈ 1 D_eq (both axes) | Fig. 5a, p. 7 |
| SA full-domain switch from new flapping to wagging | St ≈ 0.2 (medium), ≈ 0.4 (high) | text p. 15, 17; Fig. 21 |
| SS S2 peak | St ≈ 0.27 ≈ 2f₀ of AS | text p. 19; Fig. 25 |
| High-forcing low-St SS peak position | x/D_eq ≈ 10 | text p. 20 |

## Figures worth remembering
- **Fig. 1 (p. 4):** instantaneous u′ in the minor and major planes, high forcing, x/D_eq ≤ 15.
- **Fig. 2–3 (p. 6–7):** mean ū in cross-sections at x/D_eq = 0, 5, 12, 15 and in the two planes. The high-forcing jet is visibly switched and elongated in y by x/D_eq = 12.
- **Fig. 4–5 (p. 7):** half-widths and vorticity thickness per axis, with the √x guide line. This is the evidence that the major-axis contraction is a shift, not thinning.
- **Fig. 6 (p. 8):** 3-D pressure isosurfaces of the four symmetry families (low forcing, St = 0.4).
- **Fig. 7–10 (p. 9–10):** AS eigenvalue spectra, normalised AS envelopes at St = 0.2, leading-mode spectra of each symmetry, and symmetry envelopes at St = 0.2.
- **Fig. 11–14 (p. 11–12):** AS leading and suboptimal mode shapes, and frequency–x maps with the axis-switch line. Shows the double wavepacket and the St ∝ 1/√x ridge.
- **Fig. 15–16 (p. 13):** SA leading and suboptimal modes. At St = 0.2, medium and high forcing, the mode starts at the switch point.
- **Fig. 17–18 (p. 14):** zero-weight sub-domain schematic and pre/post/full SA spectra. This is the key figure for the two-mechanism claim.
- **Fig. 19–20 (p. 15–16):** pre-switch wagging vs post-switch new-flapping mode shapes.
- **Fig. 21 (p. 16):** SA frequency–x maps for full, pre and post domains, with the crossover marked by a white line.
- **Fig. 24 (p. 18):** jackknife convergence curves.
- **Fig. 25–27 (p. 19–20):** SS spectra with the S1/S2 branches and 2f₀ marker, and SS mode shapes.

## Notation
- AR: nozzle aspect ratio (2). D_eq = √(D_maj D_min). U_j: jet exit velocity. St = f D_eq/U_j.
- (μ, ν): elliptic-cylindrical radial and azimuthal coordinates; μ₀ is the nozzle edge; ±a are the foci.
- SS / AS / SA / AA: D2 symmetry families. First letter about y = 0 (minor axis), second about z = 0 (major axis).
- ce₀ varicose, se₁ flapping, ce₁ wagging, ce₂ and se₂: Mathieu-function modes of elliptic-jet LSA (Morris & Bhat 1995). As AR → 1 they become m = 0, |m| = 1, |m| = 1, |m| = 2.
- "New flapping" mode: the SA structure that appears after the axis switch, flapping relative to the switched mean flow.
- δ_ω: vorticity thickness. y_½, z_½: half-widths. f₀: peak frequency of the AS mode. λ: SPOD eigenvalue. β: jackknife inner product.

## Relevance to this project
This is a Shock Lab group paper (Monash authors with ITA), but it is purely numerical, so no lab space applies. It is the cleanest isolation so far of how axis switching changes the modes of a non-axisymmetric jet, which bears directly on the elliptical and rectangular screech work in the group (see CLAUDE.md).

- **Explains experimental puzzles in related notes:**
  - [mazharmanesh-2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md) found a rectangular-jet "bi-axial flapping" mode that flaps near the nozzle and wags after the shock cells switch axes, and an elliptical "quasi-helical" mode. Both are attributed to axis switching. This paper shows in a simpler (subsonic, shock-free, incompressible) jet that a switched mean flow can host a **new** flapping instability in the opposite symmetry family. It does not show the original flapping mode turning into it: they are orthogonal families with no linear coupling (p. 13–14). This is a useful constraint when interpreting the bi-axial and quasi-helical modes. Note that Mazharmanesh's modes are screech modes with shocks and feedback, while here there is no feedback and the jet is forced.
  - [ivelja-2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) used local Floquet LSA on an axis-switching PIV mean flow but could not capture non-parallel switching effects (p. 2 here). Its observed AR ≈ 1 near x/D ≈ 5 at NPR 2.6 is comparable with the switch points here. Its finding that the se₁ guided mode exists only in a short x band is another example of mode support set by the local mean-flow shape.
  - Edgington-Mitchell et al. (2015) speculated about a helical-like mode from axis switching (cited here as [17]; not yet indexed).
- **Methods and data dependence:**
  - **SPOD with symmetry split first** needs time-resolved 3-D data (here a DNS). The D2 split mirrors [yeung-2022](yeung-2022-3d-spod-twin-rectangular-jet.md) and [marshall-2024](marshall-2024-prediction-streaks-rectangular-jets.md). For planar or path-integrated lab data the full split is not possible. Mazharmanesh's multi-angle schlieren symmetry tests and Ivelja's symmetry-imposed POD are the experimental substitutes.
  - **Zero-weight sub-domain SPOD** is the transferable tool. It differs from Mazharmanesh's sub-domain SPOD, which crops the image: here the excluded region keeps the mode's spatial coherence, so you can see whether a downstream mode has any upstream support (the test used to call new flapping a new instability). See [schmidt-2020-guide-spod](schmidt-2020-guide-spod.md). It applies directly to time-resolved schlieren of non-axisymmetric or impinging jets where the mean flow changes along x.
  - **Frequency–x maps** of cross-plane-integrated mode amplitude, and the St ∝ 1/δ scaling check, are cheap diagnostics for any SPOD result. For planar schlieren, integrate across the image instead of along a lip line.
  - **Mode switching in frequency:** the leading SA mode switches mechanism at a crossover St. This is a frequency switch, not a time intermittency, and SPOD's block averaging cannot say whether the two coexist in time. The SPOD → reconstruction → Hilbert POD pipeline could track the amplitude of the wagging and new-flapping modes in time, e.g. by rebuilding from the pre- and post-switch sub-domain modes separately. This is a suggestion, not something the paper does. See [nekkanti-2021](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md) and [raiola-2025](raiola-2025-hilbert-pod.md).
  - **Fixed bin width:** they used a fixed Welch bin width and acknowledged that adaptive widths would help. For tonal screech data see [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md).
  - **Harmonic at 2f₀ in SS:** the suggested BMD test is directly relevant to the lab workflow ([schmidt-2020-bispectral-mode-decomposition](schmidt-2020-bispectral-mode-decomposition.md)). In screeching elliptical jets, an SS (varicose-looking) peak at twice a flapping tone may be a harmonic, not an independent varicose loop.
  - Non-time-resolved PIV can't do the SPOD here. A POD pair of planar PIV would capture only the dominant flapping or wagging oscillation and would mix the two SA structures if both are present.
- **Modelling side:**
  - Agrees with [schmidt-2018](schmidt-2018-spectral-analysis-jet-turbulence.md): low-rank KH leading mode, double-wavepacket suboptimals and frequency–x maps. It differs in scaling (1/√x here vs 1/x there) because of the laminar-like √x shear-layer growth at Re 400.
  - Points to OWNS (Nogueira et al. 2023; see [zhu-2021](zhu-2021-recursive-one-way-navier-stokes.md)), PSE (the 2024 conference version) and resolvent on the switched mean flow as next steps. Local LSA can't capture switching.
  - **Caveats:** Re_D = 400, incompressible, no nozzle, forcing parameters partly unreported, symmetric random forcing. The axis switch is caused by forcing amplitude, not by screech feedback. Quantitative trends are not expected to carry over to high-Re or supersonic jets (p. 4, 17).
- **Agreement with and differences from related notes:**
  - Flapping dominance agrees with LSA and with [ivelja-2024](ivelja-2024-modal-analysis-screeching-elliptical-jets.md) and [mazharmanesh-2025](mazharmanesh-2025-screech-modes-non-axisymmetric-jets.md).
  - In the low-St SS dominance and the ce₂ argument it parallels the m = 2 dominance of round jets in [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md).
  - Flapping in non-circular jets also appears in [rodriguez-2023-preferred-flapping-round-twin-jets](rodriguez-2023-preferred-flapping-round-twin-jets.md) and [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), where D2-type symmetry families also organise the modes.
- **Related works cited, candidates for `/add-paper`:**
  - Suzuki et al. 2024 (AIAA/CEAS, single case, SPOD vs PSE).
  - Nogueira, Weightman & Edgington-Mitchell 2023 (3-D OWNS of elliptical jets).
  - Suzuki, Nogueira & Edgington-Mitchell 2023 (vortex-sheet wavepacket model of elliptical-jet directivity, AIAA J).
  - Morris & Bhat 1995 (spatial stability of compressible elliptic jets).
  - Edgington-Mitchell, Honnery & Soria 2015 (multimodal instability and staging in elliptic jets).
  - Zaman 1996 (axis switching and coherent structures); Hussain & Husain 1989 (elliptic jets).
  - Yeung & Schmidt 2025 (twin-rectangular jet spectral dynamics).
