# file_list

Finds data parked on shared storage (M3 scratch, RDS Market) so its owners can be asked to move it.

1. **List** every file with size, access and modified time and owner:
   - M3 / Linux: `bash file_list.sh /scratch/<project> listing.csv`
   - Windows: `powershell -ExecutionPolicy Bypass -File file_list.ps1 <dir> listing.csv -Owner`
2. **Summarise** (any Python 3.8+, standard library only):
   ```
   python summarise_file_list.py listing.csv --days 180 --min-size 1G --time modified --out stale.csv
   ```
   An item is stale when nothing in it has been used for `--days`. Only items of at least `--min-size` (default 1 GB) are reported:
   - a single file of that size or more, or
   - a folder whose remaining smaller files add up to that size, reported at the deepest level where they first reach it (so a folder of 100 000 small PIV images appears as one row). Files and subfolders already listed aren't counted again.

   The largest `--top` items (default 40) are printed, then totals per owner. If the listing has no owners, the top-level folder is used instead. `--out` saves every stale item as CSV.

   `--depth N` groups everything into folders N levels below the root instead, still dropping folders under `--min-size`. Use it for a coarser, per-person or per-project view. A folder is then judged by its newest file, so old data sitting inside an active folder is missed. That is why `--depth 1` finds less than the default.

   The listing step always records every file, even when you only want big ones: the folder totals need the small files too.

## Notes

- **Which time counts as "used".** `--time latest` (the default) takes the later of the access and modified times. Access times are often unreliable. On Windows, antivirus or indexing can update them during the scan itself, and the summariser warns when that seems to have happened. Linux file systems usually update them at most once a day. Use `--time modified` when in doubt: data nobody has written to in six months is a good candidate, even if someone has read it.
- **Permissions.** You only see folders you can read. Run as someone with read access to the whole tree (e.g. the project's group); anything skipped is reported.
- **Large trees.** On M3, scan a big tree from a batch job, not the login node. Write the listing to your home or project space, not into the tree being scanned. On Windows, `-Owner` is slow over network shares. Leave it off if the folder names already tell you whose data it is.
- **Listings name everyone's files.** Keep them out of Git (`Misc/*.csv` is ignored) and share only the summaries.
