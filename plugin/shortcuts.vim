" Fast saving
nmap <leader>w :w!<cr>

" Spelling
nmap <silent> <leader>s :set spell!<CR>

" Show syntax highlighting groups
nmap <leader>p :call SynStack()<CR>
func! SynStack()
  if !exists("*synstack")
    return
  end
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endf

" Gitx
nmap <leader>gc :silent !cd %:p:h && gitx -c .<CR>

" Git `pub` current project, see url for source:
"   https://github.com/matschaffer/profile/blob/master/dotfiles/gitconfig
nmap <leader>gp :!cd %:p:h && git pub<CR>
