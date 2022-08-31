
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-22.6.0.1930'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-22.6.0.1930.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1930*'
  checksum      = '6082BFE0EAFED39DBA7DD0616C0CD8190A62C68C0904E0492D5BD891175E23B8'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















