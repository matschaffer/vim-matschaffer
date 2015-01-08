" Fold by syntax, start full open
set foldenable
set foldlevelstart=99

" Search as you type
set incsearch

" More bash-like tab completion
set wildmode=longest,list,full
set wildmenu

" Return cursor to start of edit after repeat
nmap . .`[

" Ignore case on search unless search has uppercase characters
set ignorecase
set smartcase

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/cache/*,*/*.jpg,*/*.png,*/*.pyc,*/out/*

" Use alt+arrows & backspace assuming they're set up to work for bash
inoremap <Esc><BS> <C-o>db

" netrw tree mode
let g:netrw_liststyle=3
