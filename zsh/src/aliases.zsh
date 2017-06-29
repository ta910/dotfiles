# override default command
#---------------------------------------------------------------------
alias mvim="/Applications/MacVim.app/Contents/bin/mvim"
alias vi="mvim -g"

alias ali='vim $HOME/.zsh/src/aliases.zsh'
alias exp='vim $HOME/.zsh/src/exports.zsh'

alias mv="mv -i"
alias rm="rm -i"
alias cp='cp -i'
alias ps='ps aux'
alias cat='ccat'
# alias ctags="`brew --prefix`/bin/ctags"

# command options
#---------------------------------------------------------------------
alias -g G='| grep'
alias -g GE='| grep -e'
alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g S='| sort'
alias -g W='| wc'
alias -g X='| xargs'
alias -g XK='| xargs kill -9'
alias -g J='| jq .'
alias -g JL='| jq length'


alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

# list
#---------------------------------------------------------------------
alias ls='ls -GF'
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# pstree
#---------------------------------------------------------------------
alias pst='pstree'

# directories
#---------------------------------------------------------------------
GITHUB="$HOME/w/github.com"
LOCONA="$GITHUB/locona"
CREDITENGINE="$GITHUB/creditengine"
SHAKE="$GITHUB/3-shake"
alias -g ho="$HOME"
alias -g zdir="$HOME/.zsh/src"
alias -g pylib="$HOME/.anyenv/envs/pyenv/versions/3.5.2/lib/python3.5/site-packages"
alias -g gi="$GITHUB"
alias -g dj="$GITHUB/django/django"
alias -g crea="$GITHUB/creasty/"

# github.com/locona
#---------------------------------------------------------------------
alias -g lo="$LOCONA"
alias -g ura="$LOCONA/mygrad_urashima"

### tools
alias toolsweb="$HOME/.tools/3-shake/reckoner-web-api"

### gist
GIST="$LOCONA/gist"
alias -g gist="$GIST"
alias -g gistshake="$GIST/3shake"
alias -g gistwsn="$GIST/wsn"
alias -g gistlab="$GIST/lab/paper/wsn_virtualazation"
alias -g gistgin="$GIST/gin-lecti-association"
### dotfiles
DOTFILES=$LOCONA/dotfiles
alias -g dot="$DOTFILES"
alias -g dotvim="$DOTFILES/vim"
alias -g dotvimd="$DOTFILES/vim/vimrc.d"
alias -g dotplugin="$DOTFILES/vim/vimrc.d/plugin"
alias -g dotzsh="$DOTFILES/zsh"
alias -g dotvagrant="$DOTFILES/vagrant"
alias -g dotneo="$DOTFILES/neovim"

alias -g nob="$LOCONA/noblesse"
alias -g umb=$LOCONA/umbra
alias -g bell="$LOCONA/bellagio"
alias -g ignis="$LOCONA/Ignis"
alias -g es="$LOCONA/espeon"
alias -g mach="$LOCONA/machine-learning"
alias -g re="$GITHUB/django_rest_framework"
alias -g react="$LOCONA/react_django_boilerplate"
alias -g cw="$LOCONA/crawler"
alias -g ra="$LOCONA/raaiki"
alias -g ven="$LOCONA/ventum"
alias -g ex="$LOCONA/expressio"
alias -g grad="$LOCONA/grad_template/intermediate/resume"
alias -g xm="/Applications/XMTrading.app/drive_c/Program Files/XMTrading MT4/MQL4"
alias -g ce="$CREDITENGINE/CE_app"
alias -g lendy="$CREDITENGINE/lendy"
alias -g sn="$CREDITENGINE/snoopy"
alias -g sfront="$SHAKE/reckoner-frontend"

# go working space
#----------------------------------------------------------
GOPUSGITHUB="$HOME/gopus/src/github.com"
GOPUSLOCONA="$HOME/gopus/src/github.com/locona"
GOPUS3SHAKE="$HOME/gopus/src/github.com/3-shake"
### oss library
#======
alias goawssdk=$GOPUSGITHUB/aws/aws-sdk-go
alias goazure=$GOPUSGITHUB/Azure/azure-sdk-for-go
alias gopager=$GOPUSGITHUB/PagerDuty/go-pagerduty
alias goatlas=$GOPUSGITHUB/hashicorp/atlas-go

#====
alias -g gopus="$HOME/gopus"
alias -g glo="$GOPUSLOCONA"
alias -g spur="$GOPUSLOCONA/spur"
alias -g gocha="$GOPUSLOCONA/gocha"
alias -g gabula="$GOPUSLOCONA/gabula"
alias -g ganesha="$GOPUSLOCONA/ganesha"
alias -g ginsp="$GOPUSLOCONA/gin-spatium"
alias -g gotest="$GOPUSLOCONA/ganesha/test"

#-----------------------------------------------------
alias -g shake="$GOPUS3SHAKE"
alias -g srec="$GOPUS3SHAKE/reckoner"
alias -g sapi="$GOPUS3SHAKE/reckoner-api"
alias -g sin="$GOPUS3SHAKE/reckoner-infra"
alias -g sinld="$GOPUS3SHAKE/reckoner-infra/local/docker"
alias -g sinlddmp="$GOPUS3SHAKE/reckoner-infra/local/docker/scripts/reckoner-dmp-api"
alias -g scli="$GOPUS3SHAKE/reckoner-client-web"
alias -g scol="$GOPUS3SHAKE/reckoner-collector"
alias -g sag="$GOPUS3SHAKE/reckoner-aggregator"
alias -g slog="$GOPUS3SHAKE/reckoner-loginsight-aggr"
alias -g sdmp="$GOPUS3SHAKE/reckoner-dmp-api"
alias -g smok="$GOPUS3SHAKE/mokuru-api"
alias -g sweb="$GOPUS3SHAKE/reckoner-web-api"

# Git
#---------------------------------------------------------------------
alias g='git'

# python
alias ip='ipython'
alias pf='pip freeze'

# Django
#---------------------------------------------------------------------
alias dsu='python manage.py show_urls'
alias dsm='python manage.py showmigrations'
alias dmm='python manage.py makemigrations'
alias dm='python manage.py migrate'
alias dms='python manage.py dbshell'
alias dsa='python manage.py startapp'
alias dt='python manage.py test'
#### settings
alias -g sce='--settings=CE_app.settings'
alias -g sadmin='--settings=settings.admin'
alias -g ssn='--settings=snoopy.config.settings.test'
alias -g smaegari='--settings=settings.maegari_dev'

# Go
#-----------------------------------------------------
alias glr="go run"
alias glb="go build ."
alias glt="go test"
alias glc="goose create"

# direnv
#-----------------------------------------------------
alias dire='direnv edit .'
alias dira='direnv allow'

# gsed
#-----------------------------------------------------
alias gs='gsed --in-place' # 's/target/converted/g' filepath

# elasticsearch
#-----------------------------------------------------
alias elpl='elasticsearch-plugin'

# fluentd
#-----------------------------------------------------
alias flu='fluentd'

alias -g tailkinesis="$GOPUS3SHAKE/reckoner-kinesis-tailf/reckoner-kinesis-tailf -stream reckoner-dev-tracking-js | jq ."

# docker-compose
#-----------------------------------------------------
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dcd="docker-compose down -v"
alias dcdv="docker-compose down -v"
alias dcp="docker-compose ps"

alias ncu="$HOME/.anyenv/envs/nodenv/versions/7.8.0/lib/node_modules/npm-check-updates/bin/ncu"
alias npm-check-updates="$HOME/.anyenv/envs/nodenv/versions/7.8.0/lib/node_modules/npm-check-updates/bin/npm-check-updates"
alias create-react-app="$HOME/.anyenv/envs/nodenv/versions/7.8.0/lib/node_modules/create-react-app/index.js"


# Gradle
#-----------------------------------------------------
alias grl="./gradlew"
alias grlb="./gradlew build"


# spark
#-----------------------------------------------------
alias sshell="spark-shell"
alias ssub="spark-shell"
alias -g ML="--master local"


# sbt
#-----------------------------------------------------
alias sbtp="sbt package"
alias sbtc="sbt compile"
alias sbtr="sbt run"


# option
#-----------------------------------------------------
alias gentime="export START=`echo "$(date -v -30H +%s)"` && export END=`echo "$(date -v -1M +%s)"`"

# msyql
#-----------------------------------------------------
alias mysqlst="mysql.server start"



# ginkgo
#-----------------------------------------------------
alias gink="ginkgo -p"
