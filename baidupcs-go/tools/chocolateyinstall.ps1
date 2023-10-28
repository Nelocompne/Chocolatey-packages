$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://github.com/qjfoidnh/BaiduPCS-Go/releases/download/v3.9.2/BaiduPCS-Go-v3.9.2-windows-x86.zip'
$url64 = 'https://github.com/qjfoidnh/BaiduPCS-Go/releases/download/v3.9.2/BaiduPCS-Go-v3.9.2-windows-x64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  checksum      = 'dd6f99e49108b95ad2dc6e3c9f943892a5f0f835deed9133313a78ca7cc8fdc9'
  checksumType  = 'sha256'
  checksum64    = 'd821063a28d586efa58ac23d566349e1ac7bcd55550f580f84a7e180a1a5ea60'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs