#!/usr/bin/env bash
# List the large items under a directory, as CSV, for Linux (e.g. MASSIVE M3);
# needs GNU find and awk. An item is either
#   - a file of at least min_size, or
#   - a folder whose remaining smaller files add up to at least min_size,
#     listed at the deepest level where they reach it (files and subfolders
#     already listed are not counted again).
# Nothing smaller is written. Columns: kind (file/folder), size_bytes, files,
# last_access, last_modified (the latest over the item's files), owner (for a
# folder, whoever owns most of its bytes), path.
# Feed the CSV to summarise_file_list.py to find data that is no longer used.
#
# Usage: ./file_list.sh [dir] [out.csv] [min_size]
#   dir       directory to scan (default: current directory)
#   out.csv   output file (default: file_list.csv; use - for stdout)
#   min_size  smallest item to list, e.g. 500M, 1G, 2T (default 1G; 0 lists every file)

set -euo pipefail

dir="${1:-.}"
[[ "$dir" != "/" ]] && dir="${dir%/}"
out="${2:-file_list.csv}"
[[ "$out" == "-" ]] && out=/dev/stdout
min_size="${3:-1G}"
min_size="${min_size^^}"
min=$(numfmt --from=iec "${min_size%B}")

# %s size; %A./%T. access/modified time; %.2AS truncates seconds to whole;
# %u owner. Unreadable directories are reported on stderr and skipped.
find "$dir" -type f -printf \
    '%s\t%AY-%Am-%Ad %AH:%AM:%.2AS\t%TY-%Tm-%Td %TH:%TM:%.2TS\t%u\t%p\n' |
awk -F '\t' -v root="$dir" -v min="$min" -v out="$out" '
function parent(d,   p) { p = d; sub(/\/[^\/]*$/, "", p); return p == "" ? "/" : p }
function q(s) { gsub(/"/, "\"\"", s); return "\"" s "\"" }
function newdir(d) { b[d] = 0; n[d] = 0; at[d] = ""; mt[d] = ""; dirs[++nd] = d }
function addown(d, o, s) { if (!((d, o) in ob)) own[d] = own[d] SUBSEP o; ob[d, o] += s }
function line(kind, s, k, a, m, o, p) {
    print kind, s, k, a, m, o, q(p) > out; rows++; shown += s
}
BEGIN { OFS = ","; print "kind,size_bytes,files,last_access,last_modified,owner,path" > out }
{
    total += $1; nfiles++
    if ($1 + 0 >= min) { line("file", $1, 1, $2, $3, $4, $5); next }
    d = parent($5)
    if (!(d in b)) newdir(d)
    b[d] += $1; n[d]++
    if ($2 > at[d]) at[d] = $2
    if ($3 > mt[d]) mt[d] = $3
    addown(d, $4, $1)
}
END {
    # Every ancestor up to the root must exist before rolling up.
    for (i = 1; i <= nd; i++)
        for (d = dirs[i]; length(d) > length(root); ) { d = parent(d); if (!(d in b)) newdir(d) }
    maxdep = 0
    for (i = 1; i <= nd; i++) { t = dirs[i]; dep[dirs[i]] = gsub(/\//, "", t); if (dep[dirs[i]] > maxdep) maxdep = dep[dirs[i]] }
    # Deepest first: report a folder once its small files reach min, otherwise pass them up.
    for (k = maxdep; k >= 0; k--) for (i = 1; i <= nd; i++) {
        d = dirs[i]
        if (dep[d] != k || n[d] == 0) continue
        if (b[d] >= min) {
            best = ""; split(substr(own[d], 2), os, SUBSEP)
            for (j in os) if (best == "" || ob[d, os[j]] > ob[d, best]) best = os[j]
            line("folder", b[d], n[d], at[d], mt[d], best, d)
        } else if (length(d) > length(root)) {
            p = parent(d)
            b[p] += b[d]; n[p] += n[d]
            if (at[d] > at[p]) at[p] = at[d]
            if (mt[d] > mt[p]) mt[p] = mt[d]
            split(substr(own[d], 2), os, SUBSEP)
            for (j in os) addown(p, os[j], ob[d, os[j]])
        }
    }
    printf "Scanned %d files (%.1f GB); listed %d items (%.1f GB); %.1f GB in smaller items not listed\n", \
        nfiles, total / 2^30, rows, shown / 2^30, (total - shown) / 2^30 > "/dev/stderr"
}'
