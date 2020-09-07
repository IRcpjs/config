augroup specificFile
    autocmd!
    autocmd BufNewFile,BufRead Vagrantfile  set filetype=ruby
    autocmd BufNewFile,BufRead bash_profile set filetype=bash
    autocmd BufNewFile,BufRead bashrc set filetype=bash
    autocmd BufNewFile,BufRead zshrc set filetype=zsh
    autocmd BufNewFile,BufRead zprofile set filetype=zsh
    autocmd BufNewFile,BufRead gitconfig set filetype=gitconfig
    autocmd BufNewFile,BufRead *.fish set filetype=sh
    autocmd BufNewFile,BufRead .gitconfig.local setlocal filetype=gitconfig
augroup END
