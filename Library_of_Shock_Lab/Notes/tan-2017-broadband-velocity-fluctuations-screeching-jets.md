---
key: "tan-2017-broadband-velocity-fluctuations-screeching-jets"
title: "Novel Method for Investigating Broadband Velocity Fluctuations in Axisymmetric Screeching Jets"
authors: ["Tan, Dominic J.", "Soria, Julio", "Honnery, Damon", "Edgington-Mitchell, Daniel"]
year: 2017
type: "article"
venue: "AIAA J. 55(7), 2321–2334"
bib: {"journal": "AIAA Journal", "volume": "55", "number": "7", "pages": "2321--2334"}
doi: "10.2514/1.J055606"
arxiv: ""
pdf: "modal-decomposition/Tan-EtAl_2017_Novel-Method-For-Investigating-Broadband-Velocity-Fluctuations-In-Axisymmetric.pdf"
version: "published"
unverified: []
group: true
facility: "Shock Lab group facility (LTRAC Supersonic Jet Facility)"
data: ["PIV"]
methods: ["statistics", "POD", "PSD", "coherence"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "helical", "flapping", "precession", "shock-cells", "mixing-noise", "coherent-structures"]
params: {"NPR": "2.6, 3.4, 4.2", "M_j": "1.25, 1.45, 1.59", "Re_j": "5.54, 7.10, 8.60×10⁵ (convention not stated)", "St": "0.31, 0.26, 0.22 (printed as f_s D_j/U_j; values match U_j = M_j a∞)", "f_s": "8.68, 8.03, 7.23 kHz", "D": "15 mm", "t/D": "0.33 (5 mm lip)", "U_e": "310 m/s", "TR": "1 (T₀ ≈ 288 K)", "N": "8500 snapshots per case"}
topics: ["modal-decomposition", "jet-noise-mechanisms", "diagnostics-and-facilities"]
related: ["edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2021-generation-screech-tones-shock-leakage", "wong-2021-wavepacket-modelling-bbsan", "tan-2015-bos-density-axisymmetric-jets", "weightman-2019-sound-production-impinging-supersonic-jets", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "towne-2018-spod-relationship-dmd-resolvent", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "raiola-2025-hilbert-pod", "tam-1996-two-components-turbulent-mixing-noise-supersonic-jets", "norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets"]
cites: ["andre-2013-bbsan-screeching-non-screeching-underexpanded-jets", "edgington-mitchell-2014-coherent-structure-helical-screech-mode", "edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "johnston-2016-underexpanded-jet-intrusive-tab-visualisation", "mason-smith-2015-underexpanded-jet-impinging-cylindrical-sections", "mitchell-2011-particle-relaxation-piv-cross-correlation", "mitchell-2012-visualization-acoustic-feedback-loop-impinging-jet-schlieren", "mitchell-2013-near-field-structure-underexpanded-elliptic-jets", "raman-1999-supersonic-jet-screech-half-century-powell-present", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise", "tan-2015-bos-density-axisymmetric-jets"]
summary: "POD triple decomposition of 8500 PIV snapshots strips screech: 2 modes (C) vs 18 (B); broadband L/δθ ≈ 2.1, 1.0, 1.0 match non-screeching jets; ≥3000 samples suffice"
---
# Novel Method for Investigating Broadband Velocity Fluctuations in Axisymmetric Screeching Jets

- **Authors:** Dominic J. Tan (PhD student), Julio Soria, Damon Honnery, Daniel Edgington-Mitchell, all at the Laboratory for Turbulence Research in Aerospace and Combustion (LTRAC), Department of Mechanical and Aerospace Engineering, Monash University; Soria also at King Abdulaziz University, Jeddah (p. 2321). Shock Lab group work (Edgington-Mitchell).
- **Source:** AIAA Journal 55(7), 2321–2334, July 2017, doi:10.2514/1.J055606. Presented as AIAA Paper 2016-2801 at the 22nd AIAA/CEAS Aeroacoustics Conference, Lyon, 30 May–1 June 2016. Received 18 Aug 2016, revised 16 Jan 2017, accepted 17 Jan 2017, online 7 Apr 2017. Copyright held by Dominic James Tan (p. 2321). Funded by the Australian Research Council; computing on R@CMon/NeCTAR (p. 2333). A precursor is Tan et al. 2015, AFLDC conference, on integral length scales in an underexpanded jet (ref. 20, p. 2333).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Tan-EtAl_2017_Novel-Method-For-Investigating-Broadband-Velocity-Fluctuations-In-Axisymmetric.pdf` (index key `modal-decomposition/Tan-EtAl_2017_Novel-Method-For-Investigating-Broadband-Velocity-Fluctuations-In-Axisymmetric.pdf`, 14 pp., publisher's version, Monash download). Page refs are journal pages; **PDF page = journal page − 2320**. The PDF opens only through `pdftotext`/`pdftoppm`. Eqs. 1–13, Fig. 1 and Tables 1–4 were checked against rendered pages; figure values are read from embedded raster plots (about ±5%).
- **Tags:** triple decomposition (Hussain & Reynolds), snapshot POD, POD-based filtering of tonal (screeching) from broadband fluctuations, a posteriori screech removal (no tabs, notches or reflectors), number of modes N_M chosen from spatial wavenumber spectra, premultiplied spatial spectra kE(k), Lighthill stress tensor, two-point spatial correlation, turbulent integral length scales L⁽¹⁾ and L⁽²⁾, incompressible momentum thickness δθ, scaling of length scales with δθ, helical C mode, precessing flapping B mode, convergence of POD and length scales with sample size, SNR and vector resolution, Tinney Δx/L criterion, non-time-resolved planar PIV, stitched two-camera PIV

## Summary
Screech tones make classical broadband-noise models hard to apply to laboratory supersonic jets, and the usual fixes (tabs, notches, reflectors) change the flow itself (p. 2322). The paper proposes removing the screech-related coherent motion *after* the measurement: a Hussain–Reynolds triple decomposition in which the coherent ("screeching") part u^c is the reconstruction from the leading N_M snapshot-POD modes, and the broadband part is u″ = u′ − u^c (Fig. 1, eqs. 5–10, p. 2323). N_M is the smallest number of modes whose removal flattens the sharp screech peak in axially computed spatial wavenumber spectra while leaving the rest of the spectrum unchanged (Fig. 2, p. 2323–2324). Applied to 8500 non-time-resolved PIV fields of underexpanded jets at M_j = 1.45 and 1.59 (helical C mode), two modes suffice; at M_j = 1.25 (precessing flapping B mode) it takes 18 modes (38% of the energy), and some non-periodic energy is removed with them (p. 2325–2328). Integral length scales of u″ along the shear-layer centre, scaled by the incompressible momentum thickness, settle to L⁽¹⁾_uu/δθ ≈ 2.1, L⁽¹⁾_vv/δθ ≈ L⁽²⁾_uu/δθ ≈ 1.0 and L⁽²⁾_vv/δθ ≈ 0.25 for all three jets, close to the non-screeching values of Fleury et al. (2008) and André et al. (2014), whereas the total fluctuations overestimate them by 15–140% (Table 3, p. 2330–2332). A degradation study on the M_j = 1.25 data finds length-scale errors below 1% for at least 3000 snapshots, SNR > 500 and Δx/L < 0.1 (p. 2332). No noise is predicted; the method supplies screech-free turbulence statistics for source models.

## Key findings
- **Method works for the helical mode with the leading pair** (§IV.A, p. 2325–2327):
  - Snapshot POD of the radial (transverse) velocity gives a clean pair: about 30% (M_j 1.45) and 17% (M_j 1.59) of the fluctuating energy in modes 1 + 2, with near-equal energies within each pair (Fig. 5, p. 2325–2326). Read from Fig. 5: 15.5% + 13.8% then ≈ 2.5% for mode 3 (M_j 1.45); 8.8% + 8.2% then ≈ 1.2% (M_j 1.59).
  - Earlier work on the same jets (refs 18–19, i.e. [edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md) and [edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer](edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md)) found the pair temporally coupled as a single helix and modes 3–4 uncorrelated with it (p. 2326).
  - Premultiplied spatial spectra of u′ at y/D = 0 and 0.5 have a sharp peak at λ_x/D ≈ 0.7, small peaks at λ_x/D ≈ 0.1–0.3 and a broad hump near λ_x/D ≈ 5 (p. 2326). The sharp peak is much stronger at M_j 1.45, which also has the stronger tone (read from Figs 6–7: kED/U_e ≈ 0.26 against ≈ 0.12 at y/D = 0.5).
  - N_M = 1 leaves a reduced but clear peak; N_M = 2 removes it with no measurable residue and leaves the rest of the spectrum unchanged; N_M = 3–4 start to remove energy elsewhere (the drop from N_M = 2 to 3 at y/D = 0.5) (p. 2326–2327). So u^c ≈ the leading pair (Fig. 8).
- **Precessing flapping B mode needs many modes** (§IV.B, p. 2328):
  - The flapping plane precesses in and out of the measurement plane, so the coherent motion is not caught in one pair; the leading two modes hold under 10% of the energy and the spectrum is flatter (Fig. 10). (Read from Fig. 10: ≈ 6% + 5.8%, i.e. about 12%; see verify list.)
  - The screech peak sits at λ_x/D ≈ 0.5. Testing N_M = 2, 10, 18, 26, 34, the peak is "sufficiently filtered" at N_M = 18, which captures 38% of the total energy (Fig. 11).
  - At N_M = 18 there is already a noticeable energy drop over 0.2 < λ_x/D < 0.6, i.e. some non-screech energy is removed; most of the uncorrelated large-scale mixing information is said to survive (p. 2328).
  - The conclusion states the approach is "highly dependent upon the dominant instability regime" (abstract, p. 2321, 2333).
- **What the filter keeps** (§IV.A.3, p. 2326–2327): POD removes only structures that are periodic within the spatial domain, so non-periodic large structures at the same wavelengths stay in u″ and the low-wavenumber part of the spectrum is untouched. The authors argue this preserves the uncorrelated large-scale mixing information that a radiating/non-radiating split (Du & Morris 2015) could lose, while removing the "periodic self-forcing component".
- **Length scales on the jet axis** (Fig. 12, p. 2329–2330): constant up to the first shock reflection point, then strongly modulated at the reflection points (e.g. L⁽¹⁾_vv/D up to ≈ 0.6 at M_j 1.45, read from figure). The modulation is much weaker in u″. At M_j 1.25 the potential core collapses at x/D ≈ 6, after which the length scales level off.
- **Length scales along the shear-layer centre** (Fig. 13, p. 2330): the total-fluctuation length scales are only weakly modulated, still at the reflection points; the authors suggest the screech standing wave may also contribute. In u″ the modulation is attenuated and the growth is close to linear.
  - Read from Fig. 13 at x/D ≈ 8–9 (broadband): L⁽¹⁾_uu/D ≈ 0.15, 0.33, 0.28 for M_j 1.25, 1.45, 1.59, against total ≈ 0.28, 0.45, 0.40.
  - For M_j 1.25 (N_M = 18) the broadband scales stop growing beyond x/D ≈ 4 while the total ones keep growing (my reading of Fig. 13a, d, g, l); this may be the over-filtering seen in Fig. 11.
- **Scaling with momentum thickness** (Figs 14–15, Table 3, p. 2330–2332):
  - Ordering for both total and broadband: L⁽¹⁾_uu/δθ largest, L⁽¹⁾_vv/δθ ≈ L⁽²⁾_uu/δθ, L⁽²⁾_vv/δθ smallest. Ratios become independent of M_j and constant for x/D > 3; values are means over 6 ≤ x/D ≤ 9 (p. 2330).
  - Broadband: 2.06–2.10, 1.01–1.05, 1.04–1.08 and 0.23–0.26. Fleury et al. (subsonic M 0.6 and 0.9, non-screeching): 2.00, 1.00, 1.00. André et al. (M_j 1.10–1.50, screech suppressed by notches): 1.76–2.15, 0.56–0.67, 0.83–1.03 (Table 3).
  - Total fluctuations: 3.60/2.52/2.40, 2.51/1.47/1.31, 2.33/1.41/1.29, 0.67/0.46/0.45 (M_j 1.25/1.45/1.59). These "consistently overestimate" the non-screeching values, which the authors attribute to the periodic coherent motion (p. 2331).
  - The L⁽¹⁾_vv/δθ mismatch with André et al. (≈ 1.0 here and in Fleury against 0.56–0.67) is put down to their notches or other experiment-specific factors (p. 2332). André et al. had found a Mach-number dependence, attributed to the mixing-layer growth rate falling faster with M_j than the length scales (p. 2331).
  - Headline: after removing the periodic motion, screeching jets show the same L/δθ scaling as non-screeching jets, "even though the absolute values may differ" (p. 2332, 2333).
- **Reliability (convergence study, M_j 1.25 with N_M = 18 as the hardest case)** (§IV.C.2, Fig. 16, Table 4, p. 2332):
  - Method: degrade the data, redo the whole POD → u″ → L chain, and compare with the full-data broadband length scales of Fig. 13 (no synthetic data, because underexpanded jets are hard to emulate). Error is eq. 13, taking the maximum over the domain.
  - Sample size: error < 1% for ≥ 3000 snapshots (≈ 8% at 1000, ≈ 2% at 2000, read from Fig. 16a), within the order-of-magnitude estimate 1 + 2δ/L_i of Glauser & George (1992).
  - Noise: Gaussian noise added to the "raw data", SNR 1000 → 50; error < 1% for SNR > 500, rising steeply below about 300 (Fig. 16b).
  - Resolution: downsampling the vector field to 95–50% gives errors 0.17, 0.33, 1.42, 6.46, 14.5 and 25.8%; Δx/L_i averaged over 3 < x/D < 9 rises from 0.075 to 0.280. Error exceeds 1% once Δx/L_i > 0.1, matching the Tinney et al. (2008) / Tinney (2009) criterion for convergence of higher POD eigenvalues (Δx/L < 0.3 for the 1st, < 0.1 for the 18th) (Table 4, p. 2332).
- **Shocks in the POD** (p. 2324–2325): POD of the fluctuations with the jet core masked gave the same modes and energy spectrum as the full domain, so the shocks were smoothed enough by the interrogation window and no shock-capturing treatment (Hall et al. 2000) was needed.

## Setup / method
- **Facility** (§III, Fig. 3, p. 2324): LTRAC Supersonic Jet Facility, Monash University; a Shock Lab group facility (the paper does not name the lab space). Compressed air at about 288 K into a mixing chamber where jet and free stream are seeded (Vicount 1300 smoke generator), then a plenum with honeycomb and screens. NPR held within 1% by a Fairchild 100 High Flow regulator; plenum pressure from an RS-461 transducer, ±0.25% over 0–10 bar. Facility, PIV system and PIV-in-supersonic-flow issues are described in refs 18, 19, 40, 41.
- **Nozzle** (p. 2324): purely converging axisymmetric, D = 15 mm, lip thickness 5 mm, sonic exit, U_e = 310 m/s (all velocities are normalised by U_e).
- **Acoustics** (p. 2324): one G.R.A.S. 46BE 1/4" microphone (40BE capsule, 26CB preamplifier, 20 Hz–80 kHz), NI DAQ at 250 kHz. Its position, record length and spectra are not given; it only supplies f_s.
- **Conditions** (Table 2, p. 2325):

  | | M_j 1.25 | M_j 1.45 | M_j 1.59 |
  |---|---|---|---|
  | NPR | 2.6 | 3.4 | 4.2 |
  | Re_j (×10⁵) | 5.54 | 7.10 | 8.60 |
  | Sr | 0.31 | 0.26 | 0.22 |
  | f_s (kHz) | 8.68 | 8.03 | 7.23 |
  | λ_A/D | 2.61 | 2.81 | 3.13 |
  | s/D (measured, average) | 1.10 | 1.25 | 1.59 |
  | (s/D)_Prandtl | 0.98 | 1.37 | 1.61 |
  | (s/D)_HBF | 0.96 | 1.34 | 1.58 |
  | Screech mode | B (precessing flapping) | C (helical) | C (helical) |

  λ_A is not defined in the text; it equals a∞/(f_s D) with a∞ ≈ 340 m/s (my check: 2.61, 2.82, 3.14), so it is the acoustic wavelength. Measured s comes from the axial positions of the shock reflection points; spacing varies along the jet and the averaging range is not stated (p. 2324).
- **PIV** (§III.B, Table 1, p. 2324–2325): planar two-component, **not time-resolved**. Two PCO 4000 cameras (4008 × 2672 px) side by side, 105 mm Micro Nikkor at f/5.6, 23 µm/px, combined FOV 150 × 35 mm = 10D × 2.2D; camera fields stitched by convolution with an adaptive Gaussian window (Agüí & Jiménez 1987) over a 7.5% overlap. NewWave Solo Nd:YAG, 532 nm, 1.5 mm sheet (0.1D), Δt = 480 ns, depth of field 2.4 mm. Oil seeding, mean diameter 600 nm, diffraction-limited image 1.2 px, relaxation time τ_p ≈ 2.0 µs (method of Mitchell et al. 2011). Multigrid cross-correlation (Soria 1996), IW 64 → 16 px (0.10D → 0.025D), 50% overlap, 8 px grid (0.013D), 182 × 1000 vectors. Resolvable velocity 6–830 m/s (0.02–2.6U_e); minimum displacement 0.1 ± 0.06 px (95%). Outliers by dynamic mean value operator, replaced by neighbour interpolation. 8500 fields per case (p. 2324). Acquisition rate not stated.
- **Shear-layer geometry** (p. 2325): the shear-layer centre is where |u′| and |v′| peak (green dashed lines in Figs 4, 9); inner and outer edges y_i, y_o are where that magnitude has fallen to 0.1 × (max − min) (white lines).
- **The decomposition, step by step** (Fig. 1, eqs. 5–11, p. 2323–2325):
  1. Reynolds decomposition of each snapshot: u′ = U − Ū.
  2. Snapshot POD of the screech-containing fluctuations (eqs. 6–9). The paper's eq. 8 stacks u′ and v′ at all l × m points; §IV.A.2 says only the **radial velocity** was used because it separates the modes more clearly in energy (p. 2325). All 8500 fields are used, giving 8500 modes.
  3. Choose N_M: compute premultiplied spatial spectra kE(k)D/U_e of u′ and of u″ (for several trial N_M) along single axial lines at fixed y, average, and pick the smallest N_M whose u″ spectrum loses the sharp screech peak and is otherwise unchanged (Fig. 2 schematic; eq. 11). Windowed-Fourier spatial spectrograms showed the peak strength varies slightly with x but its wavelength does not, so only axially averaged spectra are shown (p. 2325). Window, averaging and normalisation details are not given.
  4. Reconstruct u^c(x, t_k) from modes 1…N_M **snapshot by snapshot** (eq. 10).
  5. u″ = u′ − u^c (eq. 5). Any coherent motion outside the N_M modes is assumed "random" and counted as broadband (p. 2323).
  6. Integral length scales of u′ and u″ from the normalised two-point spatial correlation at τ = 0 (eqs. 2–3), streamwise (1) and transverse (2) separations, for u and v. Upper limit Λ = first drop below 0.1; the first zero crossing gave "negligible differences" (p. 2322, 2328–2329).
  7. Normalise by the incompressible momentum thickness δθ (eq. 12) between y_i and y_o, because density is unknown (p. 2330).
- **What the decomposition needs from the data** (my summary of the above): independent snapshots only. No tone frequency, phase or time resolution is used, because u^c is a projection of each snapshot onto the leading POD subspace. The integral **time** scale (eq. 4) is defined but cannot be computed from this PIV and is not reported. The filter relies on the screech motion being captured by a few energetic, spatially periodic modes in the measurement plane, which holds for the helical mode and fails for the precessing flapping mode. Snapshot needs from the convergence study: ≥ 3000 fields, SNR > 500, Δx/L < 0.1.
- **Modelling and simulation side:** none is run. The "reduced-order model" is the truncated POD reconstruction, not a Galerkin or dynamical model (eq. 10). Lighthill's analogy is invoked only to motivate why velocity correlations matter: for cold, high-Re jets T_ij ≈ ρu′_iu′_j, the entropy and viscous terms being negligible (Freund 2003; Colonius & Freund 2000) (eq. 1, p. 2322). The length scales are aimed at aeroacoustic prediction schemes such as the BBSAN length/time-scale model of Kalyan & Karabasov (AIAA 2016-2802, presented alongside this paper) (refs 10–11, p. 2322). No acoustic prediction, stability analysis or LES comparison is made.

## Key equations
Checked against rendered pages 2322–2323, 2330, 2332.

- **Lighthill stress** (eq. 1, p. 2322): $T_{ij}=\rho u_i'u_j'+(p-\rho a_\infty^2)\delta_{ij}-\sigma_{ij}\approx\rho u_i'u_j'$ for cold, high-Re jets.
- **Correlation and integral scales** (eqs. 2–4, p. 2322):
  $$R_{ij}(\mathbf x,\boldsymbol\xi,\tau)=\frac{\langle u_i'(\mathbf x,t)\,u_j'(\mathbf x+\boldsymbol\xi,t+\tau)\rangle}{\sqrt{\langle u_i'(\mathbf x,t)^2\rangle\langle u_j'(\mathbf x+\boldsymbol\xi,t+\tau)^2\rangle}},\qquad L_{ii}^{(k)}(\mathbf x,\xi,\tau=0)=\int_0^{\Lambda}R_{ii}(\mathbf x,\xi_k,\tau=0)\,\mathrm d\xi_k,$$
  $$T_{ii}(\mathbf x,\xi=0,\tau)=\int_0^{\Lambda}R_{ii}(\mathbf x,\xi=0,\tau)\,\mathrm d\tau .$$
  The integral is one-sided (ξ_k from 0 to Λ); whether the +ξ and −ξ sides are averaged is not stated.
- **Triple decomposition** (eq. 5, p. 2323): $\mathbf U(\mathbf x,t)=\bar{\mathbf U}(\mathbf x)+\mathbf u''(\mathbf x,t)+\mathbf u^c(\mathbf x,t)$.
- **Snapshot POD** (eqs. 6–9, p. 2323): $\mathbf R\,\mathbf e_i=\lambda_i\mathbf e_i$, $\mathbf R=\mathbf U^{T}\mathbf U$, with $\mathbf U=[\mathbf u'^1\,\mathbf u'^2\cdots\mathbf u'^N]$ whose columns stack $u'_{11}\dots u'_{lm}$ then $v'_{11}\dots v'_{lm}$; $|\lambda_1|>|\lambda_2|>\dots>|\lambda_N|>0$; modes $\boldsymbol\psi_i(\mathbf x)=\sum_{k=1}^{N}e_i(t_k)\,\mathbf u'(\mathbf x,t_k)$ (the printed summation index is *i*, a typo for *k*).
- **Screeching part** (eq. 10, p. 2323): $\mathbf u^c(\mathbf x,t_k)=\sum_{i=1}^{N_M}e_i(t_k)\,\boldsymbol\psi_i(\mathbf x)+\mathbf u_{\mathrm{res}}(\mathbf x,t)$, "where the residual is minimized". Check (mine): with unit eigenvectors, $\mathbf U=\sum_i(\mathbf U\mathbf e_i)\mathbf e_i^T$, so eqs. 9–10 reconstruct exactly with unnormalised ψ_i and are consistent. Fig. 1 writes the same steps with normalised modes $\boldsymbol\phi^i=\sum_n a_n^i\mathbf u'^{(n)}/\lVert\sum_n a^i\mathbf u'^{(n)}\rVert$ and $u^c=\sum_{i=1}^{M}a^i(t_k)\boldsymbol\Psi^i$, then $u''=u'-u^c$.
- **Spatial spectrum** (eq. 11, p. 2323): $E(k)=|\mathcal F[u_i(x)]\,\mathcal F[u_j(x)]|$, along x at fixed y; plotted premultiplied and normalised, $kED/U_e$ against $\lambda_x/D$.
- **Incompressible momentum thickness** (eq. 12, p. 2330):
  $$\delta_\theta=\frac{1}{[\bar u_1(y_i)-\bar u_1(y_o)]^2}\int_{y_i}^{y_o}[\bar u_1(y)-\bar u_1(y_o)][\bar u_1(y_i)-\bar u_1(y)]\,\mathrm dy$$
  (the prefactor is printed with $y_0$, read as $y_o$).
- **Convergence error** (eq. 13, p. 2332): $\sigma=1.96\sqrt{\sum_{i=1}^{N}(L_i-L_\mu)^2/N}$, with L_i the length scale at a point, L_μ the full-sample value and N "the sample size"; the maximum over the domain is reported.

> To verify against the PDF: in eq. 13 the sum over i = 1…N with N = "sample size" reads oddly for a pointwise error; it may be a sum over points or over repeated sub-samples (p. 2332).

## Data tables
**Length-scale ratios along the shear-layer centre, mean over 6 ≤ x/D ≤ 9** (Table 3, p. 2331):

| Ratio | Total 1.25 | Total 1.45 | Total 1.59 | Broadband 1.25 | Broadband 1.45 | Broadband 1.59 | Fleury et al. | André et al. |
|---|---|---|---|---|---|---|---|---|
| L⁽¹⁾_uu/δθ | 3.60 | 2.52 | 2.40 | 2.06 | 2.10 | 2.08 | 2.00 | 1.76–2.15 |
| L⁽¹⁾_vv/δθ | 2.51 | 1.47 | 1.31 | 1.04 | 1.01 | 1.05 | 1.00 | 0.56–0.67 |
| L⁽²⁾_uu/δθ | 2.33 | 1.41 | 1.29 | 1.08 | 1.05 | 1.07 | 1.00 | 0.83–1.03 |
| L⁽²⁾_vv/δθ | 0.67 | 0.46 | 0.45 | 0.26 | 0.23 | 0.24 | — | — |

Fleury et al. (2008): subsonic M 0.6 and 0.9 jets; André et al. (2014): M_j 1.10–1.50 with screech removed by nozzle notches. Values for the earlier studies are "approximate" reproductions (Table 3 footnote). Fleury found D, not δθ, to be the right scale for L⁽²⁾_vv, and André excluded it (p. 2331).

> Check against the PDF (my consistency check, figure readings ±20%): Fig. 13 (l–n) shows broadband L⁽²⁾_vv/D ≈ 0.055–0.09, comparable to L⁽²⁾_uu/D ≈ 0.065–0.10, yet Table 3 and Fig. 15b put L⁽²⁾_vv/δθ about four times below L⁽²⁾_uu/δθ (0.24 against 1.07). With δθ ≈ 0.07D implied by L⁽¹⁾_uu, Fig. 13 would give L⁽²⁾_vv/δθ ≈ 0.8–1.0. One of the two presentations is inconsistent; do not quote 0.24 without checking.

**Convergence with vector resolution, M_j 1.25, N_M = 18** (Table 4, p. 2332):

| Sample rate (%) | Mesh | σ_mesh (%) | Δx/L_i (3 < x/D < 9) |
|---|---|---|---|
| 100 | 181 × 1000 | 0.00 | 0.075 |
| 95 | 173 × 950 | 0.17 | 0.079 |
| 90 | 164 × 900 | 0.33 | 0.087 |
| 80 | 146 × 800 | 1.42 | 0.110 |
| 70 | 127 × 700 | 6.46 | 0.140 |
| 60 | 109 × 600 | 14.5 | 0.190 |
| 50 | 91 × 500 | 25.8 | 0.280 |

**Fluctuating-energy content** (text and Figs 5, 10; figure values read):

| Case | Mode | Modes 1+2 | N_M used | Energy in N_M modes | Screech peak λ_x/D |
|---|---|---|---|---|---|
| M_j 1.25 | B | "< 10%" (≈ 12% from Fig. 10) | 18 | 38% | 0.5 |
| M_j 1.45 | C | ≈ 30% (15.5 + 13.8) | 2 | ≈ 30% | 0.7 |
| M_j 1.59 | C | ≈ 17% (8.8 + 8.2) | 2 | ≈ 17% | 0.7 |

## Figures worth remembering
- **Fig. 1 (p. 2323):** flowchart of the method (Reynolds decomposition → POD → choose N_M → reconstruct u^c → u″ = u′ − u^c). The one-page recipe.
- **Fig. 2 (p. 2324):** schematic of an "ideally filtered" premultiplied spectrum: the sharp coherent peak shrinks as N_M grows while the broadband humps are untouched. This is the N_M selection criterion.
- **Fig. 4 (p. 2325):** mean U, V and RMS u′, v′ for M_j 1.45 (upper half) and 1.59 (lower half), with shock-cell lines and shear-layer centre and edges. Colour-bar maxima: U/U_e 1.84, |V|/U_e 0.34, u′_rms/U_e 0.23, v′_rms/U_e 0.15.
- **Fig. 5 (p. 2326):** POD energy of the first 10 modes for M_j 1.45 and 1.59: a clear pair, then a flat tail.
- **Figs 6–7 (p. 2326–2327):** premultiplied spatial spectra of u′ and u″ for N_M = 1–4 at y/D = 0 and 0.5: the screech peak at λ_x/D ≈ 0.7 disappears at N_M = 2.
- **Fig. 8 (p. 2327):** RMS of broadband (u″, v″) and screeching (u^c, v^c) fluctuations. u^c_rms forms cells along the shear layer from x/D ≈ 5 and v^c reaches the axis (helical motion); u″ keeps the smooth shear-layer growth.
- **Fig. 9 (p. 2328):** statistics of the M_j 1.25 B-mode jet (u′_rms/U_e up to 0.29).
- **Fig. 10 (p. 2328):** POD spectrum for M_j 1.25: no dominant pair.
- **Fig. 11 (p. 2329):** spectra for N_M = 2–34 at M_j 1.25: N_M = 18 removes the λ_x/D ≈ 0.5 peak but starts to eat into 0.2–0.6.
- **Figs 12–13 (p. 2329–2330):** all four length scales of u′ and u″ along the axis and the shear-layer centre for each jet, with shock-reflection lines. Axis: strong modulation at the shocks; shear layer: weak modulation, removed by the filter.
- **Figs 14–15 (p. 2331):** L/δθ for total and broadband fluctuations; the broadband curves collapse onto ≈ 2 and ≈ 1 (dotted reference lines) for x/D > 3.
- **Fig. 16 (p. 2332):** error against number of snapshots (falls below 1% by 3000) and against SNR (below 1% above 500).

## Notation
- D: nozzle diameter (15 mm); D_j, U_j, M_j: ideally expanded diameter, velocity, Mach number; U_e = 310 m/s: sonic exit velocity; NPR = p₀/p∞; Sr = f_s D_j/U_j (as printed); Re = U_j D_j/ν (as printed in the nomenclature, "Re = ρuD/μ").
- λ_A: acoustic wavelength (a∞/f_s, inferred); s: shock-cell spacing; HBF: Harper-Bourne & Fisher (1974).
- U, Ū: instantaneous and mean velocity; u′: total fluctuation; u^c: screeching (coherent) fluctuation; u″: broadband fluctuation; u, v (subscripts 1, 2): axial and transverse (radial) components.
- R: snapshot correlation matrix; e_i, λ_i: its eigenvectors and eigenvalues; ψ_i: POD modes; N: number of snapshots (8500); N_M: number of modes in u^c.
- R_ij: two-point correlation; L⁽ᵏ⁾_ii: integral length scale of component i for separation in direction k (1 streamwise, 2 transverse); T_ii: integral time scale; Λ: integration limit (correlation = 0.1).
- δθ: incompressible momentum thickness; y_i, y_o: inner and outer shear-layer edges; E(k): spatial spectrum; λ_x: streamwise wavelength.
- σ: 95% uncertainty (eq. 13); Δx/L_i: vector spacing over length scale; τ_p: particle relaxation time; Δt: PIV interframe time.

## Relevance to this project
A Shock Lab group method paper on the PIV side of the workflow in CLAUDE.md: it separates tonal (screech) from broadband velocity fluctuations in **non-time-resolved PIV** using nothing but snapshot POD, and then measures the turbulence length scales that statistical noise models need. The data are the group's 15 mm convergent-nozzle jets in the LTRAC Supersonic Jet Facility. The M_j 1.45 (NPR 3.4) case is the C-mode dataset of [edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md), and [edgington-mitchell-2021-generation-screech-tones-shock-leakage](edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) (Table 2) credits its NPR 3.4 PIV to that paper and this one. The M_j 1.59 (NPR 4.2) jet matches [edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer](edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer.md). Two later Tan et al. (2019) papers, being indexed in parallel ("Correlation analysis of high-resolution PIV data of screeching jets" and "Equivalent shock-associated noise source reconstruction of screeching underexpanded jets"), build on these data and on the broadband/tonal split; the BBSAN source of "Tan et al. 2018" cited in [wong-2021-wavepacket-modelling-bbsan](wong-2021-wavepacket-modelling-bbsan.md) (p. 27) is probably the latter.

**Reading it critically**
- **The filter is a projection in POD space, not in frequency.** POD modes mix frequencies; each POD eigenvalue integrates SPOD eigenvalues over all frequencies ([towne-2018-spod-relationship-dmd-resolvent](towne-2018-spod-relationship-dmd-resolvent.md), p. 8–9). So u^c contains whatever broadband energy projects onto the leading pair's shapes, and u″ keeps screech harmonics unless their modes are included. The authors' own spectra show both effects: N_M ≥ 3 removes non-screech energy (Figs 6–7), and the B mode loses energy at 0.2 < λ_x/D < 0.6 at N_M = 18 (Fig. 11).
- **Amplitude jitter of the tone goes into u^c.** Because u^c is rebuilt snapshot by snapshot from the actual coefficients (eq. 10), cycle-to-cycle variation of the screech amplitude (the pair-radius scatter used in edgington-mitchell-2021, p. 29) is counted as "screeching". A phase-averaged coherent part (POD-pair phase bins, as in [weightman-2019-sound-production-impinging-supersonic-jets](weightman-2019-sound-production-impinging-supersonic-jets.md), p. 102) would instead put that modulation into the broadband part. Neither choice is wrong, but they give different u″ statistics; the paper does not discuss it.
- **The N_M rule is visual**, and it depends on the modes being periodic within the 10D window. It is clean for the helical mode (an obvious pair) and fragile for the precessing flapping mode, where 18 modes is a judgement. An objective pairing test (spatial Hilbert matching or space-only HPOD; [raiola-2025-hilbert-pod](raiola-2025-hilbert-pod.md)) or symmetry-imposed POD could make the choice reproducible (my suggestion).
- **POD variable.** Eq. 8 stacks u′ and v′, but the text says only the radial velocity was used (p. 2325). If so, the axial u^c (whose spectra are plotted) must come from projecting u′ onto the v-based eigenvectors, as in the 2014 helical-mode paper. The paper does not say.
- **Wavelength axis.** The screech peak at λ_x/D ≈ 0.7 for the C-mode jets is about a third of the KH wavelength of the same NPR 3.4 dataset (≈ 2.4D, k_kh D ≈ 2.6; edgington-mitchell-2014 helical note; [edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md)) and of U_c/f_s with U_c ≈ 0.6–0.7U_j (2.1–2.4D at M_j 1.45, my arithmetic). It is also shorter than the shock spacing. The spectra also run to λ_x ≈ 40D on a 10D record. Check how λ_x was defined before quoting these wavelengths; the filtering result itself does not depend on it.
- **Sr and Re conventions** (my arithmetic, T₀ = 288 K, isentropic ideally expanded conditions): f_s D_j/U_j = 0.36, 0.31, 0.27 and Re_j = 6.4, 8.6, 10.7 × 10⁵ against the printed 0.31, 0.26, 0.22 and 5.54, 7.10, 8.60 × 10⁵. The printed Sr is reproduced to 1% by U_j = M_j a∞ (a∞ at 288 K), i.e. as if the jet were at ambient temperature. This resolves the St 0.26 vs 0.30 question for the NPR 3.4 dataset in the 2020 and 2021 notes: 0.26 is f D_j/(M_j a∞) with f_s = 8.03 kHz, while the isentropic definition gives 0.31 (0.30 in [edgington-mitchell-2014-coherent-structure-helical-screech-mode](edgington-mitchell-2014-coherent-structure-helical-screech-mode.md) and the 2021 paper).
- **Shock spacing.** The printed (s/D)_Prandtl equals 1.306√(M_j² − 1), which is Pack's L_s/D_j; in D units it would be 1.01, 1.46, 1.80 (my arithmetic). The measured average at NPR 3.4, 1.25D, is shorter than the 1.36D mean of cells 2–5 read from the same jet's reflection points and the 1.37D from k_s in the 2020 analysis (2014 helical note). The averaging range is not stated.
- **Comparisons with non-screeching jets** mix facilities, Mach numbers (subsonic Fleury), nozzles (notched André) and δθ definitions, and the André ranges are approximate. The agreement in L/δθ is good evidence that the filter does not distort the broadband turbulence relative to the shear-layer thickness, but not proof that u″ equals the turbulence of a non-screeching jet. δθ here is computed from the screeching mean flow, which the screech motion may itself have thickened; the paper gives no absolute δθ or comparison with a non-screeching mean flow.
- **No time scales.** Statistical source models (Lighthill/Tam-type fine-scale, BBSAN models such as Kalyan & Karabasov) need integral time scales and convection speeds as well as lengths. Non-TR PIV cannot give them; the later Tan et al. correlation paper and time-resolved data are needed.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Non-time-resolved PIV:** this is the "tonal removal" tool for PIV. It needs only independent snapshots (≥ 3000 for 1% length scales; 8500 used), SNR > 500 and Δx/L < 0.1, a field long enough to see the screech peak in single-snapshot spatial spectra, and a resonance that projects onto a few in-plane modes. No tone frequency or phase is used. It complements the POD-pair phase reconstruction (Oberleithner 2011, [oberleithner-2011-swirling-jet-vortex-breakdown-stability](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md)): same POD, but the pair is subtracted rather than phase-averaged. The convergence numbers sit alongside the group's other snapshot budgets (≈ 500–1000 for the leading pair; Weightman 2019, p. 56–57): length scales of the *residual* need several times more.
- **Time-resolved schlieren, TR-PIV, LES:** the frequency-resolved version is SPOD. Remove the leading SPOD mode(s) at f_s and its harmonics and keep the rest ([nekkanti-2021-spod-reconstruction-denoising-frequency-time](nekkanti-2021-spod-reconstruction-denoising-frequency-time.md) gives the reconstruction machinery). Unlike this POD filter, that would spare broadband energy at other frequencies with the same spatial shape, and it gives time scales and convection velocities too.
- **SPOD → reconstruction → Hilbert POD:** for jets near staging, where the tone is intermittent or switches (A1/A2), a fixed POD or SPOD subtraction assumes a stationary tone. The pipeline would instead give an instantaneous tonal field: reconstruct the tone band from SPOD, run HPOD for its instantaneous amplitude and phase, and subtract that time-varying u^c to get a broadband residual whose statistics can be conditioned on the tonal state (suggestion, not tested anywhere in the library). The amplitude-jitter point above decides whether amplitude modulation is treated as tonal or broadband.
- **Density:** δθ is incompressible because density was unknown. BOS mean density ([tan-2015-bos-density-axisymmetric-jets](tan-2015-bos-density-axisymmetric-jets.md), same first author) or the ideal-gas reconstruction used in [wong-2021-wavepacket-modelling-bbsan](wong-2021-wavepacket-modelling-bbsan.md) (p. 11) would allow a compressible momentum thickness.

**Modelling side, PyFR LES and rocket noise**
- **Noise models:** the result that screech-free length scales follow L⁽¹⁾_uu ≈ 2δθ and L⁽¹⁾_vv ≈ L⁽²⁾_uu ≈ δθ supports feeding non-screeching length-scale models (or RANS-derived scales) into broadband and BBSAN source models of lab screeching jets, provided δθ is taken from the screeching mean flow. It bears on the "screech-driven broadband amplification" question on the jet-noise topic page ([tam-1996-two-components-turbulent-mixing-noise-supersonic-jets](tam-1996-two-components-turbulent-mixing-noise-supersonic-jets.md), p. 8): the broadband turbulence relative to δθ looks unchanged here, which suggests (my inference) that screech acts on broadband noise mainly through faster shear-layer growth. Tab-based screech removal ([norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets](norum-1982-mean-static-pressure-far-field-acoustics-shock-containing-jets.md)) cannot test this, because it changes the flow.
- **PyFR staging LES** (`Simulations/PyFR_Staging_Continuation/`, A1/A2 near NPR 2.1–2.25): the LES can compute the same L⁽ᵏ⁾_ii/δθ with and without the leading SPOD modes, plus the time scales this PIV cannot give. That would test (a) whether POD-subspace and SPOD-frequency filtering give the same broadband scales, and (b) whether the ≈ 2.1/1.0/1.0 ratios hold for the weaker, axisymmetric A modes, which this paper does not cover (B and C only).
- **Rocket noise:** full-scale jets do not screech ([lubert-2022-supersonic-jet-noise-launch-vehicles-review](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md), p. 9), so the broadband statistics of lab jets are the transferable part. This method removes the lab-only tonal contamination before length scales are compared with full-scale or heated-jet source models.

**Items to verify against the PDF**
1. L⁽²⁾_vv/δθ ≈ 0.24 (Table 3, Fig. 15b) against Fig. 13 (l–n), which implies ≈ 0.8–1.0 (see Data tables note).
2. POD on v′ only (p. 2325) against eq. 8 stacking u′ and v′; how the axial u^c was formed.
3. Screech-peak wavelength λ_x/D ≈ 0.7 (C) and 0.5 (B) against the expected KH wavelength ≈ 2–2.4D; the spectra extend to λ_x ≈ 40D on a 10D record (Figs 6, 7, 11).
4. Sr and Re conventions (printed f_s D_j/U_j; values match U_j = M_j a∞), and the measured s/D = 1.25 at NPR 3.4 against 1.36–1.37D from the 2014 and 2020 analyses of the same jet.
5. Text says modes 1 + 2 hold "less than 10%" at M_j 1.25; Fig. 10 bars read ≈ 6% + 5.8% (p. 2328).
6. Typos: the B-mode jet is twice called "precessing flapping (C)" (p. 2328), and the conclusion swaps the mode counts ("B and C … captured by 2 and 18", p. 2333; the results give 18 for B and 2 for C). Fig. 12–13 captions label panels a, d, g, h instead of a, d, g, l. "André et al. [46]" on p. 2331 should be [21].
7. Table 1 gives 182 × 1000 vectors and Table 4 181 × 1000. 1000 vectors over 10D implies ≈ 0.010D spacing against the stated 0.013D (8 px at 23 µm/px is 0.012D). The maximum resolvable velocity, 25% of 64 px at 23 µm/px over 480 ns, is ≈ 770 m/s rather than 830 m/s (my arithmetic).
8. Eq. 13: what N and the sum run over (p. 2332); SNR test adds Gaussian noise to the "raw data" (images or vectors not stated).
9. Microphone position and the source of f_s are not stated (p. 2324).
