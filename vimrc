set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-scripts/pbcopy.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-markdown'
Bundle 'bbommarito/vim-slim'
let g:ctrlp_root_markers = ['Gemfile']
Bundle 'kien/ctrlp.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-fugitive'
Bundle 'pangloss/vim-javascript'
Bundle 'VimClojure'
Bundle 'jpalardy/vim-slime'
Bundle 'nono/vim-handlebars'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-ragtag'
Bundle 'mattn/zencoding-vim'
Bundle 'avakhov/vim-yaml'
Bundle 'Align'

" From Janus
Bundle 'tpope/vim-unimpaired'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'edsono/vim-matchit'
Bundle 'ervandew/supertab'

" Powerline
let g:Powerline_symbols = 'fancy'
Bundle 'Lokaltog/vim-powerline'

"indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
" Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'matschaffer/netrw-v142'
Bundle 'matschaffer/vim-islime2'

Bundle 'matschaffer/vim-matschaffer'

filetype plugin indent on
