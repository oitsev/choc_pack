
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-26.8.27.8434'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-26.8.27.8434.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_8434*'
  checksum      = 'EF0154CCF5C2AC461A99804172A088AF6898FC5FA909A85E285BF08AFC0354B6'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















