---
key: "stark-2013-flow-separation-rocket-nozzles-overview"
title: "Flow Separation in Rocket Nozzles – An Overview"
authors: ["Stark, Ralf"]
year: 2013
type: "conference"
venue: "AIAA 2013-3840 (49th Joint Propulsion Conf.)"
bib: {"booktitle": "49th AIAA/ASME/SAE/ASEE Joint Propulsion Conference", "publisher": "American Institute of Aeronautics and Astronautics", "note": "San Jose, CA, 14–17 July 2013"}
doi: "10.2514/6.2013-3840"
arxiv: ""
pdf: "rocket-noise-models/Stark_2013_Flow-Separation-In-Rocket-Nozzles-An-Overview.pdf"
version: "conference"
unverified: []
group: false
facility: ""
data: ["surface-pressure", "subscale", "full-scale"]
methods: ["empirical-model", "shock-relations"]
flow: ["rocket-plume", "supersonic", "overexpanded", "heated", "wall-bounded"]
phenomena: ["shock-waves", "Mach-disk", "hysteresis"]
params: {"Ma_sep": "≈1–5 (wall Mach number at separation)", "p_sep/p_a": "≈0.15–0.8 (database)", "γ": "1.2 (hot LOX/GH2), 1.25, 1.4 (cold air, N2)", "nozzles": "cones 3.6–30°, TIC, TOC/TOP (Rao), parabolic, compressed TIC, planar, trumpet, dual-bell concepts", "engines": "J-2S, Vulcain, Vulcain 2, SSME, LE-7A, HM60", "f_sep-shock": "600 Hz (Lawrence 1967, fluctuating separation shock)", "p0/pa": "> 35 (validity of the momentum-balance models)"}
topics: ["rocket-noise-models", "shock-cell-models"]
related: ["lubert-2022-supersonic-jet-noise-launch-vehicles-review", "varnier-2001-rocket-engine-freejet-noise-model", "langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation", "bres-2017-unstructured-les-supersonic-jets", "tam-1982-shock-associated-noise-cd-nozzles", "nogueira-2025-screech-military-style-rectangular-nozzles", "mathews-2025-thesis-supersonic-jet-rocket-noise-saturn"]
cites: []
summary: "Rocket-nozzle separation history (FSS/RSS, cap shock, side loads); 8 criteria vs a ~90-series database: turbulent p_sep/p_a ≈ 1/Ma_sep, Schmucker an upper bound"
---
# Flow Separation in Rocket Nozzles – An Overview

- **Authors:** Ralf Stark, Head of the Flow Group, Institute of Space Propulsion, German Aerospace Center (DLR), Lampoldshausen (p. 1). Not Shock Lab group work.
- **Source:** 49th AIAA/ASME/SAE/ASEE Joint Propulsion Conference, San Jose, CA, 14–17 July 2013, doi:10.2514/6.2013-3840 (paper AIAA 2013-3840, read from the DOI). Copyright German Aerospace Center, published by AIAA with permission (p. 1). No abstract beyond a two-line statement of scope; no conclusions section.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/rocket-noise-models/Stark_2013_Flow-Separation-In-Rocket-Nozzles-An-Overview.pdf` (index key `rocket-noise-models/Stark_2013_Flow-Separation-In-Rocket-Nozzles-An-Overview.pdf`, 10 pp., conference paper as downloaded from AIAA ARC). Page refs are the printed page numbers, which equal PDF pages. The text layer garbles Table 1 and the figure legends; Table 1 was rebuilt from pages rendered at 250 dpi, and Figs. 1–5 were read from rendered pages.
- **Tags:** rocket nozzle, overexpanded nozzle flow, shock-induced boundary-layer separation, free shock separation (FSS), restricted shock separation (RSS), reattachment, cap-shock pattern, inverse Mach reflection, Mach disc, side loads, start-up and shut-down transients, hysteresis, separation criteria (Summerfield, Schmucker, Schilling, Kalt–Badal, Arens–Spiegler, Zukoski, Frey sigma criterion, Stark 1/Ma), thrust-optimised (Rao) and truncated ideal contour (TIC) nozzles, dual-bell and altitude-adaptive nozzles, film cooling, cold versus hot subscale testing, laminar versus turbulent separation, Reynolds-number effect, guiding tube, history of nozzle research

## Summary
Stark surveys about 130 years of work on strongly overexpanded flow in convergent–divergent nozzles, divided into five periods from Laval's steam nozzles to the European, Japanese and American subscale programmes of 1998–2010 (p. 1–4). The survey traces how separation went from a one-dimensional normal-shock picture to free shock separation (FSS), restricted shock separation (RSS) with reattachment in thrust-optimised nozzles, the cap-shock pattern that causes it, and the side loads and start-up/shut-down hysteresis that follow. He then compares eight separation criteria with his own cold (N₂) and hot (LOX/GH₂) subscale data (Fig. 1, Table 1, p. 4–6). His own criterion, p_sep/p_a = 1/Ma_sep, fits the turbulent separation data above Ma_sep ≈ 2.4; below that his data separate laminar (p. 5). Last, he compiles a literature database of about 90 data series from about 33 sources (Fig. 2, Table 2, p. 6–7). The data lie mostly between Schmucker's criterion (above) and 1/Ma (below). He explains most of the scatter by the age of the data, nozzles with very low exit wall angles or guiding tubes (which lower p_sep/p_a by about 0.15), cones of more than 10°, small-facility Reynolds-number effects and film injection (Figs. 3–5, p. 8–9). The paper has no new experiment, simulation or model of its own beyond the 1/Ma criterion. It gives no error metric for any criterion.

## Key findings
- **Five periods of research** (p. 1–4):
  - *Dawn of the rocket age.* Körting (1878) and de Laval (1883) developed conical nozzles independently. Stodola's one-dimensional view had the overexpanded flow recompressed by a normal shock that moves upstream as back pressure rises, with no separation model (p. 1). Von Braun's 1934 dissertation estimated a 9% overall thrust gain for altitude-adaptive nozzles. He blamed separation for corrosive damage through "cavitation" and used 10° half-angle cones, which then dominated rocket nozzles (p. 1).
  - *Conquest of space (late 1940s–1960).* Swan (1948) and Foster & Cowles (1949) found the separation position linear in p_c/p_a, with no effect of mixture ratio, combustion temperature, cone angle or nozzle length (p. 1). Foster & Cowles proposed a nozzle with an abrupt wall-angle change, which anticipates the dual bell (p. 2). Summerfield et al. (1954) found separation to be in principle symmetric, drew an oblique separation shock and proposed, with McKenney, the first criterion, p_sep/p_a ≈ 0.4. They also saw reattached flow at low p_c/p_a in planar nozzles and comparable unsteadiness in axisymmetric ones (p. 2). Reshotko & Tucker (1955) derived a constant Mach-number ratio across the separation, Ma₂/Ma₁ = 0.762, for a forward-facing step in unaccelerated flow. Love (1955) confirmed the Mach-number dependence empirically, found no Reynolds-number dependence and set the validity of both models at Ma > 2.4 (p. 2).
  - *Race to the Moon (1960–1972).* Farley & Campbell (1960) found that the constant Mach-ratio criterion fails for method-of-characteristics bell nozzles, which overexpand slightly more and are 25% lighter than cones at equal thrust (p. 2). Bloomer, Antl & Renas (1961–62) kept a constant ratio but changed it to Ma₂/Ma₁ = 0.85 for Rao nozzles (p. 2). Arens & Spiegler (1963) divided start-up into five successive separation behaviours with rising p₀/p_a. Behaviour 2 is unstable, asymmetric oblique-shock separation. About 90–97% of the recompression happens across the separation shock and 3–10% in the free shear layer (p. 2). Lawrence (1967) described a fluctuating, fan-shaped separation shock at **600 Hz**, and argued that the suction of the separated jet sets its own separation position in a closed loop (p. 2).
  - *Post Apollo (1973).* Nave & Coffey (1973) gave the first description of **restricted shock separation (RSS)**, separation with reattachment, seen in this form only in thrust-optimised Rao nozzles, for the J-2S. RSS persists over a wider p_c/p_a range during shut-down than during start-up. They also first described the saw-tooth condensation pattern ("tepees") (p. 3). HM60, Vulcain and Vulcain 2 follow the J-2S contour approach (p. 3). Schmucker's 1973 NASA review gives the empirical criterion still standard in Europe and Japan (p. 3).
  - *Rediscovery (1998–2010).*
    - Hagemann & Frey (1998) confirmed RSS for Vulcain and compared it with the SSME. They traced the reattachment to the **cap-shock pattern**: an internal shock formed just downstream of the throat of a Rao nozzle meets the Mach disc, is reflected towards the wall and crosses the oblique separation shock. The momentum balance of the two deflected streams decides whether the merged flow reattaches. They read the cap shock as an inverse Mach reflection, and their CFD predicted a strong vortex downstream of it, not then seen in experiment (p. 3). Frey & Hagemann (1999) gave an analytical model of the FSS → RSS transition (p. 3).
    - Mattsson (1998) instead attributed the reattachment to the separation shock being deflected towards the wall by the Mach disc (p. 3). The two explanations are not reconciled in the paper.
    - Side loads: Torngren (1999) tested polygon and dual-bell nozzles for separation control, and Östlund & Bigert (1999) showed with CFD and Vulcain hot data that nozzle design can reduce side loads (p. 3). Terhardt, Hagemann & Frey (1999) explained the Vulcain side loads with the RSS model; the side-load distribution shows a clear **hysteresis** between start-up and shut-down (p. 3).
    - Preuss (2000) gave an analytical model of the shape and position of the cap shock in Rao nozzles and of the Mach disc in ideal nozzles, confirming the Frey–Hagemann transition (p. 3). Frey's 2001 thesis gave the "sigma" criterion, with the separation-shock angle a function of Mach number (p. 3).
    - Wall changes: riblets move separation downstream (Tsunoda 2000, p. 3). The step of an inactive film-cooling layer fixes separation and prevents the transition to RSS, and film-layer nozzles separate further upstream (Reijasse 2001, p. 3). Compressed truncated perfect nozzles show RSS beyond some compression (Takahashi 2001), and shear-sensitive paint shows the reattachment (Tomita 2001) (p. 3–4). A LE-7A-type contour inflection (Yonezawa 2006) and the Vulcain 2 TEG injector (Hagemann & Frey 2008) fix separation during the start-up transient and avoid RSS (p. 4).
    - **Unsteadiness and resonance.** With imposed ambient-pressure fluctuations, the separated part of the nozzle acts as a **resonator**, and the phase lag between ambient and separation fluctuations grows with forcing frequency (Torngren 2001, p. 4). The eigenfrequency of the wall-pressure fluctuations in the separated region rises as separation moves downstream; oil flow shows two closed, ring-shaped backflow regions during RSS (Alziary de Roquefort 2002, p. 4). In RSS, the upstream shift of the separation front closes the recirculation zone at once, so a pressure ratio must exist at which the recirculation **opens and closes alternately** (Östlund 2004, p. 4).
    - Semi-empirical momentum-balance models (Reijasse & Birkemeyer 2001/2002, Zerjeski 2003) predict separation acceptably only for p₀/p_a > 35. Zerjeski blames the initially conical shear layer of the separated jet, which the triple shock turns cylindrical; its changing influence is not modelled below p₀/p_a = 35 (p. 4).
    - Cold-flow models capture the basic phenomena but do not scale directly to engines; larger hot-flow models are needed to capture gas-property effects (Hagemann et al. 2003, p. 4).
    - Boccaletto (2008) put a small ring-shaped plug nozzle at the exit, whose coaxial supersonic jet decouples the separated region from the ambient. He reports a possible 15 s specific-impulse gain for about 15% of the engine mass flow (p. 4).
    - Ruf et al. (2009, 2010) tabled wall pressures for a TIC and a parabolic (PAR) subscale nozzle and analysed test-facility side effects: changing back pressure, diffuser backwash, nozzle-to-diffuser distance and ejector-driven vibration. The maximum transient TIC side load was **45% of the PAR's** (p. 4).
- **Separation criteria against the author's subscale data** (Fig. 1, Table 1, p. 4–6):
  - Summerfield's criterion covers only a small Ma_sep range and predicts too high separation pressures (p. 5).
  - Arens & Spiegler give an upper limit of the hot (γ = 1.2) data but miss the cold separation (p. 5).
  - Schilling reproduces the turbulent hot separation (γ = 1.2) but with the wrong curvature, and misses the cold (γ = 1.4) separation above Ma_sep = 3. Kalt & Badal do not improve on it and give higher separation pressures (p. 5).
  - Zukoski overpredicts and merges with Schmucker above Ma_sep = 3. Schmucker gives too high separation pressures over the whole range. Frey is an upper limit of the data (p. 5).
  - **p_sep/p_a = 1/Ma_sep** (the author's thesis criterion) fits much better than all of these above Ma_sep ≈ 2.4. Below about 2.4 the author's data set was shown (Refs. 41–42) to separate laminar, so the criterion applies to turbulent separation (p. 5). No fit statistic is given.
  - In Fig. 1 the cold N₂ TIC data run from about 0.8–0.85 near Ma_sep 1.3 down to about 0.22 near 4.1, and the hot LOX/GH₂ data sit at Ma_sep ≈ 2.7–4, p_sep/p_a ≈ 0.25–0.35 (read from the figure).
- **Literature database** (Figs. 2–5, Table 2, p. 6–9):
  - Many nozzle types, gases and set-ups (ambient, surrounding chamber, or mounted directly on a guiding tube), about 90 data series in the Fig. 2 legend (my count). The data vary strongly and are bounded above by Schmucker and below by 1/Ma; the real behaviour seems to lie between (p. 6).
  - *By age* (Fig. 3, p. 8). The 1972 end of Apollo splits the data. The wide scatter comes from the pre-1973 group. The post-1973 data, mostly cold-flow bell nozzles, follow 1/Ma.
  - *Not representative* (Fig. 3, p. 8). Long nozzles with very low exit wall angles, and nozzles exhausting straight into a guiding tube, have their separation back pressure lowered by suction. Their separation pressure is about 15% of p_a lower, along the 1/Ma − 0.15 line. Conversely, a guiding tube on the exit could significantly lower the separation pressure of a conventional nozzle, so one-step altitude-adaptive nozzles such as the dual bell could be tested at sea level without an altitude facility (p. 8).
  - *Cones* (Fig. 4, p. 8). Historical bell nozzles and cones with exit wall angles of 10° or less fit the criterion above Ma_sep 3; cones of more than 10° do not. The local wall angle thus affects separation, and bell nozzles have low wall angles in their rear section. This contradicts the early finding of no cone-angle effect (Swan, Foster & Cowles, p. 1).
  - *Model size and film* (Fig. 5, p. 8–9). The Alziary and Girard data from the small LEA Poitiers facility show, below Ma_sep ≈ 3, a parallel shift of the laminar separation behaviour of Fig. 1. The author reads this as a Reynolds-number effect: smaller models move the laminar–turbulent transition downstream to higher Mach numbers and raise separation pressures. Turbulent separation beyond that seems Reynolds-number independent (p. 8). Reijasse's thrust-optimised nozzle with a Vulcain 2-like air film shows raised separation pressures near Ma_sep ≈ 4, because the film mass flow raises the local wall pressure (p. 8–9).

## Setup / method
- **Scope.** The survey is limited to "the crucial work" on strongly overexpanded flow in rocket nozzles, leaving out related flows over plates and steps (p. 1). It is descriptive: findings are reported as the original authors gave them, with little critical comparison, except in Sections II–III.
- **Criteria comparison** (Section II, p. 4–6). Eight criteria (Table 1) are drawn over the author's own cold (N₂) and hot (LOX/GH₂) subscale separation data from his RWTH Aachen dissertation (Ref. 41, 2010) and Stark & Wagner (Shock Waves 19, 2009). The nozzles are TIC (plain, GH₂ film-cooled, and Vulcain 2-like) and N₂ thrust-optimised (TOP) (Fig. 1 legend). The test facility, chamber pressures, wall-tap spacing and uncertainties are not given in this paper.
  - Criteria that depend on γ are drawn for γ = 1.2 (hot) and 1.4 (cold); Summerfield/McKenney for γ = 1.25 and 1.4.
  - Criteria written with the plateau pressure p_p (Arens–Spiegler, Frey, Zukoski) are plotted on the same p_sep/p_a axis, so p_p ≈ p_a is implied but not stated.
  - Criteria written in p_c/p_a (Schilling, Kalt–Badal) must be mapped onto Ma_sep through the isentropic p_sep/p_c. The paper does not say how; my isentropic mapping reproduces the described behaviour (Data tables).
- **Definitions.** p_sep is the lowest wall pressure upstream of separation (Summerfield's definition, p. 2). Ma_sep is the "separation wall Mach number" (p. 5), presumably the attached-flow wall Mach number at the separation point; how it was obtained for each data set (isentropic from p_sep/p_c or from a contour calculation) is not stated.
- **Database** (Section III, p. 6–9). Literature separation data, sorted by origin date (Table 2), configuration (guiding tubes, trumpets) and nozzle type (cone angle), with facility and film-injection effects shown separately (Figs. 3–5). Table 2 lists 11 pre-1973 and 22 post-1973 sources. The Fig. 2 legend also has series not in Table 2 (Fradenburgh, Xiao, Papamoschou, Raman, Farnia, Bourgoing, Gogish, Nevis, Boccaletto, Yonezawa). Data were digitised or tabled from the sources; how is not said.
- **Data dependence of the methods.** Every criterion and database point is a **time-averaged** wall-pressure quantity, so none needs time-resolved data. The unsteady findings in the survey do: the 600 Hz shock fluctuation, the resonator response to ambient forcing, the separated-region eigenfrequency, the alternate opening and closing of the RSS recirculation and the side loads. They come from unsteady wall-pressure transducers, force or strain measurements, and oil-flow or shear-sensitive paint (p. 2–4). The paper gives no sample rates or spectral parameters.
- **Modelling and simulation side** (from the survey; no model is run here):
  - *Free-interaction and step models.* Reshotko–Tucker (constant Ma₂/Ma₁ = 0.762, unaccelerated flow, adapted by a form factor), Love (empirical), and Zukoski (forward-facing step plateau pressure). All are flat-plate or step results transferred to accelerating nozzle flow, valid for Ma > 2.4 (p. 2, 6).
  - *Arens & Spiegler.* An analytical model in which the separation pressure ratio depends only on the upstream Mach number, through a dividing-streamline velocity ratio k_A = u/U_∞ ≈ 0.6 (p. 2, Table 1).
  - *Frey sigma criterion.* An oblique-shock pressure ratio with a fitted shock angle 44.5° − 4.7°·Ma_sep (p. 3, Table 1).
  - *Shock-pattern and transition models.* Frey & Hagemann's analytical FSS → RSS transition and Preuss's analytical cap-shock and Mach-disc model (p. 3). The reattachment mechanism rests on the interaction of the internal (throat) shock, the Mach disc and the separation shock (inverse Mach reflection, triple point).
  - *Momentum-balance models* (Reijasse & Birkemeyer, Zerjeski). Valid for p₀/p_a > 35, limited by the unmodelled conical-to-cylindrical turn of the separated shear layer (p. 4).
  - *CFD.* Hagemann & Frey's numerical studies (the predicted vortex behind the cap shock), Mattsson's, Östlund & Bigert's, Yonezawa's, Takahashi's transient simulation, and, judging by their reference titles, the database series from Xiao et al. 2007 (numerical, planar), Deck (2003–04, unsteady side loads in a TOC nozzle at the hysteresis regime), Benay (separation modelling) and Farnia (a multi-block numerical code) (p. 3–4, 7, 10). The paper gives no numerics, turbulence models or resolutions, and no CFD–experiment comparison numbers.
  - *Scaling.* Cold-flow models are not directly scalable to engines (Hagemann et al. 2003, p. 4).

## Key equations
Rebuilt from the rendered Table 1 (p. 5–6) and the text. The paper numbers no equations. p_p is the plateau pressure, p_c the chamber pressure, p₀ the total pressure, and κ (written γ in the text) the ratio of specific heats.

- **Arens & Spiegler** (Table 1, p. 5):
$$\frac{p_{sep}}{p_p}=\frac{\left[1+\frac{\kappa-1}{2}Ma_{sep}^2\left(1-k_A^2\right)\right]\left\{0.5\,Ma_{sep}^2\left[(\kappa+1)k_A^2-\frac{(\kappa-1)^2}{\kappa+1}\right]-\frac{\kappa-1}{\kappa+1}\right\}^{\frac{1}{\kappa-1}}}{\left[\frac{\kappa+1}{2}Ma_{sep}^2\,k_A^2\right]^{\frac{\kappa}{\kappa-1}}},\qquad k_A=u/U_\infty\approx0.6$$
- **Frey** (sigma criterion, Table 1, p. 5): $\dfrac{p_{sep}}{p_p}=\left(1+\dfrac{2\kappa}{\kappa+1}\left[Ma_{sep}^2\sin^2\!\left(44.5^\circ-4.7^\circ\,Ma_{sep}\right)-1\right]\right)^{-1}$, the inverse of the oblique-shock pressure ratio for shock angle σ = 44.5° − 4.7°·Ma_sep.
- **Kalt & Badal** (Table 1, p. 5): $\dfrac{p_{sep}}{p_a}=\dfrac23\left(\dfrac{p_c}{p_a}\right)^{-1/5}$.
- **Schilling** (Table 1, p. 5): $\dfrac{p_{sep}}{p_a}=0.583\left(\dfrac{p_c}{p_a}\right)^{-0.195}$, "suggested for short bell type nozzles".
- **Schmucker** (p. 3; Table 1, p. 5): $\dfrac{p_{sep}}{p_a}=\left(1.88\,Ma_{sep}-1\right)^{-0.64}$.
- **Summerfield & McKenney** (Table 1, p. 5–6): $p_{sep}/p_a=0.34\ldots0.4$ for γ = 1.25 and Ma_sep 2.84–3.36; $0.38\ldots0.41$ for γ = 1.4 and Ma_sep 2.92–3.32. The text gives ≈ 0.4 (p. 2).
- **Zukoski** (Table 1, p. 6): $\dfrac{p_{sep}}{p_p}=\dfrac{2}{Ma_{sep}+2}$, from the forward-facing step.
- **Stark** (Table 1, p. 6): $\dfrac{p_{sep}}{p_a}=\dfrac{1}{Ma_{sep}}$, for turbulent separation (Ma_sep ≳ 2.4, p. 5).
- **Not-representative line** (Figs. 2–3, p. 7–8): $p_{sep}/p_a=1/Ma_{sep}-0.15$, for nozzles with guiding tubes or very low exit wall angles.
- **Constant Mach-ratio criteria** (p. 2): Ma₂/Ma₁ = 0.762 (Reshotko & Tucker), 0.85 (Bloomer et al., Rao nozzles), with Ma₁ upstream and Ma₂ downstream of the separation shock (nomenclature, p. 1).

> **Checks (my arithmetic, not in the paper).**
> - Frey's shock angle equals the Mach angle at Ma_sep ≈ 1.68 (σ = μ = 36.6°). Below that Ma²sin²σ < 1, the formula gives p_sep/p_p > 1 and has no physical meaning, which is why the Frey curve in Fig. 1 rises above 1 near Ma_sep 1.6. Schmucker's formula exceeds 1 below Ma_sep ≈ 1.06.
> - Schmucker lies above 1/Ma by 4% at Ma_sep 2, 12% at 3, 20% at 4 and 28% at 5, consistent with its role as the upper bound in Fig. 2.
> - The Summerfield/McKenney bands (0.34–0.41) lie 0.04–0.11 above 1/Ma (0.30–0.35) over their Ma_sep range, consistent with "too high separation pressures" (p. 5).
> - The Arens–Spiegler exponent 1/(κ − 1) on the brace is partly cut off at the top of its table cell; verify against the PDF. With it, the formula gives values close to the Fig. 1 curves (Data tables), which supports the reading.
> - Three criteria are written over p_p, not p_a. Arens & Spiegler put 3–10% of the recompression in the shear layer (p. 2), so p_p is a few per cent below p_a. The paper plots them as if p_p = p_a.

## Data tables
**Criteria evaluated at fixed Ma_sep** (my arithmetic from the Table 1 formulas). Arens–Spiegler uses k_A = 0.6. Schilling and Kalt–Badal are mapped to Ma_sep through the isentropic relation p_sep/p_c = (1 + (κ − 1)Ma²/2)^(−κ/(κ−1)), which gives p_sep/p_a = (k π^n)^{1/(1+n)} for p_sep/p_a = k(p_c/p_a)^(−n). The paper does not state this mapping. The values match the behaviour described on p. 5: Schilling at γ = 1.2 tracks 1/Ma at Ma_sep 3–4, Arens–Spiegler at γ = 1.4 is the highest curve at Ma_sep 4, and Zukoski approaches Schmucker at high Ma_sep.

| Criterion | γ | Ma 1.5 | Ma 2.0 | Ma 2.4 | Ma 3.0 | Ma 3.5 | Ma 4.0 | Ma 4.5 |
|---|---|---|---|---|---|---|---|---|
| Stark 1/Ma | any | 0.667 | 0.500 | 0.417 | 0.333 | 0.286 | 0.250 | 0.222 |
| Schmucker | any | 0.682 | 0.522 | 0.448 | 0.374 | 0.333 | 0.301 | 0.276 |
| Zukoski | any | 0.571 | 0.500 | 0.455 | 0.400 | 0.364 | 0.333 | 0.308 |
| Frey | 1.2 | (1.23) | 0.740 | 0.557 | 0.413 | 0.349 | 0.313 | 0.296 |
| Frey | 1.4 | (1.24) | 0.727 | 0.540 | 0.396 | 0.334 | 0.299 | 0.282 |
| Arens–Spiegler | 1.2 | 0.659 | 0.522 | 0.434 | 0.345 | 0.297 | 0.264 | 0.240 |
| Arens–Spiegler | 1.4 | 0.648 | 0.543 | 0.473 | 0.402 | 0.364 | 0.338 | 0.319 |
| Schilling | 1.2 | 0.522 | 0.458 | 0.408 | 0.340 | 0.291 | 0.250 | 0.215 |
| Schilling | 1.4 | 0.515 | 0.455 | 0.411 | 0.354 | 0.314 | 0.281 | 0.252 |
| Kalt–Badal | 1.2 | 0.582 | 0.509 | 0.453 | 0.375 | 0.321 | 0.274 | 0.236 |
| Kalt–Badal | 1.4 | 0.574 | 0.506 | 0.456 | 0.391 | 0.346 | 0.309 | 0.277 |

Values in brackets are outside the formula's physical range (σ below the Mach angle).

**Classification of separation data** (Table 2, p. 6).
- *Race to Moon (to 1972):* Swan 1948, Foster 1949, Summerfield 1954, Krull 1952, Steffen 1954, Campbell 1960, Farley 1960, Bloomer 1961/62, Arens 1963, Sunley 1964, Lawrence 1967.
- *Post Apollo (from 1973):* Nave 1973, Malik 1988, Dumnov 1996, Girard 1997, Mattson 1998, Terhardt 1999, Tsunoda 2000, Frey 2001, Reijasse 2001, Takahashi 2001, Tomita 2001, Torngren 2001, Alziary 2002, Verma 2002, Östlund 2002/04, Hagemann 2003, Deck 2003/04, Hunter 2004, Benay 2005, Nebbache 2007, Stark 2009/10, Ruf 2009/10.

## Figures worth remembering
- **Fig. 1 (p. 5):** the eight criteria (each at γ = 1.2 and 1.4 where relevant) over the author's cold N₂ and hot LOX/GH₂ subscale data, p_sep/p_a 0.2–1 against Ma_sep 1–4.5. The 1/Ma curve (black) runs through the turbulent data; the cold data above it at Ma_sep < 2.4 are laminar separation.
- **Fig. 2 (p. 7):** the full literature database (about 90 series, p_sep/p_a 0–0.8, Ma_sep 1–5) with Schmucker (dashed), 1/Ma (solid) and 1/Ma − 0.15 (dotted). The most useful single figure for a quick estimate of where a nozzle separates.
- **Fig. 3 (p. 8):** the same data split into pre-1973, post-1973 and not representative. The post-1973 data collapse on 1/Ma; the guiding-tube and trumpet data follow 1/Ma − 0.15.
- **Fig. 4 (p. 8):** cones of more than 10° against TIC and cones of 10° or less. Only the latter follow 1/Ma above Ma_sep 3.
- **Fig. 5 (p. 8):** the author's laminar data, the LEA Poitiers data (Alziary, Girard) and Reijasse's film-layer data against a "laminar separation" curve that lies well above the turbulent 1/Ma curve.

## Notation
- p₀: total pressure; p_c: combustion-chamber pressure; p_a: ambient pressure; p_p: plateau pressure in the separated region; p_sep: separation pressure, the lowest wall pressure upstream of separation (p. 1–2).
- Ma: Mach number; Ma₁, Ma₂: Mach number upstream and downstream of a shock; Ma_sep: separation (wall) Mach number (p. 1).
- κ, γ: ratio of specific heats (both used); k_A = u/U_∞: Arens–Spiegler velocity ratio.
- FSS / RSS: free / restricted shock separation; TIC: truncated ideal contour; TOC, TOP: thrust-optimised contour/parabola (Rao); PAR: parabolic contour; TEG: turbine exhaust gas; SSLC: a variant of Tomita's compressed TIC (not defined in the paper).

## Relevance to this project
This is the library's first note on flow separation inside rocket nozzles. It sits at the source end of the user's second research area (CLAUDE.md, rocket-noise modelling): whether a sea-level, strongly overexpanded nozzle runs full, with free shock separation or with restricted shock separation sets the exit state that every rocket-noise model takes as input. The paper is a historical overview and an empirical-criterion study. It is the entry point for the side-load and start-up literature (Nave & Coffey 1973, Frey & Hagemann 1999, Östlund 2004, Ruf 2010) rather than a source of mechanisms.

**How it sits with the other notes**
- **Start-up loads.** [Lubert 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) mentions nozzle start-up separation (FSS/RSS/end-effects) causing flapping and base loads, reduced by staggered starts (p. 25). This paper supplies the background: the FSS → RSS transition, the cap-shock origin of reattachment, and the start-up/shut-down hysteresis of side loads (p. 3).
- **Rocket conditions in the library against the criteria** (my arithmetic; Ma_sep taken as the exit Mach number, which is where separation would first appear):
  - Rita II in [Varnier 2001](varnier-2001-rocket-engine-freejet-noise-model.md) (M_e 3.8, p_e/p_a = 0.3) lies between the 1/Ma (0.26) and Schmucker (0.31) thresholds, i.e. at incipient separation. That fits its "unstable" emission and possible Mach disk (Varnier p. 1856).
  - The MARTEL jet of [Langenais 2019](langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation.md) (M_e 3.1, p_e/p_∞ = 0.6) is far from both thresholds (0.32 and 0.37). This supports the authors' view that their LES lip separation is a mesh artefact. The Morrisette & Goldberg value quoted there (0.3 at M 3.1) is close to 1/Ma.
- **Lab C-D nozzles at low NPR.** The criteria are stated for Ma_sep ≳ 2.4 and turbulent layers, so for lab nozzles with M_d ≈ 1.5–1.7 they are only indicative (my arithmetic):
  - In [Tam & Tanna 1982](tam-1982-shock-associated-noise-cd-nozzles.md) (M_d 1.672), M_j 1.104 means NPR ≈ 2.15 and p_e/p_a ≈ 0.45. That is below both thresholds (0.60–0.61), so the nozzle should be separated, consistent with their guess of a shock inside the nozzle and the absence of shock noise (p. 15–16).
  - In [Brès 2017](bres-2017-unstructured-les-supersonic-jets.md), case A3 (M_d 1.5, NPR 2.97) has p_e/p_a ≈ 0.81, above the turbulent thresholds (0.67–0.68), yet the LES separates just inside the exit (p. 1169). Its exit boundary layer is laminar at reduced Re. Stark's laminar data lie well above the turbulent curve (Figs. 1, 5), i.e. laminar layers separate at milder overexpansion, which would explain it.
  - The AR 2 sharp-throat nozzle of [Nogueira 2025](nogueira-2025-screech-military-style-rectangular-nozzles.md) (M_d ≈ 1.5) sits right at the turbulent threshold at NPR 2.5 (p_e/p_a ≈ 0.68). Internal separation may therefore shape the exit flow at the lowest NPRs of that study. The criteria are for axisymmetric nozzles, and Stark notes that planar trumpet nozzles fall on the lower 1/Ma − 0.15 line.
- **Shock structure.** The cap-shock pattern and Mach disc set the first shock cell of an overexpanded rocket plume (p. 3). The Prandtl–Pack picture on [shock-cell-models](../Topics/shock-cell-models.md) has no separation, internal shock or Mach reflection. This is one more reason no spacing formula fits overexpanded full-scale jets ([Mathews 2025 thesis](mathews-2025-thesis-supersonic-jet-rocket-noise-saturn.md), p. 34–35). Preuss's analytical cap-shock and Mach-disc model (p. 3) is a candidate first-cell model for that case.

**Modelling side**
- The criteria are one-parameter correlations in Ma_sep (or p_c/p_a). With the wall Mach distribution of a contour, they give the separation location for any p_c/p_a, hence the effective exit area and the plume's exit Mach number and diameter. That is the input chain a source model such as SATURN needs for a separated sea-level nozzle.
- Their limits are all stated in the survey: no Reynolds-number or laminar–turbulent term (Fig. 5), no wall-angle term (Fig. 4), no effect of film injection or downstream suction (guiding tubes), and no unsteadiness. FSS → RSS needs the shock-pattern models (Frey & Hagemann, Preuss) or CFD, and side loads need unsteady simulation (e.g. Deck & Nguyen 2004, unsteady side loads in a TOC nozzle, from the reference title).
- Lawrence's closed loop (the separated jet's suction setting its own separation position, p. 2) and Torngren's resonator response (p. 4) are feedback mechanisms, the same class of problem as the lab's screech and impingement loops. They are candidates for linear (resolvent) or reduced-order modelling of the separated region, which none of the surveyed models attempt.

**Methods and data for the lab workflow (CLAUDE.md)**
- **Time-averaged data are enough for the criteria.** Mean wall pressure, mean schlieren or PIV (non-time-resolved) give the separation point and Ma_sep, the basic-statistics step of the workflow.
- **The unsteady physics needs time-resolved data.** These are the separation-shock oscillation (600 Hz in Lawrence's tests), the separated-region eigenfrequency that rises as separation moves downstream, the resonator response, and the alternate opening and closing of the RSS recirculation (p. 2, 4). High-speed schlieren of the separation shock, with SPOD and BMD, would give the shock-oscillation modes and any triadic coupling with the jet column.
- **Intermittency and switching.** The FSS ↔ RSS transition, Östlund's alternating recirculation (p. 4) and the start-up/shut-down hysteresis (p. 3) are non-stationary, often during a pressure ramp. Block-averaged SPOD smears them out. The SPOD → reconstruction → Hilbert POD pipeline (or a Hilbert envelope of a wall-pressure band) could track the instantaneous frequency and amplitude of the separation-shock mode through a transient or ramp. Shock-position tracking from schlieren gives the same as a time series.
- **Facility lessons** (p. 4, 8): cold and hot data do not scale directly; small models shift laminar–turbulent transition; diffusers, ejectors and guiding tubes change the separation pressure by up to 0.15 p_a. Any group test of an overexpanded C-D or planar nozzle should report the boundary-layer state and the downstream geometry.

**PyFR staging LES.** Not directly relevant: the LES nozzle is convergent, so no internal separation can occur.

**Related works cited, candidates for `/add-paper`:** Summerfield, Foster & Swan 1954 (Jet Propulsion 24, first criterion); Nave & Coffey 1973 (AIAA 73-1284, J-2S side loads, first RSS); Schmucker 1973 (NASA CR-143044); Frey & Hagemann 1998, 1999 (AIAA 98-3619, 99-2815); Hagemann, Alting & Preclik 2003 (J. Propul. Power 19, scalability); Östlund, Damgaard & Frey 2004 (J. Propul. Power 20, side-load phenomena); Deck & Nguyen 2004 (AIAA J 42, unsteady side loads in a TOC nozzle); Hagemann & Frey 2008 (Shock Waves 17, plume shock patterns); Papamoschou, Zill & Johnson 2008 (Shock Waves 18, planar nozzle separation); Xiao, Tsai & Papamoschou 2007 (AIAA J 45, numerical planar nozzle separation); Verma 2002 (J. Propul. Power 18); Stark & Wagner 2009 (Shock Waves 19, TIC separation); Ruf, McDaniels & Brown 2009, 2010 (MSFC side-load tests); Rao 1958 (Jet Propulsion 28, thrust-optimised contour). None is held or listed in the library.
