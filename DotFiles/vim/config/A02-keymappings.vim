nnoremap [prefix] <Nop>
nmap <Space>j [prefix]

nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap Y y$
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap <silent> [prefix]c <esc>ggVG"+y
nnoremap <silent> [prefix]t :terminal ++close bash<CR>
nnoremap <silent> [prefix]T :terminal ++close ++curwin bash<CR>
inoremap jj <esc>
inoremap <silent> <C-a> <esc>A
tnoremap <C-t> <C-w>N
