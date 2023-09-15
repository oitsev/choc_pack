
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-23.7.0.1943'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-23.7.0.1943.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1943*'
  checksum      = 'A1C7B26189AC9A697387F9FC2F50199542E91D3804A815C42783F7184123C8D8'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















