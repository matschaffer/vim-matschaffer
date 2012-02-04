" Stuff screen to re-run last command
" Requires appswitch to be installed and expects you're running MacVim
" http://sabi.net/nriley/software/
" This could be better
map <leader>ee :call <SID>ScreenRerun()<CR>
fun! s:ScreenRerun()
  call s:ScreenSend(" -X stuff ''")
endf

" Run a test file in screen using ./script/test
map <leader>et :call <SID>ScreenTest(expand("%"))<CR>
fun! s:ScreenTest(file)
  call s:ScreenSend(" -X stuff './script/test ".a:file."'")
endf

" Run a test file in screen using ./script/test
map <leader>er :call <SID>ScreenRake()<CR>
fun! s:ScreenRake()
  call s:ScreenSend(" -X stuff 'rake'")
endf

" Merge current branch to master, test and deploy
" Assumes `git pub` is available, see url for source:
"   https://github.com/matschaffer/profile/blob/master/dotfiles/gitconfig
map <leader>ed :call <SID>ScreenDeliver()<CR>
fun! s:ScreenDeliver()
  call s:ScreenSend(" -X stuff 'git pub'")
  call s:ScreenSend(" -X stuff 'FEATURE=`git symbolic-ref HEAD`'")
  call s:ScreenSend(" -X stuff 'git checkout master'")
  call s:ScreenSend(" -X stuff 'git merge $FEATURE && git push origin master && rake test staging deploy'")
endf


fun! s:ScreenSend(command)
  call system("appswitch -a Terminal")
  call system("appswitch -a MacVim")
  if exists("t:sl_config")
    call system("screen -S " . t:sl_config["sessionname"] . " -p " . t:sl_config["windowname"] . a:command)
  else
    call system("screen" . a:command)
  end
endf

" Set the screen stuff config
map <leader>ev :call <SID>ScreenConfig()<CR>
fun! s:ScreenConfig()
  if !exists("t:slime_config")
    let t:sl_config = {"sessionname": "", "windowname": "0"}
  end
  let t:sl_config["sessionname"] = input("screen session name: ", t:sl_config["sessionname"])
  let t:sl_config["windowname"]  = input("screen window name: ",  t:sl_config["windowname"])
endf
