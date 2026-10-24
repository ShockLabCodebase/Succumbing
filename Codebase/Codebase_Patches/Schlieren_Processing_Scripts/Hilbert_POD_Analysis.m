%================================================================================
% PURPOSE:
%   Compute Hilbert-filtered Proper Orthogonal Decomposition (Hilbert-POD) on
%   snapshot data from *Fields.mat files. Combines analytic signal filtering
%   via Hilbert transform with POD to extract frequency-localized structures.
%
% HIGH-LEVEL WORKFLOW:
%   1. Load schlieren snapshot data from *Fields.mat files (spatial snapshots)
%   2. Apply Hilbert transform to each snapshot to construct analytic signal
%   3. Extract amplitude envelope (magnitude) of the analytic signal
%   4. Compute POD on the envelope field to find dominant spatial structures
%   5. Extract instantaneous phase and frequency from complex modal coefficients
%   6. Save Hilbert-POD modes, eigenvalues, and temporal evolution to MAT file
%
%
% ALTERNATIVE WORKFLOW:
%   1. Apply SPOD analysis of the schlieren data *Fields.mat files
%   2. Use a high overlap (87.5%) and the smallest Nfft that still separates the peaks, such that a
%   bandpass filter can be applied via SPOD_Mode_Frequency_Reconstruction.m
%   3. Apply Hilbert transform to each snapshot to construct analytic signal
%   4. Apply this script to the reconstructed data (located in "Data_Reconstructed" folder) by setting use_reconstructed_data to true.
%   5. Extract amplitude envelope (magnitude) of the analytic signal
%   6. Compute POD on the envelope field to find dominant spatial structures
%   7. Extract instantaneous phase and frequency from complex modal coefficients
%   8. Save Hilbert-POD modes, eigenvalues, and temporal evolution to MAT file
%
% SPOD CONVOLUTION WORKFLOW (data_source = "spod_tcoeffs", added 2026-10-23):
%   1. Run SPOD_Analysis.m on the *Fields.mat files (spod_nfft below must match)
%   2. This script projects the raw data onto the SPOD modes in a band around
%      each St_specified (bandwidth and n_modes_set as in
%      SPOD_Mode_Frequency_Reconstruction.m) with tcoeffs: a sliding,
%      windowed SPOD coefficient at every time step. The band field
%      sum P*a is analytic, so no Hilbert transform is needed, and its POD
%      is computed directly (hpod_from_spod_tcoeffs).
%   Compared with reconstructing by invspod first, there are no block joins,
%   which put a floor on the instantaneous-frequency error
%   (Codebase/HPOD_Switch_Benchmark). No Data_Reconstructed files are needed.
%
% PATCH 2026-10-23 (Codebase_Patches):
%   - data_source replaces use_reconstructed_data: "raw" (Data/), "reconstructed"
%     (Data_Reconstructed/, the invspod route) or "spod_tcoeffs" (above).
%   - ROI index lookups take the first of two equidistant grid points.
%
% OUTPUT:
%   - POD_modes: [n_y, n_x, n_modes] complex spatial mode shapes (amplitude envelope)
%   - a_n_complex: [n_snapshots, n_modes] complex modal time series (mag=envelope, phase=osc)
%   - Energy: [n_modes] modal energy percentage (singular values squared)
%   - mode_inst_phase: [n_snapshots, n_modes] unwrapped instantaneous phase (radians)
%   - mode_inst_freq: [n_snapshots, n_modes] instantaneous frequency (Hz, Savitzky-Golay filtered)
%   - MAT files saved to POD_Results/Hilbert/Data/ subdirectory
%
%================================================================================

clear; close;

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

%% ======================== SETUP: COLORMAPS AND UTILITY PATHS ========================
% Load custom colormaps for visualization (though not used in this analysis script)
sCMRmap = CMRmap;  % sCMRmap: [m, 3] sequential colormap for magnitudes
cmap = pogmap;     % cmap: [m, 3] diverging colormap for signed quantities

%% ======================== ENVIRONMENT CONFIGURATION ========================
% Detect execution environment: HPC Linux cluster vs. local PC
% Adjust file path conventions and I/O behavior accordingly
using_MASSIVE = 1-ispc; % using_MASSIVE: boolean, true if Linux (MASSIVE HPC)
using_Market = false;   % using_Market: boolean, true if files on shared network drive

%% ======================== DIRECTORY CONFIGURATION ========================
% Specify folder hierarchy for case discovery and output staging
% Hierarchy: Top_folder / parent_folder / main_folder / Data / *Fields.mat

Top_folders = "/home/jweightman/qk75_scratch2/JWeightman/"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                                      % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/"; % Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = "*Schliere*";      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = ["*mitt*"];      % main_folder_str: regex pattern (select by nozzle config)

% Retrieve all parent and corresponding save folder paths matching criteria
[parent_folders, save_folders] = get_parent_path(Top_folders, parent_folder_str, ...
    save_folder_outer, using_MASSIVE, using_Market);

%% ======================== HILBERT-POD ANALYSIS PARAMETERS ========================
% Control memory usage and optional spatial region restriction
n_snapshots_set = 0;  % n_snapshots: max snapshots to load (0 = use all available)
                      % Rationale: Balance between accuracy (more snapshots)
                      % and memory/runtime (fewer snapshots). 50k is ~8-16 GB

data_source = "reconstructed";  % data_source: what the Hilbert POD is applied to
                                %   "raw":           the *Fields.mat data in Data/ (Hilbert transform in time)
                                %   "reconstructed": SPOD reconstructions in Data_Reconstructed/ (from
                                %                    SPOD_Mode_Frequency_Reconstruction.m, invspod route)
                                %   "spod_tcoeffs":  a band isolated from the Data/ files with SPOD
                                %                    convolution coefficients (tcoeffs); settings below

% data_source = "spod_tcoeffs" settings (same meaning as in SPOD_Mode_Frequency_Reconstruction.m)
spod_nfft = 1024;               % nfft of the SPOD_Results/Data file to use (*_Nfft_<spod_nfft>_*)
St_specified = [0.42];          % band centre(s) in St; one output file per entry
bandwidth_St = 0.05;            % full band width in St: bins within St_specified +/- bandwidth_St/2
n_modes_set = 2;                % SPOD modes per frequency bin (0 = all saved modes)

% Optional: restrict analysis to axial region of interest (ROI)
ROI = 0;  % 0, 1, or 2. 0 for off, 1 for below region bounds for analysis, 
          % but projected against full field, 2 skips full field projection
x_roi = [0,100];      % Axial bounds [nozzle diameters]
y_roi = [-10,10];      % Transverse bounds [nozzle diameters]

zD = [2.0,3.0,3.5];

%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over each parent folder (e.g., Major axis, Minor axis configurations)
% For each: locate main folders matching criteria, then process snapshot data
changed_y_roi = false;

for m = 1:length(parent_folders) % m: loop over parent folders (flow axis types)
    
    % Construct full parent folder path and discover matching main folders
    parent_folder = fullfile(parent_folders(m).folder, parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);
   
    % Locate all subfolders matching main_folder_str pattern (e.g., "*sD_225*")
    % These represent different nozzle configs, pressures, or operating conditions
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir]; % Filter to keep only directories
    main_folders = main_folders(sf);
    
    %% ===================== NESTED LOOP: PROCESS EACH OPERATING CONDITION =====================
    % For each main folder (operating condition):
    %   1. Locate all *Fields.mat snapshot files in Data/ subdirectory
    %   2. For each fields file: apply Hilbert transform and compute POD
    %   3. Extract instantaneous phase/frequency from modal coefficients
    %   4. Save decomposition results to POD_Results/Hilbert/Data/
    for k = 1:length(main_folders) % k: loop over main folders (e.g., different NPR settings)
        
        % Construct file paths for input (Data/) and output (POD_Results/)
        if data_source == "reconstructed"
            data_folder = "Data_Reconstructed";
        elseif data_source == "raw" || data_source == "spod_tcoeffs"
            data_folder = "Data";
        else
            error('data_source must be "raw", "reconstructed" or "spod_tcoeffs" (got "%s")', data_source);
        end
        use_reconstructed_data = data_source ~= "raw";  % smoother inputs: shorter smoothing window below

        main_folder = fullfile(main_folders(k).folder, main_folders(k).name, data_folder);
        save_folder = fullfile(save_folder_upper, main_folders(k).name, 'POD_Results', 'Hilbert', 'Data');

        mkdir(save_folder) % Create output directory if not exists
    
        %% Detect flow axis orientation from parent folder name
        % Rationale: Different coordinate systems for Major (y/z) vs. Minor (z/y) axes

        if contains(main_folder, 'Minor')
            flow_axis = 'Minor'; % flow_axis: string, 'Minor' | 'Major' | 'Angled'
        elseif contains(main_folder, 'Major')
            flow_axis = 'Major';
        elseif contains(main_folder, 'Angled')
            flow_axis = 'Angled';
        else
            flow_axis = 'Minor';
        end
    
        %% ===================== FILE DISCOVERY: LOCATE SNAPSHOT FILES =====================
        % Search for all *Fields.mat files in the Data/ directory
        % Each file contains a batch of snapshot matrices (velocity, pressure, etc.)
        % Rationale: Multiple files handle large datasets split across multiple files
        if data_source == "raw" || data_source == "spod_tcoeffs"
            suffix = '*_Fields.mat'; % suffix: pattern to match field snapshot files
        else
            suffix = '*_*.mat';
        end
        direc = dir(strcat(main_folder, filesep, suffix));
        filenames = {}; % filenames: cell array of snapshot file names
        [filenames{1:length(direc), 1}] = deal(direc.name);
        if isempty(filenames)
            warning("No %s files in %s", suffix, main_folder);
            continue
        end

        % Each input file gives one output, or one per band for spod_tcoeffs
        jobs = {};
        for iii = 1:length(filenames)
            if data_source == "spod_tcoeffs"
                for ss = 1:numel(St_specified)
                    jobs(end+1,:) = {filenames{iii}, St_specified(ss)}; %#ok<AGROW>
                end
            else
                jobs(end+1,:) = {filenames{iii}, NaN}; %#ok<AGROW>
            end
        end

        %% ===================== CONDITION PROCESSING LOOP =====================
        % For each snapshot batch file, perform complete Hilbert-POD analysis
        % condition label extracted from filename (remove '_Fields.mat' suffix)
        for iii = 1:size(jobs,1)

            % Extract condition identifier from filename
            % Format: condition_Fields.mat → condition (e.g., "NPR_20_Recompressed")
            filenames_iii = jobs{iii,1};
            St_band = jobs{iii,2};
            condition = extractBefore(filenames_iii,'.mat'); % Remove '_Fields.mat' (11 chars)
            
            %% ===================== DATA LOADING AND MEMORY MANAGEMENT =====================
            % Use matfile() for lazy loading: reads only requested variables/slices
            % Rationale: Full snapshot arrays can exceed available RAM; lazy loading
            % enables processing files larger than physical memory
            load_file = fullfile(main_folder, filenames_iii);
            file = matfile(load_file); % file: matfile object for lazy-loaded access
            
            % Determine actual snapshot count in file and apply user limit
            im_size = size(file, 'im_data'); % im_size: [n_y, n_x, n_snapshots_total]
            if n_snapshots_set == 0
                n_snapshots = im_size(3);  % Use all available: n_snapshots=0 means "unlimited"
            else
                n_snapshots = min([n_snapshots_set, im_size(3)]); % Cap at limit
            end
            
            % Load spatial snapshot matrix into memory
            % im_data: [n_y, n_x, n_snapshots] single precision (4 bytes/value, memory efficient)
            if data_source == "spod_tcoeffs"
                % time first, stored class (int16): tcoeffs converts rows as it projects
                [im_data, ~] = load_fields_time_major(file, n_snapshots);   % [n_t, n_y, n_x]
            else
                im_data = file.im_data(:, :, 1:n_snapshots);
                im_data = cast(im_data, 'single'); % Convert to single precision
            end
            
            % Load spatial coordinate matrices
            x = file.x;  % x: [n_y, n_x] physical x-coordinates [D]
            y = file.y;  % y: [n_y, n_x] physical y-coordinates [D]
            D = file.D;  % D: scalar, nozzle exit diameter [mm]
        
            % Load temporal information: frame rate and compute time step
            fps = file.fps;  % fps: scalar, frames per second (Hz)
            dt = 1/fps;      % dt: scalar, time step between frames (seconds)
            t = [0:dt:n_snapshots*dt-dt]; % t: vector, time points of frames (seconds)

            %%% Check if it is a bottom half slice... Not super happy with
            %%% this implementation
            if mean(y(:,1)) < -0.2
                if y_roi(2) > 0
                    y_temp = y_roi(1);
                    y_roi(1) = -y_roi(2);
                    y_roi(2) = y_temp;
                    changed_y_roi = true;
                end
            end

            %%% correct the roi limits
            if ROI > 0
                if sum(x_roi ~= 0) > 0
                    ind_x1 = find(abs(x(1,:)-x_roi(1)) == min(abs(x(1,:)-x_roi(1))),1);
                    ind_x2 = find(abs(x(1,:)-x_roi(2)) == min(abs(x(1,:)-x_roi(2))),1);
                else
                    ind_x1 = 1;
                    ind_x2 = size(x,2);
                end
                if sum(y_roi(1,:) ~= 0) > 0
                    ind_y1 = find(abs(y(:,1)-y_roi(1,1)) == min(abs(y(:,1)-y_roi(1,1))),1);
                    ind_y2 = find(abs(y(:,1)-y_roi(1,2)) == min(abs(y(:,1)-y_roi(1,2))),1);
                else
                    ind_y1 = 1;
                    ind_y2 = size(y,1);
                end
                x_roi(1) = x(1,ind_x1);
                x_roi(2) = x(1,ind_x2);
                y_roi(1) = y(ind_y1,1);
                y_roi(2) = y(ind_y2,1);
            end


            %% ===================== HILBERT-POD DECOMPOSITION =====================
            % Core algorithm: apply Hilbert transform then compute POD on envelope
            % 
            % Theory: Analytic signal approach separates amplitude and phase
            %   a(t) = real signal (e.g., schlieren intensity)
            %   z(t) = a(t) + i*H[a(t)] = analytic signal (Hilbert transform)
            %   |z(t)| = amplitude envelope (slowly-varying component)
            %   arg(z(t)) = instantaneous phase (rapid oscillation)
            %
            % Hilbert-POD: compute POD on |z(t)| (envelope field) to extract
            % frequency-localized structures. Modes describe modulation pattern.
            %
            % Outputs:
            %   POD_modes: [n_y, n_x, n_modes] complex spatial structures
            %   a_n_complex: [n_snapshots, n_modes] complex time series (mag=env, phase=inst_phase)
            %   Energy: [n_modes] singular values squared (modal energy %)
            fprintf('Starting POD Processing\n')
            if data_source == "spod_tcoeffs"
                %%% Band of SPOD modes around St_band from the SPOD file of this case
                spod_dir = fullfile(save_folder_upper, main_folders(k).name, 'SPOD_Results', 'Data');
                spod_list = dir(fullfile(spod_dir, strcat(extractBefore(condition,'_Field'), '_Nt*Nfft_', num2str(spod_nfft), '_*.mat')));
                if isempty(spod_list)
                    warning("No SPOD file with nfft = %d for %s in %s: run SPOD_Analysis first. Skipping.", spod_nfft, condition, spod_dir);
                    continue
                end
                spod_file = matfile(fullfile(spod_dir, spod_list(1).name));
                St_spod = spod_file.St;
                dSt = St_spod(2) - St_spod(1);
                [~, centre_ind] = min(abs(St_spod - St_band));
                half_width = round(bandwidth_St/2/dSt);           % bins each side, as in the reconstruction script
                bins = max(1, centre_ind-half_width):min(numel(St_spod), centre_ind+half_width);
                P_size = size(spod_file, 'P');
                if n_modes_set == 0
                    n_modes_use = P_size(4);
                else
                    n_modes_use = min(n_modes_set, P_size(4));
                end
                P_band = spod_file.P(bins(1):bins(end), :, :, 1:n_modes_use);
                if ROI > 0
                    % analysis region only (ROI = 1 is treated as 2 here)
                    if ROI == 1
                        warning('ROI = 1 is treated as ROI = 2 for data_source = "spod_tcoeffs".');
                    end
                    rr = min(ind_y1,ind_y2):max(ind_y1,ind_y2); cc = min(ind_x1,ind_x2):max(ind_x1,ind_x2);
                    im_data = im_data(:,rr,cc); P_band = P_band(:,rr,cc,:); x = x(rr,cc); y = y(rr,cc);
                end
                fprintf('SPOD band: St %.3f-%.3f (%d bins, %d modes each)\n', St_spod(bins(1)), St_spod(bins(end)), numel(bins), n_modes_use);
                [POD_modes, a_n_complex, Energy, Mode, t, band_info] = hpod_from_spod_tcoeffs(im_data, t, P_band, bins(1), spod_nfft, n_modes_use, 20);
                band_info.St_band = [St_spod(bins(1)), St_spod(bins(end))];
                band_info.St_specified = St_band;
                band_info.spod_file = spod_list(1).name;
                phi = reshape(POD_modes, [], size(POD_modes,3));
            else
                [POD_modes, a_n_complex, Energy, phi, Mode, t, x, y] = hilbert_POD_func(im_data, t, ROI, x_roi, y_roi, x, y);
                band_info = struct();
            end
    
            %% ===================== INSTANTANEOUS PHASE AND FREQUENCY EXTRACTION =====================
            % Extract phase and frequency time evolution from complex modal coefficients
            % 
            % Method: 
            %   phase(t,n) = arg(a_n(t)) = atan2(imag(a_n), real(a_n))
            %   inst_freq(t,n) = d(phase)/dt / (2π) [Hz] = instantaneous frequency
            % 
            % Challenge: phase gradient is noisy from numerical differentiation
            % Solution: Savitzky-Golay filtering (polynomial local regression)
            % preserves features while removing noise
            %
            % Outputs:
            %   mode_inst_phase: [n_snapshots, n_modes] unwrapped phase [radians]
            %   mode_inst_freq: [n_snapshots, n_modes] SG-filtered inst. freq [Hz]
            %   mode_inst_amp: [n_snapshots] amplitude envelope (mode 1 only)

            % Smoothing
            %%% Smoothing window size is reduced when using reconstructed data as it
            %%% typically has a lower level of noise. Can adjust if needed.
            if use_reconstructed_data
                smoothing_periods = 5; %Frequency periods used for smoothing
            else
                smoothing_periods = 25; %Frequency periods used for smoothing
            end

            % Magnitude: amplitude envelope of modal time series
            a_n_complex = double(a_n_complex); %%% Single precision can cause peak locking when angle is unwrapped
            a_n = abs(a_n_complex);
            
            mode_inst_phase = [];  % mode_inst_phase: [n_t, n_modes] instantaneous phase
            mode_inst_freq = [];   % mode_inst_freq: [n_t, n_modes] instantaneous frequency
            mode_inst_amp = []; % mode_inst_amp: [n_t, n_modes] instantaneous amplitude
            window_length = [];
            
            for j = 1:size(a_n_complex, 2) % j: loop over all modes
                % Extract phase via arctangent of complex number
                mode_inst_phase(:, j) = angle(a_n_complex(:, j));
                % Unwrap phase: remove 2π jumps to create continuous curve
                mode_inst_phase(:, j) = unwrap(mode_inst_phase(:, j));
                
                % Rough frequency estimate: phase gradient via finite differences
                mode_inst_freq(:, j) = 1/(2*pi) * (gradient(mode_inst_phase(:, j), dt));
    
                % Refine frequency estimate via Savitzky-Golay filtering
                % Rationale: SG filter preserves peaks while smoothing noise
                % Window length: 2 cycles at mean mode frequency (centered odd window)
                mean_freq = abs(mean(mode_inst_freq(:, j))); % Mean frequency [Hz]
                window_length(j) = min([2 * floor((smoothing_periods * 1/mean_freq * fps) / 2) + 1,1001]); % Odd window
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

            %% ===================== SAVE DECOMPOSITION RESULTS =====================
            % Save all POD modes, eigenvalues, and temporal evolution to MAT file
            fprintf('Saving\n')

            if changed_y_roi
                y_temp = y_roi(2);
                y_roi(2) = -y_roi(1);
                y_roi(1) = y_temp;
                changed_y_roi = false;
            end
            
            % Construct output filename: add "_Hilbert_POD_Modes.mat" suffix
            % Include ROI bounds in filename if ROI mode enabled
            if data_source == "spod_tcoeffs"
                band_tag = sprintf('_SPOD_tcoeffs_St_%.3f_bw_%.3f', St_band, bandwidth_St);
            else
                band_tag = '';
            end
            if ROI > 0
                save_file = fullfile(save_folder, strcat(condition, band_tag, sprintf('_ROI_x_%1.0f_%1.0f_y_%1.0f_%1.0f',x_roi(1),x_roi(2),y_roi(1),y_roi(2)), '_Hilbert_POD_Modes.mat'));
            else
                save_file = fullfile(save_folder, strcat(condition, band_tag, '_Hilbert_POD_Modes.mat'));
            end
        
            % Save with compression disabled (-nocompression) for faster write
            % Format: -v7.3 supports variables >2GB (large spatial fields)
            save(save_file, 'Mode', 'Energy', 'POD_modes', 'phi', 'a_n', 'x', 'y', ...
                'a_n_complex', 'mode_inst_phase', 'mode_inst_freq', 'mode_inst_amp', ...
                'fps', 'dt', 't', 'D','window_length', 'data_source', 'band_info', '-v7.3', '-nocompression');
            
            fprintf('Saved Total\n');

            clearvars U_n
        end
    end
end