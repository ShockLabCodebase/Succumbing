function tr = iso_route(S, route, f_c, B, nm, opts)
%%% Isolates one band with one route and returns its leading coefficient(s).
%%%
%%% S: projection-space data (see load_proj): a_tc [K, nt] tcoeffs of every
%%%    column, A_blk [K, nBlks] block coefficients, G1, G2, col_bin, col_mode,
%%%    f (Hz per bin), fps, nfft, nOvlp, dt, nt, valid, probes, probe_xy.
%%% route:
%%%   "INV"   the group's pipeline: invspod of the band (modes 1:nm per bin)
%%%           -> Hilbert transform in time of the real field -> POD
%%%   "TC"    tcoeffs band field (already analytic) -> POD, i.e.
%%%           hpod_from_spod_tcoeffs (HPOD without the Hilbert step)
%%%   "COEF"  the mode-1 tcoeffs coefficient at the bin nearest f_c (no
%%%           reconstruction; its band is the SPOD window's, whatever B is)
%%%   "FIX"   tcoeffs band field projected onto one fixed mode: mode 1 at
%%%           the bin nearest f_c
%%%   "PROBE" one pixel (opts.probe, an index into S.probes), Gaussian
%%%           band-pass of the same RMS width as B -> analytic signal
%%% f_c, B: band centre and full width (Hz). nm: SPOD modes per bin.
%%% opts.n_out (default 2): POD modes returned.
%%%
%%% Output tr: a [n, nt] complex coefficients (row 1 = mode 1), energy,
%%% cols (band columns), W (mode combination, phi = Psi*W), route, f_c, B, nm.

if nargin < 6, opts = struct(); end
if ~isfield(opts, 'n_out'), opts.n_out = 2; end
fb = S.f(S.col_bin);
cols = find(abs(fb(:) - f_c) <= B/2 & S.col_mode(:) <= nm);
[~, ib] = min(abs(S.f - f_c));
k0 = find(S.col_bin == ib & S.col_mode == 1, 1);
tr = struct('route', string(route), 'f_c', f_c, 'B', B, 'nm', nm, 'cols', cols, ...
    'a', [], 'energy', [], 'W', []);
switch string(route)
    case "TC"
        C = double(S.a_tc(cols, :));
        out = gram_pod(S.G1(cols, cols), C, opts.n_out, S.valid);
        tr.a = out.a; tr.energy = out.energy; tr.W = out.W;
    case "INV"
        c = inv_components(S.A_blk(cols, :), S.col_bin(cols), S.nfft, S.nOvlp, S.dt, S.nt);
        n_inv = S.nt_inv;
        c(:, 1:n_inv) = c(:, 1:n_inv) - mean(c(:, 1:n_inv), 2);   % hilbert_POD_func removes each pixel's mean
        H = complex(zeros(size(c))); Gc = H;
        H(:, 1:n_inv) = analytic_rows(c(:, 1:n_inv));
        Gc(:, 1:n_inv) = analytic_rows(conj(c(:, 1:n_inv)));
        g1 = S.G1(cols, cols); g2 = S.G2(cols, cols);
        M = [g1, conj(g2); g2, conj(g1)];          % Gram matrix of [P, conj(P)]
        out = gram_pod(M, [H; Gc], opts.n_out, S.valid);
        tr.a = out.a; tr.energy = out.energy; tr.W = out.W;
    case "COEF"
        tr.a = double(S.a_tc(k0, :)); tr.cols = k0; tr.energy = NaN;
    case "FIX"
        tr.a = S.G1(k0, cols)*double(S.a_tc(cols, :)); tr.energy = NaN;
    case "PROBE"
        x = double(S.probes(opts.probe, :));
        tr.a = bandpass_analytic(x - mean(x), f_c/S.fps, 'gauss', B/S.fps);
        tr.energy = NaN;
    otherwise
        error("Unknown route %s", route);
end
end
