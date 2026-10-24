% SPOD_for_mat_files.m
% =====================================================================
% Computes Spectral Proper Orthogonal Decomposition (SPOD) on preprocessed
% MAT files containing snapshot data. SPOD extracts the most energetic
% spatially-coherent structures as a function of frequency, enabling
% frequency-domain modal analysis of turbulent/unsteady flows.
%
% WORKFLOW:
%   1. Load snapshot data from *Fields.mat files
%   2. Compute frequency-domain eigendecomposition via spod()
%   3. Optionally restrict to specific frequency regions for focused analysis
%   4. Save SPOD modes P(freq, mode, y, x) and eigenvalues L(freq, mode)
%   5. Convert frequencies to Strouhal numbers for dimensional comparison
%
% CONFIGURATION:
%   - Set Top_folders, parent/main_folder_str for case selection
%   - Adjust n_snapshots, nfft, overlap for frequency resolution/memory
%   - Set set_frequencies=true to analyze only specific Strouhal ranges
%
% OUTPUT: Saves MAT files in save_folder/SPOD_Results/Data/
%         with pattern: condition_Nt_Nfft_ovlp.mat

clear; close;

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

% Detect execution environment: 1 if HPC (Linux), 0 if Windows PC
using_MASSIVE = 1-ispc;
using_Market = false;  % Whether to use Market (shared network drive) for data storage

% =====================================================================
% DIRECTORY CONFIGURATION
% =====================================================================
% Same hierarchy as BMD/POD scripts
% Top_folder / parent_folder / main_folder / Data -> *Fields.mat

Top_folders = "\\ad.monash.edu\home\User088\joellukw\Documents\Monash_Research_Fellow\Experiments\"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                   % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "\\ad.monash.edu\home\User088\joellukw\Documents\Monash_Research_Fellow\Experiments\"; % Usually set to same as Top_folders. Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = ["*Misc*"];      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = ["*SPOD_Nfft*"];         % main_folder_str: regex pattern (select by nozzle config)

% Retrieve paths matching above criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

% =====================================================================
% SPOD ANALYSIS PARAMETERS
% =====================================================================
% Control frequency resolution, snapshot count, and optional frequency targeting

n_snapshots_set = 0;            % Snapshot count; 0 = use all available

%%% For Welch SPOD
nfft = 4096;                     % FFT size: larger = finer frequency resolution but higher memory (For non-taper SPOD only)
overlap = 50;           % Percent overlap between successive windows (Welch's method)                     

%%% Set SPOD options for using Sine-Taper (False for Default Welch Method)
do_taper_spod = false;     %% Can achieve finer df, especially around tone peaks in adaptive mode. Is much slower than Welch. 
do_compression = false;    %% Will only operate if spatial degrees of freedom is less than temporal points

do_truncation = false;     %% Requires compression to be true.
n_lossy_compression = 100;      % Number of truncated modes to keep for lossy compression

is_broadband_only = false;
nWin_set = 10; % Number of sine windows to use for broadband only data      


% NOTE: If processing half-planes, adjust naming to avoid overwrites
           

% Optional: restrict analysis to specific frequency bands
set_frequencies = false;  % true = analyze only specified Strouhal numbers
St_des = [0.25,0.29];    % Target Strouhal numbers (if set_frequencies=true)
                         % Analysis will include ±25 frequency bins around each

% Memory: max_memory_GB > 0 caps what spod uses (data + FFT blocks + modes). When the
% FFT blocks don't fit, spod splits the frequencies into batches and recomputes the
% block FFTs for each batch: no temporary files, same result, one extra pass over the
% data per batch. 0 = no cap (one batch). A memory estimate is printed either way.
% e.g. a 1.4 TB MASSIVE desktop: max_memory_GB = 1200 (leave room for MATLAB itself)
max_memory_GB = 0;

% Older low-memory route (temporary FFT files on disk). It writes the FFT blocks of the
% whole record (~2x the single-precision data) plus one file per frequency, and re-reads
% every block file for every frequency: very slow on long records. Prefer max_memory_GB.
restrict_memory = false;
use_alternate_temp_loc = false; % use the below temporary file location
alternate_temp_save_loc = '/home/jweightman/ty79_scratch2/JWeightman/Schlieren/Temporary_Folder';  % Can use this as an alternate path if the temp files are getting too large when restrict_memory is true

% =====================================================================
% MAIN PROCESSING LOOP
% =====================================================================

for m = 1:length(parent_folders)
    % Construct paths to parent folder
    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Find all subfolders matching main_folder_str pattern
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % Loop through each main_folder variant
    for k = 1:length(main_folders)
        main_folder = fullfile(parent_folder,main_folders(k).name);
        save_folder = fullfile(save_folder_upper,main_folders(k).name);

        mkdir(save_folder);
        
        % =====================================================================
        % LOCATE AND CATALOG SNAPSHOT FILES
        % =====================================================================
        snapshot_dir = fullfile(main_folder,'Data');
        suffix = '*Fields.mat';
        case_list = dir(fullfile(snapshot_dir,suffix));
    
        case_list = {case_list.name};
    
        % Determine operating condition from filename
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
        if using_npr
            [nozzle_list, NPR_list, NPR_factor] = get_filename_params(using_npr, case_list);
        else
            [nozzle_list, M_list, M_factor] = get_filename_params(using_npr, case_list);
        end
        
        % =====================================================================
        % SNAPSHOT LOOP: Compute SPOD for each case
        % =====================================================================
        for ii = 1:length(case_list)
            clearvars im_data L P f opts

            % =====================================================================
            % LOAD SNAPSHOT DATA FROM MAT FILE
            % =====================================================================
            % Load preprocessed snapshot field im_data(y, x, time) and metadata
            
            filename = case_list{ii};
            full_filename = fullfile(snapshot_dir,filename);
            file = matfile(full_filename);  % Memory-efficient access
    
            % Determine available snapshots and load n_snapshots (or fewer)
            im_size = size(file,'im_data');
            if n_snapshots_set == 0
                n_snapshots = im_size(3);
            else
                n_snapshots = min([n_snapshots_set,im_size(3)]);
            end
            
            % Load data and metadata
            % PATCH 2026-10-23: kept in the class it is stored in (int16) and read
            % straight into (time, y, x) order a chunk at a time. Loading, casting
            % to single and then permuting held up to two single copies of the
            % data at once; spod converts each block to single as it uses it.
            [im_data, im_mean] = load_fields_time_major(file, n_snapshots);
            x = file.x;
            y = file.y;
            fps = file.fps;  % Frames per second for frequency scaling
            D = file.D;      % Nozzle diameter for Strouhal normalization
                
            % =====================================================================
            % PREPARE DATA FOR SPOD
            % =====================================================================
            % SPOD expects (time, spatial_1, spatial_2) layout and operates
            % on mean-subtracted data. Compute and subtract the temporal mean.
            
            % im_data is already (time, y, x); im_mean is the temporal mean field
            if do_taper_spod
                im_data = single(im_data);  % spod_adapt works on single data
            end
    
            % =====================================================================
            % COMPUTE IDEAL JET VELOCITY FOR STROUHAL NORMALIZATION
            % =====================================================================
            % Strouhal number St = (f*D_j) / u_j enables dimensional comparison
            % Ideal velocity derived from isentropic flow relations (NPR or Mach)
            
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
    
            % =====================================================================
            % OPTIONAL: RESTRICT SPOD TO SPECIFIC FREQUENCY BANDS
            % =====================================================================
            % If set_frequencies=true, analyze only user-specified Strouhal bands
            % (±25 bins around each target frequency). Otherwise, compute full range.
            
            if set_frequencies
                % PATCH 2026-10-23: spod now honours opts.savefreqs in memory, so
                % savefft is no longer needed for this (the line that set it was
                % overwritten by opts.savefft = restrict_memory below anyway, so
                % set_frequencies did nothing unless restrict_memory was true).
                St_full_list = [];
                
                % Build list of frequency indices around each target Strouhal
                for ss = 1:length(St_des)
                    % Find frequency index closest to target St_des(ss)
                    St_ind = find(abs(St-St_des(ss)) == min(abs(St-St_des(ss))));
                    % Include ±25 bins around target
                    St_list = [St_ind-25:St_ind+25];
                    St_full_list = cat(2,St_full_list,St_list);
                end
                % Remove duplicates and filter out invalid indices
                St_full_list = unique(St_full_list);
                St_full_list(St_full_list<1) = [];
                St_full_list(St_full_list > size(St,2)) = [];
                opts.savefreqs = St_full_list;  % Pass to SPOD function
            else
                % Analyze all frequencies
                St_full_list = [1:size(St,2)];
            end

            % =====================================================================
            % CONFIGURE SPOD ALGORITHM
            % =====================================================================
            % spod(X, nfft, intWeights, nOvlp, dt, opts)
            % Computes frequency-domain POD via Welch averaging of windowed FFTs.
            % opts controls saving behavior, frequency selection, and output modes.
           
            intWeights      = [];  % Integration weights for spatial quadrature (empty=Cartesian)
            nOvlp           = nfft*overlap/100;  % Convert to sample count
            dt              = 1/fps;  % Time step [seconds]
            modes_to_keep   = 4;  % Number of modes per frequency to save
    
            opts.savefft    = restrict_memory;  % If true, save FFT components separately (if memory reqs are too high. Much slower though and requires larger storage space temporarily)
            
            if opts.savefft
                if use_alternate_temp_loc
                    opts.savedir    = fullfile(alternate_temp_save_loc,'SPOD_Results','Temp_Files');  % Temporary savefft directory separate from the final save directory (could be a different drive for example if space is limited)
                else
                    opts.savedir    = fullfile(save_folder,'SPOD_Results','Temp_Files');  % Temporary savefft directory
                end
                mkdir(opts.savedir);
            end
            
            opts.nsave      = modes_to_keep;  % Save only top N modes per frequency
            opts.max_memory_GB = max_memory_GB;
            if do_truncation
                opts.truncate = n_lossy_compression;
            end
            if do_compression
                opts.compress = true;
            end
            
            % =====================================================================
            % EXECUTE SPOD DECOMPOSITION
            % =====================================================================
            % Returns:
            %   L: eigenvalues (energy) indexed by (frequency, mode)
            %   P: modes indexed by (frequency, y, x, mode)
            %   f: frequency array (subset if set_frequencies=true)
            %   A: expansion coefficients (time-domain modal amplitudes)
            tic
            if ~do_taper_spod
                [L,P,f,~,A]     = spod(im_data,nfft,intWeights,nOvlp,dt,opts);
            else
                if ~is_broadband_only
                    nWin = [];
                    opts.adaptive   = true;
                    opts.tol        = 1e-6;
                else
                    opts.adaptive   = false;
                    opts.tol        = 1e-6;
                    nWin    = nWin_set*ones(size(im_data,1),1);
                end
                [L,P,f,A,nWin]  = spod_adapt(im_data,nWin,[],[],dt,opts);
            end
            toc
            % PATCH 2026-10-23: St from the frequencies spod/spod_adapt actually
            % used. spod_adapt uses one block of all nt samples, so St built from
            % nfft above didn't match L, P or f.
            St = (f(:).'*D_j*1e-3)/u_j;
            f = f(:).';
            
            % =====================================================================
            % POST-PROCESS: RECOMBINE IF FREQUENCY-RESTRICTED
            % =====================================================================
            % If set_frequencies=true, spod() returns modes indexed by the
            % restricted frequency list. Rebuild P to have frequency as first index.
            
            if opts.savefft
                % Rebuild mode array with consistent frequency indexing
                P_func = P;
                clearvars P
                count = 0;
                for iii = St_full_list
                    count = count + 1;
                    for jjj = 1:min(modes_to_keep,size(L,2))
                        P(count,:,:,jjj) = P_func(iii,jjj);
                    end
                    L_temp(count,:) = L(iii,:);
                    A_temp(count,:,:) = A(iii,:,:);
                end
                % Update frequency arrays to match restricted range
                St = St(St_full_list);
                f = f(St_full_list);
                A = A_temp;
                L = L_temp;
            else
                % Cast to single precision to save disk space
                P = cast(P(:,:,:,1:min(modes_to_keep,size(P,4))),'single');  % PATCH 2026-10-23: fewer modes than blocks on short records
                if set_frequencies
                    % keep only the requested frequencies (the others are zero)
                    P = P(St_full_list,:,:,:);
                    L = L(St_full_list,:);
                    A = A(St_full_list,:,:);
                    St = St(St_full_list);
                    f = f(St_full_list);
                end
            end
    
            % =====================================================================
            % GENERATE OUTPUT PATH AND FILENAME
            % =====================================================================
            % Filename encodes all analysis parameters for reproducibility
            
            condition = extractBefore(case_list{ii},'_Field');

            if do_taper_spod
                used_adaptive = opts.adaptive;
                tolerance = opts.tol;
            else
                used_adaptive = false;
                tolerance = 0;
                nWin = 0;
            end
    
            if using_npr
    
                
                % Create output directory for SPOD results
                to_SPOD = fullfile(save_folder,'SPOD_Results');
                mkdir(fullfile(to_SPOD,'Data'));
        
                % Construct filename encoding all parameters
                if ~do_taper_spod
                    mat_file = strcat(condition,...
                        '_Nt',num2str(round(n_snapshots/1000),'_%ik_'),'Nfft',num2str(nfft,'_%.3i_'),...
                        'ovlp',num2str(overlap,'_%2.1f'),'.mat');
                elseif used_adaptive
                    mat_file = strcat(condition,...
                        '_Nt',num2str(round(n_snapshots/1000),'_%ik_'),'Adaptive_Sine_Taper','.mat');
                else
                    mat_file = strcat(condition,...
                        '_Nt',num2str(round(n_snapshots/1000),'_%ik_'),'Sine_Taper_nWin_',num2str(nWin_set),'.mat');
                end

        
                save_file = fullfile(to_SPOD,'Data',mat_file);
    
                % =====================================================================
                % SAVE SPOD RESULTS TO MAT FILE (NPR variant)
                % =====================================================================
                % Store modal decomposition results and metadata for post-processing
                
                save(save_file,'NPR',...
                            'St',...
                            'L',...
                            'P',...
                            'A',...
                            'D',...
                            'fps',...
                            'overlap',...
                            'nfft',...
                            'n_snapshots',...
                            'im_mean', ...
                            'x','y',...
                            'f', ...
                            'do_taper_spod',...
                            'nWin', ...
                            'do_compression', ...
                            'do_truncation', ...
                            'n_lossy_compression', ...
                            'used_adaptive',...
                            'tolerance',...
                            '-v7.3', '-nocompression');
    
            else
    
                % Create output directory for SPOD results
                to_SPOD = fullfile(save_folder,'SPOD_Results');
                
                mkdir(fullfile(to_SPOD,'Data'));
        
                % Construct filename encoding all parameters
                if ~do_taper_spod
                    mat_file = strcat(condition,...
                        '_Nt',num2str(round(n_snapshots/1000),'_%ik_'),'Nfft',num2str(nfft,'_%.3i_'),...
                        'ovlp',num2str(overlap,'_%.2i'),'.mat');
                elseif used_adaptive
                    mat_file = strcat(condition,...
                        '_Nt',num2str(round(n_snapshots/1000),'_%ik_'),'Adaptive_Sine_Taper','.mat');
                else
                    mat_file = strcat(condition,...
                        '_Nt',num2str(round(n_snapshots/1000),'_%ik_'),'Sine_Taper_nWin_',num2str(nWin_set),'.mat');
                end
    
                save_file = fullfile(to_SPOD,'Data',mat_file);
    
                % =====================================================================
                % SAVE SPOD RESULTS TO MAT FILE (Mach variant)
                % =====================================================================
                % Same structure as NPR variant; only difference is current_M
                % instead of current_NPR saved with results.
                save(save_file,'M',...
                            'St',...
                            'L',...
                            'P',...
                            'A',...
                            'D',...
                            'fps',...
                            'overlap',...
                            'nfft',...
                            'n_snapshots',...
                            'im_mean', ...
                            'x','y',...
                            'f', ...
                            'do_taper_spod',...
                            'nWin', ...
                            'do_compression', ...
                            'do_truncation', ...
                            'n_lossy_compression', ...
                            'used_adaptive',...
                            'tolerance',...
                            '-v7.3', '-nocompression');
            end
        end
    end
end

