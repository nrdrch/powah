function Start-BotR2D2 {
    [CmdletBinding()]
    param (
        $D2PATH = "$HOME\Documents\MusicBot\run.bat"
    )
    cmd.exe /c $D2PATH
}

function Start-BotGV {
    [CmdletBinding()]
    param (
        $GVPATH = "$HOME\Documents\GoodVibrations\run.bat"
    )
    cmd.exe /c $GVPATH
}

function Edit-PSProfile {
    [CmdletBinding()]
    param (
        $PSProfile = "$HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
    )
    code $PSProfile
}

function Edit-PSModules {
    [CmdletBinding()]
    param (
        $PSModules = "$HOME\Documents\WindowsPowerShell\ds\modules.psm1"
    )
    code $PSModules
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
function Start-DS4Win {
    [CmdletBinding()]
    param (
        $DS4 = "$HOME\Documents\DS4Windows\DS4Windows.exe"
    )
    start $DS4

}

