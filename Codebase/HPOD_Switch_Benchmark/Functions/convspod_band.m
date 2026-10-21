function q = convspod_band(S, u, f_band, n_modes)
%%% Band reconstruction by convolution with the SPOD modes (the tcoeffs route
%%% of Nekkanti & Schmidt 2021, eq. 3.4), instead of block-wise inversion.
%%%
%%% For each kept bin f in f_band and each mode j = 1:n_modes, the projection
%%% p_j(t) = P_j(f)^H u(t) is filtered with the SPOD window as a complex FIR,
%%% h(tau) = w(tau) e^{i 2 pi f tau}, centred on t. That gives a time-
%%% continuous coefficient (a sliding-window SPOD coefficient at every
%%% sample) with no block boundaries; the band field is sum_f,j P_j(f) a_j(f,t).
%%% The result is analytic (positive frequencies only); its real part is
%%% returned so the HPOD step is the same as for invspod_band. The constant
%%% gain is arbitrary (IF and normalised amplitudes do not depend on it).
%%%
%%% Output q [nx, nt] (single, real).

in_band = find(S.f >= f_band(1) & S.f <= f_band(2));
[nx, nt] = size(u);
u = double(u - mean(u, 2));
n_m = min(n_modes, size(S.P, 2));
q = complex(zeros(nx, nt));
tau = (0:S.nfft-1) - S.nfft/2;               % centred lags
w = S.w;
n_fft = 2^nextpow2(nt + S.nfft);
for jj = 1:numel(in_band)
    jf = in_band(jj);
    h = w.*exp(1i*2*pi*S.f(jf)*tau)/sum(w);
    H = fft(h, n_fft);
    Pf = double(S.P(:, 1:n_m, jf));
    proj = Pf'*u;                           % [n_m, nt]
    a = ifft(fft(proj, n_fft, 2).*H, [], 2);
    a = a(:, S.nfft/2 + (1:nt));            % centre the FIR (lag tau = 0 at t)
    q = q + Pf*a;
end
q = single(2*real(q));
end
