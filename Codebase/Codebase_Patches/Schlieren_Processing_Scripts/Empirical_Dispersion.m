%================================================================================
% PURPOSE:
%   Compute empirical dispersion relationships from schlieren data by extracting
%   peak frequency (Strouhal number) across multiple operating conditions.
%
% HIGH-LEVEL WORKFLOW:
%   1. Load schlieren snapshots (*Fields.mat) across multiple operating conditions
%   2. Extract spatial-temporal data along multiple radial/axial lines
%   3. Apply wavenumber-frequency (k-ω) decomposition via 2D FFT
%   4. Identify peak Strouhal number at each condition
%   5. Construct dispersion curves: operating parameter (NPR/Mach) → St(k)
%   6. Visualize dispersion relations on k-St plane with spectral magnitude contours
%
% OUTPUT:
%   - Dispersion relation figures saved to parent_folder/Figures/Empirical_Dispersion/
%   - Files: {case_name}_Dispersion_Relation_{yD_position}.png
%   - Contour plots showing spectral magnitude (dB) on (k_x, St) plane
%
%================================================================================

clear all
close all

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

%% ======================== COLORMAP SELECTION AND PATH SETUP ========================
% Load custom colormaps for publication-quality visualizations and add helper functions
sCMRmap = CMRmap;  % sCMRmap: [m, 3] sequential colormap for spectral magnitude
cmap = pogmap;     % cmap: [m, 3] alternative colormap (diverging, if needed)



% Detect execution environment: 1 if HPC (Linux), 0 if Windows PC
using_MASSIVE = 1-ispc;
using_Market = false;  % Whether to use Market (shared network drive) for data storage

% =====================================================================
% DIRECTORY CONFIGURATION
% =====================================================================
% Same hierarchy as BMD/POD scripts
% Top_folder / parent_folder / main_folder / Data -> *Fields.mat

Top_folders = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren/"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                                      % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren/"; % Output root for MAT file storage (Local folder)
alternate_temp_save_loc = '/home/jweightman/ty79_scratch2/JWeightman';  % Can use this as an alternate path if the temp files are getting too large

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = ["*Soudeh*"];      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = "*Axis*";         % main_folder_str: regex pattern (select by nozzle config)

% Retrieve paths matching above criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

% =====================================================================
% SPOD ANALYSIS PARAMETERS
% =====================================================================
% Control frequency resolution, snapshot count, and optional frequency targeting

n_snapshots_set = 0;  % Snapshot count; 0 = use all available
case_suffix = '*Fields.mat';   % files to process in <main>/Data (was hard-coded '*Imposed*Fields.mat')
nfft = 4096;           % FFT size: larger = finer frequency resolution but higher memory
                       % NOTE: If processing half-planes, adjust naming to avoid overwrites

%% ======================== ANALYSIS LOCATION SELECTION ========================
% Choose analysis strategy: single centerline (check_lines=true) or
% multiple radial positions (check_lines=false).
% Rationale: Multiple lines reveal azimuthal/radial structure in dispersion relations.
%
% check_lines=true:  Manually select positions via mouse (interactive)
% check_lines=false: Automatically sample at predefined fractional domain widths

check_lines = false;
if check_lines
    n_lines = 1;  % Number of positions to analyze (user selected)
else
    line_locs = [0,0.2,0.4,0.45,0.5,0.55,0.6,0.75];  % line_locs: [n_lines] fractional domain positions [unitless]
    n_lines = length(line_locs);
end

%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over case directories, extract operating conditions, and compute dispersion relations

for m = 1:length(parent_folders)
    % Construct paths to parent folder
    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Find all subfolders matching main_folder_str pattern
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % Loop through each main folder, then each subfolder (Various NPRs),
    for k = 1:length(main_folders)
        main_folder = fullfile(parent_folder, main_folders(k).name);
        save_folder = fullfile(save_folder_upper,main_folders(k).name); % local save location, ie shouldn't be Market.

        mkdir(save_folder);
        
        % =====================================================================
        % LOCATE AND CATALOG SNAPSHOT FILES
        % =====================================================================
        snapshot_dir = fullfile(main_folder,'Data');
        suffix = case_suffix;
        case_list = dir(fullfile(snapshot_dir,suffix));
    
        case_list = {case_list.name}; % case_list: [n_cases, 1] cell array of filenames
    
        % Detect parametrization type: NPR (pressure ratio) or Mj (Mach number)
        if contains(case_list{1},'_NPR_')
            using_npr = true;
        else
            using_npr = false;   % _Mj_, _M_ or _Ma_
        end

        %% Extract Operating Conditions from Filenames
        % Parse nozzle type and flow condition (NPR or Mach) for each case
        if using_npr
            [nozzle_list, NPR_list, NPR_factor] = get_filename_params(using_npr, case_list);
        else
            [nozzle_list, M_list, M_factor] = get_filename_params(using_npr, case_list);
        end

        %% Case Selection and Data Loading
        % Process selected cases (indices 18-20 and 35-37; adjust as needed for specific study)
        for ii = 1:length(case_list)
            clearvars im_data L P f 
            % Load schlieren snapshot data from .mat file (lazy-load via matfile for efficiency)
            filename = case_list{ii};
            full_filename = fullfile(snapshot_dir,filename);
            file = matfile(full_filename);
            x = file.x;                           % x: [n_y, n_x] spatial grid, x-coordinates [De]
            y = file.y;                           % y: [n_y, n_x] spatial grid, y-coordinates [De]
            im_mean = file.im_mean;               % im_mean: [n_y, n_x] mean schlieren field
            fps = file.fps;                       % fps: scalar, frame rate [Hz]
            D = file.D;                           % D: scalar, characteristic diameter (nozzle exit De) [m]
    
            %% Analysis Line Selection
            % Determine y-indices of analysis lines based on domain location
            if check_lines
                % Interactive: user selects lines via mouse clicks on mean schlieren
                figure
                pcolor(im_mean)
                shading interp
                axis equal
                [~,y1] = ginput(n_lines); % y1: [n_lines] selected y-pixel indices
                y1 = round(y1,0);
                line_locs = y(y1,1);
            else
                % Automatic: map fractional domain positions to pixel indices
                for N = 1:n_lines
                    y1(N) = find(abs(y(:,1)-line_locs(N)) == min(abs(y(:,1)-line_locs(N))),1);
                end
            end

            im_size = size(file,'im_data');
            if n_snapshots_set == 0
                n_snapshots = im_size(3);
            else
                n_snapshots = min([n_snapshots_set,im_size(3)]);
            end
            
            %% Extract Line Data and Apply Temporal Averaging
            % Extract horizontal lines at selected y-positions, average over 3 pixels vertically
            % (smooths noise while preserving large-scale structure)
            clearvars im_data_lines
            for N = 1:n_lines
                rows = max(y1(N)-1,1):min(y1(N)+1,im_size(1));   % 3-row average, clipped at the frame edges
                im_data_lines(N,:,:) = mean(file.im_data(rows,:,1:n_snapshots),1);
            end
    
            im_data_lines = cast(im_data_lines,'single'); % Cast to single-precision for memory efficiency
            
            %% Per-Line Spectral Analysis Loop
            % For each analysis line, compute wavenumber-frequency spectrum
            for N = 1:size(im_data_lines,1)
                im_data_line = squeeze(im_data_lines(N,:,:));
                phi_mean=(mean(im_data_line,2)); % phi_mean: [n_x] temporal mean intensity at each spatial location
                
                x_line = x(1,:); % x_line: [1, n_x] spatial coordinates along analysis line [De]
                
                % Remove temporal mean to isolate fluctuations for spectral analysis
                % (Mean removal eliminates DC component, improving frequency resolution)
                im_data_line=im_data_line-phi_mean;
                
                nx=size(im_data_line,1); % nx: scalar, spatial grid points
                nt=size(im_data_line,2); % nt: scalar, temporal samples
                
                % Reference sound speed (constant; could be made case-dependent)
                cinf=sqrt(1.4*287*293); % cinf: ambient sound speed [m/s] at T0 = 293 K, as in get_ideal_jet_velocity_diameter (was 340)
                % Non-dimensionalize time: t = (1:nt) / fps / (D/cinf)
                % This gives non-dimensional time τ = t*U_j/D where U_j ~ M*cinf
                if D >= 1
                    D = D/1000; %%% Change to m if in mm.
                end
                t=(1:1:nt)/fps/(D/cinf);
                
                %% ======================== SPATIAL FFT: WAVENUMBER DECOMPOSITION ========================
                % Transform spatial domain to wavenumber domain k_x to capture
                % spatial periodicity and wavelength-frequency relationships.
                % Wavenumber resolution: Δk_x = 2π/(spatial_extent)
                
                
                wx=(max(x_line(:))-min(x_line(:))); % wx: scalar, spatial extent of domain [De]
                sps = wx/nx; % sps: scalar, spatial sample spacing [De/pixel]
                sfs = 1/sps; % sfs: scalar, spatial sampling frequency [1/De]
                NFFT = 2^nextpow2(nx)*16;   % NFFT: scalar, FFT size for zero-padding (16x upsampling)
                
                % Compute wavenumber axis, centered at zero for easier interpretation
                % kx range: [-π*sfs/2, π*sfs/2] with NFFT bins
                kx  = (-NFFT/2:NFFT/2-1) * sfs/NFFT*2*pi; % kx: [NFFT] wavenumber axis [rad/De]
                
                % Spatial FFT: Transform im_data_line (space x time) to (wavenumber x time)
                % Conjugate ensures causality convention in spectral analysis
                phi_fftx = conj(fft(im_data_line,NFFT,1));
                phi_fftx=fftshift(phi_fftx,1); % fftshift: center zero wavenumber
                
                %% ======================== TEMPORAL FFT: FREQUENCY DECOMPOSITION ========================
                % Transform time domain to frequency domain to capture oscillation frequencies.
                % This creates a 2D spectrum: (k_x, f) showing intensity across wavenumber-frequency space.
                % Windowing (Hann window default) reduces spectral leakage from FFT.
                % Overlapping blocks enable frequency resolution improvement via ensemble averaging.
                
                dt = max(t)-min(t);     % dt: scalar, total time span of recording [nondim]
                ps = dt/nt;    % ps: scalar, temporal sample period [nondim]
                fs = 1/ps;              % fs: scalar, temporal sampling frequency [1/nondim_time]
                
                % Windowing and overlap configuration
                overlap=50;             % overlap: scalar, 0/50/75 percent temporal overlap in blocks
                                        % (PATCH 2026-10-23: was 0, which drops up to nfft-1 frames
                                        % and gives few blocks: 2 blocks from 10k frames at nfft 4096)
                windowtype='han';       % windowtype: string, 'han' (Hann), 'nowindow', etc.
                
                % Define FFT length for temporal transform (typically smaller than spatial)
                df = fs/nfft; % df: scalar, frequency resolution [1/nondim_time]
                freq = 0:df:(fs-df); % freq: [nfft] frequency axis [Hz in nondim units]
                omega = 2*pi*freq; % omega: [nfft] angular frequency axis [rad/nondim_time]
                
                % Calculate number of blocks for ensemble averaging spectral estimates
                if overlap==0
                    nblocks = floor(nt/nfft); % No overlap: consecutive blocks
                elseif overlap==50
                    nblocks=floor(2*nt/nfft) - 1; % 50% overlap: double effective sampling
                elseif overlap==75
                    nblocks=floor(4*nt/nfft) - 3; % 75% overlap: quadruple effective sampling
                end
                
                %% Window Function Definition
                % Apply temporal window to each block to reduce spectral leakage.
                % Different window types trade spectral resolution for sidelobe suppression.
                % Hann window: sinc^2-like, good general-purpose properties
                t_window = ((1:nfft)-1)/nfft; % Normalized time within window [0,1)
                if strcmp(windowtype,'han')
                    window=sin(pi*t_window).^2; % Hann window: smooth, low spectral leakage
                    fact=sqrt(8/3);              % Hann window correction factor (Parseval)
                    hwind=pi*sin(2*pi*t_window)/(nfft*dt); % Hann derivative (unused here)
                elseif strcmp(windowtype,'sin_n')
                    window=sin(pi*t_window).^nsin; % Generalized sinusoidal window
                    rms_w = rms(window);
                    fact = 1/rms_w;
                    hwind=nsin*pi*sin(pi*t_window).^(nsin-1).*cos(pi*t_window)/(nfft*dt);
                elseif strcmp(windowtype,'other')
                    [DDt,~]=diff_mat(t_window);
                    window=chebwin(nfft);  % Chebyshev window (optimized sidelobe control)
                    rms_w = rms(window);
                    fact = 1/rms_w;
                    hwind=DDt*window/(nfft*dt);
                    window=window.';
                    hwind=hwind.';
                elseif strcmp(windowtype,'nowindow')
                    window = ones(size(t_window)); % Rectangular window (no tapering)
                    fact=1;
                    hwind=zeros(size(t_window));
                end
                
                %% 2D Spectral Estimation via Windowed Temporal FFT
                % For each (overlapped) temporal block, compute FFT across all wavenumbers.
                % Result: qall(k_x, f) = |FFT(φ(k_x,t) * window(t))|^2 / nblocks / df
                % Ensemble averaging over blocks reduces spectral variance.
                qall=zeros(NFFT,nfft); % qall: [NFFT, nfft] 2D power spectrum (k_x, f)
                for i=1:nblocks
                    
                    % Determine time indices for i-th block based on overlap strategy
                    if overlap==0
                        ti = (i-1)*nfft + 1; % Non-overlapping blocks
                    elseif overlap==50
                        ti = (i-1)*(nfft/2)+1; % 50% overlap: shift by nfft/2
                    elseif overlap==75
                        ti = (i-1)*(nfft/4)+1; % 75% overlap: shift by nfft/4
                    end
                    
                    tf = ti+nfft-1; % End time index for block
                    
                    % Extract spatial-wavenumber data for current time block
                    uu = (phi_fftx(:,ti:tf)).'; % uu: [nfft, NFFT] (time x wavenumber)
                    
                    % Apply window, compute temporal FFT, normalize
                    % bsxfun multiplies each time row by window; fft operates on time axis (2)
                    uu_hat = fft(bsxfun(@times,uu.',repmat(window,NFFT,1)),nfft,2)/nfft;
                    % uu_hat: [NFFT, nfft] complex temporal Fourier coefficients
                    
                    % Accumulate spectral power: magnitude squared, normalized by ensemble size & frequency resolution
                    qall=qall+(abs(uu_hat).^2)/nblocks*fact^2;
                    % Power spectrum units: (schlieren intensity)^2 per (rad/De) per (rad/nondim_time)
                end
                
                %% Non-dimensionalization: Convert to Strouhal Number
                % St = f * D_e / U_j where U_j ≈ M * c_∞ (Mach * sound speed)
                % For pressure-based cases: derive Mach from isentropic relations

                if using_npr
                    NPR = NPR_list(ii)/(10^(NPR_factor-1));
                    [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, NPR, 1, D);
                else
                    M = M_list(ii)/(10^(M_factor-1));
                    [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, M, 1, D);
                end

                if using_npr
                    gamma = 1.4; % Heat capacity ratio for air
                    % NPR → Mach via isentropic nozzle flow relation
                    Mj = (2/(gamma-1)*((NPR)^((gamma-1)/gamma)-1))^(1/2);
                else
                    % Mach directly specified (divide by 10^(M_factor-1) for proper decimal placement)
                    Mj = M;
                end
    
                % Convert angular frequency to Strouhal number
                % St = f*D_j/u_j, as in the other scripts. omega is non-dimensional
                % (omega = 2*pi*f*D/cinf), so f = omega/(2*pi)*cinf/D. (Was
                % St = f*D/(Mj*cinf): 0.83x the SPOD St at NPR 2.9, 0.94x at Mj 0.8.)
                % The white sonic lines k*D = omega are unchanged.
                St=omega(1:nfft/2)/(2*pi)*(cinf/D)*D_j/u_j; % St: [nfft/2] Strouhal number f*D_j/u_j

                %% ======================== DISPERSION RELATION VISUALIZATION ========================
                % Generate contour plot of 2D spectral magnitude on (k_x, St) plane.
                % This reveals wave relationships: how frequency varies with wavenumber,
                % indicating phase/group velocity and nonlinear dispersion effects.
                
                savefolder = fullfile(save_folder,'Figures','Empirical_Dispersion');
                mkdir(savefolder);
    
                % Construct output filename with case name and analysis line position
                fileout = fullfile(savefolder,[case_list{ii}(1:end-4),'_Dispersion_Relation_',sprintf('yD_%1.3f',round(line_locs(N),2))]);
                % PATCH 2026-10-23: D_e only for non-round nozzles (ONR, Ellip, Rect), as elsewhere
                if contains(case_list{ii},'ONR') || contains(case_list{ii},'Ellip') || contains(case_list{ii},'Rect')
                    D_label = 'D_e';
                else
                    D_label = 'D';
                end
                title_text = sprintf('$y/%s = %1.2f$',D_label,round(line_locs(N),2));
    

                kx_lim = [-20,20]; % Wavenumber range: -20 to +20 rad/De (includes positive/negative k)
                kx_lim_ind(1) = find(abs(kx-kx_lim(1)) == min(abs(kx-kx_lim(1))));
                kx_lim_ind(2) = find(abs(kx-kx_lim(2)) == min(abs(kx-kx_lim(2))));

                % Create dispersion relation figure: pcolor contour of spectral magnitude
                figure
                set(gcf,'Color',[1,1,1])
                % Plot: dB-scaled magnitude (10*log10(|spectrum|)) on (k_x, St) grid
                pcolor(kx(kx_lim_ind(1):kx_lim_ind(2)),St,10*log10(qall(kx_lim_ind(1):kx_lim_ind(2),1:nfft/2)).');
                shading interp % Smooth color interpolation for publication quality
                % clim([15,50]) % Colorbar range: 15-50 dB (typical dynamic range for acoustic data)
                ylim([0 1.5])   % Strouhal range: 0 to 1 (covers most jet instability modes)
                xlim(kx_lim) 
                colormap(sCMRmap) % Use sequential colormap
                hold on
                set(gca,'Layer','Top')
                % Overlay dispersion-free lines (ω = const, shown as horizontal lines in St-k space)
                plot(omega(1:nfft/2),St,'w') % White line at ω = St*2π*Mj (reference)
                plot(-omega(1:nfft/2),St,'w') % Negative wavenumber mirror
                title(title_text,'interpreter','LaTeX')
                xlabel(sprintf('$k_x%s$',D_label),'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                % savefig(strcat(fileout,'.fig')) % Uncomment to save editable .fig
                export_fig(strcat(fileout,'.png'),'-m5'); % Save publication-ready PNG (5x resolution)
                pause(0.5) % Brief pause to allow figure rendering
                close all % Close all figures to free memory
            end % End per-line analysis
        end % End per-case analysis
    end % End per-condition loop
end % End per-dataset loop




