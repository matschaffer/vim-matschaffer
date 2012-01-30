" Stuff screen to re-run last command
" Requires appswitch to be installed and expects you're running MacVim
" http://sabi.net/nriley/software/
" This could be better
map <leader>zz :call <SID>ScreenRerun()<CR>
fun! s:ScreenRerun()
  call s:ScreenSend(" -X stuff ''")
endf

" Run a test file in screen using ./script/test
map <leader>zt :call <SID>ScreenTest(expand("%"))<CR>
fun! s:ScreenTest(file)
  call s:ScreenSend(" -X stuff './script/test ".a:file."'")
endf

fun! s:ScreenSend(command)
  call system("appswitch -a Terminal")
  call system("appswitch -a MacVim")
  if exists("t:sl_config")
    call system("screen -S " . t:sl_config["sessionname"] . " -p " . t:sl_config["windowname"] . command)
  else
    call system("screen" . a:command)
  end
endf

" Set the screen stuff config
map <leader>zv :call <SID>ScreenConfig()<CR>
fun! s:ScreenConfig()
  if !exists("t:slime_config")
    let t:sl_config = {"sessionname": "", "windowname": "0"}
  end
  let t:sl_config["sessionname"] = input("screen session name: ", t:sl_config["sessionname"])
  let t:sl_config["windowname"]  = input("screen window name: ",  t:sl_config["windowname"])
endf
