## bell-2018-coupled-underexpanded-supersonic-twin-jets (queued 2026-10-22)

Bell 2018 applies Panda's standing-wave relation to a twin jet, with λ_sw and λ_h both measured independently from planar PIV statistics. λ_sw is the rms crest spacing, 1.7 ± 0.12D; λ_h is the R11 crest spacing, 3.2 ± 0.15D (Table 2, p. 15). So this is a genuine consistency check, not the identity flagged in the page's model table ([Edgington-Mitchell 2022](../Notes/edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 3).
- **Result.** At NPR 5.0 it predicts λ_s = 3.7 ± 0.17D against 3.9D measured, a 6.1 ± 17.1 % difference (p. 15). At NPR 4.6 there is no standing wave to test.
- **The check is loose** (the note's arithmetic):
  - the ±0.12D on λ_sw alone spans λ_s,est = 3.1–4.2D;
  - using the POD wavelength of the same data (3.5D, Bell 2021; k_x D ≈ 1.8 in Nogueira 2021) gives 3.3D;
  - the tabulated λ_s equals a/f in nozzle diameters only if the tabulated St is based on D. Otherwise λ_s is 4.5D (3.9D_j), and the error is about 19 %.
- **Convection speed.** The implied u_c/U_j = St·λ_h/D_j is 0.52–0.58, near Knast's 0.60 for the same nozzles.
- **Closure.** The relation assumes free-stream sound at a = 345 m/s. It cannot tell that from the slightly subsonic guided jet mode that Nogueira 2021 identify on the same NPR 5.0 data, so it supports a screech loop without picking the closure wave.
- **Effect on the page.** It does not change the verdict. It adds a twin-jet entry to the Panda row: consistent within ±17 % at one steady condition, with λ_sw and λ_h measured independently.

## lu-2026-rectangular-jet-screech-dimensional-reduction (queued 2026-10-22)

- **Prediction table.** Two rows to add:
  - "Planar finite-thickness LSA, weakest link, tanh base flow (AR 2)": dominant flapping tone at almost every NPR except 2.2, and the k_s2 ridge from NPR ≈ 3.5. Limit: an over-wide GJM band, so many spurious tones and no cut-off (p. 20).
  - "2D cross-plane LSA on PIV base flow at the SPOD-peak station": agrees where it predicts, but is base-flow sensitive; the tanh profile gives almost no AR 2 predictions (p. 20–21).
- **Supports current understanding item 2.** The KH–GJM weakest-link condition predicts rectangular tones.
- **Sharpens item 4.** For rectangular jets the band edges also depend on the cross-section.
- **Spurious tones.** This matches the round-jet experience that phase-only models over-predict and that [Mancinelli 2021](../Notes/mancinelli-2021-complex-valued-resonance-model-screech.md)'s ω_i ≥ 0 bound is what gave cut-off (p. 20).
- **Station rule.** It offers a reproducible rule for choosing the GJM base-flow station: the x of peak screech-SPOD amplitude (p. 18, Table 3). This could go in "Methods and data / Model inputs".
- **Open question "Which loop a prediction belongs to".** By the note's reading of Fig. 24, the 2D model gives k_s1 points only at NPR 2.5, 2.9 and 4.1. At NPR 3.3 and 3.7 the dominant tone (≈ 0.28, 0.25) lies below the 2D PIV band (St_j ≈ 0.34–0.37 and 0.31–0.34 after ×1.60), so the 2D model there predicts only the k_s2 tone.
- **Loop assignment at NPR 4.0.** The planar k_s2 prediction (≈ 0.29) falls between Mazharmanesh 2025's bi-axial (0.27) and varicose (0.30) tones. This repeats the ambiguity already recorded for Nogueira 2025.

## edgington-mitchell-2015-staging-screeching-elliptical-jets (queued 2026-10-23)

Tests Powell's formula (eq. 1, measured shock spacing) and Panda's standing-wave form (eq. 3) on three stages of one elliptical jet (Table 4, p. 1021): 0.41 / 0.30 / 0.28 and 0.40 / 0.34 / 0.28 against measured 0.38 / 0.35 / 0.27 at NPR 2.6 / 3.2 / 3.4. U_c and M_c are not stated; 0.64–0.65U_j with St on D_j reproduces every entry (note's reconstruction). As the page already says for Panda, eq. 3 is eq. 2 rearranged, so the standing-wave column succeeds by construction; the content is that the mean shock spacing fails (−14 %) only in the k_s2 stage. Independently, Panda's relation with the measured vortex spacing and the free-stream λ_A reproduces the measured near-field lobe spacing within 2–3 % at all three NPRs (Table 2, p. 1019), a check like [Bell 2018](../Notes/bell-2018-coupled-underexpanded-supersonic-twin-jets.md)'s, which also shows the near field cannot distinguish a free-stream return from a G-JM near a∞. The convected-wave U_c/U_j from vortex spacing and tone spans 0.59–0.77 across the five stages (note's arithmetic), supporting the page's point that U_c varies with stage and method. With U_c = 0.65U_j Powell's formula is about 8–10 % high at NPR 2.6 and 23–25 % high at 2.2 (the companion paper's case, note's arithmetic), so the low-NPR mismatch on the page is not only that paper's spacing estimate.

## edgington-mitchell-2019-aeroacoustic-resonance-review (queued 2026-10-23)

The review collects the frequency models with their premises (p. 124–132, 142, 176):
- Powell eq. 5, derivable three ways, so its accuracy does not validate its physics.
- Panda's eq. 8, exact for counter-propagating waves (an identity, as the page notes).
- Tam & Tanna's eqs. 10–11 and the weakest link eq. 12, tied to stability theory and needing no observed inputs.
- Tam's semi-empirical eq. 13 with D_j (eq. 14). Its predictive power is temperature-invariant because heating raises f but not St at fixed NPR (Shen & Tam 2000; p. 136).
- Gao & Li's a-posteriori integer-N wavelength formula (eq. 15).
- Jordan's dispersive resonance condition (eq. 18). Called "entirely self-contained" but needing R₁R₂ and the dispersion relation, it became the framework of [Mancinelli 2019](../Notes/mancinelli-2019-screech-prediction-upstream-modes.md) and [Mancinelli 2021](../Notes/mancinelli-2021-complex-valued-resonance-model-screech.md).

It anticipates the global-mode thread. Resonance will need local *and* global stability (p. 154). Beneddine, Mettot & Sipp 2015 (EJMB 49, not in the library) found a laminar 2-D underexpanded jet globally unstable and captured the lip-thickness–amplitude link "not possible with local analysis". That is an earlier global result on a shock-containing jet than any on the page, and a candidate for the "Absolute instability and global modes" section.

On amplitude, it argues two-way coupling (the standing wave modulating q_d, which sets η_u) makes amplitude models "exceedingly difficult" (p. 126). It predicts receptivity will be the first process quantified (p. 176), which has not happened: |R₁R₂| is still fitted (Mancinelli 2021). This agrees with items 1 and 7.

## raman-1999-supersonic-jet-screech-half-century-powell-present (queued 2026-10-23)

The paper restates the pre-2000 frequency models: Powell's f = U_c/[s(1 + M_c)] obtained from the amplitude criterion (D_f = 1 at α = 180° when (s/λ_c)(1 + M_c) = 1; eqs. 1, 3, p. 546), Tam's band-centre formula f_p = u_c k/{2π[1 + u_c/a_∞]} (eq. 5, p. 552) and the rectangular waveguide wavenumber k₁₁ (eq. 6, printed with a missing "=", p. 552). It reports that Tam's rectangular formula fits Shih et al.'s AR 3–16.7 compilation better with U_c = 0.55U_j than 0.7U_j (Fig. 4b; data lie between the two curves, closer to 0.55), another instance of the page's point 7 that quick formulas work because their constants are tuned (measured 0.5–0.75U_j). The edge-tone analogy (h = (N + p)s, p. 555) reproduces Powell's formula exactly for any N + p (note's check), so a phase criterion alone cannot choose among loops, in line with the page's view that selection needs the shock wavenumber or saddle. Historical additions: Bikart's frequency–Mach curves (M_d 1–3) agreed with Sedel'nikov's theory, and Anufriev et al. found that preheating raises the frequency (p. 548); the FLUMES modular model (tanh-profile growth, Kerschen & Cain shock–wave sound, cylindrical feedback decay, Wiener–Hopf receptivity) is the ancestor of the Mancinelli resonance models, with free-stream feedback later replaced by the guided mode; Tam & Shen's DRP simulation captured axisymmetric round-jet modes and NRL's Euler FCT matched induced-screech frequency and amplitude (p. 563). Amplitude prediction is still called an "elusive goal" (p. 543, 564), as in Raman 1998 and Tam 1995. No change to current understanding.

## shen-2002-three-dimensional-numerical-simulation-jet-screech (queued 2026-10-23)

- **First simulation in the library to produce A1, A2, B and C and their levels** (Figs 6–7, p. 36–37).
  - Where the same mode is present, wavelengths agree within a few percent (B at M_j 1.3: λ/D 2.77 against 2.68–2.76).
  - The dominant and subdominant level pairs are within a few dB of Ponton & Seiner.
  - But by the note's reading of the figures, the mode that dominates is swapped at M_j 1.2, 1.4 and 1.5. The authors' "excellent agreement" (p. 36) holds for levels, not mode labels.
- **Amplitude.** Claim 1 ("no model predicts amplitude") could note this as the earliest self-excited simulation that sets amplitudes. It is not a validated amplitude model: the lip and exit boundary layer are not stated here, and an eddy viscosity stands in for turbulence.
- **The paper's weakest-link test** (Tam 1986 relation with the simulated K, k and f; Table 1, p. 39):
  - It gives |α|/KD 3.5–3.7 % for A1/B, though the M_j 1.2 row's α does not recompute (0.314 against 0.282). It gives about 13 % for A2/C, with the sign of α flipping.
  - u_c/a∞ is 0.68–0.99, i.e. u_c/U_j 0.61–0.80 if the jet is cold (TR not stated). At M_j 1.5, u_c ≈ a∞.
  - Shock spacing 2π/K is 2–5 % below Pack's formula.
- **Fit with other notes.** This agrees with Mancinelli 2019 (p. 2, 6) that the split-closure model fits poorly. Eq. 7 has a sign typo, and the M_j 1.1 tone is labelled A1 in the figures but listed as A2/C in Table 1. Belongs in "LES and linear models against experiment" as the URANS/CAA precursor of the LES results.

## norum-1983-screech-suppression-supersonic-jets (queued 2026-10-23)

Norum 1983 is the quantitative test of Powell's phased monopole array (Eqs 2–4, p. 237) and its phase criterion λ = L(1 + 1/M_c) (Eq. 6), the first row of the page's prediction table. With U_c = 0.7U_j and L = 0.9 × the measured third-cell length, Eq. 6 is one smooth curve. By my reading of Fig. 7 (p. 238) it sits 4–6 % above stage C for β ≥ 0.9, crosses C near β 0.75, and misses A1 (6–13 %), A2 (≈ 20 %) and B (9–23 %). It therefore gives no staging, as the table's "Main limits" column says for Powell/Tam. Matching B with the paper's L would need U_c ≈ 0.56U_j, against ≈ 0.73U_j for C (my arithmetic). This strengthens claim 7 ("quick formulas work because their constants are tuned"). The 0.9 × third-cell spacing acts like Tam's 0.8 factor and Panda's L_sw ≈ 0.8L, a shortened downstream spacing, in modern terms a stand-in for k_s2 in the C stage (my inference). It differs from Powell 1992's derivation (B on Powell's formula with the second-cell spacing, C 24 % above), but the spacing definitions differ. For directivity, the array's lobe angles from Eq. 5 match every harmonic of C and the 2nd and 3rd of B (e.g. C fundamental 18° predicted against 15–30° measured; B second harmonic 90° against 90°). Levels away from the main lobe are off by about 10 dB, and the B fundamental, for which Eq. 5 has no n = 1 solution, is not reproduced (Figs 5–6, p. 238, read). Norum's own verdict, "excellent", is generous. Nothing in the paper bears on absolute instability or global modes.

## seiner-1988-dynamic-pressure-loads-twin-supersonic-plume-resonance (queued 2026-10-23)

Uses Powell's formula f_s = V_c/[L(1 + M_c)] with V_c = 0.7V_j (Harper-Bourne & Fisher), D_j from Tam & Tanna, and a measured twin-plume mean spacing L/D = 2.06M_j − 1.6 (eqs 1–5, p. 958–959). It "adequately" predicts twin tones but gives one tone per M_j, and the paper flags the B mode below M_j 1.2 (p. 959). The note's digitisation: the curve runs through the A modes, 5–9 % below C, onto D, but 7–27 % above B for M_j < 1.45. U_c = 0.6U_j (cf. [knast-2018](../Notes/knast-2018-coupling-modes-underexpanded-twin-axisymmetric-jet.md)'s 0.57–0.60U_j, p. 10) fits B within 3 % at M_j 1.30–1.45 only. This supports item 7 of the page: quick formulas work because their constants are tuned, and the constant differs between modes. λ_h ≈ 2L for B implies, in guided-jet-mode terms (k_s = k_h + |k_u|), an upstream wave with |c_u| ≈ U_c, close to [jeun-2024](../Notes/jeun-2024-screech-coupling-closure-rectangular-twin-jets.md)'s −0.71U_j (p. 18–19) (note's inference). The paper's statement that Pack-type methods "severely underestimate" twin spacing does not hold against Pack's first-cell value: Eq. 5 is 1–7 % below Pack for M_j 1.2–1.6 (note's arithmetic). Amplitude "is not yet possible to predict" (p. 958), consistent with item 1.
