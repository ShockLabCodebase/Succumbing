---
key: "papamoschou-1988-compressible-turbulent-shear-layer"
title: "The compressible turbulent shear layer: an experimental study"
authors: ["Papamoschou, D.", "Roshko, A."]
year: 1988
type: "article"
venue: "JFM 197, 453–477"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "197", "pages": "453--477"}
doi: "10.1017/S0022112088003325"
arxiv: ""
pdf: "Papamoschou-Roshko_1988_The-Compressible-Turbulent-Shear-Layer-An-Experimental-Study.pdf"
version: "published"
unverified: ["DOI from the standard citation, not printed on the scan"]
group: false
facility: "Caltech GALCIT two-stream supersonic shear-layer facility"
data: ["schlieren", "pressure-probe"]
methods: ["vortex-sheet", "statistics"]
flow: ["shear-layer", "supersonic"]
phenomena: ["coherent-structures", "compressibility-effects"]
params: {"M_c1": "0.07–1.81", "M_1": "1.6–3.4", "ρ₂/ρ₁": "0.24–9.2", "U₂/U₁": "0.04–0.93", "gases": "He, N₂, Ar"}
topics: ["jet-noise-mechanisms", "linear-models", "rocket-noise-models"]
related: ["lubert-2022-supersonic-jet-noise-launch-vehicles-review", "mathews-2021-falcon-9-far-field-noise", "kellison-2026-falcon-9-noise-two-campaigns", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn", "tam-1995-supersonic-jet-noise", "mancinelli-2019-screech-prediction-upstream-modes"]
cites: []
summary: "Defines the convective Mach number M_c (U_c from an isentropic saddle-point model); He/N₂/Ar two-stream layers, M_c1 0.07–1.81: normalised growth falls to ≈0.2 by M_c ≈ 0.8"
---
# The compressible turbulent shear layer: an experimental study

- **Authors:** D. Papamoschou, A. Roshko (Graduate Aeronautical Laboratories, California Institute of Technology)
- **Source:** J. Fluid Mech. 197, 453–477 (1988), doi:10.1017/S0022112088003325 (DOI from the standard citation, not printed on the scan). Received 2 Sep 1987, revised 20 May 1988.
- **PDF:** `References/Paper_PDFs/Papamoschou-Roshko_1988_The-Compressible-Turbulent-Shear-Layer-An-Experimental-Study.pdf` (25 pp.). A scanned copy (Caltech) with an OCR text layer; the OCR drops every displayed equation and garbles Table 1, so equations and the table below were transcribed from page renders.
- **Page refs:** PDF page numbers. Journal page = PDF page + 452 (PDF p. 1 = p. 453).
- **Tags:** convective Mach number, compressible mixing layer, plane shear layer, growth-rate reduction, compressibility effects, large-scale structures, schlieren (20 ns spark), Pitot-thickness, two-stream supersonic facility, heterogeneous gases (He, N₂, Ar), density ratio, velocity ratio, vortex-sheet stability, Bogdanoff, Gropengiesser, oblique waves, Mach wave radiation (background)

## Summary
The paper defines the **convective Mach number** M_c, the Mach number of each free stream measured in a frame moving with the large structures, and shows that it is the right parameter for the compressibility effect on shear-layer growth (p. 1, 16). A new two-stream blow-down facility mixed similar or dissimilar gases (He, N₂, Ar) at independently chosen Mach numbers. Ten cases covered free-stream Mach numbers 0.2–4 and M_c1 = 0.07–1.81 (p. 3, 8). Growth rates came from Pitot-pressure surveys at several streamwise stations, and 20 ns spark schlieren showed very thin layers with large-scale structures in every case (p. 8). Raw growth rates plotted against M_c1 show no clear trend (Fig. 14), but once each is divided by the incompressible growth rate at the same velocity and density ratios they collapse onto one curve. That curve falls steeply from 1 to about 0.2 by M_c1 ≈ 0.8 and then stays flat (p. 18–20). On the modelling side, the authors' own compressible vortex-sheet stability calculation, and Gropengiesser's finite-thickness results, show the same behaviour: M_c1 collapses the amplification rates across density ratios, which M₁ does not (p. 13–15). They interpret the reduction as energy radiated away from the layer as M_c rises (p. 21–22).

## Key findings
- **Compressibility, not density ratio, controls the reduction.** The authors recall that Brown & Roshko (1974) found density effects at low speed much too small to explain the thin supersonic layers (p. 2). Here, the lab-frame M₁ is a poor parameter: Case 1 has M₁ = 1.6 but U₂/U₁ = 0.93, so the velocity difference is low subsonic (p. 2, 13).
- **Vortex sheet (theory)** (p. 14–15, Fig. 10):
  - The normalised amplification rate c_i/c_r falls with M₁ and is zero beyond a critical M₁. The critical M₁ depends strongly on ρ₂/ρ₁: about 2.2, 3.1 and 5.8 for ρ₂/ρ₁ = 10, 1, 0.1 (read from Fig. 10a).
  - Plotted against M_c1 the three curves nearly collapse, with critical M_c1 in a narrow band of about 1.5–2.1 (read from Fig. 10b). The same collapse holds when U₂/U₁ or γ₂/γ₁ vary (p. 15). M_c2 is close to M_c1 for the vortex sheet.
- **Finite-thickness layer (Gropengiesser 1970)** (p. 15, Fig. 11): for M₂ = 0 and uniform density, the maximum spatial amplification rate falls steeply from M₁ ≈ 0.3 to about 0.05 of its incompressible value near M₁ ≈ 2.2. It then flattens and never reaches zero (values read from Fig. 11). Blumen, Drazin & Billings (1975) also found no complete stabilisation (p. 15).
- **Collapse of the measured growth rates** (p. 19–20, Fig. 16):
  - The normalised Pitot growth rate δ′_pit/δ′_pit,0 is about 1 at M_c1 = 0.26. It falls to about 0.2 by M_c1 ≈ 0.6–0.8 and stays at roughly one fifth of the incompressible value up to 1.81.
  - The decline begins at subsonic M_c1 (about 0.25 here), not abruptly at sonic conditions as earlier views (Cosner 1976) suggested (p. 20). The reduction is essentially complete before M_c becomes supersonic, so it happens before shocks could form in the convective frame (p. 21). The paper cites "figure 15" for this; it should read Fig. 16.
  - The authors propose δ′/δ′₀ ≈ C(M_c1), with C universal over a wide range of U₂/U₁ and ρ₂/ρ₁, but caution that there are few points and the incompressible model is approximate (eq. 15, p. 19).
- **Earlier one-stream data, re-normalised** (p. 21, Fig. 17): vorticity-thickness growth from Maydew & Reed, Sirieix & Solignac, Birch & Eggers and Ikawa & Kubota (all air, M₂ = 0, as compiled by Bogdanoff 1983) gives the same shape. It levels off at about 0.4, not 0.2, and starts falling at M_c1 ≈ 0.4, not 0.25. The authors suggest δ_ω/δ_pit may depend on density ratio and Mach number.
- **Large structures persist** (p. 8): every case with usable schlieren (8 of 10) shows large-scale structures. The layer becomes turbulent immediately downstream of the splitter-plate trailing edge, and spreads at a fraction of the usual subsonic rate.
- **Incompressible growth model** (p. 18–20, Fig. 15): assuming growth in the convective frame scales with ΔU/U_c gives δ′_vis,0 = 0.17 ΔU/U_c (eq. 13). It fits Brown & Roshko (1974) and Dimotakis & Brown (1976) visual growth rates for ρ₂/ρ₁ = 7, 1/7 and 1.
- **Interpretation** (p. 21–23):
  - For the vortex sheet, the perturbation's decay rate away from the sheet falls as M_c1 rises and is zero at the critical value, so the disturbance radiates rather than staying near the sheet. The authors propose the same energy loss, acting through less vortex pairing (Morkovin 1987), as the cause of the reduced turbulent growth.
  - A finite-thickness layer always contains a sublayer that is subsonic relative to U_c (Fig. 18). The authors link this to the layer remaining unstable at any Mach number.
  - Oblique waves at angle β reduce the effective convective Mach number, M_c1,eff = M_c1 cos β (Bogdanoff 1983), so a layer with M_c1 > 1 can behave subsonically. The authors argue the observed structures are quasi-2D because the layer's aspect ratio is about 10 and the spanwise-integrated schlieren still shows distinct structures. They call this a "weak argument" needing experiments (p. 23).
- **Facility limitation** (p. 7, 23): static pressure rose 20–50% just downstream of the trailing edge, attributed to the shear-layer displacement thickness acting like a wedge (entropy rise from mixing). Diverging walls kept the downstream two-thirds at nearly constant pressure, where growth rates were measured. The authors suspect this effect may cap the achievable far-field Mach number, and hence M_c.

## Setup / method
- **Facility** (p. 3–5, Fig. 2): two-stream blow-down supersonic tunnel with two independent supplies from 2000 psi bottle manifolds, regulated to 15–100 psia and switched by fast solenoid valves, exhausting to an evacuated tank. A replaceable contoured centrebody, designed by the method of characteristics, forms two supersonic nozzles. Centrebodies are 50–61 mm long from throat to trailing edge, with a 0.3 mm thick trailing edge.
- **Test section** (p. 4): 23 mm high at the nozzle exit, 57 mm wide and 230 mm long. Upper and lower walls adjustable within 3° and set diverging at 1–2°. Glass windows from throat to end.
- **Run conditions** (p. 6–7):
  - Static pressure about 1 psia; total pressures 15–80 psia; runs of 1.5–2.0 s.
  - Total pressures tuned by trial to equalise nozzle-exit static pressures and smooth the wall-pressure distribution (12 wall taps, Scanivalve, Setra 204 transducers).
  - In two cases the low-speed nozzle runs subsonic as a slowly diverging diffuser.
  - Local free-stream M from the Rayleigh Pitot formula in the constant-pressure region, so M < ideal M_e.
  - Total temperature close to room value.
  - Unit Reynolds number about 10⁴ mm⁻¹. Laminar trailing-edge boundary layers with high-speed momentum thickness θ ≈ 0.05 mm (compressible Thwaites). Richardson number about 10⁻⁷, so buoyancy is negligible.
- **Diagnostics:**
  - **Schlieren** (p. 4, Fig. 3): conventional folded system, knife edge parallel to the flow, Xenon N-787B spark of 20 ns, 100 mm beam. The optics stay fixed and the channel traverses on rails. Upstream and downstream views come from different runs at the same conditions. These are single instantaneous images, not time-resolved.
  - **Pitot probe** (p. 4, Fig. 4): flattened inlet, pivoting at constant speed through the layer, incidence never above 10°.
  - **Pitot thickness** δ_pit (p. 4, Fig. 5): width of the Pitot-pressure profile from 5% to 95% of the free-stream difference. If the profile has a wake-like defect, each side is measured to 95% of its difference from the minimum.
  - A microprocessor (Intel 8085) sequences flow, photography, traverse and recording.
- **Growth-rate extraction** (p. 8–12, Fig. 9):
  - At least four δ_pit points beyond x = 75 mm, where x/θ₁ > 1000 and x_eff/θ₁ > 500 with x_eff = x(1 − U₂/U₁). Case 1 is a wake flow and is excluded.
  - Least-squares straight-line fit. The fit's standard deviation is below 5% of the growth rate, thickness accuracy is ±5%, and the overall accuracy is about 10%.
- **Thickness conversion** (p. 12–13): δ_pit/δ_vis = 0.8 is assumed. It averages the tanh-profile value (0.72, from δ_pit/δ_ω = 1.44 and δ_ω ≈ 0.5 δ_vis) with values from Brown & Roshko (0.90) and Konrad (0.83). The authors admit this is somewhat arbitrary.
- **Stability modelling** (p. 13–15):
  - The authors' own compressible **vortex-sheet** analysis (Papamoschou 1986 thesis): inviscid, temporal, 2D disturbances, small amplitude. The growth rate c_i is evaluated in the frame moving at c_r, and c_i/c_r is used as a spatial amplification-rate proxy.
  - **Finite-thickness** results are quoted from Gropengiesser (1970, NASA TT-F-12786), not computed here.
  - All analysis is limited to 2D (streamwise-propagating) disturbances, because the experiment could not detect oblique ones (p. 13).
- **No time-resolved or modal analysis:** the flow data are mean Pitot profiles and single schlieren snapshots. Convection velocity U_c is **modelled** (isentropic stagnation-point argument), never measured.

## Key equations
- Growth rate for a perfect gas, Reynolds-number independent (eq. 1, p. 13): $\delta' = f\!\left(\dfrac{U_2}{U_1},\dfrac{\rho_2}{\rho_1},\dfrac{\gamma_2}{\gamma_1},M_1\right)$, with δ′ = dδ/dx.
- Equal static pressure links the free-stream Mach numbers (eq. 2, p. 13): $M_2 = M_1\dfrac{U_2}{U_1}\left(\dfrac{\rho_2\gamma_1}{\rho_1\gamma_2}\right)^{1/2}$.
  Check: Case 7 (Ar/Ar), 3.1 × 0.13 × √0.24 = 0.20, matching Table 1.
- Vortex-sheet convective Mach number (eq. 3, p. 14): $M_{c_1} = \dfrac{U_1 - c_r}{a_1}$.
- Turbulent convective Mach numbers (eq. 4, p. 16): $M_{c_1} = \dfrac{U_1 - U_c}{a_1},\qquad M_{c_2} = \dfrac{U_c - U_2}{a_2}$.
- Equal total pressure at the saddle point between structures, in the convective frame, with equal static pressures and steady flow (eq. 5, p. 16):
  $$\left(1+\frac{\gamma_1-1}{2}M_{c_1}^2\right)^{\frac{\gamma_1}{\gamma_1-1}} = \left(1+\frac{\gamma_2-1}{2}M_{c_2}^2\right)^{\frac{\gamma_2}{\gamma_2-1}}$$
- Approximation for moderate M_c and similar γ (eq. 6, p. 16): $M_{c_2} = \left(\dfrac{\gamma_1}{\gamma_2}\right)^{1/2} M_{c_1}$. M_c1 and M_c2 differ by only 9% for γ = 7/5 against 5/3 (p. 17).
- Convection velocity (eq. 7, p. 17):
  $$\frac{U_c}{U_1} = \frac{1 + \dfrac{U_2}{U_1}\left(\dfrac{\rho_2}{\rho_1}\right)^{1/2}}{1+\left(\dfrac{\rho_2}{\rho_1}\right)^{1/2}}$$
  For γ₁ = γ₂ this is the sound-speed-weighted average (eq. 8, p. 17): $U_c = \dfrac{a_2U_1 + a_1U_2}{a_1+a_2}$. The authors note eqs. 7–8 are actually more accurate for incompressible flow.
- Hypothesised correlation (eq. 9, p. 17): $\delta' = f\!\left(\dfrac{U_2}{U_1},\dfrac{\rho_2}{\rho_1},\dfrac{\gamma_2}{\gamma_1},M_{c_1}\right)$.
- Normalised growth rate (eq. 10, p. 18): $\dfrac{\delta'}{\delta'_0} = \dfrac{f(U_2/U_1,\rho_2/\rho_1,M_{c_1})}{f(U_2/U_1,\rho_2/\rho_1,M_{c_1}=0)}$.
- Incompressible model (eqs. 11–14, p. 18–19): $\delta'_0 \sim \Delta U/U_c$ (11); for uniform density $\delta'_0 \sim (U_1-U_2)/(U_1+U_2)$ (12);
  $$\delta'_{\mathrm{vis},0} = 0.17\,\frac{\Delta U}{U_c} = 0.17\,\frac{\left[1-\dfrac{U_2}{U_1}\right]\left[1+\left(\dfrac{\rho_2}{\rho_1}\right)^{1/2}\right]}{1+\dfrac{U_2}{U_1}\left(\dfrac{\rho_2}{\rho_1}\right)^{1/2}}\quad(13),\qquad \delta'_{\mathrm{pit},0} = 0.14\,[\,\cdot\,]\quad(14)$$
  Eq. 14 has the same bracket as eq. 13, with 0.14 ≈ 0.8 × 0.17. For vorticity thickness the constant becomes 0.085 (p. 21).
- Universal-curve hypothesis (eq. 15, p. 19): $\delta'/\delta'_0 \approx C(M_{c_1})$.
- Oblique disturbances (unnumbered, p. 23): $M_{c_1,\mathrm{eff}} = M_{c_1}\cos\beta$.
- **Jet into still air, by my derivation (not in the paper):** with U₂ = 0 and γ₁ = γ₂, eq. 8 gives U_c = U_j a_∞/(a_j + a_∞), so M_c1 = M_c2 = U_j/(a_j + a_∞). This is the "supersonic instability-wave" M_c in [kellison-2026](kellison-2026-falcon-9-noise-two-campaigns.md) Table 3 (2.46 for Falcon 9). The Oertel M_CO = (U_j + ½a_j)/(a_j + a_∞) used in [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) and [mathews-2021](mathews-2021-falcon-9-far-field-noise.md) is larger by ½a_j/(a_j + a_∞).

> Equations were transcribed from 110 dpi renders of PDF p. 13–19 and 23 because the OCR text layer drops them. To verify against the PDF:
> - The square-root exponents in eqs. 2, 6 and 7 (rendered small).
> - The Richardson number is printed as −gΔρ δ_pit/(ρ̄ΔU) (p. 7). Dimensionally it should have ΔU², so this is probably a typesetting slip.
> - Eqs. 2 and 7 were checked by recomputing Table 1 (see below).

## Data tables
**Run conditions** (Table 1, p. 8). Subscript 1 is the high-speed side. M_e is the ideal nozzle-exit Mach number; M is measured in the constant-pressure region.

| Case | Gas 1 | M_e1 | M₁ | Gas 2 | M_e2 | M₂ | ρ₂/ρ₁ | U₂/U₁ | M_c1 |
|---|---|---|---|---|---|---|---|---|---|
| 1 | N₂ | 1.9 | 1.6 | Ar | 4.0 | 3.3 | 4.4 | 0.93 | 0.07 |
| 2 | Ar | 4.0 | 3.4 | Ar | 2.0 | 1.8 | 0.43 | 0.81 | 0.26 |
| 3 | N₂ | 3.3 | 3.1 | N₂ | 1.9 | 1.7 | 0.54 | 0.74 | 0.33 |
| 4 | N₂ | 3.0 | 2.8 | Ar | 3.0 | 2.6 | 1.8 | 0.75 | 0.39 |
| 5 | N₂ | 3.5 | 3.2 | Ar | 2.3 | 2.1 | 1.2 | 0.67 | 0.55 |
| 6 | He | 2.3 | 1.7 | N₂ | 3.5 | 3.0 | 9.2 | 0.52 | 0.64 |
| 7 | Ar | 4.0 | 3.1 | Ar | 0.2 | 0.2 | 0.24 | 0.13 | 0.89 |
| 8 | He | 3.0 | 2.6 | N₂ | 3.0 | 2.8 | 5.5 | 0.42 | 1.05 |
| 9 | He | 4.0 | 3.4 | N₂ | 1.9 | 1.6 | 2.2 | 0.29 | 1.44 |
| 10 | He | 4.0 | 3.1 | Ar | 0.3 | 0.3 | 2.4 | 0.04 | 1.81 |

> Check: recomputing M_c1 = M₁(1 − U_c/U₁) with eq. 7 reproduces the table to ±0.01 for every case except Case 6 (He/N₂), which gives 0.61 against 0.64. That gap is expected because eq. 7 is the equal-γ approximation, while the paper says it used eqs. 4 and 7 (p. 17). Verify Case 6 against the PDF.

**Normalised growth rates** (read from Fig. 16, p. 20; Case 1 excluded). δ′_pit,0 is my calculation from eq. 14. δ′_pit is the product of the two, and is consistent with the scatter in Fig. 14 (p. 19) to within reading accuracy.

| Case | M_c1 | δ′_pit/δ′_pit,0 (Fig. 16) | δ′_pit,0 (eq. 14) | δ′_pit (product) |
|---|---|---|---|---|
| 2 | 0.26 | ≈ 1.0 | 0.029 | ≈ 0.029 |
| 3 | 0.33 | ≈ 0.78 | 0.041 | ≈ 0.032 |
| 4 | 0.39 | ≈ 0.78 | 0.041 | ≈ 0.032 |
| 5 | 0.55 | ≈ 0.5 | 0.056 | ≈ 0.028 |
| 6 | 0.64 | ≈ 0.2 | 0.105 | ≈ 0.021 |
| 7 | 0.89 | ≈ 0.2 | 0.171 | ≈ 0.034 |
| 8 | 1.05 | ≈ 0.27 | 0.137 | ≈ 0.037 |
| 9 | 1.44 | ≈ 0.17 | 0.173 | ≈ 0.030 |
| 10 | 1.81 | ≈ 0.2 | 0.323 | ≈ 0.065 |

> The Fig. 16 values are read by eye and the assignment of points to cases is by M_c1 position; verify against the PDF before quoting. The paper does not tabulate measured growth rates.

## Figures worth remembering
- **Fig. 5 (p. 6):** definition of Pitot thickness for monotonic and wake-defect profiles.
- **Fig. 6 (p. 7):** Case 6 wall pressure, showing the rise downstream of the trailing edge, the plateau and a final jump from the diffuser.
- **Fig. 7 (p. 9–10):** spark schlieren of Cases 1, 3, 4, 6, 7, 8 and 9 (upstream and downstream halves). They show very thin layers and large-scale structures.
- **Fig. 9 (p. 12):** δ_pit(x) with least-squares lines for all ten cases.
- **Fig. 10 (p. 14):** vortex-sheet amplification rate against M₁ (a) and M_c1 (b) for ρ₂/ρ₁ = 0.1, 1, 10. This is the theoretical case for M_c.
- **Fig. 11 (p. 15):** Gropengiesser's finite-thickness maximum spatial amplification rate against M₁, with its non-zero plateau.
- **Fig. 12 (p. 16):** large structures in lab and convective frames, with the saddle-point streamlines (after Coles 1981) behind eq. 5.
- **Fig. 13 (p. 17):** M_c1 against M₁ and M₂ for N₂–N₂ and He–N₂ at uniform total temperature.
- **Fig. 14 (p. 19):** raw δ′_pit against M_c1, showing no trend; growth even rises at high M_c1.
- **Fig. 15 (p. 20):** linear fit δ′_vis = 0.17 ΔU/U_c to incompressible data.
- **Fig. 16 (p. 20):** the main result, normalised δ′_pit/δ′_pit,0 against M_c1.
- **Fig. 17 (p. 21):** the same normalisation applied to earlier one-stream vorticity-thickness data.
- **Fig. 18 (p. 22):** velocity and sound-speed profiles in the convective frame, with supersonic–subsonic–supersonic zones across the layer.

## Notation
- Subscript 1: high-speed stream; 2: low-speed stream. U, ρ, γ, a, M: velocity, density, specific-heat ratio, sound speed and Mach number.
- U_c: convective velocity of the large structures. c = c_r + i c_i: complex phase speed of a vortex-sheet wave. α_i: spatial amplification rate (Fig. 11).
- M_c1, M_c2: convective Mach numbers (eq. 4). M_c1,eff: effective value for oblique waves at angle β.
- δ_pit, δ_vis, δ_ω: Pitot, visual and vorticity thickness. δ′ = dδ/dx. Subscript 0: incompressible value at the same U₂/U₁ and ρ₂/ρ₁.
- θ: trailing-edge boundary-layer momentum thickness. x_eff = x(1 − U₂/U₁).
- M⁺: Bogdanoff's (1983) reference Mach number, the forerunner of M_c (p. 13).
- Not to be confused with M_CO (Oertel) or M_c = κU_e/c_a in the rocket-noise notes; see Key equations.

## Relevance to this project
The user's lab work centres on resonance and feedback in supersonic jets, where the shear layer carries the KH wavepackets that drive screech, impingement tones and Mach wave radiation (CLAUDE.md). This paper is the origin of the convective Mach number used throughout both research areas.

- **Shear-layer growth in lab jets:** the screech and impinging-jet facilities run at jet M_j ≈ 1.1–1.6 into still air. With U₂ = 0 and γ equal, M_c = U_j/(a_j + a_∞) (my derivation above). For an unheated jet (total temperature at ambient) this gives M_c ≈ 0.52 at M_j = 1.1 and ≈ 0.68 at M_j = 1.5 (my calculation), on the steep part of Fig. 16. So the shear-layer growth rate, and the potential-core length and shock-cell decay that depend on it, should be noticeably below incompressible scaling. This matters when building parallel or PSE base flows for linear stability models such as [nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md) or [nogueira-2021-wavepacket-modulation-shock-containing-jets](nogueira-2021-wavepacket-modulation-shock-containing-jets.md) from measured mean flows.
- **Convection speed is modelled, not measured:** eq. 7 assumes isentropic recovery at a saddle point. Time-resolved schlieren gives U_c directly: run SPOD, take the leading mode at a tone or broadband St, Fourier transform in x (as in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md)) and read the phase speed. Comparing that with eq. 7 for the group's jets would test the model; later literature (not in this paper) found measured U_c often departs from the isentropic value at high M_c. For non-time-resolved PIV, a POD pair's complex mode gives the same phase-speed estimate at a single frequency. Neither approach tracks changes in U_c over time; the SPOD → reconstruction → Hilbert POD pipeline ([raiola-2025](raiola-2025-hilbert-pod.md)) could give instantaneous wavenumber and phase speed if the structures' convection is intermittent.
- **Large structures stay coherent at high M_c:** the schlieren show large structures even at M_c1 ≈ 1.8 (p. 8), supporting a wavepacket description of supersonic shear layers. The 2D-versus-oblique question (p. 23) is relevant to helical and flapping screech modes and to non-axisymmetric nozzles, where oblique waves lower the effective M_c.
- **Rocket-noise link:**
  - Mach wave radiation directivity is θ_pk = cos⁻¹(1/M_c), and the question is which M_c to use. [lubert-2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) and [mathews-2021](mathews-2021-falcon-9-far-field-noise.md) find the Oertel M_CO works best for rockets (≈64–65° peaks). The Papamoschou–Roshko value, U_j/(a_j + a_∞), is the middle ("supersonic") member of the Tam & Hu family in [kellison-2026](kellison-2026-falcon-9-noise-two-campaigns.md): 2.46 for Falcon 9, which gives 66°, closest of the five to the measured 64°. Oertel's M_CO exceeds it by ½a_j/(a_j + a_∞), a gap that grows with a_j/a_∞, so it is large for hot rocket plumes and small for the lab's cold jets.
  - In κ form (U_c = κU_j), the P&R model gives κ = a_∞/(a_j + a_∞). With the Falcon 9 values in mathews-2021 (c_j = 898, c_a = 340 m/s) that is κ ≈ 0.27, close to the empirical 0.31 rockets need and far below the 0.6–0.85 of lab jets (lubert-2022). This is my calculation, not in any of these papers.
  - The 80% growth-rate reduction at high M_c implies longer supersonic cores, which bears on the 17–22 D_e source locations in the rocket-noise literature. See also [mathews-2025-thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md) on convectively supersonic structures near the core.
- **Modelling side:** the vortex-sheet stability argument (Fig. 10) is the same model family as the cylindrical vortex-sheet used for guided jet modes in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) and [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md). The key caveat here is that the vortex sheet stabilises completely above a critical M_c, while finite-thickness layers keep a subsonic sublayer and stay unstable (p. 15, 22–23). So vortex-sheet KH growth rates at high M_c should not be trusted. [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md) covers KH in M_j = 1.5 jets with a finite-thickness resolvent model.
- **Method dependence:** the paper uses only mean Pitot profiles and single schlieren images, so nothing here needs time-resolved data. It also says nothing about intermittency, mode switching or time-varying amplitude.
- **Related works cited, candidates for `/add-paper`:** Bogdanoff 1983 (AIAA J 21, M⁺), Brown & Roshko 1974 (density effects in mixing layers), Gropengiesser 1970 (finite-thickness compressible stability), Blumen, Drazin & Billings 1975, Oertel 1979 (Mach wave radiation of hot supersonic jets; origin of M_CO), Dimotakis 1986 (entrainment), Lessen, Fox & Zien 1965 (oblique waves), Papamoschou 1986 thesis.
