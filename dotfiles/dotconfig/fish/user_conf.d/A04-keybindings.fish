function fish_user_key_bindings
    bind -M insert \ex clear
    bind -M insert \eg change_repository
    bind -M insert \ef '__fzf_find_file'
    bind -M insert \eh '__fzf_reverse_isearch'
    bind -M insert \ec '__fzf_cd'
    bind -M insert \eC '__fzf_cd --hidden'
    bind -M insert \eo '__fzf_open'
    bind -M insert \ee '__fzf_open --editor'
end
