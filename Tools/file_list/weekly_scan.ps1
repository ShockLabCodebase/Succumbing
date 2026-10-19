# Weekly storage usage of RDS Market and M3 qk75 scratch, per top-level folder,
# for Windows Task Scheduler. Each run adds one column (the scan date, sizes in
# GB) to <OutDir>\Market_folder_sizes.csv and <OutDir>\M3_qk75_folder_sizes.csv,
# with one row per top-level folder, so usage can be tracked over time. A
# folder that appears later gets blanks for the earlier weeks; one that
# disappears keeps its old values and gets blanks from then on. Extra rows:
#   (loose files)  files sitting directly in the root
#   TOTAL          sum of the rows above
#   drive used / drive size   M3 only, from df (includes what the scan could
#                  not read, and counts allocated blocks)
# Running twice on the same day replaces that day's column.
#
# Market is sized with robocopy /L (a list-only dry run, much faster over SMB
# than Get-ChildItem). M3 is sized with du over SSH, at low priority on the
# login node; nothing is written on M3.
#
# Usage: powershell -ExecutionPolicy Bypass -File weekly_scan.ps1 [-OutDir DIR] [-Only Market|M3|Both]

param(
    [string]$OutDir = (Join-Path $PSScriptRoot '..\..\Misc'),
    [ValidateSet('Market', 'M3', 'Both')][string]$Only = 'Both',
    # The UNC path, not Z:, because scheduled tasks don't see mapped drives.
    [string]$MarketPath = '\\storage.erc.monash.edu\shares\r-eng-mae-ltrac-jet-noise',
    [string]$M3Host = 'm3',
    [string]$M3Path = '/fs04/scratch2/qk75'
)

$ErrorActionPreference = 'Stop'
$ssh = "$env:SystemRoot\System32\OpenSSH\ssh.exe"   # the key is in the Windows ssh-agent
$date = Get-Date -Format 'yyyy-MM-dd'
$OutDir = [IO.Path]::GetFullPath($OutDir)
New-Item -ItemType Directory -Force $OutDir | Out-Null
$log = Join-Path $OutDir 'storage_scan.log'
$failed = $false

function Log($msg) {
    $line = '{0}  {1}' -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'), $msg
    Write-Host $line
    Add-Content -LiteralPath $log -Value $line -Encoding UTF8
}

# Add this week's column to the CSV. $sizes maps folder -> bytes; $extra holds
# the drive rows, kept at the bottom.
function Update-Table($csv, $sizes, $extra) {
    $special = @('(loose files)', 'TOTAL') + @($extra.Keys)
    $rows = [ordered]@{}
    $dates = @()
    if (Test-Path -LiteralPath $csv) {
        $old = @(Import-Csv -LiteralPath $csv)
        if ($old.Count) { $dates = @($old[0].PSObject.Properties.Name | Where-Object { $_ -ne 'folder' -and $_ -ne $date }) }
        foreach ($r in $old) { $rows[$r.folder] = $r }
    }
    $gb = { param($b) '{0:F2}' -f ($b / 1GB) }
    $values = @{}
    foreach ($k in $sizes.Keys) { $values[$k] = & $gb $sizes[$k] }
    $values['TOTAL'] = & $gb (($sizes.Values | Measure-Object -Sum).Sum)
    foreach ($k in $extra.Keys) { $values[$k] = & $gb $extra[$k] }

    $names = @($rows.Keys) + @($values.Keys) | Select-Object -Unique
    $folders = $names | Where-Object { $_ -notin $special } | Sort-Object
    $out = foreach ($name in @($folders) + $special) {
        if (-not ($rows.Contains($name) -or $values.ContainsKey($name))) { continue }
        $o = [ordered]@{ folder = $name }
        foreach ($d in $dates) { $o[$d] = if ($rows.Contains($name)) { $rows[$name].$d } else { '' } }
        $o[$date] = if ($values.ContainsKey($name)) { $values[$name] } else { '' }
        [pscustomobject]$o
    }
    $out | Export-Csv -LiteralPath $csv -NoTypeInformation -Encoding UTF8
    Log ('{0} updated: {1} folders, TOTAL {2} GB' -f (Split-Path $csv -Leaf), @($folders).Count, $values['TOTAL'])
}

# Bytes under a folder, from robocopy's list-only summary (exit codes >= 8 are errors).
function Get-RobocopyBytes($dir) {
    $dst = Join-Path $env:TEMP 'robocopy_list_only_target'   # never created with /L
    $out = & robocopy.exe $dir $dst /L /E /XJ /BYTES /NFL /NDL /NJH /NP /R:0 /W:0 /MT:16
    $code = $LASTEXITCODE
    $line = $out | Where-Object { $_ -match '^\s*Bytes\s*:' } | Select-Object -First 1
    if ($code -ge 8 -or -not $line) { Log "Market: robocopy exit $code for $dir"; $script:failed = $true }
    if ($line) { [int64](($line -split ':', 2)[1].Trim() -split '\s+')[0] } else { [int64]0 }
}

if ($Only -in 'Market', 'Both') {
    try {
        Log "Market: $MarketPath"
        if (-not (Test-Path -LiteralPath $MarketPath)) { throw "cannot reach $MarketPath" }
        $t = Get-Date
        $sizes = [ordered]@{}
        foreach ($d in Get-ChildItem -LiteralPath $MarketPath -Directory -Force) {
            $sizes[$d.Name] = Get-RobocopyBytes $d.FullName
        }
        $sizes['(loose files)'] = [int64](Get-ChildItem -LiteralPath $MarketPath -File -Force |
                Measure-Object Length -Sum).Sum
        Log ('Market: scanned in {0:N0} min' -f ((Get-Date) - $t).TotalMinutes)
        # No drive rows: the share reports the whole storage backend (petabytes), not its quota.
        Update-Table (Join-Path $OutDir 'Market_folder_sizes.csv') $sizes ([ordered]@{})
    } catch { $failed = $true; Log "Market FAILED: $_" }
}

if ($Only -in 'M3', 'Both') {
    try {
        Log "M3: ${M3Host}:$M3Path"
        $t = Get-Date
        # du -d1 gives each top-level folder and the root total (root's own files
        # = total minus the folders); df gives the file system's view. Unreadable
        # folders make du exit 1, but it still prints what it could size.
        # (No double quotes: Windows PowerShell 5.1 mangles them in native arguments.)
        $remote = "df -PB1 '$M3Path' | awk 'NR==2 {print `$2, `$3}' | sed 's/^/DF /'; " +
                  "nice -n 19 ionice -c3 du -b -d1 '$M3Path' 2>/dev/null; true"
        $out = & $ssh -o BatchMode=yes -o ConnectTimeout=30 -o ServerAliveInterval=60 $M3Host $remote
        if ($LASTEXITCODE -ne 0 -or -not $out) { throw "ssh $M3Host failed (exit $LASTEXITCODE); is the key loaded in ssh-agent?" }
        $root = $M3Path.TrimEnd('/')
        $sizes = [ordered]@{}; $rootTotal = $null; $df = $null
        foreach ($line in $out) {
            if ($line -like 'DF *') { $df = $line.Substring(3) -split ' '; continue }
            $bytes, $path = $line -split "`t", 2
            if ($path -eq $root) { $rootTotal = [int64]$bytes }
            else { $sizes[$path.Substring($root.Length + 1)] = [int64]$bytes }
        }
        if ($null -eq $rootTotal -or -not $df) { throw "unexpected output from M3: $($out -join ' | ')" }
        $sizes['(loose files)'] = $rootTotal - (($sizes.Values | Measure-Object -Sum).Sum)
        Log ('M3: scanned in {0:N0} min' -f ((Get-Date) - $t).TotalMinutes)
        Update-Table (Join-Path $OutDir 'M3_qk75_folder_sizes.csv') $sizes `
            ([ordered]@{ 'drive used' = [int64]$df[1]; 'drive size' = [int64]$df[0] })
    } catch { $failed = $true; Log "M3 FAILED: $_" }
}

if ($failed) { Log 'Done with errors'; exit 1 }
Log 'Done'
