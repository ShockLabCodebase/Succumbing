function [POD_modes, a_n, Energy, Mode, t, band_info] = hpod_from_spod_tcoeffs(X, t, P_band, first_bin, nfft, n_modes, n_out)
%%% Hilbert-POD-style decomposition of a frequency band isolated with SPOD
%%% convolution coefficients (tcoeffs; Nekkanti & Schmidt 2021, eq. 3.4),
%%% instead of a Hilbert transform of the raw data or of an invspod
%%% reconstruction.
%%%
%%% For each kept FFT bin f and SPOD mode j, tcoeffs gives a coefficient
%%% a_j(f,t) at every time step (a sliding, Hamming-windowed projection, so
%%% there are no block joins). The band field
%%%     Z(x,t) = sum_{f,j} P_j(f,x) a_j(f,t)
%%% contains only positive frequencies, i.e. it is already analytic, so no
%%% Hilbert transform is needed. Its POD is computed exactly without forming Z:
%%% with Phi = [P_j(f)] (n_pix x K) and C = [a_j(f,t)] (K x n_t), Z = Phi*C,
%%% G = Phi^H Phi, and the SVD of G^(1/2) C gives the modes Phi G^(-1/2) U and
%%% coefficients conj(V)*S (so Z = POD_modes * a_n.', as in hilbert_POD_func).
%%%
%%% The HPOD_Switch_Benchmark (Codebase/HPOD_Switch_Benchmark) found this
%%% route gives a lower instantaneous-frequency error than invspod, whose
%%% block-wise reconstruction leaves a floor at the block joins.
%%%
%%% Inputs:
%%%   X         [n_t, n_y, n_x] data, time first (any numeric class, e.g. int16 from
%%%             load_fields_time_major; tcoeffs converts rows to single)
%%%   t         [1, n_t] time [s]
%%%   P_band    [n_bins, n_y, n_x, n_modes_saved] SPOD modes at consecutive
%%%             FFT bins first_bin .. first_bin+n_bins-1 (P(f,y,x,mode) as saved)
%%%   first_bin FFT bin (1-based, bin 1 = 0 Hz) of P_band(1,...)
%%%   nfft      SPOD block length used for P (the tcoeffs window length)
%%%   n_modes   SPOD modes per bin to use (<= size(P_band,4))
%%%   n_out     HPOD modes to return (default 20)
%%% Outputs as hilbert_POD_func: POD_modes [n_y, n_x, n_out] complex,
%%% a_n [n_t', n_out] complex, Energy (% of the band-field energy), Mode,
%%% t (ends trimmed by nfft/2, where the window runs off the record), plus
%%% band_info (bins, n_modes, nfft, trimmed samples).
%%%
%%% Added 2026-10-23 (Codebase_Patches).

if nargin < 7 || isempty(n_out)
    n_out = 20;
end
[n_t, n_y, n_x] = size(X);
n_bins = size(P_band,1);
n_modes = min(n_modes, size(P_band,4));
n_pix = n_y*n_x;

%%% SPOD convolution coefficients a [n_bins, n_modes, n_t]
a = tcoeffs(X, P_band(:,:,:,1:n_modes), nfft, [], n_modes, [1 n_bins], first_bin);

%%% Drop the ends, where the window extends past the record
trim = ceil(nfft/2);
keep = trim+1:n_t-trim;
a = a(:,:,keep);
t = t(keep);

%%% Phi [n_pix, K] and C [K, n_t'] with K = n_bins*n_modes
K = n_bins*n_modes;
Phi = complex(zeros(n_pix, K));
C = complex(zeros(K, numel(keep)));
kk = 0;
for b = 1:n_bins
    for j = 1:n_modes
        kk = kk + 1;
        Phi(:,kk) = reshape(double(P_band(b,:,:,j)), n_pix, 1);
        C(kk,:) = double(squeeze(a(b,j,:))).';
    end
end
clear a

%%% Exact POD of Z = Phi*C through the K x K Gram matrix
G = Phi'*Phi;
G = (G+G')/2;
[E, d] = eig(G, 'vector');
d = real(d);
good = d > 1e-10*max(d);                           % drop (near) linearly dependent modes
E = E(:,good); d = d(good);
G_half = E*diag(sqrt(d))*E';                       % G^(1/2) on the kept subspace
G_ihalf = E*diag(1./sqrt(d))*E';                   % G^(-1/2)
[U, S, V] = svd(G_half*C, 'econ');
s = diag(S);
n_out = min(n_out, numel(s));

phi = Phi*(G_ihalf*U(:,1:n_out));                  % orthonormal modes
a_n = conj(V(:,1:n_out)).*s(1:n_out).';            % Z = phi*a_n.'
Energy = (s.^2/sum(s.^2)*100).';                   % % of the band-field energy
Mode = 1:numel(s);
POD_modes = reshape(phi, n_y, n_x, n_out);

band_info = struct('first_bin',first_bin,'n_bins',n_bins,'n_modes',n_modes, ...
    'nfft',nfft,'trimmed_samples_each_end',trim);
end
