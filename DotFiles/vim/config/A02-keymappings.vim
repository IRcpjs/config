noremap <up> <Nop>
noremap <down> <Nop>
noremap <right> <Nop>
noremap <left> <Nop>
nnoremap [prefix] <Nop>
nmap <Space>j [prefix]

nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap Y y$
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap <up> i<Up><End><CR><esc>
nnoremap <down> i<End><CR><esc>
nnoremap x "_x
nnoremap X "_X
vnoremap x "_x
vnoremap X "_X
nnoremap s "_s
nnoremap S "_S
vnoremap s "_s
vnoremap S "_S
inoremap jj <esc>
inoremap <silent> <C-a> <esc>A
inoremap <up> <Up><End><CR>
inoremap <down> <End><CR>
tnoremap <C-n> <C-w>N
tnoremap <C-x> <C-w><C-C>

nnoremap <silent> [prefix]c <esc>ggVG"+y
nnoremap <silent> [prefix]e :edit .<CR>
nnoremap <silent> [prefix]h :nohlsearch<CR>
if g:isWin
    nnoremap <silent> [prefix]t :terminal ++close pwsh<CR>
    nnoremap <silent> [prefix]T :terminal ++close ++curwin pwsh<CR>
else
    nnoremap <silent> [prefix]t :terminal ++close bash<CR>
    nnoremap <silent> [prefix]T :terminal ++close ++curwin bash<CR>
endif
