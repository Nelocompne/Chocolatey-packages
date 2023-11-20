$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$fileLocation   = 'tools\CrystalDiskInfo9_1_1.zip'
$fileLocation64 = 'tools\CrystalDiskInfo9_1_1.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  file          = $fileLocation
  file64        = $fileLocation64
  checksum      = 'B5EE4C97CDB7CAE31BA1D6636646D02471457852B6855ECC81587D0A05460D62'
  checksumType  = 'sha256'
  checksum64    = 'B5EE4C97CDB7CAE31BA1D6636646D02471457852B6855ECC81587D0A05460D62'
  checksumType64= 'sha256'
}

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Install-ChocolateyZipPackage @packageArgs
$osBitness = Get-ProcessorBits
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\DiskInfo.lnk" -TargetPath "$toolsDir\DiskInfo$osBitness.exe"
