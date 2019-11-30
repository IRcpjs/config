@echo off
Mklink /D %USERPROFILE%\vimfiles "%~dp0"DotFiles\vim
Mklink %USERPROFILE%\_vimrc "%~dp0"DotFiles\vimrc
Mklink %USERPROFILE%\_gvimrc "%~dp0"DotFiles\gvimrc
Mklink %USERPROFILE%\.gitconfig "%~dp0"DotFiles\gitconfig
Mklink %USERPROFILE%\Documents\WindowsPowerShell\Profile.ps1 "%~dp0"WinCfg\Profile.ps1
