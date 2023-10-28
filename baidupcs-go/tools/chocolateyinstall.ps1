$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://github.com/qjfoidnh/BaiduPCS-Go/releases/download/v3.9.4/BaiduPCS-Go-v3.9.4-windows-x86.zip'
$url64 = 'https://github.com/qjfoidnh/BaiduPCS-Go/releases/download/v3.9.4/BaiduPCS-Go-v3.9.4-windows-x64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
}

Install-ChocolateyZipPackage @packageArgs