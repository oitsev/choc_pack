
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-24.12.0.8373'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-24.12.0.8373.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_8373*'
  checksum      = '85E796AA1E69A6D4E14B2CC007255663E1CDBD68F03B218841AFCFFD885AD93E'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















