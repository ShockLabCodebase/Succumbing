function outs = run_field_methods(p, sc, S, H_raw, B)
%%% Field methods for bandwidth B, given the SPOD S of the noisy field and
%%% the HPOD H_raw of the raw (unfiltered) field.
%%%   HPOD_sep   SPOD -> reconstruct a band of width B around each tone ->
%%%              HPOD_t -> mode 1 of each band gives amp1/if1 and amp2/if2
%%%   HPOD_comb  SPOD -> reconstruct one band (df + B) holding both tones ->
%%%              HPOD_t -> mode-1 IF (ifc), the "single IF trace" case
%%%   HPOD_raw   HPOD_t of the raw field, no narrow-banding. Modes 1-2 are
%%%              assigned to the tones by their median IF; ifc is mode 1.
%%%              Its separation can only come from space (wavenumber).

f1 = sc.f1; f2 = sc.f2; df = sc.df; fm = (f1 + f2)/2;
Bc = df + B;
outs = struct([]);

% Separate bands
o = empty_track('HPOD_sep', sc.nt);
W = if_window(p, B);
q1 = invspod_band(S, f1 + [-1 1]*B/2, p.n_modes_recon);
H1 = hpod_time(q1, 1, p.hpod_trim_frac);
clear q1
q2 = invspod_band(S, f2 + [-1 1]*B/2, p.n_modes_recon);
H2 = hpod_time(q2, 1, p.hpod_trim_frac);
clear q2
o.amp1 = abs(H1.a(1,:)); o.amp2 = abs(H2.a(1,:));
o.if1 = phase_slope_if(H1.a(1,:), W); o.if2 = phase_slope_if(H2.a(1,:), W);
o.W = W; o.B_band = B;
outs = [outs o];

% One band holding both tones
o = empty_track('HPOD_comb', sc.nt);
Wc = if_window(p, Bc);
qc = invspod_band(S, fm + [-1 1]*Bc/2, p.n_modes_recon);
Hc = hpod_time(qc, 1, p.hpod_trim_frac);
clear qc
o.ifc = phase_slope_if(Hc.a(1,:), Wc);
o.W = Wc; o.B_band = Bc;
outs = [outs o];

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
end
