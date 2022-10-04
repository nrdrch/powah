
function Edit-PSProfile {
    [CmdletBinding()]
    param (
        $PSProfile = "$HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
    )
    code $PSProfile
}

function Edit-CurrentOMPTheme {
    [CmdletBinding()]
    param (
        $D = "$HOME\Documents\WindowsPowerShell\powah.bat"
    )
    cmd.exe /c $D 
}

function Get-RLPSP {
    [CmdletBinding()]
    param (
        $PSPr = "$HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
    )

    . $PSPr; Clear-Host
}


