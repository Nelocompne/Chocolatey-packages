$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url   = 'https://github.com/qjfoidnh/BaiduPCS-Go/releases/download/v3.9.5/BaiduPCS-Go-v3.9.5-windows-x86.zip'
$url64 = 'https://github.com/qjfoidnh/BaiduPCS-Go/releases/download/v3.9.5/BaiduPCS-Go-v3.9.5-windows-x64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  checksum      = 'bceb62e9c946da28ab9cae3215563105ffca99f9f996a91ed155710e7969623f'
  checksumType  = 'sha256'
  checksum64    = '9e94f7c14ca795280d52966fcc9bf1920dc6967c6c7cacf0ce6c882834a7564a'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs