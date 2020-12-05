#!/usr/bin/env bash

for dotfile in dotfiles/*;do
    if [ $dotfile = dotfiles/dotconfig ]; then continue; fi
    ln -sfnv $PWD/$dotfile $HOME/.${dotfile##*/}
done

mkdir -p $HOME/.config
for dotconfigfile in dotfiles/dotconfig/*;do
    ln -sfnv $PWD/$dotconfigfile $HOME/.config/${dotconfigfile##*/}
done
