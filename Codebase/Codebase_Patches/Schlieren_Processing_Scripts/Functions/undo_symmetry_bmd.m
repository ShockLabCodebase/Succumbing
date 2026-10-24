function P_unsym = undo_symmetry_bmd(P,sym_type,flow_variables,y_odd,z_odd)
%%%% Modified for bmd symmetry imposed P variable. Size is 6D for 2D LES
%%%% and 7 for 3D.
%for schlieren data, the flow_variables should be empty ([]). This just
%makes it directly comparable like the other flow vars.
if isempty(flow_variables)
    flow_variables = ["light"]; %%% for schlieren
end

%%% To make the P matrix dimensions consistent across schlieren, PIV, LES
%%% (2D and 3D), this will hopefully cover it...
P_size = ndims(P);
P_size_vals = size(P);

if P_size < 6
    if P_size < 5
        P = reshape(P,[P_size_vals(1:4),1,1]);
    else
        P = reshape(P,[P_size_vals(1:4),1,P_size_vals(5:end)]);
    end
end

P_size = ndims(P);
P_size_vals = size(P);

P_var_index = 6; %% move the variable index number from 4 to 5 if the data is 3D

if ~contains(sym_type,'symmetric_')

    P_unsym = zeros([size(P,1),size(P,2),size(P,3)*2-y_odd,P_size_vals(4)*2-z_odd,P_size_vals(5:P_size)],'like',P);  % PATCH 2026-10-23: input class (was double, 2x memory for single data) %% St, Triads, y, z, x, vars, modes

    P_inds = repmat({':'},P_size,1);

    for i = 1:length(flow_variables)
        P_inds{P_var_index} = i;
        if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
            if strcmp(sym_type,'SS_')
                var = cat(3,flip(P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(var(:,:,:,1+z_odd:end,:,1),4),var);
            elseif strcmp(sym_type,'SA_')
                var = cat(3,flip(-P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(var(:,:,:,1+z_odd:end,:,1),4),var);
            elseif strcmp(sym_type,'AS_')
                var = cat(3,flip(P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(-var(:,:,:,1+z_odd:end,:,1),4),var);
            elseif strcmp(sym_type,'AA_')
                var = cat(3,flip(-P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(-var(:,:,:,1+z_odd:end,:,1),4),var);
            end

            P_unsym(P_inds{:}) = var;

        elseif strcmp(flow_variables(i),"v")
            if strcmp(sym_type,'SS_')
                var = cat(3,flip(-P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(var(:,:,:,1+z_odd:end,:,1),4),var);
            elseif strcmp(sym_type,'SA_')
                var = cat(3,flip(P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(var(:,:,:,1+z_odd:end,:,1),4),var);
            elseif strcmp(sym_type,'AS_')
                var = cat(3,flip(-P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(-var(:,:,:,1+z_odd:end,:,1),4),var);
            elseif strcmp(sym_type,'AA_')
                var = cat(3,flip(P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(-var(:,:,:,1+z_odd:end,:,1),4),var);
            end

            P_unsym(P_inds{:}) = var;

        elseif strcmp(flow_variables(i),"w")
            if strcmp(sym_type,'SS_')
                var = cat(3,flip(P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(-var(:,:,:,1+z_odd:end,:,1),4),var);
            elseif strcmp(sym_type,'SA_')
                var = cat(3,flip(-P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(-var(:,:,:,1+z_odd:end,:,1),4),var);
            elseif strcmp(sym_type,'AS_')
                var = cat(3,flip(P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(var(:,:,:,1+z_odd:end,:,1),4),var);
            elseif strcmp(sym_type,'AA_')
                var = cat(3,flip(-P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
                var = cat(4,flip(var(:,:,:,1+z_odd:end,:,1),4),var);
            end

            P_unsym(P_inds{:}) = var;

        end
    end

else
    P_unsym = zeros([size(P,1),size(P,2),size(P,3)*2-y_odd,P_size_vals(4:P_size)],'like',P);  % PATCH 2026-10-23: input class (was double, 2x memory for single data) %% St, y, x (z), vars (x), 1 (vars), modes

    P_inds = repmat({':'},P_var_index,1);

    for i = 1:length(flow_variables)
        P_inds{P_var_index} = i;
        if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
            if strcmp(sym_type,'symmetric_')
                var = cat(3,flip(P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
            elseif strcmp(sym_type,'antisymmetric_')
                var = cat(3,flip(-P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
            end

            P_unsym(P_inds{:}) = var;

        elseif strcmp(flow_variables(i),"v")
            if strcmp(sym_type,'symmetric_')
                var = cat(3,flip(-P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
            elseif strcmp(sym_type,'antisymmetric_')
                var = cat(3,flip(P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
            end

            P_unsym(P_inds{:}) = var;

        elseif strcmp(flow_variables(i),"w")
            if strcmp(sym_type,'symmetric_')
                var = cat(3,flip(P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
            elseif strcmp(sym_type,'antisymmetric_')
                var = cat(3,flip(-P(:,:,1+y_odd:end,:,:,i),3),P(:,:,:,:,:,i));
            end

            P_unsym(P_inds{:}) = var;

        end
    end
end

P_unsym = squeeze(P_unsym);