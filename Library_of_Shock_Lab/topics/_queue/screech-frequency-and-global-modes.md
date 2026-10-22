## bell-2018-coupled-underexpanded-supersonic-twin-jets (queued 2026-10-22)

Bell 2018 applies Panda's standing-wave relation to a twin jet, with λ_sw and λ_h both measured independently from planar PIV statistics. λ_sw is the rms crest spacing, 1.7 ± 0.12D; λ_h is the R11 crest spacing, 3.2 ± 0.15D (Table 2, p. 15). So this is a genuine consistency check, not the identity flagged in the page's model table ([Edgington-Mitchell 2022](../notes/edgington-mitchell-2022-unifying-theory-jet-screech.md), p. 3).
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
- **Spurious tones.** This matches the round-jet experience that phase-only models over-predict and that [Mancinelli 2021](../notes/mancinelli-2021-complex-valued-resonance-model-screech.md)'s ω_i ≥ 0 bound is what gave cut-off (p. 20).
- **Station rule.** It offers a reproducible rule for choosing the GJM base-flow station: the x of peak screech-SPOD amplitude (p. 18, Table 3). This could go in "Methods and data / Model inputs".
- **Open question "Which loop a prediction belongs to".** By the note's reading of Fig. 24, the 2D model gives k_s1 points only at NPR 2.5, 2.9 and 4.1. At NPR 3.3 and 3.7 the dominant tone (≈ 0.28, 0.25) lies below the 2D PIV band (St_j ≈ 0.34–0.37 and 0.31–0.34 after ×1.60), so the 2D model there predicts only the k_s2 tone.
- **Loop assignment at NPR 4.0.** The planar k_s2 prediction (≈ 0.29) falls between Mazharmanesh 2025's bi-axial (0.27) and varicose (0.30) tones. This repeats the ambiguity already recorded for Nogueira 2025.
