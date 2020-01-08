syntax enable
let s:nowShell = &shell
let &shell= g:isWin ? 'cmd.exe' : '/bin/bash'

if empty(glob("$VIMDIR/colors/apprentice.vim"))
    call system("curl -fLo " . expand("$VIMDIR/colors/apprentice.vim") . " --create-dirs
                \ https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim")
endif
colorscheme apprentice

let &shell = s:nowShell
