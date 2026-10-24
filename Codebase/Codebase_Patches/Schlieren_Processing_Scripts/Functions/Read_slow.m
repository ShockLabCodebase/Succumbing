function  im_data = Read_slow(filename, N)
    %%% Read .SLOW files from the Pharsighted Camera
    %%% Gathers framerate, framecount (sets to min of N or total_frames),
    %%% and frame resolution to read off images from .slow files
    %%%
    %%% File layout: 4096-byte header (JSON, zero padded), then for each
    %%% frame a <size>-byte metadata block followed by the pixels.
    %%%
    %%% PATCH 2026-10-23: the file is rewound after textscan reads the header.
    %%% textscan leaves the file position part-way through the JSON (byte 810
    %%% on the test file), so the header skip started there and every frame
    %%% was read 810 bytes late: the image moved up a row and wrapped 170
    %%% columns sideways, the next frame's metadata bytes landed in the last
    %%% row, and reading all frames ran off the end of the file.

    fid = fopen(sprintf('%s',filename),'r','n','windows-1252');
    
    header = textscan(fid,'%s',120,'Delimiter',{'"','":"'});
    header = header{1};
    %%% If you are getting an error here, try remounting Market
    
    pat = digitsPattern;

    pixels_ind = find(contains(header,'res')) + 1;
    pixels = extract(header{pixels_ind(1)}, pat);
    
    pixels_x = str2num(pixels{1});
    pixels_y = str2num(pixels{2});
    total_pixels = pixels_y*pixels_x;
    
    frames_ind = find(contains(header,'fr_cnt')) + 1;
    frames = extract(header{frames_ind(1)}, pat);
    total_frames = str2num(frames{1});
    
    if N == 0
        frames = total_frames;
    else
        frames = min(N,total_frames);
    end

    skip_size_ind = find(contains(header,'size')) + 1;
    skip_size = extract(header{skip_size_ind(end)}, pat);
    skip_size = str2num(skip_size{1});

    header_amount = 2^12 + skip_size;
    frewind(fid);
    fread(fid,header_amount);

    im_data = zeros(total_pixels,frames,"int16");
    
    for n = 1:frames
        im_data(:,n) = fread(fid,total_pixels);
        fread(fid,skip_size);
    end

    %%% Decompress the data
    % The .slow file format compresses the information to fit the 9bit data
    % into a single byte. It is apparently lossless. To decompress:
    % pix9b = pix8b 0 <= pix8b < 128
    % (2 * pix8b) - 127 128 <= pix8b < 192
    % (4 * pix8b) - 509 192 <= pix8b <= 255

    im_data(im_data >= 192) = im_data(im_data >= 192).*4 - 509;
    im_data((im_data >= 128 & im_data < 192)) = im_data((im_data >= 128 & im_data < 192)).*2 - 127;
    
    im_data = permute(reshape(im_data, [pixels_x pixels_y frames]),[2 1 3]);
    
    fclose(fid);

end
