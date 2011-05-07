#!/bin/sh

set -e

cat <<-VIM > ~/.vimrc
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
VIM

mkdir -p ~/.vim/{autoload,bundle,backup}

curl -s https://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/tpope/vim-rails.git
git clone https://github.com/matschaffer/vim-matschaffer.git
cd -
