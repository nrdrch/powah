# powah
### Tiny Script To Update & Change [Oh-Posh-Themes](https://ohmyposh.dev/docs/) From The Command-line, Create Modules or Alias for PowerShell & Run A Lot Of Useful Things For Windows
## You Need: 
###### [App Installer](https://apps.microsoft.com/store/detail/appinstaller/9NBLGGH4NNS1?hl=de-de&gl=de)
###### [Git for Windows](https://gitforwindows.org/)
###### [some kind of Monospace Font](https://www.nerdfonts.com/font-downloads)
#### You Might Need To Change Your Execution Policy with: 
```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```
#### To Install This Use:
```
git clone https://github.com/nrdrch/powah.git $Env:TEMP\powah | cmd.exe /c $Env:TEMP\powah\init.bat
```
When it is done Installing, Restart PowerShell and enter powah "powah"
