@ECHO OFF
title powah
CLS 
SET "pop= C:\Users\%username%\Documents\WindowsPowerShell\ds\popeye.txt"
SET "thms= C:\Users\%username%\Documents\WindowsPowerShell\ds\allposhthemes.txt"
SET "pop2= C:\Users\%username%\Documents\WindowsPowerShell\ds\popeye2.txt"
SET "pop3= C:\Users\%username%\Documents\WindowsPowerShell\ds\popeye3.txt"
CLS
:MENU
cls
Type %pop%
SET INPUT=
SET /P INPUT= Choose An Option (Or Q To Quit):  
IF /I '%INPUT%'=='1' GOTO themebyname
IF /I '%INPUT%'=='2' GOTO themesonline
IF /I '%INPUT%'=='3' GOTO upthemes
IF /I '%INPUT%'=='4' GOTO uppowah
IF /I '%INPUT%'=='5' GOTO MENU2
IF /I '%INPUT%'=='Q' GOTO Quit
CLS
GOTO MENU
:themebyname
CLS
Type %thms%
set theme=
set /p theme= Enter The Theme Name: 
IF /I '%theme%'=='glowsticks' GOTO exception
IF /I '%theme%'=='devious-diamonds' GOTO exception
GOTO usual
:usual
DEL C:\Users\%username%\Documents\WindowsPowerShell\ds\custom*
copy /y C:\Users\%username%\AppData\Local\Programs\oh-my-posh\themes\%theme%.omp.json C:\Users\%username%\Documents\WindowsPowerShell\ds\custom.omp.json
GOTO Reload
:exception
DEL C:\Users\%username%\Documents\WindowsPowerShell\ds\custom*
copy /y C:\Users\%username%\AppData\Local\Programs\oh-my-posh\themes\%theme%.omp.yaml C:\Users\%username%\Documents\WindowsPowerShell\ds\custom.omp.yaml
GOTO Reload
:themesonline
start https://ohmyposh.dev/docs/themes
GOTO Quit
:upthemes
SET "thmdir= C:\Users\%username%\AppData\Local\Programs\oh-my-posh\themes"
cd %TEMP%
IF EXIST %TEMP%\oh-my-posh (
    RMDIR /S /Q %TEMP%\oh-my-posh
)
git clone https://github.com/JanDeDobbeleer/oh-my-posh.git
xcopy /s /q /y %TEMP%\oh-my-posh\themes %thmdir%\ 
powershell -Command "Get-ChildItem -Path $HOME\AppData\Local\Programs\oh-my-posh\themes | Select-Object -ExpandProperty Name | Out-File $HOME\AppData\Local\Temp\pthemp.txt"
:: set "upnmls= powershell -Command "Get-ChildItem -Path $HOME\AppData\Local\Programs\oh-my-posh\themes | Select-Object -ExpandProperty Name | Out-File $HOME\AppData\Local\Temp\pthemp.txt"
:: Type %TEMP%\pthemp.txt > C:\Users\%username%\Documents\WindowsPowerShell\ds\allposhthemes.txt
cls
GOTO MENU
:Reload
powershell -Command [void]"{. $PROFILE; Clear-Host}"
GOTO Quit
:uppowah
SET "powahdir= C:\Users\%username%\Documents\WindowsPowerShell"
cd %TEMP%
IF EXIST %TEMP%\powah (
    RMDIR /S /Q %TEMP%\powah
)
git clone https://github.com/nrdrch/powah.git
copy /y %TEMP%\powah\powah.bat %powahdir%\powah.bat
copy /y %TEMP%\powah\ds\popeye.txt %pop%
copy /y %TEMP%\powah\ds\popeye2.txt %pop2%
copy /y %TEMP%\powah\ds\popeye3.txt %pop3%
copy /y %TEMP%\powah\ds\allposhthemes.txt %thms%

GOTO MENU
:MENU2
CLS

type %pop2%
SET /P INPUT= Choose An Option: 

IF /I '%INPUT%'=='1' GOTO newmodule
IF /I '%INPUT%'=='2' GOTO newmoduleparam
IF /I '%INPUT%'=='0' GOTO MENU


CLS
:newmodule
CLS

IF EXIST %TEMP%\modulebuilder.txt (
    DEL /q %TEMP%\modulebuilder.txt
)

IF EXIST %TEMP%\modulebuilder2.txt (
    DEL /q %TEMP%\modulebuilder2.txt
)


set /p alias= Create Custom ALias:  
ECHO What you type to Run   :%alias% >> %TEMP%\modulebuilder.txt
ECHO function Pop-PWH%alias% { >> %TEMP%\modulebuilder2.txt
ECHO     [CmdletBinding()] >> %TEMP%\modulebuilder2.txt
ECHO     param ( >> %TEMP%\modulebuilder2.txt
ECHO     )        >> %TEMP%\modulebuilder2.txt
set /p modulecode= Enter the Main Code you want to run: 
ECHO Code beeing executed   :%modulecode% >> %TEMP%\modulebuilder.txt
ECHO     %modulecode% >> %TEMP%\modulebuilder2.txt
echo } >> %TEMP%\modulebuilder2.txt
GOTO progr
cls

:newmoduleparam
cls
IF EXIST %TEMP%\modulebuilder.txt (
    DEL /q %TEMP%\modulebuilder.txt
)

IF EXIST %TEMP%\modulebuilder2.txt (
    DEL /q %TEMP%\modulebuilder2.txt
)


set /p alias= Create Custom ALias: 
ECHO What you type to Run   :%alias% >> %TEMP%\modulebuilder.txt
ECHO function Pop-PWH%alias% { >> %TEMP%\modulebuilder2.txt
ECHO     [CmdletBinding()] >> %TEMP%\modulebuilder2.txt

set /p paraname= Enter Name for Parameter(Optional): 
ECHO Name Of Parameter      :%paraname% >> %TEMP%\modulebuilder.txt
ECHO     param ( >> %TEMP%\modulebuilder2.txt

set /p paravalue= Enter Value for Parameter(Optional): 
ECHO Value Of Parameter     :%paravalue% >> %TEMP%\modulebuilder.txt
ECHO         $%paraname% = "%paravalue%" >> %TEMP%\modulebuilder2.txt
ECHO     )        >> %TEMP%\modulebuilder2.txt
set /p modulecode= Enter the Main Code you want to run: 
ECHO Code beeing executed   :%modulecode% >> %TEMP%\modulebuilder.txt
ECHO     %modulecode% >> %TEMP%\modulebuilder2.txt
echo } >> %TEMP%\modulebuilder2.txt


GOTO progr

:progr
cls

ECHO What You Configured:
type %TEMP%\modulebuilder.txt
type %pop3%
SET /P INPUT= Choose An Option: 

IF /I '%INPUT%'=='1' GOTO savemodule
IF /I '%INPUT%'=='2' GOTO MENU


:savemodule

IF NOT EXIST C:\Users\%username%\Documents\WindowsPowerShell\mods.psm1 (
    ECHO Import-Module "$HOME\Documents\WindowsPowerShell\mods.psm1" >> C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
)


ECHO New-Alias -Name %alias% -Value Pop-PWH%alias% >> C:\Users\%username%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
type %TEMP%\modulebuilder2.txt >> C:\Users\%username%\Documents\WindowsPowerShell\mods.psm1

:Quit
cls

ECHO If Your Theme DID NOT Load, Manually Reload Your PowerShellProfile. (e.g.: . $PROFILE)
