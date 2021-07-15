# For this script to work, make sure to set the windows script execution policy:
# Set-ExecutionPolicy Unrestricted
# To get path of Profile.ps1: $profile
Set-PSReadlineKeyHandler -Key Tab -Function Complete
New-Alias -Name c -Value cd
New-Alias -Name l -Value ls
New-Alias -Name which -Value get-command
New-Alias -Name open -Value invoke-item
Function .. {cd ..}
Function home {cd $HOME}
Function gs {git status $args}
Function gp {git pull $args}
Function ga {git add $args}
Function gf {git fetch $args}
Function gitc {git commit --verbose $args}
Function gd {git diff $args}
Function glg {git log --pretty=oneline $args}
Function k {kubectl $args}
Function d {docker $args}

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
Set-PSReadlineOption -BellStyle None
