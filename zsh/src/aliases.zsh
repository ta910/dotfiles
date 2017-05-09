# override default command
#---------------------------------------------------------------------
alias mvim="/Applications/MacVim.app/Contents/bin/mvim"
alias vi="mvim -g"

alias ali='vim $HOME/.zsh/src/aliases.zsh'
alias exp='vim $HOME/.zsh/src/exports.zsh'

alias mv="mv -i"
alias rm="rm -i"
alias cp='cp -i'
alias pst='pstree'

# command options
#---------------------------------------------------------------------
alias -g G='| grep'
alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g S='| sort'
alias -g W='| wc'
alias -g X='| xargs'


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

### dotfiles
alias -g gist="$LOCONA/gist"
alias -g dot="$LOCONA/dotfiles"
alias -g dotvim="$LOCONA/dotfiles/vim"
alias -g dotvimd="$LOCONA/dotfiles/vim/vimrc.d"
alias -g dotplugin="$LOCONA/dotfiles/vim/vimrc.d/plugin"
alias -g dotzsh="$LOCONA/dotfiles/zsh"
alias -g dotneo="$LOCONA/dotfiles/neovim"

alias -g bell="$LOCONA/bellagio"
alias -g ignis="$LOCONA/Ignis"
alias -g es="$LOCONA/espeon"
alias -g mach="$LOCONA/machine-learning"
alias -g re="$GITHUB/django_rest_framework"
alias -g react="$LOCONA/react_django_boilerplate"
alias -g cw="$LOCONA/crawler"
alias -g ra="$LOCONA/raaiki"
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

#-----------------------------------------------------
alias -g shake="$GOPUS3SHAKE"
alias -g shakerec="$GOPUS3SHAKE/reckoner"
alias -g shakeapi="$GOPUS3SHAKE/reckoner-api"
alias -g shakein="$GOPUS3SHAKE/reckoner-infra"
alias -g shakecli="$GOPUS3SHAKE/reckoner-client-web"
alias -g shakecol="$GOPUS3SHAKE/reckoner-collector"
alias -g shakeag="$GOPUS3SHAKE/reckoner-aggregator"
alias -g mok="$GOPUS3SHAKE/mokuru-api"

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
alias gb="go build -o"
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
