%%% Test of hpod_from_spod_tcoeffs (HPOD of a band isolated with SPOD
%%% convolution coefficients) on synthetic data: a frequency-modulated
%%% travelling wave at f0 plus a second wave at f1 (outside the band) and noise.
%%%
%%% Checks:
%%%  1. the instantaneous frequency of HPOD mode 1 is positive and follows the
%%%     true f(t) = f0 + df*sin(2 pi fm t) (rms error small compared with df)
%%%  2. it is closer to the truth than HPOD of the raw data (where the f1 wave
%%%     and the noise leak in)
%%%  3. the mode is the f0 wave (|<phi, e^{-ikx} env>| ~ 1), so Z = phi*a.'
%%%     turns forwards and travels downstream
%%%
%%% Run from this folder: run test_hpod_tcoeffs (adds ../Functions).

here = fileparts(mfilename('fullpath'));
addpath(genpath(fullfile(here,'..','Functions')));

rng(4);
n_y = 16; n_x = 48; n_t = 8000; fps = 2e4;
f0 = 1500; df = 40; fm = 15; f1 = 2600;
[x, y] = meshgrid(linspace(0,6,n_x), linspace(-1,1,n_y));
t = (0:n_t-1)/fps;
k0 = 2*pi/1.0; k1 = 2*pi/0.6;
phase0 = 2*pi*f0*t - (df/fm)*cos(2*pi*fm*t);          % d(phase0)/dt/2pi = f0 + df*sin(2 pi fm t)
f_true = f0 + df*sin(2*pi*fm*t);
env = exp(-y.^2/0.3);
q = env.*cos(k0*x - reshape(phase0,1,1,[])) + 0.8*env.*cos(k1*x - reshape(2*pi*f1*t,1,1,[]));
q = single(q + 0.5*randn(size(q)));

%%% SPOD (as SPOD_Analysis: data (t,y,x), Hamming, 50% overlap)
nfft = 256;
opts.nsave = 2;
[L, P, f] = spod(permute(q,[3 1 2]), nfft, [], nfft/2, 1/fps, opts);
P = reshape(P, [numel(f), n_y, n_x, size(P,ndims(P))]);
df_bin = f(2)-f(1);
[~, c] = min(abs(f - f0));
hw = round(150/df_bin);                               % +/- 150 Hz band
bins = c-hw:c+hw;

[modes, a, E, ~, t_out] = hpod_from_spod_tcoeffs(permute(q,[3 1 2]), t, P(bins,:,:,:), bins(1), nfft, 2, 4);
[modes_raw, a_raw, ~, ~, ~, t_raw] = hilbert_POD_func(q, t, 0, [0 0], [0 0], x, y);

f_inst = @(a, tt) gradient(unwrap(angle(double(a))), tt(2)-tt(1))/(2*pi);
smooth_n = round(fps/f0*5);
fi = movmean(f_inst(a(:,1), t_out), smooth_n);
fr = movmean(f_inst(a_raw(:,1), t_raw), smooth_n);
inner = @(v) v(round(end*0.1):round(end*0.9));
err_tc = rms(inner(fi(:) - interp1(t, f_true, t_out(:))));
err_raw = rms(inner(fr(:) - interp1(t, f_true, t_raw(:))));
ref = env.*exp(-1i*k0*x);
match = abs(sum(conj(ref(:)).*reshape(modes(:,:,1),[],1)))/norm(ref(:));
fprintf('mean f_inst = %.1f Hz (f0 = %g); rms error vs true f(t): tcoeffs %.2f Hz, raw HPOD %.2f Hz (df = %g Hz)\n', mean(fi), f0, err_tc, err_raw, df);
fprintf('|<phi_1, f0 wave>| = %.4f; mode-1 energy %.1f %% of the band\n', match, E(1));

ok = mean(fi) > 0 && abs(mean(fi) - f0) < 2 && err_tc < 0.25*df && err_tc < err_raw && match > 0.98;
if ok
    disp('test_hpod_tcoeffs: PASS');
else
    error('test_hpod_tcoeffs: FAIL');
end
