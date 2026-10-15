#!/usr/bin/env bash
# List PDFs in a folder (recursively) that aren't yet in References/INDEX.md.
# Usage: bash .claude/skills/add-paper/find-unindexed.sh [folder]   (run from the repo root)
# Default folder: References/Paper_PDFs.
#
# Each line printed is "<index key><TAB><path to read>". The index key is what goes,
# in backticks, in the INDEX.md PDF column:
#   - PDFs under References/Paper_PDFs: path relative to that folder (the bare filename
#     for top-level files)
#   - PDFs anywhere else: absolute Windows path with forward slashes, e.g. D:/Papers/x.pdf

set -euo pipefail

repo=$(git rev-parse --show-toplevel)
index="$repo/References/INDEX.md"
default="$repo/References/Paper_PDFs"
dir="${1:-$default}"

if [ ! -d "$dir" ]; then
  echo "Not a folder: $dir" >&2
  exit 1
fi

winpath() { local p; p=$(cygpath -m "$1"); printf '%s' "${p#'//?/'}"; }  # drop long-path prefix
default_abs=$(winpath "$(cd "$default" && pwd)")

find "$dir" -type f -iname '*.pdf' -print0 | sort -z | while IFS= read -r -d '' f; do
  abs=$(winpath "$(cd "$(dirname "$f")" && pwd)/$(basename "$f")")
  case "$abs" in
    "$default_abs"/*) key="${abs#"$default_abs"/}" ;;
    *)                key="$abs" ;;
  esac
  grep -qF "\`$key\`" "$index" || printf '%s\t%s\n' "$key" "$abs"
done
