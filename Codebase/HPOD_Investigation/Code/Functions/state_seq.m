function st = state_seq(rho, valid, lo, hi)
%%% Tone state from rho = a2^2/(a1^2 + a2^2) with hysteresis: state 1 (A1)
%%% once rho < lo, state 2 (A2) once rho > hi, unchanged in between.
%%%
%%% Output st:
%%%   s   [1, nt] int8 state (0 before the first decision and outside valid)
%%%   dw  [n, 4] dwells: first sample, last sample, state, censored (touches
%%%       an end of valid)
%%%   sw  [m, 4] switches: t_lo (last sample on the old side of its
%%%       threshold), t_hi (first sample past the new threshold), from, to

s = zeros(size(rho), 'int8');
cur = int8(0);
for i = valid
    if rho(i) < lo
        cur = int8(1);
    elseif rho(i) > hi
        cur = int8(2);
    end
    s(i) = cur;
end
sv = double(s(valid));
b = [1, find(diff(sv) ~= 0) + 1, numel(sv) + 1];
dw = zeros(0, 4); sw = zeros(0, 4);
for r = 1:numel(b) - 1
    i0 = valid(b(r)); i1 = valid(b(r+1) - 1);
    if sv(b(r)) == 0, continue; end
    dw(end+1, :) = [i0, i1, sv(b(r)), double(r == 1 || r == numel(b) - 1)]; %#ok<AGROW>
    if r > 1 && sv(b(r) - 1) > 0
        from = sv(b(r) - 1); to = sv(b(r));
        j = i0 - 1;
        if from == 1
            while j > valid(1) && rho(j) >= lo, j = j - 1; end
        else
            while j > valid(1) && rho(j) <= hi, j = j - 1; end
        end
        sw(end+1, :) = [j, i0, from, to]; %#ok<AGROW>
    end
end
st.s = s; st.dw = dw; st.sw = sw;
end
