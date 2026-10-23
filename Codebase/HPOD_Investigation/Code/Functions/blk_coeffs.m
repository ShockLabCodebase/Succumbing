function A = blk_coeffs(p, bins, nfft, nOvlp, dt)
%%% Block-wise SPOD expansion coefficients from projections, as spod.m
%%% (Codebase_Patches) defines them: A_k(blk) = P_k^H Q_hat(f_k, blk), with
%%% Q_hat = sqrt(dt)*fft(w.*block), w the Hamming window normalised to unit
%%% power, blocks of nfft samples overlapping by nOvlp. Since the projection
%%% commutes with the FFT, this equals the SPOD file's A for the same data.
%%%
%%% p [K, nt] projections p_k(t) = P_k^H (x(t) - x_mean); bins [K,1] FFT bin
%%% of each row (1-based, 1 = 0 Hz). Output A [K, nBlks] (double).

N = nfft;
nt = size(p, 2);
w = 0.54 - 0.46*cos(2*pi*(0:N-1)/(N-1));
w = w/sqrt(sum(w.^2));
nBlks = floor((nt - nOvlp)/(N - nOvlp));
E = exp(-2i*pi*(double(bins(:)) - 1)*(0:N-1)/N).*w;     % [K, N]
A = complex(zeros(size(p, 1), nBlks));
for b = 1:nBlks
    offset = min((b-1)*(N - nOvlp) + N, nt) - N;
    A(:, b) = sqrt(dt)*sum(E.*double(p(:, offset + (1:N))), 2);
end
end
