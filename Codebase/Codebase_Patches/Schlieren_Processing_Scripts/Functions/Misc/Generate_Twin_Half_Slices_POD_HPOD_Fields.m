close all
clear all

addpath(genpath("Functions"))

% Splits each *_Fields.mat about the jet axis into <case>_Half_1_Fields.mat
% (y > 0) and <case>_Half_2_Fields.mat (y < 0, flipped so both halves run
% from the axis outwards with y > 0). Run POD_Analysis, Hilbert_POD_Analysis
% (use_reconstructed_data = false) or CCA_POD_Analysis on the halves, then
% Functions/Misc/Half_Slices_Hilbert_POD_Analysis.m to compare them.
%
% PATCH 2026-10-23 (Codebase_Patches):
%   - t_target was hard-coded to [0.4, 1.2] s, so any record shorter than
%     1.2 s (e.g. 10k frames at 150 kHz = 0.067 s) gave a single frame. It is
%     now a parameter; [] (default) keeps all n_snapshots frames.
%   - Both halves have the same number of rows (min of the two sides), so
%     their modes can be compared point by point (correct_phase_between_halves).
%   - The background is split with the data (the full frame was saved).
%   - Mach cases save M (file.NPR doesn't exist for them); _Mj_/_M_/_Ma_.
%   - straight_to_POD / straight_to_HPOD called simple_POD_func and
%     hilbert_POD_func with an old argument list (and save_folders, a
%     struct, as a path), so they errored. They are removed: run the
%     standard analysis scripts on the half files instead (one copy of the
%     HPOD code, with the fixes in hilbert_POD_func).
%   - 'Angles' typo for the Angled view.

straight_to_POD = false;   % removed (see above); must stay false
straight_to_HPOD = false;  % removed (see above); must stay false
if straight_to_POD || straight_to_HPOD
    error('straight_to_POD/HPOD were removed: run POD_Analysis or Hilbert_POD_Analysis on the *_Half_1/_Half_2_Fields.mat files.');
end
t_target = [];      % [t_start, t_end] in s to keep, or [] for all frames
row_offset = 1;     % rows either side of the axis left out of both halves

% Detect execution environment: 1 if HPC (Linux), 0 if Windows PC
using_MASSIVE = 1-ispc;
using_Market = false;  % Whether to use Market (shared network drive) for data storage

% =====================================================================
% DIRECTORY CONFIGURATION
% =====================================================================
% Same hierarchy as BMD/POD scripts
% Top_folder / parent_folder / main_folder / Data -> *Fields.mat

Top_folders = "/home/jweightman/qk75_scratch2/JWeightman/"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                                      % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/"; % Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = "*Schliere*";      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = "*ONR*";         % main_folder_str: regex pattern (select by nozzle config)

% Retrieve paths matching above criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

n_snapshots_set = 0;

ROI = false;
xD1 = 2;
xD2 = 4;

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
        if isempty(case_list)
            warning("No %s files in %s", suffix, snapshot_dir);
            continue
        end

        skip_file = "Half";
        for n = length(case_list):-1:1
            if contains(case_list{n},skip_file)
                case_list(n) = [];
            end
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
        % PARSE CONDITION PARAMETERS FROM CASE LIST
        % =====================================================================
        if using_npr
            [nozzle_list, NPR, NPR_factor] = get_filename_params(using_npr, case_list);
        else
            [nozzle_list, M, M_factor] = get_filename_params(using_npr, case_list);
        end
        
        if contains(main_folder,'Minor')
            flow_axis = 'Minor';
        elseif contains(main_folder,'Major')
            flow_axis = 'Major';
        elseif contains(main_folder,'Angled')
            flow_axis = 'Angled';
        else
            flow_axis = 'Minor';
        end
        
        for iii = 1:length(case_list)
            condition = case_list{iii}(1:end-11); %% removes "_Fields.mat"
            load_file = fullfile(snapshot_dir, case_list{iii});
            file = matfile(load_file);

            im_mean = file.im_mean;
            
            % Determine actual snapshot count in file and apply user limit
            im_size = size(file, 'im_data'); % im_size: [n_y, n_x, n_snapshots_total]
            if n_snapshots_set == 0
                n_snapshots = im_size(3);  % Use all available: n_snapshots=0 means "unlimited"
            else
                n_snapshots = min([n_snapshots_set, im_size(3)]); % Cap at limit
            end


            
            % Load spatial snapshot matrix into memory
            % im_data: [n_y, n_x, n_snapshots] single precision (4 bytes/value, memory efficient)

    
            x = file.x;
            y = file.y;
    
            D = file.D;
            background = file.background;
            fps = file.fps;
            if using_npr
                NPR = file.NPR;
                cond_var = 'NPR';
            else
                M = file.M;
                cond_var = 'M';
            end

            dt = 1/fps;

            t = [0:n_snapshots-1].*dt;
            time_series = [1:n_snapshots];

            if ~isempty(t_target)
                for ti = 1:2
                    t_ind(ti) = find(abs(t-t_target(ti)) == min(abs(t-t_target(ti))),1);
                end
                time_series = [t_ind(1):t_ind(2)];
            end

            dy  = y(2,1) - y(1,1);
            c_h = round(2*(1 - y(1,1)/dy))/2;   % axis row, snapped to whole/half row

            lo = ceil(c_h) - row_offset;    % last row of half 2
            hi = floor(c_h) + row_offset;   % first row of half 1
            n_half = min(lo, size(y,1) - hi + 1);   % same number of rows in both halves
            rows_2 = lo-n_half+1:lo;
            rows_1 = hi:hi+n_half-1;

            im_mean_2 = im_mean(rows_2,:);
            im_mean_1 = im_mean(rows_1,:);

            x_2 = x(rows_2,:);
            x_1 = x(rows_1,:);

            y_2 = y(rows_2,:);
            y_1 = y(rows_1,:);

            if isempty(background)
                background = zeros(size(im_mean),'int16');
            end
            background_full = background;

            im_data = file.im_data(:, :, time_series);

            im_data_2 = im_data(rows_2,:,:);
            im_data_1 = im_data(rows_1,:,:);
            
            x = x_1;
            y = y_1;
            im_mean = im_mean_1;
            im_data = im_data_1;
            background = background_full(rows_1,:);
            clearvars im_data_1;
            fprintf('Starting Half 1\n')

            if straight_to_POD
    
                directory_pod = fullfile(save_folders,'Angled','POD_Modes','Data');
                mkdir(directory_pod)
                
                
                fprintf('Starting POD Processing\n')
                %%% Process POD
                [POD_modes,a_n,Energy,phi,Mode] = simple_POD_func(im_data, ROI, xD1, xD2, x);
                
                fprintf('Saving\n')
                
                %%Save spatial modes and mode coefficients
                if ROI == true
                    save_file = fullfile(directory_pod, [condition,strcat('_ROI_',num2str(xD1),'_',num2str(xD2),'_Half_1_POD_Modes.mat')]);
                else
                    save_file = fullfile(directory_pod, [condition,'_Half_1_POD_Modes.mat']);
                end
                
                save(save_file,'Mode','Energy','POD_modes','phi','a_n','x','y','-v7.3','-nocompression');
    
            elseif straight_to_HPOD
    
                directory_pod = fullfile(save_folder,'POD_Results','Hilbert','Data');
                mkdir(directory_pod)

                t = [0:dt:n_snapshots*dt-dt]; % t: vector, time points of frames (seconds)
                
                [POD_modes,a_n_complex,Energy,phi,Mode,t] = hilbert_POD_func(im_data,t, ROI, xD1, xD2, x);

                % Magnitude: amplitude envelope of modal time series
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
                    window_length(j) = 2 * floor((25 * 1/mean_freq * fps) / 2) + 1; % Odd window
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
                
                fprintf('Saving\n')
                
                %%Save spatial modes and mode coefficients
                if ROI == true
                    save_file = fullfile(directory_pod, [condition,strcat('_ROI_',num2str(xD1),'_',num2str(xD2),'_Half_1_Hilbert_POD_Modes.mat')]);
                else
                    save_file = fullfile(directory_pod, [condition,'_Half_1_Hilbert_POD_Modes.mat']);
                end
                
                save(save_file,'Mode','Energy','POD_modes','phi','a_n','x','y','a_n_complex','mode_inst_phase','mode_inst_freq','mode_inst_amp','fps','dt', 't','D','window_length','-v7.3','-nocompression');
    
    
            else
    
                directory_save = fullfile(save_folder,'Data');
                mkdir(directory_save);
                save_file = fullfile(directory_save, [condition,'_Half_1_Fields.mat']);
                save(save_file,'im_data','im_mean','x','y','D','background','fps',cond_var,'-v7.3','-nocompression');
            end
            
            fprintf('Starting Half 2\n')
            x = x_2;
            y = abs(flip(y_2,1));
            im_mean = flip(im_mean_2,1);
            im_data = flip(im_data_2,1);
            background = flip(background_full(rows_2,:),1);
            clearvars im_data_2;
            
            save_file = strcat(save_file(1:end-5),'_Half_2_Fields.mat');
            
            
            if straight_to_POD
                fprintf('Starting POD Processing\n')
                %%% Process POD
                [POD_modes,a_n,Energy,phi,Mode] = simple_POD_func(im_data, ROI, xD1, xD2, x);
                
                fprintf('Saving\n')
                
                %%Save spatial modes and mode coefficients
                if ROI == true
                    save_file = fullfile(directory_pod, [condition,strcat('_ROI_',num2str(xD1),'_',num2str(xD2),'_POD_Modes.mat')]);
                else
                    save_file = fullfile(directory_pod, [condition,'_Half_2_POD_Modes.mat']);
                end
                
                save(save_file,'Mode','Energy','POD_modes','phi','a_n','x','y','-v7.3','-nocompression');
    
            elseif straight_to_HPOD
                            
                t = [0:dt:n_snapshots*dt-dt]; % t: vector, time points of frames (seconds)
                
                [POD_modes,a_n_complex,Energy,phi,Mode,t] = hilbert_POD_func(im_data,t, ROI, xD1, xD2, x);

                % Magnitude: amplitude envelope of modal time series
                a_n = abs(a_n_complex);
    
                mode_inst_phase = [];  % mode_inst_phase: [n_t, n_modes] instantaneous phase
                mode_inst_freq = [];   % mode_inst_freq: [n_t, n_modes] instantaneous frequency
                mode_inst_amp = []; % mode_inst_amp: [n_t, n_modes] instantaneous amplitude
                
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
                    window_length(j) = 2 * floor((25 * 1/mean_freq * fps) / 2) + 1; % Odd window
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
                
                fprintf('Saving\n')
                
                %%Save spatial modes and mode coefficients
                if ROI == true
                    save_file = fullfile(directory_pod, [condition,strcat('_ROI_',num2str(xD1),'_',num2str(xD2),'_Half_2_Hilbert_POD_Modes.mat')]);
                else
                    save_file = fullfile(directory_pod, [condition,'_Half_2_Hilbert_POD_Modes.mat']);
                end
                
                save(save_file,'Mode','Energy','POD_modes','phi','a_n','x','y','a_n_complex','mode_inst_phase','mode_inst_freq','mode_inst_amp','fps','dt', 't','D','window_length','-v7.3','-nocompression');
    
            else
    
                save_file = fullfile(directory_save, [condition,'_Half_2_Fields.mat']);
                save(save_file,'im_data','im_mean','x','y','D','background','fps',cond_var,'-v7.3','-nocompression');
            end
        end
    end
end
