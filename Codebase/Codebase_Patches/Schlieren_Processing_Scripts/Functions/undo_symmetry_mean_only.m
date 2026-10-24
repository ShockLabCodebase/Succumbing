function data_unsym = undo_symmetry_mean_only(data,sym_type,flow_variables,y_odd,z_odd)

%for schlieren data, the flow_variables should be empty ([]). This just
%makes it directly comparable like the other flow vars.
if isempty(flow_variables)
    flow_variables = "light"; %%% for schlieren
end

%%% To make the P matrix dimensions consistent across schlieren, PIV, LES
%%% (2D and 3D), this will hopefully cover it...
data_size = ndims(data);
data_size_vals = size(data);

data_var_index = data_size;

if ~contains(sym_type,'symmetric_')
    if data_size_vals(3) > 5 || data_size == 4
    
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        data_unsym = zeros([size(data,1)*2-y_odd,size(data,2)*2-z_odd,data_size_vals(3:data_size)],'like',data);  % PATCH 2026-10-23: input class (was double, 2x memory for single data) %% y, z, x, vars
    
        data_inds = repmat({':'},4,1);
    
        for i = 1:length(flow_variables)
            data_inds{4} = i;
            if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
                variable = cat(1,flip(data(1+y_odd:end,:,:,i),1),data(:,:,:,i));
                variable = cat(2,flip(variable(:,1+z_odd:end,:),2),variable);
    
                data_unsym(data_inds{:}) = variable;
    
            elseif strcmp(flow_variables(i),"v")
                variable = cat(1,flip(-data(1+y_odd:end,:,:,i),1),data(:,:,:,i));
                variable = cat(2,flip(variable(:,1+z_odd:end,:),2),variable);
    
                data_unsym(data_inds{:}) = variable;
    
            elseif strcmp(flow_variables(i),"w")
                variable = cat(1,flip(data(1+y_odd:end,:,:,i),1),data(:,:,:,i));
                variable = cat(2,flip(-variable(:,1+z_odd:end,:),2),variable);
                
                data_unsym(data_inds{:}) = variable;
    
            end
        end
    
    else
    
        data_unsym = zeros([size(data,1)*2-y_odd,size(data,2)*2-z_odd,data_size_vals(3)],'like',data);  % PATCH 2026-10-23: input class (was double, 2x memory for single data) %% y, z, vars
    
        data_inds = repmat({':'},data_size,1);
    
        for i = 1:length(flow_variables)
            data_inds{data_var_index} = i;
            if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
                variable = cat(1,flip(data(1+y_odd:end,:,i),1),data(:,:,i));
                variable = cat(2,flip(variable(:,1+z_odd:end),2),variable);
    
                data_unsym(data_inds{:}) = variable;
    
            elseif strcmp(flow_variables(i),"v")
                variable = cat(1,flip(-data(1+y_odd:end,:,i),1),data(:,:,i));
                variable = cat(2,flip(variable(:,1+z_odd:end),2),variable);
    
                data_unsym(data_inds{:}) = variable;
    
            elseif strcmp(flow_variables(i),"w")
                variable = cat(1,flip(data(1+y_odd:end,:,i),1),data(:,:,i));
                variable = cat(2,flip(-variable(:,1+z_odd:end),2),variable);
                
                data_unsym(data_inds{:}) = variable;
    
            end
        end
    end
else
    if data_size_vals(data_size) > 5 || data_size == 4

        data_unsym = zeros([size(data,1)*2-y_odd,data_size_vals(2:data_size)],'like',data);  % PATCH 2026-10-23: input class (was double, 2x memory for single data) %% y, z, x, vars
    
        data_inds = repmat({':'},4,1);
    
        for i = 1:length(flow_variables)
            data_inds{4} = i;
            if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
                if strcmp(sym_type,'symmetric_')
                    variable = cat(1,flip(data(1+y_odd:end,:,:,i),1),data(:,:,:,i));
                elseif strcmp(sym_type,'antisymmetric_')
                    variable = cat(1,flip(-data(1+y_odd:end,:,:,i),1),data(:,:,:,i));
                end
    
                data_unsym(data_inds{:}) = variable;
    
            elseif strcmp(flow_variables(i),"v")
                if strcmp(sym_type,'symmetric_')
                    variable = cat(1,flip(-data(1+y_odd:end,:,:,i),1),data(:,:,:,i));
                elseif strcmp(sym_type,'antisymmetric_')
                    variable = cat(1,flip(data(1+y_odd:end,:,:,i),1),data(:,:,:,i));
                end
    
                data_unsym(data_inds{:}) = variable;
    
            elseif strcmp(flow_variables(i),"w")
                if strcmp(sym_type,'symmetric_')
                    variable = cat(1,flip(data(1+y_odd:end,:,:,i),1),data(:,:,:,i));
                elseif strcmp(sym_type,'antisymmetric_')
                    variable = cat(1,flip(-data(1+y_odd:end,:,:,i),1),data(:,:,:,i));
                end
    
                data_unsym(data_inds{:}) = variable;
    
            end
        end
    
    else
    
        data_unsym = zeros([size(data,1)*2-y_odd,data_size_vals(2:3)],'like',data);  % PATCH 2026-10-23: input class (was double, 2x memory for single data) %% y, z, vars
    
        data_inds = repmat({':'},data_size,1);
    
        for i = 1:length(flow_variables)
            data_inds{data_var_index} = i;
            if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
                if strcmp(sym_type,'symmetric_')
                    variable = cat(1,flip(data(:,:,i),1),data(1+y_odd:end,:,i));
                elseif strcmp(sym_type,'antisymmetric_')
                    variable = cat(1,flip(-data(:,:,i),1),data(1+y_odd:end,:,i));
                end
    
                data_unsym(data_inds{:}) = variable;
    
            elseif strcmp(flow_variables(i),"v")
                if strcmp(sym_type,'symmetric_')
                    variable = cat(1,flip(-data(:,:,i),1),data(1+y_odd:end,:,i));
                elseif strcmp(sym_type,'antisymmetric_')
                    variable = cat(1,flip(data(:,:,i),1),data(1+y_odd:end,:,i));
                end
    
                data_unsym(data_inds{:}) = variable;
    
            elseif strcmp(flow_variables(i),"w")
                if strcmp(sym_type,'symmetric_')
                    variable = cat(1,flip(data(:,:,i),1),data(1+y_odd:end,:,i));
                elseif strcmp(sym_type,'antisymmetric_')
                    variable = cat(1,flip(-data(:,:,i),1),data(1+y_odd:end,:,i));
                end
    
                data_unsym(data_inds{:}) = variable;
    
            end
        end
    end
end