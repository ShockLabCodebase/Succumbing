function im_data = Read_mraw(filename, N)
%   readmraw.m
%   READMRAW Read Photron MRAW files into MATLAB
%
%   PATCH 2026-10-23:
%   - 8- and 16-bit data are read as unsigned (they were read as int8/int16,
%     so 8-bit values >= 128 and 16-bit values >= 32768 wrapped negative).
%   - <effectiveBit><side>Higher</side> (data in the top bits of the 16-bit
%     word) is shifted down to the effective depth so it fits in int16.
%   - 12-bit packed files (<bit>12</bit>, two pixels in 3 bytes, MSB first)
%     are read with 'ubit12' (untested: no 12-bit file was available).
%   - The header is read by tag name, not the first line containing 'bit',
%     'type', etc. (those words appear in several other tags).
%   - N = 0 reads all frames.

cihx_text = fileread(sprintf('%s.cihx',filename(1:end-5)));

bits = cihx_value(cihx_text,'bit');
Total_Frames = cihx_value(cihx_text,'totalFrame');
Width = cihx_value(cihx_text,'width');
Height = cihx_value(cihx_text,'height');

effective = regexp(cihx_text,'<effectiveBit>(.*?)</effectiveBit>','tokens','once');
if ~isempty(effective)
    eff_depth = cihx_value(effective{1},'depth');
    eff_higher = contains(effective{1},'<side>Higher</side>','IgnoreCase',true);
else
    eff_depth = bits;
    eff_higher = false;
end

color_type = regexp(cihx_text,'<colorInfo>.*?<type>(.*?)</type>','tokens','once');
if ~isempty(color_type) && strcmpi(strtrim(color_type{1}),'Color')
    warning('Read_mraw: colour MRAW files are not supported; the data are read as monochrome.');
end

Pixels = Width*Height;

% load all the images
first_frame = 1;
if N == 0
    frames = Total_Frames;
else
    frames = min(N,Total_Frames);
end

fid2 = fopen(sprintf('%s',filename),'r');

% Load Images
bytes_offset = (first_frame-1)*Pixels*bits/8;
fseek(fid2, bytes_offset, 'bof');

im_data = zeros(Pixels, frames, "int16");

switch bits
    case 8
        precision = 'uint8=>uint16';
        machinefmt = 'l';
    case 12
        precision = 'ubit12=>uint16';
        machinefmt = 'b';
    case 16
        precision = 'uint16=>uint16';
        machinefmt = 'l';
    otherwise
        fclose(fid2);
        error('Read_mraw: %d-bit MRAW files are not supported.',bits);
end
shift = 0;
if eff_higher && bits == 16
    shift = 16 - eff_depth;
end

for n = 1:frames
    frame = fread(fid2, Pixels, precision, 0, machinefmt);
    if shift > 0
        frame = bitshift(frame, -shift);
    end
    im_data(:,n) = frame; % uint16 -> int16 (saturates above 32767)
end

MNO = [Width Height frames];
im_data = permute(reshape(im_data, MNO),[2 1 3]);

im_data = flip(im_data,2);

fclose(fid2);

end


function value = cihx_value(text,tag)
%%% First numeric <tag>value</tag> in the cihx text
token = regexp(text,['<',tag,'>\s*([-\d.]+)\s*</',tag,'>'],'tokens','once');
if isempty(token)
    error('Read_mraw: <%s> not found in the .cihx file.',tag);
end
value = str2double(token{1});
end
