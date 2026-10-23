%%% Synthetic switch benchmark for instantaneous-frequency tracking.
%%%
%%% Two advecting wavepackets at f0 and f0*(1 + delta) switch on and off on a
%%% prescribed schedule (exclusive switches with dwells from 6 down to 0.375
%%% beat periods, a coexistence interval, an off interval), with white noise.
%%% Each method's tone amplitudes and IFs are scored against the truth:
%%%   - switch resolution, delay and 10-90% width vs dwell, bandwidth B, SNR
%%%     and field-of-view length L
%%%   - coexistence detection (two bands), and the IF "plateau vs ripple"
%%%     test for single-trace methods (one band holding both tones)
%%%   - IF bias and spread against the single-point Cramer-Rao bound
%%%   - the Hilbert step's own floor from the known analytic truth
%%% Methods: SPOD -> band-B reconstruction -> HPOD_t (separate bands and one
%%% combined band), HPOD_t of the raw field, and single-probe Gaussian
%%% (STFT / Morlet-at-one-scale), bump, default Morlet and synchrosqueezing.
%%% With p.coef_methods, also the direct convolution coefficients, a fixed-
%%% mode projection and POD without the Hilbert step (run_t8_coef_compare.m).
%%%
%%% Background: Library_of_Shock_Lab/Research_Questions/
%%% hpod-instantaneous-frequency-uncertainty.md ("Proposed tests", T1 and T8).
%%%
%%% Set quick = true for a fast check of the whole chain (seconds); the full
%%% sweep takes longer (see README). quick can also be set before running,
%%% e.g. matlab -batch "quick = true; run_switch_benchmark". A struct
%%% "overrides" set before running replaces fields of p, e.g.
%%% overrides.recon = "conv"; overrides.save_folder = "Results_conv";

clearvars -except quick overrides; close all
addpath(genpath("Functions"));

if ~exist("quick", "var")
    quick = false;
end
p = bench_default_params(quick);
if exist("overrides", "var")
    for f = fieldnames(overrides)'
        p.(f{1}) = overrides.(f{1});
    end
end
% Overrides go here, e.g. p.deltas = 0.10; p.snr_dB = [20 0];

if ~exist(p.save_folder, "dir")
    mkdir(p.save_folder);
end

R = struct([]);
floors = struct([]);
ex = [];
snr_ex = p.snr_dB(ceil(end/2));
[~, iB_ex] = min(abs(p.B_over_df - 1));
t_start = tic;

for id = 1:numel(p.deltas)
    delta = p.deltas(id);
    sc = make_switch_scenario(p, delta, p.seed);
    df = sc.df;
    nfft = 2^nextpow2(p.nfft_factor/df);
    Bmax = max(p.B_over_df)*df;
    f_range = [sc.f1 - df - Bmax, sc.f2 + df + Bmax];
    trim = nfft/2;
    fprintf("delta = %.3f: Tb = %.0f samples, nt = %d, nfft = %d\n", delta, sc.Tb, sc.nt, nfft);

    for iB = 1:numel(p.B_over_df)
        hf = hilbert_floor(sc, if_window(p, p.B_over_df(iB)*df));
        hf.delta = delta; hf.B_over_df = p.B_over_df(iB);
        floors = [floors hf]; %#ok<SAGROW>
    end

    for is = 1:numel(p.snr_dB)
        snr = p.snr_dB(is);
        for iL = 1:numel(p.L_lambda)
            L = p.L_lambda(iL);
            seed = p.seed + 1000*id + 100*is + iL;
            fld = make_wavepacket_field(p, sc, L, snr, seed);
            fprintf("  SNR %g dB, L = %g lambda (nx = %d)  [%.0f s]\n", snr, L, numel(fld.x), toc(t_start));

            make_ex = id == 1 && snr == snr_ex && L == p.L_point;
            if L == p.L_point
                for iB = 1:numel(p.B_over_df)
                    outs = run_point_methods(p, sc, fld, p.B_over_df(iB)*df);
                    [R, rho] = add_rows(R, outs, sc, p, snr, trim, delta, L, p.B_over_df(iB), fld.M_eff);
                    if make_ex && iB == iB_ex
                        ex.point = outs; ex.rho_point = rho;
                    end
                end
            end

            S = spod_welch(fld.u, nfft, p.overlap, f_range, p.n_modes_keep);
            H_raw = hpod_time(fld.u, 2, p.hpod_trim_frac);
            M_eff = fld.M_eff;
            for iB = 1:numel(p.B_over_df)
                outs = run_field_methods(p, sc, S, H_raw, p.B_over_df(iB)*df, fld.u);
                [R, rho] = add_rows(R, outs, sc, p, snr, trim, delta, L, p.B_over_df(iB), M_eff);
                if make_ex && iB == iB_ex
                    ex.field = outs; ex.rho_field = rho;
                    ex.sc = sc; ex.trim = trim; ex.snr = snr; ex.L = L;
                    ex.B_over_df = p.B_over_df(iB); ex.S_f = S.f; ex.S_L = S.L(1,:);
                end
            end
            clear fld S H_raw
        end
    end
end
fprintf("Done in %.0f s\n", toc(t_start));

%% Tables
[T_sum, T_sw] = results_tables(R);
T_floor = struct2table(rmfield(floors, {'if_rms_rel','env_rms','nuttall_frac'}));
T_floor.if_rms_rel_A = arrayfun(@(s) s.if_rms_rel(1), floors)';
T_floor.if_rms_rel_B = arrayfun(@(s) s.if_rms_rel(2), floors)';
T_floor.nuttall_frac_A = arrayfun(@(s) s.nuttall_frac(1), floors)';
writetable(T_sum, fullfile(p.save_folder, "switch_benchmark_summary.csv"));
writetable(T_sw, fullfile(p.save_folder, "switch_benchmark_switches.csv"));
writetable(T_floor, fullfile(p.save_folder, "switch_benchmark_hilbert_floor.csv"));
save(fullfile(p.save_folder, "switch_benchmark_results.mat"), "R", "T_sum", "T_sw", "T_floor", "p", "ex", "-v7.3");
disp(T_floor);

%% Plots
if p.do_plots
    plot_example_traces(ex, p);
    plot_sweep_results(T_sum, T_sw, p);
end

function [R, rho] = add_rows(R, outs, sc, p, snr, trim, delta, L, B_over_df, M_eff)
%%% Scores each track and appends a row (without the long rho series).
rho = cell(1, numel(outs));
for m = 1:numel(outs)
    r = score_track(outs(m), sc, p, snr, trim, M_eff);
    rho{m} = r.rho;
    r = rmfield(r, 'rho');
    r.delta = delta; r.snr_dB = snr; r.L_lambda = L; r.B_over_df = B_over_df;
    R = [R r]; %#ok<AGROW>
end
end
