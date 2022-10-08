oh-my-posh init pwsh --config "$HOME\Documents\WindowsPowerShell\ds\custom*" | Invoke-Expression
Import-Module $HOME\Documents\WindowsPowerShell\pwhmodule.psm1
Import-Module PSReadLine
Import-Module Terminal-Icons
New-Alias -Name powah -Value Edit-CurrentOMPTheme
