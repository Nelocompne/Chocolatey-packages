$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$fileLocation   = 'tools\CrystalDiskInfo9_2_1Aoi.zip'
$fileLocation64 = 'tools\CrystalDiskInfo9_2_1Aoi.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  file          = $fileLocation
  file64        = $fileLocation64
  checksum      = 'E2B0DF505FC50B453C53E836753FBE390185BDB470AB339078302BFA3C1C2D9A'
  checksumType  = 'sha256'
  checksum64    = 'E2B0DF505FC50B453C53E836753FBE390185BDB470AB339078302BFA3C1C2D9A'
  checksumType64= 'sha256'
}

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Install-ChocolateyZipPackage @packageArgs
$osBitness = Get-ProcessorBits
$ArtVersion = 'A'
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\CrystalDiskInfo 9.lnk" -TargetPath "$toolsDir\DiskInfo$osBitness$ArtVersion.exe"
