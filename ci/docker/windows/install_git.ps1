$url='https://github.com/git-for-windows/git/releases/download/v2.28.0.windows.1/Git-2.28.0-64-bit.exe' 
Write-Host ('Downloading {0} ...' -f $url)
$installer='C:\TEMP\git-install.exe'
(New-Object System.Net.WebClient).DownloadFile($url, $installer)
Write-Host 'Installing Git...'
C:\TEMP\git-install.exe /VERYSILENT /NORESTART /NOCANCEL /SP- /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /COMPONENTS="icons,ext\reg\shellhere,assoc,assoc_sh"
Write-Host 'Git installation is complete'
