@ECHO OFF
title powah
CLS 
set "working=%~dp0"
set "pshome=C:\Users\%username%\Documents\WindowsPowerShell"

IF NOT EXIST %pshome%\ds (
    mkdir "%pshome%\ds"
)


IF NOT EXIST %pshome%\ds\popeye.txt (
    copy /y %working%\popeye.txt C:\Users\%username%\Documents\WindowsPowerShell\ds\popeye.txt
)

SET "pop= C:\Users\%username%\Documents\WindowsPowerShell\ds\popeye.txt"
cd %pshome%\ds

IF NOT EXIST %pshome%\ds\custom.omp.json (
    powershell.exe -Command "New-Item custom.omp.json -Type File -Force"
)





CLS
:MENU

Type %pop%


SET INPUT=
SET /P INPUT= Choose An Option:  


IF /I '%INPUT%'=='1' GOTO themebyname
IF /I '%INPUT%'=='2' GOTO themesonline
IF /I '%INPUT%'=='Q' GOTO Quit
CLS
GOTO MENU



:themebyname
powershell.exe -Command "Clear-Host"

set /p theme= Enter The Theme Name: 
copy /y C:\Users\%username%\AppData\Local\Programs\oh-my-posh\themes\%theme%.omp.json C:\Users\%username%\Documents\WindowsPowerShell\ds\custom.omp.json
powershell.exe -Command [void]"{. $PROFILE; Clear-Host}"

GOTO Quit

:themesonline
powershell.exe -Command "Clear-Host"
start https://ohmyposh.dev/docs/themes


GOTO Quit

:Quit


CLS




