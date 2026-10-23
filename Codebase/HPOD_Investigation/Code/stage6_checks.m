function stage6_checks(cfg)
%%% Stage 6: follow-up checks on the stage 2-4 findings.
%%%  (a) Is the weaker tone inside long dominant dwells a coherent tone or
%%%      band noise? Windowed phase coherence C = |sum a e^{-i w t}|/sum|a|
%%%      over 5 ms windows (about 9 beat periods; band noise of width B
%%%      decorrelates in ~1/B, giving C ~ 0.3), and IF spread, for the
%%%      dominant tone, the weak tone and the midway noise band.
%%%  (b) Mode shapes of the difference (A2-A1), sum and harmonic bands
%%%      against pointwise products of the A1 and A2 shapes
%%%      (phi1.*conj(phi2), phi1.*phi2, phi1.^2, phi2.^2). A close match is
%%%      what a local quadratic interaction gives, in the flow or in the
%%%      optics/camera; phase locking alone cannot tell these apart.
%%%  (c) Figure: the one-band trace (combined band, mode-1 IF) around the
%%%      stage-5 example switch, against the two-band rho.
%%% Writes Data/stage6_checks.mat and Figures/F8_*.png, F9_*.png.

t0 = tic;
S = load_proj(cfg);
f = S.f_tone; df = S.df; fps = S.fps; v = S.valid;
nm = cfg.modes_ref; B = cfg.B_ref*df;
t1 = iso_route(S, "TC", f(1), B, nm); t2 = iso_route(S, "TC", f(2), B, nm);
tn = iso_route(S, "TC", mean(f), B, nm);
a = {t1.a(1,:), t2.a(1,:), tn.a(1,:)};
n1 = abs(a{1})/prctile(abs(a{1}(v)), 95); n2 = abs(a{2})/prctile(abs(a{2}(v)), 95);
rho = n2.^2./(n1.^2 + n2.^2 + eps);
st = state_seq(rho, v, cfg.rho_lo, cfg.rho_hi);

%% (a) coherence of dominant, weak and noise bands inside long dwells
Lw = round(5e-3*fps);
W = max(fps/B, cfg.if_min_periods*fps/f(1));
fq = [f, mean(f)];
ifs = cellfun(@(z, ff) phase_slope_if(z, W)*fps, a, num2cell(fq), 'UniformOutput', false);
long = st.dw(st.dw(:,2) - st.dw(:,1) >= cfg.long_dwell_Tb*S.Tb, :);
lvl = [prctile(abs(a{1}(v)), 95), prctile(abs(a{2}(v)), 95), prctile(abs(a{1}(v)), 95)];
coh = struct('dom', [], 'weak', [], 'noise', []); ifd = coh; lev = coh;
names = {'dom', 'weak', 'noise'};
for r = 1:size(long, 1)
    g = round(S.Tb + W/2);
    idx = long(r,1)+g:long(r,2)-g;
    dom = long(r,3);
    which = [dom, 3 - dom, 3];
    for w0 = idx(1):Lw:idx(end) - Lw + 1
        ii = w0:w0 + Lw - 1; tt = ii/fps;
        for q = 1:3
            k = which(q); z = a{k}(ii);
            coh.(names{q})(end+1) = abs(sum(z.*exp(-2i*pi*fq(k)*tt)))/sum(abs(z));
            ifd.(names{q})(end+1) = std(ifs{k}(ii), 'omitnan');
            lev.(names{q})(end+1) = mean(abs(z))/lvl(k);
        end
    end
end
chk.coh = structfun(@median, coh, 'UniformOutput', false);
chk.if_std = structfun(@median, ifd, 'UniformOutput', false);
chk.level = structfun(@median, lev, 'UniformOutput', false);
chk.coh_all = coh; chk.n_windows = numel(coh.dom);
fprintf("(a) coherence dom %.2f, weak %.2f, noise %.2f; IF std %.0f/%.0f/%.0f Hz; level %.3f/%.3f/%.3f (%d windows)\n", ...
    chk.coh.dom, chk.coh.weak, chk.coh.noise, chk.if_std.dom, chk.if_std.weak, chk.if_std.noise, ...
    chk.level.dom, chk.level.weak, chk.level.noise, chk.n_windows);

%% (b) mode shapes against pointwise products
sp = matfile(cfg.spod_file);
shape = @(tr) mode_shape(sp, S, tr.cols, tr.W(:,1));
phi1 = shape(t1); phi2 = shape(t2);
BD = cfg.BD_rel(1)*df;
bands = struct('D', {f(2) - f(1), BD, phi1.*conj(phi2)}, 'S', {f(1) + f(2), B, phi1.*phi2}, ...
    'H1', {2*f(1), B, phi1.^2}, 'H2', {2*f(2), B, phi2.^2});
sim = struct(); shapes = struct('A1', phi1, 'A2', phi2);
for bn = ["D" "S" "H1" "H2"]
    tr = iso_route(S, "TC", bands(1).(bn), bands(2).(bn), nm);
    phiX = shape(tr); prodX = bands(3).(bn);
    sim.(bn) = abs(phiX(:)'*prodX(:))/(norm(phiX(:))*norm(prodX(:)));
    % baseline: the same against the product shifted by half a jet diameter downstream
    sh = round(0.5/mean(diff(S.x(1,:))));
    pr2 = circshift(prodX, sh, 2);
    sim.([char(bn) '_shift']) = abs(phiX(:)'*pr2(:))/(norm(phiX(:))*norm(pr2(:)));
    shapes.(bn) = phiX; shapes.([char(bn) '_prod']) = prodX;
    fprintf("(b) %s: |<phi, product>| = %.3f (product shifted 0.5D: %.3f)\n", bn, sim.(bn), sim.([char(bn) '_shift']));
end
chk.sim = sim;

%% figures
if ~exist(cfg.fig_dir, "dir"), mkdir(cfg.fig_dir); end
x = S.x(1,:); y = S.y(:,1);
fig = figure('Color', 'w', 'Position', [50 50 1300 800]);
tl = tiledlayout(4, 2, 'TileSpacing', 'compact');
title(tl, 'Interaction-band HPOD mode 1 (left) against the pointwise product of the A1/A2 modes (right), real parts');
labs = struct('D', 'A2-A1', 'S', 'A1+A2', 'H1', '2A1', 'H2', '2A2');
for bn = ["D" "S" "H1" "H2"]
    p1 = shapes.(bn); p2 = shapes.([char(bn) '_prod']);
    g = (p2(:)'*p1(:))/(p2(:)'*p2(:)); p2 = g*p2;          % align phase and scale
    for q = 1:2
        nexttile; P = {p1, p2}; P = real(P{q});
        imagesc(x, y, P); axis image; set(gca, 'YDir', 'normal'); clim([-1 1]*max(abs(P(:))));
        colormap(gca, redblue());
        if q == 1, title(sprintf('%s band mode', labs.(bn))); else, title(sprintf('product shape (similarity %.2f)', sim.(bn))); end
    end
end
exportgraphics(fig, fullfile(cfg.fig_dir, "F8_interaction_modes.png"), 'Resolution', 150);

% one-band trace around the stage-5 example switch
s2 = load(fullfile(cfg.data_dir, "stage2_isolation.mat"), 'comb', 'ref', 'info');
sw = s2.ref.sw; mid = mean(sw(:,1:2), 2);
cand = find(sw(:,2) - sw(:,1) < 0.5e-3*fps & mid > s2.info.valid(1) + 0.02*fps & mid < s2.info.valid(2) - 0.02*fps);
if isempty(cand), cand = 1:size(sw,1); end
[~, j] = min(abs(mid(cand) - mean(s2.info.valid))); tc0 = mid(cand(j));
Bc = df + cfg.B_ref*df;
ifc = phase_slope_if(double(s2.comb.TC.a(1,:)), max(fps/Bc, cfg.if_min_periods*fps/f(1)))*fps;
fig = figure('Color', 'w', 'Position', [50 50 1200 800]);
tl = tiledlayout(3, 1, 'TileSpacing', 'compact');
title(tl, sprintf('One band holding both tones (TC, width \\Deltaf + %.2f\\Deltaf), around t = %.4f s', cfg.B_ref, tc0/fps));
ii = round(tc0) + (-round(0.04*fps):round(0.04*fps));
tm = (ii - tc0)/fps*1e3;
nexttile; plot(tm, ifc(ii)/1e3, 'k'); hold on; yline(f/1e3, ':', {'A1', 'A2'});
ylabel('mode-1 IF (kHz)'); title('single IF trace: plateaus = one tone, ripple at \Deltaf = both');
nexttile; plot(tm, rho(ii), 'Color', [0.85 0.33 0.1]); hold on; plot(tm, (ifc(ii) - f(1))/df, 'k');
ylim([-0.3 1.3]); ylabel('state'); legend('\rho from two bands', '(IF - f_1)/\Deltaf, one band', 'Location', 'best');
nexttile;
rt = s2.comb.TC.ripple_t; in = abs(rt - tc0/fps) < 0.04;
plot((rt(in) - tc0/fps)*1e3, s2.comb.TC.ripple(in), 'k'); hold on
xlabel('t - t_{switch} (ms)'); ylabel('ripple index (4 T_b windows)');
exportgraphics(fig, fullfile(cfg.fig_dir, "F9_one_band.png"), 'Resolution', 150);
close all
save(fullfile(cfg.data_dir, "stage6_checks.mat"), 'chk', 'shapes', '-v7.3');
fprintf("Stage 6 done [%.0f s]\n", toc(t0));
end

function phi = mode_shape(sp, S, cols, w)
%%% phi = sum_k P_k w_k over the band columns (TC route: Psi = P).
bins = S.col_bin(cols); modes = S.col_mode(cols);
b1 = min(bins); b2 = max(bins); nm = max(modes);
Pb = sp.P(b1:b2, :, :, 1:nm);
phi = zeros(size(Pb, 2), size(Pb, 3));
for k = 1:numel(cols)
    phi = phi + double(squeeze(Pb(bins(k) - b1 + 1, :, :, modes(k))))*w(k);
end
end

function c = redblue()
n = 128; t = linspace(0, 1, n).';
c = [[t, t, ones(n,1)]; [ones(n,1), flipud(t), flipud(t)]];
end
