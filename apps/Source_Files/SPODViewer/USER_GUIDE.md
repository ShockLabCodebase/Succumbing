# SPODViewer user guide

SPODViewer shows the results of a SPOD analysis: the eigenvalue spectrum, the spatial mode shapes at any frequency, and an animation of each mode over one period. It reads the `.mat` files written by the Shock Lab schlieren scripts (`SPOD_Analysis.m` and its variants), found in `SPOD_Results/Data/`.

The version number is in the window title, under Help → About, and in the name of the build folder (`SPODViewer_<version>`).

## Getting started

1. Run `SPODViewer.exe` from this folder. Keep the `_internal` folder next to it; the program needs it. Nothing else has to be installed. To share the program, copy the whole folder.
2. Open a SPOD result file in any of these ways:
   - File → Open (Ctrl+O), or File → Open recent;
   - drag the file onto the window;
   - drag the file onto `SPODViewer.exe`, or pass its path on the command line.
3. The spectrum appears at the bottom, and the mode shape of the strongest peak appears above it.

Large files are fine. Only the frequency on screen is read, and the neighbouring frequencies load in the background. Some files need a one-off preparation step the first time a frequency is shown; see [Large files and the mode cache](#large-files-and-the-mode-cache).

## The window

- **Mode image** (top left): the selected mode at the selected frequency, in units of the nozzle diameter D (D_e for ONR, elliptical and rectangular nozzles). If the file has no grid, the axes are in pixels. Hovering shows x, y and the value under the cursor in the status bar.
- **Contrast panel** (top right): colour bar and histogram. Drag the yellow handles to set the colour limits. Below it are the display options.
- **Spectrum** (middle): λ (SPOD eigenvalue) against St for each mode. The orange line marks the selected frequency, and triangles mark the most prominent peaks.
- **Controls** (bottom): frequency and mode selection, animation, wave direction and output.
- **Status bar**: grid size, number of frequencies and modes, Nt, Nfft, overlap, ΔSt, NPR or Mach number, diameter, camera frame rate, and what the viewer is doing.

## Choosing a frequency and a mode

- **Frequency**: click or drag in the spectrum, type in the *St* or *bin* box, pick from the *Peaks* list, or use the keyboard: ←/→ moves one bin, and PgUp/PgDn jumps to the previous/next peak. The line above the animation slider shows *f*, λ and the mode's share of the energy at that frequency (λ/Σλ).
- **Mode**: the *Mode* list, or ↑/↓. Mode 1 is the most energetic at each frequency.
- The ⏮ and ⏭ buttons jump to the previous and next peak; ‹ and › step one bin.

## Display options

- **Display**: `Real`, `Imaginary`, `Magnitude` or `Phase` of the complex mode.
- **Colour map**: pogmap and CMRmap are the group's maps; the others are standard.
- **Normalise by max |P|**: scales the mode so its largest magnitude is 1 (on by default).
- **Auto levels on change**: resets the colour limits each time the frequency, mode or display changes. Turn it off to compare frequencies with fixed limits.
- **Mean-field contours**: draws contours of the time-mean image (`im_mean`) over the mode, which helps locate the nozzle and shock cells.
- **Auto contrast** (A) and **Fit image** (F).
- **Flip x / Flip y** buttons (also in the View menu) mirror the image.
- **View menu**: show all λ modes in the spectrum (by default only the modes stored in P are drawn), log St axis, peak labels, and the theme (light, dark or system).

## Phase animation

The image can play Re(P·e^{iθ}), with θ running over one period, which shows the mode travelling.

- ▶ (or Space) plays and pauses; ◀◀ and ▶▶ (or `,` and `.`) step the phase; the slider sets θ directly.
- *Animation* sets the playback rate (fps) and the number of frames per cycle.

## Wave direction

*All*, *Downstream (+k)* or *Upstream (−k)* (D cycles through them). The mode is Fourier-transformed along x and only the waves travelling downstream or upstream are kept. The two parts add up to the full mode. This is useful for separating, for example, the downstream Kelvin–Helmholtz wavepacket from upstream-travelling guided-jet waves.

## Saving results

- **Snapshot** (Ctrl+S): saves the image as PNG. **Copy image** (Ctrl+C) puts it on the clipboard.
- **Save video** (Ctrl+Shift+S): MP4 of the phase animation. You choose the number of cycles, frames per cycle, frame rate and width. The video encoder is included.
- **Export spectrum**: λ against St and f as CSV, or the spectrum plot as PNG.

## Comparing cases: the waterfall

File → Open waterfall (Ctrl+Shift+O), then select several SPOD files, for example an NPR sweep. A new window shows a contour of log λ against St (y) and the case parameter (x). It reads only the spectra, so it is quick even for large files.

- **x-axis**: chosen from the filename tokens that differ between the files (`NPR`, `Mj`, `M`, `Ma`, `hD`, `zD`, `sD`, …; `_NPR_29_` means 2.9). Change it in the *x-axis* list, or order the cases by file or by name.
- **Colour**: log λ, log λ normalised per case (by its maximum or by its integral over St), or the mode's share of the energy at each St. You can also pick the mode, the colour map and St max.
- Files with different frequency grids (e.g. different Nfft) are interpolated onto the finest one.
- **Open a case**: click the waterfall to open that case in the main window at that St. The click snaps to the strongest bin within ±3 bins; hold Shift to use the exact bin. Double-clicking a case in the list opens it at the last chosen St. In the main window, `[` and `]` step to the previous and next case at the same St.
- **Export**: PNG, or CSV of λ (St by case).

## Large files and the mode cache

In some SPOD files, the modes are stored with all frequencies packed together. MATLAB chooses this layout for some array sizes; for example, Nfft 512 with a full 640 × 480 frame. In these files, showing one frequency means reading the whole file. So the first time you view a frequency, SPODViewer rewrites the modes once into a *mode cache* on your computer:

- A box over the image says **Building mode cache**, with a progress bar, the GB done and the time left. It reads the whole file once. That takes from about a minute (if Windows already has the file in memory) to several minutes (from a slow or network drive). After that, every frequency of that file loads instantly.
- The cache needs free disk space about the size of the file's modes (e.g. 6.3 GB for 257 frequencies × 10 modes × 640 × 480). If there isn't enough room, you get a message saying so.
- **Where**: `%LOCALAPPDATA%\SPODViewer\cache` by default. *Settings → Mode cache folder* shows the folder and how much it holds, opens it, lets you choose another folder (e.g. a drive with more space), or goes back to the default. Your choice is remembered.
- **Clean-up**: the cache is deleted when SPODViewer closes, so the next session builds it again. While the program runs, it keeps at most 15 GB and deletes the least recently used cache first. Only SPODViewer's own cache files (`.bin`, `.part`) are deleted, never anything else in the folder.
- **Waterfall**: building a waterfall never creates caches. A file's cache is built only when you open that file in the main window (by clicking the waterfall, or with `[` / `]`).
- Most files don't need any of this. Help → File information shows how the open file's modes are stored (`P storage`).

## Settings

- **Memory cache size**: how much RAM is used to keep recently viewed frequencies (default 1024 MB).
- **Mode cache folder**: see above.
- **Prefetch neighbouring frequencies**: loads the frequencies either side of the current one in the background, so stepping with ←/→ is instant (on by default).

## Keyboard shortcuts

| Key | Action |
| --- | --- |
| ← / → | previous / next frequency bin |
| PgUp / PgDn | previous / next spectral peak |
| ↑ / ↓ | previous / next SPOD mode |
| Space | play / pause the phase animation |
| `,` / `.` | step the phase back / forward |
| D | cycle wave direction (all / downstream / upstream) |
| `[` / `]` | previous / next case of the last waterfall |
| F | fit image |
| A | auto contrast |
| Ctrl+O | open file |
| Ctrl+Shift+O | open several files as a waterfall |
| Ctrl+W | close file |
| Ctrl+S | snapshot |
| Ctrl+Shift+S | save video |
| Ctrl+C | copy image |

Help → Keyboard shortcuts shows the same list.

## How the file is read

- **Variables used**: `P` (modes), `L` (eigenvalues), `St`, `f`, `x`, `y`, `im_mean`, and metadata such as `nfft`, `overlap`, `n_snapshots`, `fps` and the diameter. Both `-v7.3` and older `-v7` MAT files work (`-v7` files are loaded whole).
- **Diameter**: the first of `D`, `D_e`, `D_eff`, `D_j` (and similar spellings) found in the file. Values below 1 are taken as metres.
- **NPR / Mach number**: from the filename (`_NPR_29_` → 2.9, `_Mj_0835_` → 0.835), otherwise from values saved in the file.
- **Axis labels**: `Minor` or `Angled` in the filename changes the y label to z or z*. Symmetry-imposed results show their symmetry type in the status bar.
- Help → File information lists everything that was read and how it was decoded.

## Troubleshooting

- **The image stays blank with "Building mode cache"**: the cache is being built; wait for the progress bar. If it seems stuck, check that the file's drive is reachable and that the cache folder has free space.
- **"Could not read modes" or "Not a SPOD result file"**: the file lacks `P`, `L` or `St`, or is not a SPOD result.
- **Running out of disk space**: choose a cache folder on a larger drive (Settings → Mode cache folder → Change folder…), or close SPODViewer to delete the cache.
- **Windows SmartScreen warning on first run**: the program is not signed. Choose *More info → Run anyway* if you trust where the copy came from.
