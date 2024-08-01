# Import functions from other scripts
. "$PSScriptRoot\src\install_chocolatey.ps1"
. "$PSScriptRoot\src\install_software.ps1"
. "$PSScriptRoot\src\copy_configs.ps1"
. "$PSScriptRoot\srcenable_settings.ps1"
. "$PSScriptRoot\src\gui.ps1"

# define functions
function Run-Installation {
    Install-Chocolatey
    Install-Software
    Copy-CustomConfigs
    Enable-FileExtensionsAndHiddenFolders
}

Show-InstallerGUI