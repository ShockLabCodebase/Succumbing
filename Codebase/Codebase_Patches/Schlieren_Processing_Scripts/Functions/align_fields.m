function [x,y,rotation_angle,im_mean,im_data,background,align_info] = align_fields(x,y,im_mean,im_data,background,do_rotation,auto_position,nozzle_centre,subpixel_shift)
%%% Aligns schlieren fields on the jet axis using the mean field.
%%%
%%% Finds the rotation and transverse position that make the (smoothed) mean
%%% field best match its own up-down flip. All fields are rotated, the rows
%%% are cropped symmetric about the axis, and y is rebuilt with y = 0 on the
%%% axis. Assumes a mirror-symmetric mean field (knife edge perpendicular to
%%% the jet axis).
%%%
%%% The axis is snapped to the nearest whole or half row (the mirror row). On
%%% a row the crop has an odd number of rows; between rows it has an even
%%% number, with the mirror plane between the two middle rows (as get_symmetry
%%% does for y_odd = 0). No interpolation is needed for this, and the mirror
%%% plane is at most 0.25 px from the measured axis. y keeps the exact
%%% sub-pixel axis, so y = 0 can sit up to 0.25 px from the mirror plane.
%%%
%%% subpixel_shift (optional, default false): also shift the fields by the
%%% remaining <= 0.25 px with a band-limited (FFT) shift, so the axis sits
%%% exactly on the mirror plane and y is exactly symmetric. No smoothing below
%%% Nyquist, but it can ring next to very sharp edges.
%%%
%%% The axis search only covers about +/-15 px (max_shift/4) from the frame
%%% centre. auto_position "none" and "axial" don't search for the axis: y = 0
%%% is put at the frame centre. Either way the y_0 offset in the input y is
%%% replaced; only the pixel spacing is kept.
%%%
%%% align_info (optional output): rotation_angle, axis_row and mirror_row (in
%%% rows of the rotated, uncropped frame), the kept rows, and subpixel_shift.

if nargin < 9 || isempty(subpixel_shift)
    subpixel_shift = false;
end

disp("Aligning Fields");

sigma = 4;
im_1 = imgaussfilt(im_mean,sigma);
n_y = size(im_1,1);
dy = y(2,1)-y(1,1);

max_angle = 4; % degrees, largest rotation searched
min_angle = 0.05; % degrees, smaller rotations aren't applied (not worth interpolating every frame for)

x_extent_l = -0.5; % Ignore the close nozzle and upstream regions
x_extent_u = 8; % Shouldn't need more than 8 diameters to get a good correlation
if x(1,1) < -5 %%% x_0 may have been set at opposite end of images. This should fix it....
    ROI_x_l = find(abs(flip(-x(1,:),2) - x_extent_l) == min(abs(flip(-x(1,:),2) - x_extent_l)));
    ROI_x_u = find(abs(flip(-x(1,:),2) - x_extent_u) == min(abs(flip(-x(1,:),2) - x_extent_u)));
else
    ROI_x_l = find(abs(x(1,:) - x_extent_l) == min(abs(x(1,:) - x_extent_l)));
    ROI_x_u = find(abs(x(1,:) - x_extent_u) == min(abs(x(1,:) - x_extent_u)));
end
ROI_x = ROI_x_l(1):ROI_x_u(1);

max_shift = 60; % Results in a possible shift of the image axis by +/- 15px
n_refinements = 3;

%%% Rotation search: 0.4, then 0.04, then 0.004 degree steps. Angles are
%%% compared by the sub-pixel (fitted) correlation peak, so the choice isn't
%%% biased by where the axis falls between whole-row shifts.
rotation_angle = 0;
if do_rotation
    angles = linspace(-max_angle,max_angle,21);
    for i = 1:n_refinements
        peak = zeros(size(angles));
        for a = 1:length(angles)
            peak(a) = subpixel_peak(flip_correlation(im_1,angles(a),max_shift,ROI_x));
        end

        [~,a_peak] = max(peak);
        rotation_angle = angles(a_peak);

        angles = linspace(rotation_angle-max_angle*0.1^i,rotation_angle+max_angle*0.1^i,21);
    end
end

if abs(rotation_angle) <= min_angle
    rotation_angle = 0;
end

if auto_position == "both" || auto_position == "transverse"
    %%% Shift search at the angle actually applied
    [~,j,actual_centre] = subpixel_peak(flip_correlation(im_1,rotation_angle,max_shift,ROI_x));

    if j == 1 || j == max_shift
        warning("align_fields: the axis is at the edge of the +/-%g px search range and may lie outside it. Check the alignment.",max_shift/4);
    end

    %%% A shift of j rows between the image and its flip puts the axis at row
    %%% (n_y + j - max_shift/2)/2: half a row per unit of j, with the frame
    %%% centre at j = max_shift/2 + 1.
    axis_row = (n_y + j + actual_centre - floor(max_shift/2))/2;
elseif auto_position == "axial" || auto_position == "none"
    axis_row = (n_y + 1)/2; % frame centre
end

if rotation_angle ~= 0
    im_mean = imrotate(im_mean,rotation_angle,'bilinear','crop');
    if ~isempty(background)
        background = imrotate(background,rotation_angle,'bilinear','crop');
    end
    if ~isempty(im_data)
        for i = 1:size(im_data,3)
            im_data(:,:,i) = imrotate(im_data(:,:,i),rotation_angle,'bilinear','crop');
        end
    end
end

%%% Crop rows symmetric about the mirror row
mirror_row = round(2*axis_row)/2; % nearest whole or half row
lo = floor(mirror_row);
hi = ceil(mirror_row); % lo == hi when the mirror plane is on a row
n_half = min(lo - 1, n_y - hi);
rows = (lo - n_half):(hi + n_half); % odd count on a row, even count between rows

im_mean = im_mean(rows,:);
if ~isempty(background)
    background = background(rows,:);
end
if ~isempty(im_data)
    im_data = im_data(rows,:,:);
end

if subpixel_shift && mirror_row ~= axis_row
    s = mirror_row - axis_row; % rows to move the axis onto the mirror plane (|s| <= 0.25)
    im_mean = fourier_shift_rows(im_mean,s);
    background = fourier_shift_rows(background,s);
    im_data = fourier_shift_rows(im_data,s);
    y1 = (rows - mirror_row)*dy;
else
    y1 = (rows - axis_row)*dy;
end

%%%%% Could change the axial pos to just look at the nozzle body by
%%%%% shifting centreline_vals to y/D = 0.6 or something...
if auto_position == "both" || auto_position == "axial"
    %%% This may not work for non-background subtracted data. Should probs check
    upstream_offset = 15;
    nozzle_centre_ind = round(1 + (nozzle_centre - y1(1))/dy);
    im_mean_alt = im_mean - cast(background,'single');
    centreline_vals = mean(im_mean(nozzle_centre_ind-1:nozzle_centre_ind+1,:),1) + mean(im_mean_alt(nozzle_centre_ind-1:nozzle_centre_ind+1,:),1);
    [~,x_start,~] = findpeaks((gradient(abs(centreline_vals))),'MinPeakProminence',5);
    %%% [~,x_start,~] = findpeaks(gradient(gradient(abs(centreline_vals))),'MinPeakProminence',10); %%was using the second deriv, but it seemed to under predict where
    %%% x=0 occurred. Probably more robust methods...

    x1 = x(1,:) - x(1,x_start(1));
    if x_start(1) <= upstream_offset
        x1 = x1(1,1:end);
    else
        x1 = x1(1,x_start(1)-upstream_offset:end);
        im_mean = im_mean(:,x_start(1)-upstream_offset:end);
        background = background(:,x_start(1)-upstream_offset:end);
        im_data = im_data(:,x_start(1)-upstream_offset:end,:);
    end
    [x,y] = meshgrid(x1,y1);
elseif auto_position == "transverse" || auto_position == "none"
    [x,y] = meshgrid(x(1,1:end)',y1);
end

align_info = struct('rotation_angle',rotation_angle,'axis_row',axis_row, ...
    'mirror_row',mirror_row,'rows',rows,'subpixel_shift',subpixel_shift);

end


function c = flip_correlation(im,angle,max_shift,cols)
%%% Correlation of the rotated image with its own up-down flip, for each of
%%% max_shift row shifts between the two. The edges are replicated before
%%% rotating so imrotate's zero-filled corners can't enter the correlation:
%%% they grow with the angle and, when the axis is off-centre, pull the
%%% angle towards zero.
p = ceil(max(size(im))/2*tand(abs(angle))) + 1;
im_rot = imrotate(padarray(im,[p p],'replicate'),angle,'bilinear','crop');
im_rot = im_rot(p+1:end-p,p+1:end-p);
im_flip = flipud(im_rot);
c = zeros(1,max_shift);
for j = 1:max_shift
    c(j) = corr2(im_rot(j:end-max_shift+(j-1),cols),im_flip(floor(max_shift/2)+1:end-ceil(max_shift/2),cols));
end
end


function [c_peak,j,delta] = subpixel_peak(c)
%%% Peak of the correlation c: whole-shift index j, sub-pixel offset delta
%%% from a 3-point Gaussian fit (parabola if any of the 3 values is <= 0),
%%% and the fitted peak height. At the ends of c, delta = 0 and c_peak is
%%% the sample.
[c_peak,j] = max(c);
delta = 0;
if j == 1 || j == numel(c)
    return
end
v = c(j-1:j+1);
use_log = min(v) > 0;
if use_log
    v = log(v);
end
a = (v(1) + v(3) - 2*v(2))/2;
b = (v(3) - v(1))/2;
if a < 0
    delta = -b/(2*a);
    v_peak = v(2) - b^2/(4*a);
    if use_log
        c_peak = exp(v_peak);
    else
        c_peak = v_peak;
    end
end
end


function q = fourier_shift_rows(q,s)
%%% Shifts q along dim 1 by s rows (content at row r moves to row r + s) with
%%% a band-limited FFT shift. Mirror padding avoids a wrap-around jump. Works
%%% in chunks of frames to limit memory, and keeps the class of q (integer
%%% classes are rounded).
if isempty(q)
    return
end
n = size(q,1);
N = 3*n;
kk = 2*pi/N*ifftshift(-floor(N/2):ceil(N/2)-1).';
phase = exp(-1i*kk*s);
q_class = class(q);
n_chunk = max(1,floor(2^29/(16*N*size(q,2)))); % ~0.5 GB of complex FFT per chunk
for t1 = 1:n_chunk:size(q,3)
    t = t1:min(t1+n_chunk-1,size(q,3));
    q_pad = double(q(:,:,t));
    q_pad = cat(1,flip(q_pad,1),q_pad,flip(q_pad,1));
    q_pad = real(ifft(fft(q_pad,[],1).*phase,[],1));
    q(:,:,t) = cast(q_pad(n+1:2*n,:,:),q_class);
end
end
