#!/usr/bin/env bash

for dotfile in Dotfiles/*;do
    if [ $dotfile = Dotfiles/DotConfig ]; then continue; fi
    ln -sfnv $PWD/$dotfile $HOME/.${dotfile##*/}
done

mkdir -p $HOME/.config
for dotconfigfile in DotFiles/DotConfig/*;do
    ln -sfnv $PWD/$dotconfigfile $HOME/.config/${dotconfigfile##*/}
done
