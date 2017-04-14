#!/bin/sh

if [ ! -d ~/.vim/dein/ ]; then
  mkdir -p ~/.vim/dein
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh installer.sh ~/.vim/dein
fi

function create_symlink() {
  #=== after
  if [ ! -d ~/.vim/after/ ]; then
    mkdir -p ~/.vim/after/plugin
  fi
	ln -sf ~/w/github.com/locona/dotfiles/vim/after/plugin/release-comment.vim ~/.vim/after/plugin/release-comment.vim

  if [ ! -d ~/.vim/ftplugin ]; then
    mkdir -p ~/.vim/ftplugin
  fi
	ln -sf $HOME/w/github.com/locona/dotfiles/vim/ftplugin/*.vim $HOME/.vim/ftplugin/

	if [ ! -d $HOME/.vim/vimrc.d/plugin ]; then
		mkdir -p $HOME/.vim/vimrc.d/plugin
	fi
	files=(basic color indent keybind syntax)
  #files=(basic bundle bundle.config color indent keybind syntax)
  for file in ${files[@]}; do
    ln -sf ~/w/github.com/locona/dotfiles/vim/vimrc.d/${file}.vim ~/.vim/vimrc.d/
  done

  tomls=(dein dein_lazy)
  for toml in ${tomls[@]}; do
    ln -sf ~/w/github.com/locona/dotfiles/vim/${toml}.toml ~/.vim
  done

  ln -sf $HOME/w/github.com/locona/dotfiles/vim/vimrc.d/plugin/*.vim $HOME/.vim/vimrc.d/plugin/

}

[ -e ~/.vimrc ]  || ln -s ~/w/github.com/locona/dotfiles/vim/vimrc ~/.vimrc
[ -e ~/.gvimrc ] || ln -s ~/w/github.com/locona/dotfiles/vim/gvimrc ~/.gvimrc

create_symlink
