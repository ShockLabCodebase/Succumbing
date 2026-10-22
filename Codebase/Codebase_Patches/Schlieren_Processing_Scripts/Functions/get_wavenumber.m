function [k1,k2,k3,k_x,k_spectrum_complex] = get_wavenumber(x,y,y_D,y_width,data,using_spod)
    %k1,k2,k3 = k_kh,k_up_1,k_up_2 for using_spod = true
    %k1,k2,k3 = k_s1,k_s2,0 for using_spod = false
    
    if using_spod
        fft_factor = 4;

        [~, idx_x0] = min(abs(x(1,:)));
        [~, idx_y1] = min(abs(y(:,1)-y_D));
        [~, idx_y2] = min(abs(y(:,1)-(-y_D)));
    
        x_fft = x(:, idx_x0:end);
        y_fft = y(:, idx_x0:end);
        
        ny = size(y_fft,1);
        nx = size(x_fft,2);                             % Get the number of points in the x-axis for fft
    
        wx = max(x_fft(1, :))-min(x_fft(1, :));                         % Span of axial domain
        sps = wx/(nx-1);                                        % Spacing of the samples in x (span/(nx-1) = dx; was wx/nx)
        sfs = 1/sps;                                            % Spatial sampling frequency
        Nfft_x = 2^nextpow2(nx)*fft_factor;                                % Size of the FFT (No windowing => single window)
        
        % Making the wavenumber bins, we shift the fft to have the centre at zero.
        k_x  = (-Nfft_x/2:Nfft_x/2-1) * sfs/Nfft_x*2*pi;               % This makes the two-sided wavenumber bins
    
        k_spectrum = zeros(ny, Nfft_x);                         % Prepop the output for all axial_fft outputs in y
        
        k_spectrum_complex = fft(conj(data(:,idx_x0:end)),Nfft_x,2);
        k_spectrum_complex = fftshift(k_spectrum_complex,2);
        
        if true  %%% Alternative methods for finding k_kh, k_up. Not sure which is best.
            KH_k_spectrum_complex = k_spectrum_complex(idx_y1,:);
            
            p_KH = max(abs(KH_k_spectrum_complex(1,Nfft_x/2+1:end)),[],2);
            idx_KH = find(abs(KH_k_spectrum_complex(1,:)) == p_KH);
            k_KH = k_x(1,idx_KH); % wavenumber of KH wave
            
            p_UP = max(abs(KH_k_spectrum_complex(1,1:Nfft_x/2)),[],2);
            idx_UP = find(abs(KH_k_spectrum_complex(1,:)) == p_UP);
            k_UP = k_x(1,idx_UP); % wavenumber of upstream wave
            
            KH_k_spectrum_complex_n = k_spectrum_complex(idx_y2,:);
            
            p_KH_n = max(abs(KH_k_spectrum_complex_n(1,Nfft_x/2+1:end)),[],2);
            idx_KH_n = find(abs(KH_k_spectrum_complex_n(1,:)) == p_KH_n);
            k_KH_n = k_x(1,idx_KH_n); % wavenumber of KH wave
            
            p_UP_n = max(abs(KH_k_spectrum_complex_n(1,1:Nfft_x/2)),[],2);
            idx_UP_n = find(abs(KH_k_spectrum_complex_n(1,:)) == p_UP_n);
            k_UP_n = k_x(1,idx_UP_n); % wavenumber of upstream wave
            
            k1 = (k_KH_n+k_KH)*0.5;
            k2 = (k_UP_n+k_UP)*0.5;
            k3 = k_UP;
        else
    
            wave_squish = sum(log(abs(k_spectrum_complex([idx_y1-y_width:idx_y1+y_width,idx_y2-y_width:idx_y2+y_width],:))),1);
            
            [p1,p2,p3] = findpeaks(wave_squish, 'MinPeakProminence', 20, 'SortStr', 'descend');
            p2_pos = p2(p2>length(wave_squish)/2);
            p2_neg =  p2(p2<=length(wave_squish)/2);
    
            k1 = k_x(1,p2_pos(1));
            k2 = k_x(1,p2_neg(1));
            k3 = k_x(1,p2_neg(2));
        end

    else
        fft_factor = 16;

        [~, idx_x0] = min(abs(x(1,:)));
        [~, idx_y] = min(abs(y(:,1)-y_D));

        x_fft = x(:, idx_x0:end);
        y_fft = y(:, idx_x0:end);
    
        ny = size(y_fft,1);
        nx = size(x_fft,2);

        mean_snapshots_axial = squeeze(data(idx_y, idx_x0:end));  % was idx_x0:nx, which dropped the last idx_x0-1 columns
        
        wx = max(x_fft(1,:))-min(x_fft(1,:));                         % Span of axial domain
        sps = wx/(nx-1);                                        % Spacing of the samples in x (span/(nx-1) = dx; was wx/nx)
        sfs = 1/sps;                                            % Spatial sampling frequency
        Nfft_x = 2^nextpow2(nx)*fft_factor;                                % Size of the FFT (No windowing => single window)

        % Making the wavenumber bins, we shift the fft to have the centre at zero.
        mean_kx  = (-Nfft_x/2:Nfft_x/2-1) * sfs/Nfft_x*2*pi;               % This makes the two-sided wavenumber bins
        mean_axial_fft = fft(mean_snapshots_axial-mean(mean_snapshots_axial), Nfft_x);        % Take the axial fft (we take the conjugate here to satisfy exp(-iwt+ikt) bc Fourier does exp(iwt)
        mean_axial_fft = fftshift(mean_axial_fft);                     % Shift the fft to have the centre at 0 wavenumber bin
    
        % Finding ks1, ks2: the peak and suboptimal wavenumbers
        % Do the peak finding and sort by descending peak value.
        % Then only take the peaks that are at the index of the global max and further. 
        % Note, we're only using the positive wavenumbers because it should be symmetric about 0 anyway.
        [all_peaks_val_sorted, all_peaks_idx_sorted] = findpeaks(smooth(abs(mean_axial_fft(Nfft_x/2+1:end)),10), 'MinPeakProminence', 2);
        peaks_idx_12 = all_peaks_idx_sorted(all_peaks_idx_sorted>30);
        peaks_idx_12 = peaks_idx_12(1:end); % ks1, ks2, ks3 and ks4 % peaks_idx_12(1:2); ks1, ks2

        if length(peaks_idx_12)<2
            peaks_idx_12(2) = peaks_idx_12(1);
        end
        
        ks_12 = mean_kx(peaks_idx_12 + Nfft_x/2);
        
        k1 = ks_12(1);
        k2 = ks_12(2);
        k3 = 1000; %%%% some arbitrarily large value
        k_x = 0;
        k_spectrum_complex = [];

    end
            