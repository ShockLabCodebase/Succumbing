# HPOD switch benchmark

A synthetic test of how well instantaneous-frequency (IF) methods track switching between two tones. It compares the lab pipeline (SPOD → band reconstruction → Hilbert POD in time) with single-probe time–frequency methods.

It implements item 1 of "What would settle it" in [hpod-instantaneous-frequency-uncertainty](../../Library_of_Shock_Lab/Research_Questions/hpod-instantaneous-frequency-uncertainty.md). The quantities it measures are the ones that answer argues about:
- how fast a switch can be resolved, as a function of the narrow-banding bandwidth B, the SNR and the field of view;
- whether a single IF trace can tell switching from coexistence;
- how IF precision compares with the Cramér–Rao bound;
- how much error the Hilbert step adds on its own.

## Running it

From this folder in MATLAB (R2025b tested; needs the Signal Processing Toolbox, not the Wavelet Toolbox):

```matlab
quick = true;  run_switch_benchmark   % one spacing, one SNR, one L, two bands: seconds
run_switch_benchmark                  % full sweep (see Runtime)
run("tests/test_benchmark_components.m")
```

Or from a shell: `matlab -batch "quick = true; run_switch_benchmark"`. All parameters are in `Functions/bench_default_params.m`. Override them after the `p = bench_default_params(quick);` line in the script.

## The synthetic flow

The field is 1D in x: two Gaussian-envelope wavepackets, tone A at f0 and tone B at f0(1 + δ). Both travel at the same speed c (non-dispersive, k = 2πf/c), with tone A having 8 points per wavelength. The amplitude schedule advects with the waves, so the truth is defined at the envelope centre x = 0, where the probe also sits. White noise is added, with the SNR defined per point (tone power over noise variance at x = 0).

Units are samples (fs = 1). With f0 = 0.1 there are 10 samples per period. Dwell times are in beat periods T_b = 1/Δf, where Δf = δ·f0.

- **Spacings:** δ = 0.10 (A1/A2-like) and δ = 0.005 (twin-jet SS/SA-like).
- **Schedule:** exclusive A↔B switches with dwells of 6, 3, 1.5, 0.75 and 0.375 T_b; a coexistence interval ('AB', with B at 0.6 of A); an 'off' interval; and padding at each end. It is repeated `n_repeat` times.
- **Ramps and jitter:** switches use a 2-period Hann ramp. Optional phase jitter (`phase_jitter`) gives a finite linewidth.
- **Spatial separation:** `env_shift_lambda` shifts tone B's envelope, giving the tones different spatial support, which POD can exploit.

## Methods

Every method returns the same tracks: an amplitude and IF for a band of width B around each tone (amp1/if1, amp2/if2), and the IF of one band of width Δf + B that holds both tones (ifc). The IF is a least-squares line fit to the unwrapped phase over W = max(1/B, 2 periods) samples, which is the minimum-variance estimator for a tone (Rife & Boorstyn 1974).

| Method | Data | What it does |
|---|---|---|
| `HPOD_sep` | field | Welch SPOD (nfft = 2^nextpow2(4/Δf), 87.5% overlap) → frequency-domain inverse SPOD of a band B around each tone (modes 1–2, Hann-weighted block stitching) → HPOD_t → mode-1 amplitude and IF of each band |
| `HPOD_comb` | field | the same, with one band of width Δf + B holding both tones → mode-1 IF: the single-trace case |
| `HPOD_raw` | field | HPOD_t of the raw noisy field, with no narrow-banding. Modes 1–2 are assigned to the tones by median IF. Any separation can only come from space (wavenumber resolution ≈ c/L). |
| `Gauss_pt` | probe | Gaussian band-pass with the same RMS width as a rectangular band B. This equals a Gaussian-window STFT, or a Morlet CWT, at one frequency. |
| `Bump_pt` | probe | compactly supported bump band-pass (a bump CWT at one scale), scaled to the same RMS width |
| `Morlet6_pt` | probe | default Morlet (ω0 = 6, constant Q, about 17% relative bandwidth; B is ignored) |
| `FSST_pt` | probe | band-limited Fourier synchrosqueezing (Gaussian window of the same width), reassigned along frequency only. Tone energies and centroid frequencies are taken in each half band. |

The probe methods are written as one-sided FFT band-passes because an STFT or CWT coefficient at one frequency or scale *is* the analytic signal of a band-passed signal (Daubechies et al. 2011, eq. 2.11–2.14). This also keeps 2×10⁵-sample records cheap, and avoids needing the Wavelet Toolbox.

SPOD, inverse SPOD and HPOD are minimal re-implementations that follow the group's `spod.m`, `invspod.m` and `hilbert_POD_func.m` as described in [Codebase_Notes](../Codebase_Notes/schlieren-processing-scripts.md). Two differences:
- SPOD keeps only the frequency bins needed, to save memory.
- The HPOD temporal coefficients are a = Uᴴz, so the IF is positive for positive frequencies. The group's snapshot and svds branches return conjugated coefficients (see the Codebase notes).

To test the group's own functions instead, swap them in for `spod_welch` and `invspod_band`. Check amplitude scaling first; the Codebase notes flag a possible mismatch between `spod.m` and `invspod.m`.

## Metrics (`Functions/score_track.m`)

- **State indicator ρ(t):** the power fraction of tone B, amp2²/(amp1² + amp2²), with each amplitude scaled by its own 95th percentile. For single-trace methods it is ρ = (ifc − f1)/Δf instead.
- **Switches (A↔B):** a switch counts as resolved if ρ, averaged over the outer half of the window on each side, is below 0.25 before and above 0.75 after (or the reverse). The window is ± half the shorter neighbouring dwell. For resolved switches, the code reports the delay of the 50% crossing and the 10–90% width, in T_b. Results are given per dwell.
- **Coexistence ('AB'):** with two bands, the fraction of time ρ lies in [0.08, 0.92], plus the same fraction in exclusive segments (false alarms). With one band, the ripple index R = 2|⟨(ifc − ⟨ifc⟩) e^{−i2πΔf t}⟩|/Δf in 'AB' segments versus exclusive ones (the plateau-versus-ripple test). Theory: with B at amplitude r < 1, the IF stays on tone A with a ripple at Δf (Boashash 1992, eq. 30).
- **IF:** bias and standard deviation of (IF − true IF)/f0 in A or B segments of at least 6 T_b, away from their edges. Two references:
  - **Probe:** the single-point Cramér–Rao bound over N_eff = W + 2.2/B, the fit window plus the band filter's impulse response. This is an approximation.
  - **Field:** the probe bound divided by √M_eff, where M_eff = ΣE² is the SNR gain of projecting onto the envelope.
- **Hilbert floor (`hilbert_floor.m`):** the IF and envelope error of `hilbert(real(z))` against the known analytic truth z, together with the fraction of the modulation's energy below −f_k. That fraction is zero if and only if the analytic signal is exact (Nuttall & Bedrosian 1966). Narrow-banding cannot remove this floor.

## Outputs (`Results/`, not in Git)

- `switch_benchmark_summary.csv`: one row per method and configuration (δ, SNR, L, B/Δf), holding the IF, coexistence and ripple metrics.
- `switch_benchmark_switches.csv`: one row per method, configuration and dwell, holding the resolved fraction, delay and width.
- `switch_benchmark_hilbert_floor.csv`, and everything in `switch_benchmark_results.mat`.
- `example_traces_delta_*.png`: ρ and the IF traces for one configuration.
- `sweep_summary_delta_*.png`:
  - resolved fraction against dwell, B, SNR and field of view;
  - IF spread against the Cramér–Rao references;
  - coexistence and ripple.

## Runtime

The quick mode takes a few seconds. The full sweep (2 spacings × 3 SNRs × 3 fields of view × 5 bands) took about 8.5 minutes on the lab PC (R2025b), almost all of it in the δ = 0.005 case (1.85×10⁵ samples, nfft = 8192). `replot_results.m` redraws the figures from a saved run.

## First results (full sweep, 2026-10-22, default parameters)

Each dwell has only 2–4 switches, so the resolved fractions are coarse.

1. **The narrow-banding bandwidth sets which switches separate bands can follow, close to the 1/B rule.**
   - With B ≤ 2Δf, the methods that track each tone in its own band (HPOD_sep, Gauss, Bump, FSST) resolve every switch with dwell ≥ 1.5 T_b, about half of those at 0.75 T_b, and none at 0.375 T_b. This holds at both spacings and at all SNRs from 0 to 20 dB.
   - At B ≥ 4Δf each band contains the other tone, so the separate-band methods fail at every dwell, while FSST still resolves switches (see 3).
   - The default Morlet (17% bandwidth) merges the tones at both spacings: ρ sits near 0.5 and every exclusive segment reads as coexistence.
2. **A single IF trace of one band holding both tones detects *exclusive* switching faster than 1/Δf, but only when T_b spans many carrier periods.**
   - At δ = 0.005, HPOD_comb resolves all switches down to 0.375 T_b at B = 8Δf. At δ = 0.10 it stops at about 1.5 T_b. There T_b is only 10 periods, so the 2-period ramp and the 2-period minimum fit window cover a large part of each dwell.
   - In coexistence intervals the IF ripples at Δf as predicted. The ripple index is 30–120 times higher in coexistence than in exclusive segments, so the plateau-versus-ripple test works. The IF never reports the weaker tone.
3. **Synchrosqueezing with a wide window behaves the same way.** At B = 8Δf, FSST resolves 0.375–0.75 T_b switches. Reassignment puts a lone tone's energy at its true frequency, whatever the window width. But coexistence is detected only 44–54% of the time at B = 8Δf (72–85% at 4Δf), against 100% at B ≤ 2Δf. That partial detection likely comes from the ripple in the reassigned frequency (Daubechies et al.'s separation condition fails here), not from genuine resolution.
4. **IF precision is below the bin width, and near the probe Cramér–Rao reference for the point methods.**
   - Gauss, Bump and FSST track the reference and scale with SNR. At δ = 0.005, 10 dB and B = Δf, the IF standard deviation is about 5×10⁻⁶ f0, a hundredth of Δf.
   - **The HPOD routes sit on a floor that does not change with SNR:** about 1.4×10⁻⁵ f0 (HPOD_sep) and 5×10⁻⁵ f0 (HPOD_comb) at δ = 0.005, and 3–9×10⁻⁴ f0 at δ = 0.10. That is well above the spatially averaged bound.
   - The floor is a block-stitching artefact of the inverse SPOD, not noise. The convolution route removes it (see "IF floor diagnosis" below).
5. **HPOD of the raw field never separates the tones**, at any field of view up to 16λ. The packets' Gaussian envelope (σ = 4λ) limits the effective spatial aperture to about 9λ, whatever L is, so the wavenumber resolution of about 11% does not reach the 10% spacing. Its weaker mode is noise-dominated (IF spread around 0.1 f0 at δ = 0.005). This field of view does not support the space-for-time hypothesis. A wider envelope, or `env_shift_lambda` ≠ 0, would test it properly.
6. **The Hilbert step's own floor is negligible:** at most 2×10⁻⁴ f0 at δ = 0.10, B = 8Δf, and below 10⁻⁷ f0 at δ = 0.005. The modulation's energy below −f_k is under 2×10⁻⁷. So for these 2-period ramps, all the errors above come from narrow-banding, the inverse SPOD and noise, not from the analytic signal (Nuttall & Bedrosian 1966).

## IF floor diagnosis (`diagnose_hpod_floor.m`, 2026-10-22)

This compares four band reconstructions before HPOD_sep, using the same fields at SNR = ∞, 20, 10 and 0 dB, with B = Δf and L = 8λ. The script writes `Results/hpod_floor_diagnosis.csv` and `.png`. IF spread is std(IF error)/f0 over the long exclusive segments:

| Reconstruction | δ = 0.10, no noise | δ = 0.10, 0 dB | δ = 0.005, no noise | δ = 0.005, 0 dB | Dominant error frequency |
|---|---|---|---|---|---|
| `invspod`, Hamming, 87.5% overlap (group default) | 3.4×10⁻⁴ | 4.9×10⁻⁴ | 1.4×10⁻⁵ | 1.4×10⁻⁵ | 1/nfft (the block length) |
| rectangular window, no overlap | 2.0×10⁻³ | 1.8×10⁻³ | 1.9×10⁻⁴ | 1.9×10⁻⁴ | about 2/nfft (block edges) |
| `invspod`, Hamming, 4× longer nfft | 7.8×10⁻⁴ | 8.2×10⁻⁴ | 4.5×10⁻⁵ | 4.4×10⁻⁵ | the block step |
| **convolution (tcoeffs-style)**, Hamming modes | **1.0×10⁻⁴** | 3.2×10⁻⁴ | **1.8×10⁻⁶** | 3.3×10⁻⁶ | — |
| field Cramér–Rao reference | 0 | 1.4×10⁻⁴ | 0 | 1.6×10⁻⁶ | |

**What the table shows:**
- **The convolution route removes the floor.** Noise-free, its spread is 3–8× lower than block-wise inversion. With noise it grows as the SNR falls, reaching about 2× the field Cramér–Rao reference at 0 dB.
- **Block-wise inversion has a deterministic floor tied to the blocks.** It is the same with and without noise, and its error repeats at the block length or block step.
- **A rectangular window with no overlap makes it worse, by 3–14×.** Concatenated blocks leave phase discontinuities at every block edge. Removing the window leakage between modes (Nekkanti & Schmidt 2021, p. 27) does not help here.
- **It is not leakage being cut off at the band edges.** Moving tone A onto a bin centre leaves the floor unchanged (2.1×10⁻⁴ and 9.8×10⁻⁶ against 2.7×10⁻⁴ and 9.0×10⁻⁶ for tone A's segments). A 4× longer nfft puts more bins inside B but makes the floor worse.
- **Most likely cause:** each block's single-band reconstruction is divided by the Hamming window and the blocks are cross-faded. The block-to-block phase mismatch then shows up as a periodic IF error.
- **The convolution route's remaining noise-free error** probably comes from its nfft-long kernel reaching into neighbouring switches.

Switch resolution is the same for both Hamming routes (all switches at 1.5 T_b, a quarter at 0.75 T_b).

**For the lab pipeline:** reconstruct the band for HPOD by convolution with the SPOD modes, which is what `tcoeffs.m` computes (Nekkanti & Schmidt 2021, eq. 3.4), rather than by `invspod`, whenever IF precision matters. Set `p.recon = "conv"` to use it in the benchmark. The default stays `"invspod"` to match the group's current pipeline.

## Limits

- **1D, one phase speed, Gaussian envelopes.** There is no upstream wave, standing-wave pattern or dispersion. Those are exactly the cases where the space-for-time argument is expected to fail (Raiola 2025, p. 13). A second wave with c < 0 would be the next test.
- **White noise only.** No broadband turbulence with its own spatial coherence, so the SPOD noise floor is flat.
- **Approximate Cramér–Rao references.** The N_eff and M_eff corrections are approximations, not exact bounds for the filtered, overlapping estimates.
- **Coarse switch statistics.** The number of switches per dwell is small (2 × `n_repeat`), so resolved fractions are coarse. Raise `n_repeat` for smoother curves.
- **Scale calibration.** Amplitudes are normalised by their 95th percentile. That is a scale calibration from the data itself, but it assumes each tone is fully on for at least 5% of the record.
