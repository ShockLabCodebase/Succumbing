function q = invspod_band(S, f_band, n_modes)
%%% Frequency-domain inverse SPOD (Nekkanti & Schmidt 2021) over one band.
%%%
%%% Keeps SPOD modes 1:n_modes at the kept bins with f_band(1) <= f <=
%%% f_band(2), rebuilds each block's Fourier data, conjugate-fills the
%%% negative frequencies, inverse-FFTs, divides by the window, and stitches
%%% overlapping blocks with a running Hann-weighted average, as the group's
%%% modified invspod.m does. Without overlap (step >= nfft) the blocks are
%%% simply concatenated (Hann weights would zero each block's first sample).
%%% Samples covered by no block are 0.
%%%
%%% Output q [nx, nt] (single, real, zero mean).

in_band = find(S.f >= f_band(1) & S.f <= f_band(2));
nx = size(S.P, 1);
n_m = min(n_modes, size(S.P, 2));
num = zeros(nx, S.nt);
den = zeros(1, S.nt);
if S.step >= S.nfft
    wg = ones(1, S.nfft);
else
    wg = hann(S.nfft, 'periodic')';
end
if isempty(in_band)
    q = zeros(nx, S.nt, 'single');
    return
end
bins = S.bins(in_band);
for b = 1:S.n_blk
    Xhat = complex(zeros(nx, S.nfft));
    for jj = 1:numel(in_band)
        jf = in_band(jj);
        Xhat(:, bins(jj)) = double(S.P(:, 1:n_m, jf))*double(S.A(1:n_m, b, jf));
    end
    Xhat(:, S.nfft - bins + 2) = conj(Xhat(:, bins));
    qb = real(ifft(Xhat, [], 2))./S.w;
    idx = (b-1)*S.step + (1:S.nfft);
    num(:, idx) = num(:, idx) + qb.*wg;
    den(idx) = den(idx) + wg;
end
q = zeros(nx, S.nt);
ok = den > 1e-6;
q(:, ok) = num(:, ok)./den(ok);
q = single(q);
end
