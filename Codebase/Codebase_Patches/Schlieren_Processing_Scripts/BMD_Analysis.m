% BMD_for_mat_files.m
% =====================================================================
% Computes Bi-spectral Mode Decomposition (BMD) on preprocessed MAT files
% containing snapshot data. BMD identifies coherent structures and their
% nonlinear frequency interactions. Results are saved as MAT files
% organized by case parameters (NPR or Mach number).
%
% WORKFLOW:
%   1. Load snapshot data from *Fields.mat files (structured as y, x, time)
%   2. Optionally load peak frequencies from pre-computed SPOD results
%   3. Compute BMD using bmd_modified(), obtaining bispectral modes P and
%      bispectrum magnitude B
%   4. Convert frequencies to Strouhal numbers (St) for comparison
%   5. Save BMD outputs (modes, spectrum, triadic info) per case
%
% CONFIGURATION:
%   - Set Top_folders, parent_folder_str, main_folder_str to specify
%     which cases to process
%   - Adjust n_snapshots, nfft, overlap for BMD resolution/memory trade-off
%   - Set use_spec_freqs=true to focus on SPOD-identified dominant modes
%   - Requires: bmd_modified.m, get_parent_path.m, get_filename_params.m
%              get_ideal_jet_velocity.m in path
%
% OUTPUT: Saves MAT files in Save_folder/BMD_Results/Data/
%         with pattern: nozzle_type_condition_Nt_Nfft_ovlp.mat

clear; close;

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

% Detect execution environment: 1 if on HPC cluster (Linux), 0 if Windows PC
using_MASSIVE = 1-ispc;
using_Market = false;  % Whether to use Market (shared network drive) for data storage (PATCH 2026-10-23: was left true, which on MASSIVE looks for the gvfs mount)

% =====================================================================
% DIRECTORY CONFIGURATION
% =====================================================================
% Folder hierarchy: Top_folders / parent_folder / main_folder / Data
%   Top_folders: root directory (after LTRAC-Jet-Noise/ on MASSIVE)
%   parent_folder: high-level experiment category (e.g., Axisymmetric_Staging)
%   main_folder: specific case variant (e.g., sD_225 = spacing/diameter ratio)
%   Data: contains the *Fields.mat snapshot files

Top_folders =  "/Soudeh/Misc/"  % For MASSIVE: path relative to LTRAC-Jet-Noise/; for PC: absolute path
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren" % Output directory on MASSIVE local scratch

% Wildcard patterns to isolate specific subsets of cases
parent_folder_str = "*Axisymmetric*"; % Regex to select parent folders (e.g., '*Staging*', '*Canted*')
main_folder_str = "*sD_225*"; % Regex to select main folders (e.g., '*sD_225*', '*NPR*')

% Retrieve paths matching above criteria; automatically handles MASSIVE vs. PC logic
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

% =====================================================================
% BMD ANALYSIS PARAMETERS
% =====================================================================
n_snapshots_set = 0;  % Number of snapshots to use; 0 = use all available (memory limited)
nfft = 4096;          % FFT size for BMD; larger = finer frequency resolution but more memory/triads
use_spec_freqs = true;  % If true: use peak frequencies from pre-computed SPOD (smaller triadic space)
peak_prominence_decades = 1;  % SPOD peaks must stand this many decades (factor 10^n) above their surroundings in L(:,1).
                              % (Was an absolute MinPeakProminence of 1e6, which depends on intensity, pixel count and fps.)
                        % If false: compute full triadic space (may exceed memory for large nfft)

% =====================================================================
% MAIN PROCESSING LOOP: Iterate over parent folders and their subfolders
% =====================================================================

for m = 1:length(parent_folders)
    % Construct full path to parent folder and its output directory
    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Find all subfolders matching main_folder_str pattern
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % Loop through each main folder, then each subfolder (Various NPRs),
    for k = 1:length(main_folders)
        main_folder = fullfile(parent_folder, main_folders(k).name);
        save_folder = fullfile(save_folder_upper,main_folders(k).name); % local save location, ie shouldn't be Market.

        mkdir(save_folder);
        
        % =====================================================================
        % LOCATE AND CATALOG SNAPSHOT FILES
        % =====================================================================
        % Find all *Fields.mat files in Data/ subdirectory; these contain the
        % preprocessed snapshot fields (im_data, im_mean, x, y, fps, D)
        snapshot_dir = fullfile(main_folder,'Data');
        suffix = '*Fields.mat';
        case_list = dir(fullfile(snapshot_dir,suffix));
    
        case_list = {case_list.name};  % Extract filenames only
    
        % Determine operating condition from filename: NPR (pressure ratio) or Mj (Mach)
        if contains(case_list{1},'_NPR_')
            using_npr = true;
        elseif contains(case_list{1},'_Mj_')
            using_npr = false;
        else 
            using_npr = false;
        end
    
        % =====================================================================
        % PARSE CONDITION PARAMETERS FROM FILENAMES
        % =====================================================================
        % Extract nozzle type, condition values (NPR or Mach), and format factors
        % from *Fields.mat filenames for later folder/file naming
        if using_npr
            [nozzle_list, NPR_list, NPR_factor] = get_filename_params(using_npr, case_list);
        else
            [nozzle_list, M_list, M_factor] = get_filename_params(using_npr, case_list);
        end

        % =====================================================================
        % SNAPSHOT LOOP: Compute BMD for each case (NPR/Mj combination)
        % =====================================================================
        for ii = 1:length(case_list)
            clearvars im_data L P f triadics triadics_St   % triadics kept its old size between cases
            
            % =====================================================================
            % LOAD SNAPSHOT DATA FROM MAT FILE
            % =====================================================================
            % Load preprocessed snapshot field im_data(y, x, time), background
            % mean im_mean, spatial coordinates x, y, frame rate fps, and
            % nozzle diameter D. Data is stored in single-precision for memory
            % efficiency (bmd_modified casts back if needed).
            
            filename = case_list{ii};
            full_filename = fullfile(snapshot_dir,filename);
            file = matfile(full_filename);  % Use matfile for efficient partial loading
            
            % Check available snapshots and load only n_snapshots (or fewer if unavailable)
            im_size = size(file,'im_data');
            if n_snapshots_set == 0
                n_snapshots = im_size(3);  % Use all available snapshots
            else
                n_snapshots = min([n_snapshots_set,im_size(3)]);  % Cap at available
            end
            
            % Load snapshot data and metadata
            im_data = file.im_data(:,:,1:n_snapshots);
            im_data = cast(im_data,'single');  % Cast to single precision
            x = file.x;
            y = file.y;
            fps = file.fps;  % Frames per second for time normalization
            D = file.D;      % Nozzle diameter for Strouhal normalization

            % =====================================================================
            % OPTIONAL: LOAD SPOD PEAKS IF use_spec_freqs = TRUE
            % =====================================================================
            % If use_spec_freqs is enabled, load pre-computed SPOD frequencies
            % and their peaks to reduce the triadic space to energetically
            % significant modes. This greatly reduces memory and computation.
            
            if use_spec_freqs
                
                % Locate SPOD result file with matching nfft
                SPOD_folder = fullfile(main_folder,'SPOD_Results','Data');
                SPOD_filename = dir(fullfile(SPOD_folder,[filename(1:end-11),'*Nfft*',num2str(nfft),'*.mat']));
                if length(SPOD_filename) == 0
                    % If no matching SPOD file found, skip this case (SPOD must be run first)
                    fprintf("No SPOD file found for %s with nfft = %i: process SPOD for this nfft first. Skipping case.\n",filename,nfft);
                    continue
                end
                
                % Load SPOD eigenvalues L and frequencies f to identify peaks
                SPOD_file = matfile(fullfile(SPOD_folder,SPOD_filename.name));
                L = SPOD_file.L;  % Eigenvalues (energy by frequency)
                f = SPOD_file.f;  % Frequency array
                St = SPOD_file.St; % Strouhal numbers (normalized frequencies)
                
                % Find dominant SPOD modes (peaks in eigenvalue spectrum)
                % These become the focus frequencies for BMD
                [~,peak_locs,~,~] = findpeaks(log10(double(L(:,1))),'MinPeakProminence',peak_prominence_decades,'SortStr','descend');
                peaks = L(peak_locs,1);
    
                if length(peak_locs) == 0
                    % No peaks found; abort case (likely missing SPOD preprocessing)
                    fprintf("No SPOD peaks found for %s (peak_prominence_decades = %g). Skipping case.\n",filename,peak_prominence_decades);
                    continue
                end
            end

            % =====================================================================
            % EXTRACT NOZZLE CONDITION AND COMPUTE IDEAL JET VELOCITY
            % =====================================================================
            % Get nozzle type (e.g., 'Single_Jet', 'Twin_Jet', etc.) and ideal
            % jet velocity for Strouhal normalization (St = f*D/u_j).
            % Ideal velocity derived from NPR (total pressure ratio) or Mach number
            % assuming isentropic choked flow.

            % Compute ideal jet exit velocity based on operating condition
            if using_npr
                NPR = NPR_list(ii)/(10^(NPR_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, NPR, 1, D);
            else
                M = M_list(ii)/(10^(M_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, M, 1, D);
            end
    
            % Compute mean field by averaging over time; subtract from snapshots
            im_mean = mean(im_data,3);  % Time-averaged field
            im_data = permute(im_data,[3,1,2]);  % Reshape to (time, y, x) for BMD
    
            % =====================================================================
            % CONFIGURE AND RUN BMD ALGORITHM
            % =====================================================================
            % BMD decomposes snapshots into bispectral modes P and computes the
            % bispectrum B. The bispectrum captures nonlinear interactions between
            % frequency pairs (f1, f2) with sum frequency f3 = f1 + f2.
            % bmd_modified(im_data, nfft, intWeights, nOvlp, dt, opts)
            % inputs:
            %   im_data(time, y, x): snapshot matrix
            %   nfft: FFT window length for frequency resolution
            %   intWeights: quadrature weights (empty [] for default uniform)
            %   nOvlp: number of samples to overlap between windows
            %   dt: time step (inverse of fps)
            %   opts: struct with parameters (mean, precision, threads, specfreq)
            % outputs:
            %   B: bispectrum magnitude, B(f1_idx, f2_idx)
            %   P: bispectral modes, P(mode_type, triad_idx, y, x)
            %   f: frequency array corresponding to FFT
            %   idx: linear indices of valid triads in B
            %   T: transfer function (internal)
            
            % Integration weights for spatial quadrature (empty = default Cartesian)
            intWeights      = [];  % Could be trapz weights for cylindrical coords
            
            % Welch's method parameters for ensemble averaging
            overlap         = 50;       % Percent overlap between successive windows
            nOvlp           = nfft*overlap/100;  % Convert to sample count
            dt              = 1/fps;    % Time step (seconds)
            
            % BMD algorithm options
            opts.precision  = true;    % Use double-precision internal computation
            opts.threads    = maxNumCompThreads-2;  % CPU parallelization (reserve 2 cores)
            opts.mean       = squeeze(mean(im_data,1));  % Explicit mean for subtraction
            opts.bicoherence = true;   % Compute bicoherence (normalized bispectrum)
    
            % If using SPOD-identified peaks, restrict BMD to those frequencies only
            if use_spec_freqs
                opts.specfreq = f(peak_locs);  % Only analyze at SPOD peak frequencies
            end
            
            % Execute BMD decomposition
            [B,P,f,idx,T]   = bmd_modified(im_data,nfft,intWeights,nOvlp,dt,opts);
    
            % Cast output modes to single-precision for storage efficiency
            P = cast(P(:,:,:,:),'single');
            %   P(1,:,:,:): bispectral modes (phase-coherent mode shapes)
            %   P(2,:,:,:): cross-frequency fields (cross-spectral response)
            %   Second index: triad index (enumeration of valid frequency pairs)
            %   Last two indices: spatial (y, x) coordinates
            
            % =====================================================================
            % CONSTRUCT TRIADIC FREQUENCY RELATIONSHIPS
            % =====================================================================
            % For each frequency pair (f1, f2), compute the sum frequency f3 = f1+f2.
            % idx contains the linear indices mapping to row,col in the full
            % frequency grid. Extract them to construct the triadic information.
            
            % Create 2D frequency grids for f1 (rows) and f2 (columns)
            [f1,f2]     = ndgrid(f);
            [row,col] = ind2sub([length(f),length(f)],idx);
            
            % Assign f1, f2, f3 to triadic matrix
            triadics(:,1) = f1(row,1);  % f1 values from grid rows
            triadics(:,2) = f2(1,col);  % f2 values from grid columns
            triadics(:,3) = triadics(:,1)+triadics(:,2);  % f3 = f1 + f2
    
            % =====================================================================
            % CONVERT TO STROUHAL NUMBERS (ST) FOR FLOW DYNAMICS SCALING
            % =====================================================================
            % Strouhal number St = (f * D_j) / u_j is a dimensionless frequency
            % that enables comparison across jets with different diameters and
            % velocities. For triadic relationships: St_f1, St_f2, St_f3.
            % Both are stored to support plots in either frequency or St domain.
            
            % Convert linear frequencies to Strouhal numbers
            St = (f*D_j*1e-3)/u_j;  % D_j in mm, so multiply by 1e-3 to convert to m
            St1 = (f1*D_j*1e-3)/u_j;
            St2 = (f2*D_j*1e-3)/u_j;
    
            % Convert triadic frequencies to Strouhal triads
            triadics_St = triadics.*((D_j*1e-3)/u_j);
    
            % =====================================================================
            % EXTRACT BISPECTRUM AMPLITUDE AT TRIADIC POINTS
            % =====================================================================
            % For each triadic frequency pair (St_f1, St_f2), locate the nearest
            % bispectral peak and store its amplitude. This links mode shapes
            % to the actual bispectral magnitude of their interaction.
            
            for j = 1:size(triadics_St,1)
                % Find nearest frequency in St array to current triadic St_f1
                l = find(abs(St - triadics_St(j,1)) == min(abs(St - triadics_St(j,1))));
                % Find nearest frequency in St array to current triadic St_f2
                k = find(abs(St - triadics_St(j,2)) == min(abs(St - triadics_St(j,2))));
                % Store bispectrum magnitude at (l, k)
                triadics_St(j,4) = B(l,k);
            end
    
            % =====================================================================
            % GENERATE OUTPUT PATHS AND FILENAMES
            % =====================================================================
            % Naming convention encodes all analysis parameters:
            % Nozzle_type_Condition_Nt_Nfft_ovlp[_Specfreqs].mat
            % This allows direct comparison of results with different parameters
            % and easy identification of processing configuration from filename.
            
            %% Generate the outputs that we want
            % Getting the physical x and y dimensions and then non-dimensionalising

            condition = extractBefore(case_list{ii},'_Field');

            if using_npr
                
                % Create output directory structure for this case
                % Pathing to the folder where the BMD results are stored
                to_BMD = fullfile(save_folder,'BMD_Results');

                % Ensure directory exists
                mkdir(fullfile(to_BMD,'Data'));
        
                % Construct filename with all parameters encoded
                % Format: nozzle_type_NPR_xx_Nt_xxxxx_Nfft_xxxx_ovlp_xx[_Specfreqs].mat
                if use_spec_freqs
                    mat_file = strcat(condition,...
                        '_Nt',num2str(n_snapshots,'_%.5i_'),'Nfft',num2str(nfft,'_%.3i_'),...
                        'ovlp',num2str(overlap,'_%.2i'),'_Specfreqs');
                else
                    mat_file = strcat(condition,...
                        '_Nt',num2str(n_snapshots,'_%.5i_'),'Nfft',num2str(nfft,'_%.3i_'),...
                        'ovlp',num2str(overlap,'_%.2i'));
                end
        
                save_file = fullfile(to_BMD,'Data',mat_file);
        
                % =====================================================================
                % SAVE BMD RESULTS TO MAT FILE
                % =====================================================================
                % Save all computed/loaded variables for post-processing and plotting.
                % MAT file format v7.3 allows files >2GB (needed for large P arrays).
                
                % Saving data into the .mat file
                save(save_file,'NPR',...
                            'St',...
                            'B',...
                            'P',...
                            'D',...
                            'fps',...
                            'overlap',...
                            'nfft',...
                            'n_snapshots',...
                            'im_mean', ...
                            'x','y',...
                            'f', 'f1', 'f2', ...
                            'St1','St2','triadics_St', ...
                            'triadics','T','idx','-v7.3');
    
            else  % Using Mach number (Mj) instead of NPR

                % Create output directory structure for this case
                % Pathing to the folder where the BMD results are stored
                to_BMD = fullfile(save_folder,'BMD_Results');
      
                % Ensure directory exists
                mkdir(fullfile(to_BMD,'Data'));
                
                % Construct filename with all parameters encoded
                % Format: nozzle_type_M_xx_Nt_xxxxx_Nfft_xxxx_ovlp_xx[_Specfreqs].mat
                if use_spec_freqs
                    mat_file = strcat(condition,...
                        '_Nt',num2str(n_snapshots,'_%.5i_'),'Nfft',num2str(nfft,'_%.3i_'),...
                        'ovlp',num2str(overlap,'_%.2i'),'_Specfreqs');
                else
                    mat_file = strcat(condition,...
                    '_Nt',num2str(n_snapshots,'_%.5i_'),'Nfft',num2str(nfft,'_%.3i_'),...
                    'ovlp',num2str(overlap,'_%.2i'));
                end
        
                save_file = fullfile(to_BMD,'Data',mat_file);
    
                % =====================================================================
                % SAVE BMD RESULTS TO MAT FILE (Mach variant)
                % =====================================================================
                % Same structure as NPR variant; only difference is current_M
                % instead of current_NPR saved with results.
                % Saving data into the .mat file
                save(save_file,'M',...
                            'St',...
                            'B',...
                            'P',...
                            'D',...
                            'fps',...
                            'overlap',...
                            'nfft',...
                            'n_snapshots',...
                            'im_mean', ...
                            'x','y',...
                            'f', 'f1', 'f2', ...
                            'St1','St2','triadics_St',...
                            'triadics','T','idx','opts','-v7.3');
            end
        end
    end
end

