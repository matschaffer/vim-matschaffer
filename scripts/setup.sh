#!/bin/sh

set -e

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak

cat <<-VIM > ~/.vimrc
set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-scripts/pbcopy.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
Bundle 'plasticboy/vim-markdown'
Bundle 'wincent/Command-T'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-fugitive'

Bundle 'Simple-Javascript-Indenter'
Bundle 'closetag.vim'

Bundle 'VimClojure'
Bundle 'jpalardy/vim-slime'

Bundle 'matschaffer/vim-matschaffer'

filetype plugin indent on
VIM

mkdir -p ~/.vim/{bundle,backup}

if ! [[ -d ~/.vim/bundle/vundle ]]; then
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
