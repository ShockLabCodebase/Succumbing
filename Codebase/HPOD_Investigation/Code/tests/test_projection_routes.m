%%% Checks the projection-space routes against the patched group functions
%%% (Codebase/Codebase_Patches) on a small synthetic record:
%%%   1. block coefficients from projections = spod.m's A
%%%   2. tc_coeffs = tcoeffs.m (centre-referenced, not conjugated)
%%%   3. iso_route "INV" = invspod (with dt) -> analytic signal per pixel -> POD
%%%   4. iso_route "TC"  = hpod_from_spod_tcoeffs
%%% Run locally from the Code folder: run("tests/test_projection_routes.m")

clear; close all
here = fileparts(mfilename('fullpath'));
addpath(fullfile(here, '..', 'Functions'));
addpath(fullfile(here, '..'));
patches = fullfile(here, '..', '..', '..', 'Codebase_Patches', 'Schlieren_Processing_Scripts', 'Functions');
addpath(patches, fullfile(patches, 'SPOD'));
root = fullfile(tempdir, 'hpodinv_test');
if ~exist(root, 'dir'), mkdir(root); end
rng(3);
n_fail = 0;
check = @(ok, msg) fprintf("%s  %s\n", tern(ok), msg);

%% Synthetic record: two advecting tones switching, plus noise
fps = 150e3; nt = 2^16; D = 16; u_j = 345;
f1 = 13.1e3; f2 = 15.0e3; c = 210;               % convection speed (m/s)
xD = linspace(0, 6, 48); yD = linspace(-1, 1, 10);
[XD, YD] = meshgrid(xD, yD);
env = exp(-(XD - 3).^2/4).*(exp(-(YD - 0.5).^2/0.1) + exp(-(YD + 0.5).^2/0.1));
t = (0:nt-1)/fps;
on1 = zeros(1, nt); tt = 1; st = 1;              % random exclusive dwells of 3-20 ms
while tt <= nt
    len = round((3 + 17*rand)*1e-3*fps);
    on1(tt:min(nt, tt+len-1)) = st;
    st = 1 - st; tt = tt + len;
end
s1 = movmean(double(on1), 23); s2 = 1 - s1;
s2(20000:22000) = 0.6;  s1(20000:22000) = 1;      % one coexistence interval
xm = XD*D*1e-3;
im = zeros(numel(yD), numel(xD), nt, 'single');
for k = 1:nt
    im(:,:,k) = env.*(s1(k)*cos(2*pi*f1*(t(k) - xm/c)) + s2(k)*cos(2*pi*f2*(t(k) - xm/(0.95*c))));
end
im_data = int16(1000*im + 150*randn(size(im), 'single') + 3000);
x = XD; y = YD;
data_file = fullfile(root, 'Synthetic_Fields.mat');
save(data_file, 'im_data', 'x', 'y', 'fps', 'D', '-v7.3');

%% SPOD with the patched spod.m, saved as SPOD_Analysis does
nfft = 1024; overlap = 50; dt = 1/fps; nOvlp = nfft*overlap/100;
X = permute(single(im_data), [3 1 2]);
opts = struct('nsave', 4, 'savefft', false);
[L, P, f, ~, A] = spod(X, nfft, [], nOvlp, dt, opts);
St = f*D*1e-3/u_j; f = f(:).'; St = St(:).';
im_mean = mean(single(im_data), 3);
P = single(P(:,:,:,1:4));
spod_file = fullfile(root, 'Synthetic_SPOD.mat');
save(spod_file, 'L', 'P', 'A', 'f', 'St', 'fps', 'nfft', 'overlap', 'x', 'y', 'D', 'im_mean', '-v7.3');

%% Stage 1 on the synthetic files
cfg = hpodinv_config(root);
cfg.data_file = data_file; cfg.spod_file = spod_file; cfg.chunk = 4096;
cfg.probe_xD = [2 3]; cfg.probe_yD = 0.5;
stage1_project(cfg);
m = load(cfg.proj_file, 'A_check');
ok = all(m.A_check.rel_err < 1e-3); n_fail = n_fail + ~ok;
check(ok, sprintf("1. block coefficients vs spod A: max rel err %.1e", max(m.A_check.rel_err)));

S = load_proj(cfg);
fprintf("tones %.0f, %.0f Hz (true %.0f, %.0f)\n", S.f_tone, f1, f2);
B = 0.5*S.df; nm = 2;
v = S.valid;

%% 2. tc_coeffs vs tcoeffs.m for one column
[~, b2] = min(abs(f - f2));
k = find(S.col_bin == b2 & S.col_mode == 1, 1);
a_ref = tcoeffs(X, P(b2,:,:,1:2), nfft, [], 1, [1 1], b2);
a_ref = double(squeeze(a_ref)).';
e = relerr(double(S.a_tc(k, v)), a_ref(v));
ok = e < 2e-3; n_fail = n_fail + ~ok;
check(ok, sprintf("2. tc_coeffs vs tcoeffs: rel err %.1e", e));

%% 3. INV route vs invspod -> analytic signal -> POD on the real field
tr = iso_route(S, "INV", f2, B, nm);
bb = unique(S.col_bin(tr.cols));
A_band = zeros(size(A), 'like', A); A_band(bb, :, :) = A(bb, :, :);
r = invspod(P, A_band, nfft, nOvlp, [1 nm], 0, dt);         % [nt_inv, ny, nx]
r = reshape(double(r), size(r,1), []);
r = r - mean(r, 1);
z = hilbert(r);                                             % per pixel (columns)
[~, ~, V] = svd(z(v, :), 'econ');
a_dir = (V(:,1).'*z.').';            % rows = time: the spatial mode is conj(V(:,1))
e = relerr(tr.a(1, v), a_dir(v).');
ok = e < 1e-3; n_fail = n_fail + ~ok;
check(ok, sprintf("3. INV route vs invspod + hilbert + POD: rel err %.1e (mode-1 energy %.3f)", e, tr.energy(1)));

%% 4. TC route vs hpod_from_spod_tcoeffs
tr = iso_route(S, "TC", f2, B, nm);
P_band = P(bb(1):bb(end), :, :, :);
[~, a_n] = hpod_from_spod_tcoeffs(X, t, P_band, bb(1), nfft, nm, 2);   % time-first data (patch of 23 Oct, 14:02)
trim = nfft/2;
a_h = complex(NaN(1, nt)); a_h(trim+1:nt-trim) = a_n(:, 1).';
e = relerr(tr.a(1, v), a_h(v));
ok = e < 2e-3; n_fail = n_fail + ~ok;
check(ok, sprintf("4. TC route vs hpod_from_spod_tcoeffs: rel err %.1e", e));

%% 5. The tone tracks look right: IF of each band at its tone
for i = 1:2
    tr = iso_route(S, "TC", S.f_tone(i), B, nm);
    fi = phase_slope_if(tr.a(1,:), round(S.fps/B))*S.fps;
    on = [s1; s2]; on = on(i, :) > 0.9;
    e = median(abs(fi(v(on(v))) - [f1 f2]*(i == [1; 2])));
    ok = e < 20; n_fail = n_fail + ~ok;
    check(ok, sprintf("5. tone %d IF median error %.1f Hz where on", i, e));
end

fprintf("\n%d check(s) failed\n", n_fail);
if n_fail > 0, error("test_projection_routes: %d failure(s)", n_fail); end

function e = relerr(a, b)
%%% Relative error after removing a constant complex factor (mode sign/phase
%%% and normalisation are arbitrary).
a = a(:); b = b(:);
g = (a'*b)/(a'*a);
e = norm(g*a - b)/norm(b);
end

function s = tern(ok)
if ok, s = "PASS"; else, s = "FAIL"; end
end
