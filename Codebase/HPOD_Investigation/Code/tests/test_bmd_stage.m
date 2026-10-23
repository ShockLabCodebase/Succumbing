%%% Checks stage7_bmd on synthetic records where the answer is known. Two
%%% advecting tones (A1, A2) with partly overlapping amplitudes, a mean field
%%% with shock cells cos(k_s x), and a difference component locked to
%%% a1*conj(a2) that is either
%%%   "shock": a standing shock-cell pattern cos(k_s x) oscillating at the
%%%            beat frequency, or
%%%   "conv":  a wave convected at the beat frequency, cos(w_D t - k_c x).
%%% The tests must call the first standing at k_s, like the mean-field shock
%%% cells, and the second travelling downstream at k_c.

clear; close all
here = fileparts(mfilename('fullpath'));
addpath(fullfile(here, '..', 'Functions')); addpath(fullfile(here, '..'));
patches = fullfile(here, '..', '..', '..', 'Codebase_Patches', 'Schlieren_Processing_Scripts', 'Functions');
addpath(patches, fullfile(patches, 'SPOD'));
root = fullfile(tempdir, 'hpodinv_bmd_test');
if ~exist(root, 'dir'), mkdir(root); end
n_fail = 0;
check = @(ok, msg) fprintf("%s  %s\n", tern(ok), msg);

fps = 150e3; nt = 2^16; D = 16; u_j = 345;
f1 = 13.1e3; f2 = 15.0e3; c = 210;
k_s = 2*pi/0.67;                                  % shock cells every 0.67 D (rad/D)
xD = linspace(0, 8, 96); yD = linspace(-1, 1, 12);
[XD, YD] = meshgrid(xD, yD);
env = exp(-(XD - 3.5).^2/6).*(exp(-(YD - 0.5).^2/0.1) + exp(-(YD + 0.5).^2/0.1));
envc = exp(-(XD - 3).^2/4).*exp(-YD.^2/0.15);    % core region
t = (0:nt-1)/fps;
s1 = 0.6 + 0.4*sin(2*pi*t/0.02); s2 = 0.6 - 0.4*sin(2*pi*t/0.02);
k1 = 2*pi*f1/c*D*1e-3; k2 = 2*pi*f2/c*D*1e-3; kc = 2*pi*(f2 - f1)/c*D*1e-3;
for cs = ["shock" "conv"]
    rng(5);
    im = zeros(numel(yD), numel(xD), nt, 'single');
    for k = 1:nt
        A = env.*(s1(k)*cos(2*pi*f1*t(k) - k1*XD) + s2(k)*cos(2*pi*f2*t(k) - k2*XD));
        th = 2*pi*(f2 - f1)*t(k);
        if cs == "shock"
            Dk = 0.5*s1(k)*s2(k)*envc.*cos(k_s*XD)*cos(th);
        else
            Dk = 0.5*s1(k)*s2(k)*envc.*cos(th - kc*XD);
        end
        im(:,:,k) = A + Dk;
    end
    im_data = int16(1000*im + 100*randn(size(im), 'single') + 3000 + 300*envc.*cos(k_s*XD));
    x = XD; y = YD;
    data_file = fullfile(root, "Synth_" + cs + "_Fields.mat");
    save(data_file, 'im_data', 'x', 'y', 'fps', 'D', '-v7.3');
    X = permute(single(im_data), [3 1 2]);
    [L, P, f] = spod(X, 1024, [], 512, 1/fps, struct('nsave', 2, 'savefft', false));
    f = f(:).'; St = f*D*1e-3/u_j; im_mean = mean(single(im_data), 3); P = single(P);
    nfft = 1024; overlap = 50; %#ok<NASGU>
    spod_file = fullfile(root, "Synth_" + cs + "_SPOD.mat");
    save(spod_file, 'L', 'P', 'f', 'St', 'fps', 'nfft', 'overlap', 'x', 'y', 'D', 'im_mean', '-v7.3');
    clear X im im_data

    cfg = hpodinv_config(fullfile(root, cs));
    cfg.data_file = data_file; cfg.spod_file = spod_file;
    if ~exist(cfg.data_dir, 'dir'), mkdir(cfg.data_dir); end
    stage7_bmd(cfg);
    r = load(fullfile(cfg.data_dir, "stage7_bmd.mat"));
    T = r.T.BMD_D;
    fprintf("%s: standing %.2f, direction %+.2f, k_peak %.2f (k_s %.2f, kc %.2f), sim Msc %.2f, sim cross %.2f\n", ...
        cs, T.standing, T.direction, T.k_peak, k_s, kc, T.sim_Msc, T.sim_BMD_D_cross);
    ok = r.kref.k_s > 0.85*k_s && r.kref.k_s < 1.15*k_s; n_fail = n_fail + ~ok;
    check(ok, sprintf("%s: mean-field shock-cell wavenumber %.2f (true %.2f)", cs, r.kref.k_s, k_s));
    if cs == "shock"
        ok = T.standing > 0.7 && abs(T.direction) < 0.3 && abs(T.k_peak - k_s) < 0.15*k_s && T.sim_Msc > 0.6;
    else
        ok = T.standing < 0.4 && T.direction > 0.6 && T.sim_Msc < 0.4;
    end
    n_fail = n_fail + ~ok;
    check(ok, sprintf("%s case identified", cs));
end
fprintf("\n%d check(s) failed\n", n_fail);
if n_fail > 0, error("test_bmd_stage: %d failure(s)", n_fail); end

function s = tern(ok)
if ok, s = "PASS"; else, s = "FAIL"; end
end
