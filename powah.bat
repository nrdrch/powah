@ECHO OFF
title powah
CLS 

SET "pop= C:\Users\%username%\Documents\WindowsPowerShell\ds\popeye.txt"

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
powershell.exe -Command [void]"{. $PROFILE}"

GOTO Quit

:themesonline
powershell.exe -Command "Clear-Host"
start https://ohmyposh.dev/docs/themes


GOTO Quit

:Quit


CLS




