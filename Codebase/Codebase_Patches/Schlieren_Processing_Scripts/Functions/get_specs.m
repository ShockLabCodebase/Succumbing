function [fps, x, y, N, camera] = get_specs(main_folder, file_or_folder_name, N_set, mm_per_pixel, D, x_0, y_0)

    file_or_folder_name = fullfile(main_folder,'Raw_Files',file_or_folder_name);
    files = dir(file_or_folder_name);
    if isempty(files)
        files = dir([file_or_folder_name,'*']);
    end
    files = {files.name};

    if contains(files(end),'.slow')
        camera = "Pharsighted";
    elseif contains(files(end),'.mraw')
        camera = "Photron";
    elseif contains(files(end),'.tiff')
        "Tiffs are now deprecated. Use MRAW or SLOW files. Or get an older version of these scripts I guess..."
        camera = "Photron";
    end

    if camera == "Photron"

        param = dir(fullfile(file_or_folder_name,'*.cihx'));
        f = fopen(fullfile(file_or_folder_name,param.name));
        
        %%% If you are getting an error here, try remounting Market
        C = textscan(f,'%c');
        fclose(f);
        fr = convertCharsToStrings(C{1});
        
        fps = extractBetween(fr,'<recordRate>','</recordRate>');
        fps = str2num(fps(1));
        fps = round(fps/10)*10; %%% camera sometimes is off by 1 fps from set value. Trust the freq generator over the camera timing
        
        x_size = extractBetween(fr,'<width>','</width>');
        x_size = str2num(x_size(1));
        
        y_size = extractBetween(fr,'<height>','</height>');
        y_size = str2num(y_size(1));
        
        x = (linspace(x_size-1,0,x_size)-x_0)*(-1)*mm_per_pixel/D;
        y = (linspace(1,y_size,y_size)-y_0)*mm_per_pixel/D;
        [x,y] = meshgrid(x,y);
        
        N_total = extractBetween(fr,'<totalFrame>','</totalFrame>');
        N_total = str2num(N_total);
        
        if N_set > N_total || N_set == 0
            fprintf('Set sample count to recorded frames: %d\n',N_total);
            N = N_total;
        else
            N = N_set;
        end

    elseif camera == "Pharsighted"
        

        param = dir(fullfile([file_or_folder_name]));
        fid = fopen(fullfile(param.folder,param.name),'r','n','windows-1252');
        %%% If you are getting an error here, try remounting Market
    
        header = textscan(fid,'%s',120,'Delimiter',{'"','":"'});
        header = header{1};
    
        fclose(fid);
           
        pat = digitsPattern;

        framerate_ind = find(contains(header,'fr_rate')) + 1;
        fps = extract(header{framerate_ind(1)}, pat);
        fps = str2num(fps{1});
        fps = round(fps/10)*10; %%% camera sometimes is off by 1 fps from set value. Trust the freq generator over the camera timing
                
        pixels_ind = find(contains(header,'res')) + 1;
        pixels = extract(header{pixels_ind(1)}, pat);
        x_size = str2num(pixels{1});
        y_size = str2num(pixels{2});

        x_0 = x_size - x_0;

        x = (linspace(x_size-1,0,x_size)-x_0)*(-1)*mm_per_pixel/D;
        y = (linspace(1,y_size,y_size)-y_0)*mm_per_pixel/D;
        [x,y] = meshgrid(x,y);
        
        % bit_ind = find(contains(header,'bpp')) + 1;
        % bits = extract(header{bit_ind}, pat);
        % bits = str2num(bits{1});
        
        frames_ind = find(contains(header,'fr_cnt')) + 1;
        frames = extract(header{frames_ind(1)}, pat);
        N_total = str2num(frames{1});
        
        if N_set > N_total || N_set == 0
            fprintf('Set sample count to recorded frames: %d\n',N_total);
            N = N_total;
        else
            N = N_set;
        end

    end
end