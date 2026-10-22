%% ======================== DESCRIPTION ========================
% Feed in any data series and return the upstream and downstream traveling
% components, separately.
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

Top_folders = "J:\"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                   % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "J:\"; % Usually set to same as Top_folders. Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = ["*Test*"];      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = ["*Flow_*"];         % main_folder_str: regex pattern (select by nozzle config)

% Discover parent and save folder paths matching selection criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);
% parent_folders: cell array of strings, absolute paths to data parent folders
% save_folders: cell array of strings, corresponding output directories

modal_data = true;     % Set if the data is a time series (false), or modal data, such as a spatial SPOD mode (true)
specific_peaks = false;
St_specific_outer = [0.42];%
folder_location = "SPOD_Results";   % The folder where the data is stored (level above the data folder of interest) 
                                    % Leave as "" for basic schlieren data.

make_videos = true;
video_fps = 15;
n_snapshots_set = 15;  %%% Number of frames to record for period data
cmap = gray;

save_upstream_downstream_component = false;

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
        main_folder = fullfile(parent_folder,main_folders(k).name,folder_location,'Data');
        % main_folder_market: string, path to SPOD results if stored on Market drive

        save_folder = fullfile(save_folder_upper,main_folders(k).name,folder_location,'Upstream_Downstream_Split');  % save_folder: string, reconstruction output (write)
        mkdir(save_folder);  % Ensure save directory exists

        %% Discover SPOD result files matching pattern
        suffix = strcat('*.mat');  % suffix: string, pattern to match SPOD filenames
        case_list = dir(fullfile(main_folder,suffix));
        case_list = extractfield(case_list, 'name');  % case_list: cell array of filenames
    
        %% Detect operating condition parameterization (NPR vs. Mach)
        % RATIONALE: NPR (Nozzle Pressure Ratio) for heated jets, Mach for ideally-expanded jets
        if contains(case_list{1},'_NPR_')
            using_npr = true;   % using_npr: boolean, true = NPR parameterization
        elseif contains(case_list{1},'_Mj_')
            using_npr = false;  % using_npr: false = Mach number parameterization
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

        %% Set coordinate axis labels based on viewing angle
        % Different camera views (Major/Minor/Angled) have different spatial meanings
        % This ensures axis labels match the physical interpretation of x,y coordinates
        if contains(main_folder,'Minor')
            y_string = '$z/D_e$';   % Minor view: z is the spanwise axis
        elseif contains(main_folder,'Angled')
            y_string = '$z^*/D_e$'; % Angled view: rotated spanwise axis
        elseif contains(main_folder,'Major')
            y_string = '$y/D_e$';   % Major view: y is the crossflow axis
        else
            y_string = '$y/D_e$';   % Default to y label
        end

        % Detect nozzle geometry type (ONR, elliptical, rectangular) to set x label
        if contains(main_folder,'ONR') || contains(main_folder,'Ellip') || contains(main_folder,'Rect')
            x_string = '$x/D_e$';   % Equivalent diameter labeling
        elseif contains(parent_folder,'ONR') || contains(parent_folder,'Ellip') || contains(parent_folder,'Rect')
            x_string = '$x/D_e$';   % Check parent folder in case not in main_folder
        else
            x_string = '$x/D$';     % Circular jet: use D
            y_string = strcat(y_string(1:end-3),'$'); % Remove /D_e, keep just coordinate
        end
        

        %% ===================== PER-CASE PROCESSING LOOP =====================
        % For each operating condition: load SPOD, filter, reconstruct, save        
        for ii = 1:length(case_list) 

            filename = case_list{ii};
            full_filename = fullfile(main_folder,filename);
            file = matfile(full_filename);  % Memory-efficient access

            x = file.x;
            y = file.y;
            fps = file.fps;  % Frames per second for frequency scaling
            if ~isempty(whos(file,'D_eff'))   % SPOD_Analysis saves D, not D_eff
                D = file.D_eff;  % Nozzle diameter for Strouhal normalization
            else
                D = file.D;
            end

            if using_npr
                NPR = NPR_list(ii)/(10^(NPR_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, NPR, 1, D);
            else
                M = M_list(ii)/(10^(M_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, M, 1, D);
            end

            if ~modal_data
                % Determine available snapshots and load n_snapshots (or fewer)
                im_size = size(file,'im_data');
                if n_snapshots_set == 0
                    n_snapshots = im_size(3);
                else
                    n_snapshots = min([n_snapshots_set,im_size(3)]);
                end
                
                % Load data and metadata
                im_data = file.im_data(:,:,1:n_snapshots);
                im_data = cast(im_data,'single');  % Single precision for memory efficiency

                save_file_add = "";
                n_peaks = 1;


            else

                L = file.L;
                St = file.St;
                mode_n = 1;
                n_peaks = 3;

                if ~specific_peaks
                    [mode_peaks,mode_peak_index,~,mode_peak_prominence] = findpeaks(L(:,mode_n));
                    
                    % Sort peaks by prominence (descending) to prioritize most distinct peaks
                    [mode_peak_prominence,sort_inds] = sort(mode_peak_prominence,'descend');
                    mode_peaks = mode_peaks(sort_inds);
                    mode_peak_index = mode_peak_index(sort_inds);
        
                    % LOW-FREQUENCY FILTERING: remove peaks at index < 3
                    % RATIONALE: first few frequency bins contaminated by mean flow/drift artifacts
                    mode_peak_prominence(mode_peak_index < 3) = [];
                    mode_peaks(mode_peak_index < 3) = [];
                    mode_peak_index(mode_peak_index < 3) = [];
    
                    L_peaks_inds = mode_peak_index(1:min([n_peaks,length(mode_peak_index)]));
                else
                    for j = 1:size(St_specific_outer,2)
                        L_peaks_inds(j) = find(abs(St - St_specific_outer(j)) == min(abs(St - St_specific_outer(j))));
                        % St_specific_ind: [1, n_peaks] int, verified indices closest to specific_freqs
                    end
                end
                
                St_peaks = St(L_peaks_inds);

                for jj = 1:length(L_peaks_inds)
                    im_data_multiple(:,:,jj) = file.P(L_peaks_inds(jj),:,:,1);
                end
                n_snapshots = 360;  % default for modal data

                n_peaks = length(L_peaks_inds);
            end

            for nn = 1:n_peaks
                for flow_direction = -1:2:1
        
                    if modal_data
                        im_data = im_data_multiple(:,:,nn);
                        save_file_add = sprintf("_St_%3.3f",St_peaks(nn));
                    end
                    
                    [im_data_series, direction_str] = separate_flow_direction_function(im_data,flow_direction,n_snapshots);
    
                    low = quantile(im_data_series,0.001,"all");
                    high = quantile(im_data_series,0.999,"all");
    
                    if make_videos
                        mkdir(fullfile(save_folder,'Videos'));
                        vid_file = fullfile(save_folder,'Videos',strcat(filename(1:end-4), save_file_add,'_',direction_str,'.mp4'));

                        for j = [1,1:n_snapshots]
    
                            im = im_data_series(:,:,j);  % im: [n_y,n_x] single precision
                
                            f = figure(1);
                            set(gcf,'Color',[1,1,1])  % White background for cleaner export
                            set(gcf,'Position',[300,200,600,360])
                            pcolor(x,y,im);           % Render schlieren intensity as pseudocolor
                            shading interp;           % Smooth color interpolation (no visible mesh)
                            axis equal tight           % Match aspect ratio; remove excess whitespace
                            colormap(cmap)            % Grayscale for schlieren convention
                            clim([low,high])          % Apply quantile-based contrast scaling
                            set(gca,'Layer','Top')    % Draw axes on top of patch
                            xlabel(x_string,...
                                'FontAngle','italic','rot',0,'interpreter','LaTeX');  % Axial coordinate label
                            ylabel(y_string,...
                                'FontAngle','italic','rot',90,'interpreter','LaTeX'); % Transverse coordinate label
                            fontsize(f,16,"points");
                            fontname(f,"Times New Roman");
            
                            % Export rendered frame as PNG (high quality, -m4 = 4x magnification)
                            temp_png = fullfile(save_folder,'Videos',strcat(filename(1:end-4), save_file_add,sprintf('_test%02d.png',j)));
                            export_fig(temp_png,'-m4');  % -m4: 4x upsampling for crisp text/lines
                        end
    
                        if ispc
                            % Windows: ffmpeg in standard PATH;
                            % H.264 codec settings: high profile, level 4.0 (HD-capable)
                            % Bitrate: 16 Mbps (high quality), yuv420p for compatibility
                            command = strcat("ffmpeg -y -framerate ", num2str(video_fps)," -i ",...
                                fullfile(save_folder,'Videos',strcat(filename(1:end-4), save_file_add,'_test%02d.png')), ... 
                                ' -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2" -c:v libx264 -profile:v high -level:v 4 -pix_fmt yuv420p -b:v 16000k -codec:a'," aac ", vid_file);
                        else
                            % Linux (MASSIVE): module load ffmpeg, then same ffmpeg command
                            % Module load ensures ffmpeg is in PATH before invocation
                            command = strcat("module load ffmpeg/4.3.1; ffmpeg -y -framerate ", num2str(video_fps),...
                                " -i ",fullfile(save_folder,'Videos',strcat(filename(1:end-4), save_file_add,'_test%02d.png')), ... 
                                ' -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2" -c:v libx264 -profile:v high -level:v 4 -pix_fmt yuv420p -b:v 16000k -codec:a'," aac ", vid_file);
                        end
            
                        % Execute ffmpeg command to encode PNG sequence to video
                        % -y: overwrite output if exists
                        % -framerate: input frame rate (PNG sequence spacing)
                        % -vf "pad...": ensure even dimensions for yuv420p (H.264 requirement)
                        % -c:v libx264: H.264 encoder (widely compatible)
                        % -b:v 16000k: video bitrate (16 Mbps, high quality)
                        system(command);
            
                        %% Clean up temporary PNG files to save disk space
                        % PNG sequence is no longer needed after encoding; remove to avoid clutter
                        for j = 1:n_snapshots
                            temp_png = fullfile(save_folder,'Videos',strcat(filename(1:end-4), save_file_add,sprintf('_test%02d.png',j)));
                            delete(temp_png)  % Delete individual PNG frame after encoding
                        end
                    end
                    if save_upstream_downstream_component
                        disp('Now Saving');
                        % -------------------- SAVE PREPROCESSED FIELDS --------------------
                        % Save the preprocessed image stack and metadata to standardized
                        % *Fields.mat files used throughout the analysis pipeline.
                        % Use -v7.3 to support large arrays and -nocompression for faster I/O.
    
                        mkdir(fullfile(save_folder, "Data"));
                        save_file = fullfile(save_folder, "Data", strcat(filename(1:end-4), save_file_add, direction_str ,'_Fields.mat'));

                        % Saved as im_data so the *_Fields.mat file works with the other scripts
                        % (NPR branch saved im_data_series; Mach branch saved the unsplit im_data)
                        im_data_split = im_data_series;
                        S_save.im_data = im_data_split; S_save.direction_str = direction_str;
                        S_save.x = x; S_save.y = y; S_save.D = D; S_save.fps = fps;
                        if using_npr
                            S_save.NPR = NPR_list(ii);   % integer code, as in other *_Fields.mat files (NPR here is decoded)
                        else
                            S_save.M = M_list(ii);       % integer code, as in other *_Fields.mat files
                        end
                        save(save_file, '-struct', 'S_save', '-v7.3', '-nocompression');
                        clearvars S_save im_data_split
                    end
                end
            end
        end
    end
end
          