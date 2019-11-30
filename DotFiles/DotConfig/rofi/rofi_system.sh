#!/usr/bin/env bash

set -euCo pipefail

function main() {
    local -Ar menu=(
        ['Logout']='i3-msg exit'
        ['Suspend']='systemctl suspend'
        ['Poweroff']='systemctl poweroff'
        ['Reboot']='systemctl reboot'
    )

    local -r IFS=$'\n'
    [[ $# -ne 0 ]] && eval "${menu[$1]}" || echo "${!menu[*]}"
}

main $@
