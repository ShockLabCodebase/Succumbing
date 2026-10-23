function H = hpod_time(u, n_modes, trim_frac, analytic)
%%% Hilbert POD with the Hilbert transform in time (HPOD_t).
%%%
%%% Each point's time series is made analytic (MATLAB hilbert: positive
%%% frequencies, phase increasing with time). Spatial modes are the leading
%%% eigenvectors of the complex correlation matrix built from the record
%%% without trim_frac at each end (FFT edge effects). Temporal coefficients
%%% are a = U^H z over the whole record, so a(t) carries the instantaneous
%%% amplitude |a| and phase angle(a) with a positive IF for positive
%%% frequencies (unlike the conjugated coefficients flagged in the group's
%%% hilbert_POD_func).
%%%
%%% analytic (optional, default false): u is already analytic (complex,
%%% positive frequencies only, e.g. a one-sided convolution reconstruction),
%%% so the Hilbert step is skipped and this is plain POD of u.
%%%
%%% Output H: U [nx, n_modes], a [n_modes, nt] (double), energy (fractions).

if nargin < 4
    analytic = false;
end
nt = size(u, 2);
if analytic
    z = double(u);
else
    z = hilbert(double(u).').';         % analytic along time, [nx, nt] (.' : no conjugation)
end
n_trim = round(trim_frac*nt);
zi = z(:, n_trim+1:nt-n_trim);
C = zi*zi'/size(zi, 2);
C = (C + C')/2;
[U, D] = eig(C, 'vector');
[D, ord] = sort(real(D), 'descend');
U = U(:, ord);
n_m = min(n_modes, size(U, 2));
H.U = U(:, 1:n_m);
H.a = H.U'*z;
H.energy = D(1:n_m)/sum(D);
end
