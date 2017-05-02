#!/bin/sh

VIM_PATH=$HOME/.config/nvim
DOTFILES_PATH=$HOME/w/github.com/locona/dotfiles
DOTFILES_NEOVIM_PATH=$DOTFILES_PATH/neovim

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
	ln -sf $DOTFILES_NEOVIM_PATH/after/plugin/release-comment.vim $VIM_PATH/after/plugin/release-comment.vim

  if [ ! -d $VIM_PATH/ftplugin ]; then
    mkdir -p $VIM_PATH/ftplugin
  fi
	ln -sf $DOTFILES_NEOVIM_PATH/ftplugin/*.vim $VIM_PATH/ftplugin/

	if [ ! -d $VIM_PATH/vimrc.d/plugin ]; then
		mkdir -p $VIM_PATH/vimrc.d/plugin
	fi
	files=(basic color indent keybind syntax)
  #files=(basic bundle bundle.config color indent keybind syntax)
  for file in ${files[@]}; do
    ln -sf $DOTFILES_NEOVIM_PATH/vimrc.d/${file}.vim $VIM_PATH/vimrc.d/
  done

  tomls=(dein dein_lazy)
  for toml in ${tomls[@]}; do
    ln -sf $DOTFILES_NEOVIM_PATH/${toml}.toml $VIM_PATH
  done

  ln -sf $DOTFILES_NEOVIM_PATH/vimrc.d/plugin/*.vim $VIM_PATH/vimrc.d/plugin/
}

[ -e $VIM_PATH/init.vim ]  || ln -s $DOTFILES_NEOVIM_PATH/init.vim $VIM_PATH/init.vim

create_symlink
