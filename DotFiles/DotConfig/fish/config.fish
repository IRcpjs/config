# load config files
for p in {$HOME}/.config/fish/user_conf.d/*.fish
    source $p
end

# load local config file
if [ -e $HOME/.localrc ]; source $HOME/.localrc; end
