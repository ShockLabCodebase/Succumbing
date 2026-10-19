%% Uncompress_SPOD_Files.m
% Re-save compressed SPOD result files (-v7.3 with gzip) as uncompressed
% -v7.3, which is what SPOD_Analysis.m writes ('-nocompression').
%
% Why: when a -v7.3 file is compressed, MATLAB chunks P [freq, y, x, mode]
% with every frequency in each chunk, so reading one frequency (SPODViewer,
% matfile) means decompressing the whole of P. Uncompressed files can be
% read one frequency at a time.
%
% Every .mat file in parent_folder whose P is compressed is loaded whole,
% saved to a temporary file, checked against the original and then moved
% over it. Files that are already uncompressed, are not -v7.3, or have no
% P are skipped. Loading needs RAM of about the uncompressed size of the
% file (P alone is n_freq*ny*nx*n_modes*8 bytes, e.g. 6.3 GB for
% 257 x 480 x 640 x 10), and the disk needs room for one extra copy.

clear; clc;

%% User inputs
parent_folder = 'J:\Succumbing\Test_Data\Schlieren\SPOD_Results\Data';
recursive     = false;   % true: also search subfolders
keep_original = false;   % true: keep the original as <name>_compressed.mat

%% Find files
if recursive
    files = dir(fullfile(parent_folder, '**', '*.mat'));
else
    files = dir(fullfile(parent_folder, '*.mat'));
end
files = files(~endsWith({files.name}, {'_uncompressing.mat', '_compressed.mat'}));
fprintf('%d .mat files in %s\n\n', numel(files), parent_folder);

n_done = 0; n_skip = 0; n_fail = 0;
for ii = 1:numel(files)
    file = fullfile(files(ii).folder, files(ii).name);
    fprintf('[%d/%d] %s\n', ii, numel(files), files(ii).name);

    [compressed, why] = is_compressed_spod(file);
    if ~compressed
        fprintf('    skipped: %s\n', why);
        n_skip = n_skip + 1;
        continue
    end

    [~, stem] = fileparts(file);
    tmp_file = fullfile(files(ii).folder, [stem '_uncompressing.mat']);
    try
        t0 = tic;
        S = load(file);
        fprintf('    loaded %.1f GB in %.0f s\n', whos_bytes(S) / 2^30, toc(t0));
        save(tmp_file, '-struct', 'S', '-v7.3', '-nocompression');
        clear S

        check_same_variables(file, tmp_file);
        [still, ~] = is_compressed_spod(tmp_file);
        if still
            error('P is still compressed in the new file.');
        end

        if keep_original
            movefile(file, fullfile(files(ii).folder, [stem '_compressed.mat']));
        end
        movefile(tmp_file, file, 'f');
        d_new = dir(file);
        fprintf('    done in %.0f s: %.2f GB -> %.2f GB\n', toc(t0), ...
            files(ii).bytes / 2^30, d_new.bytes / 2^30);
        n_done = n_done + 1;
    catch err
        clear S
        if isfile(tmp_file)
            delete(tmp_file);
        end
        fprintf(2, '    FAILED: %s (original left unchanged)\n', err.message);
        n_fail = n_fail + 1;
    end
end
fprintf('\nConverted %d, skipped %d, failed %d.\n', n_done, n_skip, n_fail);

%% Local functions
function [tf, why] = is_compressed_spod(file)
% True if file is -v7.3 (HDF5) and P is compressed. '-nocompression' still
% writes a deflate filter, at level 0, so only a level above 0 counts.
tf = false;
try
    info = h5info(file, '/P');
catch
    why = 'not a -v7.3 file, or no P';
    return
end
for k = 1:numel(info.Filters)
    flt = info.Filters(k);
    if (strcmp(flt.Name, 'deflate') && any(flt.Data > 0)) ...
            || ~any(strcmp(flt.Name, {'deflate', 'shuffle', 'fletcher32'}))
        tf = true;
        why = '';
        return
    end
end
why = 'P already uncompressed';
end

function check_same_variables(file_a, file_b)
% Error unless both files hold the same variables with the same sizes and classes.
a = whos('-file', file_a);
b = whos('-file', file_b);
[~, ia] = sort({a.name});
[~, ib] = sort({b.name});
a = a(ia); b = b(ib);
if ~isequal({a.name}, {b.name})
    error('Variable names differ after saving.');
end
for k = 1:numel(a)
    if ~isequal(a(k).size, b(k).size) || ~strcmp(a(k).class, b(k).class) ...
            || a(k).complex ~= b(k).complex
        error('Variable %s differs after saving.', a(k).name);
    end
end
end

function n = whos_bytes(S)
w = whos('S');
n = w.bytes;
end
