# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
HISTFILESIZE=999999999
alias grep='grep --color=auto'
alias v=vi
alias e='emacs -nw'
alias gst='git status'
alias gbr='git branch'
alias gbl='git blame'
alias gps='git push'
alias gpso='git push origin'
alias gpsu='git push upstream'

alias gpl='git pull'
alias gplo='git pull origin'
alias gplu='git pull upstream'
alias gplur='git pull upstream release'
alias gpluc='git pull upstream card_master'
alias gplrb='git pull --rebase'

alias glo='git log --oneline'
alias gl='git log'
alias gs='git show'
alias gsst='git show --stat'
alias grb='git rebase'
alias grsh='git reset HEAD'
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all :/'
alias gcm='git commit'

alias gco='git checkout'
alias gcor='git checkout release'
alias gcou='git checkout upstream'

alias gcl='git clean'
alias gcla='git clean -f -d'
alias gsth='git stash'
alias gsthp='git stash pop'
alias gdf='git diff'

alias gf='git fetch'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gfd='git fetch daemon'
alias gfv='git fetch vmm0'
alias grs='git reset'
alias c='clear'
alias glog='git log --oneline | grep'
# Git branch in prompt.
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@ 6?m=71z6y \ \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$"

