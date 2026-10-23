function stage5_figures(cfg)
%%% Stage 5: figures for the write-up, from the stage 2-4 results (and the
%%% SPOD file for mode shapes). Writes PNGs to cfg.fig_dir.

if ~exist(cfg.fig_dir, "dir"), mkdir(cfg.fig_dir); end
s2 = load(fullfile(cfg.data_dir, "stage2_isolation.mat"));
s3 = load(fullfile(cfg.data_dir, "stage3_controls.mat"));
s4 = load(fullfile(cfg.data_dir, "stage4_interactions.mat"));
info = s2.info; f = info.f_tone; df = info.df; fps = info.fps; Sk = info.St_per_Hz;
col = lines(7);
rc = struct('INV', col(1,:), 'TC', col(2,:), 'FIX', col(3,:), 'PROBE', col(4,:), 'COEF', col(5,:));
ls = struct('INV', '-o', 'TC', '-s', 'FIX', '--d', 'PROBE', '-.^', 'COEF', ':v');   % TC and FIX often overlap
save_fig = @(fig, name) exportgraphics(fig, fullfile(cfg.fig_dir, name + ".png"), 'Resolution', 150);

%% F1: SPOD spectrum with the bands
fig = figure('Color', 'w', 'Position', [50 50 1100 450]);
semilogy(info.St, info.L(:,1), 'k', info.St, info.L(:,2), 'Color', [0.6 0.6 0.6]); hold on
mk = [f(1), f(2), f(2)-f(1), f(1)+f(2), 2*f(1), 2*f(2), 2*f(1)-f(2), 2*f(2)-f(1)]*Sk;
lab = ["A1", "A2", "A2-A1", "A1+A2", "2A1", "2A2", "2A1-A2", "2A2-A1"];
yl = ylim;
for i = 1:numel(mk)
    xline(mk(i), ':', lab(i), 'LabelOrientation', 'horizontal', 'FontSize', 8, 'Color', [0.8 0.2 0.2]);
end
for k = 1:2
    patch(([-1 1 1 -1]*cfg.B_ref*df/2 + f(k))*Sk, yl([1 1 2 2]), [0.2 0.4 0.9], 'FaceAlpha', 0.12, 'EdgeColor', 'none');
end
xlim([0 1.5]); xlabel('St'); ylabel('SPOD eigenvalue \lambda'); legend('mode 1', 'mode 2', 'Location', 'northeast');
title(sprintf('SPOD spectrum (nfft %d): A1 St %.4f, A2 St %.4f, \\Deltaf = %.0f Hz (shaded: reference bands, B = %.2f\\Deltaf)', ...
    info.nfft, f(1)*Sk, f(2)*Sk, df, cfg.B_ref));
save_fig(fig, "F1_spectrum");

%% F2: one stretch around a switch, every route at B_ref
R = s2.R;
pick = find(([R.B_rel] == cfg.B_ref | isnan([R.B_rel])) & [R.nm] <= cfg.modes_ref & ...
    ~([R.nm] == 1 & [R.route] ~= "COEF"));
ref = s2.ref;
sw = ref.sw;
mid = mean(sw(:,1:2), 2);
cand = find(sw(:,2) - sw(:,1) < 0.5e-3*fps & mid > info.valid(1) + 0.02*fps & mid < info.valid(2) - 0.02*fps);
if isempty(cand), cand = 1:size(sw,1); end
[~, j] = min(abs(mid(cand) - mean(info.valid)));     % a quick switch near mid-record
tc0 = mid(cand(j))/fps;
fig = figure('Color', 'w', 'Position', [50 50 1200 900]);
tl = tiledlayout(3, 1, 'TileSpacing', 'compact');
title(tl, sprintf('A1/A2 tracks around a switch at t = %.4f s (B = %.2f\\Deltaf, %d modes per bin)', tc0, cfg.B_ref, cfg.modes_ref));
ax = gobjects(3,1);
for p = 1:3, ax(p) = nexttile; hold on; end
for i = pick
    ts = R(i).ts; c = rc.(R(i).route);
    in = abs(ts.t - tc0) < 15e-3;
    plot(ax(1), (ts.t(in) - tc0)*1e3, ts.n1(in), 'Color', c, 'DisplayName', R(i).route);
    plot(ax(2), (ts.t(in) - tc0)*1e3, ts.n2(in), 'Color', c);
    plot(ax(3), (ts.t(in) - tc0)*1e3, ts.rho(in), 'Color', c);
end
ylabel(ax(1), 'A1 amplitude (norm.)'); ylabel(ax(2), 'A2 amplitude (norm.)'); ylabel(ax(3), '\rho = a_2^2/(a_1^2 + a_2^2)');
xlabel(ax(3), 't - t_{switch} (ms)'); legend(ax(1), 'Location', 'eastoutside');
yline(ax(3), [cfg.rho_lo cfg.rho_hi], ':');
save_fig(fig, "F2_switch_example");

%% F3: real-data metrics vs band width and route
fig = figure('Color', 'w', 'Position', [50 50 1300 750]);
tl = tiledlayout(2, 3, 'TileSpacing', 'compact');
title(tl, 'Real record: metrics by route and band width (2 modes per bin; COEF at its own band)');
names = {'n_switch', 'switch width (ms, median)', 'mixed fraction', 'leakage (other band, norm.)', 'IF jitter in long dwells (Hz)', 'corr(n_1, n_2)'};
for p = 1:6
    nexttile; hold on
    for route = ["INV" "TC" "FIX" "PROBE" "COEF"]
        ii = find([R.route] == route & ([R.nm] == cfg.modes_ref | route == "COEF"));
        Bx = [R(ii).B_rel]; if route == "COEF", Bx = 1.36*fps/info.nfft/df*ones(size(ii)); end
        y = zeros(size(ii));
        for q = 1:numel(ii)
            m = R(ii(q)).m;
            switch p
                case 1, y(q) = m.n_switch;
                case 2, y(q) = median(m.switch_width_ms);
                case 3, y(q) = m.mixed_frac;
                case 4, y(q) = mean(m.leak);
                case 5, y(q) = mean(m.if_std);
                case 6, y(q) = m.corr12;
            end
        end
        [Bx, o] = sort(Bx);
        plot(Bx, y(o), ls.(route), 'Color', rc.(route), 'DisplayName', route);
    end
    set(gca, 'XScale', 'log'); xlabel('B/\Deltaf'); title(names{p});
    if p == 1, legend('Location', 'best'); end
end
save_fig(fig, "F3_real_metrics");

%% F4: positive controls
C = s3.C;
fig = figure('Color', 'w', 'Position', [50 50 1300 800]);
tl = tiledlayout(2, 3, 'TileSpacing', 'compact');
title(tl, sprintf('Positive controls spliced from the real record (%d switches per dwell)', max(C(1).n_switch)));
for p = 1:3
    nexttile; hold on
    Br = cfg.B_rel(p);
    for route = ["INV" "TC" "FIX" "PROBE"]
        q = find([C.route] == route & [C.B_rel] == Br & [C.nm] == cfg.modes_ref & [C.band] == "separate");
        plot(C(q).dwell_Tb, C(q).res_frac, ls.(route), 'Color', rc.(route), 'DisplayName', route);
    end
    q = find([C.route] == "COEF");
    plot(C(q).dwell_Tb, C(q).res_frac, '--', 'Color', rc.COEF, 'DisplayName', 'COEF');
    q = find([C.route] == "TC" & [C.B_rel] == Br & [C.band] == "combined");
    plot(C(q).dwell_Tb, C(q).res_frac, ':s', 'Color', 'k', 'DisplayName', 'TC one band');
    set(gca, 'XScale', 'log'); ylim([-0.05 1.05]); xlabel('dwell (T_b = 1/\Deltaf)'); ylabel('fraction resolved');
    title(sprintf('B = %.2f\\Deltaf', Br));
    if p == 1, legend('Location', 'southeast'); end
end
nexttile; hold on
for route = ["INV" "TC" "FIX" "PROBE"]
    q = find([C.route] == route & [C.nm] == cfg.modes_ref & [C.band] == "separate");
    w = arrayfun(@(c) c.width_Tb(end), C(q));
    plot([C(q).B_rel], w, ls.(route), 'Color', rc.(route));
end
set(gca, 'XScale', 'log'); xlabel('B/\Deltaf'); ylabel('10-90% width at 6 T_b dwells (T_b)'); title('switch width');
nexttile; hold on
q = find([C.band] == "separate" & [C.nm] == cfg.modes_ref);
labs = arrayfun(@(c) sprintf('%s %.2f', c.route, c.B_rel), C(q), 'UniformOutput', false);
bar(categorical(labs, labs), [[C(q).coexist_frac]; [C(q).false_coexist_frac]].');
ylabel('fraction of time'); legend('coexistence detected', 'false coexistence'); title('two bands');
nexttile; hold on
q = find([C.band] == "combined");
labs = arrayfun(@(c) sprintf('%s %.2f', c.route, c.B_rel), C(q), 'UniformOutput', false);
bar(categorical(labs, labs), [[C(q).ripple_AB]; [C(q).ripple_excl]].');
ylabel('ripple index'); legend('coexistence', 'exclusive'); title('one band holding both tones');
save_fig(fig, "F4_controls");

%% F5: state over the whole record, dwell times and JPDF (reference route)
i = find([R.route] == "TC" & [R.B_rel] == cfg.B_ref & [R.nm] == cfg.modes_ref, 1);
ts = R(i).ts; m = R(i).m;
fig = figure('Color', 'w', 'Position', [50 50 1300 800]);
tl = tiledlayout(2, 3, 'TileSpacing', 'compact');
title(tl, 'A1/A2 behaviour (TC, reference band)');
nexttile([1 3]);
plot(ts.t, movmean(ts.n1, 20), 'Color', col(1,:)); hold on; plot(ts.t, movmean(ts.n2, 20), 'Color', col(2,:));
plot(ts.t, ts.rho*0.3 - 0.4, 'k');
xlabel('t (s)'); ylabel('normalised amplitude'); legend('A1', 'A2', '\rho (scaled, offset)'); xlim([ts.t(1) ts.t(end)]);
nexttile; hold on
for k = 1:2
    histogram(m.dwell_ms(m.dwell_state == k), logspace(-1, 3, 40), 'DisplayStyle', 'stairs', 'LineWidth', 1.2);
end
set(gca, 'XScale', 'log'); xlabel('dwell (ms)'); ylabel('count'); legend('A1', 'A2'); title('dwell times');
nexttile;
histogram(m.switch_width_ms, logspace(-2, 2, 40)); set(gca, 'XScale', 'log');
xlabel('switch duration (ms)'); title(sprintf('%d switches', m.n_switch));
nexttile;
v = ts.t > info.valid(1)/fps & ts.t < info.valid(2)/fps;
histogram2(ts.n1(v), ts.n2(v), 60, 'DisplayStyle', 'tile', 'Normalization', 'pdf', 'EdgeColor', 'none');
set(gca, 'ColorScale', 'log'); xlabel('n_1'); ylabel('n_2'); title(sprintf('JPDF, corr %.2f', m.corr12)); axis square
save_fig(fig, "F5_behaviour");

%% F6: difference interaction
fig = figure('Color', 'w', 'Position', [50 50 1300 800]);
tl = tiledlayout(2, 3, 'TileSpacing', 'compact');
title(tl, sprintf('Difference interaction A2 - A1 (%.0f Hz, St %.4f)', s4.info.fD, s4.info.fD*Sk));
for p = 1:2
    route = ["TC" "INV"]; route = route(p);
    res = s4.I.(route).(sprintf('BD%03d', round(100*cfg.BD_rel(1))));
    nexttile; hold on
    preds = ["n1" "n2" "prod" "min" "mix" "drho"];
    Y = zeros(3, numel(preds));
    bn = ["D" "Dlo" "Dhi"];
    for b = 1:3, for q = 1:numel(preds), Y(b,q) = res.(bn(b)).corr.(preds(q)); end, end
    bar(categorical(preds, preds), Y.');
    legend('A2-A1', '0.75(A2-A1)', '1.25(A2-A1)', 'Location', 'best'); ylabel('correlation with band amplitude');
    title(sprintf('%s, B_D = %.2f\\Deltaf', route, cfg.BD_rel(1)));
end
res = s4.I.TC.(sprintf('BD%03d', round(100*cfg.BD_rel(1))));
nexttile; hold on
for dirn = 1:2
    sta = res.sta.(sprintf('from%d', dirn));
    if sta.n == 0, continue; end
    ls = {'-', '--'};
    plot(sta.t_ms, sta.mean(:,1), ls{dirn}, 'Color', col(1,:)); plot(sta.t_ms, sta.mean(:,2), ls{dirn}, 'Color', col(2,:));
    plot(sta.t_ms, sta.mean(:,3), ls{dirn}, 'Color', 'k');
end
xlabel('t - t_{switch} (ms)'); ylabel('normalised amplitude');
title(sprintf('switch-triggered (A1\\rightarrowA2 solid, n = %d; A2\\rightarrowA1 dashed, n = %d)', res.sta.from1.n, res.sta.from2.n));
legend('A1', 'A2', 'A2-A1', 'Location', 'best');
nexttile; hold on
g = [res.D.gamma res.Dlo.gamma res.Dhi.gamma; res.D.gamma_both res.Dlo.gamma_both res.Dhi.gamma_both];
gs = [res.D.gamma_sur95 res.Dlo.gamma_sur95 res.Dhi.gamma_sur95; res.D.gamma_both_sur95 res.Dlo.gamma_both_sur95 res.Dhi.gamma_both_sur95];
b = bar(categorical(["all samples" "both tones on"]), g);
for k = 1:3, plot(b(k).XEndPoints, gs(:,k), 'k_', 'MarkerSize', 14, 'LineWidth', 1.5); end
ylabel('triad coherence \gamma'); legend('A2-A1', '0.75', '1.25', 'surrogate 95%'); title('phase coupling to a_1 a_2^*');
nexttile; hold on
H = s4.I.TC.H;
gH = [H.sum.gamma H.h1.gamma H.h2.gamma]; gHs = [H.sum.gamma_sur95 H.h1.gamma_sur95 H.h2.gamma_sur95];
b = bar(categorical(["A1+A2" "2A1" "2A2"]), gH); plot(b.XEndPoints, gHs, 'k_', 'MarkerSize', 14, 'LineWidth', 1.5);
ylabel('\gamma'); title('checks: sum and harmonics');
nexttile; hold on
Y = [res.D.bystate; res.Dlo.bystate; res.Dhi.bystate];
bar(categorical(["A1 only" "A2 only" "mixed"]), Y.'); ylabel('mean normalised amplitude');
legend('A2-A1', '0.75', '1.25'); title('band amplitude by state');
save_fig(fig, "F6_difference");

%% F7: mode shapes (TC reference bands and the difference band)
sp = matfile(cfg.spod_file);
pj = load(cfg.proj_file, 'col_bin', 'col_mode', 'x', 'y');
fig = figure('Color', 'w', 'Position', [50 50 1300 700]);
tl = tiledlayout(3, 1, 'TileSpacing', 'compact');
title(tl, 'HPOD mode 1 (real part), TC route');
items = {s2.keep.TC.W1, s2.keep.TC.cols1, 'A1'; s2.keep.TC.W2, s2.keep.TC.cols2, 'A2'};
for q = 1:size(items,1)
    phi = mode_shape(sp, pj, items{q,2}, items{q,1}(:,1));
    nexttile; imagesc(pj.x(1,:), pj.y(:,1), real(phi)); axis image; set(gca, 'YDir', 'normal');
    title(items{q,3}); colormap(gca, redblue()); clim([-1 1]*max(abs(real(phi(:)))));
end
s2c = s2.comb.TC;
phi = mode_shape(sp, pj, s2c.cols, s2c.W(:,2));
nexttile; imagesc(pj.x(1,:), pj.y(:,1), real(phi)); axis image; set(gca, 'YDir', 'normal');
title('one band holding both tones: mode 2'); colormap(gca, redblue()); clim([-1 1]*max(abs(real(phi(:)))));
xlabel('x/D');
save_fig(fig, "F7_modes");
close all
end

function phi = mode_shape(sp, pj, cols, w)
%%% phi = sum_k P_k w_k over the band columns (TC route: Psi = P).
bins = pj.col_bin(cols); modes = pj.col_mode(cols);
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
