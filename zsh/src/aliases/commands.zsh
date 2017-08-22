#### command.zsh
# command.zsh is aliases of customizing command,linux command and library command

source "$HOME/.zsh/src/aliases/commands/django.zsh"
source "$HOME/.zsh/src/aliases/commands/docker.zsh"
source "$HOME/.zsh/src/aliases/commands/golang.zsh"
source "$HOME/.zsh/src/aliases/commands/sbt.zsh"


# default
#---------------------------------
alias hist="history"
alias mv="mv -i"
alias rm="rm -i" alias cp='cp -i'
alias ps='ps aux'
alias pst='pstree'

# Git
#---------------------------------------------------------------------
alias g='git'

# list
#---------------------------------
alias ls='ls -GF'
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# ccat
#---------------------------------
alias cat='ccat'

# vim
#---------------------------------
alias mvim="/usr/local/Cellar/macvim/8.0-136/MacVim.app/Contents/bin/mvim"
alias vi="mvim -g"

# gsed
#---------------------------------
alias gs='gsed --in-place' # 's/target/converted/g' filepath

# gentime
alias gentime="export START=`echo "$(date -v -30H +%s)"` && export END=`echo "$(date -v -1M +%s)"`"

# edit
#---------------------------------
alias sshe="vim $HOME/.ssh/conf.d/hosts"
alias ali='vim $HOME/.zsh/src/aliases.zsh'
alias exp='vim $HOME/.zsh/src/exports.zsh'

# cqlsh
# ----------------------------------------------------
alias cql="cqlsh 127.0.0.1"

# tail kinesis
alias -g tailkinesis="$GOPUS3SHAKE/reckoner-kinesis-tailf/reckoner-kinesis-tailf -stream reckoner-dev-tracking-js | jq ."
alias -g tailkinesislog="$GOPUS3SHAKE/reckoner-kinesis-tailf/reckoner-kinesis-tailf -stream reckoner-dev-logging-agent | jq ."

# direnv
#-----------------------------------------------------
alias dire='direnv edit .'
alias dira='direnv allow'

# mysql -u root reckoner -N -e 'show tables' | grep "archive"| while read table; do mysql -u root -e "drop table $table" reckoner; done
