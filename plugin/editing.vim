" Backspace over anything
set backspace=indent,eol,start

" Use 2-space tabs
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" remap jj to escape in insert mode
inoremap jj <Esc>
nnoremap JJJJ <Nop>

" Swap ; and :
nnoremap ; :
nnoremap : ;
nnoremap q; q:

" removes any empty spaces at end of the line when saving
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
