%================================================================================
% PURPOSE:
%   Load raw schlieren image data from Photron camera (MRAW format) or Pharsighted camera (.SLOW) and
%   save as  MAT files with computed spatial coordinate grids.
%
% HIGH-LEVEL WORKFLOW:
%   1. Locate raw camera image data in folder hierarchy (Raw_Files/*/）
%   2. Use spatial or background image to estimate x_0 and y_0, and determine spatial resolution
%   3. Load image stack from SLOW or MRAW files (N snapshots)
%   4. Optionally apply background subtraction or flat-field correction
%   5. Auto-correct for camera misalignment (position and rotation)
%   6. Construct spatial coordinate grids (x, y) from calibration parameters
%   7. Save as *_Fields.mat with standardized variables: im_data(y,x,t), im_mean, x, y, fps, D
%
% OUTPUT:
%   - *Fields.mat files in save_folder/Data/ with variables:
%     * im_data: [n_y, n_x, n_snapshots] image stack (int16)
%     * im_mean: [n_y, n_x] temporal mean field (single precision)
%     * x, y: [n_y, n_x] spatial coordinate grids in D (from the nozzle centre)
%     * rotation_angle, align_info: what align_fields applied
%     * D: scalar, nozzle diameter [mm]
%     * fps: scalar, frame rate [Hz]
%     * background: [n_y, n_x] background image (for reference)
%     * NPR or M: operating condition parameter (if applicable)
%
%
% PATCH 2026-10-23 (Codebase_Patches):
%   - NPR/Mach is detected per case (was from the last folder entry only) and
%     accepts _NPR_, _Mj_, _M_ and _Ma_; a case with none of them errors.
%   - .slow cases: the extension is dropped from the case name, so the NPR
%     token can end the filename (NPR_36.slow gave str2num('36.slow')) and
%     the output is <case>_Fields.mat, not <case>.slow_Fields.mat.
%   - The D-in-metres check runs before get_specs, which uses D for x and y.
%   - Flat-field correction divided int16 by int16 (integer division, so
%     the result was 0, 1 or 2). It now divides in single precision and
%     rescales by the mean background, keeping the count scale.
%   - rotation_angle (0 when align_fields isn't run) and align_info are saved.
%   - y_0: with auto_position = "none" or "axial", align_fields now keeps
%     y_0 as the axis (it was replaced by the frame centre).
%================================================================================

%%% Loads schlieren data from Photron or Pharsighted camera into individual .mat files. 
% Constructs the x, y mesh from set x_0, y_0, D, mm_per_pixel values. Uses
% the header information (or .cihx for Photron) to determine image parameters
clear all
close all

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

%% ======================== ENVIRONMENT CONFIGURATION ========================
% Detect execution environment and data storage location
% Adjust file I/O paths and compression strategy accordingly
using_MASSIVE = 1-ispc; % using_MASSIVE: boolean, true if Linux HPC, false if Windows PC
using_Market = false;   % using_Market: boolean, true if raw data on mounted network drive
move_files_to_market = false; % Auto-transfer saved MAT files to network post-processing location
                              % NOTE: MATLAB corrupts files if saved directly to mounted network drives;
                              % use this flag to move files after successful local save. 
                              % Ensure files transferred correctly

%% ======================== DIRECTORY CONFIGURATION ========================
% Specify folder hierarchy for raw data discovery and output staging
% Hierarchy: Top_folder / parent_folder / main_folder / Raw_Files / *_*_* (conditions(NPRs) as subfolders/files)
% Raw_Files contain data files by themselves (Pharsighted .slow) or in named folders each containing a .cihx and .mraw(Photron)

%%%% Example %%%%
%Top_folders = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren/"
%-parent_folder = "Axisymmetric_Nozzles" (parent_folder_str = "*Axisymm*")
%--main_folder = "Subsonic_Flow" (main_folder_str = "*Sub*)
%---Raw_Files contains each NPR or Mj for that case, either as .slow files or folders containing .mraw files
%%%%%%%%%%%%%%%%%

Top_folders = "Q:\High_Speed_Schlieren\"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                                      % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "Q:\High_Speed_Schlieren\"; % Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = ["*Test*"];      % parent_folder_str: regex pattern (select by jet type/axis)   %%% Must be string ""
main_folder_str = ["*Testing_C*"];         % main_folder_str: regex pattern (select by nozzle config)  %%% Must be string ""

% Retrieve all parent and corresponding save folder paths matching criteria
[parent_folders, save_folders] = get_parent_path(Top_folders, parent_folder_str, ...
    save_folder_outer, using_MASSIVE, using_Market);

%% ======================== IMAGE PREPROCESSING OPTIONS ========================
% Background image handling for noise/drift compensation
% Background can be stored openly in the "BGs" folder as "BG_*.slow" or "BG_*.tiff" files
% If you have specific backgrounds for specific cases, place the background
% file/s into folders named with the condition with "BG_" at the start
% eg. "BG_hD_30" for a specific value, "BG_NPR_20_30" for a range (inclusive), or just "BG_shadow" to check a condition 
% Ensure that the raw_file name of the actual data contains the condition and value, ie "hD_30" or "NPR_25". 
% Within these specific folders, the file names do not matter.
bg_sub = "BGs";        % bg_sub: string, name of background image subfolder located at same level as Raw_Files
use_bg = false;        % use_bg: boolean, true = subtract background from each snapshot
flat_field = false;    % flat_field: boolean, true = divide by background (flat-field correction)
                       % Rationale: Subtraction corrects additive noise; division corrects multiplicative vignetting

%% ======================== AUTOMATIC POSITION/ALIGNMENT CORRECTION ========================
% Use mean field to detect and correct slight camera misalignments with
% approximate x_0, y_0 set based on background image
% Only shifts/trims spatial domain; does not rescale resolution
% If data intentionally offset or a non-standard geometry, set auto_position="none" and manually define x_0, y_0

auto_position = "none"; % auto_position: "both"/"axial"/"transverse"/"none"
                        % Determines which axes to auto-correct via mean field analysis
do_rotation = true;     % do_rotation: boolean, auto-correct small rotation angles (< 4 deg) by matching the mean field to its mirror image
axial_method = "centreline"; % axial_method (auto_position "axial"/"both"): how x = 0 is found
                        %   "centreline": first rise of the mean along the axis (original; needs a background, and finds
                        %                 the tip of any body on the axis, e.g. an aerospike)
                        %   "lip": nozzle body from the mean and temporal std, x = 0 at the lips (no background needed)
camera_rotated = false;  % camera_rotated: boolean, true if physical camera orientation was swapped (x/y flipped)

%% ======================== SPATIAL CALIBRATION PARAMETERS ========================
% Pixel-to-physical space coordinate transformation
% Determine via ImageJ/equivalent on reference image (ruler, known nozzle geometry, etc.)
% These values must be set for each camera/magnification combination

x_0 = 600;              % x_0: scalar, origin x-coordinate in pixel space (nozzle center)    
y_0 = 320;              % y_0: scalar, origin y-coordinate in pixel space (nozzle center). Kept as the axis
                        %      unless auto_position is "transverse" or "both"; must lie inside the frame
D = 12.1;               % D: scalar, nozzle diameter [mm]
mm_per_pixel = 0.25;    % mm_per_pixel: scalar, spatial resolution [mm/pixel]
                        % NOTE: Adjust in loop if magnification varies:
                        % if k==2; mm_per_pixel=new_val; end
n_snapshots_set = 0;  % n_snapshots_set: number of samples to save. Set to 0 to save all

%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over parent folders (flow axis types) → main folders (nozzle configs)
% For each: locate operating condition subfolders (main_folders), then process image stacks

for m = 1:length(parent_folders)
    % Construct paths to parent folder
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

        %% ===================== OPERATING-CONDITION DISCOVERY =====================
        % Discover operating-condition subfolders placed under Raw_Files/
        % Expected structure: Raw_Files/*_NPR_*  or Raw_Files/*_Mj_*
        % Using the folder naming convention we detect whether the dataset
        % uses NPR (pressure ratio) or Mach number labels. These will be
        % the filenames for .slow files and the folder names for Photron files
        case_list = dir(fullfile(main_folder, 'Raw_Files', '*_*'));
        case_list = case_list(~ismember({case_list.name},{'.','..'}));
        if isempty(case_list)
            warning("No cases found in %s", fullfile(main_folder, 'Raw_Files'));
            continue
        end

        % Ensure output directory structure exists for this main folder
        mkdir(fullfile(save_folder, "Data"))
        mkdir(fullfile(save_folder, 'Figures','Statistics'));

        %% ===================== PER-CONDITION PROCESSING LOOP =====================
        % Iterate over each operating-condition folder and convert raw images
        for i = 1:length(case_list)

            filename = case_list(i).name;            % raw file (.slow) or folder (Photron) name
            [~, case_name, case_ext] = fileparts(filename);
            if ~strcmpi(case_ext, '.slow')
                case_name = filename;                % Photron folder names may contain dots
            end

            % NPR or Mach, from this case's name
            if contains(case_name, '_NPR_')
                using_npr = true;  % Dataset indexed by NPR
            elseif ~isempty(regexp(case_name, '_(Mj|M|Ma)_\d', 'once'))
                using_npr = false; % Dataset indexed by Mach
            else
                error("Case %s has no _NPR_ or _Mj_/_M_/_Ma_ token in its name.", filename);
            end

            save_file = fullfile(save_folder, "Data", [case_name, '_Fields.mat']);

            % Skip already-processed cases to save time
            % if exist(save_file, 'file') == 2
            %     disp(['Skipping ',sub, ', as processed file already exists'])
            %     continue
            % end

            %% Parse metadata from folder name
            % Determine viewing angle (Major/Minor/Angled) used for this run
            if contains(filename, 'Major')
                viewing_angle = 'Major';
            elseif contains(filename, 'Minor')
                viewing_angle = 'Minor';
            elseif contains(filename, 'Angled')
                viewing_angle = 'Angled';
            else
                viewing_angle = ''; % Unknown/unlabelled
            end

            % Extract nozzle centre separation for canted/twin configurations
            if contains(filename, 'Major') && (contains(filename, 'Canted') || contains(filename, 'Twin'))
                nozzle_centre = cell2mat(extractBetween(filename, '_sD_', '_'));
                nozzle_centre = str2num(nozzle_centre) / (10^(length(nozzle_centre) - 1)) / 2;
            else
                nozzle_centre = 0;
            end

            % Check that the given nozzle diameter is in mm (before it is used for x and y)
            mag_order = floor(log(abs(D))./log(10));
            if mag_order < 0
                D = D*1e3;
                disp('Diameter appeared to be in metres, changed to mm.')
            end

            %% Load camera parameters from .cihx metadata (Photron) or .slow (Pharsighted)
            % get_specs returns frame rate `fps`, pixel grids `x,y`, and
            % the number of available snapshots `N`. This avoids hardcoding.
            % Also returns the camera used (Photron or Pharsighted) for
            % later file reading
            [fps, x, y, n_snapshots, camera] = get_specs(main_folder, filename, n_snapshots_set, mm_per_pixel, D, x_0, y_0);

            %% Parse operating-point parameters from filenames
            % extracts operating parameter (NPR or Mach) plus factor (*_length) for
            % naming conventions (rather than decimals in filenames).

            if using_npr
                NPR = regexp(case_name,'_NPR_(\d+)','tokens','once');
                NPR = NPR{1};
                NPR_length = length(NPR);
                NPR = str2double(NPR);

                fprintf("Current NPR is: %i\n",NPR);
                current_cond = (NPR/(10^(NPR_length-1)));
            else
                M = regexp(case_name,'_(?:Mj|M|Ma)_(\d+)','tokens','once');
                M = M{1};
                M_length = length(M);
                M = str2double(M);

                fprintf("Current Mach is: %i\n",M);
                current_cond = (M/(10^(M_length-1)));
            end

            %% Background image selection
            % Background can be a computed mean created from files stored in "BGs"
            % or generated as zeros if use_bg=false. Background is used for
            % subtraction or division (flat-field) later.

            background = get_background(use_bg, case_name, main_folder, bg_sub, x, camera);

            disp('Loading Images')

            %% Locate raw image files: prefer TIFF, fallback to MRAW
            % TIFF stacks are easier to read; MRAW is Photron's proprietary
            % single-file format. Reading MRAW is usually slower and uses a
            % different reader function.
            if camera == "Photron"
                filenames = dir(fullfile(main_folder, 'Raw_Files', filename, '*.mraw'));
            elseif camera == "Pharsighted"
                filenames = dir(fullfile(main_folder, 'Raw_Files', [filename]));
            end

            % Read the image stack using the appropriate reader.
            % `Read_slow` and `Read_mraw` are helper functions in `Misc/`.
            % Tiffs are no longer supported

            if camera == "Photron"
                im_data = Read_mraw(fullfile(filenames.folder, filenames.name), n_snapshots); % [n_y,n_x,N]
            elseif camera == "Pharsighted"
                im_data = Read_slow(fullfile(filenames.folder, filenames.name), n_snapshots); % [n_y,n_x,N]
            end

            % -------------------- IMAGE ORIENTATION & ALIGNMENT --------------------
            % Many datasets were captured with different camera orientations or
            % small mechanical offsets. The following block handles two tasks:
            % 1) `camera_rotated`: corrects images where x/y axes were swapped
            %    at acquisition (flip + transpose). Also updates the spatial
            %    coordinate grids `x` and `y` to match the rotated images.
            % 2) `auto_position`: uses the mean field to compute small shifts
            %    and a small rotation (via `align_fields`) to align the nozzle
            %    centre across datasets. This keeps all saved `x,y` grids
            %    consistent.
            if camera_rotated
                % Swap axes and mirror to restore canonical orientation
                im_data = flip(permute(im_data, [2,1,3]), 2); % [y,x,t] corrected
                background = flip(permute(background, [2,1]), 2);

                % Swap coordinate grids to match permuted image axes
                y_flip = permute(x, [2,1]);
                x = permute(y, [2,1]);
                y = y_flip;

                %%% May need to unflip the data in the x-axis
                % x = flip(x,2);
                % y = flip(y,2);
                % im_data = flip(im_data,2);
                % background = flip(background,2);
            end

            % Compute mean image (used for alignment and diagnostics)
            im_mean = mean(im_data, 3);

            % Align via mean-field correlation if requested
            rotation_angle = 0;
            align_info = struct();
            if auto_position ~= "none" || do_rotation
                % align_fields returns updated x,y, the applied rotation angle,
                % the corrected mean field, the shifted image stack, and
                % (optionally) the corrected background. align_fields uses
                % cross-correlation and small-angle rotation correction.
                [x, y, rotation_angle, im_mean, im_data, background, align_info] = align_fields(...
                    x, y, im_mean, im_data, background, do_rotation, auto_position, nozzle_centre, false, axial_method);

            end

            % Apply background correction: subtraction (default) or division
            % This is usually best after the align_fields, but for high NPR
            % conditions it can be better to background subtract first.
            if ~flat_field
                % Subtractive background correction: im' = im - background
                im_data = bsxfun(@minus, im_data, background);
                im_mean = im_mean - cast(background, 'single');
            else
                % Flat-field correction: divide by background image (avoid zeros).
                % Done in single and rescaled by the mean background so the
                % result keeps the count scale and still fits in int16.
                bg_flat = single(background);
                bg_flat(bg_flat < 1.0) = 1.0;
                bg_scale = mean(bg_flat(:));
                for t = 1:size(im_data,3)
                    im_data(:,:,t) = cast(single(im_data(:,:,t))./bg_flat.*bg_scale, 'like', im_data);
                end
                im_mean = single(im_mean) ./ bg_flat .* bg_scale;
            end

            disp('Now Saving');
            % -------------------- SAVE PREPROCESSED FIELDS --------------------
            % Save the preprocessed image stack and metadata to standardized
            % *Fields.mat files used throughout the analysis pipeline.
            % Use -v7.3 to support large arrays and -nocompression for faster I/O.
            if using_npr
                % Include NPR parameter when available
                save(save_file, 'im_data', 'im_mean', 'x', 'y', 'D', 'background', 'fps', 'NPR', 'camera', ...
                    'rotation_angle', 'align_info', '-v7.3', '-nocompression');
            else
                % Include Mach number when NPR not used
                save(save_file, 'im_data', 'im_mean', 'x', 'y', 'D', 'background', 'fps', 'M', 'camera', ...
                    'rotation_angle', 'align_info', '-v7.3', '-nocompression');
            end

            % Optionally move saved MAT files to a shared network location
            % (useful when running on HPC where storage space is shared and limited)
            if using_Market && using_MASSIVE && move_files_to_market
                save_folder_outer_alternate = fullfile(main_folder, 'Data');
                mkdir(save_folder_outer_alternate)

                target_file = fullfile(save_folder_outer_alternate, [case_name, '_Fields.mat']);


                if using_MASSIVE
                    cmd = ['mv ' save_file ' ' target_file];
                    system(cmd);
                else
                    cmd = ['move ' save_file ' ' target_file];
                    system(cmd);
                end 

                % [status,msg] = copyfile(save_file, target_file,"f");
                % if status
                %     delete(save_file);
                % else
                %     fprintf("Failed to transfer file to Market: %s\n",sub);
                % end

            end

            % -------------------- DIAGNOSTIC FIGURE: MEAN FIELD --------------------
            % Save a quick diagnostic of the mean field for QA: shows spatial
            % coverage, alignment, and background removal success.
            File = sprintf('_Mean_Field');
            f_outmode = fullfile(save_folder, 'Figures/Statistics', [case_name, File, '.png']);
            f_outmode2 = fullfile(save_folder, 'Figures/Statistics', [case_name, File, '.fig']);

            figure(2)
            set(gcf, 'Color', [1 1 1], 'Visible', 'On');
            pcolor(x(:, 1:end), y(:, 1:end), im_mean)
            shading interp
            axis tight
            axis equal
            set(gca, 'layer', 'top')
            xlim([min(x(1, :)) max(x(1, :))])
            ylim([min(y(:, 1)) max(y(:, 1))])
            colormap(gray)
%             clim([0,20]) % Optional color limits for consistency across cases
            xlabel('$x/D_e$', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 0, 'interpreter', 'LaTeX');
            ylabel('$y/D_e$', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 90, 'interpreter', 'LaTeX');
            export_fig(f_outmode, '-m5');
            savefig(f_outmode2);

            % Free large variables to reduce memory footprint for next iteration
            clearvars im_data
    
        end
    end
end
