function [Sc, truth] = build_splice(S, cols, rho, n1, n2, cfg, seed)
%%% Positive control built from the real record: stretches where only A1 or
%%% only A2 is on (by the reference state indicator rho) are cut from the
%%% projections and joined with raised-cosine cross-fades into a known
%%% schedule (cfg.ctrl_schedule, dwells in beat periods, repeated
%%% cfg.ctrl_repeats times), so every method can be scored against true
%%% switch times on real turbulence and camera noise. Coexistence segments
%%% ('AB') add an A2 stretch, scaled so its tone is cfg.ctrl_r of A1's, to an
%%% A1 stretch (this doubles the broadband background there: a conservative
%%% test). The projections are linear in the data, so splicing them equals
%%% splicing the fields.
%%%
%%% S: projection-space data; cols: columns kept; rho, n1, n2: reference
%%% state indicator and normalised amplitudes over the whole record.
%%% Output Sc (proj, probes and metadata, ready for finish_proj) and truth:
%%% seg table (t_start, t_end, state 'A'/'B'/'AB') and trans (t, from, to,
%%% dwell_before, dwell_after in Tb).

rng(seed);
Tb = S.Tb; fps = S.fps;
ramp = round(cfg.ctrl_ramp_periods*fps/S.f_tone(1));
v = S.valid;
ok = false(size(rho)); ok(v) = true;
offm = max(n1, n2) < cfg.off_level;
poolA = runs(ok & rho < cfg.ctrl_pool_rho & ~offm);
poolB = runs(ok & rho > 1 - cfg.ctrl_pool_rho & ~offm);
% amplitude scale for coexistence: A2 tone at ctrl_r of A1's
inA = mask(poolA, numel(rho)); inB = mask(poolB, numel(rho));
s_AB = cfg.ctrl_r*median(n1(inA))/median(n2(inB));

% schedule (samples): padding (any real stretch, 'P', not scored), repeats, padding
pad = {'P', (S.nfft + 30*Tb)/Tb};       % > nfft + the invspod tail (< nfft/2)
sch = [pad; repmat(cfg.ctrl_schedule, cfg.ctrl_repeats, 1); pad];
len = max(1, round(cell2mat(sch(:,2))*Tb));
T0 = [1; cumsum(len(1:end-1)) + 1];
nt = sum(len);
Kc = numel(cols);
proj = complex(zeros(Kc, nt, 'single'));
probes = zeros(size(S.probes,1), nt, 'single');
wsum = zeros(1, nt);
hh = max(1, round(ramp/2));                    % cross-fade half-width: ramp in total
poolP = [v(1), v(end)];
for i = 1:numel(len)
    T1 = T0(i) + len(i);
    a = max(1, T0(i) - hh); b = min(nt, T1 - 1 + hh);
    n = b - a + 1;
    w = ones(1, n);
    if i > 1                                   % ramp up across [T0 - hh, T0 + hh)
        u = (a:b) - (T0(i) - hh);
        r = u < 2*hh; w(r) = 0.5 - 0.5*cos(pi*u(r)/(2*hh));
    end
    if i < numel(len)                          % ramp down across [T1 - hh, T1 + hh)
        u = (a:b) - (T1 - hh);
        r = u >= 0; w(r) = w(r).*(0.5 + 0.5*cos(pi*u(r)/(2*hh)));
    end
    switch sch{i,1}
        case 'P',  [p, q] = draw(poolP, n, S, cols);
        case 'A',  [p, q] = draw(poolA, n, S, cols);
        case 'B',  [p, q] = draw(poolB, n, S, cols);
        case 'AB'
            [p, q] = draw(poolA, n, S, cols);
            [p2, q2] = draw(poolB, n, S, cols);
            p = p + s_AB*p2; q = q + s_AB*q2;
    end
    proj(:, a:b) = proj(:, a:b) + single(w).*p;
    probes(:, a:b) = probes(:, a:b) + single(w).*q;
    wsum(a:b) = wsum(a:b) + w;
end
assert(max(abs(wsum - 1)) < 1e-9, 'cross-fade weights do not sum to 1');

Sc = struct('proj', proj, 'probes', probes, 'probe_xy', S.probe_xy, ...
    'G1', S.G1(cols, cols), 'G2', S.G2(cols, cols), 'col_bin', S.col_bin(cols), ...
    'col_mode', S.col_mode(cols), 'St', S.St, 'f', S.f, 'fps', fps, 'nfft', S.nfft, ...
    'overlap', S.overlap, 'L', S.L, 'f_tone', S.f_tone);
st = string(sch(:,1));
truth.seg = table(T0, T0 + len - 1, st, cell2mat(sch(:,2)), ...
    'VariableNames', {'t_start', 't_end', 'state', 'dwell_Tb'});
k = 2:numel(len);
truth.trans = table(T0(k), st(k-1), st(k), cell2mat(sch(k-1,2)), cell2mat(sch(k,2)), ...
    'VariableNames', {'t', 'from', 'to', 'dwell_before', 'dwell_after'});
truth.s_AB = s_AB; truth.ramp = ramp;
truth.pool_len_ms = [sum(poolA(:,2) - poolA(:,1) + 1), sum(poolB(:,2) - poolB(:,1) + 1)]/fps*1e3;
end

function rr = runs(m)
%%% [first last] of each run of true in logical row m.
d = diff([false, m, false]);
rr = [find(d == 1).', find(d == -1).' - 1];
end

function m = mask(rr, n)
m = false(1, n);
for i = 1:size(rr,1), m(rr(i,1):rr(i,2)) = true; end
end

function [p, q] = draw(pool, n, S, cols)
%%% A random stretch of n samples inside one pool run long enough for it.
L = pool(:,2) - pool(:,1) + 1;
c = find(L >= n);
assert(~isempty(c), 'no pool stretch of %d samples', n);
i = c(randi(numel(c)));
s0 = pool(i,1) + randi(L(i) - n + 1) - 1;
p = double(S.proj(cols, s0 + (0:n-1)));
q = double(S.probes(:, s0 + (0:n-1)));
end
