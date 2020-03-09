try
command! -nargs=0 Fq call fzf#run({
\   'source': 'ghq list --full-path',
\   'sink': 'Vaffle',
\})

let g:previm_enable_realtime=1
let g:sonictemplate_vim_template_dir=[expand("$VIMDIR/templates")]
let g:vaffle_auto_cd = 1
let g:vaffle_open_selected_split_position = 'rightbelow'
let g:vaffle_open_selected_vsplit_position = 'rightbelow'
let g:neosnippet#snippets_directory=expand("$VIMDIR/snippets/")
let g:neosnippet#disable_runtime_snippets = {'_' : 1,}
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

call asyncomplete#register_source(
\   asyncomplete#sources#neosnippet#get_source_options({
\   'name': 'neosnippet',
\   'whitelist': ['*'],
\   'completor': function('asyncomplete#sources#neosnippet#completor'),
\}))
catch
endtry
