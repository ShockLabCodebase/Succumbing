% SPOD_Time_Frequency_Analysis.m
% =====================================================================
% PURPOSE:
%   Compute time-frequency evolution of SPOD modes from full-field snapshots.
%   Extracts instantaneous frequency content using windowed inverse Fourier transforms
%   and time-varying modal expansion coefficients.
%
% WORKFLOW:
%   1. Load pre-computed SPOD results (modes P, eigenvalues L, Strouhal St)
%   2. Optionally restrict frequency analysis to subset (peak region or manual St_range)
%   3. Load raw snapshot data and apply inverse SPOD transform via tcoeffs
%   4. Compute time-frequency expansion coefficients a(St,mode,t)
%   5. Generate time-frequency spectrograms visualizing |a(St,t)| evolution
%   6. Save expansion coefficients and figures
%
% OUTPUT FILES:
%   - MAT files: {nozzle}_{NPR/M}_SPOD_Time_Frequency_St_{low}_{high}_Modes_{1}_{n}.mat
%   - Figures (PNG/FIG): Time_Frequency_Analysis/{same_prefix}_M_{1,n}.png

clear; close;

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

% =====================================================================
% COLORMAP SELECTION
% =====================================================================
sCMRmap = CMRmap;  % sCMRmap: [n_colors, 3] double, sequential colormap (blue→red)
cmap = pogmap;     % cmap: [n_colors, 3] double, alternative sequential colormap

% =====================================================================
% ENVIRONMENT CONFIGURATION
% =====================================================================
% Execution platform detection (determines file path structure)
using_MASSIVE = 1-ispc;  % using_MASSIVE: bool, 1 if HPC (Linux), 0 if Windows PC
using_Market = false;  % using_Market: bool, true = snapshot files on Market shared drive (Monash storage)
SPOD_on_Market = false;  % SPOD_on_Market: bool, true = SPOD results on Market; false = in save_folder_outer

% =====================================================================
% DIRECTORY CONFIGURATION
% =====================================================================
% Folder hierarchy: Top_folder / parent_folder / main_folder / SPOD_Results / Data
% SPOD results and raw snapshots stored in separate locations (Market vs. scratch)

Top_folders = "/home/jweightman/qk75_scratch2/Soudeh/"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                   % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/"; % Usually set to same as Top_folders. Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = ["*ic_Stag*"];      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = ["*Zoomed_*"];         % main_folder_str: regex pattern (select by nozzle config)

% Retrieve paths matching wildcard criteria via get_parent_path utility
% Returns cell arrays of parent and save folder absolute paths
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

% =====================================================================
% TIME-FREQUENCY ANALYSIS PARAMETERS
% =====================================================================
% Configure frequency subset selection and snapshot processing

n_snapshots_set = 100000;  % n_snapshots: int, maximum number of time snapshots to analyze (memory constraint)

% FREQUENCY SUBSET CONTROL
freq_subset = false;  % freq_subset: bool, true = restrict analysis to frequency subset (reduces computation)
set_range = false;  % set_range: bool, true = manually define St_range; false = auto-detect peak region
% If freq_subset=true and set_range=false: window centered on peak eigenvalue frequency (±25 bins)
St_range = [0.5,1.4];  % St_range: [1,2] double, Strouhal number range for analysis [St_low, St_high] 

skip_to_plots = false;
% =====================================================================
% MAIN PROCESSING LOOP (PARENT FOLDERS)
% =====================================================================
for m = 1:length(parent_folders)

    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Discover main folders (NPR/Mach conditions) matching wildcard pattern
    main_folders = dir(fullfile(parent_folder,main_folder_str));
    sf = [main_folders.isdir];  % Filter for directories only
    main_folders = main_folders(sf);
    
    % INNER LOOP: iterate over NPR/Mach operating conditions
    for k = 1:length(main_folders)
        % Determine SPOD result directory based on storage location flag
        main_folder_market = fullfile(parent_folder,main_folders(k).name,'SPOD_Results');
        
        if SPOD_on_Market
            main_folder = main_folder_market;  % Load SPOD from Market
            save_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results');
        else
            main_folder = fullfile(parent_folder,main_folders(k).name,'SPOD_Results');  % Load SPOD from scratch
            save_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results');
        end

        mkdir(save_folder);  % Ensure output directory exists
        
        SPOD_dir = fullfile(main_folder,'Data');  % SPOD_dir: string, path to SPOD MAT files

        % Discover SPOD result files matching naming pattern
        suffix = strcat('*Nfft*.mat');  % Pattern: {details}_Nfft{n}.mat
        case_list = dir(fullfile(SPOD_dir,suffix));
        case_list = extractfield(case_list, 'name');  % case_list: {1, n_cases} cell array of filenames
    
        % PARAMETERIZATION DETECTION: determine if files use NPR or Mach numbering
        if contains(case_list{1},'_NPR_')
            using_npr = true;  % using_npr: bool, true = heated jets (NPR parameterization)
        else
            using_npr = false;  % using_npr: bool, false = Mach parameterization (_M_, _Mj_ or _Ma_)
        end
    
        % FILENAME PARSING: extract operating conditions from filenames
        if using_npr
            [nozzle_list, NPR, NPR_factor] = get_filename_params(using_npr, case_list);
            % nozzle_list: {1, n_cases} cell, nozzle types; NPR: [1, n_cases] double; NPR_factor: int (precision)
        else
            [nozzle_list, M, M_factor] = get_filename_params(using_npr, case_list);
            % nozzle_list: {1, n_cases} cell, nozzle types; M: [1, n_cases] double (Mach); M_factor: int (precision)
        end

        save_file = fullfile(save_folder,'Time_Frequency','Data');
        mkdir(save_file);

        if ~skip_to_plots
            
            % =====================================================================
            % CASE LOOP: process each SPOD file
            % =====================================================================
            for i = 1:length(case_list)  
        
                condition = extractBefore(case_list{i},'_Nt');
              
                load_file = fullfile(SPOD_dir,case_list{i});
                load(load_file);  % Load: P [n_freq, n_y, n_x, n_modes], L [n_freq, n_modes], St, f, fps, nfft, overlap, D
        
                % STROUHAL NUMBER VALIDATION: check for physically reasonable range
                % Typical jet noise: St ∈ [0.5, 10]; warn if outside bounds
                if max(St) < 0.5 || max(St) > 50
                    warning("Check your Strouhal number (max(St) = %g looks too big or too small)",max(St));  % was input(), which stalls batch jobs
                end
        
                % FREQUENCY SUBSET SELECTION
                if freq_subset
                    if ~set_range
                        % AUTO PEAK DETECTION: find eigenvalue maximum in L(26:end,1) to avoid low-freq artifacts
                        [~,peak_loc] = max(L(26:end,1));
                        peak_loc = peak_loc + 25;  % Adjust index (skipped first 25 bins)
                        % Define window: ±25 bins around peak (or to array boundary)
                        upper = min([25,nfft/2+1-peak_loc]);  % Limit to Nyquist
                        St_range = [St(peak_loc-25),St(peak_loc+upper)];
                    end
                    % Convert Strouhal range to frequency bin indices
                    for ind = 1:2
                        St_ind(ind) = find(abs(St - St_range(ind)) == min(abs(St - St_range(ind))));
                        % St_ind: [1,2] int, [lower_bin, upper_bin] indices into St array
                    end
                else
                    % NO SUBSET: use full frequency range
                    St_ind = [1,size(P,1)];
                end
         
                % MODE CONFIGURATION
                n_modes = 2;  % n_modes: int, number of leading modes to include in time-frequency reconstruction
                dt = 1/fps;  % dt: double, time step [s] (inverse of frame rate)
    
                fileout = fullfile(save_file,strcat(condition,...
                        '_SPOD_Time_Frequency_','Nfft',num2str(nfft,'_%.3i_'),'St_',sprintf('%3.2f',St(St_ind(1))),'_',sprintf('%3.2f',St(St_ind(2))),'_Modes_',num2str(1),'_',num2str(n_modes),'.mat'));
    
                % if exist(fileout) == 2
                %     case_list{i}
                %     'File already exists'
                %     continue
                % end
                
                % RAW SNAPSHOT FILENAME RECONSTRUCTION
                % Extract original snapshot filename from SPOD filename
                % Pattern: {raw_filename}_Nt{snapshots}_Nfft{n}.mat → {raw_filename}_Fields.mat
                raw_filename = extractBefore(case_list{i},'_Nt');  % Remove _Nt{snapshots}_Nfft{n}.mat suffix
                file = matfile(fullfile(extractBefore(main_folder_market,'SPOD'),'Data',[raw_filename,'_Fields.mat']));
                % file: matfile object, lazy-load snapshot data from {raw_filename}_Fields.mat
        
                % SNAPSHOT SIZE DETERMINATION
                im_size = size(file,'im_data');  % im_size: [1,3] int, [n_y, n_x, n_snapshots_total]
                if n_snapshots_set == 0
                    n_snapshots = im_size(3);  % Use all available snapshots
                else
                    n_snapshots = min([n_snapshots_set,im_size(3)]);  % Limit to requested or available count
                end
    
                % SNAPSHOT DATA LOADING (memory-intensive operation)
                im_data = file.im_data(:,:,1:n_snapshots);  % im_data: [n_y, n_x, n_snapshots] uint16, raw Schlieren images
                im_data = cast(im_data,'single');  % Convert to single precision for computation efficiency
                im_data = permute(im_data,[3,1,2]);  % Permute to [n_snapshots, n_y, n_x] for tcoeffs function
        
                %% =====================================================================
                %% TIME-FREQUENCY EXPANSION COEFFICIENT COMPUTATION
                %% =====================================================================
                % Compute windowed modal expansion coefficients a(f,mode,t) using SPOD modes
                % tcoeffs: applies FFT windows consistent with SPOD to extract time-varying coefficients
                % RATIONALE: reveals how modal amplitudes evolve over time (intermittency, transients)
               
                tic
                [a] = tcoeffs(im_data,P,nfft,[],n_modes,St_ind);
                St = St(St_ind(1):St_ind(2));
                toc
                
       
                % a: [n_freq_subset, n_modes, n_windows] complex, time-frequency expansion coefficients
                % St: [1, n_freq_subset] double, Strouhal numbers (trimmed to St_ind range)
                     
                % SAVE TIME-FREQUENCY DATA
                % Store expansion coefficients and metadata for later visualization/analysis
                t = (1:n_snapshots)*dt;  % t: [1, n_snapshots] double, time vector [s]
                if using_npr
        
                    save(fileout,'NPR',...
                                'St',...
                                'L',...
                                'D',...
                                'fps',...
                                'overlap',...
                                'nfft',...
                                'n_snapshots',...
                                'f',...
                                'a',...  % Primary output: time-frequency coefficients
                                'dt',...
                                't',...
                                'n_modes','-v7.3');  % v7.3: required for large arrays (>2GB)
                else
        
                    save(fileout,'M',...
                                'St',...
                                'L',...
                                'D',...
                                'fps',...
                                'overlap',...
                                'nfft',...
                                'n_snapshots',...
                                'f',...
                                'a',...
                                'dt',...
                                't',...
                                'n_modes','-v7.3');
                end
            end
        end
       
        %% =====================================================================
        %% TIME-FREQUENCY SPECTROGRAM VISUALIZATION
        %% =====================================================================
        % Generate pcolor plots of |a(St,t)| to visualize modal amplitude evolution

        case_list = dir(fullfile(save_file,'*.mat'));
        case_list = extractfield(case_list, 'name');  % case_list: {1, n_cases} cell array of filenames

        for i = 1:length(case_list)  
    
            condition = extractBefore(case_list{i},'.mat');
            tf_file = fullfile(save_file,case_list{i});

            file = matfile(tf_file);  % Load: P [n_freq, n_y, n_x, n_modes], L [n_freq, n_modes], St, f, fps, nfft, overlap, D
            a = file.a;
            dt = file.dt;
            St = file.St;
            L = file.L;
            n_snapshots = file.n_snapshots;
            n_modes = file.n_modes;

            save_file_fig = fullfile(save_folder,'Time_Frequency','Figures');
            mkdir(save_file_fig)
    
            t = (1:n_snapshots)*dt;  % t: [1, n_snapshots] double, time vector [s]
            steps = max(1,floor(n_snapshots/1000));  % steps: int, temporal downsampling factor (plot every nth time window to reduce file size)
            
            % FIGURE 1: First mode spectrogram (highest energy mode)
            figure

            set(gcf,'Color',[1,1,1])
            pcolor(t(1:steps:end),St,abs(squeeze(a(:,1,1:steps:end))));  % abs(a): double, magnitude of expansion coefficient
            shading interp
    %         daspect([100 1 1])  % Aspect ratio control (commented)
    %         ylim([0,1.5])       % Frequency limit (commented)
            title(['First mode, ' num2str(sum(L(:,1))/sum(L(:))*100,'%3.1f') '% of energy'])  % Display modal energy fraction
            xlabel('$t (s)$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
            ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
            clim([0 0.75].*clim)  % Saturate top 25% for visibility (highlight low-amplitude features)
            colormap(sCMRmap)
            set(gca,'Layer','Top')
            % EXPORT MULTI-MODE FIGURE
            fileout = fullfile(save_file_fig,strcat(strrep(condition,'Modes_1_2','Mode_1'),'.png'));

       
            export_fig(fileout,'-m5');  % Export at 5× resolution
            savefig(strcat(extractBefore(fileout,'png'),'fig'))  % Save MATLAB .fig (WARNING: large files ~1.2GB)
            
            % FIGURE 2: Sum of first n_modes (combined modal energy evolution)
            % RATIONALE: visualize total energy captured by leading modes (better SNR than single mode)
            figure
            set(gca,'layer','top')
            set(gcf,'Color',[1,1,1])
            pcolor(t(1:steps:end),St,squeeze(abs(sum(a(:,:,1:steps:end),2))));  % sum(a,2): sum over mode dimension
            shading interp
    %         daspect([100 1 1])
    %         ylim([0,1.5])
            title(['Sum of first ' num2str(n_modes) ' modes, ' num2str(sum(sum(L(:,1:n_modes)))/sum(L(:))*100,'%3.1f') '% of energy'])
            xlabel('$t (s)$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
            ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
            clim([0 0.75].*clim)  % Saturate top 25% for visibility
            colormap(sCMRmap)
    
            % EXPORT MULTI-MODE FIGURE
            fileout = fullfile(save_file_fig,strcat(condition,'.png'));

       
            export_fig(fileout,'-m5');
            savefig(strcat(extractBefore(fileout,'png'),'fig'))  % Save MATLAB .fig (WARNING: large files ~1.2GB)
        end
    end
end