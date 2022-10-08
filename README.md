# powah
### Tiny Script To Update & Change Oh-Posh-Themes From The Command-line & Create Modules for PowerShell
#### (you need Oh-My-Posh and Git for Windows preinstalled for everything to work) 
[![Showcase](https://img.youtube.com/vi/btP_ThG7QKI/0.jpg)](https://www.youtube.com/watch?v=btP_ThG7QKI)
#### 1) Put powah.bat into your WindowsPowerShell Folder (where your Microsoft.PowerShell_profile.ps1 is located.) -If You Don't have a Profile file run: "notepad $PROFILE" in Powershell
#### 2) Put the folder "ds" in your "WindowsPowerShell" Folder
#### 3) Add ( or replace ) this Line to your Powershell Profile: 
```
oh-my-posh init pwsh --config "$HOME\Documents\WindowsPowerShell\ds\custom*" | Invoke-Expression
```
#### 4) If you want to execute the script with a single Command, you have to create a module (see moduleExample.psm1), Import it into Powershell & create an alias.(see PowerShellProfileExmaple.ps1)

### If you wish to install Oh-My-Posh correctly follow the Instructions at:
```
https://ohmyposh.dev/docs/installation/windows
```
