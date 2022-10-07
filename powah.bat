@ECHO OFF
title powah
CLS 

SET "pop= C:\Users\%username%\Documents\WindowsPowerShell\ds\popeye.txt"
SET "thms= C:\Users\%username%\Documents\WindowsPowerShell\ds\allposhthemes.txt"


CLS
:MENU

Type %pop%


SET INPUT=
SET /P INPUT= Choose An Option (Or Q To Quit):  

IF /I '%INPUT%'=='1' GOTO themebyname
IF /I '%INPUT%'=='2' GOTO themesonline
IF /I '%INPUT%'=='3' GOTO upthemes
IF /I '%INPUT%'=='4' GOTO uppowah
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
copy /y %TEMP%\powah\popeye.txt %pop%

:Quit
cls

ECHO If Your Theme DID NOT Load, Manually Reload Your PowerShellProfile. (e.g.: . $PROFILE)



