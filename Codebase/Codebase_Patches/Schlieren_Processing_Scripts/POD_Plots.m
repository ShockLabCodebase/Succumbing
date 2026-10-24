% Schlieren_POD_Plots.m
% =====================================================================
% Visualizes Proper Orthogonal Decomposition (POD) results computed by
% Schlieren_POD.m. Generates spatial mode shape plots showing dominant
% coherent structures ranked by energy. Supports standard, symmetry-imposed,
% and ROI-restricted variants.
%
% WORKFLOW:
%   1. Load POD modes (Mode(y, x, n_mode)) and eigenvalues (Energy)
%   2. Iterate over modes, generating spatial contour maps
%   3. Display mode shapes colored by magnitude/phase
%   4. Optional: overlay vector quivers or mode energy decay
%
% CONFIGURATION:
%   - Set Top_folders, parent/main_folder_str for case selection
%   - Set symmetry=true/false to load symmetry-imposed POD variants
%   - Set ROI=true/false for axial region of interest variant
%   - Adjust n_modes_to_plot to limit visualization to dominant modes

clear; close;

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

% =====================================================================
% COLORMAP SELECTION
% =====================================================================
% Define custom colormaps for visualizations
sCMRmap = CMRmap;  % Sequential colormap for single-variable fields
cmap = pogmap;     % Alternative colormap for enhanced contrast

% =====================================================================
% ENVIRONMENT CONFIGURATION
% =====================================================================
% Detect execution environment: 1 if HPC (Linux), 0 if Windows PC
using_MASSIVE = 1-ispc;
using_Market = false; % true = snapshot files on Market shared drive

% =====================================================================
% DIRECTORY CONFIGURATION
% =====================================================================
% Folder hierarchy: Top_folder / parent_folder / main_folder / POD_Results

Top_folders =  "\\ad.monash.edu\home\User088\joellukw\Documents\Monash_Research_Fellow\Experiments\"  % For MASSIVE: relative to LTRAC-Jet-Noise/
save_folder_outer = "\\ad.monash.edu\home\User088\joellukw\Documents\Monash_Research_Fellow\Experiments\" % Output directory

% Wildcard patterns to select specific cases
parent_folder_str = "*Misc*"; % Regex to select parent folders
main_folder_str = "*CCA*"; % Regex to select main folders

% Retrieve paths matching criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

% =====================================================================
% POD VISUALIZATION PARAMETERS
% =====================================================================
% Control which POD variants and modes to visualize

symmetry = false;  % true = load symmetry-imposed POD variants (POD_Results/Symmetry_Imposed)
ROI = false;       % true = load ROI-restricted POD variants
pod_type = '';     % POD_Results subfolder: '' = POD_Analysis, 'CCA' = CCA_POD_Analysis
if symmetry
    pod_type = 'Symmetry_Imposed';
end

for m = 1:length(parent_folders)

    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);
    
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % =====================================================================
    % NESTED LOOP: PROCESS EACH CONDITION/NPR SUBFOLDER
    % =====================================================================
    % For each operating condition:
    %   - Load POD modes: Mode(y, x, mode) ordered by decreasing energy
    %   - Generate contour visualizations for each mode
    %   - Plot phase portraits from temporal coefficients a_n
    for k = 1:length(main_folders)
        main_folder = fullfile(main_folders(k).folder,main_folders(k).name,'POD_Results',pod_type,'Data');
        save_folder = fullfile(save_folder_upper,main_folders(k).name,'POD_Results',pod_type,'Figures');

        mkdir(save_folder)
    
        % Determine flow direction from parent folder name
        if contains(main_folder,'Minor')
            flow_axis = 'Minor';
        elseif contains(main_folder,'Major')
            flow_axis = 'Major';
        elseif contains(main_folder,'Angled')
            flow_axis = 'Angled';
        else
            flow_axis = 'Minor';
        end

        % =====================================================================
        % FILE SELECTION: MATCH POD VARIANT
        % =====================================================================
        % Select filename patterns based on variant flags:
        %   Standard: *POD_Modes.mat
        %   Symmetry-imposed: *Symmetry*POD_Modes*.mat
        %   ROI-restricted: *POD_Modes*ROI*.mat
        if ~symmetry && ~ROI
            suffix='*POD_Modes.mat';
        elseif symmetry
            suffix='*Symmetry*POD_Modes*.mat';
        elseif ~symmetry && ROI
            suffix='*ROI*POD_Modes*.mat';
        end
        
        direc = dir([main_folder,filesep,suffix]); 
        filenames={};
        [filenames{1:length(direc),1}] = deal(direc.name);
    
        % =====================================================================
        % CONDITION PROCESSING LOOP
        % =====================================================================
        for i = 1:length(filenames)
            condition = filenames{i}(1:end-4);
            
            % Skip ROI files if not requested
            if ~ROI && contains(condition,'ROI')
                continue
            elseif contains(condition,'Hilbert')
                % PATCH 2026-10-23: *POD_Modes.mat also matches the complex
                % *_CCA_Hilbert_POD_Modes.mat files (pcolor fails on complex
                % data); those are plotted by Hilbert_POD_Plots.
                continue
            else
                load_file = fullfile(main_folder, [condition,'.mat']);
            end
    
            % =====================================================================
            % DATA LOADING
            % =====================================================================
            % Load POD results: Mode(y, x, mode), Energy(mode), a_n(time, mode)
            % Mode shapes are spatial patterns; a_n(t) are temporal amplitudes
            load(load_file);
            
            % =====================================================================
            % GENERATE SPATIAL MODE VISUALIZATIONS
            % =====================================================================
            % Create pseudocolor plots of each POD mode shape showing spatial
            % structure of dominant coherent structures
            save_file = fullfile(save_folder,'Mode_Shapes');
            mkdir(save_file);

            % Extract variable names if stored in filename (e.g., '_Vars_I')
            variables = extractAfter(condition,'_Vars_');
            flow_variables = {};
            for j = 1:length(variables)
                flow_variables{j} = variables(j);
            end
            if length(flow_variables) == 0
                flow_variables{1} = 'I';  % Default to intensity if no variable specified
            end

            % =====================================================================
            % PLOT MODE SHAPES FOR FIRST 4 DOMINANT MODES
            % =====================================================================
            % For each of the 4 most energetic modes, generate contour plot
            % showing spatial structure: darker = negative phase, lighter = positive
            for k = 1:4
                for j = 1:length(flow_variables)
                    File = sprintf('POD_Mode_%1d.png',k);
                    f_outmode = fullfile(save_file,[condition,'_',File]);
                    figure(1)
                    set(gcf,'Color', [1 1 1], 'Visible','On');
                    pcolor(x,y,POD_modes(:,:,k,j))  % Pseudocolor: mode shape spatial structure
                    shading interp
                    axis equal tight
                    colormap(cmap)
                    set(gca,'layer','top')
                    set(gcf,'Position',[200,300,600,400])
                    title({sprintf('$\\phi^{%1d}_%s$',k,flow_variables{j})},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX'); 
                    if strcmp(flow_axis,'Major')
                    ylabel({'$y/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    else
                    ylabel({'$z/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    end
                    export_fig(f_outmode,'-m5');
                    savefig(strrep(f_outmode,'png','fig'))
                end
            end

            for k = 1:2:3
                for j = 1:length(flow_variables)
                    File = sprintf('POD_Mode_%1d%1d_abs.png',k,k+1);
                    f_outmode = fullfile(save_file,[condition,'_',File]);
                    figure(1)
                    set(gcf,'Color', [1 1 1], 'Visible','On');
                    pcolor(x,y,abs(POD_modes(:,:,k,j) + 1i.*POD_modes(:,:,k+1,j)))  % Pseudocolor: mode shape spatial structure
                    shading interp
                    axis equal tight
                    colormap(sCMRmap)
                    set(gca,'layer','top')
                    set(gcf,'Position',[200,300,600,400])
                    title({sprintf('$\\phi^{%1d}_%s$',k,flow_variables{j})},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX'); 
                    if strcmp(flow_axis,'Major')
                    ylabel({'$y/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    else
                    ylabel({'$z/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    end
                    export_fig(f_outmode,'-m5');
                    savefig(strrep(f_outmode,'png','fig'))
                end
            end

            pause(0.1);

            % =====================================================================
            % PLOT PHASE PORTRAITS FROM TEMPORAL COEFFICIENTS
            % =====================================================================
            % Generate 2D histogram projections of a_n(t) in pairs: a_i vs a_j
            % Shows temporal correlation structure and attractor geometry
            save_file = fullfile(save_folder,'Phase_Portraits');
            mkdir(save_file);
            for II = 1:2
                JJ = II + 1;
                File = sprintf('POD_Phase_Portrait_a%1d_a%1d.png',II,JJ);
                f_outmode = fullfile(save_file,[condition,'_',File]);
                X = [-2:0.20:2];
                Y = [-2:0.20:2];

                % Normalize by characteristic amplitude radius for comparison
                r=mean(sqrt(a_n(:,II).^2+a_n(:,JJ).^2));

                figure
                h = histogram2(a_n(:,II)/r,a_n(:,JJ)/r,X,Y);  % 2D histogram of mode amplitudes
                Z = [h.Values]';
                set(gcf,'Color', [1 1 1], 'Visible','On');
                X = [-2:4/(size(Z,1)-1):2];
                Y = [-2:4/(size(Z,1)-1):2];
                contourf(X,Y,Z,100,'Linestyle','None')  % Contour of probability density
                colormap(sCMRmap)
                set(gca,'layer','top')
                % histogram2(a_II, a_JJ) puts a_II on x and a_JJ on y (labels were swapped)
                ylabel({strcat(sprintf('$a_%1d',JJ),'/\langle r_m \rangle$')},'FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                xlabel({strcat(sprintf('$a_%1d',II),'/\langle r_m \rangle$')},'FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ytic=[-1 0 1];
                xtic=[-1 0 1];
                axis equal
                set(gca,'YTick',ytic)
                set(gca,'XTick',xtic)
                c = colorbar;
                export_fig(f_outmode,'-m5');
                savefig(strrep(f_outmode,'png','fig'))
                close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)

            end

            save_file = fullfile(save_folder,'Mode_Energy');
            mkdir(save_file);

            clearvars Cum_Energy
            for i = 1:length(Energy)
                Cum_Energy(i) = sum(Energy(1:i));
            end

            figure
            set(gcf,'Color', [1 1 1], 'Visible','On');
            set(gcf,'Position',[500,800,650,400])
            xlim([0,21])
            hold on
            [hAx,hLine1,hLine2] = plotyy(Mode(1:20),Energy(1:20),[1:20],Cum_Energy(1:20),'scatter','plot');
            % set(hAx(1),'YLim',[-2 2])
            set(hAx(2),'YLim',[0 hAx(2).YLim(2)])
            set(hAx(2),'YTick',[0:10:hAx(2).YLim(2)])
            hLine1.Marker = 'd';
            hLine1.MarkerFaceColor = [0.3 0.15 0.65];
            hLine1.MarkerEdgeColor = [0.3 0.15 0.65];
            hLine2.LineWidth = 2;
            ylabel(hAx(1),'$\mathrm{Specific~Energy~\%}$','FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX') % left y-axis
            ylabel(hAx(2),'$\mathrm{Cumulative~Specific~Energy~\%}$','FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX') % right y-axis
            set(hAx,{'ycolor'},{'k';'k'})
            xlabel('$\mathrm{Mode}$','FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX')
            box on
            % title(sprintf('Total Energy: %3.1e',(energy_total)));
            f_outmode = fullfile(save_file,[condition,'_POD_Mode_Energy.png']);
            export_fig(f_outmode,'-m5');
            savefig(strrep(f_outmode,'png','fig'))
            close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
        end
    end
end
