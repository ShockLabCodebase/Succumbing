# file_list

Finds data parked on shared storage (M3 scratch, RDS Market) so its owners can be asked to move it.

1. **List** the large items, with size, file count, latest access and modified times, and owner:
   - M3 / Linux: `bash file_list.sh /scratch/<project> listing.csv 1G`
   - Windows: `powershell -ExecutionPolicy Bypass -File file_list.ps1 <dir> listing.csv -MinSize 1G -Owner`

   The scan looks at every file but writes only items of at least the threshold (default 1 GB):
   - a single file of that size or more (`kind` = `file`), or
   - a folder whose remaining smaller files add up to that size (`kind` = `folder`). It is listed at the deepest level where they first reach it, so a folder of 100 000 small PIV images appears as one row. Files and subfolders already listed aren't counted again.

   Smaller leftovers are never written; the scan prints how much data that was. A threshold of `0` lists every file.
2. **Summarise** (any Python 3.8+, standard library only):
   ```
   python summarise_file_list.py listing.csv --days 180 --time modified --out stale.csv
   ```
   An item is stale when nothing in it has been used for `--days`. The largest `--top` stale items (default 40) are printed, then totals per owner. If the listing has no owners, the top-level folder is used instead. `--out` saves every stale item as CSV.

   `--min-size` (default 1G) can raise the threshold further: items below it are rolled up again into their folders. Lowering it below the listing's threshold has no effect, because the smaller items were never listed.

   `--depth N` groups everything into folders N levels below the root instead, still dropping folders under `--min-size`. Use it for a coarser, per-person or per-project view. A folder is then judged by its newest file, so old data sitting inside an active folder is missed. That is why `--depth 1` finds less than the default.

## Weekly usage per folder

`weekly_scan.ps1` tracks how much each top-level folder of Market and M3 qk75 scratch holds over time. Each run adds a column (the scan date, sizes in GB) to `Misc/Market_folder_sizes.csv` and `Misc/M3_qk75_folder_sizes.csv`, with one row per folder plus `(loose files)`, `TOTAL` and, for M3, `drive used`/`drive size` from `df`. A run is logged to `Misc/storage_scan.log`. Market is sized with a robocopy list-only dry run over the UNC path. M3 is sized with `du` over SSH (`ssh m3`, key in the Windows ssh-agent), at low priority on the login node, and nothing is written there.

```
powershell -ExecutionPolicy Bypass -File weekly_scan.ps1 [-Only Market|M3] [-OutDir DIR]
```

To run it every Sunday at 02:00, run this once in PowerShell. The task runs only while you are logged on, because it needs your network login for Market and your ssh-agent for M3. If the PC was off at 02:00, it starts at the next chance.

```powershell
$a = New-ScheduledTaskAction -Execute powershell.exe -Argument '-NoProfile -ExecutionPolicy Bypass -File "J:\Succumbing\Tools\file_list\weekly_scan.ps1"'
$t = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Sunday -At 2am
$s = New-ScheduledTaskSettingsSet -StartWhenAvailable -ExecutionTimeLimit (New-TimeSpan -Hours 12)
Register-ScheduledTask -TaskName 'Weekly storage scan' -Action $a -Trigger $t -Settings $s
```

## Notes

- **Which time counts as "used".** `--time latest` (the default) takes the later of the access and modified times. Access times are often unreliable. On Windows, antivirus or indexing can update them during the scan itself, and the summariser warns when that seems to have happened. Linux file systems usually update them at most once a day. Use `--time modified` when in doubt: data nobody has written to in six months is a good candidate, even if someone has read it.
- **Permissions.** You only see folders you can read. Run as someone with read access to the whole tree (e.g. the project's group); anything skipped is reported.
- **Large trees.** On M3, scan a big tree from a batch job, not the login node. Write the listing to your home or project space, not into the tree being scanned. On Windows, `-Owner` looks up owners only for the listed items, but it is still slow over network shares. Leave it off if the folder names already tell you whose data it is. For a folder row, PowerShell reports the folder's owner, while bash reports whoever owns most of its bytes.
- **Listings name everyone's files.** Keep them out of Git (`Misc/*.csv` is ignored) and share only the summaries.
