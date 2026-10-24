function [x,y,data_mean,spod_mode,M_j] = load_mean_field_wavenumber(case_name,SPOD_dir,sym_type,spod_mode,using_npr,current_val,factor)

    %Load in mean data
    snapshot_dir = fullfile(extractBefore(SPOD_dir,'SPOD'),'Data');
    mean_dir = fullfile(extractBefore(SPOD_dir,'SPOD'),'Data');
    flow_condition = extractAfter(extractBefore(case_name,'_Nt'),sym_type);
    
    % PATCH 2026-10-23: prefer the exact <condition>_Fields.mat; '<condition>*'
    % can match several files (e.g. _Half_1/_Half_2 or reconstructions), which
    % made filename_mean.name a list and errored.
    filename_mean = dir(fullfile(mean_dir,strcat(flow_condition,'_Fields.mat')));
    if isempty(filename_mean)
        filename_mean = dir(fullfile(mean_dir,strcat(flow_condition,'*')));
    end
    if isempty(filename_mean)
        error('load_mean_field_wavenumber: no Fields file for %s in %s', flow_condition, mean_dir);
    end

    filename_mean = filename_mean(1).name;
    full_filename = fullfile(mean_dir,filename_mean);

    mean_file = matfile(full_filename);
    data_mean = mean_file.im_mean;
    x = mean_file.x;
    y = mean_file.y;

    if contains(case_name,"Canted") && contains(case_name,"Major")
        %%% rotate fields to align with cant angle
        data_mean_half = data_mean(round(size(data_mean,1)/2)+1:end,:);
        spod_mode = spod_mode(round(size(data_mean,1)/2)+1:end,:);
        x = x(round(size(data_mean,1)/2)+1:end,:);
        y = y(round(size(data_mean,1)/2)+1:end,:);
        ref_val = data_mean(1,1);
        rot_angle = str2num(cell2mat(extractBetween(case_name,'Deg_','_')));
        if isempty(rot_angle)
            rot_angle = str2num(cell2mat(extractBetween(case_name,'Canted_','_Deg')));
        end
        data_mean_rotated = imrotate(data_mean_half,-rot_angle,'bilinear','loose');
        spod_mode = imrotate(spod_mode,-rot_angle,'bilinear','loose');

        data_mean_rotated(data_mean_rotated == 0) = ref_val;

        [transverse_peaks_vals,transverse_peaks] = max(data_mean_rotated);
        transverse_peaks(transverse_peaks == 1) = [];
        centre_ind = mode(transverse_peaks);
        
        if centre_ind > size(data_mean_rotated,1)/2
            max_y = (size(data_mean_rotated,1) - centre_ind);
            y1 = (linspace(1,2*max_y+1,2*max_y+1)-(max_y+1))*(y(2,1)-y(1,1));
            data_mean_rotated = data_mean_rotated(centre_ind - max_y:end,:);
            spod_mode = spod_mode(centre_ind - max_y:end,1:size(x,2),:);
        elseif centre_ind < size(data_mean_rotated,1)/2
            max_y = 2*(centre_ind)-1;
            y1 = (linspace(1,max_y,max_y)-centre_ind)*(y(2,1)-y(1,1));
            data_mean_rotated = data_mean_rotated(1:max_y,:);
            spod_mode = spod_mode(1:max_y,1:size(x,2),:);
        else
            max_y = 2*(centre_ind)-1;
            y1 = (linspace(1,max_y,max_y)-centre_ind)*(y(2,1)-y(1,1));
            data_mean_rotated = data_mean_rotated(1:max_y,:);
            spod_mode = spod_mode(1:max_y,1:size(x,2),:);
        end
        [x,y] = meshgrid(x(1,1:end)',y1);

        data_mean = data_mean_rotated(:,1:size(x,2));

    end



    T0 = 293; %K
    gamma = 1.4;
    R = 287; % Gas Constant
    if using_npr
        M_j = (2/(gamma-1)*((current_val/(10^(factor-1)))^((gamma-1)/gamma)-1))^(1/2); % Ideally expanded jet mach

        T = (1+(gamma-1)/2*M_j^2)^-1*T0; % Temperature at exit
        a = (gamma*R*T)^(1/2); % Speed of sound
        a_inf = sqrt(T0*gamma*R);
        u_j = M_j*a; % Ideally expanded jet velocity
    else
        M_j = current_val/(10^(factor-1));
    end

end