# gui.ps1
function Show-InstallerGUI {
    Add-Type -AssemblyName System.Windows.Forms
    Add-Type -AssemblyName System.Drawing

    $form = New-Object System.Windows.Forms.Form
    $form.Text = "Custom Installer"
    $form.Size = New-Object System.Drawing.Size(300, 200)

    $button = New-Object System.Windows.Forms.Button
    $button.Text = "Install"
    $button.Size = New-Object System.Drawing.Size(100, 50)
    $button.Location = New-Object System.Drawing.Point((($form.Width / 2) - ($button.Width / 2)), (($form.Height / 2) - ($button.Height / 2)))

    $button.Add_Click({
        Install-Chocolatey
        Install-Software
        Copy-CustomConfigs
        Enable-FileExtensionsAndHiddenFolders
        [System.Windows.Forms.MessageBox]::Show("Installation complete!", "Success", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
    })

    $form.Controls.Add($button)
    $form.ShowDialog()
}
