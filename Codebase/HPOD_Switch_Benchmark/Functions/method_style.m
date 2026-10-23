function st = method_style(m)
%%% Fixed colour, marker and line style per method, so lines that overlap
%%% stay distinguishable and every figure uses the same key.

names = ["HPOD_sep","HPOD_comb","HPOD_raw","Gauss_pt","Bump_pt","Morlet6_pt","FSST_pt", ...
         "Coef_pk","Fixed_sep","Fixed_comb","POD1s_sep","POD1s_comb"];
cols = [0.00 0.45 0.74; 0.85 0.33 0.10; 0.47 0.67 0.19; 0.49 0.18 0.56; ...
        0.93 0.69 0.13; 0.30 0.75 0.93; 0.64 0.08 0.18; ...
        0.25 0.25 0.25; 0.00 0.60 0.50; 0.80 0.40 0.70; 0.35 0.35 0.90; 0.95 0.50 0.30];
marks = {'o','s','^','d','v','x','p','h','<','>','+','*'};
lines_ = {'-','-','-','--','--',':','-.','-',':',':','--','--'};
k = find(names == string(m), 1);
if isempty(k), k = 1; end
st = {'Color', cols(k,:), 'Marker', marks{k}, 'LineStyle', lines_{k}, 'LineWidth', 1.2, 'MarkerSize', 6};
end
