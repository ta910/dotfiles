export EDITOR=vim
export TERM=xterm-256color
export TWILIO_ACCOUNT_SID="dummy"
export TWILIO_AUTH_TOKEN="dummy"

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

export PATH=$PATH:/usr/local/sbin
export PATH="$HOME/.anyenv/bin:$PATH"

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export GOPATH=/Users/locona/gopus
export PATH=$PATH:$GOPATH/bin
export MAVEN_OPTS="-Xmx4096m"
# export SBT_OPTS="-Xms2048m -Xmx2048m -XX:ReservedCodeCacheSize=512m -XX:MaxMetaspaceSize=1024m"
export SBT_OPTS="-Xmx3G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xss12M"


# elastic
#-----------------------------
export ELASTICPATH=/usr/local/Cellar/elasticsearch/5.3.2/bin
# export XDG_CONFIG_HOME="~/.config"
# export ES_HEAP_SIZE=8g
# export ES_JAVA_OPTS=-Xms8g -Xmx8g

source $HOME/.zsh/src/confidentials.zsh
