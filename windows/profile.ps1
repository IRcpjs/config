Set-Alias -Force cl clear
Set-Alias -Force .. cd_parent
Set-Alias -Force ..2 cd_parent2
Set-Alias -Force ..3 cd_parent3
Set-Alias -Force tp test_ping
Set-Alias -Force v open_vim
Set-Alias -Force act pipenv_activate
Set-Alias -Force py python_exec
Set-Alias -Force gst git_status
Set-Alias -Force gl git_log
Set-Alias -Force gd git_diff
Set-Alias -Force gdc git_diff_cached
Set-Alias -Force ga git_add
Set-Alias -Force gc git_commit
Set-Alias -Force gcm git_commit_m
Set-Alias -Force rcm git_commit_amend
Set-Alias -Force gb git_branch
Set-Alias -Force gba git_branch_all
Set-Alias -Force gbd git_branch_delete
Set-Alias -Force gs git_switch
Set-Alias -Force gsc git_switch_create
Set-Alias -Force gm git_merge
Set-Alias -Force reset git_reset
Set-Alias -Force push git_push
Set-Alias -Force opush git_opush
Set-Alias -Force pull git_pull
Set-Alias -Force fetch git_fetch
Set-Alias -Force clone git_clone
Set-Alias -Force vsenv Activate-VSEnv
Set-Alias -Force ahk run_ahk_script

function cd_parent { Set-Location .. }
function cd_parent2 { Set-Location ..\.. }
function cd_parent3 { Set-Location ..\..\.. }
function test_ping { ping -n 3 $args }
function open_vim { gvim . }
function pipenv_activate { pipenv shell }
function python_exec { python $args }
function git_status { git status $args }
function git_log { git log --oneline $args }
function git_diff { git diff $args }
function git_diff_cached { git diff --cached $args }
function git_add { git add $args }
function git_commit { git commit $args }
function git_commit_m { git commit -m $args }
function git_commit_amend { git commit --amend $args }
function git_branch { git branch $args }
function git_branch_all { git branch -a $args }
function git_branch_delete { git branch -d $args }
function git_switch { git switch $args }
function git_switch_create { git switch -c $args }
function git_merge { git merge $args }
function git_reset { git reset $args }
function git_push { git push $args }
function git_opush { git push origin $args }
function git_pull { git pull $args }
function git_fetch { git fetch $args }
function git_clone { git clone $args }
function run_ahk_script { AutoHotkey.exe $args }
function Activate-VSEnv {
  $installPath = &"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe" -version 16.0 -property installationpath
  Import-Module (Join-Path $installPath "Common7\Tools\Microsoft.VisualStudio.DevShell.dll")
  Enter-VsDevShell -VsInstallPath $installPath -SkipAutomaticLocation
  $env:path += ";" + $installPath + "\VC\Tools\Llvm\bin"
}
