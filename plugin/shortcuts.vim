" Fast saving
nmap <leader>w :w!<cr>

" Spelling
nmap <silent> <leader>s :set spell!<CR>

" Show syntax highlighting groups
nmap <C-p>s :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
