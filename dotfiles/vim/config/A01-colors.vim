syntax enable
if g:isWin
    let s:curl_cmd = 'curl.exe'
    set termguicolors
else
    let s:curl_cmd = 'curl'
endif

if empty(glob("$VIMDIR/colors/apprentice.vim"))
    call system(
                \ s:curl_cmd . " -fLo " . expand("$VIMDIR/colors/apprentice.vim") .
                \ " --create-dirs https://raw.githubusercontent.com" .
                \ "/romainl/Apprentice/master/colors/apprentice.vim")
endif

colorscheme apprentice
