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

mkdir %USERPROFILE%\Documents\fonts
mkdir %USERPROFILE%\Documents\fonts\Meslo
powershell -Command "wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip -O $HOME\Documents\Melso.zip"
powershell -Command "tar -xf $HOME\Documents\Meslo.zip -C $HOME\Documents\fonts\Meslo"

powershell -Command ". $PROFILE; Clear-Host"


exit
