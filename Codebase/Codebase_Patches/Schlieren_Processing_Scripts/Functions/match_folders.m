function folders = match_folders(parent, pattern)
%%% Sub-folders of parent whose names match pattern (wildcards * and ?;
%%% a string array matches any of its patterns), as a dir() struct array.
%%%
%%% Added 2026-10-23 (Codebase_Patches). dir(fullfile(parent, pattern)) with
%%% an exact folder name (no wildcard) lists that folder's contents (., ..,
%%% Data, SPOD_Results, ...), so the scripts looped over those as if they
%%% were cases. Here an exact name matches the folder itself, and . and ..
%%% are never returned. Matching ignores case on Windows, like dir.

d = dir(parent);
d = d([d.isdir]);
d = d(~ismember({d.name},{'.','..'}));
names = {d.name};
keep = false(1,numel(d));
for p = reshape(string(pattern),1,[])
    rx = ['^' regexptranslate('wildcard', char(p)) '$'];
    if ispc
        hit = regexpi(names, rx, 'once');
    else
        hit = regexp(names, rx, 'once');
    end
    keep = keep | ~cellfun(@isempty, hit);
end
folders = d(keep);
if isempty(folders)
    warning("match_folders: no folder in %s matches %s", parent, strjoin(string(pattern), ", "));
end
end
