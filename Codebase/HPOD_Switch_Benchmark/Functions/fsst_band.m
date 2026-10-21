function T = fsst_band(x, f_lo, f_hi, sigma_f, df_out)
%%% Band-limited Fourier synchrosqueezing (Gaussian-window STFT, reassigned
%%% along frequency only), computed by FFT filtering so that long records
%%% stay affordable. The Wavelet Toolbox (wsst) is not needed.
%%%
%%% For each analysis frequency fk the analytic band signal y_k (Gaussian,
%%% std sigma_f) and its time derivative give the local IF estimate
%%% w_k = Im(y_k'/y_k)/(2*pi) (Daubechies et al. 2011, eq. 2.2-2.7). The
%%% energy |y_k|^2 is moved to the output bin nearest w_k. Time is never
%%% reassigned, so the time resolution stays that of the window.
%%%
%%% Output T: f (output grid), E [n_f, nt] reassigned energy (single).

n = numel(x);
X = fft(x(:).');
nu = (0:n-1)/n;
nu(nu >= 0.5) = nu(nu >= 0.5) - 1;
dk = min(sigma_f, df_out*8)/2;                 % analysis spacing
fk = (f_lo - 3*sigma_f):dk:(f_hi + 3*sigma_f);
fk = fk(fk > 0);
fo = f_lo:df_out:f_hi;
n_f = numel(fo);
E = zeros(n_f, n, 'single');
cols = 1:n;
for k = 1:numel(fk)
    H = exp(-(nu - fk(k)).^2/(2*sigma_f^2));
    H(nu <= 0) = 0;
    y = ifft(2*X.*H);
    dy = ifft(2*X.*H.*(1i*2*pi*nu));
    wk = imag(dy./y)/(2*pi);
    j = round((wk - fo(1))/df_out) + 1;
    ok = j >= 1 & j <= n_f & isfinite(wk);
    E = E + single(accumarray([j(ok)' cols(ok)'], abs(y(ok)').^2, [n_f n]));
end
T.f = fo;
T.E = E;
end
