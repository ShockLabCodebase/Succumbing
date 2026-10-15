# Schlieren_Processing_Scripts — code notes

Reference notes so the repo doesn't need re-reading. **Read-only repo: never modify it** (see CLAUDE.md).

- **Path:** `\\ad.monash.edu\home\User088\joellukw\Documents\Monash_Research_Fellow\Experiments\Shocklab_Codebases\Schlieren_Processing_Scripts`
- **Snapshot:** branch `main` @ `848091de` (read 2026-10-15). If HEAD has moved, re-check the files you rely on before trusting line numbers.
- **Coverage:** all top-level scripts plus the `Functions/` helpers they call, read in full. `Functions/Misc/` only listed (names at the end). `Functions/Wavelet_POD/` and `export_fig/` not read.
- The repo's own `README.md` is out of date: it uses old script names (`SPOD_for_mat_files.m`, `Schlieren_POD.m`, `BMD_for_mat_files.m`, `Schlieren_Hilbert_POD_Plots.m`, ...). Use these notes for current names.
- Line numbers (`file:L`) are from the snapshot above.

## 1. Common conventions

**Script style.** Each top-level file is a parameter-at-top script (not a function): `clear; close all`, `addpath(genpath("Functions"))`, edit parameters, run. Loops over every case in `Top_folders/<parent>/<main>/Data/*Fields.mat` (folders matched by wildcards `parent_folder_str`, `main_folder_str` through `get_parent_path`).

**Environment flags.**
- `using_MASSIVE = 1 - ispc` (Linux = MASSIVE HPC). On MASSIVE, ffmpeg via `module load ffmpeg/4.3.1`.
- `using_Market` (gvfs mount of the R-ENG-MAE-LTRAC-Jet-Noise share, found under `/tmp/*/gvfs/*jet-noise`). `move_files_to_market` saves locally then `mv`s, because saving straight to the mount corrupts files.
- Hard-coded paths differ per script and are whatever was last used: `/home/jweightman/qk75_scratch2/{JWeightman,Soudeh}`, `/Soudeh/Misc/`, `Q:\High_Speed_Schlieren\`, `M:\ONR_Twininess_Testing\`, `J:\`, the Monash UNC `...\Experiments\`. Always set paths before running.
- Output root `save_folder_outer` vs input root `Top_folders`: chains between scripts only work when these match (or files are moved).

**Filename tokens** (parsed by `get_filename_params`, loader, scripts):
- `_NPR_25` → NPR 2.5; `_Mj_15` → M_j 1.5. Decimal-free code: first digit = units, rest = decimals. Raw integer is what's saved as `NPR`/`M`; scripts decode as `value/10^(ndigits-1)`. NPR ≥ 10 can't be encoded. `get_filename_params` uses the last file's digit count for all cases.
- Mach token is **inconsistent**: `_Mj_` (loader, SPOD_Analysis, SPOD_Plots, reconstruction), `_M_` (symmetry scripts, `get_filename_params` also accepts `_M_`, `_Ma_`). `extractBefore(name,'_M')` can cut at `_Major`/`_Minor`.
- `Major` / `Minor` / `Angled` → axis label y / z / z*. `Twin` or `Canted` + `Major` with `_sD_<digits>_` → twin spacing, `nozzle_centre = s/2` (D units). `ONR`, `Ellip`, `Rect` → labels use D_e.

**Array conventions.**
- `*_Fields.mat`: `im_data` [n_y, n_x, n_t] int16 (background subtracted), `im_mean`, `x`, `y` [n_y, n_x] meshgrids **in D units** (comments saying mm are wrong), `D` in mm, `fps` Hz, `NPR` or `M` (integer code), `background`, `camera`. `x(1,:)` axial, `y(:,1)` transverse.
- Analysis scripts permute to (t, y, x) before SPOD/BMD.
- SPOD `P` is **[freq, y, x, mode]** (several headers wrongly say [freq, mode, y, x]). `L` [freq, mode]. `A` [freq, mode, block] (block-wise, not a time series).
- Data cast to single for SPOD; `get_symmetry` promotes to double.

**Strouhal number.** `get_ideal_jet_velocity_diameter.m`: cold jet (T0 = 293 K, γ = 1.4, R = 287), isentropic M_j from NPR (or given M), u_j = M_j·a_j, and for M_j > 1 **D_j = fully-expanded diameter for a sonic (M_d = 1) convergent nozzle** (L21–22) — not valid for C-D nozzles with M_d > 1. St = f·D_j·1e-3/u_j (D in mm). Exceptions: `Empirical_Dispersion` uses St = f·D/(M_j·c∞), c∞ = 340 m/s.

**Toolboxes used:** Signal Processing (`findpeaks`, `hamming`, `hann`, `hilbert`), Curve Fitting (`smooth`), Parallel (`parfor`, `parpool('threads')`, `spmd`), Image Processing (`corr2`, `imrotate`-style ops in `align_fields`). Helpers: `export_fig`, `savgol_diff`, `histweighted`, `CMRmap`, `pogmap`, `magma`.

## 2. Pipeline overview

```
raw (.mraw/.cihx Photron, .slow Pharsighted)
  └─ Schlieren_Load_to_mat ─► Data/<case>_Fields.mat
       ├─ SPOD_Analysis[_Symmetry_Enforced] ─► SPOD_Results/[Symmetry_Imposed/]Data/<cond>_Nt_..._Nfft_..._ovlp_...mat
       │    ├─ SPOD_Plots
       │    ├─ SPOD_Time_Frequency_Analysis[_Symmetry_Enforced]  (tcoeffs, needs raw Fields too)
       │    ├─ SPOD_Instantaneous_Time_Frequency_Analysis / _Plots (projection onto peak modes)
       │    ├─ SPOD_2D_Wavenumber_Spectrum_Analysis / _Simple
       │    ├─ Separate_Upstream_Downstream (k-sign split of SPOD modes → videos)
       │    ├─ BMD_Analysis[_Symmetry_Enforced] (uses SPOD peaks for spec-freqs) ─► BMD_Plots[...]
       │    └─ SPOD_Mode_Frequency_Reconstruction ─► Data_Reconstructed/<case>_SPOD_Reconstruction_...mat
       │           └─ Hilbert_POD_Analysis (use_reconstructed_data=true) ─► Hilbert_POD_Plots
       ├─ POD_Analysis[_Symmetry_Enforced] ─► POD_Results/[Symmetry_Imposed/]Data ─► POD_Plots
       ├─ Hilbert_POD_Analysis (raw data) ─► POD_Results/Hilbert/Data
       ├─ CCA_POD_Analysis (needs <cond>_Half_1/_Half_2_Fields) ─► POD_Results/CCA/Data
       └─ Empirical_Dispersion (needs *Imposed*Fields.mat)
Schlieren_Sample_Videos: quick preview mp4s.
```

## 3. Data loading — `Schlieren_Load_to_mat.m`

- **Layout:** `Top_folders/<parent>/<main>/Raw_Files/<case>`; case = `.slow` file or Photron folder (`.cihx` + `.mraw`). Backgrounds in `<main>/BGs/` (`BG_*.slow`/`BG_*.tif*`; subfolders like `BG_hD_30`, `BG_NPR_20_30` inclusive range, `BG_shadow` matched by `get_background`).
- **Outputs:** `save_folder_outer/<parent>/<main>/Data/<case>_Fields.mat` (v7.3, no compression) + `Figures/Statistics/<case>_Mean_Field.png/.fig`.
- **Camera specs** (`get_specs`): fps from `<recordRate>` or `fr_rate`, **rounded to nearest 10 Hz**. Defaults x_0 = 600, y_0 = 320 px, D = 12.1 mm, 0.25 mm/px. `n_snapshots_set` caps frames (0 = all).
- **Readers:** `Read_mraw` (int<bits>, permute to [y,x,t], **flips left–right**; 12-bit packed probably unsupported). `Read_slow` (4096-byte header, per-frame trailer, 8→9-bit companding decode, no flip). `Read_tiff` unused.
- **Alignment** (`align_fields`, runs if `auto_position ~= "none"` or `do_rotation`, default true): Gaussian-smoothed mean correlated against its own up–down flip over ±4° and ±60 px → rotate everything, recentre rows, rebuild y symmetric about the centre row. **Assumes top–bottom symmetric mean field.** With defaults, **the user's y_0 is discarded** (centre becomes detected axis). `"axial"`/`"both"` re-zeros x at the nozzle exit (first gradient peak of centreline) and crops 15 px upstream.
- **Background:** `use_bg` default false (zeros). Subtracted after alignment. Flat-field mode does int16./int16 → integer division (bug).
- `rotation_angle` not saved. `Functions/Rename_Photron_Folders.m` is a separate helper script (path hard-coded).

## 4. SPOD

### `SPOD_Analysis.m`
- **Params:** `n_snapshots_set=0`, `nfft=4096`, `overlap=50` (%), `modes_to_keep=4`, `set_frequencies=false` + `St_des` (±25 bins each), `restrict_memory=false` (→ `opts.savefft`, temp FFTs to disk), taper options `do_taper_spod=false` (→ `spod_adapt`), `nWin_set=10`, `is_broadband_only`, `do_compression`, `do_truncation`.
- **Steps:** load via `matfile` as single → store `im_mean` → permute (t,y,x) → u_j, D_j → St axis → `spod(im_data, nfft, [], nOvlp, dt, opts)` (or `spod_adapt`) → keep 4 modes as single.
- **Output:** `<save>/<main>/SPOD_Results/Data/<condition>_Nt_<N/1000>k_Nfft_<nfft>_ovlp_<ovl>.mat` (taper: `..._Adaptive_Sine_Taper` / `..._Sine_Taper_nWin_10`). Vars: `NPR|M, St, L, P, A, D, fps, overlap, nfft, n_snapshots, im_mean, x, y, f`, taper flags. Overlap formatted `_50.0` (NPR) vs `_50` (Mach).

### `SPOD_Analysis_Symmetry_Enforced.m`
- Same, but for `sym = symmetric_, antisymmetric_`: `get_symmetry` → SPOD on half domain → `undo_symmetry` → save `SPOD_Results/Symmetry_Imposed/Data/Symmetry_Imposed_<sym>_<cond>_Nt_..._Nfft_..._ovlp_50.mat` (+ `sym_type`). `nfft = 2^floor(log2(Nt/10))`. Only 2-region works (4-region prints a message).

### Core functions (`Functions/SPOD/`)
- `spod.m`: Schmidt/Towne (5-Sep-2022 multitaper version), modified (stamp "21-Aug-2025, B. Yeung" plus local changes). Hamming window, unit-power normalised; FFT × sqrt(dt) → L is PSD per Hz; one-sided L doubled except DC/Nyquist. Uniform weights. Subtracts long-time mean. Auto-switches to classical (spatial) POD when nx < nBlocks. `nsave` truncates in memory; savefft writes per block (`fft_block%04i`).
- `spod_adapt.m`: Yeung & Schmidt 2024 adaptive multitaper (sine tapers, one block of length nt, `tol=1e-6`). Memory heavy (2·nt × nx).
- `tcoeffs.m`: Nekkanti & Schmidt 2021 convolution coefficients, revised by Weightman (50k-snapshot chunks, parfor, vectorised, `St_ind` range). Per time step: project snapshots on modes, Hamming-windowed FFT of length nfft centred on t, keep the matching bin → a(f, mode, t) at the snapshot rate. Mean removed per chunk.
- `invspod.m`: Schmidt's, modified by Weightman. Signature `(P, A, nfft, nOvlp, n_modes_recon=[first,last], n_blocks)`. Per block: Σ P·A, conjugate-fill negatives, ×sum(w), ifft, ÷hamming; blocks combined by **running Hann-weighted average** (`w_glob`), valid for >50% overlap and avoids the Hamming edge (0.08) blow-up. Returns (t, y, x). Does not add the mean back.
- `invtcoeffs.m`: unmodified (Chu/Schmidt 2023). `spod_get_peaks.m`: ranks by energy (`maxk`); not called by the scripts.

### `SPOD_Plots.m`
- Flags: `symmetry_imposed`, `plot_all_mode_shapes` (true), `plot_spectra` (true), `plot_waterfall`, `plot_OAE`, `plot_specific_freq`, `produce_peak_video`.
- Mode shapes: `findpeaks` on L sorted by prominence (drop idx < 3), top `n_peaks=2` + St=0, modes 1–2, real P (pogmap) and |P| (CMRmap), titles with St and L/L_peak → `Figures/Mode_Shapes/`. Spectra: loglog L vs St, up to 100 modes → `Figures/Spectra/`. Peak videos: real(P·e^{iθ}) in 2.5° steps → mp4 (target St list hard-coded).

### `SPOD_Mode_Frequency_Reconstruction.m`
- **Params:** `do_specific=true` / `do_bandpass=false`, `n_modes_set=2`, `individual_frequencies=true`, `St_specified_outer=[0.42]`, `bandwidth_range_values=[0.05]`.
- **Method:** copy block-wise `A`, zero all rows outside the kept band (specific: St_target ± bw/2 snapped to bins, ≈2 bins wider than nominal; bandpass: strict lo < St < hi) → `invspod(P, A_passed, nfft, nfft*overlap/100, [1 n_modes], 0)` → single, permute to **[n_y, n_x, n_t]** (comments saying [t,y,x] are wrong).
- **Output:** `<save>/Data_Reconstructed/<case>_SPOD_Reconstruction_St_<St>.mat` (specific) or `..._Modes_1_<n>_Freq_<lo>_<hi>` (bandpass) / `..._Modes_1_<n>`; `_file_N` suffix if exists. Vars `St, L, D, fps, overlap, nfft, n_snapshots, im_mean, x, y, f, NPR|M, im_data` + filter metadata. Feeds `Hilbert_POD_Analysis`.

### Time–frequency
- `SPOD_Time_Frequency_Analysis.m`: loads SPOD file **and** the raw `<raw>_Fields.mat` (found via `extractBefore(path,'SPOD')`), `a = tcoeffs(im_data, P, nfft, [], n_modes=2, St_ind)` → `Time_Frequency/Data/<cond>_SPOD_Time_Frequency_Nfft_<n>_St_<lo>_<hi>_Modes_1_2.mat` with `a` [n_St, n_modes, n_t]. Plots pcolor(t, St, |a|). `freq_subset` + auto ±25 bins around peak, or `St_range`. Has an `input()` prompt (stalls batch jobs).
- `..._Symmetry_Enforced`: same on `get_symmetry` halves, P trimmed to `y_pos`.
- `SPOD_Instantaneous_Time_Frequency_Analysis.m`: **no Hilbert transform despite header.** Projects each snapshot onto SPOD mode 1 at the **top-10 peak frequencies** (`SPOD_imposed_projection_func`: a = Uᵀ·P), phase = unwrap(angle), f_inst = `savgol_diff` over ~25 mean periods, amplitude `smooth`ed. Columns = 10 peak frequencies, not mode ranks. No frequency selectivity beyond shape match.
- `SPOD_Instantaneous_Time_Frequency_Plots.m`: modes, phase portraits, energy, and amplitude/f_inst/St vs t + amplitude-weighted histogram spectrogram.

### Wavenumber spectra
- `SPOD_2D_Wavenumber_Spectrum_Analysis.m`: "2D" is a 1-D FFT in x (x ≥ 0 only, ×4 padding) of conj(P(peak,:,:,1)) at each y (`get_wavenumber`); **+k = downstream**. k_KH = max over +k, k_up = max over −k, at y = ±y_D (`set_own_y_D=0.5` overrides nozzle-based default). Shock wavenumbers k_s1, k_s2 from FFT of centreline mean (`load_mean_field_wavenumber`). Lines: k_KH − k_s1 (cyan), k_KH − k_s2 (magenta), ±k_a = 2π·M_j·St (white). Peaks from L(:,1) with idx ≥ 50, `n_peaks=4`. Saves `<cond>_Wavenumber_Spectrum.mat` (overwritten per peak).
- `..._Simple.m`: full x domain, ×16 padding, linear |FFT|, ±k_acoustic only, figures only. "Mode 1/2" in filenames = 1st/2nd **frequency peak** (always SPOD mode 1).

### `Separate_Upstream_Downstream.m` (`separate_flow_direction_function`)
- Input: real time series [y,x,t] or a complex SPOD mode. FFT in time (time-series case), conj, FFT in x (4·2^nextpow2 padding), zero half the k-plane (downstream keeps +k), inverse; k = 0 kept in both. Mode case → one cycle real(field·e^{−iφ}).
- Script picks 3 most prominent mode-1 peaks (or `St_specific_outer`), makes upstream/downstream mp4s in `SPOD_Results/Upstream_Downstream_Split/Videos/`. Loads `file.D_eff`, which standard SPOD files don't have (`D`).

## 5. POD family

- `simple_POD_func.m`: subtracts temporal mean, uniform weights, 100 modes kept (500 eigenvalues). Branch by shape: **snapshot** (n_pix ≥ n_t; φ = Uv/‖Uv‖), **direct** (n_pix < n_t, no ROI), **svds** otherwise (φ not normalised, a unit-norm — different scaling). `Energy` (%) normalised by the 500 retained eigenvalues only (inflated).
- **ROI flag** (POD, HPOD, CCA): 0 off; 1 basis from ROI, projected onto full field; 2 ROI only. `x_roi`, `y_roi` in D units.
- `POD_Analysis.m` → `POD_Results/Data/<cond>[_ROI_..]_POD_Modes.mat`: `Mode` (index vector), `Energy`, `POD_modes` [n_y, n_x, 100], `phi` [n_pix, 100], `a_n` [n_t, 100], `x`, `y`.
- `POD_Analysis_Symmetry_Enforced.m`: POD on `get_symmetry` halves, `undo_symmetry` back → `POD_Results/Symmetry_Imposed/Data/Symmetry_Imposed_<sym>_...`.
- `POD_Plots.m`: modes 1–4, |φ_k + iφ_{k+1}| for pairs, phase-portrait histograms (normalised by mean radius), energy.

### Hilbert POD — `Hilbert_POD_Analysis.m` + `hilbert_POD_func.m`
- **Time-direction Hilbert transform** per pixel over the whole record (not space-only HPOD), after mean removal; 100 samples trimmed from each end. POD of the complex analytic signal, 20 modes, same three branches as simple POD.
- Instantaneous quantities: phase = unwrap(angle(a)) (double); window = min(odd(P·fps/f_mean), 1001) with **P = 5 periods for reconstructed data, 25 for raw**; f = `savgol_diff(phase, window, 2, 1, dt)/2π`; amplitude = `smooth(|a|)`; ends padded.
- `use_reconstructed_data=true` (default) reads `<main>/Data_Reconstructed/` → the SPOD → reconstruct → HPOD pipeline. Repo README tip: SPOD with high overlap (87.5%) and small nfft, reconstruct ±~0.04 St around the peak, then HPOD.
- Output `POD_Results/Hilbert/Data/<cond>[ROI]_Hilbert_POD_Modes.mat`: `POD_modes` complex [n_y, n_x, 20], `phi`, `a_n` (=|a|), `a_n_complex`, `mode_inst_phase/freq/amp` [n_t', 20], `fps, dt, t, D, window_length, Energy, x, y`.
- `Hilbert_POD_Plots.m`: complex modes 1–6, phase portraits, mode-1 amplitude / f / St vs t, amplitude-weighted time–St histogram.
- `Functions/Misc/overlap_comparison_script.m` compares HPOD of reconstructions at nfft 512 vs 8192, overlap 50 vs 87.5.

### CCA POD — `CCA_POD_Analysis.m` + `CCA_POD_func.m`
- Canonical correlation between two halves (`<cond>_Half_1_Fields`, `_Half_2_Fields`; e.g. flapping/twin jets, half-2 y_roi mirrored). POD-filter each half (first modes to **50%** energy, comment says 90%, ≤ 100), optional time Hilbert, covariances C11, C22, C12, C^{-1/2} with regularisation + λ_max·I (strong → closer to max-covariance/PLS than true CCA), svds of C11^{-1/2}C12C22^{-1/2}. "Energy" = ρ²/Σρ². Dense n_pix² → small ROIs only. Output `POD_Results/CCA/Data/<cond>[ROI]_Half_i_CCA[_Hilbert]_POD_Modes.mat`.

## 6. BMD

- `BMD_Analysis.m`: `nfft=4096`, 50% overlap, Hamming, `use_spec_freqs=true` (only triads with f1, f2 both at SPOD peaks: `findpeaks(L(:,1),'MinPeakProminence',1e6)` — absolute, data-dependent threshold; matching SPOD file `*Nfft*<nfft>*`), `bicoherence=true`, regions [1 2], threads = maxNumCompThreads − 2. Calls `bmd_modified`. Output `BMD_Results/Data/<cond>_Nt_..._Nfft_..._ovlp_..[_Specfreqs].mat`: `B, P` (single, [2, n_triads, n_y, n_x]; P(1) bispectral mode at f3, P(2) cross-frequency field), `St, St1, St2, f, f1, f2, triadics` [f1 f2 f3], `triadics_St` (+col 4 = B), `T` (all NaN), `idx`, metadata.
- `bmd.m` (local) already modified vs Schmidt: `opts.specfreq`, `opts.nfreq` in Hz. `bmd_modified` adds: thread-pool `spmd` parallel triad loop, bicoherence normalisation, energy-transfer term disabled (T = NaN), mode shapes only for top min(1000, n) triads by |λ| (`idx` overwritten to match).
- `BMD_Analysis_Symmetry_Enforced.m` + `bmd_modified_Symmetry`: SPOD peaks from symmetry-imposed SPOD (fallback normal), St < 0.2 dropped, DC added; all sym1×sym2 combinations with f3 symmetry by product rule (verified correct); L [nFreq, nFreq, nSym²], P [2, n_triads, n_y_half, n_x, nSym²]; `undo_symmetry_bmd` → `BMD_Results/Symmetry_Imposed/Data/Symmetry_Imposed_...` with `symmetry_combination_result`, `f3_symmetry_list`. Ordering anti-first (POD/SPOD are sym-first).
- `BMD_Plots[_Symmetry_Enforced].m`: bispectrum scatter (spec-freqs) or pcolor; mode real/abs; interaction maps P(1).*P(2); symmetry version adds per-symmetry and comparison plots (assumes 2-region).

## 7. Symmetry helpers

- `get_symmetry(data, sym_type, z_zero, y_zero, y_size, y_odd, ...)`: 2-region ½(q(y) ± q(−y)) on half domain `y_pos`; sign rules per variable (light/u/p/T keep, v swapped, w keep). 4-region `SS_/SA_/AS_/AA_` quarter averages (from Yeung et al. 2022, y/z swapped). No mean subtraction (deliberate). Output double.
- `undo_symmetry` (SPOD/POD P), `undo_symmetry_bmd` (BMD P), `undo_symmetry_mean_only`, `undo_symmetry_alt`: mirror with signs; output height 2·y_half − y_odd (may differ from saved x, y, im_mean if the axis is off-centre).
- `correct_phase_between_halves.m`: grid-search phase aligning half-2 to half-1 mode (7 in / 7 out; some Misc callers use 6/4 → error).

## 8. Other

- `Empirical_Dispersion.m`: needs `Data/*Imposed*Fields.mat`. Lines at `line_locs` (absolute y/D) or `ginput`, 3-row average, conj FFT in x (×16), Welch in time (nfft 4096, Hann, no overlap) → 10·log10 PSD in (k_x·D, St) with St = f·D/(M_j c∞); white lines are ambient sonic lines ±ω/c∞. Figures only (`Figures/Empirical_Dispersion/`).
- `Schlieren_Sample_Videos.m`: preview mp4s (needs ≥ 300 frames, ffmpeg).
- `savgol_diff.m`: Savitzky–Golay derivative (Copilot-written), constant end padding biases end derivatives to 0.

## 9. Known issues (as of snapshot)

Fix in a copy here, never in the repo; tell the user so they can fix upstream.

**Will error as written**
- `SPOD_Analysis_Symmetry_Enforced` L85: `nfft` uses `n_snapshots` before defined.
- `SPOD_Mode_Frequency_Reconstruction` L222–225: calls `get_ideal_jet_velocity_diameter(..., D)` before D is loaded; `n_modes_set=0` breaks `n_modes_recon(2)`; bandpass branch uses undefined `bandwidth_range` and default `bandwidth_range_values` has one element; Mach branches broken (no mkdir, commented-out `save_file`, `_Mj_` vs `_M_`).
- `SPOD_Instantaneous_Time_Frequency_Analysis`: `fps, x, y, D, t` never loaded; errors if < 10 peaks.
- `SPOD_Instantaneous_Time_Frequency_Plots`: undefined `ROI`, `ii`; reads `Time_Frequency/Data`, analysis writes `Time_Frequency/Instantaneous/Data`.
- `SPOD_Time_Frequency_Analysis_Symmetry_Enforced`: `save_file`, `current_NPR/M` undefined.
- `SPOD_2D_Wavenumber_Spectrum_Analysis` L403: `ii` undefined.
- `Hilbert_POD_Plots` L133–153: `using_npr`, `case_list`, `ii` undefined.
- `CCA_POD_Analysis` L253–257, L306–310: undefined `mode_inst_phase`.
- `BMD_Analysis_Symmetry_Enforced` L290: `data_sym` undefined; `z` never loaded (4-region/z-symmetry paths dead).
- `Separate_Upstream_Downstream` L143: `file.D_eff` not in SPOD outputs.
- `SPOD_Plots`: waterfall (L391) and OAE broken for >1 case; peak-video cleanup uses undefined `N`, `filename`.
- `spod.m` with `restrict_memory=true` (snapshot branch L395): A size mismatch when nsave < nBlocks; temp FFT files never found/deleted (name mismatch L227/281/434).

**Silently wrong**
- `bmd_modified_Symmetry` L240/313: L initialised with zeros not NaN before `spmdReduce(@addnan)` → with >1 worker most triads become 0.
- `set_frequencies` in SPOD scripts is overridden (`opts.savefft` reset) → ignored unless `restrict_memory`.
- Taper SPOD saves St built from nfft=4096 while `spod_adapt` uses nDFT = nt (St mismatch with L).
- HPOD snapshot/svds branches (`hilbert_POD_func` L115, L161) and CCA (`a = Xᴴφ`) return conjugated coefficients → instantaneous frequency sign flipped (hidden by `abs`). Instantaneous SPOD projection likewise uses Uᵀ·P without conj.
- Stale variables between cases: `triadics` (BMD), `L_peaks_inds` (Separate).
- Flat-field background: integer division.
- D_j formula assumes M_d = 1.
- Wavenumber Analysis: magenta line in fig 2 uses k_s1 again (L425); "Abs"/"Log" filenames swapped; saved MAT overwritten per peak; `use_mean_band`, `band_range`, `y_width` have no effect.
- `tcoeffs` Windows path: `X_proj` not cleared between 50k chunks (affects > 50k snapshots on Windows).
- POD `Energy` inflated (normalised by 500 retained eigenvalues); svds branch scaling differs.
- Axis labels swapped in phase portraits (POD_Plots L225–234, Hilbert_POD_Plots L275–293, Instantaneous plots L340–341).

**Unverified / disputed**
- Possible amplitude-scaling mismatch: `spod.m` now uses a unit-power window × sqrt(dt), while `invspod`/`tcoeffs` use the old Hamming `1/mean(w)` normalisation → reconstructed amplitudes may be off by a constant (~sqrt(dt)·sum(w)/‖w‖). One reader thought amplitude was consistent. Check numerically (reconstruct vs original at a tone) before trusting absolute amplitudes; relative/shape results unaffected.
- `spod_adapt` divides modes by an extra sqrt(nSamples) (modes not unit-norm); `spod.m` classical branch A scaling differs from snapshot branch.
- `.slow` cases with NPR token last in the filename may fail to parse.

## 10. `Functions/Misc/` (not read; names only)

Acoustic_Wave_Test, autocorr_offset(_V2), Bandpass_Filter_Test, BMD_Contribution, Buzzing_Mode_Shape_Comparison_Video, Centreline_Comparison, Check_Symmetry, Combining_Fields, compare_centrelines, compare_spod_spectra, Comparison_of_ROI_SPOD_Spectra, Convert_SPOD_Spectra_to_Acoustics, Create_Reference_figs_for_scaling, create_waves_1, Fix_Alignment, Fix_Diameter, Freq_hunt, Generate_Twin_Half_Slices_POD_HPOD_Fields, Half_Slices_Hilbert_POD_Analysis, Half_Slices_NonHilbert_Instantaneous_POD_Analysis, Half_Slices_SPOD_Imposed_POD_Analysis, load_mean_field_wavenumber, Optimal_Region_Test_HPOD, overlap_comparison_script, POD_Convergence, Quick_HPOD_Interaction_Check, Quick_Video_Maker, SampleDensityField, Schlieren_Adjust_xy_Old_mat, Schlieren_Axis_Switching, Schlieren_Hilbert_POD_Plots_Compare_Modes, Schlieren_Velocimetry, Schlieren_Videos_from_Zip, Split_Animation, standalone_symmetry_imposing, Synthetic_Beating_Analysis, Synthetic_waves_POD, Update_old_datafiles, Use_ImageJ.

Also unread: `Functions/Wavelet_POD/` (Schlieren_POD_Wavelet_Analysis, faslt superlet transform, wavelet_demonstration).
