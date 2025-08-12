
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-25.6.9.8395'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-25.6.9.8395.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_8395*'
  checksum      = '18406F4B4A1AAAE5738B462CE28A8F4E378F4482F0188AAF58B821AEFD3A8699'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















