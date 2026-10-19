# Diffraction of shock waves through a non-quiescent medium

- **Authors:** B. S. Thethy, M. Rezay Haghdoost, R. Kirby, B. Seo, M. Nadolski, C. Zenker, M. Oevermann, R. Klein, K. Oberleithner, D. Edgington-Mitchell (LTRAC, Monash; TU Berlin; FU Berlin; BTU Cottbus-Senftenberg)
- **Source:** J. Fluid Mech. 944, A39 (2022), doi:10.1017/jfm.2022.484. Published open-access version (CC BY 4.0).
- **PDF:** `References/Paper_PDFs/Thethy-EtAl_2022_Diffraction-Of-Shock-Waves-Through-A-Non-Quiescent-Medium.pdf` (41 pp.)
- **Page refs:** PDF page numbers, which equal the printed article page numbers (A39-n is PDF p. n).
- **Tags:** shock diffraction, non-quiescent background flow, pulse-detonation combustor (PDC), converging nozzle, shock curvature angle (Skews), geometrical shock dynamics (GSD), CCW relation, compressible Euler simulation, cut-cell MUSCL, shock distortion, weak-shock limit, blast-wave decay, expansion characteristic, shock–vortex interaction, transient supersonic jet, high-speed schlieren, high-speed PIV, shock tracking

## Summary
The paper studies how a planar shock diffracts out of a tube exit when the gas ahead of it is already moving, as in the exhaust of a valveless pulse-detonation combustor (PDC) where air flows continuously through the tube. High-speed schlieren shows that a shock leaving a converging nozzle has a straight segment of constant angle between the centreline and the wall region, which the straight nozzle does not show; PIV shows the converging nozzle's background jet is 2.7× faster (p. 12–14). Axisymmetric Euler simulations rule out the nozzle contraction (shock focusing) as the cause and reproduce the distortion with a straight nozzle by raising only the background velocity (p. 14–19). A modified geometrical shock dynamics (GSD) model, which adds a top-hat background velocity to the local shock speed, reproduces the measured shock shapes from just M₀ and M_b (p. 19–21). The authors generalise Skews' (1967b) shock curvature angle to include the background flow, give a closed-form weak-shock model of the distortion angle, and show that advection delays the arrival of the expansion head and tail at the centreline, which steepens the subsequent centreline shock decay (p. 21–33).

## Key findings
- **Shape of the diffracted shock** (p. 12, Fig. 7):
  - Straight nozzle: shock angle θ_s falls smoothly from π/2 on the centreline to ≈ 0 at the wall.
  - Converging nozzle: same end values but with a region of constant shock angle in between (the "spatial distortion"), about X/D = 0.5–0.9 and X/D = 1.1–1.3 in two consecutive frames.
  - Many features behind the leading shock are otherwise unchanged between nozzles (p. 12).
- **Background flow** (p. 12–14, Fig. 8, Table 2): mean PIV profiles at X/D = 1 before the shock arrives are tanh-like turbulent-jet profiles. Centreline u_b/a₀ = 0.14 ± 0.01 (straight) and 0.39 ± 0.01 (converging), a factor 2.7.
- **Shock speeds** (p. 13–14, Table 2): M₀ = 2.62 (straight) and 2.41 (converging). They are similar because two effects compete. The 75% blockage raises back pressure and lowers the fill fraction, which weakens the shock. Shock focusing inside the converging nozzle accelerates it.
- **Not geometry** (p. 14–16, Fig. 9): an Euler run of the converging nozzle into quiescent air (M₀ = 2.62) shows Mach reflections and repeated focusing inside the nozzle, but no distortion of the emerging shock at any time. Other Mach numbers, including the experimental ones, gave the same result.
- **Background velocity is the cause** (p. 16–19, Figs. 10–11):
  - Straight nozzle, M_b = 0.38 (inlet 0.114 kg s⁻¹): a weak distortion starts with a sudden change in shock curvature exactly where the background jet ends (Y/D ≈ ±0.5).
  - M_b ≈ 0.75–0.76 (0.224 kg s⁻¹): a stronger distortion, plus local distortions from interaction with shear-layer Kelvin–Helmholtz vortices. One shock–vortex interaction produces a reflected wave that travels upstream as sound (Inoue & Hattori 1999) and merges with the forming barrel shocks (p. 19).
  - The KH vortex strength is "significantly overestimated" by the inviscid Euler model (p. 19). The experiment shows no strong shock–vortex interaction (p. 18).
- **Modified GSD matches experiment** (p. 19–21, Fig. 12): with a straight-nozzle geometry and only M₀ and M_b as inputs it gives "excellent agreement" with the schlieren for both nozzles.
  - For the straight nozzle the GSD predicts a small constant-angle region that is too small to see in the schlieren.
  - Near the wall GSD misses the measured inflection point of the shock (post-shock effects not modelled; Best 1991).
  - The top-hat profile creates a sharp kink at the lip line.
- **Generalised shock curvature angle** (p. 21–25, Figs. 14–16): eq. 5.8 reduces to Skews' eq. 5.1 at M_b = 0. Increasing M_b lowers m₀ at every M₀, most strongly at small M_b, with asymptotic behaviour at large M_b (p. 23).
  - Euler (M₀ = 2.62, M_b = 0.89; Fig. 15): eq. 5.8 hits the head of the diffraction characteristic exactly; Skews' eq. 5.1 overpredicts m₀ (p. 24).
  - GSD (Fig. 16): near-exact at M₀ = 5, M_b = 2; a small discrepancy at M₀ = 2.5, M_b = 1, inherited from the known gap between eq. 5.1 and Whitham's theory at low M₀ (p. 25). Error is still smaller than with eq. 5.1.
- **Mechanism of the distortion** (p. 25): inside the jet the shock is advected by the background flow as well as propagating as a wave; outside it is not. The front must stay continuous, so the segment at the jet edge is stretched into a straight, constant-angle piece.
- **Weak-shock model** (p. 25–27, Figs. 17–18): eq. 5.13 for the distortion angle m₁ depends only on M₀ and M_b.
  - It agrees with GSD at M₀ = 1.001 over M_b = 0.05–3. The small high-M_b difference comes from m₀ being non-zero even at M₀ = 1.001 (p. 27).
  - It stays "remarkably close" to GSD up to M₀ = 2, then diverges (p. 29). At fixed M₀, m₁ decreases as M_b increases (p. 28).
  - GSD versus available experiments: mean discrepancy in m₁ 2.5, maximum 5 (units garbled in extraction, probably degrees; p. 27).
- **Why the weak model fails at higher M₀** (p. 28–29, Fig. 19): angle-dependent shock speed, a growing and slower normal wall shock, non-zero m₀, and shock decay during diffraction. These compete: M₀ = 1.5, M_b = 0.05 is underpredicted, and M₀ = 5, M_b = 2 overpredicted.
- **Centreline decay** (p. 29–33, Figs. 20–23), M₀ = 5:
  - Ms stays constant, then decays. For M_b = 0 the fitted blast-wave exponent is 0.42, close to 0.40 for spherical decay (p. 30).
  - With M_b > 0 the decay starts later, but once started it is faster: all M_b > 0 curves cross the M_b = 0 curve. At M_b = 0.25 the exponent is already 0.66, so the decay is no longer simple spherical decay (p. 30).
  - In the lab frame the peak decay rate dMs/dX falls with M_b. In the shock frame (eq. 5.14) the peak rate magnitude grows with M_b (p. 30–31, Fig. 21).
  - Shifting the second-derivative curves by the predicted delay ΔX_b (eq. 5.15) collapses them (Fig. 22), with a small M_b-growing error because the Mach reflection at the centreline makes eq. 5.8 overpredict the arrival point (p. 32). The decay mechanism is therefore the same for all M_b, at least to X/D ≈ 3, and Sloan & Nettleton's (1975) spherical decay model remains valid with background flow (p. 32–33).
  - Inflection points appear in dMs/dX for M_b ≠ 0 after X/D ≈ 3, consistent with Sloan & Nettleton's validity limit of X/D ≈ 4 (p. 32).
  - Euler pressure gradients (M₀ = 2.62, M_b = 0.76) confirm the head and tail of the expansion reach the centreline by X/D ≈ 1.7 (p. 33, Fig. 23).
- **Velocity profile sensitivity** (Appendix A, p. 35–36, Figs. 24–25): a tanh profile with the same mean velocity matches the experiment inside the jet as well as the top-hat. Outside the jet the top-hat gives a distortion angle closer to experiment, so it was kept.
- **Quantitative GSD check** (Appendix B, p. 37–38, Fig. 26): GSD matches the centreline and wall-shock positions near the exit; error grows with distance, mostly outside the jet (Y/D > 0.5), because GSD handles the wall shock poorly, the real jet spreads while the top-hat does not, and M₀ < 5. The centreline shock position matches at all times, so GSD is "valid for near-nozzle studies only" (p. 38).

## Setup / method
- **Facility** (p. 4–5, Figs. 2–3): a valveless hydrogen–air PDC; the paper doesn't say where it is. Its details are in Rezay Haghdoost et al. (2020b), and the work is funded through DFG SFB 1029 (TU Berlin), so it is probably a TU Berlin rig (my inference). It is not a Shock Lab group facility in the sense of CLAUDE.md, although Monash (LTRAC) authors lead the paper.
  - DDT section: 40 mm diameter, length 22.8D, with orifice plates for flame acceleration (Gray et al. 2015); spark ignition.
  - Exhaust tube: D = 30 mm (all lengths scaled by D), length 27.5D (schlieren runs) or 29D (PIV runs).
  - Air fed continuously at 100 kg h⁻¹; H₂ fill time 45 ms in all runs, so the tube is only partly filled (fill fraction < 1). The spark fires as the H₂ valve closes. Ambient T = 288 K.
  - Five flush-mounted PCB112A05 pressure transducers at 27.3D, 24D, 17.3D, 10.7D and 4.0D from the tube end, and three ion probes opposite the 1st, 3rd and 5th; 1 MHz NI DAQ.
  - The detonation decouples into a shock at the air–mixture interface, so the exiting wave is a decaying shock (p. 13).
- **Nozzles** (p. 5, Fig. 3): straight (exit 1D); converging (1D → 0.5D over 2D, 7.1° half-angle, 75% blockage).
- **Schlieren** (p. 5–6): Z-type Toepler, two f/8 parabolic mirrors (f = 1219 mm), high-speed LED (Willert et al. 2012) with 1 µs exposure, Photron SA-Z at 40 kHz; knife edge for ∂ρ/∂y. Shock speeds come from 80 kfps images by correlating the undiffracted shock's position between frames (p. 13). Time-resolved, but used only to track single-event shock fronts; there is no statistical or modal analysis.
- **High-speed PIV** (p. 6, Table 1): Darwin-Duo Nd:YLF at 10 kHz, ILA 5150 synchroniser; TiO₂ seeding (τ_p = 0.84 µs) from a fluidised bed plus two FDX fluidic oscillators for the ambient air. Multigrid cross-correlation, 96 → 64 px windows; 411 px D⁻¹ (straight) and 225 px D⁻¹ (converging); outlier detection with interpolation; Chauvenet filter (3σ) for the mean. Mean profiles average 53 (straight) and 55 (converging) pairs taken before the shock arrives (p. 13). Background-velocity uncertainty 1.8 m s⁻¹ (particle size plus 0.1 px subpixel error).
- **Euler simulations** (p. 6–8, Fig. 4):
  - 2D axisymmetric compressible Euler (eq. 2.1), calorically perfect gas, γ = 1.4.
  - Second-order, fully conservative, dimensionally split finite-volume MUSCL scheme with van Leer limiter on a structured grid; conservative cut-cell method for the embedded boundary (Klein et al. 2009; Gokhale et al. 2018). Previously validated in Nadolski et al. (2019) and Rezay Haghdoost et al. (2020a, 2022).
  - Domain: a 1D tube 33.3D long (4448 cells) feeding a 10D × 10D 2D plenum; the nozzle exit is 3D from the tube–plenum boundary. Total 2,504,979 cells (converging) and 2,512,904 (straight). A mesh convergence study is stated but not shown.
  - Boundaries: reflective centreline, tube walls and plenum left wall (matches the experiment to at least 0.4D from the lip); transmissive top and far walls.
  - Procedure: impose an inlet mass flow until a steady jet forms (10 ms), then set a Riemann problem 1.7D upstream of the nozzle entrance with Rankine–Hugoniot post-shock states upstream, and switch the inlet to transmissive. Results were insensitive to the Riemann-problem position.
  - Limitations: inviscid, so the KH vortices are too strong (p. 19); viscosity is argued to be negligible for sharp-edged diffraction (Hillier 1991; p. 3, 14).
- **Modified GSD** (p. 8–11, Figs. 5–6):
  - Whitham's GSD with the CCW area–Mach relation (eqs. 2.4–2.8), following Henshaw, Smyth & Schwendeman (1986). Only the leading shock is modelled; there is no flow behind it.
  - Front discretised into N = 2001 points on an orthogonal curvilinear (α, β) ray system; second-order leap-frog time marching (eq. 2.11), no numerical dissipation; CFL-based Δt from M₀ and a₀; up to 500,000 steps or until cut-off positions are reached. Normals from a cubic-spline fit of the front (eq. 2.15). Axisymmetric ray-tube area from central differences (eq. 2.13). Point-count convergence checked.
  - Background flow: each segment's speed is its local wave speed plus the nearest gridded background velocity, converted back to a Mach number with a₀ and used in eqs. 2.11–2.12 (p. 11).
  - Top-hat profile with the measured centreline velocity, edges at Y/D = ±0.5 (straight) or ±0.25 (converging); a straight-nozzle exit is used for both cases (p. 19). No streamwise velocity variation or jet spreading.
  - GSD runs are aligned with experiment by matching the centreline shock position (p. 19, 37).
- **Measuring m₀ and m₁ in GSD** (p. 24, 27): curvature onset is where the segment angle inside the jet exceeds 0.0014 (stated as the dimensionless equivalent of a value printed as "0.8", probably degrees). m₁ is measured at X/D = 0.8, Y/D = 0.55, and checked at X/D = 0.2.

## Key equations
All page refs are PDF pages. Rendered pages were checked for eqs. 1.1, 2.1, 2.4–2.9, 5.1–5.8 and 5.9–5.13.

- **Skews' shock curvature angle, quiescent** (eq. 1.1, p. 2; repeated as eq. 5.1, p. 21):
  $$\tan^2 m_0 = \frac{(M_0^2-1)\left[(\gamma-1)M_0^2+2\right]}{(\gamma+1)M_0^4}$$
  Check: M₀ = 2.62, γ = 1.4 gives tan²m₀ = 0.246, m₀ ≈ 0.46 rad, matching the dashed curve in Fig. 14.
- **CCW relation** (eqs. 2.4–2.6, p. 8):
  $$\frac{dA}{A} = \frac{-M\lambda(M)\,dM}{M^2-1},\quad \lambda(M) = \left(1+\frac{2(1-\mu^2)}{\mu(\gamma+1)}\right)\left(1+2\mu+\frac{1}{M^2}\right),\quad \mu^2 = \frac{(\gamma-1)M^2+2}{2\gamma M^2-(\gamma-1)}$$
- **Area–Mach rule** (eqs. 2.7–2.8, p. 9): $A = A_0 f(M)/f(M_0)$, $f(M) = \exp\left(-\int \frac{M\lambda(M)}{M^2-1}dM\right)$.
- **GSD front motion** (eqs. 2.9–2.12, p. 9–10): $\partial_t \mathbf x = a_0 M \mathbf n$; leap-frog $\mathbf x_i(t+\Delta t) = \mathbf x_i(t-\Delta t) + 2a_0\Delta t M_i(t)\mathbf n_i(t)$; $M_i(t) = f^{-1}\big(f(M_i(0))A_i(t)/A_i(0)\big)$. With background flow, M_i becomes M_i(y, t) (eq. 2.16, p. 11).
- **Euler equations** (eq. 2.1, p. 6), axisymmetric source term on the right with factor −1/y. As printed, the ∂/∂y flux is (ρu, ρu²+p, ρuv, u(ρE+p)) and the ∂/∂x flux is (ρu, ρuv, ρv²+p, v(ρE+p)).
  > The flux labels in eq. 2.1 look swapped (x-momentum flux under ∂/∂y), and the source term's first entry would normally use the radial velocity. Check the PDF and the cited solver papers before reusing.
- **Generalised curvature angle, lab frame** (eqs. 5.2–5.3, p. 21), with M₀′ = (u₀ + u_b)/a₀:
  $$\tan^2 m_0 = \frac{a_1^2-(u_0+u_b-u_1)^2}{(u_0+u_b)^2} = \left(\frac{a_1}{u_0+u_b}\right)^2\left[1-\left(M_0'\frac{a_0}{a_1}-M_1\right)^2\right]$$
- **Shock-frame relations** (eqs. 5.4–5.6, p. 22): $M_1 = (a_0/a_1)M_0' - M_y$, $M_y = (u_0+u_b-u_1)/a_1$, $M_b = u_b/a_0$,
  $$M_y = \left[\frac{(\gamma-1)(M_0'-M_b)^2+2}{2\gamma(M_0'-M_b)^2-(\gamma-1)}\right]^{1/2},\qquad \frac{a_1}{a_0} = \left[\frac{\big((M_0'-M_b)^2(\gamma-1)+2\big)\big(\gamma(2(M_0'-M_b)^2-1)+1\big)}{(M_0'-M_b)^2(\gamma+1)^2}\right]^{1/2}$$
- **Result, lab-frame Mach number** (eq. 5.7, p. 23):
  $$\tan^2 m_0 = \frac{(\gamma-1)(M_0'-M_b)^2+\frac{2}{\gamma-1}}{M_0'^2(\gamma+1)(M_0'-M_b)^2}\left[(M_0'-M_b)^2-1\right]$$
- **Result, shock-frame Mach number M₀ = M₀′ − M_b** (eq. 5.8, p. 23), the paper's main formula:
  $$\tan^2 m_0 = \frac{1}{(M_0+M_b)^2}\,\frac{\gamma-1}{\gamma+1}\,\frac{M_0^2+\frac{2}{\gamma-1}}{M_0^2}\,(M_0^2-1)$$
  Check: at M_b = 0 this equals eq. 5.1. Example: M₀ = 2.62, M_b = 0.38 gives m₀ ≈ 0.41 rad, against 0.46 rad quiescent.
  > Eq. 5.7 as printed has (γ−1)(M₀′−M_b)² + 2/(γ−1) in the numerator, which doesn't reduce to eq. 5.8 (that needs (γ−1)[(M₀′−M_b)² + 2/(γ−1)]). Eq. 5.8 is self-consistent with eq. 5.1; treat eq. 5.7's grouping as a probable typo and verify.
  > Notation is confusing: Sections 1–3 and Table 2 call M₀ the "initial shock Mach number" without saying which frame. Section 5.2 defines M₀ = u₀/a₀ as the shock-frame value. Confirm which value the Table 2 Mach numbers are before using them in eq. 5.8.
- **Weak-shock distortion model** (eqs. 5.9–5.13, p. 26): circle of radius R centred at the lip (x₀, y₀), tangent line of slope m through (x_b, y₀):
  $$(x_i-x_0)^2+(y_i-y_0)^2=R^2,\quad \frac{x_i-x_0}{\sqrt{R^2-(x_i-x_0)^2}}=m,\quad y_i=m(x_i-x_b)+y_0\ \Rightarrow\ m=-\frac{R}{\sqrt{x_b^2-R^2}}$$
  $$m_1 = \tan^{-1}\!\left(-\frac{M_0}{\sqrt{2M_0M_b+M_b^2}}\right)$$
  Check: with R = M₀a₀t and x_b = (M₀+M_b)a₀t, x_b² − R² = (2M₀M_b + M_b²)(a₀t)², giving eq. 5.13. Fig. 18 plots m₁ as positive and it tends to π/2 as M_b → 0 (no distortion), so the plotted quantity is the magnitude. Examples (my calculation, M₀ = 1): |m₁| ≈ 1.07 rad at M_b = 0.14 and ≈ 0.81 rad at M_b = 0.38.
- **Frame change and expansion delay** (eqs. 5.14–5.15, p. 30, 32): $X(t) = X_s(t) + a_0M_bt$; $\Delta X_b = \tfrac{D}{2}\cot m_{0,b} - \tfrac{D}{2}\cot m_{0,0}$.
- **Background jet fit** (eq. 3.1, p. 13): $u = a\tanh(b(y-c)) + a$, fitted by least squares. Fitted a, b, c are not given.

## Data tables
**Measured conditions** (Table 2, p. 14; checked against the rendered page):

| Parameter | Straight nozzle | Converging nozzle |
|---|---|---|
| Background velocity u_b/a₀ | 0.14 ± 0.01 | 0.39 ± 0.01 |
| Background Mach number | 0.14 | 0.38 |
| Shock velocity u_s/a₀ | 2.68 ± 0.15 | 2.46 ± 0.15 |
| Shock Mach number | 2.62 | 2.41 |

> The shock Mach numbers are about 2% below u_s/a₀ and are said to be based on the measured ambient temperature; they are not u_s/a₀ − u_b/a₀ (that would give 2.54 and 2.07). The paper doesn't explain the difference.

**PIV parameters** (Table 1, p. 6; checked against the rendered page):

| Parameter | Value |
|---|---|
| Interrogation window | 64 × 64 px = 0.16D × 0.16D |
| Overlap | 87% |
| Pulse separation | 4 µs |
| Pulse width | 550–600 ns |
| Field of view | 2.5D × 2.5D |
| Particle relaxation time | 0.84 µs |
| Exposure time | 159 ns |

> 64 px = 0.16D implies ≈ 400 px/D, consistent with the straight nozzle (411 px/D) but not the converging one (225 px/D, i.e. ≈ 0.28D windows). The table probably lists the straight-nozzle case.

**Simulation cases** (p. 14–24):

| Case | Nozzle | M₀ | M_b | Figure |
|---|---|---|---|---|
| Euler, quiescent | converging | 2.62 | 0 | 9 |
| Euler, inlet 0.114 kg s⁻¹ | straight | 2.62 | 0.38 | 10 |
| Euler, inlet 0.224 kg s⁻¹ | straight | 2.62 | 0.76 (text: ≈ 0.75) | 11, 23 |
| Euler | straight | 2.62 | 0.89 | 15 |
| GSD vs experiment | straight exit | 2.41 / 2.62 | 0.38 / 0.14 | 12, 25, 26 |
| GSD, curvature angle | straight exit | 5.0 / 2.5 | 2.0 / 1.0 | 16 |
| GSD, distortion angle | straight exit | 1.001–5 | 0.05–3 | 18, 19 |
| GSD, centreline decay | straight exit | 5 | 0–3 | 20–22 |

## Figures worth remembering
- **Fig. 1 (p. 2) and Fig. 13 (p. 22):** Skews' geometric construction of m₀ and its generalisation with u_b.
- **Fig. 7 (p. 12):** consecutive 40 kHz schlieren frames; the converging-nozzle shock has a straight constant-angle segment (red arrows).
- **Fig. 8 (p. 13):** pre-shock background velocity profiles at X/D = 1 with tanh fits.
- **Fig. 9 (p. 15):** Euler, converging nozzle into still air: Mach reflections and focusing in the nozzle, no distortion outside.
- **Figs. 10–11 (p. 17–18):** Euler, straight nozzle with M_b = 0.38 and 0.76: distortion starting at the jet edge; shock–KH-vortex interactions and an upstream-travelling reflected wave.
- **Fig. 12 (p. 20):** schlieren (top) against GSD Mach-number time history (bottom) for both nozzles.
- **Fig. 14 (p. 23):** m₀(M₀, M_b) contour from eq. 5.8, with Skews' curve dashed.
- **Figs. 15–16 (p. 24):** eq. 5.8 against the head of the expansion in Euler and GSD.
- **Fig. 17 (p. 26):** weak-shock model geometry (circular, linear and straight jet shock segments).
- **Fig. 18 (p. 27):** m₁ against M_b for M₀ = 1.001–5, model against GSD.
- **Figs. 20–22 (p. 30–33):** centreline Ms(X) and its derivatives in lab and shock frames for M_b = 0–3; collapse using ΔX_b.
- **Fig. 23 (p. 34):** Euler pressure gradient showing the expansion head and tail reaching the centreline.
- **Figs. 24–26 (p. 36–37):** top-hat against tanh profiles, and quantitative shock-position comparison.

## Notation
- M₀: initial (undiffracted) shock Mach number; shock-frame u₀/a₀ in Section 5. M₀′ = (u₀ + u_b)/a₀: lab-frame value. Ms: local shock Mach number.
- M_b = u_b/a₀: background-flow Mach number. a₀, a₁: ambient and post-shock sound speeds. u₁: post-shock velocity. M_y, M₁: post-shock Mach numbers (shock and lab frames).
- m₀: shock curvature angle, the locus of the head of the diffraction (expansion) characteristic along the front. m₁: shock distortion angle (constant-angle segment). θ_s: local shock angle to the x axis.
- A, A₀: ray-tube area. λ(M), μ, f(M): CCW/GSD functions. (α, β): shock-front and ray coordinates.
- X, X_s: lab-frame and shock-frame shock positions. ΔX_b: expansion-arrival delay due to the background flow.
- PDC: pulse-detonation combustor. DDT: deflagration-to-detonation transition. GSD: geometrical shock dynamics. CCW: Chester–Chisnell–Whitham.

## Relevance to this project
This is a Shock Lab group paper (Thethy, Kirby, Edgington-Mitchell at LTRAC) on transient shock propagation rather than resonance, but it overlaps with the group's work on underexpanded and starting jets and on rocket noise.

- **Modelling side:**
  - The modified GSD is a cheap reduced-order model of a single shock front. With only M₀, M_b and a velocity profile it predicts near-exit shock shapes well, but not the wall shock, post-shock flow or jet spreading (p. 20–21, 37–38). The paper's Euler solver gives the full flow, but inviscid KH vortices are too strong, which shows up as spurious shock–vortex distortions (p. 19).
  - Eq. 5.8 and eq. 5.13 are closed-form results worth keeping: the first replaces Skews' m₀ when the medium moves, and the second gives the weak-shock distortion angle. Check eq. 5.7's typo and the M₀ frame convention before coding them.
  - The modelling route is: experiment shows an effect, Euler simulations with geometry and flow decoupled isolate the cause, a reduced model explains it, and a weak-limit analytic model captures the trend. This matches the CLAUDE.md emphasis on pairing experiment with modelling.
- **Data and methods:**
  - Everything here is single-event, transient analysis: time-resolved schlieren is used to track shock fronts frame by frame, and PIV only for a pre-shock mean (about 55 pairs). There is no POD, SPOD or BMD.
  - SPOD and BMD assume statistically stationary data, so they don't apply directly to a single diffraction event. For repeated PDC or starting-jet events, phase-locked ensemble averaging over shots (aligned to the shock arrival) is the natural statistic. A Hilbert transform of a pressure or schlieren signal could give instantaneous amplitude and frequency of any post-shock oscillation, but this is a suggestion, not something in the paper.
  - The PIV seeding (TiO₂, τ_p = 0.84 µs) is used only ahead of the shock; across shocks see the particle-lag test in [ragni-2011](ragni-2011-particle-tracer-response-shocks-piv.md), which reports ≈ 0.56 µs for filtered dried TiO₂.
- **Links to screech and impinging-jet work:**
  - The shock reflection from a KH vortex that propagates upstream as sound (p. 19; Inoue & Hattori 1999) is the same shock–vortex sound mechanism behind shock leakage in [edgington-mitchell-2022-unifying-theory-jet-screech](edgington-mitchell-2022-unifying-theory-jet-screech.md) and the standoff-shock leakage in [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md). The paper cites Edgington-Mitchell et al. (2021) on screech generation by shock leakage.
  - The trailing transient jet (barrel shocks, forming Mach disk; p. 19) connects to the underexpanded-jet structure in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md).
  - For density-based shock visualisation in the lab, compare [tan-2015](tan-2015-bos-density-axisymmetric-jets.md) and [molnar-2023](molnar-2023-physics-informed-bos-supersonic.md). For a shock-capturing finite-volume alternative to the cut-cell MUSCL solver, see [greenshields-2010](greenshields-2010-central-schemes-polyhedral-fv.md).
- **Rocket noise:** ignition overpressure is a blast-like wave leaving a nozzle and diffracting into the launch environment ([gee-2023](gee-2023-sls-artemis-i-far-field-noise.md), [kellison-2026](kellison-2026-falcon-9-noise-two-campaigns.md), [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md)). This paper suggests that a wave leaving into already-moving gas (for example staggered ignition of clustered engines, or a plume already flowing in a duct) is advected and distorted, with a delayed but faster centreline decay. That transfer is my inference; the paper only treats PDC exhausts.
- **Agreement with other notes:** none of the indexed notes treat shock diffraction, so there is no direct conflict. Within the paper, eq. 5.8 corrects Skews (1967b) for moving media, and the Euler result contradicts the earlier explanation of the distortion by shock focusing in the nozzle (Allgood et al. 2003; Thethy et al. 2019; p. 14, 19).
- **Related works cited, candidates for `/add-paper`:**
  - Skews 1967a,b (diffracting shock shape and perturbed region).
  - Whitham 1957, 1959; Henshaw, Smyth & Schwendeman 1986 (GSD).
  - Sloan & Nettleton 1975, 1978 (axial and wall shock decay).
  - Rezay Haghdoost et al. 2020a,b and 2022 (PDC exhaust, transient trailing jet, shock dividers).
  - Inoue & Hattori 1999 (sound from shock–vortex interaction).
  - Edgington-Mitchell et al. 2021 (screech by shock leakage); Edgington-Mitchell 2019 (resonance review).
