# powah
### Tiny Script To Update & Change Oh-Posh-Themes From The Command-line (windows)


![![ShowCase](https://img.youtube.com/vi/5ucCfKmu/0.jpg)](https://www.youtube.com/watch?v=5ucCfKmu)

#### 1) Create a folder called "ds" in your WindowsPowerShell folder
#### 2) Move popeye.txt and custom.omp.json into your newly created folder. (ds)
#### 3) Add ( or replace ) this Line to your Powershell Profile: 
```
oh-my-posh init pwsh --config "$HOME\Documents\WindowsPowerShell\ds\custom.omp.json" | Invoke-Expression
```


If you wish to install Oh-My-Posh correctly follow the Instructions at:
```
https://ohmyposh.dev/docs/installation/windows
```
