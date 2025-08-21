# Check if running as Administrator
If (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    # Relaunch script as Administrator
    $newProcess = Start-Process powershell "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

# Define Quad9 DNS servers
$PrimaryDNS = "9.9.9.9"
$SecondaryDNS = "149.112.112.112"

# Get all active, non-virtual network adapters
$adapters = Get-NetAdapter | Where-Object { $_.Status -eq "Up" -and $_.Virtual -eq $false }

foreach ($adapter in $adapters) {
    Write-Host "Changing DNS for adapter: $($adapter.Name)"
    Set-DnsClientServerAddress -InterfaceAlias $adapter.Name -ServerAddresses ($PrimaryDNS, $SecondaryDNS)
}

Write-Host "DNS servers updated to Quad9 successfully!"
Pause
