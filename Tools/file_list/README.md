# file_list

Finds data parked on shared storage (M3 scratch, RDS Market) so its owners can be asked to move it.

1. **List** every file with size, access and modified time and owner:
   - M3 / Linux: `bash file_list.sh /scratch/<project> listing.csv`
   - Windows: `powershell -ExecutionPolicy Bypass -File file_list.ps1 <dir> listing.csv -Owner`
2. **Summarise** (any Python 3.8+, standard library only):
   ```
   python summarise_file_list.py listing.csv --days 180 --depth 1 --out stale.csv
   ```
   This groups files into folders `--depth` levels below the scanned root. A folder is stale when nothing in it has been used for `--days`. Stale folders are listed largest first, with their owners, then totalled per owner. `--out` saves the stale folders as CSV.

## Notes

- **Which time counts as "used".** `--time latest` (the default) takes the later of the access and modified times. Access times are often unreliable. On Windows, antivirus or indexing can update them during the scan itself, and the summariser warns when that seems to have happened. Linux file systems usually update them at most once a day. Use `--time modified` when in doubt: data nobody has written to in six months is a good candidate, even if someone has read it.
- **Permissions.** You only see folders you can read. Run as someone with read access to the whole tree (e.g. the project's group); anything skipped is reported.
- **Large trees.** On M3, scan a big tree from a batch job, not the login node. Write the listing to your home or project space, not into the tree being scanned. On Windows, `-Owner` is slow over network shares. Leave it off if the folder names already tell you whose data it is.
- `--depth 2` is useful when the top level is per project and the second level is per person or dataset.
