#!/bin/sh

set -e

mkdir -p ~/.vim/{bundle,backup}

if [[ -n "$RW" ]]; then
  PREFIX="git@github.com:"
else
  PREFIX="https://github.com/"
fi

if ! [[ -d ~/.vim/bundle/vundle ]]; then
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

if ! [[ -d ~/.vim/bundle/vim-matschaffer ]]; then
  git clone ${PREFIX}matschaffer/vim-matschaffer.git ~/.vim/bundle/vim-matschaffer
fi

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak

ln -s ~/.vim/bundle/vim-matschaffer/vimrc ~/.vimrc

vi +BundleInstall +qall
