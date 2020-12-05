# hide error message  when file exist
$ErrorActionPreference = "silentlycontinue"

# create symboliclink of powershell7
New-Item -Value $PWD\windows\profile.ps1 -Path $HOME\Documents\WindowsPowerShell -Name profile.ps1 -ItemType SymbolicLink

# create symboliclink of vim
New-Item -Value $PWD\dotfiles\vimrc -Path $HOME -Name _vimrc -ItemType SymbolicLink
New-Item -Value $PWD\dotfiles\gvimrc -Path $HOME -Name _gvimrc -ItemType SymbolicLink
New-Item -Value $PWD\dotfiles\vim -Path $HOME -Name vimfiles -ItemType SymbolicLink

# create symboliclink of git
New-Item -Value $PWD\dotfiles\gitconfig -Path $HOME -Name .gitconfig -ItemType SymbolicLink

# create symboliclink of ideavim
New-Item -Value $PWD\dotfiles\ideavimrc -Path $HOME -Name _ideavimrc -ItemType SymbolicLink
