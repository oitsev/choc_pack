
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-22.1.0.1922'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-22.1.0.1922.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1922*'
  checksum      = '3153E6B86F89C3AACF11F0219022DF2F99E3267C1A6C8CE828FB0E4C2C4B76E1'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















