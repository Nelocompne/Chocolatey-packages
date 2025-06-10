$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url   = 'https://github.com/qjfoidnh/BaiduPCS-Go/releases/download/v3.9.7/BaiduPCS-Go-v3.9.7-windows-x86.zip'
$url64 = 'https://github.com/qjfoidnh/BaiduPCS-Go/releases/download/v3.9.7/BaiduPCS-Go-v3.9.7-windows-x64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  checksum      = 'D14C81AA4B035E4A458C52BE8D23A0F593C025CF7B4D12DF713C493566F4A86E'
  checksumType  = 'sha256'
  checksum64    = '2C8F4728AC29153F71187A26C85D5BE0E2419A64D591A74F821D3C57622EEB81'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs