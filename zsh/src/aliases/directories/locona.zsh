## locona.zsh
# locona.zsh is customizing cd to locona's repo

GITHUB="$HOME/w/github.com"
LOCONA="$GITHUB/locona"

## excluding go repositories
alias -g lo="$LOCONA"
### dotfiles
#---------------------------------
DOTFILES=$LOCONA/dotfiles
alias dot="$DOTFILES"
alias dotvim="$DOTFILES/vim"
alias dotvimd="$DOTFILES/vim/vimrc.d"
alias dotplugin="$DOTFILES/vim/vimrc.d/plugin"
alias dotzsh="$DOTFILES/zsh"
alias dotvagrant="$DOTFILES/vagrant"
alias dotneo="$DOTFILES/neovim"


### locona
#---------------------------------
alias bell="$LOCONA/bellagio"
alias cw="$LOCONA/crawler"
alias es="$LOCONA/espeon"
alias ex="$LOCONA/expressio"
alias kaf="$LOCONA/kafka"
alias mach="$LOCONA/machine-learning"
alias nob="$LOCONA/noblesse"
alias umb="$LOCONA/umbra"
alias ven="$LOCONA/ventum"
alias xio="$LOCONA/xio"

## Go Respositories
#---------------------------------
GOPUSLOCONA="$HOME/gopus/src/github.com/locona"
alias glo="$GOPUSLOCONA"
alias spur="$GOPUSLOCONA/spur"
alias gabula="$GOPUSLOCONA/gabula"
alias ganesha="$GOPUSLOCONA/ganesha"
alias gx="$GOPUSLOCONA/xio-api"
