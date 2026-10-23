function a = conv_coeffs(S, u, jf, n_modes)
%%% Time-continuous SPOD expansion coefficients at bin jf (an index into S.f)
%%% by convolution (Nekkanti & Schmidt 2021, eq. 3.4; the group's tcoeffs.m).
%%% The projection p_j(t) = P_j(f)^H u(t) is filtered with the SPOD window as
%%% a complex FIR, h(tau) = w(tau) e^{i 2 pi f tau}, centred on t: a sliding-
%%% window SPOD coefficient at every sample, with no block boundaries.
%%%
%%% The tone's own phase is kept (as in tcoeffs.m, apart from the conjugation
%%% flagged in the Codebase notes), so angle(a) advances at the tone's
%%% frequency and phase_slope_if gives the IF directly. u must already have
%%% its temporal mean removed (double).
%%%
%%% Output a [n_modes, nt] (double, complex).

nt = size(u, 2);
n_m = min(n_modes, size(S.P, 2));
tau = (0:S.nfft-1) - S.nfft/2;               % centred lags
h = S.w.*exp(1i*2*pi*S.f(jf)*tau)/sum(S.w);
n_fft = 2^nextpow2(nt + S.nfft);
proj = double(S.P(:, 1:n_m, jf))'*u;         % [n_m, nt]
a = ifft(fft(proj, n_fft, 2).*fft(h, n_fft), [], 2);
a = a(:, S.nfft/2 + (1:nt));                 % centre the FIR (lag tau = 0 at t)
end
