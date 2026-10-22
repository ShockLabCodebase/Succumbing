%%% Tests the patched invspod, tcoeffs and hilbert_POD_func on a synthetic
%%% travelling wave (a tone on one FFT bin, plus noise and a mean):
%%%   1. spod energy obeys Parseval (sum(L)*df = total variance)
%%%   2. invspod(..., dt) with all modes returns the data itself (amplitude 1)
%%%   3. tcoeffs gives the physical amplitude and a phase that runs as
%%%      exp(+i w t) for the positive-frequency bin
%%%   4. hilbert_POD_func: the direct (n_pix < n_t) and snapshot (n_pix >= n_t)
%%%      branches both give positive instantaneous frequency f0, and the same
%%%      mode, which travels downstream (+x) as real(phi*a)
%%% Needs the Signal Processing and Parallel Computing toolboxes. spod.m comes
%%% from the repo (set SCHLIEREN_REPO to its folder if it isn't at the default
%%% below); the patched Functions folder is put on top of it.
%%%   run('<path>/tests/test_spod_hpod_scaling.m')
%%% Errors at the end if any check fails.

here = fileparts(mfilename('fullpath'));
repo = getenv('SCHLIEREN_REPO');
if isempty(repo)
    repo = fullfile(here,'..','..','..','Codebase_Pre_AI','Schlieren_Processing_Scripts');
end
addpath(genpath(fullfile(repo,'Functions')));
addpath(genpath(fullfile(here,'..','Functions')));   % patched versions win

rng(1);
fps = 150000; dt = 1/fps; nt = 8192; nfft = 256; nOvlp = nfft/2;
ny = 30; nx = 40;
[xx,yy] = meshgrid(linspace(0,4,nx), linspace(-1,1,ny));
k = 2*pi/1.3;
bin = 21; f0 = fps/nfft*(bin-1);   % tone exactly on a bin
amp = 3;
t = (0:nt-1)'*dt;
env = exp(-yy.^2);
X = zeros(nt,ny,nx);
for it = 1:nt
    X(it,:,:) = amp*env.*cos(k*xx - 2*pi*f0*t(it));   % travels in +x
end
X = X + 0.3*randn(size(X)) + 5;

fails = {};

%% 1. Parseval
[L,P,f,~,A] = spod(X,nfft,[],nOvlp,dt);
df = f(2)-f(1);
ratio = sum(L(:))*df / sum(var(reshape(X,nt,[]),1,1));
fprintf('1. sum(L)*df / variance = %.4f\n', ratio);
if abs(ratio-1) > 0.01, fails{end+1} = 'Parseval'; end

%% 2. invspod amplitude
Xr = invspod(P,A,nfft,nOvlp,[1 size(P,4)],0,dt);
ntr = size(Xr,1);
Xf = reshape(X(1:ntr,:,:) - mean(X,1),ntr,[]);
err = norm(Xr(:)-Xf(:))/norm(Xf(:));
fprintf('2. invspod relative error (all modes, with dt) = %.2e\n', err);
if err > 1e-4, fails{end+1} = 'invspod amplitude'; end

%% 3. tcoeffs amplitude and phase direction
a = tcoeffs(X,P,nfft,[],1,[bin bin]);
a = double(squeeze(a(1,1,nfft:end-nfft)));
mode1 = reshape(P(bin,:,:,1),[],1);
a_expected = abs(mode1'*(0.5*amp*env(:).*exp(-1i*k*xx(:))));   % content at +f0 is 0.5*amp*env*exp(-ikx)
ph_rate = mean(diff(unwrap(angle(a))))/dt/(2*pi*f0);
fprintf('3. tcoeffs |a| = %.4f (expected %.4f), phase rate / (2 pi f0) = %+.4f\n', mean(abs(a)), a_expected, ph_rate);
if abs(mean(abs(a))/a_expected - 1) > 0.02, fails{end+1} = 'tcoeffs amplitude'; end
if abs(ph_rate - 1) > 0.01, fails{end+1} = 'tcoeffs phase direction'; end

%% 4. Hilbert POD branches
Xs = permute(X,[2 3 1]);                 % [ny, nx, nt]
[m1, a1] = hilbert_POD_func(Xs, t', 0, [0 0], [0 0], xx, yy);           % 1200 px < 8192 t: direct branch
Xs2 = repmat(Xs(:,:,1:1500),[2 2 1]);                                    % 4800 px > 1300 t: snapshot branch
[m2, a2] = hilbert_POD_func(Xs2, t(1:1500)', 0, [0 0], [0 0], repmat(xx,2,2), repmat(yy,2,2));
rate = @(a) mean(diff(unwrap(angle(double(a(:,1))))))/dt/(2*pi*f0);
fprintf('4. HPOD phase rate / (2 pi f0): direct %+.4f, snapshot %+.4f\n', rate(a1), rate(a2));
if abs(rate(a1)-1) > 0.01, fails{end+1} = 'HPOD direct branch frequency'; end
if abs(rate(a2)-1) > 0.01, fails{end+1} = 'HPOD snapshot branch frequency'; end
% same mode up to a phase: compare the top-left quarter of m2 with m1
p1 = reshape(m1(:,:,1),[],1); p2 = reshape(m2(1:ny,1:nx,1),[],1);
c = abs(p1'*p2)/(norm(p1)*norm(p2));
fprintf('   |<phi_direct, phi_snapshot>| = %.4f\n', c);
if c < 0.99, fails{end+1} = 'HPOD branch modes differ'; end
% the mode carries exp(-ikx) with coefficient exp(+iwt): wave travels in +x
kx = angle(sum(p1(ny+1:end).*conj(p1(1:end-ny))))/(xx(1,2)-xx(1,1));  % phase step per column
fprintf('   mode phase gradient d(arg phi)/dx = %+.3f (expected %+.3f)\n', kx, -k);
if abs(kx + k) > 0.05*k, fails{end+1} = 'HPOD mode propagation direction'; end

if isempty(fails)
    fprintf('All checks passed\n');
else
    error('Failed: %s', strjoin(fails, ', '));
end
