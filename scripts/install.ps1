# Install or update TO'KA on Windows with one command (PowerShell, no admin needed):
#
#   irm https://raw.githubusercontent.com/Itsmedexexplorer/TOKA/main/scripts/install.ps1 | iex
#
# Downloads the latest installer, installs it for your user only, and starts TO'KA.

$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue' # Invoke-WebRequest is very slow with the progress bar
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = 'https://github.com/Itsmedexexplorer/TOKA/releases/latest/download/TOKA-windows-setup.exe'
$setup = Join-Path $env:TEMP 'TOKA-setup.exe'

Write-Host "Downloading TO'KA..." -ForegroundColor Cyan
Invoke-WebRequest -Uri $url -OutFile $setup -UseBasicParsing

# Close a running copy so its files can be replaced.
Get-Process toka -ErrorAction SilentlyContinue | Stop-Process -Force

Write-Host 'Installing...' -ForegroundColor Cyan
Start-Process -FilePath $setup -ArgumentList '/S' -Wait
Remove-Item $setup -ErrorAction SilentlyContinue

$exe = Join-Path $env:LOCALAPPDATA 'TOKA\toka.exe'
if (Test-Path $exe) {
  Write-Host "TO'KA is installed. Starting it now; next time, find TOKA in the Start menu." -ForegroundColor Green
  Start-Process $exe
} else {
  Write-Host "Installed. Find TOKA in the Start menu." -ForegroundColor Green
}
