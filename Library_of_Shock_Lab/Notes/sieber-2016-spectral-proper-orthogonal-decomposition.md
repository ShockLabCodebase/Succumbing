---
key: "sieber-2016-spectral-proper-orthogonal-decomposition"
title: "Spectral proper orthogonal decomposition"
authors: ["Sieber, M.", "Paschereit, C. O.", "Oberleithner, K."]
year: 2016
type: "article"
venue: "JFM 792, 798–828"
bib: {"journal": "Journal of Fluid Mechanics", "volume": "792", "pages": "798--828"}
doi: "10.1017/jfm.2016.103"
arxiv: "1508.04642"
pdf: "modal-decomposition/Sieber-EtAl_2016_Spectral-Proper-Orthogonal-Decomposition.pdf"
version: "preprint"
unverified: ["JFM volume, pages and DOI not in this arXiv v1 PDF", "published author order (Sieber, Paschereit, Oberleithner) differs from the arXiv PDF (Sieber, Oberleithner, Paschereit)"]
group: false
facility: "TU Berlin Hermann-Föttinger-Institut"
data: ["PIV-TR"]
methods: ["SPOD-time", "POD", "POD-pair", "DMD"]
flow: ["swirling-jet", "wake", "airfoil", "generic"]
phenomena: ["coherent-structures", "intermittency"]
params: {"Re": "58,000 (swirl combustor), 180,000 (Gurney flap), 37,000 (fluidic oscillator)"}
topics: ["modal-decomposition", "time-frequency-methods"]
related: ["oberleithner-2011-swirling-jet-vortex-breakdown-stability", "towne-2018-spod-relationship-dmd-resolvent", "schmidt-2020-guide-spod", "von-saldern-2026-band-ensemble-spod", "raiola-2025-hilbert-pod", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "schmid-2010-dynamic-mode-decomposition"]
cites: ["berkooz-1993-proper-orthogonal-decomposition-turbulent-flows", "huang-1998-empirical-mode-decomposition-hilbert-spectrum", "oberleithner-2011-swirling-jet-vortex-breakdown-stability", "rowley-2009-spectral-analysis-nonlinear-flows-koopman", "schmid-2010-dynamic-mode-decomposition", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "willert-1991-digital-particle-image-velocimetry"]
summary: "Time-domain SPOD (not Towne/Schmidt): diagonal filter N_f on the snapshot correlation matrix spans POD to DFT; smooth mode pairs keep jitter and intermittency; DMD pairing"
---
# Spectral proper orthogonal decomposition

- **Authors:** M. Sieber, K. Oberleithner, C. O. Paschereit (TU Berlin, Institut für Strömungsmechanik und Technische Akustik, Hermann-Föttinger-Institut). Author order is as printed on this arXiv PDF; the published JFM article lists Sieber, Paschereit & Oberleithner.
- **Source:** J. Fluid Mech. 792, 798–828 (2016), doi:10.1017/jfm.2016.103. This file is the arXiv preprint arXiv:1508.04642v1 [physics.flu-dyn] (19 Aug 2015, "under consideration for publication in J. Fluid Mech."), so wording, page numbers and possibly details differ from the published version.
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/modal-decomposition/Sieber-EtAl_2016_Spectral-Proper-Orthogonal-Decomposition.pdf` (index key `modal-decomposition/Sieber-EtAl_2016_Spectral-Proper-Orthogonal-Decomposition.pdf`, 28 pp.)
- **Tags:** SPOD (time-domain / "Sieber" SPOD), filtered snapshot correlation matrix, POD–DFT continuum, Toeplitz/circulant limit, mode pairing, harmonic correlation, DMD of temporal coefficients, analytic coefficient, instantaneous phase and frequency, intermittency, frequency jitter, noise rejection, data completion, spatial (multi-time-delay) SPOD for sensor arrays, time-resolved PIV, swirl combustor, Gurney flap wake, fluidic oscillator

> **Not the same method as Towne/Schmidt SPOD.** This is the *time-domain filtered POD*: snapshot POD with a low-pass filter applied along the diagonals of the correlation matrix. It returns real modes with smooth time coefficients b_i(t). The frequency-domain (Welch/cross-spectral) SPOD of Towne, Schmidt & Colonius (2018), used in [schmidt-2018](schmidt-2018-spectral-analysis-jet-turbulence.md), [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md) and the group's codes, returns one set of complex modes per frequency. The two share a name and both span POD↔Fourier, but are different decompositions.

## Summary
The paper proposes a one-parameter extension of snapshot POD for time-resolved data. The N × N snapshot correlation matrix R is smoothed along its diagonals with a symmetric FIR filter of half-width N_f, and the filtered matrix S is then eigen-decomposed exactly like R (p. 5–6). N_f = 0 gives POD; a filter spanning the whole series with periodic boundaries makes S circulant, so the method becomes the DFT (p. 6). In between, modes come out in pairs with smooth, narrow-band but not mono-frequent coefficients, so a structure with frequency jitter, amplitude modulation or intermittency stays in one pair (p. 8–9, 23–24). The filter is justified by a locally linear, normal model of the dynamics: changes along the diagonals of R reflect growth/amplitude, changes across them reflect frequency, so smoothing along the diagonals limits the rate of change of amplitude and frequency of each mode (p. 6–9). An objective mode-pairing procedure is added, based on a DMD of the SPOD coefficients and a "harmonic correlation" matrix (p. 9–11). Three time-resolved PIV datasets (swirl combustor, Gurney-flap wake, fluidic oscillator) show SPOD separating structures that POD mixes and that the DFT misses or spreads (p. 12–22).

## Key findings
- **Filter length sets a continuum POD → SPOD → DFT** (p. 5–6, 23; Fig. 14). Larger N_f gives more spectrally pure coefficients and a stable limit cycle in the phase portrait, at the cost of spatial orthogonality and a flatter ("dispersed") spectrum (p. 6, 23).
- **Exactness is kept.** Using all N modes, Σμ_i = Σλ_i and the reconstruction (2.13) is exact (p. 6). Spatial modes are no longer orthogonal or normalised (p. 6, App. B p. 25–26).
- **What the filter constrains** (p. 8–9, 23): coefficients get low-pass-filtered growth rates σ and band-pass-filtered frequencies ω. The effect is strongest on the leading modes and weaker for higher modes, because the filter acts on the whole matrix, not per mode (p. 8–9).
- **Choice of N_f:** one to two periods of the mode of interest worked best in the swirl case (p. 16); three shedding periods, about one convective transit through the field of view, in the Gurney case (p. 17). The authors say N_f can be estimated from the dominant frequency or the convective time scale (p. 24). See the caveat under Setup about whether "filter size" means N_f or 2N_f + 1.
- **Swirl combustor (Re 58,000)** (p. 12–16, Fig. 5–6):
  - The spatially averaged PSD is broadband with no clear peak (Fig. 5b).
  - POD (N_f = 0) finds a low-frequency mode at St ≈ 0.1 plus mixed modes between St 0.3 and 0.8 whose spectra are broad (p. 13).
  - SPOD (N_f = 10) finds three peaks at St = 0.09, 0.5 and 0.8 (p. 15): a single-helical mode in the wake of the recirculation zone; the single-helical precessing global mode, matching [Oberleithner et al. 2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md); and a double-helical mode that is not a harmonic of the second (p. 15).
  - DFT (N_f = 2000) shows similar shapes at those frequencies but corrupted by noise, and gives no hint of which frequencies matter (p. 15).
  - A mean-flow linear stability analysis (following Oberleithner et al. 2015) gives three unstable modes whose frequencies and azimuthal and axial wavenumbers match the SPOD modes "surprisingly well"; it is not detailed in the paper (p. 15).
  - The most energetic POD mode is a low-frequency "shift mode" from slow movement of the vortex-breakdown bubble (p. 15).
- **Gurney-flap wake (Re 180,000 on chord, FX 63-137 at 5°)** (p. 16–19, Fig. 8–9):
  - Shedding at St_h = 0.105 with a weak harmonic (Fig. 8b, p. 16).
  - POD (N_f = 0) captures shedding in mode 1. Intermittent alteration of shedding by the vortex shed from upstream of the flap is spread over several compact modes that are active one after another (p. 16).
  - SPOD (N_f = 15) puts that alteration into one pair with longer wavelength and lower frequency than shedding, and also recovers the second harmonic, which POD misses entirely (p. 16–17).
  - The DFT at the SPOD mode-2 frequency shows nothing: the event is intermittent with varying frequency and amplitude, so no single-frequency mode can represent it; the authors say DMD has the same problem (p. 17).
- **Fluidic oscillator (sweeping jet, Re 37,000)** (p. 19–22, Fig. 11–13):
  - The field of view is cropped (jet only partly in the domain; data with x/D < 2 lost to reflections) (p. 19).
  - POD harmonics appear in every coefficient because the jet leaves and re-enters the domain; the POD does not separate fundamental and harmonics (p. 19).
  - SPOD (N_f = 30) lines up the fundamental and harmonics up to the seventh, each with a narrow-band coefficient and symmetric mode shape (p. 19–20). The seventh harmonic has visible frequency jitter yet a smooth mode (p. 20).
  - The DFT splits each peak over several bins, and fails for the seventh harmonic (p. 20).
  - Phase portraits: the POD pair covers only about a third of a circle and then collapses, because half the period is cut out when the jet leaves the domain; the SPOD pair traces a clean circle, from which the instantaneous phase and frequency can be read (Fig. 13, p. 22). The authors call this "data completion".
- **Claimed advantages** (p. 23–24): separation of structures, noise rejection (recovers dynamics weaker than the overall noise level), data completion, and smooth coefficients with adjustable frequency and amplitude variation. These help phase averaging, extended POD, ROM building and DMD (p. 22, 24).
- **Cost** is only marginally above snapshot POD (abstract, p. 1; p. 22).

## Setup / method

### Algorithm (snapshot version, p. 3–6, 9–11)
1. **Data:** a time-resolved sequence of N snapshots at fixed Δt, M points each; subtract the mean (eq. 2.1, p. 3). Consecutive ordering is essential: the filter acts along time-lag diagonals.
2. **Correlation matrix** R_ij = (1/N)⟨u(x,t_i), u(x,t_j)⟩ (eq. 2.3, p. 4), with the L² inner product (eq. 2.2).
3. **Filter** along the diagonals: S_ij = Σ_{k=−N_f}^{N_f} g_k R_{i+k, j+k} (eq. 2.9, p. 5).
   - Box filter g_k = 1/(2N_f + 1) is simplest. The paper uses a **Gaussian** whose standard deviation gives the same cut-off frequency as a box filter of half the length (p. 5). Any FIR filter is allowed.
   - **Ends of the series:** pad missing elements with zeros, or treat the series as periodic. With periodic treatment and a box filter as long as the series, S is circulant and the DFT results (p. 6). Which choice was used for the examples is not stated.
4. **Eigen-decompose** S b_i = μ_i b_i (eq. 2.10, p. 6); coefficients scaled so (1/N)(b_i, b_j) = μ_i δ_ij (eq. 2.11).
5. **Spatial modes** by projection: Ψ_i(x) = (1/(N μ_i)) Σ_j b_i(t_j) u(x,t_j) (eq. 2.12). Not orthogonal.
6. **Pair the modes** (§2.5, p. 9–11; Fig. 3):
   - Keep N_c modes holding about 95% of the SPOD energy, E(N_c) = 0.95 (eq. 2.29, p. 10). This depends on the signal-to-noise ratio, which can be estimated from the POD spectrum (Raiola et al. 2015). N_c grows with N_f because the spectrum flattens.
   - DMD of the N_c coefficient time series: T = Y X⁺ (eq. 2.27–2.28), eigenvalues ν_i with ln(ν_i)/Δt = σ_i + iω_i, eigenvectors c_i (eq. 2.30–2.31). The authors found DMD more reliable than a Fourier transform of the coefficients for this (p. 9).
   - Harmonic correlation matrix C_ij (eq. 2.32). Pick the maximum of C to identify a pair, zero that row and column, repeat until all modes are paired. This also creates weakly correlated, possibly unphysical pairs (p. 11).
   - Pair frequency: weighted mean over the n = 3 DMD eigenvalues with most content for the pair (eq. 2.33, p. 11).
   - Pair energy K (eq. 2.34) as a fraction of the retained energy.
   - The pair forms a complex (analytic) coefficient b̃ = b_i + i b_j (eq. 2.26, Fig. 3).
7. **Presentation ("SPOD spectrum")**: each pair is one dot at (f from eq. 2.33, K from eq. 2.34), with size and colour set by C_ij (Fig. 6, 9, 12). Coefficient PSDs use Welch averaging over five 50%-overlapping segments (p. 13).

### Spatial (multi-time-delay) version (App. A, p. 24–25)
For few sensors and very long records (M ≪ N, e.g. a microphone or pressure array with ~10⁶ samples), build an (M(2N_f+1))² correlation tensor over spatial pairs and time shifts (eq. A2), weighted by √(g_k g_l). Its eigenvectors Ψ̃_s(x_i, τ_k) are **data-driven convolution filters**: applying them to the time series gives b_s(t) (eq. A4). The spatial mode is the τ = 0 slice. This is likened to empirical mode decomposition (Huang et al. 1998) but works for several sensors, and the authors say it gives excellent results for reconstructing the phase of a dominant oscillation from pressure sensors; it is similar to multi-time-delay POD phase estimation (Hosseini et al. 2015). It is cheaper than the snapshot version only if M(2N_f + 1) < N (p. 25).

### Experiments (p. 12, 16, 19)
All three use the same time-resolved PIV system: Photron Fastcam SA 1.1 (1 Mpx, 2.7 kHz double frame), Quantronix Darwin Duo laser (30 mJ at 1 kHz), PIVview with iterative multigrid and image deformation (p. 12).

| Case | Re (scale) | St scale | Dominant St | N_f (POD / SPOD / DFT) | Facility notes |
|---|---|---|---|---|---|
| Swirl-stabilised combustor, non-reacting | 58,000 (nozzle D, bulk velocity) | f D/u_bulk | 0.09, 0.5, 0.8 (SPOD) | 0 / 10 / 2000 | Tangential-injection swirler, mixing tube into quartz chamber; meridional plane (Reichel et al. 2015) (p. 12) |
| FX 63-137 airfoil with Gurney flap at 5° | 180,000 (chord) | f h/U∞, h = 3.6% chord | 0.105 shedding | 0 / 15 / 2000 | Wake only (Bach et al. 2015b) (p. 16) |
| Fluidic oscillator (sweeping jet), square nozzle | 37,000 (nozzle D, mean nozzle velocity) | f D/U | narrow fundamental + ≥5 harmonics | 0 / 30 / 2000 | Domain off the jet centre; x/D < 2 lost to reflections (Woszidlo et al. 2015) (p. 19) |
| Forced turbulent jet (illustration only) | — | — | forcing; sampling 25× forcing frequency | 0 / 25 / 100 / 200 (Fig. 14, 200 snapshots) | p. 4, 23 |

> Not stated in the paper: the PIV sampling rate, number of snapshots, vector spacing and field-of-view size for each case, and the velocity component(s) decomposed (mode plots show the crosswise component, p. 12–13). N_f = 2000 is called the DFT limit, so presumably 2N_f + 1 ≥ N there.

> **Ambiguity in "filter size":** p. 16 says the swirl-case filter size N_f (= 10) is twice the period of the second mode, and p. 17 says the Gurney N_f (= 15) equals three shedding periods. Taken literally these imply periods of 5 samples, which seems too coarse; they may refer to the full width 2N_f + 1, or to the Gaussian's effective width. Check against the published version before using these as a rule.

### Modelling side
- **Theory** (§2.4, p. 6–9): assumes the flow is locally (over the filter time scale) a linear, time-invariant, *normal* system ∂u/∂t = L u. Nonlinearity and non-normality of Navier–Stokes are pushed into slow variations of σ and ω, as in the generalised mean-field model of Luchtenburg et al. (2009) (p. 7). Under this model, inner products depend on t₁ + t₂ through Σ (growth) and on t₂ − t₁ through Ω (frequency) (eq. 2.22). The 3 × 3 neighbourhood of R shows growth varying along diagonals and frequency across them (eq. 2.23–2.25).
- The paper is explicit that SPOD was developed from data-processing experience, not derived from a constrained optimisation (p. 22, 24).
- The only stability analysis is the mean-flow LSA mentioned for the swirl case, not shown (p. 15). No simulations are analysed.

## Key equations
Notation as in the paper (checked against rendered pages 3–11 and 24–26).

- Decomposition and POD (eq. 2.1–2.7, p. 3–4):
  $$U(\boldsymbol x,t)=\overline u(\boldsymbol x)+\sum_{i=1}^N a_i(t)\Phi_i(\boldsymbol x),\qquad R_{i,j}=\frac1N\langle u(\boldsymbol x,t_i),u(\boldsymbol x,t_j)\rangle,\qquad \boldsymbol R\boldsymbol a_i=\lambda_i\boldsymbol a_i$$
  $$\Phi_i(\boldsymbol x)=\frac{1}{N\lambda_i}\sum_{j=1}^N a_i(t_j)\,u(\boldsymbol x,t_j),\qquad \langle\Phi_i,\Phi_j\rangle=\delta_{ij}$$
- Spatially averaged autocorrelation coefficient, the diagonal average of R (eq. 2.8, p. 5):
  $$\widehat R(\tau)=\frac{\iint u(\boldsymbol x,t)\,u(\boldsymbol x,t+\tau)\,\mathrm d\boldsymbol x\,\mathrm dt}{\iint u^2(\boldsymbol x,t)\,\mathrm d\boldsymbol x\,\mathrm dt}$$
- **SPOD filter** (eq. 2.9, p. 5) and eigenproblem (eq. 2.10–2.13, p. 6):
  $$S_{i,j}=\sum_{k=-N_f}^{N_f} g_k\,R_{i+k,\,j+k},\qquad \boldsymbol S\boldsymbol b_i=\mu_i\boldsymbol b_i,\qquad \frac1N(\boldsymbol b_i,\boldsymbol b_j)=\mu_i\delta_{ij}$$
  $$\Psi_i(\boldsymbol x)=\frac{1}{N\mu_i}\sum_{j=1}^N b_i(t_j)\,u(\boldsymbol x,t_j),\qquad U=\overline u+\sum_{i=1}^N b_i(t)\Psi_i(\boldsymbol x)$$
- DFT limit: S_ij = R̂(Δt|i − j|), a symmetric Toeplitz (circulant if periodic) matrix whose eigenvalues trace the PSD (Szegő; Wise 1955; Gray 2005) (eq. 2.14, p. 6).
- Local linear model (eq. 2.15–2.22, p. 7), L = UDU*, D = Σ + iΩ:
  $$\langle u(\boldsymbol x,t_1),u(\boldsymbol x,t_2)\rangle=\left\langle \boldsymbol U^*\boldsymbol u_0,\;e^{\boldsymbol\Sigma(t_1+t_2)+\mathrm i\boldsymbol\Omega(t_2-t_1)}\boldsymbol U^*\boldsymbol u_0\right\rangle$$
- Analytic coefficient (eq. 2.26, p. 8): $\tilde b(t)=A(t)e^{\mathrm i\phi(t)}$, $\partial\tilde b/\partial t=[\sigma(t)+\mathrm i\omega(t)]\tilde b(t)$.
- Pairing (eq. 2.27–2.34, p. 9–11):
  $$\boldsymbol T=\boldsymbol Y\boldsymbol X^{+},\quad \boldsymbol T\boldsymbol c_i=\nu_i\boldsymbol c_i,\quad \ln(\nu_i)/\Delta t=\sigma_i+\mathrm i\omega_i,\quad b_j(t)=\sum_{i=1}^{N_c}c_{i,j}\,e^{(\sigma_i+\mathrm i\omega_i)t}$$
  $$C_{i,j}=\mathrm{Im}\left\{\sum_{k=1}^{N_c}c_{k,i}\,c_{k,j}^{*}\,\mathrm{sgn}(\mathrm{Im}\,\nu_k)\right\},\qquad (\boldsymbol c_i,\boldsymbol c_i)=1$$
  $$f=\frac{\sum_{i=1}^{n}\mathrm{Im}\{\ln\nu_i\}\,\tilde c_i}{2\pi\Delta t\sum_{i=1}^{n}\tilde c_i},\quad \tilde c_k=c_{k,i}^2+c_{k,j}^2,\qquad K=\frac{\mu_i+\mu_j}{\sum_{k=1}^{N_c}\mu_k},\qquad \mathcal E(N_c)=\frac{\sum_{k=1}^{N_c}\mu_k}{\sum_{k=1}^{N}\mu_k}$$
- Spatial SPOD (eq. A2–A4, p. 25):
  $$S_{i,j,k,l}=\frac{\sqrt{g_kg_l}}{MN\Delta t}\int p(x_i,t-k\Delta t)\,p(x_j,t-l\Delta t)\,\mathrm dt,\qquad \sum_{l}\sum_{j}S_{i,j,k,l}\widetilde\Psi_s(x_j,\tau_l)=\mu_s\widetilde\Psi_s(x_i,\tau_k)$$
  $$b_s(t)=\sum_{k=-N_f}^{N_f}\sum_{i=1}^{M}\sqrt{\frac{g_k}{M}}\,\widetilde\Psi_s(x_i,\tau_k)\,p(x_i,t-\tau_k)$$
- Mode norm (eq. B3, p. 26): $\zeta_i=\sqrt{\frac1M\sum_k\Psi_i^2(x_k)}$. POD gives ζ = 1; for a DFT pair ζ_i + ζ_j = 1; for the cropped sweeping jet the leading SPOD pair has unequal ζ that roughly sum to one, i.e. ζ measures how well the data capture each mode (p. 26).

> Check against the PDF before coding: (i) in eq. 2.33, c̃_k = c²_{k,i} + c²_{k,j} is printed with plain squares although the DMD eigenvector entries are complex; |c|² is presumably intended. (ii) The sum limits in eq. A3 run over l and j while the text calls N_f "filter size"; the reshaping S_{(i+kM),(j+lM)} implies indices k, l shifted to start at 0. (iii) The box-filter normalisation 1/(2N_f + 1) means S keeps the trace of R only away from the ends; the end treatment changes this.

## Data tables
Only the case table under Setup is worth reusing; mode energies K are given only graphically (Fig. 6, 9, 12, log axes in %).

## Figures worth remembering
- **Fig. 1 (p. 5):** correlation matrix of a forced jet with diagonal wave pattern, and its diagonal average R̂(τ). The visual intuition for the method.
- **Fig. 2 (p. 9):** schematic: amplitude change scales the anti-diagonal profile, frequency change moves its zero crossings.
- **Fig. 3 (p. 10):** workflow: data → SPOD → DMD of b_i → harmonic correlation C → pairs forming an analytic signal.
- **Fig. 6 (p. 14):** swirl combustor POD / SPOD / DFT side by side: SPOD spectrum scatter, three spatial modes, coefficient PSDs.
- **Fig. 9 (p. 18):** Gurney wake, same layout; SPOD isolates the intermittent vortex–shedding interaction and the second harmonic.
- **Fig. 12 (p. 21):** fluidic oscillator, same layout; harmonics up to the seventh in SPOD.
- **Fig. 13 (p. 22):** phase portraits of POD vs SPOD leading pair: POD collapses for part of the cycle, SPOD traces a circle.
- **Fig. 14 (p. 23):** summary: S and the leading-pair phase portrait for N_f = 0, 25, 100, 200 (200 snapshots); the portrait tightens to a limit cycle as N_f grows.

## Notation
- u: fluctuating field; ū: mean. N: snapshots; M: spatial points (or sensors). Δt: sampling interval.
- R: snapshot correlation matrix; λ_i, a_i, Φ_i: POD eigenvalues, coefficients, (orthonormal) modes.
- S: filtered correlation matrix; g_k: filter coefficients, k = −N_f … N_f; N_f: filter half-width ("filter length/size"). μ_i, b_i, Ψ_i: SPOD energies, coefficients, (non-orthogonal) modes.
- L, U, D = Σ + iΩ: local linear operator and its eigen-decomposition; σ growth rate, ω angular frequency.
- b̃ = A e^{iφ}: analytic coefficient from a pair. T: DMD operator on SPOD coefficients; ν_i, c_i its eigenvalues and eigenvectors. C: harmonic correlation; K: pair energy fraction; N_c: retained modes; E: cumulative energy.
- Ψ̃_s(x, τ): spatial-version eigenvector (convolution filter); ζ_i: mode norm.

## Relevance to this project
- **Disambiguation:** when a paper or code says "SPOD", check which one. The group's workflow (CLAUDE.md) and most jet literature use Towne/Schmidt frequency-domain SPOD ([schmidt-2018](schmidt-2018-spectral-analysis-jet-turbulence.md), [towne-2022](towne-2022-database-reduced-complexity-modeling.md), [yeung-2024](yeung-2024-adaptive-spod-broadband-tonal.md), [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md)); [lesshafft-2019](lesshafft-2019-resolvent-modelling-wavepackets-turbulent-jet.md) explicitly uses the Towne sense. Sieber's method is the "time-filtered POD" that [von-saldern-2026](von-saldern-2026-band-ensemble-spod.md) lists as reaching the same POD and DFT end points, and that [raiola-2025](raiola-2025-hilbert-pod.md) cites as adding user parameters.
- **Data requirements:** N_f > 0 needs a uniformly sampled, ordered time series (time-resolved schlieren, TR-PIV, microphones). It is **not usable on non-time-resolved PIV**: shuffled or 2 Hz snapshots make the diagonal filter meaningless, and the method falls back to POD at best. For snapshot PIV keep to POD pairs ([edgington-mitchell-2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [weightman-2019](weightman-2019-sound-production-impinging-supersonic-jets.md)) or space-only HPOD ([raiola-2025](raiola-2025-hilbert-pod.md)). Parameters: N_f (one to a few periods of the target mode), filter shape (Gaussian), end treatment, N_c (≈95% energy) and n = 3 for the pair frequency.
- **Relation to the SPOD → reconstruction → Hilbert POD pipeline:**
  - Sieber SPOD gives in one step what the pipeline aims at: a pair of smooth time coefficients that form an analytic signal b̃ = b_i + i b_j, whose |b̃| and d(arg b̃)/dt are the instantaneous amplitude and frequency of one structure (eq. 2.26; Fig. 13, p. 22). It keeps intermittency and frequency jitter within one pair (Gurney and oscillator cases), which Towne-type SPOD spreads across frequencies and modes.
  - N_f plays the role of the reconstruction bandwidth in the pipeline: it sets how fast amplitude and frequency may vary (p. 8, 24). The filter acts on the coefficients' growth rate σ(t) and frequency ω(t) (p. 8–9), so N_f is the bandwidth that caps how fast the instantaneous frequency can change, the same role the reconstruction band plays before HPOD ([raiola-2025](raiola-2025-hilbert-pod.md)). Too large a filter suppresses exactly the switching one wants to track.
  - It could therefore be an alternative or cross-check for HPOD on time-resolved schlieren of screeching or impinging jets: track A1/A2 mode switching or intermittent impingement tones as the phase portrait of a Sieber SPOD pair. *(My suggestion; not done in the paper, which has no jet-noise cases.)*
  - Spatial modes are not orthogonal, and the pairing step can create spurious pairs (p. 11), so check pairs with C_ij, phase portraits and the mode norm ζ.
- **Acoustic arrays:** the spatial version (App. A) is designed for few sensors with long records. Its data-driven filter bank could estimate the instantaneous screech phase from a microphone array, to phase-average schlieren or PIV (the extended-POD use the authors mention, p. 22, 24–25). Compare with EMD/Hilbert spectral analysis ([huang-1998](huang-1998-empirical-mode-decomposition-hilbert-spectrum.md)) and wavelets ([torrence-1998](torrence-1998-practical-guide-wavelet-analysis.md)).
- **Pairing via DMD:** the harmonic-correlation method uses DMD ([schmid-2010](schmid-2010-dynamic-mode-decomposition.md); Koopman view in [rowley-2009](rowley-2009-spectral-analysis-nonlinear-flows-koopman.md)) on coefficients, not on fields. It is an objective replacement for picking POD pairs by eye from energy and Lissajous figures, and could be applied to POD of time-resolved data in general.
- **Data completion** matters for schlieren or PIV windows that cut off part of a flapping or helical structure, as with the sweeping jet (p. 19–22, 26).
- **Modelling side:** the justification is a locally linear, normal model with slowly varying σ and ω (p. 6–8); non-normality is not treated, although jets are strongly non-normal (cf. [pickering-2020](pickering-2020-lift-up-kh-orr-jets.md)). The only physics check is a mean-flow LSA of the swirl combustor that matched the three SPOD modes in frequency and wavenumbers but is not shown (p. 15). The St ≈ 0.5 precessing mode agrees with the mean-flow LSA and POD-pair results of [oberleithner-2011](oberleithner-2011-swirling-jet-vortex-breakdown-stability.md) (St 0.49 global mode), same TU Berlin group.
- **Facility:** TU Berlin (Hermann-Föttinger-Institut) experiments; not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:** Towne, Schmidt & Colonius (2018) for the frequency-domain SPOD; Oberleithner, Rukes & Soria (2014) mean-flow stability of oscillating jets; Hosseini et al. (2015) multi-time-delay POD phase estimation; Raiola, Discetti & Ianiro (2015) POD-based PIV noise truncation.
