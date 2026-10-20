---
key: "mcinerny-2005-high-intensity-rocket-noise-nonlinear-propagation"
title: "High-intensity rocket noise: Nonlinear propagation, atmospheric absorption, and characterization"
authors: ["McInerny, Sally Anne", "Ölçmen, Semih M."]
year: 2005
type: "article"
venue: "JASA 117(2), 578–591"
bib: {"journal": "Journal of the Acoustical Society of America", "volume": "117", "number": "2", "pages": "578--591"}
doi: "10.1121/1.1841711"
arxiv: ""
pdf: "rocket-noise-measurements/McInerny-Olcmen_2005_High-Intensity-Rocket-Noise-Nonlinear-Propagation-Atmospheric-Absorption-And.pdf"
version: "published"
unverified: []
group: false
facility: "Launch-site far-field stations (B&K 2230 sound-level meters on the ground, DAT at 48 kHz), late 1980s–early 1990s"
data: ["full-scale", "microphones-far", "synthetic"]
methods: ["statistics", "PSD", "conditional-sampling", "bispectrum", "propagation-model"]
flow: ["rocket-plume", "launch-vehicle", "supersonic", "heated"]
phenomena: ["nonlinear-propagation", "atmospheric-propagation", "installation-effects"]
params: {"vehicle": "Titan IV; Scout", "W_m": "1.5×10¹⁰ W (Titan IV); 6.4×10⁸ W (Scout)", "L_W": "199 dB (Titan IV); 184 dB (Scout), from assumed η 0.53%, 0.4%", "f_peak": "16 Hz (Titan IV); 60 Hz (Scout)", "R": "0.95–15.2 km (Titan IV); 0.42–1.41 km (Scout)", "U_e": "> 2400 m/s (U_e/c₀ ≈ 7)", "f_sample": "48 kHz", "mic height": "0.37 m"}
topics: ["rocket-noise-measurements", "rocket-noise-models"]
related: ["gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft", "gee-2012-reusable-srm-noise-spectral-statistical", "reichman-2018-qm2-srm-far-field-acoustics", "mathews-2021-falcon-9-far-field-noise", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "kenny-2009-space-shuttle-srm-plume-acoustics", "james-2012-directivity-curves-rocket-noise-model", "kellison-2026-falcon-9-noise-two-campaigns", "kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions", "schmidt-2020-bispectral-mode-decomposition"]
cites: []
summary: "Titan IV and Scout launches, 0.4–15 km: rise rate ∝ Δp² weak-shock law above a transition Δp, f⁻² PSDs, Morfey Q/S energy into HF; 20 kHz bandwidth too low"
---
# High-intensity rocket noise: Nonlinear propagation, atmospheric absorption, and characterization

- **Authors:** Sally Anne McInerny and Semih M. Ölçmen, Department of Aerospace Engineering and Mechanics, The University of Alabama, Tuscaloosa (p. 578). Not Shock Lab group work.
- **Source:** J. Acoust. Soc. Am. 117(2), 578–591, February 2005, doi:10.1121/1.1841711. Received 24 Aug 2004, revised 1 Nov 2004, accepted 6 Nov 2004 (p. 578). Supported by Wyle Laboratories (part of a SERDP project) and the National Center for Physical Acoustics; written during McInerny's sabbatical at ISVR Southampton, with guidance from C. L. Morfey and input from V. Sparrow (p. 590).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-measurements/McInerny-Olcmen_2005_High-Intensity-Rocket-Noise-Nonlinear-Propagation-Atmospheric-Absorption-And.pdf` (index key `rocket-noise-measurements/McInerny-Olcmen_2005_High-Intensity-Rocket-Noise-Nonlinear-Propagation-Atmospheric-Absorption-And.pdf`, 15 pp., publisher's version). PDF p. 1 is an AIP cover sheet. **Page refs below are journal pages; PDF page = journal page − 576.** The text layer garbles every equation and Table III; eqs. 1–10 and Tables I–III were rebuilt from rendered pages (300 dpi for eqs. 8–10).
- **Tags:** rocket noise, launch vehicle, Titan IV, Scout, far-field acoustics, acoustic shocks, weak-shock theory, shock rise time, shock thickness, diffusivity, molecular relaxation (O₂, N₂), atmospheric absorption, humidity, pressure rise vs rise rate, sawtooth / N-wave spectrum, f⁻² slope, Morfey–Howell Q/S, generalized Burgers equation, ground reflection, instrument bandwidth, shaped Gaussian noise surrogate

## Summary
McInerny and Ölçmen reanalyse far-field recordings from a Titan IV launch (five stations, 0.95–15.2 km from the source) and a Scout launch (four stations, 0.42–1.41 km), first made around 1990 for wildlife-impact studies, in the light of weak-shock theory (p. 578–579). They pick out every rising segment of the waveform and plot its maximum rise rate against its total pressure rise Δp. Small rises follow the trend of Gaussian noise with the same spectrum, and larger rises follow the dp/dt ∝ Δp² law of a steady weak shock (Pierce). The fitted offsets give diffusivities of 1.24 × 10⁻³ and 1.49 × 10⁻² m² s⁻¹, inside the range expected for air with O₂ and N₂ relaxation (p. 584–586). The nearest-site spectra keep the f² / f⁻² slopes of sawtooth or N waves, and after spherical-spreading correction the 0–20 kHz spectra at the three nearest sites are almost unchanged. The authors read this as the instrument bandwidth (about 20 kHz) hiding the absorption at the shocks, not as an absence of absorption (p. 586–587). The Morfey–Howell indicator Q/S shows a small energy loss near the spectral peak and growing energy transfer into frequencies above 1–2 kHz, until absorption takes over at the far sites (p. 587–589). The paper concludes that propagation models must carry shocks to predict high-frequency levels against distance. Their initial thickness must be measured with bandwidth well above 20 kHz, and without ground reflections (p. 589–590). No propagation calculation is run.

## Key findings
- **Shocks at every site** (p. 578, 580–582). A "shock" here is any rise from a pressure minimum to a maximum in less than 1/10 of the mean period of the waveform (p. 578).
  - Titan IV site A (≈ 950 m): dp/dt peaks of order 10⁷ Pa s⁻¹ over the 3 dB-down period. Site E (≈ 15 km): about 3 × 10⁴ Pa s⁻¹ with ±20–30 Pa pressures, still positively skewed (Fig. 2, p. 580; values read from the figure).
  - The pressure is skewed much less than dp/dt. The pressure skewness of the 16 Hz Titan data may have been reduced by the low-frequency roll-off of the instruments (p. 581).
  - **Rise times:** the steepest site-A shocks rise in about 1/20 ms (1/t_rise ≈ 20 kHz), which is the instrument limit (Fig. 6, p. 582–583). At site E the shortest rise time is 2–3 ms, with rounded starts and ends of the shocks (Fig. 5, p. 582).
  - Ground-reflected shocks follow each strong shock (1.5 ms is a typical delay at peak radiation). They could not be removed without also removing true shocks, so one waveform can count as two shocks (p. 580–582).
- **Rise rate against pressure rise** (Figs. 7–9, p. 584–586):
  - The Δp ≥ 0.3% of the site maximum pairs fall on a shallow random-noise trend at small Δp and turn onto a Δp² line at larger Δp. Shaped Gaussian noise with the same PSD and the same 1.5 ms reflection never follows the Δp² law (Fig. 8, p. 585–586).
  - **Two Δp² lines.** Line 1 ("longer rise-time shock fit") is a visual fit to the site E data. Line 2 ("shorter rise-time shock fit") is a visual fit to site C. Line 2 has lower diffusivity, meant for shocks with 1/t_rise > f_N₂. The lines are offset by a factor of 12 (p. 584–585).
  - Titan IV sites:
    - Site E (15.2 km): random trend, then line 1 for the larger rises.
    - Sites D (6.69 km) and C (3.94 km): the largest rises move from line 1 towards line 2.
    - Sites B (2.3 km) and A (0.95 km): capped by the instrument/sampling line dp/dt = 25 000 Δp (p. 584–585).
  - Scout: line 2 was fitted to site B (740 m) and line 1 placed 12× below it, because no Scout site was far enough away to fit it. Site A (400 m) shows the bandwidth limit (p. 586).
  - **Fitted diffusivities** (eq. 6, p. 586): Titan IV line 2 δ ≈ 1.24 × 10⁻³ m² s⁻¹ and line 1 δ ≈ 1.49 × 10⁻² m² s⁻¹; Scout line 2 δ ≈ 1.33 × 10⁻³ m² s⁻¹. No temperature or humidity was recorded, so Table III brackets the values expected (p. 586).
  - **Interpretation** (p. 586): rocket noise is "a distribution of weak shocks" plus small-rise random noise. With distance the shocks matter less and the noise tends towards random noise under linear absorption, yet the 15 km Titan data still keep "vestiges of weak shock behavior".
- **Spectra** (Fig. 10, p. 586–587):
  - At the closest sites the low- and high-frequency slopes are very close to f² and f⁻², as expected for sawtooth waves and measured for N waves. Titan IV site A is slightly steeper at high frequency, perhaps from instrument roll-off.
  - After correction for spherical spreading only, there is no further steepening beyond the nearest site within the measurement uncertainty. Absorption must have occurred between Titan sites A, B and C, but is not seen in 0–20 kHz, so the bandwidth was not enough (p. 587).
  - Titan IV site E has a second, steeper slope between about 1000 and 2000 Hz, but its 2–3 ms rise time implies 333–500 Hz. The authors leave the link between knee, slope and rise-time distribution open (p. 587).
  - Noise floors affect Scout site D and Titan IV sites D and E (p. 586).
- **Morfey–Howell Q_N/S_N** (Figs. 11–13, p. 587–589):
  - The shaped random noise surrogate shows no net transfer at any frequency. Its reflection raises Q_N/S_N, but the sign scatters (Fig. 11, p. 588).
  - **Titan IV** (Fig. 12):
    - A clear low-frequency band of energy *out* of the spectrum, peaking a little above the 16 Hz PSD peak.
    - Reflection interference between 100 and 600 Hz.
    - At sites A–C, energy *into* frequencies above 1 kHz, increasingly so with frequency. The final ramp above 15 kHz is put down to the instruments (p. 588).
    - Site D stops rising above 10 kHz and falls above about 11 kHz, where absorption first shows in its PSD. Above about 18 kHz the sign is random (noise floor), as it is at site E above about 1400 Hz (p. 588).
  - **Scout** (Fig. 13): the peak is near 60 Hz, but there is no smooth out-transfer hump, probably because of reflections. Above 2 kHz, sites A–C show increasing transfer into the spectrum. At site D the in-transfer drops rapidly above 14 kHz (p. 588).
  - The authors cannot yet answer "beyond what distance and above what frequency can linear absorption be assumed?" and call for further study of what the Q_N/S_N features mean (p. 588–589).
- **Conclusions** (p. 589–590):
  - The 5–20 kHz bandwidth was "clearly not sufficient" for the shock rise at the three nearest sites of both rockets, and ground reflections affected the results.
  - Shocks must be included in propagation models for environmental-impact high-frequency levels. Initial shock thickness has to be measured with bandwidth "well in excess of 20 kHz", and reflection-free data are needed for statistics.
  - The same may hold for high-power afterburning turbojets.

## Setup / method
- **Data sets** (p. 578–579, Tables I–II). Recorded in the late 1980s and early 1990s to monitor rocket-noise effects on endangered species near launch sites (refs. 1–3: McInerny 1996a,b, J. Aircr. 33; McInerny et al. 1997, JASA 102). The launch site, dates and trajectories are not given in this paper.
- **Instrumentation** (p. 578–579):
  - B&K 2230 sound-level meters with 4155 ½-inch prepolarised free-field microphones, standing upright on the ground with the microphone about 37 cm up, so every record contains a ground reflection. No temperature or humidity was recorded.
  - AC output recorded on TEAC DAT at 48 000 samples s⁻¹.
  - Low-frequency response: SLM −1 dB at 3.5–7 Hz and −3 dB at 2–3.5 Hz; microphone −3 dB at 1–3 Hz (from B&K data sheets).
  - High-frequency response: the 0° free-field response rolls off rapidly above 17 kHz, and the roll-off varies with incidence angle, which changes during the launch. Since PSD levels at 10 kHz are more than 60 dB below the peak, 15 kHz was considered "more than adequate" for the original purpose (p. 579). The conclusion reverses this for shock work (p. 589).
- **Analysis window** (p. 579, Fig. 1): the "3-dB down" period, in which the 1 s running OASPL (99% overlap) is within 3 dB of its maximum. It balances stationarity against random error.
  - Before it come the ignition overpressure pulse (seen only near the pad) and a low-level stretch near 90° radiation with some line-of-sight problems.
  - Once the vehicle rises, all sites have line of sight to the plume and no ground-effect (shielding) issues (p. 579).
  - Comparing sites rests on the assumption that the source and paths are statistically similar. The sites see noise radiated in the peak direction *at different times* of the ascent, not the same noise at different distances (p. 580).
  - Trajectory, turbulence, wind, temperature gradients and flight-speed changes of the source are ignored. This is justified by U_e > 2400 m/s (U_e/c₀ ≈ 7) and V_veh/c₀ < 1, except perhaps for the farthest Titan site (p. 580).
- **Source distance:** R = d/sin 60°, with d the distance from the pad and an assumed peak directivity of 60° from the exhaust axis (Table II, p. 579).
- **Shaped random noise surrogate** (p. 580). Used for Titan IV sites A and E.
  1. Gaussian white noise at the data sample rate.
  2. Fourier amplitudes shaped to the measured spectrum *without* the reflection dip.
  3. A 1.5 ms delayed copy added in the time domain.
  4. Rescaled to the measured rms.
  - It is a null hypothesis of the same PSD and the same reflection, with no phase coupling.
- **Shock extraction** (p. 580–581, eq. 7, Fig. 3). This is event-based conditional sampling on the raw waveform.
  - dp/dt by forward difference, which keeps the true difference at the start and end of a rise (central differencing would not).
  - Pressure minima and maxima from sign changes of dp/dt. For each rising segment, Δp = p_max − p_min, the rise rate is the maximum one-sample slope in the segment, and the shock time is the midpoint.
  - Pairs with Δp below 0.3% of the site maximum are dropped. Quantisation limits the smallest rises.
  - The method needs time-resolved, high-bandwidth pressure. It is limited by the 48 kHz sampling and the instrument roll-off, which set the dp/dt = 25 000 Δp ceiling (p. 584).
- **PSDs** (p. 586–587): Hanning window, 50% overlap. Resolution 2.93 Hz below 400 Hz (48 000/16 384) and 11.82 Hz above 400 Hz. At least 57 averages per spectrum (Fig. 10 caption). Shown uncorrected, and corrected for spherical spreading only to the site-A distance.
- **Q/S** (p. 588): Q(r, ω) is the imaginary part of the cross-spectrum of p² and p, shown at 4 Hz resolution up to 400 Hz and 40 Hz above. Grey circles mark Q > 0 (energy out of that frequency) and black triangles Q < 0 (energy in). It is block-averaged over the 3 dB-down period.
- **Modelling side.** No propagation model is run. The theory used:
  - **Steady weak-shock structure** (Pierce 1981; Hamilton & Blackstock 1998). Shock thickness and rise time scale as δ/Δp (eqs. 1–2). The thermoviscous-plus-relaxation diffusivity δ* changes in steps as 1/t_rise passes the N₂ and O₂ relaxation frequencies (eq. 4).
    - Assumptions: steady (Taylor) shocks that keep their shape; an ideal gas with β = 1.2; no dispersion. The authors note that in Bass et al. (2002) relaxation dispersion mattered only in the transition between the two diffusivity regimes (p. 583).
    - Turbulence lengthens sonic-boom rise times and lowers pressure rises on average, and weakens nonlinear distortion (refs. 14–17, p. 582–583), but it is not modelled.
  - **Spectra of shocked noise:**
    - Gurbatov et al.: initially Gaussian noise beyond the shock-formation distance tends to f² at low and f⁻² at high frequency in a lossless medium. With loss the high end falls as exp(−ωt_r), or as ω⁻⁴ (12 dB/octave) with weak attenuation and dispersion (p. 586).
    - Kang & Pierce: f⁻² holds up to f ≈ 1/t_rise of a steady relaxing shock, then −12 dB/octave (p. 586).
  - **Morfey–Howell spectral transport** (eq. 8; refs. 4–6). It is derived from the generalized Burgers equation with frequency-dependent absorption and spherical spreading. The nonlinear term is the p²–p cross-spectrum. Normalising with p_rms ≈ p₀r₀/r gives an r-independent bracket for r ≪ 1/2α (eq. 10). This assumes absorption does not change p_rms, which holds because the peak frequencies are below 100 Hz (p. 588).
  - **Match with the data:**
    - The Δp² slope and the fitted δ magnitudes agree with the theory.
    - Spectral slopes agree with sawtooth / N-wave theory.
    - The site-E knee (1–2 kHz) does not match 1/t_rise (333–500 Hz) (p. 587).
    - Q/S gives the expected sign pattern, but the authors cannot interpret its magnitudes (p. 588–589).

## Key equations
Rebuilt from the rendered pages; page refs are journal pages.

- **Steady weak-shock thickness** (eq. 1, p. 582): $L_{sh}=\dfrac{4\rho_0c_0\delta}{\beta P_{sh}}$, with β = (1 + γ)/2 = 1.2 in air.
- **Rise time** (eq. 2, p. 582), taking $L_{sh}=t_{rise}c_0$: $t_{rise}=\dfrac{4\rho_0\delta}{\beta P_{sh}}$.
- **Absorption from diffusivity** (eq. 3, p. 582): $\alpha\approx\dfrac{\delta\omega^2}{2c_0^3}$, valid for $\alpha\ll\omega/c_0$. In air, c₀ and δ are replaced by effective values c* and δ*. Attenuation in dB m⁻¹ is $10\log_{10}e^{-2\alpha}$, i.e. α is the amplitude coefficient (p. 583).
- **Effective diffusivity of air at standard conditions** (eqs. 4a–c, p. 583; f in Hz, constants 6.4 and 1.2 in m²):
  - $\delta_*=1.9\times10^{-6}+\dfrac{6.4}{f_{O_2}}+\dfrac{1.2}{f_{N_2}}$ m² s⁻¹ for $f<f_{N_2}$ ($t_{rise}>1/f_{N_2}$) (4a)
  - $\delta_*=1.9\times10^{-6}+\dfrac{6.4}{f_{O_2}}$ m² s⁻¹ for $f_{N_2}<f<f_{O_2}$ ($1/f_{N_2}>t_{rise}>1/f_{O_2}$) (4b)
  - $\delta_*=1.9\times10^{-6}$ m² s⁻¹ for $f>f_{O_2}$ ($t_{rise}<1/f_{O_2}$) (4c)
- **Rise rate against pressure rise** (eqs. 5–6, p. 583), with $P_{sh}=\Delta p$ and $dp/dt\sim\Delta p/t_{rise}$: $\dfrac{dp}{dt}\sim\dfrac{\beta}{4\rho_0\delta}\Delta p^2$, i.e. $\log_{10}\dfrac{dp}{dt}\sim\log_{10}\dfrac{\beta}{4\rho_0\delta}+\log_{10}\Delta p^2$. A slope-2 line on log–log axes whose offset rises in steps as δ* falls from 4a to 4b to 4c.
- **Discrete estimators** (eq. 7, p. 584): $\Delta p=p_{max}-p_{min}=p(j)-p(i)$; $\left.dp/dt\right|_{max}=\max_{k=i,\dots,j-1}[(p(k+1)-p(k))f_{sample}]$. Instrument/sampling ceiling drawn as $dp/dt=25\,000\,\Delta p$ (p. 584).
- **Morfey–Howell spectral equation** (eq. 8, p. 587): $\dfrac12\dfrac{\partial}{\partial r}S(r,\omega)=-\left(\dfrac1r+\dfrac{\delta\omega^2}{c_0^3}\right)S(r,\omega)-\dfrac{\beta}{2\rho_0c_0^3}Q(r,\omega)$, with $Q(r,\omega)=\mathrm{Im}\{FT(p^2)\cdot[FT(p)]^*\}$. Q > 0 means energy leaves frequency ω.
- **Relative importance of nonlinearity** (eq. 9, p. 587): $\dfrac{r}{1+r\delta\omega^2/c_0^3}\,\dfrac{\beta}{2\rho_0c_0^3}\,\dfrac{Q(r,\omega)}{S(r,\omega)}$.
- **Normalised form** (eq. 10, p. 588), with $Q=p_{rms}^3Q_N$, $S=p_{rms}^2S_N$ and $p_{rms}\approx p_0r_0/r$: $\dfrac{p_0r_0}{1+2\alpha r}\,\dfrac{\beta}{2\rho_0c_0^3}\left[\dfrac{Q_N(r,\omega)}{S_N(r,\omega)}\right]$. The bracket is what Figs. 11–13 plot.

> **Checks (my arithmetic and derivations, not in the paper).**
> - Table I: 0.004 × 6.4 × 10⁸ W → 10 log₁₀(2.56 × 10⁶/10⁻¹²) = 184.1 dB; 0.0053 × 1.5 × 10¹⁰ W → 199.0 dB. ✓
> - Table II: R = d/sin 60° reproduces every R (e.g. 13.15/0.866 = 15.18 km). ✓
> - Table III: every δ follows from eqs. 4a/4b (e.g. 21 °C, 30% RH: 1.9 × 10⁻⁶ + 6.4/4618 = 1.388 × 10⁻³; + 1.2/90 gives 1.472 × 10⁻², against 1.475 × 10⁻² printed), and the ratios round to the printed 11–19. ✓
> - With ρ₀ = 1.2 kg m⁻³ (not stated in the paper), β/(4ρ₀δ) is ≈ 202 Pa⁻¹ s⁻¹ for line 2 and ≈ 16.8 Pa⁻¹ s⁻¹ for line 1. These put line 2 at 10³ Pa s⁻¹ near Δp ≈ 2.2 Pa and line 1 at 10⁴ Pa s⁻¹ near Δp ≈ 25 Pa, as drawn in Figs. 7–8.
> - Line 1 gives t_rise ≈ 0.060/Δp s, i.e. 3.0–1.3 ms for Δp = 20–45 Pa, matching the 2–3 ms measured at site E (p. 582).
> - Line 2 meets the 25 000 Δp ceiling at Δp ≈ 124 Pa (t_rise = 40 µs).
> - 57 averages of 16 384-point, 50%-overlap blocks span ≈ 9.9 s, consistent with a 3 dB-down window of about 10 s (Fig. 2 time axes).
> - 48 000/4096 = 11.72 Hz, not the printed 11.82 Hz.
>
> **Possible slips in eq. 8 (my dimensional check; verify against Morfey & Howell 1981).**
> - Fourier-transforming the generalized Burgers equation (as written in the [Gee 2008](gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md) note) gives $\tfrac12\partial_rS=-(1/r+\alpha)S-\dfrac{\beta\omega}{2\rho_0c_0^3}Q$.
> - The printed eq. 8 lacks the factor ω on the Q term, so it is dimensionally inconsistent (β Q/(ρ₀c₀³) has an extra factor of time). The eq. 10 prefactor then has units of seconds.
> - With eq. 3, the absorption term should be δω²/(2c₀³) = α, not δω²/c₀³ = 2α, so the eq. 9–10 denominator should be 1 + αr rather than 1 + 2αr.
> - The plotted bracket Q_N/S_N is unaffected. But the physical nonlinear-to-spreading ratio carries an extra factor ω, so it grows with frequency faster than the plots suggest. At Titan IV site A (L_eq 139.9 dB, so p_rms ≈ 198 Pa, at r = 950 m), ωp₀r₀β/(2ρ₀c₀³) ≈ 0.23 at 16 Hz and ≈ 15 at 1 kHz (ρ₀ = 1.2 kg m⁻³, c₀ = 343 m s⁻¹).
>
> **The thermoviscous term** 1.9 × 10⁻⁶ m² s⁻¹ looks about an order of magnitude below the classical diffusivity of air, which is of order ν ≈ 1.5 × 10⁻⁵ m² s⁻¹ or more (my estimate). It changes Table III by at most about 10%, but it matters for eq. 4c. Check against Pierce (1981).

## Data tables
**Vehicles** (Table I, p. 579). L_W is in dB re 10⁻¹² W, computed from W_m with acoustic efficiencies from Guest (1964) of 0.004 (Scout) and 0.0053 (Titan IV). F_peak is the peak of the constant-bandwidth PSD over the 3 dB-down period.

| Vehicle | W_m | L_W | F_peak |
|---|---|---|---|
| Scout | 6.4 × 10⁸ W | 184 dB | 60 Hz |
| Titan IV | 1.5 × 10¹⁰ W | 199 dB | 16 Hz |

**Sites** (Table II, p. 579). d is the distance from the pad, R = d/sin 60° the distance from the source, and L_eq the OASPL over the 3 dB-down period in dB re 20 µPa. The last two columns are my arithmetic, using R and the site-A value of the same launch; the sites saw different emission times, so this is not a clean propagation loss.

| Site | d (km) | R (km) | L_eq (dB) | Spherical spreading from site A (dB) | Excess over spreading (dB) |
|---|---|---|---|---|---|
| Scout A | 0.36 | 0.42 | 126.4 | — | — |
| Scout B | 0.64 | 0.74 | 119.9 | 121.5 | −1.6 |
| Scout C | 0.94 | 1.09 | 116.0 | 118.1 | −2.1 |
| Scout D | 1.22 | 1.41 | 113.1 | 115.9 | −2.8 |
| Titan IV A | 0.82 | 0.95 | 139.9 | — | — |
| Titan IV B | 2.00 | 2.3 | 129.7 | 132.2 | −2.5 |
| Titan IV C | 3.41 | 3.94 | 127.0 | 127.5 | −0.5 |
| Titan IV D | 5.79 | 6.69 | 120.1 | 122.9 | −2.8 |
| Titan IV E | 13.15 | 15.2 | 110.6 | 115.8 | −5.2 |

In these figures L_eq falls about 24 dB per decade of R for Titan IV (0.95–15.2 km) and about 25 dB per decade for Scout (0.42–1.41 km), i.e. roughly r⁻¹·² (my arithmetic).

**Relaxation frequencies and diffusivities** (Table III, p. 586, for 1/t_rise < f_O₂). The column headers were rebuilt from the rendered page; the inequality signs are lost in the text layer.

| T | RH | f_N₂ (Hz) | f_O₂ (Hz) | δ (m² s⁻¹), 1/t_rise > f_N₂ (eq. 4b) | δ (m² s⁻¹), 1/t_rise < f_N₂ (eq. 4a) | Ratio |
|---|---|---|---|---|---|---|
| 21 °C | 30% | 90 | 4 618 | 1.388 × 10⁻³ | 1.475 × 10⁻² | 11 |
| 21 °C | 50% | 222 | 17 710 | 3.633 × 10⁻⁴ | 5.766 × 10⁻³ | 16 |
| 21 °C | 70% | 438 | 42 696 | 1.518 × 10⁻⁴ | 2.891 × 10⁻³ | 19 |
| 15.6 °C | 50% | 151 | 10 656 | 6.025 × 10⁻⁴ | 8.555 × 10⁻³ | 14 |
| 15.6 °C | 70% | 299 | 27 303 | 2.363 × 10⁻⁴ | 4.253 × 10⁻³ | 18 |

**Fitted diffusivities** (p. 586): Titan IV line 2 is 1.24 × 10⁻³ m² s⁻¹ and line 1 is 1.49 × 10⁻² m² s⁻¹ (ratio 12); Scout line 2 is 1.33 × 10⁻³ m² s⁻¹. Both Titan values lie closest to the 21 °C, 30% RH row, the driest condition listed, and the measured ratio of 12 sits at the dry end of the 11–19 range (my comparison).

> **Regime consistency (my check).** Line 1 matches eq. 4a (t_rise > 1/f_N₂) in magnitude only at low humidity, where f_N₂ ≈ 90 Hz, i.e. 1/f_N₂ ≈ 11 ms. Yet the line-1 rise times at site E are 1–6 ms. By the paper's own criterion those shocks belong to the eq. 4b regime. Conversely, a humidity high enough to make 1–6 ms exceed 1/f_N₂ (f_N₂ ≳ 170–1000 Hz) gives a 4a diffusivity about 2.5–5 times smaller than fitted (the Table III rows with f_N₂ ≥ 222 Hz). So the line-1 fit is not self-consistent with steady-shock theory. Non-steady (still thickening) shocks, turbulence-lengthened rise times (refs. 14–17), or the min-to-max rise-time definition could explain it. The paper does not discuss this. Line 2 at site C (Δp ≈ 10–100 Pa, t_rise ≈ 0.5–0.05 ms) also reaches t_rise < 1/f_O₂ ≈ 0.2 ms at the 30% RH condition, where eq. 4c should apply, and it runs close to the instrument ceiling.

## Figures worth remembering
- **Fig. 1 (p. 579):** Titan IV site A pressure (up to about 1000 Pa) and 1 s OASPL against time. The ignition-overpressure spike at t ≈ 2 s, then the 3 dB-down window around 10–19 s near 140 dB (read from the figure).
- **Fig. 2 (p. 580):** p and dp/dt over the 3 dB-down window at Titan IV sites A and E. The positive dp/dt spikes are the shocks.
- **Fig. 3 (p. 581):** how P_min, P_max and the maximum gradient are taken, for the steepest Titan IV site C shock (about −57 → 130 Pa in about 0.1 ms, read from the figure).
- **Figs. 4–6 (p. 581–583):** the eight steepest shocks at site A (sharp, with reflections) and at site E (rounded, 2–3 ms rises), plus an expanded view of the site-A rises of about 50 µs.
- **Fig. 7 (p. 584):** the key figure. dp/dt against Δp for all five Titan IV sites, with the random-noise trend, lines 1 and 2, and the 25 000 Δp instrument line.
- **Fig. 8 (p. 585):** Titan IV A and E against shaped Gaussian noise with the same PSD and reflection. The noise never follows Δp².
- **Fig. 9 (p. 585):** Scout sites A–D.
- **Fig. 10 (p. 587):** PSDs, raw and spreading-corrected, with f² and f⁻² guides. The near sites collapse after correction; Titan site E has a knee at 1–2 kHz.
- **Figs. 11–13 (p. 588–590):** Q_N/S_N for the surrogate (no net transfer), Titan IV (low-frequency out-transfer, high-frequency in-transfer rising to about 1–5 near 20 kHz at sites A–C, read from the figure) and Scout.

## Notation
- p: acoustic pressure; Δp = p_max − p_min, the pressure rise of a rising segment; P_sh: pressure rise across a shock; dp/dt: maximum one-sample rise rate in the segment.
- L_sh, t_rise: shock thickness and rise time; δ, δ*: diffusivity, and effective diffusivity with relaxation; α: amplitude absorption coefficient (Np m⁻¹); f_O₂, f_N₂: oxygen and nitrogen relaxation frequencies.
- β = (1 + γ)/2: coefficient of nonlinearity; ρ₀, c₀: ambient density and sound speed (c₀ at 20 °C); ω: angular frequency.
- S(r, ω): pressure PSD; Q(r, ω): imaginary part of the p²–p cross-spectrum; Q_N, S_N: their values normalised by p_rms³ and p_rms²; p₀r₀: reference amplitude–distance product.
- W_m: engine mechanical power; L_W: sound power level; F_peak: PSD peak frequency; L_eq: OASPL over the 3 dB-down period; d, R: pad and source distances; U_e: exit velocity; V_veh: vehicle speed.
- Line 1 / line 2: the longer / shorter rise-time Δp² fits.

## Relevance to this project
This paper is the rocket-noise starting point for the nonlinear-propagation thread on [rocket-noise-measurements](../topics/rocket-noise-measurements.md). It reads launch data with weak-shock theory three years before the F-22A demonstration of [Gee 2008](gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md), and it cites Sparrow, Gee et al. (2002) as the motivation (p. 578). For the user's second research area (CLAUDE.md, rocket-noise modelling), it supplies the argument and the inputs that a propagation stage of an SP-8072/SATURN-type model needs: shocks, their initial thickness, and humidity-dependent diffusivity.

**How it sits with the other notes**
- **Agrees with Gee 2008.** The f⁻² high-frequency slope persists, and linear absorption alone would strip far more high-frequency energy than is seen (p. 586–587; Gee 2008 p. 9–10).
  - Gee 2008 goes further: it runs the generalized-Burgers propagation that eq. 8 is derived from, using 96 kHz data. McInerny and Ölçmen only diagnose with 48 kHz, 20 kHz-bandwidth data.
  - The difficulty they report at 0.95–2.3 km is the instrument limit; Gee 2008's 96 kHz sampling and 6.35 mm microphones push that limit higher.
- **Formation versus old age.** [Gee 2012](gee-2012-reusable-srm-noise-spectral-statistical.md) finds Sk{∂p/∂t} growing with distance out to the 80D arc (about 300 m), i.e. steepening near the source. Here, at 0.4–15 km, shocks matter less with distance (p. 586). The two describe different ranges of the same process and do not contradict each other.
  - The dp/dt = 25 000 Δp ceiling makes concrete the sampling and bandwidth dependence of shock metrics that the Gee 2012 note warns about for Sk{∂p/∂t}.
- **Long-range shocks.** Shocks "vestigial" at 15 km here (p. 586) fit the Falcon 9 shocks seen to about 65 km ([Mathews 2021](mathews-2021-falcon-9-far-field-noise.md) p. 624) and the QM-2 Sk{∂p/∂t} of 21–32 at 2.5 km ([Reichman 2018](reichman-2018-qm2-srm-far-field-acoustics.md) p. 8).
- **Humidity.** Table III shows δ at 21 °C falling five- to ninefold from 30% to 70% RH (p. 586), so shocks are thinner and less damped in humid air. This supports the hypothesis of [Mathews & Gee 2025](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md) (p. 375) that the foggy Landsat 9 launch decayed at the weak-shock rate because humidity lowered absorption. That is my link, not a claim of either paper.
  - The Titan and Scout L_eq values fall faster, about r⁻¹·² (my arithmetic, Data tables), than the r⁻¹ to r⁻¹·¹ seen for Atlas V. But the stations here saw different emission times, at ground level with reflections, so this is not a clean propagation loss.
- **Same data as McInerny 1996.** The data sets are those of McInerny 1996a,b (refs. 1–2), whose "high sidedness" [Kenny 2009](kenny-2009-space-shuttle-srm-plume-acoustics.md) (p. 11) cites. The OASPL_max formula of [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (p. 8) also comes from McInerny 1996.
  - With this paper's L_W, that formula (OAPWL − 10 log 4πR² + 8 dB) gives about 136.4 dB at Titan IV site A against an L_eq of 139.9 dB, and 112.4 dB at site E against 110.6 dB (my arithmetic). L_W itself rests on an assumed η, so this is only indicative.
- **The open question "shocks radiated or formed?"** ([Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) p. 10) is not settled here. The nearest station is about 1 km away and the sites do not see the same noise. The paper's prescription (measure initial shock thickness near the source with more than 20 kHz bandwidth and no reflections, p. 589–590) is the measurement that would.

**Modelling side**
- The theory chain is Pierce's steady-shock thickness (eqs. 1–2), the relaxation-dependent δ* (eq. 4) and the Morfey–Howell transport equation (eq. 8). It is a ready-made reduced model for the propagation stage of a rocket-noise prediction.
  - Its key assumptions: steady shocks, a homogeneous atmosphere, spherical spreading, and no turbulence, refraction or ground. Its main weaknesses are those listed above: the regime inconsistency of line 1, the site-E knee that does not match 1/t_rise, and the probable missing ω in eq. 8.
- Later work implemented the full version: the GBE propagation in [Gee 2008](gee-2008-nonlinear-propagation-noise-high-power-jet-aircraft.md), and the empirical propagation-loss filter in SATURN ([Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md)).
- For LES/CAA rocket-noise predictions ([rocket-noise-models](../topics/rocket-noise-models.md)), this paper is a reason why linear FW-H far-field extrapolation underestimates high-frequency levels at kilometre ranges.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Everything here needs time-resolved pressure**, with bandwidth matched to the shock rise time: the forward-difference shock extraction, the dp/dt–Δp plot, the PSDs and Q/S. None of it applies to non-time-resolved data such as PIV.
- **A cheap add-on to step 1 (basic statistics) for the group's microphone data.** Scatter dp/dt against Δp next to Sk{∂p/∂t}, and include a phase-randomised surrogate with the same PSD as the null case (the paper's shaped-noise test, p. 580). This separates true shock content from Gaussian noise without any model.
  - Lab caveat (my estimate): kPa-level near-field shocks, such as the upstream waves of impinging jets in [Edgington-Mitchell 2025](edgington-mitchell-2025-vortices-shocks-nonlinear-waves-impinging-jet-resonance.md), have thermoviscous rise times far below a microsecond. Every lab microphone will therefore sit on its own "25 000 Δp" ceiling unless Δp is a few pascals.
- **Q/S is a frequency-collapsed bispectrum.** Q(ω) = Im Σ_{ω₁} P(ω₁)P(ω − ω₁)P*(ω), averaged over blocks (my restatement of the p²–p cross-spectrum), so it is the sum over all triads feeding ω. The group's bispectral tools ([Kim 1979](kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions.md), BMD in [Schmidt 2020](schmidt-2020-bispectral-mode-decomposition.md)) can resolve which triads carry the energy transfer that Q/S only sums. A microphone array with BMD would also show where in space the steepening happens.
- **Non-stationarity and intermittency.**
  - The 3 dB-down window is a block-average compromise (p. 579). The shock list, however, is time-local, with a time for each event, so running shock rates and Δp distributions against time (that is, against radiation angle) are easy to get from this method.
  - A Hilbert envelope of a high-passed signal, or wavelets, would do the same in a continuous way.
  - In the SPOD → reconstruction → HPOD pipeline, compute shock statistics on the raw signal, never on a low-rank SPOD reconstruction. Band-limited reconstruction removes the harmonics that make up a shock, so it would erase the very feature being measured.
- **Instrument design lesson for any acoustic campaign:** state and correct the microphone incidence-angle response. Microphones standing on the ground at 37 cm put a 1.5 ms reflection, with interference at 100–600 Hz, into every shock statistic (p. 580, 588). Ground-plate or tall-pole mounts avoid this.

**PyFR staging LES.** Not directly relevant: the LES is cold, and its acoustic field is near-field.

**Related works cited, candidates for `/add-paper`:** Morfey & Howell 1981 (AIAA J 19, nonlinear propagation of aircraft noise, the source of eq. 8); Morfey 1980 (RAE TR 80004) and 1984; McInerny 1996a,b (J. Aircr. 33, the same launch data); McInerny et al. 1997 (JASA 102, low-frequency instrument response); Pierce 1981 (*Acoustics*, Ch. 10, steady shocks and relaxation); Hamilton & Blackstock 1998 (*Nonlinear Acoustics*, Gurbatov chapter on noise); Kang & Pierce 1992 (spectra of weak relaxing shocks); Lipkens & Blackstock 1998 and Lipkens 2002, Blanc-Benon et al. 2002, Bass et al. 2002 (JASA 111, sonic-boom rise times and turbulence); Sparrow, Gee, Plotkin & Downing 2002 (ASA, military aircraft nonlinear acoustics); Guest 1964 (NASA TN D-1999, acoustic efficiency).
