
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-21.02.0.1899_x86'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-21.02.0.1899_x86.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1899*'
  checksum      = 'D1FDCB5C7DC2C80A016EA6C88CAB023B2F646DECF00607978C2D22F0308CE809'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















