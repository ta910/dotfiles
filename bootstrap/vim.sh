#!/bin/sh
VIM_PATH=$HOME/.vim

if [ ! -d ~/.vim/dein/ ]; then
  mkdir -p $VIM_PATH/dein
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh installer.sh $VIM_PATH/dein
fi

function create_symlink() {
  #=== after
  if [ ! -d $VIM_PATH/after/ ]; then
    mkdir -p $VIM_PATH/after/plugin
  fi
	ln -sf ~/w/github.com/locona/dotfiles/vim/after/plugin/release-comment.vim $VIM_PATH/after/plugin/release-comment.vim

  #=== ftplugin
  if [ ! -d $VIM_PATH/ftplugin ]; then
    mkdir -p $VIM_PATH/ftplugin
  fi
	ln -sf $HOME/w/github.com/locona/dotfiles/vim/ftplugin/*.vim $VIM_PATH/ftplugin/


  #=== vimrc.d/plugin
	if [ ! -d $VIM_PATH/vimrc.d/plugin ]; then
		mkdir -p $VIM_PATH/vimrc.d/plugin
	fi
	files=(basic color indent keybind syntax)
  #files=(basic bundle bundle.config color indent keybind syntax)
  for file in ${files[@]}; do
    ln -sf ~/w/github.com/locona/dotfiles/vim/vimrc.d/${file}.vim $VIM_PATH/vimrc.d/
  done
  ln -sf $HOME/w/github.com/locona/dotfiles/vim/vimrc.d/plugin/*.vim $VIM_PATH/vimrc.d/plugin/

  #=== toml
  tomls=(dein dein_lazy)
  for toml in ${tomls[@]}; do
    ln -sf ~/w/github.com/locona/dotfiles/vim/${toml}.toml $VIM_PATH
  done

  #=== colors
  if [ ! -d $VIM_PATH/colors ]; then
    mkdir -p $VIM_PATH/colors
  fi
  ln -sf ~/w/github.com/locona/dotfiles/vim/colors/*.vim $VIM_PATH/colors/
}

[ -e ~/.vimrc ]  || ln -s ~/w/github.com/locona/dotfiles/vim/vimrc ~/.vimrc
[ -e ~/.gvimrc ] || ln -s ~/w/github.com/locona/dotfiles/vim/gvimrc ~/.gvimrc

create_symlink
