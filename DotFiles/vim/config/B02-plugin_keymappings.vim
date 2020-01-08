nnoremap <F5>  :QuickRun<CR>
nnoremap <F4>  :QuickRun -input =@+<CR>
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \     "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
nnoremap <silent><Space>f :Files<CR>
nnoremap <silent><Space>g :GFiles<CR>
nmap ss <Plug>(vaffle-open-selected-split)
nmap sv <Plug>(vaffle-open-selected-vsplit)
