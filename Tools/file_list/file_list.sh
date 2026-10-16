#!/usr/bin/env bash
# List every file under a directory with its size, last access and last
# modified time and owner, as CSV. For Linux (e.g. MASSIVE M3); needs GNU find.
# Feed the CSV to summarise_file_list.py to find data that is no longer used.
#
# Usage: ./file_list.sh [dir] [out.csv]
#   dir      directory to scan (default: current directory)
#   out.csv  output file (default: file_list.csv; use - for stdout)

set -euo pipefail

dir="${1:-.}"
out="${2:-file_list.csv}"

list() {
    echo "size_bytes,last_access,last_modified,owner,path"
    # %s size; %A./%T. access/modified time; %.2AS truncates seconds to whole;
    # %u owner. Unreadable directories are reported on stderr and skipped.
    find "$dir" -type f -printf \
        '%s,%AY-%Am-%Ad %AH:%AM:%.2AS,%TY-%Tm-%Td %TH:%TM:%.2TS,%u,"%p"\n'
}

if [[ "$out" == "-" ]]; then
    list
else
    list > "$out"
    echo "Wrote $(($(wc -l < "$out") - 1)) files to $out"
fi
