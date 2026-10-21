function hf = hilbert_floor(sc, W)
%%% Error of the Hilbert step alone, from the clean truth at x = 0.
%%%
%%% For each tone, the exact analytic signal z_k = a_k e^{i theta_k} is
%%% known, so the IF from hilbert(real(z_k)) can be compared with the IF of
%%% z_k itself (same W-sample line fit). Their difference is the floor that
%%% no narrow-banding or denoising can remove. Nuttall & Bedrosian (1966):
%%% the analytic signal is exact iff the spectrum of the complex modulation
%%% a_k e^{i(theta_k - 2 pi f_k t)} vanishes below -f_k; the energy fraction
%%% there is reported as nuttall_frac.
%%%
%%% Output hf: if_rms_rel (RMS IF error / f_k where a_k > 0.2 over the whole
%%% fit window), env_rms (RMS envelope error there), nuttall_frac, per tone.

z = {sc.a1.*exp(1i*sc.theta1), sc.a2.*exp(1i*sc.theta2)};
a = {sc.a1, sc.a2};
fk = [sc.f1 sc.f2];
n = sc.nt;
nu = (0:n-1)/n; nu(nu >= 0.5) = nu(nu >= 0.5) - 1;
for k = 1:2
    zh = hilbert(real(z{k}));
    f_h = phase_slope_if(zh, W);
    f_z = phase_slope_if(z{k}, W);
    on = movmin(a{k}, W) > 0.2 & isfinite(f_h);     % whole fit window on
    hf.if_rms_rel(k) = sqrt(mean((f_h(on) - f_z(on)).^2))/fk(k);
    hf.env_rms(k) = sqrt(mean((abs(zh(on)) - a{k}(on)).^2));
    M = fft(z{k}.*exp(-1i*2*pi*fk(k)*sc.t));
    hf.nuttall_frac(k) = sum(abs(M(nu < -fk(k))).^2)/sum(abs(M).^2);
end
end
