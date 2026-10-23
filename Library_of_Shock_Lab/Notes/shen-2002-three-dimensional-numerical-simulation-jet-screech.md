---
key: "shen-2002-three-dimensional-numerical-simulation-jet-screech"
title: "Three-Dimensional Numerical Simulation of the Jet Screech Phenomenon"
authors: ["Shen, Hao", "Tam, Christopher K. W."]
year: 2002
type: "article"
venue: "AIAA J. 40(1), 33–41"
bib: {"journal": "AIAA Journal", "volume": "40", "number": "1", "pages": "33--41"}
doi: "10.2514/2.1638"
arxiv: ""
pdf: "screech-staging-and-mode-switching/Shen-Tam_2002_Three-Dimensional-Numerical-Simulation-Of-The-Jet-Screech-Phenomenon.pdf"
version: "published"
unverified: []
group: false
facility: "Florida State University CAA code (multiple-size-mesh DRP, unsteady RANS k–ε; SGI Origin 2000/2200)"
data: ["RANS", "CAA"]
methods: ["numerics", "PSD", "wavenumber-filtering", "resonance-model", "vortex-sheet"]
flow: ["round-jet", "supersonic", "underexpanded"]
phenomena: ["screech", "staging", "multimodal", "mode-switching", "guided-jet-mode", "shock-cells", "KH-wavepackets", "toroidal", "flapping", "helical", "directivity"]
params: {"M_j": "1.1, 1.2, 1.3, 1.4, 1.5 (one run each)", "M_d": "1 (convergent nozzle, sonic exit)", "NPR": "≈2.14–3.67 (my isentropic conversion; not stated)", "Re": "a∞D/ν = 5.9×10⁵ (ν/a∞D = 1.7×10⁻⁶)", "TR": "not stated (presumably unheated, as in Ref. 1)", "D": "not stated; 25.4 mm implied by the kHz axes with a∞ ≈ 340 m/s (my inference)"}
topics: ["screech-staging-and-mode-switching", "screech-frequency-and-global-modes", "simulation-methods", "screech"]
related: ["tam-1986-bbsan-screech-relationship", "tam-1982-shock-associated-noise-cd-nozzles", "tam-1989-three-families-instability-waves-high-speed-jets", "tam-1990-theoretical-model-discrete-tone-impinging-jets", "tam-1995-supersonic-jet-noise", "ponton-1992-nozzle-exit-lip-thickness-plume-resonance", "powell-1992-oscillation-modes-choked-circular-jets", "raman-1998-supersonic-jet-screech-review", "gojon-2018-oscillation-modes-screeching-jets", "edgington-mitchell-2018-upstream-acoustic-modes-screech-closure", "mancinelli-2019-screech-prediction-upstream-modes", "mancinelli-2021-complex-valued-resonance-model-screech", "nogueira-2021-closure-mechanism-a1-a2-screech", "edgington-mitchell-2022-unifying-theory-jet-screech", "mercier-2017-screech-feedback-loop-underexpanded-round-jets", "panda-1999-experimental-investigation-screech-noise-generation", "mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech", "bell-2021-intermittent-modal-coupling-screeching-twin-jets", "weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet", "huerre-1990-local-global-instabilities-spatially-developing-flows", "witherden-2014-pyfr-flux-reconstruction-framework"]
cites: []
summary: "URANS k–ε DRP simulation, M_j 1.1–1.5: A1, A2, B, C tones and levels; claims two tones coexist, not switch; free-sound closure for A1/B, guided jet mode for A2/C"
---
# Three-Dimensional Numerical Simulation of the Jet Screech Phenomenon

- **Authors:** Hao Shen (postdoctoral research associate) and Christopher K. W. Tam (Robert O. Lawton Distinguished Professor), Department of Mathematics, Florida State University, Tallahassee (p. 33). Not Shock Lab group work.
- **Source:** AIAA Journal 40(1), January 2002, 33–41, doi:10.2514/2.1638 (DOI from the download stamp on every page). Presented as AIAA Paper 2001-0820 at the 39th Aerospace Sciences Meeting, Reno, 8–11 January 2001. Received 12 October 2000, revised 25 July 2001, accepted 30 July 2001; associate editor P. J. Morris (p. 33, 41). Funded by NASA Glenn grant NAG 3-2102; computing time from AFRL and the FSU SGI Origin 2200 (p. 40).
- **PDF:** `Library_of_Shock_Lab/Paper_PDFs/screech-staging-and-mode-switching/Shen-Tam_2002_Three-Dimensional-Numerical-Simulation-Of-The-Jet-Screech-Phenomenon.pdf` (index key `screech-staging-and-mode-switching/Shen-Tam_2002_Three-Dimensional-Numerical-Simulation-Of-The-Jet-Screech-Phenomenon.pdf`, 9 pp., publisher's version with a Monash download stamp). Page refs are journal pages; **PDF page = journal page − 32**. The text layer garbles eqs. (1)–(4), the appendix equations and Table 1, and drops the "fi"/"fl" ligatures. All of these and every figure were checked on rendered pages (300 dpi crops of Figs 1–7 and 9).
- **Tags:** jet screech, numerical simulation, computational aeroacoustics (CAA), dispersion-relation-preserving (DRP) scheme, multiple-size-mesh multiple-time-step, unsteady RANS, k–ε, azimuthal Fourier expansion, artificial selective damping, shock capturing, radiation and outflow boundary conditions, jet-axis boundary condition (analytic continuation), A1/A2/B/C modes, staging, coexistence versus switching of two tones, tone intensity prediction, weakest-link feedback, Tam & Tanna interaction, upstream acoustic (guided) jet mode, vortex-sheet model, spatial wavenumber spectrum of instantaneous pressure

## Summary
Shen and Tam extend their axisymmetric screech simulations to three dimensions. The solver integrates the unsteady Reynolds-averaged Navier–Stokes equations with an axisymmetric k–ε model, expands the flow in a few azimuthal Fourier modes, and marches each mode in the x–r plane with Tam & Kurbatskii's multiple-size-mesh, multiple-time-step DRP scheme (p. 33–35). Starting from rest, jets from a convergent nozzle at M_j = 1.1–1.5 lock on to screech by themselves. The simulations reproduce the axisymmetric A1 and A2 tones below M_j 1.3, flapping/helical B and C above it, and two-tone states at M_j 1.2 (A1 + A2) and 1.5 (B + C), with tone wavelengths and levels near Ponton & Seiner's data (p. 35–37). From spatial spectra of single instantaneous pressure snapshots at M_j 1.5, which show two instability-wave wavenumbers at once, the authors conclude that two tones in a spectrum always coexist rather than alternate (p. 38–39). Testing the weakest-link condition K − k = 2πf/a∞ with the simulated shock-cell and instability wavenumbers, they find A1 and B satisfy it within 4 % while A2 and C miss by about 12 %. They therefore propose a second loop for A2 and C, closed by the upstream acoustic mode of the jet of Tam & Ahuja (1990), whose lowest-frequency (0, 2) and (1, 1) vortex-sheet modes match the A2 and C wavelengths (p. 38–39). The two-closure split has since been rejected (A1 and A2 share the guided jet mode), and the coexistence claim has been contradicted at the A1/A2 staging point by experiments. The paper's lasting contributions are the first prediction of all four tone levels, the guided-mode idea for screech, and numbers that, reread, point to A2 and C closing on a second shock wavenumber (Relevance).

## Key findings
- **All four classical modes reproduced** (p. 33, 35–36; Figs 1–6).
  - M_j 1.1: a single A1 tone at λ/D = 1.66, 148 dB, plus its harmonic (Fig. 1, p. 35).
  - M_j 1.2: A1 dominant at λ/D = 2.17 (146 dB), A2 at 1.67 (133 dB), plus the A1 harmonic (Fig. 2, p. 35).
  - M_j 1.3: a single B tone at λ/D = 2.78, 155 dB (Fig. 3, p. 35). Its azimuthal directivity on the plane x = −5D is a dipole, "characteristic of a flapping screech mode" (Fig. 4, p. 35–36).
  - M_j 1.5: B dominant at λ/D = 3.28 (153 dB), C at 2.77 (142 dB) (Fig. 5, p. 36).
  - λ is the acoustic wavelength a∞/f, all levels at x = 0, y = 0.642D (p. 35–36). Below M_j 1.3 the jet screeches axisymmetrically, locking on A1, A2 or both; from 1.3 the mode is flapping/helical (p. 33).
- **Comparison with Ponton & Seiner** (Figs 6–7, p. 36–37).
  - Wavelengths: "good agreement" for A1/A2 at M_j < 1.2 and for B/C above, "judged taking into account the variability of experimentally measured screech data" (p. 36).
  - Levels: in two-tone cases the dominant tone is "around 18 dB" higher, and both dominant and subdominant levels agree "excellent[ly]" with experiment (p. 36). The authors call this the first numerical prediction of all four tone frequencies and intensities (p. 36), at a time when no tone-intensity formula, even empirical, existed (p. 33, 36).
  - **My reading of Figs 6–7 is less favourable on mode labels** (table below). The computed level pairs match the experimental pairs, but the mode that dominates differs at M_j 1.2 (experiment: B with weak A2; simulation: A1 with A2), 1.4 and 1.5 (experiment: C dominant, B weak or absent; simulation: B dominant, C weak). The simulated staging is therefore shifted: A → B lies between M_j 1.2 and 1.3 (experiment ≈ 1.18), and C never becomes dominant up to 1.5 (experiment from ≈ 1.39–1.44). Computed dominant-to-subdominant gaps are 11–16 dB rather than 18 (my reading). The authors attribute staging differences to facility sensitivity (p. 36).
- **The coexistence claim** (p. 33, 38–39). Applied to instantaneous pressure along lines at M_j 1.5, a spatial Fourier cosine transform gives a single shock-cell peak at κD = 3.907 on the axis (Fig. 9a). At r = 0.3D and 0.5D, in the plane of maximum flapping, it also gives two instability-wave peaks, attributed to B and C (Figs 9b–c, p. 37–38). Because both appear in one snapshot, the authors call this "irrefutable evidence" that the two tones "coexist simultaneously" (p. 38). They state in the conclusions that this "repudiates" the idea that two tones in a long-time spectrum come from continuous switching between modes (p. 39).
  - The analysis is shown only for B + C at M_j 1.5. The A1 + A2 case (M_j 1.2) rests on the SPL spectrum alone (Fig. 2).
  - Walker, Gordeyev & Thomas (1997) found three coexisting tones in an AR 7 rectangular jet with wavelets. The authors call their own finding new for round jets, because rectangular jets have many shock-cell Fourier modes and up to six tones (p. 38, citing Tam, Shen & Raman 1997).
  - The paper uses no time–frequency analysis (no spectrogram, wavelet or envelope) of the simulated signals. Record length, sampling rate and windowing are not stated (see Setup).
- **Wavenumber measurements** (Fig. 9, Table 1, p. 37–39).
  - The shock-cell wavenumber "does not seem to change with time" over the screech cycle. The instability wavenumbers "do change somewhat", so time-averaged values from repeated snapshots are used (p. 37–38). The number of snapshots is not stated.
  - Peaks read from Fig. 9 (my reading): r = 0.3D gives κD ≈ 3.91 (shock, PSD ≈ 9.3), 1.88 (≈ 3.1), 2.22 (≈ 2.4) and a broad ≈ 7.9 (≈ 0.75, about 2K). r = 0.5D gives 1.90 (≈ 1.4), 2.22 (≈ 1.6) and 3.91 (≈ 0.5). At r = 0.5D the C-attributed peak is the larger, although the C tone is 11 dB weaker; the paper does not comment.
- **Weakest-link test** (eqs. 5–7, Table 1, p. 38–39). With θ = π, the Tam & Tanna relation plus u_c = 2πf/k gives K − k = 2πf/a∞ (printed with a sign typo; see Key equations). The residual α = KD − kD − 2πfD/a∞ is |α|/KD = 0.035–0.037 for A1/B (M_j 1.2–1.5). For the rows labelled A2/C it is 0.128–0.135 (M_j 1.1, 1.2, 1.5): "a consistent error of about 12%" (p. 39).
  - My checks of Table 1 (details under Data tables):
    - The sign of α flips within the A2/C group (+1.449, −0.970, −0.501), so only the magnitude is consistent.
    - The M_j 1.1 tone, labelled A1 in Figs 1, 6 and 7, sits in the "A2 and C" half of the table.
    - The M_j 1.2 A1 row does not add up (0.314 computed against 0.282 printed).
    - The table's frequencies at M_j 1.2 and 1.5 imply wavelengths 2–9 % off the text values.
- **Two feedback loops proposed** (p. 38–39).
  - Loop 1 (A1, B) is Tam's weakest-link loop. The instability wave meets the shock cells around the fourth or fifth cell (p. 37–38), and the Tam & Tanna scattering radiates freely upstream outside the jet.
  - Loop 2 (A2, C) closes through the upstream "acoustic mode of the jet flow" of Tam & Ahuja (1990), first found by Tam & Hu (1989). It is excited by the same instability-wave–shock interaction, and in a supersonic jet it propagates upstream outside the jet, "guided by the jet" (p. 39). Its frequency band is very narrow.
  - Vortex-sheet frequencies of the mode travelling upstream at sonic speed, computed on the fully expanded diameter D_j, are the lowest-frequency (0, 2) mode (axisymmetric) and (1, 1) mode (flapping/helical). They give the solid and dashed lines in Fig. 6, which follow the A2 and C data (p. 39). "Thus, there are two mechanisms to complete the feedback. This is the reason the coexistence of two screech tones is observed" (p. 39).
- **Numerical-method contributions** (p. 34–35, 39–40).
  - A high-order jet-axis treatment: parity rules for each Fourier coefficient (eq. A12) fill ghost points at r < 0, and r = 0 values come from high-order symmetric interpolation. It replaces the azimuthal-average axis condition of Shih et al. (1995) and Morris et al. (1997, 2000), which is only O(Δr) accurate (p. 35).
  - Radiation boundary conditions with entrainment flow (Tam 1998), Fourier-split so that only n = 0 carries the entrainment terms (p. 35).
  - The authors expect a "slight extension" to predict broadband shock-associated noise without empirical constants (p. 39).

## Setup / method
**Model** (p. 33–34).
- Unsteady RANS: the compressible Navier–Stokes equations in cylindrical (x, r, φ) coordinates, with the turbulent stresses from a k–ε model whose constants come from Thies & Tam (1996): c_μ = 0.0874, c_ε1 = 1.40, c_ε2 = 2.02, P_r = 0.422, σ_k = 0.324, σ_ε = 0.377 (eq. 2). The k–ε model represents only the fine-scale turbulence. The authors justify this by the scale separation between the screech instability wave and the fine scales, and use it to get the mean-flow spreading right (p. 33–34).
- Molecular viscosity ν/(a∞D) = 1.7 × 10⁻⁶, i.e. a∞D/ν ≈ 5.9 × 10⁵ (my arithmetic). k₀ = 10⁻⁶ and ε₀ = 10⁻⁴ prevent division by zero.
- Scales: length D (nozzle exit diameter), velocity a∞, time D/a∞, density ρ∞, pressure ρ∞a∞², temperature T∞. The printed scales for ε and ν_t are a∞²/D and a∞D; dimensionally ε should scale as a∞³/D (my check; verify).
- **Azimuthal Fourier expansion** (eq. 3, p. 34): every variable is ρ₀ + Σ_{n=1}^{N}[ρ_n cos nφ + ρ_{−n} sin nφ]. Substituting into eq. (1) and equating cos nφ and sin nφ terms gives coupled equations for the coefficients, so the 3-D problem becomes a set of 2-D problems in the x–r plane. k and ε are kept axisymmetric (their n ≠ 0 parts are discarded), so the eddy viscosity has no azimuthal structure (p. 34).
- **Only "the lowest five modes"** of the expansion are retained in all runs, justified by screech being either axisymmetric or flapping/helical (p. 35). Whether this means n = 0–4 or the five components n = 0, cos/sin 1, cos/sin 2 is not stated.
- Whether the mode-coupling (nonlinear) terms are kept in full is implied by "straightforward substitution" but not shown. The outflow condition assumes inter-mode interaction is unimportant at the far-downstream boundary (p. 35).

**Grid and scheme** (p. 34).
- Domain 35D × 17D (presumably x × r), the same as Refs. 1–2. Four subdomains with cascading meshes: Δx = Δr = D/64 in the subdomain just downstream of the exit (thin shear layer, shock cells), doubling in each subdomain to D/8 outside the jet. Subdomain boundaries are not given.
- Spatial and temporal discretisation by the multiple-size-mesh, multiple-time-step DRP scheme (Tam & Kurbatskii), an extension of the DRP scheme of Tam & Webb (1993), with 7-point stencils everywhere. Each subdomain advances with its own time step. The authors stress that a single global time step set by the finest mesh would waste effort on the coarse regions (p. 34).
- **The time step values, CFL number and time-marching scheme are not stated.**
- **Artificial selective damping** (Tam, Webb & Dong 1993) is added to each Fourier mode's equations, both to damp spurious short waves near boundaries and discontinuities and to capture shocks. The variable artificial damping of Tam & Shen (1993) uses an inverse stencil Reynolds number of 0.35 (p. 34).

**Boundary and initial conditions** (p. 34–35).
- *Radiation:* eq. (4), an asymptotic outgoing-spherical-wave condition centred on the nozzle exit, which includes the entrainment flow (ρ_e, u_e, v_e, p_e) from the method of Tam (1998). The n = 0 mode satisfies eq. (4) by itself; all n ≥ 1 modes satisfy it with the entrainment terms set to zero.
- *Outflow:* the nonlinearised outflow conditions of Ref. 1 (Shen & Tam 1998), Fourier-split. The convection velocity is that of the n = 0 mode alone, because the boundary is "deliberately placed far downstream".
- *Inflow and walls:* "identical to those in Ref. 1". A circular convergent nozzle with sonic exit; the exit (inflow) condition is axisymmetric even for flapping cases. **Nozzle length, lip thickness, exit boundary layer and jet temperature are not given here.**
- *Axis:* analytic continuation (Appendix). The scalar- and vector-potential solutions of the linearised equations bounded at r = 0 are Bessel functions J_n, and J_n(−ξr) = (−1)ⁿJ_n(ξr) gives the parity rules (A12). Variables at r = 0 are not computed from the finite-difference equations, because v₁/r and w₁/r cannot be evaluated there. After each time step, ghost values at r < 0 come from (A12) and r = 0 values from high-order symmetric interpolation (Tam & Kurbatskii 2000) (p. 40).
- *Initial:* zero initial conditions. The solution "locks itself onto the screech feedback mode without external interference" and runs "until a periodic state is attained at a number of monitoring stations" (p. 35).
  - Each M_j is a separate cold start. There is no continuation in M_j and no up/down sweep, so hysteresis cannot be tested.
  - Two-tone states are quasi-periodic rather than periodic; the convergence test for them is not described.
- *Hardware:* SGI Origin 2200 and 2000, eight processors (p. 35). Wall-clock time is not given.

**Conditions.** M_j = 1.1, 1.2, 1.3, 1.4 and 1.5 (Figs 1–7; Table 1). The isentropic NPRs are about 2.14, 2.43, 2.77, 3.18 and 3.67 (my conversion). ΔM_j = 0.1 is coarse next to the experimental A1/A2 switching window of ΔM_j ≈ 0.01–0.015 ([Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md), p. 6–7). No run is at the A1 → A2 staging point (M_j ≈ 1.12).

**Diagnostics and spectral parameters.**
- *Acoustic spectra* (Figs 1–3, 5): SPL at x = 0, y = 0.642D (the exit plane), labelled "dB, 134 Hz bandwidth", plotted in kHz. **The physical D, a∞, record length, sampling rate, window and number of averages are not stated.**
  - The printed λ/D values reproduce the kHz peaks with D = 25.4 mm and a∞ = 340 m/s (e.g. λ/D 1.66 → 8.06 kHz; Fig. 1 peak ≈ 8.05 kHz). That is Ponton & Seiner's 1-inch nozzle ([Ponton 1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md), p. 532) (my inference).
  - On that scale D/a∞ = 74.7 µs, and **134 Hz is exactly Δ(fD/a∞) = 0.0100**. The spectral block is then T ≈ 1/Δf ≈ 100 D/a∞ (7.5 ms; ≈ 150 D/a∞ if 134 Hz is the effective noise bandwidth of a Hann window). That is only **30–60 tone cycles** (B at M_j 1.5 to A1 at 1.1) (my inference).
  - Fig. 3 has regularly spaced ripples (≈ 0.25–0.3 kHz apart) on its floor that look like window side-lobes of a short block (my reading).
  - The probe radius 0.642D is the radius of Ponton & Seiner's lip-face transducers, which they had on their t/D 0.2 and 0.625 lips ([Ponton 1992](ponton-1992-nozzle-exit-lip-thickness-plume-resonance.md), p. 533–534, 539). The experimental comparison is therefore probably with lip-face pressure, i.e. a thick lip, but the paper does not say which lip or which sensor (my inference).
- *Directivity* (Fig. 4): SPL around the jet on the plane x = −5D (upstream of the exit) at M_j 1.3. A two-lobed pattern with the lobes peaking near 110–115 dB and nulls below 90 dB (my reading); the lobe axis is inclined about 60–70° to the plot's horizontal. With an axisymmetric inflow, the flapping plane must be picked by the numerics (my inference).
- *Spatial wavenumber spectra* (Figs 8–9, p. 37–38):
  - Instantaneous pressure p/p_s along r = 0 (t = 0.1T), r = 0.3D (t = 0.35T) and r = 0.5D (t = 0.25T), the last two in the plane of maximum flapping, at M_j 1.5 (T = screech period).
  - A Fourier cosine transform uses "all mesh points" along each line. The plotted range is x/D 0–20; the line length actually used, the treatment of the cascading mesh (non-uniform spacing) and any window are not stated.
  - Peak widths in Fig. 9 suggest a wavenumber resolution of order 0.1–0.3/D (my reading). A cosine transform cannot distinguish +κ from −κ, so downstream and upstream waves fall in the same bin.
  - Snapshot-based, so in principle this needs no time resolution; time averages come from repeating it over the cycle.
- *Feedback test* (Table 1): K from the shock-cell peak, k from the instability-wave peak, f from the tone. The radius and snapshots used for the M_j 1.1–1.4 rows are not given.
- *Vortex-sheet model:* lowest frequency of the upstream (0, 2) and (1, 1) modes, from Tam & Ahuja (1990), on a sheet of diameter D_j (D_j/D from Tam, Shen & Raman 1997) (p. 39). The jet temperature ratio used in the sheet is not stated.

## Key equations
All checked against the rendered pages.

- **Governing equations** (eq. 1, p. 34), nondimensional. Continuity: $\frac{\partial\rho}{\partial t}+\frac{\partial\rho u}{\partial x}+\frac{\partial\rho v}{\partial r}+\frac{\rho v}{r}+\frac1r\frac{\partial\rho w}{\partial\phi}=0$. The axial momentum equation is representative:
  $\frac{\partial u}{\partial t}+u\frac{\partial u}{\partial x}+v\frac{\partial u}{\partial r}+\frac wr\frac{\partial u}{\partial\phi}+\frac1\rho\frac{\partial p}{\partial x}=-\frac1\rho\left[\frac{\partial(\rho\tau_{xx})}{\partial x}+\frac{\partial(\rho\tau_{rx})}{\partial r}+\frac1r\frac{\partial(\rho\tau_{x\phi})}{\partial\phi}+\frac{\rho\tau_{rx}}{r}\right]$.
  - The radial and azimuthal momentum equations carry the usual −w²/r and vw/r terms.
  - The temperature equation has a source γ(γ−1)ε and turbulent conduction with P_r = 0.422.
  - State: γp = ρT.
- **k–ε closure** (eq. 1, p. 34):
  - $\frac{\partial k}{\partial t}+u\frac{\partial k}{\partial x}+v\frac{\partial k}{\partial r}=-\Omega-\varepsilon+\frac{1}{\sigma_k\rho}\left[\frac{\partial}{\partial x}\left(\rho\nu_t\frac{\partial k}{\partial x}\right)+\frac{\partial}{\partial r}\left(\rho\nu_t\frac{\partial k}{\partial r}\right)+\frac{\rho\nu_t}{r}\frac{\partial k}{\partial r}\right]$
  - $\frac{\partial\varepsilon}{\partial t}+u\frac{\partial\varepsilon}{\partial x}+v\frac{\partial\varepsilon}{\partial r}=-c_{\varepsilon1}\frac{\varepsilon}{k+k_0}\Omega-c_{\varepsilon2}\frac{\varepsilon^2}{k+k_0}+\frac{1}{\sigma_\varepsilon\rho}[\cdots]$, with the same diffusion form as the k equation.
  - $\Omega=\tau_{ij}\,\partial u_i/\partial x_j$, $\tau_{ij}=\tfrac13 k\delta_{ij}-\nu_t\left(\frac{\partial u_i}{\partial x_j}+\frac{\partial u_j}{\partial x_i}-\frac23\frac{\partial u_k}{\partial x_k}\delta_{ij}\right)$, $\nu_t=c_\mu\frac{k^2}{\varepsilon+\varepsilon_0}+\frac{\nu}{a_\infty D}$.
  > The isotropic part is printed as ⅓kδ_ij, not the usual ⅔kδ_ij; it may follow Thies & Tam's definition of k. Verify against Thies & Tam (1996) before reusing.
- **Model constants** (eq. 2, p. 34): c_μ = 0.0874, c_ε1 = 1.40, c_ε2 = 2.02, P_r = 0.422, σ_k = 0.324, σ_ε = 0.377, ν/(a∞D) = 1.7 × 10⁻⁶.
- **Azimuthal expansion** (eq. 3, p. 34): $[\rho,u,v,w,T,p]^T=[\rho_0,\dots,p_0]^T+\sum_{n=1}^{N}\left([\rho_n,\dots,p_n]^T\cos n\phi+[\rho_{-n},\dots,p_{-n}]^T\sin n\phi\right)$.
- **Radiation boundary condition with entrainment** (eq. 4, p. 35):
  $\frac{1}{V(\Theta)}\frac{\partial}{\partial t}[\rho,u,v,w,p]^T+\left(\frac{\partial}{\partial R}+\frac1R\right)[\rho-\rho_e,\,u-u_e,\,v-v_e,\,w,\,p-p_e]^T=0$,
  $V(\Theta)=u_e\cos\Theta+v_e\sin\Theta+\left[a_e^2-(v_e\cos\Theta-u_e\sin\Theta)^2\right]^{1/2}$.
  R = (x² + r²)^½ and Θ are spherical coordinates centred at the nozzle exit, with the polar axis along x.
- **Tam & Tanna direction relation** (eq. 5, p. 38): $f=\dfrac{K u_c}{2\pi\,(1-u_c\cos\theta/a_\infty)}$, with θ measured from the jet flow direction, K the shock-cell wavenumber and u_c the instability-wave phase velocity.
- **Phase velocity** (eq. 6, p. 39): $u_c=2\pi f/k$.
- **Weakest-link feedback condition** (eq. 7, p. 39), printed as $KD-kD+2\pi(fD/a_\infty)=0$.
  > Setting θ = π in eq. 5 and using eq. 6 gives 2πf(1 + u_c/a∞) = Ku_c, i.e. **K − k − 2πf/a∞ = 0**. The printed "+" is a sign typo; it corresponds to θ = 0. Table 1's footnote uses the correct sign, α = KD − kD − 2πf/a∞ (with D missing from the last term), and its α values follow that definition (my check).
- **Appendix** (p. 39–40).
  - Linearised equations about a uniform core flow (A1–A4), with turbulent viscosity ν_t and conductivity k_t.
  - Velocity split V = ∇Φ + ∇ × A (A5). The scalar-potential solutions (A6) are J_n(λ±r), where λ± is the root of a quartic dispersion relation. The two vector-potential ("viscous") sets, A = ψe_x (A7, A8) and A = χe_r − iχe_φ (A9, A10), give J_n and J_{n+1} with the argument i[k² − i(ω − ūk)/ν_t]^½ r.
  - Continuation: J_n(−ξr) = (−1)ⁿJ_n(ξr) (A11), which gives (A12): ρ_n, p_n, T_n, u_n(−r) = (−1)ⁿ(·)(r) and v_n, w_n(−r) = (−1)ⁿ⁺¹(·)(r). The first line of (A12) prints "T" for t.

## Data tables
**Simulated tones** (text p. 35–36; Figs 1–7; St_a = fD/a∞ = D/λ is my conversion):

| M_j | Mode | λ_s/D (text) | St_a = D/λ_s | SPL at (0, 0.642D) | Table 1 λ_s/D implied by 2πfD/a∞ | Source |
|---|---|---|---|---|---|---|
| 1.1 | A1 (single) | 1.66 | 0.602 | 148 dB | 1.660 (listed under A2/C) | Fig. 1, p. 35 |
| 1.2 | A1 (dominant) | 2.17 | 0.461 | 146 dB | 1.998 | Fig. 2, p. 35 |
| 1.2 | A2 | 1.67 | 0.599 | 133 dB | 1.712 | Fig. 2, p. 35 |
| 1.3 | B (single, flapping) | 2.78 | 0.360 | 155 dB | 2.780 | Figs 3–4, p. 35–36 |
| 1.4 | B (dominant) | ≈ 3.15 (Fig. 6, read) | ≈ 0.317 | ≈ 153.7 dB (Fig. 7, read) | 3.170 | Figs 6–7 |
| 1.4 | C | ≈ 2.43 (Fig. 6, read) | ≈ 0.41 | ≈ 138 dB (Fig. 7, read) | — | Figs 6–7 |
| 1.5 | B (dominant) | 3.28 | 0.305 | 153 dB | 3.347 | Fig. 5, p. 36 |
| 1.5 | C | 2.77 | 0.361 | 142 dB | 2.898 | Fig. 5, p. 36 |

> Figure peaks read at 300 dpi: Fig. 1 ≈ 8.05 kHz; Fig. 2 ≈ 6.15 and 8.0 kHz; Fig. 3 ≈ 4.75 kHz; Fig. 5 ≈ 4.05 and 4.75 kHz. They agree with the text λ/D (with D = 25.4 mm, a∞ = 340 m/s) to about 1 %, and not with the Table 1 values at M_j 1.2 and 1.5. Verify which set is the tone.

**Table 1 rebuilt** (p. 39), with my derived columns (L_s = 2π/K, λ_h = 2π/k, u_c/a∞ = 2πf/(ak), u_c/U_j assuming a cold jet T₀ = T∞, implied upstream phase speed c_up = 2πf/(K − k)):

| Group | M_j | KD | kD | 2πfD/a∞ | α printed | α recomputed | \|α\|/KD | L_s/D | λ_h/D | u_c/a∞ | u_c/U_j (cold) | c_up/a∞ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| A1, B | 1.2 | 7.535 | 4.076 | 3.145 | 0.282 | **0.314** | 0.0374 | 0.834 | 1.542 | 0.772 | 0.730 | 0.909 |
| A1, B | 1.3 | 5.782 | 3.310 | 2.260 | 0.212 | 0.212 | 0.0367 | 1.087 | 1.898 | 0.683 | 0.608 | 0.914 |
| A1, B | 1.4 | 4.653 | 2.500 | 1.982 | 0.171 | 0.171 | 0.0368 | 1.350 | 2.513 | 0.793 | 0.668 | 0.921 |
| A1, B | 1.5 | 3.907 | 1.894 | 1.877 | 0.136 | 0.136 | 0.0348 | 1.608 | 3.317 | 0.991 | 0.796 | 0.932 |
| A2, C | 1.1 | 10.73 | 5.498 | 3.785 | 1.449 | 1.447 | 0.1350 | 0.586 | 1.143 | 0.688 | 0.697 | 0.723 |
| A2, C | 1.2 | 7.535 | 4.835 | 3.670 | −0.970 | −0.970 | 0.1287 | 0.834 | 1.300 | 0.759 | 0.718 | **1.359** |
| A2, C | 1.5 | 3.907 | 2.240 | 2.168 | −0.501 | −0.501 | 0.1282 | 1.608 | 2.805 | 0.968 | 0.777 | **1.301** |

> The M_j 1.2 A1 row's printed α (0.282) and |α|/KD (0.0374) are consistent with each other but not with KD − kD − 2πfD/a∞ = 0.314 (4.2 %). One input is probably misprinted. If 2πfD/a∞ is taken from the text's λ/D = 2.17 (2.895), α = 0.564 (7.5 %), and the "within 4 %" claim for A1 fails at M_j 1.2.
> The shock spacings are 2–5 % below Pack's 1.306(M_j² − 1)^½D_j (0.60, 0.88, 1.12, 1.35, 1.58D for M_j 1.1–1.5; my arithmetic), the usual direction for real jets.
> u_c/U_j assumes T₀ = T∞; the paper gives no temperature ratio. At M_j 1.5, u_c ≈ a∞ ≈ 0.8U_j, high for screech.

**Simulation against experiment, read from Figs 6–7** (Ponton & Seiner data as plotted; "dom." = dominant):

| M_j | Experiment (mode, λ/D, dB) | Simulation (mode, λ/D, dB) |
|---|---|---|
| 1.08–1.10 | A1 1.50–1.62, 146–148 dB; at 1.10 a weak A1-labelled point at 132.5 dB | 1.1: A1 1.65, 148 dB (single) |
| 1.11–1.16 | A2 1.39–1.57, 144–149 dB (dom.) | — (no run) |
| ≈ 1.2 | B 2.33, 151.8 dB (dom.) + A2 1.67, 127 dB | 1.2: A1 2.15–2.17, 146 dB (dom.) + A2 1.66, 133 dB |
| 1.30 | B 2.68–2.76, ≈ 155–156 dB | 1.3: B 2.77, 155 dB |
| 1.39–1.41 | C 2.41–2.48, ≈ 152.5 dB (dom.) + B ≈ 3.0, 132–138 dB | 1.4: B 3.15, 153.7 dB (dom.) + C 2.43, 138 dB |
| 1.50 | C 2.75, ≈ 156 dB (no B above 1.44) | 1.5: B 3.27, 153 dB (dom.) + C 2.75, 142.8 dB |

> All values read from 300 dpi renders (±0.03 in λ/D, ±1 dB). The simulated M_j 1.2 "A1" lies 7 % below the experimental B branch and on the extrapolation of the steep experimental A1 trend (≈ 5 λ/D per unit M_j); Ponton & Seiner show no A1 above M_j 1.10. The experimental A2 points lie at shorter λ (higher St) than A1 at the jump, as in Powell's map, where A1 → A2 goes up in frequency ([Powell 1992](powell-1992-oscillation-modes-choked-circular-jets.md), p. 2825, 2833).

**Fig. 6 model lines** (read): the vortex-sheet (0, 2) line runs from λ/D ≈ 1.41 at M_j 1.10 to 1.55 at 1.20, through the A2 data; the (1, 1) line from ≈ 2.45 at 1.40 to ≈ 3.05 at 1.60, through the C data. The A1 points (1.50–1.62) lie 6–14 % above the (0, 2) line.

**Other spectral lines in the simulated spectra** (my reading; the paper does not discuss them):
- *M_j 1.1* (Fig. 1): besides 8.05 kHz (148 dB) and its harmonic 16.1 kHz (127 dB), there are peaks at ≈ 3.65 kHz (124 dB), 6.55 (≈ 115), 9.5 (≈ 120), 11.7, 14.6 and 17.6 kHz (≈ 99–105), and 0.5, 1.4, 2.2 and 2.9 kHz (≈ 104–106 dB). The ±1.45–1.5 kHz sidebands about f and 2f show that the "single-tone" state is modulated, i.e. quasi-periodic.
- *M_j 1.2* (Fig. 2):
  - A1 6.15 kHz (146 dB), A2 8.0 kHz (133 dB), 2A1 12.3 kHz (129 dB).
  - Intermodulation products: **A2 − A1 ≈ 1.85 kHz (≈ 120 dB)**, 2A1 − A2 ≈ 4.3 kHz (≈ 119), 2A2 − 2A1 ≈ 3.6–3.7 kHz (≈ 113), 3A1 − 2A2 ≈ 2.45 kHz (≈ 118), A1 + 2.45 ≈ 8.6 kHz (≈ 110), 2A2 − A1 ≈ 9.8 kHz (≈ 102), 3A1 − A2 ≈ 10.45 kHz (≈ 109).
  - The plotted spectrum stops at ≈ 13.6 kHz, so A1 + A2 (14.15 kHz) is off scale.
- *M_j 1.5* (Fig. 5): B 4.05 kHz (152), C 4.75 kHz (142.5). Combination tones: 2C − B ≈ 5.45 (≈ 124), 4B − C ≈ 11.45 (≈ 116), 3B ≈ 12.2 (≈ 120.5), 2B + C ≈ 12.9 (≈ 115.5), B + 2C ≈ 13.6 (≈ 105). There is no clear 2B peak at this probe.

## Figures worth remembering
- **Figs 1–3, 5 (p. 35–36):** simulated SPL spectra at the exit-plane probe for M_j 1.1 (A1), 1.2 (A1 + A2), 1.3 (B) and 1.5 (B + C). Figs 2 and 5 are the two-tone cases. Read with the intermodulation lines above, they are the best in-simulation evidence that the two tones run together.
- **Fig. 4 (p. 36):** azimuthal directivity at x = −5D, M_j 1.3: a dipole, i.e. flapping B.
- **Fig. 6 (p. 36):** λ_s/D against M_j: Ponton & Seiner's A1, A2, B and C (open symbols), simulation (filled), and the vortex-sheet (0, 2) and (1, 1) upstream-mode lines through A2 and C. The key figure for the two-closure proposal.
- **Fig. 7 (p. 37):** tone SPL against M_j, simulation against experiment, including subdominant tones. The first predicted screech amplitudes (see the label caveats above).
- **Fig. 8 (p. 37):** p/p_s along r = 0, 0.3D and 0.5D at M_j 1.5.
  - About six strong shock cells ending by x/D ≈ 10, with p/p_s swinging from ≈ 0.2 to 1.8 on the axis.
  - At 0.3D, shock cells plus instability waves; at 0.5D, mainly instability waves, peaking near x/D ≈ 6–7 (my reading).
- **Fig. 9 (p. 38):** spatial PSDs of those snapshots: one shock peak at κD = 3.907; two instability peaks (≈ 1.9 and 2.2) off the axis. The basis of the coexistence claim.
- **Table 1 (p. 39):** the weakest-link test (rebuilt above).

## Notation
- D: nozzle exit diameter (length scale); D_j: fully expanded diameter; x, r, φ: axial, radial, azimuthal; R, Θ: spherical radius and polar angle from the exit; y: radial position of the probe.
- a∞, ρ∞, T∞: ambient sound speed, density and temperature (the scales); M_j: fully expanded Mach number; γ: ratio of specific heats; ν: molecular kinematic viscosity; P_r: (turbulent) Prandtl number in the energy equation.
- u, v, w: axial, radial, azimuthal velocity; p, ρ, T; k, ε: turbulence kinetic energy and dissipation; ν_t: eddy viscosity; τ_ij: modelled turbulent stress; Ω: production term; c_μ, c_ε1, c_ε2, σ_k, σ_ε: k–ε constants; k₀, ε₀: regularisers.
- n: azimuthal Fourier index; ρ_n, ρ_{−n}: cos and sin coefficients; N: number of modes retained.
- λ, λ_s: acoustic wavelength of a tone (a∞/f); T: screech period; κ: spatial wavenumber in the pressure PSDs; K: shock-cell wavenumber; k: instability wavenumber (Table 1; not the turbulence k); u_c: instability phase velocity; θ: radiation direction from the jet flow direction; α: feedback-condition residual.
- (0, 2), (1, 1): upstream acoustic (guided) modes of the vortex-sheet jet, labelled (azimuthal n, radial order).
- Mine: St_a = fD/a∞ = D/λ_s; c_up: implied upstream phase speed 2πf/(K − k).

## Relevance to this project
This is the paper that launched two threads on [screech staging and mode switching](../Topics/screech-staging-and-mode-switching.md): the claim that two screech tones coexist rather than alternate, and the idea that a guided acoustic mode of the jet can close the loop. It is also the earliest simulation in the library to reproduce A1, A2, B and C together and to predict tone amplitudes. Each part needs reading against what came later, and against the user's PyFR staging LES (`Simulations/PyFR_Staging_Continuation/`) and HPOD switching work.

**Coexistence versus switching: what the claim rests on**
- **Inside this simulation, the evidence for coexistence is real, but not the evidence the authors cite.**
  - The spatial-PSD argument (Fig. 9) uses a sign-blind cosine transform. At M_j 1.5, several wavenumbers fall within about 0.35/D of each other: the B and C instability peaks (κD ≈ 1.89, 2.24), the acoustic wavenumbers 2πf/a∞ of the two tones (1.88, 2.17), and the shock-scattered differences |k − K| (2.01, 1.67) (my arithmetic from Table 1). That spread is comparable to the resolution of a 20–35D line. Two spatial peaks in one snapshot therefore do not uniquely mean two temporal frequencies at one instant: one tone's instability wave plus its upstream or scattered partner could produce them.
  - The intermodulation lines in Figs 2 and 5 are stronger evidence. At M_j 1.2 they are A2 − A1 at ≈ 120 dB, 2A1 − A2, 2A2 − A1 and 3A1 − 2A2; at M_j 1.5, 2C − B and others (Data tables, my reading). Products like these need both tones in the same stretch of signal, interacting quadratically.
- **The time scales cannot speak to experimental switching.**
  - The spectral block is about 100–150 D/a∞ (30–60 cycles), inferred from the 134 Hz bandwidth if D = 25.4 mm (my inference; record length not stated). Experimental A1/A2 dwell times are 1–4 s ≈ 10⁴–10⁵ D/U_j ([Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md), p. 6–7).
  - In the group's 400k-frame Large_Test record (16 mm nozzle, NPR 2.199; `Codebase/HPOD_Investigation/README.md`), median dwells are 19 ms (A1) and 30 ms (A2) and switches take a median 4.9 ms. That is ≈ 400–640 D/a∞ and ≈ 100 D/a∞ (my conversion, D/a∞ ≈ 47 µs). One Shen & Tam block is about the length of one real switch.
  - To separate the two tones in time takes a window of at least 1/Δf: ≈ 7 D/a∞ at M_j 1.2 and ≈ 18 D/a∞ at 1.5 (my arithmetic). Only a handful of such windows fit in one block, and none were analysed.
- **The model cannot switch by construction** (my reasoning).
  - It is unsteady RANS with an axisymmetric k–ε eddy viscosity, five azimuthal Fourier modes, a steady axisymmetric inflow and a cold start. Nothing forces it stochastically.
  - Its long-time state is therefore a limit cycle or a torus (two tones). Noise-driven hopping between coexisting attractors, which is what [Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md) (p. 6–7), [Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md) (ρ = −0.82, p. 11) and the Large_Test record (ρ = −0.89) show, cannot occur. A deterministic two-tone torus is consistent with exclusive switching in a turbulent jet whenever the noise is strong enough to knock the system off it, and it does not refute that switching.
  - The paper's generalisation that whenever two tones are measured they coexist (p. 39) is therefore unsupported. The simulations were also not run where the experiments switch (M_j ≈ 1.12), and at M_j 1.2 the experiment had B + A2, not A1 + A2 (Figs 6–7, my reading).
- **Where the claim does fit later evidence.**
  - The Large_Test record is "not strictly exclusive": the weaker tone persists at about −9 dB and phase-coherent during long dwells, and A2 − A1 is a genuine quadratic interaction (triad coherence 0.88) whose amplitude follows the product of the two tones (`Codebase/HPOD_Investigation/README.md`, Summary). That is the same spectral fingerprint as Fig. 2: a dominant tone, a subdominant one 13 dB down, and an A2 − A1 line.
  - Powell's secondary tones about 25 dB down on both sides of every jump ([Powell 1992](powell-1992-oscillation-modes-choked-circular-jets.md), p. 2825, 2833) and Bell's coexisting twin-jet "processes" ([Bell 2021](bell-2021-intermittent-modal-coupling-screeching-twin-jets.md), p. 16, 29) also fit a dominant loop with a weaker one running underneath.
  - A reconciling picture (my hypothesis): the deterministic system has a two-tone torus with one loop strongly dominant. Turbulence makes the jet hop between "A1-dominant" and "A2-dominant" versions of it, so experiments see anti-correlated amplitudes with a persistent weak partner and difference-frequency products. Shen & Tam saw only the deterministic part; Mancinelli's wavelets saw only the hopping.

**The two-closure proposal, reread**
- The proposal that A2 and C close through a guided acoustic mode of the jet is the first application of the Tam & Hu / Tam & Ahuja upstream neutral mode ([Tam & Hu 1989](tam-1989-three-families-instability-waves-high-speed-jets.md); [Tam & Ahuja 1990](tam-1990-theoretical-model-discrete-tone-impinging-jets.md)) to free-jet screech. [Gojon 2018](gojon-2018-oscillation-modes-screeching-jets.md) set out to test it (p. 2918). Their (0, 2) lower limit is the S2 band edge of Gojon 2018 and the radial order j = 2 of Mancinelli 2019.
- The split, with A1 and B closed by free sound, was rejected:
  - [Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md) (p. 10–11) and Gojon 2018 (p. 2918–2920) put A1 and A2 on the same (0, 2) guided jet mode.
  - [Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md) find Shen & Tam's prediction agrees poorly with their data (p. 2, 6, Fig. 5).
  - In Fig. 6 here, the A1 points lie 6–14 % above the (0, 2) line, i.e. below that mode's lowest frequency in their vortex sheet. Band edges move with jet temperature and shear-layer thickness, and an isothermal sheet fitted A1/A2 only because those two effects cancel ([Mancinelli 2021](mancinelli-2021-complex-valued-resonance-model-screech.md), p. 15–16, 25–26). So the "A1 is outside the band" result depends on the sheet assumptions, which are not stated here.
- **Table 1 already points to the modern explanation** (my derivation).
  - The A1/B residuals are all positive and imply an upstream phase speed of 0.91–0.93a∞. That is a subsonic return like the guided jet mode near its lower band edge, whose phase speed is "subsonic but close to c∞" ([Mancinelli 2019](mancinelli-2019-screech-prediction-upstream-modes.md), p. 3–4), rather than strictly free sound.
  - On the measured K, the A2/C rows at M_j 1.2 and 1.5 imply a supersonic upstream phase speed (1.30–1.36a∞), which neither free sound nor the guided mode has.
  - If A2 and C return at the same ≈ 0.92a∞, they need a shock wavenumber of 1.17K (M_j 1.2) and 1.18K (M_j 1.5); with a return at exactly a∞, 1.13K. This matches the second shock-spectrum peak k_s2/k_s1 ≈ 1.2–1.3 to which A2 and C are now assigned ([Nogueira 2022](nogueira-2021-closure-mechanism-a1-a2-screech.md), p. 7–13; [Edgington-Mitchell 2022](edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 11–13), and Panda's 1.17 (A2) and 1.24 (C) ([Panda 1999](panda-1999-experimental-investigation-screech-noise-generation.md), p. 81, that note's arithmetic).
  - Shen & Tam's "second mechanism" is therefore more plausibly the same guided return closing on a second shock wavenumber than a second kind of upstream wave. Their single dominant K per jet (Fig. 9a) could not show this.
  - The M_j 1.1 row fits neither picture: it needs K ≈ 0.90K₁. This is the row whose label is inconsistent.
- **Shock-cell–instability interaction location:** "around the fourth or fifth shock cell" (p. 37–38). This agrees with Mercier's 4th-shock source ([Mercier 2017](mercier-2017-screech-feedback-loop-underexpanded-round-jets.md), p. 222–224) and is the reflection point Mancinelli 2019 fitted.

**Simulation methods and the PyFR staging LES**
- **What carries over.**
  - Self-excited lock-on from rest with no forcing (p. 35), the same mechanism the PyFR anchors rely on.
  - The need for a far-downstream outflow boundary and an entrainment-aware radiation condition. Outflow-to-inflow feedback can self-excite spatial simulations ([Huerre 1990](huerre-1990-local-global-instabilities-spatially-developing-flows.md), p. 498).
  - Multi-resolution meshing (D/64 near the exit, D/8 outside), the analogue of the PyFR mesh's graded sizes.
  - The probe at the lip-face radius r = 0.642D, which matches Ponton & Seiner's lip transducers and is a sensible place for the PyFR lip ring.
  - A spatial κ-spectrum of instantaneous pressure is a cheap per-snapshot check of which shock wavenumber each state uses. Done with sign (complex demodulation or k_x-sign filtering, as in [Edgington-Mitchell 2018](edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md)) and per state, it is the k_s1 → k_s2 test listed on the staging topic page.
- **What the PyFR run adds.**
  - Shen & Tam ran five isolated M_j points from rest, ΔM_j = 0.1, none at the staging point. The continuation driver steps NPR from converged A1 and A2 anchors, so it can bracket each limit and test hysteresis, which this paper could not.
  - The URANS has no turbulent noise; the PyFR ILES does. Switching seen in PyFR but absent in a deterministic model would itself be informative.
- **A design implication for the driver** (my suggestion). The classification r(t) = ln(A_in/A_out) assumes one tone dies. Shen & Tam's M_j 1.2 state, a dominant tone with a steady partner 13 dB down, and the Large_Test "weaker tone at −9 dB" would both register as "not switched" or as slow "trending". A third outcome, "coexisting", is worth adding: both envelopes steady and nonzero, with phase locking of the A2 − A1 band to a₁a₂* (bicoherence). Keep the band-pass widths below Δf so that the 2A1 − A2 and 2A2 − A1 lines (St ≈ 0.52 and 0.78 for A1 = 0.607, A2 = 0.695) stay out of the A1/A2 bands.
- **Record-length lesson.** Coexistence and switching can only be told apart with a window shorter than the dwell time but longer than 1/Δf, applied as band envelopes (Hilbert or HPOD) and joint amplitude PDFs, as in the group's SPOD → reconstruction → HPOD pipeline and [Mazharmanesh 2026](mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md). A single block-averaged spectrum, as here, cannot do it.
- **Amplitude.** The [screech-frequency-and-global-modes](../Topics/screech-frequency-and-global-modes.md) page says no model predicts amplitude. This URANS got dominant and subdominant levels within a few dB of experiment, but with the mode labels swapped at three of five M_j, and with an unstated lip and an eddy viscosity standing in for the nozzle boundary layer. It is an early sign that a self-excited simulation sets amplitude, not a validated amplitude model.

**Methods and data (CLAUDE.md workflow).**
- *Time-resolved* (simulation probes, microphones, TR schlieren): tone spectra; intermodulation lines and bicoherence to test simultaneity; band envelopes (HPOD) for switching statistics. The paper uses only the first.
- *Non-time-resolved* (PIV, single-shot schlieren): the snapshot spatial wavenumber spectrum (Fig. 9) works on single fields and can show two instability wavenumbers in one snapshot, as POD pairs can. It needs sign (k_x > 0 and < 0) separation, a field of view of 10D or more, and care that upstream waves and shock-scattered sidebands are not mistaken for a second tone. On PIV, two coexisting loops give a filled-disc POD phase portrait rather than a ring ([Weightman 2019](weightman-2019-nozzle-external-geometry-azimuthal-mode-impinging-jet.md), p. 431).

**Rocket noise.** No direct link, though the authors' remark that the same CAA approach could predict broadband shock-associated noise without empirical constants (p. 39) points to the shock-noise side of launch-vehicle noise.

**Items to verify against the PDF**
1. Table 1, M_j 1.2 A1 row: which of KD, kD, 2πfD/a∞ or α is misprinted (α recomputes to 0.314, not 0.282).
2. Table 1's 2πfD/a∞ at M_j 1.2 and 1.5 (implying λ/D 2.00, 1.71, 3.35, 2.90) against the text's 2.17, 1.67, 3.28, 2.77; the figure peaks side with the text.
3. Why the M_j 1.1 tone, called A1 in Figs 1, 6 and 7, is in Table 1's "A2 and C modes" half.
4. Eq. 7's sign (printed +, derivation gives −) and the missing D in Table 1's footnote.
5. The ⅓kδ_ij in τ_ij, and the printed scale a∞²/D for ε.
6. What "the lowest five modes" means (n = 0–4, or 0, ±1, ±2).
7. All values marked "read" from Figs 1–9, especially the dominance swaps in Fig. 7, the combination-tone identifications in Figs 1, 2 and 5, and the Fig. 4 lobe levels and angle.
8. The inferred D = 25.4 mm, a∞ = 340 m/s and block length ≈ 100 D/a∞; none of these is stated.

**Candidates for `/add-paper`** (cited, not yet in the library):
- *Numerics behind this paper:* Shen & Tam 1998 (AIAA J. 36(10), the axisymmetric simulation that holds the nozzle, inflow, time step and outflow details); Shen & Tam 2000 (AIAA J. 38(5), jet temperature and lip thickness); Tam & Kurbatskii (multiple-size-mesh multiple-time-step DRP, IJCFD); Tam & Webb 1993 (JCP 107, DRP); Tam, Webb & Dong 1993 (selective damping); Tam & Shen 1993 (AIAA 93-4325, variable damping); Tam 1998 (J. Comput. Acoust. 6, radiation boundary conditions); Thies & Tam 1996 (AIAA J. 34(2), k–ε for jets); Tam & Kurbatskii 2000 (JCP 157, extrapolation/interpolation).
- *Screech:* Walker, Gordeyev & Thomas 1997 (Exp. Fluids 22, wavelet evidence of coexisting tones in an AR 7 rectangular jet, the other main coexistence source); Ponton, Seiner & Brown 1997 (NASA TM 113137, exit-plane near-field pressure); Norum 1983 (AIAA J. 21; now [indexed](norum-1983-screech-suppression-supersonic-jets.md)); Massey & Ahuja 1997 (AIAA 97-1625); Tam, Shen & Raman 1997 (AIAA J. 35(7), bevelled rectangular nozzles); Westley & Woolley 1968; Powell 1953.
- *Other screech simulations:* Morris et al. 1997 and 2000; Shih, Hixon & Mankbadi 1995.
