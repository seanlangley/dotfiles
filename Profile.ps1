# For this script to work, make sure to set the windows script execution policy:
# Set-ExecutionPolicy Unrestricted
New-Alias -Name c -Value cd
New-Alias -Name l -Value ls
New-Alias -Name which -Value get-command
Function .. {cd ..}
Function home {cd $HOME}
Function gs {git status}
Function gp {git pull}
Function ga {git add}
Function gf {git fetch}
Function gc {git commit --verbose}
Function gd {git diff}
