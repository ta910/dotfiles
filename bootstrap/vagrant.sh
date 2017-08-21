#!/bin/sh

W_VAGRANT_PATH=$HOME/w/github.com/locona/dotfiles/vagrant
SSH_PATH=$HOME/.ssh

if [ -d $W_VAGRANT_PATH/.ssh ]; then
  [ -e $SSH_PATH/vagrant ]     || ln -s ~/w/github.com/locona/dotfiles/vagrant/vagrant $SSH_PATH/vagrant
  [ -e $SSH_PATH/vagrant.pub ] || ln -s ~/w/github.com/locona/dotfiles/vagrant/vagrant.pub $SSH_PATH/vagrant.pub

  chmod 0600 $SSH_PATH/vagrant
  chmod 0600 $SSH_PATH/vagrant.pub
fi
