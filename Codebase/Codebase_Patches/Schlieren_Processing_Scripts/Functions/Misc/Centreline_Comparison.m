%%% Compare the centreline intensity between various cases, or same case
%%% for twin jets.

clear all; close all;

addpath .\export_fig export_fig
addpath .\SPOD SPOD

parent_folders = ["J:\ONR_Rectangular_Nozzle\Schlieren\Nozzle_Characterisation_Combustion_Lab\Major\Twin_Jet_A_B";
                  "O:\High_Speed_Schlieren\ONR_Rectangular_Metal_vs_Resin\Angled\Twin_Metal_AB";
                  "O:\High_Speed_Schlieren\ONR_Rectangular_Metal_vs_Resin\Angled\Twin_Resin_BC";
                  "O:\High_Speed_Schlieren\ONR_Twin_7592mm\Angled\Thin"];

twin_jets = true;

D_eff_1 = 8.676;
fps_1 = 150e3;
n_snapshots = 50e3;

for m = 2%:length(parent_folders)

    parent_folder = parent_folders(m);
    snapshot_dir = fullfile(parent_folder,'Data');
    suffix = '*Fields.mat';
    case_list = dir(fullfile(snapshot_dir,suffix));

    case_list = extractfield(case_list, 'name'); 

    for k = 1:length(case_list)   
        nozzle_list{k} = extractBefore(case_list{k},'_NPR');
        NPR_temp = extractBetween(case_list{k},'_NPR_','_Fields');
        NPR_factor = length(num2str(str2num(NPR_temp{1})));
        NPR(k) = str2double(NPR_temp{1});
    end

    for ii = 1:length(case_list)%[3,4,5,8,9,10]%
        clearvars im_data
        %Load in files
        filename = case_list{ii};
        full_filename = fullfile(snapshot_dir,filename);
        file = matfile(full_filename);
        
        x = file.x;
        y = file.y;

        var_info = who('-file',full_filename);
        if ismember('fps',var_info)
            fps = file.fps;
        else
            fps = fps_1;
        end
        if ismember('D',var_info)
            D_eff = file.D;
        else
            D_eff = D_eff_1;
        end
        
        if ismember('im_mean',var_info)
            im_mean = file.im_mean;
        else
            im_data = file.im_data(:,:,1:n_snapshots);
            im_mean = mean(im_data,3);
        end

        if twin_jets

            ii

            do_rotation = true;
            auto_position = "transverse";
            % PATCH 2026-10-23: current align_fields signature (background and nozzle_centre
            % inputs); the old call put auto_position into do_rotation and errored
            [x,y,rotation_angle,im_mean,~] = align_fields(x,y,im_mean,[],zeros(size(im_mean),'int16'),do_rotation,auto_position,0);
            
%             figure
%             pcolor(im_mean)
%             shading interp
%             axis equal

            %%% Split jet
            Section_1 = im_mean(1:floor((size(im_mean,1)+1)/2)-1,:);
            Section_2 = im_mean(ceil((size(im_mean,1)+1)/2)+1:end,:);

            shift_y = size(Section_1,1);
            
            %%% Correlate Section 1
            correlate_val = xcorr2(Section_1,flipud(Section_1));

            [~,y_max_ind] = max(correlate_val(:,size(im_mean,2)));
            y_max_vals = correlate_val(y_max_ind-1:y_max_ind+1,size(im_mean,2));

            [xData, yData] = prepareCurveData( [], y_max_vals );

            % Fit to peak
            ft = fittype( 'poly2' );
            [fitresult, ~] = fit( xData, yData, ft );

            y_fit = -fitresult.p2/(2*fitresult.p1)-2+y_max_ind+1;
            y1_ind = y_fit/2; %%% The peak value/2 as the window effectively shifts twice the distance

            %%% Correlate Section 2
            correlate_val = xcorr2(Section_2,flipud(Section_2));
            
            [~,y_max_ind] = max(correlate_val(:,size(im_mean,2)));
            y_max_vals = correlate_val(y_max_ind-1:y_max_ind+1,size(im_mean,2));

            [xData, yData] = prepareCurveData( [], y_max_vals );

            ft = fittype( 'poly2' );
            [fitresult, gof] = fit( xData, yData, ft );

            y_fit = -fitresult.p2/(2*fitresult.p1)-2+y_max_ind+1;
            y2_ind = shift_y + 1 + y_fit/2;%%% The peak value/2 as the window effectively shifts twice the distance

            %%% Now plot the lines. Weighted by the subpixel
            line_1 = im_mean(floor(y1_ind),:)*(1-(y1_ind-floor(y1_ind))) + im_mean(ceil(y1_ind),:)*(1-(ceil(y1_ind)-y1_ind));
            line_2 = im_mean(floor(y2_ind),:)*(1-(y2_ind-floor(y2_ind))) + im_mean(ceil(y2_ind),:)*(1-(ceil(y2_ind)-y2_ind));

            line_corr_temp = corrcoef(line_1,line_2);
            line_corr(ii) = line_corr_temp(1,2);

%             plot(line_1)
%             hold on
%             plot(line_2)

            figure(ii)
            plot(x(1,:),line_1)
            hold on
            plot(x(1,:),line_2)
            set(gcf,'Color',[1,1,1])
            xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
            ylabel('$I$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');


        end


            
    end

    figure
    plot(line_corr)

end
            

return

