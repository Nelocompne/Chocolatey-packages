$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$fileLocation   = 'tools\CrystalDiskInfo9_1_1KureiKei.zip'
$fileLocation64 = 'tools\CrystalDiskInfo9_1_1KureiKei.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  file          = $fileLocation
  file64        = $fileLocation64
  checksum      = '3A3F62783DC65B5D173C10DF96C843DF0BB56E33C4C513D461C5F63F8E75D4E3'
  checksumType  = 'sha256'
  checksum64    = '3A3F62783DC65B5D173C10DF96C843DF0BB56E33C4C513D461C5F63F8E75D4E3'
  checksumType64= 'sha256'
}

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Install-ChocolateyZipPackage @packageArgs
$osBitness = Get-ProcessorBits
$ArtVersion = 'K'
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\CrystalDiskInfo 9.lnk" -TargetPath "$toolsDir\DiskInfo$osBitness$ArtVersion.exe"
