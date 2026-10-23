function f = phase_slope_if(z, W)
%%% Instantaneous frequency of a complex signal by a moving least-squares
%%% line fit to its unwrapped phase over W samples (W made odd), centred on
%%% each sample. Per Rife & Boorstyn (1974), the line fit is the minimum-
%%% variance estimator for a stationary tone and is ~N/6 better in variance
%%% than averaging d(phase)/dt. Ends where the window does not fit are NaN.
%%%
%%% Output f (cycles/sample), same size as z.

W = 2*floor(W/2) + 1;
ph = unwrap(angle(z(:).'));
n = -(W-1)/2:(W-1)/2;
k = n/sum(n.^2);
f = conv(ph, fliplr(k), 'same')/(2*pi);
h = (W-1)/2;
f(1:h) = NaN;
f(end-h+1:end) = NaN;
f = reshape(f, size(z));
end
