%%% Get a few parameters from the filename of the data file
%%%
%%% PATCH 2026-10-23:
%%% - param_factor was the digit count of the LAST file only, so a folder
%%%   mixing e.g. _Mj_080 and _Mj_0834 decoded every other case wrongly.
%%%   Codes are now rescaled to the largest digit count (080 -> 0800), so
%%%   param(j)/10^(param_factor-1) is right for every case. A warning is
%%%   printed when this happens, since rebuilt filenames then use the longer
%%%   code.
%%% - nozzle_list for Mach cases was cut at the first '_M', which can be
%%%   '_Major' or '_Minor'. It is now cut at the matched _M_/_Mj_/_Ma_ token.
%%% - The token may also end the name (no trailing '_').
%%% - A file without the token gives a clear error.
function [nozzle_list, param, param_factor] = get_filename_params(using_npr, case_list)
    case_list = cellstr(case_list);
    n = length(case_list);
    nozzle_list = cell(1,n);
    param = zeros(1,n);
    factors = zeros(1,n);
    if using_npr
        tokens = {'_NPR_'};
    else
        tokens = {'_M_','_Mj_','_Ma_'};
    end
    for j = 1:n
        name = case_list{j};
        value = '';
        for t = 1:length(tokens)
            value = regexp(name,[tokens{t},'(\d+)(_|\.|$)'],'tokens','once');
            if ~isempty(value)
                nozzle_list{j} = extractBefore(name,tokens{t});
                value = value{1};
                break
            end
        end
        if isempty(value)
            error("get_filename_params: no %s token followed by digits in '%s'.",strjoin(tokens,'/'),name);
        end
        if using_npr
            factors(j) = length(num2str(str2double(value))); % leading zeros dropped
        else
            factors(j) = length(value);
        end
        param(j) = str2double(value);
    end
    if n == 0
        param_factor = 1;
        return
    end
    param_factor = max(factors);
    if any(factors ~= param_factor)
        warning("get_filename_params: the cases use different digit counts for the %s code. They are rescaled to %d digits (e.g. %s).", ...
            strjoin(tokens,'/'),param_factor,case_list{find(factors ~= param_factor,1)});
        param = param.*10.^(param_factor - factors);
    end
end
