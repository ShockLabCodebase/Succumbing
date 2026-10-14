# Waves in screeching jets

- **Authors:** D. Edgington-Mitchell, T. Wang, P. Nogueira, O. Schmidt, V. Jaunet, D. Duke, P. Jordan, A. Towne
- **Source:** arXiv:2008.09756 (preprint, 22 Aug 2020; JFM style)
- **PDF:** `References/Paper_PDFs/Edgington-Mitchell_waves_in_screeching_jets.pdf` (27 pp.)
- **Tags:** screech, underexpanded jet, Kelvin-Helmholtz wavepacket, guided jet mode, duct-like/trapped mode, shock-cell interaction, POD, global stability, local stability, PIV

## Summary
The paper uses PIV measurements of three screeching jets together with global and local linear stability analysis. It finds three waves at the screech frequency: (1) the downstream KH wavepacket, (2) the upstream guided jet mode, and (3) a downstream duct-like (trapped) mode, which had not been seen in screeching jets before. Waves 2 and 3 are the sum and difference wavenumbers produced when the KH wave interacts with the shock cells, as Tam & Tanna (1982) predicted. This is the first direct experimental validation of that model. A linear global analysis of the measured mean flow, which includes the shocks, reproduces all three waves and the screech frequency to within about 1%. The spatial modulation of coherent velocity fluctuations is explained by superposing the three waves; there is no evidence that the shocks directly modulate KH growth.

## Key findings
- **Three waves at f_s** (p. 14–15). Named by the sign of their wavenumber:
  - `k_kh+`: the KH wavepacket, with phase speed u_p ≈ 0.7 U_j. It carries most of the energy.
  - `k_t-`: upstream, phase speed ≈ ambient sound speed. This is the guided jet mode, with support both inside and outside the shear layer. It peaks near the 4th shock cell.
  - `k_t+`: downstream, high positive wavenumber. It is a duct-like trapped mode confined to the jet core (Towne et al. 2017) and peaks slightly upstream of the `k_t-` peak.
- **Tam & Tanna interaction confirmed** (p. 15–17, Tables 3–4): k_t- ≈ k_kh − k_s and k_t+ ≈ k_kh + k_s, with all observed values inside the predicted ranges.
- **The shocks act as forcing and the mean flow sets the response** (p. 20): the KH–shock interaction forces the waves, and the mean flow determines their radial structure (Tam & Hu 1989 families).
- **Linear global analysis** (NPR 2.10 only): the least-stable mode is at St = 0.667, against St = 0.67 measured. The global-mode wavenumbers are about k_x D = 0.5 higher than in the experiment, consistent with a slightly higher k_kh (p. 11–12, 16, 19).
- **The local analysis** shows the `k_t+` eigenfunction is strongly modulated just downstream of shocks. There its peak moves from the centreline to near the shear-layer edge, but it stays bounded by the shear layer (p. 20, Fig. 15).
- **Sources of the modulation** (p. 20–23):
  - `k_t-`+`k_kh+` gives the near-field standing wave and much of the modulation in the core.
  - `k_t+`+`k_kh+` gives weaker modulation that stays inside the lipline.
  - `k_t-`+`k_t+` is an order of magnitude weaker.
  - Superposing all three reproduces the centreline modulation for 2 ≤ x/D ≤ 4 (Fig. 20).
  - The modulation wavelength is about the shock spacing, but its nodes are not aligned with the shocks.
- **Conclusion** (p. 24): apart from the nonlinear KH–shock interaction, the frequency-selection mechanisms (propagation of `k_kh+` and `k_t-`, and nozzle receptivity) appear to be linear.

## Setup / method
- **Nozzle:** converging, D = 15 mm, radius of curvature 67.15 mm, with a parallel exit section. The external lip is 5 mm thick. The nozzle-to-plenum area ratio is about 100:1, so the exit boundary layer is laminar and very thin (p. 8).
- **Cases** (Table 1, p. 8):

  | NPR | M_j | Re | St | Mode |
  |---|---|---|---|---|
  | 2.10 | 1.09 | 4.4×10⁵ | 0.67 | A1 (m=0) |
  | 2.25 | 1.14 | 4.7×10⁵ | 0.65 | A2 (m=0) |
  | 3.40 | 1.45 | 8.6×10⁵ | 0.26 | C (m=1, helical) |

  St = f D_j / U_j. The text notes a slight correction to the Strouhal numbers reported for the 2.10 and 2.25 data in Edgington-Mitchell et al. (2018a).
- **PIV** (Table 2, p. 8):
  - It is not time-resolved: 2 Hz acquisition with 9,000 snapshots for NPR 2.10/2.25 and 8,000 for NPR 3.4.
  - NPR 2.10/2.25 used one Imperx B4820 camera. NPR 3.4 used two PCO 4000 cameras with their fields stitched together.
  - Seeding was smoke of about 600 nm. Processing used multigrid cross-correlation (Soria 1996).
  - Shock strength: transverse velocity from the shocks is below 3% of U_e at NPR 2.10 and above 20% at NPR 3.4 (p. 9).
- **Decomposition** (p. 9–10):
  - POD is run on the **transverse** velocity only, so that the leading pair is the screech mode (Weightman et al. 2018).
  - The leading pair is combined into a complex mode, Φ = φ₁ + iφ₂ with a = a₁ − i a₂, which gives q_c = â e^{−iω_s t} Φ(x,y).
  - The mode is then Fourier-transformed in x to get q̂_ck(y). The sign of k_x is used as the sign of the phase and group velocity.
- **Wave isolation** (p. 17): cosine-tapered bandpass filter in wavenumber, half-width 1.9D, taper ratio 0.5. The results are sensitive to the filter and should be treated as qualitative.
- **Global stability** (p. 10–12):
  - Linearised compressible Navier–Stokes equations on the measured NPR 2.10 mean flow, extrapolated to −1 ≤ x/D ≤ 19 and 0 ≤ r/D ≤ 4.
  - Density is taken from constant stagnation density along streamlines; a tomographic BOS check gives errors below 5%.
  - Numerics: 4th-order SBP finite differences, N_x = 750 and N_r = 300, with sponge layers.
  - Re = 10³, which acts like an eddy viscosity (Pickering et al. 2020). The code is from Schmidt et al. (2017).
- **Local stability** (p. 12): spatial analysis at real ω with q(r)e^{i(kx+mθ−ωt)}, neglecting second x-derivatives (Towne 2016).

## Key equations
- Powell (1953) screech frequency: $f = \dfrac{U_c}{s(1+M_c)}$, where s is the shock spacing (eq. 1.1, p. 3).
- KH wavepacket: $u_{kh} = a(x)\,\psi(r)\,e^{i(k_{kh}x-\omega t)}$ (eq. 1.2, p. 4).
- Shock-cell modulation (Prandtl–Pack): $u_s = \sum_n A_n (e^{ik_{sn}x} + e^{-ik_{sn}x})$ (eq. 1.3).
- Interaction: $u_{kh}u_s \propto e^{i(k_{kh}+k_s)x - i\omega t} + e^{i(k_{kh}-k_s)x - i\omega t}$ (eq. 1.4). This is the core result used in the paper.
- Tam et al. (1986): $f_s = \dfrac{U_c k_s}{2\pi(1+M_c)}$, which gives the same prediction as Powell (eq. 1.9, p. 5).
- Eq. 1.5–1.8 derive the same sum/difference wavenumbers from the convective term, splitting the mean flow into U = U_sm + U_sh·½(e^{ik_s x}+e^{−ik_s x}).

> Equations were re-typed from garbled PDF text extraction. Check eq. 1.6–1.8 and 1.9 (including the 2π) against the PDF before relying on them.

## Wavenumbers (Tables 3–4, p. 16–17)

| Case | k_kh D | k_s D | k_kh−k_s | k_x(k_t-) | k_kh+k_s | k_x(k_t+) |
|---|---|---|---|---|---|---|
| 2.10 Exp | 5.8±0.5 | 11±0.5 | −5.2 | −5.5 | 16.8 | 16.7 |
| 2.10 LSA | 6.2±0.5 | 11±0.5 | −4.8 | −4.9 | 17.2 | 17.8 |
| 2.25 | 5.5±0.5 | 9±0.5 | −3.5 | −4.0 | 14.5 | 15.3 |
| 3.4 | 2.6±0.3 | 4.6±0.2 | −2.0 | −2.3 | 7.2 | 7.2 |

> The table layout was scrambled in extraction. Rows were reassembled by checking that sum and difference match k_kh ± k_s. Confirm against p. 17.

## Figures worth remembering
- **Fig. 5–6 (p. 12–13):** global mode vs POD mode (streamwise velocity), and the global-mode pressure field. The pressure field shows upstream acoustic waves and downstream Mach waves.
- **Fig. 10–11 (p. 16):** wavenumber spectra for all jets, and global vs experiment. All three wave peaks are visible.
- **Fig. 12–13 (p. 18):** filtered amplitude maps of each wave for NPR 2.10 and NPR 3.4.
- **Fig. 14 (p. 19):** radial profiles of the three waves, experiment vs global. The KH wave shows its double peak.
- **Fig. 15 (p. 20):** local `k_t+` eigenfunctions vs x. Their shape changes just downstream of shocks.
- **Fig. 16–17 (p. 21–22):** downstream-only (k_x > 0) fluctuations. The modulation remains in the core.
- **Fig. 18–20 (p. 21–23):** pairwise wave superpositions and the centreline reconstruction.

## Notation
- `k_kh+`: KH wave. `k_t-`: upstream guided jet mode. `k_t+`: downstream duct-like mode.
- k_s: shock-cell wavenumber. NPR: stagnation-to-ambient pressure ratio. Subscript j: ideally expanded conditions.
- Screech stages: A1/A2 (m=0), B/D (flapping), C (m=1 helical).
- Coordinates: r from the stability analysis is shown as y to match the PIV.

## Relevance to this project
This project analyses experimental resonance and feedback data (schlieren, acoustics, PIV) from the Shock Lab; see CLAUDE.md.
- **A method for non-time-resolved PIV:**
  - Run POD on the **transverse** velocity only, so the leading pair is the resonance mode (p. 9).
  - Form the complex mode Φ = φ₁ + iφ₂ (p. 9).
  - FFT it in x and split k_x < 0 from k_x > 0 to get upstream and downstream waves (p. 10, 15).
  - The paper notes that SPOD couldn't be used because the PIV isn't time-resolved (p. 9). This POD route is the non-time-resolved alternative. With time-resolved schlieren, SPOD or BMD would give the frequency-resolved equivalent, and the same wavenumber split would still apply.
  - This needs no time resolution, so it applies directly to lab PIV of screeching or impinging jets. Use cosine-tapered bandpass filters for individual waves (half-width 1.9D, taper 0.5; p. 17), and treat the results as qualitative because they depend on the filter.
- **Explaining spatial modulation:** a k_x > 0 high-pass filter removes the standing wave. Any modulation left in the core points to a `k_t+` trapped wave, not shock modulation of the KH wave (p. 20–23). This is a useful check before attributing amplitude modulation in PIV or schlieren to the shocks.
- **Wave identification checklist:** look for the KH peak at u_p ≈ 0.7 U_j, the guided mode at about −a∞, and `k_t±` at k_kh ± k_s. Use the dashed sonic and shock-spacing lines in the wavenumber spectra as references (Fig. 10, p. 16).
- **How the modelling and experiment fit together:**
  - A global stability analysis run directly on the **PIV-derived mean flow** reproduces the screech frequency to about 1% and all three waves (p. 11–12, 19).
  - Recipe: extrapolate the measured mean flow to the larger domain (p. 10). Get density by assuming constant stagnation density along streamlines, checked with BOS (p. 10). Use a low Re (10³) to stand in for eddy viscosity (p. 11).
  - Including the shock cells in the mean flow is what lets a *linear* operator capture the *nonlinear* KH–shock interaction (p. 19). This only works for weak shocks, so the analysis was run on NPR 2.10 only (p. 10).
  - Local spatial stability analysis identifies the `k_t+` wave from its eigenfunctions as they change with x. Comparing eigenfunctions with the radial profiles of PIV-filtered waves is a template for matching experiment to theory (Fig. 14–15).
  - Linked theory: Tam & Hu (1989) vortex-sheet wave families, Tam & Tanna (1982) interaction model, Towne et al. (2017) trapped waves, and Schmidt et al. (2017) global stability code.
- **Feedback-loop framing:** the paper splits resonance into four processes: downstream wave, downstream reflection, upstream wave, and upstream receptivity at the nozzle (p. 2). Its result that the loop is linear apart from the KH–shock interaction (p. 24) is a baseline to test against for impinging and non-axisymmetric nozzles.
- **Impinging jets:** guided-mode closure applies to subsonic and supersonic impinging jets. However, some impinging cases close via free-stream acoustic waves (Weightman et al. 2019; p. 2). Nozzle lip thickness affects the resonance (Raman 1997; Weightman et al. 2019; Beneddine et al. 2015; p. 6).
- **Shock Lab group facility** (Monash authors; the specific lab space isn't stated): D = 15 mm converging nozzle with a 5 mm lip and a 100:1 contraction (p. 8). The conditions in Table 1 are a reference for A1/A2/C screech staging.
- **Related works cited:** Weightman et al. 2017 (phase lag in impingement), 2018 (POD shear-layer signatures; basis of the transverse-only POD choice) and 2019 (nozzle external geometry and azimuthal mode selection in impinging jets). Also Edgington-Mitchell et al. 2018a (guided-mode screech closure) and Mancinelli et al. 2019a (screech prediction using guided modes). All are candidates for `/add-paper`.
