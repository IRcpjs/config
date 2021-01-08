#!/usr/bin/env bash
set -e

yay_packages=(
    # require of Desktop Environment
    "ntfs-3g"
    "vi"
    "xorg"
    "lightdm"
    "lightdm-gtk-greeter"
    "awesome"
    "alsa-utils"
    "pulseaudio"
    "pavucontrol"
    "google-chrome"
    "termite"
    "ttf-dejavu"
    "otf-ipafont"
    "ttf-ricty"
    "fcitx"
    "fcitx-configtool"
    "fcitx-mozc"
    # utility(CLI)
    "fish"
    "vim"
    "rclone"
    "ghq"
    "fzf"
    "trash-cli"
    # utility(GUI)
    "keepassxc"
    "rofi"
    # media viewer
    "sxiv"
    "vlc"
    "evince"
    # programming language
    "python"
    "python-pip"
    "go"
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

echo "install python packages"
if (type pip > /dev/null 2>&1); then
    pip install --user $(cat python_packages.txt | grep -v "^#" )
fi
echo "install golang packages"
if (type go > /dev/null 2>&1); then
    go get -u $(cat golang_packages.txt | grep -v "^#" )
fi
