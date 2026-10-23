%%% Test T8 of the HPOD research question: what does HPOD of a band
%%% reconstruction add over reading the convolution (tcoeffs) coefficients
%%% directly, or over projecting the band onto one fixed spatial mode? Also
%%% POD of the one-sided reconstruction, which is HPOD without the Hilbert step.
%%%
%%% Runs the sweep with the convolution reconstruction for every field method
%%% (p.recon = "conv") and the extra methods on (p.coef_methods), writing to
%%% Results_T8/. Set quick = true first for a fast check (Results_T8_quick/).
%%% Background: Library_of_Shock_Lab/Research_Questions/
%%% hpod-instantaneous-frequency-uncertainty.md ("Proposed tests", T8).

if ~exist("quick", "var")
    quick = false;
end
overrides.recon = "conv";
overrides.coef_methods = true;
overrides.save_folder = "Results_T8";
if quick
    overrides.save_folder = "Results_T8_quick";
end
run_switch_benchmark
