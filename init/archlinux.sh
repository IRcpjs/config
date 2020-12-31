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

yay_not_installed=()
echo "check installed packages"
for pack in ${yay_packages[@]};do
    if yay -Qs ${pack} >/dev/null; then
        echo "${pack} is installed. skip"
    else
        echo "${pack} is not installed."
        yay_not_installed=("${yay_not_installed[@]}" ${pack})
    fi
done

if test ${#yay_not_installed[@]} -gt 0; then
    echo "install packages"
    yay -S --noconfirm --sudoloop ${yay_not_installed}
else
    echo "all packages installed"
fi
