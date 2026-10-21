function y = bandpass_analytic(x, fc, shape, B, w0)
%%% One-sided band-pass of a real signal, returning the analytic band signal.
%%%
%%% Filtering x with a one-sided filter H(f) (zero for f <= 0) and doubling
%%% gives the analytic signal of the band-passed x. This is what an STFT
%%% or CWT coefficient at one frequency/scale is, up to a phase factor, so
%%% these shapes stand in for those transforms:
%%%   'rect'    ideal band of full width B
%%%   'gauss'   Gaussian with the same RMS width as 'rect' (sigma = B/sqrt(12))
%%%             = Gaussian-window STFT = Morlet CWT at one scale
%%%   'bump'    compactly supported bump, scaled to the same RMS width
%%%   'morlet'  default Morlet, sigma_f = fc/w0 (constant-Q; B ignored)
%%% The peak gain is 1, so a tone at fc of amplitude A returns |y| = A.

if nargin < 5
    w0 = 6;
end
n = numel(x);
X = fft(x(:).');
nu = (0:n-1)/n;
nu(nu >= 0.5) = nu(nu >= 0.5) - 1;           % signed frequency
d = nu - fc;
switch shape
    case 'rect'
        H = double(abs(d) <= B/2);
    case 'gauss'
        s = B/sqrt(12);
        H = exp(-d.^2/(2*s^2));
    case 'bump'
        % Bump exp(1 - 1/(1 - v^2)), |v| < 1: scale its RMS width (H used
        % as the weight, as for 'rect' and 'gauss') to B/sqrt(12).
        vv = linspace(-1, 1, 20001); vv = vv(2:end-1);
        g = exp(1 - 1./(1 - vv.^2));
        rms_v = sqrt(sum(vv.^2.*g)/sum(g));
        wd = (B/sqrt(12))/rms_v;
        v = d/wd;
        H = zeros(size(v));
        in = abs(v) < 1;
        H(in) = exp(1 - 1./(1 - v(in).^2));
    case 'morlet'
        s = fc/w0;
        H = exp(-d.^2/(2*s^2));
    otherwise
        error("Unknown filter shape %s", shape);
end
H(nu <= 0) = 0;
y = ifft(2*X.*H);
y = reshape(y, size(x));
end
