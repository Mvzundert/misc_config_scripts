alias dockers='open -a Docker'
alias dcrm='docker rm $(docker ps -a -q)'
alias dcirm='docker rmi $(docker images -q)'
alias dcw='docker-compose exec workspace bash'
alias dcs='docker-compose stop'
alias dcu='docker-compose up -d'

###########################
# Docker when using kali
############################
alias kali='docker-compose exec crb_kali /bin/bash'
alias kaliz='docker-compose exec crb_kali /bin/zsh'