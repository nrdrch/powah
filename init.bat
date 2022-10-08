@ECHO OFF
SET pwhpth=%~dp0
echo %pwhpth:~0,-1%

IF NOT EXIST C:\Users\%username%\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe (
    powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))"
)
IF EXIST C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 (
    GOTO ifpsprofilexists
)
IF NOT EXIST C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 (
    GOTO ifpsprofildsntexists
)



:ifpsprofilexists
cls
SET "psplctn= C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
powershell -Command "Get-Content $PROFILE | Select-String -NotMatch 'oh-my-posh init pwsh *' | Out-File -FilePath $HOME\AppData\Local\Temp\psprofiledump.txt"
powershell -Command "Get-Content $HOME\AppData\Local\Temp\psprofiledump.txt | Select-String -NotMatch 'New-Alias -Name powah *' | Out-File -FilePath $HOME\AppData\Local\Temp\psprofiledump2.txt"
type %pwhpth%\PowerShellProfileExample.ps1 >> %temp%\Microsoft.PowerShell_profile.ps1 
DEL %psplctn%

copy /y %temp%\Microsoft.PowerShell_profile.ps1 %psplctn%
type %temp%\psprofiledump2.txt >> %psplctn%

GOTO nextup
:ifpsprofildsntexists
cls
copy /y %pwhpth%\PowerShellProfileExample.ps1 C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
SET "psplctn= C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"

GOTO nextup
:nextup

IF NOT EXIST C:\Users\%username%\Documents\WindowsPowerShell\ds (
    xcopy /y %pwhpth%\ds C:\Users\%username%\Documents\WindowsPowerShell\ds
) 

copy /y %pwhpth%\powah.bat C:\Users\%username%\Documents\WindowsPowerShell\powah.bat
GOTO Quit
:Quit
