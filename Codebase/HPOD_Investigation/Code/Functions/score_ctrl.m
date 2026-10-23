function r = score_ctrl(a1, a2, ifc, truth, S, cfg)
%%% Scores one method on a spliced control (as score_track in
%%% Codebase/HPOD_Switch_Benchmark).
%%%   Two bands (a1, a2 given): rho = n2^2/(n1^2 + n2^2), amplitudes scaled
%%%   by their 95th percentile.  One band (a1, a2 empty, ifc given):
%%%   rho = (ifc - f1)/df.
%%% Switches A<->B: resolved if rho's mean over the outer halves of the
%%% window either side (window = +/- half the shorter neighbouring dwell) is
%%% < 0.25 before and > 0.75 after (or the reverse); for resolved switches,
%%% the 50% delay and the 10-90% width (Tb).
%%% Coexistence: fraction of time rho is in [0.08, 0.92] inside 'AB'
%%% segments, and inside exclusive segments >= 3 Tb (false alarms); for one
%%% band, the ripple index R = 2|<(ifc - <ifc>) e^{-i 2 pi df t}>|/df in
%%% both.

v = S.valid; Tb = S.Tb; df = S.df;
t = 1:S.nt;
two = ~isempty(a1);
if two
    n1 = abs(a1)/prctile(abs(a1(v)), 95);
    n2 = abs(a2)/prctile(abs(a2(v)), 95);
    rho = n2.^2./(n1.^2 + n2.^2 + eps);
else
    rho = min(max((ifc - S.f_tone(1))/df, -0.5), 1.5);
end
ok = false(size(t)); ok(v) = true;

tr = truth.trans(ismember(truth.trans.from, ["A","B"]) & ismember(truth.trans.to, ["A","B"]), :);
dw = min(tr.dwell_before, tr.dwell_after);
n_tr = height(tr);
res = false(n_tr,1); wid = NaN(n_tr,1); dly = NaN(n_tr,1); scored = false(n_tr,1);
for i = 1:n_tr
    ts = tr.t(i); h = round(0.5*dw(i)*Tb);
    if ts - h < v(1) || ts + h > v(end), continue; end
    scored(i) = true;
    pre = mean(rho(ts-h:ts-ceil(h/2)), 'omitnan');
    post = mean(rho(ts+ceil(h/2):ts+h), 'omitnan');
    if tr.to(i) == "B"
        res(i) = pre < 0.25 && post > 0.75;
    else
        res(i) = pre > 0.75 && post < 0.25;
    end
    if ~res(i), continue; end
    yn = (rho(ts-h:ts+h) - pre)/(post - pre);
    tw = (ts-h:ts+h);
    t50 = cross(tw, yn, 0.5, ts);
    t10 = cross(tw(tw <= t50), yn(tw <= t50), 0.1, t50);
    t90 = cross(tw(tw >= t50), yn(tw >= t50), 0.9, t50);
    dly(i) = (t50 - ts)/Tb; wid(i) = (t90 - t10)/Tb;
end
dws = unique(dw(scored));
r.dwell_Tb = dws(:).';
r.n_switch = arrayfun(@(d) sum(scored & dw == d), dws).';
r.res_frac = arrayfun(@(d) mean(res(scored & dw == d)), dws).';
r.width_Tb = arrayfun(@(d) median(wid(scored & dw == d & res), 'omitnan'), dws).';
r.delay_Tb = arrayfun(@(d) median(abs(dly(scored & dw == d & res)), 'omitnan'), dws).';

% coexistence and false alarms
co = false(size(t)); ex = co;
for i = 1:height(truth.seg)
    g = round(min(Tb, 0.25*(truth.seg.t_end(i) - truth.seg.t_start(i))));
    in = t >= truth.seg.t_start(i) + g & t <= truth.seg.t_end(i) - g & ok;
    if truth.seg.state(i) == "AB"
        co = co | in;
    elseif ismember(truth.seg.state(i), ["A" "B"]) && truth.seg.dwell_Tb(i) >= 3
        ex = ex | in;
    end
end
inb = rho > 0.08 & rho < 0.92;
r.coexist_frac = mean(inb(co));
r.false_coexist_frac = mean(inb(ex));
r.ripple_AB = NaN; r.ripple_excl = NaN;
if ~two
    r.ripple_AB = ripple(ifc, co, truth, S, "AB");
    r.ripple_excl = ripple(ifc, ex, truth, S, ["A" "B"]);
end
end

function tc = cross(tw, y, level, t_ref)
s = y - level;
k = find(s(1:end-1).*s(2:end) <= 0 & isfinite(s(1:end-1)) & isfinite(s(2:end)));
if isempty(k), tc = NaN; return; end
tk = tw(k) + (tw(k+1) - tw(k)).*(-s(k))./(s(k+1) - s(k) + eps);
[~, j] = min(abs(tk - t_ref));
tc = tk(j);
end

function R = ripple(ifc, msk, truth, S, states)
%%% Mean over segments of 2|<(ifc - <ifc>) e^{-i 2 pi df t}>|/df.
t = 1:numel(ifc);
Rs = [];
for i = 1:height(truth.seg)
    if ~ismember(truth.seg.state(i), states), continue; end
    in = msk & t >= truth.seg.t_start(i) & t <= truth.seg.t_end(i) & isfinite(ifc);
    if nnz(in) < S.Tb, continue; end
    y = ifc(in) - mean(ifc(in));
    Rs(end+1) = 2*abs(mean(y.*exp(-2i*pi*S.df*t(in)/S.fps)))/S.df; %#ok<AGROW>
end
R = mean(Rs);
end
