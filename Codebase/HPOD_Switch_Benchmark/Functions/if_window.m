function W = if_window(p, B_band)
%%% Phase line-fit window (samples, odd) for a band of full width B_band:
%%% W = p.if_window_factor/B_band (about one independent phase value per
%%% 1/B; Gabor 1946), but at least p.if_window_min_periods periods of f0.

W = max(p.if_window_factor/B_band, p.if_window_min_periods/p.f0);
W = 2*floor(round(W)/2) + 1;
end
