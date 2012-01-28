syntax on
set number

" Show normal-mode commands as you type
set showcmd

" Show cursor and file position
set ruler

" Show whitespace as unicode chars
set listchars=tab:‣\ ,trail:\ ,extends:…,precedes:…,nbsp:˖
set list

" Mark the 81st column magenta
highlight OverLength ctermbg=Magenta ctermfg=white guibg=#592929
match OverLength /\%81v./

colorscheme solarized
