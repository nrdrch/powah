oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config "$HOME\Documents\WindowsPowerShell\ds\custom.omp.json" | Invoke-Expression
Import-Module "$HOME\Documents\WindowsPowerShell\modules.psm1"

New-Alias -Name gh -Value Get-Help
New-Alias -Name c -Value clear
New-Alias -Name powah -Value Edit-CurrentOMPTheme