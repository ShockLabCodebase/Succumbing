# SPODViewer

Desktop viewer for SPOD result files from the Shock Lab schlieren scripts (`SPOD_Analysis.m` and older variants): `SPOD_Results/Data/<case>_Nt_..._Nfft_..._ovlp_...mat`. Modelled on FieldsPlayer.

## Using it

Run `SPODViewer.exe`, then open a file (File → Open, drag and drop, or pass the path on the command line). Large files are fine: only the frequency being viewed is read, and neighbouring frequencies are loaded in the background.

Some files store `P` with every frequency in each HDF5 chunk (e.g. chunks `(10, 1, 3, 257)`), so reading one frequency means decompressing the whole array. The first time such a file is opened, `P` is rewritten frequency-major into `%LOCALAPPDATA%\SPODViewer\cache` (complex64, n_freq × n_modes × ny × nx × 8 bytes, e.g. 6.3 GB for 257 × 10 × 480 × 640). This takes about 1–2 minutes, and the status bar shows progress. After that, every frequency loads instantly. The cache is keyed on the file's path, size and modification time. It is emptied when the viewer closes, so each session builds it again on first open, and it holds at most 15 GB while the viewer runs (least recently used files go first). Help → File information shows the layout (`frequency-major cache`).

- **Spectrum** (bottom): λ against St for each mode, with the most prominent peaks marked. Click or drag the orange line to pick a frequency. You can also use the St/bin boxes, the peak list, ←/→ (one bin) and PgUp/PgDn (peak to peak).
- **Mode image**: `Real`, `Imaginary`, `Magnitude` or `Phase` of the selected mode (↑/↓ change mode). It is normalised by max |P| by default. The contrast panel and colour maps work as in FieldsPlayer; pogmap and CMRmap are the group's maps.
- **Phase animation**: plays Re(P·e^{iθ}) with θ = ωt over one period. Space plays/pauses, `,`/`.` step.
- **Wave direction**: `All`, `Downstream (+k)` or `Upstream (−k)` (shortcut `D`). It applies an FFT along x and keeps waves travelling in +x or −x. The two parts add up to the full mode.
- **Mean-field contours**: contours of `im_mean` drawn over the mode.
- **Output**: snapshot PNG (or Ctrl+C to copy), MP4 of the phase animation (bundled ffmpeg), and the spectrum as CSV or PNG.
- **Waterfall** (File → Open waterfall…, Ctrl+Shift+O): select several SPOD files to get a contour of log λ against St (y) and the case parameter (x). Only St and L are read, so this is quick even for large files.
  - The x-axis is picked from filename tokens that differ between the files (`NPR`, `Mj`, `M`, `Ma`, `hD`, `zD`, `sD`, …; `_zD_30_` → 3.0). You can change it in the *x-axis* list, or use file order or name order. SPOD settings that differ (`Nfft`, `Nt`, `ovlp`) are offered but never chosen by default.
  - Colour options: log λ, log λ normalised per case (by its maximum or by its integral over St), or the mode's share of the energy at each St. You can also pick the mode, the colour map and St max.
  - Files with different St grids (e.g. different Nfft) are interpolated onto the finest grid.
  - Click the waterfall to open that case in the viewer. The click snaps to the strongest bin within ±3 bins (hold Shift to use the exact bin). Double-click a case in the list to open it at the last chosen St. In the viewer, `[` / `]` step to the previous / next case at the same St.
  - Export the waterfall as PNG, or as CSV (St by case).
- **Help → File information**: lists everything read from the file, including which diameter and Mach/NPR names were found and how they were decoded.

### Metadata handling

- **Diameter**: the first of `D`, `D_e`, `D_eff`, `D_j` (and spelling variants) found in the file is shown. Values below 1 are treated as metres.
- **Mach/NPR**: read from filename tokens (`_NPR_29_` → 2.9, `_Mj_0835_` → 0.835, `_M_`, `_Ma_`), which keep the leading zeros. If the filename has none, the saved `NPR`, `M`, `Mj`, `M_a`, `current_M`, ... values are used, and integer codes are decoded with a range check.
- **Axes**: in units of D, or D_e for ONR/Ellip/Rect cases. `Minor`/`Angled` in the name changes the y label to z/z*.
- **Symmetry**: `sym_type` (symmetry-imposed results) is shown in the status bar.

## Building

Uses the `spodviewer` conda environment (Python 3.12 from conda-forge, packages from `requirements.txt` via pip):

```bat
conda create -n spodviewer -c conda-forge python=3.12 pip
%USERPROFILE%\anaconda3\envs\spodviewer\python.exe -m pip install -r requirements.txt
build.bat
```

`build.bat` needs a minimal ffmpeg first (once). It is built from source with libx264 and only the parts video export uses (raw frames on a pipe → H.264/yuv420p → MP4), ≈5 MB instead of the 84 MB full build in imageio-ffmpeg. Install [MSYS2](https://www.msys2.org) (`winget install MSYS2.MSYS2 --location %LOCALAPPDATA%\msys64` works without admin), then in its MINGW64 shell:

```bash
pacman -S --needed mingw-w64-x86_64-gcc mingw-w64-x86_64-nasm mingw-w64-x86_64-pkgconf make git diffutils
bash tools/build_ffmpeg.sh
```

This writes `build_ffmpeg\ffmpeg.exe` (git-ignored). The spec bundles it and `tools/rthook_ffmpeg.py` points imageio-ffmpeg at it. Like the imageio-ffmpeg build, it is GPL because of x264.

The output is `dist\SPODViewer\` (≈200 MB, including ffmpeg). Copy the whole folder to share it; nothing else needs installing.

To check a build end to end:
`SPODViewer.exe --selftest <file.mat> <out_dir> [more.mat ...]` writes `selftest.txt`, a PNG and a short MP4. Extra files are combined into a waterfall, which is also checked.

Test files: `python tests/make_synthetic.py <dir>` writes five small synthetic NPR-sweep files in the v7.3 layout. `python tests/waterfall_test.py <out_dir> <files...>` tests the waterfall and the link back to the viewer.

Icon: `python tools/make_icon.py` redraws `spodviewer/assets/spodviewer.png` and `.ico` (a screech-like spectrum over "ShockLab" in spectral bars; needs Windows' Bahnschrift font). Rebuild afterwards to embed it in the exe.

Run from source: `python run_spodviewer.py [file.mat]`.
Headless test: `python tests/smoke_test.py <file.mat> <out_dir>`.

## Conventions

- MATLAB v7.3 files are HDF5, which reverses dimensions: h5py sees `P` as [mode, x, y, freq] and complex values as a `real`/`imag` compound. `spodviewer/data.py` converts back to MATLAB order with y as rows and x as columns. Older v7 files are loaded whole with scipy.
- Time convention: modes at +f multiply e^{+iωt} (MATLAB FFT sign). A downstream wave is therefore e^{−ikx}, which lands at negative FFT wavenumbers. This was checked on test data: in the downstream part, phase falls along x.
