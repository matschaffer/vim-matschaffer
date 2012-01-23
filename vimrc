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
Bundle 'kien/ctrlp.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-fugitive'

Bundle 'Simple-Javascript-Indenter'
Bundle 'closetag.vim'

Bundle 'VimClojure'
Bundle 'jpalardy/vim-slime'

Bundle 'matschaffer/vim-matschaffer'

filetype plugin indent on
