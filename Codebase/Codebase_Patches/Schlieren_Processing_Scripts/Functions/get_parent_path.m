%%% Get path to Market or Vault

function [parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market)
    parent_folders = dir(pwd); parent_folders = parent_folders([]);  % PATCH 2026-10-23: defined (empty dir struct) when nothing matches
    save_folders = parent_folders;
    if using_MASSIVE && using_Market
    
        command = 'mount |grep gvfs';
        system(command);
        mounted_loc = dir('/tmp/*/gvfs/*jet-noise');
        folder_loc = [mounted_loc.folder,'/',mounted_loc.name];
       
        Top_folders = strcat(folder_loc,Top_folders);
        count = 0;
        for i = 1:length(parent_folder_str)
            parent_temp = match_folders(Top_folders,parent_folder_str(i));  % PATCH 2026-10-23: exact names matched the folder contents
            for j = 1:length(parent_temp)
                count = count + 1;
                parent_folders(count) = parent_temp(j);
                save_folders(count) = parent_temp(j);
                save_folders(count).folder = save_folder_outer;
            end
        end
    
    else

        if Top_folders ~= save_folder_outer
            fprintf("NOTE: Save folder different to Top Folder\n");
        end
        save_folders = parent_folders([]);
        count = 0;
        for i = 1:length(parent_folder_str)
            parent_temp = match_folders(Top_folders,parent_folder_str(i));  % PATCH 2026-10-23: exact names matched the folder contents
            for j = 1:length(parent_temp)
                count = count + 1;
                parent_folders(count) = parent_temp(j);
                save_folders(count) = parent_folders(count);
                save_folders(count).folder = save_folder_outer;
            end
        end
    
    end

end