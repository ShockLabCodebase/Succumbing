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
# than Get-ChildItem), with -MarketJobs top-level folders sized at once. M3 is
# sized with du over SSH, at low priority on the login node, with -M3Jobs
# top-level folders sized at once (Lustre answers one file at a time, so
# parallel du is much faster); nothing is written on M3. The two scans run at
# the same time. The PC is kept from going to sleep while the script runs.
#
# Usage: powershell -ExecutionPolicy Bypass -File weekly_scan.ps1 [-OutDir DIR] [-Only Market|M3|Both] [-M3Jobs N] [-MarketJobs N]

param(
    [string]$OutDir = (Join-Path $PSScriptRoot '..\..\Misc'),
    [ValidateSet('Market', 'M3', 'Both')][string]$Only = 'Both',
    # The UNC path, not Z:, because scheduled tasks don't see mapped drives.
    [string]$MarketPath = '\\storage.erc.monash.edu\shares\r-eng-mae-ltrac-jet-noise',
    [string]$M3Host = 'm3',
    [string]$M3Path = '/fs04/scratch2/qk75',
    [ValidateRange(1, 32)][int]$M3Jobs = 12,
    [ValidateRange(1, 32)][int]$MarketJobs = 8
)

$ErrorActionPreference = 'Stop'
$ssh = "$env:SystemRoot\System32\OpenSSH\ssh.exe"   # the key is in the Windows ssh-agent
$date = Get-Date -Format 'yyyy-MM-dd'
$OutDir = [IO.Path]::GetFullPath($OutDir)
New-Item -ItemType Directory -Force $OutDir | Out-Null
$log = Join-Path $OutDir 'storage_scan.log'
$failed = $false

# Keep the PC awake until this process exits (Windows clears the request then).
Add-Type -Namespace Win32 -Name Power -MemberDefinition `
    '[DllImport("kernel32.dll")] public static extern uint SetThreadExecutionState(uint esFlags);'
[void][Win32.Power]::SetThreadExecutionState([uint32]2147483649)   # ES_CONTINUOUS | ES_SYSTEM_REQUIRED

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

# Run a script block in another runspace (a thread of this process), in $pool
# if given. Windows PowerShell 5.1 has no ForEach-Object -Parallel.
function Start-Background($script, $argList, $pool) {
    $ps = [powershell]::Create()
    if ($pool) { $ps.RunspacePool = $pool }
    [void]$ps.AddScript($script)
    foreach ($a in $argList) { [void]$ps.AddArgument($a) }
    [pscustomobject]@{ PS = $ps; Handle = $ps.BeginInvoke() }
}

# Wait for a Start-Background job and return its output.
function Receive-Background($job) {
    try { $job.PS.EndInvoke($job.Handle) } finally { $job.PS.Dispose() }
}

# Bytes under a folder, from robocopy's list-only summary (exit codes >= 8 are
# errors). Runs in the background, so it returns the exit code and the summary
# line for the caller to check and log.
$robocopyBytes = {
    param($dir)
    $dst = Join-Path $env:TEMP 'robocopy_list_only_target'   # never created with /L
    $out = & robocopy.exe $dir $dst /L /E /XJ /BYTES /NFL /NDL /NJH /NP /R:0 /W:0 /MT:16
    $code = $LASTEXITCODE
    $line = $out | Where-Object { $_ -match '^\s*Bytes\s*:' } | Select-Object -First 1
    [pscustomobject]@{ Code = $code; Line = $line }
}

# M3 is sized on its login node and Market from this PC, so they run at the
# same time: M3's ssh is started in the background before the Market scan.
$m3 = $null
if ($Only -in 'M3', 'Both') {
    Log "M3: ${M3Host}:$M3Path"
    # df gives the file system's view; find sums the files sitting in the
    # root; du -sb sizes each top-level folder, $M3Jobs at a time. Unreadable
    # folders make du exit 1, but it still prints what it could size.
    # (No double quotes: Windows PowerShell 5.1 mangles them in native arguments.)
    $remote = "cd '$M3Path' || exit 1; " +
              "df -PB1 . | awk 'NR==2 {print `$2, `$3}' | sed 's/^/DF /'; " +
              "find . -mindepth 1 -maxdepth 1 ! -type d -printf '%s\n' 2>/dev/null | awk '{s += `$1} END {print s + 0}' | sed 's/^/LOOSE /'; " +
              "find . -mindepth 1 -maxdepth 1 -type d -print0 | nice -n 19 ionice -c3 xargs -0 -n 1 -P $M3Jobs du -sb 2>/dev/null; true"
    $m3 = Start-Background {
        param($ssh, $hostName, $remote)
        $t = Get-Date
        $out = & $ssh -o BatchMode=yes -o ConnectTimeout=30 -o ServerAliveInterval=60 $hostName $remote
        [pscustomobject]@{ Out = $out; Code = $LASTEXITCODE; Minutes = ((Get-Date) - $t).TotalMinutes }
    } @($ssh, $M3Host, $remote)
}

if ($Only -in 'Market', 'Both') {
    $pool = $null
    try {
        Log "Market: $MarketPath"
        if (-not (Test-Path -LiteralPath $MarketPath)) { throw "cannot reach $MarketPath" }
        $t = Get-Date
        # One robocopy per top-level folder, $MarketJobs at a time.
        $pool = [runspacefactory]::CreateRunspacePool(1, $MarketJobs)
        $pool.Open()
        $jobs = [ordered]@{}
        foreach ($d in Get-ChildItem -LiteralPath $MarketPath -Directory -Force) {
            $jobs[$d.Name] = Start-Background $robocopyBytes @($d.FullName) $pool
        }
        $sizes = [ordered]@{}
        foreach ($name in $jobs.Keys) {
            $r = (Receive-Background $jobs[$name])[0]
            if ($r.Code -ge 8 -or -not $r.Line) {
                Log "Market: robocopy exit $($r.Code) for $(Join-Path $MarketPath $name)"; $failed = $true
            }
            $sizes[$name] = if ($r.Line) { [int64](($r.Line -split ':', 2)[1].Trim() -split '\s+')[0] } else { [int64]0 }
        }
        $sizes['(loose files)'] = [int64](Get-ChildItem -LiteralPath $MarketPath -File -Force |
                Measure-Object Length -Sum).Sum
        Log ('Market: scanned in {0:N0} min' -f ((Get-Date) - $t).TotalMinutes)
        # No drive rows: the share reports the whole storage backend (petabytes), not its quota.
        Update-Table (Join-Path $OutDir 'Market_folder_sizes.csv') $sizes ([ordered]@{})
    } catch { $failed = $true; Log "Market FAILED: $_" }
    finally { if ($pool) { $pool.Dispose() } }
}

if ($m3) {
    try {
        $r = (Receive-Background $m3)[0]
        $out = $r.Out
        if ($r.Code -ne 0 -or -not $out) { throw "ssh $M3Host failed (exit $($r.Code)); is the key loaded in ssh-agent?" }
        $sizes = [ordered]@{}; $loose = $null; $df = $null
        foreach ($line in $out) {
            if ($line -like 'DF *') { $df = $line.Substring(3) -split ' '; continue }
            if ($line -like 'LOOSE *') { $loose = [int64]$line.Substring(6); continue }
            $bytes, $path = $line -split "`t", 2
            $sizes[$path -replace '^\./', ''] = [int64]$bytes
        }
        if ($null -eq $loose -or -not $df -or -not $sizes.Count) { throw "unexpected output from M3: $($out -join ' | ')" }
        $sizes['(loose files)'] = $loose
        Log ('M3: scanned in {0:N0} min' -f $r.Minutes)
        Update-Table (Join-Path $OutDir 'M3_qk75_folder_sizes.csv') $sizes `
            ([ordered]@{ 'drive used' = [int64]$df[1]; 'drive size' = [int64]$df[0] })
    } catch { $failed = $true; Log "M3 FAILED: $_" }
}

if ($failed) { Log 'Done with errors'; exit 1 }
Log 'Done'
