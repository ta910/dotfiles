# docker
#-----------------------------------------------------

### docker run
alias dr="docker run -i -t"
alias dim="docker images"

# docker-compose
#-----------------------------------------------------
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dcd="docker-compose down -v"
alias dcdv="docker-compose down -v"
alias dcp="docker-compose ps"
alias dcb="docker-compose build"
alias dcf="docker-compose -f "

## docker cli
alias docker-run='docker run -it --rm'
alias docker-exec='docker exec -it'
alias docker-rm-exited='docker rm $(docker ps -a --filter 'status=exited' -q)'
alias docker-rm-all='docker rm -v $(docker ps -aq)'
alias docker-stop='docker stop $(docker ps -aq)'
alias docker-rmi='docker rmi'
alias docker-rmi-all='docker rmi -f $(docker images -aq)'
alias docker-rmi-none='docker rmi $(docker images -f "dangling=true" -q)'
alias docker-ps-all='docker ps -a'
alias docker-volume-ls='docker volume ls'
alias docker-volume-rm='docker volume rm $(docker volume ls -qf dangling=true)'
alias docker-image-ls='docker image ls'
alias docker-netork-ls='docker network ls'
alias docker-compose-down='docker-compose down --volumes'
