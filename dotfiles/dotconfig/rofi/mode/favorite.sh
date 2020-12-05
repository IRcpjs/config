#!/usr/bin/env bash

set -euCo pipefail

function main() {
    local -Ar menu=(
        ['GoogleChrome']='google-chrome-stable'
        ['KeepassXC']='keepassxc'
        ['Termite']='termite'
    )

    local -r IFS=$'\n'
    [[ $# -ne 0 ]] && coproc("${menu[$1]}") || echo "${!menu[*]}"
}

main $@
