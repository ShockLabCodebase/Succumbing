# SPODPlayer

Desktop viewer for SPOD result files from the Shock Lab schlieren scripts (`SPOD_Analysis.m` and older variants): `SPOD_Results/Data/<case>_Nt_..._Nfft_..._ovlp_...mat`. Modelled on FieldsPlayer.

## Using it

Run `SPODPlayer.exe`, then open a file (File → Open, drag and drop, or pass the path on the command line). Large files are fine: only the frequency being viewed is read, and neighbouring frequencies are loaded in the background.

- **Spectrum** (bottom): λ against St for each mode, with the most prominent peaks marked. Click or drag the orange line to pick a frequency. You can also use the St/bin boxes, the peak list, ←/→ (one bin) and PgUp/PgDn (peak to peak).
- **Mode image**: `Real`, `Imaginary`, `Magnitude` or `Phase` of the selected mode (↑/↓ change mode). It is normalised by max |P| by default. The contrast panel and colour maps work as in FieldsPlayer; pogmap and CMRmap are the group's maps.
- **Phase animation**: plays Re(P·e^{iθ}) with θ = ωt over one period. Space plays/pauses, `,`/`.` step.
- **Wave direction**: `All`, `Downstream (+k)` or `Upstream (−k)` (shortcut `D`). It applies an FFT along x and keeps waves travelling in +x or −x. The two parts add up to the full mode.
- **Mean-field contours**: contours of `im_mean` drawn over the mode.
- **Output**: snapshot PNG (or Ctrl+C to copy), MP4 of the phase animation (bundled ffmpeg), and the spectrum as CSV or PNG.
- **Help → File information**: lists everything read from the file, including which diameter and Mach/NPR names were found and how they were decoded.

### Metadata handling

- **Diameter**: the first of `D`, `D_e`, `D_eff`, `D_j` (and spelling variants) found in the file is shown. Values below 1 are treated as metres.
- **Mach/NPR**: read from filename tokens (`_NPR_29_` → 2.9, `_Mj_0835_` → 0.835, `_M_`, `_Ma_`), which keep the leading zeros. If the filename has none, the saved `NPR`, `M`, `Mj`, `M_a`, `current_M`, ... values are used, and integer codes are decoded with a range check.
- **Axes**: in units of D, or D_e for ONR/Ellip/Rect cases. `Minor`/`Angled` in the name changes the y label to z/z*.
- **Symmetry**: `sym_type` (symmetry-imposed results) is shown in the status bar.

## Building

Uses the `spodplayer` conda environment (Python 3.12 from conda-forge, packages from `requirements.txt` via pip):

```bat
conda create -n spodplayer -c conda-forge python=3.12 pip
%USERPROFILE%\anaconda3\envs\spodplayer\python.exe -m pip install -r requirements.txt
build.bat
```

The output is `dist\SPODPlayer\` (≈325 MB, including ffmpeg). Copy the whole folder to share it; nothing else needs installing.

To check a build end to end:
`SPODPlayer.exe --selftest <file.mat> <out_dir>` writes `selftest.txt`, a PNG and a short MP4.

Run from source: `python run_spodplayer.py [file.mat]`.
Headless test: `python tests/smoke_test.py <file.mat> <out_dir>`.

## Conventions

- MATLAB v7.3 files are HDF5, which reverses dimensions: h5py sees `P` as [mode, x, y, freq] and complex values as a `real`/`imag` compound. `spodplayer/data.py` converts back to MATLAB order with y as rows and x as columns. Older v7 files are loaded whole with scipy.
- Time convention: modes at +f multiply e^{+iωt} (MATLAB FFT sign). A downstream wave is therefore e^{−ikx}, which lands at negative FFT wavenumbers. This was checked on test data: in the downstream part, phase falls along x.
