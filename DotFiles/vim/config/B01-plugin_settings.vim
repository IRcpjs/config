try
command! -nargs=0 Fq call fzf#run({
\   'source': 'ghq list --full-path',
\   'sink': 'Vaffle',
\})

let g:lsp_signs_enabled =  0
let g:previm_enable_realtime=1
if g:isWSL
    let g:previm_open_cmd =
                \ '/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'
    let g:previm_wsl_mode = 1
endif
let g:sonictemplate_vim_template_dir=[expand("$VIMDIR/templates")]
let g:vaffle_auto_cd = 1
let g:vaffle_open_selected_split_position = 'rightbelow'
let g:vaffle_open_selected_vsplit_position = 'rightbelow'
if has('python3')
    let g:UltiSnipsExpandTrigger="<c-k>"
    let g:UltiSnipsJumpForwardTrigger="<c-n>"
    let g:UltiSnipsJumpBackwardTrigger="<c-p>"
    let g:UltiSnipsEditSplit="horizontal"
    let g:UltiSnipsSnippetDirectories = [expand('$VIMDIR/ultisnips')]
endif

call asyncomplete#register_source(
\   asyncomplete#sources#ultisnips#get_source_options({
\   'name': 'ultisnips',
\   'whitelist': ['*'],
\   'completor': function('asyncomplete#sources#ultisnips#completor'),
\}))
catch
endtry
