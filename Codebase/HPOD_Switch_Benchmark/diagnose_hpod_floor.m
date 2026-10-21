%%% Where does the SNR-independent HPOD IF floor come from?
%%%
%%% The full sweep found that HPOD_sep and HPOD_comb have an IF spread that
%%% does not fall with SNR, unlike the probe methods. This compares three
%%% ways of rebuilding the band before HPOD_t, on the same fields:
%%%   hamm_inv   current: Hamming, 87.5% overlap, block-wise inverse SPOD
%%%              (divide by window, Hann-weighted stitching)
%%%   rect_inv   rectangular window, no overlap, blocks concatenated
%%%              (Nekkanti & Schmidt 2021: no window leakage between modes)
%%%   hamm_conv  convolution route (tcoeffs-style, Nekkanti & Schmidt eq. 3.4)
%%%              with the Hamming 87.5% SPOD modes: no blocks at all
%%%   hamm_inv_x4  as hamm_inv with a 4x longer nfft (more bins inside B)
%%% and, to test the band-truncation hypothesis, hamm_inv with tone A moved
%%% onto a bin centre (variant name suffix _onbin; noise-free only).
%%% at SNR = Inf (noise-free), 20, 10 and 0 dB, B = df, L = L_point. It
%%% reports the IF spread in long exclusive segments, the switch resolution,
%%% and the dominant frequency of the IF error (in units of the block rate
%%% 1/step, to spot block-boundary artefacts).

clearvars; close all
addpath(genpath("Functions"));
p = bench_default_params(false);
snrs = [Inf 20 10 0];
variants = ["hamm_inv","rect_inv","hamm_conv","hamm_inv_x4"];
B_over_df = 1;
rows = {};
err_ex = struct();

cases = [p.deltas; zeros(size(p.deltas))];               % [delta; on-bin flag]
cases = [cases [p.deltas; ones(size(p.deltas))]];
for ic = 1:size(cases, 2)
    delta = cases(1, ic); onbin = cases(2, ic);
    pc = p;
    if onbin
        nfft0 = 2^nextpow2(p.nfft_factor/(delta*p.f0));
        pc.f0 = round(p.f0*nfft0)/nfft0;               % tone A on a bin centre
    end
    sc = make_switch_scenario(pc, delta, p.seed);
    df = sc.df; B = B_over_df*df;
    nfft = 2^nextpow2(p.nfft_factor/df);
    f_range = [sc.f1 - df - 8*df, sc.f2 + df + 8*df];
    trim = nfft/2;
    W = if_window(p, B);
    for snr = snrs(1:end - 3*onbin)
        fld = make_wavepacket_field(pc, sc, p.L_point, snr, p.seed + 7);
        S_h = spod_welch(fld.u, nfft, p.overlap, f_range, p.n_modes_keep, 'hamming');
        S_r = spod_welch(fld.u, nfft, 0, f_range, p.n_modes_keep, 'rect');
        S_4 = spod_welch(fld.u, 4*nfft, p.overlap, f_range, p.n_modes_keep, 'hamming');
        for v = variants(1:end - 3*onbin)
            o = empty_track("HPOD_sep_" + v, sc.nt);
            for k = 1:2
                fc = [sc.f1 sc.f2]; band = fc(k) + [-1 1]*B/2;
                switch v
                    case "hamm_inv",  q = invspod_band(S_h, band, p.n_modes_recon); step = S_h.step;
                    case "rect_inv",  q = invspod_band(S_r, band, p.n_modes_recon); step = S_r.step;
                    case "hamm_conv", q = convspod_band(S_h, fld.u, band, p.n_modes_recon); step = S_h.step;
                    case "hamm_inv_x4", q = invspod_band(S_4, band, p.n_modes_recon); step = S_4.step;
                end
                H = hpod_time(q, 1, p.hpod_trim_frac);
                if k == 1
                    o.amp1 = abs(H.a(1,:)); o.if1 = phase_slope_if(H.a(1,:), W);
                else
                    o.amp2 = abs(H.a(1,:)); o.if2 = phase_slope_if(H.a(1,:), W);
                end
            end
            o.W = W; o.B_band = B;
            snr_score = min(snr, 200);
            r = score_track(o, sc, pc, snr_score, trim*(1 + 3*(v == "hamm_inv_x4")), fld.M_eff);

            % IF error in the longest A segment: dominant frequency
            seg = sc.seg(sc.seg.state == "A" & sc.seg.t_start > trim, :);
            [~, kk] = max(seg.t_end - seg.t_start);
            g = round(sc.Tb + W);
            in = sc.t >= seg.t_start(kk) + g & sc.t < seg.t_end(kk) - g;
            e = o.if1(in) - sc.f1;
            e = e - mean(e, 'omitnan');
            e(~isfinite(e)) = 0;
            n_e = numel(e);
            E = abs(fft(e.*hann(n_e)')).^2;
            fe = (0:n_e-1)/n_e;
            [~, ip] = max(E(2:floor(n_e/2)));
            f_peak = fe(ip + 1);
            vname = v + string(repmat('_onbin', 1, onbin));
            if snr == Inf
                err_ex.(sprintf("d%d_%s", round(1000*delta), vname)) = e;
            end
            stdA = std(e(e ~= 0))/pc.f0;
            res15 = r.res_frac(r.dwell_Tb == 1.5);
            res075 = r.res_frac(r.dwell_Tb == 0.75);
            rows(end+1,:) = {delta, snr, vname, step, stdA, r.if_std_rel, r.if_bias_rel, ...
                r.crlb_field_std_rel, f_peak*step, f_peak/df, res15, res075}; %#ok<SAGROW>
            fprintf("delta %.3f  SNR %4g  %-17s  IF std A-seg %.2e, all %.2e f0  (field CRLB %.1e)  peak err freq = %.2f/step = %.2f df  res(1.5,0.75 Tb) = %.2f, %.2f\n", ...
                delta, snr, vname, stdA, r.if_std_rel, r.crlb_field_std_rel, f_peak*step, f_peak/df, res15, res075);
        end
    end
end

T = cell2table(rows, 'VariableNames', {'delta','snr_dB','variant','block_step', ...
    'if_std_A_rel','if_std_rel','if_bias_rel','crlb_field_std_rel','err_peak_per_step', ...
    'err_peak_per_df','res_frac_1p5Tb','res_frac_0p75Tb'});
if ~exist(p.save_folder, "dir"), mkdir(p.save_folder); end
writetable(T, fullfile(p.save_folder, "hpod_floor_diagnosis.csv"));
disp(T);

% IF error traces (noise-free) for each variant
fig = figure('Color', 'w', 'Position', [80 80 1300 700]);
tiledlayout(numel(p.deltas), 1, 'TileSpacing', 'compact');
for delta = p.deltas
    nexttile; hold on
    for v = [variants "hamm_inv_onbin"]
        e = err_ex.(sprintf("d%d_%s", round(1000*delta), v));
        plot((0:numel(e)-1)*delta*p.f0, e/p.f0, 'DisplayName', v);
    end
    xlabel('t / T_b (from segment interior start)'); ylabel('(IF - f_1)/f_0');
    title(sprintf('Noise-free IF error of HPOD\\_sep mode 1, longest A segment, \\delta = %.3f, B = \\Deltaf', delta));
    legend('Interpreter', 'none', 'Location', 'eastoutside');
end
exportgraphics(fig, fullfile(p.save_folder, "hpod_floor_diagnosis.png"), 'Resolution', 150);
