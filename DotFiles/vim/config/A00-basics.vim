setglobal number
setglobal cursorline
setglobal laststatus=2
setglobal showcmd
setglobal noswapfile
setglobal nobackup
setglobal viminfo=
setglobal noundofile
setglobal hidden
setglobal confirm
setglobal wildmenu
setglobal wildmode=longest,full
setglobal autoindent
setglobal smartindent
setglobal expandtab
setglobal tabstop=4 softtabstop=4 shiftwidth=4
augroup fileTypeIndent
    autocmd!
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2
augroup END
setglobal hlsearch
setglobal ignorecase
setglobal smartcase
setglobal nowrapscan
setglobal incsearch
setglobal encoding=utf-8
scriptencoding utf-8
setglobal fileencodings=utf-8,iso-2022-jp,enc-jp,sjis
setglobal fileformats=unix,dos,mac
setglobal backspace=indent,eol,start
setglobal helplang=ja,en
setglobal matchtime=1
setglobal pumheight=5
setglobal title
setglobal showmatch
setglobal completeopt+=menuone
let &shell= g:isWin ? 'powershell.exe' : '/bin/bash'
