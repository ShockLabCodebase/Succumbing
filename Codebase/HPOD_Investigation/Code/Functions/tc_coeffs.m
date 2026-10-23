function a = tc_coeffs(p, bins, nfft)
%%% Time-continuous SPOD coefficients (tcoeffs.m in Codebase_Patches;
%%% Nekkanti & Schmidt 2021, eq. 3.4) from projections: a sliding, Hamming-
%%% windowed DFT of p_k(t) at bin k, with the phase referenced to the window
%%% centre (sample t), so sums over neighbouring bins add coherently and
%%% angle(a) advances at the tone's own frequency:
%%%     a_k(t) = sum_n w(n) p_k(t + n - N/2) e^{-i 2 pi (b_k - 1)(n - N/2)/N} / sum(w)
%%% The record is zero-padded at the ends (the first and last N/2 samples
%%% are affected and are trimmed later).
%%%
%%% p [K, nt] projections; bins [K,1] FFT bins (1 = 0 Hz). Output a [K, nt] single.

N = nfft;
w = 0.54 - 0.46*cos(2*pi*(0:N-1).'/(N-1));
n = (0:N-1).';
pad = N/2;
[K, nt] = size(p);
nc = 2^nextpow2(nt + N - 1);
a = complex(zeros(K, nt, 'single'));
for k = 1:K
    ker = w.*exp(-2i*pi*(double(bins(k)) - 1)*(n - pad)/N)/sum(w);
    c = ifft(fft(double(p(k, :)).', nc).*fft(flipud(ker), nc));
    a(k, :) = single(c(pad + (0:nt-1)));
end
end
