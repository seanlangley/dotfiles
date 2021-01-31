# For this script to work, make sure to set the windows script execution policy:
# Set-ExecutionPolicy Unrestricted
# Path of Profile.ps1: C:\WINDOWS\system32\WindowsPowerShell\v1.0\Profile.ps1
New-Alias -Name c -Value cd
New-Alias -Name l -Value ls
New-Alias -Name which -Value get-command
New-Alias -Name open -Value invoke-item 
Function .. {cd ..}
Function home {cd $HOME}
Function gs {git status}
Function gp {git pull}
Function ga {git add}
Function gf {git fetch}
Function gc {git commit --verbose}
Function gd {git diff}
