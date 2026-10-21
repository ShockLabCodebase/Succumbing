%%% Compares two benchmark runs (e.g. p.recon = "invspod" vs "conv").
%%%
%%% Joins the summary and switch tables of folder_a and folder_b on method,
%%% delta, SNR, L, B (and dwell), and writes:
%%%   <folder_b>/compare_<a>_vs_<b>_summary.csv   IF spread and bias, ratio b/a
%%%   <folder_b>/compare_<a>_vs_<b>_switches.csv  resolved fraction, delay, width
%%%   <folder_b>/compare_<a>_vs_<b>_delta_*.png   field methods side by side
%%% Methods unaffected by the change (the probe methods here) should match
%%% exactly; the script reports the largest difference as a check.

clear; close all
addpath(genpath("Functions"));
folder_a = "Results_invspod";  % reference run
folder_b = "Results_conv";     % changed run
label_a = "invspod"; label_b = "conv";

Sa = readtable(fullfile(folder_a, "switch_benchmark_summary.csv"), 'TextType', 'string');
Sb = readtable(fullfile(folder_b, "switch_benchmark_summary.csv"), 'TextType', 'string');
Wa = readtable(fullfile(folder_a, "switch_benchmark_switches.csv"), 'TextType', 'string');
Wb = readtable(fullfile(folder_b, "switch_benchmark_switches.csv"), 'TextType', 'string');
load(fullfile(folder_b, "switch_benchmark_results.mat"), "p");

keys = {'method','delta','snr_dB','L_lambda','B_over_df'};
vals = {'if_std_rel','if_bias_rel','crlb_field_std_rel','coexist_frac','false_coexist_frac','ripple_AB','ripple_excl'};
C = innerjoin(Sa(:, [keys vals]), Sb(:, [keys vals]), 'Keys', keys);
C.if_std_ratio = C.if_std_rel_right./C.if_std_rel_left;
writetable(C, fullfile(folder_b, sprintf("compare_%s_vs_%s_summary.csv", label_a, label_b)));

vk = {'res_frac','med_abs_delay_Tb','med_width_Tb'};
D = innerjoin(Wa(:, [keys {'dwell_Tb'} vk]), Wb(:, [keys {'dwell_Tb'} vk]), 'Keys', [keys {'dwell_Tb'}]);
D.res_change = D.res_frac_right - D.res_frac_left;
writetable(D, fullfile(folder_b, sprintf("compare_%s_vs_%s_switches.csv", label_a, label_b)));

pt = endsWith(C.method, "_pt");
fprintf("Check: probe methods, max |IF std difference| = %.2e, max |resolved change| = %.2f\n", ...
    max(abs(C.if_std_rel_left(pt) - C.if_std_rel_right(pt))), ...
    max(abs(D.res_change(endsWith(D.method, "_pt")))));

snr0 = p.snr_dB(ceil(end/2));
[~, iB] = min(abs(p.B_over_df - 1)); B0 = p.B_over_df(iB);
fm = ["HPOD_sep","HPOD_comb","HPOD_raw"];
for delta = unique(C.delta)'
    % Console summary
    fprintf("\ndelta = %.3f, L = %g lambda\n", delta, p.L_point);
    fprintf("  %-10s %5s %6s   IF std (%s -> %s), ratio     field CRLB\n", "method", "SNR", "B/df", label_a, label_b);
    for m = fm(1:2)
        for s = p.snr_dB
            for B = p.B_over_df
                r = C(C.method == m & C.delta == delta & C.snr_dB == s & C.L_lambda == p.L_point & C.B_over_df == B, :);
                if isempty(r), continue, end
                fprintf("  %-10s %5g %6g   %.2e -> %.2e, %5.2f     %.1e\n", m, s, B, ...
                    r.if_std_rel_left, r.if_std_rel_right, r.if_std_ratio, r.crlb_field_std_rel_right);
            end
        end
    end
    dd = D(D.delta == delta & ~endsWith(D.method, "_pt") & D.res_change ~= 0, :);
    fprintf("  switch-resolution changes (field methods): %d of %d entries\n", height(dd), ...
        nnz(D.delta == delta & ~endsWith(D.method, "_pt")));
    if ~isempty(dd)
        disp(dd(:, {'method','snr_dB','L_lambda','B_over_df','dwell_Tb','res_frac_left','res_frac_right'}));
    end

    % Figure
    fig = figure('Color', 'w', 'Position', [60 60 1400 750]);
    tl = tiledlayout(2, 3, 'TileSpacing', 'compact');
    title(tl, sprintf("%s (solid) vs %s (dashed), \\delta = %.3f, L = %g\\lambda", label_a, label_b, delta, p.L_point));
    for s = p.snr_dB
        nexttile; hold on
        for m = fm(1:2)
            r = sortrows(C(C.method == m & C.delta == delta & C.snr_dB == s & C.L_lambda == p.L_point, :), 'B_over_df');
            st = method_style(m);
            plot(r.B_over_df, r.if_std_rel_left, st{:}, 'DisplayName', m + " " + label_a);
            plot(r.B_over_df, r.if_std_rel_right, st{:}, 'LineStyle', '--', 'MarkerFaceColor', st{2}, 'DisplayName', m + " " + label_b);
        end
        r = sortrows(C(C.method == "HPOD_sep" & C.delta == delta & C.snr_dB == s & C.L_lambda == p.L_point, :), 'B_over_df');
        plot(r.B_over_df, r.crlb_field_std_rel_right, 'k:', 'DisplayName', 'field CRLB (sep)');
        set(gca, 'XScale', 'log', 'YScale', 'log'); xlabel('B / \Deltaf'); ylabel('std(IF error)/f_0');
        title(sprintf('IF spread, SNR %g dB', s));
        if s == p.snr_dB(1), legend('Location', 'best', 'Interpreter', 'none', 'FontSize', 7); end
    end
    for s = p.snr_dB
        nexttile; hold on
        for m = fm(1:2)
            r = sortrows(D(D.method == m & D.delta == delta & D.snr_dB == s & D.L_lambda == p.L_point & D.B_over_df == B0, :), 'dwell_Tb');
            st = method_style(m);
            plot(r.dwell_Tb, r.res_frac_left, st{:}, 'DisplayName', m + " " + label_a);
            plot(r.dwell_Tb, r.res_frac_right, st{:}, 'LineStyle', '--', 'MarkerFaceColor', st{2}, 'DisplayName', m + " " + label_b);
        end
        set(gca, 'XScale', 'log'); ylim([-0.05 1.05]); xlabel('dwell (T_b)'); ylabel('fraction resolved');
        title(sprintf('Switches, B = %g\\Deltaf, SNR %g dB', B0, s));
    end
    exportgraphics(fig, fullfile(folder_b, sprintf("compare_%s_vs_%s_delta_%.3f.png", label_a, label_b, delta)), 'Resolution', 150);
end
