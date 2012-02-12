" send (stop) to vim-slime (to stop overtone noise)
nmap <C-c>s :let @r="(stop)"<CR>o<ESC>V"rpV<C-c><C-c>ddk

" Send the entire file to vim-slime
nmap <C-c>f ggVG<C-c><C-c>
