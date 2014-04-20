#!/bin/sh
cd
ln -fs dotfiles/vim/vim .vim
ln -fs dotfiles/vim/vimrc .vimrc

mkdir /tmp/ycm_build
cd /tmp/ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/cpp
make ycm_support_libs
cd ~
rm -rf /tmp/ycm_build
