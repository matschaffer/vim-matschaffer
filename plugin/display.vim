syntax on
set number

" Show normal-mode commands as you type
set showcmd

" Show whitespace as unicode chars
set list listchars=tab:‣\ ,trail:\ ,extends:…,precedes:…,nbsp:˖

" unless it's golang
autocmd FileType go set nolist

" Mark the 81st column magenta
highlight OverLength ctermbg=Magenta ctermfg=white guibg=#592929
match OverLength /\%81v./

set background=dark
colorscheme solarized
