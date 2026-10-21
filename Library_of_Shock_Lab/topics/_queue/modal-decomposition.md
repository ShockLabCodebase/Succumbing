## bell-2021-intermittent-modal-coupling-screeching-twin-jets (queued 2026-10-20)

- **POD of u_y only.** On 9500 PIV fields taken at 0.5 Hz, POD of the transverse velocity alone keeps the shear-thickness mode out of the leading modes (p. 19–20, after Weightman et al. 2018). The cost is losing the amplitude marker that [Weightman 2019](../notes/weightman-2019-sound-production-impinging-supersonic-jets.md) (p. 47) and [Nogueira 2021](../notes/nogueira-2021-twin-jet-coupling-spatial-lsa.md) (same NPR 5 data, p. 11–13) rely on.
- **Full field against sub-domains.** Full-field POD of the intermittently coupled state at NPR 4.6 gives four unpaired modes with unequal levels in the two jets, holding ≈ 6% together against 9% for the clean NPR 5.0 pair (p. 21). Sub-domain POD of each jet (cut at y/D = 0, first shock cell excluded) recovers one clean pair of ≈ 2.5% per mode for each jet (p. 22).
- **Conditional POD.** Keeping only the upper quartile of the pair magnitude |a_{1,2}| and re-running POD separates the single-jet pairs.
  - The subset with both jets strong (≈ 650 snapshots) gives distinct symmetric and antisymmetric coupled pairs (p. 23–26).
  - It converges at about 500 snapshots (jack-knife), in line with Weightman 2019's budget of ≈ 500 for a leading pair.
  - This is the PIV counterpart of [Wong 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md)'s scalogram-conditioned POD.
- **Caveats (note's derivations).**
  - Selecting on both jets forces |S|² + |A|² to be large, so the empty corners of Fig. 21 are partly geometric.
  - Single-jet POD will merge structures about 10% apart in wavelength.
  - The 650 joint-quartile snapshots, against the 594 expected for independent jets, measure how weak the coupling is.
- **Two cheap tools.** A POD wavelength with a measured u_c assigns frequencies to pairs where no time-resolved data exist (Table 2). Phase-binned reconstructions (10° bins, 20 modes, pair phase; p. 28) follow the group's POD-pair phase-averaging route.

## edgington-mitchell-2014-coherent-structure-helical-screech-mode (queued 2026-10-21)

This is the first application of the group's POD-pair triple decomposition to a screeching jet, adapted from [Oberleithner 2011](../notes/oberleithner-2011-swirling-jet-vortex-breakdown-stability.md):
- Snapshot POD of 8000 uncorrelated PIV fields is run on the **transverse velocity only**, because that separates the leading pair much more cleanly with essentially unchanged shapes (p. 834).
- The pair holds 15.3% + 13.7% against 2.5% for mode 3, close to Oberleithner's 15.0/14.9%. The (a₁, a₂)/⟨r_m⟩ portrait is a ring; (a₁, a₃) shows no structure (Figs 8–9, p. 835).
- The phase is â e^{iφ} = a₁ + i a₂ (eq. 4.11).
- The coherent field is rebuilt from the two spatial modes alone; the coefficients serve only to prove the coupling. Everything else is "random" (p. 834–835). So harmonics, pair-amplitude modulation and k_x < 0 content outside the pair all go into u″.
- The paper does not say how the u components of a v-only POD were obtained.
- It adds a spatial use of EMD: it splits the radially integrated coherent axial stress along x into shock modulation and growth (p. 836–837). The usual EMD caveats (end effects, mode mixing; [Huang 1998](../notes/huang-1998-empirical-mode-decomposition-hilbert-spectrum.md)) apply with only about seven periods.

It also shows a limit for the page: a single plane through the axis gives the same ring-shaped pair for a helix and for a flapping mode, so POD pairs cannot recover helicity. [Weightman 2019](../notes/weightman-2019-sound-production-impinging-supersonic-jets.md) later showed that the v-only choice hides the shear-thickness mode. It agrees with, and does not change, the page's "Snapshot POD and POD pairs" account. It is the citable origin of "v-only POD" in the group's screech work.

## kriegseis-2021-hilbert-transform-revisited-hpod (queued 2026-10-21)

Adds a time-direction route to the "Pairs can be identified objectively" paragraph (Davey's spatial-Hilbert test; Raiola's space-only HPOD). Motivation: pairing POD modes by inspection or cyclograms is subjective and harder with noisy data (p. 1). In three 2D datasets (1C schlieren of a flickering candle, 2C phase-resolved PIV over a plasma-actuator array, 3C time-resolved stereo PIV in a side-channel pump), HPOD_t merged each related POD pair into one complex mode (p. 1–2, Fig. 1), agreeing with [Horel 1984](../../notes/horel-1984-complex-principal-component-analysis.md) (p. 1665–1666) and [Raiola 2025](../../notes/raiola-2025-hilbert-pod.md) (p. 14–15). Unlike [Davey 2025](../../notes/davey-2025-hpod-sphere-wake.md)'s test and HPOD_x, it needs ordered snapshots: shuffled data keep POD-like real modes with meaningless imaginary parts (p. 2), so for non-time-resolved PIV it falls back to POD. No energies or other numbers are given. No change to Current understanding.
