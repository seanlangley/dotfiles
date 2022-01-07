alias c='cd'
alias ..='cd ..'
alias l='ls -lh'
alias la='ls -lha'
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
alias fuck='cowsay \"FUCKKKKKKK!!!!!!\"'
# Use next few lines to add git prompt to shell
# Get git-prompt.sh here:
# wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh ~/.git-prompt.sh
source ~/.git-prompt.sh
PS1='\e[1;32m\u\e[1;33m@\e[1;31m\h\e[0m:\w [\t]$(__git_ps1 " (%s)")\n\$ '
# Use this line for prompt without git plugin
#PS1='\e[1;32m\u\e[1;33m@\e[1;31m\h\e[0m:\w [\t]\n\$ '
LS_COLORS='di=01;36:ln=00;95'
export TERM='screen-256color'

bin() {
    if [ "$#" -eq 0 ]; then
        printf "No files specified.\n"
        return 1
    fi
    if [ ! -d ~/.trash ]; then
        mkdir ~/.trash
    fi
    for file in "$@"; do
        if [ ! -e "$file" ]; then
            printf "File %s does not exist.\n" "$file"
            return 1
        fi
        fname=~/.trash/"$file"
        if [ -e "$fname" ]; then
            printf "%s exists. Replace? (enter or ^C)" "$fname"
            read
            rm -rf "$fname"
        fi
        mv "$file" "$fname"
    done
}
