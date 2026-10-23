function stage7_bmd(cfg)
%%% Stage 7: targeted bispectral mode decomposition (BMD; Schmidt 2020, as
%%% bmd_modified.m in Codebase_Patches) of the A2 - A1 difference triad, to
%%% test whether the difference component is the shock-cell structure
%%% responding at the beat frequency.
%%%
%%% One pass over the record computes block FFTs only at the bins the triads
%%% need (A1 +/- 3, A2 +/- 3 bins, and the difference and sum bins they
%%% reach), with bmd_modified's conventions: Hamming window, winWeight/nDFT
%%% scaling, long-time mean removed, uniform weight, nfft cfg.bmd_nfft, 50%
%%% overlap. Then:
%%%  - the local mode bispectrum |lambda| (and bicoherence) around the
%%%    difference triad (A2, -A1) -> A2-A1 and, as a check, the sum triad
%%%    (A1, A2) -> A1+A2;
%%%  - at the peak triads, the interaction mode (Q3 a) and the cross-frequency
%%%    field ((Q1 .* Q2) a);
%%%  - hypothesis tests on the interaction mode, against the tone modes and
%%%    the shock-cell structure of the mean field:
%%%      standing index  S = |sum phi^2|/sum|phi|^2 (1: standing pattern, as
%%%                      an oscillating shock-cell system; ~0: travelling wave)
%%%      directionality  (E_down - E_up)/(E_down + E_up) of the axial
%%%                      wavenumber spectrum (0 standing, +1 downstream)
%%%      peak axial wavenumber, against the shock-cell wavenumber k_s of the
%%%                      mean field, the tones' k1, k2, k2 - k1, and a
%%%                      convected wave at the beat frequency, k1*df/f1
%%%      similarity      to the shock-cell displacement pattern dM/dx, the
%%%                      shock-cell pattern of the mean field, the St = 0 SPOD
%%%                      mode (the A1/A2 short-time mean change) and the
%%%                      cross-frequency field (the local product: what an
%%%                      optical/sensor intermodulation would give)
%%% Writes Data/stage7_bmd.mat and Figures/F10_bmd.png.

t0 = tic;
if ~isfield(cfg, 'bmd_nfft'), cfg.bmd_nfft = 1024; end
if ~isfield(cfg, 'bmd_half'), cfg.bmd_half = 3; end
if ~isfield(cfg, 'bmd_fast_maps'), cfg.bmd_fast_maps = false; end
tag = "";
if cfg.bmd_fast_maps, tag = "_fast"; end       % maps by Watson's iteration (5 starts); peaks by Mengi-Overton
N = cfg.bmd_nfft; nOvlp = N/2;
sp = matfile(cfg.spod_file);
St = double(sp.St); St = St(:).'; fS = double(sp.f); fS = fS(:).';
L4 = double(sp.L); fps = double(sp.fps);
x = double(sp.x); y = double(sp.y);
M = double(sp.im_mean);
[n_y, n_x] = size(M); n_pix = n_y*n_x;
f_tone = zeros(1, 2);
for i = 1:2
    in = find(abs(St - cfg.St_tone_guess(i)) <= cfg.tone_search);
    [~, j] = max(L4(in, 1)); f_tone(i) = fS(in(j));
end
St_per_Hz = St(2)/fS(2);
df_b = fps/N;
k1c = round(f_tone(1)/df_b); k2c = round(f_tone(2)/df_b);
h = cfg.bmd_half;
kA1 = k1c + (-h:h); kA2 = k2c + (-h:h);
kD = unique(kA2.' - kA1); kS = unique(kA1.' + kA2);
kall = unique([kA1, kA2, kD(:).', kS(:).']);
nb = numel(kall); row = containers.Map(num2cell(kall), num2cell(1:nb));
fprintf("BMD: nfft %d (df %.1f Hz), tones %.1f / %.1f Hz -> bins %d / %d; %d bins in the pass\n", ...
    N, df_b, f_tone, k1c, k2c, nb);

%% One pass: block FFTs at the needed bins
dfile = matfile(cfg.data_file);
sz = size(dfile, 'im_data'); nt = sz(3);
nBlks = floor((nt - nOvlp)/(N - nOvlp));
w = 0.54 - 0.46*cos(2*pi*(0:N-1)/(N-1));
E = single((1/mean(w))/N*exp(-2i*pi*kall(:)*(0:N-1)/N).*w);    % [nb, N]
Q = complex(zeros(nb, n_pix, nBlks, 'single'));
xm = single(reshape(M, 1, n_pix));
per = 8;                                          % blocks per read
pw = zeros(nb, 1);
for b0 = 1:per:nBlks
    b1 = min(nBlks, b0 + per - 1);
    s0 = (b0-1)*(N - nOvlp) + 1; s1 = (b1-1)*(N - nOvlp) + N;
    X = reshape(single(dfile.im_data(:, :, s0:s1)), n_pix, []).' - xm;   % [frames, n_pix]
    for b = b0:b1
        o = (b-1)*(N - nOvlp) - (s0 - 1);
        Q(:, :, b) = E*X(o + (1:N), :);
    end
    if mod(b0 - 1, 20*per) == 0, fprintf("  block %d/%d [%.0f s]\n", b0, nBlks, toc(t0)); end
end
clear X
for r = 1:nb, pw(r) = mean(abs(Q(r, :, :)).^2, 'all'); end
fprintf("Pass done [%.0f s]\n", toc(t0));

%% Local mode bispectra
dmap = struct('k1', kA2, 'k2', -kA1, 'L', NaN(numel(kA2), numel(kA1)), 'Lb', NaN(numel(kA2), numel(kA1)));
smap = struct('k1', kA1, 'k2', kA2, 'L', NaN(numel(kA1), numel(kA2)), 'Lb', NaN(numel(kA1), numel(kA2)));
for i = 1:numel(kA2)
    for j = 1:numel(kA1)
        [dmap.L(i,j), dmap.Lb(i,j)] = triad(Q, row, kA2(i), -kA1(j), cfg.bmd_fast_maps);
        [smap.L(j,i), smap.Lb(j,i)] = triad(Q, row, kA1(j), kA2(i), cfg.bmd_fast_maps);
    end
    fprintf("  maps row %d/%d [%.0f s]\n", i, numel(kA2), toc(t0));
    save(fullfile(cfg.data_dir, "stage7_bmd" + tag + "_maps_partial.mat"), 'dmap', 'smap', 'kA1', 'kA2');
end

%% Modes at the peak of each map
[~, id] = max(abs(dmap.L(:))); [i, j] = ind2sub(size(dmap.L), id);
[dpk_L, ~, aD, PsiD, PsiDc] = triad(Q, row, kA2(i), -kA1(j), false);
dpk = [kA2(i), kA1(j)];
[~, id] = max(abs(smap.L(:))); [i, j] = ind2sub(size(smap.L), id);
[spk_L, ~, ~, PsiS, PsiSc] = triad(Q, row, kA1(i), kA2(j), false);
spk = [kA1(i), kA2(j)];
% tone fields at the peak bins: leading POD (SPOD-like) mode of Q at that bin
tone = @(k) lead_mode(squeeze(Q(row(k), :, :)));
phi1 = tone(dpk(2)); phi2 = tone(dpk(1));
fprintf("Peaks: difference (%d, -%d) -> %d, |L| %.3g; sum (%d, %d) -> %d [%.0f s]\n", ...
    dpk(1), dpk(2), dpk(1) - dpk(2), max(abs(dmap.L(:))), spk, sum(spk), toc(t0));

%% Hypothesis tests
dx = mean(diff(x(1,:)));
G = gradient(M, dx, 1);                            % dM/dx: rigid streamwise shift of the shock cells
win = max(3, round(1.0/dx));                       % 1 D running mean along x
Msc = M - movmean(M, win, 2);                      % shock-cell pattern of the mean field
St0 = double(squeeze(sp.P(1, :, :, 1)));           % SPOD mode 1 at St = 0
s6 = struct();
f6 = fullfile(cfg.data_dir, "stage6_checks.mat");
if isfile(f6), s6 = load(f6, 'shapes'); s6 = s6.shapes; end
reg = abs(y) <= 0.6 & x >= 0.3 & x <= 7;           % jet core and shear layers
ax = abs(y) <= 0.2;                                % axis strip for wavenumbers
fields = struct('BMD_D', reshape(PsiD, n_y, n_x), 'BMD_D_cross', reshape(PsiDc, n_y, n_x), ...
    'BMD_S', reshape(PsiS, n_y, n_x), 'BMD_S_cross', reshape(PsiSc, n_y, n_x), ...
    'A1', reshape(phi1, n_y, n_x), 'A2', reshape(phi2, n_y, n_x), 'St0', St0, 'Msc', Msc, 'dMdx', G);
if isfield(s6, 'D'), fields.HPOD_D = s6.D; end
refs = ["dMdx" "Msc" "St0" "BMD_D_cross"];
xk = x(1, x(1,:) >= 0.3 & x(1,:) <= 7);
kgrid = linspace(-40, 40, 4001);                   % rad per D
T = struct();
for fn = string(fieldnames(fields)).'
    p = fields.(fn);
    r = struct();
    r.standing = abs(sum(p(reg).^2))/sum(abs(p(reg)).^2);
    prof = mean(p(ax(:, 1), x(1,:) >= 0.3 & x(1,:) <= 7), 1);
    prof = prof - mean(prof);
    wk = hann(numel(prof)).';
    % a downstream wave cos(wt - kx) has phi ~ e^{-ikx} (a(t) ~ e^{+iwt}), so
    % sum phi e^{+ikx} peaks at k > 0 for downstream travel
    Fk = abs(exp(1i*kgrid(:)*xk)*(prof.*wk).').^2;
    Fk = Fk(:).';
    down = sum(Fk(kgrid > 0)); up = sum(Fk(kgrid < 0));
    r.direction = (down - up)/(down + up);
    [~, ip] = max(Fk); r.k_peak = abs(kgrid(ip));
    r.Fk = single(Fk);
    for rf = refs
        q = fields.(rf);
        r.(sprintf('sim_%s', rf)) = abs(p(reg)'*q(reg))/(norm(p(reg))*norm(q(reg)));
    end
    T.(fn) = r;
    fprintf("%-12s standing %.2f, direction %+.2f, k_peak %.2f rad/D, sim dMdx %.2f, Msc %.2f, St0 %.2f, cross %.2f\n", ...
        fn, r.standing, r.direction, r.k_peak, r.sim_dMdx, r.sim_Msc, r.sim_St0, r.sim_BMD_D_cross);
end
kref.k_s = T.Msc.k_peak;
kref.k1 = T.A1.k_peak; kref.k2 = T.A2.k_peak;
kref.k21 = abs(kref.k2 - kref.k1);
kref.kc_beat = kref.k1*(f_tone(2) - f_tone(1))/f_tone(1);
fprintf("Reference wavenumbers (rad/D): shock cells %.2f (spacing %.2f D), A1 %.2f, A2 %.2f, A2-A1 %.2f, convected beat %.2f\n", ...
    kref.k_s, 2*pi/kref.k_s, kref.k1, kref.k2, kref.k21, kref.kc_beat);

%% Figure
if ~exist(cfg.fig_dir, "dir"), mkdir(cfg.fig_dir); end
fig = figure('Color', 'w', 'Position', [50 50 1500 1000]);
tl = tiledlayout(3, 4, 'TileSpacing', 'compact');
title(tl, sprintf('Targeted BMD (nfft %d, %d blocks): is the A2 - A1 component the shock-cell structure at the beat frequency?', N, nBlks));
nexttile;
imagesc(kA1*df_b/1e3, kA2*df_b/1e3, abs(dmap.Lb)); set(gca, 'YDir', 'normal'); colorbar
xlabel('A1 bin (kHz)'); ylabel('A2 bin (kHz)'); title('bicoherence of (A2, -A1) \rightarrow A2 - A1');
nexttile;
imagesc(kA2*df_b/1e3, kA1*df_b/1e3, abs(smap.Lb)); set(gca, 'YDir', 'normal'); colorbar
xlabel('A2 bin (kHz)'); ylabel('A1 bin (kHz)'); title('bicoherence of (A1, A2) \rightarrow A1 + A2');
show = {'BMD_D', 'BMD interaction mode at A2 - A1'; 'BMD_D_cross', 'cross-frequency field A2 \cdot A1^*'; ...
    'dMdx', '\partial(mean)/\partialx (shock-cell shift)'; 'St0', 'SPOD mode 1, St = 0'; ...
    'BMD_S', 'BMD interaction mode at A1 + A2'; 'A1', 'A1 field (leading mode)'};
for q = 1:size(show, 1)
    nexttile;
    p = fields.(show{q,1});
    P = real(p*exp(-1i*angle(sum(p(reg).^2))/2));    % rotate to the most-real phase
    imagesc(x(1,:), y(:,1), P); axis image; set(gca, 'YDir', 'normal'); xlim([0 8]); ylim([-1.5 1.5]);
    clim([-1 1]*max(abs(P(reg)))); colormap(gca, redblue()); title(show{q,2}, 'Interpreter', 'tex');
end
nexttile([1 2]); hold on
for fn = ["BMD_D" "BMD_S" "A1" "A2" "Msc"]
    Fk = double(T.(fn).Fk); plot(kgrid, Fk/max(Fk), 'DisplayName', strrep(fn, '_', ' '));
end
for kk = [kref.k_s, kref.k21, kref.kc_beat]
    xline(-kk, ':'); xline(kk, ':');
end
xlim([-30 30]); xlabel('axial wavenumber k (rad/D); k > 0 = travelling downstream'); ylabel('normalised |FT|^2 on the axis');
legend('Location', 'northeast'); title(sprintf('dotted: \\pm k_s %.1f, \\pm(k_2 - k_1) %.1f, \\pm k_{beat,conv} %.1f', kref.k_s, kref.k21, kref.kc_beat));
nexttile([1 2]);
names = ["BMD_D" "HPOD_D" "BMD_S" "A1" "A2"]; names = names(isfield(T, names));
V = zeros(numel(names), 5);
for q = 1:numel(names)
    r = T.(names(q)); V(q,:) = [r.standing, abs(r.direction), r.sim_dMdx, r.sim_St0, r.sim_BMD_D_cross];
end
bar(categorical(strrep(names, '_', ' '), strrep(names, '_', ' ')), V);
legend('standing index', '|directionality|', 'sim. \partialM/\partialx', 'sim. St0 mode', 'sim. cross field', 'Location', 'eastoutside');
ylim([0 1]); title('tests (region |y| \leq 0.6D, 0.3 \leq x/D \leq 7)');
exportgraphics(fig, fullfile(cfg.fig_dir, "F10_bmd" + tag + ".png"), 'Resolution', 150);
close all

info = struct('nfft', N, 'nBlks', nBlks, 'df', df_b, 'f_tone', f_tone, 'St_per_Hz', St_per_Hz, ...
    'kall', kall, 'pw', pw, 'dpk', dpk, 'spk', spk, 'dpk_L', dpk_L, 'spk_L', spk_L, 'fast_maps', cfg.bmd_fast_maps);
save(fullfile(cfg.data_dir, "stage7_bmd" + tag + ".mat"), 'info', 'dmap', 'smap', 'T', 'kref', 'fields', 'kgrid', 'aD', '-v7.3');
fprintf("Stage 7 done [%.0f s]\n", toc(t0));
end

function [L, Lb, a, Psi3, Psi12] = triad(Q, row, k1, k2, fast)
%%% BMD of one triad (k1, k2) -> k1 + k2 (bins may be negative: Q(-k) = conj(Q(k))).
%%% fast: numerical radius by Watson's simple iteration from 5 random starts
%%% (a lower bound; bmd_modified's 'simpleit') instead of Mengi & Overton.
Q1 = getq(Q, row, k1); Q2 = getq(Q, row, k2); Q3 = getq(Q, row, k1 + k2);
Q12 = Q1.*Q2;
nB = size(Q1, 2);
B = double(Q3'*Q12)/nB;
n12 = sqrt(mean(sum(abs(Q12).^2, 1))); n3 = sqrt(mean(sum(abs(Q3).^2, 1)));
if fast
    L = 0; rs = RandStream('mt19937ar', 'Seed', 1);
    for s = 1:5
        [w, z] = simpleIteration(B, randn(rs, nB, 1) + 1i*randn(rs, nB, 1), 1e-8);
        if abs(w) > abs(L), L = w; a = z; end
    end
else
    [L, a] = MengiOverton(B, 1e-6, 200);
end
Lb = L/(n12*n3);
if nargout > 2
    Psi3 = double(Q3)*a; Psi3 = Psi3/norm(Psi3);
    Psi12 = double(Q12)*a; Psi12 = Psi12/norm(Psi12);
end
end

function q = getq(Q, row, k)
if k >= 0
    q = squeeze(Q(row(k), :, :));
else
    q = conj(squeeze(Q(row(-k), :, :)));
end
end

function phi = lead_mode(Qk)
%%% Leading SPOD mode at one bin (method of snapshots over the blocks).
C = double(Qk'*Qk);
[V, D] = eig((C + C')/2, 'vector');
[~, i] = max(real(D));
phi = double(Qk)*V(:, i); phi = phi/norm(phi);
end

function [w, z] = simpleIteration(A, z_0, tol)
%%% Watson's simple iteration for the numerical radius, as in bmd_modified.m
%%% (Codebase_Patches): not guaranteed to reach the global optimum.
z = z_0/sqrt(z_0'*z_0);
w = Inf; w_err = Inf; it = 0;
while w_err > tol && it < 100
    w_old = w;
    w = z'*A*z;
    w_err = abs(w - w_old);
    z = w*A'*z + w'*A*z;
    z = z/sqrt(z'*z);
    it = it + 1;
end
w = z'*A*z;
end

function [w, z] = MengiOverton(A, tol, nitmax)
%%% Numerical radius of A (Mengi & Overton 2005), as in bmd_modified.m
%%% (Codebase_Patches; B. Yeung, 2023-08-16).
N = size(A, 1);
normA = norm(A, 1);
Z = zeros(N); I = eye(N);
S = [A Z; Z I];
it = 0;
phi = 0;
while ~isempty(phi)
    w_temp = maxFOV(A, phi);
    [w, idx] = max(w_temp);
    phi_max = phi(idx);
    w = w*(1 + tol);
    R = [2*w*I -A'; I Z];
    [~, D] = eig(R, S, 'vector');
    isunimod = abs(abs(D) - 1) <= (sqrt(eps)*normA);
    thetaprime = angle(D(isunimod));
    theta = [];
    for i = 1:length(thetaprime)
        if abs(maxFOV(A, thetaprime(i)) - w) <= sqrt(eps)*w
            theta = [theta; thetaprime(i)]; %#ok<AGROW>
        end
    end
    theta = unique(theta);
    phi = [];
    for i = 1:length(theta)
        lb = theta(i);
        if i < length(theta)
            mid = (lb + theta(i+1))/2;
        else
            mid = mod((lb + theta(1) + 2*pi)/2, 2*pi);
        end
        if maxFOV(A, mid) > w
            phi = [phi; mid]; %#ok<AGROW>
        end
    end
    it = it + 1;
    if it >= nitmax
        disp(['Mengi & Overton algorithm did not converge in ' num2str(it) ' iterations!']);
        break
    end
end
Bm = A*exp(1i*phi_max);
H = (Bm + Bm')/2;
[V, D] = eig(H, 'vector');
[~, idx] = max(abs(D));
z = V(:, idx);
w = z'*A*z;
end

function lmax = maxFOV(A, theta)
lmax = zeros(numel(theta), 1);
for i = 1:numel(theta)
    Ar = A*exp(1i*theta(i));
    lmax(i) = max(abs(eig(0.5*(Ar + Ar'))));
end
end

function c = redblue()
n = 128; t = linspace(0, 1, n).';
c = [[t, t, ones(n,1)]; [ones(n,1), flipud(t), flipud(t)]];
end
