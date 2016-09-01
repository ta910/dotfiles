#!/bin/sh

if [ ! -d ~/.vim/bundle/ ]; then
  mkdir -p ~/.vim/bundle
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh installer.sh ~/.vim/bundle
fi

function create_symlink() {
  #===Docs
  if [ ! -d ~/.vim/docs/ ]; then
    mkdir -p ~/.vim/docs/
  fi

  docs=(vim-submode)
  for doc in ${docs[@]}; do
    echo "${doc}"
    ln -sf ~/dotfiles/vim/docs/${doc}.md ~/.vim/docs/${doc}.md
  done

  #=== after
  if [ -d ~/.vim/after/ ]; then
    ln -sf /Users/locona/dotfiles/vim/after/plugin/release-comment.vim /Users/locona/.vim/after/plugin/release-comment.vim
  else
    mkdir -p ~/.vim/after/plugin
    ln -sf /Users/locona/dotfiles/vim/after/plugin/release-comment.vim /Users/locona/.vim/after/plugin/release-comment.vim
  fi

  #=== colors
  if [ -d ~/.vim/colors/ ]; then
    ln -sf ~/dotfiles/vim/colors/solarized.vim ~/.vim/colors
    ln -sf ~/dotfiles/vim/colors/atom-dark-256.vim ~/.vim/colors
    ln -sf ~/dotfiles/vim/colors/atom-dark.vim ~/.vim/colors
    ln -sf ~/dotfiles/vim/colors/badwolf.vim ~/.vim/colors
    ln -sf ~/dotfiles/vim/colors/goodwolf.vim ~/.vim/colors
    ln -sf ~/dotfiles/vim/colors/vividchalk.vim ~/.vim/colors
  else
    mkdir ~/.vim/colors/
    ln -sf ~/dotfiles/vim/colors/solarized.vim ~/.vim/colors
    ln -sf ~/dotfiles/vim/colors/atom-dark-256.vim ~/.vim/colors
    ln -sf ~/dotfiles/vim/colors/atom-dark.vim ~/.vim/colors
    ln -sf ~/dotfiles/vim/colors/badwolf.vim ~/.vim/colors
    ln -sf ~/dotfiles/vim/colors/goodwolf.vim ~/.vim/colors
    ln -sf ~/dotfiles/vim/colors/vividchalk.vim ~/.vim/colors
  fi

  files=(basic bundle bundle.config color indent keybind)

  for file in ${files[@]}; do
    echo "${file}.vim"
    ln -sf ~/dotfiles/vim/${file}.vim ~/.vim/.vimrc.${file}
  done
}

[ -e ~/.vimrc ]  || ln -s ~/dotfiles/vimrc ~/.vimrc
[ -e ~/.gvimrc ] || ln -s ~/dotfiles/gvimrc ~/.gvimrc
#=== Execute
if [ -d ~/.vim/ ]; then
  create_symlink
else
  echo "Not ~/.vim/ So make directory ~/.vim/"
  mkdir ~/.vim/
  create_eymlink
fi
