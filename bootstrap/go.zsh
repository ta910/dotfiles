#!/bin/sh
sed -e

if [ `which anyenv` ]; then
  anyenv install goenv
  exec $SHELL -l
  goenv install 1.8
  goenv global 1.8
fi

if [ ! -d $HOME/gopus ]; then
  mkdir -p $HOME/gopus/src
fi
