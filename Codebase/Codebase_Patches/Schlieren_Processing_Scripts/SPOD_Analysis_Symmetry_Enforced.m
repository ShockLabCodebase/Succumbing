%================================================================================
% PURPOSE:
%   Compute Spectral Proper Orthogonal Decomposition (SPOD) on schlieren
%   image fields with optional symmetry enforcement (2-region symmetric/
%   antisymmetric decomposition for single-jet axisymmetric flows).
%
% HIGH-LEVEL WORKFLOW:
%   1. Discover preprocessed *Fields.mat files in Data/ directories across
%      operating-condition subfolders (by regex matching parent_folder_str)
%   2. For each case, load snapshot stack im_data(y,x,t) and spatial grids x,y
%   3. Compute frequency axis (Strouhal numbers) from nfft, fps, jet diameter D
%   4. Optionally select subset of frequencies for faster computation
%   5. Loop over symmetry modes (2-region: symmetric + antisymmetric):
%      a) Extract symmetry-constrained fields via get_symmetry (y-mirroring)
%      b) Permute to SPOD format: (t,y,x)
%      c) Run SPOD algorithm with overlap-windowed FFT to compute modes P, eigenvalues L
%      d) If partial-frequency SPOD, recombine results into contiguous arrays
%      e) Undo symmetry to reconstruct full-domain modal fields
%   6. Save per-symmetry, per-case results: L, P, A, St, D, fps, etc.
%
% OUTPUT FILES:
%   - Symmetry_Imposed_{sym_type}_{nozzle}_{NPR/M}_{condition}.mat
%     Files in: {parent_folder}/SPOD_Results/Symmetry_Imposed/Data/
%     Variables: L [n_freq,n_modes] eigenvalues
%                P [n_freq,n_y,n_x,n_modes] modal spatial structures (symmetric + antisymmetric)
%                A [n_freq,n_y,n_x] temporal amplitude coefficients
%                St [n_freq] Strouhal numbers (non-dimensional frequency)
%                f [n_freq] frequency axis [Hz]
%                current_NPR or current_M: operating condition parameter
%                D, fps, overlap, nfft, n_snapshots, im_mean, x, y, sym_type
%
%================================================================================

clear all
close all

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

%% ======================== ENVIRONMENT CONFIGURATION ========================
% Detect execution environment and data storage location
% Adjust file I/O paths and data access patterns accordingly

using_MASSIVE = 1-ispc;   % using_MASSIVE: boolean, true if Linux HPC, false if Windows PC
using_Market = false;     % using_Market: boolean, true if fields stored on network shared drive

%% ======================== DIRECTORY CONFIGURATION ========================
% Specify folder hierarchy for preprocessed field discovery and output staging
% Hierarchy: Top_folder / parent_folder / main_folder / Data/*.mat
%   Each main_folder contains: Data/ (preprocessed fields), SPOD_Results/Symmetry_Imposed/ (output)
% Expected structure: parent folders by jet type (Axisymmetric, Elliptical, etc.)
%                    main folders by nozzle config (e.g., *sD_225* for spacing)
%                    within each: Data/ with *Fields.mat files

% Top-level data location (change to point to your dataset root)
% For MASSIVE: path relative to LTRAC-Jet-Noise/ root
Top_folders = "/Soudeh/Misc/";  % Top_folders: string, root data directory
                                % Adjust path for MASSIVE vs. Windows local storage

% Output staging location (local scratch for HPC, or local disk)
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren";
% save_folder_outer: string, root output directory for SPOD results
% NOTE: On MASSIVE, use /scratch or similar fast local filesystem to avoid network I/O

% Wildcard patterns to select specific dataset subsets
parent_folder_str = "*Axisymmetric*"; % parent_folder_str: regex, selects by jet type
main_folder_str = "*sD_225*";         % main_folder_str: regex, selects by nozzle config

% Discover all parent folder and corresponding save folder paths matching criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,...
    save_folder_outer,using_MASSIVE,using_Market);
% get_parent_path handles path resolution on MASSIVE/Windows and checks availability

%% ======================== SPOD ANALYSIS PARAMETERS ========================
% Configure spectral POD computation: snapshot count, FFT sizing, symmetry mode
% MEMORY/PERFORMANCE NOTE:
%   - Each snapshot: [n_y, n_x] ≈ 0.5–2 MB depending on resolution
%   - Full snapshot load + FFT: ~1–3 GB for n_snapshots=50,000 typical configs
%   - Symmetry enforcement reduces data by ~2× (only half-domain stored)
%   - Estimated runtime: 5–15 minutes per case on modern CPU (varies with nfft, overlap)

n_snapshots_set = 0;  % n_snapshots: scalar int, max frames to load per case
                      % Set to 0 to load all available frames. Typical: 50k–100k.
                      % Tradeoff: larger → better statistical convergence but slower
nfft = 4096;      % nfft: FFT size (was 2^floor(log2(n_snapshots/10)), which used n_snapshots before it is set)
overlap = 50;     % overlap: percent window overlap [%]

%% Symmetry configuration: 2-region (single-jet) or 4-region (twin-jet cross-plane)
symmetry_regions = 2; % symmetry_regions: scalar int, 2 or 4
                      % 2: single-jet axisymmetric (default, recommended for schlieren)
                      %    Separates symmetric (S) and antisymmetric (A) about y=0
                      % 4: twin-jet cross-plane (not implemented; placeholder only)

%% Optional frequency selection: analyze only specific Strouhal bands
% Rationale: reduces memory/time for targeted analysis; useful for resolving
% specific frequency ranges without computing full-spectrum SPOD
set_frequencies = false;  % set_frequencies: boolean, true = compute only selected St bands
St_des = [0.25,0.29];     % St_des: [n_selected] target Strouhal numbers (if set_frequencies=true)
                          % Will compute ±25 frequency bins around each target

%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over parent folders (jet types) → main folders (nozzle configs)
% For each: locate operating condition subfolders, then process snapshots with SPOD

for m = 1:length(parent_folders)

    % Construct full paths for current parent folder
    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Discover main folders (nozzle configurations) matching pattern
    main_folders = dir(fullfile(parent_folder,main_folder_str));
    sf = [main_folders.isdir];  % Keep directory entries only
    main_folders = main_folders(sf);

    %% ===================== PER-MAIN-FOLDER LOOP =====================
    % Process each main folder (nozzle config): discover and analyze all cases

    for k = 1:length(main_folders)
        main_folder = fullfile(parent_folder,main_folders(k).name);
        save_folder = fullfile(save_folder_upper,main_folders(k).name);

        % Ensure output directory structure exists for SPOD results
        mkdir(save_folder);

        %% Locate preprocessed snapshot files (*Fields.mat)
        % Each file contains one operating condition (one NPR or Mach number)
        snapshot_dir = fullfile(main_folder,'Data');
        suffix = '*Fields.mat';
        case_list = dir(fullfile(snapshot_dir,suffix));
        case_list = extractfield(case_list, 'name');  % case_list: string array of filenames

        %% Detect operating-parameter convention (NPR vs Mach number)
        % Heuristic: examine first case name for '_NPR_' or '_M_' delimiter
        if contains(case_list{1},'_NPR_')
            using_npr = true;   % Dataset indexed by pressure ratio
        elseif contains(case_list{1},'_M_')
            using_npr = false;  % Dataset indexed by Mach number
        else 
            using_npr = false;  % Default fallback
        end

        %% Parse operating-point parameters and nozzle identifiers from filenames
        % get_filename_params extracts: nozzle_list, NPR/M arrays, and scaling factors
        % Used for output filename construction and result organization
        if using_npr
            [nozzle_list, NPR_list, NPR_factor] = get_filename_params(using_npr, case_list);
        else
            [nozzle_list, M_list, M_factor] = get_filename_params(using_npr, case_list);
        end

        %% ===================== PER-CASE PROCESSING LOOP =====================
        % For each operating condition: load snapshots, compute frequency axis, run SPOD

        for ii = 1:length(case_list)
            % Clear previous case data to avoid variable carryover
            clearvars im_data L P f 

            %% Load preprocessed image stack from *Fields.mat file
            % Limit snapshots to n_snapshots to manage memory
            % matfile: efficient partial read without loading entire array to memory
            filename = case_list{ii};
            full_filename = fullfile(snapshot_dir,filename);
            file = matfile(full_filename);

            % Determine available snapshots and cap to n_snapshots if needed
            im_size = size(file,'im_data');  % im_size: [n_y, n_x, N_total]
            if n_snapshots_set == 0
                n_snapshots = im_size(3);  % Use all available frames
            else
                n_snapshots = min([n_snapshots_set,im_size(3)]);  % Cap to limit
            end

            % Load image stack (first n_snapshots frames only) and spatial grids
            im_data = file.im_data(:,:,1:n_snapshots);  % im_data: [n_y,n_x,n_snapshots] uint8/uint16
            im_data = cast(im_data,'single');           % Cast to single for memory efficiency
            x = file.x;      % x: [n_y,n_x] axial coordinate grid [mm]
            y = file.y;      % y: [n_y,n_x] transverse coordinate grid [mm]
            fps = file.fps;  % fps: scalar, frame rate [Hz]
            D = file.D;      % D: scalar, nozzle diameter [mm]

            % Compute temporal mean field for diagnostics and reference
            im_mean = mean(im_data,3);  % im_mean: [n_y,n_x] mean over time dimension

            %% ===================== COMPUTE JET VELOCITY =====================
            % Calculate ideally-expanded jet exit velocity u_j from operating condition
            % Used to convert frequency to non-dimensional Strouhal number: St = f·D/u_j
            % Rationale: Strouhal number is invariant parameter across speeds/geometries
            
            if using_npr
                NPR = NPR_list(ii)/(10^(NPR_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, NPR, 1, D);
            else
                M = M_list(ii)/(10^(M_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, M, 1, D);
            end
    
            % =====================================================================
            % FREQUENCY GRID SETUP
            % =====================================================================
            % Define frequency bins for FFT. Convert to Strouhal numbers using
            % ideally expanded nozzle diameter D_j and jet velocity u_j.
            
            df = fps/nfft;                         % Frequency discretization [Hz]
            freq = linspace(0, fps-df, nfft);     % Full frequency range (0 to Nyquist)
            f = freq(1:nfft/2+1);                 % One-sided spectrum (0 to fps/2)
    
            St = (f*D_j*1e-3)/u_j;  % Convert to Strouhal (D_j in mm, so use 1e-3)

            %% ===================== OPTIONAL FREQUENCY SELECTION =====================
            % If set_frequencies=true, compute only selected Strouhal bands
            % Reduces computation time/memory for targeted analysis
            
            if set_frequencies
                % Compute index ranges around each requested St
                opts.savefft = true;  % Required for partial-frequency SPOD output
                St_full_list = [];
                for ss = 1:length(St_des)
                    St_ind = find(abs(St-St_des(ss)) == min(abs(St-St_des(ss))));
                    St_list = [St_ind-25:St_ind+25];  % ±25 bins around target
                    St_full_list = cat(2,St_full_list,St_list);
                end
                St_full_list = unique(St_full_list);  % Remove duplicates
                St_full_list(St_full_list<1) = [];    % Remove out-of-bounds indices
                St_full_list(St_full_list > size(St,2)) = [];
                opts.savefreqs = St_full_list;
            else
                % Use full frequency axis
                St_full_list = [1:size(St,2)];
                opts.savefft = false;  % Compute full SPOD (no partial-frequency restriction)
            end

            %% ===================== SPOD ALGORITHM CONFIGURATION =====================
            % Set parameters for overlap-windowed FFT spectral POD computation
            % Rationale: overlap window (typically 50%) improves frequency resolution
            % and averaging over multiple windows reduces variance
            
            intWeights    = [];            % intWeights: empty (no spatial quadrature for schlieren)
            % overlap is set with the parameters at the top
                                          % Rationale: balance between resolution & averaging
            nOvlp         = nfft*overlap/100;  % nOvlp: int, overlap in samples
            dt            = 1/fps;         % dt: scalar, sampling interval [s]
            modes_to_keep = 4;             % modes_to_keep: int, number of SPOD modes to retain

            opts.savefft  = false;         % default: compute full SPOD (overridden if set_frequencies=true)
            opts.savedir  = fullfile(save_folder,'SPOD_Results','Temp');  % temp directory for FFT storage
            opts.nsave    = modes_to_keep; % Save only top modes_to_keep modes per frequency

            %% ===================== SYMMETRY DECOMPOSITION LOOP =====================
            % For each symmetry mode (symmetric + antisymmetric), extract the
            % symmetry-constrained field, run SPOD, then reconstruct full-domain modes
            % Rationale: separates modal energy by symmetry class, simplifying interpretation
            % Symmetric modes: coupled coherent structures aligned with jet axis
            % Antisymmetric modes: counter-rotating vortex pairs (fundamental instability)
            
            for sym = 1:symmetry_regions
                clearvars im_data_sym L P A    % free the previous symmetry's arrays before building the next

                if symmetry_regions == 2
                    %% 2-region symmetry: symmetric/antisymmetric about y=0 (jet centerline)
                    % Locate symmetry axis and compute data extent for mirroring
                    
                    dy     = y(2,1) - y(1,1);
                    c_h    = round(2*(1 - y(1,1)/dy))/2;          % axis row, snapped to whole/half row
                    y_zero = floor(c_h);
                    y_odd  = double(c_h == y_zero);               % 1 if the axis is on a row
                    y_size = min(y_zero, size(y,1) - ceil(c_h) + 1);
                    % Choose symmetry label for saving filenames and metadata
                    if sym == 1
                        sym_type = "symmetric_";         % sym_type: descriptor for data storage
                        % Symmetric: S(y) = (F(y) + F(-y))/2
                    elseif sym == 2
                        sym_type = "antisymmetric_";
                        % Antisymmetric: A(y) = (F(y) - F(-y))/2
                    end

                    % Extract symmetry-constrained field from full snapshot stack
                    % get_symmetry applies y-mirroring to im_data and returns reduced field
                    im_data_sym = get_symmetry(im_data,sym_type,[],y_zero,y_size,y_odd,[],[],[]);
                    % im_data_sym: [n_y_half, n_x, n_snapshots] (half-domain)

                else
                    % 4-region symmetry: not supported for schlieren (placeholder)
                    fprintf('4 symmetry regions? In Schlieren? I just want to win a game...')
                end

                %% SPOD expects time along first dimension: (t,y,x)
                % Permute from (y,x,t) to (t,y,x) for SPOD function
                im_data_sym = permute(im_data_sym,[3,1,2]);  % im_data_sym: [n_snapshots, n_y_half, n_x]

                %% ===================== RUN SPOD ALGORITHM =====================
                % Compute spectral POD on symmetry-constrained field
                % SPOD: overlap-windowed FFT + eigenvalue decomposition per frequency
                % Output: L (eigenvalues), P (modes), f (frequency), A (coefficients)
                % Design intent: extract dominant spatial structures and their frequencies
                
                [L,P,f,~,A] = spod(im_data_sym,nfft,intWeights,nOvlp,dt,opts);
                % L: [n_freq, n_modes] eigenvalues (energy ranking per frequency)
                % P: [n_freq, n_modes, n_y_half, n_x] complex mode shapes
                % f: [n_freq] frequency axis [Hz]
                % A: [n_freq, n_y_half, n_x] temporal amplitude coefficients
                
                %% ===================== RECOMBINE PARTIAL-FREQUENCY OUTPUTS =====================
                % If opts.savefft=true (partial-frequency SPOD), the function returns
                % outputs indexed by original frequency bins. Recombine into contiguous
                % arrays for saving (only selected frequencies in order).
                % Rationale: makes saved data compact and easier to reload
                
                if opts.savefft
                    % SPOD returned function handle or sparse frequency storage
                    P_func = P;
                    clearvars P
                    count = 0;
                    % Reconstruct full P, L, A arrays with only selected frequencies
                    for iii = St_full_list
                        count = count + 1;
                        for jjj = 1:modes_to_keep
                            P(count,:,:,jjj) = P_func(iii,jjj);  % Copy to contiguous array
                            L_temp(count,jjj) = L(iii,jjj);
                        end
                        A_temp(count,:,:) = A(iii,:,:);
                    end
                    % Subset frequency vectors to match selected frequencies
                    St = St(St_full_list);   % St: [n_selected] subset of Strouhal
                    f = f(St_full_list);     % f: [n_selected] subset of frequencies
                    A = A_temp;
                    L = L_temp;
                else
                    % Keep only the requested number of modes; cast to single precision
                    P = cast(P(:,:,:,1:modes_to_keep),'single');
                    % P: [n_freq, n_y_half, n_x, n_modes] single precision
                end

                %% ===================== UNDO SYMMETRY: RECONSTRUCT FULL-DOMAIN MODES =====================
                % Mirror symmetry-constrained modes back to full domain
                % Rationale: reconstructed modes have full spatial extent for physical interpretation
                % and compatibility with other analysis (wavenumber spectra, etc.)
                
                P = squeeze(undo_symmetry(P,sym_type,[],y_odd,[]));
                % P: [n_freq, n_y, n_x, n_modes] full-domain modal shapes

                %% ===================== SAVE SPOD RESULTS ========================
                % Persist computed SPOD results (eigenvalues, modes, metadata) to MAT file
                % File structure: one file per symmetry type per case
                % Naming convention: Symmetry_Imposed_{sym_type}_{nozzle}_{NPR/M}_Nt_Nfft_ovlp.mat

                condition = extractBefore(case_list{ii},'_Field');
                
                if using_npr

                    % Prepare output directory for symmetry-imposed SPOD
                    to_SPOD = fullfile(save_folder,'SPOD_Results','Symmetry_Imposed');
                    mkdir(fullfile(to_SPOD,'Data'));

                    % Construct output filename encoding case parameters
                    mat_file = strcat('Symmetry_Imposed_', sym_type, condition,...
                        '_Nt',num2str(n_snapshots,'_%.5i_'),...
                        'Nfft',num2str(nfft,'_%.3i_'),...
                        'ovlp',num2str(overlap,'_%.2i'));

                    save_file = fullfile(to_SPOD,'Data',mat_file);

                    % Save computed SPOD variables and metadata
                    % Variables: L [n_freq,n_modes] eigenvalues (energy ranking)
                    %            P [n_freq,n_y,n_x,n_modes] modal spatial structures
                    %            A [n_freq,n_y,n_x] temporal amplitude coefficients
                    %            St [n_freq] Strouhal numbers
                    %            f [n_freq] frequency [Hz]
                    %            NPR: operating condition
                    %            D, fps, overlap, nfft, n_snapshots: SPOD parameters
                    %            im_mean, x, y: spatial reference data
                    %            sym_type: symmetry class descriptor
                    save(save_file,'NPR', 'St','L','P','A','D','fps','overlap',...
                        'nfft','n_snapshots','im_mean','x','y','f','sym_type','-v7.3','-nocompression');

                else
                    to_SPOD = fullfile(save_folder,'SPOD_Results','Symmetry_Imposed');   % was parent_folder (one level up, where nothing reads it)
                    mkdir(fullfile(to_SPOD,'Data'));

                    % Construct output filename (Mach parameterization)
                    mat_file = strcat('Symmetry_Imposed_', sym_type, condition,...
                        '_Nt',num2str(n_snapshots,'_%.5i_'),...
                        'Nfft',num2str(nfft,'_%.3i_'),...
                        'ovlp',num2str(overlap,'_%.2i'));

                    save_file = fullfile(to_SPOD,'Data',mat_file);

                    % Save SPOD results (same variables, with current_M instead of NPR)
                    save(save_file,'M','St','L','P','A','D','fps','overlap',...
                        'nfft','n_snapshots','im_mean','x','y','f','sym_type','-v7.3','-nocompression');
                end
            end % symmetry loop
        end % case loop
    end % main_folder loop
end % parent_folders loop

