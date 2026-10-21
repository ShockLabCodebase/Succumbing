function S = spod_welch(u, nfft, overlap_pct, f_range, n_modes_keep, win)
%%% Minimal Welch SPOD of a field u [nx, nt], keeping only frequency bins in
%%% f_range = [f_lo f_hi] (cycles/sample) to save memory.
%%%
%%% Follows the group's spod.m in structure (mean removed, Hamming window,
%%% overlapping blocks, eigenvectors of the cross-spectral matrix per bin),
%%% but stores the block-wise expansion coefficients A so that invspod_band
%%% can rebuild the data. Absolute scaling is arbitrary; only relative
%%% amplitudes matter here.
%%%
%%% win (optional): 'hamming' (default) or 'rect'.
%%%
%%% Output S: f (kept bins), bins (FFT indices), P [nx, n_modes, n_f] modes,
%%% L [n_modes, n_f] energies, A [n_modes, n_blk, n_f] coefficients, w
%%% (window), nfft, step, n_blk, nt.

if nargin < 6 || isempty(win)
    win = 'hamming';
end
[nx, nt] = size(u);
u = u - mean(u, 2);
step = round(nfft*(1 - overlap_pct/100));
n_blk = floor((nt - nfft)/step) + 1;
switch win
    case 'hamming', w = hamming(nfft, 'periodic')';
    case 'rect',    w = ones(1, nfft);
    otherwise,      error("Unknown window %s", win);
end

f_all = (0:nfft-1)/nfft;
bins = find(f_all >= f_range(1) & f_all <= f_range(2));
n_f = numel(bins);

Qhat = complex(zeros(nx, n_blk, n_f, 'single'));
for b = 1:n_blk
    idx = (b-1)*step + (1:nfft);
    X = fft(u(:, idx).*w, [], 2);
    Qhat(:, b, :) = reshape(X(:, bins), nx, 1, n_f);
end

n_m = min([n_modes_keep, nx, n_blk]);
P = complex(zeros(nx, n_m, n_f, 'single'));
A = complex(zeros(n_m, n_blk, n_f, 'single'));
L = zeros(n_m, n_f);
for jf = 1:n_f
    M = double(Qhat(:, :, jf));
    [U, Sg, ~] = svd(M, 'econ');
    U = U(:, 1:n_m);
    P(:, :, jf) = single(U);
    A(:, :, jf) = single(U'*M);
    L(:, jf) = diag(Sg(1:n_m, 1:n_m)).^2/n_blk;
end

S.f = f_all(bins);
S.bins = bins;
S.P = P;
S.L = L;
S.A = A;
S.w = w;
S.nfft = nfft;
S.step = step;
S.n_blk = n_blk;
S.nt = nt;
end
