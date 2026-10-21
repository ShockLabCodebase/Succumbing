function plot_sweep_results(T_sum, T_sw, p)
%%% Summary figures, one per tone spacing delta, at the middle SNR and
%%% L = L_point unless the panel sweeps that parameter:
%%%  (a) fraction of switches resolved vs dwell (B nearest df)
%%%  (b) fraction resolved vs B, at the shortest dwell any method resolves
%%%  (c) IF spread vs B, with the single-point Cramer-Rao bound (dashed)
%%%  (d) fraction resolved vs SNR (B nearest df, same dwell as (b))
%%%  (e) field methods: fraction resolved vs field-of-view length
%%%  (f) coexistence: fraction detected in 'AB' segments vs false alarms in
%%%      exclusive ones, and the ripple index ratio for single traces
%%% Saved to p.save_folder.

snr0 = p.snr_dB(ceil(end/2));
[~, iB] = min(abs(p.B_over_df - 1)); B0 = p.B_over_df(iB);
for delta = unique(T_sum.delta)'
    fig = figure('Color', 'w', 'Position', [60 60 1500 850]);
    tl = tiledlayout(2, 3, 'TileSpacing', 'compact');
    title(tl, sprintf("Switch benchmark, \\delta = %.3f (SNR %g dB, L = %g\\lambda unless swept)", delta, snr0, p.L_point));
    S = T_sw(T_sw.delta == delta, :);
    U = T_sum(T_sum.delta == delta, :);
    methods = unique(U.method, 'stable');
    is_pt = endsWith(methods, "_pt");

    % (a) resolved vs dwell
    nexttile; hold on
    for m = methods'
        s = S(S.method == m & S.snr_dB == snr0 & S.L_lambda == p.L_point & S.B_over_df == B0, :);
        st = method_style(m); plot(s.dwell_Tb, s.res_frac, st{:}, 'DisplayName', m);
    end
    set(gca, 'XScale', 'log'); xlabel('dwell (T_b = 1/\Deltaf)'); ylabel('fraction resolved');
    title(sprintf('(a) B = %g\\Deltaf', B0)); ylim([-0.05 1.05]); legend('Location', 'best', 'Interpreter', 'none');

    % shortest dwell resolved by any method at B0
    s0 = S(S.snr_dB == snr0 & S.L_lambda == p.L_point & S.B_over_df == B0 & S.res_frac >= 0.5, :);
    if isempty(s0), d0 = max(S.dwell_Tb); else, d0 = min(s0.dwell_Tb); end

    % (b) resolved vs B
    nexttile; hold on
    for m = methods'
        s = S(S.method == m & S.snr_dB == snr0 & S.L_lambda == p.L_point & S.dwell_Tb == d0, :);
        st = method_style(m); plot(s.B_over_df, s.res_frac, st{:}, 'DisplayName', m);
    end
    set(gca, 'XScale', 'log'); xlabel('B / \Deltaf'); ylabel('fraction resolved');
    title(sprintf('(b) dwell %g T_b', d0)); ylim([-0.05 1.05]);

    % (c) IF spread vs B
    nexttile; hold on
    for m = methods'
        u = U(U.method == m & U.snr_dB == snr0 & U.L_lambda == p.L_point, :);
        st = method_style(m); h = plot(u.B_over_df, u.if_std_rel, st{:}, 'DisplayName', m);
        if m == "Gauss_pt"
            plot(u.B_over_df, u.crlb_std_rel, '--', 'Color', h.Color, 'LineWidth', 1, 'Marker', 'none', 'DisplayName', 'CRLB, probe, N_{eff}');
        elseif m == "HPOD_sep"
            plot(u.B_over_df, u.crlb_field_std_rel, '--', 'Color', h.Color, 'LineWidth', 1, 'Marker', 'none', 'DisplayName', 'CRLB / \surdM_{eff}');
        end
    end
    set(gca, 'XScale', 'log', 'YScale', 'log'); xlabel('B / \Deltaf'); ylabel('std(IF error)/f_0');
    title('(c) IF spread in long exclusive segments'); legend('Location', 'best', 'FontSize', 7, 'Interpreter', 'tex');

    % (d) resolved vs SNR
    nexttile; hold on
    for m = methods'
        s = S(S.method == m & S.L_lambda == p.L_point & S.B_over_df == B0 & S.dwell_Tb == d0, :);
        s = sortrows(s, 'snr_dB');
        st = method_style(m); plot(s.snr_dB, s.res_frac, st{:}, 'DisplayName', m);
    end
    xlabel('SNR per point (dB)'); ylabel('fraction resolved'); title(sprintf('(d) dwell %g T_b, B = %g\\Deltaf', d0, B0));
    ylim([-0.05 1.05]);

    % (e) field methods vs L
    nexttile; hold on
    for m = methods(~is_pt)'
        s = S(S.method == m & S.snr_dB == snr0 & S.B_over_df == B0 & S.dwell_Tb == d0, :);
        s = sortrows(s, 'L_lambda');
        st = method_style(m); plot(s.L_lambda, s.res_frac, st{:}, 'DisplayName', m);
    end
    xlabel('field of view L (\lambda)'); ylabel('fraction resolved'); title(sprintf('(e) dwell %g T_b', d0));
    ylim([-0.05 1.05]); legend('Location', 'best', 'Interpreter', 'none');

    % (f) coexistence
    nexttile; hold on
    u = U(U.snr_dB == snr0 & U.L_lambda == p.L_point & U.B_over_df == B0, :);
    has = isfinite(u.coexist_frac);
    bar(categorical(u.method(has)), [u.coexist_frac(has) u.false_coexist_frac(has)]);
    set(gca, 'TickLabelInterpreter', 'none');
    rr = u.ripple_AB./u.ripple_excl;
    txt = "IF ripple R_{AB}/R_{excl}:";
    for k = find(isfinite(rr))'
        txt(end+1) = sprintf('%s  %.1f', strrep(u.method(k), '_', '\_'), rr(k)); %#ok<AGROW>
    end
    text(0.98, 0.02, txt, 'Units', 'normalized', 'HorizontalAlignment', 'right', ...
        'VerticalAlignment', 'bottom', 'FontSize', 7, 'BackgroundColor', 'w');
    ylabel('fraction of time'); legend({'coexistence detected','false coexistence'}, 'Location', 'northwest');
    title('(f) coexistence (two bands) and IF ripple ratio (one band)'); ylim([0 1.2]);

    exportgraphics(fig, fullfile(p.save_folder, sprintf("sweep_summary_delta_%.3f.png", delta)), 'Resolution', 150);
end
end
