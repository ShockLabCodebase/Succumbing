function stage3_controls(cfg)
%%% Stage 3: positive controls with ground truth from the real record.
%%% Splices A1-only and A2-only stretches (chosen with the reference method,
%%% TC at B_ref) into a known schedule of exclusive switches (dwells 0.375-6
%%% beat periods) and coexistence intervals, then scores every route and
%%% band width on it (switch resolution, width, coexistence detection, false
%%% alarms, single-band ripple). Writes Data/stage3_controls.mat.

t0 = tic;
S = load_proj(cfg);
f = S.f_tone; df = S.df; fps = S.fps;
s2 = load(fullfile(cfg.data_dir, "stage2_isolation.mat"), 'info');
probe = s2.info.probe;

% reference state indicator on the real record
B = cfg.B_ref*df;
t1 = iso_route(S, "TC", f(1), B, cfg.modes_ref); t2 = iso_route(S, "TC", f(2), B, cfg.modes_ref);
n1 = abs(t1.a(1,:))/prctile(abs(t1.a(1,S.valid)), 95);
n2 = abs(t2.a(1,:))/prctile(abs(t2.a(1,S.valid)), 95);
rho = n2.^2./(n1.^2 + n2.^2 + eps);
clear t1 t2

% columns needed: the tone region
fb = S.f(S.col_bin);
cols = find(fb(:) >= f(1) - 1.5*df & fb(:) <= f(2) + 1.5*df);
[Sc, truth] = build_splice(S, cols, rho, n1, n2, cfg, cfg.seed);
fprintf("Control: %d samples, %d transitions, pools %.0f / %.0f ms, AB scale %.2f [%.0f s]\n", ...
    size(Sc.proj,2), height(truth.trans), truth.pool_len_ms, truth.s_AB, toc(t0));
clear S
Sc = finish_proj(Sc, cfg);
Sc.df = df; Sc.Tb = fps/df;

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
C = struct([]);
for c = 1:size(list,1)
    route = list{c,1}; Br = list{c,2}; nm = list{c,3};
    if route == "COEF", B = 1.36*fps/Sc.nfft; else, B = Br*df; end
    a = cell(1,2);
    for k = 1:2
        tr = iso_route(Sc, route, f(k), B, nm, struct('probe', probe));
        a{k} = tr.a(1,:);
    end
    r = score_ctrl(a{1}, a{2}, [], truth, Sc, cfg);
    r.route = route; r.B_rel = Br; r.nm = nm; r.band = "separate";
    C = [C r]; %#ok<AGROW>
    fprintf("%-5s B %.2f df %d modes: resolved %s, coexist %.2f, false %.2f [%.0f s]\n", route, Br, nm, ...
        mat2str(r.res_frac, 2), r.coexist_frac, r.false_coexist_frac, toc(t0));
end

% one band holding both tones (mode-1 IF)
for Br = cfg.B_rel
    for route = ["INV" "TC"]
        Bc = df + Br*df;
        tr = iso_route(Sc, route, mean(f), Bc, cfg.modes_ref);
        ifc = phase_slope_if(tr.a(1,:), max(fps/Bc, cfg.if_min_periods*fps/f(1)))*fps;
        r = score_ctrl([], [], ifc, truth, Sc, cfg);
        r.route = route; r.B_rel = Br; r.nm = cfg.modes_ref; r.band = "combined";
        C = [C r]; %#ok<AGROW>
        fprintf("%-5s combined (df + %.2f df): resolved %s, ripple AB/excl %.3f/%.3f [%.0f s]\n", route, Br, ...
            mat2str(r.res_frac, 2), r.ripple_AB, r.ripple_excl, toc(t0));
    end
end
save(fullfile(cfg.data_dir, "stage3_controls.mat"), 'C', 'truth', '-v7.3');
fprintf("Stage 3 done [%.0f s]\n", toc(t0));
end
