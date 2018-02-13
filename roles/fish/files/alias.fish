# Git

alias gs="git status"
alias gc="git checkout"
alias gpo="git push -u origin"
alias gp="git push"
alias gm="git commit -m"
alias gd="git diff"
alias gb="git branch"
alias ga="git add"
alias gis="git stash"
alias grh="git reset HEAD"

# Mysql
alias strmysql="sudo service mysql start"
alias stpmysql="sudo service mysql stop"
alias stsmysql="sudo service mysql status"

# Go
alias gi="go install ./..."
alias gwi="watch go install ./..."
alias gwl="watch -n5 golint (go list ./... | grep -v vendor | grep -v proto)"

# Copy shh key
alias cps="pbcopy < ~/.ssh/id_rsa.pub"
