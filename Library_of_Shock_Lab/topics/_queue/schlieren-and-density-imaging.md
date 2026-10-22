## mercier-2017-screech-feedback-loop-underexpanded-round-jets (queued 2026-10-20)

Mercier 2017 gives two measurement recipes that transfer to the lab.

**Thin-strip TR schlieren** (Table 3, p. 207–208, 212):
- Set-up: Phantom V12 on a Z-type system (two 200 mm f/8 mirrors 2.5 m apart, focused Cree XP-L LED, knife edge perpendicular to the jet axis at about 50% cut-off).
- The strip is only 16–24 px across y/D 0.44–0.55, by 640–1024 px over 4.2–4.9D, at 220–430 kfps, chosen by Veltin et al.'s rule of at least 15U_j/D_j. That is enough for lip-line phase and wavenumber at f_s.
- Wavenumber peaks over short (2–4 wavelength) windows are refined with a Gaussian window, ×2 zero padding and a three-point Gaussian fit (Gasior & Gonzalez; error below 1% of an 80 rad m⁻¹ bin).

This complements the page's long-record SA-Z table: a much faster rate on a thin strip, at the cost of SPOD capability. It does not change the current understanding.

## powis-2016-impingement-tones-shock-instabilities-plug-nozzle (queued 2026-10-22)

The paper documents an early group use of the Shimadzu HPV-1 (102-frame bursts) at two magnifications (Table 1, p. 4):
- 250 kfps over 4.4D × 3.7D at 0.22 mm/px, for the loop;
- 500 kfps over 1.6D × 1.4D at 0.081 × 0.085 mm/px, for the standoff shock;
- a PCO4000 (1 fps, 1.6 µs LED, 0.047 mm/px) for means from 242 frames.

All use the 2032 mm Z-type rig. This adds 2016 rows to the page's camera table, consistent with the 102-frame limit noted for Weightman 2019. The first **quantitative feature extraction from time-resolved schlieren in the library** is here (p. 4, 6). It runs Gaussian filter → Sobel edges → length filter → straight-line fit, giving the shock centroid and angle per frame; then an FFT of the centroid track per burst (frequency, mean of 20 bursts) and a sinusoidal fit (mean standoff, amplitude). It tracks motion normal to the plate but fails for tilt and in-plane motion, so helical cases were excluded (p. 4, 6). Path integration makes a rotating (helical) shock look like side-to-side motion (p. 6), the same single-view limitation the page records from edgington-mitchell-2023 and mazharmanesh-2025. The knife edge was set radial (∂ρ/∂y) in the impingement region, which the authors say improved contrast near the plate despite the strong axial gradients there (p. 4). An axial edge was used for the mean shock-cell image (Fig. 12). From the note: each 500 kfps burst spans only about two tone periods, a 4.9 kHz FFT bin, so the 20-burst ensemble and fit carry the estimate and "agreement within one σ" is a loose test. The paper's σ grows as the amplitude shrinks. A long-record camera (SA-Z) would turn the centroid into a time series for Hilbert-transform frequency and amplitude tracking. For helical cases, SPOD or SPOD → reconstruction → HPOD of the shock window would replace the scalar tracker. This belongs in "Choosing frame rate, exposure and record length" (burst length vs cycles) and in a short "feature tracking" item under "What the image measures" or "Pre-processing". Compare Knast 2018's Hough-transform x–t slopes and Rezay Haghdoost 2022's front tracking. Estruch 2008 (Canny), Diebold & Elliott 2014 and André 2011 (AIAA J. 49) are cited antecedents not in the library.
