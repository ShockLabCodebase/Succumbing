# List the large items under a directory, as CSV. For Windows (PowerShell 5.1
# or later). An item is either
#   - a file of at least -MinSize, or
#   - a folder whose remaining smaller files add up to at least -MinSize,
#     listed at the deepest level where they reach it (files and subfolders
#     already listed are not counted again).
# Nothing smaller is written. Columns: kind (file/folder), size_bytes, files,
# last_access, last_modified (the latest over the item's files), owner, path.
# Feed the CSV to summarise_file_list.py to find data that is no longer used.
#
# Usage: powershell -ExecutionPolicy Bypass -File file_list.ps1 [dir] [out.csv] [-MinSize 1G] [-Owner]
#   dir       directory to scan (default: current directory)
#   out.csv   output file (default: file_list.csv)
#   -MinSize  smallest item to list, e.g. 500M, 1G, 2T (default 1G; 0 lists every file)
#   -Owner    also record each listed item's owner (for a folder, the folder's
#             owner); slow on network shares

param(
    [string]$Path = '.',
    [string]$Out = 'file_list.csv',
    [string]$MinSize = '1G',
    [switch]$Owner
)

if ($MinSize -notmatch '^\s*([\d.]+)\s*([KMGT]?)B?\s*$') { throw "Bad -MinSize: $MinSize" }
$units = @{ '' = 1; 'K' = 1KB; 'M' = 1MB; 'G' = 1GB; 'T' = 1TB }
$min = [int64]([double]$Matches[1] * $units[$Matches[2].ToUpper()])

$fmt = 'yyyy-MM-dd HH:mm:ss'
$root = (Resolve-Path -LiteralPath $Path).ProviderPath.TrimEnd('\')
$items = New-Object System.Collections.Generic.List[object]
$dirs = @{}   # folder -> totals of its files below $min
$total = 0L; $nfiles = 0

function Add-Dir($d) { $dirs[$d] = @{ b = 0L; n = 0; a = [datetime]::MinValue; m = [datetime]::MinValue } }
function Get-Parent($d) { $i = $d.LastIndexOf('\'); if ($i -lt 0) { $d } else { $d.Substring(0, $i) } }

# -Force includes hidden files; unreadable folders are skipped with a warning.
Get-ChildItem -LiteralPath $Path -Recurse -File -Force -ErrorAction SilentlyContinue -ErrorVariable errs |
    ForEach-Object {
        $total += $_.Length; $nfiles++
        if ($_.Length -ge $min) {
            $items.Add([pscustomobject]@{ kind = 'file'; size_bytes = $_.Length; files = 1
                    a = $_.LastAccessTime; m = $_.LastWriteTime; path = $_.FullName })
        } else {
            $d = $_.DirectoryName.TrimEnd('\')
            if (-not $dirs.ContainsKey($d)) { Add-Dir $d }
            $t = $dirs[$d]; $t.b += $_.Length; $t.n++
            if ($_.LastAccessTime -gt $t.a) { $t.a = $_.LastAccessTime }
            if ($_.LastWriteTime -gt $t.m) { $t.m = $_.LastWriteTime }
        }
    }

# Every ancestor up to the root must exist, then roll up deepest first:
# report a folder once its small files reach $min, otherwise pass them up.
foreach ($d in @($dirs.Keys)) {
    while ($d.Length -gt $root.Length) { $d = Get-Parent $d; if (-not $dirs.ContainsKey($d)) { Add-Dir $d } }
}
foreach ($d in ($dirs.Keys | Sort-Object { ($_ -split '\\').Count } -Descending)) {
    $t = $dirs[$d]
    if ($t.n -eq 0) { continue }
    if ($t.b -ge $min) {
        $items.Add([pscustomobject]@{ kind = 'folder'; size_bytes = $t.b; files = $t.n
                a = $t.a; m = $t.m; path = $d })
    } elseif ($d.Length -gt $root.Length) {
        $p = $dirs[(Get-Parent $d)]
        $p.b += $t.b; $p.n += $t.n
        if ($t.a -gt $p.a) { $p.a = $t.a }
        if ($t.m -gt $p.m) { $p.m = $t.m }
    }
}

$items | Sort-Object size_bytes -Descending |
    Select-Object kind, size_bytes, files,
                  @{n = 'last_access'; e = { $_.a.ToString($fmt) } },
                  @{n = 'last_modified'; e = { $_.m.ToString($fmt) } },
                  @{n = 'owner'; e = { if ($Owner) { try { (Get-Acl -LiteralPath $_.path).Owner } catch { '' } } else { '' } } },
                  path |
    Export-Csv -LiteralPath $Out -NoTypeInformation -Encoding UTF8
if ($items.Count -eq 0) {
    '"kind","size_bytes","files","last_access","last_modified","owner","path"' |
        Out-File -LiteralPath $Out -Encoding utf8
}

$shown = ($items | Measure-Object size_bytes -Sum).Sum
Write-Host ("Scanned {0} files ({1:N1} GB); listed {2} items ({3:N1} GB); {4:N1} GB in smaller items not listed" -f `
        $nfiles, ($total / 1GB), $items.Count, ($shown / 1GB), (($total - $shown) / 1GB))
foreach ($e in $errs) { Write-Warning "Skipped: $($e.TargetObject)" }
