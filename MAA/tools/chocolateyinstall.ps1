$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = 'https://github.com/MaaAssistantArknights/MaaAssistantArknights/releases/download/v4.26.1/MAA-v4.26.1-win-x64.zip'
}
else {
  $url64 = 'https://ota.maa.plus/MaaAssistantArknights/MaaAssistantArknights/releases/download/v4.26.1/MAA-v4.26.1-win-x64.zip'
}

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  checksum64    = '1a7d6aa7568fbbcf5638f39fe1c94731ee90a6988bad34d3fff689540b72721b'
  checksumType64= 'sha256'
}

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut -ShortcutFilePath "$DesktopPath\MAA.lnk" -TargetPath "$(Get-ToolsLocation)\$env:ChocolateyPackageName\MAA.exe"