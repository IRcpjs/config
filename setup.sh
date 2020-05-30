#!/usr/bin/env bash

for dotfile in DotFiles/*;do
    if [ $dotfile = DotFiles/DotConfig ]; then continue; fi
    ln -sfnv $PWD/$dotfile $HOME/.${dotfile##*/}
done

mkdir -p $HOME/.config
for dotconfigfile in DotFiles/DotConfig/*;do
    ln -sfnv $PWD/$dotconfigfile $HOME/.config/${dotconfigfile##*/}
done
