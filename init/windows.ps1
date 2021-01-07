$scoop_packages = @(
    "sudo"
    "rclone"
    "python"
    "which"
    "make"
)

$chocolatey_packages = @(
    "7zip"
    "git"
    "autohotkey"
    "google-backup-and-sync"
    "discord"
    "googlechrome"
    "jetbrainstoolbox"
    "line"
    "keepassxc"
    "visualstudio2019community"
    "sumatrapdf"
    "steam"
    "powershell-core"
    "spotify"
    "microsoft-windows-terminal"
)

$manual_build_list = @(
    @{"name" = "vim"; "url" = "https://github.com/vim/vim"},
    @{"name" = "juce"; "url" = "https://github.com/juce-framework/juce"},
    @{"name" = "frut"; "url" = "https://github.com/mcmartin/frut"}
)

function install_scoop_packages {
    Write-Output "install scoop packages"
    if (-not(Get-Command scoop -ea silentlycontinue)){
        Invoke-Expression (New-Object system.net.webclient).downloadstring('https://get.scoop.sh')
    }
    foreach( $package in $scoop_packages ){
        if (scoop info $package | Select-String "installed: no"){
            Write-Output "${package} is not installed. install ${package}"
            scoop install $package
        }else{
            Write-Output "$package is installed or can't find manifest. skip"
        }
    }
}

function install_choco_packages {
    Write-Output "install chocolatey packages"
    if (-not(Get-Command choco -ea silentlycontinue)){
        Invoke-Expression (New-Object system.net.webclient).downloadstring('https://get.scoop.sh')
    }
    foreach( $package in $chocolatey_packages){
        if (-not(choco list -l $package | Select-String  "(chocolatey|packages installed)" -notmatch)){
            Write-Output "${package} is not installed. install ${package}"
            cinst -y $package
        }else{
            Write-Output "$package is installed. skip"
        }
    }
}

function clone_manual_build_repository {
    if (-Not(Get-Command git -ea SilentlyContinue)){
        return
    }
    if (-Not(Test-Path ".\manual_build_repositories")){
        New-Item -ItemType Directory manual_build_repositories
    }
    foreach( $repo in $manual_build_list ){
        $clone_path = (Join-Path ".\manual_build_repositories" $repo.name)
        $repo_name = $repo.name
        if (Test-Path $clone_path){
            Write-Output "$repo_name has already cloned. skip"
            continue
        }
        git clone $repo.url $clone_path
    }
}

install_scoop_packages
install_choco_packages
clone_manual_build_repository

$default_apps = @(
 'Microsoft.Microsoft3DViewer',
 'king.com.CandyCrushFriends',
 'king.com.FarmHeroesSaga',
 'Microsoft.ZuneMusic',
 'Microsoft.MicrosoftSolitaireCollection',
 'Microsoft.MixedReality.Portal',
 'Microsoft.MicrosoftOfficeHub',
 'Microsoft.Office.OneNote',
 'Microsoft.People',
 'Microsoft.Print3D',
 'Microsoft.SkypeApp',
 'SpotifyAB.SpotifyMusic',
 'Microsoft.XboxGamingOverlay',
 'Microsoft.Xbox.TCUI',
 'Microsoft.XboxApp',
 'Microsoft.XboxGameOverlay',
 'Microsoft.XboxIdentityProvider',
 'Microsoft.XboxSpeechToTextOverlay',
 'Microsoft.WindowsAlarms',
 'Microsoft.ZuneVideo',
 'Microsoft.WindowsCamera',
 'Microsoft.ScreenSketch',
 'Microsoft.YourPhone',
 'Microsoft.BingWeather',
 'Microsoft.GetHelp',
 'Microsoft.Getstarted',
 'Microsoft.WindowsFeedbackHub',
 'Microsoft.Windows.Photos',
 'Microsoft.MicrosoftStickyNotes',
 'Microsoft.MSPaint',
 'Microsoft.WindowsSoundRecorder',
 'Microsoft.WindowsMaps',
 'microsoft.windowscommunicationsapps',
 'Microsoft.Messaging',
 'Microsoft.OneConnect'
)

function remove_default_applications {
    if (-Not(Get-Command Get-AppxPackage -ea SilentlyContinue)){
        return
    }
    foreach( $app in $default_apps ){
        Get-AppxPackage $app | Remove-AppxPackage
    }
}
remove_default_applications
