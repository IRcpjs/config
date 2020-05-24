#!/usr/bin/env bash

if [ "$OS" == "Windows_NT" ]; then
    export MSYS='winsymlinks:nativestrict'
    mkdir -p /c/Users/$USER/AppData/Roaming/Hyper
    ln -sfnv $PWD/DotFiles/DotConfig/Hyper/.hyper.js /c/Users/$USER/AppData/Roaming/Hyper/.hyper.js
fi

for dotfile in DotFiles/*;do
    if [ $dotfile = DotFiles/DotConfig ]; then continue; fi
    ln -sfnv $PWD/$dotfile $HOME/.${dotfile##*/}
done

mkdir -p $HOME/.config
for dotconfigfile in DotFiles/DotConfig/*;do
    ln -sfnv $PWD/$dotconfigfile $HOME/.config/${dotconfigfile##*/}
done
