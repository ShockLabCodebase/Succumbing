# Reference library schema

How the reference library is laid out, and the metadata every note carries. `Library_of_Shock_Lab/tools/library.py` reads this metadata to build the index and the BibTeX file and to check the library. This file lists the allowed tag values, which keeps searches reliable.

## Layout

| Path | What it is | Who writes it |
| --- | --- | --- |
| `notes/<slug>.md` | One note per paper: YAML frontmatter + structured body | `/add-paper` |
| `topics/<topic>.md` | Living review of one research thread across papers (consensus, disagreements, open questions) | `/add-paper` revises it in batches; `/lit` may extend it |
| `topics/_queue/<topic>.md` | Topic contributions from newly indexed papers (`## <note key>`) and from research questions (`## research-question: <slug>`), waiting for the next batch revision of that page | `/add-paper`, `/research-question` |
| `data/*.csv` | Numbers collected across papers (screech tones, shock spacing, rocket-noise parameters), each row citing note + page | `/add-paper` appends; see `data/README.md` |
| `INDEX.md` | One line per paper, **generated** from frontmatter | `python Library_of_Shock_Lab/tools/library.py build` only |
| `references.bib` | BibTeX for every note, **generated**; key = note slug | `library.py build` only |
| `Paper_PDFs/<topic>/` | Indexed PDFs, one copy each, filed by the note's first (most significant) topic (local only, git-ignored) | `library.py file` |
| `Paper_PDFs/_Unprocessed/` | New PDFs waiting for `/add-paper`, under any name | user |
| `Papers_to_get.md` | Papers still to obtain; remove each one once indexed | user / `/add-paper` |
| `notes_to_check.md` | Parts of notes to verify against the PDFs, and inconsistencies between notes | `/add-paper`, topic-page work |
| `notes_to_update.md` | Queued changes to existing notes (cross-links, contradictions, corrections), applied in batches by `/add-paper` | `/research-question` |
| `tools/library.py`, `tools/test_library.py` | The library tool and its tests (`python -m unittest discover -s Library_of_Shock_Lab/tools`) | |

Never hand-edit `INDEX.md` or `references.bib`; edit the note's frontmatter and rebuild.

## Frontmatter

Every note starts with a frontmatter block. **Each value is a JSON literal** (double-quoted strings, `[...]` lists, `{...}` maps, bare numbers/`true`/`false`), one field per line. That is valid YAML too, and `library.py` parses it without dependencies. Use `""` / `[]` / `{}` for empty values; keep every field.

```yaml
---
key: "schmidt-2020-guide-spod"
title: "Guide to spectral proper orthogonal decomposition"
authors: ["Schmidt, Oliver T.", "Colonius, Tim"]
year: 2020
type: "article"
venue: "AIAA J. 58(3), 1023–1033"
bib: {"journal": "AIAA Journal", "volume": "58", "number": "3", "pages": "1023--1033"}
doi: "10.2514/1.J058809"
arxiv: ""
pdf: "Schmidt-Colonius_2020_Guide-To-Spectral-Proper-Orthogonal-Decomposition.pdf"
version: "published"
unverified: ["volume/issue/pages not printed in this PDF"]
group: false
facility: ""
data: ["LES", "PIV-TR"]
methods: ["SPOD", "PSD"]
flow: ["round-jet", "subsonic", "wake"]
phenomena: ["KH-wavepackets"]
params: {"M_j": "0.4"}
topics: ["modal-decomposition"]
related: ["towne-2018-spod-relationship-dmd-resolvent", "schmidt-2019-streaming-spod"]
cites: []
summary: "Practical SPOD–Welch guide: N_FFT bias vs variance, 50% overlap, Hamming + a_w, chi-squared CIs, reading low-rank gaps"
---
```

| Field | Content |
| --- | --- |
| `key` | Note filename without `.md`. Also the BibTeX key and the id used in `related`, `cites`, topic pages and CSVs. |
| `title` | Title as printed, in the paper's own capitalisation. |
| `authors` | All authors, `"Surname, Given names"`, in order. Keep accents (`"Brès, Guillaume A."`). Multi-word surnames stay whole (`"Edgington-Mitchell, Daniel"`, `"von Saldern, Jakob G. R."`). |
| `year` | Year of the version cited (journal year if published; arXiv/thesis year otherwise). |
| `type` | One of `article`, `review` (journal review article), `conference`, `preprint`, `thesis-phd`, `thesis-msc`, `report`, `book`. |
| `venue` | Short human-readable venue, e.g. `"JFM 945, A8"`, `"AIAA 2021-1234"`, `"arXiv:2507.19167"`, `"PhD thesis, Monash"`. |
| `bib` | BibTeX fields not covered elsewhere: `journal`, `booktitle`, `volume`, `number`, `pages` (use `--`), `publisher`, `institution`, `school`, `note`. Only what is known. |
| `doi`, `arxiv` | Bare DOI (`10.1017/...`) and arXiv id (`2507.19167`); `""` if none. |
| `pdf` | The **index key**: path relative to `Paper_PDFs/` for PDFs there (e.g. `"rocket-noise-measurements/Gee-EtAl_2023_....pdf"`), or the absolute path with forward slashes for PDFs elsewhere. `/add-paper` uses it to tell which PDFs are already indexed. |
| `version` | Which version the held PDF is: `published` (publisher's version of record), `accepted-manuscript` (author's accepted or final version), `preprint` (arXiv/HAL version of a published paper, or an unpublished preprint), `conference` (a conference paper, including Proceedings of Meetings on Acoustics), `thesis`, `report`. |
| `unverified` | Citation details (DOI, volume, pages, year) that did **not** come from the PDF, e.g. `["DOI and pages from memory"]`. `[]` when all came from the PDF. The BibTeX entry carries these as a warning. |
| `group` | `true` if the paper is Shock Lab group work: D. Edgington-Mitchell (or D. Mitchell) is an author, or the paper is by a group member (e.g. the user's thesis). Papers from other Monash labs (e.g. Soria's LTRAC turbulence work without Edgington-Mitchell) are `false`. |
| `facility` | Where the experiment or computation was done, e.g. `"Shock Lab group facility"`, `"NASA Glenn SHJAR"`, `"OSU GDTL"`, `"Charles LES (Cascade)"`. `""` for theory/reviews. |
| `data` | Data the paper uses or produces (vocabulary below). |
| `methods` | Analysis and modelling methods (vocabulary below). |
| `flow` | Flow configuration and regime (vocabulary below). |
| `phenomena` | Physics studied (vocabulary below). |
| `params` | Key conditions as strings: `M_j`, `M_d`, `NPR`, `TR` (stagnation/ambient temperature ratio), `T_j/T_∞` (static jet/ambient temperature ratio), `AR`, `s/D` (twin spacing), `z/D` or `h/D` (impingement distance), `Re`, `St`, `D_e`, vehicle names, etc. Ranges as `"2.1–3.4"`. |
| `topics` | Topic pages (`topics/<name>.md`) this paper belongs in (vocabulary below), **most significant first**: the first topic decides the folder the PDF is filed in. Every paper with a topic must be discussed on that page. |
| `related` | Other notes in this library the paper is closely tied to (builds on, contradicts, same data, same group thread). Judgement, from the note's content. |
| `cites` | Notes in this library that the paper's reference list cites. **Filled by** `library.py cites`; do not edit by hand. |
| `summary` | One line, at most about 160 characters: the takeaway, in the style of the old index rows. Goes into `INDEX.md`. |

The note body keeps its existing structure (header bullets, Summary, Key findings, Setup / method, Key equations, Data tables, Figures, Notation, Relevance). See the `/add-paper` skill for the template.

## Topic pages

A topic page is a short living review of one research thread, written for the user and for later sessions. It is the entry point for a question on that thread. Every claim cites a note, `[Author Year](../notes/<key>.md)`, with a page (`p. N`) where the claim is specific. Structure:

```markdown
# <Topic title>

_Last updated: YYYY-MM-DD · <n> papers_

## Scope
What the thread covers and what it leaves to other topic pages (with links).

## Current understanding
The consensus, as numbered or bulleted claims, each with its supporting papers. Experiments and models side by side.

## <Thread 1> … ## <Thread n>
One section per sub-question (e.g. "Closure mechanism", "Frequency prediction", "Staging"): how understanding developed, what each paper added, the key numbers, and how well models match experiment.

## Disagreements and open questions
Each as a short paragraph: the competing views, who holds each, the evidence, and what measurement or model would settle it.

## Methods and data
Which diagnostics and analyses the thread relies on, and which suit time-resolved vs non-time-resolved data (CLAUDE.md workflow).

## Relevance to our work
How the thread bears on the lab's experiments, the SPOD → reconstruction → HPOD pipeline, the PyFR staging LES, and rocket-noise modelling, as applicable.

## Papers
Every note with this topic, one line each: link, then its role in the thread. Keep it sorted by year.
```

Topic pages are synthesis, not lists of summaries: say how papers relate (builds on, contradicts, confirms with a different method) rather than restating each one. Keep each page to about 1,500–3,000 words; split a thread into its own page (and add it to the `topics` vocabulary) when it outgrows that. `library.py check` warns when a note's topic page does not link the note.

## Controlled vocabulary

Use these values only. To add a value, add it here first (with a one-line meaning) and then use it. `library.py check` warns about values not listed here.

### `data`
- `schlieren-TR`: time-resolved (high-speed) schlieren
- `schlieren`: non-time-resolved or single-shot schlieren
- `shadowgraph`
- `BOS`: background-oriented schlieren
- `interferometry`: holographic or other interferometry
- `PIV`: planar PIV, not time-resolved
- `PIV-TR`: time-resolved PIV
- `PIV-stereo`: stereoscopic PIV (add `PIV` or `PIV-TR` too)
- `hot-wire`
- `pressure-probe`: static or total pressure surveys in the flow
- `microphones-near`: near-field microphones / pressure sensors
- `microphones-far`: far-field microphones
- `mic-array`: phased array or azimuthal ring
- `intensity-probe`: multi-microphone vector intensity probe
- `extinction-imaging`: back-lit imaging of sprays/particles
- `condensation-imaging`: Mie scattering from condensation or seeding
- `infrared-imaging`: thermal / IR cameras
- `full-scale`: full-scale launch, static firing or aircraft measurements
- `subscale`: subscale rocket or model test
- `LES`
- `DNS`
- `LNS`: linearised or laminar Navier–Stokes simulations
- `RANS`
- `Euler`: inviscid CFD
- `CAA`: computational aeroacoustics propagation
- `model-only`: data produced only by the paper's own reduced model (no experiment or high-fidelity simulation)
- `synthetic`: synthetic test signals or surrogate data used to demonstrate a method
- `field-data`: non-flow time series used as examples (climate, ocean, seismic, plasma records)
- `none`: theory, review or method with no new data

### `methods`
- `statistics`: mean, RMS, skewness, PDFs
- `PSD`: spectra, Welch estimates
- `spectrogram`: frequency–time maps: short-time spectra, SPOD spectrograms (wavelets have their own value)
- `coherence`: cross-spectra, coherence, cross-correlation, two-point correlation
- `phase-averaging`: phase-locked or phase-averaged data
- `conditional-sampling`
- `POD`
- `POD-pair`: phase recovery from pairs of POD modes
- `SPOD`: Welch/frequency-domain SPOD (Towne–Schmidt) and variants
- `SPOD-time`: Sieber time-domain SPOD
- `BMD`: bispectral mode decomposition
- `bispectrum`: bispectrum / bicoherence of signals
- `DMD`
- `Koopman`
- `HPOD`: Hilbert POD / complex POD
- `Hilbert-transform`: instantaneous phase/amplitude/frequency from the analytic signal
- `wavelets`
- `EMD`: empirical mode decomposition, Hilbert–Huang
- `wavenumber-filtering`: streamwise Fourier / k_x decomposition of modes
- `symmetry-decomposition`: D2 / SS–SA–AS–AA or azimuthal Fourier splits
- `beamforming`: phased-array source localisation
- `acoustic-holography`: near-field acoustical holography (NAH, SONAH), partial-field decomposition
- `vector-intensity`
- `Abel-inversion`
- `tomography`
- `LSA-local`: local (parallel) spatial/temporal linear stability
- `LSA-Floquet`: Floquet / periodic-base-flow stability
- `LSA-global`: global or biglobal stability
- `vortex-sheet`: vortex-sheet dispersion models
- `resolvent`
- `harmonic-resolvent`
- `PSE`
- `OWNS`
- `transient-growth`
- `eddy-viscosity`: eddy-viscosity models for linear operators
- `resonance-model`: phase-criterion / feedback-loop frequency models (screech, impingement, edge tones)
- `shock-cell-model`: Pack/Prandtl, Tam, PSE or vortex-sheet shock-cell models
- `empirical-model`: SP-8072-type and other empirical/semi-empirical noise models
- `propagation-model`: atmospheric, nonlinear or ground-reflection acoustic propagation models
- `ray-tracing`: geometrical-acoustics (eikonal) ray tracing through measured or modelled flows
- `FTLE`: finite-time Lyapunov exponents, Lagrangian coherent structures
- `FW-H`: Ffowcs Williams–Hawkings / Kirchhoff surface integrals
- `acoustic-analogy`: Lighthill-type analogies and wavepacket source models
- `GSD`: geometric shock dynamics
- `shock-relations`: Rankine–Hugoniot, shock-polar or moving-shock models
- `ROM`: reduced-order models: Galerkin projection, balanced POD / ERA, system identification
- `ML`: machine learning, PINNs
- `numerics`: development of a numerical scheme or solver
- `facility-design`
- `calibration`: optical alignment, distortion correction, tracer response
- `optical-modelling`: synthetic schlieren / BOS images, light-ray tracing, numerical schlieren from CFD

### `flow`
- `round-jet`, `rectangular-jet`, `elliptical-jet`, `planar-jet` (2D / planar models), `twin-jet`, `multi-stream-jet` (coaxial or multi-stream nozzles), `swirling-jet`
- `clustered-jets`: clusters of three or more nozzles (multi-engine rockets)
- `jet-in-crossflow`
- `impinging-jet`: jet on a plate, cylinder, deflector or pad
- `jet-edge`: jet grazing a plate or flap edge
- `rocket-plume`, `launch-vehicle` (vehicle in flight or at lift-off), `jet-aircraft`
- `subsonic`, `supersonic`
- `underexpanded`, `overexpanded`, `ideally-expanded`
- `heated`: hot jet or rocket exhaust
- `shear-layer`, `wake`, `cavity`, `airfoil`, `wall-bounded` (pipe, channel, boundary layer)
- `shock-tube`: shock-tube, detonation or transient starting jets
- `spray`
- `wind-tunnel`
- `external-flow`: bodies in a stream (cones, steps, spheres in tunnels)
- `hypersonic`
- `generic`: method papers not tied to one flow

### `phenomena`
- `screech`, `staging` (A1/A2/B/C mode jumps), `mode-switching`, `intermittency`
- `multimodal`: several resonance loops or tones active at once (not switching)
- `standing-waves`: acoustic standing waves outside jets
- `receptivity`: nozzle-lip or forcing receptivity
- `global-mode`: self-excited global oscillation, Hopf bifurcation, lock-in
- `hysteresis`: bistability and hysteresis between resonance states
- `precession`: rotation or wander of a flapping or helical axis
- `coupling`: twin-jet or multi-jet coupling
- `flapping`, `helical`, `axis-switching`
- `guided-jet-mode`: upstream guided/neutral acoustic waves, trapped duct modes
- `KH-wavepackets`, `streaks`, `Orr`
- `absolute-instability`
- `shock-cells`, `Mach-disk`, `shock-leakage`, `shocklet` (wall-jet or transient shocklets)
- `shock-waves`: oblique or conical shocks and expansion fans outside jet shock-cell trains
- `compressibility-effects`: compressible shear-layer growth, convective Mach number
- `mixing-enhancement`: jet spreading and mixing changes, streamwise vortices
- `jet-merging`: merging of neighbouring jets or plumes
- `triadic-interaction`, `mean-flow-deformation`
- `BBSAN`, `mixing-noise`, `Mach-wave-radiation`, `crackle`, `nonlinear-propagation`
- `impingement-tones`, `edge-tones`, `cavity-tones` (Rossiter), `vortex-shedding`
- `installation-effects`: scattering, reflection or confinement by pads, deflectors, ducts, terrain or airframes
- `ignition-overpressure`, `sonic-boom`, `infrasound`
- `atmospheric-propagation`: refraction, absorption and meteorological effects on propagation
- `directivity`, `source-location`, `acoustic-efficiency`
- `noise-control`: passive or active control
- `shock-diffraction`
- `coherent-structures`: general eduction of coherent structures

### `topics`
Each value is a page in `topics/`.
- `screech`: screech mechanism, closure, shock leakage and source location, amplitude and receptivity, triads
- `screech-frequency-and-global-modes`: screech frequency prediction models, convection speed, absolute instability and global modes, self-excitation, model and LES validation against experiment
- `screech-staging-and-mode-switching`: A1/A2/B/C/D staging, k_s1/k_s2 loop assignment, mode switching, hysteresis, multimodal loops, staging-limit prediction
- `non-axisymmetric-jets`: single rectangular and elliptical jets: flapping, wagging and helical modes, single-jet models, nozzle-shape control
- `axis-switching-and-mean-flow`: axis switching and mean-flow evolution of non-round jets; streamwise and corner vortices; modes across the switch (bi-axial, new flapping, quasi-helical); tone-dependent mean flows
- `twin-jet-coupling`: twin round and rectangular jets: coupling states (SS/SA/AS/AA), intermittency and switching between them, twin-jet models and LES
- `impinging-jets-and-edge-tones`: impinging jets, jet–edge and jet–flap tones, other jet–surface feedback
- `linear-models`: mean-flow linear theory and wave models: local stability, vortex sheets, absolute instability, Floquet models, guided-jet-wave theory, wavepacket models
- `shock-cell-models`: Prandtl–Pack, Tam and multiple-scales shock-cell models, shock spectrum, KH × shock product picture, Floquet in x, PFE, wavepacket BBSAN sources
- `linear-operator-methods`: operator methods on the linearised equations: global stability, resolvent analysis (forcing, eddy viscosity), PSE/PFE/OWNS, harmonic resolvent
- `jet-noise-mechanisms`: mixing noise, Mach wave radiation, BBSAN, crackle in jets
- `modal-decomposition`: POD, SPOD and variants, DMD, BMD, Koopman: algorithms and practice
- `time-frequency-methods`: Hilbert transform, HPOD, EMD, wavelets, SPOD reconstruction/filtering, intermittency tracking
- `rocket-noise-models`: SP-8072 and successors (DSM, SATURN, efficiency, directivity, source location), CAA/LES predictions
- `rocket-noise-measurements`: full-scale launch and static-firing measurements, sonic booms, nonlinear propagation
- `diagnostics-and-facilities`: PIV practice in shock-containing flow (tracer response, calibration, sample size and phase), facility design and acoustic environment
- `schlieren-and-density-imaging`: schlieren and time-resolved schlieren practice, BOS, Abel inversion, tomography, interferometry, base-flow density, synthetic schlieren and image–simulation matching
- `simulation-methods`: CFD/LES numerics, solvers, ML for flows, shock-dynamics computations

## Retired topic names

Never use these, and never recreate their pages. A note (for example a draft in `notes/_incoming/`) that still carries one gets the replacement instead:
- `non-axisymmetric-and-twin-jets` (split 2026-10-21): `non-axisymmetric-jets` for single rectangular or elliptical jets, `twin-jet-coupling` for twin jets, or both.
