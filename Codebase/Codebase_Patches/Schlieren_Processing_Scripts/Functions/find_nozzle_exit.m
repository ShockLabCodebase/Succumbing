function exit = find_nozzle_exit(im_mean,im_std,axis_row,make_plot)
%%% Finds the nozzle exit (lip) from the mean and temporal-std fields, with
%%% no background image needed. Flow is assumed left to right with the
%%% nozzle body touching the left edge of the frame.
%%%
%%% The nozzle body is the region that is both dark in the mean and quiet in
%%% the std (no flow, only camera noise); the jet is the region with a high
%%% std. Both thresholds come from a 3-level Otsu split (multithresh), so
%%% they don't depend on the bit depth or exposure. For each row the body
%%% extends to column e(row). The lip rows are the rows furthest from the
%%% axis, on each side, where the jet starts right at the body edge. The
%%% exit plane is the body edge at the lip rows.
%%%
%%% This also works for bodies that continue downstream of the exit on the
%%% axis (aerospike/plug nozzles, centrebodies): the centreline method in
%%% align_fields puts x = 0 at the downstream end of the body on the axis,
%%% i.e. at the spike tip.
%%%
%%% Inputs: im_mean, im_std [n_y, n_x] (raw or background-subtracted),
%%% axis_row (row of the jet axis), make_plot (optional, default false).
%%% Output struct: col (exit-plane column, sub-pixel from the mean-field
%%% gradient at the lip rows), lip_rows [top bottom], D_px (lip-to-lip
%%% distance in px), tip_col (furthest body column within the lips, e.g. a
%%% spike tip), body (mask), jet (mask).

if nargin < 4
    make_plot = false;
end
[n_y,n_x] = size(im_mean);
im_mean = double(im_mean);
log_std = log10(double(im_std) + eps);

%%% Body: dark and quiet, connected to the left edge
t_std = multithresh(log_std,2);
t_mean = multithresh(im_mean,2);
body = log_std < t_std(1) & im_mean < t_mean(1);
body = imopen(body,strel('disk',2));
body = imfill(body,'holes');
lab = bwlabel(body);
left_labels = unique(lab(:,1));
left_labels(left_labels == 0) = [];
if isempty(left_labels)
    error("find_nozzle_exit: no nozzle body touches the left edge of the frame.");
end
body = ismember(lab,left_labels);

%%% Jet: high std
jet = log_std > t_std(2);

%%% Body extent per row, and whether the jet starts at the body edge
e = zeros(n_y,1);
touches = false(n_y,1);
w = 5; % px downstream of the body edge
for r = 1:n_y
    c = find(~body(r,:),1,'first'); % first flow column in the row
    if isempty(c) || c == 1
        continue
    end
    e(r) = c - 1;
    touches(r) = any(jet(r,c:min(n_x,c+w-1)));
end

axis_row = round(axis_row);
above = find(touches(1:axis_row));
below = find(touches(axis_row:end)) + axis_row - 1;
if isempty(above) || isempty(below)
    error("find_nozzle_exit: no jet shear layer starts at the nozzle body on one side of the axis.");
end
lip_rows = [above(1), below(end)];

%%% The shear layer can start a few px downstream of the lip, so the jet may
%%% not touch the body edge at the lip itself. A second estimate is the
%%% outermost std peak (the shear-layer centre) 5-20 px downstream of the
%%% exit, over the rows where the body reaches the exit plane. The outermost
%%% of the two estimates is kept on each side (the shear layer can also
%%% turn inwards, e.g. along an aerospike).
c_exit = round(mean(e(lip_rows)));
cols = min(n_x,c_exit+5):min(n_x,c_exit+20);
prof = mean(log_std(:,cols),2);
at_exit = e >= c_exit - 3;
for k = 1:2
    if k == 1
        rr = find(at_exit(1:axis_row));
    else
        rr = find(at_exit(axis_row:end)) + axis_row - 1;
    end
    if numel(rr) > 3
        %%% outermost clear std peak (the jet core can be as noisy as the
        %%% shear layer, so the largest peak isn't always the lip)
        [~,locs] = findpeaks(prof(rr),'MinPeakProminence',0.05);
        if ~isempty(locs)
            if k == 1
                lip_rows(k) = min(lip_rows(k), rr(locs(1)));
            else
                lip_rows(k) = max(lip_rows(k), rr(locs(end)));
            end
        end
    end
end

%%% Sub-pixel exit plane: steepest rise of the mean along the lip rows
%%% (body to flow), within a few px of the body edge
col = zeros(1,2);
for k = 1:2
    r = lip_rows(k);
    rr = max(1,r-1):min(n_y,r+1);
    prof = mean(im_mean(rr,:),1);
    cand = max(2,e(r)-3):min(n_x-1,e(r)+3);
    g = gradient(prof);
    [~,i] = max(g(cand));
    i = cand(i);
    if i > 1 && i < n_x
        a = (g(i-1) + g(i+1) - 2*g(i))/2;
        b = (g(i+1) - g(i-1))/2;
        if a < 0
            col(k) = i - b/(2*a);
        else
            col(k) = i;
        end
    else
        col(k) = i;
    end
end

exit = struct();
exit.col = mean(col);
exit.lip_cols = col;
exit.lip_rows = lip_rows;
exit.D_px = lip_rows(2) - lip_rows(1);
exit.tip_col = max(e(lip_rows(1):lip_rows(2)));
exit.body = body;
exit.jet = jet;

if make_plot
    figure('Color','w');
    imagesc(log_std); axis image; colormap(gray); hold on
    contour(body,[0.5 0.5],'c');
    contour(jet,[0.5 0.5],'y');
    plot(col,lip_rows,'r+','MarkerSize',12,'LineWidth',1.5);
    xline(exit.col,'r--');
    xline(exit.tip_col,'m:');
    title(sprintf('Exit at column %.1f, lips at rows %d and %d (D = %d px)',exit.col,lip_rows(1),lip_rows(2),exit.D_px));
end
end
