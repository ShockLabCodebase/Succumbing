% POD_Analysis.m
% =====================================================================
% Computes Proper Orthogonal Decomposition (POD) on snapshot data from
% *Fields.mat files. POD extracts most energetic spatial modes via snapshot
% method, enabling time-averaged analysis of dominant coherent structures.
% Optionally restricts analysis to axial region of interest (ROI).
%
% WORKFLOW:
%   1. Load snapshot data from *Fields.mat files
%   2. Optionally extract axial ROI (useful for twin-jet studies)
%   3. Compute POD via snapshot method (spatial mode + temporal coefficient)
%   4. Save POD modes, eigenvalues, and coefficients to MAT file
%
% CONFIGURATION:
%   - Set Top_folders, parent/main_folder_str for case selection
%   - Adjust n_snapshots for memory/resolution trade-off
%   - Set ROI=true and define xD1, xD2 to analyze specific axial region

clear; close;

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

% =====================================================================
% COLORMAP SELECTION
% =====================================================================
% Define custom colormaps for visualizations
sCMRmap = CMRmap;  % Sequential colormap
cmap = pogmap;     % Alternative colormap

% =====================================================================
% ENVIRONMENT CONFIGURATION
% =====================================================================
% Detect execution environment: 1 if HPC (Linux), 0 if Windows PC
using_MASSIVE = 1-ispc;
using_Market = false; % true = snapshot files on Market shared drive

% =====================================================================
% DIRECTORY CONFIGURATION
% =====================================================================
% Folder hierarchy: Top_folder / parent_folder / main_folder / Data

Top_folders =  "/Soudeh/Misc/"  % For MASSIVE: relative to LTRAC-Jet-Noise/
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren" % Output directory

% Wildcard patterns to select specific cases
parent_folder_str = "*Axisymmetric*"; % Regex to select parent folders
main_folder_str = "*sD_225*"; % Regex to select main folders

% Retrieve paths matching criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

% =====================================================================
% POD ANALYSIS PARAMETERS
% =====================================================================
% Control snapshot count and optional axial region restriction

n_snapshots_set = 0;  % Number of snapshots to analyze

% Optional: restrict analysis to axial region of interest
ROI = 0;  % 0, 1, or 2. 0 for off, 1 for below region bounds for analysis, 
          % but projected against full field, 2 skips full field projection
x_roi = [1,7];      % Axial bounds [nozzle diameters]
y_roi = [0,2];      % Transverse bounds [nozzle diameters]

% =====================================================================
% MAIN PROCESSING LOOP
% =====================================================================

for m = 1:length(parent_folders)

    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);
    
    % Enumerate subdirectories matching main_folder_str pattern
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % =====================================================================
    % NESTED LOOP: PROCESS EACH CONDITION/NPR SUBFOLDER
    % =====================================================================
    % For each specific operating condition (e.g., NPR1, NPR2, etc.):
    %   - Locate *Fields.mat snapshot files
    %   - Apply POD decomposition to extract spatial modes
    %   - Save Mode(y, x, mode), Energy(mode), and temporal coefficients
    for k = 1:length(main_folders)
        main_folder = fullfile(main_folders(k).folder,main_folders(k).name,'Data');
        save_folder = fullfile(save_folder_upper,main_folders(k).name,'POD_Results','Data');

        mkdir(save_folder)
    
        % Determine flow direction from parent folder name (affects visualization orientation)
        if contains(main_folder,'Minor')
            flow_axis = 'Minor';
        elseif contains(main_folder,'Major')
            flow_axis = 'Major';
        elseif contains(main_folder,'Angled')
            flow_axis = 'Angled';
        else
            flow_axis = 'Minor';
        end
    
        % =====================================================================
        % FILE LOADING: LOCATE ALL SNAPSHOT FILES FOR THIS CONDITION
        % =====================================================================
        % Search for _Fields.mat files containing snapshot data (n_y, n_x, n_snapshots)
        % Can be modified to load *Half*Fields.mat for twin-jet hemisphere variants
        suffix='*Fields*.mat';
        direc = dir(strcat(main_folder,filesep,suffix)); 
        filenames={};
        [filenames{1:length(direc),1}] = deal(direc.name);

        % =====================================================================
        % CONDITION PROCESSING LOOP
        % =====================================================================
        for iii = 1:length(filenames)
            % Extract condition label by removing '_Fields.mat' suffix
            %   Example: 'NPR2_Fields.mat' → 'NPR2'
            condition = filenames{iii}(1:end-11);
            
            % =====================================================================
            % DATA LOADING AND MEMORY MANAGEMENT
            % =====================================================================
            % Use matfile for lazy loading (avoids loading full array into memory)
            load_file = fullfile(main_folder, filenames{iii});
            file = matfile(load_file);
            
            % Determine snapshot count: use n_snapshots limit or all available
            im_size = size(file,'im_data');
            if n_snapshots_set == 0
                n_snapshots = im_size(3);  % Use all available snapshots
            else
                n_snapshots = min([n_snapshots_set,im_size(3)]);  % Cap at limit
            end
            
            % Load spatial snapshots into memory (convert to single for efficiency)
            im_data = file.im_data(:,:,1:n_snapshots);  % Shape: (n_y, n_x, n_t)
            im_data = cast(im_data,'single');
            x = file.x;  % Spatial coordinates (n_y, n_x)
            y = file.y;

            %%% correct the roi limits
            if ROI > 0
                if sum(x_roi ~= 0) > 0
                    ind_x1 = find(abs(x(1,:)-x_roi(1)) == min(abs(x(1,:)-x_roi(1))));
                    ind_x2 = find(abs(x(1,:)-x_roi(2)) == min(abs(x(1,:)-x_roi(2))));
                else
                    ind_x1 = 1;
                    ind_x2 = size(x,2);
                end
                if sum(y_roi(1,:) ~= 0) > 0
                    ind_y1 = find(abs(y(:,1)-y_roi(1,1)) == min(abs(y(:,1)-y_roi(1,1))));
                    ind_y2 = find(abs(y(:,1)-y_roi(1,2)) == min(abs(y(:,1)-y_roi(1,2))));
                else
                    ind_y1 = 1;
                    ind_y2 = size(y,1);
                end
                x_roi(1) = x(1,ind_x1);
                x_roi(2) = x(1,ind_x2);
                y_roi(1) = y(ind_y1,1);
                y_roi(2) = y(ind_y2,1);
            end
    
            % =====================================================================
            % POD DECOMPOSITION: EXTRACT DOMINANT MODES
            % =====================================================================
            % Snapshot method POD: decomposes im_data into:
            %   POD_modes(y, x, mode) = spatial mode shapes [ordered by energy]
            %   a_n(mode, time) = temporal coefficients for each mode
            %   Energy(mode) = singular value squared (kinetic energy per mode)
            % Output modes ordered by decreasing energy:
            %   Mode 1 captures most energetic coherent structure
            %   Mode 2 captures second-most energetic, orthogonal to Mode 1, etc.
            fprintf('Starting POD Processing\n')
            [POD_modes, a_n, Energy, phi, Mode, x, y] = simple_POD_func(im_data, ROI, x_roi, y_roi, x, y);
        
            % =====================================================================
            % OUTPUT GENERATION AND STORAGE
            % =====================================================================
            fprintf('Saving\n')
            
            % Generate output filename: include ROI parameters if region restricted
            if ROI > 0
                save_file = fullfile(save_folder, strcat(condition, sprintf('_ROI_x_%1.0f_%1.0f_y_%1.0f_%1.0f',x_roi(1),x_roi(2),y_roi(1),y_roi(2)), '_POD_Modes.mat'));
            else
                save_file = fullfile(save_folder, strcat(condition,'_POD_Modes.mat'));
            end
        
            % Save all POD results to MAT file
            %   Mode(y, x, n_mode) = spatial mode shapes
            %   Energy(n_mode) = modal energy eigenvalues
            %   POD_modes, phi, a_n = intermediate decomposition outputs
            %   x, y = spatial grid coordinates
            save(save_file,'Mode','Energy','POD_modes','phi','a_n','x','y','-v7.3','-nocompression');
            fprintf('Saved Total\n');
            clearvars U_n
        end
    end
end