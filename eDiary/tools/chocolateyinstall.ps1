$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$fileLocation   = 'tools\ediary-4.2.5-win32-copy.zip'
$fileLocation64 = 'tools\ediary-4.2.5-win64-copy.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  file          = $fileLocation
  file64        = $fileLocation64
  checksum      = '17049825594E0AA9F9BB4D2CC2F0A7756787A292035F144DF9B1F92B930A8200'
  checksumType  = 'sha256'
  checksum64    = '814867242DB205B69EB2B2648FD4893BC27983E16A4B8C96CF69C5DDC34E4A01'
  checksumType64= 'sha256'
}

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Install-ChocolateyZipPackage @packageArgs
$osBitness = Get-ProcessorBits
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\eDiary.lnk" -TargetPath "$toolsDir\eDiary-4.2.5-win$osBitness\eDiary.exe"
