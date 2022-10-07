# powah
### Tiny Script To Update & Change Oh-Posh-Themes From The Command-line (windows)
[![Showcase](https://img.youtube.com/vi/btP_ThG7QKI/0.jpg)](https://www.youtube.com/watch?v=btP_ThG7QKI)

#### 1) Create a folder called "ds" in your WindowsPowerShell folder
#### 2) Move popeye.txt and custom.omp.json into your newly created folder. (ds)
#### 3) Add ( or replace ) this Line to your Powershell Profile: 
```
oh-my-posh init pwsh --config "$HOME\Documents\WindowsPowerShell\ds\custom*" | Invoke-Expression
```
####

If you wish to install Oh-My-Posh correctly follow the Instructions at:
```
https://ohmyposh.dev/docs/installation/windows
```
