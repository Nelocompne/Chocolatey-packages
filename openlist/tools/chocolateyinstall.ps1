$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/OpenListTeam/OpenList/releases/download/v4.0.0/openlist-windows-386.zip'
$url64      = 'https://github.com/OpenListTeam/OpenList/releases/download/v4.0.0/openlist-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  checksum      = '798eb76ca298300d6a4126a8620de4b4098e5e10c3ff10e32d029de9f2cacc03'
  checksumType  = 'sha256'
  checksum64    = '1d88f48839a34e340936198c2d8b9d4bb10fcd1e4918ff355047fb0ae721f2a8'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs