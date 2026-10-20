---
key: "schmidt-2020-bispectral-mode-decomposition"
title: "Bispectral mode decomposition of nonlinear flows"
authors: ["Schmidt, O. T."]
year: 2020
type: "article"
venue: "Nonlinear Dyn. 102"
bib: {"journal": "Nonlinear Dynamics", "volume": "102"}
doi: ""
arxiv: "2002.04146"
pdf: "modal-decomposition/Schmidt_2020_Bispectral-Mode-Decomposition-Of-Nonlinear-Flows.pdf"
version: "preprint"
unverified: ["journal DOI and pages not printed in the arXiv preprint"]
group: false
facility: ""
data: ["DNS", "PIV-TR", "LES", "synthetic"]
methods: ["BMD", "bispectrum", "symmetry-decomposition"]
flow: ["wake", "round-jet", "generic"]
phenomena: ["triadic-interaction", "mean-flow-deformation", "coherent-structures"]
params: {"Re": "500 (cylinder), 3600 (jet)"}
topics: ["modal-decomposition"]
related: ["schmidt-2020-guide-spod", "kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "stavropoulos-2026-jet-edge-interaction", "mancinelli-2021-complex-valued-resonance-model-screech", "morra-2021-colour-of-forcing-resolvent-channel", "schmid-2010-dynamic-mode-decomposition"]
cites: ["kim-1979-digital-bispectral-analysis-nonlinear-wave-interactions", "rowley-2009-spectral-analysis-nonlinear-flows-koopman", "schmid-2010-dynamic-mode-decomposition", "schmidt-2018-spectral-analysis-jet-turbulence", "schmidt-2020-guide-spod", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "towne-2018-spod-relationship-dmd-resolvent"]
summary: "BMD: numerical radius of the bispectral density matrix gives mode bispectrum, bispectral modes, interaction maps; tells sum from difference triads; jet LES ½f₀, 3/2 f₀"
---
# Bispectral mode decomposition of nonlinear flows

- **Authors:** O. T. Schmidt (University of California San Diego)
- **Source:** published in *Nonlinear Dynamics* 102 (2020). This note is from the **arXiv version**, arXiv:2002.04146v4 [physics.flu-dyn] (25 Nov 2020); page numbers below refer to it, not to the journal.
- **DOI / arXiv:** arXiv:2002.04146 (journal DOI not printed in the preprint)
- **PDF:** `References/Paper_PDFs/modal-decomposition/Schmidt_2020_Bispectral-Mode-Decomposition-Of-Nonlinear-Flows.pdf` (index key `modal-decomposition/Schmidt_2020_Bispectral-Mode-Decomposition-Of-Nonlinear-Flows.pdf`, 36 pp.)
- **Tags:** bispectral mode decomposition (BMD), bispectrum, triadic interaction, quadratic phase coupling, sum and difference interactions, mode bispectrum, cross-frequency field, interaction map, summed mode spectrum, numerical radius, Welch estimator, cross-bispectral BMD, azimuthal triads, subharmonic and ultraharmonic generation, cylinder wake DNS, flat-plate PIV, transitional jet LES, MATLAB code

## Summary
BMD is the multidimensional extension of the bispectrum, or equivalently an extension of SPOD from second-order to third-order statistics (p. 11). For each frequency doublet (f_k, f_l) it finds the combination of Welch-block realisations that maximises the absolute value of the spatially integrated bispectral density, which reduces to finding the numerical radius of a non-Hermitian N_blk × N_blk "bispectral density matrix" B (eq. 51–56, p. 13–14). The output is a complex **mode bispectrum** λ₁(f_k, f_l) whose peaks mark resonant triads {f_k, f_l, f_k+l}, plus two spatial fields sharing one set of coefficients: the **bispectral mode** φ_k+l (an observable structure at the sum frequency) and the **cross-frequency field** φ_k∘l (the product of the two "cause" components) (eq. 46–49, p. 12). Because cause and effect are treated separately, BMD, unlike the classical bispectrum, distinguishes sum from difference interactions (p. 14–15). Demonstrations: surrogate waves (triad detection, rejection of non-resonant triplets and four-wave quartets, robustness at unit SNR), Re = 500 cylinder DNS (cascade of triads), PIV of a massively separated flat-plate wake, and LES of a Re = 3600 transitional jet, where a cross-bispectral variant across azimuthal wavenumbers explains sub- and ultraharmonics (p. 18–30).

## Key findings
- **Mode bispectrum detects triads and rejects non-triads** (surrogate data, Fig. 4, p. 19–20):
  - A non-resonant triplet (0.05, 0.2, 0.35) gives a flat mode bispectrum (true negative).
  - The triad (0.05, 0.2, 0.25) gives a clear peak.
  - A four-wave quartet (0.05, 0.15, 0.25, 0.45) that forms no triad gives only leakage-level elevations, about an order of magnitude below the triad peak.
- **Noise robustness** (Fig. 5, p. 20–21): with additive Gaussian white noise at SNR = 1, the classical single-point bispectrum still finds the triad but shows several spurious side peaks from its variance; the mode bispectrum shows the single triad with no significant side peaks. The author speculates this comes from using spatial correlation plus the optimality of the decomposition (p. 21). Noise (and leakage) does create low-level bands along lines of constant f₁, f₂ and f₃ = f₁ + f₂, which should not be interpreted physically (p. 21–23).
- **Sum vs difference interactions:** the classical bispectrum satisfies S(f₁, f₂) = S*(f₁ + f₂, −f₁), so a sum triad and the matching difference triad are indistinguishable. In BMD, B(f_k, f_l) ≠ B*(f_k+l, f_−k) in general, because the sum-frequency component is singled out as the effect (p. 15).
- **Cylinder DNS, Re = 500** (Fig. 7–9, p. 22–25):
  - The mode bispectrum shows a grid of local maxima: a cascade of triads seeded by the shedding frequency f₀ = 0.21 (p. 22–23).
  - The global maximum is the fundamental sum-self-interaction (k, l) = (12, 12), i.e. {0.21, 0.21, 0.42}, generating the first harmonic (p. 23–24).
  - The difference-self-interaction {f₀, −f₀, 0} at (12, 0) is the mean-flow distortion. Its detection means BMD **indirectly reveals an intrinsic instability** once it has saturated to appreciable amplitude (p. 24).
  - Bispectral modes along the cascade (12,0) → (12,12) → (24,12), (24,24), (36,12), (36,24)… each add new streamwise and/or transverse wavenumber content (Fig. 8, p. 24).
  - The interaction map of the fundamental self-interaction peaks in the near wake just behind the cylinder; the v component is larger and less confined than u (Fig. 9, p. 25). A link to structural-sensitivity/wavemaker regions (Giannetti & Luchini 2007) is called speculative (p. 25).
- **Flat-plate PIV, massively separated flow** (Fig. 10–12, p. 25–27):
  - Shedding at f₀ = 1.0 Hz (frequency index 10); the global maximum is again the fundamental self-interaction (10, 10) (Fig. 11, p. 26).
  - The interaction maps show the triadic interaction lives mainly in the transverse velocity and in the bottom shear layer (p. 26).
  - The fundamental bispectral modes (12,0) for the cylinder and (10,0) for the plate are "almost indistinguishable" from the leading SPOD modes (not shown) (p. 26).
  - Laminar bluff-body dynamics appear to persist in the turbulent regime (p. 26–27).
- **Transitional jet LES, Re = 3600, pressure** (Fig. 13–15, p. 27–30):
  - Axisymmetric KH roll-up breaks down into turbulence near x ≈ 12, transferring energy to higher azimuthal wavenumbers (Fig. 13, p. 28).
  - [[0,0,0]] has the global maximum, at the fundamental self-interaction {f₀, f₀, 2f₀}; its summed mode spectrum peaks at f₀ and three higher harmonics, the largest at 2f₀ (p. 28–29).
  - Interactions involving m = 1 and 2 have much lower bispectral density and involve the triads {½f₀, ½f₀, f₀} and {f₀, ½f₀, 3/2 f₀} (Fig. 14b,c, p. 29). So the **subharmonic ½f₀ and ultraharmonic 3/2 f₀** are generated by triads between different azimuthal wavenumbers (p. 29–30).
  - Low-frequency azimuthal triads appear to cascade energy to higher m (p. 28).
- **Convergence** (App. B, Fig. 16, p. 32–33): summed mode spectra from 3 and 5 of the 7 cylinder blocks, and from about one-third and two-thirds of the PIV and LES data, are close to the full-data result; modes and mode bispectra were also checked (not shown).

## Setup / method

### BMD algorithm (p. 11–14, App. A)
1. **Data:** N_t evenly spaced snapshots q(x, t_j) ∈ C^M, M = N_vars N_x N_y N_z; statistically stationary (p. 11). **Requires time-resolved data**: every Welch block must be a contiguous, uniformly sampled sequence.
2. **Welch segmentation:** N_blk blocks of N_FFT snapshots with N_ovlp overlap, N_blk = floor[(N_t − N_ovlp)/(N_FFT − N_ovlp)] (eq. 39, p. 11). A Hann window is applied to every block in all cases (Table 1, p. 22). Choice of N_FFT, N_ovlp and window follows the SPOD best practices of Schmidt & Colonius (2020) (p. 22).
3. **DFT** of each block (eq. 40–41) gives q̂^[j](x, f_k).
4. **For each doublet (k, l):** build the matrices of the cause and effect fields over blocks:
   - Q̂_k∘l = [q̂_k∘l^[1] … q̂_k∘l^[N_blk]], where q̂_k∘l = q̂_k ∘ q̂_l is the pointwise (Hadamard) product (eq. 43, 50);
   - Q̂_k+l = [q̂_k+l^[1] … q̂_k+l^[N_blk]] (eq. 50).
5. **Bispectral density matrix** B = (1/N_blk) Q̂_k∘l^H W Q̂_k+l (N_blk × N_blk, complex, non-Hermitian; eq. 52), with W the diagonal quadrature weights.
6. **Solve for the numerical radius** of B: a₁ = argmax_{‖a‖=1} |aᴴ B a|. This equals the maximum over θ of the largest eigenvalue of the Hermitian H(θ) = ½(e^{iθ}B + e^{−iθ}Bᴴ) (eq. 55–56). Solved with He & Watson's (1997) algorithm rather than a brute-force θ sweep (p. 14; App. A).
7. **Outputs:** λ₁ = a₁ᴴ B a₁ (complex mode bispectrum, eq. 57); bispectral mode φ_k+l = Q̂_k+l a₁; cross-frequency field φ_k∘l = Q̂_k∘l a₁ (eq. 48–49); interaction map ψ_k,l = |φ_k∘l ∘ φ_k+l| (eq. 62); summed mode spectrum (eq. 61).
8. Only the **sum and difference regions** of the (f₁, f₂) plane need computing; other regions are redundant or beyond Nyquist (Fig. 2–3, p. 15–17).

**Numerics (App. A, p. 32):** Watson's simple iteration (inner) inside He & Watson's bounding algorithm (outer), which solves a 2N_blk generalised eigenproblem R(γ)v = λSv to test whether a larger numerical radius exists. tol = 10⁻⁸ (10⁻¹⁵ for the jet), iterations capped at 300 for the inner loop; if no convergence in 500 iterations, restart up to five times with a new random initial guess. Cost per doublet scales with N_blk (small matrix) plus forming B (M × N_blk products), so the total cost is dominated by the number of doublets in the sum/difference regions.

**Spatial homogeneity (§3.1.2, p. 16):** homogeneous directions are Fourier-transformed too; BMD is then computed per wavenumber doublet {k₁, k₂} with spatial triads {k₁, k₂, k₁+k₂} (eq. 58–60). For the jet this means azimuthal triads [[m₁, m₂, m₁+m₂]] with B(r, r′, m_i, m_j, f_k, f_l) (eq. 64–65); only m ≥ 0 is needed since the jet has no preferred rotation (p. 28). This is the **cross-bispectral** variant, built from three different fields (S_qrs); the MATLAB code is provided in both auto- and cross-bispectral versions (p. 5).

### Test cases (Table 1, p. 22)

| Case | Variables | N_x | N_y,r | N_z,θ | N_t | Δt | N_FFT | N_ovlp | N_blk | tol |
|---|---|---|---|---|---|---|---|---|---|---|
| Surrogate test data | q | 100 | – | – | 1280 | 1 | 128 | 0 | 10 | 10⁻⁸ |
| Cylinder DNS, Re = 500 | u, v | 250 | 125 | 1 | 4096 | 0.06 | 1024 | 512 | 7 | 10⁻⁸ |
| Flat-plate PIV | u, v | 120 | 69 | 1 | 2.5 × 10⁴ | 0.002 s | 5000 | 0 | 50 | 10⁻⁸ |
| Jet LES, Re = 3600 | p | 219 | 42 | 128 | 1 × 10⁴ | 0.2 | 256 | 128 | 77 | 10⁻¹⁵ |

DNS/LES non-dimensionalised by cylinder diameter and free-stream velocity, or jet diameter and jet velocity; PIV in SI units; Hann window throughout (p. 22). Frequencies in §4 are Strouhal numbers written as f (p. 22).

> Check against the PDF: N_blk from eq. 39 reproduces 10, 7 and 77 for the test, cylinder and jet rows. For the plate, the text says 50 independent runs of 5000 snapshots (p. 25), i.e. 2.5 × 10⁵ snapshots, so the printed N_t = 2.5 × 10⁴ looks like a typo. Also, for the cylinder Δf = 1/(N_FFT Δt) ≈ 0.0163, so index 12 corresponds to f ≈ 0.195 rather than the quoted f₀ = 0.21 (index 13 would give 0.212); the indexing convention is not stated. For the plate, Δf = 0.1 Hz and index 10 = 1.0 Hz is consistent.

- **Surrogate data (§3.3, p. 18–21):** superposed unit-amplitude cosines A_j cos(k_j x − 2πf_j t + φ₀^[i]) on x ∈ [0, 2π] (100 points), random k ∈ [0, 5], frequencies deliberately not harmonic with the domain, random phase φ₀^[i] per realisation (eq. 63). Comparison against the amplitude spectrum 2|q̂(x = 0, f)| and the classical bispectrum at one point.
- **Cylinder DNS (§4.1, p. 22):** incompressible immersed-boundary solver of Goza & Colonius (2017), state q = [u, v]ᵀ, run for several flow-throughs to reach the limit cycle before saving. No grid, domain or resolution details beyond the saved output size.
- **Flat-plate PIV (§4.2, p. 25):** planar u, v PIV of massively separated flow behind a plate at high angle of attack (data from K. Mulleners, EPFL); 50 independent measurements of 5000 snapshots, sampled at 500 Hz (Δt = 0.002 s). Angle of attack, Re and PIV processing are not given. A vertical bar in some modes is an artefact of two overlapping PIV windows (Fig. 12 caption, p. 27).
- **Jet LES (§4.3, p. 27):** initially laminar round jet, Re = 3600, LES by G. A. Brès with the framework of Brès & Lele (2019) on an unstructured grid, interpolated to a cylindrical grid (219 × 42 × 128). Only pressure is analysed, for azimuthal combinations with m₃ ≤ 3. Inflow, Mach number and subgrid model are not given.

### Theory (§2, p. 5–10)
- Weakly nonlinear expansion about a laminar equilibrium (eq. 13–25): at O(ε²) the quadratic term Q(q′, q′) contains mean-flow distortion (difference self-interaction), harmonics (sum self-interaction) and sum/difference terms of every pair. If a generated {f_j, k_j} satisfies the linear dispersion relation (eq. 25), it is resonantly forced and grows linearly in time (resonant triad) (p. 8).
- Turbulent case (eq. 26–37): linearising about the mean flow, each Fourier component (m, n) is forced by the sum over triadically consistent pairs Σ Q(q̂_pq, q̂_{m−p, n−q}) (eq. 36–37). This is the same forcing term that resolvent analysis models as f (p. 10).

## Key equations
Notation: q̂(f) Fourier transform, (·)* conjugate, (·)ᴴ conjugate transpose, ∘ Hadamard product, W quadrature weights, E[·] expectation.

- **Triad condition** (eq. 1, p. 2): $\mathbf k_j \pm \mathbf k_k \pm \mathbf k_l = 0,\; f_j \pm f_k \pm f_l = 0$.
- **Bispectrum** (eq. 9–11, p. 6):
  $$S_{qqq}(f_1,f_2)=\iint R_{qqq}(\tau_1,\tau_2)\,e^{-i2\pi(f_1\tau_1+f_2\tau_2)}\,\mathrm d\tau_1\mathrm d\tau_2,\qquad E[q(t)^3]=\iint S_{qqq}\,\mathrm df_1\mathrm df_2$$
  $$S_{qqq}(f_1,f_2)=\lim_{T\to\infty}\frac1T E\big[\hat q(f_1)^*\hat q(f_2)^*\hat q(f_1+f_2)\big]\quad(11)$$
  The bispectrum decomposes the skewness by frequency, so it is zero for Gaussian signals (p. 6).
- **Weakly nonlinear self-interaction** (eq. 23, p. 8): Q(q′, q′) ∋ 2A₁A₁* + A₁²e^{2iθ₁} + A₁A₂e^{i(θ₁+θ₂)} + A₁A₂*e^{i(θ₁−θ₂)} + …
- **Mean-flow-linearised forced equation** (eq. 37, p. 10):
  $$-2\pi i f_n\hat{\mathbf q}_{mn}=\mathcal L_{\bar{\mathbf q}}\hat{\mathbf q}_{mn}+\sum_{p,q}\mathcal Q(\hat{\mathbf q}_{pq},\hat{\mathbf q}_{m-p\,n-q})$$
- **Integral bispectral measure** (eq. 44, p. 12):
  $$b(f_k,f_l)\equiv E\Big[\int_\Omega \hat{\mathbf q}_k^*\circ\hat{\mathbf q}_l^*\circ\hat{\mathbf q}_{k+l}\,\mathrm d\mathbf x\Big]=E\big[\hat{\mathbf q}_{k\circ l}^H\mathbf W\hat{\mathbf q}_{k+l}\big]$$
- **Expansions with shared coefficients** (eq. 46–49, p. 12): $\boldsymbol\phi_{k\circ l}^{[i]}=\hat{\mathbf Q}_{k\circ l}\mathbf a_i$ (cross-frequency field), $\boldsymbol\phi_{k+l}^{[i]}=\hat{\mathbf Q}_{k+l}\mathbf a_i$ (bispectral mode).
- **Optimisation and bispectral density matrix** (eq. 51–52, p. 13):
  $$\mathbf a_1=\arg\max_{\|\mathbf a\|=1}\left|\frac{\mathbf a^H\mathbf B\mathbf a}{\mathbf a^H\mathbf a}\right|,\qquad \mathbf B=\frac{1}{N_\mathrm{blk}}\hat{\mathbf Q}_{k\circ l}^H\mathbf W\hat{\mathbf Q}_{k+l}$$
- **Numerical radius** (eq. 53–56, p. 13–14):
  $$r(\mathbf B)=\max\{|\lambda|:\lambda\in F(\mathbf B)\},\quad \mathbf H(\theta)=\tfrac12\left(e^{i\theta}\mathbf B+e^{-i\theta}\mathbf B^H\right),\quad r(\mathbf B)=\max_{0\le\theta<2\pi}\lambda_{\max}(\mathbf H(\theta))$$
  With H(θ₁)a₁ = λ₁a₁, λ₁ = r(B) = |a₁ᴴBa₁/a₁ᴴa₁|; the complex mode bispectrum is λ₁(f_k, f_l) (eq. 57). Magnitude |λ₁| and phase arg λ₁ are plotted separately (p. 18).
- **Symmetry** (p. 15): $\hat{\mathbf Q}_{k\circ l}^H\mathbf W\hat{\mathbf Q}_{k+l}\neq(\hat{\mathbf Q}_{k+l\circ -k}^H\mathbf W\hat{\mathbf Q}_l)^*$, hence $\mathbf B(f_k,f_l)\neq\mathbf B^*(f_{k+l},f_{-k})$.
- **Summed mode spectrum** (eq. 61, p. 18): $\Lambda_1(f)=\frac{1}{N(f)}\sum_{f=f_1+f_2}|\lambda_1(f_1,f_2)|$ (sum along lines of slope −1).
- **Interaction map** (eq. 62, p. 18): $\boldsymbol\psi_{k,l}(\mathbf x)=\left|\boldsymbol\phi_{k\circ l}\circ\boldsymbol\phi_{k+l}\right|$.
- **Spatio-temporal bispectrum** (eq. 59, p. 16): $S_{qqq}(k_1,k_2,f_1,f_2)=\lim\frac1T E[\hat q^*(k_1,f_1)\hat q^*(k_2,f_2)\hat q(k_1+k_2,f_1+f_2)]$.

> Eq. 11–12, 44, 51–57, 61–62 and the symmetry relation were checked against rendered page images (p. 6, 12–15, 18). The other equations come from garbled text extraction, where conjugate stars and some signs were lost; check eq. 23, 36–37 and 58–60 against the PDF before reuse. The Fig. 14 caption labels panel (b) "interaction of m = 1 and 2" while the panel title is [[0,1,1]], and the text on p. 28 names "[[0,0,1]] and [[1,1,2]]" for panels (b, c); the panel titles [[0,1,1]] and [[1,1,2]] appear to be correct.

## Figures worth remembering
- **Fig. 1 (p. 2):** schematic of sum, difference, mean-flow (difference-self) and harmonic (sum-self) triads.
- **Fig. 2 (p. 15):** symmetry regions of the bispectrum vs mode bispectrum in the (f₁, f₂) plane; principal (sum) region and the hatched difference region that BMD adds.
- **Fig. 3 (p. 17):** how triads appear in the mode bispectrum and how cascading triads produce a grid pattern.
- **Fig. 4–5 (p. 20–21):** surrogate-data tests (non-resonant triplet, triad, quartet) and SNR = 1 comparison of classical bispectrum vs mode bispectrum.
- **Fig. 7–8 (p. 23–24):** cylinder mode bispectrum (log|λ₁|) with the marked cascade, and the bispectral modes along it.
- **Fig. 9 (p. 25):** bispectral mode, cross-frequency field and interaction map of the fundamental self-interaction.
- **Fig. 11–12 (p. 26–27):** plate PIV mode bispectrum, summed mode spectrum, modes and interaction maps.
- **Fig. 14–15 (p. 29):** jet azimuthal-triad mode bispectra and summed mode spectra, with the ½f₀, f₀, 3/2 f₀ peaks.
- **Fig. 16 (p. 33):** convergence of summed mode spectra with N_blk.

## Notation
- f_k = k-th DFT frequency; (k, l) or (k, l, k+l) = frequency-index doublet or triad; {·} frequency multiplets; [[m₁, m₂, m₃]] azimuthal triads.
- q̂_k∘l = q̂_k ∘ q̂_l (pointwise product); Q̂ = block data matrices; a_i = expansion coefficients; B = bispectral density matrix; F(B) = field of values; r(B) = numerical radius.
- λ₁ = complex mode bispectrum; Λ₁ = summed mode spectrum; φ_k+l = bispectral mode; φ_k∘l = cross-frequency field; ψ_k,l = interaction map.
- N_FFT, N_ovlp, N_blk = Welch block length, overlap, number of blocks; W = quadrature weights.

## Relevance to this project
BMD is one of the two core time-resolved decompositions in the CLAUDE.md workflow (with SPOD), and this is its founding paper; the author's MATLAB code (auto- and cross-bispectral versions) is released with it (p. 5).

- **Data requirements:** BMD needs **time-resolved**, statistically stationary data (Welch blocks of contiguous snapshots, p. 11), and benefits from many blocks: the examples use 7–77 blocks (Table 1). It suits high-speed schlieren and microphone arrays, and LES; it cannot be applied to non-time-resolved PIV. For PIV, triadic links can only be inferred indirectly, e.g. from POD-pair phase portraits or by pairing PIV with time-resolved sensors.
- **Parameters:** same trade-offs as SPOD (N_FFT, overlap, Hann window; p. 22), so use the conventions in [schmidt-2020-guide-spod.md](schmidt-2020-guide-spod.md). Frequency resolution matters more than for SPOD: a triad is only detected if f_k, f_l and f_k+l all fall on (or leak into) DFT bins, so choose N_FFT so that the screech or impingement tone and its harmonics sit close to bins. *(My inference from the leakage discussion on p. 19–23.)*
- **What it offers for resonance and feedback flows:**
  - Screech harmonics: the fundamental sum-self-interaction {f_s, f_s, 2f_s} should dominate, as for the cylinder (p. 23–24), and the interaction map shows where the harmonic is generated (shear layer vs shock-cell region).
  - A1/A2 staging and mode switching: BMD directly tests the triad {St₁, St₂, St₁ ± St₂} suggested by [mancinelli-2019-screech-prediction-upstream-modes.md](mancinelli-2019-screech-prediction-upstream-modes.md), and the azimuthal cross-bispectral variant mirrors the cross-bicoherence between m = ±1 and m = 0 in [mancinelli-2021-complex-valued-resonance-model-screech.md](mancinelli-2021-complex-valued-resonance-model-screech.md). The jet example's sub- and ultraharmonics from azimuthal triads (p. 29–30) are the same kind of mechanism.
  - Twin-jet and rectangular-jet coupling tones, and impinging-jet tones with their harmonics and sum/difference tones ([weightman-2019-sound-production-impinging-supersonic-jets.md](weightman-2019-sound-production-impinging-supersonic-jets.md)), can be screened in the same way.
  - The difference-self-interaction (f, −f, 0) marks a saturated instability (p. 24), a quick diagnostic of which oscillator is self-excited.
- **Limitations relevant to intermittency:** BMD is a block-averaged, stationary statistic like SPOD (p. 11). It shows that a triad exists on average but not when it is active, so intermittent mode switching (e.g. A1 ↔ A2) is smeared. Pair it with time-local tools: wavelet bicoherence, or the **SPOD → reconstruction → Hilbert POD** pipeline ([raiola-2025-hilbert-pod.md](raiola-2025-hilbert-pod.md)), reconstructing from the BMD-identified frequencies to track their instantaneous amplitude and phase. Checking that the instantaneous phases satisfy θ₃ ≈ θ₁ + θ₂ over time would be a time-resolved analogue of the BMD result. *(My suggestion, not in the paper.)*
- **Modelling and simulation side:**
  - Eq. 37 shows that the nonlinear term driving each Fourier component is a sum of triads; this is the forcing that resolvent analysis treats as an input. BMD identifies which triads dominate it, complementing the forcing-statistics study of [morra-2021-colour-of-forcing-resolvent-channel.md](morra-2021-colour-of-forcing-resolvent-channel.md) and the resolvent framework of [mckeon-2010-critical-layer-framework-turbulent-pipe-flow.md](mckeon-2010-critical-layer-framework-turbulent-pipe-flow.md) and [pickering-2021-optimal-eddy-viscosity-resolvent-jets.md](pickering-2021-optimal-eddy-viscosity-resolvent-jets.md).
  - The weakly nonlinear theory (§2.2) assumes a laminar equilibrium; for turbulent flows only the kinematic triad argument carries over (p. 9–10).
  - The numerical examples give little information on numerics: the cylinder DNS (immersed boundary, Goza & Colonius) and jet LES (Brès & Lele 2019 framework) are described only by solver and output size; [bres-2021-les-twin-rectangular-jets-plasma.md](bres-2021-les-twin-rectangular-jets-plasma.md) describes a later LES by the same author (Charles), probably a close relative of that framework.
  - The paper proposes BMD-based ROMs keeping only the dominant triads, nonlinear system identification, and control by targeting interaction-map regions (p. 30–31). None is demonstrated.
- **Comparison with other methods:**
  - SPOD ([schmidt-2020-guide-spod.md](schmidt-2020-guide-spod.md), [schmidt-2018-spectral-analysis-jet-turbulence.md](schmidt-2018-spectral-analysis-jet-turbulence.md)) ranks structures by energy at one frequency; BMD ranks by phase coupling across three frequencies. The fundamental BMD modes nearly coincide with leading SPOD modes (p. 26).
  - DMD and Koopman ([schmid-2010-dynamic-mode-decomposition.md](schmid-2010-dynamic-mode-decomposition.md), [rowley-2009-spectral-analysis-nonlinear-flows-koopman.md](rowley-2009-spectral-analysis-nonlinear-flows-koopman.md)) list sum frequencies as separate modes but do not say which pairs interact; BMD does (p. 4).
  - Single-point bispectrum and bicoherence, as in [stavropoulos-2026-jet-edge-interaction.md](stavropoulos-2026-jet-edge-interaction.md): cheaper and fine for one microphone, but BMD is more noise-robust (p. 20–21) and gives the spatial structure and where the interaction happens. The paper uses unnormalised bispectral density, not bicoherence, so λ₁ magnitudes are not bounded by 1 and are compared on log scales.
  - The sequential SPOD-then-cross-bispectrum approach of Baars & Tinney (2014) is the alternative BMD replaces (p. 4).
  - Overview context: [taira-2017-modal-analysis-fluid-flows-overview.md](taira-2017-modal-analysis-fluid-flows-overview.md).
- **Rocket and jet noise link:** the bispectrum has been used for nonlinear propagation of supersonic jet noise (Gee et al. 2010, cited p. 4); skewness of p and ∂p/∂t is the crackle metric in [gee-2012-reusable-srm-noise-spectral-statistical.md](gee-2012-reusable-srm-noise-spectral-statistical.md). Since the bispectrum integrates to the skewness (eq. 10), BMD on near-field microphone arrays could decompose that skewness by frequency and location. *(My inference.)*
- **Facility:** no Shock Lab group data; the PIV is from K. Mulleners (EPFL).
- **Follow-up candidates for `/add-paper`:** Baars & Tinney (2014), POD-based spectral higher-order stochastic estimation; Kim & Powers (1979), digital bispectral analysis; Gee et al. (2010), bicoherence of model-scale jet noise; Corke, Shakib & Nagib (1991), bispectrum in forced jets; He & Watson (1997), numerical radius algorithm.
