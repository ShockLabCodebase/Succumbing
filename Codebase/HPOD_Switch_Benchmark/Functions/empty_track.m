function o = empty_track(name, nt)
%%% Common output of every method: band amplitudes and IFs of each tone
%%% (amp1, amp2, if1, if2) and the IF of one band holding both tones (ifc).
%%% Missing outputs stay NaN. W is the IF window (samples), B_band the
%%% bandwidth used.

o.method = string(name);
o.amp1 = NaN(1, nt); o.amp2 = NaN(1, nt);
o.if1 = NaN(1, nt);  o.if2 = NaN(1, nt);
o.ifc = NaN(1, nt);
o.W = NaN; o.B_band = NaN;
end
