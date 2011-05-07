#!/bin/sh

set -e

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak

cat <<-VIM > ~/.vimrc
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
VIM

mkdir -p ~/.vim/{autoload,bundle,backup}

curl -s https://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim

git_bundle() {
  local url="$1"
  local base="$HOME/.vim/bundle"
  local name=`echo "$url" | awk -F/ '{print $NF}' | sed 's/.git$//'`
  local directory="$base/$name"
  if [[ -d "$directory" ]]; then
    echo "Updating $url..."
    cd "$directory"
    git pull
    cd - > /dev/null
  else
    echo "Retrieving $url..."
    git clone "$url" "$directory"
  fi
}

git_bundle https://github.com/tpope/vim-rails.git
git_bundle https://github.com/matschaffer/vim-matschaffer.git
git_bundle https://github.com/tpope/vim-fugitive.git
git_bundle https://github.com/mileszs/ack.vim.git
