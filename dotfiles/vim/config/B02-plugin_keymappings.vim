nnoremap [plugin] <Nop>
nnoremap [LSP] <Nop>
nmap <Space>k [plugin]
nmap <Space>l [LSP]

nnoremap <silent> [plugin]5 :QuickRun<CR>
nnoremap <silent> [plugin]6 :QuickRun -input =@+<CR>
nnoremap <silent> [plugin]f :Files<CR>
nnoremap <silent> [plugin]g :GFiles<CR>

nnoremap <silent> [LSP]d :LspPeekDefinition<CR>
nnoremap <silent> [LSP]f :LspDocumentFormatSync<CR>
nnoremap <silent> [LSP]c :LspDocumentDiagnostics<CR>
nnoremap <silent> [LSP]n :LspNextError<CR>
nnoremap <silent> [LSP]b :LspPreviousError<CR>
nnoremap <silent> [LSP]r :LspRename<CR>

nmap ss <plug>(vaffle-open-selected-split)
nmap sv <plug>(vaffle-open-selected-vsplit)
