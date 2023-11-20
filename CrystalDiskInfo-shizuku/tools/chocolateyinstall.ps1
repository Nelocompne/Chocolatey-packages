$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$fileLocation   = 'tools\CrystalDiskInfo9_1_1Shizuku.zip'
$fileLocation64 = 'tools\CrystalDiskInfo9_1_1Shizuku.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  file          = $fileLocation
  file64        = $fileLocation64
  checksum      = 'CEE8575B8E19855495A1072E628ED7967AA0FD687B1650ADF5864FBD7CE88607'
  checksumType  = 'sha256'
  checksum64    = 'CEE8575B8E19855495A1072E628ED7967AA0FD687B1650ADF5864FBD7CE88607'
  checksumType64= 'sha256'
}

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Install-ChocolateyZipPackage @packageArgs
$osBitness = Get-ProcessorBits
$ArtVersion = 'S'
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\CrystalDiskInfo 9.lnk" -TargetPath "$toolsDir\DiskInfo$osBitness$ArtVersion.exe"
