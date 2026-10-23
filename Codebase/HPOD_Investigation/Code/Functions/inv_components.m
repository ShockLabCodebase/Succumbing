function c = inv_components(A, bins, nfft, nOvlp, dt, nt)
%%% invspod.m (Codebase_Patches) applied to one SPOD mode at a time, in
%%% projection space. invspod rebuilds each block as ifft(P*A)*win_corr./w
%%% (w the Hamming window, win_corr = norm(w)/sqrt(dt)) and averages
%%% overlapping blocks with Hann weights. For a band of modes P_k the
%%% rebuilt field is r(x,t) = sum_k [P_k(x) c_k(t) + conj(P_k(x) c_k(t))],
%%% with
%%%     c_k(t) = sum_b h_b(t) A_k(b) e^{i 2 pi (b_k-1)(t-t_b)/N} win_corr/(N w(t-t_b)) / sum_b h_b(t).
%%% This returns c [K, nt] (zero beyond invspod's length N*nBlks - (nBlks-1)*nOvlp).
%%%
%%% A [K, nBlks] block coefficients (blk_coeffs or the SPOD file); bins [K,1].

N = nfft;
[K, nBlks] = size(A);
nt_inv = N*nBlks - (nBlks - 1)*nOvlp;
w = 0.54 - 0.46*cos(2*pi*(0:N-1)/(N-1));     % = hamming(N)
hw = 0.5 - 0.5*cos(2*pi*(0:N-1)/(N-1));      % = hann(N)
win_corr = norm(w)/sqrt(dt);
E = exp(2i*pi*(double(bins(:)) - 1)*(0:N-1)/N).*(win_corr./(N*w));   % [K, N]
num = complex(zeros(K, nt_inv));
den = zeros(1, nt_inv);
last = complex(zeros(K, nt_inv));            % value where every covering weight is 0
for b = 1:nBlks
    idx = (b-1)*(N - nOvlp) + (1:N);
    xb = A(:, b).*E;
    num(:, idx) = num(:, idx) + xb.*hw;
    den(idx) = den(idx) + hw;
    last(:, idx) = xb;
end
c = num./den;
z = den == 0;
c(:, z) = last(:, z);
c = [c, complex(zeros(K, max(0, nt - nt_inv)))];
c = c(:, 1:nt);
end
