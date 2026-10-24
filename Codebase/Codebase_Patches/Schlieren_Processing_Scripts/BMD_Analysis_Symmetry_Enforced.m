% BMD_for_mat_files_Symmetry_Enforced.m
% =====================================================================
% Computes Bi-spectral Mode Decomposition (BMD) with symmetry exploitation.
% This variant decomposes snapshot data under assumed symmetry constraints
% (e.g., symmetric/antisymmetric modes for axisymmetric jets or twin jets),
% reducing the effective data dimensionality and improving mode resolution.
%
% WORKFLOW:
%   1. Load snapshot data from *Fields.mat files
%   2. Decompose field(s) into symmetric/antisymmetric (or 4-way) components
%      using get_symmetry() based on symmetry_regions setting
%   3. Load SPOD results (optionally symmetry-imposed) to identify peaks
%   4. Compute BMD on stacked symmetric components via bmd_modified_Symmetry()
%   5. Reconstruct full-field mode shapes via undo_symmetry_bmd()
%   6. Convert frequencies to Strouhal numbers and save results
%
% CONFIGURATION:
%   - symmetry_regions: 2 (single jet) or 4 (twin jet cross-plane)
%   - z_symmetry: false = y-axis symmetry; true = z-axis symmetry
%   - flow_variables: empty=schlieren, or list of variables to combine
%   - use_spec_freqs: true = limit to SPOD peaks; false = full spectrum
%
% OUTPUT: Saves MAT files in save_folder/BMD_Results/Symmetry_Imposed/Data/
%         with pattern: Symmetry_Imposed_nozzle_type_condition_Nt_Nfft_ovlp.mat
%         Saved outputs include symmetry_combination_result and f3_symmetry_list
%         describing the symmetry composition of each mode.
%
% PATCH 2026-10-23 (Codebase_Patches), matching the patched BMD_Analysis:
%   - SPOD peaks need to stand peak_prominence_decades above their
%     surroundings in log10(L) (was an absolute MinPeakProminence of 5e5,
%     which depends on the intensity scale and pixel count).
%   - A case with no SPOD file or no peaks is skipped with a message
%     ('break' ended the loop over all remaining cases, or only the
%     symmetry loop, carrying on with no peaks).
%   - triadics, triadics_St, opts and im_data_sym are cleared between cases.
%   - 4-region / z-symmetry: im_data_sym (was undefined data_sym), and z is
%     read from the Fields file (was never loaded); an error says so if the
%     file has no z.
%   - Mach files: _Mj_/_M_/_Ma_ detected.
%   - using_Market = false by default (was left true).

clear; close;

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))
 
% Detect execution environment: 1 if on HPC cluster (Linux), 0 if Windows PC
using_MASSIVE = 1-ispc;
using_Market = false;  % Whether to use Market (shared network drive) for data storage

% =====================================================================
% DIRECTORY CONFIGURATION (Same as BMD_for_mat_files.m)
% =====================================================================

Top_folders =  "/Soudeh/Misc/"  % For MASSIVE: path relative to LTRAC-Jet-Noise/; for PC: absolute path
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren" % Output directory on MASSIVE local scratch

% Wildcard patterns to isolate specific subsets of cases
parent_folder_str = "*Axisymmetric*"; % Regex to select parent folders
main_folder_str = "*sD_225*"; % Regex to select main folders

% Retrieve paths matching above criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

% =====================================================================
% BMD ANALYSIS PARAMETERS
% =====================================================================
n_snapshots_set = 0;  % Number of snapshots to use; 0 = use all
nfft = 4096;          % FFT size for BMD
use_spec_freqs = true;  % true = use SPOD peaks; false = full triadic space
St_min_cutoff = 0.2;  % Ignore frequencies below this Strouhal number (except St=0)
                      % Avoids low-frequency clutter in triadic space
peak_prominence_decades = 1;  % SPOD peaks must stand this many decades (factor 10^n) above their surroundings in L(:,1)

% =====================================================================
% SYMMETRY CONFIGURATION
% =====================================================================
% Decompose flow field into symmetric/antisymmetric components to reduce
% data dimension and enhance modal separation. Valid symmetry types depend
% on problem geometry:
%   - symmetry_regions=2: "symmetric_" and "antisymmetric_" (single jet)
%   - symmetry_regions=4: "AA_", "AS_", "SA_", "SS_" (twin jet, 2D cross-plane)

symmetry_regions = 2; % 2 for single jet, 4 for twin jet cross-plane
z_symmetry = false; % For 2-region: false=symmetry about y-axis, true=about z-axis
                    % NOTE: regardless of setting, symmetry component is
                    % first spatial dimension in code

flow_variables = []; % List of flow variables to combine (temperature, density, etc.)
                     % Empty [] for schlieren or shadowgraph images

% Define symmetry type strings matching symmetry_regions count
if symmetry_regions == 4
    sym_types = ["AA_","AS_","SA_","SS_"];  % 4-way decomposition (twin jet)
else
    sym_types = ["antisymmetric_","symmetric_"];  % 2-way decomposition (single jet)
end

% =====================================================================
% MAIN PROCESSING LOOP
% =====================================================================

for m = 1:length(parent_folders)
    % Construct full path to parent folder
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
        % Find all *Fields.mat files containing snapshot data
        snapshot_dir = fullfile(main_folder,'Data');
        suffix = '*Fields.mat';
        case_list = dir(fullfile(snapshot_dir,suffix));
    
        case_list = {case_list.name};
        if isempty(case_list)
            warning("No %s files in %s", suffix, snapshot_dir);
            continue
        end

        % Determine operating condition from filename
        if contains(case_list{1},'_NPR_')
            using_npr = true;
        elseif ~isempty(regexp(case_list{1},'_(Mj|M|Ma)_\d','once'))
            using_npr = false;
        else
            error("Can't tell NPR from Mach in %s", case_list{1});
        end

        % =====================================================================
        % PARSE CONDITION PARAMETERS FROM FILENAMES
        % =====================================================================
        % Extract nozzle type, operating condition (NPR or Mach), and
        % formatting factors from filenames
        if using_npr
            [nozzle_list, NPR_list, NPR_factor] = get_filename_params(using_npr, case_list);
        else
            [nozzle_list, M_list, M_factor] = get_filename_params(using_npr, case_list);
        end

        % =====================================================================
        % SNAPSHOT LOOP: Compute symmetry-decomposed BMD for each case
        % =====================================================================
        for ii = 1:length(case_list)
            clearvars data L P f triadics triadics_St opts im_data_sym 
            
            % =====================================================================
            % LOAD SNAPSHOT DATA FROM MAT FILE
            % =====================================================================
            % Load preprocessed snapshot field im_data(y, x, time) and metadata
            
            filename = case_list{ii};
            full_filename = fullfile(snapshot_dir,filename);
            file = matfile(full_filename);
            
            % Check available snapshots and load n_snapshots (or fewer if limited)
            im_size = size(file,'im_data');
            if n_snapshots_set == 0
                n_snapshots = im_size(3);
            else
                n_snapshots = min([n_snapshots_set,im_size(3)]);
            end
            
            % Load data and metadata
            im_data = file.im_data(:,:,1:n_snapshots);
            im_data = cast(im_data,'single');
            
            x = file.x;
            y = file.y;
            fps = file.fps;
            D = file.D;
            if symmetry_regions == 4 || z_symmetry
                if ~ismember('z',who(file))
                    error("%s has no z grid, which 4-region or z symmetry needs.", filename);
                end
                z = file.z;
            end
        
            % =====================================================================
            % LOAD SPOD PEAKS (OPTIONALLY SYMMETRY-IMPOSED)
            % =====================================================================
            % Load SPOD results to identify frequency peaks. If symmetry-imposed
            % SPOD is available, use it; otherwise fall back to standard SPOD.
            % Collect peaks from all symmetry components and apply frequency cutoff.
            
            if use_spec_freqs
                peak_locs = [];  % Accumulate peaks from all symmetry types
                spod_missing = false;
                
                % Loop through each symmetry component to load its SPOD peaks
                for sym = 1:symmetry_regions
                    symm = sym_types(sym);
                    
                    % Try to load symmetry-imposed SPOD first
                    SPOD_folder = fullfile(main_folder,'SPOD_Results','Symmetry_Imposed','Data');
                    filename_alt = convertStringsToChars(filename);
                    SPOD_filename = dir(fullfile(SPOD_folder,strcat('*_',symm,'*',filename_alt(1:end-11),'*Nfft*',num2str(nfft),'*.mat')));
                    
                    if length(SPOD_filename) == 0
                        % Fall back to standard (non-symmetry) SPOD
                        'No Symmetry SPOD file found, Using normal SPOD analysis results'
                        SPOD_folder = fullfile(main_folder,'SPOD_Results','Data');
                        filename_alt = convertStringsToChars(filename);
                        SPOD_filename = dir(fullfile(SPOD_folder,strcat(filename_alt(1:end-11),'*Nfft*',num2str(nfft),'*.mat')));
                        
                        if length(SPOD_filename) == 0
                            % Neither found; skip this case
                            spod_missing = true;
                            break
                        end
                    end
                    
                    % Load eigenvalues and frequencies to identify peaks
                    SPOD_file = matfile(fullfile(SPOD_folder,SPOD_filename.name));
                    L = SPOD_file.L;  % Eigenvalues (energy by frequency)
                    f = SPOD_file.f;  % Frequency array
                    St = SPOD_file.St; % Strouhal array
                    
                    % Find peaks in this symmetry component's eigenvalue spectrum
                    [~,peak_locs_temp,~,~] = findpeaks(log10(double(L(:,1))),'MinPeakProminence',peak_prominence_decades,'SortStr','descend');
                    peak_locs = cat(1,peak_locs,peak_locs_temp(:));
                end
                if spod_missing
                    fprintf("No SPOD file with nfft = %d for %s: run SPOD_Analysis first. Skipping case.\n",nfft,filename);
                    continue
                end
                
                % Apply minimum Strouhal cutoff to avoid low-frequency modes
                St_min_cutoff_ind = find(abs(St - St_min_cutoff) == min(abs(St - St_min_cutoff)));
                peak_locs(peak_locs < St_min_cutoff_ind) = [];
    
                if length(peak_locs) == 0
                    fprintf("No SPOD peaks found for %s (peak_prominence_decades = %g, St >= %g). Skipping case.\n",filename,peak_prominence_decades,St_min_cutoff);
                    continue
                end
    
                % Remove duplicates and add DC (f=0) mode
                peak_locs = unique(cat(1,peak_locs,[1]));
    
                fprintf('Going to Check approx %d Interactions\n',length(peak_locs)^2);
            end
    
            % =====================================================================
            % EXTRACT CONDITION AND COMPUTE JET VELOCITY
            % =====================================================================

            % Compute ideal jet velocity for Strouhal normalization
            if using_npr
                NPR = NPR_list(ii)/(10^(NPR_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, NPR, 1, D);
            else
                M = M_list(ii)/(10^(M_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, M, 1, D);
            end

            % =====================================================================
            % DECOMPOSE INTO SYMMETRIC/ANTISYMMETRIC COMPONENTS
            % =====================================================================
            % Use get_symmetry() to decompose the field into symmetric and
            % antisymmetric (or 4-way) components. This reduces effective
            % dimensionality and improves modal separation in BMD.
            
            fprintf('Applying Symmetry\n')
    
            im_data_sym = [];  % Initialize stacked symmetric components array
            
            % Process each symmetry region
            for sym = 1:symmetry_regions
    
                % =====================================================================
                % FOUR-WAY DECOMPOSITION (Twin Jet, Symmetric Cross-Plane)
                % =====================================================================
                if symmetry_regions == 4
       
                    % For 2D cross-plane (e.g., twin jets viewed in radial plane),
                    % extract zero-crossings and symmetric extents in y and z
                    % to define the four quadrants/combinations.
       
                    if ndims(squeeze(y)) == 2
                        dy     = y(2,1) - y(1,1);
                        c_h    = round(2*(1 - y(1,1)/dy))/2;          % axis row, snapped to whole/half row
                        y_zero = floor(c_h);
                        y_odd  = double(c_h == y_zero);               % 1 if the axis is on a row
                        y_size = min(y_zero, size(y,1) - ceil(c_h) + 1);
    
                        if size(z,1) > size(z,2)
                            z_zero = find(abs(z(:)) == min(abs(z(:))),1);
                            z_size = min([size(z,1)+1-z_zero,z_zero]);
                            z_odd = rem(size(z,1),2);
                        else
                        
                            z_zero = find(abs(z(1,:)) == min(abs(z(1,:))),1);
                            z_size = min([size(z,2)+1-z_zero,z_zero]);
                            z_odd = rem(size(z,2),2);
                        end
                    else
                        dy     = y(2,1) - y(1,1);
                        c_h    = round(2*(1 - y(1,1)/dy))/2;          % axis row, snapped to whole/half row
                        y_zero = floor(c_h);
                        y_odd  = double(c_h == y_zero);               % 1 if the axis is on a row
                        y_size = min(y_zero, size(y,1) - ceil(c_h) + 1);
        
                        z_zero = find(abs(z(1,:,1)) == min(abs(z(1,:,1))),1);
                        z_size = min([size(z,2)+1-z_zero,z_zero]);
    
                        z_odd = rem(size(z,2),2);
                    end
    
                    % Decompose this 4-way symmetric component
                    sym_type = sym_types(sym);
                    im_data_sym = cat(4,im_data_sym,get_symmetry(im_data,sym_type,flow_variables,y_zero,y_size,y_odd,z_zero,z_size,z_odd));
    
                % =====================================================================
                % TWO-WAY DECOMPOSITION (Single Jet, Symmetric Axis)
                % =====================================================================
                elseif symmetry_regions == 2
                    % By default: symmetry about y-axis. If z_symmetry=true,
                    % switch to z-axis symmetry (first spatial dimension must still
                    % be the symmetry axis in array layout).
                    
                    if ~z_symmetry
                        % Symmetry about y-axis (most common for jet centerline)
                        dy     = y(2,1) - y(1,1);
                        c_h    = round(2*(1 - y(1,1)/dy))/2;          % axis row, snapped to whole/half row
                        y_zero = floor(c_h);
                        y_odd  = double(c_h == y_zero);               % 1 if the axis is on a row
                        y_size = min(y_zero, size(y,1) - ceil(c_h) + 1);
                    else
                        % Symmetry about z-axis
                        y_zero = find(abs(z(:,1,1)) == min(abs(z(:,1,1))),1);
                        y_size = min([size(z,1)+1-y_zero,y_zero]);
                        y_odd = rem(size(z,1),2);
                    end
                          
                    % Decompose into symmetric/antisymmetric components
                    sym_type = sym_types(sym);
                    im_data_sym = cat(4,im_data_sym,get_symmetry(im_data,sym_type,flow_variables,y_zero,y_size,y_odd,[],[],[]));
                    
                end
            end

            % Reshape decomposed data to (time, y, x, symmetry_component) format for BMD
            im_data_sym = permute(im_data_sym,[3,1,2,4]);
        
            % =====================================================================
            % CONFIGURE AND RUN SYMMETRY-AWARE BMD
            % =====================================================================
            % BMD is applied to the stacked symmetric components together.
            % bmd_modified_Symmetry() handles the multi-component structure
            % and returns symmetry_combination_result describing how f3 is
            % composed of f1 and f2 symmetry components.
            
            intWeights      = [];  % Integration weights (empty = Cartesian)
            overlap         = 50;  % Percent overlap
            nOvlp           = nfft*overlap/100;
            dt              = 1/fps;
            
            % BMD algorithm options
            opts.precision  = true;
            opts.threads    = maxNumCompThreads;  % Use all available cores
            opts.mean       = squeeze(mean(im_data_sym,1));  % Explicit mean
            opts.bicoherence = true;

            if use_spec_freqs
                opts.specfreq = f(peak_locs);  % Restrict to SPOD peaks
            end

            % Execute symmetry-aware BMD decomposition
            fprintf('Starting BMD\n')
            [B,P,f,idx,T,symmetry_combination_result] = bmd_modified_Symmetry(im_data_sym,nfft,intWeights,nOvlp,dt,opts);
            clearvars im_data im_data_sym   % PATCH 2026-10-23: free the data before the modes are rebuilt (out of memory on 10k-frame fields)
    
            % Extract symmetry composition of f3 modes from result string
            f3_symmetry_list = extractAfter(symmetry_combination_result,'__');
            f3_symmetry_list = extractBefore(f3_symmetry_list,'f3');

            % Cast modes to single precision for storage
            P = cast(P,'single');
    %       P(1,:,:,:,:): bispectral modes
    %       P(2,:,:,:,:): cross-frequency fields
    %       Second index: triad index; last index: symmetry component index
    
            % =====================================================================
            % CONSTRUCT TRIADIC FREQUENCY RELATIONSHIPS
            % =====================================================================
            % Extract (f1, f2, f3) triads and convert to Strouhal numbers
            
            [f1,f2]     = ndgrid(f);
            [row,col] = ind2sub([length(f),length(f)],idx);
            triadics(:,1) = f1(row,1);
            triadics(:,2) = f2(1,col);
            triadics(:,3) = triadics(:,1)+triadics(:,2);
    
            % =====================================================================
            % CONVERT TO STROUHAL AND EXTRACT BISPECTRUM VALUES
            % =====================================================================
            % Convert frequencies to Strouhal numbers; extract bispectral
            % magnitude at each triadic point. Note: B includes a third
            % dimension indexing the symmetry components of f3.
            
            St = (f*D_j*1e-3)/u_j; 
            St1 = (f1*D_j*1e-3)/u_j;
            St2 = (f2*D_j*1e-3)/u_j;
    
            % Replicate triadic_St for each symmetry component
            triadics_St = triadics.*((D_j*1e-3)/u_j);
            triadics_St = repmat(triadics_St,1,1,symmetry_regions^2);
            
            % Populate bispectrum magnitude for each triadic point
            for j = 1:size(triadics_St,1)
                l = find(abs(St - triadics_St(j,1)) == min(abs(St - triadics_St(j,1))));
                k = find(abs(St - triadics_St(j,2)) == min(abs(St - triadics_St(j,2))));
                % B(:, :, symmetry_component) contains bispectrum for that component
                triadics_St(j,4,:) = B(l,k,:);
            end   

            % =====================================================================
            % RECONSTRUCT FULL-FIELD MODES FROM SYMMETRIC COMPONENTS
            % =====================================================================
            % The bispectral modes P were computed on stacked symmetric
            % components. Now reconstruct the full spatial field by inverting
            % the symmetry decomposition via undo_symmetry_bmd() for each f3
            % symmetry type. This yields mode shapes in original coordinates.
            
            % PATCH 2026-10-23: the full-field array is allocated once and filled
            % (growing it with cat copied it for every symmetry combination)
            P_temp = [];
            P_inds = repmat({':'},ndims(P),1);
            P_size = size(P);

            % Loop through each symmetry combination of f3
            for sym = 1:length(f3_symmetry_list)

                sym_type = f3_symmetry_list(sym);  % e.g., "SS", "AS", "SA", "AA"
                P_inds{end} = sym;  % Index into P's symmetry dimension

                % Undo symmetry decomposition to reconstruct full field
                if symmetry_regions == 4
                    % 4-way reconstruction (twin jet)
                    P_sym = undo_symmetry_bmd(P(P_inds{:}),sym_type,flow_variables,y_odd,z_odd);
                elseif symmetry_regions == 2
                    % 2-way reconstruction (single jet)
                    P_sym = undo_symmetry_bmd(P(P_inds{:}),sym_type,flow_variables,y_odd,[]);
                end
                if isempty(P_temp)
                    P_temp = zeros([size(P_sym,1:ndims(P)-1), length(f3_symmetry_list)],'like',P_sym);
                end
                out_inds = repmat({':'},ndims(P),1);
                out_inds{end} = sym;
                P_temp(out_inds{:}) = P_sym;
                clear P_sym
            end
            clear P

            % Replace stacked symmetric modes with full-field reconstructed modes
            P = P_temp;
            clearvars P_temp

            % =====================================================================
            % SAVE BMD RESULTS TO MAT FILE
            % =====================================================================
            % Generate output paths and filenames, then save all BMD outputs
            % with symmetry metadata.

            condition = extractBefore(case_list{ii},'_Field');

            if using_npr

                % Create output directory
                to_BMD = fullfile(save_folder,'BMD_Results','Symmetry_Imposed');

                mkdir(fullfile(to_BMD,'Data'));
        
                % Construct filename with "Symmetry_Imposed" prefix
                if use_spec_freqs
                    mat_file = strcat('Symmetry_Imposed_', condition,...
                        '_Nt',num2str(n_snapshots,'_%.5i_'),'Nfft',num2str(nfft,'_%.3i_'),...
                        'ovlp',num2str(overlap,'_%.2i'),'_Specfreqs');
                else
                    mat_file = strcat('Symmetry_Imposed_', condition,...
                        '_Nt',num2str(n_snapshots,'_%.5i_'),'Nfft',num2str(nfft,'_%.3i_'),...
                        'ovlp',num2str(overlap,'_%.2i'));
                end
        
                save_file = fullfile(to_BMD,'Data',mat_file);
        
                % Save all BMD outputs including symmetry metadata
                save(save_file,'NPR',...
                            'St',...
                            'B',...
                            'P',...
                            'D',...
                            'fps',...
                            'overlap',...
                            'nfft',...
                            'n_snapshots',...
                            'flow_variables',...
                            'x','y',...
                            'symmetry_regions',...
                            'f', 'f1', 'f2', ...
                            'St1','St2','triadics_St', ...
                            'triadics','T','idx', ...
                            'symmetry_combination_result', ...
                            'f3_symmetry_list','opts','-v7.3');
    
            else
    
                % Create output directory
                to_BMD = fullfile(save_folder,'BMD_Results','Symmetry_Imposed');

                mkdir(fullfile(to_BMD,'Data'));
                
                % Construct filename with "Symmetry_Imposed" prefix
                if use_spec_freqs
                    mat_file = strcat('Symmetry_Imposed_',condition,...
                        '_Nt',num2str(n_snapshots,'_%.5i_'),'Nfft',num2str(nfft,'_%.3i_'),...
                        'ovlp',num2str(overlap,'_%.2i'),'_Specfreqs');
                else
                    mat_file = strcat('Symmetry_Imposed_',condition,...
                    '_Nt',num2str(n_snapshots,'_%.5i_'),'Nfft',num2str(nfft,'_%.3i_'),...
                    'ovlp',num2str(overlap,'_%.2i'));
                end
        
                save_file = fullfile(to_BMD,'Data',mat_file);
    
                % Save all BMD outputs including symmetry metadata
                save(save_file,'M',...
                            'St',...
                            'B',...
                            'P',...
                            'D',...
                            'fps',...
                            'overlap',...
                            'nfft',...
                            'n_snapshots',...
                            'flow_variables',...
                            'x','y',...
                            'symmetry_regions',...
                            'f', 'f1', 'f2', ...
                            'St1','St2','triadics_St',...
                            'triadics','T','idx', ...
                            'symmetry_combination_result', ...
                            'f3_symmetry_list','-v7.3');
            end
        end
    end
end

