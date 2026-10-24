% SPOD_Time_Frequency_Analysis_Symmetry_Enforced.m
% =====================================================================
% PURPOSE:
%   Compute time-frequency evolution of symmetry-decomposed SPOD modes.
%   Extracts instantaneous frequency content separately for symmetric/antisymmetric
%   components using windowed inverse Fourier transforms.
%
% WORKFLOW:
%   1. Load symmetry-imposed SPOD results from MAT files (separate files per component)
%   2. Optionally restrict frequency analysis to subset (peak region or manual St_range)
%   3. Load raw snapshot data and apply symmetry extraction (get_symmetry)
%   4. Compute time-frequency expansion coefficients via tcoeffs function
%   5. Generate time-frequency spectrograms for each symmetry component
%   6. Save expansion coefficients and visualizations
%
% OUTPUT FILES:
%   - MAT files: Symmetry_Imposed_{sym_type}_{nozzle}_{NPR/M}_SPOD_Time_Frequency_St_{low}_{high}_Modes_{1}_{n}.mat
%   - Figures (PNG/FIG): Time_Frequency_Analysis/{same_prefix}_M_{mode_range}.png

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

Top_folders =  "/Soudeh/Misc/"  % Top_folders: string, relative to LTRAC-Jet-Noise/ on MASSIVE HPC
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren"  % save_folder_outer: string, output directory for results

% Wildcard patterns to select specific experimental cases
parent_folder_str = "*Axisymmetric*";  % parent_folder_str: string, regex for parent folders (nozzle type)
main_folder_str = "*sD_225*";  % main_folder_str: string, regex for main folders (NPR/Mach conditions)

% Retrieve paths matching wildcard criteria via get_parent_path utility
% Returns cell arrays of parent and save folder absolute paths
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

% =====================================================================
% SYMMETRY-IMPOSED TIME-FREQUENCY ANALYSIS PARAMETERS
% =====================================================================
% Configure symmetry decomposition strategy and frequency subset selection

% symmetry_regions: int, decomposition mode
%   2 = two-way decomposition (symmetric vs antisymmetric components)
%   4 = four-way decomposition (further component separation for twin-jet configurations)
symmetry_regions = 2;
% PATCH 2026-10-23 (Codebase_Patches):
%   - Reads the symmetry-imposed SPOD files (SPOD_Results/Symmetry_Imposed/Data/
%     Symmetry_Imposed_*Nfft*.mat). It read plain SPOD_Results/Data, so sym_type
%     came out as '_' and the "symmetric" part was silently zero.
%   - Output folder defined (save_file was undefined) and created:
%     SPOD_Results/Symmetry_Imposed/Time_Frequency/Data and .../Figures.
%   - Saves the loaded NPR or M (current_NPR/current_M were undefined).
%   - P is cut to the rows matching get_symmetry's half domain: the last y_size
%     rows of the undone mode (P(:,y_pos,...) indexed the full y grid, which
%     only lines up when the frame is symmetric about the axis).
%   - Mach files (_Mj_/_M_/_Ma_) detected; input() prompt replaced by a
%     warning; steps is an integer; 4-region mode stops with an error.

n_snapshots_set = 0;  % n_snapshots: int, maximum number of time snapshots to analyze (memory constraint)

% FREQUENCY SUBSET CONTROL
freq_subset = true;  % freq_subset: bool, true = restrict analysis to frequency subset (reduces computation)
set_range = true;  % set_range: bool, true = manually define St_range; false = auto-detect peak region
% If freq_subset=true and set_range=false: window centered on peak eigenvalue frequency (±25 bins)
St_range = [0.05,1.1];  % St_range: [1,2] double, Strouhal number range for analysis [St_low, St_high] 

% =====================================================================
% MAIN PROCESSING LOOP (PARENT FOLDERS)
% =====================================================================
for m = 1:length(parent_folders)

    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Discover main folders (NPR/Mach conditions) matching wildcard pattern
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
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
            main_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results');  % Load SPOD from scratch
            save_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results');
        end

        mkdir(save_folder);  % Ensure output directory exists
        
        SPOD_dir = fullfile(main_folder,'Symmetry_Imposed','Data');  % SPOD_dir: string, path to symmetry-imposed SPOD MAT files

        % Discover SPOD result files matching naming pattern
        suffix = strcat('Symmetry_Imposed_*Nfft*.mat');  % Pattern: Symmetry_Imposed_{sym_type}_{details}_Nfft{n}.mat
        case_list = dir(fullfile(SPOD_dir,suffix));
        case_list = {case_list.name};  % case_list: {1, n_cases} cell array of filenames
        if isempty(case_list)
            warning("No %s files in %s: run SPOD_Analysis_Symmetry_Enforced first", suffix, SPOD_dir);
            continue
        end

        % PARAMETERIZATION DETECTION: determine if files use NPR or Mach numbering
        if contains(case_list{1},'_NPR_')
            using_npr = true;  % using_npr: bool, true = heated jets (NPR parameterization)
        elseif ~isempty(regexp(case_list{1},'_(Mj|M|Ma)_\d','once'))
            using_npr = false;  % using_npr: bool, false = ideally-expanded jets (Mach parameterization)
        else
            error("Can't tell NPR from Mach in %s", case_list{1});
        end

        save_file = fullfile(save_folder,'Symmetry_Imposed','Time_Frequency','Data');
        mkdir(save_file);
        
        % FILENAME PARSING: extract operating conditions from filenames
        if using_npr
            [nozzle_list, NPR, NPR_factor] = get_filename_params(using_npr, case_list);
            % nozzle_list: {1, n_cases} cell, nozzle types; NPR: [1, n_cases] double; NPR_factor: int (precision)
        else
            [nozzle_list, M, M_factor] = get_filename_params(using_npr, case_list);
            % nozzle_list: {1, n_cases} cell, nozzle types; M: [1, n_cases] double (Mach); M_factor: int (precision)
        end
    
        % =====================================================================
        % CASE LOOP: process each symmetry-imposed SPOD file
        % =====================================================================
        for i = 1:length(case_list)  
            clearvars im_data im_data_sym a P L A   % PATCH 2026-10-23: the previous case's arrays ran the next one out of memory

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
    
            % RAW SNAPSHOT FILENAME RECONSTRUCTION
            % Extract original snapshot filename from symmetry-imposed SPOD filename
            % Pattern: Symmetry_Imposed_{sym_type}_{raw_filename}_Nfft{n}.mat → {raw_filename}_Fields.mat
            raw_filename = extractBefore(case_list{i},'_Nt');  % Remove _Nt{snapshots}_Nfft{n}.mat suffix
            raw_filename = extractAfter(raw_filename,'Symmetry_Imposed_');  % Remove Symmetry_Imposed_ prefix
            raw_filename = extractAfter(raw_filename,'_');  % Remove {sym_type}_ component
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
            im_data = cast(im_data,'single');  % Convert to single precision for computation efficiency  % Convert to single precision for computation efficiency
    
            % SYMMETRY EXTRACTION (two-way decomposition)
            if symmetry_regions == 2
                % Find centerline (y=0) in grid
                dy     = y(2,1) - y(1,1);
                c_h    = round(2*(1 - y(1,1)/dy))/2;          % axis row, snapped to whole/half row
                y_zero = floor(c_h);
                y_odd  = double(c_h == y_zero);               % 1 if the axis is on a row
                y_size = min(y_zero, size(y,1) - ceil(c_h) + 1);
    
                % Extract symmetry type from filename (Symmetric or Antisymmetric)
                sym_type = strcat(cell2mat(extractBetween(case_list{i},'Imposed_','_')),'_');  % sym_type: string, 'Symmetric_' or 'Antisymmetric_'
                
                % SYMMETRY DECOMPOSITION: extract symmetric/antisymmetric component from full field
                % get_symmetry: mirrors field about centerline, adds/subtracts to isolate component
                im_data_sym = get_symmetry(im_data,sym_type,[],y_zero,y_size,y_odd,[],[],[]);
                % im_data_sym: [n_y_half, n_x, n_snapshots] single, symmetry-extracted snapshots
    
                % Define positive/negative y indices for half-domain
                y_pos = [y_zero+1-y_odd:y_zero+y_size-1*y_odd];  % y_pos: [1, n_y_half] int, indices above centerline
                y_neg = [y_zero-y_size + 1:y_zero];  % y_neg: [1, n_y_half] int, indices below centerline
                % The undone mode has the positive half in its last y_size rows
                % (undo_symmetry: [flip(half); half]), matching get_symmetry's output
                P = P(:,end-y_size+1:end,:,:);  % Trim SPOD modes to match half-domain (positive y only)
                % P: [n_freq, n_y_half, n_x, n_modes] complex, symmetry-trimmed mode shapes
    
            else
                error('4 symmetry regions are not implemented for schlieren')
                % Four-way decomposition not implemented for Schlieren (twin-jet specific)
            end
    
            % ARRAY PERMUTATION: reorder im_data_sym for tcoeffs function input
            % tcoeffs expects: [n_snapshots, n_y, n_x]; current order: [n_y, n_x, n_snapshots]
            im_data_sym = permute(im_data_sym,[3,1,2]);
            % im_data_sym: [n_snapshots, n_y_half, n_x] single, time-first ordering
    
            % OUTPUT FILENAME CONSTRUCTION
            % Pattern: Symmetry_Imposed_{sym_type}_{nozzle}_{NPR/M}_SPOD_Time_Frequency_St_{low}_{high}_Modes_{1}_{n}.mat
            fileout = fullfile(save_file,strcat(condition,...
                    '_SPOD_Time_Frequency_','Nfft',num2str(nfft,'_%.3i_'),'St_',sprintf('%3.2f',St(St_ind(1))),'_',sprintf('%3.2f',St(St_ind(2))),'_Modes_',num2str(1),'_',num2str(n_modes),'.mat'));
    
    
            % FILE EXISTENCE CHECK: skip if already processed (avoid redundant computation)
            if exist(fileout) == 2
                case_list{i}
                'File already exists'
                continue
            end
    
    
            %% =====================================================================
            %% TIME-FREQUENCY EXPANSION COEFFICIENT COMPUTATION
            %% =====================================================================
            % Compute windowed modal expansion coefficients a(f,mode,t) using SPOD modes
            % tcoeffs: applies FFT windows consistent with SPOD to extract time-varying coefficients
            % RATIONALE: reveals how modal amplitudes evolve over time (intermittency, transients)
    
            % a: [n_freq_subset, n_modes, n_windows] complex, time-frequency expansion coefficients
            % St: [1, n_freq_subset] double, Strouhal numbers (trimmed to St_ind range)

            tic
            [a] = tcoeffs(im_data_sym,P,nfft,[],n_modes,St_ind);
            St = St(St_ind(1):St_ind(2));
            toc

            % SAVE TIME-FREQUENCY DATA
            % Store expansion coefficients and metadata for later visualization/analysis
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
                            'sym_type',...
                            'n_modes','-v7.3','-nocompression');  % v7.3: required for large arrays (>2GB)
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
                            'sym_type',...
                            'n_modes','-v7.3','-nocompression');
            end
    
            %% =====================================================================
            %% TIME-FREQUENCY SPECTROGRAM VISUALIZATION
            %% =====================================================================
            % Generate pcolor plots of |a(St,t)| to visualize modal amplitude evolution
    
            save_file_fig = fullfile(save_folder,'Symmetry_Imposed','Time_Frequency','Figures');
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
            xlabel('$t~(s)$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
            ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
            clim([0 0.75].*clim)  % Saturate top 25% for visibility (highlight low-amplitude features)
            colormap(sCMRmap)
            set(gca,'Layer','Top')
            % EXPORT FIRST MODE FIGURE
            fileout = fullfile(save_file_fig,strcat(condition,'_Time_Frequency_','Nfft',num2str(nfft,'_%.3i_'),'_St_',sprintf('%3.2f',St(1)),'_',sprintf('%3.2f',St(end)),'_M_1.png'));

            export_fig(fileout,'-m5');  % Export at 5× resolution
            savefig(strcat(extractBefore(fileout,'png'),'fig'))  % Save MATLAB .fig (WARNING: large files ~1.2GB)
            close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    
            % FIGURE 2: Sum of first n_modes (combined modal energy evolution)
            % RATIONALE: visualize total energy captured by leading modes (better SNR than single mode)
            figure
            set(gcf,'Color',[1,1,1])
            pcolor(t(1:steps:end),St,squeeze(abs(sum(a(:,:,1:steps:end),2))));  % sum(a,2): sum over mode dimension
            shading interp
    %         daspect([100 1 1])
    %         ylim([0,1.5])
            title(['Sum of first ' num2str(n_modes) ' modes, ' num2str(sum(sum(L(:,1:n_modes)))/sum(L(:))*100,'%3.1f') '% of energy'])
            xlabel('$t~(s)$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
            ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
            clim([0 0.75].*clim)  % Saturate top 25% for visibility
            colormap(sCMRmap)
            set(gca,'layer','top')
            % EXPORT MULTI-MODE FIGURE
            fileout = fullfile(save_file_fig,strcat(condition,'_Time_Frequency_','Nfft',num2str(nfft,'_%.3i_'),'_St_',sprintf('%3.2f',St(1)),'_',sprintf('%3.2f',St(end)),'_M_1_',num2str(n_modes),'.png'));

            export_fig(fileout,'-m5');
            savefig(strcat(extractBefore(fileout,'png'),'fig'))  % Save MATLAB .fig (WARNING: large files ~1.2GB)
            close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
            
        end
    end
end