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
nnoremap x "_x
vnoremap x "_x
nnoremap X "_X
vnoremap X "_X
nnoremap s "_s
vnoremap s "_s
nnoremap S "_S
vnoremap S "_S
inoremap jj <esc>
inoremap <silent> <C-a> <esc>A
nnoremap <up> i<Up><End><CR><esc>
inoremap <up> <Up><End><CR>
nnoremap <down> i<End><CR><esc>
inoremap <down> <End><CR>
tnoremap <C-t> <C-w>N
nnoremap <silent> [prefix]c <esc>ggVG"+y
nnoremap <silent> [prefix]t :terminal ++close bash<CR>
nnoremap <silent> [prefix]T :terminal ++close ++curwin bash<CR>
nnoremap <silent> [prefix]e :edit .<CR>
nnoremap <silent> [prefix]h :nohlsearch<CR>
