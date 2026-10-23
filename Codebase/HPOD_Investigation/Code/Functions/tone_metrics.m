function [m, ts] = tone_metrics(a1, a2, S, cfg, W, ref)
%%% Real-data metrics for one pair of tone tracks (no ground truth).
%%%
%%% a1, a2: complex coefficients of the A1 and A2 bands; W [1,2] IF line-fit
%%% windows (samples); ref (optional): state struct (state_seq) of the
%%% reference method, used for the leakage measure.
%%%
%%% m: switch count and widths, dwell lengths, time fractions in A1 / A2 /
%%%    mixed / off, amplitude correlation, IF jitter in long dwells, and
%%%    leakage (the other band's normalised amplitude inside the reference
%%%    method's long dwells).
%%% ts: decimated series (every 5th sample) for figures.

v = S.valid; fps = S.fps;
amp1 = abs(a1); amp2 = abs(a2);
n1 = amp1/prctile(amp1(v), 95);
n2 = amp2/prctile(amp2(v), 95);
rho = n2.^2./(n1.^2 + n2.^2 + eps);
if1 = phase_slope_if(a1, W(1))*fps;
if2 = phase_slope_if(a2, W(2))*fps;
st = state_seq(rho, v, cfg.rho_lo, cfg.rho_hi);

m.n_switch = size(st.sw, 1);
m.switch_width_ms = (st.sw(:,2) - st.sw(:,1))/fps*1e3;
unc = st.dw(:,4) == 0;
m.dwell_ms = (st.dw(unc,2) - st.dw(unc,1) + 1)/fps*1e3;
m.dwell_state = st.dw(unc,3);
rv = rho(v);
m.frac_A1 = mean(st.s(v) == 1);
m.frac_A2 = mean(st.s(v) == 2);
m.mixed_frac = mean(rv > cfg.rho_lo & rv < cfg.rho_hi);
m.off_frac = mean(max(n1(v), n2(v)) < cfg.off_level);
cc = corrcoef(n1(v), n2(v)); m.corr12 = cc(1,2);

% IF jitter: std of the IF inside long dwells (edges of W and one beat
% period excluded), median over dwells; and the mean IF of each tone
long = st.dw(:,2) - st.dw(:,1) >= cfg.long_dwell_Tb*S.Tb;
m.if_std = NaN(1,2); m.if_mean = NaN(1,2);
fi = {if1, if2};
for k = 1:2
    d = st.dw(long & st.dw(:,3) == k, :);
    sd = []; mu = [];
    for r = 1:size(d,1)
        g = round(W(k)/2 + S.Tb);
        seg = fi{k}(d(r,1)+g:d(r,2)-g);
        seg = seg(isfinite(seg));
        if numel(seg) > 10, sd(end+1) = std(seg); mu(end+1) = mean(seg); end %#ok<AGROW>
    end
    m.if_std(k) = median(sd); m.if_mean(k) = mean(mu);
end

% leakage: the other tone's normalised amplitude inside the reference
% method's long A1 / A2 dwells
m.leak = NaN(1,2);
if nargin >= 6 && ~isempty(ref)
    d = ref.dw(ref.dw(:,2) - ref.dw(:,1) >= cfg.long_dwell_Tb*S.Tb, :);
    in1 = false(size(n1)); in2 = in1;
    for r = 1:size(d,1)
        g = round(S.Tb);
        if d(r,3) == 1, in1(d(r,1)+g:d(r,2)-g) = true; else, in2(d(r,1)+g:d(r,2)-g) = true; end
    end
    m.leak = [median(n2(in1)), median(n1(in2))];
end

dec = 5;
ts.t = single((0:dec:numel(a1)-1)/fps);
ts.n1 = single(n1(1:dec:end)); ts.n2 = single(n2(1:dec:end));
ts.rho = single(rho(1:dec:end));
ts.if1 = single(if1(1:dec:end)); ts.if2 = single(if2(1:dec:end));
ts.st = st;
end
