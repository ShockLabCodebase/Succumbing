function stage1_project(cfg)
%%% Stage 1: one pass over the record. Projects the mean-removed data onto
%%% the saved SPOD modes for every bin in cfg.St_bands (modes 1:cfg.n_modes):
%%%     p_k(t) = P_k^H (x(t) - x_mean).
%%% Everything later (tcoeffs, invspod + Hilbert, band PODs, fixed-mode
%%% projections, spliced controls) is linear in the data, so it is computed
%%% from these projections and the modes' Gram matrices G1 = P^H P and
%%% G2 = P^T P, without reading the 82 GB file again. Also stores lipline
%%% probe time series, and checks block coefficients rebuilt from the
%%% projections against the SPOD file's A.

if ~exist(cfg.data_dir, "dir"), mkdir(cfg.data_dir); end
t_all = tic;
sp = matfile(cfg.spod_file);
St = double(sp.St); St = St(:).';
f = double(sp.f); f = f(:).';
fps = double(sp.fps); nfft = double(sp.nfft); overlap = double(sp.overlap);
L = double(sp.L);
x = double(sp.x); y = double(sp.y); D = double(sp.D);
im_mean = single(sp.im_mean);
[n_y, n_x] = size(im_mean); n_pix = n_y*n_x;
fprintf("SPOD file: nfft %d, overlap %g%%, fps %g, %d x %d pixels, x/D %.2f..%.2f, y/D %.2f..%.2f\n", ...
    nfft, overlap, fps, n_y, n_x, min(x(:)), max(x(:)), min(y(:)), max(y(:)));

%% Bins and columns (bin-major, mode-minor)
bins = [];
for ib = 1:size(cfg.St_bands, 1)
    bins = [bins, find(St >= cfg.St_bands(ib,1) & St <= cfg.St_bands(ib,2))]; %#ok<AGROW>
end
bins = unique(bins);
P_size = size(sp, 'P');
nm = min(cfg.n_modes, P_size(4));
K = numel(bins)*nm;
col_bin = repelem(bins(:), nm);          % index into St/f (1 = 0 Hz)
col_mode = repmat((1:nm).', numel(bins), 1);
fprintf("Stage 1: %d bins x %d modes = %d columns\n", numel(bins), nm, K);

%% Modes [n_pix, K], read in contiguous runs of bins
P1 = complex(zeros(n_pix, K, 'single'));
runs = split_runs(bins);
for r = 1:size(runs, 1)
    b1 = runs(r,1); b2 = runs(r,2);
    Pb = single(sp.P(b1:b2, :, :, 1:nm));          % [nb, n_y, n_x, nm]
    Pb = reshape(permute(Pb, [2 3 4 1]), n_pix, []);   % columns: bin-major, mode-minor
    c0 = find(col_bin == b1, 1);
    P1(:, c0:c0+size(Pb,2)-1) = Pb;
end
clear Pb
Pd = double(P1);
G1 = Pd'*Pd;                             % P^H P
G2 = Pd.'*Pd;                            % P^T P (for the conjugate half of invspod + Hilbert)
clear Pd
fprintf("Modes read, Gram matrices done [%.0f s]\n", toc(t_all));

%% Lipline probes
xD = x(1,:); yD = y(:,1);
probe_idx = []; probe_xy = [];
for xx = cfg.probe_xD
    [~, ix] = min(abs(xD - xx));
    for yy = [-1 1]*cfg.probe_yD
        [~, iy] = min(abs(yD - yy));
        probe_idx(end+1) = sub2ind([n_y n_x], iy, ix); %#ok<AGROW>
        probe_xy(end+1, :) = [xD(ix) yD(iy)]; %#ok<AGROW>
    end
end

%% One pass over the data
dfile = matfile(cfg.data_file);
sz = size(dfile, 'im_data'); nt = sz(3);
proj = complex(zeros(K, nt, 'single'));
probes = zeros(numel(probe_idx), nt, 'single');
xm = reshape(im_mean, n_pix, 1);
P1h = P1';
for t1 = 1:cfg.chunk:nt
    t2 = min(nt, t1 + cfg.chunk - 1);
    blk = reshape(single(dfile.im_data(:, :, t1:t2)), n_pix, []) - xm;
    proj(:, t1:t2) = P1h*blk;
    probes(:, t1:t2) = blk(probe_idx, :);
    if mod(t1 - 1, 25*cfg.chunk) == 0
        fprintf("  frames %d-%d of %d [%.0f s]\n", t1, t2, nt, toc(t_all));
    end
end
clear P1h blk

%% Check: block coefficients from the projections against the SPOD file's A
dt = 1/fps; nOvlp = round(nfft*overlap/100);
[~, b_pk] = max(L(:,1).*(St(:) > 0.5 & St(:) < 0.8));
chk = find(col_bin == b_pk & col_mode <= 2);
A_check.cols = chk;
A_check.rel_err = zeros(numel(chk), 1);
for c = 1:numel(chk)
    A_proj = blk_coeffs(proj(chk(c), :), col_bin(chk(c)), nfft, nOvlp, dt);
    A_file = double(squeeze(sp.A(col_bin(chk(c)), col_mode(chk(c)), :))).';
    n = min(numel(A_proj), numel(A_file));
    A_check.rel_err(c) = norm(A_proj(1:n) - A_file(1:n))/norm(A_file(1:n));
    fprintf("A check, St %.4f mode %d: relative error %.2e\n", St(col_bin(chk(c))), col_mode(chk(c)), A_check.rel_err(c));
end

save(cfg.proj_file, 'proj', 'probes', 'probe_idx', 'probe_xy', 'G1', 'G2', 'col_bin', 'col_mode', ...
    'bins', 'St', 'f', 'fps', 'nfft', 'overlap', 'L', 'x', 'y', 'D', 'nt', 'n_y', 'n_x', 'A_check', ...
    '-v7.3', '-nocompression');
fprintf("Saved %s [%.0f s]\n", cfg.proj_file, toc(t_all));
end

function runs = split_runs(b)
%%% [start end] of each run of consecutive integers in sorted b.
brk = [0, find(diff(b) > 1), numel(b)];
runs = [b(brk(1:end-1) + 1).', b(brk(2:end)).'];
end
