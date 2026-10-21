function outs = run_point_methods(p, sc, fld, B)
%%% Single-probe methods on the noisy signal at x = 0, for bandwidth B.
%%%
%%% Each method returns the same track struct (see empty_track): band
%%% amplitudes amp1/amp2 and IFs if1/if2 for a band of width B around each
%%% tone, and ifc, the IF of one band of width df + B holding both tones.
%%%   Gauss_pt   Gaussian band-pass = Gaussian STFT = Morlet CWT at one scale
%%%   Bump_pt    compact bump band-pass (bump CWT at one scale)
%%%   Morlet6_pt default Morlet (w0 = 6, ~17% relative bandwidth; B ignored)
%%%   FSST_pt    band-limited synchrosqueezing with the Gaussian window

x = fld.probe;
f1 = sc.f1; f2 = sc.f2; df = sc.df; fm = (f1 + f2)/2;
Bc = df + B;                               % combined band holding both tones

outs = struct([]);
shapes = {'gauss','bump'};
names = {'Gauss_pt','Bump_pt'};
for s = 1:2
    o = empty_track(names{s}, sc.nt);
    y1 = bandpass_analytic(x, f1, shapes{s}, B);
    y2 = bandpass_analytic(x, f2, shapes{s}, B);
    yc = bandpass_analytic(x, fm, shapes{s}, Bc);
    W = if_window(p, B); Wc = if_window(p, Bc);
    o.amp1 = abs(y1); o.amp2 = abs(y2);
    o.if1 = phase_slope_if(y1, W); o.if2 = phase_slope_if(y2, W);
    o.ifc = phase_slope_if(yc, Wc);
    o.W = W; o.B_band = B;
    outs = [outs o]; %#ok<AGROW>
end

% Default Morlet: constant-Q, bandwidth fixed by w0
o = empty_track('Morlet6_pt', sc.nt);
y1 = bandpass_analytic(x, f1, 'morlet', [], p.morlet_w0);
y2 = bandpass_analytic(x, f2, 'morlet', [], p.morlet_w0);
yc = bandpass_analytic(x, fm, 'morlet', [], p.morlet_w0);
Bm = sqrt(12)*fm/p.morlet_w0;              % equivalent rect width
W = if_window(p, Bm);
o.amp1 = abs(y1); o.amp2 = abs(y2);
o.if1 = phase_slope_if(y1, W); o.if2 = phase_slope_if(y2, W);
o.ifc = phase_slope_if(yc, W);
o.W = W; o.B_band = Bm;
outs = [outs o];

% Synchrosqueezing: tone energies and centroid frequencies in each half band
o = empty_track('FSST_pt', sc.nt);
sig = B/sqrt(12);
T = fsst_band(x, f1 - df, f2 + df, sig, df/20);
in1 = T.f >= f1 - df/2 & T.f < fm;
in2 = T.f >= fm & T.f <= f2 + df/2;
E1 = sum(T.E(in1,:), 1); E2 = sum(T.E(in2,:), 1);
o.amp1 = sqrt(double(E1)); o.amp2 = sqrt(double(E2));
W = if_window(p, B);
o.if1 = movmean(double(T.f(in1)*T.E(in1,:))./max(double(E1), eps), W);
o.if2 = movmean(double(T.f(in2)*T.E(in2,:))./max(double(E2), eps), W);
o.W = W; o.B_band = B;
outs = [outs o];
end
