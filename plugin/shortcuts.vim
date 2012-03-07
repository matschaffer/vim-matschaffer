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

" Git helpers
nmap <leader>gc :call <SID>SourceTreeCommit()<CR>

" stree is not included in the AppStore version
" of SourceTree, but you can download it from
" http://downloads.atlassian.com/software/sourcetree/SourceTreeAppStoreCmdLineToolInstaller.pkg
function! s:SourceTreeCommit()
  call system("cd " . expand("%:p:h") . " && stree `git rev-parse --show-toplevel`")
endfunction

function! s:GitXCommit()
  call system("cd " . expand("%:p:h") . " && gitx -c")
endfunction

" Git `pub` current project, see url for source:
"   https://github.com/matschaffer/profile/blob/master/dotfiles/gitconfig
nmap <leader>gp :!cd %:p:h && git pub<CR>
