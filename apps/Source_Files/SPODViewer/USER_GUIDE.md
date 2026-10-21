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

*All*, *Downstream (+k)*, *Upstream (−k)* or *Custom k ranges* (D cycles through them). The mode is Fourier-transformed along x and only the waves travelling downstream or upstream, or only the wavenumbers in your chosen ranges, are kept. Downstream and upstream add up to the full mode. This is useful for separating, for example, the downstream Kelvin–Helmholtz wavepacket from upstream-travelling guided-jet waves.

**Downstream and upstream refer to phase velocity, not group velocity.** At the mode's frequency, each wavenumber k is sorted by the sign of its phase velocity ω/k: k > 0 means the phase travels downstream. The split cannot see the direction in which energy travels (the group velocity, dω/dk), which needs how ω varies with k, i.e. more than one frequency. Where the two differ in sign, a wave is sorted by its phase. Treat a "downstream" or "upstream" part as a statement about phase only.

### Wavenumber spectrum window

The **k-spectrum…** button (also View → Wavenumber spectrum, or K) opens a window showing the wavenumber content along x of the mode on screen. It follows the main window as you change frequency or mode.

- **Top**: a map of |P̂(y, k)|², the Fourier transform along x of each row of the mode.
- **Bottom**: the same summed over y, against k.
- **Scales**: *Log colour (map)* and *Log y-axis (line)* switch the map's colours and the line's y-axis between log and linear, each on its own. Log (the default) shows five decades below the peak; linear runs from 0 to the peak and makes the strongest features stand out.
- **Line sums over y**: by default the line adds up every row of the map. To sum only part of the jet (for example one shear layer), drag the blue band on the map, or type the limits in the *to* boxes. Rows left out are greyed on the map, the line's title shows the range, and the line is rescaled to its own peak. *Full y* goes back to all rows. The share kept, **Zoom to energy** and **Add** then use only the rows in the band. The band affects only this window, not the main image (the wave-direction split always applies at every y), and it goes back to all rows when you open another file.
- **k axis**: in units of 1/D (*kD*), or rad/px when the file has no grid. **k > 0 is a wave travelling downstream** (+x), k < 0 upstream. The dashed line marks k = 0. Hovering shows k, the wavelength 2π/k and the level.
- **Grey** covers the wavenumbers that are being zeroed for the current choice: the k < 0 half for *Downstream*, the k > 0 half for *Upstream*, and everything outside your ranges for *Custom k ranges*. The panel shows the share of Σ|P̂|² that is kept.
- The radio buttons in the window are the same setting as in the main window; changing either changes both.
- **Zoom to energy** shows the k range that holds the energy (and any ranges); **Full k range** shows all of it. You can also zoom and pan with the mouse as in the other plots.
- **Save PNG…** saves both plots.

### Custom k ranges

Choose *Custom k ranges* to keep only selected bands of wavenumber and zero everything else. You can have as many separate ranges as you like.

- The first time, a range is added around the strongest wavenumber. **Add** puts another one around the strongest wavenumber not yet kept, **Remove** deletes the selected rows of the table (or the last range), and **Clear** removes them all.
- Each range shows as a pair of orange edges. Drag an edge to move one limit, or drag the band between the edges to move the whole range. You can also type the limits into the table. The grey overlay and the kept share update as you drag, and the main image updates when you let go.
- Ranges may overlap; together they mark what is kept.
- The ranges are in kD, so they apply at every frequency and to every file, and they are remembered next time.
- Snapshots and videos made with custom ranges have `_kranges` in the suggested file name.
- The ranges have sharp edges in k, which makes the kept part ring along x over a length of about 2π divided by the range width. A range narrower than about 2π/(width of the image in D) spreads the mode across the whole image, so keep ranges a few times wider than that.

## Saving results

- **Snapshot** (Ctrl+S): saves the image as PNG. **Copy image** (Ctrl+C) puts it on the clipboard.
- **Save video** (Ctrl+Shift+S): MP4 of the phase animation. You choose the number of cycles, frames per cycle, frame rate and width. The video encoder is included.
- **Export spectrum**: λ against St and f as CSV, or the spectrum plot as PNG.

## Comparing cases: the waterfall

File → Open waterfall (Ctrl+Shift+O), then select several SPOD files, for example an NPR sweep. A new window shows a contour of λ (log by default) against St (y) and the case parameter (x). It reads only the spectra, so it is quick even for large files.

- **x-axis**: chosen from the filename tokens that differ between the files (`NPR`, `Mj`, `M`, `Ma`, `hD`, `zD`, `sD`, …; `_NPR_29_` means 2.9). Change it in the *x-axis* list, or order the cases by file or by name.
- **y-axis**: St by default. The list also offers any other frequency vector saved in every one of the files, such as `f` (shown in kHz) or `St_SRP`. Only vectors with exactly one value per frequency of the spectrum, increasing, are offered, so each eigenvalue is plotted at its own frequency. The *max* box follows the chosen axis. Clicking the waterfall and `[` / `]` work the same with any y-axis.
- **Log y-axis**: shows the frequency axis on a log scale (the zero-frequency row is left out). Clicking and the *max* box work the same.
- **Colour**: λ, λ normalised per case (by its maximum or by its integral over St), or the mode's share of the energy at each St. You can also pick the mode, the colour map and the y-axis maximum.
- **Log colour**: colours by log₁₀ of the chosen quantity, or linearly when off. It starts on for the λ options and off for the share; your choice is kept while you switch between the λ options. *Auto contrast* uses the 5th percentile to the maximum in log, and 0 to the maximum in linear.
- Files with different frequency grids (e.g. different Nfft) are interpolated onto the finest one.
- **Open a case**: click the waterfall to open that case in the main window at that St. The click snaps to the strongest bin within ±3 bins; hold Shift to use the exact bin. Double-clicking a case in the list opens it at the last chosen St. In the main window, `[` and `]` step to the previous and next case at the same St.
- **Export**: *Save figure…* saves a PNG; *Export CSV…* saves the plotted values (log or linear, as shown; a `# values:` line says which) by y-axis value and case.

## Large files and the mode cache

In some SPOD files, the modes are stored with all frequencies packed together. MATLAB chooses this layout for some array sizes; for example, Nfft 512 with a full 640 × 480 frame. In these files, showing one frequency means reading the whole file. So the first time you view a frequency, SPODViewer rewrites **modes 1 and 2** once into a *mode cache* on your computer:

- A box over the image says **Building mode cache**, with a progress bar, how much of the file has been read and the time left. It reads the whole file once. That takes from under a minute (if Windows already has the file in memory) to a minute or two from a hard drive for a 6 GB file, and longer from a network drive. After that, every frequency of those modes loads instantly.
- Each mode needs free disk space of frequencies × width × height × 8 bytes, e.g. 0.63 GB for 257 frequencies at 640 × 480, so modes 1 and 2 need 1.3 GB. If there isn't enough room, you get a message saying so.
- **Higher modes**: the Mode list marks modes that aren't cached yet as "(not cached)". When you choose one, SPODViewer asks first, because adding a mode means **reading the whole file again** (as long as the first build). You can cache just that mode, cache all the remaining modes in that same read (more disk space, but no further waits), or cancel and stay on the current mode. If you open a file straight at a higher mode (e.g. from the waterfall), that mode is included in the first build without asking.
- Help → File information lists which modes are cached.
- **Where**: `%LOCALAPPDATA%\SPODViewer\cache` by default. *Settings → Mode cache* shows the folder, how much it holds and the limit, and can open it.
- **Folder and maximum size**: *Settings → Mode cache → Folder and maximum size…* lets you choose another folder (e.g. a drive with more space; **Default** goes back) and set how much disk space the cache may use, from 10 to 100 GB (15 GB unless you change it). The dialog shows how much is in use and how much is free on that drive. Your choices are remembered.
- **Clean-up**: the cache is deleted when SPODViewer closes, so the next session builds it again. While the program runs, it keeps within the maximum size and deletes the least recently used cache first, including straight away if you lower the maximum. Only SPODViewer's own cache files (`.bin`, `.part`) are deleted, never anything else in the folder.
- If one file's cache would be larger than the maximum, it is not built, and a message tells you how big it needs to be. Raise the maximum to view that file.
- **Waterfall**: building a waterfall never creates caches. A file's cache is built only when you open that file in the main window (by clicking the waterfall, or with `[` / `]`).
- Most files don't need any of this. Help → File information shows how the open file's modes are stored (`P storage`).

## Settings

- **Memory cache size**: how much RAM is used to keep recently viewed frequencies (default 1024 MB).
- **Mode cache**: folder and maximum size, see above.
- **Prefetch neighbouring frequencies**: loads the frequencies either side of the current one in the background, so stepping with ←/→ is instant (on by default).

## Keyboard shortcuts

| Key | Action |
| --- | --- |
| ← / → | previous / next frequency bin |
| PgUp / PgDn | previous / next spectral peak |
| ↑ / ↓ | previous / next SPOD mode |
| Space | play / pause the phase animation |
| `,` / `.` | step the phase back / forward |
| D | cycle wave direction (all / downstream / upstream / custom k ranges) |
| K | wavenumber spectrum window |
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
- **Running out of disk space**: choose a cache folder on a larger drive, or lower the maximum size (Settings → Mode cache → Folder and maximum size…), or close SPODViewer to delete the cache.
- **"…the mode cache is limited to N GB"**: that file needs a bigger cache than the maximum. Raise it in the same dialog.
- **The image is all zero with Custom k ranges**: no range covers the mode's wavenumbers. Open the k-spectrum window (K) and add or move a range.
- **Windows SmartScreen warning on first run**: the program is not signed. Choose *More info → Run anyway* if you trust where the copy came from.
