#!/bin/sh

set -e

mkdir -p ~/.vim/{bundle,backup}

if ! [[ -d ~/.vim/bundle/vundle ]]; then
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

if ! [[ -d ~/.vim/bundle/vim-matschaffer ]]; then
  git clone http://github.com/matschaffer/vim-matschaffer.git ~/.vim/bundle/vim-matschaffer
fi

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak

ln -s ~/.vim/bundle/vim-matschaffer/vimrc ~/.vimrc
