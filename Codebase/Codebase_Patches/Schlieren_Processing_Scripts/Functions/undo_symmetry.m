function data_unsym = undo_symmetry(data,sym_type,flow_variables,y_odd,z_odd)

%for schlieren data, the flow_variables should be empty ([]). This just
%makes it directly comparable like the other flow vars.
if isempty(flow_variables)
    flow_variables = "light"; %%% for schlieren
end

%%% To make the data matrix dimensions consistent across schlieren, PIV, LES
%%% (2D and 3D), this will hopefully cover it...
data_size = ndims(data);
data_size_vals = size(data);

pod_data = false;

if data_size < 6
    if data_size < 5
        if data_size < 4
            data = reshape(data,[data_size_vals(1:2),1,1,1,data_size_vals(end)]);
            pod_data = true;
        else
            data = reshape(data,[data_size_vals(1:3),1,1,data_size_vals(end)]);
        end
    else
        data = reshape(data,[data_size_vals(1:3),1,data_size(4:end)]);
    end
end

data_size = ndims(data);
if pod_data
    data = permute(data,[data_size,1,2,3,4,5]);
else
    data_var_index = data_size + 1;
end

data_size_vals = size(data);
if length(data_size_vals) < data_size
    data_size_vals = padarray(data_size_vals,[0,3],1,'post');
end
data_var_index = data_size - 1; %% move the variable index number from 4 to 5 if the data is 3D


if ~contains(sym_type,'symmetric_')

    data_unsym = zeros([size(data,1),size(data,2)*2-y_odd,size(data,3)*2-z_odd,data_size_vals(4:data_size)],'like',data);  % PATCH 2026-10-23: input class (was double, 2x memory for single data) %% St, y, x (z), vars (x), 1 (vars), modes

    data_inds = repmat({':'},data_size,1);

    for i = 1:length(flow_variables)
        data_inds{data_var_index} = i;
        if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
            if strcmp(sym_type,'SS_')
                var = cat(2,flip(data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(var(:,:,1+z_odd:end,:,1,:),3),var);
            elseif strcmp(sym_type,'SA_')
                var = cat(2,flip(-data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(var(:,:,1+z_odd:end,:,1,:),3),var);
            elseif strcmp(sym_type,'AS_')
                var = cat(2,flip(data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(-var(:,:,1+z_odd:end,:,1,:),3),var);
            elseif strcmp(sym_type,'AA_')
                var = cat(2,flip(-data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(-var(:,:,1+z_odd:end,:,1,:),3),var);
            end

            data_unsym(data_inds{:}) = var;

        elseif strcmp(flow_variables(i),"v")
            if strcmp(sym_type,'SS_')
                var = cat(2,flip(-data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(var(:,:,1+z_odd:end,:,1,:),3),var);
            elseif strcmp(sym_type,'SA_')
                var = cat(2,flip(data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(var(:,:,1+z_odd:end,:,1,:),3),var);
            elseif strcmp(sym_type,'AS_')
                var = cat(2,flip(-data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(-var(:,:,1+z_odd:end,:,1,:),3),var);
            elseif strcmp(sym_type,'AA_')
                var = cat(2,flip(data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(-var(:,:,1+z_odd:end,:,1,:),3),var);
            end

            data_unsym(data_inds{:}) = var;

        elseif strcmp(flow_variables(i),"w")
            if strcmp(sym_type,'SS_')
                var = cat(2,flip(data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(-var(:,:,1+z_odd:end,:,1,:),3),var);
            elseif strcmp(sym_type,'SA_')
                var = cat(2,flip(-data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(-var(:,:,1+z_odd:end,:,1,:),3),var);
            elseif strcmp(sym_type,'AS_')
                var = cat(2,flip(data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(var(:,:,1+z_odd:end,:,1,:),3),var);
            elseif strcmp(sym_type,'AA_')
                var = cat(2,flip(-data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
                var = cat(3,flip(var(:,:,1+z_odd:end,:,1,:),3),var);
            end

            data_unsym(data_inds{:}) = var;

        end
    end

else
    data_unsym = zeros([size(data,1),size(data,2)*2-y_odd,size(data,3),data_size_vals(4:data_size)],'like',data);  % PATCH 2026-10-23: input class (was double, 2x memory for single data) %% St, y, x (z), vars (x), 1 (vars), modes

    data_inds = repmat({':'},data_size,1);

    for i = 1:length(flow_variables)
        data_inds{data_var_index} = i;
        if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
            if strcmp(sym_type,'symmetric_')
                var = cat(2,flip(data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
            elseif strcmp(sym_type,'antisymmetric_')
                var = cat(2,flip(-data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
            end

            data_unsym(data_inds{:}) = var;

        elseif strcmp(flow_variables(i),"v")
            if strcmp(sym_type,'symmetric_')
                var = cat(2,flip(-data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
            elseif strcmp(sym_type,'antisymmetric_')
                var = cat(2,flip(data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
            end

            data_unsym(data_inds{:}) = var;

        elseif strcmp(flow_variables(i),"w")
            if strcmp(sym_type,'symmetric_')
                var = cat(2,flip(data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
            elseif strcmp(sym_type,'antisymmetric_')
                var = cat(2,flip(-data(:,1+y_odd:end,:,:,i,:),2),data(:,:,:,:,i,:));
            end

            data_unsym(data_inds{:}) = var;

        end
    end
end

if pod_data
    data_unsym = permute(data_unsym,[2,3,1]);
end

data_unsym = squeeze(data_unsym); %%%%%% XXXXXXXXX