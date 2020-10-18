let s:nowShell = &shell
let &shell= g:isWin ? 'cmd.exe' : '/bin/bash'
if empty(glob("$VIMDIR/autoload/plug.vim"))
    call system("curl -fLo " . expand("$VIMDIR/autoload/plug.vim") . " --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
let &shell = s:nowShell

call plug#begin(expand("$VIMDIR/bundle"))
Plug 'vim-jp/vimdoc-ja'
Plug 'itchyny/lightline.vim'
Plug 'cocopon/vaffle.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-trailing-whitespace'
Plug 'thinca/vim-quickrun', {'on': 'QuickRun'}
Plug 'PProvost/vim-ps1'
Plug 'posva/vim-vue'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
if has('python3')
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
endif
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tyru/open-browser.vim'
Plug 'previm/previm', {'for': 'markdown'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'mattn/emmet-vim', {'for': 'html'}
call plug#end()
