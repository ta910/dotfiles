#!/bin/sh

function create_symlink() {
  if [ -d $HOME/.zsh/src ]; then
    ln -sf $HOME/w/github.com/locona/dotfiles/zsh/src/*.zsh $HOME/.zsh/src/
  else
    mkdir -p $HOME/.zsh/src
    ln -sf $HOME/w/github.com/locona/dotfiles/zsh/src/*.zsh $HOME/.zsh/src/
  fi

  [ -e $HOME/.zshrc ] || ln -s $HOME/w/github.com/locona/dotfiles/zsh/zshrc
  [ -e $HOME/.zshenv ] || ln -s $HOME/w/github.com/locona/dotfiles/zsh/zshenv
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


if [ ! `which anyenv` ]; then
  # export is in zsh/src/exports.zsh
  git clone https://github.com/riywo/anyenv $HOME/.anyenv
  exec $SHELL -l

  anyenv install pyenv
  pyenv install 3.5.2
  pyenv global 3.5.2

  anyenv install goenv
  goenv install 1.8
  goenv global 1.8
fi


if [ ! `which direnv` ]; then
  brew install direnv
fi
