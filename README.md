# powah
### Tiny Script To Change Oh-Posh-Themes From The Command-line (windows)
#### You might need to Set your Execution-Policy:
```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```
If you wish to install Oh-My-Posh correctly follow the Instructions at:
```
https://ohmyposh.dev/docs/installation/windows
```


#### 1) Create a folder called "ds" in your WindowsPowerShell folder
#### 2) Move popeye.txt and custom.omp.json into your newly created folder. (ds)
#### 3) Add ( or replace ) this Line to your Powershell Profile: 
```
oh-my-posh init pwsh --config "$HOME\Documents\WindowsPowerShell\ds\custom.omp.json" | Invoke-Expression
```

![![...](https://img.youtube.com/vi/VID/0.jpg)](https://www.youtube.com/watch?v=VID)
