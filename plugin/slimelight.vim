" Stuff screen to re-run last command
" Requires appswitch to be installed and expects you're running MacVim
" This could be better
map <C-z><C-z> :call <SID>ScreenRerun()<CR>
fun! s:ScreenRerun()
  let command = " -X stuff ''"
  call system("appswitch -a Terminal")
  call system("appswitch -a MacVim")
  if exists("t:sl_config")
    call system("screen -S " . t:sl_config["sessionname"] . " -p " . t:sl_config["windowname"] . command)
  else
    call system("screen" . command)
  end
endf

" Set the screen stuff config
map <C-z><C-v> :call <SID>ScreenConfig()<CR>
fun! s:ScreenConfig()
  if !exists("t:slime_config")
    let t:sl_config = {"sessionname": "", "windowname": "0"}
  end
  let t:sl_config["sessionname"] = input("screen session name: ", t:sl_config["sessionname"])
  let t:sl_config["windowname"]  = input("screen window name: ",  t:sl_config["windowname"])
endf
