## suzuki-2023-elliptical-jet-directivity-efficiency-wave-packet-model (queued 2026-10-25)

- **New model for the vortex-sheet section.** A compressible elliptic vortex sheet with:
  - pressure and particle-displacement matching (eqs. 25–26), the displacement term including (1/T)(1 − k_hU/ω)²;
  - an isentropic unheated temperature ratio (eq. 27);
  - three-term Mathieu truncation (ce₀, ce₂, ce₄);
  - det E = 0 solved with lsqnonlin, and eigenvectors from the SVD (eqs. 28–30, p. 2572–2573).
- **Validation.** It overlays Morris (1988) at M = 0 and Michalke (1970) at AR 1.001 (Figs. 3–4, p. 2573). My own round vortex-sheet solve reproduces the Fig. 3 AR → 1 values:

  | Mode | St 0.2 | St 0.4 | St 0.6 |
  |---|---|---|---|
  | m = 0, −k_iR | 0.257 | 0.802 | 1.620 |
  | m = 1, −k_iR | 0.534 | 1.000 | 1.537 |

  So growth rates are per equivalent radius and St uses D. Fig. 4 does not match the same solve (see checks).
- **Agrees with the page's "known faults".** The authors use the sheet for phase speed and distrust its high-St growth rates (p. 2575, citing Michalke 1965), consistent with `tam-1989-three-families-instability-waves-high-speed-jets` (p. 467).
- **A fault to add.** The vortex-sheet ce₀ phase speed exceeds U_j at low St: ≈ 1.07–1.13 U_j at St 0.2 (Fig. 6). That is above typical eddy speeds of ≈ 0.6 U_j but consistent with the near-nozzle values in `jaunet-2017-two-point-coherence-wave-packets-turbulent-jets` (p. 21). Wavenumbers taken from it bias source efficiency and radial decay.
- **Wavepacket models section.** It can now list an installed elliptical-jet model alongside `jordan-2018-jet-flap-interaction-tones`. Here the plate is outside the jet and there is no resonance.
- **Open item.** Guided-mode bands of the compressible elliptic sheet are not computed. They are the elliptical counterpart of Tam 1988's Mathieu shock-cell modes (`tam-1988-shock-cell-screech-rectangular-non-axisymmetric-jets`), and would be relevant to the AR 2 band-edge problems in `lu-2026-rectangular-jet-screech-dimensional-reduction`.
