nnoremap [plugin] <Nop>
nnoremap [LSP] <Nop>
nnoremap [Git] <Nop>
nmap <Space>k [plugin]
nmap <Space>l [LSP]
nmap <Space>g [Git]

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

nnoremap <silent> [Git]s :Gstatus<CR>
nnoremap <silent> [Git]d :Gdiff<CR>
nnoremap <silent> [Git]a :Gwrite<CR>
nnoremap <silent> [Git]b :Gblame<CR>
nnoremap <silent> [Git]c :Gcommit<CR>

nmap ss <plug>(vaffle-open-selected-split)
nmap sv <plug>(vaffle-open-selected-vsplit)
