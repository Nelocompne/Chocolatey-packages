$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$fileLocation   = 'tools\Clash.for.Windows.Setup.0.20.39.ia32.exe'
$fileLocation64 = 'tools\Clash.for.Windows.Setup.0.20.39.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  file          = $fileLocation
  file64        = $fileLocation64

  softwareName  = 'clash-for-windows*'

  checksum      = '951E79041D6EB815EFCC2F9171883F67A635E04274CE69A5D202F7FEE3872F63'
  checksumType  = 'sha256'
  checksum64    = '477274CE22D30559AE5DF8D41B0ADB0A8461BE0501D26A0500452AB68C650608'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs