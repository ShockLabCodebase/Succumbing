---
key: "brunton-2020-machine-learning-fluid-mechanics"
title: "Machine Learning for Fluid Mechanics"
authors: ["Brunton, S. L.", "Noack, B. R.", "Koumoutsakos, P."]
year: 2020
type: "review"
venue: "Annu. Rev. Fluid Mech. 52, 477–508"
bib: {"journal": "Annual Review of Fluid Mechanics", "volume": "52", "pages": "477--508"}
doi: "10.1146/annurev-fluid-010719-060214"
arxiv: ""
pdf: "Brunton-EtAl_2020_Machine-Learning-For-Fluid-Mechanics.pdf"
version: "published"
unverified: []
group: false
facility: ""
data: ["none"]
methods: ["ML", "POD", "DMD", "Koopman"]
flow: ["generic"]
phenomena: ["coherent-structures", "noise-control"]
params: {}
topics: ["simulation-methods"]
related: ["taira-2017-modal-analysis-fluid-flows-overview", "taira-2020-modal-analysis-applications-outlook", "rowley-2009-spectral-analysis-nonlinear-flows-koopman", "schmid-2010-dynamic-mode-decomposition", "molnar-2023-physics-informed-bos-supersonic", "towne-2022-database-reduced-complexity-modeling", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i"]
cites: ["rowley-2009-spectral-analysis-nonlinear-flows-koopman", "schmid-2010-dynamic-mode-decomposition", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "taira-2017-modal-analysis-fluid-flows-overview"]
summary: "Review of ML in fluids: POD as linear autoencoder, cluster ROMs, DMD/Koopman, SINDy, PIV superresolution, closures, MLC/RL control; models interpolate, not extrapolate"
---
# Machine Learning for Fluid Mechanics

- **Authors:** S. L. Brunton (U. Washington), B. R. Noack (LIMSI-CNRS / TU Berlin), P. Koumoutsakos (ETH Zurich)
- **Source:** Annual Review of Fluid Mechanics 52:477–508 (2020); Review in Advance 12 Sep 2019
- **DOI:** 10.1146/annurev-fluid-010719-060214
- **PDF:** `References/Paper_PDFs/Brunton-EtAl_2020_Machine-Learning-For-Fluid-Mechanics.pdf` (34 pp.)
- **Tags:** review, machine learning, POD/PCA, autoencoder, clustering, DMD, Koopman, SINDy, sparse regression, superresolution, PIV processing, turbulence closure, genetic programming, reinforcement learning, flow control, stochastic optimisation

> Page references are **journal page numbers** (477–508). PDF page = journal page − 476 (e.g. p. 490 is PDF p. 14). Pages 501–508 are the reference list.

## Summary
A broad, non-quantitative review of how machine learning (ML) is used in fluid mechanics, written for fluid dynamicists. It first lays out ML fundamentals as a learning machine minimising a risk functional, classified into supervised, unsupervised and semisupervised learning (plus stochastic optimisation viewed as learning a probability distribution). It then surveys applications in two groups: flow modelling (feature extraction / dimensionality reduction, clustering, sparse and randomised methods, superresolution and PIV processing; and dynamics via DMD/Koopman, neural networks, parsimonious sparse models and turbulence closures), and flow optimisation and control (evolutionary strategies, genetic algorithms and programming, NN control, reinforcement learning). The recurring message is caution: NNs interpolate rather than extrapolate, need cross-validation, rarely come with guarantees, and work best when known physics (symmetries, conservation, invariance) is built in. The authors argue that fluid-mechanics expertise remains essential to frame the questions and interpret the answers.

## Key findings (main points of the review)
- **Classification of ML** (Fig. 1, p. 478; p. 482): supervised (classification, regression), semisupervised (GANs, RL; also optimisation and control), unsupervised (clustering, dimensionality reduction). The split is by how much "corrective" information the learning machine gets.
- **Learning = risk minimisation** weighted by the data distribution p(x, y), so a learning machine's predictive ability is bounded by the distribution it was trained on (eq. 1, p. 482). Hence models interpolate well but extrapolate poorly (p. 491, 493).
- **POD/PCA is a linear autoencoder** (Baldi & Hornik 1989): a two-layer network with linear activations and encoder/decoder as transposes recovers the POD subspace; nonlinear activations and more layers give nonlinear embeddings (p. 485, 490; Fig. 5–6). Linear-autoencoder modes span the same space but are **not orthogonal and not ordered** (Fig. 6, p. 490).
- **First deep learning in fluids:** Milano & Koumoutsakos (2002) reconstructed near-wall channel-flow velocity from wall pressure and shear with a multilayer nonlinear autoencoder (p. 480, 490).
- **Unsupervised learning is underused** in fluids and "deserve[s] further exploration" (p. 485).
- **Clustering → reduced-order models:** k-means on mixing-layer snapshots (Kaiser et al. 2014) gives a few centroids (each a physical flow field) and a Markov transition model between them, i.e. cluster-based ROM (p. 491). Amsallem et al. (2012) built local ROM bases per cluster for robustness (p. 491).
- **Classification of flow regimes:** wake topology (2S, 2P+2S, …) from local vorticity sensors with NNs; k-NN to detect exotic wakes; network/community detection in wakes (p. 491).
- **Sparse and randomised methods:** compressed sensing for wall turbulence and POD-based reconstruction; randomised SVD/PCA computes low-rank decompositions at a fraction of the cost (p. 491–492).
- **Superresolution and flow cleansing:** CNN superresolution reconstructs turbulence while preserving the energy spectrum (Fukami et al. 2018); GAN superresolution (Xie et al. 2018); suggested use: train on small high-resolution PIV fields to enhance larger, coarser fields, and to infer subgrid structure in LES. Drawback: cost (p. 492).
- **PIV/PTV processing** was one of the earliest ML uses: NNs for fast PIV and PTV, CNNs mapping PIV image pairs to velocity fields (Lee et al. 2017), spurious-vector detection and outlier removal (p. 480, 492).
- **DMD and Koopman** (p. 492–493): DMD is data-driven regression giving a low-dimensional linear model of coherent structures, valid for time-resolved experimental and numerical data. Because it uses linear measurements (velocity, vorticity) it may miss nonlinear transients. Extended DMD, kernel/dictionary methods and deep autoencoders (e.g. VAMPnet, Lusch et al. 2018) search for coordinates where dynamics are linear.
- **NN dynamical models** (p. 493): NNs for ODE/PDE solutions (incl. physics-informed networks, Raissi et al.), NARMAX system identification, LSTM/RNN and echo-state networks for prediction incl. extreme events. Combining data-driven and reduced-order models outperforms either alone (Vlachas et al. 2018; p. 493).
- **Parsimonious models** (p. 494): genetic programming and sparse regression on a candidate library (SINDy; Brunton et al. 2016; PDE-FIND) pick models on a Pareto front of complexity vs accuracy; Loiseau & Brunton (2018) enforce energy conservation in sparse ROMs. When the physics is known these methods typically recover the correct equations and generalise well.
- **Turbulence closures** (p. 494–495): ML models RANS Reynolds-stress discrepancies (SVM/Adaboost/random forests to flag uncertain regions; random-forest discrepancy model; Bayesian inference from sparse velocity data; field inversion + ML correcting Spalart–Allmaras). Ling et al. (2016b) tensor-basis NN embeds **Galilean invariance** via a multiplicative layer on invariant basis tensors (Fig. 7). ANN LES source-term models (Maulik et al. 2019).
- **Optimisation/control cost** (p. 495): learning-based optimisers often need orders of magnitude more cost-function evaluations than gradient methods, give no convergence guarantees, and should be avoided where adjoints apply; but RL has outperformed even optimal control strategies in some problems (Novati et al. 2019).
- **Machine learning control in experiments** (p. 497): genetic programming learns multifrequency open-loop actuation, multi-input sensor feedback and distributed control; most control laws were found in **≲1,000 test evaluations of a few seconds each** in a wind tunnel. GA control needs a prespecified law with few parameters (e.g. backward-facing-step mixing, Benard et al. 2016).
- **NN control** (p. 497): Lee et al. (1997) learned a sensor-based skin-friction drag-reduction law that reduced to local opposition control.
- **RL in fluids** (p. 498–499): bluff-body control, fish swimming and schooling, gliders, UAVs, microswimmers. Success hinges on choosing states, actions and rewards that reflect the flow physics; cost is mitigated by parallelism and by transfer from 2D to 3D or simulation to experiment.
- **Gaps flagged:** Bayesian inference and Gaussian processes not covered but important for UQ (p. 488–489); lack of convergence guarantees; need for physics-consistent (not just physics-informed) ML; curated benchmark data sets and reproducibility (p. 499–500).

## Setup / method (how methods are classified)
Organisation of the review (p. 482): §2 fundamentals, §3 flow modelling, §4 optimisation and control, §5 outlook.

| Category (Fig. 1) | Methods covered | Fluids uses in the review | Data needs (my reading of the review) |
|---|---|---|---|
| Supervised – regression | NNs (feedforward, CNN, RNN/LSTM, echo state), linear/GP regression | Wall-to-field reconstruction, superresolution, PIV image→vectors, closures, dynamics prediction | Labelled pairs; RNN/LSTM need time sequences (time-resolved) |
| Supervised – classification | SVM, random forests, decision trees, k-NN, NNs | Wake-regime ID, RANS uncertainty flags | Labelled snapshots; time resolution not required |
| Unsupervised – dimensionality reduction | POD/PCA, linear and deep autoencoders, principal curves, SOMs, diffusion maps | Modal bases, nonlinear embeddings | Snapshot ensembles; time resolution not required |
| Unsupervised – clustering | k-means, spectral clustering, vector quantisation | Cluster-based ROMs (Markov transitions), local ROM bases | Snapshots; transition model needs time-ordered data |
| Semisupervised | GANs, reinforcement learning (Q-learning, deep RL, MDPs) | Superresolution, turbulence generation; active flow control, swimming/flying | RL needs many interaction episodes with the plant |
| Optimisation & control | ES, CMA-ES, EDAs, IGO, GAs, genetic programming, deep MPC | Shape optimisation, MLC in wind tunnels, combustor tuning | Many cost evaluations (experiment or simulation) |
| System identification (§3.2) | DMD, EDMD, Koopman autoencoders, SINDy, NARMAX | Linear/parsimonious ROMs | DMD/Koopman/SINDy need time-resolved (or at least time-paired) snapshots (p. 492) |

- The review is qualitative: no new data, numerics or benchmarks; worked illustrations are a vortex-merging POD vs linear-autoencoder comparison (Fig. 6) and the tensor-basis NN (Fig. 7).
- Key preprocessing points stated: mean subtraction for PCA/POD (Fig. 5 covariance), cross-validation on withheld data (p. 482, 493, 500), choosing interpolation vs extrapolation regime (p. 482).
- **Stochastic optimisation as learning** (p. 488): ES (Rechenberg/Schwefel, variance adapted to success rate), GAs, genetic programming (function optimisation as trees), CMA-ES (adapts a Gaussian covariance), EDAs and IGO; poor scaling and few convergence guarantees for fluid cost landscapes.

## Key equations
- Risk functional (eq. 1, p. 482): $R(\mathbf w)=\int L[\mathbf y,\phi(\mathbf x,\mathbf y,\mathbf w)]\,p(\mathbf x,\mathbf y)\,d\mathbf x\,d\mathbf y$, where φ is the learning machine with structure φ and parameters **w**, L the loss, p the data distribution.
- Least-squares loss (eq. 2, p. 483): $L=\|\mathbf y-\phi(\mathbf x,\mathbf y,\mathbf w)\|^2$.
- Two-class classification loss (eq. 3, p. 484): L = 0 if y = φ, 1 if y ≠ φ.
- Vector-quantiser distortion (eq. 4, p. 486): $L[\phi(\mathbf x,\mathbf w)]=\|\mathbf x-\phi(\mathbf x,\mathbf w)\|^2$.
- PCA/POD (Fig. 5, p. 485): $\bar{\mathbf x}=\tfrac1N\sum_n\mathbf x_n$, $S=\tfrac1N\sum_n(\mathbf x_n-\bar{\mathbf x})(\mathbf x_n-\bar{\mathbf x})^T$, $S\mathbf u_i=\lambda_i\mathbf u_i$, keep M < D eigenvectors. Linear autoencoder minimises $\|\mathbf x-VU\mathbf x\|$; deep autoencoder minimises $\|\mathbf x-\psi(\varphi(\mathbf x))\|$.
- RL (p. 487): policy a = π(s), value function V(s).

> Symbols in eq. 1–4 and the Fig. 5 losses (φ, ψ, the "≠" in eq. 3) were lost in text extraction and re-typed; check against PDF pp. 6–10.

## Figures worth remembering
- **Fig. 1 (p. 478):** taxonomy of ML algorithms (supervised / semisupervised / unsupervised) with examples.
- **Fig. 2 (p. 480):** Rechenberg's 1964 corrugated-plate drag experiment with a Galton board — first learning/automation in experimental fluids.
- **Fig. 3 (p. 482):** the learning problem (sample generator, system, learning machine).
- **Fig. 4 (p. 484):** RNN vs LSTM cells.
- **Fig. 5 (p. 485):** PCA/POD vs shallow vs deep autoencoders.
- **Fig. 6 (p. 490):** two-vortex merging: snapshots, POD modes, linear-autoencoder modes (non-orthogonal, unordered).
- **Fig. 7 (p. 495):** standard NN vs Ling et al. tensor-basis NN for Galilean-invariant Reynolds-stress anisotropy.
- **Fig. 8 (p. 498):** deep RL schematic (Gaussian policy) and collective fish swimming (Verma et al. 2018).

## Notation
- LM: learning machine; φ(x, y, w): its functional form and weights; p(x, y): data distribution.
- POD/PCA, DMD, EDMD, SINDy, NN/CNN/RNN/LSTM, GAN, RL, ES, GA, CMA-ES, EDA, IGO, SOM, MLC (machine learning control), LTCA (long-term credit assignment).

## Relevance to this project
The project analyses experimental resonance and feedback data (schlieren, acoustics, PIV) from the Shock Lab; see CLAUDE.md. This review is a map of ML options rather than a method to apply directly; nothing in it is jet-, screech- or impingement-specific.
- **Fits the existing workflow:** it frames POD as unsupervised learning (p. 485, 490). Linear autoencoders reproduce the POD subspace but lose orthogonality and ordering (Fig. 6), so the POD-pair phase recovery used on PIV relies on properties a plain autoencoder does not give; nonlinear autoencoders may give more compact coordinates for strongly nonlinear dynamics (e.g. mode switching), at the cost of interpretability.
- **Time-resolved vs non-time-resolved data:**
  - Time-resolved schlieren/acoustics: DMD/Koopman, SINDy and LSTM/echo-state prediction need time-ordered snapshots (p. 492–494); these complement SPOD/BMD. SPOD, BMD and Hilbert POD are not discussed.
  - Non-time-resolved PIV: POD/autoencoders, clustering, classification and superresolution do not need time resolution. Cluster-based ROMs need time-ordered snapshots to build transition matrices (p. 491), so they would need time-resolved data.
- **Intermittency / mode switching:** cluster-based ROMs (Kaiser et al. 2014) give a discrete, Markov-chain view of switching between flow states (p. 491) and regime classifiers (p. 491) could label screech stages (A1/A2/B/C) or impinging-jet modes automatically from schlieren or acoustics. These are a possible complement to the SPOD → reconstruction → Hilbert POD pipeline for tracking switching over time.
- **PIV processing:** CNN-based PIV, outlier detection and superresolution (p. 492) are relevant to lab PIV of shock-containing jets, but superresolved fields are learned from training statistics and may not hold outside them (extrapolation caveat, p. 491, 493).
- **Modelling side:** sparse regression with energy conservation (Loiseau & Brunton 2018), DMD/Koopman linear models and tensor-basis closures are data-driven counterparts to the linear-stability and resolvent models in related notes ([edgington-mitchell-2020](edgington-mitchell-2020-waves-in-screeching-jets.md), [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md), [morra-2021](morra-2021-colour-of-forcing-resolvent-channel.md)). The review stresses hybrid physics + data models over pure black boxes (p. 482, 493), consistent with those notes' use of measured mean flows in linear operators. Closure work is RANS/LES-focused and not directly relevant to the group's LES-analysis repo.
- **Control:** machine learning control by genetic programming needs ~10³ short experiments (p. 497), feasible in a blow-down or continuous jet facility; relevant to screech/impingement-tone suppression alongside passive and plasma control in [esfahani-2021 control](esfahani-2021-control-twin-rectangular-jet-coupling.md) and [bres-2021](bres-2021-les-twin-rectangular-jets-plasma.md).
- **Related notes:** reduced-complexity databases ([towne-2022](towne-2022-database-reduced-complexity-modeling.md)) answer this review's call for curated benchmark data sets (p. 500). Modal-decomposition notes ([yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md), [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md), [raiola-2025](raiola-2025-hilbert-pod.md), [davey-2025](davey-2025-hpod-sphere-wake.md)) cover the SPOD/HPOD tools this review omits.
