$scoop_packages = @(
)

$chocolatey_packages = @(
)


function install_scoop_packages {
    echo "install scoop packages"
    if (-Not(gcm scoop -ea SilentlyContinue)){
        Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
    }
    foreach( $package in $scoop_packages ){
        if (scoop info $package | sls "Installed: No"){
            echo "${package} is not installed. install ${package}"
            scoop install $package
        }else{
            echo "$package is installed or can't find manifest. skip"
        }
    }
}

function install_choco_packages {
    echo "install chocolatey packages"
    if (-Not(gcm choco -ea SilentlyContinue)){
        Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
    }
    foreach( $package in $chocolatey_packages){
        if (-Not(choco list -l $package | sls  "(chocolatey|packages installed)" -NotMatch)){
            echo "${package} is not installed. install ${package}"
            cinst -y $package
        }else{
            echo "$package is installed. skip"
        }
    }
}

install_scoop_packages
install_choco_packages

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
    foreach( $app in $default_apps ){
        Get-AppxPackage $app | Remove-AppxPackage
    }
}
remove_default_applications
