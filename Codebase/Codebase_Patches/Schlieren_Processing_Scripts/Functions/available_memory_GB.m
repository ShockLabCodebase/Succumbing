function [total_GB, info] = available_memory_GB()
%%% Memory this MATLAB process can reach in total (GB): what it already uses
%%% plus what is still free, capped by any job or container limit. Used by
%%% spod for opts.max_memory_GB = "auto" (and by SPOD_Analysis' max_memory_GB).
%%%
%%% Linux (MASSIVE, SLURM): the smallest of
%%%   - this process' resident memory + MemAvailable (/proc),
%%%   - the job allocation (SLURM_MEM_PER_NODE, or SLURM_MEM_PER_CPU x
%%%     SLURM_CPUS_ON_NODE),
%%%   - the memory cgroup limit of this process and its parent cgroups
%%%     (cgroup v1 or v2; this is what SLURM enforces).
%%% Windows: MATLAB's own use + available physical memory (memory()).
%%% Elsewhere, or if nothing can be read: NaN.
%%%
%%% info: struct with each value found (GB) and the one used (info.source).
%%%
%%% New 2026-10-24 (patched toolbox).

info = struct('rss',NaN,'free',NaN,'slurm',NaN,'cgroup',NaN,'source',"none");
total_GB = NaN;

if ispc
    try
        [u,s] = memory;
        info.rss = u.MemUsedMATLAB/1e9;
        info.free = s.PhysicalMemory.Available/1e9;
        total_GB = info.rss + info.free;
        info.source = "MATLAB use + free physical memory";
    catch
    end
    return
end

if ~isfile('/proc/meminfo')
    return   % not Linux (e.g. macOS): no reliable figure
end

%%% Resident memory of this process and memory still available on the node
info.rss = proc_value('/proc/self/status','VmRSS')/1e6;      % kB -> GB
info.free = proc_value('/proc/meminfo','MemAvailable')/1e6;
candidates = struct('value',info.rss + info.free,'source',"MATLAB use + MemAvailable");

%%% SLURM allocation (MB)
mem_node = str2double(getenv('SLURM_MEM_PER_NODE'));
mem_cpu = str2double(getenv('SLURM_MEM_PER_CPU'));
n_cpu = str2double(getenv('SLURM_CPUS_ON_NODE'));
if ~isnan(mem_node)
    info.slurm = mem_node*2^20/1e9;
elseif ~isnan(mem_cpu) && ~isnan(n_cpu)
    info.slurm = mem_cpu*n_cpu*2^20/1e9;
end
if ~isnan(info.slurm)
    candidates(end+1) = struct('value',info.slurm,'source',"SLURM allocation");
end

%%% Memory cgroup limit (bytes), smallest over this cgroup and its parents
info.cgroup = cgroup_limit()/1e9;
if ~isnan(info.cgroup)
    candidates(end+1) = struct('value',info.cgroup,'source',"cgroup limit");
end

[total_GB, k] = min([candidates.value]);
info.source = candidates(k).source;
end


function v = proc_value(file, key)
%%% Value (first number) of "key:" in a /proc file; NaN if missing
v = NaN;
try
    txt = fileread(file);
    tok = regexp(txt, ['(?m)^' key ':\s*(\d+)'], 'tokens', 'once');
    if ~isempty(tok); v = str2double(tok{1}); end
catch
end
end


function b = cgroup_limit()
%%% Smallest memory limit (bytes) on the path of this process' memory cgroup;
%%% NaN if unlimited or unreadable
b = NaN;
try
    lines = splitlines(strtrim(fileread('/proc/self/cgroup')));
catch
    return
end
for i = 1:numel(lines)
    parts = split(lines{i}, ':');
    if numel(parts) < 3; continue; end
    path = strjoin(parts(3:end), ':');
    if parts{1} == "0" && isempty(parts{2})              % cgroup v2
        root = '/sys/fs/cgroup'; file = 'memory.max';
    elseif any(strcmp(split(parts{2}, ','), 'memory'))   % cgroup v1
        root = '/sys/fs/cgroup/memory'; file = 'memory.limit_in_bytes';
    else
        continue
    end
    while true
        f = fullfile(root, path, file);
        if isfile(f)
            s = strtrim(fileread(f));
            v = str2double(s);
            if ~isnan(v) && v < 2^60                         % "max" or ~2^63 = unlimited
                b = min([b, v], [], 'omitnan');
            end
        end
        if isempty(path) || strcmp(path, '/'); break; end
        path = fileparts(path);
    end
end
end
