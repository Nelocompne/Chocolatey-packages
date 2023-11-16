$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$fileLocation   = 'tools\1699904477-3742_windows_port.zip'
$fileLocation64 = 'tools\1699904477-3742_windows_port.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  file          = $fileLocation
  file64        = $fileLocation64
  checksum      = '9018853C67D39C558F8E3AA1A8C403EC36EC2CAEA7EDC3F54E5DB064DB8DCB39'
  checksumType  = 'sha256'
  checksum64    = '9018853C67D39C558F8E3AA1A8C403EC36EC2CAEA7EDC3F54E5DB064DB8DCB39'
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
