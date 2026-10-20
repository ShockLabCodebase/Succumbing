# SPODViewer

Developer notes. The user guide that ships with each build is [USER_GUIDE.md](USER_GUIDE.md).

Desktop viewer for SPOD result files from the Shock Lab schlieren scripts (`SPOD_Analysis.m` and older variants): `SPOD_Results/Data/<case>_Nt_..._Nfft_..._ovlp_...mat`. Modelled on FieldsPlayer.

## Using it

Run `SPODViewer.exe`, then open a file (File → Open, drag and drop, or pass the path on the command line). Large files are fine: only the frequency being viewed is read, and neighbouring frequencies are loaded in the background.

Some files store `P` with every frequency in each HDF5 chunk (e.g. chunks `(10, 1, 3, 257)`; MATLAB picks this shape for some array sizes), so reading one frequency means decompressing the whole array. The first time a frequency of such a file is shown, modes 1 and 2 of `P` (`FIRST_CACHED_MODES`) are rewritten frequency-major into the mode cache folder, one file per mode (`<name>_<hash>_m<k>.bin`, complex64, n_freq × ny × nx × 8 bytes, e.g. 0.63 GB per mode for 257 × 480 × 640, so 1.3 GB instead of 6.3 GB for all 10). A message and progress bar over the image show how much is done and the time left. This reads the whole file once, in x-slabs, which follow the order HDF5 stores the chunks in (y fastest). For that 5.9 GB file on a USB hard drive it takes about 30 s if the file is already in Windows' memory and about 70 s from disk. Reading in y-slabs, as up to 0.3, jumped about 18 MB between neighbouring 58 kB chunks, a seek per chunk: 12 min from disk. After that, every frequency of those modes loads instantly.

Choosing a higher mode asks first (`MainWindow._mode_cache_ok`): every chunk holds all modes, so adding any mode reads the whole file again. The question offers that mode only, all remaining modes (same read, more disk), or cancel, which stays on the current mode. Modes not cached yet show "(not cached)" in the Mode list. If the mode is chosen before the first build has started (e.g. opened from the waterfall at mode 3), it is simply added to the first build. Help → File information lists the cached modes.

- **Folder and size**: `%LOCALAPPDATA%\SPODViewer\cache` by default. *Settings → Mode cache* shows the folder, its size and the limit, and opens it. *Folder and maximum size…* changes the folder (e.g. to a drive with more space) and the limit (10–100 GB, default 15 GB; it shows the space in use and free on that drive). Both are remembered. A file whose cache would exceed the limit is refused with a message rather than built.
- **Clean-up**: the viewer deletes its cache files (`.bin`, `.part`) when it closes, from every cache folder used in that session, and keeps at most the limit while it runs (least recently used files go first, also as soon as the limit is lowered). Other files in the folder are never touched.
- **Waterfall**: only `St` and `L` are read, so no cache is built for the files in a waterfall. A file's cache is built only when it is opened in the viewer (e.g. by clicking the waterfall or with `[` / `]`).
- Each viewer window writes its own temporary `.part` file, so two windows opening the same file do not clash. Help → File information shows the layout (`frequency-major cache`) and folder.

- **Spectrum** (bottom): λ against St for each mode, with the most prominent peaks marked. Click or drag the orange line to pick a frequency. You can also use the St/bin boxes, the peak list, ←/→ (one bin) and PgUp/PgDn (peak to peak).
- **Mode image**: `Real`, `Imaginary`, `Magnitude` or `Phase` of the selected mode (↑/↓ change mode). It is normalised by max |P| by default. The contrast panel and colour maps work as in FieldsPlayer; pogmap and CMRmap are the group's maps.
- **Phase animation**: plays Re(P·e^{iθ}) with θ = ωt over one period. Space plays/pauses, `,`/`.` step.
- **Wave direction**: `All`, `Downstream (+k)`, `Upstream (−k)` or `Custom k ranges` (shortcut `D`). It applies an FFT along x (zero-padded to 4× the next power of 2) and keeps waves travelling in +x or −x, or only the chosen k ranges. Downstream and upstream add up to the full mode.
- **Wavenumber spectrum** (`k-spectrum…` button, View menu or `K`): a separate window with log |P̂(y, k)|² as a map and Σ_y |P̂|² as a line, for the mode on screen, with grey over the wavenumbers being zeroed and the share of Σ|P̂|² kept. k is shown with the FFT sign flipped, so k > 0 is downstream, in units of 1/D (kD; rad/px with no grid). With `Custom k ranges`, any number of ranges can be added (around the strongest k not yet kept), dragged (orange edges or the band) or typed in a table. Everything outside them is zeroed. The ranges apply at every frequency and are remembered between sessions. Sharp band edges ring in x, so very narrow bands spread the mode out. `kspectrum.py`; filter in `data.filter_wavenumbers`.
- **Mean-field contours**: contours of `im_mean` drawn over the mode.
- **Output**: snapshot PNG (or Ctrl+C to copy), MP4 of the phase animation (bundled ffmpeg), and the spectrum as CSV or PNG.
- **Waterfall** (File → Open waterfall…, Ctrl+Shift+O): select several SPOD files to get a contour of log λ against St (y) and the case parameter (x). Only St and L are read, so this is quick even for large files.
  - The x-axis is picked from filename tokens that differ between the files (`NPR`, `Mj`, `M`, `Ma`, `hD`, `zD`, `sD`, …; `_zD_30_` → 3.0). You can change it in the *x-axis* list, or use file order or name order. SPOD settings that differ (`Nfft`, `Nt`, `ovlp`) are offered but never chosen by default.
  - The y-axis is St by default. The *y-axis* list offers every vector saved in all the files whose name starts with `St`, `f`, `freq`, `frequency` or `Strouhal` (e.g. `St_SRP`), as long as it has exactly one value per row of L and is finite and strictly increasing (`data._freq_axis`). `f` is shown in kHz above 10 kHz. *max* keeps the same fraction of the range when the axis changes.
  - *Save figure…* saves a PNG. MATLAB `.fig` export was looked at and left out: a `.fig` is an undocumented MAT-file of handle-graphics structs, so writing one outside MATLAB is fragile.
  - Colour options: log λ, log λ normalised per case (by its maximum or by its integral over St), or the mode's share of the energy at each St. You can also pick the mode, the colour map and the y-axis maximum.
  - Files with different St grids (e.g. different Nfft) are interpolated onto the finest grid.
  - Click the waterfall to open that case in the viewer. The click snaps to the strongest bin within ±3 bins (hold Shift to use the exact bin). Double-click a case in the list to open it at the last chosen St. In the viewer, `[` / `]` step to the previous / next case at the same St.
  - Export the waterfall as PNG (*Save figure…*), or as CSV (y-axis by case).
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

The output is `dist\SPODViewer_<version>\` (≈200 MB, including ffmpeg), with the version taken from `__version__` in `spodviewer/__init__.py`. Copy the whole folder to share it; nothing else needs installing. `build.bat` stops if that folder already exists, so bump the version for each new build (or delete the folder to rebuild the same version). The version also shows in the window title and Help → About. `build.bat` also copies `USER_GUIDE.md` into the build folder as `README.md`, the guide that ships next to the exe. Update the guide whenever a version changes what users see.

To check a build end to end:
`SPODViewer.exe --selftest <file.mat> <out_dir> [more.mat ...]` writes `selftest.txt`, a PNG and a short MP4. Extra files are combined into a waterfall, which is also checked.

Test files: `python tests/make_synthetic.py <dir>` writes five small synthetic NPR-sweep files in the v7.3 layout. `python tests/waterfall_test.py <out_dir> <files...>` tests the waterfall and the link back to the viewer.

Icon: `python tools/make_icon.py` redraws `spodviewer/assets/spodviewer.png` and `.ico` (a screech-like spectrum over "ShockLab" in spectral bars; needs Windows' Bahnschrift font). Rebuild afterwards to embed it in the exe.

Run from source: `python run_spodviewer.py [file.mat]`.
Headless test: `python tests/smoke_test.py <file.mat> <out_dir>` (set `PYTHONIOENCODING=utf-8` in a cp1252 console). It also drives the wavenumber window and custom k ranges.
Filter and cache-limit checks (no data needed): `python tests/wavenumber_test.py`.
Mode cache (modes 1–2 first, the question for higher modes): `python tests/mode_cache_test.py <out_dir>` (lowers `TRANSPOSE_ABOVE` so a small synthetic file takes the cache path).

## Versions

- **0.4** (20 Oct 2026): the mode cache size limit can be set (10–100 GB) alongside its folder (Settings → Mode cache → Folder and maximum size…). New wavenumber spectrum window (`K`) showing what the wave-direction split zeroes, and a `Custom k ranges` direction that keeps only chosen k ranges (several allowed, dragged or typed). The waterfall's y-axis can be any frequency vector saved in the files (St, f, St_SRP, …), and its *Save image* button is now *Save figure*. The mode cache is built reading the file front to back (about 10× faster from a hard drive: 70 s instead of 12 min for a 5.9 GB file). The self-test waits up to an hour for a first mode-cache build. The mode cache holds only modes 1 and 2 at first (one file per mode); choosing a higher mode asks whether to cache it, or all remaining modes, in one more read of the file.
- **0.3** (19 Oct 2026): mode cache folder can be opened and changed (Settings → Mode cache folder). The progress message shows GB done and time left and updates about every 1%. Two windows building the same cache no longer clash.
- **0.2** (19 Oct 2026): files whose `P` chunks hold every frequency are rewritten into a local frequency-major cache on first view, so each frequency loads instantly afterwards. A message and progress bar show over the image while the cache is built. The cache is deleted when the viewer closes and is capped at 15 GB. The version is shown in the window title.
- **0.1** (16 Oct 2026): first release (`dist\SPODViewer_0.1.zip`). Its About box says 0.1.0.

## Conventions

- MATLAB v7.3 files are HDF5, which reverses dimensions: h5py sees `P` as [mode, x, y, freq] and complex values as a `real`/`imag` compound. `spodviewer/data.py` converts back to MATLAB order with y as rows and x as columns. Older v7 files are loaded whole with scipy.
- Time convention: modes at +f multiply e^{+iωt} (MATLAB FFT sign). A downstream wave is therefore e^{−ikx}, which lands at negative FFT wavenumbers. This was checked on test data: in the downstream part, phase falls along x.
- Downstream/upstream is the sign of the phase velocity ω/k at one frequency, not of the group velocity dω/dk (which needs neighbouring frequencies). The user guide says so under "Wave direction"; keep that wording in step with any change to the split.
