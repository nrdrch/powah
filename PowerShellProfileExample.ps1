oh-my-posh init pwsh --config "$HOME\Documents\WindowsPowerShell\ds\custom.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$HOME\Documents\WindowsPowerShell\ds\custom.omp.yaml" | Invoke-Expression
Import-Module $HOME\Documents\WindowsPowerShell\ds\pwhmodule.psm1
New-Alias -Name powah -Value Edit-CurrentOMPTheme
