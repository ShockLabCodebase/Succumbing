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
