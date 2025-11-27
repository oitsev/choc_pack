
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-25.10.23.8403'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-25.10.23.8403.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_8403*'
  checksum      = '2BB29C9862F445A90617155614E109A9F8AB95E024AFA84CF3D1D681EC56F32F'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















