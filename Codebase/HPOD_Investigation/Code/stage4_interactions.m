function stage4_interactions(cfg)
%%% Stage 4: the difference interaction A2 - A1 (and the sum, harmonics and
%%% short-time mean) against the behaviour of A1 and A2.
%%% For routes TC and INV:
%%%   - difference band at fD = f2 - f1 (widths cfg.BD_rel*df) and control
%%%     bands at 0.75 fD and 1.25 fD (same width): mode-1 amplitude;
%%%   - amplitude correlations with n1, n2, n1*n2, min(n1,n2), rho(1-rho)
%%%     and |d rho/dt|, all smoothed to the difference band's resolution
%%%     (1/BD), plus lagged cross-correlation with n1*n2;
%%%   - means by state (A1 only, A2 only, mixed) and switch-triggered averages;
%%%   - triad coherence |<aD conj(a2) a1>|/sqrt(<|aD|^2><|a1 a2|^2>), which is
%%%     non-zero only if the difference structure is phase-locked to the two
%%%     tones (a quadratic interaction), with circular-shift surrogates;
%%%     the same for the sum (aS conj(a1) conj(a2)) and the harmonics
%%%     (a2f conj(a)^2) as checks;
%%%   - the St = 0 coefficient (short-time mean, Mazharmanesh et al. 2026)
%%%     against rho.
%%% Writes Data/stage4_interactions.mat.

t0 = tic;
S = load_proj(cfg);
f = S.f_tone; df = S.df; fps = S.fps; v = S.valid;
rng(cfg.seed);
nm = cfg.modes_ref; Bt = cfg.B_ref*df;
fD = f(2) - f(1);
I = struct();
for route = ["TC" "INV"]
    a1 = iso_route(S, route, f(1), Bt, nm).a(1,:);
    a2 = iso_route(S, route, f(2), Bt, nm).a(1,:);
    n1 = abs(a1)/prctile(abs(a1(v)), 95);
    n2 = abs(a2)/prctile(abs(a2(v)), 95);
    rho = n2.^2./(n1.^2 + n2.^2 + eps);
    st = state_seq(rho, v, cfg.rho_lo, cfg.rho_hi);
    out = struct();
    for BDr = cfg.BD_rel
        BD = BDr*df;
        Ls = round(fps/BD);                      % smoothing to the difference band's resolution
        sm = @(x) movmean(x, Ls);
        bands = struct('D', fD, 'Dlo', 0.75*fD, 'Dhi', 1.25*fD);
        res = struct();
        for bn = string(fieldnames(bands)).'
            aD = iso_route(S, route, bands.(bn), BD, nm).a(1,:);
            nD = abs(aD)/prctile(abs(aD(v)), 95);
            x = sm(nD);
            pred = struct('n1', sm(n1), 'n2', sm(n2), 'prod', sm(n1.*n2), 'min', sm(min(n1, n2)), ...
                'mix', sm(rho.*(1 - rho)), 'drho', sm(abs(gradient(sm(rho)))));
            cr = struct();
            for pn = string(fieldnames(pred)).'
                cc = corrcoef(x(v), pred.(pn)(v)); cr.(pn) = cc(1,2);
            end
            % lagged correlation with n1*n2 (+lag: difference band later)
            lags = round((-20:0.5:20)*1e-3*fps);
            xl = zeros(size(lags));
            xs = x(v) - mean(x(v)); ps = pred.prod(v) - mean(pred.prod(v));
            for j = 1:numel(lags)
                if lags(j) >= 0
                    xl(j) = sum(xs(1+lags(j):end).*ps(1:end-lags(j)));
                else
                    xl(j) = sum(xs(1:end+lags(j)).*ps(1-lags(j):end));
                end
            end
            xl = xl/sqrt(sum(xs.^2)*sum(ps.^2));
            % by state
            sv = rho(v);
            bystate = [mean(nD(v(sv < 0.1))), mean(nD(v(sv > 0.9))), mean(nD(v(sv > cfg.rho_lo & sv < cfg.rho_hi)))];
            % triad coherence and surrogates
            [g, gs] = triad(aD(v), conj(a2(v)).*a1(v), cfg.n_surrogates, round(0.05*fps));
            both = n1(v) > 0.3 & n2(v) > 0.3;
            [gb, gbs] = triad(aD(v(both)), conj(a2(v(both))).*a1(v(both)), cfg.n_surrogates, round(0.005*fps));
            res.(bn) = struct('f', bands.(bn), 'corr', cr, 'lag_ms', lags/fps*1e3, 'xcorr_prod', xl, ...
                'bystate', bystate, 'gamma', g, 'gamma_sur95', prctile(gs, 95), ...
                'gamma_both', gb, 'gamma_both_sur95', prctile(gbs, 95), 'frac_both', mean(both), ...
                'nD', single(nD(1:5:end)));
            if bn == "D", res.D.a = single(aD); end
            fprintf("%s BD %.2f df band %s: corr n1 %.2f n2 %.2f prod %.2f mix %.2f drho %.2f; state %s; gamma %.3f (sur95 %.3f), both-on %.3f (%.3f) [%.0f s]\n", ...
                route, BDr, bn, cr.n1, cr.n2, cr.prod, cr.mix, cr.drho, mat2str(bystate, 3), g, prctile(gs,95), gb, prctile(gbs,95), toc(t0));
        end
        % switch-triggered averages (switches with >= 5 ms either side)
        sw = st.sw; dwl = st.dw;
        win = round(15e-3*fps); tt = -win:5:win;
        keepsw = false(size(sw,1),1);
        tsw = round(mean(sw(:,1:2), 2));
        for j = 1:size(sw,1)
            prev = dwl(dwl(:,2) < sw(j,2) & dwl(:,2) >= sw(j,2) - 1, :);
            nxt = dwl(dwl(:,1) == sw(j,2), :);
            keepsw(j) = ~isempty(prev) && ~isempty(nxt) && prev(1,2) - prev(1,1) >= 5e-3*fps && ...
                nxt(1,2) - nxt(1,1) >= 5e-3*fps && tsw(j) - win > v(1) && tsw(j) + win < v(end);
        end
        nD = abs(res.D.a)/prctile(abs(res.D.a(v)), 95);
        sta = struct();
        for dirn = [1 2]
            js = find(keepsw & sw(:,3) == dirn);
            M = zeros(numel(js), numel(tt), 3);
            for q = 1:numel(js)
                idx = tsw(js(q)) + tt;
                M(q,:,1) = n1(idx); M(q,:,2) = n2(idx); M(q,:,3) = nD(idx);
            end
            sta.(sprintf('from%d', dirn)) = struct('n', numel(js), 'mean', squeeze(mean(M, 1)), ...
                't_ms', tt/fps*1e3);
        end
        res.sta = sta;
        out.(sprintf('BD%03d', round(100*BDr))) = res;
    end

    % sum and harmonics: phase-locking checks
    chk = struct('sum', {f(1) + f(2), @(aX) conj(a1(v)).*conj(a2(v))}, ...
                 'h1', {2*f(1), @(aX) conj(a1(v)).^2}, 'h2', {2*f(2), @(aX) conj(a2(v)).^2});
    H = struct();
    for hn = ["sum" "h1" "h2"]
        aX = iso_route(S, route, chk(1).(hn), Bt, nm).a(1,:);
        refc = chk(2).(hn)(aX);
        [g, gs] = triad(aX(v), refc, cfg.n_surrogates, round(0.05*fps));
        nX = abs(aX)/prctile(abs(aX(v)), 95);
        bystate = [mean(nX(v(rho(v) < 0.1))), mean(nX(v(rho(v) > 0.9))), mean(nX(v(rho(v) > cfg.rho_lo & rho(v) < cfg.rho_hi)))];
        H.(hn) = struct('f', chk(1).(hn), 'gamma', g, 'gamma_sur95', prctile(gs, 95), 'bystate', bystate);
        fprintf("%s %s (%.0f Hz): gamma %.3f (sur95 %.3f), by state %s\n", route, hn, chk(1).(hn), g, prctile(gs,95), mat2str(bystate,3));
    end
    out.H = H;

    % short-time mean: St = 0 bin, modes 1-2 (tcoeffs, window nfft)
    k0 = find(S.col_bin == 1);
    rs = movmean(rho, S.nfft);
    st0 = struct();
    for q = 1:numel(k0)
        a0 = real(double(S.a_tc(k0(q), :)));
        cc = corrcoef(a0(v), rs(v)); c1 = corrcoef(a0(v), movmean(n1(v), S.nfft)); c2 = corrcoef(a0(v), movmean(n2(v), S.nfft));
        st0.(sprintf('m%d', S.col_mode(k0(q)))) = struct('corr_rho', cc(1,2), 'corr_n1', c1(1,2), 'corr_n2', c2(1,2), ...
            'a0', single(a0(1:5:end)));
        fprintf("%s St0 mode %d: corr with rho %.2f, n1 %.2f, n2 %.2f\n", route, S.col_mode(k0(q)), cc(1,2), c1(1,2), c2(1,2));
    end
    out.st0 = st0;
    out.rho = single(rho(1:5:end)); out.n1 = single(n1(1:5:end)); out.n2 = single(n2(1:5:end));
    I.(route) = out;
end
info = struct('f_tone', f, 'df', df, 'fD', fD, 'fps', fps, 'Tb', S.Tb, 'St_per_Hz', S.St_per_Hz);
save(fullfile(cfg.data_dir, "stage4_interactions.mat"), 'I', 'info', '-v7.3');
fprintf("Stage 4 done [%.0f s]\n", toc(t0));
end

function [g, gs] = triad(aX, b, n_sur, min_shift)
%%% Normalised phase coupling between aX and b (b carries the expected
%%% phase, e.g. conj(a2).*a1 for the difference): |<aX b>|/sqrt(<|aX|^2><|b|^2>).
%%% Surrogates: aX circularly shifted by at least min_shift samples.
g = abs(mean(aX.*b))/sqrt(mean(abs(aX).^2)*mean(abs(b).^2));
n = numel(aX);
gs = zeros(n_sur, 1);
for s = 1:n_sur
    sh = min_shift + randi(max(1, n - 2*min_shift));
    gs(s) = abs(mean(circshift(aX, sh).*b))/sqrt(mean(abs(aX).^2)*mean(abs(b).^2));
end
end
