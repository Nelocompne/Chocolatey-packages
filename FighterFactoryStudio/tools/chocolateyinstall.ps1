$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$fileLocation   = 'tools\1700266730-3743_windows_port.zip'
$fileLocation64 = 'tools\1700266730-3743_windows_port.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  file          = $fileLocation
  file64        = $fileLocation64
  checksum      = '79DA282109113AEAD5E0D5BC87604B0C5D6B5219B0221C70049E8FA1F622E716'
  checksumType  = 'sha256'
  checksum64    = '79DA282109113AEAD5E0D5BC87604B0C5D6B5219B0221C70049E8FA1F622E716'
  checksumType64= 'sha256'
}

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Install-ChocolateyZipPackage @packageArgs
$osBitness = Get-OSArchitectureWidth
if ( 64 -eq $osBitness )
{
  Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\FFS.lnk" -TargetPath "$toolsDir\FFS Portable (Qt 4-5) 32-64bits\x64\ffs.exe"
}
else
{
  Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\FFS.lnk" -TargetPath "$toolsDir\FFS Portable (Qt 4-5) 32-64bits\x86\ffs.exe"
}
