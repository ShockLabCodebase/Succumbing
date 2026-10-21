function fld = make_wavepacket_field(p, sc, L_lambda, snr_dB, rng_seed)
%%% Synthetic 1D field of two advecting wavepackets plus white noise.
%%%
%%% u(x,t) = sum_k E_k(x) a_k(t - x/c) cos(theta_k(t - x/c)) + noise,
%%% with x = 0 at the envelope centre, a common phase speed c (tone A has
%%% p.ppw points per wavelength) and Gaussian envelopes E_k of std
%%% p.env_sigma_lambda wavelengths. The amplitude schedule advects with the
%%% waves, so a switch reaches x = 0 at the time given in sc.
%%%
%%% SNR is per point: tone power (amplitude 1) over noise variance, at x = 0.
%%%
%%% Output fld: u [nx, nt] (single), x, c, ix0 (index of x = 0), probe (u at
%%% x = 0), sigma (noise std), z1, z2 (clean analytic signals at x = 0),
%%% M_eff = sum(E1.^2), the SNR gain of a projection onto tone A's envelope
%%% (the most a spatial mode can gain over the probe).

rs = RandStream('mt19937ar', 'Seed', rng_seed);

lambda1 = p.ppw;                      % grid points
c = lambda1*sc.f1;                    % grid points per sample
nx = max(2, round(L_lambda*p.ppw));
x = (0:nx-1) - floor(nx/2);           % x = 0 is a grid point
sig_x = p.env_sigma_lambda*lambda1;
E1 = exp(-x.^2/(2*sig_x^2));
E2 = exp(-(x - p.env_shift_lambda*lambda1).^2/(2*sig_x^2));

u = zeros(nx, sc.nt, 'single');
t = sc.t;
for ix = 1:nx
    tr = t - x(ix)/c;                 % retarded time
    a1 = interp1(t, sc.a1, tr, 'linear', 'extrap');
    a2 = interp1(t, sc.a2, tr, 'linear', 'extrap');
    th1 = interp1(t, sc.theta1, tr, 'linear', 'extrap');
    th2 = interp1(t, sc.theta2, tr, 'linear', 'extrap');
    u(ix,:) = single(E1(ix)*a1.*cos(th1) + E2(ix)*a2.*cos(th2));
end

snr_lin = 10^(snr_dB/10);
sigma = sqrt(0.5/snr_lin);
u = u + single(sigma*randn(rs, nx, sc.nt));

fld.u = u;
fld.x = x;
fld.c = c;
fld.ix0 = find(x == 0, 1);
fld.M_eff = sum(E1.^2);               % SNR gain of projecting onto the envelope
fld.probe = double(u(fld.ix0,:));
fld.sigma = sigma;
fld.snr_dB = snr_dB;
fld.L_lambda = L_lambda;
fld.z1 = sc.a1.*exp(1i*sc.theta1);
fld.z2 = sc.a2.*exp(1i*sc.theta2);
end
