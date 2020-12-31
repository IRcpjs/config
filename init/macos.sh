#!/usr/bin/env bash
set -e

brew_packages=(
    "docker"
    "fish"
    "fzf"
    "ghq"
    "hub"
    "jq"
    "ranger"
    "rclone"
    "tmux"
    "vim"
)

brew_cask_packages=(
    "docker"
    "google-backup-and-sync"
    "google-chrome"
    "keepassxc"
)

# install homebrew
if !(type brew > /dev/null 2>&1); then
    echo "brew command not found. install homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "brew command exist. skip installing homebrew"
fi

# install brew packages
for pack in ${brew_packages[@]};do
    if brew ls --version ${pack} >/dev/null; then
        echo "${pack} is installed. skip"
    else
        echo "${pack} is not installed. install ${pack}"
        brew install ${pack}
    fi
done

# install brew cask packages
for pack in ${brew_cask_packages[@]};do
    if brew ls --cask --version ${pack} >/dev/null; then
        echo "${pack} is installed. skip"
    else
        echo "${pack} is not installed. install ${pack}"
        brew install --cask ${pack}
    fi
done
