#!/bin/sh

# dein.vim Install

if [ -d ~/.vim/bundle/ ]; then
  mkdir -p ~/.vim/bundle
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh installer.sh ~/.vim/bundle
fi
#!/bin/sh

function create_symlink() {
  if [ -d ~/.vim/colors/ ]; then
    ln -sf ~/dotfiles/vim/colors/solarized.vim ~/.vim/colors
    echo "true color"
  else
    echo "false color"
    mkdir ~/.vim/colors/
    ln -sf ~/dotfiles/vim/colors/solarized.vim ~/.vim/colors
  fi

  files=(basic bundle bundle.config color indent key)

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
  echo "False"
  mkdir ~/.vim/
  create_eymlink
fi



