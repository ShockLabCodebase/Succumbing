function S = load_proj(cfg, file)
%%% Loads the stage-1 projections and derives, for every column, the
%%% tcoeffs coefficients (a_tc) and the block coefficients (A_blk), plus the
%%% tone frequencies and the common valid range of samples.
%%% file (optional): a projections file other than cfg.proj_file.

if nargin < 2 || isempty(file), file = cfg.proj_file; end
S = load(file);
S = finish_proj(S, cfg);
end
