function spod_scaling(variant)
%%% Memory scaling of spod frequency batches on the 400k-frame Large_Test case
%%% (2026-10-24). variant: "b1", "b4", "b8" (opts.freq_batches) or "auto"
%%% (opts.max_memory_GB = "auto"). Same inputs as SPOD_Analysis (int16 data
%%% loaded time-first, nfft 4096, 50% overlap, Hamming, nsave 4). Compares L
%%% and the mode-1 shape at the tone with the final SPOD file (read only) and
%%% saves only a small results file in Batch_Test/Results.
root = "/fs04/scratch2/ty79/JWeightman/Schlieren/Large_Test";
addpath(genpath(fullfile(root,"Code","Batch_Test","Functions")));
data_file = fullfile(root,"Data","Axisymmetric_16mm_Medium_Lip_NPR_2199_Fields.mat");
ref_file = fullfile(root,"SPOD_Results","Data","Axisymmetric_16mm_Medium_Lip_NPR_2199_Nt_400k_Nfft_4096_ovlp_50.0.mat");
variant = string(variant);

[mem_GB, mem_info] = available_memory_GB();
fprintf('available_memory_GB at start: %.1f GB (%s); rss %.1f, free %.1f, SLURM %.1f, cgroup %.1f GB\n', ...
    mem_GB, mem_info.source, mem_info.rss, mem_info.free, mem_info.slurm, mem_info.cgroup);

file = matfile(data_file);
sz = size(file,'im_data');
fps = file.fps;
t0 = tic;
X = load_fields_time_major(file, sz(3));
t_load = toc(t0);
fprintf('loaded %s %s in %.0f s; VmRSS %.1f GB\n', class(X), mat2str(size(X)), t_load, vm('VmRSS'));

nfft = 4096;
opts = struct('nsave',4,'savefft',false);
switch variant
    case "auto"
        opts.max_memory_GB = "auto";
    otherwise
        opts.freq_batches = str2double(extractAfter(variant,"b"));
end
t0 = tic;
[L,P,f] = spod(X, nfft, [], nfft/2, 1/fps, opts);
t_spod = toc(t0);
clear X
peak = vm('VmHWM');
fprintf('spod %s: %.0f s; peak RSS (VmHWM) %.1f GB\n', variant, t_spod, peak);

%%% Compare with the final SPOD file
r = matfile(ref_file);
L_ref = r.L;
n = min(size(L,2), size(L_ref,2));
rel_L = max(abs(L(:,1:n) - L_ref(:,1:n)),[],'all')/max(abs(L_ref(:,1:n)),[],'all');
[~,k] = max(L(20:end,1)); k = k + 19;
%%% Mode shapes (modes 1-2) at the tone, the end frequencies and both sides
%%% of every 4- and 8-batch boundary (a mis-assigned batch would show there)
nF = size(L,1);
edges = unique(round([linspace(0,nF,5), linspace(0,nF,9)]));
edges = edges(edges > 0 & edges < nF);
K = unique([2, k, nF, edges, edges+1]);
P_ref = r.P;                                  % whole file once (chunked by frequency)
match = zeros(numel(K),2);
for i = 1:numel(K)
    for m = 1:2
        a = double(reshape(P(K(i),:,:,m),[],1));
        b = double(reshape(P_ref(K(i),:,:,m),[],1));
        match(i,m) = abs(b'*a)/(norm(a)*norm(b));
    end
end
clear P_ref
fprintf('vs final SPOD file: max rel. L difference %.2e\n', rel_L);
fprintf('|<P_m, P_m,ref>| at %d frequencies (tone %.0f Hz, ends, batch boundaries): mode 1 min %.6f, mode 2 min %.6f\n', ...
    numel(K), f(k), min(match(:,1)), min(match(:,2)));
[w,iw] = min(match(:,1));
fprintf('   worst mode 1: f = %.0f Hz (bin %d), %.6f\n', f(K(iw)), K(iw), w);

out = fullfile(root,"Code","Batch_Test","Results");
if ~isfolder(out); mkdir(out); end
save(fullfile(out, "spod_scaling_" + variant + ".mat"), 'variant','t_load','t_spod','peak','rel_L','match','mem_GB','mem_info');
end

function v = vm(key)
%%% /proc/self/status value in GB (kB in the file)
txt = fileread('/proc/self/status');
tok = regexp(txt, ['(?m)^' key ':\s*(\d+)'], 'tokens', 'once');
v = str2double(tok{1})/1e6;
end
