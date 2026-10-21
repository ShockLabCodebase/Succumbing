function [T_sum, T_sw] = results_tables(R)
%%% Flattens the result rows into a summary table (one row per method and
%%% configuration) and a switch table (one row per method, configuration and
%%% dwell).

cfg = {'delta','snr_dB','L_lambda','B_over_df'};
sc_fields = {'W','B_band','coexist_frac','false_coexist_frac','ripple_AB', ...
    'ripple_excl','if_bias_rel','if_std_rel','N_eff','crlb_std_rel','crlb_field_std_rel'};
n = numel(R);
T_sum = table('Size', [n 0]);
T_sum.method = [R.method]';
for f = [cfg sc_fields]
    T_sum.(f{1}) = [R.(f{1})]';
end

rows = {};
for ii = 1:n
    for j = 1:numel(R(ii).dwell_Tb)
        rows(end+1,:) = {R(ii).method, R(ii).delta, R(ii).snr_dB, R(ii).L_lambda, ...
            R(ii).B_over_df, R(ii).dwell_Tb(j), R(ii).n_switch(j), R(ii).res_frac(j), ...
            R(ii).med_abs_delay_Tb(j), R(ii).med_width_Tb(j)}; %#ok<AGROW>
    end
end
T_sw = cell2table(rows, 'VariableNames', {'method','delta','snr_dB','L_lambda', ...
    'B_over_df','dwell_Tb','n_switch','res_frac','med_abs_delay_Tb','med_width_Tb'});
T_sw.method = string(T_sw.method);
end
