#!/bin/sh
sed -e

if [ `which anyenv` ]; then
  rbenv install 2.4.1
  rbenv global 2.4.1
  bundle install
fi
