function [X, im_mean] = load_fields_time_major(file, n_snapshots, chunk)
%%% Reads im_data [n_y, n_x, n_t] from a *_Fields.mat matfile into time-first
%%% order X [n_snapshots, n_y, n_x] (as spod, bmd and tcoeffs expect), keeping
%%% the stored class (int16 for loaded schlieren data), a chunk of frames at a
%%% time. Peak memory is X plus one chunk; loading everything, casting to
%%% single and then permuting held up to two single copies at once.
%%%
%%% im_mean [n_y, n_x] (single): temporal mean of the frames read.
%%%
%%% Added 2026-10-23 (Codebase_Patches).

if nargin < 3 || isempty(chunk)
    chunk = 500;
end
sz = size(file, 'im_data');
n_y = sz(1); n_x = sz(2);
first = file.im_data(:,:,1);
X = zeros(n_snapshots, n_y*n_x, 'like', first);
s = zeros(1, n_y*n_x);
for t1 = 1:chunk:n_snapshots
    t2 = min(n_snapshots, t1+chunk-1);
    blk = reshape(file.im_data(:,:,t1:t2), n_y*n_x, []).';   % [frames, pixels]
    X(t1:t2,:) = blk;
    s = s + sum(blk, 1, 'double');   % no double copy of the chunk
end
X = reshape(X, n_snapshots, n_y, n_x);
im_mean = single(reshape(s/n_snapshots, n_y, n_x));
end
