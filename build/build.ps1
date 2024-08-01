$ps2exePath = (Get-Module -ListAvailable -Name ps2exe).ModuleBase
$mainScript = "$PSScriptRoot/src/main.ps1"
$outputExe = "$PSScriptRoot/build/CustomInstaller.exe"

# Ensure PS2EXE is installed
if (-Not (Get-Command ps2exe -ErrorAction SilentlyContinue)) {
    Install-Module -Name ps2exe -Scope CurrentUser -Force
}

# Convert PowerShell script to executable
invoke-ps2exe $mainScript $outputExe
