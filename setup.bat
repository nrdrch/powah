ECHO OFF

SET "mypath=%"

cd %USERPROFILE%\Documents\WindowsPowerShell\
IF NOT EXIST Microsoft.PowerShell_profile.ps1 ( 
    powershell -Command "New-Item Microsoft.PowerShell_profile.ps1 -Type File -Force"
) 

cd %USERPROFILE%\Documents\WindowsPowerShell
IF NOT EXIST ds (
    mkdir ds
) 

cd %USERPROFILE%\Documents\WindowsPowerShell\ds
IF NOT EXIST custom.omp.json ( 
    powershell -Command "New-Item custom.omp.json -Type File -Force"

) 


powershell -Command ". $PROFILE; Clear-Host"


exit
