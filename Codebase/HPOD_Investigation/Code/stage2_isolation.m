function stage2_isolation(cfg)
%%% Stage 2: isolation of A1 and A2 on the real record, every route and
%%% setting, with real-data metrics (no ground truth; stage 3 has that).
%%%   - routes INV (the group's invspod -> Hilbert -> HPOD), TC (tcoeffs band
%%%     field -> POD), FIX (TC band onto one fixed mode), PROBE (one pixel),
%%%     at band widths cfg.B_rel*df, with cfg.modes_ref modes per bin;
%%%     COEF (single tcoeffs coefficient);
%%%   - INV and TC with cfg.modes_per_bin modes per bin, at cfg.B_ref*df;
%%%   - one band holding both tones (INV, TC): mode 1 IF and mode 2;
%%%   - a noise band midway between the tones.
%%% Writes Data/stage2_isolation.mat.

t0 = tic;
S = load_proj(cfg);
f = S.f_tone; df = S.df; fps = S.fps;
fprintf("Tones: A1 %.1f Hz (St %.4f), A2 %.1f Hz (St %.4f), df %.1f Hz, Tb %.1f samples [%.0f s]\n", ...
    f(1), f(1)*S.St_per_Hz, f(2), f(2)*S.St_per_Hz, df, S.Tb, toc(t0));
info = struct('f_tone', f, 'df', df, 'Tb', S.Tb, 'fps', fps, 'nfft', S.nfft, 'nt', S.nt, ...
    'valid', [S.valid(1) S.valid(end)], 'St_per_Hz', S.St_per_Hz, 'St', S.St, 'L', S.L, 'f', S.f);
Wf = @(B, k) max(fps/B, cfg.if_min_periods*fps/f(k));

%% Probe: the lipline pixel where both tones are strongest
Bp = cfg.B_ref*df;
pa = zeros(size(S.probes,1), 2);
for ip = 1:size(S.probes,1)
    for k = 1:2
        tr = iso_route(S, "PROBE", f(k), Bp, 1, struct('probe', ip));
        pa(ip,k) = mean(abs(tr.a(S.valid)));
    end
end
[~, probe] = max(sqrt(pa(:,1).*pa(:,2)));
info.probe = probe; info.probe_xy = S.probe_xy(probe,:); info.probe_amp = pa;
fprintf("Probe %d at x/D %.2f, y/D %.2f\n", probe, info.probe_xy);

%% Reference: TC, B_ref, modes_ref
B = cfg.B_ref*df; nm = cfg.modes_ref;
t1 = iso_route(S, "TC", f(1), B, nm); t2 = iso_route(S, "TC", f(2), B, nm);
[~, ts] = tone_metrics(t1.a(1,:), t2.a(1,:), S, cfg, [Wf(B,1) Wf(B,2)]);
ref = ts.st;

%% Separate bands, all routes and settings
list = {};
for Br = cfg.B_rel
    for r = ["INV" "TC" "FIX" "PROBE"]
        list(end+1,:) = {r, Br, cfg.modes_ref}; %#ok<AGROW>
    end
end
list(end+1,:) = {"COEF", NaN, 1};
for nm = setdiff(cfg.modes_per_bin, cfg.modes_ref)
    for r = ["INV" "TC"]
        list(end+1,:) = {r, cfg.B_ref, nm}; %#ok<AGROW>
    end
end
R = struct([]);
keep = struct();
for c = 1:size(list,1)
    route = list{c,1}; Br = list{c,2}; nm = list{c,3};
    if route == "COEF", B = 1.36*fps/S.nfft; else, B = Br*df; end
    tr = cell(1,2);
    for k = 1:2
        tr{k} = iso_route(S, route, f(k), B, nm, struct('probe', probe));
    end
    [m, ts] = tone_metrics(tr{1}.a(1,:), tr{2}.a(1,:), S, cfg, [Wf(B,1) Wf(B,2)], ref);
    r = struct('route', route, 'B_rel', Br, 'B', B, 'nm', nm, 'm', m, 'ts', ts, ...
        'energy1', tr{1}.energy, 'energy2', tr{2}.energy, 'n_cols', numel(tr{1}.cols));
    R = [R r]; %#ok<AGROW>
    fprintf("%-5s B %.2f df, %d modes: %4d switches, median width %.2f ms, mixed %.3f, corr %.2f, leak %.3f/%.3f, IF std %.1f/%.1f Hz [%.0f s]\n", ...
        route, Br, nm, m.n_switch, median(m.switch_width_ms), m.mixed_frac, m.corr12, m.leak, m.if_std, toc(t0));
    if any(route == ["TC" "INV"]) && Br == cfg.B_ref && nm == cfg.modes_ref
        keep.(route).a1 = single(tr{1}.a); keep.(route).a2 = single(tr{2}.a);
        keep.(route).W1 = tr{1}.W; keep.(route).W2 = tr{2}.W;
        keep.(route).cols1 = tr{1}.cols; keep.(route).cols2 = tr{2}.cols;
    end
end

%% Noise band midway between the tones (normalised by each route's tone level)
noise = struct();
fmid = mean(f);
for route = ["INV" "TC"]
    tn = iso_route(S, route, fmid, cfg.B_ref*df, cfg.modes_ref);
    lev = prctile(abs(double(keep.(route).a1(1,S.valid))), 95);
    noise.(route) = median(abs(tn.a(1,S.valid)))/lev;
end
fprintf("Noise band (midway) / A1 95th pct: INV %.3f, TC %.3f\n", noise.INV, noise.TC);

%% One band holding both tones
comb = struct();
for route = ["INV" "TC"]
    Bc = df + cfg.B_ref*df;
    tc = iso_route(S, route, fmid, Bc, cfg.modes_ref, struct('n_out', 3));
    Wc = max(fps/Bc, cfg.if_min_periods*fps/f(1));
    ifc = phase_slope_if(tc.a(1,:), Wc)*fps;
    rho_c = (ifc - f(1))/df;
    % windowed ripple index (4 beat periods, hop one beat period)
    Lw = round(4*S.Tb); hop = round(S.Tb);
    starts = S.valid(1):hop:S.valid(end) - Lw;
    Rw = zeros(size(starts));
    tt = (0:Lw-1)/fps;
    for j = 1:numel(starts)
        y = ifc(starts(j) + (0:Lw-1)); y = y - mean(y);
        Rw(j) = 2*abs(mean(y.*exp(-2i*pi*df*tt)))/df;
    end
    cc = corrcoef(rho_c(S.valid), double(ref.s(S.valid)) - 1);
    comb.(route) = struct('energy', tc.energy, 'rho_c', single(rho_c(1:5:end)), ...
        'ripple_t', single((starts + Lw/2)/fps), 'ripple', single(Rw), 'corr_state', cc(1,2), ...
        'a', single(tc.a), 'W', tc.W, 'cols', tc.cols);
    fprintf("Combined band %s: energies %s, corr(rho_c, ref state) %.2f\n", route, mat2str(tc.energy.', 3), cc(1,2));
end

save(fullfile(cfg.data_dir, "stage2_isolation.mat"), 'info', 'R', 'keep', 'noise', 'comb', 'ref', '-v7.3');
fprintf("Stage 2 done [%.0f s]\n", toc(t0));
end
