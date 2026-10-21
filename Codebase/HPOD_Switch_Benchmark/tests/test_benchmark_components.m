%%% Checks of the benchmark's building blocks against known answers.
%%% Run from the HPOD_Switch_Benchmark folder: run("tests/test_benchmark_components.m")

clear; close all
addpath(genpath(fullfile(fileparts(mfilename('fullpath')), '..', 'Functions')));
n_fail = 0;
check = @(ok, msg) fprintf("%s  %s\n", ternary(ok), msg);

%% 1. Line-fit IF of a pure complex tone is exact
t = 0:9999; f = 0.1234;
fi = phase_slope_if(exp(1i*2*pi*f*t), 41);
e = max(abs(fi(isfinite(fi)) - f));
ok = e < 1e-10; n_fail = n_fail + ~ok;
check(ok, sprintf("pure-tone IF error %.1e", e));

%% 2. Two-tone IF matches the closed form (Mandel; Boashash 1992 eq. 30)
f1 = 0.1; f2 = 0.11; r = 0.6; dw = 2*pi*(f2 - f1);
z = exp(1i*2*pi*f1*t) + r*exp(1i*2*pi*f2*t);
fi = phase_slope_if(z, 3);                        % 3-point fit ~ derivative
th = 2*pi*f1 + dw*(r^2 + r*cos(dw*t))./(1 + r^2 + 2*r*cos(dw*t));
e = max(abs(fi(2:end-1) - th(2:end-1)/(2*pi)))/(f2 - f1);
ok = e < 0.02; n_fail = n_fail + ~ok;
check(ok, sprintf("two-tone IF vs closed form, max error %.3f df", e));

%% 3. Time-mean IF of two tones equals the stronger tone (r < 1)
Tb = round(1/(f2 - f1)); nb = 20*Tb;
mf = mean(fi(2:nb+1));
ok = abs(mf - f1)/(f2 - f1) < 0.01; n_fail = n_fail + ~ok;
check(ok, sprintf("mean IF = f1 + %.4f df (expect 0)", (mf - f1)/(f2 - f1)));

%% 4. Band-pass gain: tone at fc returns amplitude 1
x = cos(2*pi*0.1*t);
for s = ["rect","gauss","bump"]
    y = bandpass_analytic(x, 0.1, s, 0.01);
    a = median(abs(y(2000:8000)));
    ok = abs(a - 1) < 1e-3; n_fail = n_fail + ~ok;
    check(ok, sprintf("%s band-pass gain %.4f", s, a));
end

%% 5. SPOD -> full-band inverse reconstructs a travelling wave
p = bench_default_params(true);
nt = 2^14; tt = 0:nt-1; xx = (0:31) - 16; c = 0.8;
u = single(cos(2*pi*0.1*(tt - xx'/c)) + 0.5*cos(2*pi*0.12*(tt - xx'/c)));
S = spod_welch(u, 512, 87.5, [0.05 0.15], 8);
q = invspod_band(S, [0.05 0.15], 8);
mid = 1024:nt-1024;
e = norm(double(q(:, mid) - u(:, mid)), 'fro')/norm(double(u(:, mid)), 'fro');
ok = e < 0.02; n_fail = n_fail + ~ok;
check(ok, sprintf("SPOD band reconstruction error %.4f", e));

%% 5b. Convolution (tcoeffs-style) reconstruction matches up to a constant gain
qc = double(convspod_band(S, u, [0.05 0.15], 8));
um = double(u(:, mid)); qm = qc(:, mid);
g = (qm(:)'*um(:))/(qm(:)'*qm(:));
e = norm(g*qm - um, 'fro')/norm(um, 'fro');
ok = e < 0.02; n_fail = n_fail + ~ok;
check(ok, sprintf("convolution reconstruction error %.4f (gain %.3f)", e, g));

%% 6. HPOD of a travelling wave: one mode, IF = f
H = hpod_time(u(:, :) - single(0.5*cos(2*pi*0.12*(tt - xx'/c))), 2, 0.05);
fi = phase_slope_if(H.a(1,:), 41);
e = median(abs(fi(mid) - 0.1));
ok = H.energy(1) > 0.99 && e < 1e-6; n_fail = n_fail + ~ok;
check(ok, sprintf("HPOD mode-1 energy %.4f, IF error %.1e", H.energy(1), e));

%% 7. Hilbert floor is ~0 for slow amplitude modulation, and grows when
%%    the modulation approaches the carrier (Nuttall & Bedrosian 1966)
sc.t = 0:2^15-1; sc.nt = numel(sc.t); sc.f1 = 0.1; sc.f2 = 0.1;
sc.theta1 = 2*pi*0.1*sc.t; sc.theta2 = sc.theta1;
sc.a1 = 1 + 0.5*cos(2*pi*0.005*sc.t); sc.a2 = 1 + 0.5*cos(2*pi*0.09*sc.t);
hf = hilbert_floor(sc, 41);
ok = hf.if_rms_rel(1) < 1e-4 && hf.nuttall_frac(1) < 1e-5; n_fail = n_fail + ~ok;   % finite record: leakage only
check(ok, sprintf("slow AM: floor %.1e, Nuttall frac %.1e", hf.if_rms_rel(1), hf.nuttall_frac(1)));
ok = hf.if_rms_rel(2) < 1e-3; n_fail = n_fail + ~ok;
check(ok, sprintf("fast AM below f0 (Bedrosian holds): floor %.1e", hf.if_rms_rel(2)));

%% 8. Scenario: states and transitions are consistent
p.n_repeat = 1;
sc2 = make_switch_scenario(p, 0.1, 1);
ok = height(sc2.trans) == height(sc2.seg) - 1 && sc2.nt == sc2.seg.t_end(end); n_fail = n_fail + ~ok;
check(ok, sprintf("scenario: %d segments, %d transitions, nt = %d", height(sc2.seg), height(sc2.trans), sc2.nt));

fprintf("\n%d check(s) failed\n", n_fail);
if n_fail > 0
    error("test_benchmark_components: %d failure(s)", n_fail);
end

function s = ternary(ok)
if ok, s = "PASS"; else, s = "FAIL"; end
end
