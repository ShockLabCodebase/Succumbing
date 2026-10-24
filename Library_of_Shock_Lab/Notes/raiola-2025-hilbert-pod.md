---
key: "raiola-2025-hilbert-pod"
title: "Hilbert Proper Orthogonal Decomposition: a tool for educing advective wavepackets from flow field data"
authors: ["Raiola, M.", "Kriegseis, J."]
year: 2025
type: "preprint"
venue: "arXiv:2507.02487"
bib: {"note": "arXiv:2507.02487v1 [physics.flu-dyn]; published as Phys. Rev. Fluids (2026), doi:10.1103/bhlm-qwfh"}
doi: ""
arxiv: "2507.02487"
pdf: "time-frequency-methods/Raiola-Kriegseis_2025_Hilbert-Proper-Orthogonal-Decomposition-A-Tool-For-Educing-Advective-Wavepackets.pdf"
version: "preprint"
unverified: ["published version (Phys. Rev. Fluids 2026, doi 10.1103/bhlm-qwfh, title \"Hilbert proper orthogonal decomposition: A tool for educing advective wave packets from flow field data\") from Crossref, not from the held preprint PDF"]
group: false
facility: ""
data: ["DNS", "LES", "PIV"]
methods: ["HPOD", "Hilbert-transform", "POD", "PSD"]
flow: ["round-jet", "wake", "subsonic"]
phenomena: ["KH-wavepackets", "intermittency", "coherent-structures"]
params: {"M": "0.9 (jet LES)", "Re": "100 (cylinder DNS); 33,000 (jet PIV)"}
topics: ["time-frequency-methods", "modal-decomposition"]
related: ["davey-2025-hpod-sphere-wake", "horel-1984-complex-principal-component-analysis", "towne-2018-spod-relationship-dmd-resolvent", "towne-2022-database-reduced-complexity-modeling", "nekkanti-2021-spod-reconstruction-denoising-frequency-time", "edgington-mitchell-2020-waves-in-screeching-jets"]
cites: ["cavalieri-2019-wave-packet-models-jet-dynamics-sound-radiation", "horel-1984-complex-principal-component-analysis", "jordan-2013-wave-packets-turbulent-jet-noise", "kriegseis-2021-hilbert-transform-revisited-hpod", "schmid-2010-dynamic-mode-decomposition", "schmidt-2020-guide-spod", "sieber-2016-spectral-proper-orthogonal-decomposition", "sirovich-1987-turbulence-dynamics-coherent-structures-part-i", "taira-2017-modal-analysis-fluid-flows-overview", "towne-2018-spod-relationship-dmd-resolvent", "towne-2022-database-reduced-complexity-modeling"]
summary: "HPOD = POD of the analytic signal; new space-only version (Hilbert in x) works on snapshot PIV; reduces to SPOD for stationary advecting waves; instantaneous amplitude/frequency"
---
# Hilbert Proper Orthogonal Decomposition: a tool for educing advective wavepackets from flow field data

- **Authors:** M. Raiola (Universidad Carlos III de Madrid; KIT), J. Kriegseis (Karlsruhe Institute of Technology)
- **Source:** arXiv:2507.02487v1 [physics.flu-dyn] (preprint, 3 Jul 2025; JFM style). Published version: Phys. Rev. Fluids (2026), "Hilbert proper orthogonal decomposition: A tool for educing advective wave packets from flow field data", doi:10.1103/bhlm-qwfh (Crossref, issued 2026-04-06; not checked against the published PDF, so this note follows the preprint)
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/time-frequency-methods/Raiola-Kriegseis_2025_Hilbert-Proper-Orthogonal-Decomposition-A-Tool-For-Educing-Advective-Wavepackets.pdf` (30 pp.)
- **Tags:** Hilbert POD (HPOD), analytic signal, Hilbert transform, complex POD, space-only HPOD, travelling wavepackets, instantaneous frequency and amplitude, intermittency, SPOD comparison, non-time-resolved PIV, cylinder wake DNS, turbulent jet LES, jet PIV

## Summary
HPOD is ordinary POD applied to the complex *analytic signal* of the data, which is built by adding i times the Hilbert transform of the real field (p. 7–9). The conventional version takes the Hilbert transform in time, so it needs time-resolved data. The paper's new **space-only** version takes it along the advection direction x instead, so it needs only spatial resolution and works on snapshot PIV (p. 4–5, 9). The authors prove that each version gives modes that are analytic in its own transform direction (p. 10–11). For waves with a phase-velocity relation (ω = ck), the two versions give the same structures, up to complex conjugation, and both reduce to the SPOD eigenproblem when the flow is stationary and homogeneous (p. 11–13). Unlike SPOD, HPOD modes are not spectrally pure: each mode has an instantaneous/local amplitude and frequency (or wavenumber), so amplitude and frequency modulation and intermittency stay within one mode (p. 3, 13, 27). The method is shown on a Re = 100 cylinder-wake DNS, an M = 0.9 jet LES and snapshot PIV of a Re = 33,000 jet (p. 14–26).

## Key findings
- **One complex mode replaces a POD pair.** In the cylinder wake, both HPOD versions put about 95% of the energy in the first structure, whereas POD splits it about 50/46% over modes 1–2 (Fig. 1, p. 14–15; values read off the plot). Re and Im of each HPOD spatial mode match consecutive POD pairs, and the temporal modes trace the unit circle exp(iωt) (Fig. 2–3, p. 15, 17). No a-posteriori pairing is needed (p. 27).
- **Time-resolution test (shuffled snapshots)** (Fig. 1 right, Fig. 4–5, p. 15–16, 18):
  - Space-only HPOD gives the same energies and the same spatial modes as on the ordered sequence.
  - Conventional HPOD cannot complexify the data correctly and reverts towards POD: it gives mode pairs and has no quadrature relation in ψ. Its modes are still complex, with a non-zero imaginary part (p. 16). This matches Kriegseis et al. (2021) (p. 3, 15).
- **Edge effects of the FFT-based Hilbert transform** distort modes near the boundaries of the transform direction (time for HPOD_t, x for HPOD_x). In low-energy modes the distortion spreads into the other direction too (Fig. 2, row 3, p. 16). Cutting **15% from each end** after the transform removes it completely. The 15% is an empirical, conservative choice, and with space-only HPOD it shrinks the x-extent of the domain (p. 16). Padding and windowing are mentioned as alternatives but not tested (p. 8).
- **The two versions are complex conjugates of each other.** In the jet LES, the spatial modes from HPOD_t and HPOD_x have nearly the same real parts and opposite-sign imaginary parts (p. 19).
  - HPOD_t modes have only positive temporal frequencies and only negative wavenumbers.
  - HPOD_x modes have only positive wavenumbers and only negative frequencies.
  - Both describe the same physical travelling wave (p. 21–23; Fig. 8–11).
- **Jet LES energies:** the first three structures hold 8.1/7.2/6.0% of the TKE with HPOD_t and 8.4/7.5/6.2% with HPOD_x (p. 16, 19).
- **Wavepacket envelopes** (LES, |φ|): mode 1 has a broad peak over x/D ≈ 10–20; mode 2 peaks at x/D ≈ 13 and 21; mode 3 at ≈ 12 and 23 (p. 19). This modulation resembles the SPOD modes of the M = 0.4 jet in Towne et al. (2018) (p. 19).
- **Intermittency and frequency modulation are resolved.**
  - The temporal modes of the LES do not follow the unit circle, so they are not spectrally pure (p. 19).
  - Spectrograms show the modes switching between active bursts, with spectral content at a preferred frequency, and inactive periods with no content. During active periods the frequency drifts slightly. Peak-frequency histograms cluster around one value per mode (Fig. 8–9, p. 19, 21).
  - The spatial modes are band-limited in wavenumber but modulated along x. According to the text, the peak wavenumber increases with mode number (Fig. 10–11, p. 19–21).
- **Snapshot PIV (space-only HPOD only):** the first three structures hold 8.8/6.7/5.4% of the TKE (p. 24).
  - Re and Im have the same wavenumber and are shifted by π/2 in x, so each mode is a travelling wavepacket that grows and then decays in x, as in the LES (Fig. 13, p. 24).
  - The spatial spectra contain only positive wavenumbers (Fig. 14, p. 24–25).
  - The temporal coefficients fill a disc randomly (p. 24), so the dynamics in time cannot be recovered.
  - Multiplying a spatial mode by exp(iφ) and sweeping the phase φ gives an oscillator model that clearly shows the wavepacket advecting (Fig. 15, p. 25–26).
- **How HPOD relates to SPOD** (p. 13, 27): SPOD gives each structure a single frequency with infinite temporal support. HPOD trades that for structures with local, instantaneous frequency (or wavenumber) and amplitude. The authors compare the difference to that between Fourier analysis and time-frequency analysis.
- **Choice of direction is a filter** (p. 13, 26): the two versions agree only for advecting features. Taking the Hilbert transform along the propagation direction of a wave targets that wave and rejects other time-dependent phenomena. The authors argue this justifies space-only HPOD even when time-resolved data are available.

## Setup / method

### Algorithm (as described on p. 7–9, 14–16)
1. **Start with the real field** u(x, t). The fluctuating field is implied, since energies are quoted as % of TKE (p. 16, 24); mean subtraction is not stated explicitly.
2. **Complexify** by building the analytic signal along one direction. Operationally (p. 8): FFT along that direction, zero the negative-frequency (or negative-wavenumber) bins, double the positive ones, then inverse FFT (eq. 2.19).
   - **Conventional HPOD (HPOD_t):** transform along time at every spatial point (eq. 2.22–2.23). Needs time-resolved, uniformly sampled data.
   - **Space-only HPOD (HPOD_x):** transform along the advection direction x in every snapshot, at each cross-stream position (eq. 2.24–2.25). Snapshots can be uncorrelated in time and in any order. The spatial resolution must capture the wave's displacement accurately (p. 13).
3. **Trim** 15% at each end of the transformed direction (p. 14, 16). In the LES both versions were trimmed in t *and* x for a fair comparison (p. 16).
4. **Apply standard POD to the complex field:** ũ = Σ ψ_j σ_j φ_j (eq. 2.27). Use either the two-point spatial correlation or the two-instant (snapshot) correlation of ũ (eq. 2.28–2.29); in practice this is the SVD of the complex snapshot matrix. σ_j² is the energy of structure j (p. 14).
5. **Interpret the modes:**
   - φ_j(x) is complex: Re and Im are a quadrature pair in space.
   - ψ_j(t) is complex: |ψ_j| gives the instantaneous amplitude and arg ψ_j the instantaneous phase. Instantaneous frequency is f = (1/2π) dφ/dt (eq. 2.20–2.21, p. 8, 10).
   - Spatially, HPOD_x gives the local amplitude and wavenumber along x.
   - Practice in the paper: modulation is examined with STFT spectrograms (below), not by differentiating the phase.
6. **Optional oscillator model** for non-time-resolved data: Re[φ_j e^{iφ}], sweeping the phase φ (p. 24–25).

### Test cases

| Case | Data | Size / sampling | Hilbert direction(s) | Notes |
|---|---|---|---|---|
| Cylinder wake, Re = 100 | 2D DNS, OpenFOAM `pimpleFoam` | 10,800 snapshots; Δt U∞/D = 0.0139; cropped domain 10.6D × 4.8D on 91 × 201 points | t and x (streamwise) | also shuffled in time to imitate non-time-resolved data; tested with 100% and 70% (15% cut each end) of the sequence (p. 14) |
| Turbulent jet, M = U_j/a = 0.9, Re_j = U_j D/ν ≈ 10⁶ | LES database of Towne et al. (2023) | 10,000 snapshots at Δt = 0.2 D/a; cylindrical grid 656 × 138 × 128 (x, r, θ) over 30D × 6D; a **single azimuthal plane** used | t and x (axial) | 15% cut each end in both t and x (p. 16) |
| Turbulent jet, Re = V_J D/ν = 33,000 | snapshot planar PIV (Raiola & Ragni 2019) | 2,600 fields at 10 Hz; FOV 6D × 20D; vector spacing 0.029D | x only | only the half of the domain on one side of the centreline used, to avoid mixing in azimuthal content (p. 23) |

- **PIV details** (p. 23): D = 20 mm nozzle, V_J = 25 m/s. DEHS seeding of about 1 µm from a Laskin nozzle, fed into the stagnation chamber; the jet is enclosed in a box of about 50D × 50D × 50D so seeding is similar inside and outside the jet. Quantel Evergreen Nd:YAG laser (200 mJ/pulse, 15 Hz). Three Andor Zyla 5.5 MP sCMOS cameras placed along the axis. Multi-pass image deformation with final 40 × 40 px windows at 75% overlap. The facility is not named (it is the Raiola & Ragni 2019 experiment).
- **Simulation details:** the paper gives few numerics. The DNS is described only by its solver, Re, cropped output domain and time step. The LES is taken as-is from the Towne et al. database; see [towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md) for its numerics. The paper contains no stability, resolvent or ROM analysis. Its "model" side is the analytic derivation in §2.5–2.6, which links HPOD to SPOD through the wave equation.
- **Time–frequency post-processing** (p. 19):
  - Temporal modes: rectangular windows with 75% overlap (248 segments), STFT of each, PSD plotted over a 30 dB range, plus a histogram of the peak frequency in each window.
  - Spatial modes: the same along x (29 segments) for each r, with the PSD averaged over r, plus a histogram of the peak wavenumber.
- **Which velocity components went in** is not stated explicitly. Mode figures show the radial component, and the text refers to "rows along x of the vector field" (p. 19), which suggests both components were decomposed together.

### Context from the introduction (p. 1–5)
- **Standard POD** splits a travelling structure into two real modes in phase quadrature. Pairing them, and checking with Lissajous plots, works for periodic flows but fails in complex ones (p. 2).
- **SPOD (Towne et al. 2018):**
  - It is spatiotemporally coherent but needs statistical stationarity and imposes spectral purity.
  - A structure with phase jitter, frequency modulation or intermittency therefore gets split across several frequencies and modes (p. 3).
  - Sieber's SPOD (filtering the correlation matrix) and mPOD (multi-resolution) blend DFT and POD but add user-chosen parameters (p. 3).
- **Other ways to handle travelling structures** (p. 4) all need time-resolved data:
  - frame-shift methods: centring, template fitting, shifted POD;
  - characteristic DMD, a rotation in (x, t) (Sesterhenn & Shahirpour 2019);
  - spatial DMD (Schmid 2010);
  - permuted POD (Ek et al. 2022), which reorients the data matrix along the advection direction and is the closest relative of space-only HPOD (p. 5);
  - complex wavelets along x (Encinar & Jiménez 2020).
- **Prior names for HPOD:** complex EOFs (Barnett 1983–84), complex principal components (Horel 1984), complex orthogonal decomposition (Feeny 2008). It was introduced to fluids by Kriegseis, Kinzel & Nobach (2021, PIV symposium) (p. 3–4). Merrifield & Guza (1990) is cited for the limits of complex EOFs on broadband waves (p. 4).

## Key equations
Notation follows the paper: φ_j are spatial modes, ψ_j temporal modes, σ_j singular values, ⟨·⟩ the ensemble average and \* the complex conjugate.

- **POD, bi-orthogonal form** (Aubry 1991) (eq. 2.1–2.2, p. 5):
  $$\boldsymbol u(\boldsymbol x,t)=\sum_j \psi_j(t)\,\sigma_j\,\boldsymbol\phi_j(\boldsymbol x),\qquad \int_\Omega \boldsymbol\phi_j\boldsymbol\phi_k^*\,\mathrm d\boldsymbol x=\delta_{jk},\quad \int_T \psi_j\psi_k^*\,\mathrm dt=\delta_{jk}$$
- **Spatial and temporal eigenproblems** (eq. 2.5–2.8, p. 6):
  $$\int_\Omega C(\boldsymbol x,\boldsymbol x',t=t')\,\boldsymbol\phi_j(\boldsymbol x')\,\mathrm d\boldsymbol x'=\sigma_j^2\boldsymbol\phi_j(\boldsymbol x),\qquad C(\boldsymbol x,\boldsymbol x',t=t')=\int_T \boldsymbol u(\boldsymbol x,t)\boldsymbol u^*(\boldsymbol x',t)\,\mathrm dt$$
  $$\int_T C(\boldsymbol x=\boldsymbol x',t,t')\,\psi_j(t')\,\mathrm dt'=\sigma_j^2\psi_j(t),\qquad C(\boldsymbol x=\boldsymbol x',t,t')=\int_\Omega \boldsymbol u(\boldsymbol x,t)\boldsymbol u^*(\boldsymbol x,t')\,\mathrm d\boldsymbol x$$
  Both are special cases of the space–time tensor C(x, x′, t, t′) = ⟨u(x,t) u\*(x′,t′)⟩ (eq. 2.9).
- **Wavepacket model** (eq. 2.10–2.11, p. 7):
  $$w_j(x,t)=A_j(x,t)\cos(k_jx-\omega_jt)=A_j\,\mathrm{Re}\!\left[e^{i(k_jx-\omega_jt)}\right],\qquad c_j=\omega_j/k_j$$
  The imaginary part can be seen as a quarter-period shift in t or a quarter-wavelength shift in x (eq. 2.13–2.14, p. 7). Written with F = Re of the exponential:
  $$e^{i(k_jx-\omega_jt)}=F(x,t)+iF\!\left(x,\,t+\tfrac{\pi}{2\omega_j}\right)\quad\text{(2.13)}$$
  $$e^{i(k_jx-\omega_jt)}=F(x,t)+iF\!\left(x+\tfrac{\pi}{2k_j},\,t\right)\quad\text{(2.14, as printed)}$$
- **Analytic signal and Hilbert transform** (eq. 2.15–2.19, p. 8):
  $$\tilde s(t)=s(t)+i\,\mathcal H_t[s(t)],\qquad \mathcal H_t[s]=\lim_{e\to0}\int_{|\tau-t|>e}\frac{s(\tau)}{\pi(t-\tau)}\,\mathrm d\tau=\frac{1}{\pi t}*s(t)$$
  $$\mathcal F\{\mathcal H[s]\}(f)=-i\,\mathrm{sign}(f)\,\mathcal F[s](f)\;\Rightarrow\;\tilde s(t)=\mathcal F^{-1}\{[1+\mathrm{sign}(f)]\,\mathcal F[s(t)]\}$$
  Eq. 2.19 is the discrete recipe (zero negative bins, double positive ones). As printed it reads [1 + i sign(f)]; the factor i is inconsistent with the "doubling" described in the text.
- **Instantaneous amplitude, phase and frequency** (eq. 2.20–2.21, p. 8):
  $$\tilde s(t)=|s(t)|\,e^{i\varphi(t)},\qquad f(t)=\frac{1}{2\pi}\frac{\mathrm d\varphi(t)}{\mathrm dt}$$
  Here |s(t)| denotes the envelope |s̃(t)|.
- **Complexified fields** (eq. 2.22–2.25, p. 8–9):
  - in time: $\tilde{\mathbf u}=\mathbf u+i\mathcal H_t[\mathbf u]$, with $\mathcal H_t[\mathbf u]=\lim_{e\to0}\frac1\pi\int_{|\tau-t|>e}\frac{\mathbf u(x,y,z,\tau)}{t-\tau}\mathrm d\tau$;
  - in space: $\tilde{\mathbf u}=\mathbf u+i\mathcal H_x[\mathbf u]$, with $\mathcal H_x[\mathbf u]=\lim_{e\to0}\frac1\pi\int_{|\xi-x|>e}\frac{\mathbf u(\xi,y,z,t)}{x-\xi}\mathrm d\xi$.
- **Claimed equivalence for a wave** (eq. 2.26, p. 9): $e^{i(k_jx-\omega_jt)}=f+i\mathcal H_t[f]=f+i\mathcal H_x[f]$.
- **HPOD** (eq. 2.27–2.29, p. 9):
  $$\tilde{\boldsymbol u}(\boldsymbol x,t)=\sum_j\psi_j(t)\,\sigma_j\,\boldsymbol\phi_j(\boldsymbol x)$$
  $$\int_\Omega\tilde C(\boldsymbol x,\boldsymbol x',t=t')\,\boldsymbol\phi_j(\boldsymbol x')\,\mathrm d\boldsymbol x'=\sigma_j^2\boldsymbol\phi_j(\boldsymbol x),\qquad \tilde C=\int_T\tilde{\boldsymbol u}(\boldsymbol x,t)\,\tilde{\boldsymbol u}^*(\boldsymbol x',t)\,\mathrm dt$$
  The temporal (snapshot) form uses $\tilde C(\boldsymbol x=\boldsymbol x',t,t')=\int_\Omega\tilde{\boldsymbol u}(\boldsymbol x,t)\tilde{\boldsymbol u}^*(\boldsymbol x,t')\mathrm d\boldsymbol x$.
- **The modes are analytic signals** (§2.5, p. 10–11). The temporal correlation of the analytic field is $\tilde C(x,x',t,\tau)=\int(1+\mathrm{sign}\,\omega)\,S(x,x',t,\omega)\,e^{i\omega\tau}\mathrm d\omega$ (eq. 2.30), where S is a time-local cross-spectral density and τ = t − t′. Substituting a single-frequency eigenfunction w = q e^{iω′t} (eq. 2.33) gives:
  $$\omega<0:\;0=\sigma^2\boldsymbol q,\qquad \omega>0:\;S\,\boldsymbol q=\tfrac{\sigma^2}{2}\boldsymbol q\quad\text{(eq. 2.35)}$$
  So HPOD_t temporal modes contain only positive frequencies. The same argument along x (eq. 2.36–2.41, with ξ = x − x′ and wavenumber k) shows HPOD_x spatial modes contain only positive wavenumbers. The proof assumes spectrally pure eigenfunctions (p. 10).
- **Reduction to SPOD** (§2.6, p. 11–13), assuming a flow that is stationary in t and homogeneous in x:
  $$\tilde C(\xi,\tau)=\int(1+\mathrm{sign}\,k)\,S(k,\omega)\,e^{i(k\xi-\omega\tau)}\mathrm dk\quad\text{(2.42)}$$
  Imposing the phase-velocity relation ω = ck gives $e^{ik(\xi-c\tau)}$ (eq. 2.45). Treating w as a solution of the non-dispersive wave equation $\partial_t^2 w-c^2\partial_x^2w=0$ (eq. 2.48–2.51) leads to
  $$S(k,\omega)\,\boldsymbol q(k,\omega)\,e^{ik(x-ct)}=\frac{\sigma^2}{2}\,\boldsymbol q(k,\omega)\,e^{ik(x-ct)}\quad\text{(eq. 2.55)}$$
  This is the SPOD eigenproblem for k > 0 and ω/k = c (p. 13). It requires the transform direction to be finely resolved relative to the wave displacement (p. 13). Without homogeneity or stationarity, HPOD no longer reduces to SPOD, but the two HPOD versions stay equivalent for advecting features (p. 13).

> Equations were retyped from rendered page images (p. 5–13), so the symbols should be right. Two sign and typo issues need checking against the PDF before using these as a recipe:
> - **Signs of the shifts (eq. 2.14 and 2.26).** By my own check, for cos(kx − ωt) with k, ω > 0, $\mathcal H_x$ gives +sin(kx − ωt) but $\mathcal H_t$ gives −sin(kx − ωt). So $f+i\mathcal H_t f=e^{-i(kx-\omega t)}$ while $f+i\mathcal H_x f=e^{+i(kx-\omega t)}$: the two analytic signals are complex conjugates, not equal. The shift in eq. 2.14 should then be x − π/(2k), and eq. 2.26 should not be read literally. This is consistent with the paper's own numerical result that HPOD_x modes are about the complex conjugates of HPOD_t modes (positive frequency with negative k for HPOD_t; positive k with negative frequency for HPOD_x; p. 15, 19, 21–23).
> - **Typos.** Eq. 2.19 prints [1 + i sign(f)]; the doubling recipe implies [1 + sign(f)], as eq. 2.30 uses. Eq. 2.28 prints φ_j\*(x′) inside the integral, unlike eq. 2.5. The text on p. 22–23 also calls waves moving towards +x "negative phase velocities", which is confusing.

## Data tables
Energy of the first three HPOD structures (% of TKE):

| Dataset | Method | Mode 1 | Mode 2 | Mode 3 | Page |
|---|---|---|---|---|---|
| Jet LES (M 0.9) | HPOD_t (15% trim in t and x) | 8.1 | 7.2 | 6.0 | 16 |
| Jet LES (M 0.9) | HPOD_x (15% trim in t and x) | 8.4 | 7.5 | 6.2 | 19 |
| Jet PIV (Re 33,000) | HPOD_x | 8.8 | 6.7 | 5.4 | 24 |

For the cylinder (Fig. 1, p. 15), values read off the plot are about 0.95 for HPOD structure 1, against about 0.50 and 0.46 for POD modes 1 and 2. With the snapshots shuffled, HPOD_t falls back to the POD values while HPOD_x is unchanged.

## Figures worth remembering
- **Fig. 1 (p. 15):** energy fraction against mode number for POD, HPOD_t and HPOD_x (100% and 70% of the sequence), for ordered and shuffled snapshots. It is the clearest demonstration that HPOD_t needs time resolution and HPOD_x does not.
- **Fig. 2–3 (p. 17):** cylinder POD pairs against the Re/Im of the HPOD_t and HPOD_x modes, with temporal phase plots on the unit circle. Fig. 2 (100%) shows edge distortion; Fig. 3 (70%) is clean.
- **Fig. 4–5 (p. 18):** the same for shuffled data. HPOD_t splits into POD-like pairs with a scattered phase plot; HPOD_x is unchanged.
- **Fig. 6–7 (p. 20):** jet LES radial-velocity modes (Re, Im, |φ|) and temporal phase plots for HPOD_t and HPOD_x. The phase plots are not circles, which shows modulation.
- **Fig. 8–9 (p. 21):** spectrograms and peak-frequency histograms of the temporal modes. HPOD_t content is at positive St only and HPOD_x at negative St only. Intermittent bursts are visible.
- **Fig. 10–11 (p. 22):** spectrograms along x of the spatial modes. HPOD_t content is at negative kD and HPOD_x at positive kD, with envelope peaks matching the |φ| maps.
- **Fig. 13–14 (p. 24–25):** PIV space-only HPOD modes, positive-k spectrograms, and randomly filled temporal "cyclograms".
- **Fig. 15 (p. 26):** oscillator model Re[φ_j e^{iφ}] for φ = 0°–315°, showing the PIV wavepackets advecting.

> **Axis values in Fig. 8–11 and 14 are small for jet wavepackets.** Peaks are at roughly St ≈ 0.01–0.04 and |kD| ≈ 0.05–0.2 (read off the plots), which suggests a non-standard normalisation (for example cycles per D rather than rad). As I read the histograms, the claimed rise of peak wavenumber with mode number is not obvious. Check against the PDF before quoting any of these numbers.

## Notation
- HPOD_t: conventional HPOD, with the Hilbert transform in time. HPOD_x: space-only HPOD, with the Hilbert transform along the advection direction x.
- ũ: analytic (complexified) field. $\mathcal H_t$ and $\mathcal H_x$: Hilbert transforms in t and x. $\mathcal F$: Fourier transform.
- φ_j(x): complex spatial mode. ψ_j(t): complex temporal mode. σ_j: singular value; σ_j² is the energy of "structure" j, meaning a (ψ_j, σ_j, φ_j) triplet (p. 6).
- S: cross-spectral density, either time-local S(x, x′, t, ω), space-local S(x, k, t, t′), or S(k, ω) for a stationary, homogeneous field. ξ = x − x′, τ = t − t′, c = ω/k.
- D: diameter (cylinder or nozzle). a: speed of sound. St and kD as plotted in Fig. 8–14.

## Relevance to this project
This is the core methods reference for the HPOD step in CLAUDE.md, and for the **SPOD → reconstruction → HPOD** pipeline.

- **Which variant suits which data:**
  - *Time-resolved schlieren, acoustic arrays, or an SPOD-filtered reconstruction:* use HPOD_t. It gives ψ_j(t) as an analytic signal, so |ψ_j(t)| is the instantaneous amplitude and (1/2π) d arg ψ_j/dt the instantaneous frequency of each structure (eq. 2.20–2.21, p. 8, 10). This captures exactly the intermittency and frequency drift that SPOD averages out (p. 3, 19, 27).
  - *Non-time-resolved PIV:* HPOD_x gives a complex quadrature mode directly, with no pairing (p. 15, 24). It cannot give dynamics: ψ_j is random (p. 24, 28). Amplitude or frequency over time would need a link to time-resolved sensors, for example extended-POD-type estimation with a microphone; the authors suggest this extension (p. 28) but do not demonstrate it.
  - *Applying HPOD_t to non-time-resolved data* fails quietly by reverting towards POD (p. 15–16, 27). Check that ψ_j traces a sensible phase portrait before trusting it.
- **Pipeline practicalities:**
  - Build the analytic signal by FFT, zeroing negative bins and doubling positive ones (p. 8), then **discard about 15% at each end** of the transformed direction (p. 16). With long time-resolved records the trim is cheap.
  - With HPOD_x on a PIV field of view, the trim costs about 30% of the streamwise extent. The paper doesn't say whether the PIV case was trimmed (p. 23–24).
  - Since an SPOD reconstruction is already band-limited in time, HPOD_t on it should give clean instantaneous frequencies. The edge-effect trim still applies to the reconstructed record. *(My inference, not tested in the paper.)*
  - The analytic signal could also be built directly by keeping only the positive-frequency SPOD coefficients in the reconstruction. *(My inference, not tested in the paper.)*
  - The paper itself inspects modulation with STFT spectrograms of ψ_j and φ_j (rectangular windows, 75% overlap) and peak-frequency histograms (p. 19). That is a ready template for presenting mode-switching or intermittency in screech and impingement tones.
- **Caution for resonance and feedback flows** *(my inference from the transform properties stated on p. 8, 10–11, 13, 26; not tested in the paper):*
  - HPOD_x along +x keeps only positive wavenumbers. In screeching or impinging jets, upstream-travelling waves (the guided jet mode `k_t-`) and standing-wave interference ([edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md)) would therefore be suppressed or folded in. The KH wavepacket and the `k_t+` mode would both be kept.
  - The authors note that the two variants diverge for non-advective phenomena, and that the transform direction can be chosen to target a particular wave (p. 13, 26). So HPOD_x along −x could isolate upstream waves, and HPOD_t (which keeps both signs of k) is the safer choice when the feedback loop itself is of interest.
  - Shock cells are a stationary, spatially periodic component and must be removed with the mean before an x-direction Hilbert transform.
- **Comparison with the POD-pair method:**
  - The cylinder case confirms that the complex POD-pair construction Φ = φ₁ + iφ₂, used for screech PIV in [edgington-mitchell-2020-waves-in-screeching-jets.md](edgington-mitchell-2020-waves-in-screeching-jets.md), is equivalent to HPOD for clean periodic flows (p. 15).
  - For broadband or modulated flows, pairing becomes unreliable and HPOD does the pairing automatically (p. 2, 27).
  - For a strongly tonal screech mode, both routes should agree. HPOD_x avoids having to choose the pair by hand.
- **Modelling and simulation side:**
  - The theory shows that HPOD reduces to SPOD, with eigenvalue σ²/2 for k > 0, under stationarity, homogeneity and a single phase velocity (eq. 2.55). The derivation assumes a **non-dispersive** wave (eq. 2.48) and spectrally pure eigenfunctions (p. 10). Dispersive or multi-speed wave systems, such as KH plus guided or trapped modes, sit outside the proof.
  - The jet LES comes from the Towne et al. database ([towne-2022-database-reduced-complexity-modeling.md](towne-2022-database-reduced-complexity-modeling.md)), which would be a natural benchmark for testing an HPOD implementation before using it on lab data.
  - The paper does not compare HPOD modes with linear stability or resolvent predictions. That comparison is open and would be valuable for wavepacket studies.
- **Related notes:**
  - [davey-2025-hpod-sphere-wake.md](davey-2025-hpod-sphere-wake.md): an HPOD application to a bluff-body wake from Monash LTRAC.
  - [yeung-2024-adaptive-spod-broadband-tonal.md](yeung-2024-adaptive-spod-broadband-tonal.md) and [von-saldern-2026-band-ensemble-spod.md](von-saldern-2026-band-ensemble-spod.md): SPOD variants that handle broadband or time-varying content from the frequency-domain side, an alternative to HPOD's time-domain route.
- **Facility:** the PIV comes from the Raiola & Ragni (2019) experiment; the facility is not named. It is not Shock Lab group work.
- **Follow-up candidates for `/add-paper`:**
  - Kriegseis, Kinzel & Nobach (2021), the original HPOD paper in fluids.
  - Ek et al. (2022), permuted POD.
  - Raiola & Ragni (2019), dynamic behaviour of jet wavepackets.
  - Towne, Schmidt & Colonius (2018), SPOD.
