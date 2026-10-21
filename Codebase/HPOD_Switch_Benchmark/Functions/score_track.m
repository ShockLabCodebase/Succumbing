function r = score_track(o, sc, p, snr_dB, trim, M_eff)
%%% Scores one method's track against the truth.
%%%
%%% State indicator rho(t): the power fraction of tone B,
%%% amp2^2/(amp1^2 + amp2^2), with each amplitude scaled by its own 95th
%%% percentile; for single-trace methods (amplitudes NaN), rho = (ifc - f1)/df.
%%%
%%% Switches (A<->B only): resolved if rho's mean over the outer halves of
%%% the window either side of the switch is below p.res_lo before and above
%%% p.res_hi after (or the reverse). Window = +/- half the shorter
%%% neighbouring dwell. For resolved switches: delay of the 50% crossing and
%%% the 10-90% transition width, in beat periods T_b.
%%%
%%% Coexistence ('AB' segments, B at r_coexist): fraction of time rho lies in
%%% p.coexist_band, and the same in exclusive segments (false alarms). For
%%% single traces: ripple index R = 2|<(ifc - <ifc>) e^{-i 2 pi df t}>|/df
%%% (the "plateaus vs ripple" test).
%%%
%%% IF: bias and std of (IF - true IF)/f0 in A or B segments of at least
%%% p.if_min_dwell T_b, away from their edges; compared with the Cramer-Rao
%%% bound for a single point (Rife & Boorstyn 1974; real tone, eta = tone
%%% power / noise power) over an effective length N_eff (see the end), and
%%% the same bound with the spatial-projection gain M_eff.
%%%
%%% trim: samples excluded at each end of the record (edge effects).
%%% M_eff: SNR gain of a projection onto the envelope (fld.M_eff).

t = sc.t;
Tb = sc.Tb;
valid = t >= trim & t <= sc.nt - 1 - trim;
r.method = o.method;
r.W = o.W;
r.B_band = o.B_band;

has_amp = all(isfinite(o.amp1(valid))) && all(isfinite(o.amp2(valid)));
if has_amp
    a1 = o.amp1/prctile(o.amp1(valid), 95);
    a2 = o.amp2/prctile(o.amp2(valid), 95);
    rho = a2.^2./(a1.^2 + a2.^2 + eps);
else
    rho = (o.ifc - sc.f1)/sc.df;
    rho = min(max(rho, -0.5), 1.5);
end
r.rho = single(rho);

%% Switches
tr = sc.trans(ismember(sc.trans.from, ["A","B"]) & ismember(sc.trans.to, ["A","B"]), :);
dw = min(tr.dwell_before, tr.dwell_after);
n_tr = height(tr);
res = false(n_tr,1); dly = NaN(n_tr,1); wid = NaN(n_tr,1); scored = false(n_tr,1);
for ii = 1:n_tr
    ts = tr.t_switch(ii);
    h = round(0.5*dw(ii)*Tb);
    i0 = ts - h; i1 = ts + h;
    if i0 < trim || i1 > sc.nt - 1 - trim
        continue
    end
    scored(ii) = true;
    pre = rho(t >= i0 & t < ts - h/2);
    post = rho(t > ts + h/2 & t <= i1);
    m_pre = mean(pre, 'omitnan'); m_post = mean(post, 'omitnan');
    up = tr.to(ii) == "B";
    if up
        res(ii) = m_pre < p.res_lo && m_post > p.res_hi;
    else
        res(ii) = m_pre > p.res_hi && m_post < p.res_lo;
    end
    if ~res(ii)
        continue
    end
    ii_w = find(t >= i0 & t <= i1);
    yn = (rho(ii_w) - m_pre)/(m_post - m_pre);       % 0 before, 1 after
    tw = t(ii_w);
    t50 = nearest_crossing(tw, yn, 0.5, ts);
    t10 = nearest_crossing(tw(tw <= t50), yn(tw <= t50), 0.1, t50);
    t90 = nearest_crossing(tw(tw >= t50), yn(tw >= t50), 0.9, t50);
    dly(ii) = (t50 - ts)/Tb;
    wid(ii) = (t90 - t10)/Tb;
end
dwells = unique(dw(scored));
r.dwell_Tb = dwells(:)';
r.n_switch = arrayfun(@(d) sum(scored & dw == d), dwells)';
r.res_frac = arrayfun(@(d) mean(res(scored & dw == d)), dwells)';
r.med_abs_delay_Tb = arrayfun(@(d) median(abs(dly(scored & dw == d & res)), 'omitnan'), dwells)';
r.med_width_Tb = arrayfun(@(d) median(wid(scored & dw == d & res), 'omitnan'), dwells)';

%% Coexistence and ripple
seg = sc.seg;
co_in = false(size(t)); ex_in = false(size(t));
for ii = 1:height(seg)
    g = round(min(Tb, 0.25*(seg.t_end(ii) - seg.t_start(ii))));
    in = t >= seg.t_start(ii) + g & t < seg.t_end(ii) - g & valid;
    if seg.state(ii) == "AB"
        co_in = co_in | in;
    elseif ismember(seg.state(ii), ["A","B"]) && seg.dwell_Tb(ii) >= 3
        ex_in = ex_in | in;
    end
end
in_band = rho > p.coexist_band(1) & rho < p.coexist_band(2);
if has_amp
    r.coexist_frac = mean(in_band(co_in));
    r.false_coexist_frac = mean(in_band(ex_in));
else
    r.coexist_frac = NaN;
    r.false_coexist_frac = NaN;
end
if any(isfinite(o.ifc(valid)))
    r.ripple_AB = ripple_index(o.ifc, t, co_in, seg, sc);
    r.ripple_excl = ripple_index(o.ifc, t, ex_in, seg, sc);
else
    r.ripple_AB = NaN; r.ripple_excl = NaN;
end

%% IF bias and spread
e = [];
for ii = 1:height(seg)
    if ~ismember(seg.state(ii), ["A","B"]) || seg.dwell_Tb(ii) < p.if_min_dwell
        continue
    end
    g = round(min(Tb + o.W, 0.4*(seg.t_end(ii) - seg.t_start(ii))));
    in = t >= seg.t_start(ii) + g & t < seg.t_end(ii) - g & valid;
    if seg.state(ii) == "A"
        f_hat = o.if1; f_true = sc.if1;
    else
        f_hat = o.if2; f_true = sc.if2;
    end
    if all(isnan(f_hat(in)))
        f_hat = o.ifc;
    end
    e = [e, (f_hat(in) - f_true(in))/p.f0]; %#ok<AGROW>
end
e = e(isfinite(e));
r.if_bias_rel = mean(e);
r.if_std_rel = std(e);
% Cramer-Rao reference. The estimate integrates over the fit window plus the
% band filter's impulse response (~4 time-sigmas of a Gaussian of the same
% RMS width, i.e. ~2.2/B), so N_eff = W + 2.2/B_band (an approximation).
% For field methods the bound is divided by sqrt(M_eff), the SNR gain of a
% projection onto the envelope.
eta = 10^(snr_dB/10);
if isfinite(o.B_band)
    N = o.W + 2.2/o.B_band;
else
    N = o.W;
end
r.N_eff = N;
r.crlb_std_rel = sqrt(12/((2*pi)^2*eta*N*(N^2 - 1)))/p.f0;
r.crlb_field_std_rel = r.crlb_std_rel/sqrt(M_eff);
end

function tc = nearest_crossing(tw, y, level, t_ref)
%%% Time of the crossing of level nearest t_ref (linear interpolation).
s = y - level;
k = find(s(1:end-1).*s(2:end) <= 0 & isfinite(s(1:end-1)) & isfinite(s(2:end)));
if isempty(k)
    tc = NaN; return
end
tk = tw(k) + (tw(k+1) - tw(k)).*(-s(k))./(s(k+1) - s(k) + eps);
[~, j] = min(abs(tk - t_ref));
tc = tk(j);
end

function R = ripple_index(ifc, t, mask, seg, sc)
%%% Mean over segments of 2|<(ifc - <ifc>) e^{-i 2 pi df t}>|/df.
R_seg = [];
for ii = 1:height(seg)
    in = mask & t >= seg.t_start(ii) & t < seg.t_end(ii) & isfinite(ifc);
    if nnz(in) < sc.Tb
        continue
    end
    y = ifc(in) - mean(ifc(in));
    R_seg(end+1) = 2*abs(mean(y.*exp(-1i*2*pi*sc.df*t(in))))/sc.df; %#ok<AGROW>
end
R = mean(R_seg);
end
