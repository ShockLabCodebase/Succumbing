function variable = get_symmetry(data,sym_type,flow_variables,y_zero,y_size,y_odd,z_zero,z_size,z_odd)
%%% Generates the symmetry component based on the input data, desired sym
%%% type, current flow variables. Uses the y and z components to reshape
%%% the output symmetry as needed. 

%%% NOTE that the mean is non-zero for both symmetric and antisymmetric,
%%% the latter is due to imperfect alignment of the symmetry line

%%% Equations are from Yeung et al. 2022, but they have switched y, z axes.
%%% sooooo had to fix that in the equations below. Mostly just swapped v and w.

%for schlieren data, the flow_variables should be empty ([]). This just
%makes it directly comparable like the other flow vars.
if isempty(flow_variables)
    flow_variables = "light"; %%% for schlieren
end

% Keep single input in single (the output was always double: 2x the memory)
if isa(data,'single')
    out_class = 'single';
else
    out_class = 'double';
end

y_pos = [y_zero+1-y_odd:y_zero+y_size-1*y_odd];
y_neg = [y_zero-y_size + 1:y_zero];
z_pos = [z_zero+1-z_odd:z_zero+z_size-1*z_odd];
z_neg = [z_zero-z_size+1:z_zero];


if ~isempty(z_zero)
    %pre-allocate var
    variable = zeros(y_size,z_size,size(data,3),size(data,4),out_class);

    %%% originally I was subtracting the symmetric mean before enforcing symmetry. 
    %%% That resulted in some ambiguity on the produced fields being
    %%% fluctuating and the antisymmetric component being non-zero
    %%% (common result of imperfect alignment). So now no mean subtraction
    %%% is done.
    if false
        %%% Get means first using SS component
        for i = 1:length(flow_variables)
            if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) + ... 
                    flip(data(y_pos,z_neg,i,:),2) + ... 
                    flip(flip(data(y_neg,z_neg,i,:),1),2) + ... 
                    flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(flow_variables(i),"v")
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) + ... 
                    flip(data(y_pos,z_neg,i,:),2) - ...
                    flip(flip(data(y_neg,z_neg,i,:),1),2) - ...
                    flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(flow_variables(i),"w")
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) - ...
                    flip(data(y_pos,z_neg,i,:),2) - ...
                    flip(flip(data(y_neg,z_neg,i,:),1),2) + ...
                    flip(data(y_neg,z_pos,i,:),1));
            end
        end
        
        %%% Subtract mean from data
        variable_mean = mean(variable,4);
        variable_mean = undo_symmetry_mean_only(variable_mean,["SS_"],flow_variables,y_odd,z_odd);
        data = bsxfun(@minus,data,variable_mean);
    end

    %%% For each flow variable, get the relevant symmetry value based on
    %%% flow variable type
    
    variable = zeros(y_size,z_size,size(data,3),size(data,4),out_class);

    for i = 1:length(flow_variables)

        if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
            if strcmp(sym_type,'SS_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) + ...
                        flip(data(y_pos,z_neg,i,:),2) + ...
                        flip(flip(data(y_neg,z_neg,i,:),1),2) + ...
                        flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(sym_type,'SA_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) + ...
                            flip(data(y_pos,z_neg,i,:),2) - ...
                            flip(flip(data(y_neg,z_neg,i,:),1),2) - ...
                            flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(sym_type,'AS_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) - ...
                            flip(data(y_pos,z_neg,i,:),2) - ...
                            flip(flip(data(y_neg,z_neg,i,:),1),2) + ...
                            flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(sym_type,'AA_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) - ...
                            flip(data(y_pos,z_neg,i,:),2) + ...
                            flip(flip(data(y_neg,z_neg,i,:),1),2) - ...
                            flip(data(y_neg,z_pos,i,:),1));
            end
        elseif strcmp(flow_variables(i),"v")
            if strcmp(sym_type,'SS_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) + ...
                        flip(data(y_pos,z_neg,i,:),2) - ...
                        flip(flip(data(y_neg,z_neg,i,:),1),2) - ...
                        flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(sym_type,'SA_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) + ...
                            flip(data(y_pos,z_neg,i,:),2) + ...
                            flip(flip(data(y_neg,z_neg,i,:),1),2) + ...
                            flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(sym_type,'AS_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) - ...
                            flip(data(y_pos,z_neg,i,:),2) + ...
                            flip(flip(data(y_neg,z_neg,i,:),1),2) - ...
                            flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(sym_type,'AA_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) - ...
                            flip(data(y_pos,z_neg,i,:),2) - ...
                            flip(flip(data(y_neg,z_neg,i,:),1),2) + ...
                            flip(data(y_neg,z_pos,i,:),1));
            end
        elseif strcmp(flow_variables(i),"w")
            if strcmp(sym_type,'SS_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) - ...
                        flip(data(y_pos,z_neg,i,:),2) - ...
                        flip(flip(data(y_neg,z_neg,i,:),1),2) + ...
                        flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(sym_type,'SA_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) - ...
                        flip(data(y_pos,z_neg,i,:),2) + ...
                        flip(flip(data(y_neg,z_neg,i,:),1),2) - ...
                        flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(sym_type,'AS_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) + ...
                        flip(data(y_pos,z_neg,i,:),2) + ...
                        flip(flip(data(y_neg,z_neg,i,:),1),2) + ...
                        flip(data(y_neg,z_pos,i,:),1));
            elseif strcmp(sym_type,'AA_')
                variable(:,:,i,:) = 1/4*(data(y_pos,z_pos,i,:) + ...
                        flip(data(y_pos,z_neg,i,:),2) - ...
                        flip(flip(data(y_neg,z_neg,i,:),1),2) - ...
                        flip(data(y_neg,z_pos,i,:),1));
            end
        end
    end
else

    %%% If z_zero is empty, then we must be doing a 2 region symmetry,
    %%% rather than the 4 region symmetry above

    %for schlieren data, the shape is usually 3D, so add an extra dimension
    %to make it the same as LES or other multivariable inputs
    if ndims(data) == 3
        dimension_add = true;
        data = reshape(data,size(data,1),size(data,2),1,size(data,3));
    else
        dimension_add = false;
    end
    
    %pre-allocate var
    variable = zeros(y_size,size(data,2),size(data,3),size(data,4),out_class);

    %%% originally I was subtracting the symmetric mean before enforcing symmetry. 
    %%% That resulted in some ambiguity on the produced fields being
    %%% fluctuating and the antisymmetric component being non-zero
    %%% (common result of imperfect alignment). So now no mean subtraction
    %%% is done.
    if false
        %%% Get means first using Symmetric component
        for i = 1:length(flow_variables)
            if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light")
                variable(:,:,i,:) = 1/2*(data(y_pos,:,i,:) + flip(data(y_neg,:,i,:),1));
            elseif strcmp(flow_variables(i),"v")
                variable(:,:,i,:) = 1/2*(data(y_pos,:,i,:) - flip(data(y_neg,:,i,:),1));
            elseif strcmp(flow_variables(i),"w")
                variable(:,:,i,:) = 1/2*(data(y_pos,:,i,:) + flip(data(y_neg,:,i,:),1));
            end
        end
        
        %%% Subtract mean from data
        variable_mean = mean(variable,4);
        variable_mean = undo_symmetry_mean_only(variable_mean,["symmetric_"],flow_variables,y_odd,z_odd);
        data = bsxfun(@minus,data,variable_mean);
    end

    %%% For each flow variable, get the relevant symmetry value based on
    %%% flow variable type

    variable = zeros(y_size,size(data,2),size(data,3),size(data,4),out_class);

    % PATCH 2026-10-23: done in chunks of snapshots (the whole-array version
    % made two half-size temporary copies: out of memory on 10k-frame fields),
    % and in out_class (int16 input was added and halved in int16, which
    % saturates and rounds).
    for i = 1:length(flow_variables)

        if strcmp(flow_variables(i),"u") || strcmp(flow_variables(i),"pressure") || strcmp(flow_variables(i),"temperature") || strcmp(flow_variables(i),"light") || strcmp(flow_variables(i),"w")
            s = 1;   % symmetric: +, antisymmetric: -
        elseif strcmp(flow_variables(i),"v")
            s = -1;  % v changes sign under the reflection
        else
            continue
        end
        if strcmp(sym_type,'antisymmetric_')
            s = -s;
        elseif ~strcmp(sym_type,'symmetric_')
            continue
        end
        chunk = 500;
        for t1 = 1:chunk:size(data,4)
            tt = t1:min(size(data,4),t1+chunk-1);
            variable(:,:,i,tt) = 1/2*(cast(data(y_pos,:,i,tt),out_class) + s*cast(flip(data(y_neg,:,i,tt),1),out_class));
        end
    end

    % if the dimension was added above (for schlieren data), then squeeze
    % var to output the same form as the input data
    if dimension_add
        variable = squeeze(variable);
    end
end


