$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = 'tools\WinSCP-6.1.2.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'

  file          = $fileLocation

  softwareName  = 'WinSCP*'
  checksum      = '31759860A6B0C179D841857FE1344A990A576313379C309EB2E07941C4E8CB93'
  checksumType  = 'sha256'

}

Install-ChocolateyPackage @packageArgs