%%% Test of the patched CCA_POD_func (POD-subspace CCA) against the original
%%% dense formulation (C11, C22, C12 as n_pix x n_pix matrices), on small
%%% synthetic fields so the dense version fits in memory.
%%%
%%% Checks:
%%%  1. canonical correlations rho (Energy) agree with the dense version
%%%  2. the leading modes agree up to a phase (|<phi_new, phi_dense>| ~ 1)
%%%  3. with do_hilbert, a_n turns forwards: instantaneous frequency = +f0
%%%  4. ROI = 1 runs and returns full-field patterns
%%%
%%% Run from this folder: run test_cca_pod (adds ../Functions to the path).

here = fileparts(mfilename('fullpath'));
addpath(genpath(fullfile(here,'..','Functions')));

rng(1);
n_y = 24; n_x = 40; n_t = 3000; fps = 1e4; f0 = 610; % Hz
[x, y] = meshgrid(linspace(0,6,n_x), linspace(-2,2,n_y));
t = (0:n_t-1)/fps;
k = 2*pi/1.5;
%%% a shared travelling wave plus independent noise in each "half"
s = cos(2*pi*f0*t + 0.3*sin(2*pi*13*t));
c = sin(2*pi*f0*t + 0.3*sin(2*pi*13*t));
env = exp(-y.^2);
q1 = env.*cos(k*x); q2 = env.*sin(k*x);
im1 = reshape(q1(:)*s - q2(:)*c, n_y, n_x, n_t) + 0.5*randn(n_y,n_x,n_t);
im2 = reshape(0.8*(q1(:)*s - q2(:)*c), n_y, n_x, n_t) + 0.5*randn(n_y,n_x,n_t);
im_data = {single(im1), single(im2)};
xc = {x, x}; yc = {y, y};

ok = true;
for do_hilbert = [false, true]
    [modes, a_n, E, ~, t_out] = CCA_POD_func(im_data, 0, [0 0], [0 0], xc, yc, do_hilbert, t);
    [modes_d, a_d, E_d] = cca_dense(im_data, do_hilbert, xc);

    n = min(5, numel(E_d));
    err_E = max(abs(E(1:n) - E_d(1:n)));
    p1 = modes{1}(:,:,1); p1d = modes_d{1}(:,:,1);
    match = abs(p1(:)'*p1d(:))/(norm(p1(:))*norm(p1d(:)));
    fprintf('do_hilbert = %d: max |Energy - dense| (first %d) = %.2e %%, |<phi1, phi1_dense>| = %.6f\n', do_hilbert, n, err_E, match);
    ok = ok && err_E < 1e-6 && match > 1 - 1e-6;

    if do_hilbert
        ph = unwrap(angle(a_n{1}(:,1)));
        f_inst = median(gradient(ph, 1/fps))/(2*pi);
        fprintf('  median instantaneous frequency of a_1 = %.1f Hz (expect +%g)\n', f_inst, f0);
        ok = ok && abs(f_inst - f0) < 5 && numel(t_out) == n_t - 200;
    end
end

%%% ROI = 1: weights from a sub-region, patterns on the full field
[modes_r1, a_r1] = CCA_POD_func(im_data, 1, [1 4], [0 1.5], xc, yc, false, t);
fprintf('ROI = 1: mode size %s (full field %dx%d)\n', mat2str(size(modes_r1{1})), n_y, n_x);
ok = ok && isequal(size(modes_r1{1},[1 2]), [n_y n_x]);

if ok
    disp('test_cca_pod: PASS');
else
    error('test_cca_pod: FAIL');
end


function [POD_modes, a_n, Energy] = cca_dense(im_data, do_hilbert, x)
%%% The original algorithm (dense covariance matrices), with the analytic
%%% signal and coefficient conjugation corrected, for comparison.
energy_thresh = 50; num_modes = 20;
X = cell(1,2);
for i = 1:2
    [~, a, Ei, phi] = simple_POD_func(im_data{i}, 0, [0 0], [0 0], x{i}, x{i});
    N = min([100, find(cumsum(Ei) >= energy_thresh, 1, 'first')]);
    Xi = double(phi(:,1:N))*double(a(:,1:N)).';   % [n_pix, n_t]
    if do_hilbert
        Xi = hilbert(Xi.').';
        Xi(:,[1:100, end-99:end]) = [];
    end
    X{i} = Xi - mean(Xi,2);
end
n_t = size(X{1},2);
C11 = X{1}*X{1}'/(n_t-1); C22 = X{2}*X{2}'/(n_t-1); C12 = X{1}*X{2}'/(n_t-1);
C11_is = inv(sqrtm(C11 + max(real(eig(C11)))*eye(size(C11))));
C22_is = inv(sqrtm(C22 + max(real(eig(C22)))*eye(size(C22))));
[U, rho, V] = svd(C11_is*C12*C22_is);
rho = diag(rho);
r = sum(rho > 1e-10*rho(1));
rho = rho(1:r);
Energy = rho.^2/sum(rho.^2)*100;
phi1 = C11_is*U(:,1:r); phi2 = C22_is*V(:,1:r);
n = min(num_modes, r);
a_n = {X{1}.'*conj(phi1(:,1:n)), X{2}.'*conj(phi2(:,1:n))};
sz = size(x{1});
POD_modes = {reshape(phi1(:,1:n), sz(1), sz(2), n), reshape(phi2(:,1:n), sz(1), sz(2), n)};
end
