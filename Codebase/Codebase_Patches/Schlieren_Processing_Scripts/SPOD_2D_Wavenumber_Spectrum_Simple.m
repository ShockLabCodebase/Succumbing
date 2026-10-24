%================================================================================
% PURPOSE:
%   Streamlined computation and visualization of 2D wavenumber spectra from SPOD
%   modes via spatial Fourier transform. Designed for rapid first-pass analysis
%   without advanced filtering, smoothing, or multi-peak tracking.
%
% HIGH-LEVEL WORKFLOW:
%   1. Discover SPOD result files (*Nfft*.mat) in SPOD_Results/Data/
%   2. Detect operating-parameter convention (NPR vs. Mach number) from filename
%   3. Extract nozzle identifiers and operating conditions from case filenames
%   4. For each case, load SPOD mode tensor P and Strouhal frequencies St
%   5. Identify dominant frequency peaks via eigenvalue peaks (L(:,1))
%   6. For each dominant peak (modes 1–2), extract spatial mode shape P[f_peak,:,:]
%   7. Apply 1D spatial FFT (along x-axis only) to compute axial wavenumber spectrum
%   8. Compute acoustic wavenumber signature k_a = 2πSt·M_j (from NPR or Mach)
%   9. Render pcolor plot: wavenumber k_x vs. radial y with acoustic lines overlay
%  10. Export PNG figure and MATLAB .fig file to Figures/Wavenumber_Spectrum/
%
% OUTPUT FILES:
%   - {case_name}_Wavenumber_Spectrum_Mode_{1,2}.png
%     Figures in: {parent_folder}/Figures/Wavenumber_Spectrum/
%   - {case_name}_Wavenumber_Spectrum_Mode_{1,2}.fig (MATLAB figure file)
%
% KEY DIFFERENCES FROM FULL VERSION (SPOD_2D_Wavenumber_Spectrum_Analysis.m):
%   - Single 1D FFT per mode (x-axis only) vs. full 2D FFT
%   - No frequency-band averaging or adaptive smoothing
%   - No mean field wavenumber comparisons or Kelvin-Helmholtz references
%   - Processes top 2 modes per frequency peak (fixed list)
%   - No symmetry-imposed variant support
%   - Minimal parameter tuning: automatic FFT sizing, no manual window adjustment
%   - Faster turnaround (suitable for quick exploration)

%
%================================================================================

clear; close;

%% ======================== COLORMAP SELECTION AND PATH SETUP ========================
% Load custom colormaps for spectral visualizations and utility functions
% sCMRmap: sequential colormap for linear energy scale
% pogmap: alternative colormap for reference

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

sCMRmap = CMRmap;   % sCMRmap: [n_colors,3] sequential colormap (energy visualization)
cmap = pogmap;      % cmap: [n_colors,3] alternative colormap (reserved for future use)

% Detect execution environment: 1 if HPC (Linux), 0 if Windows PC
using_MASSIVE = 1-ispc;
using_Market = false;  % Whether to use Market (shared network drive) for data storage

% =====================================================================
% DIRECTORY CONFIGURATION
% =====================================================================
% Same hierarchy as BMD/POD scripts
% Top_folder / parent_folder / main_folder / Data -> *Fields.mat

Top_folders = "\\ad.monash.edu\home\User088\joellukw\Documents\Monash_Research_Fellow\Experiments\"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                   % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "\\ad.monash.edu\home\User088\joellukw\Documents\Monash_Research_Fellow\Experiments\"; % Usually set to same as Top_folders. Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = ["*Misc*"];      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = ["*SPOD_Nfft*"];         % main_folder_str: regex pattern (select by nozzle config)

% Retrieve paths matching above criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);


%% ======================== VARIANT SELECTION ========================
% Choose between standard SPOD and symmetry-decomposed variants
% Symmetry-imposed: analyzes symmetric/antisymmetric components separately
%   (useful for separating coherent structures from their interactions)

symmetry_imposed = false;  % symmetry_imposed: boolean, true = load symmetry-decomposed SPOD results
                           % File pattern adjusts accordingly (e.g., *symmetric*_Nt_*.mat)


for m = 1:length(parent_folders)

   parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Find all subfolders matching main_folder_str pattern
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % Loop through each main_folder variant
    for k = 1:length(main_folders)
        main_folder = fullfile(parent_folder,main_folders(k).name,'SPOD_Results');   % SPOD_Analysis writes here (was <main>/Data, the raw Fields)
        save_folder = fullfile(save_folder_upper,main_folders(k).name);

        mkdir(save_folder);

        if symmetry_imposed
            % Symmetry-decomposed results stored in subfolder
            main_folder = fullfile(main_folder,"Symmetry_Imposed");
            SPOD_dir = fullfile(main_folder,'Data');
            suffix = strcat('*symmetric*_Nt_*Nfft*.mat');  % File pattern: symmetry-imposed variants
        else
            % Standard SPOD results
            SPOD_dir = fullfile(main_folder,'Data');
            suffix = strcat('*_Nt_*Nfft*.mat');  % File pattern: standard SPOD files
        end

        % Discover all SPOD result files matching pattern (suffix set above; it was
        % overwritten here with '*Nfft*.mat', which also matched the other symmetry files)
        case_list = dir(fullfile(SPOD_dir,suffix));
        case_list = {case_list.name};  % case_list: string array of filenames


        %% Detect operating-parameter convention (NPR vs Mach number)
        % Heuristic: examine first case filename for delimiter '_NPR_' or '_M_'
        if contains(case_list{1},'_NPR_')
            using_npr = true;   % Dataset indexed by pressure ratio (NPR)
        else
            using_npr = false;  % Dataset indexed by Mach number (_M_, _Mj_ or _Ma_)
        end
        
        %% Parse operating-point parameters and nozzle identifiers from filenames
        % Extract: nozzle_list (type), NPR (or M), NPR_factor (digit count for formatting)
        % These are used in plot titles and output filenames
        
        if using_npr
            for k = 1:length(case_list)   
                nozzle_list{k} = extractBefore(case_list{k},'_NPR');
                NPR_temp = extractBetween(case_list{k},'_NPR_','_');
                NPR_factor = length(num2str(str2num(NPR_temp{1})));  % digit count
                NPR(k) = str2double(NPR_temp{1});
            end
        else        
            [nozzle_list, M, M_factor] = get_filename_params(using_npr, case_list);   % handles _M_, _Mj_, _Ma_
        end
    
        %% ===================== PER-CASE PROCESSING LOOP =====================
        % Iterate over all cases and generate wavenumber spectra for top modes
        
        for i = 1:length(case_list)  
    
            %% Load SPOD result file using matfile (efficient partial read)
            % Supports two SPOD output formats:
            %   Format A (standard): P tensor [n_freq, n_y, n_x, n_modes]
            %   Format B (alternative): SPOD_mode_store (cell array), significant_St (vector)
            
            load_file = fullfile(SPOD_dir,case_list{i});
            file = matfile(load_file);
            var_info = who('-file',load_file);  % List all variables in file
            
            L = file.L;      % L: [n_freq,n_modes] eigenvalues (energy per mode/frequency)
            St = file.St;    % St: [n_freq] Strouhal numbers = f·D/u_exit
            fps = file.fps;  % fps: scalar, acquisition frame rate [Hz]
            D = file.D;      % D: scalar, nozzle diameter [mm]
            x = file.x;      % x: [n_y,n_x] axial coordinate grid [D]
            y = file.y;      % y: [n_y,n_x] transverse coordinate grid [D]
            nfft = file.nfft;% nfft: scalar, size of Welch window used in SPOD processing 
    
            modes_oi = [1,2];  % modes_oi: [int] mode indices to process (top 2 modes)
                               % Rationale: focus on most energetic modes; top 2 covers primary structure
    
            %% ===================== PER-MODE LOOP =====================
            % Process each mode in modes_oi list separately
            
            for mode_n = 1:length(modes_oi)
                mode_oi = modes_oi(mode_n);  % mode_oi: scalar int, current mode index
    
                %% Identify dominant frequency peaks via eigenvalue analysis
                % findpeaks: locate local maxima in L(:,1) (most-energetic mode per frequency)
                % Sort by prominence (magnitude) and remove spurious low-frequency peaks
                
     
                [mode_peaks,mode_peak_index,~,mode_peak_prominence] = findpeaks(L(:,1));
                % mode_peak_index: frequency indices where peaks occur
                
                [mode_peak_prominence,sort_inds] = sort(mode_peak_prominence,'descend');
                mode_peaks = mode_peaks(sort_inds);
                mode_peak_index = mode_peak_index(sort_inds);
    
                % Filter out spurious low-frequency peaks (index < 3, typically noise)
                mode_peak_prominence(mode_peak_index < 3) = [];
                mode_peaks(mode_peak_index < 3) = [];
                mode_peak_index(mode_peak_index < 3) = [];
% 
%                 % Optional: remove high-frequency cutoff (index > 400)
%                 mode_peak_prominence(mode_peak_index > 400) = [];
%                 mode_peaks(mode_peak_index > 400) = [];
%                 mode_peak_index(mode_peak_index > 400) = [];
                
                % Extract spatial mode shape at dominant peak
                mode_shape_comp = squeeze(file.P(mode_peak_index(mode_oi),:,:,1));  % [n_y,n_x] complex
                St_peak = St(mode_peak_index(mode_oi));  % St_peak: scalar, Strouhal at peak
  
                
                %% Compute spatial FFT parameters for axial wavenumber extraction
                % FFT applies along x (column) axis to extract axial wavenumber spectrum
                % NFFT = 2^nextpow2(nx)*16: oversample 16× to refine wavenumber resolution
                % Rationale: captures fine wavenumber detail; avoids aliasing
                
                nx = size(mode_shape_comp,2);  % nx: scalar int, number of x-grid points
                
                % Constants (unused but present for reference)
                cinf = 340;  % cinf: scalar, ambient sound speed [m/s] (not used in k_acoustic calc)
                
                wx = (max(x(1,:))-min(x(1,:)));  % wx: scalar, x-domain span [D]
                sps = wx/nx;                      % sps: scalar, grid spacing [mm/point]
                sfs = 1/sps;                      % sfs: scalar, spatial sampling frequency [1/mm]
                NFFT = 2^nextpow2(nx)*16;        % NFFT: scalar int, FFT size = 2^(ceil(log2(nx)))*16
                                                 % Rationale: 16× oversampling for fine k resolution
                
                %% Compute axial wavenumber grid (FFT output)
                % kx: axial wavenumber vector after FFT shift (zero at center)
                % Units: [rad/mm]; scaled by 2π for standard wavenumber convention
                kx = (-NFFT/2:NFFT/2-1) * sfs/NFFT*2*pi;  % kx: [NFFT] wavenumber grid [rad/mm]
                
                %% Apply 1D FFT along x-axis
                % fft(conj(mode_shape_comp),...): FFT of complex conjugate along columns (dimension 2)
                % Complex conjugate used for correlation-type operations (convention-dependent)
                % fftshift: reorders output so zero-frequency component at center
                phi_fftx = fft(conj(mode_shape_comp),NFFT,2);  % phi_fftx: [n_y,NFFT] complex FFT output
                phi_fftx = fftshift(phi_fftx,2);               % Shift zero-frequency to center
                
                %% Compute acoustic wavenumber signature
                % k_acoustic = 2π·St·M_j: free-stream acoustic wavenumber
                % Reflects pressure-wave propagation in jet exit flow (Mach number effect)
                % At supersonic (M_j > 1): shock-associated acoustic radiation dominant
                % At subsonic (M_j < 1): screech/broadband components
                
                % k_a*D = omega*D/c_inf = 2*pi*St*(u_j/c_inf)*(D/D_j) with St = f*D_j/u_j. The old
                % 2*pi*M_j*St assumed a_j = c_inf and D_j = D (lines ~20% too far out at NPR 2.9).
                if using_npr
                    [u_j_ka,D_j_ka] = get_ideal_jet_velocity_diameter(using_npr,NPR(i),NPR_factor,D);
                else
                    [u_j_ka,D_j_ka] = get_ideal_jet_velocity_diameter(using_npr,M(i),M_factor,D);
                end
                c_inf = sqrt(1.4*287*293);   % ambient sound speed at T0 = 293 K
                k_acoustic = St_peak*2*pi*(u_j_ka/c_inf)*(D/D_j_ka);  % k_acoustic: scalar, [rad/D]
                          
                %% ===================== GENERATE AND SAVE FIGURE =====================
                % Create pcolor plot of wavenumber spectrum with acoustic reference lines
                % Design intent: visualize mode wavenumber content and compare to acoustic prediction
                
                save_folder_figs = fullfile(save_folder,'Wavenumber_Spectrum','Figures');
                mkdir(save_folder_figs);  % Create output directory if needed
                
                fileout = fullfile(save_folder_figs,[case_list{i}(1:end-4),'_Wavenumber_Spectrum_Mode_',num2str(mode_oi)]);
                title_text = strcat(sprintf('Peak %1d, St = %1.3f',mode_oi,St_peak));
                
                figure
                set(gcf,'Color', [1 1 1], 'Visible','On');  % White background, visible window
                pcolor(kx,y(:,1),(abs(phi_fftx)))          % Plot wavenumber spectrum vs. y
                shading interp                              % Smooth color interpolation (no mesh)
                if using_npr
                    xlim([-20,20])   % NPR datasets: narrower wavenumber range
                else
                    xlim([-30,30])   % Mach datasets: broader wavenumber range
                end
                colormap(sCMRmap)
                title(title_text)
                % clim([-5,0.4])  % Optional: manual color limits (currently disabled)
                xline(k_acoustic,'--w')    % White dashed line at +k_acoustic (downstream)
                xline(-k_acoustic,'--w')   % White dashed line at -k_acoustic (upstream)
                xlabel('$k_xD$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('$y/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                set(gca,'Layer','Top')
                % Export rendered figure in two formats
                export_fig(strcat(fileout,'.png'),'-m5');  % -m5: 5× magnification for crisp export
                savefig(strcat(fileout,'.fig'))            % MATLAB figure file for later editing
    
                close all
    
            end
        end
    end
end
