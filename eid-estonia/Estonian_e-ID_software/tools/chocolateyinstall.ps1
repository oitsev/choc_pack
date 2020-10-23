
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-20.10.0.1883_x86'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-20.10.0.1883_x86.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1883*'
  checksum      = '3CC26CC7E1786DC034C89DFC6635D9A59DEF833913858093C8A72DEEA50C1992'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















