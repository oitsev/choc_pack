
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-23.5.0.1939'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-23.5.0.1939.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1939*'
  checksum      = 'A9BC3C7B7AE1DCDB8BBFD8BBB2AFFEF82C0810DD0DB288CBAC416877967E47CB'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















