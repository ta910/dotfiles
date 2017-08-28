#!/bin/sh

function create_symlink() {
  ln -sf $HOME/w/github.com/locona/dotfiles/gitconfig $HOME/.gitconfig
}

create_symlink

exec $SHELL -l
