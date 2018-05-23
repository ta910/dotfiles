export EDITOR=vim
export TERM=xterm-256color

export HADOOP_HOME=/usr/local/Cellar/hadoop/2.8.0
export HIVE_HOME=/usr/local/Cellar/hive/2.1.1
export HADOOP_CLASSPATH=$HADOOP_CLASSPATH:$HADOOP_HOME/libexec/share/hadoop/tools/lib/*

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

export PATH=$PATH:/usr/local/sbin
export PATH="$HOME/.anyenv/bin:$PATH"

export PATH=$HOME/.rbenv/shims/bin:$PATH
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export GOPATH=/Users/locona/gopus
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/w/github.com/locona/kafka/kafka/bin
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HIVE_HOME/bin
export PATH=$HOME/.zsh/src/go_appengine:$PATH
# export MAVEN_OPTS="-Xmx4096m"
export SBT_OPTS="-Xms4096M -Xmx4096M -XX:+CMSClassUnloadingEnabled"

export NODE_ENV=development

# elastic
#-----------------------------
export ELASTICPATH=/usr/local/Cellar/elasticsearch/5.3.2/bin
# export XDG_CONFIG_HOME="~/.config"
# export ES_HEAP_SIZE=8g
# export ES_JAVA_OPTS=-Xms8g -Xmx8g

source $HOME/.zsh/src/confidentials.zsh
export SSH_KEY=$(cat ~/.ssh/conf.d/keys/id_rsa)


# KUBE
export KUBE_CONTEXT=$(kubectl config current-context)
export KUBE_NAMESPACE_IGNIS=ignis
