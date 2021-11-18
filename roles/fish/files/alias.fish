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
alias gu="git reset --hard HEAD~"

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

# Navigation
alias ll="ls -ahl"

# VPN
alias vpn="sudo openconnect --user=ig657 --juniper https://webvpn.york.ac.uk/its"

# XCLIP
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"

# Docker
alias drac="docker rm (docker ps -a -q)"
alias drai="docker rmi (docker images -q)"
alias druv="docker volume prune"
alias dluv="docker volume ls -f dangling=true"
alias dlac="docker ps -a"
alias dlrc="docker ps"

# Docker compose
alias dcu="docker-compose up"
alias dcd="docker-compose down"

# Firefox
alias ff="firefox"

# System
alias sizeof="du -sh"

alias ep="eyaml encrypt -p"
alias psql="docker run --network=host -v ~/psql_files:/home -it --rm postgres psql"

# Navigation
alias rep='cd ~/Repos'

