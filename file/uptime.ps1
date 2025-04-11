# uptime_check.ps1
$uptime = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
$now = Get-Date
$uptimeDuration = $now - $uptime

Write-Host "🕒 System Uptime:"
Write-Host "Last boot time : $uptime"
Write-Host "Uptime duration: $($uptimeDuration.Days) days, $($uptimeDuration.Hours) hours, $($uptimeDuration.Minutes) minutes"
