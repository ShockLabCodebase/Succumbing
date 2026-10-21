function plot_example_traces(ex, p)
%%% Time traces for one configuration (first delta, middle SNR, L = L_point,
%%% B nearest df): the state indicator rho of each method against the truth,
%%% and the single-trace IFs. Shaded: true states (A white, B grey, AB
%%% blue, off red). Saved to p.save_folder.

if isempty(ex) || ~isfield(ex, 'field')
    return
end
sc = ex.sc;
t = sc.t/sc.Tb;
rho_true = sc.a2.^2./(sc.a1.^2 + sc.a2.^2 + eps);
rho_true(sc.a1 + sc.a2 < 0.1) = NaN;

fig = figure('Color', 'w', 'Position', [50 50 1400 900]);
tl = tiledlayout(3, 1, 'TileSpacing', 'compact');
title(tl, sprintf("\\delta = %.3f, SNR = %g dB, L = %g\\lambda, B = %g\\Deltaf", ...
    sc.delta, ex.snr, ex.L, ex.B_over_df));

nexttile; shade_states(sc); hold on
plot(t, rho_true, 'k', 'LineWidth', 1.5, 'DisplayName', 'truth');
for m = 1:numel(ex.point)
    st = method_style(ex.point(m).method); plot(t, ex.rho_point{m}, 'Color', st{2}, 'LineStyle', st{6}, 'DisplayName', ex.point(m).method);
end
ylabel('\rho = P_B/(P_A + P_B)'); ylim([-0.2 1.2]); legend('Location', 'eastoutside', 'Interpreter', 'none');
title('Single-probe methods (band of width B around each tone)');

nexttile; shade_states(sc); hold on
plot(t, rho_true, 'k', 'LineWidth', 1.5, 'DisplayName', 'truth');
for m = 1:numel(ex.field)
    st = method_style(ex.field(m).method); plot(t, ex.rho_field{m}, 'Color', st{2}, 'LineStyle', st{6}, 'DisplayName', ex.field(m).method);
end
ylabel('\rho (HPOD\_comb: (f_i - f_1)/\Deltaf)'); ylim([-0.2 1.2]); legend('Location', 'eastoutside', 'Interpreter', 'none');
title('Field methods');

nexttile; shade_states(sc); hold on
for m = 1:numel(ex.field)
    if any(isfinite(ex.field(m).ifc))
        plot(t, (ex.field(m).ifc - sc.f1)/sc.df, 'DisplayName', ex.field(m).method + " ifc");
    end
end
plot(t, (ex.point(1).ifc - sc.f1)/sc.df, 'DisplayName', ex.point(1).method + " ifc");
yline([0 1], 'k:', 'HandleVisibility', 'off');
ylabel('(f_i - f_1)/\Deltaf'); xlabel('t / T_b'); ylim([-2 2]); legend('Location', 'eastoutside', 'Interpreter', 'none');
title('Single IF trace of one band holding both tones (plateaus = switching, ripple at \Deltaf = coexistence)');

exportgraphics(fig, fullfile(p.save_folder, sprintf("example_traces_delta_%.3f.png", sc.delta)), 'Resolution', 150);
end

function shade_states(sc)
cols = struct('A', [1 1 1], 'B', [0.88 0.88 0.88], 'AB', [0.82 0.9 1], 'off', [1 0.85 0.85]);
for ii = 1:height(sc.seg)
    c = cols.(char(sc.seg.state(ii)));
    x0 = sc.seg.t_start(ii)/sc.Tb; x1 = sc.seg.t_end(ii)/sc.Tb;
    patch([x0 x1 x1 x0], [-5 -5 5 5], c, 'EdgeColor', 'none', 'HandleVisibility', 'off');
    hold on
end
xlim([0 sc.nt/sc.Tb]);
end
