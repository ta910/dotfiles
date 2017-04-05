# override default command
#---------------------------------------------------------------------
alias mvim="/Applications/MacVim.app/Contents/bin/mvim"
alias ali='vim $HOME/.zsh/src/aliases.zsh'
alias exp='vim $HOME/.zsh/src/exports.zsh'
alias vi="mvim -g"
alias mv="mv -i"
alias rm="rm -i"
alias cp='cp -i'

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

alias -g lo="$LOCONA"
alias -g dot="$LOCONA/dotfiles"
alias -g ignis="$LOCONA/Ignis"
alias -g es="$LOCONA/espeon"
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
GOPUSHUB="$HOME/gopus/src/github.com/locona"
alias -g gopus="$HOME/gopus"
alias -g gocha="$GOPUSHUB/gocha"
alias -g gabula="$GOPUSHUB/gabula"

# alias ag="ag --pager='less -R'"

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
alias dsa='python manage.py startapp'
alias dt='python manage.py test'
#### settings
alias -g sce='--settings=CE_app.settings'
alias -g sadmin='--settings=settings.admin'
alias -g ssn='--settings=snoopy.config.settings.test'

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
