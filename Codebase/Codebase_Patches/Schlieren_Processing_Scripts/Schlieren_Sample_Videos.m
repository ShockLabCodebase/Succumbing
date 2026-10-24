%================================================================================
% PURPOSE:
%   Generate quick-preview video files from preprocessed schlieren snapshot data
%   (*Fields.mat) to enable rapid flow inspection without storing/processing
%   full-resolution datasets.
%
% HIGH-LEVEL WORKFLOW:
%   1. Discover preprocessed *Fields.mat files in Data/ directories across
%      operating-condition subfolders (by regex matching parent_folder_str)
%   2. Load temporally subsampled snapshot stack (n_snapshots frames)
%   3. Render grayscale schlieren images with spatial coordinate overlays
%   4. Export PNG sequence of rendered frames
%   5. Encode PNG sequence to H.264 MP4 video via ffmpeg (framerate: video_fps Hz)
%   6. Clean up temporary PNG files; retain video in Videos/ subfolder
%
% OUTPUT FILES:
%   - {case_name}_t_{start_point}.mp4 in {save_folder}/Videos/
%     * Encoded video with H.264 codec, 16 Mbps bitrate, mono audio
%     * Frame count: min(N, n_snapshots) from original dataset
%     * Frame rate: video_fps Hz (default 15 fps)
%
% KEY DESIGN RATIONALE:
%   - PNG sequence generation allows fine control of schlieren rendering
%     (colormaps, axis labels, font sizes) that video codecs cannot provide
%   - ffmpeg encoding to H.264 ensures wide compatibility (ImageJ, VLC, etc.)
%   - Two-step process (render → encode) avoids direct video write, which
%     can be finicky with different MATLAB/codec combinations
%   - Temporal subsampling (n_snapshots) keeps preview files <100 MB
%   - Background NOT subtracted so user sees raw intensities for reference
%
%================================================================================

clear; close;

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

%% ======================== ENVIRONMENT CONFIGURATION ========================
% Detect execution environment and data storage location
% Adjust ffmpeg system calls and file I/O paths accordingly

using_MASSIVE = 1-ispc;   % using_MASSIVE: boolean, true if Linux HPC, false if Windows PC
using_Market = false;      % using_Market: boolean, true if snapshot files (*Fields.mat) 
                          % on network shared drive; affects path resolution in get_parent_path

%% ======================== DIRECTORY CONFIGURATION ========================
% Specify folder hierarchy for preprocessed snapshot discovery and output staging
% Hierarchy: Top_folder / parent_folder / main_folder / Data/*.mat
%   Each main_folder contains: Data/ (snapshots), Videos/ (output videos)
% Expected dataset structure: parent folders by jet type (Axisymmetric, Elliptical, etc.)
%                            main folders by nozzle config (e.g., *sD_225* for spacing)
%                            within each: Raw_Files/ or Data/ with *Fields.mat files

Top_folders = "M:\ONR_Twininess_Testing\"  % For MASSIVE: relative to LTRAC-Jet-Noise/ root
                               % For Windows: absolute path to data root
save_folder_outer = "M:\ONR_Twininess_Testing\" % Output root for video staging

% Wildcard patterns to select specific dataset subsets
parent_folder_str = "*Schlier*"; % Regex to select parent folders (jet type)
main_folder_str = "*Angled*";         % Regex to select main folders (nozzle config)

% Retrieve all parent folder and corresponding save folder paths matching criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,...
    save_folder_outer,using_MASSIVE,using_Market);

%% ======================== VIDEO GENERATION PARAMETERS ========================
% Control temporal subsampling and encoding frame rate
% MEMORY/PERFORMANCE NOTE:
%   - Each snapshot: [n_y, n_x] uint8/uint16 ≈ 0.5–2 MB
%   - Recommended n_snapshots: 200–500 (final video ≈ 50–100 MB)
%   - PNG export can be slow (5–10 sec per frame on typical hardware)
%   - Consider n_snapshots=200 for faster turnaround, n_snapshots=500 for detail

n_snapshots = 300;  % n_snapshots: scalar int, maximum frames to subsample from full stack
                    % Rationale: Limits video file size and PNG generation time
                    % Tradeoff: More snapshots → better temporal resolution but slower encoding
video_fps = 15;     % video_fps: scalar int, playback frame rate [frames/second]
                    % Typical range: 10–30 fps. Lower fps (10–15) speeds playback;

%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over parent folders (jet types) → main folders (nozzle configs)
% For each main folder: locate case list, render videos for all operating conditions

for m = 1:length(parent_folders)
    
    % Construct full paths for current parent folder
    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Discover main folders (nozzle configurations) within parent folder
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];  % Keep directory entries only
    main_folders = main_folders(sf);
    
    %% ===================== PER-MAIN-FOLDER LOOP =====================
    % Process each main folder (nozzle config): discover cases and generate videos
    
    for k = 1:length(main_folders)
        main_folder = fullfile(parent_folder,main_folders(k).name);
        save_folder = fullfile(save_folder_upper,main_folders(k).name);

        mkdir(save_folder);
        
        %% Locate preprocessed snapshot files (*Fields.mat)
        % Each file contains one operating condition (one NPR or Mach number)
        snapshot_dir = fullfile(main_folder,'Data');
        suffix = '*Fields.mat';
        case_list = dir(fullfile(snapshot_dir,suffix));
    
        % Extract filenames as string array for further parsing
        case_list = {case_list.name}; 
    
        %% Detect operating-parameter convention (NPR vs Mach number)
        % Heuristic: examine first case name for '_NPR_' or '_Mj_' pattern
        if contains(case_list{1},'_NPR_')
            using_npr = true;  % Dataset uses pressure ratio labeling
        elseif contains(case_list{1},'_Mj_')
            using_npr = false; % Dataset uses Mach number labeling
        else 
            using_npr = false; % Default to Mach if pattern unclear
        end
    
        %% Parse operating-point parameters from filenames
        % get_filename_params extracts nozzle IDs and operating parameter arrays
        % (NPR or Mach) plus scaling factors used in plot labels
        if using_npr
            [nozzle_list, NPR_list, NPR_factor] = get_filename_params(using_npr, case_list);
        else
            [nozzle_list, M_list, M_factor] = get_filename_params(using_npr, case_list);
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
        % For each operating condition: load snapshots, render frames, encode video
        
        for ii = 1:length(case_list)
            clearvars im_data L P f  % Clear previous iteration data to manage memory
            
            %% Load preprocessed image stack (limited to n_snapshots frames)
            % Use matfile for efficient partial reads without loading entire array
            % (important for large N where we only need first n_snapshots frames)
            filename = case_list{ii};
            full_filename = fullfile(snapshot_dir,filename);
            file = matfile(full_filename);
            
            % Load only the first n_snapshots frames: im_data: [n_y,n_x,n_snapshots] uint8/uint16
            im_data = file.im_data(:,:,1:n_snapshots);
            im_data = cast(im_data,'single');  % Convert to single precision for rendering
            x = file.x;  % x: [n_y,n_x] spatial grid [D]
            y = file.y;  % y: [n_y,n_x] spatial grid [D]

            mkdir(fullfile(save_folder,'Videos'));

            % Output video file path: {case_name}_t_{start_point}.mp4
            % (Note: start_point is undefined in current version; likely intended to track
            % temporal offset when subsampling, but not implemented—retains original logic)
            vid_file = fullfile(save_folder,'Videos',[filename(1:end-4),'.mp4']);

            % Skip if video already generated (avoid re-encoding)
            if exist(vid_file) == 2
                continue
            end

            %% Determine color scale from quantiles to normalize contrast
            % Use 0.1th and 99.9th percentiles to clip outliers and enhance
            % visibility of schlieren fluctuations (not absolute intensity)
            low = quantile(im_data,0.001,"all");
            high = quantile(im_data,0.999,"all");

            mkdir(fullfile(save_folder,'Videos'));
    
            %% ===================== FRAME RENDERING LOOP =====================
            % Render each snapshot as a grayscale pcolor plot with spatial overlays
            % Export as PNG for ffmpeg encoding (provides full rendering control)
            
            for j = [1,1:n_snapshots]

                im = im_data(:,:,j);  % im: [n_y,n_x] single precision
    
                f = figure(1);
                set(gcf,'Color',[1,1,1])  % White background for cleaner export
                set(gcf,'Position',[300,200,600,360])
                pcolor(x,y,im);           % Render schlieren intensity as pseudocolor
                shading interp;           % Smooth color interpolation (no visible mesh)
                axis equal tight           % Match aspect ratio; remove excess whitespace
                colormap(gray)            % Grayscale for schlieren convention
                clim([low,high])          % Apply quantile-based contrast scaling
                set(gca,'Layer','Top')    % Draw axes on top of patch
                xlabel(x_string,...
                    'FontAngle','italic','rot',0,'interpreter','LaTeX');  % Axial coordinate label
                ylabel(y_string,...
                    'FontAngle','italic','rot',90,'interpreter','LaTeX'); % Transverse coordinate label
                fontsize(f,16,"points");
                fontname(f,"Times New Roman");

                % Export rendered frame as PNG (high quality, -m4 = 4x magnification)
                temp_png = fullfile(save_folder,'Videos',strcat(filename(1:end-4),sprintf('_test%02d.png',j)));
                export_fig(temp_png,'-m4');  % -m4: 4x upsampling for crisp text/lines

            end

            %% ===================== VIDEO ENCODING VIA FFMPEG =====================
            % Encode PNG sequence to H.264 MP4 via ffmpeg system call
            % Platform-specific: Windows uses default ffmpeg in PATH; Linux loads via module
            % NOTE: ffmpeg must be installed/available in PATH
            % Windows setup: in Powershell with admin, run "winget install ffmpeg", add bin/ to PATH
            % Linux (MASSIVE): in terminal run "module load ffmpeg/4.3.1 if it isn't automatically loaded
            % Start or restart MATLAB after the above installation
            
            if ispc
                % Windows: ffmpeg in standard PATH;
                % H.264 codec settings: high profile, level 4.0 (HD-capable)
                % Bitrate: 16 Mbps (high quality), yuv420p for compatibility
                command = strcat("ffmpeg -y -framerate ", num2str(video_fps)," -i ",...
                    fullfile(save_folder,'Videos',strcat(filename(1:end-4),'_test%02d.png')), ... 
                    ' -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2" -c:v libx264 -profile:v high -level:v 4 -pix_fmt yuv420p -b:v 16000k -codec:a'," aac ", vid_file);
            else
                % Linux (MASSIVE): module load ffmpeg, then same ffmpeg command
                % Module load ensures ffmpeg is in PATH before invocation
                command = strcat("module load ffmpeg/4.3.1; ffmpeg -y -framerate ", num2str(video_fps),...
                    " -i ",fullfile(save_folder,'Videos',strcat(filename(1:end-4),'_test%02d.png')), ... 
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
                temp_png = fullfile(save_folder,'Videos',strcat(filename(1:end-4),sprintf('_test%02d.png',j)));
                delete(temp_png)  % Delete individual PNG frame after encoding
            end
        end
    end
end



