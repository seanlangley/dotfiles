New-Alias -Name c -Value cd
New-Alias -Name l -Value ls
New-Alias -Name which -Value get-command
Function .. {cd ..}
Function gs {git status}
Function ga {git add}
Function gf {git fetch}
remove-item alias:curl 
