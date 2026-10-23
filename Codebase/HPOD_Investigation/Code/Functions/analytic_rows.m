function z = analytic_rows(s)
%%% Analytic part of each row, as MATLAB's hilbert() (whole-record FFT,
%%% positive frequencies doubled, DC and Nyquist kept once), but linear over
%%% complex rows (hilbert() discards the imaginary part). By linearity, the
%%% analytic signal of r = sum_k (P_k c_k + conj(P_k c_k)) is
%%% sum_k [P_k analytic(c_k) + conj(P_k) analytic(conj(c_k))].

n = size(s, 2);
h = zeros(1, n);
h(1) = 1;
if mod(n, 2) == 0
    h(2:n/2) = 2; h(n/2 + 1) = 1;
else
    h(2:(n+1)/2) = 2;
end
z = ifft(fft(s, [], 2).*h, [], 2);
end
