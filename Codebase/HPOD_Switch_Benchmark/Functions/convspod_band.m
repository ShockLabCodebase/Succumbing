function q = convspod_band(S, u, f_band, n_modes, analytic)
%%% Band reconstruction by convolution with the SPOD modes (the tcoeffs route
%%% of Nekkanti & Schmidt 2021, eq. 3.4), instead of block-wise inversion.
%%%
%%% For each kept bin f in f_band and each mode j = 1:n_modes, conv_coeffs
%%% gives a time-continuous coefficient a_j(f,t) (a sliding-window SPOD
%%% coefficient at every sample) with no block boundaries; the band field is
%%% sum_f,j P_j(f) a_j(f,t). That field is analytic (positive frequencies
%%% only). By default its real part is returned, so the HPOD step is the same
%%% as for invspod_band; with analytic = true the complex field itself is
%%% returned. The constant gain is arbitrary (IF and normalised amplitudes do
%%% not depend on it).
%%%
%%% Output q [nx, nt] (single; real, or complex if analytic).

if nargin < 5
    analytic = false;
end
in_band = find(S.f >= f_band(1) & S.f <= f_band(2));
[nx, nt] = size(u);
u = double(u - mean(u, 2));
n_m = min(n_modes, size(S.P, 2));
q = complex(zeros(nx, nt));
for jf = in_band
    q = q + double(S.P(:, 1:n_m, jf))*conv_coeffs(S, u, jf, n_m);
end
if analytic
    q = single(q);
else
    q = single(2*real(q));
end
end
