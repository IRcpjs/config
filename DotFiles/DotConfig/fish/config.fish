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

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
