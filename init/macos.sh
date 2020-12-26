#!/usr/bin/env bash
set -e

brew_packages=(
)

if !(type brew > /dev/null 2>&1); then
    echo "brew command not found. install homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "brew command exist. skip installing homebrew"
fi

for pack in ${brew_packages[@]};do
    brew install ${pack}
done
