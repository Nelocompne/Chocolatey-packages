$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$fileLocation   = 'tools\DG5511508_x86.zip'
$fileLocation64 = 'tools\DG5511508_x64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  file          = $fileLocation
  file64        = $fileLocation64
  checksum      = 'C49CCD0DB52E1B50557D384509E06C14DF4D42BA457C0642A590C8956408B9AD'
  checksumType  = 'sha256'
  checksum64    = '8C306AA776D8D13DCB264BCC304C5956BD199851387B282414B769B90BD456F1'
  checksumType64= 'sha256'
}

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\DiskGenius.lnk" -TargetPath "$toolsDir\DiskGenius\DiskGenius.exe"