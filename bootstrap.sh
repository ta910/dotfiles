# dein.vim Install
mkdir -p ~/.vim/bundle
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh ~/.vim/bundle


# color scheme
## solarized
cd ~
mkdir ~/.vim/colors/
git clone git://github.com/altercation/vim-colors-solarized.git
mv solarized.vim ~/.vim/colors/
rm -rf vim-colors-solarized


