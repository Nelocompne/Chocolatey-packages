$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$DesktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item -Recurse "$toolsDir"  -Force
Remove-Item "$DesktopPath\MAA.lnk"