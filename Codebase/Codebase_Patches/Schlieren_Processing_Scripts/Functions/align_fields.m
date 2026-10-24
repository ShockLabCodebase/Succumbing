function [x,y,rotation_angle,im_mean,im_data,background,align_info] = align_fields(x,y,im_mean,im_data,background,do_rotation,auto_position,nozzle_centre,subpixel_shift,axial_method)
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
%%% centre. auto_position "none" and "axial" don't search for the axis: the
%%% user's y_0 (the row where the input y = 0) is kept as the axis, and the
%%% rows are cropped symmetric about it. "transverse" and "both" replace y_0
%%% with the axis found; only the pixel spacing is kept.
%%%
%%% When a rotation is applied, the rows and columns that imrotate fills with
%%% zeros at the frame corners are cropped (x is cropped with them).
%%%
%%% PATCH 2026-10-23 (on top of the 2026-10-16 patch):
%%% - "none"/"axial" keep the user's y_0 (they put y = 0 at the frame centre).
%%% - The zero-filled corners left by imrotate are cropped.
%%% - "axial"/"both": a clear error when no nozzle-exit edge is found on the
%%%   centreline (x_start(1) errored on an empty result).
%%%
%%% - axial_method (optional 10th input, "axial"/"both" only):
%%%   "centreline" (default, the original method): x = 0 at the first peak
%%%   of d/dx along the centreline of (raw mean + background-subtracted
%%%   mean). Needs the nozzle body darker than the flow; with no background
%%%   and a body on the axis (aerospike, centrebody) it finds the body's
%%%   downstream end, e.g. the spike tip.
%%%   "lip": find_nozzle_exit. Finds the nozzle body (dark in the mean and
%%%   quiet in the temporal std) and the lips (where the shear layers start),
%%%   so no background is needed and a body on the axis doesn't matter. Also
%%%   prints the lip-to-lip distance in D as a check on D and mm_per_pixel.
%%%
%%% align_info (optional output): rotation_angle, axis_row and mirror_row (in
%%% rows of the rotated, uncropped frame), the kept rows and columns,
%%% subpixel_shift, and for axial_method "lip" the find_nozzle_exit result.

if nargin < 9 || isempty(subpixel_shift)
    subpixel_shift = false;
end
if nargin < 10 || isempty(axial_method)
    axial_method = "centreline";
end
exit_info = struct();

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
    axis_row = 1 - y(1,1)/dy; % the user's y_0: the row where the input y = 0
    if axis_row < 1 || axis_row > n_y
        error("align_fields: y_0 (row %.1f) is outside the %d-row frame. Set y_0 to the jet-axis row, or use auto_position = ""transverse"".",axis_row,n_y);
    end
end

valid_rows = [1, n_y];
cols = 1:size(im_mean,2);
if rotation_angle ~= 0
    %%% Rows and columns that stay clear of the zero-filled corners
    valid = imrotate(true(size(im_mean)),rotation_angle,'bilinear','crop') == 1;
    n_c = ceil(n_y/2*abs(sind(rotation_angle))) + 1;
    cols = 1+n_c:size(im_mean,2)-n_c;
    valid_rows = [find(all(valid(:,cols),2),1,'first'), find(all(valid(:,cols),2),1,'last')];
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
n_half = min(lo - valid_rows(1), valid_rows(2) - hi);
if n_half < 2
    error("align_fields: the axis (row %.1f) is at the edge of the usable rows %d-%d; nothing is left after a symmetric crop.",axis_row,valid_rows(1),valid_rows(2));
end
rows = (lo - n_half):(hi + n_half); % odd count on a row, even count between rows

im_mean = im_mean(rows,cols);
if ~isempty(background)
    background = background(rows,cols);
end
if ~isempty(im_data)
    im_data = im_data(rows,cols,:);
end
x = x(:,cols);

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
    if axial_method == "lip"
        %%% Temporal std, in chunks of frames
        im_std = frame_std(im_data);
        exit_info = find_nozzle_exit(im_mean,im_std,mirror_row - rows(1) + 1);
        fprintf("align_fields: nozzle exit at column %.1f; lips %.2f D apart (check against D and mm_per_pixel)\n", ...
            exit_info.col, exit_info.D_px*dy);
        x_start = max(1,round(exit_info.col));
        x1 = x(1,:) - interp1(1:size(x,2),x(1,:),exit_info.col);
        exit_info = rmfield(exit_info,{'body','jet'});
    else
    im_mean_alt = im_mean - cast(background,'single');
    centreline_vals = mean(im_mean(nozzle_centre_ind-1:nozzle_centre_ind+1,:),1) + mean(im_mean_alt(nozzle_centre_ind-1:nozzle_centre_ind+1,:),1);
    [~,x_start,~] = findpeaks((gradient(abs(centreline_vals))),'MinPeakProminence',5);
    if isempty(x_start)
        error("align_fields: no nozzle-exit edge found on the centreline (no gradient peak with prominence 5). Use axial_method = ""lip"", or auto_position = ""transverse"" or ""none"" and set x_0 by hand.");
    end
    %%% [~,x_start,~] = findpeaks(gradient(gradient(abs(centreline_vals))),'MinPeakProminence',10); %%was using the second deriv, but it seemed to under predict where
    %%% x=0 occurred. Probably more robust methods...

    x1 = x(1,:) - x(1,x_start(1));
    end
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
    'mirror_row',mirror_row,'rows',rows,'cols',cols,'subpixel_shift',subpixel_shift, ...
    'axial_method',axial_method,'nozzle_exit',exit_info);

end


function s = frame_std(q)
%%% Temporal std of q [n_y, n_x, n_t], accumulated in chunks of frames
n_t = size(q,3);
s1 = zeros(size(q,1),size(q,2));
s2 = s1;
chunk = 500;
for t1 = 1:chunk:n_t
    b = double(q(:,:,t1:min(n_t,t1+chunk-1)));
    s1 = s1 + sum(b,3);
    s2 = s2 + sum(b.^2,3);
end
s = sqrt(max(0,(s2 - s1.^2/n_t)/(n_t-1)));
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
