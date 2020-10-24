# hide error message  when file exist
$ErrorActionPreference = "silentlycontinue"

# create symboliclink of vim
New-Item -Value $PWD\DotFiles\vimrc -Path $HOME -Name _vimrc -ItemType SymbolicLink
New-Item -Value $PWD\DotFiles\gvimrc -Path $HOME -Name _gvimrc -ItemType SymbolicLink
New-Item -Value $PWD\DotFiles\vim -Path $HOME -Name vimfiles -ItemType SymbolicLink

# create symboliclink of git
New-Item -Value $PWD\DotFiles\gitconfig -Path $HOME -Name .gitconfig -ItemType SymbolicLink

# create symboliclink of ideavim
New-Item -Value $PWD\DotFiles\ideavimrc -Path $HOME -Name _ideavimrc -ItemType SymbolicLink
