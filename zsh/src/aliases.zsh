# override default command
#---------------------------------------------------------------------
alias mvim="/Applications/MacVim.app/Contents/bin/mvim"
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
LOCONA="$HOME/w/github.com/locona"
alias -g ho="$HOME"
alias -g gi="$HOME/w/github.com"
alias -g lo="$HOME/w/github.com/locona"
alias -g dot="$HOME/w/github.com/locona/dotfiles"
alias -g ignis="$HOME/w/github.com/locona/Ignis"
alias -g es="$HOME/w/github.com/espeon"
alias -g dj="$HOME/w/github.com/django/django"
alias -g re="$HOME/w/github.com/django_rest_framework"
alias -g react="$HOME/w/github.com/locona/react_django_boilerplate"
alias -g ce="$HOME/w/github.com/creditengine/CE_app"
alias -g cw="/Users/locona/w/github.com/locona/crawler"
alias -g ra="$HOME/w/github.com/locona/raaiki"
alias -g waseda="$HOME/w/github.com/locona/waseda"
alias -g sn="$HOME/w/github.com/creditengine/snoopy"
alias -g pylib="$HOME/.anyenv/envs/pyenv/versions/ce_app/lib/python3.5/site-packages"
alias -g crea="$HOME/w/github.com/creasty/"
alias -g hub="$HOME/w/github.com/locona/go-hub"
alias -g slack="$HOME/w/github.com/locona/go-slack"
alias -g zdir="$HOME/.zsh/src"
alias -g xm="/Applications/XMTrading.app/drive_c/Program Files/XMTrading MT4/MQL4"


# go working space
#----------------------------------------------------------
alias -g gopus="$HOME/gopus"
alias -g gocha="$HOME/gopus/src/github.com/src/gocha"
alias -g gabula="$HOME/gopus/src/github.com/locona/gabula"

# alias ag="ag --pager='less -R'"

# Git
#---------------------------------------------------------------------
alias g='git'

# python
alias ip='ipython'
alias pf='pip freeze'

# Django
#---------------------------------------------------------------------
alias dm='python manage.py migrate'
alias dmm='python manage.py makemigrations'
alias dsa='python manage.py startapp'
alias dt='python manage.py test --settings=snoopy.config.settings.test'
alias cdt='python manage.py test'

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
