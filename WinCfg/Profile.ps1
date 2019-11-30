$env:GOPATH="$HOME\go"
$env:GOBIN="$env:GOPATH\bin"
$env:PATH="$env:PATH;$env:GOPATH\bin"
function gitStatus { git status $args }; Set-Alias gst gitStatus
function gitAdd { git add $args }; Set-Alias ga gitAdd
function gitCommit { git commit -m $args }; Set-Alias gcom gitCommit
function gitPush { git push $args }; Set-Alias push gitPush
function gitPull{ git pull $args }; Set-Alias pull gitPull
function gitClone { git clone $args }; Set-Alias clone gitClone

# load local config file
if(Test-PATH $HOME\LocalProfile.ps1){
    . $HOME\LocalProfile.ps1
}
