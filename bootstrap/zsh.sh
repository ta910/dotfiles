#!/bin/sh

function create_symlink() {
  if [ -d $HOME/.zsh/src ]; then
    ln -sf $HOME/w/github.com/locona/dotfiles/zsh/src/*.zsh $HOME/.zsh/src/
  else
    mkdir -p $HOME/.zsh/src
    ln -sf $HOME/w/github.com/locona/dotfiles/zsh/src/*.zsh $HOME/.zsh/src/
  fi

  if [ -d $HOME/.zsh/src/aliases ]; then
    ln -sf $HOME/w/github.com/locona/dotfiles/zsh/src/aliases/*.zsh $HOME/.zsh/src/aliases
  else
    mkdir -p $HOME/.zsh/src/aliases
    ln -sf $HOME/w/github.com/locona/dotfiles/zsh/src/aliases/*.zsh $HOME/.zsh/src/aliases
  fi

  if [ -d $HOME/.zsh/src/aliases/commands ]; then
    ln -sf $HOME/w/github.com/locona/dotfiles/zsh/src/aliases/commands/*.zsh $HOME/.zsh/src/aliases/commands
  else
    mkdir -p $HOME/.zsh/src/aliases/commands
    ln -sf $HOME/w/github.com/locona/dotfiles/zsh/src/aliases/commands/*.zsh $HOME/.zsh/src/aliases/commands
  fi

  if [ -d $HOME/.zsh/src/aliases/directories ]; then
    ln -sf $HOME/w/github.com/locona/dotfiles/zsh/src/aliases/directories/*.zsh $HOME/.zsh/src/aliases/directories
  else
    mkdir -p $HOME/.zsh/src/aliases/directories
    ln -sf $HOME/w/github.com/locona/dotfiles/zsh/src/aliases/directories/*.zsh $HOME/.zsh/src/aliases/directories
  fi

  [ -e $HOME/.zshrc ] || ln -s $HOME/w/github.com/locona/dotfiles/zsh/zshrc $HOME/.zshrc
  [ -e $HOME/.zshenv ] || ln -s $HOME/w/github.com/locona/dotfiles/zsh/zshenv $HOME/.zshenv
}

if [ -d $HOME/.zsh ]; then
  create_symlink
else
  mkdir $HOME/.zsh
  create_symlink
fi

if [ ! -d $HOME/.zplug ]; then
  curl -sL --proto-redir -all,https https://zplug.sh/installer | zsh
fi


# if [ ! `which anyenv` ]; then
# export is in zsh/src/exports.zsh
exec $SHELL -l
# fi


#if [ ! `which direnv` ]; then
#  brew install direnv
#  exec $SHELL -l
#fi
