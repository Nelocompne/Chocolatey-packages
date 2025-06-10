$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/alist-org/alist/releases/download/v3.45.0/alist-windows-386.zip'
$url64      = 'https://github.com/alist-org/alist/releases/download/v3.45.0/alist-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  checksum      = '077C507C07A381DAF7A43C8244A55F5C3C5E0397FC14A8AE1927AEB57359959B'
  checksumType  = 'sha256'
  checksum64    = '57AD230E94338958DB89CB5612385EED73E5B16B7B8E9E303335F486DF5D5F1B'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs