## locona.zsh
# locona.zsh is customizing cd to locona's repo

GITHUB="$HOME/w/github.com"
LOCONA="$GITHUB/locona"

## excluding go repositories
alias -g lo="$LOCONA"
### dotfiles
#---------------------------------
DOTFILES=$LOCONA/dotfiles
alias -g dot="$DOTFILES"
alias -g dotvim="$DOTFILES/vim"
alias -g dotvimd="$DOTFILES/vim/vimrc.d"
alias -g dotplugin="$DOTFILES/vim/vimrc.d/plugin"
alias -g dotzsh="$DOTFILES/zsh"
alias -g dotvagrant="$DOTFILES/vagrant"
alias -g dotneo="$DOTFILES/neovim"


### locona
#---------------------------------
alias -g bell="$LOCONA/bellagio"
alias -g cw="$LOCONA/crawler"
alias -g es="$LOCONA/espeon"
alias -g ex="$LOCONA/expressio"
alias -g kaf="$LOCONA/kafka"
alias -g mach="$LOCONA/machine-learning"
alias -g nob="$LOCONA/noblesse"
alias -g umb="$LOCONA/umbra"
alias -g ven="$LOCONA/ventum"
alias -g xio="$LOCONA/xio"

## Go Respositories
#---------------------------------
GOPUSLOCONA="$HOME/gopus/src/github.com/locona"
alias -g glo="$GOPUSLOCONA"
alias -g spur="$GOPUSLOCONA/spur"
alias -g gabula="$GOPUSLOCONA/gabula"
alias -g ganesha="$GOPUSLOCONA/ganesha"
alias -g gx="$GOPUSLOCONA/xio"
