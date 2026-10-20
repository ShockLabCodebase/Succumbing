## bell-2021-intermittent-modal-coupling-screeching-twin-jets (queued 2026-10-20)

- **New row for the intermittency-tracking table:** opposing microphones, a 200 Hz band-pass and a Hilbert transform per process. The outputs are:
  - per-NPR JPDFs of envelope and inter-microphone phase (Fig. 6);
  - the fraction of time below a μ − 5 dB threshold (Figs 7, 23);
  - event durations in screech cycles: 5–15 cycles interrupted and 20–30 cycles coupled at NPR ≥ 3.5 (Fig. 8);
  - joint amplitude histograms between microphones and between processes (Figs 9, 10, 12) (p. 10–19).
- **Exclusivity.** The joint histogram is the same exclusivity test as the JPDF of [Mazharmanesh 2026](../notes/mazharmanesh-2026-triadic-interaction-mean-flow-deformation-screech.md), but the answer is "uncorrelated and coexisting": process 3 is steady at NPR 5.0 while processes 1 and 2 come and go (p. 16). This contrasts with the exclusive A1/A2 switching of [Mancinelli 2019](../notes/mancinelli-2019-screech-prediction-upstream-modes.md) (p. 6–7) and Mazharmanesh 2026 (ρ = −0.82).
- **Method caveats.**
  - The filter type and order are not given. Events of 5–15 cycles (0.5–1.5 ms at ≈ 10 kHz) are shorter than the ≈ 5 ms envelope time scale of an ideal 200 Hz band.
  - There is no beat test, although processes 1 and 2 are only ≈ 0.02 apart in St (≈ 800 Hz).
  - Each microphone is assumed to hear only its nearer jet (p. 14). Cross-talk combined with a wandering inter-jet phase could produce the corner and fan shapes on its own.
- **Null model for the pipeline checklist** (step 5, the note's derivation). A narrow-band Gaussian signal has a Rayleigh envelope with σ = 5.57 dB in dB. It spends 16–22% of the time below μ − 5 dB, and 13–27% for thresholds of 4–6 dB.
  - Process 2 has σ ≈ 5.5–6.0 dB and spends ≈ 24/20/16% below μ − 4/−5/−6 dB (Figs 23, 27), which matches.
  - So threshold-based "interruption" statistics need this null, the envelope analogue of Torrence's χ² background.
- **Without time resolution.** The paper shows how far conditional POD on POD-pair magnitudes can go (p. 23–28). But the empty corners of Fig. 21 follow partly from the selection, since |S|² + |A|² = |L|² + |U|². The real information is the distribution of inter-jet phase along the arc. HPOD_t on symmetry-split SPOD reconstructions of time-resolved schlieren would measure it directly.
- **Choice of tool.** Bell chose Hilbert over wavelets, citing Huang (2014) (p. 10), after narrow-banding each process. This is consistent with the page's point 1.
