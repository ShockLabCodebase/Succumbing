# List every file under a directory with its size, last access and last
# modified time, as CSV. For Windows (PowerShell 5.1 or later).
# Feed the CSV to summarise_file_list.py to find data that is no longer used.
#
# Usage: powershell -ExecutionPolicy Bypass -File file_list.ps1 [dir] [out.csv] [-Owner]
#   dir      directory to scan (default: current directory)
#   out.csv  output file (default: file_list.csv)
#   -Owner   also record each file's owner (slow on network shares)

param(
    [string]$Path = '.',
    [string]$Out = 'file_list.csv',
    [switch]$Owner
)

$fmt = 'yyyy-MM-dd HH:mm:ss'

# -Force includes hidden files; unreadable folders are skipped with a warning.
Get-ChildItem -LiteralPath $Path -Recurse -File -Force -ErrorAction SilentlyContinue -ErrorVariable errs |
    Select-Object @{n = 'size_bytes'; e = { $_.Length } },
                  @{n = 'last_access'; e = { $_.LastAccessTime.ToString($fmt) } },
                  @{n = 'last_modified'; e = { $_.LastWriteTime.ToString($fmt) } },
                  @{n = 'owner'; e = { if ($Owner) { try { (Get-Acl -LiteralPath $_.FullName).Owner } catch { '' } } else { '' } } },
                  @{n = 'path'; e = { $_.FullName } } |
    Export-Csv -LiteralPath $Out -NoTypeInformation -Encoding UTF8

$n = (Import-Csv -LiteralPath $Out | Measure-Object).Count
Write-Host "Wrote $n files to $Out"
foreach ($e in $errs) { Write-Warning "Skipped: $($e.TargetObject)" }
