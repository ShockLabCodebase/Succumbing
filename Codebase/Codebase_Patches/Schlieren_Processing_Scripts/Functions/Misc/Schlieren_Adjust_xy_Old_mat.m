%%% Shift x, y position based on correlation method. Can also rotate data
%%% if needed. This can be used on older *_Fields.mat files to correct
%%% errors in the original settings.

%%% This will overwrite the old file, so be aware

clear; close;

n_snapshots = 50000;
fps_1 = 150000;
D_eff_1 = 8.676; %mm

do_rotation = true;
auto_position = "both"; % "both" for x and y, "axial" for x only, "transverse" for y only,"none" for manual
%%% Note that auto position only shifts x and y and trims edges. Spatial
%%% resolution still need to be set.

parent_folders = ["O:\High_Speed_Schlieren\ONR_Rectangular_Metal_vs_Resin\Major\Single_Metal_A\";
                  "O:\High_Speed_Schlieren\ONR_Rectangular_Metal_vs_Resin\Minor\Single_Metal_A\"];

for m = 1:length(parent_folders)

    parent_folder = parent_folders(m);
    snapshot_dir = fullfile(parent_folder,'Data');
    suffix = '*Fields.mat';
    case_list = dir(fullfile(snapshot_dir,suffix));

    case_list = extractfield(case_list, 'name'); 

    for ii = 1:length(case_list)
        clearvars im_data L P f 
        %Load in files (mat format) only taking the number of snapshots
        %required
        filename = case_list{ii};
        full_filename = fullfile(snapshot_dir,filename);
        load(full_filename)

        var_info = who('-file',full_filename);
        if ismember('fps',var_info)
            fps = file.fps;
        else
            fps = fps_1;
        end
        if ismember('D',var_info)
            D = file.D;
        else
            D = D_eff_1;
        end

        background = 0;
        NPR = cell2mat(extractBetween(filename,'NPR_','_'));
        NPR = str2num(NPR)/10^(length(NPR)-1);
        
        % PATCH 2026-10-23: current align_fields signature (background and nozzle_centre
        % inputs); the old call put auto_position into do_rotation and errored
        [x,y,rotation_angle,im_mean,im_data,background] = align_fields(x,y,im_mean,im_data,zeros(size(im_mean),'int16'),do_rotation,auto_position,0);

        save(full_filename,'im_data','im_mean','x','y','D','background','fps','NPR','-v7.3','-nocompression');
    end
end