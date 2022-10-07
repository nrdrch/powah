# powah
### Tiny Script To Update & Change Oh-Posh-Themes From The Command-line (windows)
#### (you need Oh-My-Posh and Git for Windows preinstalled for everything to work) 
[![Showcase](https://img.youtube.com/vi/btP_ThG7QKI/0.jpg)](https://www.youtube.com/watch?v=btP_ThG7QKI)

#### 1) Create a folder called "ds" in your WindowsPowerShell folder
#### 2) Move popeye.txt, allposhthemes.txt and custom.omp.json into your newly created folder. (ds)
#### 3) Add ( or replace ) this Line to your Powershell Profile: 
```
oh-my-posh init pwsh --config "$HOME\Documents\WindowsPowerShell\ds\custom*" | Invoke-Expression
```
#### 4) If you want to execute the script with a single Command, you have to create a module (see moduleExample.psm1)
#### Import it into Powershell & create an alias.(see PowerShellProfileExmaple.ps1)

### If you wish to install Oh-My-Posh correctly follow the Instructions at:
```
https://ohmyposh.dev/docs/installation/windows
```
