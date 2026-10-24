function [im_data_series, direction_str] = separate_flow_direction_function(im_data,flow_direction,n_snapshots)
%%% Splits a field into its upstream (k < 0) or downstream (k > 0) part.
%%% im_data: a single complex SPOD mode [n_y, n_x] (returns one cycle,
%%% real(field*e^{i*phase}), n_snapshots frames), or a real time series
%%% [n_y, n_x, n_t] (returns the split time series, without its mean).
%%% k = 0 is kept in both parts.
%%%
%%% PATCH 2026-10-23: the time-series branch subtracts the temporal mean
%%% first. The mean (omega = 0) has both +k and -k content, so half of the
%%% mean-field structure ended up in each part as a large static field.
%%% Note: the time-series branch holds a complex single copy of the data
%%% padded 4x in x (memory ~ 32 x the int16 data); use short records.


    if flow_direction < 0
        direction_str = "Upstream";
    else
        direction_str = "Downstream";
    end

    if size(im_data,3) == 1 && ~isreal(im_data)
        indiv_mode = true;  %%% If data is just a single SPOD mode or complex field
    elseif size(im_data,3) > 1 && isreal(im_data)
        indiv_mode = false; %%% If data is a time series like raw schlieren
    else
        fprintf("Field data does not match expected structure/type. Needs to be a single complex field, or a non-complex time series\n");
        return
    end

    if ~indiv_mode 

        t_nfft = size(im_data,3);

        im_data = single(im_data);
        im_data = im_data - mean(im_data,3);
        im_data = fft(im_data,t_nfft,3);

    end
        

    %% Compute spatial FFT parameters for axial wavenumber extraction
    % FFT applies along x (column) axis to extract axial wavenumber spectrum
    % NFFT = 2^nextpow2(nx)*16: oversample 16× to refine wavenumber resolution
    % Rationale: captures fine wavenumber detail; avoids aliasing
    
    nx = size(im_data,2);  % nx: scalar int, number of x-grid points
    x_nfft = 2^nextpow2(nx)*4;        % NFFT: scalar int, FFT size = 2^(ceil(log2(nx)))*16
                                     % Rationale: 4× oversampling for fine k resolution
      
    %% Apply 1D FFT along x-axis
    % fft(conj(mode_shape_comp),...): FFT of complex conjugate along columns (dimension 2)
    % Complex conjugate used for correlation-type operations (convention-dependent)
    % fftshift: reorders output so zero-frequency component at center
    phi_fftx = fft(conj(im_data),x_nfft,2);  % phi_fftx: [n_y,NFFT] complex FFT output
    phi_fftx = fftshift(phi_fftx,2);               % Shift zero-frequency to center

    % Zero one side of the wavenumbers depending on flow_direction
    if flow_direction > 0
        phi_fftx(:,1:x_nfft/2,:) = 0;
    else
        phi_fftx(:,x_nfft/2+2:end,:) = 0;
    end

    if indiv_mode
        % Inverse the fft to obtain the upstream or downstream component
        im_data_series = ifft(ifftshift(phi_fftx,2),x_nfft,2,'nonsymmetric');
        im_data_series = im_data_series(:,1:nx,:);

        % Phase shift the resultant field to create a time series of the
        % cycle. Currently just uses 360 data points [0,2pi)
        phase = linspace(0,2*pi,n_snapshots + 1);
        phase(end) = [];
        im_data_series = real(im_data_series.*exp(-1i.*reshape(phase,1,1,length(phase))));
    else
        % Inverse the fft to obtain the upstream or downstream component
        im_data_series = ifft(ifftshift(phi_fftx,2),x_nfft,2,'nonsymmetric');
        im_data_series = im_data_series(:,1:nx,:);

        % Inverse the fft in time to reconstruct the time-series
        im_data_series = ifft(conj(im_data_series),t_nfft,3,'symmetric');
    end

    % figure(1)
    % for i = 1:size(im_data_series_test,3)
    %     pcolor(im_data_series_test(:,:,i))
    %     shading interp
    %     axis equal tight
    %     caxis([-1000,1300])
    %     pause(0.01)
    % end


end