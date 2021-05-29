alias c='cd'
alias ..='cd ..'
alias l='ls -lh'
alias v='vim'
alias home='cd ~'
alias dt='cd ~/Desktop'
alias gf='git fetch'
alias gl='git log --pretty=oneline --graph'
alias gd='git diff'
alias gs='git status'
alias gp='git pull'
alias ga='git add'
alias gc='git commit --verbose'
alias d='docker'
alias dc='docker-compose'
alias k='kubectl'
# Use next few lines to add git prompt to shell
# Get git-prompt.sh here:
# wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh ~/.git-prompt.sh
source ~/.git-prompt.sh
PS1='\e[1;32m\u\e[1;33m@\e[1;31m\h\e[0m:\w [\t]$(__git_ps1 " (%s)")\n\$ '
# Use this line for prompt without git plugin
#PS1='\e[1;32m\u\e[1;33m@\e[1;31m\h\e[0m:\w [\t]\n\$ '
LS_COLORS='di=01;36:ln=00;95'
