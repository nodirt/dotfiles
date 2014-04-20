#!/bin/sh
rm -rf /tmp/ycm_build
mkdir /tmp/ycm_build
cd /tmp/ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/cpp
make ycm_support_libs
cd ~
rm -rf /tmp/ycm_build
