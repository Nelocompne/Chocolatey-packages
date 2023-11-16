$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$fileLocation   = 'tools\Olive-55eedbfc-Windows-x86_64-Portable.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  file          = $fileLocation
  checksum      = 'D73AEE3CB843B8B7CC9D9A234847FFD44B801BAAB1760E36062480364467D2FE'
  checksumType  = 'sha256'
}

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\Olive.lnk" -TargetPath "$toolsDir\olive-editor\olive-editor.exe"
