---
key: "ikawa-1985-ignition-duct-overpressure-space-shuttle-srm"
title: "Ignition/Duct Overpressure Induced by Space Shuttle Solid Rocket Motor Ignition"
authors: ["Ikawa, Hideo", "Laspesa, Fred S."]
year: 1985
type: "article"
venue: "J. Spacecr. Rockets 22(4), 481–488"
bib: {"journal": "Journal of Spacecraft and Rockets", "volume": "22", "number": "4", "pages": "481--488", "note": "Presented as AIAA Paper 83-1113, AIAA/SAE/ASME 19th Joint Propulsion Conference, Seattle, June 1983"}
doi: "10.2514/3.25776"
arxiv: ""
pdf: "rocket-noise-models/Ikawa-Laspesa_1985_Ignition-Duct-Overpressure-Induced-By-Space-Shuttle-Solid-Rocket-Motor-Ignition.pdf"
version: "published"
unverified: []
group: false
facility: "Rockwell International analysis; STS-1 and STS-3 flight data (Eastern Test Range); 6.4% Tomahawk-SRM model tests of the ETR and WTR pads at NASA MSFC"
data: ["model-only", "full-scale", "subscale", "surface-pressure"]
methods: ["shock-relations", "propagation-model", "empirical-model"]
flow: ["rocket-plume", "launch-vehicle", "impinging-jet", "shock-tube", "supersonic", "heated"]
phenomena: ["ignition-overpressure", "installation-effects", "noise-control", "atmospheric-propagation"]
params: {"vehicle": "Space Shuttle SRB (STS-1, STS-3); Tomahawk SRM in the 6.4% model", "scale": "6.4% (≈1/16)", "p_c,max": "≈870 psi ≈6 MPa (Shuttle SRM); ≈1170–1440 psi ≈8–10 MPa (Tomahawk), read from Fig. 7", "peak ṗ_c/p_cm": "≈9.7 s⁻¹ (Shuttle); ≈42–64 s⁻¹ (Tomahawk), read from Fig. 8", "IOP STS-1": "≈+1.85/−1.95 psi measured (base heat shield); ≈±1.0 psi predicted (side fuselage), Fig. 3", "V_wind": "15.24 m/s (50 ft/s)", "observer": "Orbiter lower surface, stations x 1285, y −6, z 260 in."}
topics: ["rocket-noise-models", "rocket-noise-measurements"]
related: ["gee-2023-sls-artemis-i-far-field-noise", "kenny-2009-space-shuttle-srm-plume-acoustics", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "kellison-2026-falcon-9-noise-two-campaigns", "mathews-2021-falcon-9-far-field-noise", "panda-2013-noise-sources-rocket-test-firings-launch-phased-array", "ranow-2021-acoustic-prediction-rocket-flame-deflector", "tsutsumi-2015-epsilon-liftoff-acoustics", "rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet"]
cites: []
summary: "Shuttle SRB ignition overpressure model (wall jet as shock-tube piston): N-wave IOP ∝ p̈_c, later DOP from duct exits; fits STS-1/3; mixed in 6.4% tests"
---
# Ignition/Duct Overpressure Induced by Space Shuttle Solid Rocket Motor Ignition

- **Authors:** Hideo Ikawa (Member of Technical Staff) and Fred S. Laspesa (Supervisor, STS Airload Evaluation), Rockwell International, Downey, California (p. 481). Not Shock Lab group work. Company-funded IR&D (p. 487).
- **Source:** J. Spacecraft 22(4), 481–488, July–August 1985, doi:10.2514/3.25776. Presented as AIAA Paper 83-1113 at the AIAA/SAE/ASME 19th Joint Propulsion Conference, Seattle, 27–29 June 1983; received 12 Sept 1983, revised 6 June 1984 (p. 481). The detailed IOP derivation is in the authors' 1982 JANNAF paper (ref. 5), which this paper only summarises (p. 482).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Ikawa-Laspesa_1985_Ignition-Duct-Overpressure-Induced-By-Space-Shuttle-Solid-Rocket-Motor-Ignition.pdf` (index key `rocket-noise-models/Ikawa-Laspesa_1985_Ignition-Duct-Overpressure-Induced-By-Space-Shuttle-Solid-Rocket-Motor-Ignition.pdf`, 8 pp., publisher's version, OCR text layer). **Page refs are journal pages; PDF page = journal page − 480.** The text layer garbles all equations, the nomenclature and every figure; equations and figure values were taken from pages rendered at 260 dpi.
- **Tags:** ignition overpressure (IOP), duct overpressure (DOP), Space Shuttle, solid rocket booster, SRM ignition transient, chamber-pressure rise rate, mobile launch platform, exhaust duct, flame deflector, wall jet, Prandtl–Meyer expansion, shock-tube (piston) analogy, N-wave, distributed plane-source acoustic integral, moving source, frequency shift, crosswind, yaw loads, Eastern Test Range (ETR), Western Test Range (WTR), 6.4% subscale model, Tomahawk SRM, water trough, water injection, subscale scaling

## Summary
Ikawa and Laspesa build a fast engineering model of the pressure waves that SRB ignition sends up the Space Shuttle at lift-off. At ignition the plume hits the flame deflector and spreads as a wall jet. The model treats the growing wall-jet thickness as the piston of a shock tube: a compression wave whose strength follows the rise rate of chamber pressure ṗ_c. That wave leaves the duct opening on the launch platform, and a plane-source acoustic integral carries it to the vehicle. Because the radiated pressure goes as p̈_c, it arrives as an N-wave (p. 481–483). They add a second mechanism, duct overpressure (DOP). The wall-jet front moves down the horizontal duct as a moving wave generator, so a delayed, lower-frequency wave leaves the downstream duct exits (p. 483–484). The model reproduces the waveform and timing of the STS-1 IOP and the IOP/DOP sequence of STS-3, and qualitatively the duct-ceiling and vehicle data of 6.4% model tests (p. 483–486). Its main lesson concerns those tests. At 1/16 scale the travel times shrink but the Tomahawk ignition transient does not, so IOP and DOP overlap and cannot be separated in the data. At full scale they are clearly separate (p. 486–487). The paper also predicts DOP for the enclosed-duct WTR pad, and a 10–15 ms crosswind offset between its two opposed duct exits (p. 487).

## Key findings
- **Background** (p. 481–482).
  - On STS-1 the vehicle met a strongly impulsive compression wave from the SRB duct openings on the mobile launch platform (MLP); it affects vehicle and payload dynamic response (p. 481).
  - A 6.4% model programme at MSFC, with Tomahawk SRMs, led to the suppression system used from STS-2: water-trough covers across the duct openings as a physical barrier, plus water injection into the SRM exhaust to quench thermal energy (p. 481).
  - The WTR pad then under development had fully enclosed exhaust ducts, so a larger IOP was expected. Subscale screening tests with water injection instead gave primary IOP about as low as STS-2. The new concern was a dominant DOP from the downstream duct exits (p. 482).
  - Numerical (CFD) analyses of the plume transient in a simplified duct took "several hours" of computing and gave only qualitative internal flow, with no vehicle environment (refs. 3–4, p. 482). The authors present their model as one of several hypotheses (refs. 1, 5–8) (p. 482).
- **IOP mechanism** (p. 481–482). Following Fansler & Schmidt (ref. 9), the wave is strongest in the direction the wave-generating front moves. An upward wave strong enough along the vehicle must therefore be generated moving upward. The postulated primary generator is the thickness growth rate of the wall jet formed by the plume impinging at the bottom of the duct. The idea came from high-speed film of the DM-3 demonstration firing, where the visible plume grew radially and axially with the ignition history (p. 482).
- **STS-1 validation** (Fig. 3, p. 483). Predicted and measured waveforms and frequency content agree, with the time origin shifted for the comparison.
  - Measured on the Orbiter base heat shield (where the largest IOP was recorded): about +1.85 psi then −1.95 psi, an N-wave about 0.1 s long (read from the figure).
  - Predicted on the Orbiter side fuselage near the payload bay: about +1.0 / −0.95 psi (read from the figure).
  - The authors put the amplitude gap down to the different locations (p. 483), so the comparison validates shape and timing, not amplitude.
- **DOP discovery** (p. 483). In the WTR 6.4% tests, low-frequency overpressures dominated and arrived after the ignition transient (Fig. 4, about 100 ms between the p_c rise and the DOP), pointing to an indirect path. They were traced to the downstream duct exits. Re-examination of ETR data found the same wave, hidden by the dominant IOP. A single-point generator could not reproduce the low frequency or the delay, which is why the moving wall-jet front was added (p. 483).
- **Motor transients** (Figs. 7–8, p. 484–485).
  - Shuttle SRM (STS-1): p_c rises mostly between about 0.1 and 0.45 s to about 870 psi (≈6 MPa). ṗ_c/p_cm has one dominant peak of about 9.7 s⁻¹ near 0.17 s and a second of about 4 s⁻¹ near 0.26 s (read from the figures). A single N-wave is expected (p. 485).
  - Tomahawk SRM: p_c reaches about 1170 psi (ETR test P116-075-038) or 1440 psi (WTR test P057-004) within about 0.04–0.05 s. Its second ṗ_c peak equals or exceeds the first (≈42 then 56 s⁻¹, and ≈46 then 64 s⁻¹), so a double wave is expected in the subscale tests (p. 485).
  - Two input methods give the same character once time origins are shifted: digitising p_c (WTR test, with spikes in ṗ_c) or digitising a smoothed ṗ_c (ETR test). The smoothness of ṗ_c shows up in the predicted IOP/DOP (p. 485). Tomahawk motors were not repeatable; Shuttle SRMs were (p. 484).
- **Pad geometry** (Fig. 9, p. 485). At the ETR the flame deflector sends the impinging exhaust towards the large open cut-out in the MLP, through which most IOP escapes. The WTR deflector forces the exhaust straight under a covered tunnel, as confirmed by heat-imprinted flow patterns, so little IOP-generating wall jet heads for the opening. If the hypothesis is right, the WTR deflector itself partly suppresses IOP (p. 485).
- **Internal DOP on the duct ceiling, WTR 6.4% model** (Fig. 10, p. 485–486). At three equally spaced stations (X_D = 3.58, 7.17 and 10.75 ft), the large-scale wave pattern near the duct entrance breaks into a finer pattern downstream, as many converging waves add high-frequency content. The measurements show the same development qualitatively. Measured peaks (about 3–6.5 psi) exceed the predicted ones (about 2–3.5 psi) (read from the figure). Water injection, not modelled, may explain part of the difference (p. 486).
- **STS-3 full scale** (Fig. 11, p. 486). IOP and DOP are computed separately and superposed linearly. Predicted IOP is about 0.27 psi near 0.26 s, predicted DOP about 0.33 psi near 0.45 s (read from the figure). Against the measured composite the "salient features" are captured, though not the details (p. 486). The measured trace stays positive around 0.75–0.85 s where the prediction is negative (my reading).
- **Subscale IOP/DOP interaction** (Figs. 12–13, p. 486).
  - The computed STS-3 subscale histories show a region of IOP/DOP interaction (Fig. 12; IOP about 0.02 psid near 0.016 s, DOP peaks of about 0.035 psid at 0.032 and 0.052 s, read from the figure). The WTR model separates them more because its duct is almost twice as long (p. 486).
  - Cause: ambient sound speed and SRM exhaust speed cannot be scaled geometrically and are of the same order at both scales, while the model is 1/16 size. The more pronounced second Tomahawk peak makes it worse: the IOP from the second peak and the DOP from the first can reach the vehicle together (p. 486).
  - The WTR subscale measurement compares "favorably" with the prediction (Fig. 13; peaks within ±0.1 psid). No simple way exists to separate IOP and DOP in measured subscale data, so the model becomes the tool for interpreting them (p. 486–487).
- **WTR full scale** (Figs. 14–16, p. 487).
  - IOP and DOP are "clearly separated": IOP about ±0.55 psid near 0.29–0.32 s, then DOP with a negative peak of about −0.42 psid near 0.65 s and decaying oscillation to 1.4 s (read from Fig. 14).
  - With the same p_c and Orbiter location, the ETR and WTR DOP waveforms differ qualitatively, which the authors attribute to the duct layout (p. 487).
  - The two WTR ducts exit on opposite sides. A crosswind of 15.24 m/s (50 ft/s) from one exit to the other shifts the arrivals of the two DOP waves by about 10–15 ms (Fig. 15), producing yaw loads that could affect the payload. Mismatched SRB ignitions would do the same (p. 487).
  - Full-scale internal DOP at quarter-length points (ETR X_D = 30, 60, 90; WTR 56, 112, 168, units presumably ft): the initial periods are almost identical, but near the exit the WTR period is longer and its pattern more complex, from the longer duct (Fig. 16, p. 487).
- **Conclusions** (p. 487).
  - The method gives rapid engineering answers with respect to pad geometry and motor ignition transient; "reasonably good" agreement with data supports it.
  - DOP strength seems tied to the speed of the convecting wall-jet front, so retarding the wall jet may reduce DOP.
  - The WTR primary IOP is believed partly reduced by the deflector orientation; the tunnel ceiling acts as a barrier like the ETR water trough.
  - Water–plume interaction is believed to attenuate IOP by removing thermal energy, and may mix best at the bottom of the duct where a pool collects before ignition.

## Setup / method
**Configurations and data** (p. 481–484).

| Case | Configuration | Motor p_c input | Data compared |
|---|---|---|---|
| STS-1 | ETR full scale, open MLP cut-outs, no suppression | Measured STS-1 SRM | Flight IOP, Orbiter base heat shield (Fig. 3) |
| STS-3 | ETR full scale, with suppression | STS-1 SRM | Flight IOP/DOP, Orbiter lower surface (Fig. 11); pressures under the MLP used to build the duct-flow model |
| STS-3 subscale | ETR, 6.4% | Tomahawk (smoothed ṗ_c, test P116-075-038) | Computed only (Fig. 12) |
| WTR subscale | WTR, 6.4%, with water injection | Tomahawk (digitised p_c, test P057-004) | Duct-ceiling transducers D1–D3 (Fig. 10); vehicle IOP/DOP (Fig. 13) |
| WTR full scale | WTR, enclosed ducts ≈2× ETR length, exits on opposite sides | STS-1 SRM | Prediction only (Figs. 14–16) |

- External predictions are made on the Orbiter lower surface at Orbiter stations x = 1285, y = −6, z = 260 in., where flight and model instruments sit (p. 484). The STS-1 prediction (Fig. 3) is for the side fuselage near the payload bay (p. 483).
- The paper gives no transducer types, sampling rates or filtering for any data set; the measurements come from the MSFC programme and flight instrumentation (refs. 1–2).
- **ETR and WTR** are named only as ranges and launch complexes. They are presumably KSC LC-39 and Vandenberg SLC-6 (my identification; not stated).

**IOP model** (Fig. 1, p. 482–483). Five regions, with regions 3–4 treated by a shock-tube analogy:
1. **Exhaust jet (region 1).** The plume column develops isentropically downstream of the throat, so the core Mach number follows p_c(t) (eqs. 1–2). Deceleration by entrainment is neglected during the rapid transient.
2. **Impingement zone (region 2).** Subsonic flow behind a normal shock at the deflector, from the Rankine–Hugoniot relations; stagnation pressure p_02(p̄_c).
3. **Wall jet (region 3).** As p_02 rises with p_c, the wall jet becomes supersonic and its boundary expands by a Prandtl–Meyer process until pressure is continuous (eq. 3).
4. **Wave region (region 4).** The displacement velocity of the wall-jet boundary is the piston velocity u_p (eq. 4). It drives a compression wave (eq. 5) and, once the piston decelerates, an expansion (eq. 6). Regions 1 and 4 are assumed isolated, with no first-order interaction.
5. **External propagation (region 5).** Linear three-dimensional acoustics from a plane source over the rectangular duct cut-out (eq. 8, Fig. 2). The decay is cylindrical (1/√r) near the opening and spherical (1/r) far away, with a transition in between (p. 483). The forcing term is the time derivative of the pressure pulse at the opening, so it goes as p̈_c and the external wave is an N-wave.
- Arrival time at the duct opening for the i-th event: ignition time plus plume travel down to the deflector plus wave travel up to the opening (eq. 7).

**DOP model** (Figs. 5–6, p. 483–484). Assumptions as listed by the authors:
1. **Wave strength in the duct** is proportional to the transient exhaust mass flux (following p_c), to the rate of change of stagnation pressure at the duct bottom, and to the wall-jet thickness growth rate (∝ Prandtl–Meyer rate, eq. 3).
   - Wall friction retardation of the wall jet is neglected, though "it may become an important mechanism".
   - Three-dimensional spreading of the impinging plume is a multiplying factor ∝ √(plume cross-section / duct opening area).
2. **Internal DOP at a ceiling point** is a sum of pressure pulses by the same integral as eq. 8, with C replaced by v_c = C + u_wj cos α (eq. 12) to give a frequency shift. cos α > 0 for a source upstream of the point and < 0 downstream. When v_c < 0 the source is outside the domain of influence and cannot be heard (p. 484).
   - Sources are uniform across the duct at each streamwise station, but their strength varies along it.
3. **External DOP** comes from the same eq. 8, forced by the internal DOP on the ceiling at the downstream exit. Crosswind replaces C by C + V_wind.
- **Wall-jet velocity** (eqs. 9–10): Mach number from isentropic expansion of p_02 to ambient, multiplied by p̄_c as an empirical correction. The correction stands for the mass flux not yet filling the duct floor early on, which retards the front. The local sound speed a_j varies linearly from the vertical-plume value at the duct entrance to ambient at the exit; water mixing would change it (p. 484).
- **Source strength** (eq. 11): the shock-tube parameter u_k is built from u_wj/a_j and weighted by the Prandtl–Meyer rate normalised by its maximum. It is substituted into eq. 4 to give the local pulse histories over the wall-jet boundary; the source term in eq. 8 is again the derivative, ∝ p̈_c (p. 484).
- The duct-flow model was hypothesised from STS-3 pressures under the MLP and from WTR subscale duct-ceiling data. Water injection is not included, and "no effort is made to achieve an exact simulation" (p. 483).

**Inputs and numerics** (p. 484).
- Inputs: the pad geometry, the observer position and the measured p_c(t) of the motor.
- ṗ_c from numerical differentiation of digitised p_c gives spurious spikes, which must be truncated. The alternative is to smooth the differentiated data, digitise the smoothed ṗ_c and integrate back to p_c. Because the output goes as p̈_c, this preprocessing directly shapes the predicted waveform (my remark, consistent with p. 485).
- The model is deterministic and works on one transient in the time domain; no averaging, spectra or statistics are used.
- The multiplying factors K, K_f and the length L (eqs. 4, 8) are not given numerically, and how they were set is not stated (my observation). The amplitude predictions may therefore carry a calibration that the paper does not show.

## Key equations
Rebuilt from the rendered pages (p. 482–484); the text layer is unusable for these.

- **Jet velocity rate** (eq. 1, p. 482): $\dfrac{du_j}{dt}=0.5\,a^*\sqrt{\bar T_c(\gamma+1)M_j^2/2m_j}\left[\dfrac{d\ln T_c}{dt}+\left(\dfrac{1}{m_j}\right)\dfrac{d\ln M_j^2}{dt}\right]$, with $a^*=\sqrt{2\gamma RT_{cm}/(\gamma+1)}$, $m_j=1+0.5(\gamma-1)M_j^2$, $\bar T_c=T_c/T_{cm}$.
- **Jet Mach number rate** (eq. 2, p. 482): $\dfrac{dM_j^2}{dt}=p^*\,\bar p_c^{(\gamma-1)/\gamma}\left(\dfrac{1}{\bar p_c}\right)\dfrac{dp_c}{dt}$, with $p^*=(2/\gamma)(p_{cm}/p_e)^{(\gamma-1)/\gamma}$ and $\bar p_c=p_c/p_{cm}$.
- **Prandtl–Meyer rate of the wall-jet boundary** (eq. 3, p. 482):
  $\dfrac{d\nu}{dt}=\dfrac{\sqrt{\bar p(\gamma-1)[2-\bar p(\gamma+1)]}}{2\gamma(1-\bar p)}\left[1-\dfrac{\gamma(M_j^2-1)^2\,p^*p_c^{(\gamma-1)/\gamma}}{M_j^2m_j(2\gamma M_j^2-\gamma+1)}\right]\dfrac{d\ln p_c}{d\tau}$, with $\bar p=(p_4/p_{02})^{(\gamma-1)/\gamma}$.
- **Piston velocity** (eq. 4, p. 482): $u_p=\dfrac{d\Delta}{d\tau}+KL\dfrac{d\nu}{d\tau}$ (Δ wall-jet thickness, L a characteristic length, K a multiplying factor).
- **Compression wave** (eq. 5, p. 482): $p_4/p_e-1=0.5\left[u_k+\sqrt{u_k^2+8\gamma u_k/(\gamma+1)}\right]$, with $u_k=0.5\gamma(\gamma+1)(u_p/a_e)^2$ (nomenclature).
- **Expansion wave** (eq. 6, p. 483): $p_4'/p_4=\left[1-0.5(\gamma-1)(u_4-u_p)/a_4\right]^{2\gamma/(\gamma-1)}$ for $u_p<u_4$, with $u_4$, $p_4$ taken at the last compression wave before the piston (contact surface) decelerates.
- **Arrival delay at the duct opening** (eq. 7, p. 483): $(\tau_4)_i=t_i+(x_d/u_j)_i+(x_u/u_s)_i$ for the i-th event.
- **External propagation from the plane source** (eq. 8, p. 483):
  $\dfrac{p(t,r,x_0,z_0)}{p_e}=\dfrac{K_f}{C}\int_{\psi_0}^{\psi}\left\{\int_{\eta_L}^{\eta_R}\dfrac{(\Delta p(\eta)/p_e)'_{r=0}\,d\eta}{\sqrt{(t-\eta)^2-(r/C)^2\sec^2\psi}}\right\}r\sec^2\psi\,d\psi$,
  with $\eta=t-(r/C)\sec\theta$ and $t-(r/C)\sqrt{1+\tan^2\theta+\tan^2\psi}$ as the limits, $\theta=\arctan[(z-z_0)/r]$, $\psi=\arctan[(x-x_0)/r]$. For DOP, C is replaced by $v_c$ (eq. 12) inside the duct and by $C+V_{wind}$ outside.
- **Wall-jet Mach number and velocity** (eqs. 9–10, p. 484): $M_{wj}=\bar p_c\sqrt{2[(p_{02}/p_e)^{(\gamma-1)/\gamma}-1]/(\gamma-1)}$; $u_{wj}=M_{wj}a_j$.
- **DOP source parameter** (eq. 11, p. 484): $u_k=0.5\gamma(\gamma+1)\left(\dfrac{u_{wj}}{a_j}\right)^2\left[\dfrac{d\nu/d\tau}{(d\nu/d\tau)_{max}}\right]$.
- **Convection speed of the converging waves** (eq. 12, p. 484): $v_c=C+u_{wj}\cos\alpha$, $\alpha=\arccos\left[-(x-x_0)/\sqrt{r^2+(x-x_0)^2+z_c^2}\right]$.

> **Checks (my derivations, not in the paper).**
> - Eq. 5 is the standard piston-driven shock relation: substituting $u_k$ gives $p_4/p_e-1=\gamma\frac{u_p}{a_e}\left[\frac{\gamma+1}{4}\frac{u_p}{a_e}+\sqrt{\left(\frac{\gamma+1}{4}\right)^2\frac{u_p^2}{a_e^2}+1}\right]$. ✓ Eq. 6 is the simple-wave expansion relation. ✓
> - Eq. 1: with $u_j^2=a^{*2}\frac{\gamma+1}{2}\bar T_c M_j^2/m_j$ and $d\ln m_j=\frac{(\gamma-1)M_j^2}{2m_j}d\ln M_j^2$, one gets $du_j/dt=\tfrac12u_j[d\ln T_c/dt+(1/m_j)d\ln M_j^2/dt]$, i.e. eq. 1 with the square root spanning $\bar T_c(\gamma+1)M_j^2/2m_j$. ✓ (The extent of the radical is hard to see on the scan.)
> - Eq. 2: isentropic expansion of p_c to p_e gives $dM_j^2/dt=p^*\bar p_c^{(\gamma-1)/\gamma}\,d\ln p_c/dt$. The printed $(1/\bar p_c)\,dp_c/dt$ is dimensionally inconsistent unless the bar sits on both or neither; verify on p. 482.
> - Eq. 3: the first bracket is exactly $d\nu/d\ln p_{02}$ for isentropic expansion from $p_{02}$ to a fixed $p_4$. The second bracket is $d\ln p_{02}/d\ln p_c$, using the normal-shock total-pressure loss $d\ln(p_{02}/p_c)/dM^2=-\gamma(M^2-1)^2/[M^2m(2\gamma M^2-\gamma+1)]$ and eq. 2. ✓ This requires $\bar p_c^{(\gamma-1)/\gamma}$ where the scan shows $p_c^{(\gamma-1)/\gamma}$.
> - Eq. 8, as I read it: the inner integral is the two-dimensional (line-source) Green's function along z, and the outer integral sums those line sources across x with $dx=r\sec^2\psi\,d\psi$. That is a Rayleigh-type integral over the duct opening with a monopole strength ∝ d(Δp)/dt. Near a large opening this behaves like a cylindrical or planar wave and far away like a point source, as the paper states (p. 483).
> - Eq. 11 prints the normaliser as (dυ/dτ)_max; ν is meant. The nomenclature defines u_k with u_p/a_e, while eq. 11 uses u_wj/a_j for DOP.

## Data tables
**Values read from the figures** (all approximate, my readings; kPa and dB conversions are my arithmetic; time origins are shifted in Fig. 3).

| Quantity | Value | Source |
|---|---|---|
| STS-1 IOP, measured, base heat shield | +1.85 / −1.95 psi (≈ +12.8 / −13.4 kPa, ≈176 dB peak re 20 µPa) | Fig. 3, p. 483 |
| STS-1 IOP, predicted, side fuselage | +1.0 / −0.95 psi (≈ ±6.7 kPa) | Fig. 3, p. 483 |
| STS-1 N-wave length | ≈0.1 s (positive peak ≈0.16 s, trough ≈0.20 s) | Fig. 3, p. 483 |
| STS-3 predicted IOP / DOP peaks, Orbiter lower surface | ≈0.27 psi at ≈0.26 s / ≈0.33 psi at ≈0.45 s | Fig. 11, p. 486 |
| STS-3 6.4% computed IOP / DOP | ≈0.02 psid at 0.016 s / ≈0.035 psid at 0.032 and 0.052 s | Fig. 12, p. 486 |
| WTR 6.4% measured composite | peak ≈+0.1 psid at ≈0.045 s, trough ≈−0.065 psid | Fig. 13, p. 486 |
| WTR full-scale predicted IOP / DOP | ≈±0.55 psid at 0.29–0.32 s / ≈−0.42 psid at ≈0.65 s | Fig. 14, p. 486 |
| WTR 6.4% duct-ceiling DOP, measured vs predicted | ≈4.5 vs 3.5 psi (3.58 ft); ≈6.4 vs 3 psi (7.17 ft); ≈2.9 vs 2.1 psi (10.75 ft) | Fig. 10, p. 486 |
| Shuttle SRM p_c plateau; peak ṗ_c/p_cm | ≈870 psi (≈6 MPa) by ≈0.45 s; ≈9.7 s⁻¹ at ≈0.17 s, ≈4 s⁻¹ at ≈0.26 s | Figs. 7b, 8b, p. 485 |
| Tomahawk p_c peak; peak ṗ_c/p_cm | ≈1170 psi (ETR test) and ≈1440 psi (WTR test) by 0.04–0.05 s; ≈42/56 and ≈46/64 s⁻¹ | Figs. 7a, 8a, p. 485 |
| Wind-induced DOP arrival offset, WTR | 10–15 ms for 15.24 m/s | Fig. 15, p. 487 |

> **Checks (my arithmetic).**
> - Units: 1 psi = 6.895 kPa = 51.7 torr, which matches the paired torr/psi axes (e.g. 100 torr ↔ 1.93 psi in Fig. 3).
> - The Fig. 10 model stations 3.58, 7.17 and 10.75 ft are exactly 6.4% of the full-scale WTR stations 56, 112 and 168 in Fig. 16, which confirms that Fig. 16 is in feet. The first numbers printed in Fig. 10 (1.075, 2.15, 3.23) are 0.300 × the feet values, close to but not exactly metres (0.3048); verify their unit on p. 486.
> - IOP-to-DOP peak separation is ≈0.19 s for STS-3 (Fig. 11) and ≈0.36 s for the WTR (Fig. 14), a ratio of ≈1.9, consistent with the WTR duct being "almost twice as long" (p. 486).
> - Wind offset: two exits at equal distance R on opposite sides give Δt ≈ 2RV/C². With C = 340 m/s, 10–15 ms at 15.24 m/s implies R ≈ 38–57 m, a plausible exit-to-vehicle distance.
> - Transient scaling: a 6.4% model with unscaled wave and exhaust speeds needs the motor transient shortened by the same factor. The Shuttle 10–90% p_c rise (≈0.13 to ≈0.36 s, so ≈0.23 s) scales to ≈15 ms, and its peak ṗ_c/p_cm (≈9.7 s⁻¹) to ≈150 s⁻¹. The Tomahawk rise of about 25 ms and peak of about 56–64 s⁻¹ are therefore roughly 1.7–2.5 times too slow, on top of the stronger second peak. That is why IOP and DOP overlap at subscale.

## Figures worth remembering
- **Fig. 1 (p. 482):** the IOP model schematic. Plenum, exhaust jet (1), normal shock and impingement zone (2), supersonic wall jet with the accelerating or decelerating contact surface (3), the wave region driven by u_p (4) and external propagation from the MLP opening (5). Regions 3 and 4 form the shock-tube analogy.
- **Fig. 2 (p. 482):** the external propagation geometry: an observer A(r, x₀, z₀) above a plane with spherical sources spread over it.
- **Fig. 3 (p. 483):** STS-1 flight IOP against prediction, the key validation (N-wave shape and timing).
- **Fig. 4 (p. 483):** WTR subscale timing: the DOP arrives about 100 ms after the p_c rise.
- **Fig. 5 (p. 484):** the DOP model. The wall jet runs along the duct, waves converge on ceiling transducers D1–D3 at f(t − r/(C ± u_wj)), and the DOP leaves the exit at f(t − r/(C + V_wind)).
- **Fig. 6 (p. 484):** integration scheme for the internal DOP, with propagation speeds C + |u_wj cos α| upstream and C − |u_wj cos α| downstream of the measurement point.
- **Figs. 7–8 (p. 485):** p_c and ṗ_c/p_cm of the Tomahawk and Shuttle SRMs. They show why one N-wave is expected at full scale and a double wave at subscale.
- **Fig. 9 (p. 485):** ETR (open cut-outs) and WTR (covered tunnels, opposed exits) pad layouts.
- **Fig. 10 (p. 486):** duct-ceiling DOP at three stations in the WTR model, measured against predicted.
- **Figs. 11–14 (p. 486):** external IOP/DOP components and composites for STS-3 (full and model scale), the WTR model and the WTR full scale. Fig. 12 marks the "region of IOP/DOP interaction" at subscale.
- **Fig. 15 (p. 487):** right and left WTR duct DOP with a 15 m/s crosswind.
- **Fig. 16 (p. 487):** full-scale internal DOP development at quarter-length stations, ETR against WTR.

## Notation
- p_c, p_cm, p̄_c = p_c/p_cm: plenum (chamber) pressure, its maximum and its ratio; ṗ_c, p̈_c: first and second time derivatives; T_c, T_cm, T̄_c: chamber temperature terms.
- p_e: ambient pressure; p_02: stagnation pressure behind the normal shock (region 2); p_4: perturbation pressure in region 4; p̄ = (p_4/p_02)^{(γ−1)/γ}; p* = (2/γ)(p_cm/p_e)^{(γ−1)/γ}.
- M_j, u_j, m_j = 1 + 0.5(γ − 1)M_j²: exhaust jet Mach number, velocity and temperature ratio; a*: maximum exhaust sound speed; a_j: local gas sound speed in the duct; a_e: ambient sound speed.
- M_wj, u_wj: wall-jet Mach number and velocity; Δ: wall-jet thickness; ν: Prandtl–Meyer angle; u_p: piston (contact-surface) velocity; u_s: wave speed in region 4; u_k: shock-tube strength parameter.
- C: speed of sound of air; v_c: convection speed of converging waves (eq. 12); V_wind: wind speed; τ: delayed time; K, K_f, L: multiplying factors and characteristic length.
- r: height above the launch platform or DOP source; x, y, z: duct coordinates; x_d: nozzle exit to deflector; x_u: deflector to duct opening; X_D: longitudinal station on the duct ceiling; D_i: ceiling instrument locations; θ, ψ, α: angles defined in the nomenclature.
- IOP: ignition overpressure; DOP: duct overpressure; MLP: mobile launch platform; ETR/WTR: Eastern/Western Test Range; SRM: solid rocket motor; STS: Space Transportation System.

## Relevance to this project
This is the classic engineering account of Shuttle ignition overpressure; [Gee 2023](gee-2023-sls-artemis-i-far-field-noise.md) cites it for IOP (that note lists it as not yet in the library). It belongs to the user's second research area (CLAUDE.md, rocket-noise modelling). Every model on [rocket-noise-models](../Topics/rocket-noise-models.md) starts after the IOP and omits it; this paper supplies a mechanism and a reduced model for that gap.

**How it sits with the other notes**
- **Trench-directed IOP in modern launches.** The modern measurements show IOP aimed along the flame-trench exit: Artemis I ([Gee 2023](gee-2023-sls-artemis-i-far-field-noise.md), p. 4), Atlas V with a ~30 dB azimuthal spread ([Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 51), and Falcon 9 with a 2–3 Hz spectral peak ([Kellison 2026](kellison-2026-falcon-9-noise-two-campaigns.md), p. 5).
  - This paper's DOP is exactly such a wave. It is born inside the duct by the moving wall-jet front, leaves the downstream exit, and is lower in frequency and later than the direct IOP (p. 483, 487). That reading of the modern data is my link, not a claim of those papers. Those campaigns measure kilometres away, where the far field sees the exit-radiated part, whereas this paper predicts on-vehicle loads.
  - The Atlas V "whooshing" multi-cycle IOP, which the thesis puts down to trench resonance or the engine (p. 50), resembles the multi-cycle internal DOP whose period grows with duct length here (Fig. 16, p. 487). That is a candidate mechanism to test, not an established one.
- **Duct exits as sources.** The Antares static fire, where the water-quenched duct exit dominates at all frequencies ([Panda 2013](panda-2013-noise-sources-rocket-test-firings-launch-phased-array.md), p. 17), is the steady-state counterpart of DOP. The ray-traced duct reflections of [Ranow 2021](ranow-2021-acoustic-prediction-rocket-flame-deflector.md), where lengthening a duct can backfire (p. 39–47), echo the finding here that duct length changes the DOP waveform.
- **Amplitude.** STS-1 at about 13 kPa on the base heat shield agrees with the "~10 kPa" typical IOP of [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (p. 33). The RSRM horizontal static firing, with no duct, gave about 4.5 kPa peak-to-peak at 67 m ([Kenny 2009](kenny-2009-space-shuttle-srm-plume-acoustics.md), p. 11–12). The Shuttle SRM's two ṗ_c peaks about 0.09 s apart (Fig. 8b) could be checked against the extra peaks that Kenny reports after the first wave.
- **Subscale similarity.** [Tsutsumi 2015](tsutsumi-2015-epsilon-liftoff-acoustics.md) argues that subscale lift-off tests keep SPL unchanged and scale frequency with size if U_e is matched, and its note says this agrees with the Dougherty & Guest 6.4% Shuttle model (p. 7). That is the same MSFC programme as here (ref. 2; my link).
  - This paper shows the limit of that rule for the ignition phase. The motor transient must also scale with size, and the Tomahawk did not (p. 482, 486), so IOP and DOP overlap at subscale.
  - Subscale IOP programmes therefore need a scaled ignition transient (Jones 1982, ref. 8). Without one, IOP amplitudes, which grow with ṗ_c, will be underestimated (my inference from eqs. 3–5).
- **Suppression.** The water-trough covers plus exhaust water injection that cut IOP from STS-2 onwards (p. 481) belong with the Shuttle water-injection results of [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (p. 21–23). This paper adds a geometric route: a deflector that sends the plume under a covered tunnel, and wall-jet retardation against DOP (p. 485, 487).
- **Starting jets.** The shock-tube analogy ties IOP to the starting-jet physics measured with time-resolved schlieren in [Rezay Haghdoost 2020](rezay-haghdoost-2020-transient-supersonic-trailing-jet-shocklet.md). That note says those experiments report nothing about the radiated pressure, which is exactly what this model predicts.

**Modelling side**
- **Type of model.** A quasi-one-dimensional, inviscid, isentropic chain: plume, normal shock, Prandtl–Meyer wall jet, piston-driven shock tube, then linear Rayleigh-type radiation (eqs. 1–8). Its inputs are geometry and a measured p_c(t) (p. 484). It runs in seconds against hours for the CFD of the time, which gave no external field (p. 482).
- **Assumptions:** isentropic plume with no entrainment; region 1 decoupled from region 4; linear acoustics outside; linear superposition of IOP and DOP; no water; no wall friction; empirical factors (K, K_f, L, the √(area ratio) spreading factor and the p̄_c mass-flux correction) whose values are not reported.
- **Validation:** single events, compared by eye. Waveform and timing match; amplitude is not cleanly tested (Fig. 3 compares different locations, p. 483). It is unclear how the STS-3 prediction represents the suppression hardware, since the model has no water (p. 483, 486).
- **What modern simulation would add.** A transient LES or Euler computation of a starting, impinging, hot jet in a duct, with an acoustic propagation stage, could test the central hypothesis: is the wall-jet thickness growth rate the main wave generator? The alternatives in the paper's refs. 5–8 differ. The LES survey of [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) (p. 29–32) is about lift-off noise, and its note mentions no ignition-transient simulation.

**Methods and data for the lab workflow (CLAUDE.md)**
- **One deterministic transient.** Everything in the paper is a single non-stationary event analysed in the time domain. Block-averaged methods such as Welch spectra, SPOD and BMD do not apply to a single start; they would need an ensemble of repeated starts, phase-locked to ignition.
  - Instantaneous methods suit such data better: wavelets or Hilbert envelopes on the pressure records, and feature tracking of the wall-jet front in time-resolved schlieren.
  - The SPOD → reconstruction → HPOD pipeline would only fit a periodic phase, such as the multi-cycle DOP ringing.
- **The paper's unsolved data problem is separation:** "no simple method of wave separation is available" for overlapping IOP and DOP (p. 486–487). Two things could do it (my suggestions):
  - A small microphone array with cross-correlation or time-domain beamforming, since IOP comes from below the vehicle and DOP from the lateral duct exits.
  - A time–frequency decomposition, since the IOP N-wave (≈0.1 s at full scale) is shorter than the DOP.
- **Preprocessing sensitivity.** The model's output goes as p̈_c, so numerical differentiation and smoothing of the input p_c(t) control the predicted waveform (p. 484–485). Any lab analogue that differentiates measured pressure histories, for instance to get dp/dt of a starting jet, inherits the same sensitivity.
- **Lab experiment it suggests.** A shock-tube-driven starting underexpanded jet impinging into a model duct, filmed with time-resolved schlieren and recorded with synchronised microphones, would measure the wall-jet front speed u_wj(t) and thickness growth directly. That would test eqs. 4 and 9–12. It connects the group's impinging-jet work ([impinging-jets-and-edge-tones](../Topics/impinging-jets-and-edge-tones.md)) to the rocket-noise area, though here the wave is a one-off, not a feedback tone.
- **PyFR staging LES.** Not directly relevant: that LES is a steady-state, cold, free jet.

**Related works cited, candidates for `/add-paper`** (none held or listed in `Papers_to_get.md`):
- The 1982 JANNAF 13th Plume Technology Meeting papers (CPIA Pub. 357): Lai & Laspesa (STS lift-off IOP against subscale tests); Dougherty, Nesman & Guest (Shuttle SRB IOP suppression test programme and flight results); Ikawa & Laspesa (the full IOP derivation); Li (numerical simulation of SRM start-up transients); Simon (Titan III 7.5% model and flight IOP correlation); Jones (scaling of ignition start-up transients for Shuttle IOP); Fansler & Schmidt (blast overpressure from a transient exhaust plume).
- The 1982 IOP Working Group numerical studies: Rapagnani & Lutton; Wilmoth & Cline.
- The Gee 2023 note adds Nance & Liever (2015) on IOP, a modern computational source.
