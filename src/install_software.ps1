function Install-Software {
    choco install beeftext -y
    choco install virtualbox -y
    choco install autohotkey -y
    choco install powershell-core -y
    choco install notepadplusplus -y
    choco install wsl -y
    choco install icloud -y
    choco install jdk8 -y
    choco install golang -y
    choco install neovim -y
    Install-Module -Name VirtualDesktop -Force
}