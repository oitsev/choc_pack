
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-20.05.0.1867_x86'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-20.05.0.1867_x86.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1867*'
  checksum      = '48D39764296E1C1A1C6C59B063055461F4F98C4D106896F316C1D3D30829E593'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















