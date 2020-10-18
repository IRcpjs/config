nnoremap [plugin-prefix] <Nop>
nmap <Space>k [plugin-prefix]
nnoremap [LSP-prefix] <Nop>
nmap <Space>l [LSP-prefix]

nnoremap <silent> [plugin-prefix]5 :QuickRun<CR>
nnoremap <silent> [plugin-prefix]6 :QuickRun -input =@+<CR>
nnoremap <silent> [plugin-prefix]f :Files<CR>
nnoremap <silent> [plugin-prefix]g :GFiles<CR>

nnoremap <silent> [LSP-prefix]d :LspPeekDefinition<CR>
nnoremap <silent> [LSP-prefix]f :LspDocumentFormatSync<CR>
nnoremap <silent> [LSP-prefix]c :LspDocumentDiagnostics<CR>
nnoremap <silent> [LSP-prefix]n :LspNextError<CR>
nnoremap <silent> [LSP-prefix]b :LspPreviousError<CR>
nnoremap <silent> [LSP-prefix]r :LspRename<CR>

nmap ss <Plug>(vaffle-open-selected-split)
nmap sv <Plug>(vaffle-open-selected-vsplit)
