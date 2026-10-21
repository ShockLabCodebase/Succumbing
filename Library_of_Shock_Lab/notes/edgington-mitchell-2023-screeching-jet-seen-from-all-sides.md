---
key: "edgington-mitchell-2023-screeching-jet-seen-from-all-sides"
title: "The screeching jet, seen from all sides"
authors: ["Edgington-Mitchell, D."]
year: 2023
type: "article"
venue: "JFM 954, F1"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "954", "pages": "F1", "note": "Focus on Fluids commentary on Léon et al. 2022, JFM 947, A36"}
doi: "10.1017/jfm.2022.964"
arxiv: ""
pdf: "screech/EdgingtonMitchell_2023_The-Screeching-Jet-Seen-From-All-Sides.pdf"
version: "published"
unverified: []
group: true
facility: ""
data: ["interferometry"]
methods: ["tomography", "symmetry-decomposition", "POD"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "helical", "intermittency"]
params: {}
topics: ["screech", "schlieren-and-density-imaging", "screech-frequency-and-global-modes"]
related: ["edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "tan-2015-bos-density-axisymmetric-jets", "edgington-mitchell-2020-waves-in-screeching-jets", "edgington-mitchell-2022-unifying-theory-jet-screech", "jeun-2024-screech-coupling-closure-rectangular-twin-jets"]
cites: ["edgington-mitchell-2014-underexpanded-jet-mach-disk-shear-layer", "edgington-mitchell-2020-waves-in-screeching-jets", "gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets", "jordan-2018-jet-flap-interaction-tones", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "tam-1986-bbsan-screech-relationship", "tam-1995-supersonic-jet-noise", "towne-2017-acoustic-resonance-potential-core-subsonic-jets"]
summary: "Commentary on Léon et al. 2022: six-view holographic interferometry gives the 3D density of a C-mode jet; m = ±1 proves the helix, POD shows frequent helicity reversals"
---
# The screeching jet, seen from all sides

- **Authors:** D. Edgington-Mitchell (Monash University)
- **Source:** J. Fluid Mech. 954, F1 (2023; published online December 2022), doi:10.1017/jfm.2022.964. This is a *Focus on Fluids* commentary on Léon, Donjat, Olchewsky, Desse, Nicolas & Champagnat (2022), *Three-dimensional density field of a screeching under-expanded jet in helical mode using multi-view digital holographic interferometry*, J. Fluid Mech. 947, A36. Open access.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech/EdgingtonMitchell_2023_The-Screeching-Jet-Seen-From-All-Sides.pdf` (index key `screech/EdgingtonMitchell_2023_The-Screeching-Jet-Seen-From-All-Sides.pdf`, 6 pp.)
- **Page refs:** the journal's printed pages are F1-1 to F1-6, which match PDF pages 1–6.
- **Tags:** screech, C mode, helical m = ±1, highly underexpanded jet, Mach disk, tomographic digital holographic interferometry (TDHI), density measurement, azimuthal Fourier decomposition, Radon transform, POD, helicity switching, intermittency, tomographic BOS, schlieren, experiments vs LES

## Summary
This is a short commentary, not a research paper. It has no new data, equations or models of its own. It reviews Léon et al. (2022), who measured the three-dimensional density field of a highly underexpanded jet screeching in the helical C mode with tomographic digital holographic interferometry (TDHI). TDHI uses six Mach–Zehnder interferometers. The author makes three main points. First, TDHI resolves shock gradients far more sharply than tomographic BOS or PIV, and its mean density field is as good as Rayleigh scattering. Second, doing the azimuthal Fourier decomposition on the phase data before the tomographic reconstruction gives the azimuthal modes cheaply. The dominant m = ±1 mode is the first rigorous proof that the screech wavepacket is helical. Third, POD shows that the helicity changes sign often during continuous running. The author uses the paper to argue that experiments still matter alongside high-fidelity LES, because they can cover parameter spaces quickly and can measure complex 3D geometries.

## Key findings
All of these are the commentator's account of Léon et al. (2022). The numbers and methods are in that paper, not here.

- **The flow is very complex** (p. 2):
  - Far from the design condition, a large Mach disk forms and adds an inner annular shear layer starting at the triple point.
  - The screeching jet therefore contains a helical KH vortex, a helical upstream guided-jet mode, two annular shear layers and the shock–expansion system.
- **The TDHI technique** (p. 2–3, Fig. 1):
  - Six Mach–Zehnder interferometers with a pulsed 532 nm laser and six cameras (Fig. 1 schematic and photograph).
  - It is not the first digital holographic interferometry in underexpanded jets (Buchmann, Atkinson & Soria 2012), nor the first tomographic density measurement (Nicolas et al. 2017, tomographic BOS). The commentator knows of no 3D density data of comparable quality (p. 2).
  - The phase of the wavefront encodes the refractive index, so the method gives quantitative density at high resolution. It is harder to set up and post-process than schlieren or shadowgraphy (p. 3).
  - For axisymmetric mean fields one view plus Abel inversion is enough. Instantaneous fields are never axisymmetric, so they need several cameras and tomography (p. 3).
  - The commentator says it gives "order-of-magnitude" better spatial resolution than tomographic PIV or BOS, which lets it capture shock gradients (p. 3).
- **Mean density** (p. 3, Fig. 2):
  - The shock gradient is much sharper than with BOS or PIV. Fig. 2 compares Z-type schlieren (Edgington-Mitchell, Honnery & Soria 2014), tomographic BOS (Nicolas et al. 2017) and TDHI.
  - It is comparable to the Rayleigh-scattering data of Panda & Seasholtz (1999), described as the previous "gold standard" for mean density in supersonic jets.
- **Azimuthal decomposition before reconstruction** (p. 3):
  - Jet noise structures are low rank in azimuth (Jordan & Colonius 2013), so azimuthal decomposition is central to recent progress (Towne et al. 2017; Bogey 2021).
  - Léon et al. do the azimuthal Fourier decomposition on the measured phase before the tomographic step. The Radon transform preserves the symmetry, so the azimuthal modes come out efficiently.
- **Proof that C-mode screech is helical** (p. 3–4):
  - The C mode has been called helical since early studies, but in the hydrodynamic field this was inferred, not measured.
  - The author's own PIV study of the C mode (cited as Edgington-Mitchell et al. 2014; the only matching reference-list entry is Edgington-Mitchell, Honnery & Soria 2014, Phys. Fluids, on the Mach disk shear layer) claimed helicity but could not show it rigorously. LES later showed a clear helix (Li et al. 2019).
  - The dominance of m = ±1 in Léon et al. (2022) gives the first rigorous proof (p. 4).
- **Helicity switches sign** (p. 4):
  - POD shows that the direction of rotation changes sign frequently during continuous operation. This is the first time such intermittency has been shown for a screeching jet.
  - Earlier work suggested the jet has no preferred helicity but locks to one direction once running.
  - Both directions are equally likely, but one has slightly stronger density fluctuations. The commentator suggests a subtle nozzle asymmetry amplifies growth in one direction without being strong enough to set a preferred direction.
- **3D m = 1 density structure** (p. 4, Fig. 3): the reduced-order (energy plus azimuthal decomposition) reconstruction recalls Oberleithner et al. (2011). The difference is that it is built from a measurement of the whole density field, with no extrapolation from 2D planes.
- **Role of experiments** (p. 2, 4–5):
  - LES can now match measured screech frequency and amplitude very accurately (Jeun et al. 2022, AIAA J.), so the role of experiments is less clear (p. 2).
  - Experiments can still (i) cover large parameter spaces quickly, as for several resonance models built from simple measurements over wide conditions (Jordan et al. 2018), and (ii) measure complex 3D geometries that are hard to simulate (p. 4–5).
  - TDHI could do both at once (p. 5).
- **Limits of TDHI** (p. 5):
  - It relies on azimuthal symmetry. "Azimuthal" modes are hard to interpret for non-axisymmetric geometries.
  - Schlieren needs skilled optics but little post-processing. BOS has simple optics but heavy post-processing. TDHI needs both, the "worst" of both worlds in the commentator's phrase.
  - The commentator expects it may still become standard, as tomographic PIV did once it was sold off the shelf.

## Setup / method
No experiment or model in this paper. What it reports about Léon et al. (2022):
- **Flow:** highly underexpanded screeching jet with a Mach disk, in the helical C mode (p. 2–3). The commentary doesn't give NPR, nozzle size, Mach number or screech frequency; get these from Léon et al. (2022).
- **Diagnostic:** TDHI with six Mach–Zehnder interferometers, pulsed 532 nm source, six cameras (Fig. 1, p. 2).
- **Processing chain:**
  1. Measure the wavefront phase in each view.
  2. Do the azimuthal Fourier decomposition on the phase data.
  3. Reconstruct tomographically, using the symmetry of the Radon transform (p. 3).
  4. Run POD to find the dominant structures and the sign of the helicity over time (p. 4).
- **Time resolution:** not stated. The helicity switching comes from POD of snapshots, so check in Léon et al. whether the data are time-resolved and how the switching rate was measured.
- **Comparison fields** (Fig. 2, p. 3): Z-type schlieren mean, tomographic BOS mean, TDHI mean.

## Key equations
None. The commentary has no equations.

## Data tables
None.

## Figures worth remembering
All figures are reproduced from other papers.
- **Fig. 1 (p. 2):** the TDHI set-up from Léon et al. (2022): six lines and six cameras around the jet, schematic and photograph.
- **Fig. 2 (p. 3):** the same kind of mean field from Z-type schlieren (Edgington-Mitchell, Honnery & Soria 2014), tomographic BOS (Nicolas et al. 2017) and TDHI. It shows how much sharper TDHI makes the shocks.
- **Fig. 3 (p. 4):** 3D density isosurfaces of the m = 1 mode, with slices on planes y = 0, z = 0 and x = 3.85D. The cross-plane shows the two-lobed (±) m = 1 pattern.

## Notation
- TDHI: tomographic digital holographic interferometry.
- m: azimuthal wavenumber. The C mode is helical, m = ±1, with the sign giving the direction of rotation.
- A1, A2, B, C, D: screech stages. C is the helical stage (see the notation in [edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)).
- ρ̃: density fluctuation of the azimuthal mode (Fig. 3 colour bar).

## Relevance to this project
This project analyses resonance and feedback in Shock Lab group experiments with schlieren, acoustics and PIV (see CLAUDE.md). The commentary is by the group lead and sets out the group's view of where experiments fit next to LES. It is not a source of data or methods. Cite Léon et al. (2022) for anything quantitative, and add it with `/add-paper` if needed.

- **Mode switching and intermittency:**
  - The key physics claim is that the helical C mode flips its direction of rotation often, rather than locking to one sign (p. 4).
  - In 2D schlieren or planar PIV, +1 and −1 rotation look the same in a single plane. A POD pair would show a ring in its phase portrait whichever way the helix turns, so this kind of switching can stay hidden.
  - To detect it you need at least two azimuthal views, or azimuthal microphone arrays (cross-spectral phase between mics to split +m from −m), plus a time-resolved method that tracks it over time. The SPOD → reconstruction → Hilbert POD pipeline, or a Hilbert transform of azimuthal-mode coefficients from mic arrays, would give the instantaneous phase and amplitude of each rotation sense. This is a suggestion, not in the paper.
  - Compare the intermittent coupling of twin jets in [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md) and the mode switching in [mancinelli-2019](mancinelli-2019-screech-prediction-upstream-modes.md).
- **Method choice and data type:**
  - Azimuthal decomposition before tomographic reconstruction is a general idea. It could also apply to multi-view schlieren or tomographic BOS.
  - Mean density from a single view with Abel inversion is the route in [tan-2015](tan-2015-bos-density-axisymmetric-jets.md). It works for the mean only, and the commentary makes the same point (p. 3).
  - [molnar-2023](molnar-2023-physics-informed-bos-supersonic.md) is another way to get quantitative fields from BOS.
- **Modelling side:**
  - The commentary names the structures that models need to include: helical KH wavepacket, helical upstream guided-jet mode, inner Mach-disk shear layer and shocks (p. 2).
  - It credits recent progress to pairing theoretical models with decompositions of LES (Gojon, Bogey & Mihaescu 2018) or experiments (Edgington-Mitchell et al. 2021). See [edgington-mitchell-2020-waves-in-screeching-jets](edgington-mitchell-2020-waves-in-screeching-jets.md) (published as JFM 913 A7, 2021), [edgington-mitchell-2022-unifying-theory-jet-screech](edgington-mitchell-2022-unifying-theory-jet-screech.md) and [nogueira-2021-absolute-instability-shock-containing-jets](nogueira-2021-absolute-instability-shock-containing-jets.md).
  - The 3D low-rank reconstruction is compared with [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md). That paper rebuilt a 3D helix from 2D PIV planes, whereas TDHI measures the whole field.
  - The point that LES now reproduces screech frequency and amplitude (Jeun et al. 2022, AIAA J.) relates to [jeun-2024](jeun-2024-screech-coupling-closure-rectangular-twin-jets.md), by the same LES group.
  - Experiments are valued for wide parameter sweeps, as in [jordan-2018](jordan-2018-jet-flap-interaction-tones.md), and for complex 3D geometries. This fits the group's work on impinging jets ([weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)) and non-axisymmetric nozzles.
- **Limits for this project:** TDHI depends on azimuthal symmetry, so it doesn't carry over easily to the non-axisymmetric nozzles the group studies (p. 5).
- **Related works cited, candidates for `/add-paper`:**
  - Léon et al. 2022 (the paper under review; the source for all numbers).
  - Edgington-Mitchell 2019 (review of resonance in screeching and impinging jets, Int. J. Aeroacoust.).
  - Edgington-Mitchell, Honnery & Soria 2014 (Mach disk and its shear layer, Phys. Fluids; it is also the C-mode PIV study the text cites on p. 3).
  - Nicolas et al. 2017 (tomographic BOS) and Amjad et al. 2020 (tomographic BOS assessment).
  - Panda & Seasholtz 1999 (Rayleigh scattering).
  - Gojon, Bogey & Mihaescu 2018; Li et al. 2019; Jeun et al. 2022 (AIAA J., twin rectangular jets).
  - Bogey 2021 (near-nozzle acoustic tones).
