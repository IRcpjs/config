if !has('gui_running')
    finish
endif

if !exists("g:colors_name") || g:colors_name != "apprentice"
    colorscheme apprentice
endif
setglobal cmdheight=1
setglobal guioptions+=c
setglobal guioptions-=m
setglobal guioptions-=M
setglobal guioptions-=t
setglobal guioptions-=T
setglobal guioptions-=r
setglobal guioptions-=R
setglobal guioptions-=l
setglobal guioptions-=L
if has('multi_byte_ime')
    hi Cursor guifg=bg guibg=Green gui=NONE
    hi CursorIM guifg=NONE guibg=Red gui=NONE
endif
cd $HOME
