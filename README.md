# powah
### Tiny Script To Update & Change Oh-Posh-Themes From The Command-line & Create Modules for PowerShell
#### You Need https://gitforwindows.org/ and preferably some kind of Monospace https://www.nerdfonts.com/font-downloads Preinstalled.
[![Showcase](https://img.youtube.com/vi//0.jpg)](https://www.youtube.com/watch?v=)
#### You Might Need To Change Your Execution Policy with: 
```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```
#### To Install This Use:
```
git clone https://github.com/nrdrch/powah.git $Env:TEMP\powah | cmd.exe /c $Env:TEMP\powah\init.bat
```
All you have to do to install my Project is just downloading the Repo and running init.bat 
If You don't have Oh-My-Posh Installed, or haven't even configured your $PROFILE, init.bat will also take care of that!
After that everything should work, Restart PowerShell if you had it open and enter "powah"
