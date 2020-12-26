$scoop_packages = @(
    'sudo'
    'fzf'
    'ghq'
    'make'
)

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

function install_scoop_packages {
    if !(gcm scoop -ea SilentlyContinue){
        Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
    }
    foreach( $package in $scoop_packages ){
        scoop install $package
    }
}

remove_default_applications
install_scoop_packages
