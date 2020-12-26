#!/usr/bin/env bash
set -e

yay_packages=(
)

if !(type yay> /dev/null 2>&1); then
    echo "yay command not found. install homebrew"
    sudo pacman -S git base-devel &&
    git clone https://aur.archlinux.org/yay.git
    cd yay && makepkg -si --noconfirm && cd -
    rm -rf yay
else
    echo "yay command exist. skip installing homebrew"
fi

for pack in ${brew_packages[@]};do
    yay -S --noconfirm --sudoloop ${pack}
done
