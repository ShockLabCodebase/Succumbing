---
key: "bres-2019-modelling-jet-noise-les-perspective"
title: "Modelling of jet noise: a perspective from large-eddy simulations"
authors: ["Brès, Guillaume A.", "Lele, Sanjiva K."]
year: 2019
type: "review"
venue: "Phil. Trans. R. Soc. A 377, 20190081"
bib: {"journal": "Philosophical Transactions of the Royal Society A", "volume": "377", "pages": "20190081"}
doi: "10.1098/rsta.2019.0081"
arxiv: ""
pdf: "simulation-methods/Bres-Lele_2019_Modelling-Of-Jet-Noise-A-Perspective-From-Large-Eddy-Simulations.pdf"
version: "published"
unverified: []
group: false
facility: "Charles LES (Cascade)"
data: ["LES", "microphones-far"]
methods: ["numerics", "FW-H", "SPOD", "resolvent", "LSA-local", "vortex-sheet", "acoustic-analogy", "PSD", "statistics"]
flow: ["round-jet", "subsonic", "supersonic", "heated", "overexpanded", "underexpanded", "ideally-expanded", "impinging-jet", "wall-bounded"]
phenomena: ["mixing-noise", "Mach-wave-radiation", "BBSAN", "crackle", "shocklet", "screech", "shock-leakage", "impingement-tones", "guided-jet-mode", "KH-wavepackets", "Orr", "receptivity", "nonlinear-propagation", "noise-control", "directivity"]
params: {"M_j": "0.4, 0.7, 0.8, 0.9 (subsonic Charles jets); 1.5 (ideally expanded)", "Re": "≈10⁶ (M 0.9 jet); ≥10⁶ typical of current LES", "TR": "3 (military power), 7 (afterburner), 3.65–4.5 (crackle LES of Nichols et al.)", "St": "sub-dB to St ≈ 2 on 16M cells; ≈ 4 on 69M cells"}
topics: ["simulation-methods", "jet-noise-mechanisms"]
related: ["bres-2021-les-twin-rectangular-jets-plasma", "schmidt-2018-spectral-analysis-jet-turbulence", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent", "towne-2022-database-reduced-complexity-modeling", "jordan-2013-wave-packets-turbulent-jet-noise", "cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "suzuki-2003-shock-leakage-vortex-laden-mixing-layer-screech", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2019-aeroacoustic-resonance-review", "bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "gojon-2018-oscillation-modes-screeching-jets", "weightman-2017-phase-lag-supersonic-jet-impingement", "weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet", "jordan-2018-jet-flap-interaction-tones", "tam-1989-three-families-instability-waves-high-speed-jets", "wong-2021-wavepacket-modelling-bbsan", "nogueira-2026-flapping-motion-screeching-round-jets", "lubert-2022-supersonic-jet-noise-launch-vehicles-review", "witherden-2014-pyfr-flux-reconstruction-framework", "bres-2017-unstructured-les-supersonic-jets", "langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation"]
cites: ["bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets", "bres-2017-unstructured-les-supersonic-jets", "cavalieri-2013-wavepackets-velocity-field-turbulent-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "edgington-mitchell-2019-aeroacoustic-resonance-review", "gojon-2018-oscillation-modes-screeching-jets", "gudmundsson-2011-instability-wave-models-near-field-jets", "jordan-2013-wave-packets-turbulent-jet-noise", "jordan-2018-jet-flap-interaction-tones", "langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation", "mckeon-2010-critical-layer-framework-turbulent-pipe-flow", "raman-1998-supersonic-jet-screech-review", "schmid-2010-dynamic-mode-decomposition", "schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet", "schmidt-2018-spectral-analysis-jet-turbulence", "suzuki-2003-shock-leakage-vortex-laden-mixing-layer-screech", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "tam-1995-supersonic-jet-noise", "towne-2017-acoustic-resonance-potential-core-subsonic-jets", "towne-2018-spod-relationship-dmd-resolvent", "weightman-2017-phase-lag-supersonic-jet-impingement", "weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet", "weightman-2019-sound-production-impinging-supersonic-jets"]
summary: "Jet LES review 2008–19: nozzle + wall model gives sub-dB spectra to St≈2 (16M cells, St 4 at 69M); crackle shocklets; BBSAN, screech gaps; SPOD/resolvent; trapped waves"
---
# Modelling of jet noise: a perspective from large-eddy simulations

- **Authors:** Guillaume A. Brès (Cascade Technologies, Palo Alto) and Sanjiva K. Lele (Stanford University; corresponding author) (p. 1). The authors contributed equally (p. 17). Funding: ONR and NSF for Lele (p. 17). Not Shock Lab group work, though it cites two of the group's impinging-jet papers (p. 11).
- **Source:** Phil. Trans. R. Soc. A 377: 20190081, doi:10.1098/rsta.2019.0081. Accepted 16 August 2019. One of 12 papers in the theme issue "Frontiers of aeroacoustics research: theory, computation and experiment". Open access under CC BY 4.0 (p. 1). The issue number is not printed.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/simulation-methods/Bres-Lele_2019_Modelling-Of-Jet-Noise-A-Perspective-From-Large-Eddy-Simulations.pdf` (index key `simulation-methods/Bres-Lele_2019_Modelling-Of-Jet-Noise-A-Perspective-From-Large-Eddy-Simulations.pdf`, 23 pp., publisher's version). Page refs are article pages, which equal PDF pages (p. 1 is the title page, references on p. 17–23). The Read tool reports the PDF as password-protected; `pdftotext -enc UTF-8` works, and Figs 2–7 were checked on pages rendered with `pdftoppm`.
- **Tags:** jet noise LES, review, Bodony & Lele 2008 follow-up, nozzle geometry in the domain, Voronoi meshing, unstructured finite volume, Charles, wall-modelled LES, synthetic turbulence, nozzle-exit boundary layer (laminar vs turbulent), boundary-layer tripping, FW-H end-caps, sub-dB prediction, grid resolution and frequency bandwidth, SGS modelling, military-style nozzle, afterburner, temperature non-uniformity, crackle, shocklets, BBSAN, screech, shock leakage, impingement tones, upstream guided waves, wavepackets, SPOD, resolvent, low-rank behaviour, trapped acoustic waves, generalised acoustic analogy, GPU computing, rocket launch

## Summary
A short, selective review of large-eddy simulation for jet noise in the decade after Bodony & Lele's 2008 review (p. 1–2). Its first half covers what made LES predictive. The nozzle is now meshed inside the domain at realistic Re (≥ 10⁶), helped by flexible unstructured or Voronoi meshes and low-dissipation numerics, and the thin nozzle-exit boundary layer is captured with tripping, synthetic turbulence and wall models. Far-field sound comes from permeable FW-H surfaces with end-caps. Together these give sub-dB spectra up to St ≈ 2 on 16M cells for Pprime's subsonic jets (p. 2–8). The second half shows LES used as a complement to experiments and an aid to models, mostly with the authors' Charles solver and the Caltech–Stanford–Pprime collaboration. The examples are a temperature-non-uniformity concept for afterburning military jets, the crackle LES of Nichols et al., short accounts of BBSAN, screech and impingement tones, SPOD and resolvent wavepackets, trapped acoustic waves in the potential core, and LES-informed generalised acoustic analogies (p. 8–14). It closes with open problems: SGS modelling and its interplay with numerical dissipation, frequency bandwidth (doubling plume resolution took St 2 → 4 at 10× cost), heated multi-species and installed configurations, rocket launch, and GPUs (p. 14–17). It is a perspective with few numbers: there are no equations, and every result is reproduced from earlier papers.

## Key findings
**Progress since 2008: nozzle, Reynolds number and boundary layer**
- **What the 2008-era LES compromised** (p. 2). The nozzle was emulated by a RANS-derived inflow profile seeded with perturbations. Matching measurements needed "rather arbitrary" axial shifts to align the end of the potential core, and quasi-laminar shear-layer artefacts showed in the turbulence and the noise. Effects of Mach number, temperature or nozzle changes (chevrons, tabs) could not be studied systematically.
- **Reynolds number** (p. 2–3).
  - Early LES ran at Re = U_jD/ν of 0.1–5 × 10⁵, relying on arguments that the plume becomes Re-independent above 10⁵ (Crighton 1981) or 4 × 10⁵ (Viswanathan 2004).
  - The large scales stay fixed with D, while higher Re moves the dissipative scales smaller and extends the noise spectrum to higher St. The main jet characteristics (peak levels, OASPL directivity) may not change much.
  - Above some value, Re acts mainly *indirectly*, through the nozzle-exit boundary-layer state and the early shear layer (p. 2).
  - At high Re the turbulence is more internally intermittent: dissipation rate and Kolmogorov scales vary more between realisations. So rare extreme events and high-order statistics of flow and noise may depend on Re, which matters for crackle and "wave-packet intermittency" (p. 2–3).
  - Current simulations include the nozzle and report Re > 10⁶, where both boundary and shear layers are likely to be transitional or turbulent even with a favourable pressure gradient (p. 3).
- **Freund's verdict** (2019, JFM Focus on Fluids, as quoted, p. 3): nozzle-turbulence modelling now gives "unprecedented sub-dB prediction accuracy with modest-scale" LES. Full-scale exhausts remain uncertain, because internal engine components and a favourable pressure gradient change the interior boundary layer and may relaminarise it (p. 3).
- **Meshing and discretisation** (p. 3–4). Four mesh families: multi-block structured, overset, Cartesian (cut-cell or immersed boundary) and general unstructured. The solvers named are in the table below.
  - Structured high-order meshes came first, but complex nozzles (chevrons, faceted) are hard with them (p. 3).
  - An AVBP comparison found the unstructured implementation reached high accuracy at "significantly lower computational cost" than the high-order structured one (Fosso Pouangué et al. 2015, AIAA J. 53, p. 4).
  - **Charles** moved from a blend of central and upwind fluxes on hexahedral-dominant grids to **Voronoi-diagram meshing** (Fig. 1). Given seed points and boundary surfaces, the Voronoi diagram defines the mesh uniquely, and face normals are orthogonal to cell-displacement vectors by construction. Hexagonally close-packed seeding gives regular 14-sided polyhedra away from walls, with non-convex polyhedra near complex surfaces. Kinetic-energy- and entropy-preserving schemes are used on it (p. 4).
- **Nozzle-exit boundary layer** (p. 4–5).
  - In DES and hybrid RANS/LES, the nozzle interior is RANS and fast RANS-to-LES transition in the shear layer is wanted. Shur et al. (2016) built an enhanced DES for this; more elaborate hybrids need modelling in the "grey zone" (p. 4–5).
  - Wall-resolved high-Re nozzle turbulence is impractical. Older studies assumed laminar layers at reduced Re with inlet or in-nozzle disturbances (p. 5).
    - Bogey et al. tripped pipe-nozzle layers at Re 10⁵ with low-level random disturbances uncorrelated in azimuth, their amplitude tuned to a target exit turbulence level.
    - Geometrical tripping uses a small step or serration inside the nozzle (Lorteau et al. 2015). Non-geometrical tripping removes the first prism layers at the wall (ref. 38, Comput. Fluids 171, 2018).
    - "They all showed improvements" in flow and noise against experiment (p. 5).
  - **The Charles approach** (Brès et al. 2018, JFM 851; not in the library) combines synthetic turbulence seeding, localised near-wall refinement that resolves the outer-scale eddies, and a wall-stress model for the unresolved near-wall scales. It was applied first to an isothermal M = U_j/c∞ = 0.9 jet at Re = 10⁶, then to M 0.4, 0.7 and 0.8 with the same converging-straight pipe nozzle, all matched to Pprime (Poitiers) experiments at the same Re (p. 5). The result is **sub-dB accuracy for most inlet angles φ and St up to ≈ 2, on grids as small as 16 million cells** (p. 5; Fig. 3).
- **Initially laminar against turbulent jets** (p. 5–6).
  - With a turbulent exit layer, TKE and streamwise u_rms grow monotonically along the lipline. A laminar layer gives a u_rms **overshoot** at transition before relaxing to self-similar values (p. 5).
  - The initially laminar jet radiates **3–4 dB more at high frequencies**, those of the shear-layer dynamics (p. 5–6). Bogey & Bailly had reported the same effect.
  - Linear stability analysis of the near-nozzle mean profiles links the difference to different KH growth rates in the near-nozzle region (p. 6).
  - So shear layers need resolution in all three directions, since their eddies are not elongated like near-wall eddies. That means near-isotropic cells in the shear layers and the plume beyond the potential core, which is easier on unstructured meshes (p. 6).
- **Far-field prediction** (p. 6–8).
  - Hybrid approach: resolve the source region, then propagate analytically. FW-H is the most common; linearised Euler or full nonlinear Euler ([Langenais et al. 2019](langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation.md), Phys. Fluids 31) can be integrated numerically. Nonlinear effects matter for sonic booms and crackle (p. 6).
  - FW-H placement trade-off: a surface inside the turbulence misses the outside sources and picks up spurious sound from eddies crossing it. A surface too far away carries numerical dispersion and dissipation errors in the acoustic data (p. 7).
  - **End-caps** (Shur, Spalart & Strelets 2005): phase-average the complex far-field pressure from several surfaces that differ only in the streamwise position of the outflow disk. This cancels the uncorrelated noise of eddies crossing successive disks and is "now being widely used" (p. 7–8).
  - Ikeda et al. (2017) add a frozen-turbulence quadrupole correction on a single end-cap instead, with no tunable parameters and little extra cost (p. 8).

**LES as a complement to experiment**
- **Temperature non-uniformity in a military-style nozzle** (Brès, Towne & Lele 2019, AIAA 2019-2730; Figs 4–5, p. 8–9).
  - Heated, overexpanded jets from a faceted, sharp-throat C-D military-style nozzle with the nozzle in the domain, a thin turbulent exit layer and initially turbulent shear layers (p. 8).
  - Three cases at the same NPR and geometry, and so the same thrust and similar shock structure: military power (NTR = T₀/T∞ = 3), afterburner (NTR = 7), and non-uniform (an annulus of afterburner exhaust around a military-power core, as if only the outer afterburner rings were lit) (p. 8).
  - Afterburning raises noise over a wide range of frequencies and angles. The non-uniform case is "noticeably reduced" relative to full afterburner in peak OASPL, radiated power and spectra, over a large frequency range and most φ (p. 8–9). This supports the low-temperature Virginia Tech experiments of Mayo et al. (2017) at engine-like temperatures.
  - My reading of Fig. 5 (p. 9): at φ = 115°, the spectral peaks are about 97 (afterburner), 93 (non-uniform) and 85 dB/Hz (military) near 2 kHz. Peak OASPL is ≈ 135 dB near φ ≈ 120° for the afterburner, ≈ 133 dB at ≈ 125° for the non-uniform case and ≈ 131 dB at ≈ 130–135° for military power. So the non-uniform case is about 2 dB below full afterburner at the peak and peaks about 5° further aft. Observer distance and NPR are not given.
  - The authors call it a proof of concept, with "much work" left to analyse the data (p. 9).
- **Crackle** (Fig. 6, p. 9–10).
  - Ffowcs Williams et al. (1975) defined crackle as intermittent, sonic-boom-like waveforms (rapid rise, gradual return) radiated in the peak-noise direction, associated with pressure skewness > 0.4. They could not identify the mechanism, but argued from the amplitudes that propagation steepening would need long distances (p. 9–10).
  - Steep near-field waves had appeared in low-Re simulations of hot supersonic jets (De Cacqueray & Bogey 2014; Freund, Lele & Moin 2000) (p. 10).
  - **Nichols et al. (2013) LES** (not in the library): the grid was fine enough to resolve steep near-field waves. The far field was validated against laboratory data at NTR 3.65, the highest tested experimentally, and the runs were then extended to NTR 4.5 (p. 10). Their conclusions:
    - Crackle is emitted as a **weak shocklet whose signature traces back to the eddying motions of the shear layer**.
    - High-frequency shocklets from the near-nozzle shear layer are consistent with Mach-wave emission from eddies at the Oertel convective Mach number (formula below).
    - The intense crackle events **move faster than that and are infrequent** (Fig. 6) (p. 10).
  - Tam et al. (2018) stress that source nonlinearity does not rule out nonlinear propagation making crackle worse. Both effects complicate inverting near-field signals to the source, as in an F-35 beamforming analysis (Vaughn et al. 2019) (p. 10).
  - The authors call for simulations, test data and nonlinear propagation models together (p. 10).
- **BBSAN** (p. 10–11).
  - Harper-Bourne & Fisher's interfering point sources at shock–shear-layer interactions, and Tam's instability-wave × shock-cell formulation and semi-empirical spectra, are the starting point (p. 10).
  - LES of over- and underexpanded jets now span axisymmetric, chevroned and rectangular nozzles, cold to highly heated, but most of the effort has been validation ([Brès et al. 2017](bres-2017-unstructured-les-supersonic-jets.md)) (p. 11).
  - Shur et al. (2011) captured BBSAN for single and dual-stream sonic underexpanded jets with flight effects, and explained new dual-stream features, though they **overpredicted** those spectra (p. 11).
  - Suzuki (2016) reconciled the Harper-Bourne & Fisher cross-spectral density with instability wavepackets of several azimuthal orders, but **the resulting far-field spectra "do not closely resemble"** the measurements or the full-LES FW-H prediction. Morris & Miller's (2010) RANS-based statistical model captures the BBSAN spectral shape better (p. 11). The authors conclude that BBSAN modelling remains open.
  - Liu et al. (2014, 2015) studied pressure-mismatched jets matched to Cincinnati experiments, with wavenumber–frequency, cross-correlation and convection-speed analyses, but proposed no model change (p. 11).
  - Arroyo & Moreau (2019) used **wavelet analysis** of LES to isolate the BBSAN contribution of each azimuthal mode (p. 11).
- **Screech** (p. 11).
  - Existing models predict the tone frequency from Powell's feedback loop, but "no simple models" predict its amplitude (citing [Tam 1995](tam-1995-supersonic-jet-noise.md), Tam 2009, [Raman 1998](raman-1998-supersonic-jet-screech-review.md) and [Edgington-Mitchell 2019](edgington-mitchell-2019-aeroacoustic-resonance-review.md)).
  - That motivated simpler model problems (Berland et al. 2007; Manning & Lele 2000; Shariff & Manning 2013; [Suzuki & Lele 2003](suzuki-2003-shock-leakage-vortex-laden-mixing-layer-screech.md)), which found **shock leakage**: where the instantaneous vorticity is weak enough, the trapped shock system leaks a wave to the ambient (p. 11).
  - LES of pressure-mismatched jets (Nichols et al. 2012, rectangular) captures screech. But as of 2019 there were **"no comprehensive studies of screech dynamics using LES"** that reproduce and explain the nonlinear behaviour seen in experiments: variation of screech intensity, **mode staging** and the role of screech in **twin-jet coupling** (p. 11).
- **Closure by upstream hydrodynamic modes** (p. 11).
  - Besides Powell's upstream acoustic wave, recent work points to the upstream mode of [Tam & Hu 1989](tam-1989-three-families-instability-waves-high-speed-jets.md). It was highlighted for impingement tones from LES by [Bogey & Gojon 2017](bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets.md) and Gojon & Bogey (2017), and for screech from experimental data by [Edgington-Mitchell et al. 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md).
  - Still open: nozzle receptivity, and whether several feedback and receptivity paths coexist.
  - The Shock Lab group's impinging-jet experiments ([Weightman et al. 2017](weightman-2017-phase-lag-supersonic-jet-impingement.md); [Weightman et al. 2019](weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet.md)) are cited for "multiple-source mechanisms and multiple-receptivity paths whose manipulation leads to changes in the dominant resonant mode" (p. 11).

**LES as an aid to modelling**
- **Three advances since Lighthill** (p. 12): wavepacket dynamics ([Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md)), trapped resonant acoustic waves ([Towne et al. 2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md)) and Goldstein's generalised acoustic analogy (2003). In all three, LES supplies 3-D time-resolved data to guide and test the models.
- **Wavepackets: SPOD and resolvent** (Fig. 7, p. 12–13).
  - SPOD (Lumley 1970; [Towne et al. 2018](towne-2018-spod-relationship-dmd-resolvent.md)) gives energy-ranked modes at one frequency, orthogonal at that frequency, that optimally represent the space–time statistics. It combines the strengths of POD and [DMD](schmid-2010-dynamic-mode-decomposition.md) (p. 12).
  - Resolvent analysis ([McKeon & Sharma 2010](mckeon-2010-critical-layer-framework-turbulent-pipe-flow.md)) models large-scale structures as the response of the mean-flow linear operator to stochastic forcing. It has given low-order models of jet radiation (Jeun, Nichols & Jovanović 2016) and identified resonances ([Schmidt et al. 2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md)) (p. 12).
  - Forcing modes can stand for nonlinear interactions or stochastic inputs such as the nozzle boundary layer; response modes predict the most energetic coherent structures, i.e. convective wavepackets (p. 12).
  - Leading SPOD modes and resolvent responses (m = 1, St 0.2, 0.6, 1) of the M 0.9 and M 1.5 Charles LES show "in general, good agreement". The M 1.5 Mach-wave patterns (Fig. 7g–j) are at the root of aft supersonic noise (p. 12–13).
- **What the Charles databases showed** (Brès et al. 2018, JFM 851; [Schmidt et al. 2018](schmidt-2018-spectral-analysis-jet-turbulence.md); p. 12–13):
  - Azimuthal decomposition of the radiated noise shows that **m = 0 dominates at the peak angles and frequencies**, and that **the first three azimuthal modes recover most of the acoustic energy**.
  - Over a range of frequencies and these first few m, subsonic and supersonic jets are **low-rank**, tied to KH-like wavepackets in the initial shear layer. Elsewhere the response is not low rank: several similarly amplified KH- and **Orr-type** wavepackets act mainly downstream of the potential core.
  - This explains why early wavepacket models ([Cavalieri et al. 2013](cavalieri-2013-wavepackets-velocity-field-turbulent-jets.md); [Gudmundsson & Colonius 2011](gudmundsson-2011-instability-wave-models-near-field-jets.md); Sinha et al. 2014) failed at very low frequencies (p. 13).
- **Trapped acoustic waves and resonance** (p. 13–14).
  - The M 0.9 database revealed acoustic waves trapped in the potential core. The shear layer acts as a pressure-release duct, so the waves are confined radially to the very near field. At certain frequencies they resonate between the nozzle-exit plane and the streamwise contraction of the potential core ([Towne et al. 2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md); [Schmidt et al. 2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md)).
  - A cylindrical vortex-sheet model with analytic dispersion relations predicts the resonance for isothermal jets with **0.82 < M < 1.0**. At M 0.9, upstream and downstream waves were both seen in the LES core, with discrete tones in the near-nozzle near field in both LES and experiment (p. 14).
  - Tam & Hu (1989) had postulated the families, but the waves decay quickly away from the jet and had not been characterised systematically before (p. 14).
  - They have since been linked to jet–flap tones ([Jordan et al. 2018](jordan-2018-jet-flap-interaction-tones.md)), screech ([Edgington-Mitchell et al. 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [Gojon et al. 2018](gojon-2018-oscillation-modes-screeching-jets.md)) and impinging tones ([Bogey & Gojon 2017](bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets.md); [Tam & Ahuja 1990](tam-1990-theoretical-model-discrete-tone-impinging-jets.md)). Their dependence on Mach number, temperature ratio, nozzle geometry and flight is being studied (p. 14).
- **Acoustic analogy** (p. 14).
  - Karabasov et al. (2010) and follow-ons (Semiletov & Karabasov 2017, 2018) use Goldstein's GAA. The sources are Reynolds-stress and enthalpy-flux fluctuation covariances and their cross-covariances, and the non-uniform mean flow sits in the linear operator, so flow effects on generation and propagation are treated consistently.
  - Extensions cover efficient far-field evaluation, low-frequency asymptotics for slowly spreading shear flows, co-annular and non-isothermal jets, and shock-associated noise. GAA source covariances have been analysed from LES by Bassetti & Nichols (2014) and others.
  - Significant improvements in directivity and in how spectral shape changes with polar angle "are already evident" (p. 14). Source covariances from LES still need validation (p. 14).

**Remaining challenges** (p. 14–16)
- **Of Bodony & Lele's 2008 open issues**, the nozzle geometry, FW-H closure and computation–experiment comparisons are "mostly addressed". SGS modelling and the limited frequency bandwidth remain (p. 14).
- **SGS modelling and numerical dissipation** (p. 14–15).
  - The effective bandwidth is set by the SGS treatment together with the numerical bandwidth of the scheme. No comprehensive cross-solver comparison exists (p. 14–15).
  - Minimum-dissipation schemes need an SGS model to stop energy "tail up" at the shortest scales. The SGS model was "crucial" for high-Re wall-bounded nozzle-interior layers: turning it off gave wrong fluctuation and mean boundary-layer profiles (Bae 2018 thesis) (p. 15).
  - Schemes with built-in dissipation (upwind-biased stencils or fluxes, artificial dissipation, explicit filtering) often over-dissipate the shortest scales when an SGS model is added (p. 15).
  - The wall-model boundary condition affects the WMLES solution, and the impact of wall models and hybrid RANS–LES on acoustics is unexplored (p. 15).
  - The authors urge checking grid resolution region by region, along with the effective dispersion and dissipation of boundary conditions, interfaces, inflow forcing and sponges (p. 15). They suggest a focused workshop.
- **Bandwidth** (p. 15).
  - In 2008 predictions stopped at St = 1.5–3. That suffices for peak noise, resonance and wavepacket modelling, but full-scale regulation needs more.
  - **Grid study** (Brès et al. 2018, M 0.9): doubling the plume resolution in all directions raised the limit from **St ≈ 2 to 4**, with **69M against 16M cells, half the time step (CFL) and 10× the CPU cost** for the same simulated time. Whether tractable grids can reach practical bandwidths is unclear (p. 15).
  - My arithmetic: a doubling in all three directions everywhere would give about 8× the cells, so the 4.3× increase (69/16) means the refinement was confined to the plume and shear layers.
  - Alternatives: an SGS noise model that estimates the missing noise of unresolved scales from resolved ones (Bodony & Lele 2002, 2003, using the GAA), subfilter-scale enrichment (Ghate & Lele 2017, Fourier–Gabor modes) and stochastic source models (Bechara et al. 1994; Ewert et al. 2011) (p. 15).
- **Opportunities** (p. 15–16).
  - Hot supersonic jets need accurate variable specific heat (Liu et al. 2016; Chen & Mihaescu 2019), then combustion, multi-component gases, heat transfer and cooling flows. Full-power afterburner conditions are hard to reproduce in a laboratory, so LES could cut hardware testing once trusted (p. 15–16).
  - Installation: high-bypass engines (Tyacke et al. 2016 used immersed boundaries for the pylon and body forces for the fan and OGV wakes); integrated propulsion such as over-wing engines, distributed propulsion, twin jets, serpentine ducts, multi-stream rectangular nozzles and aft decks. Wall-modelled internal flow still struggles with hot streaks, heat transfer and separation upstream of the nozzle (p. 16).
  - Rocket launch vibro-acoustics has driven LES work (the LAVA solver); further uses are water-spray load mitigation, launch-abort safety and retro-rockets for Mars entry, descent and landing (p. 16).
  - GPUs: exascale machines (Frontier, 2021, > 1.5 exaflops) will be mixed CPU–GPU. CABARET jet LES ran grids up to 80M cells on a desktop with a few GPUs, with acoustic results in several days (Markesteijn, Semiletov & Karabasov 2015, 2018) (p. 16).
- **Summary claim** (p. 16–17): jet aeroacoustics is in a "second golden age" (Lele & Nichols 2014). Commercial tools (ANSYS Fluent, Star-CCM+, PowerFlow) are also being used. Integration of computation and experiment has intensified and should continue.

## Setup / method
This is a review with no new computations. All figures are adapted from the authors' earlier papers or from Nichols et al. and Schmidt et al.

**Solvers and approaches named** (p. 3–4, 16)

| Solver / group | Mesh and discretisation | Jet use cited |
|---|---|---|
| NTS (Shur, Spalart, Strelets) | Finite-volume, structured multi-block overlapping grids; blended central/upwind; DES, LES, hybrids | Subsonic and underexpanded jets, flight effects, end-cap FW-H |
| JENRE (NRL) | Finite-element-based unstructured | Circular, rectangular and military nozzles with plug and secondary streams; GAA source terms (Leib et al.) |
| LAVA (NASA) | Cartesian AMR, hybridised with overset curvilinear grids | Jet noise (hybrid RANS/LES), rocket launch, sonic boom |
| Lattice Boltzmann | AMR on cubic elements | Low-Mach aeroacoustics; high-Mach jets still research |
| AVBP (CERFACS) | Unstructured (and structured comparison) | Subsonic jets: unstructured matched accuracy at lower cost |
| Abalakin, Duben & Kozubskaya | Edge-based reconstruction on unstructured tetrahedra | Jet noise against Shur et al. |
| Charles (Cascade) | Unstructured finite volume; formerly central/upwind blend on hex-dominant grids, now Voronoi meshes with kinetic-energy- and entropy-preserving schemes; wall model, synthetic turbulence | Subsonic Pprime jets, supersonic and heated jets, military nozzle |
| CABARET GPU (Karabasov group) | GPU solver | 80M cells on a desktop |

**Charles subsonic jets** (p. 5, Figs 2–3, p. 6–7)

| Item | Value |
|---|---|
| Nozzle | Converging-straight pipe nozzle (Pprime) |
| Conditions | Isothermal, M = U_j/c∞ = 0.4, 0.7, 0.8, 0.9; Re = 10⁶ at M 0.9 (experimental Re matched in all cases) |
| Exit layer | Fully turbulent: synthetic turbulence + near-wall refinement + wall-stress model |
| Grid | 16M cells (refined case 69M) |
| Far field | FW-H with end-caps, cylindrical array of radius 14.3D, inlet angle φ = 90–160° |
| Accuracy | Sub-dB for most φ up to St ≈ 2 (16M); St ≈ 4 with 69M cells |

**Military-style nozzle LES** (p. 8–9): faceted, sharp-throat C-D nozzle in the domain, overexpanded, heated. NTR 3 (military), 7 (afterburner), non-uniform (afterburner annulus, military core). Same NPR (not given), same thrust, similar shock train. Fig. 4 colour bars run to T/T∞ = 5.5 and |u|/c∞ = 3.5.

**Method dependencies** (my summary for the lab workflow)
- *LES + FW-H* needs time-resolved surface data at adequate spatial and temporal resolution, with end-caps for the outflow (p. 7–8).
- *SPOD* needs long time-resolved records (LES or TR experiments). *Resolvent* needs only a mean flow (here the LES time average), plus a forcing model or SPOD data to set amplitudes (p. 12).
- *Azimuthal decomposition* of the radiated noise needs azimuthally resolved data (LES surfaces or microphone rings) (p. 12–13).
- *Wavelets* (Arroyo & Moreau 2019) localise BBSAN contributions by azimuthal mode in time and frequency (p. 11).
- *Crackle* statistics (skewness > 0.4) need time-resolved near- or far-field pressure. Rare, intense events need long records (p. 3, 9–10).
- *GAA* needs fourth-order source covariances, here from LES (p. 14).

## Key equations
The paper prints no numbered equations. Definitions used in the text:
- Reynolds number $Re = U_j D/\nu$ and Strouhal number $St = fD/U_j$ (p. 2); jet Mach number $M = U_j/c_\infty$ (p. 5).
- Nozzle temperature ratio $\mathrm{NTR} = T_0/T_\infty$, total over ambient (p. 8).
- Crackle criterion (Ffowcs Williams et al. 1975): pressure skewness $\mathrm{Sk}\{p\} > 0.4$ (p. 9).
- Oertel convective Mach number, as printed (p. 10): $M_{co} = \dfrac{1 + M_j}{1 + c_\infty/c_j}$.

> The Oertel formula is printed as above ("Ortel" in the text). Expanded, it is (U_j + c_j)/(c_j + c∞), the speed of Oertel's fastest wave family divided by c_j + c∞. Check it against the definition used in [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) before reusing it (cf. jet-noise-mechanisms topic, "Which convective Mach number sets the rocket peak angle?").

## Data tables
**Grid resolution and bandwidth, M 0.9 jet** (p. 5, 15):

| Grid | Cells | Δt | CPU cost (same simulated time) | St limit |
|---|---|---|---|---|
| Baseline | 16M | Δt₀ | 1× | ≈ 2 |
| Refined (plume resolution doubled in all directions) | 69M | Δt₀/2 | 10× | ≈ 4 |

**Values read from Fig. 3** (p. 7; my reading, FW-H at 14.3D, φ from the inlet axis):

| M | OASPL at φ = 90° | Peak OASPL (φ ≈ 145–150°) | Peak PSD at φ = 150° |
|---|---|---|---|
| 0.9 | ≈ 110 dB | ≈ 117 dB | ≈ 121 dB/St near St 0.2 |
| 0.8 | ≈ 107 dB | ≈ 114 dB | ≈ 117 dB/St |
| 0.7 | ≈ 105 dB | ≈ 111 dB | ≈ 113 dB/St |
| 0.4 | ≈ 97 dB | ≈ 100 dB (φ ≈ 130–140°) | ≈ 101 dB/St |

> No experimental symbols are visible for M 0.7 in Fig. 3 (my reading), so the "similar accuracy" at M 0.7 (p. 5) cannot be checked from this figure. The M 0.4 LES spectra at φ = 90° and 120° carry a narrow spike near St ≈ 1.5 that the experiment lacks; the paper does not comment on it.

## Figures worth remembering
- **Fig. 1 (p. 4):** Voronoi meshing: 2-D diagram, a boundary-confined diagram, and the 14-sided polyhedron from hexagonal close packing.
- **Fig. 2 (p. 6):** the M 0.9 turbulent-exit jet (pressure and temperature fields), with exit profiles of mean and RMS streamwise velocity against the Pprime measurements. My reading: the LES RMS peak (≈ 0.13U_j at r/D ≈ 0.497) is above the measured ≈ 0.10–0.11U_j, while the mean profile matches.
- **Fig. 3 (p. 7):** spectra at φ = 90°, 120°, 135°, 140°, 150° and OASPL directivity for M 0.4–0.9 against experiment. The evidence for "sub-dB to St ≈ 2".
- **Fig. 4 (p. 9):** instantaneous temperature and velocity of the non-uniform military-nozzle case. The hot afterburner annulus surrounds a cooler core.
- **Fig. 5 (p. 9):** spectra at φ = 115° and OASPL directivity for military, afterburner and non-uniform cases.
- **Fig. 6 (p. 10):** Nichols et al.: (a) a shock-sensor field with shocklets between large eddies, the refined-mesh region and the Oertel Mach angle; (b) a near-field p/p∞ trace with ±σ lines and a marked crackle event. My reading: the dashed lines sit 0.05p∞ apart, and the marked event reaches ≈ 1.12p∞.
- **Fig. 7 (p. 13):** SPOD mode 1 against resolvent response 1 (m = 1; St 0.2, 0.6, 1; M 0.9 and 1.5). Insets show (m) trapped waves in the M 0.9 potential core (x ≈ 0–4) and (n) the M 1.5 upstream wave (x ≈ 10–14). The same figure is Fig. 16 of [Schmidt et al. 2018](schmidt-2018-spectral-analysis-jet-turbulence.md) (that note), where inset (n) is identified as the Tam & Hu upstream subsonic wave.

## Notation
- D: nozzle exit diameter; U_j: jet velocity; c∞, c_j: ambient and jet sound speeds; M = U_j/c∞ (subsonic cases); M_j: jet Mach number; ν: kinematic viscosity.
- Re = U_jD/ν; St = fD/U_j; φ: observer angle from the upstream (inlet) axis, so φ = 150° is 30° from the downstream axis.
- NTR = T₀/T∞; NPR: nozzle pressure ratio; T/T∞, |u|/c∞: Fig. 4 colour scales.
- M_co: Oertel convective Mach number; Sk: skewness.
- m: azimuthal wavenumber; KH: Kelvin–Helmholtz; SPOD, BBSN (the paper's spelling of BBSAN), GAA, WMLES, SGS, DES, LEE, FW-H, AMR, LBM as usual.

## Relevance to this project
This is the standard short reference for how modern jet LES are built and where they still fall short. It is the overview behind the Charles LES family that supplies the SPOD, resolvent and HPOD test data across the library ([Schmidt et al. 2017](schmidt-2017-wavepackets-trapped-acoustic-modes-turbulent-jet.md), [Schmidt et al. 2018](schmidt-2018-spectral-analysis-jet-turbulence.md), [Towne et al. 2022](towne-2022-database-reduced-complexity-modeling.md), [Brès et al. 2021](bres-2021-les-twin-rectangular-jets-plasma.md)). [Lubert et al. 2022](lubert-2022-supersonic-jet-noise-launch-vehicles-review.md) singles it out among rocket-noise numerical methods (that note, p. 29–31). The CLAUDE.md scope asks for simulation to be covered alongside experiment, and this paper sets out the simulation side of jet noise. It is light on screech: its screech and impingement content is a page of pointers (p. 10–11).

**For the PyFR staging LES** (`Simulations/PyFR_Staging_Continuation/`)
- **The project fills a gap this review named.** In 2019 there were no LES studies that reproduce and explain screech intensity variation, mode staging or twin-jet coupling (p. 11). Since then the library has twin-jet coupling LES ([Brès et al. 2021](bres-2021-les-twin-rectangular-jets-plasma.md); [Jeun et al. 2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md)) and screeching round-jet LES ([Nogueira et al. 2026](nogueira-2026-flapping-motion-screeching-round-jets.md)), but still no LES trace of the A1/A2 staging limits. The continuation driver addresses exactly that.
- **Reduced Re with a laminar exit layer.** The staging config proposes Re_D ≈ 10⁵ and a laminar exit layer (simulation-methods topic, "Is ILES at reduced Re enough for staging?"). The review warns that above Re ≈ 10⁵ the Reynolds number acts mainly through the exit boundary layer (p. 2). An initially laminar jet radiates 3–4 dB more at high frequency, and its near-nozzle KH growth differs (p. 5–6). That supports matching the rig's exit layer rather than chasing Re. For the Shock Lab nozzle that layer is laminar and thin ([Edgington-Mitchell et al. 2021](edgington-mitchell-2020-waves-in-screeching-jets.md), p. 8, as cited on the simulation-methods topic page). High Re also changes intermittency and high-order statistics (p. 3), which matters if the LES is used for dwell-time or switching statistics.
- **ILES without an SGS model.** Minimum-dissipation schemes need an SGS model to stop energy tail-up, while schemes with built-in dissipation (upwind fluxes, filtering) tend to over-dissipate when one is added (p. 15). PyFR's flux reconstruction with Rusanov interface fluxes ([Witherden et al. 2014](witherden-2014-pyfr-flux-reconstruction-framework.md)) is in the second class, so ILES is defensible in principle. That is my inference; the review gives no FR-specific evidence. The cheap check is a tone and spectrum comparison between polynomial orders.
- **Resolution and cost.** Doubling plume resolution cost 10× CPU for a doubled St limit (p. 15). The staging driver needs the screech fundamental (St ≈ 0.6–0.7) and the shock-cell structure, not St ≈ 4, so effort should go into the shear layer near the lip and the first shock cells, with near-isotropic cells there (p. 6).
- **Far-field comparison.** If PyFR results are compared with the lab microphones, use an FW-H surface with end-caps (p. 7–8), or near-field probes at the experimental positions. The current lip-ring probes suffice for the driver.
- **GPUs.** The review's push towards GPU-capable jet LES (p. 16) is the niche PyFR occupies.

**Screech and impingement closure: links to the group's work**
- The review counts the upstream-wave closure ([Edgington-Mitchell et al. 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md); [Bogey & Gojon 2017](bogey-2017-feedback-loop-upwind-waves-ideally-expanded-impinging-jets.md)) as a main advance. It cites the user's impinging-jet papers ([Weightman et al. 2017](weightman-2017-phase-lag-supersonic-jet-impingement.md); [Weightman et al. 2019](weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet.md)) for multiple source and receptivity paths that set the dominant mode (p. 11). Its open questions, nozzle receptivity and coexisting feedback paths, are the staging questions in [screech-staging-and-mode-switching](../Topics/screech-staging-and-mode-switching.md).
- Trapped-wave resonance for 0.82 < M < 1.0 (p. 14) is the subsonic end of the guided-jet-mode family that closes A1/A2 screech. It is consistent with [Towne et al. 2017](towne-2017-acoustic-resonance-potential-core-subsonic-jets.md) (that note, p. 31–34).

**Jet-noise mechanisms**
- **Crackle source.** The library's jet-noise page notes that no generation study of crackle is indexed. This review gives the second-hand account of Nichols et al. (2013): shocklets traced to shear-layer eddies, intense events faster than M_co and rare (p. 10). Together with Tam et al. (2018) on propagation it supports "source shocklets, then propagation steepening" rather than either alone. That is the open question on the topic page; the primary paper is not in the library.
- **BBSAN models.** The 2019 verdict, that a wavepacket form of the Harper-Bourne & Fisher model gives spectra unlike the measurements while Morris & Miller's RANS statistical model does better (p. 11), predates the group's [Wong et al. 2021](wong-2021-wavepacket-modelling-bbsan.md), which reaches ±2 dB/St once LES jitter is included (that note, p. 20–25). So the review's ranking of statistical over wavepacket models is out of date for jets with measured shock cells. It concerns Suzuki (2016), not Wong.
- **Wavepackets.** m = 0 dominance at peak angles, three azimuthal modes for most of the acoustic energy, and low-rank KH against non-low-rank Orr behaviour (p. 12–13) restate [Schmidt et al. 2018](schmidt-2018-spectral-analysis-jet-turbulence.md). They agree with [Cavalieri et al. 2019](cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation.md) and [Jordan & Colonius 2013](jordan-2013-wave-packets-turbulent-jet-noise.md).
- **Heating and nozzle concepts.** The non-uniform-temperature LES (about 2 dB lower peak OASPL than full afterburner, my reading of Fig. 5) is one of the few heated, NTR 7 jet-noise results in the library. It is a model-free LES comparison: no source model is tested.

**Methods for the lab workflow (CLAUDE.md)**
- *Time-resolved data* (LES, TR schlieren, microphones): SPOD and resolvent comparison, FW-H, azimuthal decomposition, wavelets for BBSAN, and crackle skewness all need time resolution. The review twice flags **intermittency**: of wavepackets at high Re (p. 3) and of crackle events (p. 10). Block-averaged SPOD hides both. The SPOD → reconstruction → Hilbert POD chain could track wavepacket amplitude bursts in LES or TR schlieren, and conditioning on them would test whether crackle-like events coincide with wavepacket bursts. That is my suggestion, not the paper's.
- *Non-time-resolved data* (PIV): resolvent analysis needs only a mean flow, so PIV means of the lab jets can feed the same wavepacket models the review describes. GAA source covariances need two-point, two-time statistics, so PIV alone gives spatial scales only (cf. [Tan et al. 2019a](tan-2019-correlation-analysis-piv-screeching-jets.md)).

**Rocket noise.** The review lists rocket launch vibro-acoustics, water-spray mitigation and launch abort as LES opportunities (p. 16). It also stresses variable specific heat and multi-species gas for hot exhausts (p. 15), the modelling issues for the SP-8072 successors and LES in [rocket-noise-models](../Topics/rocket-noise-models.md). The NTR 7 afterburner case and the crackle LES are the nearest lab-scale analogues of rocket plumes here; neither includes impingement or a launch pad.

**Items to verify against the PDF**
1. Fig. 3 readings (OASPL and peak PSD), the missing M 0.7 symbols, and the St ≈ 1.5 spike in the M 0.4 LES spectra.
2. Fig. 5 readings (≈ 2 dB peak-OASPL difference, peak angles). The observer distance and the NPR are not in this paper; see AIAA 2019-2730.
3. Fig. 2 RMS-peak reading (LES ≈ 0.13 against experiment ≈ 0.10–0.11U_j).
4. Fig. 6b: whether the dashed lines are ±1σ steps of 0.05p∞, and what the marker "2" denotes.
5. Fig. 7 caption: "(n) detail from (1)" presumably means panel (l).
6. The Oertel M_co formula as printed (p. 10).
7. Reference-list errors, from comparison with other library notes or with memory:
   - Ref. 4 (Bodony & Lele 2008) is printed as AIAA J. **56**, 346–380, here and in the abstract. My recollection is volume 46; check before citing.
   - Ref. 85 (Edgington-Mitchell et al. 2018) is printed as JFM 855, "333"; the library note has JFM 855, R1.
   - Ref. 75 (Edgington-Mitchell 2019) is printed as Int. J. Aeroacoust. 18, 1–85; the library note has 18(2–3), 118–188.
   - Ref. 104 (Gojon, Bogey & Mihaescu 2018) is printed as AIAA J. 56, 1–7, doi:10.2514/1.J057003; the library note has AIAA J. 56(7), 2918–2924, doi:10.2514/1.J056936. One DOI is wrong.
   - Refs 128–129 (Markesteijn et al.) have the conference dates swapped (a 2015 paper with a 2018 date and vice versa).
8. The 16M → 69M (4.3×) cell count against "doubling the resolution … in all directions" (8× if global): presumably confined to the plume (my inference).

**Candidates for `/add-paper`** (cited, not in the library):
- Jet LES: Bodony & Lele 2008 (AIAA J., the predecessor review); Brès et al. 2018 (JFM 851, 83–124, nozzle-exit boundary-layer state, the M 0.9 database); Brès et al. 2017 (AIAA J. 55, 1164–1184; now [indexed](bres-2017-unstructured-les-supersonic-jets.md)); Shur, Spalart & Strelets 2005 (Int. J. Aeroacoust. 4, end-caps) and 2011 (AIAA J. 49, underexpanded jets); Mendez et al. 2013 (Int. J. Aeroacoust. 12, FW-H for jet LES); Freund 2001 (JFM 438) and 2019 (JFM 860); Bogey & Bailly 2010 (JFM 663); Bogey, Marsden & Bailly 2012 (JFM 701); Langenais et al. 2019 (Phys. Fluids 31; now [indexed](langenais-2019-hot-supersonic-jet-noise-simulation-nonlinear-propagation.md)); Viswanathan 2004 (JFM 516; PDF held, not yet indexed).
- Crackle and shock noise: Nichols et al. 2013 (J. Eng. Gas Turbines Power 135 and AIAA 2013-2197); Ffowcs Williams, Simpson & Virchis 1975 (JFM 71); Tam et al. 2018 (AIAA 2018-3306); Suzuki 2016 (AIAA J. 54, wavepacket BBSAN); Morris & Miller 2010 (AIAA J. 48); Nichols et al. 2012 (AIAA 2012-0678, rectangular-jet screech LES).
- Models: Goldstein 2003 (JFM 488, GAA); Karabasov et al. 2010 (AIAA J. 48); Jeun, Nichols & Jovanović 2016 (Phys. Fluids 28); Sinha et al. 2014 (JFM 742); Gojon & Bogey 2017 (AIAA J. 55, underexpanded impinging jets).
