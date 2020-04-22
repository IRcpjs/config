nnoremap [plugin-prefix] <Nop>
nmap <Space>k [plugin-prefix]

nnoremap <silent> [plugin-prefix]5 :QuickRun<CR>
nnoremap <silent> [plugin-prefix]6 :QuickRun -input =@+<CR>
nnoremap <silent> [plugin-prefix]f :Files<CR>
nnoremap <silent> [plugin-prefix]g :GFiles<CR>

nmap ss <Plug>(vaffle-open-selected-split)
nmap sv <Plug>(vaffle-open-selected-vsplit)
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \     "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
xmap <C-k>     <Plug>(neosnippet_expand_target)
