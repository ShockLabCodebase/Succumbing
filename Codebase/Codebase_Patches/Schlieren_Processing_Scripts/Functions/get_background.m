%%% create mean background image for subtraction
%%%
%%% PATCH 2026-10-23:
%%% - No BGs folder, or no BG_* files in it: warns and uses zeros (it errored).
%%% - No condition folder matches the case: warns and uses the loose BG_*
%%%   files if there are any (it silently used the last folder).
%%% - TIFF backgrounds inside a condition folder are read (only loose TIFFs
%%%   were; a TIFF in a folder gave an empty background and a crash later).
%%% - TIFFs are converted with double(), not im2double(...,'indexed'), which
%%%   adds 1 to integer images.
function background = get_background(use_bg, sub, main_folder, bg_sub, x, camera)

    background = [];
    
    bg_folder = fullfile(main_folder,bg_sub);
    if use_bg
        bg_files = dir(fullfile(bg_folder,"*BG*"));
        if isempty(bg_files)
            warning("get_background: no BG_* files in %s. Using a zero background for %s.",bg_folder,sub);
            use_bg = false;
        end
    end

    if use_bg
    
        is_folder = bg_files(1).isdir;
    
        if is_folder
            %%% Get conditions

            for i = 1:length(bg_files)
                conditions = extractAfter(bg_files(i).name,"BG_");
                condition_parts = strsplit(conditions,'_');
                for j = 1:length(condition_parts)
                    condition_str(j) = isempty(str2num(condition_parts{j}));
                end
                if i == 1
                    condition_list = find(condition_str == 1);
                    condition_list_names = {condition_parts{condition_list}};
                end
                for j = 1:length(condition_list)
                    condition = condition_list(j);
                    if j == length(condition_list)
                        values{i,j} = {condition_parts{condition+1:length(condition_parts)}};
                    else
                        values{i,j} = {condition_parts{condition+1:condition_list(j+1)-1}};
                    end
                    if isempty(values{i,j})
                        values{i,j} = condition_parts(condition);
                    end
                end
            end

            %%%get current condition
            for j = 1:length(condition_list_names)
                if j == length(condition_list_names)
                    current_condition{j} = (cell2mat(extractBetween(sub,strcat(condition_list_names{j},"_"),"_")));
                else
                    current_condition{j} = cell2mat(extractBetween(sub,strcat(condition_list_names{j},"_"),strcat("_",condition_list_names{j+1})));
                end
                if isempty(current_condition{j})
                    current_condition{j} = extractAfter(sub,strcat(condition_list_names{j},"_"));
                end
            end

            for i = 1:length(bg_files)
                count = 0;
                for j = 1:size(values,2)
                    bg_value = values{i,j};
                    if length(bg_value) == 1 
                        bg_test = str2num(bg_value{1});
                        
                        if isempty(bg_test) %%% Check if the condition is a specific value
                            if contains(sub,bg_value{1})
                                count = count + 1;
                            end
                        else %%% Check if the condition is just a name that is contained in the filename
                            if bg_test == str2num(current_condition{j})
                                count = count + 1;
                            end
                        end
                    else
                        for k = 1:length(bg_value) %%% Check if the condition is within a range of values (inclusively)
                            bg_test(k) = str2num(bg_value{k});
                        end
                        if str2num(current_condition{j}) >= bg_test(1) && str2num(current_condition{j}) <= bg_test(2)
                            count = count + 1;
                        end
                    end
                end

                if count == size(values,2)
                    break
                end
            end

            if count == size(values,2)
                folder_name = bg_files(i).name;
            else
                loose_files = dir(fullfile(bg_folder,"BG_*.*"));
                loose_files = loose_files(~[loose_files.isdir]);
                if isempty(loose_files)
                    error("get_background: no BG folder in %s matches %s, and there are no loose BG_* files.",bg_folder,sub);
                end
                warning("get_background: no BG folder in %s matches %s. Using the loose BG_* files.",bg_folder,sub);
                folder_name = "";
            end

        else
            folder_name = "";
        end
        

        if folder_name ~= ""
            bg_files = dir(fullfile(bg_folder,folder_name,"*.*")); % file names inside condition folders don't matter
        else
            bg_files = dir(fullfile(bg_folder,"*BG*"));
        end
        bg_files = bg_files(~[bg_files.isdir]);

        %file_ext = extractAfter(bg_files(1).name,".");
        file_ext = extractAfter(bg_files(1).name,'.');
        if strcmpi(file_ext,'slow')
            bg_data = Read_slow(fullfile(main_folder,bg_sub,folder_name,strcat(bg_files(1).name)),0);
            bg_mean = single(mean(bg_data,3));
            background = flip(bg_mean,2);
        else
            bg_files = bg_files(contains({bg_files.name},[".tif",".tiff"],'IgnoreCase',true));
            for i = 1:length(bg_files)
                if i == 1
                    bg_sum = imread(fullfile(main_folder,bg_sub,folder_name,bg_files(i).name));
                    bg_sum = fliplr(double(bg_sum));
                else
                    bg_temp = imread(fullfile(main_folder,bg_sub,folder_name,bg_files(i).name));
                    bg_temp = fliplr(double(bg_temp));

                    bg_sum = bg_sum + bg_temp;
                end
            end
            background = bg_sum./length(bg_files);
        end

    else
        background = zeros(size(x));
    end

    if size(background,3) == 3
        background = 0.2989.* background(:,:,1) + 0.5870.* background(:,:,2) + 0.1140.* background(:,:,3);
    end

    if camera == "Pharsighted"
        background = flip(background,2);
    end
    
    background = cast(background,'int16');
    
end
