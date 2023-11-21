$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$osBitness = Get-OSArchitectureWidth
if ( 64 -eq $osBitness )
{
  $fileLocation = 'tools\x64\winrar-keygen.exe'
  $sum = '0E4B425854D885A926BE699C28E002112409D571D06A88BB9E0B501AF0F6EBF9'
}
else
{
  $fileLocation = 'tools\x86\winrar-keygen.exe'
  $sum = '011DCF96F06E3F734FF7960C3302294F90888CDB64EEA8CAFA415EDB525CBD89'
}

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  file          = $fileLocation
  checksum      = $sum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
