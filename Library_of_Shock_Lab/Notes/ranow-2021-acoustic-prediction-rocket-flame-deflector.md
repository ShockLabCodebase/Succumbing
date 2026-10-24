---
key: "ranow-2021-acoustic-prediction-rocket-flame-deflector"
title: "Acoustic Prediction Methods for Rocket Flame Deflector Design"
authors: ["Ranow, Fredrik"]
year: 2021
type: "thesis-msc"
venue: "MSc thesis, KTH"
bib: {"school": "KTH Royal Institute of Technology, Stockholm", "note": "TRITA-ITM-EX 2021:417"}
doi: ""
arxiv: ""
pdf: "rocket-noise-models/Ranow_2021_Acoustic-Prediction-Methods-For-Rocket-Flame-Deflector-Design.pdf"
version: "thesis"
unverified: []
group: false
facility: ""
data: ["model-only"]
methods: ["empirical-model", "propagation-model"]
flow: ["rocket-plume", "launch-vehicle", "impinging-jet", "supersonic", "heated"]
phenomena: ["directivity", "source-location", "acoustic-efficiency", "mixing-noise", "installation-effects"]
params: {"vehicle": "Ares I (validation); Merlin 1D example", "M_e": "3.54 (Merlin 1D)", "deflector": "30°"}
topics: ["rocket-noise-models"]
related: ["haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "casalino-2009-hybrid-empirical-caa-rocket-noise", "james-2012-directivity-curves-rocket-noise-model", "kenny-2009-space-shuttle-srm-plume-acoustics", "mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "nonomura-2011-supersonic-jet-impinging-inclined-plate-acoustic-waves"]
cites: ["casalino-2009-hybrid-empirical-caa-rocket-noise", "haynes-2009-sp-8072-dsm-ii-ares-i-lift-off", "nonomura-2011-supersonic-jet-impinging-inclined-plate-acoustic-waves", "raman-1999-supersonic-jet-screech-half-century-powell-present", "tam-1982-shock-associated-noise-cd-nozzles", "tsutsumi-2015-epsilon-liftoff-acoustics", "varnier-2001-rocket-engine-freejet-noise-model"]
summary: "SP-8072 DSM plus Sutherland efficiency, Varnier core cut at impingement, Plotkin–Sutherland directivity, diffraction, duct ray tracing; 7–10 dB high vs Ares I; MATLAB code"
---
# Acoustic Prediction Methods for Rocket Flame Deflector Design

- **Authors:** Fredrik Ranow (KTH Royal Institute of Technology). Supervisors Jens Fridh (KTH) and Simon Westerlund (SSC); examiner Björn Laumert. Host company: Swedish Space Corporation (SSC), for the planned expansion of the Esrange launch facilities (p. 2, title page).
- **Source:** MSc thesis (Examensarbete inom maskinteknik, avancerad nivå, 30 hp), KTH School of Industrial Engineering and Management, Stockholm. Dated 22 June 2021; report number TRITA-ITM-EX 2021:417. Swedish title: *Prediktionsmodeller för utformning av flamdeflektorer*. No DOI.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Ranow_2021_Acoustic-Prediction-Methods-For-Rocket-Flame-Deflector-Design.pdf` (99 pp.). Front matter is PDF p. 1–14 (abstracts, contents, lists). **Printed page = PDF page − 14** (checked: printed p. 2 is PDF p. 16 and printed p. 47 is PDF p. 61; the batch brief's "−15" is off by one). Main text is printed p. 1–50, references p. 51–53, p. 54 blank, Appendix A (MATLAB code) p. 55–84 (PDF 69–98), PDF p. 99 is the back cover. Page refs below are **printed** pages.
- **Tags:** rocket launch noise, lift-off acoustics, flame deflector, flame duct, launch pad, NASA SP-8072, distributed source method (DSM), source-allocating method (SAM), acoustic efficiency, supersonic core length, fully expanded jet diameter, core termination at impingement, directivity (Plotkin–Sutherland, Smith fit), acoustic reflectivity, ray tracing, cylinder diffraction, Ares I / Ares I-X, Merlin 1D, semi-empirical prediction, MATLAB

## Summary
This MSc thesis, written for SSC, builds a MATLAB engineering tool to estimate lift-off sound pressure levels on a rocket sitting above a flame deflector, for use in designing new launch pads at Esrange (p. 1–3). It reviews the noise mechanisms of rocket plumes (BBSAN, screech, turbulent mixing noise) and of plume impingement on an inclined deflector (plate shock, tail shock, separation shock), qualitatively only (p. 4–8). It then restates NASA SP-8072's Method 2 (SAM) and Method 3 (DSM) step by step and the Haynes/Kenny (2009) Ares I modifications (halved core length, core terminated at impingement, RSRM-specific directivity) (p. 9–17). The "SSC DSM" changes five things one at a time: Sutherland's acoustic efficiency, Varnier's core length in fully expanded variables with core termination, the Plotkin–Sutherland closed-form directivity, cylinder diffraction at the payload, and a new ray-tracing reflectivity module for sound bouncing out of the flame duct (p. 18–34). Against Ares I data at 45 m and 78 m, SP-8072 underpredicts OASPL by 0–2 dB while the SSC model overpredicts by 7–10 dB, mostly in 30–300 Hz; the author blames deluge water and launch-structure shielding, which the model leaves out (p. 41–44). Duct reflections can add about 3 dB for some geometries, and making the duct longer to cut loads can raise them through reflection (p. 44–47). No CFD and no experiments were done (p. 3, 48).

## Key findings
- **Mechanisms (literature review only, p. 4–8):**
  - The three plume noise sources named are BBSAN, screech and turbulent mixing noise (TMN), citing Lubert (2017) (p. 4). TMN is split into fine-scale mixing noise, small-scale and large-scale Mach-wave radiation; large-scale Mach waves are called the most problematic TMN part (p. 5).
  - Rocket nozzles at sea level are described as overexpanded, so shock cells and BBSAN are expected; water injection cuts BBSAN by cooling and slowing the plume and by attenuation (p. 4–5, Kandula 2009).
  - Screech is taken to be unimportant for rocket launch acoustics, citing Varnier (2001) (p. 5).
  - Impingement adds three shock-related sources (p. 6–8): the **plate shock** (curved standoff shock with a subsonic high-pressure pocket; oscillation and plate shock–shear layer interaction thought to radiate, with 2-D inviscid simulations by Kurokawa et al. 2020 supporting plate-shock oscillation and an independent mechanism from stagnation-pressure fluctuations in the pocket); the **tail shock** (expansion fan at the end of the plate shock, reflecting between plate and free boundary to form a wall-jet shock-cell train, seen numerically and experimentally); and the **separation shock** (separation downstream of impingement at small nozzle–plate distance, stronger at steeper plate angles per Nonomura et al. 2011, 2016). Whether the separation shock radiates like the plate shock is unknown (p. 8).
- **SP-8072 review (p. 9–15):** Method 1 extrapolates from similar pads; Method 2 (SAM) places each frequency band's source at one Strouhal-dependent point on the plume axis; Method 3 (DSM) spreads source power along the plume per slice and is "more consistent" with TMN theory (p. 9). The tool implements Method 3.
- **Haynes/Kenny (2009) modifications for Ares I (p. 15–17):**
  - Core length halved to x_t/d_e = 1.75(1 + 0.38M_e)² (eq. 2.12), because Eldred may have used a supersonic-core relation under the name "potential core".
  - Core **terminated at impingement**, which moves sources closer to the vehicle; compared with Saturn V (AS-501 to AS-505) data, the terminated-core curve matches far better than the full-core curve, which is up to ~10 dB low (Fig. 2.13, p. 16).
  - RSRM band-specific directivity from static-firing data, with peaks of +5 to +8 dB at about 40–60° from the exhaust axis (Fig. 2.14, p. 17). Together these raise the predicted Ares I spectrum at 78 m by up to ~5 dB near 100 Hz (Fig. 2.15, p. 17).
- **Acoustic efficiency (p. 18–19, 36):**
  - SP-8072 uses η_OA = 1%; typical values are 0.2–0.5% (Guest, NASA TN D-1999) (p. 18).
  - Sutherland's expression (eq. 3.1) gives 0.60% for the reference engine, against 0.17% from the Requena-Plens et al. (2020) variant that uses exit rather than throat sound speed (eq. 3.2; Table 3.1, p. 19). The author argues the Requena-Plens form is a misreading of Casalino et al. (2009), who used Sutherland's original (p. 19).
  - 1% → 0.60% lowers the whole spectrum by about 2 dB: OASPL 137.63 → 135.41 dB (Fig. 5.1, p. 36). Check: 10 log₁₀ 0.6 = −2.2 dB.
- **Core length (p. 19–20, 37–38):**
  - SP-8072's L_c = 3.45D_e(1 + 0.38M_e)² (eq. 3.3) is replaced by Varnier's (2001) L_c = 1.75D_j(1 + 0.38M_j)² (eq. 3.4), using fully expanded M_j and D_j (eqs. 3.5–3.6, Tam & Tanna). Haynes et al. cited Varnier but kept M_e and D_e (p. 19).
  - Varnier's core alone: OASPL +1.4 dB (137.63 → 138.99) and the spectral peak moves from 128 Hz to 200 Hz, with less low-frequency and more high-frequency SPL (Fig. 5.2, p. 37).
  - Core termination (L_c = min(L_c, x_i)), with x_i halved to make it bite: unmodified 137.75 dB, intact Varnier core 140.51 dB, terminated core 139.08 dB, with the terminated spectrum shifted further to high frequency (Fig. 5.3, p. 38). The author suggests nozzle–deflector distance could be used to push energy to higher frequencies (p. 38).
- **Directivity (p. 20–22, 39):** the Plotkin–Sutherland (2007) model (eq. 3.7) gives higher DI than SP-8072 at 180° (sources in the straight duct directly below the vehicle) but lower DI elsewhere; the net effect is about −3 dB OASPL (137.63 → 134.30 dB), largest at high frequency (Fig. 3.2, p. 22; Fig. 5.4, p. 39).
- **Diffraction (p. 25–26, 40):** the cylinder-surface pressure doubling raises OASPL by 2.7 dB (137.63 → 140.30), negligible at low frequency where the wavelength exceeds the payload diameter; the analytic series gives abrupt jumps above 1 kHz (Fig. 5.5, p. 40).
- **Validation against Ares I (p. 40–44):** data from ref. [34] at 45 m (top of first stage) and 78 m (upper stage) above the nozzle exit (Fig. 5.6, p. 41).

  | Station | Data OASPL | SP-8072 | SSC (terminated core) | SSC (intact core) |
  |---|---|---|---|---|
  | 45 m (first stage) | 139.13 dB | 137.48 dB | 146.07 dB | 141.14 dB |
  | 78 m (upper stage) | 134.57 dB | 135.39 dB (134.99 in Fig. 5.10) | 144.44 dB | 138.96 dB |

  - Figs 5.7–5.10, p. 41–44. The SSC model overpredicts everywhere, most in 30–300 Hz where the measured spectra dip sharply (the SSC curve sits roughly 10–15 dB above the data near 40–80 Hz, read off the figures); it follows the high-frequency trend and the lowest frequencies reasonably (p. 42).
  - Suggested causes of the data dip: deluge water altering the plume (the model assumes a dry deflector) and low-frequency sound blocked by the launch complex (p. 42).
  - With the core left intact, the SSC model is much closer (+2 to +4.4 dB OASPL), so for Ares I the core-termination step is the main source of overprediction, the opposite of its Saturn V effect in Haynes et al. (p. 44; cf. Fig. 2.13). The author concludes the effect of core termination depends strongly on engine and deflector geometry (p. 44).
- **Reflectivity (p. 44–47):**
  - Only sources in the straight flame duct and the inclined deflector/straight-duct regions are traced, and the structure is assumed not to block direct paths (p. 44).
  - Chosen case: a 10 m tall rocket above a flame duct with 16 m from nozzle exit to impingement. Reflections add 3.2 dB OASPL (137.80 → 141.01 dB), slightly favouring 200–400 Hz (Fig. 5.11, p. 45).
  - Ten-fold absorption coefficients barely help: 141.01 → 140.83 dB, with low frequencies "virtually untouched" (Fig. 5.12, p. 46).
  - Reflection adds only 0.2 dB at x_i = 8 m but 3.2 dB at x_i = 16 m, so lengthening the duct to cut loads can backfire (Fig. 5.13, p. 46–47).
  - Conclusions: reflectivity can matter but not for most conventional geometries; absorbing materials help only in a limited band (p. 47).
- **Overall conclusions (p. 48):** SP-8072 DSM gives the right order of magnitude but tends to underpredict; its core-length relation and the intact-core assumption may not be justified; none of the impingement mechanisms of Ch. 2 is modelled explicitly; the SPL spectrum is sensitive to engine model and geometry. Main limitation: no experiments, so validation relied on literature data with uncertain engine and pad parameters (p. 48).
- **Future work (p. 49–50):** experiments to validate and tailor the method to small rockets; engine-specific directivity; semi-empirical models for the impingement region if its contribution can be separated; water deluge (Kandula 2009); corner diffraction and a full reflectivity module; mechanical, thermal and erosion loads on the deflector.

## Setup / method
- **Nature of the work:** semi-empirical, geometry-only prediction. No CFD (time and cost, p. 3), no experiments (p. 48). Active noise control (water injection, rainbirds) is excluded (p. 3).
- **Base model:** SP-8072 Method 3 (DSM), steps 1–12 (p. 13–15):
  1. Flow path geometry relative to the vehicle (Fig. 2.6, p. 10): distance x along the deflected plume axis; θ is the angle between the local flow direction and the point of interest.
  2. Overall acoustic power from mechanical power: W_OA = η_OA·0.5nFu_e (eq. 2.1).
  3. L_W = 10 log W_OA + 120 dB (re 10⁻¹² W) (eq. 2.2). SPL is re 20 µPa (p. 10).
  4. Equivalent diameter for n nozzles: d_e = d_ei√n (eq. 2.3).
  5. Core length x_t (Fig. 2.10, p. 13).
  6. Slice the plume (code: Δx = 0.5 m out to 50 m).
  7. Normalised source power per unit core length vs x/x_t (Fig. 2.11, p. 14): rises to a peak near x/x_t ≈ 1.5–2 and falls steeply beyond ~3.
  8. Slice power L_W,s (eq. 2.7).
  9. Slice spectrum vs modified axial Strouhal number f x a_e/(u_e a_∞) (Fig. 2.12, p. 14; eq. 2.8).
  10. SPL per slice and band, with −10 log r² − 11 spherical spreading and DI(b, θ) (eq. 2.9).
  11–12. Log-sum over slices, then over bands (eqs. 2.10–2.11).
- **SAM (Method 2):** one source per band at a Strouhal-dependent axial location (Fig. 2.8, p. 12), with the normalised power spectrum of Fig. 2.7 (p. 11; St = f d_e/u_e from 0.002 to 5, peak around St ≈ 0.02–0.03; data from undeflected jets and 90–150° bucket deflectors) and SP-8072 directivity curves (Fig. 2.9, p. 12).
- **Implementation of SP-8072 charts (p. 27–29):**
  - All charts were digitised and used through **piecewise linear interpolation**, rather than curve fits such as eq. 4.1 (Requena-Plens), to avoid adding a new error source (p. 27–28).
  - SP-8072 directivity: Smith's (2013) piecewise fit in α and St* = log₁₀St + 3 (eq. 4.2, Fig. 4.3, p. 29), checked against chart points for St = 0.004 and 0.4.
- **SSC DSM modifications (Ch. 3):** acoustic efficiency (eq. 3.1), Varnier core length with M_j and D_j (eqs. 3.4–3.6) plus core termination, Plotkin–Sutherland directivity (eq. 3.7; M_ec = 0.75; Table 3.2), diffraction on a cylindrical payload (eqs. 3.13–3.16), and reflectivity (eqs. 3.8–3.12).
- **Reflectivity model (p. 22–25, 30–34):**
  - Straight-ray tracing in 2-D from each slice source. Reflection uses equal angles of incidence and reflection; energy is either absorbed or specularly reflected (no diffuse scattering); the spectrum does not depend on incidence angle (p. 25).
  - Ray limits: θ_min is the angle from the duct edge to the far edge of the payload (a line); θ_max is the angle from the source to the duct edge; a reflection is only possible if θ_max > θ_min (Figs 4.4–4.5, p. 30–31). Further reflections are tested with θ_max,2 (Fig. 4.6, p. 31–32); rays leaving the duct are checked for a hit on the payload line (Fig. 4.7, p. 33).
  - The plume is split into regions (straight duct, inclined plate, curved part, etc.) each with its own rules; for the straight-duct region, bounces off the inclined plate below are also traced (Fig. 4.8, p. 33–34).
  - Only one hit per source and reflection count is kept, so the result is independent of ray count (justified by spherical spreading) (p. 34).
  - Angle step is adaptive: if the spacing of the last two payload hits exceeds the payload width, the step is halved (p. 34).
  - Absorption: "rough concrete" octave-band values (Table 3.3, p. 24, from Vorländer 2007).
- **Diffraction model (p. 25–26):** Wiener (1947) rigid-cylinder solution generalised to oblique incidence β by Czyz & Gudra (1992), via Smith (2013). Payload is a cylinder; azimuth φ = 0 (single plane).
- **Example case (Figs 5.1–5.5, 5.11–5.13):** the engine and pad used are not stated in the text. The code listings use Merlin 1D values (F = 877 kN, d_e = 0.92 m, M_e = 3.54, γ = 1.19, R = 320.8 J/kg/K, T = 2113 K, p₀ = 9.7 MPa, u_e = 2769–3096 m/s, a_t = 1179 m/s), a 30° deflector, and payload diameter 2 m (p. 56, 60–61). The A.0.2 listing has payload 5 m above the nozzle exit and x_i = 10 m; A.0.1 has 25 m and 8 m. Text says the example's core length is close to x_i (p. 37).
- **Validation data:** Ares I measurements at 45 m and 78 m from ref. [34] (p. 40). Engine and pad inputs used for the Ares runs are not given.
- **Frequency resolution:** code uses 1/3-octave bands from 4 Hz to ~15 kHz (p. 55), while the absorption table is in octave bands (Table 3.3).
- **Data dependence:** the method needs only engine parameters and geometry; it ingests no time series. Comparisons use 1/3-octave SPL spectra and OASPL, i.e. long-time averages. Nothing in the thesis addresses intermittency, nonstationarity or time–frequency behaviour.

## Key equations
All levels in dB; log = log₁₀.
- Acoustic power (eq. 2.1, p. 10): $W_{OA}=\eta_{OA}\,0.5\,nFu_e$ (= 0.005nFu_e for η_OA = 1%); $L_W=10\log W_{OA}+120$ (eq. 2.2, p. 11); $d_e=d_{ei}\sqrt n$ (eq. 2.3).
- SAM band power (eq. 2.4, p. 11): $L_{W,b}=10\log\!\left[\dfrac{W(f)}{W_{OA}}\dfrac{u_e}{d_e}\right]+L_W-10\log\dfrac{u_e}{d_e}+10\log\Delta f_b$.
- SAM SPL (eq. 2.5, p. 12): $\mathrm{SPL}_{b,p}=L_{W,b}-10\log r^2-11+DI(b,\theta)$; OASPL by log-sum over bands (eq. 2.6).
- DSM slice power (eq. 2.7, p. 14): $L_{W,s}=10\log\!\left[\dfrac{x_tW(x)}{W_{OA}}\right]+L_W+10\log\dfrac{\Delta x}{x_t}$.
- DSM slice band power (eq. 2.8, p. 15): $L_{W,s,b}=10\log\!\left[\dfrac{W(f,x)}{W(x)}\dfrac{u_ea_\infty}{xa_e}\right]+L_{W,s}-10\log\dfrac{u_ea_\infty}{xa_e}+10\log\Delta f_b$.
- DSM SPL (eq. 2.9–2.11, p. 15): $\mathrm{SPL}_{s,b,p}=L_{W,s,b}-10\log r^2-11+DI(b,\theta)$; $\mathrm{SPL}_{b,p}=10\log\sum_s 10^{\mathrm{SPL}_{s,b,p}/10}$; $\mathrm{OASPL}_p=10\log\sum_b 10^{\mathrm{SPL}_{b,p}/10}$.
- Haynes core (eq. 2.12, p. 16): $x_t/d_e=1.75(1+0.38M_e)^2$.
- Sutherland efficiency (eq. 3.1, p. 18): $\eta=K\left(\dfrac{\gamma_e}{\gamma_0}\right)\left(\dfrac{a_t}{a_0}\right)^3\left(\dfrac{a_t}{u_e}\right)^2$, K = 0.0012. Requena-Plens variant (eq. 3.2, p. 19): same with $a_e$ in place of $a_t$.
- Core length: SP-8072 $L_c=3.45D_e(1+0.38M_e)^2$ (eq. 3.3, p. 19); Varnier $L_c=1.75D_j(1+0.38M_j)^2$ (eq. 3.4); termination $L_c\leftarrow\min(L_c,x_i)$ (p. 20).
- Fully expanded conditions (eqs. 3.5–3.6, p. 20): $M_j=\sqrt{\dfrac{2}{\gamma-1}\left[\left(\dfrac{p_0}{p_\infty}\right)^{(\gamma-1)/\gamma}-1\right]}$; $\dfrac{D_j}{D_e}=\left[\dfrac{1+0.5(\gamma-1)M_j^2}{1+0.5(\gamma-1)M_e^2}\right]^{\frac{\gamma+1}{4(\gamma-1)}}\sqrt{\dfrac{M_e}{M_j}}$.
- Plotkin–Sutherland directivity (eq. 3.7, p. 21): $\theta_e=\left(\theta-9.61\log\dfrac{St}{0.0515}\right)\dfrac{\pi}{180}$; $DI=10\log\!\left[\dfrac{c_1[1+\cos^4\theta_e]}{[(1-M_{ec}\cos\theta_e)^2+0.3M_{ec}^2]^{2.5}(1+c_2e^{-c_3\theta_e})}\right]-c_4\log St-c_5$, with c₁…c₅ = 0.37, 310, 9, 0.698, 1.67 (Table 3.2) and M_ec = 0.75.
- Reflection (eqs. 3.8–3.10, p. 24): $R_b=\hat p_{refl,b}/\hat p_{inc,b}=\sqrt{1-\alpha_b}$; $\hat p_{inc,b}=p_{ref}10^{\mathrm{SPL}_b/20}$.
- Spreading after reflection (eqs. 3.11–3.12, p. 24): $\mathrm{SPL}_i=\mathrm{SPL}_j+\log\!\left[\left(\sum_{k-1}r_i\right)^2\!\big/\left(\sum_k r_i\right)^2\right]$; e.g. $\mathrm{SPL}_{payload}=\mathrm{SPL}_A+\log[r_1^2/(r_1+r_2)^2]$.
- Cylinder diffraction (eqs. 3.13–3.16, p. 26): $\left|\dfrac{p}{p_0}\right|=\dfrac{4}{\pi ka\sin\beta}\left|\sum_{m=0}^{\infty}\epsilon_m\dfrac{\cos m\phi}{\frac{d}{d(ka\sin\beta)}H_m^{(2)}(ka\sin\beta)}\right|$, $ka=\pi fd_{pay}/a_0$, ε₀ = ½, ε_m = iᵐ (m ≥ 1), $H_m^{(2)\prime}=\tfrac12(H_{m-1}^{(2)}-H_{m+1}^{(2)})$; added to the SPL as $+20\log|p/p_0|$.
- Smith fit to SP-8072 directivity (eq. 4.2, p. 29), with $St^\star=\log St+3$: $DI=(0.4-0.07St^\star)(\alpha-35-8^\star)+13-2.6St^\star$ for $\alpha<23+12St^\star$; $-(0.28-35St^\star)(\alpha-35-10St^\star)+6.5-St^\star$ for $23+12St^\star<\alpha<90+12St^\star$; $-0.1\alpha-0.3+2St^\star$ for $\alpha>90+12St^\star$.

> Equations were re-typed from rendered pages (p. 10–11, 14–16, 18–21, 24, 26, 29), not the garbled text extraction. Points to check before reuse:
> - **eq. 3.9 vs code:** the text gives R_b = √(1 − α_b) (energy-consistent), but the Reflectivity listing uses `p_refl = p_inc*sqrt(1-absorption^2)` (p. 69–70, 78, 82), i.e. √(1 − α²). For α ≈ 0.02–0.07 this gives almost no loss, which may explain why ten-fold absorption changed so little (Fig. 5.12).
> - **eq. 3.11–3.12** are printed without the factor 10 in front of the log; the code uses `10*log10(...)` (p. 79, 83), so the printed form is a typo.
> - **eq. 4.2** as printed has "8*" (probably 8St*) and "−(0.28 − 35St*)" in the middle branch, which looks dimensionally odd (perhaps 0.035St*?); check against Smith (2013) before use.
> - **eq. 2.12 vs 3.4:** the thesis presents Haynes' relation with M_e, d_e and Varnier's with M_j, D_j; both use the coefficient 1.75 (half of 3.45).

## Data tables
**Table 3.1 (p. 19): acoustic efficiency for a reference engine**

| Expression | η |
|---|---|
| SP-8072 | 1% |
| Sutherland (eq. 3.1) | 0.60% |
| Requena-Plens (eq. 3.2) | 0.17% |

> Own check with the A.0.2 code values (K = 0.0012, γ_e = 1.19, a_t = 1178.7 m/s, a₀ = 343 m/s): u_e = 3095.6 m/s gives η ≈ 0.60%, matching Table 3.1; the u_e = 2769.2 m/s actually set in A.0.2 gives ≈ 0.75%. With a_e = √(γRT) ≈ 898 m/s, eq. 3.2 gives ≈ 0.15%, close to the table's 0.17%.

**Table 3.2 (p. 21): Plotkin–Sutherland coefficients:** c₁ = 0.37, c₂ = 310, c₃ = 9, c₄ = 0.698, c₅ = 1.67; M_ec = 0.75.

**Table 3.3 (p. 24): rough concrete absorption coefficient α_b by octave band**

| Band [Hz] | 125 | 250 | 500 | 1000 | 2000 | 4000 | 8000 |
|---|---|---|---|---|---|---|---|
| α_b | 0.02 | 0.03 | 0.03 | 0.03 | 0.04 | 0.04 | 0.07 |

**Effect of each modification on the example case (OASPL, Figs 5.1–5.5, p. 36–40)**

| Change | Unmodified | Modified | Δ |
|---|---|---|---|
| Sutherland efficiency | 137.63 | 135.41 | −2.2 |
| Varnier core | 137.63 | 138.99 | +1.4 (peak 128 → 200 Hz) |
| Intact Varnier core (x_i halved) | 137.75 | 140.51 | +2.8 |
| Terminated Varnier core (x_i halved) | 137.75 | 139.08 | +1.3 |
| Plotkin–Sutherland directivity | 137.63 | 134.30 | −3.3 |
| Diffraction | 137.63 | 140.30 | +2.7 |
| Reflectivity (x_i = 16 m) | 137.80 | 141.01 | +3.2 |
| Reflectivity, 10× absorption | 137.80 | 140.83 | +3.0 |

Validation OASPLs are in the Key findings table above (Figs 5.7–5.10).

> Own estimates (not in the thesis) for the Merlin 1D inputs with p₀/p_∞ = 9.7 MPa/101.325 kPa ≈ 96: M_j ≈ 3.36 (slightly overexpanded vs M_e = 3.54), D_j ≈ 0.81 m, SP-8072 L_c ≈ 17.5 m, Varnier L_c ≈ 7.3 m. **But** the A.0.2 listing sets `p_inf=0.101325` with `p_0=9.7e6` (p. 61), a Pa/MPa mix-up that would give M_j ≈ 14 and a huge core that is always clipped to x_i. Whether the plotted results used this code is not stated.

## Figures worth remembering
- **Fig. 1.1 (p. 1):** qualitative acoustic fields of undeflected vs deflected plumes (from SP-8072).
- **Fig. 2.3 (p. 7):** impingement region on an inclined plate: plate shock, subsonic pocket, tail-shock expansion fan and wall-jet shock cells.
- **Fig. 2.4 (p. 8):** plate pressure distributions for different nozzle–plate distances, showing downstream separation at small distances ([Nonomura et al. 2011](nonomura-2011-supersonic-jet-impinging-inclined-plate-acoustic-waves.md)).
- **Fig. 2.6 (p. 10):** SP-8072 geometry: rocket, deflected flow axis, slices, θ and source locations.
- **Figs 2.7–2.12 (p. 11–14):** the SP-8072 charts: normalised power spectrum vs St, source location vs St, directivity vs angle and St, core length vs M_e, source-power distribution vs x/x_t, and relative spectrum vs modified axial Strouhal number.
- **Fig. 2.13 (p. 16):** Saturn V AS-501–505 SPL vs full-core and terminated-core SP-8072 predictions.
- **Fig. 2.14 (p. 17):** Ares I RSRM directivity index by band, 10 Hz–10 kHz, angles 20–145°.
- **Fig. 3.2 (p. 22):** SP-8072 directivity points vs Plotkin–Sutherland curves for St = 0.004–0.4.
- **Fig. 3.4 (p. 23) and Figs 4.4–4.8 (p. 30–34):** reflectivity concept, ray-angle limits, hit test and region split of the flame duct.
- **Figs 5.1–5.5 (p. 36–40):** one-at-a-time effect of each modification on the spectrum.
- **Figs 5.7–5.10 (p. 41–44):** Ares I validation at 45 m and 78 m, terminated vs intact core. Fig. 5.9's caption says 78 m but its plot title and data are the 45 m case.
- **Figs 5.11–5.13 (p. 45–47):** reflectivity contribution, absorption sensitivity and impingement-distance comparison.

## Notation
- F thrust, u_e exit velocity, n number of engines, d_ei single nozzle exit diameter, d_e (D_e) equivalent exit diameter, D_j fully expanded diameter, M_e exit Mach number, M_j fully expanded Mach number, p₀ chamber pressure, p_∞ ambient pressure.
- η_OA (η) acoustic efficiency; W_OA overall acoustic power; L_W sound power level re 10⁻¹² W; SPL re 20 µPa; Δf_b bandwidth of band b.
- x distance along the (deflected) flow path; x_t (L_c) core length; x_i nozzle–impingement distance; Δx slice length; r source–receiver distance.
- θ angle between local flow direction and receiver (α in eq. 4.2 and in the code); θ_e effective angle; DI directivity index; St = f d_e/u_e; St* = log St + 3; M_ec eddy convective Mach number.
- a₀ (a_∞) ambient sound speed, a_t throat sound speed, a_e exit sound speed, γ_e exhaust and γ₀ ambient specific-heat ratio, K Lighthill-derived constant.
- R_b reflection coefficient, α_b absorption coefficient; β incidence angle on the payload cylinder, φ azimuth, a cylinder radius, d_pay payload diameter, H_m^(2) Hankel function of the second kind.
- "SSC model" / "SSC DSM": the modified DSM in this thesis.

## Relevance to this project
This project analyses resonance and feedback in supersonic and impinging jets using schlieren, acoustics and PIV, with SPOD/BMD/HPOD (see CLAUDE.md). This thesis is an engineering, semi-empirical study with no new measurements and no flow simulation, so its value is mostly as context for why impinging-jet physics matters at full scale.
- **Impinging jets on inclined plates:** Ch. 2 (p. 6–8) is a short literature map of the impingement noise sources a flame deflector adds: plate-shock oscillation, plate shock–shear layer interaction, stagnation-pocket pressure fluctuations, tail-shock wall-jet cells and separation shocks. These are the same ingredients as the impinging-jet feedback loop in [weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md) (standoff shock, wall-jet shocklets, acoustic path to the lip), though here the plate is inclined and the thesis treats them only qualitatively. The thesis itself names the impingement region as the main gap (p. 49). Time-resolved schlieren of an inclined-plate impingement, analysed with SPOD and BMD, would address exactly the mechanisms it lists but does not model. The cited Nonomura et al. (2011, now [indexed](nonomura-2011-supersonic-jet-impinging-inclined-plate-acoustic-waves.md); 2016), Kurokawa et al. (2020), Nakai et al. (2006) and Nguyen et al. (2020) inclined-plate papers are candidates for `/add-paper`.
- **Disagreement on screech and feedback:** the thesis dismisses screech for rockets (p. 5, after Varnier 2001) and does not consider impingement-tone feedback at all; its models are purely broadband. Whether a rocket over a deflector can lock into a plate-to-nozzle feedback loop (as in Weightman 2019) is not addressed.
- **BBSAN and shock cells:** BBSAN appears only in the review; the source model is SP-8072's mixing-noise-based empirical spectrum, with no shock-cell term. The thesis does use Tam & Tanna's D_j relation and fully expanded variables, the same nozzle-condition bookkeeping as screech work (e.g. M_j in [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md)).
- **Source location and core length:** the key sensitivities are where the sources sit along the plume (core length, core termination at impingement) and directivity. This links to the core-length and peak-source discussion in [mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md](mathews-2025-predicting-sound-power-oaspl-heated-supersonic-jets.md), to sibling notes on SP-8072 alternatives (casalino-2009-hybrid-empirical-caa-rocket-noise.md, james-2012-directivity-curves-rocket-noise-model.md) and to the Ares I / RSRM measurement campaign in [kenny-2009-space-shuttle-srm-plume-acoustics.md](kenny-2009-space-shuttle-srm-plume-acoustics.md) (same Constellation context and lead author as ref. [18], Kenny & Haynes 2009, but a different paper). For a review of the wider field see lubert-2022-supersonic-jet-noise-launch-vehicles-review.md.
- **Contradiction worth noting:** core termination improved SP-8072 against Saturn V in Haynes et al. (Fig. 2.13) but caused a 5–10 dB overprediction against Ares I here (Figs 5.7–5.10). So "where the sources are after impingement" is unresolved. Full-field measurements of how an impinging plume's noise source distribution changes downstream of the plate, e.g. from schlieren SPOD mode shapes, would bear directly on this.
- **Methods and data types:** nothing here needs or uses time-resolved data; all outputs are averaged 1/3-octave spectra and OASPL. There is no treatment of intermittency, mode switching or time-varying amplitude, so it does not feed the SPOD → reconstruction → HPOD pipeline. The reflection and cylinder-diffraction pieces (eqs. 3.8–3.16) are simple geometric-acoustics tools that could be reused to estimate reflections in a lab impinging-jet rig or a facility with hard walls.
- **Code:** Appendix A (p. 55–84) lists three MATLAB pieces: A.0.1 a plain SP-8072 DSM script (1/3-octave bands 4 Hz–15 kHz, 0.5 m slices to 50 m, Merlin 1D inputs, digitised-chart lookups `fig12`/`fig13`, Smith directivity); A.0.2 the SSC DSM script (Sutherland efficiency, Varnier core with termination, diffraction for a 2 m payload, call to the reflectivity function, log-summing direct and reflected SPL); and A.0.3 the `Reflectivity` ray-tracing function ("looking up" and "looking down, bounce on flat plate" cases, adaptive angle step, absorption lookup). Helper functions (`position`, `fig12`, `fig13`, `Directivity_Smith`, `Diffraction`, `abscoeff`) and the digitised chart data are not included, so the code cannot be run as listed.
