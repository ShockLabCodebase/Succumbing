function sc = make_switch_scenario(p, delta, rng_seed)
%%% Builds the amplitude schedule of the two tones and the ground truth.
%%%
%%% The schedule p.schedule is a list of states ('A', 'B', 'AB', 'off') with
%%% dwell times in beat periods T_b = 1/(delta*f0). Amplitudes are stepped
%%% between states and smoothed with a Hann ramp of p.ramp_periods periods.
%%% The truth is defined at the envelope centre (x = 0); in the field the
%%% amplitudes advect with the waves.
%%%
%%% Output sc: f1, f2, df, Tb, nt, t, a1, a2 (amplitudes at x = 0), theta1,
%%% theta2 (phases at x = 0, rad), if1, if2 (true IF, cycles/sample),
%%% seg (table of segments) and trans (table of transitions).

if nargin < 3
    rng_seed = 1;
end
rs = RandStream('mt19937ar', 'Seed', rng_seed);

sc.f1 = p.f0;
sc.f2 = p.f0*(1 + delta);
sc.df = sc.f2 - sc.f1;
sc.delta = delta;
sc.Tb = 1/sc.df;

sched = repmat(p.schedule, p.n_repeat, 1);
n_seg = size(sched,1);
len = round(cell2mat(sched(:,2))*sc.Tb);
edges = [0; cumsum(len)];
sc.nt = edges(end);
sc.t = (0:sc.nt-1);

% Stepped amplitudes
lev = zeros(n_seg, 2);
for ii = 1:n_seg
    switch sched{ii,1}
        case 'A',   lev(ii,:) = [1 0];
        case 'B',   lev(ii,:) = [0 1];
        case 'AB',  lev(ii,:) = [1 p.r_coexist];
        case 'off', lev(ii,:) = [0 0];
    end
end
a_step = zeros(2, sc.nt);
for ii = 1:n_seg
    a_step(:, edges(ii)+1:edges(ii+1)) = repmat(lev(ii,:)', 1, len(ii));
end

% Hann ramps: convolution with a unit-area Hann kernel (monotone, smooth)
n_ramp = max(1, round(p.ramp_periods/p.f0));
ker = hann(n_ramp + 2)'; ker = ker(2:end-1); ker = ker/sum(ker);
a = zeros(2, sc.nt);
for k = 1:2
    pad = [repmat(a_step(k,1),1,n_ramp) a_step(k,:) repmat(a_step(k,end),1,n_ramp)];
    tmp = conv(pad, ker, 'same');
    a(k,:) = tmp(n_ramp+1:end-n_ramp);
end
sc.a1 = a(1,:);
sc.a2 = a(2,:);

% Phases (optional random-walk jitter) and true IF
phi0 = 2*pi*rand(rs, 1, 2);
jit = p.phase_jitter*cumsum(randn(rs, 2, sc.nt), 2);
sc.theta1 = 2*pi*sc.f1*sc.t + phi0(1) + jit(1,:);
sc.theta2 = 2*pi*sc.f2*sc.t + phi0(2) + jit(2,:);
sc.if1 = sc.f1 + [diff(jit(1,:)) 0]/(2*pi);
sc.if2 = sc.f2 + [diff(jit(2,:)) 0]/(2*pi);

% Segment and transition tables (samples are 0-based times)
state = string(sched(:,1));
dwell = cell2mat(sched(:,2));
% Merge neighbouring segments in the same state (repeats join 'A' pads)
keep = [true; state(2:end) ~= state(1:end-1)];
grp = cumsum(keep);
seg_state = state(keep);
seg_start = edges([keep; false]);
seg_end = accumarray(grp, edges(2:end), [], @max);
seg_dwell = accumarray(grp, dwell);
sc.seg = table(seg_state, seg_start, seg_end, seg_dwell, ...
    'VariableNames', {'state','t_start','t_end','dwell_Tb'});

n = height(sc.seg);
from = sc.seg.state(1:n-1); to = sc.seg.state(2:n);
t_switch = sc.seg.t_start(2:n);
dwell_before = sc.seg.dwell_Tb(1:n-1); dwell_after = sc.seg.dwell_Tb(2:n);
sc.trans = table(t_switch, from, to, dwell_before, dwell_after, ...
    'VariableNames', {'t_switch','from','to','dwell_before','dwell_after'});
end
