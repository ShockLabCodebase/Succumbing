%%% Tests align_fields on synthetic, mirror-symmetric mean fields with a known
%%% tilt and sub-pixel axis position. Needs the Image Processing and Signal
%%% Processing toolboxes. Run in MATLAB from any folder:
%%%   run('<path>/tests/test_align_fields.m')
%%% Errors at the end if any check fails.

addpath(fullfile(fileparts(mfilename('fullpath')),'..','Functions'));

n_x = 600;
D_px = 40;      % nozzle diameter (px)
x0_col = 100;   % nozzle exit column
n_t = 4;
offsets = [0, 0.5, 0.25, -0.3, 7.6, -11.2];  % axis offset from the frame centre (px)
thetas = [0, 1.3, -2.1, 0.03];               % applied tilt (deg)

tol_angle = 0.01;  % deg
tol_axis = 0.15;   % px

n_fail = 0;
fprintf('%4s %6s %6s | %7s %8s %6s | %8s %8s | %8s %8s | %s\n', ...
    'n_y','offset','theta','angle','axis err','rows','y err','y err sh','asym','asym sh','fails')
for n_y = [301 300]
    for offset = offsets
        for theta = thetas
            axis_true = (n_y+1)/2 + offset;
            [x,y,im_data] = make_fields(n_y,n_x,axis_true,theta,D_px,x0_col,n_t);
            dy = y(2,1) - y(1,1);
            cols = find(x(1,:) >= 1 & x(1,:) <= 6);
            fails = {};

            res = struct();
            for shift = [false true]
                [~,y_out,angle,im_mean_out,im_data_out,~,info] = quiet_align(x,y,mean(im_data,3),im_data,zeros(n_y,n_x),true,"transverse",0,shift);
                c = measured_axis(im_mean_out,cols);
                res(shift+1).y_err = interp1(1:size(y_out,1),y_out(:,1),c)/dy;  % px from y = 0 to the true axis
                res(shift+1).asym = asymmetry(im_mean_out,cols);
                res(shift+1).info = info;

                if abs(res(shift+1).y_err) > tol_axis; fails{end+1} = sprintf('y err (shift %d)',shift); end %#ok<SAGROW>
                if ~isa(im_data_out,'int16'); fails{end+1} = 'class'; end %#ok<SAGROW>
                if shift && max(abs(y_out(:,1) + flipud(y_out(:,1)))) > 1e-9
                    fails{end+1} = 'y not symmetric after shift'; %#ok<SAGROW>
                end
            end
            info = res(1).info;

            angle_expected = -theta*(abs(theta) > 0.05);
            if abs(angle - angle_expected) > tol_angle; fails{end+1} = 'angle'; end %#ok<SAGROW>
            if abs(info.axis_row - axis_true) > tol_axis; fails{end+1} = 'axis'; end %#ok<SAGROW>
            if mod(numel(info.rows),2) ~= (mod(info.mirror_row,1) == 0); fails{end+1} = 'parity'; end %#ok<SAGROW>
            if abs(info.mirror_row - info.axis_row) > 0.1 && res(2).asym >= res(1).asym
                fails{end+1} = 'shift did not reduce asymmetry'; %#ok<SAGROW>
            end

            n_fail = n_fail + ~isempty(fails);
            fprintf('%4d %6.2f %6.2f | %7.3f %8.3f %6d | %8.3f %8.3f | %8.2e %8.2e | %s\n', ...
                n_y,offset,theta,angle,info.axis_row-axis_true,numel(info.rows), ...
                res(1).y_err,res(2).y_err,res(1).asym,res(2).asym,strjoin(fails,', '))
        end
    end
end

%%% "none": no axis search; the user's y_0 (row 150 in make_fields) is kept as
%%% the axis and the frame is cropped symmetrically about it (rows 1:299)
for n_y = [301 300]
    [x,y,im_data] = make_fields(n_y,n_x,(n_y+1)/2 + 3.3,0,D_px,x0_col,n_t);
    dy = y(2,1) - y(1,1);
    [~,y_out,~,~,~,~,info] = quiet_align(x,y,mean(im_data,3),im_data,zeros(n_y,n_x),true,"none",0);
    ok = isequal(info.rows(:)',1:299) && max(abs(y_out(:,1) - ((1:299)' - 150)*dy)) < 1e-9;
    n_fail = n_fail + ~ok;
    fprintf('"none", n_y = %d: rows kept %d, %s\n',n_y,numel(info.rows),pass_fail(ok))
end

%%% "both": nozzle exit found on the (offset) axis row
for n_y = [301 300]
    [x,y,im_data] = make_fields(n_y,n_x,(n_y+1)/2 + 7.6,1.3,D_px,x0_col,n_t);
    [x_out,~,~,~,~,~,info] = quiet_align(x,y,mean(im_data,3),im_data,zeros(n_y,n_x),true,"both",0);
    % 15 px are kept upstream of the detected exit; info.cols is the crop that
    % removes the rotated corners (applied before the axial crop)
    x_start = info.cols(1) - 1 + numel(info.cols) - size(x_out,2) + 16;
    ok = abs(x_start - x0_col) <= 1;
    n_fail = n_fail + ~ok;
    fprintf('"both", n_y = %d: exit found at column %d (true %d), %s\n',n_y,x_start,x0_col,pass_fail(ok))
end

%%% Axis outside the search range: warns instead of erroring
[x,y,im_data] = make_fields(301,n_x,151 + 20,0,D_px,x0_col,n_t);
lastwarn('');
quiet_align(x,y,mean(im_data,3),im_data,zeros(301,n_x),true,"transverse",0);
ok = contains(lastwarn,'edge');
n_fail = n_fail + ~ok;
fprintf('axis 20 px off centre: warning raised, %s\n',pass_fail(ok))

if n_fail > 0
    error('test_align_fields: %d case(s) failed',n_fail)
end
fprintf('All align_fields tests passed.\n')


function varargout = quiet_align(varargin)
%%% align_fields without its "Aligning Fields" printout
varargout = cell(1,max(nargout,1));
[~,varargout{:}] = evalc('align_fields(varargin{:})');
end

function [x,y,im_data] = make_fields(n_y,n_x,axis_row,theta,D_px,x0_col,n_t)
%%% Schlieren-like frames, mirror-symmetric about row axis_row and tilted by
%%% theta degrees counterclockwise about the frame centre (imrotate's
%%% convention), plus noise. The tilted field is evaluated analytically, as
%%% an optically tilted image would be, so no interpolation is involved.
%%% Nozzle edges are blurred over ~1 px, as optics and pixel integration
%%% do; hard edges sampled at pixel centres alias differently either side
%%% of an off-grid or tilted axis and make the field asymmetric.
[col,row] = meshgrid(1:n_x,1:n_y);
uc = col - (n_x+1)/2;
vc = row - (n_y+1)/2;
col_s = (n_x+1)/2 + uc*cosd(theta) - vc*sind(theta);  % point in the untilted field
row_s = (n_y+1)/2 + uc*sind(theta) + vc*cosd(theta);
u = col_s - x0_col;                    % px downstream of the nozzle exit
r = abs(row_s - axis_row)/D_px;        % distance from the axis (D)
w = (3 + 0.05*max(u,0))/D_px;          % shear-layer thickness grows downstream
cells = cos(2*pi*u/(0.8*D_px));        % shock cells
S = @(z) 0.5*(1 + erf(z/sqrt(2)));    % smooth step, 1 px blur
A = 1000 + S(u).*(300*exp(-((r-0.5)./w).^2).*(1+0.4*cells) + 150*exp(-(r/0.3).^2).*cells) ...
    - 800*S(-u).*S((0.7 - r)*D_px);    % jet downstream of the exit, dark nozzle body upstream
rng(1);
im_data = int16(A + 3*randn(n_y,n_x,n_t));
x = repmat(((1:n_x) - x0_col)/D_px,n_y,1);
y = repmat(((1:n_y)' - 150)/D_px,1,n_x);   % arbitrary y_0 = 150
end

function c = measured_axis(im,cols)
%%% Axis row from the centroid of the squared, column-averaged profile
%%% (exact for any mirror-symmetric profile)
p = mean(im(:,cols),2) - 1000;
r = (1:numel(p))';
win = abs(r - (numel(p)+1)/2) <= 60;
c = sum(r(win).*p(win).^2)/sum(p(win).^2);
end

function a = asymmetry(im,cols)
%%% Antisymmetric / symmetric energy about the middle of the crop
n = size(im,1);
win = abs((1:n)' - (n+1)/2) <= 100;
M = im(win,cols) - 1000;
a = sum((M - flipud(M)).^2,'all')/sum((M + flipud(M)).^2,'all');
end

function s = pass_fail(ok)
if ok; s = 'pass'; else; s = 'FAIL'; end
end
