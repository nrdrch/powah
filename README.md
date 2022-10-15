# powah
### Tiny Script To Update & Change Oh-Posh-Themes From The Command-line & Create Modules for PowerShell
## You Need https://gitforwindows.org/ and preferably some kind of Monospace https://www.nerdfonts.com/font-downloads Preinstalled.
[![Showcase](https://img.youtube.com/vi//0.jpg)](https://www.youtube.com/watch?v=)
#### You Might Need To Change Your Execution Policy with: 
```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```
#### To Install This Use:
```
Start-BitsTransfer -Source "https://github.com/nrdrch/powah/archive/refs/heads/main.zip" -Destination $Env:temp\main.zip | tar -xf main.zip
```
```
git clone https://github.com/nrdrch/powah.git $Env:TEMP\powah | cmd.exe /c $Env:TEMP\powah\init.bat
```
When it is done Installing, Restart PowerShell and enter powah "powah"
Start-BitsTransfer -Source 
