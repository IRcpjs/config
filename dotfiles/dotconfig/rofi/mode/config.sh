#!/usr/bin/env bash

set -euCo pipefail

function main() {
    local -Ar menu=(
        ['AudioControl']='pavucontrol'
        ['IMEControl']='fcitx-configtool'
    )

    local -r IFS=$'\n'
    [[ $# -ne 0 ]] && coproc("${menu[$1]}") || echo "${!menu[*]}"
}

main $@
