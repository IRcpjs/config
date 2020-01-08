# aliases
alias :q="exit"
alias ran="ranger"
alias py3="python3"
alias python="python3"
alias pe="pipenv"
alias qa="ghq get"
alias qap="ghq get -p"
alias vigf="vim -c GFiles"
# git aliases
alias g="git"
alias gst="git status"
alias gl="git log --oneline"
alias gd="git diff"
alias ga="git add"
alias gcm="git commit -m"
alias rcm="git commit --amend"
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gs="git switch"
alias gsc="git switch -c"
alias gsb="git search-branch"
alias gm="git merge"
alias gr="git restore"
alias reset="git reset"
alias push="git push origin"
alias pull="git pull"
alias fetch="git fetch"
alias clone="git clone"

# load local config file
if [ -e $HOME/.localrc ]; source $HOME/.localrc; end

# functions
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

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
