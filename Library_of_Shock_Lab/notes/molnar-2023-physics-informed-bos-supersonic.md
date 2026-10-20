---
key: "molnar-2023-physics-informed-bos-supersonic"
title: "Estimating density, velocity, and pressure fields in supersonic flows using physics-informed BOS"
authors: ["Molnar, J. P.", "Venkatakrishnan, L.", "Schmidt, B. E.", "Sipkens, T. A.", "Grauer, S. J."]
year: 2023
type: "article"
venue: "Exp. Fluids 64, 14"
bib: {"journal": "Experiments in Fluids", "volume": "64", "pages": "14"}
doi: "10.1007/s00348-022-03554-y"
arxiv: ""
pdf: "diagnostics-and-facilities/Molnar-EtAl_2023_Estimating-Density-Velocity-And-Pressure-Fields-In-Supersonic-Flows-Using-Physics.pdf"
version: "published"
unverified: []
group: false
facility: "NAL Bangalore trisonic wind tunnel"
data: ["BOS", "Euler"]
methods: ["ML", "Abel-inversion", "optical-modelling"]
flow: ["supersonic", "wind-tunnel", "external-flow"]
phenomena: ["shock-waves"]
params: {"M": "2", "model": "15° cone-cylinder; 20° Prandtl–Meyer corner (synthetic)"}
topics: ["diagnostics-and-facilities", "simulation-methods"]
related: ["tan-2015-bos-density-axisymmetric-jets", "raffel-2015-background-oriented-schlieren-review", "brunton-2020-machine-learning-fluid-mechanics", "sun-2021-distortion-correction-large-sensor-piv"]
cites: ["raffel-2015-background-oriented-schlieren-review"]
summary: "PINN with a unified-BOS data loss and Euler physics loss gives ρ, u, v, p from one image pair; Mach 2 cone and Prandtl–Meyer fan; density error 3.75% vs 6.12% Tikhonov, 8.34% Abel"
---
# Estimating density, velocity, and pressure fields in supersonic flows using physics-informed BOS

- **Authors:** J. P. Molnar, L. Venkatakrishnan, B. E. Schmidt, T. A. Sipkens, S. J. Grauer (Penn State; CSIR-NAL Bangalore; Case Western Reserve; NRC Canada)
- **Source:** Experiments in Fluids 64:14 (2023; received 5 Aug 2022, published online 5 Jan 2023)
- **DOI:** 10.1007/s00348-022-03554-y
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/diagnostics-and-facilities/Molnar-EtAl_2023_Estimating-Density-Velocity-And-Pressure-Fields-In-Supersonic-Flows-Using-Physics.pdf` (24 pp.; local only, not in Git)
- **Tags:** background-oriented schlieren, BOS, physics-informed neural network, PINN, data assimilation, unified BOS, optical flow, wOFA, Abel inversion, Sipkens kernel, Tikhonov regularization, Euler equations, irrotationality, cone-cylinder, Prandtl–Meyer expansion fan, Mach 2, synthetic phantoms, nonlinear ray tracing, SU2

## Summary
Quantitative BOS involves three ill-posed inverse problems: deflection sensing (optical flow), tomography (here Abel-type inversion) and Poisson integration. Each step needs its own regularization (smoothness penalties), and that regularization is incompatible with shock-laden flows (p. 1–3). The authors replace the whole chain with a PINN that maps (x, r) or (x, y) to (ρ, u, v, E). It is trained against a data loss that pushes the PINN density through a "unified BOS" operator to predict the raw image difference directly. A physics loss uses the steady 2D/axisymmetric compressible Euler equations plus an irrotationality residual, and an inlet loss fixes the known free stream (p. 8–9). They test it on synthetic images of an SU2 Euler simulation of a Mach 2, 15° cone-cylinder, on an analytical planar Prandtl–Meyer fan, and on a single experimental image pair from the NAL Bangalore trisonic tunnel (p. 10–12). Physics-informed BOS roughly halves the density error of the best conventional method (3.75% vs 6.12% NRMSE, single-shot noisy data). It also returns velocity and pressure fields (≤ 3.1% error), which BOS alone cannot give. The authors call this the first PINN reconstruction of a supersonic flow from experimental data (p. 13).

## Key findings
- **Density accuracy, cone-cylinder, single-shot noisy synthetic data** (p. 13, Fig. 9):
  - Simpson 1/3 and two-point Abel inversion (on wOFA deflections): 8.34% NRMSE each. They underpredict compression, overpredict expansion, and show a top-right corner error that the authors attribute to the parallel-ray assumption.
  - Unified BOS with Sipkens kernel and second-order Tikhonov: 6.12%. Sine-background artifacts remain, and raising ω_Tik damps the field magnitude.
  - Physics-informed BOS (PI-BOS): 3.75%, with crisp shocks and a well-defined expansion fan at the shoulder.
- **All fields, cone-cylinder** (p. 13–14, Table 2): maximum errors with the full loss are 3.75% (ρ), 1.13% (velocity) and 3.09% (p), all for the single-shot case. Ten-shot averages stay below 5% error even with added Gaussian noise up to 10% of the intensity range (p. 14).
- **Experimental validation** (p. 13, Fig. 10): the density ratio behind the cone shock, 2 mm downstream of the apex, follows the Sims (1964) cone tables more closely than the earlier filtered-back-projection BOS of Venkatakrishnan & Meier (2004, 5.1 MP camera). The ~4° region next to the cone surface was excluded because of blur and calibration errors. The experimental image differences show striations (fixed-pattern noise), and all non-zero differences upstream of the shock are noise (p. 11, 14).
- **Irrotationality residual ε₅** (p. 14, Table 2, Fig. 12): marginal benefit on clean synthetic data, but the benefit grows with noise. In the experiment it clearly reduces artifacts and corrects the velocity magnitude downstream of the expansion fan.
- **Expansion fan** (p. 15–16, Fig. 13–14):
  - Errors concentrate at the corner singularity. Including the corner in the data loss makes training blow up, both with the BOS loss and with the local density-gradient loss of Jagtap et al. (2022), so a small region round the corner is excluded from the data loss only. These gradients also violate the paraxial assumption anyway (p. 15).
  - Without a slip-wall condition, a spurious "flow generation" appears in the first few mm of the ramp. Streamwise velocity error is 1.15% (Euler only), 0.61% (plus one pressure tap 5 mm down the ramp) and 0.48% (Euler plus ε₅). A tap at 75 mm gives no gain, because the problem is local to the corner (p. 16).
  - Full-field constraints (ε₅) help more than a single point measurement, but multi-modal data (taps) should be used where available (p. 16).
- **Training lessons** (p. 16):
  - Dimensional Euler residuals span about five orders of magnitude and train far less stably; use non-dimensional equations (agreeing with Haghighat et al. 2022).
  - Swish, GELU, tanh, leaky ReLU and sigmoid perform similarly, but each needs its own loss weights (saturating vs non-saturating activations).
  - Adaptive loss weighting was previously found to be unstable with noisy data (Molnar & Grauer 2022), so fixed weights are used.
- **Cost** (p. 10, 14): the axisymmetric PINN has 363,200 parameters against 1,189,492 for the CFD (4 variables × 297,373 cells). Training takes 2–3 h on a Tesla P100 after code optimisation (originally 5–9 h), against ~10 min for the CFD run.
- **No shock-capturing tricks needed** (p. 16, App. B): no artificial viscosity or entropy-pair loss was used. The authors argue that BOS gives fairly direct access to density, so the data anchor the shock positions; added diffusion could bias the solution.

## Setup / method
- **Experiment** (p. 10–11, Fig. 6): NAL Bangalore trisonic wind tunnel (Venkatakrishnan & Meier 2004).

  | Quantity | Value |
  |---|---|
  | Test section | 0.3 × 0.3 m², ~1" thick quartz windows |
  | Model | 15° half-angle cone-cylinder, zero incidence, on the tunnel centreline |
  | Flow | M = 2, assumed uniform; settling 2.1 kg/cm², 300 K (p. 12) |
  | Background | Dot pattern (experiment); sum of axis-aligned sine waves (synthetic), 0.7 m from window |
  | Camera | Kodak ES 1.0, 1 MP, 9 µm pixels, 50 mm lens at f/8, 1.4 m from tunnel |
  | Region used | 540 × 652 px subsection centred on the axis |
  | Data | One reference/distorted image pair (steady flow) |

  > Fig. 6 also shows a cone shock angle of 33.9°, M = 1.72 and ρ/ρ∞ = 1.35 behind the shock, and dimensions of 40 mm, 75 mm and 125 mm (diameter and cone/cylinder lengths, as read). These are figure read-offs; check against Fig. 6 (p. 11).
- **Synthetic image generation** (p. 11–12, App. C):
  - Pinhole camera with the experimental parameters, 4 rays per pixel (supersampled), and aperture sampling after Cook et al. (1984) to model blur and depth of field. The operator is therefore a "cone-beam" sensitivity matrix.
  - Linear ray tracing in uniform regions (including Snell refraction at the windows); nonlinear ray tracing inside the tunnel for the distorted image with the 4th-order Runge–Kutta scheme of Sharma et al. (1982).
  - Three noise levels: clean, ten-shot average, single-shot. Noise = Gaussian blur (σ = 1.5 px) plus Poisson shot noise (5000 counts max). Separate tests add 1–10% Gaussian noise (p. 11–12).
- **Phantoms:**
  - Cone-cylinder: SU2 7.3.0 compressible Euler, axisymmetric, domain radius 0.15 m and length 0.25 m. Second-order upwind (Roe) with a Venkatakrishnan limiter, weighted least-squares gradients, 297,373 triangular cells, slip walls on the body and the top (tunnel wall). Grid study with cells of 1.25 × 10⁻⁴, 6.25 × 10⁻⁵ and 3.125 × 10⁻⁵ m; the intermediate grid is used (p. 12, 20, Fig. 15).
  - Expansion fan: analytical Prandtl–Meyer solution, M₁ = 2, 20° corner, isentropic relations (App. D.2, p. 20–22). The simulated test section is narrowed to 3.75 cm to keep deflections paraxial; one supersampled image pair (p. 12).
- **Conventional BOS baselines** (p. 5–7, App. A):
  - Deflection sensing: wavelet-based optical flow (wOFA; Schmidt & Woike 2021). It is more accurate than Horn–Schunck (which is equivalent to first-order Tikhonov) but leaves "wavelet fingerprints" in shocked regions (p. 6, Fig. 3).
  - Direct (deflectometry) Abel inversion by Simpson 1/3 or two-point kernels. Each axial slice is inverted independently, with parallel rays assumed and axial deflections ignored (p. 7).
  - Unified BOS: substitute the deflection model into the gradient optical-flow equation to get one linear operator A from density to image difference (eq. 10). Here it uses the Sipkens kernel (non-parallel rays, both sides of the axis; Sipkens et al. 2021), with second-order Tikhonov regularization (eq. 14). ω_Tik is tuned on a phantom study (p. 7–8).
  - Basis: piecewise uniform in x, piecewise linear annuli in r (App. A.1, eq. 23–27).
- **PINN** (p. 8–10, Fig. 5):
  - Inputs (x, r) or (x, y); outputs ρ, u, v, E (non-dimensionalised by the inflow); derivatives by automatic differentiation.
  - Planar: 5 hidden layers; axisymmetric: 10 hidden layers; 50 neurons per output variable (i.e. 200 per layer for 4 outputs; this reproduces the stated 363,200 parameters). Swish activation, normally-distributed weights, zero biases. TensorFlow.
  - Adam, learning rate 10⁻³ for the first three passes through the image data, 10⁻⁴ after. Stop at a plateau: the 500-iteration running mean of L_total changes < 0.5% over 5000 iterations (p. 10).
  - Physics loss by Monte Carlo sampling over the domain; data loss evaluated by querying the PINN at the basis support nodes to build ρ (p. 9).
  - Loss weights from a sweep on a synthetic case: ω_meas/ω_phys = 10, ω_in/ω_phys = 100, used throughout (p. 9).
- **Data dependence:** a single image pair of a steady flow. No time resolution and no ensemble averaging are needed, but the physics loss assumes steady, inviscid flow.

## Key equations
- Gladstone–Dale (eq. 1, p. 4): $n = 1 + G\rho \Rightarrow \nabla n = G\nabla\rho$, with $G \approx 2.26\times10^{-4}$ m³/kg for air at visible wavelengths.
- Ray equation (eq. 2, p. 4): $\dfrac{d}{ds}\left(n\dfrac{d\mathbf x}{ds}\right) = \nabla n$.
- Paraxial deflection in pixels (eq. 3, p. 4): $\delta_\alpha = \dfrac{d\,\psi}{n_0}\displaystyle\int_{\rm ray}\nabla_\alpha n[\mathbf r(s)]\,ds = C_{\rm sys}\displaystyle\int_{\rm ray}\nabla_\alpha\rho[\mathbf r(s)]\,ds$, with $C_{\rm sys} = d\psi G/n_0$, α ∈ {x, y}, d the distance from the probe volume to the background and ψ the pixel pitch. (The paper writes "pixel pitch"; the dimensions suggest ψ is pixels per unit length on the background. Check before reusing.)
- Discrete model (eq. 4–6, p. 4–5): $\rho(\mathbf x)\approx\sum_j\rho_j\varphi_j(\mathbf x)$, $\boldsymbol\delta_\alpha = C_{\rm sys}\mathbf D_\alpha\boldsymbol\rho$, $D_{\alpha,i,j} = \int_{\rm ray}\nabla_\alpha\varphi_j[\mathbf r_i(s)]\,ds$.
- Gradient optical flow (eq. 9, p. 5): $I_x\delta_x + I_y\delta_y = -I_t$, with $I_t = I_{\rm def} - I_{\rm ref}$ (Δt set to 1; I_x, I_y by 2nd-order central differences on the reference image).
- Unified BOS (eq. 10, p. 6): $\mathbf X\boldsymbol\delta_x + \mathbf Y\boldsymbol\delta_y = C_{\rm sys}(\mathbf X\mathbf D_x + \mathbf Y\mathbf D_y)\boldsymbol\rho \equiv \mathbf A\boldsymbol\rho = \mathbf b$, with X, Y diagonal matrices of image gradients and $\mathbf b = \{-I_{t,i}\}$.
- Deflectometry Abel pair (eq. 12a,b, p. 7): $\delta_y(y) = 2C_{\rm sys}\displaystyle\int_y^R\nabla_y\rho(r)\dfrac{y}{\sqrt{r^2-y^2}}\,dr$, $\rho(r) = -\dfrac{1}{\pi C_{\rm sys}}\displaystyle\int_r^R\delta_y(y)\dfrac{1}{\sqrt{y^2-r^2}}\,dy$; discrete form $\boldsymbol\rho = C_{\rm sys}^{-1}\mathbf K\boldsymbol\delta_y$ (eq. 13).
- Tikhonov (eq. 14, p. 7): $\boldsymbol\rho_\omega = \arg\min_{\boldsymbol\rho}\left(\|\mathbf A\boldsymbol\rho-\mathbf b\|_2^2 + \omega_{\rm Tik}^2\|\mathbf L\boldsymbol\rho\|_2^2\right)$, L a discrete cylindrical Laplacian (eq. 28).
- Euler residuals (eq. 15a–d, p. 8–9), β = 1 axisymmetric, 0 planar (r → y for planar); multiplied by r to evaluate on the axis:
  - $\epsilon_1 = (\rho u)_x + (\rho v)_r + \beta\,\tfrac{1}{r}\rho v$
  - $\epsilon_2 = (\rho u^2 + p)_x + (\rho v u)_r + \beta\,\tfrac{1}{r}\rho u v$
  - $\epsilon_3 = (\rho u v)_x + (\rho v^2 + p)_r + \beta\,\tfrac{1}{r}\rho v^2$
  - $\epsilon_4 = [(\rho E + p)u]_x + [(\rho E + p)v]_r + \beta\,\tfrac{1}{r}(\rho E + p)v$
- Equation of state (eq. 16): $p = (\gamma-1)\rho\left[E - \tfrac12(u^2+v^2)\right]$. Irrotationality (eq. 17): $\epsilon_5 = u_r - v_x$.
- Losses (eq. 18–21, p. 9): $\mathcal L_{\rm phys} = \dfrac{1}{\pi R^2L}\displaystyle\int_0^L\!\!\int_0^R\|[\epsilon_1,\dots,\epsilon_5]\|_2^2\,2\pi r\,dr\,dx$; $\mathcal L_{\rm meas} = \|\mathbf A\boldsymbol\rho-\mathbf b\|_2^2$; $\mathcal L_{\rm in} = \dfrac{1}{\pi R^2}\displaystyle\int_0^R\|[\rho-\rho_{\rm in}, u-u_{\rm in}, v-v_{\rm in}, E-E_{\rm in}]\|_2^2\,2\pi r\,dr$ at x = 0; $\mathcal L_{\rm total} = \omega_{\rm meas}\mathcal L_{\rm meas} + \omega_{\rm phys}\mathcal L_{\rm phys} + \omega_{\rm in}\mathcal L_{\rm in}$.
- Prandtl–Meyer phantom (App. D.2, eq. 42–51, p. 20–22): $\nu(M) = \sqrt{\tfrac{\gamma+1}{\gamma-1}}\tan^{-1}\sqrt{\tfrac{\gamma-1}{\gamma+1}(M^2-1)} - \tan^{-1}\sqrt{M^2-1}$, θ = ν(M) − ν(M₁), solved by Newton iteration, then isentropic T, p, ρ and $u = V\cos\theta$, $v = -V\sin\theta$.

> Eqs. 1, 3–6, 11–21 were checked against rendered pages 4, 7, 8 and 9. The appendix kernels (eq. 29–37: Simpson, two-point, Sipkens) and the RK4 ray-tracing steps (eq. 38–41) came only from garbled text and are not reproduced; read them from p. 17–20 if needed.

## Data tables
**Table 1 (p. 12): Prandtl–Meyer fan phantom**

| Region | M | ρ (kg/m³) | u (m/s) | v (m/s) | p (kPa) |
|---|---|---|---|---|---|
| Inflow | 2 | 0.55 | 517.6 | 0.0 | 26.3 |
| Outflow | 2.83 | 0.22 | 572.5 | −208.4 | 7.2 |

> Checks (own): ν(2) = 26.4°, + 20° = 46.4° gives M ≈ 2.83; atan(208.4/572.5) = 20.0°; inflow T = p/(ρR) ≈ 167 K gives a ≈ 259 m/s and M·a ≈ 517 m/s; p₀ = 2.1 kg/cm² ≈ 206 kPa over the M = 2 isentropic ratio 7.82 gives 26.3 kPa, so the fan uses the tunnel's inflow state.

**Table 2 (p. 14): NRMSE (%) for cone-shock reconstructions, best conventional (Sipkens + Tikhonov) vs PI-BOS**

| Data | ρ conv. | ρ PI-BOS | u | v | p |
|---|---|---|---|---|---|
| Clean | 4.81 | 1.13 | 0.36 | 0.53 | 1.39 |
| Clean (no ε₅) | – | 1.22 | 1.39 | 0.74 | 1.56 |
| Ten-shot average | 4.98 | 3.16 | 0.47 | 0.70 | 1.86 |
| Average (no ε₅) | – | 3.24 | 2.82 | 1.30 | 2.07 |
| Single-shot | 6.12 | 3.75 | 0.61 | 1.13 | 3.09 |
| Single-shot (no ε₅) | – | 4.16 | 2.09 | 1.95 | 3.42 |

(u, v, p columns are PI-BOS; checked against rendered p. 14.)

## Figures worth remembering
- **Fig. 1 (p. 2):** the three BOS inverse problems (deflection sensing, tomography, integration) and how indirect, direct and unified BOS group them.
- **Fig. 3 (p. 5):** reference/distorted images, their difference, and exact vs wOFA deflections for the cone; wOFA "fingerprints" in the shock region.
- **Fig. 4 (p. 6):** the unified BOS operator in matrix form.
- **Fig. 5 (p. 9):** PINN architecture with the BOS, Euler/irrotational and inlet losses.
- **Fig. 6 (p. 11):** NAL experiment layout and cone-cylinder flow schematic.
- **Fig. 7 (p. 11):** image differences: clean, ten-shot, single-shot, experimental (fixed-pattern striations).
- **Fig. 9 (p. 13):** density phantom and reconstructions (Simpson, two-point, Sipkens–Tikhonov, PI-BOS), with error maps.
- **Fig. 10 (p. 13):** density ratio vs angle 2 mm behind the apex: PI-BOS, cone tables, earlier BOS.
- **Fig. 11 (p. 14):** ρ, u, v, p for the CFD phantom and each reconstruction, including the experiment.
- **Fig. 12 (p. 15):** streamwise velocity with and without ε₅ (synthetic and experimental).
- **Fig. 13–14 (p. 15–16):** expansion-fan reconstructions and "flow generation" near the ramp lip for different loss combinations.
- **Fig. 15 (p. 21):** CFD grid convergence.

> Fig. 15's legend gives N_p = 83k, 151k and 314k, while the text says 297,373 triangular cells for the grid used. N_p may count points rather than cells; check p. 20–21.

## Notation
- ρ, u, v, E, p: density, axial and radial (or vertical) velocity, total specific energy, pressure; γ = 1.4.
- n, n₀: refractive index and its ambient value; G: Gladstone–Dale constant; δ_x, δ_y: apparent background displacements (px); C_sys: system constant; d: probe-volume-to-background distance.
- D_x, D_y: deflectometry matrices; A: unified BOS operator; b: image-difference vector; K: inverse Abel kernel; L: Tikhonov (Laplacian) matrix; ω_Tik: Tikhonov weight.
- ε₁–ε₄: Euler residuals; ε₅: irrotationality residual; β: 1 axisymmetric, 0 planar; ω_meas, ω_phys, ω_in: loss weights.
- wOFA: wavelet-based optical flow analysis; UBOS: unified BOS; PI-BOS: physics-informed BOS; NRMSE: normalised RMS error; DA: data assimilation.

## Relevance to this project
The Shock Lab's core diagnostics include schlieren and BOS of shock-containing jets (see CLAUDE.md). This paper offers a route from one BOS image pair to density, velocity and pressure in steady supersonic flows, and is a useful contrast with the group's own BOS–Abel work.
- **Compared with group BOS practice:** [tan-2015-bos-density-axisymmetric-jets.md](tan-2015-bos-density-axisymmetric-jets.md) uses cross-correlation, adaptive Fourier–Hankel Abel inversion and averages 1000 images before inverting (4–9% error in He jets). Molnar et al. show Abel-based inversions at 8.34% for a shock flow and argue that the parallel-ray assumption, per-slice inversion and smoothing priors all bias shock fields (p. 7, 13). They also bypass deflection sensing entirely (unified BOS), which removes the step Tan et al. tune most carefully (window size, overlap). Both papers agree that synthetic phantoms are needed to tune and bound the error. The Gladstone–Dale/ray-deflection relations match those in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md).
- **Where it could apply:** mean shock-cell structure of underexpanded free or impinging jets, wind-tunnel models, and nozzle internal flow. The Euler + irrotational loss suits inviscid cores (shock cells, expansion fans, Mach disk region), but not the turbulent shear layers that bound a jet. Those would need a viscous or RANS-type physics loss (with Reynolds stresses or eddy viscosity), and the irrotationality constraint would have to be dropped there. The paper says viscous, unsteady and 3D terms "can be included as necessary" but does not test them (p. 8).
- **Data dependence:** works from one image pair of a steady flow, so it needs neither time resolution nor ensemble averaging. Applied to a jet, it would act on mean (time-averaged) images, and the assumption that the mean obeys the Euler equations ignores Reynolds-stress divergence. It gives no dynamics. For time-resolved schlieren/BOS the group workflow still runs SPOD/BMD on line-of-sight data, then the SPOD → reconstruction → HPOD pipeline ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)). A possible combination is PI-BOS on a phase- or SPOD-reconstructed field, but that would need an unsteady physics loss.
- **Linking to modelling:** a PI-BOS mean density, velocity and pressure field from schlieren alone could supply the base flow for local or Floquet stability analysis (as in [nogueira-2021-twin-jet-coupling-spatial-lsa.md](nogueira-2021-twin-jet-coupling-spatial-lsa.md), which instead gets ρ̄ and P from PIV via Crocco–Busemann) or for resolvent and wavepacket models ([nogueira-2021-wavepacket-modulation-shock-containing-jets.md](nogueira-2021-wavepacket-modulation-shock-containing-jets.md)). That would be useful where PIV is impractical, e.g. near Mach disks or impingement plates. Accuracy in the shear layer, which those models depend on most, is untested here.
- **Simulation side:** the SU2 Euler phantom shows the value of matched CFD for synthetic BOS images with full nonlinear ray tracing, window refraction and aperture blur (p. 11–12, App. C–D). The same could be done with the group's LES fields for screech or impinging jets to test any BOS processing chain. Compare the central-scheme shock solver in [greenshields-2010-central-schemes-polyhedral-fv.md](greenshields-2010-central-schemes-polyhedral-fv.md).
- **Machine-learning context:** this is a concrete PINN/data-assimilation case that fits the "physics-informed networks" and super-resolution/PIV-reconstruction strands of [brunton-2020-machine-learning-fluid-mechanics.md](brunton-2020-machine-learning-fluid-mechanics.md). It shows the practical issues that review flags: loss weighting, non-dimensionalisation, singularities and multiple weak solutions for hyperbolic equations (p. 16, App. B).
- **Imaging and calibration:** a camera model with diverging rays and aperture blur matters for quantitative BOS through thick windows (p. 10–11). Compare the lens-distortion mapping in [sun-2021-distortion-correction-large-sensor-piv.md](sun-2021-distortion-correction-large-sensor-piv.md). Sine-wave backgrounds are preferred over dot patterns for optical flow (p. 12).
- **Related works cited:** Grauer & Steinberg 2020 (unified BOS), Sipkens et al. 2021 (non-parallel-ray Abel kernel), Schmidt & Woike 2021 (wOFA for BOS), Molnar & Grauer 2022 (Bayesian PINN tomography), Cai et al. 2021 (PINN on tomographic BOS of an espresso cup), Jagtap et al. 2022 and Mao et al. 2020 (PINNs for supersonic flows), Venkatakrishnan & Meier 2004 (original cone BOS). All are candidates for `/add-paper`.
