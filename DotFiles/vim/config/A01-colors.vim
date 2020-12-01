syntax enable
let s:curl_cmd = g:isWin ? 'curl.exe' : 'curl'

if empty(glob("$VIMDIR/colors/apprentice.vim"))
    call system(
                \ s:curl_cmd . " -fLo " . expand("$VIMDIR/colors/apprentice.vim") .
                \ " --create-dirs https://raw.githubusercontent.com" .
                \ "/romainl/Apprentice/master/colors/apprentice.vim")
endif

colorscheme apprentice
