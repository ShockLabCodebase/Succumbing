%================================================================================
% SPOD_Mode_Frequency_Reconstruction.m
%================================================================================
% PURPOSE:
%   Reconstruct full-field flow snapshots from individual SPOD modes at
%   user-selected frequencies. Enables modal isolation, bandpass filtering,
%   and visualization of coherent structure contributions to the original
%   flow field. Outputs time-resolved synthetic snapshots for animation or
%   further analysis (e.g., frequency-specific wavenumber analysis).
%
% HIGH-LEVEL WORKFLOW:
%   1. Discover SPOD result MAT files in {main_folder}/SPOD_Results/Data/
%   2. Load SPOD modes P [n_freq, n_modes, n_y, n_x] and eigenvalues L [n_freq, n_modes]
%   3. Load SPOD expansion coefficients A [n_freq, n_modes, n_blocks]
%   4. Apply frequency/mode filtering to A:
%      a) BANDPASS mode: set A=0 outside [St_highpass, St_lowpass] band
%      b) SPECIFIC mode: set A=0 for all except user-selected peak frequencies
%      c) FULL mode: reconstruct with all frequencies/modes (up to n_modes_recon)
%   5. Inverse SPOD transform: invspod(P, A_filtered, nfft, overlap, n_modes_recon)
%      → synthesizes time-domain snapshots im_data [n_time, n_y, n_x]
%   6. Save reconstructed snapshots to MAT file with metadata
%
% OUTPUT FILES:
%   Filename structure depends on reconstruction mode:
%   - BANDPASS: {nozzle}_NPR_{NPR}_SPOD_Reconstruction_Modes_1_{n_modes}_Freq_{St_low}_{St_high}_file_{n}.mat
%   - SPECIFIC: {nozzle}_NPR_{NPR}_SPOD_Reconstruction_Modes_1_{n_modes}_Specific_Freqs_Used_file_{n}.mat
%   - FULL:     {nozzle}_NPR_{NPR}_SPOD_Reconstruction_Modes_1_{n_modes}_file_{n}.mat
%   
%   Saved Variables:
%     - im_data: [n_time, n_y, n_x] single, reconstructed flow field snapshots
%     - im_mean: [n_y, n_x] double, mean flow field (add to im_data for absolute field)
%     - x, y: [1, n_x], [1, n_y] double, spatial grid coordinates [mm]
%     - St, f: [1, n_freq] double, Strouhal numbers and frequencies [Hz]
%     - L: [n_freq, n_modes] double, SPOD eigenvalues (modal energy)
%     - n_modes_recon: scalar int, number of modes used in reconstruction (default 4)
%     - (bandpass) St_highpass, St_lowpass: scalar double, frequency band limits
%     - (specific) specific_freqs, specific_freqs_inds: arrays of selected frequencies and indices
%
% CONFIGURATION PARAMETERS:
%   - bandpass: boolean, true = reconstruct St ∈ [St_highpass, St_lowpass] band
%   - specific: boolean, true = reconstruct user-selected peak frequencies only
%   - n_modes_recon: int, number of SPOD modes to include (default 4, max = size(P,2))
%   - St_lowpass, St_highpass: scalars, Strouhal band limits for bandpass mode
%   - specific_freqs_inds: [1, n_peaks] int, frequency indices for specific mode
%   - SPOD_on_Market: boolean, true = load SPOD from Market drive; false = from save_folder_outer
%
% PHYSICAL INTERPRETATION:
%   - SPOD reconstruction: im(x,y,t) ≈ im_mean(x,y) + Σ_f Σ_m a_fm(t) * P_fm(x,y)
%     where a_fm(t) = inverse FFT of SPOD expansion coefficients A_fm
%   - Bandpass filtering: retains only frequency components St ∈ [St_low, St_high]
%   - Specific frequency: isolates single coherent structure (e.g., screech tone, jet instability)
%   - n_modes_recon controls modal truncation: higher values capture more spatial complexity
%
% APPLICATIONS:
%   - Isolated study of single coherent structure (one frequency, one mode)
%   - Modal contribution assessment: how much energy does mode m contribute at frequency f?
%   - Bandpass filtering: separate broadband turbulence from tonal components
%   - Synthetic data generation for validation, wavenumber analysis, or POD benchmarking
%   - Frequency-specific wavenumber FFT (feed im_data into SPOD_2D_Wavenumber_Spectrum_Analysis.m)
%
% DEPENDENCIES:
%   - invspod.m: inverse SPOD transform (frequency → time domain synthesis)
%   - get_parent_path.m: directory discovery for MASSIVE/Windows compatibility
%   - get_filename_params.m: extract NPR/Mach from filenames
%   - CMRmap.m, pogmap.m: custom colormaps (not used in current version but loaded)
%
% MEMORY/PERFORMANCE CONSIDERATIONS:
%   - im_data size: [n_time, n_y, n_x] single ~ 4 bytes × n_time × n_y × n_x
%     Example: 1000 snapshots × 256×256 pixels = 256 MB
%   - invspod uses overlap-add synthesis: computationally expensive for large nfft
%   - MAT v7.3 (HDF5) format supports files >2 GB for long sequences
%   - Reconstruction time scales with: n_modes_recon, nfft, n_blocks, n_freq (active)
%
% KEY ALGORITHM NOTES:
%   - A_passed = A: copy all expansion coefficients
%   - Set A_passed(unwanted_freqs, :, :) = 0 to zero out contributions
%   - invspod synthesizes time series via inverse FFT + overlap-add windowing
%   - Hann window replaces Hamming window only for the weight contribution for overlapping blocks
%   - Output im_data is cast to single precision to save storage (4 bytes vs. 8)
%   - Permute im_data from [y, x, t] to [t, y, x] for standard time-first indexing

clear; close;

%% ======================== PATH SETUP ========================
% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

%% ======================== COLORMAP SELECTION ========================
% Define custom colormaps for potential visualizations
% NOTE: Current script does not generate plots; colormaps reserved for future extensions
sCMRmap = CMRmap;  % sCMRmap: [n_colors, 3] double, sequential colormap (blue → red)
cmap = pogmap;     % cmap: [n_colors, 3] double, alternative colormap

%% ======================== ENVIRONMENT CONFIGURATION ========================
% Detect execution environment and configure data source paths
% RATIONALE: MASSIVE HPC uses Linux paths; Windows PC uses network drives

using_MASSIVE = 1-ispc;         % using_MASSIVE: boolean, true if Linux (HPC), false if Windows
using_Market = false;           % using_Market: boolean, true = snapshot data on Market shared drive
SPOD_on_Market = false;         % SPOD_on_Market: boolean, true = load SPOD results from Market;
                                % false = load from save_folder_outer (scratch)
                                % RATIONALE: separate control for SPOD vs. snapshot locations

%% ======================== DIRECTORY CONFIGURATION ========================
% Define directory hierarchy and dataset selection patterns
% Folder structure: Top_folders / parent_folder / main_folder / SPOD_Results / Data
% RATIONALE: hierarchical organization by jet type (parent) → nozzle config (main)

Top_folders = "/home/jweightman/qk75_scratch2/JWeightman"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                   % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman"; % Usually set to same as Top_folders. Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = ["*Schlier*"];      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = ["*ONR*"];         % main_folder_str: regex pattern (select by nozzle config)

% Discover parent and save folder paths matching selection criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);
% parent_folders: cell array of strings, absolute paths to data parent folders
% save_folders: cell array of strings, corresponding output directories

%% ======================== MODE RECONSTRUCTION PARAMETERS ========================
% Control frequency/mode selection for reconstruction
% RATIONALE: Three mutually exclusive reconstruction modes

do_bandpass = false;  % do_bandpass: boolean, true = reconstruct Strouhal band [St_highpass, St_lowpass]
                   % RATIONALE: isolate broadband turbulence or specific frequency range
do_specific = true;   % do_specific: boolean, true = reconstruct only user-selected peak frequencies
                   % RATIONALE: extract single coherent structure (e.g., screech tone at St=0.3)
n_modes_set = 2;   % n_modes_set: number of modes to reconstruct, set to 0 to use all modes
% NOTE: If both false, reconstructs full spectrum (all frequencies, all modes up to n_modes_set)

individual_frequencies = true; % Reconstruct each frequency individually, or false to have all specified frequencies present
St_specified_outer = [0.42];%
bandwidth_range_values = [0.05]; %if do_specific = true: full bandwidth per St specified
                                    %if do_bandpass = true: bandwidth range as a 2 element vector

%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over parent folders (jet types) → main folders (nozzle configs) → cases (NPR/Mach)
% For each: load SPOD results, filter frequencies/modes, reconstruct snapshots, save MAT file

for m = 1:length(parent_folders)
    % Construct paths to parent folder
    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Find all subfolders matching main_folder_str pattern
    main_folders = dir(fullfile(parent_folder,main_folder_str));
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % Loop through each main_folder variant
    for k = 1:length(main_folders)
        %% Resolve SPOD data source and output directories
        % Two scenarios: (1) SPOD on Market, save elsewhere; (2) SPOD and save in same location
        main_folder_market = fullfile(parent_folder,main_folders(k).name,'SPOD_Results');
        % main_folder_market: string, path to SPOD results if stored on Market drive
        
        if SPOD_on_Market
            % Scenario 1: load SPOD from Market, save reconstructions to scratch
            main_folder = main_folder_market;  % main_folder: string, path to SPOD data (read)
            save_folder = fullfile(save_folder_upper,main_folders(k).name);  % save_folder: string, reconstruction output (write)
        else
            % Scenario 2: load SPOD from scratch, save to same location
            main_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results');
            save_folder = fullfile(save_folder_upper,main_folders(k).name);
        end

        mkdir(save_folder);  % Ensure save directory exists

        SPOD_dir = fullfile(main_folder,'Data');  % SPOD_dir: string, path to SPOD MAT files

        %% Discover SPOD result files matching pattern
        suffix = strcat('*Nfft*.mat');  % suffix: string, pattern to match SPOD filenames
        case_list = dir(fullfile(SPOD_dir,suffix));
        case_list = extractfield(case_list, 'name');  % case_list: cell array of filenames
    
        %% Detect operating condition parameterization (NPR vs. Mach)
        % RATIONALE: NPR (Nozzle Pressure Ratio) for heated jets, Mach for ideally-expanded jets
        if contains(case_list{1},'_NPR_')
            using_npr = true;   % using_npr: boolean, true = NPR parameterization
        else
            using_npr = false;  % using_npr: false = Mach number parameterization (_Mj_, _M_ or _Ma_)
        end
    
        %% Extract operating condition values from filenames
        % Parse nozzle names and NPR/Mach values for all cases
        if using_npr
            [nozzle_list, NPR_list, NPR_factor] = get_filename_params(using_npr, case_list);
            % nozzle_list: cell array of strings, nozzle identifiers
            % NPR: [1, n_cases] double, nozzle pressure ratios
            % NPR_factor: scalar int, decimal precision factor (e.g., 10 → NPR stored as integers ×10)
        else
            [nozzle_list, M_list, M_factor] = get_filename_params(using_npr, case_list);
            % M: [1, n_cases] double, Mach numbers
            % M_factor: scalar int, decimal precision factor
        end

        %% ===================== PER-CASE PROCESSING LOOP =====================
        % For each operating condition: load SPOD, filter, reconstruct, save
        if ~do_specific && do_bandpass
            St_specified_outer = [1];
            St_loop_size = 1;
            if length(bandwidth_range_values) ~= 2
                error("For do_bandpass, bandwidth_range_values must be a 2 element vector [St_low, St_high]");
            end
        elseif ~do_specific
            St_loop_size = 1;
            St_specified_outer = [1];

        elseif do_specific && individual_frequencies
            St_loop_size = size(St_specified_outer,2);
        else
            St_loop_size = 1;
        end
        
        for ii = 1:length(case_list)

            %% Load SPOD results from MAT file (once per case; St is already in the file)
            % Expected variables: P, A, L, St, f, x, y, D, fps, nfft, overlap, n_snapshots, im_mean, NPR|M
            load_file = fullfile(SPOD_dir,case_list{ii});
            load(load_file);

            for St_loop = 1:St_loop_size

                % P: [n_freq, n_modes, n_y, n_x] complex double, SPOD spatial modes
                % A: [n_freq, n_modes, n_blocks] complex double, SPOD expansion coefficients (freq domain)
                % L: [n_freq, n_modes] double, SPOD eigenvalues (modal energy)
                % St: [1, n_freq] double, Strouhal numbers
                % f: [1, n_freq] double, frequencies [Hz]
                % x, y: [1, n_x], [1, n_y] double, spatial grid [mm]
                % im_mean: [n_y, n_x] double, temporal mean flow field
    
                %% ===================== FREQUENCY/MODE FILTERING =====================
                % Apply user-selected filter to SPOD expansion coefficients A
                % ALGORITHM: Copy A → A_passed, then zero out unwanted frequency components
                % RATIONALE: Setting A_passed(freq, :, :) = 0 removes that frequency from reconstruction
                
                A_passed = A;  % A_passed: [n_freq, n_modes, n_blocks] complex, filtered coefficients
    
                if do_bandpass   
                    %% --- BANDPASS FILTER MODE ---
                    % Retain only frequencies within [St_highpass, St_lowpass] Strouhal range
                    % RATIONALE: isolate specific frequency bands (e.g., broadband turbulence, screech)
                    % EXAMPLE: St ∈ [0.1, 1.0] captures jet column mode, excludes low-freq flapping
                    
                    St_lowpass       = bandwidth_range_values(2);   % St_lowpass: scalar double, upper Strouhal bound
                    St_highpass      = bandwidth_range_values(1);   % St_highpass: scalar double, lower Strouhal bound
                    
                    % Zero out frequencies outside [St_highpass, St_lowpass]
                    A_passed(St>=St_lowpass|St<=St_highpass,:,:) = 0;
                    % LOGIC: St>=St_lowpass → too high; St<=St_highpass → too low; set both to zero
                    
                elseif do_specific
                    %% --- SPECIFIC FREQUENCY MODE ---
                    % Retain only user-selected peak frequencies (e.g., screech tones, harmonics)
                    % RATIONALE: isolate single coherent structure for detailed study
                    % TWO METHODS: (1) auto-detect n_freqs peaks from eigenvalues L(:,1)
                    %              (2) manually specify frequency indices
                    
                    % METHOD 1: Auto-detect peaks (currently commented out in favor of METHOD 2)
                    n_freqs = 1;  % n_freqs: scalar int, number of peaks to auto-detect
                    [~,specific_freqs_inds] = maxk(L(:,1),n_freqs); % specific_freqs_inds: [1, n_freqs] int, indices of top eigenvalues
                    
                    % METHOD 2: Manually specify frequencies (user-defined peaks)
                    if individual_frequencies
                        specific_freqs = St_specified_outer(St_loop);
                    else
                        specific_freqs = St_specified_outer;
                    end
    
                    % Find nearest frequency indices in St vector (handles minor indexing errors)
                    St_specific_ind = [];
                    for j = 1:size(specific_freqs,2)
                        St_specific_ind(j) = find(abs(St - specific_freqs(j)) == min(abs(St - specific_freqs(j))));
                        % St_specific_ind: [1, n_peaks] int, verified indices closest to specific_freqs
                    end
    
                    %%% Add bandwidth to the peak: bandwidth_ind is the half-width in
                    %%% bins nearest to half the bandwidth specified (one value is used
                    %%% for every St if only one is given)
                    dSt = St(2) - St(1);
                    if individual_frequencies
                        bw_values = bandwidth_range_values(min(St_loop,end));
                    else
                        bw_values = bandwidth_range_values(min(1:size(specific_freqs,2),end));
                    end
                    bandwidth_ind = round(bw_values/2/dSt);

                    bandwidth_range = 2.*bandwidth_ind.*dSt;   % bandwidth actually kept (St)
                    St_list = [];
                    for j = 1:size(specific_freqs,2)
                        % Create list of all non-selected frequencies
                        St_list = cat(2,St_list,[St_specific_ind(j)-bandwidth_ind(j):St_specific_ind(j)+bandwidth_ind(j)]);  % St_non_list: [1, n_freq - n_peaks] int, indices to zero out
                    end

                    St_non_list = setdiff([1:size(St,2)],unique(St_list));

                    % Zero out all frequencies except selected peaks
                    A_passed(St_non_list,:,:) = 0;
                else
                    A_passed = A;
                end
    
                %% ===================== INVERSE SPOD RECONSTRUCTION =====================
                % Synthesize time-domain snapshots from filtered SPOD coefficients
                % ALGORITHM: invspod performs inverse FFT + overlap-add windowing
                % MATHEMATICAL FORMULATION:
                %   im_data(x,y,t) = Σ_f Σ_m [IFFT(A_passed_fm) * P_fm(x,y)]
                %   where IFFT applies Hann window overlap-add to ensure smooth transitions
                
                n_modes_first = 1; %%% If you choose to start recon at a lower energy mode, change this
    
                if n_modes_set == 0
                    n_modes_recon = [n_modes_first,size(P,4)];  % all saved modes
                else
                    n_modes_recon = [n_modes_first,min([size(P,4),n_modes_set])];  % n_modes_recon: scalar int, number of modes to reconstruct (default 4)
                end
    
                nt                  = size(nonzeros(A(:,1,1)),1);  % nt: scalar int, number of time blocks in original SPOD
                nOvlp               = nfft*overlap/100;            % nOvlp: scalar int, overlap length in samples
                                                                   % EXAMPLE: nfft=256, overlap=50% → nOvlp=128
                n_blocks            = 0;  % n_blocks: scalar int, set to 0 for automatic block count determination
                                          % RATIONALE: invspod computes from nt and overlap
        
                % Perform inverse SPOD transform
                im_data = invspod(P,A_passed,nfft,nOvlp,n_modes_recon,n_blocks,1/fps);  % dt gives the data's own amplitude
                % invspod: inverse transform function from SPOD toolbox
                % INPUTS:
                %   P: [n_freq, n_modes, n_y, n_x] spatial modes
                %   A_passed: [n_freq, n_modes, n_blocks] filtered coefficients
                %   nfft: FFT window length
                %   nOvlp: overlap length (samples)
                %   n_modes_recon: number of modes to include
                %   n_blocks: automatic if 0
                % OUTPUT:
                %   im_data: [n_y, n_x, n_time] double, reconstructed snapshots (initially)
                
                % Convert to single precision for storage efficiency
                im_data              = cast(im_data,'single');  % im_data: [n_y, n_x, n_time] single (4 bytes/value)
                % RATIONALE: single precision sufficient for visualization; reduces file size by 50%
                
                % Permute dimensions to [time, y, x] for standard indexing
                im_data              = permute(im_data,[2,3,1]);  % im_data: [n_time, n_y, n_x] single
                % RATIONALE: time-first indexing standard for snapshot sequences (easier to index im_data(t,:,:))
                %% ===================== SAVE RECONSTRUCTED SNAPSHOTS =====================
                % One save for all modes and both parameterisations (NPR or M). Files
                % always go to <main>/Data_Reconstructed, which Hilbert_POD_Analysis reads.

                if exist('D_eff') == 1
                    D = D_eff;
                elseif exist('D_e') == 1
                    D = D_e;
                end

                condition = extractBefore(case_list{ii},".mat");
                save_file = fullfile(save_folder,'Data_Reconstructed');  % save_file: string, output directory for reconstructed MAT files
                mkdir(save_file);

                modes_string = sprintf('_Modes_%i_%i',n_modes_recon(1),n_modes_recon(2));

                if do_bandpass
                    % FORMAT: {condition}_SPOD_Reconstruction_Modes_1_{n_modes}_Freq_{St_low}_{St_high}
                    fileout = fullfile(save_file,strcat(condition,'_SPOD_Reconstruction',modes_string,'_Freq_',...
                        num2str(St_highpass),'_',num2str(St_lowpass)));
                    filter_vars = {'St_highpass','St_lowpass'};
                elseif do_specific
                    % FORMAT: {condition}_SPOD_Reconstruction_St_{St1}[_{St2}...]
                    fileout = fullfile(save_file,strcat(condition,'_SPOD_Reconstruction','_St_'));
                    if individual_frequencies
                        fileout = strcat(fileout,num2str(round(St_specified_outer(St_loop),3)));
                    else
                        for j = 1:length(St_specified_outer)-1
                            fileout = strcat(fileout,num2str(round(St_specified_outer(j),3)),"_");
                        end
                        fileout = strcat(fileout,num2str(round(St_specified_outer(end),3)));
                    end
                    specific_freqs_inds = St_specific_ind;    % indices of the requested St in St
                    filter_vars = {'specific_freqs','specific_freqs_inds','bandwidth_range','bandwidth_ind'};
                else
                    % FORMAT: {condition}_SPOD_Reconstruction_Modes_1_{n_modes}
                    fileout = fullfile(save_file,strcat(condition,'_SPOD_Reconstruction',modes_string));
                    filter_vars = {};
                end

                % Append _file_{n} rather than overwrite an earlier reconstruction
                n_saves = dir(strcat(fileout,'*'));
                if size(n_saves,1) > 0
                    fileout = strcat(fileout,'_file_',num2str(length(n_saves)),'.mat');
                else
                    fileout = strcat(fileout,'.mat');
                end

                if using_npr
                    param_var = 'NPR';   % NPR: integer code as saved by SPOD_Analysis
                else
                    param_var = 'M';     % M: integer code as saved by SPOD_Analysis
                end

                save(fileout,param_var,...
                        'St',...                    % St: [1, n_freq] double, Strouhal vector
                        'L',...                     % L: [n_freq, n_modes] double, eigenvalues
                        'D',...                     % D: scalar double, nozzle diameter [mm]
                        'fps',...                   % fps: scalar double, frame rate [Hz]
                        'overlap',...               % overlap: scalar double, SPOD overlap percentage
                        'nfft',...                  % nfft: scalar int, FFT window length
                        'n_snapshots',...           % n_snapshots: scalar int, original snapshot count
                        'im_mean', ...              % im_mean: [n_y, n_x] mean field
                        'x','y',...                 % x, y: [n_y, n_x] grids [D]
                        'f',...                     % f: [1, n_freq] double, frequency vector [Hz]
                        'im_data',...               % im_data: [n_y, n_x, n_time] single, reconstructed snapshots
                        filter_vars{:},...
                        'n_modes_recon','n_modes_first','-v7.3','-nocompression');
    
    
                %% Create animations of the reconstructed fields (not saved)
                % figure
                % set(gcf,'Color',[1,1,1])
                % cmax = 500;
                % for t_i= [1,180:1:1000]
                %     subplot(3,1,1)
                %     pcolor(x,y,squeeze(im_data_buzz(t_i,:,:))); shading interp, axis equal tight
                %     title('Recon data Buzz')
                %     if t_i==1; cmax = max(abs(clim)); end
                %     clim(0.8*cmax*[-1 1]), colorbar    
                %     colormap(gray)
                %     subplot(3,1,2)
                %     pcolor(x,y,squeeze(im_data_1(t_i,:,:))); shading interp, axis equal tight
                %     title('Recon data Peak')
                %     clim(0.5*cmax*[-1 1]), colorbar    
                %     subplot(3,1,3)
                %     pcolor(x,y,squeeze(im_data_2(t_i,:,:))); shading interp, axis equal tight
                %     title('Recon data Peak')
                %     clim(0.1*cmax*[-1 1]), colorbar    
                % 
                %     colormap(gray)
                %     drawnow
                %     t_i
                % end
                % 
                % figure
                % set(gcf,'Color',[1,1,1])
                % cmax = 500;
                % for t_i= [1,550:1:1000]
                %     subplot(3,1,1)
                %     pcolor(x,y,squeeze(im_data_buzz(t_i,:,:))); shading interp, axis equal tight
                %     title('Recon data Buzz')
                %     if t_i==1; cmax = max(abs(clim)); end
                %     clim(0.8*cmax*[-1 1]), colorbar    
                %     colormap(gray)
                %     subplot(3,1,2)
                %     pcolor(x,y,squeeze(im_data_1(t_i,:,:))); shading interp, axis equal tight
                %     title('Recon data Peak')
                %     clim(0.5*cmax*[-1 1]), colorbar    
                %     subplot(3,1,3)
                %     pcolor(x,y,squeeze(im_data_2(t_i,:,:))); shading interp, axis equal tight
                %     title('Recon data Peak')
                %     clim(0.1*cmax*[-1 1]), colorbar    
                % 
                %     colormap(gray)
                %     drawnow
                %     t_i
                % end
            end  % End per-case loop (for i = 1:length(case_list))
        end
    end  % End per-main-folder loop (for k = 1:length(main_folders))
end  % End per-parent-folder loop (for m = 1:length(parent_folders))