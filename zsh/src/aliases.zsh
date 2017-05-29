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
alias -g xm="/Applications/XMTrading.app/drive_c/Program Files/XMTrading MT4/MQL4"
alias -g ce="$CREDITENGINE/CE_app"
alias -g lendy="$CREDITENGINE/lendy"
alias -g sn="$CREDITENGINE/snoopy"

# go working space
#----------------------------------------------------------
GOPUSLOCONA="$HOME/gopus/src/github.com/locona"
GOPUS3SHAKE="$HOME/gopus/src/github.com/3-shake"
alias -g gopus="$HOME/gopus"
alias -g glo="$GOPUSLOCONA"
alias -g gocha="$GOPUSLOCONA/gocha"
alias -g gabula="$GOPUSLOCONA/gabula"
alias -g ganesha="$GOPUSLOCONA/ganesha"
alias -g ginsp="$GOPUSLOCONA/gin-spatium"

#-----------------------------------------------------
alias -g s="$GOPUS3SHAKE"
alias -g srec="$GOPUS3SHAKE/reckoner"
alias -g sapi="$GOPUS3SHAKE/reckoner-api"
alias -g sin="$GOPUS3SHAKE/reckoner-infra"
alias -g sinld="$GOPUS3SHAKE/reckoner-infra/local/docker"
alias -g scli="$GOPUS3SHAKE/reckoner-client-web"
alias -g scol="$GOPUS3SHAKE/reckoner-collector"
alias -g sag="$GOPUS3SHAKE/reckoner-aggregator"
alias -g sdmp="$GOPUS3SHAKE/reckoner-dmp-api"
alias -g smok="$GOPUS3SHAKE/mokuru-api"

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
alias gr="go run"
alias gb="go build ."
alias gt="go test"
alias gc="goose create"

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

alias -g tailkinesis="$GOPUS3SHAKE/reckoner-kinesis-tailf/reckoner-kinesis-tailf -stream reckoner-development-tracking-js | jq ."

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
