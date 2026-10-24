% POD_Analysis_Symmetry_Imposed.m
% =====================================================================
% Computes Proper Orthogonal Decomposition (POD) on snapshot data from
% *Fields.mat files, using symmetry imposition. POD extracts most energetic spatial modes via snapshot
% method, enabling time-averaged analysis of dominant coherent structures.
% Optionally restricts analysis to axial region of interest (ROI).
%
% WORKFLOW:
%   1. Load snapshot data from *Fields.mat files
%   2. Optionally extract axial ROI
%   3. Split fields into their symmetries
%   4. Compute POD for each symmetry via snapshot method (spatial mode + temporal coefficient)
%   5. Save POD modes, eigenvalues, and coefficients to MAT file for each symmetry
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
sCMRmap = CMRmap;
cmap = pogmap;

% =====================================================================
% ENVIRONMENT CONFIGURATION
% =====================================================================
% Detect execution environment: 1 if HPC (Linux), 0 if Windows PC
using_MASSIVE = 1-ispc;
using_Market = false; % if the _Fields.mat files are on Market

% =====================================================================
% DIRECTORY CONFIGURATION
% =====================================================================
% Folder hierarchy: Top_folder / parent_folder / main_folder / Data

Top_folders =  "/Soudeh/Misc/"  %% For Massive, this is the path after LTRAC-Jet-Noise/
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren" %% For Massive, this is the path to your local scratch folder

% Wildcard patterns to select specific cases
parent_folder_str = "*Axisymmetric*"; %%% string to isolate specific parent folder/s
main_folder_str = "*sD_225*"; %%% string to isolate specific main folder/s

% Retrieve paths matching criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

% =====================================================================
% POD ANALYSIS PARAMETERS
% =====================================================================
% Control snapshot count and optional axial region restriction

n_snapshots_set = 0;

symmetry_regions = 2;

%Set axial region of interest limits
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
    
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % Loop through each parent folder, then each subfolder (Various NPRs),
    for k = 1:length(main_folders)
        main_folder = fullfile(main_folders(k).folder,main_folders(k).name,'Data');
        save_folder = fullfile(save_folder_upper,main_folders(k).name,'POD_Results','Symmetry_Imposed','Data');
       
        mkdir(save_folder);
    
        if contains(main_folder,'Minor')
            flow_axis = 'Minor';
        elseif contains(main_folder,'Major')
            flow_axis = 'Major';
        elseif contains(main_folder,'Angled')
            flow_axis = 'Angled';
        else
            flow_axis = 'Minor';
        end
    
        suffix='*Fields*.mat'; %% Can modify to look at half fields by changing to '*Half*Fields*.mat'
        direc = dir(strcat(main_folder,filesep,suffix)); 
        filenames={};
        [filenames{1:length(direc),1}] = deal(direc.name);

        for iii = 1:length(filenames)
            condition = filenames{iii}(1:end-11); %% removes "_Fields.mat"
            
            load_file = fullfile(main_folder, filenames{iii});
            file = matfile(load_file);
            
            im_size = size(file,'im_data');
            if n_snapshots_set == 0
                n_snapshots = im_size(3);
            else
                n_snapshots = min([n_snapshots_set,im_size(3)]);
            end
            
            im_data = file.im_data(:,:,1:n_snapshots);
            im_data = cast(im_data,'single');
            x = file.x;
            y = file.y;
            % PATCH 2026-10-23: x_full/y_full are kept; simple_POD_func gets the
            % grid of the half domain (it got the full grid with half-domain
            % data, so any ROI picked the wrong rows), its x/y outputs no
            % longer overwrite the grid used by the next symmetry pass, and the
            % saved x/y are the rows that undo_symmetry returns.
            x_full = x;
            y_full = y;

            %%% correct the roi limits
            if ROI > 0
                if sum(x_roi ~= 0) > 0
                    ind_x1 = find(abs(x(1,:)-x_roi(1)) == min(abs(x(1,:)-x_roi(1))),1);
                    ind_x2 = find(abs(x(1,:)-x_roi(2)) == min(abs(x(1,:)-x_roi(2))),1);
                else
                    ind_x1 = 1;
                    ind_x2 = size(x,2);
                end
                if sum(y_roi(1,:) ~= 0) > 0
                    ind_y1 = find(abs(y(:,1)-y_roi(1,1)) == min(abs(y(:,1)-y_roi(1,1))),1);
                    ind_y2 = find(abs(y(:,1)-y_roi(1,2)) == min(abs(y(:,1)-y_roi(1,2))),1);
                else
                    ind_y1 = 1;
                    ind_y2 = size(y,1);
                end
                x_roi(1) = x(1,ind_x1);
                x_roi(2) = x(1,ind_x2);
                y_roi(1) = y(ind_y1,1);
                y_roi(2) = y(ind_y2,1);
            end
    
            for sym = 1:symmetry_regions
    
                if symmetry_regions == 2
                    dy     = y_full(2,1) - y_full(1,1);
                    c_h    = round(2*(1 - y_full(1,1)/dy))/2;          % axis row, snapped to whole/half row
                    y_zero = floor(c_h);
                    y_odd  = double(c_h == y_zero);               % 1 if the axis is on a row
                    y_size = min(y_zero, size(y_full,1) - ceil(c_h) + 1);
                    y_pos  = y_zero+1-y_odd:y_zero+y_size-y_odd;   % rows of the half domain (get_symmetry output)
                    y_rows = y_zero-y_size+1:y_zero+y_size-y_odd;  % rows undo_symmetry returns
    
                    if sym == 1
                        sym_type = "symmetric_"; 
                    elseif sym == 2
                        sym_type = "antisymmetric_";
                     end
    
                    im_data_sym = get_symmetry(im_data,sym_type,[],y_zero,y_size,y_odd,[],[],[]);
    
                else
                    error('4 symmetry regions are not implemented for schlieren')
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
                [POD_modes_sym, a_n, Energy, phi, Mode, x_pod, y_pod] = simple_POD_func(im_data_sym, ROI, x_roi, y_roi, x_full(y_pos,:), y_full(y_pos,:));

                if ROI == 2 && abs(y_pod(1,1) - y_full(y_pos(1),1)) > 1e-9
                    % ROI doesn't start at the axis: mirroring it isn't meaningful
                    warning('ROI = 2 does not start at the axis; saving the half-domain modes without undo_symmetry.');
                    POD_modes = POD_modes_sym;
                    x = x_pod;
                    y = y_pod;
                else
                    POD_modes = squeeze(undo_symmetry(POD_modes_sym,sym_type,[],y_odd,[]));
                    if ROI == 2
                        x = [flip(x_pod(1+y_odd:end,:),1); x_pod];
                        y = [-flip(y_pod(1+y_odd:end,:),1); y_pod];
                    else
                        x = x_full(y_rows,:);
                        y = y_full(y_rows,:);
                    end
                end

                fprintf('Saving\n')
                
                %%Save spatial modes and mode coefficients
                if ROI > 0
                    save_file = fullfile(save_folder, strcat('Symmetry_Imposed_',sym_type,condition,sprintf('_ROI_x_%1.0f_%1.0f_y_%1.0f_%1.0f',x_roi(1),x_roi(2),y_roi(1),y_roi(2)),'_POD_Modes.mat'));
                else
                    save_file = fullfile(save_folder, strcat('Symmetry_Imposed_',sym_type,condition,'_POD_Modes.mat'));
                end
            
                save(save_file,'Mode','Energy','POD_modes','phi','a_n','x','y','sym_type','-v7.3','-nocompression');
                fprintf('Saved Total\n');
                clearvars U_n
            end
        end
    end
end