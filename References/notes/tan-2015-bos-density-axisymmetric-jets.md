# Measurement of density in axisymmetric jets using a novel background-oriented schlieren (BOS) technique

- **Authors:** D. J. Tan, D. Edgington-Mitchell, D. Honnery (LTRAC, Monash University)
- **Source:** Experiments in Fluids 56:204 (2015). Received 22 Jul 2015, published online 3 Nov 2015.
- **DOI:** 10.1007/s00348-015-2076-6
- **PDF:** `//ad.monash.edu/home/User088/joellukw/Documents/Monash_Research_Fellow/Literature/Recent_Papers/Tan2015_Article_MeasurementOfDensityInAxisymm_BOS.pdf` (11 pp.; network share, not in Git)
- **Tags:** background-oriented schlieren, BOS, Abel inversion, adaptive Fourier–Hankel (AFH), quantitative density, Gladstone–Dale, cross-correlation, wavelet-noise background, error analysis, helium jet, fuel injector, self-similarity, density half-radius

## Summary
The paper turns single-camera BOS of an axisymmetric jet into a quantitative mean density field. Background displacements from PIV-style cross-correlation give path-integrated refractive-index gradients, which are inverted with the adaptive Fourier–Hankel (AFH) Abel algorithm of Ma et al. (2008) and converted to density with Gladstone–Dale (p. 2–4). A synthetic error model (Gaussian projections with added noise and shot-to-shot "shape" variation) shows that averaging before or after inversion gives the same mean, sets how many images are needed for a given SNR, and maps the NRMS inversion error over SNR and large-scale variation (p. 4–6). The method is validated on a low-Re helium jet (4.3% error in exit density against the value derived from the flowmeter) and applied to a turbulent helium jet from a Bosch HDEV 1.2 injector at NPR 2, 3 and 4 (6–9% error), where the mean density profiles become self-similar with a half-radius growth rate of about 0.099 (p. 7–10). There is no modelling or simulation component beyond the synthetic Abel test profiles.

## Key findings
- **Averaging before vs after inversion** (p. 5–6, Fig. 5): for 1000 noise-free synthetic profiles with θ_Δ = 10, the Abel inverse of the mean displacement equals the mean of the individual inverses; NRMS error vs the analytical solution is ~10⁻² % (negligible). In practice the authors still **average before inverting**, because the inversion needs a precisely defined symmetry axis, which instantaneous turbulent fields don't give (p. 6).
- **Sample count vs SNR** (p. 5–6, Fig. 6): with θ_Δ = 15 and a convergence criterion of <0.001% relative change in NRMS error (10 simulations per point), the number of samples needed drops steeply from ~10⁴ at SNR ≈ 1 to ~10–100 by SNR ≈ 50. This is a convergence guide only, not an accuracy bound (p. 6).
- **Error map** (p. 6, Fig. 7): NRMS error rises at low SNR and large θ_Δ (turbulent, noisy data). The summary quotes an **11% error for θ_Δ < 10** (p. 6). The estimate is optimistic at very low SNR because it doesn't capture artificial structures the algorithm creates to satisfy the Abel boundary conditions; it only holds when the cross-correlation resolves the background displacement (p. 6).
- **Low-Re validation** (p. 7–8, Fig. 8–9): top-hat density profile near the exit becoming Gaussian downstream; largest displacement RMS in the shear layer at y/D ≈ ±0.5, growing downstream (buoyancy-driven shear-layer instabilities). Measured vs derived exit density differ by **4.3%**; with max θ_Δ = 4.2×10⁻² (from the largest displacement RMS) and SNR 58, the error map predicts **5.2%**, so the result lies within the predicted bound (p. 8).
- **Turbulent injector jet** (p. 8–10): measured vs derived density errors **6.0% (5.98% in the conclusion), 7.3% and 9.0%** at NPR 2, 3, 4; average SNR 38 (p. 8, 10). The larger errors come from coarser resolution (~11 vectors across the 0.5 mm exit vs ~120 for the 20 mm nozzle), lower SNR and more large-scale turbulent variation (p. 8).
- **NPR trends** (p. 9, Fig. 11–12): higher NPR → narrower plume spreading and a longer potential core (centreline density starts its linear decay farther downstream), consistent with Panda (2007) for heated jets.
- **Self-similarity** (p. 9–10, Fig. 13–14): radial mean density profiles at x/D = 0.5–30 are Gaussian and collapse with η = r/δ_ρ. The half-radius grows linearly from x/D ≈ 8, 10, 12 (NPR 2, 3, 4; end of potential core), all on one line with slope **δ_ρ⁰ ≈ 0.099** (Fig. 14, p. 10), agreeing with So et al. (1990) He/air jet data.

> The text on p. 9 says δ_ρ⁰ = 0.991, but Fig. 14 and the conclusion (p. 10) give 0.099; 0.099 is the physically sensible value and is used here.

## Setup / method

### BOS processing chain (Fig. 2, p. 2–3)
1. Cross-correlate reference (no flow) and refracted (flow) images → background displacement field Δ (p. 2).
2. Convert displacements to deflection angles ε via the optical geometry (eq. 2).
3. 2D flows: solve a Poisson equation for n (eq. 4). Axisymmetric flows: deconvolve the projected deflections by Abel inversion (AFH). Fully 3D flows need multi-camera tomography (out of scope; p. 3).
4. Convert refractive index to absolute density with Gladstone–Dale (eq. 1).

### Abel inversion: adaptive Fourier–Hankel (Sect. 3, p. 3–4)
- Inverts the **deflection** directly (eq. 7, second form), so no numerical differentiation of the data is needed (p. 4).
- Discretised as a weighted sum over projections, δ(r_i) = Σ_j D_ij ε_j, with N samples and Δy = Δr = R₀/N (Dasch 1992). D_ij depends only on the mesh, so it is precomputed once (eq. 8, p. 4).
- Classic FH uses the Abel–Fourier–Hankel cycle: Fourier-transform the projection, then inverse Hankel transform (eq. 9–10). Smoothing coefficient α ∈ (0, 1). FH handles the r = 0 singularity but suffers truncation error because it drops high Fourier frequencies (p. 4).
- AFH (Ma et al. 2008) extends the inner sum from N to ⌊N/α⌋, recovering frequencies N+1…N/α and reducing truncation error without a separate filter (unlike the Shepp–Logan filter used with FBPT, which blurs; p. 2, 4).
- **α = 0.1** (lower end of the optimal 0.1–0.2 range from Chehouani & Fagrich 2013; p. 4).
- Semi-analytical schemes (Dasch 1992; Kolhe & Agrawal 2009) perform poorly near the singularity, and noise can propagate into artificial structures (p. 4).

### Synthetic error model (Sect. 4, p. 4–6)
- Test projections: derivative-of-Gaussian displacement (eq. 12) whose exact Abel inverse is a Gaussian (eq. 13); half-domain 0–1 in y/D and r/D (p. 5).
- **Large-scale (global) variation:** θ varied between θ₁ and θ₂; θ_Δ = θ₂ − θ₁ represents shot-to-shot turbulent variation. Example in Fig. 4: θ₁ = 5, θ₂ = 15 (θ_Δ = 10) (p. 5).
- **Small-scale (local) error:** noise set by SNR (example SNR 35), representing thermal background noise etc. (p. 5).
- Error metric: NRMS of the reconstructed mean δ(r) vs eq. 13. Sample size varied 200–2000 (step 50); 1000-sample results shown (p. 6).

> θ_Δ is quoted as 10 or 15 in the text (p. 5–6), but Fig. 7's axis is θ_Δ/D in units of 10⁻², and the low-Re case uses θ_Δ = 4.2×10⁻². The unit convention for θ is unclear; check Fig. 4 and 7 before reusing the error map quantitatively.

### Experiment (Sect. 5, Table 1, p. 6–7)
- Optical table, layout as Fig. 1, **backlit**: wavelet-noise background (Atcheson et al. 2009; Cook & DeRose 2005) printed on film transparency, lit by a 28×36 array of 532 nm LEDs (100 µs pulse; Willert et al. 2012) through a diffuser (p. 6–7).
- Camera: PCO 4000 (16-bit, 4008×2764 px, 9 µm pixels), 200 mm Nikon lens, **f/22** to maximise depth of field (object is never in focus since the camera focuses on the background), 50 µs exposure, single-shutter (p. 7).
- **Cross-correlation:** PIVview 2C (stated sub-pixel accuracy 0.05 px), multigrid (Soria 1998), interrogation window 128×128 → **24×24 px**, **75% overlap** to oversample for the AFH (p. 7).
- Axisymmetry checked by imaging in two orthogonal orientations; SNR from correlation-peak strength was 35–75, so **1000 statistically independent images** per case (not time-resolved). Large-scale variation estimated from the displacement RMS (p. 7).
- Gas: helium (low density vs air), metered by flowmeter; derived density compared with BOS centreline exit density (p. 7).
- Cases:
  - **Low-Re nozzle:** 16.8:1 contraction (Grandchamp et al. 2012), honeycomb (20 mm cell length, 4 mm edge-to-edge) plus wire mesh to minimise inflow disturbances (θ_Δ ≈ 0); imaged to 1.6D (p. 7).
  - **Bosch HDEV 1.2 high-pressure fuel injector:** steady-state injection into atmospheric air at NPR 2, 3, 4; imaged 200 ms after start of injection; field of view to 40D (p. 7). Fig. 10 snapshots are 1000 µs after injection (p. 8).

| Parameter (Table 1, p. 7) | Low-Re nozzle | HDEV 1.2 injector |
|---|---|---|
| Z_B (mm) | 625 | 500 |
| Z_D (mm) | 139 | 105 |
| Resolution (µm/px) | 19.1 | 13.5 |
| D (mm) | 20 | 0.5 |
| Re | 230 | 6000–9000 |
| ρ₀ (kg m⁻³) | 1.22 | 1.21 |

- **Facility:** Shock Lab group facility at LTRAC, Monash (Edgington-Mitchell, Honnery; the paper does not name the lab space).

## Key equations
- Gladstone–Dale (eq. 1, p. 2): $\dfrac{n-1}{\rho} = G(\lambda)$, with $G(\lambda) = 2.2244\times10^{-4}\left[1 + \left(\dfrac{6.7132\times10^{-8}}{\lambda}\right)^2\right]$.
- Deflection from displacement (eq. 2, p. 2): $\epsilon_y \approx \dfrac{\Delta(y)}{Z_D} = M\left(\dfrac{\Delta_{\text{image}}(y)}{Z_D}\right)$.
- Path integral (eq. 3, p. 3): $\epsilon_y = \dfrac{1}{n_0}\displaystyle\int_{-\Delta Z_D/2}^{\Delta Z_D/2} \dfrac{\partial n}{\partial y}\,dz$.
- 2D Poisson problem (eq. 4, p. 3): $\partial^2 n/\partial x^2 + \partial^2 n/\partial y^2 = S(x,y)$.
- Forward Abel (eq. 5, p. 3): $n(y) = 2\displaystyle\int_y^{R_0} \dfrac{\delta(r)\,r}{\sqrt{r^2-y^2}}\,dr$, with $\delta(r) = n/n_0 - 1$ (eq. 6, p. 4).
- Inverse Abel on deflections (eq. 7, p. 4): $\delta(r) = -\dfrac{1}{\pi}\displaystyle\int_r^{R_0} \dfrac{\partial n/\partial y}{\sqrt{y^2-r^2}}\,dy \equiv -\dfrac{1}{\pi}\displaystyle\int_r^{R_0} \dfrac{\epsilon(y)}{\sqrt{y^2-r^2}}\,dy$.
- Discrete form (eq. 8): $\delta(r_i) = \sum_{j=0}^{N} D_{ij}\,\epsilon_j$. FH cycle (eq. 9): $\delta(r) = \mathcal{H}^{-1}\{\mathcal{F}[\mathcal{A}[\epsilon(y)]]\}$.
- FH coefficients (eq. 10, p. 4): $D_{ij} = -\dfrac{\alpha}{N}\displaystyle\sum_{j=0}^{N}\sum_{k=0}^{N} \sin\!\left(\dfrac{\alpha\pi jk}{N}\right) J_0\!\left(\dfrac{\alpha\pi ki}{N}\right)$.
- AFH coefficients (eq. 11, p. 4): same, with the inner sum to $k = \lfloor N/\alpha \rfloor$.
- Synthetic test profile (eq. 12, p. 5): $\Delta(y) \sim \dfrac{\partial n}{\partial y} = \dfrac{-y}{\theta^3\sqrt{2\pi}}\exp\!\left(\dfrac{-y^2}{2\theta^2}\right)$; exact inverse (eq. 13): $\delta(r) = \dfrac{1}{2\pi\theta^2}\exp\!\left(\dfrac{-r^2}{2\theta^2}\right)$. (Checked: the Abel projection of eq. 13 is $\frac{1}{\theta\sqrt{2\pi}}e^{-y^2/2\theta^2}$, whose y-derivative is eq. 12.)
- Half-radius scaling (eq. 14, p. 9; Sautet & Stepowski 1994): $\dfrac{\delta_\rho(x)}{D} = \delta_\rho^0\left(\dfrac{x - x_\rho}{D}\right)$.

> Equations were read from the rendered pages. Eq. 10–11 are printed with j as both the outer summation index and the free index of D_ij; keep the printed form but check Ma et al. (2008) before implementing. The limits of eq. 7 are written as y to R₀ in the PDF (lower limit "y", integration variable y); the version above uses r as the lower limit, which is the standard form.

## Figures worth remembering
- **Fig. 1 (p. 2):** BOS optical layout with Z_D, Z_L, Z_B, Z_I distances.
- **Fig. 2 (p. 3):** BOS-to-density flow chart (2D Poisson vs 3D deconvolution branches).
- **Fig. 3 (p. 4):** geometric meaning of δ(r), n(y) and Δ(y) in the Abel inversion.
- **Fig. 4 (p. 5):** synthetic projections and radial distributions for θ = 5–15 with SNR 35.
- **Fig. 6–7 (p. 6):** samples needed vs SNR; NRMS error map over SNR and θ_Δ. Use together with measured SNR and displacement RMS as an uncertainty bound.
- **Fig. 8–9 (p. 7–8):** low-Re jet mean/RMS displacement, density profiles and instantaneous displacements.
- **Fig. 10–12 (p. 8–9):** injector instantaneous displacements, mean density fields and centreline decay at NPR 2/3/4.
- **Fig. 13–14 (p. 10):** self-similar collapse and linear half-radius growth (slope 0.099).

## Notation
- Δ(y): background displacement; Δ_image: image-plane displacement; M: magnification; ε: deflection angle.
- Z_B, Z_D: camera–background and object–background distances; ΔZ_D: object width along the line of sight.
- n, n₀: refractive index (local, ambient); δ(r) = n/n₀ − 1; R₀: outer radius; N: number of samples.
- α: AFH smoothing coefficient; D_ij: inversion coefficient matrix; J₀: zero-order Bessel function.
- θ: synthetic profile shape parameter; θ_Δ = θ₂ − θ₁: large-scale variation; SNR: correlation-peak signal-to-noise; NRMS: normalised RMS error.
- Single overbar: inverse of mean displacement; double overbar: mean of individual inverses.
- δ_ρ: density half-radius; δ_ρ⁰: its growth rate; x_ρ: virtual origin; η = r/δ_ρ.

## Relevance to this project
This project analyses experimental resonance and feedback data (schlieren, acoustics, PIV) from the Shock Lab; see CLAUDE.md.
- **Quantitative density from schlieren-type data:** the paper is the group's recipe for turning single-camera BOS of an axisymmetric jet into mean density. The chain (cross-correlate → deflection → AFH Abel inversion with α = 0.1 → Gladstone–Dale) could be applied to mean BOS fields of the lab's round jets, e.g. to supply the density field for stability analysis. Edgington-Mitchell et al. (2020) used a tomographic BOS check (<5% error) on the streamline-based density they fed into global stability ([note](edgington-mitchell-2020-waves-in-screeching-jets.md)); this paper is the single-camera, axisymmetric counterpart.
- **Data requirements:** the method works on **averaged, non-time-resolved** images (1000 independent images, sample count set by SNR via Fig. 6). It gives mean density only; instantaneous fields are not axisymmetric, so inversion of single snapshots isn't supported (p. 6). Average before inversion.
- **Limits for shock-containing and screeching jets:** the validation is subsonic helium jets only. Screeching jets with helical/flapping modes (e.g. stage C, m = 1) are non-axisymmetric instantaneously, though the mean is axisymmetric for round nozzles. Strong shocks give large local gradients that may exceed what the cross-correlation resolves; the error map applies only when it does (p. 6). Non-axisymmetric nozzles would need multi-camera tomography instead (p. 3).
- **Processing parameters worth reusing:** wavelet-noise background, backlit LED illumination with diffuser, f/22, 24×24 px final windows with 75% overlap (oversampling matters for the Abel inversion), and SNR measured from correlation peaks (p. 7). Spatial resolution across the jet matters: ~11 vectors across the exit roughly doubled the error vs ~120 (p. 8).
- **Uncertainty framework:** combining measured SNR and displacement RMS with the synthetic error map (Fig. 7) gives a quick error bound for any BOS-Abel measurement (p. 6, 8).
- **Time-resolved use:** nothing here addresses dynamics. For time-resolved schlieren or BOS of screeching jets, SPOD/BMD and the SPOD → reconstruction → HPOD pipeline would act on the projected (line-of-sight) displacement fields directly; Abel inversion of the resulting mode shapes would only be valid for axisymmetric (m = 0) components. See [raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md) and [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md).
- **Modelling side:** none beyond the analytic Gaussian Abel pair used for the error model. The self-similar density spreading (δ_ρ⁰ ≈ 0.099; So et al. 1990; Richards & Pitts 1993) is an empirical check on mean-flow quality rather than a model.
