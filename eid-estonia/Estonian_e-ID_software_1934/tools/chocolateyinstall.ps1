
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-22.11.0.1934'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-22.11.0.1934.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1934*'
  checksum      = 'C0F35E61D80CEE2EC6A04078FE7BEE20BDA519BC72CBE0A46B50EEF34D24D310'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















