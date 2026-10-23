function outs = run_field_methods(p, sc, S, H_raw, B, u)
%%% Field methods for bandwidth B, given the SPOD S of the noisy field and
%%% the HPOD H_raw of the raw (unfiltered) field u. p.recon picks the band
%%% reconstruction: "invspod" (block-wise inverse SPOD) or "conv" (tcoeffs-style
%%% convolution with the SPOD modes).
%%%   HPOD_sep   SPOD -> reconstruct a band of width B around each tone ->
%%%              HPOD_t -> mode 1 of each band gives amp1/if1 and amp2/if2
%%%   HPOD_comb  SPOD -> reconstruct one band (df + B) holding both tones ->
%%%              HPOD_t -> mode-1 IF (ifc), the "single IF trace" case
%%%   HPOD_raw   HPOD_t of the raw field, no narrow-banding. Modes 1-2 are
%%%              assigned to the tones by their median IF; ifc is mode 1.
%%%              Its separation can only come from space (wavenumber).
%%%
%%% With p.coef_methods (test T8: what does HPOD add over the convolution
%%% coefficients?), also, from the one-sided (analytic) convolution
%%% reconstruction z of the same bands:
%%%   Coef_pk    no reconstruction: the mode-1 convolution coefficient at the
%%%              bin nearest each tone, i.e. what tcoeffs.m gives. Its band is
%%%              the SPOD window's (equivalent noise bandwidth 1.36 bins),
%%%              whatever B is, and so is its IF fit window.
%%%   Fixed_sep  z of each band projected onto one fixed spatial mode, the
%%%   Fixed_comb leading SPOD mode at the band's most energetic bin
%%%   POD1s_sep  POD of z itself, i.e. HPOD_t without the Hilbert step (z is
%%%   POD1s_comb already analytic). With p.recon = "conv", HPOD_sep/comb use
%%%              2*real(z), so the pair isolates the Hilbert step.

f1 = sc.f1; f2 = sc.f2; df = sc.df; fm = (f1 + f2)/2;
Bc = df + B;
outs = struct([]);

% Separate bands
o = empty_track('HPOD_sep', sc.nt);
W = if_window(p, B);
band1 = f1 + [-1 1]*B/2; band2 = f2 + [-1 1]*B/2;
[q, z1] = band_fields(p, S, u, band1);
H1 = hpod_time(q, 1, p.hpod_trim_frac);
[q, z2] = band_fields(p, S, u, band2);
H2 = hpod_time(q, 1, p.hpod_trim_frac);
clear q
o.amp1 = abs(H1.a(1,:)); o.amp2 = abs(H2.a(1,:));
o.if1 = phase_slope_if(H1.a(1,:), W); o.if2 = phase_slope_if(H2.a(1,:), W);
o.W = W; o.B_band = B;
outs = [outs o];

if p.coef_methods
    o = empty_track('Fixed_sep', sc.nt);
    c1 = fixed_proj(S, z1, band1); c2 = fixed_proj(S, z2, band2);
    o.amp1 = abs(c1); o.amp2 = abs(c2);
    o.if1 = phase_slope_if(c1, W); o.if2 = phase_slope_if(c2, W);
    o.W = W; o.B_band = B;
    outs = [outs o];

    o = empty_track('POD1s_sep', sc.nt);
    G1 = hpod_time(z1, 1, p.hpod_trim_frac, true);
    G2 = hpod_time(z2, 1, p.hpod_trim_frac, true);
    o.amp1 = abs(G1.a(1,:)); o.amp2 = abs(G2.a(1,:));
    o.if1 = phase_slope_if(G1.a(1,:), W); o.if2 = phase_slope_if(G2.a(1,:), W);
    o.W = W; o.B_band = B;
    outs = [outs o];
end
clear z1 z2

% One band holding both tones
o = empty_track('HPOD_comb', sc.nt);
Wc = if_window(p, Bc);
bandc = fm + [-1 1]*Bc/2;
[qc, zc] = band_fields(p, S, u, bandc);
Hc = hpod_time(qc, 1, p.hpod_trim_frac);
clear qc
o.ifc = phase_slope_if(Hc.a(1,:), Wc);
o.W = Wc; o.B_band = Bc;
outs = [outs o];

if p.coef_methods
    o = empty_track('Fixed_comb', sc.nt);
    o.ifc = phase_slope_if(fixed_proj(S, zc, bandc), Wc);
    o.W = Wc; o.B_band = Bc;
    outs = [outs o];

    o = empty_track('POD1s_comb', sc.nt);
    Gc = hpod_time(zc, 1, p.hpod_trim_frac, true);
    o.ifc = phase_slope_if(Gc.a(1,:), Wc);
    o.W = Wc; o.B_band = Bc;
    outs = [outs o];
end
clear zc

% Raw field (IF window still follows B, for comparison)
o = empty_track('HPOD_raw', sc.nt);
fi = zeros(2, sc.nt);
for m = 1:2
    fi(m,:) = phase_slope_if(H_raw.a(m,:), W);
end
[~, ord] = sort(median(fi, 2, 'omitnan'));       % lower IF -> tone A
o.amp1 = abs(H_raw.a(ord(1),:)); o.amp2 = abs(H_raw.a(ord(2),:));
o.if1 = fi(ord(1),:); o.if2 = fi(ord(2),:);
o.ifc = fi(1,:);
o.W = W; o.B_band = NaN;
outs = [outs o];

% Direct convolution coefficients (no reconstruction; independent of B)
if p.coef_methods
    o = empty_track('Coef_pk', sc.nt);
    Bk = 1.36/S.nfft;                            % Hamming equivalent noise bandwidth
    Wk = if_window(p, Bk);
    ud = double(u - mean(u, 2));
    [~, j1] = min(abs(S.f - f1)); [~, j2] = min(abs(S.f - f2));
    a1 = conv_coeffs(S, ud, j1, 1); a2 = conv_coeffs(S, ud, j2, 1);
    o.amp1 = abs(a1); o.amp2 = abs(a2);
    o.if1 = phase_slope_if(a1, Wk); o.if2 = phase_slope_if(a2, Wk);
    o.W = Wk; o.B_band = Bk;
    outs = [outs o];
end
end

function [q, z] = band_fields(p, S, u, band)
%%% Real band field q for HPOD_t (reconstructed by p.recon) and, with
%%% p.coef_methods, the one-sided (analytic) convolution reconstruction z of
%%% the same band; with p.recon = "conv", q = 2*real(z).
z = [];
if p.coef_methods
    z = convspod_band(S, u, band, p.n_modes_recon, true);
end
if p.coef_methods && p.recon == "conv"
    q = single(2*real(z));
else
    q = recon_band(p, S, u, band);
end
end

function c = fixed_proj(S, z, band)
%%% Projection of the band field z onto one fixed spatial mode: the leading
%%% SPOD mode at the band's most energetic bin.
in_band = find(S.f >= band(1) & S.f <= band(2));
[~, k] = max(S.L(1, in_band));
c = double(S.P(:, 1, in_band(k)))'*double(z);
end

function q = recon_band(p, S, u, band)
%%% Band reconstruction by the method in p.recon.
switch p.recon
    case "invspod", q = invspod_band(S, band, p.n_modes_recon);
    case "conv",    q = convspod_band(S, u, band, p.n_modes_recon);
    otherwise,      error("Unknown p.recon %s", p.recon);
end
end
