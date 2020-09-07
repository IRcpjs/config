set number
set cursorline
set laststatus=2
set showcmd
set noswapfile
set nobackup
set viminfo=
set noundofile
set hidden
set confirm
set wildmenu
set wildmode=longest,full
set autoindent
set smartindent
set expandtab
set tabstop=4 softtabstop=4 shiftwidth=4
augroup fileTypeIndent
    autocmd!
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2
augroup END
set hlsearch
set ignorecase
set smartcase
set nowrapscan
set incsearch
set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,iso-2022-jp,enc-jp,sjis
set fileformats=unix,dos,mac
set backspace=indent,eol,start
set helplang=ja,en
set matchtime=1
set pumheight=5
set title
set showmatch
set completeopt+=menuone
let &shell= g:isWin ? 'powershell.exe' : '/bin/bash'
set t_u7=
set t_RV=
