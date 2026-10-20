## mercier-2017-screech-feedback-loop-underexpanded-round-jets (queued 2026-10-20)

Mercier 2017 is the measured basis for the single-source, integer-period loop. Two-microphone near-field phase surveys on 10 unheated round jets (M_j 1.07–1.50, D = 38 mm, t/D 0.013, LMFA anechoic room) put the dominant source at the 4th shock tip for A1 and A2, and at the 3rd or 4th for flapping B (p. 219–222, Table 5). Lip-line TR-schlieren phase plus a straight return at c₀ gives φ_loop within +0.5π of 2πm, with m = 4 (A1), 5 (A2) and 3 or 4 (B, always equal to N) (p. 222–224, Fig. 12).

So the A1→A2 jump (M_j 1.13 → 1.15, St 0.59 → 0.64) adds one period to the loop while the source stays at the 4th shock (z_N 2.7D → 2.8D). This is the measurement behind the s = 4 reflection point of [mancinelli-2019](../notes/mancinelli-2019-screech-prediction-upstream-modes.md) (p. 4–5) and [mancinelli-2021](../notes/mancinelli-2021-complex-valued-resonance-model-screech.md) (p. 7), and it equals the finite-thickness fit s = 4, φ = 0, p = 4, 5 (mancinelli-2021 p. 17).

Its test of Tam's k_h − k_sc = −k_s gives (k_h + k_s)/k̄_sc = 1.01–1.05, except 1.10 at M_j 1.13 and 1.28 at A2 (Table 4, p. 214). The integer-loop criterion makes this ratio equal to m/N (the note's derivation), so A2's 1.28 ≈ 5/4 is the k_sw ≈ k_s2 signature that [edgington-mitchell-2022](../notes/edgington-mitchell-2022-unifying-theory-jet-screech.md) (p. 11) reports, seen five years earlier. On the open question "one reflection point or two shock wavenumbers", these data fit both descriptions at once and cannot separate them, but they do show that the source does not move at the jump.

The convective velocity rises from about 0.57U_j upstream of the source to about 0.7U_j downstream; the nozzle-to-source mean is 0.52–0.59U_j and grows with z_N within A1. So no fixed U_c belongs to a mode (p. 214, 224–225), in agreement with [knast-2018](../notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md) (p. 10–11). This belongs in "Frequency prediction".

The upstream wave speed is only c₀ ± 10% (p. 213, 226), so the paper cannot tell the guided jet mode from sound, as the authors concede. Its m values assume a c₀ return, and a slower G-JM return would push the +0.5π cases towards half-integer (the note's estimate).

The source agrees with leakage imaging for A2: 4th cell in both ([edgington-mitchell-2021-generation](../notes/edgington-mitchell-2021-generation-screech-tones-shock-leakage.md) p. 23). For A1 it is one cell further downstream (4th here, 3rd there), which is within resolution. Both contradict a source at the instability-wave peak ([tam-1986](../notes/tam-1986-bbsan-screech-relationship.md) p. 4).

The b (N = m = 3) versus B (N = m = 4) split of the flapping cases rests on N alone, with no tone jump (St 0.31 → 0.30 between M_j 1.35 and 1.37; Table 2 calls all of them B). Treat it as tentative.

The paper does not overturn the current understanding. It adds to item 4 (staging), the Staging, Frequency-prediction and Shock-leakage/source-location sections, and the open question on reflection point versus k_s2.

## bell-2021-intermittent-modal-coupling-screeching-twin-jets (queued 2026-10-20)

- **Twin-jet staging in the m = 1 range** (s/D = 3).
  - Knast's acoustic data jump at NPR 3.4 and 4.4 (p. 7). Coherence reveals weaker continuous branches ("processes") that coexist across the jumps.
  - A process is one loop with fixed azimuthal modes, coupling and effective source (p. 9).
  - The paper lists three candidate staging mechanisms, without testing any (p. 9): a change of azimuthal mode or coupling; a change in the number of structures in the loop (Gao & Li; [Mercier 2017](../notes/mercier-2017-screech-feedback-loop-underexpanded-round-jets.md)); a change from free-stream to guided-mode return (Shen & Tam).
- **Intermittency between coupling states.** It peaks between two coupling states and is put down to competition between two global modes (p. 29). This is the twin-jet case of the page's "Selection, hysteresis and switching" question. Unlike single-jet A1/A2 (Mancinelli 2019; Mazharmanesh 2026), the tones here coexist and are uncorrelated (p. 16).
- **Process 1 locks only briefly.** It behaves as a limit cycle (σ_amp ≈ 1 dB, σ_phase 2–6°) only at NPR 2.9–3.4, where it is also loudest (≈ 170 dB, Fig. 6b, read). It is noise-like right after its onset at NPR 2.3, which follows the jump from the St ≈ 0.65–0.78 A-type tones to St 0.46. This matches the "intermittent near a stage boundary" pattern of [Wong 2023](../notes/wong-2023-steady-unsteady-coupling-twin-round-jets.md) at A1/A2 (note's reading of Fig. 27).
- **Facility sensitivity.**
  - Identical nozzles in two Monash rigs shift the onset of the lower tone (p. 17–18).
  - OSU changes the staging most at NPR 3.0–4.0 (p. 35).
  - Both support the page's advice to record the outer nozzle shape, upstream surfaces and enclosure.
- **POD pairs to tones.** A POD wavelength with u_c = 0.6u_j assigns PIV mode pairs to tones within 0.01 in St (Table 2). Two coupled modes with about 10% different wavelengths at the same u_c give tones 5–15% apart. No stability or resonance model is computed.

## gojon-2019-antisymmetric-oscillation-modes-rectangular-screeching-jets (queued 2026-10-20)

- **Guided-mode closure extended to rectangular and heated jets**, though only by band membership. The paper assumes, after Shen & Tam (2002) and Gojon et al. (2018, round), that upstream neutral acoustic modes of the ideally expanded planar jet close the loop. Two lines of evidence:
  - the NPR 3 tones lie in the A1 band of a planar vortex sheet (Fig. 21, p. 26);
  - frequency–wavenumber spectra of LES pressure inside the jet peak on k = −ω/a₀ at the tones (Figs 22–25, p. 26–31).

  This agrees with [Edgington-Mitchell 2018](../notes/edgington-mitchell-2018-upstream-acoustic-modes-screech-closure.md), [Nogueira 2024](../notes/nogueira-2024-guided-jet-waves.md) (which cites these planar branch points, p. 23) and [Jeun 2024](../notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md). It is weaker than them:
  - no eigenfunction comparison;
  - a 10h window gives Δkh_j ≈ 0.6, which cannot separate in-jet sound at −ω/a₀ from a nearby A1 wave (my estimate).
- **Frequency right, amplitude wrong.** The LES matches the measured St at all six conditions to within 0.01 (Table 4, p. 24). But its screech grows from 151 to 177 dB/St with TR 1 → 3 where the experiment falls (p. 18–19). This contradicts the "heating weakens screech" consensus ([Tam 1995](../notes/tam-1995-supersonic-jet-noise.md), p. 39–40) and adds to the open "Amplitude" question.
  - The likely suspects (my speculation) are the untripped, weakly turbulent exit boundary layer (1.75 % peak, p. 8) and the lower Re of the hot cases. That makes this a caution for LES-based resonance maps.
- **Convection velocity falls with heating**: broadband u_c/u_j 0.80 → 0.64 for TR 1 → 3 (Table 2, p. 16). Tam's formula with these values is within 10 % (Table 3, p. 19).
- **Heated plumes and the guided-mode band.** On the open question of whether the G-JM band misses hot plumes: heating lowers the bands (Fig. 20, p. 25), and the hot underexpanded tones (Jet4TR2, Jet4TR3) fall below the A1 lower limit by my arithmetic. The authors attribute this to the thin-shear-layer idealisation (p. 26).
- **Staging-like change.** A "jump" from diagonal (TR 1) to minor-axis flapping (TR ≥ 2) is linked by the authors to Raman's (1997) mode II → I. It rests on four TR points.

## huerre-1990-local-global-instabilities-spatially-developing-flows (queued 2026-10-20)

- **Not a screech paper.** It never mentions screech or supersonic jets. It is, however, the framework behind the page's "Absolute instability and global modes" section and its "Self-excited or forced" question.
- **What it implies for Nogueira 2021.** Eq. 39 (p. 494) makes the positive *local* Floquet ω₀,ᵢ of `nogueira-2021-absolute-instability-shock-containing-jets` a necessary but not sufficient condition for a global mode. The global frequency is ω₀ at the complex saddle X_s of ω₀(X) (eq. 38, p. 493). The 2–6% match between the local saddle and the tone then implies that ω₀,r varies little along x, the same conjecture the authors make for wakes (p. 502). This is my inference.
- **Ranking of evidence for self-excitation** (§7.1, p. 516–518), which lab tests and the PyFR LES can follow with NPR as the control parameter:
  1. single-point spectra (weakest);
  2. lock-in sweeps;
  3. response against forcing amplitude, flat for an oscillator and slope 1 for an amplifier (Fig. 21);
  4. saturated amplitude against the control parameter as √(R − R_Gc) (eq. 58, Fig. 18b);
  5. conclusive transient experiments that fit the Landau equation (eq. 47) and check it at every point. An NPR step in the continuation driver is such an experiment.
- **Staging.** The theory and all its examples are supercritical Hopf; subcritical cases are "far more complicated" and no example was known (p. 517). A1/A2 bistability and hysteresis therefore lie outside the paper. Three results are relevant to mode competition:
  - global modes come in families O(ε) apart (eq. 46, p. 496);
  - a self-excited hot jet carries two modes, MI and MII, with separate onsets (S ≈ 0.73 and 0.62–0.63, read from Fig. 18b, p. 513);
  - single-sensor feedback that suppresses one global mode tends to destabilise another (p. 518–519).
- **Two classes of global instability.** The paper separates global instability from a local absolute pocket from global instability by pressure feedback off surfaces (edge, collar and cavity tones; p. 498). This maps onto the page's split between the saddle view (Nogueira 2021, 2022) and resonance-loop models (`mancinelli-2021-complex-valued-resonance-model-screech`). The classification is mine, and the two classes are not exclusive.
- **LES boundary check.** Spatial simulations can self-excite through outflow-to-inflow pressure feedback (Buell & Huerre 1988; Fig. 8, p. 498). The PyFR staging runs should be checked for this: domain length, sponge and outflow treatment.
- **Effect on open questions.** It reframes, but does not resolve, "Self-excited or forced": only global properties are measurable (p. 516). The slightly stable mean-flow mode of `farghadan-2026-wave-interactions-screeching-jet` is not a direct test, because this theory linearises about base flows near onset.

## edgington-mitchell-2015-multimodal-instability-weakly-underexpanded-elliptic-jet (queued 2026-10-21)

- The paper gives one tone at St 0.52 (f D_e/U_j) with harmonics, louder in the minor-axis plane (about 136 dB against 120 dB, read from Fig. 8, non-anechoic; p. 2743). The convected-wave check St = (U_c/U_j)(D/λ_c) = 0.65/1.2 = 0.54 matches to 4 % (p. 2744, 2747).
- It offers an early source-side criterion for which instability screeches. The coherent vorticity of the flapping POD pair peaks just before the 3rd shock (x/D ≈ 1.6). The helical-like pair stays weak until the shock train ends near x/D ≈ 5, so it cannot leak through shocks and makes no tone (p. 2747–2748, using the Suzuki & Lele 2003 leakage mechanism).
  - The 3rd-cell location agrees with the direct leakage imaging of edgington-mitchell-2021-generation (3rd cell for A1 and C, p. 19–30) and with mercier-2017's 3rd–4th shock sources. Here coherent vorticity is only a proxy.
- The paper predates guided-jet-mode closure and never asks whether an upstream wave exists near St 0.27. So the "no tone" explanation is one of two candidates; the other is the G-JM existence band, which for this nozzle's se₁ mode is limited to a short x range (ivelja-2024, p. 22–24).
- At higher NPR, where the shock train is longer, a quasi-helical tone does appear (St 0.28 at NPR 3.6, mazharmanesh-2025; 0.273 in mazharmanesh-2026, different nozzle). This is consistent with the authors' explanation, and is worth one sentence under multimodality.
- Staging data point: St 0.52 at NPR 2.2, against 0.38 (NPR 2.6) and 0.27 (NPR 3.4) in the same nozzle (ivelja-2024). mazharmanesh-2025's different ellipse jumps from varicose to flapping at NPR ≈ 2.2 with flapping starting near St 0.55–0.6. Here no varicose tone is reported at 2.2, which fits the screech page's point that the nozzle sets mode ranges.
- Loop check (the note's arithmetic, not the paper's): with λ_c = 1.2D and λ_a ≈ 1.91D, a Tam & Tanna closure needs L_s ≈ 0.74D. The shock lines in Fig. 16 give 0.62D (mean schlieren about 0.6–0.7D). Powell with L_s = 0.62D gives St ≈ 0.63, about 20 % high. Which spacing an elliptic loop uses is unresolved, so this is a gap and not a contradiction.
