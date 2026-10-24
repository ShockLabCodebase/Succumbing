%================================================================================
% PURPOSE:
%   Compute instantaneous time-frequency analysis on SPOD modes by projecting
%   raw schlieren snapshots onto SPOD spatial modes, then extracting instantaneous
%   frequency from the phase of the (complex) projection coefficients.
%
% PATCH 2026-10-23 (Codebase_Patches):
%   - fps, x, y and D are read from the SPOD file and t is built (they were
%     never loaded, so the script errored at dt = 1/fps).
%   - Fewer than 10 peaks no longer errors (n_peaks_max = 10 is a cap).
%   - Mach cases: _Mj_/_M_/_Ma_ detected; the output name used undefined
%     save_file and current_M.
%   - n_snapshots is no longer overwritten by the first case's frame count.
%   - The projection uses conj(P) (a = P^H q, as tcoeffs), so the phase turns
%     the right way and f_inst > 0; it was a = P^T q (frequency sign flipped,
%     hidden by abs(mean(...))). SPOD_imposed_projection_func also works in
%     pixel blocks now (no full mean-subtracted copy of the data).
%   - St_peaks (St of each projected mode) is saved.
%   - There is no Hilbert transform: projecting onto a complex SPOD mode
%     already gives a complex coefficient, whose phase and modulus are used.
%
% HIGH-LEVEL WORKFLOW:
%   1. Discover SPOD result files (*Nfft*.mat) in SPOD_Results/Data/ directories
%   2. Load raw schlieren snapshots (*Fields.mat) and SPOD modes P (eigenvalues L)
%   3. Identify top N dominant frequency peaks from eigenvalue spectrum L(:,1)
%   4. Extract spatial SPOD modes P[f_peak,:,:,mode_1] at dominant frequencies
%   5. Project snapshots onto SPOD modes via inner product to get temporal coefficients
%      a_n(t) = ∫∫ im_data(y,x,t) · P(y,x) dA
%   6. (no Hilbert transform: a_n is already complex)
%   7. Extract instantaneous phase φ(t) = angle(a_n)
%   8. Compute instantaneous frequency f_inst(t) = (1/2π) dφ/dt via Savitzky-Golay differentiation
%   9. Apply smoothing to temporal frequency to reduce noise; pad boundaries
%  10. Save mode projections, instantaneous phase/frequency/amplitude fields
%
% OUTPUT FILES:
%   - {nozzle}_{NPR/M}_SPOD_Instantaneous_Time_Frequency.mat
%     Saved in: {main_folder}/SPOD_Results/Time_Frequency/Instantaneous/Data/
%     Variables: Mode [scalar] spatial mode index analyzed
%                Energy [n_freq] eigenvalue magnitude (energy per frequency)
%                POD_modes [n_y,n_x,n_modes] spatial SPOD modes
%                P [n_modes,n_y,n_x] subset of SPOD mode shapes (top 10 peaks)
%                L [n_freq,n_modes] full eigenvalue tensor
%                mode_peak_index [n_modes] frequency indices of peaks
%                a_n_complex [n_time,n_modes] complex temporal coefficients
%                mode_inst_phase [n_time,n_modes] unwrapped instantaneous phase [rad]
%                mode_inst_freq [n_time,n_modes] instantaneous frequency [Hz]
%                mode_inst_amp [n_time,n_modes] instantaneous amplitude envelope
%                x, y: spatial coordinate grids [D]
%                fps, dt: temporal sampling parameters [Hz], [s]
%                D: nozzle diameter [mm]
%                t: time axis [s]
%
% KEY PHYSICAL QUANTITIES:
%   - Instantaneous phase: φ(t) = angle(a_n + i·H[a_n]) [rad]
%     Unwrapped to remove 2π discontinuities
%   - Instantaneous frequency: f_inst(t) = (1/2π) dφ/dt [Hz]
%     Computed via Savitzky-Golay differentiation for smoothing
%   - Instantaneous amplitude: A(t) = |a_n_analytic(t)| [units of im_data]
%     Smoothed over adaptive window to reduce noise
%   - Window length: 2·floor((25·(1/f_mean)·fps)/2) + 1 samples
%     Rationale: ~25 cycles to balance frequency resolution vs. time localization
%
% DESIGN RATIONALE:
%   - Hilbert transform converts real signal to analytic (complex) representation
%     where phase/frequency info is extracted. Unlike FFT, maintains spatial localization.
%   - Instantaneous frequency captures frequency modulation (e.g., frequency sweeps,
%     beating between modes) that cannot be resolved by standard FFT.
%   - Savitzky-Golay differentiation of unwrapped phase: noise-robust alternative
%     to simple finite differences; preserves fine structure better.
%   - Adaptive window length: proportional to 1/f_mean to match modal timescale.
%
%================================================================================

clear; close;

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

%% ======================== COLORMAP SELECTION ========================
% Load custom colormaps for spectral/temporal visualizations
sCMRmap = CMRmap;   % sCMRmap: [n_colors,3] sequential colormap (frequency/amplitude)
cmap = pogmap;      % cmap: [n_colors,3] alternative colormap (reserved for future use)

%% ======================== ENVIRONMENT CONFIGURATION ========================
% Detect execution environment and SPOD results storage location
% Adjust file I/O paths and data discovery accordingly

using_MASSIVE = 1-ispc;       % using_MASSIVE: boolean, true if Linux HPC, false if Windows PC
using_Market = false;         % using_Market: boolean, snapshot data on shared network drive
SPOD_on_Market = false;       % SPOD_on_Market: boolean, true = SPOD results on network
                              % false = SPOD results in local save_folder_outer

%% ======================== DIRECTORY CONFIGURATION ========================
% Specify folder hierarchy for SPOD result discovery and output staging
% Hierarchy: Top_folder / parent_folder / main_folder / SPOD_Results / Data / *.mat
%   Each main_folder contains: SPOD_Results/Data/ (SPOD results)
%                             Time_Frequency/Instantaneous/Data/ (output)
% Expected structure: parent folders by jet type (Axisymmetric, etc.)
%                    main folders by nozzle config (e.g., *sD_225* for spacing)

% Top-level data location (change to point to your SPOD results root)
% For MASSIVE: path relative to LTRAC-Jet-Noise/ root
Top_folders = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren"  % Top_folders: string, SPOD results root directory
                               % Adjust path for MASSIVE vs. Windows local storage

% Output staging location (local scratch for HPC, or local disk)
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren"
% save_folder_outer: string, root output directory for instantaneous analysis
% NOTE: On MASSIVE, use /scratch or similar fast local filesystem

% Wildcard patterns to select specific dataset subsets
parent_folder_str = "*ONR*"; % parent_folder_str: regex, selects by jet type
main_folder_str = "*7592*";         % main_folder_str: regex, selects by nozzle config

% Discover all parent folder and corresponding save folder paths matching criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,...
    save_folder_outer,using_MASSIVE,using_Market);
% get_parent_path handles path resolution on MASSIVE/Windows and checks availability

%% ======================== INSTANTANEOUS FREQUENCY ANALYSIS PARAMETERS ========================
% Control snapshot count and frequency peak selection for processing
% MEMORY/PERFORMANCE NOTE:
%   - Full mode projection: O(N_snapshots × n_y × n_x × n_modes) per case
%   - Typical: N=50k snapshots, [1024,512] spatial grid, 10 modes → ~5–10 GB
%   - Hilbert transform: 10 FFTs per mode (expensive)
%   - Recommended: n_snapshots ≤ 10k for first-pass analysis; 50k+ for publication
%   - Estimated runtime: 10–30 minutes per case on modern CPU

% Limit number of snapshots if desired, otherwise set to 0 for all available
n_snapshots = 0;  % n_snapshots: scalar int, max frames to load per case
n_peaks_max = 10; % n_peaks_max: most prominent L(:,1) peaks to project onto (fewer if fewer exist)
                  % Set to 0 to load all available frames. Typical: 0, 10k, 50k.
                  % Tradeoff: larger → better temporal resolution but slower

%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over parent folders (jet types) → main folders (nozzle configs)
% For each: locate SPOD results, then process cases with instantaneous analysis

for m = 1:length(parent_folders)

    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Discover main folders (nozzle configurations) matching pattern
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];  % Keep directory entries only
    main_folders = main_folders(sf);
    
    %% ===================== PER-MAIN-FOLDER LOOP =====================
    % Process each main folder (nozzle config): discover and analyze all cases

    for k = 1:length(main_folders)
        main_folder_market = fullfile(parent_folder,main_folders(k).name,'SPOD_Results');
        
        % Handle two directory layouts: SPOD results on network (Market) or local
        if SPOD_on_Market
            % SPOD results on network shared drive
            main_folder = main_folder_market;
            save_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results','Time_Frequency','Instantaneous','Data');
        else
            % SPOD results in local scratch directory
            main_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results');
            save_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results','Time_Frequency','Instantaneous','Data');
        end

        mkdir(save_folder);  % Ensure output directory exists

        SPOD_dir = fullfile(main_folder,'Data');  % SPOD MAT files in Data/ subfolder

        %% Locate SPOD result files matching pattern
        suffix = strcat('*Nfft*.mat');  % File pattern: SPOD result files
        case_list = dir(fullfile(SPOD_dir,suffix));
        case_list = {case_list.name};  % case_list: string array of filenames
        if isempty(case_list)
            warning("No SPOD files (%s) in %s", suffix, SPOD_dir);
            continue
        end
    
        %% Detect operating-parameter convention (NPR vs Mach number)
        % Heuristic: examine first case name for delimiter '_NPR_' or '_Mj_'/'_M_'/'_Ma_'
        if contains(case_list{1},'_NPR_')
            using_npr = true;   % Dataset indexed by pressure ratio
        elseif ~isempty(regexp(case_list{1},'_(Mj|M|Ma)_\d','once'))
            using_npr = false;  % Dataset indexed by Mach number
        else
            error("Can't tell NPR from Mach in %s", case_list{1});
        end
    
        %% Parse operating-point parameters and nozzle identifiers from filenames
        % get_filename_params extracts: nozzle_list, NPR/M arrays, and scaling factors
        if using_npr
            [nozzle_list, NPR, NPR_factor] = get_filename_params(using_npr, case_list);
        else
            [nozzle_list, M, M_factor] = get_filename_params(using_npr, case_list);
        end

        %% ===================== PER-CASE PROCESSING LOOP =====================
        % For each operating condition: load SPOD modes and project snapshots

        for i = 1:length(case_list)  
    
            %% Load SPOD result file using matfile (efficient partial read)
            % Contains: L (eigenvalues), P (mode shapes), St (Strouhal), etc.
            load_file = fullfile(SPOD_dir,case_list{i});
            spod_data = matfile(load_file);  % spod_data: matfile object for lazy loading
    
            %% Construct output filename based on operating condition
            if using_npr
                fileout = fullfile(save_folder,strcat(nozzle_list{i},'_NPR_',num2str(NPR(i)),...
                    '_SPOD_Instantaneous_Time_Frequency.mat'));
            else
                fileout = fullfile(save_folder,strcat(nozzle_list{i},'_Mj',num2str(M(i),strcat('_%.',num2str(M_factor),'i')),...
                    '_SPOD_Instantaneous_Time_Frequency.mat'));
            end
    
            % Skip if result already exists (avoid re-computation)
            if exist(fileout) == 2
                case_list{i}
                'File already exists'
                continue
            end
            
            %% Load raw schlieren snapshot data for modal projection
            % Extract raw filename from SPOD result name and load associated *Fields.mat
            % Rationale: need original snapshots to project onto SPOD modes
            raw_filename = extractBefore(case_list{i},'_Nt');
            file = matfile(fullfile(extractBefore(main_folder_market,'SPOD'),'Data',[raw_filename,'_Fields.mat']));
            % file: matfile object for lazy loading of snapshot data
    
            %% Determine snapshot count and load image stack
            % Cap to n_snapshots limit if set; otherwise use all available
            im_size = size(file,'im_data');  % im_size: [n_y, n_x, N_total]
            if n_snapshots == 0
                n_use = im_size(3);  % Use all available frames
            else
                n_use = min([n_snapshots,im_size(3)]);  % Cap to limit
            end

            % Load snapshot stack (first n_use frames only)
            im_data = file.im_data(:,:,1:n_use);  % im_data: [n_y,n_x,n_use]

            % Grid and sampling from the SPOD file
            fps = spod_data.fps;
            D = spod_data.D;
            x = spod_data.x;
            y = spod_data.y;
            St_all = spod_data.St;
            t = (0:n_use-1)'/fps;  % t: [n_use,1] time [s]

            %% Load SPOD eigenvalues and identify dominant frequency peaks
            % Eigenvalues L rank modal energy; peaks indicate energetic frequencies
            % Rationale: focus on dominant frequencies to reduce computation time
            L = spod_data.L;  % L: [n_freq,n_modes] eigenvalues
            spod_mode_n = 1;  % spod_mode_n: scalar, spatial mode index (use mode 1: most energetic)
    
            %% Identify frequency peaks from mode 1 eigenvalue spectrum
            % findpeaks locates local maxima; sort by prominence (magnitude)
            [mode_peaks,mode_peak_index,~,mode_peak_prominence] = findpeaks((L(:,spod_mode_n)));
            % mode_peak_index: frequency indices where peaks occur
            
            [mode_peak_prominence,sort_inds] = sort(mode_peak_prominence,'descend');
            mode_peaks = mode_peaks(sort_inds);
            mode_peak_index = mode_peak_index(sort_inds);
    
            % Filter out spurious low-frequency peaks (index < 3, typically noise floor)
            mode_peak_prominence(mode_peak_index < 3) = [];
            mode_peaks(mode_peak_index < 3) = [];
            mode_peak_index(mode_peak_index < 3) = [];

            %% Extract SPOD modes at dominant frequency peaks (top 10)
            % Limit to 10 modes to manage memory and computation time
            % Rationale: top frequencies typically contain >95% of energy
            n_peaks = min(n_peaks_max, numel(mode_peak_index));
            if n_peaks < n_peaks_max
                fprintf('Only %d peaks in L(:,1); projecting onto those\n', n_peaks);
            end
            mode_peak_index = mode_peak_index(1:n_peaks);
            St_peaks = St_all(mode_peak_index);
            P = [];  % P: [n_modes,n_y,n_x] spatial mode shapes (top n_peaks)
            for jj = 1:n_peaks
                P(jj,:,:) = spod_data.P(mode_peak_index(jj),:,:,spod_mode_n);
            end

            %% ===================== MODAL PROJECTION VIA INNER PRODUCT =====================
            % Project snapshots onto SPOD modes to obtain temporal coefficients
            % a_n(t) = ∫∫ im_data(y,x,t) · P(y,x) dA (computed in SPOD_imposed_projection_func)
            % Design intent: extract mode amplitudes as functions of time
            
            fprintf('Starting POD Processing\n')
            [POD_modes,a_n_complex,Energy,Mode] = SPOD_imposed_projection_func(im_data,P);
            % POD_modes: [n_y,n_x,n_modes] spatial mode shapes (from snapshot SVD)
            % a_n_complex: [n_time,n_modes] complex temporal coefficients
            % Energy: [n_modes] energy ranking
            % Mode: scalar or vector, mode index info
    
            %% ===================== INSTANTANEOUS FREQUENCY EXTRACTION =====================
            % For each mode, compute instantaneous phase/frequency via Hilbert transform
            % Design intent: capture frequency modulation and time-localized frequency content
            
            mode_inst_phase = [];   % mode_inst_phase: [n_time,n_modes] instantaneous phase [rad]
            mode_inst_freq = [];    % mode_inst_freq: [n_time,n_modes] instantaneous frequency [Hz]
            mode_inst_amp = [];     % mode_inst_amp: [n_time,n_modes] instantaneous amplitude envelope
            a_n = []; window_length = [];  % reset between cases
            dt = 1/fps;             % dt: sampling interval [s]
            
            for j = 1:size(a_n_complex,2)
                %% Compute instantaneous phase from temporal mode coefficient
                % phase(t) = angle(a_n(t)) gives wrapped phase in [-π,π]
                mode_inst_phase(:,j) = angle(a_n_complex(:,j));
                % Unwrap to remove 2π discontinuities (jumps)
                mode_inst_phase(:,j) = unwrap(mode_inst_phase(:,j));
                % mode_inst_phase: [n_time] unwrapped phase [rad, continuous]

                % Magnitude of complex amplitude (envelope)
                a_n(:,j) = abs(a_n_complex(:,j));
    
                %% Compute instantaneous frequency via phase gradient
                % f_inst = (1/2π) dφ/dt where φ is unwrapped phase
                % Initial estimate: simple gradient (may be noisy)
                mode_inst_freq(:,j) = 1/(2*pi)*(gradient(mode_inst_phase(:,j),dt));
                % mode_inst_freq: [n_time] frequency [Hz] from gradient
    
                %% Refine frequency estimate using Savitzky-Golay differentiation
                % Rationale: SavGol filtering of phase derivative better than direct gradient
                % Preserves signal features while reducing noise
                % Window length proportional to 1/f_mean for appropriate smoothing
                mean_freq = abs(mean(mode_inst_freq(:,j)));  % Mean frequency of this mode [Hz]
                window_length(j) = 2 * floor((25 * 1/mean_freq * fps) / 2) + 1; % Odd window
                polyorder = 2; % Quadratic fit for local derivative
                
                % SG-filtered frequency derivative (better than naive gradient)
                mode_inst_freq(:, j) = 1/(2*pi) * savgol_diff(mode_inst_phase(:, j), ...
                    window_length(j), polyorder, 1, dt);
                
                % Handle edge effects: replicate boundary values from interior
                mode_inst_freq((1:(window_length(j)+1)/2), j) = mode_inst_freq((window_length(j)+1)/2 + 1, j);
                mode_inst_freq((end-(window_length(j)+1)/2+1:end), j) = mode_inst_freq(end-(window_length(j)+1)/2, j);
    
                % Compute amplitude envelope with same smoothing as frequency
                mode_inst_amp(:,j) = smooth(a_n(:, j), window_length(j));

                % Handle edge effects: replicate boundary values from interior
                mode_inst_amp((1:(window_length(j)+1)/2), j) = mode_inst_amp((window_length(j)+1)/2 + 1, j);
                mode_inst_amp((end-(window_length(j)+1)/2+1:end), j) = mode_inst_amp(end-(window_length(j)+1)/2, j);

                mode_inst_phase(:, j) = smooth(mode_inst_phase(:, j), window_length(j));

                % Handle edge effects: replicate boundary values from interior
                mode_inst_phase((1:(window_length(j)+1)/2), j) = mode_inst_phase((window_length(j)+1)/2 + 1, j);
                mode_inst_phase((end-(window_length(j)+1)/2+1:end), j) = mode_inst_phase(end-(window_length(j)+1)/2, j);
            end
    
            %% ===================== SAVE INSTANTANEOUS FREQUENCY RESULTS ========================
            % Persist computed modal projections and instantaneous phase/frequency/amplitude
            
            fprintf('Saving\n')
            
            % Save modal analysis results for post-processing and visualization
            % Variables: Mode [scalar] mode index
            %            Energy [n_modes] energy ranking per mode
            %            POD_modes [n_y,n_x,n_modes] spatial mode shapes (from snapshot SVD)
            %            P [n_modes,n_y,n_x] SPOD mode shapes (input subset)
            %            L [n_freq,n_modes] SPOD eigenvalues (full spectrum)
            %            mode_peak_index [n_modes] frequency indices of selected peaks
            %            a_n_complex [n_time,n_modes] temporal complex coefficients (analytic signal)
            %            mode_inst_phase [n_time,n_modes] unwrapped phase [rad]
            %            mode_inst_freq [n_time,n_modes] instantaneous frequency [Hz]
            %            mode_inst_amp [n_time,n_modes] smoothed amplitude envelope
            %            x, y: spatial coordinate grids [D]
            %            fps, dt: sampling parameters [Hz], [s]
            %            D: nozzle diameter [mm]
            %            t: time axis [s]
            save(fileout,'Mode','Energy','POD_modes','P','L','mode_peak_index','St_peaks','a_n_complex','x','y',...
                'mode_inst_phase','mode_inst_freq','mode_inst_amp','fps','dt','D','window_length','t','-v7.3','-nocompression');
            fprintf('Saved Total\n');
            clearvars U_n
        end
    end
end