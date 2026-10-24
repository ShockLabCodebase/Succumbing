%%% Test of the low-memory options in spod.m: frequency batches
%%% (opts.freq_batches, opts.max_memory_GB) and integer input data must give
%%% the same L, P and A as one batch on single-precision data.
%%%
%%% Run from this folder: run test_spod_freq_batches (adds ../Functions).

here = fileparts(mfilename('fullpath'));
addpath(genpath(fullfile(here,'..','Functions')));

rng(6);
nt = 3000; ny = 12; nx = 30; dt = 1e-4; nfft = 128;
t = (0:nt-1)'*dt;
X = 800 + 200*sin(2*pi*900*t)*randn(1,ny*nx) + 60*randn(nt,ny*nx);
X16 = int16(round(reshape(X,nt,ny,nx)));          % as loaded schlieren data
Xs = single(X16);

opts = struct('nsave',3);
[L1,P1,~,~,A1] = spod(Xs, nfft, [], nfft/2, dt, opts);
opts.freq_batches = 5;
[L2,P2,~,~,A2] = spod(Xs, nfft, [], nfft/2, dt, opts);
opts = struct('nsave',3,'max_memory_GB',0.006);   % forces several batches (about 4)
[L3,P3,~,~,A3] = spod(X16, nfft, [], nfft/2, dt, opts);

rel = @(a,b) max(abs(a(:)-b(:)))/max(abs(b(:)));
% modes are defined up to a phase per frequency and mode: compare P*A (the
% block FFTs of each mode), which is phase-free
PA = @(P,A,k) reshape(P(k,:,:,1),[],1)*reshape(A(k,1,:),1,[]);
k = 20;
e = [rel(L2,L1), rel(L3,L1), rel(PA(P2,A2,k),PA(P1,A1,k)), rel(PA(P3,A3,k),PA(P1,A1,k))];
fprintf('rel. differences: L (5 batches) %.1e, L (int16, memory cap) %.1e, P*A %.1e, %.1e\n', e);
if all(e < 1e-5)
    disp('test_spod_freq_batches: PASS');
else
    error('test_spod_freq_batches: FAIL');
end
