function fish_greeting
end

function git_status_prompt
    set -l git_branch (git branch 2> /dev/null | grep -e '\*' | sed 's/^..\(.*\)/\1/')
    set -l git_diff (git diff)
    set -l git_diff_cached (git diff --cached)
    set -l git_untracked (git ls-files --full-name --exclude-standard --other (git rev-parse --show-toplevel))
    set_color red
    if test -n "$git_diff" && test -n "$git_untracked"
        echo [(set_color red){$git_branch}: (set_color yellow)"dirty"(set_color red)]
    else if test -n "$git_diff"
        echo [(set_color red){$git_branch}: (set_color yellow)"modify"(set_color red)]
    else if test -n "$git_untracked"
        echo [(set_color red){$git_branch}: (set_color yellow)"untracked"(set_color red)]
    else if test -n "$git_diff_cached"
        echo [(set_color red){$git_branch}: (set_color green)"staged"(set_color red)]
    else
        echo [(set_color red){$git_branch}: (set_color brgreen)"clean"(set_color red)]
    end
end

function fish_prompt
    set -l exit_status $status
    set -l is_git_repo (git rev-parse --git-dir 2> /dev/null)
    if test -n "$is_git_repo"
        printf "%s:%s %s" (set_color cyan)$USER (set_color green)(prompt_pwd) (git_status_prompt)
    else
        printf "%s:%s" (set_color cyan)$USER (set_color green)(prompt_pwd)
    end
    if test $exit_status -eq 0
        printf "\n%s " (set_color normal)"->"
    else
        printf "\n%s " (set_color red)"->"
    end
end

function change_repository
    if type -q ghq && type -q fzf
        set -l to_repository (ghq list -p | fzf)
        if test -n "$to_repository"
            cd {$to_repository}
            commandline -f repaint
        end
    end
end
