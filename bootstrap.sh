#!/bin/sh

if [ ! -d ~/.vim/bundle/ ]; then
  mkdir -p ~/.vim/bundle
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh installer.sh ~/.vim/bundle
fi

function create_symlink() {
  if [ ! -d ~/.vim/after/ ]; then
    mkdir -p ~/.vim/after/plugin
    ln -sf ~/dotfiles/vim/after/release-comment.vim ~/.vim/after/plugin/release-comment.vim
  else
    ln -sf ~/dotfiles/vim/after/release-comment.vim ~/.vim/after/plugin/release-comment.vim
  fi
  if [ -d ~/.vim/colors/ ]; then
    ln -sf ~/dotfiles/vim/colors/solarized.vim ~/.vim/colors
  else
    mkdir ~/.vim/colors/
    ln -sf ~/dotfiles/vim/colors/solarized.vim ~/.vim/colors
  fi

  files=(basic bundle bundle.config color indent keybind)

  for file in ${files[@]}; do
    echo "${file}.vim"
    ln -sf ~/dotfiles/vim/${file}.vim ~/.vim/.vimrc.${file}
  done
}

[ -e ~/.vimrc ] || ln -s ~/dotfiles/vimrc ~/.vimrc

if [ -d ~/.vim/ ]; then
  echo "True"
  create_symlink
else
  echo "Not ~/.vim/ So make directory ~/.vim/"
  mkdir ~/.vim/
  create_eymlink
fi



