function S = finish_proj(S, cfg)
%%% Derived quantities for projection-space data S (stage-1 output, or a
%%% spliced control built from it):
%%%   dt, nOvlp, nt_inv (invspod's length), valid (samples at least nfft
%%%   from both ends of invspod's record: the tcoeffs, invspod and Hilbert
%%%   edge effects are all inside nfft), a_tc and A_blk for every column,
%%%   and the tone frequencies f_tone (mode-1 SPOD peaks near
%%%   cfg.St_tone_guess), df = f2 - f1 and the beat period Tb (samples).

S.dt = 1/S.fps;
S.nOvlp = round(S.nfft*S.overlap/100);
S.nt = size(S.proj, 2);
nBlks = floor((S.nt - S.nOvlp)/(S.nfft - S.nOvlp));
S.nt_inv = S.nfft*nBlks - (nBlks - 1)*S.nOvlp;
S.valid = (S.nfft + 1):(S.nt_inv - S.nfft);
S.a_tc = tc_coeffs(S.proj, S.col_bin, S.nfft);
S.A_blk = blk_coeffs(S.proj, S.col_bin, S.nfft, S.nOvlp, S.dt);
if ~isfield(S, 'f_tone')
    S.f_tone = zeros(1, 2);
    for i = 1:2
        in = find(abs(S.St - cfg.St_tone_guess(i)) <= cfg.tone_search);
        [~, j] = max(S.L(in, 1));
        S.f_tone(i) = S.f(in(j));
    end
end
S.df = S.f_tone(2) - S.f_tone(1);
S.Tb = S.fps/S.df;
S.St_per_Hz = S.St(2)/S.f(2);
end
