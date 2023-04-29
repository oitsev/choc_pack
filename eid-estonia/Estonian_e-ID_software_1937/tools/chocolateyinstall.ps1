
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-23.3.0.1937'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-23.3.0.1937.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1937*'
  checksum      = 'AE851028AC09EF6B8202016D64D988DE73289C87CF4EE14080D65BAAAAD8DFF2'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















