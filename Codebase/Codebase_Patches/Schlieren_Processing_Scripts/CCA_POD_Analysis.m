% Schlieren_POD.m
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
%
% PATCH 2026-10-23 (Codebase_Patches):
%   - Instantaneous phase smoothing used mode_inst_phase (undefined; the
%     arrays are *_CCA), so both branches errored.
%   - mode_inst_amp_CCA end padding indexed (.., j) without the half index i,
%     which wrote into the wrong half.
%   - window_length is [mode, half] in both branches (the Hilbert branch kept
%     a scalar, and window_length_CCA(:,i) then failed for half 2).
%   - Warns when no *Half_1* files are found.
%   - CCA_POD_func now works in the POD subspace (no n_pix^2 matrices), so
%     full fields work as well as small ROIs; see its header.

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

Top_folders =  "/home/jweightman/qk75_scratch2/JWeightman/Schlieren"  % For MASSIVE: relative to LTRAC-Jet-Noise/
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren" % Output directory

% Wildcard patterns to select specific cases
parent_folder_str = "*Flapping*"; % Regex to select parent folders
main_folder_str = "*ONR*"; % Regex to select main folders

% Retrieve paths matching criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

% =====================================================================
% POD ANALYSIS PARAMETERS
% =====================================================================
% Control snapshot count and optional axial region restriction

n_snapshots_set = 0;  % Number of snapshots to analyze

% Optional: restrict analysis to axial region of interest
ROI = 0;  % 0, 1, or 2. 0 for off, 1 for below region bounds for analysis, but projected against full field, 2 skips full field projection
x_roi = [0,100];      % Axial bounds [nozzle diameters]. Set to 0 to not restrict
y_roi = [0,10];      % Transverse bounds [nozzle diameters]. Set to 0 to not restrict

% Perform Hilbert transform on input data to better extract instantaneous properties
do_hilbert = false;

% =====================================================================
% MAIN PROCESSING LOOP
% =====================================================================

for m = 1:length(parent_folders)

    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Find all subfolders matching main_folder_str pattern
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % Loop through each main folder, then each subfolder (Various NPRs),

    % =====================================================================
    % NESTED LOOP: PROCESS EACH CONDITION/NPR SUBFOLDER
    % =====================================================================
    % For each specific operating condition (e.g., NPR1, NPR2, etc.):
    %   - Locate *Fields.mat snapshot files
    %   - Apply POD decomposition to extract spatial modes
    %   - Save Mode(y, x, mode), Energy(mode), and temporal coefficients
    for k = 1:length(main_folders)
        main_folder = fullfile(parent_folder, main_folders(k).name,'Data');
        save_folder = fullfile(save_folder_upper,main_folders(k).name,'POD_Results','CCA','Data'); % local save location, ie shouldn't be Market.

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
        suffix='*Half_1*.mat';
        direc = dir(strcat(main_folder,filesep,suffix)); 
        filenames={};
        [filenames{1:length(direc),1}] = deal(direc.name);
        if isempty(filenames)
            warning("No %s files in %s (make them with Functions/Misc/Generate_Twin_Half_Slices_POD_HPOD_Fields.m)", suffix, main_folder);
        end
            

        % =====================================================================
        % CONDITION PROCESSING LOOP
        % =====================================================================
        for iii = 1:length(filenames)

            filename = filenames{iii};
            condition = extractBefore(filename,'_Half_');
            disp(condition)

            load_file1 = fullfile(main_folder,strcat(condition,'_Half_1_Fields.mat'));
            load_file2 = fullfile(main_folder,strcat(condition,'_Half_2_Fields.mat'));


            % =====================================================================
            % DATA LOADING AND MEMORY MANAGEMENT
            % =====================================================================
            % Use matfile for loading (avoids loading full array into memory)

            fprintf('Loading First Dataset\n');
            im_data = {};
            x = {};
            y = {};

            file1 = matfile(load_file1);
                
            % Determine snapshot count: use n_snapshots limit or all available
            im_size = size(file1,'im_data');
            if n_snapshots_set == 0
                n_snapshots = im_size(3);  % Use all available snapshots
            else
                n_snapshots = min([n_snapshots_set,im_size(3)]);  % Cap at limit
            end

            % Load spatial snapshots into memory (convert to single for efficiency)
            im_data_temp = file1.im_data(:,:,1:n_snapshots);  % Shape: (n_y, n_x, n_t)
            im_data{1} = cast(im_data_temp,'single');

            x{1} = file1.x;  % Spatial coordinates (n_y, n_x)
            y{1} = file1.y;
            fps = file1.fps;
            dt = 1/fps;
            t = [0:n_snapshots-1].*dt;
            D = file1.D;

            fprintf('Loading Second Dataset\n');
            file2 = matfile(load_file2);
                        
            % Load spatial snapshots into memory (convert to single for efficiency)
            im_data_temp = file2.im_data(:,:,1:n_snapshots);  % Shape: (n_y, n_x, n_t)
            im_data{2} = cast(im_data_temp,'single');
            x{2} = file2.x;  % Spatial coordinates (n_y, n_x)
            y{2} = file2.y;

            clearvars im_data_temp

            %%% correct the roi limits
            if ROI > 0
                if sum(x_roi ~= 0) > 0
                    ind_x1 = find(abs(x{1}(1,:)-x_roi(1)) == min(abs(x{1}(1,:)-x_roi(1))));
                    ind_x2 = find(abs(x{1}(1,:)-x_roi(2)) == min(abs(x{1}(1,:)-x_roi(2))));
                else
                    ind_x1 = 1;
                    ind_x2 = size(x{1},2);
                end
                if sum(y_roi(1,:) ~= 0) > 0
                    ind_y1 = find(abs(y{1}(:,1)-y_roi(1,1)) == min(abs(y{1}(:,1)-y_roi(1,1))));
                    ind_y2 = find(abs(y{1}(:,1)-y_roi(1,2)) == min(abs(y{1}(:,1)-y_roi(1,2))));
                else
                    ind_y1 = 1;
                    ind_y2 = size(y{1},1);
                end
                x_roi(1) = x{1}(1,ind_x1);
                x_roi(2) = x{1}(1,ind_x2);
                y_roi(1) = y{1}(ind_y1,1);
                y_roi(2) = y{1}(ind_y2,1);
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
            fprintf('Starting CCA (H)POD Processing\n')
            [POD_modes_CCA, a_n_CCA, Energy, Mode, t, x, y] = CCA_POD_func(im_data, ROI, x_roi, y_roi, x, y, do_hilbert, t);


            % Process Instantaneous Properties
            if do_hilbert

                mode_inst_phase_CCA = [];  % mode_inst_phase: [n_t, n_modes] instantaneous phase
                mode_inst_freq_CCA = [];   % mode_inst_freq: [n_t, n_modes] instantaneous frequency
                mode_inst_amp_CCA = []; % mode_inst_amp: [n_t, n_modes] instantaneous amplitude
                a_n_complex_CCA = [];
                a_n_abs_CCA = [];
                window_length = [];

                for i = 1:2
                    % Magnitude: amplitude envelope of modal time series
                    a_n_complex_CCA(:,:,i) = a_n_CCA{i};
                    a_n_abs_CCA(:,:,i) = abs(a_n_complex_CCA(:,:,i));
                                        
                    for j = 1:2%:size(a_n_complex, 2) % j: loop over all modes
                        % Extract phase via arctangent of complex number
                        mode_inst_phase_CCA(:, j, i) = angle(a_n_complex_CCA(:, j, i));
                        % Unwrap phase: remove 2π jumps to create continuous curve
                        mode_inst_phase_CCA(:, j, i) = unwrap(mode_inst_phase_CCA(:, j, i));
                        
                        % Rough frequency estimate: phase gradient via finite differences
                        mode_inst_freq_CCA(:, j, i) = 1/(2*pi) * (gradient(mode_inst_phase_CCA(:, j, i), dt));
            
                        % Refine frequency estimate via Savitzky-Golay filtering
                        % Rationale: SG filter preserves peaks while smoothing noise
                        % Window length: 2 cycles at mean mode frequency (centered odd window)
                        mean_freq = abs(mean(mode_inst_freq_CCA(:, j, i))); % Mean frequency [Hz]
                        window_length(j, i) = 2 * floor((25 * 1/mean_freq * fps) / 2) + 1; % Odd window
                        wl = window_length(j, i);
                        polyorder = 2; % Quadratic fit for local derivative

                        % SG-filtered frequency derivative (better than naive gradient)
                        mode_inst_freq_CCA(:, j, i) = 1/(2*pi) * savgol_diff(mode_inst_phase_CCA(:, j, i), ...
                            wl, polyorder, 1, dt);

                        % Handle edge effects: replicate boundary values from interior
                        mode_inst_freq_CCA((1:(wl+1)/2), j, i) = mode_inst_freq_CCA((wl+1)/2 + 1, j, i);
                        mode_inst_freq_CCA((end-(wl+1)/2+1:end), j, i) = mode_inst_freq_CCA(end-(wl+1)/2, j, i);

                        % Compute amplitude envelope with same smoothing as frequency
                        mode_inst_amp_CCA(:,j, i) = smooth(a_n_abs_CCA(:, j, i), wl);

                        % Handle edge effects: replicate boundary values from interior
                        mode_inst_amp_CCA((1:(wl+1)/2), j, i) = mode_inst_amp_CCA((wl+1)/2 + 1, j, i);
                        mode_inst_amp_CCA((end-(wl+1)/2+1:end), j, i) = mode_inst_amp_CCA(end-(wl+1)/2, j, i);

                        mode_inst_phase_CCA(:, j, i) = smooth(mode_inst_phase_CCA(:, j, i), wl);

                        % Handle edge effects: replicate boundary values from interior
                        mode_inst_phase_CCA((1:(wl+1)/2), j, i) = mode_inst_phase_CCA((wl+1)/2 + 1, j, i);
                        mode_inst_phase_CCA((end-(wl+1)/2+1:end), j, i) = mode_inst_phase_CCA(end-(wl+1)/2, j, i);
                    end
                end

            else

                mode_inst_phase_CCA = [];  % mode_inst_phase: [n_t, n_modes] instantaneous phase
                mode_inst_freq_CCA = [];   % mode_inst_freq: [n_t, n_modes] instantaneous frequency
                mode_inst_amp_CCA = []; % mode_inst_amp: [n_t, n_modes] instantaneous amplitude
                a_n_complex_CCA = [];
                a_n_abs_CCA = [];
                window_length = [];

                for i = 1:2
                    % Magnitude: amplitude envelope of modal time series
                    a_n_complex_CCA(:,1:2:3,i) = a_n_CCA{i}(:,1:2:3) + 1i*a_n_CCA{i}(:,2:2:4);
                    a_n_abs_CCA(:,1:2:3,i) = abs(a_n_complex_CCA(:,1:2:3,i));
                    
                    for j = 1%:2:3%:size(a_n_complex, 2) % j: loop over all modes
                        % Extract phase via arctangent of complex number
                        mode_inst_phase_CCA(:, j, i) = angle(a_n_complex_CCA(:, j, i));
                        % Unwrap phase: remove 2π jumps to create continuous curve
                        mode_inst_phase_CCA(:, j, i) = unwrap(mode_inst_phase_CCA(:, j, i));
                        
                        % Rough frequency estimate: phase gradient via finite differences
                        mode_inst_freq_CCA(:, j, i) = 1/(2*pi) * (gradient(mode_inst_phase_CCA(:, j, i), dt));
            
                        % Refine frequency estimate via Savitzky-Golay filtering
                        % Rationale: SG filter preserves peaks while smoothing noise
                        % Window length: 2 cycles at mean mode frequency (centered odd window)
                        mean_freq = abs(mean(mode_inst_freq_CCA(:, j, i))); % Mean frequency [Hz]
                        window_length(j, i) = 2 * floor((25 * 1/mean_freq * fps) / 2) + 1; % Odd window
                        polyorder = 2; % Quadratic fit for local derivative
                        
                        % SG-filtered frequency derivative (better than naive gradient)
                        mode_inst_freq_CCA(:, j, i) = 1/(2*pi) * savgol_diff(mode_inst_phase_CCA(:, j, i), ...
                            window_length(j, i), polyorder, 1, dt);
                        
                        % Handle edge effects: replicate boundary values from interior
                        mode_inst_freq_CCA((1:(window_length(j, i)+1)/2), j, i) = mode_inst_freq_CCA((window_length(j, i)+1)/2 + 1, j, i);
                        mode_inst_freq_CCA((end-(window_length(j, i)+1)/2+1:end), j, i) = mode_inst_freq_CCA(end-(window_length(j, i)+1)/2, j, i);
            
                        % Compute amplitude envelope with same smoothing as frequency
                        mode_inst_amp_CCA(:,j, i) = smooth(a_n_abs_CCA(:, j, i), window_length(j, i));
        
                        % Handle edge effects: replicate boundary values from interior
                        mode_inst_amp_CCA((1:(window_length(j, i)+1)/2), j, i) = mode_inst_amp_CCA((window_length(j, i)+1)/2 + 1, j, i);
                        mode_inst_amp_CCA((end-(window_length(j, i)+1)/2+1:end), j, i) = mode_inst_amp_CCA(end-(window_length(j, i)+1)/2, j, i);

                        mode_inst_phase_CCA(:, j, i) = smooth(mode_inst_phase_CCA(:, j, i), window_length(j, i));

                        % Handle edge effects: replicate boundary values from interior
                        mode_inst_phase_CCA((1:(window_length(j, i)+1)/2), j, i) = mode_inst_phase_CCA((window_length(j, i)+1)/2 + 1, j, i);
                        mode_inst_phase_CCA((end-(window_length(j, i)+1)/2+1:end), j, i) = mode_inst_phase_CCA(end-(window_length(j, i)+1)/2, j, i);
                    end
                end
            end
        
            % =====================================================================
            % OUTPUT GENERATION AND STORAGE
            % =====================================================================
            fprintf('Saving\n')

            x_CCA = x;
            y_CCA = y;
            window_length_CCA = window_length;

            for i = 1:2
                % Generate output filename: include ROI parameters if region restricted
                if do_hilbert
                    if ROI > 0
                        save_file = fullfile(save_folder, strcat(condition, sprintf('_ROI_x_%1.0f_%1.0f_y_%1.0f_%1.0f',x_roi(1),x_roi(2),y_roi(1),y_roi(2)), sprintf('_Half_%d',i), '_CCA_Hilbert_POD_Modes.mat'));
                    else
                        save_file = fullfile(save_folder, strcat(condition,sprintf('_Half_%d',i),'_CCA_Hilbert_POD_Modes.mat'));
                    end
                elseif ROI > 0
                    save_file = fullfile(save_folder, strcat(condition,sprintf('_ROI_x_%1.0f_%1.0f_y_%1.0f_%1.0f',x_roi(1),x_roi(2),y_roi(1),y_roi(2)), sprintf('_Half_%d',i),'_CCA_POD_Modes.mat'));
                else
                    save_file = fullfile(save_folder, strcat(condition,sprintf('_Half_%d',i),'_CCA_POD_Modes.mat'));
                end
        
                % Save all POD results to MAT file
                %   Mode(y, x, n_mode) = spatial mode shapes
                %   Energy(n_mode) = modal energy eigenvalues
                %   POD_modes, phi, a_n = intermediate decomposition outputs
                %   x, y = spatial grid coordinates

                POD_modes = POD_modes_CCA{i};
                a_n = a_n_abs_CCA(:,:,i);
                a_n_complex = a_n_complex_CCA(:,:,i);
                mode_inst_phase = mode_inst_phase_CCA(:,:,i);
                mode_inst_freq = mode_inst_freq_CCA(:,:,i);
                mode_inst_amp = mode_inst_amp_CCA(:,:,i);
                x = x_CCA{i};
                y = y_CCA{i};
                window_length = window_length_CCA(:,i);

                save(save_file, 'Mode', 'Energy', 'POD_modes', 'a_n_complex', 'a_n', 'x', 'y', ...
                'mode_inst_phase', 'mode_inst_freq', 'mode_inst_amp', ...
                'fps', 'dt', 't', 'D', 'window_length', '-v7.3', '-nocompression');
            end

            fprintf('Saved CCA Halves\n');

        end
    end
end