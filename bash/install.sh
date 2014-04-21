#!/bin/sh
if [ -e ~/.profile ]; then
  DEST_FILE=~/.profile
else
  DEST_FILE=~/.bashrc
fi
echo "source ~/dotfiles/bash/bashrc_common.sh\
" >> $DEST_FILE
