%%% Test of the twin-jet half comparison (hilbert_POD_func on each half, then
%%% correct_phase_between_halves): a known phase lag between two synthetic
%%% halves must come back as the relative phase psi = phase_1 - phase_2.
%%%
%%% Half 1: cos(k x - w t), half 2: cos(k x - w t + Delta), plus noise.
%%% Expected: psi = Delta for any Delta (also when half 2's mode carries an
%%% arbitrary phase), and both instantaneous frequencies +f0.
%%%
%%% Run from this folder: run test_half_slices_phase (adds ../Functions).

here = fileparts(mfilename('fullpath'));
addpath(genpath(fullfile(here,'..','Functions')));

rng(2);
n_y = 20; n_x = 60; n_t = 4000; fps = 2e4; f0 = 900;
[x, y] = meshgrid(linspace(0,6,n_x), linspace(0.1,2,n_y));
t = (0:n_t-1)/fps;
k = 2*pi/1.2;
env = exp(-(y-0.6).^2/0.2);
ok = true;
for Delta = [0.7, 2.4, -1.9]
    q1 = env.*cos(k*x - reshape(2*pi*f0*t,1,1,[]));
    q2 = env.*cos(k*x - reshape(2*pi*f0*t,1,1,[]) + Delta);
    q1 = single(q1 + 0.2*randn(size(q1)));
    q2 = single(q2 + 0.2*randn(size(q2)));

    [modes1, a1, ~, ~, ~, t1] = hilbert_POD_func(q1, t, 0, [0 0], [0 0], x, y);
    [modes2, a2] = hilbert_POD_func(q2, t, 0, [0 0], [0 0], x, y);
    % an arbitrary phase on half 2's mode/coefficient pair (the field a*phi is
    % unchanged), as eigensolvers give; theta has to undo it
    beta = 1.3;
    modes2 = modes2*exp(-1i*beta);
    a2 = a2*exp(1i*beta);
    ph1 = unwrap(angle(a1(:,1)));
    ph2 = unwrap(angle(a2(:,1)));

    [ph1c, ph2c, ~, ~, ~, ~, theta] = correct_phase_between_halves(modes1(:,:,1), modes2(:,:,1), a1(:,1), a2(:,1), ph1, ph2, true);
    psi = angle(mean(exp(1i*(ph1c - ph2c))));
    f1 = median(gradient(ph1c, 1/fps))/(2*pi);
    f2 = median(gradient(ph2c, 1/fps))/(2*pi);
    err = abs(angle(exp(1i*(psi - Delta))));
    fprintf('Delta = %+.2f rad: psi = %+.3f rad (error %.3f), theta = %.2f, f1 = %.1f Hz, f2 = %.1f Hz\n', Delta, psi, err, theta, f1, f2);
    ok = ok && err < 0.05 && abs(f1 - f0) < 5 && abs(f2 - f0) < 5;
end

if ok
    disp('test_half_slices_phase: PASS');
else
    error('test_half_slices_phase: FAIL');
end
