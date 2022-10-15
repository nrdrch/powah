@ECHO OFF
SET currentpath=%~dp0
echo %currentpath:~0,-1%
IF NOT EXIST C:\Users\%username%\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe (
    powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))"
)
IF EXIST C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 (
    GOTO ifpsprofilexists
)
IF NOT EXIST C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 (
    GOTO ifpsprofildsntexists
)
cls
:ifpsprofilexists
cls
SET "psplctn= C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
powershell -Command "Get-Content $PROFILE | Select-String -NotMatch 'oh-my-posh init pwsh *' | Out-File -FilePath $HOME\AppData\Local\Temp\psprofiledump.txt"
powershell -Command "Get-Content $HOME\AppData\Local\Temp\psprofiledump.txt | Select-String -NotMatch 'New-Alias -Name powah *' | Out-File -FilePath $HOME\AppData\Local\Temp\psprofiledump2.txt"
type %currentpath%\PowerShellProfileExample.ps1 >> %temp%\Microsoft.PowerShell_profile.ps1 
DEL %psplctn%
copy /y %temp%\Microsoft.PowerShell_profile.ps1 %psplctn%
type %temp%\psprofiledump2.txt >> %psplctn%
GOTO install
:ifpsprofildsntexists
cls
IF NOT EXIST C:\Users\%username%\Documents\WindowsPowerShell (
    MKDIR C:\Users\%username%\Documents\WindowsPowerShell
)
copy /y %currentpath%\PowerShellProfileExample.ps1 C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
SET "psplctn= C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
copy /y %currentpath%\PowerShellProfileExample.ps1 C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
cls
GOTO install
:install
cls
copy /y %currentpath%\powah.bat C:\Users\%username%\Documents\WindowsPowerShell\powah.bat
IF EXIST %temp%\powahds (
    RMDIR %temp%\powahds
)

copy /y %currentpath%\powah.bat C:\Users\%username%\Documents\WindowsPowerShell\powah.bat
IF NOT EXIST C:\Users\%username%\Documents\WindowsPowerShell\ds (
    MKDIR C:\Users\%username%\Documents\WindowsPowerShell\ds
)
cd %temp%
git clone https://github.com/nrdrch/powahds.git %temp%\powahds
xcopy /s /q /y %temp%\powahds C:\Users\%username%\Documents\WindowsPowerShell\ds
PowerShell -Command "Get-ChildItem C:\Users\%username%\Documents\WindowsPowerShell"
PowerShell -Command "Get-ChildItem C:\Users\%username%\Documents\WindowsPowerShell\ds"
GOTO Quit
:Quit
CLS
ECHO PLEASE RESTART POWERSHELL
