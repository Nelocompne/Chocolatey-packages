$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$fileLocation = 'tools\弹幕姬1.3.5.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  file          = $fileLocation
  checksum      = 'E445B15BF88F8F2122765D9A230C451F9D86D3C1BBC5DA6D96C5B89E90C48ECE'
  checksumType  = 'sha256'
}

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\弹幕姬.lnk" -TargetPath "$toolsDir\弹幕姬\弹幕姬启动器.exe"
