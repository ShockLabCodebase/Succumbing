function [mode_inst_phase_half_1,mode_inst_phase_half_2,POD_mode_half_1,POD_mode_half_2,a_n_complex_1_new,a_n_complex_2_new,theta_shift] = correct_phase_between_halves(POD_mode_half_1,POD_mode_half_2,a_n_complex_half_1,a_n_complex_half_2,mode_inst_phase_half_1,mode_inst_phase_half_2,half_plane)
%%% Rotates the (complex) mode of half 2 by e^{i theta} so that it best
%%% matches the mode of half 1 (largest correlation of the real parts), and
%%% adjusts half 2's coefficient so the field a*phi is unchanged:
%%% phi_2 -> phi_2 e^{i theta}, a_2 -> a_2 e^{-i theta}, phase_2 -> phase_2 - theta.
%%% The relative phase psi = phase_1 - phase_2 is then measured between two
%%% modes of the same shape.
%%%
%%% PATCH 2026-10-23 (Codebase_Patches):
%%% - The coefficient phase was shifted by +theta. That kept a*phi unchanged
%%%   only for the conjugated modes the old hilbert_POD_func returned; with
%%%   the corrected HPOD (unconjugated modes) it must be -theta, otherwise psi
%%%   is offset by 2*theta. a_n_complex_2_new is now a_2*e^{-i theta} (it was
%%%   rebuilt from the smoothed phase).
%%% - Direction checks compared the signs of mode_inst_phase(100), which
%%%   depend on the arbitrary phase offset, not on the direction of rotation,
%%%   so modes could be conjugated at random. They now use the sign of the
%%%   mean instantaneous frequency (mean slope of the unwrapped phase).
%%% - tests/test_half_slices_phase.m checks that a known phase shift between
%%%   two synthetic halves is recovered.

    d_angle = 0.1*pi/180;
    angle_steps = [0:d_angle:2*pi-d_angle];

    if ~half_plane
        y_size = size(POD_mode_half_1,1);
        POD_mode_half_1_temp = POD_mode_half_1;
        POD_mode_half_1 = POD_mode_half_1((y_size+1)/2 + 1:end,:,:);

        POD_mode_half_2_temp = POD_mode_half_2;
        POD_mode_half_2 = flip(POD_mode_half_2((y_size+1)/2 + 1:end,:,:),1);
    end

    %%% Make both halves turn forwards (positive mean frequency) first, so
    %%% the mode comparison is between like and like
    dir_1 = sign(mean(diff(unwrap(angle(a_n_complex_half_1)))));
    dir_2 = sign(mean(diff(unwrap(angle(a_n_complex_half_2)))));
    if dir_1 < 0
        fprintf("Half 1 turns backwards (negative frequency): conjugating its mode and coefficient\n");
        POD_mode_half_1 = conj(POD_mode_half_1);
        a_n_complex_half_1 = conj(a_n_complex_half_1);
        mode_inst_phase_half_1 = -mode_inst_phase_half_1;
        if ~half_plane, POD_mode_half_1_temp = conj(POD_mode_half_1_temp); end
    end
    if dir_2 < 0
        fprintf("Half 2 turns backwards (negative frequency): conjugating its mode and coefficient\n");
        POD_mode_half_2 = conj(POD_mode_half_2);
        a_n_complex_half_2 = conj(a_n_complex_half_2);
        mode_inst_phase_half_2 = -mode_inst_phase_half_2;
        if ~half_plane, POD_mode_half_2_temp = conj(POD_mode_half_2_temp); end
    end

    count = 0;
    corr_values = zeros(size(angle_steps));
    q_full = real(POD_mode_half_1);
    for theta = angle_steps
        count = count + 1;
        phase_shifted = (POD_mode_half_2.*exp(1i*theta));
        q_temp = real(phase_shifted);

        b_bot = sqrt(q_full(:)'*q_full(:))*sqrt(q_temp(:)'*q_temp(:));
        b_top = q_full(:)'*q_temp(:);

        corr_values(count) = b_top/b_bot;
    end

    [~,count_max] = max(corr_values);
    theta_shift = angle_steps(count_max);

    mode_inst_phase_half_2 = mode_inst_phase_half_2 - theta_shift;
    if half_plane
        POD_mode_half_2 = POD_mode_half_2.*exp(1i*theta_shift);
    else
        POD_mode_half_2 = POD_mode_half_2_temp.*exp(1i*theta_shift);
        POD_mode_half_1 = POD_mode_half_1_temp;
    end

    a_n_complex_1_new = a_n_complex_half_1;
    a_n_complex_2_new = a_n_complex_half_2.*exp(-1i*theta_shift);

end
